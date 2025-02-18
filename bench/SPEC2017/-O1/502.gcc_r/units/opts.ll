; ModuleID = 'opts.c'
source_filename = "opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.visibility_flags = type { i8, [3 x i8] }
%struct.anon = type { ptr, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
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

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
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
@.str.17 = private unnamed_addr constant [7 x i8] c"opts.c\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@warn_strict_aliasing = external local_unnamed_addr global i32, align 4
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
@cl_options = external constant [0 x %struct.cl_option], align 8
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@target_flags_explicit = external local_unnamed_addr global i32, align 4
@.str.20 = private unnamed_addr constant [26 x i8] c"-Werror=%s: No option -%s\00", align 1
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
@matches_main_base.last_path = internal unnamed_addr global ptr null, align 8
@matches_main_base.last_match = internal unnamed_addr global i32 0, align 4
@main_input_baselength = internal unnamed_addr global i32 0, align 4
@main_input_basename = internal unnamed_addr global ptr null, align 8
@main_input_filename = external local_unnamed_addr global ptr, align 8
@cl_options_count = external local_unnamed_addr constant i32, align 4
@.str.21 = private unnamed_addr constant [63 x i8] c"command line option %qs is not supported by this configuration\00", align 1
@.str.22 = private unnamed_addr constant [25 x i8] c"missing argument to \22%s\22\00", align 1
@.str.23 = private unnamed_addr constant [50 x i8] c"argument to \22%s\22 should be a non-negative integer\00", align 1
@.str.24 = private unnamed_addr constant [56 x i8] c"command line option \22%s\22 is valid for %s but not for %s\00", align 1
@lang_names = external local_unnamed_addr constant [0 x ptr], align 8
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@common_handle_option.verbose = internal unnamed_addr global i1 false, align 1
@cl_lang_count = external local_unnamed_addr constant i32, align 4
@extra_warnings = external local_unnamed_addr global i32, align 4
@common_handle_option.specifics = internal unnamed_addr constant [9 x %struct.anon] [%struct.anon { ptr @.str.25, i32 524288 }, %struct.anon { ptr @.str.26, i32 1048576 }, %struct.anon { ptr @.str.27, i32 262144 }, %struct.anon { ptr @.str.28, i32 1073741824 }, %struct.anon { ptr @.str.29, i32 131072 }, %struct.anon { ptr @.str.30, i32 33554432 }, %struct.anon { ptr @.str.31, i32 67108864 }, %struct.anon { ptr @.str.32, i32 2097152 }, %struct.anon zeroinitializer], align 16
@.str.25 = private unnamed_addr constant [11 x i8] c"optimizers\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"warnings\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"undocumented\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"params\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"joined\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"separate\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"common\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.34 = private unnamed_addr constant [69 x i8] c"warning: --help argument %.*s is ambiguous, please be more specific\0A\00", align 1
@.str.35 = private unnamed_addr constant [56 x i8] c"warning: unrecognized argument to --help= option: %.*s\0A\00", align 1
@warn_strict_overflow = external local_unnamed_addr global i32, align 4
@warn_unused = external local_unnamed_addr global i32, align 4
@aux_info_file_name = external local_unnamed_addr global ptr, align 8
@flag_gen_aux_info = external local_unnamed_addr global i32, align 4
@flag_branch_probabilities_set = internal unnamed_addr global i1 false, align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"once\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"every-line\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@flag_excess_precision_cmdline = external local_unnamed_addr global i32, align 4
@.str.39 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"unknown excess precision style \22%s\22\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"max-inline-insns-single\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"max-inline-insns-auto\00", align 1
@.str.43 = private unnamed_addr constant [57 x i8] c"structure alignment must be a small power of two, not %d\00", align 1
@initial_max_fld_align = external local_unnamed_addr global i32, align 4
@maximum_field_alignment = external local_unnamed_addr global i32, align 4
@flag_peel_loops_set = internal unnamed_addr global i1 false, align 1
@.str.44 = private unnamed_addr constant [61 x i8] c"Plugin support is disabled.  Configure with --enable-plugin.\00", align 1
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
@.str.45 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"hidden\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"protected\00", align 1
@.str.49 = private unnamed_addr constant [35 x i8] c"unrecognized visibility value \22%s\22\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@flag_sched_stalled_insns = external local_unnamed_addr global i32, align 4
@flag_sched_stalled_insns_dep = external local_unnamed_addr global i32, align 4
@.str.51 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@flag_stack_check = external local_unnamed_addr global i32, align 4
@.str.52 = private unnamed_addr constant [8 x i8] c"generic\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"specific\00", align 1
@.str.54 = private unnamed_addr constant [35 x i8] c"unknown stack check parameter \22%s\22\00", align 1
@stack_limit_rtx = external local_unnamed_addr global ptr, align 8
@.str.55 = private unnamed_addr constant [32 x i8] c"unrecognized register name \22%s\22\00", align 1
@.str.56 = private unnamed_addr constant [15 x i8] c"global-dynamic\00", align 1
@flag_tls_default = external local_unnamed_addr global i32, align 4
@.str.57 = private unnamed_addr constant [14 x i8] c"local-dynamic\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"initial-exec\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"local-exec\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"unknown tls-model \22%s\22\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"CB\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@.str.63 = private unnamed_addr constant [27 x i8] c"unknown ira algorithm \22%s\22\00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@flag_ira_region = external local_unnamed_addr global i32, align 4
@.str.65 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"mixed\00", align 1
@.str.67 = private unnamed_addr constant [24 x i8] c"unknown ira region \22%s\22\00", align 1
@flag_ira_verbose = external local_unnamed_addr global i32, align 4
@.str.68 = private unnamed_addr constant [34 x i8] c"dwarf version %d is not supported\00", align 1
@dwarf_version = external local_unnamed_addr global i32, align 4
@asm_file_name = external local_unnamed_addr global ptr, align 8
@pedantic = external local_unnamed_addr global i32, align 4
@flag_pedantic_errors = external local_unnamed_addr global i32, align 4
@.str.69 = private unnamed_addr constant [55 x i8] c"%s: --param arguments should be of the form NAME=VALUE\00", align 1
@.str.70 = private unnamed_addr constant [26 x i8] c"invalid --param value %qs\00", align 1
@print_specific_help.columns = internal unnamed_addr global i32 0, align 4
@.str.71 = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1
@.str.72 = private unnamed_addr constant [42 x i8] c"The following options are target specific\00", align 1
@.str.73 = private unnamed_addr constant [56 x i8] c"The following options control compiler warning messages\00", align 1
@.str.74 = private unnamed_addr constant [44 x i8] c"The following options control optimizations\00", align 1
@.str.75 = private unnamed_addr constant [47 x i8] c"The following options are language-independent\00", align 1
@.str.76 = private unnamed_addr constant [58 x i8] c"The --param option recognizes the following as parameters\00", align 1
@.str.77 = private unnamed_addr constant [57 x i8] c"The following options are specific to just the language \00", align 1
@.str.78 = private unnamed_addr constant [53 x i8] c"The following options are supported by the language \00", align 1
@.str.79 = private unnamed_addr constant [41 x i8] c"The following options are not documented\00", align 1
@.str.80 = private unnamed_addr constant [46 x i8] c"The following options take separate arguments\00", align 1
@.str.81 = private unnamed_addr constant [44 x i8] c"The following options take joined arguments\00", align 1
@.str.82 = private unnamed_addr constant [62 x i8] c"unrecognized include_flags 0x%x passed to print_specific_help\00", align 1
@.str.83 = private unnamed_addr constant [43 x i8] c"The following options are language-related\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"%s%s:\0A\00", align 1
@print_filtered_help.printed = internal unnamed_addr global ptr null, align 8
@undocumented_msg = internal constant [32 x i8] c"This switch lacks documentation\00", align 16
@print_filtered_help.new_help = internal global [128 x i8] zeroinitializer, align 16
@quiet_flag = external local_unnamed_addr global i32, align 4
@.str.85 = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"%#x\00", align 1
@.str.88 = private unnamed_addr constant [10 x i8] c"[enabled]\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"[disabled]\00", align 1
@.str.91 = private unnamed_addr constant [85 x i8] c" None found.  Use --help=%s to show *all* the options supported by the %s front-end\0A\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"  %-*.*s %.*s\0A\00", align 1
@set_debug_level.type_explicit = internal unnamed_addr global i1 false, align 1
@.str.95 = private unnamed_addr constant [49 x i8] c"debug format \22%s\22 conflicts with prior selection\00", align 1
@debug_type_names = external local_unnamed_addr constant [0 x ptr], align 8
@.str.96 = private unnamed_addr constant [37 x i8] c"unrecognised debug output level \22%s\22\00", align 1
@.str.97 = private unnamed_addr constant [34 x i8] c"debug output level %s is too high\00", align 1
@str = private unnamed_addr constant [56 x i8] c" No options with the desired characteristics were found\00", align 1
@str.98 = private unnamed_addr constant [74 x i8] c" All options with the desired characteristics have already been displayed\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !45 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !46
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !45 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !46
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !45 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !56

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #26
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !50
  %11 = load i8, ptr %3, align 1, !tbaa !57
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !45 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !56

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #26
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !50
  %11 = load i8, ptr %3, align 1, !tbaa !57
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !45 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !46
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !56

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #26
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !50
  %11 = load i8, ptr %3, align 1, !tbaa !57
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !45 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !46
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !45 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !56

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #26
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !58
  store i8 %12, ptr %4, align 1, !tbaa !57
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !45 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !56

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #26
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !58
  store i8 %12, ptr %4, align 1, !tbaa !57
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !45 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !46
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !56

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #26
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !58
  store i8 %12, ptr %4, align 1, !tbaa !57
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !45 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #26
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !45 {
  %2 = load i32, ptr %0, align 8, !tbaa !60
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !45 {
  %2 = load i32, ptr %0, align 8, !tbaa !60
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !45 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #26
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !61
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !45 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #26
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !61
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !45 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !45 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !45 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !45 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #26
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
  br i1 %23, label %7, label %24, !llvm.loop !62

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !45 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @set_struct_debug_option(ptr noundef %0) local_unnamed_addr #9 !prof !45 {
  br label %2

2:                                                ; preds = %69, %1
  %3 = phi ptr [ %0, %1 ], [ %70, %69 ]
  %4 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @set_struct_debug_option.dfn_lbl, ptr noundef nonnull dereferenceable(1) %3, i64 noundef 4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %3, i64 4
  br label %18

8:                                                ; preds = %2
  %9 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @set_struct_debug_option.dir_lbl, ptr noundef nonnull dereferenceable(1) %3, i64 noundef 4)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = getelementptr inbounds i8, ptr %3, i64 4
  br label %18

13:                                               ; preds = %8
  %14 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @set_struct_debug_option.ind_lbl, ptr noundef nonnull dereferenceable(1) %3, i64 noundef 4)
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = getelementptr inbounds i8, ptr %3, i64 4
  br label %18

18:                                               ; preds = %11, %13, %16, %6
  %19 = phi ptr [ %7, %6 ], [ %12, %11 ], [ %17, %16 ], [ %3, %13 ]
  %20 = phi i1 [ false, %6 ], [ false, %11 ], [ false, %16 ], [ true, %13 ]
  %21 = phi i64 [ 0, %6 ], [ 1, %11 ], [ 2, %16 ], [ 3, %13 ]
  %22 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @set_struct_debug_option.ord_lbl, ptr noundef nonnull dereferenceable(1) %19, i64 noundef 4)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @set_struct_debug_option.gen_lbl, ptr noundef nonnull dereferenceable(1) %19, i64 noundef 4)
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i64 4, i64 0
  br label %28

28:                                               ; preds = %18, %24
  %29 = phi i64 [ %27, %24 ], [ 4, %18 ]
  %30 = phi i1 [ %26, %24 ], [ false, %18 ]
  %31 = getelementptr inbounds i8, ptr %19, i64 %29
  %32 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @set_struct_debug_option.none_lbl, ptr noundef nonnull dereferenceable(1) %31, i64 noundef 4)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = getelementptr inbounds i8, ptr %31, i64 4
  br label %52

36:                                               ; preds = %28
  %37 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @set_struct_debug_option.any_lbl, ptr noundef nonnull dereferenceable(1) %31, i64 noundef 3)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = getelementptr inbounds i8, ptr %31, i64 3
  br label %52

41:                                               ; preds = %36
  %42 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @set_struct_debug_option.sys_lbl, ptr noundef nonnull dereferenceable(1) %31, i64 noundef 3)
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = getelementptr inbounds i8, ptr %31, i64 3
  br label %52

46:                                               ; preds = %41
  %47 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) @set_struct_debug_option.base_lbl, ptr noundef nonnull dereferenceable(1) %31, i64 noundef 4)
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
  store i32 %54, ptr @debug_struct_ordinary, align 4, !tbaa !61
  store i32 %54, ptr getelementptr inbounds ([3 x i32], ptr @debug_struct_ordinary, i64 0, i64 1), align 4, !tbaa !61
  store i32 %54, ptr getelementptr inbounds ([3 x i32], ptr @debug_struct_ordinary, i64 0, i64 2), align 4, !tbaa !61
  br label %57

57:                                               ; preds = %56, %55
  br i1 %23, label %67, label %58

58:                                               ; preds = %57
  store i32 %54, ptr @debug_struct_generic, align 4, !tbaa !61
  store i32 %54, ptr getelementptr inbounds ([3 x i32], ptr @debug_struct_generic, i64 0, i64 1), align 4, !tbaa !61
  br label %65

59:                                               ; preds = %52
  br i1 %30, label %62, label %60

60:                                               ; preds = %59
  %61 = getelementptr inbounds [3 x i32], ptr @debug_struct_ordinary, i64 0, i64 %21
  store i32 %54, ptr %61, align 4, !tbaa !61
  br label %62

62:                                               ; preds = %60, %59
  br i1 %23, label %67, label %63

63:                                               ; preds = %62
  %64 = getelementptr inbounds [3 x i32], ptr @debug_struct_generic, i64 0, i64 %21
  br label %65

65:                                               ; preds = %58, %63
  %66 = phi ptr [ %64, %63 ], [ getelementptr inbounds ([3 x i32], ptr @debug_struct_generic, i64 0, i64 2), %58 ]
  store i32 %54, ptr %66, align 4, !tbaa !61
  br label %67

67:                                               ; preds = %65, %62, %57
  %68 = load i8, ptr %53, align 1, !tbaa !57
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
  %73 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @debug_struct_ordinary, i64 0, i64 1), align 4, !tbaa !61
  %74 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @debug_struct_ordinary, i64 0, i64 2), align 4, !tbaa !61
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @debug_struct_generic, i64 0, i64 1), align 4, !tbaa !61
  %78 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @debug_struct_generic, i64 0, i64 2), align 4, !tbaa !61
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %76, %72
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.2) #26
  br label %81

81:                                               ; preds = %76, %80
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #10

declare void @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @should_emit_struct_debug(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !45 {
  %3 = alloca %struct.expanded_location, align 8
  %4 = alloca %struct.expanded_location, align 8
  %5 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 4), align 8, !tbaa !65
  %6 = tail call zeroext i8 %5(ptr noundef %0) #26
  %7 = icmp eq i8 %6, 0
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds [3 x i32], ptr @debug_struct_generic, i64 0, i64 %8
  %10 = getelementptr inbounds [3 x i32], ptr @debug_struct_ordinary, i64 0, i64 %8
  %11 = select i1 %7, ptr %10, ptr %9
  %12 = load i32, ptr %11, align 4, !tbaa !61
  switch i32 %12, label %14 [
    i32 0, label %64
    i32 3, label %13
  ]

13:                                               ; preds = %2
  br label %64

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = icmp eq i32 %12, 2
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.tree_decl_minimal, ptr %16, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !57
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %3, i32 noundef %20) #26
  %21 = getelementptr inbounds %struct.expanded_location, ptr %3, i64 0, i32 3
  %22 = load i8, ptr %21, align 8, !tbaa !73
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %64

24:                                               ; preds = %18, %14
  %25 = getelementptr inbounds %struct.tree_decl_minimal, ptr %16, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !57
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %4, i32 noundef %26) #26
  %27 = load ptr, ptr %4, align 8, !tbaa !75
  %28 = load ptr, ptr @matches_main_base.last_path, align 8, !tbaa !46
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %60, label %30

30:                                               ; preds = %24, %38
  %31 = phi ptr [ %39, %38 ], [ %27, %24 ]
  %32 = phi ptr [ %40, %38 ], [ null, %24 ]
  %33 = phi ptr [ %41, %38 ], [ %27, %24 ]
  %34 = load i8, ptr %33, align 1, !tbaa !57
  switch i8 %34, label %38 [
    i8 0, label %42
    i8 47, label %35
    i8 46, label %37
  ]

35:                                               ; preds = %30
  %36 = getelementptr inbounds i8, ptr %33, i64 1
  br label %38

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %35, %30
  %39 = phi ptr [ %36, %35 ], [ %31, %37 ], [ %31, %30 ]
  %40 = phi ptr [ null, %35 ], [ %33, %37 ], [ %32, %30 ]
  %41 = getelementptr inbounds i8, ptr %33, i64 1
  br label %30, !llvm.loop !76

42:                                               ; preds = %30
  %43 = icmp eq ptr %32, null
  %44 = select i1 %43, ptr %33, ptr %32
  %45 = ptrtoint ptr %44 to i64
  %46 = ptrtoint ptr %31 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  store ptr %27, ptr @matches_main_base.last_path, align 8, !tbaa !46
  %49 = load i32, ptr @main_input_baselength, align 4, !tbaa !61
  %50 = icmp eq i32 %49, %48
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = load ptr, ptr @main_input_basename, align 8, !tbaa !46
  %53 = shl i64 %47, 32
  %54 = ashr exact i64 %53, 32
  %55 = call i32 @bcmp(ptr %31, ptr %52, i64 %54)
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i32
  br label %58

58:                                               ; preds = %51, %42
  %59 = phi i32 [ 0, %42 ], [ %57, %51 ]
  store i32 %59, ptr @matches_main_base.last_match, align 4, !tbaa !61
  br label %60

60:                                               ; preds = %24, %58
  %61 = load i32, ptr @matches_main_base.last_match, align 4, !tbaa !61
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i8
  br label %64

64:                                               ; preds = %60, %18, %2, %13
  %65 = phi i8 [ 1, %13 ], [ 0, %2 ], [ 1, %18 ], [ %63, %60 ]
  ret i8 %65
}

declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @print_ignored_options() local_unnamed_addr #9 !prof !77 {
  %1 = load i32, ptr @input_location, align 4, !tbaa !61
  store i32 0, ptr @input_location, align 4, !tbaa !61
  br label %2

2:                                                ; preds = %10, %0
  %3 = load ptr, ptr @ignored_options, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !78

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !79
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10, !prof !78

10:                                               ; preds = %7
  %11 = load i32, ptr %3, align 8, !tbaa !79
  %12 = add i32 %11, -1
  store i32 %12, ptr %3, align 8, !tbaa !79
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.VEC_const_char_p_base, ptr %3, i64 0, i32 2, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef %15) #26
  br label %2, !llvm.loop !81

17:                                               ; preds = %7
  store i32 %1, ptr @input_location, align 4, !tbaa !61
  ret void
}

declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @flag_instrument_functions_exclude_p(ptr noundef %0) local_unnamed_addr #9 !prof !45 {
  %2 = alloca %struct.expanded_location, align 8
  %3 = load ptr, ptr @flag_instrument_functions_exclude_functions, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 8, !tbaa !82
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !84
  %10 = tail call ptr %9(ptr noundef %0, i32 noundef 0) #26
  %11 = load ptr, ptr @flag_instrument_functions_exclude_functions, align 8
  %12 = icmp eq ptr %11, null
  br label %13

13:                                               ; preds = %25, %8
  %14 = phi i64 [ %28, %25 ], [ 0, %8 ]
  br i1 %12, label %22, label %15

15:                                               ; preds = %13
  %16 = load i32, ptr %11, align 8, !tbaa !82
  %17 = zext i32 %16 to i64
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.VEC_char_p_base, ptr %11, i64 0, i32 2, i64 %14
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  br label %22

22:                                               ; preds = %13, %15, %19
  %23 = phi ptr [ %21, %19 ], [ null, %15 ], [ null, %13 ]
  %24 = phi i1 [ true, %19 ], [ false, %15 ], [ false, %13 ]
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %23)
  %27 = icmp eq ptr %26, null
  %28 = add nuw i64 %14, 1
  br i1 %27, label %13, label %29, !llvm.loop !85

29:                                               ; preds = %25
  br i1 %24, label %60, label %30

30:                                               ; preds = %22, %1, %29, %5
  %31 = load ptr, ptr @flag_instrument_functions_exclude_files, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %59, label %33

33:                                               ; preds = %30
  %34 = load i32, ptr %31, align 8, !tbaa !82
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %59, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !57
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %38) #26
  %39 = load ptr, ptr %2, align 8, !tbaa !75
  %40 = load ptr, ptr @flag_instrument_functions_exclude_files, align 8
  %41 = icmp eq ptr %40, null
  br label %42

42:                                               ; preds = %54, %36
  %43 = phi i64 [ %57, %54 ], [ 0, %36 ]
  br i1 %41, label %51, label %44

44:                                               ; preds = %42
  %45 = load i32, ptr %40, align 8, !tbaa !82
  %46 = zext i32 %45 to i64
  %47 = icmp ult i64 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.VEC_char_p_base, ptr %40, i64 0, i32 2, i64 %43
  %50 = load ptr, ptr %49, align 8, !tbaa !46
  br label %51

51:                                               ; preds = %42, %44, %48
  %52 = phi ptr [ %50, %48 ], [ null, %44 ], [ null, %42 ]
  %53 = phi i1 [ true, %48 ], [ false, %44 ], [ false, %42 ]
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(1) %52)
  %56 = icmp eq ptr %55, null
  %57 = add nuw i64 %43, 1
  br i1 %56, label %42, label %58, !llvm.loop !86

58:                                               ; preds = %54
  br i1 %53, label %60, label %59

59:                                               ; preds = %51, %30, %58, %33
  br label %60

60:                                               ; preds = %58, %29, %59
  %61 = phi i8 [ 1, %29 ], [ 1, %58 ], [ 0, %59 ]
  ret i8 %61
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: cold nounwind uwtable
define dso_local void @decode_options(i32 noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !77 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i1, ptr @decode_options.first_time_p, align 1
  br i1 %5, label %18, label %6, !prof !87

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 4), align 8, !tbaa !88
  %8 = tail call i32 %7(i32 noundef %0, ptr noundef %1) #26, !prof !89
  store i32 %8, ptr @decode_options.initial_lang_mask, align 4, !tbaa !61
  %9 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 5), align 8, !tbaa !90
  %10 = load ptr, ptr @global_dc, align 8, !tbaa !46
  tail call void %9(ptr noundef %10) #26, !prof !91
  %11 = load ptr, ptr @compiler_params, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.param_info, ptr %11, i64 54, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !92
  store i32 %13, ptr @decode_options.initial_min_crossjump_insns, align 4, !tbaa !61
  %14 = getelementptr inbounds %struct.param_info, ptr %11, i64 95, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !92
  store i32 %15, ptr @decode_options.initial_max_fields_for_field_sensitive, align 4, !tbaa !61
  %16 = getelementptr inbounds %struct.param_info, ptr %11, i64 112, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !92
  store i32 %17, ptr @decode_options.initial_loop_invariant_max_bbs_in_loop, align 4, !tbaa !61
  br label %20

18:                                               ; preds = %2
  %19 = load i32, ptr @decode_options.initial_lang_mask, align 4, !tbaa !61
  br label %20

20:                                               ; preds = %18, %6
  %21 = phi i32 [ %8, %6 ], [ %19, %18 ]
  %22 = icmp ugt i32 %0, 1
  br i1 %22, label %23, label %56, !prof !94

23:                                               ; preds = %20
  %24 = zext i32 %0 to i64
  br label %25

25:                                               ; preds = %23, %53
  %26 = phi i64 [ 1, %23 ], [ %54, %53 ]
  %27 = getelementptr inbounds ptr, ptr %1, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(3) @.str.4)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32, !prof !95

31:                                               ; preds = %25
  store i32 1, ptr @optimize, align 4, !tbaa !61
  store i32 0, ptr @optimize_size, align 4, !tbaa !61
  br label %53

32:                                               ; preds = %25
  %33 = load i8, ptr %28, align 1, !tbaa !57
  %34 = icmp eq i8 %33, 45
  br i1 %34, label %35, label %53, !prof !96

35:                                               ; preds = %32
  %36 = getelementptr inbounds i8, ptr %28, i64 1
  %37 = load i8, ptr %36, align 1, !tbaa !57
  %38 = icmp eq i8 %37, 79
  br i1 %38, label %39, label %53, !prof !97

39:                                               ; preds = %35
  %40 = getelementptr inbounds i8, ptr %28, i64 2
  %41 = load i8, ptr %40, align 1, !tbaa !57
  %42 = icmp eq i8 %41, 115
  br i1 %42, label %43, label %48, !prof !87

43:                                               ; preds = %39
  %44 = getelementptr inbounds i8, ptr %28, i64 3
  %45 = load i8, ptr %44, align 1, !tbaa !57
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 1, ptr @optimize_size, align 4, !tbaa !61
  store i32 2, ptr @optimize, align 4, !tbaa !61
  br label %53

48:                                               ; preds = %43, %39
  %49 = tail call i32 @read_integral_parameter(ptr noundef nonnull %40, ptr noundef nonnull %28, i32 noundef -1) #26
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %53, label %51, !prof !87

51:                                               ; preds = %48
  %52 = tail call i32 @llvm.umin.i32(i32 %49, i32 255)
  store i32 %52, ptr @optimize, align 4
  store i32 0, ptr @optimize_size, align 4, !tbaa !61
  br label %53

53:                                               ; preds = %47, %51, %48, %31, %35, %32
  %54 = add nuw nsw i64 %26, 1
  %55 = icmp eq i64 %54, %24
  br i1 %55, label %56, label %25, !prof !98, !llvm.loop !99

56:                                               ; preds = %53, %20
  %57 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 96), align 8, !tbaa !100
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %60, !prof !87

59:                                               ; preds = %56
  store i32 1, ptr @flag_ira_algorithm, align 4, !tbaa !61
  br label %60

60:                                               ; preds = %59, %56
  %61 = load i32, ptr @optimize, align 4, !tbaa !61
  %62 = icmp sgt i32 %61, 0
  %63 = zext i1 %62 to i32
  store i32 %63, ptr @flag_defer_pop, align 4, !tbaa !61
  store i32 %63, ptr @flag_guess_branch_prob, align 4, !tbaa !61
  store i32 %63, ptr @flag_cprop_registers, align 4, !tbaa !61
  store i32 %63, ptr @flag_forward_propagate, align 4, !tbaa !61
  store i32 %63, ptr @flag_if_conversion, align 4, !tbaa !61
  store i32 %63, ptr @flag_if_conversion2, align 4, !tbaa !61
  store i32 %63, ptr @flag_ipa_pure_const, align 4, !tbaa !61
  store i32 %63, ptr @flag_ipa_reference, align 4, !tbaa !61
  store i32 %63, ptr @flag_merge_constants, align 4, !tbaa !61
  store i32 %63, ptr @flag_split_wide_types, align 4, !tbaa !61
  store i32 %63, ptr @flag_tree_ccp, align 4, !tbaa !61
  store i32 %63, ptr @flag_tree_dce, align 4, !tbaa !61
  store i32 %63, ptr @flag_tree_dom, align 4, !tbaa !61
  store i32 %63, ptr @flag_tree_dse, align 4, !tbaa !61
  store i32 %63, ptr @flag_tree_ter, align 4, !tbaa !61
  store i32 %63, ptr @flag_tree_sra, align 4, !tbaa !61
  store i32 %63, ptr @flag_tree_copyrename, align 4, !tbaa !61
  store i32 %63, ptr @flag_tree_fre, align 4, !tbaa !61
  store i32 %63, ptr @flag_tree_copy_prop, align 4, !tbaa !61
  store i32 %63, ptr @flag_tree_sink, align 4, !tbaa !61
  store i32 %63, ptr @flag_tree_ch, align 4, !tbaa !61
  %64 = icmp sgt i32 %61, 1
  %65 = zext i1 %64 to i32
  store i32 %65, ptr @flag_inline_small_functions, align 4, !tbaa !61
  store i32 %65, ptr @flag_indirect_inlining, align 4, !tbaa !61
  store i32 %65, ptr @flag_thread_jumps, align 4, !tbaa !61
  store i32 %65, ptr @flag_crossjumping, align 4, !tbaa !61
  store i32 %65, ptr @flag_optimize_sibling_calls, align 4, !tbaa !61
  store i32 %65, ptr @flag_cse_follow_jumps, align 4, !tbaa !61
  store i32 %65, ptr @flag_gcse, align 4, !tbaa !61
  store i32 %65, ptr @flag_expensive_optimizations, align 4, !tbaa !61
  store i32 %65, ptr @flag_rerun_cse_after_loop, align 4, !tbaa !61
  store i32 %65, ptr @flag_caller_saves, align 4, !tbaa !61
  store i32 %65, ptr @flag_peephole2, align 4, !tbaa !61
  %66 = load i32, ptr @optimize_size, align 4
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %64, i1 %67, i1 false, !prof !78
  %69 = zext i1 %68 to i32
  store i32 %69, ptr @flag_schedule_insns, align 4, !tbaa !61
  store i32 %65, ptr @flag_schedule_insns_after_reload, align 4, !tbaa !61
  store i32 %65, ptr @flag_regmove, align 4, !tbaa !61
  store i32 %65, ptr @flag_strict_aliasing, align 4, !tbaa !61
  store i32 %65, ptr @flag_strict_overflow, align 4, !tbaa !61
  store i32 %65, ptr @flag_reorder_blocks, align 4, !tbaa !61
  store i32 %65, ptr @flag_reorder_functions, align 4, !tbaa !61
  store i32 %65, ptr @flag_tree_vrp, align 4, !tbaa !61
  store i32 %65, ptr @flag_tree_builtin_call_dce, align 4, !tbaa !61
  store i32 %65, ptr @flag_tree_pre, align 4, !tbaa !61
  store i32 %65, ptr @flag_tree_switch_conversion, align 4, !tbaa !61
  store i32 %65, ptr @flag_ipa_cp, align 4, !tbaa !61
  store i32 %65, ptr @flag_ipa_sra, align 4, !tbaa !61
  %70 = load i32, ptr @decode_options.initial_max_fields_for_field_sensitive, align 4
  %71 = select i1 %64, i32 100, i32 %70, !prof !78
  tail call void @set_param_value(ptr noundef nonnull @.str.5, i32 noundef %71) #26
  %72 = load i32, ptr @decode_options.initial_loop_invariant_max_bbs_in_loop, align 4
  %73 = select i1 %64, i32 %72, i32 1000, !prof !78
  tail call void @set_param_value(ptr noundef nonnull @.str.6, i32 noundef %73) #26
  %74 = load i32, ptr @optimize, align 4, !tbaa !61
  %75 = icmp sgt i32 %74, 2
  %76 = zext i1 %75 to i32
  store i32 %76, ptr @flag_predictive_commoning, align 4, !tbaa !61
  store i32 %76, ptr @flag_inline_functions, align 4, !tbaa !61
  store i32 %76, ptr @flag_unswitch_loops, align 4, !tbaa !61
  store i32 %76, ptr @flag_gcse_after_reload, align 4, !tbaa !61
  store i32 %76, ptr @flag_tree_vectorize, align 4, !tbaa !61
  store i32 %76, ptr @flag_ipa_cp_clone, align 4, !tbaa !61
  br i1 %75, label %77, label %78, !prof !78

77:                                               ; preds = %60
  store i32 1, ptr @flag_ipa_cp, align 4, !tbaa !61
  br label %78

78:                                               ; preds = %77, %60
  %79 = icmp slt i32 %74, 2
  %80 = zext i1 %79 to i32
  store i32 %80, ptr @align_loops, align 4, !tbaa !61
  store i32 %80, ptr @align_jumps, align 4, !tbaa !61
  store i32 %80, ptr @align_labels, align 4, !tbaa !61
  store i32 %80, ptr @align_functions, align 4, !tbaa !61
  %81 = load i32, ptr @optimize_size, align 4, !tbaa !61
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83, !prof !78

83:                                               ; preds = %78
  store i32 1, ptr @flag_inline_functions, align 4, !tbaa !61
  store i32 1, ptr @optimize_size, align 4, !tbaa !61
  br i1 %75, label %84, label %87

84:                                               ; preds = %83
  store i32 2, ptr @optimize, align 4, !tbaa !61
  br label %87

85:                                               ; preds = %78
  %86 = load i32, ptr @decode_options.initial_min_crossjump_insns, align 4, !tbaa !61
  br label %87

87:                                               ; preds = %83, %84, %85
  %88 = phi i32 [ %86, %85 ], [ 1, %84 ], [ 1, %83 ]
  tail call void @set_param_value(ptr noundef nonnull @.str.7, i32 noundef %88) #26
  %89 = load i1, ptr @decode_options.first_time_p, align 1
  br i1 %89, label %94, label %90, !prof !87

90:                                               ; preds = %87
  store i32 1, ptr @flag_signed_char, align 4, !tbaa !61
  store i32 2, ptr @flag_short_enums, align 4, !tbaa !61
  %91 = load i32, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 3), align 8, !tbaa !112
  store i32 %91, ptr @target_flags, align 4, !tbaa !61
  %92 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 109), align 8, !tbaa !113
  %93 = zext i8 %92 to i32
  store i32 %93, ptr @flag_unwind_tables, align 4, !tbaa !61
  br label %94

94:                                               ; preds = %90, %87
  tail call void @lto_clear_user_options() #26
  %95 = load i32, ptr @optimize, align 4, !tbaa !61
  %96 = load i32, ptr @optimize_size, align 4, !tbaa !61
  tail call void @optimization_options(i32 noundef %95, i32 noundef %96) #26
  %97 = icmp ugt i32 %0, 1
  br i1 %97, label %98, label %767, !prof !94

98:                                               ; preds = %94
  %99 = or i32 %21, 3145728
  %100 = load i32, ptr @cl_options_count, align 4
  %101 = zext i32 %100 to i64
  br label %102

102:                                              ; preds = %98, %763
  %103 = phi i32 [ 1, %98 ], [ %765, %763 ]
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds ptr, ptr %1, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !46
  %107 = load i8, ptr %106, align 1, !tbaa !57
  %108 = icmp eq i8 %107, 45
  br i1 %108, label %109, label %113, !prof !114

109:                                              ; preds = %102
  %110 = getelementptr inbounds i8, ptr %106, i64 1
  %111 = load i8, ptr %110, align 1, !tbaa !57
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %147, !prof !115

113:                                              ; preds = %109, %102
  %114 = load ptr, ptr @main_input_filename, align 8, !tbaa !46
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %136, !prof !78

116:                                              ; preds = %113
  store ptr %106, ptr @main_input_filename, align 8, !tbaa !46
  br label %117

117:                                              ; preds = %125, %116
  %118 = phi ptr [ %106, %116 ], [ %126, %125 ]
  %119 = phi ptr [ null, %116 ], [ %127, %125 ]
  %120 = phi ptr [ %106, %116 ], [ %128, %125 ]
  %121 = load i8, ptr %120, align 1, !tbaa !57
  switch i8 %121, label %125 [
    i8 0, label %129
    i8 47, label %122
    i8 46, label %124
  ], !prof !116

122:                                              ; preds = %117
  %123 = getelementptr inbounds i8, ptr %120, i64 1
  br label %125

124:                                              ; preds = %117
  br label %125

125:                                              ; preds = %124, %122, %117
  %126 = phi ptr [ %123, %122 ], [ %118, %124 ], [ %118, %117 ]
  %127 = phi ptr [ null, %122 ], [ %120, %124 ], [ %119, %117 ]
  %128 = getelementptr inbounds i8, ptr %120, i64 1
  br label %117, !llvm.loop !76

129:                                              ; preds = %117
  %130 = icmp eq ptr %119, null
  %131 = select i1 %130, ptr %120, ptr %119, !prof !87
  store ptr %118, ptr @main_input_basename, align 8, !tbaa !46
  %132 = ptrtoint ptr %131 to i64
  %133 = ptrtoint ptr %118 to i64
  %134 = sub i64 %132, %133
  %135 = trunc i64 %134 to i32
  store i32 %135, ptr @main_input_baselength, align 4, !tbaa !61
  br label %136

136:                                              ; preds = %129, %113
  %137 = load i32, ptr @num_in_fnames, align 4, !tbaa !61
  %138 = add i32 %137, 1
  store i32 %138, ptr @num_in_fnames, align 4, !tbaa !61
  %139 = load ptr, ptr @in_fnames, align 8, !tbaa !46
  %140 = zext i32 %138 to i64
  %141 = shl nuw nsw i64 %140, 3
  %142 = tail call ptr @xrealloc(ptr noundef %139, i64 noundef %141) #26
  store ptr %142, ptr @in_fnames, align 8, !tbaa !46
  %143 = load i32, ptr @num_in_fnames, align 4, !tbaa !61
  %144 = add i32 %143, -1
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds ptr, ptr %142, i64 %145
  store ptr %106, ptr %146, align 8, !tbaa !46
  br label %763

147:                                              ; preds = %109
  %148 = tail call i64 @find_opt(ptr noundef nonnull %110, i32 noundef %99) #26
  %149 = icmp eq i64 %148, %101
  br i1 %149, label %150, label %198, !prof !115

150:                                              ; preds = %147
  %151 = load i8, ptr %110, align 1, !tbaa !57
  switch i8 %151, label %198 [
    i8 87, label %152
    i8 102, label %152
    i8 109, label %152
  ]

152:                                              ; preds = %150, %150, %150
  %153 = getelementptr inbounds i8, ptr %106, i64 2
  %154 = load i8, ptr %153, align 1, !tbaa !57
  %155 = icmp eq i8 %154, 110
  br i1 %155, label %156, label %198

156:                                              ; preds = %152
  %157 = getelementptr inbounds i8, ptr %106, i64 3
  %158 = load i8, ptr %157, align 1, !tbaa !57
  %159 = icmp eq i8 %158, 111
  br i1 %159, label %160, label %198

160:                                              ; preds = %156
  %161 = getelementptr inbounds i8, ptr %106, i64 4
  %162 = load i8, ptr %161, align 1, !tbaa !57
  %163 = icmp eq i8 %162, 45
  br i1 %163, label %164, label %198

164:                                              ; preds = %160
  %165 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %106)
  %166 = add i64 %165, -2
  %167 = tail call ptr @xmalloc(i64 noundef %166) #26
  store i8 45, ptr %167, align 1, !tbaa !57
  %168 = load i8, ptr %110, align 1, !tbaa !57
  %169 = getelementptr inbounds i8, ptr %167, i64 1
  store i8 %168, ptr %169, align 1, !tbaa !57
  %170 = getelementptr inbounds i8, ptr %167, i64 2
  %171 = getelementptr inbounds i8, ptr %106, i64 5
  %172 = add i64 %165, -4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %170, ptr nonnull align 1 %171, i64 %172, i1 false)
  %173 = tail call i64 @find_opt(ptr noundef nonnull %169, i32 noundef %99) #26
  %174 = icmp eq i64 %173, %101
  br i1 %174, label %175, label %195

175:                                              ; preds = %164
  %176 = load i8, ptr %169, align 1, !tbaa !57
  %177 = icmp eq i8 %176, 87
  br i1 %177, label %178, label %195

178:                                              ; preds = %175
  %179 = load ptr, ptr %105, align 8, !tbaa !46
  %180 = load ptr, ptr @ignored_options, align 8, !tbaa !46
  %181 = icmp eq ptr %180, null
  br i1 %181, label %187, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.VEC_const_char_p_base, ptr %180, i64 0, i32 1
  %184 = load i32, ptr %183, align 4, !tbaa !117
  %185 = load i32, ptr %180, align 8, !tbaa !79
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %189

187:                                              ; preds = %182, %178
  %188 = tail call ptr @vec_heap_p_reserve(ptr noundef %180, i32 noundef 1) #26
  store ptr %188, ptr @ignored_options, align 8, !tbaa !46
  br label %189

189:                                              ; preds = %187, %182
  %190 = load ptr, ptr @ignored_options, align 8, !tbaa !46
  %191 = load i32, ptr %190, align 8, !tbaa !79
  %192 = add i32 %191, 1
  store i32 %192, ptr %190, align 8, !tbaa !79
  %193 = zext i32 %191 to i64
  %194 = getelementptr inbounds %struct.VEC_const_char_p_base, ptr %190, i64 0, i32 2, i64 %193
  store ptr %179, ptr %194, align 8, !tbaa !46
  br label %195

195:                                              ; preds = %189, %175, %164
  %196 = phi i32 [ 1, %189 ], [ 0, %175 ], [ 0, %164 ]
  %197 = phi i1 [ false, %189 ], [ true, %175 ], [ true, %164 ]
  br i1 %197, label %198, label %755

198:                                              ; preds = %150, %195, %160, %156, %152, %147
  %199 = phi ptr [ %167, %195 ], [ %106, %160 ], [ %106, %156 ], [ %106, %152 ], [ %106, %147 ], [ %106, %150 ]
  %200 = phi ptr [ %167, %195 ], [ null, %160 ], [ null, %156 ], [ null, %152 ], [ null, %147 ], [ null, %150 ]
  %201 = phi i1 [ true, %195 ], [ false, %160 ], [ false, %156 ], [ false, %152 ], [ false, %147 ], [ false, %150 ]
  %202 = phi i32 [ 0, %195 ], [ 1, %160 ], [ 1, %156 ], [ 1, %152 ], [ 1, %147 ], [ 1, %150 ]
  %203 = phi i32 [ %196, %195 ], [ 0, %160 ], [ 0, %156 ], [ 0, %152 ], [ 0, %147 ], [ 0, %150 ]
  %204 = phi i64 [ %173, %195 ], [ %148, %160 ], [ %148, %156 ], [ %148, %152 ], [ %148, %147 ], [ %148, %150 ]
  %205 = icmp eq i64 %204, %101
  br i1 %205, label %755, label %206, !prof !115

206:                                              ; preds = %198
  %207 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %204
  br i1 %201, label %208, label %213, !prof !115

208:                                              ; preds = %206
  %209 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %204, i32 5
  %210 = load i32, ptr %209, align 8, !tbaa !118
  %211 = and i32 %210, 134217728
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %755

213:                                              ; preds = %208, %206
  %214 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %204, i32 5
  %215 = load i32, ptr %214, align 8, !tbaa !118
  %216 = and i32 %215, 8388608
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %219, label %218, !prof !120

218:                                              ; preds = %213
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.21, ptr noundef nonnull %199) #26
  br label %755

219:                                              ; preds = %213
  %220 = and i32 %215, 33554432
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %238, label %222, !prof !121

222:                                              ; preds = %219
  %223 = load ptr, ptr %105, align 8, !tbaa !46
  %224 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %204, i32 3
  %225 = load i8, ptr %224, align 2, !tbaa !122
  %226 = zext i8 %225 to i64
  %227 = getelementptr inbounds i8, ptr %223, i64 %226
  %228 = select i1 %201, i64 4, i64 1, !prof !123
  %229 = getelementptr inbounds i8, ptr %227, i64 %228
  %230 = load i8, ptr %229, align 1, !tbaa !57
  %231 = icmp eq i8 %230, 0
  %232 = and i32 %215, 268435456
  %233 = icmp eq i32 %232, 0
  %234 = and i1 %233, %231
  br i1 %234, label %235, label %244, !prof !124

235:                                              ; preds = %222
  %236 = and i32 %215, 67108864
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %244, label %241, !prof !87

238:                                              ; preds = %219
  %239 = and i32 %215, 67108864
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %244, label %241, !prof !125

241:                                              ; preds = %238, %235
  %242 = getelementptr inbounds ptr, ptr %105, i64 1
  %243 = load ptr, ptr %242, align 8, !tbaa !46
  br label %244

244:                                              ; preds = %241, %238, %235, %222
  %245 = phi ptr [ %229, %222 ], [ null, %238 ], [ null, %235 ], [ %243, %241 ]
  %246 = phi i32 [ 1, %222 ], [ 1, %238 ], [ 1, %235 ], [ 2, %241 ]
  %247 = and i32 %215, %99
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %251, !prof !115

249:                                              ; preds = %244
  %250 = load ptr, ptr %105, align 8, !tbaa !46
  tail call fastcc void @complain_wrong_lang(ptr noundef %250, ptr noundef nonnull %207, i32 noundef %21)
  br label %755

251:                                              ; preds = %244
  %252 = and i32 %215, 1048576
  %253 = icmp ne i32 %252, 0
  %254 = and i32 %215, 255
  %255 = icmp ne i32 %254, 0
  %256 = and i1 %253, %255
  %257 = and i32 %215, %21
  %258 = icmp eq i32 %257, 0
  %259 = and i1 %258, %256
  br i1 %259, label %260, label %262, !prof !115

260:                                              ; preds = %251
  %261 = load ptr, ptr %105, align 8, !tbaa !46
  tail call fastcc void @complain_wrong_lang(ptr noundef %261, ptr noundef nonnull %207, i32 noundef %21)
  br label %755

262:                                              ; preds = %251
  %263 = icmp eq ptr %245, null
  br i1 %263, label %264, label %272, !prof !121

264:                                              ; preds = %262
  %265 = and i32 %215, 100663296
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %305, label %267, !prof !125

267:                                              ; preds = %264
  %268 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 7), align 8, !tbaa !126
  %269 = tail call zeroext i8 %268(ptr noundef nonnull %199, i64 noundef %204) #26
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %271, label %755

271:                                              ; preds = %267
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.22, ptr noundef nonnull %199) #26
  br label %755

272:                                              ; preds = %262
  %273 = and i32 %215, 536870912
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %305, label %275, !prof !125

275:                                              ; preds = %272
  %276 = load i8, ptr %245, align 1, !tbaa !57
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %297, label %278

278:                                              ; preds = %275
  %279 = zext i8 %276 to i64
  %280 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %279
  %281 = load i16, ptr %280, align 2, !tbaa !127
  %282 = and i16 %281, 4
  %283 = icmp eq i16 %282, 0
  br i1 %283, label %295, label %284

284:                                              ; preds = %278, %289
  %285 = phi ptr [ %286, %289 ], [ %245, %278 ]
  %286 = getelementptr inbounds i8, ptr %285, i64 1
  %287 = load i8, ptr %286, align 1, !tbaa !57
  %288 = icmp eq i8 %287, 0
  br i1 %288, label %297, label %289, !llvm.loop !128

289:                                              ; preds = %284
  %290 = zext i8 %287 to i64
  %291 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %290
  %292 = load i16, ptr %291, align 2, !tbaa !127
  %293 = and i16 %292, 4
  %294 = icmp eq i16 %293, 0
  br i1 %294, label %295, label %284, !llvm.loop !128

295:                                              ; preds = %289, %278
  %296 = phi i1 [ %277, %278 ], [ %288, %289 ]
  br i1 %296, label %297, label %300

297:                                              ; preds = %284, %275, %295
  %298 = tail call i64 @strtol(ptr nocapture noundef nonnull %245, ptr noundef null, i32 noundef 10)
  %299 = trunc i64 %298 to i32
  br label %300

300:                                              ; preds = %297, %295
  %301 = phi i32 [ %299, %297 ], [ -1, %295 ]
  %302 = icmp eq i32 %301, -1
  br i1 %302, label %303, label %305

303:                                              ; preds = %300
  %304 = load ptr, ptr %207, align 8, !tbaa !129
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.23, ptr noundef %304) #26
  br label %755

305:                                              ; preds = %300, %272, %264
  %306 = phi i32 [ %301, %300 ], [ %202, %272 ], [ %202, %264 ]
  %307 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %204, i32 6
  %308 = load ptr, ptr %307, align 8, !tbaa !130
  %309 = icmp eq ptr %308, null
  br i1 %309, label %311, label %310, !prof !121

310:                                              ; preds = %305
  tail call void @set_option(ptr noundef nonnull %207, i32 noundef %306, ptr noundef %245)
  br label %311

311:                                              ; preds = %310, %305
  br i1 %258, label %317, label %312, !prof !131

312:                                              ; preds = %311
  %313 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 6), align 8, !tbaa !132
  %314 = tail call i32 %313(i64 noundef %204, ptr noundef %245, i32 noundef %306) #26, !prof !133
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %317, label %316, !prof !87

316:                                              ; preds = %312
  tail call void @lto_register_user_option(i64 noundef %204, ptr noundef %245, i32 noundef %306, i32 noundef %21) #26
  br label %317

317:                                              ; preds = %316, %312, %311
  %318 = phi i32 [ %246, %316 ], [ %246, %311 ], [ 0, %312 ]
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %745, label %320, !prof !115

320:                                              ; preds = %317
  %321 = and i32 %215, 2097152
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %745, label %323, !prof !115

323:                                              ; preds = %320
  %324 = trunc i64 %204 to i32
  switch i32 %324, label %742 [
    i32 3, label %325
    i32 867, label %326
    i32 411, label %327
    i32 0, label %327
    i32 629, label %352
    i32 4, label %352
    i32 412, label %356
    i32 1, label %356
    i32 701, label %448
    i32 5, label %448
    i32 12, label %449
    i32 27, label %744
    i32 28, label %744
    i32 81, label %451
    i32 120, label %452
    i32 121, label %452
    i32 99, label %454
    i32 184, label %456
    i32 185, label %462
    i32 187, label %463
    i32 188, label %466
    i32 218, label %467
    i32 239, label %468
    i32 240, label %468
    i32 241, label %469
    i32 242, label %470
    i32 244, label %477
    i32 245, label %478
    i32 246, label %479
    i32 255, label %480
    i32 257, label %481
    i32 259, label %482
    i32 261, label %483
    i32 286, label %484
    i32 293, label %485
    i32 292, label %486
    i32 324, label %487
    i32 323, label %488
    i32 326, label %489
    i32 335, label %490
    i32 336, label %504
    i32 343, label %507
    i32 369, label %510
    i32 377, label %519
    i32 683, label %523
    i32 380, label %526
    i32 435, label %527
    i32 436, label %527
    i32 441, label %529
    i32 440, label %530
    i32 487, label %531
    i32 518, label %534
    i32 522, label %545
    i32 529, label %546
    i32 528, label %547
    i32 537, label %548
    i32 433, label %549
    i32 539, label %550
    i32 543, label %552
    i32 542, label %554
    i32 541, label %597
    i32 540, label %599
    i32 544, label %612
    i32 704, label %613
    i32 705, label %630
    i32 546, label %631
    i32 547, label %635
    i32 597, label %637
    i32 598, label %637
    i32 586, label %638
    i32 585, label %639
    i32 584, label %642
    i32 615, label %643
    i32 614, label %657
    i32 616, label %661
    i32 617, label %664
    i32 618, label %670
    i32 676, label %673
    i32 638, label %674
    i32 452, label %692
    i32 455, label %702
    i32 458, label %716
    i32 640, label %717
    i32 443, label %718
    i32 444, label %719
    i32 532, label %720
    i32 686, label %721
    i32 398, label %722
    i32 681, label %723
    i32 720, label %724
    i32 722, label %725
    i32 724, label %726
    i32 726, label %732
    i32 730, label %733
    i32 731, label %733
    i32 734, label %736
    i32 735, label %737
    i32 736, label %737
    i32 832, label %740
    i32 835, label %741
    i32 593, label %744
    i32 317, label %744
    i32 469, label %744
    i32 565, label %744
    i32 588, label %744
    i32 623, label %744
    i32 671, label %744
    i32 386, label %744
    i32 665, label %744
    i32 670, label %744
    i32 215, label %744
    i32 693, label %744
  ], !prof !134

325:                                              ; preds = %323
  tail call fastcc void @handle_param(ptr noundef %245)
  br label %744

326:                                              ; preds = %323
  store i1 true, ptr @common_handle_option.verbose, align 1
  br label %744

327:                                              ; preds = %323, %323
  %328 = load i32, ptr @cl_lang_count, align 4
  %329 = shl nsw i32 -1, %328
  %330 = xor i32 %329, -1
  %331 = icmp eq i32 %328, 0
  %332 = load i1, ptr @common_handle_option.verbose, align 1
  %333 = zext i1 %332 to i32
  %334 = load i32, ptr @extra_warnings, align 4, !tbaa !61
  %335 = or i32 %334, %333
  %336 = icmp eq i32 %335, 0
  %337 = select i1 %336, i32 1073741824, i32 0
  br i1 %331, label %346, label %338

338:                                              ; preds = %327, %338
  %339 = phi i32 [ %344, %338 ], [ 0, %327 ]
  %340 = shl nuw i32 1, %339
  %341 = xor i32 %340, -1
  %342 = and i32 %341, %330
  %343 = or i32 %342, %337
  tail call fastcc void @print_specific_help(i32 noundef %340, i32 noundef %343, i32 noundef 0)
  %344 = add nuw i32 %339, 1
  %345 = icmp eq i32 %344, %328
  br i1 %345, label %346, label %338, !llvm.loop !135

346:                                              ; preds = %338, %327
  tail call fastcc void @print_specific_help(i32 noundef 0, i32 noundef %337, i32 noundef %330)
  br label %347

347:                                              ; preds = %346, %347
  %348 = phi i32 [ 131072, %346 ], [ %349, %347 ]
  tail call fastcc void @print_specific_help(i32 noundef %348, i32 noundef %337, i32 noundef 0)
  %349 = shl nuw nsw i32 %348, 1
  %350 = icmp ult i32 %348, 1048577
  br i1 %350, label %347, label %351, !llvm.loop !136

351:                                              ; preds = %347
  store i8 1, ptr @exit_after_options, align 1, !tbaa !57
  br label %744

352:                                              ; preds = %323, %323
  tail call fastcc void @print_specific_help(i32 noundef 1048576, i32 noundef 1073741824, i32 noundef 0)
  store i8 1, ptr @exit_after_options, align 1, !tbaa !57
  %353 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 6), align 8, !tbaa !137
  %354 = icmp eq ptr %353, null
  br i1 %354, label %744, label %355

355:                                              ; preds = %352
  tail call void %353() #26
  br label %744

356:                                              ; preds = %323, %323
  %357 = load i32, ptr @cl_lang_count, align 4
  %358 = icmp eq i32 %357, 0
  %359 = zext i32 %357 to i64
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store i32 0, ptr %3, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store i32 0, ptr %4, align 4, !tbaa !61
  br label %360

360:                                              ; preds = %439, %356
  %361 = phi ptr [ %245, %356 ], [ %440, %439 ]
  %362 = load i8, ptr %361, align 1, !tbaa !57
  switch i8 %362, label %365 [
    i8 0, label %442
    i8 94, label %363
  ]

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %361, i64 1
  br label %365

365:                                              ; preds = %363, %360
  %366 = phi ptr [ %364, %363 ], [ %361, %360 ]
  %367 = phi ptr [ %4, %363 ], [ %3, %360 ]
  %368 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %366, i32 noundef 44)
  %369 = icmp eq ptr %368, null
  br i1 %369, label %370, label %372

370:                                              ; preds = %365
  %371 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %366)
  br label %376

372:                                              ; preds = %365
  %373 = ptrtoint ptr %368 to i64
  %374 = ptrtoint ptr %366 to i64
  %375 = sub i64 %373, %374
  br label %376

376:                                              ; preds = %372, %370
  %377 = phi i64 [ %371, %370 ], [ %375, %372 ]
  %378 = trunc i64 %377 to i32
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %382, label %380

380:                                              ; preds = %376
  %381 = and i64 %377, 4294967295
  br label %389

382:                                              ; preds = %376
  %383 = getelementptr inbounds i8, ptr %368, i64 1
  br label %439, !llvm.loop !138

384:                                              ; preds = %389
  %385 = add nuw nsw i64 %390, 1
  %386 = getelementptr inbounds [9 x %struct.anon], ptr @common_handle_option.specifics, i64 0, i64 %385
  %387 = load ptr, ptr %386, align 16, !tbaa !139
  %388 = icmp eq i64 %385, 8
  br i1 %388, label %397, label %389, !llvm.loop !141

389:                                              ; preds = %380, %384
  %390 = phi i64 [ 0, %380 ], [ %385, %384 ]
  %391 = phi ptr [ @.str.25, %380 ], [ %387, %384 ]
  %392 = tail call i32 @strncasecmp(ptr noundef nonnull %366, ptr noundef nonnull %391, i64 noundef %381)
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %394, label %384

394:                                              ; preds = %389
  %395 = getelementptr inbounds [9 x %struct.anon], ptr @common_handle_option.specifics, i64 0, i64 %390, i32 1
  %396 = load i32, ptr %395, align 8, !tbaa !142
  br label %397

397:                                              ; preds = %384, %394
  %398 = phi i32 [ %396, %394 ], [ 0, %384 ]
  br i1 %358, label %413, label %399

399:                                              ; preds = %397
  %400 = and i64 %377, 4294967295
  br label %401

401:                                              ; preds = %399, %410
  %402 = phi i64 [ 0, %399 ], [ %411, %410 ]
  %403 = getelementptr inbounds [0 x ptr], ptr @lang_names, i64 0, i64 %402
  %404 = load ptr, ptr %403, align 8, !tbaa !46
  %405 = tail call i32 @strncasecmp(ptr noundef nonnull %366, ptr noundef %404, i64 noundef %400)
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %407, label %410

407:                                              ; preds = %401
  %408 = trunc i64 %402 to i32
  %409 = shl nuw i32 1, %408
  br label %413

410:                                              ; preds = %401
  %411 = add nuw nsw i64 %402, 1
  %412 = icmp eq i64 %411, %359
  br i1 %412, label %413, label %401, !llvm.loop !143

413:                                              ; preds = %410, %397, %407
  %414 = phi i32 [ %409, %407 ], [ 0, %397 ], [ 0, %410 ]
  %415 = icmp eq i32 %398, 0
  %416 = icmp eq i32 %414, 0
  br i1 %415, label %430, label %417

417:                                              ; preds = %413
  br i1 %416, label %418, label %421

418:                                              ; preds = %417
  %419 = load i32, ptr %367, align 4, !tbaa !61
  %420 = or i32 %419, %398
  store i32 %420, ptr %367, align 4, !tbaa !61
  br label %436

421:                                              ; preds = %417
  %422 = and i64 %377, 4294967295
  %423 = tail call i32 @strncasecmp(ptr noundef nonnull %366, ptr noundef nonnull @.str.33, i64 noundef %422)
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %425, label %428

425:                                              ; preds = %421
  %426 = load i32, ptr %367, align 4, !tbaa !61
  %427 = or i32 %426, %414
  store i32 %427, ptr %367, align 4, !tbaa !61
  br label %436

428:                                              ; preds = %421
  %429 = load ptr, ptr @stderr, align 8, !tbaa !46
  tail call void (ptr, ptr, ...) @fnotice(ptr noundef %429, ptr noundef nonnull @.str.34, i32 noundef %378, ptr noundef nonnull %366) #26
  br label %436

430:                                              ; preds = %413
  br i1 %416, label %434, label %431

431:                                              ; preds = %430
  %432 = load i32, ptr %367, align 4, !tbaa !61
  %433 = or i32 %432, %414
  store i32 %433, ptr %367, align 4, !tbaa !61
  br label %436

434:                                              ; preds = %430
  %435 = load ptr, ptr @stderr, align 8, !tbaa !46
  tail call void (ptr, ptr, ...) @fnotice(ptr noundef %435, ptr noundef nonnull @.str.35, i32 noundef %378, ptr noundef nonnull %366) #26
  br label %436

436:                                              ; preds = %434, %431, %428, %425, %418
  %437 = getelementptr inbounds i8, ptr %368, i64 1
  %438 = select i1 %369, ptr %366, ptr %437
  br label %439

439:                                              ; preds = %436, %382
  %440 = phi ptr [ %383, %382 ], [ %438, %436 ]
  %441 = phi i1 [ false, %382 ], [ %369, %436 ]
  br i1 %441, label %442, label %360

442:                                              ; preds = %360, %439
  %443 = load i32, ptr %3, align 4, !tbaa !61
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %447, label %445

445:                                              ; preds = %442
  %446 = load i32, ptr %4, align 4, !tbaa !61
  tail call fastcc void @print_specific_help(i32 noundef %443, i32 noundef %446, i32 noundef 0)
  br label %447

447:                                              ; preds = %445, %442
  store i8 1, ptr @exit_after_options, align 1, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  br label %744

448:                                              ; preds = %323, %323
  store i8 1, ptr @exit_after_options, align 1, !tbaa !57
  br label %744

449:                                              ; preds = %323
  %450 = sext i32 %306 to i64
  store i64 %450, ptr @g_switch_value, align 8, !tbaa !144
  store i8 1, ptr @g_switch_set, align 1, !tbaa !57
  br label %744

451:                                              ; preds = %323
  tail call void @enable_warning_as_error(ptr noundef %245, i32 noundef %306, i32 noundef %21)
  br label %744

452:                                              ; preds = %323, %323
  %453 = sext i32 %306 to i64
  store i64 %453, ptr @larger_than_size, align 8, !tbaa !144
  store i8 1, ptr @warn_larger_than, align 1, !tbaa !57
  br label %744

454:                                              ; preds = %323
  %455 = sext i32 %306 to i64
  store i64 %455, ptr @frame_larger_than_size, align 8, !tbaa !144
  store i8 1, ptr @warn_frame_larger_than, align 1, !tbaa !57
  br label %744

456:                                              ; preds = %323
  %457 = icmp ult i32 %306, 2
  br i1 %457, label %459, label %458

458:                                              ; preds = %456
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 2182, ptr noundef nonnull @.str.18) #26
  br label %459

459:                                              ; preds = %458, %456
  %460 = icmp eq i32 %306, 0
  %461 = select i1 %460, i32 0, i32 3
  store i32 %461, ptr @warn_strict_aliasing, align 4, !tbaa !61
  br label %744

462:                                              ; preds = %323
  store i32 %306, ptr @warn_strict_aliasing, align 4, !tbaa !61
  br label %744

463:                                              ; preds = %323
  %464 = icmp eq i32 %306, 0
  %465 = select i1 %464, i32 0, i32 2
  store i32 %465, ptr @warn_strict_overflow, align 4, !tbaa !61
  br label %744

466:                                              ; preds = %323
  store i32 %306, ptr @warn_strict_overflow, align 4, !tbaa !61
  br label %744

467:                                              ; preds = %323
  store i32 %306, ptr @warn_unused, align 4, !tbaa !61
  br label %744

468:                                              ; preds = %323, %323
  store ptr %245, ptr @aux_info_file_name, align 8, !tbaa !46
  store i32 1, ptr @flag_gen_aux_info, align 4, !tbaa !61
  br label %744

469:                                              ; preds = %323
  store ptr %245, ptr @aux_base_name, align 8, !tbaa !46
  br label %744

470:                                              ; preds = %323
  %471 = tail call ptr @xstrdup(ptr noundef %245) #26
  %472 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %471)
  %473 = trunc i64 %472 to i32
  tail call void @strip_off_ending(ptr noundef %471, i32 noundef %473) #26
  %474 = load i8, ptr %471, align 1, !tbaa !57
  %475 = icmp eq i8 %474, 0
  br i1 %475, label %744, label %476

476:                                              ; preds = %470
  store ptr %471, ptr @aux_base_name, align 8, !tbaa !46
  br label %744

477:                                              ; preds = %323
  tail call void @decode_d_option(ptr noundef %245) #26
  br label %744

478:                                              ; preds = %323
  store ptr %245, ptr @dump_base_name, align 8, !tbaa !46
  br label %744

479:                                              ; preds = %323
  store ptr %245, ptr @dump_dir_name, align 8, !tbaa !46
  br label %744

480:                                              ; preds = %323
  store i32 %306, ptr @align_functions, align 4, !tbaa !61
  br label %744

481:                                              ; preds = %323
  store i32 %306, ptr @align_jumps, align 4, !tbaa !61
  br label %744

482:                                              ; preds = %323
  store i32 %306, ptr @align_labels, align 4, !tbaa !61
  br label %744

483:                                              ; preds = %323
  store i32 %306, ptr @align_loops, align 4, !tbaa !61
  br label %744

484:                                              ; preds = %323
  store i1 true, ptr @flag_branch_probabilities_set, align 1
  br label %744

485:                                              ; preds = %323
  tail call void @fix_register(ptr noundef %245, i32 noundef 0, i32 noundef 1) #26
  br label %744

486:                                              ; preds = %323
  tail call void @fix_register(ptr noundef %245, i32 noundef 0, i32 noundef 0) #26
  br label %744

487:                                              ; preds = %323
  tail call void @dbg_cnt_process_opt(ptr noundef %245) #26
  br label %744

488:                                              ; preds = %323
  tail call void @dbg_cnt_list_all_counters() #26
  br label %744

489:                                              ; preds = %323
  tail call void @add_debug_prefix_map(ptr noundef %245) #26
  br label %744

490:                                              ; preds = %323
  %491 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %245, ptr noundef nonnull dereferenceable(5) @.str.36)
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %493, label %497

493:                                              ; preds = %490
  %494 = load ptr, ptr @global_dc, align 8, !tbaa !46
  %495 = load ptr, ptr %494, align 8, !tbaa !145
  %496 = getelementptr inbounds %struct.pretty_print_info, ptr %495, i64 0, i32 5
  store i32 0, ptr %496, align 4, !tbaa !147
  br label %744

497:                                              ; preds = %490
  %498 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %245, ptr noundef nonnull dereferenceable(11) @.str.37)
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %745

500:                                              ; preds = %497
  %501 = load ptr, ptr @global_dc, align 8, !tbaa !46
  %502 = load ptr, ptr %501, align 8, !tbaa !145
  %503 = getelementptr inbounds %struct.pretty_print_info, ptr %502, i64 0, i32 5
  store i32 2, ptr %503, align 4, !tbaa !147
  br label %744

504:                                              ; preds = %323
  %505 = load ptr, ptr @global_dc, align 8, !tbaa !46
  %506 = getelementptr inbounds %struct.diagnostic_context, ptr %505, i64 0, i32 5
  store i8 1, ptr %506, align 4, !tbaa !150
  br label %744

507:                                              ; preds = %323
  %508 = tail call i32 @dump_switch_p(ptr noundef %245) #26
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %745, label %744

510:                                              ; preds = %323
  %511 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %245, ptr noundef nonnull dereferenceable(5) @.str.38)
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %513, label %514

513:                                              ; preds = %510
  store i32 1, ptr @flag_excess_precision_cmdline, align 4, !tbaa !61
  br label %744

514:                                              ; preds = %510
  %515 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %245, ptr noundef nonnull dereferenceable(9) @.str.39)
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %517, label %518

517:                                              ; preds = %514
  store i32 2, ptr @flag_excess_precision_cmdline, align 4, !tbaa !61
  br label %744

518:                                              ; preds = %514
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.40, ptr noundef %245) #26
  br label %744

519:                                              ; preds = %323
  store i32 %306, ptr @flag_unsafe_math_optimizations, align 4, !tbaa !61
  %520 = icmp eq i32 %306, 0
  %521 = zext i1 %520 to i32
  store i32 %521, ptr @flag_trapping_math, align 4, !tbaa !61
  store i32 %521, ptr @flag_signed_zeros, align 4, !tbaa !61
  store i32 %306, ptr @flag_associative_math, align 4, !tbaa !61
  store i32 %306, ptr @flag_reciprocal_math, align 4, !tbaa !61
  store i32 %306, ptr @flag_finite_math_only, align 4, !tbaa !61
  store i32 %521, ptr @flag_errno_math, align 4, !tbaa !61
  br i1 %520, label %744, label %522

522:                                              ; preds = %519
  store i32 0, ptr @flag_signaling_nans, align 4, !tbaa !61
  store i32 0, ptr @flag_rounding_math, align 4, !tbaa !61
  store i32 1, ptr @flag_cx_limited_range, align 4, !tbaa !61
  br label %744

523:                                              ; preds = %323
  %524 = icmp eq i32 %306, 0
  %525 = zext i1 %524 to i32
  store i32 %525, ptr @flag_trapping_math, align 4, !tbaa !61
  store i32 %525, ptr @flag_signed_zeros, align 4, !tbaa !61
  store i32 %306, ptr @flag_associative_math, align 4, !tbaa !61
  store i32 %306, ptr @flag_reciprocal_math, align 4, !tbaa !61
  br label %744

526:                                              ; preds = %323
  tail call void @fix_register(ptr noundef %245, i32 noundef 1, i32 noundef 1) #26
  br label %744

527:                                              ; preds = %323, %323
  %528 = sdiv i32 %306, 2
  tail call void @set_param_value(ptr noundef nonnull @.str.41, i32 noundef %528) #26
  tail call void @set_param_value(ptr noundef nonnull @.str.42, i32 noundef %528) #26
  br label %744

529:                                              ; preds = %323
  tail call fastcc void @add_comma_separated_to_vector(ptr noundef nonnull @flag_instrument_functions_exclude_functions, ptr noundef %245)
  br label %744

530:                                              ; preds = %323
  tail call fastcc void @add_comma_separated_to_vector(ptr noundef nonnull @flag_instrument_functions_exclude_files, ptr noundef %245)
  br label %744

531:                                              ; preds = %323
  %532 = load ptr, ptr @global_dc, align 8, !tbaa !46
  %533 = load ptr, ptr %532, align 8, !tbaa !145
  tail call void @pp_base_set_line_maximum_length(ptr noundef %533, i32 noundef %306) #26
  br label %744

534:                                              ; preds = %323
  %535 = icmp slt i32 %306, 1
  br i1 %535, label %542, label %536

536:                                              ; preds = %534
  %537 = add nuw i32 %306, 2147483647
  %538 = and i32 %537, %306
  %539 = icmp ne i32 %538, 0
  %540 = icmp sgt i32 %306, 16
  %541 = or i1 %540, %539
  br i1 %541, label %542, label %543

542:                                              ; preds = %536, %534
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.43, i32 noundef %306) #26
  br label %744

543:                                              ; preds = %536
  store i32 %306, ptr @initial_max_fld_align, align 4, !tbaa !61
  %544 = shl nuw nsw i32 %306, 3
  store i32 %544, ptr @maximum_field_alignment, align 4, !tbaa !61
  br label %744

545:                                              ; preds = %323
  store i1 true, ptr @flag_peel_loops_set, align 1
  br label %744

546:                                              ; preds = %323
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.44) #26
  br label %744

547:                                              ; preds = %323
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.44) #26
  br label %744

548:                                              ; preds = %323
  store i1 true, ptr @profile_arc_flag_set, align 1
  br label %744

549:                                              ; preds = %323
  store i1 true, ptr @flag_inline_functions_set, align 1
  br label %744

550:                                              ; preds = %323
  %551 = tail call ptr @xstrdup(ptr noundef %245) #26
  store ptr %551, ptr @profile_data_prefix, align 8, !tbaa !46
  br label %744

552:                                              ; preds = %323
  %553 = tail call ptr @xstrdup(ptr noundef %245) #26
  store ptr %553, ptr @profile_data_prefix, align 8, !tbaa !46
  store i32 1, ptr @flag_profile_use, align 4, !tbaa !61
  br label %554

554:                                              ; preds = %323, %552
  %555 = phi i32 [ 1, %552 ], [ %306, %323 ]
  %556 = load i1, ptr @flag_branch_probabilities_set, align 1
  br i1 %556, label %558, label %557

557:                                              ; preds = %554
  store i32 %555, ptr @flag_branch_probabilities, align 4, !tbaa !61
  br label %558

558:                                              ; preds = %557, %554
  %559 = load i1, ptr @flag_profile_values_set, align 1
  br i1 %559, label %561, label %560

560:                                              ; preds = %558
  store i32 %555, ptr @flag_profile_values, align 4, !tbaa !61
  br label %561

561:                                              ; preds = %560, %558
  %562 = load i1, ptr @flag_unroll_loops_set, align 1
  br i1 %562, label %564, label %563

563:                                              ; preds = %561
  store i32 %555, ptr @flag_unroll_loops, align 4, !tbaa !61
  br label %564

564:                                              ; preds = %563, %561
  %565 = load i1, ptr @flag_peel_loops_set, align 1
  br i1 %565, label %567, label %566

566:                                              ; preds = %564
  store i32 %555, ptr @flag_peel_loops, align 4, !tbaa !61
  br label %567

567:                                              ; preds = %566, %564
  %568 = load i1, ptr @flag_tracer_set, align 1
  br i1 %568, label %570, label %569

569:                                              ; preds = %567
  store i32 %555, ptr @flag_tracer, align 4, !tbaa !61
  br label %570

570:                                              ; preds = %569, %567
  %571 = load i1, ptr @flag_value_profile_transformations_set, align 1
  br i1 %571, label %573, label %572

572:                                              ; preds = %570
  store i32 %555, ptr @flag_value_profile_transformations, align 4, !tbaa !61
  br label %573

573:                                              ; preds = %572, %570
  %574 = load i1, ptr @flag_inline_functions_set, align 1
  br i1 %574, label %576, label %575

575:                                              ; preds = %573
  store i32 %555, ptr @flag_inline_functions, align 4, !tbaa !61
  br label %576

576:                                              ; preds = %575, %573
  %577 = load i1, ptr @flag_ipa_cp_set, align 1
  br i1 %577, label %579, label %578

578:                                              ; preds = %576
  store i32 %555, ptr @flag_ipa_cp, align 4, !tbaa !61
  br label %579

579:                                              ; preds = %578, %576
  %580 = load i1, ptr @flag_ipa_cp_clone_set, align 1
  %581 = xor i1 %580, true
  %582 = icmp ne i32 %555, 0
  %583 = and i1 %582, %581
  %584 = load i32, ptr @flag_ipa_cp, align 4
  %585 = icmp ne i32 %584, 0
  %586 = select i1 %583, i1 %585, i1 false
  br i1 %586, label %587, label %588

587:                                              ; preds = %579
  store i32 %555, ptr @flag_ipa_cp_clone, align 4, !tbaa !61
  br label %588

588:                                              ; preds = %587, %579
  %589 = load i1, ptr @flag_predictive_commoning_set, align 1
  br i1 %589, label %591, label %590

590:                                              ; preds = %588
  store i32 %555, ptr @flag_predictive_commoning, align 4, !tbaa !61
  br label %591

591:                                              ; preds = %590, %588
  %592 = load i1, ptr @flag_unswitch_loops_set, align 1
  br i1 %592, label %594, label %593

593:                                              ; preds = %591
  store i32 %555, ptr @flag_unswitch_loops, align 4, !tbaa !61
  br label %594

594:                                              ; preds = %593, %591
  %595 = load i1, ptr @flag_gcse_after_reload_set, align 1
  br i1 %595, label %744, label %596

596:                                              ; preds = %594
  store i32 %555, ptr @flag_gcse_after_reload, align 4, !tbaa !61
  br label %744

597:                                              ; preds = %323
  %598 = tail call ptr @xstrdup(ptr noundef %245) #26
  store ptr %598, ptr @profile_data_prefix, align 8, !tbaa !46
  br label %599

599:                                              ; preds = %597, %323
  %600 = phi i32 [ %306, %323 ], [ 1, %597 ]
  %601 = load i1, ptr @profile_arc_flag_set, align 1
  br i1 %601, label %603, label %602

602:                                              ; preds = %599
  store i32 %600, ptr @profile_arc_flag, align 4, !tbaa !61
  br label %603

603:                                              ; preds = %602, %599
  %604 = load i1, ptr @flag_profile_values_set, align 1
  br i1 %604, label %606, label %605

605:                                              ; preds = %603
  store i32 %600, ptr @flag_profile_values, align 4, !tbaa !61
  br label %606

606:                                              ; preds = %605, %603
  %607 = load i1, ptr @flag_value_profile_transformations_set, align 1
  br i1 %607, label %609, label %608

608:                                              ; preds = %606
  store i32 %600, ptr @flag_value_profile_transformations, align 4, !tbaa !61
  br label %609

609:                                              ; preds = %608, %606
  %610 = load i1, ptr @flag_inline_functions_set, align 1
  br i1 %610, label %744, label %611

611:                                              ; preds = %609
  store i32 %600, ptr @flag_inline_functions, align 4, !tbaa !61
  br label %744

612:                                              ; preds = %323
  store i1 true, ptr @flag_profile_values_set, align 1
  br label %744

613:                                              ; preds = %323
  %614 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %245, ptr noundef nonnull dereferenceable(8) @.str.45)
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %616, label %617

616:                                              ; preds = %613
  store i32 0, ptr @default_visibility, align 4, !tbaa !61
  br label %744

617:                                              ; preds = %613
  %618 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %245, ptr noundef nonnull dereferenceable(9) @.str.46)
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %620, label %621

620:                                              ; preds = %617
  store i32 3, ptr @default_visibility, align 4, !tbaa !61
  br label %744

621:                                              ; preds = %617
  %622 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %245, ptr noundef nonnull dereferenceable(7) @.str.47)
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %624, label %625

624:                                              ; preds = %621
  store i32 2, ptr @default_visibility, align 4, !tbaa !61
  br label %744

625:                                              ; preds = %621
  %626 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %245, ptr noundef nonnull dereferenceable(10) @.str.48)
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %628, label %629

628:                                              ; preds = %625
  store i32 1, ptr @default_visibility, align 4, !tbaa !61
  br label %744

629:                                              ; preds = %625
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.49, ptr noundef %245) #26
  br label %744

630:                                              ; preds = %323
  store i1 true, ptr @flag_value_profile_transformations_set, align 1
  br label %744

631:                                              ; preds = %323
  %632 = icmp eq i32 %306, 0
  br i1 %632, label %633, label %745

633:                                              ; preds = %631
  %634 = tail call ptr @set_random_seed(ptr noundef null) #26
  br label %744

635:                                              ; preds = %323
  %636 = tail call ptr @set_random_seed(ptr noundef %245) #26
  br label %744

637:                                              ; preds = %323, %323
  store i8 1, ptr @sel_sched_switch_set, align 1, !tbaa !57
  br label %744

638:                                              ; preds = %323
  tail call void @fix_sched_param(ptr noundef nonnull @.str.50, ptr noundef %245) #26
  br label %744

639:                                              ; preds = %323
  %640 = icmp eq i32 %306, 0
  %641 = select i1 %640, i32 -1, i32 %306
  store i32 %641, ptr @flag_sched_stalled_insns, align 4
  br label %744

642:                                              ; preds = %323
  store i32 %306, ptr @flag_sched_stalled_insns_dep, align 4, !tbaa !61
  br label %744

643:                                              ; preds = %323
  %644 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %245, ptr noundef nonnull dereferenceable(3) @.str.51)
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %646, label %647

646:                                              ; preds = %643
  store i32 0, ptr @flag_stack_check, align 4, !tbaa !61
  br label %744

647:                                              ; preds = %643
  %648 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %245, ptr noundef nonnull dereferenceable(8) @.str.52)
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %650, label %651

650:                                              ; preds = %647
  store i32 1, ptr @flag_stack_check, align 4, !tbaa !61
  br label %744

651:                                              ; preds = %647
  %652 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %245, ptr noundef nonnull dereferenceable(9) @.str.53)
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %654, label %655

654:                                              ; preds = %651
  store i32 1, ptr @flag_stack_check, align 4, !tbaa !61
  br label %744

655:                                              ; preds = %651
  %656 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.54, ptr noundef %245) #26
  br label %744

657:                                              ; preds = %323
  %658 = icmp eq i32 %306, 0
  br i1 %658, label %660, label %659

659:                                              ; preds = %657
  store i32 1, ptr @flag_stack_check, align 4, !tbaa !61
  br label %744

660:                                              ; preds = %657
  store i32 0, ptr @flag_stack_check, align 4, !tbaa !61
  br label %744

661:                                              ; preds = %323
  %662 = icmp eq i32 %306, 0
  br i1 %662, label %663, label %745

663:                                              ; preds = %661
  store ptr null, ptr @stack_limit_rtx, align 8, !tbaa !46
  br label %744

664:                                              ; preds = %323
  %665 = tail call i32 @decode_reg_name(ptr noundef %245) #26
  %666 = icmp slt i32 %665, 0
  br i1 %666, label %667, label %668

667:                                              ; preds = %664
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.55, ptr noundef %245) #26
  br label %744

668:                                              ; preds = %664
  %669 = tail call ptr @gen_rtx_REG(i32 noundef 16, i32 noundef %665) #26
  store ptr %669, ptr @stack_limit_rtx, align 8, !tbaa !46
  br label %744

670:                                              ; preds = %323
  %671 = tail call ptr @ggc_alloc_string(ptr noundef %245, i32 noundef -1) #26
  %672 = tail call ptr @gen_rtx_fmt_s00_stat(i32 noundef 45, i32 noundef 16, ptr noundef %671) #26
  store ptr %672, ptr @stack_limit_rtx, align 8, !tbaa !46
  br label %744

673:                                              ; preds = %323
  tail call void @vect_set_verbosity_level(ptr noundef %245) #26
  br label %744

674:                                              ; preds = %323
  %675 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %245, ptr noundef nonnull dereferenceable(15) @.str.56)
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %677, label %678

677:                                              ; preds = %674
  store i32 2, ptr @flag_tls_default, align 4, !tbaa !61
  br label %744

678:                                              ; preds = %674
  %679 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %245, ptr noundef nonnull dereferenceable(14) @.str.57)
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %681, label %682

681:                                              ; preds = %678
  store i32 3, ptr @flag_tls_default, align 4, !tbaa !61
  br label %744

682:                                              ; preds = %678
  %683 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %245, ptr noundef nonnull dereferenceable(13) @.str.58)
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %685, label %686

685:                                              ; preds = %682
  store i32 4, ptr @flag_tls_default, align 4, !tbaa !61
  br label %744

686:                                              ; preds = %682
  %687 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %245, ptr noundef nonnull dereferenceable(11) @.str.59)
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %689, label %690

689:                                              ; preds = %686
  store i32 5, ptr @flag_tls_default, align 4, !tbaa !61
  br label %744

690:                                              ; preds = %686
  %691 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.60, ptr noundef %245) #26
  br label %744

692:                                              ; preds = %323
  %693 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %245, ptr noundef nonnull dereferenceable(3) @.str.61)
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %695, label %696

695:                                              ; preds = %692
  store i32 0, ptr @flag_ira_algorithm, align 4, !tbaa !61
  br label %744

696:                                              ; preds = %692
  %697 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %245, ptr noundef nonnull dereferenceable(9) @.str.62)
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %699, label %700

699:                                              ; preds = %696
  store i32 1, ptr @flag_ira_algorithm, align 4, !tbaa !61
  br label %744

700:                                              ; preds = %696
  %701 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.63, ptr noundef %245) #26
  br label %744

702:                                              ; preds = %323
  %703 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %245, ptr noundef nonnull dereferenceable(4) @.str.64)
  %704 = icmp eq i32 %703, 0
  br i1 %704, label %705, label %706

705:                                              ; preds = %702
  store i32 0, ptr @flag_ira_region, align 4, !tbaa !61
  br label %744

706:                                              ; preds = %702
  %707 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %245, ptr noundef nonnull dereferenceable(4) @.str.65)
  %708 = icmp eq i32 %707, 0
  br i1 %708, label %709, label %710

709:                                              ; preds = %706
  store i32 1, ptr @flag_ira_region, align 4, !tbaa !61
  br label %744

710:                                              ; preds = %706
  %711 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %245, ptr noundef nonnull dereferenceable(6) @.str.66)
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %713, label %714

713:                                              ; preds = %710
  store i32 2, ptr @flag_ira_region, align 4, !tbaa !61
  br label %744

714:                                              ; preds = %710
  %715 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.67, ptr noundef %245) #26
  br label %744

716:                                              ; preds = %323
  store i32 %306, ptr @flag_ira_verbose, align 4, !tbaa !61
  br label %744

717:                                              ; preds = %323
  store i1 true, ptr @flag_tracer_set, align 1
  br label %744

718:                                              ; preds = %323
  store i1 true, ptr @flag_ipa_cp_set, align 1
  br label %744

719:                                              ; preds = %323
  store i1 true, ptr @flag_ipa_cp_clone_set, align 1
  br label %744

720:                                              ; preds = %323
  store i1 true, ptr @flag_predictive_commoning_set, align 1
  br label %744

721:                                              ; preds = %323
  store i1 true, ptr @flag_unswitch_loops_set, align 1
  br label %744

722:                                              ; preds = %323
  store i1 true, ptr @flag_gcse_after_reload_set, align 1
  br label %744

723:                                              ; preds = %323
  store i1 true, ptr @flag_unroll_loops_set, align 1
  br label %744

724:                                              ; preds = %323
  tail call fastcc void @set_debug_level(i32 noundef 0, i32 noundef 1, ptr noundef %245)
  br label %744

725:                                              ; preds = %323
  tail call fastcc void @set_debug_level(i32 noundef 2, i32 noundef 0, ptr noundef %245)
  br label %744

726:                                              ; preds = %323
  %727 = add i32 %306, -5
  %728 = icmp ult i32 %727, -3
  br i1 %728, label %729, label %730

729:                                              ; preds = %726
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.68, i32 noundef %306) #26
  br label %731

730:                                              ; preds = %726
  store i32 %306, ptr @dwarf_version, align 4, !tbaa !61
  br label %731

731:                                              ; preds = %730, %729
  tail call fastcc void @set_debug_level(i32 noundef 3, i32 noundef 0, ptr noundef nonnull @.str.19)
  br label %744

732:                                              ; preds = %323
  tail call fastcc void @set_debug_level(i32 noundef 0, i32 noundef 2, ptr noundef %245)
  br label %744

733:                                              ; preds = %323, %323
  %734 = icmp eq i32 %324, 731
  %735 = zext i1 %734 to i32
  tail call fastcc void @set_debug_level(i32 noundef 1, i32 noundef %735, ptr noundef %245)
  br label %744

736:                                              ; preds = %323
  tail call fastcc void @set_debug_level(i32 noundef 5, i32 noundef 0, ptr noundef %245)
  br label %744

737:                                              ; preds = %323, %323
  %738 = icmp eq i32 %324, 736
  %739 = zext i1 %738 to i32
  tail call fastcc void @set_debug_level(i32 noundef 4, i32 noundef %739, ptr noundef %245)
  br label %744

740:                                              ; preds = %323
  store ptr %245, ptr @asm_file_name, align 8, !tbaa !46
  br label %744

741:                                              ; preds = %323
  store i32 1, ptr @pedantic, align 4, !tbaa !61
  store i32 1, ptr @flag_pedantic_errors, align 4, !tbaa !61
  br label %744

742:                                              ; preds = %323
  br i1 %309, label %743, label %744

743:                                              ; preds = %742
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 2140, ptr noundef nonnull @.str.18) #26
  br label %744

744:                                              ; preds = %609, %352, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %323, %743, %742, %741, %740, %737, %736, %733, %732, %731, %725, %724, %723, %722, %721, %720, %719, %718, %717, %716, %714, %713, %709, %705, %700, %699, %695, %690, %689, %685, %681, %677, %673, %670, %668, %667, %663, %660, %659, %655, %654, %650, %646, %642, %639, %638, %637, %635, %633, %630, %629, %628, %624, %620, %616, %612, %611, %596, %594, %550, %549, %548, %547, %546, %545, %543, %542, %531, %530, %529, %527, %526, %523, %522, %519, %518, %517, %513, %507, %504, %500, %493, %489, %488, %487, %486, %485, %484, %483, %482, %481, %480, %479, %478, %477, %476, %470, %469, %468, %467, %466, %463, %462, %459, %454, %452, %451, %449, %448, %447, %355, %351, %326, %325, %323
  tail call void @lto_register_user_option(i64 noundef %204, ptr noundef %245, i32 noundef %306, i32 noundef 2097152) #26
  br label %745

745:                                              ; preds = %497, %507, %631, %661, %744, %320, %317
  %746 = phi i32 [ %318, %744 ], [ %318, %320 ], [ 0, %317 ], [ 0, %661 ], [ 0, %631 ], [ 0, %507 ], [ 0, %497 ]
  %747 = icmp eq i32 %746, 0
  br i1 %747, label %755, label %748, !prof !115

748:                                              ; preds = %745
  %749 = icmp eq i32 %252, 0
  br i1 %749, label %755, label %750, !prof !120

750:                                              ; preds = %748
  %751 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 5), align 8, !tbaa !151
  %752 = tail call zeroext i8 %751(i64 noundef %204, ptr noundef %245, i32 noundef %306) #26
  %753 = icmp eq i8 %752, 0
  br i1 %753, label %755, label %754

754:                                              ; preds = %750
  tail call void @lto_register_user_option(i64 noundef %204, ptr noundef %245, i32 noundef %306, i32 noundef 1048576) #26
  br label %755

755:                                              ; preds = %195, %754, %750, %748, %745, %303, %271, %267, %260, %249, %218, %208, %198
  %756 = phi ptr [ %200, %198 ], [ %200, %218 ], [ %200, %267 ], [ %200, %271 ], [ %200, %303 ], [ %200, %754 ], [ %200, %748 ], [ %200, %745 ], [ %200, %260 ], [ %200, %249 ], [ %200, %208 ], [ %200, %750 ], [ %167, %195 ]
  %757 = phi i32 [ %203, %198 ], [ 1, %218 ], [ %246, %267 ], [ %246, %271 ], [ %246, %303 ], [ %746, %754 ], [ %746, %748 ], [ 0, %745 ], [ %246, %260 ], [ %246, %249 ], [ %203, %208 ], [ 0, %750 ], [ %196, %195 ]
  %758 = icmp eq ptr %756, null
  br i1 %758, label %760, label %759, !prof !120

759:                                              ; preds = %755
  tail call void @free(ptr noundef %756)
  br label %760

760:                                              ; preds = %759, %755
  %761 = icmp eq i32 %757, 0
  br i1 %761, label %762, label %763, !prof !115

762:                                              ; preds = %760
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.3, ptr noundef nonnull %106) #26
  br label %763

763:                                              ; preds = %762, %760, %136
  %764 = phi i32 [ 1, %136 ], [ %757, %760 ], [ 1, %762 ]
  %765 = add i32 %764, %103
  %766 = icmp ult i32 %765, %0
  br i1 %766, label %102, label %767, !prof !152, !llvm.loop !153

767:                                              ; preds = %763, %94
  %768 = load ptr, ptr @dump_base_name, align 8, !tbaa !46
  %769 = icmp eq ptr %768, null
  br i1 %769, label %808, label %770, !prof !78

770:                                              ; preds = %767
  %771 = load i8, ptr %768, align 1, !tbaa !57
  %772 = icmp eq i8 %771, 47
  br i1 %772, label %808, label %773

773:                                              ; preds = %770
  %774 = load ptr, ptr @dump_dir_name, align 8, !tbaa !46
  %775 = icmp eq ptr %774, null
  br i1 %775, label %778, label %776

776:                                              ; preds = %773
  %777 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull %774, ptr noundef nonnull %768, ptr noundef null) #26
  br label %806

778:                                              ; preds = %773
  %779 = load ptr, ptr @aux_base_name, align 8, !tbaa !46
  %780 = icmp eq ptr %779, null
  br i1 %780, label %808, label %781

781:                                              ; preds = %778, %787
  %782 = phi ptr [ %788, %787 ], [ %779, %778 ]
  %783 = phi ptr [ %789, %787 ], [ %779, %778 ]
  %784 = load i8, ptr %783, align 1, !tbaa !57
  switch i8 %784, label %787 [
    i8 0, label %790
    i8 47, label %785
  ]

785:                                              ; preds = %781
  %786 = getelementptr inbounds i8, ptr %783, i64 1
  br label %787

787:                                              ; preds = %785, %781
  %788 = phi ptr [ %786, %785 ], [ %782, %781 ]
  %789 = getelementptr inbounds i8, ptr %783, i64 1
  br label %781, !llvm.loop !76

790:                                              ; preds = %781
  %791 = icmp eq ptr %779, %782
  br i1 %791, label %808, label %792

792:                                              ; preds = %790
  %793 = ptrtoint ptr %782 to i64
  %794 = ptrtoint ptr %779 to i64
  %795 = sub i64 %793, %794
  %796 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %768)
  %797 = shl i64 %795, 32
  %798 = ashr exact i64 %797, 32
  %799 = add nsw i64 %798, 1
  %800 = add i64 %799, %796
  %801 = tail call ptr @xmalloc(i64 noundef %800) #26
  %802 = load ptr, ptr @aux_base_name, align 8, !tbaa !46
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %801, ptr align 1 %802, i64 %798, i1 false)
  %803 = getelementptr inbounds i8, ptr %801, i64 %798
  %804 = load ptr, ptr @dump_base_name, align 8, !tbaa !46
  %805 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %803, ptr noundef nonnull dereferenceable(1) %804)
  br label %806

806:                                              ; preds = %776, %792
  %807 = phi ptr [ %801, %792 ], [ %777, %776 ]
  store ptr %807, ptr @dump_base_name, align 8, !tbaa !46
  br label %808

808:                                              ; preds = %806, %790, %778, %770, %767
  %809 = load i32, ptr @flag_unit_at_a_time, align 4, !tbaa !61
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %811, label %820, !prof !87

811:                                              ; preds = %808
  %812 = load i32, ptr @flag_section_anchors, align 4, !tbaa !61
  %813 = icmp eq i32 %812, 1
  br i1 %813, label %814, label %815

814:                                              ; preds = %811
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.8) #26
  br label %815

815:                                              ; preds = %814, %811
  store i32 0, ptr @flag_section_anchors, align 4, !tbaa !61
  %816 = load i32, ptr @flag_toplevel_reorder, align 4, !tbaa !61
  %817 = icmp eq i32 %816, 1
  br i1 %817, label %818, label %819

818:                                              ; preds = %815
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.9) #26
  br label %819

819:                                              ; preds = %818, %815
  store i32 0, ptr @flag_toplevel_reorder, align 4, !tbaa !61
  br label %820

820:                                              ; preds = %819, %808
  %821 = load i32, ptr @optimize, align 4, !tbaa !61
  %822 = icmp eq i32 %821, 0
  %823 = load i32, ptr @flag_toplevel_reorder, align 4
  %824 = icmp eq i32 %823, 2
  %825 = select i1 %822, i1 %824, i1 false, !prof !87
  %826 = load i32, ptr @flag_section_anchors, align 4
  %827 = icmp ne i32 %826, 1
  %828 = select i1 %825, i1 %827, i1 false, !prof !87
  br i1 %828, label %829, label %830, !prof !87

829:                                              ; preds = %820
  store i32 0, ptr @flag_toplevel_reorder, align 4, !tbaa !61
  store i32 0, ptr @flag_section_anchors, align 4, !tbaa !61
  br label %830

830:                                              ; preds = %829, %820
  %831 = load i32, ptr @flag_toplevel_reorder, align 4, !tbaa !61
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %833, label %838, !prof !87

833:                                              ; preds = %830
  %834 = load i32, ptr @flag_section_anchors, align 4, !tbaa !61
  %835 = icmp eq i32 %834, 1
  br i1 %835, label %836, label %837

836:                                              ; preds = %833
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.10) #26
  br label %837

837:                                              ; preds = %836, %833
  store i32 0, ptr @flag_section_anchors, align 4, !tbaa !61
  br label %838

838:                                              ; preds = %837, %830
  %839 = load i1, ptr @decode_options.first_time_p, align 1
  br i1 %839, label %851, label %840, !prof !87

840:                                              ; preds = %838
  %841 = load i32, ptr @flag_pie, align 4
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %844, label %843, !prof !78

843:                                              ; preds = %840
  store i32 %841, ptr @flag_pic, align 4, !tbaa !61
  br label %844

844:                                              ; preds = %843, %840
  %845 = load i32, ptr @flag_pic, align 4, !tbaa !61
  %846 = icmp eq i32 %845, 0
  %847 = icmp ne i32 %841, 0
  %848 = or i1 %847, %846
  br i1 %848, label %850, label %849, !prof !78

849:                                              ; preds = %844
  store i32 1, ptr @flag_shlib, align 4, !tbaa !61
  br label %850

850:                                              ; preds = %849, %844
  store i1 true, ptr @decode_options.first_time_p, align 1
  br label %851

851:                                              ; preds = %850, %838
  %852 = load i32, ptr @optimize, align 4, !tbaa !61
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %854, label %855, !prof !87

854:                                              ; preds = %851
  store i32 0, ptr @warn_inline, align 4, !tbaa !61
  store i32 1, ptr @flag_no_inline, align 4, !tbaa !61
  br label %855

855:                                              ; preds = %854, %851
  %856 = load i32, ptr @flag_reorder_blocks_and_partition, align 4
  %857 = icmp eq i32 %856, 0
  %858 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 110), align 1
  %859 = icmp ne i8 %858, 0
  %860 = select i1 %857, i1 true, i1 %859, !prof !78
  br i1 %860, label %863, label %861, !prof !78

861:                                              ; preds = %855
  %862 = load i32, ptr @input_location, align 4, !tbaa !61
  tail call void (i32, ptr, ...) @inform(i32 noundef %862, ptr noundef nonnull @.str.13) #26
  store i32 0, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !61
  store i32 1, ptr @flag_reorder_blocks, align 4, !tbaa !61
  br label %863

863:                                              ; preds = %861, %855
  %864 = load i32, ptr @flag_sel_sched_pipelining, align 4, !tbaa !61
  %865 = icmp eq i32 %864, 0
  br i1 %865, label %866, label %867, !prof !78

866:                                              ; preds = %863
  store i32 0, ptr @flag_sel_sched_pipelining_outer_loops, align 4, !tbaa !61
  br label %867

867:                                              ; preds = %866, %863
  %868 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 96), align 8, !tbaa !100
  %869 = icmp eq ptr %868, null
  %870 = load i32, ptr @flag_ira_algorithm, align 4
  %871 = icmp eq i32 %870, 0
  %872 = select i1 %869, i1 %871, i1 false, !prof !87
  br i1 %872, label %873, label %875, !prof !87

873:                                              ; preds = %867
  %874 = load i32, ptr @input_location, align 4, !tbaa !61
  tail call void (i32, ptr, ...) @inform(i32 noundef %874, ptr noundef nonnull @.str.14) #26
  store i32 1, ptr @flag_ira_algorithm, align 4, !tbaa !61
  br label %875

875:                                              ; preds = %873, %867
  %876 = load i32, ptr @flag_conserve_stack, align 4, !tbaa !61
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %891, label %878, !prof !78

878:                                              ; preds = %875
  %879 = load ptr, ptr @compiler_params, align 8, !tbaa !46
  %880 = getelementptr inbounds %struct.param_info, ptr %879, i64 21, i32 2
  %881 = load i8, ptr %880, align 4, !tbaa !154
  %882 = icmp eq i8 %881, 0
  br i1 %882, label %883, label %885

883:                                              ; preds = %878
  %884 = getelementptr inbounds %struct.param_info, ptr %879, i64 21, i32 1
  store i32 100, ptr %884, align 8, !tbaa !92
  br label %885

885:                                              ; preds = %883, %878
  %886 = getelementptr inbounds %struct.param_info, ptr %879, i64 22, i32 2
  %887 = load i8, ptr %886, align 4, !tbaa !154
  %888 = icmp eq i8 %887, 0
  br i1 %888, label %889, label %891

889:                                              ; preds = %885
  %890 = getelementptr inbounds %struct.param_info, ptr %879, i64 22, i32 1
  store i32 40, ptr %890, align 8, !tbaa !92
  br label %891

891:                                              ; preds = %885, %889, %875
  %892 = load i32, ptr @flag_lto, align 4, !tbaa !61
  %893 = icmp ne i32 %892, 0
  %894 = load i32, ptr @flag_whopr, align 4
  %895 = icmp ne i32 %894, 0
  %896 = select i1 %893, i1 true, i1 %895, !prof !87
  br i1 %896, label %897, label %898, !prof !87

897:                                              ; preds = %891
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.15) #26
  br label %898

898:                                              ; preds = %891, %897
  %899 = load i32, ptr @flag_lto, align 4, !tbaa !61
  %900 = icmp ne i32 %899, 0
  %901 = load i32, ptr @flag_whopr, align 4
  %902 = icmp ne i32 %901, 0
  %903 = select i1 %900, i1 %902, i1 false, !prof !87
  br i1 %903, label %904, label %905, !prof !87

904:                                              ; preds = %898
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.16) #26
  br label %905

905:                                              ; preds = %904, %898
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

declare i32 @read_integral_parameter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @set_param_value(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @lto_clear_user_options() local_unnamed_addr #3

declare void @optimization_options(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @concat(ptr noundef, ...) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #12

declare void @inform(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @set_Wstrict_aliasing(i32 noundef %0) local_unnamed_addr #9 !prof !45 {
  %2 = icmp ult i32 %0, 2
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 2182, ptr noundef nonnull @.str.18) #26
  br label %4

4:                                                ; preds = %1, %3
  %5 = icmp eq i32 %0, 0
  %6 = select i1 %5, i32 0, i32 3
  store i32 %6, ptr @warn_strict_aliasing, align 4, !tbaa !61
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @set_fast_math_flags(i32 noundef %0) local_unnamed_addr #13 !prof !45 {
  store i32 %0, ptr @flag_unsafe_math_optimizations, align 4, !tbaa !61
  %2 = icmp eq i32 %0, 0
  %3 = zext i1 %2 to i32
  store i32 %3, ptr @flag_trapping_math, align 4, !tbaa !61
  store i32 %3, ptr @flag_signed_zeros, align 4, !tbaa !61
  store i32 %0, ptr @flag_associative_math, align 4, !tbaa !61
  store i32 %0, ptr @flag_reciprocal_math, align 4, !tbaa !61
  store i32 %0, ptr @flag_finite_math_only, align 4, !tbaa !61
  store i32 %3, ptr @flag_errno_math, align 4, !tbaa !61
  br i1 %2, label %5, label %4

4:                                                ; preds = %1
  store i32 0, ptr @flag_signaling_nans, align 4, !tbaa !61
  store i32 0, ptr @flag_rounding_math, align 4, !tbaa !61
  store i32 1, ptr @flag_cx_limited_range, align 4, !tbaa !61
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @set_unsafe_math_optimizations_flags(i32 noundef %0) local_unnamed_addr #13 !prof !45 {
  %2 = icmp eq i32 %0, 0
  %3 = zext i1 %2 to i32
  store i32 %3, ptr @flag_trapping_math, align 4, !tbaa !61
  store i32 %3, ptr @flag_signed_zeros, align 4, !tbaa !61
  store i32 %0, ptr @flag_associative_math, align 4, !tbaa !61
  store i32 %0, ptr @flag_reciprocal_math, align 4, !tbaa !61
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @fast_math_flags_set_p() local_unnamed_addr #14 !prof !77 {
  %1 = load i32, ptr @flag_trapping_math, align 4, !tbaa !61
  %2 = icmp eq i32 %1, 0
  %3 = load i32, ptr @flag_unsafe_math_optimizations, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !87
  %6 = load i32, ptr @flag_finite_math_only, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 %7, i1 false, !prof !87
  %9 = load i32, ptr @flag_signed_zeros, align 4
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %8, i1 %10, i1 false, !prof !87
  %12 = load i32, ptr @flag_errno_math, align 4
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %11, i1 %13, i1 false, !prof !87
  %15 = zext i1 %14 to i8
  ret i8 %15
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @fast_math_flags_struct_set_p(ptr nocapture noundef readonly %0) local_unnamed_addr #15 !prof !45 {
  %2 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 113
  %3 = load i8, ptr %2, align 1, !tbaa !155
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 149
  %7 = load i8, ptr %6, align 1, !tbaa !157
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 32
  %11 = load i8, ptr %10, align 2, !tbaa !158
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 106
  %15 = load i8, ptr %14, align 4, !tbaa !159
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 63
  %19 = load i8, ptr %18, align 1, !tbaa !160
  %20 = icmp eq i8 %19, 0
  %21 = zext i1 %20 to i8
  br label %22

22:                                               ; preds = %17, %13, %9, %5, %1
  %23 = phi i8 [ 0, %13 ], [ 0, %9 ], [ 0, %5 ], [ 0, %1 ], [ %21, %17 ]
  ret i8 %23
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @option_enabled(i32 noundef %0) local_unnamed_addr #16 !prof !161 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %2, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !130
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6, !prof !162

6:                                                ; preds = %1
  %7 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %2, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !163
  switch i32 %8, label %33 [
    i32 0, label %9
    i32 1, label %13
    i32 2, label %19
    i32 3, label %26
  ], !prof !164

9:                                                ; preds = %6
  %10 = load i32, ptr %4, align 4, !tbaa !61
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i32
  br label %33

13:                                               ; preds = %6
  %14 = load i32, ptr %4, align 4, !tbaa !61
  %15 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %2, i32 8
  %16 = load i32, ptr %15, align 4, !tbaa !165
  %17 = icmp eq i32 %14, %16
  %18 = zext i1 %17 to i32
  br label %33

19:                                               ; preds = %6
  %20 = load i32, ptr %4, align 4, !tbaa !61
  %21 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %2, i32 8
  %22 = load i32, ptr %21, align 4, !tbaa !165
  %23 = and i32 %22, %20
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  br label %33

26:                                               ; preds = %6
  %27 = load i32, ptr %4, align 4, !tbaa !61
  %28 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %2, i32 8
  %29 = load i32, ptr %28, align 4, !tbaa !165
  %30 = and i32 %29, %27
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i32
  br label %33

33:                                               ; preds = %1, %6, %26, %19, %13, %9
  %34 = phi i32 [ %32, %26 ], [ %25, %19 ], [ %18, %13 ], [ %12, %9 ], [ -1, %6 ], [ -1, %1 ]
  ret i32 %34
}

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @get_option_state(i32 noundef %0, ptr noundef %1) local_unnamed_addr #17 !prof !45 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %3, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !130
  %6 = icmp eq ptr %5, null
  br i1 %6, label %24, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %3, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !163
  switch i32 %9, label %24 [
    i32 0, label %10
    i32 1, label %10
    i32 2, label %11
    i32 3, label %11
    i32 4, label %15
  ]

10:                                               ; preds = %7, %7
  store ptr %5, ptr %1, align 8, !tbaa !166
  br label %21

11:                                               ; preds = %7, %7
  %12 = tail call i32 @option_enabled(i32 noundef %0), !range !168
  %13 = trunc i32 %12 to i8
  %14 = getelementptr inbounds %struct.cl_option_state, ptr %1, i64 0, i32 2
  store i8 %13, ptr %14, align 8, !tbaa !169
  store ptr %14, ptr %1, align 8, !tbaa !166
  br label %21

15:                                               ; preds = %7
  %16 = load ptr, ptr %5, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  %18 = select i1 %17, ptr @.str.19, ptr %16
  store ptr %18, ptr %1, align 8, !tbaa !166
  %19 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %18)
  %20 = add i64 %19, 1
  br label %21

21:                                               ; preds = %15, %11, %10
  %22 = phi i64 [ 4, %10 ], [ 1, %11 ], [ %20, %15 ]
  %23 = getelementptr inbounds %struct.cl_option_state, ptr %1, i64 0, i32 1
  store i64 %22, ptr %23, align 8, !tbaa !170
  br label %24

24:                                               ; preds = %21, %7, %2
  %25 = phi i8 [ 0, %2 ], [ 1, %7 ], [ 1, %21 ]
  ret i8 %25
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_option(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #18 !prof !171 {
  %4 = getelementptr inbounds %struct.cl_option, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !130
  %6 = icmp eq ptr %5, null
  br i1 %6, label %40, label %7, !prof !123

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.cl_option, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !163
  switch i32 %9, label %40 [
    i32 0, label %10
    i32 1, label %11
    i32 2, label %18
    i32 3, label %18
    i32 4, label %39
  ], !prof !172

10:                                               ; preds = %7
  store i32 %1, ptr %5, align 4, !tbaa !61
  br label %40

11:                                               ; preds = %7
  %12 = icmp eq i32 %1, 0
  %13 = getelementptr inbounds %struct.cl_option, ptr %0, i64 0, i32 8
  %14 = load i32, ptr %13, align 4, !tbaa !165
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = select i1 %12, i32 %16, i32 %14
  store i32 %17, ptr %5, align 4, !tbaa !61
  br label %40

18:                                               ; preds = %7, %7
  %19 = icmp ne i32 %1, 0
  %20 = icmp ne i32 %9, 3
  %21 = xor i1 %19, %20
  %22 = getelementptr inbounds %struct.cl_option, ptr %0, i64 0, i32 8
  %23 = load i32, ptr %22, align 4, !tbaa !165
  br i1 %21, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, ptr %5, align 4, !tbaa !61
  %26 = or i32 %25, %23
  br label %31

27:                                               ; preds = %18
  %28 = xor i32 %23, -1
  %29 = load i32, ptr %5, align 4, !tbaa !61
  %30 = and i32 %29, %28
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi i32 [ %30, %27 ], [ %26, %24 ]
  store i32 %32, ptr %5, align 4, !tbaa !61
  %33 = icmp eq ptr %5, @target_flags
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.cl_option, ptr %0, i64 0, i32 8
  %36 = load i32, ptr %35, align 4, !tbaa !165
  %37 = load i32, ptr @target_flags_explicit, align 4, !tbaa !61
  %38 = or i32 %37, %36
  store i32 %38, ptr @target_flags_explicit, align 4, !tbaa !61
  br label %40

39:                                               ; preds = %7
  store ptr %2, ptr %5, align 8, !tbaa !46
  br label %40

40:                                               ; preds = %31, %34, %3, %7, %39, %11, %10
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @enable_warning_as_error(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !45 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %5 = add i64 %4, 2
  %6 = tail call ptr @xmalloc(i64 noundef %5) #26
  store i8 87, ptr %6, align 1, !tbaa !57
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  %8 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %0)
  %9 = tail call i64 @find_opt(ptr noundef nonnull %6, i32 noundef %2) #26
  %10 = trunc i64 %9 to i32
  %11 = icmp eq i32 %10, 870
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.20, ptr noundef %0, ptr noundef nonnull %6) #26
  br label %29

13:                                               ; preds = %3
  %14 = icmp ne i32 %1, 0
  %15 = select i1 %14, i32 4, i32 6
  %16 = load ptr, ptr @global_dc, align 8, !tbaa !46
  %17 = tail call i32 @diagnostic_classify_diagnostic(ptr noundef %16, i32 noundef %10, i32 noundef %15) #26
  %18 = shl i64 %9, 32
  %19 = ashr exact i64 %18, 32
  %20 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %19, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !163
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %13
  %24 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %19, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !130
  %26 = icmp ne ptr %25, null
  %27 = and i1 %14, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 1, ptr %25, align 4, !tbaa !61
  br label %29

29:                                               ; preds = %13, %23, %28, %12
  tail call void @free(ptr noundef %6)
  ret void
}

declare i64 @find_opt(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @diagnostic_classify_diagnostic(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #19

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @complain_wrong_lang(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #9 !prof !45 {
  %4 = and i32 %2, 32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.cl_option, ptr %1, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !118
  %9 = tail call fastcc ptr @write_langs(i32 noundef %8)
  %10 = tail call fastcc ptr @write_langs(i32 noundef %2)
  %11 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.24, ptr noundef %0, ptr noundef %9, ptr noundef %10) #26
  tail call void @free(ptr noundef %9)
  tail call void @free(ptr noundef %10)
  br label %12

12:                                               ; preds = %3, %6
  ret void
}

declare void @lto_register_user_option(i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @write_langs(i32 noundef %0) unnamed_addr #9 !prof !45 {
  %2 = load ptr, ptr @lang_names, align 8, !tbaa !46
  %3 = icmp eq ptr %2, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %1, %16
  %5 = phi ptr [ %21, %16 ], [ %2, %1 ]
  %6 = phi i32 [ %18, %16 ], [ 0, %1 ]
  %7 = phi i32 [ %17, %16 ], [ 0, %1 ]
  %8 = shl nuw i32 1, %6
  %9 = and i32 %8, %0
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %4
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5)
  %13 = trunc i64 %12 to i32
  %14 = add i32 %7, 1
  %15 = add i32 %14, %13
  br label %16

16:                                               ; preds = %4, %11
  %17 = phi i32 [ %15, %11 ], [ %7, %4 ]
  %18 = add i32 %6, 1
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [0 x ptr], ptr @lang_names, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %4, !llvm.loop !173

23:                                               ; preds = %16
  %24 = zext i32 %17 to i64
  br label %25

25:                                               ; preds = %23, %1
  %26 = phi i64 [ 0, %1 ], [ %24, %23 ]
  %27 = tail call ptr @xmalloc(i64 noundef %26) #26
  %28 = load ptr, ptr @lang_names, align 8, !tbaa !46
  %29 = icmp eq ptr %28, null
  br i1 %29, label %60, label %30

30:                                               ; preds = %25, %51
  %31 = phi ptr [ %56, %51 ], [ %28, %25 ]
  %32 = phi i32 [ %53, %51 ], [ 0, %25 ]
  %33 = phi i32 [ %52, %51 ], [ 0, %25 ]
  %34 = shl nuw i32 1, %32
  %35 = and i32 %34, %0
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %30
  %38 = icmp eq i32 %33, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %37
  %40 = add i32 %33, 1
  %41 = zext i32 %33 to i64
  %42 = getelementptr inbounds i8, ptr %27, i64 %41
  store i8 47, ptr %42, align 1, !tbaa !57
  br label %43

43:                                               ; preds = %39, %37
  %44 = phi i32 [ %40, %39 ], [ 0, %37 ]
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i8, ptr %27, i64 %45
  %47 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %46, ptr noundef nonnull dereferenceable(1) %31)
  %48 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %31)
  %49 = trunc i64 %48 to i32
  %50 = add i32 %44, %49
  br label %51

51:                                               ; preds = %30, %43
  %52 = phi i32 [ %50, %43 ], [ %33, %30 ]
  %53 = add i32 %32, 1
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds [0 x ptr], ptr @lang_names, i64 0, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !46
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %30, !llvm.loop !174

58:                                               ; preds = %51
  %59 = zext i32 %52 to i64
  br label %60

60:                                               ; preds = %58, %25
  %61 = phi i64 [ 0, %25 ], [ %59, %58 ]
  %62 = getelementptr inbounds i8, ptr %27, i64 %61
  store i8 0, ptr %62, align 1, !tbaa !57
  ret ptr %27
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @handle_param(ptr noundef %0) unnamed_addr #9 !prof !45 {
  %2 = tail call ptr @xstrdup(ptr noundef %0) #26
  %3 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 61)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.69, ptr noundef %2) #26
  br label %37

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !57
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %6
  %11 = zext i8 %8 to i64
  %12 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !127
  %14 = and i16 %13, 4
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %10, %21
  %17 = phi ptr [ %18, %21 ], [ %7, %10 ]
  %18 = getelementptr inbounds i8, ptr %17, i64 1
  %19 = load i8, ptr %18, align 1, !tbaa !57
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %29, label %21, !llvm.loop !128

21:                                               ; preds = %16
  %22 = zext i8 %19 to i64
  %23 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %22
  %24 = load i16, ptr %23, align 2, !tbaa !127
  %25 = and i16 %24, 4
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %16, !llvm.loop !128

27:                                               ; preds = %21, %10
  %28 = phi i1 [ %9, %10 ], [ %20, %21 ]
  br i1 %28, label %29, label %32

29:                                               ; preds = %16, %6, %27
  %30 = tail call i64 @strtol(ptr nocapture noundef nonnull %7, ptr noundef null, i32 noundef 10)
  %31 = trunc i64 %30 to i32
  br label %32

32:                                               ; preds = %27, %29
  %33 = phi i32 [ %31, %29 ], [ -1, %27 ]
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.70, ptr noundef nonnull %7) #26
  br label %37

36:                                               ; preds = %32
  store i8 0, ptr %3, align 1, !tbaa !57
  tail call void @set_param_value(ptr noundef %2, i32 noundef %33) #26
  br label %37

37:                                               ; preds = %35, %36, %5
  tail call void @free(ptr noundef %2)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @print_specific_help(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 !prof !45 {
  %4 = load i32, ptr @cl_lang_count, align 4, !tbaa !61
  %5 = shl nsw i32 -1, %4
  %6 = xor i32 %5, -1
  %7 = icmp ult i32 %4, 17
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1363, ptr noundef nonnull @.str.18) #26
  br label %9

9:                                                ; preds = %3, %8
  %10 = load i32, ptr @print_specific_help.columns, align 4, !tbaa !61
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = tail call ptr @getenv(ptr noundef nonnull @.str.71)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = tail call i64 @strtol(ptr nocapture noundef nonnull %13, ptr noundef null, i32 noundef 10)
  %17 = trunc i64 %16 to i32
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 %17, ptr @print_specific_help.columns, align 4, !tbaa !61
  br label %20

20:                                               ; preds = %15, %19, %12
  %21 = load i32, ptr @print_specific_help.columns, align 4, !tbaa !61
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 80, ptr @print_specific_help.columns, align 4, !tbaa !61
  br label %24

24:                                               ; preds = %20, %23, %9
  %25 = zext i32 %4 to i64
  %26 = and i32 %6, %1
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, ptr @.str.78, ptr @.str.77
  br label %29

29:                                               ; preds = %24, %45
  %30 = phi ptr [ null, %24 ], [ %47, %45 ]
  %31 = phi ptr [ @.str.19, %24 ], [ %46, %45 ]
  %32 = phi i32 [ 1, %24 ], [ %48, %45 ]
  %33 = phi i64 [ 0, %24 ], [ %49, %45 ]
  %34 = and i32 %32, %0
  switch i32 %34, label %40 [
    i32 0, label %45
    i32 1048576, label %35
    i32 262144, label %36
    i32 524288, label %37
    i32 2097152, label %38
    i32 131072, label %39
  ]

35:                                               ; preds = %29
  br label %45

36:                                               ; preds = %29
  br label %45

37:                                               ; preds = %29
  br label %45

38:                                               ; preds = %29
  br label %45

39:                                               ; preds = %29
  br label %45

40:                                               ; preds = %29
  %41 = icmp ult i64 %33, %25
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = getelementptr inbounds [0 x ptr], ptr @lang_names, i64 0, i64 %33
  %44 = load ptr, ptr %43, align 8, !tbaa !46
  br label %45

45:                                               ; preds = %29, %35, %36, %37, %38, %39, %42, %40
  %46 = phi ptr [ %31, %40 ], [ %44, %42 ], [ %31, %39 ], [ %31, %38 ], [ %31, %37 ], [ %31, %36 ], [ %31, %35 ], [ %31, %29 ]
  %47 = phi ptr [ %30, %40 ], [ %28, %42 ], [ @.str.76, %39 ], [ @.str.75, %38 ], [ @.str.74, %37 ], [ @.str.73, %36 ], [ @.str.72, %35 ], [ %30, %29 ]
  %48 = shl nuw nsw i32 %32, 1
  %49 = add nuw nsw i64 %33, 1
  %50 = icmp eq i64 %49, 22
  br i1 %50, label %51, label %29, !llvm.loop !175

51:                                               ; preds = %45
  %52 = icmp eq ptr %47, null
  br i1 %52, label %53, label %69

53:                                               ; preds = %51
  %54 = icmp eq i32 %2, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %53
  %56 = and i32 %0, 1073741824
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = and i32 %0, 67108864
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = and i32 %0, 33554432
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.82, i32 noundef %0) #26
  br label %235

65:                                               ; preds = %53
  %66 = and i32 %6, %2
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, ptr @.str.75, ptr @.str.83
  br label %69

69:                                               ; preds = %65, %61, %58, %55, %51
  %70 = phi ptr [ %47, %51 ], [ @.str.79, %55 ], [ @.str.80, %58 ], [ @.str.81, %61 ], [ %68, %65 ]
  %71 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.84, ptr noundef nonnull %70, ptr noundef %46)
  %72 = load i32, ptr @print_specific_help.columns, align 4, !tbaa !61
  %73 = icmp eq i32 %0, 131072
  br i1 %73, label %74, label %101

74:                                               ; preds = %69
  %75 = and i32 %1, 1073741824
  %76 = icmp eq i32 %75, 0
  br label %77

77:                                               ; preds = %74, %95
  %78 = phi i64 [ 0, %74 ], [ %96, %95 ]
  %79 = load ptr, ptr @compiler_params, align 8, !tbaa !46
  %80 = getelementptr inbounds %struct.param_info, ptr %79, i64 %78
  %81 = load ptr, ptr %80, align 8, !tbaa !176
  %82 = getelementptr inbounds %struct.param_info, ptr %79, i64 %78, i32 5
  %83 = load ptr, ptr %82, align 8, !tbaa !177
  %84 = icmp eq ptr %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %77
  %86 = load i8, ptr %83, align 1, !tbaa !57
  %87 = icmp ne i8 %86, 0
  %88 = or i1 %87, %76
  %89 = select i1 %87, ptr %83, ptr @undocumented_msg
  br i1 %88, label %91, label %95

90:                                               ; preds = %77
  br i1 %76, label %91, label %95

91:                                               ; preds = %85, %90
  %92 = phi ptr [ %89, %85 ], [ @undocumented_msg, %90 ]
  %93 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %81)
  %94 = trunc i64 %93 to i32
  tail call fastcc void @wrap_help(ptr noundef nonnull %92, ptr noundef %81, i32 noundef %94, i32 noundef %72)
  br label %95

95:                                               ; preds = %85, %91, %90
  %96 = add nuw nsw i64 %78, 1
  %97 = icmp eq i64 %96, 119
  br i1 %97, label %98, label %77, !llvm.loop !178

98:                                               ; preds = %95
  %99 = load ptr, ptr @stdout, align 8, !tbaa !46
  %100 = tail call i32 @putc(i32 noundef 10, ptr noundef %99)
  br label %235

101:                                              ; preds = %69
  %102 = load ptr, ptr @print_filtered_help.printed, align 8, !tbaa !46
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = load i32, ptr @cl_options_count, align 4, !tbaa !61
  %106 = zext i32 %105 to i64
  %107 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef %106) #26
  store ptr %107, ptr @print_filtered_help.printed, align 8, !tbaa !46
  br label %108

108:                                              ; preds = %104, %101
  %109 = load i32, ptr @cl_options_count, align 4, !tbaa !61
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %209, label %111

111:                                              ; preds = %108
  %112 = icmp eq i32 %0, 0
  %113 = and i32 %1, 1073741824
  %114 = icmp eq i32 %113, 0
  %115 = zext i32 %109 to i64
  br label %116

116:                                              ; preds = %111, %201
  %117 = phi i64 [ 0, %111 ], [ %204, %201 ]
  %118 = phi i8 [ 0, %111 ], [ %203, %201 ]
  %119 = phi i8 [ 0, %111 ], [ %202, %201 ]
  %120 = getelementptr inbounds %struct.cl_option, ptr @cl_options, i64 %117
  br i1 %112, label %126, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.cl_option, ptr @cl_options, i64 %117, i32 5
  %123 = load i32, ptr %122, align 8, !tbaa !118
  %124 = and i32 %123, %0
  %125 = icmp eq i32 %124, %0
  br i1 %125, label %131, label %126

126:                                              ; preds = %121, %116
  %127 = getelementptr inbounds %struct.cl_option, ptr @cl_options, i64 %117, i32 5
  %128 = load i32, ptr %127, align 8, !tbaa !118
  %129 = and i32 %128, %2
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %201, label %131

131:                                              ; preds = %126, %121
  %132 = getelementptr inbounds %struct.cl_option, ptr @cl_options, i64 %117, i32 5
  %133 = load i32, ptr %132, align 8, !tbaa !118
  %134 = and i32 %133, %1
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %201

136:                                              ; preds = %131
  %137 = load ptr, ptr @print_filtered_help.printed, align 8, !tbaa !46
  %138 = getelementptr inbounds i8, ptr %137, i64 %117
  %139 = load i8, ptr %138, align 1, !tbaa !57
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %201

141:                                              ; preds = %136
  store i8 1, ptr %138, align 1, !tbaa !57
  %142 = getelementptr inbounds %struct.cl_option, ptr @cl_options, i64 %117, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !179
  %144 = icmp ne ptr %143, null
  %145 = or i1 %144, %114
  %146 = select i1 %144, ptr %143, ptr @undocumented_msg
  br i1 %145, label %147, label %201

147:                                              ; preds = %141
  %148 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %146, i32 noundef 9)
  %149 = icmp eq ptr %148, null
  br i1 %149, label %155, label %150

150:                                              ; preds = %147
  %151 = ptrtoint ptr %148 to i64
  %152 = ptrtoint ptr %146 to i64
  %153 = sub i64 %151, %152
  %154 = getelementptr inbounds i8, ptr %148, i64 1
  br label %158

155:                                              ; preds = %147
  %156 = load ptr, ptr %120, align 8, !tbaa !129
  %157 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %156)
  br label %158

158:                                              ; preds = %155, %150
  %159 = phi i64 [ %153, %150 ], [ %157, %155 ]
  %160 = phi ptr [ %146, %150 ], [ %156, %155 ]
  %161 = phi ptr [ %154, %150 ], [ %146, %155 ]
  %162 = trunc i64 %159 to i32
  %163 = load i32, ptr @quiet_flag, align 4, !tbaa !61
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %199

165:                                              ; preds = %158
  %166 = icmp ult i32 %162, 29
  br i1 %166, label %167, label %168

167:                                              ; preds = %165
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) @print_filtered_help.new_help, ptr noundef nonnull align 1 dereferenceable(3) @.str.85, i64 3, i1 false)
  br label %169

168:                                              ; preds = %165
  store i16 9, ptr @print_filtered_help.new_help, align 16
  br label %169

169:                                              ; preds = %168, %167
  %170 = getelementptr inbounds %struct.cl_option, ptr @cl_options, i64 %117, i32 6
  %171 = load ptr, ptr %170, align 8, !tbaa !130
  %172 = icmp eq ptr %171, null
  br i1 %172, label %199, label %173

173:                                              ; preds = %169
  %174 = and i32 %133, 33554432
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %193, label %176

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.cl_option, ptr @cl_options, i64 %117, i32 7
  %178 = load i32, ptr %177, align 8, !tbaa !163
  %179 = icmp eq i32 %178, 4
  br i1 %179, label %180, label %188

180:                                              ; preds = %176
  %181 = load ptr, ptr %171, align 8, !tbaa !46
  %182 = icmp eq ptr %181, null
  br i1 %182, label %199, label %183

183:                                              ; preds = %180
  %184 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @print_filtered_help.new_help)
  %185 = getelementptr inbounds i8, ptr @print_filtered_help.new_help, i64 %184
  %186 = sub i64 128, %184
  %187 = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %185, i64 noundef %186, ptr noundef nonnull %181)
  br label %199

188:                                              ; preds = %176
  %189 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @print_filtered_help.new_help)
  %190 = getelementptr inbounds i8, ptr @print_filtered_help.new_help, i64 %189
  %191 = load i32, ptr %171, align 4, !tbaa !61
  %192 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %190, ptr noundef nonnull dereferenceable(1) @.str.87, i32 noundef %191)
  br label %199

193:                                              ; preds = %173
  %194 = trunc i64 %117 to i32
  %195 = tail call i32 @option_enabled(i32 noundef %194), !range !168
  %196 = icmp eq i32 %195, 0
  %197 = select i1 %196, ptr @.str.89, ptr @.str.88
  %198 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) @print_filtered_help.new_help, ptr noundef nonnull dereferenceable(1) %197)
  br label %199

199:                                              ; preds = %193, %188, %183, %180, %169, %158
  %200 = phi ptr [ %161, %158 ], [ @print_filtered_help.new_help, %193 ], [ @print_filtered_help.new_help, %180 ], [ @print_filtered_help.new_help, %183 ], [ @print_filtered_help.new_help, %188 ], [ @print_filtered_help.new_help, %169 ]
  tail call fastcc void @wrap_help(ptr noundef %200, ptr noundef %160, i32 noundef %162, i32 noundef %72)
  br label %201

201:                                              ; preds = %141, %126, %199, %136, %131
  %202 = phi i8 [ 1, %199 ], [ %119, %131 ], [ %119, %136 ], [ %119, %126 ], [ %119, %141 ]
  %203 = phi i8 [ 1, %199 ], [ %118, %131 ], [ 1, %136 ], [ %118, %126 ], [ 1, %141 ]
  %204 = add nuw nsw i64 %117, 1
  %205 = icmp eq i64 %204, %115
  br i1 %205, label %206, label %116, !llvm.loop !180

206:                                              ; preds = %201
  %207 = icmp eq i8 %203, 0
  %208 = icmp eq i8 %202, 0
  br label %209

209:                                              ; preds = %206, %108
  %210 = phi i1 [ true, %108 ], [ %208, %206 ]
  %211 = phi i1 [ true, %108 ], [ %207, %206 ]
  br i1 %211, label %212, label %228

212:                                              ; preds = %209
  %213 = and i32 %0, 255
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %229, label %215

215:                                              ; preds = %212, %225
  %216 = phi i64 [ %226, %225 ], [ 0, %212 ]
  %217 = trunc i64 %216 to i32
  %218 = shl nuw nsw i32 1, %217
  %219 = and i32 %218, %213
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %225, label %221

221:                                              ; preds = %215
  %222 = getelementptr inbounds [0 x ptr], ptr @lang_names, i64 0, i64 %216
  %223 = load ptr, ptr %222, align 8, !tbaa !46
  %224 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.91, ptr noundef %223, ptr noundef %223)
  br label %225

225:                                              ; preds = %221, %215
  %226 = add nuw nsw i64 %216, 1
  %227 = icmp eq i64 %226, 8
  br i1 %227, label %232, label %215, !llvm.loop !181

228:                                              ; preds = %209
  br i1 %210, label %229, label %232

229:                                              ; preds = %228, %212
  %230 = phi ptr [ @str, %212 ], [ @str.98, %228 ]
  %231 = tail call i32 @puts(ptr nonnull dereferenceable(1) %230)
  br label %232

232:                                              ; preds = %225, %229, %228
  %233 = load ptr, ptr @stdout, align 8, !tbaa !46
  %234 = tail call i32 @putc(i32 noundef 10, ptr noundef %233)
  br label %235

235:                                              ; preds = %232, %98, %64
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #20

declare void @fnotice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #3

declare void @strip_off_ending(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @decode_d_option(ptr noundef) local_unnamed_addr #3

declare void @fix_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @dbg_cnt_process_opt(ptr noundef) local_unnamed_addr #3

declare void @dbg_cnt_list_all_counters() local_unnamed_addr #3

declare void @add_debug_prefix_map(ptr noundef) local_unnamed_addr #3

declare i32 @dump_switch_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @add_comma_separated_to_vector(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #9 !prof !45 {
  %3 = tail call ptr @xstrdup(ptr noundef %1) #26
  br label %4

4:                                                ; preds = %41, %2
  %5 = phi ptr [ %3, %2 ], [ %42, %41 ]
  %6 = phi ptr [ %3, %2 ], [ %43, %41 ]
  %7 = phi ptr [ %3, %2 ], [ %30, %41 ]
  %8 = load i8, ptr %5, align 1, !tbaa !57
  switch i8 %8, label %27 [
    i8 0, label %44
    i8 44, label %9
  ]

9:                                                ; preds = %4
  %10 = getelementptr inbounds i8, ptr %6, i64 1
  store i8 0, ptr %6, align 1, !tbaa !57
  %11 = getelementptr inbounds i8, ptr %5, i64 1
  %12 = load ptr, ptr %0, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.VEC_char_p_base, ptr %12, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !182
  %17 = load i32, ptr %12, align 8, !tbaa !82
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %9, %14
  %20 = tail call ptr @vec_heap_p_reserve(ptr noundef %12, i32 noundef 1) #26
  store ptr %20, ptr %0, align 8, !tbaa !46
  br label %21

21:                                               ; preds = %14, %19
  %22 = load ptr, ptr %0, align 8, !tbaa !46
  %23 = load i32, ptr %22, align 8, !tbaa !82
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 8, !tbaa !82
  %25 = zext i32 %23 to i64
  %26 = getelementptr inbounds %struct.VEC_char_p_base, ptr %22, i64 0, i32 2, i64 %25
  store ptr %7, ptr %26, align 8, !tbaa !46
  br label %27

27:                                               ; preds = %4, %21
  %28 = phi ptr [ %11, %21 ], [ %5, %4 ]
  %29 = phi ptr [ %10, %21 ], [ %6, %4 ]
  %30 = phi ptr [ %10, %21 ], [ %7, %4 ]
  %31 = load i8, ptr %28, align 1, !tbaa !57
  %32 = icmp eq i8 %31, 92
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = getelementptr inbounds i8, ptr %28, i64 1
  %35 = load i8, ptr %34, align 1, !tbaa !57
  %36 = icmp eq i8 %35, 44
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  store i8 44, ptr %29, align 1, !tbaa !57
  %38 = getelementptr inbounds i8, ptr %28, i64 2
  br label %41

39:                                               ; preds = %33, %27
  %40 = getelementptr inbounds i8, ptr %28, i64 1
  store i8 %31, ptr %29, align 1, !tbaa !57
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi ptr [ %38, %37 ], [ %40, %39 ]
  %43 = getelementptr inbounds i8, ptr %29, i64 1
  br label %4, !llvm.loop !183

44:                                               ; preds = %4
  %45 = load i8, ptr %7, align 1, !tbaa !57
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %63, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr %0, align 8, !tbaa !46
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.VEC_char_p_base, ptr %48, i64 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !182
  %53 = load i32, ptr %48, align 8, !tbaa !82
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %47, %50
  %56 = tail call ptr @vec_heap_p_reserve(ptr noundef %48, i32 noundef 1) #26
  store ptr %56, ptr %0, align 8, !tbaa !46
  br label %57

57:                                               ; preds = %50, %55
  %58 = load ptr, ptr %0, align 8, !tbaa !46
  %59 = load i32, ptr %58, align 8, !tbaa !82
  %60 = add i32 %59, 1
  store i32 %60, ptr %58, align 8, !tbaa !82
  %61 = zext i32 %59 to i64
  %62 = getelementptr inbounds %struct.VEC_char_p_base, ptr %58, i64 0, i32 2, i64 %61
  store ptr %7, ptr %62, align 8, !tbaa !46
  br label %63

63:                                               ; preds = %57, %44
  ret void
}

declare void @pp_base_set_line_maximum_length(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @set_random_seed(ptr noundef) local_unnamed_addr #3

declare void @fix_sched_param(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @decode_reg_name(ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_REG(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_s00_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @ggc_alloc_string(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @vect_set_verbosity_level(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @set_debug_level(i32 noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #9 !prof !45 {
  %4 = trunc i32 %1 to i8
  store i8 %4, ptr @use_gnu_debug_info_extensions, align 1, !tbaa !57
  %5 = icmp eq i32 %0, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = load i32, ptr @write_symbols, align 4, !tbaa !61
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
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.95, ptr noundef %21) #26
  br label %22

22:                                               ; preds = %18, %10
  store i32 %0, ptr @write_symbols, align 4, !tbaa !61
  store i1 true, ptr @set_debug_level.type_explicit, align 1
  br label %23

23:                                               ; preds = %9, %6, %22
  %24 = load i8, ptr %2, align 1, !tbaa !57
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = load i8, ptr %2, align 1, !tbaa !57
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %52, label %29

29:                                               ; preds = %26
  %30 = zext i8 %27 to i64
  %31 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !127
  %33 = and i16 %32, 4
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %50, label %39

35:                                               ; preds = %23
  %36 = load i32, ptr @debug_info_level, align 4, !tbaa !61
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %63

38:                                               ; preds = %35
  store i32 2, ptr @debug_info_level, align 4, !tbaa !61
  br label %63

39:                                               ; preds = %29, %44
  %40 = phi ptr [ %41, %44 ], [ %2, %29 ]
  %41 = getelementptr inbounds i8, ptr %40, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !57
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %52, label %44, !llvm.loop !128

44:                                               ; preds = %39
  %45 = zext i8 %42 to i64
  %46 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %45
  %47 = load i16, ptr %46, align 2, !tbaa !127
  %48 = and i16 %47, 4
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %39, !llvm.loop !128

50:                                               ; preds = %44, %29
  %51 = phi i1 [ %28, %29 ], [ %43, %44 ]
  br i1 %51, label %52, label %55

52:                                               ; preds = %39, %26, %50
  %53 = tail call i64 @strtol(ptr nocapture noundef nonnull %2, ptr noundef null, i32 noundef 10)
  %54 = trunc i64 %53 to i32
  br label %55

55:                                               ; preds = %50, %52
  %56 = phi i32 [ %54, %52 ], [ -1, %50 ]
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.96, ptr noundef nonnull %2) #26
  br label %63

59:                                               ; preds = %55
  %60 = icmp sgt i32 %56, 3
  br i1 %60, label %61, label %62

61:                                               ; preds = %59
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.97, ptr noundef nonnull %2) #26
  br label %63

62:                                               ; preds = %59
  store i32 %56, ptr @debug_info_level, align 4, !tbaa !61
  br label %63

63:                                               ; preds = %58, %62, %61, %35, %38
  ret void
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #21

declare void @internal_error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @wrap_help(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #22 !prof !45 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
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
  %18 = load i8, ptr %10, align 1, !tbaa !57
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
  %32 = load i8, ptr %31, align 1, !tbaa !57
  %33 = icmp ne i8 %32, 32
  %34 = icmp ne i32 %22, 0
  %35 = and i1 %34, %33
  br i1 %35, label %36, label %48

36:                                               ; preds = %28
  %37 = add i32 %22, -1
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i8, ptr %10, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !57
  %41 = zext i8 %40 to i64
  %42 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !127
  %44 = and i16 %43, 136
  %45 = icmp eq i16 %44, 0
  %46 = select i1 %45, i32 %23, i32 %29
  br label %48

47:                                               ; preds = %27
  br label %48

48:                                               ; preds = %28, %36, %27, %47
  %49 = phi i32 [ %22, %27 ], [ %23, %47 ], [ %46, %36 ], [ %23, %28 ]
  %50 = add i32 %22, 1
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %10, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !57
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %20, !llvm.loop !184

55:                                               ; preds = %20, %48, %17, %8
  %56 = phi i32 [ %11, %8 ], [ %11, %17 ], [ %49, %48 ], [ %23, %20 ]
  %57 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.93, i32 noundef 27, i32 noundef %9, ptr noundef %1, i32 noundef %56, ptr noundef %10)
  br label %58

58:                                               ; preds = %58, %55
  %59 = phi i32 [ %56, %55 ], [ %64, %58 ]
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %10, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !57
  %63 = icmp eq i8 %62, 32
  %64 = add i32 %59, 1
  br i1 %63, label %58, label %65, !llvm.loop !185

65:                                               ; preds = %58
  %66 = getelementptr inbounds i8, ptr %10, i64 %60
  %67 = sub i32 %11, %59
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %8, !llvm.loop !186

69:                                               ; preds = %65
  ret void
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #24

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #24

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
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress nofree nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nofree nounwind }
attributes #26 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!44}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !{ptr @decode_options, ptr @strcmp, i64 6}
!36 = !{ptr @decode_options, ptr @read_integral_parameter, i64 1}
!37 = !{ptr @decode_options, ptr @set_param_value, i64 3}
!38 = !{ptr @decode_options, ptr @lto_clear_user_options, i64 1}
!39 = !{ptr @decode_options, ptr @optimization_options, i64 1}
!40 = !{ptr @decode_options, ptr @xrealloc, i64 1}
!41 = !{ptr @decode_options, ptr @find_opt, i64 4}
!42 = !{ptr @decode_options, ptr @set_option, i64 2}
!43 = !{ptr @decode_options, ptr @lto_register_user_option, i64 5}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"any pointer", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !{!51, !47, i64 8}
!51 = !{!"_IO_FILE", !52, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !47, i64 56, !47, i64 64, !47, i64 72, !47, i64 80, !47, i64 88, !47, i64 96, !47, i64 104, !52, i64 112, !52, i64 116, !53, i64 120, !54, i64 128, !48, i64 130, !48, i64 131, !47, i64 136, !53, i64 144, !47, i64 152, !47, i64 160, !47, i64 168, !47, i64 176, !53, i64 184, !52, i64 192, !48, i64 196}
!52 = !{!"int", !48, i64 0}
!53 = !{!"long", !48, i64 0}
!54 = !{!"short", !48, i64 0}
!55 = !{!51, !47, i64 16}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{!48, !48, i64 0}
!58 = !{!51, !47, i64 40}
!59 = !{!51, !47, i64 48}
!60 = !{!51, !52, i64 0}
!61 = !{!52, !52, i64 0}
!62 = distinct !{!62, !63, !64}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!"llvm.loop.unroll.disable"}
!65 = !{!66, !47, i64 464}
!66 = !{!"lang_hooks", !47, i64 0, !53, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !47, i64 56, !47, i64 64, !47, i64 72, !47, i64 80, !47, i64 88, !47, i64 96, !47, i64 104, !47, i64 112, !47, i64 120, !47, i64 128, !47, i64 136, !47, i64 144, !47, i64 152, !47, i64 160, !47, i64 168, !47, i64 176, !47, i64 184, !47, i64 192, !47, i64 200, !47, i64 208, !47, i64 216, !47, i64 224, !47, i64 232, !67, i64 240, !68, i64 248, !69, i64 256, !70, i64 272, !71, i64 432, !72, i64 560, !47, i64 584, !47, i64 592, !47, i64 600, !47, i64 608, !47, i64 616, !47, i64 624, !47, i64 632, !47, i64 640, !47, i64 648, !47, i64 656, !47, i64 664, !48, i64 672}
!67 = !{!"lang_hooks_for_tree_inlining", !47, i64 0}
!68 = !{!"lang_hooks_for_callgraph", !47, i64 0}
!69 = !{!"lang_hooks_for_tree_dump", !47, i64 0, !47, i64 8}
!70 = !{!"lang_hooks_for_decls", !47, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !47, i64 56, !47, i64 64, !47, i64 72, !47, i64 80, !47, i64 88, !47, i64 96, !47, i64 104, !47, i64 112, !47, i64 120, !47, i64 128, !47, i64 136, !47, i64 144, !47, i64 152}
!71 = !{!"lang_hooks_for_types", !47, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !47, i64 56, !47, i64 64, !47, i64 72, !47, i64 80, !47, i64 88, !47, i64 96, !47, i64 104, !47, i64 112, !48, i64 120}
!72 = !{!"lang_hooks_for_lto", !47, i64 0, !47, i64 8, !47, i64 16}
!73 = !{!74, !48, i64 16}
!74 = !{!"", !47, i64 0, !52, i64 8, !52, i64 12, !48, i64 16}
!75 = !{!74, !47, i64 0}
!76 = distinct !{!76, !63, !64}
!77 = !{!"function_entry_count", i64 1}
!78 = !{!"branch_weights", i32 1, i32 0}
!79 = !{!80, !52, i64 0}
!80 = !{!"VEC_const_char_p_base", !52, i64 0, !52, i64 4, !48, i64 8}
!81 = distinct !{!81, !63, !64}
!82 = !{!83, !52, i64 0}
!83 = !{!"VEC_char_p_base", !52, i64 0, !52, i64 4, !48, i64 8}
!84 = !{!66, !47, i64 176}
!85 = distinct !{!85, !63, !64}
!86 = distinct !{!86, !63, !64}
!87 = !{!"branch_weights", i32 0, i32 1}
!88 = !{!66, !47, i64 32}
!89 = !{!"VP", i32 0, i64 1, i64 -6442369718983392709, i64 1}
!90 = !{!66, !47, i64 40}
!91 = !{!"VP", i32 0, i64 1, i64 655065867365670773, i64 1}
!92 = !{!93, !52, i64 8}
!93 = !{!"param_info", !47, i64 0, !52, i64 8, !48, i64 12, !52, i64 16, !52, i64 20, !47, i64 24}
!94 = !{!"branch_weights", i32 127, i32 1}
!95 = !{!"branch_weights", i32 0, i32 6}
!96 = !{!"branch_weights", i32 4, i32 2}
!97 = !{!"branch_weights", i32 1, i32 3}
!98 = !{!"branch_weights", i32 127, i32 641}
!99 = distinct !{!99, !63, !64}
!100 = !{!101, !47, i64 1720}
!101 = !{!"gcc_target", !102, i64 0, !104, i64 368, !105, i64 664, !52, i64 744, !47, i64 752, !47, i64 760, !47, i64 768, !47, i64 776, !47, i64 784, !47, i64 792, !47, i64 800, !47, i64 808, !47, i64 816, !47, i64 824, !47, i64 832, !47, i64 840, !47, i64 848, !47, i64 856, !47, i64 864, !47, i64 872, !47, i64 880, !47, i64 888, !47, i64 896, !47, i64 904, !47, i64 912, !47, i64 920, !47, i64 928, !47, i64 936, !47, i64 944, !47, i64 952, !47, i64 960, !47, i64 968, !47, i64 976, !47, i64 984, !47, i64 992, !47, i64 1000, !47, i64 1008, !47, i64 1016, !47, i64 1024, !47, i64 1032, !47, i64 1040, !47, i64 1048, !47, i64 1056, !53, i64 1064, !53, i64 1072, !47, i64 1080, !47, i64 1088, !47, i64 1096, !47, i64 1104, !47, i64 1112, !47, i64 1120, !47, i64 1128, !47, i64 1136, !47, i64 1144, !47, i64 1152, !47, i64 1160, !47, i64 1168, !106, i64 1176, !47, i64 1232, !47, i64 1240, !47, i64 1248, !47, i64 1256, !47, i64 1264, !47, i64 1272, !47, i64 1280, !47, i64 1288, !47, i64 1296, !47, i64 1304, !47, i64 1312, !47, i64 1320, !47, i64 1328, !47, i64 1336, !47, i64 1344, !47, i64 1352, !47, i64 1360, !47, i64 1368, !47, i64 1376, !47, i64 1384, !47, i64 1392, !47, i64 1400, !47, i64 1408, !47, i64 1416, !47, i64 1424, !47, i64 1432, !47, i64 1440, !47, i64 1448, !47, i64 1456, !53, i64 1464, !107, i64 1472, !47, i64 1664, !47, i64 1672, !47, i64 1680, !47, i64 1688, !47, i64 1696, !47, i64 1704, !47, i64 1712, !47, i64 1720, !47, i64 1728, !47, i64 1736, !47, i64 1744, !47, i64 1752, !47, i64 1760, !47, i64 1768, !47, i64 1776, !108, i64 1784, !109, i64 1792, !110, i64 1896, !111, i64 1968, !47, i64 2016, !48, i64 2024, !48, i64 2025, !48, i64 2026, !48, i64 2027, !48, i64 2028, !48, i64 2029, !48, i64 2030, !48, i64 2031, !48, i64 2032, !48, i64 2033, !48, i64 2034, !48, i64 2035}
!102 = !{!"asm_out", !47, i64 0, !47, i64 8, !47, i64 16, !103, i64 24, !103, i64 56, !47, i64 88, !47, i64 96, !47, i64 104, !47, i64 112, !47, i64 120, !47, i64 128, !47, i64 136, !47, i64 144, !47, i64 152, !47, i64 160, !47, i64 168, !47, i64 176, !47, i64 184, !47, i64 192, !47, i64 200, !47, i64 208, !47, i64 216, !47, i64 224, !47, i64 232, !47, i64 240, !47, i64 248, !47, i64 256, !47, i64 264, !47, i64 272, !47, i64 280, !47, i64 288, !47, i64 296, !47, i64 304, !47, i64 312, !47, i64 320, !47, i64 328, !47, i64 336, !47, i64 344, !47, i64 352, !47, i64 360}
!103 = !{!"asm_int_op", !47, i64 0, !47, i64 8, !47, i64 16, !47, i64 24}
!104 = !{!"sched", !47, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !47, i64 56, !47, i64 64, !47, i64 72, !47, i64 80, !47, i64 88, !47, i64 96, !47, i64 104, !47, i64 112, !47, i64 120, !47, i64 128, !47, i64 136, !47, i64 144, !47, i64 152, !47, i64 160, !47, i64 168, !47, i64 176, !47, i64 184, !47, i64 192, !47, i64 200, !47, i64 208, !47, i64 216, !47, i64 224, !47, i64 232, !47, i64 240, !47, i64 248, !47, i64 256, !47, i64 264, !47, i64 272, !47, i64 280, !47, i64 288}
!105 = !{!"vectorize", !47, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !47, i64 56, !47, i64 64, !47, i64 72}
!106 = !{!"addr_space", !47, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48}
!107 = !{!"calls", !47, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !47, i64 56, !47, i64 64, !47, i64 72, !47, i64 80, !47, i64 88, !47, i64 96, !47, i64 104, !47, i64 112, !47, i64 120, !47, i64 128, !47, i64 136, !47, i64 144, !47, i64 152, !47, i64 160, !47, i64 168, !47, i64 176, !47, i64 184}
!108 = !{!"c", !47, i64 0}
!109 = !{!"cxx", !47, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !47, i64 56, !47, i64 64, !47, i64 72, !47, i64 80, !47, i64 88, !47, i64 96}
!110 = !{!"emutls", !47, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !47, i64 40, !47, i64 48, !47, i64 56, !48, i64 64, !48, i64 65}
!111 = !{!"target_option_hooks", !47, i64 0, !47, i64 8, !47, i64 16, !47, i64 24, !47, i64 32, !47, i64 40}
!112 = !{!101, !52, i64 744}
!113 = !{!101, !48, i64 2024}
!114 = !{!"branch_weights", i32 4, i32 1}
!115 = !{!"branch_weights", i32 0, i32 4}
!116 = !{!"branch_weights", i32 6, i32 1, i32 0, i32 1}
!117 = !{!80, !52, i64 4}
!118 = !{!119, !52, i64 24}
!119 = !{!"cl_option", !47, i64 0, !47, i64 8, !54, i64 16, !48, i64 18, !52, i64 20, !52, i64 24, !47, i64 32, !52, i64 40, !52, i64 44}
!120 = !{!"branch_weights", i32 4, i32 0}
!121 = !{!"branch_weights", i32 2, i32 2}
!122 = !{!119, !48, i64 18}
!123 = !{!"branch_weights", i32 0, i32 2}
!124 = !{!"branch_weights", i32 1, i32 1}
!125 = !{!"branch_weights", i32 2, i32 0}
!126 = !{!66, !47, i64 56}
!127 = !{!54, !54, i64 0}
!128 = distinct !{!128, !63, !64}
!129 = !{!119, !47, i64 0}
!130 = !{!119, !47, i64 32}
!131 = !{!"branch_weights", i32 3, i32 1}
!132 = !{!66, !47, i64 48}
!133 = !{!"VP", i32 0, i64 1, i64 -2227466070919857988, i64 1}
!134 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!135 = distinct !{!135, !63, !64}
!136 = distinct !{!136, !63, !64}
!137 = !{!101, !47, i64 768}
!138 = distinct !{!138, !63, !64}
!139 = !{!140, !47, i64 0}
!140 = !{!"", !47, i64 0, !52, i64 8}
!141 = distinct !{!141, !63, !64}
!142 = !{!140, !52, i64 8}
!143 = distinct !{!143, !63, !64}
!144 = !{!53, !53, i64 0}
!145 = !{!146, !47, i64 0}
!146 = !{!"diagnostic_context", !47, i64 0, !48, i64 8, !48, i64 56, !48, i64 57, !48, i64 60, !48, i64 3540, !48, i64 3541, !47, i64 3544, !47, i64 3552, !47, i64 3560, !47, i64 3568, !47, i64 3576, !52, i64 3584, !48, i64 3588}
!147 = !{!148, !52, i64 28}
!148 = !{!"pretty_print_info", !47, i64 0, !47, i64 8, !52, i64 16, !52, i64 20, !52, i64 24, !149, i64 28, !47, i64 40, !48, i64 48, !48, i64 49, !48, i64 50}
!149 = !{!"", !52, i64 0, !52, i64 4}
!150 = !{!146, !48, i64 3540}
!151 = !{!101, !47, i64 760}
!152 = !{!"branch_weights", i32 513, i32 127}
!153 = distinct !{!153, !63, !64}
!154 = !{!93, !48, i64 12}
!155 = !{!156, !48, i64 131}
!156 = !{!"cl_optimization", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !48, i64 24, !48, i64 25, !48, i64 26, !48, i64 27, !48, i64 28, !48, i64 29, !48, i64 30, !48, i64 31, !48, i64 32, !48, i64 33, !48, i64 34, !48, i64 35, !48, i64 36, !48, i64 37, !48, i64 38, !48, i64 39, !48, i64 40, !48, i64 41, !48, i64 42, !48, i64 43, !48, i64 44, !48, i64 45, !48, i64 46, !48, i64 47, !48, i64 48, !48, i64 49, !48, i64 50, !48, i64 51, !48, i64 52, !48, i64 53, !48, i64 54, !48, i64 55, !48, i64 56, !48, i64 57, !48, i64 58, !48, i64 59, !48, i64 60, !48, i64 61, !48, i64 62, !48, i64 63, !48, i64 64, !48, i64 65, !48, i64 66, !48, i64 67, !48, i64 68, !48, i64 69, !48, i64 70, !48, i64 71, !48, i64 72, !48, i64 73, !48, i64 74, !48, i64 75, !48, i64 76, !48, i64 77, !48, i64 78, !48, i64 79, !48, i64 80, !48, i64 81, !48, i64 82, !48, i64 83, !48, i64 84, !48, i64 85, !48, i64 86, !48, i64 87, !48, i64 88, !48, i64 89, !48, i64 90, !48, i64 91, !48, i64 92, !48, i64 93, !48, i64 94, !48, i64 95, !48, i64 96, !48, i64 97, !48, i64 98, !48, i64 99, !48, i64 100, !48, i64 101, !48, i64 102, !48, i64 103, !48, i64 104, !48, i64 105, !48, i64 106, !48, i64 107, !48, i64 108, !48, i64 109, !48, i64 110, !48, i64 111, !48, i64 112, !48, i64 113, !48, i64 114, !48, i64 115, !48, i64 116, !48, i64 117, !48, i64 118, !48, i64 119, !48, i64 120, !48, i64 121, !48, i64 122, !48, i64 123, !48, i64 124, !48, i64 125, !48, i64 126, !48, i64 127, !48, i64 128, !48, i64 129, !48, i64 130, !48, i64 131, !48, i64 132, !48, i64 133, !48, i64 134, !48, i64 135, !48, i64 136, !48, i64 137, !48, i64 138, !48, i64 139, !48, i64 140, !48, i64 141, !48, i64 142, !48, i64 143, !48, i64 144, !48, i64 145, !48, i64 146, !48, i64 147, !48, i64 148, !48, i64 149, !48, i64 150, !48, i64 151, !48, i64 152, !48, i64 153, !48, i64 154, !48, i64 155, !48, i64 156, !48, i64 157, !48, i64 158, !48, i64 159, !48, i64 160, !48, i64 161, !48, i64 162, !48, i64 163, !48, i64 164, !48, i64 165, !48, i64 166, !48, i64 167, !48, i64 168, !48, i64 169, !48, i64 170, !48, i64 171, !48, i64 172, !48, i64 173, !48, i64 174, !48, i64 175, !48, i64 176, !48, i64 177, !48, i64 178, !48, i64 179, !48, i64 180}
!157 = !{!156, !48, i64 167}
!158 = !{!156, !48, i64 50}
!159 = !{!156, !48, i64 124}
!160 = !{!156, !48, i64 81}
!161 = !{!"function_entry_count", i64 741}
!162 = !{!"branch_weights", i32 0, i32 741}
!163 = !{!119, !52, i64 40}
!164 = !{!"branch_weights", i32 0, i32 741, i32 0, i32 0, i32 0}
!165 = !{!119, !52, i64 44}
!166 = !{!167, !47, i64 0}
!167 = !{!"cl_option_state", !47, i64 0, !53, i64 8, !48, i64 16}
!168 = !{i32 -1, i32 2}
!169 = !{!167, !48, i64 16}
!170 = !{!167, !53, i64 8}
!171 = !{!"function_entry_count", i64 2}
!172 = !{!"branch_weights", i32 0, i32 2, i32 0, i32 0, i32 0, i32 0}
!173 = distinct !{!173, !63, !64}
!174 = distinct !{!174, !63, !64}
!175 = distinct !{!175, !63, !64}
!176 = !{!93, !47, i64 0}
!177 = !{!93, !47, i64 24}
!178 = distinct !{!178, !63, !64}
!179 = !{!119, !47, i64 8}
!180 = distinct !{!180, !63, !64}
!181 = distinct !{!181, !63, !64}
!182 = !{!83, !52, i64 4}
!183 = distinct !{!183, !63, !64}
!184 = distinct !{!184, !63, !64}
!185 = distinct !{!185, !63, !64}
!186 = distinct !{!186, !63, !64}
