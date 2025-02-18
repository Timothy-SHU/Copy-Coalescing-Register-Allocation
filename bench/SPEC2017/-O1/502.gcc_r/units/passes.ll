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
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
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

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #21
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #21
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #21
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #21
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #21
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #21
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #21
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
  %5 = tail call ptr @__ctype_tolower_loc() #21
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
  %5 = tail call ptr @__ctype_toupper_loc() #21
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #21
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

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @print_current_pass(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !107 {
  %2 = load ptr, ptr @current_pass, align 8, !tbaa !108
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.opt_pass, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !127
  %7 = getelementptr inbounds %struct.opt_pass, ptr %2, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !129
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %6, i32 noundef %8)
  br label %12

10:                                               ; preds = %1
  %11 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 17, i64 1, ptr %0)
  br label %12

12:                                               ; preds = %10, %4
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @debug_pass() local_unnamed_addr #9 !prof !107 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !108
  tail call void @print_current_pass(ptr noundef %1)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @rest_of_decl_compilation(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !130 {
  %4 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !119
  %6 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.2, ptr noundef %5) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8, !prof !131

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tree_list, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !119
  %11 = getelementptr inbounds %struct.tree_list, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !119
  %13 = getelementptr inbounds %struct.tree_string, ptr %12, i64 0, i32 2
  %14 = tail call ptr @get_identifier(ptr noundef nonnull %13) #21
  tail call void @assemble_alias(ptr noundef %0, ptr noundef %14) #21
  br label %15

15:                                               ; preds = %8, %3
  %16 = load i64, ptr %0, align 8
  %17 = and i64 %16, 65535
  %18 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %17, i64 13
  %19 = load i8, ptr %18, align 1, !tbaa !119
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %31, label %21, !prof !132

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !119
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25, !prof !133

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 16777216
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %31, label %30, !prof !134

30:                                               ; preds = %25
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #21
  br label %31

31:                                               ; preds = %30, %25, %21, %15
  %32 = load i64, ptr %0, align 8
  %33 = and i64 %32, 67108864
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %42, !prof !133

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 33554432
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42, !prof !135

40:                                               ; preds = %35
  %41 = trunc i64 %32 to i16
  switch i16 %41, label %135 [
    i16 29, label %42
    i16 35, label %112
  ], !prof !136

42:                                               ; preds = %40, %31, %35
  %43 = load i8, ptr @timevar_enable, align 1, !tbaa !119
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %46, label %45, !prof !137

45:                                               ; preds = %42
  tail call void @timevar_push_1(i32 noundef 117) #21
  br label %46

46:                                               ; preds = %42, %45
  %47 = icmp eq i32 %2, 0
  br i1 %47, label %48, label %57, !prof !137

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53, !prof !138

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !119
  %56 = icmp eq ptr %55, null
  br i1 %56, label %68, label %57, !prof !139

57:                                               ; preds = %53, %48, %46
  %58 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %59 = load i64, ptr %58, align 8
  %60 = and i64 %59, 33554432
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %68, !prof !134

62:                                               ; preds = %57
  %63 = load i64, ptr %0, align 8
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 29
  br i1 %65, label %67, label %66, !prof !140

66:                                               ; preds = %62
  tail call void @varpool_finalize_decl(ptr noundef nonnull %0) #21
  br label %68

67:                                               ; preds = %62
  tail call void @assemble_variable(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef 0) #21
  br label %68

68:                                               ; preds = %53, %66, %67, %57
  %69 = load ptr, ptr @last_assemble_variable_decl, align 8, !tbaa !108
  %70 = icmp eq ptr %69, %0
  br i1 %70, label %71, label %109, !prof !141

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !119
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  tail call void @make_decl_rtl(ptr noundef nonnull %0) #21
  %76 = load ptr, ptr %72, align 8, !tbaa !119
  br label %77

77:                                               ; preds = %71, %75
  %78 = phi ptr [ %76, %75 ], [ %73, %71 ]
  %79 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !119
  %81 = getelementptr inbounds %struct.rtx_def, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !119
  %83 = load i32, ptr @flag_inhibit_size_directive, align 4, !tbaa !123
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %109

85:                                               ; preds = %77
  %86 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !119
  %88 = icmp ne ptr %87, null
  %89 = icmp ne i32 %1, 0
  %90 = and i1 %89, %88
  %91 = and i1 %47, %90
  br i1 %91, label %92, label %109

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %94 = load ptr, ptr %93, align 8, !tbaa !119
  %95 = load ptr, ptr @global_trees, align 16, !tbaa !108
  %96 = icmp ne ptr %94, %95
  %97 = load i32, ptr @size_directive_output, align 4
  %98 = icmp ne i32 %97, 0
  %99 = select i1 %96, i1 true, i1 %98
  br i1 %99, label %109, label %100

100:                                              ; preds = %92
  store i32 1, ptr @size_directive_output, align 4, !tbaa !123
  %101 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !119
  %103 = tail call i64 @int_size_in_bytes(ptr noundef %102) #21
  %104 = load ptr, ptr @asm_out_file, align 8, !tbaa !108
  %105 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 7, i64 1, ptr %104)
  %106 = load ptr, ptr @asm_out_file, align 8, !tbaa !108
  tail call void @assemble_name(ptr noundef %106, ptr noundef %82) #21
  %107 = load ptr, ptr @asm_out_file, align 8, !tbaa !108
  %108 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %107, ptr noundef nonnull @.str.4, i64 noundef %103)
  br label %109

109:                                              ; preds = %77, %85, %92, %100, %68
  %110 = load i8, ptr @timevar_enable, align 1, !tbaa !119
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %135, label %133, !prof !137

112:                                              ; preds = %40
  %113 = load ptr, ptr @global_dc, align 8, !tbaa !108
  %114 = getelementptr inbounds %struct.diagnostic_context, ptr %113, i64 0, i32 1, i64 5
  %115 = load i32, ptr %114, align 4, !tbaa !123
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %135, !prof !142

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.diagnostic_context, ptr %113, i64 0, i32 1, i64 4
  %119 = load i32, ptr %118, align 8, !tbaa !123
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %135, !prof !142

121:                                              ; preds = %117
  %122 = load i8, ptr @timevar_enable, align 1, !tbaa !119
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %125, label %124, !prof !142

124:                                              ; preds = %121
  tail call void @timevar_push_1(i32 noundef 166) #21
  br label %125

125:                                              ; preds = %121, %124
  %126 = load ptr, ptr @debug_hooks, align 8, !tbaa !108
  %127 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %126, i64 0, i32 18
  %128 = load ptr, ptr %127, align 8, !tbaa !143
  %129 = icmp eq i32 %1, 0
  %130 = zext i1 %129 to i32
  tail call void %128(ptr noundef nonnull %0, i32 noundef %130) #21, !prof !145
  %131 = load i8, ptr @timevar_enable, align 1, !tbaa !119
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %135, label %133, !prof !142

133:                                              ; preds = %125, %109
  %134 = phi i32 [ 117, %109 ], [ 166, %125 ]
  tail call void @timevar_pop_1(i32 noundef %134) #21
  br label %135

135:                                              ; preds = %133, %40, %112, %117, %125, %109
  %136 = load i64, ptr %0, align 8
  %137 = and i64 %136, 65535
  %138 = icmp eq i64 %137, 32
  br i1 %138, label %139, label %146, !prof !146

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %141 = load i64, ptr %140, align 8
  %142 = and i64 %141, 33554432
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %146, !prof !147

144:                                              ; preds = %139
  %145 = tail call ptr @varpool_node(ptr noundef nonnull %0) #21
  br label %146

146:                                              ; preds = %144, %139, %135
  ret void
}

declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_identifier(ptr noundef) local_unnamed_addr #3

declare void @assemble_alias(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @make_decl_rtl(ptr noundef) local_unnamed_addr #3

declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

declare void @varpool_finalize_decl(ptr noundef) local_unnamed_addr #3

declare void @assemble_variable(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @int_size_in_bytes(ptr noundef) local_unnamed_addr #3

declare void @assemble_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

declare ptr @varpool_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @rest_of_type_compilation(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 !prof !148 {
  %3 = load ptr, ptr @global_dc, align 8, !tbaa !108
  %4 = getelementptr inbounds %struct.diagnostic_context, ptr %3, i64 0, i32 1, i64 4
  %5 = load i32, ptr %4, align 8, !tbaa !123
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %26, !prof !149

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.diagnostic_context, ptr %3, i64 0, i32 1, i64 5
  %9 = load i32, ptr %8, align 4, !tbaa !123
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %26, !prof !149

11:                                               ; preds = %7
  %12 = load i8, ptr @timevar_enable, align 1, !tbaa !119
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14, !prof !149

14:                                               ; preds = %11
  tail call void @timevar_push_1(i32 noundef 166) #21
  br label %15

15:                                               ; preds = %11, %14
  %16 = load ptr, ptr @debug_hooks, align 8, !tbaa !108
  %17 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %16, i64 0, i32 18
  %18 = load ptr, ptr %17, align 8, !tbaa !143
  %19 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !119
  %21 = icmp eq i32 %1, 0
  %22 = zext i1 %21 to i32
  tail call void %18(ptr noundef %20, i32 noundef %22) #21, !prof !150
  %23 = load i8, ptr @timevar_enable, align 1, !tbaa !119
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25, !prof !149

25:                                               ; preds = %15
  tail call void @timevar_pop_1(i32 noundef 166) #21
  br label %26

26:                                               ; preds = %15, %25, %2, %7
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @finish_optimization_passes() local_unnamed_addr #11 !prof !151 {
  %1 = load i8, ptr @timevar_enable, align 1, !tbaa !119
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %4, label %3, !prof !134

3:                                                ; preds = %0
  tail call void @timevar_push_1(i32 noundef 3) #21
  br label %4

4:                                                ; preds = %3, %0
  %5 = load i32, ptr @profile_arc_flag, align 4, !tbaa !123
  %6 = icmp ne i32 %5, 0
  %7 = load i32, ptr @flag_test_coverage, align 4
  %8 = icmp ne i32 %7, 0
  %9 = select i1 %6, i1 true, i1 %8, !prof !140
  %10 = load i32, ptr @flag_branch_probabilities, align 4
  %11 = icmp ne i32 %10, 0
  %12 = select i1 %9, i1 true, i1 %11, !prof !140
  br i1 %12, label %13, label %20, !prof !140

13:                                               ; preds = %4
  %14 = load i32, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_profile, i64 0, i32 0, i32 6), align 8, !tbaa !152
  %15 = tail call ptr @dump_begin(i32 noundef %14, ptr noundef null) #21
  store ptr %15, ptr @dump_file, align 8, !tbaa !108
  tail call void @end_branch_prob() #21
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !108
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = load i32, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_profile, i64 0, i32 0, i32 6), align 8, !tbaa !152
  tail call void @dump_end(i32 noundef %19, ptr noundef nonnull %16) #21
  br label %20

20:                                               ; preds = %13, %18, %4
  %21 = load i32, ptr @optimize, align 4, !tbaa !123
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %30, !prof !134

23:                                               ; preds = %20
  %24 = load i32, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_combine, i64 0, i32 0, i32 6), align 8, !tbaa !154
  %25 = tail call ptr @dump_begin(i32 noundef %24, ptr noundef null) #21
  store ptr %25, ptr @dump_file, align 8, !tbaa !108
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27, !prof !134

27:                                               ; preds = %23
  tail call void @dump_combine_total_stats(ptr noundef nonnull %25) #21
  %28 = load i32, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_combine, i64 0, i32 0, i32 6), align 8, !tbaa !154
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !108
  tail call void @dump_end(i32 noundef %28, ptr noundef %29) #21
  br label %30

30:                                               ; preds = %23, %27, %20
  %31 = load i32, ptr @graph_dump_format, align 4, !tbaa !123
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %54, label %33, !prof !134

33:                                               ; preds = %30
  %34 = tail call ptr @get_dump_file_info(i32 noundef 11) #21
  %35 = icmp eq ptr %34, null
  br i1 %35, label %54, label %36

36:                                               ; preds = %33, %50
  %37 = phi ptr [ %52, %50 ], [ %34, %33 ]
  %38 = phi i32 [ %51, %50 ], [ 11, %33 ]
  %39 = tail call i32 @dump_initialized_p(i32 noundef %38) #21
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.dump_file_info, ptr %37, i64 0, i32 3
  %43 = load i32, ptr %42, align 8, !tbaa !156
  %44 = and i32 %43, 8192
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = tail call ptr @get_dump_file_name(i32 noundef %38) #21
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @finish_graph_dump_file(ptr noundef nonnull %47) #21
  tail call void @free(ptr noundef %47)
  br label %50

50:                                               ; preds = %36, %41, %46, %49
  %51 = add nuw nsw i32 %38, 1
  %52 = tail call ptr @get_dump_file_info(i32 noundef %51) #21
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %36, !llvm.loop !158

54:                                               ; preds = %50, %33, %30
  %55 = load i8, ptr @timevar_enable, align 1, !tbaa !119
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %58, label %57, !prof !134

57:                                               ; preds = %54
  tail call void @timevar_pop_1(i32 noundef 3) #21
  br label %58

58:                                               ; preds = %57, %54
  ret void
}

declare ptr @dump_begin(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @end_branch_prob() local_unnamed_addr #3

declare void @dump_end(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @dump_combine_total_stats(ptr noundef) local_unnamed_addr #3

declare ptr @get_dump_file_info(i32 noundef) local_unnamed_addr #3

declare i32 @dump_initialized_p(i32 noundef) local_unnamed_addr #3

declare ptr @get_dump_file_name(i32 noundef) local_unnamed_addr #3

declare void @finish_graph_dump_file(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_rest_of_compilation() #13 !prof !159 !PGOFuncName !160 {
  %1 = load i32, ptr @rtl_dump_and_exit, align 4, !tbaa !123
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_syntax_only, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 true, i1 %4, !prof !161
  br i1 %5, label %16, label %6, !prof !161

6:                                                ; preds = %0
  %7 = load ptr, ptr @global_dc, align 8, !tbaa !108
  %8 = getelementptr inbounds %struct.diagnostic_context, ptr %7, i64 0, i32 1, i64 4
  %9 = load i32, ptr %8, align 8, !tbaa !123
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16, !prof !162

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.diagnostic_context, ptr %7, i64 0, i32 1, i64 5
  %13 = load i32, ptr %12, align 4, !tbaa !123
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %11, %6, %0
  %17 = phi i8 [ 0, %6 ], [ 0, %0 ], [ %15, %11 ]
  ret i8 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_postreload() #14 !prof !159 !PGOFuncName !163 {
  %1 = load i32, ptr @reload_completed, align 4, !tbaa !123
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_pass_for_id(i32 noundef %0) local_unnamed_addr #15 !prof !107 {
  %2 = load i32, ptr @passes_by_id_size, align 4, !tbaa !123
  %3 = icmp sgt i32 %2, %0
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = load ptr, ptr @passes_by_id, align 8, !tbaa !108
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !108
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi ptr [ %8, %4 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define dso_local void @register_one_dump_file(ptr noundef %0) local_unnamed_addr #10 !prof !164 {
  %2 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %2) #21
  store i8 0, ptr %2, align 1, !tbaa !119
  %3 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !129
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %10, label %6, !prof !165

6:                                                ; preds = %1
  %7 = icmp slt i32 %4, 0
  %8 = select i1 %7, i32 1, i32 %4, !prof !166
  %9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %8)
  br label %10

10:                                               ; preds = %6, %1
  %11 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !127
  %13 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %12, i32 noundef 32)
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds i8, ptr %13, i64 1
  %16 = select i1 %14, ptr %12, ptr %15, !prof !167
  %17 = call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.8, ptr noundef %16, ptr noundef nonnull %2, ptr noundef null) #21
  %18 = load i32, ptr %0, align 8, !tbaa !168
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
  %30 = call ptr (ptr, ...) @concat(ptr noundef nonnull %28, ptr noundef %16, ptr noundef nonnull %2, ptr noundef null) #21
  %31 = call ptr (ptr, ...) @concat(ptr noundef nonnull %28, ptr noundef %16, ptr noundef null) #21
  %32 = call i32 @dump_register(ptr noundef %17, ptr noundef %30, ptr noundef %31, i32 noundef %29) #21
  store i32 %32, ptr %3, align 8, !tbaa !129
  %33 = load i32, ptr @passes_by_id_size, align 4, !tbaa !123
  %34 = icmp sgt i32 %33, %32
  br i1 %34, label %47, label %35, !prof !169

35:                                               ; preds = %27
  %36 = load ptr, ptr @passes_by_id, align 8, !tbaa !108
  %37 = add nsw i32 %32, 1
  %38 = sext i32 %37 to i64
  %39 = shl nsw i64 %38, 3
  %40 = call ptr @xrealloc(ptr noundef %36, i64 noundef %39) #21
  store ptr %40, ptr @passes_by_id, align 8, !tbaa !108
  %41 = load i32, ptr @passes_by_id_size, align 4, !tbaa !123
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %40, i64 %42
  %44 = sub nsw i32 %37, %41
  %45 = sext i32 %44 to i64
  %46 = shl nsw i64 %45, 3
  call void @llvm.memset.p0.i64(ptr align 8 %43, i8 0, i64 %46, i1 false), !prof !170
  store i32 %37, ptr @passes_by_id_size, align 4, !tbaa !123
  br label %47

47:                                               ; preds = %27, %35
  %48 = load ptr, ptr @passes_by_id, align 8, !tbaa !108
  %49 = sext i32 %32 to i64
  %50 = getelementptr inbounds ptr, ptr %48, i64 %49
  store ptr %0, ptr %50, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %2) #21
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #16

declare ptr @concat(ptr noundef, ...) local_unnamed_addr #3

declare i32 @dump_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @register_pass(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !107 {
  %2 = load ptr, ptr %0, align 8, !tbaa !171
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.12) #21
  br label %5

5:                                                ; preds = %4, %1
  %6 = load ptr, ptr %0, align 8, !tbaa !171
  %7 = getelementptr inbounds %struct.opt_pass, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !127
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.13) #21
  br label %11

11:                                               ; preds = %10, %5
  %12 = getelementptr inbounds %struct.register_pass_info, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !173
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load ptr, ptr %0, align 8, !tbaa !171
  %17 = getelementptr inbounds %struct.opt_pass, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !127
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.14, ptr noundef %18) #21
  br label %19

19:                                               ; preds = %15, %11
  %20 = getelementptr inbounds %struct.register_pass_info, ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !174
  %22 = icmp eq i32 %21, 0
  %23 = tail call fastcc zeroext i8 @position_pass(ptr noundef nonnull %0, ptr noundef nonnull @all_lowering_passes)
  %24 = icmp eq i8 %23, 0
  %25 = select i1 %24, i1 true, i1 %22
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = tail call fastcc zeroext i8 @position_pass(ptr noundef nonnull %0, ptr noundef nonnull @all_small_ipa_passes)
  %28 = or i8 %27, %23
  br label %29

29:                                               ; preds = %19, %26
  %30 = phi i8 [ %28, %26 ], [ %23, %19 ]
  %31 = icmp eq i8 %30, 0
  %32 = select i1 %31, i1 true, i1 %22
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = tail call fastcc zeroext i8 @position_pass(ptr noundef nonnull %0, ptr noundef nonnull @all_regular_ipa_passes)
  %35 = or i8 %34, %30
  br label %36

36:                                               ; preds = %29, %33
  %37 = phi i8 [ %35, %33 ], [ %30, %29 ]
  %38 = icmp eq i8 %37, 0
  %39 = select i1 %38, i1 true, i1 %22
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = tail call fastcc zeroext i8 @position_pass(ptr noundef nonnull %0, ptr noundef nonnull @all_lto_gen_passes)
  %42 = or i8 %41, %37
  br label %43

43:                                               ; preds = %36, %40
  %44 = phi i8 [ %42, %40 ], [ %37, %36 ]
  %45 = icmp eq i8 %44, 0
  %46 = select i1 %45, i1 true, i1 %22
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = tail call fastcc zeroext i8 @position_pass(ptr noundef nonnull %0, ptr noundef nonnull @all_passes)
  %49 = or i8 %48, %44
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load ptr, ptr %12, align 8, !tbaa !173
  %53 = load ptr, ptr %0, align 8, !tbaa !171
  %54 = getelementptr inbounds %struct.opt_pass, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !127
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.15, ptr noundef %52, ptr noundef %55) #21
  br label %56

56:                                               ; preds = %43, %51, %47
  %57 = load ptr, ptr @added_pass_nodes, align 8, !tbaa !108
  %58 = icmp eq ptr %57, null
  br i1 %58, label %91, label %59

59:                                               ; preds = %56, %88
  %60 = phi ptr [ %62, %88 ], [ %57, %56 ]
  %61 = getelementptr inbounds %struct.pass_list_node, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !175
  %63 = load ptr, ptr %60, align 8, !tbaa !177
  tail call void @register_one_dump_file(ptr noundef %63)
  %64 = load ptr, ptr @added_pass_nodes, align 8, !tbaa !108
  %65 = load ptr, ptr %64, align 8, !tbaa !177
  %66 = load i32, ptr %65, align 8, !tbaa !168
  %67 = icmp ult i32 %66, 4
  br i1 %67, label %68, label %72

68:                                               ; preds = %59
  %69 = zext nneg i32 %66 to i64
  %70 = getelementptr inbounds [4 x i32], ptr @switch.table.register_pass, i64 0, i64 %69
  %71 = load i32, ptr %70, align 4
  br label %72

72:                                               ; preds = %59, %68
  %73 = phi i32 [ %71, %68 ], [ 9, %59 ]
  %74 = tail call ptr @get_dump_file_info(i32 noundef %73) #21
  %75 = getelementptr inbounds %struct.dump_file_info, ptr %74, i64 0, i32 4
  %76 = load i32, ptr %75, align 4, !tbaa !178
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %88, label %78

78:                                               ; preds = %72
  %79 = tail call ptr @get_dump_file_info(i32 noundef %73) #21
  %80 = getelementptr inbounds %struct.dump_file_info, ptr %79, i64 0, i32 4
  %81 = load i32, ptr %80, align 4, !tbaa !178
  %82 = load ptr, ptr @added_pass_nodes, align 8, !tbaa !108
  %83 = load ptr, ptr %82, align 8, !tbaa !177
  %84 = getelementptr inbounds %struct.opt_pass, ptr %83, i64 0, i32 6
  %85 = load i32, ptr %84, align 8, !tbaa !129
  %86 = tail call ptr @get_dump_file_info(i32 noundef %85) #21
  %87 = getelementptr inbounds %struct.dump_file_info, ptr %86, i64 0, i32 4
  store i32 %81, ptr %87, align 4, !tbaa !178
  br label %88

88:                                               ; preds = %78, %72
  %89 = load ptr, ptr @added_pass_nodes, align 8, !tbaa !108
  tail call void @free(ptr noundef %89)
  store ptr %62, ptr @added_pass_nodes, align 8, !tbaa !108
  %90 = icmp eq ptr %62, null
  br i1 %90, label %91, label %59, !llvm.loop !179

91:                                               ; preds = %88, %56
  ret void
}

declare void @fatal_error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @position_pass(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #11 !prof !107 {
  %3 = load ptr, ptr %1, align 8, !tbaa !108
  %4 = icmp eq ptr %3, null
  br i1 %4, label %93, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.register_pass_info, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.register_pass_info, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.register_pass_info, ptr %0, i64 0, i32 3
  br label %9

9:                                                ; preds = %5, %88
  %10 = phi ptr [ %3, %5 ], [ %91, %88 ]
  %11 = phi i8 [ 0, %5 ], [ %89, %88 ]
  %12 = phi ptr [ null, %5 ], [ %80, %88 ]
  %13 = load i32, ptr %10, align 8, !tbaa !168
  %14 = load ptr, ptr %0, align 8, !tbaa !171
  %15 = load i32, ptr %14, align 8, !tbaa !168
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %78

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.opt_pass, ptr %10, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !127
  %20 = icmp eq ptr %19, null
  br i1 %20, label %78, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %6, align 8, !tbaa !173
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) %22)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %78

25:                                               ; preds = %21
  %26 = load i32, ptr %7, align 8, !tbaa !174
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.opt_pass, ptr %10, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !129
  %31 = icmp eq i32 %26, %30
  br i1 %31, label %39, label %32

32:                                               ; preds = %28
  %33 = icmp eq i32 %26, 1
  br i1 %33, label %34, label %78

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.opt_pass, ptr %10, i64 0, i32 11
  %36 = load i32, ptr %35, align 4, !tbaa !180
  %37 = and i32 %36, 524288
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %78, label %39

39:                                               ; preds = %34, %28, %25
  %40 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull %14, i8 noundef zeroext 1)
  %41 = load i32, ptr %8, align 4, !tbaa !181
  switch i32 %41, label %65 [
    i32 0, label %42
    i32 1, label %46
    i32 2, label %52
  ]

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.opt_pass, ptr %10, i64 0, i32 5
  %44 = load ptr, ptr %43, align 8, !tbaa !182
  %45 = getelementptr inbounds %struct.opt_pass, ptr %40, i64 0, i32 5
  store ptr %44, ptr %45, align 8, !tbaa !182
  store ptr %40, ptr %43, align 8, !tbaa !182
  br label %66

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.opt_pass, ptr %40, i64 0, i32 5
  store ptr %10, ptr %47, align 8, !tbaa !182
  %48 = icmp eq ptr %12, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.opt_pass, ptr %12, i64 0, i32 5
  store ptr %40, ptr %50, align 8, !tbaa !182
  br label %66

51:                                               ; preds = %46
  store ptr %40, ptr %1, align 8, !tbaa !108
  br label %66

52:                                               ; preds = %39
  %53 = getelementptr inbounds %struct.opt_pass, ptr %10, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !182
  %55 = getelementptr inbounds %struct.opt_pass, ptr %40, i64 0, i32 5
  store ptr %54, ptr %55, align 8, !tbaa !182
  %56 = icmp eq ptr %12, null
  %57 = getelementptr inbounds %struct.opt_pass, ptr %12, i64 0, i32 5
  %58 = select i1 %56, ptr %1, ptr %57
  store ptr %40, ptr %58, align 8, !tbaa !108
  %59 = getelementptr inbounds %struct.opt_pass, ptr %10, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !183
  %61 = getelementptr inbounds %struct.opt_pass, ptr %40, i64 0, i32 4
  store ptr %60, ptr %61, align 8, !tbaa !183
  %62 = getelementptr inbounds %struct.opt_pass, ptr %10, i64 0, i32 7
  %63 = load i32, ptr %62, align 4, !tbaa !184
  %64 = getelementptr inbounds %struct.opt_pass, ptr %40, i64 0, i32 7
  store i32 %63, ptr %64, align 4, !tbaa !184
  br label %66

65:                                               ; preds = %39
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.35) #21
  br label %74

66:                                               ; preds = %49, %51, %52, %42
  %67 = phi ptr [ %40, %52 ], [ %10, %49 ], [ %10, %51 ], [ %40, %42 ]
  %68 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #21
  store ptr %40, ptr %68, align 8, !tbaa !177
  %69 = load ptr, ptr @added_pass_nodes, align 8, !tbaa !108
  %70 = icmp eq ptr %69, null
  %71 = load ptr, ptr @prev_added_pass_node, align 8
  %72 = getelementptr inbounds %struct.pass_list_node, ptr %71, i64 0, i32 1
  %73 = select i1 %70, ptr @added_pass_nodes, ptr %72
  store ptr %68, ptr %73, align 8, !tbaa !108
  store ptr %68, ptr @prev_added_pass_node, align 8, !tbaa !108
  br label %74

74:                                               ; preds = %66, %65
  %75 = phi i8 [ %11, %65 ], [ 1, %66 ]
  %76 = phi ptr [ %10, %65 ], [ %67, %66 ]
  %77 = phi i1 [ false, %65 ], [ true, %66 ]
  br i1 %77, label %78, label %93

78:                                               ; preds = %74, %34, %32, %21, %17, %9
  %79 = phi i8 [ %11, %21 ], [ %75, %74 ], [ %11, %34 ], [ %11, %32 ], [ %11, %17 ], [ %11, %9 ]
  %80 = phi ptr [ %10, %21 ], [ %76, %74 ], [ %10, %34 ], [ %10, %32 ], [ %10, %17 ], [ %10, %9 ]
  %81 = getelementptr inbounds %struct.opt_pass, ptr %80, i64 0, i32 4
  %82 = load ptr, ptr %81, align 8, !tbaa !183
  %83 = icmp eq ptr %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %78
  %85 = tail call fastcc zeroext i8 @position_pass(ptr noundef nonnull %0, ptr noundef nonnull %81)
  %86 = icmp eq i8 %85, 0
  %87 = select i1 %86, i8 %79, i8 1
  br label %88

88:                                               ; preds = %84, %78
  %89 = phi i8 [ %79, %78 ], [ %87, %84 ]
  %90 = getelementptr inbounds %struct.opt_pass, ptr %80, i64 0, i32 5
  %91 = load ptr, ptr %90, align 8, !tbaa !108
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %9, !llvm.loop !185

93:                                               ; preds = %74, %88, %2
  %94 = phi i8 [ 0, %2 ], [ 0, %74 ], [ %89, %88 ]
  ret i8 %94
}

; Function Attrs: cold nounwind uwtable
define dso_local void @init_optimization_passes() local_unnamed_addr #11 !prof !151 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_warn_unused_result, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4, !prof !140

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %4

4:                                                ; preds = %0, %3
  %5 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_warn_unused_result, i8 noundef zeroext 0)
  store ptr %5, ptr @all_lowering_passes, align 8, !tbaa !108
  %6 = getelementptr inbounds %struct.opt_pass, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_diagnose_omp_blocks, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !140

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %10

10:                                               ; preds = %4, %9
  %11 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_diagnose_omp_blocks, i8 noundef zeroext 0)
  store ptr %11, ptr %6, align 8, !tbaa !108
  %12 = getelementptr inbounds %struct.opt_pass, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_mudflap_1, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16, !prof !140

15:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %16

16:                                               ; preds = %10, %15
  %17 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_mudflap_1, i8 noundef zeroext 0)
  store ptr %17, ptr %12, align 8, !tbaa !108
  %18 = getelementptr inbounds %struct.opt_pass, ptr %17, i64 0, i32 5
  %19 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_lower_omp, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22, !prof !140

21:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %22

22:                                               ; preds = %16, %21
  %23 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_lower_omp, i8 noundef zeroext 0)
  store ptr %23, ptr %18, align 8, !tbaa !108
  %24 = getelementptr inbounds %struct.opt_pass, ptr %23, i64 0, i32 5
  %25 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_lower_cf, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %28, !prof !140

27:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %28

28:                                               ; preds = %22, %27
  %29 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_lower_cf, i8 noundef zeroext 0)
  store ptr %29, ptr %24, align 8, !tbaa !108
  %30 = getelementptr inbounds %struct.opt_pass, ptr %29, i64 0, i32 5
  %31 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_refactor_eh, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %34, !prof !140

33:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %34

34:                                               ; preds = %28, %33
  %35 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_refactor_eh, i8 noundef zeroext 0)
  store ptr %35, ptr %30, align 8, !tbaa !108
  %36 = getelementptr inbounds %struct.opt_pass, ptr %35, i64 0, i32 5
  %37 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_lower_eh, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40, !prof !140

39:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %40

40:                                               ; preds = %34, %39
  %41 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_lower_eh, i8 noundef zeroext 0)
  store ptr %41, ptr %36, align 8, !tbaa !108
  %42 = getelementptr inbounds %struct.opt_pass, ptr %41, i64 0, i32 5
  %43 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_build_cfg, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %46, !prof !140

45:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %46

46:                                               ; preds = %40, %45
  %47 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_build_cfg, i8 noundef zeroext 0)
  store ptr %47, ptr %42, align 8, !tbaa !108
  %48 = getelementptr inbounds %struct.opt_pass, ptr %47, i64 0, i32 5
  %49 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_lower_vector, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %52, !prof !140

51:                                               ; preds = %46
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %52

52:                                               ; preds = %46, %51
  %53 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_lower_vector, i8 noundef zeroext 0)
  store ptr %53, ptr %48, align 8, !tbaa !108
  %54 = getelementptr inbounds %struct.opt_pass, ptr %53, i64 0, i32 5
  %55 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_warn_function_return, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %58, !prof !140

57:                                               ; preds = %52
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %58

58:                                               ; preds = %52, %57
  %59 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_warn_function_return, i8 noundef zeroext 0)
  store ptr %59, ptr %54, align 8, !tbaa !108
  %60 = getelementptr inbounds %struct.opt_pass, ptr %59, i64 0, i32 5
  %61 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_build_cgraph_edges, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %64, !prof !140

63:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %64

64:                                               ; preds = %58, %63
  %65 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_build_cgraph_edges, i8 noundef zeroext 0)
  store ptr %65, ptr %60, align 8, !tbaa !108
  %66 = getelementptr inbounds %struct.opt_pass, ptr %65, i64 0, i32 5
  %67 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_inline_parameters, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %70, !prof !140

69:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %70

70:                                               ; preds = %64, %69
  %71 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_inline_parameters, i8 noundef zeroext 0)
  store ptr %71, ptr %66, align 8, !tbaa !108
  %72 = getelementptr inbounds %struct.opt_pass, ptr %71, i64 0, i32 5
  store ptr null, ptr %72, align 8, !tbaa !108
  %73 = load ptr, ptr getelementptr inbounds (%struct.simple_ipa_opt_pass, ptr @pass_ipa_function_and_variable_visibility, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %76, !prof !140

75:                                               ; preds = %70
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %76

76:                                               ; preds = %70, %75
  %77 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_ipa_function_and_variable_visibility, i8 noundef zeroext 0)
  store ptr %77, ptr @all_small_ipa_passes, align 8, !tbaa !108
  %78 = getelementptr inbounds %struct.opt_pass, ptr %77, i64 0, i32 5
  %79 = load ptr, ptr getelementptr inbounds (%struct.simple_ipa_opt_pass, ptr @pass_ipa_early_inline, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %82, !prof !140

81:                                               ; preds = %76
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %82

82:                                               ; preds = %76, %81
  %83 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_ipa_early_inline, i8 noundef zeroext 0)
  store ptr %83, ptr %78, align 8, !tbaa !108
  %84 = getelementptr inbounds %struct.opt_pass, ptr %83, i64 0, i32 5
  %85 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_early_inline, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %88, !prof !140

87:                                               ; preds = %82
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %88

88:                                               ; preds = %82, %87
  %89 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_early_inline, i8 noundef zeroext 0)
  store ptr %89, ptr getelementptr inbounds (%struct.simple_ipa_opt_pass, ptr @pass_ipa_early_inline, i64 0, i32 0, i32 4), align 8, !tbaa !108
  %90 = getelementptr inbounds %struct.opt_pass, ptr %89, i64 0, i32 5
  %91 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_inline_parameters, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %94, !prof !140

93:                                               ; preds = %88
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %94

94:                                               ; preds = %88, %93
  %95 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_inline_parameters, i8 noundef zeroext 0)
  store ptr %95, ptr %90, align 8, !tbaa !108
  %96 = getelementptr inbounds %struct.opt_pass, ptr %95, i64 0, i32 5
  %97 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_rebuild_cgraph_edges, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %100, !prof !140

99:                                               ; preds = %94
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %100

100:                                              ; preds = %94, %99
  %101 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_rebuild_cgraph_edges, i8 noundef zeroext 0)
  store ptr %101, ptr %96, align 8, !tbaa !108
  %102 = load ptr, ptr getelementptr inbounds (%struct.simple_ipa_opt_pass, ptr @pass_ipa_free_lang_data, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %105, !prof !140

104:                                              ; preds = %100
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %105

105:                                              ; preds = %100, %104
  %106 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_ipa_free_lang_data, i8 noundef zeroext 0)
  store ptr %106, ptr %84, align 8, !tbaa !108
  %107 = getelementptr inbounds %struct.opt_pass, ptr %106, i64 0, i32 5
  %108 = load ptr, ptr getelementptr inbounds (%struct.simple_ipa_opt_pass, ptr @pass_early_local_passes, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %111, !prof !140

110:                                              ; preds = %105
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %111

111:                                              ; preds = %105, %110
  %112 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_early_local_passes, i8 noundef zeroext 0)
  store ptr %112, ptr %107, align 8, !tbaa !108
  %113 = getelementptr inbounds %struct.opt_pass, ptr %112, i64 0, i32 5
  %114 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_fixup_cfg, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %117, !prof !140

116:                                              ; preds = %111
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %117

117:                                              ; preds = %111, %116
  %118 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_fixup_cfg, i8 noundef zeroext 0)
  store ptr %118, ptr getelementptr inbounds (%struct.simple_ipa_opt_pass, ptr @pass_early_local_passes, i64 0, i32 0, i32 4), align 8, !tbaa !108
  %119 = getelementptr inbounds %struct.opt_pass, ptr %118, i64 0, i32 5
  %120 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_tree_profile, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %123, !prof !140

122:                                              ; preds = %117
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %123

123:                                              ; preds = %117, %122
  %124 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_tree_profile, i8 noundef zeroext 0)
  store ptr %124, ptr %119, align 8, !tbaa !108
  %125 = getelementptr inbounds %struct.opt_pass, ptr %124, i64 0, i32 5
  %126 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_cleanup_cfg, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %129, !prof !140

128:                                              ; preds = %123
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %129

129:                                              ; preds = %123, %128
  %130 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_cleanup_cfg, i8 noundef zeroext 0)
  store ptr %130, ptr %125, align 8, !tbaa !108
  %131 = getelementptr inbounds %struct.opt_pass, ptr %130, i64 0, i32 5
  %132 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_init_datastructures, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %135, !prof !140

134:                                              ; preds = %129
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %135

135:                                              ; preds = %129, %134
  %136 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_init_datastructures, i8 noundef zeroext 0)
  store ptr %136, ptr %131, align 8, !tbaa !108
  %137 = getelementptr inbounds %struct.opt_pass, ptr %136, i64 0, i32 5
  %138 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_expand_omp, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %141, !prof !140

140:                                              ; preds = %135
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %141

141:                                              ; preds = %135, %140
  %142 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_expand_omp, i8 noundef zeroext 0)
  store ptr %142, ptr %137, align 8, !tbaa !108
  %143 = getelementptr inbounds %struct.opt_pass, ptr %142, i64 0, i32 5
  %144 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_referenced_vars, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %147, !prof !140

146:                                              ; preds = %141
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %147

147:                                              ; preds = %141, %146
  %148 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_referenced_vars, i8 noundef zeroext 0)
  store ptr %148, ptr %143, align 8, !tbaa !108
  %149 = getelementptr inbounds %struct.opt_pass, ptr %148, i64 0, i32 5
  %150 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_build_ssa, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %153, !prof !140

152:                                              ; preds = %147
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %153

153:                                              ; preds = %147, %152
  %154 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_build_ssa, i8 noundef zeroext 0)
  store ptr %154, ptr %149, align 8, !tbaa !108
  %155 = getelementptr inbounds %struct.opt_pass, ptr %154, i64 0, i32 5
  %156 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_early_warn_uninitialized, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %159, !prof !140

158:                                              ; preds = %153
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %159

159:                                              ; preds = %153, %158
  %160 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_early_warn_uninitialized, i8 noundef zeroext 0)
  store ptr %160, ptr %155, align 8, !tbaa !108
  %161 = getelementptr inbounds %struct.opt_pass, ptr %160, i64 0, i32 5
  %162 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_rebuild_cgraph_edges, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %165, !prof !140

164:                                              ; preds = %159
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %165

165:                                              ; preds = %159, %164
  %166 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_rebuild_cgraph_edges, i8 noundef zeroext 0)
  store ptr %166, ptr %161, align 8, !tbaa !108
  %167 = getelementptr inbounds %struct.opt_pass, ptr %166, i64 0, i32 5
  %168 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_early_inline, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %171, !prof !140

170:                                              ; preds = %165
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %171

171:                                              ; preds = %165, %170
  %172 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_early_inline, i8 noundef zeroext 0)
  store ptr %172, ptr %167, align 8, !tbaa !108
  %173 = getelementptr inbounds %struct.opt_pass, ptr %172, i64 0, i32 5
  %174 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_all_early_optimizations, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %177, !prof !140

176:                                              ; preds = %171
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %177

177:                                              ; preds = %171, %176
  %178 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_all_early_optimizations, i8 noundef zeroext 0)
  store ptr %178, ptr %173, align 8, !tbaa !108
  %179 = getelementptr inbounds %struct.opt_pass, ptr %178, i64 0, i32 5
  %180 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_remove_cgraph_callee_edges, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %183, !prof !140

182:                                              ; preds = %177
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %183

183:                                              ; preds = %177, %182
  %184 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_remove_cgraph_callee_edges, i8 noundef zeroext 0)
  store ptr %184, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_all_early_optimizations, i64 0, i32 0, i32 4), align 8, !tbaa !108
  %185 = getelementptr inbounds %struct.opt_pass, ptr %184, i64 0, i32 5
  %186 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_rename_ssa_copies, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %189, !prof !140

188:                                              ; preds = %183
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %189

189:                                              ; preds = %183, %188
  %190 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_rename_ssa_copies, i8 noundef zeroext 0)
  store ptr %190, ptr %185, align 8, !tbaa !108
  %191 = getelementptr inbounds %struct.opt_pass, ptr %190, i64 0, i32 5
  %192 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_ccp, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %195, !prof !140

194:                                              ; preds = %189
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %195

195:                                              ; preds = %189, %194
  %196 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_ccp, i8 noundef zeroext 0)
  store ptr %196, ptr %191, align 8, !tbaa !108
  %197 = getelementptr inbounds %struct.opt_pass, ptr %196, i64 0, i32 5
  %198 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_forwprop, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %201, !prof !140

200:                                              ; preds = %195
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %201

201:                                              ; preds = %195, %200
  %202 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_forwprop, i8 noundef zeroext 0)
  store ptr %202, ptr %197, align 8, !tbaa !108
  %203 = getelementptr inbounds %struct.opt_pass, ptr %202, i64 0, i32 5
  %204 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_build_ealias, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %207, !prof !140

206:                                              ; preds = %201
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %207

207:                                              ; preds = %201, %206
  %208 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_build_ealias, i8 noundef zeroext 0)
  store ptr %208, ptr %203, align 8, !tbaa !108
  %209 = getelementptr inbounds %struct.opt_pass, ptr %208, i64 0, i32 5
  %210 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_sra_early, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %213, !prof !140

212:                                              ; preds = %207
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %213

213:                                              ; preds = %207, %212
  %214 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_sra_early, i8 noundef zeroext 0)
  store ptr %214, ptr %209, align 8, !tbaa !108
  %215 = getelementptr inbounds %struct.opt_pass, ptr %214, i64 0, i32 5
  %216 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_copy_prop, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %219, !prof !140

218:                                              ; preds = %213
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %219

219:                                              ; preds = %213, %218
  %220 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_copy_prop, i8 noundef zeroext 0)
  store ptr %220, ptr %215, align 8, !tbaa !108
  %221 = getelementptr inbounds %struct.opt_pass, ptr %220, i64 0, i32 5
  %222 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_merge_phi, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %225, !prof !140

224:                                              ; preds = %219
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %225

225:                                              ; preds = %219, %224
  %226 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_merge_phi, i8 noundef zeroext 0)
  store ptr %226, ptr %221, align 8, !tbaa !108
  %227 = getelementptr inbounds %struct.opt_pass, ptr %226, i64 0, i32 5
  %228 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_cd_dce, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %229 = icmp eq ptr %228, null
  br i1 %229, label %230, label %231, !prof !140

230:                                              ; preds = %225
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %231

231:                                              ; preds = %225, %230
  %232 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_cd_dce, i8 noundef zeroext 0)
  store ptr %232, ptr %227, align 8, !tbaa !108
  %233 = getelementptr inbounds %struct.opt_pass, ptr %232, i64 0, i32 5
  %234 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_early_ipa_sra, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %237, !prof !140

236:                                              ; preds = %231
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %237

237:                                              ; preds = %231, %236
  %238 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_early_ipa_sra, i8 noundef zeroext 0)
  store ptr %238, ptr %233, align 8, !tbaa !108
  %239 = getelementptr inbounds %struct.opt_pass, ptr %238, i64 0, i32 5
  %240 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_tail_recursion, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %241 = icmp eq ptr %240, null
  br i1 %241, label %242, label %243, !prof !140

242:                                              ; preds = %237
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %243

243:                                              ; preds = %237, %242
  %244 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_tail_recursion, i8 noundef zeroext 0)
  store ptr %244, ptr %239, align 8, !tbaa !108
  %245 = getelementptr inbounds %struct.opt_pass, ptr %244, i64 0, i32 5
  %246 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_convert_switch, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %247 = icmp eq ptr %246, null
  br i1 %247, label %248, label %249, !prof !140

248:                                              ; preds = %243
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %249

249:                                              ; preds = %243, %248
  %250 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_convert_switch, i8 noundef zeroext 0)
  store ptr %250, ptr %245, align 8, !tbaa !108
  %251 = getelementptr inbounds %struct.opt_pass, ptr %250, i64 0, i32 5
  %252 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_cleanup_eh, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %255, !prof !140

254:                                              ; preds = %249
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %255

255:                                              ; preds = %249, %254
  %256 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_cleanup_eh, i8 noundef zeroext 0)
  store ptr %256, ptr %251, align 8, !tbaa !108
  %257 = getelementptr inbounds %struct.opt_pass, ptr %256, i64 0, i32 5
  %258 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_profile, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %259 = icmp eq ptr %258, null
  br i1 %259, label %260, label %261, !prof !140

260:                                              ; preds = %255
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %261

261:                                              ; preds = %255, %260
  %262 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_profile, i8 noundef zeroext 0)
  store ptr %262, ptr %257, align 8, !tbaa !108
  %263 = getelementptr inbounds %struct.opt_pass, ptr %262, i64 0, i32 5
  %264 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_local_pure_const, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %267, !prof !140

266:                                              ; preds = %261
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %267

267:                                              ; preds = %261, %266
  %268 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_local_pure_const, i8 noundef zeroext 0)
  store ptr %268, ptr %263, align 8, !tbaa !108
  %269 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_release_ssa_names, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %272, !prof !140

271:                                              ; preds = %267
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %272

272:                                              ; preds = %267, %271
  %273 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_release_ssa_names, i8 noundef zeroext 0)
  store ptr %273, ptr %179, align 8, !tbaa !108
  %274 = getelementptr inbounds %struct.opt_pass, ptr %273, i64 0, i32 5
  %275 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_rebuild_cgraph_edges, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %276 = icmp eq ptr %275, null
  br i1 %276, label %277, label %278, !prof !140

277:                                              ; preds = %272
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %278

278:                                              ; preds = %272, %277
  %279 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_rebuild_cgraph_edges, i8 noundef zeroext 0)
  store ptr %279, ptr %274, align 8, !tbaa !108
  %280 = getelementptr inbounds %struct.opt_pass, ptr %279, i64 0, i32 5
  %281 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_inline_parameters, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %282 = icmp eq ptr %281, null
  br i1 %282, label %283, label %284, !prof !140

283:                                              ; preds = %278
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %284

284:                                              ; preds = %278, %283
  %285 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_inline_parameters, i8 noundef zeroext 0)
  store ptr %285, ptr %280, align 8, !tbaa !108
  %286 = load ptr, ptr getelementptr inbounds (%struct.simple_ipa_opt_pass, ptr @pass_ipa_increase_alignment, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %287 = icmp eq ptr %286, null
  br i1 %287, label %288, label %289, !prof !140

288:                                              ; preds = %284
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %289

289:                                              ; preds = %284, %288
  %290 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_ipa_increase_alignment, i8 noundef zeroext 0)
  store ptr %290, ptr %113, align 8, !tbaa !108
  %291 = getelementptr inbounds %struct.opt_pass, ptr %290, i64 0, i32 5
  %292 = load ptr, ptr getelementptr inbounds (%struct.simple_ipa_opt_pass, ptr @pass_ipa_matrix_reorg, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %293 = icmp eq ptr %292, null
  br i1 %293, label %294, label %295, !prof !140

294:                                              ; preds = %289
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %295

295:                                              ; preds = %289, %294
  %296 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_ipa_matrix_reorg, i8 noundef zeroext 0)
  store ptr %296, ptr %291, align 8, !tbaa !108
  %297 = getelementptr inbounds %struct.opt_pass, ptr %296, i64 0, i32 5
  store ptr null, ptr %297, align 8, !tbaa !108
  %298 = load ptr, ptr getelementptr inbounds (%struct.ipa_opt_pass_d, ptr @pass_ipa_whole_program_visibility, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %299 = icmp eq ptr %298, null
  br i1 %299, label %300, label %301, !prof !140

300:                                              ; preds = %295
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %301

301:                                              ; preds = %295, %300
  %302 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_ipa_whole_program_visibility, i8 noundef zeroext 0)
  store ptr %302, ptr @all_regular_ipa_passes, align 8, !tbaa !108
  %303 = getelementptr inbounds %struct.opt_pass, ptr %302, i64 0, i32 5
  %304 = load ptr, ptr getelementptr inbounds (%struct.ipa_opt_pass_d, ptr @pass_ipa_cp, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %305 = icmp eq ptr %304, null
  br i1 %305, label %306, label %307, !prof !140

306:                                              ; preds = %301
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %307

307:                                              ; preds = %301, %306
  %308 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_ipa_cp, i8 noundef zeroext 0)
  store ptr %308, ptr %303, align 8, !tbaa !108
  %309 = getelementptr inbounds %struct.opt_pass, ptr %308, i64 0, i32 5
  %310 = load ptr, ptr getelementptr inbounds (%struct.ipa_opt_pass_d, ptr @pass_ipa_inline, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %311 = icmp eq ptr %310, null
  br i1 %311, label %312, label %313, !prof !140

312:                                              ; preds = %307
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %313

313:                                              ; preds = %307, %312
  %314 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_ipa_inline, i8 noundef zeroext 0)
  store ptr %314, ptr %309, align 8, !tbaa !108
  %315 = getelementptr inbounds %struct.opt_pass, ptr %314, i64 0, i32 5
  %316 = load ptr, ptr getelementptr inbounds (%struct.ipa_opt_pass_d, ptr @pass_ipa_reference, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %317 = icmp eq ptr %316, null
  br i1 %317, label %318, label %319, !prof !140

318:                                              ; preds = %313
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %319

319:                                              ; preds = %313, %318
  %320 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_ipa_reference, i8 noundef zeroext 0)
  store ptr %320, ptr %315, align 8, !tbaa !108
  %321 = getelementptr inbounds %struct.opt_pass, ptr %320, i64 0, i32 5
  %322 = load ptr, ptr getelementptr inbounds (%struct.ipa_opt_pass_d, ptr @pass_ipa_pure_const, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %323 = icmp eq ptr %322, null
  br i1 %323, label %324, label %325, !prof !140

324:                                              ; preds = %319
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %325

325:                                              ; preds = %319, %324
  %326 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_ipa_pure_const, i8 noundef zeroext 0)
  store ptr %326, ptr %321, align 8, !tbaa !108
  %327 = getelementptr inbounds %struct.opt_pass, ptr %326, i64 0, i32 5
  %328 = load ptr, ptr getelementptr inbounds (%struct.simple_ipa_opt_pass, ptr @pass_ipa_type_escape, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %329 = icmp eq ptr %328, null
  br i1 %329, label %330, label %331, !prof !140

330:                                              ; preds = %325
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %331

331:                                              ; preds = %325, %330
  %332 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_ipa_type_escape, i8 noundef zeroext 0)
  store ptr %332, ptr %327, align 8, !tbaa !108
  %333 = getelementptr inbounds %struct.opt_pass, ptr %332, i64 0, i32 5
  %334 = load ptr, ptr getelementptr inbounds (%struct.simple_ipa_opt_pass, ptr @pass_ipa_pta, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %335 = icmp eq ptr %334, null
  br i1 %335, label %336, label %337, !prof !140

336:                                              ; preds = %331
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %337

337:                                              ; preds = %331, %336
  %338 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_ipa_pta, i8 noundef zeroext 0)
  store ptr %338, ptr %333, align 8, !tbaa !108
  %339 = getelementptr inbounds %struct.opt_pass, ptr %338, i64 0, i32 5
  %340 = load ptr, ptr getelementptr inbounds (%struct.simple_ipa_opt_pass, ptr @pass_ipa_struct_reorg, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %341 = icmp eq ptr %340, null
  br i1 %341, label %342, label %343, !prof !140

342:                                              ; preds = %337
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %343

343:                                              ; preds = %337, %342
  %344 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_ipa_struct_reorg, i8 noundef zeroext 0)
  store ptr %344, ptr %339, align 8, !tbaa !108
  %345 = getelementptr inbounds %struct.opt_pass, ptr %344, i64 0, i32 5
  store ptr null, ptr %345, align 8, !tbaa !108
  %346 = load ptr, ptr getelementptr inbounds (%struct.ipa_opt_pass_d, ptr @pass_ipa_lto_gimple_out, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %347 = icmp eq ptr %346, null
  br i1 %347, label %348, label %349, !prof !140

348:                                              ; preds = %343
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %349

349:                                              ; preds = %343, %348
  %350 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_ipa_lto_gimple_out, i8 noundef zeroext 0)
  store ptr %350, ptr @all_lto_gen_passes, align 8, !tbaa !108
  %351 = getelementptr inbounds %struct.opt_pass, ptr %350, i64 0, i32 5
  %352 = load ptr, ptr getelementptr inbounds (%struct.ipa_opt_pass_d, ptr @pass_ipa_lto_wpa_fixup, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %353 = icmp eq ptr %352, null
  br i1 %353, label %354, label %355, !prof !140

354:                                              ; preds = %349
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %355

355:                                              ; preds = %349, %354
  %356 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_ipa_lto_wpa_fixup, i8 noundef zeroext 0)
  store ptr %356, ptr %351, align 8, !tbaa !108
  %357 = getelementptr inbounds %struct.opt_pass, ptr %356, i64 0, i32 5
  %358 = load ptr, ptr getelementptr inbounds (%struct.ipa_opt_pass_d, ptr @pass_ipa_lto_finish_out, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %359 = icmp eq ptr %358, null
  br i1 %359, label %360, label %361, !prof !140

360:                                              ; preds = %355
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %361

361:                                              ; preds = %355, %360
  %362 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_ipa_lto_finish_out, i8 noundef zeroext 0)
  store ptr %362, ptr %357, align 8, !tbaa !108
  %363 = getelementptr inbounds %struct.opt_pass, ptr %362, i64 0, i32 5
  store ptr null, ptr %363, align 8, !tbaa !108
  %364 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_lower_eh_dispatch, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %365 = icmp eq ptr %364, null
  br i1 %365, label %366, label %367, !prof !140

366:                                              ; preds = %361
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %367

367:                                              ; preds = %361, %366
  %368 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_lower_eh_dispatch, i8 noundef zeroext 0)
  store ptr %368, ptr @all_passes, align 8, !tbaa !108
  %369 = getelementptr inbounds %struct.opt_pass, ptr %368, i64 0, i32 5
  %370 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_all_optimizations, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %371 = icmp eq ptr %370, null
  br i1 %371, label %372, label %373, !prof !140

372:                                              ; preds = %367
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %373

373:                                              ; preds = %367, %372
  %374 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_all_optimizations, i8 noundef zeroext 0)
  store ptr %374, ptr %369, align 8, !tbaa !108
  %375 = getelementptr inbounds %struct.opt_pass, ptr %374, i64 0, i32 5
  %376 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_remove_cgraph_callee_edges, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %377 = icmp eq ptr %376, null
  br i1 %377, label %378, label %379, !prof !140

378:                                              ; preds = %373
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %379

379:                                              ; preds = %373, %378
  %380 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_remove_cgraph_callee_edges, i8 noundef zeroext 0)
  store ptr %380, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_all_optimizations, i64 0, i32 0, i32 4), align 8, !tbaa !108
  %381 = getelementptr inbounds %struct.opt_pass, ptr %380, i64 0, i32 5
  %382 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_strip_predict_hints, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %383 = icmp eq ptr %382, null
  br i1 %383, label %384, label %385, !prof !140

384:                                              ; preds = %379
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %385

385:                                              ; preds = %379, %384
  %386 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_strip_predict_hints, i8 noundef zeroext 0)
  store ptr %386, ptr %381, align 8, !tbaa !108
  %387 = getelementptr inbounds %struct.opt_pass, ptr %386, i64 0, i32 5
  %388 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_update_address_taken, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %389 = icmp eq ptr %388, null
  br i1 %389, label %390, label %391, !prof !140

390:                                              ; preds = %385
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %391

391:                                              ; preds = %385, %390
  %392 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_update_address_taken, i8 noundef zeroext 0)
  store ptr %392, ptr %387, align 8, !tbaa !108
  %393 = getelementptr inbounds %struct.opt_pass, ptr %392, i64 0, i32 5
  %394 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_rename_ssa_copies, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %395 = icmp eq ptr %394, null
  br i1 %395, label %396, label %397, !prof !140

396:                                              ; preds = %391
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %397

397:                                              ; preds = %391, %396
  %398 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_rename_ssa_copies, i8 noundef zeroext 0)
  store ptr %398, ptr %393, align 8, !tbaa !108
  %399 = getelementptr inbounds %struct.opt_pass, ptr %398, i64 0, i32 5
  %400 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_complete_unrolli, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %401 = icmp eq ptr %400, null
  br i1 %401, label %402, label %403, !prof !140

402:                                              ; preds = %397
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %403

403:                                              ; preds = %397, %402
  %404 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_complete_unrolli, i8 noundef zeroext 0)
  store ptr %404, ptr %399, align 8, !tbaa !108
  %405 = getelementptr inbounds %struct.opt_pass, ptr %404, i64 0, i32 5
  %406 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_ccp, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %407 = icmp eq ptr %406, null
  br i1 %407, label %408, label %409, !prof !140

408:                                              ; preds = %403
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %409

409:                                              ; preds = %403, %408
  %410 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_ccp, i8 noundef zeroext 0)
  store ptr %410, ptr %405, align 8, !tbaa !108
  %411 = getelementptr inbounds %struct.opt_pass, ptr %410, i64 0, i32 5
  %412 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_forwprop, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %413 = icmp eq ptr %412, null
  br i1 %413, label %414, label %415, !prof !140

414:                                              ; preds = %409
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %415

415:                                              ; preds = %409, %414
  %416 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_forwprop, i8 noundef zeroext 0)
  store ptr %416, ptr %411, align 8, !tbaa !108
  %417 = getelementptr inbounds %struct.opt_pass, ptr %416, i64 0, i32 5
  %418 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_call_cdce, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %419 = icmp eq ptr %418, null
  br i1 %419, label %420, label %421, !prof !140

420:                                              ; preds = %415
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %421

421:                                              ; preds = %415, %420
  %422 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_call_cdce, i8 noundef zeroext 0)
  store ptr %422, ptr %417, align 8, !tbaa !108
  %423 = getelementptr inbounds %struct.opt_pass, ptr %422, i64 0, i32 5
  %424 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_build_alias, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %425 = icmp eq ptr %424, null
  br i1 %425, label %426, label %427, !prof !140

426:                                              ; preds = %421
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %427

427:                                              ; preds = %421, %426
  %428 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_build_alias, i8 noundef zeroext 0)
  store ptr %428, ptr %423, align 8, !tbaa !108
  %429 = getelementptr inbounds %struct.opt_pass, ptr %428, i64 0, i32 5
  %430 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_return_slot, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %431 = icmp eq ptr %430, null
  br i1 %431, label %432, label %433, !prof !140

432:                                              ; preds = %427
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %433

433:                                              ; preds = %427, %432
  %434 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_return_slot, i8 noundef zeroext 0)
  store ptr %434, ptr %429, align 8, !tbaa !108
  %435 = getelementptr inbounds %struct.opt_pass, ptr %434, i64 0, i32 5
  %436 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_phiprop, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %437 = icmp eq ptr %436, null
  br i1 %437, label %438, label %439, !prof !140

438:                                              ; preds = %433
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %439

439:                                              ; preds = %433, %438
  %440 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_phiprop, i8 noundef zeroext 0)
  store ptr %440, ptr %435, align 8, !tbaa !108
  %441 = getelementptr inbounds %struct.opt_pass, ptr %440, i64 0, i32 5
  %442 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_fre, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %443 = icmp eq ptr %442, null
  br i1 %443, label %444, label %445, !prof !140

444:                                              ; preds = %439
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %445

445:                                              ; preds = %439, %444
  %446 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_fre, i8 noundef zeroext 0)
  store ptr %446, ptr %441, align 8, !tbaa !108
  %447 = getelementptr inbounds %struct.opt_pass, ptr %446, i64 0, i32 5
  %448 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_copy_prop, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %449 = icmp eq ptr %448, null
  br i1 %449, label %450, label %451, !prof !140

450:                                              ; preds = %445
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %451

451:                                              ; preds = %445, %450
  %452 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_copy_prop, i8 noundef zeroext 0)
  store ptr %452, ptr %447, align 8, !tbaa !108
  %453 = getelementptr inbounds %struct.opt_pass, ptr %452, i64 0, i32 5
  %454 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_merge_phi, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %455 = icmp eq ptr %454, null
  br i1 %455, label %456, label %457, !prof !140

456:                                              ; preds = %451
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %457

457:                                              ; preds = %451, %456
  %458 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_merge_phi, i8 noundef zeroext 0)
  store ptr %458, ptr %453, align 8, !tbaa !108
  %459 = getelementptr inbounds %struct.opt_pass, ptr %458, i64 0, i32 5
  %460 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_vrp, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %461 = icmp eq ptr %460, null
  br i1 %461, label %462, label %463, !prof !140

462:                                              ; preds = %457
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %463

463:                                              ; preds = %457, %462
  %464 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_vrp, i8 noundef zeroext 0)
  store ptr %464, ptr %459, align 8, !tbaa !108
  %465 = getelementptr inbounds %struct.opt_pass, ptr %464, i64 0, i32 5
  %466 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_dce, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %467 = icmp eq ptr %466, null
  br i1 %467, label %468, label %469, !prof !140

468:                                              ; preds = %463
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %469

469:                                              ; preds = %463, %468
  %470 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_dce, i8 noundef zeroext 0)
  store ptr %470, ptr %465, align 8, !tbaa !108
  %471 = getelementptr inbounds %struct.opt_pass, ptr %470, i64 0, i32 5
  %472 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_cselim, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %473 = icmp eq ptr %472, null
  br i1 %473, label %474, label %475, !prof !140

474:                                              ; preds = %469
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %475

475:                                              ; preds = %469, %474
  %476 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_cselim, i8 noundef zeroext 0)
  store ptr %476, ptr %471, align 8, !tbaa !108
  %477 = getelementptr inbounds %struct.opt_pass, ptr %476, i64 0, i32 5
  %478 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_tree_ifcombine, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %479 = icmp eq ptr %478, null
  br i1 %479, label %480, label %481, !prof !140

480:                                              ; preds = %475
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %481

481:                                              ; preds = %475, %480
  %482 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_tree_ifcombine, i8 noundef zeroext 0)
  store ptr %482, ptr %477, align 8, !tbaa !108
  %483 = getelementptr inbounds %struct.opt_pass, ptr %482, i64 0, i32 5
  %484 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_phiopt, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %485 = icmp eq ptr %484, null
  br i1 %485, label %486, label %487, !prof !140

486:                                              ; preds = %481
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %487

487:                                              ; preds = %481, %486
  %488 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_phiopt, i8 noundef zeroext 0)
  store ptr %488, ptr %483, align 8, !tbaa !108
  %489 = getelementptr inbounds %struct.opt_pass, ptr %488, i64 0, i32 5
  %490 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_tail_recursion, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %491 = icmp eq ptr %490, null
  br i1 %491, label %492, label %493, !prof !140

492:                                              ; preds = %487
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %493

493:                                              ; preds = %487, %492
  %494 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_tail_recursion, i8 noundef zeroext 0)
  store ptr %494, ptr %489, align 8, !tbaa !108
  %495 = getelementptr inbounds %struct.opt_pass, ptr %494, i64 0, i32 5
  %496 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_ch, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %497 = icmp eq ptr %496, null
  br i1 %497, label %498, label %499, !prof !140

498:                                              ; preds = %493
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %499

499:                                              ; preds = %493, %498
  %500 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_ch, i8 noundef zeroext 0)
  store ptr %500, ptr %495, align 8, !tbaa !108
  %501 = getelementptr inbounds %struct.opt_pass, ptr %500, i64 0, i32 5
  %502 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_stdarg, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %503 = icmp eq ptr %502, null
  br i1 %503, label %504, label %505, !prof !140

504:                                              ; preds = %499
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %505

505:                                              ; preds = %499, %504
  %506 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_stdarg, i8 noundef zeroext 0)
  store ptr %506, ptr %501, align 8, !tbaa !108
  %507 = getelementptr inbounds %struct.opt_pass, ptr %506, i64 0, i32 5
  %508 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_lower_complex, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %509 = icmp eq ptr %508, null
  br i1 %509, label %510, label %511, !prof !140

510:                                              ; preds = %505
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %511

511:                                              ; preds = %505, %510
  %512 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_lower_complex, i8 noundef zeroext 0)
  store ptr %512, ptr %507, align 8, !tbaa !108
  %513 = getelementptr inbounds %struct.opt_pass, ptr %512, i64 0, i32 5
  %514 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_sra, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %515 = icmp eq ptr %514, null
  br i1 %515, label %516, label %517, !prof !140

516:                                              ; preds = %511
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %517

517:                                              ; preds = %511, %516
  %518 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_sra, i8 noundef zeroext 0)
  store ptr %518, ptr %513, align 8, !tbaa !108
  %519 = getelementptr inbounds %struct.opt_pass, ptr %518, i64 0, i32 5
  %520 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_rename_ssa_copies, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %521 = icmp eq ptr %520, null
  br i1 %521, label %522, label %523, !prof !140

522:                                              ; preds = %517
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %523

523:                                              ; preds = %517, %522
  %524 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_rename_ssa_copies, i8 noundef zeroext 0)
  store ptr %524, ptr %519, align 8, !tbaa !108
  %525 = getelementptr inbounds %struct.opt_pass, ptr %524, i64 0, i32 5
  %526 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_dominator, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %527 = icmp eq ptr %526, null
  br i1 %527, label %528, label %529, !prof !140

528:                                              ; preds = %523
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %529

529:                                              ; preds = %523, %528
  %530 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_dominator, i8 noundef zeroext 0)
  store ptr %530, ptr %525, align 8, !tbaa !108
  %531 = getelementptr inbounds %struct.opt_pass, ptr %530, i64 0, i32 5
  %532 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_phi_only_cprop, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %533 = icmp eq ptr %532, null
  br i1 %533, label %534, label %535, !prof !140

534:                                              ; preds = %529
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %535

535:                                              ; preds = %529, %534
  %536 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_phi_only_cprop, i8 noundef zeroext 0)
  store ptr %536, ptr %531, align 8, !tbaa !108
  %537 = getelementptr inbounds %struct.opt_pass, ptr %536, i64 0, i32 5
  %538 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_dse, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %539 = icmp eq ptr %538, null
  br i1 %539, label %540, label %541, !prof !140

540:                                              ; preds = %535
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %541

541:                                              ; preds = %535, %540
  %542 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_dse, i8 noundef zeroext 0)
  store ptr %542, ptr %537, align 8, !tbaa !108
  %543 = getelementptr inbounds %struct.opt_pass, ptr %542, i64 0, i32 5
  %544 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_reassoc, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %545 = icmp eq ptr %544, null
  br i1 %545, label %546, label %547, !prof !140

546:                                              ; preds = %541
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %547

547:                                              ; preds = %541, %546
  %548 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_reassoc, i8 noundef zeroext 0)
  store ptr %548, ptr %543, align 8, !tbaa !108
  %549 = getelementptr inbounds %struct.opt_pass, ptr %548, i64 0, i32 5
  %550 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_dce, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %551 = icmp eq ptr %550, null
  br i1 %551, label %552, label %553, !prof !140

552:                                              ; preds = %547
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %553

553:                                              ; preds = %547, %552
  %554 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_dce, i8 noundef zeroext 0)
  store ptr %554, ptr %549, align 8, !tbaa !108
  %555 = getelementptr inbounds %struct.opt_pass, ptr %554, i64 0, i32 5
  %556 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_forwprop, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %557 = icmp eq ptr %556, null
  br i1 %557, label %558, label %559, !prof !140

558:                                              ; preds = %553
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %559

559:                                              ; preds = %553, %558
  %560 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_forwprop, i8 noundef zeroext 0)
  store ptr %560, ptr %555, align 8, !tbaa !108
  %561 = getelementptr inbounds %struct.opt_pass, ptr %560, i64 0, i32 5
  %562 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_phiopt, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %563 = icmp eq ptr %562, null
  br i1 %563, label %564, label %565, !prof !140

564:                                              ; preds = %559
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %565

565:                                              ; preds = %559, %564
  %566 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_phiopt, i8 noundef zeroext 0)
  store ptr %566, ptr %561, align 8, !tbaa !108
  %567 = getelementptr inbounds %struct.opt_pass, ptr %566, i64 0, i32 5
  %568 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_object_sizes, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %569 = icmp eq ptr %568, null
  br i1 %569, label %570, label %571, !prof !140

570:                                              ; preds = %565
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %571

571:                                              ; preds = %565, %570
  %572 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_object_sizes, i8 noundef zeroext 0)
  store ptr %572, ptr %567, align 8, !tbaa !108
  %573 = getelementptr inbounds %struct.opt_pass, ptr %572, i64 0, i32 5
  %574 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_ccp, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %575 = icmp eq ptr %574, null
  br i1 %575, label %576, label %577, !prof !140

576:                                              ; preds = %571
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %577

577:                                              ; preds = %571, %576
  %578 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_ccp, i8 noundef zeroext 0)
  store ptr %578, ptr %573, align 8, !tbaa !108
  %579 = getelementptr inbounds %struct.opt_pass, ptr %578, i64 0, i32 5
  %580 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_copy_prop, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %581 = icmp eq ptr %580, null
  br i1 %581, label %582, label %583, !prof !140

582:                                              ; preds = %577
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %583

583:                                              ; preds = %577, %582
  %584 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_copy_prop, i8 noundef zeroext 0)
  store ptr %584, ptr %579, align 8, !tbaa !108
  %585 = getelementptr inbounds %struct.opt_pass, ptr %584, i64 0, i32 5
  %586 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_cse_sincos, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %587 = icmp eq ptr %586, null
  br i1 %587, label %588, label %589, !prof !140

588:                                              ; preds = %583
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %589

589:                                              ; preds = %583, %588
  %590 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_cse_sincos, i8 noundef zeroext 0)
  store ptr %590, ptr %585, align 8, !tbaa !108
  %591 = getelementptr inbounds %struct.opt_pass, ptr %590, i64 0, i32 5
  %592 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_optimize_bswap, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %593 = icmp eq ptr %592, null
  br i1 %593, label %594, label %595, !prof !140

594:                                              ; preds = %589
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %595

595:                                              ; preds = %589, %594
  %596 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_optimize_bswap, i8 noundef zeroext 0)
  store ptr %596, ptr %591, align 8, !tbaa !108
  %597 = getelementptr inbounds %struct.opt_pass, ptr %596, i64 0, i32 5
  %598 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_split_crit_edges, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %599 = icmp eq ptr %598, null
  br i1 %599, label %600, label %601, !prof !140

600:                                              ; preds = %595
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %601

601:                                              ; preds = %595, %600
  %602 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_split_crit_edges, i8 noundef zeroext 0)
  store ptr %602, ptr %597, align 8, !tbaa !108
  %603 = getelementptr inbounds %struct.opt_pass, ptr %602, i64 0, i32 5
  %604 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_pre, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %605 = icmp eq ptr %604, null
  br i1 %605, label %606, label %607, !prof !140

606:                                              ; preds = %601
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %607

607:                                              ; preds = %601, %606
  %608 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_pre, i8 noundef zeroext 0)
  store ptr %608, ptr %603, align 8, !tbaa !108
  %609 = getelementptr inbounds %struct.opt_pass, ptr %608, i64 0, i32 5
  %610 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_sink_code, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %611 = icmp eq ptr %610, null
  br i1 %611, label %612, label %613, !prof !140

612:                                              ; preds = %607
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %613

613:                                              ; preds = %607, %612
  %614 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_sink_code, i8 noundef zeroext 0)
  store ptr %614, ptr %609, align 8, !tbaa !108
  %615 = getelementptr inbounds %struct.opt_pass, ptr %614, i64 0, i32 5
  %616 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_tree_loop, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %617 = icmp eq ptr %616, null
  br i1 %617, label %618, label %619, !prof !140

618:                                              ; preds = %613
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %619

619:                                              ; preds = %613, %618
  %620 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_tree_loop, i8 noundef zeroext 0)
  store ptr %620, ptr %615, align 8, !tbaa !108
  %621 = getelementptr inbounds %struct.opt_pass, ptr %620, i64 0, i32 5
  %622 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_tree_loop_init, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %623 = icmp eq ptr %622, null
  br i1 %623, label %624, label %625, !prof !140

624:                                              ; preds = %619
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %625

625:                                              ; preds = %619, %624
  %626 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_tree_loop_init, i8 noundef zeroext 0)
  store ptr %626, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_tree_loop, i64 0, i32 0, i32 4), align 8, !tbaa !108
  %627 = getelementptr inbounds %struct.opt_pass, ptr %626, i64 0, i32 5
  %628 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_copy_prop, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %629 = icmp eq ptr %628, null
  br i1 %629, label %630, label %631, !prof !140

630:                                              ; preds = %625
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %631

631:                                              ; preds = %625, %630
  %632 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_copy_prop, i8 noundef zeroext 0)
  store ptr %632, ptr %627, align 8, !tbaa !108
  %633 = getelementptr inbounds %struct.opt_pass, ptr %632, i64 0, i32 5
  %634 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_dce_loop, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %635 = icmp eq ptr %634, null
  br i1 %635, label %636, label %637, !prof !140

636:                                              ; preds = %631
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %637

637:                                              ; preds = %631, %636
  %638 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_dce_loop, i8 noundef zeroext 0)
  store ptr %638, ptr %633, align 8, !tbaa !108
  %639 = getelementptr inbounds %struct.opt_pass, ptr %638, i64 0, i32 5
  %640 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_lim, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %641 = icmp eq ptr %640, null
  br i1 %641, label %642, label %643, !prof !140

642:                                              ; preds = %637
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %643

643:                                              ; preds = %637, %642
  %644 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_lim, i8 noundef zeroext 0)
  store ptr %644, ptr %639, align 8, !tbaa !108
  %645 = getelementptr inbounds %struct.opt_pass, ptr %644, i64 0, i32 5
  %646 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_tree_unswitch, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %647 = icmp eq ptr %646, null
  br i1 %647, label %648, label %649, !prof !140

648:                                              ; preds = %643
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %649

649:                                              ; preds = %643, %648
  %650 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_tree_unswitch, i8 noundef zeroext 0)
  store ptr %650, ptr %645, align 8, !tbaa !108
  %651 = getelementptr inbounds %struct.opt_pass, ptr %650, i64 0, i32 5
  %652 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_scev_cprop, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %653 = icmp eq ptr %652, null
  br i1 %653, label %654, label %655, !prof !140

654:                                              ; preds = %649
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %655

655:                                              ; preds = %649, %654
  %656 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_scev_cprop, i8 noundef zeroext 0)
  store ptr %656, ptr %651, align 8, !tbaa !108
  %657 = getelementptr inbounds %struct.opt_pass, ptr %656, i64 0, i32 5
  %658 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_record_bounds, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %659 = icmp eq ptr %658, null
  br i1 %659, label %660, label %661, !prof !140

660:                                              ; preds = %655
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %661

661:                                              ; preds = %655, %660
  %662 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_record_bounds, i8 noundef zeroext 0)
  store ptr %662, ptr %657, align 8, !tbaa !108
  %663 = getelementptr inbounds %struct.opt_pass, ptr %662, i64 0, i32 5
  %664 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_check_data_deps, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %665 = icmp eq ptr %664, null
  br i1 %665, label %666, label %667, !prof !140

666:                                              ; preds = %661
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %667

667:                                              ; preds = %661, %666
  %668 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_check_data_deps, i8 noundef zeroext 0)
  store ptr %668, ptr %663, align 8, !tbaa !108
  %669 = getelementptr inbounds %struct.opt_pass, ptr %668, i64 0, i32 5
  %670 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_loop_distribution, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %671 = icmp eq ptr %670, null
  br i1 %671, label %672, label %673, !prof !140

672:                                              ; preds = %667
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %673

673:                                              ; preds = %667, %672
  %674 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_loop_distribution, i8 noundef zeroext 0)
  store ptr %674, ptr %669, align 8, !tbaa !108
  %675 = getelementptr inbounds %struct.opt_pass, ptr %674, i64 0, i32 5
  %676 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_linear_transform, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %677 = icmp eq ptr %676, null
  br i1 %677, label %678, label %679, !prof !140

678:                                              ; preds = %673
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %679

679:                                              ; preds = %673, %678
  %680 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_linear_transform, i8 noundef zeroext 0)
  store ptr %680, ptr %675, align 8, !tbaa !108
  %681 = getelementptr inbounds %struct.opt_pass, ptr %680, i64 0, i32 5
  %682 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_graphite_transforms, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %683 = icmp eq ptr %682, null
  br i1 %683, label %684, label %685, !prof !140

684:                                              ; preds = %679
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %685

685:                                              ; preds = %679, %684
  %686 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_graphite_transforms, i8 noundef zeroext 0)
  store ptr %686, ptr %681, align 8, !tbaa !108
  %687 = getelementptr inbounds %struct.opt_pass, ptr %686, i64 0, i32 5
  %688 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_copy_prop, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %689 = icmp eq ptr %688, null
  br i1 %689, label %690, label %691, !prof !140

690:                                              ; preds = %685
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %691

691:                                              ; preds = %685, %690
  %692 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_copy_prop, i8 noundef zeroext 0)
  store ptr %692, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_graphite_transforms, i64 0, i32 0, i32 4), align 8, !tbaa !108
  %693 = getelementptr inbounds %struct.opt_pass, ptr %692, i64 0, i32 5
  %694 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_dce_loop, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %695 = icmp eq ptr %694, null
  br i1 %695, label %696, label %697, !prof !140

696:                                              ; preds = %691
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %697

697:                                              ; preds = %691, %696
  %698 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_dce_loop, i8 noundef zeroext 0)
  store ptr %698, ptr %693, align 8, !tbaa !108
  %699 = getelementptr inbounds %struct.opt_pass, ptr %698, i64 0, i32 5
  %700 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_lim, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %701 = icmp eq ptr %700, null
  br i1 %701, label %702, label %703, !prof !140

702:                                              ; preds = %697
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %703

703:                                              ; preds = %697, %702
  %704 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_lim, i8 noundef zeroext 0)
  store ptr %704, ptr %699, align 8, !tbaa !108
  %705 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_iv_canon, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %706 = icmp eq ptr %705, null
  br i1 %706, label %707, label %708, !prof !140

707:                                              ; preds = %703
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %708

708:                                              ; preds = %703, %707
  %709 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_iv_canon, i8 noundef zeroext 0)
  store ptr %709, ptr %687, align 8, !tbaa !108
  %710 = getelementptr inbounds %struct.opt_pass, ptr %709, i64 0, i32 5
  %711 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_if_conversion, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %712 = icmp eq ptr %711, null
  br i1 %712, label %713, label %714, !prof !140

713:                                              ; preds = %708
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %714

714:                                              ; preds = %708, %713
  %715 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_if_conversion, i8 noundef zeroext 0)
  store ptr %715, ptr %710, align 8, !tbaa !108
  %716 = getelementptr inbounds %struct.opt_pass, ptr %715, i64 0, i32 5
  %717 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_vectorize, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %718 = icmp eq ptr %717, null
  br i1 %718, label %719, label %720, !prof !140

719:                                              ; preds = %714
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %720

720:                                              ; preds = %714, %719
  %721 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_vectorize, i8 noundef zeroext 0)
  store ptr %721, ptr %716, align 8, !tbaa !108
  %722 = getelementptr inbounds %struct.opt_pass, ptr %721, i64 0, i32 5
  %723 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_lower_vector_ssa, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %724 = icmp eq ptr %723, null
  br i1 %724, label %725, label %726, !prof !140

725:                                              ; preds = %720
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %726

726:                                              ; preds = %720, %725
  %727 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_lower_vector_ssa, i8 noundef zeroext 0)
  store ptr %727, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_vectorize, i64 0, i32 0, i32 4), align 8, !tbaa !108
  %728 = getelementptr inbounds %struct.opt_pass, ptr %727, i64 0, i32 5
  %729 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_dce_loop, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %730 = icmp eq ptr %729, null
  br i1 %730, label %731, label %732, !prof !140

731:                                              ; preds = %726
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %732

732:                                              ; preds = %726, %731
  %733 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_dce_loop, i8 noundef zeroext 0)
  store ptr %733, ptr %728, align 8, !tbaa !108
  %734 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_predcom, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %735 = icmp eq ptr %734, null
  br i1 %735, label %736, label %737, !prof !140

736:                                              ; preds = %732
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %737

737:                                              ; preds = %732, %736
  %738 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_predcom, i8 noundef zeroext 0)
  store ptr %738, ptr %722, align 8, !tbaa !108
  %739 = getelementptr inbounds %struct.opt_pass, ptr %738, i64 0, i32 5
  %740 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_complete_unroll, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %741 = icmp eq ptr %740, null
  br i1 %741, label %742, label %743, !prof !140

742:                                              ; preds = %737
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %743

743:                                              ; preds = %737, %742
  %744 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_complete_unroll, i8 noundef zeroext 0)
  store ptr %744, ptr %739, align 8, !tbaa !108
  %745 = getelementptr inbounds %struct.opt_pass, ptr %744, i64 0, i32 5
  %746 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_slp_vectorize, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %747 = icmp eq ptr %746, null
  br i1 %747, label %748, label %749, !prof !140

748:                                              ; preds = %743
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %749

749:                                              ; preds = %743, %748
  %750 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_slp_vectorize, i8 noundef zeroext 0)
  store ptr %750, ptr %745, align 8, !tbaa !108
  %751 = getelementptr inbounds %struct.opt_pass, ptr %750, i64 0, i32 5
  %752 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_parallelize_loops, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %753 = icmp eq ptr %752, null
  br i1 %753, label %754, label %755, !prof !140

754:                                              ; preds = %749
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %755

755:                                              ; preds = %749, %754
  %756 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_parallelize_loops, i8 noundef zeroext 0)
  store ptr %756, ptr %751, align 8, !tbaa !108
  %757 = getelementptr inbounds %struct.opt_pass, ptr %756, i64 0, i32 5
  %758 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_loop_prefetch, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %759 = icmp eq ptr %758, null
  br i1 %759, label %760, label %761, !prof !140

760:                                              ; preds = %755
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %761

761:                                              ; preds = %755, %760
  %762 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_loop_prefetch, i8 noundef zeroext 0)
  store ptr %762, ptr %757, align 8, !tbaa !108
  %763 = getelementptr inbounds %struct.opt_pass, ptr %762, i64 0, i32 5
  %764 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_iv_optimize, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %765 = icmp eq ptr %764, null
  br i1 %765, label %766, label %767, !prof !140

766:                                              ; preds = %761
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %767

767:                                              ; preds = %761, %766
  %768 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_iv_optimize, i8 noundef zeroext 0)
  store ptr %768, ptr %763, align 8, !tbaa !108
  %769 = getelementptr inbounds %struct.opt_pass, ptr %768, i64 0, i32 5
  %770 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_tree_loop_done, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %771 = icmp eq ptr %770, null
  br i1 %771, label %772, label %773, !prof !140

772:                                              ; preds = %767
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %773

773:                                              ; preds = %767, %772
  %774 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_tree_loop_done, i8 noundef zeroext 0)
  store ptr %774, ptr %769, align 8, !tbaa !108
  %775 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_cse_reciprocals, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %776 = icmp eq ptr %775, null
  br i1 %776, label %777, label %778, !prof !140

777:                                              ; preds = %773
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %778

778:                                              ; preds = %773, %777
  %779 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_cse_reciprocals, i8 noundef zeroext 0)
  store ptr %779, ptr %621, align 8, !tbaa !108
  %780 = getelementptr inbounds %struct.opt_pass, ptr %779, i64 0, i32 5
  %781 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_reassoc, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %782 = icmp eq ptr %781, null
  br i1 %782, label %783, label %784, !prof !140

783:                                              ; preds = %778
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %784

784:                                              ; preds = %778, %783
  %785 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_reassoc, i8 noundef zeroext 0)
  store ptr %785, ptr %780, align 8, !tbaa !108
  %786 = getelementptr inbounds %struct.opt_pass, ptr %785, i64 0, i32 5
  %787 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_vrp, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %788 = icmp eq ptr %787, null
  br i1 %788, label %789, label %790, !prof !140

789:                                              ; preds = %784
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %790

790:                                              ; preds = %784, %789
  %791 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_vrp, i8 noundef zeroext 0)
  store ptr %791, ptr %786, align 8, !tbaa !108
  %792 = getelementptr inbounds %struct.opt_pass, ptr %791, i64 0, i32 5
  %793 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_dominator, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %794 = icmp eq ptr %793, null
  br i1 %794, label %795, label %796, !prof !140

795:                                              ; preds = %790
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %796

796:                                              ; preds = %790, %795
  %797 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_dominator, i8 noundef zeroext 0)
  store ptr %797, ptr %792, align 8, !tbaa !108
  %798 = getelementptr inbounds %struct.opt_pass, ptr %797, i64 0, i32 5
  %799 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_phi_only_cprop, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %800 = icmp eq ptr %799, null
  br i1 %800, label %801, label %802, !prof !140

801:                                              ; preds = %796
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %802

802:                                              ; preds = %796, %801
  %803 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_phi_only_cprop, i8 noundef zeroext 0)
  store ptr %803, ptr %798, align 8, !tbaa !108
  %804 = getelementptr inbounds %struct.opt_pass, ptr %803, i64 0, i32 5
  %805 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_cd_dce, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %806 = icmp eq ptr %805, null
  br i1 %806, label %807, label %808, !prof !140

807:                                              ; preds = %802
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %808

808:                                              ; preds = %802, %807
  %809 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_cd_dce, i8 noundef zeroext 0)
  store ptr %809, ptr %804, align 8, !tbaa !108
  %810 = getelementptr inbounds %struct.opt_pass, ptr %809, i64 0, i32 5
  %811 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_tracer, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %812 = icmp eq ptr %811, null
  br i1 %812, label %813, label %814, !prof !140

813:                                              ; preds = %808
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %814

814:                                              ; preds = %808, %813
  %815 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_tracer, i8 noundef zeroext 0)
  store ptr %815, ptr %810, align 8, !tbaa !108
  %816 = getelementptr inbounds %struct.opt_pass, ptr %815, i64 0, i32 5
  %817 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_late_warn_uninitialized, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %818 = icmp eq ptr %817, null
  br i1 %818, label %819, label %820, !prof !140

819:                                              ; preds = %814
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %820

820:                                              ; preds = %814, %819
  %821 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_late_warn_uninitialized, i8 noundef zeroext 0)
  store ptr %821, ptr %816, align 8, !tbaa !108
  %822 = getelementptr inbounds %struct.opt_pass, ptr %821, i64 0, i32 5
  %823 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_dse, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %824 = icmp eq ptr %823, null
  br i1 %824, label %825, label %826, !prof !140

825:                                              ; preds = %820
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %826

826:                                              ; preds = %820, %825
  %827 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_dse, i8 noundef zeroext 0)
  store ptr %827, ptr %822, align 8, !tbaa !108
  %828 = getelementptr inbounds %struct.opt_pass, ptr %827, i64 0, i32 5
  %829 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_forwprop, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %830 = icmp eq ptr %829, null
  br i1 %830, label %831, label %832, !prof !140

831:                                              ; preds = %826
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %832

832:                                              ; preds = %826, %831
  %833 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_forwprop, i8 noundef zeroext 0)
  store ptr %833, ptr %828, align 8, !tbaa !108
  %834 = getelementptr inbounds %struct.opt_pass, ptr %833, i64 0, i32 5
  %835 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_phiopt, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %836 = icmp eq ptr %835, null
  br i1 %836, label %837, label %838, !prof !140

837:                                              ; preds = %832
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %838

838:                                              ; preds = %832, %837
  %839 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_phiopt, i8 noundef zeroext 0)
  store ptr %839, ptr %834, align 8, !tbaa !108
  %840 = getelementptr inbounds %struct.opt_pass, ptr %839, i64 0, i32 5
  %841 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_fold_builtins, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %842 = icmp eq ptr %841, null
  br i1 %842, label %843, label %844, !prof !140

843:                                              ; preds = %838
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %844

844:                                              ; preds = %838, %843
  %845 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_fold_builtins, i8 noundef zeroext 0)
  store ptr %845, ptr %840, align 8, !tbaa !108
  %846 = getelementptr inbounds %struct.opt_pass, ptr %845, i64 0, i32 5
  %847 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_tail_calls, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %848 = icmp eq ptr %847, null
  br i1 %848, label %849, label %850, !prof !140

849:                                              ; preds = %844
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %850

850:                                              ; preds = %844, %849
  %851 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_tail_calls, i8 noundef zeroext 0)
  store ptr %851, ptr %846, align 8, !tbaa !108
  %852 = getelementptr inbounds %struct.opt_pass, ptr %851, i64 0, i32 5
  %853 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_rename_ssa_copies, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %854 = icmp eq ptr %853, null
  br i1 %854, label %855, label %856, !prof !140

855:                                              ; preds = %850
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %856

856:                                              ; preds = %850, %855
  %857 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_rename_ssa_copies, i8 noundef zeroext 0)
  store ptr %857, ptr %852, align 8, !tbaa !108
  %858 = getelementptr inbounds %struct.opt_pass, ptr %857, i64 0, i32 5
  %859 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_uncprop, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %860 = icmp eq ptr %859, null
  br i1 %860, label %861, label %862, !prof !140

861:                                              ; preds = %856
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %862

862:                                              ; preds = %856, %861
  %863 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_uncprop, i8 noundef zeroext 0)
  store ptr %863, ptr %858, align 8, !tbaa !108
  %864 = getelementptr inbounds %struct.opt_pass, ptr %863, i64 0, i32 5
  %865 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_local_pure_const, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %866 = icmp eq ptr %865, null
  br i1 %866, label %867, label %868, !prof !140

867:                                              ; preds = %862
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %868

868:                                              ; preds = %862, %867
  %869 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_local_pure_const, i8 noundef zeroext 0)
  store ptr %869, ptr %864, align 8, !tbaa !108
  %870 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_lower_complex_O0, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %871 = icmp eq ptr %870, null
  br i1 %871, label %872, label %873, !prof !140

872:                                              ; preds = %868
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %873

873:                                              ; preds = %868, %872
  %874 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_lower_complex_O0, i8 noundef zeroext 0)
  store ptr %874, ptr %375, align 8, !tbaa !108
  %875 = getelementptr inbounds %struct.opt_pass, ptr %874, i64 0, i32 5
  %876 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_cleanup_eh, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %877 = icmp eq ptr %876, null
  br i1 %877, label %878, label %879, !prof !140

878:                                              ; preds = %873
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %879

879:                                              ; preds = %873, %878
  %880 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_cleanup_eh, i8 noundef zeroext 0)
  store ptr %880, ptr %875, align 8, !tbaa !108
  %881 = getelementptr inbounds %struct.opt_pass, ptr %880, i64 0, i32 5
  %882 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_lower_resx, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %883 = icmp eq ptr %882, null
  br i1 %883, label %884, label %885, !prof !140

884:                                              ; preds = %879
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %885

885:                                              ; preds = %879, %884
  %886 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_lower_resx, i8 noundef zeroext 0)
  store ptr %886, ptr %881, align 8, !tbaa !108
  %887 = getelementptr inbounds %struct.opt_pass, ptr %886, i64 0, i32 5
  %888 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_nrv, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %889 = icmp eq ptr %888, null
  br i1 %889, label %890, label %891, !prof !140

890:                                              ; preds = %885
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %891

891:                                              ; preds = %885, %890
  %892 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_nrv, i8 noundef zeroext 0)
  store ptr %892, ptr %887, align 8, !tbaa !108
  %893 = getelementptr inbounds %struct.opt_pass, ptr %892, i64 0, i32 5
  %894 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_mudflap_2, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %895 = icmp eq ptr %894, null
  br i1 %895, label %896, label %897, !prof !140

896:                                              ; preds = %891
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %897

897:                                              ; preds = %891, %896
  %898 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_mudflap_2, i8 noundef zeroext 0)
  store ptr %898, ptr %893, align 8, !tbaa !108
  %899 = getelementptr inbounds %struct.opt_pass, ptr %898, i64 0, i32 5
  %900 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_cleanup_cfg_post_optimizing, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %901 = icmp eq ptr %900, null
  br i1 %901, label %902, label %903, !prof !140

902:                                              ; preds = %897
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %903

903:                                              ; preds = %897, %902
  %904 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_cleanup_cfg_post_optimizing, i8 noundef zeroext 0)
  store ptr %904, ptr %899, align 8, !tbaa !108
  %905 = getelementptr inbounds %struct.opt_pass, ptr %904, i64 0, i32 5
  %906 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_warn_function_noreturn, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %907 = icmp eq ptr %906, null
  br i1 %907, label %908, label %909, !prof !140

908:                                              ; preds = %903
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %909

909:                                              ; preds = %903, %908
  %910 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_warn_function_noreturn, i8 noundef zeroext 0)
  store ptr %910, ptr %905, align 8, !tbaa !108
  %911 = getelementptr inbounds %struct.opt_pass, ptr %910, i64 0, i32 5
  %912 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_expand, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %913 = icmp eq ptr %912, null
  br i1 %913, label %914, label %915, !prof !140

914:                                              ; preds = %909
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %915

915:                                              ; preds = %909, %914
  %916 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_expand, i8 noundef zeroext 0)
  store ptr %916, ptr %911, align 8, !tbaa !108
  %917 = getelementptr inbounds %struct.opt_pass, ptr %916, i64 0, i32 5
  %918 = load ptr, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_rest_of_compilation, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %919 = icmp eq ptr %918, null
  br i1 %919, label %920, label %921, !prof !140

920:                                              ; preds = %915
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %921

921:                                              ; preds = %915, %920
  %922 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_rest_of_compilation, i8 noundef zeroext 0)
  store ptr %922, ptr %917, align 8, !tbaa !108
  %923 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_init_function, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %924 = icmp eq ptr %923, null
  br i1 %924, label %925, label %926, !prof !140

925:                                              ; preds = %921
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %926

926:                                              ; preds = %921, %925
  %927 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_init_function, i8 noundef zeroext 0)
  store ptr %927, ptr getelementptr inbounds (%struct.gimple_opt_pass, ptr @pass_rest_of_compilation, i64 0, i32 0, i32 4), align 8, !tbaa !108
  %928 = getelementptr inbounds %struct.opt_pass, ptr %927, i64 0, i32 5
  %929 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_jump, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %930 = icmp eq ptr %929, null
  br i1 %930, label %931, label %932, !prof !140

931:                                              ; preds = %926
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %932

932:                                              ; preds = %926, %931
  %933 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_jump, i8 noundef zeroext 0)
  store ptr %933, ptr %928, align 8, !tbaa !108
  %934 = getelementptr inbounds %struct.opt_pass, ptr %933, i64 0, i32 5
  %935 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_rtl_eh, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %936 = icmp eq ptr %935, null
  br i1 %936, label %937, label %938, !prof !140

937:                                              ; preds = %932
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %938

938:                                              ; preds = %932, %937
  %939 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_rtl_eh, i8 noundef zeroext 0)
  store ptr %939, ptr %934, align 8, !tbaa !108
  %940 = getelementptr inbounds %struct.opt_pass, ptr %939, i64 0, i32 5
  %941 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_initial_value_sets, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %942 = icmp eq ptr %941, null
  br i1 %942, label %943, label %944, !prof !140

943:                                              ; preds = %938
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %944

944:                                              ; preds = %938, %943
  %945 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_initial_value_sets, i8 noundef zeroext 0)
  store ptr %945, ptr %940, align 8, !tbaa !108
  %946 = getelementptr inbounds %struct.opt_pass, ptr %945, i64 0, i32 5
  %947 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_unshare_all_rtl, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %948 = icmp eq ptr %947, null
  br i1 %948, label %949, label %950, !prof !140

949:                                              ; preds = %944
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %950

950:                                              ; preds = %944, %949
  %951 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_unshare_all_rtl, i8 noundef zeroext 0)
  store ptr %951, ptr %946, align 8, !tbaa !108
  %952 = getelementptr inbounds %struct.opt_pass, ptr %951, i64 0, i32 5
  %953 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_instantiate_virtual_regs, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %954 = icmp eq ptr %953, null
  br i1 %954, label %955, label %956, !prof !140

955:                                              ; preds = %950
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %956

956:                                              ; preds = %950, %955
  %957 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_instantiate_virtual_regs, i8 noundef zeroext 0)
  store ptr %957, ptr %952, align 8, !tbaa !108
  %958 = getelementptr inbounds %struct.opt_pass, ptr %957, i64 0, i32 5
  %959 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_into_cfg_layout_mode, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %960 = icmp eq ptr %959, null
  br i1 %960, label %961, label %962, !prof !140

961:                                              ; preds = %956
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %962

962:                                              ; preds = %956, %961
  %963 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_into_cfg_layout_mode, i8 noundef zeroext 0)
  store ptr %963, ptr %958, align 8, !tbaa !108
  %964 = getelementptr inbounds %struct.opt_pass, ptr %963, i64 0, i32 5
  %965 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_jump2, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %966 = icmp eq ptr %965, null
  br i1 %966, label %967, label %968, !prof !140

967:                                              ; preds = %962
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %968

968:                                              ; preds = %962, %967
  %969 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_jump2, i8 noundef zeroext 0)
  store ptr %969, ptr %964, align 8, !tbaa !108
  %970 = getelementptr inbounds %struct.opt_pass, ptr %969, i64 0, i32 5
  %971 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_lower_subreg, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %972 = icmp eq ptr %971, null
  br i1 %972, label %973, label %974, !prof !140

973:                                              ; preds = %968
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %974

974:                                              ; preds = %968, %973
  %975 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_lower_subreg, i8 noundef zeroext 0)
  store ptr %975, ptr %970, align 8, !tbaa !108
  %976 = getelementptr inbounds %struct.opt_pass, ptr %975, i64 0, i32 5
  %977 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_df_initialize_opt, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %978 = icmp eq ptr %977, null
  br i1 %978, label %979, label %980, !prof !140

979:                                              ; preds = %974
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %980

980:                                              ; preds = %974, %979
  %981 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_df_initialize_opt, i8 noundef zeroext 0)
  store ptr %981, ptr %976, align 8, !tbaa !108
  %982 = getelementptr inbounds %struct.opt_pass, ptr %981, i64 0, i32 5
  %983 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_cse, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %984 = icmp eq ptr %983, null
  br i1 %984, label %985, label %986, !prof !140

985:                                              ; preds = %980
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %986

986:                                              ; preds = %980, %985
  %987 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_cse, i8 noundef zeroext 0)
  store ptr %987, ptr %982, align 8, !tbaa !108
  %988 = getelementptr inbounds %struct.opt_pass, ptr %987, i64 0, i32 5
  %989 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_rtl_fwprop, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %990 = icmp eq ptr %989, null
  br i1 %990, label %991, label %992, !prof !140

991:                                              ; preds = %986
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %992

992:                                              ; preds = %986, %991
  %993 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_rtl_fwprop, i8 noundef zeroext 0)
  store ptr %993, ptr %988, align 8, !tbaa !108
  %994 = getelementptr inbounds %struct.opt_pass, ptr %993, i64 0, i32 5
  %995 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_rtl_cprop, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %996 = icmp eq ptr %995, null
  br i1 %996, label %997, label %998, !prof !140

997:                                              ; preds = %992
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %998

998:                                              ; preds = %992, %997
  %999 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_rtl_cprop, i8 noundef zeroext 0)
  store ptr %999, ptr %994, align 8, !tbaa !108
  %1000 = getelementptr inbounds %struct.opt_pass, ptr %999, i64 0, i32 5
  %1001 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_rtl_pre, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1002 = icmp eq ptr %1001, null
  br i1 %1002, label %1003, label %1004, !prof !140

1003:                                             ; preds = %998
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1004

1004:                                             ; preds = %998, %1003
  %1005 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_rtl_pre, i8 noundef zeroext 0)
  store ptr %1005, ptr %1000, align 8, !tbaa !108
  %1006 = getelementptr inbounds %struct.opt_pass, ptr %1005, i64 0, i32 5
  %1007 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_rtl_hoist, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1008 = icmp eq ptr %1007, null
  br i1 %1008, label %1009, label %1010, !prof !140

1009:                                             ; preds = %1004
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1010

1010:                                             ; preds = %1004, %1009
  %1011 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_rtl_hoist, i8 noundef zeroext 0)
  store ptr %1011, ptr %1006, align 8, !tbaa !108
  %1012 = getelementptr inbounds %struct.opt_pass, ptr %1011, i64 0, i32 5
  %1013 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_rtl_cprop, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1014 = icmp eq ptr %1013, null
  br i1 %1014, label %1015, label %1016, !prof !140

1015:                                             ; preds = %1010
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1016

1016:                                             ; preds = %1010, %1015
  %1017 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_rtl_cprop, i8 noundef zeroext 0)
  store ptr %1017, ptr %1012, align 8, !tbaa !108
  %1018 = getelementptr inbounds %struct.opt_pass, ptr %1017, i64 0, i32 5
  %1019 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_rtl_store_motion, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1020 = icmp eq ptr %1019, null
  br i1 %1020, label %1021, label %1022, !prof !140

1021:                                             ; preds = %1016
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1022

1022:                                             ; preds = %1016, %1021
  %1023 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_rtl_store_motion, i8 noundef zeroext 0)
  store ptr %1023, ptr %1018, align 8, !tbaa !108
  %1024 = getelementptr inbounds %struct.opt_pass, ptr %1023, i64 0, i32 5
  %1025 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_cse_after_global_opts, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1026 = icmp eq ptr %1025, null
  br i1 %1026, label %1027, label %1028, !prof !140

1027:                                             ; preds = %1022
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1028

1028:                                             ; preds = %1022, %1027
  %1029 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_cse_after_global_opts, i8 noundef zeroext 0)
  store ptr %1029, ptr %1024, align 8, !tbaa !108
  %1030 = getelementptr inbounds %struct.opt_pass, ptr %1029, i64 0, i32 5
  %1031 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_rtl_ifcvt, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1032 = icmp eq ptr %1031, null
  br i1 %1032, label %1033, label %1034, !prof !140

1033:                                             ; preds = %1028
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1034

1034:                                             ; preds = %1028, %1033
  %1035 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_rtl_ifcvt, i8 noundef zeroext 0)
  store ptr %1035, ptr %1030, align 8, !tbaa !108
  %1036 = getelementptr inbounds %struct.opt_pass, ptr %1035, i64 0, i32 5
  %1037 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_reginfo_init, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1038 = icmp eq ptr %1037, null
  br i1 %1038, label %1039, label %1040, !prof !140

1039:                                             ; preds = %1034
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1040

1040:                                             ; preds = %1034, %1039
  %1041 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_reginfo_init, i8 noundef zeroext 0)
  store ptr %1041, ptr %1036, align 8, !tbaa !108
  %1042 = getelementptr inbounds %struct.opt_pass, ptr %1041, i64 0, i32 5
  %1043 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_loop2, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1044 = icmp eq ptr %1043, null
  br i1 %1044, label %1045, label %1046, !prof !140

1045:                                             ; preds = %1040
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1046

1046:                                             ; preds = %1040, %1045
  %1047 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_loop2, i8 noundef zeroext 0)
  store ptr %1047, ptr %1042, align 8, !tbaa !108
  %1048 = getelementptr inbounds %struct.opt_pass, ptr %1047, i64 0, i32 5
  %1049 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_rtl_loop_init, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1050 = icmp eq ptr %1049, null
  br i1 %1050, label %1051, label %1052, !prof !140

1051:                                             ; preds = %1046
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1052

1052:                                             ; preds = %1046, %1051
  %1053 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_rtl_loop_init, i8 noundef zeroext 0)
  store ptr %1053, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_loop2, i64 0, i32 0, i32 4), align 8, !tbaa !108
  %1054 = getelementptr inbounds %struct.opt_pass, ptr %1053, i64 0, i32 5
  %1055 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_rtl_move_loop_invariants, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1056 = icmp eq ptr %1055, null
  br i1 %1056, label %1057, label %1058, !prof !140

1057:                                             ; preds = %1052
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1058

1058:                                             ; preds = %1052, %1057
  %1059 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_rtl_move_loop_invariants, i8 noundef zeroext 0)
  store ptr %1059, ptr %1054, align 8, !tbaa !108
  %1060 = getelementptr inbounds %struct.opt_pass, ptr %1059, i64 0, i32 5
  %1061 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_rtl_unswitch, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1062 = icmp eq ptr %1061, null
  br i1 %1062, label %1063, label %1064, !prof !140

1063:                                             ; preds = %1058
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1064

1064:                                             ; preds = %1058, %1063
  %1065 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_rtl_unswitch, i8 noundef zeroext 0)
  store ptr %1065, ptr %1060, align 8, !tbaa !108
  %1066 = getelementptr inbounds %struct.opt_pass, ptr %1065, i64 0, i32 5
  %1067 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_rtl_unroll_and_peel_loops, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1068 = icmp eq ptr %1067, null
  br i1 %1068, label %1069, label %1070, !prof !140

1069:                                             ; preds = %1064
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1070

1070:                                             ; preds = %1064, %1069
  %1071 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_rtl_unroll_and_peel_loops, i8 noundef zeroext 0)
  store ptr %1071, ptr %1066, align 8, !tbaa !108
  %1072 = getelementptr inbounds %struct.opt_pass, ptr %1071, i64 0, i32 5
  %1073 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_rtl_doloop, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1074 = icmp eq ptr %1073, null
  br i1 %1074, label %1075, label %1076, !prof !140

1075:                                             ; preds = %1070
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1076

1076:                                             ; preds = %1070, %1075
  %1077 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_rtl_doloop, i8 noundef zeroext 0)
  store ptr %1077, ptr %1072, align 8, !tbaa !108
  %1078 = getelementptr inbounds %struct.opt_pass, ptr %1077, i64 0, i32 5
  %1079 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_rtl_loop_done, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1080 = icmp eq ptr %1079, null
  br i1 %1080, label %1081, label %1082, !prof !140

1081:                                             ; preds = %1076
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1082

1082:                                             ; preds = %1076, %1081
  %1083 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_rtl_loop_done, i8 noundef zeroext 0)
  store ptr %1083, ptr %1078, align 8, !tbaa !108
  %1084 = getelementptr inbounds %struct.opt_pass, ptr %1083, i64 0, i32 5
  store ptr null, ptr %1084, align 8, !tbaa !108
  %1085 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_web, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1086 = icmp eq ptr %1085, null
  br i1 %1086, label %1087, label %1088, !prof !140

1087:                                             ; preds = %1082
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1088

1088:                                             ; preds = %1082, %1087
  %1089 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_web, i8 noundef zeroext 0)
  store ptr %1089, ptr %1048, align 8, !tbaa !108
  %1090 = getelementptr inbounds %struct.opt_pass, ptr %1089, i64 0, i32 5
  %1091 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_rtl_cprop, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1092 = icmp eq ptr %1091, null
  br i1 %1092, label %1093, label %1094, !prof !140

1093:                                             ; preds = %1088
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1094

1094:                                             ; preds = %1088, %1093
  %1095 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_rtl_cprop, i8 noundef zeroext 0)
  store ptr %1095, ptr %1090, align 8, !tbaa !108
  %1096 = getelementptr inbounds %struct.opt_pass, ptr %1095, i64 0, i32 5
  %1097 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_cse2, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1098 = icmp eq ptr %1097, null
  br i1 %1098, label %1099, label %1100, !prof !140

1099:                                             ; preds = %1094
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1100

1100:                                             ; preds = %1094, %1099
  %1101 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_cse2, i8 noundef zeroext 0)
  store ptr %1101, ptr %1096, align 8, !tbaa !108
  %1102 = getelementptr inbounds %struct.opt_pass, ptr %1101, i64 0, i32 5
  %1103 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_rtl_dse1, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1104 = icmp eq ptr %1103, null
  br i1 %1104, label %1105, label %1106, !prof !140

1105:                                             ; preds = %1100
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1106

1106:                                             ; preds = %1100, %1105
  %1107 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_rtl_dse1, i8 noundef zeroext 0)
  store ptr %1107, ptr %1102, align 8, !tbaa !108
  %1108 = getelementptr inbounds %struct.opt_pass, ptr %1107, i64 0, i32 5
  %1109 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_rtl_fwprop_addr, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1110 = icmp eq ptr %1109, null
  br i1 %1110, label %1111, label %1112, !prof !140

1111:                                             ; preds = %1106
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1112

1112:                                             ; preds = %1106, %1111
  %1113 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_rtl_fwprop_addr, i8 noundef zeroext 0)
  store ptr %1113, ptr %1108, align 8, !tbaa !108
  %1114 = getelementptr inbounds %struct.opt_pass, ptr %1113, i64 0, i32 5
  %1115 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_inc_dec, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1116 = icmp eq ptr %1115, null
  br i1 %1116, label %1117, label %1118, !prof !140

1117:                                             ; preds = %1112
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1118

1118:                                             ; preds = %1112, %1117
  %1119 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_inc_dec, i8 noundef zeroext 0)
  store ptr %1119, ptr %1114, align 8, !tbaa !108
  %1120 = getelementptr inbounds %struct.opt_pass, ptr %1119, i64 0, i32 5
  %1121 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_initialize_regs, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1122 = icmp eq ptr %1121, null
  br i1 %1122, label %1123, label %1124, !prof !140

1123:                                             ; preds = %1118
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1124

1124:                                             ; preds = %1118, %1123
  %1125 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_initialize_regs, i8 noundef zeroext 0)
  store ptr %1125, ptr %1120, align 8, !tbaa !108
  %1126 = getelementptr inbounds %struct.opt_pass, ptr %1125, i64 0, i32 5
  %1127 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_ud_rtl_dce, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1128 = icmp eq ptr %1127, null
  br i1 %1128, label %1129, label %1130, !prof !140

1129:                                             ; preds = %1124
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1130

1130:                                             ; preds = %1124, %1129
  %1131 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_ud_rtl_dce, i8 noundef zeroext 0)
  store ptr %1131, ptr %1126, align 8, !tbaa !108
  %1132 = getelementptr inbounds %struct.opt_pass, ptr %1131, i64 0, i32 5
  %1133 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_combine, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1134 = icmp eq ptr %1133, null
  br i1 %1134, label %1135, label %1136, !prof !140

1135:                                             ; preds = %1130
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1136

1136:                                             ; preds = %1130, %1135
  %1137 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_combine, i8 noundef zeroext 0)
  store ptr %1137, ptr %1132, align 8, !tbaa !108
  %1138 = getelementptr inbounds %struct.opt_pass, ptr %1137, i64 0, i32 5
  %1139 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_if_after_combine, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1140 = icmp eq ptr %1139, null
  br i1 %1140, label %1141, label %1142, !prof !140

1141:                                             ; preds = %1136
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1142

1142:                                             ; preds = %1136, %1141
  %1143 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_if_after_combine, i8 noundef zeroext 0)
  store ptr %1143, ptr %1138, align 8, !tbaa !108
  %1144 = getelementptr inbounds %struct.opt_pass, ptr %1143, i64 0, i32 5
  %1145 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_partition_blocks, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1146 = icmp eq ptr %1145, null
  br i1 %1146, label %1147, label %1148, !prof !140

1147:                                             ; preds = %1142
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1148

1148:                                             ; preds = %1142, %1147
  %1149 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_partition_blocks, i8 noundef zeroext 0)
  store ptr %1149, ptr %1144, align 8, !tbaa !108
  %1150 = getelementptr inbounds %struct.opt_pass, ptr %1149, i64 0, i32 5
  %1151 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_regmove, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1152 = icmp eq ptr %1151, null
  br i1 %1152, label %1153, label %1154, !prof !140

1153:                                             ; preds = %1148
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1154

1154:                                             ; preds = %1148, %1153
  %1155 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_regmove, i8 noundef zeroext 0)
  store ptr %1155, ptr %1150, align 8, !tbaa !108
  %1156 = getelementptr inbounds %struct.opt_pass, ptr %1155, i64 0, i32 5
  %1157 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_outof_cfg_layout_mode, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1158 = icmp eq ptr %1157, null
  br i1 %1158, label %1159, label %1160, !prof !140

1159:                                             ; preds = %1154
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1160

1160:                                             ; preds = %1154, %1159
  %1161 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_outof_cfg_layout_mode, i8 noundef zeroext 0)
  store ptr %1161, ptr %1156, align 8, !tbaa !108
  %1162 = getelementptr inbounds %struct.opt_pass, ptr %1161, i64 0, i32 5
  %1163 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_split_all_insns, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1164 = icmp eq ptr %1163, null
  br i1 %1164, label %1165, label %1166, !prof !140

1165:                                             ; preds = %1160
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1166

1166:                                             ; preds = %1160, %1165
  %1167 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_split_all_insns, i8 noundef zeroext 0)
  store ptr %1167, ptr %1162, align 8, !tbaa !108
  %1168 = getelementptr inbounds %struct.opt_pass, ptr %1167, i64 0, i32 5
  %1169 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_lower_subreg2, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1170 = icmp eq ptr %1169, null
  br i1 %1170, label %1171, label %1172, !prof !140

1171:                                             ; preds = %1166
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1172

1172:                                             ; preds = %1166, %1171
  %1173 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_lower_subreg2, i8 noundef zeroext 0)
  store ptr %1173, ptr %1168, align 8, !tbaa !108
  %1174 = getelementptr inbounds %struct.opt_pass, ptr %1173, i64 0, i32 5
  %1175 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_df_initialize_no_opt, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1176 = icmp eq ptr %1175, null
  br i1 %1176, label %1177, label %1178, !prof !140

1177:                                             ; preds = %1172
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1178

1178:                                             ; preds = %1172, %1177
  %1179 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_df_initialize_no_opt, i8 noundef zeroext 0)
  store ptr %1179, ptr %1174, align 8, !tbaa !108
  %1180 = getelementptr inbounds %struct.opt_pass, ptr %1179, i64 0, i32 5
  %1181 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_stack_ptr_mod, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1182 = icmp eq ptr %1181, null
  br i1 %1182, label %1183, label %1184, !prof !140

1183:                                             ; preds = %1178
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1184

1184:                                             ; preds = %1178, %1183
  %1185 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_stack_ptr_mod, i8 noundef zeroext 0)
  store ptr %1185, ptr %1180, align 8, !tbaa !108
  %1186 = getelementptr inbounds %struct.opt_pass, ptr %1185, i64 0, i32 5
  %1187 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_mode_switching, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1188 = icmp eq ptr %1187, null
  br i1 %1188, label %1189, label %1190, !prof !140

1189:                                             ; preds = %1184
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1190

1190:                                             ; preds = %1184, %1189
  %1191 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_mode_switching, i8 noundef zeroext 0)
  store ptr %1191, ptr %1186, align 8, !tbaa !108
  %1192 = getelementptr inbounds %struct.opt_pass, ptr %1191, i64 0, i32 5
  %1193 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_match_asm_constraints, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1194 = icmp eq ptr %1193, null
  br i1 %1194, label %1195, label %1196, !prof !140

1195:                                             ; preds = %1190
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1196

1196:                                             ; preds = %1190, %1195
  %1197 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_match_asm_constraints, i8 noundef zeroext 0)
  store ptr %1197, ptr %1192, align 8, !tbaa !108
  %1198 = getelementptr inbounds %struct.opt_pass, ptr %1197, i64 0, i32 5
  %1199 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_sms, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1200 = icmp eq ptr %1199, null
  br i1 %1200, label %1201, label %1202, !prof !140

1201:                                             ; preds = %1196
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1202

1202:                                             ; preds = %1196, %1201
  %1203 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_sms, i8 noundef zeroext 0)
  store ptr %1203, ptr %1198, align 8, !tbaa !108
  %1204 = getelementptr inbounds %struct.opt_pass, ptr %1203, i64 0, i32 5
  %1205 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_sched, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1206 = icmp eq ptr %1205, null
  br i1 %1206, label %1207, label %1208, !prof !140

1207:                                             ; preds = %1202
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1208

1208:                                             ; preds = %1202, %1207
  %1209 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_sched, i8 noundef zeroext 0)
  store ptr %1209, ptr %1204, align 8, !tbaa !108
  %1210 = getelementptr inbounds %struct.opt_pass, ptr %1209, i64 0, i32 5
  %1211 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_ira, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1212 = icmp eq ptr %1211, null
  br i1 %1212, label %1213, label %1214, !prof !140

1213:                                             ; preds = %1208
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1214

1214:                                             ; preds = %1208, %1213
  %1215 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_ira, i8 noundef zeroext 0)
  store ptr %1215, ptr %1210, align 8, !tbaa !108
  %1216 = getelementptr inbounds %struct.opt_pass, ptr %1215, i64 0, i32 5
  %1217 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_postreload, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1218 = icmp eq ptr %1217, null
  br i1 %1218, label %1219, label %1220, !prof !140

1219:                                             ; preds = %1214
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1220

1220:                                             ; preds = %1214, %1219
  %1221 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_postreload, i8 noundef zeroext 0)
  store ptr %1221, ptr %1216, align 8, !tbaa !108
  %1222 = getelementptr inbounds %struct.opt_pass, ptr %1221, i64 0, i32 5
  %1223 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_postreload_cse, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1224 = icmp eq ptr %1223, null
  br i1 %1224, label %1225, label %1226, !prof !140

1225:                                             ; preds = %1220
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1226

1226:                                             ; preds = %1220, %1225
  %1227 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_postreload_cse, i8 noundef zeroext 0)
  store ptr %1227, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_postreload, i64 0, i32 0, i32 4), align 8, !tbaa !108
  %1228 = getelementptr inbounds %struct.opt_pass, ptr %1227, i64 0, i32 5
  %1229 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_gcse2, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1230 = icmp eq ptr %1229, null
  br i1 %1230, label %1231, label %1232, !prof !140

1231:                                             ; preds = %1226
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1232

1232:                                             ; preds = %1226, %1231
  %1233 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_gcse2, i8 noundef zeroext 0)
  store ptr %1233, ptr %1228, align 8, !tbaa !108
  %1234 = getelementptr inbounds %struct.opt_pass, ptr %1233, i64 0, i32 5
  %1235 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_split_after_reload, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1236 = icmp eq ptr %1235, null
  br i1 %1236, label %1237, label %1238, !prof !140

1237:                                             ; preds = %1232
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1238

1238:                                             ; preds = %1232, %1237
  %1239 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_split_after_reload, i8 noundef zeroext 0)
  store ptr %1239, ptr %1234, align 8, !tbaa !108
  %1240 = getelementptr inbounds %struct.opt_pass, ptr %1239, i64 0, i32 5
  %1241 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_branch_target_load_optimize1, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1242 = icmp eq ptr %1241, null
  br i1 %1242, label %1243, label %1244, !prof !140

1243:                                             ; preds = %1238
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1244

1244:                                             ; preds = %1238, %1243
  %1245 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_branch_target_load_optimize1, i8 noundef zeroext 0)
  store ptr %1245, ptr %1240, align 8, !tbaa !108
  %1246 = getelementptr inbounds %struct.opt_pass, ptr %1245, i64 0, i32 5
  %1247 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_thread_prologue_and_epilogue, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1248 = icmp eq ptr %1247, null
  br i1 %1248, label %1249, label %1250, !prof !140

1249:                                             ; preds = %1244
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1250

1250:                                             ; preds = %1244, %1249
  %1251 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_thread_prologue_and_epilogue, i8 noundef zeroext 0)
  store ptr %1251, ptr %1246, align 8, !tbaa !108
  %1252 = getelementptr inbounds %struct.opt_pass, ptr %1251, i64 0, i32 5
  %1253 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_rtl_dse2, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1254 = icmp eq ptr %1253, null
  br i1 %1254, label %1255, label %1256, !prof !140

1255:                                             ; preds = %1250
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1256

1256:                                             ; preds = %1250, %1255
  %1257 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_rtl_dse2, i8 noundef zeroext 0)
  store ptr %1257, ptr %1252, align 8, !tbaa !108
  %1258 = getelementptr inbounds %struct.opt_pass, ptr %1257, i64 0, i32 5
  %1259 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_stack_adjustments, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1260 = icmp eq ptr %1259, null
  br i1 %1260, label %1261, label %1262, !prof !140

1261:                                             ; preds = %1256
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1262

1262:                                             ; preds = %1256, %1261
  %1263 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_stack_adjustments, i8 noundef zeroext 0)
  store ptr %1263, ptr %1258, align 8, !tbaa !108
  %1264 = getelementptr inbounds %struct.opt_pass, ptr %1263, i64 0, i32 5
  %1265 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_peephole2, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1266 = icmp eq ptr %1265, null
  br i1 %1266, label %1267, label %1268, !prof !140

1267:                                             ; preds = %1262
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1268

1268:                                             ; preds = %1262, %1267
  %1269 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_peephole2, i8 noundef zeroext 0)
  store ptr %1269, ptr %1264, align 8, !tbaa !108
  %1270 = getelementptr inbounds %struct.opt_pass, ptr %1269, i64 0, i32 5
  %1271 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_if_after_reload, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1272 = icmp eq ptr %1271, null
  br i1 %1272, label %1273, label %1274, !prof !140

1273:                                             ; preds = %1268
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1274

1274:                                             ; preds = %1268, %1273
  %1275 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_if_after_reload, i8 noundef zeroext 0)
  store ptr %1275, ptr %1270, align 8, !tbaa !108
  %1276 = getelementptr inbounds %struct.opt_pass, ptr %1275, i64 0, i32 5
  %1277 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_regrename, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1278 = icmp eq ptr %1277, null
  br i1 %1278, label %1279, label %1280, !prof !140

1279:                                             ; preds = %1274
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1280

1280:                                             ; preds = %1274, %1279
  %1281 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_regrename, i8 noundef zeroext 0)
  store ptr %1281, ptr %1276, align 8, !tbaa !108
  %1282 = getelementptr inbounds %struct.opt_pass, ptr %1281, i64 0, i32 5
  %1283 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_cprop_hardreg, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1284 = icmp eq ptr %1283, null
  br i1 %1284, label %1285, label %1286, !prof !140

1285:                                             ; preds = %1280
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1286

1286:                                             ; preds = %1280, %1285
  %1287 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_cprop_hardreg, i8 noundef zeroext 0)
  store ptr %1287, ptr %1282, align 8, !tbaa !108
  %1288 = getelementptr inbounds %struct.opt_pass, ptr %1287, i64 0, i32 5
  %1289 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_fast_rtl_dce, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1290 = icmp eq ptr %1289, null
  br i1 %1290, label %1291, label %1292, !prof !140

1291:                                             ; preds = %1286
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1292

1292:                                             ; preds = %1286, %1291
  %1293 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_fast_rtl_dce, i8 noundef zeroext 0)
  store ptr %1293, ptr %1288, align 8, !tbaa !108
  %1294 = getelementptr inbounds %struct.opt_pass, ptr %1293, i64 0, i32 5
  %1295 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_reorder_blocks, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1296 = icmp eq ptr %1295, null
  br i1 %1296, label %1297, label %1298, !prof !140

1297:                                             ; preds = %1292
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1298

1298:                                             ; preds = %1292, %1297
  %1299 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_reorder_blocks, i8 noundef zeroext 0)
  store ptr %1299, ptr %1294, align 8, !tbaa !108
  %1300 = getelementptr inbounds %struct.opt_pass, ptr %1299, i64 0, i32 5
  %1301 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_branch_target_load_optimize2, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1302 = icmp eq ptr %1301, null
  br i1 %1302, label %1303, label %1304, !prof !140

1303:                                             ; preds = %1298
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1304

1304:                                             ; preds = %1298, %1303
  %1305 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_branch_target_load_optimize2, i8 noundef zeroext 0)
  store ptr %1305, ptr %1300, align 8, !tbaa !108
  %1306 = getelementptr inbounds %struct.opt_pass, ptr %1305, i64 0, i32 5
  %1307 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_leaf_regs, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1308 = icmp eq ptr %1307, null
  br i1 %1308, label %1309, label %1310, !prof !140

1309:                                             ; preds = %1304
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1310

1310:                                             ; preds = %1304, %1309
  %1311 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_leaf_regs, i8 noundef zeroext 0)
  store ptr %1311, ptr %1306, align 8, !tbaa !108
  %1312 = getelementptr inbounds %struct.opt_pass, ptr %1311, i64 0, i32 5
  %1313 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_split_before_sched2, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1314 = icmp eq ptr %1313, null
  br i1 %1314, label %1315, label %1316, !prof !140

1315:                                             ; preds = %1310
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1316

1316:                                             ; preds = %1310, %1315
  %1317 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_split_before_sched2, i8 noundef zeroext 0)
  store ptr %1317, ptr %1312, align 8, !tbaa !108
  %1318 = getelementptr inbounds %struct.opt_pass, ptr %1317, i64 0, i32 5
  %1319 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_sched2, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1320 = icmp eq ptr %1319, null
  br i1 %1320, label %1321, label %1322, !prof !140

1321:                                             ; preds = %1316
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1322

1322:                                             ; preds = %1316, %1321
  %1323 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_sched2, i8 noundef zeroext 0)
  store ptr %1323, ptr %1318, align 8, !tbaa !108
  %1324 = getelementptr inbounds %struct.opt_pass, ptr %1323, i64 0, i32 5
  %1325 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_stack_regs, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1326 = icmp eq ptr %1325, null
  br i1 %1326, label %1327, label %1328, !prof !140

1327:                                             ; preds = %1322
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1328

1328:                                             ; preds = %1322, %1327
  %1329 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_stack_regs, i8 noundef zeroext 0)
  store ptr %1329, ptr %1324, align 8, !tbaa !108
  %1330 = getelementptr inbounds %struct.opt_pass, ptr %1329, i64 0, i32 5
  %1331 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_split_before_regstack, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1332 = icmp eq ptr %1331, null
  br i1 %1332, label %1333, label %1334, !prof !140

1333:                                             ; preds = %1328
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1334

1334:                                             ; preds = %1328, %1333
  %1335 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_split_before_regstack, i8 noundef zeroext 0)
  store ptr %1335, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_stack_regs, i64 0, i32 0, i32 4), align 8, !tbaa !108
  %1336 = getelementptr inbounds %struct.opt_pass, ptr %1335, i64 0, i32 5
  %1337 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_stack_regs_run, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1338 = icmp eq ptr %1337, null
  br i1 %1338, label %1339, label %1340, !prof !140

1339:                                             ; preds = %1334
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1340

1340:                                             ; preds = %1334, %1339
  %1341 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_stack_regs_run, i8 noundef zeroext 0)
  store ptr %1341, ptr %1336, align 8, !tbaa !108
  %1342 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_compute_alignments, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1343 = icmp eq ptr %1342, null
  br i1 %1343, label %1344, label %1345, !prof !140

1344:                                             ; preds = %1340
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1345

1345:                                             ; preds = %1340, %1344
  %1346 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_compute_alignments, i8 noundef zeroext 0)
  store ptr %1346, ptr %1330, align 8, !tbaa !108
  %1347 = getelementptr inbounds %struct.opt_pass, ptr %1346, i64 0, i32 5
  %1348 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_duplicate_computed_gotos, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1349 = icmp eq ptr %1348, null
  br i1 %1349, label %1350, label %1351, !prof !140

1350:                                             ; preds = %1345
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1351

1351:                                             ; preds = %1345, %1350
  %1352 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_duplicate_computed_gotos, i8 noundef zeroext 0)
  store ptr %1352, ptr %1347, align 8, !tbaa !108
  %1353 = getelementptr inbounds %struct.opt_pass, ptr %1352, i64 0, i32 5
  %1354 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_variable_tracking, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1355 = icmp eq ptr %1354, null
  br i1 %1355, label %1356, label %1357, !prof !140

1356:                                             ; preds = %1351
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1357

1357:                                             ; preds = %1351, %1356
  %1358 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_variable_tracking, i8 noundef zeroext 0)
  store ptr %1358, ptr %1353, align 8, !tbaa !108
  %1359 = getelementptr inbounds %struct.opt_pass, ptr %1358, i64 0, i32 5
  %1360 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_free_cfg, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1361 = icmp eq ptr %1360, null
  br i1 %1361, label %1362, label %1363, !prof !140

1362:                                             ; preds = %1357
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1363

1363:                                             ; preds = %1357, %1362
  %1364 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_free_cfg, i8 noundef zeroext 0)
  store ptr %1364, ptr %1359, align 8, !tbaa !108
  %1365 = getelementptr inbounds %struct.opt_pass, ptr %1364, i64 0, i32 5
  %1366 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_machine_reorg, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1367 = icmp eq ptr %1366, null
  br i1 %1367, label %1368, label %1369, !prof !140

1368:                                             ; preds = %1363
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1369

1369:                                             ; preds = %1363, %1368
  %1370 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_machine_reorg, i8 noundef zeroext 0)
  store ptr %1370, ptr %1365, align 8, !tbaa !108
  %1371 = getelementptr inbounds %struct.opt_pass, ptr %1370, i64 0, i32 5
  %1372 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_cleanup_barriers, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1373 = icmp eq ptr %1372, null
  br i1 %1373, label %1374, label %1375, !prof !140

1374:                                             ; preds = %1369
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1375

1375:                                             ; preds = %1369, %1374
  %1376 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_cleanup_barriers, i8 noundef zeroext 0)
  store ptr %1376, ptr %1371, align 8, !tbaa !108
  %1377 = getelementptr inbounds %struct.opt_pass, ptr %1376, i64 0, i32 5
  %1378 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_delay_slots, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1379 = icmp eq ptr %1378, null
  br i1 %1379, label %1380, label %1381, !prof !140

1380:                                             ; preds = %1375
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1381

1381:                                             ; preds = %1375, %1380
  %1382 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_delay_slots, i8 noundef zeroext 0)
  store ptr %1382, ptr %1377, align 8, !tbaa !108
  %1383 = getelementptr inbounds %struct.opt_pass, ptr %1382, i64 0, i32 5
  %1384 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_split_for_shorten_branches, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1385 = icmp eq ptr %1384, null
  br i1 %1385, label %1386, label %1387, !prof !140

1386:                                             ; preds = %1381
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1387

1387:                                             ; preds = %1381, %1386
  %1388 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_split_for_shorten_branches, i8 noundef zeroext 0)
  store ptr %1388, ptr %1383, align 8, !tbaa !108
  %1389 = getelementptr inbounds %struct.opt_pass, ptr %1388, i64 0, i32 5
  %1390 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_convert_to_eh_region_ranges, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1391 = icmp eq ptr %1390, null
  br i1 %1391, label %1392, label %1393, !prof !140

1392:                                             ; preds = %1387
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1393

1393:                                             ; preds = %1387, %1392
  %1394 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_convert_to_eh_region_ranges, i8 noundef zeroext 0)
  store ptr %1394, ptr %1389, align 8, !tbaa !108
  %1395 = getelementptr inbounds %struct.opt_pass, ptr %1394, i64 0, i32 5
  %1396 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_shorten_branches, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1397 = icmp eq ptr %1396, null
  br i1 %1397, label %1398, label %1399, !prof !140

1398:                                             ; preds = %1393
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1399

1399:                                             ; preds = %1393, %1398
  %1400 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_shorten_branches, i8 noundef zeroext 0)
  store ptr %1400, ptr %1395, align 8, !tbaa !108
  %1401 = getelementptr inbounds %struct.opt_pass, ptr %1400, i64 0, i32 5
  %1402 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_set_nothrow_function_flags, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1403 = icmp eq ptr %1402, null
  br i1 %1403, label %1404, label %1405, !prof !140

1404:                                             ; preds = %1399
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1405

1405:                                             ; preds = %1399, %1404
  %1406 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_set_nothrow_function_flags, i8 noundef zeroext 0)
  store ptr %1406, ptr %1401, align 8, !tbaa !108
  %1407 = getelementptr inbounds %struct.opt_pass, ptr %1406, i64 0, i32 5
  %1408 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_final, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1409 = icmp eq ptr %1408, null
  br i1 %1409, label %1410, label %1411, !prof !140

1410:                                             ; preds = %1405
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1411

1411:                                             ; preds = %1405, %1410
  %1412 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_final, i8 noundef zeroext 0)
  store ptr %1412, ptr %1407, align 8, !tbaa !108
  %1413 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_df_finish, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1414 = icmp eq ptr %1413, null
  br i1 %1414, label %1415, label %1416, !prof !140

1415:                                             ; preds = %1411
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1416

1416:                                             ; preds = %1411, %1415
  %1417 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_df_finish, i8 noundef zeroext 0)
  store ptr %1417, ptr %1222, align 8, !tbaa !108
  %1418 = load ptr, ptr getelementptr inbounds (%struct.rtl_opt_pass, ptr @pass_clean_state, i64 0, i32 0, i32 1), align 8, !tbaa !127
  %1419 = icmp eq ptr %1418, null
  br i1 %1419, label %1420, label %1421, !prof !140

1420:                                             ; preds = %1416
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 515, ptr noundef nonnull @.str.17) #21
  br label %1421

1421:                                             ; preds = %1416, %1420
  %1422 = getelementptr inbounds %struct.opt_pass, ptr %922, i64 0, i32 5
  %1423 = tail call fastcc ptr @make_pass_instance(ptr noundef nonnull @pass_clean_state, i8 noundef zeroext 0)
  store ptr %1423, ptr %1422, align 8, !tbaa !108
  %1424 = getelementptr inbounds %struct.opt_pass, ptr %1423, i64 0, i32 5
  store ptr null, ptr %1424, align 8, !tbaa !108
  %1425 = load ptr, ptr @all_lowering_passes, align 8, !tbaa !108
  %1426 = getelementptr inbounds %struct.opt_pass, ptr %1425, i64 0, i32 8
  %1427 = load i32, ptr %1426, align 8, !tbaa !186
  %1428 = or i32 %1427, 1
  store i32 %1428, ptr %1426, align 8, !tbaa !186
  %1429 = tail call fastcc i32 @register_dump_files_1(ptr noundef %1425, i32 noundef 1)
  %1430 = load ptr, ptr @all_small_ipa_passes, align 8, !tbaa !108
  %1431 = getelementptr inbounds %struct.opt_pass, ptr %1430, i64 0, i32 8
  %1432 = load i32, ptr %1431, align 8, !tbaa !186
  %1433 = or i32 %1432, 15
  store i32 %1433, ptr %1431, align 8, !tbaa !186
  %1434 = tail call fastcc i32 @register_dump_files_1(ptr noundef %1430, i32 noundef 15)
  %1435 = load ptr, ptr @all_regular_ipa_passes, align 8, !tbaa !108
  %1436 = getelementptr inbounds %struct.opt_pass, ptr %1435, i64 0, i32 8
  %1437 = load i32, ptr %1436, align 8, !tbaa !186
  %1438 = or i32 %1437, 15
  store i32 %1438, ptr %1436, align 8, !tbaa !186
  %1439 = tail call fastcc i32 @register_dump_files_1(ptr noundef %1435, i32 noundef 15)
  %1440 = load ptr, ptr @all_lto_gen_passes, align 8, !tbaa !108
  %1441 = getelementptr inbounds %struct.opt_pass, ptr %1440, i64 0, i32 8
  %1442 = load i32, ptr %1441, align 8, !tbaa !186
  %1443 = or i32 %1442, 15
  store i32 %1443, ptr %1441, align 8, !tbaa !186
  %1444 = tail call fastcc i32 @register_dump_files_1(ptr noundef %1440, i32 noundef 15)
  %1445 = load ptr, ptr @all_passes, align 8, !tbaa !108
  %1446 = getelementptr inbounds %struct.opt_pass, ptr %1445, i64 0, i32 8
  %1447 = load i32, ptr %1446, align 8, !tbaa !186
  %1448 = or i32 %1447, 15
  store i32 %1448, ptr %1446, align 8, !tbaa !186
  %1449 = tail call fastcc i32 @register_dump_files_1(ptr noundef %1445, i32 noundef 15)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @do_per_function_toporder(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #10 !prof !151 {
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !108
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !134

5:                                                ; preds = %2
  tail call void %0(ptr noundef %1) #21
  br label %51

6:                                                ; preds = %2
  %7 = load ptr, ptr @order, align 8, !tbaa !108
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !134

9:                                                ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1133, ptr noundef nonnull @.str.17) #21
  br label %10

10:                                               ; preds = %6, %9
  %11 = load i32, ptr @cgraph_n_nodes, align 4, !tbaa !123
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 3
  %14 = tail call ptr @ggc_alloc_stat(i64 noundef %13) #21
  store ptr %14, ptr @order, align 8, !tbaa !108
  %15 = tail call i32 @cgraph_postorder(ptr noundef %14) #21
  store i32 %15, ptr @nnodes, align 4, !tbaa !123
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %20, !prof !187

17:                                               ; preds = %10
  %18 = load ptr, ptr @order, align 8, !tbaa !108
  %19 = zext nneg i32 %15 to i64
  br label %24

20:                                               ; preds = %24, %10
  %21 = icmp sgt i32 %15, 0
  br i1 %21, label %22, label %51, !prof !187

22:                                               ; preds = %20
  %23 = zext nneg i32 %15 to i64
  br label %33

24:                                               ; preds = %17, %24
  %25 = phi i64 [ %19, %17 ], [ %26, %24 ]
  %26 = add nsw i64 %25, -1
  %27 = getelementptr inbounds ptr, ptr %18, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !108
  %29 = getelementptr inbounds %struct.cgraph_node, ptr %28, i64 0, i32 27
  %30 = load i16, ptr %29, align 4
  %31 = or i16 %30, 64
  store i16 %31, ptr %29, align 4
  %32 = icmp sgt i64 %25, 1
  br i1 %32, label %24, label %20, !prof !188, !llvm.loop !189

33:                                               ; preds = %22, %49
  %34 = phi i64 [ %23, %22 ], [ %35, %49 ]
  %35 = add nsw i64 %34, -1
  %36 = load ptr, ptr @order, align 8, !tbaa !108
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  %38 = load ptr, ptr %37, align 8, !tbaa !108
  store ptr null, ptr %37, align 8, !tbaa !108
  %39 = getelementptr inbounds %struct.cgraph_node, ptr %38, i64 0, i32 27
  %40 = load i16, ptr %39, align 4
  %41 = and i16 %40, -65
  store i16 %41, ptr %39, align 4
  %42 = and i16 %40, 32
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %49, label %44, !prof !190

44:                                               ; preds = %33
  %45 = load ptr, ptr %38, align 8, !tbaa !191
  %46 = getelementptr inbounds %struct.tree_function_decl, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !119
  tail call void @push_cfun(ptr noundef %47) #21
  %48 = load ptr, ptr %38, align 8, !tbaa !191
  store ptr %48, ptr @current_function_decl, align 8, !tbaa !108
  tail call void %0(ptr noundef %1) #21, !prof !199
  tail call void @free_dominance_info(i32 noundef 1) #21
  tail call void @free_dominance_info(i32 noundef 2) #21
  store ptr null, ptr @current_function_decl, align 8, !tbaa !108
  tail call void @pop_cfun() #21
  tail call void @ggc_collect() #21
  br label %49

49:                                               ; preds = %44, %33
  %50 = icmp sgt i64 %34, 1
  br i1 %50, label %33, label %51, !prof !188, !llvm.loop !200

51:                                               ; preds = %49, %20, %5
  %52 = load ptr, ptr @order, align 8, !tbaa !108
  tail call void @ggc_free(ptr noundef %52) #21
  store ptr null, ptr @order, align 8, !tbaa !108
  store i32 0, ptr @nnodes, align 4, !tbaa !123
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

declare i32 @cgraph_postorder(ptr noundef) local_unnamed_addr #3

declare void @push_cfun(ptr noundef) local_unnamed_addr #3

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

declare void @pop_cfun() local_unnamed_addr #3

declare void @ggc_collect() local_unnamed_addr #3

declare void @ggc_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @pass_init_dump_file(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !201 {
  %2 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 8, !tbaa !129
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %34, label %5, !prof !202

5:                                                ; preds = %1
  %6 = tail call i32 @dump_initialized_p(i32 noundef %3) #21
  %7 = icmp eq i32 %6, 0
  %8 = load i32, ptr %2, align 8, !tbaa !129
  %9 = tail call ptr @get_dump_file_name(i32 noundef %8) #21
  store ptr %9, ptr @dump_file_name, align 8, !tbaa !108
  %10 = load i32, ptr %2, align 8, !tbaa !129
  %11 = tail call ptr @dump_begin(i32 noundef %10, ptr noundef nonnull @dump_flags) #21
  store ptr %11, ptr @dump_file, align 8, !tbaa !108
  %12 = icmp ne ptr %11, null
  %13 = load ptr, ptr @current_function_decl, align 8
  %14 = icmp ne ptr %13, null
  %15 = select i1 %12, i1 %14, i1 false, !prof !203
  br i1 %15, label %16, label %34, !prof !203

16:                                               ; preds = %5
  %17 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !204
  %18 = tail call ptr %17(ptr noundef nonnull %13, i32 noundef 2) #21
  %19 = load ptr, ptr @current_function_decl, align 8, !tbaa !108
  %20 = tail call ptr @decl_assembler_name(ptr noundef %19) #21
  %21 = getelementptr inbounds %struct.tree_identifier, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !119
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !108
  %24 = load ptr, ptr @cfun, align 8, !tbaa !108
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 20
  %26 = load i32, ptr %25, align 8
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 3
  %29 = icmp eq i32 %28, 2
  %30 = icmp eq i32 %28, 0
  %31 = select i1 %30, ptr @.str.20, ptr @.str.21
  %32 = select i1 %29, ptr @.str.19, ptr %31
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.18, ptr noundef %18, ptr noundef %22, ptr noundef nonnull %32)
  br label %34

34:                                               ; preds = %1, %5, %16
  %35 = phi i1 [ %7, %16 ], [ %7, %5 ], [ false, %1 ]
  %36 = zext i1 %35 to i8
  ret i8 %36
}

declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @pass_fini_dump_file(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !212 {
  %2 = load ptr, ptr @dump_file_name, align 8, !tbaa !108
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !213

4:                                                ; preds = %1
  tail call void @free(ptr noundef %2)
  store ptr null, ptr @dump_file_name, align 8, !tbaa !108
  br label %5

5:                                                ; preds = %4, %1
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !108
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8, !prof !213

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !129
  tail call void @dump_end(i32 noundef %10, ptr noundef nonnull %6) #21
  store ptr null, ptr @dump_file, align 8, !tbaa !108
  br label %11

11:                                               ; preds = %8, %5
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @execute_ipa_summary_passes(ptr noundef readonly %0) local_unnamed_addr #11 !prof !214 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %40, label %3, !prof !215

3:                                                ; preds = %1, %36
  %4 = phi ptr [ %38, %36 ], [ %0, %1 ]
  %5 = load i32, ptr %4, align 8, !tbaa !216
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %36, !prof !218

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.opt_pass, ptr %4, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !219
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11, !prof !220

11:                                               ; preds = %7
  %12 = tail call zeroext i8 %9() #21, !prof !221
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %36, label %14, !prof !222

14:                                               ; preds = %11, %7
  %15 = getelementptr inbounds %struct.ipa_opt_pass_d, ptr %4, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !223
  %17 = icmp eq ptr %16, null
  br i1 %17, label %36, label %18, !prof !224

18:                                               ; preds = %14
  %19 = tail call zeroext i8 @pass_init_dump_file(ptr noundef nonnull %4), !range !225
  %20 = getelementptr inbounds %struct.opt_pass, ptr %4, i64 0, i32 7
  %21 = load i32, ptr %20, align 4, !tbaa !184
  %22 = icmp ne i32 %21, 0
  %23 = load i8, ptr @timevar_enable, align 1
  %24 = icmp ne i8 %23, 0
  %25 = select i1 %22, i1 %24, i1 false, !prof !226
  br i1 %25, label %26, label %27, !prof !227

26:                                               ; preds = %18
  tail call void @timevar_push_1(i32 noundef %21) #21
  br label %27

27:                                               ; preds = %26, %18
  %28 = load ptr, ptr %15, align 8, !tbaa !223
  tail call void %28() #21, !prof !228
  %29 = load i32, ptr %20, align 4, !tbaa !184
  %30 = icmp ne i32 %29, 0
  %31 = load i8, ptr @timevar_enable, align 1
  %32 = icmp ne i8 %31, 0
  %33 = select i1 %30, i1 %32, i1 false, !prof !226
  br i1 %33, label %34, label %35, !prof !227

34:                                               ; preds = %27
  tail call void @timevar_pop_1(i32 noundef %29) #21
  br label %35

35:                                               ; preds = %34, %27
  tail call void @pass_fini_dump_file(ptr noundef nonnull %4)
  br label %36

36:                                               ; preds = %11, %35, %14, %3
  %37 = getelementptr inbounds %struct.opt_pass, ptr %4, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !229
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %3, !prof !230, !llvm.loop !231

40:                                               ; preds = %36, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @execute_all_ipa_transforms() local_unnamed_addr #10 !prof !159 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !108
  %2 = icmp eq ptr %1, null
  br i1 %2, label %71, label %3, !prof !161

3:                                                ; preds = %0
  %4 = load ptr, ptr @current_function_decl, align 8, !tbaa !108
  %5 = tail call ptr @cgraph_node(ptr noundef %4) #21
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !232
  %8 = icmp eq ptr %7, null
  br i1 %8, label %71, label %9, !prof !161

9:                                                ; preds = %3, %66
  %10 = phi i64 [ %67, %66 ], [ 0, %3 ]
  %11 = load ptr, ptr %6, align 8, !tbaa !108
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13, !prof !233

13:                                               ; preds = %9
  %14 = load i32, ptr %11, align 8, !tbaa !234
  br label %15

15:                                               ; preds = %9, %13
  %16 = phi i32 [ %14, %13 ], [ 0, %9 ]
  %17 = zext i32 %16 to i64
  %18 = icmp ult i64 %10, %17
  br i1 %18, label %19, label %68, !prof !236

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.VEC_ipa_opt_pass_base, ptr %11, i64 0, i32 2, i64 %10
  %21 = load ptr, ptr %20, align 8, !tbaa !108
  store ptr %21, ptr @current_pass, align 8, !tbaa !108
  %22 = getelementptr inbounds %struct.ipa_opt_pass_d, ptr %21, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !237
  %24 = icmp eq ptr %23, null
  br i1 %24, label %66, label %25, !prof !238

25:                                               ; preds = %19
  %26 = load ptr, ptr @cfun, align 8, !tbaa !108
  %27 = icmp eq ptr %26, null
  br i1 %27, label %34, label %28, !prof !161

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 17
  %30 = load i32, ptr %29, align 8, !tbaa !239
  %31 = and i32 %30, 263
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i8
  br label %34

34:                                               ; preds = %28, %25
  %35 = phi i8 [ 0, %25 ], [ %33, %28 ]
  store i8 %35, ptr @in_gimple_form, align 1, !tbaa !119
  %36 = tail call zeroext i8 @pass_init_dump_file(ptr noundef %21), !range !225
  %37 = getelementptr inbounds %struct.ipa_opt_pass_d, ptr %21, i64 0, i32 6
  %38 = load i32, ptr %37, align 8, !tbaa !241
  tail call fastcc void @execute_todo(i32 noundef %38)
  %39 = getelementptr inbounds %struct.opt_pass, ptr %21, i64 0, i32 7
  %40 = load i32, ptr %39, align 4, !tbaa !184
  %41 = icmp ne i32 %40, 0
  %42 = load i8, ptr @timevar_enable, align 1
  %43 = icmp ne i8 %42, 0
  %44 = select i1 %41, i1 %43, i1 false, !prof !162
  br i1 %44, label %45, label %46, !prof !161

45:                                               ; preds = %34
  tail call void @timevar_push_1(i32 noundef %40) #21
  br label %46

46:                                               ; preds = %45, %34
  %47 = load ptr, ptr %22, align 8, !tbaa !237
  %48 = tail call i32 %47(ptr noundef %5) #21, !prof !242
  %49 = load i32, ptr %39, align 4, !tbaa !184
  %50 = icmp ne i32 %49, 0
  %51 = load i8, ptr @timevar_enable, align 1
  %52 = icmp ne i8 %51, 0
  %53 = select i1 %50, i1 %52, i1 false, !prof !162
  br i1 %53, label %54, label %55, !prof !161

54:                                               ; preds = %46
  tail call void @timevar_pop_1(i32 noundef %49) #21
  br label %55

55:                                               ; preds = %54, %46
  tail call fastcc void @execute_todo(i32 noundef %48)
  %56 = load ptr, ptr @dump_file_name, align 8, !tbaa !108
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58, !prof !213

58:                                               ; preds = %55
  tail call void @free(ptr noundef %56)
  store ptr null, ptr @dump_file_name, align 8, !tbaa !108
  br label %59

59:                                               ; preds = %58, %55
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !108
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62, !prof !213

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.opt_pass, ptr %21, i64 0, i32 6
  %64 = load i32, ptr %63, align 8, !tbaa !129
  tail call void @dump_end(i32 noundef %64, ptr noundef nonnull %60) #21
  store ptr null, ptr @dump_file, align 8, !tbaa !108
  br label %65

65:                                               ; preds = %59, %62
  store ptr null, ptr @current_pass, align 8, !tbaa !108
  br label %66

66:                                               ; preds = %19, %65
  %67 = add nuw nsw i64 %10, 1
  br label %9, !llvm.loop !243

68:                                               ; preds = %15
  br i1 %12, label %70, label %69, !prof !161

69:                                               ; preds = %68
  tail call void @free(ptr noundef %11)
  br label %70

70:                                               ; preds = %68, %69
  store ptr null, ptr %6, align 8, !tbaa !232
  br label %71

71:                                               ; preds = %3, %70, %0
  ret void
}

declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @execute_one_pass(ptr noundef %0) local_unnamed_addr #10 !prof !244 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #21
  %3 = load i32, ptr %0, align 8, !tbaa !168
  %4 = and i32 %3, -2
  %5 = icmp eq i32 %4, 2
  %6 = load ptr, ptr @cfun, align 8, !tbaa !108
  %7 = icmp ne ptr %6, null
  %8 = load ptr, ptr @current_function_decl, align 8
  %9 = icmp ne ptr %8, null
  br i1 %5, label %10, label %12, !prof !245

10:                                               ; preds = %1
  %11 = select i1 %7, i1 true, i1 %9, !prof !246
  br i1 %11, label %14, label %16, !prof !246

12:                                               ; preds = %1
  %13 = select i1 %7, i1 %9, i1 false, !prof !247
  br i1 %13, label %16, label %14, !prof !247

14:                                               ; preds = %12, %10
  %15 = phi i32 [ 1521, %10 ], [ 1523, %12 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef %15, ptr noundef nonnull @.str.17) #21
  br label %16

16:                                               ; preds = %14, %12, %10
  store ptr %0, ptr @current_pass, align 8, !tbaa !108
  %17 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !219
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20, !prof !248

20:                                               ; preds = %16
  %21 = tail call zeroext i8 %18() #21, !prof !249
  br label %22

22:                                               ; preds = %16, %20
  %23 = phi i8 [ %21, %20 ], [ 1, %16 ]
  store i8 %23, ptr %2, align 1, !tbaa !119
  %24 = call i32 @invoke_plugin_callbacks(i32 noundef 18, ptr noundef nonnull %2) #21
  %25 = load i8, ptr %2, align 1, !tbaa !119
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %266, label %27, !prof !250

27:                                               ; preds = %22
  %28 = call i32 @invoke_plugin_callbacks(i32 noundef 19, ptr noundef nonnull %0) #21
  %29 = load i32, ptr @quiet_flag, align 4, !tbaa !123
  %30 = icmp ne i32 %29, 0
  %31 = load ptr, ptr @cfun, align 8
  %32 = icmp ne ptr %31, null
  %33 = select i1 %30, i1 true, i1 %32, !prof !251
  br i1 %33, label %41, label %34, !prof !251

34:                                               ; preds = %27
  %35 = load ptr, ptr @stderr, align 8, !tbaa !108
  %36 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !127
  %38 = icmp eq ptr %37, null
  %39 = select i1 %38, ptr @.str.21, ptr %37
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.22, ptr noundef nonnull %39) #22
  br label %41

41:                                               ; preds = %34, %27
  %42 = load ptr, ptr @cfun, align 8, !tbaa !108
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44, !prof !252

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.function, ptr %42, i64 0, i32 17
  %46 = load i32, ptr %45, align 8, !tbaa !239
  %47 = and i32 %46, 263
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i8
  br label %50

50:                                               ; preds = %44, %41
  %51 = phi i8 [ 0, %41 ], [ %49, %44 ]
  store i8 %51, ptr @in_gimple_form, align 1, !tbaa !119
  %52 = call zeroext i8 @pass_init_dump_file(ptr noundef nonnull %0), !range !225
  %53 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 11
  %54 = load i32, ptr %53, align 4, !tbaa !180
  call fastcc void @execute_todo(i32 noundef %54)
  %55 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 7
  %56 = load i32, ptr %55, align 4, !tbaa !184
  %57 = icmp ne i32 %56, 0
  %58 = load i8, ptr @timevar_enable, align 1
  %59 = icmp ne i8 %58, 0
  %60 = select i1 %57, i1 %59, i1 false, !prof !253
  br i1 %60, label %61, label %62, !prof !254

61:                                               ; preds = %50
  call void @timevar_push_1(i32 noundef %56) #21
  br label %62

62:                                               ; preds = %61, %50
  %63 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !255
  %65 = icmp eq ptr %64, null
  br i1 %65, label %109, label %66, !prof !256

66:                                               ; preds = %62
  %67 = call i32 %64() #21, !prof !257
  %68 = load ptr, ptr @current_function_decl, align 8, !tbaa !108
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %73, !prof !258

70:                                               ; preds = %66
  %71 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !108
  %72 = icmp eq ptr %71, null
  br i1 %72, label %109, label %76, !prof !259

73:                                               ; preds = %66
  %74 = load ptr, ptr @cfun, align 8, !tbaa !108
  %75 = getelementptr inbounds %struct.function, ptr %74, i64 0, i32 18
  store i32 0, ptr %75, align 4, !tbaa !260
  br label %109

76:                                               ; preds = %70, %105
  %77 = phi ptr [ %107, %105 ], [ %71, %70 ]
  %78 = getelementptr inbounds %struct.cgraph_node, ptr %77, i64 0, i32 27
  %79 = load i16, ptr %78, align 4
  %80 = and i16 %79, 32
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %105, label %82, !prof !261

82:                                               ; preds = %76
  %83 = load ptr, ptr %77, align 8, !tbaa !191
  %84 = call zeroext i8 @gimple_has_body_p(ptr noundef %83) #21
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %105, label %86, !prof !262

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.cgraph_node, ptr %77, i64 0, i32 12
  %88 = load ptr, ptr %87, align 8, !tbaa !263
  %89 = icmp eq ptr %88, null
  br i1 %89, label %94, label %90, !prof !264

90:                                               ; preds = %86
  %91 = load ptr, ptr %77, align 8, !tbaa !191
  %92 = load ptr, ptr %88, align 8, !tbaa !191
  %93 = icmp eq ptr %91, %92
  br i1 %93, label %105, label %94, !prof !265

94:                                               ; preds = %90, %86
  %95 = load ptr, ptr %77, align 8, !tbaa !191
  %96 = getelementptr inbounds %struct.tree_function_decl, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !119
  call void @push_cfun(ptr noundef %97) #21
  %98 = load ptr, ptr %77, align 8, !tbaa !191
  store ptr %98, ptr @current_function_decl, align 8, !tbaa !108
  %99 = load ptr, ptr @cfun, align 8, !tbaa !108
  %100 = getelementptr inbounds %struct.function, ptr %99, i64 0, i32 18
  store i32 0, ptr %100, align 4, !tbaa !260
  %101 = load i32, ptr @flag_wpa, align 4, !tbaa !123
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104, !prof !266

103:                                              ; preds = %94
  call void @free_dominance_info(i32 noundef 1) #21
  call void @free_dominance_info(i32 noundef 2) #21
  br label %104

104:                                              ; preds = %103, %94
  store ptr null, ptr @current_function_decl, align 8, !tbaa !108
  call void @pop_cfun() #21
  call void @ggc_collect() #21
  br label %105

105:                                              ; preds = %104, %90, %82, %76
  %106 = getelementptr inbounds %struct.cgraph_node, ptr %77, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !108
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %76, !prof !267, !llvm.loop !268

109:                                              ; preds = %105, %70, %73, %62
  %110 = phi i32 [ 0, %62 ], [ %67, %73 ], [ %67, %70 ], [ %67, %105 ]
  %111 = load i32, ptr %55, align 4, !tbaa !184
  %112 = icmp ne i32 %111, 0
  %113 = load i8, ptr @timevar_enable, align 1
  %114 = icmp ne i8 %113, 0
  %115 = select i1 %112, i1 %114, i1 false, !prof !253
  br i1 %115, label %116, label %117, !prof !254

116:                                              ; preds = %109
  call void @timevar_pop_1(i32 noundef %111) #21
  br label %117

117:                                              ; preds = %116, %109
  %118 = load ptr, ptr @current_function_decl, align 8, !tbaa !108
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %126, !prof !252

120:                                              ; preds = %117
  %121 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !108
  %122 = icmp eq ptr %121, null
  br i1 %122, label %176, label %123, !prof !215

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 9
  %125 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 10
  br label %137

126:                                              ; preds = %117
  %127 = load ptr, ptr @cfun, align 8, !tbaa !108
  %128 = getelementptr inbounds %struct.function, ptr %127, i64 0, i32 17
  %129 = load i32, ptr %128, align 8, !tbaa !239
  %130 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 9
  %131 = load i32, ptr %130, align 4, !tbaa !269
  %132 = or i32 %131, %129
  %133 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 10
  %134 = load i32, ptr %133, align 8, !tbaa !270
  %135 = xor i32 %134, -1
  %136 = and i32 %132, %135
  store i32 %136, ptr %128, align 8, !tbaa !239
  br label %176

137:                                              ; preds = %123, %172
  %138 = phi ptr [ %121, %123 ], [ %174, %172 ]
  %139 = getelementptr inbounds %struct.cgraph_node, ptr %138, i64 0, i32 27
  %140 = load i16, ptr %139, align 4
  %141 = and i16 %140, 32
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %172, label %143, !prof !271

143:                                              ; preds = %137
  %144 = load ptr, ptr %138, align 8, !tbaa !191
  %145 = call zeroext i8 @gimple_has_body_p(ptr noundef %144) #21
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %172, label %147, !prof !272

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.cgraph_node, ptr %138, i64 0, i32 12
  %149 = load ptr, ptr %148, align 8, !tbaa !263
  %150 = icmp eq ptr %149, null
  br i1 %150, label %155, label %151, !prof !273

151:                                              ; preds = %147
  %152 = load ptr, ptr %138, align 8, !tbaa !191
  %153 = load ptr, ptr %149, align 8, !tbaa !191
  %154 = icmp eq ptr %152, %153
  br i1 %154, label %172, label %155, !prof !265

155:                                              ; preds = %151, %147
  %156 = load ptr, ptr %138, align 8, !tbaa !191
  %157 = getelementptr inbounds %struct.tree_function_decl, ptr %156, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !119
  call void @push_cfun(ptr noundef %158) #21
  %159 = load ptr, ptr %138, align 8, !tbaa !191
  store ptr %159, ptr @current_function_decl, align 8, !tbaa !108
  %160 = load ptr, ptr @cfun, align 8, !tbaa !108
  %161 = getelementptr inbounds %struct.function, ptr %160, i64 0, i32 17
  %162 = load i32, ptr %161, align 8, !tbaa !239
  %163 = load i32, ptr %124, align 4, !tbaa !269
  %164 = or i32 %163, %162
  %165 = load i32, ptr %125, align 8, !tbaa !270
  %166 = xor i32 %165, -1
  %167 = and i32 %164, %166
  store i32 %167, ptr %161, align 8, !tbaa !239
  %168 = load i32, ptr @flag_wpa, align 4, !tbaa !123
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %171, !prof !274

170:                                              ; preds = %155
  call void @free_dominance_info(i32 noundef 1) #21
  call void @free_dominance_info(i32 noundef 2) #21
  br label %171

171:                                              ; preds = %170, %155
  store ptr null, ptr @current_function_decl, align 8, !tbaa !108
  call void @pop_cfun() #21
  call void @ggc_collect() #21
  br label %172

172:                                              ; preds = %171, %151, %143, %137
  %173 = getelementptr inbounds %struct.cgraph_node, ptr %138, i64 0, i32 3
  %174 = load ptr, ptr %173, align 8, !tbaa !108
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %137, !prof !275, !llvm.loop !268

176:                                              ; preds = %172, %120, %126
  %177 = icmp ne i8 %52, 0
  %178 = load ptr, ptr @dump_file, align 8
  %179 = icmp ne ptr %178, null
  %180 = select i1 %177, i1 %179, i1 false, !prof !276
  %181 = load i32, ptr @graph_dump_format, align 4
  %182 = icmp ne i32 %181, 0
  %183 = select i1 %180, i1 %182, i1 false, !prof !254
  %184 = load ptr, ptr @cfun, align 8
  %185 = icmp ne ptr %184, null
  %186 = select i1 %183, i1 %185, i1 false, !prof !254
  br i1 %186, label %187, label %202, !prof !254

187:                                              ; preds = %176
  %188 = getelementptr inbounds %struct.function, ptr %184, i64 0, i32 17
  %189 = load i32, ptr %188, align 8, !tbaa !239
  %190 = and i32 %189, 136
  %191 = icmp eq i32 %190, 136
  br i1 %191, label %192, label %202

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 6
  %194 = load i32, ptr %193, align 8, !tbaa !129
  %195 = call ptr @get_dump_file_info(i32 noundef %194) #21
  %196 = getelementptr inbounds %struct.dump_file_info, ptr %195, i64 0, i32 3
  %197 = load i32, ptr %196, align 8, !tbaa !156
  %198 = or i32 %197, 8192
  store i32 %198, ptr %196, align 8, !tbaa !156
  %199 = load i32, ptr @dump_flags, align 4, !tbaa !123
  %200 = or i32 %199, 8192
  store i32 %200, ptr @dump_flags, align 4, !tbaa !123
  %201 = load ptr, ptr @dump_file_name, align 8, !tbaa !108
  call void @clean_graph_dump_file(ptr noundef %201) #21
  br label %202

202:                                              ; preds = %192, %187, %176
  %203 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 12
  %204 = load i32, ptr %203, align 8, !tbaa !277
  %205 = or i32 %204, %110
  call fastcc void @execute_todo(i32 noundef %205)
  %206 = load i32, ptr %0, align 8, !tbaa !168
  %207 = icmp eq i32 %206, 3
  br i1 %207, label %208, label %238, !prof !278

208:                                              ; preds = %202
  %209 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !108
  %210 = icmp eq ptr %209, null
  br i1 %210, label %238, label %211, !prof !279

211:                                              ; preds = %208, %234
  %212 = phi ptr [ %236, %234 ], [ %209, %208 ]
  %213 = getelementptr inbounds %struct.cgraph_node, ptr %212, i64 0, i32 27
  %214 = load i16, ptr %213, align 4
  %215 = and i16 %214, 32
  %216 = icmp eq i16 %215, 0
  br i1 %216, label %234, label %217, !prof !280

217:                                              ; preds = %211
  %218 = getelementptr inbounds %struct.cgraph_node, ptr %212, i64 0, i32 17
  %219 = load ptr, ptr %218, align 8, !tbaa !108
  %220 = icmp eq ptr %219, null
  br i1 %220, label %226, label %221, !prof !281

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.VEC_ipa_opt_pass_base, ptr %219, i64 0, i32 1
  %223 = load i32, ptr %222, align 4, !tbaa !282
  %224 = load i32, ptr %219, align 8, !tbaa !234
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %228, !prof !283

226:                                              ; preds = %217, %221
  %227 = call ptr @vec_heap_p_reserve(ptr noundef %219, i32 noundef 1) #21
  store ptr %227, ptr %218, align 8, !tbaa !108
  br label %228

228:                                              ; preds = %221, %226
  %229 = load ptr, ptr %218, align 8, !tbaa !108
  %230 = load i32, ptr %229, align 8, !tbaa !234
  %231 = add i32 %230, 1
  store i32 %231, ptr %229, align 8, !tbaa !234
  %232 = zext i32 %230 to i64
  %233 = getelementptr inbounds %struct.VEC_ipa_opt_pass_base, ptr %229, i64 0, i32 2, i64 %232
  store ptr %0, ptr %233, align 8, !tbaa !108
  br label %234

234:                                              ; preds = %211, %228
  %235 = getelementptr inbounds %struct.cgraph_node, ptr %212, i64 0, i32 3
  %236 = load ptr, ptr %235, align 8, !tbaa !108
  %237 = icmp eq ptr %236, null
  br i1 %237, label %238, label %211, !prof !284, !llvm.loop !285

238:                                              ; preds = %234, %208, %202
  %239 = load ptr, ptr @current_function_decl, align 8, !tbaa !108
  %240 = icmp eq ptr %239, null
  br i1 %240, label %241, label %243, !prof !252

241:                                              ; preds = %238
  %242 = call zeroext i8 @cgraph_process_new_functions() #21
  br label %243

243:                                              ; preds = %241, %238
  %244 = load ptr, ptr @dump_file_name, align 8, !tbaa !108
  %245 = icmp eq ptr %244, null
  br i1 %245, label %247, label %246, !prof !213

246:                                              ; preds = %243
  call void @free(ptr noundef %244)
  store ptr null, ptr @dump_file_name, align 8, !tbaa !108
  br label %247

247:                                              ; preds = %246, %243
  %248 = load ptr, ptr @dump_file, align 8, !tbaa !108
  %249 = icmp eq ptr %248, null
  br i1 %249, label %253, label %250, !prof !213

250:                                              ; preds = %247
  %251 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 6
  %252 = load i32, ptr %251, align 8, !tbaa !129
  call void @dump_end(i32 noundef %252, ptr noundef nonnull %248) #21
  store ptr null, ptr @dump_file, align 8, !tbaa !108
  br label %253

253:                                              ; preds = %247, %250
  %254 = load i32, ptr %0, align 8, !tbaa !168
  %255 = and i32 %254, -2
  %256 = icmp eq i32 %255, 2
  br i1 %256, label %266, label %257, !prof !252

257:                                              ; preds = %253
  %258 = load ptr, ptr @cfun, align 8, !tbaa !108
  %259 = getelementptr inbounds %struct.function, ptr %258, i64 0, i32 17
  %260 = load i32, ptr %259, align 8, !tbaa !239
  %261 = and i32 %260, 263
  %262 = icmp ne i32 %261, 0
  %263 = icmp eq i32 %254, 1
  %264 = and i1 %263, %262
  br i1 %264, label %265, label %266, !prof !286

265:                                              ; preds = %257
  call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1609, ptr noundef nonnull @.str.17) #21
  br label %266

266:                                              ; preds = %253, %257, %265, %22
  %267 = phi i8 [ 0, %22 ], [ 1, %253 ], [ 1, %265 ], [ 1, %257 ]
  store ptr null, ptr @current_pass, align 8, !tbaa !108
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #21
  ret i8 %267
}

declare i32 @invoke_plugin_callbacks(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @execute_todo(i32 noundef %0) unnamed_addr #10 !prof !287 !PGOFuncName !288 {
  %2 = lshr i32 %0, 19
  %3 = trunc i32 %2 to i8
  %4 = and i8 %3, 1
  store i8 %4, ptr @first_pass_instance, align 1, !tbaa !119
  %5 = zext i32 %0 to i64
  %6 = inttoptr i64 %5 to ptr
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !108
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12, !prof !289

9:                                                ; preds = %1
  %10 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !108
  %11 = icmp eq ptr %10, null
  br i1 %11, label %44, label %13, !prof !215

12:                                               ; preds = %1
  tail call fastcc void @execute_function_todo(ptr noundef %6) #21, !callees !290
  br label %44

13:                                               ; preds = %9, %40
  %14 = phi ptr [ %42, %40 ], [ %10, %9 ]
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 27
  %16 = load i16, ptr %15, align 4
  %17 = and i16 %16, 32
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %40, label %19, !prof !291

19:                                               ; preds = %13
  %20 = load ptr, ptr %14, align 8, !tbaa !191
  %21 = tail call zeroext i8 @gimple_has_body_p(ptr noundef %20) #21
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %40, label %23, !prof !292

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !263
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27, !prof !293

27:                                               ; preds = %23
  %28 = load ptr, ptr %14, align 8, !tbaa !191
  %29 = load ptr, ptr %25, align 8, !tbaa !191
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %40, label %31, !prof !294

31:                                               ; preds = %27, %23
  %32 = load ptr, ptr %14, align 8, !tbaa !191
  %33 = getelementptr inbounds %struct.tree_function_decl, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !119
  tail call void @push_cfun(ptr noundef %34) #21
  %35 = load ptr, ptr %14, align 8, !tbaa !191
  store ptr %35, ptr @current_function_decl, align 8, !tbaa !108
  tail call fastcc void @execute_function_todo(ptr noundef %6) #21, !callees !290
  %36 = load i32, ptr @flag_wpa, align 4, !tbaa !123
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39, !prof !295

38:                                               ; preds = %31
  tail call void @free_dominance_info(i32 noundef 1) #21
  tail call void @free_dominance_info(i32 noundef 2) #21
  br label %39

39:                                               ; preds = %38, %31
  store ptr null, ptr @current_function_decl, align 8, !tbaa !108
  tail call void @pop_cfun() #21
  tail call void @ggc_collect() #21
  br label %40

40:                                               ; preds = %39, %27, %19, %13
  %41 = getelementptr inbounds %struct.cgraph_node, ptr %14, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !108
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %13, !prof !296, !llvm.loop !268

44:                                               ; preds = %40, %9, %12
  %45 = and i32 %0, 256
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %47, !prof !297

47:                                               ; preds = %44
  %48 = load ptr, ptr @cfun, align 8, !tbaa !108
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50, !prof !298

50:                                               ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1295, ptr noundef nonnull @.str.17) #21
  br label %51

51:                                               ; preds = %47, %50
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !108
  %53 = tail call zeroext i8 @cgraph_remove_unreachable_nodes(i8 noundef zeroext 1, ptr noundef %52) #21
  br label %54

54:                                               ; preds = %51, %44
  %55 = and i32 %0, 128
  %56 = icmp eq i32 %55, 0
  %57 = load ptr, ptr @dump_file, align 8
  %58 = icmp eq ptr %57, null
  %59 = select i1 %56, i1 true, i1 %58, !prof !299
  %60 = load ptr, ptr @current_function_decl, align 8
  %61 = icmp ne ptr %60, null
  %62 = select i1 %59, i1 true, i1 %61, !prof !300
  br i1 %62, label %71, label %63, !prof !300

63:                                               ; preds = %54
  %64 = load ptr, ptr @cfun, align 8, !tbaa !108
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1301, ptr noundef nonnull @.str.17) #21
  br label %67

67:                                               ; preds = %63, %66
  %68 = load ptr, ptr @dump_file, align 8, !tbaa !108
  tail call void @dump_cgraph(ptr noundef %68) #21
  %69 = load ptr, ptr @dump_file, align 8, !tbaa !108
  %70 = tail call i32 @fflush(ptr noundef %69)
  br label %71

71:                                               ; preds = %67, %54
  %72 = and i32 %0, 2
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74, !prof !301

74:                                               ; preds = %71
  tail call void @ggc_collect() #21
  br label %75

75:                                               ; preds = %74, %71
  %76 = and i32 %0, 131072
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %82, label %78, !prof !302

78:                                               ; preds = %75
  %79 = lshr i32 %0, 18
  %80 = trunc i32 %79 to i8
  %81 = and i8 %80, 1
  tail call void @df_finish_pass(i8 noundef zeroext %81) #21
  br label %82

82:                                               ; preds = %78, %75
  ret void
}

declare void @clean_graph_dump_file(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @cgraph_process_new_functions() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @execute_pass_list(ptr noundef %0) #10 !prof !303 {
  br label %2

2:                                                ; preds = %15, %1
  %3 = phi ptr [ %0, %1 ], [ %17, %15 ]
  %4 = load i32, ptr %3, align 8, !tbaa !168
  %5 = icmp ult i32 %4, 2
  br i1 %5, label %7, label %6, !prof !247

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.17) #21
  br label %7

7:                                                ; preds = %2, %6
  %8 = tail call zeroext i8 @execute_one_pass(ptr noundef nonnull %3), !range !225
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10, !prof !304

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.opt_pass, ptr %3, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !183
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !305

14:                                               ; preds = %10
  tail call void @execute_pass_list(ptr noundef nonnull %12)
  br label %15

15:                                               ; preds = %7, %14, %10
  %16 = getelementptr inbounds %struct.opt_pass, ptr %3, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !182
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %2, !prof !306, !llvm.loop !307

19:                                               ; preds = %15
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @ipa_write_summaries() local_unnamed_addr #11 !prof !151 {
  %1 = load i32, ptr @flag_generate_lto, align 4, !tbaa !123
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %41, label %3, !prof !134

3:                                                ; preds = %0
  %4 = load ptr, ptr @global_dc, align 8, !tbaa !108
  %5 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 4
  %6 = load i32, ptr %5, align 8, !tbaa !123
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %41

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 5
  %10 = load i32, ptr %9, align 4, !tbaa !123
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %8
  tail call void @lto_new_extern_inline_states() #21
  %13 = tail call ptr @cgraph_node_set_new() #21
  %14 = load i32, ptr @cgraph_n_nodes, align 4, !tbaa !123
  %15 = sext i32 %14 to i64
  %16 = tail call ptr @xcalloc(i64 noundef %15, i64 noundef 8) #21
  %17 = tail call i32 @cgraph_postorder(ptr noundef %16) #21
  %18 = load i32, ptr @cgraph_n_nodes, align 4, !tbaa !123
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1706, ptr noundef nonnull @.str.17) #21
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
  %29 = load ptr, ptr %28, align 8, !tbaa !108
  %30 = getelementptr inbounds %struct.cgraph_node, ptr %29, i64 0, i32 27
  %31 = load i16, ptr %30, align 4
  %32 = and i16 %31, 32
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %25
  %35 = load ptr, ptr %29, align 8, !tbaa !191
  %36 = getelementptr inbounds %struct.tree_function_decl, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !119
  tail call void @push_cfun(ptr noundef %37) #21
  tail call void @renumber_gimple_stmt_uids() #21
  tail call void @pop_cfun() #21
  br label %38

38:                                               ; preds = %34, %25
  tail call void @cgraph_node_set_add(ptr noundef %13, ptr noundef %29) #21
  %39 = icmp sgt i64 %26, 1
  br i1 %39, label %25, label %40, !llvm.loop !308

40:                                               ; preds = %38, %21
  tail call fastcc void @ipa_write_summaries_1(ptr noundef %13)
  tail call void @lto_delete_extern_inline_states() #21
  tail call void @free(ptr noundef %16)
  tail call void @ggc_free(ptr noundef %13) #21
  br label %41

41:                                               ; preds = %0, %3, %8, %40
  ret void
}

declare void @lto_new_extern_inline_states() local_unnamed_addr #3

declare ptr @cgraph_node_set_new() local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @renumber_gimple_stmt_uids() local_unnamed_addr #3

declare void @cgraph_node_set_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @ipa_write_summaries_1(ptr noundef %0) unnamed_addr #11 !prof !107 {
  %2 = tail call ptr @lto_new_out_decl_state() #21
  tail call void @lto_push_out_decl_state(ptr noundef %2) #21
  %3 = load i32, ptr @flag_wpa, align 4, !tbaa !123
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load ptr, ptr @all_regular_ipa_passes, align 8, !tbaa !108
  tail call fastcc void @ipa_write_summaries_2(ptr noundef %6, ptr noundef %0)
  br label %7

7:                                                ; preds = %5, %1
  %8 = load ptr, ptr @all_lto_gen_passes, align 8, !tbaa !108
  tail call fastcc void @ipa_write_summaries_2(ptr noundef %8, ptr noundef %0)
  %9 = tail call ptr @lto_get_out_decl_state() #21
  %10 = icmp eq ptr %9, %2
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1680, ptr noundef nonnull @.str.17) #21
  br label %12

12:                                               ; preds = %7, %11
  %13 = tail call ptr @lto_pop_out_decl_state() #21
  tail call void @lto_delete_out_decl_state(ptr noundef %2) #21
  ret void
}

declare void @lto_delete_extern_inline_states() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @ipa_write_summaries_of_cgraph_node_set(ptr noundef %0) local_unnamed_addr #11 !prof !107 {
  %2 = load i32, ptr @flag_generate_lto, align 4, !tbaa !123
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @global_dc, align 8, !tbaa !108
  %6 = getelementptr inbounds %struct.diagnostic_context, ptr %5, i64 0, i32 1, i64 4
  %7 = load i32, ptr %6, align 8, !tbaa !123
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.diagnostic_context, ptr %5, i64 0, i32 1, i64 5
  %11 = load i32, ptr %10, align 4, !tbaa !123
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call fastcc void @ipa_write_summaries_1(ptr noundef %0)
  br label %14

14:                                               ; preds = %13, %9, %4, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @ipa_read_summaries() local_unnamed_addr #11 !prof !107 {
  %1 = load i32, ptr @flag_ltrans, align 4, !tbaa !123
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = load ptr, ptr @all_regular_ipa_passes, align 8, !tbaa !108
  tail call fastcc void @ipa_read_summaries_1(ptr noundef %4)
  br label %5

5:                                                ; preds = %3, %0
  %6 = load ptr, ptr @all_lto_gen_passes, align 8, !tbaa !108
  tail call fastcc void @ipa_read_summaries_1(ptr noundef %6)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @ipa_read_summaries_1(ptr noundef readonly %0) unnamed_addr #11 !prof !107 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %59, label %3

3:                                                ; preds = %1, %55
  %4 = phi ptr [ %57, %55 ], [ %0, %1 ]
  %5 = load ptr, ptr @current_function_decl, align 8, !tbaa !108
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1755, ptr noundef nonnull @.str.17) #21
  br label %8

8:                                                ; preds = %3, %7
  %9 = load ptr, ptr @cfun, align 8, !tbaa !108
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1756, ptr noundef nonnull @.str.17) #21
  br label %12

12:                                               ; preds = %8, %11
  %13 = load i32, ptr %4, align 8, !tbaa !168
  %14 = and i32 %13, -2
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1757, ptr noundef nonnull @.str.17) #21
  br label %17

17:                                               ; preds = %12, %16
  %18 = getelementptr inbounds %struct.opt_pass, ptr %4, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !219
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = tail call zeroext i8 %19() #21
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %55, label %24

24:                                               ; preds = %21, %17
  %25 = load i32, ptr %4, align 8, !tbaa !168
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %47

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.ipa_opt_pass_d, ptr %4, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !309
  %30 = icmp eq ptr %29, null
  br i1 %30, label %47, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.opt_pass, ptr %4, i64 0, i32 7
  %33 = load i32, ptr %32, align 4, !tbaa !184
  %34 = icmp ne i32 %33, 0
  %35 = load i8, ptr @timevar_enable, align 1
  %36 = icmp ne i8 %35, 0
  %37 = select i1 %34, i1 %36, i1 false
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  tail call void @timevar_push_1(i32 noundef %33) #21
  br label %39

39:                                               ; preds = %38, %31
  %40 = load ptr, ptr %28, align 8, !tbaa !309
  tail call void %40() #21
  %41 = load i32, ptr %32, align 4, !tbaa !184
  %42 = icmp ne i32 %41, 0
  %43 = load i8, ptr @timevar_enable, align 1
  %44 = icmp ne i8 %43, 0
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  tail call void @timevar_pop_1(i32 noundef %41) #21
  br label %47

47:                                               ; preds = %39, %46, %27, %24
  %48 = getelementptr inbounds %struct.opt_pass, ptr %4, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !183
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i32, ptr %49, align 8, !tbaa !168
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  tail call fastcc void @ipa_read_summaries_1(ptr noundef nonnull %49)
  br label %55

55:                                               ; preds = %21, %47, %51, %54
  %56 = getelementptr inbounds %struct.opt_pass, ptr %4, i64 0, i32 5
  %57 = load ptr, ptr %56, align 8, !tbaa !182
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %3, !llvm.loop !310

59:                                               ; preds = %55, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @execute_ipa_pass_list(ptr noundef %0) local_unnamed_addr #11 !prof !214 {
  br label %2

2:                                                ; preds = %35, %1
  %3 = phi ptr [ %0, %1 ], [ %38, %35 ]
  %4 = load ptr, ptr @current_function_decl, align 8, !tbaa !108
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6, !prof !311

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1799, ptr noundef nonnull @.str.17) #21
  br label %7

7:                                                ; preds = %2, %6
  %8 = load ptr, ptr @cfun, align 8, !tbaa !108
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !311

10:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1800, ptr noundef nonnull @.str.17) #21
  br label %11

11:                                               ; preds = %7, %10
  %12 = load i32, ptr %3, align 8, !tbaa !168
  %13 = and i32 %12, -2
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %16, label %15, !prof !311

15:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1801, ptr noundef nonnull @.str.17) #21
  br label %16

16:                                               ; preds = %11, %15
  %17 = tail call zeroext i8 @execute_one_pass(ptr noundef nonnull %3), !range !225
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %31, label %19, !prof !312

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.opt_pass, ptr %3, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !183
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23, !prof !313

23:                                               ; preds = %19
  %24 = load i32, ptr %21, align 8, !tbaa !168
  switch i32 %24, label %30 [
    i32 0, label %25
    i32 2, label %29
    i32 3, label %29
  ], !prof !314

25:                                               ; preds = %23
  %26 = tail call i32 @invoke_plugin_callbacks(i32 noundef 20, ptr noundef null) #21
  %27 = load ptr, ptr %20, align 8, !tbaa !183
  tail call void @do_per_function_toporder(ptr noundef nonnull @execute_pass_list, ptr noundef %27)
  %28 = tail call i32 @invoke_plugin_callbacks(i32 noundef 21, ptr noundef null) #21
  br label %31

29:                                               ; preds = %23, %23
  tail call void @execute_ipa_pass_list(ptr noundef nonnull %21)
  br label %31

30:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1815, ptr noundef nonnull @.str.17) #21
  br label %31

31:                                               ; preds = %25, %30, %29, %19, %16
  %32 = load ptr, ptr @current_function_decl, align 8, !tbaa !108
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34, !prof !311

34:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1817, ptr noundef nonnull @.str.17) #21
  br label %35

35:                                               ; preds = %31, %34
  %36 = tail call zeroext i8 @cgraph_process_new_functions() #21
  %37 = getelementptr inbounds %struct.opt_pass, ptr %3, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !182
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %2, !prof !315, !llvm.loop !316

40:                                               ; preds = %35
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @execute_all_ipa_stmt_fixups(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !107 {
  %3 = load ptr, ptr @all_regular_ipa_passes, align 8, !tbaa !108
  tail call fastcc void @execute_ipa_stmt_fixups(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @execute_ipa_stmt_fixups(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #11 !prof !107 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %47, label %5

5:                                                ; preds = %3, %43
  %6 = phi ptr [ %45, %43 ], [ %0, %3 ]
  %7 = load i32, ptr %6, align 8, !tbaa !168
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %43

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.opt_pass, ptr %6, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !219
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = tail call zeroext i8 %11() #21
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %43, label %16

16:                                               ; preds = %13, %9
  %17 = getelementptr inbounds %struct.ipa_opt_pass_d, ptr %6, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !317
  %19 = icmp eq ptr %18, null
  br i1 %19, label %38, label %20

20:                                               ; preds = %16
  %21 = tail call zeroext i8 @pass_init_dump_file(ptr noundef nonnull %6), !range !225
  %22 = getelementptr inbounds %struct.opt_pass, ptr %6, i64 0, i32 7
  %23 = load i32, ptr %22, align 4, !tbaa !184
  %24 = icmp ne i32 %23, 0
  %25 = load i8, ptr @timevar_enable, align 1
  %26 = icmp ne i8 %25, 0
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  tail call void @timevar_push_1(i32 noundef %23) #21
  br label %29

29:                                               ; preds = %28, %20
  %30 = load ptr, ptr %17, align 8, !tbaa !317
  tail call void %30(ptr noundef %1, ptr noundef %2) #21
  %31 = load i32, ptr %22, align 4, !tbaa !184
  %32 = icmp ne i32 %31, 0
  %33 = load i8, ptr @timevar_enable, align 1
  %34 = icmp ne i8 %33, 0
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  tail call void @timevar_pop_1(i32 noundef %31) #21
  br label %37

37:                                               ; preds = %36, %29
  tail call void @pass_fini_dump_file(ptr noundef nonnull %6)
  br label %38

38:                                               ; preds = %37, %16
  %39 = getelementptr inbounds %struct.opt_pass, ptr %6, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !183
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call fastcc void @execute_ipa_stmt_fixups(ptr noundef nonnull %40, ptr noundef %1, ptr noundef %2)
  br label %43

43:                                               ; preds = %13, %38, %42, %5
  %44 = getelementptr inbounds %struct.opt_pass, ptr %6, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !182
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %5, !llvm.loop !318

47:                                               ; preds = %43, %3
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dump_properties(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !107 {
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

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @debug_properties(i32 noundef %0) local_unnamed_addr #9 !prof !107 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !108
  tail call void @dump_properties(ptr noundef %2, i32 noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @function_called_by_processed_nodes_p() local_unnamed_addr #10 !prof !319 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !108
  %2 = tail call ptr @cgraph_node(ptr noundef %1) #21
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !108
  %5 = icmp ne ptr %4, null
  br i1 %5, label %6, label %35, !prof !320

6:                                                ; preds = %0
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !108
  br label %8

8:                                                ; preds = %6, %31
  %9 = phi i1 [ %5, %6 ], [ %34, %31 ]
  %10 = phi ptr [ %4, %6 ], [ %33, %31 ]
  %11 = getelementptr inbounds %struct.cgraph_edge, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !321
  %13 = load ptr, ptr %12, align 8, !tbaa !191
  %14 = icmp eq ptr %13, %7
  br i1 %14, label %31, label %15, !prof !323

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.cgraph_node, ptr %12, i64 0, i32 27
  %17 = load i16, ptr %16, align 4
  %18 = and i16 %17, 32
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %31, label %20, !prof !323

20:                                               ; preds = %15
  %21 = load i64, ptr %13, align 8
  %22 = and i64 %21, 4194304
  %23 = icmp eq i64 %22, 0
  %24 = and i16 %17, 64
  %25 = icmp eq i16 %24, 0
  %26 = and i1 %25, %23
  br i1 %26, label %27, label %31, !prof !323

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.cgraph_node, ptr %12, i64 0, i32 19, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !324
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %27, %20, %15, %8
  %32 = getelementptr inbounds %struct.cgraph_edge, ptr %10, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !108
  %34 = icmp ne ptr %33, null
  br i1 %34, label %8, label %35, !prof !325, !llvm.loop !326

35:                                               ; preds = %31, %27, %0
  %36 = phi ptr [ %4, %0 ], [ %33, %31 ], [ %10, %27 ]
  %37 = phi i1 [ %5, %0 ], [ %34, %31 ], [ %9, %27 ]
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !108
  %39 = icmp ne ptr %38, null
  %40 = and i1 %37, %39
  br i1 %40, label %41, label %46, !prof !327

41:                                               ; preds = %35
  %42 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 27, i64 1, ptr nonnull %38)
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !108
  %44 = getelementptr inbounds %struct.cgraph_edge, ptr %36, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !321
  tail call void @dump_cgraph_node(ptr noundef %43, ptr noundef %45) #21
  br label %46

46:                                               ; preds = %41, %35
  %47 = zext i1 %37 to i8
  ret i8 %47
}

declare void @dump_cgraph_node(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @gt_ggc_ma_order(ptr nocapture readnone %0) #11 !prof !107 {
  %2 = load ptr, ptr @order, align 8, !tbaa !108
  %3 = icmp eq ptr %2, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @nnodes, align 4, !tbaa !123
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %4, %14
  %8 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %9 = load ptr, ptr @order, align 8, !tbaa !108
  %10 = getelementptr inbounds ptr, ptr %9, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !108
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @gt_ggc_mx_cgraph_node(ptr noundef nonnull %11) #21
  br label %14

14:                                               ; preds = %7, %13
  %15 = add i64 %8, 1
  %16 = load i32, ptr @nnodes, align 4, !tbaa !123
  %17 = sext i32 %16 to i64
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %7, !llvm.loop !328

19:                                               ; preds = %14, %4
  %20 = load ptr, ptr @order, align 8, !tbaa !108
  %21 = icmp ult ptr %20, inttoptr (i64 2 to ptr)
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = tail call i32 @ggc_set_mark(ptr noundef nonnull %20) #21
  br label %24

24:                                               ; preds = %19, %22, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @gt_pch_na_order(ptr nocapture readnone %0) #11 !prof !107 {
  %2 = load ptr, ptr @order, align 8, !tbaa !108
  %3 = icmp eq ptr %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @nnodes, align 4, !tbaa !123
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %4, %14
  %8 = phi i64 [ %15, %14 ], [ 0, %4 ]
  %9 = load ptr, ptr @order, align 8, !tbaa !108
  %10 = getelementptr inbounds ptr, ptr %9, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !108
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @gt_pch_nx_cgraph_node(ptr noundef nonnull %11) #21
  br label %14

14:                                               ; preds = %7, %13
  %15 = add i64 %8, 1
  %16 = load i32, ptr @nnodes, align 4, !tbaa !123
  %17 = sext i32 %16 to i64
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %7, !llvm.loop !329

19:                                               ; preds = %14, %4
  %20 = load ptr, ptr @order, align 8, !tbaa !108
  %21 = tail call i32 @gt_pch_note_object(ptr noundef %20, ptr noundef nonnull @order, ptr noundef nonnull @gt_pch_pa_order, i32 noundef 217) #21
  br label %22

22:                                               ; preds = %19, %1
  ret void
}

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define internal fastcc ptr @make_pass_instance(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #10 !prof !330 !PGOFuncName !331 {
  %3 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !129
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %34, label %6, !prof !332

6:                                                ; preds = %2
  %7 = load i32, ptr %0, align 8, !tbaa !168
  switch i32 %7, label %12 [
    i32 0, label %8
    i32 1, label %8
    i32 2, label %8
    i32 3, label %10
  ], !prof !333

8:                                                ; preds = %6, %6, %6
  %9 = tail call ptr @xmalloc(i64 noundef 80) #21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %9, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false)
  br label %13

10:                                               ; preds = %6
  %11 = tail call ptr @xmalloc(i64 noundef 144) #21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %11, ptr noundef nonnull align 8 dereferenceable(144) %0, i64 144, i1 false)
  br label %13

12:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 481, ptr noundef nonnull @.str.17) #21
  br label %13

13:                                               ; preds = %10, %12, %8
  %14 = phi ptr [ %9, %8 ], [ %11, %10 ], [ undef, %12 ]
  %15 = getelementptr inbounds %struct.opt_pass, ptr %14, i64 0, i32 5
  store ptr null, ptr %15, align 8, !tbaa !182
  %16 = getelementptr inbounds %struct.opt_pass, ptr %14, i64 0, i32 11
  %17 = load i32, ptr %16, align 4, !tbaa !180
  %18 = and i32 %17, -524289
  store i32 %18, ptr %16, align 4, !tbaa !180
  %19 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !127
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22, !prof !334

22:                                               ; preds = %13
  %23 = load i8, ptr %20, align 1, !tbaa !119
  %24 = icmp ne i8 %23, 42
  %25 = icmp ne i8 %1, 0
  %26 = or i1 %25, %24
  br i1 %26, label %29, label %39, !prof !335

27:                                               ; preds = %13
  %28 = icmp eq i8 %1, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %27, %22
  %30 = load i32, ptr %3, align 8, !tbaa !129
  %31 = add nsw i32 %30, -1
  store i32 %31, ptr %3, align 8, !tbaa !129
  %32 = sub nsw i32 1, %30
  %33 = getelementptr inbounds %struct.opt_pass, ptr %14, i64 0, i32 6
  store i32 %32, ptr %33, align 8, !tbaa !129
  br label %39

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.opt_pass, ptr %0, i64 0, i32 11
  %36 = load i32, ptr %35, align 4, !tbaa !180
  %37 = or i32 %36, 524288
  store i32 %37, ptr %35, align 4, !tbaa !180
  store i32 -1, ptr %3, align 8, !tbaa !129
  %38 = tail call i32 @invoke_plugin_callbacks(i32 noundef 22, ptr noundef %0) #21
  br label %39

39:                                               ; preds = %27, %29, %22, %34
  %40 = phi ptr [ %0, %34 ], [ %14, %22 ], [ %14, %29 ], [ %14, %27 ]
  ret ptr %40
}

declare void @error(ptr noundef, ...) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #18

; Function Attrs: nounwind uwtable
define internal fastcc i32 @register_dump_files_1(ptr noundef %0, i32 noundef %1) unnamed_addr #10 !prof !336 !PGOFuncName !337 {
  br label %3

3:                                                ; preds = %26, %2
  %4 = phi ptr [ %0, %2 ], [ %34, %26 ]
  %5 = phi i32 [ %1, %2 ], [ %32, %26 ]
  %6 = getelementptr inbounds %struct.opt_pass, ptr %4, i64 0, i32 9
  %7 = load i32, ptr %6, align 4, !tbaa !269
  %8 = or i32 %7, %5
  %9 = getelementptr inbounds %struct.opt_pass, ptr %4, i64 0, i32 10
  %10 = load i32, ptr %9, align 8, !tbaa !270
  %11 = xor i32 %10, -1
  %12 = and i32 %8, %11
  %13 = getelementptr inbounds %struct.opt_pass, ptr %4, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !127
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16, !prof !338

16:                                               ; preds = %3
  %17 = load i8, ptr %14, align 1, !tbaa !119
  %18 = icmp eq i8 %17, 42
  br i1 %18, label %20, label %19, !prof !339

19:                                               ; preds = %16
  tail call void @register_one_dump_file(ptr noundef %4)
  br label %20

20:                                               ; preds = %19, %16, %3
  %21 = getelementptr inbounds %struct.opt_pass, ptr %4, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !183
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24, !prof !340

24:                                               ; preds = %20
  %25 = tail call fastcc i32 @register_dump_files_1(ptr noundef nonnull %22, i32 noundef %12)
  br label %26

26:                                               ; preds = %20, %24
  %27 = phi i32 [ %25, %24 ], [ %12, %20 ]
  %28 = getelementptr inbounds %struct.opt_pass, ptr %4, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !219
  %30 = icmp eq ptr %29, null
  %31 = select i1 %30, i32 -1, i32 %5, !prof !341
  %32 = and i32 %31, %27
  %33 = getelementptr inbounds %struct.opt_pass, ptr %4, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !182
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %3, !prof !342, !llvm.loop !343

36:                                               ; preds = %26
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal fastcc void @execute_function_todo(ptr noundef %0) unnamed_addr #10 !prof !344 !PGOFuncName !345 {
  %2 = ptrtoint ptr %0 to i64
  %3 = trunc i64 %2 to i32
  %4 = load ptr, ptr @cfun, align 8, !tbaa !108
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 17
  %6 = load i32, ptr %5, align 8, !tbaa !239
  %7 = lshr i32 %6, 3
  %8 = and i32 %7, 4
  %9 = or i32 %8, %3
  %10 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 18
  %11 = load i32, ptr %10, align 4, !tbaa !260
  %12 = xor i32 %11, -1
  %13 = and i32 %9, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %131, label %15, !prof !346

15:                                               ; preds = %1
  tail call void @statistics_fini_pass() #21
  %16 = and i32 %13, 32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %38, label %18, !prof !347

18:                                               ; preds = %15
  %19 = tail call zeroext i8 @cleanup_tree_cfg() #21
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %28, label %21, !prof !348

21:                                               ; preds = %18
  %22 = load ptr, ptr @cfun, align 8, !tbaa !108
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 17
  %24 = load i32, ptr %23, align 8, !tbaa !239
  %25 = shl i32 %24, 10
  %26 = and i32 %25, 32768
  %27 = or i32 %26, %13
  br label %28

28:                                               ; preds = %21, %18
  %29 = phi i32 [ %13, %18 ], [ %27, %21 ]
  %30 = and i32 %29, 30720
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38, !prof !349

32:                                               ; preds = %28
  %33 = load ptr, ptr @cfun, align 8, !tbaa !108
  %34 = tail call zeroext i8 @need_ssa_update_p(ptr noundef %33) #21
  %35 = icmp eq i8 %34, 0
  %36 = or disjoint i32 %29, 2048
  %37 = select i1 %35, i32 %29, i32 %36, !prof !350
  br label %38

38:                                               ; preds = %32, %28, %15
  %39 = phi i32 [ %13, %15 ], [ %29, %28 ], [ %37, %32 ]
  %40 = and i32 %39, 30720
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42, !prof !351

42:                                               ; preds = %38
  tail call void @update_ssa(i32 noundef %40) #21
  %43 = load ptr, ptr @cfun, align 8, !tbaa !108
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 18
  %45 = load i32, ptr %44, align 4, !tbaa !260
  %46 = and i32 %45, -5
  store i32 %46, ptr %44, align 4, !tbaa !260
  br label %47

47:                                               ; preds = %42, %38
  %48 = and i32 %39, 2097152
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %51, label %50, !prof !352

50:                                               ; preds = %47
  tail call void @execute_update_addresses_taken(i8 noundef zeroext 1) #21
  br label %51

51:                                               ; preds = %50, %47
  %52 = and i32 %39, 1048576
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54, !prof !353

54:                                               ; preds = %51
  br i1 %49, label %55, label %56, !prof !354

55:                                               ; preds = %54
  tail call void @execute_update_addresses_taken(i8 noundef zeroext 1) #21
  br label %56

56:                                               ; preds = %55, %54
  %57 = tail call i32 @compute_may_aliases() #21
  br label %58

58:                                               ; preds = %56, %51
  %59 = and i32 %39, 32768
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61, !prof !355

61:                                               ; preds = %58
  tail call void @remove_unused_locals() #21
  br label %62

62:                                               ; preds = %61, %58
  %63 = and i32 %39, 1
  %64 = icmp ne i32 %63, 0
  %65 = load ptr, ptr @dump_file, align 8
  %66 = icmp ne ptr %65, null
  %67 = select i1 %64, i1 %66, i1 false, !prof !356
  %68 = load ptr, ptr @current_function_decl, align 8
  %69 = icmp ne ptr %68, null
  %70 = select i1 %67, i1 %69, i1 false, !prof !357
  br i1 %70, label %71, label %113, !prof !357

71:                                               ; preds = %62
  %72 = load ptr, ptr @cfun, align 8, !tbaa !108
  %73 = getelementptr inbounds %struct.function, ptr %72, i64 0, i32 17
  %74 = load i32, ptr %73, align 8, !tbaa !239
  %75 = and i32 %74, 263
  %76 = icmp eq i32 %75, 0
  %77 = load i32, ptr @dump_flags, align 4, !tbaa !123
  br i1 %76, label %79, label %78

78:                                               ; preds = %71
  tail call void @dump_function_to_file(ptr noundef nonnull %68, ptr noundef nonnull %65, i32 noundef %77) #21
  br label %110

79:                                               ; preds = %71
  %80 = and i32 %77, 2
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %79
  %83 = tail call ptr @get_insns() #21
  %84 = load i32, ptr @dump_flags, align 4, !tbaa !123
  tail call void @print_rtl_slim_with_bb(ptr noundef nonnull %65, ptr noundef %83, i32 noundef %84) #21
  br label %94

85:                                               ; preds = %79
  %86 = and i32 %74, 8
  %87 = icmp eq i32 %86, 0
  %88 = and i32 %77, 32
  %89 = icmp eq i32 %88, 0
  %90 = or i1 %87, %89
  %91 = tail call ptr @get_insns() #21
  br i1 %90, label %93, label %92

92:                                               ; preds = %85
  tail call void @print_rtl_with_bb(ptr noundef nonnull %65, ptr noundef %91) #21
  br label %94

93:                                               ; preds = %85
  tail call void @print_rtl(ptr noundef nonnull %65, ptr noundef %91) #21
  br label %94

94:                                               ; preds = %92, %93, %82
  %95 = load ptr, ptr @cfun, align 8, !tbaa !108
  %96 = getelementptr inbounds %struct.function, ptr %95, i64 0, i32 17
  %97 = load i32, ptr %96, align 8, !tbaa !239
  %98 = and i32 %97, 8
  %99 = icmp ne i32 %98, 0
  %100 = load i32, ptr @graph_dump_format, align 4
  %101 = icmp ne i32 %100, 0
  %102 = select i1 %99, i1 %101, i1 false
  br i1 %102, label %103, label %110

103:                                              ; preds = %94
  %104 = load i32, ptr @dump_flags, align 4, !tbaa !123
  %105 = and i32 %104, 8192
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %103
  %108 = load ptr, ptr @dump_file_name, align 8, !tbaa !108
  %109 = tail call ptr @get_insns() #21
  tail call void @print_rtl_graph_with_bb(ptr noundef %108, ptr noundef %109) #21
  br label %110

110:                                              ; preds = %94, %103, %107, %78
  %111 = load ptr, ptr @dump_file, align 8, !tbaa !108
  %112 = tail call i32 @fflush(ptr noundef %111)
  br label %113

113:                                              ; preds = %110, %62
  %114 = and i32 %39, 512
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %127, label %116, !prof !358

116:                                              ; preds = %113
  %117 = load ptr, ptr @cfun, align 8, !tbaa !108
  %118 = getelementptr inbounds %struct.function, ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !359
  %120 = getelementptr inbounds %struct.control_flow_graph, ptr %119, i64 0, i32 7
  %121 = load i32, ptr %120, align 8, !tbaa !360
  switch i32 %121, label %126 [
    i32 1, label %122
    i32 2, label %124
  ], !prof !362

122:                                              ; preds = %116
  tail call void @loop_optimizer_init(i32 noundef 0) #21
  tail call void @add_noreturn_fake_exit_edges() #21
  %123 = tail call zeroext i8 @mark_irreducible_loops() #21
  tail call void @connect_infinite_loops_to_exit() #21
  tail call void @estimate_bb_frequencies() #21
  tail call void @remove_fake_exit_edges() #21
  tail call void @loop_optimizer_finalize() #21
  br label %127

124:                                              ; preds = %116
  %125 = tail call i32 @counts_to_freqs() #21
  br label %127

126:                                              ; preds = %116
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1255, ptr noundef nonnull @.str.17) #21
  br label %127

127:                                              ; preds = %122, %126, %124, %113
  %128 = and i32 %39, 28
  %129 = load ptr, ptr @cfun, align 8, !tbaa !108
  %130 = getelementptr inbounds %struct.function, ptr %129, i64 0, i32 18
  store i32 %128, ptr %130, align 4, !tbaa !260
  br label %131

131:                                              ; preds = %1, %127
  ret void
}

declare zeroext i8 @cgraph_remove_unreachable_nodes(i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare void @dump_cgraph(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #1

declare void @df_finish_pass(i8 noundef zeroext) local_unnamed_addr #3

declare void @statistics_fini_pass() local_unnamed_addr #3

declare zeroext i8 @cleanup_tree_cfg() local_unnamed_addr #3

declare zeroext i8 @need_ssa_update_p(ptr noundef) local_unnamed_addr #3

declare void @update_ssa(i32 noundef) local_unnamed_addr #3

declare void @execute_update_addresses_taken(i8 noundef zeroext) local_unnamed_addr #3

declare i32 @compute_may_aliases() local_unnamed_addr #3

declare void @remove_unused_locals() local_unnamed_addr #3

declare void @dump_function_to_file(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @print_rtl_slim_with_bb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

declare void @print_rtl_with_bb(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @print_rtl(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @print_rtl_graph_with_bb(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #3

declare void @add_noreturn_fake_exit_edges() local_unnamed_addr #3

declare zeroext i8 @mark_irreducible_loops() local_unnamed_addr #3

declare void @connect_infinite_loops_to_exit() local_unnamed_addr #3

declare void @estimate_bb_frequencies() local_unnamed_addr #3

declare void @remove_fake_exit_edges() local_unnamed_addr #3

declare void @loop_optimizer_finalize() local_unnamed_addr #3

declare i32 @counts_to_freqs() local_unnamed_addr #3

declare zeroext i8 @gimple_has_body_p(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @lto_new_out_decl_state() local_unnamed_addr #3

declare void @lto_push_out_decl_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @ipa_write_summaries_2(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #11 !prof !107 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %60, label %4

4:                                                ; preds = %2, %56
  %5 = phi ptr [ %58, %56 ], [ %0, %2 ]
  %6 = load ptr, ptr @current_function_decl, align 8, !tbaa !108
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1641, ptr noundef nonnull @.str.17) #21
  br label %9

9:                                                ; preds = %4, %8
  %10 = load ptr, ptr @cfun, align 8, !tbaa !108
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1642, ptr noundef nonnull @.str.17) #21
  br label %13

13:                                               ; preds = %9, %12
  %14 = load i32, ptr %5, align 8, !tbaa !168
  %15 = and i32 %14, -2
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1643, ptr noundef nonnull @.str.17) #21
  br label %18

18:                                               ; preds = %13, %17
  %19 = load i32, ptr %5, align 8, !tbaa !168
  %20 = icmp eq i32 %19, 3
  br i1 %20, label %21, label %48

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.ipa_opt_pass_d, ptr %5, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !363
  %24 = icmp eq ptr %23, null
  br i1 %24, label %48, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.opt_pass, ptr %5, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !219
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = tail call zeroext i8 %27() #21
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %29, %25
  %33 = getelementptr inbounds %struct.opt_pass, ptr %5, i64 0, i32 7
  %34 = load i32, ptr %33, align 4, !tbaa !184
  %35 = icmp ne i32 %34, 0
  %36 = load i8, ptr @timevar_enable, align 1
  %37 = icmp ne i8 %36, 0
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  tail call void @timevar_push_1(i32 noundef %34) #21
  br label %40

40:                                               ; preds = %39, %32
  %41 = load ptr, ptr %22, align 8, !tbaa !363
  tail call void %41(ptr noundef %1) #21
  %42 = load i32, ptr %33, align 4, !tbaa !184
  %43 = icmp ne i32 %42, 0
  %44 = load i8, ptr @timevar_enable, align 1
  %45 = icmp ne i8 %44, 0
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  tail call void @timevar_pop_1(i32 noundef %42) #21
  br label %48

48:                                               ; preds = %29, %40, %47, %21, %18
  %49 = getelementptr inbounds %struct.opt_pass, ptr %5, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !183
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i32, ptr %50, align 8, !tbaa !168
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  tail call fastcc void @ipa_write_summaries_2(ptr noundef nonnull %50, ptr noundef %1)
  br label %56

56:                                               ; preds = %55, %52, %48
  %57 = getelementptr inbounds %struct.opt_pass, ptr %5, i64 0, i32 5
  %58 = load ptr, ptr %57, align 8, !tbaa !182
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %4, !llvm.loop !364

60:                                               ; preds = %56, %2
  ret void
}

declare ptr @lto_get_out_decl_state() local_unnamed_addr #3

declare ptr @lto_pop_out_decl_state() local_unnamed_addr #3

declare void @lto_delete_out_decl_state(ptr noundef) local_unnamed_addr #3

declare void @gt_ggc_mx_cgraph_node(ptr noundef) local_unnamed_addr #3

declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #3

declare void @gt_pch_nx_cgraph_node(ptr noundef) local_unnamed_addr #3

declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @gt_pch_pa_order(ptr noundef readnone %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2, ptr noundef %3) #11 !prof !107 {
  %5 = load ptr, ptr @order, align 8, !tbaa !108
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr @nnodes, align 4, !tbaa !123
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %7, %16
  %11 = phi i64 [ %17, %16 ], [ 0, %7 ]
  %12 = load ptr, ptr @order, align 8, !tbaa !108
  %13 = icmp eq ptr %12, %0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %12, i64 %11
  tail call void %2(ptr noundef %15, ptr noundef %3) #21
  br label %16

16:                                               ; preds = %10, %14
  %17 = add i64 %11, 1
  %18 = load i32, ptr @nnodes, align 4, !tbaa !123
  %19 = sext i32 %18 to i64
  %20 = icmp eq i64 %17, %19
  br i1 %20, label %21, label %10, !llvm.loop !365

21:                                               ; preds = %16, %7
  %22 = icmp eq ptr %0, @order
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void %2(ptr noundef nonnull @order, ptr noundef %3) #21
  br label %24

24:                                               ; preds = %21, %23, %4
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #20

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nounwind }
attributes #22 = { cold }

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
!35 = !{ptr @rest_of_decl_compilation, ptr @lookup_attribute, i64 5846}
!36 = !{ptr @rest_of_decl_compilation, ptr @varpool_finalize_decl, i64 1}
!37 = !{ptr @rest_of_decl_compilation, ptr @varpool_node, i64 1}
!38 = !{ptr @finish_optimization_passes, ptr @dump_begin, i64 1}
!39 = !{ptr @register_one_dump_file, ptr @sprintf, i64 54}
!40 = !{ptr @register_one_dump_file, ptr @strchr, i64 212}
!41 = !{ptr @register_one_dump_file, ptr @concat, i64 636}
!42 = !{ptr @register_one_dump_file, ptr @dump_register, i64 212}
!43 = !{ptr @register_one_dump_file, ptr @xrealloc, i64 212}
!44 = !{ptr @init_optimization_passes, ptr @make_pass_instance, i64 239}
!45 = !{ptr @init_optimization_passes, ptr @register_dump_files_1, i64 5}
!46 = !{ptr @do_per_function_toporder, ptr @ggc_alloc_stat, i64 1}
!47 = !{ptr @do_per_function_toporder, ptr @cgraph_postorder, i64 1}
!48 = !{ptr @do_per_function_toporder, ptr @push_cfun, i64 40}
!49 = !{ptr @do_per_function_toporder, ptr @execute_pass_list, i64 40}
!50 = !{ptr @do_per_function_toporder, ptr @free_dominance_info, i64 80}
!51 = !{ptr @do_per_function_toporder, ptr @pop_cfun, i64 40}
!52 = !{ptr @do_per_function_toporder, ptr @ggc_collect, i64 40}
!53 = !{ptr @do_per_function_toporder, ptr @ggc_free, i64 1}
!54 = !{ptr @pass_init_dump_file, ptr @dump_initialized_p, i64 5877}
!55 = !{ptr @pass_init_dump_file, ptr @get_dump_file_name, i64 5877}
!56 = !{ptr @pass_init_dump_file, ptr @dump_begin, i64 5877}
!57 = !{ptr @execute_ipa_summary_passes, ptr @pass_init_dump_file, i64 4}
!58 = !{ptr @execute_ipa_summary_passes, ptr @pass_fini_dump_file, i64 4}
!59 = !{ptr @execute_all_ipa_transforms, ptr @cgraph_node, i64 38}
!60 = !{ptr @execute_all_ipa_transforms, ptr @pass_init_dump_file, i64 38}
!61 = !{ptr @execute_all_ipa_transforms, ptr @execute_todo, i64 76}
!62 = !{ptr @execute_all_ipa_transforms, ptr @free, i64 38}
!63 = !{ptr @execute_one_pass, ptr @invoke_plugin_callbacks, i64 14994}
!64 = !{ptr @execute_one_pass, ptr @pass_init_dump_file, i64 6690}
!65 = !{ptr @execute_one_pass, ptr @execute_todo, i64 13380}
!66 = !{ptr @execute_one_pass, ptr @gimple_has_body_p, i64 836}
!67 = !{ptr @execute_one_pass, ptr @push_cfun, i64 590}
!68 = !{ptr @execute_one_pass, ptr @free_dominance_info, i64 1180}
!69 = !{ptr @execute_one_pass, ptr @pop_cfun, i64 590}
!70 = !{ptr @execute_one_pass, ptr @ggc_collect, i64 590}
!71 = !{ptr @execute_one_pass, ptr @vec_heap_p_reserve, i64 119}
!72 = !{ptr @execute_one_pass, ptr @cgraph_process_new_functions, i64 8}
!73 = !{ptr @execute_todo, ptr @execute_function_todo, i64 14070}
!74 = !{ptr @execute_todo, ptr @gimple_has_body_p, i64 835}
!75 = !{ptr @execute_todo, ptr @push_cfun, i64 630}
!76 = !{ptr @execute_todo, ptr @free_dominance_info, i64 1260}
!77 = !{ptr @execute_todo, ptr @pop_cfun, i64 630}
!78 = !{ptr @execute_todo, ptr @ggc_collect, i64 3636}
!79 = !{ptr @execute_todo, ptr @cgraph_remove_unreachable_nodes, i64 6}
!80 = !{ptr @execute_todo, ptr @df_finish_pass, i64 1066}
!81 = !{ptr @execute_pass_list, ptr @execute_one_pass, i64 8290}
!82 = !{ptr @execute_pass_list, ptr @execute_pass_list, i64 306}
!83 = !{ptr @execute_ipa_pass_list, ptr @execute_one_pass, i64 14}
!84 = !{ptr @execute_ipa_pass_list, ptr @invoke_plugin_callbacks, i64 2}
!85 = !{ptr @execute_ipa_pass_list, ptr @do_per_function_toporder, i64 1}
!86 = !{ptr @execute_ipa_pass_list, ptr @cgraph_process_new_functions, i64 14}
!87 = !{ptr @function_called_by_processed_nodes_p, ptr @cgraph_node, i64 78}
!88 = !{ptr @make_pass_instance, ptr @xmalloc, i64 36}
!89 = !{ptr @make_pass_instance, ptr @invoke_plugin_callbacks, i64 203}
!90 = !{ptr @register_dump_files_1, ptr @register_one_dump_file, i64 212}
!91 = !{ptr @register_dump_files_1, ptr @register_dump_files_1, i64 11}
!92 = !{ptr @execute_function_todo, ptr @statistics_fini_pass, i64 12264}
!93 = !{ptr @execute_function_todo, ptr @cleanup_tree_cfg, i64 711}
!94 = !{ptr @execute_function_todo, ptr @need_ssa_update_p, i64 150}
!95 = !{ptr @execute_function_todo, ptr @update_ssa, i64 1328}
!96 = !{ptr @execute_function_todo, ptr @execute_update_addresses_taken, i64 192}
!97 = !{ptr @execute_function_todo, ptr @compute_may_aliases, i64 116}
!98 = !{ptr @execute_function_todo, ptr @remove_unused_locals, i64 524}
!99 = !{ptr @execute_function_todo, ptr @loop_optimizer_init, i64 38}
!100 = !{ptr @execute_function_todo, ptr @add_noreturn_fake_exit_edges, i64 38}
!101 = !{ptr @execute_function_todo, ptr @mark_irreducible_loops, i64 38}
!102 = !{ptr @execute_function_todo, ptr @connect_infinite_loops_to_exit, i64 38}
!103 = !{ptr @execute_function_todo, ptr @estimate_bb_frequencies, i64 38}
!104 = !{ptr @execute_function_todo, ptr @remove_fake_exit_edges, i64 38}
!105 = !{ptr @execute_function_todo, ptr @loop_optimizer_finalize, i64 38}
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
!127 = !{!128, !109, i64 8}
!128 = !{!"opt_pass", !114, i64 0, !109, i64 8, !109, i64 16, !109, i64 24, !109, i64 32, !109, i64 40, !114, i64 48, !114, i64 52, !114, i64 56, !114, i64 60, !114, i64 64, !114, i64 68, !114, i64 72}
!129 = !{!128, !114, i64 48}
!130 = !{!"function_entry_count", i64 5846}
!131 = !{!"branch_weights", i32 5846, i32 0}
!132 = !{!"branch_weights", i32 0, i32 5846}
!133 = !{!"branch_weights", i32 5845, i32 1}
!134 = !{!"branch_weights", i32 1, i32 0}
!135 = !{!"branch_weights", i32 366, i32 5479}
!136 = !{!"branch_weights", i32 0, i32 0, i32 366}
!137 = !{!"branch_weights", i32 5480, i32 0}
!138 = !{!"branch_weights", i32 1, i32 5479}
!139 = !{!"branch_weights", i32 5479, i32 0}
!140 = !{!"branch_weights", i32 0, i32 1}
!141 = !{!"branch_weights", i32 0, i32 5480}
!142 = !{!"branch_weights", i32 366, i32 0}
!143 = !{!144, !109, i64 144}
!144 = !{!"gcc_debug_hooks", !109, i64 0, !109, i64 8, !109, i64 16, !109, i64 24, !109, i64 32, !109, i64 40, !109, i64 48, !109, i64 56, !109, i64 64, !109, i64 72, !109, i64 80, !109, i64 88, !109, i64 96, !109, i64 104, !109, i64 112, !109, i64 120, !109, i64 128, !109, i64 136, !109, i64 144, !109, i64 152, !109, i64 160, !109, i64 168, !109, i64 176, !109, i64 184, !109, i64 192, !109, i64 200, !109, i64 208, !109, i64 216, !109, i64 224, !109, i64 232, !109, i64 240, !114, i64 248}
!145 = !{!"VP", i32 0, i64 366, i64 4481152594403903576, i64 366}
!146 = !{!"branch_weights", i32 752, i32 5094}
!147 = !{!"branch_weights", i32 1, i32 751}
!148 = !{!"function_entry_count", i64 371}
!149 = !{!"branch_weights", i32 371, i32 0}
!150 = !{!"VP", i32 0, i64 371, i64 4481152594403903576, i64 371}
!151 = !{!"function_entry_count", i64 1}
!152 = !{!153, !114, i64 48}
!153 = !{!"gimple_opt_pass", !128, i64 0}
!154 = !{!155, !114, i64 48}
!155 = !{!"rtl_opt_pass", !128, i64 0}
!156 = !{!157, !114, i64 24}
!157 = !{!"dump_file_info", !109, i64 0, !109, i64 8, !109, i64 16, !114, i64 24, !114, i64 28, !114, i64 32}
!158 = distinct !{!158, !125, !126}
!159 = !{!"function_entry_count", i64 38}
!160 = !{!"passes.c;gate_rest_of_compilation"}
!161 = !{!"branch_weights", i32 0, i32 38}
!162 = !{!"branch_weights", i32 38, i32 0}
!163 = !{!"passes.c;gate_postreload"}
!164 = !{!"function_entry_count", i64 212}
!165 = !{!"branch_weights", i32 158, i32 54}
!166 = !{!"branch_weights", i32 21, i32 33}
!167 = !{!"branch_weights", i32 207, i32 5}
!168 = !{!128, !114, i64 0}
!169 = !{!"branch_weights", i32 0, i32 212}
!170 = !{!"VP", i32 1, i64 212, i64 8, i64 211, i64 65, i64 1}
!171 = !{!172, !109, i64 0}
!172 = !{!"register_pass_info", !109, i64 0, !109, i64 8, !114, i64 16, !114, i64 20}
!173 = !{!172, !109, i64 8}
!174 = !{!172, !114, i64 16}
!175 = !{!176, !109, i64 8}
!176 = !{!"pass_list_node", !109, i64 0, !109, i64 8}
!177 = !{!176, !109, i64 0}
!178 = !{!157, !114, i64 28}
!179 = distinct !{!179, !125, !126}
!180 = !{!128, !114, i64 68}
!181 = !{!172, !114, i64 20}
!182 = !{!128, !109, i64 40}
!183 = !{!128, !109, i64 32}
!184 = !{!128, !114, i64 52}
!185 = distinct !{!185, !125, !126}
!186 = !{!128, !114, i64 56}
!187 = !{!"branch_weights", i32 127, i32 1}
!188 = !{!"branch_weights", i32 9473, i32 127}
!189 = distinct !{!189, !125, !126}
!190 = !{!"branch_weights", i32 35, i32 40}
!191 = !{!192, !109, i64 0}
!192 = !{!"cgraph_node", !109, i64 0, !109, i64 8, !109, i64 16, !109, i64 24, !109, i64 32, !109, i64 40, !109, i64 48, !109, i64 56, !109, i64 64, !109, i64 72, !109, i64 80, !109, i64 88, !109, i64 96, !109, i64 104, !109, i64 112, !109, i64 120, !109, i64 128, !109, i64 136, !193, i64 144, !195, i64 184, !196, i64 224, !197, i64 232, !198, i64 256, !115, i64 288, !114, i64 296, !114, i64 300, !114, i64 304, !114, i64 308, !114, i64 308, !114, i64 308, !114, i64 308, !114, i64 308, !114, i64 308, !114, i64 308, !114, i64 308, !114, i64 309, !114, i64 309}
!193 = !{!"cgraph_local_info", !109, i64 0, !194, i64 8, !114, i64 32, !114, i64 32, !114, i64 32, !114, i64 32, !114, i64 32, !114, i64 32, !114, i64 32, !114, i64 32}
!194 = !{!"inline_summary", !115, i64 0, !114, i64 8, !114, i64 12, !114, i64 16, !114, i64 20}
!195 = !{!"cgraph_global_info", !115, i64 0, !115, i64 8, !109, i64 16, !114, i64 24, !114, i64 28, !114, i64 32, !110, i64 36}
!196 = !{!"cgraph_rtl_info", !114, i64 0}
!197 = !{!"cgraph_clone_info", !109, i64 0, !109, i64 8, !109, i64 16}
!198 = !{!"cgraph_thunk_info", !115, i64 0, !115, i64 8, !109, i64 16, !110, i64 24, !110, i64 25, !110, i64 26}
!199 = !{!"VP", i32 0, i64 40, i64 6011687726025088351, i64 40}
!200 = distinct !{!200, !125, !126}
!201 = !{!"function_entry_count", i64 6732}
!202 = !{!"branch_weights", i32 855, i32 5877}
!203 = !{!"branch_weights", i32 0, i32 5877}
!204 = !{!205, !109, i64 176}
!205 = !{!"lang_hooks", !109, i64 0, !115, i64 8, !109, i64 16, !109, i64 24, !109, i64 32, !109, i64 40, !109, i64 48, !109, i64 56, !109, i64 64, !109, i64 72, !109, i64 80, !109, i64 88, !109, i64 96, !109, i64 104, !109, i64 112, !109, i64 120, !109, i64 128, !109, i64 136, !109, i64 144, !109, i64 152, !109, i64 160, !109, i64 168, !109, i64 176, !109, i64 184, !109, i64 192, !109, i64 200, !109, i64 208, !109, i64 216, !109, i64 224, !109, i64 232, !206, i64 240, !207, i64 248, !208, i64 256, !209, i64 272, !210, i64 432, !211, i64 560, !109, i64 584, !109, i64 592, !109, i64 600, !109, i64 608, !109, i64 616, !109, i64 624, !109, i64 632, !109, i64 640, !109, i64 648, !109, i64 656, !109, i64 664, !110, i64 672}
!206 = !{!"lang_hooks_for_tree_inlining", !109, i64 0}
!207 = !{!"lang_hooks_for_callgraph", !109, i64 0}
!208 = !{!"lang_hooks_for_tree_dump", !109, i64 0, !109, i64 8}
!209 = !{!"lang_hooks_for_decls", !109, i64 0, !109, i64 8, !109, i64 16, !109, i64 24, !109, i64 32, !109, i64 40, !109, i64 48, !109, i64 56, !109, i64 64, !109, i64 72, !109, i64 80, !109, i64 88, !109, i64 96, !109, i64 104, !109, i64 112, !109, i64 120, !109, i64 128, !109, i64 136, !109, i64 144, !109, i64 152}
!210 = !{!"lang_hooks_for_types", !109, i64 0, !109, i64 8, !109, i64 16, !109, i64 24, !109, i64 32, !109, i64 40, !109, i64 48, !109, i64 56, !109, i64 64, !109, i64 72, !109, i64 80, !109, i64 88, !109, i64 96, !109, i64 104, !109, i64 112, !110, i64 120}
!211 = !{!"lang_hooks_for_lto", !109, i64 0, !109, i64 8, !109, i64 16}
!212 = !{!"function_entry_count", i64 4}
!213 = !{!"branch_weights", i32 6732, i32 0}
!214 = !{!"function_entry_count", i64 2}
!215 = !{!"branch_weights", i32 1, i32 127}
!216 = !{!217, !114, i64 0}
!217 = !{!"ipa_opt_pass_d", !128, i64 0, !109, i64 80, !109, i64 88, !109, i64 96, !109, i64 104, !109, i64 112, !114, i64 120, !109, i64 128, !109, i64 136}
!218 = !{!"branch_weights", i32 8, i32 3}
!219 = !{!128, !109, i64 16}
!220 = !{!"branch_weights", i32 1, i32 7}
!221 = !{!"VP", i32 0, i64 7, i64 4401148841307012001, i64 2, i64 -661159945082905153, i64 1, i64 5498782132276155445, i64 1}
!222 = !{!"branch_weights", i32 3, i32 4}
!223 = !{!217, !109, i64 80}
!224 = !{!"branch_weights", i32 1, i32 4}
!225 = !{i8 0, i8 2}
!226 = !{!"branch_weights", i32 4, i32 0}
!227 = !{!"branch_weights", i32 0, i32 4}
!228 = !{!"VP", i32 0, i64 4, i64 5234358058496009718, i64 1, i64 6934073908032518106, i64 1, i64 -8155355205287146537, i64 1}
!229 = !{!217, !109, i64 40}
!230 = !{!"branch_weights", i32 127, i32 577}
!231 = distinct !{!231, !125, !126}
!232 = !{!192, !109, i64 136}
!233 = !{!"branch_weights", i32 0, i32 228}
!234 = !{!235, !114, i64 0}
!235 = !{!"VEC_ipa_opt_pass_base", !114, i64 0, !114, i64 4, !110, i64 8}
!236 = !{!"branch_weights", i32 190, i32 38}
!237 = !{!217, !109, i64 128}
!238 = !{!"branch_weights", i32 152, i32 38}
!239 = !{!240, !114, i64 120}
!240 = !{!"function", !109, i64 0, !109, i64 8, !109, i64 16, !109, i64 24, !109, i64 32, !109, i64 40, !109, i64 48, !109, i64 56, !109, i64 64, !109, i64 72, !109, i64 80, !109, i64 88, !109, i64 96, !114, i64 104, !114, i64 108, !114, i64 112, !114, i64 116, !114, i64 120, !114, i64 124, !109, i64 128, !114, i64 136, !114, i64 137, !114, i64 138, !114, i64 138, !114, i64 138, !114, i64 138, !114, i64 138, !114, i64 138, !114, i64 138, !114, i64 139, !114, i64 139, !114, i64 139, !114, i64 139, !114, i64 139, !114, i64 139, !114, i64 139}
!241 = !{!217, !114, i64 120}
!242 = !{!"VP", i32 0, i64 38, i64 -7446447004511679682, i64 38}
!243 = distinct !{!243, !125, !126}
!244 = !{!"function_entry_count", i64 8304}
!245 = !{!"branch_weights", i32 14, i32 8290}
!246 = !{!"branch_weights", i32 0, i32 14}
!247 = !{!"branch_weights", i32 8290, i32 0}
!248 = !{!"branch_weights", i32 2243, i32 6061}
!249 = !{!"VP", i32 0, i64 1872, i64 -4331396827882797848, i64 230, i64 -857512168353065591, i64 154, i64 6477382609015056482, i64 154}
!250 = !{!"branch_weights", i32 1614, i32 6690}
!251 = !{!"branch_weights", i32 6690, i32 0}
!252 = !{!"branch_weights", i32 8, i32 6682}
!253 = !{!"branch_weights", i32 4565, i32 2125}
!254 = !{!"branch_weights", i32 0, i32 6690}
!255 = !{!128, !109, i64 24}
!256 = !{!"branch_weights", i32 345, i32 6345}
!257 = !{!"VP", i32 0, i64 1342, i64 -3052620684041448284, i64 154, i64 -1332964203935189848, i64 154, i64 4989655836658530790, i64 116}
!258 = !{!"branch_weights", i32 7, i32 6338}
!259 = !{!"branch_weights", i32 1, i32 223}
!260 = !{!240, !114, i64 124}
!261 = !{!"branch_weights", i32 860, i32 398}
!262 = !{!"branch_weights", i32 0, i32 398}
!263 = !{!192, !109, i64 96}
!264 = !{!"branch_weights", i32 275, i32 123}
!265 = !{!"branch_weights", i32 123, i32 0}
!266 = !{!"branch_weights", i32 275, i32 0}
!267 = !{!"branch_weights", i32 223, i32 40033}
!268 = distinct !{!268, !125, !126}
!269 = !{!128, !114, i64 60}
!270 = !{!128, !114, i64 64}
!271 = !{!"branch_weights", i32 895, i32 438}
!272 = !{!"branch_weights", i32 0, i32 438}
!273 = !{!"branch_weights", i32 315, i32 123}
!274 = !{!"branch_weights", i32 315, i32 0}
!275 = !{!"branch_weights", i32 127, i32 21201}
!276 = !{!"branch_weights", i32 5835, i32 855}
!277 = !{!128, !114, i64 72}
!278 = !{!"branch_weights", i32 5, i32 6685}
!279 = !{!"branch_weights", i32 1, i32 159}
!280 = !{!"branch_weights", i32 175, i32 318}
!281 = !{!"branch_weights", i32 80, i32 238}
!282 = !{!235, !114, i64 4}
!283 = !{!"branch_weights", i32 39, i32 199}
!284 = !{!"branch_weights", i32 159, i32 15617}
!285 = distinct !{!285, !125, !126}
!286 = !{!"branch_weights", i32 0, i32 6682}
!287 = !{!"function_entry_count", i64 13456}
!288 = !{!"passes.c;execute_todo"}
!289 = !{!"branch_weights", i32 16, i32 13440}
!290 = distinct !{null, ptr @execute_function_todo, null}
!291 = !{!"branch_weights", i32 1790, i32 835}
!292 = !{!"branch_weights", i32 0, i32 835}
!293 = !{!"branch_weights", i32 630, i32 205}
!294 = !{!"branch_weights", i32 205, i32 0}
!295 = !{!"branch_weights", i32 630, i32 0}
!296 = !{!"branch_weights", i32 127, i32 20873}
!297 = !{!"branch_weights", i32 13450, i32 6}
!298 = !{!"branch_weights", i32 6, i32 0}
!299 = !{!"branch_weights", i32 13412, i32 44}
!300 = !{!"branch_weights", i32 13456, i32 0}
!301 = !{!"branch_weights", i32 10450, i32 3006}
!302 = !{!"branch_weights", i32 12390, i32 1066}
!303 = !{!"function_entry_count", i64 424}
!304 = !{!"branch_weights", i32 1608, i32 6682}
!305 = !{!"branch_weights", i32 6376, i32 306}
!306 = !{!"branch_weights", i32 424, i32 7866}
!307 = distinct !{!307, !125, !126}
!308 = distinct !{!308, !125, !126}
!309 = !{!217, !109, i64 96}
!310 = distinct !{!310, !125, !126}
!311 = !{!"branch_weights", i32 14, i32 0}
!312 = !{!"branch_weights", i32 6, i32 8}
!313 = !{!"branch_weights", i32 7, i32 1}
!314 = !{!"branch_weights", i32 0, i32 1, i32 0, i32 0}
!315 = !{!"branch_weights", i32 2, i32 12}
!316 = distinct !{!316, !125, !126}
!317 = !{!217, !109, i64 112}
!318 = distinct !{!318, !125, !126}
!319 = !{!"function_entry_count", i64 78}
!320 = !{!"branch_weights", i32 155, i32 1}
!321 = !{!322, !109, i64 8}
!322 = !{!"cgraph_edge", !115, i64 0, !109, i64 8, !109, i64 16, !109, i64 24, !109, i64 32, !109, i64 40, !109, i64 48, !109, i64 56, !109, i64 64, !114, i64 72, !114, i64 76, !114, i64 80, !114, i64 84, !116, i64 88, !114, i64 90, !114, i64 90, !114, i64 90}
!323 = !{!"branch_weights", i32 0, i32 105530}
!324 = !{!192, !109, i64 200}
!325 = !{!"branch_weights", i32 210905, i32 155}
!326 = distinct !{!326, !125, !126}
!327 = !{!"branch_weights", i32 0, i32 78}
!328 = distinct !{!328, !125, !126}
!329 = distinct !{!329, !125, !126}
!330 = !{!"function_entry_count", i64 239}
!331 = !{!"passes.c;make_pass_instance"}
!332 = !{!"branch_weights", i32 203, i32 36}
!333 = !{!"branch_weights", i32 0, i32 34, i32 2, i32 0, i32 0}
!334 = !{!"branch_weights", i32 0, i32 36}
!335 = !{!"branch_weights", i32 33, i32 3}
!336 = !{!"function_entry_count", i64 16}
!337 = !{!"passes.c;register_dump_files_1"}
!338 = !{!"branch_weights", i32 0, i32 239}
!339 = !{!"branch_weights", i32 27, i32 212}
!340 = !{!"branch_weights", i32 228, i32 11}
!341 = !{!"branch_weights", i32 63, i32 176}
!342 = !{!"branch_weights", i32 16, i32 223}
!343 = distinct !{!343, !125, !126}
!344 = !{!"function_entry_count", i64 14070}
!345 = !{!"passes.c;execute_function_todo"}
!346 = !{!"branch_weights", i32 1806, i32 12264}
!347 = !{!"branch_weights", i32 11553, i32 711}
!348 = !{!"branch_weights", i32 419, i32 292}
!349 = !{!"branch_weights", i32 150, i32 561}
!350 = !{!"branch_weights", i32 150, i32 0}
!351 = !{!"branch_weights", i32 10936, i32 1328}
!352 = !{!"branch_weights", i32 12188, i32 76}
!353 = !{!"branch_weights", i32 12148, i32 116}
!354 = !{!"branch_weights", i32 116, i32 0}
!355 = !{!"branch_weights", i32 11740, i32 524}
!356 = !{!"branch_weights", i32 5520, i32 6744}
!357 = !{!"branch_weights", i32 0, i32 12264}
!358 = !{!"branch_weights", i32 12226, i32 38}
!359 = !{!240, !109, i64 8}
!360 = !{!361, !114, i64 48}
!361 = !{!"control_flow_graph", !109, i64 0, !109, i64 8, !109, i64 16, !114, i64 24, !114, i64 28, !114, i64 32, !109, i64 40, !114, i64 48, !110, i64 52, !110, i64 60, !114, i64 68, !114, i64 72}
!362 = !{!"branch_weights", i32 0, i32 38, i32 0}
!363 = !{!217, !109, i64 88}
!364 = distinct !{!364, !125, !126}
!365 = distinct !{!365, !125, !126}
