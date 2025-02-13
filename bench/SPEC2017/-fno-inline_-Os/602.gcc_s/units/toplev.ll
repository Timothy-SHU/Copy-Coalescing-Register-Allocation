; ModuleID = 'toplev.c'
source_filename = "toplev.c"
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
%struct.host_hooks = type { ptr, ptr, ptr, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.gcc_debug_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.pretty_print_info = type { ptr, ptr, i32, i32, i32, %struct.pp_wrapping_mode_t, ptr, i8, i8, i8 }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.varpool_node = type { ptr, ptr, ptr, ptr, i32, i8 }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.rlimit = type { i64, i64 }
%struct.cl_option_state = type { ptr, i64, i8 }
%struct.text_info = type { ptr, ptr, i32, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.line_maps = type { ptr, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr }
%struct.timeval = type { i64, i64 }

@progname = dso_local local_unnamed_addr global ptr null, align 8
@main_input_filename = dso_local global ptr null, align 8
@input_location = dso_local local_unnamed_addr global i32 0, align 4
@line_table = dso_local local_unnamed_addr global ptr null, align 8
@dump_base_name = dso_local local_unnamed_addr global ptr null, align 8
@dump_dir_name = dso_local local_unnamed_addr global ptr null, align 8
@aux_base_name = dso_local local_unnamed_addr global ptr null, align 8
@profile_data_prefix = dso_local local_unnamed_addr global ptr null, align 8
@target_flags_explicit = dso_local local_unnamed_addr global i32 0, align 4
@debug_hooks = dso_local local_unnamed_addr global ptr null, align 8
@rtl_dump_and_exit = dso_local local_unnamed_addr global i32 0, align 4
@flag_print_asm_name = dso_local local_unnamed_addr global i32 0, align 4
@graph_dump_format = dso_local local_unnamed_addr global i32 0, align 4
@asm_file_name = dso_local local_unnamed_addr global ptr null, align 8
@flag_generate_lto = dso_local local_unnamed_addr global i32 0, align 4
@current_function_decl = dso_local local_unnamed_addr global ptr null, align 8
@current_function_func_begin_label = dso_local local_unnamed_addr global ptr null, align 8
@local_tick = dso_local local_unnamed_addr global i32 0, align 4
@flag_signed_char = dso_local local_unnamed_addr global i32 0, align 4
@flag_short_enums = dso_local local_unnamed_addr global i32 0, align 4
@aux_info_file_name = dso_local local_unnamed_addr global ptr null, align 8
@flag_shlib = dso_local local_unnamed_addr global i32 0, align 4
@stack_limit_rtx = dso_local local_unnamed_addr global ptr null, align 8
@align_loops_log = dso_local local_unnamed_addr global i32 0, align 4
@align_loops_max_skip = dso_local local_unnamed_addr global i32 0, align 4
@align_jumps_log = dso_local local_unnamed_addr global i32 0, align 4
@align_jumps_max_skip = dso_local local_unnamed_addr global i32 0, align 4
@align_labels_log = dso_local local_unnamed_addr global i32 0, align 4
@align_labels_max_skip = dso_local local_unnamed_addr global i32 0, align 4
@align_functions_log = dso_local local_unnamed_addr global i32 0, align 4
@user_label_prefix = dso_local local_unnamed_addr global ptr null, align 8
@asm_out_file = dso_local local_unnamed_addr global ptr null, align 8
@aux_info_file = dso_local local_unnamed_addr global ptr null, align 8
@dump_file_name = dso_local local_unnamed_addr global ptr null, align 8
@optimize = dso_local local_unnamed_addr global i32 3, align 4
@optimize_size = dso_local local_unnamed_addr global i32 0, align 4
@in_lto_p = dso_local local_unnamed_addr global i8 0, align 1
@flag_detailed_statistics = dso_local local_unnamed_addr global i32 0, align 4
@flag_pcc_struct_return = dso_local local_unnamed_addr global i32 1, align 4
@flag_complex_method = dso_local local_unnamed_addr global i32 1, align 4
@flag_gen_aux_info = dso_local local_unnamed_addr global i32 0, align 4
@flag_next_runtime = dso_local local_unnamed_addr global i32 0, align 4
@flag_tls_default = dso_local local_unnamed_addr global i32 2, align 4
@flag_ira_algorithm = dso_local local_unnamed_addr global i32 0, align 4
@flag_ira_region = dso_local local_unnamed_addr global i32 2, align 4
@flag_ira_verbose = dso_local local_unnamed_addr global i32 5, align 4
@flag_excess_precision_cmdline = dso_local local_unnamed_addr global i32 0, align 4
@flag_excess_precision = dso_local local_unnamed_addr global i32 0, align 4
@flag_pedantic_errors = dso_local local_unnamed_addr global i32 0, align 4
@flag_permissive = dso_local local_unnamed_addr global i32 0, align 4
@flag_debug_asm = dso_local local_unnamed_addr global i32 0, align 4
@flag_dump_rtl_in_asm = dso_local local_unnamed_addr global i32 0, align 4
@flag_var_tracking = dso_local local_unnamed_addr global i32 2, align 4
@flag_var_tracking_assignments = dso_local local_unnamed_addr global i32 2, align 4
@flag_var_tracking_assignments_toggle = dso_local local_unnamed_addr global i32 0, align 4
@flag_stack_check = dso_local local_unnamed_addr global i32 0, align 4
@user_defined_section_attribute = dso_local local_unnamed_addr global i8 0, align 1
@flag_evaluation_order = dso_local local_unnamed_addr global i32 0, align 4
@dump_file = dso_local local_unnamed_addr global ptr null, align 8
@src_pwd = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@quiet_flag = external local_unnamed_addr global i32, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@global_dc = external local_unnamed_addr global ptr, align 8
@flag_random_seed = internal unnamed_addr global ptr null, align 8
@init_random_seed.random_seed = internal global [19 x i8] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@.str.4 = private unnamed_addr constant [28 x i8] c"invalid option argument %qs\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"\09.file\09\00", align 1
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@cgraph_global_info_ready = external local_unnamed_addr global i8, align 1
@flag_keep_static_consts = external local_unnamed_addr global i32, align 4
@warn_unused_function = external local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"%q+F used but never defined\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"%q+F declared %<static%> but never defined\00", align 1
@warn_unused_variable = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"%q+D defined but not used\00", align 1
@timevar_enable = external local_unnamed_addr global i8, align 1
@warn_deprecated_decl = external local_unnamed_addr global i32, align 4
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.11 = private unnamed_addr constant [11 x i8] c"deprecated\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"%qD is deprecated (declared at %s:%d): %s\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"%qD is deprecated (declared at %s:%d)\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"%qE is deprecated (declared at %s:%d): %s\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"%qE is deprecated (declared at %s:%d)\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"type is deprecated (declared at %s:%d): %s\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"type is deprecated (declared at %s:%d)\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"%qE is deprecated: %s\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"%qE is deprecated\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"type is deprecated: %s\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"type is deprecated\00", align 1
@set_yydebug = internal unnamed_addr global i1 false, align 4
@.str.22 = private unnamed_addr constant [38 x i8] c"unrecognized gcc debugging option: %c\00", align 1
@.str.23 = private unnamed_addr constant [41 x i8] c"getting core file size maximum limit: %m\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"setting core file size limit to maximum: %m\00", align 1
@debug_type_names = dso_local local_unnamed_addr constant [6 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], align 16
@.str.25 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"stabs\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"coff\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"dwarf-2\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"xcoff\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"vms\00", align 1
@print_version.fmt1 = internal constant [59 x i8] c"%s%s%s %sversion %s (%s)\0A%s\09compiled by GNU C version %s, \00", align 16
@.str.31 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.32 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@pkgversion_string = external constant [0 x i8], align 1
@version_string = external constant [0 x i8], align 1
@.str.33 = private unnamed_addr constant [78 x i8] c"Ubuntu Clang 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@cl_options_count = external local_unnamed_addr constant i32, align 4
@flag_pic = external local_unnamed_addr global i32, align 4
@flag_pie = external local_unnamed_addr global i32, align 4
@target_flags = external global i32, align 4
@cl_options = external local_unnamed_addr constant [0 x %struct.cl_option], align 8
@.str.34 = private unnamed_addr constant [50 x i8] c"created and used with different settings of -fpic\00", align 1
@.str.35 = private unnamed_addr constant [50 x i8] c"created and used with different settings of -fpie\00", align 1
@.str.36 = private unnamed_addr constant [49 x i8] c"created and used with differing settings of '%s'\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"<anonymous>\00", align 1
@caller_save_initialized_p = external local_unnamed_addr global i8, align 1
@align_loops = external local_unnamed_addr global i32, align 4
@align_jumps = external local_unnamed_addr global i32, align 4
@align_labels = external local_unnamed_addr global i32, align 4
@align_functions = external local_unnamed_addr global i32, align 4
@.str.39 = private unnamed_addr constant [9 x i8] c"toplev.c\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@flag_unsafe_math_optimizations = external local_unnamed_addr global i32, align 4
@ix86_fpmath = external local_unnamed_addr global i32, align 4
@save_argv = internal unnamed_addr global ptr null, align 8
@version_flag = external local_unnamed_addr global i32, align 4
@help_flag = external local_unnamed_addr global i32, align 4
@exit_after_options = external local_unnamed_addr global i8, align 1
@host_hooks = external local_unnamed_addr constant %struct.host_hooks, align 8
@lang_independent_params = internal constant [120 x %struct.param_info] [%struct.param_info { ptr @.str.43, i32 10, i8 0, i32 0, i32 100, ptr @.str.44 }, %struct.param_info { ptr @.str.45, i32 2, i8 0, i32 0, i32 50, ptr @.str.46 }, %struct.param_info { ptr @.str.47, i32 400, i8 0, i32 0, i32 0, ptr @.str.48 }, %struct.param_info { ptr @.str.49, i32 50, i8 0, i32 0, i32 0, ptr @.str.50 }, %struct.param_info { ptr @.str.51, i32 450, i8 0, i32 0, i32 0, ptr @.str.52 }, %struct.param_info { ptr @.str.53, i32 450, i8 0, i32 0, i32 0, ptr @.str.54 }, %struct.param_info { ptr @.str.55, i32 8, i8 0, i32 0, i32 0, ptr @.str.56 }, %struct.param_info { ptr @.str.57, i32 8, i8 0, i32 0, i32 0, ptr @.str.58 }, %struct.param_info { ptr @.str.59, i32 10, i8 0, i32 0, i32 0, ptr @.str.60 }, %struct.param_info { ptr @.str.61, i32 10, i8 0, i32 0, i32 0, ptr @.str.62 }, %struct.param_info { ptr @.str.63, i32 1, i8 0, i32 0, i32 0, ptr @.str.64 }, %struct.param_info { ptr @.str.65, i32 1, i8 0, i32 1, i32 0, ptr @.str.66 }, %struct.param_info { ptr @.str.67, i32 100, i8 0, i32 0, i32 0, ptr @.str.68 }, %struct.param_info { ptr @.str.69, i32 333, i8 0, i32 0, i32 0, ptr @.str.70 }, %struct.param_info { ptr @.str.71, i32 32, i8 0, i32 0, i32 0, ptr @.str.72 }, %struct.param_info { ptr @.str.73, i32 2700, i8 0, i32 0, i32 0, ptr @.str.74 }, %struct.param_info { ptr @.str.75, i32 500, i8 0, i32 0, i32 0, ptr @.str.76 }, %struct.param_info { ptr @.str.77, i32 10000, i8 0, i32 0, i32 0, ptr @.str.78 }, %struct.param_info { ptr @.str.79, i32 30, i8 0, i32 0, i32 0, ptr @.str.80 }, %struct.param_info { ptr @.str.81, i32 10, i8 0, i32 0, i32 0, ptr @.str.82 }, %struct.param_info { ptr @.str.83, i32 8, i8 0, i32 0, i32 0, ptr @.str.84 }, %struct.param_info { ptr @.str.85, i32 256, i8 0, i32 0, i32 0, ptr @.str.86 }, %struct.param_info { ptr @.str.87, i32 1000, i8 0, i32 0, i32 0, ptr @.str.88 }, %struct.param_info { ptr @.str.89, i32 52428800, i8 0, i32 0, i32 0, ptr @.str.90 }, %struct.param_info { ptr @.str.91, i32 3, i8 0, i32 0, i32 0, ptr @.str.92 }, %struct.param_info { ptr @.str.93, i32 10, i8 0, i32 0, i32 0, ptr @.str.94 }, %struct.param_info { ptr @.str.95, i32 200, i8 0, i32 0, i32 0, ptr @.str.96 }, %struct.param_info { ptr @.str.97, i32 80, i8 0, i32 0, i32 0, ptr @.str.98 }, %struct.param_info { ptr @.str.99, i32 8, i8 0, i32 0, i32 0, ptr @.str.100 }, %struct.param_info { ptr @.str.101, i32 400, i8 0, i32 0, i32 0, ptr @.str.102 }, %struct.param_info { ptr @.str.103, i32 16, i8 0, i32 0, i32 0, ptr @.str.104 }, %struct.param_info { ptr @.str.105, i32 400, i8 0, i32 0, i32 0, ptr @.str.106 }, %struct.param_info { ptr @.str.107, i32 16, i8 0, i32 0, i32 0, ptr @.str.108 }, %struct.param_info { ptr @.str.109, i32 400, i8 0, i32 0, i32 0, ptr @.str.110 }, %struct.param_info { ptr @.str.111, i32 8, i8 0, i32 0, i32 0, ptr @.str.112 }, %struct.param_info { ptr @.str.113, i32 50, i8 0, i32 0, i32 0, ptr @.str.114 }, %struct.param_info { ptr @.str.115, i32 3, i8 0, i32 0, i32 0, ptr @.str.116 }, %struct.param_info { ptr @.str.117, i32 1000, i8 0, i32 0, i32 0, ptr @.str.118 }, %struct.param_info { ptr @.str.119, i32 10, i8 0, i32 0, i32 0, ptr @.str.120 }, %struct.param_info { ptr @.str.121, i32 100, i8 0, i32 0, i32 0, ptr @.str.122 }, %struct.param_info { ptr @.str.123, i32 0, i8 0, i32 0, i32 0, ptr @.str.124 }, %struct.param_info { ptr @.str.125, i32 0, i8 0, i32 0, i32 0, ptr @.str.126 }, %struct.param_info { ptr @.str.127, i32 10000, i8 0, i32 0, i32 0, ptr @.str.128 }, %struct.param_info { ptr @.str.129, i32 1000, i8 0, i32 0, i32 0, ptr @.str.130 }, %struct.param_info { ptr @.str.131, i32 100, i8 0, i32 0, i32 0, ptr @.str.132 }, %struct.param_info { ptr @.str.133, i32 4, i8 0, i32 0, i32 0, ptr @.str.134 }, %struct.param_info { ptr @.str.135, i32 100, i8 0, i32 0, i32 0, ptr @.str.136 }, %struct.param_info { ptr @.str.137, i32 95, i8 0, i32 0, i32 100, ptr @.str.138 }, %struct.param_info { ptr @.str.139, i32 75, i8 0, i32 0, i32 100, ptr @.str.140 }, %struct.param_info { ptr @.str.141, i32 100, i8 0, i32 0, i32 0, ptr @.str.142 }, %struct.param_info { ptr @.str.143, i32 10, i8 0, i32 0, i32 100, ptr @.str.144 }, %struct.param_info { ptr @.str.145, i32 80, i8 0, i32 0, i32 100, ptr @.str.146 }, %struct.param_info { ptr @.str.147, i32 50, i8 0, i32 0, i32 100, ptr @.str.148 }, %struct.param_info { ptr @.str.149, i32 100, i8 0, i32 0, i32 0, ptr @.str.150 }, %struct.param_info { ptr @.str.151, i32 5, i8 0, i32 0, i32 0, ptr @.str.152 }, %struct.param_info { ptr @.str.153, i32 8, i8 0, i32 0, i32 0, ptr @.str.154 }, %struct.param_info { ptr @.str.155, i32 8, i8 0, i32 0, i32 0, ptr @.str.156 }, %struct.param_info { ptr @.str.157, i32 10, i8 0, i32 0, i32 0, ptr @.str.158 }, %struct.param_info { ptr @.str.159, i32 1000, i8 0, i32 0, i32 0, ptr @.str.160 }, %struct.param_info { ptr @.str.161, i32 20, i8 0, i32 0, i32 0, ptr @.str.162 }, %struct.param_info { ptr @.str.163, i32 30, i8 0, i32 0, i32 0, ptr @.str.164 }, %struct.param_info { ptr @.str.165, i32 250, i8 0, i32 0, i32 0, ptr @.str.166 }, %struct.param_info { ptr @.str.167, i32 10, i8 0, i32 0, i32 0, ptr @.str.168 }, %struct.param_info { ptr @.str.169, i32 20, i8 0, i32 0, i32 0, ptr @.str.170 }, %struct.param_info { ptr @.str.171, i32 128, i8 0, i32 0, i32 0, ptr @.str.172 }, %struct.param_info { ptr @.str.173, i32 256, i8 0, i32 0, i32 0, ptr @.str.174 }, %struct.param_info { ptr @.str.175, i32 128, i8 0, i32 0, i32 0, ptr @.str.176 }, %struct.param_info { ptr @.str.177, i32 18, i8 0, i32 0, i32 0, ptr @.str.178 }, %struct.param_info { ptr @.str.179, i32 550, i8 0, i32 0, i32 0, ptr @.str.180 }, %struct.param_info { ptr @.str.181, i32 500, i8 0, i32 0, i32 0, ptr @.str.182 }, %struct.param_info { ptr @.str.183, i32 0, i8 0, i32 0, i32 1, ptr @.str.184 }, %struct.param_info { ptr @.str.185, i32 6, i8 0, i32 0, i32 0, ptr @.str.186 }, %struct.param_info { ptr @.str.187, i32 10, i8 0, i32 0, i32 0, ptr @.str.188 }, %struct.param_info { ptr @.str.189, i32 500, i8 0, i32 0, i32 0, ptr @.str.190 }, %struct.param_info { ptr @.str.191, i32 30, i8 0, i32 0, i32 0, ptr @.str.192 }, %struct.param_info { ptr @.str.193, i32 4096, i8 0, i32 0, i32 0, ptr @.str.194 }, %struct.param_info { ptr @.str.195, i32 100, i8 0, i32 0, i32 0, ptr @.str.196 }, %struct.param_info { ptr @.str.197, i32 10, i8 0, i32 0, i32 0, ptr @.str.198 }, %struct.param_info { ptr @.str.199, i32 100, i8 0, i32 0, i32 0, ptr @.str.200 }, %struct.param_info { ptr @.str.201, i32 15, i8 0, i32 0, i32 0, ptr @.str.198 }, %struct.param_info { ptr @.str.202, i32 200, i8 0, i32 0, i32 0, ptr @.str.200 }, %struct.param_info { ptr @.str.203, i32 40, i8 0, i32 0, i32 0, ptr @.str.204 }, %struct.param_info { ptr @.str.205, i32 0, i8 0, i32 0, i32 0, ptr @.str.206 }, %struct.param_info { ptr @.str.207, i32 3, i8 0, i32 1, i32 10, ptr @.str.208 }, %struct.param_info { ptr @.str.209, i32 40, i8 0, i32 0, i32 100, ptr @.str.210 }, %struct.param_info { ptr @.str.211, i32 50, i8 0, i32 0, i32 0, ptr @.str.212 }, %struct.param_info { ptr @.str.213, i32 2, i8 0, i32 0, i32 0, ptr @.str.214 }, %struct.param_info { ptr @.str.215, i32 2, i8 0, i32 0, i32 0, ptr @.str.216 }, %struct.param_info { ptr @.str.217, i32 1, i8 0, i32 0, i32 0, ptr @.str.218 }, %struct.param_info { ptr @.str.219, i32 10000, i8 0, i32 0, i32 0, ptr @.str.220 }, %struct.param_info { ptr @.str.221, i32 256, i8 0, i32 2, i32 2, ptr @.str.222 }, %struct.param_info { ptr @.str.223, i32 100, i8 0, i32 0, i32 0, ptr @.str.224 }, %struct.param_info { ptr @.str.225, i32 3, i8 0, i32 0, i32 0, ptr @.str.226 }, %struct.param_info { ptr @.str.227, i32 8, i8 0, i32 1, i32 0, ptr @.str.228 }, %struct.param_info { ptr @.str.229, i32 15, i8 0, i32 0, i32 0, ptr @.str.230 }, %struct.param_info { ptr @.str.231, i32 0, i8 0, i32 0, i32 0, ptr @.str.232 }, %struct.param_info { ptr @.str.233, i32 100, i8 0, i32 0, i32 0, ptr @.str.234 }, %struct.param_info { ptr @.str.235, i32 200, i8 0, i32 0, i32 0, ptr @.str.236 }, %struct.param_info { ptr @.str.237, i32 3, i8 0, i32 0, i32 0, ptr @.str.238 }, %struct.param_info { ptr @.str.239, i32 64, i8 0, i32 0, i32 0, ptr @.str.240 }, %struct.param_info { ptr @.str.241, i32 32, i8 0, i32 0, i32 0, ptr @.str.242 }, %struct.param_info { ptr @.str.243, i32 512, i8 0, i32 0, i32 0, ptr @.str.244 }, %struct.param_info { ptr @.str.245, i32 1, i8 0, i32 0, i32 1, ptr @.str.246 }, %struct.param_info { ptr @.str.247, i32 100, i8 0, i32 0, i32 0, ptr @.str.248 }, %struct.param_info { ptr @.str.249, i32 10000, i8 0, i32 10, i32 0, ptr @.str.250 }, %struct.param_info { ptr @.str.251, i32 100, i8 0, i32 0, i32 0, ptr @.str.252 }, %struct.param_info { ptr @.str.253, i32 1000, i8 0, i32 0, i32 0, ptr @.str.254 }, %struct.param_info { ptr @.str.255, i32 2, i8 0, i32 0, i32 0, ptr @.str.256 }, %struct.param_info { ptr @.str.257, i32 8, i8 0, i32 1, i32 0, ptr @.str.258 }, %struct.param_info { ptr @.str.259, i32 51, i8 0, i32 0, i32 0, ptr @.str.260 }, %struct.param_info { ptr @.str.261, i32 10, i8 0, i32 0, i32 0, ptr @.str.262 }, %struct.param_info { ptr @.str.263, i32 100, i8 0, i32 0, i32 0, ptr @.str.264 }, %struct.param_info { ptr @.str.265, i32 10000, i8 0, i32 0, i32 0, ptr @.str.266 }, %struct.param_info { ptr @.str.267, i32 1000, i8 0, i32 0, i32 0, ptr @.str.268 }, %struct.param_info { ptr @.str.269, i32 10, i8 0, i32 0, i32 0, ptr @.str.270 }, %struct.param_info { ptr @.str.271, i32 3, i8 0, i32 0, i32 0, ptr @.str.272 }, %struct.param_info { ptr @.str.273, i32 50000000, i8 0, i32 0, i32 0, ptr @.str.274 }, %struct.param_info { ptr @.str.275, i32 0, i8 0, i32 1, i32 0, ptr @.str.276 }, %struct.param_info { ptr @.str.277, i32 2, i8 0, i32 0, i32 0, ptr @.str.278 }, %struct.param_info zeroinitializer], align 16
@this_is_asm_operands = external local_unnamed_addr global ptr, align 8
@.str.41 = private unnamed_addr constant [20 x i8] c"unrecoverable error\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"struct-reorg-cold-struct-ratio\00", align 1
@.str.44 = private unnamed_addr constant [65 x i8] c"The threshold ratio between current and hottest structure counts\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"predictable-branch-outcome\00", align 1
@.str.46 = private unnamed_addr constant [59 x i8] c"Maximal estimated outcome of branch considered predictable\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c"max-inline-insns-single\00", align 1
@.str.48 = private unnamed_addr constant [78 x i8] c"The maximum number of instructions in a single function eligible for inlining\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"max-inline-insns-auto\00", align 1
@.str.50 = private unnamed_addr constant [63 x i8] c"The maximum number of instructions when automatically inlining\00", align 1
@.str.51 = private unnamed_addr constant [27 x i8] c"max-inline-insns-recursive\00", align 1
@.str.52 = private unnamed_addr constant [86 x i8] c"The maximum number of instructions inline function can grow to via recursive inlining\00", align 1
@.str.53 = private unnamed_addr constant [32 x i8] c"max-inline-insns-recursive-auto\00", align 1
@.str.54 = private unnamed_addr constant [90 x i8] c"The maximum number of instructions non-inline function can grow to via recursive inlining\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"max-inline-recursive-depth\00", align 1
@.str.56 = private unnamed_addr constant [61 x i8] c"The maximum depth of recursive inlining for inline functions\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"max-inline-recursive-depth-auto\00", align 1
@.str.58 = private unnamed_addr constant [65 x i8] c"The maximum depth of recursive inlining for non-inline functions\00", align 1
@.str.59 = private unnamed_addr constant [33 x i8] c"min-inline-recursive-probability\00", align 1
@.str.60 = private unnamed_addr constant [90 x i8] c"Inline recursively only when the probability of call being executed exceeds the parameter\00", align 1
@.str.61 = private unnamed_addr constant [29 x i8] c"max-early-inliner-iterations\00", align 1
@.str.62 = private unnamed_addr constant [74 x i8] c"The maximum number of nested indirect inlining performed by early inliner\00", align 1
@.str.63 = private unnamed_addr constant [36 x i8] c"max-variable-expansions-in-unroller\00", align 1
@.str.64 = private unnamed_addr constant [140 x i8] c"If -fvariable-expansion-in-unroller is used, the maximum number of times that an individual variable will be expanded during loop unrolling\00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c"min-vect-loop-bound\00", align 1
@.str.66 = private unnamed_addr constant [97 x i8] c"If -ftree-vectorize is used, the minimal loop bound of a loop to be considered for vectorization\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"max-delay-slot-insn-search\00", align 1
@.str.68 = private unnamed_addr constant [68 x i8] c"The maximum number of instructions to consider to fill a delay slot\00", align 1
@.str.69 = private unnamed_addr constant [27 x i8] c"max-delay-slot-live-search\00", align 1
@.str.70 = private unnamed_addr constant [90 x i8] c"The maximum number of instructions to consider to find accurate live register information\00", align 1
@.str.71 = private unnamed_addr constant [24 x i8] c"max-pending-list-length\00", align 1
@.str.72 = private unnamed_addr constant [59 x i8] c"The maximum length of scheduling's pending operations list\00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c"large-function-insns\00", align 1
@.str.74 = private unnamed_addr constant [49 x i8] c"The size of function body to be considered large\00", align 1
@.str.75 = private unnamed_addr constant [22 x i8] c"large-function-growth\00", align 1
@.str.76 = private unnamed_addr constant [62 x i8] c"Maximal growth due to inlining of large function (in percent)\00", align 1
@.str.77 = private unnamed_addr constant [17 x i8] c"large-unit-insns\00", align 1
@.str.78 = private unnamed_addr constant [52 x i8] c"The size of translation unit to be considered large\00", align 1
@.str.79 = private unnamed_addr constant [19 x i8] c"inline-unit-growth\00", align 1
@.str.80 = private unnamed_addr constant [78 x i8] c"How much can given compilation unit grow because of the inlining (in percent)\00", align 1
@.str.81 = private unnamed_addr constant [17 x i8] c"ipcp-unit-growth\00", align 1
@.str.82 = private unnamed_addr constant [106 x i8] c"How much can given compilation unit grow because of the interprocedural constant propagation (in percent)\00", align 1
@.str.83 = private unnamed_addr constant [21 x i8] c"early-inlining-insns\00", align 1
@.str.84 = private unnamed_addr constant [82 x i8] c"Maximal estimated growth of function body caused by early inlining of single call\00", align 1
@.str.85 = private unnamed_addr constant [18 x i8] c"large-stack-frame\00", align 1
@.str.86 = private unnamed_addr constant [47 x i8] c"The size of stack frame to be considered large\00", align 1
@.str.87 = private unnamed_addr constant [25 x i8] c"large-stack-frame-growth\00", align 1
@.str.88 = private unnamed_addr constant [56 x i8] c"Maximal stack frame growth due to inlining (in percent)\00", align 1
@.str.89 = private unnamed_addr constant [16 x i8] c"max-gcse-memory\00", align 1
@.str.90 = private unnamed_addr constant [53 x i8] c"The maximum amount of memory to be allocated by GCSE\00", align 1
@.str.91 = private unnamed_addr constant [35 x i8] c"gcse-after-reload-partial-fraction\00", align 1
@.str.92 = private unnamed_addr constant [79 x i8] c"The threshold ratio for performing partial redundancy elimination after reload\00", align 1
@.str.93 = private unnamed_addr constant [36 x i8] c"gcse-after-reload-critical-fraction\00", align 1
@.str.94 = private unnamed_addr constant [113 x i8] c"The threshold ratio of critical edges execution count that permit performing redundancy elimination after reload\00", align 1
@.str.95 = private unnamed_addr constant [19 x i8] c"max-unrolled-insns\00", align 1
@.str.96 = private unnamed_addr constant [67 x i8] c"The maximum number of instructions to consider to unroll in a loop\00", align 1
@.str.97 = private unnamed_addr constant [27 x i8] c"max-average-unrolled-insns\00", align 1
@.str.98 = private unnamed_addr constant [78 x i8] c"The maximum number of instructions to consider to unroll in a loop on average\00", align 1
@.str.99 = private unnamed_addr constant [17 x i8] c"max-unroll-times\00", align 1
@.str.100 = private unnamed_addr constant [50 x i8] c"The maximum number of unrollings of a single loop\00", align 1
@.str.101 = private unnamed_addr constant [17 x i8] c"max-peeled-insns\00", align 1
@.str.102 = private unnamed_addr constant [45 x i8] c"The maximum number of insns of a peeled loop\00", align 1
@.str.103 = private unnamed_addr constant [15 x i8] c"max-peel-times\00", align 1
@.str.104 = private unnamed_addr constant [48 x i8] c"The maximum number of peelings of a single loop\00", align 1
@.str.105 = private unnamed_addr constant [28 x i8] c"max-completely-peeled-insns\00", align 1
@.str.106 = private unnamed_addr constant [56 x i8] c"The maximum number of insns of a completely peeled loop\00", align 1
@.str.107 = private unnamed_addr constant [26 x i8] c"max-completely-peel-times\00", align 1
@.str.108 = private unnamed_addr constant [74 x i8] c"The maximum number of peelings of a single loop that is peeled completely\00", align 1
@.str.109 = private unnamed_addr constant [22 x i8] c"max-once-peeled-insns\00", align 1
@.str.110 = private unnamed_addr constant [66 x i8] c"The maximum number of insns of a peeled loop that rolls only once\00", align 1
@.str.111 = private unnamed_addr constant [36 x i8] c"max-completely-peel-loop-nest-depth\00", align 1
@.str.112 = private unnamed_addr constant [52 x i8] c"The maximum depth of a loop nest we completely peel\00", align 1
@.str.113 = private unnamed_addr constant [19 x i8] c"max-unswitch-insns\00", align 1
@.str.114 = private unnamed_addr constant [50 x i8] c"The maximum number of insns of an unswitched loop\00", align 1
@.str.115 = private unnamed_addr constant [19 x i8] c"max-unswitch-level\00", align 1
@.str.116 = private unnamed_addr constant [52 x i8] c"The maximum number of unswitchings in a single loop\00", align 1
@.str.117 = private unnamed_addr constant [24 x i8] c"max-iterations-to-track\00", align 1
@.str.118 = private unnamed_addr constant [95 x i8] c"Bound on the number of iterations the brute force # of iterations analysis algorithm evaluates\00", align 1
@.str.119 = private unnamed_addr constant [32 x i8] c"max-iterations-computation-cost\00", align 1
@.str.120 = private unnamed_addr constant [71 x i8] c"Bound on the cost of an expression to compute the number of iterations\00", align 1
@.str.121 = private unnamed_addr constant [18 x i8] c"sms-max-ii-factor\00", align 1
@.str.122 = private unnamed_addr constant [91 x i8] c"A factor for tuning the upper bound that swing modulo scheduler uses for scheduling a loop\00", align 1
@.str.123 = private unnamed_addr constant [16 x i8] c"sms-dfa-history\00", align 1
@.str.124 = private unnamed_addr constant [92 x i8] c"The number of cycles the swing modulo scheduler considers when checking conflicts using DFA\00", align 1
@.str.125 = private unnamed_addr constant [33 x i8] c"sms-loop-average-count-threshold\00", align 1
@.str.126 = private unnamed_addr constant [79 x i8] c"A threshold on the average loop count considered by the swing modulo scheduler\00", align 1
@.str.127 = private unnamed_addr constant [22 x i8] c"hot-bb-count-fraction\00", align 1
@.str.128 = private unnamed_addr constant [131 x i8] c"Select fraction of the maximal count of repetitions of basic block in program given basic block needs to have to be considered hot\00", align 1
@.str.129 = private unnamed_addr constant [26 x i8] c"hot-bb-frequency-fraction\00", align 1
@.str.130 = private unnamed_addr constant [135 x i8] c"Select fraction of the maximal frequency of executions of basic block in function given basic block needs to have to be considered hot\00", align 1
@.str.131 = private unnamed_addr constant [16 x i8] c"align-threshold\00", align 1
@.str.132 = private unnamed_addr constant [114 x i8] c"Select fraction of the maximal frequency of executions of basic block in function given basic block get alignment\00", align 1
@.str.133 = private unnamed_addr constant [22 x i8] c"align-loop-iterations\00", align 1
@.str.134 = private unnamed_addr constant [81 x i8] c"Loops iterating at least selected number of iterations will get loop alignement.\00", align 1
@.str.135 = private unnamed_addr constant [25 x i8] c"max-predicted-iterations\00", align 1
@.str.136 = private unnamed_addr constant [60 x i8] c"The maximum number of loop iterations we predict statically\00", align 1
@.str.137 = private unnamed_addr constant [33 x i8] c"tracer-dynamic-coverage-feedback\00", align 1
@.str.138 = private unnamed_addr constant [142 x i8] c"The percentage of function, weighted by execution frequency, that must be covered by trace formation. Used when profile feedback is available\00", align 1
@.str.139 = private unnamed_addr constant [24 x i8] c"tracer-dynamic-coverage\00", align 1
@.str.140 = private unnamed_addr constant [146 x i8] c"The percentage of function, weighted by execution frequency, that must be covered by trace formation. Used when profile feedback is not available\00", align 1
@.str.141 = private unnamed_addr constant [23 x i8] c"tracer-max-code-growth\00", align 1
@.str.142 = private unnamed_addr constant [60 x i8] c"Maximal code growth caused by tail duplication (in percent)\00", align 1
@.str.143 = private unnamed_addr constant [24 x i8] c"tracer-min-branch-ratio\00", align 1
@.str.144 = private unnamed_addr constant [101 x i8] c"Stop reverse growth if the reverse probability of best edge is less than this threshold (in percent)\00", align 1
@.str.145 = private unnamed_addr constant [39 x i8] c"tracer-min-branch-probability-feedback\00", align 1
@.str.146 = private unnamed_addr constant [134 x i8] c"Stop forward growth if the probability of best edge is less than this threshold (in percent). Used when profile feedback is available\00", align 1
@.str.147 = private unnamed_addr constant [30 x i8] c"tracer-min-branch-probability\00", align 1
@.str.148 = private unnamed_addr constant [138 x i8] c"Stop forward growth if the probability of best edge is less than this threshold (in percent). Used when profile feedback is not available\00", align 1
@.str.149 = private unnamed_addr constant [20 x i8] c"max-crossjump-edges\00", align 1
@.str.150 = private unnamed_addr constant [66 x i8] c"The maximum number of incoming edges to consider for crossjumping\00", align 1
@.str.151 = private unnamed_addr constant [20 x i8] c"min-crossjump-insns\00", align 1
@.str.152 = private unnamed_addr constant [73 x i8] c"The minimum number of matching instructions to consider for crossjumping\00", align 1
@.str.153 = private unnamed_addr constant [23 x i8] c"max-grow-copy-bb-insns\00", align 1
@.str.154 = private unnamed_addr constant [55 x i8] c"The maximum expansion factor when copying basic blocks\00", align 1
@.str.155 = private unnamed_addr constant [27 x i8] c"max-goto-duplication-insns\00", align 1
@.str.156 = private unnamed_addr constant [73 x i8] c"The maximum number of insns to duplicate when unfactoring computed gotos\00", align 1
@.str.157 = private unnamed_addr constant [20 x i8] c"max-cse-path-length\00", align 1
@.str.158 = private unnamed_addr constant [45 x i8] c"The maximum length of path considered in cse\00", align 1
@.str.159 = private unnamed_addr constant [14 x i8] c"max-cse-insns\00", align 1
@.str.160 = private unnamed_addr constant [53 x i8] c"The maximum instructions CSE process before flushing\00", align 1
@.str.161 = private unnamed_addr constant [14 x i8] c"lim-expensive\00", align 1
@.str.162 = private unnamed_addr constant [73 x i8] c"The minimum cost of an expensive expression in the loop invariant motion\00", align 1
@.str.163 = private unnamed_addr constant [33 x i8] c"iv-consider-all-candidates-bound\00", align 1
@.str.164 = private unnamed_addr constant [91 x i8] c"Bound on number of candidates below that all candidates are considered in iv optimizations\00", align 1
@.str.165 = private unnamed_addr constant [23 x i8] c"iv-max-considered-uses\00", align 1
@.str.166 = private unnamed_addr constant [65 x i8] c"Bound on number of iv uses in loop optimized in iv optimizations\00", align 1
@.str.167 = private unnamed_addr constant [31 x i8] c"iv-always-prune-cand-set-bound\00", align 1
@.str.168 = private unnamed_addr constant [106 x i8] c"If number of candidates in the set is smaller, we always try to remove unused ivs during its optimization\00", align 1
@.str.169 = private unnamed_addr constant [19 x i8] c"scev-max-expr-size\00", align 1
@.str.170 = private unnamed_addr constant [68 x i8] c"Bound on size of expressions used in the scalar evolutions analyzer\00", align 1
@.str.171 = private unnamed_addr constant [15 x i8] c"omega-max-vars\00", align 1
@.str.172 = private unnamed_addr constant [61 x i8] c"Bound on the number of variables in Omega constraint systems\00", align 1
@.str.173 = private unnamed_addr constant [15 x i8] c"omega-max-geqs\00", align 1
@.str.174 = private unnamed_addr constant [64 x i8] c"Bound on the number of inequalities in Omega constraint systems\00", align 1
@.str.175 = private unnamed_addr constant [14 x i8] c"omega-max-eqs\00", align 1
@.str.176 = private unnamed_addr constant [62 x i8] c"Bound on the number of equalities in Omega constraint systems\00", align 1
@.str.177 = private unnamed_addr constant [21 x i8] c"omega-max-wild-cards\00", align 1
@.str.178 = private unnamed_addr constant [62 x i8] c"Bound on the number of wild cards in Omega constraint systems\00", align 1
@.str.179 = private unnamed_addr constant [22 x i8] c"omega-hash-table-size\00", align 1
@.str.180 = private unnamed_addr constant [64 x i8] c"Bound on the size of the hash table in Omega constraint systems\00", align 1
@.str.181 = private unnamed_addr constant [15 x i8] c"omega-max-keys\00", align 1
@.str.182 = private unnamed_addr constant [56 x i8] c"Bound on the number of keys in Omega constraint systems\00", align 1
@.str.183 = private unnamed_addr constant [38 x i8] c"omega-eliminate-redundant-constraints\00", align 1
@.str.184 = private unnamed_addr constant [76 x i8] c"When set to 1, use expensive methods to eliminate all redundant constraints\00", align 1
@.str.185 = private unnamed_addr constant [38 x i8] c"vect-max-version-for-alignment-checks\00", align 1
@.str.186 = private unnamed_addr constant [99 x i8] c"Bound on number of runtime checks inserted by the vectorizer's loop versioning for alignment check\00", align 1
@.str.187 = private unnamed_addr constant [34 x i8] c"vect-max-version-for-alias-checks\00", align 1
@.str.188 = private unnamed_addr constant [95 x i8] c"Bound on number of runtime checks inserted by the vectorizer's loop versioning for alias check\00", align 1
@.str.189 = private unnamed_addr constant [28 x i8] c"max-cselib-memory-locations\00", align 1
@.str.190 = private unnamed_addr constant [48 x i8] c"The maximum memory locations recorded by cselib\00", align 1
@.str.191 = private unnamed_addr constant [15 x i8] c"ggc-min-expand\00", align 1
@.str.192 = private unnamed_addr constant [100 x i8] c"Minimum heap expansion to trigger garbage collection, as a percentage of the total size of the heap\00", align 1
@.str.193 = private unnamed_addr constant [17 x i8] c"ggc-min-heapsize\00", align 1
@.str.194 = private unnamed_addr constant [67 x i8] c"Minimum heap size before we start collecting garbage, in kilobytes\00", align 1
@.str.195 = private unnamed_addr constant [24 x i8] c"max-reload-search-insns\00", align 1
@.str.196 = private unnamed_addr constant [89 x i8] c"The maximum number of instructions to search backward when looking for equivalent reload\00", align 1
@.str.197 = private unnamed_addr constant [24 x i8] c"max-sched-region-blocks\00", align 1
@.str.198 = private unnamed_addr constant [84 x i8] c"The maximum number of blocks in a region to be considered for interblock scheduling\00", align 1
@.str.199 = private unnamed_addr constant [23 x i8] c"max-sched-region-insns\00", align 1
@.str.200 = private unnamed_addr constant [83 x i8] c"The maximum number of insns in a region to be considered for interblock scheduling\00", align 1
@.str.201 = private unnamed_addr constant [27 x i8] c"max-pipeline-region-blocks\00", align 1
@.str.202 = private unnamed_addr constant [26 x i8] c"max-pipeline-region-insns\00", align 1
@.str.203 = private unnamed_addr constant [14 x i8] c"min-spec-prob\00", align 1
@.str.204 = private unnamed_addr constant [89 x i8] c"The minimum probability of reaching a source block for interblock speculative scheduling\00", align 1
@.str.205 = private unnamed_addr constant [31 x i8] c"max-sched-extend-regions-iters\00", align 1
@.str.206 = private unnamed_addr constant [63 x i8] c"The maximum number of iterations through CFG to extend regions\00", align 1
@.str.207 = private unnamed_addr constant [30 x i8] c"max-sched-insn-conflict-delay\00", align 1
@.str.208 = private unnamed_addr constant [79 x i8] c"The maximum conflict delay for an insn to be considered for speculative motion\00", align 1
@.str.209 = private unnamed_addr constant [23 x i8] c"sched-spec-prob-cutoff\00", align 1
@.str.210 = private unnamed_addr constant [106 x i8] c"The minimal probability of speculation success (in percents), so that speculative insn will be scheduled.\00", align 1
@.str.211 = private unnamed_addr constant [23 x i8] c"selsched-max-lookahead\00", align 1
@.str.212 = private unnamed_addr constant [65 x i8] c"The maximum size of the lookahead window of selective scheduling\00", align 1
@.str.213 = private unnamed_addr constant [25 x i8] c"selsched-max-sched-times\00", align 1
@.str.214 = private unnamed_addr constant [56 x i8] c"Maximum number of times that an insn could be scheduled\00", align 1
@.str.215 = private unnamed_addr constant [25 x i8] c"selsched-insns-to-rename\00", align 1
@.str.216 = private unnamed_addr constant [91 x i8] c"Maximum number of instructions in the ready list that are considered eligible for renaming\00", align 1
@.str.217 = private unnamed_addr constant [24 x i8] c"sched-mem-true-dep-cost\00", align 1
@.str.218 = private unnamed_addr constant [61 x i8] c"Minimal distance between possibly conflicting store and load\00", align 1
@.str.219 = private unnamed_addr constant [19 x i8] c"max-last-value-rtl\00", align 1
@.str.220 = private unnamed_addr constant [78 x i8] c"The maximum number of RTL nodes that can be recorded as combiner's last value\00", align 1
@.str.221 = private unnamed_addr constant [20 x i8] c"integer-share-limit\00", align 1
@.str.222 = private unnamed_addr constant [46 x i8] c"The upper bound for sharing integer constants\00", align 1
@.str.223 = private unnamed_addr constant [21 x i8] c"min-virtual-mappings\00", align 1
@.str.224 = private unnamed_addr constant [81 x i8] c"Minimum number of virtual mappings to consider switching to full virtual renames\00", align 1
@.str.225 = private unnamed_addr constant [23 x i8] c"virtual-mappings-ratio\00", align 1
@.str.226 = private unnamed_addr constant [78 x i8] c"Ratio between virtual mappings and virtual symbols to do full virtual renames\00", align 1
@.str.227 = private unnamed_addr constant [16 x i8] c"ssp-buffer-size\00", align 1
@.str.228 = private unnamed_addr constant [76 x i8] c"The lower bound for a buffer to be considered for stack smashing protection\00", align 1
@.str.229 = private unnamed_addr constant [34 x i8] c"max-jump-thread-duplication-stmts\00", align 1
@.str.230 = private unnamed_addr constant [97 x i8] c"Maximum number of statements allowed in a block that needs to be duplicated when threading jumps\00", align 1
@.str.231 = private unnamed_addr constant [31 x i8] c"max-fields-for-field-sensitive\00", align 1
@.str.232 = private unnamed_addr constant [106 x i8] c"Maximum number of fields in a structure before pointer analysis treats the structure as a single variable\00", align 1
@.str.233 = private unnamed_addr constant [22 x i8] c"max-sched-ready-insns\00", align 1
@.str.234 = private unnamed_addr constant [121 x i8] c"The maximum number of instructions ready to be issued to be considered by the scheduler during the first scheduling pass\00", align 1
@.str.235 = private unnamed_addr constant [17 x i8] c"prefetch-latency\00", align 1
@.str.236 = private unnamed_addr constant [58 x i8] c"The number of insns executed before prefetch is completed\00", align 1
@.str.237 = private unnamed_addr constant [24 x i8] c"simultaneous-prefetches\00", align 1
@.str.238 = private unnamed_addr constant [55 x i8] c"The number of prefetches that can run at the same time\00", align 1
@.str.239 = private unnamed_addr constant [14 x i8] c"l1-cache-size\00", align 1
@.str.240 = private unnamed_addr constant [21 x i8] c"The size of L1 cache\00", align 1
@.str.241 = private unnamed_addr constant [19 x i8] c"l1-cache-line-size\00", align 1
@.str.242 = private unnamed_addr constant [26 x i8] c"The size of L1 cache line\00", align 1
@.str.243 = private unnamed_addr constant [14 x i8] c"l2-cache-size\00", align 1
@.str.244 = private unnamed_addr constant [21 x i8] c"The size of L2 cache\00", align 1
@.str.245 = private unnamed_addr constant [20 x i8] c"use-canonical-types\00", align 1
@.str.246 = private unnamed_addr constant [31 x i8] c"Whether to use canonical types\00", align 1
@.str.247 = private unnamed_addr constant [25 x i8] c"max-partial-antic-length\00", align 1
@.str.248 = private unnamed_addr constant [74 x i8] c"Maximum length of partial antic set when performing tree pre optimization\00", align 1
@.str.249 = private unnamed_addr constant [19 x i8] c"sccvn-max-scc-size\00", align 1
@.str.250 = private unnamed_addr constant [63 x i8] c"Maximum size of a SCC before SCCVN stops processing a function\00", align 1
@.str.251 = private unnamed_addr constant [18 x i8] c"ira-max-loops-num\00", align 1
@.str.252 = private unnamed_addr constant [33 x i8] c"Max loops number for regional RA\00", align 1
@.str.253 = private unnamed_addr constant [28 x i8] c"ira-max-conflict-table-size\00", align 1
@.str.254 = private unnamed_addr constant [33 x i8] c"Max size of conflict table in MB\00", align 1
@.str.255 = private unnamed_addr constant [23 x i8] c"ira-loop-reserved-regs\00", align 1
@.str.256 = private unnamed_addr constant [75 x i8] c"The number of registers in each class kept unused by loop invariant motion\00", align 1
@.str.257 = private unnamed_addr constant [35 x i8] c"switch-conversion-max-branch-ratio\00", align 1
@.str.258 = private unnamed_addr constant [95 x i8] c"The maximum ratio between array size and switch branches for a switch conversion to take place\00", align 1
@.str.259 = private unnamed_addr constant [21 x i8] c"loop-block-tile-size\00", align 1
@.str.260 = private unnamed_addr constant [32 x i8] c"size of tiles for loop blocking\00", align 1
@.str.261 = private unnamed_addr constant [28 x i8] c"graphite-max-nb-scop-params\00", align 1
@.str.262 = private unnamed_addr constant [39 x i8] c"maximum number of parameters in a SCoP\00", align 1
@.str.263 = private unnamed_addr constant [30 x i8] c"graphite-max-bbs-per-function\00", align 1
@.str.264 = private unnamed_addr constant [71 x i8] c"maximum number of basic blocks per function to be analyzed by Graphite\00", align 1
@.str.265 = private unnamed_addr constant [31 x i8] c"loop-invariant-max-bbs-in-loop\00", align 1
@.str.266 = private unnamed_addr constant [58 x i8] c"Max basic blocks number in loop for loop invariant motion\00", align 1
@.str.267 = private unnamed_addr constant [20 x i8] c"slp-max-insns-in-bb\00", align 1
@.str.268 = private unnamed_addr constant [85 x i8] c"Maximum number of instructions in basic block to be considered for SLP vectorization\00", align 1
@.str.269 = private unnamed_addr constant [27 x i8] c"min-insn-to-prefetch-ratio\00", align 1
@.str.270 = private unnamed_addr constant [94 x i8] c"Min. ratio of insns to prefetches to enable prefetching for a loop with an unknown trip count\00", align 1
@.str.271 = private unnamed_addr constant [31 x i8] c"prefetch-min-insn-to-mem-ratio\00", align 1
@.str.272 = private unnamed_addr constant [63 x i8] c"Min. ratio of insns to mem ops to enable prefetching in a loop\00", align 1
@.str.273 = private unnamed_addr constant [18 x i8] c"max-vartrack-size\00", align 1
@.str.274 = private unnamed_addr constant [38 x i8] c"Max. size of var tracking hash tables\00", align 1
@.str.275 = private unnamed_addr constant [22 x i8] c"min-nondebug-insn-uid\00", align 1
@.str.276 = private unnamed_addr constant [47 x i8] c"The minimum UID to be used for a nondebug insn\00", align 1
@.str.277 = private unnamed_addr constant [26 x i8] c"ipa-sra-ptr-growth-factor\00", align 1
@.str.278 = private unnamed_addr constant [97 x i8] c"Maximum allowed growth of size of new parameters ipa-sra replaces a pointer to an aggregate with\00", align 1
@time_report = external local_unnamed_addr global i32, align 4
@no_backend = internal unnamed_addr global i8 0, align 1
@do_nothing_debug_hooks = external constant %struct.gcc_debug_hooks, align 8
@warn_unused = external local_unnamed_addr global i32, align 4
@warn_unused_label = external local_unnamed_addr global i32, align 4
@warn_unused_parameter = external local_unnamed_addr global i32, align 4
@extra_warnings = external local_unnamed_addr global i32, align 4
@warn_unused_value = external local_unnamed_addr global i32, align 4
@warn_uninitialized = external local_unnamed_addr global i32, align 4
@flag_compare_debug = external local_unnamed_addr global i32, align 4
@flag_section_anchors = external local_unnamed_addr global i32, align 4
@.str.279 = private unnamed_addr constant [33 x i8] c"this target does not support %qs\00", align 1
@.str.280 = private unnamed_addr constant [18 x i8] c"-fsection-anchors\00", align 1
@.str.281 = private unnamed_addr constant [7 x i8] c"gccaux\00", align 1
@flag_graphite = external local_unnamed_addr global i32, align 4
@flag_loop_block = external local_unnamed_addr global i32, align 4
@flag_loop_interchange = external local_unnamed_addr global i32, align 4
@flag_loop_strip_mine = external local_unnamed_addr global i32, align 4
@flag_graphite_identity = external local_unnamed_addr global i32, align 4
@flag_loop_parallelize_all = external local_unnamed_addr global i32, align 4
@.str.282 = private unnamed_addr constant [43 x i8] c"Graphite loop optimizations cannot be used\00", align 1
@flag_unroll_all_loops = external local_unnamed_addr global i32, align 4
@flag_unroll_loops = external local_unnamed_addr global i32, align 4
@flag_rerun_cse_after_loop = external local_unnamed_addr global i32, align 4
@flag_peel_loops = external local_unnamed_addr global i32, align 4
@flag_web = external local_unnamed_addr global i32, align 4
@flag_rename_registers = external local_unnamed_addr global i32, align 4
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4
@flag_asynchronous_unwind_tables = external local_unnamed_addr global i32, align 4
@flag_unwind_tables = external local_unnamed_addr global i32, align 4
@flag_value_profile_transformations = external local_unnamed_addr global i32, align 4
@flag_profile_values = external local_unnamed_addr global i32, align 4
@flag_delayed_branch = external local_unnamed_addr global i32, align 4
@.str.283 = private unnamed_addr constant [51 x i8] c"this target machine does not have delayed branches\00", align 1
@flag_leading_underscore = external local_unnamed_addr global i32, align 4
@.str.284 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@flag_syntax_only = external local_unnamed_addr global i32, align 4
@write_symbols = external local_unnamed_addr global i32, align 4
@profile_flag = external local_unnamed_addr global i32, align 4
@flag_gtoggle = external local_unnamed_addr global i32, align 4
@debug_info_level = external local_unnamed_addr global i32, align 4
@flag_dump_final_insns = external local_unnamed_addr global ptr, align 8
@.str.287 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.288 = private unnamed_addr constant [44 x i8] c"could not open final insn dump file %qs: %s\00", align 1
@.str.289 = private unnamed_addr constant [46 x i8] c"could not close zeroed insn dump file %qs: %s\00", align 1
@dwarf_strict = external local_unnamed_addr global i32, align 4
@dwarf2_debug_hooks = external constant %struct.gcc_debug_hooks, align 8
@dbx_debug_hooks = external constant %struct.gcc_debug_hooks, align 8
@.str.290 = private unnamed_addr constant [53 x i8] c"target system does not support the \22%s\22 debug format\00", align 1
@flag_var_tracking_uninit = external local_unnamed_addr global i32, align 4
@.str.291 = private unnamed_addr constant [69 x i8] c"variable tracking requested, but useless unless producing debug info\00", align 1
@.str.292 = private unnamed_addr constant [68 x i8] c"variable tracking requested, but not supported by this debug format\00", align 1
@flag_selective_scheduling = external local_unnamed_addr global i32, align 4
@flag_selective_scheduling2 = external local_unnamed_addr global i32, align 4
@.str.293 = private unnamed_addr constant [54 x i8] c"var-tracking-assignments changes selective scheduling\00", align 1
@flag_tree_cselim = external local_unnamed_addr global i32, align 4
@.str.294 = private unnamed_addr constant [19 x i8] c"can%'t open %s: %m\00", align 1
@flag_function_sections = external local_unnamed_addr global i32, align 4
@.str.295 = private unnamed_addr constant [50 x i8] c"-ffunction-sections not supported for this target\00", align 1
@flag_data_sections = external local_unnamed_addr global i32, align 4
@.str.296 = private unnamed_addr constant [46 x i8] c"-fdata-sections not supported for this target\00", align 1
@.str.297 = private unnamed_addr constant [60 x i8] c"-ffunction-sections disabled; it makes profiling impossible\00", align 1
@flag_prefetch_loop_arrays = external local_unnamed_addr global i32, align 4
@x86_prefetch_sse = external local_unnamed_addr global i32, align 4
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@.str.298 = private unnamed_addr constant [75 x i8] c"-fprefetch-loop-arrays not supported for this target (try -march switches)\00", align 1
@.str.299 = private unnamed_addr constant [49 x i8] c"-fprefetch-loop-arrays is not supported with -Os\00", align 1
@flag_signaling_nans = external local_unnamed_addr global i32, align 4
@flag_trapping_math = external local_unnamed_addr global i32, align 4
@flag_associative_math = external local_unnamed_addr global i32, align 4
@flag_signed_zeros = external local_unnamed_addr global i32, align 4
@.str.300 = private unnamed_addr constant [59 x i8] c"-fassociative-math disabled; other options take precedence\00", align 1
@flag_cx_limited_range = external local_unnamed_addr global i32, align 4
@flag_cx_fortran_rules = external local_unnamed_addr global i32, align 4
@flag_stack_protect = external local_unnamed_addr global i32, align 4
@warn_stack_protect = external local_unnamed_addr global i32, align 4
@flag_omit_frame_pointer = external local_unnamed_addr global i32, align 4
@.str.301 = private unnamed_addr constant [64 x i8] c"unwind tables currently require a frame pointer for correctness\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.302 = private unnamed_addr constant [17 x i8] c"options passed: \00", align 1
@.str.303 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.304 = private unnamed_addr constant [10 x i8] c"-dumpbase\00", align 1
@.str.305 = private unnamed_addr constant [9 x i8] c"-dumpdir\00", align 1
@.str.306 = private unnamed_addr constant [9 x i8] c"-auxbase\00", align 1
@.str.307 = private unnamed_addr constant [7 x i8] c"-quiet\00", align 1
@.str.308 = private unnamed_addr constant [9 x i8] c"-version\00", align 1
@.str.309 = private unnamed_addr constant [18 x i8] c"options enabled: \00", align 1
@.str.310 = private unnamed_addr constant [8 x i8] c"gccdump\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.311 = private unnamed_addr constant [3 x i8] c".s\00", align 1
@.str.312 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.313 = private unnamed_addr constant [4 x i8] c"w+b\00", align 1
@.str.314 = private unnamed_addr constant [31 x i8] c"can%'t open %s for writing: %m\00", align 1
@flag_record_gcc_switches = external local_unnamed_addr global i32, align 4
@.str.315 = private unnamed_addr constant [61 x i8] c"-frecord-gcc-switches is not supported by the current target\00", align 1
@flag_verbose_asm = external local_unnamed_addr global i32, align 4
@.str.316 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@ggc_protect_identifiers = external local_unnamed_addr global i8, align 1
@flag_mudflap = external local_unnamed_addr global i32, align 4
@.str.317 = private unnamed_addr constant [8 x i8] c"\09.comm\09\00", align 1
@.str.318 = private unnamed_addr constant [13 x i8] c"__gnu_lto_v1\00", align 1
@.str.319 = private unnamed_addr constant [9 x i8] c",%lu,%u\0A\00", align 1
@flag_no_ident = external local_unnamed_addr global i32, align 4
@.str.320 = private unnamed_addr constant [7 x i8] c"(GNU) \00", align 1
@.str.321 = private unnamed_addr constant [7 x i8] c"(GCC) \00", align 1
@.str.322 = private unnamed_addr constant [15 x i8] c"%s\22GCC: %s%s\22\0A\00", align 1
@.str.323 = private unnamed_addr constant [9 x i8] c"\09.ident\09\00", align 1
@.str.324 = private unnamed_addr constant [24 x i8] c"error writing to %s: %m\00", align 1
@.str.325 = private unnamed_addr constant [21 x i8] c"error closing %s: %m\00", align 1
@flag_wpa = external local_unnamed_addr global i32, align 4
@mem_report = external local_unnamed_addr global i32, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @set_src_pwd(ptr noundef %0) local_unnamed_addr #0 !prof !132 {
  %2 = load ptr, ptr @src_pwd, align 8, !tbaa !133
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %0) #18
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i8
  br label %10

8:                                                ; preds = %1
  %9 = tail call ptr @xstrdup(ptr noundef %0) #19
  store ptr %9, ptr @src_pwd, align 8, !tbaa !133
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi i8 [ 1, %8 ], [ %7, %4 ]
  ret i8 %11
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xstrdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @get_src_pwd() local_unnamed_addr #0 !prof !132 {
  %1 = load ptr, ptr @src_pwd, align 8, !tbaa !133
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call ptr @getpwd() #19
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @.str, ptr %4
  store ptr %6, ptr @src_pwd, align 8
  br label %7

7:                                                ; preds = %3, %0
  %8 = phi ptr [ %6, %3 ], [ %1, %0 ]
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @getpwd() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @announce_function(ptr noundef %0) local_unnamed_addr #0 !prof !137 {
  %2 = load i32, ptr @quiet_flag, align 4, !tbaa !138
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %28, !prof !140

4:                                                ; preds = %1
  %5 = load i32, ptr @rtl_dump_and_exit, align 4, !tbaa !138
  %6 = icmp eq i32 %5, 0
  %7 = load ptr, ptr @stderr, align 8, !tbaa !133
  br i1 %6, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !141
  %11 = getelementptr inbounds %struct.tree_identifier, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !141
  br label %16

13:                                               ; preds = %4
  %14 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !142
  %15 = tail call ptr %14(ptr noundef %0, i32 noundef 2) #19
  br label %16

16:                                               ; preds = %13, %8
  %17 = phi ptr [ %15, %13 ], [ %12, %8 ]
  %18 = phi ptr [ @.str.2, %13 ], [ @.str.1, %8 ]
  %19 = tail call ptr @identifier_to_locale(ptr noundef %17) #19
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull %18, ptr noundef %19) #20
  %21 = load ptr, ptr @stderr, align 8, !tbaa !133
  %22 = tail call i32 @fflush(ptr noundef %21) #18
  %23 = load ptr, ptr @global_dc, align 8, !tbaa !133
  %24 = load ptr, ptr %23, align 8, !tbaa !151
  %25 = getelementptr inbounds %struct.pretty_print_info, ptr %24, i64 0, i32 8
  store i8 1, ptr %25, align 1, !tbaa !153
  %26 = load ptr, ptr @current_function_decl, align 8, !tbaa !133
  %27 = getelementptr inbounds %struct.diagnostic_context, ptr %23, i64 0, i32 10
  store ptr %26, ptr %27, align 8, !tbaa !156
  br label %28

28:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @identifier_to_locale(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_random_seed(i8 noundef zeroext %0) local_unnamed_addr #0 !prof !132 {
  %2 = load ptr, ptr @flag_random_seed, align 8, !tbaa !133
  %3 = icmp ne ptr %2, null
  %4 = icmp ne i8 %0, 0
  %5 = or i1 %4, %3
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  tail call fastcc void @init_random_seed() #18
  %7 = load ptr, ptr @flag_random_seed, align 8, !tbaa !133
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi ptr [ %7, %6 ], [ %2, %1 ]
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_random_seed() unnamed_addr #0 !prof !132 !PGOFuncName !157 {
  %1 = load i32, ptr @local_tick, align 4, !tbaa !138
  %2 = tail call i32 @getpid() #19
  %3 = xor i32 %2, %1
  %4 = zext i32 %3 to i64
  %5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @init_random_seed.random_seed, ptr noundef nonnull dereferenceable(1) @.str.3, i64 noundef %4) #18
  store ptr @init_random_seed.random_seed, ptr @flag_random_seed, align 8, !tbaa !133
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare i32 @getpid() local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @set_random_seed(ptr noundef %0) local_unnamed_addr #5 !prof !132 {
  %2 = load ptr, ptr @flag_random_seed, align 8, !tbaa !133
  store ptr %0, ptr @flag_random_seed, align 8, !tbaa !133
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @read_integral_parameter(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !158 {
  %4 = load i8, ptr %0, align 1, !tbaa !141
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %21, label %10, !prof !159

6:                                                ; preds = %10
  %7 = getelementptr inbounds i8, ptr %12, i64 1
  %8 = load i8, ptr %7, align 1, !tbaa !141
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10, !prof !160, !llvm.loop !161

10:                                               ; preds = %3, %6
  %11 = phi i8 [ %8, %6 ], [ %4, %3 ]
  %12 = phi ptr [ %7, %6 ], [ %0, %3 ]
  %13 = zext i8 %11 to i64
  %14 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !163
  %16 = and i16 %15, 4
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %6, !prof !165

18:                                               ; preds = %10
  %19 = icmp eq ptr %1, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %18
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.4, ptr noundef nonnull %1) #19
  br label %23

21:                                               ; preds = %6, %3
  %22 = tail call i32 @atoi(ptr nocapture noundef nonnull %0) #18
  br label %23

23:                                               ; preds = %18, %20, %21
  %24 = phi i32 [ %22, %21 ], [ %2, %20 ], [ %2, %18 ]
  ret i32 %24
}

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i32 @floor_log2(i64 noundef %0) local_unnamed_addr #7 !prof !166 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %31, label %3, !prof !167

3:                                                ; preds = %1
  %4 = icmp ugt i64 %0, 4294967295
  %5 = select i1 %4, i32 32, i32 0, !prof !168
  %6 = or disjoint i32 %5, 16
  %7 = zext nneg i32 %6 to i64
  %8 = lshr i64 %0, %7
  %9 = icmp eq i64 %8, 0
  %10 = select i1 %9, i32 %5, i32 %6, !prof !169
  %11 = or disjoint i32 %10, 8
  %12 = zext nneg i32 %11 to i64
  %13 = lshr i64 %0, %12
  %14 = icmp eq i64 %13, 0
  %15 = select i1 %14, i32 %10, i32 %11, !prof !170
  %16 = or disjoint i32 %15, 4
  %17 = zext nneg i32 %16 to i64
  %18 = lshr i64 %0, %17
  %19 = icmp eq i64 %18, 0
  %20 = select i1 %19, i32 %15, i32 %16, !prof !171
  %21 = add nuw nsw i32 %20, 2
  %22 = zext nneg i32 %21 to i64
  %23 = lshr i64 %0, %22
  %24 = icmp eq i64 %23, 0
  %25 = select i1 %24, i32 %20, i32 %21, !prof !172
  %26 = add nuw nsw i32 %25, 1
  %27 = zext nneg i32 %26 to i64
  %28 = lshr i64 %0, %27
  %29 = icmp eq i64 %28, 0
  %30 = select i1 %29, i32 %25, i32 %26, !prof !173
  br label %31

31:                                               ; preds = %1, %3
  %32 = phi i32 [ %30, %3 ], [ -1, %1 ]
  ret i32 %32
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i32 @exact_log2(i64 noundef %0) local_unnamed_addr #7 !prof !174 {
  %2 = tail call i64 @llvm.ctpop.i64(i64 %0), !range !175
  %3 = icmp ult i64 %2, 2
  br i1 %3, label %4, label %6, !prof !176

4:                                                ; preds = %1
  %5 = tail call i32 @floor_log2(i64 noundef %0) #18
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ -1, %1 ]
  ret i32 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define dso_local void @strip_off_ending(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #8 !prof !158 {
  %3 = icmp sgt i32 %1, 2
  br i1 %3, label %4, label %21, !prof !160

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %13

6:                                                ; preds = %13
  %7 = add nsw i32 %1, -3
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 3)
  %9 = add nuw nsw i32 %8, 3
  %10 = zext nneg i32 %9 to i64
  %11 = add nuw nsw i64 %14, 1
  %12 = icmp eq i64 %11, %10
  br i1 %12, label %21, label %13, !prof !177, !llvm.loop !178

13:                                               ; preds = %4, %6
  %14 = phi i64 [ 2, %4 ], [ %11, %6 ]
  %15 = sub nsw i64 %5, %14
  %16 = getelementptr inbounds i8, ptr %0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !141
  %18 = icmp eq i8 %17, 46
  br i1 %18, label %19, label %6, !prof !179

19:                                               ; preds = %13
  %20 = getelementptr inbounds i8, ptr %0, i64 %15
  store i8 0, ptr %20, align 1, !tbaa !141
  br label %21

21:                                               ; preds = %6, %2, %19
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @output_quoted_string(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !158 {
  %3 = tail call i32 @putc(i32 noundef 34, ptr noundef %0) #18
  %4 = load i8, ptr %1, align 1, !tbaa !141
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %28, label %6, !prof !159

6:                                                ; preds = %2, %25
  %7 = phi i8 [ %26, %25 ], [ %4, %2 ]
  %8 = phi ptr [ %9, %25 ], [ %1, %2 ]
  %9 = getelementptr inbounds i8, ptr %8, i64 1
  %10 = sext i8 %7 to i32
  %11 = and i32 %10, 255
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %12
  %14 = load i16, ptr %13, align 2, !tbaa !163
  %15 = and i16 %14, 16
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %22, label %17, !prof !180

17:                                               ; preds = %6
  switch i8 %7, label %20 [
    i8 92, label %18
    i8 34, label %18
  ]

18:                                               ; preds = %17, %17
  %19 = tail call i32 @putc(i32 noundef 92, ptr noundef %0) #18
  br label %20

20:                                               ; preds = %17, %18
  %21 = tail call i32 @putc(i32 noundef %10, ptr noundef %0) #18
  br label %25

22:                                               ; preds = %6
  %23 = zext i8 %7 to i32
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %23) #18
  br label %25

25:                                               ; preds = %22, %20
  %26 = load i8, ptr %9, align 1, !tbaa !141
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %6, !prof !181, !llvm.loop !182

28:                                               ; preds = %25, %2
  %29 = tail call i32 @putc(i32 noundef 34, ptr noundef %0) #18
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @output_file_directive(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !158 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4, !prof !165

4:                                                ; preds = %2
  %5 = tail call ptr @remap_debug_filename(ptr noundef nonnull %1) #19
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ @.str.6, %2 ]
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #18
  %9 = shl i64 %8, 32
  %10 = ashr exact i64 %9, 32
  %11 = getelementptr inbounds i8, ptr %7, i64 %10
  br label %12

12:                                               ; preds = %15, %6
  %13 = phi ptr [ %11, %6 ], [ %16, %15 ]
  %14 = icmp ugt ptr %13, %7
  br i1 %14, label %15, label %19, !prof !183

15:                                               ; preds = %12
  %16 = getelementptr inbounds i8, ptr %13, i64 -1
  %17 = load i8, ptr %16, align 1, !tbaa !141
  %18 = icmp eq i8 %17, 47
  br i1 %18, label %19, label %12, !prof !180, !llvm.loop !184

19:                                               ; preds = %15, %12
  %20 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 7, i64 1, ptr %0)
  tail call void @output_quoted_string(ptr noundef %0, ptr noundef %13) #18
  %21 = tail call i32 @putc(i32 noundef 10, ptr noundef %0) #18
  ret void
}

; Function Attrs: optsize
declare ptr @remap_debug_filename(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @wrapup_global_declaration_1(ptr noundef %0) local_unnamed_addr #0 !prof !185 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %3, i64 13
  %5 = load i8, ptr %4, align 1, !tbaa !141
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7, !prof !186

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12, !prof !187

12:                                               ; preds = %7
  %13 = and i32 %9, -2
  store i32 %13, ptr %8, align 8
  br label %14

14:                                               ; preds = %12, %7, %1
  %15 = icmp eq i64 %3, 32
  br i1 %15, label %16, label %22, !prof !188

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !141
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22, !prof !189

20:                                               ; preds = %16
  %21 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 14), align 8, !tbaa !190
  tail call void %21(ptr noundef nonnull %0) #19
  br label %22

22:                                               ; preds = %20, %16, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @wrapup_global_declaration_2(ptr noundef %0) local_unnamed_addr #0 !prof !191 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 4194304
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %57, !prof !192

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 33554432
  %9 = icmp eq i64 %8, 0
  %10 = and i64 %2, 67174399
  %11 = icmp eq i64 %10, 67108896
  %12 = and i1 %11, %9
  br i1 %12, label %13, label %57, !prof !193

13:                                               ; preds = %5
  %14 = tail call ptr @varpool_node(ptr noundef nonnull %0) #19
  %15 = getelementptr inbounds %struct.varpool_node, ptr %14, i64 0, i32 5
  %16 = load i8, ptr %15, align 4
  %17 = and i8 %16, 72
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %57, !prof !194

19:                                               ; preds = %13
  %20 = load i8, ptr @cgraph_global_info_ready, align 1, !tbaa !141
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %33, !prof !195

22:                                               ; preds = %19
  %23 = load i64, ptr %0, align 8
  %24 = and i64 %23, 16777216
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %56, !prof !196

26:                                               ; preds = %22
  %27 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #19
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 16777216
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %56, !prof !197

31:                                               ; preds = %26
  %32 = load i8, ptr %15, align 4
  br label %33

33:                                               ; preds = %31, %19
  %34 = phi i8 [ %32, %31 ], [ %16, %19 ]
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %56, !prof !197

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 512
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %57, !prof !197

42:                                               ; preds = %37
  %43 = load i64, ptr %0, align 8
  %44 = and i64 %43, 135266304
  %45 = icmp eq i64 %44, 1048576
  br i1 %45, label %46, label %56, !prof !198

46:                                               ; preds = %42
  %47 = load i32, ptr @optimize, align 4, !tbaa !138
  %48 = icmp eq i32 %47, 0
  %49 = load i32, ptr @flag_keep_static_consts, align 4
  %50 = icmp ne i32 %49, 0
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load i64, ptr %6, align 8
  %54 = and i64 %53, 4096
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %26, %22, %42, %52, %33
  tail call void @rest_of_decl_compilation(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1) #19
  br label %57

57:                                               ; preds = %46, %52, %13, %37, %56, %1, %5
  %58 = phi i8 [ 1, %56 ], [ 0, %5 ], [ 0, %1 ], [ 0, %37 ], [ 0, %13 ], [ 0, %52 ], [ 0, %46 ]
  ret i8 %58
}

; Function Attrs: optsize
declare ptr @varpool_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rest_of_decl_compilation(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @wrapup_global_declarations(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !132 {
  %3 = icmp slt i32 %1, 1
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %8

6:                                                ; preds = %8, %2
  %7 = zext nneg i32 %1 to i64
  br i1 %3, label %30, label %14

8:                                                ; preds = %4, %8
  %9 = phi i64 [ 0, %4 ], [ %12, %8 ]
  %10 = getelementptr inbounds ptr, ptr %0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !133
  tail call void @wrapup_global_declaration_1(ptr noundef %11) #18
  %12 = add nuw nsw i64 %9, 1
  %13 = icmp eq i64 %12, %5
  br i1 %13, label %6, label %8, !llvm.loop !199

14:                                               ; preds = %6, %25
  %15 = phi i8 [ 1, %25 ], [ 0, %6 ]
  br label %16

16:                                               ; preds = %14, %16
  %17 = phi i64 [ %23, %16 ], [ 0, %14 ]
  %18 = phi i8 [ %22, %16 ], [ 0, %14 ]
  %19 = getelementptr inbounds ptr, ptr %0, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !133
  %21 = tail call zeroext i8 @wrapup_global_declaration_2(ptr noundef %20) #18, !range !200
  %22 = or i8 %21, %18
  %23 = add nuw nsw i64 %17, 1
  %24 = icmp eq i64 %23, %7
  br i1 %24, label %25, label %16, !llvm.loop !201

25:                                               ; preds = %16
  %26 = icmp eq i8 %22, 0
  %27 = or i1 %26, %3
  br i1 %27, label %28, label %14, !llvm.loop !202

28:                                               ; preds = %25
  %29 = select i1 %26, i8 %15, i8 1
  br label %30

30:                                               ; preds = %28, %6
  %31 = phi i8 [ 0, %6 ], [ %29, %28 ]
  ret i8 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @check_global_declaration_1(ptr noundef %0) local_unnamed_addr #0 !prof !185 {
  %2 = alloca %struct.expanded_location, align 8
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 29
  br i1 %5, label %6, label %39, !prof !203

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !141
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %39, !prof !204

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 33558528
  %14 = icmp eq i64 %13, 33554432
  %15 = and i64 %3, 142606336
  %16 = icmp eq i64 %15, 0
  %17 = and i1 %16, %14
  br i1 %17, label %18, label %39, !prof !205

18:                                               ; preds = %10
  %19 = load i32, ptr @warn_unused_function, align 4, !tbaa !138
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #19
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 67108864
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %21, %18
  %27 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #19
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 67108864
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, ptr @input_location, align 4, !tbaa !138
  %33 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %32, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull %0) #19
  br label %36

34:                                               ; preds = %26
  %35 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 220, ptr noundef nonnull @.str.9, ptr noundef nonnull %0) #19
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i64, ptr %0, align 8
  %38 = or i64 %37, 134217728
  store i64 %38, ptr %0, align 8
  tail call void @assemble_external(ptr noundef nonnull %0) #19
  br label %39

39:                                               ; preds = %36, %21, %10, %6, %1
  %40 = load i32, ptr @warn_unused_function, align 4, !tbaa !138
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42, !prof !206

42:                                               ; preds = %39
  %43 = load i64, ptr %0, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 29
  br i1 %45, label %53, label %46

46:                                               ; preds = %42, %39
  %47 = load i32, ptr @warn_unused_variable, align 4, !tbaa !138
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %94, label %49, !prof !206

49:                                               ; preds = %46
  %50 = load i64, ptr %0, align 8
  %51 = and i64 %50, 1114111
  %52 = icmp eq i64 %51, 32
  br i1 %52, label %53, label %94

53:                                               ; preds = %49, %42
  %54 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !141
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %55) #19
  %56 = getelementptr inbounds %struct.expanded_location, ptr %2, i64 0, i32 3
  %57 = load i8, ptr %56, align 8, !tbaa !207
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %94

59:                                               ; preds = %53
  %60 = load i64, ptr %0, align 8
  %61 = and i64 %60, 16777216
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %94

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !141
  %66 = icmp eq ptr %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i64, ptr %65, align 8
  %69 = and i64 %68, 16777216
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %94

71:                                               ; preds = %67, %63
  %72 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %73 = load i64, ptr %72, align 8
  %74 = and i64 %73, 33554432
  %75 = and i64 %60, 134742016
  %76 = or disjoint i64 %75, %74
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %71
  %79 = and i64 %60, 65535
  %80 = icmp ne i64 %79, 32
  %81 = and i64 %73, 16777216
  %82 = icmp eq i64 %81, 0
  %83 = or i1 %80, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %78
  %85 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 7), align 8, !tbaa !209
  %86 = call zeroext i8 %85(ptr noundef nonnull %0) #19
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %84
  %89 = load i64, ptr %0, align 8
  %90 = and i64 %89, 65535
  %91 = icmp eq i64 %90, 29
  %92 = select i1 %91, i32 220, i32 230
  %93 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef %92, ptr noundef nonnull @.str.10, ptr noundef nonnull %0) #19
  br label %94

94:                                               ; preds = %78, %88, %84, %71, %67, %59, %53, %49, %46
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @pedwarn(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @assemble_external(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @check_global_declarations(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !132 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %10, %6 ]
  %8 = getelementptr inbounds ptr, ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !133
  tail call void @check_global_declaration_1(ptr noundef %9) #18
  %10 = add nuw nsw i64 %7, 1
  %11 = icmp eq i64 %10, %5
  br i1 %11, label %12, label %6, !llvm.loop !210

12:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @emit_debug_global_declarations(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !132 {
  %3 = load ptr, ptr @global_dc, align 8, !tbaa !133
  %4 = getelementptr inbounds %struct.diagnostic_context, ptr %3, i64 0, i32 1, i64 4
  %5 = load i32, ptr %4, align 8, !tbaa !138
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.diagnostic_context, ptr %3, i64 0, i32 1, i64 5
  %9 = load i32, ptr %8, align 4, !tbaa !138
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %7
  %12 = load i8, ptr @timevar_enable, align 1, !tbaa !141
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @timevar_push_1(i32 noundef 166) #19
  br label %15

15:                                               ; preds = %14, %11
  %16 = icmp sgt i32 %1, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %15
  %18 = zext nneg i32 %1 to i64
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ 0, %17 ], [ %26, %19 ]
  %21 = load ptr, ptr @debug_hooks, align 8, !tbaa !133
  %22 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %21, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !211
  %24 = getelementptr inbounds ptr, ptr %0, i64 %20
  %25 = load ptr, ptr %24, align 8, !tbaa !133
  tail call void %23(ptr noundef %25) #19
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, %18
  br i1 %27, label %28, label %19, !llvm.loop !213

28:                                               ; preds = %19, %15
  %29 = load i8, ptr @timevar_enable, align 1, !tbaa !141
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void @timevar_pop_1(i32 noundef 166) #19
  br label %32

32:                                               ; preds = %28, %31, %2, %7
  ret void
}

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @warn_deprecated_use(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !132 {
  %3 = alloca %struct.expanded_location, align 8
  %4 = alloca %struct.expanded_location, align 8
  %5 = icmp ne ptr %0, null
  %6 = load i32, ptr @warn_deprecated_decl, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %108

9:                                                ; preds = %2
  %10 = icmp eq ptr %1, null
  br i1 %10, label %11, label %32

11:                                               ; preds = %9
  %12 = load i64, ptr %0, align 8
  %13 = and i64 %12, 65535
  %14 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !138
  switch i32 %15, label %42 [
    i32 3, label %16
    i32 2, label %19
  ]

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !141
  br label %29

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !141
  %22 = icmp eq ptr %21, null
  br i1 %22, label %42, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !141
  %26 = getelementptr inbounds %struct.tree_type, ptr %25, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !141
  %28 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.11, ptr noundef %27) #19
  br label %29

29:                                               ; preds = %23, %16
  %30 = phi ptr [ %18, %16 ], [ %28, %23 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %42, label %32

32:                                               ; preds = %9, %29
  %33 = phi ptr [ %30, %29 ], [ %1, %9 ]
  %34 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.11, ptr noundef nonnull %33) #19
  %35 = icmp eq ptr %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_list, ptr %34, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !141
  %39 = getelementptr inbounds %struct.tree_list, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !141
  %41 = getelementptr inbounds %struct.tree_string, ptr %40, i64 0, i32 2
  br label %42

42:                                               ; preds = %19, %11, %29, %32, %36
  %43 = phi ptr [ %41, %36 ], [ null, %32 ], [ null, %29 ], [ null, %11 ], [ null, %19 ]
  %44 = load i64, ptr %0, align 8
  %45 = and i64 %44, 65535
  %46 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !138
  switch i32 %47, label %108 [
    i32 3, label %48
    i32 2, label %60
  ]

48:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #21
  %49 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !141
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %3, i32 noundef %50) #19
  %51 = icmp eq ptr %43, null
  %52 = load ptr, ptr %3, align 8, !tbaa !214
  %53 = getelementptr inbounds %struct.expanded_location, ptr %3, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !215
  br i1 %51, label %57, label %55

55:                                               ; preds = %48
  %56 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 68, ptr noundef nonnull @.str.12, ptr noundef nonnull %0, ptr noundef %52, i32 noundef %54, ptr noundef nonnull %43) #19
  br label %59

57:                                               ; preds = %48
  %58 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 68, ptr noundef nonnull @.str.13, ptr noundef nonnull %0, ptr noundef %52, i32 noundef %54) #19
  br label %59

59:                                               ; preds = %57, %55
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #21
  br label %108

60:                                               ; preds = %42
  %61 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !141
  %63 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 12
  %64 = load ptr, ptr %63, align 8, !tbaa !141
  %65 = icmp eq ptr %64, null
  br i1 %65, label %73, label %66

66:                                               ; preds = %60
  %67 = load i64, ptr %64, align 8
  %68 = trunc i64 %67 to i16
  switch i16 %68, label %72 [
    i16 1, label %73
    i16 35, label %69
  ]

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.tree_decl_minimal, ptr %64, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !141
  br label %73

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %69, %66, %72, %60
  %74 = phi ptr [ null, %60 ], [ %64, %66 ], [ null, %72 ], [ %71, %69 ]
  %75 = icmp eq ptr %62, null
  br i1 %75, label %95, label %76

76:                                               ; preds = %73
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  %77 = getelementptr inbounds %struct.tree_decl_minimal, ptr %62, i64 0, i32 1
  %78 = load i32, ptr %77, align 8, !tbaa !141
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %4, i32 noundef %78) #19
  %79 = icmp eq ptr %74, null
  %80 = icmp eq ptr %43, null
  %81 = load ptr, ptr %4, align 8, !tbaa !214
  %82 = getelementptr inbounds %struct.expanded_location, ptr %4, i64 0, i32 1
  %83 = load i32, ptr %82, align 8, !tbaa !215
  br i1 %79, label %89, label %84

84:                                               ; preds = %76
  br i1 %80, label %87, label %85

85:                                               ; preds = %84
  %86 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 68, ptr noundef nonnull @.str.14, ptr noundef nonnull %74, ptr noundef %81, i32 noundef %83, ptr noundef nonnull %43) #19
  br label %94

87:                                               ; preds = %84
  %88 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 68, ptr noundef nonnull @.str.15, ptr noundef nonnull %74, ptr noundef %81, i32 noundef %83) #19
  br label %94

89:                                               ; preds = %76
  br i1 %80, label %92, label %90

90:                                               ; preds = %89
  %91 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 68, ptr noundef nonnull @.str.16, ptr noundef %81, i32 noundef %83, ptr noundef nonnull %43) #19
  br label %94

92:                                               ; preds = %89
  %93 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 68, ptr noundef nonnull @.str.17, ptr noundef %81, i32 noundef %83) #19
  br label %94

94:                                               ; preds = %90, %92, %85, %87
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  br label %108

95:                                               ; preds = %73
  %96 = icmp eq ptr %74, null
  %97 = icmp eq ptr %43, null
  br i1 %96, label %103, label %98

98:                                               ; preds = %95
  br i1 %97, label %101, label %99

99:                                               ; preds = %98
  %100 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 68, ptr noundef nonnull @.str.18, ptr noundef nonnull %74, ptr noundef nonnull %43) #19
  br label %108

101:                                              ; preds = %98
  %102 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 68, ptr noundef nonnull @.str.19, ptr noundef nonnull %74) #19
  br label %108

103:                                              ; preds = %95
  br i1 %97, label %106, label %104

104:                                              ; preds = %103
  %105 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 68, ptr noundef nonnull @.str.20, ptr noundef nonnull %43) #19
  br label %108

106:                                              ; preds = %103
  %107 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 68, ptr noundef nonnull @.str.21) #19
  br label %108

108:                                              ; preds = %59, %42, %101, %99, %106, %104, %94, %2
  ret void
}

; Function Attrs: optsize
declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @decode_d_option(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !132 {
  %2 = load i8, ptr %0, align 1, !tbaa !141
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %23, label %4

4:                                                ; preds = %1, %20
  %5 = phi i8 [ %21, %20 ], [ %2, %1 ]
  %6 = phi ptr [ %7, %20 ], [ %0, %1 ]
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  switch i8 %5, label %17 [
    i8 65, label %8
    i8 112, label %9
    i8 80, label %10
    i8 118, label %11
    i8 120, label %12
    i8 121, label %13
    i8 68, label %20
    i8 73, label %20
    i8 77, label %20
    i8 78, label %20
    i8 85, label %20
    i8 72, label %14
    i8 97, label %15
  ]

8:                                                ; preds = %4
  store i32 1, ptr @flag_debug_asm, align 4, !tbaa !138
  br label %20

9:                                                ; preds = %4
  store i32 1, ptr @flag_print_asm_name, align 4, !tbaa !138
  br label %20

10:                                               ; preds = %4
  store i32 1, ptr @flag_dump_rtl_in_asm, align 4, !tbaa !138
  store i32 1, ptr @flag_print_asm_name, align 4, !tbaa !138
  br label %20

11:                                               ; preds = %4
  store i32 1, ptr @graph_dump_format, align 4, !tbaa !138
  br label %20

12:                                               ; preds = %4
  store i32 1, ptr @rtl_dump_and_exit, align 4, !tbaa !138
  br label %20

13:                                               ; preds = %4
  store i1 true, ptr @set_yydebug, align 4
  br label %20

14:                                               ; preds = %4
  tail call fastcc void @setup_core_dumping() #18
  br label %20

15:                                               ; preds = %4
  %16 = tail call zeroext i8 @enable_rtl_dump_file() #19
  br label %20

17:                                               ; preds = %4
  %18 = sext i8 %5 to i32
  %19 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.22, i32 noundef %18) #19
  br label %20

20:                                               ; preds = %4, %4, %4, %4, %4, %17, %15, %14, %13, %12, %11, %10, %9, %8
  %21 = load i8, ptr %7, align 1, !tbaa !141
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %4, !llvm.loop !216

23:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @setup_core_dumping() unnamed_addr #0 !prof !132 !PGOFuncName !217 {
  %1 = alloca %struct.rlimit, align 8
  %2 = tail call ptr @signal(i32 noundef 6, ptr noundef null) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #21
  %3 = call i32 @getrlimit(i32 noundef 4, ptr noundef nonnull %1) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.23) #19
  br label %6

6:                                                ; preds = %5, %0
  %7 = getelementptr inbounds %struct.rlimit, ptr %1, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !218
  store i64 %8, ptr %1, align 8, !tbaa !220
  %9 = call i32 @setrlimit(i32 noundef 4, ptr noundef nonnull %1) #19
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.24) #19
  br label %12

12:                                               ; preds = %11, %6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #21
  %13 = load ptr, ptr @global_dc, align 8, !tbaa !133
  %14 = getelementptr inbounds %struct.diagnostic_context, ptr %13, i64 0, i32 6
  store i8 1, ptr %14, align 1, !tbaa !221
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @enable_rtl_dump_file() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @getrlimit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fatal_error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @setrlimit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @print_version(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !132 {
  %3 = load i8, ptr %1, align 1, !tbaa !141
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %4, ptr @.str.32, ptr @.str.31
  %6 = load ptr, ptr @lang_hooks, align 8, !tbaa !222
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @print_version.fmt1, ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull @pkgversion_string, ptr noundef nonnull @version_string, ptr noundef nonnull @.str.32, ptr noundef nonnull %1, ptr noundef nonnull @.str.33) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @default_get_pch_validity(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !132 {
  %2 = alloca %struct.cl_option_state, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #21
  %3 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 76), align 8, !tbaa !223
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, i64 2, i64 6
  store i64 %5, ptr %0, align 8
  %6 = load i32, ptr @cl_options_count, align 4, !tbaa !138
  %7 = zext i32 %6 to i64
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.cl_option_state, ptr %2, i64 0, i32 1
  br label %11

11:                                               ; preds = %9, %20
  %12 = phi i64 [ 0, %9 ], [ %21, %20 ]
  %13 = trunc i64 %12 to i32
  %14 = call fastcc zeroext i8 @option_affects_pch_p(i32 noundef %13, ptr noundef nonnull %2) #18
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = load i64, ptr %10, align 8, !tbaa !235
  %18 = load i64, ptr %0, align 8, !tbaa !237
  %19 = add i64 %18, %17
  store i64 %19, ptr %0, align 8, !tbaa !237
  br label %20

20:                                               ; preds = %11, %16
  %21 = add nuw nsw i64 %12, 1
  %22 = icmp eq i64 %21, %7
  br i1 %22, label %23, label %11, !llvm.loop !238

23:                                               ; preds = %20
  %24 = load i64, ptr %0, align 8, !tbaa !237
  br label %25

25:                                               ; preds = %23, %1
  %26 = phi i64 [ %24, %23 ], [ %5, %1 ]
  %27 = call ptr @xmalloc(i64 noundef %26) #19
  %28 = load i32, ptr @flag_pic, align 4, !tbaa !138
  %29 = trunc i32 %28 to i8
  store i8 %29, ptr %27, align 1, !tbaa !141
  %30 = load i32, ptr @flag_pie, align 4, !tbaa !138
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds i8, ptr %27, i64 1
  store i8 %31, ptr %32, align 1, !tbaa !141
  %33 = getelementptr inbounds i8, ptr %27, i64 2
  %34 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 76), align 8, !tbaa !223
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %25
  %37 = load i32, ptr @target_flags, align 4
  store i32 %37, ptr %33, align 1
  %38 = getelementptr inbounds i8, ptr %27, i64 6
  br label %39

39:                                               ; preds = %36, %25
  %40 = phi ptr [ %38, %36 ], [ %33, %25 ]
  br i1 %8, label %58, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.cl_option_state, ptr %2, i64 0, i32 1
  br label %43

43:                                               ; preds = %41, %54
  %44 = phi ptr [ %40, %41 ], [ %55, %54 ]
  %45 = phi i64 [ 0, %41 ], [ %56, %54 ]
  %46 = trunc i64 %45 to i32
  %47 = call fastcc zeroext i8 @option_affects_pch_p(i32 noundef %46, ptr noundef nonnull %2) #18
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %43
  %50 = load ptr, ptr %2, align 8, !tbaa !239
  %51 = load i64, ptr %42, align 8, !tbaa !235
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %44, ptr align 1 %50, i64 %51, i1 false)
  %52 = load i64, ptr %42, align 8, !tbaa !235
  %53 = getelementptr inbounds i8, ptr %44, i64 %52
  br label %54

54:                                               ; preds = %43, %49
  %55 = phi ptr [ %53, %49 ], [ %44, %43 ]
  %56 = add nuw nsw i64 %45, 1
  %57 = icmp eq i64 %56, %7
  br i1 %57, label %58, label %43, !llvm.loop !240

58:                                               ; preds = %54, %39
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #21
  ret ptr %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @option_affects_pch_p(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !132 !PGOFuncName !241 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %3, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !242
  %6 = and i32 %5, 1048576
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %3, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !244
  %11 = icmp eq ptr %10, @target_flags
  %12 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 76), align 8
  %13 = icmp ne ptr %12, null
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = tail call zeroext i8 @get_option_state(i32 noundef %0, ptr noundef %1) #19
  br label %17

17:                                               ; preds = %8, %2, %15
  %18 = phi i8 [ %16, %15 ], [ 0, %2 ], [ 0, %8 ]
  ret i8 %18
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: optsize
declare zeroext i8 @get_option_state(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @default_pch_valid_p(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #0 !prof !132 {
  %3 = alloca %struct.cl_option_state, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #21
  %4 = load i8, ptr %0, align 1, !tbaa !141
  %5 = sext i8 %4 to i32
  %6 = load i32, ptr @flag_pic, align 4, !tbaa !138
  %7 = icmp eq i32 %6, %5
  br i1 %7, label %8, label %51

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8, ptr %0, i64 1
  %10 = load i8, ptr %9, align 1, !tbaa !141
  %11 = sext i8 %10 to i32
  %12 = load i32, ptr @flag_pie, align 4, !tbaa !138
  %13 = icmp eq i32 %12, %11
  br i1 %13, label %14, label %51

14:                                               ; preds = %8
  %15 = getelementptr inbounds i8, ptr %0, i64 2
  %16 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 76), align 8, !tbaa !223
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load i32, ptr %15, align 1
  %20 = getelementptr inbounds i8, ptr %0, i64 6
  %21 = tail call ptr %16(i32 noundef %19) #19
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %51

23:                                               ; preds = %18, %14
  %24 = phi ptr [ %20, %18 ], [ %15, %14 ]
  %25 = load i32, ptr @cl_options_count, align 4, !tbaa !138
  %26 = zext i32 %25 to i64
  %27 = icmp eq i32 %25, 0
  br i1 %27, label %51, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.cl_option_state, ptr %3, i64 0, i32 1
  br label %30

30:                                               ; preds = %28, %47
  %31 = phi i64 [ 0, %28 ], [ %49, %47 ]
  %32 = phi ptr [ %24, %28 ], [ %48, %47 ]
  %33 = trunc i64 %31 to i32
  %34 = call fastcc zeroext i8 @option_affects_pch_p(i32 noundef %33, ptr noundef nonnull %3) #18
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %30
  %37 = load ptr, ptr %3, align 8, !tbaa !239
  %38 = load i64, ptr %29, align 8, !tbaa !235
  %39 = call i32 @bcmp(ptr %32, ptr %37, i64 %38)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %31
  %43 = load ptr, ptr %42, align 8, !tbaa !245
  %44 = call fastcc ptr @pch_option_mismatch(ptr noundef %43) #18
  br label %51

45:                                               ; preds = %36
  %46 = getelementptr inbounds i8, ptr %32, i64 %38
  br label %47

47:                                               ; preds = %30, %45
  %48 = phi ptr [ %46, %45 ], [ %32, %30 ]
  %49 = add nuw nsw i64 %31, 1
  %50 = icmp eq i64 %49, %26
  br i1 %50, label %51, label %30, !llvm.loop !246

51:                                               ; preds = %47, %23, %8, %2, %18, %41
  %52 = phi ptr [ %44, %41 ], [ %21, %18 ], [ @.str.34, %2 ], [ @.str.35, %8 ], [ null, %23 ], [ null, %47 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #21
  ret ptr %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @pch_option_mismatch(ptr noundef %0) unnamed_addr #0 !prof !132 !PGOFuncName !247 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %3 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.36, ptr noundef %0) #19
  %4 = load ptr, ptr %2, align 8, !tbaa !133
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @.str.37, ptr %4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  ret ptr %6
}

; Function Attrs: optsize
declare i32 @asprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @default_tree_printer(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) #0 !prof !132 {
  %8 = icmp ne i32 %3, 0
  %9 = or i8 %6, %4
  %10 = icmp ne i8 %9, 0
  %11 = or i1 %8, %10
  br i1 %11, label %118, label %12

12:                                               ; preds = %7
  %13 = load i8, ptr %2, align 1, !tbaa !141
  switch i8 %13, label %118 [
    i8 69, label %14
    i8 68, label %45
    i8 70, label %72
    i8 84, label %72
  ]

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !248
  %17 = load i32, ptr %16, align 8
  %18 = icmp ult i32 %17, 41
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.__va_list_tag, ptr %16, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = zext nneg i32 %17 to i64
  %23 = getelementptr i8, ptr %21, i64 %22
  %24 = add nuw nsw i32 %17, 8
  store i32 %24, ptr %16, align 8
  br label %29

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.__va_list_tag, ptr %16, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr i8, ptr %27, i64 8
  store ptr %28, ptr %26, align 8
  br label %29

29:                                               ; preds = %25, %19
  %30 = phi ptr [ %23, %19 ], [ %27, %25 ]
  %31 = load ptr, ptr %30, align 8
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 1
  br i1 %34, label %35, label %90

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.pretty_print_info, ptr %0, i64 0, i32 9
  %37 = load i8, ptr %36, align 2, !tbaa !250
  %38 = icmp eq i8 %37, 0
  %39 = getelementptr inbounds %struct.tree_identifier, ptr %31, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !141
  br i1 %38, label %43, label %41

41:                                               ; preds = %35
  %42 = tail call ptr @identifier_to_locale(ptr noundef %40) #19
  br label %43

43:                                               ; preds = %35, %41
  %44 = phi ptr [ %42, %41 ], [ %40, %35 ]
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef %44) #19
  br label %118

45:                                               ; preds = %12
  %46 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !248
  %48 = load i32, ptr %47, align 8
  %49 = icmp ult i32 %48, 41
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.__va_list_tag, ptr %47, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8
  %53 = zext nneg i32 %48 to i64
  %54 = getelementptr i8, ptr %52, i64 %53
  %55 = add nuw nsw i32 %48, 8
  store i32 %55, ptr %47, align 8
  br label %60

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.__va_list_tag, ptr %47, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr i8, ptr %58, i64 8
  store ptr %59, ptr %57, align 8
  br label %60

60:                                               ; preds = %56, %50
  %61 = phi ptr [ %54, %50 ], [ %58, %56 ]
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.tree_decl_common, ptr %62, i64 0, i32 2
  %64 = load i64, ptr %63, align 8
  %65 = and i64 %64, 16384
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %90, label %67

67:                                               ; preds = %60
  %68 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %62) #19
  %69 = icmp eq ptr %68, null
  br i1 %69, label %90, label %70

70:                                               ; preds = %67
  %71 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %62) #19
  br label %90

72:                                               ; preds = %12, %12
  %73 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !248
  %75 = load i32, ptr %74, align 8
  %76 = icmp ult i32 %75, 41
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.__va_list_tag, ptr %74, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8
  %80 = zext nneg i32 %75 to i64
  %81 = getelementptr i8, ptr %79, i64 %80
  %82 = add nuw nsw i32 %75, 8
  store i32 %82, ptr %74, align 8
  br label %87

83:                                               ; preds = %72
  %84 = getelementptr inbounds %struct.__va_list_tag, ptr %74, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8
  %86 = getelementptr i8, ptr %85, i64 8
  store ptr %86, ptr %84, align 8
  br label %87

87:                                               ; preds = %83, %77
  %88 = phi ptr [ %81, %77 ], [ %85, %83 ]
  %89 = load ptr, ptr %88, align 8
  br label %90

90:                                               ; preds = %60, %67, %70, %29, %87
  %91 = phi ptr [ %89, %87 ], [ %71, %70 ], [ %62, %67 ], [ %62, %60 ], [ %31, %29 ]
  %92 = icmp eq i8 %5, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !251
  %96 = icmp eq ptr %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.tree_decl_minimal, ptr %91, i64 0, i32 1
  %99 = load i32, ptr %98, align 8, !tbaa !141
  store i32 %99, ptr %95, align 4, !tbaa !138
  br label %100

100:                                              ; preds = %97, %93, %90
  %101 = load i64, ptr %91, align 8
  %102 = and i64 %101, 65535
  %103 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !138
  %105 = icmp eq i32 %104, 3
  br i1 %105, label %106, label %116

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.tree_decl_minimal, ptr %91, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !141
  %109 = icmp eq ptr %108, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !142
  %112 = tail call ptr %111(ptr noundef nonnull %91, i32 noundef 2) #19
  %113 = tail call ptr @identifier_to_locale(ptr noundef %112) #19
  br label %114

114:                                              ; preds = %106, %110
  %115 = phi ptr [ %113, %110 ], [ @.str.38, %106 ]
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %115) #19
  br label %118

116:                                              ; preds = %100
  %117 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %91, i32 noundef 0, i32 noundef 32768, i8 noundef zeroext 0) #19
  br label %118

118:                                              ; preds = %114, %116, %12, %7, %43
  %119 = phi i8 [ 1, %43 ], [ 0, %7 ], [ 0, %12 ], [ 1, %116 ], [ 1, %114 ]
  ret i8 %119
}

; Function Attrs: optsize
declare void @pp_base_string(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @decl_debug_expr_lookup(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @dump_generic_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @target_reinit() local_unnamed_addr #0 !prof !132 {
  tail call fastcc void @backend_init_target() #18
  tail call fastcc void @lang_dependent_init_target() #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @backend_init_target() unnamed_addr #0 !prof !158 !PGOFuncName !252 {
  tail call fastcc void @init_alignments() #18
  tail call void @init_emit_regs() #19
  tail call void @init_regs() #19
  tail call void @init_fake_stack_mems() #19
  tail call void @init_alias_target() #19
  tail call void @init_reload() #19
  tail call void @init_dummy_function_start() #19
  tail call void @init_expmed() #19
  store i8 0, ptr @caller_save_initialized_p, align 1, !tbaa !141
  tail call void @expand_dummy_function_end() #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @lang_dependent_init_target() unnamed_addr #0 !prof !158 !PGOFuncName !253 {
  tail call fastcc void @init_excess_precision() #18
  tail call void @init_optabs() #19
  tail call void @init_dummy_function_start() #19
  tail call void @init_expr_target() #19
  tail call void @init_set_costs() #19
  tail call void @ira_init() #19
  tail call void @expand_dummy_function_end() #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc void @init_alignments() unnamed_addr #5 !prof !158 !PGOFuncName !254 {
  %1 = load i32, ptr @align_loops, align 4, !tbaa !138
  %2 = icmp slt i32 %1, 1
  br i1 %2, label %3, label %4, !prof !165

3:                                                ; preds = %0
  store i32 1, ptr @align_loops, align 4, !tbaa !138
  br label %4

4:                                                ; preds = %3, %0
  %5 = phi i32 [ 1, %3 ], [ %1, %0 ]
  %6 = load i32, ptr @align_loops_max_skip, align 4, !tbaa !138
  %7 = icmp sgt i32 %6, %5
  br i1 %7, label %8, label %10, !prof !165

8:                                                ; preds = %4
  %9 = add nsw i32 %5, -1
  store i32 %9, ptr @align_loops_max_skip, align 4, !tbaa !138
  br label %10

10:                                               ; preds = %8, %4
  %11 = shl nuw nsw i32 %5, 1
  %12 = add nsw i32 %11, -1
  %13 = sext i32 %12 to i64
  %14 = tail call i32 @floor_log2(i64 noundef %13) #18
  store i32 %14, ptr @align_loops_log, align 4, !tbaa !138
  %15 = load i32, ptr @align_jumps, align 4, !tbaa !138
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %18, !prof !165

17:                                               ; preds = %10
  store i32 1, ptr @align_jumps, align 4, !tbaa !138
  br label %18

18:                                               ; preds = %17, %10
  %19 = phi i32 [ 1, %17 ], [ %15, %10 ]
  %20 = load i32, ptr @align_jumps_max_skip, align 4, !tbaa !138
  %21 = icmp sgt i32 %20, %19
  br i1 %21, label %22, label %24, !prof !165

22:                                               ; preds = %18
  %23 = add nsw i32 %19, -1
  store i32 %23, ptr @align_jumps_max_skip, align 4, !tbaa !138
  br label %24

24:                                               ; preds = %22, %18
  %25 = shl nuw nsw i32 %19, 1
  %26 = add nsw i32 %25, -1
  %27 = sext i32 %26 to i64
  %28 = tail call i32 @floor_log2(i64 noundef %27) #18
  store i32 %28, ptr @align_jumps_log, align 4, !tbaa !138
  %29 = load i32, ptr @align_labels, align 4, !tbaa !138
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %31, label %32, !prof !179

31:                                               ; preds = %24
  store i32 1, ptr @align_labels, align 4, !tbaa !138
  br label %32

32:                                               ; preds = %31, %24
  %33 = phi i32 [ 1, %31 ], [ %29, %24 ]
  %34 = shl nuw nsw i32 %33, 1
  %35 = add nsw i32 %34, -1
  %36 = sext i32 %35 to i64
  %37 = tail call i32 @floor_log2(i64 noundef %36) #18
  store i32 %37, ptr @align_labels_log, align 4, !tbaa !138
  %38 = load i32, ptr @align_labels_max_skip, align 4, !tbaa !138
  %39 = icmp sgt i32 %38, %33
  br i1 %39, label %40, label %42, !prof !165

40:                                               ; preds = %32
  %41 = add nsw i32 %33, -1
  store i32 %41, ptr @align_labels_max_skip, align 4, !tbaa !138
  br label %42

42:                                               ; preds = %40, %32
  %43 = load i32, ptr @align_functions, align 4, !tbaa !138
  %44 = icmp slt i32 %43, 1
  br i1 %44, label %45, label %46, !prof !165

45:                                               ; preds = %42
  store i32 1, ptr @align_functions, align 4, !tbaa !138
  br label %46

46:                                               ; preds = %45, %42
  %47 = phi i32 [ 1, %45 ], [ %43, %42 ]
  %48 = shl nuw nsw i32 %47, 1
  %49 = add nsw i32 %48, -1
  %50 = sext i32 %49 to i64
  %51 = tail call i32 @floor_log2(i64 noundef %50) #18
  store i32 %51, ptr @align_functions_log, align 4, !tbaa !138
  ret void
}

; Function Attrs: optsize
declare void @init_emit_regs() local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_regs() local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_fake_stack_mems() local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_alias_target() local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_reload() local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_dummy_function_start() local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_expmed() local_unnamed_addr #2

; Function Attrs: optsize
declare void @expand_dummy_function_end() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_excess_precision() unnamed_addr #0 !prof !158 !PGOFuncName !255 {
  %1 = load i32, ptr @flag_excess_precision_cmdline, align 4, !tbaa !138
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5, !prof !165

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.39, i32 noundef 2227, ptr noundef nonnull @.str.40) #19
  %4 = load i32, ptr @flag_excess_precision_cmdline, align 4, !tbaa !138
  br label %5

5:                                                ; preds = %0, %3
  %6 = phi i32 [ %1, %0 ], [ %4, %3 ]
  %7 = load i32, ptr @flag_unsafe_math_optimizations, align 4, !tbaa !138
  %8 = icmp eq i32 %7, 0
  %9 = select i1 %8, i32 %6, i32 1, !prof !179
  store i32 %9, ptr @flag_excess_precision, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %16, !prof !165

11:                                               ; preds = %5
  %12 = load i32, ptr @ix86_fpmath, align 4, !tbaa !138
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store i32 1, ptr @flag_excess_precision, align 4, !tbaa !138
  br label %16

16:                                               ; preds = %11, %15, %5
  ret void
}

; Function Attrs: optsize
declare void @init_optabs() local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_expr_target() local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_set_costs() local_unnamed_addr #2

; Function Attrs: optsize
declare void @ira_init() local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_memory_report(i8 noundef zeroext %0) local_unnamed_addr #0 !prof !132 {
  tail call void @ggc_print_statistics() #19
  tail call void @stringpool_statistics() #19
  tail call void @dump_tree_statistics() #19
  tail call void @dump_gimple_statistics() #19
  tail call void @dump_rtx_statistics() #19
  tail call void @dump_varray_statistics() #19
  tail call void @dump_alloc_pool_statistics() #19
  tail call void @dump_bitmap_statistics() #19
  tail call void @dump_vec_loc_statistics() #19
  tail call void @dump_ggc_loc_statistics(i8 noundef zeroext %0) #19
  %2 = load ptr, ptr @stderr, align 8, !tbaa !133
  tail call void @dump_alias_stats(ptr noundef %2) #19
  %3 = load ptr, ptr @stderr, align 8, !tbaa !133
  tail call void @dump_pta_stats(ptr noundef %3) #19
  ret void
}

; Function Attrs: optsize
declare void @ggc_print_statistics() local_unnamed_addr #2

; Function Attrs: optsize
declare void @stringpool_statistics() local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_tree_statistics() local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_gimple_statistics() local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_rtx_statistics() local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_varray_statistics() local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_alloc_pool_statistics() local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_bitmap_statistics() local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_vec_loc_statistics() local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_ggc_loc_statistics(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_alias_stats(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_pta_stats(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @toplev_main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !158 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4, !tbaa !138
  store ptr %1, ptr %4, align 8, !tbaa !133
  call void @expandargv(ptr noundef nonnull %3, ptr noundef nonnull %4) #19
  %5 = load ptr, ptr %4, align 8, !tbaa !133
  store ptr %5, ptr @save_argv, align 8, !tbaa !133
  %6 = load ptr, ptr %5, align 8, !tbaa !133
  call fastcc void @general_init(ptr noundef %6) #18
  %7 = load i32, ptr %3, align 4, !tbaa !138
  %8 = load ptr, ptr %4, align 8, !tbaa !133
  call void @decode_options(i32 noundef %7, ptr noundef %8) #19
  call fastcc void @init_local_tick() #18
  call void @initialize_plugins() #19
  %9 = load i32, ptr @version_flag, align 4, !tbaa !138
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11, !prof !179

11:                                               ; preds = %2
  %12 = load ptr, ptr @stderr, align 8, !tbaa !133
  call void @print_version(ptr noundef %12, ptr noundef nonnull @.str.32) #18
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i32, ptr @help_flag, align 4, !tbaa !138
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16, !prof !179

16:                                               ; preds = %13
  %17 = load ptr, ptr @stderr, align 8, !tbaa !133
  call void @print_plugins_help(ptr noundef %17, ptr noundef nonnull @.str.32) #19
  br label %18

18:                                               ; preds = %16, %13
  %19 = load i8, ptr @exit_after_options, align 1, !tbaa !141
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %22, !prof !179

21:                                               ; preds = %18
  call fastcc void @do_compile() #18
  br label %22

22:                                               ; preds = %21, %18
  %23 = load ptr, ptr @global_dc, align 8, !tbaa !133
  %24 = getelementptr inbounds %struct.diagnostic_context, ptr %23, i64 0, i32 1, i64 6
  %25 = load i32, ptr %24, align 8, !tbaa !138
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31, !prof !165

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.diagnostic_context, ptr %23, i64 0, i32 1, i64 4
  %29 = load i32, ptr %28, align 8, !tbaa !138
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27, %22
  call void @print_ignored_options() #19
  br label %32

32:                                               ; preds = %31, %27
  %33 = call i32 @invoke_plugin_callbacks(i32 noundef 4, ptr noundef null) #19
  call void @finalize_plugins() #19
  %34 = load ptr, ptr @global_dc, align 8, !tbaa !133
  %35 = getelementptr inbounds %struct.diagnostic_context, ptr %34, i64 0, i32 1, i64 4
  %36 = load i32, ptr %35, align 8, !tbaa !138
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43, !prof !179

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.diagnostic_context, ptr %34, i64 0, i32 1, i64 5
  %40 = load i32, ptr %39, align 4, !tbaa !138
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  br label %43

43:                                               ; preds = %38, %32
  %44 = phi i32 [ 1, %32 ], [ %42, %38 ]
  ret i32 %44
}

; Function Attrs: optsize
declare void @expandargv(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @general_init(ptr noundef %0) unnamed_addr #0 !prof !158 !PGOFuncName !256 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #18
  %3 = getelementptr inbounds i8, ptr %0, i64 %2
  br label %4

4:                                                ; preds = %7, %1
  %5 = phi ptr [ %3, %1 ], [ %8, %7 ]
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %11, label %7, !prof !257

7:                                                ; preds = %4
  %8 = getelementptr inbounds i8, ptr %5, i64 -1
  %9 = load i8, ptr %8, align 1, !tbaa !141
  %10 = icmp eq i8 %9, 47
  br i1 %10, label %11, label %4, !prof !258, !llvm.loop !259

11:                                               ; preds = %4, %7
  %12 = phi ptr [ %0, %4 ], [ %5, %7 ]
  store ptr %12, ptr @progname, align 8, !tbaa !133
  tail call void @xmalloc_set_program_name(ptr noundef %12) #19
  tail call void @hex_init() #19
  tail call void @unlock_std_streams() #19
  %13 = load ptr, ptr @global_dc, align 8, !tbaa !133
  tail call void @diagnostic_initialize(ptr noundef %13) #19
  %14 = load ptr, ptr @global_dc, align 8, !tbaa !133
  %15 = load ptr, ptr %14, align 8, !tbaa !151
  %16 = getelementptr inbounds %struct.pretty_print_info, ptr %15, i64 0, i32 6
  store ptr @default_tree_printer, ptr %16, align 8, !tbaa !260
  %17 = tail call ptr @signal(i32 noundef 11, ptr noundef nonnull @crash_signal) #19
  %18 = tail call ptr @signal(i32 noundef 4, ptr noundef nonnull @crash_signal) #19
  %19 = tail call ptr @signal(i32 noundef 7, ptr noundef nonnull @crash_signal) #19
  %20 = tail call ptr @signal(i32 noundef 6, ptr noundef nonnull @crash_signal) #19
  %21 = tail call ptr @signal(i32 noundef 8, ptr noundef nonnull @crash_signal) #19
  %22 = load ptr, ptr @host_hooks, align 8, !tbaa !261
  tail call void %22() #19
  tail call void @init_ggc() #19
  tail call void @init_stringpool() #19
  %23 = tail call ptr @ggc_alloc_stat(i64 noundef 56) #19
  store ptr %23, ptr @line_table, align 8, !tbaa !133
  tail call void @linemap_init(ptr noundef %23) #19
  %24 = load ptr, ptr @line_table, align 8, !tbaa !133
  %25 = getelementptr inbounds %struct.line_maps, ptr %24, i64 0, i32 10
  store ptr @realloc_for_line_map, ptr %25, align 8, !tbaa !263
  tail call void @init_ttree() #19
  tail call void @init_reg_sets() #19
  tail call void @add_params(ptr noundef nonnull @lang_independent_params, i64 noundef 119) #19
  tail call void @init_ggc_heuristics() #19
  tail call void @init_optimization_passes() #19
  tail call void @statistics_early_init() #19
  ret void
}

; Function Attrs: optsize
declare void @decode_options(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @init_local_tick() unnamed_addr #9 !prof !158 !PGOFuncName !265 {
  %1 = alloca %struct.timeval, align 8
  %2 = load ptr, ptr @flag_random_seed, align 8, !tbaa !133
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %13, !prof !179

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #21
  %5 = call i32 @gettimeofday(ptr noundef nonnull %1, ptr noundef null) #18
  %6 = load i64, ptr %1, align 8, !tbaa !266
  %7 = mul nsw i64 %6, 1000
  %8 = getelementptr inbounds %struct.timeval, ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !268
  %10 = sdiv i64 %9, 1000
  %11 = add nsw i64 %10, %7
  %12 = trunc i64 %11 to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #21
  br label %13

13:                                               ; preds = %0, %4
  %14 = phi i32 [ %12, %4 ], [ -1, %0 ]
  store i32 %14, ptr @local_tick, align 4
  ret void
}

; Function Attrs: optsize
declare void @initialize_plugins() local_unnamed_addr #2

; Function Attrs: optsize
declare void @print_plugins_help(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_compile() unnamed_addr #0 !prof !158 !PGOFuncName !269 {
  %1 = load i32, ptr @time_report, align 4, !tbaa !138
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @quiet_flag, align 4
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  %6 = load i32, ptr @flag_detailed_statistics, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %9, label %10, !prof !270

9:                                                ; preds = %0
  tail call void @timevar_init() #19
  br label %10

10:                                               ; preds = %0, %9
  tail call void @timevar_start(i32 noundef 1) #19
  tail call fastcc void @process_options() #18
  %11 = load ptr, ptr @global_dc, align 8, !tbaa !133
  %12 = getelementptr inbounds %struct.diagnostic_context, ptr %11, i64 0, i32 1, i64 4
  %13 = load i32, ptr %12, align 8, !tbaa !138
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %25, !prof !179

15:                                               ; preds = %10
  tail call void @init_adjust_machine_modes() #19
  %16 = load i8, ptr @no_backend, align 1, !tbaa !141
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %19, !prof !179

18:                                               ; preds = %15
  tail call fastcc void @backend_init() #18
  br label %19

19:                                               ; preds = %18, %15
  %20 = load ptr, ptr @main_input_filename, align 8, !tbaa !133
  %21 = tail call fastcc i32 @lang_dependent_init(ptr noundef %20) #18, !range !271
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23, !prof !165

23:                                               ; preds = %19
  tail call fastcc void @compile_file() #18
  br label %24

24:                                               ; preds = %23, %19
  tail call fastcc void @finalize() #18
  br label %25

25:                                               ; preds = %24, %10
  tail call void @timevar_stop(i32 noundef 1) #19
  %26 = load ptr, ptr @stderr, align 8, !tbaa !133
  tail call void @timevar_print(ptr noundef %26) #19
  ret void
}

; Function Attrs: optsize
declare void @print_ignored_options() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @invoke_plugin_callbacks(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @finalize_plugins() local_unnamed_addr #2

; Function Attrs: optsize
declare void @xmalloc_set_program_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @hex_init() local_unnamed_addr #2

; Function Attrs: optsize
declare void @unlock_std_streams() local_unnamed_addr #2

; Function Attrs: optsize
declare void @diagnostic_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @crash_signal(i32 noundef %0) #0 !prof !132 !PGOFuncName !272 {
  %2 = tail call ptr @signal(i32 noundef %0, ptr noundef null) #19
  %3 = load ptr, ptr @this_is_asm_operands, align 8, !tbaa !133
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.41) #19
  tail call void @exit(i32 noundef 1) #22
  unreachable

6:                                                ; preds = %1
  %7 = tail call ptr @strsignal(i32 noundef %0) #19
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.42, ptr noundef %7) #19
  ret void
}

; Function Attrs: optsize
declare void @init_ggc() local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_stringpool() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @linemap_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @realloc_for_line_map(ptr noundef %0, i64 noundef %1) #0 !prof !273 !PGOFuncName !274 {
  %3 = tail call ptr @ggc_realloc_stat(ptr noundef %0, i64 noundef %1) #19
  ret ptr %3
}

; Function Attrs: optsize
declare void @init_ttree() local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_reg_sets() local_unnamed_addr #2

; Function Attrs: optsize
declare void @add_params(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_ggc_heuristics() local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_optimization_passes() local_unnamed_addr #2

; Function Attrs: optsize
declare void @statistics_early_init() local_unnamed_addr #2

; Function Attrs: optsize
declare void @output_operand_lossage(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noreturn optsize
declare void @exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare void @internal_error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @strsignal(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ggc_realloc_stat(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @timevar_init() local_unnamed_addr #2

; Function Attrs: optsize
declare void @timevar_start(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_options() unnamed_addr #0 !prof !158 !PGOFuncName !275 {
  store ptr @do_nothing_debug_hooks, ptr @debug_hooks, align 8, !tbaa !133
  %1 = load i32, ptr @warn_unused_function, align 4, !tbaa !138
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %3, label %5, !prof !179

3:                                                ; preds = %0
  %4 = load i32, ptr @warn_unused, align 4, !tbaa !138
  store i32 %4, ptr @warn_unused_function, align 4, !tbaa !138
  br label %5

5:                                                ; preds = %3, %0
  %6 = load i32, ptr @warn_unused_label, align 4, !tbaa !138
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %10, !prof !179

8:                                                ; preds = %5
  %9 = load i32, ptr @warn_unused, align 4, !tbaa !138
  store i32 %9, ptr @warn_unused_label, align 4, !tbaa !138
  br label %10

10:                                               ; preds = %8, %5
  %11 = load i32, ptr @warn_unused_parameter, align 4, !tbaa !138
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %20, !prof !179

13:                                               ; preds = %10
  %14 = load i32, ptr @warn_unused, align 4, !tbaa !138
  %15 = icmp ne i32 %14, 0
  %16 = load i32, ptr @extra_warnings, align 4
  %17 = icmp ne i32 %16, 0
  %18 = select i1 %15, i1 %17, i1 false, !prof !165
  %19 = zext i1 %18 to i32
  store i32 %19, ptr @warn_unused_parameter, align 4, !tbaa !138
  br label %20

20:                                               ; preds = %13, %10
  %21 = load i32, ptr @warn_unused_variable, align 4, !tbaa !138
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %25, !prof !179

23:                                               ; preds = %20
  %24 = load i32, ptr @warn_unused, align 4, !tbaa !138
  store i32 %24, ptr @warn_unused_variable, align 4, !tbaa !138
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i32, ptr @warn_unused_value, align 4, !tbaa !138
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %30, !prof !179

28:                                               ; preds = %25
  %29 = load i32, ptr @warn_unused, align 4, !tbaa !138
  store i32 %29, ptr @warn_unused_value, align 4, !tbaa !138
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i32, ptr @warn_uninitialized, align 4, !tbaa !138
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %35, !prof !179

33:                                               ; preds = %30
  %34 = load i32, ptr @extra_warnings, align 4, !tbaa !138
  store i32 %34, ptr @warn_uninitialized, align 4, !tbaa !138
  br label %35

35:                                               ; preds = %33, %30
  %36 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 8), align 8, !tbaa !276
  %37 = tail call zeroext i8 %36(ptr noundef nonnull @main_input_filename) #19
  store i8 %37, ptr @no_backend, align 1, !tbaa !141
  tail call void @override_options(i8 noundef zeroext 1) #19
  %38 = load i32, ptr @flag_compare_debug, align 4, !tbaa !138
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40, !prof !179

40:                                               ; preds = %35
  %41 = load ptr, ptr @global_dc, align 8, !tbaa !133
  tail call fastcc void @diagnostic_inhibit_notes(ptr noundef %41) #18
  br label %42

42:                                               ; preds = %40, %35
  %43 = load i32, ptr @flag_section_anchors, align 4, !tbaa !138
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45, !prof !179

45:                                               ; preds = %42
  %46 = tail call fastcc zeroext i8 @target_supports_section_anchors_p() #18, !range !200
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 592, ptr noundef nonnull @.str.279, ptr noundef nonnull @.str.280) #19
  store i32 0, ptr @flag_section_anchors, align 4, !tbaa !138
  br label %50

50:                                               ; preds = %48, %45, %42
  %51 = load i32, ptr @flag_short_enums, align 4, !tbaa !138
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %57, !prof !179

53:                                               ; preds = %50
  %54 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 77), align 8, !tbaa !277
  %55 = tail call zeroext i8 %54() #19
  %56 = zext i8 %55 to i32
  store i32 %56, ptr @flag_short_enums, align 4, !tbaa !138
  br label %57

57:                                               ; preds = %53, %50
  %58 = load ptr, ptr @aux_base_name, align 8, !tbaa !133
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %70, !prof !179

60:                                               ; preds = %57
  %61 = load ptr, ptr @main_input_filename, align 8, !tbaa !133
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63, !prof !165

63:                                               ; preds = %60
  %64 = tail call ptr @lbasename(ptr noundef nonnull %61) #19
  %65 = tail call ptr @xstrdup(ptr noundef %64) #19
  %66 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %65) #18
  %67 = trunc i64 %66 to i32
  tail call void @strip_off_ending(ptr noundef %65, i32 noundef %67) #18
  br label %68

68:                                               ; preds = %60, %63
  %69 = phi ptr [ %65, %63 ], [ @.str.281, %60 ]
  store ptr %69, ptr @aux_base_name, align 8, !tbaa !133
  br label %70

70:                                               ; preds = %68, %57
  %71 = load i32, ptr @flag_graphite, align 4, !tbaa !138
  %72 = icmp ne i32 %71, 0
  %73 = load i32, ptr @flag_loop_block, align 4
  %74 = icmp ne i32 %73, 0
  %75 = select i1 %72, i1 true, i1 %74
  %76 = load i32, ptr @flag_loop_interchange, align 4
  %77 = icmp ne i32 %76, 0
  %78 = select i1 %75, i1 true, i1 %77
  %79 = load i32, ptr @flag_loop_strip_mine, align 4
  %80 = icmp ne i32 %79, 0
  %81 = select i1 %78, i1 true, i1 %80
  %82 = load i32, ptr @flag_graphite_identity, align 4
  %83 = icmp ne i32 %82, 0
  %84 = select i1 %81, i1 true, i1 %83
  %85 = load i32, ptr @flag_loop_parallelize_all, align 4
  %86 = icmp ne i32 %85, 0
  %87 = select i1 %84, i1 true, i1 %86
  br i1 %87, label %88, label %89, !prof !278

88:                                               ; preds = %70
  tail call void (ptr, ...) @sorry(ptr noundef nonnull @.str.282) #19
  br label %89

89:                                               ; preds = %70, %88
  %90 = load i32, ptr @flag_unroll_all_loops, align 4, !tbaa !138
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92, !prof !179

92:                                               ; preds = %89
  store i32 1, ptr @flag_unroll_loops, align 4, !tbaa !138
  br label %93

93:                                               ; preds = %92, %89
  %94 = load i32, ptr @flag_rerun_cse_after_loop, align 4, !tbaa !138
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %96, label %103, !prof !165

96:                                               ; preds = %93
  %97 = load i32, ptr @flag_unroll_loops, align 4, !tbaa !138
  %98 = icmp ne i32 %97, 0
  %99 = load i32, ptr @flag_peel_loops, align 4
  %100 = icmp ne i32 %99, 0
  %101 = select i1 %98, i1 true, i1 %100
  %102 = zext i1 %101 to i32
  store i32 %102, ptr @flag_rerun_cse_after_loop, align 4, !tbaa !138
  br label %103

103:                                              ; preds = %96, %93
  %104 = load i32, ptr @flag_web, align 4, !tbaa !138
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %106, label %113, !prof !179

106:                                              ; preds = %103
  %107 = load i32, ptr @flag_unroll_loops, align 4, !tbaa !138
  %108 = icmp ne i32 %107, 0
  %109 = load i32, ptr @flag_peel_loops, align 4
  %110 = icmp ne i32 %109, 0
  %111 = select i1 %108, i1 true, i1 %110, !prof !165
  %112 = zext i1 %111 to i32
  store i32 %112, ptr @flag_web, align 4, !tbaa !138
  br label %113

113:                                              ; preds = %106, %103
  %114 = load i32, ptr @flag_rename_registers, align 4, !tbaa !138
  %115 = icmp eq i32 %114, 2
  br i1 %115, label %116, label %123, !prof !179

116:                                              ; preds = %113
  %117 = load i32, ptr @flag_unroll_loops, align 4, !tbaa !138
  %118 = icmp ne i32 %117, 0
  %119 = load i32, ptr @flag_peel_loops, align 4
  %120 = icmp ne i32 %119, 0
  %121 = select i1 %118, i1 true, i1 %120, !prof !165
  %122 = zext i1 %121 to i32
  store i32 %122, ptr @flag_rename_registers, align 4, !tbaa !138
  br label %123

123:                                              ; preds = %116, %113
  %124 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !138
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %127, label %126, !prof !179

126:                                              ; preds = %123
  store i32 1, ptr @flag_asynchronous_unwind_tables, align 4, !tbaa !138
  br label %130

127:                                              ; preds = %123
  %128 = load i32, ptr @flag_asynchronous_unwind_tables, align 4, !tbaa !138
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %131, label %130, !prof !279

130:                                              ; preds = %126, %127
  store i32 1, ptr @flag_unwind_tables, align 4, !tbaa !138
  br label %131

131:                                              ; preds = %130, %127
  %132 = load i32, ptr @flag_value_profile_transformations, align 4, !tbaa !138
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %135, label %134, !prof !179

134:                                              ; preds = %131
  store i32 1, ptr @flag_profile_values, align 4, !tbaa !138
  br label %135

135:                                              ; preds = %134, %131
  %136 = load i32, ptr @flag_delayed_branch, align 4, !tbaa !138
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %140, label %138, !prof !179

138:                                              ; preds = %135
  %139 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.283) #19
  br label %140

140:                                              ; preds = %138, %135
  store ptr @.str.32, ptr @user_label_prefix, align 8, !tbaa !133
  %141 = load i32, ptr @flag_leading_underscore, align 4, !tbaa !138
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %146, label %143, !prof !179

143:                                              ; preds = %140
  %144 = icmp eq i32 %141, 0
  %145 = select i1 %144, ptr @.str.32, ptr @.str.284
  store ptr %145, ptr @user_label_prefix, align 8, !tbaa !133
  br label %146

146:                                              ; preds = %143, %140
  %147 = load i32, ptr @version_flag, align 4, !tbaa !138
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %154, label %149, !prof !179

149:                                              ; preds = %146
  %150 = load ptr, ptr @stderr, align 8, !tbaa !133
  tail call void @print_version(ptr noundef %150, ptr noundef nonnull @.str.32) #18
  %151 = load i32, ptr @quiet_flag, align 4, !tbaa !138
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  tail call fastcc void @print_switch_values(ptr noundef nonnull @print_to_stderr) #18
  br label %154

154:                                              ; preds = %149, %153, %146
  %155 = load i32, ptr @flag_syntax_only, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %158, label %157, !prof !179

157:                                              ; preds = %154
  store i32 0, ptr @write_symbols, align 4, !tbaa !138
  store i32 0, ptr @profile_flag, align 4, !tbaa !138
  br label %158

158:                                              ; preds = %157, %154
  %159 = load i32, ptr @flag_gtoggle, align 4, !tbaa !138
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %169, label %161, !prof !179

161:                                              ; preds = %158
  %162 = load i32, ptr @debug_info_level, align 4, !tbaa !138
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  store i32 2, ptr @debug_info_level, align 4, !tbaa !138
  %165 = load i32, ptr @write_symbols, align 4, !tbaa !138
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  store i32 3, ptr @write_symbols, align 4, !tbaa !138
  br label %169

168:                                              ; preds = %161
  store i32 0, ptr @debug_info_level, align 4, !tbaa !138
  br label %169

169:                                              ; preds = %168, %167, %164, %158
  %170 = load ptr, ptr @flag_dump_final_insns, align 8, !tbaa !133
  %171 = icmp eq ptr %170, null
  %172 = icmp ne i32 %155, 0
  %173 = or i1 %172, %171
  %174 = load i8, ptr @no_backend, align 1
  %175 = icmp ne i8 %174, 0
  %176 = select i1 %173, i1 true, i1 %175
  br i1 %176, label %189, label %177, !prof !197

177:                                              ; preds = %169
  %178 = tail call ptr @fopen_unlocked(ptr noundef nonnull %170, ptr noundef nonnull @.str.287) #19
  %179 = icmp eq ptr %178, null
  br i1 %179, label %183, label %180

180:                                              ; preds = %177
  %181 = tail call i32 @fclose(ptr noundef nonnull %178) #18
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %189, label %183

183:                                              ; preds = %180, %177
  %184 = phi ptr [ @.str.288, %177 ], [ @.str.289, %180 ]
  %185 = load ptr, ptr @flag_dump_final_insns, align 8, !tbaa !133
  %186 = tail call ptr @__errno_location() #19
  %187 = load i32, ptr %186, align 4, !tbaa !138
  %188 = tail call ptr @strerror(i32 noundef %187) #19
  tail call void (ptr, ...) @error(ptr noundef nonnull %184, ptr noundef %185, ptr noundef %188) #19
  store ptr null, ptr @flag_dump_final_insns, align 8, !tbaa !133
  br label %189

189:                                              ; preds = %183, %180, %169
  %190 = load i32, ptr @dwarf_strict, align 4, !tbaa !138
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %193, !prof !179

192:                                              ; preds = %189
  store i32 0, ptr @dwarf_strict, align 4, !tbaa !138
  br label %193

193:                                              ; preds = %192, %189
  %194 = load i32, ptr @debug_info_level, align 4, !tbaa !138
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %197, !prof !179

196:                                              ; preds = %193
  store i32 0, ptr @write_symbols, align 4, !tbaa !138
  br label %215

197:                                              ; preds = %193
  %198 = load i32, ptr @write_symbols, align 4, !tbaa !138
  switch i32 %198, label %201 [
    i32 0, label %206
    i32 1, label %199
    i32 3, label %200
  ], !prof !280

199:                                              ; preds = %197
  store ptr @dbx_debug_hooks, ptr @debug_hooks, align 8, !tbaa !133
  br label %206

200:                                              ; preds = %197
  store ptr @dwarf2_debug_hooks, ptr @debug_hooks, align 8, !tbaa !133
  br label %206

201:                                              ; preds = %197
  %202 = zext i32 %198 to i64
  %203 = getelementptr inbounds [6 x ptr], ptr @debug_type_names, i64 0, i64 %202
  %204 = load ptr, ptr %203, align 8, !tbaa !133
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.290, ptr noundef %204) #19
  %205 = load i32, ptr @debug_info_level, align 4, !tbaa !138
  br label %206

206:                                              ; preds = %199, %201, %200, %197
  %207 = phi i32 [ %194, %197 ], [ %194, %200 ], [ %205, %201 ], [ %194, %199 ]
  %208 = icmp ult i32 %207, 2
  br i1 %208, label %215, label %209, !prof !281

209:                                              ; preds = %206
  %210 = load ptr, ptr @debug_hooks, align 8, !tbaa !133
  %211 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %210, i64 0, i32 24
  %212 = load ptr, ptr %211, align 8, !tbaa !282
  %213 = load ptr, ptr getelementptr inbounds (%struct.gcc_debug_hooks, ptr @do_nothing_debug_hooks, i64 0, i32 24), align 8, !tbaa !282
  %214 = icmp eq ptr %212, %213
  br i1 %214, label %221, label %231

215:                                              ; preds = %196, %206
  %216 = load i32, ptr @flag_var_tracking, align 4, !tbaa !138
  %217 = icmp eq i32 %216, 1
  %218 = load i32, ptr @flag_var_tracking_uninit, align 4
  %219 = icmp eq i32 %218, 1
  %220 = select i1 %217, i1 true, i1 %219
  br i1 %220, label %227, label %230, !prof !283

221:                                              ; preds = %209
  %222 = load i32, ptr @flag_var_tracking, align 4, !tbaa !138
  %223 = icmp eq i32 %222, 1
  %224 = load i32, ptr @flag_var_tracking_uninit, align 4
  %225 = icmp eq i32 %224, 1
  %226 = select i1 %223, i1 true, i1 %225
  br i1 %226, label %227, label %230, !prof !283

227:                                              ; preds = %221, %215
  %228 = phi ptr [ @.str.291, %215 ], [ @.str.292, %221 ]
  %229 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull %228) #19
  br label %230

230:                                              ; preds = %227, %221, %215
  store i32 0, ptr @flag_var_tracking, align 4, !tbaa !138
  store i32 0, ptr @flag_var_tracking_uninit, align 4, !tbaa !138
  br label %241

231:                                              ; preds = %209
  %232 = load i32, ptr @flag_var_tracking_uninit, align 4, !tbaa !138
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %245, !prof !281

234:                                              ; preds = %231
  %235 = load i32, ptr @flag_var_tracking, align 4
  %236 = icmp eq i32 %235, 2
  br i1 %236, label %237, label %241, !prof !279

237:                                              ; preds = %234
  %238 = load i32, ptr @optimize, align 4, !tbaa !138
  %239 = icmp sgt i32 %238, 0
  %240 = zext i1 %239 to i32
  store i32 %240, ptr @flag_var_tracking, align 4, !tbaa !138
  br label %241

241:                                              ; preds = %230, %237, %234
  %242 = phi i32 [ 0, %230 ], [ %240, %237 ], [ %235, %234 ]
  %243 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !138
  %244 = icmp eq i32 %243, 2
  br i1 %244, label %248, label %261, !prof !179

245:                                              ; preds = %231
  store i32 1, ptr @flag_var_tracking, align 4, !tbaa !138
  %246 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !138
  %247 = icmp eq i32 %246, 2
  br i1 %247, label %250, label %261, !prof !179

248:                                              ; preds = %241
  %249 = icmp eq i32 %242, 0
  br i1 %249, label %257, label %250, !prof !284

250:                                              ; preds = %245, %248
  %251 = phi i32 [ %242, %248 ], [ 1, %245 ]
  %252 = load i32, ptr @flag_selective_scheduling, align 4, !tbaa !138
  %253 = icmp eq i32 %252, 0
  %254 = load i32, ptr @flag_selective_scheduling2, align 4
  %255 = icmp eq i32 %254, 0
  %256 = select i1 %253, i1 %255, i1 false
  br label %257

257:                                              ; preds = %250, %248
  %258 = phi i32 [ 0, %248 ], [ %251, %250 ]
  %259 = phi i1 [ false, %248 ], [ %256, %250 ]
  %260 = zext i1 %259 to i32
  store i32 %260, ptr @flag_var_tracking_assignments, align 4, !tbaa !138
  br label %261

261:                                              ; preds = %245, %257, %241
  %262 = phi i32 [ %258, %257 ], [ %242, %241 ], [ 1, %245 ]
  %263 = phi i32 [ %260, %257 ], [ %243, %241 ], [ %246, %245 ]
  %264 = load i32, ptr @flag_var_tracking_assignments_toggle, align 4, !tbaa !138
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %269, label %266, !prof !179

266:                                              ; preds = %261
  %267 = icmp eq i32 %263, 0
  %268 = zext i1 %267 to i32
  store i32 %268, ptr @flag_var_tracking_assignments, align 4, !tbaa !138
  br label %269

269:                                              ; preds = %266, %261
  %270 = phi i32 [ %268, %266 ], [ %263, %261 ]
  %271 = icmp eq i32 %270, 0
  %272 = icmp ne i32 %262, 0
  %273 = select i1 %271, i1 true, i1 %272
  br i1 %273, label %275, label %274, !prof !285

274:                                              ; preds = %269
  store i32 -1, ptr @flag_var_tracking_assignments, align 4, !tbaa !138
  store i32 -1, ptr @flag_var_tracking, align 4, !tbaa !138
  br label %276

275:                                              ; preds = %269
  br i1 %271, label %284, label %276, !prof !286

276:                                              ; preds = %274, %275
  %277 = load i32, ptr @flag_selective_scheduling, align 4, !tbaa !138
  %278 = icmp ne i32 %277, 0
  %279 = load i32, ptr @flag_selective_scheduling2, align 4
  %280 = icmp ne i32 %279, 0
  %281 = select i1 %278, i1 true, i1 %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %276
  %283 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.293) #19
  br label %284

284:                                              ; preds = %276, %282, %275
  %285 = load i32, ptr @flag_tree_cselim, align 4, !tbaa !138
  %286 = icmp eq i32 %285, 2
  br i1 %286, label %287, label %288, !prof !179

287:                                              ; preds = %284
  store i32 1, ptr @flag_tree_cselim, align 4, !tbaa !138
  br label %288

288:                                              ; preds = %287, %284
  %289 = load i32, ptr @flag_gen_aux_info, align 4, !tbaa !138
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %297, label %291, !prof !179

291:                                              ; preds = %288
  %292 = load ptr, ptr @aux_info_file_name, align 8, !tbaa !133
  %293 = tail call ptr @fopen_unlocked(ptr noundef %292, ptr noundef nonnull @.str.287) #19
  store ptr %293, ptr @aux_info_file, align 8, !tbaa !133
  %294 = icmp eq ptr %293, null
  br i1 %294, label %295, label %297

295:                                              ; preds = %291
  %296 = load ptr, ptr @aux_info_file_name, align 8, !tbaa !133
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.294, ptr noundef %296) #19
  br label %297

297:                                              ; preds = %291, %295, %288
  %298 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 110), align 1, !tbaa !287
  %299 = icmp eq i8 %298, 0
  %300 = load i32, ptr @flag_function_sections, align 4, !tbaa !138
  br i1 %299, label %301, label %311, !prof !165

301:                                              ; preds = %297
  %302 = icmp eq i32 %300, 0
  br i1 %302, label %305, label %303

303:                                              ; preds = %301
  %304 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.295) #19
  store i32 0, ptr @flag_function_sections, align 4, !tbaa !138
  br label %305

305:                                              ; preds = %303, %301
  %306 = load i32, ptr @flag_data_sections, align 4, !tbaa !138
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %319, label %308

308:                                              ; preds = %305
  %309 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.296) #19
  store i32 0, ptr @flag_data_sections, align 4, !tbaa !138
  %310 = load i32, ptr @flag_function_sections, align 4, !tbaa !138
  br label %311

311:                                              ; preds = %308, %297
  %312 = phi i32 [ %310, %308 ], [ %300, %297 ]
  %313 = icmp ne i32 %312, 0
  %314 = load i32, ptr @profile_flag, align 4
  %315 = icmp ne i32 %314, 0
  %316 = select i1 %313, i1 %315, i1 false
  br i1 %316, label %317, label %319, !prof !288

317:                                              ; preds = %311
  %318 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.297) #19
  store i32 0, ptr @flag_function_sections, align 4, !tbaa !138
  br label %319

319:                                              ; preds = %305, %317, %311
  %320 = load i32, ptr @flag_prefetch_loop_arrays, align 4, !tbaa !138
  %321 = icmp eq i32 %320, 0
  %322 = load i32, ptr @x86_prefetch_sse, align 4
  %323 = icmp ne i32 %322, 0
  %324 = select i1 %321, i1 true, i1 %323
  br i1 %324, label %329, label %325, !prof !285

325:                                              ; preds = %319
  %326 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !138
  %327 = and i32 %326, 1
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %334, label %329

329:                                              ; preds = %325, %319
  %330 = icmp ne i32 %320, 0
  %331 = load i32, ptr @optimize_size, align 4
  %332 = icmp ne i32 %331, 0
  %333 = select i1 %330, i1 %332, i1 false
  br i1 %333, label %334, label %337, !prof !289

334:                                              ; preds = %329, %325
  %335 = phi ptr [ @.str.298, %325 ], [ @.str.299, %329 ]
  %336 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull %335) #19
  store i32 0, ptr @flag_prefetch_loop_arrays, align 4, !tbaa !138
  br label %337

337:                                              ; preds = %334, %329
  %338 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !138
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %341, label %340, !prof !179

340:                                              ; preds = %337
  store i32 1, ptr @flag_trapping_math, align 4, !tbaa !138
  br label %341

341:                                              ; preds = %340, %337
  %342 = load i32, ptr @flag_associative_math, align 4, !tbaa !138
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %352, label %344, !prof !179

344:                                              ; preds = %341
  %345 = load i32, ptr @flag_trapping_math, align 4, !tbaa !138
  %346 = icmp ne i32 %345, 0
  %347 = load i32, ptr @flag_signed_zeros, align 4
  %348 = icmp ne i32 %347, 0
  %349 = select i1 %346, i1 true, i1 %348
  br i1 %349, label %350, label %352

350:                                              ; preds = %344
  %351 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.300) #19
  store i32 0, ptr @flag_associative_math, align 4, !tbaa !138
  br label %352

352:                                              ; preds = %344, %350, %341
  %353 = load i32, ptr @flag_cx_limited_range, align 4, !tbaa !138
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %356, label %355, !prof !179

355:                                              ; preds = %352
  store i32 0, ptr @flag_complex_method, align 4, !tbaa !138
  br label %356

356:                                              ; preds = %355, %352
  %357 = load i32, ptr @flag_cx_fortran_rules, align 4, !tbaa !138
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %360, label %359, !prof !179

359:                                              ; preds = %356
  store i32 1, ptr @flag_complex_method, align 4, !tbaa !138
  br label %360

360:                                              ; preds = %359, %356
  %361 = load i32, ptr @flag_stack_protect, align 4, !tbaa !138
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %364, !prof !179

363:                                              ; preds = %360
  store i32 0, ptr @warn_stack_protect, align 4, !tbaa !138
  br label %364

364:                                              ; preds = %363, %360
  %365 = load i32, ptr @flag_unwind_tables, align 4, !tbaa !138
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %379, label %367, !prof !179

367:                                              ; preds = %364
  %368 = load i32, ptr @target_flags, align 4, !tbaa !138
  %369 = and i32 %368, 4
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %379

371:                                              ; preds = %367
  %372 = tail call i32 @ix86_cfun_abi() #19
  %373 = icmp ne i32 %372, 1
  %374 = load i32, ptr @flag_omit_frame_pointer, align 4
  %375 = icmp ne i32 %374, 0
  %376 = select i1 %373, i1 %375, i1 false
  br i1 %376, label %377, label %379

377:                                              ; preds = %371
  %378 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.301) #19
  store i32 0, ptr @flag_omit_frame_pointer, align 4, !tbaa !138
  br label %379

379:                                              ; preds = %377, %371, %367, %364
  %380 = tail call ptr @build_optimization_node() #19
  store ptr %380, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 125), align 8, !tbaa !133
  store ptr %380, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !133
  ret void
}

; Function Attrs: optsize
declare void @init_adjust_machine_modes() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @backend_init() unnamed_addr #0 !prof !158 !PGOFuncName !290 {
  tail call void @init_emit_once() #19
  tail call void @init_rtlanal() #19
  tail call void @init_inline_once() #19
  tail call void @init_varasm_once() #19
  tail call void @save_register_info() #19
  tail call void @ira_init_once() #19
  tail call fastcc void @backend_init_target() #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @lang_dependent_init(ptr noundef %0) unnamed_addr #0 !prof !158 !PGOFuncName !291 {
  %2 = load i32, ptr @input_location, align 4, !tbaa !138
  %3 = load ptr, ptr @dump_base_name, align 8, !tbaa !133
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !179

5:                                                ; preds = %1
  %6 = icmp eq ptr %0, null
  br i1 %6, label %11, label %7, !prof !165

7:                                                ; preds = %5
  %8 = load i8, ptr %0, align 1, !tbaa !141
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, ptr @.str.310, ptr %0, !prof !165
  br label %11

11:                                               ; preds = %7, %5
  %12 = phi ptr [ @.str.310, %5 ], [ %10, %7 ]
  store ptr %12, ptr @dump_base_name, align 8, !tbaa !133
  br label %13

13:                                               ; preds = %11, %1
  store i32 1, ptr @input_location, align 4, !tbaa !138
  %14 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 9), align 8, !tbaa !292
  %15 = tail call zeroext i8 %14() #19
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %31, label %17, !prof !165

17:                                               ; preds = %13
  store i32 %2, ptr @input_location, align 4, !tbaa !138
  tail call fastcc void @init_asm_output(ptr noundef %0) #18
  tail call void @init_eh() #19
  tail call fastcc void @lang_dependent_init_target() #18
  %18 = load i8, ptr @timevar_enable, align 1, !tbaa !141
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20, !prof !179

20:                                               ; preds = %17
  tail call void @timevar_push_1(i32 noundef 166) #19
  br label %21

21:                                               ; preds = %20, %17
  %22 = tail call i32 @dwarf2out_do_frame() #19
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24, !prof !179

24:                                               ; preds = %21
  tail call void @dwarf2out_frame_init() #19
  br label %25

25:                                               ; preds = %24, %21
  %26 = load ptr, ptr @debug_hooks, align 8, !tbaa !133
  %27 = load ptr, ptr %26, align 8, !tbaa !293
  tail call void %27(ptr noundef %0) #19
  %28 = load i8, ptr @timevar_enable, align 1, !tbaa !141
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %31, label %30, !prof !179

30:                                               ; preds = %25
  tail call void @timevar_pop_1(i32 noundef 166) #19
  br label %31

31:                                               ; preds = %25, %30, %13
  %32 = phi i32 [ 0, %13 ], [ 1, %30 ], [ 1, %25 ]
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compile_file() unnamed_addr #0 !prof !158 !PGOFuncName !294 {
  store i8 1, ptr @ggc_protect_identifiers, align 1, !tbaa !141
  tail call void @init_cgraph() #19
  %1 = load ptr, ptr @main_input_filename, align 8, !tbaa !133
  tail call void @init_final(ptr noundef %1) #19
  %2 = load ptr, ptr @aux_base_name, align 8, !tbaa !133
  tail call void @coverage_init(ptr noundef %2) #19
  tail call void @statistics_init() #19
  %3 = tail call i32 @invoke_plugin_callbacks(i32 noundef 12, ptr noundef null) #19
  %4 = load i8, ptr @timevar_enable, align 1, !tbaa !141
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6, !prof !179

6:                                                ; preds = %0
  tail call void @timevar_push_1(i32 noundef 44) #19
  br label %7

7:                                                ; preds = %0, %6
  %8 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 11), align 8, !tbaa !295
  %9 = load i1, ptr @set_yydebug, align 4
  %10 = zext i1 %9 to i32
  tail call void %8(i32 noundef %10) #19
  %11 = load i8, ptr @timevar_enable, align 1, !tbaa !141
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13, !prof !179

13:                                               ; preds = %7
  tail call void @timevar_pop_1(i32 noundef 44) #19
  br label %14

14:                                               ; preds = %7, %13
  %15 = load i32, ptr @flag_syntax_only, align 4, !tbaa !138
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %74, !prof !179

17:                                               ; preds = %14
  store i8 0, ptr @ggc_protect_identifiers, align 1, !tbaa !141
  %18 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 8), align 8, !tbaa !296
  tail call void %18() #19
  %19 = load ptr, ptr @global_dc, align 8, !tbaa !133
  %20 = getelementptr inbounds %struct.diagnostic_context, ptr %19, i64 0, i32 1, i64 4
  %21 = load i32, ptr %20, align 8, !tbaa !138
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %74, !prof !179

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.diagnostic_context, ptr %19, i64 0, i32 1, i64 5
  %25 = load i32, ptr %24, align 4, !tbaa !138
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %74, !prof !179

27:                                               ; preds = %23
  %28 = tail call zeroext i8 @varpool_assemble_pending_decls() #19
  tail call void @finish_aliases_2() #19
  %29 = load i32, ptr @flag_mudflap, align 4, !tbaa !138
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31, !prof !179

31:                                               ; preds = %27
  tail call void @mudflap_finish_file() #19
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 113), align 4, !tbaa !297
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %36, !prof !165

35:                                               ; preds = %32
  tail call void @emutls_finish() #19
  br label %36

36:                                               ; preds = %35, %32
  tail call void @output_shared_constant_pool() #19
  tail call void @output_object_blocks() #19
  tail call void @weak_finish() #19
  %37 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 31), align 8, !tbaa !298
  tail call void %37() #19
  %38 = load i8, ptr @timevar_enable, align 1, !tbaa !141
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40, !prof !179

40:                                               ; preds = %36
  tail call void @timevar_push_1(i32 noundef 166) #19
  br label %41

41:                                               ; preds = %36, %40
  %42 = tail call i32 @dwarf2out_do_frame() #19
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44, !prof !179

44:                                               ; preds = %41
  tail call void @dwarf2out_frame_finish() #19
  br label %45

45:                                               ; preds = %44, %41
  %46 = load ptr, ptr @debug_hooks, align 8, !tbaa !133
  %47 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !299
  %49 = load ptr, ptr @main_input_filename, align 8, !tbaa !133
  tail call void %48(ptr noundef %49) #19
  %50 = load i8, ptr @timevar_enable, align 1, !tbaa !141
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %53, label %52, !prof !179

52:                                               ; preds = %45
  tail call void @timevar_pop_1(i32 noundef 166) #19
  br label %53

53:                                               ; preds = %45, %52
  tail call void @dw2_output_indirect_constants() #19
  tail call void @process_pending_assemble_externals() #19
  %54 = load i32, ptr @flag_generate_lto, align 4, !tbaa !138
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %62, label %56, !prof !179

56:                                               ; preds = %53
  %57 = load ptr, ptr @asm_out_file, align 8, !tbaa !133
  %58 = tail call i32 @fputs(ptr nonnull @.str.317, ptr %57)
  %59 = load ptr, ptr @asm_out_file, align 8, !tbaa !133
  tail call void @assemble_name(ptr noundef %59, ptr noundef nonnull @.str.318) #19
  %60 = load ptr, ptr @asm_out_file, align 8, !tbaa !133
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.319, i64 noundef 1, i32 noundef 1) #18
  br label %62

62:                                               ; preds = %56, %53
  %63 = load i32, ptr @flag_no_ident, align 4, !tbaa !138
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %71, !prof !179

65:                                               ; preds = %62
  %66 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.321, ptr noundef nonnull dereferenceable(1) @pkgversion_string) #18
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, ptr @.str.320, ptr @pkgversion_string, !prof !165
  %69 = load ptr, ptr @asm_out_file, align 8, !tbaa !133
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef nonnull @.str.322, ptr noundef nonnull @.str.323, ptr noundef nonnull %68, ptr noundef nonnull @version_string) #18
  br label %71

71:                                               ; preds = %65, %62
  %72 = tail call i32 @invoke_plugin_callbacks(i32 noundef 2, ptr noundef null) #19
  %73 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 30), align 8, !tbaa !300
  tail call void %73() #19
  br label %74

74:                                               ; preds = %17, %23, %14, %71
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finalize() unnamed_addr #0 !prof !158 !PGOFuncName !301 {
  %1 = load i32, ptr @flag_gen_aux_info, align 4, !tbaa !138
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %13, label %3, !prof !179

3:                                                ; preds = %0
  %4 = load ptr, ptr @aux_info_file, align 8, !tbaa !133
  %5 = tail call i32 @fclose(ptr noundef %4) #18
  %6 = load ptr, ptr @global_dc, align 8, !tbaa !133
  %7 = getelementptr inbounds %struct.diagnostic_context, ptr %6, i64 0, i32 1, i64 4
  %8 = load i32, ptr %7, align 8, !tbaa !138
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr @aux_info_file_name, align 8, !tbaa !133
  %12 = tail call i32 @unlink(ptr noundef %11) #18
  br label %13

13:                                               ; preds = %3, %10, %0
  %14 = load ptr, ptr @asm_out_file, align 8, !tbaa !133
  %15 = icmp eq ptr %14, null
  br i1 %15, label %34, label %16, !prof !165

16:                                               ; preds = %13
  %17 = tail call i32 @ferror(ptr noundef nonnull %14) #18
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19, !prof !179

19:                                               ; preds = %16
  %20 = load ptr, ptr @asm_file_name, align 8, !tbaa !133
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.324, ptr noundef %20) #19
  %21 = load ptr, ptr @asm_out_file, align 8, !tbaa !133
  br label %22

22:                                               ; preds = %19, %16
  %23 = phi ptr [ %21, %19 ], [ %14, %16 ]
  %24 = tail call i32 @fclose(ptr noundef %23) #18
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26, !prof !179

26:                                               ; preds = %22
  %27 = load ptr, ptr @asm_file_name, align 8, !tbaa !133
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.325, ptr noundef %27) #19
  br label %28

28:                                               ; preds = %26, %22
  %29 = load i32, ptr @flag_wpa, align 4, !tbaa !138
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31, !prof !179

31:                                               ; preds = %28
  %32 = load ptr, ptr @asm_file_name, align 8, !tbaa !133
  %33 = tail call i32 @unlink_if_ordinary(ptr noundef %32) #19
  br label %34

34:                                               ; preds = %28, %31, %13
  tail call void @statistics_fini() #19
  tail call void @finish_optimization_passes() #19
  tail call void @ira_finish_once() #19
  %35 = load i32, ptr @mem_report, align 4, !tbaa !138
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %38, label %37, !prof !179

37:                                               ; preds = %34
  tail call void @dump_memory_report(i8 noundef zeroext 1) #18
  br label %38

38:                                               ; preds = %37, %34
  %39 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 10), align 8, !tbaa !302
  tail call void %39() #19
  ret void
}

; Function Attrs: optsize
declare void @timevar_stop(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @timevar_print(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @override_options(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @diagnostic_inhibit_notes(ptr nocapture noundef writeonly %0) unnamed_addr #12 !prof !132 !PGOFuncName !303 {
  %2 = getelementptr inbounds %struct.diagnostic_context, ptr %0, i64 0, i32 13
  store i8 1, ptr %2, align 4, !tbaa !304
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @target_supports_section_anchors_p() unnamed_addr #13 !prof !132 !PGOFuncName !305 {
  %1 = load i64, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 43), align 8, !tbaa !306
  %2 = icmp ne i64 %1, 0
  %3 = load i64, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 44), align 8
  %4 = icmp ne i64 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  %6 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 36), align 8
  %7 = icmp ne ptr %6, null
  %8 = select i1 %5, i1 %7, i1 false
  %9 = zext i1 %8 to i8
  ret i8 %9
}

; Function Attrs: optsize
declare ptr @lbasename(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sorry(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_switch_values(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !132 !PGOFuncName !307 {
  %2 = load ptr, ptr @flag_random_seed, align 8, !tbaa !133
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call fastcc void @init_random_seed() #18
  br label %5

5:                                                ; preds = %4, %1
  %6 = tail call fastcc i32 @print_single_switch(ptr noundef %0, i32 noundef 0, i32 noundef 2, ptr noundef nonnull @.str.302) #18
  %7 = load ptr, ptr @save_argv, align 8, !tbaa !133
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !133
  %10 = icmp eq ptr %9, null
  br i1 %10, label %53, label %11

11:                                               ; preds = %5, %47
  %12 = phi ptr [ %51, %47 ], [ %9, %5 ]
  %13 = phi ptr [ %50, %47 ], [ %8, %5 ]
  %14 = phi ptr [ %49, %47 ], [ %7, %5 ]
  %15 = phi i32 [ %48, %47 ], [ %6, %5 ]
  %16 = load i8, ptr %12, align 1, !tbaa !141
  %17 = icmp eq i8 %16, 45
  br i1 %17, label %18, label %45

18:                                               ; preds = %11
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(3) @.str.303) #18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(10) @.str.304) #18
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(9) @.str.305) #18
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(9) @.str.306) #18
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27, %24, %21, %18
  %31 = getelementptr inbounds ptr, ptr %14, i64 2
  %32 = load ptr, ptr %31, align 8, !tbaa !133
  %33 = icmp eq ptr %32, null
  %34 = select i1 %33, ptr %13, ptr %31
  br label %47

35:                                               ; preds = %27
  %36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(7) @.str.307) #18
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %35
  %39 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(9) @.str.308) #18
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds i8, ptr %12, i64 1
  %43 = load i8, ptr %42, align 1, !tbaa !141
  %44 = icmp eq i8 %43, 100
  br i1 %44, label %47, label %45

45:                                               ; preds = %41, %11
  %46 = tail call fastcc i32 @print_single_switch(ptr noundef %0, i32 noundef %15, i32 noundef 0, ptr noundef nonnull %12) #18
  br label %47

47:                                               ; preds = %30, %41, %35, %38, %45
  %48 = phi i32 [ %15, %35 ], [ %15, %38 ], [ %15, %41 ], [ %46, %45 ], [ %15, %30 ]
  %49 = phi ptr [ %13, %35 ], [ %13, %38 ], [ %13, %41 ], [ %13, %45 ], [ %34, %30 ]
  %50 = getelementptr inbounds ptr, ptr %49, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !133
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %11, !llvm.loop !308

53:                                               ; preds = %47, %5
  %54 = phi i32 [ %6, %5 ], [ %48, %47 ]
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = tail call i32 %0(i32 noundef 4, ptr noundef null) #19
  br label %58

58:                                               ; preds = %56, %53
  %59 = tail call fastcc i32 @print_single_switch(ptr noundef %0, i32 noundef 0, i32 noundef 2, ptr noundef nonnull @.str.309) #18
  %60 = load i32, ptr @cl_options_count, align 4, !tbaa !138
  %61 = zext i32 %60 to i64
  %62 = icmp eq i32 %60, 0
  br i1 %62, label %82, label %63

63:                                               ; preds = %58, %78
  %64 = phi i64 [ %80, %78 ], [ 0, %58 ]
  %65 = phi i32 [ %79, %78 ], [ %59, %58 ]
  %66 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %64
  %67 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %64, i32 5
  %68 = load i32, ptr %67, align 8, !tbaa !242
  %69 = and i32 %68, 16777216
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %63
  %72 = trunc i64 %64 to i32
  %73 = tail call i32 @option_enabled(i32 noundef %72) #19
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load ptr, ptr %66, align 8, !tbaa !245
  %77 = tail call fastcc i32 @print_single_switch(ptr noundef %0, i32 noundef %65, i32 noundef 1, ptr noundef %76) #18
  br label %78

78:                                               ; preds = %63, %71, %75
  %79 = phi i32 [ %77, %75 ], [ %65, %71 ], [ %65, %63 ]
  %80 = add nuw nsw i64 %64, 1
  %81 = icmp eq i64 %80, %61
  br i1 %81, label %82, label %63, !llvm.loop !309

82:                                               ; preds = %78, %58
  %83 = tail call i32 %0(i32 noundef 4, ptr noundef null) #19
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef i32 @print_to_stderr(i32 noundef %0, ptr nocapture noundef readonly %1) #9 !prof !132 !PGOFuncName !310 {
  switch i32 %0, label %12 [
    i32 4, label %3
    i32 3, label %13
    i32 0, label %6
    i32 1, label %6
    i32 2, label %9
  ]

3:                                                ; preds = %2
  %4 = load ptr, ptr @stderr, align 8, !tbaa !133
  %5 = tail call i32 @putc(i32 noundef 10, ptr noundef %4) #18
  br label %13

6:                                                ; preds = %2, %2
  %7 = load ptr, ptr @stderr, align 8, !tbaa !133
  %8 = tail call i32 @fputc(i32 noundef 32, ptr noundef %7) #18
  br label %9

9:                                                ; preds = %2, %6
  %10 = load ptr, ptr @stderr, align 8, !tbaa !133
  %11 = tail call i32 @fputs(ptr noundef %1, ptr noundef %10) #20
  br label %13

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %2, %12, %9, %3
  %14 = phi i32 [ -1, %12 ], [ 0, %9 ], [ 1, %3 ], [ 0, %2 ]
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @fopen_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @__errno_location() local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @ix86_cfun_abi() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_optimization_node() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @print_single_switch(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 !prof !132 !PGOFuncName !311 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #18
  %6 = trunc i64 %5 to i32
  %7 = add i32 %6, 1
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = add nsw i32 %7, %1
  %11 = icmp sgt i32 %10, 75
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = tail call i32 %0(i32 noundef 4, ptr noundef null) #19
  br label %14

14:                                               ; preds = %12, %4
  %15 = tail call i32 %0(i32 noundef 3, ptr noundef null) #19
  %16 = add nsw i32 %15, %7
  br label %17

17:                                               ; preds = %9, %14
  %18 = phi i32 [ %10, %9 ], [ %16, %14 ]
  %19 = tail call i32 %0(i32 noundef %2, ptr noundef %3) #19
  ret i32 %18
}

; Function Attrs: optsize
declare i32 @option_enabled(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @init_emit_once() local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_rtlanal() local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_inline_once() local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_varasm_once() local_unnamed_addr #2

; Function Attrs: optsize
declare void @save_register_info() local_unnamed_addr #2

; Function Attrs: optsize
declare void @ira_init_once() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_asm_output(ptr noundef readnone %0) unnamed_addr #0 !prof !158 !PGOFuncName !312 {
  %2 = icmp eq ptr %0, null
  %3 = load ptr, ptr @asm_file_name, align 8
  %4 = icmp eq ptr %3, null
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %8, !prof !313

6:                                                ; preds = %1
  %7 = load ptr, ptr @stdout, align 8, !tbaa !133
  store ptr %7, ptr @asm_out_file, align 8, !tbaa !133
  br label %35

8:                                                ; preds = %1
  br i1 %4, label %9, label %22, !prof !165

9:                                                ; preds = %8
  %10 = load ptr, ptr @dump_base_name, align 8, !tbaa !133
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %10) #18
  %12 = trunc i64 %11 to i32
  %13 = shl i64 %11, 32
  %14 = add i64 %13, 25769803776
  %15 = ashr exact i64 %14, 32
  %16 = tail call ptr @xmalloc(i64 noundef %15) #19
  %17 = load ptr, ptr @dump_base_name, align 8, !tbaa !133
  %18 = add i64 %13, 4294967296
  %19 = ashr exact i64 %18, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 1 %17, i64 %19, i1 false)
  tail call void @strip_off_ending(ptr noundef %16, i32 noundef %12) #18
  %20 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %16)
  %21 = getelementptr inbounds i8, ptr %16, i64 %20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %21, ptr noundef nonnull align 1 dereferenceable(3) @.str.311, i64 3, i1 false)
  store ptr %16, ptr @asm_file_name, align 8, !tbaa !133
  br label %22

22:                                               ; preds = %9, %8
  %23 = phi ptr [ %16, %9 ], [ %3, %8 ]
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(2) @.str.312) #18
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %28, !prof !165

26:                                               ; preds = %22
  %27 = load ptr, ptr @stdout, align 8, !tbaa !133
  br label %30

28:                                               ; preds = %22
  %29 = tail call ptr @fopen_unlocked(ptr noundef nonnull %23, ptr noundef nonnull @.str.313) #19
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi ptr [ %27, %26 ], [ %29, %28 ]
  store ptr %31, ptr @asm_out_file, align 8, !tbaa !133
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %35, !prof !165

33:                                               ; preds = %30
  %34 = load ptr, ptr @asm_file_name, align 8, !tbaa !133
  tail call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.314, ptr noundef %34) #19
  br label %35

35:                                               ; preds = %30, %33, %6
  %36 = load i32, ptr @flag_syntax_only, align 4, !tbaa !138
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %59, !prof !179

38:                                               ; preds = %35
  %39 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 29), align 8, !tbaa !314
  tail call void %39() #19
  %40 = load i32, ptr @flag_record_gcc_switches, align 4, !tbaa !138
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %52, label %42, !prof !179

42:                                               ; preds = %38
  %43 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 34), align 8, !tbaa !315
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = tail call i32 %43(i32 noundef 2, ptr noundef null) #19
  %47 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 34), align 8, !tbaa !315
  tail call fastcc void @print_switch_values(ptr noundef %47) #18
  %48 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 34), align 8, !tbaa !315
  %49 = tail call i32 %48(i32 noundef 2, ptr noundef null) #19
  br label %52

50:                                               ; preds = %42
  %51 = load i32, ptr @input_location, align 4, !tbaa !138
  tail call void (i32, ptr, ...) @inform(i32 noundef %51, ptr noundef nonnull @.str.315) #19
  br label %52

52:                                               ; preds = %45, %50, %38
  %53 = load i32, ptr @flag_verbose_asm, align 4, !tbaa !138
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55, !prof !179

55:                                               ; preds = %52
  %56 = load ptr, ptr @asm_out_file, align 8, !tbaa !133
  tail call void @print_version(ptr noundef %56, ptr noundef nonnull @.str.316) #18
  tail call fastcc void @print_switch_values(ptr noundef nonnull @print_to_asm_out_file) #18
  %57 = load ptr, ptr @asm_out_file, align 8, !tbaa !133
  %58 = tail call i32 @putc(i32 noundef 10, ptr noundef %57) #18
  br label %59

59:                                               ; preds = %52, %55, %35
  ret void
}

; Function Attrs: optsize
declare void @init_eh() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @dwarf2out_do_frame() local_unnamed_addr #2

; Function Attrs: optsize
declare void @dwarf2out_frame_init() local_unnamed_addr #2

; Function Attrs: optsize
declare void @inform(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal noundef i32 @print_to_asm_out_file(i32 noundef %0, ptr nocapture noundef readonly %1) #9 !prof !132 !PGOFuncName !316 {
  switch i32 %0, label %14 [
    i32 4, label %3
    i32 3, label %6
    i32 2, label %9
    i32 0, label %9
    i32 1, label %9
  ]

3:                                                ; preds = %2
  %4 = load ptr, ptr @asm_out_file, align 8, !tbaa !133
  %5 = tail call i32 @putc(i32 noundef 10, ptr noundef %4) #18
  br label %14

6:                                                ; preds = %2
  %7 = load ptr, ptr @asm_out_file, align 8, !tbaa !133
  %8 = tail call i32 @fputs(ptr noundef nonnull @.str.316, ptr noundef %7) #18
  br label %14

9:                                                ; preds = %2, %2, %2
  %10 = load ptr, ptr @asm_out_file, align 8, !tbaa !133
  %11 = tail call i32 @fputc(i32 noundef 32, ptr noundef %10) #18
  %12 = load ptr, ptr @asm_out_file, align 8, !tbaa !133
  %13 = tail call i32 @fputs(ptr noundef %1, ptr noundef %12) #18
  br label %14

14:                                               ; preds = %2, %9, %6, %3
  %15 = phi i32 [ 0, %9 ], [ 1, %6 ], [ 1, %3 ], [ -1, %2 ]
  ret i32 %15
}

; Function Attrs: optsize
declare void @init_cgraph() local_unnamed_addr #2

; Function Attrs: optsize
declare void @init_final(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @coverage_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @statistics_init() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @varpool_assemble_pending_decls() local_unnamed_addr #2

; Function Attrs: optsize
declare void @finish_aliases_2() local_unnamed_addr #2

; Function Attrs: optsize
declare void @mudflap_finish_file() local_unnamed_addr #2

; Function Attrs: optsize
declare void @emutls_finish() local_unnamed_addr #2

; Function Attrs: optsize
declare void @output_shared_constant_pool() local_unnamed_addr #2

; Function Attrs: optsize
declare void @output_object_blocks() local_unnamed_addr #2

; Function Attrs: optsize
declare void @weak_finish() local_unnamed_addr #2

; Function Attrs: optsize
declare void @dwarf2out_frame_finish() local_unnamed_addr #2

; Function Attrs: optsize
declare void @dw2_output_indirect_constants() local_unnamed_addr #2

; Function Attrs: optsize
declare void @process_pending_assemble_externals() local_unnamed_addr #2

; Function Attrs: optsize
declare void @assemble_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: optsize
declare i32 @unlink_if_ordinary(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @statistics_fini() local_unnamed_addr #2

; Function Attrs: optsize
declare void @finish_optimization_passes() local_unnamed_addr #2

; Function Attrs: optsize
declare void @ira_finish_once() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #15

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nofree nounwind }
attributes #17 = { nofree nounwind willreturn memory(argmem: read) }
attributes #18 = { optsize }
attributes #19 = { nounwind optsize }
attributes #20 = { cold optsize }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!131}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130}
!36 = !{ptr @announce_function, ptr @identifier_to_locale, i64 1}
!37 = !{ptr @announce_function, ptr @fprintf, i64 1}
!38 = !{ptr @announce_function, ptr @fflush, i64 1}
!39 = !{ptr @read_integral_parameter, ptr @atoi, i64 1}
!40 = !{ptr @exact_log2, ptr @floor_log2, i64 874937}
!41 = !{ptr @output_quoted_string, ptr @putc, i64 9}
!42 = !{ptr @output_file_directive, ptr @remap_debug_filename, i64 1}
!43 = !{ptr @output_file_directive, ptr @strlen, i64 1}
!44 = !{ptr @output_file_directive, ptr @fwrite, i64 1}
!45 = !{ptr @output_file_directive, ptr @output_quoted_string, i64 1}
!46 = !{ptr @output_file_directive, ptr @putc, i64 1}
!47 = !{ptr @wrapup_global_declaration_2, ptr @varpool_node, i64 4464}
!48 = !{ptr @wrapup_global_declaration_2, ptr @decl_assembler_name, i64 11}
!49 = !{ptr @wrapup_global_declaration_2, ptr @rest_of_decl_compilation, i64 1468}
!50 = !{ptr @check_global_declaration_1, ptr @decl_assembler_name, i64 1}
!51 = !{ptr @check_global_declaration_1, ptr @assemble_external, i64 1}
!52 = !{ptr @check_global_declaration_1, ptr @expand_location, i64 1}
!53 = !{ptr @backend_init_target, ptr @init_alignments, i64 1}
!54 = !{ptr @backend_init_target, ptr @init_emit_regs, i64 1}
!55 = !{ptr @backend_init_target, ptr @init_regs, i64 1}
!56 = !{ptr @backend_init_target, ptr @init_fake_stack_mems, i64 1}
!57 = !{ptr @backend_init_target, ptr @init_alias_target, i64 1}
!58 = !{ptr @backend_init_target, ptr @init_reload, i64 1}
!59 = !{ptr @backend_init_target, ptr @init_dummy_function_start, i64 1}
!60 = !{ptr @backend_init_target, ptr @init_expmed, i64 1}
!61 = !{ptr @backend_init_target, ptr @expand_dummy_function_end, i64 1}
!62 = !{ptr @lang_dependent_init_target, ptr @init_excess_precision, i64 1}
!63 = !{ptr @lang_dependent_init_target, ptr @init_optabs, i64 1}
!64 = !{ptr @lang_dependent_init_target, ptr @init_dummy_function_start, i64 1}
!65 = !{ptr @lang_dependent_init_target, ptr @init_expr_target, i64 1}
!66 = !{ptr @lang_dependent_init_target, ptr @init_set_costs, i64 1}
!67 = !{ptr @lang_dependent_init_target, ptr @ira_init, i64 1}
!68 = !{ptr @lang_dependent_init_target, ptr @expand_dummy_function_end, i64 1}
!69 = !{ptr @init_alignments, ptr @floor_log2, i64 4}
!70 = !{ptr @toplev_main, ptr @expandargv, i64 1}
!71 = !{ptr @toplev_main, ptr @general_init, i64 1}
!72 = !{ptr @toplev_main, ptr @decode_options, i64 1}
!73 = !{ptr @toplev_main, ptr @init_local_tick, i64 1}
!74 = !{ptr @toplev_main, ptr @initialize_plugins, i64 1}
!75 = !{ptr @toplev_main, ptr @do_compile, i64 1}
!76 = !{ptr @toplev_main, ptr @print_ignored_options, i64 1}
!77 = !{ptr @toplev_main, ptr @invoke_plugin_callbacks, i64 1}
!78 = !{ptr @toplev_main, ptr @finalize_plugins, i64 1}
!79 = !{ptr @general_init, ptr @strlen, i64 1}
!80 = !{ptr @general_init, ptr @xmalloc_set_program_name, i64 1}
!81 = !{ptr @general_init, ptr @hex_init, i64 1}
!82 = !{ptr @general_init, ptr @unlock_std_streams, i64 1}
!83 = !{ptr @general_init, ptr @diagnostic_initialize, i64 1}
!84 = !{ptr @general_init, ptr @signal, i64 5}
!85 = !{ptr @general_init, ptr @init_ggc, i64 1}
!86 = !{ptr @general_init, ptr @init_stringpool, i64 1}
!87 = !{ptr @general_init, ptr @ggc_alloc_stat, i64 1}
!88 = !{ptr @general_init, ptr @linemap_init, i64 1}
!89 = !{ptr @general_init, ptr @init_ttree, i64 1}
!90 = !{ptr @general_init, ptr @init_reg_sets, i64 1}
!91 = !{ptr @general_init, ptr @add_params, i64 1}
!92 = !{ptr @general_init, ptr @init_ggc_heuristics, i64 1}
!93 = !{ptr @general_init, ptr @init_optimization_passes, i64 1}
!94 = !{ptr @general_init, ptr @statistics_early_init, i64 1}
!95 = !{ptr @init_local_tick, ptr @gettimeofday, i64 1}
!96 = !{ptr @do_compile, ptr @timevar_init, i64 1}
!97 = !{ptr @do_compile, ptr @timevar_start, i64 1}
!98 = !{ptr @do_compile, ptr @process_options, i64 1}
!99 = !{ptr @do_compile, ptr @init_adjust_machine_modes, i64 1}
!100 = !{ptr @do_compile, ptr @lang_dependent_init, i64 1}
!101 = !{ptr @do_compile, ptr @finalize, i64 1}
!102 = !{ptr @do_compile, ptr @timevar_stop, i64 1}
!103 = !{ptr @do_compile, ptr @timevar_print, i64 1}
!104 = !{ptr @realloc_for_line_map, ptr @ggc_realloc_stat, i64 3}
!105 = !{ptr @process_options, ptr @override_options, i64 1}
!106 = !{ptr @process_options, ptr @sorry, i64 1}
!107 = !{ptr @process_options, ptr @build_optimization_node, i64 1}
!108 = !{ptr @backend_init, ptr @init_emit_once, i64 1}
!109 = !{ptr @backend_init, ptr @init_rtlanal, i64 1}
!110 = !{ptr @backend_init, ptr @init_inline_once, i64 1}
!111 = !{ptr @backend_init, ptr @init_varasm_once, i64 1}
!112 = !{ptr @backend_init, ptr @save_register_info, i64 1}
!113 = !{ptr @backend_init, ptr @ira_init_once, i64 1}
!114 = !{ptr @backend_init, ptr @backend_init_target, i64 1}
!115 = !{ptr @lang_dependent_init, ptr @init_asm_output, i64 1}
!116 = !{ptr @lang_dependent_init, ptr @init_eh, i64 1}
!117 = !{ptr @lang_dependent_init, ptr @lang_dependent_init_target, i64 1}
!118 = !{ptr @lang_dependent_init, ptr @dwarf2out_do_frame, i64 1}
!119 = !{ptr @compile_file, ptr @init_cgraph, i64 1}
!120 = !{ptr @compile_file, ptr @init_final, i64 1}
!121 = !{ptr @compile_file, ptr @coverage_init, i64 1}
!122 = !{ptr @compile_file, ptr @statistics_init, i64 1}
!123 = !{ptr @compile_file, ptr @invoke_plugin_callbacks, i64 1}
!124 = !{ptr @finalize, ptr @ferror, i64 1}
!125 = !{ptr @finalize, ptr @fclose, i64 1}
!126 = !{ptr @finalize, ptr @statistics_fini, i64 1}
!127 = !{ptr @finalize, ptr @finish_optimization_passes, i64 1}
!128 = !{ptr @finalize, ptr @ira_finish_once, i64 1}
!129 = !{ptr @init_asm_output, ptr @strcmp, i64 1}
!130 = !{ptr @init_asm_output, ptr @fopen_unlocked, i64 1}
!131 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!132 = !{!"function_entry_count", i64 0}
!133 = !{!134, !134, i64 0}
!134 = !{!"any pointer", !135, i64 0}
!135 = !{!"omnipotent char", !136, i64 0}
!136 = !{!"Simple C/C++ TBAA"}
!137 = !{!"function_entry_count", i64 15695}
!138 = !{!139, !139, i64 0}
!139 = !{!"int", !135, i64 0}
!140 = !{!"branch_weights", i32 1, i32 15696}
!141 = !{!135, !135, i64 0}
!142 = !{!143, !134, i64 176}
!143 = !{!"lang_hooks", !134, i64 0, !144, i64 8, !134, i64 16, !134, i64 24, !134, i64 32, !134, i64 40, !134, i64 48, !134, i64 56, !134, i64 64, !134, i64 72, !134, i64 80, !134, i64 88, !134, i64 96, !134, i64 104, !134, i64 112, !134, i64 120, !134, i64 128, !134, i64 136, !134, i64 144, !134, i64 152, !134, i64 160, !134, i64 168, !134, i64 176, !134, i64 184, !134, i64 192, !134, i64 200, !134, i64 208, !134, i64 216, !134, i64 224, !134, i64 232, !145, i64 240, !146, i64 248, !147, i64 256, !148, i64 272, !149, i64 432, !150, i64 560, !134, i64 584, !134, i64 592, !134, i64 600, !134, i64 608, !134, i64 616, !134, i64 624, !134, i64 632, !134, i64 640, !134, i64 648, !134, i64 656, !134, i64 664, !135, i64 672}
!144 = !{!"long", !135, i64 0}
!145 = !{!"lang_hooks_for_tree_inlining", !134, i64 0}
!146 = !{!"lang_hooks_for_callgraph", !134, i64 0}
!147 = !{!"lang_hooks_for_tree_dump", !134, i64 0, !134, i64 8}
!148 = !{!"lang_hooks_for_decls", !134, i64 0, !134, i64 8, !134, i64 16, !134, i64 24, !134, i64 32, !134, i64 40, !134, i64 48, !134, i64 56, !134, i64 64, !134, i64 72, !134, i64 80, !134, i64 88, !134, i64 96, !134, i64 104, !134, i64 112, !134, i64 120, !134, i64 128, !134, i64 136, !134, i64 144, !134, i64 152}
!149 = !{!"lang_hooks_for_types", !134, i64 0, !134, i64 8, !134, i64 16, !134, i64 24, !134, i64 32, !134, i64 40, !134, i64 48, !134, i64 56, !134, i64 64, !134, i64 72, !134, i64 80, !134, i64 88, !134, i64 96, !134, i64 104, !134, i64 112, !135, i64 120}
!150 = !{!"lang_hooks_for_lto", !134, i64 0, !134, i64 8, !134, i64 16}
!151 = !{!152, !134, i64 0}
!152 = !{!"diagnostic_context", !134, i64 0, !135, i64 8, !135, i64 56, !135, i64 57, !135, i64 60, !135, i64 3540, !135, i64 3541, !134, i64 3544, !134, i64 3552, !134, i64 3560, !134, i64 3568, !134, i64 3576, !139, i64 3584, !135, i64 3588}
!153 = !{!154, !135, i64 49}
!154 = !{!"pretty_print_info", !134, i64 0, !134, i64 8, !139, i64 16, !139, i64 20, !139, i64 24, !155, i64 28, !134, i64 40, !135, i64 48, !135, i64 49, !135, i64 50}
!155 = !{!"", !139, i64 0, !139, i64 4}
!156 = !{!152, !134, i64 3568}
!157 = !{!"toplev.c:init_random_seed"}
!158 = !{!"function_entry_count", i64 1}
!159 = !{!"branch_weights", i32 1, i32 127}
!160 = !{!"branch_weights", i32 127, i32 1}
!161 = distinct !{!161, !162}
!162 = !{!"llvm.loop.mustprogress"}
!163 = !{!164, !164, i64 0}
!164 = !{!"short", !135, i64 0}
!165 = !{!"branch_weights", i32 1, i32 2}
!166 = !{!"function_entry_count", i64 7597859}
!167 = !{!"branch_weights", i32 384387, i32 7213474}
!168 = !{!"branch_weights", i32 458939, i32 6754536}
!169 = !{!"branch_weights", i32 5214158, i32 1999317}
!170 = !{!"branch_weights", i32 4283180, i32 2930295}
!171 = !{!"branch_weights", i32 3671109, i32 3542366}
!172 = !{!"branch_weights", i32 3255461, i32 3958014}
!173 = !{!"branch_weights", i32 3374910, i32 3838565}
!174 = !{!"function_entry_count", i64 1827684}
!175 = !{i64 0, i64 65}
!176 = !{!"branch_weights", i32 874938, i32 952748}
!177 = !{!"branch_weights", i32 127, i32 129}
!178 = distinct !{!178, !162}
!179 = !{!"branch_weights", i32 2, i32 1}
!180 = !{!"branch_weights", i32 1, i32 9}
!181 = !{!"branch_weights", i32 127, i32 449}
!182 = distinct !{!182, !162}
!183 = !{!"branch_weights", i32 9, i32 2}
!184 = distinct !{!184, !162}
!185 = !{!"function_entry_count", i64 29025}
!186 = !{!"branch_weights", i32 6098, i32 22929}
!187 = !{!"branch_weights", i32 18022, i32 4908}
!188 = !{!"branch_weights", i32 3277, i32 25750}
!189 = !{!"branch_weights", i32 15, i32 3263}
!190 = !{!143, !134, i64 112}
!191 = !{!"function_entry_count", i64 58050}
!192 = !{!"branch_weights", i32 58051, i32 1}
!193 = !{!"branch_weights", i32 184483089, i32 -2080280505}
!194 = !{!"branch_weights", i32 2163841, i32 4410111}
!195 = !{!"branch_weights", i32 1471, i32 1}
!196 = !{!"branch_weights", i32 11, i32 1461}
!197 = !{!"branch_weights", i32 11, i32 1}
!198 = !{!"branch_weights", i32 1, i32 23}
!199 = distinct !{!199, !162}
!200 = !{i8 0, i8 2}
!201 = distinct !{!201, !162}
!202 = distinct !{!202, !162}
!203 = !{!"branch_weights", i32 18074, i32 10953}
!204 = !{!"branch_weights", i32 9031, i32 9044}
!205 = !{!"branch_weights", i32 351218, i32 -1122057425}
!206 = !{!"branch_weights", i32 29026, i32 1}
!207 = !{!208, !135, i64 16}
!208 = !{!"", !134, i64 0, !139, i64 8, !139, i64 12, !135, i64 16}
!209 = !{!143, !134, i64 328}
!210 = distinct !{!210, !162}
!211 = !{!212, !134, i64 136}
!212 = !{!"gcc_debug_hooks", !134, i64 0, !134, i64 8, !134, i64 16, !134, i64 24, !134, i64 32, !134, i64 40, !134, i64 48, !134, i64 56, !134, i64 64, !134, i64 72, !134, i64 80, !134, i64 88, !134, i64 96, !134, i64 104, !134, i64 112, !134, i64 120, !134, i64 128, !134, i64 136, !134, i64 144, !134, i64 152, !134, i64 160, !134, i64 168, !134, i64 176, !134, i64 184, !134, i64 192, !134, i64 200, !134, i64 208, !134, i64 216, !134, i64 224, !134, i64 232, !134, i64 240, !139, i64 248}
!213 = distinct !{!213, !162}
!214 = !{!208, !134, i64 0}
!215 = !{!208, !139, i64 8}
!216 = distinct !{!216, !162}
!217 = !{!"toplev.c:setup_core_dumping"}
!218 = !{!219, !144, i64 8}
!219 = !{!"rlimit", !144, i64 0, !144, i64 8}
!220 = !{!219, !144, i64 0}
!221 = !{!152, !135, i64 3541}
!222 = !{!143, !134, i64 0}
!223 = !{!224, !134, i64 1376}
!224 = !{!"gcc_target", !225, i64 0, !227, i64 368, !228, i64 664, !139, i64 744, !134, i64 752, !134, i64 760, !134, i64 768, !134, i64 776, !134, i64 784, !134, i64 792, !134, i64 800, !134, i64 808, !134, i64 816, !134, i64 824, !134, i64 832, !134, i64 840, !134, i64 848, !134, i64 856, !134, i64 864, !134, i64 872, !134, i64 880, !134, i64 888, !134, i64 896, !134, i64 904, !134, i64 912, !134, i64 920, !134, i64 928, !134, i64 936, !134, i64 944, !134, i64 952, !134, i64 960, !134, i64 968, !134, i64 976, !134, i64 984, !134, i64 992, !134, i64 1000, !134, i64 1008, !134, i64 1016, !134, i64 1024, !134, i64 1032, !134, i64 1040, !134, i64 1048, !134, i64 1056, !144, i64 1064, !144, i64 1072, !134, i64 1080, !134, i64 1088, !134, i64 1096, !134, i64 1104, !134, i64 1112, !134, i64 1120, !134, i64 1128, !134, i64 1136, !134, i64 1144, !134, i64 1152, !134, i64 1160, !134, i64 1168, !229, i64 1176, !134, i64 1232, !134, i64 1240, !134, i64 1248, !134, i64 1256, !134, i64 1264, !134, i64 1272, !134, i64 1280, !134, i64 1288, !134, i64 1296, !134, i64 1304, !134, i64 1312, !134, i64 1320, !134, i64 1328, !134, i64 1336, !134, i64 1344, !134, i64 1352, !134, i64 1360, !134, i64 1368, !134, i64 1376, !134, i64 1384, !134, i64 1392, !134, i64 1400, !134, i64 1408, !134, i64 1416, !134, i64 1424, !134, i64 1432, !134, i64 1440, !134, i64 1448, !134, i64 1456, !144, i64 1464, !230, i64 1472, !134, i64 1664, !134, i64 1672, !134, i64 1680, !134, i64 1688, !134, i64 1696, !134, i64 1704, !134, i64 1712, !134, i64 1720, !134, i64 1728, !134, i64 1736, !134, i64 1744, !134, i64 1752, !134, i64 1760, !134, i64 1768, !134, i64 1776, !231, i64 1784, !232, i64 1792, !233, i64 1896, !234, i64 1968, !134, i64 2016, !135, i64 2024, !135, i64 2025, !135, i64 2026, !135, i64 2027, !135, i64 2028, !135, i64 2029, !135, i64 2030, !135, i64 2031, !135, i64 2032, !135, i64 2033, !135, i64 2034, !135, i64 2035}
!225 = !{!"asm_out", !134, i64 0, !134, i64 8, !134, i64 16, !226, i64 24, !226, i64 56, !134, i64 88, !134, i64 96, !134, i64 104, !134, i64 112, !134, i64 120, !134, i64 128, !134, i64 136, !134, i64 144, !134, i64 152, !134, i64 160, !134, i64 168, !134, i64 176, !134, i64 184, !134, i64 192, !134, i64 200, !134, i64 208, !134, i64 216, !134, i64 224, !134, i64 232, !134, i64 240, !134, i64 248, !134, i64 256, !134, i64 264, !134, i64 272, !134, i64 280, !134, i64 288, !134, i64 296, !134, i64 304, !134, i64 312, !134, i64 320, !134, i64 328, !134, i64 336, !134, i64 344, !134, i64 352, !134, i64 360}
!226 = !{!"asm_int_op", !134, i64 0, !134, i64 8, !134, i64 16, !134, i64 24}
!227 = !{!"sched", !134, i64 0, !134, i64 8, !134, i64 16, !134, i64 24, !134, i64 32, !134, i64 40, !134, i64 48, !134, i64 56, !134, i64 64, !134, i64 72, !134, i64 80, !134, i64 88, !134, i64 96, !134, i64 104, !134, i64 112, !134, i64 120, !134, i64 128, !134, i64 136, !134, i64 144, !134, i64 152, !134, i64 160, !134, i64 168, !134, i64 176, !134, i64 184, !134, i64 192, !134, i64 200, !134, i64 208, !134, i64 216, !134, i64 224, !134, i64 232, !134, i64 240, !134, i64 248, !134, i64 256, !134, i64 264, !134, i64 272, !134, i64 280, !134, i64 288}
!228 = !{!"vectorize", !134, i64 0, !134, i64 8, !134, i64 16, !134, i64 24, !134, i64 32, !134, i64 40, !134, i64 48, !134, i64 56, !134, i64 64, !134, i64 72}
!229 = !{!"addr_space", !134, i64 0, !134, i64 8, !134, i64 16, !134, i64 24, !134, i64 32, !134, i64 40, !134, i64 48}
!230 = !{!"calls", !134, i64 0, !134, i64 8, !134, i64 16, !134, i64 24, !134, i64 32, !134, i64 40, !134, i64 48, !134, i64 56, !134, i64 64, !134, i64 72, !134, i64 80, !134, i64 88, !134, i64 96, !134, i64 104, !134, i64 112, !134, i64 120, !134, i64 128, !134, i64 136, !134, i64 144, !134, i64 152, !134, i64 160, !134, i64 168, !134, i64 176, !134, i64 184}
!231 = !{!"c", !134, i64 0}
!232 = !{!"cxx", !134, i64 0, !134, i64 8, !134, i64 16, !134, i64 24, !134, i64 32, !134, i64 40, !134, i64 48, !134, i64 56, !134, i64 64, !134, i64 72, !134, i64 80, !134, i64 88, !134, i64 96}
!233 = !{!"emutls", !134, i64 0, !134, i64 8, !134, i64 16, !134, i64 24, !134, i64 32, !134, i64 40, !134, i64 48, !134, i64 56, !135, i64 64, !135, i64 65}
!234 = !{!"target_option_hooks", !134, i64 0, !134, i64 8, !134, i64 16, !134, i64 24, !134, i64 32, !134, i64 40}
!235 = !{!236, !144, i64 8}
!236 = !{!"cl_option_state", !134, i64 0, !144, i64 8, !135, i64 16}
!237 = !{!144, !144, i64 0}
!238 = distinct !{!238, !162}
!239 = !{!236, !134, i64 0}
!240 = distinct !{!240, !162}
!241 = !{!"toplev.c:option_affects_pch_p"}
!242 = !{!243, !139, i64 24}
!243 = !{!"cl_option", !134, i64 0, !134, i64 8, !164, i64 16, !135, i64 18, !139, i64 20, !139, i64 24, !134, i64 32, !139, i64 40, !139, i64 44}
!244 = !{!243, !134, i64 32}
!245 = !{!243, !134, i64 0}
!246 = distinct !{!246, !162}
!247 = !{!"toplev.c:pch_option_mismatch"}
!248 = !{!249, !134, i64 8}
!249 = !{!"", !134, i64 0, !134, i64 8, !139, i64 16, !134, i64 24, !134, i64 32}
!250 = !{!154, !135, i64 50}
!251 = !{!249, !134, i64 24}
!252 = !{!"toplev.c:backend_init_target"}
!253 = !{!"toplev.c:lang_dependent_init_target"}
!254 = !{!"toplev.c:init_alignments"}
!255 = !{!"toplev.c:init_excess_precision"}
!256 = !{!"toplev.c:general_init"}
!257 = !{!"branch_weights", i32 1, i32 22}
!258 = !{!"branch_weights", i32 2, i32 21}
!259 = distinct !{!259, !162}
!260 = !{!154, !134, i64 40}
!261 = !{!262, !134, i64 0}
!262 = !{!"host_hooks", !134, i64 0, !134, i64 8, !134, i64 16, !134, i64 24}
!263 = !{!264, !134, i64 48}
!264 = !{!"line_maps", !134, i64 0, !139, i64 8, !139, i64 12, !139, i64 16, !139, i64 20, !139, i64 24, !135, i64 28, !139, i64 32, !139, i64 36, !139, i64 40, !134, i64 48}
!265 = !{!"toplev.c:init_local_tick"}
!266 = !{!267, !144, i64 0}
!267 = !{!"timeval", !144, i64 0, !144, i64 8}
!268 = !{!267, !144, i64 8}
!269 = !{!"toplev.c:do_compile"}
!270 = !{!"branch_weights", i32 19, i32 8}
!271 = !{i32 0, i32 2}
!272 = !{!"toplev.c:crash_signal"}
!273 = !{!"function_entry_count", i64 3}
!274 = !{!"toplev.c:realloc_for_line_map"}
!275 = !{!"toplev.c:process_options"}
!276 = !{!143, !134, i64 64}
!277 = !{!224, !134, i64 1384}
!278 = !{!"branch_weights", i32 665, i32 64}
!279 = !{!"branch_weights", i32 -2147483648, i32 0}
!280 = !{!"branch_weights", i32 536870913, i32 0, i32 1073741823, i32 536870913}
!281 = !{!"branch_weights", i32 0, i32 -2147483648}
!282 = !{!212, !134, i64 192}
!283 = !{!"branch_weights", i32 5, i32 4}
!284 = !{!"branch_weights", i32 1808407283, i32 339076365}
!285 = !{!"branch_weights", i32 5, i32 1}
!286 = !{!"branch_weights", i32 1717986918, i32 429496730}
!287 = !{!224, !135, i64 2025}
!288 = !{!"branch_weights", i32 409044504, i32 1738439144}
!289 = !{!"branch_weights", i32 390451572, i32 1757032076}
!290 = !{!"toplev.c:backend_init"}
!291 = !{!"toplev.c:lang_dependent_init"}
!292 = !{!143, !134, i64 72}
!293 = !{!212, !134, i64 0}
!294 = !{!"toplev.c:compile_file"}
!295 = !{!143, !134, i64 88}
!296 = !{!143, !134, i64 336}
!297 = !{!224, !135, i64 2028}
!298 = !{!224, !134, i64 296}
!299 = !{!212, !134, i64 8}
!300 = !{!224, !134, i64 288}
!301 = !{!"toplev.c:finalize"}
!302 = !{!143, !134, i64 80}
!303 = !{!"toplev.c:diagnostic_inhibit_notes"}
!304 = !{!152, !135, i64 3588}
!305 = !{!"toplev.c:target_supports_section_anchors_p"}
!306 = !{!224, !144, i64 1064}
!307 = !{!"toplev.c:print_switch_values"}
!308 = distinct !{!308, !162}
!309 = distinct !{!309, !162}
!310 = !{!"toplev.c:print_to_stderr"}
!311 = !{!"toplev.c:print_single_switch"}
!312 = !{!"toplev.c:init_asm_output"}
!313 = !{!"branch_weights", i32 1, i32 5}
!314 = !{!224, !134, i64 280}
!315 = !{!224, !134, i64 320}
!316 = !{!"toplev.c:print_to_asm_out_file"}
