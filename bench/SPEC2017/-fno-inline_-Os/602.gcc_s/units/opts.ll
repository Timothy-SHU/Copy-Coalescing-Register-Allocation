; ModuleID = 'opts.c'
source_filename = "opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.visibility_flags = type { i8, [3 x i8] }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
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
%struct.cl_option = type { ptr, ptr, i16, i8, i32, i32, ptr, i32, i32 }
%struct.anon = type { ptr, i32 }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.VEC_const_char_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_char_p_base = type { i32, i32, [1 x ptr] }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.pretty_print_info = type { ptr, ptr, i32, i32, i32, %struct.pp_wrapping_mode_t, ptr, i8, i8, i8 }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.cl_optimization = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cl_option_state = type { ptr, i64, i8 }

@g_switch_value = dso_local local_unnamed_addr global i64 0, align 8
@g_switch_set = dso_local local_unnamed_addr global i8 0, align 1
@sel_sched_switch_set = dso_local local_unnamed_addr global i8 0, align 1
@exit_after_options = dso_local local_unnamed_addr global i8 0, align 1
@warn_larger_than = dso_local local_unnamed_addr global i8 0, align 1
@larger_than_size = dso_local local_unnamed_addr global i64 0, align 8
@warn_frame_larger_than = dso_local local_unnamed_addr global i8 0, align 1
@frame_larger_than_size = dso_local local_unnamed_addr global i64 0, align 8
@use_gnu_debug_info_extensions = dso_local local_unnamed_addr global i8 0, align 1
@visibility_options = dso_local local_unnamed_addr global %struct.visibility_flags zeroinitializer, align 4
@in_fnames = dso_local local_unnamed_addr global ptr null, align 8
@num_in_fnames = dso_local local_unnamed_addr global i32 0, align 4
@write_symbols = dso_local local_unnamed_addr global i32 0, align 4
@debug_info_level = dso_local local_unnamed_addr global i32 0, align 4
@set_struct_debug_option.dfn_lbl = internal global [5 x i8] c"dfn:\00", align 1
@set_struct_debug_option.dir_lbl = internal global [5 x i8] c"dir:\00", align 1
@set_struct_debug_option.ind_lbl = internal global [5 x i8] c"ind:\00", align 1
@set_struct_debug_option.ord_lbl = internal global [5 x i8] c"ord:\00", align 1
@set_struct_debug_option.gen_lbl = internal global [5 x i8] c"gen:\00", align 1
@set_struct_debug_option.none_lbl = internal global [5 x i8] c"none\00", align 1
@set_struct_debug_option.any_lbl = internal global [4 x i8] c"any\00", align 1
@set_struct_debug_option.base_lbl = internal global [5 x i8] c"base\00", align 1
@set_struct_debug_option.sys_lbl = internal global [4 x i8] c"sys\00", align 1
@.str = private unnamed_addr constant [64 x i8] c"argument %qs to %<-femit-struct-debug-detailed%> not recognized\00", align 1
@debug_struct_ordinary = internal unnamed_addr global [3 x i32] [i32 3, i32 3, i32 3], align 4
@debug_struct_generic = internal unnamed_addr global [3 x i32] [i32 3, i32 3, i32 3], align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"argument %qs to %<-femit-struct-debug-detailed%> unknown\00", align 1
@.str.2 = private unnamed_addr constant [113 x i8] c"%<-femit-struct-debug-detailed=dir:...%> must allow at least as much as %<-femit-struct-debug-detailed=ind:...%>\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@matches_main_base.last_path = internal unnamed_addr global ptr null, align 8
@matches_main_base.last_match = internal unnamed_addr global i32 0, align 4
@main_input_baselength = internal unnamed_addr global i32 0, align 4
@main_input_basename = internal global ptr null, align 8
@default_visibility = dso_local local_unnamed_addr global i32 0, align 4
@flag_warn_unused_result = dso_local local_unnamed_addr global i8 0, align 1
@input_location = external local_unnamed_addr global i32, align 4
@ignored_options = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"unrecognized command line option \22%s\22\00", align 1
@flag_instrument_functions_exclude_functions = internal global ptr null, align 8
@flag_instrument_functions_exclude_files = internal global ptr null, align 8
@decode_options.first_time_p = internal unnamed_addr global i1 false, align 1
@decode_options.initial_min_crossjump_insns = internal unnamed_addr global i32 0, align 4
@decode_options.initial_max_fields_for_field_sensitive = internal unnamed_addr global i32 0, align 4
@decode_options.initial_loop_invariant_max_bbs_in_loop = internal unnamed_addr global i32 0, align 4
@decode_options.initial_lang_mask = internal unnamed_addr global i32 0, align 4
@global_dc = external local_unnamed_addr global ptr, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"-O\00", align 1
@optimize = external local_unnamed_addr global i32, align 4
@optimize_size = external local_unnamed_addr global i32, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@flag_ira_algorithm = external local_unnamed_addr global i32, align 4
@flag_defer_pop = external local_unnamed_addr global i32, align 4
@flag_guess_branch_prob = external local_unnamed_addr global i32, align 4
@flag_cprop_registers = external local_unnamed_addr global i32, align 4
@flag_forward_propagate = external local_unnamed_addr global i32, align 4
@flag_if_conversion = external local_unnamed_addr global i32, align 4
@flag_if_conversion2 = external local_unnamed_addr global i32, align 4
@flag_ipa_pure_const = external local_unnamed_addr global i32, align 4
@flag_ipa_reference = external local_unnamed_addr global i32, align 4
@flag_merge_constants = external local_unnamed_addr global i32, align 4
@flag_split_wide_types = external local_unnamed_addr global i32, align 4
@flag_tree_ccp = external local_unnamed_addr global i32, align 4
@flag_tree_dce = external local_unnamed_addr global i32, align 4
@flag_tree_dom = external local_unnamed_addr global i32, align 4
@flag_tree_dse = external local_unnamed_addr global i32, align 4
@flag_tree_ter = external local_unnamed_addr global i32, align 4
@flag_tree_sra = external local_unnamed_addr global i32, align 4
@flag_tree_copyrename = external local_unnamed_addr global i32, align 4
@flag_tree_fre = external local_unnamed_addr global i32, align 4
@flag_tree_copy_prop = external local_unnamed_addr global i32, align 4
@flag_tree_sink = external local_unnamed_addr global i32, align 4
@flag_tree_ch = external local_unnamed_addr global i32, align 4
@flag_inline_small_functions = external local_unnamed_addr global i32, align 4
@flag_indirect_inlining = external local_unnamed_addr global i32, align 4
@flag_thread_jumps = external local_unnamed_addr global i32, align 4
@flag_crossjumping = external local_unnamed_addr global i32, align 4
@flag_optimize_sibling_calls = external local_unnamed_addr global i32, align 4
@flag_cse_follow_jumps = external local_unnamed_addr global i32, align 4
@flag_gcse = external local_unnamed_addr global i32, align 4
@flag_expensive_optimizations = external local_unnamed_addr global i32, align 4
@flag_rerun_cse_after_loop = external local_unnamed_addr global i32, align 4
@flag_caller_saves = external local_unnamed_addr global i32, align 4
@flag_peephole2 = external local_unnamed_addr global i32, align 4
@flag_schedule_insns = external local_unnamed_addr global i32, align 4
@flag_schedule_insns_after_reload = external local_unnamed_addr global i32, align 4
@flag_regmove = external local_unnamed_addr global i32, align 4
@flag_strict_aliasing = external local_unnamed_addr global i32, align 4
@flag_strict_overflow = external local_unnamed_addr global i32, align 4
@flag_reorder_blocks = external local_unnamed_addr global i32, align 4
@flag_reorder_functions = external local_unnamed_addr global i32, align 4
@flag_tree_vrp = external local_unnamed_addr global i32, align 4
@flag_tree_builtin_call_dce = external local_unnamed_addr global i32, align 4
@flag_tree_pre = external local_unnamed_addr global i32, align 4
@flag_tree_switch_conversion = external local_unnamed_addr global i32, align 4
@flag_ipa_cp = external local_unnamed_addr global i32, align 4
@flag_ipa_sra = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"max-fields-for-field-sensitive\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"loop-invariant-max-bbs-in-loop\00", align 1
@flag_predictive_commoning = external local_unnamed_addr global i32, align 4
@flag_inline_functions = external local_unnamed_addr global i32, align 4
@flag_unswitch_loops = external local_unnamed_addr global i32, align 4
@flag_gcse_after_reload = external local_unnamed_addr global i32, align 4
@flag_tree_vectorize = external local_unnamed_addr global i32, align 4
@flag_ipa_cp_clone = external local_unnamed_addr global i32, align 4
@align_loops = external local_unnamed_addr global i32, align 4
@align_jumps = external local_unnamed_addr global i32, align 4
@align_labels = external local_unnamed_addr global i32, align 4
@align_functions = external local_unnamed_addr global i32, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"min-crossjump-insns\00", align 1
@flag_signed_char = external local_unnamed_addr global i32, align 4
@flag_short_enums = external local_unnamed_addr global i32, align 4
@target_flags = external global i32, align 4
@flag_unwind_tables = external local_unnamed_addr global i32, align 4
@dump_base_name = external local_unnamed_addr global ptr, align 8
@dump_dir_name = external local_unnamed_addr global ptr, align 8
@aux_base_name = external local_unnamed_addr global ptr, align 8
@flag_unit_at_a_time = external local_unnamed_addr global i32, align 4
@flag_section_anchors = external local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [66 x i8] c"Section anchors must be disabled when unit-at-a-time is disabled.\00", align 1
@flag_toplevel_reorder = external local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [67 x i8] c"Toplevel reorder must be disabled when unit-at-a-time is disabled.\00", align 1
@.str.10 = private unnamed_addr constant [67 x i8] c"section anchors must be disabled when toplevel reorder is disabled\00", align 1
@flag_pie = external local_unnamed_addr global i32, align 4
@flag_pic = external local_unnamed_addr global i32, align 4
@flag_shlib = external local_unnamed_addr global i32, align 4
@warn_inline = external local_unnamed_addr global i32, align 4
@flag_no_inline = external local_unnamed_addr global i32, align 4
@flag_reorder_blocks_and_partition = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [66 x i8] c"-freorder-blocks-and-partition does not work on this architecture\00", align 1
@flag_sel_sched_pipelining = external local_unnamed_addr global i32, align 4
@flag_sel_sched_pipelining_outer_loops = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [54 x i8] c"-fira-algorithm=CB does not work on this architecture\00", align 1
@flag_conserve_stack = external local_unnamed_addr global i32, align 4
@flag_lto = external local_unnamed_addr global i32, align 4
@flag_whopr = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [55 x i8] c"LTO support has not been enabled in this configuration\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"-flto and -fwhopr are mutually exclusive\00", align 1
@main_input_filename = external local_unnamed_addr global ptr, align 8
@cl_options_count = external local_unnamed_addr constant i32, align 4
@cl_options = external constant [0 x %struct.cl_option], align 8
@.str.17 = private unnamed_addr constant [63 x i8] c"command line option %qs is not supported by this configuration\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"missing argument to \22%s\22\00", align 1
@.str.19 = private unnamed_addr constant [50 x i8] c"argument to \22%s\22 should be a non-negative integer\00", align 1
@.str.20 = private unnamed_addr constant [56 x i8] c"command line option \22%s\22 is valid for %s but not for %s\00", align 1
@lang_names = external local_unnamed_addr constant [0 x ptr], align 8
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@common_handle_option.verbose = internal unnamed_addr global i1 false, align 1
@cl_lang_count = external local_unnamed_addr constant i32, align 4
@extra_warnings = external local_unnamed_addr global i32, align 4
@common_handle_option.specifics = internal unnamed_addr constant [9 x %struct.anon] [%struct.anon { ptr @.str.21, i32 524288 }, %struct.anon { ptr @.str.22, i32 1048576 }, %struct.anon { ptr @.str.23, i32 262144 }, %struct.anon { ptr @.str.24, i32 1073741824 }, %struct.anon { ptr @.str.25, i32 131072 }, %struct.anon { ptr @.str.26, i32 33554432 }, %struct.anon { ptr @.str.27, i32 67108864 }, %struct.anon { ptr @.str.28, i32 2097152 }, %struct.anon zeroinitializer], align 16
@.str.21 = private unnamed_addr constant [11 x i8] c"optimizers\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"warnings\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"undocumented\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"params\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"joined\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"separate\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"common\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.30 = private unnamed_addr constant [69 x i8] c"warning: --help argument %.*s is ambiguous, please be more specific\0A\00", align 1
@.str.31 = private unnamed_addr constant [56 x i8] c"warning: unrecognized argument to --help= option: %.*s\0A\00", align 1
@warn_strict_aliasing = external local_unnamed_addr global i32, align 4
@warn_strict_overflow = external local_unnamed_addr global i32, align 4
@warn_unused = external local_unnamed_addr global i32, align 4
@aux_info_file_name = external local_unnamed_addr global ptr, align 8
@flag_gen_aux_info = external local_unnamed_addr global i32, align 4
@flag_branch_probabilities_set = internal unnamed_addr global i1 false, align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"once\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"every-line\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@flag_excess_precision_cmdline = external local_unnamed_addr global i32, align 4
@.str.35 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"unknown excess precision style \22%s\22\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"max-inline-insns-single\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"max-inline-insns-auto\00", align 1
@.str.39 = private unnamed_addr constant [57 x i8] c"structure alignment must be a small power of two, not %d\00", align 1
@initial_max_fld_align = external local_unnamed_addr global i32, align 4
@maximum_field_alignment = external local_unnamed_addr global i32, align 4
@flag_peel_loops_set = internal unnamed_addr global i1 false, align 1
@.str.40 = private unnamed_addr constant [61 x i8] c"Plugin support is disabled.  Configure with --enable-plugin.\00", align 1
@profile_arc_flag_set = internal unnamed_addr global i1 false, align 1
@flag_inline_functions_set = internal unnamed_addr global i1 false, align 1
@profile_data_prefix = external local_unnamed_addr global ptr, align 8
@flag_profile_use = external local_unnamed_addr global i32, align 4
@flag_branch_probabilities = external local_unnamed_addr global i32, align 4
@flag_profile_values_set = internal unnamed_addr global i1 false, align 1
@flag_profile_values = external local_unnamed_addr global i32, align 4
@flag_unroll_loops_set = internal unnamed_addr global i1 false, align 1
@flag_unroll_loops = external local_unnamed_addr global i32, align 4
@flag_peel_loops = external local_unnamed_addr global i32, align 4
@flag_tracer_set = internal unnamed_addr global i1 false, align 1
@flag_tracer = external local_unnamed_addr global i32, align 4
@flag_value_profile_transformations_set = internal unnamed_addr global i1 false, align 1
@flag_value_profile_transformations = external local_unnamed_addr global i32, align 4
@flag_ipa_cp_set = internal unnamed_addr global i1 false, align 1
@flag_ipa_cp_clone_set = internal unnamed_addr global i1 false, align 1
@flag_predictive_commoning_set = internal unnamed_addr global i1 false, align 1
@flag_unswitch_loops_set = internal unnamed_addr global i1 false, align 1
@flag_gcse_after_reload_set = internal unnamed_addr global i1 false, align 1
@profile_arc_flag = external local_unnamed_addr global i32, align 4
@.str.41 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"hidden\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c"protected\00", align 1
@.str.45 = private unnamed_addr constant [35 x i8] c"unrecognized visibility value \22%s\22\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@flag_sched_stalled_insns = external local_unnamed_addr global i32, align 4
@flag_sched_stalled_insns_dep = external local_unnamed_addr global i32, align 4
@.str.47 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@flag_stack_check = external local_unnamed_addr global i32, align 4
@.str.48 = private unnamed_addr constant [8 x i8] c"generic\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"specific\00", align 1
@.str.50 = private unnamed_addr constant [35 x i8] c"unknown stack check parameter \22%s\22\00", align 1
@stack_limit_rtx = external local_unnamed_addr global ptr, align 8
@.str.51 = private unnamed_addr constant [32 x i8] c"unrecognized register name \22%s\22\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"global-dynamic\00", align 1
@flag_tls_default = external local_unnamed_addr global i32, align 4
@.str.53 = private unnamed_addr constant [14 x i8] c"local-dynamic\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"initial-exec\00", align 1
@.str.55 = private unnamed_addr constant [11 x i8] c"local-exec\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"unknown tls-model \22%s\22\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"CB\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"unknown ira algorithm \22%s\22\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@flag_ira_region = external local_unnamed_addr global i32, align 4
@.str.61 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"mixed\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"unknown ira region \22%s\22\00", align 1
@flag_ira_verbose = external local_unnamed_addr global i32, align 4
@.str.64 = private unnamed_addr constant [34 x i8] c"dwarf version %d is not supported\00", align 1
@dwarf_version = external local_unnamed_addr global i32, align 4
@.str.65 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@asm_file_name = external local_unnamed_addr global ptr, align 8
@pedantic = external local_unnamed_addr global i32, align 4
@flag_pedantic_errors = external local_unnamed_addr global i32, align 4
@.str.66 = private unnamed_addr constant [7 x i8] c"opts.c\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.68 = private unnamed_addr constant [55 x i8] c"%s: --param arguments should be of the form NAME=VALUE\00", align 1
@.str.69 = private unnamed_addr constant [26 x i8] c"invalid --param value %qs\00", align 1
@print_specific_help.columns = internal unnamed_addr global i32 0, align 4
@.str.70 = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@.str.71 = private unnamed_addr constant [42 x i8] c"The following options are target specific\00", align 1
@.str.72 = private unnamed_addr constant [56 x i8] c"The following options control compiler warning messages\00", align 1
@.str.73 = private unnamed_addr constant [44 x i8] c"The following options control optimizations\00", align 1
@.str.74 = private unnamed_addr constant [47 x i8] c"The following options are language-independent\00", align 1
@.str.75 = private unnamed_addr constant [58 x i8] c"The --param option recognizes the following as parameters\00", align 1
@.str.76 = private unnamed_addr constant [57 x i8] c"The following options are specific to just the language \00", align 1
@.str.77 = private unnamed_addr constant [53 x i8] c"The following options are supported by the language \00", align 1
@.str.78 = private unnamed_addr constant [41 x i8] c"The following options are not documented\00", align 1
@.str.79 = private unnamed_addr constant [46 x i8] c"The following options take separate arguments\00", align 1
@.str.80 = private unnamed_addr constant [44 x i8] c"The following options take joined arguments\00", align 1
@.str.81 = private unnamed_addr constant [62 x i8] c"unrecognized include_flags 0x%x passed to print_specific_help\00", align 1
@.str.82 = private unnamed_addr constant [43 x i8] c"The following options are language-related\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"%s%s:\0A\00", align 1
@print_filtered_help.printed = internal unnamed_addr global ptr null, align 8
@undocumented_msg = internal constant [32 x i8] c"This switch lacks documentation\00", align 16
@print_filtered_help.new_help = internal global [128 x i8] zeroinitializer, align 16
@quiet_flag = external local_unnamed_addr global i32, align 4
@.str.84 = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"%#x\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"[enabled]\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"[disabled]\00", align 1
@.str.90 = private unnamed_addr constant [85 x i8] c" None found.  Use --help=%s to show *all* the options supported by the %s front-end\0A\00", align 1
@.str.92 = private unnamed_addr constant [15 x i8] c"  %-*.*s %.*s\0A\00", align 1
@set_debug_level.type_explicit = internal unnamed_addr global i1 false, align 1
@.str.94 = private unnamed_addr constant [49 x i8] c"debug format \22%s\22 conflicts with prior selection\00", align 1
@debug_type_names = external local_unnamed_addr constant [0 x ptr], align 8
@.str.95 = private unnamed_addr constant [37 x i8] c"unrecognised debug output level \22%s\22\00", align 1
@.str.96 = private unnamed_addr constant [34 x i8] c"debug output level %s is too high\00", align 1
@flag_unsafe_math_optimizations = external local_unnamed_addr global i32, align 4
@flag_finite_math_only = external local_unnamed_addr global i32, align 4
@flag_errno_math = external local_unnamed_addr global i32, align 4
@flag_signaling_nans = external local_unnamed_addr global i32, align 4
@flag_rounding_math = external local_unnamed_addr global i32, align 4
@flag_cx_limited_range = external local_unnamed_addr global i32, align 4
@flag_trapping_math = external local_unnamed_addr global i32, align 4
@flag_signed_zeros = external local_unnamed_addr global i32, align 4
@flag_associative_math = external local_unnamed_addr global i32, align 4
@flag_reciprocal_math = external local_unnamed_addr global i32, align 4
@target_flags_explicit = external local_unnamed_addr global i32, align 4
@.str.97 = private unnamed_addr constant [26 x i8] c"-Werror=%s: No option -%s\00", align 1
@str = private unnamed_addr constant [56 x i8] c" No options with the desired characteristics were found\00", align 1
@str.98 = private unnamed_addr constant [74 x i8] c" All options with the desired characteristics have already been displayed\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_struct_debug_option(ptr noundef %0) local_unnamed_addr #0 !prof !64 {
  br label %2

2:                                                ; preds = %69, %1
  %3 = phi ptr [ %0, %1 ], [ %70, %69 ]
  %4 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @set_struct_debug_option.dfn_lbl, ptr noundef nonnull dereferenceable(1) %3, i64 noundef 4) #25
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %3, i64 4
  br label %18

8:                                                ; preds = %2
  %9 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @set_struct_debug_option.dir_lbl, ptr noundef nonnull dereferenceable(1) %3, i64 noundef 4) #25
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, ptr %3, i64 4
  br label %18

13:                                               ; preds = %8
  %14 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @set_struct_debug_option.ind_lbl, ptr noundef nonnull dereferenceable(1) %3, i64 noundef 4) #25
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = getelementptr inbounds i8, ptr %3, i64 4
  br label %18

18:                                               ; preds = %11, %13, %16, %6
  %19 = phi ptr [ %7, %6 ], [ %12, %11 ], [ %17, %16 ], [ %3, %13 ]
  %20 = phi i1 [ false, %6 ], [ false, %11 ], [ false, %16 ], [ true, %13 ]
  %21 = phi i64 [ 0, %6 ], [ 1, %11 ], [ 2, %16 ], [ 3, %13 ]
  %22 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @set_struct_debug_option.ord_lbl, ptr noundef nonnull dereferenceable(1) %19, i64 noundef 4) #25
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @set_struct_debug_option.gen_lbl, ptr noundef nonnull dereferenceable(1) %19, i64 noundef 4) #25
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i64 4, i64 0
  br label %28

28:                                               ; preds = %18, %24
  %29 = phi i64 [ %27, %24 ], [ 4, %18 ]
  %30 = phi i1 [ %26, %24 ], [ false, %18 ]
  %31 = getelementptr inbounds i8, ptr %19, i64 %29
  %32 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @set_struct_debug_option.none_lbl, ptr noundef nonnull dereferenceable(1) %31, i64 noundef 4) #25
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = getelementptr inbounds i8, ptr %31, i64 4
  br label %52

36:                                               ; preds = %28
  %37 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @set_struct_debug_option.any_lbl, ptr noundef nonnull dereferenceable(1) %31, i64 noundef 3) #25
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = getelementptr inbounds i8, ptr %31, i64 3
  br label %52

41:                                               ; preds = %36
  %42 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @set_struct_debug_option.sys_lbl, ptr noundef nonnull dereferenceable(1) %31, i64 noundef 3) #25
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, ptr %31, i64 3
  br label %52

46:                                               ; preds = %41
  %47 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @set_struct_debug_option.base_lbl, ptr noundef nonnull dereferenceable(1) %31, i64 noundef 4) #25
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = getelementptr inbounds i8, ptr %31, i64 4
  br label %52

51:                                               ; preds = %46
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str, ptr noundef %31) #26
  br label %52

52:                                               ; preds = %39, %49, %51, %44, %34
  %53 = phi ptr [ %35, %34 ], [ %40, %39 ], [ %45, %44 ], [ %50, %49 ], [ %31, %51 ]
  %54 = phi i32 [ 0, %34 ], [ 3, %39 ], [ 2, %44 ], [ 1, %49 ], [ 3, %51 ]
  br i1 %20, label %55, label %59

55:                                               ; preds = %52
  br i1 %30, label %57, label %56

56:                                               ; preds = %55
  store i32 %54, ptr @debug_struct_ordinary, align 4, !tbaa !65
  store i32 %54, ptr getelementptr inbounds ([3 x i32], ptr @debug_struct_ordinary, i64 0, i64 1), align 4, !tbaa !65
  store i32 %54, ptr getelementptr inbounds ([3 x i32], ptr @debug_struct_ordinary, i64 0, i64 2), align 4, !tbaa !65
  br label %57

57:                                               ; preds = %56, %55
  br i1 %23, label %67, label %58

58:                                               ; preds = %57
  store i32 %54, ptr @debug_struct_generic, align 4, !tbaa !65
  store i32 %54, ptr getelementptr inbounds ([3 x i32], ptr @debug_struct_generic, i64 0, i64 1), align 4, !tbaa !65
  br label %65

59:                                               ; preds = %52
  br i1 %30, label %62, label %60

60:                                               ; preds = %59
  %61 = getelementptr inbounds [3 x i32], ptr @debug_struct_ordinary, i64 0, i64 %21
  store i32 %54, ptr %61, align 4, !tbaa !65
  br label %62

62:                                               ; preds = %60, %59
  br i1 %23, label %67, label %63

63:                                               ; preds = %62
  %64 = getelementptr inbounds [3 x i32], ptr @debug_struct_generic, i64 0, i64 %21
  br label %65

65:                                               ; preds = %58, %63
  %66 = phi ptr [ %64, %63 ], [ getelementptr inbounds ([3 x i32], ptr @debug_struct_generic, i64 0, i64 2), %58 ]
  store i32 %54, ptr %66, align 4, !tbaa !65
  br label %67

67:                                               ; preds = %65, %62, %57
  %68 = load i8, ptr %53, align 1, !tbaa !69
  switch i8 %68, label %71 [
    i8 44, label %69
    i8 0, label %72
  ]

69:                                               ; preds = %67
  %70 = getelementptr inbounds i8, ptr %53, i64 1
  br label %2

71:                                               ; preds = %67
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.1, ptr noundef nonnull %53) #26
  br label %72

72:                                               ; preds = %67, %71
  %73 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @debug_struct_ordinary, i64 0, i64 1), align 4, !tbaa !65
  %74 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @debug_struct_ordinary, i64 0, i64 2), align 4, !tbaa !65
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @debug_struct_generic, i64 0, i64 1), align 4, !tbaa !65
  %78 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @debug_struct_generic, i64 0, i64 2), align 4, !tbaa !65
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76, %72
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.2) #26
  br label %81

81:                                               ; preds = %76, %80
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @should_emit_struct_debug(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !64 {
  %3 = alloca %struct.expanded_location, align 8
  %4 = alloca %struct.expanded_location, align 8
  %5 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 4), align 8, !tbaa !70
  %6 = tail call zeroext i8 %5(ptr noundef %0) #26
  %7 = icmp eq i8 %6, 0
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds [3 x i32], ptr @debug_struct_generic, i64 0, i64 %8
  %10 = getelementptr inbounds [3 x i32], ptr @debug_struct_ordinary, i64 0, i64 %8
  %11 = select i1 %7, ptr %10, ptr %9
  %12 = load i32, ptr %11, align 4, !tbaa !65
  switch i32 %12, label %14 [
    i32 0, label %30
    i32 3, label %13
  ]

13:                                               ; preds = %2
  br label %30

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !69
  %17 = icmp eq i32 %12, 2
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.tree_decl_minimal, ptr %16, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !69
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %3, i32 noundef %20) #26
  %21 = getelementptr inbounds %struct.expanded_location, ptr %3, i64 0, i32 3
  %22 = load i8, ptr %21, align 8, !tbaa !80
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18, %14
  %25 = getelementptr inbounds %struct.tree_decl_minimal, ptr %16, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !69
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %4, i32 noundef %26) #26
  %27 = load ptr, ptr %4, align 8, !tbaa !82
  %28 = call fastcc i32 @matches_main_base(ptr noundef %27) #25, !range !83
  %29 = trunc i32 %28 to i8
  br label %30

30:                                               ; preds = %24, %18, %2, %13
  %31 = phi i8 [ 1, %13 ], [ 0, %2 ], [ 1, %18 ], [ %29, %24 ]
  ret i8 %31
}

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @matches_main_base(ptr noundef %0) unnamed_addr #4 !prof !64 !PGOFuncName !84 {
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr @matches_main_base.last_path, align 8, !tbaa !85
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load i32, ptr @matches_main_base.last_match, align 4, !tbaa !65
  br label %20

7:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  %8 = call fastcc i32 @base_of_path(ptr noundef %0, ptr noundef nonnull %2) #25
  store ptr %0, ptr @matches_main_base.last_path, align 8, !tbaa !85
  %9 = load i32, ptr @main_input_baselength, align 4, !tbaa !65
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = load ptr, ptr %2, align 8, !tbaa !85
  %13 = load ptr, ptr @main_input_basename, align 8, !tbaa !85
  %14 = sext i32 %8 to i64
  %15 = tail call i32 @bcmp(ptr %12, ptr %13, i64 %14)
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  br label %18

18:                                               ; preds = %11, %7
  %19 = phi i32 [ 0, %7 ], [ %17, %11 ]
  store i32 %19, ptr @matches_main_base.last_match, align 4, !tbaa !65
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  br label %20

20:                                               ; preds = %5, %18
  %21 = phi i32 [ %6, %5 ], [ %19, %18 ]
  ret i32 %21
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @base_of_path(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #5 !prof !86 !PGOFuncName !87 {
  br label %3

3:                                                ; preds = %11, %2
  %4 = phi ptr [ %0, %2 ], [ %12, %11 ]
  %5 = phi ptr [ null, %2 ], [ %13, %11 ]
  %6 = phi ptr [ %0, %2 ], [ %14, %11 ]
  %7 = load i8, ptr %6, align 1, !tbaa !69
  switch i8 %7, label %11 [
    i8 0, label %15
    i8 47, label %8
    i8 46, label %10
  ], !prof !88

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, ptr %6, i64 1
  br label %11

10:                                               ; preds = %3
  br label %11

11:                                               ; preds = %3, %10, %8
  %12 = phi ptr [ %9, %8 ], [ %4, %10 ], [ %4, %3 ]
  %13 = phi ptr [ null, %8 ], [ %6, %10 ], [ %5, %3 ]
  %14 = getelementptr inbounds i8, ptr %6, i64 1
  br label %3, !llvm.loop !89

15:                                               ; preds = %3
  %16 = icmp eq ptr %5, null
  %17 = select i1 %16, ptr %6, ptr %5, !prof !91
  store ptr %4, ptr %1, align 8, !tbaa !85
  %18 = ptrtoint ptr %17 to i64
  %19 = ptrtoint ptr %4 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_ignored_options() local_unnamed_addr #0 !prof !86 {
  %1 = load i32, ptr @input_location, align 4, !tbaa !65
  store i32 0, ptr @input_location, align 4, !tbaa !65
  %2 = load ptr, ptr @ignored_options, align 8
  %3 = tail call fastcc i32 @VEC_const_char_p_base_length(ptr noundef %2) #25
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5, !prof !92

5:                                                ; preds = %0, %5
  %6 = phi ptr [ %9, %5 ], [ %2, %0 ]
  %7 = tail call fastcc ptr @VEC_const_char_p_base_pop(ptr noundef %6) #25
  %8 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef %7) #26
  %9 = load ptr, ptr @ignored_options, align 8
  %10 = tail call fastcc i32 @VEC_const_char_p_base_length(ptr noundef %9) #25
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %5, !prof !93, !llvm.loop !94

12:                                               ; preds = %5, %0
  store i32 %1, ptr @input_location, align 4, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_const_char_p_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !86 !PGOFuncName !95 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !96

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !97
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_const_char_p_base_pop(ptr nocapture noundef %0) unnamed_addr #7 !prof !64 !PGOFuncName !99 {
  %2 = load i32, ptr %0, align 8, !tbaa !97
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !97
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_const_char_p_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !85
  ret ptr %6
}

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @flag_instrument_functions_exclude_p(ptr noundef %0) local_unnamed_addr #0 !prof !64 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.expanded_location, align 8
  %5 = load ptr, ptr @flag_instrument_functions_exclude_functions, align 8
  %6 = tail call fastcc i32 @VEC_char_p_base_length(ptr noundef %5) #25
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  %9 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !100
  %10 = tail call ptr %9(ptr noundef %0, i32 noundef 0) #26
  %11 = load ptr, ptr @flag_instrument_functions_exclude_functions, align 8
  %12 = call fastcc i32 @VEC_char_p_base_iterate(ptr noundef %11, i32 noundef 0, ptr noundef nonnull %2) #25, !range !83
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %19

14:                                               ; preds = %19
  %15 = add nuw nsw i32 %20, 1
  %16 = call fastcc i32 @VEC_char_p_base_iterate(ptr noundef %11, i32 noundef %15, ptr noundef nonnull %2) #25, !range !83
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19, !llvm.loop !101

18:                                               ; preds = %14, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  br label %25

19:                                               ; preds = %8, %14
  %20 = phi i32 [ %15, %14 ], [ 0, %8 ]
  %21 = load ptr, ptr %2, align 8, !tbaa !85
  %22 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %21) #25
  %23 = icmp eq ptr %22, null
  br i1 %23, label %14, label %24

24:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  br label %47

25:                                               ; preds = %18, %1
  %26 = load ptr, ptr @flag_instrument_functions_exclude_files, align 8
  %27 = tail call fastcc i32 @VEC_char_p_base_length(ptr noundef %26) #25
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %30 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !69
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %4, i32 noundef %31) #26
  %32 = load ptr, ptr %4, align 8, !tbaa !82
  %33 = load ptr, ptr @flag_instrument_functions_exclude_files, align 8
  %34 = call fastcc i32 @VEC_char_p_base_iterate(ptr noundef %33, i32 noundef 0, ptr noundef nonnull %3) #25, !range !83
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %41

36:                                               ; preds = %41
  %37 = add nuw nsw i32 %42, 1
  %38 = call fastcc i32 @VEC_char_p_base_iterate(ptr noundef %33, i32 noundef %37, ptr noundef nonnull %3) #25, !range !83
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41, !llvm.loop !102

40:                                               ; preds = %36, %29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  br label %47

41:                                               ; preds = %29, %36
  %42 = phi i32 [ %37, %36 ], [ 0, %29 ]
  %43 = load ptr, ptr %3, align 8, !tbaa !85
  %44 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %32, ptr noundef nonnull dereferenceable(1) %43) #25
  %45 = icmp eq ptr %44, null
  br i1 %45, label %36, label %46

46:                                               ; preds = %41
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  br label %47

47:                                               ; preds = %25, %40, %46, %24
  %48 = phi i8 [ 1, %24 ], [ 1, %46 ], [ 0, %40 ], [ 0, %25 ]
  ret i8 %48
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_char_p_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !64 !PGOFuncName !103 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !104
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_char_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 !prof !64 !PGOFuncName !106 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !104
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_char_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !85
  ret i32 %14
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @decode_options(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !86 {
  %3 = alloca ptr, align 8
  %4 = load i1, ptr @decode_options.first_time_p, align 1
  br i1 %4, label %17, label %5, !prof !91

5:                                                ; preds = %2
  %6 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 4), align 8, !tbaa !107
  %7 = tail call i32 %6(i32 noundef %0, ptr noundef %1) #26
  store i32 %7, ptr @decode_options.initial_lang_mask, align 4, !tbaa !65
  %8 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 5), align 8, !tbaa !108
  %9 = load ptr, ptr @global_dc, align 8, !tbaa !85
  tail call void %8(ptr noundef %9) #26
  %10 = load ptr, ptr @compiler_params, align 8, !tbaa !85
  %11 = getelementptr inbounds %struct.param_info, ptr %10, i64 54, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !109
  store i32 %12, ptr @decode_options.initial_min_crossjump_insns, align 4, !tbaa !65
  %13 = getelementptr inbounds %struct.param_info, ptr %10, i64 95, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !109
  store i32 %14, ptr @decode_options.initial_max_fields_for_field_sensitive, align 4, !tbaa !65
  %15 = getelementptr inbounds %struct.param_info, ptr %10, i64 112, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !109
  store i32 %16, ptr @decode_options.initial_loop_invariant_max_bbs_in_loop, align 4, !tbaa !65
  br label %19

17:                                               ; preds = %2
  %18 = load i32, ptr @decode_options.initial_lang_mask, align 4, !tbaa !65
  br label %19

19:                                               ; preds = %17, %5
  %20 = phi i32 [ %7, %5 ], [ %18, %17 ]
  %21 = icmp ugt i32 %0, 1
  br i1 %21, label %22, label %55, !prof !111

22:                                               ; preds = %19
  %23 = zext i32 %0 to i64
  br label %24

24:                                               ; preds = %22, %52
  %25 = phi i64 [ 1, %22 ], [ %53, %52 ]
  %26 = getelementptr inbounds ptr, ptr %1, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !85
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(3) @.str.4) #25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31, !prof !112

30:                                               ; preds = %24
  store i32 1, ptr @optimize, align 4, !tbaa !65
  store i32 0, ptr @optimize_size, align 4, !tbaa !65
  br label %52

31:                                               ; preds = %24
  %32 = load i8, ptr %27, align 1, !tbaa !69
  %33 = icmp eq i8 %32, 45
  br i1 %33, label %34, label %52, !prof !113

34:                                               ; preds = %31
  %35 = getelementptr inbounds i8, ptr %27, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !69
  %37 = icmp eq i8 %36, 79
  br i1 %37, label %38, label %52, !prof !114

38:                                               ; preds = %34
  %39 = getelementptr inbounds i8, ptr %27, i64 2
  %40 = load i8, ptr %39, align 1, !tbaa !69
  %41 = icmp eq i8 %40, 115
  br i1 %41, label %42, label %47, !prof !91

42:                                               ; preds = %38
  %43 = getelementptr inbounds i8, ptr %27, i64 3
  %44 = load i8, ptr %43, align 1, !tbaa !69
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 1, ptr @optimize_size, align 4, !tbaa !65
  store i32 2, ptr @optimize, align 4, !tbaa !65
  br label %52

47:                                               ; preds = %42, %38
  %48 = tail call i32 @read_integral_parameter(ptr noundef nonnull %39, ptr noundef nonnull %27, i32 noundef -1) #26
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %52, label %50, !prof !91

50:                                               ; preds = %47
  %51 = tail call i32 @llvm.umin.i32(i32 %48, i32 255)
  store i32 %51, ptr @optimize, align 4
  store i32 0, ptr @optimize_size, align 4, !tbaa !65
  br label %52

52:                                               ; preds = %46, %50, %47, %30, %34, %31
  %53 = add nuw nsw i64 %25, 1
  %54 = icmp eq i64 %53, %23
  br i1 %54, label %55, label %24, !prof !115, !llvm.loop !116

55:                                               ; preds = %52, %19
  %56 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 96), align 8, !tbaa !117
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %59, !prof !91

58:                                               ; preds = %55
  store i32 1, ptr @flag_ira_algorithm, align 4, !tbaa !65
  br label %59

59:                                               ; preds = %58, %55
  %60 = load i32, ptr @optimize, align 4, !tbaa !65
  %61 = icmp sgt i32 %60, 0
  %62 = zext i1 %61 to i32
  store i32 %62, ptr @flag_defer_pop, align 4, !tbaa !65
  store i32 %62, ptr @flag_guess_branch_prob, align 4, !tbaa !65
  store i32 %62, ptr @flag_cprop_registers, align 4, !tbaa !65
  store i32 %62, ptr @flag_forward_propagate, align 4, !tbaa !65
  store i32 %62, ptr @flag_if_conversion, align 4, !tbaa !65
  store i32 %62, ptr @flag_if_conversion2, align 4, !tbaa !65
  store i32 %62, ptr @flag_ipa_pure_const, align 4, !tbaa !65
  store i32 %62, ptr @flag_ipa_reference, align 4, !tbaa !65
  store i32 %62, ptr @flag_merge_constants, align 4, !tbaa !65
  store i32 %62, ptr @flag_split_wide_types, align 4, !tbaa !65
  store i32 %62, ptr @flag_tree_ccp, align 4, !tbaa !65
  store i32 %62, ptr @flag_tree_dce, align 4, !tbaa !65
  store i32 %62, ptr @flag_tree_dom, align 4, !tbaa !65
  store i32 %62, ptr @flag_tree_dse, align 4, !tbaa !65
  store i32 %62, ptr @flag_tree_ter, align 4, !tbaa !65
  store i32 %62, ptr @flag_tree_sra, align 4, !tbaa !65
  store i32 %62, ptr @flag_tree_copyrename, align 4, !tbaa !65
  store i32 %62, ptr @flag_tree_fre, align 4, !tbaa !65
  store i32 %62, ptr @flag_tree_copy_prop, align 4, !tbaa !65
  store i32 %62, ptr @flag_tree_sink, align 4, !tbaa !65
  store i32 %62, ptr @flag_tree_ch, align 4, !tbaa !65
  %63 = icmp sgt i32 %60, 1
  %64 = zext i1 %63 to i32
  store i32 %64, ptr @flag_inline_small_functions, align 4, !tbaa !65
  store i32 %64, ptr @flag_indirect_inlining, align 4, !tbaa !65
  store i32 %64, ptr @flag_thread_jumps, align 4, !tbaa !65
  store i32 %64, ptr @flag_crossjumping, align 4, !tbaa !65
  store i32 %64, ptr @flag_optimize_sibling_calls, align 4, !tbaa !65
  store i32 %64, ptr @flag_cse_follow_jumps, align 4, !tbaa !65
  store i32 %64, ptr @flag_gcse, align 4, !tbaa !65
  store i32 %64, ptr @flag_expensive_optimizations, align 4, !tbaa !65
  store i32 %64, ptr @flag_rerun_cse_after_loop, align 4, !tbaa !65
  store i32 %64, ptr @flag_caller_saves, align 4, !tbaa !65
  store i32 %64, ptr @flag_peephole2, align 4, !tbaa !65
  %65 = load i32, ptr @optimize_size, align 4
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %63, i1 %66, i1 false, !prof !96
  %68 = zext i1 %67 to i32
  store i32 %68, ptr @flag_schedule_insns, align 4, !tbaa !65
  store i32 %64, ptr @flag_schedule_insns_after_reload, align 4, !tbaa !65
  store i32 %64, ptr @flag_regmove, align 4, !tbaa !65
  store i32 %64, ptr @flag_strict_aliasing, align 4, !tbaa !65
  store i32 %64, ptr @flag_strict_overflow, align 4, !tbaa !65
  store i32 %64, ptr @flag_reorder_blocks, align 4, !tbaa !65
  store i32 %64, ptr @flag_reorder_functions, align 4, !tbaa !65
  store i32 %64, ptr @flag_tree_vrp, align 4, !tbaa !65
  store i32 %64, ptr @flag_tree_builtin_call_dce, align 4, !tbaa !65
  store i32 %64, ptr @flag_tree_pre, align 4, !tbaa !65
  store i32 %64, ptr @flag_tree_switch_conversion, align 4, !tbaa !65
  store i32 %64, ptr @flag_ipa_cp, align 4, !tbaa !65
  store i32 %64, ptr @flag_ipa_sra, align 4, !tbaa !65
  %69 = load i32, ptr @decode_options.initial_max_fields_for_field_sensitive, align 4
  %70 = select i1 %63, i32 100, i32 %69, !prof !96
  tail call void @set_param_value(ptr noundef nonnull @.str.5, i32 noundef %70) #26
  %71 = load i32, ptr @decode_options.initial_loop_invariant_max_bbs_in_loop, align 4
  %72 = select i1 %63, i32 %71, i32 1000, !prof !96
  tail call void @set_param_value(ptr noundef nonnull @.str.6, i32 noundef %72) #26
  %73 = load i32, ptr @optimize, align 4, !tbaa !65
  %74 = icmp sgt i32 %73, 2
  %75 = zext i1 %74 to i32
  store i32 %75, ptr @flag_predictive_commoning, align 4, !tbaa !65
  store i32 %75, ptr @flag_inline_functions, align 4, !tbaa !65
  store i32 %75, ptr @flag_unswitch_loops, align 4, !tbaa !65
  store i32 %75, ptr @flag_gcse_after_reload, align 4, !tbaa !65
  store i32 %75, ptr @flag_tree_vectorize, align 4, !tbaa !65
  store i32 %75, ptr @flag_ipa_cp_clone, align 4, !tbaa !65
  br i1 %74, label %76, label %77, !prof !96

76:                                               ; preds = %59
  store i32 1, ptr @flag_ipa_cp, align 4, !tbaa !65
  br label %77

77:                                               ; preds = %76, %59
  %78 = icmp slt i32 %73, 2
  %79 = zext i1 %78 to i32
  store i32 %79, ptr @align_loops, align 4, !tbaa !65
  store i32 %79, ptr @align_jumps, align 4, !tbaa !65
  store i32 %79, ptr @align_labels, align 4, !tbaa !65
  store i32 %79, ptr @align_functions, align 4, !tbaa !65
  %80 = load i32, ptr @optimize_size, align 4, !tbaa !65
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82, !prof !96

82:                                               ; preds = %77
  store i32 1, ptr @flag_inline_functions, align 4, !tbaa !65
  store i32 1, ptr @optimize_size, align 4, !tbaa !65
  br i1 %74, label %83, label %86

83:                                               ; preds = %82
  store i32 2, ptr @optimize, align 4, !tbaa !65
  br label %86

84:                                               ; preds = %77
  %85 = load i32, ptr @decode_options.initial_min_crossjump_insns, align 4, !tbaa !65
  br label %86

86:                                               ; preds = %82, %83, %84
  %87 = phi i32 [ %85, %84 ], [ 1, %83 ], [ 1, %82 ]
  tail call void @set_param_value(ptr noundef nonnull @.str.7, i32 noundef %87) #26
  %88 = load i1, ptr @decode_options.first_time_p, align 1
  br i1 %88, label %93, label %89, !prof !91

89:                                               ; preds = %86
  store i32 1, ptr @flag_signed_char, align 4, !tbaa !65
  store i32 2, ptr @flag_short_enums, align 4, !tbaa !65
  %90 = load i32, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 3), align 8, !tbaa !129
  store i32 %90, ptr @target_flags, align 4, !tbaa !65
  %91 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 109), align 8, !tbaa !130
  %92 = zext i8 %91 to i32
  store i32 %92, ptr @flag_unwind_tables, align 4, !tbaa !65
  br label %93

93:                                               ; preds = %89, %86
  tail call void @lto_clear_user_options() #26
  %94 = load i32, ptr @optimize, align 4, !tbaa !65
  %95 = load i32, ptr @optimize_size, align 4, !tbaa !65
  tail call void @optimization_options(i32 noundef %94, i32 noundef %95) #26
  tail call fastcc void @handle_options(i32 noundef %0, ptr noundef %1, i32 noundef %20) #25
  %96 = load ptr, ptr @dump_base_name, align 8, !tbaa !85
  %97 = icmp eq ptr %96, null
  br i1 %97, label %130, label %98, !prof !96

98:                                               ; preds = %93
  %99 = load i8, ptr %96, align 1, !tbaa !69
  %100 = icmp eq i8 %99, 47
  br i1 %100, label %130, label %101

101:                                              ; preds = %98
  %102 = load ptr, ptr @dump_dir_name, align 8, !tbaa !85
  %103 = icmp eq ptr %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull %102, ptr noundef nonnull %96, ptr noundef null) #26
  store ptr %105, ptr @dump_base_name, align 8, !tbaa !85
  br label %130

106:                                              ; preds = %101
  %107 = load ptr, ptr @aux_base_name, align 8, !tbaa !85
  %108 = icmp eq ptr %107, null
  br i1 %108, label %130, label %109

109:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %110 = call fastcc i32 @base_of_path(ptr noundef nonnull %107, ptr noundef nonnull %3) #25
  %111 = load ptr, ptr @aux_base_name, align 8, !tbaa !85
  %112 = load ptr, ptr %3, align 8, !tbaa !85
  %113 = icmp eq ptr %111, %112
  br i1 %113, label %129, label %114

114:                                              ; preds = %109
  %115 = ptrtoint ptr %112 to i64
  %116 = ptrtoint ptr %111 to i64
  %117 = sub i64 %115, %116
  %118 = load ptr, ptr @dump_base_name, align 8, !tbaa !85
  %119 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %118) #25
  %120 = shl i64 %117, 32
  %121 = ashr exact i64 %120, 32
  %122 = add nsw i64 %121, 1
  %123 = add i64 %122, %119
  %124 = tail call ptr @xmalloc(i64 noundef %123) #26
  %125 = load ptr, ptr @aux_base_name, align 8, !tbaa !85
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %124, ptr align 1 %125, i64 %121, i1 false)
  %126 = getelementptr inbounds i8, ptr %124, i64 %121
  %127 = load ptr, ptr @dump_base_name, align 8, !tbaa !85
  %128 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %126, ptr noundef nonnull dereferenceable(1) %127) #25
  store ptr %124, ptr @dump_base_name, align 8, !tbaa !85
  br label %129

129:                                              ; preds = %114, %109
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  br label %130

130:                                              ; preds = %104, %129, %106, %98, %93
  %131 = load i32, ptr @flag_unit_at_a_time, align 4, !tbaa !65
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %135, label %133, !prof !91

133:                                              ; preds = %130
  %134 = load i32, ptr @flag_toplevel_reorder, align 4
  br label %144

135:                                              ; preds = %130
  %136 = load i32, ptr @flag_section_anchors, align 4, !tbaa !65
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.8) #26
  br label %139

139:                                              ; preds = %138, %135
  store i32 0, ptr @flag_section_anchors, align 4, !tbaa !65
  %140 = load i32, ptr @flag_toplevel_reorder, align 4, !tbaa !65
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.9) #26
  br label %143

143:                                              ; preds = %142, %139
  store i32 0, ptr @flag_toplevel_reorder, align 4, !tbaa !65
  br label %144

144:                                              ; preds = %133, %143
  %145 = phi i32 [ %134, %133 ], [ 0, %143 ]
  %146 = load i32, ptr @optimize, align 4, !tbaa !65
  %147 = icmp eq i32 %146, 0
  %148 = icmp eq i32 %145, 2
  %149 = select i1 %147, i1 %148, i1 false
  %150 = load i32, ptr @flag_section_anchors, align 4
  %151 = icmp ne i32 %150, 1
  %152 = select i1 %149, i1 %151, i1 false
  br i1 %152, label %153, label %154, !prof !131

153:                                              ; preds = %144
  store i32 0, ptr @flag_toplevel_reorder, align 4, !tbaa !65
  br label %159

154:                                              ; preds = %144
  %155 = icmp eq i32 %145, 0
  br i1 %155, label %156, label %160, !prof !132

156:                                              ; preds = %154
  %157 = icmp eq i32 %150, 1
  br i1 %157, label %158, label %159

158:                                              ; preds = %156
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.10) #26
  br label %159

159:                                              ; preds = %153, %158, %156
  store i32 0, ptr @flag_section_anchors, align 4, !tbaa !65
  br label %160

160:                                              ; preds = %159, %154
  %161 = load i1, ptr @decode_options.first_time_p, align 1
  br i1 %161, label %171, label %162, !prof !91

162:                                              ; preds = %160
  %163 = load i32, ptr @flag_pie, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %166, label %165, !prof !96

165:                                              ; preds = %162
  store i32 %163, ptr @flag_pic, align 4, !tbaa !65
  br label %170

166:                                              ; preds = %162
  %167 = load i32, ptr @flag_pic, align 4, !tbaa !65
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %170, label %169, !prof !133

169:                                              ; preds = %166
  store i32 1, ptr @flag_shlib, align 4, !tbaa !65
  br label %170

170:                                              ; preds = %165, %169, %166
  store i1 true, ptr @decode_options.first_time_p, align 1
  br label %171

171:                                              ; preds = %170, %160
  %172 = load i32, ptr @optimize, align 4, !tbaa !65
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %175, !prof !91

174:                                              ; preds = %171
  store i32 0, ptr @warn_inline, align 4, !tbaa !65
  store i32 1, ptr @flag_no_inline, align 4, !tbaa !65
  br label %175

175:                                              ; preds = %174, %171
  %176 = load i32, ptr @flag_reorder_blocks_and_partition, align 4
  %177 = icmp eq i32 %176, 0
  %178 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 110), align 1
  %179 = icmp ne i8 %178, 0
  %180 = select i1 %177, i1 true, i1 %179
  br i1 %180, label %183, label %181, !prof !134

181:                                              ; preds = %175
  %182 = load i32, ptr @input_location, align 4, !tbaa !65
  tail call void (i32, ptr, ...) @inform(i32 noundef %182, ptr noundef nonnull @.str.13) #26
  store i32 0, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !65
  store i32 1, ptr @flag_reorder_blocks, align 4, !tbaa !65
  br label %183

183:                                              ; preds = %181, %175
  %184 = load i32, ptr @flag_sel_sched_pipelining, align 4, !tbaa !65
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %187, !prof !96

186:                                              ; preds = %183
  store i32 0, ptr @flag_sel_sched_pipelining_outer_loops, align 4, !tbaa !65
  br label %187

187:                                              ; preds = %186, %183
  %188 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 96), align 8, !tbaa !117
  %189 = icmp eq ptr %188, null
  %190 = load i32, ptr @flag_ira_algorithm, align 4
  %191 = icmp eq i32 %190, 0
  %192 = select i1 %189, i1 %191, i1 false
  br i1 %192, label %193, label %195, !prof !135

193:                                              ; preds = %187
  %194 = load i32, ptr @input_location, align 4, !tbaa !65
  tail call void (i32, ptr, ...) @inform(i32 noundef %194, ptr noundef nonnull @.str.14) #26
  store i32 1, ptr @flag_ira_algorithm, align 4, !tbaa !65
  br label %195

195:                                              ; preds = %193, %187
  %196 = load i32, ptr @flag_conserve_stack, align 4, !tbaa !65
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %211, label %198, !prof !96

198:                                              ; preds = %195
  %199 = load ptr, ptr @compiler_params, align 8, !tbaa !85
  %200 = getelementptr inbounds %struct.param_info, ptr %199, i64 21, i32 2
  %201 = load i8, ptr %200, align 4, !tbaa !136
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = getelementptr inbounds %struct.param_info, ptr %199, i64 21, i32 1
  store i32 100, ptr %204, align 8, !tbaa !109
  br label %205

205:                                              ; preds = %203, %198
  %206 = getelementptr inbounds %struct.param_info, ptr %199, i64 22, i32 2
  %207 = load i8, ptr %206, align 4, !tbaa !136
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %205
  %210 = getelementptr inbounds %struct.param_info, ptr %199, i64 22, i32 1
  store i32 40, ptr %210, align 8, !tbaa !109
  br label %211

211:                                              ; preds = %205, %209, %195
  %212 = load i32, ptr @flag_lto, align 4, !tbaa !65
  %213 = icmp ne i32 %212, 0
  %214 = load i32, ptr @flag_whopr, align 4
  %215 = icmp ne i32 %214, 0
  %216 = select i1 %213, i1 true, i1 %215
  br i1 %216, label %217, label %224, !prof !137

217:                                              ; preds = %211
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.15) #26
  %218 = load i32, ptr @flag_lto, align 4, !tbaa !65
  %219 = load i32, ptr @flag_whopr, align 4
  %220 = icmp ne i32 %218, 0
  %221 = icmp ne i32 %219, 0
  %222 = select i1 %220, i1 %221, i1 false
  br i1 %222, label %223, label %224, !prof !138

223:                                              ; preds = %217
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.16) #26
  br label %224

224:                                              ; preds = %211, %223, %217
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @read_integral_parameter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @set_param_value(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @lto_clear_user_options() local_unnamed_addr #3

; Function Attrs: optsize
declare void @optimization_options(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @handle_options(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !86 !PGOFuncName !139 {
  %4 = icmp ugt i32 %0, 1
  br i1 %4, label %5, label %30, !prof !111

5:                                                ; preds = %3, %26
  %6 = phi i32 [ %28, %26 ], [ 1, %3 ]
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %1, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !85
  %10 = load i8, ptr %9, align 1, !tbaa !69
  %11 = icmp eq i8 %10, 45
  br i1 %11, label %12, label %16, !prof !140

12:                                               ; preds = %5
  %13 = getelementptr inbounds i8, ptr %9, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !69
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %22, !prof !141

16:                                               ; preds = %12, %5
  %17 = load ptr, ptr @main_input_filename, align 8, !tbaa !85
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21, !prof !96

19:                                               ; preds = %16
  store ptr %9, ptr @main_input_filename, align 8, !tbaa !85
  %20 = tail call fastcc i32 @base_of_path(ptr noundef nonnull %9, ptr noundef nonnull @main_input_basename) #25
  store i32 %20, ptr @main_input_baselength, align 4, !tbaa !65
  br label %21

21:                                               ; preds = %19, %16
  tail call fastcc void @add_input_filename(ptr noundef nonnull %9) #25
  br label %26

22:                                               ; preds = %12
  %23 = tail call fastcc i32 @handle_option(ptr noundef nonnull %8, i32 noundef %2) #25
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26, !prof !141

25:                                               ; preds = %22
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.3, ptr noundef nonnull %9) #26
  br label %26

26:                                               ; preds = %22, %25, %21
  %27 = phi i32 [ 1, %21 ], [ %23, %22 ], [ 1, %25 ]
  %28 = add i32 %27, %6
  %29 = icmp ult i32 %28, %0
  br i1 %29, label %5, label %30, !prof !142, !llvm.loop !143

30:                                               ; preds = %26, %3
  ret void
}

; Function Attrs: optsize
declare ptr @concat(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: optsize
declare void @inform(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_input_filename(ptr noundef %0) unnamed_addr #0 !prof !86 !PGOFuncName !144 {
  %2 = load i32, ptr @num_in_fnames, align 4, !tbaa !65
  %3 = add i32 %2, 1
  store i32 %3, ptr @num_in_fnames, align 4, !tbaa !65
  %4 = load ptr, ptr @in_fnames, align 8, !tbaa !85
  %5 = zext i32 %3 to i64
  %6 = shl nuw nsw i64 %5, 3
  %7 = tail call ptr @xrealloc(ptr noundef %4, i64 noundef %6) #26
  store ptr %7, ptr @in_fnames, align 8, !tbaa !85
  %8 = load i32, ptr @num_in_fnames, align 4, !tbaa !65
  %9 = add i32 %8, -1
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds ptr, ptr %7, i64 %10
  store ptr %0, ptr %11, align 8, !tbaa !85
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @handle_option(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !145 !PGOFuncName !146 {
  %3 = load ptr, ptr %0, align 8, !tbaa !85
  %4 = getelementptr inbounds i8, ptr %3, i64 1
  %5 = or i32 %1, 3145728
  %6 = tail call i64 @find_opt(ptr noundef nonnull %4, i32 noundef %5) #26
  %7 = load i32, ptr @cl_options_count, align 4, !tbaa !65
  %8 = zext i32 %7 to i64
  %9 = icmp eq i64 %6, %8
  br i1 %9, label %10, label %40, !prof !141

10:                                               ; preds = %2
  %11 = load i8, ptr %4, align 1, !tbaa !69
  switch i8 %11, label %150 [
    i8 87, label %12
    i8 102, label %12
    i8 109, label %12
  ]

12:                                               ; preds = %10, %10, %10
  %13 = getelementptr inbounds i8, ptr %3, i64 2
  %14 = load i8, ptr %13, align 1, !tbaa !69
  %15 = icmp eq i8 %14, 110
  br i1 %15, label %16, label %150

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, ptr %3, i64 3
  %18 = load i8, ptr %17, align 1, !tbaa !69
  %19 = icmp eq i8 %18, 111
  br i1 %19, label %20, label %150

20:                                               ; preds = %16
  %21 = getelementptr inbounds i8, ptr %3, i64 4
  %22 = load i8, ptr %21, align 1, !tbaa !69
  %23 = icmp eq i8 %22, 45
  br i1 %23, label %24, label %150

24:                                               ; preds = %20
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #25
  %26 = add i64 %25, -2
  %27 = tail call ptr @xmalloc(i64 noundef %26) #26
  store i8 45, ptr %27, align 1, !tbaa !69
  %28 = load i8, ptr %4, align 1, !tbaa !69
  %29 = getelementptr inbounds i8, ptr %27, i64 1
  store i8 %28, ptr %29, align 1, !tbaa !69
  %30 = getelementptr inbounds i8, ptr %27, i64 2
  %31 = getelementptr inbounds i8, ptr %3, i64 5
  %32 = add i64 %25, -4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %30, ptr nonnull align 1 %31, i64 %32, i1 false)
  %33 = tail call i64 @find_opt(ptr noundef nonnull %29, i32 noundef %5) #26
  %34 = icmp eq i64 %33, %6
  br i1 %34, label %35, label %43

35:                                               ; preds = %24
  %36 = load i8, ptr %29, align 1, !tbaa !69
  %37 = icmp eq i8 %36, 87
  br i1 %37, label %38, label %147

38:                                               ; preds = %35
  %39 = load ptr, ptr %0, align 8, !tbaa !85
  tail call fastcc void @postpone_unknown_option_warning(ptr noundef %39) #25
  br label %147

40:                                               ; preds = %2
  %41 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %6, i32 5
  %42 = load i32, ptr %41, align 8, !tbaa !147
  br label %48

43:                                               ; preds = %24
  %44 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %33, i32 5
  %45 = load i32, ptr %44, align 8, !tbaa !147
  %46 = and i32 %45, 134217728
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %147

48:                                               ; preds = %40, %43
  %49 = phi i32 [ %45, %43 ], [ %42, %40 ]
  %50 = phi ptr [ %27, %43 ], [ %3, %40 ]
  %51 = phi ptr [ %27, %43 ], [ null, %40 ]
  %52 = phi i64 [ 4, %43 ], [ 1, %40 ]
  %53 = phi i32 [ 0, %43 ], [ 1, %40 ]
  %54 = phi i64 [ %33, %43 ], [ %6, %40 ]
  %55 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %54
  %56 = and i32 %49, 8388608
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58, !prof !150

58:                                               ; preds = %48
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.17, ptr noundef %50) #26
  br label %144

59:                                               ; preds = %48
  %60 = and i32 %49, 33554432
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %77, label %62, !prof !137

62:                                               ; preds = %59
  %63 = load ptr, ptr %0, align 8, !tbaa !85
  %64 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %54, i32 3
  %65 = load i8, ptr %64, align 2, !tbaa !151
  %66 = zext i8 %65 to i64
  %67 = getelementptr inbounds i8, ptr %63, i64 %66
  %68 = getelementptr inbounds i8, ptr %67, i64 %52
  %69 = load i8, ptr %68, align 1, !tbaa !69
  %70 = icmp eq i8 %69, 0
  %71 = and i32 %49, 268435456
  %72 = icmp eq i32 %71, 0
  %73 = and i1 %72, %70
  br i1 %73, label %74, label %83, !prof !152

74:                                               ; preds = %62
  %75 = and i32 %49, 67108864
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %83, label %80, !prof !91

77:                                               ; preds = %59
  %78 = and i32 %49, 67108864
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %83, label %80, !prof !134

80:                                               ; preds = %77, %74
  %81 = getelementptr inbounds ptr, ptr %0, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !85
  br label %83

83:                                               ; preds = %80, %74, %77, %62
  %84 = phi ptr [ %68, %62 ], [ null, %77 ], [ null, %74 ], [ %82, %80 ]
  %85 = phi i32 [ 1, %62 ], [ 1, %77 ], [ 1, %74 ], [ 2, %80 ]
  %86 = and i32 %49, %5
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90, !prof !141

88:                                               ; preds = %83
  %89 = load ptr, ptr %0, align 8, !tbaa !85
  tail call fastcc void @complain_wrong_lang(ptr noundef %89, ptr noundef nonnull %55, i32 noundef %1) #25
  br label %144

90:                                               ; preds = %83
  %91 = and i32 %49, 1048576
  %92 = icmp ne i32 %91, 0
  %93 = and i32 %49, 255
  %94 = icmp ne i32 %93, 0
  %95 = and i1 %92, %94
  %96 = and i32 %49, %1
  %97 = icmp eq i32 %96, 0
  %98 = and i1 %97, %95
  br i1 %98, label %99, label %101, !prof !153

99:                                               ; preds = %90
  %100 = load ptr, ptr %0, align 8, !tbaa !85
  tail call fastcc void @complain_wrong_lang(ptr noundef %100, ptr noundef nonnull %55, i32 noundef %1) #25
  br label %144

101:                                              ; preds = %90
  %102 = icmp eq ptr %84, null
  br i1 %102, label %103, label %111, !prof !154

103:                                              ; preds = %101
  %104 = and i32 %49, 100663296
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %119, label %106, !prof !134

106:                                              ; preds = %103
  %107 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 7), align 8, !tbaa !155
  %108 = tail call zeroext i8 %107(ptr noundef %50, i64 noundef %54) #26
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %144

110:                                              ; preds = %106
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.18, ptr noundef %50) #26
  br label %144

111:                                              ; preds = %101
  %112 = and i32 %49, 536870912
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %119, label %114, !prof !156

114:                                              ; preds = %111
  %115 = tail call fastcc i32 @integral_argument(ptr noundef nonnull %84) #25
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %117, label %119, !prof !91

117:                                              ; preds = %114
  %118 = load ptr, ptr %55, align 8, !tbaa !157
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.19, ptr noundef %118) #26
  br label %144

119:                                              ; preds = %103, %114, %111
  %120 = phi i32 [ %115, %114 ], [ %53, %111 ], [ %53, %103 ]
  %121 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %54, i32 6
  %122 = load ptr, ptr %121, align 8, !tbaa !158
  %123 = icmp eq ptr %122, null
  br i1 %123, label %125, label %124, !prof !159

124:                                              ; preds = %119
  tail call void @set_option(ptr noundef nonnull %55, i32 noundef %120, ptr noundef %84) #25
  br label %125

125:                                              ; preds = %124, %119
  br i1 %97, label %131, label %126, !prof !160

126:                                              ; preds = %125
  %127 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 6), align 8, !tbaa !161
  %128 = tail call i32 %127(i64 noundef %54, ptr noundef %84, i32 noundef %120) #26
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %144, label %130, !prof !91

130:                                              ; preds = %126
  tail call void @lto_register_user_option(i64 noundef %54, ptr noundef %84, i32 noundef %120, i32 noundef %1) #26
  br label %131

131:                                              ; preds = %130, %125
  %132 = and i32 %49, 2097152
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %138, label %134, !prof !141

134:                                              ; preds = %131
  %135 = tail call fastcc i32 @common_handle_option(i64 noundef %54, ptr noundef %84, i32 noundef %120, i32 noundef %1) #25, !range !83
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %144, label %137, !prof !141

137:                                              ; preds = %134
  tail call void @lto_register_user_option(i64 noundef %54, ptr noundef %84, i32 noundef %120, i32 noundef 2097152) #26
  br label %138

138:                                              ; preds = %131, %137
  br i1 %92, label %139, label %144, !prof !141

139:                                              ; preds = %138
  %140 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 5), align 8, !tbaa !162
  %141 = tail call zeroext i8 %140(i64 noundef %54, ptr noundef %84, i32 noundef %120) #26
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %139
  tail call void @lto_register_user_option(i64 noundef %54, ptr noundef %84, i32 noundef %120, i32 noundef 1048576) #26
  br label %144

144:                                              ; preds = %126, %134, %139, %138, %143, %106, %110, %117, %99, %88, %58
  %145 = phi i32 [ 1, %58 ], [ %85, %106 ], [ %85, %110 ], [ %85, %117 ], [ %85, %143 ], [ %85, %138 ], [ %85, %99 ], [ %85, %88 ], [ 0, %139 ], [ 0, %134 ], [ 0, %126 ]
  %146 = icmp eq ptr %51, null
  br i1 %146, label %150, label %147, !prof !163

147:                                              ; preds = %35, %43, %38, %144
  %148 = phi i32 [ %145, %144 ], [ 0, %43 ], [ 1, %38 ], [ 0, %35 ]
  %149 = phi ptr [ %51, %144 ], [ %27, %43 ], [ %27, %38 ], [ %27, %35 ]
  tail call void @free(ptr noundef nonnull %149) #25
  br label %150

150:                                              ; preds = %12, %16, %20, %10, %144, %147
  %151 = phi i32 [ %145, %144 ], [ %148, %147 ], [ 0, %10 ], [ 0, %20 ], [ 0, %16 ], [ 0, %12 ]
  ret i32 %151
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @find_opt(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @postpone_unknown_option_warning(ptr noundef %0) unnamed_addr #0 !prof !64 !PGOFuncName !164 {
  tail call fastcc void @VEC_const_char_p_heap_safe_push(ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @complain_wrong_lang(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !64 !PGOFuncName !165 {
  %4 = and i32 %2, 32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.cl_option, ptr %1, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !147
  %9 = tail call fastcc ptr @write_langs(i32 noundef %8) #25
  %10 = tail call fastcc ptr @write_langs(i32 noundef %2) #25
  %11 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.20, ptr noundef %0, ptr noundef %9, ptr noundef %10) #26
  tail call void @free(ptr noundef %9) #25
  tail call void @free(ptr noundef %10) #25
  br label %12

12:                                               ; preds = %3, %6
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(read) uwtable
define internal fastcc i32 @integral_argument(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !86 !PGOFuncName !166 {
  %2 = load i8, ptr %0, align 1, !tbaa !69
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %16, label %8, !prof !167

4:                                                ; preds = %8
  %5 = getelementptr inbounds i8, ptr %10, i64 1
  %6 = load i8, ptr %5, align 1, !tbaa !69
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %16, label %8, !prof !168, !llvm.loop !169

8:                                                ; preds = %1, %4
  %9 = phi i8 [ %6, %4 ], [ %2, %1 ]
  %10 = phi ptr [ %5, %4 ], [ %0, %1 ]
  %11 = zext i8 %9 to i64
  %12 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !170
  %14 = and i16 %13, 4
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %18, label %4, !prof !171

16:                                               ; preds = %4, %1
  %17 = tail call i32 @atoi(ptr nocapture noundef nonnull %0) #25
  br label %18

18:                                               ; preds = %8, %16
  %19 = phi i32 [ %17, %16 ], [ -1, %8 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_option(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #11 !prof !172 {
  %4 = getelementptr inbounds %struct.cl_option, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !158
  %6 = icmp eq ptr %5, null
  br i1 %6, label %40, label %7, !prof !135

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cl_option, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !173
  switch i32 %9, label %40 [
    i32 0, label %10
    i32 1, label %11
    i32 2, label %18
    i32 3, label %18
    i32 4, label %39
  ], !prof !174

10:                                               ; preds = %7
  store i32 %1, ptr %5, align 4, !tbaa !65
  br label %40

11:                                               ; preds = %7
  %12 = icmp eq i32 %1, 0
  %13 = getelementptr inbounds %struct.cl_option, ptr %0, i64 0, i32 8
  %14 = load i32, ptr %13, align 4, !tbaa !175
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = select i1 %12, i32 %16, i32 %14
  store i32 %17, ptr %5, align 4, !tbaa !65
  br label %40

18:                                               ; preds = %7, %7
  %19 = icmp ne i32 %1, 0
  %20 = icmp ne i32 %9, 3
  %21 = xor i1 %19, %20
  %22 = getelementptr inbounds %struct.cl_option, ptr %0, i64 0, i32 8
  %23 = load i32, ptr %22, align 4, !tbaa !175
  br i1 %21, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, ptr %5, align 4, !tbaa !65
  %26 = or i32 %25, %23
  br label %31

27:                                               ; preds = %18
  %28 = xor i32 %23, -1
  %29 = load i32, ptr %5, align 4, !tbaa !65
  %30 = and i32 %29, %28
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi i32 [ %30, %27 ], [ %26, %24 ]
  store i32 %32, ptr %5, align 4, !tbaa !65
  %33 = icmp eq ptr %5, @target_flags
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.cl_option, ptr %0, i64 0, i32 8
  %36 = load i32, ptr %35, align 4, !tbaa !175
  %37 = load i32, ptr @target_flags_explicit, align 4, !tbaa !65
  %38 = or i32 %37, %36
  store i32 %38, ptr @target_flags_explicit, align 4, !tbaa !65
  br label %40

39:                                               ; preds = %7
  store ptr %2, ptr %5, align 8, !tbaa !85
  br label %40

40:                                               ; preds = %31, %34, %3, %7, %39, %11, %10
  ret void
}

; Function Attrs: optsize
declare void @lto_register_user_option(i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @common_handle_option(i64 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !145 !PGOFuncName !176 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = trunc i64 %0 to i32
  switch i32 %7, label %406 [
    i32 3, label %8
    i32 867, label %9
    i32 411, label %10
    i32 0, label %10
    i32 629, label %35
    i32 4, label %35
    i32 412, label %39
    i32 1, label %39
    i32 701, label %120
    i32 5, label %120
    i32 12, label %121
    i32 27, label %411
    i32 28, label %411
    i32 81, label %123
    i32 120, label %124
    i32 121, label %124
    i32 99, label %126
    i32 184, label %128
    i32 185, label %129
    i32 187, label %130
    i32 188, label %133
    i32 218, label %134
    i32 239, label %135
    i32 240, label %135
    i32 241, label %136
    i32 242, label %137
    i32 244, label %144
    i32 245, label %145
    i32 246, label %146
    i32 255, label %147
    i32 257, label %148
    i32 259, label %149
    i32 261, label %150
    i32 286, label %151
    i32 293, label %152
    i32 292, label %153
    i32 324, label %154
    i32 323, label %155
    i32 326, label %156
    i32 335, label %157
    i32 336, label %171
    i32 343, label %174
    i32 369, label %177
    i32 377, label %186
    i32 683, label %187
    i32 380, label %188
    i32 435, label %189
    i32 436, label %189
    i32 441, label %191
    i32 440, label %192
    i32 487, label %193
    i32 518, label %196
    i32 522, label %207
    i32 529, label %208
    i32 528, label %209
    i32 537, label %210
    i32 433, label %211
    i32 539, label %212
    i32 543, label %214
    i32 542, label %216
    i32 541, label %261
    i32 540, label %263
    i32 544, label %276
    i32 704, label %277
    i32 705, label %294
    i32 546, label %295
    i32 547, label %299
    i32 597, label %301
    i32 598, label %301
    i32 586, label %302
    i32 585, label %303
    i32 584, label %306
    i32 615, label %307
    i32 614, label %321
    i32 616, label %325
    i32 617, label %328
    i32 618, label %334
    i32 676, label %337
    i32 638, label %338
    i32 452, label %356
    i32 455, label %366
    i32 458, label %380
    i32 640, label %381
    i32 443, label %382
    i32 444, label %383
    i32 532, label %384
    i32 686, label %385
    i32 398, label %386
    i32 681, label %387
    i32 720, label %388
    i32 722, label %389
    i32 724, label %390
    i32 726, label %396
    i32 730, label %397
    i32 731, label %397
    i32 734, label %400
    i32 735, label %401
    i32 736, label %401
    i32 832, label %404
    i32 835, label %405
    i32 593, label %411
    i32 317, label %411
    i32 469, label %411
    i32 565, label %411
    i32 588, label %411
    i32 623, label %411
    i32 671, label %411
    i32 386, label %411
    i32 665, label %411
    i32 670, label %411
    i32 215, label %411
    i32 693, label %411
  ], !prof !177

8:                                                ; preds = %4
  tail call fastcc void @handle_param(ptr noundef %1) #25
  br label %411

9:                                                ; preds = %4
  store i1 true, ptr @common_handle_option.verbose, align 1
  br label %411

10:                                               ; preds = %4, %4
  %11 = load i32, ptr @cl_lang_count, align 4, !tbaa !65
  %12 = shl nsw i32 -1, %11
  %13 = xor i32 %12, -1
  %14 = load i1, ptr @common_handle_option.verbose, align 1
  %15 = zext i1 %14 to i32
  %16 = load i32, ptr @extra_warnings, align 4, !tbaa !65
  %17 = or i32 %16, %15
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 1073741824, i32 0
  %20 = icmp eq i32 %11, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %10, %21
  %22 = phi i32 [ %27, %21 ], [ 0, %10 ]
  %23 = shl nuw i32 1, %22
  %24 = xor i32 %23, -1
  %25 = and i32 %24, %13
  %26 = or i32 %25, %19
  tail call fastcc void @print_specific_help(i32 noundef %23, i32 noundef %26, i32 noundef 0) #25
  %27 = add nuw i32 %22, 1
  %28 = icmp eq i32 %27, %11
  br i1 %28, label %29, label %21, !llvm.loop !178

29:                                               ; preds = %21, %10
  tail call fastcc void @print_specific_help(i32 noundef 0, i32 noundef %19, i32 noundef %13) #25
  br label %30

30:                                               ; preds = %29, %30
  %31 = phi i32 [ 131072, %29 ], [ %32, %30 ]
  tail call fastcc void @print_specific_help(i32 noundef %31, i32 noundef %19, i32 noundef 0) #25
  %32 = shl nuw nsw i32 %31, 1
  %33 = icmp ult i32 %31, 1048577
  br i1 %33, label %30, label %34, !llvm.loop !179

34:                                               ; preds = %30
  store i8 1, ptr @exit_after_options, align 1, !tbaa !69
  br label %411

35:                                               ; preds = %4, %4
  tail call fastcc void @print_specific_help(i32 noundef 1048576, i32 noundef 1073741824, i32 noundef 0) #25
  store i8 1, ptr @exit_after_options, align 1, !tbaa !69
  %36 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 6), align 8, !tbaa !180
  %37 = icmp eq ptr %36, null
  br i1 %37, label %411, label %38

38:                                               ; preds = %35
  tail call void %36() #26
  br label %411

39:                                               ; preds = %4, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  store i32 0, ptr %5, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  store i32 0, ptr %6, align 4, !tbaa !65
  %40 = load i32, ptr @cl_lang_count, align 4
  %41 = icmp eq i32 %40, 0
  %42 = zext i32 %40 to i64
  br label %43

43:                                               ; preds = %112, %39
  %44 = phi ptr [ %1, %39 ], [ %113, %112 ]
  %45 = load i8, ptr %44, align 1, !tbaa !69
  switch i8 %45, label %48 [
    i8 0, label %114
    i8 94, label %46
  ]

46:                                               ; preds = %43
  %47 = getelementptr inbounds i8, ptr %44, i64 1
  br label %48

48:                                               ; preds = %43, %46
  %49 = phi ptr [ %47, %46 ], [ %44, %43 ]
  %50 = phi ptr [ %6, %46 ], [ %5, %43 ]
  %51 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %49, i32 noundef 44) #25
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %49) #25
  br label %59

55:                                               ; preds = %48
  %56 = ptrtoint ptr %51 to i64
  %57 = ptrtoint ptr %49 to i64
  %58 = sub i64 %56, %57
  br label %59

59:                                               ; preds = %55, %53
  %60 = phi i64 [ %54, %53 ], [ %58, %55 ]
  %61 = trunc i64 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %112, label %63

63:                                               ; preds = %59
  %64 = and i64 %60, 4294967295
  br label %70

65:                                               ; preds = %70
  %66 = add nuw nsw i64 %71, 1
  %67 = getelementptr inbounds [9 x %struct.anon], ptr @common_handle_option.specifics, i64 0, i64 %66
  %68 = load ptr, ptr %67, align 16, !tbaa !181
  %69 = icmp eq i64 %66, 8
  br i1 %69, label %78, label %70, !llvm.loop !183

70:                                               ; preds = %63, %65
  %71 = phi i64 [ 0, %63 ], [ %66, %65 ]
  %72 = phi ptr [ @.str.21, %63 ], [ %68, %65 ]
  %73 = tail call i32 @strncasecmp(ptr noundef nonnull %49, ptr noundef nonnull %72, i64 noundef %64) #25
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %65

75:                                               ; preds = %70
  %76 = getelementptr inbounds [9 x %struct.anon], ptr @common_handle_option.specifics, i64 0, i64 %71, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !184
  br label %78

78:                                               ; preds = %65, %75
  %79 = phi i32 [ %77, %75 ], [ 0, %65 ]
  br i1 %41, label %93, label %80

80:                                               ; preds = %78, %86
  %81 = phi i64 [ %87, %86 ], [ 0, %78 ]
  %82 = getelementptr inbounds [0 x ptr], ptr @lang_names, i64 0, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !85
  %84 = tail call i32 @strncasecmp(ptr noundef nonnull %49, ptr noundef %83, i64 noundef %64) #25
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %80
  %87 = add nuw nsw i64 %81, 1
  %88 = icmp eq i64 %87, %42
  br i1 %88, label %93, label %80, !llvm.loop !185

89:                                               ; preds = %80
  %90 = trunc i64 %81 to i32
  %91 = shl nuw i32 1, %90
  %92 = icmp eq i32 %79, 0
  br i1 %92, label %106, label %98

93:                                               ; preds = %86, %78
  %94 = icmp eq i32 %79, 0
  br i1 %94, label %109, label %95

95:                                               ; preds = %93
  %96 = load i32, ptr %50, align 4, !tbaa !65
  %97 = or i32 %96, %79
  store i32 %97, ptr %50, align 4, !tbaa !65
  br label %111

98:                                               ; preds = %89
  %99 = tail call i32 @strncasecmp(ptr noundef nonnull %49, ptr noundef nonnull @.str.29, i64 noundef %64) #25
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, ptr %50, align 4, !tbaa !65
  %103 = or i32 %102, %91
  store i32 %103, ptr %50, align 4, !tbaa !65
  br label %111

104:                                              ; preds = %98
  %105 = load ptr, ptr @stderr, align 8, !tbaa !85
  tail call void (ptr, ptr, ...) @fnotice(ptr noundef %105, ptr noundef nonnull @.str.30, i32 noundef %61, ptr noundef nonnull %49) #26
  br label %111

106:                                              ; preds = %89
  %107 = load i32, ptr %50, align 4, !tbaa !65
  %108 = or i32 %107, %91
  store i32 %108, ptr %50, align 4, !tbaa !65
  br label %111

109:                                              ; preds = %93
  %110 = load ptr, ptr @stderr, align 8, !tbaa !85
  tail call void (ptr, ptr, ...) @fnotice(ptr noundef %110, ptr noundef nonnull @.str.31, i32 noundef %61, ptr noundef nonnull %49) #26
  br label %111

111:                                              ; preds = %101, %104, %95, %109, %106
  br i1 %52, label %114, label %112

112:                                              ; preds = %59, %111
  %113 = getelementptr inbounds i8, ptr %51, i64 1
  br label %43

114:                                              ; preds = %111, %43
  %115 = load i32, ptr %5, align 4, !tbaa !65
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %114
  %118 = load i32, ptr %6, align 4, !tbaa !65
  tail call fastcc void @print_specific_help(i32 noundef %115, i32 noundef %118, i32 noundef 0) #25
  br label %119

119:                                              ; preds = %117, %114
  store i8 1, ptr @exit_after_options, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  br label %411

120:                                              ; preds = %4, %4
  store i8 1, ptr @exit_after_options, align 1, !tbaa !69
  br label %411

121:                                              ; preds = %4
  %122 = sext i32 %2 to i64
  store i64 %122, ptr @g_switch_value, align 8, !tbaa !186
  store i8 1, ptr @g_switch_set, align 1, !tbaa !69
  br label %411

123:                                              ; preds = %4
  tail call void @enable_warning_as_error(ptr noundef %1, i32 noundef %2, i32 noundef %3) #25
  br label %411

124:                                              ; preds = %4, %4
  %125 = sext i32 %2 to i64
  store i64 %125, ptr @larger_than_size, align 8, !tbaa !186
  store i8 1, ptr @warn_larger_than, align 1, !tbaa !69
  br label %411

126:                                              ; preds = %4
  %127 = sext i32 %2 to i64
  store i64 %127, ptr @frame_larger_than_size, align 8, !tbaa !186
  store i8 1, ptr @warn_frame_larger_than, align 1, !tbaa !69
  br label %411

128:                                              ; preds = %4
  tail call void @set_Wstrict_aliasing(i32 noundef %2) #25
  br label %411

129:                                              ; preds = %4
  store i32 %2, ptr @warn_strict_aliasing, align 4, !tbaa !65
  br label %411

130:                                              ; preds = %4
  %131 = icmp eq i32 %2, 0
  %132 = select i1 %131, i32 0, i32 2
  store i32 %132, ptr @warn_strict_overflow, align 4, !tbaa !65
  br label %411

133:                                              ; preds = %4
  store i32 %2, ptr @warn_strict_overflow, align 4, !tbaa !65
  br label %411

134:                                              ; preds = %4
  store i32 %2, ptr @warn_unused, align 4, !tbaa !65
  br label %411

135:                                              ; preds = %4, %4
  store ptr %1, ptr @aux_info_file_name, align 8, !tbaa !85
  store i32 1, ptr @flag_gen_aux_info, align 4, !tbaa !65
  br label %411

136:                                              ; preds = %4
  store ptr %1, ptr @aux_base_name, align 8, !tbaa !85
  br label %411

137:                                              ; preds = %4
  %138 = tail call ptr @xstrdup(ptr noundef %1) #26
  %139 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %138) #25
  %140 = trunc i64 %139 to i32
  tail call void @strip_off_ending(ptr noundef %138, i32 noundef %140) #26
  %141 = load i8, ptr %138, align 1, !tbaa !69
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %411, label %143

143:                                              ; preds = %137
  store ptr %138, ptr @aux_base_name, align 8, !tbaa !85
  br label %411

144:                                              ; preds = %4
  tail call void @decode_d_option(ptr noundef %1) #26
  br label %411

145:                                              ; preds = %4
  store ptr %1, ptr @dump_base_name, align 8, !tbaa !85
  br label %411

146:                                              ; preds = %4
  store ptr %1, ptr @dump_dir_name, align 8, !tbaa !85
  br label %411

147:                                              ; preds = %4
  store i32 %2, ptr @align_functions, align 4, !tbaa !65
  br label %411

148:                                              ; preds = %4
  store i32 %2, ptr @align_jumps, align 4, !tbaa !65
  br label %411

149:                                              ; preds = %4
  store i32 %2, ptr @align_labels, align 4, !tbaa !65
  br label %411

150:                                              ; preds = %4
  store i32 %2, ptr @align_loops, align 4, !tbaa !65
  br label %411

151:                                              ; preds = %4
  store i1 true, ptr @flag_branch_probabilities_set, align 1
  br label %411

152:                                              ; preds = %4
  tail call void @fix_register(ptr noundef %1, i32 noundef 0, i32 noundef 1) #26
  br label %411

153:                                              ; preds = %4
  tail call void @fix_register(ptr noundef %1, i32 noundef 0, i32 noundef 0) #26
  br label %411

154:                                              ; preds = %4
  tail call void @dbg_cnt_process_opt(ptr noundef %1) #26
  br label %411

155:                                              ; preds = %4
  tail call void @dbg_cnt_list_all_counters() #26
  br label %411

156:                                              ; preds = %4
  tail call void @add_debug_prefix_map(ptr noundef %1) #26
  br label %411

157:                                              ; preds = %4
  %158 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.32) #25
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = load ptr, ptr @global_dc, align 8, !tbaa !85
  %162 = load ptr, ptr %161, align 8, !tbaa !187
  %163 = getelementptr inbounds %struct.pretty_print_info, ptr %162, i64 0, i32 5
  store i32 0, ptr %163, align 4, !tbaa !189
  br label %411

164:                                              ; preds = %157
  %165 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.33) #25
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %412

167:                                              ; preds = %164
  %168 = load ptr, ptr @global_dc, align 8, !tbaa !85
  %169 = load ptr, ptr %168, align 8, !tbaa !187
  %170 = getelementptr inbounds %struct.pretty_print_info, ptr %169, i64 0, i32 5
  store i32 2, ptr %170, align 4, !tbaa !189
  br label %411

171:                                              ; preds = %4
  %172 = load ptr, ptr @global_dc, align 8, !tbaa !85
  %173 = getelementptr inbounds %struct.diagnostic_context, ptr %172, i64 0, i32 5
  store i8 1, ptr %173, align 4, !tbaa !192
  br label %411

174:                                              ; preds = %4
  %175 = tail call i32 @dump_switch_p(ptr noundef %1) #26
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %412, label %411

177:                                              ; preds = %4
  %178 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.34) #25
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  store i32 1, ptr @flag_excess_precision_cmdline, align 4, !tbaa !65
  br label %411

181:                                              ; preds = %177
  %182 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.35) #25
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  store i32 2, ptr @flag_excess_precision_cmdline, align 4, !tbaa !65
  br label %411

185:                                              ; preds = %181
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.36, ptr noundef %1) #26
  br label %411

186:                                              ; preds = %4
  tail call void @set_fast_math_flags(i32 noundef %2) #25
  br label %411

187:                                              ; preds = %4
  tail call void @set_unsafe_math_optimizations_flags(i32 noundef %2) #25
  br label %411

188:                                              ; preds = %4
  tail call void @fix_register(ptr noundef %1, i32 noundef 1, i32 noundef 1) #26
  br label %411

189:                                              ; preds = %4, %4
  %190 = sdiv i32 %2, 2
  tail call void @set_param_value(ptr noundef nonnull @.str.37, i32 noundef %190) #26
  tail call void @set_param_value(ptr noundef nonnull @.str.38, i32 noundef %190) #26
  br label %411

191:                                              ; preds = %4
  tail call fastcc void @add_comma_separated_to_vector(ptr noundef nonnull @flag_instrument_functions_exclude_functions, ptr noundef %1) #25
  br label %411

192:                                              ; preds = %4
  tail call fastcc void @add_comma_separated_to_vector(ptr noundef nonnull @flag_instrument_functions_exclude_files, ptr noundef %1) #25
  br label %411

193:                                              ; preds = %4
  %194 = load ptr, ptr @global_dc, align 8, !tbaa !85
  %195 = load ptr, ptr %194, align 8, !tbaa !187
  tail call void @pp_base_set_line_maximum_length(ptr noundef %195, i32 noundef %2) #26
  br label %411

196:                                              ; preds = %4
  %197 = icmp slt i32 %2, 1
  br i1 %197, label %204, label %198

198:                                              ; preds = %196
  %199 = add nuw i32 %2, 2147483647
  %200 = and i32 %199, %2
  %201 = icmp ne i32 %200, 0
  %202 = icmp ugt i32 %2, 16
  %203 = or i1 %202, %201
  br i1 %203, label %204, label %205

204:                                              ; preds = %198, %196
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.39, i32 noundef %2) #26
  br label %411

205:                                              ; preds = %198
  store i32 %2, ptr @initial_max_fld_align, align 4, !tbaa !65
  %206 = shl nuw nsw i32 %2, 3
  store i32 %206, ptr @maximum_field_alignment, align 4, !tbaa !65
  br label %411

207:                                              ; preds = %4
  store i1 true, ptr @flag_peel_loops_set, align 1
  br label %411

208:                                              ; preds = %4
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.40) #26
  br label %411

209:                                              ; preds = %4
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.40) #26
  br label %411

210:                                              ; preds = %4
  store i1 true, ptr @profile_arc_flag_set, align 1
  br label %411

211:                                              ; preds = %4
  store i1 true, ptr @flag_inline_functions_set, align 1
  br label %411

212:                                              ; preds = %4
  %213 = tail call ptr @xstrdup(ptr noundef %1) #26
  store ptr %213, ptr @profile_data_prefix, align 8, !tbaa !85
  br label %411

214:                                              ; preds = %4
  %215 = tail call ptr @xstrdup(ptr noundef %1) #26
  store ptr %215, ptr @profile_data_prefix, align 8, !tbaa !85
  store i32 1, ptr @flag_profile_use, align 4, !tbaa !65
  br label %216

216:                                              ; preds = %4, %214
  %217 = phi i32 [ %2, %4 ], [ 1, %214 ]
  %218 = load i1, ptr @flag_branch_probabilities_set, align 1
  br i1 %218, label %220, label %219

219:                                              ; preds = %216
  store i32 %217, ptr @flag_branch_probabilities, align 4, !tbaa !65
  br label %220

220:                                              ; preds = %219, %216
  %221 = load i1, ptr @flag_profile_values_set, align 1
  br i1 %221, label %223, label %222

222:                                              ; preds = %220
  store i32 %217, ptr @flag_profile_values, align 4, !tbaa !65
  br label %223

223:                                              ; preds = %222, %220
  %224 = load i1, ptr @flag_unroll_loops_set, align 1
  br i1 %224, label %226, label %225

225:                                              ; preds = %223
  store i32 %217, ptr @flag_unroll_loops, align 4, !tbaa !65
  br label %226

226:                                              ; preds = %225, %223
  %227 = load i1, ptr @flag_peel_loops_set, align 1
  br i1 %227, label %229, label %228

228:                                              ; preds = %226
  store i32 %217, ptr @flag_peel_loops, align 4, !tbaa !65
  br label %229

229:                                              ; preds = %228, %226
  %230 = load i1, ptr @flag_tracer_set, align 1
  br i1 %230, label %232, label %231

231:                                              ; preds = %229
  store i32 %217, ptr @flag_tracer, align 4, !tbaa !65
  br label %232

232:                                              ; preds = %231, %229
  %233 = load i1, ptr @flag_value_profile_transformations_set, align 1
  br i1 %233, label %235, label %234

234:                                              ; preds = %232
  store i32 %217, ptr @flag_value_profile_transformations, align 4, !tbaa !65
  br label %235

235:                                              ; preds = %234, %232
  %236 = load i1, ptr @flag_inline_functions_set, align 1
  br i1 %236, label %238, label %237

237:                                              ; preds = %235
  store i32 %217, ptr @flag_inline_functions, align 4, !tbaa !65
  br label %238

238:                                              ; preds = %237, %235
  %239 = load i1, ptr @flag_ipa_cp_set, align 1
  br i1 %239, label %240, label %242

240:                                              ; preds = %238
  %241 = load i32, ptr @flag_ipa_cp, align 4
  br label %243

242:                                              ; preds = %238
  store i32 %217, ptr @flag_ipa_cp, align 4, !tbaa !65
  br label %243

243:                                              ; preds = %240, %242
  %244 = phi i32 [ %241, %240 ], [ %217, %242 ]
  %245 = load i1, ptr @flag_ipa_cp_clone_set, align 1
  %246 = xor i1 %245, true
  %247 = icmp ne i32 %217, 0
  %248 = and i1 %247, %246
  %249 = icmp ne i32 %244, 0
  %250 = select i1 %248, i1 %249, i1 false
  br i1 %250, label %251, label %252

251:                                              ; preds = %243
  store i32 %217, ptr @flag_ipa_cp_clone, align 4, !tbaa !65
  br label %252

252:                                              ; preds = %251, %243
  %253 = load i1, ptr @flag_predictive_commoning_set, align 1
  br i1 %253, label %255, label %254

254:                                              ; preds = %252
  store i32 %217, ptr @flag_predictive_commoning, align 4, !tbaa !65
  br label %255

255:                                              ; preds = %254, %252
  %256 = load i1, ptr @flag_unswitch_loops_set, align 1
  br i1 %256, label %258, label %257

257:                                              ; preds = %255
  store i32 %217, ptr @flag_unswitch_loops, align 4, !tbaa !65
  br label %258

258:                                              ; preds = %257, %255
  %259 = load i1, ptr @flag_gcse_after_reload_set, align 1
  br i1 %259, label %411, label %260

260:                                              ; preds = %258
  store i32 %217, ptr @flag_gcse_after_reload, align 4, !tbaa !65
  br label %411

261:                                              ; preds = %4
  %262 = tail call ptr @xstrdup(ptr noundef %1) #26
  store ptr %262, ptr @profile_data_prefix, align 8, !tbaa !85
  br label %263

263:                                              ; preds = %4, %261
  %264 = phi i32 [ %2, %4 ], [ 1, %261 ]
  %265 = load i1, ptr @profile_arc_flag_set, align 1
  br i1 %265, label %267, label %266

266:                                              ; preds = %263
  store i32 %264, ptr @profile_arc_flag, align 4, !tbaa !65
  br label %267

267:                                              ; preds = %266, %263
  %268 = load i1, ptr @flag_profile_values_set, align 1
  br i1 %268, label %270, label %269

269:                                              ; preds = %267
  store i32 %264, ptr @flag_profile_values, align 4, !tbaa !65
  br label %270

270:                                              ; preds = %269, %267
  %271 = load i1, ptr @flag_value_profile_transformations_set, align 1
  br i1 %271, label %273, label %272

272:                                              ; preds = %270
  store i32 %264, ptr @flag_value_profile_transformations, align 4, !tbaa !65
  br label %273

273:                                              ; preds = %272, %270
  %274 = load i1, ptr @flag_inline_functions_set, align 1
  br i1 %274, label %411, label %275

275:                                              ; preds = %273
  store i32 %264, ptr @flag_inline_functions, align 4, !tbaa !65
  br label %411

276:                                              ; preds = %4
  store i1 true, ptr @flag_profile_values_set, align 1
  br label %411

277:                                              ; preds = %4
  %278 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.41) #25
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %277
  store i32 0, ptr @default_visibility, align 4, !tbaa !65
  br label %411

281:                                              ; preds = %277
  %282 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.42) #25
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %281
  store i32 3, ptr @default_visibility, align 4, !tbaa !65
  br label %411

285:                                              ; preds = %281
  %286 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.43) #25
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %285
  store i32 2, ptr @default_visibility, align 4, !tbaa !65
  br label %411

289:                                              ; preds = %285
  %290 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(10) @.str.44) #25
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %289
  store i32 1, ptr @default_visibility, align 4, !tbaa !65
  br label %411

293:                                              ; preds = %289
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.45, ptr noundef %1) #26
  br label %411

294:                                              ; preds = %4
  store i1 true, ptr @flag_value_profile_transformations_set, align 1
  br label %411

295:                                              ; preds = %4
  %296 = icmp eq i32 %2, 0
  br i1 %296, label %297, label %412

297:                                              ; preds = %295
  %298 = tail call ptr @set_random_seed(ptr noundef null) #26
  br label %411

299:                                              ; preds = %4
  %300 = tail call ptr @set_random_seed(ptr noundef %1) #26
  br label %411

301:                                              ; preds = %4, %4
  store i8 1, ptr @sel_sched_switch_set, align 1, !tbaa !69
  br label %411

302:                                              ; preds = %4
  tail call void @fix_sched_param(ptr noundef nonnull @.str.46, ptr noundef %1) #26
  br label %411

303:                                              ; preds = %4
  %304 = icmp eq i32 %2, 0
  %305 = select i1 %304, i32 -1, i32 %2
  store i32 %305, ptr @flag_sched_stalled_insns, align 4
  br label %411

306:                                              ; preds = %4
  store i32 %2, ptr @flag_sched_stalled_insns_dep, align 4, !tbaa !65
  br label %411

307:                                              ; preds = %4
  %308 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.47) #25
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %307
  store i32 0, ptr @flag_stack_check, align 4, !tbaa !65
  br label %411

311:                                              ; preds = %307
  %312 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(8) @.str.48) #25
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %311
  store i32 1, ptr @flag_stack_check, align 4, !tbaa !65
  br label %411

315:                                              ; preds = %311
  %316 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.49) #25
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %315
  store i32 1, ptr @flag_stack_check, align 4, !tbaa !65
  br label %411

319:                                              ; preds = %315
  %320 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.50, ptr noundef %1) #26
  br label %411

321:                                              ; preds = %4
  %322 = icmp eq i32 %2, 0
  br i1 %322, label %324, label %323

323:                                              ; preds = %321
  store i32 1, ptr @flag_stack_check, align 4, !tbaa !65
  br label %411

324:                                              ; preds = %321
  store i32 0, ptr @flag_stack_check, align 4, !tbaa !65
  br label %411

325:                                              ; preds = %4
  %326 = icmp eq i32 %2, 0
  br i1 %326, label %327, label %412

327:                                              ; preds = %325
  store ptr null, ptr @stack_limit_rtx, align 8, !tbaa !85
  br label %411

328:                                              ; preds = %4
  %329 = tail call i32 @decode_reg_name(ptr noundef %1) #26
  %330 = icmp slt i32 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %328
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.51, ptr noundef %1) #26
  br label %411

332:                                              ; preds = %328
  %333 = tail call ptr @gen_rtx_REG(i32 noundef 16, i32 noundef %329) #26
  store ptr %333, ptr @stack_limit_rtx, align 8, !tbaa !85
  br label %411

334:                                              ; preds = %4
  %335 = tail call ptr @ggc_alloc_string(ptr noundef %1, i32 noundef -1) #26
  %336 = tail call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef 16, ptr noundef %335) #26
  store ptr %336, ptr @stack_limit_rtx, align 8, !tbaa !85
  br label %411

337:                                              ; preds = %4
  tail call void @vect_set_verbosity_level(ptr noundef %1) #26
  br label %411

338:                                              ; preds = %4
  %339 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(15) @.str.52) #25
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %342

341:                                              ; preds = %338
  store i32 2, ptr @flag_tls_default, align 4, !tbaa !65
  br label %411

342:                                              ; preds = %338
  %343 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(14) @.str.53) #25
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %342
  store i32 3, ptr @flag_tls_default, align 4, !tbaa !65
  br label %411

346:                                              ; preds = %342
  %347 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(13) @.str.54) #25
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %346
  store i32 4, ptr @flag_tls_default, align 4, !tbaa !65
  br label %411

350:                                              ; preds = %346
  %351 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.55) #25
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %354

353:                                              ; preds = %350
  store i32 5, ptr @flag_tls_default, align 4, !tbaa !65
  br label %411

354:                                              ; preds = %350
  %355 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.56, ptr noundef %1) #26
  br label %411

356:                                              ; preds = %4
  %357 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.57) #25
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %360

359:                                              ; preds = %356
  store i32 0, ptr @flag_ira_algorithm, align 4, !tbaa !65
  br label %411

360:                                              ; preds = %356
  %361 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(9) @.str.58) #25
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %364

363:                                              ; preds = %360
  store i32 1, ptr @flag_ira_algorithm, align 4, !tbaa !65
  br label %411

364:                                              ; preds = %360
  %365 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.59, ptr noundef %1) #26
  br label %411

366:                                              ; preds = %4
  %367 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.60) #25
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %370

369:                                              ; preds = %366
  store i32 0, ptr @flag_ira_region, align 4, !tbaa !65
  br label %411

370:                                              ; preds = %366
  %371 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.61) #25
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %374

373:                                              ; preds = %370
  store i32 1, ptr @flag_ira_region, align 4, !tbaa !65
  br label %411

374:                                              ; preds = %370
  %375 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(6) @.str.62) #25
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %378

377:                                              ; preds = %374
  store i32 2, ptr @flag_ira_region, align 4, !tbaa !65
  br label %411

378:                                              ; preds = %374
  %379 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.63, ptr noundef %1) #26
  br label %411

380:                                              ; preds = %4
  store i32 %2, ptr @flag_ira_verbose, align 4, !tbaa !65
  br label %411

381:                                              ; preds = %4
  store i1 true, ptr @flag_tracer_set, align 1
  br label %411

382:                                              ; preds = %4
  store i1 true, ptr @flag_ipa_cp_set, align 1
  br label %411

383:                                              ; preds = %4
  store i1 true, ptr @flag_ipa_cp_clone_set, align 1
  br label %411

384:                                              ; preds = %4
  store i1 true, ptr @flag_predictive_commoning_set, align 1
  br label %411

385:                                              ; preds = %4
  store i1 true, ptr @flag_unswitch_loops_set, align 1
  br label %411

386:                                              ; preds = %4
  store i1 true, ptr @flag_gcse_after_reload_set, align 1
  br label %411

387:                                              ; preds = %4
  store i1 true, ptr @flag_unroll_loops_set, align 1
  br label %411

388:                                              ; preds = %4
  tail call fastcc void @set_debug_level(i32 noundef 0, i32 noundef 1, ptr noundef %1) #25
  br label %411

389:                                              ; preds = %4
  tail call fastcc void @set_debug_level(i32 noundef 2, i32 noundef 0, ptr noundef %1) #25
  br label %411

390:                                              ; preds = %4
  %391 = add i32 %2, -5
  %392 = icmp ult i32 %391, -3
  br i1 %392, label %393, label %394

393:                                              ; preds = %390
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.64, i32 noundef %2) #26
  br label %395

394:                                              ; preds = %390
  store i32 %2, ptr @dwarf_version, align 4, !tbaa !65
  br label %395

395:                                              ; preds = %394, %393
  tail call fastcc void @set_debug_level(i32 noundef 3, i32 noundef 0, ptr noundef nonnull @.str.65) #25
  br label %411

396:                                              ; preds = %4
  tail call fastcc void @set_debug_level(i32 noundef 0, i32 noundef 2, ptr noundef %1) #25
  br label %411

397:                                              ; preds = %4, %4
  %398 = icmp eq i32 %7, 731
  %399 = zext i1 %398 to i32
  tail call fastcc void @set_debug_level(i32 noundef 1, i32 noundef %399, ptr noundef %1) #25
  br label %411

400:                                              ; preds = %4
  tail call fastcc void @set_debug_level(i32 noundef 5, i32 noundef 0, ptr noundef %1) #25
  br label %411

401:                                              ; preds = %4, %4
  %402 = icmp eq i32 %7, 736
  %403 = zext i1 %402 to i32
  tail call fastcc void @set_debug_level(i32 noundef 4, i32 noundef %403, ptr noundef %1) #25
  br label %411

404:                                              ; preds = %4
  store ptr %1, ptr @asm_file_name, align 8, !tbaa !85
  br label %411

405:                                              ; preds = %4
  store i32 1, ptr @pedantic, align 4, !tbaa !65
  store i32 1, ptr @flag_pedantic_errors, align 4, !tbaa !65
  br label %411

406:                                              ; preds = %4
  %407 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %0, i32 6
  %408 = load ptr, ptr %407, align 8, !tbaa !158
  %409 = icmp eq ptr %408, null
  br i1 %409, label %410, label %411, !prof !135

410:                                              ; preds = %406
  tail call void @fancy_abort(ptr noundef nonnull @.str.66, i32 noundef 2140, ptr noundef nonnull @.str.67) #26
  br label %411

411:                                              ; preds = %331, %332, %137, %143, %410, %406, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %369, %377, %378, %373, %359, %364, %363, %341, %349, %354, %353, %345, %323, %324, %310, %318, %319, %314, %280, %288, %293, %292, %284, %273, %275, %258, %260, %204, %205, %180, %185, %184, %174, %160, %167, %4, %4, %35, %38, %4, %405, %404, %401, %400, %397, %396, %395, %389, %388, %387, %386, %385, %384, %383, %382, %381, %380, %337, %334, %327, %306, %303, %302, %301, %299, %297, %294, %276, %212, %211, %210, %209, %208, %207, %193, %192, %191, %189, %188, %187, %186, %171, %156, %155, %154, %153, %152, %151, %150, %149, %148, %147, %146, %145, %144, %136, %135, %134, %133, %130, %129, %128, %126, %124, %123, %121, %120, %119, %34, %9, %8
  br label %412

412:                                              ; preds = %325, %295, %174, %164, %411
  %413 = phi i32 [ 1, %411 ], [ 0, %164 ], [ 0, %174 ], [ 0, %295 ], [ 0, %325 ]
  ret i32 %413
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_const_char_p_heap_safe_push(ptr noundef %0) unnamed_addr #0 !prof !64 !PGOFuncName !193 {
  tail call fastcc void @VEC_const_char_p_heap_reserve() #25
  %2 = load ptr, ptr @ignored_options, align 8, !tbaa !85
  tail call fastcc void @VEC_const_char_p_base_quick_push(ptr noundef %2, ptr noundef %0) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_const_char_p_heap_reserve() unnamed_addr #0 !prof !64 !PGOFuncName !194 {
  %1 = load ptr, ptr @ignored_options, align 8, !tbaa !85
  %2 = tail call fastcc i32 @VEC_const_char_p_base_space(ptr noundef %1) #25
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #26
  store ptr %5, ptr @ignored_options, align 8, !tbaa !85
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_const_char_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #7 !prof !64 !PGOFuncName !195 {
  %3 = load i32, ptr %0, align 8, !tbaa !97
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !97
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_const_char_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_const_char_p_base_space(ptr noundef readonly %0) unnamed_addr #6 !prof !64 !PGOFuncName !196 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_const_char_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !197
  %6 = load i32, ptr %0, align 8, !tbaa !97
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @write_langs(i32 noundef %0) unnamed_addr #0 !prof !64 !PGOFuncName !198 {
  %2 = load ptr, ptr @lang_names, align 8, !tbaa !85
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call ptr @xmalloc(i64 noundef 0) #26
  br label %58

6:                                                ; preds = %1, %18
  %7 = phi ptr [ %23, %18 ], [ %2, %1 ]
  %8 = phi i32 [ %20, %18 ], [ 0, %1 ]
  %9 = phi i32 [ %19, %18 ], [ 0, %1 ]
  %10 = shl nuw i32 1, %8
  %11 = and i32 %10, %0
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %6
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #25
  %15 = trunc i64 %14 to i32
  %16 = add i32 %9, 1
  %17 = add i32 %16, %15
  br label %18

18:                                               ; preds = %6, %13
  %19 = phi i32 [ %17, %13 ], [ %9, %6 ]
  %20 = add i32 %8, 1
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [0 x ptr], ptr @lang_names, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !85
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %6, !llvm.loop !199

25:                                               ; preds = %18
  %26 = zext i32 %19 to i64
  %27 = tail call ptr @xmalloc(i64 noundef %26) #26
  br i1 %3, label %58, label %28

28:                                               ; preds = %25, %49
  %29 = phi ptr [ %54, %49 ], [ %2, %25 ]
  %30 = phi i32 [ %51, %49 ], [ 0, %25 ]
  %31 = phi i32 [ %50, %49 ], [ 0, %25 ]
  %32 = shl nuw i32 1, %30
  %33 = and i32 %32, %0
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %28
  %36 = icmp eq i32 %31, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %35
  %38 = add i32 %31, 1
  %39 = zext i32 %31 to i64
  %40 = getelementptr inbounds i8, ptr %27, i64 %39
  store i8 47, ptr %40, align 1, !tbaa !69
  br label %41

41:                                               ; preds = %37, %35
  %42 = phi i32 [ %38, %37 ], [ 0, %35 ]
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i8, ptr %27, i64 %43
  %45 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %44, ptr noundef nonnull dereferenceable(1) %29) #25
  %46 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %29) #25
  %47 = trunc i64 %46 to i32
  %48 = add i32 %42, %47
  br label %49

49:                                               ; preds = %28, %41
  %50 = phi i32 [ %48, %41 ], [ %31, %28 ]
  %51 = add i32 %30, 1
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [0 x ptr], ptr @lang_names, i64 0, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !85
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %28, !llvm.loop !200

56:                                               ; preds = %49
  %57 = zext i32 %50 to i64
  br label %58

58:                                               ; preds = %4, %56, %25
  %59 = phi ptr [ %27, %25 ], [ %27, %56 ], [ %5, %4 ]
  %60 = phi i64 [ 0, %25 ], [ %57, %56 ], [ 0, %4 ]
  %61 = getelementptr inbounds i8, ptr %59, i64 %60
  store i8 0, ptr %61, align 1, !tbaa !69
  ret ptr %59
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @handle_param(ptr noundef %0) unnamed_addr #0 !prof !64 !PGOFuncName !201 {
  %2 = tail call ptr @xstrdup(ptr noundef %0) #26
  %3 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 61) #25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.68, ptr noundef %2) #26
  br label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  %8 = tail call fastcc i32 @integral_argument(ptr noundef nonnull %7) #25
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.69, ptr noundef nonnull %7) #26
  br label %12

11:                                               ; preds = %6
  store i8 0, ptr %3, align 1, !tbaa !69
  tail call void @set_param_value(ptr noundef %2, i32 noundef %8) #26
  br label %12

12:                                               ; preds = %10, %11, %5
  tail call void @free(ptr noundef %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_specific_help(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !64 !PGOFuncName !202 {
  %4 = load i32, ptr @cl_lang_count, align 4, !tbaa !65
  %5 = shl nsw i32 -1, %4
  %6 = xor i32 %5, -1
  %7 = icmp ult i32 %4, 17
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.66, i32 noundef 1363, ptr noundef nonnull @.str.67) #26
  br label %9

9:                                                ; preds = %3, %8
  %10 = load i32, ptr @print_specific_help.columns, align 4, !tbaa !65
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = tail call ptr @getenv(ptr noundef nonnull @.str.70) #25
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = tail call i32 @atoi(ptr nocapture noundef nonnull %13) #25
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15, %12
  br label %19

19:                                               ; preds = %15, %18
  %20 = phi i32 [ 80, %18 ], [ %16, %15 ]
  store i32 %20, ptr @print_specific_help.columns, align 4, !tbaa !65
  br label %21

21:                                               ; preds = %19, %9
  %22 = zext i32 %4 to i64
  %23 = and i32 %6, %1
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, ptr @.str.77, ptr @.str.76
  br label %26

26:                                               ; preds = %21, %42
  %27 = phi ptr [ null, %21 ], [ %44, %42 ]
  %28 = phi ptr [ @.str.65, %21 ], [ %43, %42 ]
  %29 = phi i32 [ 1, %21 ], [ %45, %42 ]
  %30 = phi i64 [ 0, %21 ], [ %46, %42 ]
  %31 = and i32 %29, %0
  switch i32 %31, label %37 [
    i32 0, label %42
    i32 1048576, label %32
    i32 262144, label %33
    i32 524288, label %34
    i32 2097152, label %35
    i32 131072, label %36
  ]

32:                                               ; preds = %26
  br label %42

33:                                               ; preds = %26
  br label %42

34:                                               ; preds = %26
  br label %42

35:                                               ; preds = %26
  br label %42

36:                                               ; preds = %26
  br label %42

37:                                               ; preds = %26
  %38 = icmp ult i64 %30, %22
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = getelementptr inbounds [0 x ptr], ptr @lang_names, i64 0, i64 %30
  %41 = load ptr, ptr %40, align 8, !tbaa !85
  br label %42

42:                                               ; preds = %26, %32, %33, %34, %35, %36, %39, %37
  %43 = phi ptr [ %28, %37 ], [ %41, %39 ], [ %28, %36 ], [ %28, %35 ], [ %28, %34 ], [ %28, %33 ], [ %28, %32 ], [ %28, %26 ]
  %44 = phi ptr [ %27, %37 ], [ %25, %39 ], [ @.str.75, %36 ], [ @.str.74, %35 ], [ @.str.73, %34 ], [ @.str.72, %33 ], [ @.str.71, %32 ], [ %27, %26 ]
  %45 = shl nuw nsw i32 %29, 1
  %46 = add nuw nsw i64 %30, 1
  %47 = icmp eq i64 %46, 22
  br i1 %47, label %48, label %26, !llvm.loop !203

48:                                               ; preds = %42
  %49 = icmp eq ptr %44, null
  br i1 %49, label %50, label %66

50:                                               ; preds = %48
  %51 = icmp eq i32 %2, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %50
  %53 = and i32 %0, 1073741824
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = and i32 %0, 67108864
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = and i32 %0, 33554432
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.81, i32 noundef %0) #26
  br label %70

62:                                               ; preds = %50
  %63 = and i32 %6, %2
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, ptr @.str.74, ptr @.str.82
  br label %66

66:                                               ; preds = %62, %58, %55, %52, %48
  %67 = phi ptr [ %44, %48 ], [ @.str.78, %52 ], [ @.str.79, %55 ], [ @.str.80, %58 ], [ %65, %62 ]
  %68 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.83, ptr noundef nonnull %67, ptr noundef %43) #25
  %69 = load i32, ptr @print_specific_help.columns, align 4, !tbaa !65
  tail call fastcc void @print_filtered_help(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %69) #25
  br label %70

70:                                               ; preds = %66, %61
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: optsize
declare void @fnotice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @enable_warning_as_error(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !64 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  %5 = add i64 %4, 2
  %6 = tail call ptr @xmalloc(i64 noundef %5) #26
  store i8 87, ptr %6, align 1, !tbaa !69
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %0) #25
  %9 = tail call i64 @find_opt(ptr noundef nonnull %6, i32 noundef %2) #26
  %10 = trunc i64 %9 to i32
  %11 = icmp eq i32 %10, 870
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.97, ptr noundef %0, ptr noundef nonnull %6) #26
  br label %29

13:                                               ; preds = %3
  %14 = icmp ne i32 %1, 0
  %15 = select i1 %14, i32 4, i32 6
  %16 = load ptr, ptr @global_dc, align 8, !tbaa !85
  %17 = tail call i32 @diagnostic_classify_diagnostic(ptr noundef %16, i32 noundef %10, i32 noundef %15) #26
  %18 = shl i64 %9, 32
  %19 = ashr exact i64 %18, 32
  %20 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %19, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !173
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %13
  %24 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %19, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !158
  %26 = icmp ne ptr %25, null
  %27 = and i1 %14, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 1, ptr %25, align 4, !tbaa !65
  br label %29

29:                                               ; preds = %13, %23, %28, %12
  tail call void @free(ptr noundef nonnull %6) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_Wstrict_aliasing(i32 noundef %0) local_unnamed_addr #0 !prof !64 {
  %2 = icmp ult i32 %0, 2
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.66, i32 noundef 2182, ptr noundef nonnull @.str.67) #26
  br label %4

4:                                                ; preds = %1, %3
  %5 = icmp eq i32 %0, 0
  %6 = select i1 %5, i32 0, i32 3
  store i32 %6, ptr @warn_strict_aliasing, align 4, !tbaa !65
  ret void
}

; Function Attrs: optsize
declare ptr @xstrdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @strip_off_ending(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @decode_d_option(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @fix_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @dbg_cnt_process_opt(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @dbg_cnt_list_all_counters() local_unnamed_addr #3

; Function Attrs: optsize
declare void @add_debug_prefix_map(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @dump_switch_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_fast_math_flags(i32 noundef %0) local_unnamed_addr #14 !prof !64 {
  store i32 %0, ptr @flag_unsafe_math_optimizations, align 4, !tbaa !65
  tail call void @set_unsafe_math_optimizations_flags(i32 noundef %0) #25
  store i32 %0, ptr @flag_finite_math_only, align 4, !tbaa !65
  %2 = icmp eq i32 %0, 0
  %3 = zext i1 %2 to i32
  store i32 %3, ptr @flag_errno_math, align 4, !tbaa !65
  br i1 %2, label %5, label %4

4:                                                ; preds = %1
  store i32 0, ptr @flag_signaling_nans, align 4, !tbaa !65
  store i32 0, ptr @flag_rounding_math, align 4, !tbaa !65
  store i32 1, ptr @flag_cx_limited_range, align 4, !tbaa !65
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @set_unsafe_math_optimizations_flags(i32 noundef %0) local_unnamed_addr #15 !prof !64 {
  %2 = icmp eq i32 %0, 0
  %3 = zext i1 %2 to i32
  store i32 %3, ptr @flag_trapping_math, align 4, !tbaa !65
  store i32 %3, ptr @flag_signed_zeros, align 4, !tbaa !65
  store i32 %0, ptr @flag_associative_math, align 4, !tbaa !65
  store i32 %0, ptr @flag_reciprocal_math, align 4, !tbaa !65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_comma_separated_to_vector(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !64 !PGOFuncName !204 {
  %3 = tail call ptr @xstrdup(ptr noundef %1) #26
  br label %4

4:                                                ; preds = %27, %2
  %5 = phi ptr [ %3, %2 ], [ %28, %27 ]
  %6 = phi ptr [ %3, %2 ], [ %29, %27 ]
  %7 = phi ptr [ %3, %2 ], [ %17, %27 ]
  %8 = load i8, ptr %5, align 1, !tbaa !69
  switch i8 %8, label %13 [
    i8 0, label %30
    i8 44, label %9
  ]

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %6, i64 1
  store i8 0, ptr %6, align 1, !tbaa !69
  %11 = getelementptr inbounds i8, ptr %5, i64 1
  tail call fastcc void @VEC_char_p_heap_safe_push(ptr noundef %0, ptr noundef %7) #25
  %12 = load i8, ptr %11, align 1, !tbaa !69
  br label %13

13:                                               ; preds = %4, %9
  %14 = phi i8 [ %8, %4 ], [ %12, %9 ]
  %15 = phi ptr [ %5, %4 ], [ %11, %9 ]
  %16 = phi ptr [ %6, %4 ], [ %10, %9 ]
  %17 = phi ptr [ %7, %4 ], [ %10, %9 ]
  %18 = icmp eq i8 %14, 92
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = getelementptr inbounds i8, ptr %15, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !69
  %22 = icmp eq i8 %21, 44
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  store i8 44, ptr %16, align 1, !tbaa !69
  %24 = getelementptr inbounds i8, ptr %15, i64 2
  br label %27

25:                                               ; preds = %19, %13
  %26 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 %14, ptr %16, align 1, !tbaa !69
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi ptr [ %24, %23 ], [ %26, %25 ]
  %29 = getelementptr inbounds i8, ptr %16, i64 1
  br label %4, !llvm.loop !205

30:                                               ; preds = %4
  %31 = load i8, ptr %7, align 1, !tbaa !69
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  tail call fastcc void @VEC_char_p_heap_safe_push(ptr noundef %0, ptr noundef nonnull %7) #25
  br label %34

34:                                               ; preds = %33, %30
  ret void
}

; Function Attrs: optsize
declare void @pp_base_set_line_maximum_length(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @set_random_seed(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @fix_sched_param(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @decode_reg_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_s00_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @ggc_alloc_string(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @vect_set_verbosity_level(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_debug_level(i32 noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !64 !PGOFuncName !206 {
  %4 = trunc i32 %1 to i8
  store i8 %4, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !69
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = load i32, ptr @write_symbols, align 4, !tbaa !65
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  store i32 3, ptr @write_symbols, align 4
  br label %23

10:                                               ; preds = %3
  %11 = load i1, ptr @set_debug_level.type_explicit, align 1
  %12 = load i32, ptr @write_symbols, align 4
  %13 = icmp eq i32 %12, 0
  %14 = xor i1 %11, true
  %15 = select i1 %14, i1 true, i1 %13
  %16 = icmp eq i32 %12, %0
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %10
  %19 = zext nneg i32 %0 to i64
  %20 = getelementptr inbounds [0 x ptr], ptr @debug_type_names, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !85
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.94, ptr noundef %21) #26
  br label %22

22:                                               ; preds = %18, %10
  store i32 %0, ptr @write_symbols, align 4, !tbaa !65
  store i1 true, ptr @set_debug_level.type_explicit, align 1
  br label %23

23:                                               ; preds = %9, %6, %22
  %24 = load i8, ptr %2, align 1, !tbaa !69
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, ptr @debug_info_level, align 4, !tbaa !65
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  store i32 2, ptr @debug_info_level, align 4, !tbaa !65
  br label %38

30:                                               ; preds = %23
  %31 = tail call fastcc i32 @integral_argument(ptr noundef nonnull %2) #25
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.95, ptr noundef nonnull %2) #26
  br label %38

34:                                               ; preds = %30
  %35 = icmp sgt i32 %31, 3
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.96, ptr noundef nonnull %2) #26
  br label %38

37:                                               ; preds = %34
  store i32 %31, ptr @debug_info_level, align 4, !tbaa !65
  br label %38

38:                                               ; preds = %33, %37, %36, %26, %29
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: optsize
declare void @internal_error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_filtered_help(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !64 !PGOFuncName !207 {
  %5 = icmp eq i32 %0, 131072
  br i1 %5, label %6, label %33

6:                                                ; preds = %4
  %7 = and i32 %1, 1073741824
  %8 = icmp eq i32 %7, 0
  %9 = load ptr, ptr @compiler_params, align 8, !tbaa !85
  br label %10

10:                                               ; preds = %6, %29
  %11 = phi ptr [ %9, %6 ], [ %30, %29 ]
  %12 = phi i64 [ 0, %6 ], [ %31, %29 ]
  %13 = getelementptr inbounds %struct.param_info, ptr %11, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !208
  %15 = getelementptr inbounds %struct.param_info, ptr %11, i64 %12, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !209
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %10
  %19 = load i8, ptr %16, align 1, !tbaa !69
  %20 = icmp ne i8 %19, 0
  %21 = or i1 %20, %8
  %22 = select i1 %20, ptr %16, ptr @undocumented_msg
  br i1 %21, label %24, label %29

23:                                               ; preds = %10
  br i1 %8, label %24, label %29

24:                                               ; preds = %18, %23
  %25 = phi ptr [ %22, %18 ], [ @undocumented_msg, %23 ]
  %26 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #25
  %27 = trunc i64 %26 to i32
  tail call fastcc void @wrap_help(ptr noundef nonnull %25, ptr noundef %14, i32 noundef %27, i32 noundef %3) #25
  %28 = load ptr, ptr @compiler_params, align 8, !tbaa !85
  br label %29

29:                                               ; preds = %18, %23, %24
  %30 = phi ptr [ %11, %18 ], [ %11, %23 ], [ %28, %24 ]
  %31 = add nuw nsw i64 %12, 1
  %32 = icmp eq i64 %31, 119
  br i1 %32, label %156, label %10, !llvm.loop !210

33:                                               ; preds = %4
  %34 = load ptr, ptr @print_filtered_help.printed, align 8, !tbaa !85
  %35 = icmp eq ptr %34, null
  %36 = load i32, ptr @cl_options_count, align 4, !tbaa !65
  br i1 %35, label %37, label %40

37:                                               ; preds = %33
  %38 = zext i32 %36 to i64
  %39 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef %38) #26
  store ptr %39, ptr @print_filtered_help.printed, align 8, !tbaa !85
  br label %40

40:                                               ; preds = %37, %33
  %41 = icmp eq i32 %36, 0
  br i1 %41, label %135, label %42

42:                                               ; preds = %40
  %43 = icmp ne i32 %0, 0
  %44 = and i32 %1, 1073741824
  %45 = icmp eq i32 %44, 0
  %46 = zext i32 %36 to i64
  br label %47

47:                                               ; preds = %42, %128
  %48 = phi i64 [ 0, %42 ], [ %131, %128 ]
  %49 = phi i8 [ 0, %42 ], [ %130, %128 ]
  %50 = phi i8 [ 0, %42 ], [ %129, %128 ]
  %51 = getelementptr inbounds %struct.cl_option, ptr @cl_options, i64 %48
  %52 = getelementptr inbounds %struct.cl_option, ptr @cl_options, i64 %48, i32 5
  %53 = load i32, ptr %52, align 8, !tbaa !147
  %54 = and i32 %53, %0
  %55 = icmp eq i32 %54, %0
  %56 = select i1 %43, i1 %55, i1 false
  %57 = and i32 %53, %2
  %58 = icmp ne i32 %57, 0
  %59 = select i1 %56, i1 true, i1 %58
  %60 = and i32 %53, %1
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %59, i1 %61, i1 false
  br i1 %62, label %63, label %128

63:                                               ; preds = %47
  %64 = load ptr, ptr @print_filtered_help.printed, align 8, !tbaa !85
  %65 = getelementptr inbounds i8, ptr %64, i64 %48
  %66 = load i8, ptr %65, align 1, !tbaa !69
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %128

68:                                               ; preds = %63
  store i8 1, ptr %65, align 1, !tbaa !69
  %69 = getelementptr inbounds %struct.cl_option, ptr @cl_options, i64 %48, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !211
  %71 = icmp ne ptr %70, null
  %72 = or i1 %71, %45
  %73 = select i1 %71, ptr %70, ptr @undocumented_msg
  br i1 %72, label %74, label %128

74:                                               ; preds = %68
  %75 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %73, i32 noundef 9) #25
  %76 = icmp eq ptr %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = ptrtoint ptr %75 to i64
  %79 = ptrtoint ptr %73 to i64
  %80 = sub i64 %78, %79
  %81 = getelementptr inbounds i8, ptr %75, i64 1
  br label %85

82:                                               ; preds = %74
  %83 = load ptr, ptr %51, align 8, !tbaa !157
  %84 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %83) #25
  br label %85

85:                                               ; preds = %82, %77
  %86 = phi i64 [ %80, %77 ], [ %84, %82 ]
  %87 = phi ptr [ %73, %77 ], [ %83, %82 ]
  %88 = phi ptr [ %81, %77 ], [ %73, %82 ]
  %89 = trunc i64 %86 to i32
  %90 = load i32, ptr @quiet_flag, align 4, !tbaa !65
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %126

92:                                               ; preds = %85
  %93 = icmp ult i32 %89, 29
  br i1 %93, label %94, label %95

94:                                               ; preds = %92
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) @print_filtered_help.new_help, ptr noundef nonnull align 1 dereferenceable(3) @.str.84, i64 3, i1 false) #25
  br label %96

95:                                               ; preds = %92
  store i16 9, ptr @print_filtered_help.new_help, align 16
  br label %96

96:                                               ; preds = %95, %94
  %97 = getelementptr inbounds %struct.cl_option, ptr @cl_options, i64 %48, i32 6
  %98 = load ptr, ptr %97, align 8, !tbaa !158
  %99 = icmp eq ptr %98, null
  br i1 %99, label %126, label %100

100:                                              ; preds = %96
  %101 = and i32 %53, 33554432
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %120, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.cl_option, ptr @cl_options, i64 %48, i32 7
  %105 = load i32, ptr %104, align 8, !tbaa !173
  %106 = icmp eq i32 %105, 4
  br i1 %106, label %107, label %115

107:                                              ; preds = %103
  %108 = load ptr, ptr %98, align 8, !tbaa !85
  %109 = icmp eq ptr %108, null
  br i1 %109, label %126, label %110

110:                                              ; preds = %107
  %111 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @print_filtered_help.new_help) #25
  %112 = getelementptr inbounds i8, ptr @print_filtered_help.new_help, i64 %111
  %113 = sub i64 128, %111
  %114 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %112, i64 noundef %113, ptr noundef nonnull %108) #25
  br label %126

115:                                              ; preds = %103
  %116 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @print_filtered_help.new_help) #25
  %117 = getelementptr inbounds i8, ptr @print_filtered_help.new_help, i64 %116
  %118 = load i32, ptr %98, align 4, !tbaa !65
  %119 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %117, ptr noundef nonnull dereferenceable(1) @.str.86, i32 noundef %118) #25
  br label %126

120:                                              ; preds = %100
  %121 = trunc i64 %48 to i32
  %122 = tail call i32 @option_enabled(i32 noundef %121) #25, !range !212
  %123 = icmp eq i32 %122, 0
  %124 = select i1 %123, ptr @.str.88, ptr @.str.87
  %125 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) @print_filtered_help.new_help, ptr noundef nonnull dereferenceable(1) %124) #25
  br label %126

126:                                              ; preds = %96, %115, %110, %107, %120, %85
  %127 = phi ptr [ %88, %85 ], [ @print_filtered_help.new_help, %120 ], [ @print_filtered_help.new_help, %107 ], [ @print_filtered_help.new_help, %110 ], [ @print_filtered_help.new_help, %115 ], [ @print_filtered_help.new_help, %96 ]
  tail call fastcc void @wrap_help(ptr noundef %127, ptr noundef %87, i32 noundef %89, i32 noundef %3) #25
  br label %128

128:                                              ; preds = %47, %68, %63, %126
  %129 = phi i8 [ 1, %126 ], [ %50, %63 ], [ %50, %68 ], [ %50, %47 ]
  %130 = phi i8 [ 1, %126 ], [ 1, %63 ], [ 1, %68 ], [ %49, %47 ]
  %131 = add nuw nsw i64 %48, 1
  %132 = icmp eq i64 %131, %46
  br i1 %132, label %133, label %47, !llvm.loop !213

133:                                              ; preds = %128
  %134 = icmp eq i8 %130, 0
  br i1 %134, label %135, label %151

135:                                              ; preds = %40, %133
  %136 = and i32 %0, 255
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %153, label %138

138:                                              ; preds = %135, %148
  %139 = phi i64 [ %149, %148 ], [ 0, %135 ]
  %140 = trunc i64 %139 to i32
  %141 = shl nuw nsw i32 1, %140
  %142 = and i32 %141, %136
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %138
  %145 = getelementptr inbounds [0 x ptr], ptr @lang_names, i64 0, i64 %139
  %146 = load ptr, ptr %145, align 8, !tbaa !85
  %147 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.90, ptr noundef %146, ptr noundef %146) #25
  br label %148

148:                                              ; preds = %138, %144
  %149 = add nuw nsw i64 %139, 1
  %150 = icmp eq i64 %149, 8
  br i1 %150, label %156, label %138, !llvm.loop !214

151:                                              ; preds = %133
  %152 = icmp eq i8 %129, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %151, %135
  %154 = phi ptr [ @str, %135 ], [ @str.98, %151 ]
  %155 = tail call i32 @puts(ptr nonnull dereferenceable(1) %154)
  br label %156

156:                                              ; preds = %148, %29, %151, %153
  %157 = tail call i32 @putchar(i32 noundef 10) #25
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @wrap_help(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #18 !prof !64 !PGOFuncName !215 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #25
  %6 = trunc i64 %5 to i32
  %7 = add nsw i32 %3, -3
  br label %8

8:                                                ; preds = %65, %4
  %9 = phi i32 [ %2, %4 ], [ 0, %65 ]
  %10 = phi ptr [ %0, %4 ], [ %66, %65 ]
  %11 = phi i32 [ %6, %4 ], [ %67, %65 ]
  %12 = tail call i32 @llvm.umax.i32(i32 %9, i32 27)
  %13 = sub i32 %7, %12
  %14 = icmp ugt i32 %13, %3
  %15 = select i1 %14, i32 0, i32 %13
  %16 = icmp ult i32 %15, %11
  br i1 %16, label %17, label %55

17:                                               ; preds = %8
  %18 = load i8, ptr %10, align 1, !tbaa !69
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %55, label %20

20:                                               ; preds = %17, %48
  %21 = phi i8 [ %53, %48 ], [ %18, %17 ]
  %22 = phi i32 [ %50, %48 ], [ 0, %17 ]
  %23 = phi i32 [ %49, %48 ], [ %11, %17 ]
  %24 = icmp ult i32 %22, %15
  %25 = icmp eq i32 %23, %11
  %26 = select i1 %24, i1 true, i1 %25
  br i1 %26, label %27, label %55

27:                                               ; preds = %20
  switch i8 %21, label %47 [
    i8 32, label %48
    i8 45, label %28
    i8 47, label %28
  ]

28:                                               ; preds = %27, %27
  %29 = add i32 %22, 1
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %10, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !69
  %33 = icmp ne i8 %32, 32
  %34 = icmp ne i32 %22, 0
  %35 = and i1 %34, %33
  br i1 %35, label %36, label %48

36:                                               ; preds = %28
  %37 = add i32 %22, -1
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, ptr %10, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !69
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !170
  %44 = and i16 %43, 136
  %45 = icmp eq i16 %44, 0
  %46 = select i1 %45, i32 %23, i32 %29
  br label %48

47:                                               ; preds = %27
  br label %48

48:                                               ; preds = %36, %27, %47, %28
  %49 = phi i32 [ %23, %28 ], [ %22, %27 ], [ %23, %47 ], [ %46, %36 ]
  %50 = add i32 %22, 1
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %10, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !69
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %20, !llvm.loop !216

55:                                               ; preds = %20, %48, %17, %8
  %56 = phi i32 [ %11, %8 ], [ %11, %17 ], [ %23, %20 ], [ %49, %48 ]
  %57 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.92, i32 noundef 27, i32 noundef %9, ptr noundef %1, i32 noundef %56, ptr noundef %10) #25
  br label %58

58:                                               ; preds = %58, %55
  %59 = phi i32 [ %56, %55 ], [ %64, %58 ]
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %10, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !69
  %63 = icmp eq i8 %62, 32
  %64 = add i32 %59, 1
  br i1 %63, label %58, label %65, !llvm.loop !217

65:                                               ; preds = %58
  %66 = getelementptr inbounds i8, ptr %10, i64 %60
  %67 = sub i32 %11, %59
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %8, !llvm.loop !218

69:                                               ; preds = %65
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #17

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @option_enabled(i32 noundef %0) local_unnamed_addr #19 !prof !219 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %2, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !158
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6, !prof !220

6:                                                ; preds = %1
  %7 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %2, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !173
  switch i32 %8, label %33 [
    i32 0, label %9
    i32 1, label %13
    i32 2, label %19
    i32 3, label %26
  ], !prof !221

9:                                                ; preds = %6
  %10 = load i32, ptr %4, align 4, !tbaa !65
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  br label %33

13:                                               ; preds = %6
  %14 = load i32, ptr %4, align 4, !tbaa !65
  %15 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %2, i32 8
  %16 = load i32, ptr %15, align 4, !tbaa !175
  %17 = icmp eq i32 %14, %16
  %18 = zext i1 %17 to i32
  br label %33

19:                                               ; preds = %6
  %20 = load i32, ptr %4, align 4, !tbaa !65
  %21 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %2, i32 8
  %22 = load i32, ptr %21, align 4, !tbaa !175
  %23 = and i32 %22, %20
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  br label %33

26:                                               ; preds = %6
  %27 = load i32, ptr %4, align 4, !tbaa !65
  %28 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %2, i32 8
  %29 = load i32, ptr %28, align 4, !tbaa !175
  %30 = and i32 %29, %27
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i32
  br label %33

33:                                               ; preds = %1, %6, %26, %19, %13, %9
  %34 = phi i32 [ %32, %26 ], [ %25, %19 ], [ %18, %13 ], [ %12, %9 ], [ -1, %6 ], [ -1, %1 ]
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_char_p_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !64 !PGOFuncName !222 {
  tail call fastcc void @VEC_char_p_heap_reserve(ptr noundef %0) #25
  %3 = load ptr, ptr %0, align 8, !tbaa !85
  tail call fastcc void @VEC_char_p_base_quick_push(ptr noundef %3, ptr noundef %1) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_char_p_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !64 !PGOFuncName !223 {
  %2 = load ptr, ptr %0, align 8, !tbaa !85
  %3 = tail call fastcc i32 @VEC_char_p_base_space(ptr noundef %2) #25
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #26
  store ptr %6, ptr %0, align 8, !tbaa !85
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_char_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #7 !prof !64 !PGOFuncName !224 {
  %3 = load i32, ptr %0, align 8, !tbaa !104
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !104
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_char_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !85
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_char_p_base_space(ptr noundef readonly %0) unnamed_addr #6 !prof !64 !PGOFuncName !225 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_char_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !226
  %6 = load i32, ptr %0, align 8, !tbaa !104
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @fast_math_flags_set_p() local_unnamed_addr #20 !prof !86 {
  %1 = load i32, ptr @flag_trapping_math, align 4, !tbaa !65
  %2 = icmp eq i32 %1, 0
  %3 = load i32, ptr @flag_unsafe_math_optimizations, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  %6 = load i32, ptr @flag_finite_math_only, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 %7, i1 false
  %9 = load i32, ptr @flag_signed_zeros, align 4
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %8, i1 %10, i1 false
  %12 = load i32, ptr @flag_errno_math, align 4
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %11, i1 %13, i1 false
  %15 = zext i1 %14 to i8
  ret i8 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @fast_math_flags_struct_set_p(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !64 {
  %2 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 113
  %3 = load i8, ptr %2, align 1, !tbaa !227
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 149
  %7 = load i8, ptr %6, align 1, !tbaa !229
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 32
  %11 = load i8, ptr %10, align 2, !tbaa !230
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 106
  %15 = load i8, ptr %14, align 4, !tbaa !231
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 63
  %19 = load i8, ptr %18, align 1, !tbaa !232
  %20 = icmp eq i8 %19, 0
  %21 = zext i1 %20 to i8
  br label %22

22:                                               ; preds = %17, %13, %9, %5, %1
  %23 = phi i8 [ 0, %13 ], [ 0, %9 ], [ 0, %5 ], [ 0, %1 ], [ %21, %17 ]
  ret i8 %23
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @get_option_state(i32 noundef %0, ptr noundef %1) local_unnamed_addr #21 !prof !64 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %3, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !158
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %3, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !173
  switch i32 %9, label %24 [
    i32 0, label %10
    i32 1, label %10
    i32 2, label %11
    i32 3, label %11
    i32 4, label %15
  ]

10:                                               ; preds = %7, %7
  store ptr %5, ptr %1, align 8, !tbaa !233
  br label %21

11:                                               ; preds = %7, %7
  %12 = tail call i32 @option_enabled(i32 noundef %0) #25, !range !212
  %13 = trunc i32 %12 to i8
  %14 = getelementptr inbounds %struct.cl_option_state, ptr %1, i64 0, i32 2
  store i8 %13, ptr %14, align 8, !tbaa !235
  store ptr %14, ptr %1, align 8, !tbaa !233
  br label %21

15:                                               ; preds = %7
  %16 = load ptr, ptr %5, align 8, !tbaa !85
  %17 = icmp eq ptr %16, null
  %18 = select i1 %17, ptr @.str.65, ptr %16
  store ptr %18, ptr %1, align 8, !tbaa !233
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %18) #25
  %20 = add i64 %19, 1
  br label %21

21:                                               ; preds = %15, %11, %10
  %22 = phi i64 [ 4, %10 ], [ 1, %11 ], [ %20, %15 ]
  %23 = getelementptr inbounds %struct.cl_option_state, ptr %1, i64 0, i32 1
  store i64 %22, ptr %23, align 8, !tbaa !236
  br label %24

24:                                               ; preds = %21, %7, %2
  %25 = phi i8 [ 0, %2 ], [ 1, %7 ], [ 1, %21 ]
  ret i8 %25
}

; Function Attrs: optsize
declare i32 @diagnostic_classify_diagnostic(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline nounwind optsize memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree nounwind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nofree nounwind }
attributes #25 = { optsize }
attributes #26 = { nounwind optsize }
attributes #27 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!63}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!36 = !{ptr @print_ignored_options, ptr @VEC_const_char_p_base_length, i64 2}
!37 = !{ptr @print_ignored_options, ptr @VEC_const_char_p_base_pop, i64 1}
!38 = !{ptr @print_ignored_options, ptr @warning, i64 1}
!39 = !{ptr @decode_options, ptr @strcmp, i64 5}
!40 = !{ptr @decode_options, ptr @read_integral_parameter, i64 1}
!41 = !{ptr @decode_options, ptr @set_param_value, i64 3}
!42 = !{ptr @decode_options, ptr @lto_clear_user_options, i64 1}
!43 = !{ptr @decode_options, ptr @optimization_options, i64 1}
!44 = !{ptr @decode_options, ptr @handle_options, i64 1}
!45 = !{ptr @decode_options, ptr @error, i64 1}
!46 = !{ptr @handle_options, ptr @base_of_path, i64 1}
!47 = !{ptr @handle_options, ptr @add_input_filename, i64 1}
!48 = !{ptr @handle_options, ptr @handle_option, i64 3}
!49 = !{ptr @add_input_filename, ptr @xrealloc, i64 1}
!50 = !{ptr @handle_option, ptr @find_opt, i64 7}
!51 = !{ptr @handle_option, ptr @error, i64 1}
!52 = !{ptr @handle_option, ptr @complain_wrong_lang, i64 1}
!53 = !{ptr @handle_option, ptr @integral_argument, i64 1}
!54 = !{ptr @handle_option, ptr @set_option, i64 2}
!55 = !{ptr @handle_option, ptr @lto_register_user_option, i64 4}
!56 = !{ptr @handle_option, ptr @common_handle_option, i64 3}
!57 = !{ptr @integral_argument, ptr @atoi, i64 1}
!58 = !{ptr @common_handle_option, ptr @print_specific_help, i64 6}
!59 = !{ptr @common_handle_option, ptr @strchr, i64 3}
!60 = !{ptr @common_handle_option, ptr @strlen, i64 1}
!61 = !{ptr @common_handle_option, ptr @strncasecmp, i64 54}
!62 = !{ptr @common_handle_option, ptr @fnotice, i64 1}
!63 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!64 = !{!"function_entry_count", i64 0}
!65 = !{!66, !66, i64 0}
!66 = !{!"int", !67, i64 0}
!67 = !{!"omnipotent char", !68, i64 0}
!68 = !{!"Simple C/C++ TBAA"}
!69 = !{!67, !67, i64 0}
!70 = !{!71, !72, i64 464}
!71 = !{!"lang_hooks", !72, i64 0, !73, i64 8, !72, i64 16, !72, i64 24, !72, i64 32, !72, i64 40, !72, i64 48, !72, i64 56, !72, i64 64, !72, i64 72, !72, i64 80, !72, i64 88, !72, i64 96, !72, i64 104, !72, i64 112, !72, i64 120, !72, i64 128, !72, i64 136, !72, i64 144, !72, i64 152, !72, i64 160, !72, i64 168, !72, i64 176, !72, i64 184, !72, i64 192, !72, i64 200, !72, i64 208, !72, i64 216, !72, i64 224, !72, i64 232, !74, i64 240, !75, i64 248, !76, i64 256, !77, i64 272, !78, i64 432, !79, i64 560, !72, i64 584, !72, i64 592, !72, i64 600, !72, i64 608, !72, i64 616, !72, i64 624, !72, i64 632, !72, i64 640, !72, i64 648, !72, i64 656, !72, i64 664, !67, i64 672}
!72 = !{!"any pointer", !67, i64 0}
!73 = !{!"long", !67, i64 0}
!74 = !{!"lang_hooks_for_tree_inlining", !72, i64 0}
!75 = !{!"lang_hooks_for_callgraph", !72, i64 0}
!76 = !{!"lang_hooks_for_tree_dump", !72, i64 0, !72, i64 8}
!77 = !{!"lang_hooks_for_decls", !72, i64 0, !72, i64 8, !72, i64 16, !72, i64 24, !72, i64 32, !72, i64 40, !72, i64 48, !72, i64 56, !72, i64 64, !72, i64 72, !72, i64 80, !72, i64 88, !72, i64 96, !72, i64 104, !72, i64 112, !72, i64 120, !72, i64 128, !72, i64 136, !72, i64 144, !72, i64 152}
!78 = !{!"lang_hooks_for_types", !72, i64 0, !72, i64 8, !72, i64 16, !72, i64 24, !72, i64 32, !72, i64 40, !72, i64 48, !72, i64 56, !72, i64 64, !72, i64 72, !72, i64 80, !72, i64 88, !72, i64 96, !72, i64 104, !72, i64 112, !67, i64 120}
!79 = !{!"lang_hooks_for_lto", !72, i64 0, !72, i64 8, !72, i64 16}
!80 = !{!81, !67, i64 16}
!81 = !{!"", !72, i64 0, !66, i64 8, !66, i64 12, !67, i64 16}
!82 = !{!81, !72, i64 0}
!83 = !{i32 0, i32 2}
!84 = !{!"opts.c:matches_main_base"}
!85 = !{!72, !72, i64 0}
!86 = !{!"function_entry_count", i64 1}
!87 = !{!"opts.c:base_of_path"}
!88 = !{!"branch_weights", i32 648, i32 200, i32 90, i32 162}
!89 = distinct !{!89, !90}
!90 = !{!"llvm.loop.mustprogress"}
!91 = !{!"branch_weights", i32 1, i32 2}
!92 = !{!"branch_weights", i32 1, i32 1}
!93 = !{!"branch_weights", i32 1, i32 0}
!94 = distinct !{!94, !90}
!95 = !{!"opts.c:VEC_const_char_p_base_length"}
!96 = !{!"branch_weights", i32 2, i32 1}
!97 = !{!98, !66, i64 0}
!98 = !{!"VEC_const_char_p_base", !66, i64 0, !66, i64 4, !67, i64 8}
!99 = !{!"opts.c:VEC_const_char_p_base_pop"}
!100 = !{!71, !72, i64 176}
!101 = distinct !{!101, !90}
!102 = distinct !{!102, !90}
!103 = !{!"opts.c:VEC_char_p_base_length"}
!104 = !{!105, !66, i64 0}
!105 = !{!"VEC_char_p_base", !66, i64 0, !66, i64 4, !67, i64 8}
!106 = !{!"opts.c:VEC_char_p_base_iterate"}
!107 = !{!71, !72, i64 32}
!108 = !{!71, !72, i64 40}
!109 = !{!110, !66, i64 8}
!110 = !{!"param_info", !72, i64 0, !66, i64 8, !67, i64 12, !66, i64 16, !66, i64 20, !72, i64 24}
!111 = !{!"branch_weights", i32 127, i32 1}
!112 = !{!"branch_weights", i32 1, i32 10}
!113 = !{!"branch_weights", i32 8, i32 3}
!114 = !{!"branch_weights", i32 2, i32 7}
!115 = !{!"branch_weights", i32 127, i32 513}
!116 = distinct !{!116, !90}
!117 = !{!118, !72, i64 1720}
!118 = !{!"gcc_target", !119, i64 0, !121, i64 368, !122, i64 664, !66, i64 744, !72, i64 752, !72, i64 760, !72, i64 768, !72, i64 776, !72, i64 784, !72, i64 792, !72, i64 800, !72, i64 808, !72, i64 816, !72, i64 824, !72, i64 832, !72, i64 840, !72, i64 848, !72, i64 856, !72, i64 864, !72, i64 872, !72, i64 880, !72, i64 888, !72, i64 896, !72, i64 904, !72, i64 912, !72, i64 920, !72, i64 928, !72, i64 936, !72, i64 944, !72, i64 952, !72, i64 960, !72, i64 968, !72, i64 976, !72, i64 984, !72, i64 992, !72, i64 1000, !72, i64 1008, !72, i64 1016, !72, i64 1024, !72, i64 1032, !72, i64 1040, !72, i64 1048, !72, i64 1056, !73, i64 1064, !73, i64 1072, !72, i64 1080, !72, i64 1088, !72, i64 1096, !72, i64 1104, !72, i64 1112, !72, i64 1120, !72, i64 1128, !72, i64 1136, !72, i64 1144, !72, i64 1152, !72, i64 1160, !72, i64 1168, !123, i64 1176, !72, i64 1232, !72, i64 1240, !72, i64 1248, !72, i64 1256, !72, i64 1264, !72, i64 1272, !72, i64 1280, !72, i64 1288, !72, i64 1296, !72, i64 1304, !72, i64 1312, !72, i64 1320, !72, i64 1328, !72, i64 1336, !72, i64 1344, !72, i64 1352, !72, i64 1360, !72, i64 1368, !72, i64 1376, !72, i64 1384, !72, i64 1392, !72, i64 1400, !72, i64 1408, !72, i64 1416, !72, i64 1424, !72, i64 1432, !72, i64 1440, !72, i64 1448, !72, i64 1456, !73, i64 1464, !124, i64 1472, !72, i64 1664, !72, i64 1672, !72, i64 1680, !72, i64 1688, !72, i64 1696, !72, i64 1704, !72, i64 1712, !72, i64 1720, !72, i64 1728, !72, i64 1736, !72, i64 1744, !72, i64 1752, !72, i64 1760, !72, i64 1768, !72, i64 1776, !125, i64 1784, !126, i64 1792, !127, i64 1896, !128, i64 1968, !72, i64 2016, !67, i64 2024, !67, i64 2025, !67, i64 2026, !67, i64 2027, !67, i64 2028, !67, i64 2029, !67, i64 2030, !67, i64 2031, !67, i64 2032, !67, i64 2033, !67, i64 2034, !67, i64 2035}
!119 = !{!"asm_out", !72, i64 0, !72, i64 8, !72, i64 16, !120, i64 24, !120, i64 56, !72, i64 88, !72, i64 96, !72, i64 104, !72, i64 112, !72, i64 120, !72, i64 128, !72, i64 136, !72, i64 144, !72, i64 152, !72, i64 160, !72, i64 168, !72, i64 176, !72, i64 184, !72, i64 192, !72, i64 200, !72, i64 208, !72, i64 216, !72, i64 224, !72, i64 232, !72, i64 240, !72, i64 248, !72, i64 256, !72, i64 264, !72, i64 272, !72, i64 280, !72, i64 288, !72, i64 296, !72, i64 304, !72, i64 312, !72, i64 320, !72, i64 328, !72, i64 336, !72, i64 344, !72, i64 352, !72, i64 360}
!120 = !{!"asm_int_op", !72, i64 0, !72, i64 8, !72, i64 16, !72, i64 24}
!121 = !{!"sched", !72, i64 0, !72, i64 8, !72, i64 16, !72, i64 24, !72, i64 32, !72, i64 40, !72, i64 48, !72, i64 56, !72, i64 64, !72, i64 72, !72, i64 80, !72, i64 88, !72, i64 96, !72, i64 104, !72, i64 112, !72, i64 120, !72, i64 128, !72, i64 136, !72, i64 144, !72, i64 152, !72, i64 160, !72, i64 168, !72, i64 176, !72, i64 184, !72, i64 192, !72, i64 200, !72, i64 208, !72, i64 216, !72, i64 224, !72, i64 232, !72, i64 240, !72, i64 248, !72, i64 256, !72, i64 264, !72, i64 272, !72, i64 280, !72, i64 288}
!122 = !{!"vectorize", !72, i64 0, !72, i64 8, !72, i64 16, !72, i64 24, !72, i64 32, !72, i64 40, !72, i64 48, !72, i64 56, !72, i64 64, !72, i64 72}
!123 = !{!"addr_space", !72, i64 0, !72, i64 8, !72, i64 16, !72, i64 24, !72, i64 32, !72, i64 40, !72, i64 48}
!124 = !{!"calls", !72, i64 0, !72, i64 8, !72, i64 16, !72, i64 24, !72, i64 32, !72, i64 40, !72, i64 48, !72, i64 56, !72, i64 64, !72, i64 72, !72, i64 80, !72, i64 88, !72, i64 96, !72, i64 104, !72, i64 112, !72, i64 120, !72, i64 128, !72, i64 136, !72, i64 144, !72, i64 152, !72, i64 160, !72, i64 168, !72, i64 176, !72, i64 184}
!125 = !{!"c", !72, i64 0}
!126 = !{!"cxx", !72, i64 0, !72, i64 8, !72, i64 16, !72, i64 24, !72, i64 32, !72, i64 40, !72, i64 48, !72, i64 56, !72, i64 64, !72, i64 72, !72, i64 80, !72, i64 88, !72, i64 96}
!127 = !{!"emutls", !72, i64 0, !72, i64 8, !72, i64 16, !72, i64 24, !72, i64 32, !72, i64 40, !72, i64 48, !72, i64 56, !67, i64 64, !67, i64 65}
!128 = !{!"target_option_hooks", !72, i64 0, !72, i64 8, !72, i64 16, !72, i64 24, !72, i64 32, !72, i64 40}
!129 = !{!118, !66, i64 744}
!130 = !{!118, !67, i64 2024}
!131 = !{!"branch_weights", i32 1, i32 11}
!132 = !{!"branch_weights", i32 585677359, i32 1561806289}
!133 = !{!"branch_weights", i32 1610612736, i32 536870912}
!134 = !{!"branch_weights", i32 5, i32 1}
!135 = !{!"branch_weights", i32 1, i32 5}
!136 = !{!110, !67, i64 12}
!137 = !{!"branch_weights", i32 5, i32 4}
!138 = !{!"branch_weights", i32 644245094, i32 1503238554}
!139 = !{!"opts.c:handle_options"}
!140 = !{!"branch_weights", i32 8, i32 2}
!141 = !{!"branch_weights", i32 1, i32 8}
!142 = !{!"branch_weights", i32 449, i32 127}
!143 = distinct !{!143, !90}
!144 = !{!"opts.c:add_input_filename"}
!145 = !{!"function_entry_count", i64 7}
!146 = !{!"opts.c:handle_option"}
!147 = !{!148, !66, i64 24}
!148 = !{!"cl_option", !72, i64 0, !72, i64 8, !149, i64 16, !67, i64 18, !66, i64 20, !66, i64 24, !72, i64 32, !66, i64 40, !66, i64 44}
!149 = !{!"short", !67, i64 0}
!150 = !{!"branch_weights", i32 8, i32 1}
!151 = !{!148, !67, i64 18}
!152 = !{!"branch_weights", i32 4, i32 11}
!153 = !{!"branch_weights", i32 1, i32 35}
!154 = !{!"branch_weights", i32 20, i32 16}
!155 = !{!71, !72, i64 56}
!156 = !{!"branch_weights", i32 3, i32 2}
!157 = !{!148, !72, i64 0}
!158 = !{!148, !72, i64 32}
!159 = !{!"branch_weights", i32 4, i32 5}
!160 = !{!"branch_weights", i32 7, i32 2}
!161 = !{!71, !72, i64 48}
!162 = !{!118, !72, i64 760}
!163 = !{!"branch_weights", i32 1997588184, i32 149895464}
!164 = !{!"opts.c:postpone_unknown_option_warning"}
!165 = !{!"opts.c:complain_wrong_lang"}
!166 = !{!"opts.c:integral_argument"}
!167 = !{!"branch_weights", i32 1, i32 127}
!168 = !{!"branch_weights", i32 127, i32 257}
!169 = distinct !{!169, !90}
!170 = !{!149, !149, i64 0}
!171 = !{!"branch_weights", i32 2, i32 6}
!172 = !{!"function_entry_count", i64 4}
!173 = !{!148, !66, i64 40}
!174 = !{!"branch_weights", i32 1, i32 5, i32 1, i32 1, i32 1, i32 1}
!175 = !{!148, !66, i64 44}
!176 = !{!"opts.c:common_handle_option"}
!177 = !{!"branch_weights", i32 5, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!178 = distinct !{!178, !90}
!179 = distinct !{!179, !90}
!180 = !{!118, !72, i64 768}
!181 = !{!182, !72, i64 0}
!182 = !{!"", !72, i64 0, !66, i64 8}
!183 = distinct !{!183, !90}
!184 = !{!182, !66, i64 8}
!185 = distinct !{!185, !90}
!186 = !{!73, !73, i64 0}
!187 = !{!188, !72, i64 0}
!188 = !{!"diagnostic_context", !72, i64 0, !67, i64 8, !67, i64 56, !67, i64 57, !67, i64 60, !67, i64 3540, !67, i64 3541, !72, i64 3544, !72, i64 3552, !72, i64 3560, !72, i64 3568, !72, i64 3576, !66, i64 3584, !67, i64 3588}
!189 = !{!190, !66, i64 28}
!190 = !{!"pretty_print_info", !72, i64 0, !72, i64 8, !66, i64 16, !66, i64 20, !66, i64 24, !191, i64 28, !72, i64 40, !67, i64 48, !67, i64 49, !67, i64 50}
!191 = !{!"", !66, i64 0, !66, i64 4}
!192 = !{!188, !67, i64 3540}
!193 = !{!"opts.c:VEC_const_char_p_heap_safe_push"}
!194 = !{!"opts.c:VEC_const_char_p_heap_reserve"}
!195 = !{!"opts.c:VEC_const_char_p_base_quick_push"}
!196 = !{!"opts.c:VEC_const_char_p_base_space"}
!197 = !{!98, !66, i64 4}
!198 = !{!"opts.c:write_langs"}
!199 = distinct !{!199, !90}
!200 = distinct !{!200, !90}
!201 = !{!"opts.c:handle_param"}
!202 = !{!"opts.c:print_specific_help"}
!203 = distinct !{!203, !90}
!204 = !{!"opts.c:add_comma_separated_to_vector"}
!205 = distinct !{!205, !90}
!206 = !{!"opts.c:set_debug_level"}
!207 = !{!"opts.c:print_filtered_help"}
!208 = !{!110, !72, i64 0}
!209 = !{!110, !72, i64 24}
!210 = distinct !{!210, !90}
!211 = !{!148, !72, i64 8}
!212 = !{i32 -1, i32 2}
!213 = distinct !{!213, !90}
!214 = distinct !{!214, !90}
!215 = !{!"opts.c:wrap_help"}
!216 = distinct !{!216, !90}
!217 = distinct !{!217, !90}
!218 = distinct !{!218, !90}
!219 = !{!"function_entry_count", i64 15144}
!220 = !{!"branch_weights", i32 1, i32 15145}
!221 = !{!"branch_weights", i32 2, i32 15145, i32 1, i32 1, i32 1}
!222 = !{!"opts.c:VEC_char_p_heap_safe_push"}
!223 = !{!"opts.c:VEC_char_p_heap_reserve"}
!224 = !{!"opts.c:VEC_char_p_base_quick_push"}
!225 = !{!"opts.c:VEC_char_p_base_space"}
!226 = !{!105, !66, i64 4}
!227 = !{!228, !67, i64 131}
!228 = !{!"cl_optimization", !66, i64 0, !66, i64 4, !66, i64 8, !66, i64 12, !66, i64 16, !66, i64 20, !67, i64 24, !67, i64 25, !67, i64 26, !67, i64 27, !67, i64 28, !67, i64 29, !67, i64 30, !67, i64 31, !67, i64 32, !67, i64 33, !67, i64 34, !67, i64 35, !67, i64 36, !67, i64 37, !67, i64 38, !67, i64 39, !67, i64 40, !67, i64 41, !67, i64 42, !67, i64 43, !67, i64 44, !67, i64 45, !67, i64 46, !67, i64 47, !67, i64 48, !67, i64 49, !67, i64 50, !67, i64 51, !67, i64 52, !67, i64 53, !67, i64 54, !67, i64 55, !67, i64 56, !67, i64 57, !67, i64 58, !67, i64 59, !67, i64 60, !67, i64 61, !67, i64 62, !67, i64 63, !67, i64 64, !67, i64 65, !67, i64 66, !67, i64 67, !67, i64 68, !67, i64 69, !67, i64 70, !67, i64 71, !67, i64 72, !67, i64 73, !67, i64 74, !67, i64 75, !67, i64 76, !67, i64 77, !67, i64 78, !67, i64 79, !67, i64 80, !67, i64 81, !67, i64 82, !67, i64 83, !67, i64 84, !67, i64 85, !67, i64 86, !67, i64 87, !67, i64 88, !67, i64 89, !67, i64 90, !67, i64 91, !67, i64 92, !67, i64 93, !67, i64 94, !67, i64 95, !67, i64 96, !67, i64 97, !67, i64 98, !67, i64 99, !67, i64 100, !67, i64 101, !67, i64 102, !67, i64 103, !67, i64 104, !67, i64 105, !67, i64 106, !67, i64 107, !67, i64 108, !67, i64 109, !67, i64 110, !67, i64 111, !67, i64 112, !67, i64 113, !67, i64 114, !67, i64 115, !67, i64 116, !67, i64 117, !67, i64 118, !67, i64 119, !67, i64 120, !67, i64 121, !67, i64 122, !67, i64 123, !67, i64 124, !67, i64 125, !67, i64 126, !67, i64 127, !67, i64 128, !67, i64 129, !67, i64 130, !67, i64 131, !67, i64 132, !67, i64 133, !67, i64 134, !67, i64 135, !67, i64 136, !67, i64 137, !67, i64 138, !67, i64 139, !67, i64 140, !67, i64 141, !67, i64 142, !67, i64 143, !67, i64 144, !67, i64 145, !67, i64 146, !67, i64 147, !67, i64 148, !67, i64 149, !67, i64 150, !67, i64 151, !67, i64 152, !67, i64 153, !67, i64 154, !67, i64 155, !67, i64 156, !67, i64 157, !67, i64 158, !67, i64 159, !67, i64 160, !67, i64 161, !67, i64 162, !67, i64 163, !67, i64 164, !67, i64 165, !67, i64 166, !67, i64 167, !67, i64 168, !67, i64 169, !67, i64 170, !67, i64 171, !67, i64 172, !67, i64 173, !67, i64 174, !67, i64 175, !67, i64 176, !67, i64 177, !67, i64 178, !67, i64 179, !67, i64 180}
!229 = !{!228, !67, i64 167}
!230 = !{!228, !67, i64 50}
!231 = !{!228, !67, i64 124}
!232 = !{!228, !67, i64 81}
!233 = !{!234, !72, i64 0}
!234 = !{!"cl_option_state", !72, i64 0, !73, i64 8, !67, i64 16}
!235 = !{!234, !67, i64 16}
!236 = !{!234, !73, i64 8}
