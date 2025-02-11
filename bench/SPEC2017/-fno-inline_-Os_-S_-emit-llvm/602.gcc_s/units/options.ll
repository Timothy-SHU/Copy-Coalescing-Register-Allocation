; ModuleID = 'options.c'
source_filename = "options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cl_option = type { ptr, ptr, i16, i8, i32, i32, ptr, i32, i32 }
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
%struct.cl_optimization = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cl_target_option = type { i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }

@extra_warnings = dso_local global i32 0, align 4
@warn_abi = dso_local global i32 0, align 4
@warn_address = dso_local global i32 0, align 4
@warn_aggregate_return = dso_local global i32 0, align 4
@warn_array_bounds = dso_local global i32 0, align 4
@warn_assign_intercept = dso_local global i32 0, align 4
@warn_bad_function_cast = dso_local global i32 0, align 4
@warn_cxx_compat = dso_local global i32 0, align 4
@warn_cxx0x_compat = dso_local global i32 0, align 4
@warn_cast_align = dso_local global i32 0, align 4
@warn_cast_qual = dso_local global i32 0, align 4
@warn_char_subscripts = dso_local global i32 0, align 4
@warn_conversion = dso_local global i32 0, align 4
@warn_coverage_mismatch = dso_local global i32 0, align 4
@warn_ctor_dtor_privacy = dso_local global i32 0, align 4
@warn_declaration_after_statement = dso_local global i32 0, align 4
@warn_disabled_optimization = dso_local global i32 0, align 4
@warn_ecpp = dso_local global i32 0, align 4
@warnings_are_errors = dso_local global i32 0, align 4
@flag_extraneous_semicolon = dso_local global i32 0, align 4
@flag_fatal_errors = dso_local global i32 0, align 4
@warn_float_equal = dso_local global i32 0, align 4
@warn_format_contains_nul = dso_local global i32 0, align 4
@warn_format_extra_args = dso_local global i32 0, align 4
@warn_format_nonliteral = dso_local global i32 0, align 4
@warn_format_security = dso_local global i32 0, align 4
@warn_format_y2k = dso_local global i32 0, align 4
@warn_format_zero_length = dso_local global i32 0, align 4
@warn_implicit_int = dso_local global i32 0, align 4
@warn_init_self = dso_local global i32 0, align 4
@warn_inline = dso_local global i32 0, align 4
@warn_missing_braces = dso_local global i32 0, align 4
@warn_missing_declarations = dso_local global i32 0, align 4
@warn_missing_format_attribute = dso_local global i32 0, align 4
@warn_missing_noreturn = dso_local global i32 0, align 4
@warn_missing_prototypes = dso_local global i32 0, align 4
@warn_nested_externs = dso_local global i32 0, align 4
@warn_nonvdtor = dso_local global i32 0, align 4
@warn_nonnull = dso_local global i32 0, align 4
@warn_old_style_cast = dso_local global i32 0, align 4
@warn_old_style_definition = dso_local global i32 0, align 4
@warn_overloaded_virtual = dso_local global i32 0, align 4
@warn_packed = dso_local global i32 0, align 4
@warn_padded = dso_local global i32 0, align 4
@warn_parentheses = dso_local global i32 0, align 4
@warn_pointer_arith = dso_local global i32 0, align 4
@warn_redundant_decls = dso_local global i32 0, align 4
@flag_redundant = dso_local global i32 0, align 4
@warn_reorder = dso_local global i32 0, align 4
@warn_return_type = dso_local global i32 0, align 4
@warn_selector = dso_local global i32 0, align 4
@warn_sequence_point = dso_local global i32 0, align 4
@warn_shadow = dso_local global i32 0, align 4
@warn_sign_promo = dso_local global i32 0, align 4
@warn_stack_protect = dso_local global i32 0, align 4
@warn_strict_prototypes = dso_local global i32 0, align 4
@warn_strict_selector_match = dso_local global i32 0, align 4
@warn_switch = dso_local global i32 0, align 4
@warn_switch_default = dso_local global i32 0, align 4
@warn_switch_enum = dso_local global i32 0, align 4
@warn_synth = dso_local global i32 0, align 4
@warn_system_headers = dso_local global i32 0, align 4
@warn_traditional = dso_local global i32 0, align 4
@warn_traditional_conversion = dso_local global i32 0, align 4
@warn_undeclared_selector = dso_local global i32 0, align 4
@warn_unsafe_loop_optimizations = dso_local global i32 0, align 4
@warn_unsuffixed_float_constants = dso_local global i32 0, align 4
@warn_volatile_register_var = dso_local global i32 0, align 4
@warn_write_strings = dso_local global i32 0, align 4
@flag_pic = dso_local global i32 0, align 4
@flag_pie = dso_local global i32 0, align 4
@align_functions = dso_local global i32 0, align 4
@align_jumps = dso_local global i32 0, align 4
@align_labels = dso_local global i32 0, align 4
@align_loops = dso_local global i32 0, align 4
@flag_argument_noalias = dso_local global i32 0, align 4
@flag_associative_math = dso_local global i32 0, align 4
@flag_asynchronous_unwind_tables = dso_local global i32 0, align 4
@flag_bootstrap_classes = dso_local global i32 0, align 4
@flag_bounds_check = dso_local global i32 0, align 4
@flag_branch_probabilities = dso_local global i32 0, align 4
@flag_branch_target_load_optimize = dso_local global i32 0, align 4
@flag_branch_target_load_optimize2 = dso_local global i32 0, align 4
@flag_btr_bb_exclusive = dso_local global i32 0, align 4
@flag_caller_saves = dso_local global i32 0, align 4
@flag_check_data_deps = dso_local global i32 0, align 4
@flag_check_references = dso_local global i32 0, align 4
@flag_no_common = dso_local global i32 0, align 4
@flag_compare_debug = dso_local global i32 0, align 4
@flag_compare_debug_opt = dso_local global ptr null, align 8
@flag_conserve_stack = dso_local global i32 0, align 4
@flag_cprop_registers = dso_local global i32 0, align 4
@flag_crossjumping = dso_local global i32 0, align 4
@flag_cse_follow_jumps = dso_local global i32 0, align 4
@flag_cx_fortran_rules = dso_local global i32 0, align 4
@flag_cx_limited_range = dso_local global i32 0, align 4
@flag_data_sections = dso_local global i32 0, align 4
@flag_defer_pop = dso_local global i32 0, align 4
@flag_delayed_branch = dso_local global i32 0, align 4
@flag_dump_final_insns = dso_local global ptr null, align 8
@flag_dump_noaddr = dso_local global i32 0, align 4
@flag_eliminate_dwarf2_dups = dso_local global i32 0, align 4
@flag_debug_only_used_symbols = dso_local global i32 0, align 4
@flag_emit_class_files = dso_local global i32 0, align 4
@flag_enable_icf_debug = dso_local global i32 0, align 4
@flag_exceptions = dso_local global i32 0, align 4
@flag_expensive_optimizations = dso_local global i32 0, align 4
@flag_filelist_file = dso_local global i32 0, align 4
@flag_finite_math_only = dso_local global i32 0, align 4
@flag_float_store = dso_local global i32 0, align 4
@flag_force_classes_archive_check = dso_local global i32 0, align 4
@flag_forward_propagate = dso_local global i32 0, align 4
@flag_friend_injection = dso_local global i32 0, align 4
@flag_no_function_cse = dso_local global i32 0, align 4
@flag_function_sections = dso_local global i32 0, align 4
@flag_gcse = dso_local global i32 0, align 4
@flag_gcse_after_reload = dso_local global i32 0, align 4
@flag_graphite = dso_local global i32 0, align 4
@flag_graphite_identity = dso_local global i32 0, align 4
@flag_guess_branch_prob = dso_local global i32 0, align 4
@flag_hash_synchronization = dso_local global i32 0, align 4
@help_flag = dso_local global i32 0, align 4
@flag_no_ident = dso_local global i32 0, align 4
@flag_if_conversion = dso_local global i32 0, align 4
@flag_if_conversion2 = dso_local global i32 0, align 4
@flag_indirect_dispatch = dso_local global i32 0, align 4
@flag_indirect_inlining = dso_local global i32 0, align 4
@flag_inhibit_size_directive = dso_local global i32 0, align 4
@flag_inline_functions = dso_local global i32 0, align 4
@flag_inline_small_functions = dso_local global i32 0, align 4
@flag_instrument_function_entry_exit = dso_local global i32 0, align 4
@flag_ipa_cp = dso_local global i32 0, align 4
@flag_ipa_cp_clone = dso_local global i32 0, align 4
@flag_ipa_matrix_reorg = dso_local global i32 0, align 4
@flag_ipa_struct_reorg = dso_local global i32 0, align 4
@flag_ira_loop_pressure = dso_local global i32 0, align 4
@flag_jni = dso_local global i32 0, align 4
@flag_keep_inline_functions = dso_local global i32 0, align 4
@flag_loop_block = dso_local global i32 0, align 4
@flag_loop_interchange = dso_local global i32 0, align 4
@flag_loop_parallelize_all = dso_local global i32 0, align 4
@flag_loop_strip_mine = dso_local global i32 0, align 4
@flag_lto = dso_local global i32 0, align 4
@flag_ltrans = dso_local global i32 0, align 4
@ltrans_output_list = dso_local global ptr null, align 8
@mem_report = dso_local global i32 0, align 4
@flag_modulo_sched = dso_local global i32 0, align 4
@flag_modulo_sched_allow_regmoves = dso_local global i32 0, align 4
@flag_mudflap = dso_local global i32 0, align 4
@flag_mudflap_ignore_reads = dso_local global i32 0, align 4
@flag_non_call_exceptions = dso_local global i32 0, align 4
@flag_objc_call_cxx_cdtors = dso_local global i32 0, align 4
@flag_objc_direct_dispatch = dso_local global i32 0, align 4
@flag_objc_exceptions = dso_local global i32 0, align 4
@flag_objc_gc = dso_local global i32 0, align 4
@flag_omit_frame_pointer = dso_local global i32 0, align 4
@flag_openmp = dso_local global i32 0, align 4
@flag_regmove = dso_local global i32 0, align 4
@flag_optimize_sibling_calls = dso_local global i32 0, align 4
@flag_optimize_sci = dso_local global i32 0, align 4
@flag_pack_struct = dso_local global i32 0, align 4
@flag_peel_loops = dso_local global i32 0, align 4
@flag_no_peephole = dso_local global i32 0, align 4
@flag_peephole2 = dso_local global i32 0, align 4
@post_ipa_mem_report = dso_local global i32 0, align 4
@pre_ipa_mem_report = dso_local global i32 0, align 4
@flag_predictive_commoning = dso_local global i32 0, align 4
@flag_prefetch_loop_arrays = dso_local global i32 0, align 4
@profile_flag = dso_local global i32 0, align 4
@profile_arc_flag = dso_local global i32 0, align 4
@flag_profile_correction = dso_local global i32 0, align 4
@flag_profile_use = dso_local global i32 0, align 4
@flag_profile_values = dso_local global i32 0, align 4
@flag_reciprocal_math = dso_local global i32 0, align 4
@flag_record_gcc_switches = dso_local global i32 0, align 4
@flag_reduced_reflection = dso_local global i32 0, align 4
@flag_reorder_blocks = dso_local global i32 0, align 4
@flag_reorder_blocks_and_partition = dso_local global i32 0, align 4
@flag_reorder_functions = dso_local global i32 0, align 4
@flag_resched_modulo_sched = dso_local global i32 0, align 4
@flag_rounding_math = dso_local global i32 0, align 4
@flag_schedule_speculative_load = dso_local global i32 0, align 4
@flag_schedule_speculative_load_dangerous = dso_local global i32 0, align 4
@flag_sched_stalled_insns = dso_local global i32 0, align 4
@flag_sched2_use_superblocks = dso_local global i32 0, align 4
@flag_schedule_insns = dso_local global i32 0, align 4
@flag_schedule_insns_after_reload = dso_local global i32 0, align 4
@flag_section_anchors = dso_local global i32 0, align 4
@flag_selective_scheduling = dso_local global i32 0, align 4
@flag_selective_scheduling2 = dso_local global i32 0, align 4
@flag_signaling_nans = dso_local global i32 0, align 4
@flag_single_precision_constant = dso_local global i32 0, align 4
@flag_split_wide_types = dso_local global i32 0, align 4
@flag_stack_protect = dso_local global i32 0, align 4
@flag_strict_aliasing = dso_local global i32 0, align 4
@flag_strict_overflow = dso_local global i32 0, align 4
@flag_syntax_only = dso_local global i32 0, align 4
@flag_test_coverage = dso_local global i32 0, align 4
@flag_thread_jumps = dso_local global i32 0, align 4
@time_report = dso_local global i32 0, align 4
@flag_tracer = dso_local global i32 0, align 4
@flag_trapv = dso_local global i32 0, align 4
@flag_tree_ccp = dso_local global i32 0, align 4
@flag_tree_ch = dso_local global i32 0, align 4
@flag_tree_copy_prop = dso_local global i32 0, align 4
@flag_tree_copyrename = dso_local global i32 0, align 4
@flag_tree_dce = dso_local global i32 0, align 4
@flag_tree_dom = dso_local global i32 0, align 4
@flag_tree_dse = dso_local global i32 0, align 4
@flag_tree_fre = dso_local global i32 0, align 4
@flag_tree_loop_distribution = dso_local global i32 0, align 4
@flag_tree_loop_linear = dso_local global i32 0, align 4
@flag_tree_live_range_split = dso_local global i32 0, align 4
@flag_tree_pre = dso_local global i32 0, align 4
@flag_tree_sink = dso_local global i32 0, align 4
@flag_tree_sra = dso_local global i32 0, align 4
@flag_tree_switch_conversion = dso_local global i32 0, align 4
@flag_tree_vectorize = dso_local global i32 0, align 4
@flag_unroll_all_loops = dso_local global i32 0, align 4
@flag_unroll_loops = dso_local global i32 0, align 4
@flag_unsafe_loop_optimizations = dso_local global i32 0, align 4
@flag_unsafe_math_optimizations = dso_local global i32 0, align 4
@flag_unswitch_loops = dso_local global i32 0, align 4
@flag_unwind_tables = dso_local global i32 0, align 4
@flag_use_boehm_gc = dso_local global i32 0, align 4
@flag_var_tracking_uninit = dso_local global i32 0, align 4
@flag_variable_expansion_in_unroller = dso_local global i32 0, align 4
@flag_vect_cost_model = dso_local global i32 0, align 4
@flag_verbose_asm = dso_local global i32 0, align 4
@flag_visibility_ms_compat = dso_local global i32 0, align 4
@flag_value_profile_transformations = dso_local global i32 0, align 4
@flag_whopr = dso_local global i32 0, align 4
@flag_wpa = dso_local global i32 0, align 4
@flag_wrapv = dso_local global i32 0, align 4
@flag_gtoggle = dso_local global i32 0, align 4
@ix86_abi_string = dso_local global ptr null, align 8
@ix86_align_funcs_string = dso_local global ptr null, align 8
@ix86_align_jumps_string = dso_local global ptr null, align 8
@ix86_align_loops_string = dso_local global ptr null, align 8
@ix86_arch_string = dso_local global ptr null, align 8
@ix86_asm_string = dso_local global ptr null, align 8
@ix86_branch_cost_string = dso_local global ptr null, align 8
@ix86_cmodel_string = dso_local global ptr null, align 8
@ix86_force_drap = dso_local global i32 0, align 4
@ix86_fpmath_string = dso_local global ptr null, align 8
@ix86_incoming_stack_boundary_string = dso_local global ptr null, align 8
@ix86_section_threshold_string = dso_local global ptr null, align 8
@ix87_precision_string = dso_local global ptr null, align 8
@ix86_preferred_stack_boundary_string = dso_local global ptr null, align 8
@ix86_regparm_string = dso_local global ptr null, align 8
@ix86_sse2avx = dso_local global i32 0, align 4
@ix86_stringop_string = dso_local global ptr null, align 8
@ix86_tls_dialect_string = dso_local global ptr null, align 8
@ix86_tune_string = dso_local global ptr null, align 8
@ix86_veclibabi_string = dso_local global ptr null, align 8
@pedantic = dso_local global i32 0, align 4
@version_flag = dso_local global i32 0, align 4
@inhibit_warnings = dso_local global i32 0, align 4
@warn_attributes = dso_local global i32 1, align 4
@warn_clobbered = dso_local global i32 -1, align 4
@warn_conversion_null = dso_local global i32 1, align 4
@warn_deprecated = dso_local global i32 1, align 4
@warn_deprecated_decl = dso_local global i32 1, align 4
@warn_div_by_zero = dso_local global i32 1, align 4
@warn_empty_body = dso_local global i32 -1, align 4
@warn_enum_compare = dso_local global i32 -1, align 4
@warn_ignored_qualifiers = dso_local global i32 -1, align 4
@warn_implicit_function_declaration = dso_local global i32 -1, align 4
@warn_int_to_pointer_cast = dso_local global i32 1, align 4
@warn_invalid_offsetof = dso_local global i32 1, align 4
@warn_jump_misses_init = dso_local global i32 -1, align 4
@warn_logical_op = dso_local global i32 0, align 4
@warn_long_long = dso_local global i32 -1, align 4
@warn_main = dso_local global i32 -1, align 4
@warn_missing_field_initializers = dso_local global i32 -1, align 4
@warn_missing_parameter_type = dso_local global i32 -1, align 4
@warn_mudflap = dso_local global i32 1, align 4
@warn_nontemplate_friend = dso_local global i32 1, align 4
@warn_old_style_declaration = dso_local global i32 -1, align 4
@flag_newer = dso_local global i32 1, align 4
@warn_overflow = dso_local global i32 1, align 4
@warn_overlength_strings = dso_local global i32 -1, align 4
@warn_override_init = dso_local global i32 -1, align 4
@warn_packed_bitfield_compat = dso_local global i32 -1, align 4
@warn_pmf2ptr = dso_local global i32 1, align 4
@warn_pointer_sign = dso_local global i32 -1, align 4
@warn_pointer_to_int_cast = dso_local global i32 1, align 4
@warn_pragmas = dso_local global i32 1, align 4
@warn_protocol = dso_local global i32 1, align 4
@warn_psabi = dso_local global i32 1, align 4
@warn_sign_compare = dso_local global i32 -1, align 4
@warn_sign_conversion = dso_local global i32 -1, align 4
@warn_strict_aliasing = dso_local global i32 -1, align 4
@warn_strict_overflow = dso_local global i32 -1, align 4
@warn_sync_nand = dso_local global i32 1, align 4
@warn_type_limits = dso_local global i32 -1, align 4
@warn_uninitialized = dso_local global i32 -1, align 4
@warn_unused = dso_local global i32 0, align 4
@warn_unused_function = dso_local global i32 -1, align 4
@warn_unused_label = dso_local global i32 -1, align 4
@warn_unused_parameter = dso_local global i32 -1, align 4
@warn_unused_result = dso_local global i32 1, align 4
@warn_unused_value = dso_local global i32 -1, align 4
@warn_unused_variable = dso_local global i32 -1, align 4
@warn_vla = dso_local global i32 -1, align 4
@flag_abi_version = dso_local global i32 2, align 4
@flag_assert = dso_local global i32 1, align 4
@flag_auto_inc_dec = dso_local global i32 1, align 4
@flag_branch_on_count_reg = dso_local global i32 1, align 4
@flag_dce = dso_local global i32 1, align 4
@flag_deduce_init_list = dso_local global i32 1, align 4
@flag_delete_null_pointer_checks = dso_local global i32 1, align 4
@flag_dse = dso_local global i32 1, align 4
@flag_dwarf2_cfi_asm = dso_local global i32 0, align 4
@flag_early_inlining = dso_local global i32 1, align 4
@flag_eliminate_unused_debug_types = dso_local global i32 1, align 4
@flag_emit_class_debug_always = dso_local global i32 0, align 4
@flag_gcse_las = dso_local global i32 0, align 4
@flag_gcse_lm = dso_local global i32 1, align 4
@flag_gcse_sm = dso_local global i32 0, align 4
@flag_gnu89_inline = dso_local global i32 -1, align 4
@flag_indirect_classes = dso_local global i32 1, align 4
@flag_no_inline = dso_local global i32 0, align 4
@flag_inline_functions_called_once = dso_local global i32 1, align 4
@flag_ipa_pta = dso_local global i32 0, align 4
@flag_ipa_pure_const = dso_local global i32 0, align 4
@flag_ipa_reference = dso_local global i32 0, align 4
@flag_ipa_sra = dso_local global i32 0, align 4
@flag_ipa_type_escape = dso_local global i32 0, align 4
@flag_ira_coalesce = dso_local global i32 0, align 4
@flag_ira_share_save_slots = dso_local global i32 1, align 4
@flag_ira_share_spill_slots = dso_local global i32 1, align 4
@flag_ivopts = dso_local global i32 1, align 4
@flag_jump_tables = dso_local global i32 1, align 4
@flag_keep_static_consts = dso_local global i32 1, align 4
@flag_leading_underscore = dso_local global i32 -1, align 4
@flag_lto_compression_level = dso_local global i32 -1, align 4
@flag_lto_report = dso_local global i32 0, align 4
@flag_errno_math = dso_local global i32 1, align 4
@flag_merge_constants = dso_local global i32 1, align 4
@flag_merge_debug_strings = dso_local global i32 1, align 4
@flag_move_loop_invariants = dso_local global i32 1, align 4
@flag_objc_sjlj_exceptions = dso_local global i32 -1, align 4
@flag_rename_registers = dso_local global i32 2, align 4
@flag_rerun_cse_after_loop = dso_local global i32 2, align 4
@flag_sched_critical_path_heuristic = dso_local global i32 1, align 4
@flag_sched_dep_count_heuristic = dso_local global i32 1, align 4
@flag_sched_group_heuristic = dso_local global i32 1, align 4
@flag_schedule_interblock = dso_local global i32 1, align 4
@flag_sched_last_insn_heuristic = dso_local global i32 1, align 4
@flag_sched_pressure = dso_local global i32 0, align 4
@flag_sched_rank_heuristic = dso_local global i32 1, align 4
@flag_schedule_speculative = dso_local global i32 1, align 4
@flag_sched_spec_insn_heuristic = dso_local global i32 1, align 4
@flag_sched_stalled_insns_dep = dso_local global i32 1, align 4
@flag_sel_sched_pipelining = dso_local global i32 0, align 4
@flag_sel_sched_pipelining_outer_loops = dso_local global i32 0, align 4
@flag_sel_sched_reschedule_pipelined = dso_local global i32 0, align 4
@flag_show_column = dso_local global i32 1, align 4
@flag_signed_zeros = dso_local global i32 1, align 4
@flag_split_ivs_in_unroller = dso_local global i32 1, align 4
@flag_store_check = dso_local global i32 1, align 4
@flag_toplevel_reorder = dso_local global i32 2, align 4
@flag_trapping_math = dso_local global i32 1, align 4
@flag_tree_builtin_call_dce = dso_local global i32 0, align 4
@flag_tree_cselim = dso_local global i32 2, align 4
@flag_tree_forwprop = dso_local global i32 1, align 4
@flag_tree_loop_im = dso_local global i32 1, align 4
@flag_tree_loop_ivcanon = dso_local global i32 1, align 4
@flag_tree_loop_optimize = dso_local global i32 1, align 4
@flag_tree_parallelize_loops = dso_local global i32 1, align 4
@flag_tree_phiprop = dso_local global i32 1, align 4
@flag_tree_pta = dso_local global i32 1, align 4
@flag_tree_reassoc = dso_local global i32 1, align 4
@flag_tree_scev_cprop = dso_local global i32 1, align 4
@flag_tree_slp_vectorize = dso_local global i32 2, align 4
@flag_tree_ter = dso_local global i32 1, align 4
@flag_tree_vect_loop_version = dso_local global i32 1, align 4
@flag_tree_vrp = dso_local global i32 0, align 4
@flag_unit_at_a_time = dso_local global i32 1, align 4
@flag_use_atomic_builtins = dso_local global i32 0, align 4
@flag_use_divide_subroutine = dso_local global i32 1, align 4
@flag_web = dso_local global i32 2, align 4
@flag_whole_program = dso_local global i32 0, align 4
@flag_zero_initialized_in_bss = dso_local global i32 1, align 4
@dwarf_version = dso_local global i32 2, align 4
@dwarf_strict = dso_local global i32 -1, align 4
@linux_uclibc = dso_local global i32 0, align 4
@ix86_force_align_arg_pointer = dso_local global i32 -1, align 4
@quiet_flag = dso_local global i32 1, align 4
@lang_names = dso_local local_unnamed_addr constant [9 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr null], align 16
@.str = private unnamed_addr constant [4 x i8] c"Ada\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"C++\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Fortran\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Java\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"LTO\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"ObjC\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"ObjC++\00", align 1
@cl_options_count = dso_local local_unnamed_addr constant i32 870, align 4
@cl_lang_count = dso_local local_unnamed_addr constant i32 8, align 4
@cl_options = dso_local local_unnamed_addr constant [870 x %struct.cl_option] [%struct.cl_option { ptr @.str.8, ptr @.str.9, i16 870, i8 5, i32 -1, i32 2097152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.10, ptr @.str.11, i16 870, i8 6, i32 -1, i32 52428800, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.12, ptr null, i16 870, i8 12, i32 -1, i32 100663494, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.13, ptr @.str.14, i16 870, i8 6, i32 -1, i32 69206016, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.15, ptr @.str.16, i16 870, i8 12, i32 -1, i32 2097152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.17, ptr null, i16 870, i8 8, i32 -1, i32 2097152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.18, ptr @.str.19, i16 870, i8 1, i32 -1, i32 100663502, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.20, ptr @.str.21, i16 870, i8 1, i32 -1, i32 206, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.22, ptr @.str.23, i16 870, i8 2, i32 -1, i32 206, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.24, ptr @.str.25, i16 870, i8 1, i32 -1, i32 100663502, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.26, ptr null, i16 870, i8 1, i32 -1, i32 1073742030, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.27, ptr @.str.28, i16 870, i8 1, i32 -1, i32 100663494, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.29, ptr @.str.30, i16 870, i8 1, i32 -1, i32 639631360, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.31, ptr @.str.32, i16 870, i8 1, i32 -1, i32 206, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.33, ptr @.str.34, i16 870, i8 1, i32 -1, i32 100663519, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.35, ptr @.str.36, i16 870, i8 1, i32 -1, i32 100663304, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.37, ptr @.str.38, i16 870, i8 1, i32 -1, i32 214, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.39, ptr @.str.40, i16 870, i8 2, i32 -1, i32 67109062, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.41, ptr null, i16 870, i8 3, i32 -1, i32 1073741840, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.42, ptr @.str.43, i16 870, i8 2, i32 -1, i32 100663510, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.44, ptr @.str.45, i16 870, i8 2, i32 -1, i32 198, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.46, ptr @.str.47, i16 870, i8 2, i32 -1, i32 214, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.48, ptr @.str.49, i16 870, i8 3, i32 -1, i32 67109062, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.50, ptr null, i16 870, i8 4, i32 -1, i32 1073741840, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.51, ptr @.str.52, i16 870, i8 2, i32 -1, i32 214, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.53, ptr @.str.54, i16 870, i8 2, i32 -1, i32 100663494, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.55, ptr @.str.56, i16 870, i8 2, i32 -1, i32 100663510, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.57, ptr @.str.58, i16 870, i8 1, i32 -1, i32 304611328, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.59, ptr @.str.60, i16 27, i8 2, i32 -1, i32 2621440, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.61, ptr @.str.62, i16 870, i8 1, i32 -1, i32 206, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.63, ptr @.str.64, i16 870, i8 1, i32 -1, i32 100663502, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.65, ptr @.str.66, i16 870, i8 1, i32 -1, i32 136577024, ptr @extra_warnings, i32 0, i32 0 }, %struct.cl_option { ptr @.str.67, ptr @.str.68, i16 870, i8 4, i32 32, i32 262374, ptr @warn_abi, i32 0, i32 0 }, %struct.cl_option { ptr @.str.69, ptr @.str.70, i16 870, i8 8, i32 33, i32 262342, ptr @warn_address, i32 0, i32 0 }, %struct.cl_option { ptr @.str.71, ptr @.str.72, i16 870, i8 17, i32 34, i32 2359296, ptr @warn_aggregate_return, i32 0, i32 0 }, %struct.cl_option { ptr @.str.73, ptr @.str.74, i16 870, i8 9, i32 35, i32 262152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.75, ptr @.str.76, i16 870, i8 14, i32 36, i32 262152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.77, ptr @.str.78, i16 870, i8 4, i32 37, i32 262367, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.79, ptr null, i16 870, i8 16, i32 38, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.80, ptr null, i16 870, i8 12, i32 39, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.81, ptr @.str.82, i16 870, i8 10, i32 40, i32 262152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.83, ptr @.str.84, i16 870, i8 13, i32 41, i32 2359296, ptr @warn_array_bounds, i32 0, i32 0 }, %struct.cl_option { ptr @.str.85, ptr @.str.86, i16 870, i8 18, i32 42, i32 262152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.87, ptr null, i16 870, i8 18, i32 43, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.88, ptr @.str.89, i16 870, i8 17, i32 44, i32 262336, ptr @warn_assign_intercept, i32 0, i32 0 }, %struct.cl_option { ptr @.str.90, ptr @.str.91, i16 870, i8 11, i32 45, i32 2359296, ptr @warn_attributes, i32 0, i32 0 }, %struct.cl_option { ptr @.str.92, ptr @.str.93, i16 870, i8 18, i32 46, i32 262210, ptr @warn_bad_function_cast, i32 0, i32 0 }, %struct.cl_option { ptr @.str.94, ptr null, i16 870, i8 7, i32 47, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.95, ptr @.str.96, i16 870, i8 24, i32 48, i32 262342, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.97, ptr @.str.98, i16 870, i8 11, i32 49, i32 262210, ptr @warn_cxx_compat, i32 0, i32 0 }, %struct.cl_option { ptr @.str.99, ptr @.str.100, i16 870, i8 13, i32 50, i32 262276, ptr @warn_cxx0x_compat, i32 0, i32 0 }, %struct.cl_option { ptr @.str.101, ptr @.str.102, i16 870, i8 11, i32 51, i32 2359296, ptr @warn_cast_align, i32 0, i32 0 }, %struct.cl_option { ptr @.str.103, ptr @.str.104, i16 870, i8 10, i32 52, i32 262342, ptr @warn_cast_qual, i32 0, i32 0 }, %struct.cl_option { ptr @.str.105, ptr null, i16 870, i8 12, i32 53, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.106, ptr @.str.107, i16 870, i8 16, i32 54, i32 262342, ptr @warn_char_subscripts, i32 0, i32 0 }, %struct.cl_option { ptr @.str.108, ptr @.str.109, i16 870, i8 21, i32 55, i32 262152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.110, ptr @.str.111, i16 870, i8 10, i32 56, i32 262342, ptr @warn_clobbered, i32 0, i32 0 }, %struct.cl_option { ptr @.str.112, ptr @.str.113, i16 870, i8 8, i32 57, i32 262342, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.114, ptr @.str.115, i16 870, i8 9, i32 58, i32 262342, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.116, ptr null, i16 870, i8 17, i32 59, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.117, ptr null, i16 870, i8 17, i32 60, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.118, ptr @.str.119, i16 870, i8 11, i32 61, i32 262350, ptr @warn_conversion, i32 0, i32 0 }, %struct.cl_option { ptr @.str.120, ptr @.str.121, i16 870, i8 16, i32 62, i32 262276, ptr @warn_conversion_null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.122, ptr @.str.123, i16 870, i8 18, i32 -1, i32 136577024, ptr @warn_coverage_mismatch, i32 0, i32 0 }, %struct.cl_option { ptr @.str.124, ptr @.str.125, i16 870, i8 18, i32 64, i32 262276, ptr @warn_ctor_dtor_privacy, i32 0, i32 0 }, %struct.cl_option { ptr @.str.126, ptr @.str.127, i16 870, i8 28, i32 65, i32 262210, ptr @warn_declaration_after_statement, i32 0, i32 0 }, %struct.cl_option { ptr @.str.128, ptr null, i16 870, i8 8, i32 66, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.129, ptr @.str.130, i16 870, i8 11, i32 67, i32 262358, ptr @warn_deprecated, i32 0, i32 0 }, %struct.cl_option { ptr @.str.131, ptr @.str.132, i16 870, i8 24, i32 68, i32 2359296, ptr @warn_deprecated_decl, i32 0, i32 0 }, %struct.cl_option { ptr @.str.133, ptr @.str.134, i16 870, i8 22, i32 69, i32 2359296, ptr @warn_disabled_optimization, i32 0, i32 0 }, %struct.cl_option { ptr @.str.135, ptr null, i16 870, i8 12, i32 70, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.136, ptr @.str.137, i16 870, i8 12, i32 71, i32 262342, ptr @warn_div_by_zero, i32 0, i32 0 }, %struct.cl_option { ptr @.str.138, ptr @.str.139, i16 870, i8 7, i32 72, i32 262276, ptr @warn_ecpp, i32 0, i32 0 }, %struct.cl_option { ptr @.str.140, ptr null, i16 870, i8 12, i32 73, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.141, ptr @.str.142, i16 870, i8 11, i32 74, i32 262342, ptr @warn_empty_body, i32 0, i32 0 }, %struct.cl_option { ptr @.str.143, ptr @.str.144, i16 870, i8 13, i32 75, i32 262342, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.145, ptr @.str.146, i16 870, i8 13, i32 76, i32 262342, ptr @warn_enum_compare, i32 0, i32 0 }, %struct.cl_option { ptr @.str.147, ptr null, i16 870, i8 16, i32 77, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.148, ptr null, i16 870, i8 12, i32 78, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.149, ptr @.str.150, i16 870, i8 6, i32 79, i32 2097350, ptr @warnings_are_errors, i32 0, i32 0 }, %struct.cl_option { ptr @.str.151, ptr @.str.152, i16 870, i8 36, i32 -1, i32 134479938, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.153, ptr @.str.154, i16 870, i8 7, i32 81, i32 35651584, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.155, ptr @.str.156, i16 870, i8 6, i32 82, i32 2359296, ptr @extra_warnings, i32 0, i32 0 }, %struct.cl_option { ptr @.str.157, ptr @.str.158, i16 870, i8 21, i32 83, i32 16, ptr @flag_extraneous_semicolon, i32 0, i32 0 }, %struct.cl_option { ptr @.str.159, ptr null, i16 870, i8 12, i32 84, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.160, ptr @.str.161, i16 870, i8 13, i32 85, i32 2097152, ptr @flag_fatal_errors, i32 0, i32 0 }, %struct.cl_option { ptr @.str.162, ptr null, i16 870, i8 13, i32 86, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.163, ptr null, i16 870, i8 12, i32 87, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.164, ptr null, i16 870, i8 8, i32 88, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.165, ptr @.str.166, i16 870, i8 12, i32 89, i32 262342, ptr @warn_float_equal, i32 0, i32 0 }, %struct.cl_option { ptr @.str.167, ptr null, i16 870, i8 10, i32 90, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.168, ptr @.str.169, i16 870, i8 7, i32 91, i32 262342, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.170, ptr @.str.171, i16 870, i8 20, i32 92, i32 262342, ptr @warn_format_contains_nul, i32 0, i32 0 }, %struct.cl_option { ptr @.str.172, ptr @.str.173, i16 870, i8 18, i32 93, i32 262342, ptr @warn_format_extra_args, i32 0, i32 0 }, %struct.cl_option { ptr @.str.174, ptr @.str.175, i16 870, i8 18, i32 94, i32 262342, ptr @warn_format_nonliteral, i32 0, i32 0 }, %struct.cl_option { ptr @.str.176, ptr @.str.177, i16 870, i8 16, i32 95, i32 262342, ptr @warn_format_security, i32 0, i32 0 }, %struct.cl_option { ptr @.str.178, ptr @.str.179, i16 870, i8 11, i32 96, i32 262342, ptr @warn_format_y2k, i32 0, i32 0 }, %struct.cl_option { ptr @.str.180, ptr @.str.181, i16 870, i8 19, i32 97, i32 262210, ptr @warn_format_zero_length, i32 0, i32 0 }, %struct.cl_option { ptr @.str.182, ptr null, i16 870, i8 8, i32 98, i32 33816774, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.183, ptr @.str.184, i16 870, i8 19, i32 -1, i32 706740224, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.185, ptr null, i16 870, i8 7, i32 100, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.186, ptr @.str.187, i16 870, i8 19, i32 101, i32 262150, ptr @warn_ignored_qualifiers, i32 0, i32 0 }, %struct.cl_option { ptr @.str.188, ptr null, i16 870, i8 9, i32 102, i32 262342, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.189, ptr @.str.190, i16 870, i8 30, i32 103, i32 262210, ptr @warn_implicit_function_declaration, i32 0, i32 0 }, %struct.cl_option { ptr @.str.191, ptr @.str.192, i16 870, i8 13, i32 104, i32 262210, ptr @warn_implicit_int, i32 0, i32 0 }, %struct.cl_option { ptr @.str.193, ptr @.str.194, i16 870, i8 19, i32 105, i32 262152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.195, ptr @.str.196, i16 870, i8 19, i32 106, i32 262152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.197, ptr null, i16 870, i8 7, i32 107, i32 1073742022, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.198, ptr null, i16 870, i8 16, i32 108, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.199, ptr @.str.200, i16 870, i8 10, i32 109, i32 262342, ptr @warn_init_self, i32 0, i32 0 }, %struct.cl_option { ptr @.str.201, ptr @.str.202, i16 870, i8 7, i32 110, i32 2359296, ptr @warn_inline, i32 0, i32 0 }, %struct.cl_option { ptr @.str.203, ptr @.str.204, i16 870, i8 20, i32 111, i32 262210, ptr @warn_int_to_pointer_cast, i32 0, i32 0 }, %struct.cl_option { ptr @.str.205, ptr null, i16 870, i8 16, i32 112, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.206, ptr null, i16 870, i8 19, i32 113, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.207, ptr @.str.208, i16 870, i8 17, i32 114, i32 262152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.209, ptr @.str.210, i16 870, i8 15, i32 115, i32 262152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.211, ptr @.str.212, i16 870, i8 17, i32 116, i32 262276, ptr @warn_invalid_offsetof, i32 0, i32 0 }, %struct.cl_option { ptr @.str.213, ptr @.str.214, i16 870, i8 12, i32 117, i32 262342, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.215, ptr null, i16 870, i8 8, i32 118, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.216, ptr @.str.217, i16 870, i8 17, i32 119, i32 262210, ptr @warn_jump_misses_init, i32 0, i32 0 }, %struct.cl_option { ptr @.str.218, ptr null, i16 870, i8 13, i32 -1, i32 1780744192, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.219, ptr @.str.220, i16 870, i8 13, i32 -1, i32 707002368, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.221, ptr @.str.222, i16 870, i8 16, i32 122, i32 262152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.223, ptr null, i16 870, i8 13, i32 123, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.224, ptr @.str.225, i16 870, i8 11, i32 124, i32 262342, ptr @warn_logical_op, i32 0, i32 0 }, %struct.cl_option { ptr @.str.226, ptr @.str.227, i16 870, i8 10, i32 125, i32 262343, ptr @warn_long_long, i32 0, i32 0 }, %struct.cl_option { ptr @.str.228, ptr @.str.229, i16 870, i8 5, i32 126, i32 262342, ptr @warn_main, i32 0, i32 0 }, %struct.cl_option { ptr @.str.230, ptr null, i16 870, i8 19, i32 127, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.231, ptr @.str.232, i16 870, i8 15, i32 128, i32 262342, ptr @warn_missing_braces, i32 0, i32 0 }, %struct.cl_option { ptr @.str.233, ptr @.str.234, i16 870, i8 21, i32 129, i32 262342, ptr @warn_missing_declarations, i32 0, i32 0 }, %struct.cl_option { ptr @.str.235, ptr @.str.236, i16 870, i8 27, i32 130, i32 262342, ptr @warn_missing_field_initializers, i32 0, i32 0 }, %struct.cl_option { ptr @.str.237, ptr @.str.238, i16 870, i8 25, i32 131, i32 262343, ptr @warn_missing_format_attribute, i32 0, i32 0 }, %struct.cl_option { ptr @.str.239, ptr @.str.240, i16 870, i8 21, i32 132, i32 262342, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.241, ptr @.str.242, i16 870, i8 17, i32 133, i32 2359296, ptr @warn_missing_noreturn, i32 0, i32 0 }, %struct.cl_option { ptr @.str.243, ptr @.str.244, i16 870, i8 23, i32 134, i32 262210, ptr @warn_missing_parameter_type, i32 0, i32 0 }, %struct.cl_option { ptr @.str.245, ptr @.str.246, i16 870, i8 19, i32 135, i32 262211, ptr @warn_missing_prototypes, i32 0, i32 0 }, %struct.cl_option { ptr @.str.247, ptr @.str.248, i16 870, i8 8, i32 136, i32 2359296, ptr @warn_mudflap, i32 0, i32 0 }, %struct.cl_option { ptr @.str.249, ptr @.str.250, i16 870, i8 10, i32 137, i32 262342, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.251, ptr @.str.252, i16 870, i8 15, i32 138, i32 262210, ptr @warn_nested_externs, i32 0, i32 0 }, %struct.cl_option { ptr @.str.253, ptr null, i16 870, i8 4, i32 139, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.254, ptr null, i16 870, i8 17, i32 140, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.255, ptr @.str.256, i16 870, i8 20, i32 141, i32 262276, ptr @warn_nontemplate_friend, i32 0, i32 0 }, %struct.cl_option { ptr @.str.257, ptr @.str.258, i16 870, i8 17, i32 142, i32 262276, ptr @warn_nonvdtor, i32 0, i32 0 }, %struct.cl_option { ptr @.str.259, ptr @.str.260, i16 870, i8 8, i32 143, i32 262210, ptr @warn_nonnull, i32 0, i32 0 }, %struct.cl_option { ptr @.str.261, ptr @.str.262, i16 870, i8 12, i32 144, i32 33816774, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.263, ptr null, i16 870, i8 5, i32 145, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.264, ptr @.str.265, i16 870, i8 15, i32 146, i32 262276, ptr @warn_old_style_cast, i32 0, i32 0 }, %struct.cl_option { ptr @.str.266, ptr @.str.267, i16 870, i8 22, i32 147, i32 262210, ptr @warn_old_style_declaration, i32 0, i32 0 }, %struct.cl_option { ptr @.str.268, ptr @.str.269, i16 870, i8 21, i32 148, i32 262211, ptr @warn_old_style_definition, i32 0, i32 0 }, %struct.cl_option { ptr @.str.270, ptr @.str.271, i16 870, i8 12, i32 149, i32 16, ptr @flag_newer, i32 0, i32 0 }, %struct.cl_option { ptr @.str.272, ptr null, i16 870, i8 9, i32 150, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.273, ptr @.str.274, i16 870, i8 9, i32 151, i32 2359296, ptr @warn_overflow, i32 0, i32 0 }, %struct.cl_option { ptr @.str.275, ptr @.str.276, i16 870, i8 19, i32 152, i32 262343, ptr @warn_overlength_strings, i32 0, i32 0 }, %struct.cl_option { ptr @.str.277, ptr @.str.278, i16 870, i8 19, i32 153, i32 262276, ptr @warn_overloaded_virtual, i32 0, i32 0 }, %struct.cl_option { ptr @.str.279, ptr @.str.280, i16 870, i8 14, i32 154, i32 262210, ptr @warn_override_init, i32 0, i32 0 }, %struct.cl_option { ptr @.str.281, ptr @.str.282, i16 870, i8 7, i32 155, i32 2359296, ptr @warn_packed, i32 0, i32 0 }, %struct.cl_option { ptr @.str.283, ptr @.str.284, i16 870, i8 23, i32 156, i32 262342, ptr @warn_packed_bitfield_compat, i32 0, i32 0 }, %struct.cl_option { ptr @.str.285, ptr @.str.286, i16 870, i8 7, i32 157, i32 2359296, ptr @warn_padded, i32 0, i32 0 }, %struct.cl_option { ptr @.str.287, ptr null, i16 870, i8 13, i32 158, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.288, ptr @.str.289, i16 870, i8 12, i32 159, i32 262342, ptr @warn_parentheses, i32 0, i32 0 }, %struct.cl_option { ptr @.str.290, ptr null, i16 870, i8 19, i32 160, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.291, ptr @.str.292, i16 870, i8 16, i32 161, i32 262276, ptr @warn_pmf2ptr, i32 0, i32 0 }, %struct.cl_option { ptr @.str.293, ptr @.str.294, i16 870, i8 14, i32 162, i32 262342, ptr @warn_pointer_arith, i32 0, i32 0 }, %struct.cl_option { ptr @.str.295, ptr @.str.296, i16 870, i8 13, i32 163, i32 262210, ptr @warn_pointer_sign, i32 0, i32 0 }, %struct.cl_option { ptr @.str.297, ptr @.str.298, i16 870, i8 20, i32 164, i32 262210, ptr @warn_pointer_to_int_cast, i32 0, i32 0 }, %struct.cl_option { ptr @.str.299, ptr @.str.300, i16 870, i8 8, i32 165, i32 262342, ptr @warn_pragmas, i32 0, i32 0 }, %struct.cl_option { ptr @.str.301, ptr @.str.302, i16 870, i8 9, i32 166, i32 262336, ptr @warn_protocol, i32 0, i32 0 }, %struct.cl_option { ptr @.str.303, ptr null, i16 870, i8 6, i32 167, i32 1073742054, ptr @warn_psabi, i32 0, i32 0 }, %struct.cl_option { ptr @.str.304, ptr null, i16 870, i8 4, i32 168, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.305, ptr @.str.306, i16 870, i8 16, i32 169, i32 262342, ptr @warn_redundant_decls, i32 0, i32 0 }, %struct.cl_option { ptr @.str.307, ptr @.str.308, i16 870, i8 20, i32 170, i32 16, ptr @flag_redundant, i32 0, i32 0 }, %struct.cl_option { ptr @.str.309, ptr @.str.310, i16 870, i8 8, i32 171, i32 262276, ptr @warn_reorder, i32 0, i32 0 }, %struct.cl_option { ptr @.str.311, ptr @.str.312, i16 870, i8 12, i32 172, i32 262350, ptr @warn_return_type, i32 0, i32 0 }, %struct.cl_option { ptr @.str.313, ptr @.str.314, i16 870, i8 9, i32 173, i32 262336, ptr @warn_selector, i32 0, i32 0 }, %struct.cl_option { ptr @.str.315, ptr @.str.316, i16 870, i8 15, i32 174, i32 262342, ptr @warn_sequence_point, i32 0, i32 0 }, %struct.cl_option { ptr @.str.317, ptr null, i16 870, i8 7, i32 175, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.318, ptr @.str.319, i16 870, i8 7, i32 176, i32 2359296, ptr @warn_shadow, i32 0, i32 0 }, %struct.cl_option { ptr @.str.320, ptr @.str.321, i16 870, i8 13, i32 177, i32 262342, ptr @warn_sign_compare, i32 0, i32 0 }, %struct.cl_option { ptr @.str.322, ptr @.str.323, i16 870, i8 16, i32 178, i32 198, ptr @warn_sign_conversion, i32 0, i32 0 }, %struct.cl_option { ptr @.str.324, ptr @.str.325, i16 870, i8 11, i32 179, i32 262276, ptr @warn_sign_promo, i32 0, i32 0 }, %struct.cl_option { ptr @.str.326, ptr null, i16 870, i8 21, i32 180, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.327, ptr @.str.328, i16 870, i8 16, i32 181, i32 2359296, ptr @warn_stack_protect, i32 0, i32 0 }, %struct.cl_option { ptr @.str.329, ptr null, i16 870, i8 14, i32 182, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.330, ptr null, i16 870, i8 16, i32 183, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.331, ptr @.str.332, i16 870, i8 16, i32 184, i32 2359296, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.333, ptr @.str.332, i16 870, i8 17, i32 185, i32 572784640, ptr @warn_strict_aliasing, i32 0, i32 0 }, %struct.cl_option { ptr @.str.334, ptr @.str.335, i16 870, i8 21, i32 186, i32 262276, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.336, ptr @.str.337, i16 870, i8 16, i32 187, i32 2359296, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.338, ptr @.str.337, i16 870, i8 17, i32 188, i32 572784640, ptr @warn_strict_overflow, i32 0, i32 0 }, %struct.cl_option { ptr @.str.339, ptr @.str.340, i16 870, i8 18, i32 189, i32 262211, ptr @warn_strict_prototypes, i32 0, i32 0 }, %struct.cl_option { ptr @.str.341, ptr @.str.342, i16 870, i8 22, i32 190, i32 262336, ptr @warn_strict_selector_match, i32 0, i32 0 }, %struct.cl_option { ptr @.str.343, ptr null, i16 870, i8 9, i32 191, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.344, ptr @.str.345, i16 870, i8 11, i32 192, i32 262152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.346, ptr @.str.347, i16 870, i8 7, i32 193, i32 2359296, ptr @warn_switch, i32 0, i32 0 }, %struct.cl_option { ptr @.str.348, ptr @.str.349, i16 870, i8 15, i32 194, i32 2359296, ptr @warn_switch_default, i32 0, i32 0 }, %struct.cl_option { ptr @.str.350, ptr @.str.351, i16 870, i8 12, i32 195, i32 2359296, ptr @warn_switch_enum, i32 0, i32 0 }, %struct.cl_option { ptr @.str.352, ptr @.str.353, i16 870, i8 10, i32 196, i32 262150, ptr @warn_sync_nand, i32 0, i32 0 }, %struct.cl_option { ptr @.str.354, ptr @.str.355, i16 870, i8 6, i32 197, i32 262276, ptr @warn_synth, i32 0, i32 0 }, %struct.cl_option { ptr @.str.356, ptr null, i16 870, i8 17, i32 198, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.357, ptr @.str.358, i16 870, i8 15, i32 199, i32 2359494, ptr @warn_system_headers, i32 0, i32 0 }, %struct.cl_option { ptr @.str.359, ptr @.str.360, i16 870, i8 5, i32 200, i32 262152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.361, ptr null, i16 870, i8 6, i32 201, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.362, ptr @.str.363, i16 870, i8 12, i32 202, i32 262210, ptr @warn_traditional, i32 0, i32 0 }, %struct.cl_option { ptr @.str.364, ptr @.str.365, i16 870, i8 23, i32 203, i32 262210, ptr @warn_traditional_conversion, i32 0, i32 0 }, %struct.cl_option { ptr @.str.366, ptr @.str.367, i16 870, i8 10, i32 204, i32 262342, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.368, ptr null, i16 870, i8 12, i32 205, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.369, ptr @.str.370, i16 870, i8 12, i32 206, i32 2359296, ptr @warn_type_limits, i32 0, i32 0 }, %struct.cl_option { ptr @.str.371, ptr null, i16 870, i8 8, i32 207, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.372, ptr @.str.373, i16 870, i8 20, i32 208, i32 262336, ptr @warn_undeclared_selector, i32 0, i32 0 }, %struct.cl_option { ptr @.str.374, ptr @.str.375, i16 870, i8 6, i32 209, i32 262342, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.376, ptr @.str.377, i16 870, i8 10, i32 210, i32 262152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.378, ptr @.str.379, i16 870, i8 14, i32 211, i32 2359296, ptr @warn_uninitialized, i32 0, i32 0 }, %struct.cl_option { ptr @.str.380, ptr @.str.381, i16 870, i8 16, i32 212, i32 262342, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.382, ptr null, i16 870, i8 17, i32 213, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.383, ptr null, i16 870, i8 18, i32 214, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.384, ptr @.str.385, i16 870, i8 17, i32 215, i32 2097152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.386, ptr @.str.387, i16 870, i8 26, i32 216, i32 2359296, ptr @warn_unsafe_loop_optimizations, i32 0, i32 0 }, %struct.cl_option { ptr @.str.388, ptr @.str.389, i16 870, i8 27, i32 217, i32 262210, ptr @warn_unsuffixed_float_constants, i32 0, i32 0 }, %struct.cl_option { ptr @.str.390, ptr @.str.391, i16 870, i8 7, i32 218, i32 2359312, ptr @warn_unused, i32 0, i32 0 }, %struct.cl_option { ptr @.str.392, ptr null, i16 870, i8 16, i32 219, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.393, ptr @.str.394, i16 870, i8 16, i32 220, i32 2359296, ptr @warn_unused_function, i32 0, i32 0 }, %struct.cl_option { ptr @.str.395, ptr null, i16 870, i8 14, i32 221, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.396, ptr @.str.397, i16 870, i8 13, i32 222, i32 2359312, ptr @warn_unused_label, i32 0, i32 0 }, %struct.cl_option { ptr @.str.398, ptr null, i16 870, i8 13, i32 223, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.399, ptr @.str.400, i16 870, i8 14, i32 224, i32 262342, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.401, ptr @.str.402, i16 870, i8 17, i32 225, i32 2359296, ptr @warn_unused_parameter, i32 0, i32 0 }, %struct.cl_option { ptr @.str.403, ptr null, i16 870, i8 15, i32 226, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.404, ptr @.str.405, i16 870, i8 14, i32 227, i32 262342, ptr @warn_unused_result, i32 0, i32 0 }, %struct.cl_option { ptr @.str.406, ptr null, i16 870, i8 14, i32 228, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.407, ptr @.str.408, i16 870, i8 13, i32 229, i32 2359296, ptr @warn_unused_value, i32 0, i32 0 }, %struct.cl_option { ptr @.str.409, ptr @.str.410, i16 870, i8 16, i32 230, i32 2359296, ptr @warn_unused_variable, i32 0, i32 0 }, %struct.cl_option { ptr @.str.411, ptr null, i16 870, i8 19, i32 231, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.412, ptr null, i16 870, i8 13, i32 232, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.413, ptr @.str.414, i16 870, i8 16, i32 233, i32 262343, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.415, ptr @.str.416, i16 870, i8 4, i32 234, i32 262342, ptr @warn_vla, i32 0, i32 0 }, %struct.cl_option { ptr @.str.417, ptr @.str.418, i16 870, i8 22, i32 235, i32 262342, ptr @warn_volatile_register_var, i32 0, i32 0 }, %struct.cl_option { ptr @.str.419, ptr null, i16 870, i8 14, i32 236, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.420, ptr @.str.421, i16 870, i8 14, i32 237, i32 262343, ptr @warn_write_strings, i32 0, i32 0 }, %struct.cl_option { ptr @.str.422, ptr @.str.423, i16 870, i8 4, i32 -1, i32 198, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.424, ptr @.str.425, i16 870, i8 8, i32 -1, i32 69206016, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.426, ptr null, i16 870, i8 9, i32 -1, i32 35651584, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.427, ptr null, i16 870, i8 7, i32 -1, i32 69206016, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.428, ptr null, i16 870, i8 13, i32 -1, i32 69206016, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.429, ptr @.str.430, i16 870, i8 3, i32 828, i32 100663304, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.431, ptr @.str.432, i16 870, i8 1, i32 -1, i32 35651790, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.433, ptr @.str.434, i16 244, i8 8, i32 -1, i32 69206016, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.435, ptr @.str.436, i16 244, i8 7, i32 -1, i32 69206016, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.437, ptr @.str.438, i16 870, i8 11, i32 -1, i32 436207632, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.439, ptr @.str.440, i16 870, i8 4, i32 248, i32 18874368, ptr @flag_pic, i32 1, i32 2 }, %struct.cl_option { ptr @.str.441, ptr @.str.442, i16 870, i8 4, i32 249, i32 18874368, ptr @flag_pie, i32 1, i32 2 }, %struct.cl_option { ptr @.str.443, ptr null, i16 870, i8 5, i32 -1, i32 167772161, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.444, ptr null, i16 870, i8 13, i32 251, i32 572522496, ptr @flag_abi_version, i32 0, i32 0 }, %struct.cl_option { ptr @.str.445, ptr @.str.446, i16 870, i8 15, i32 252, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.447, ptr @.str.448, i16 870, i8 14, i32 253, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.449, ptr @.str.450, i16 870, i8 16, i32 254, i32 556269568, ptr @align_functions, i32 1, i32 0 }, %struct.cl_option { ptr @.str.451, ptr null, i16 870, i8 17, i32 -1, i32 706740224, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.452, ptr @.str.453, i16 870, i8 12, i32 256, i32 556269568, ptr @align_jumps, i32 1, i32 0 }, %struct.cl_option { ptr @.str.454, ptr null, i16 870, i8 13, i32 -1, i32 706740224, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.455, ptr @.str.456, i16 870, i8 13, i32 258, i32 556269568, ptr @align_labels, i32 1, i32 0 }, %struct.cl_option { ptr @.str.457, ptr null, i16 870, i8 14, i32 -1, i32 706740224, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.458, ptr @.str.459, i16 870, i8 12, i32 260, i32 556269568, ptr @align_loops, i32 0, i32 0 }, %struct.cl_option { ptr @.str.460, ptr null, i16 870, i8 13, i32 -1, i32 706740224, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.461, ptr @.str.462, i16 870, i8 15, i32 -1, i32 134217736, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.463, ptr null, i16 870, i8 12, i32 263, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.464, ptr null, i16 870, i8 25, i32 264, i32 1073741832, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.465, ptr @.str.466, i16 870, i8 23, i32 265, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.467, ptr @.str.468, i16 870, i8 15, i32 266, i32 19398656, ptr @flag_argument_noalias, i32 1, i32 0 }, %struct.cl_option { ptr @.str.469, ptr @.str.470, i16 870, i8 17, i32 267, i32 19398656, ptr @flag_argument_noalias, i32 1, i32 1 }, %struct.cl_option { ptr @.str.471, ptr @.str.472, i16 870, i8 26, i32 268, i32 19398656, ptr @flag_argument_noalias, i32 1, i32 3 }, %struct.cl_option { ptr @.str.473, ptr @.str.474, i16 870, i8 24, i32 269, i32 19398656, ptr @flag_argument_noalias, i32 1, i32 2 }, %struct.cl_option { ptr @.str.475, ptr @.str.476, i16 870, i8 4, i32 270, i32 198, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.477, ptr @.str.478, i16 870, i8 7, i32 271, i32 16, ptr @flag_assert, i32 0, i32 0 }, %struct.cl_option { ptr @.str.479, ptr @.str.480, i16 870, i8 17, i32 272, i32 18874368, ptr @flag_associative_math, i32 0, i32 0 }, %struct.cl_option { ptr @.str.481, ptr null, i16 870, i8 16, i32 273, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.482, ptr null, i16 870, i8 17, i32 274, i32 301989904, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.483, ptr @.str.484, i16 870, i8 27, i32 275, i32 19398656, ptr @flag_asynchronous_unwind_tables, i32 0, i32 0 }, %struct.cl_option { ptr @.str.485, ptr @.str.486, i16 870, i8 13, i32 276, i32 18874368, ptr @flag_auto_inc_dec, i32 0, i32 0 }, %struct.cl_option { ptr @.str.487, ptr @.str.488, i16 870, i8 10, i32 277, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.489, ptr null, i16 870, i8 14, i32 -1, i32 1275068432, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.490, ptr @.str.491, i16 870, i8 10, i32 279, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.492, ptr @.str.493, i16 870, i8 10, i32 280, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.494, ptr @.str.495, i16 870, i8 19, i32 -1, i32 704643080, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.496, ptr @.str.497, i16 870, i8 15, i32 -1, i32 436207632, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.498, ptr @.str.499, i16 870, i8 18, i32 283, i32 16, ptr @flag_bootstrap_classes, i32 0, i32 0 }, %struct.cl_option { ptr @.str.500, ptr @.str.501, i16 870, i8 13, i32 284, i32 18874368, ptr @flag_bounds_check, i32 0, i32 0 }, %struct.cl_option { ptr @.str.502, ptr @.str.503, i16 870, i8 17, i32 285, i32 19398656, ptr @flag_branch_on_count_reg, i32 0, i32 0 }, %struct.cl_option { ptr @.str.504, ptr @.str.505, i16 870, i8 21, i32 286, i32 19398656, ptr @flag_branch_probabilities, i32 0, i32 0 }, %struct.cl_option { ptr @.str.506, ptr @.str.507, i16 870, i8 28, i32 287, i32 19398656, ptr @flag_branch_target_load_optimize, i32 0, i32 0 }, %struct.cl_option { ptr @.str.508, ptr @.str.509, i16 870, i8 29, i32 288, i32 19398656, ptr @flag_branch_target_load_optimize2, i32 0, i32 0 }, %struct.cl_option { ptr @.str.510, ptr @.str.511, i16 870, i8 17, i32 289, i32 19398656, ptr @flag_btr_bb_exclusive, i32 0, i32 0 }, %struct.cl_option { ptr @.str.512, ptr @.str.513, i16 870, i8 8, i32 290, i32 198, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.514, ptr null, i16 870, i8 9, i32 291, i32 33554630, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.515, ptr @.str.516, i16 870, i8 12, i32 -1, i32 169869312, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.517, ptr @.str.518, i16 870, i8 11, i32 -1, i32 169869312, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.519, ptr @.str.520, i16 870, i8 13, i32 294, i32 19398656, ptr @flag_caller_saves, i32 0, i32 0 }, %struct.cl_option { ptr @.str.521, ptr @.str.522, i16 870, i8 24, i32 295, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.523, ptr @.str.524, i16 870, i8 16, i32 296, i32 18874368, ptr @flag_check_data_deps, i32 0, i32 0 }, %struct.cl_option { ptr @.str.525, ptr @.str.526, i16 870, i8 10, i32 297, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.527, ptr @.str.528, i16 870, i8 17, i32 298, i32 16, ptr @flag_check_references, i32 0, i32 0 }, %struct.cl_option { ptr @.str.529, ptr @.str.530, i16 870, i8 7, i32 -1, i32 436207624, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.531, ptr @.str.532, i16 870, i8 11, i32 -1, i32 436207632, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.533, ptr @.str.534, i16 870, i8 7, i32 301, i32 19398656, ptr @flag_no_common, i32 1, i32 0 }, %struct.cl_option { ptr @.str.535, ptr @.str.536, i16 870, i8 21, i32 -1, i32 136314880, ptr @flag_compare_debug, i32 0, i32 0 }, %struct.cl_option { ptr @.str.537, ptr @.str.538, i16 870, i8 15, i32 -1, i32 438304768, ptr @flag_compare_debug_opt, i32 4, i32 0 }, %struct.cl_option { ptr @.str.539, ptr null, i16 870, i8 18, i32 -1, i32 167772176, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.540, ptr @.str.541, i16 870, i8 14, i32 305, i32 198, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.542, ptr @.str.543, i16 870, i8 15, i32 306, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.544, ptr @.str.545, i16 870, i8 15, i32 307, i32 2621440, ptr @flag_conserve_stack, i32 0, i32 0 }, %struct.cl_option { ptr @.str.546, ptr @.str.547, i16 870, i8 23, i32 308, i32 33554624, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.548, ptr @.str.549, i16 870, i8 19, i32 -1, i32 134217736, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.550, ptr @.str.551, i16 870, i8 22, i32 -1, i32 134217736, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.552, ptr @.str.553, i16 870, i8 15, i32 -1, i32 134217736, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.554, ptr @.str.555, i16 870, i8 13, i32 -1, i32 134217736, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.556, ptr @.str.557, i16 870, i8 16, i32 313, i32 19398656, ptr @flag_cprop_registers, i32 0, i32 0 }, %struct.cl_option { ptr @.str.558, ptr @.str.559, i16 870, i8 13, i32 314, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.560, ptr @.str.561, i16 870, i8 13, i32 315, i32 19398656, ptr @flag_crossjumping, i32 0, i32 0 }, %struct.cl_option { ptr @.str.562, ptr @.str.563, i16 870, i8 17, i32 316, i32 19398656, ptr @flag_cse_follow_jumps, i32 0, i32 0 }, %struct.cl_option { ptr @.str.564, ptr @.str.565, i16 870, i8 16, i32 317, i32 2097152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.566, ptr @.str.567, i16 870, i8 17, i32 318, i32 19398656, ptr @flag_cx_fortran_rules, i32 0, i32 0 }, %struct.cl_option { ptr @.str.568, ptr @.str.569, i16 870, i8 17, i32 319, i32 19398656, ptr @flag_cx_limited_range, i32 0, i32 0 }, %struct.cl_option { ptr @.str.570, ptr @.str.571, i16 870, i8 16, i32 -1, i32 134217736, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.572, ptr @.str.573, i16 870, i8 20, i32 -1, i32 134217736, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.574, ptr @.str.575, i16 870, i8 14, i32 322, i32 19398656, ptr @flag_data_sections, i32 0, i32 0 }, %struct.cl_option { ptr @.str.576, ptr @.str.577, i16 870, i8 13, i32 323, i32 18874368, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.578, ptr @.str.579, i16 870, i8 9, i32 -1, i32 169869312, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.580, ptr @.str.581, i16 870, i8 4, i32 325, i32 2621440, ptr @flag_dce, i32 0, i32 0 }, %struct.cl_option { ptr @.str.582, ptr @.str.583, i16 870, i8 18, i32 -1, i32 169869312, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.584, ptr @.str.585, i16 870, i8 17, i32 327, i32 132, ptr @flag_deduce_init_list, i32 0, i32 0 }, %struct.cl_option { ptr @.str.586, ptr @.str.587, i16 870, i8 17, i32 328, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.588, ptr @.str.589, i16 870, i8 15, i32 329, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.590, ptr @.str.591, i16 870, i8 18, i32 330, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.592, ptr @.str.593, i16 870, i8 15, i32 331, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.594, ptr @.str.595, i16 870, i8 10, i32 332, i32 19398656, ptr @flag_defer_pop, i32 0, i32 0 }, %struct.cl_option { ptr @.str.596, ptr @.str.597, i16 870, i8 15, i32 333, i32 19398656, ptr @flag_delayed_branch, i32 0, i32 0 }, %struct.cl_option { ptr @.str.598, ptr @.str.599, i16 870, i8 27, i32 334, i32 19398656, ptr @flag_delete_null_pointer_checks, i32 0, i32 0 }, %struct.cl_option { ptr @.str.600, ptr @.str.601, i16 870, i8 27, i32 -1, i32 169869312, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.602, ptr @.str.603, i16 870, i8 24, i32 336, i32 2097152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.604, ptr @.str.605, i16 870, i8 16, i32 337, i32 198, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.606, ptr null, i16 870, i8 19, i32 338, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.607, ptr null, i16 870, i8 20, i32 339, i32 301989904, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.608, ptr @.str.609, i16 870, i8 10, i32 340, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.610, ptr @.str.611, i16 870, i8 23, i32 341, i32 198, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.612, ptr @.str.613, i16 870, i8 4, i32 342, i32 2621440, ptr @flag_dse, i32 0, i32 0 }, %struct.cl_option { ptr @.str.614, ptr @.str.615, i16 870, i8 6, i32 -1, i32 169869312, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.616, ptr @.str.617, i16 343, i8 10, i32 344, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.618, ptr @.str.619, i16 343, i8 18, i32 -1, i32 169869312, ptr @flag_dump_final_insns, i32 4, i32 0 }, %struct.cl_option { ptr @.str.620, ptr @.str.621, i16 343, i8 12, i32 346, i32 18874368, ptr @flag_dump_noaddr, i32 0, i32 0 }, %struct.cl_option { ptr @.str.622, ptr @.str.623, i16 343, i8 16, i32 347, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.624, ptr @.str.625, i16 343, i8 16, i32 348, i32 18874368, ptr @flag_dump_unnumbered, i32 0, i32 0 }, %struct.cl_option { ptr @.str.626, ptr @.str.627, i16 343, i8 22, i32 349, i32 18874368, ptr @flag_dump_unnumbered_links, i32 0, i32 0 }, %struct.cl_option { ptr @.str.628, ptr @.str.629, i16 870, i8 15, i32 350, i32 18874368, ptr @flag_dwarf2_cfi_asm, i32 0, i32 0 }, %struct.cl_option { ptr @.str.630, ptr @.str.631, i16 870, i8 15, i32 351, i32 19398656, ptr @flag_early_inlining, i32 0, i32 0 }, %struct.cl_option { ptr @.str.632, ptr null, i16 870, i8 19, i32 352, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.633, ptr @.str.634, i16 870, i8 22, i32 353, i32 18874368, ptr @flag_eliminate_dwarf2_dups, i32 0, i32 0 }, %struct.cl_option { ptr @.str.635, ptr @.str.636, i16 870, i8 31, i32 354, i32 18874368, ptr @flag_debug_only_used_symbols, i32 0, i32 0 }, %struct.cl_option { ptr @.str.637, ptr @.str.636, i16 870, i8 29, i32 355, i32 18874369, ptr @flag_eliminate_unused_debug_types, i32 0, i32 0 }, %struct.cl_option { ptr @.str.638, ptr @.str.639, i16 870, i8 24, i32 356, i32 18874368, ptr @flag_emit_class_debug_always, i32 0, i32 0 }, %struct.cl_option { ptr @.str.640, ptr @.str.641, i16 870, i8 16, i32 357, i32 16, ptr @flag_emit_class_files, i32 0, i32 0 }, %struct.cl_option { ptr @.str.642, ptr @.str.643, i16 870, i8 17, i32 358, i32 16, ptr @flag_emit_class_files, i32 0, i32 0 }, %struct.cl_option { ptr @.str.644, ptr @.str.645, i16 870, i8 27, i32 359, i32 198, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.646, ptr @.str.647, i16 870, i8 28, i32 360, i32 33554630, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.648, ptr @.str.649, i16 870, i8 26, i32 361, i32 198, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.650, ptr null, i16 870, i8 18, i32 362, i32 16, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.651, ptr null, i16 870, i8 19, i32 363, i32 301989904, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.652, ptr @.str.653, i16 870, i8 17, i32 364, i32 18874368, ptr @flag_enable_icf_debug, i32 0, i32 0 }, %struct.cl_option { ptr @.str.654, ptr @.str.655, i16 870, i8 10, i32 -1, i32 167772176, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.656, ptr @.str.657, i16 870, i8 17, i32 366, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.658, ptr null, i16 870, i8 15, i32 367, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.659, ptr @.str.660, i16 870, i8 11, i32 368, i32 19398656, ptr @flag_exceptions, i32 0, i32 0 }, %struct.cl_option { ptr @.str.661, ptr @.str.662, i16 870, i8 18, i32 -1, i32 169869312, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.663, ptr @.str.664, i16 870, i8 14, i32 -1, i32 167772358, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.665, ptr @.str.666, i16 870, i8 24, i32 371, i32 19398656, ptr @flag_expensive_optimizations, i32 0, i32 0 }, %struct.cl_option { ptr @.str.667, ptr @.str.668, i16 870, i8 9, i32 -1, i32 167772176, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.669, ptr @.str.670, i16 870, i8 21, i32 373, i32 198, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.671, ptr @.str.672, i16 870, i8 14, i32 374, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.673, ptr null, i16 870, i8 19, i32 375, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.674, ptr @.str.675, i16 870, i8 4, i32 376, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.676, ptr null, i16 870, i8 10, i32 377, i32 2097152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.677, ptr @.str.678, i16 870, i8 14, i32 378, i32 16, ptr @flag_filelist_file, i32 0, i32 0 }, %struct.cl_option { ptr @.str.679, ptr @.str.680, i16 870, i8 17, i32 379, i32 19398656, ptr @flag_finite_math_only, i32 0, i32 0 }, %struct.cl_option { ptr @.str.681, ptr @.str.682, i16 870, i8 7, i32 -1, i32 169869312, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.683, ptr @.str.684, i16 380, i8 11, i32 -1, i32 134217736, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.685, ptr @.str.686, i16 380, i8 19, i32 -1, i32 704643080, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.687, ptr @.str.688, i16 382, i8 23, i32 -1, i32 134217736, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.689, ptr @.str.690, i16 870, i8 12, i32 384, i32 19398656, ptr @flag_float_store, i32 0, i32 0 }, %struct.cl_option { ptr @.str.691, ptr @.str.692, i16 870, i8 10, i32 385, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.693, ptr @.str.565, i16 870, i8 11, i32 386, i32 2097152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.694, ptr @.str.695, i16 870, i8 28, i32 387, i32 16, ptr @flag_force_classes_archive_check, i32 0, i32 0 }, %struct.cl_option { ptr @.str.696, ptr @.str.697, i16 870, i8 18, i32 388, i32 19398656, ptr @flag_forward_propagate, i32 0, i32 0 }, %struct.cl_option { ptr @.str.698, ptr @.str.699, i16 870, i8 10, i32 -1, i32 436207624, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.700, ptr @.str.701, i16 870, i8 10, i32 -1, i32 134217736, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.702, ptr @.str.703, i16 870, i8 18, i32 -1, i32 704643080, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.704, ptr @.str.705, i16 391, i8 22, i32 -1, i32 134217736, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.706, ptr @.str.707, i16 870, i8 13, i32 393, i32 198, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.708, ptr @.str.709, i16 870, i8 17, i32 394, i32 132, ptr @flag_friend_injection, i32 0, i32 0 }, %struct.cl_option { ptr @.str.710, ptr @.str.711, i16 870, i8 13, i32 395, i32 18874368, ptr @flag_no_function_cse, i32 1, i32 0 }, %struct.cl_option { ptr @.str.712, ptr @.str.713, i16 870, i8 18, i32 396, i32 18874368, ptr @flag_function_sections, i32 0, i32 0 }, %struct.cl_option { ptr @.str.714, ptr @.str.715, i16 870, i8 5, i32 397, i32 19398656, ptr @flag_gcse, i32 0, i32 0 }, %struct.cl_option { ptr @.str.716, ptr @.str.717, i16 870, i8 18, i32 398, i32 19398656, ptr @flag_gcse_after_reload, i32 0, i32 0 }, %struct.cl_option { ptr @.str.718, ptr @.str.719, i16 870, i8 9, i32 399, i32 19398656, ptr @flag_gcse_las, i32 0, i32 0 }, %struct.cl_option { ptr @.str.720, ptr @.str.721, i16 870, i8 8, i32 400, i32 19398656, ptr @flag_gcse_lm, i32 0, i32 0 }, %struct.cl_option { ptr @.str.722, ptr @.str.723, i16 870, i8 8, i32 401, i32 19398656, ptr @flag_gcse_sm, i32 0, i32 0 }, %struct.cl_option { ptr @.str.724, ptr @.str.725, i16 870, i8 13, i32 402, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.726, ptr @.str.727, i16 870, i8 12, i32 403, i32 192, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.728, ptr @.str.729, i16 870, i8 13, i32 404, i32 66, ptr @flag_gnu89_inline, i32 0, i32 0 }, %struct.cl_option { ptr @.str.730, ptr @.str.731, i16 870, i8 9, i32 405, i32 18874368, ptr @flag_graphite, i32 0, i32 0 }, %struct.cl_option { ptr @.str.732, ptr @.str.733, i16 870, i8 18, i32 406, i32 19398656, ptr @flag_graphite_identity, i32 0, i32 0 }, %struct.cl_option { ptr @.str.734, ptr @.str.735, i16 870, i8 25, i32 407, i32 19398656, ptr @flag_guess_branch_prob, i32 0, i32 0 }, %struct.cl_option { ptr @.str.736, ptr null, i16 870, i8 14, i32 408, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.737, ptr null, i16 870, i8 18, i32 409, i32 524420, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.738, ptr @.str.739, i16 870, i8 21, i32 410, i32 16, ptr @flag_hash_synchronization, i32 0, i32 0 }, %struct.cl_option { ptr @.str.740, ptr null, i16 870, i8 5, i32 411, i32 2097152, ptr @help_flag, i32 0, i32 0 }, %struct.cl_option { ptr @.str.741, ptr null, i16 870, i8 6, i32 412, i32 35651584, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.742, ptr null, i16 870, i8 10, i32 413, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.743, ptr @.str.744, i16 870, i8 7, i32 414, i32 66, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.745, ptr @.str.746, i16 870, i8 13, i32 415, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.747, ptr @.str.748, i16 870, i8 6, i32 416, i32 18874368, ptr @flag_no_ident, i32 1, i32 0 }, %struct.cl_option { ptr @.str.749, ptr @.str.750, i16 870, i8 14, i32 417, i32 19398656, ptr @flag_if_conversion, i32 0, i32 0 }, %struct.cl_option { ptr @.str.751, ptr @.str.752, i16 870, i8 15, i32 418, i32 19398656, ptr @flag_if_conversion2, i32 0, i32 0 }, %struct.cl_option { ptr @.str.753, ptr @.str.754, i16 870, i8 18, i32 419, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.755, ptr @.str.756, i16 870, i8 26, i32 420, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.757, ptr @.str.758, i16 870, i8 14, i32 421, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.759, ptr @.str.760, i16 870, i8 19, i32 422, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.761, ptr @.str.762, i16 870, i8 17, i32 423, i32 16, ptr @flag_indirect_classes, i32 0, i32 0 }, %struct.cl_option { ptr @.str.763, ptr @.str.764, i16 870, i8 18, i32 424, i32 16, ptr @flag_indirect_dispatch, i32 0, i32 0 }, %struct.cl_option { ptr @.str.765, ptr @.str.766, i16 870, i8 18, i32 425, i32 18874368, ptr @flag_indirect_inlining, i32 0, i32 0 }, %struct.cl_option { ptr @.str.767, ptr @.str.768, i16 870, i8 23, i32 426, i32 18874368, ptr @flag_inhibit_size_directive, i32 0, i32 0 }, %struct.cl_option { ptr @.str.769, ptr @.str.770, i16 870, i8 16, i32 -1, i32 704643080, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.771, ptr @.str.772, i16 870, i8 14, i32 -1, i32 167772168, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.773, ptr @.str.774, i16 870, i8 16, i32 429, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.775, ptr @.str.776, i16 870, i8 14, i32 -1, i32 167772168, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.777, ptr @.str.778, i16 870, i8 11, i32 -1, i32 167772168, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.779, ptr @.str.780, i16 870, i8 7, i32 432, i32 18874368, ptr @flag_no_inline, i32 1, i32 0 }, %struct.cl_option { ptr @.str.781, ptr @.str.782, i16 870, i8 17, i32 433, i32 19398672, ptr @flag_inline_functions, i32 0, i32 0 }, %struct.cl_option { ptr @.str.783, ptr @.str.784, i16 870, i8 29, i32 434, i32 19398656, ptr @flag_inline_functions_called_once, i32 0, i32 0 }, %struct.cl_option { ptr @.str.785, ptr null, i16 870, i8 14, i32 -1, i32 706740224, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.786, ptr @.str.787, i16 870, i8 14, i32 -1, i32 706740224, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.788, ptr @.str.789, i16 870, i8 23, i32 437, i32 19398656, ptr @flag_inline_small_functions, i32 0, i32 0 }, %struct.cl_option { ptr @.str.790, ptr @.str.791, i16 870, i8 15, i32 -1, i32 167772358, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.792, ptr @.str.793, i16 870, i8 21, i32 439, i32 18874368, ptr @flag_instrument_function_entry_exit, i32 0, i32 0 }, %struct.cl_option { ptr @.str.794, ptr @.str.795, i16 870, i8 40, i32 -1, i32 169869312, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.796, ptr @.str.797, i16 870, i8 44, i32 -1, i32 169869312, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.798, ptr @.str.799, i16 870, i8 23, i32 -1, i32 234881032, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.800, ptr @.str.801, i16 870, i8 7, i32 443, i32 19398656, ptr @flag_ipa_cp, i32 0, i32 0 }, %struct.cl_option { ptr @.str.802, ptr @.str.803, i16 870, i8 13, i32 444, i32 19398656, ptr @flag_ipa_cp_clone, i32 0, i32 0 }, %struct.cl_option { ptr @.str.804, ptr @.str.805, i16 870, i8 17, i32 445, i32 19398656, ptr @flag_ipa_matrix_reorg, i32 0, i32 0 }, %struct.cl_option { ptr @.str.806, ptr @.str.807, i16 870, i8 8, i32 446, i32 19398656, ptr @flag_ipa_pta, i32 0, i32 0 }, %struct.cl_option { ptr @.str.808, ptr @.str.809, i16 870, i8 15, i32 447, i32 19398656, ptr @flag_ipa_pure_const, i32 0, i32 0 }, %struct.cl_option { ptr @.str.810, ptr @.str.811, i16 870, i8 14, i32 448, i32 19398656, ptr @flag_ipa_reference, i32 0, i32 0 }, %struct.cl_option { ptr @.str.812, ptr @.str.813, i16 870, i8 8, i32 449, i32 19398656, ptr @flag_ipa_sra, i32 0, i32 0 }, %struct.cl_option { ptr @.str.814, ptr @.str.815, i16 870, i8 17, i32 450, i32 18874368, ptr @flag_ipa_struct_reorg, i32 0, i32 0 }, %struct.cl_option { ptr @.str.816, ptr @.str.817, i16 870, i8 16, i32 451, i32 19398656, ptr @flag_ipa_type_escape, i32 0, i32 0 }, %struct.cl_option { ptr @.str.818, ptr @.str.819, i16 870, i8 15, i32 -1, i32 169869312, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.820, ptr @.str.821, i16 870, i8 13, i32 453, i32 18874368, ptr @flag_ira_coalesce, i32 0, i32 0 }, %struct.cl_option { ptr @.str.822, ptr @.str.823, i16 870, i8 18, i32 454, i32 18874368, ptr @flag_ira_loop_pressure, i32 0, i32 0 }, %struct.cl_option { ptr @.str.824, ptr @.str.825, i16 870, i8 12, i32 -1, i32 169869312, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.826, ptr @.str.827, i16 870, i8 21, i32 456, i32 18874368, ptr @flag_ira_share_save_slots, i32 0, i32 0 }, %struct.cl_option { ptr @.str.828, ptr @.str.829, i16 870, i8 22, i32 457, i32 18874368, ptr @flag_ira_share_spill_slots, i32 0, i32 0 }, %struct.cl_option { ptr @.str.830, ptr @.str.831, i16 870, i8 13, i32 -1, i32 706740224, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.832, ptr @.str.833, i16 870, i8 7, i32 459, i32 19398656, ptr @flag_ivopts, i32 0, i32 0 }, %struct.cl_option { ptr @.str.834, ptr @.str.835, i16 870, i8 4, i32 460, i32 16, ptr @flag_jni, i32 0, i32 0 }, %struct.cl_option { ptr @.str.836, ptr @.str.837, i16 870, i8 12, i32 461, i32 2621440, ptr @flag_jump_tables, i32 0, i32 0 }, %struct.cl_option { ptr @.str.838, ptr @.str.839, i16 870, i8 22, i32 462, i32 18874368, ptr @flag_keep_inline_functions, i32 0, i32 0 }, %struct.cl_option { ptr @.str.840, ptr @.str.841, i16 870, i8 19, i32 463, i32 18874368, ptr @flag_keep_static_consts, i32 0, i32 0 }, %struct.cl_option { ptr @.str.842, ptr null, i16 870, i8 10, i32 464, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.843, ptr @.str.844, i16 870, i8 23, i32 465, i32 198, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.845, ptr @.str.846, i16 870, i8 19, i32 466, i32 18874368, ptr @flag_leading_underscore, i32 0, i32 0 }, %struct.cl_option { ptr @.str.847, ptr @.str.848, i16 870, i8 11, i32 467, i32 19398656, ptr @flag_loop_block, i32 0, i32 0 }, %struct.cl_option { ptr @.str.849, ptr @.str.850, i16 870, i8 17, i32 468, i32 19398656, ptr @flag_loop_interchange, i32 0, i32 0 }, %struct.cl_option { ptr @.str.851, ptr @.str.565, i16 870, i8 14, i32 469, i32 2097152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.852, ptr @.str.853, i16 870, i8 21, i32 470, i32 19398656, ptr @flag_loop_parallelize_all, i32 0, i32 0 }, %struct.cl_option { ptr @.str.854, ptr @.str.855, i16 870, i8 16, i32 471, i32 19398656, ptr @flag_loop_strip_mine, i32 0, i32 0 }, %struct.cl_option { ptr @.str.856, ptr @.str.857, i16 870, i8 4, i32 472, i32 2097152, ptr @flag_lto, i32 0, i32 0 }, %struct.cl_option { ptr @.str.858, ptr @.str.859, i16 870, i8 23, i32 473, i32 572522496, ptr @flag_lto_compression_level, i32 0, i32 0 }, %struct.cl_option { ptr @.str.860, ptr @.str.861, i16 870, i8 11, i32 474, i32 19398656, ptr @flag_lto_report, i32 0, i32 0 }, %struct.cl_option { ptr @.str.862, ptr @.str.863, i16 870, i8 7, i32 475, i32 17301536, ptr @flag_ltrans, i32 0, i32 0 }, %struct.cl_option { ptr @.str.864, ptr @.str.865, i16 870, i8 20, i32 476, i32 33554464, ptr @ltrans_output_list, i32 4, i32 0 }, %struct.cl_option { ptr @.str.866, ptr @.str.867, i16 870, i8 11, i32 477, i32 19398656, ptr @flag_errno_math, i32 0, i32 0 }, %struct.cl_option { ptr @.str.868, ptr @.str.869, i16 870, i8 23, i32 -1, i32 704643080, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.870, ptr @.str.871, i16 870, i8 12, i32 -1, i32 704643080, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.872, ptr @.str.873, i16 870, i8 23, i32 -1, i32 704643080, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.874, ptr @.str.875, i16 870, i8 20, i32 -1, i32 704643080, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.876, ptr @.str.877, i16 870, i8 22, i32 -1, i32 704643080, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.878, ptr @.str.879, i16 870, i8 11, i32 483, i32 18874368, ptr @mem_report, i32 0, i32 0 }, %struct.cl_option { ptr @.str.880, ptr @.str.881, i16 870, i8 20, i32 484, i32 19398656, ptr @flag_merge_constants, i32 1, i32 2 }, %struct.cl_option { ptr @.str.882, ptr @.str.883, i16 870, i8 16, i32 485, i32 19398656, ptr @flag_merge_constants, i32 1, i32 1 }, %struct.cl_option { ptr @.str.884, ptr @.str.885, i16 870, i8 20, i32 486, i32 18874368, ptr @flag_merge_debug_strings, i32 0, i32 0 }, %struct.cl_option { ptr @.str.886, ptr @.str.887, i16 870, i8 16, i32 -1, i32 706740224, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.888, ptr @.str.889, i16 870, i8 15, i32 488, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.890, ptr @.str.891, i16 870, i8 13, i32 489, i32 19398656, ptr @flag_modulo_sched, i32 0, i32 0 }, %struct.cl_option { ptr @.str.892, ptr @.str.893, i16 870, i8 28, i32 490, i32 18874368, ptr @flag_modulo_sched_allow_regmoves, i32 0, i32 0 }, %struct.cl_option { ptr @.str.894, ptr @.str.895, i16 870, i8 21, i32 491, i32 19398656, ptr @flag_move_loop_invariants, i32 0, i32 0 }, %struct.cl_option { ptr @.str.896, ptr @.str.897, i16 870, i8 14, i32 492, i32 198, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.898, ptr @.str.899, i16 870, i8 8, i32 -1, i32 153092096, ptr @flag_mudflap, i32 0, i32 0 }, %struct.cl_option { ptr @.str.900, ptr @.str.901, i16 870, i8 10, i32 -1, i32 153092096, ptr @flag_mudflap_ignore_reads, i32 0, i32 0 }, %struct.cl_option { ptr @.str.902, ptr @.str.903, i16 870, i8 10, i32 -1, i32 153092096, ptr @flag_mudflap, i32 1, i32 2 }, %struct.cl_option { ptr @.str.904, ptr null, i16 870, i8 23, i32 496, i32 33554564, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.905, ptr null, i16 870, i8 8, i32 497, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.906, ptr @.str.907, i16 870, i8 13, i32 498, i32 192, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.908, ptr @.str.909, i16 870, i8 14, i32 499, i32 192, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.910, ptr @.str.911, i16 870, i8 20, i32 500, i32 19398656, ptr @flag_non_call_exceptions, i32 0, i32 0 }, %struct.cl_option { ptr @.str.912, ptr null, i16 870, i8 17, i32 501, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.913, ptr null, i16 870, i8 16, i32 502, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.914, ptr @.str.915, i16 870, i8 21, i32 503, i32 128, ptr @flag_objc_call_cxx_cdtors, i32 0, i32 0 }, %struct.cl_option { ptr @.str.916, ptr @.str.917, i16 870, i8 21, i32 504, i32 192, ptr @flag_objc_direct_dispatch, i32 0, i32 0 }, %struct.cl_option { ptr @.str.918, ptr @.str.919, i16 870, i8 16, i32 505, i32 192, ptr @flag_objc_exceptions, i32 0, i32 0 }, %struct.cl_option { ptr @.str.920, ptr @.str.921, i16 870, i8 8, i32 506, i32 192, ptr @flag_objc_gc, i32 0, i32 0 }, %struct.cl_option { ptr @.str.922, ptr @.str.923, i16 870, i8 21, i32 507, i32 192, ptr @flag_objc_sjlj_exceptions, i32 0, i32 0 }, %struct.cl_option { ptr @.str.924, ptr @.str.925, i16 870, i8 19, i32 508, i32 19398656, ptr @flag_omit_frame_pointer, i32 0, i32 0 }, %struct.cl_option { ptr @.str.926, ptr @.str.927, i16 870, i8 7, i32 509, i32 206, ptr @flag_openmp, i32 0, i32 0 }, %struct.cl_option { ptr @.str.928, ptr @.str.929, i16 870, i8 15, i32 510, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.930, ptr @.str.931, i16 870, i8 23, i32 511, i32 19398656, ptr @flag_regmove, i32 0, i32 0 }, %struct.cl_option { ptr @.str.932, ptr @.str.933, i16 870, i8 23, i32 512, i32 19398656, ptr @flag_optimize_sibling_calls, i32 0, i32 0 }, %struct.cl_option { ptr @.str.934, ptr @.str.935, i16 870, i8 37, i32 513, i32 16, ptr @flag_optimize_sci, i32 0, i32 0 }, %struct.cl_option { ptr @.str.936, ptr @.str.937, i16 870, i8 15, i32 514, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.938, ptr null, i16 870, i8 18, i32 -1, i32 167772176, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.939, ptr @.str.940, i16 870, i8 13, i32 516, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.941, ptr @.str.942, i16 870, i8 12, i32 517, i32 19398656, ptr @flag_pack_struct, i32 0, i32 0 }, %struct.cl_option { ptr @.str.943, ptr @.str.944, i16 870, i8 13, i32 -1, i32 707264512, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.945, ptr @.str.946, i16 870, i8 18, i32 519, i32 18874368, ptr @flag_pcc_struct_return, i32 1, i32 1 }, %struct.cl_option { ptr @.str.947, ptr null, i16 870, i8 9, i32 520, i32 198, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.948, ptr @.str.949, i16 870, i8 15, i32 521, i32 198, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.950, ptr @.str.951, i16 870, i8 11, i32 522, i32 19398656, ptr @flag_peel_loops, i32 0, i32 0 }, %struct.cl_option { ptr @.str.952, ptr @.str.953, i16 870, i8 9, i32 523, i32 19398656, ptr @flag_no_peephole, i32 1, i32 0 }, %struct.cl_option { ptr @.str.954, ptr @.str.955, i16 870, i8 10, i32 524, i32 19398656, ptr @flag_peephole2, i32 0, i32 0 }, %struct.cl_option { ptr @.str.956, ptr @.str.957, i16 870, i8 11, i32 525, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.958, ptr @.str.959, i16 870, i8 4, i32 526, i32 18874368, ptr @flag_pic, i32 1, i32 1 }, %struct.cl_option { ptr @.str.960, ptr @.str.961, i16 870, i8 4, i32 527, i32 18874368, ptr @flag_pie, i32 1, i32 1 }, %struct.cl_option { ptr @.str.962, ptr @.str.963, i16 870, i8 12, i32 -1, i32 169869312, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.964, ptr @.str.965, i16 870, i8 8, i32 -1, i32 169869312, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.966, ptr @.str.967, i16 870, i8 20, i32 530, i32 18874368, ptr @post_ipa_mem_report, i32 0, i32 0 }, %struct.cl_option { ptr @.str.968, ptr @.str.967, i16 870, i8 19, i32 531, i32 18874368, ptr @pre_ipa_mem_report, i32 0, i32 0 }, %struct.cl_option { ptr @.str.969, ptr @.str.970, i16 870, i8 21, i32 532, i32 19398656, ptr @flag_predictive_commoning, i32 0, i32 0 }, %struct.cl_option { ptr @.str.971, ptr @.str.972, i16 870, i8 21, i32 533, i32 19398656, ptr @flag_prefetch_loop_arrays, i32 0, i32 0 }, %struct.cl_option { ptr @.str.973, ptr @.str.974, i16 870, i8 13, i32 534, i32 206, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.975, ptr @.str.976, i16 870, i8 17, i32 535, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.977, ptr @.str.978, i16 870, i8 8, i32 536, i32 18874368, ptr @profile_flag, i32 0, i32 0 }, %struct.cl_option { ptr @.str.979, ptr @.str.980, i16 870, i8 13, i32 537, i32 18874368, ptr @profile_arc_flag, i32 0, i32 0 }, %struct.cl_option { ptr @.str.981, ptr @.str.982, i16 870, i8 19, i32 538, i32 18874368, ptr @flag_profile_correction, i32 0, i32 0 }, %struct.cl_option { ptr @.str.983, ptr @.str.984, i16 870, i8 13, i32 -1, i32 169869312, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.985, ptr @.str.986, i16 870, i8 17, i32 540, i32 2097152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.987, ptr @.str.988, i16 870, i8 18, i32 -1, i32 169869312, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.989, ptr @.str.990, i16 870, i8 12, i32 542, i32 2097152, ptr @flag_profile_use, i32 0, i32 0 }, %struct.cl_option { ptr @.str.991, ptr @.str.992, i16 870, i8 13, i32 -1, i32 169869312, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.993, ptr @.str.994, i16 870, i8 15, i32 544, i32 18874368, ptr @flag_profile_values, i32 0, i32 0 }, %struct.cl_option { ptr @.str.995, ptr @.str.996, i16 870, i8 15, i32 545, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.997, ptr null, i16 870, i8 12, i32 546, i32 2097152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.998, ptr @.str.999, i16 870, i8 13, i32 -1, i32 169869312, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1000, ptr @.str.1001, i16 870, i8 12, i32 548, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1002, ptr @.str.1003, i16 870, i8 16, i32 549, i32 18874368, ptr @flag_reciprocal_math, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1004, ptr @.str.1005, i16 870, i8 20, i32 550, i32 18874368, ptr @flag_record_gcc_switches, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1006, ptr @.str.1007, i16 870, i8 16, i32 -1, i32 134217736, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1008, ptr @.str.1009, i16 870, i8 16, i32 -1, i32 134217736, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1010, ptr @.str.1011, i16 870, i8 10, i32 553, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1012, ptr @.str.1013, i16 870, i8 19, i32 554, i32 16, ptr @flag_reduced_reflection, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1014, ptr @.str.1015, i16 870, i8 18, i32 555, i32 19398656, ptr @flag_pcc_struct_return, i32 1, i32 0 }, %struct.cl_option { ptr @.str.1016, ptr @.str.1017, i16 870, i8 8, i32 556, i32 19398656, ptr @flag_regmove, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1018, ptr @.str.1019, i16 870, i8 17, i32 557, i32 19398656, ptr @flag_rename_registers, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1020, ptr @.str.1021, i16 870, i8 15, i32 558, i32 19398656, ptr @flag_reorder_blocks, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1022, ptr @.str.1023, i16 870, i8 29, i32 559, i32 19398656, ptr @flag_reorder_blocks_and_partition, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1024, ptr @.str.1025, i16 870, i8 18, i32 560, i32 19398656, ptr @flag_reorder_functions, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1026, ptr @.str.1027, i16 870, i8 14, i32 561, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1028, ptr @.str.1029, i16 870, i8 21, i32 562, i32 192, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1030, ptr @.str.1031, i16 870, i8 5, i32 563, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1032, ptr @.str.1033, i16 870, i8 21, i32 564, i32 19398656, ptr @flag_rerun_cse_after_loop, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1034, ptr @.str.565, i16 870, i8 15, i32 565, i32 2097152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1035, ptr @.str.1036, i16 870, i8 34, i32 566, i32 19398656, ptr @flag_resched_modulo_sched, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1037, ptr @.str.1038, i16 870, i8 11, i32 567, i32 67108896, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1039, ptr @.str.1040, i16 870, i8 14, i32 568, i32 19398656, ptr @flag_rounding_math, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1041, ptr @.str.1042, i16 870, i8 5, i32 569, i32 524420, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1043, ptr null, i16 870, i8 14, i32 -1, i32 1207959568, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1044, ptr @.str.1045, i16 870, i8 30, i32 571, i32 19398656, ptr @flag_sched_critical_path_heuristic, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1046, ptr @.str.1047, i16 870, i8 26, i32 572, i32 19398656, ptr @flag_sched_dep_count_heuristic, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1048, ptr @.str.1049, i16 870, i8 22, i32 573, i32 19398656, ptr @flag_sched_group_heuristic, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1050, ptr @.str.1051, i16 870, i8 17, i32 574, i32 19398656, ptr @flag_schedule_interblock, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1052, ptr @.str.1053, i16 870, i8 26, i32 575, i32 19398656, ptr @flag_sched_last_insn_heuristic, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1054, ptr @.str.1055, i16 870, i8 15, i32 576, i32 19398656, ptr @flag_sched_pressure, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1056, ptr @.str.1057, i16 870, i8 21, i32 577, i32 19398656, ptr @flag_sched_rank_heuristic, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1058, ptr @.str.1059, i16 870, i8 11, i32 578, i32 19398656, ptr @flag_schedule_speculative, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1060, ptr @.str.1061, i16 870, i8 26, i32 579, i32 19398656, ptr @flag_sched_spec_insn_heuristic, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1062, ptr @.str.1063, i16 870, i8 16, i32 580, i32 19398656, ptr @flag_schedule_speculative_load, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1064, ptr @.str.1065, i16 870, i8 26, i32 581, i32 19398656, ptr @flag_schedule_speculative_load_dangerous, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1066, ptr @.str.1067, i16 870, i8 20, i32 582, i32 556269568, ptr @flag_sched_stalled_insns, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1068, ptr @.str.1069, i16 870, i8 24, i32 583, i32 556269568, ptr @flag_sched_stalled_insns_dep, i32 1, i32 1 }, %struct.cl_option { ptr @.str.1070, ptr @.str.1071, i16 870, i8 25, i32 -1, i32 706740224, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1072, ptr @.str.1073, i16 870, i8 21, i32 -1, i32 706740224, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1074, ptr @.str.1075, i16 870, i8 15, i32 -1, i32 169869312, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1076, ptr @.str.1077, i16 870, i8 23, i32 587, i32 19398656, ptr @flag_sched2_use_superblocks, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1078, ptr @.str.565, i16 870, i8 18, i32 588, i32 2097152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1079, ptr @.str.1080, i16 870, i8 15, i32 589, i32 19398656, ptr @flag_schedule_insns, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1081, ptr @.str.1082, i16 870, i8 16, i32 590, i32 19398656, ptr @flag_schedule_insns_after_reload, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1083, ptr @.str.1084, i16 870, i8 18, i32 591, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1085, ptr @.str.1086, i16 870, i8 16, i32 592, i32 19398656, ptr @flag_section_anchors, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1087, ptr @.str.565, i16 870, i8 4, i32 593, i32 2097152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1088, ptr @.str.1089, i16 870, i8 21, i32 594, i32 19398656, ptr @flag_sel_sched_pipelining, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1090, ptr @.str.1091, i16 870, i8 33, i32 595, i32 19398656, ptr @flag_sel_sched_pipelining_outer_loops, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1092, ptr @.str.1093, i16 870, i8 31, i32 596, i32 19398656, ptr @flag_sel_sched_reschedule_pipelined, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1094, ptr @.str.1095, i16 870, i8 21, i32 597, i32 19398656, ptr @flag_selective_scheduling, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1096, ptr @.str.1097, i16 870, i8 22, i32 598, i32 19398656, ptr @flag_selective_scheduling2, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1098, ptr @.str.1099, i16 870, i8 13, i32 599, i32 524486, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1100, ptr @.str.1101, i16 870, i8 12, i32 600, i32 524494, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1102, ptr @.str.1103, i16 870, i8 12, i32 601, i32 524486, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1104, ptr @.str.1105, i16 870, i8 12, i32 602, i32 18874566, ptr @flag_show_column, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1106, ptr @.str.1107, i16 870, i8 10, i32 603, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1108, ptr @.str.1109, i16 870, i8 15, i32 604, i32 19398656, ptr @flag_signaling_nans, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1110, ptr @.str.1111, i16 870, i8 17, i32 605, i32 198, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1112, ptr @.str.1113, i16 870, i8 12, i32 606, i32 230, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1114, ptr @.str.1115, i16 870, i8 13, i32 607, i32 19398656, ptr @flag_signed_zeros, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1116, ptr @.str.1117, i16 870, i8 26, i32 608, i32 19398656, ptr @flag_single_precision_constant, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1118, ptr null, i16 870, i8 17, i32 609, i32 1107296272, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1119, ptr @.str.1120, i16 870, i8 8, i32 610, i32 33554448, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1121, ptr @.str.1122, i16 870, i8 22, i32 611, i32 19398656, ptr @flag_split_ivs_in_unroller, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1123, ptr @.str.1124, i16 870, i8 17, i32 612, i32 19398656, ptr @flag_split_wide_types, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1125, ptr null, i16 870, i8 9, i32 613, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1126, ptr @.str.1127, i16 870, i8 12, i32 614, i32 18874368, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1128, ptr @.str.1129, i16 870, i8 13, i32 -1, i32 186646528, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1130, ptr null, i16 870, i8 12, i32 616, i32 2097152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1131, ptr @.str.1132, i16 870, i8 22, i32 -1, i32 169869312, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1133, ptr @.str.1134, i16 870, i8 20, i32 -1, i32 169869312, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1135, ptr @.str.1136, i16 870, i8 16, i32 619, i32 18874368, ptr @flag_stack_protect, i32 1, i32 1 }, %struct.cl_option { ptr @.str.1137, ptr @.str.1138, i16 870, i8 20, i32 -1, i32 153092096, ptr @flag_stack_protect, i32 1, i32 2 }, %struct.cl_option { ptr @.str.1139, ptr @.str.1140, i16 870, i8 6, i32 621, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1141, ptr @.str.1142, i16 870, i8 12, i32 622, i32 16, ptr @flag_store_check, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1143, ptr @.str.565, i16 870, i8 16, i32 623, i32 2097152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1144, ptr @.str.1145, i16 870, i8 16, i32 624, i32 19398656, ptr @flag_strict_aliasing, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1146, ptr @.str.1147, i16 870, i8 16, i32 625, i32 18874368, ptr @flag_strict_overflow, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1148, ptr null, i16 870, i8 17, i32 626, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1149, ptr @.str.1150, i16 870, i8 12, i32 627, i32 18874368, ptr @flag_syntax_only, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1151, ptr @.str.1152, i16 870, i8 9, i32 -1, i32 704643270, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1153, ptr null, i16 870, i8 12, i32 629, i32 2097152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1154, ptr @.str.1155, i16 870, i8 8, i32 630, i32 33554448, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1156, ptr null, i16 870, i8 16, i32 -1, i32 1778385028, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1157, ptr @.str.1158, i16 870, i8 16, i32 -1, i32 704643204, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1159, ptr @.str.1160, i16 870, i8 14, i32 633, i32 18874368, ptr @flag_test_coverage, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1161, ptr null, i16 870, i8 17, i32 634, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1162, ptr @.str.1163, i16 870, i8 13, i32 635, i32 19398656, ptr @flag_thread_jumps, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1164, ptr @.str.1165, i16 870, i8 19, i32 636, i32 524420, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1166, ptr @.str.1167, i16 870, i8 12, i32 637, i32 18874368, ptr @time_report, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1168, ptr @.str.1169, i16 870, i8 11, i32 -1, i32 169869312, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1170, ptr @.str.1171, i16 870, i8 17, i32 639, i32 19398656, ptr @flag_toplevel_reorder, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1172, ptr @.str.1173, i16 870, i8 7, i32 640, i32 18874368, ptr @flag_tracer, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1174, ptr @.str.1175, i16 870, i8 14, i32 641, i32 19398656, ptr @flag_trapping_math, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1176, ptr @.str.1177, i16 870, i8 6, i32 642, i32 19398656, ptr @flag_trapv, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1178, ptr @.str.1179, i16 870, i8 22, i32 643, i32 19398656, ptr @flag_tree_builtin_call_dce, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1180, ptr @.str.1181, i16 870, i8 9, i32 644, i32 19398656, ptr @flag_tree_ccp, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1182, ptr @.str.1183, i16 870, i8 8, i32 645, i32 19398656, ptr @flag_tree_ch, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1184, ptr @.str.1185, i16 870, i8 15, i32 646, i32 19398656, ptr @flag_tree_copy_prop, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1186, ptr @.str.1187, i16 870, i8 16, i32 647, i32 19398656, ptr @flag_tree_copyrename, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1188, ptr @.str.1189, i16 870, i8 12, i32 648, i32 19398656, ptr @flag_tree_cselim, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1190, ptr @.str.1191, i16 870, i8 9, i32 649, i32 19398656, ptr @flag_tree_dce, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1192, ptr @.str.1193, i16 870, i8 20, i32 650, i32 19398656, ptr @flag_tree_dom, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1194, ptr @.str.1195, i16 870, i8 9, i32 651, i32 19398656, ptr @flag_tree_dse, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1196, ptr @.str.1197, i16 870, i8 14, i32 652, i32 19398656, ptr @flag_tree_forwprop, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1198, ptr @.str.1199, i16 870, i8 9, i32 653, i32 19398656, ptr @flag_tree_fre, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1200, ptr @.str.1201, i16 870, i8 23, i32 654, i32 19398656, ptr @flag_tree_loop_distribution, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1202, ptr @.str.1203, i16 870, i8 13, i32 655, i32 19398656, ptr @flag_tree_loop_im, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1204, ptr @.str.1205, i16 870, i8 18, i32 656, i32 19398656, ptr @flag_tree_loop_ivcanon, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1206, ptr @.str.1207, i16 870, i8 17, i32 657, i32 19398656, ptr @flag_tree_loop_linear, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1208, ptr @.str.1209, i16 870, i8 19, i32 658, i32 19398656, ptr @flag_tree_loop_optimize, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1210, ptr @.str.1211, i16 870, i8 9, i32 659, i32 19398656, ptr @flag_tree_live_range_split, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1212, ptr @.str.1213, i16 870, i8 24, i32 660, i32 589299712, ptr @flag_tree_parallelize_loops, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1214, ptr @.str.1215, i16 870, i8 13, i32 661, i32 19398656, ptr @flag_tree_phiprop, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1216, ptr @.str.1217, i16 870, i8 9, i32 662, i32 19398656, ptr @flag_tree_pre, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1218, ptr @.str.1219, i16 870, i8 9, i32 663, i32 19398656, ptr @flag_tree_pta, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1220, ptr @.str.1221, i16 870, i8 13, i32 664, i32 19398656, ptr @flag_tree_reassoc, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1222, ptr @.str.565, i16 870, i8 12, i32 665, i32 2097152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1223, ptr @.str.1224, i16 870, i8 16, i32 666, i32 19398656, ptr @flag_tree_scev_cprop, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1225, ptr @.str.1226, i16 870, i8 10, i32 667, i32 19398656, ptr @flag_tree_sink, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1227, ptr @.str.1228, i16 870, i8 19, i32 668, i32 19398656, ptr @flag_tree_slp_vectorize, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1229, ptr @.str.1230, i16 870, i8 9, i32 669, i32 19398656, ptr @flag_tree_sra, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1231, ptr @.str.565, i16 870, i8 15, i32 670, i32 2097152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1232, ptr @.str.565, i16 870, i8 21, i32 671, i32 2097152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1233, ptr @.str.1234, i16 870, i8 23, i32 672, i32 19398656, ptr @flag_tree_switch_conversion, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1235, ptr @.str.1236, i16 870, i8 9, i32 673, i32 19398656, ptr @flag_tree_ter, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1237, ptr @.str.1238, i16 870, i8 23, i32 674, i32 19398656, ptr @flag_tree_vect_loop_version, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1239, ptr @.str.1240, i16 870, i8 15, i32 675, i32 19398656, ptr @flag_tree_vectorize, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1241, ptr @.str.1242, i16 870, i8 25, i32 -1, i32 169869312, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1243, ptr @.str.1244, i16 870, i8 9, i32 677, i32 19398656, ptr @flag_tree_vrp, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1245, ptr @.str.1246, i16 870, i8 13, i32 678, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1247, ptr @.str.1248, i16 870, i8 15, i32 679, i32 19398656, ptr @flag_unit_at_a_time, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1249, ptr @.str.1250, i16 870, i8 17, i32 680, i32 19398656, ptr @flag_unroll_all_loops, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1251, ptr @.str.1252, i16 870, i8 13, i32 681, i32 19398656, ptr @flag_unroll_loops, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1253, ptr @.str.1254, i16 870, i8 26, i32 682, i32 19398656, ptr @flag_unsafe_loop_optimizations, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1255, ptr @.str.1256, i16 870, i8 26, i32 683, i32 19398656, ptr @flag_unsafe_math_optimizations, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1257, ptr @.str.1258, i16 870, i8 19, i32 684, i32 198, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1259, ptr @.str.1260, i16 870, i8 14, i32 685, i32 230, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1261, ptr @.str.1262, i16 870, i8 15, i32 686, i32 19398656, ptr @flag_unswitch_loops, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1263, ptr @.str.1264, i16 870, i8 14, i32 687, i32 19398656, ptr @flag_unwind_tables, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1265, ptr @.str.1266, i16 870, i8 20, i32 688, i32 16, ptr @flag_use_atomic_builtins, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1267, ptr @.str.1268, i16 870, i8 13, i32 689, i32 16, ptr @flag_use_boehm_gc, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1269, ptr @.str.1270, i16 870, i8 15, i32 690, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1271, ptr @.str.1272, i16 870, i8 26, i32 691, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1273, ptr @.str.1274, i16 870, i8 22, i32 692, i32 16, ptr @flag_use_divide_subroutine, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1275, ptr null, i16 870, i8 18, i32 693, i32 1075838976, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1276, ptr @.str.1277, i16 870, i8 13, i32 694, i32 19398656, ptr @flag_var_tracking, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1278, ptr @.str.1279, i16 870, i8 25, i32 695, i32 19398656, ptr @flag_var_tracking_assignments, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1280, ptr @.str.1281, i16 870, i8 32, i32 696, i32 19398656, ptr @flag_var_tracking_assignments_toggle, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1282, ptr @.str.1283, i16 870, i8 20, i32 697, i32 19398656, ptr @flag_var_tracking_uninit, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1284, ptr @.str.1285, i16 870, i8 31, i32 698, i32 19398656, ptr @flag_variable_expansion_in_unroller, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1286, ptr @.str.1287, i16 870, i8 16, i32 699, i32 19398656, ptr @flag_vect_cost_model, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1288, ptr @.str.1289, i16 870, i8 12, i32 700, i32 18874368, ptr @flag_verbose_asm, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1290, ptr null, i16 870, i8 8, i32 701, i32 2097152, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1291, ptr @.str.1292, i16 870, i8 26, i32 702, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1293, ptr @.str.1294, i16 870, i8 21, i32 703, i32 132, ptr @flag_visibility_ms_compat, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1295, ptr @.str.1296, i16 870, i8 12, i32 -1, i32 169869312, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1297, ptr @.str.1298, i16 870, i8 4, i32 705, i32 19398656, ptr @flag_value_profile_transformations, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1299, ptr @.str.1300, i16 870, i8 10, i32 706, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1301, ptr @.str.1302, i16 870, i8 14, i32 707, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1303, ptr @.str.1304, i16 870, i8 5, i32 708, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1305, ptr @.str.1306, i16 870, i8 4, i32 709, i32 19398656, ptr @flag_web, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1307, ptr @.str.1308, i16 870, i8 11, i32 710, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1309, ptr @.str.1310, i16 870, i8 14, i32 711, i32 19398656, ptr @flag_whole_program, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1311, ptr @.str.1312, i16 870, i8 6, i32 712, i32 2097152, ptr @flag_whopr, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1313, ptr @.str.1314, i16 870, i8 19, i32 -1, i32 167772358, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1315, ptr @.str.1316, i16 870, i8 18, i32 714, i32 206, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1317, ptr @.str.1318, i16 870, i8 4, i32 715, i32 17301536, ptr @flag_wpa, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1319, ptr @.str.1320, i16 870, i8 6, i32 716, i32 19398656, ptr @flag_wrapv, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1321, ptr @.str.1322, i16 870, i8 5, i32 717, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1323, ptr @.str.1324, i16 870, i8 24, i32 718, i32 18874368, ptr @flag_zero_initialized_in_bss, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1325, ptr @.str.1326, i16 870, i8 10, i32 719, i32 192, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1327, ptr @.str.1328, i16 870, i8 1, i32 -1, i32 304087040, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1329, ptr null, i16 720, i8 4, i32 -1, i32 1107296257, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1330, ptr @.str.1331, i16 720, i8 5, i32 724, i32 304087040, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1332, ptr null, i16 720, i8 7, i32 -1, i32 1, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1333, ptr @.str.1334, i16 720, i8 7, i32 730, i32 572522496, ptr @dwarf_version, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1335, ptr @.str.1336, i16 720, i8 9, i32 -1, i32 192, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1337, ptr @.str.1338, i16 720, i8 4, i32 -1, i32 304087040, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1339, ptr @.str.1340, i16 720, i8 4, i32 -1, i32 33554433, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1341, ptr null, i16 727, i8 5, i32 -1, i32 67108865, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1342, ptr @.str.1343, i16 720, i8 16, i32 -1, i32 136314880, ptr @dwarf_strict, i32 1, i32 0 }, %struct.cl_option { ptr @.str.1344, ptr @.str.1345, i16 720, i8 6, i32 731, i32 304087040, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1346, ptr @.str.1347, i16 730, i8 7, i32 734, i32 304087040, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1348, ptr @.str.1349, i16 720, i8 13, i32 -1, i32 153092096, ptr @dwarf_strict, i32 1, i32 1 }, %struct.cl_option { ptr @.str.1350, ptr @.str.1351, i16 720, i8 7, i32 -1, i32 18874368, ptr @flag_gtoggle, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1352, ptr @.str.1353, i16 720, i8 4, i32 735, i32 304087040, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1354, ptr @.str.1355, i16 720, i8 6, i32 736, i32 304087040, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1356, ptr @.str.1357, i16 735, i8 7, i32 722, i32 304087040, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1358, ptr @.str.1359, i16 870, i8 9, i32 -1, i32 100663502, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1360, ptr @.str.1361, i16 870, i8 7, i32 -1, i32 100663494, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1362, ptr @.str.1363, i16 870, i8 9, i32 -1, i32 100663502, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1364, ptr @.str.1365, i16 870, i8 7, i32 -1, i32 100663494, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1366, ptr @.str.1367, i16 870, i8 7, i32 -1, i32 100663502, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1368, ptr @.str.1369, i16 870, i8 6, i32 -1, i32 100663502, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1370, ptr @.str.1371, i16 870, i8 8, i32 -1, i32 100663502, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1372, ptr @.str.1373, i16 870, i8 7, i32 -1, i32 100663502, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1374, ptr @.str.1375, i16 870, i8 11, i32 -1, i32 100663494, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1376, ptr @.str.1377, i16 745, i8 17, i32 -1, i32 100663494, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1378, ptr null, i16 870, i8 8, i32 -1, i32 1073741826, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1379, ptr null, i16 870, i8 9, i32 -1, i32 1073742022, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1380, ptr @.str.1381, i16 870, i8 19, i32 -1, i32 156237824, ptr @target_flags, i32 3, i32 1 }, %struct.cl_option { ptr @.str.1382, ptr @.str.1383, i16 870, i8 3, i32 753, i32 156237824, ptr @ix86_isa_flags, i32 2, i32 4 }, %struct.cl_option { ptr @.str.1384, ptr @.str.1385, i16 870, i8 6, i32 751, i32 22020096, ptr @ix86_isa_flags, i32 3, i32 1 }, %struct.cl_option { ptr @.str.1386, ptr @.str.1387, i16 870, i8 7, i32 752, i32 1078984704, ptr @ix86_isa_flags, i32 3, i32 2 }, %struct.cl_option { ptr @.str.1388, ptr @.str.1389, i16 870, i8 3, i32 750, i32 156237824, ptr @ix86_isa_flags, i32 3, i32 4 }, %struct.cl_option { ptr @.str.1390, ptr @.str.1391, i16 870, i8 6, i32 754, i32 22020096, ptr @target_flags, i32 3, i32 2 }, %struct.cl_option { ptr @.str.1392, ptr @.str.1393, i16 870, i8 18, i32 -1, i32 156237824, ptr @target_flags, i32 2, i32 1 }, %struct.cl_option { ptr @.str.1394, ptr @.str.1395, i16 870, i8 5, i32 -1, i32 168820736, ptr @ix86_abi_string, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1396, ptr @.str.1397, i16 870, i8 4, i32 757, i32 22020096, ptr @ix86_isa_flags, i32 3, i32 8 }, %struct.cl_option { ptr @.str.1398, ptr @.str.1399, i16 870, i8 25, i32 758, i32 22020096, ptr @target_flags, i32 3, i32 4 }, %struct.cl_option { ptr @.str.1400, ptr @.str.1401, i16 870, i8 4, i32 759, i32 22020096, ptr @ix86_isa_flags, i32 3, i32 16 }, %struct.cl_option { ptr @.str.1402, ptr @.str.1403, i16 870, i8 13, i32 760, i32 22020096, ptr @target_flags, i32 3, i32 8 }, %struct.cl_option { ptr @.str.1404, ptr @.str.1405, i16 870, i8 17, i32 -1, i32 168820736, ptr @ix86_align_funcs_string, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1406, ptr @.str.1407, i16 870, i8 13, i32 -1, i32 168820736, ptr @ix86_align_jumps_string, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1408, ptr @.str.1409, i16 870, i8 13, i32 -1, i32 168820736, ptr @ix86_align_loops_string, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1410, ptr @.str.1411, i16 870, i8 16, i32 -1, i32 156237824, ptr @target_flags, i32 2, i32 2048 }, %struct.cl_option { ptr @.str.1412, ptr @.str.1413, i16 870, i8 6, i32 -1, i32 168820736, ptr @ix86_arch_string, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1414, ptr @.str.1415, i16 870, i8 5, i32 -1, i32 168820736, ptr @ix86_asm_string, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1416, ptr @.str.1417, i16 870, i8 4, i32 767, i32 17825792, ptr @ix86_isa_flags, i32 3, i32 32 }, %struct.cl_option { ptr @.str.1418, ptr @.str.1419, i16 870, i8 13, i32 -1, i32 168820736, ptr @ix86_branch_cost_string, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1420, ptr @.str.1421, i16 870, i8 4, i32 769, i32 22020096, ptr @target_flags, i32 3, i32 16 }, %struct.cl_option { ptr @.str.1422, ptr @.str.1423, i16 870, i8 8, i32 -1, i32 168820736, ptr @ix86_cmodel_string, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1424, ptr @.str.1425, i16 870, i8 6, i32 771, i32 22020096, ptr @ix86_isa_flags, i32 3, i32 64 }, %struct.cl_option { ptr @.str.1426, ptr @.str.1427, i16 870, i8 5, i32 772, i32 22020096, ptr @ix86_isa_flags, i32 3, i32 128 }, %struct.cl_option { ptr @.str.1428, ptr @.str.1429, i16 870, i8 15, i32 -1, i32 156237824, ptr @target_flags, i32 2, i32 4096 }, %struct.cl_option { ptr @.str.1430, ptr @.str.1431, i16 870, i8 4, i32 774, i32 17825792, ptr @ix86_isa_flags, i32 3, i32 256 }, %struct.cl_option { ptr @.str.1432, ptr @.str.1433, i16 870, i8 5, i32 775, i32 22020096, ptr @ix86_isa_flags, i32 3, i32 512 }, %struct.cl_option { ptr @.str.1434, ptr @.str.1435, i16 870, i8 11, i32 776, i32 17825792, ptr @ix86_force_drap, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1436, ptr @.str.1437, i16 870, i8 14, i32 777, i32 22020096, ptr @target_flags, i32 3, i32 32 }, %struct.cl_option { ptr @.str.1438, ptr @.str.1439, i16 870, i8 8, i32 -1, i32 168820736, ptr @ix86_fpmath_string, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1440, ptr @.str.1441, i16 870, i8 11, i32 779, i32 22020096, ptr @target_flags, i32 3, i32 64 }, %struct.cl_option { ptr @.str.1442, ptr @.str.1443, i16 870, i8 6, i32 -1, i32 152043520, ptr @linux_uclibc, i32 2, i32 1 }, %struct.cl_option { ptr @.str.1444, ptr @.str.1391, i16 870, i8 11, i32 -1, i32 139460608, ptr @target_flags, i32 3, i32 2 }, %struct.cl_option { ptr @.str.1445, ptr @.str.1446, i16 870, i8 8, i32 782, i32 22020096, ptr @target_flags, i32 3, i32 128 }, %struct.cl_option { ptr @.str.1447, ptr @.str.1448, i16 870, i8 25, i32 -1, i32 168820736, ptr @ix86_incoming_stack_boundary_string, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1449, ptr @.str.1450, i16 870, i8 21, i32 784, i32 22020096, ptr @target_flags, i32 3, i32 256 }, %struct.cl_option { ptr @.str.1451, ptr @.str.1452, i16 870, i8 29, i32 785, i32 22020096, ptr @target_flags, i32 3, i32 512 }, %struct.cl_option { ptr @.str.1453, ptr null, i16 870, i8 13, i32 786, i32 1074790400, ptr @VAR_mintel_syntax, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1454, ptr @.str.1455, i16 870, i8 22, i32 -1, i32 168820736, ptr @ix86_section_threshold_string, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1456, ptr @.str.1457, i16 870, i8 4, i32 788, i32 22020096, ptr @ix86_isa_flags, i32 3, i32 1024 }, %struct.cl_option { ptr @.str.1458, ptr @.str.1459, i16 870, i8 4, i32 789, i32 22020096, ptr @ix86_isa_flags, i32 3, i32 2048 }, %struct.cl_option { ptr @.str.1460, ptr @.str.1461, i16 870, i8 6, i32 790, i32 22020096, ptr @ix86_isa_flags, i32 3, i32 4096 }, %struct.cl_option { ptr @.str.1462, ptr @.str.1463, i16 870, i8 13, i32 791, i32 22020096, ptr @target_flags, i32 3, i32 1024 }, %struct.cl_option { ptr @.str.1464, ptr null, i16 870, i8 19, i32 -1, i32 1229979648, ptr @target_flags, i32 3, i32 2048 }, %struct.cl_option { ptr @.str.1465, ptr null, i16 870, i8 18, i32 -1, i32 1229979648, ptr @target_flags, i32 3, i32 4096 }, %struct.cl_option { ptr @.str.1466, ptr null, i16 870, i8 13, i32 -1, i32 1229979648, ptr @target_flags, i32 3, i32 8192 }, %struct.cl_option { ptr @.str.1467, ptr null, i16 870, i8 12, i32 -1, i32 1229979648, ptr @target_flags, i32 3, i32 16384 }, %struct.cl_option { ptr @.str.1468, ptr @.str.1469, i16 870, i8 8, i32 -1, i32 156237824, ptr @ix86_isa_flags, i32 2, i32 524288 }, %struct.cl_option { ptr @.str.1470, ptr @.str.1471, i16 870, i8 24, i32 797, i32 22020096, ptr @target_flags, i32 3, i32 32768 }, %struct.cl_option { ptr @.str.1472, ptr @.str.1473, i16 870, i8 3, i32 -1, i32 185597952, ptr @ix87_precision_string, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1474, ptr @.str.1475, i16 798, i8 7, i32 799, i32 22020096, ptr @ix86_isa_flags, i32 3, i32 8192 }, %struct.cl_option { ptr @.str.1476, ptr @.str.1477, i16 870, i8 7, i32 800, i32 22020096, ptr @ix86_isa_flags, i32 3, i32 16384 }, %struct.cl_option { ptr @.str.1478, ptr @.str.1479, i16 870, i8 26, i32 -1, i32 168820736, ptr @ix86_preferred_stack_boundary_string, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1480, ptr @.str.1481, i16 870, i8 10, i32 802, i32 22020096, ptr @target_flags, i32 2, i32 8192 }, %struct.cl_option { ptr @.str.1482, ptr @.str.1483, i16 870, i8 6, i32 803, i32 22020096, ptr @target_flags, i32 3, i32 65536 }, %struct.cl_option { ptr @.str.1484, ptr @.str.1485, i16 870, i8 9, i32 -1, i32 156237824, ptr @target_flags, i32 2, i32 16384 }, %struct.cl_option { ptr @.str.1486, ptr @.str.1487, i16 870, i8 9, i32 -1, i32 168820736, ptr @ix86_regparm_string, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1488, ptr @.str.1489, i16 870, i8 4, i32 806, i32 22020096, ptr @target_flags, i32 3, i32 131072 }, %struct.cl_option { ptr @.str.1490, ptr @.str.1491, i16 870, i8 5, i32 807, i32 22020096, ptr @ix86_isa_flags, i32 3, i32 32768 }, %struct.cl_option { ptr @.str.1492, ptr @.str.1493, i16 870, i8 11, i32 808, i32 5242880, ptr @target_flags, i32 2, i32 2 }, %struct.cl_option { ptr @.str.1494, ptr @.str.1495, i16 870, i8 4, i32 809, i32 22020096, ptr @ix86_isa_flags, i32 3, i32 65536 }, %struct.cl_option { ptr @.str.1496, ptr @.str.1497, i16 870, i8 5, i32 810, i32 22020096, ptr @ix86_isa_flags, i32 3, i32 131072 }, %struct.cl_option { ptr @.str.1498, ptr @.str.1499, i16 870, i8 8, i32 811, i32 17825792, ptr @ix86_sse2avx, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1500, ptr @.str.1501, i16 870, i8 5, i32 812, i32 22020096, ptr @ix86_isa_flags, i32 3, i32 262144 }, %struct.cl_option { ptr @.str.1502, ptr @.str.1503, i16 870, i8 5, i32 -1, i32 156237824, ptr @ix86_isa_flags, i32 3, i32 1048576 }, %struct.cl_option { ptr @.str.1504, ptr @.str.1505, i16 870, i8 7, i32 814, i32 22020096, ptr @ix86_isa_flags, i32 3, i32 524288 }, %struct.cl_option { ptr @.str.1506, ptr @.str.1503, i16 870, i8 7, i32 815, i32 22020096, ptr @ix86_isa_flags, i32 3, i32 1048576 }, %struct.cl_option { ptr @.str.1507, ptr @.str.1508, i16 870, i8 6, i32 816, i32 22020096, ptr @ix86_isa_flags, i32 3, i32 2097152 }, %struct.cl_option { ptr @.str.1509, ptr @.str.1510, i16 870, i8 11, i32 -1, i32 139460608, ptr @target_flags, i32 3, i32 262144 }, %struct.cl_option { ptr @.str.1511, ptr @.str.1512, i16 870, i8 6, i32 818, i32 22020096, ptr @ix86_isa_flags, i32 3, i32 4194304 }, %struct.cl_option { ptr @.str.1513, ptr @.str.1514, i16 870, i8 16, i32 819, i32 22020096, ptr @target_flags, i32 3, i32 524288 }, %struct.cl_option { ptr @.str.1515, ptr @.str.1516, i16 870, i8 13, i32 820, i32 17825792, ptr @ix86_force_align_arg_pointer, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1517, ptr @.str.1518, i16 870, i8 19, i32 -1, i32 168820736, ptr @ix86_stringop_string, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1519, ptr @.str.1520, i16 870, i8 13, i32 -1, i32 168820736, ptr @ix86_tls_dialect_string, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1521, ptr @.str.1522, i16 870, i8 20, i32 823, i32 17825792, ptr @target_flags, i32 3, i32 1048576 }, %struct.cl_option { ptr @.str.1523, ptr @.str.1524, i16 870, i8 6, i32 -1, i32 168820736, ptr @ix86_tune_string, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1525, ptr @.str.1526, i16 870, i8 7, i32 -1, i32 152043520, ptr @linux_uclibc, i32 3, i32 1 }, %struct.cl_option { ptr @.str.1527, ptr @.str.1528, i16 870, i8 11, i32 -1, i32 168820736, ptr @ix86_veclibabi_string, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1529, ptr @.str.1530, i16 870, i8 4, i32 827, i32 22020096, ptr @ix86_isa_flags, i32 3, i32 8388608 }, %struct.cl_option { ptr @.str.1531, ptr @.str.1532, i16 870, i8 5, i32 243, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1533, ptr @.str.1534, i16 870, i8 8, i32 -1, i32 134217935, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1535, ptr @.str.1536, i16 870, i8 10, i32 -1, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1537, ptr null, i16 870, i8 8, i32 -1, i32 1, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1538, ptr @.str.1539, i16 870, i8 1, i32 -1, i32 102760654, ptr null, i32 4, i32 0 }, %struct.cl_option { ptr @.str.1540, ptr @.str.1541, i16 870, i8 1, i32 -1, i32 2097152, ptr @profile_flag, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1542, ptr @.str.1543, i16 870, i8 8, i32 -1, i32 2097350, ptr @pedantic, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1544, ptr @.str.1545, i16 870, i8 15, i32 -1, i32 2097350, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1546, ptr @.str.1547, i16 870, i8 3, i32 841, i32 136314880, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1548, ptr @.str.1549, i16 870, i8 23, i32 -1, i32 192, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1550, ptr @.str.1551, i16 870, i8 18, i32 -1, i32 198, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1552, ptr @.str.1553, i16 870, i8 5, i32 -1, i32 2097152, ptr @quiet_flag, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1554, ptr @.str.1555, i16 870, i8 5, i32 -1, i32 198, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1556, ptr @.str.1557, i16 870, i8 6, i32 836, i32 136314880, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1558, ptr @.str.1559, i16 870, i8 18, i32 -1, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1560, ptr @.str.1561, i16 870, i8 9, i32 -1, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1562, ptr @.str.1563, i16 870, i8 9, i32 -1, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1564, ptr @.str.1565, i16 870, i8 7, i32 -1, i32 66, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1566, ptr @.str.1565, i16 870, i8 7, i32 -1, i32 66, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1567, ptr @.str.1568, i16 870, i8 7, i32 -1, i32 66, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1569, ptr @.str.1570, i16 870, i8 7, i32 -1, i32 66, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1571, ptr @.str.1572, i16 870, i8 9, i32 -1, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1573, ptr @.str.1574, i16 870, i8 9, i32 -1, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1575, ptr @.str.1576, i16 870, i8 7, i32 -1, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1577, ptr @.str.1578, i16 870, i8 7, i32 -1, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1579, ptr @.str.1580, i16 870, i8 11, i32 -1, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1581, ptr @.str.1582, i16 870, i8 11, i32 -1, i32 132, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1583, ptr @.str.1584, i16 870, i8 9, i32 -1, i32 66, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1585, ptr @.str.1584, i16 870, i8 9, i32 -1, i32 66, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1586, ptr @.str.1587, i16 870, i8 9, i32 -1, i32 66, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1588, ptr @.str.1589, i16 870, i8 9, i32 -1, i32 66, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1590, ptr @.str.1565, i16 870, i8 16, i32 -1, i32 66, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1591, ptr @.str.1592, i16 870, i8 18, i32 -1, i32 66, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1593, ptr @.str.1568, i16 870, i8 16, i32 -1, i32 66, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1594, ptr @.str.1595, i16 870, i8 16, i32 -1, i32 66, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1596, ptr @.str.1597, i16 870, i8 10, i32 -1, i32 8, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1598, ptr @.str.1599, i16 870, i8 15, i32 -1, i32 198, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1600, ptr @.str.1601, i16 870, i8 9, i32 -1, i32 198, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1602, ptr @.str.1603, i16 870, i8 5, i32 -1, i32 206, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1604, ptr @.str.1605, i16 870, i8 1, i32 -1, i32 2097358, ptr null, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1606, ptr @.str.1607, i16 870, i8 7, i32 -1, i32 2097168, ptr @version_flag, i32 0, i32 0 }, %struct.cl_option { ptr @.str.1608, ptr @.str.1609, i16 870, i8 1, i32 -1, i32 2097350, ptr @inhibit_warnings, i32 0, i32 0 }], align 16
@.str.8 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Display this information\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"--help=\00", align 1
@.str.11 = private unnamed_addr constant [146 x i8] c"--help=<class>\09Display descriptions of a specific class of options.  <class> is one or more of optimizers, target, warnings, undocumented, params\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"--output-pch=\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"--param\00", align 1
@.str.14 = private unnamed_addr constant [101 x i8] c"--param <param>=<value>\09Set parameter <param> to value.  See below for a complete list of parameters\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"--target-help\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"Alias for --help=target\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"-A\00", align 1
@.str.19 = private unnamed_addr constant [124 x i8] c"-A<question>=<answer>\09Assert the <answer> to <question>.  Putting '-' before <question> disables the <answer> to <question>\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"-C\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"Do not discard comments\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"-CC\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"Do not discard comments in macro expansions\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"-D\00", align 1
@.str.25 = private unnamed_addr constant [110 x i8] c"-D<macro>[=<val>]\09Define a <macro> with <val> as its value.  If just <macro> is given, <val> is taken to be 1\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"-E\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"-F\00", align 1
@.str.28 = private unnamed_addr constant [65 x i8] c"-F <dir>\09Add <dir> to the end of the main framework include path\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"-G\00", align 1
@.str.30 = private unnamed_addr constant [107 x i8] c"-G<number>\09Put global and static data smaller than <number> bytes into a special section (on some targets)\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"-H\00", align 1
@.str.32 = private unnamed_addr constant [48 x i8] c"Print the name of header files as they are used\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"-I\00", align 1
@.str.34 = private unnamed_addr constant [55 x i8] c"-I <dir>\09Add <dir> to the end of the main include path\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"-J\00", align 1
@.str.36 = private unnamed_addr constant [46 x i8] c"-J<directory>\09Put MODULE files in 'directory'\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"-M\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"Generate make dependencies\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"-MD\00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"Generate make dependencies and compile\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"-MD_\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"-MF\00", align 1
@.str.43 = private unnamed_addr constant [53 x i8] c"-MF <file>\09Write dependency output to the given file\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"-MG\00", align 1
@.str.45 = private unnamed_addr constant [46 x i8] c"Treat missing header files as generated files\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"-MM\00", align 1
@.str.47 = private unnamed_addr constant [39 x i8] c"Like -M but ignore system header files\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"-MMD\00", align 1
@.str.49 = private unnamed_addr constant [40 x i8] c"Like -MD but ignore system header files\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"-MMD_\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"-MP\00", align 1
@.str.52 = private unnamed_addr constant [39 x i8] c"Generate phony targets for all headers\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"-MQ\00", align 1
@.str.54 = private unnamed_addr constant [38 x i8] c"-MQ <target>\09Add a MAKE-quoted target\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"-MT\00", align 1
@.str.56 = private unnamed_addr constant [36 x i8] c"-MT <target>\09Add an unquoted target\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"-O\00", align 1
@.str.58 = private unnamed_addr constant [46 x i8] c"-O<number>\09Set optimization level to <number>\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"-Os\00", align 1
@.str.60 = private unnamed_addr constant [37 x i8] c"Optimize for space rather than speed\00", align 1
@.str.61 = private unnamed_addr constant [3 x i8] c"-P\00", align 1
@.str.62 = private unnamed_addr constant [33 x i8] c"Do not generate #line directives\00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c"-U\00", align 1
@.str.64 = private unnamed_addr constant [27 x i8] c"-U<macro>\09Undefine <macro>\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"-W\00", align 1
@.str.66 = private unnamed_addr constant [47 x i8] c"This switch is deprecated; use -Wextra instead\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"-Wabi\00", align 1
@.str.68 = private unnamed_addr constant [81 x i8] c"Warn about things that will change when compiling with an ABI-compliant compiler\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"-Waddress\00", align 1
@.str.70 = private unnamed_addr constant [47 x i8] c"Warn about suspicious uses of memory addresses\00", align 1
@.str.71 = private unnamed_addr constant [19 x i8] c"-Waggregate-return\00", align 1
@.str.72 = private unnamed_addr constant [50 x i8] c"Warn about returning structures, unions or arrays\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"-Waliasing\00", align 1
@.str.74 = private unnamed_addr constant [48 x i8] c"Warn about possible aliasing of dummy arguments\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"-Walign-commons\00", align 1
@.str.76 = private unnamed_addr constant [38 x i8] c"Warn about alignment of COMMON blocks\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"-Wall\00", align 1
@.str.78 = private unnamed_addr constant [29 x i8] c"Enable most warning messages\00", align 1
@.str.79 = private unnamed_addr constant [18 x i8] c"-Wall-deprecation\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"-Wall-javadoc\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"-Wampersand\00", align 1
@.str.82 = private unnamed_addr constant [62 x i8] c"Warn about missing ampersand in continued character constants\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"-Warray-bounds\00", align 1
@.str.84 = private unnamed_addr constant [43 x i8] c"Warn if an array is accessed out of bounds\00", align 1
@.str.85 = private unnamed_addr constant [20 x i8] c"-Warray-temporaries\00", align 1
@.str.86 = private unnamed_addr constant [41 x i8] c"Warn about creation of array temporaries\00", align 1
@.str.87 = private unnamed_addr constant [20 x i8] c"-Wassert-identifier\00", align 1
@.str.88 = private unnamed_addr constant [19 x i8] c"-Wassign-intercept\00", align 1
@.str.89 = private unnamed_addr constant [86 x i8] c"Warn whenever an Objective-C assignment is being intercepted by the garbage collector\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"-Wattributes\00", align 1
@.str.91 = private unnamed_addr constant [41 x i8] c"Warn about inappropriate attribute usage\00", align 1
@.str.92 = private unnamed_addr constant [20 x i8] c"-Wbad-function-cast\00", align 1
@.str.93 = private unnamed_addr constant [51 x i8] c"Warn about casting functions to incompatible types\00", align 1
@.str.94 = private unnamed_addr constant [9 x i8] c"-Wboxing\00", align 1
@.str.95 = private unnamed_addr constant [26 x i8] c"-Wbuiltin-macro-redefined\00", align 1
@.str.96 = private unnamed_addr constant [66 x i8] c"Warn when a built-in preprocessor macro is undefined or redefined\00", align 1
@.str.97 = private unnamed_addr constant [13 x i8] c"-Wc++-compat\00", align 1
@.str.98 = private unnamed_addr constant [71 x i8] c"Warn about C constructs that are not in the common subset of C and C++\00", align 1
@.str.99 = private unnamed_addr constant [15 x i8] c"-Wc++0x-compat\00", align 1
@.str.100 = private unnamed_addr constant [86 x i8] c"Warn about C++ constructs whose meaning differs between ISO C++ 1998 and ISO C++ 200x\00", align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"-Wcast-align\00", align 1
@.str.102 = private unnamed_addr constant [50 x i8] c"Warn about pointer casts which increase alignment\00", align 1
@.str.103 = private unnamed_addr constant [12 x i8] c"-Wcast-qual\00", align 1
@.str.104 = private unnamed_addr constant [42 x i8] c"Warn about casts which discard qualifiers\00", align 1
@.str.105 = private unnamed_addr constant [14 x i8] c"-Wchar-concat\00", align 1
@.str.106 = private unnamed_addr constant [18 x i8] c"-Wchar-subscripts\00", align 1
@.str.107 = private unnamed_addr constant [43 x i8] c"Warn about subscripts whose type is \22char\22\00", align 1
@.str.108 = private unnamed_addr constant [23 x i8] c"-Wcharacter-truncation\00", align 1
@.str.109 = private unnamed_addr constant [43 x i8] c"Warn about truncated character expressions\00", align 1
@.str.110 = private unnamed_addr constant [12 x i8] c"-Wclobbered\00", align 1
@.str.111 = private unnamed_addr constant [67 x i8] c"Warn about variables that might be changed by \22longjmp\22 or \22vfork\22\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"-Wcomment\00", align 1
@.str.113 = private unnamed_addr constant [97 x i8] c"Warn about possibly nested block comments, and C++ comments spanning more than one physical line\00", align 1
@.str.114 = private unnamed_addr constant [11 x i8] c"-Wcomments\00", align 1
@.str.115 = private unnamed_addr constant [22 x i8] c"Synonym for -Wcomment\00", align 1
@.str.116 = private unnamed_addr constant [19 x i8] c"-Wcondition-assign\00", align 1
@.str.117 = private unnamed_addr constant [19 x i8] c"-Wconstructor-name\00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c"-Wconversion\00", align 1
@.str.119 = private unnamed_addr constant [59 x i8] c"Warn for implicit type conversions that may change a value\00", align 1
@.str.120 = private unnamed_addr constant [18 x i8] c"-Wconversion-null\00", align 1
@.str.121 = private unnamed_addr constant [52 x i8] c"Warn for converting NULL from/to a non-pointer type\00", align 1
@.str.122 = private unnamed_addr constant [20 x i8] c"-Wcoverage-mismatch\00", align 1
@.str.123 = private unnamed_addr constant [69 x i8] c"Warn instead of error in case profiles in -fprofile-use do not match\00", align 1
@.str.124 = private unnamed_addr constant [20 x i8] c"-Wctor-dtor-privacy\00", align 1
@.str.125 = private unnamed_addr constant [55 x i8] c"Warn when all constructors and destructors are private\00", align 1
@.str.126 = private unnamed_addr constant [30 x i8] c"-Wdeclaration-after-statement\00", align 1
@.str.127 = private unnamed_addr constant [51 x i8] c"Warn when a declaration is found after a statement\00", align 1
@.str.128 = private unnamed_addr constant [10 x i8] c"-Wdep-ann\00", align 1
@.str.129 = private unnamed_addr constant [13 x i8] c"-Wdeprecated\00", align 1
@.str.130 = private unnamed_addr constant [71 x i8] c"Warn if a deprecated compiler feature, class, method, or field is used\00", align 1
@.str.131 = private unnamed_addr constant [26 x i8] c"-Wdeprecated-declarations\00", align 1
@.str.132 = private unnamed_addr constant [60 x i8] c"Warn about uses of __attribute__((deprecated)) declarations\00", align 1
@.str.133 = private unnamed_addr constant [24 x i8] c"-Wdisabled-optimization\00", align 1
@.str.134 = private unnamed_addr constant [43 x i8] c"Warn when an optimization pass is disabled\00", align 1
@.str.135 = private unnamed_addr constant [14 x i8] c"-Wdiscouraged\00", align 1
@.str.136 = private unnamed_addr constant [14 x i8] c"-Wdiv-by-zero\00", align 1
@.str.137 = private unnamed_addr constant [49 x i8] c"Warn about compile-time integer division by zero\00", align 1
@.str.138 = private unnamed_addr constant [9 x i8] c"-Weffc++\00", align 1
@.str.139 = private unnamed_addr constant [51 x i8] c"Warn about violations of Effective C++ style rules\00", align 1
@.str.140 = private unnamed_addr constant [14 x i8] c"-Wempty-block\00", align 1
@.str.141 = private unnamed_addr constant [13 x i8] c"-Wempty-body\00", align 1
@.str.142 = private unnamed_addr constant [52 x i8] c"Warn about an empty body in an if or else statement\00", align 1
@.str.143 = private unnamed_addr constant [15 x i8] c"-Wendif-labels\00", align 1
@.str.144 = private unnamed_addr constant [47 x i8] c"Warn about stray tokens after #elif and #endif\00", align 1
@.str.145 = private unnamed_addr constant [15 x i8] c"-Wenum-compare\00", align 1
@.str.146 = private unnamed_addr constant [46 x i8] c"Warn about comparison of different enum types\00", align 1
@.str.147 = private unnamed_addr constant [18 x i8] c"-Wenum-identifier\00", align 1
@.str.148 = private unnamed_addr constant [14 x i8] c"-Wenum-switch\00", align 1
@.str.149 = private unnamed_addr constant [8 x i8] c"-Werror\00", align 1
@.str.150 = private unnamed_addr constant [29 x i8] c"Treat all warnings as errors\00", align 1
@.str.151 = private unnamed_addr constant [38 x i8] c"-Werror-implicit-function-declaration\00", align 1
@.str.152 = private unnamed_addr constant [77 x i8] c"This switch is deprecated; use -Werror=implicit-function-declaration instead\00", align 1
@.str.153 = private unnamed_addr constant [9 x i8] c"-Werror=\00", align 1
@.str.154 = private unnamed_addr constant [33 x i8] c"Treat specified warning as error\00", align 1
@.str.155 = private unnamed_addr constant [8 x i8] c"-Wextra\00", align 1
@.str.156 = private unnamed_addr constant [41 x i8] c"Print extra (possibly unwanted) warnings\00", align 1
@.str.157 = private unnamed_addr constant [23 x i8] c"-Wextraneous-semicolon\00", align 1
@.str.158 = private unnamed_addr constant [46 x i8] c"Warn if deprecated empty statements are found\00", align 1
@.str.159 = private unnamed_addr constant [14 x i8] c"-Wfallthrough\00", align 1
@.str.160 = private unnamed_addr constant [15 x i8] c"-Wfatal-errors\00", align 1
@.str.161 = private unnamed_addr constant [33 x i8] c"Exit on the first error occurred\00", align 1
@.str.162 = private unnamed_addr constant [15 x i8] c"-Wfield-hiding\00", align 1
@.str.163 = private unnamed_addr constant [14 x i8] c"-Wfinal-bound\00", align 1
@.str.164 = private unnamed_addr constant [10 x i8] c"-Wfinally\00", align 1
@.str.165 = private unnamed_addr constant [14 x i8] c"-Wfloat-equal\00", align 1
@.str.166 = private unnamed_addr constant [52 x i8] c"Warn if testing floating point numbers for equality\00", align 1
@.str.167 = private unnamed_addr constant [12 x i8] c"-Wforbidden\00", align 1
@.str.168 = private unnamed_addr constant [9 x i8] c"-Wformat\00", align 1
@.str.169 = private unnamed_addr constant [65 x i8] c"Warn about printf/scanf/strftime/strfmon format string anomalies\00", align 1
@.str.170 = private unnamed_addr constant [22 x i8] c"-Wformat-contains-nul\00", align 1
@.str.171 = private unnamed_addr constant [49 x i8] c"Warn about format strings that contain NUL bytes\00", align 1
@.str.172 = private unnamed_addr constant [20 x i8] c"-Wformat-extra-args\00", align 1
@.str.173 = private unnamed_addr constant [71 x i8] c"Warn if passing too many arguments to a function for its format string\00", align 1
@.str.174 = private unnamed_addr constant [20 x i8] c"-Wformat-nonliteral\00", align 1
@.str.175 = private unnamed_addr constant [48 x i8] c"Warn about format strings that are not literals\00", align 1
@.str.176 = private unnamed_addr constant [18 x i8] c"-Wformat-security\00", align 1
@.str.177 = private unnamed_addr constant [60 x i8] c"Warn about possible security problems with format functions\00", align 1
@.str.178 = private unnamed_addr constant [13 x i8] c"-Wformat-y2k\00", align 1
@.str.179 = private unnamed_addr constant [51 x i8] c"Warn about strftime formats yielding 2-digit years\00", align 1
@.str.180 = private unnamed_addr constant [21 x i8] c"-Wformat-zero-length\00", align 1
@.str.181 = private unnamed_addr constant [31 x i8] c"Warn about zero-length formats\00", align 1
@.str.182 = private unnamed_addr constant [10 x i8] c"-Wformat=\00", align 1
@.str.183 = private unnamed_addr constant [21 x i8] c"-Wframe-larger-than=\00", align 1
@.str.184 = private unnamed_addr constant [96 x i8] c"-Wframe-larger-than=<number>\09Warn if a function's stack frame requires more than <number> bytes\00", align 1
@.str.185 = private unnamed_addr constant [9 x i8] c"-Whiding\00", align 1
@.str.186 = private unnamed_addr constant [21 x i8] c"-Wignored-qualifiers\00", align 1
@.str.187 = private unnamed_addr constant [43 x i8] c"Warn whenever type qualifiers are ignored.\00", align 1
@.str.188 = private unnamed_addr constant [11 x i8] c"-Wimplicit\00", align 1
@.str.189 = private unnamed_addr constant [32 x i8] c"-Wimplicit-function-declaration\00", align 1
@.str.190 = private unnamed_addr constant [42 x i8] c"Warn about implicit function declarations\00", align 1
@.str.191 = private unnamed_addr constant [15 x i8] c"-Wimplicit-int\00", align 1
@.str.192 = private unnamed_addr constant [48 x i8] c"Warn when a declaration does not specify a type\00", align 1
@.str.193 = private unnamed_addr constant [21 x i8] c"-Wimplicit-interface\00", align 1
@.str.194 = private unnamed_addr constant [41 x i8] c"Warn about calls with implicit interface\00", align 1
@.str.195 = private unnamed_addr constant [21 x i8] c"-Wimplicit-procedure\00", align 1
@.str.196 = private unnamed_addr constant [53 x i8] c"Warn about called procedures not explicitly declared\00", align 1
@.str.197 = private unnamed_addr constant [9 x i8] c"-Wimport\00", align 1
@.str.198 = private unnamed_addr constant [18 x i8] c"-Windirect-static\00", align 1
@.str.199 = private unnamed_addr constant [12 x i8] c"-Winit-self\00", align 1
@.str.200 = private unnamed_addr constant [57 x i8] c"Warn about variables which are initialized to themselves\00", align 1
@.str.201 = private unnamed_addr constant [9 x i8] c"-Winline\00", align 1
@.str.202 = private unnamed_addr constant [48 x i8] c"Warn when an inlined function cannot be inlined\00", align 1
@.str.203 = private unnamed_addr constant [22 x i8] c"-Wint-to-pointer-cast\00", align 1
@.str.204 = private unnamed_addr constant [75 x i8] c"Warn when there is a cast to a pointer from an integer of a different size\00", align 1
@.str.205 = private unnamed_addr constant [18 x i8] c"-Wintf-annotation\00", align 1
@.str.206 = private unnamed_addr constant [21 x i8] c"-Wintf-non-inherited\00", align 1
@.str.207 = private unnamed_addr constant [19 x i8] c"-Wintrinsic-shadow\00", align 1
@.str.208 = private unnamed_addr constant [59 x i8] c"Warn if a user-procedure has the same name as an intrinsic\00", align 1
@.str.209 = private unnamed_addr constant [17 x i8] c"-Wintrinsics-std\00", align 1
@.str.210 = private unnamed_addr constant [53 x i8] c"Warn on intrinsics not part of the selected standard\00", align 1
@.str.211 = private unnamed_addr constant [19 x i8] c"-Winvalid-offsetof\00", align 1
@.str.212 = private unnamed_addr constant [48 x i8] c"Warn about invalid uses of the \22offsetof\22 macro\00", align 1
@.str.213 = private unnamed_addr constant [14 x i8] c"-Winvalid-pch\00", align 1
@.str.214 = private unnamed_addr constant [49 x i8] c"Warn about PCH files that are found but not used\00", align 1
@.str.215 = private unnamed_addr constant [10 x i8] c"-Wjavadoc\00", align 1
@.str.216 = private unnamed_addr constant [19 x i8] c"-Wjump-misses-init\00", align 1
@.str.217 = private unnamed_addr constant [50 x i8] c"Warn when a jump misses a variable initialization\00", align 1
@.str.218 = private unnamed_addr constant [15 x i8] c"-Wlarger-than-\00", align 1
@.str.219 = private unnamed_addr constant [15 x i8] c"-Wlarger-than=\00", align 1
@.str.220 = private unnamed_addr constant [71 x i8] c"-Wlarger-than=<number>\09Warn if an object is larger than <number> bytes\00", align 1
@.str.221 = private unnamed_addr constant [18 x i8] c"-Wline-truncation\00", align 1
@.str.222 = private unnamed_addr constant [34 x i8] c"Warn about truncated source lines\00", align 1
@.str.223 = private unnamed_addr constant [15 x i8] c"-Wlocal-hiding\00", align 1
@.str.224 = private unnamed_addr constant [13 x i8] c"-Wlogical-op\00", align 1
@.str.225 = private unnamed_addr constant [80 x i8] c"Warn when a logical operator is suspiciously always evaluating to true or false\00", align 1
@.str.226 = private unnamed_addr constant [12 x i8] c"-Wlong-long\00", align 1
@.str.227 = private unnamed_addr constant [51 x i8] c"Do not warn about using \22long long\22 when -pedantic\00", align 1
@.str.228 = private unnamed_addr constant [7 x i8] c"-Wmain\00", align 1
@.str.229 = private unnamed_addr constant [45 x i8] c"Warn about suspicious declarations of \22main\22\00", align 1
@.str.230 = private unnamed_addr constant [21 x i8] c"-Wmasked-catch-block\00", align 1
@.str.231 = private unnamed_addr constant [17 x i8] c"-Wmissing-braces\00", align 1
@.str.232 = private unnamed_addr constant [55 x i8] c"Warn about possibly missing braces around initializers\00", align 1
@.str.233 = private unnamed_addr constant [23 x i8] c"-Wmissing-declarations\00", align 1
@.str.234 = private unnamed_addr constant [58 x i8] c"Warn about global functions without previous declarations\00", align 1
@.str.235 = private unnamed_addr constant [29 x i8] c"-Wmissing-field-initializers\00", align 1
@.str.236 = private unnamed_addr constant [49 x i8] c"Warn about missing fields in struct initializers\00", align 1
@.str.237 = private unnamed_addr constant [27 x i8] c"-Wmissing-format-attribute\00", align 1
@.str.238 = private unnamed_addr constant [69 x i8] c"Warn about functions which might be candidates for format attributes\00", align 1
@.str.239 = private unnamed_addr constant [23 x i8] c"-Wmissing-include-dirs\00", align 1
@.str.240 = private unnamed_addr constant [64 x i8] c"Warn about user-specified include directories that do not exist\00", align 1
@.str.241 = private unnamed_addr constant [19 x i8] c"-Wmissing-noreturn\00", align 1
@.str.242 = private unnamed_addr constant [77 x i8] c"Warn about functions which might be candidates for __attribute__((noreturn))\00", align 1
@.str.243 = private unnamed_addr constant [25 x i8] c"-Wmissing-parameter-type\00", align 1
@.str.244 = private unnamed_addr constant [88 x i8] c"Warn about function parameters declared without a type specifier in K&R-style functions\00", align 1
@.str.245 = private unnamed_addr constant [21 x i8] c"-Wmissing-prototypes\00", align 1
@.str.246 = private unnamed_addr constant [47 x i8] c"Warn about global functions without prototypes\00", align 1
@.str.247 = private unnamed_addr constant [10 x i8] c"-Wmudflap\00", align 1
@.str.248 = private unnamed_addr constant [52 x i8] c"Warn about constructs not instrumented by -fmudflap\00", align 1
@.str.249 = private unnamed_addr constant [12 x i8] c"-Wmultichar\00", align 1
@.str.250 = private unnamed_addr constant [54 x i8] c"Warn about use of multi-character character constants\00", align 1
@.str.251 = private unnamed_addr constant [17 x i8] c"-Wnested-externs\00", align 1
@.str.252 = private unnamed_addr constant [51 x i8] c"Warn about \22extern\22 declarations not at file scope\00", align 1
@.str.253 = private unnamed_addr constant [6 x i8] c"-Wnls\00", align 1
@.str.254 = private unnamed_addr constant [19 x i8] c"-Wno-effect-assign\00", align 1
@.str.255 = private unnamed_addr constant [22 x i8] c"-Wnon-template-friend\00", align 1
@.str.256 = private unnamed_addr constant [74 x i8] c"Warn when non-templatized friend functions are declared within a template\00", align 1
@.str.257 = private unnamed_addr constant [19 x i8] c"-Wnon-virtual-dtor\00", align 1
@.str.258 = private unnamed_addr constant [35 x i8] c"Warn about non-virtual destructors\00", align 1
@.str.259 = private unnamed_addr constant [10 x i8] c"-Wnonnull\00", align 1
@.str.260 = private unnamed_addr constant [76 x i8] c"Warn about NULL being passed to argument slots marked as requiring non-NULL\00", align 1
@.str.261 = private unnamed_addr constant [14 x i8] c"-Wnormalized=\00", align 1
@.str.262 = private unnamed_addr constant [69 x i8] c"-Wnormalized=<id|nfc|nfkc>\09Warn about non-normalised Unicode strings\00", align 1
@.str.263 = private unnamed_addr constant [7 x i8] c"-Wnull\00", align 1
@.str.264 = private unnamed_addr constant [17 x i8] c"-Wold-style-cast\00", align 1
@.str.265 = private unnamed_addr constant [44 x i8] c"Warn if a C-style cast is used in a program\00", align 1
@.str.266 = private unnamed_addr constant [24 x i8] c"-Wold-style-declaration\00", align 1
@.str.267 = private unnamed_addr constant [44 x i8] c"Warn for obsolescent usage in a declaration\00", align 1
@.str.268 = private unnamed_addr constant [23 x i8] c"-Wold-style-definition\00", align 1
@.str.269 = private unnamed_addr constant [50 x i8] c"Warn if an old-style parameter definition is used\00", align 1
@.str.270 = private unnamed_addr constant [14 x i8] c"-Wout-of-date\00", align 1
@.str.271 = private unnamed_addr constant [37 x i8] c"Warn if .class files are out of date\00", align 1
@.str.272 = private unnamed_addr constant [11 x i8] c"-Wover-ann\00", align 1
@.str.273 = private unnamed_addr constant [11 x i8] c"-Woverflow\00", align 1
@.str.274 = private unnamed_addr constant [46 x i8] c"Warn about overflow in arithmetic expressions\00", align 1
@.str.275 = private unnamed_addr constant [21 x i8] c"-Woverlength-strings\00", align 1
@.str.276 = private unnamed_addr constant [86 x i8] c"Warn if a string is longer than the maximum portable length specified by the standard\00", align 1
@.str.277 = private unnamed_addr constant [21 x i8] c"-Woverloaded-virtual\00", align 1
@.str.278 = private unnamed_addr constant [45 x i8] c"Warn about overloaded virtual function names\00", align 1
@.str.279 = private unnamed_addr constant [16 x i8] c"-Woverride-init\00", align 1
@.str.280 = private unnamed_addr constant [56 x i8] c"Warn about overriding initializers without side effects\00", align 1
@.str.281 = private unnamed_addr constant [9 x i8] c"-Wpacked\00", align 1
@.str.282 = private unnamed_addr constant [62 x i8] c"Warn when the packed attribute has no effect on struct layout\00", align 1
@.str.283 = private unnamed_addr constant [25 x i8] c"-Wpacked-bitfield-compat\00", align 1
@.str.284 = private unnamed_addr constant [61 x i8] c"Warn about packed bit-fields whose offset changed in GCC 4.4\00", align 1
@.str.285 = private unnamed_addr constant [9 x i8] c"-Wpadded\00", align 1
@.str.286 = private unnamed_addr constant [57 x i8] c"Warn when padding is required to align structure members\00", align 1
@.str.287 = private unnamed_addr constant [15 x i8] c"-Wparam-assign\00", align 1
@.str.288 = private unnamed_addr constant [14 x i8] c"-Wparentheses\00", align 1
@.str.289 = private unnamed_addr constant [40 x i8] c"Warn about possibly missing parentheses\00", align 1
@.str.290 = private unnamed_addr constant [21 x i8] c"-Wpkg-default-method\00", align 1
@.str.291 = private unnamed_addr constant [18 x i8] c"-Wpmf-conversions\00", align 1
@.str.292 = private unnamed_addr constant [62 x i8] c"Warn when converting the type of pointers to member functions\00", align 1
@.str.293 = private unnamed_addr constant [16 x i8] c"-Wpointer-arith\00", align 1
@.str.294 = private unnamed_addr constant [39 x i8] c"Warn about function pointer arithmetic\00", align 1
@.str.295 = private unnamed_addr constant [15 x i8] c"-Wpointer-sign\00", align 1
@.str.296 = private unnamed_addr constant [59 x i8] c"Warn when a pointer differs in signedness in an assignment\00", align 1
@.str.297 = private unnamed_addr constant [22 x i8] c"-Wpointer-to-int-cast\00", align 1
@.str.298 = private unnamed_addr constant [62 x i8] c"Warn when a pointer is cast to an integer of a different size\00", align 1
@.str.299 = private unnamed_addr constant [10 x i8] c"-Wpragmas\00", align 1
@.str.300 = private unnamed_addr constant [30 x i8] c"Warn about misuses of pragmas\00", align 1
@.str.301 = private unnamed_addr constant [11 x i8] c"-Wprotocol\00", align 1
@.str.302 = private unnamed_addr constant [44 x i8] c"Warn if inherited methods are unimplemented\00", align 1
@.str.303 = private unnamed_addr constant [8 x i8] c"-Wpsabi\00", align 1
@.str.304 = private unnamed_addr constant [6 x i8] c"-Wraw\00", align 1
@.str.305 = private unnamed_addr constant [18 x i8] c"-Wredundant-decls\00", align 1
@.str.306 = private unnamed_addr constant [52 x i8] c"Warn about multiple declarations of the same object\00", align 1
@.str.307 = private unnamed_addr constant [22 x i8] c"-Wredundant-modifiers\00", align 1
@.str.308 = private unnamed_addr constant [51 x i8] c"Warn if modifiers are specified when not necessary\00", align 1
@.str.309 = private unnamed_addr constant [10 x i8] c"-Wreorder\00", align 1
@.str.310 = private unnamed_addr constant [37 x i8] c"Warn when the compiler reorders code\00", align 1
@.str.311 = private unnamed_addr constant [14 x i8] c"-Wreturn-type\00", align 1
@.str.312 = private unnamed_addr constant [103 x i8] c"Warn whenever a function's return type defaults to \22int\22 (C), or about inconsistent return types (C++)\00", align 1
@.str.313 = private unnamed_addr constant [11 x i8] c"-Wselector\00", align 1
@.str.314 = private unnamed_addr constant [40 x i8] c"Warn if a selector has multiple methods\00", align 1
@.str.315 = private unnamed_addr constant [17 x i8] c"-Wsequence-point\00", align 1
@.str.316 = private unnamed_addr constant [55 x i8] c"Warn about possible violations of sequence point rules\00", align 1
@.str.317 = private unnamed_addr constant [9 x i8] c"-Wserial\00", align 1
@.str.318 = private unnamed_addr constant [9 x i8] c"-Wshadow\00", align 1
@.str.319 = private unnamed_addr constant [45 x i8] c"Warn when one local variable shadows another\00", align 1
@.str.320 = private unnamed_addr constant [15 x i8] c"-Wsign-compare\00", align 1
@.str.321 = private unnamed_addr constant [39 x i8] c"Warn about signed-unsigned comparisons\00", align 1
@.str.322 = private unnamed_addr constant [18 x i8] c"-Wsign-conversion\00", align 1
@.str.323 = private unnamed_addr constant [72 x i8] c"Warn for implicit type conversions between signed and unsigned integers\00", align 1
@.str.324 = private unnamed_addr constant [13 x i8] c"-Wsign-promo\00", align 1
@.str.325 = private unnamed_addr constant [52 x i8] c"Warn when overload promotes from unsigned to signed\00", align 1
@.str.326 = private unnamed_addr constant [23 x i8] c"-Wspecial-param-hiding\00", align 1
@.str.327 = private unnamed_addr constant [18 x i8] c"-Wstack-protector\00", align 1
@.str.328 = private unnamed_addr constant [64 x i8] c"Warn when not issuing stack smashing protection for some reason\00", align 1
@.str.329 = private unnamed_addr constant [16 x i8] c"-Wstatic-access\00", align 1
@.str.330 = private unnamed_addr constant [18 x i8] c"-Wstatic-receiver\00", align 1
@.str.331 = private unnamed_addr constant [18 x i8] c"-Wstrict-aliasing\00", align 1
@.str.332 = private unnamed_addr constant [56 x i8] c"Warn about code which might break strict aliasing rules\00", align 1
@.str.333 = private unnamed_addr constant [19 x i8] c"-Wstrict-aliasing=\00", align 1
@.str.334 = private unnamed_addr constant [23 x i8] c"-Wstrict-null-sentinel\00", align 1
@.str.335 = private unnamed_addr constant [42 x i8] c"Warn about uncasted NULL used as sentinel\00", align 1
@.str.336 = private unnamed_addr constant [18 x i8] c"-Wstrict-overflow\00", align 1
@.str.337 = private unnamed_addr constant [71 x i8] c"Warn about optimizations that assume that signed overflow is undefined\00", align 1
@.str.338 = private unnamed_addr constant [19 x i8] c"-Wstrict-overflow=\00", align 1
@.str.339 = private unnamed_addr constant [20 x i8] c"-Wstrict-prototypes\00", align 1
@.str.340 = private unnamed_addr constant [46 x i8] c"Warn about unprototyped function declarations\00", align 1
@.str.341 = private unnamed_addr constant [24 x i8] c"-Wstrict-selector-match\00", align 1
@.str.342 = private unnamed_addr constant [66 x i8] c"Warn if type signatures of candidate methods do not match exactly\00", align 1
@.str.343 = private unnamed_addr constant [11 x i8] c"-Wsuppress\00", align 1
@.str.344 = private unnamed_addr constant [13 x i8] c"-Wsurprising\00", align 1
@.str.345 = private unnamed_addr constant [35 x i8] c"Warn about \22suspicious\22 constructs\00", align 1
@.str.346 = private unnamed_addr constant [9 x i8] c"-Wswitch\00", align 1
@.str.347 = private unnamed_addr constant [64 x i8] c"Warn about enumerated switches, with no default, missing a case\00", align 1
@.str.348 = private unnamed_addr constant [17 x i8] c"-Wswitch-default\00", align 1
@.str.349 = private unnamed_addr constant [62 x i8] c"Warn about enumerated switches missing a \22default:\22 statement\00", align 1
@.str.350 = private unnamed_addr constant [14 x i8] c"-Wswitch-enum\00", align 1
@.str.351 = private unnamed_addr constant [59 x i8] c"Warn about all enumerated switches missing a specific case\00", align 1
@.str.352 = private unnamed_addr constant [12 x i8] c"-Wsync-nand\00", align 1
@.str.353 = private unnamed_addr constant [86 x i8] c"Warn when __sync_fetch_and_nand and __sync_nand_and_fetch built-in functions are used\00", align 1
@.str.354 = private unnamed_addr constant [8 x i8] c"-Wsynth\00", align 1
@.str.355 = private unnamed_addr constant [39 x i8] c"Deprecated.  This switch has no effect\00", align 1
@.str.356 = private unnamed_addr constant [19 x i8] c"-Wsynthetic-access\00", align 1
@.str.357 = private unnamed_addr constant [17 x i8] c"-Wsystem-headers\00", align 1
@.str.358 = private unnamed_addr constant [45 x i8] c"Do not suppress warnings from system headers\00", align 1
@.str.359 = private unnamed_addr constant [7 x i8] c"-Wtabs\00", align 1
@.str.360 = private unnamed_addr constant [47 x i8] c"Permit nonconforming uses of the tab character\00", align 1
@.str.361 = private unnamed_addr constant [8 x i8] c"-Wtasks\00", align 1
@.str.362 = private unnamed_addr constant [14 x i8] c"-Wtraditional\00", align 1
@.str.363 = private unnamed_addr constant [49 x i8] c"Warn about features not present in traditional C\00", align 1
@.str.364 = private unnamed_addr constant [25 x i8] c"-Wtraditional-conversion\00", align 1
@.str.365 = private unnamed_addr constant [105 x i8] c"Warn of prototypes causing type conversions different from what would happen in the absence of prototype\00", align 1
@.str.366 = private unnamed_addr constant [12 x i8] c"-Wtrigraphs\00", align 1
@.str.367 = private unnamed_addr constant [79 x i8] c"Warn if trigraphs are encountered that might affect the meaning of the program\00", align 1
@.str.368 = private unnamed_addr constant [14 x i8] c"-Wtype-hiding\00", align 1
@.str.369 = private unnamed_addr constant [14 x i8] c"-Wtype-limits\00", align 1
@.str.370 = private unnamed_addr constant [94 x i8] c"Warn if a comparison is always true or always false due to the limited range of the data type\00", align 1
@.str.371 = private unnamed_addr constant [10 x i8] c"-Wuncheck\00", align 1
@.str.372 = private unnamed_addr constant [22 x i8] c"-Wundeclared-selector\00", align 1
@.str.373 = private unnamed_addr constant [60 x i8] c"Warn about @selector()s without previously declared methods\00", align 1
@.str.374 = private unnamed_addr constant [8 x i8] c"-Wundef\00", align 1
@.str.375 = private unnamed_addr constant [55 x i8] c"Warn if an undefined macro is used in an #if directive\00", align 1
@.str.376 = private unnamed_addr constant [12 x i8] c"-Wunderflow\00", align 1
@.str.377 = private unnamed_addr constant [55 x i8] c"Warn about underflow of numerical constant expressions\00", align 1
@.str.378 = private unnamed_addr constant [16 x i8] c"-Wuninitialized\00", align 1
@.str.379 = private unnamed_addr constant [45 x i8] c"Warn about uninitialized automatic variables\00", align 1
@.str.380 = private unnamed_addr constant [18 x i8] c"-Wunknown-pragmas\00", align 1
@.str.381 = private unnamed_addr constant [32 x i8] c"Warn about unrecognized pragmas\00", align 1
@.str.382 = private unnamed_addr constant [19 x i8] c"-Wunnecessary-else\00", align 1
@.str.383 = private unnamed_addr constant [20 x i8] c"-Wunqualified-field\00", align 1
@.str.384 = private unnamed_addr constant [19 x i8] c"-Wunreachable-code\00", align 1
@.str.385 = private unnamed_addr constant [52 x i8] c"Does nothing. Preserved for backward compatibility.\00", align 1
@.str.386 = private unnamed_addr constant [28 x i8] c"-Wunsafe-loop-optimizations\00", align 1
@.str.387 = private unnamed_addr constant [68 x i8] c"Warn if the loop cannot be optimized due to nontrivial assumptions.\00", align 1
@.str.388 = private unnamed_addr constant [29 x i8] c"-Wunsuffixed-float-constants\00", align 1
@.str.389 = private unnamed_addr constant [38 x i8] c"Warn about unsuffixed float constants\00", align 1
@.str.390 = private unnamed_addr constant [9 x i8] c"-Wunused\00", align 1
@.str.391 = private unnamed_addr constant [30 x i8] c"Enable all -Wunused- warnings\00", align 1
@.str.392 = private unnamed_addr constant [18 x i8] c"-Wunused-argument\00", align 1
@.str.393 = private unnamed_addr constant [18 x i8] c"-Wunused-function\00", align 1
@.str.394 = private unnamed_addr constant [31 x i8] c"Warn when a function is unused\00", align 1
@.str.395 = private unnamed_addr constant [16 x i8] c"-Wunused-import\00", align 1
@.str.396 = private unnamed_addr constant [15 x i8] c"-Wunused-label\00", align 1
@.str.397 = private unnamed_addr constant [28 x i8] c"Warn when a label is unused\00", align 1
@.str.398 = private unnamed_addr constant [15 x i8] c"-Wunused-local\00", align 1
@.str.399 = private unnamed_addr constant [16 x i8] c"-Wunused-macros\00", align 1
@.str.400 = private unnamed_addr constant [61 x i8] c"Warn about macros defined in the main file that are not used\00", align 1
@.str.401 = private unnamed_addr constant [19 x i8] c"-Wunused-parameter\00", align 1
@.str.402 = private unnamed_addr constant [41 x i8] c"Warn when a function parameter is unused\00", align 1
@.str.403 = private unnamed_addr constant [17 x i8] c"-Wunused-private\00", align 1
@.str.404 = private unnamed_addr constant [16 x i8] c"-Wunused-result\00", align 1
@.str.405 = private unnamed_addr constant [104 x i8] c"Warn if a caller of a function, marked with attribute warn_unused_result, does not use its return value\00", align 1
@.str.406 = private unnamed_addr constant [16 x i8] c"-Wunused-thrown\00", align 1
@.str.407 = private unnamed_addr constant [15 x i8] c"-Wunused-value\00", align 1
@.str.408 = private unnamed_addr constant [40 x i8] c"Warn when an expression value is unused\00", align 1
@.str.409 = private unnamed_addr constant [18 x i8] c"-Wunused-variable\00", align 1
@.str.410 = private unnamed_addr constant [31 x i8] c"Warn when a variable is unused\00", align 1
@.str.411 = private unnamed_addr constant [21 x i8] c"-Wuseless-type-check\00", align 1
@.str.412 = private unnamed_addr constant [15 x i8] c"-Wvarargs-cast\00", align 1
@.str.413 = private unnamed_addr constant [18 x i8] c"-Wvariadic-macros\00", align 1
@.str.414 = private unnamed_addr constant [55 x i8] c"Do not warn about using variadic macros when -pedantic\00", align 1
@.str.415 = private unnamed_addr constant [6 x i8] c"-Wvla\00", align 1
@.str.416 = private unnamed_addr constant [40 x i8] c"Warn if a variable length array is used\00", align 1
@.str.417 = private unnamed_addr constant [24 x i8] c"-Wvolatile-register-var\00", align 1
@.str.418 = private unnamed_addr constant [51 x i8] c"Warn when a register variable is declared volatile\00", align 1
@.str.419 = private unnamed_addr constant [16 x i8] c"-Wwarning-token\00", align 1
@.str.420 = private unnamed_addr constant [16 x i8] c"-Wwrite-strings\00", align 1
@.str.421 = private unnamed_addr constant [191 x i8] c"In C++, nonzero means warn about deprecated conversion from string literals to `char *'.  In C, similar warning, except that the conversion is of course not deprecated by the ISO C standard.\00", align 1
@.str.422 = private unnamed_addr constant [6 x i8] c"-ansi\00", align 1
@.str.423 = private unnamed_addr constant [55 x i8] c"A synonym for -std=c89 (for C) or -std=c++98 (for C++)\00", align 1
@.str.424 = private unnamed_addr constant [10 x i8] c"-aux-info\00", align 1
@.str.425 = private unnamed_addr constant [58 x i8] c"-aux-info <file>\09Emit declaration information into <file>\00", align 1
@.str.426 = private unnamed_addr constant [11 x i8] c"-aux-info=\00", align 1
@.str.427 = private unnamed_addr constant [9 x i8] c"-auxbase\00", align 1
@.str.428 = private unnamed_addr constant [15 x i8] c"-auxbase-strip\00", align 1
@.str.429 = private unnamed_addr constant [5 x i8] c"-cpp\00", align 1
@.str.430 = private unnamed_addr constant [21 x i8] c"Enable preprocessing\00", align 1
@.str.431 = private unnamed_addr constant [3 x i8] c"-d\00", align 1
@.str.432 = private unnamed_addr constant [62 x i8] c"-d<letters>\09Enable dumps from specific passes of the compiler\00", align 1
@.str.433 = private unnamed_addr constant [10 x i8] c"-dumpbase\00", align 1
@.str.434 = private unnamed_addr constant [60 x i8] c"-dumpbase <file>\09Set the file basename to be used for dumps\00", align 1
@.str.435 = private unnamed_addr constant [9 x i8] c"-dumpdir\00", align 1
@.str.436 = private unnamed_addr constant [59 x i8] c"-dumpdir <dir>\09Set the directory name to be used for dumps\00", align 1
@.str.437 = private unnamed_addr constant [13 x i8] c"-fCLASSPATH=\00", align 1
@.str.438 = private unnamed_addr constant [48 x i8] c"--CLASSPATH\09Deprecated; use --classpath instead\00", align 1
@.str.439 = private unnamed_addr constant [6 x i8] c"-fPIC\00", align 1
@.str.440 = private unnamed_addr constant [60 x i8] c"Generate position-independent code if possible (large mode)\00", align 1
@.str.441 = private unnamed_addr constant [6 x i8] c"-fPIE\00", align 1
@.str.442 = private unnamed_addr constant [76 x i8] c"Generate position-independent code for executables if possible (large mode)\00", align 1
@.str.443 = private unnamed_addr constant [7 x i8] c"-fRTS=\00", align 1
@.str.444 = private unnamed_addr constant [15 x i8] c"-fabi-version=\00", align 1
@.str.445 = private unnamed_addr constant [17 x i8] c"-faccess-control\00", align 1
@.str.446 = private unnamed_addr constant [46 x i8] c"Enforce class member access control semantics\00", align 1
@.str.447 = private unnamed_addr constant [16 x i8] c"-falign-commons\00", align 1
@.str.448 = private unnamed_addr constant [34 x i8] c"Enable alignment of COMMON blocks\00", align 1
@.str.449 = private unnamed_addr constant [18 x i8] c"-falign-functions\00", align 1
@.str.450 = private unnamed_addr constant [29 x i8] c"Align the start of functions\00", align 1
@.str.451 = private unnamed_addr constant [19 x i8] c"-falign-functions=\00", align 1
@.str.452 = private unnamed_addr constant [14 x i8] c"-falign-jumps\00", align 1
@.str.453 = private unnamed_addr constant [47 x i8] c"Align labels which are only reached by jumping\00", align 1
@.str.454 = private unnamed_addr constant [15 x i8] c"-falign-jumps=\00", align 1
@.str.455 = private unnamed_addr constant [15 x i8] c"-falign-labels\00", align 1
@.str.456 = private unnamed_addr constant [17 x i8] c"Align all labels\00", align 1
@.str.457 = private unnamed_addr constant [16 x i8] c"-falign-labels=\00", align 1
@.str.458 = private unnamed_addr constant [14 x i8] c"-falign-loops\00", align 1
@.str.459 = private unnamed_addr constant [25 x i8] c"Align the start of loops\00", align 1
@.str.460 = private unnamed_addr constant [15 x i8] c"-falign-loops=\00", align 1
@.str.461 = private unnamed_addr constant [17 x i8] c"-fall-intrinsics\00", align 1
@.str.462 = private unnamed_addr constant [72 x i8] c"All intrinsics procedures are available regardless of selected standard\00", align 1
@.str.463 = private unnamed_addr constant [14 x i8] c"-fall-virtual\00", align 1
@.str.464 = private unnamed_addr constant [27 x i8] c"-fallow-leading-underscore\00", align 1
@.str.465 = private unnamed_addr constant [25 x i8] c"-falt-external-templates\00", align 1
@.str.466 = private unnamed_addr constant [43 x i8] c"Change when template instances are emitted\00", align 1
@.str.467 = private unnamed_addr constant [17 x i8] c"-fargument-alias\00", align 1
@.str.468 = private unnamed_addr constant [56 x i8] c"Specify that arguments may alias each other and globals\00", align 1
@.str.469 = private unnamed_addr constant [19 x i8] c"-fargument-noalias\00", align 1
@.str.470 = private unnamed_addr constant [54 x i8] c"Assume arguments may alias globals but not each other\00", align 1
@.str.471 = private unnamed_addr constant [28 x i8] c"-fargument-noalias-anything\00", align 1
@.str.472 = private unnamed_addr constant [40 x i8] c"Assume arguments alias no other storage\00", align 1
@.str.473 = private unnamed_addr constant [26 x i8] c"-fargument-noalias-global\00", align 1
@.str.474 = private unnamed_addr constant [54 x i8] c"Assume arguments alias neither each other nor globals\00", align 1
@.str.475 = private unnamed_addr constant [6 x i8] c"-fasm\00", align 1
@.str.476 = private unnamed_addr constant [28 x i8] c"Recognize the \22asm\22 keyword\00", align 1
@.str.477 = private unnamed_addr constant [9 x i8] c"-fassert\00", align 1
@.str.478 = private unnamed_addr constant [37 x i8] c"Permit the use of the assert keyword\00", align 1
@.str.479 = private unnamed_addr constant [19 x i8] c"-fassociative-math\00", align 1
@.str.480 = private unnamed_addr constant [111 x i8] c"Allow optimization for floating-point arithmetic which may change the result of the operation due to rounding.\00", align 1
@.str.481 = private unnamed_addr constant [18 x i8] c"-fassume-compiled\00", align 1
@.str.482 = private unnamed_addr constant [19 x i8] c"-fassume-compiled=\00", align 1
@.str.483 = private unnamed_addr constant [29 x i8] c"-fasynchronous-unwind-tables\00", align 1
@.str.484 = private unnamed_addr constant [67 x i8] c"Generate unwind tables that are exact at each instruction boundary\00", align 1
@.str.485 = private unnamed_addr constant [15 x i8] c"-fauto-inc-dec\00", align 1
@.str.486 = private unnamed_addr constant [35 x i8] c"Generate auto-inc/dec instructions\00", align 1
@.str.487 = private unnamed_addr constant [12 x i8] c"-fautomatic\00", align 1
@.str.488 = private unnamed_addr constant [88 x i8] c"Do not treat local variables and COMMON blocks as if they were named in SAVE statements\00", align 1
@.str.489 = private unnamed_addr constant [16 x i8] c"-faux-classpath\00", align 1
@.str.490 = private unnamed_addr constant [12 x i8] c"-fbackslash\00", align 1
@.str.491 = private unnamed_addr constant [64 x i8] c"Specify that backslash in string introduces an escape character\00", align 1
@.str.492 = private unnamed_addr constant [12 x i8] c"-fbacktrace\00", align 1
@.str.493 = private unnamed_addr constant [56 x i8] c"Produce a backtrace when a runtime error is encountered\00", align 1
@.str.494 = private unnamed_addr constant [21 x i8] c"-fblas-matmul-limit=\00", align 1
@.str.495 = private unnamed_addr constant [83 x i8] c"-fblas-matmul-limit=<n>\09Size of the smallest matrix for which matmul will use BLAS\00", align 1
@.str.496 = private unnamed_addr constant [17 x i8] c"-fbootclasspath=\00", align 1
@.str.497 = private unnamed_addr constant [43 x i8] c"--bootclasspath=<path>\09Replace system path\00", align 1
@.str.498 = private unnamed_addr constant [20 x i8] c"-fbootstrap-classes\00", align 1
@.str.499 = private unnamed_addr constant [47 x i8] c"Generated should be loaded by bootstrap loader\00", align 1
@.str.500 = private unnamed_addr constant [15 x i8] c"-fbounds-check\00", align 1
@.str.501 = private unnamed_addr constant [53 x i8] c"Generate code to check bounds before indexing arrays\00", align 1
@.str.502 = private unnamed_addr constant [19 x i8] c"-fbranch-count-reg\00", align 1
@.str.503 = private unnamed_addr constant [59 x i8] c"Replace add, compare, branch with branch on count register\00", align 1
@.str.504 = private unnamed_addr constant [23 x i8] c"-fbranch-probabilities\00", align 1
@.str.505 = private unnamed_addr constant [51 x i8] c"Use profiling information for branch probabilities\00", align 1
@.str.506 = private unnamed_addr constant [30 x i8] c"-fbranch-target-load-optimize\00", align 1
@.str.507 = private unnamed_addr constant [77 x i8] c"Perform branch target load optimization before prologue / epilogue threading\00", align 1
@.str.508 = private unnamed_addr constant [31 x i8] c"-fbranch-target-load-optimize2\00", align 1
@.str.509 = private unnamed_addr constant [76 x i8] c"Perform branch target load optimization after prologue / epilogue threading\00", align 1
@.str.510 = private unnamed_addr constant [19 x i8] c"-fbtr-bb-exclusive\00", align 1
@.str.511 = private unnamed_addr constant [74 x i8] c"Restrict target load migration not to re-use registers in any basic block\00", align 1
@.str.512 = private unnamed_addr constant [10 x i8] c"-fbuiltin\00", align 1
@.str.513 = private unnamed_addr constant [29 x i8] c"Recognize built-in functions\00", align 1
@.str.514 = private unnamed_addr constant [11 x i8] c"-fbuiltin-\00", align 1
@.str.515 = private unnamed_addr constant [14 x i8] c"-fcall-saved-\00", align 1
@.str.516 = private unnamed_addr constant [76 x i8] c"-fcall-saved-<register>\09Mark <register> as being preserved across functions\00", align 1
@.str.517 = private unnamed_addr constant [13 x i8] c"-fcall-used-\00", align 1
@.str.518 = private unnamed_addr constant [76 x i8] c"-fcall-used-<register>\09Mark <register> as being corrupted by function calls\00", align 1
@.str.519 = private unnamed_addr constant [15 x i8] c"-fcaller-saves\00", align 1
@.str.520 = private unnamed_addr constant [37 x i8] c"Save registers around function calls\00", align 1
@.str.521 = private unnamed_addr constant [26 x i8] c"-fcheck-array-temporaries\00", align 1
@.str.522 = private unnamed_addr constant [92 x i8] c"Produce a warning at runtime if a array temporary has been created for a procedure argument\00", align 1
@.str.523 = private unnamed_addr constant [18 x i8] c"-fcheck-data-deps\00", align 1
@.str.524 = private unnamed_addr constant [58 x i8] c"Compare the results of several data dependence analyzers.\00", align 1
@.str.525 = private unnamed_addr constant [12 x i8] c"-fcheck-new\00", align 1
@.str.526 = private unnamed_addr constant [30 x i8] c"Check the return value of new\00", align 1
@.str.527 = private unnamed_addr constant [19 x i8] c"-fcheck-references\00", align 1
@.str.528 = private unnamed_addr constant [39 x i8] c"Generate checks for references to NULL\00", align 1
@.str.529 = private unnamed_addr constant [9 x i8] c"-fcheck=\00", align 1
@.str.530 = private unnamed_addr constant [63 x i8] c"-fcheck=[...]\09Specify which runtime checks are to be performed\00", align 1
@.str.531 = private unnamed_addr constant [13 x i8] c"-fclasspath=\00", align 1
@.str.532 = private unnamed_addr constant [34 x i8] c"--classpath=<path>\09Set class path\00", align 1
@.str.533 = private unnamed_addr constant [9 x i8] c"-fcommon\00", align 1
@.str.534 = private unnamed_addr constant [55 x i8] c"Do not put uninitialized globals in the common section\00", align 1
@.str.535 = private unnamed_addr constant [23 x i8] c"-fcompare-debug-second\00", align 1
@.str.536 = private unnamed_addr constant [51 x i8] c"Run only the second compilation of -fcompare-debug\00", align 1
@.str.537 = private unnamed_addr constant [17 x i8] c"-fcompare-debug=\00", align 1
@.str.538 = private unnamed_addr constant [98 x i8] c"-fcompare-debug[=<opts>]\09Compile with and without e.g. -gtoggle, and compare the final-insns dump\00", align 1
@.str.539 = private unnamed_addr constant [20 x i8] c"-fcompile-resource=\00", align 1
@.str.540 = private unnamed_addr constant [16 x i8] c"-fcond-mismatch\00", align 1
@.str.541 = private unnamed_addr constant [64 x i8] c"Allow the arguments of the '?' operator to have different types\00", align 1
@.str.542 = private unnamed_addr constant [17 x i8] c"-fconserve-space\00", align 1
@.str.543 = private unnamed_addr constant [32 x i8] c"Reduce the size of object files\00", align 1
@.str.544 = private unnamed_addr constant [17 x i8] c"-fconserve-stack\00", align 1
@.str.545 = private unnamed_addr constant [63 x i8] c"Do not perform optimizations increasing noticeably stack usage\00", align 1
@.str.546 = private unnamed_addr constant [25 x i8] c"-fconstant-string-class=\00", align 1
@.str.547 = private unnamed_addr constant [66 x i8] c"-fconst-string-class=<name>\09Use class <name> for constant strings\00", align 1
@.str.548 = private unnamed_addr constant [21 x i8] c"-fconvert=big-endian\00", align 1
@.str.549 = private unnamed_addr constant [44 x i8] c"Use big-endian format for unformatted files\00", align 1
@.str.550 = private unnamed_addr constant [24 x i8] c"-fconvert=little-endian\00", align 1
@.str.551 = private unnamed_addr constant [47 x i8] c"Use little-endian format for unformatted files\00", align 1
@.str.552 = private unnamed_addr constant [17 x i8] c"-fconvert=native\00", align 1
@.str.553 = private unnamed_addr constant [40 x i8] c"Use native format for unformatted files\00", align 1
@.str.554 = private unnamed_addr constant [15 x i8] c"-fconvert=swap\00", align 1
@.str.555 = private unnamed_addr constant [38 x i8] c"Swap endianness for unformatted files\00", align 1
@.str.556 = private unnamed_addr constant [18 x i8] c"-fcprop-registers\00", align 1
@.str.557 = private unnamed_addr constant [54 x i8] c"Perform a register copy-propagation optimization pass\00", align 1
@.str.558 = private unnamed_addr constant [15 x i8] c"-fcray-pointer\00", align 1
@.str.559 = private unnamed_addr constant [31 x i8] c"Use the Cray Pointer extension\00", align 1
@.str.560 = private unnamed_addr constant [15 x i8] c"-fcrossjumping\00", align 1
@.str.561 = private unnamed_addr constant [35 x i8] c"Perform cross-jumping optimization\00", align 1
@.str.562 = private unnamed_addr constant [19 x i8] c"-fcse-follow-jumps\00", align 1
@.str.563 = private unnamed_addr constant [48 x i8] c"When running CSE, follow jumps to their targets\00", align 1
@.str.564 = private unnamed_addr constant [18 x i8] c"-fcse-skip-blocks\00", align 1
@.str.565 = private unnamed_addr constant [53 x i8] c"Does nothing.  Preserved for backward compatibility.\00", align 1
@.str.566 = private unnamed_addr constant [19 x i8] c"-fcx-fortran-rules\00", align 1
@.str.567 = private unnamed_addr constant [57 x i8] c"Complex multiplication and division follow Fortran rules\00", align 1
@.str.568 = private unnamed_addr constant [19 x i8] c"-fcx-limited-range\00", align 1
@.str.569 = private unnamed_addr constant [59 x i8] c"Omit range reduction step when performing complex division\00", align 1
@.str.570 = private unnamed_addr constant [18 x i8] c"-fd-lines-as-code\00", align 1
@.str.571 = private unnamed_addr constant [39 x i8] c"Ignore 'D' in column one in fixed form\00", align 1
@.str.572 = private unnamed_addr constant [22 x i8] c"-fd-lines-as-comments\00", align 1
@.str.573 = private unnamed_addr constant [47 x i8] c"Treat lines with 'D' in column one as comments\00", align 1
@.str.574 = private unnamed_addr constant [16 x i8] c"-fdata-sections\00", align 1
@.str.575 = private unnamed_addr constant [40 x i8] c"Place data items into their own section\00", align 1
@.str.576 = private unnamed_addr constant [15 x i8] c"-fdbg-cnt-list\00", align 1
@.str.577 = private unnamed_addr constant [68 x i8] c"List all available debugging counters with their limits and counts.\00", align 1
@.str.578 = private unnamed_addr constant [11 x i8] c"-fdbg-cnt=\00", align 1
@.str.579 = private unnamed_addr constant [84 x i8] c"-fdbg-cnt=<counter>:<limit>[,<counter>:<limit>,...]\09Set the debug counter limit.   \00", align 1
@.str.580 = private unnamed_addr constant [6 x i8] c"-fdce\00", align 1
@.str.581 = private unnamed_addr constant [39 x i8] c"Use the RTL dead code elimination pass\00", align 1
@.str.582 = private unnamed_addr constant [20 x i8] c"-fdebug-prefix-map=\00", align 1
@.str.583 = private unnamed_addr constant [55 x i8] c"Map one directory name to another in debug information\00", align 1
@.str.584 = private unnamed_addr constant [19 x i8] c"-fdeduce-init-list\00", align 1
@.str.585 = private unnamed_addr constant [134 x i8] c"-fno-deduce-init-list\09disable deduction of std::initializer_list for a template type parameter from a brace-enclosed initializer-list\00", align 1
@.str.586 = private unnamed_addr constant [19 x i8] c"-fdefault-double-8\00", align 1
@.str.587 = private unnamed_addr constant [61 x i8] c"Set the default double precision kind to an 8 byte wide type\00", align 1
@.str.588 = private unnamed_addr constant [17 x i8] c"-fdefault-inline\00", align 1
@.str.589 = private unnamed_addr constant [35 x i8] c"Inline member functions by default\00", align 1
@.str.590 = private unnamed_addr constant [20 x i8] c"-fdefault-integer-8\00", align 1
@.str.591 = private unnamed_addr constant [52 x i8] c"Set the default integer kind to an 8 byte wide type\00", align 1
@.str.592 = private unnamed_addr constant [17 x i8] c"-fdefault-real-8\00", align 1
@.str.593 = private unnamed_addr constant [49 x i8] c"Set the default real kind to an 8 byte wide type\00", align 1
@.str.594 = private unnamed_addr constant [12 x i8] c"-fdefer-pop\00", align 1
@.str.595 = private unnamed_addr constant [52 x i8] c"Defer popping functions args from stack until later\00", align 1
@.str.596 = private unnamed_addr constant [17 x i8] c"-fdelayed-branch\00", align 1
@.str.597 = private unnamed_addr constant [51 x i8] c"Attempt to fill delay slots of branch instructions\00", align 1
@.str.598 = private unnamed_addr constant [29 x i8] c"-fdelete-null-pointer-checks\00", align 1
@.str.599 = private unnamed_addr constant [35 x i8] c"Delete useless null pointer checks\00", align 1
@.str.600 = private unnamed_addr constant [29 x i8] c"-fdiagnostics-show-location=\00", align 1
@.str.601 = private unnamed_addr constant [125 x i8] c"-fdiagnostics-show-location=[once|every-line]\09How often to emit source location at the beginning of line-wrapped diagnostics\00", align 1
@.str.602 = private unnamed_addr constant [26 x i8] c"-fdiagnostics-show-option\00", align 1
@.str.603 = private unnamed_addr constant [86 x i8] c"Amend appropriate diagnostic messages with the command line option that controls them\00", align 1
@.str.604 = private unnamed_addr constant [18 x i8] c"-fdirectives-only\00", align 1
@.str.605 = private unnamed_addr constant [28 x i8] c"Preprocess directives only.\00", align 1
@.str.606 = private unnamed_addr constant [21 x i8] c"-fdisable-assertions\00", align 1
@.str.607 = private unnamed_addr constant [22 x i8] c"-fdisable-assertions=\00", align 1
@.str.608 = private unnamed_addr constant [12 x i8] c"-fdollar-ok\00", align 1
@.str.609 = private unnamed_addr constant [35 x i8] c"Allow dollar signs in entity names\00", align 1
@.str.610 = private unnamed_addr constant [25 x i8] c"-fdollars-in-identifiers\00", align 1
@.str.611 = private unnamed_addr constant [38 x i8] c"Permit '$' as an identifier character\00", align 1
@.str.612 = private unnamed_addr constant [6 x i8] c"-fdse\00", align 1
@.str.613 = private unnamed_addr constant [40 x i8] c"Use the RTL dead store elimination pass\00", align 1
@.str.614 = private unnamed_addr constant [8 x i8] c"-fdump-\00", align 1
@.str.615 = private unnamed_addr constant [56 x i8] c"-fdump-<type>\09Dump various compiler internals to a file\00", align 1
@.str.616 = private unnamed_addr constant [12 x i8] c"-fdump-core\00", align 1
@.str.617 = private unnamed_addr constant [45 x i8] c"Dump a core file when a runtime error occurs\00", align 1
@.str.618 = private unnamed_addr constant [20 x i8] c"-fdump-final-insns=\00", align 1
@.str.619 = private unnamed_addr constant [81 x i8] c"-fdump-final-insns=filename\09Dump to filename the insns at the end of translation\00", align 1
@.str.620 = private unnamed_addr constant [14 x i8] c"-fdump-noaddr\00", align 1
@.str.621 = private unnamed_addr constant [48 x i8] c"Suppress output of addresses in debugging dumps\00", align 1
@.str.622 = private unnamed_addr constant [18 x i8] c"-fdump-parse-tree\00", align 1
@.str.623 = private unnamed_addr constant [36 x i8] c"Display the code tree after parsing\00", align 1
@.str.624 = private unnamed_addr constant [18 x i8] c"-fdump-unnumbered\00", align 1
@.str.625 = private unnamed_addr constant [91 x i8] c"Suppress output of instruction numbers, line number notes and addresses in debugging dumps\00", align 1
@flag_dump_unnumbered = external global i32, align 4
@.str.626 = private unnamed_addr constant [24 x i8] c"-fdump-unnumbered-links\00", align 1
@.str.627 = private unnamed_addr constant [69 x i8] c"Suppress output of previous and next insn numbers in debugging dumps\00", align 1
@flag_dump_unnumbered_links = external global i32, align 4
@.str.628 = private unnamed_addr constant [17 x i8] c"-fdwarf2-cfi-asm\00", align 1
@.str.629 = private unnamed_addr constant [48 x i8] c"Enable CFI tables via GAS assembler directives.\00", align 1
@.str.630 = private unnamed_addr constant [17 x i8] c"-fearly-inlining\00", align 1
@.str.631 = private unnamed_addr constant [23 x i8] c"Perform early inlining\00", align 1
@.str.632 = private unnamed_addr constant [21 x i8] c"-felide-constructors\00", align 1
@.str.633 = private unnamed_addr constant [24 x i8] c"-feliminate-dwarf2-dups\00", align 1
@.str.634 = private unnamed_addr constant [37 x i8] c"Perform DWARF2 duplicate elimination\00", align 1
@.str.635 = private unnamed_addr constant [33 x i8] c"-feliminate-unused-debug-symbols\00", align 1
@.str.636 = private unnamed_addr constant [46 x i8] c"Perform unused type elimination in debug info\00", align 1
@.str.637 = private unnamed_addr constant [31 x i8] c"-feliminate-unused-debug-types\00", align 1
@.str.638 = private unnamed_addr constant [26 x i8] c"-femit-class-debug-always\00", align 1
@.str.639 = private unnamed_addr constant [45 x i8] c"Do not suppress C++ class debug information.\00", align 1
@.str.640 = private unnamed_addr constant [18 x i8] c"-femit-class-file\00", align 1
@.str.641 = private unnamed_addr constant [20 x i8] c"Output a class file\00", align 1
@.str.642 = private unnamed_addr constant [19 x i8] c"-femit-class-files\00", align 1
@.str.643 = private unnamed_addr constant [28 x i8] c"Alias for -femit-class-file\00", align 1
@.str.644 = private unnamed_addr constant [29 x i8] c"-femit-struct-debug-baseonly\00", align 1
@.str.645 = private unnamed_addr constant [71 x i8] c"-femit-struct-debug-baseonly\09Aggressive reduced debug info for structs\00", align 1
@.str.646 = private unnamed_addr constant [30 x i8] c"-femit-struct-debug-detailed=\00", align 1
@.str.647 = private unnamed_addr constant [81 x i8] c"-femit-struct-debug-detailed=<spec-list>\09Detailed reduced debug info for structs\00", align 1
@.str.648 = private unnamed_addr constant [28 x i8] c"-femit-struct-debug-reduced\00", align 1
@.str.649 = private unnamed_addr constant [72 x i8] c"-femit-struct-debug-reduced\09Conservative reduced debug info for structs\00", align 1
@.str.650 = private unnamed_addr constant [20 x i8] c"-fenable-assertions\00", align 1
@.str.651 = private unnamed_addr constant [21 x i8] c"-fenable-assertions=\00", align 1
@.str.652 = private unnamed_addr constant [19 x i8] c"-fenable-icf-debug\00", align 1
@.str.653 = private unnamed_addr constant [67 x i8] c"Generate debug information to support Identical Code Folding (ICF)\00", align 1
@.str.654 = private unnamed_addr constant [12 x i8] c"-fencoding=\00", align 1
@.str.655 = private unnamed_addr constant [72 x i8] c"--encoding=<encoding>\09Choose input encoding (defaults from your locale)\00", align 1
@.str.656 = private unnamed_addr constant [19 x i8] c"-fenforce-eh-specs\00", align 1
@.str.657 = private unnamed_addr constant [48 x i8] c"Generate code to check exception specifications\00", align 1
@.str.658 = private unnamed_addr constant [17 x i8] c"-fenum-int-equiv\00", align 1
@.str.659 = private unnamed_addr constant [13 x i8] c"-fexceptions\00", align 1
@.str.660 = private unnamed_addr constant [26 x i8] c"Enable exception handling\00", align 1
@.str.661 = private unnamed_addr constant [20 x i8] c"-fexcess-precision=\00", align 1
@.str.662 = private unnamed_addr constant [87 x i8] c"-fexcess-precision=[fast|standard]\09Specify handling of excess floating-point precision\00", align 1
@.str.663 = private unnamed_addr constant [16 x i8] c"-fexec-charset=\00", align 1
@.str.664 = private unnamed_addr constant [90 x i8] c"-fexec-charset=<cset>\09Convert all strings and character constants to character set <cset>\00", align 1
@.str.665 = private unnamed_addr constant [26 x i8] c"-fexpensive-optimizations\00", align 1
@.str.666 = private unnamed_addr constant [51 x i8] c"Perform a number of minor, expensive optimizations\00", align 1
@.str.667 = private unnamed_addr constant [11 x i8] c"-fextdirs=\00", align 1
@.str.668 = private unnamed_addr constant [50 x i8] c"--extdirs=<path>\09Set the extension directory path\00", align 1
@.str.669 = private unnamed_addr constant [23 x i8] c"-fextended-identifiers\00", align 1
@.str.670 = private unnamed_addr constant [60 x i8] c"Permit universal character names (\\u and \\U) in identifiers\00", align 1
@.str.671 = private unnamed_addr constant [16 x i8] c"-fexternal-blas\00", align 1
@.str.672 = private unnamed_addr constant [91 x i8] c"Specify that an external BLAS library should be used for matmul calls on large-size arrays\00", align 1
@.str.673 = private unnamed_addr constant [21 x i8] c"-fexternal-templates\00", align 1
@.str.674 = private unnamed_addr constant [6 x i8] c"-ff2c\00", align 1
@.str.675 = private unnamed_addr constant [27 x i8] c"Use f2c calling convention\00", align 1
@.str.676 = private unnamed_addr constant [12 x i8] c"-ffast-math\00", align 1
@.str.677 = private unnamed_addr constant [16 x i8] c"-ffilelist-file\00", align 1
@.str.678 = private unnamed_addr constant [57 x i8] c"Input file is a file with a list of filenames to compile\00", align 1
@.str.679 = private unnamed_addr constant [19 x i8] c"-ffinite-math-only\00", align 1
@.str.680 = private unnamed_addr constant [43 x i8] c"Assume no NaNs or infinities are generated\00", align 1
@.str.681 = private unnamed_addr constant [9 x i8] c"-ffixed-\00", align 1
@.str.682 = private unnamed_addr constant [72 x i8] c"-ffixed-<register>\09Mark <register> as being unavailable to the compiler\00", align 1
@.str.683 = private unnamed_addr constant [13 x i8] c"-ffixed-form\00", align 1
@.str.684 = private unnamed_addr constant [42 x i8] c"Assume that the source file is fixed form\00", align 1
@.str.685 = private unnamed_addr constant [21 x i8] c"-ffixed-line-length-\00", align 1
@.str.686 = private unnamed_addr constant [68 x i8] c"-ffixed-line-length-<n>\09Use n as character line width in fixed mode\00", align 1
@.str.687 = private unnamed_addr constant [25 x i8] c"-ffixed-line-length-none\00", align 1
@.str.688 = private unnamed_addr constant [51 x i8] c"Allow arbitrary character line width in fixed mode\00", align 1
@.str.689 = private unnamed_addr constant [14 x i8] c"-ffloat-store\00", align 1
@.str.690 = private unnamed_addr constant [66 x i8] c"Don't allocate floats and doubles in extended-precision registers\00", align 1
@.str.691 = private unnamed_addr constant [12 x i8] c"-ffor-scope\00", align 1
@.str.692 = private unnamed_addr constant [59 x i8] c"Scope of for-init-statement variables is local to the loop\00", align 1
@.str.693 = private unnamed_addr constant [13 x i8] c"-fforce-addr\00", align 1
@.str.694 = private unnamed_addr constant [30 x i8] c"-fforce-classes-archive-check\00", align 1
@.str.695 = private unnamed_addr constant [52 x i8] c"Always check for non gcj generated classes archives\00", align 1
@.str.696 = private unnamed_addr constant [20 x i8] c"-fforward-propagate\00", align 1
@.str.697 = private unnamed_addr constant [42 x i8] c"Perform a forward propagation pass on RTL\00", align 1
@.str.698 = private unnamed_addr constant [12 x i8] c"-ffpe-trap=\00", align 1
@.str.699 = private unnamed_addr constant [61 x i8] c"-ffpe-trap=[...]\09Stop on following floating point exceptions\00", align 1
@.str.700 = private unnamed_addr constant [12 x i8] c"-ffree-form\00", align 1
@.str.701 = private unnamed_addr constant [41 x i8] c"Assume that the source file is free form\00", align 1
@.str.702 = private unnamed_addr constant [20 x i8] c"-ffree-line-length-\00", align 1
@.str.703 = private unnamed_addr constant [66 x i8] c"-ffree-line-length-<n>\09Use n as character line width in free mode\00", align 1
@.str.704 = private unnamed_addr constant [24 x i8] c"-ffree-line-length-none\00", align 1
@.str.705 = private unnamed_addr constant [50 x i8] c"Allow arbitrary character line width in free mode\00", align 1
@.str.706 = private unnamed_addr constant [15 x i8] c"-ffreestanding\00", align 1
@.str.707 = private unnamed_addr constant [57 x i8] c"Do not assume that standard C libraries and \22main\22 exist\00", align 1
@.str.708 = private unnamed_addr constant [19 x i8] c"-ffriend-injection\00", align 1
@.str.709 = private unnamed_addr constant [49 x i8] c"Inject friend functions into enclosing namespace\00", align 1
@.str.710 = private unnamed_addr constant [15 x i8] c"-ffunction-cse\00", align 1
@.str.711 = private unnamed_addr constant [49 x i8] c"Allow function addresses to be held in registers\00", align 1
@.str.712 = private unnamed_addr constant [20 x i8] c"-ffunction-sections\00", align 1
@.str.713 = private unnamed_addr constant [41 x i8] c"Place each function into its own section\00", align 1
@.str.714 = private unnamed_addr constant [7 x i8] c"-fgcse\00", align 1
@.str.715 = private unnamed_addr constant [48 x i8] c"Perform global common subexpression elimination\00", align 1
@.str.716 = private unnamed_addr constant [20 x i8] c"-fgcse-after-reload\00", align 1
@.str.717 = private unnamed_addr constant [87 x i8] c"Perform global common subexpression elimination after register allocation has finished\00", align 1
@.str.718 = private unnamed_addr constant [11 x i8] c"-fgcse-las\00", align 1
@.str.719 = private unnamed_addr constant [90 x i8] c"Perform redundant load after store elimination in global common subexpression elimination\00", align 1
@.str.720 = private unnamed_addr constant [10 x i8] c"-fgcse-lm\00", align 1
@.str.721 = private unnamed_addr constant [76 x i8] c"Perform enhanced load motion during global common subexpression elimination\00", align 1
@.str.722 = private unnamed_addr constant [10 x i8] c"-fgcse-sm\00", align 1
@.str.723 = private unnamed_addr constant [67 x i8] c"Perform store motion after global common subexpression elimination\00", align 1
@.str.724 = private unnamed_addr constant [15 x i8] c"-fgnu-keywords\00", align 1
@.str.725 = private unnamed_addr constant [31 x i8] c"Recognize GNU-defined keywords\00", align 1
@.str.726 = private unnamed_addr constant [14 x i8] c"-fgnu-runtime\00", align 1
@.str.727 = private unnamed_addr constant [42 x i8] c"Generate code for GNU runtime environment\00", align 1
@.str.728 = private unnamed_addr constant [15 x i8] c"-fgnu89-inline\00", align 1
@.str.729 = private unnamed_addr constant [51 x i8] c"Use traditional GNU semantics for inline functions\00", align 1
@.str.730 = private unnamed_addr constant [11 x i8] c"-fgraphite\00", align 1
@.str.731 = private unnamed_addr constant [45 x i8] c"Enable in and out of Graphite representation\00", align 1
@.str.732 = private unnamed_addr constant [20 x i8] c"-fgraphite-identity\00", align 1
@.str.733 = private unnamed_addr constant [40 x i8] c"Enable Graphite Identity transformation\00", align 1
@.str.734 = private unnamed_addr constant [27 x i8] c"-fguess-branch-probability\00", align 1
@.str.735 = private unnamed_addr constant [40 x i8] c"Enable guessing of branch probabilities\00", align 1
@.str.736 = private unnamed_addr constant [16 x i8] c"-fguiding-decls\00", align 1
@.str.737 = private unnamed_addr constant [20 x i8] c"-fhandle-exceptions\00", align 1
@.str.738 = private unnamed_addr constant [23 x i8] c"-fhash-synchronization\00", align 1
@.str.739 = private unnamed_addr constant [87 x i8] c"Assume the runtime uses a hash table to map an object to its synchronization structure\00", align 1
@.str.740 = private unnamed_addr constant [7 x i8] c"-fhelp\00", align 1
@.str.741 = private unnamed_addr constant [8 x i8] c"-fhelp=\00", align 1
@.str.742 = private unnamed_addr constant [12 x i8] c"-fhonor-std\00", align 1
@.str.743 = private unnamed_addr constant [9 x i8] c"-fhosted\00", align 1
@.str.744 = private unnamed_addr constant [38 x i8] c"Assume normal C execution environment\00", align 1
@.str.745 = private unnamed_addr constant [15 x i8] c"-fhuge-objects\00", align 1
@.str.746 = private unnamed_addr constant [32 x i8] c"Enable support for huge objects\00", align 1
@.str.747 = private unnamed_addr constant [8 x i8] c"-fident\00", align 1
@.str.748 = private unnamed_addr constant [26 x i8] c"Process #ident directives\00", align 1
@.str.749 = private unnamed_addr constant [16 x i8] c"-fif-conversion\00", align 1
@.str.750 = private unnamed_addr constant [66 x i8] c"Perform conversion of conditional jumps to branchless equivalents\00", align 1
@.str.751 = private unnamed_addr constant [17 x i8] c"-fif-conversion2\00", align 1
@.str.752 = private unnamed_addr constant [65 x i8] c"Perform conversion of conditional jumps to conditional execution\00", align 1
@.str.753 = private unnamed_addr constant [20 x i8] c"-fimplement-inlines\00", align 1
@.str.754 = private unnamed_addr constant [45 x i8] c"Export functions even if they can be inlined\00", align 1
@.str.755 = private unnamed_addr constant [28 x i8] c"-fimplicit-inline-templates\00", align 1
@.str.756 = private unnamed_addr constant [49 x i8] c"Emit implicit instantiations of inline templates\00", align 1
@.str.757 = private unnamed_addr constant [16 x i8] c"-fimplicit-none\00", align 1
@.str.758 = private unnamed_addr constant [94 x i8] c"Specify that no implicit typing is allowed, unless overridden by explicit IMPLICIT statements\00", align 1
@.str.759 = private unnamed_addr constant [21 x i8] c"-fimplicit-templates\00", align 1
@.str.760 = private unnamed_addr constant [42 x i8] c"Emit implicit instantiations of templates\00", align 1
@.str.761 = private unnamed_addr constant [19 x i8] c"-findirect-classes\00", align 1
@.str.762 = private unnamed_addr constant [39 x i8] c"Generate instances of Class at runtime\00", align 1
@.str.763 = private unnamed_addr constant [20 x i8] c"-findirect-dispatch\00", align 1
@.str.764 = private unnamed_addr constant [43 x i8] c"Use offset tables for virtual method calls\00", align 1
@.str.765 = private unnamed_addr constant [20 x i8] c"-findirect-inlining\00", align 1
@.str.766 = private unnamed_addr constant [26 x i8] c"Perform indirect inlining\00", align 1
@.str.767 = private unnamed_addr constant [25 x i8] c"-finhibit-size-directive\00", align 1
@.str.768 = private unnamed_addr constant [33 x i8] c"Do not generate .size directives\00", align 1
@.str.769 = private unnamed_addr constant [18 x i8] c"-finit-character=\00", align 1
@.str.770 = private unnamed_addr constant [75 x i8] c"-finit-character=<n>\09Initialize local character variables to ASCII value n\00", align 1
@.str.771 = private unnamed_addr constant [16 x i8] c"-finit-integer=\00", align 1
@.str.772 = private unnamed_addr constant [59 x i8] c"-finit-integer=<n>\09Initialize local integer variables to n\00", align 1
@.str.773 = private unnamed_addr constant [18 x i8] c"-finit-local-zero\00", align 1
@.str.774 = private unnamed_addr constant [46 x i8] c"Initialize local variables to zero (from g77)\00", align 1
@.str.775 = private unnamed_addr constant [16 x i8] c"-finit-logical=\00", align 1
@.str.776 = private unnamed_addr constant [63 x i8] c"-finit-logical=<true|false>\09Initialize local logical variables\00", align 1
@.str.777 = private unnamed_addr constant [13 x i8] c"-finit-real=\00", align 1
@.str.778 = private unnamed_addr constant [64 x i8] c"-finit-real=<zero|nan|inf|-inf>\09Initialize local real variables\00", align 1
@.str.779 = private unnamed_addr constant [9 x i8] c"-finline\00", align 1
@.str.780 = private unnamed_addr constant [38 x i8] c"Pay attention to the \22inline\22 keyword\00", align 1
@.str.781 = private unnamed_addr constant [19 x i8] c"-finline-functions\00", align 1
@.str.782 = private unnamed_addr constant [46 x i8] c"Integrate simple functions into their callers\00", align 1
@.str.783 = private unnamed_addr constant [31 x i8] c"-finline-functions-called-once\00", align 1
@.str.784 = private unnamed_addr constant [51 x i8] c"Integrate functions called once into their callers\00", align 1
@.str.785 = private unnamed_addr constant [16 x i8] c"-finline-limit-\00", align 1
@.str.786 = private unnamed_addr constant [16 x i8] c"-finline-limit=\00", align 1
@.str.787 = private unnamed_addr constant [72 x i8] c"-finline-limit=<number>\09Limit the size of inlined functions to <number>\00", align 1
@.str.788 = private unnamed_addr constant [25 x i8] c"-finline-small-functions\00", align 1
@.str.789 = private unnamed_addr constant [84 x i8] c"Integrate simple functions into their callers when code size is known to not growth\00", align 1
@.str.790 = private unnamed_addr constant [17 x i8] c"-finput-charset=\00", align 1
@.str.791 = private unnamed_addr constant [74 x i8] c"-finput-charset=<cset>\09Specify the default character set for source files\00", align 1
@.str.792 = private unnamed_addr constant [23 x i8] c"-finstrument-functions\00", align 1
@.str.793 = private unnamed_addr constant [56 x i8] c"Instrument function entry and exit with profiling calls\00", align 1
@.str.794 = private unnamed_addr constant [42 x i8] c"-finstrument-functions-exclude-file-list=\00", align 1
@.str.795 = private unnamed_addr constant [99 x i8] c"-finstrument-functions-exclude-file-list=filename,...  Do not instrument functions listed in files\00", align 1
@.str.796 = private unnamed_addr constant [46 x i8] c"-finstrument-functions-exclude-function-list=\00", align 1
@.str.797 = private unnamed_addr constant [90 x i8] c"-finstrument-functions-exclude-function-list=name,...  Do not instrument listed functions\00", align 1
@.str.798 = private unnamed_addr constant [25 x i8] c"-fintrinsic-modules-path\00", align 1
@.str.799 = private unnamed_addr constant [53 x i8] c"Specify where to find the compiled intrinsic modules\00", align 1
@.str.800 = private unnamed_addr constant [9 x i8] c"-fipa-cp\00", align 1
@.str.801 = private unnamed_addr constant [45 x i8] c"Perform Interprocedural constant propagation\00", align 1
@.str.802 = private unnamed_addr constant [15 x i8] c"-fipa-cp-clone\00", align 1
@.str.803 = private unnamed_addr constant [70 x i8] c"Perform cloning to make Interprocedural constant propagation stronger\00", align 1
@.str.804 = private unnamed_addr constant [19 x i8] c"-fipa-matrix-reorg\00", align 1
@.str.805 = private unnamed_addr constant [81 x i8] c"Perform matrix layout flattening and transposing based on profiling information.\00", align 1
@.str.806 = private unnamed_addr constant [10 x i8] c"-fipa-pta\00", align 1
@.str.807 = private unnamed_addr constant [43 x i8] c"Perform interprocedural points-to analysis\00", align 1
@.str.808 = private unnamed_addr constant [17 x i8] c"-fipa-pure-const\00", align 1
@.str.809 = private unnamed_addr constant [34 x i8] c"Discover pure and const functions\00", align 1
@.str.810 = private unnamed_addr constant [16 x i8] c"-fipa-reference\00", align 1
@.str.811 = private unnamed_addr constant [55 x i8] c"Discover readonly and non addressable static variables\00", align 1
@.str.812 = private unnamed_addr constant [10 x i8] c"-fipa-sra\00", align 1
@.str.813 = private unnamed_addr constant [48 x i8] c"Perform interprocedural reduction of aggregates\00", align 1
@.str.814 = private unnamed_addr constant [19 x i8] c"-fipa-struct-reorg\00", align 1
@.str.815 = private unnamed_addr constant [71 x i8] c"Perform structure layout optimizations based on profiling information.\00", align 1
@.str.816 = private unnamed_addr constant [18 x i8] c"-fipa-type-escape\00", align 1
@.str.817 = private unnamed_addr constant [37 x i8] c"Type based escape and alias analysis\00", align 1
@.str.818 = private unnamed_addr constant [17 x i8] c"-fira-algorithm=\00", align 1
@.str.819 = private unnamed_addr constant [57 x i8] c"-fira-algorithm=[CB|priority] Set the used IRA algorithm\00", align 1
@.str.820 = private unnamed_addr constant [15 x i8] c"-fira-coalesce\00", align 1
@.str.821 = private unnamed_addr constant [26 x i8] c"Do optimistic coalescing.\00", align 1
@.str.822 = private unnamed_addr constant [20 x i8] c"-fira-loop-pressure\00", align 1
@.str.823 = private unnamed_addr constant [71 x i8] c"Use IRA based register pressure calculation in RTL loop optimizations.\00", align 1
@.str.824 = private unnamed_addr constant [14 x i8] c"-fira-region=\00", align 1
@.str.825 = private unnamed_addr constant [49 x i8] c"-fira-region=[one|all|mixed] Set regions for IRA\00", align 1
@.str.826 = private unnamed_addr constant [23 x i8] c"-fira-share-save-slots\00", align 1
@.str.827 = private unnamed_addr constant [49 x i8] c"Share slots for saving different hard registers.\00", align 1
@.str.828 = private unnamed_addr constant [24 x i8] c"-fira-share-spill-slots\00", align 1
@.str.829 = private unnamed_addr constant [48 x i8] c"Share stack slots for spilled pseudo-registers.\00", align 1
@.str.830 = private unnamed_addr constant [15 x i8] c"-fira-verbose=\00", align 1
@.str.831 = private unnamed_addr constant [67 x i8] c"-fira-verbose=<number>\09Control IRA's level of diagnostic messages.\00", align 1
@.str.832 = private unnamed_addr constant [9 x i8] c"-fivopts\00", align 1
@.str.833 = private unnamed_addr constant [38 x i8] c"Optimize induction variables on trees\00", align 1
@.str.834 = private unnamed_addr constant [6 x i8] c"-fjni\00", align 1
@.str.835 = private unnamed_addr constant [50 x i8] c"Assume native functions are implemented using JNI\00", align 1
@.str.836 = private unnamed_addr constant [14 x i8] c"-fjump-tables\00", align 1
@.str.837 = private unnamed_addr constant [57 x i8] c"Use jump tables for sufficiently large switch statements\00", align 1
@.str.838 = private unnamed_addr constant [24 x i8] c"-fkeep-inline-functions\00", align 1
@.str.839 = private unnamed_addr constant [59 x i8] c"Generate code for functions even if they are fully inlined\00", align 1
@.str.840 = private unnamed_addr constant [21 x i8] c"-fkeep-static-consts\00", align 1
@.str.841 = private unnamed_addr constant [54 x i8] c"Emit static const variables even if they are not used\00", align 1
@.str.842 = private unnamed_addr constant [12 x i8] c"-flabels-ok\00", align 1
@.str.843 = private unnamed_addr constant [25 x i8] c"-flax-vector-conversions\00", align 1
@.str.844 = private unnamed_addr constant [110 x i8] c"Allow implicit conversions between vectors with differing numbers of subparts and/or differing element types.\00", align 1
@.str.845 = private unnamed_addr constant [21 x i8] c"-fleading-underscore\00", align 1
@.str.846 = private unnamed_addr constant [43 x i8] c"Give external symbols a leading underscore\00", align 1
@.str.847 = private unnamed_addr constant [13 x i8] c"-floop-block\00", align 1
@.str.848 = private unnamed_addr constant [36 x i8] c"Enable Loop Blocking transformation\00", align 1
@.str.849 = private unnamed_addr constant [19 x i8] c"-floop-interchange\00", align 1
@.str.850 = private unnamed_addr constant [39 x i8] c"Enable Loop Interchange transformation\00", align 1
@.str.851 = private unnamed_addr constant [16 x i8] c"-floop-optimize\00", align 1
@.str.852 = private unnamed_addr constant [23 x i8] c"-floop-parallelize-all\00", align 1
@.str.853 = private unnamed_addr constant [27 x i8] c"Mark all loops as parallel\00", align 1
@.str.854 = private unnamed_addr constant [18 x i8] c"-floop-strip-mine\00", align 1
@.str.855 = private unnamed_addr constant [40 x i8] c"Enable Loop Strip Mining transformation\00", align 1
@.str.856 = private unnamed_addr constant [6 x i8] c"-flto\00", align 1
@.str.857 = private unnamed_addr constant [31 x i8] c"Enable link-time optimization.\00", align 1
@.str.858 = private unnamed_addr constant [25 x i8] c"-flto-compression-level=\00", align 1
@.str.859 = private unnamed_addr constant [76 x i8] c"-flto-compression-level=<number>\09Use zlib compression level <number> for IL\00", align 1
@.str.860 = private unnamed_addr constant [13 x i8] c"-flto-report\00", align 1
@.str.861 = private unnamed_addr constant [49 x i8] c"Report various link-time optimization statistics\00", align 1
@.str.862 = private unnamed_addr constant [9 x i8] c"-fltrans\00", align 1
@.str.863 = private unnamed_addr constant [67 x i8] c"Run the link-time optimizer in local transformation (LTRANS) mode.\00", align 1
@.str.864 = private unnamed_addr constant [22 x i8] c"-fltrans-output-list=\00", align 1
@.str.865 = private unnamed_addr constant [69 x i8] c"Specify a file to which a list of files output by LTRANS is written.\00", align 1
@.str.866 = private unnamed_addr constant [13 x i8] c"-fmath-errno\00", align 1
@.str.867 = private unnamed_addr constant [40 x i8] c"Set errno after built-in math functions\00", align 1
@.str.868 = private unnamed_addr constant [25 x i8] c"-fmax-array-constructor=\00", align 1
@.str.869 = private unnamed_addr constant [78 x i8] c"-fmax-array-constructor=<n>\09Maximum number of objects in an array constructor\00", align 1
@.str.870 = private unnamed_addr constant [14 x i8] c"-fmax-errors=\00", align 1
@.str.871 = private unnamed_addr constant [52 x i8] c"-fmax-errors=<n>\09Maximum number of errors to report\00", align 1
@.str.872 = private unnamed_addr constant [25 x i8] c"-fmax-identifier-length=\00", align 1
@.str.873 = private unnamed_addr constant [54 x i8] c"-fmax-identifier-length=<n>\09Maximum identifier length\00", align 1
@.str.874 = private unnamed_addr constant [22 x i8] c"-fmax-stack-var-size=\00", align 1
@.str.875 = private unnamed_addr constant [90 x i8] c"-fmax-stack-var-size=<n>\09Size in bytes of the largest array that will be put on the stack\00", align 1
@.str.876 = private unnamed_addr constant [24 x i8] c"-fmax-subrecord-length=\00", align 1
@.str.877 = private unnamed_addr constant [57 x i8] c"-fmax-subrecord-length=<n>\09Maximum length for subrecords\00", align 1
@.str.878 = private unnamed_addr constant [13 x i8] c"-fmem-report\00", align 1
@.str.879 = private unnamed_addr constant [38 x i8] c"Report on permanent memory allocation\00", align 1
@.str.880 = private unnamed_addr constant [22 x i8] c"-fmerge-all-constants\00", align 1
@.str.881 = private unnamed_addr constant [60 x i8] c"Attempt to merge identical constants and constant variables\00", align 1
@.str.882 = private unnamed_addr constant [18 x i8] c"-fmerge-constants\00", align 1
@.str.883 = private unnamed_addr constant [62 x i8] c"Attempt to merge identical constants across compilation units\00", align 1
@.str.884 = private unnamed_addr constant [22 x i8] c"-fmerge-debug-strings\00", align 1
@.str.885 = private unnamed_addr constant [66 x i8] c"Attempt to merge identical debug strings across compilation units\00", align 1
@.str.886 = private unnamed_addr constant [18 x i8] c"-fmessage-length=\00", align 1
@.str.887 = private unnamed_addr constant [105 x i8] c"-fmessage-length=<number>\09Limit diagnostics to <number> characters per line.  0 suppresses line-wrapping\00", align 1
@.str.888 = private unnamed_addr constant [17 x i8] c"-fmodule-private\00", align 1
@.str.889 = private unnamed_addr constant [57 x i8] c"Set default accessibility of module entities to PRIVATE.\00", align 1
@.str.890 = private unnamed_addr constant [15 x i8] c"-fmodulo-sched\00", align 1
@.str.891 = private unnamed_addr constant [69 x i8] c"Perform SMS based modulo scheduling before the first scheduling pass\00", align 1
@.str.892 = private unnamed_addr constant [30 x i8] c"-fmodulo-sched-allow-regmoves\00", align 1
@.str.893 = private unnamed_addr constant [64 x i8] c"Perform SMS based modulo scheduling with register moves allowed\00", align 1
@.str.894 = private unnamed_addr constant [23 x i8] c"-fmove-loop-invariants\00", align 1
@.str.895 = private unnamed_addr constant [46 x i8] c"Move loop invariant computations out of loops\00", align 1
@.str.896 = private unnamed_addr constant [16 x i8] c"-fms-extensions\00", align 1
@.str.897 = private unnamed_addr constant [46 x i8] c"Don't warn about uses of Microsoft extensions\00", align 1
@.str.898 = private unnamed_addr constant [10 x i8] c"-fmudflap\00", align 1
@.str.899 = private unnamed_addr constant [72 x i8] c"Add mudflap bounds-checking instrumentation for single-threaded program\00", align 1
@.str.900 = private unnamed_addr constant [12 x i8] c"-fmudflapir\00", align 1
@.str.901 = private unnamed_addr constant [62 x i8] c"Ignore read operations when inserting mudflap instrumentation\00", align 1
@.str.902 = private unnamed_addr constant [12 x i8] c"-fmudflapth\00", align 1
@.str.903 = private unnamed_addr constant [71 x i8] c"Add mudflap bounds-checking instrumentation for multi-threaded program\00", align 1
@.str.904 = private unnamed_addr constant [25 x i8] c"-fname-mangling-version-\00", align 1
@.str.905 = private unnamed_addr constant [10 x i8] c"-fnew-abi\00", align 1
@.str.906 = private unnamed_addr constant [15 x i8] c"-fnext-runtime\00", align 1
@.str.907 = private unnamed_addr constant [60 x i8] c"Generate code for NeXT (Apple Mac OS X) runtime environment\00", align 1
@.str.908 = private unnamed_addr constant [16 x i8] c"-fnil-receivers\00", align 1
@.str.909 = private unnamed_addr constant [57 x i8] c"Assume that receivers of Objective-C messages may be nil\00", align 1
@.str.910 = private unnamed_addr constant [22 x i8] c"-fnon-call-exceptions\00", align 1
@.str.911 = private unnamed_addr constant [40 x i8] c"Support synchronous non-call exceptions\00", align 1
@.str.912 = private unnamed_addr constant [19 x i8] c"-fnonansi-builtins\00", align 1
@.str.913 = private unnamed_addr constant [18 x i8] c"-fnonnull-objects\00", align 1
@.str.914 = private unnamed_addr constant [23 x i8] c"-fobjc-call-cxx-cdtors\00", align 1
@.str.915 = private unnamed_addr constant [88 x i8] c"Generate special Objective-C methods to initialize/destroy non-POD C++ ivars, if needed\00", align 1
@.str.916 = private unnamed_addr constant [23 x i8] c"-fobjc-direct-dispatch\00", align 1
@.str.917 = private unnamed_addr constant [43 x i8] c"Allow fast jumps to the message dispatcher\00", align 1
@.str.918 = private unnamed_addr constant [18 x i8] c"-fobjc-exceptions\00", align 1
@.str.919 = private unnamed_addr constant [56 x i8] c"Enable Objective-C exception and synchronization syntax\00", align 1
@.str.920 = private unnamed_addr constant [10 x i8] c"-fobjc-gc\00", align 1
@.str.921 = private unnamed_addr constant [69 x i8] c"Enable garbage collection (GC) in Objective-C/Objective-C++ programs\00", align 1
@.str.922 = private unnamed_addr constant [23 x i8] c"-fobjc-sjlj-exceptions\00", align 1
@.str.923 = private unnamed_addr constant [53 x i8] c"Enable Objective-C setjmp exception handling runtime\00", align 1
@.str.924 = private unnamed_addr constant [21 x i8] c"-fomit-frame-pointer\00", align 1
@.str.925 = private unnamed_addr constant [43 x i8] c"When possible do not generate stack frames\00", align 1
@.str.926 = private unnamed_addr constant [9 x i8] c"-fopenmp\00", align 1
@.str.927 = private unnamed_addr constant [47 x i8] c"Enable OpenMP (implies -frecursive in Fortran)\00", align 1
@.str.928 = private unnamed_addr constant [17 x i8] c"-foperator-names\00", align 1
@.str.929 = private unnamed_addr constant [46 x i8] c"Recognize C++ keywords like \22compl\22 and \22xor\22\00", align 1
@.str.930 = private unnamed_addr constant [25 x i8] c"-foptimize-register-move\00", align 1
@.str.931 = private unnamed_addr constant [44 x i8] c"Do the full register move optimization pass\00", align 1
@.str.932 = private unnamed_addr constant [25 x i8] c"-foptimize-sibling-calls\00", align 1
@.str.933 = private unnamed_addr constant [42 x i8] c"Optimize sibling and tail recursive calls\00", align 1
@.str.934 = private unnamed_addr constant [39 x i8] c"-foptimize-static-class-initialization\00", align 1
@.str.935 = private unnamed_addr constant [56 x i8] c"Enable optimization of static class initialization code\00", align 1
@.str.936 = private unnamed_addr constant [17 x i8] c"-foptional-diags\00", align 1
@.str.937 = private unnamed_addr constant [28 x i8] c"Enable optional diagnostics\00", align 1
@.str.938 = private unnamed_addr constant [20 x i8] c"-foutput-class-dir=\00", align 1
@.str.939 = private unnamed_addr constant [15 x i8] c"-fpack-derived\00", align 1
@.str.940 = private unnamed_addr constant [54 x i8] c"Try to lay out derived types as compactly as possible\00", align 1
@.str.941 = private unnamed_addr constant [14 x i8] c"-fpack-struct\00", align 1
@.str.942 = private unnamed_addr constant [46 x i8] c"Pack structure members together without holes\00", align 1
@.str.943 = private unnamed_addr constant [15 x i8] c"-fpack-struct=\00", align 1
@.str.944 = private unnamed_addr constant [70 x i8] c"-fpack-struct=<number>\09Set initial maximum structure member alignment\00", align 1
@.str.945 = private unnamed_addr constant [20 x i8] c"-fpcc-struct-return\00", align 1
@.str.946 = private unnamed_addr constant [49 x i8] c"Return small aggregates in memory, not registers\00", align 1
@flag_pcc_struct_return = external global i32, align 4
@.str.947 = private unnamed_addr constant [11 x i8] c"-fpch-deps\00", align 1
@.str.948 = private unnamed_addr constant [17 x i8] c"-fpch-preprocess\00", align 1
@.str.949 = private unnamed_addr constant [51 x i8] c"Look for and use PCH files even when preprocessing\00", align 1
@.str.950 = private unnamed_addr constant [13 x i8] c"-fpeel-loops\00", align 1
@.str.951 = private unnamed_addr constant [21 x i8] c"Perform loop peeling\00", align 1
@.str.952 = private unnamed_addr constant [11 x i8] c"-fpeephole\00", align 1
@.str.953 = private unnamed_addr constant [47 x i8] c"Enable machine specific peephole optimizations\00", align 1
@.str.954 = private unnamed_addr constant [12 x i8] c"-fpeephole2\00", align 1
@.str.955 = private unnamed_addr constant [42 x i8] c"Enable an RTL peephole pass before sched2\00", align 1
@.str.956 = private unnamed_addr constant [13 x i8] c"-fpermissive\00", align 1
@.str.957 = private unnamed_addr constant [41 x i8] c"Downgrade conformance errors to warnings\00", align 1
@.str.958 = private unnamed_addr constant [6 x i8] c"-fpic\00", align 1
@.str.959 = private unnamed_addr constant [60 x i8] c"Generate position-independent code if possible (small mode)\00", align 1
@.str.960 = private unnamed_addr constant [6 x i8] c"-fpie\00", align 1
@.str.961 = private unnamed_addr constant [76 x i8] c"Generate position-independent code for executables if possible (small mode)\00", align 1
@.str.962 = private unnamed_addr constant [14 x i8] c"-fplugin-arg-\00", align 1
@.str.963 = private unnamed_addr constant [85 x i8] c"-fplugin-arg-<name>-<key>[=<value>]\09Specify argument <key>=<value> for plugin <name>\00", align 1
@.str.964 = private unnamed_addr constant [10 x i8] c"-fplugin=\00", align 1
@.str.965 = private unnamed_addr constant [25 x i8] c"Specify a plugin to load\00", align 1
@.str.966 = private unnamed_addr constant [22 x i8] c"-fpost-ipa-mem-report\00", align 1
@.str.967 = private unnamed_addr constant [64 x i8] c"Report on memory allocation before interprocedural optimization\00", align 1
@.str.968 = private unnamed_addr constant [21 x i8] c"-fpre-ipa-mem-report\00", align 1
@.str.969 = private unnamed_addr constant [23 x i8] c"-fpredictive-commoning\00", align 1
@.str.970 = private unnamed_addr constant [39 x i8] c"Run predictive commoning optimization.\00", align 1
@.str.971 = private unnamed_addr constant [23 x i8] c"-fprefetch-loop-arrays\00", align 1
@.str.972 = private unnamed_addr constant [66 x i8] c"Generate prefetch instructions, if available, for arrays in loops\00", align 1
@.str.973 = private unnamed_addr constant [15 x i8] c"-fpreprocessed\00", align 1
@.str.974 = private unnamed_addr constant [45 x i8] c"Treat the input file as already preprocessed\00", align 1
@.str.975 = private unnamed_addr constant [19 x i8] c"-fpretty-templates\00", align 1
@.str.976 = private unnamed_addr constant [119 x i8] c"-fno-pretty-templates Do not pretty-print template specializations as the template signature followed by the arguments\00", align 1
@.str.977 = private unnamed_addr constant [10 x i8] c"-fprofile\00", align 1
@.str.978 = private unnamed_addr constant [36 x i8] c"Enable basic program profiling code\00", align 1
@.str.979 = private unnamed_addr constant [15 x i8] c"-fprofile-arcs\00", align 1
@.str.980 = private unnamed_addr constant [40 x i8] c"Insert arc-based program profiling code\00", align 1
@.str.981 = private unnamed_addr constant [21 x i8] c"-fprofile-correction\00", align 1
@.str.982 = private unnamed_addr constant [58 x i8] c"Enable correction of flow inconsistent profile data input\00", align 1
@.str.983 = private unnamed_addr constant [15 x i8] c"-fprofile-dir=\00", align 1
@.str.984 = private unnamed_addr constant [80 x i8] c"Set the top-level directory for storing the profile data. The default is 'pwd'.\00", align 1
@.str.985 = private unnamed_addr constant [19 x i8] c"-fprofile-generate\00", align 1
@.str.986 = private unnamed_addr constant [94 x i8] c"Enable common options for generating profile info for profile feedback directed optimizations\00", align 1
@.str.987 = private unnamed_addr constant [20 x i8] c"-fprofile-generate=\00", align 1
@.str.988 = private unnamed_addr constant [118 x i8] c"Enable common options for generating profile info for profile feedback directed optimizations, and set -fprofile-dir=\00", align 1
@.str.989 = private unnamed_addr constant [14 x i8] c"-fprofile-use\00", align 1
@.str.990 = private unnamed_addr constant [77 x i8] c"Enable common options for performing profile feedback directed optimizations\00", align 1
@.str.991 = private unnamed_addr constant [15 x i8] c"-fprofile-use=\00", align 1
@.str.992 = private unnamed_addr constant [101 x i8] c"Enable common options for performing profile feedback directed optimizations, and set -fprofile-dir=\00", align 1
@.str.993 = private unnamed_addr constant [17 x i8] c"-fprofile-values\00", align 1
@.str.994 = private unnamed_addr constant [45 x i8] c"Insert code to profile values of expressions\00", align 1
@.str.995 = private unnamed_addr constant [17 x i8] c"-fprotect-parens\00", align 1
@.str.996 = private unnamed_addr constant [35 x i8] c"Protect parentheses in expressions\00", align 1
@.str.997 = private unnamed_addr constant [14 x i8] c"-frandom-seed\00", align 1
@.str.998 = private unnamed_addr constant [15 x i8] c"-frandom-seed=\00", align 1
@.str.999 = private unnamed_addr constant [64 x i8] c"-frandom-seed=<string>\09Make compile reproducible using <string>\00", align 1
@.str.1000 = private unnamed_addr constant [14 x i8] c"-frange-check\00", align 1
@.str.1001 = private unnamed_addr constant [41 x i8] c"Enable range checking during compilation\00", align 1
@.str.1002 = private unnamed_addr constant [18 x i8] c"-freciprocal-math\00", align 1
@.str.1003 = private unnamed_addr constant [67 x i8] c"Same as -fassociative-math for expressions which include division.\00", align 1
@.str.1004 = private unnamed_addr constant [22 x i8] c"-frecord-gcc-switches\00", align 1
@.str.1005 = private unnamed_addr constant [53 x i8] c"Record gcc command line switches in the object file.\00", align 1
@.str.1006 = private unnamed_addr constant [18 x i8] c"-frecord-marker=4\00", align 1
@.str.1007 = private unnamed_addr constant [49 x i8] c"Use a 4-byte record marker for unformatted files\00", align 1
@.str.1008 = private unnamed_addr constant [18 x i8] c"-frecord-marker=8\00", align 1
@.str.1009 = private unnamed_addr constant [50 x i8] c"Use an 8-byte record marker for unformatted files\00", align 1
@.str.1010 = private unnamed_addr constant [12 x i8] c"-frecursive\00", align 1
@.str.1011 = private unnamed_addr constant [66 x i8] c"Allocate local variables on the stack to allow indirect recursion\00", align 1
@.str.1012 = private unnamed_addr constant [21 x i8] c"-freduced-reflection\00", align 1
@.str.1013 = private unnamed_addr constant [52 x i8] c"Reduce the amount of reflection meta-data generated\00", align 1
@.str.1014 = private unnamed_addr constant [20 x i8] c"-freg-struct-return\00", align 1
@.str.1015 = private unnamed_addr constant [37 x i8] c"Return small aggregates in registers\00", align 1
@.str.1016 = private unnamed_addr constant [10 x i8] c"-fregmove\00", align 1
@.str.1017 = private unnamed_addr constant [37 x i8] c"Enables a register move optimization\00", align 1
@.str.1018 = private unnamed_addr constant [19 x i8] c"-frename-registers\00", align 1
@.str.1019 = private unnamed_addr constant [46 x i8] c"Perform a register renaming optimization pass\00", align 1
@.str.1020 = private unnamed_addr constant [17 x i8] c"-freorder-blocks\00", align 1
@.str.1021 = private unnamed_addr constant [47 x i8] c"Reorder basic blocks to improve code placement\00", align 1
@.str.1022 = private unnamed_addr constant [31 x i8] c"-freorder-blocks-and-partition\00", align 1
@.str.1023 = private unnamed_addr constant [62 x i8] c"Reorder basic blocks and partition into hot and cold sections\00", align 1
@.str.1024 = private unnamed_addr constant [20 x i8] c"-freorder-functions\00", align 1
@.str.1025 = private unnamed_addr constant [44 x i8] c"Reorder functions to improve code placement\00", align 1
@.str.1026 = private unnamed_addr constant [16 x i8] c"-frepack-arrays\00", align 1
@.str.1027 = private unnamed_addr constant [63 x i8] c"Copy array sections into a contiguous block on procedure entry\00", align 1
@.str.1028 = private unnamed_addr constant [23 x i8] c"-freplace-objc-classes\00", align 1
@.str.1029 = private unnamed_addr constant [89 x i8] c"Used in Fix-and-Continue mode to indicate that object files may be swapped in at runtime\00", align 1
@.str.1030 = private unnamed_addr constant [7 x i8] c"-frepo\00", align 1
@.str.1031 = private unnamed_addr constant [40 x i8] c"Enable automatic template instantiation\00", align 1
@.str.1032 = private unnamed_addr constant [23 x i8] c"-frerun-cse-after-loop\00", align 1
@.str.1033 = private unnamed_addr constant [69 x i8] c"Add a common subexpression elimination pass after loop optimizations\00", align 1
@.str.1034 = private unnamed_addr constant [17 x i8] c"-frerun-loop-opt\00", align 1
@.str.1035 = private unnamed_addr constant [36 x i8] c"-freschedule-modulo-scheduled-loops\00", align 1
@.str.1036 = private unnamed_addr constant [89 x i8] c"Enable/Disable the traditional scheduling in loops that already passed modulo scheduling\00", align 1
@.str.1037 = private unnamed_addr constant [13 x i8] c"-fresolution\00", align 1
@.str.1038 = private unnamed_addr constant [20 x i8] c"The resolution file\00", align 1
@.str.1039 = private unnamed_addr constant [16 x i8] c"-frounding-math\00", align 1
@.str.1040 = private unnamed_addr constant [63 x i8] c"Disable optimizations that assume default FP rounding behavior\00", align 1
@.str.1041 = private unnamed_addr constant [7 x i8] c"-frtti\00", align 1
@.str.1042 = private unnamed_addr constant [46 x i8] c"Generate run time type descriptor information\00", align 1
@.str.1043 = private unnamed_addr constant [16 x i8] c"-fsaw-java-file\00", align 1
@.str.1044 = private unnamed_addr constant [32 x i8] c"-fsched-critical-path-heuristic\00", align 1
@.str.1045 = private unnamed_addr constant [52 x i8] c"Enable the critical path heuristic in the scheduler\00", align 1
@.str.1046 = private unnamed_addr constant [28 x i8] c"-fsched-dep-count-heuristic\00", align 1
@.str.1047 = private unnamed_addr constant [54 x i8] c"Enable the dependent count heuristic in the scheduler\00", align 1
@.str.1048 = private unnamed_addr constant [24 x i8] c"-fsched-group-heuristic\00", align 1
@.str.1049 = private unnamed_addr constant [44 x i8] c"Enable the group heuristic in the scheduler\00", align 1
@.str.1050 = private unnamed_addr constant [19 x i8] c"-fsched-interblock\00", align 1
@.str.1051 = private unnamed_addr constant [38 x i8] c"Enable scheduling across basic blocks\00", align 1
@.str.1052 = private unnamed_addr constant [28 x i8] c"-fsched-last-insn-heuristic\00", align 1
@.str.1053 = private unnamed_addr constant [55 x i8] c"Enable the last instruction heuristic in the scheduler\00", align 1
@.str.1054 = private unnamed_addr constant [17 x i8] c"-fsched-pressure\00", align 1
@.str.1055 = private unnamed_addr constant [51 x i8] c"Enable register pressure sensitive insn scheduling\00", align 1
@.str.1056 = private unnamed_addr constant [23 x i8] c"-fsched-rank-heuristic\00", align 1
@.str.1057 = private unnamed_addr constant [43 x i8] c"Enable the rank heuristic in the scheduler\00", align 1
@.str.1058 = private unnamed_addr constant [13 x i8] c"-fsched-spec\00", align 1
@.str.1059 = private unnamed_addr constant [38 x i8] c"Allow speculative motion of non-loads\00", align 1
@.str.1060 = private unnamed_addr constant [28 x i8] c"-fsched-spec-insn-heuristic\00", align 1
@.str.1061 = private unnamed_addr constant [62 x i8] c"Enable the speculative instruction heuristic in the scheduler\00", align 1
@.str.1062 = private unnamed_addr constant [18 x i8] c"-fsched-spec-load\00", align 1
@.str.1063 = private unnamed_addr constant [39 x i8] c"Allow speculative motion of some loads\00", align 1
@.str.1064 = private unnamed_addr constant [28 x i8] c"-fsched-spec-load-dangerous\00", align 1
@.str.1065 = private unnamed_addr constant [39 x i8] c"Allow speculative motion of more loads\00", align 1
@.str.1066 = private unnamed_addr constant [22 x i8] c"-fsched-stalled-insns\00", align 1
@.str.1067 = private unnamed_addr constant [43 x i8] c"Allow premature scheduling of queued insns\00", align 1
@.str.1068 = private unnamed_addr constant [26 x i8] c"-fsched-stalled-insns-dep\00", align 1
@.str.1069 = private unnamed_addr constant [73 x i8] c"Set dependence distance checking in premature scheduling of queued insns\00", align 1
@.str.1070 = private unnamed_addr constant [27 x i8] c"-fsched-stalled-insns-dep=\00", align 1
@.str.1071 = private unnamed_addr constant [108 x i8] c"-fsched-stalled-insns-dep=<number>\09Set dependence distance checking in premature scheduling of queued insns\00", align 1
@.str.1072 = private unnamed_addr constant [23 x i8] c"-fsched-stalled-insns=\00", align 1
@.str.1073 = private unnamed_addr constant [92 x i8] c"-fsched-stalled-insns=<number>\09Set number of queued insns that can be prematurely scheduled\00", align 1
@.str.1074 = private unnamed_addr constant [17 x i8] c"-fsched-verbose=\00", align 1
@.str.1075 = private unnamed_addr constant [66 x i8] c"-fsched-verbose=<number>\09Set the verbosity level of the scheduler\00", align 1
@.str.1076 = private unnamed_addr constant [25 x i8] c"-fsched2-use-superblocks\00", align 1
@.str.1077 = private unnamed_addr constant [52 x i8] c"If scheduling post reload, do superblock scheduling\00", align 1
@.str.1078 = private unnamed_addr constant [20 x i8] c"-fsched2-use-traces\00", align 1
@.str.1079 = private unnamed_addr constant [17 x i8] c"-fschedule-insns\00", align 1
@.str.1080 = private unnamed_addr constant [51 x i8] c"Reschedule instructions before register allocation\00", align 1
@.str.1081 = private unnamed_addr constant [18 x i8] c"-fschedule-insns2\00", align 1
@.str.1082 = private unnamed_addr constant [50 x i8] c"Reschedule instructions after register allocation\00", align 1
@.str.1083 = private unnamed_addr constant [20 x i8] c"-fsecond-underscore\00", align 1
@.str.1084 = private unnamed_addr constant [70 x i8] c"Append a second underscore if the name already contains an underscore\00", align 1
@.str.1085 = private unnamed_addr constant [18 x i8] c"-fsection-anchors\00", align 1
@.str.1086 = private unnamed_addr constant [58 x i8] c"Access data in the same section from shared anchor points\00", align 1
@.str.1087 = private unnamed_addr constant [6 x i8] c"-fsee\00", align 1
@.str.1088 = private unnamed_addr constant [23 x i8] c"-fsel-sched-pipelining\00", align 1
@.str.1089 = private unnamed_addr constant [71 x i8] c"Perform software pipelining of inner loops during selective scheduling\00", align 1
@.str.1090 = private unnamed_addr constant [35 x i8] c"-fsel-sched-pipelining-outer-loops\00", align 1
@.str.1091 = private unnamed_addr constant [71 x i8] c"Perform software pipelining of outer loops during selective scheduling\00", align 1
@.str.1092 = private unnamed_addr constant [33 x i8] c"-fsel-sched-reschedule-pipelined\00", align 1
@.str.1093 = private unnamed_addr constant [48 x i8] c"Reschedule pipelined regions without pipelining\00", align 1
@.str.1094 = private unnamed_addr constant [23 x i8] c"-fselective-scheduling\00", align 1
@.str.1095 = private unnamed_addr constant [59 x i8] c"Schedule instructions using selective scheduling algorithm\00", align 1
@.str.1096 = private unnamed_addr constant [24 x i8] c"-fselective-scheduling2\00", align 1
@.str.1097 = private unnamed_addr constant [38 x i8] c"Run selective scheduling after reload\00", align 1
@.str.1098 = private unnamed_addr constant [15 x i8] c"-fshort-double\00", align 1
@.str.1099 = private unnamed_addr constant [42 x i8] c"Use the same size for double as for float\00", align 1
@.str.1100 = private unnamed_addr constant [14 x i8] c"-fshort-enums\00", align 1
@.str.1101 = private unnamed_addr constant [62 x i8] c"Use the narrowest integer type possible for enumeration types\00", align 1
@.str.1102 = private unnamed_addr constant [14 x i8] c"-fshort-wchar\00", align 1
@.str.1103 = private unnamed_addr constant [63 x i8] c"Force the underlying type for \22wchar_t\22 to be \22unsigned short\22\00", align 1
@.str.1104 = private unnamed_addr constant [14 x i8] c"-fshow-column\00", align 1
@.str.1105 = private unnamed_addr constant [64 x i8] c"Show column numbers in diagnostics, when available.  Default on\00", align 1
@.str.1106 = private unnamed_addr constant [12 x i8] c"-fsign-zero\00", align 1
@.str.1107 = private unnamed_addr constant [35 x i8] c"Apply negative sign to zero values\00", align 1
@.str.1108 = private unnamed_addr constant [17 x i8] c"-fsignaling-nans\00", align 1
@.str.1109 = private unnamed_addr constant [56 x i8] c"Disable optimizations observable by IEEE signaling NaNs\00", align 1
@.str.1110 = private unnamed_addr constant [19 x i8] c"-fsigned-bitfields\00", align 1
@.str.1111 = private unnamed_addr constant [66 x i8] c"When \22signed\22 or \22unsigned\22 is not given make the bitfield signed\00", align 1
@.str.1112 = private unnamed_addr constant [14 x i8] c"-fsigned-char\00", align 1
@.str.1113 = private unnamed_addr constant [30 x i8] c"Make \22char\22 signed by default\00", align 1
@.str.1114 = private unnamed_addr constant [15 x i8] c"-fsigned-zeros\00", align 1
@.str.1115 = private unnamed_addr constant [77 x i8] c"Disable floating point optimizations that ignore the IEEE signedness of zero\00", align 1
@.str.1116 = private unnamed_addr constant [28 x i8] c"-fsingle-precision-constant\00", align 1
@.str.1117 = private unnamed_addr constant [63 x i8] c"Convert floating point constants to single precision constants\00", align 1
@.str.1118 = private unnamed_addr constant [19 x i8] c"-fsource-filename=\00", align 1
@.str.1119 = private unnamed_addr constant [10 x i8] c"-fsource=\00", align 1
@.str.1120 = private unnamed_addr constant [32 x i8] c"Set the source language version\00", align 1
@.str.1121 = private unnamed_addr constant [24 x i8] c"-fsplit-ivs-in-unroller\00", align 1
@.str.1122 = private unnamed_addr constant [63 x i8] c"Split lifetimes of induction variables when loops are unrolled\00", align 1
@.str.1123 = private unnamed_addr constant [19 x i8] c"-fsplit-wide-types\00", align 1
@.str.1124 = private unnamed_addr constant [44 x i8] c"Split wide types into independent registers\00", align 1
@.str.1125 = private unnamed_addr constant [11 x i8] c"-fsquangle\00", align 1
@.str.1126 = private unnamed_addr constant [14 x i8] c"-fstack-check\00", align 1
@.str.1127 = private unnamed_addr constant [77 x i8] c"Insert stack checking code into the program.  Same as -fstack-check=specific\00", align 1
@.str.1128 = private unnamed_addr constant [15 x i8] c"-fstack-check=\00", align 1
@.str.1129 = private unnamed_addr constant [80 x i8] c"-fstack-check=[no|generic|specific]\09Insert stack checking code into the program\00", align 1
@.str.1130 = private unnamed_addr constant [14 x i8] c"-fstack-limit\00", align 1
@.str.1131 = private unnamed_addr constant [24 x i8] c"-fstack-limit-register=\00", align 1
@.str.1132 = private unnamed_addr constant [73 x i8] c"-fstack-limit-register=<register>\09Trap if the stack goes past <register>\00", align 1
@.str.1133 = private unnamed_addr constant [22 x i8] c"-fstack-limit-symbol=\00", align 1
@.str.1134 = private unnamed_addr constant [70 x i8] c"-fstack-limit-symbol=<name>\09Trap if the stack goes past symbol <name>\00", align 1
@.str.1135 = private unnamed_addr constant [18 x i8] c"-fstack-protector\00", align 1
@.str.1136 = private unnamed_addr constant [43 x i8] c"Use propolice as a stack protection method\00", align 1
@.str.1137 = private unnamed_addr constant [22 x i8] c"-fstack-protector-all\00", align 1
@.str.1138 = private unnamed_addr constant [49 x i8] c"Use a stack protection method for every function\00", align 1
@.str.1139 = private unnamed_addr constant [8 x i8] c"-fstats\00", align 1
@.str.1140 = private unnamed_addr constant [50 x i8] c"Display statistics accumulated during compilation\00", align 1
@.str.1141 = private unnamed_addr constant [14 x i8] c"-fstore-check\00", align 1
@.str.1142 = private unnamed_addr constant [58 x i8] c"Enable assignability checks for stores into object arrays\00", align 1
@.str.1143 = private unnamed_addr constant [18 x i8] c"-fstrength-reduce\00", align 1
@.str.1144 = private unnamed_addr constant [18 x i8] c"-fstrict-aliasing\00", align 1
@.str.1145 = private unnamed_addr constant [35 x i8] c"Assume strict aliasing rules apply\00", align 1
@.str.1146 = private unnamed_addr constant [18 x i8] c"-fstrict-overflow\00", align 1
@.str.1147 = private unnamed_addr constant [35 x i8] c"Treat signed overflow as undefined\00", align 1
@.str.1148 = private unnamed_addr constant [19 x i8] c"-fstrict-prototype\00", align 1
@.str.1149 = private unnamed_addr constant [14 x i8] c"-fsyntax-only\00", align 1
@.str.1150 = private unnamed_addr constant [35 x i8] c"Check for syntax errors, then stop\00", align 1
@.str.1151 = private unnamed_addr constant [11 x i8] c"-ftabstop=\00", align 1
@.str.1152 = private unnamed_addr constant [67 x i8] c"-ftabstop=<number>\09Distance between tab stops for column reporting\00", align 1
@.str.1153 = private unnamed_addr constant [14 x i8] c"-ftarget-help\00", align 1
@.str.1154 = private unnamed_addr constant [10 x i8] c"-ftarget=\00", align 1
@.str.1155 = private unnamed_addr constant [26 x i8] c"Set the target VM version\00", align 1
@.str.1156 = private unnamed_addr constant [18 x i8] c"-ftemplate-depth-\00", align 1
@.str.1157 = private unnamed_addr constant [18 x i8] c"-ftemplate-depth=\00", align 1
@.str.1158 = private unnamed_addr constant [71 x i8] c"-ftemplate-depth=<number>\09Specify maximum template instantiation depth\00", align 1
@.str.1159 = private unnamed_addr constant [16 x i8] c"-ftest-coverage\00", align 1
@.str.1160 = private unnamed_addr constant [35 x i8] c"Create data files needed by \22gcov\22\00", align 1
@.str.1161 = private unnamed_addr constant [19 x i8] c"-fthis-is-variable\00", align 1
@.str.1162 = private unnamed_addr constant [15 x i8] c"-fthread-jumps\00", align 1
@.str.1163 = private unnamed_addr constant [37 x i8] c"Perform jump threading optimizations\00", align 1
@.str.1164 = private unnamed_addr constant [21 x i8] c"-fthreadsafe-statics\00", align 1
@.str.1165 = private unnamed_addr constant [88 x i8] c"-fno-threadsafe-statics\09Do not generate thread-safe code for initializing local statics\00", align 1
@.str.1166 = private unnamed_addr constant [14 x i8] c"-ftime-report\00", align 1
@.str.1167 = private unnamed_addr constant [44 x i8] c"Report the time taken by each compiler pass\00", align 1
@.str.1168 = private unnamed_addr constant [13 x i8] c"-ftls-model=\00", align 1
@.str.1169 = private unnamed_addr constant [126 x i8] c"-ftls-model=[global-dynamic|local-dynamic|initial-exec|local-exec]\09Set the default thread-local storage code generation model\00", align 1
@.str.1170 = private unnamed_addr constant [19 x i8] c"-ftoplevel-reorder\00", align 1
@.str.1171 = private unnamed_addr constant [49 x i8] c"Reorder top level functions, variables, and asms\00", align 1
@.str.1172 = private unnamed_addr constant [9 x i8] c"-ftracer\00", align 1
@.str.1173 = private unnamed_addr constant [50 x i8] c"Perform superblock formation via tail duplication\00", align 1
@.str.1174 = private unnamed_addr constant [16 x i8] c"-ftrapping-math\00", align 1
@.str.1175 = private unnamed_addr constant [42 x i8] c"Assume floating-point operations can trap\00", align 1
@.str.1176 = private unnamed_addr constant [8 x i8] c"-ftrapv\00", align 1
@.str.1177 = private unnamed_addr constant [69 x i8] c"Trap for signed overflow in addition, subtraction and multiplication\00", align 1
@.str.1178 = private unnamed_addr constant [24 x i8] c"-ftree-builtin-call-dce\00", align 1
@.str.1179 = private unnamed_addr constant [59 x i8] c"Enable conditional dead code elimination for builtin calls\00", align 1
@.str.1180 = private unnamed_addr constant [11 x i8] c"-ftree-ccp\00", align 1
@.str.1181 = private unnamed_addr constant [37 x i8] c"Enable SSA-CCP optimization on trees\00", align 1
@.str.1182 = private unnamed_addr constant [10 x i8] c"-ftree-ch\00", align 1
@.str.1183 = private unnamed_addr constant [36 x i8] c"Enable loop header copying on trees\00", align 1
@.str.1184 = private unnamed_addr constant [17 x i8] c"-ftree-copy-prop\00", align 1
@.str.1185 = private unnamed_addr constant [33 x i8] c"Enable copy propagation on trees\00", align 1
@.str.1186 = private unnamed_addr constant [18 x i8] c"-ftree-copyrename\00", align 1
@.str.1187 = private unnamed_addr constant [52 x i8] c"Replace SSA temporaries with better names in copies\00", align 1
@.str.1188 = private unnamed_addr constant [14 x i8] c"-ftree-cselim\00", align 1
@.str.1189 = private unnamed_addr constant [51 x i8] c"Transform condition stores into unconditional ones\00", align 1
@.str.1190 = private unnamed_addr constant [11 x i8] c"-ftree-dce\00", align 1
@.str.1191 = private unnamed_addr constant [55 x i8] c"Enable SSA dead code elimination optimization on trees\00", align 1
@.str.1192 = private unnamed_addr constant [22 x i8] c"-ftree-dominator-opts\00", align 1
@.str.1193 = private unnamed_addr constant [31 x i8] c"Enable dominator optimizations\00", align 1
@.str.1194 = private unnamed_addr constant [11 x i8] c"-ftree-dse\00", align 1
@.str.1195 = private unnamed_addr constant [30 x i8] c"Enable dead store elimination\00", align 1
@.str.1196 = private unnamed_addr constant [16 x i8] c"-ftree-forwprop\00", align 1
@.str.1197 = private unnamed_addr constant [36 x i8] c"Enable forward propagation on trees\00", align 1
@.str.1198 = private unnamed_addr constant [11 x i8] c"-ftree-fre\00", align 1
@.str.1199 = private unnamed_addr constant [50 x i8] c"Enable Full Redundancy Elimination (FRE) on trees\00", align 1
@.str.1200 = private unnamed_addr constant [25 x i8] c"-ftree-loop-distribution\00", align 1
@.str.1201 = private unnamed_addr constant [34 x i8] c"Enable loop distribution on trees\00", align 1
@.str.1202 = private unnamed_addr constant [15 x i8] c"-ftree-loop-im\00", align 1
@.str.1203 = private unnamed_addr constant [38 x i8] c"Enable loop invariant motion on trees\00", align 1
@.str.1204 = private unnamed_addr constant [20 x i8] c"-ftree-loop-ivcanon\00", align 1
@.str.1205 = private unnamed_addr constant [46 x i8] c"Create canonical induction variables in loops\00", align 1
@.str.1206 = private unnamed_addr constant [19 x i8] c"-ftree-loop-linear\00", align 1
@.str.1207 = private unnamed_addr constant [39 x i8] c"Enable linear loop transforms on trees\00", align 1
@.str.1208 = private unnamed_addr constant [21 x i8] c"-ftree-loop-optimize\00", align 1
@.str.1209 = private unnamed_addr constant [40 x i8] c"Enable loop optimizations on tree level\00", align 1
@.str.1210 = private unnamed_addr constant [11 x i8] c"-ftree-lrs\00", align 1
@.str.1211 = private unnamed_addr constant [57 x i8] c"Perform live range splitting during the SSA->normal pass\00", align 1
@.str.1212 = private unnamed_addr constant [26 x i8] c"-ftree-parallelize-loops=\00", align 1
@.str.1213 = private unnamed_addr constant [42 x i8] c"Enable automatic parallelization of loops\00", align 1
@.str.1214 = private unnamed_addr constant [15 x i8] c"-ftree-phiprop\00", align 1
@.str.1215 = private unnamed_addr constant [49 x i8] c"Enable hoisting loads from conditional pointers.\00", align 1
@.str.1216 = private unnamed_addr constant [11 x i8] c"-ftree-pre\00", align 1
@.str.1217 = private unnamed_addr constant [37 x i8] c"Enable SSA-PRE optimization on trees\00", align 1
@.str.1218 = private unnamed_addr constant [11 x i8] c"-ftree-pta\00", align 1
@.str.1219 = private unnamed_addr constant [52 x i8] c"Perform function-local points-to analysis on trees.\00", align 1
@.str.1220 = private unnamed_addr constant [15 x i8] c"-ftree-reassoc\00", align 1
@.str.1221 = private unnamed_addr constant [35 x i8] c"Enable reassociation on tree level\00", align 1
@.str.1222 = private unnamed_addr constant [14 x i8] c"-ftree-salias\00", align 1
@.str.1223 = private unnamed_addr constant [18 x i8] c"-ftree-scev-cprop\00", align 1
@.str.1224 = private unnamed_addr constant [57 x i8] c"Enable copy propagation of scalar-evolution information.\00", align 1
@.str.1225 = private unnamed_addr constant [12 x i8] c"-ftree-sink\00", align 1
@.str.1226 = private unnamed_addr constant [33 x i8] c"Enable SSA code sinking on trees\00", align 1
@.str.1227 = private unnamed_addr constant [21 x i8] c"-ftree-slp-vectorize\00", align 1
@.str.1228 = private unnamed_addr constant [48 x i8] c"Enable basic block vectorization (SLP) on trees\00", align 1
@.str.1229 = private unnamed_addr constant [11 x i8] c"-ftree-sra\00", align 1
@.str.1230 = private unnamed_addr constant [41 x i8] c"Perform scalar replacement of aggregates\00", align 1
@.str.1231 = private unnamed_addr constant [17 x i8] c"-ftree-store-ccp\00", align 1
@.str.1232 = private unnamed_addr constant [23 x i8] c"-ftree-store-copy-prop\00", align 1
@.str.1233 = private unnamed_addr constant [25 x i8] c"-ftree-switch-conversion\00", align 1
@.str.1234 = private unnamed_addr constant [47 x i8] c"Perform conversions of switch initializations.\00", align 1
@.str.1235 = private unnamed_addr constant [11 x i8] c"-ftree-ter\00", align 1
@.str.1236 = private unnamed_addr constant [54 x i8] c"Replace temporary expressions in the SSA->normal pass\00", align 1
@.str.1237 = private unnamed_addr constant [25 x i8] c"-ftree-vect-loop-version\00", align 1
@.str.1238 = private unnamed_addr constant [62 x i8] c"Enable loop versioning when doing loop vectorization on trees\00", align 1
@.str.1239 = private unnamed_addr constant [17 x i8] c"-ftree-vectorize\00", align 1
@.str.1240 = private unnamed_addr constant [35 x i8] c"Enable loop vectorization on trees\00", align 1
@.str.1241 = private unnamed_addr constant [27 x i8] c"-ftree-vectorizer-verbose=\00", align 1
@.str.1242 = private unnamed_addr constant [77 x i8] c"-ftree-vectorizer-verbose=<number>\09Set the verbosity level of the vectorizer\00", align 1
@.str.1243 = private unnamed_addr constant [11 x i8] c"-ftree-vrp\00", align 1
@.str.1244 = private unnamed_addr constant [41 x i8] c"Perform Value Range Propagation on trees\00", align 1
@.str.1245 = private unnamed_addr constant [15 x i8] c"-funderscoring\00", align 1
@.str.1246 = private unnamed_addr constant [47 x i8] c"Append underscores to externally visible names\00", align 1
@.str.1247 = private unnamed_addr constant [17 x i8] c"-funit-at-a-time\00", align 1
@.str.1248 = private unnamed_addr constant [41 x i8] c"Compile whole compilation unit at a time\00", align 1
@.str.1249 = private unnamed_addr constant [19 x i8] c"-funroll-all-loops\00", align 1
@.str.1250 = private unnamed_addr constant [37 x i8] c"Perform loop unrolling for all loops\00", align 1
@.str.1251 = private unnamed_addr constant [15 x i8] c"-funroll-loops\00", align 1
@.str.1252 = private unnamed_addr constant [53 x i8] c"Perform loop unrolling when iteration count is known\00", align 1
@.str.1253 = private unnamed_addr constant [28 x i8] c"-funsafe-loop-optimizations\00", align 1
@.str.1254 = private unnamed_addr constant [71 x i8] c"Allow loop optimizations to assume that the loops behave in normal way\00", align 1
@.str.1255 = private unnamed_addr constant [28 x i8] c"-funsafe-math-optimizations\00", align 1
@.str.1256 = private unnamed_addr constant [64 x i8] c"Allow math optimizations that may violate IEEE or ISO standards\00", align 1
@.str.1257 = private unnamed_addr constant [21 x i8] c"-funsigned-bitfields\00", align 1
@.str.1258 = private unnamed_addr constant [68 x i8] c"When \22signed\22 or \22unsigned\22 is not given make the bitfield unsigned\00", align 1
@.str.1259 = private unnamed_addr constant [16 x i8] c"-funsigned-char\00", align 1
@.str.1260 = private unnamed_addr constant [32 x i8] c"Make \22char\22 unsigned by default\00", align 1
@.str.1261 = private unnamed_addr constant [17 x i8] c"-funswitch-loops\00", align 1
@.str.1262 = private unnamed_addr constant [25 x i8] c"Perform loop unswitching\00", align 1
@.str.1263 = private unnamed_addr constant [16 x i8] c"-funwind-tables\00", align 1
@.str.1264 = private unnamed_addr constant [51 x i8] c"Just generate unwind tables for exception handling\00", align 1
@.str.1265 = private unnamed_addr constant [22 x i8] c"-fuse-atomic-builtins\00", align 1
@.str.1266 = private unnamed_addr constant [45 x i8] c"Generate code for built-in atomic operations\00", align 1
@.str.1267 = private unnamed_addr constant [15 x i8] c"-fuse-boehm-gc\00", align 1
@.str.1268 = private unnamed_addr constant [31 x i8] c"Generate code for the Boehm GC\00", align 1
@.str.1269 = private unnamed_addr constant [17 x i8] c"-fuse-cxa-atexit\00", align 1
@.str.1270 = private unnamed_addr constant [41 x i8] c"Use __cxa_atexit to register destructors\00", align 1
@.str.1271 = private unnamed_addr constant [28 x i8] c"-fuse-cxa-get-exception-ptr\00", align 1
@.str.1272 = private unnamed_addr constant [50 x i8] c"Use __cxa_get_exception_ptr in exception handling\00", align 1
@.str.1273 = private unnamed_addr constant [24 x i8] c"-fuse-divide-subroutine\00", align 1
@.str.1274 = private unnamed_addr constant [47 x i8] c"Call a library routine to do integer divisions\00", align 1
@.str.1275 = private unnamed_addr constant [20 x i8] c"-fuse-linker-plugin\00", align 1
@.str.1276 = private unnamed_addr constant [15 x i8] c"-fvar-tracking\00", align 1
@.str.1277 = private unnamed_addr constant [26 x i8] c"Perform variable tracking\00", align 1
@flag_var_tracking = external global i32, align 4
@.str.1278 = private unnamed_addr constant [27 x i8] c"-fvar-tracking-assignments\00", align 1
@.str.1279 = private unnamed_addr constant [52 x i8] c"Perform variable tracking by annotating assignments\00", align 1
@flag_var_tracking_assignments = external global i32, align 4
@.str.1280 = private unnamed_addr constant [34 x i8] c"-fvar-tracking-assignments-toggle\00", align 1
@.str.1281 = private unnamed_addr constant [34 x i8] c"Toggle -fvar-tracking-assignments\00", align 1
@flag_var_tracking_assignments_toggle = external global i32, align 4
@.str.1282 = private unnamed_addr constant [22 x i8] c"-fvar-tracking-uninit\00", align 1
@.str.1283 = private unnamed_addr constant [72 x i8] c"Perform variable tracking and also tag variables that are uninitialized\00", align 1
@.str.1284 = private unnamed_addr constant [33 x i8] c"-fvariable-expansion-in-unroller\00", align 1
@.str.1285 = private unnamed_addr constant [49 x i8] c"Apply variable expansion when loops are unrolled\00", align 1
@.str.1286 = private unnamed_addr constant [18 x i8] c"-fvect-cost-model\00", align 1
@.str.1287 = private unnamed_addr constant [42 x i8] c"Enable use of cost model in vectorization\00", align 1
@.str.1288 = private unnamed_addr constant [14 x i8] c"-fverbose-asm\00", align 1
@.str.1289 = private unnamed_addr constant [41 x i8] c"Add extra commentary to assembler output\00", align 1
@.str.1290 = private unnamed_addr constant [10 x i8] c"-fversion\00", align 1
@.str.1291 = private unnamed_addr constant [28 x i8] c"-fvisibility-inlines-hidden\00", align 1
@.str.1292 = private unnamed_addr constant [54 x i8] c"Marks all inlined methods as having hidden visibility\00", align 1
@.str.1293 = private unnamed_addr constant [23 x i8] c"-fvisibility-ms-compat\00", align 1
@.str.1294 = private unnamed_addr constant [63 x i8] c"Changes visibility to match Microsoft Visual Studio by default\00", align 1
@.str.1295 = private unnamed_addr constant [14 x i8] c"-fvisibility=\00", align 1
@.str.1296 = private unnamed_addr constant [83 x i8] c"-fvisibility=[default|internal|hidden|protected]\09Set the default symbol visibility\00", align 1
@.str.1297 = private unnamed_addr constant [6 x i8] c"-fvpt\00", align 1
@.str.1298 = private unnamed_addr constant [47 x i8] c"Use expression value profiles in optimizations\00", align 1
@.str.1299 = private unnamed_addr constant [12 x i8] c"-fvtable-gc\00", align 1
@.str.1300 = private unnamed_addr constant [33 x i8] c"Discard unused virtual functions\00", align 1
@.str.1301 = private unnamed_addr constant [16 x i8] c"-fvtable-thunks\00", align 1
@.str.1302 = private unnamed_addr constant [31 x i8] c"Implement vtables using thunks\00", align 1
@.str.1303 = private unnamed_addr constant [7 x i8] c"-fweak\00", align 1
@.str.1304 = private unnamed_addr constant [41 x i8] c"Emit common-like symbols as weak symbols\00", align 1
@.str.1305 = private unnamed_addr constant [6 x i8] c"-fweb\00", align 1
@.str.1306 = private unnamed_addr constant [59 x i8] c"Construct webs and split unrelated uses of single variable\00", align 1
@.str.1307 = private unnamed_addr constant [13 x i8] c"-fwhole-file\00", align 1
@.str.1308 = private unnamed_addr constant [59 x i8] c"Compile all program units at once and check all interfaces\00", align 1
@.str.1309 = private unnamed_addr constant [16 x i8] c"-fwhole-program\00", align 1
@.str.1310 = private unnamed_addr constant [36 x i8] c"Perform whole program optimizations\00", align 1
@.str.1311 = private unnamed_addr constant [8 x i8] c"-fwhopr\00", align 1
@.str.1312 = private unnamed_addr constant [43 x i8] c"Enable partitioned link-time optimization.\00", align 1
@.str.1313 = private unnamed_addr constant [21 x i8] c"-fwide-exec-charset=\00", align 1
@.str.1314 = private unnamed_addr constant [100 x i8] c"-fwide-exec-charset=<cset>\09Convert all wide strings and character constants to character set <cset>\00", align 1
@.str.1315 = private unnamed_addr constant [20 x i8] c"-fworking-directory\00", align 1
@.str.1316 = private unnamed_addr constant [69 x i8] c"Generate a #line directive pointing at the current working directory\00", align 1
@.str.1317 = private unnamed_addr constant [6 x i8] c"-fwpa\00", align 1
@.str.1318 = private unnamed_addr constant [66 x i8] c"Run the link-time optimizer in whole program analysis (WPA) mode.\00", align 1
@.str.1319 = private unnamed_addr constant [8 x i8] c"-fwrapv\00", align 1
@.str.1320 = private unnamed_addr constant [47 x i8] c"Assume signed arithmetic overflow wraps around\00", align 1
@.str.1321 = private unnamed_addr constant [7 x i8] c"-fxref\00", align 1
@.str.1322 = private unnamed_addr constant [35 x i8] c"Emit cross referencing information\00", align 1
@.str.1323 = private unnamed_addr constant [26 x i8] c"-fzero-initialized-in-bss\00", align 1
@.str.1324 = private unnamed_addr constant [45 x i8] c"Put zero initialized data in the bss section\00", align 1
@.str.1325 = private unnamed_addr constant [12 x i8] c"-fzero-link\00", align 1
@.str.1326 = private unnamed_addr constant [75 x i8] c"Generate lazy class lookup (via objc_getClass()) for use in Zero-Link mode\00", align 1
@.str.1327 = private unnamed_addr constant [3 x i8] c"-g\00", align 1
@.str.1328 = private unnamed_addr constant [45 x i8] c"Generate debug information in default format\00", align 1
@.str.1329 = private unnamed_addr constant [6 x i8] c"-gant\00", align 1
@.str.1330 = private unnamed_addr constant [7 x i8] c"-gcoff\00", align 1
@.str.1331 = private unnamed_addr constant [42 x i8] c"Generate debug information in COFF format\00", align 1
@.str.1332 = private unnamed_addr constant [9 x i8] c"-gdwarf+\00", align 1
@.str.1333 = private unnamed_addr constant [9 x i8] c"-gdwarf-\00", align 1
@.str.1334 = private unnamed_addr constant [57 x i8] c"Generate debug information in DWARF v2 (or later) format\00", align 1
@.str.1335 = private unnamed_addr constant [11 x i8] c"-gen-decls\00", align 1
@.str.1336 = private unnamed_addr constant [34 x i8] c"Dump declarations to a .decl file\00", align 1
@.str.1337 = private unnamed_addr constant [6 x i8] c"-ggdb\00", align 1
@.str.1338 = private unnamed_addr constant [54 x i8] c"Generate debug information in default extended format\00", align 1
@.str.1339 = private unnamed_addr constant [6 x i8] c"-gnat\00", align 1
@.str.1340 = private unnamed_addr constant [39 x i8] c"-gnat<options>\09Specify options to GNAT\00", align 1
@.str.1341 = private unnamed_addr constant [7 x i8] c"-gnatO\00", align 1
@.str.1342 = private unnamed_addr constant [18 x i8] c"-gno-strict-dwarf\00", align 1
@.str.1343 = private unnamed_addr constant [45 x i8] c"Emit DWARF additions beyond selected version\00", align 1
@.str.1344 = private unnamed_addr constant [8 x i8] c"-gstabs\00", align 1
@.str.1345 = private unnamed_addr constant [43 x i8] c"Generate debug information in STABS format\00", align 1
@.str.1346 = private unnamed_addr constant [9 x i8] c"-gstabs+\00", align 1
@.str.1347 = private unnamed_addr constant [52 x i8] c"Generate debug information in extended STABS format\00", align 1
@.str.1348 = private unnamed_addr constant [15 x i8] c"-gstrict-dwarf\00", align 1
@.str.1349 = private unnamed_addr constant [51 x i8] c"Don't emit DWARF additions beyond selected version\00", align 1
@.str.1350 = private unnamed_addr constant [9 x i8] c"-gtoggle\00", align 1
@.str.1351 = private unnamed_addr constant [36 x i8] c"Toggle debug information generation\00", align 1
@.str.1352 = private unnamed_addr constant [6 x i8] c"-gvms\00", align 1
@.str.1353 = private unnamed_addr constant [41 x i8] c"Generate debug information in VMS format\00", align 1
@.str.1354 = private unnamed_addr constant [8 x i8] c"-gxcoff\00", align 1
@.str.1355 = private unnamed_addr constant [43 x i8] c"Generate debug information in XCOFF format\00", align 1
@.str.1356 = private unnamed_addr constant [9 x i8] c"-gxcoff+\00", align 1
@.str.1357 = private unnamed_addr constant [52 x i8] c"Generate debug information in extended XCOFF format\00", align 1
@.str.1358 = private unnamed_addr constant [11 x i8] c"-idirafter\00", align 1
@.str.1359 = private unnamed_addr constant [65 x i8] c"-idirafter <dir>\09Add <dir> to the end of the system include path\00", align 1
@.str.1360 = private unnamed_addr constant [9 x i8] c"-imacros\00", align 1
@.str.1361 = private unnamed_addr constant [54 x i8] c"-imacros <file>\09Accept definition of macros in <file>\00", align 1
@.str.1362 = private unnamed_addr constant [11 x i8] c"-imultilib\00", align 1
@.str.1363 = private unnamed_addr constant [67 x i8] c"-imultilib <dir>\09Set <dir> to be the multilib include subdirectory\00", align 1
@.str.1364 = private unnamed_addr constant [9 x i8] c"-include\00", align 1
@.str.1365 = private unnamed_addr constant [66 x i8] c"-include <file>\09Include the contents of <file> before other files\00", align 1
@.str.1366 = private unnamed_addr constant [9 x i8] c"-iprefix\00", align 1
@.str.1367 = private unnamed_addr constant [64 x i8] c"-iprefix <path>\09Specify <path> as a prefix for next two options\00", align 1
@.str.1368 = private unnamed_addr constant [8 x i8] c"-iquote\00", align 1
@.str.1369 = private unnamed_addr constant [61 x i8] c"-iquote <dir>\09Add <dir> to the end of the quote include path\00", align 1
@.str.1370 = private unnamed_addr constant [10 x i8] c"-isysroot\00", align 1
@.str.1371 = private unnamed_addr constant [58 x i8] c"-isysroot <dir>\09Set <dir> to be the system root directory\00", align 1
@.str.1372 = private unnamed_addr constant [9 x i8] c"-isystem\00", align 1
@.str.1373 = private unnamed_addr constant [65 x i8] c"-isystem <dir>\09Add <dir> to the start of the system include path\00", align 1
@.str.1374 = private unnamed_addr constant [13 x i8] c"-iwithprefix\00", align 1
@.str.1375 = private unnamed_addr constant [67 x i8] c"-iwithprefix <dir>\09Add <dir> to the end of the system include path\00", align 1
@.str.1376 = private unnamed_addr constant [19 x i8] c"-iwithprefixbefore\00", align 1
@.str.1377 = private unnamed_addr constant [71 x i8] c"-iwithprefixbefore <dir>\09Add <dir> to the end of the main include path\00", align 1
@.str.1378 = private unnamed_addr constant [10 x i8] c"-lang-asm\00", align 1
@.str.1379 = private unnamed_addr constant [11 x i8] c"-lang-objc\00", align 1
@.str.1380 = private unnamed_addr constant [21 x i8] c"-m128bit-long-double\00", align 1
@.str.1381 = private unnamed_addr constant [26 x i8] c"sizeof(long double) is 16\00", align 1
@target_flags = external global i32, align 4
@.str.1382 = private unnamed_addr constant [5 x i8] c"-m32\00", align 1
@.str.1383 = private unnamed_addr constant [25 x i8] c"Generate 32bit i386 code\00", align 1
@ix86_isa_flags = external global i32, align 4
@.str.1384 = private unnamed_addr constant [8 x i8] c"-m3dnow\00", align 1
@.str.1385 = private unnamed_addr constant [34 x i8] c"Support 3DNow! built-in functions\00", align 1
@.str.1386 = private unnamed_addr constant [9 x i8] c"-m3dnowa\00", align 1
@.str.1387 = private unnamed_addr constant [41 x i8] c"Support Athlon 3Dnow! built-in functions\00", align 1
@.str.1388 = private unnamed_addr constant [5 x i8] c"-m64\00", align 1
@.str.1389 = private unnamed_addr constant [27 x i8] c"Generate 64bit x86-64 code\00", align 1
@.str.1390 = private unnamed_addr constant [8 x i8] c"-m80387\00", align 1
@.str.1391 = private unnamed_addr constant [16 x i8] c"Use hardware fp\00", align 1
@.str.1392 = private unnamed_addr constant [20 x i8] c"-m96bit-long-double\00", align 1
@.str.1393 = private unnamed_addr constant [26 x i8] c"sizeof(long double) is 12\00", align 1
@.str.1394 = private unnamed_addr constant [7 x i8] c"-mabi=\00", align 1
@.str.1395 = private unnamed_addr constant [45 x i8] c"Generate code that conforms to the given ABI\00", align 1
@.str.1396 = private unnamed_addr constant [6 x i8] c"-mabm\00", align 1
@.str.1397 = private unnamed_addr constant [73 x i8] c"Support code generation of Advanced Bit Manipulation (ABM) instructions.\00", align 1
@.str.1398 = private unnamed_addr constant [27 x i8] c"-maccumulate-outgoing-args\00", align 1
@.str.1399 = private unnamed_addr constant [62 x i8] c"Reserve space for outgoing arguments in the function prologue\00", align 1
@.str.1400 = private unnamed_addr constant [6 x i8] c"-maes\00", align 1
@.str.1401 = private unnamed_addr constant [51 x i8] c"Support AES built-in functions and code generation\00", align 1
@.str.1402 = private unnamed_addr constant [15 x i8] c"-malign-double\00", align 1
@.str.1403 = private unnamed_addr constant [37 x i8] c"Align some doubles on dword boundary\00", align 1
@.str.1404 = private unnamed_addr constant [19 x i8] c"-malign-functions=\00", align 1
@.str.1405 = private unnamed_addr constant [47 x i8] c"Function starts are aligned to this power of 2\00", align 1
@.str.1406 = private unnamed_addr constant [15 x i8] c"-malign-jumps=\00", align 1
@.str.1407 = private unnamed_addr constant [44 x i8] c"Jump targets are aligned to this power of 2\00", align 1
@.str.1408 = private unnamed_addr constant [15 x i8] c"-malign-loops=\00", align 1
@.str.1409 = private unnamed_addr constant [37 x i8] c"Loop code aligned to this power of 2\00", align 1
@.str.1410 = private unnamed_addr constant [18 x i8] c"-malign-stringops\00", align 1
@.str.1411 = private unnamed_addr constant [43 x i8] c"Align destination of the string operations\00", align 1
@.str.1412 = private unnamed_addr constant [8 x i8] c"-march=\00", align 1
@.str.1413 = private unnamed_addr constant [28 x i8] c"Generate code for given CPU\00", align 1
@.str.1414 = private unnamed_addr constant [7 x i8] c"-masm=\00", align 1
@.str.1415 = private unnamed_addr constant [28 x i8] c"Use given assembler dialect\00", align 1
@.str.1416 = private unnamed_addr constant [6 x i8] c"-mavx\00", align 1
@.str.1417 = private unnamed_addr constant [99 x i8] c"Support MMX, SSE, SSE2, SSE3, SSSE3, SSE4.1, SSE4.2 and AVX built-in functions and code generation\00", align 1
@.str.1418 = private unnamed_addr constant [15 x i8] c"-mbranch-cost=\00", align 1
@.str.1419 = private unnamed_addr constant [51 x i8] c"Branches are this expensive (1-5, arbitrary units)\00", align 1
@.str.1420 = private unnamed_addr constant [6 x i8] c"-mcld\00", align 1
@.str.1421 = private unnamed_addr constant [51 x i8] c"Generate cld instruction in the function prologue.\00", align 1
@.str.1422 = private unnamed_addr constant [10 x i8] c"-mcmodel=\00", align 1
@.str.1423 = private unnamed_addr constant [28 x i8] c"Use given x86-64 code model\00", align 1
@.str.1424 = private unnamed_addr constant [8 x i8] c"-mcrc32\00", align 1
@.str.1425 = private unnamed_addr constant [46 x i8] c"Support code generation of crc32 instruction.\00", align 1
@.str.1426 = private unnamed_addr constant [7 x i8] c"-mcx16\00", align 1
@.str.1427 = private unnamed_addr constant [51 x i8] c"Support code generation of cmpxchg16b instruction.\00", align 1
@.str.1428 = private unnamed_addr constant [17 x i8] c"-mfancy-math-387\00", align 1
@.str.1429 = private unnamed_addr constant [32 x i8] c"Generate sin, cos, sqrt for FPU\00", align 1
@.str.1430 = private unnamed_addr constant [6 x i8] c"-mfma\00", align 1
@.str.1431 = private unnamed_addr constant [104 x i8] c"Support MMX, SSE, SSE2, SSE3, SSSE3, SSE4.1, SSE4.2, AVX and FMA built-in functions and code generation\00", align 1
@.str.1432 = private unnamed_addr constant [7 x i8] c"-mfma4\00", align 1
@.str.1433 = private unnamed_addr constant [53 x i8] c"Support FMA4 built-in functions and code generation \00", align 1
@.str.1434 = private unnamed_addr constant [13 x i8] c"-mforce-drap\00", align 1
@.str.1435 = private unnamed_addr constant [70 x i8] c"Always use Dynamic Realigned Argument Pointer (DRAP) to realign stack\00", align 1
@.str.1436 = private unnamed_addr constant [16 x i8] c"-mfp-ret-in-387\00", align 1
@.str.1437 = private unnamed_addr constant [44 x i8] c"Return values of functions in FPU registers\00", align 1
@.str.1438 = private unnamed_addr constant [10 x i8] c"-mfpmath=\00", align 1
@.str.1439 = private unnamed_addr constant [64 x i8] c"Generate floating point mathematics using given instruction set\00", align 1
@.str.1440 = private unnamed_addr constant [13 x i8] c"-mfused-madd\00", align 1
@.str.1441 = private unnamed_addr constant [160 x i8] c"Enable automatic generation of fused floating point multiply-add instructions if the ISA supports such instructions.  The -mfused-madd option is on by default.\00", align 1
@.str.1442 = private unnamed_addr constant [8 x i8] c"-mglibc\00", align 1
@.str.1443 = private unnamed_addr constant [31 x i8] c"Use GNU libc instead of uClibc\00", align 1
@.str.1444 = private unnamed_addr constant [13 x i8] c"-mhard-float\00", align 1
@.str.1445 = private unnamed_addr constant [10 x i8] c"-mieee-fp\00", align 1
@.str.1446 = private unnamed_addr constant [33 x i8] c"Use IEEE math for fp comparisons\00", align 1
@.str.1447 = private unnamed_addr constant [27 x i8] c"-mincoming-stack-boundary=\00", align 1
@.str.1448 = private unnamed_addr constant [49 x i8] c"Assume incoming stack aligned to this power of 2\00", align 1
@.str.1449 = private unnamed_addr constant [23 x i8] c"-minline-all-stringops\00", align 1
@.str.1450 = private unnamed_addr constant [35 x i8] c"Inline all known string operations\00", align 1
@.str.1451 = private unnamed_addr constant [31 x i8] c"-minline-stringops-dynamically\00", align 1
@.str.1452 = private unnamed_addr constant [89 x i8] c"Inline memset/memcpy string operations, but perform inline version only for small blocks\00", align 1
@.str.1453 = private unnamed_addr constant [15 x i8] c"-mintel-syntax\00", align 1
@VAR_mintel_syntax = internal global i32 0, align 4
@.str.1454 = private unnamed_addr constant [24 x i8] c"-mlarge-data-threshold=\00", align 1
@.str.1455 = private unnamed_addr constant [85 x i8] c"Data greater than given threshold will go into .ldata section in x86-64 medium model\00", align 1
@.str.1456 = private unnamed_addr constant [6 x i8] c"-mlwp\00", align 1
@.str.1457 = private unnamed_addr constant [52 x i8] c"Support LWP built-in functions and code generation \00", align 1
@.str.1458 = private unnamed_addr constant [6 x i8] c"-mmmx\00", align 1
@.str.1459 = private unnamed_addr constant [31 x i8] c"Support MMX built-in functions\00", align 1
@.str.1460 = private unnamed_addr constant [8 x i8] c"-mmovbe\00", align 1
@.str.1461 = private unnamed_addr constant [46 x i8] c"Support code generation of movbe instruction.\00", align 1
@.str.1462 = private unnamed_addr constant [15 x i8] c"-mms-bitfields\00", align 1
@.str.1463 = private unnamed_addr constant [32 x i8] c"Use native (MS) bitfield layout\00", align 1
@.str.1464 = private unnamed_addr constant [21 x i8] c"-mno-align-stringops\00", align 1
@.str.1465 = private unnamed_addr constant [20 x i8] c"-mno-fancy-math-387\00", align 1
@.str.1466 = private unnamed_addr constant [15 x i8] c"-mno-push-args\00", align 1
@.str.1467 = private unnamed_addr constant [14 x i8] c"-mno-red-zone\00", align 1
@.str.1468 = private unnamed_addr constant [10 x i8] c"-mno-sse4\00", align 1
@.str.1469 = private unnamed_addr constant [72 x i8] c"Do not support SSE4.1 and SSE4.2 built-in functions and code generation\00", align 1
@.str.1470 = private unnamed_addr constant [26 x i8] c"-momit-leaf-frame-pointer\00", align 1
@.str.1471 = private unnamed_addr constant [41 x i8] c"Omit the frame pointer in leaf functions\00", align 1
@.str.1472 = private unnamed_addr constant [5 x i8] c"-mpc\00", align 1
@.str.1473 = private unnamed_addr constant [60 x i8] c"Set 80387 floating-point precision (-mpc32, -mpc64, -mpc80)\00", align 1
@.str.1474 = private unnamed_addr constant [9 x i8] c"-mpclmul\00", align 1
@.str.1475 = private unnamed_addr constant [54 x i8] c"Support PCLMUL built-in functions and code generation\00", align 1
@.str.1476 = private unnamed_addr constant [9 x i8] c"-mpopcnt\00", align 1
@.str.1477 = private unnamed_addr constant [47 x i8] c"Support code generation of popcnt instruction.\00", align 1
@.str.1478 = private unnamed_addr constant [28 x i8] c"-mpreferred-stack-boundary=\00", align 1
@.str.1479 = private unnamed_addr constant [49 x i8] c"Attempt to keep stack aligned to this power of 2\00", align 1
@.str.1480 = private unnamed_addr constant [12 x i8] c"-mpush-args\00", align 1
@.str.1481 = private unnamed_addr constant [49 x i8] c"Use push instructions to save outgoing arguments\00", align 1
@.str.1482 = private unnamed_addr constant [8 x i8] c"-mrecip\00", align 1
@.str.1483 = private unnamed_addr constant [50 x i8] c"Generate reciprocals instead of divss and sqrtss.\00", align 1
@.str.1484 = private unnamed_addr constant [11 x i8] c"-mred-zone\00", align 1
@.str.1485 = private unnamed_addr constant [32 x i8] c"Use red-zone in the x86-64 code\00", align 1
@.str.1486 = private unnamed_addr constant [11 x i8] c"-mregparm=\00", align 1
@.str.1487 = private unnamed_addr constant [51 x i8] c"Number of registers used to pass integer arguments\00", align 1
@.str.1488 = private unnamed_addr constant [6 x i8] c"-mrtd\00", align 1
@.str.1489 = private unnamed_addr constant [29 x i8] c"Alternate calling convention\00", align 1
@.str.1490 = private unnamed_addr constant [7 x i8] c"-msahf\00", align 1
@.str.1491 = private unnamed_addr constant [66 x i8] c"Support code generation of sahf instruction in 64bit x86-64 code.\00", align 1
@.str.1492 = private unnamed_addr constant [13 x i8] c"-msoft-float\00", align 1
@.str.1493 = private unnamed_addr constant [23 x i8] c"Do not use hardware fp\00", align 1
@.str.1494 = private unnamed_addr constant [6 x i8] c"-msse\00", align 1
@.str.1495 = private unnamed_addr constant [59 x i8] c"Support MMX and SSE built-in functions and code generation\00", align 1
@.str.1496 = private unnamed_addr constant [7 x i8] c"-msse2\00", align 1
@.str.1497 = private unnamed_addr constant [65 x i8] c"Support MMX, SSE and SSE2 built-in functions and code generation\00", align 1
@.str.1498 = private unnamed_addr constant [10 x i8] c"-msse2avx\00", align 1
@.str.1499 = private unnamed_addr constant [40 x i8] c"Encode SSE instructions with VEX prefix\00", align 1
@.str.1500 = private unnamed_addr constant [7 x i8] c"-msse3\00", align 1
@.str.1501 = private unnamed_addr constant [71 x i8] c"Support MMX, SSE, SSE2 and SSE3 built-in functions and code generation\00", align 1
@.str.1502 = private unnamed_addr constant [7 x i8] c"-msse4\00", align 1
@.str.1503 = private unnamed_addr constant [94 x i8] c"Support MMX, SSE, SSE2, SSE3, SSSE3, SSE4.1 and SSE4.2 built-in functions and code generation\00", align 1
@.str.1504 = private unnamed_addr constant [9 x i8] c"-msse4.1\00", align 1
@.str.1505 = private unnamed_addr constant [86 x i8] c"Support MMX, SSE, SSE2, SSE3, SSSE3 and SSE4.1 built-in functions and code generation\00", align 1
@.str.1506 = private unnamed_addr constant [9 x i8] c"-msse4.2\00", align 1
@.str.1507 = private unnamed_addr constant [8 x i8] c"-msse4a\00", align 1
@.str.1508 = private unnamed_addr constant [78 x i8] c"Support MMX, SSE, SSE2, SSE3 and SSE4A built-in functions and code generation\00", align 1
@.str.1509 = private unnamed_addr constant [13 x i8] c"-msseregparm\00", align 1
@.str.1510 = private unnamed_addr constant [56 x i8] c"Use SSE register passing conventions for SF and DF mode\00", align 1
@.str.1511 = private unnamed_addr constant [8 x i8] c"-mssse3\00", align 1
@.str.1512 = private unnamed_addr constant [78 x i8] c"Support MMX, SSE, SSE2, SSE3 and SSSE3 built-in functions and code generation\00", align 1
@.str.1513 = private unnamed_addr constant [18 x i8] c"-mstack-arg-probe\00", align 1
@.str.1514 = private unnamed_addr constant [21 x i8] c"Enable stack probing\00", align 1
@.str.1515 = private unnamed_addr constant [15 x i8] c"-mstackrealign\00", align 1
@.str.1516 = private unnamed_addr constant [26 x i8] c"Realign stack in prologue\00", align 1
@.str.1517 = private unnamed_addr constant [21 x i8] c"-mstringop-strategy=\00", align 1
@.str.1518 = private unnamed_addr constant [42 x i8] c"Chose strategy to generate stringop using\00", align 1
@.str.1519 = private unnamed_addr constant [15 x i8] c"-mtls-dialect=\00", align 1
@.str.1520 = private unnamed_addr constant [39 x i8] c"Use given thread-local storage dialect\00", align 1
@.str.1521 = private unnamed_addr constant [22 x i8] c"-mtls-direct-seg-refs\00", align 1
@.str.1522 = private unnamed_addr constant [58 x i8] c"Use direct references against %gs when accessing tls data\00", align 1
@.str.1523 = private unnamed_addr constant [8 x i8] c"-mtune=\00", align 1
@.str.1524 = private unnamed_addr constant [28 x i8] c"Schedule code for given CPU\00", align 1
@.str.1525 = private unnamed_addr constant [9 x i8] c"-muclibc\00", align 1
@.str.1526 = private unnamed_addr constant [31 x i8] c"Use uClibc instead of GNU libc\00", align 1
@.str.1527 = private unnamed_addr constant [13 x i8] c"-mveclibabi=\00", align 1
@.str.1528 = private unnamed_addr constant [26 x i8] c"Vector library ABI to use\00", align 1
@.str.1529 = private unnamed_addr constant [6 x i8] c"-mxop\00", align 1
@.str.1530 = private unnamed_addr constant [52 x i8] c"Support XOP built-in functions and code generation \00", align 1
@.str.1531 = private unnamed_addr constant [7 x i8] c"-nocpp\00", align 1
@.str.1532 = private unnamed_addr constant [22 x i8] c"Disable preprocessing\00", align 1
@.str.1533 = private unnamed_addr constant [10 x i8] c"-nostdinc\00", align 1
@.str.1534 = private unnamed_addr constant [101 x i8] c"Do not search standard system include directories (those specified with -isystem will still be used)\00", align 1
@.str.1535 = private unnamed_addr constant [12 x i8] c"-nostdinc++\00", align 1
@.str.1536 = private unnamed_addr constant [58 x i8] c"Do not search standard system include directories for C++\00", align 1
@.str.1537 = private unnamed_addr constant [10 x i8] c"-nostdlib\00", align 1
@.str.1538 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.1539 = private unnamed_addr constant [35 x i8] c"-o <file>\09Place output into <file>\00", align 1
@.str.1540 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.1541 = private unnamed_addr constant [26 x i8] c"Enable function profiling\00", align 1
@.str.1542 = private unnamed_addr constant [10 x i8] c"-pedantic\00", align 1
@.str.1543 = private unnamed_addr constant [60 x i8] c"Issue warnings needed for strict compliance to the standard\00", align 1
@.str.1544 = private unnamed_addr constant [17 x i8] c"-pedantic-errors\00", align 1
@.str.1545 = private unnamed_addr constant [40 x i8] c"Like -pedantic but issue them as errors\00", align 1
@.str.1546 = private unnamed_addr constant [5 x i8] c"-pie\00", align 1
@.str.1547 = private unnamed_addr constant [41 x i8] c"Create a position independent executable\00", align 1
@.str.1548 = private unnamed_addr constant [25 x i8] c"-print-objc-runtime-info\00", align 1
@.str.1549 = private unnamed_addr constant [48 x i8] c"Generate C header of platform-specific features\00", align 1
@.str.1550 = private unnamed_addr constant [20 x i8] c"-print-pch-checksum\00", align 1
@.str.1551 = private unnamed_addr constant [71 x i8] c"Print a checksum of the executable for PCH validity checking, and stop\00", align 1
@.str.1552 = private unnamed_addr constant [7 x i8] c"-quiet\00", align 1
@.str.1553 = private unnamed_addr constant [50 x i8] c"Do not display functions compiled or elapsed time\00", align 1
@.str.1554 = private unnamed_addr constant [7 x i8] c"-remap\00", align 1
@.str.1555 = private unnamed_addr constant [38 x i8] c"Remap file names when including files\00", align 1
@.str.1556 = private unnamed_addr constant [8 x i8] c"-shared\00", align 1
@.str.1557 = private unnamed_addr constant [24 x i8] c"Create a shared library\00", align 1
@.str.1558 = private unnamed_addr constant [20 x i8] c"-static-libgfortran\00", align 1
@.str.1559 = private unnamed_addr constant [61 x i8] c"Statically link the GNU Fortran helper library (libgfortran)\00", align 1
@.str.1560 = private unnamed_addr constant [11 x i8] c"-std=c++0x\00", align 1
@.str.1561 = private unnamed_addr constant [244 x i8] c"Conform to the ISO 1998 C++ standard, with extensions that are likely to become a part of the upcoming ISO C++ standard, dubbed C++0x. Note that the extensions enabled by this mode are experimental and may be removed in future releases of GCC.\00", align 1
@.str.1562 = private unnamed_addr constant [11 x i8] c"-std=c++98\00", align 1
@.str.1563 = private unnamed_addr constant [37 x i8] c"Conform to the ISO 1998 C++ standard\00", align 1
@.str.1564 = private unnamed_addr constant [9 x i8] c"-std=c89\00", align 1
@.str.1565 = private unnamed_addr constant [35 x i8] c"Conform to the ISO 1990 C standard\00", align 1
@.str.1566 = private unnamed_addr constant [9 x i8] c"-std=c90\00", align 1
@.str.1567 = private unnamed_addr constant [9 x i8] c"-std=c99\00", align 1
@.str.1568 = private unnamed_addr constant [35 x i8] c"Conform to the ISO 1999 C standard\00", align 1
@.str.1569 = private unnamed_addr constant [9 x i8] c"-std=c9x\00", align 1
@.str.1570 = private unnamed_addr constant [32 x i8] c"Deprecated in favor of -std=c99\00", align 1
@.str.1571 = private unnamed_addr constant [11 x i8] c"-std=f2003\00", align 1
@.str.1572 = private unnamed_addr constant [41 x i8] c"Conform to the ISO Fortran 2003 standard\00", align 1
@.str.1573 = private unnamed_addr constant [11 x i8] c"-std=f2008\00", align 1
@.str.1574 = private unnamed_addr constant [41 x i8] c"Conform to the ISO Fortran 2008 standard\00", align 1
@.str.1575 = private unnamed_addr constant [9 x i8] c"-std=f95\00", align 1
@.str.1576 = private unnamed_addr constant [39 x i8] c"Conform to the ISO Fortran 95 standard\00", align 1
@.str.1577 = private unnamed_addr constant [9 x i8] c"-std=gnu\00", align 1
@.str.1578 = private unnamed_addr constant [33 x i8] c"Conform to nothing in particular\00", align 1
@.str.1579 = private unnamed_addr constant [13 x i8] c"-std=gnu++0x\00", align 1
@.str.1580 = private unnamed_addr constant [263 x i8] c"Conform to the ISO 1998 C++ standard, with GNU extensions and extensions that are likely to become a part of the upcoming ISO C++ standard, dubbed C++0x. Note that the extensions enabled by this mode are experimental and may be removed in future releases of GCC.\00", align 1
@.str.1581 = private unnamed_addr constant [13 x i8] c"-std=gnu++98\00", align 1
@.str.1582 = private unnamed_addr constant [57 x i8] c"Conform to the ISO 1998 C++ standard with GNU extensions\00", align 1
@.str.1583 = private unnamed_addr constant [11 x i8] c"-std=gnu89\00", align 1
@.str.1584 = private unnamed_addr constant [55 x i8] c"Conform to the ISO 1990 C standard with GNU extensions\00", align 1
@.str.1585 = private unnamed_addr constant [11 x i8] c"-std=gnu90\00", align 1
@.str.1586 = private unnamed_addr constant [11 x i8] c"-std=gnu99\00", align 1
@.str.1587 = private unnamed_addr constant [55 x i8] c"Conform to the ISO 1999 C standard with GNU extensions\00", align 1
@.str.1588 = private unnamed_addr constant [11 x i8] c"-std=gnu9x\00", align 1
@.str.1589 = private unnamed_addr constant [34 x i8] c"Deprecated in favor of -std=gnu99\00", align 1
@.str.1590 = private unnamed_addr constant [18 x i8] c"-std=iso9899:1990\00", align 1
@.str.1591 = private unnamed_addr constant [20 x i8] c"-std=iso9899:199409\00", align 1
@.str.1592 = private unnamed_addr constant [54 x i8] c"Conform to the ISO 1990 C standard as amended in 1994\00", align 1
@.str.1593 = private unnamed_addr constant [18 x i8] c"-std=iso9899:1999\00", align 1
@.str.1594 = private unnamed_addr constant [18 x i8] c"-std=iso9899:199x\00", align 1
@.str.1595 = private unnamed_addr constant [41 x i8] c"Deprecated in favor of -std=iso9899:1999\00", align 1
@.str.1596 = private unnamed_addr constant [12 x i8] c"-std=legacy\00", align 1
@.str.1597 = private unnamed_addr constant [41 x i8] c"Accept extensions to support legacy code\00", align 1
@.str.1598 = private unnamed_addr constant [17 x i8] c"-traditional-cpp\00", align 1
@.str.1599 = private unnamed_addr constant [33 x i8] c"Enable traditional preprocessing\00", align 1
@.str.1600 = private unnamed_addr constant [11 x i8] c"-trigraphs\00", align 1
@.str.1601 = private unnamed_addr constant [35 x i8] c"-trigraphs\09Support ISO C trigraphs\00", align 1
@.str.1602 = private unnamed_addr constant [7 x i8] c"-undef\00", align 1
@.str.1603 = private unnamed_addr constant [57 x i8] c"Do not predefine system-specific and GCC-specific macros\00", align 1
@.str.1604 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.1605 = private unnamed_addr constant [22 x i8] c"Enable verbose output\00", align 1
@.str.1606 = private unnamed_addr constant [9 x i8] c"-version\00", align 1
@.str.1607 = private unnamed_addr constant [31 x i8] c"Display the compiler's version\00", align 1
@.str.1608 = private unnamed_addr constant [3 x i8] c"-w\00", align 1
@.str.1609 = private unnamed_addr constant [18 x i8] c"Suppress warnings\00", align 1
@optimize = external local_unnamed_addr global i32, align 4
@.str.1610 = private unnamed_addr constant [10 x i8] c"options.c\00", align 1
@.str.1611 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@optimize_size = external local_unnamed_addr global i32, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.1612 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1613 = private unnamed_addr constant [14 x i8] c"%*s%s (0x%x)\0A\00", align 1
@.str.1614 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1615 = private unnamed_addr constant [16 x i8] c"align_functions\00", align 1
@.str.1616 = private unnamed_addr constant [12 x i8] c"align_jumps\00", align 1
@.str.1617 = private unnamed_addr constant [13 x i8] c"align_labels\00", align 1
@.str.1618 = private unnamed_addr constant [12 x i8] c"align_loops\00", align 1
@.str.1619 = private unnamed_addr constant [25 x i8] c"flag_sched_stalled_insns\00", align 1
@.str.1620 = private unnamed_addr constant [29 x i8] c"flag_sched_stalled_insns_dep\00", align 1
@.str.1621 = private unnamed_addr constant [9 x i8] c"optimize\00", align 1
@.str.1622 = private unnamed_addr constant [14 x i8] c"optimize_size\00", align 1
@.str.1623 = private unnamed_addr constant [22 x i8] c"flag_argument_noalias\00", align 1
@.str.1624 = private unnamed_addr constant [32 x i8] c"flag_asynchronous_unwind_tables\00", align 1
@.str.1625 = private unnamed_addr constant [25 x i8] c"flag_branch_on_count_reg\00", align 1
@.str.1626 = private unnamed_addr constant [26 x i8] c"flag_branch_probabilities\00", align 1
@.str.1627 = private unnamed_addr constant [33 x i8] c"flag_branch_target_load_optimize\00", align 1
@.str.1628 = private unnamed_addr constant [34 x i8] c"flag_branch_target_load_optimize2\00", align 1
@.str.1629 = private unnamed_addr constant [22 x i8] c"flag_btr_bb_exclusive\00", align 1
@.str.1630 = private unnamed_addr constant [18 x i8] c"flag_caller_saves\00", align 1
@.str.1631 = private unnamed_addr constant [15 x i8] c"flag_no_common\00", align 1
@.str.1632 = private unnamed_addr constant [20 x i8] c"flag_conserve_stack\00", align 1
@.str.1633 = private unnamed_addr constant [21 x i8] c"flag_cprop_registers\00", align 1
@.str.1634 = private unnamed_addr constant [18 x i8] c"flag_crossjumping\00", align 1
@.str.1635 = private unnamed_addr constant [22 x i8] c"flag_cse_follow_jumps\00", align 1
@.str.1636 = private unnamed_addr constant [22 x i8] c"flag_cx_fortran_rules\00", align 1
@.str.1637 = private unnamed_addr constant [22 x i8] c"flag_cx_limited_range\00", align 1
@.str.1638 = private unnamed_addr constant [19 x i8] c"flag_data_sections\00", align 1
@.str.1639 = private unnamed_addr constant [9 x i8] c"flag_dce\00", align 1
@.str.1640 = private unnamed_addr constant [15 x i8] c"flag_defer_pop\00", align 1
@.str.1641 = private unnamed_addr constant [20 x i8] c"flag_delayed_branch\00", align 1
@.str.1642 = private unnamed_addr constant [32 x i8] c"flag_delete_null_pointer_checks\00", align 1
@.str.1643 = private unnamed_addr constant [9 x i8] c"flag_dse\00", align 1
@.str.1644 = private unnamed_addr constant [20 x i8] c"flag_early_inlining\00", align 1
@.str.1645 = private unnamed_addr constant [16 x i8] c"flag_exceptions\00", align 1
@.str.1646 = private unnamed_addr constant [29 x i8] c"flag_expensive_optimizations\00", align 1
@.str.1647 = private unnamed_addr constant [22 x i8] c"flag_finite_math_only\00", align 1
@.str.1648 = private unnamed_addr constant [17 x i8] c"flag_float_store\00", align 1
@.str.1649 = private unnamed_addr constant [23 x i8] c"flag_forward_propagate\00", align 1
@.str.1650 = private unnamed_addr constant [10 x i8] c"flag_gcse\00", align 1
@.str.1651 = private unnamed_addr constant [23 x i8] c"flag_gcse_after_reload\00", align 1
@.str.1652 = private unnamed_addr constant [14 x i8] c"flag_gcse_las\00", align 1
@.str.1653 = private unnamed_addr constant [13 x i8] c"flag_gcse_lm\00", align 1
@.str.1654 = private unnamed_addr constant [13 x i8] c"flag_gcse_sm\00", align 1
@.str.1655 = private unnamed_addr constant [23 x i8] c"flag_graphite_identity\00", align 1
@.str.1656 = private unnamed_addr constant [23 x i8] c"flag_guess_branch_prob\00", align 1
@.str.1657 = private unnamed_addr constant [19 x i8] c"flag_if_conversion\00", align 1
@.str.1658 = private unnamed_addr constant [20 x i8] c"flag_if_conversion2\00", align 1
@.str.1659 = private unnamed_addr constant [22 x i8] c"flag_inline_functions\00", align 1
@.str.1660 = private unnamed_addr constant [34 x i8] c"flag_inline_functions_called_once\00", align 1
@.str.1661 = private unnamed_addr constant [28 x i8] c"flag_inline_small_functions\00", align 1
@.str.1662 = private unnamed_addr constant [12 x i8] c"flag_ipa_cp\00", align 1
@.str.1663 = private unnamed_addr constant [18 x i8] c"flag_ipa_cp_clone\00", align 1
@.str.1664 = private unnamed_addr constant [22 x i8] c"flag_ipa_matrix_reorg\00", align 1
@.str.1665 = private unnamed_addr constant [13 x i8] c"flag_ipa_pta\00", align 1
@.str.1666 = private unnamed_addr constant [20 x i8] c"flag_ipa_pure_const\00", align 1
@.str.1667 = private unnamed_addr constant [19 x i8] c"flag_ipa_reference\00", align 1
@.str.1668 = private unnamed_addr constant [13 x i8] c"flag_ipa_sra\00", align 1
@.str.1669 = private unnamed_addr constant [21 x i8] c"flag_ipa_type_escape\00", align 1
@.str.1670 = private unnamed_addr constant [12 x i8] c"flag_ivopts\00", align 1
@.str.1671 = private unnamed_addr constant [17 x i8] c"flag_jump_tables\00", align 1
@.str.1672 = private unnamed_addr constant [16 x i8] c"flag_loop_block\00", align 1
@.str.1673 = private unnamed_addr constant [22 x i8] c"flag_loop_interchange\00", align 1
@.str.1674 = private unnamed_addr constant [26 x i8] c"flag_loop_parallelize_all\00", align 1
@.str.1675 = private unnamed_addr constant [21 x i8] c"flag_loop_strip_mine\00", align 1
@.str.1676 = private unnamed_addr constant [16 x i8] c"flag_lto_report\00", align 1
@.str.1677 = private unnamed_addr constant [12 x i8] c"flag_ltrans\00", align 1
@.str.1678 = private unnamed_addr constant [16 x i8] c"flag_errno_math\00", align 1
@.str.1679 = private unnamed_addr constant [21 x i8] c"flag_merge_constants\00", align 1
@.str.1680 = private unnamed_addr constant [18 x i8] c"flag_modulo_sched\00", align 1
@.str.1681 = private unnamed_addr constant [26 x i8] c"flag_move_loop_invariants\00", align 1
@.str.1682 = private unnamed_addr constant [25 x i8] c"flag_non_call_exceptions\00", align 1
@.str.1683 = private unnamed_addr constant [24 x i8] c"flag_omit_frame_pointer\00", align 1
@.str.1684 = private unnamed_addr constant [13 x i8] c"flag_regmove\00", align 1
@.str.1685 = private unnamed_addr constant [28 x i8] c"flag_optimize_sibling_calls\00", align 1
@.str.1686 = private unnamed_addr constant [17 x i8] c"flag_pack_struct\00", align 1
@.str.1687 = private unnamed_addr constant [16 x i8] c"flag_peel_loops\00", align 1
@.str.1688 = private unnamed_addr constant [17 x i8] c"flag_no_peephole\00", align 1
@.str.1689 = private unnamed_addr constant [15 x i8] c"flag_peephole2\00", align 1
@.str.1690 = private unnamed_addr constant [26 x i8] c"flag_predictive_commoning\00", align 1
@.str.1691 = private unnamed_addr constant [26 x i8] c"flag_prefetch_loop_arrays\00", align 1
@.str.1692 = private unnamed_addr constant [23 x i8] c"flag_pcc_struct_return\00", align 1
@.str.1693 = private unnamed_addr constant [22 x i8] c"flag_rename_registers\00", align 1
@.str.1694 = private unnamed_addr constant [20 x i8] c"flag_reorder_blocks\00", align 1
@.str.1695 = private unnamed_addr constant [34 x i8] c"flag_reorder_blocks_and_partition\00", align 1
@.str.1696 = private unnamed_addr constant [23 x i8] c"flag_reorder_functions\00", align 1
@.str.1697 = private unnamed_addr constant [26 x i8] c"flag_rerun_cse_after_loop\00", align 1
@.str.1698 = private unnamed_addr constant [26 x i8] c"flag_resched_modulo_sched\00", align 1
@.str.1699 = private unnamed_addr constant [19 x i8] c"flag_rounding_math\00", align 1
@.str.1700 = private unnamed_addr constant [35 x i8] c"flag_sched_critical_path_heuristic\00", align 1
@.str.1701 = private unnamed_addr constant [31 x i8] c"flag_sched_dep_count_heuristic\00", align 1
@.str.1702 = private unnamed_addr constant [27 x i8] c"flag_sched_group_heuristic\00", align 1
@.str.1703 = private unnamed_addr constant [25 x i8] c"flag_schedule_interblock\00", align 1
@.str.1704 = private unnamed_addr constant [31 x i8] c"flag_sched_last_insn_heuristic\00", align 1
@.str.1705 = private unnamed_addr constant [20 x i8] c"flag_sched_pressure\00", align 1
@.str.1706 = private unnamed_addr constant [26 x i8] c"flag_sched_rank_heuristic\00", align 1
@.str.1707 = private unnamed_addr constant [26 x i8] c"flag_schedule_speculative\00", align 1
@.str.1708 = private unnamed_addr constant [31 x i8] c"flag_sched_spec_insn_heuristic\00", align 1
@.str.1709 = private unnamed_addr constant [31 x i8] c"flag_schedule_speculative_load\00", align 1
@.str.1710 = private unnamed_addr constant [41 x i8] c"flag_schedule_speculative_load_dangerous\00", align 1
@.str.1711 = private unnamed_addr constant [28 x i8] c"flag_sched2_use_superblocks\00", align 1
@.str.1712 = private unnamed_addr constant [20 x i8] c"flag_schedule_insns\00", align 1
@.str.1713 = private unnamed_addr constant [33 x i8] c"flag_schedule_insns_after_reload\00", align 1
@.str.1714 = private unnamed_addr constant [21 x i8] c"flag_section_anchors\00", align 1
@.str.1715 = private unnamed_addr constant [26 x i8] c"flag_sel_sched_pipelining\00", align 1
@.str.1716 = private unnamed_addr constant [38 x i8] c"flag_sel_sched_pipelining_outer_loops\00", align 1
@.str.1717 = private unnamed_addr constant [36 x i8] c"flag_sel_sched_reschedule_pipelined\00", align 1
@.str.1718 = private unnamed_addr constant [26 x i8] c"flag_selective_scheduling\00", align 1
@.str.1719 = private unnamed_addr constant [27 x i8] c"flag_selective_scheduling2\00", align 1
@.str.1720 = private unnamed_addr constant [20 x i8] c"flag_signaling_nans\00", align 1
@.str.1721 = private unnamed_addr constant [18 x i8] c"flag_signed_zeros\00", align 1
@.str.1722 = private unnamed_addr constant [31 x i8] c"flag_single_precision_constant\00", align 1
@.str.1723 = private unnamed_addr constant [27 x i8] c"flag_split_ivs_in_unroller\00", align 1
@.str.1724 = private unnamed_addr constant [22 x i8] c"flag_split_wide_types\00", align 1
@.str.1725 = private unnamed_addr constant [21 x i8] c"flag_strict_aliasing\00", align 1
@.str.1726 = private unnamed_addr constant [18 x i8] c"flag_thread_jumps\00", align 1
@.str.1727 = private unnamed_addr constant [22 x i8] c"flag_toplevel_reorder\00", align 1
@.str.1728 = private unnamed_addr constant [19 x i8] c"flag_trapping_math\00", align 1
@.str.1729 = private unnamed_addr constant [11 x i8] c"flag_trapv\00", align 1
@.str.1730 = private unnamed_addr constant [27 x i8] c"flag_tree_builtin_call_dce\00", align 1
@.str.1731 = private unnamed_addr constant [14 x i8] c"flag_tree_ccp\00", align 1
@.str.1732 = private unnamed_addr constant [13 x i8] c"flag_tree_ch\00", align 1
@.str.1733 = private unnamed_addr constant [20 x i8] c"flag_tree_copy_prop\00", align 1
@.str.1734 = private unnamed_addr constant [21 x i8] c"flag_tree_copyrename\00", align 1
@.str.1735 = private unnamed_addr constant [17 x i8] c"flag_tree_cselim\00", align 1
@.str.1736 = private unnamed_addr constant [14 x i8] c"flag_tree_dce\00", align 1
@.str.1737 = private unnamed_addr constant [14 x i8] c"flag_tree_dom\00", align 1
@.str.1738 = private unnamed_addr constant [14 x i8] c"flag_tree_dse\00", align 1
@.str.1739 = private unnamed_addr constant [19 x i8] c"flag_tree_forwprop\00", align 1
@.str.1740 = private unnamed_addr constant [14 x i8] c"flag_tree_fre\00", align 1
@.str.1741 = private unnamed_addr constant [28 x i8] c"flag_tree_loop_distribution\00", align 1
@.str.1742 = private unnamed_addr constant [18 x i8] c"flag_tree_loop_im\00", align 1
@.str.1743 = private unnamed_addr constant [23 x i8] c"flag_tree_loop_ivcanon\00", align 1
@.str.1744 = private unnamed_addr constant [22 x i8] c"flag_tree_loop_linear\00", align 1
@.str.1745 = private unnamed_addr constant [24 x i8] c"flag_tree_loop_optimize\00", align 1
@.str.1746 = private unnamed_addr constant [27 x i8] c"flag_tree_live_range_split\00", align 1
@.str.1747 = private unnamed_addr constant [18 x i8] c"flag_tree_phiprop\00", align 1
@.str.1748 = private unnamed_addr constant [14 x i8] c"flag_tree_pre\00", align 1
@.str.1749 = private unnamed_addr constant [14 x i8] c"flag_tree_pta\00", align 1
@.str.1750 = private unnamed_addr constant [18 x i8] c"flag_tree_reassoc\00", align 1
@.str.1751 = private unnamed_addr constant [21 x i8] c"flag_tree_scev_cprop\00", align 1
@.str.1752 = private unnamed_addr constant [15 x i8] c"flag_tree_sink\00", align 1
@.str.1753 = private unnamed_addr constant [24 x i8] c"flag_tree_slp_vectorize\00", align 1
@.str.1754 = private unnamed_addr constant [14 x i8] c"flag_tree_sra\00", align 1
@.str.1755 = private unnamed_addr constant [28 x i8] c"flag_tree_switch_conversion\00", align 1
@.str.1756 = private unnamed_addr constant [14 x i8] c"flag_tree_ter\00", align 1
@.str.1757 = private unnamed_addr constant [28 x i8] c"flag_tree_vect_loop_version\00", align 1
@.str.1758 = private unnamed_addr constant [20 x i8] c"flag_tree_vectorize\00", align 1
@.str.1759 = private unnamed_addr constant [14 x i8] c"flag_tree_vrp\00", align 1
@.str.1760 = private unnamed_addr constant [20 x i8] c"flag_unit_at_a_time\00", align 1
@.str.1761 = private unnamed_addr constant [22 x i8] c"flag_unroll_all_loops\00", align 1
@.str.1762 = private unnamed_addr constant [18 x i8] c"flag_unroll_loops\00", align 1
@.str.1763 = private unnamed_addr constant [31 x i8] c"flag_unsafe_loop_optimizations\00", align 1
@.str.1764 = private unnamed_addr constant [31 x i8] c"flag_unsafe_math_optimizations\00", align 1
@.str.1765 = private unnamed_addr constant [20 x i8] c"flag_unswitch_loops\00", align 1
@.str.1766 = private unnamed_addr constant [19 x i8] c"flag_unwind_tables\00", align 1
@.str.1767 = private unnamed_addr constant [18 x i8] c"flag_var_tracking\00", align 1
@.str.1768 = private unnamed_addr constant [30 x i8] c"flag_var_tracking_assignments\00", align 1
@.str.1769 = private unnamed_addr constant [37 x i8] c"flag_var_tracking_assignments_toggle\00", align 1
@.str.1770 = private unnamed_addr constant [25 x i8] c"flag_var_tracking_uninit\00", align 1
@.str.1771 = private unnamed_addr constant [36 x i8] c"flag_variable_expansion_in_unroller\00", align 1
@.str.1772 = private unnamed_addr constant [21 x i8] c"flag_vect_cost_model\00", align 1
@.str.1773 = private unnamed_addr constant [35 x i8] c"flag_value_profile_transformations\00", align 1
@.str.1774 = private unnamed_addr constant [9 x i8] c"flag_web\00", align 1
@.str.1775 = private unnamed_addr constant [19 x i8] c"flag_whole_program\00", align 1
@.str.1776 = private unnamed_addr constant [9 x i8] c"flag_wpa\00", align 1
@.str.1777 = private unnamed_addr constant [11 x i8] c"flag_wrapv\00", align 1
@.str.1778 = private unnamed_addr constant [13 x i8] c"target_flags\00", align 1
@.str.1779 = private unnamed_addr constant [15 x i8] c"ix86_isa_flags\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cl_optimization_save(ptr noundef writeonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @optimize, align 4, !tbaa !6
  %3 = icmp ult i32 %2, 256
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6000, ptr noundef nonnull @.str.1611) #4
  br label %5

5:                                                ; preds = %1, %4
  %6 = load i32, ptr @optimize_size, align 4, !tbaa !6
  %7 = icmp ult i32 %6, 256
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6001, ptr noundef nonnull @.str.1611) #4
  br label %9

9:                                                ; preds = %5, %8
  %10 = load i32, ptr @flag_argument_noalias, align 4, !tbaa !6
  %11 = sext i32 %10 to i64
  %12 = add nsw i64 %11, 128
  %13 = icmp ult i64 %12, 256
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6002, ptr noundef nonnull @.str.1611) #4
  br label %15

15:                                               ; preds = %9, %14
  %16 = load i32, ptr @flag_asynchronous_unwind_tables, align 4, !tbaa !6
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, 128
  %19 = icmp ult i64 %18, 256
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6003, ptr noundef nonnull @.str.1611) #4
  br label %21

21:                                               ; preds = %15, %20
  %22 = load i32, ptr @flag_branch_on_count_reg, align 4, !tbaa !6
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, 128
  %25 = icmp ult i64 %24, 256
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6004, ptr noundef nonnull @.str.1611) #4
  br label %27

27:                                               ; preds = %21, %26
  %28 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !6
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, 128
  %31 = icmp ult i64 %30, 256
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6005, ptr noundef nonnull @.str.1611) #4
  br label %33

33:                                               ; preds = %27, %32
  %34 = load i32, ptr @flag_branch_target_load_optimize, align 4, !tbaa !6
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, 128
  %37 = icmp ult i64 %36, 256
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6006, ptr noundef nonnull @.str.1611) #4
  br label %39

39:                                               ; preds = %33, %38
  %40 = load i32, ptr @flag_branch_target_load_optimize2, align 4, !tbaa !6
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, 128
  %43 = icmp ult i64 %42, 256
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6007, ptr noundef nonnull @.str.1611) #4
  br label %45

45:                                               ; preds = %39, %44
  %46 = load i32, ptr @flag_btr_bb_exclusive, align 4, !tbaa !6
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, 128
  %49 = icmp ult i64 %48, 256
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6008, ptr noundef nonnull @.str.1611) #4
  br label %51

51:                                               ; preds = %45, %50
  %52 = load i32, ptr @flag_caller_saves, align 4, !tbaa !6
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %53, 128
  %55 = icmp ult i64 %54, 256
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6009, ptr noundef nonnull @.str.1611) #4
  br label %57

57:                                               ; preds = %51, %56
  %58 = load i32, ptr @flag_no_common, align 4, !tbaa !6
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, 128
  %61 = icmp ult i64 %60, 256
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6010, ptr noundef nonnull @.str.1611) #4
  br label %63

63:                                               ; preds = %57, %62
  %64 = load i32, ptr @flag_conserve_stack, align 4, !tbaa !6
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, 128
  %67 = icmp ult i64 %66, 256
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6011, ptr noundef nonnull @.str.1611) #4
  br label %69

69:                                               ; preds = %63, %68
  %70 = load i32, ptr @flag_cprop_registers, align 4, !tbaa !6
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, 128
  %73 = icmp ult i64 %72, 256
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6012, ptr noundef nonnull @.str.1611) #4
  br label %75

75:                                               ; preds = %69, %74
  %76 = load i32, ptr @flag_crossjumping, align 4, !tbaa !6
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, 128
  %79 = icmp ult i64 %78, 256
  br i1 %79, label %81, label %80

80:                                               ; preds = %75
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6013, ptr noundef nonnull @.str.1611) #4
  br label %81

81:                                               ; preds = %75, %80
  %82 = load i32, ptr @flag_cse_follow_jumps, align 4, !tbaa !6
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, 128
  %85 = icmp ult i64 %84, 256
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6014, ptr noundef nonnull @.str.1611) #4
  br label %87

87:                                               ; preds = %81, %86
  %88 = load i32, ptr @flag_cx_fortran_rules, align 4, !tbaa !6
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, 128
  %91 = icmp ult i64 %90, 256
  br i1 %91, label %93, label %92

92:                                               ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6015, ptr noundef nonnull @.str.1611) #4
  br label %93

93:                                               ; preds = %87, %92
  %94 = load i32, ptr @flag_cx_limited_range, align 4, !tbaa !6
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, 128
  %97 = icmp ult i64 %96, 256
  br i1 %97, label %99, label %98

98:                                               ; preds = %93
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6016, ptr noundef nonnull @.str.1611) #4
  br label %99

99:                                               ; preds = %93, %98
  %100 = load i32, ptr @flag_data_sections, align 4, !tbaa !6
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %101, 128
  %103 = icmp ult i64 %102, 256
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6017, ptr noundef nonnull @.str.1611) #4
  br label %105

105:                                              ; preds = %99, %104
  %106 = load i32, ptr @flag_dce, align 4, !tbaa !6
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, 128
  %109 = icmp ult i64 %108, 256
  br i1 %109, label %111, label %110

110:                                              ; preds = %105
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6018, ptr noundef nonnull @.str.1611) #4
  br label %111

111:                                              ; preds = %105, %110
  %112 = load i32, ptr @flag_defer_pop, align 4, !tbaa !6
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, 128
  %115 = icmp ult i64 %114, 256
  br i1 %115, label %117, label %116

116:                                              ; preds = %111
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6019, ptr noundef nonnull @.str.1611) #4
  br label %117

117:                                              ; preds = %111, %116
  %118 = load i32, ptr @flag_delayed_branch, align 4, !tbaa !6
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %119, 128
  %121 = icmp ult i64 %120, 256
  br i1 %121, label %123, label %122

122:                                              ; preds = %117
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6020, ptr noundef nonnull @.str.1611) #4
  br label %123

123:                                              ; preds = %117, %122
  %124 = load i32, ptr @flag_delete_null_pointer_checks, align 4, !tbaa !6
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, 128
  %127 = icmp ult i64 %126, 256
  br i1 %127, label %129, label %128

128:                                              ; preds = %123
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6021, ptr noundef nonnull @.str.1611) #4
  br label %129

129:                                              ; preds = %123, %128
  %130 = load i32, ptr @flag_dse, align 4, !tbaa !6
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %131, 128
  %133 = icmp ult i64 %132, 256
  br i1 %133, label %135, label %134

134:                                              ; preds = %129
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6022, ptr noundef nonnull @.str.1611) #4
  br label %135

135:                                              ; preds = %129, %134
  %136 = load i32, ptr @flag_early_inlining, align 4, !tbaa !6
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %137, 128
  %139 = icmp ult i64 %138, 256
  br i1 %139, label %141, label %140

140:                                              ; preds = %135
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6023, ptr noundef nonnull @.str.1611) #4
  br label %141

141:                                              ; preds = %135, %140
  %142 = load i32, ptr @flag_exceptions, align 4, !tbaa !6
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %143, 128
  %145 = icmp ult i64 %144, 256
  br i1 %145, label %147, label %146

146:                                              ; preds = %141
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6024, ptr noundef nonnull @.str.1611) #4
  br label %147

147:                                              ; preds = %141, %146
  %148 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !6
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %149, 128
  %151 = icmp ult i64 %150, 256
  br i1 %151, label %153, label %152

152:                                              ; preds = %147
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6025, ptr noundef nonnull @.str.1611) #4
  br label %153

153:                                              ; preds = %147, %152
  %154 = load i32, ptr @flag_finite_math_only, align 4, !tbaa !6
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %155, 128
  %157 = icmp ult i64 %156, 256
  br i1 %157, label %159, label %158

158:                                              ; preds = %153
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6026, ptr noundef nonnull @.str.1611) #4
  br label %159

159:                                              ; preds = %153, %158
  %160 = load i32, ptr @flag_float_store, align 4, !tbaa !6
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %161, 128
  %163 = icmp ult i64 %162, 256
  br i1 %163, label %165, label %164

164:                                              ; preds = %159
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6027, ptr noundef nonnull @.str.1611) #4
  br label %165

165:                                              ; preds = %159, %164
  %166 = load i32, ptr @flag_forward_propagate, align 4, !tbaa !6
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %167, 128
  %169 = icmp ult i64 %168, 256
  br i1 %169, label %171, label %170

170:                                              ; preds = %165
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6028, ptr noundef nonnull @.str.1611) #4
  br label %171

171:                                              ; preds = %165, %170
  %172 = load i32, ptr @flag_gcse, align 4, !tbaa !6
  %173 = sext i32 %172 to i64
  %174 = add nsw i64 %173, 128
  %175 = icmp ult i64 %174, 256
  br i1 %175, label %177, label %176

176:                                              ; preds = %171
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6029, ptr noundef nonnull @.str.1611) #4
  br label %177

177:                                              ; preds = %171, %176
  %178 = load i32, ptr @flag_gcse_after_reload, align 4, !tbaa !6
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %179, 128
  %181 = icmp ult i64 %180, 256
  br i1 %181, label %183, label %182

182:                                              ; preds = %177
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6030, ptr noundef nonnull @.str.1611) #4
  br label %183

183:                                              ; preds = %177, %182
  %184 = load i32, ptr @flag_gcse_las, align 4, !tbaa !6
  %185 = sext i32 %184 to i64
  %186 = add nsw i64 %185, 128
  %187 = icmp ult i64 %186, 256
  br i1 %187, label %189, label %188

188:                                              ; preds = %183
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6031, ptr noundef nonnull @.str.1611) #4
  br label %189

189:                                              ; preds = %183, %188
  %190 = load i32, ptr @flag_gcse_lm, align 4, !tbaa !6
  %191 = sext i32 %190 to i64
  %192 = add nsw i64 %191, 128
  %193 = icmp ult i64 %192, 256
  br i1 %193, label %195, label %194

194:                                              ; preds = %189
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6032, ptr noundef nonnull @.str.1611) #4
  br label %195

195:                                              ; preds = %189, %194
  %196 = load i32, ptr @flag_gcse_sm, align 4, !tbaa !6
  %197 = sext i32 %196 to i64
  %198 = add nsw i64 %197, 128
  %199 = icmp ult i64 %198, 256
  br i1 %199, label %201, label %200

200:                                              ; preds = %195
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6033, ptr noundef nonnull @.str.1611) #4
  br label %201

201:                                              ; preds = %195, %200
  %202 = load i32, ptr @flag_graphite_identity, align 4, !tbaa !6
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %203, 128
  %205 = icmp ult i64 %204, 256
  br i1 %205, label %207, label %206

206:                                              ; preds = %201
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6034, ptr noundef nonnull @.str.1611) #4
  br label %207

207:                                              ; preds = %201, %206
  %208 = load i32, ptr @flag_guess_branch_prob, align 4, !tbaa !6
  %209 = sext i32 %208 to i64
  %210 = add nsw i64 %209, 128
  %211 = icmp ult i64 %210, 256
  br i1 %211, label %213, label %212

212:                                              ; preds = %207
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6035, ptr noundef nonnull @.str.1611) #4
  br label %213

213:                                              ; preds = %207, %212
  %214 = load i32, ptr @flag_if_conversion, align 4, !tbaa !6
  %215 = sext i32 %214 to i64
  %216 = add nsw i64 %215, 128
  %217 = icmp ult i64 %216, 256
  br i1 %217, label %219, label %218

218:                                              ; preds = %213
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6036, ptr noundef nonnull @.str.1611) #4
  br label %219

219:                                              ; preds = %213, %218
  %220 = load i32, ptr @flag_if_conversion2, align 4, !tbaa !6
  %221 = sext i32 %220 to i64
  %222 = add nsw i64 %221, 128
  %223 = icmp ult i64 %222, 256
  br i1 %223, label %225, label %224

224:                                              ; preds = %219
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6037, ptr noundef nonnull @.str.1611) #4
  br label %225

225:                                              ; preds = %219, %224
  %226 = load i32, ptr @flag_inline_functions, align 4, !tbaa !6
  %227 = sext i32 %226 to i64
  %228 = add nsw i64 %227, 128
  %229 = icmp ult i64 %228, 256
  br i1 %229, label %231, label %230

230:                                              ; preds = %225
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6038, ptr noundef nonnull @.str.1611) #4
  br label %231

231:                                              ; preds = %225, %230
  %232 = load i32, ptr @flag_inline_functions_called_once, align 4, !tbaa !6
  %233 = sext i32 %232 to i64
  %234 = add nsw i64 %233, 128
  %235 = icmp ult i64 %234, 256
  br i1 %235, label %237, label %236

236:                                              ; preds = %231
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6039, ptr noundef nonnull @.str.1611) #4
  br label %237

237:                                              ; preds = %231, %236
  %238 = load i32, ptr @flag_inline_small_functions, align 4, !tbaa !6
  %239 = sext i32 %238 to i64
  %240 = add nsw i64 %239, 128
  %241 = icmp ult i64 %240, 256
  br i1 %241, label %243, label %242

242:                                              ; preds = %237
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6040, ptr noundef nonnull @.str.1611) #4
  br label %243

243:                                              ; preds = %237, %242
  %244 = load i32, ptr @flag_ipa_cp, align 4, !tbaa !6
  %245 = sext i32 %244 to i64
  %246 = add nsw i64 %245, 128
  %247 = icmp ult i64 %246, 256
  br i1 %247, label %249, label %248

248:                                              ; preds = %243
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6041, ptr noundef nonnull @.str.1611) #4
  br label %249

249:                                              ; preds = %243, %248
  %250 = load i32, ptr @flag_ipa_cp_clone, align 4, !tbaa !6
  %251 = sext i32 %250 to i64
  %252 = add nsw i64 %251, 128
  %253 = icmp ult i64 %252, 256
  br i1 %253, label %255, label %254

254:                                              ; preds = %249
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6042, ptr noundef nonnull @.str.1611) #4
  br label %255

255:                                              ; preds = %249, %254
  %256 = load i32, ptr @flag_ipa_matrix_reorg, align 4, !tbaa !6
  %257 = sext i32 %256 to i64
  %258 = add nsw i64 %257, 128
  %259 = icmp ult i64 %258, 256
  br i1 %259, label %261, label %260

260:                                              ; preds = %255
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6043, ptr noundef nonnull @.str.1611) #4
  br label %261

261:                                              ; preds = %255, %260
  %262 = load i32, ptr @flag_ipa_pta, align 4, !tbaa !6
  %263 = sext i32 %262 to i64
  %264 = add nsw i64 %263, 128
  %265 = icmp ult i64 %264, 256
  br i1 %265, label %267, label %266

266:                                              ; preds = %261
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6044, ptr noundef nonnull @.str.1611) #4
  br label %267

267:                                              ; preds = %261, %266
  %268 = load i32, ptr @flag_ipa_pure_const, align 4, !tbaa !6
  %269 = sext i32 %268 to i64
  %270 = add nsw i64 %269, 128
  %271 = icmp ult i64 %270, 256
  br i1 %271, label %273, label %272

272:                                              ; preds = %267
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6045, ptr noundef nonnull @.str.1611) #4
  br label %273

273:                                              ; preds = %267, %272
  %274 = load i32, ptr @flag_ipa_reference, align 4, !tbaa !6
  %275 = sext i32 %274 to i64
  %276 = add nsw i64 %275, 128
  %277 = icmp ult i64 %276, 256
  br i1 %277, label %279, label %278

278:                                              ; preds = %273
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6046, ptr noundef nonnull @.str.1611) #4
  br label %279

279:                                              ; preds = %273, %278
  %280 = load i32, ptr @flag_ipa_sra, align 4, !tbaa !6
  %281 = sext i32 %280 to i64
  %282 = add nsw i64 %281, 128
  %283 = icmp ult i64 %282, 256
  br i1 %283, label %285, label %284

284:                                              ; preds = %279
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6047, ptr noundef nonnull @.str.1611) #4
  br label %285

285:                                              ; preds = %279, %284
  %286 = load i32, ptr @flag_ipa_type_escape, align 4, !tbaa !6
  %287 = sext i32 %286 to i64
  %288 = add nsw i64 %287, 128
  %289 = icmp ult i64 %288, 256
  br i1 %289, label %291, label %290

290:                                              ; preds = %285
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6048, ptr noundef nonnull @.str.1611) #4
  br label %291

291:                                              ; preds = %285, %290
  %292 = load i32, ptr @flag_ivopts, align 4, !tbaa !6
  %293 = sext i32 %292 to i64
  %294 = add nsw i64 %293, 128
  %295 = icmp ult i64 %294, 256
  br i1 %295, label %297, label %296

296:                                              ; preds = %291
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6049, ptr noundef nonnull @.str.1611) #4
  br label %297

297:                                              ; preds = %291, %296
  %298 = load i32, ptr @flag_jump_tables, align 4, !tbaa !6
  %299 = sext i32 %298 to i64
  %300 = add nsw i64 %299, 128
  %301 = icmp ult i64 %300, 256
  br i1 %301, label %303, label %302

302:                                              ; preds = %297
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6050, ptr noundef nonnull @.str.1611) #4
  br label %303

303:                                              ; preds = %297, %302
  %304 = load i32, ptr @flag_loop_block, align 4, !tbaa !6
  %305 = sext i32 %304 to i64
  %306 = add nsw i64 %305, 128
  %307 = icmp ult i64 %306, 256
  br i1 %307, label %309, label %308

308:                                              ; preds = %303
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6051, ptr noundef nonnull @.str.1611) #4
  br label %309

309:                                              ; preds = %303, %308
  %310 = load i32, ptr @flag_loop_interchange, align 4, !tbaa !6
  %311 = sext i32 %310 to i64
  %312 = add nsw i64 %311, 128
  %313 = icmp ult i64 %312, 256
  br i1 %313, label %315, label %314

314:                                              ; preds = %309
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6052, ptr noundef nonnull @.str.1611) #4
  br label %315

315:                                              ; preds = %309, %314
  %316 = load i32, ptr @flag_loop_parallelize_all, align 4, !tbaa !6
  %317 = sext i32 %316 to i64
  %318 = add nsw i64 %317, 128
  %319 = icmp ult i64 %318, 256
  br i1 %319, label %321, label %320

320:                                              ; preds = %315
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6053, ptr noundef nonnull @.str.1611) #4
  br label %321

321:                                              ; preds = %315, %320
  %322 = load i32, ptr @flag_loop_strip_mine, align 4, !tbaa !6
  %323 = sext i32 %322 to i64
  %324 = add nsw i64 %323, 128
  %325 = icmp ult i64 %324, 256
  br i1 %325, label %327, label %326

326:                                              ; preds = %321
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6054, ptr noundef nonnull @.str.1611) #4
  br label %327

327:                                              ; preds = %321, %326
  %328 = load i32, ptr @flag_lto_report, align 4, !tbaa !6
  %329 = sext i32 %328 to i64
  %330 = add nsw i64 %329, 128
  %331 = icmp ult i64 %330, 256
  br i1 %331, label %333, label %332

332:                                              ; preds = %327
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6055, ptr noundef nonnull @.str.1611) #4
  br label %333

333:                                              ; preds = %327, %332
  %334 = load i32, ptr @flag_ltrans, align 4, !tbaa !6
  %335 = sext i32 %334 to i64
  %336 = add nsw i64 %335, 128
  %337 = icmp ult i64 %336, 256
  br i1 %337, label %339, label %338

338:                                              ; preds = %333
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6056, ptr noundef nonnull @.str.1611) #4
  br label %339

339:                                              ; preds = %333, %338
  %340 = load i32, ptr @flag_errno_math, align 4, !tbaa !6
  %341 = sext i32 %340 to i64
  %342 = add nsw i64 %341, 128
  %343 = icmp ult i64 %342, 256
  br i1 %343, label %345, label %344

344:                                              ; preds = %339
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6057, ptr noundef nonnull @.str.1611) #4
  br label %345

345:                                              ; preds = %339, %344
  %346 = load i32, ptr @flag_merge_constants, align 4, !tbaa !6
  %347 = sext i32 %346 to i64
  %348 = add nsw i64 %347, 128
  %349 = icmp ult i64 %348, 256
  br i1 %349, label %351, label %350

350:                                              ; preds = %345
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6058, ptr noundef nonnull @.str.1611) #4
  br label %351

351:                                              ; preds = %345, %350
  %352 = load i32, ptr @flag_modulo_sched, align 4, !tbaa !6
  %353 = sext i32 %352 to i64
  %354 = add nsw i64 %353, 128
  %355 = icmp ult i64 %354, 256
  br i1 %355, label %357, label %356

356:                                              ; preds = %351
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6059, ptr noundef nonnull @.str.1611) #4
  br label %357

357:                                              ; preds = %351, %356
  %358 = load i32, ptr @flag_move_loop_invariants, align 4, !tbaa !6
  %359 = sext i32 %358 to i64
  %360 = add nsw i64 %359, 128
  %361 = icmp ult i64 %360, 256
  br i1 %361, label %363, label %362

362:                                              ; preds = %357
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6060, ptr noundef nonnull @.str.1611) #4
  br label %363

363:                                              ; preds = %357, %362
  %364 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !6
  %365 = sext i32 %364 to i64
  %366 = add nsw i64 %365, 128
  %367 = icmp ult i64 %366, 256
  br i1 %367, label %369, label %368

368:                                              ; preds = %363
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6061, ptr noundef nonnull @.str.1611) #4
  br label %369

369:                                              ; preds = %363, %368
  %370 = load i32, ptr @flag_omit_frame_pointer, align 4, !tbaa !6
  %371 = sext i32 %370 to i64
  %372 = add nsw i64 %371, 128
  %373 = icmp ult i64 %372, 256
  br i1 %373, label %375, label %374

374:                                              ; preds = %369
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6062, ptr noundef nonnull @.str.1611) #4
  br label %375

375:                                              ; preds = %369, %374
  %376 = load i32, ptr @flag_regmove, align 4, !tbaa !6
  %377 = sext i32 %376 to i64
  %378 = add nsw i64 %377, 128
  %379 = icmp ult i64 %378, 256
  br i1 %379, label %381, label %380

380:                                              ; preds = %375
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6063, ptr noundef nonnull @.str.1611) #4
  br label %381

381:                                              ; preds = %375, %380
  %382 = load i32, ptr @flag_optimize_sibling_calls, align 4, !tbaa !6
  %383 = sext i32 %382 to i64
  %384 = add nsw i64 %383, 128
  %385 = icmp ult i64 %384, 256
  br i1 %385, label %387, label %386

386:                                              ; preds = %381
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6064, ptr noundef nonnull @.str.1611) #4
  br label %387

387:                                              ; preds = %381, %386
  %388 = load i32, ptr @flag_pack_struct, align 4, !tbaa !6
  %389 = sext i32 %388 to i64
  %390 = add nsw i64 %389, 128
  %391 = icmp ult i64 %390, 256
  br i1 %391, label %393, label %392

392:                                              ; preds = %387
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6065, ptr noundef nonnull @.str.1611) #4
  br label %393

393:                                              ; preds = %387, %392
  %394 = load i32, ptr @flag_peel_loops, align 4, !tbaa !6
  %395 = sext i32 %394 to i64
  %396 = add nsw i64 %395, 128
  %397 = icmp ult i64 %396, 256
  br i1 %397, label %399, label %398

398:                                              ; preds = %393
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6066, ptr noundef nonnull @.str.1611) #4
  br label %399

399:                                              ; preds = %393, %398
  %400 = load i32, ptr @flag_no_peephole, align 4, !tbaa !6
  %401 = sext i32 %400 to i64
  %402 = add nsw i64 %401, 128
  %403 = icmp ult i64 %402, 256
  br i1 %403, label %405, label %404

404:                                              ; preds = %399
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6067, ptr noundef nonnull @.str.1611) #4
  br label %405

405:                                              ; preds = %399, %404
  %406 = load i32, ptr @flag_peephole2, align 4, !tbaa !6
  %407 = sext i32 %406 to i64
  %408 = add nsw i64 %407, 128
  %409 = icmp ult i64 %408, 256
  br i1 %409, label %411, label %410

410:                                              ; preds = %405
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6068, ptr noundef nonnull @.str.1611) #4
  br label %411

411:                                              ; preds = %405, %410
  %412 = load i32, ptr @flag_predictive_commoning, align 4, !tbaa !6
  %413 = sext i32 %412 to i64
  %414 = add nsw i64 %413, 128
  %415 = icmp ult i64 %414, 256
  br i1 %415, label %417, label %416

416:                                              ; preds = %411
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6069, ptr noundef nonnull @.str.1611) #4
  br label %417

417:                                              ; preds = %411, %416
  %418 = load i32, ptr @flag_prefetch_loop_arrays, align 4, !tbaa !6
  %419 = sext i32 %418 to i64
  %420 = add nsw i64 %419, 128
  %421 = icmp ult i64 %420, 256
  br i1 %421, label %423, label %422

422:                                              ; preds = %417
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6070, ptr noundef nonnull @.str.1611) #4
  br label %423

423:                                              ; preds = %417, %422
  %424 = load i32, ptr @flag_pcc_struct_return, align 4, !tbaa !6
  %425 = sext i32 %424 to i64
  %426 = add nsw i64 %425, 128
  %427 = icmp ult i64 %426, 256
  br i1 %427, label %429, label %428

428:                                              ; preds = %423
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6071, ptr noundef nonnull @.str.1611) #4
  br label %429

429:                                              ; preds = %423, %428
  %430 = load i32, ptr @flag_rename_registers, align 4, !tbaa !6
  %431 = sext i32 %430 to i64
  %432 = add nsw i64 %431, 128
  %433 = icmp ult i64 %432, 256
  br i1 %433, label %435, label %434

434:                                              ; preds = %429
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6072, ptr noundef nonnull @.str.1611) #4
  br label %435

435:                                              ; preds = %429, %434
  %436 = load i32, ptr @flag_reorder_blocks, align 4, !tbaa !6
  %437 = sext i32 %436 to i64
  %438 = add nsw i64 %437, 128
  %439 = icmp ult i64 %438, 256
  br i1 %439, label %441, label %440

440:                                              ; preds = %435
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6073, ptr noundef nonnull @.str.1611) #4
  br label %441

441:                                              ; preds = %435, %440
  %442 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !6
  %443 = sext i32 %442 to i64
  %444 = add nsw i64 %443, 128
  %445 = icmp ult i64 %444, 256
  br i1 %445, label %447, label %446

446:                                              ; preds = %441
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6074, ptr noundef nonnull @.str.1611) #4
  br label %447

447:                                              ; preds = %441, %446
  %448 = load i32, ptr @flag_reorder_functions, align 4, !tbaa !6
  %449 = sext i32 %448 to i64
  %450 = add nsw i64 %449, 128
  %451 = icmp ult i64 %450, 256
  br i1 %451, label %453, label %452

452:                                              ; preds = %447
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6075, ptr noundef nonnull @.str.1611) #4
  br label %453

453:                                              ; preds = %447, %452
  %454 = load i32, ptr @flag_rerun_cse_after_loop, align 4, !tbaa !6
  %455 = sext i32 %454 to i64
  %456 = add nsw i64 %455, 128
  %457 = icmp ult i64 %456, 256
  br i1 %457, label %459, label %458

458:                                              ; preds = %453
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6076, ptr noundef nonnull @.str.1611) #4
  br label %459

459:                                              ; preds = %453, %458
  %460 = load i32, ptr @flag_resched_modulo_sched, align 4, !tbaa !6
  %461 = sext i32 %460 to i64
  %462 = add nsw i64 %461, 128
  %463 = icmp ult i64 %462, 256
  br i1 %463, label %465, label %464

464:                                              ; preds = %459
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6077, ptr noundef nonnull @.str.1611) #4
  br label %465

465:                                              ; preds = %459, %464
  %466 = load i32, ptr @flag_rounding_math, align 4, !tbaa !6
  %467 = sext i32 %466 to i64
  %468 = add nsw i64 %467, 128
  %469 = icmp ult i64 %468, 256
  br i1 %469, label %471, label %470

470:                                              ; preds = %465
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6078, ptr noundef nonnull @.str.1611) #4
  br label %471

471:                                              ; preds = %465, %470
  %472 = load i32, ptr @flag_sched_critical_path_heuristic, align 4, !tbaa !6
  %473 = sext i32 %472 to i64
  %474 = add nsw i64 %473, 128
  %475 = icmp ult i64 %474, 256
  br i1 %475, label %477, label %476

476:                                              ; preds = %471
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6079, ptr noundef nonnull @.str.1611) #4
  br label %477

477:                                              ; preds = %471, %476
  %478 = load i32, ptr @flag_sched_dep_count_heuristic, align 4, !tbaa !6
  %479 = sext i32 %478 to i64
  %480 = add nsw i64 %479, 128
  %481 = icmp ult i64 %480, 256
  br i1 %481, label %483, label %482

482:                                              ; preds = %477
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6080, ptr noundef nonnull @.str.1611) #4
  br label %483

483:                                              ; preds = %477, %482
  %484 = load i32, ptr @flag_sched_group_heuristic, align 4, !tbaa !6
  %485 = sext i32 %484 to i64
  %486 = add nsw i64 %485, 128
  %487 = icmp ult i64 %486, 256
  br i1 %487, label %489, label %488

488:                                              ; preds = %483
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6081, ptr noundef nonnull @.str.1611) #4
  br label %489

489:                                              ; preds = %483, %488
  %490 = load i32, ptr @flag_schedule_interblock, align 4, !tbaa !6
  %491 = sext i32 %490 to i64
  %492 = add nsw i64 %491, 128
  %493 = icmp ult i64 %492, 256
  br i1 %493, label %495, label %494

494:                                              ; preds = %489
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6082, ptr noundef nonnull @.str.1611) #4
  br label %495

495:                                              ; preds = %489, %494
  %496 = load i32, ptr @flag_sched_last_insn_heuristic, align 4, !tbaa !6
  %497 = sext i32 %496 to i64
  %498 = add nsw i64 %497, 128
  %499 = icmp ult i64 %498, 256
  br i1 %499, label %501, label %500

500:                                              ; preds = %495
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6083, ptr noundef nonnull @.str.1611) #4
  br label %501

501:                                              ; preds = %495, %500
  %502 = load i32, ptr @flag_sched_pressure, align 4, !tbaa !6
  %503 = sext i32 %502 to i64
  %504 = add nsw i64 %503, 128
  %505 = icmp ult i64 %504, 256
  br i1 %505, label %507, label %506

506:                                              ; preds = %501
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6084, ptr noundef nonnull @.str.1611) #4
  br label %507

507:                                              ; preds = %501, %506
  %508 = load i32, ptr @flag_sched_rank_heuristic, align 4, !tbaa !6
  %509 = sext i32 %508 to i64
  %510 = add nsw i64 %509, 128
  %511 = icmp ult i64 %510, 256
  br i1 %511, label %513, label %512

512:                                              ; preds = %507
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6085, ptr noundef nonnull @.str.1611) #4
  br label %513

513:                                              ; preds = %507, %512
  %514 = load i32, ptr @flag_schedule_speculative, align 4, !tbaa !6
  %515 = sext i32 %514 to i64
  %516 = add nsw i64 %515, 128
  %517 = icmp ult i64 %516, 256
  br i1 %517, label %519, label %518

518:                                              ; preds = %513
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6086, ptr noundef nonnull @.str.1611) #4
  br label %519

519:                                              ; preds = %513, %518
  %520 = load i32, ptr @flag_sched_spec_insn_heuristic, align 4, !tbaa !6
  %521 = sext i32 %520 to i64
  %522 = add nsw i64 %521, 128
  %523 = icmp ult i64 %522, 256
  br i1 %523, label %525, label %524

524:                                              ; preds = %519
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6087, ptr noundef nonnull @.str.1611) #4
  br label %525

525:                                              ; preds = %519, %524
  %526 = load i32, ptr @flag_schedule_speculative_load, align 4, !tbaa !6
  %527 = sext i32 %526 to i64
  %528 = add nsw i64 %527, 128
  %529 = icmp ult i64 %528, 256
  br i1 %529, label %531, label %530

530:                                              ; preds = %525
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6088, ptr noundef nonnull @.str.1611) #4
  br label %531

531:                                              ; preds = %525, %530
  %532 = load i32, ptr @flag_schedule_speculative_load_dangerous, align 4, !tbaa !6
  %533 = sext i32 %532 to i64
  %534 = add nsw i64 %533, 128
  %535 = icmp ult i64 %534, 256
  br i1 %535, label %537, label %536

536:                                              ; preds = %531
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6089, ptr noundef nonnull @.str.1611) #4
  br label %537

537:                                              ; preds = %531, %536
  %538 = load i32, ptr @flag_sched2_use_superblocks, align 4, !tbaa !6
  %539 = sext i32 %538 to i64
  %540 = add nsw i64 %539, 128
  %541 = icmp ult i64 %540, 256
  br i1 %541, label %543, label %542

542:                                              ; preds = %537
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6090, ptr noundef nonnull @.str.1611) #4
  br label %543

543:                                              ; preds = %537, %542
  %544 = load i32, ptr @flag_schedule_insns, align 4, !tbaa !6
  %545 = sext i32 %544 to i64
  %546 = add nsw i64 %545, 128
  %547 = icmp ult i64 %546, 256
  br i1 %547, label %549, label %548

548:                                              ; preds = %543
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6091, ptr noundef nonnull @.str.1611) #4
  br label %549

549:                                              ; preds = %543, %548
  %550 = load i32, ptr @flag_schedule_insns_after_reload, align 4, !tbaa !6
  %551 = sext i32 %550 to i64
  %552 = add nsw i64 %551, 128
  %553 = icmp ult i64 %552, 256
  br i1 %553, label %555, label %554

554:                                              ; preds = %549
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6092, ptr noundef nonnull @.str.1611) #4
  br label %555

555:                                              ; preds = %549, %554
  %556 = load i32, ptr @flag_section_anchors, align 4, !tbaa !6
  %557 = sext i32 %556 to i64
  %558 = add nsw i64 %557, 128
  %559 = icmp ult i64 %558, 256
  br i1 %559, label %561, label %560

560:                                              ; preds = %555
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6093, ptr noundef nonnull @.str.1611) #4
  br label %561

561:                                              ; preds = %555, %560
  %562 = load i32, ptr @flag_sel_sched_pipelining, align 4, !tbaa !6
  %563 = sext i32 %562 to i64
  %564 = add nsw i64 %563, 128
  %565 = icmp ult i64 %564, 256
  br i1 %565, label %567, label %566

566:                                              ; preds = %561
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6094, ptr noundef nonnull @.str.1611) #4
  br label %567

567:                                              ; preds = %561, %566
  %568 = load i32, ptr @flag_sel_sched_pipelining_outer_loops, align 4, !tbaa !6
  %569 = sext i32 %568 to i64
  %570 = add nsw i64 %569, 128
  %571 = icmp ult i64 %570, 256
  br i1 %571, label %573, label %572

572:                                              ; preds = %567
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6095, ptr noundef nonnull @.str.1611) #4
  br label %573

573:                                              ; preds = %567, %572
  %574 = load i32, ptr @flag_sel_sched_reschedule_pipelined, align 4, !tbaa !6
  %575 = sext i32 %574 to i64
  %576 = add nsw i64 %575, 128
  %577 = icmp ult i64 %576, 256
  br i1 %577, label %579, label %578

578:                                              ; preds = %573
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6096, ptr noundef nonnull @.str.1611) #4
  br label %579

579:                                              ; preds = %573, %578
  %580 = load i32, ptr @flag_selective_scheduling, align 4, !tbaa !6
  %581 = sext i32 %580 to i64
  %582 = add nsw i64 %581, 128
  %583 = icmp ult i64 %582, 256
  br i1 %583, label %585, label %584

584:                                              ; preds = %579
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6097, ptr noundef nonnull @.str.1611) #4
  br label %585

585:                                              ; preds = %579, %584
  %586 = load i32, ptr @flag_selective_scheduling2, align 4, !tbaa !6
  %587 = sext i32 %586 to i64
  %588 = add nsw i64 %587, 128
  %589 = icmp ult i64 %588, 256
  br i1 %589, label %591, label %590

590:                                              ; preds = %585
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6098, ptr noundef nonnull @.str.1611) #4
  br label %591

591:                                              ; preds = %585, %590
  %592 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !6
  %593 = sext i32 %592 to i64
  %594 = add nsw i64 %593, 128
  %595 = icmp ult i64 %594, 256
  br i1 %595, label %597, label %596

596:                                              ; preds = %591
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6099, ptr noundef nonnull @.str.1611) #4
  br label %597

597:                                              ; preds = %591, %596
  %598 = load i32, ptr @flag_signed_zeros, align 4, !tbaa !6
  %599 = sext i32 %598 to i64
  %600 = add nsw i64 %599, 128
  %601 = icmp ult i64 %600, 256
  br i1 %601, label %603, label %602

602:                                              ; preds = %597
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6100, ptr noundef nonnull @.str.1611) #4
  br label %603

603:                                              ; preds = %597, %602
  %604 = load i32, ptr @flag_single_precision_constant, align 4, !tbaa !6
  %605 = sext i32 %604 to i64
  %606 = add nsw i64 %605, 128
  %607 = icmp ult i64 %606, 256
  br i1 %607, label %609, label %608

608:                                              ; preds = %603
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6101, ptr noundef nonnull @.str.1611) #4
  br label %609

609:                                              ; preds = %603, %608
  %610 = load i32, ptr @flag_split_ivs_in_unroller, align 4, !tbaa !6
  %611 = sext i32 %610 to i64
  %612 = add nsw i64 %611, 128
  %613 = icmp ult i64 %612, 256
  br i1 %613, label %615, label %614

614:                                              ; preds = %609
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6102, ptr noundef nonnull @.str.1611) #4
  br label %615

615:                                              ; preds = %609, %614
  %616 = load i32, ptr @flag_split_wide_types, align 4, !tbaa !6
  %617 = sext i32 %616 to i64
  %618 = add nsw i64 %617, 128
  %619 = icmp ult i64 %618, 256
  br i1 %619, label %621, label %620

620:                                              ; preds = %615
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6103, ptr noundef nonnull @.str.1611) #4
  br label %621

621:                                              ; preds = %615, %620
  %622 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !6
  %623 = sext i32 %622 to i64
  %624 = add nsw i64 %623, 128
  %625 = icmp ult i64 %624, 256
  br i1 %625, label %627, label %626

626:                                              ; preds = %621
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6104, ptr noundef nonnull @.str.1611) #4
  br label %627

627:                                              ; preds = %621, %626
  %628 = load i32, ptr @flag_thread_jumps, align 4, !tbaa !6
  %629 = sext i32 %628 to i64
  %630 = add nsw i64 %629, 128
  %631 = icmp ult i64 %630, 256
  br i1 %631, label %633, label %632

632:                                              ; preds = %627
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6105, ptr noundef nonnull @.str.1611) #4
  br label %633

633:                                              ; preds = %627, %632
  %634 = load i32, ptr @flag_toplevel_reorder, align 4, !tbaa !6
  %635 = sext i32 %634 to i64
  %636 = add nsw i64 %635, 128
  %637 = icmp ult i64 %636, 256
  br i1 %637, label %639, label %638

638:                                              ; preds = %633
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6106, ptr noundef nonnull @.str.1611) #4
  br label %639

639:                                              ; preds = %633, %638
  %640 = load i32, ptr @flag_trapping_math, align 4, !tbaa !6
  %641 = sext i32 %640 to i64
  %642 = add nsw i64 %641, 128
  %643 = icmp ult i64 %642, 256
  br i1 %643, label %645, label %644

644:                                              ; preds = %639
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6107, ptr noundef nonnull @.str.1611) #4
  br label %645

645:                                              ; preds = %639, %644
  %646 = load i32, ptr @flag_trapv, align 4, !tbaa !6
  %647 = sext i32 %646 to i64
  %648 = add nsw i64 %647, 128
  %649 = icmp ult i64 %648, 256
  br i1 %649, label %651, label %650

650:                                              ; preds = %645
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6108, ptr noundef nonnull @.str.1611) #4
  br label %651

651:                                              ; preds = %645, %650
  %652 = load i32, ptr @flag_tree_builtin_call_dce, align 4, !tbaa !6
  %653 = sext i32 %652 to i64
  %654 = add nsw i64 %653, 128
  %655 = icmp ult i64 %654, 256
  br i1 %655, label %657, label %656

656:                                              ; preds = %651
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6109, ptr noundef nonnull @.str.1611) #4
  br label %657

657:                                              ; preds = %651, %656
  %658 = load i32, ptr @flag_tree_ccp, align 4, !tbaa !6
  %659 = sext i32 %658 to i64
  %660 = add nsw i64 %659, 128
  %661 = icmp ult i64 %660, 256
  br i1 %661, label %663, label %662

662:                                              ; preds = %657
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6110, ptr noundef nonnull @.str.1611) #4
  br label %663

663:                                              ; preds = %657, %662
  %664 = load i32, ptr @flag_tree_ch, align 4, !tbaa !6
  %665 = sext i32 %664 to i64
  %666 = add nsw i64 %665, 128
  %667 = icmp ult i64 %666, 256
  br i1 %667, label %669, label %668

668:                                              ; preds = %663
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6111, ptr noundef nonnull @.str.1611) #4
  br label %669

669:                                              ; preds = %663, %668
  %670 = load i32, ptr @flag_tree_copy_prop, align 4, !tbaa !6
  %671 = sext i32 %670 to i64
  %672 = add nsw i64 %671, 128
  %673 = icmp ult i64 %672, 256
  br i1 %673, label %675, label %674

674:                                              ; preds = %669
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6112, ptr noundef nonnull @.str.1611) #4
  br label %675

675:                                              ; preds = %669, %674
  %676 = load i32, ptr @flag_tree_copyrename, align 4, !tbaa !6
  %677 = sext i32 %676 to i64
  %678 = add nsw i64 %677, 128
  %679 = icmp ult i64 %678, 256
  br i1 %679, label %681, label %680

680:                                              ; preds = %675
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6113, ptr noundef nonnull @.str.1611) #4
  br label %681

681:                                              ; preds = %675, %680
  %682 = load i32, ptr @flag_tree_cselim, align 4, !tbaa !6
  %683 = sext i32 %682 to i64
  %684 = add nsw i64 %683, 128
  %685 = icmp ult i64 %684, 256
  br i1 %685, label %687, label %686

686:                                              ; preds = %681
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6114, ptr noundef nonnull @.str.1611) #4
  br label %687

687:                                              ; preds = %681, %686
  %688 = load i32, ptr @flag_tree_dce, align 4, !tbaa !6
  %689 = sext i32 %688 to i64
  %690 = add nsw i64 %689, 128
  %691 = icmp ult i64 %690, 256
  br i1 %691, label %693, label %692

692:                                              ; preds = %687
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6115, ptr noundef nonnull @.str.1611) #4
  br label %693

693:                                              ; preds = %687, %692
  %694 = load i32, ptr @flag_tree_dom, align 4, !tbaa !6
  %695 = sext i32 %694 to i64
  %696 = add nsw i64 %695, 128
  %697 = icmp ult i64 %696, 256
  br i1 %697, label %699, label %698

698:                                              ; preds = %693
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6116, ptr noundef nonnull @.str.1611) #4
  br label %699

699:                                              ; preds = %693, %698
  %700 = load i32, ptr @flag_tree_dse, align 4, !tbaa !6
  %701 = sext i32 %700 to i64
  %702 = add nsw i64 %701, 128
  %703 = icmp ult i64 %702, 256
  br i1 %703, label %705, label %704

704:                                              ; preds = %699
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6117, ptr noundef nonnull @.str.1611) #4
  br label %705

705:                                              ; preds = %699, %704
  %706 = load i32, ptr @flag_tree_forwprop, align 4, !tbaa !6
  %707 = sext i32 %706 to i64
  %708 = add nsw i64 %707, 128
  %709 = icmp ult i64 %708, 256
  br i1 %709, label %711, label %710

710:                                              ; preds = %705
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6118, ptr noundef nonnull @.str.1611) #4
  br label %711

711:                                              ; preds = %705, %710
  %712 = load i32, ptr @flag_tree_fre, align 4, !tbaa !6
  %713 = sext i32 %712 to i64
  %714 = add nsw i64 %713, 128
  %715 = icmp ult i64 %714, 256
  br i1 %715, label %717, label %716

716:                                              ; preds = %711
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6119, ptr noundef nonnull @.str.1611) #4
  br label %717

717:                                              ; preds = %711, %716
  %718 = load i32, ptr @flag_tree_loop_distribution, align 4, !tbaa !6
  %719 = sext i32 %718 to i64
  %720 = add nsw i64 %719, 128
  %721 = icmp ult i64 %720, 256
  br i1 %721, label %723, label %722

722:                                              ; preds = %717
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6120, ptr noundef nonnull @.str.1611) #4
  br label %723

723:                                              ; preds = %717, %722
  %724 = load i32, ptr @flag_tree_loop_im, align 4, !tbaa !6
  %725 = sext i32 %724 to i64
  %726 = add nsw i64 %725, 128
  %727 = icmp ult i64 %726, 256
  br i1 %727, label %729, label %728

728:                                              ; preds = %723
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6121, ptr noundef nonnull @.str.1611) #4
  br label %729

729:                                              ; preds = %723, %728
  %730 = load i32, ptr @flag_tree_loop_ivcanon, align 4, !tbaa !6
  %731 = sext i32 %730 to i64
  %732 = add nsw i64 %731, 128
  %733 = icmp ult i64 %732, 256
  br i1 %733, label %735, label %734

734:                                              ; preds = %729
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6122, ptr noundef nonnull @.str.1611) #4
  br label %735

735:                                              ; preds = %729, %734
  %736 = load i32, ptr @flag_tree_loop_linear, align 4, !tbaa !6
  %737 = sext i32 %736 to i64
  %738 = add nsw i64 %737, 128
  %739 = icmp ult i64 %738, 256
  br i1 %739, label %741, label %740

740:                                              ; preds = %735
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6123, ptr noundef nonnull @.str.1611) #4
  br label %741

741:                                              ; preds = %735, %740
  %742 = load i32, ptr @flag_tree_loop_optimize, align 4, !tbaa !6
  %743 = sext i32 %742 to i64
  %744 = add nsw i64 %743, 128
  %745 = icmp ult i64 %744, 256
  br i1 %745, label %747, label %746

746:                                              ; preds = %741
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6124, ptr noundef nonnull @.str.1611) #4
  br label %747

747:                                              ; preds = %741, %746
  %748 = load i32, ptr @flag_tree_live_range_split, align 4, !tbaa !6
  %749 = sext i32 %748 to i64
  %750 = add nsw i64 %749, 128
  %751 = icmp ult i64 %750, 256
  br i1 %751, label %753, label %752

752:                                              ; preds = %747
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6125, ptr noundef nonnull @.str.1611) #4
  br label %753

753:                                              ; preds = %747, %752
  %754 = load i32, ptr @flag_tree_phiprop, align 4, !tbaa !6
  %755 = sext i32 %754 to i64
  %756 = add nsw i64 %755, 128
  %757 = icmp ult i64 %756, 256
  br i1 %757, label %759, label %758

758:                                              ; preds = %753
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6126, ptr noundef nonnull @.str.1611) #4
  br label %759

759:                                              ; preds = %753, %758
  %760 = load i32, ptr @flag_tree_pre, align 4, !tbaa !6
  %761 = sext i32 %760 to i64
  %762 = add nsw i64 %761, 128
  %763 = icmp ult i64 %762, 256
  br i1 %763, label %765, label %764

764:                                              ; preds = %759
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6127, ptr noundef nonnull @.str.1611) #4
  br label %765

765:                                              ; preds = %759, %764
  %766 = load i32, ptr @flag_tree_pta, align 4, !tbaa !6
  %767 = sext i32 %766 to i64
  %768 = add nsw i64 %767, 128
  %769 = icmp ult i64 %768, 256
  br i1 %769, label %771, label %770

770:                                              ; preds = %765
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6128, ptr noundef nonnull @.str.1611) #4
  br label %771

771:                                              ; preds = %765, %770
  %772 = load i32, ptr @flag_tree_reassoc, align 4, !tbaa !6
  %773 = sext i32 %772 to i64
  %774 = add nsw i64 %773, 128
  %775 = icmp ult i64 %774, 256
  br i1 %775, label %777, label %776

776:                                              ; preds = %771
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6129, ptr noundef nonnull @.str.1611) #4
  br label %777

777:                                              ; preds = %771, %776
  %778 = load i32, ptr @flag_tree_scev_cprop, align 4, !tbaa !6
  %779 = sext i32 %778 to i64
  %780 = add nsw i64 %779, 128
  %781 = icmp ult i64 %780, 256
  br i1 %781, label %783, label %782

782:                                              ; preds = %777
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6130, ptr noundef nonnull @.str.1611) #4
  br label %783

783:                                              ; preds = %777, %782
  %784 = load i32, ptr @flag_tree_sink, align 4, !tbaa !6
  %785 = sext i32 %784 to i64
  %786 = add nsw i64 %785, 128
  %787 = icmp ult i64 %786, 256
  br i1 %787, label %789, label %788

788:                                              ; preds = %783
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6131, ptr noundef nonnull @.str.1611) #4
  br label %789

789:                                              ; preds = %783, %788
  %790 = load i32, ptr @flag_tree_slp_vectorize, align 4, !tbaa !6
  %791 = sext i32 %790 to i64
  %792 = add nsw i64 %791, 128
  %793 = icmp ult i64 %792, 256
  br i1 %793, label %795, label %794

794:                                              ; preds = %789
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6132, ptr noundef nonnull @.str.1611) #4
  br label %795

795:                                              ; preds = %789, %794
  %796 = load i32, ptr @flag_tree_sra, align 4, !tbaa !6
  %797 = sext i32 %796 to i64
  %798 = add nsw i64 %797, 128
  %799 = icmp ult i64 %798, 256
  br i1 %799, label %801, label %800

800:                                              ; preds = %795
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6133, ptr noundef nonnull @.str.1611) #4
  br label %801

801:                                              ; preds = %795, %800
  %802 = load i32, ptr @flag_tree_switch_conversion, align 4, !tbaa !6
  %803 = sext i32 %802 to i64
  %804 = add nsw i64 %803, 128
  %805 = icmp ult i64 %804, 256
  br i1 %805, label %807, label %806

806:                                              ; preds = %801
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6134, ptr noundef nonnull @.str.1611) #4
  br label %807

807:                                              ; preds = %801, %806
  %808 = load i32, ptr @flag_tree_ter, align 4, !tbaa !6
  %809 = sext i32 %808 to i64
  %810 = add nsw i64 %809, 128
  %811 = icmp ult i64 %810, 256
  br i1 %811, label %813, label %812

812:                                              ; preds = %807
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6135, ptr noundef nonnull @.str.1611) #4
  br label %813

813:                                              ; preds = %807, %812
  %814 = load i32, ptr @flag_tree_vect_loop_version, align 4, !tbaa !6
  %815 = sext i32 %814 to i64
  %816 = add nsw i64 %815, 128
  %817 = icmp ult i64 %816, 256
  br i1 %817, label %819, label %818

818:                                              ; preds = %813
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6136, ptr noundef nonnull @.str.1611) #4
  br label %819

819:                                              ; preds = %813, %818
  %820 = load i32, ptr @flag_tree_vectorize, align 4, !tbaa !6
  %821 = sext i32 %820 to i64
  %822 = add nsw i64 %821, 128
  %823 = icmp ult i64 %822, 256
  br i1 %823, label %825, label %824

824:                                              ; preds = %819
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6137, ptr noundef nonnull @.str.1611) #4
  br label %825

825:                                              ; preds = %819, %824
  %826 = load i32, ptr @flag_tree_vrp, align 4, !tbaa !6
  %827 = sext i32 %826 to i64
  %828 = add nsw i64 %827, 128
  %829 = icmp ult i64 %828, 256
  br i1 %829, label %831, label %830

830:                                              ; preds = %825
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6138, ptr noundef nonnull @.str.1611) #4
  br label %831

831:                                              ; preds = %825, %830
  %832 = load i32, ptr @flag_unit_at_a_time, align 4, !tbaa !6
  %833 = sext i32 %832 to i64
  %834 = add nsw i64 %833, 128
  %835 = icmp ult i64 %834, 256
  br i1 %835, label %837, label %836

836:                                              ; preds = %831
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6139, ptr noundef nonnull @.str.1611) #4
  br label %837

837:                                              ; preds = %831, %836
  %838 = load i32, ptr @flag_unroll_all_loops, align 4, !tbaa !6
  %839 = sext i32 %838 to i64
  %840 = add nsw i64 %839, 128
  %841 = icmp ult i64 %840, 256
  br i1 %841, label %843, label %842

842:                                              ; preds = %837
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6140, ptr noundef nonnull @.str.1611) #4
  br label %843

843:                                              ; preds = %837, %842
  %844 = load i32, ptr @flag_unroll_loops, align 4, !tbaa !6
  %845 = sext i32 %844 to i64
  %846 = add nsw i64 %845, 128
  %847 = icmp ult i64 %846, 256
  br i1 %847, label %849, label %848

848:                                              ; preds = %843
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6141, ptr noundef nonnull @.str.1611) #4
  br label %849

849:                                              ; preds = %843, %848
  %850 = load i32, ptr @flag_unsafe_loop_optimizations, align 4, !tbaa !6
  %851 = sext i32 %850 to i64
  %852 = add nsw i64 %851, 128
  %853 = icmp ult i64 %852, 256
  br i1 %853, label %855, label %854

854:                                              ; preds = %849
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6142, ptr noundef nonnull @.str.1611) #4
  br label %855

855:                                              ; preds = %849, %854
  %856 = load i32, ptr @flag_unsafe_math_optimizations, align 4, !tbaa !6
  %857 = sext i32 %856 to i64
  %858 = add nsw i64 %857, 128
  %859 = icmp ult i64 %858, 256
  br i1 %859, label %861, label %860

860:                                              ; preds = %855
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6143, ptr noundef nonnull @.str.1611) #4
  br label %861

861:                                              ; preds = %855, %860
  %862 = load i32, ptr @flag_unswitch_loops, align 4, !tbaa !6
  %863 = sext i32 %862 to i64
  %864 = add nsw i64 %863, 128
  %865 = icmp ult i64 %864, 256
  br i1 %865, label %867, label %866

866:                                              ; preds = %861
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6144, ptr noundef nonnull @.str.1611) #4
  br label %867

867:                                              ; preds = %861, %866
  %868 = load i32, ptr @flag_unwind_tables, align 4, !tbaa !6
  %869 = sext i32 %868 to i64
  %870 = add nsw i64 %869, 128
  %871 = icmp ult i64 %870, 256
  br i1 %871, label %873, label %872

872:                                              ; preds = %867
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6145, ptr noundef nonnull @.str.1611) #4
  br label %873

873:                                              ; preds = %867, %872
  %874 = load i32, ptr @flag_var_tracking, align 4, !tbaa !6
  %875 = sext i32 %874 to i64
  %876 = add nsw i64 %875, 128
  %877 = icmp ult i64 %876, 256
  br i1 %877, label %879, label %878

878:                                              ; preds = %873
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6146, ptr noundef nonnull @.str.1611) #4
  br label %879

879:                                              ; preds = %873, %878
  %880 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  %881 = sext i32 %880 to i64
  %882 = add nsw i64 %881, 128
  %883 = icmp ult i64 %882, 256
  br i1 %883, label %885, label %884

884:                                              ; preds = %879
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6147, ptr noundef nonnull @.str.1611) #4
  br label %885

885:                                              ; preds = %879, %884
  %886 = load i32, ptr @flag_var_tracking_assignments_toggle, align 4, !tbaa !6
  %887 = sext i32 %886 to i64
  %888 = add nsw i64 %887, 128
  %889 = icmp ult i64 %888, 256
  br i1 %889, label %891, label %890

890:                                              ; preds = %885
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6148, ptr noundef nonnull @.str.1611) #4
  br label %891

891:                                              ; preds = %885, %890
  %892 = load i32, ptr @flag_var_tracking_uninit, align 4, !tbaa !6
  %893 = sext i32 %892 to i64
  %894 = add nsw i64 %893, 128
  %895 = icmp ult i64 %894, 256
  br i1 %895, label %897, label %896

896:                                              ; preds = %891
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6149, ptr noundef nonnull @.str.1611) #4
  br label %897

897:                                              ; preds = %891, %896
  %898 = load i32, ptr @flag_variable_expansion_in_unroller, align 4, !tbaa !6
  %899 = sext i32 %898 to i64
  %900 = add nsw i64 %899, 128
  %901 = icmp ult i64 %900, 256
  br i1 %901, label %903, label %902

902:                                              ; preds = %897
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6150, ptr noundef nonnull @.str.1611) #4
  br label %903

903:                                              ; preds = %897, %902
  %904 = load i32, ptr @flag_vect_cost_model, align 4, !tbaa !6
  %905 = sext i32 %904 to i64
  %906 = add nsw i64 %905, 128
  %907 = icmp ult i64 %906, 256
  br i1 %907, label %909, label %908

908:                                              ; preds = %903
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6151, ptr noundef nonnull @.str.1611) #4
  br label %909

909:                                              ; preds = %903, %908
  %910 = load i32, ptr @flag_value_profile_transformations, align 4, !tbaa !6
  %911 = sext i32 %910 to i64
  %912 = add nsw i64 %911, 128
  %913 = icmp ult i64 %912, 256
  br i1 %913, label %915, label %914

914:                                              ; preds = %909
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6152, ptr noundef nonnull @.str.1611) #4
  br label %915

915:                                              ; preds = %909, %914
  %916 = load i32, ptr @flag_web, align 4, !tbaa !6
  %917 = sext i32 %916 to i64
  %918 = add nsw i64 %917, 128
  %919 = icmp ult i64 %918, 256
  br i1 %919, label %921, label %920

920:                                              ; preds = %915
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6153, ptr noundef nonnull @.str.1611) #4
  br label %921

921:                                              ; preds = %915, %920
  %922 = load i32, ptr @flag_whole_program, align 4, !tbaa !6
  %923 = sext i32 %922 to i64
  %924 = add nsw i64 %923, 128
  %925 = icmp ult i64 %924, 256
  br i1 %925, label %927, label %926

926:                                              ; preds = %921
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6154, ptr noundef nonnull @.str.1611) #4
  br label %927

927:                                              ; preds = %921, %926
  %928 = load i32, ptr @flag_wpa, align 4, !tbaa !6
  %929 = sext i32 %928 to i64
  %930 = add nsw i64 %929, 128
  %931 = icmp ult i64 %930, 256
  br i1 %931, label %933, label %932

932:                                              ; preds = %927
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6155, ptr noundef nonnull @.str.1611) #4
  br label %933

933:                                              ; preds = %927, %932
  %934 = load i32, ptr @flag_wrapv, align 4, !tbaa !6
  %935 = sext i32 %934 to i64
  %936 = add nsw i64 %935, 128
  %937 = icmp ult i64 %936, 256
  br i1 %937, label %939, label %938

938:                                              ; preds = %933
  tail call void @fancy_abort(ptr noundef nonnull @.str.1610, i32 noundef 6156, ptr noundef nonnull @.str.1611) #4
  br label %939

939:                                              ; preds = %933, %938
  %940 = load i32, ptr @align_functions, align 4, !tbaa !6
  store i32 %940, ptr %0, align 4, !tbaa !10
  %941 = load i32, ptr @align_jumps, align 4, !tbaa !6
  %942 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 1
  store i32 %941, ptr %942, align 4, !tbaa !12
  %943 = load i32, ptr @align_labels, align 4, !tbaa !6
  %944 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 2
  store i32 %943, ptr %944, align 4, !tbaa !13
  %945 = load i32, ptr @align_loops, align 4, !tbaa !6
  %946 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 3
  store i32 %945, ptr %946, align 4, !tbaa !14
  %947 = load i32, ptr @flag_sched_stalled_insns, align 4, !tbaa !6
  %948 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 4
  store i32 %947, ptr %948, align 4, !tbaa !15
  %949 = load i32, ptr @flag_sched_stalled_insns_dep, align 4, !tbaa !6
  %950 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 5
  store i32 %949, ptr %950, align 4, !tbaa !16
  %951 = load i32, ptr @optimize, align 4, !tbaa !6
  %952 = trunc i32 %951 to i8
  %953 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 6
  store i8 %952, ptr %953, align 4, !tbaa !17
  %954 = load i32, ptr @optimize_size, align 4, !tbaa !6
  %955 = trunc i32 %954 to i8
  %956 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 7
  store i8 %955, ptr %956, align 1, !tbaa !18
  %957 = load i32, ptr @flag_argument_noalias, align 4, !tbaa !6
  %958 = trunc i32 %957 to i8
  %959 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 8
  store i8 %958, ptr %959, align 2, !tbaa !19
  %960 = load i32, ptr @flag_asynchronous_unwind_tables, align 4, !tbaa !6
  %961 = trunc i32 %960 to i8
  %962 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 9
  store i8 %961, ptr %962, align 1, !tbaa !20
  %963 = load i32, ptr @flag_branch_on_count_reg, align 4, !tbaa !6
  %964 = trunc i32 %963 to i8
  %965 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 10
  store i8 %964, ptr %965, align 4, !tbaa !21
  %966 = load i32, ptr @flag_branch_probabilities, align 4, !tbaa !6
  %967 = trunc i32 %966 to i8
  %968 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 11
  store i8 %967, ptr %968, align 1, !tbaa !22
  %969 = load i32, ptr @flag_branch_target_load_optimize, align 4, !tbaa !6
  %970 = trunc i32 %969 to i8
  %971 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 12
  store i8 %970, ptr %971, align 2, !tbaa !23
  %972 = load i32, ptr @flag_branch_target_load_optimize2, align 4, !tbaa !6
  %973 = trunc i32 %972 to i8
  %974 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 13
  store i8 %973, ptr %974, align 1, !tbaa !24
  %975 = load i32, ptr @flag_btr_bb_exclusive, align 4, !tbaa !6
  %976 = trunc i32 %975 to i8
  %977 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 14
  store i8 %976, ptr %977, align 4, !tbaa !25
  %978 = load i32, ptr @flag_caller_saves, align 4, !tbaa !6
  %979 = trunc i32 %978 to i8
  %980 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 15
  store i8 %979, ptr %980, align 1, !tbaa !26
  %981 = load i32, ptr @flag_no_common, align 4, !tbaa !6
  %982 = trunc i32 %981 to i8
  %983 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 16
  store i8 %982, ptr %983, align 2, !tbaa !27
  %984 = load i32, ptr @flag_conserve_stack, align 4, !tbaa !6
  %985 = trunc i32 %984 to i8
  %986 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 17
  store i8 %985, ptr %986, align 1, !tbaa !28
  %987 = load i32, ptr @flag_cprop_registers, align 4, !tbaa !6
  %988 = trunc i32 %987 to i8
  %989 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 18
  store i8 %988, ptr %989, align 4, !tbaa !29
  %990 = load i32, ptr @flag_crossjumping, align 4, !tbaa !6
  %991 = trunc i32 %990 to i8
  %992 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 19
  store i8 %991, ptr %992, align 1, !tbaa !30
  %993 = load i32, ptr @flag_cse_follow_jumps, align 4, !tbaa !6
  %994 = trunc i32 %993 to i8
  %995 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 20
  store i8 %994, ptr %995, align 2, !tbaa !31
  %996 = load i32, ptr @flag_cx_fortran_rules, align 4, !tbaa !6
  %997 = trunc i32 %996 to i8
  %998 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 21
  store i8 %997, ptr %998, align 1, !tbaa !32
  %999 = load i32, ptr @flag_cx_limited_range, align 4, !tbaa !6
  %1000 = trunc i32 %999 to i8
  %1001 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 22
  store i8 %1000, ptr %1001, align 4, !tbaa !33
  %1002 = load i32, ptr @flag_data_sections, align 4, !tbaa !6
  %1003 = trunc i32 %1002 to i8
  %1004 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 23
  store i8 %1003, ptr %1004, align 1, !tbaa !34
  %1005 = load i32, ptr @flag_dce, align 4, !tbaa !6
  %1006 = trunc i32 %1005 to i8
  %1007 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 24
  store i8 %1006, ptr %1007, align 2, !tbaa !35
  %1008 = load i32, ptr @flag_defer_pop, align 4, !tbaa !6
  %1009 = trunc i32 %1008 to i8
  %1010 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 25
  store i8 %1009, ptr %1010, align 1, !tbaa !36
  %1011 = load i32, ptr @flag_delayed_branch, align 4, !tbaa !6
  %1012 = trunc i32 %1011 to i8
  %1013 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 26
  store i8 %1012, ptr %1013, align 4, !tbaa !37
  %1014 = load i32, ptr @flag_delete_null_pointer_checks, align 4, !tbaa !6
  %1015 = trunc i32 %1014 to i8
  %1016 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 27
  store i8 %1015, ptr %1016, align 1, !tbaa !38
  %1017 = load i32, ptr @flag_dse, align 4, !tbaa !6
  %1018 = trunc i32 %1017 to i8
  %1019 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 28
  store i8 %1018, ptr %1019, align 2, !tbaa !39
  %1020 = load i32, ptr @flag_early_inlining, align 4, !tbaa !6
  %1021 = trunc i32 %1020 to i8
  %1022 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 29
  store i8 %1021, ptr %1022, align 1, !tbaa !40
  %1023 = load i32, ptr @flag_exceptions, align 4, !tbaa !6
  %1024 = trunc i32 %1023 to i8
  %1025 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 30
  store i8 %1024, ptr %1025, align 4, !tbaa !41
  %1026 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !6
  %1027 = trunc i32 %1026 to i8
  %1028 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 31
  store i8 %1027, ptr %1028, align 1, !tbaa !42
  %1029 = load i32, ptr @flag_finite_math_only, align 4, !tbaa !6
  %1030 = trunc i32 %1029 to i8
  %1031 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 32
  store i8 %1030, ptr %1031, align 2, !tbaa !43
  %1032 = load i32, ptr @flag_float_store, align 4, !tbaa !6
  %1033 = trunc i32 %1032 to i8
  %1034 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 33
  store i8 %1033, ptr %1034, align 1, !tbaa !44
  %1035 = load i32, ptr @flag_forward_propagate, align 4, !tbaa !6
  %1036 = trunc i32 %1035 to i8
  %1037 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 34
  store i8 %1036, ptr %1037, align 4, !tbaa !45
  %1038 = load i32, ptr @flag_gcse, align 4, !tbaa !6
  %1039 = trunc i32 %1038 to i8
  %1040 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 35
  store i8 %1039, ptr %1040, align 1, !tbaa !46
  %1041 = load i32, ptr @flag_gcse_after_reload, align 4, !tbaa !6
  %1042 = trunc i32 %1041 to i8
  %1043 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 36
  store i8 %1042, ptr %1043, align 2, !tbaa !47
  %1044 = load i32, ptr @flag_gcse_las, align 4, !tbaa !6
  %1045 = trunc i32 %1044 to i8
  %1046 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 37
  store i8 %1045, ptr %1046, align 1, !tbaa !48
  %1047 = load i32, ptr @flag_gcse_lm, align 4, !tbaa !6
  %1048 = trunc i32 %1047 to i8
  %1049 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 38
  store i8 %1048, ptr %1049, align 4, !tbaa !49
  %1050 = load i32, ptr @flag_gcse_sm, align 4, !tbaa !6
  %1051 = trunc i32 %1050 to i8
  %1052 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 39
  store i8 %1051, ptr %1052, align 1, !tbaa !50
  %1053 = load i32, ptr @flag_graphite_identity, align 4, !tbaa !6
  %1054 = trunc i32 %1053 to i8
  %1055 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 40
  store i8 %1054, ptr %1055, align 2, !tbaa !51
  %1056 = load i32, ptr @flag_guess_branch_prob, align 4, !tbaa !6
  %1057 = trunc i32 %1056 to i8
  %1058 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 41
  store i8 %1057, ptr %1058, align 1, !tbaa !52
  %1059 = load i32, ptr @flag_if_conversion, align 4, !tbaa !6
  %1060 = trunc i32 %1059 to i8
  %1061 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 42
  store i8 %1060, ptr %1061, align 4, !tbaa !53
  %1062 = load i32, ptr @flag_if_conversion2, align 4, !tbaa !6
  %1063 = trunc i32 %1062 to i8
  %1064 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 43
  store i8 %1063, ptr %1064, align 1, !tbaa !54
  %1065 = load i32, ptr @flag_inline_functions, align 4, !tbaa !6
  %1066 = trunc i32 %1065 to i8
  %1067 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 44
  store i8 %1066, ptr %1067, align 2, !tbaa !55
  %1068 = load i32, ptr @flag_inline_functions_called_once, align 4, !tbaa !6
  %1069 = trunc i32 %1068 to i8
  %1070 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 45
  store i8 %1069, ptr %1070, align 1, !tbaa !56
  %1071 = load i32, ptr @flag_inline_small_functions, align 4, !tbaa !6
  %1072 = trunc i32 %1071 to i8
  %1073 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 46
  store i8 %1072, ptr %1073, align 4, !tbaa !57
  %1074 = load i32, ptr @flag_ipa_cp, align 4, !tbaa !6
  %1075 = trunc i32 %1074 to i8
  %1076 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 47
  store i8 %1075, ptr %1076, align 1, !tbaa !58
  %1077 = load i32, ptr @flag_ipa_cp_clone, align 4, !tbaa !6
  %1078 = trunc i32 %1077 to i8
  %1079 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 48
  store i8 %1078, ptr %1079, align 2, !tbaa !59
  %1080 = load i32, ptr @flag_ipa_matrix_reorg, align 4, !tbaa !6
  %1081 = trunc i32 %1080 to i8
  %1082 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 49
  store i8 %1081, ptr %1082, align 1, !tbaa !60
  %1083 = load i32, ptr @flag_ipa_pta, align 4, !tbaa !6
  %1084 = trunc i32 %1083 to i8
  %1085 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 50
  store i8 %1084, ptr %1085, align 4, !tbaa !61
  %1086 = load i32, ptr @flag_ipa_pure_const, align 4, !tbaa !6
  %1087 = trunc i32 %1086 to i8
  %1088 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 51
  store i8 %1087, ptr %1088, align 1, !tbaa !62
  %1089 = load i32, ptr @flag_ipa_reference, align 4, !tbaa !6
  %1090 = trunc i32 %1089 to i8
  %1091 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 52
  store i8 %1090, ptr %1091, align 2, !tbaa !63
  %1092 = load i32, ptr @flag_ipa_sra, align 4, !tbaa !6
  %1093 = trunc i32 %1092 to i8
  %1094 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 53
  store i8 %1093, ptr %1094, align 1, !tbaa !64
  %1095 = load i32, ptr @flag_ipa_type_escape, align 4, !tbaa !6
  %1096 = trunc i32 %1095 to i8
  %1097 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 54
  store i8 %1096, ptr %1097, align 4, !tbaa !65
  %1098 = load i32, ptr @flag_ivopts, align 4, !tbaa !6
  %1099 = trunc i32 %1098 to i8
  %1100 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 55
  store i8 %1099, ptr %1100, align 1, !tbaa !66
  %1101 = load i32, ptr @flag_jump_tables, align 4, !tbaa !6
  %1102 = trunc i32 %1101 to i8
  %1103 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 56
  store i8 %1102, ptr %1103, align 2, !tbaa !67
  %1104 = load i32, ptr @flag_loop_block, align 4, !tbaa !6
  %1105 = trunc i32 %1104 to i8
  %1106 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 57
  store i8 %1105, ptr %1106, align 1, !tbaa !68
  %1107 = load i32, ptr @flag_loop_interchange, align 4, !tbaa !6
  %1108 = trunc i32 %1107 to i8
  %1109 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 58
  store i8 %1108, ptr %1109, align 4, !tbaa !69
  %1110 = load i32, ptr @flag_loop_parallelize_all, align 4, !tbaa !6
  %1111 = trunc i32 %1110 to i8
  %1112 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 59
  store i8 %1111, ptr %1112, align 1, !tbaa !70
  %1113 = load i32, ptr @flag_loop_strip_mine, align 4, !tbaa !6
  %1114 = trunc i32 %1113 to i8
  %1115 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 60
  store i8 %1114, ptr %1115, align 2, !tbaa !71
  %1116 = load i32, ptr @flag_lto_report, align 4, !tbaa !6
  %1117 = trunc i32 %1116 to i8
  %1118 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 61
  store i8 %1117, ptr %1118, align 1, !tbaa !72
  %1119 = load i32, ptr @flag_ltrans, align 4, !tbaa !6
  %1120 = trunc i32 %1119 to i8
  %1121 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 62
  store i8 %1120, ptr %1121, align 4, !tbaa !73
  %1122 = load i32, ptr @flag_errno_math, align 4, !tbaa !6
  %1123 = trunc i32 %1122 to i8
  %1124 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 63
  store i8 %1123, ptr %1124, align 1, !tbaa !74
  %1125 = load i32, ptr @flag_merge_constants, align 4, !tbaa !6
  %1126 = trunc i32 %1125 to i8
  %1127 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 64
  store i8 %1126, ptr %1127, align 2, !tbaa !75
  %1128 = load i32, ptr @flag_modulo_sched, align 4, !tbaa !6
  %1129 = trunc i32 %1128 to i8
  %1130 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 65
  store i8 %1129, ptr %1130, align 1, !tbaa !76
  %1131 = load i32, ptr @flag_move_loop_invariants, align 4, !tbaa !6
  %1132 = trunc i32 %1131 to i8
  %1133 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 66
  store i8 %1132, ptr %1133, align 4, !tbaa !77
  %1134 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !6
  %1135 = trunc i32 %1134 to i8
  %1136 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 67
  store i8 %1135, ptr %1136, align 1, !tbaa !78
  %1137 = load i32, ptr @flag_omit_frame_pointer, align 4, !tbaa !6
  %1138 = trunc i32 %1137 to i8
  %1139 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 68
  store i8 %1138, ptr %1139, align 2, !tbaa !79
  %1140 = load i32, ptr @flag_regmove, align 4, !tbaa !6
  %1141 = trunc i32 %1140 to i8
  %1142 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 69
  store i8 %1141, ptr %1142, align 1, !tbaa !80
  %1143 = load i32, ptr @flag_optimize_sibling_calls, align 4, !tbaa !6
  %1144 = trunc i32 %1143 to i8
  %1145 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 70
  store i8 %1144, ptr %1145, align 4, !tbaa !81
  %1146 = load i32, ptr @flag_pack_struct, align 4, !tbaa !6
  %1147 = trunc i32 %1146 to i8
  %1148 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 71
  store i8 %1147, ptr %1148, align 1, !tbaa !82
  %1149 = load i32, ptr @flag_peel_loops, align 4, !tbaa !6
  %1150 = trunc i32 %1149 to i8
  %1151 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 72
  store i8 %1150, ptr %1151, align 2, !tbaa !83
  %1152 = load i32, ptr @flag_no_peephole, align 4, !tbaa !6
  %1153 = trunc i32 %1152 to i8
  %1154 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 73
  store i8 %1153, ptr %1154, align 1, !tbaa !84
  %1155 = load i32, ptr @flag_peephole2, align 4, !tbaa !6
  %1156 = trunc i32 %1155 to i8
  %1157 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 74
  store i8 %1156, ptr %1157, align 4, !tbaa !85
  %1158 = load i32, ptr @flag_predictive_commoning, align 4, !tbaa !6
  %1159 = trunc i32 %1158 to i8
  %1160 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 75
  store i8 %1159, ptr %1160, align 1, !tbaa !86
  %1161 = load i32, ptr @flag_prefetch_loop_arrays, align 4, !tbaa !6
  %1162 = trunc i32 %1161 to i8
  %1163 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 76
  store i8 %1162, ptr %1163, align 2, !tbaa !87
  %1164 = load i32, ptr @flag_pcc_struct_return, align 4, !tbaa !6
  %1165 = trunc i32 %1164 to i8
  %1166 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 77
  store i8 %1165, ptr %1166, align 1, !tbaa !88
  %1167 = load i32, ptr @flag_rename_registers, align 4, !tbaa !6
  %1168 = trunc i32 %1167 to i8
  %1169 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 78
  store i8 %1168, ptr %1169, align 4, !tbaa !89
  %1170 = load i32, ptr @flag_reorder_blocks, align 4, !tbaa !6
  %1171 = trunc i32 %1170 to i8
  %1172 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 79
  store i8 %1171, ptr %1172, align 1, !tbaa !90
  %1173 = load i32, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !6
  %1174 = trunc i32 %1173 to i8
  %1175 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 80
  store i8 %1174, ptr %1175, align 2, !tbaa !91
  %1176 = load i32, ptr @flag_reorder_functions, align 4, !tbaa !6
  %1177 = trunc i32 %1176 to i8
  %1178 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 81
  store i8 %1177, ptr %1178, align 1, !tbaa !92
  %1179 = load i32, ptr @flag_rerun_cse_after_loop, align 4, !tbaa !6
  %1180 = trunc i32 %1179 to i8
  %1181 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 82
  store i8 %1180, ptr %1181, align 4, !tbaa !93
  %1182 = load i32, ptr @flag_resched_modulo_sched, align 4, !tbaa !6
  %1183 = trunc i32 %1182 to i8
  %1184 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 83
  store i8 %1183, ptr %1184, align 1, !tbaa !94
  %1185 = load i32, ptr @flag_rounding_math, align 4, !tbaa !6
  %1186 = trunc i32 %1185 to i8
  %1187 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 84
  store i8 %1186, ptr %1187, align 2, !tbaa !95
  %1188 = load i32, ptr @flag_sched_critical_path_heuristic, align 4, !tbaa !6
  %1189 = trunc i32 %1188 to i8
  %1190 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 85
  store i8 %1189, ptr %1190, align 1, !tbaa !96
  %1191 = load i32, ptr @flag_sched_dep_count_heuristic, align 4, !tbaa !6
  %1192 = trunc i32 %1191 to i8
  %1193 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 86
  store i8 %1192, ptr %1193, align 4, !tbaa !97
  %1194 = load i32, ptr @flag_sched_group_heuristic, align 4, !tbaa !6
  %1195 = trunc i32 %1194 to i8
  %1196 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 87
  store i8 %1195, ptr %1196, align 1, !tbaa !98
  %1197 = load i32, ptr @flag_schedule_interblock, align 4, !tbaa !6
  %1198 = trunc i32 %1197 to i8
  %1199 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 88
  store i8 %1198, ptr %1199, align 2, !tbaa !99
  %1200 = load i32, ptr @flag_sched_last_insn_heuristic, align 4, !tbaa !6
  %1201 = trunc i32 %1200 to i8
  %1202 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 89
  store i8 %1201, ptr %1202, align 1, !tbaa !100
  %1203 = load i32, ptr @flag_sched_pressure, align 4, !tbaa !6
  %1204 = trunc i32 %1203 to i8
  %1205 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 90
  store i8 %1204, ptr %1205, align 4, !tbaa !101
  %1206 = load i32, ptr @flag_sched_rank_heuristic, align 4, !tbaa !6
  %1207 = trunc i32 %1206 to i8
  %1208 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 91
  store i8 %1207, ptr %1208, align 1, !tbaa !102
  %1209 = load i32, ptr @flag_schedule_speculative, align 4, !tbaa !6
  %1210 = trunc i32 %1209 to i8
  %1211 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 92
  store i8 %1210, ptr %1211, align 2, !tbaa !103
  %1212 = load i32, ptr @flag_sched_spec_insn_heuristic, align 4, !tbaa !6
  %1213 = trunc i32 %1212 to i8
  %1214 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 93
  store i8 %1213, ptr %1214, align 1, !tbaa !104
  %1215 = load i32, ptr @flag_schedule_speculative_load, align 4, !tbaa !6
  %1216 = trunc i32 %1215 to i8
  %1217 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 94
  store i8 %1216, ptr %1217, align 4, !tbaa !105
  %1218 = load i32, ptr @flag_schedule_speculative_load_dangerous, align 4, !tbaa !6
  %1219 = trunc i32 %1218 to i8
  %1220 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 95
  store i8 %1219, ptr %1220, align 1, !tbaa !106
  %1221 = load i32, ptr @flag_sched2_use_superblocks, align 4, !tbaa !6
  %1222 = trunc i32 %1221 to i8
  %1223 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 96
  store i8 %1222, ptr %1223, align 2, !tbaa !107
  %1224 = load i32, ptr @flag_schedule_insns, align 4, !tbaa !6
  %1225 = trunc i32 %1224 to i8
  %1226 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 97
  store i8 %1225, ptr %1226, align 1, !tbaa !108
  %1227 = load i32, ptr @flag_schedule_insns_after_reload, align 4, !tbaa !6
  %1228 = trunc i32 %1227 to i8
  %1229 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 98
  store i8 %1228, ptr %1229, align 4, !tbaa !109
  %1230 = load i32, ptr @flag_section_anchors, align 4, !tbaa !6
  %1231 = trunc i32 %1230 to i8
  %1232 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 99
  store i8 %1231, ptr %1232, align 1, !tbaa !110
  %1233 = load i32, ptr @flag_sel_sched_pipelining, align 4, !tbaa !6
  %1234 = trunc i32 %1233 to i8
  %1235 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 100
  store i8 %1234, ptr %1235, align 2, !tbaa !111
  %1236 = load i32, ptr @flag_sel_sched_pipelining_outer_loops, align 4, !tbaa !6
  %1237 = trunc i32 %1236 to i8
  %1238 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 101
  store i8 %1237, ptr %1238, align 1, !tbaa !112
  %1239 = load i32, ptr @flag_sel_sched_reschedule_pipelined, align 4, !tbaa !6
  %1240 = trunc i32 %1239 to i8
  %1241 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 102
  store i8 %1240, ptr %1241, align 4, !tbaa !113
  %1242 = load i32, ptr @flag_selective_scheduling, align 4, !tbaa !6
  %1243 = trunc i32 %1242 to i8
  %1244 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 103
  store i8 %1243, ptr %1244, align 1, !tbaa !114
  %1245 = load i32, ptr @flag_selective_scheduling2, align 4, !tbaa !6
  %1246 = trunc i32 %1245 to i8
  %1247 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 104
  store i8 %1246, ptr %1247, align 2, !tbaa !115
  %1248 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !6
  %1249 = trunc i32 %1248 to i8
  %1250 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 105
  store i8 %1249, ptr %1250, align 1, !tbaa !116
  %1251 = load i32, ptr @flag_signed_zeros, align 4, !tbaa !6
  %1252 = trunc i32 %1251 to i8
  %1253 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 106
  store i8 %1252, ptr %1253, align 4, !tbaa !117
  %1254 = load i32, ptr @flag_single_precision_constant, align 4, !tbaa !6
  %1255 = trunc i32 %1254 to i8
  %1256 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 107
  store i8 %1255, ptr %1256, align 1, !tbaa !118
  %1257 = load i32, ptr @flag_split_ivs_in_unroller, align 4, !tbaa !6
  %1258 = trunc i32 %1257 to i8
  %1259 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 108
  store i8 %1258, ptr %1259, align 2, !tbaa !119
  %1260 = load i32, ptr @flag_split_wide_types, align 4, !tbaa !6
  %1261 = trunc i32 %1260 to i8
  %1262 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 109
  store i8 %1261, ptr %1262, align 1, !tbaa !120
  %1263 = load i32, ptr @flag_strict_aliasing, align 4, !tbaa !6
  %1264 = trunc i32 %1263 to i8
  %1265 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 110
  store i8 %1264, ptr %1265, align 4, !tbaa !121
  %1266 = load i32, ptr @flag_thread_jumps, align 4, !tbaa !6
  %1267 = trunc i32 %1266 to i8
  %1268 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 111
  store i8 %1267, ptr %1268, align 1, !tbaa !122
  %1269 = load i32, ptr @flag_toplevel_reorder, align 4, !tbaa !6
  %1270 = trunc i32 %1269 to i8
  %1271 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 112
  store i8 %1270, ptr %1271, align 2, !tbaa !123
  %1272 = load i32, ptr @flag_trapping_math, align 4, !tbaa !6
  %1273 = trunc i32 %1272 to i8
  %1274 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 113
  store i8 %1273, ptr %1274, align 1, !tbaa !124
  %1275 = load i32, ptr @flag_trapv, align 4, !tbaa !6
  %1276 = trunc i32 %1275 to i8
  %1277 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 114
  store i8 %1276, ptr %1277, align 4, !tbaa !125
  %1278 = load i32, ptr @flag_tree_builtin_call_dce, align 4, !tbaa !6
  %1279 = trunc i32 %1278 to i8
  %1280 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 115
  store i8 %1279, ptr %1280, align 1, !tbaa !126
  %1281 = load i32, ptr @flag_tree_ccp, align 4, !tbaa !6
  %1282 = trunc i32 %1281 to i8
  %1283 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 116
  store i8 %1282, ptr %1283, align 2, !tbaa !127
  %1284 = load i32, ptr @flag_tree_ch, align 4, !tbaa !6
  %1285 = trunc i32 %1284 to i8
  %1286 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 117
  store i8 %1285, ptr %1286, align 1, !tbaa !128
  %1287 = load i32, ptr @flag_tree_copy_prop, align 4, !tbaa !6
  %1288 = trunc i32 %1287 to i8
  %1289 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 118
  store i8 %1288, ptr %1289, align 4, !tbaa !129
  %1290 = load i32, ptr @flag_tree_copyrename, align 4, !tbaa !6
  %1291 = trunc i32 %1290 to i8
  %1292 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 119
  store i8 %1291, ptr %1292, align 1, !tbaa !130
  %1293 = load i32, ptr @flag_tree_cselim, align 4, !tbaa !6
  %1294 = trunc i32 %1293 to i8
  %1295 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 120
  store i8 %1294, ptr %1295, align 2, !tbaa !131
  %1296 = load i32, ptr @flag_tree_dce, align 4, !tbaa !6
  %1297 = trunc i32 %1296 to i8
  %1298 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 121
  store i8 %1297, ptr %1298, align 1, !tbaa !132
  %1299 = load i32, ptr @flag_tree_dom, align 4, !tbaa !6
  %1300 = trunc i32 %1299 to i8
  %1301 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 122
  store i8 %1300, ptr %1301, align 4, !tbaa !133
  %1302 = load i32, ptr @flag_tree_dse, align 4, !tbaa !6
  %1303 = trunc i32 %1302 to i8
  %1304 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 123
  store i8 %1303, ptr %1304, align 1, !tbaa !134
  %1305 = load i32, ptr @flag_tree_forwprop, align 4, !tbaa !6
  %1306 = trunc i32 %1305 to i8
  %1307 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 124
  store i8 %1306, ptr %1307, align 2, !tbaa !135
  %1308 = load i32, ptr @flag_tree_fre, align 4, !tbaa !6
  %1309 = trunc i32 %1308 to i8
  %1310 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 125
  store i8 %1309, ptr %1310, align 1, !tbaa !136
  %1311 = load i32, ptr @flag_tree_loop_distribution, align 4, !tbaa !6
  %1312 = trunc i32 %1311 to i8
  %1313 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 126
  store i8 %1312, ptr %1313, align 4, !tbaa !137
  %1314 = load i32, ptr @flag_tree_loop_im, align 4, !tbaa !6
  %1315 = trunc i32 %1314 to i8
  %1316 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 127
  store i8 %1315, ptr %1316, align 1, !tbaa !138
  %1317 = load i32, ptr @flag_tree_loop_ivcanon, align 4, !tbaa !6
  %1318 = trunc i32 %1317 to i8
  %1319 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 128
  store i8 %1318, ptr %1319, align 2, !tbaa !139
  %1320 = load i32, ptr @flag_tree_loop_linear, align 4, !tbaa !6
  %1321 = trunc i32 %1320 to i8
  %1322 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 129
  store i8 %1321, ptr %1322, align 1, !tbaa !140
  %1323 = load i32, ptr @flag_tree_loop_optimize, align 4, !tbaa !6
  %1324 = trunc i32 %1323 to i8
  %1325 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 130
  store i8 %1324, ptr %1325, align 4, !tbaa !141
  %1326 = load i32, ptr @flag_tree_live_range_split, align 4, !tbaa !6
  %1327 = trunc i32 %1326 to i8
  %1328 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 131
  store i8 %1327, ptr %1328, align 1, !tbaa !142
  %1329 = load i32, ptr @flag_tree_phiprop, align 4, !tbaa !6
  %1330 = trunc i32 %1329 to i8
  %1331 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 132
  store i8 %1330, ptr %1331, align 2, !tbaa !143
  %1332 = load i32, ptr @flag_tree_pre, align 4, !tbaa !6
  %1333 = trunc i32 %1332 to i8
  %1334 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 133
  store i8 %1333, ptr %1334, align 1, !tbaa !144
  %1335 = load i32, ptr @flag_tree_pta, align 4, !tbaa !6
  %1336 = trunc i32 %1335 to i8
  %1337 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 134
  store i8 %1336, ptr %1337, align 4, !tbaa !145
  %1338 = load i32, ptr @flag_tree_reassoc, align 4, !tbaa !6
  %1339 = trunc i32 %1338 to i8
  %1340 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 135
  store i8 %1339, ptr %1340, align 1, !tbaa !146
  %1341 = load i32, ptr @flag_tree_scev_cprop, align 4, !tbaa !6
  %1342 = trunc i32 %1341 to i8
  %1343 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 136
  store i8 %1342, ptr %1343, align 2, !tbaa !147
  %1344 = load i32, ptr @flag_tree_sink, align 4, !tbaa !6
  %1345 = trunc i32 %1344 to i8
  %1346 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 137
  store i8 %1345, ptr %1346, align 1, !tbaa !148
  %1347 = load i32, ptr @flag_tree_slp_vectorize, align 4, !tbaa !6
  %1348 = trunc i32 %1347 to i8
  %1349 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 138
  store i8 %1348, ptr %1349, align 4, !tbaa !149
  %1350 = load i32, ptr @flag_tree_sra, align 4, !tbaa !6
  %1351 = trunc i32 %1350 to i8
  %1352 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 139
  store i8 %1351, ptr %1352, align 1, !tbaa !150
  %1353 = load i32, ptr @flag_tree_switch_conversion, align 4, !tbaa !6
  %1354 = trunc i32 %1353 to i8
  %1355 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 140
  store i8 %1354, ptr %1355, align 2, !tbaa !151
  %1356 = load i32, ptr @flag_tree_ter, align 4, !tbaa !6
  %1357 = trunc i32 %1356 to i8
  %1358 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 141
  store i8 %1357, ptr %1358, align 1, !tbaa !152
  %1359 = load i32, ptr @flag_tree_vect_loop_version, align 4, !tbaa !6
  %1360 = trunc i32 %1359 to i8
  %1361 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 142
  store i8 %1360, ptr %1361, align 4, !tbaa !153
  %1362 = load i32, ptr @flag_tree_vectorize, align 4, !tbaa !6
  %1363 = trunc i32 %1362 to i8
  %1364 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 143
  store i8 %1363, ptr %1364, align 1, !tbaa !154
  %1365 = load i32, ptr @flag_tree_vrp, align 4, !tbaa !6
  %1366 = trunc i32 %1365 to i8
  %1367 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 144
  store i8 %1366, ptr %1367, align 2, !tbaa !155
  %1368 = load i32, ptr @flag_unit_at_a_time, align 4, !tbaa !6
  %1369 = trunc i32 %1368 to i8
  %1370 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 145
  store i8 %1369, ptr %1370, align 1, !tbaa !156
  %1371 = load i32, ptr @flag_unroll_all_loops, align 4, !tbaa !6
  %1372 = trunc i32 %1371 to i8
  %1373 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 146
  store i8 %1372, ptr %1373, align 4, !tbaa !157
  %1374 = load i32, ptr @flag_unroll_loops, align 4, !tbaa !6
  %1375 = trunc i32 %1374 to i8
  %1376 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 147
  store i8 %1375, ptr %1376, align 1, !tbaa !158
  %1377 = load i32, ptr @flag_unsafe_loop_optimizations, align 4, !tbaa !6
  %1378 = trunc i32 %1377 to i8
  %1379 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 148
  store i8 %1378, ptr %1379, align 2, !tbaa !159
  %1380 = load i32, ptr @flag_unsafe_math_optimizations, align 4, !tbaa !6
  %1381 = trunc i32 %1380 to i8
  %1382 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 149
  store i8 %1381, ptr %1382, align 1, !tbaa !160
  %1383 = load i32, ptr @flag_unswitch_loops, align 4, !tbaa !6
  %1384 = trunc i32 %1383 to i8
  %1385 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 150
  store i8 %1384, ptr %1385, align 4, !tbaa !161
  %1386 = load i32, ptr @flag_unwind_tables, align 4, !tbaa !6
  %1387 = trunc i32 %1386 to i8
  %1388 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 151
  store i8 %1387, ptr %1388, align 1, !tbaa !162
  %1389 = load i32, ptr @flag_var_tracking, align 4, !tbaa !6
  %1390 = trunc i32 %1389 to i8
  %1391 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 152
  store i8 %1390, ptr %1391, align 2, !tbaa !163
  %1392 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  %1393 = trunc i32 %1392 to i8
  %1394 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 153
  store i8 %1393, ptr %1394, align 1, !tbaa !164
  %1395 = load i32, ptr @flag_var_tracking_assignments_toggle, align 4, !tbaa !6
  %1396 = trunc i32 %1395 to i8
  %1397 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 154
  store i8 %1396, ptr %1397, align 4, !tbaa !165
  %1398 = load i32, ptr @flag_var_tracking_uninit, align 4, !tbaa !6
  %1399 = trunc i32 %1398 to i8
  %1400 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 155
  store i8 %1399, ptr %1400, align 1, !tbaa !166
  %1401 = load i32, ptr @flag_variable_expansion_in_unroller, align 4, !tbaa !6
  %1402 = trunc i32 %1401 to i8
  %1403 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 156
  store i8 %1402, ptr %1403, align 2, !tbaa !167
  %1404 = load i32, ptr @flag_vect_cost_model, align 4, !tbaa !6
  %1405 = trunc i32 %1404 to i8
  %1406 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 157
  store i8 %1405, ptr %1406, align 1, !tbaa !168
  %1407 = load i32, ptr @flag_value_profile_transformations, align 4, !tbaa !6
  %1408 = trunc i32 %1407 to i8
  %1409 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 158
  store i8 %1408, ptr %1409, align 4, !tbaa !169
  %1410 = load i32, ptr @flag_web, align 4, !tbaa !6
  %1411 = trunc i32 %1410 to i8
  %1412 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 159
  store i8 %1411, ptr %1412, align 1, !tbaa !170
  %1413 = load i32, ptr @flag_whole_program, align 4, !tbaa !6
  %1414 = trunc i32 %1413 to i8
  %1415 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 160
  store i8 %1414, ptr %1415, align 2, !tbaa !171
  %1416 = load i32, ptr @flag_wpa, align 4, !tbaa !6
  %1417 = trunc i32 %1416 to i8
  %1418 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 161
  store i8 %1417, ptr %1418, align 1, !tbaa !172
  %1419 = load i32, ptr @flag_wrapv, align 4, !tbaa !6
  %1420 = trunc i32 %1419 to i8
  %1421 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 162
  store i8 %1420, ptr %1421, align 4, !tbaa !173
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cl_optimization_restore(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 4, !tbaa !10
  store i32 %2, ptr @align_functions, align 4, !tbaa !6
  %3 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !12
  store i32 %4, ptr @align_jumps, align 4, !tbaa !6
  %5 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !13
  store i32 %6, ptr @align_labels, align 4, !tbaa !6
  %7 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !14
  store i32 %8, ptr @align_loops, align 4, !tbaa !6
  %9 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !15
  store i32 %10, ptr @flag_sched_stalled_insns, align 4, !tbaa !6
  %11 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !16
  store i32 %12, ptr @flag_sched_stalled_insns_dep, align 4, !tbaa !6
  %13 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 6
  %14 = load i8, ptr %13, align 4, !tbaa !17
  %15 = zext i8 %14 to i32
  store i32 %15, ptr @optimize, align 4, !tbaa !6
  %16 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 7
  %17 = load i8, ptr %16, align 1, !tbaa !18
  %18 = zext i8 %17 to i32
  store i32 %18, ptr @optimize_size, align 4, !tbaa !6
  %19 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 8
  %20 = load i8, ptr %19, align 2, !tbaa !19
  %21 = sext i8 %20 to i32
  store i32 %21, ptr @flag_argument_noalias, align 4, !tbaa !6
  %22 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 9
  %23 = load i8, ptr %22, align 1, !tbaa !20
  %24 = sext i8 %23 to i32
  store i32 %24, ptr @flag_asynchronous_unwind_tables, align 4, !tbaa !6
  %25 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 10
  %26 = load i8, ptr %25, align 4, !tbaa !21
  %27 = sext i8 %26 to i32
  store i32 %27, ptr @flag_branch_on_count_reg, align 4, !tbaa !6
  %28 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 11
  %29 = load i8, ptr %28, align 1, !tbaa !22
  %30 = sext i8 %29 to i32
  store i32 %30, ptr @flag_branch_probabilities, align 4, !tbaa !6
  %31 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 12
  %32 = load i8, ptr %31, align 2, !tbaa !23
  %33 = sext i8 %32 to i32
  store i32 %33, ptr @flag_branch_target_load_optimize, align 4, !tbaa !6
  %34 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 13
  %35 = load i8, ptr %34, align 1, !tbaa !24
  %36 = sext i8 %35 to i32
  store i32 %36, ptr @flag_branch_target_load_optimize2, align 4, !tbaa !6
  %37 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 14
  %38 = load i8, ptr %37, align 4, !tbaa !25
  %39 = sext i8 %38 to i32
  store i32 %39, ptr @flag_btr_bb_exclusive, align 4, !tbaa !6
  %40 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 15
  %41 = load i8, ptr %40, align 1, !tbaa !26
  %42 = sext i8 %41 to i32
  store i32 %42, ptr @flag_caller_saves, align 4, !tbaa !6
  %43 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 16
  %44 = load i8, ptr %43, align 2, !tbaa !27
  %45 = sext i8 %44 to i32
  store i32 %45, ptr @flag_no_common, align 4, !tbaa !6
  %46 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 17
  %47 = load i8, ptr %46, align 1, !tbaa !28
  %48 = sext i8 %47 to i32
  store i32 %48, ptr @flag_conserve_stack, align 4, !tbaa !6
  %49 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 18
  %50 = load i8, ptr %49, align 4, !tbaa !29
  %51 = sext i8 %50 to i32
  store i32 %51, ptr @flag_cprop_registers, align 4, !tbaa !6
  %52 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 19
  %53 = load i8, ptr %52, align 1, !tbaa !30
  %54 = sext i8 %53 to i32
  store i32 %54, ptr @flag_crossjumping, align 4, !tbaa !6
  %55 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 20
  %56 = load i8, ptr %55, align 2, !tbaa !31
  %57 = sext i8 %56 to i32
  store i32 %57, ptr @flag_cse_follow_jumps, align 4, !tbaa !6
  %58 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 21
  %59 = load i8, ptr %58, align 1, !tbaa !32
  %60 = sext i8 %59 to i32
  store i32 %60, ptr @flag_cx_fortran_rules, align 4, !tbaa !6
  %61 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 22
  %62 = load i8, ptr %61, align 4, !tbaa !33
  %63 = sext i8 %62 to i32
  store i32 %63, ptr @flag_cx_limited_range, align 4, !tbaa !6
  %64 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 23
  %65 = load i8, ptr %64, align 1, !tbaa !34
  %66 = sext i8 %65 to i32
  store i32 %66, ptr @flag_data_sections, align 4, !tbaa !6
  %67 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 24
  %68 = load i8, ptr %67, align 2, !tbaa !35
  %69 = sext i8 %68 to i32
  store i32 %69, ptr @flag_dce, align 4, !tbaa !6
  %70 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 25
  %71 = load i8, ptr %70, align 1, !tbaa !36
  %72 = sext i8 %71 to i32
  store i32 %72, ptr @flag_defer_pop, align 4, !tbaa !6
  %73 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 26
  %74 = load i8, ptr %73, align 4, !tbaa !37
  %75 = sext i8 %74 to i32
  store i32 %75, ptr @flag_delayed_branch, align 4, !tbaa !6
  %76 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 27
  %77 = load i8, ptr %76, align 1, !tbaa !38
  %78 = sext i8 %77 to i32
  store i32 %78, ptr @flag_delete_null_pointer_checks, align 4, !tbaa !6
  %79 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 28
  %80 = load i8, ptr %79, align 2, !tbaa !39
  %81 = sext i8 %80 to i32
  store i32 %81, ptr @flag_dse, align 4, !tbaa !6
  %82 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 29
  %83 = load i8, ptr %82, align 1, !tbaa !40
  %84 = sext i8 %83 to i32
  store i32 %84, ptr @flag_early_inlining, align 4, !tbaa !6
  %85 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 30
  %86 = load i8, ptr %85, align 4, !tbaa !41
  %87 = sext i8 %86 to i32
  store i32 %87, ptr @flag_exceptions, align 4, !tbaa !6
  %88 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 31
  %89 = load i8, ptr %88, align 1, !tbaa !42
  %90 = sext i8 %89 to i32
  store i32 %90, ptr @flag_expensive_optimizations, align 4, !tbaa !6
  %91 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 32
  %92 = load i8, ptr %91, align 2, !tbaa !43
  %93 = sext i8 %92 to i32
  store i32 %93, ptr @flag_finite_math_only, align 4, !tbaa !6
  %94 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 33
  %95 = load i8, ptr %94, align 1, !tbaa !44
  %96 = sext i8 %95 to i32
  store i32 %96, ptr @flag_float_store, align 4, !tbaa !6
  %97 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 34
  %98 = load i8, ptr %97, align 4, !tbaa !45
  %99 = sext i8 %98 to i32
  store i32 %99, ptr @flag_forward_propagate, align 4, !tbaa !6
  %100 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 35
  %101 = load i8, ptr %100, align 1, !tbaa !46
  %102 = sext i8 %101 to i32
  store i32 %102, ptr @flag_gcse, align 4, !tbaa !6
  %103 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 36
  %104 = load i8, ptr %103, align 2, !tbaa !47
  %105 = sext i8 %104 to i32
  store i32 %105, ptr @flag_gcse_after_reload, align 4, !tbaa !6
  %106 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 37
  %107 = load i8, ptr %106, align 1, !tbaa !48
  %108 = sext i8 %107 to i32
  store i32 %108, ptr @flag_gcse_las, align 4, !tbaa !6
  %109 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 38
  %110 = load i8, ptr %109, align 4, !tbaa !49
  %111 = sext i8 %110 to i32
  store i32 %111, ptr @flag_gcse_lm, align 4, !tbaa !6
  %112 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 39
  %113 = load i8, ptr %112, align 1, !tbaa !50
  %114 = sext i8 %113 to i32
  store i32 %114, ptr @flag_gcse_sm, align 4, !tbaa !6
  %115 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 40
  %116 = load i8, ptr %115, align 2, !tbaa !51
  %117 = sext i8 %116 to i32
  store i32 %117, ptr @flag_graphite_identity, align 4, !tbaa !6
  %118 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 41
  %119 = load i8, ptr %118, align 1, !tbaa !52
  %120 = sext i8 %119 to i32
  store i32 %120, ptr @flag_guess_branch_prob, align 4, !tbaa !6
  %121 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 42
  %122 = load i8, ptr %121, align 4, !tbaa !53
  %123 = sext i8 %122 to i32
  store i32 %123, ptr @flag_if_conversion, align 4, !tbaa !6
  %124 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 43
  %125 = load i8, ptr %124, align 1, !tbaa !54
  %126 = sext i8 %125 to i32
  store i32 %126, ptr @flag_if_conversion2, align 4, !tbaa !6
  %127 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 44
  %128 = load i8, ptr %127, align 2, !tbaa !55
  %129 = sext i8 %128 to i32
  store i32 %129, ptr @flag_inline_functions, align 4, !tbaa !6
  %130 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 45
  %131 = load i8, ptr %130, align 1, !tbaa !56
  %132 = sext i8 %131 to i32
  store i32 %132, ptr @flag_inline_functions_called_once, align 4, !tbaa !6
  %133 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 46
  %134 = load i8, ptr %133, align 4, !tbaa !57
  %135 = sext i8 %134 to i32
  store i32 %135, ptr @flag_inline_small_functions, align 4, !tbaa !6
  %136 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 47
  %137 = load i8, ptr %136, align 1, !tbaa !58
  %138 = sext i8 %137 to i32
  store i32 %138, ptr @flag_ipa_cp, align 4, !tbaa !6
  %139 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 48
  %140 = load i8, ptr %139, align 2, !tbaa !59
  %141 = sext i8 %140 to i32
  store i32 %141, ptr @flag_ipa_cp_clone, align 4, !tbaa !6
  %142 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 49
  %143 = load i8, ptr %142, align 1, !tbaa !60
  %144 = sext i8 %143 to i32
  store i32 %144, ptr @flag_ipa_matrix_reorg, align 4, !tbaa !6
  %145 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 50
  %146 = load i8, ptr %145, align 4, !tbaa !61
  %147 = sext i8 %146 to i32
  store i32 %147, ptr @flag_ipa_pta, align 4, !tbaa !6
  %148 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 51
  %149 = load i8, ptr %148, align 1, !tbaa !62
  %150 = sext i8 %149 to i32
  store i32 %150, ptr @flag_ipa_pure_const, align 4, !tbaa !6
  %151 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 52
  %152 = load i8, ptr %151, align 2, !tbaa !63
  %153 = sext i8 %152 to i32
  store i32 %153, ptr @flag_ipa_reference, align 4, !tbaa !6
  %154 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 53
  %155 = load i8, ptr %154, align 1, !tbaa !64
  %156 = sext i8 %155 to i32
  store i32 %156, ptr @flag_ipa_sra, align 4, !tbaa !6
  %157 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 54
  %158 = load i8, ptr %157, align 4, !tbaa !65
  %159 = sext i8 %158 to i32
  store i32 %159, ptr @flag_ipa_type_escape, align 4, !tbaa !6
  %160 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 55
  %161 = load i8, ptr %160, align 1, !tbaa !66
  %162 = sext i8 %161 to i32
  store i32 %162, ptr @flag_ivopts, align 4, !tbaa !6
  %163 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 56
  %164 = load i8, ptr %163, align 2, !tbaa !67
  %165 = sext i8 %164 to i32
  store i32 %165, ptr @flag_jump_tables, align 4, !tbaa !6
  %166 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 57
  %167 = load i8, ptr %166, align 1, !tbaa !68
  %168 = sext i8 %167 to i32
  store i32 %168, ptr @flag_loop_block, align 4, !tbaa !6
  %169 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 58
  %170 = load i8, ptr %169, align 4, !tbaa !69
  %171 = sext i8 %170 to i32
  store i32 %171, ptr @flag_loop_interchange, align 4, !tbaa !6
  %172 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 59
  %173 = load i8, ptr %172, align 1, !tbaa !70
  %174 = sext i8 %173 to i32
  store i32 %174, ptr @flag_loop_parallelize_all, align 4, !tbaa !6
  %175 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 60
  %176 = load i8, ptr %175, align 2, !tbaa !71
  %177 = sext i8 %176 to i32
  store i32 %177, ptr @flag_loop_strip_mine, align 4, !tbaa !6
  %178 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 61
  %179 = load i8, ptr %178, align 1, !tbaa !72
  %180 = sext i8 %179 to i32
  store i32 %180, ptr @flag_lto_report, align 4, !tbaa !6
  %181 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 62
  %182 = load i8, ptr %181, align 4, !tbaa !73
  %183 = sext i8 %182 to i32
  store i32 %183, ptr @flag_ltrans, align 4, !tbaa !6
  %184 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 63
  %185 = load i8, ptr %184, align 1, !tbaa !74
  %186 = sext i8 %185 to i32
  store i32 %186, ptr @flag_errno_math, align 4, !tbaa !6
  %187 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 64
  %188 = load i8, ptr %187, align 2, !tbaa !75
  %189 = sext i8 %188 to i32
  store i32 %189, ptr @flag_merge_constants, align 4, !tbaa !6
  %190 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 65
  %191 = load i8, ptr %190, align 1, !tbaa !76
  %192 = sext i8 %191 to i32
  store i32 %192, ptr @flag_modulo_sched, align 4, !tbaa !6
  %193 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 66
  %194 = load i8, ptr %193, align 4, !tbaa !77
  %195 = sext i8 %194 to i32
  store i32 %195, ptr @flag_move_loop_invariants, align 4, !tbaa !6
  %196 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 67
  %197 = load i8, ptr %196, align 1, !tbaa !78
  %198 = sext i8 %197 to i32
  store i32 %198, ptr @flag_non_call_exceptions, align 4, !tbaa !6
  %199 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 68
  %200 = load i8, ptr %199, align 2, !tbaa !79
  %201 = sext i8 %200 to i32
  store i32 %201, ptr @flag_omit_frame_pointer, align 4, !tbaa !6
  %202 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 69
  %203 = load i8, ptr %202, align 1, !tbaa !80
  %204 = sext i8 %203 to i32
  store i32 %204, ptr @flag_regmove, align 4, !tbaa !6
  %205 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 70
  %206 = load i8, ptr %205, align 4, !tbaa !81
  %207 = sext i8 %206 to i32
  store i32 %207, ptr @flag_optimize_sibling_calls, align 4, !tbaa !6
  %208 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 71
  %209 = load i8, ptr %208, align 1, !tbaa !82
  %210 = sext i8 %209 to i32
  store i32 %210, ptr @flag_pack_struct, align 4, !tbaa !6
  %211 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 72
  %212 = load i8, ptr %211, align 2, !tbaa !83
  %213 = sext i8 %212 to i32
  store i32 %213, ptr @flag_peel_loops, align 4, !tbaa !6
  %214 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 73
  %215 = load i8, ptr %214, align 1, !tbaa !84
  %216 = sext i8 %215 to i32
  store i32 %216, ptr @flag_no_peephole, align 4, !tbaa !6
  %217 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 74
  %218 = load i8, ptr %217, align 4, !tbaa !85
  %219 = sext i8 %218 to i32
  store i32 %219, ptr @flag_peephole2, align 4, !tbaa !6
  %220 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 75
  %221 = load i8, ptr %220, align 1, !tbaa !86
  %222 = sext i8 %221 to i32
  store i32 %222, ptr @flag_predictive_commoning, align 4, !tbaa !6
  %223 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 76
  %224 = load i8, ptr %223, align 2, !tbaa !87
  %225 = sext i8 %224 to i32
  store i32 %225, ptr @flag_prefetch_loop_arrays, align 4, !tbaa !6
  %226 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 77
  %227 = load i8, ptr %226, align 1, !tbaa !88
  %228 = sext i8 %227 to i32
  store i32 %228, ptr @flag_pcc_struct_return, align 4, !tbaa !6
  %229 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 78
  %230 = load i8, ptr %229, align 4, !tbaa !89
  %231 = sext i8 %230 to i32
  store i32 %231, ptr @flag_rename_registers, align 4, !tbaa !6
  %232 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 79
  %233 = load i8, ptr %232, align 1, !tbaa !90
  %234 = sext i8 %233 to i32
  store i32 %234, ptr @flag_reorder_blocks, align 4, !tbaa !6
  %235 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 80
  %236 = load i8, ptr %235, align 2, !tbaa !91
  %237 = sext i8 %236 to i32
  store i32 %237, ptr @flag_reorder_blocks_and_partition, align 4, !tbaa !6
  %238 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 81
  %239 = load i8, ptr %238, align 1, !tbaa !92
  %240 = sext i8 %239 to i32
  store i32 %240, ptr @flag_reorder_functions, align 4, !tbaa !6
  %241 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 82
  %242 = load i8, ptr %241, align 4, !tbaa !93
  %243 = sext i8 %242 to i32
  store i32 %243, ptr @flag_rerun_cse_after_loop, align 4, !tbaa !6
  %244 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 83
  %245 = load i8, ptr %244, align 1, !tbaa !94
  %246 = sext i8 %245 to i32
  store i32 %246, ptr @flag_resched_modulo_sched, align 4, !tbaa !6
  %247 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 84
  %248 = load i8, ptr %247, align 2, !tbaa !95
  %249 = sext i8 %248 to i32
  store i32 %249, ptr @flag_rounding_math, align 4, !tbaa !6
  %250 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 85
  %251 = load i8, ptr %250, align 1, !tbaa !96
  %252 = sext i8 %251 to i32
  store i32 %252, ptr @flag_sched_critical_path_heuristic, align 4, !tbaa !6
  %253 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 86
  %254 = load i8, ptr %253, align 4, !tbaa !97
  %255 = sext i8 %254 to i32
  store i32 %255, ptr @flag_sched_dep_count_heuristic, align 4, !tbaa !6
  %256 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 87
  %257 = load i8, ptr %256, align 1, !tbaa !98
  %258 = sext i8 %257 to i32
  store i32 %258, ptr @flag_sched_group_heuristic, align 4, !tbaa !6
  %259 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 88
  %260 = load i8, ptr %259, align 2, !tbaa !99
  %261 = sext i8 %260 to i32
  store i32 %261, ptr @flag_schedule_interblock, align 4, !tbaa !6
  %262 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 89
  %263 = load i8, ptr %262, align 1, !tbaa !100
  %264 = sext i8 %263 to i32
  store i32 %264, ptr @flag_sched_last_insn_heuristic, align 4, !tbaa !6
  %265 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 90
  %266 = load i8, ptr %265, align 4, !tbaa !101
  %267 = sext i8 %266 to i32
  store i32 %267, ptr @flag_sched_pressure, align 4, !tbaa !6
  %268 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 91
  %269 = load i8, ptr %268, align 1, !tbaa !102
  %270 = sext i8 %269 to i32
  store i32 %270, ptr @flag_sched_rank_heuristic, align 4, !tbaa !6
  %271 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 92
  %272 = load i8, ptr %271, align 2, !tbaa !103
  %273 = sext i8 %272 to i32
  store i32 %273, ptr @flag_schedule_speculative, align 4, !tbaa !6
  %274 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 93
  %275 = load i8, ptr %274, align 1, !tbaa !104
  %276 = sext i8 %275 to i32
  store i32 %276, ptr @flag_sched_spec_insn_heuristic, align 4, !tbaa !6
  %277 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 94
  %278 = load i8, ptr %277, align 4, !tbaa !105
  %279 = sext i8 %278 to i32
  store i32 %279, ptr @flag_schedule_speculative_load, align 4, !tbaa !6
  %280 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 95
  %281 = load i8, ptr %280, align 1, !tbaa !106
  %282 = sext i8 %281 to i32
  store i32 %282, ptr @flag_schedule_speculative_load_dangerous, align 4, !tbaa !6
  %283 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 96
  %284 = load i8, ptr %283, align 2, !tbaa !107
  %285 = sext i8 %284 to i32
  store i32 %285, ptr @flag_sched2_use_superblocks, align 4, !tbaa !6
  %286 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 97
  %287 = load i8, ptr %286, align 1, !tbaa !108
  %288 = sext i8 %287 to i32
  store i32 %288, ptr @flag_schedule_insns, align 4, !tbaa !6
  %289 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 98
  %290 = load i8, ptr %289, align 4, !tbaa !109
  %291 = sext i8 %290 to i32
  store i32 %291, ptr @flag_schedule_insns_after_reload, align 4, !tbaa !6
  %292 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 99
  %293 = load i8, ptr %292, align 1, !tbaa !110
  %294 = sext i8 %293 to i32
  store i32 %294, ptr @flag_section_anchors, align 4, !tbaa !6
  %295 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 100
  %296 = load i8, ptr %295, align 2, !tbaa !111
  %297 = sext i8 %296 to i32
  store i32 %297, ptr @flag_sel_sched_pipelining, align 4, !tbaa !6
  %298 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 101
  %299 = load i8, ptr %298, align 1, !tbaa !112
  %300 = sext i8 %299 to i32
  store i32 %300, ptr @flag_sel_sched_pipelining_outer_loops, align 4, !tbaa !6
  %301 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 102
  %302 = load i8, ptr %301, align 4, !tbaa !113
  %303 = sext i8 %302 to i32
  store i32 %303, ptr @flag_sel_sched_reschedule_pipelined, align 4, !tbaa !6
  %304 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 103
  %305 = load i8, ptr %304, align 1, !tbaa !114
  %306 = sext i8 %305 to i32
  store i32 %306, ptr @flag_selective_scheduling, align 4, !tbaa !6
  %307 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 104
  %308 = load i8, ptr %307, align 2, !tbaa !115
  %309 = sext i8 %308 to i32
  store i32 %309, ptr @flag_selective_scheduling2, align 4, !tbaa !6
  %310 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 105
  %311 = load i8, ptr %310, align 1, !tbaa !116
  %312 = sext i8 %311 to i32
  store i32 %312, ptr @flag_signaling_nans, align 4, !tbaa !6
  %313 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 106
  %314 = load i8, ptr %313, align 4, !tbaa !117
  %315 = sext i8 %314 to i32
  store i32 %315, ptr @flag_signed_zeros, align 4, !tbaa !6
  %316 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 107
  %317 = load i8, ptr %316, align 1, !tbaa !118
  %318 = sext i8 %317 to i32
  store i32 %318, ptr @flag_single_precision_constant, align 4, !tbaa !6
  %319 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 108
  %320 = load i8, ptr %319, align 2, !tbaa !119
  %321 = sext i8 %320 to i32
  store i32 %321, ptr @flag_split_ivs_in_unroller, align 4, !tbaa !6
  %322 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 109
  %323 = load i8, ptr %322, align 1, !tbaa !120
  %324 = sext i8 %323 to i32
  store i32 %324, ptr @flag_split_wide_types, align 4, !tbaa !6
  %325 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 110
  %326 = load i8, ptr %325, align 4, !tbaa !121
  %327 = sext i8 %326 to i32
  store i32 %327, ptr @flag_strict_aliasing, align 4, !tbaa !6
  %328 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 111
  %329 = load i8, ptr %328, align 1, !tbaa !122
  %330 = sext i8 %329 to i32
  store i32 %330, ptr @flag_thread_jumps, align 4, !tbaa !6
  %331 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 112
  %332 = load i8, ptr %331, align 2, !tbaa !123
  %333 = sext i8 %332 to i32
  store i32 %333, ptr @flag_toplevel_reorder, align 4, !tbaa !6
  %334 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 113
  %335 = load i8, ptr %334, align 1, !tbaa !124
  %336 = sext i8 %335 to i32
  store i32 %336, ptr @flag_trapping_math, align 4, !tbaa !6
  %337 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 114
  %338 = load i8, ptr %337, align 4, !tbaa !125
  %339 = sext i8 %338 to i32
  store i32 %339, ptr @flag_trapv, align 4, !tbaa !6
  %340 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 115
  %341 = load i8, ptr %340, align 1, !tbaa !126
  %342 = sext i8 %341 to i32
  store i32 %342, ptr @flag_tree_builtin_call_dce, align 4, !tbaa !6
  %343 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 116
  %344 = load i8, ptr %343, align 2, !tbaa !127
  %345 = sext i8 %344 to i32
  store i32 %345, ptr @flag_tree_ccp, align 4, !tbaa !6
  %346 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 117
  %347 = load i8, ptr %346, align 1, !tbaa !128
  %348 = sext i8 %347 to i32
  store i32 %348, ptr @flag_tree_ch, align 4, !tbaa !6
  %349 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 118
  %350 = load i8, ptr %349, align 4, !tbaa !129
  %351 = sext i8 %350 to i32
  store i32 %351, ptr @flag_tree_copy_prop, align 4, !tbaa !6
  %352 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 119
  %353 = load i8, ptr %352, align 1, !tbaa !130
  %354 = sext i8 %353 to i32
  store i32 %354, ptr @flag_tree_copyrename, align 4, !tbaa !6
  %355 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 120
  %356 = load i8, ptr %355, align 2, !tbaa !131
  %357 = sext i8 %356 to i32
  store i32 %357, ptr @flag_tree_cselim, align 4, !tbaa !6
  %358 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 121
  %359 = load i8, ptr %358, align 1, !tbaa !132
  %360 = sext i8 %359 to i32
  store i32 %360, ptr @flag_tree_dce, align 4, !tbaa !6
  %361 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 122
  %362 = load i8, ptr %361, align 4, !tbaa !133
  %363 = sext i8 %362 to i32
  store i32 %363, ptr @flag_tree_dom, align 4, !tbaa !6
  %364 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 123
  %365 = load i8, ptr %364, align 1, !tbaa !134
  %366 = sext i8 %365 to i32
  store i32 %366, ptr @flag_tree_dse, align 4, !tbaa !6
  %367 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 124
  %368 = load i8, ptr %367, align 2, !tbaa !135
  %369 = sext i8 %368 to i32
  store i32 %369, ptr @flag_tree_forwprop, align 4, !tbaa !6
  %370 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 125
  %371 = load i8, ptr %370, align 1, !tbaa !136
  %372 = sext i8 %371 to i32
  store i32 %372, ptr @flag_tree_fre, align 4, !tbaa !6
  %373 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 126
  %374 = load i8, ptr %373, align 4, !tbaa !137
  %375 = sext i8 %374 to i32
  store i32 %375, ptr @flag_tree_loop_distribution, align 4, !tbaa !6
  %376 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 127
  %377 = load i8, ptr %376, align 1, !tbaa !138
  %378 = sext i8 %377 to i32
  store i32 %378, ptr @flag_tree_loop_im, align 4, !tbaa !6
  %379 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 128
  %380 = load i8, ptr %379, align 2, !tbaa !139
  %381 = sext i8 %380 to i32
  store i32 %381, ptr @flag_tree_loop_ivcanon, align 4, !tbaa !6
  %382 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 129
  %383 = load i8, ptr %382, align 1, !tbaa !140
  %384 = sext i8 %383 to i32
  store i32 %384, ptr @flag_tree_loop_linear, align 4, !tbaa !6
  %385 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 130
  %386 = load i8, ptr %385, align 4, !tbaa !141
  %387 = sext i8 %386 to i32
  store i32 %387, ptr @flag_tree_loop_optimize, align 4, !tbaa !6
  %388 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 131
  %389 = load i8, ptr %388, align 1, !tbaa !142
  %390 = sext i8 %389 to i32
  store i32 %390, ptr @flag_tree_live_range_split, align 4, !tbaa !6
  %391 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 132
  %392 = load i8, ptr %391, align 2, !tbaa !143
  %393 = sext i8 %392 to i32
  store i32 %393, ptr @flag_tree_phiprop, align 4, !tbaa !6
  %394 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 133
  %395 = load i8, ptr %394, align 1, !tbaa !144
  %396 = sext i8 %395 to i32
  store i32 %396, ptr @flag_tree_pre, align 4, !tbaa !6
  %397 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 134
  %398 = load i8, ptr %397, align 4, !tbaa !145
  %399 = sext i8 %398 to i32
  store i32 %399, ptr @flag_tree_pta, align 4, !tbaa !6
  %400 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 135
  %401 = load i8, ptr %400, align 1, !tbaa !146
  %402 = sext i8 %401 to i32
  store i32 %402, ptr @flag_tree_reassoc, align 4, !tbaa !6
  %403 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 136
  %404 = load i8, ptr %403, align 2, !tbaa !147
  %405 = sext i8 %404 to i32
  store i32 %405, ptr @flag_tree_scev_cprop, align 4, !tbaa !6
  %406 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 137
  %407 = load i8, ptr %406, align 1, !tbaa !148
  %408 = sext i8 %407 to i32
  store i32 %408, ptr @flag_tree_sink, align 4, !tbaa !6
  %409 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 138
  %410 = load i8, ptr %409, align 4, !tbaa !149
  %411 = sext i8 %410 to i32
  store i32 %411, ptr @flag_tree_slp_vectorize, align 4, !tbaa !6
  %412 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 139
  %413 = load i8, ptr %412, align 1, !tbaa !150
  %414 = sext i8 %413 to i32
  store i32 %414, ptr @flag_tree_sra, align 4, !tbaa !6
  %415 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 140
  %416 = load i8, ptr %415, align 2, !tbaa !151
  %417 = sext i8 %416 to i32
  store i32 %417, ptr @flag_tree_switch_conversion, align 4, !tbaa !6
  %418 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 141
  %419 = load i8, ptr %418, align 1, !tbaa !152
  %420 = sext i8 %419 to i32
  store i32 %420, ptr @flag_tree_ter, align 4, !tbaa !6
  %421 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 142
  %422 = load i8, ptr %421, align 4, !tbaa !153
  %423 = sext i8 %422 to i32
  store i32 %423, ptr @flag_tree_vect_loop_version, align 4, !tbaa !6
  %424 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 143
  %425 = load i8, ptr %424, align 1, !tbaa !154
  %426 = sext i8 %425 to i32
  store i32 %426, ptr @flag_tree_vectorize, align 4, !tbaa !6
  %427 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 144
  %428 = load i8, ptr %427, align 2, !tbaa !155
  %429 = sext i8 %428 to i32
  store i32 %429, ptr @flag_tree_vrp, align 4, !tbaa !6
  %430 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 145
  %431 = load i8, ptr %430, align 1, !tbaa !156
  %432 = sext i8 %431 to i32
  store i32 %432, ptr @flag_unit_at_a_time, align 4, !tbaa !6
  %433 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 146
  %434 = load i8, ptr %433, align 4, !tbaa !157
  %435 = sext i8 %434 to i32
  store i32 %435, ptr @flag_unroll_all_loops, align 4, !tbaa !6
  %436 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 147
  %437 = load i8, ptr %436, align 1, !tbaa !158
  %438 = sext i8 %437 to i32
  store i32 %438, ptr @flag_unroll_loops, align 4, !tbaa !6
  %439 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 148
  %440 = load i8, ptr %439, align 2, !tbaa !159
  %441 = sext i8 %440 to i32
  store i32 %441, ptr @flag_unsafe_loop_optimizations, align 4, !tbaa !6
  %442 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 149
  %443 = load i8, ptr %442, align 1, !tbaa !160
  %444 = sext i8 %443 to i32
  store i32 %444, ptr @flag_unsafe_math_optimizations, align 4, !tbaa !6
  %445 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 150
  %446 = load i8, ptr %445, align 4, !tbaa !161
  %447 = sext i8 %446 to i32
  store i32 %447, ptr @flag_unswitch_loops, align 4, !tbaa !6
  %448 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 151
  %449 = load i8, ptr %448, align 1, !tbaa !162
  %450 = sext i8 %449 to i32
  store i32 %450, ptr @flag_unwind_tables, align 4, !tbaa !6
  %451 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 152
  %452 = load i8, ptr %451, align 2, !tbaa !163
  %453 = sext i8 %452 to i32
  store i32 %453, ptr @flag_var_tracking, align 4, !tbaa !6
  %454 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 153
  %455 = load i8, ptr %454, align 1, !tbaa !164
  %456 = sext i8 %455 to i32
  store i32 %456, ptr @flag_var_tracking_assignments, align 4, !tbaa !6
  %457 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 154
  %458 = load i8, ptr %457, align 4, !tbaa !165
  %459 = sext i8 %458 to i32
  store i32 %459, ptr @flag_var_tracking_assignments_toggle, align 4, !tbaa !6
  %460 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 155
  %461 = load i8, ptr %460, align 1, !tbaa !166
  %462 = sext i8 %461 to i32
  store i32 %462, ptr @flag_var_tracking_uninit, align 4, !tbaa !6
  %463 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 156
  %464 = load i8, ptr %463, align 2, !tbaa !167
  %465 = sext i8 %464 to i32
  store i32 %465, ptr @flag_variable_expansion_in_unroller, align 4, !tbaa !6
  %466 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 157
  %467 = load i8, ptr %466, align 1, !tbaa !168
  %468 = sext i8 %467 to i32
  store i32 %468, ptr @flag_vect_cost_model, align 4, !tbaa !6
  %469 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 158
  %470 = load i8, ptr %469, align 4, !tbaa !169
  %471 = sext i8 %470 to i32
  store i32 %471, ptr @flag_value_profile_transformations, align 4, !tbaa !6
  %472 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 159
  %473 = load i8, ptr %472, align 1, !tbaa !170
  %474 = sext i8 %473 to i32
  store i32 %474, ptr @flag_web, align 4, !tbaa !6
  %475 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 160
  %476 = load i8, ptr %475, align 2, !tbaa !171
  %477 = sext i8 %476 to i32
  store i32 %477, ptr @flag_whole_program, align 4, !tbaa !6
  %478 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 161
  %479 = load i8, ptr %478, align 1, !tbaa !172
  %480 = sext i8 %479 to i32
  store i32 %480, ptr @flag_wpa, align 4, !tbaa !6
  %481 = getelementptr inbounds %struct.cl_optimization, ptr %0, i64 0, i32 162
  %482 = load i8, ptr %481, align 4, !tbaa !173
  %483 = sext i8 %482 to i32
  store i32 %483, ptr @flag_wrapv, align 4, !tbaa !6
  %484 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 4), align 8, !tbaa !174
  tail call void %484() #4
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @cl_optimization_print(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) local_unnamed_addr #2 {
  %4 = tail call i32 @fputs(ptr noundef nonnull @.str.1612, ptr noundef %0) #5
  %5 = load i32, ptr %2, align 4, !tbaa !10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1615, i32 noundef %5) #5
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !12
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1616, i32 noundef %11) #5
  br label %15

15:                                               ; preds = %13, %9
  %16 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !13
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1617, i32 noundef %17) #5
  br label %21

21:                                               ; preds = %19, %15
  %22 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !14
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1618, i32 noundef %23) #5
  br label %27

27:                                               ; preds = %25, %21
  %28 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 4
  %29 = load i32, ptr %28, align 4, !tbaa !15
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1619, i32 noundef %29) #5
  br label %33

33:                                               ; preds = %31, %27
  %34 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 5
  %35 = load i32, ptr %34, align 4, !tbaa !16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1620, i32 noundef %35) #5
  br label %39

39:                                               ; preds = %37, %33
  %40 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 6
  %41 = load i8, ptr %40, align 4, !tbaa !17
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = zext i8 %41 to i32
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1621, i32 noundef %44) #5
  br label %46

46:                                               ; preds = %43, %39
  %47 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 7
  %48 = load i8, ptr %47, align 1, !tbaa !18
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = zext i8 %48 to i32
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1622, i32 noundef %51) #5
  br label %53

53:                                               ; preds = %50, %46
  %54 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 8
  %55 = load i8, ptr %54, align 2, !tbaa !19
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = sext i8 %55 to i32
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1623, i32 noundef %58) #5
  br label %60

60:                                               ; preds = %57, %53
  %61 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 9
  %62 = load i8, ptr %61, align 1, !tbaa !20
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = sext i8 %62 to i32
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1624, i32 noundef %65) #5
  br label %67

67:                                               ; preds = %64, %60
  %68 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 10
  %69 = load i8, ptr %68, align 4, !tbaa !21
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = sext i8 %69 to i32
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1625, i32 noundef %72) #5
  br label %74

74:                                               ; preds = %71, %67
  %75 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 11
  %76 = load i8, ptr %75, align 1, !tbaa !22
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = sext i8 %76 to i32
  %80 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1626, i32 noundef %79) #5
  br label %81

81:                                               ; preds = %78, %74
  %82 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 12
  %83 = load i8, ptr %82, align 2, !tbaa !23
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = sext i8 %83 to i32
  %87 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1627, i32 noundef %86) #5
  br label %88

88:                                               ; preds = %85, %81
  %89 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 13
  %90 = load i8, ptr %89, align 1, !tbaa !24
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = sext i8 %90 to i32
  %94 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1628, i32 noundef %93) #5
  br label %95

95:                                               ; preds = %92, %88
  %96 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 14
  %97 = load i8, ptr %96, align 4, !tbaa !25
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  %100 = sext i8 %97 to i32
  %101 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1629, i32 noundef %100) #5
  br label %102

102:                                              ; preds = %99, %95
  %103 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 15
  %104 = load i8, ptr %103, align 1, !tbaa !26
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %102
  %107 = sext i8 %104 to i32
  %108 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1630, i32 noundef %107) #5
  br label %109

109:                                              ; preds = %106, %102
  %110 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 16
  %111 = load i8, ptr %110, align 2, !tbaa !27
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %109
  %114 = sext i8 %111 to i32
  %115 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1631, i32 noundef %114) #5
  br label %116

116:                                              ; preds = %113, %109
  %117 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 17
  %118 = load i8, ptr %117, align 1, !tbaa !28
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %116
  %121 = sext i8 %118 to i32
  %122 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1632, i32 noundef %121) #5
  br label %123

123:                                              ; preds = %120, %116
  %124 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 18
  %125 = load i8, ptr %124, align 4, !tbaa !29
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %123
  %128 = sext i8 %125 to i32
  %129 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1633, i32 noundef %128) #5
  br label %130

130:                                              ; preds = %127, %123
  %131 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 19
  %132 = load i8, ptr %131, align 1, !tbaa !30
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %130
  %135 = sext i8 %132 to i32
  %136 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1634, i32 noundef %135) #5
  br label %137

137:                                              ; preds = %134, %130
  %138 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 20
  %139 = load i8, ptr %138, align 2, !tbaa !31
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %137
  %142 = sext i8 %139 to i32
  %143 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1635, i32 noundef %142) #5
  br label %144

144:                                              ; preds = %141, %137
  %145 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 21
  %146 = load i8, ptr %145, align 1, !tbaa !32
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %144
  %149 = sext i8 %146 to i32
  %150 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1636, i32 noundef %149) #5
  br label %151

151:                                              ; preds = %148, %144
  %152 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 22
  %153 = load i8, ptr %152, align 4, !tbaa !33
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %151
  %156 = sext i8 %153 to i32
  %157 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1637, i32 noundef %156) #5
  br label %158

158:                                              ; preds = %155, %151
  %159 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 23
  %160 = load i8, ptr %159, align 1, !tbaa !34
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %158
  %163 = sext i8 %160 to i32
  %164 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1638, i32 noundef %163) #5
  br label %165

165:                                              ; preds = %162, %158
  %166 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 24
  %167 = load i8, ptr %166, align 2, !tbaa !35
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %172, label %169

169:                                              ; preds = %165
  %170 = sext i8 %167 to i32
  %171 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1639, i32 noundef %170) #5
  br label %172

172:                                              ; preds = %169, %165
  %173 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 25
  %174 = load i8, ptr %173, align 1, !tbaa !36
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %179, label %176

176:                                              ; preds = %172
  %177 = sext i8 %174 to i32
  %178 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1640, i32 noundef %177) #5
  br label %179

179:                                              ; preds = %176, %172
  %180 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 26
  %181 = load i8, ptr %180, align 4, !tbaa !37
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %179
  %184 = sext i8 %181 to i32
  %185 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1641, i32 noundef %184) #5
  br label %186

186:                                              ; preds = %183, %179
  %187 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 27
  %188 = load i8, ptr %187, align 1, !tbaa !38
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %186
  %191 = sext i8 %188 to i32
  %192 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1642, i32 noundef %191) #5
  br label %193

193:                                              ; preds = %190, %186
  %194 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 28
  %195 = load i8, ptr %194, align 2, !tbaa !39
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %193
  %198 = sext i8 %195 to i32
  %199 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1643, i32 noundef %198) #5
  br label %200

200:                                              ; preds = %197, %193
  %201 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 29
  %202 = load i8, ptr %201, align 1, !tbaa !40
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %207, label %204

204:                                              ; preds = %200
  %205 = sext i8 %202 to i32
  %206 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1644, i32 noundef %205) #5
  br label %207

207:                                              ; preds = %204, %200
  %208 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 30
  %209 = load i8, ptr %208, align 4, !tbaa !41
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %207
  %212 = sext i8 %209 to i32
  %213 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1645, i32 noundef %212) #5
  br label %214

214:                                              ; preds = %211, %207
  %215 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 31
  %216 = load i8, ptr %215, align 1, !tbaa !42
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %214
  %219 = sext i8 %216 to i32
  %220 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1646, i32 noundef %219) #5
  br label %221

221:                                              ; preds = %218, %214
  %222 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 32
  %223 = load i8, ptr %222, align 2, !tbaa !43
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %221
  %226 = sext i8 %223 to i32
  %227 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1647, i32 noundef %226) #5
  br label %228

228:                                              ; preds = %225, %221
  %229 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 33
  %230 = load i8, ptr %229, align 1, !tbaa !44
  %231 = icmp eq i8 %230, 0
  br i1 %231, label %235, label %232

232:                                              ; preds = %228
  %233 = sext i8 %230 to i32
  %234 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1648, i32 noundef %233) #5
  br label %235

235:                                              ; preds = %232, %228
  %236 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 34
  %237 = load i8, ptr %236, align 4, !tbaa !45
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %235
  %240 = sext i8 %237 to i32
  %241 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1649, i32 noundef %240) #5
  br label %242

242:                                              ; preds = %239, %235
  %243 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 35
  %244 = load i8, ptr %243, align 1, !tbaa !46
  %245 = icmp eq i8 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %242
  %247 = sext i8 %244 to i32
  %248 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1650, i32 noundef %247) #5
  br label %249

249:                                              ; preds = %246, %242
  %250 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 36
  %251 = load i8, ptr %250, align 2, !tbaa !47
  %252 = icmp eq i8 %251, 0
  br i1 %252, label %256, label %253

253:                                              ; preds = %249
  %254 = sext i8 %251 to i32
  %255 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1651, i32 noundef %254) #5
  br label %256

256:                                              ; preds = %253, %249
  %257 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 37
  %258 = load i8, ptr %257, align 1, !tbaa !48
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %263, label %260

260:                                              ; preds = %256
  %261 = sext i8 %258 to i32
  %262 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1652, i32 noundef %261) #5
  br label %263

263:                                              ; preds = %260, %256
  %264 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 38
  %265 = load i8, ptr %264, align 4, !tbaa !49
  %266 = icmp eq i8 %265, 0
  br i1 %266, label %270, label %267

267:                                              ; preds = %263
  %268 = sext i8 %265 to i32
  %269 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1653, i32 noundef %268) #5
  br label %270

270:                                              ; preds = %267, %263
  %271 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 39
  %272 = load i8, ptr %271, align 1, !tbaa !50
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %277, label %274

274:                                              ; preds = %270
  %275 = sext i8 %272 to i32
  %276 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1654, i32 noundef %275) #5
  br label %277

277:                                              ; preds = %274, %270
  %278 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 40
  %279 = load i8, ptr %278, align 2, !tbaa !51
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %284, label %281

281:                                              ; preds = %277
  %282 = sext i8 %279 to i32
  %283 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1655, i32 noundef %282) #5
  br label %284

284:                                              ; preds = %281, %277
  %285 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 41
  %286 = load i8, ptr %285, align 1, !tbaa !52
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %291, label %288

288:                                              ; preds = %284
  %289 = sext i8 %286 to i32
  %290 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1656, i32 noundef %289) #5
  br label %291

291:                                              ; preds = %288, %284
  %292 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 42
  %293 = load i8, ptr %292, align 4, !tbaa !53
  %294 = icmp eq i8 %293, 0
  br i1 %294, label %298, label %295

295:                                              ; preds = %291
  %296 = sext i8 %293 to i32
  %297 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1657, i32 noundef %296) #5
  br label %298

298:                                              ; preds = %295, %291
  %299 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 43
  %300 = load i8, ptr %299, align 1, !tbaa !54
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %305, label %302

302:                                              ; preds = %298
  %303 = sext i8 %300 to i32
  %304 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1658, i32 noundef %303) #5
  br label %305

305:                                              ; preds = %302, %298
  %306 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 44
  %307 = load i8, ptr %306, align 2, !tbaa !55
  %308 = icmp eq i8 %307, 0
  br i1 %308, label %312, label %309

309:                                              ; preds = %305
  %310 = sext i8 %307 to i32
  %311 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1659, i32 noundef %310) #5
  br label %312

312:                                              ; preds = %309, %305
  %313 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 45
  %314 = load i8, ptr %313, align 1, !tbaa !56
  %315 = icmp eq i8 %314, 0
  br i1 %315, label %319, label %316

316:                                              ; preds = %312
  %317 = sext i8 %314 to i32
  %318 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1660, i32 noundef %317) #5
  br label %319

319:                                              ; preds = %316, %312
  %320 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 46
  %321 = load i8, ptr %320, align 4, !tbaa !57
  %322 = icmp eq i8 %321, 0
  br i1 %322, label %326, label %323

323:                                              ; preds = %319
  %324 = sext i8 %321 to i32
  %325 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1661, i32 noundef %324) #5
  br label %326

326:                                              ; preds = %323, %319
  %327 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 47
  %328 = load i8, ptr %327, align 1, !tbaa !58
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %333, label %330

330:                                              ; preds = %326
  %331 = sext i8 %328 to i32
  %332 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1662, i32 noundef %331) #5
  br label %333

333:                                              ; preds = %330, %326
  %334 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 48
  %335 = load i8, ptr %334, align 2, !tbaa !59
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %340, label %337

337:                                              ; preds = %333
  %338 = sext i8 %335 to i32
  %339 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1663, i32 noundef %338) #5
  br label %340

340:                                              ; preds = %337, %333
  %341 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 49
  %342 = load i8, ptr %341, align 1, !tbaa !60
  %343 = icmp eq i8 %342, 0
  br i1 %343, label %347, label %344

344:                                              ; preds = %340
  %345 = sext i8 %342 to i32
  %346 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1664, i32 noundef %345) #5
  br label %347

347:                                              ; preds = %344, %340
  %348 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 50
  %349 = load i8, ptr %348, align 4, !tbaa !61
  %350 = icmp eq i8 %349, 0
  br i1 %350, label %354, label %351

351:                                              ; preds = %347
  %352 = sext i8 %349 to i32
  %353 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1665, i32 noundef %352) #5
  br label %354

354:                                              ; preds = %351, %347
  %355 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 51
  %356 = load i8, ptr %355, align 1, !tbaa !62
  %357 = icmp eq i8 %356, 0
  br i1 %357, label %361, label %358

358:                                              ; preds = %354
  %359 = sext i8 %356 to i32
  %360 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1666, i32 noundef %359) #5
  br label %361

361:                                              ; preds = %358, %354
  %362 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 52
  %363 = load i8, ptr %362, align 2, !tbaa !63
  %364 = icmp eq i8 %363, 0
  br i1 %364, label %368, label %365

365:                                              ; preds = %361
  %366 = sext i8 %363 to i32
  %367 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1667, i32 noundef %366) #5
  br label %368

368:                                              ; preds = %365, %361
  %369 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 53
  %370 = load i8, ptr %369, align 1, !tbaa !64
  %371 = icmp eq i8 %370, 0
  br i1 %371, label %375, label %372

372:                                              ; preds = %368
  %373 = sext i8 %370 to i32
  %374 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1668, i32 noundef %373) #5
  br label %375

375:                                              ; preds = %372, %368
  %376 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 54
  %377 = load i8, ptr %376, align 4, !tbaa !65
  %378 = icmp eq i8 %377, 0
  br i1 %378, label %382, label %379

379:                                              ; preds = %375
  %380 = sext i8 %377 to i32
  %381 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1669, i32 noundef %380) #5
  br label %382

382:                                              ; preds = %379, %375
  %383 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 55
  %384 = load i8, ptr %383, align 1, !tbaa !66
  %385 = icmp eq i8 %384, 0
  br i1 %385, label %389, label %386

386:                                              ; preds = %382
  %387 = sext i8 %384 to i32
  %388 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1670, i32 noundef %387) #5
  br label %389

389:                                              ; preds = %386, %382
  %390 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 56
  %391 = load i8, ptr %390, align 2, !tbaa !67
  %392 = icmp eq i8 %391, 0
  br i1 %392, label %396, label %393

393:                                              ; preds = %389
  %394 = sext i8 %391 to i32
  %395 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1671, i32 noundef %394) #5
  br label %396

396:                                              ; preds = %393, %389
  %397 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 57
  %398 = load i8, ptr %397, align 1, !tbaa !68
  %399 = icmp eq i8 %398, 0
  br i1 %399, label %403, label %400

400:                                              ; preds = %396
  %401 = sext i8 %398 to i32
  %402 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1672, i32 noundef %401) #5
  br label %403

403:                                              ; preds = %400, %396
  %404 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 58
  %405 = load i8, ptr %404, align 4, !tbaa !69
  %406 = icmp eq i8 %405, 0
  br i1 %406, label %410, label %407

407:                                              ; preds = %403
  %408 = sext i8 %405 to i32
  %409 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1673, i32 noundef %408) #5
  br label %410

410:                                              ; preds = %407, %403
  %411 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 59
  %412 = load i8, ptr %411, align 1, !tbaa !70
  %413 = icmp eq i8 %412, 0
  br i1 %413, label %417, label %414

414:                                              ; preds = %410
  %415 = sext i8 %412 to i32
  %416 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1674, i32 noundef %415) #5
  br label %417

417:                                              ; preds = %414, %410
  %418 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 60
  %419 = load i8, ptr %418, align 2, !tbaa !71
  %420 = icmp eq i8 %419, 0
  br i1 %420, label %424, label %421

421:                                              ; preds = %417
  %422 = sext i8 %419 to i32
  %423 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1675, i32 noundef %422) #5
  br label %424

424:                                              ; preds = %421, %417
  %425 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 61
  %426 = load i8, ptr %425, align 1, !tbaa !72
  %427 = icmp eq i8 %426, 0
  br i1 %427, label %431, label %428

428:                                              ; preds = %424
  %429 = sext i8 %426 to i32
  %430 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1676, i32 noundef %429) #5
  br label %431

431:                                              ; preds = %428, %424
  %432 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 62
  %433 = load i8, ptr %432, align 4, !tbaa !73
  %434 = icmp eq i8 %433, 0
  br i1 %434, label %438, label %435

435:                                              ; preds = %431
  %436 = sext i8 %433 to i32
  %437 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1677, i32 noundef %436) #5
  br label %438

438:                                              ; preds = %435, %431
  %439 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 63
  %440 = load i8, ptr %439, align 1, !tbaa !74
  %441 = icmp eq i8 %440, 0
  br i1 %441, label %445, label %442

442:                                              ; preds = %438
  %443 = sext i8 %440 to i32
  %444 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1678, i32 noundef %443) #5
  br label %445

445:                                              ; preds = %442, %438
  %446 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 64
  %447 = load i8, ptr %446, align 2, !tbaa !75
  %448 = icmp eq i8 %447, 0
  br i1 %448, label %452, label %449

449:                                              ; preds = %445
  %450 = sext i8 %447 to i32
  %451 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1679, i32 noundef %450) #5
  br label %452

452:                                              ; preds = %449, %445
  %453 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 65
  %454 = load i8, ptr %453, align 1, !tbaa !76
  %455 = icmp eq i8 %454, 0
  br i1 %455, label %459, label %456

456:                                              ; preds = %452
  %457 = sext i8 %454 to i32
  %458 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1680, i32 noundef %457) #5
  br label %459

459:                                              ; preds = %456, %452
  %460 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 66
  %461 = load i8, ptr %460, align 4, !tbaa !77
  %462 = icmp eq i8 %461, 0
  br i1 %462, label %466, label %463

463:                                              ; preds = %459
  %464 = sext i8 %461 to i32
  %465 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1681, i32 noundef %464) #5
  br label %466

466:                                              ; preds = %463, %459
  %467 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 67
  %468 = load i8, ptr %467, align 1, !tbaa !78
  %469 = icmp eq i8 %468, 0
  br i1 %469, label %473, label %470

470:                                              ; preds = %466
  %471 = sext i8 %468 to i32
  %472 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1682, i32 noundef %471) #5
  br label %473

473:                                              ; preds = %470, %466
  %474 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 68
  %475 = load i8, ptr %474, align 2, !tbaa !79
  %476 = icmp eq i8 %475, 0
  br i1 %476, label %480, label %477

477:                                              ; preds = %473
  %478 = sext i8 %475 to i32
  %479 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1683, i32 noundef %478) #5
  br label %480

480:                                              ; preds = %477, %473
  %481 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 69
  %482 = load i8, ptr %481, align 1, !tbaa !80
  %483 = icmp eq i8 %482, 0
  br i1 %483, label %487, label %484

484:                                              ; preds = %480
  %485 = sext i8 %482 to i32
  %486 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1684, i32 noundef %485) #5
  br label %487

487:                                              ; preds = %484, %480
  %488 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 70
  %489 = load i8, ptr %488, align 4, !tbaa !81
  %490 = icmp eq i8 %489, 0
  br i1 %490, label %494, label %491

491:                                              ; preds = %487
  %492 = sext i8 %489 to i32
  %493 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1685, i32 noundef %492) #5
  br label %494

494:                                              ; preds = %491, %487
  %495 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 71
  %496 = load i8, ptr %495, align 1, !tbaa !82
  %497 = icmp eq i8 %496, 0
  br i1 %497, label %501, label %498

498:                                              ; preds = %494
  %499 = sext i8 %496 to i32
  %500 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1686, i32 noundef %499) #5
  br label %501

501:                                              ; preds = %498, %494
  %502 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 72
  %503 = load i8, ptr %502, align 2, !tbaa !83
  %504 = icmp eq i8 %503, 0
  br i1 %504, label %508, label %505

505:                                              ; preds = %501
  %506 = sext i8 %503 to i32
  %507 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1687, i32 noundef %506) #5
  br label %508

508:                                              ; preds = %505, %501
  %509 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 73
  %510 = load i8, ptr %509, align 1, !tbaa !84
  %511 = icmp eq i8 %510, 0
  br i1 %511, label %515, label %512

512:                                              ; preds = %508
  %513 = sext i8 %510 to i32
  %514 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1688, i32 noundef %513) #5
  br label %515

515:                                              ; preds = %512, %508
  %516 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 74
  %517 = load i8, ptr %516, align 4, !tbaa !85
  %518 = icmp eq i8 %517, 0
  br i1 %518, label %522, label %519

519:                                              ; preds = %515
  %520 = sext i8 %517 to i32
  %521 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1689, i32 noundef %520) #5
  br label %522

522:                                              ; preds = %519, %515
  %523 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 75
  %524 = load i8, ptr %523, align 1, !tbaa !86
  %525 = icmp eq i8 %524, 0
  br i1 %525, label %529, label %526

526:                                              ; preds = %522
  %527 = sext i8 %524 to i32
  %528 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1690, i32 noundef %527) #5
  br label %529

529:                                              ; preds = %526, %522
  %530 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 76
  %531 = load i8, ptr %530, align 2, !tbaa !87
  %532 = icmp eq i8 %531, 0
  br i1 %532, label %536, label %533

533:                                              ; preds = %529
  %534 = sext i8 %531 to i32
  %535 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1691, i32 noundef %534) #5
  br label %536

536:                                              ; preds = %533, %529
  %537 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 77
  %538 = load i8, ptr %537, align 1, !tbaa !88
  %539 = icmp eq i8 %538, 0
  br i1 %539, label %543, label %540

540:                                              ; preds = %536
  %541 = sext i8 %538 to i32
  %542 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1692, i32 noundef %541) #5
  br label %543

543:                                              ; preds = %540, %536
  %544 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 78
  %545 = load i8, ptr %544, align 4, !tbaa !89
  %546 = icmp eq i8 %545, 0
  br i1 %546, label %550, label %547

547:                                              ; preds = %543
  %548 = sext i8 %545 to i32
  %549 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1693, i32 noundef %548) #5
  br label %550

550:                                              ; preds = %547, %543
  %551 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 79
  %552 = load i8, ptr %551, align 1, !tbaa !90
  %553 = icmp eq i8 %552, 0
  br i1 %553, label %557, label %554

554:                                              ; preds = %550
  %555 = sext i8 %552 to i32
  %556 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1694, i32 noundef %555) #5
  br label %557

557:                                              ; preds = %554, %550
  %558 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 80
  %559 = load i8, ptr %558, align 2, !tbaa !91
  %560 = icmp eq i8 %559, 0
  br i1 %560, label %564, label %561

561:                                              ; preds = %557
  %562 = sext i8 %559 to i32
  %563 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1695, i32 noundef %562) #5
  br label %564

564:                                              ; preds = %561, %557
  %565 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 81
  %566 = load i8, ptr %565, align 1, !tbaa !92
  %567 = icmp eq i8 %566, 0
  br i1 %567, label %571, label %568

568:                                              ; preds = %564
  %569 = sext i8 %566 to i32
  %570 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1696, i32 noundef %569) #5
  br label %571

571:                                              ; preds = %568, %564
  %572 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 82
  %573 = load i8, ptr %572, align 4, !tbaa !93
  %574 = icmp eq i8 %573, 0
  br i1 %574, label %578, label %575

575:                                              ; preds = %571
  %576 = sext i8 %573 to i32
  %577 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1697, i32 noundef %576) #5
  br label %578

578:                                              ; preds = %575, %571
  %579 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 83
  %580 = load i8, ptr %579, align 1, !tbaa !94
  %581 = icmp eq i8 %580, 0
  br i1 %581, label %585, label %582

582:                                              ; preds = %578
  %583 = sext i8 %580 to i32
  %584 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1698, i32 noundef %583) #5
  br label %585

585:                                              ; preds = %582, %578
  %586 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 84
  %587 = load i8, ptr %586, align 2, !tbaa !95
  %588 = icmp eq i8 %587, 0
  br i1 %588, label %592, label %589

589:                                              ; preds = %585
  %590 = sext i8 %587 to i32
  %591 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1699, i32 noundef %590) #5
  br label %592

592:                                              ; preds = %589, %585
  %593 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 85
  %594 = load i8, ptr %593, align 1, !tbaa !96
  %595 = icmp eq i8 %594, 0
  br i1 %595, label %599, label %596

596:                                              ; preds = %592
  %597 = sext i8 %594 to i32
  %598 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1700, i32 noundef %597) #5
  br label %599

599:                                              ; preds = %596, %592
  %600 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 86
  %601 = load i8, ptr %600, align 4, !tbaa !97
  %602 = icmp eq i8 %601, 0
  br i1 %602, label %606, label %603

603:                                              ; preds = %599
  %604 = sext i8 %601 to i32
  %605 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1701, i32 noundef %604) #5
  br label %606

606:                                              ; preds = %603, %599
  %607 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 87
  %608 = load i8, ptr %607, align 1, !tbaa !98
  %609 = icmp eq i8 %608, 0
  br i1 %609, label %613, label %610

610:                                              ; preds = %606
  %611 = sext i8 %608 to i32
  %612 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1702, i32 noundef %611) #5
  br label %613

613:                                              ; preds = %610, %606
  %614 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 88
  %615 = load i8, ptr %614, align 2, !tbaa !99
  %616 = icmp eq i8 %615, 0
  br i1 %616, label %620, label %617

617:                                              ; preds = %613
  %618 = sext i8 %615 to i32
  %619 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1703, i32 noundef %618) #5
  br label %620

620:                                              ; preds = %617, %613
  %621 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 89
  %622 = load i8, ptr %621, align 1, !tbaa !100
  %623 = icmp eq i8 %622, 0
  br i1 %623, label %627, label %624

624:                                              ; preds = %620
  %625 = sext i8 %622 to i32
  %626 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1704, i32 noundef %625) #5
  br label %627

627:                                              ; preds = %624, %620
  %628 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 90
  %629 = load i8, ptr %628, align 4, !tbaa !101
  %630 = icmp eq i8 %629, 0
  br i1 %630, label %634, label %631

631:                                              ; preds = %627
  %632 = sext i8 %629 to i32
  %633 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1705, i32 noundef %632) #5
  br label %634

634:                                              ; preds = %631, %627
  %635 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 91
  %636 = load i8, ptr %635, align 1, !tbaa !102
  %637 = icmp eq i8 %636, 0
  br i1 %637, label %641, label %638

638:                                              ; preds = %634
  %639 = sext i8 %636 to i32
  %640 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1706, i32 noundef %639) #5
  br label %641

641:                                              ; preds = %638, %634
  %642 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 92
  %643 = load i8, ptr %642, align 2, !tbaa !103
  %644 = icmp eq i8 %643, 0
  br i1 %644, label %648, label %645

645:                                              ; preds = %641
  %646 = sext i8 %643 to i32
  %647 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1707, i32 noundef %646) #5
  br label %648

648:                                              ; preds = %645, %641
  %649 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 93
  %650 = load i8, ptr %649, align 1, !tbaa !104
  %651 = icmp eq i8 %650, 0
  br i1 %651, label %655, label %652

652:                                              ; preds = %648
  %653 = sext i8 %650 to i32
  %654 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1708, i32 noundef %653) #5
  br label %655

655:                                              ; preds = %652, %648
  %656 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 94
  %657 = load i8, ptr %656, align 4, !tbaa !105
  %658 = icmp eq i8 %657, 0
  br i1 %658, label %662, label %659

659:                                              ; preds = %655
  %660 = sext i8 %657 to i32
  %661 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1709, i32 noundef %660) #5
  br label %662

662:                                              ; preds = %659, %655
  %663 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 95
  %664 = load i8, ptr %663, align 1, !tbaa !106
  %665 = icmp eq i8 %664, 0
  br i1 %665, label %669, label %666

666:                                              ; preds = %662
  %667 = sext i8 %664 to i32
  %668 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1710, i32 noundef %667) #5
  br label %669

669:                                              ; preds = %666, %662
  %670 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 96
  %671 = load i8, ptr %670, align 2, !tbaa !107
  %672 = icmp eq i8 %671, 0
  br i1 %672, label %676, label %673

673:                                              ; preds = %669
  %674 = sext i8 %671 to i32
  %675 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1711, i32 noundef %674) #5
  br label %676

676:                                              ; preds = %673, %669
  %677 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 97
  %678 = load i8, ptr %677, align 1, !tbaa !108
  %679 = icmp eq i8 %678, 0
  br i1 %679, label %683, label %680

680:                                              ; preds = %676
  %681 = sext i8 %678 to i32
  %682 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1712, i32 noundef %681) #5
  br label %683

683:                                              ; preds = %680, %676
  %684 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 98
  %685 = load i8, ptr %684, align 4, !tbaa !109
  %686 = icmp eq i8 %685, 0
  br i1 %686, label %690, label %687

687:                                              ; preds = %683
  %688 = sext i8 %685 to i32
  %689 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1713, i32 noundef %688) #5
  br label %690

690:                                              ; preds = %687, %683
  %691 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 99
  %692 = load i8, ptr %691, align 1, !tbaa !110
  %693 = icmp eq i8 %692, 0
  br i1 %693, label %697, label %694

694:                                              ; preds = %690
  %695 = sext i8 %692 to i32
  %696 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1714, i32 noundef %695) #5
  br label %697

697:                                              ; preds = %694, %690
  %698 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 100
  %699 = load i8, ptr %698, align 2, !tbaa !111
  %700 = icmp eq i8 %699, 0
  br i1 %700, label %704, label %701

701:                                              ; preds = %697
  %702 = sext i8 %699 to i32
  %703 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1715, i32 noundef %702) #5
  br label %704

704:                                              ; preds = %701, %697
  %705 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 101
  %706 = load i8, ptr %705, align 1, !tbaa !112
  %707 = icmp eq i8 %706, 0
  br i1 %707, label %711, label %708

708:                                              ; preds = %704
  %709 = sext i8 %706 to i32
  %710 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1716, i32 noundef %709) #5
  br label %711

711:                                              ; preds = %708, %704
  %712 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 102
  %713 = load i8, ptr %712, align 4, !tbaa !113
  %714 = icmp eq i8 %713, 0
  br i1 %714, label %718, label %715

715:                                              ; preds = %711
  %716 = sext i8 %713 to i32
  %717 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1717, i32 noundef %716) #5
  br label %718

718:                                              ; preds = %715, %711
  %719 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 103
  %720 = load i8, ptr %719, align 1, !tbaa !114
  %721 = icmp eq i8 %720, 0
  br i1 %721, label %725, label %722

722:                                              ; preds = %718
  %723 = sext i8 %720 to i32
  %724 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1718, i32 noundef %723) #5
  br label %725

725:                                              ; preds = %722, %718
  %726 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 104
  %727 = load i8, ptr %726, align 2, !tbaa !115
  %728 = icmp eq i8 %727, 0
  br i1 %728, label %732, label %729

729:                                              ; preds = %725
  %730 = sext i8 %727 to i32
  %731 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1719, i32 noundef %730) #5
  br label %732

732:                                              ; preds = %729, %725
  %733 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 105
  %734 = load i8, ptr %733, align 1, !tbaa !116
  %735 = icmp eq i8 %734, 0
  br i1 %735, label %739, label %736

736:                                              ; preds = %732
  %737 = sext i8 %734 to i32
  %738 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1720, i32 noundef %737) #5
  br label %739

739:                                              ; preds = %736, %732
  %740 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 106
  %741 = load i8, ptr %740, align 4, !tbaa !117
  %742 = icmp eq i8 %741, 0
  br i1 %742, label %746, label %743

743:                                              ; preds = %739
  %744 = sext i8 %741 to i32
  %745 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1721, i32 noundef %744) #5
  br label %746

746:                                              ; preds = %743, %739
  %747 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 107
  %748 = load i8, ptr %747, align 1, !tbaa !118
  %749 = icmp eq i8 %748, 0
  br i1 %749, label %753, label %750

750:                                              ; preds = %746
  %751 = sext i8 %748 to i32
  %752 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1722, i32 noundef %751) #5
  br label %753

753:                                              ; preds = %750, %746
  %754 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 108
  %755 = load i8, ptr %754, align 2, !tbaa !119
  %756 = icmp eq i8 %755, 0
  br i1 %756, label %760, label %757

757:                                              ; preds = %753
  %758 = sext i8 %755 to i32
  %759 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1723, i32 noundef %758) #5
  br label %760

760:                                              ; preds = %757, %753
  %761 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 109
  %762 = load i8, ptr %761, align 1, !tbaa !120
  %763 = icmp eq i8 %762, 0
  br i1 %763, label %767, label %764

764:                                              ; preds = %760
  %765 = sext i8 %762 to i32
  %766 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1724, i32 noundef %765) #5
  br label %767

767:                                              ; preds = %764, %760
  %768 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 110
  %769 = load i8, ptr %768, align 4, !tbaa !121
  %770 = icmp eq i8 %769, 0
  br i1 %770, label %774, label %771

771:                                              ; preds = %767
  %772 = sext i8 %769 to i32
  %773 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1725, i32 noundef %772) #5
  br label %774

774:                                              ; preds = %771, %767
  %775 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 111
  %776 = load i8, ptr %775, align 1, !tbaa !122
  %777 = icmp eq i8 %776, 0
  br i1 %777, label %781, label %778

778:                                              ; preds = %774
  %779 = sext i8 %776 to i32
  %780 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1726, i32 noundef %779) #5
  br label %781

781:                                              ; preds = %778, %774
  %782 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 112
  %783 = load i8, ptr %782, align 2, !tbaa !123
  %784 = icmp eq i8 %783, 0
  br i1 %784, label %788, label %785

785:                                              ; preds = %781
  %786 = sext i8 %783 to i32
  %787 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1727, i32 noundef %786) #5
  br label %788

788:                                              ; preds = %785, %781
  %789 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 113
  %790 = load i8, ptr %789, align 1, !tbaa !124
  %791 = icmp eq i8 %790, 0
  br i1 %791, label %795, label %792

792:                                              ; preds = %788
  %793 = sext i8 %790 to i32
  %794 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1728, i32 noundef %793) #5
  br label %795

795:                                              ; preds = %792, %788
  %796 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 114
  %797 = load i8, ptr %796, align 4, !tbaa !125
  %798 = icmp eq i8 %797, 0
  br i1 %798, label %802, label %799

799:                                              ; preds = %795
  %800 = sext i8 %797 to i32
  %801 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1729, i32 noundef %800) #5
  br label %802

802:                                              ; preds = %799, %795
  %803 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 115
  %804 = load i8, ptr %803, align 1, !tbaa !126
  %805 = icmp eq i8 %804, 0
  br i1 %805, label %809, label %806

806:                                              ; preds = %802
  %807 = sext i8 %804 to i32
  %808 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1730, i32 noundef %807) #5
  br label %809

809:                                              ; preds = %806, %802
  %810 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 116
  %811 = load i8, ptr %810, align 2, !tbaa !127
  %812 = icmp eq i8 %811, 0
  br i1 %812, label %816, label %813

813:                                              ; preds = %809
  %814 = sext i8 %811 to i32
  %815 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1731, i32 noundef %814) #5
  br label %816

816:                                              ; preds = %813, %809
  %817 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 117
  %818 = load i8, ptr %817, align 1, !tbaa !128
  %819 = icmp eq i8 %818, 0
  br i1 %819, label %823, label %820

820:                                              ; preds = %816
  %821 = sext i8 %818 to i32
  %822 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1732, i32 noundef %821) #5
  br label %823

823:                                              ; preds = %820, %816
  %824 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 118
  %825 = load i8, ptr %824, align 4, !tbaa !129
  %826 = icmp eq i8 %825, 0
  br i1 %826, label %830, label %827

827:                                              ; preds = %823
  %828 = sext i8 %825 to i32
  %829 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1733, i32 noundef %828) #5
  br label %830

830:                                              ; preds = %827, %823
  %831 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 119
  %832 = load i8, ptr %831, align 1, !tbaa !130
  %833 = icmp eq i8 %832, 0
  br i1 %833, label %837, label %834

834:                                              ; preds = %830
  %835 = sext i8 %832 to i32
  %836 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1734, i32 noundef %835) #5
  br label %837

837:                                              ; preds = %834, %830
  %838 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 120
  %839 = load i8, ptr %838, align 2, !tbaa !131
  %840 = icmp eq i8 %839, 0
  br i1 %840, label %844, label %841

841:                                              ; preds = %837
  %842 = sext i8 %839 to i32
  %843 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1735, i32 noundef %842) #5
  br label %844

844:                                              ; preds = %841, %837
  %845 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 121
  %846 = load i8, ptr %845, align 1, !tbaa !132
  %847 = icmp eq i8 %846, 0
  br i1 %847, label %851, label %848

848:                                              ; preds = %844
  %849 = sext i8 %846 to i32
  %850 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1736, i32 noundef %849) #5
  br label %851

851:                                              ; preds = %848, %844
  %852 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 122
  %853 = load i8, ptr %852, align 4, !tbaa !133
  %854 = icmp eq i8 %853, 0
  br i1 %854, label %858, label %855

855:                                              ; preds = %851
  %856 = sext i8 %853 to i32
  %857 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1737, i32 noundef %856) #5
  br label %858

858:                                              ; preds = %855, %851
  %859 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 123
  %860 = load i8, ptr %859, align 1, !tbaa !134
  %861 = icmp eq i8 %860, 0
  br i1 %861, label %865, label %862

862:                                              ; preds = %858
  %863 = sext i8 %860 to i32
  %864 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1738, i32 noundef %863) #5
  br label %865

865:                                              ; preds = %862, %858
  %866 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 124
  %867 = load i8, ptr %866, align 2, !tbaa !135
  %868 = icmp eq i8 %867, 0
  br i1 %868, label %872, label %869

869:                                              ; preds = %865
  %870 = sext i8 %867 to i32
  %871 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1739, i32 noundef %870) #5
  br label %872

872:                                              ; preds = %869, %865
  %873 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 125
  %874 = load i8, ptr %873, align 1, !tbaa !136
  %875 = icmp eq i8 %874, 0
  br i1 %875, label %879, label %876

876:                                              ; preds = %872
  %877 = sext i8 %874 to i32
  %878 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1740, i32 noundef %877) #5
  br label %879

879:                                              ; preds = %876, %872
  %880 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 126
  %881 = load i8, ptr %880, align 4, !tbaa !137
  %882 = icmp eq i8 %881, 0
  br i1 %882, label %886, label %883

883:                                              ; preds = %879
  %884 = sext i8 %881 to i32
  %885 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1741, i32 noundef %884) #5
  br label %886

886:                                              ; preds = %883, %879
  %887 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 127
  %888 = load i8, ptr %887, align 1, !tbaa !138
  %889 = icmp eq i8 %888, 0
  br i1 %889, label %893, label %890

890:                                              ; preds = %886
  %891 = sext i8 %888 to i32
  %892 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1742, i32 noundef %891) #5
  br label %893

893:                                              ; preds = %890, %886
  %894 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 128
  %895 = load i8, ptr %894, align 2, !tbaa !139
  %896 = icmp eq i8 %895, 0
  br i1 %896, label %900, label %897

897:                                              ; preds = %893
  %898 = sext i8 %895 to i32
  %899 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1743, i32 noundef %898) #5
  br label %900

900:                                              ; preds = %897, %893
  %901 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 129
  %902 = load i8, ptr %901, align 1, !tbaa !140
  %903 = icmp eq i8 %902, 0
  br i1 %903, label %907, label %904

904:                                              ; preds = %900
  %905 = sext i8 %902 to i32
  %906 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1744, i32 noundef %905) #5
  br label %907

907:                                              ; preds = %904, %900
  %908 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 130
  %909 = load i8, ptr %908, align 4, !tbaa !141
  %910 = icmp eq i8 %909, 0
  br i1 %910, label %914, label %911

911:                                              ; preds = %907
  %912 = sext i8 %909 to i32
  %913 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1745, i32 noundef %912) #5
  br label %914

914:                                              ; preds = %911, %907
  %915 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 131
  %916 = load i8, ptr %915, align 1, !tbaa !142
  %917 = icmp eq i8 %916, 0
  br i1 %917, label %921, label %918

918:                                              ; preds = %914
  %919 = sext i8 %916 to i32
  %920 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1746, i32 noundef %919) #5
  br label %921

921:                                              ; preds = %918, %914
  %922 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 132
  %923 = load i8, ptr %922, align 2, !tbaa !143
  %924 = icmp eq i8 %923, 0
  br i1 %924, label %928, label %925

925:                                              ; preds = %921
  %926 = sext i8 %923 to i32
  %927 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1747, i32 noundef %926) #5
  br label %928

928:                                              ; preds = %925, %921
  %929 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 133
  %930 = load i8, ptr %929, align 1, !tbaa !144
  %931 = icmp eq i8 %930, 0
  br i1 %931, label %935, label %932

932:                                              ; preds = %928
  %933 = sext i8 %930 to i32
  %934 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1748, i32 noundef %933) #5
  br label %935

935:                                              ; preds = %932, %928
  %936 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 134
  %937 = load i8, ptr %936, align 4, !tbaa !145
  %938 = icmp eq i8 %937, 0
  br i1 %938, label %942, label %939

939:                                              ; preds = %935
  %940 = sext i8 %937 to i32
  %941 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1749, i32 noundef %940) #5
  br label %942

942:                                              ; preds = %939, %935
  %943 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 135
  %944 = load i8, ptr %943, align 1, !tbaa !146
  %945 = icmp eq i8 %944, 0
  br i1 %945, label %949, label %946

946:                                              ; preds = %942
  %947 = sext i8 %944 to i32
  %948 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1750, i32 noundef %947) #5
  br label %949

949:                                              ; preds = %946, %942
  %950 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 136
  %951 = load i8, ptr %950, align 2, !tbaa !147
  %952 = icmp eq i8 %951, 0
  br i1 %952, label %956, label %953

953:                                              ; preds = %949
  %954 = sext i8 %951 to i32
  %955 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1751, i32 noundef %954) #5
  br label %956

956:                                              ; preds = %953, %949
  %957 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 137
  %958 = load i8, ptr %957, align 1, !tbaa !148
  %959 = icmp eq i8 %958, 0
  br i1 %959, label %963, label %960

960:                                              ; preds = %956
  %961 = sext i8 %958 to i32
  %962 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1752, i32 noundef %961) #5
  br label %963

963:                                              ; preds = %960, %956
  %964 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 138
  %965 = load i8, ptr %964, align 4, !tbaa !149
  %966 = icmp eq i8 %965, 0
  br i1 %966, label %970, label %967

967:                                              ; preds = %963
  %968 = sext i8 %965 to i32
  %969 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1753, i32 noundef %968) #5
  br label %970

970:                                              ; preds = %967, %963
  %971 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 139
  %972 = load i8, ptr %971, align 1, !tbaa !150
  %973 = icmp eq i8 %972, 0
  br i1 %973, label %977, label %974

974:                                              ; preds = %970
  %975 = sext i8 %972 to i32
  %976 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1754, i32 noundef %975) #5
  br label %977

977:                                              ; preds = %974, %970
  %978 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 140
  %979 = load i8, ptr %978, align 2, !tbaa !151
  %980 = icmp eq i8 %979, 0
  br i1 %980, label %984, label %981

981:                                              ; preds = %977
  %982 = sext i8 %979 to i32
  %983 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1755, i32 noundef %982) #5
  br label %984

984:                                              ; preds = %981, %977
  %985 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 141
  %986 = load i8, ptr %985, align 1, !tbaa !152
  %987 = icmp eq i8 %986, 0
  br i1 %987, label %991, label %988

988:                                              ; preds = %984
  %989 = sext i8 %986 to i32
  %990 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1756, i32 noundef %989) #5
  br label %991

991:                                              ; preds = %988, %984
  %992 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 142
  %993 = load i8, ptr %992, align 4, !tbaa !153
  %994 = icmp eq i8 %993, 0
  br i1 %994, label %998, label %995

995:                                              ; preds = %991
  %996 = sext i8 %993 to i32
  %997 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1757, i32 noundef %996) #5
  br label %998

998:                                              ; preds = %995, %991
  %999 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 143
  %1000 = load i8, ptr %999, align 1, !tbaa !154
  %1001 = icmp eq i8 %1000, 0
  br i1 %1001, label %1005, label %1002

1002:                                             ; preds = %998
  %1003 = sext i8 %1000 to i32
  %1004 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1758, i32 noundef %1003) #5
  br label %1005

1005:                                             ; preds = %1002, %998
  %1006 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 144
  %1007 = load i8, ptr %1006, align 2, !tbaa !155
  %1008 = icmp eq i8 %1007, 0
  br i1 %1008, label %1012, label %1009

1009:                                             ; preds = %1005
  %1010 = sext i8 %1007 to i32
  %1011 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1759, i32 noundef %1010) #5
  br label %1012

1012:                                             ; preds = %1009, %1005
  %1013 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 145
  %1014 = load i8, ptr %1013, align 1, !tbaa !156
  %1015 = icmp eq i8 %1014, 0
  br i1 %1015, label %1019, label %1016

1016:                                             ; preds = %1012
  %1017 = sext i8 %1014 to i32
  %1018 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1760, i32 noundef %1017) #5
  br label %1019

1019:                                             ; preds = %1016, %1012
  %1020 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 146
  %1021 = load i8, ptr %1020, align 4, !tbaa !157
  %1022 = icmp eq i8 %1021, 0
  br i1 %1022, label %1026, label %1023

1023:                                             ; preds = %1019
  %1024 = sext i8 %1021 to i32
  %1025 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1761, i32 noundef %1024) #5
  br label %1026

1026:                                             ; preds = %1023, %1019
  %1027 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 147
  %1028 = load i8, ptr %1027, align 1, !tbaa !158
  %1029 = icmp eq i8 %1028, 0
  br i1 %1029, label %1033, label %1030

1030:                                             ; preds = %1026
  %1031 = sext i8 %1028 to i32
  %1032 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1762, i32 noundef %1031) #5
  br label %1033

1033:                                             ; preds = %1030, %1026
  %1034 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 148
  %1035 = load i8, ptr %1034, align 2, !tbaa !159
  %1036 = icmp eq i8 %1035, 0
  br i1 %1036, label %1040, label %1037

1037:                                             ; preds = %1033
  %1038 = sext i8 %1035 to i32
  %1039 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1763, i32 noundef %1038) #5
  br label %1040

1040:                                             ; preds = %1037, %1033
  %1041 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 149
  %1042 = load i8, ptr %1041, align 1, !tbaa !160
  %1043 = icmp eq i8 %1042, 0
  br i1 %1043, label %1047, label %1044

1044:                                             ; preds = %1040
  %1045 = sext i8 %1042 to i32
  %1046 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1764, i32 noundef %1045) #5
  br label %1047

1047:                                             ; preds = %1044, %1040
  %1048 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 150
  %1049 = load i8, ptr %1048, align 4, !tbaa !161
  %1050 = icmp eq i8 %1049, 0
  br i1 %1050, label %1054, label %1051

1051:                                             ; preds = %1047
  %1052 = sext i8 %1049 to i32
  %1053 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1765, i32 noundef %1052) #5
  br label %1054

1054:                                             ; preds = %1051, %1047
  %1055 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 151
  %1056 = load i8, ptr %1055, align 1, !tbaa !162
  %1057 = icmp eq i8 %1056, 0
  br i1 %1057, label %1061, label %1058

1058:                                             ; preds = %1054
  %1059 = sext i8 %1056 to i32
  %1060 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1766, i32 noundef %1059) #5
  br label %1061

1061:                                             ; preds = %1058, %1054
  %1062 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 152
  %1063 = load i8, ptr %1062, align 2, !tbaa !163
  %1064 = icmp eq i8 %1063, 0
  br i1 %1064, label %1068, label %1065

1065:                                             ; preds = %1061
  %1066 = sext i8 %1063 to i32
  %1067 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1767, i32 noundef %1066) #5
  br label %1068

1068:                                             ; preds = %1065, %1061
  %1069 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 153
  %1070 = load i8, ptr %1069, align 1, !tbaa !164
  %1071 = icmp eq i8 %1070, 0
  br i1 %1071, label %1075, label %1072

1072:                                             ; preds = %1068
  %1073 = sext i8 %1070 to i32
  %1074 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1768, i32 noundef %1073) #5
  br label %1075

1075:                                             ; preds = %1072, %1068
  %1076 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 154
  %1077 = load i8, ptr %1076, align 4, !tbaa !165
  %1078 = icmp eq i8 %1077, 0
  br i1 %1078, label %1082, label %1079

1079:                                             ; preds = %1075
  %1080 = sext i8 %1077 to i32
  %1081 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1769, i32 noundef %1080) #5
  br label %1082

1082:                                             ; preds = %1079, %1075
  %1083 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 155
  %1084 = load i8, ptr %1083, align 1, !tbaa !166
  %1085 = icmp eq i8 %1084, 0
  br i1 %1085, label %1089, label %1086

1086:                                             ; preds = %1082
  %1087 = sext i8 %1084 to i32
  %1088 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1770, i32 noundef %1087) #5
  br label %1089

1089:                                             ; preds = %1086, %1082
  %1090 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 156
  %1091 = load i8, ptr %1090, align 2, !tbaa !167
  %1092 = icmp eq i8 %1091, 0
  br i1 %1092, label %1096, label %1093

1093:                                             ; preds = %1089
  %1094 = sext i8 %1091 to i32
  %1095 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1771, i32 noundef %1094) #5
  br label %1096

1096:                                             ; preds = %1093, %1089
  %1097 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 157
  %1098 = load i8, ptr %1097, align 1, !tbaa !168
  %1099 = icmp eq i8 %1098, 0
  br i1 %1099, label %1103, label %1100

1100:                                             ; preds = %1096
  %1101 = sext i8 %1098 to i32
  %1102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1772, i32 noundef %1101) #5
  br label %1103

1103:                                             ; preds = %1100, %1096
  %1104 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 158
  %1105 = load i8, ptr %1104, align 4, !tbaa !169
  %1106 = icmp eq i8 %1105, 0
  br i1 %1106, label %1110, label %1107

1107:                                             ; preds = %1103
  %1108 = sext i8 %1105 to i32
  %1109 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1773, i32 noundef %1108) #5
  br label %1110

1110:                                             ; preds = %1107, %1103
  %1111 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 159
  %1112 = load i8, ptr %1111, align 1, !tbaa !170
  %1113 = icmp eq i8 %1112, 0
  br i1 %1113, label %1117, label %1114

1114:                                             ; preds = %1110
  %1115 = sext i8 %1112 to i32
  %1116 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1774, i32 noundef %1115) #5
  br label %1117

1117:                                             ; preds = %1114, %1110
  %1118 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 160
  %1119 = load i8, ptr %1118, align 2, !tbaa !171
  %1120 = icmp eq i8 %1119, 0
  br i1 %1120, label %1124, label %1121

1121:                                             ; preds = %1117
  %1122 = sext i8 %1119 to i32
  %1123 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1775, i32 noundef %1122) #5
  br label %1124

1124:                                             ; preds = %1121, %1117
  %1125 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 161
  %1126 = load i8, ptr %1125, align 1, !tbaa !172
  %1127 = icmp eq i8 %1126, 0
  br i1 %1127, label %1131, label %1128

1128:                                             ; preds = %1124
  %1129 = sext i8 %1126 to i32
  %1130 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1776, i32 noundef %1129) #5
  br label %1131

1131:                                             ; preds = %1128, %1124
  %1132 = getelementptr inbounds %struct.cl_optimization, ptr %2, i64 0, i32 162
  %1133 = load i8, ptr %1132, align 4, !tbaa !173
  %1134 = icmp eq i8 %1133, 0
  br i1 %1134, label %1138, label %1135

1135:                                             ; preds = %1131
  %1136 = sext i8 %1133 to i32
  %1137 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1777, i32 noundef %1136) #5
  br label %1138

1138:                                             ; preds = %1135, %1131
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cl_target_option_save(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 107, i32 1), align 8, !tbaa !188
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void %2(ptr noundef %0) #4
  br label %5

5:                                                ; preds = %4, %1
  %6 = load i32, ptr @target_flags, align 4, !tbaa !6
  %7 = getelementptr inbounds %struct.cl_target_option, ptr %0, i64 0, i32 2
  store i32 %6, ptr %7, align 4, !tbaa !189
  %8 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !6
  %9 = getelementptr inbounds %struct.cl_target_option, ptr %0, i64 0, i32 3
  store i32 %8, ptr %9, align 4, !tbaa !191
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cl_target_option_restore(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.cl_target_option, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !189
  store i32 %3, ptr @target_flags, align 4, !tbaa !6
  %4 = getelementptr inbounds %struct.cl_target_option, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !191
  store i32 %5, ptr @ix86_isa_flags, align 4, !tbaa !6
  %6 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 107, i32 2), align 8, !tbaa !192
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  tail call void %6(ptr noundef nonnull %0) #4
  br label %9

9:                                                ; preds = %8, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cl_target_option_print(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @fputs(ptr noundef nonnull @.str.1612, ptr noundef %0) #5
  %5 = getelementptr inbounds %struct.cl_target_option, ptr %2, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !189
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1778, i32 noundef %6) #5
  br label %10

10:                                               ; preds = %8, %3
  %11 = getelementptr inbounds %struct.cl_target_option, ptr %2, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !191
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1613, i32 noundef %1, ptr noundef nonnull @.str.1614, ptr noundef nonnull @.str.1779, i32 noundef %12) #5
  br label %16

16:                                               ; preds = %14, %10
  %17 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 107, i32 3), align 8, !tbaa !193
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void %17(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2) #4
  br label %20

20:                                               ; preds = %19, %16
  ret void
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 0}
!11 = !{!"cl_optimization", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !8, i64 24, !8, i64 25, !8, i64 26, !8, i64 27, !8, i64 28, !8, i64 29, !8, i64 30, !8, i64 31, !8, i64 32, !8, i64 33, !8, i64 34, !8, i64 35, !8, i64 36, !8, i64 37, !8, i64 38, !8, i64 39, !8, i64 40, !8, i64 41, !8, i64 42, !8, i64 43, !8, i64 44, !8, i64 45, !8, i64 46, !8, i64 47, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !8, i64 52, !8, i64 53, !8, i64 54, !8, i64 55, !8, i64 56, !8, i64 57, !8, i64 58, !8, i64 59, !8, i64 60, !8, i64 61, !8, i64 62, !8, i64 63, !8, i64 64, !8, i64 65, !8, i64 66, !8, i64 67, !8, i64 68, !8, i64 69, !8, i64 70, !8, i64 71, !8, i64 72, !8, i64 73, !8, i64 74, !8, i64 75, !8, i64 76, !8, i64 77, !8, i64 78, !8, i64 79, !8, i64 80, !8, i64 81, !8, i64 82, !8, i64 83, !8, i64 84, !8, i64 85, !8, i64 86, !8, i64 87, !8, i64 88, !8, i64 89, !8, i64 90, !8, i64 91, !8, i64 92, !8, i64 93, !8, i64 94, !8, i64 95, !8, i64 96, !8, i64 97, !8, i64 98, !8, i64 99, !8, i64 100, !8, i64 101, !8, i64 102, !8, i64 103, !8, i64 104, !8, i64 105, !8, i64 106, !8, i64 107, !8, i64 108, !8, i64 109, !8, i64 110, !8, i64 111, !8, i64 112, !8, i64 113, !8, i64 114, !8, i64 115, !8, i64 116, !8, i64 117, !8, i64 118, !8, i64 119, !8, i64 120, !8, i64 121, !8, i64 122, !8, i64 123, !8, i64 124, !8, i64 125, !8, i64 126, !8, i64 127, !8, i64 128, !8, i64 129, !8, i64 130, !8, i64 131, !8, i64 132, !8, i64 133, !8, i64 134, !8, i64 135, !8, i64 136, !8, i64 137, !8, i64 138, !8, i64 139, !8, i64 140, !8, i64 141, !8, i64 142, !8, i64 143, !8, i64 144, !8, i64 145, !8, i64 146, !8, i64 147, !8, i64 148, !8, i64 149, !8, i64 150, !8, i64 151, !8, i64 152, !8, i64 153, !8, i64 154, !8, i64 155, !8, i64 156, !8, i64 157, !8, i64 158, !8, i64 159, !8, i64 160, !8, i64 161, !8, i64 162, !8, i64 163, !8, i64 164, !8, i64 165, !8, i64 166, !8, i64 167, !8, i64 168, !8, i64 169, !8, i64 170, !8, i64 171, !8, i64 172, !8, i64 173, !8, i64 174, !8, i64 175, !8, i64 176, !8, i64 177, !8, i64 178, !8, i64 179, !8, i64 180}
!12 = !{!11, !7, i64 4}
!13 = !{!11, !7, i64 8}
!14 = !{!11, !7, i64 12}
!15 = !{!11, !7, i64 16}
!16 = !{!11, !7, i64 20}
!17 = !{!11, !8, i64 24}
!18 = !{!11, !8, i64 25}
!19 = !{!11, !8, i64 26}
!20 = !{!11, !8, i64 27}
!21 = !{!11, !8, i64 28}
!22 = !{!11, !8, i64 29}
!23 = !{!11, !8, i64 30}
!24 = !{!11, !8, i64 31}
!25 = !{!11, !8, i64 32}
!26 = !{!11, !8, i64 33}
!27 = !{!11, !8, i64 34}
!28 = !{!11, !8, i64 35}
!29 = !{!11, !8, i64 36}
!30 = !{!11, !8, i64 37}
!31 = !{!11, !8, i64 38}
!32 = !{!11, !8, i64 39}
!33 = !{!11, !8, i64 40}
!34 = !{!11, !8, i64 41}
!35 = !{!11, !8, i64 42}
!36 = !{!11, !8, i64 43}
!37 = !{!11, !8, i64 44}
!38 = !{!11, !8, i64 45}
!39 = !{!11, !8, i64 46}
!40 = !{!11, !8, i64 47}
!41 = !{!11, !8, i64 48}
!42 = !{!11, !8, i64 49}
!43 = !{!11, !8, i64 50}
!44 = !{!11, !8, i64 51}
!45 = !{!11, !8, i64 52}
!46 = !{!11, !8, i64 53}
!47 = !{!11, !8, i64 54}
!48 = !{!11, !8, i64 55}
!49 = !{!11, !8, i64 56}
!50 = !{!11, !8, i64 57}
!51 = !{!11, !8, i64 58}
!52 = !{!11, !8, i64 59}
!53 = !{!11, !8, i64 60}
!54 = !{!11, !8, i64 61}
!55 = !{!11, !8, i64 62}
!56 = !{!11, !8, i64 63}
!57 = !{!11, !8, i64 64}
!58 = !{!11, !8, i64 65}
!59 = !{!11, !8, i64 66}
!60 = !{!11, !8, i64 67}
!61 = !{!11, !8, i64 68}
!62 = !{!11, !8, i64 69}
!63 = !{!11, !8, i64 70}
!64 = !{!11, !8, i64 71}
!65 = !{!11, !8, i64 72}
!66 = !{!11, !8, i64 73}
!67 = !{!11, !8, i64 74}
!68 = !{!11, !8, i64 75}
!69 = !{!11, !8, i64 76}
!70 = !{!11, !8, i64 77}
!71 = !{!11, !8, i64 78}
!72 = !{!11, !8, i64 79}
!73 = !{!11, !8, i64 80}
!74 = !{!11, !8, i64 81}
!75 = !{!11, !8, i64 82}
!76 = !{!11, !8, i64 83}
!77 = !{!11, !8, i64 84}
!78 = !{!11, !8, i64 85}
!79 = !{!11, !8, i64 86}
!80 = !{!11, !8, i64 87}
!81 = !{!11, !8, i64 88}
!82 = !{!11, !8, i64 89}
!83 = !{!11, !8, i64 90}
!84 = !{!11, !8, i64 91}
!85 = !{!11, !8, i64 92}
!86 = !{!11, !8, i64 93}
!87 = !{!11, !8, i64 94}
!88 = !{!11, !8, i64 95}
!89 = !{!11, !8, i64 96}
!90 = !{!11, !8, i64 97}
!91 = !{!11, !8, i64 98}
!92 = !{!11, !8, i64 99}
!93 = !{!11, !8, i64 100}
!94 = !{!11, !8, i64 101}
!95 = !{!11, !8, i64 102}
!96 = !{!11, !8, i64 103}
!97 = !{!11, !8, i64 104}
!98 = !{!11, !8, i64 105}
!99 = !{!11, !8, i64 106}
!100 = !{!11, !8, i64 107}
!101 = !{!11, !8, i64 108}
!102 = !{!11, !8, i64 109}
!103 = !{!11, !8, i64 110}
!104 = !{!11, !8, i64 111}
!105 = !{!11, !8, i64 112}
!106 = !{!11, !8, i64 113}
!107 = !{!11, !8, i64 114}
!108 = !{!11, !8, i64 115}
!109 = !{!11, !8, i64 116}
!110 = !{!11, !8, i64 117}
!111 = !{!11, !8, i64 118}
!112 = !{!11, !8, i64 119}
!113 = !{!11, !8, i64 120}
!114 = !{!11, !8, i64 121}
!115 = !{!11, !8, i64 122}
!116 = !{!11, !8, i64 123}
!117 = !{!11, !8, i64 124}
!118 = !{!11, !8, i64 125}
!119 = !{!11, !8, i64 126}
!120 = !{!11, !8, i64 127}
!121 = !{!11, !8, i64 128}
!122 = !{!11, !8, i64 129}
!123 = !{!11, !8, i64 130}
!124 = !{!11, !8, i64 131}
!125 = !{!11, !8, i64 132}
!126 = !{!11, !8, i64 133}
!127 = !{!11, !8, i64 134}
!128 = !{!11, !8, i64 135}
!129 = !{!11, !8, i64 136}
!130 = !{!11, !8, i64 137}
!131 = !{!11, !8, i64 138}
!132 = !{!11, !8, i64 139}
!133 = !{!11, !8, i64 140}
!134 = !{!11, !8, i64 141}
!135 = !{!11, !8, i64 142}
!136 = !{!11, !8, i64 143}
!137 = !{!11, !8, i64 144}
!138 = !{!11, !8, i64 145}
!139 = !{!11, !8, i64 146}
!140 = !{!11, !8, i64 147}
!141 = !{!11, !8, i64 148}
!142 = !{!11, !8, i64 149}
!143 = !{!11, !8, i64 150}
!144 = !{!11, !8, i64 151}
!145 = !{!11, !8, i64 152}
!146 = !{!11, !8, i64 153}
!147 = !{!11, !8, i64 154}
!148 = !{!11, !8, i64 155}
!149 = !{!11, !8, i64 156}
!150 = !{!11, !8, i64 157}
!151 = !{!11, !8, i64 158}
!152 = !{!11, !8, i64 159}
!153 = !{!11, !8, i64 160}
!154 = !{!11, !8, i64 161}
!155 = !{!11, !8, i64 162}
!156 = !{!11, !8, i64 163}
!157 = !{!11, !8, i64 164}
!158 = !{!11, !8, i64 165}
!159 = !{!11, !8, i64 166}
!160 = !{!11, !8, i64 167}
!161 = !{!11, !8, i64 168}
!162 = !{!11, !8, i64 169}
!163 = !{!11, !8, i64 170}
!164 = !{!11, !8, i64 171}
!165 = !{!11, !8, i64 172}
!166 = !{!11, !8, i64 173}
!167 = !{!11, !8, i64 174}
!168 = !{!11, !8, i64 175}
!169 = !{!11, !8, i64 176}
!170 = !{!11, !8, i64 177}
!171 = !{!11, !8, i64 178}
!172 = !{!11, !8, i64 179}
!173 = !{!11, !8, i64 180}
!174 = !{!175, !177, i64 752}
!175 = !{!"gcc_target", !176, i64 0, !179, i64 368, !180, i64 664, !7, i64 744, !177, i64 752, !177, i64 760, !177, i64 768, !177, i64 776, !177, i64 784, !177, i64 792, !177, i64 800, !177, i64 808, !177, i64 816, !177, i64 824, !177, i64 832, !177, i64 840, !177, i64 848, !177, i64 856, !177, i64 864, !177, i64 872, !177, i64 880, !177, i64 888, !177, i64 896, !177, i64 904, !177, i64 912, !177, i64 920, !177, i64 928, !177, i64 936, !177, i64 944, !177, i64 952, !177, i64 960, !177, i64 968, !177, i64 976, !177, i64 984, !177, i64 992, !177, i64 1000, !177, i64 1008, !177, i64 1016, !177, i64 1024, !177, i64 1032, !177, i64 1040, !177, i64 1048, !177, i64 1056, !181, i64 1064, !181, i64 1072, !177, i64 1080, !177, i64 1088, !177, i64 1096, !177, i64 1104, !177, i64 1112, !177, i64 1120, !177, i64 1128, !177, i64 1136, !177, i64 1144, !177, i64 1152, !177, i64 1160, !177, i64 1168, !182, i64 1176, !177, i64 1232, !177, i64 1240, !177, i64 1248, !177, i64 1256, !177, i64 1264, !177, i64 1272, !177, i64 1280, !177, i64 1288, !177, i64 1296, !177, i64 1304, !177, i64 1312, !177, i64 1320, !177, i64 1328, !177, i64 1336, !177, i64 1344, !177, i64 1352, !177, i64 1360, !177, i64 1368, !177, i64 1376, !177, i64 1384, !177, i64 1392, !177, i64 1400, !177, i64 1408, !177, i64 1416, !177, i64 1424, !177, i64 1432, !177, i64 1440, !177, i64 1448, !177, i64 1456, !181, i64 1464, !183, i64 1472, !177, i64 1664, !177, i64 1672, !177, i64 1680, !177, i64 1688, !177, i64 1696, !177, i64 1704, !177, i64 1712, !177, i64 1720, !177, i64 1728, !177, i64 1736, !177, i64 1744, !177, i64 1752, !177, i64 1760, !177, i64 1768, !177, i64 1776, !184, i64 1784, !185, i64 1792, !186, i64 1896, !187, i64 1968, !177, i64 2016, !8, i64 2024, !8, i64 2025, !8, i64 2026, !8, i64 2027, !8, i64 2028, !8, i64 2029, !8, i64 2030, !8, i64 2031, !8, i64 2032, !8, i64 2033, !8, i64 2034, !8, i64 2035}
!176 = !{!"asm_out", !177, i64 0, !177, i64 8, !177, i64 16, !178, i64 24, !178, i64 56, !177, i64 88, !177, i64 96, !177, i64 104, !177, i64 112, !177, i64 120, !177, i64 128, !177, i64 136, !177, i64 144, !177, i64 152, !177, i64 160, !177, i64 168, !177, i64 176, !177, i64 184, !177, i64 192, !177, i64 200, !177, i64 208, !177, i64 216, !177, i64 224, !177, i64 232, !177, i64 240, !177, i64 248, !177, i64 256, !177, i64 264, !177, i64 272, !177, i64 280, !177, i64 288, !177, i64 296, !177, i64 304, !177, i64 312, !177, i64 320, !177, i64 328, !177, i64 336, !177, i64 344, !177, i64 352, !177, i64 360}
!177 = !{!"any pointer", !8, i64 0}
!178 = !{!"asm_int_op", !177, i64 0, !177, i64 8, !177, i64 16, !177, i64 24}
!179 = !{!"sched", !177, i64 0, !177, i64 8, !177, i64 16, !177, i64 24, !177, i64 32, !177, i64 40, !177, i64 48, !177, i64 56, !177, i64 64, !177, i64 72, !177, i64 80, !177, i64 88, !177, i64 96, !177, i64 104, !177, i64 112, !177, i64 120, !177, i64 128, !177, i64 136, !177, i64 144, !177, i64 152, !177, i64 160, !177, i64 168, !177, i64 176, !177, i64 184, !177, i64 192, !177, i64 200, !177, i64 208, !177, i64 216, !177, i64 224, !177, i64 232, !177, i64 240, !177, i64 248, !177, i64 256, !177, i64 264, !177, i64 272, !177, i64 280, !177, i64 288}
!180 = !{!"vectorize", !177, i64 0, !177, i64 8, !177, i64 16, !177, i64 24, !177, i64 32, !177, i64 40, !177, i64 48, !177, i64 56, !177, i64 64, !177, i64 72}
!181 = !{!"long", !8, i64 0}
!182 = !{!"addr_space", !177, i64 0, !177, i64 8, !177, i64 16, !177, i64 24, !177, i64 32, !177, i64 40, !177, i64 48}
!183 = !{!"calls", !177, i64 0, !177, i64 8, !177, i64 16, !177, i64 24, !177, i64 32, !177, i64 40, !177, i64 48, !177, i64 56, !177, i64 64, !177, i64 72, !177, i64 80, !177, i64 88, !177, i64 96, !177, i64 104, !177, i64 112, !177, i64 120, !177, i64 128, !177, i64 136, !177, i64 144, !177, i64 152, !177, i64 160, !177, i64 168, !177, i64 176, !177, i64 184}
!184 = !{!"c", !177, i64 0}
!185 = !{!"cxx", !177, i64 0, !177, i64 8, !177, i64 16, !177, i64 24, !177, i64 32, !177, i64 40, !177, i64 48, !177, i64 56, !177, i64 64, !177, i64 72, !177, i64 80, !177, i64 88, !177, i64 96}
!186 = !{!"emutls", !177, i64 0, !177, i64 8, !177, i64 16, !177, i64 24, !177, i64 32, !177, i64 40, !177, i64 48, !177, i64 56, !8, i64 64, !8, i64 65}
!187 = !{!"target_option_hooks", !177, i64 0, !177, i64 8, !177, i64 16, !177, i64 24, !177, i64 32, !177, i64 40}
!188 = !{!175, !177, i64 1976}
!189 = !{!190, !7, i64 8}
!190 = !{!"cl_target_option", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !8, i64 19, !8, i64 20, !8, i64 21, !8, i64 22}
!191 = !{!190, !7, i64 12}
!192 = !{!175, !177, i64 1984}
!193 = !{!175, !177, i64 1992}
