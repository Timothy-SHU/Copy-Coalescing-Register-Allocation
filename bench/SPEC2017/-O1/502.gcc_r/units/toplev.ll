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
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
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
%struct.timeval = type { i64, i64 }
%struct.line_maps = type { ptr, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
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
@rtl_dump_and_exit = dso_local local_unnamed_addr global i32 0, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@global_dc = external local_unnamed_addr global ptr, align 8
@current_function_decl = dso_local local_unnamed_addr global ptr null, align 8
@flag_random_seed = internal unnamed_addr global ptr null, align 8
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@.str.3 = private unnamed_addr constant [28 x i8] c"invalid option argument %qs\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"\09.file\09\00", align 1
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@cgraph_global_info_ready = external local_unnamed_addr global i8, align 1
@flag_keep_static_consts = external local_unnamed_addr global i32, align 4
@warn_unused_function = external local_unnamed_addr global i32, align 4
@input_location = dso_local local_unnamed_addr global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"%q+F used but never defined\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"%q+F declared %<static%> but never defined\00", align 1
@warn_unused_variable = external local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"%q+D defined but not used\00", align 1
@timevar_enable = external local_unnamed_addr global i8, align 1
@debug_hooks = dso_local local_unnamed_addr global ptr null, align 8
@warn_deprecated_decl = external local_unnamed_addr global i32, align 4
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"deprecated\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"%qD is deprecated (declared at %s:%d): %s\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"%qD is deprecated (declared at %s:%d)\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"%qE is deprecated (declared at %s:%d): %s\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"%qE is deprecated (declared at %s:%d)\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"type is deprecated (declared at %s:%d): %s\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"type is deprecated (declared at %s:%d)\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"%qE is deprecated: %s\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"%qE is deprecated\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"type is deprecated: %s\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"type is deprecated\00", align 1
@flag_print_asm_name = dso_local local_unnamed_addr global i32 0, align 4
@graph_dump_format = dso_local local_unnamed_addr global i32 0, align 4
@set_yydebug = internal unnamed_addr global i1 false, align 4
@.str.21 = private unnamed_addr constant [38 x i8] c"unrecognized gcc debugging option: %c\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"stabs\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"coff\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"dwarf-2\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"xcoff\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"vms\00", align 1
@debug_type_names = dso_local local_unnamed_addr constant [6 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], align 16
@print_version.fmt1 = internal constant [59 x i8] c"%s%s%s %sversion %s (%s)\0A%s\09compiled by GNU C version %s, \00", align 16
@.str.28 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.29 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@pkgversion_string = external constant [0 x i8], align 1
@version_string = external constant [0 x i8], align 1
@.str.30 = private unnamed_addr constant [78 x i8] c"Ubuntu Clang 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@cl_options_count = external local_unnamed_addr constant i32, align 4
@flag_pic = external local_unnamed_addr global i32, align 4
@flag_pie = external local_unnamed_addr global i32, align 4
@target_flags = external global i32, align 4
@.str.31 = private unnamed_addr constant [50 x i8] c"created and used with different settings of -fpic\00", align 1
@.str.32 = private unnamed_addr constant [50 x i8] c"created and used with different settings of -fpie\00", align 1
@cl_options = external local_unnamed_addr constant [0 x %struct.cl_option], align 8
@.str.33 = private unnamed_addr constant [12 x i8] c"<anonymous>\00", align 1
@save_argv = internal unnamed_addr global ptr null, align 8
@version_flag = external local_unnamed_addr global i32, align 4
@help_flag = external local_unnamed_addr global i32, align 4
@exit_after_options = external local_unnamed_addr global i8, align 1
@progname = dso_local local_unnamed_addr global ptr null, align 8
@main_input_filename = dso_local global ptr null, align 8
@line_table = dso_local local_unnamed_addr global ptr null, align 8
@dump_base_name = dso_local local_unnamed_addr global ptr null, align 8
@dump_dir_name = dso_local local_unnamed_addr global ptr null, align 8
@aux_base_name = dso_local local_unnamed_addr global ptr null, align 8
@profile_data_prefix = dso_local local_unnamed_addr global ptr null, align 8
@target_flags_explicit = dso_local local_unnamed_addr global i32 0, align 4
@asm_file_name = dso_local local_unnamed_addr global ptr null, align 8
@flag_generate_lto = dso_local local_unnamed_addr global i32 0, align 4
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
@init_random_seed.random_seed = internal global [19 x i8] zeroinitializer, align 16
@.str.34 = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@.str.35 = private unnamed_addr constant [41 x i8] c"getting core file size maximum limit: %m\00", align 1
@.str.36 = private unnamed_addr constant [44 x i8] c"setting core file size limit to maximum: %m\00", align 1
@.str.37 = private unnamed_addr constant [49 x i8] c"created and used with differing settings of '%s'\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@caller_save_initialized_p = external local_unnamed_addr global i8, align 1
@align_loops = external local_unnamed_addr global i32, align 4
@align_jumps = external local_unnamed_addr global i32, align 4
@align_labels = external local_unnamed_addr global i32, align 4
@align_functions = external local_unnamed_addr global i32, align 4
@.str.39 = private unnamed_addr constant [9 x i8] c"toplev.c\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@flag_unsafe_math_optimizations = external local_unnamed_addr global i32, align 4
@ix86_fpmath = external local_unnamed_addr global i32, align 4
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

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !120 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !121
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !120 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !121
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !120 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !125
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !130
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !131

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #22
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !125
  %11 = load i8, ptr %3, align 1, !tbaa !132
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !120 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !125
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !130
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !131

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #22
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !125
  %11 = load i8, ptr %3, align 1, !tbaa !132
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !120 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !121
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !125
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !130
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !131

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #22
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !125
  %11 = load i8, ptr %3, align 1, !tbaa !132
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !120 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !121
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !120 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !133
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !134
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !131

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #22
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !133
  store i8 %12, ptr %4, align 1, !tbaa !132
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !120 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !133
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !134
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !131

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #22
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !133
  store i8 %12, ptr %4, align 1, !tbaa !132
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !120 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !121
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !133
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !134
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !131

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #22
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !133
  store i8 %12, ptr %4, align 1, !tbaa !132
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !120 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #22
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !120 {
  %2 = load i32, ptr %0, align 8, !tbaa !135
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !120 {
  %2 = load i32, ptr %0, align 8, !tbaa !135
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !120 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #22
  %6 = load ptr, ptr %5, align 8, !tbaa !121
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !136
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !120 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #22
  %6 = load ptr, ptr %5, align 8, !tbaa !121
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !136
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !120 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !120 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !120 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !120 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #22
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
  br i1 %23, label %7, label %24, !llvm.loop !137

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !120 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @set_src_pwd(ptr noundef %0) local_unnamed_addr #9 !prof !120 {
  %2 = load ptr, ptr @src_pwd, align 8, !tbaa !121
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %0)
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i8
  br label %10

8:                                                ; preds = %1
  %9 = tail call ptr @xstrdup(ptr noundef %0) #22
  store ptr %9, ptr @src_pwd, align 8, !tbaa !121
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi i8 [ 1, %8 ], [ %7, %4 ]
  ret i8 %11
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @get_src_pwd() local_unnamed_addr #9 !prof !120 {
  %1 = load ptr, ptr @src_pwd, align 8, !tbaa !121
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = tail call ptr @getpwd() #22
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @.str, ptr %4
  store ptr %6, ptr @src_pwd, align 8
  br label %7

7:                                                ; preds = %3, %0
  %8 = load ptr, ptr @src_pwd, align 8, !tbaa !121
  ret ptr %8
}

declare ptr @getpwd() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @announce_function(ptr noundef %0) local_unnamed_addr #11 !prof !140 {
  %2 = load i32, ptr @quiet_flag, align 4, !tbaa !136
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %28, !prof !141

4:                                                ; preds = %1
  %5 = load i32, ptr @rtl_dump_and_exit, align 4, !tbaa !136
  %6 = icmp eq i32 %5, 0
  %7 = load ptr, ptr @stderr, align 8, !tbaa !121
  br i1 %6, label %13, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !132
  %11 = getelementptr inbounds %struct.tree_identifier, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !132
  br label %16

13:                                               ; preds = %4
  %14 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !142
  %15 = tail call ptr %14(ptr noundef %0, i32 noundef 2) #22
  br label %16

16:                                               ; preds = %13, %8
  %17 = phi ptr [ %15, %13 ], [ %12, %8 ]
  %18 = phi ptr [ @.str.2, %13 ], [ @.str.1, %8 ]
  %19 = tail call ptr @identifier_to_locale(ptr noundef %17) #22
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull %18, ptr noundef %19) #23
  %21 = load ptr, ptr @stderr, align 8, !tbaa !121
  %22 = tail call i32 @fflush(ptr noundef %21)
  %23 = load ptr, ptr @global_dc, align 8, !tbaa !121
  %24 = load ptr, ptr %23, align 8, !tbaa !150
  %25 = getelementptr inbounds %struct.pretty_print_info, ptr %24, i64 0, i32 8
  store i8 1, ptr %25, align 1, !tbaa !152
  %26 = load ptr, ptr @current_function_decl, align 8, !tbaa !121
  %27 = getelementptr inbounds %struct.diagnostic_context, ptr %23, i64 0, i32 10
  store ptr %26, ptr %27, align 8, !tbaa !155
  br label %28

28:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @identifier_to_locale(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @get_random_seed(i8 noundef zeroext %0) local_unnamed_addr #9 !prof !120 {
  %2 = load ptr, ptr @flag_random_seed, align 8, !tbaa !121
  %3 = icmp ne ptr %2, null
  %4 = icmp ne i8 %0, 0
  %5 = or i1 %4, %3
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr @local_tick, align 4, !tbaa !136
  %8 = tail call i32 @getpid() #22
  %9 = xor i32 %8, %7
  %10 = zext i32 %9 to i64
  %11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @init_random_seed.random_seed, ptr noundef nonnull dereferenceable(1) @.str.34, i64 noundef %10)
  store ptr @init_random_seed.random_seed, ptr @flag_random_seed, align 8, !tbaa !121
  br label %12

12:                                               ; preds = %6, %1
  %13 = load ptr, ptr @flag_random_seed, align 8, !tbaa !121
  ret ptr %13
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @set_random_seed(ptr noundef %0) local_unnamed_addr #12 !prof !120 {
  %2 = load ptr, ptr @flag_random_seed, align 8, !tbaa !121
  store ptr %0, ptr @flag_random_seed, align 8, !tbaa !121
  ret ptr %2
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @read_integral_parameter(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !156 {
  %4 = load i8, ptr %0, align 1, !tbaa !132
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %28, label %6, !prof !157

6:                                                ; preds = %3
  %7 = zext i8 %4 to i64
  %8 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %7
  %9 = load i16, ptr %8, align 2, !tbaa !158
  %10 = and i16 %9, 4
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %23, label %12, !prof !159

12:                                               ; preds = %6, %17
  %13 = phi ptr [ %14, %17 ], [ %0, %6 ]
  %14 = getelementptr inbounds i8, ptr %13, i64 1
  %15 = load i8, ptr %14, align 1, !tbaa !132
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17, !prof !160, !llvm.loop !161

17:                                               ; preds = %12
  %18 = zext i8 %15 to i64
  %19 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !158
  %21 = and i16 %20, 4
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %12, !prof !159, !llvm.loop !161

23:                                               ; preds = %17, %6
  %24 = phi i1 [ %5, %6 ], [ %16, %17 ]
  br i1 %24, label %28, label %25, !prof !162

25:                                               ; preds = %23
  %26 = icmp eq ptr %1, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %25
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.3, ptr noundef nonnull %1) #22
  br label %31

28:                                               ; preds = %12, %3, %23
  %29 = tail call i64 @strtol(ptr nocapture noundef nonnull %0, ptr noundef null, i32 noundef 10)
  %30 = trunc i64 %29 to i32
  br label %31

31:                                               ; preds = %25, %27, %28
  %32 = phi i32 [ %30, %28 ], [ %2, %27 ], [ %2, %25 ]
  ret i32 %32
}

declare void @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @floor_log2(i64 noundef %0) local_unnamed_addr #13 !prof !163 {
  %2 = icmp eq i64 %0, 0
  br i1 %2, label %31, label %3, !prof !164

3:                                                ; preds = %1
  %4 = icmp ugt i64 %0, 4294967295
  %5 = select i1 %4, i32 32, i32 0, !prof !165
  %6 = or disjoint i32 %5, 16
  %7 = zext nneg i32 %6 to i64
  %8 = lshr i64 %0, %7
  %9 = icmp eq i64 %8, 0
  %10 = select i1 %9, i32 %5, i32 %6, !prof !166
  %11 = or disjoint i32 %10, 8
  %12 = zext nneg i32 %11 to i64
  %13 = lshr i64 %0, %12
  %14 = icmp eq i64 %13, 0
  %15 = select i1 %14, i32 %10, i32 %11, !prof !167
  %16 = or disjoint i32 %15, 4
  %17 = zext nneg i32 %16 to i64
  %18 = lshr i64 %0, %17
  %19 = icmp eq i64 %18, 0
  %20 = select i1 %19, i32 %15, i32 %16, !prof !168
  %21 = add nuw nsw i32 %20, 2
  %22 = zext nneg i32 %21 to i64
  %23 = lshr i64 %0, %22
  %24 = icmp eq i64 %23, 0
  %25 = select i1 %24, i32 %20, i32 %21, !prof !169
  %26 = add nuw nsw i32 %25, 1
  %27 = zext nneg i32 %26 to i64
  %28 = lshr i64 %0, %27
  %29 = icmp eq i64 %28, 0
  %30 = select i1 %29, i32 %25, i32 %26, !prof !170
  br label %31

31:                                               ; preds = %1, %3
  %32 = phi i32 [ %30, %3 ], [ -1, %1 ]
  ret i32 %32
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i32 @exact_log2(i64 noundef %0) local_unnamed_addr #13 !prof !171 {
  %2 = tail call i64 @llvm.ctpop.i64(i64 %0), !range !172
  %3 = icmp eq i64 %2, 1
  br i1 %3, label %4, label %32, !prof !173

4:                                                ; preds = %1
  %5 = icmp ugt i64 %0, 4294967295
  %6 = select i1 %5, i32 32, i32 0, !prof !165
  %7 = or disjoint i32 %6, 16
  %8 = zext nneg i32 %7 to i64
  %9 = lshr i64 %0, %8
  %10 = icmp eq i64 %9, 0
  %11 = select i1 %10, i32 %6, i32 %7, !prof !166
  %12 = or disjoint i32 %11, 8
  %13 = zext nneg i32 %12 to i64
  %14 = lshr i64 %0, %13
  %15 = icmp eq i64 %14, 0
  %16 = select i1 %15, i32 %11, i32 %12, !prof !167
  %17 = or disjoint i32 %16, 4
  %18 = zext nneg i32 %17 to i64
  %19 = lshr i64 %0, %18
  %20 = icmp eq i64 %19, 0
  %21 = select i1 %20, i32 %16, i32 %17, !prof !168
  %22 = add nuw nsw i32 %21, 2
  %23 = zext nneg i32 %22 to i64
  %24 = lshr i64 %0, %23
  %25 = icmp eq i64 %24, 0
  %26 = select i1 %25, i32 %21, i32 %22, !prof !169
  %27 = add nuw nsw i32 %26, 1
  %28 = zext nneg i32 %27 to i64
  %29 = lshr i64 %0, %28
  %30 = icmp eq i64 %29, 0
  %31 = select i1 %30, i32 %26, i32 %27, !prof !170
  br label %32

32:                                               ; preds = %4, %1
  %33 = phi i32 [ -1, %1 ], [ %31, %4 ]
  ret i32 %33
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @strip_off_ending(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !120 {
  %3 = icmp sgt i32 %1, 2
  br i1 %3, label %4, label %21

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = add nsw i32 %1, -3
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 3)
  %8 = add nuw nsw i32 %7, 3
  %9 = zext nneg i32 %8 to i64
  br label %13

10:                                               ; preds = %13
  %11 = add nuw nsw i64 %14, 1
  %12 = icmp eq i64 %11, %9
  br i1 %12, label %21, label %13, !llvm.loop !174

13:                                               ; preds = %4, %10
  %14 = phi i64 [ 2, %4 ], [ %11, %10 ]
  %15 = sub nsw i64 %5, %14
  %16 = getelementptr inbounds i8, ptr %0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !132
  %18 = icmp eq i8 %17, 46
  br i1 %18, label %19, label %10

19:                                               ; preds = %13
  %20 = getelementptr inbounds i8, ptr %0, i64 %15
  store i8 0, ptr %20, align 1, !tbaa !132
  br label %21

21:                                               ; preds = %10, %2, %19
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @output_quoted_string(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #15 !prof !156 {
  %3 = tail call i32 @putc(i32 noundef 34, ptr noundef %0)
  %4 = load i8, ptr %1, align 1, !tbaa !132
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %28, label %6, !prof !157

6:                                                ; preds = %2, %25
  %7 = phi i8 [ %26, %25 ], [ %4, %2 ]
  %8 = phi ptr [ %9, %25 ], [ %1, %2 ]
  %9 = getelementptr inbounds i8, ptr %8, i64 1
  %10 = sext i8 %7 to i32
  %11 = and i32 %10, 255
  %12 = zext nneg i32 %11 to i64
  %13 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %12
  %14 = load i16, ptr %13, align 2, !tbaa !158
  %15 = and i16 %14, 16
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %22, label %17, !prof !175

17:                                               ; preds = %6
  switch i8 %7, label %20 [
    i8 92, label %18
    i8 34, label %18
  ], !prof !176

18:                                               ; preds = %17, %17
  %19 = tail call i32 @putc(i32 noundef 92, ptr noundef %0)
  br label %20

20:                                               ; preds = %17, %18
  %21 = tail call i32 @putc(i32 noundef %10, ptr noundef %0)
  br label %25

22:                                               ; preds = %6
  %23 = zext i8 %7 to i32
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %23)
  br label %25

25:                                               ; preds = %22, %20
  %26 = load i8, ptr %9, align 1, !tbaa !132
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %6, !prof !177, !llvm.loop !178

28:                                               ; preds = %25, %2
  %29 = tail call i32 @putc(i32 noundef 34, ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @output_file_directive(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !156 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4, !prof !159

4:                                                ; preds = %2
  %5 = tail call ptr @remap_debug_filename(ptr noundef nonnull %1) #22
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ @.str.5, %2 ]
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7)
  %9 = shl i64 %8, 32
  %10 = ashr exact i64 %9, 32
  %11 = getelementptr inbounds i8, ptr %7, i64 %10
  br label %12

12:                                               ; preds = %15, %6
  %13 = phi ptr [ %11, %6 ], [ %16, %15 ]
  %14 = icmp ugt ptr %13, %7
  br i1 %14, label %15, label %19, !prof !179

15:                                               ; preds = %12
  %16 = getelementptr inbounds i8, ptr %13, i64 -1
  %17 = load i8, ptr %16, align 1, !tbaa !132
  %18 = icmp eq i8 %17, 47
  br i1 %18, label %19, label %12, !prof !175, !llvm.loop !180

19:                                               ; preds = %15, %12
  %20 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 7, i64 1, ptr %0)
  tail call void @output_quoted_string(ptr noundef %0, ptr noundef %13)
  %21 = tail call i32 @putc(i32 noundef 10, ptr noundef %0)
  ret void
}

declare ptr @remap_debug_filename(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local void @wrapup_global_declaration_1(ptr noundef %0) local_unnamed_addr #11 !prof !181 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %3, i64 13
  %5 = load i8, ptr %4, align 1, !tbaa !132
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7, !prof !182

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12, !prof !183

12:                                               ; preds = %7
  %13 = and i32 %9, -2
  store i32 %13, ptr %8, align 8
  br label %14

14:                                               ; preds = %12, %7, %1
  %15 = icmp eq i64 %3, 32
  br i1 %15, label %16, label %22, !prof !184

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !132
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22, !prof !185

20:                                               ; preds = %16
  %21 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 14), align 8, !tbaa !186
  tail call void %21(ptr noundef nonnull %0) #22, !prof !187
  br label %22

22:                                               ; preds = %20, %16, %14
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @wrapup_global_declaration_2(ptr noundef %0) local_unnamed_addr #11 !prof !181 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 4194304
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %55, !prof !188

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 33554432
  %9 = icmp eq i64 %8, 0
  %10 = and i64 %2, 67174399
  %11 = icmp eq i64 %10, 67108896
  %12 = and i1 %11, %9
  br i1 %12, label %13, label %55, !prof !189

13:                                               ; preds = %5
  %14 = tail call ptr @varpool_node(ptr noundef nonnull %0) #22
  %15 = getelementptr inbounds %struct.varpool_node, ptr %14, i64 0, i32 5
  %16 = load i8, ptr %15, align 4
  %17 = and i8 %16, 72
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %55, !prof !159

19:                                               ; preds = %13
  %20 = load i8, ptr @cgraph_global_info_ready, align 1, !tbaa !132
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i64, ptr %0, align 8
  %24 = and i64 %23, 16777216
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %22
  %27 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #22
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 16777216
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %26, %19
  %32 = load i8, ptr %15, align 4
  %33 = and i8 %32, 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 512
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load i64, ptr %0, align 8
  %42 = and i64 %41, 135266304
  %43 = icmp eq i64 %42, 1048576
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load i32, ptr @optimize, align 4, !tbaa !136
  %46 = icmp eq i32 %45, 0
  %47 = load i32, ptr @flag_keep_static_consts, align 4
  %48 = icmp ne i32 %47, 0
  %49 = select i1 %46, i1 %48, i1 false
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load i64, ptr %6, align 8
  %52 = and i64 %51, 4096
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %26, %22, %40, %50, %31
  tail call void @rest_of_decl_compilation(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1) #22
  br label %55

55:                                               ; preds = %44, %50, %13, %35, %54, %1, %5
  %56 = phi i8 [ 1, %54 ], [ 0, %5 ], [ 0, %1 ], [ 0, %35 ], [ 0, %13 ], [ 0, %50 ], [ 0, %44 ]
  ret i8 %56
}

declare ptr @varpool_node(ptr noundef) local_unnamed_addr #3

declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #3

declare void @rest_of_decl_compilation(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @wrapup_global_declarations(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !120 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %9

6:                                                ; preds = %9, %2
  %7 = icmp sgt i32 %1, 0
  %8 = zext nneg i32 %1 to i64
  br label %15

9:                                                ; preds = %4, %9
  %10 = phi i64 [ 0, %4 ], [ %13, %9 ]
  %11 = getelementptr inbounds ptr, ptr %0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !121
  tail call void @wrapup_global_declaration_1(ptr noundef %12)
  %13 = add nuw nsw i64 %10, 1
  %14 = icmp eq i64 %13, %5
  br i1 %14, label %6, label %9, !llvm.loop !190

15:                                               ; preds = %6, %26
  %16 = phi i8 [ %29, %26 ], [ 0, %6 ]
  br i1 %7, label %17, label %26

17:                                               ; preds = %15, %17
  %18 = phi i64 [ %24, %17 ], [ 0, %15 ]
  %19 = phi i8 [ %23, %17 ], [ 0, %15 ]
  %20 = getelementptr inbounds ptr, ptr %0, i64 %18
  %21 = load ptr, ptr %20, align 8, !tbaa !121
  %22 = tail call zeroext i8 @wrapup_global_declaration_2(ptr noundef %21), !range !191
  %23 = or i8 %22, %19
  %24 = add nuw nsw i64 %18, 1
  %25 = icmp eq i64 %24, %8
  br i1 %25, label %26, label %17, !llvm.loop !192

26:                                               ; preds = %17, %15
  %27 = phi i8 [ 0, %15 ], [ %23, %17 ]
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %28, i8 %16, i8 1
  br i1 %28, label %30, label %15, !llvm.loop !193

30:                                               ; preds = %26
  ret i8 %29
}

; Function Attrs: nounwind uwtable
define dso_local void @check_global_declaration_1(ptr noundef %0) local_unnamed_addr #11 !prof !181 {
  %2 = alloca %struct.expanded_location, align 8
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 29
  br i1 %5, label %6, label %39, !prof !194

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !132
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %39, !prof !195

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 33558528
  %14 = icmp eq i64 %13, 33554432
  %15 = and i64 %3, 142606336
  %16 = icmp eq i64 %15, 0
  %17 = and i1 %16, %14
  br i1 %17, label %18, label %39, !prof !196

18:                                               ; preds = %10
  %19 = load i32, ptr @warn_unused_function, align 4, !tbaa !136
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #22
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 67108864
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %21, %18
  %27 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #22
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 67108864
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, ptr @input_location, align 4, !tbaa !136
  %33 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %32, i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef nonnull %0) #22
  br label %36

34:                                               ; preds = %26
  %35 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 220, ptr noundef nonnull @.str.8, ptr noundef nonnull %0) #22
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i64, ptr %0, align 8
  %38 = or i64 %37, 134217728
  store i64 %38, ptr %0, align 8
  tail call void @assemble_external(ptr noundef nonnull %0) #22
  br label %39

39:                                               ; preds = %36, %21, %10, %6, %1
  %40 = load i32, ptr @warn_unused_function, align 4, !tbaa !136
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42, !prof !188

42:                                               ; preds = %39
  %43 = load i64, ptr %0, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 29
  br i1 %45, label %53, label %46

46:                                               ; preds = %42, %39
  %47 = load i32, ptr @warn_unused_variable, align 4, !tbaa !136
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %94, label %49, !prof !188

49:                                               ; preds = %46
  %50 = load i64, ptr %0, align 8
  %51 = and i64 %50, 1114111
  %52 = icmp eq i64 %51, 32
  br i1 %52, label %53, label %94

53:                                               ; preds = %49, %42
  %54 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !132
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %55) #22
  %56 = getelementptr inbounds %struct.expanded_location, ptr %2, i64 0, i32 3
  %57 = load i8, ptr %56, align 8, !tbaa !197
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %94

59:                                               ; preds = %53
  %60 = load i64, ptr %0, align 8
  %61 = and i64 %60, 16777216
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %94

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !132
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
  %76 = or disjoint i64 %74, %75
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
  %85 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 7), align 8, !tbaa !199
  %86 = call zeroext i8 %85(ptr noundef nonnull %0) #22
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %84
  %89 = load i64, ptr %0, align 8
  %90 = and i64 %89, 65535
  %91 = icmp eq i64 %90, 29
  %92 = select i1 %91, i32 220, i32 230
  %93 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef %92, ptr noundef nonnull @.str.9, ptr noundef nonnull %0) #22
  br label %94

94:                                               ; preds = %67, %49, %46, %78, %88, %84, %71, %59, %53
  ret void
}

declare zeroext i8 @pedwarn(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @assemble_external(ptr noundef) local_unnamed_addr #3

declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @check_global_declarations(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !120 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %10, %6 ]
  %8 = getelementptr inbounds ptr, ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  tail call void @check_global_declaration_1(ptr noundef %9)
  %10 = add nuw nsw i64 %7, 1
  %11 = icmp eq i64 %10, %5
  br i1 %11, label %12, label %6, !llvm.loop !200

12:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @emit_debug_global_declarations(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !120 {
  %3 = load ptr, ptr @global_dc, align 8, !tbaa !121
  %4 = getelementptr inbounds %struct.diagnostic_context, ptr %3, i64 0, i32 1, i64 4
  %5 = load i32, ptr %4, align 8, !tbaa !136
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %32

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.diagnostic_context, ptr %3, i64 0, i32 1, i64 5
  %9 = load i32, ptr %8, align 4, !tbaa !136
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %7
  %12 = load i8, ptr @timevar_enable, align 1, !tbaa !132
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @timevar_push_1(i32 noundef 166) #22
  br label %15

15:                                               ; preds = %14, %11
  %16 = icmp sgt i32 %1, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %15
  %18 = zext nneg i32 %1 to i64
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ 0, %17 ], [ %26, %19 ]
  %21 = load ptr, ptr @debug_hooks, align 8, !tbaa !121
  %22 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %21, i64 0, i32 17
  %23 = load ptr, ptr %22, align 8, !tbaa !201
  %24 = getelementptr inbounds ptr, ptr %0, i64 %20
  %25 = load ptr, ptr %24, align 8, !tbaa !121
  tail call void %23(ptr noundef %25) #22
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, %18
  br i1 %27, label %28, label %19, !llvm.loop !203

28:                                               ; preds = %19, %15
  %29 = load i8, ptr @timevar_enable, align 1, !tbaa !132
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  tail call void @timevar_pop_1(i32 noundef 166) #22
  br label %32

32:                                               ; preds = %28, %31, %2, %7
  ret void
}

declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @warn_deprecated_use(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !120 {
  %3 = alloca %struct.expanded_location, align 8
  %4 = alloca %struct.expanded_location, align 8
  %5 = icmp ne ptr %0, null
  %6 = load i32, ptr @warn_deprecated_decl, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %109

9:                                                ; preds = %2
  %10 = icmp eq ptr %1, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %9
  %12 = load i64, ptr %0, align 8
  %13 = and i64 %12, 65535
  %14 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !136
  switch i32 %15, label %29 [
    i32 3, label %16
    i32 2, label %19
  ]

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !132
  br label %29

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !132
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !132
  %26 = getelementptr inbounds %struct.tree_type, ptr %25, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !132
  %28 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.10, ptr noundef %27) #22
  br label %29

29:                                               ; preds = %19, %23, %11, %16, %9
  %30 = phi ptr [ %1, %9 ], [ %18, %16 ], [ null, %11 ], [ %28, %23 ], [ null, %19 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.10, ptr noundef nonnull %30) #22
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi ptr [ %33, %32 ], [ null, %29 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.tree_list, ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !132
  %40 = getelementptr inbounds %struct.tree_list, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !132
  %42 = getelementptr inbounds %struct.tree_string, ptr %41, i64 0, i32 2
  br label %43

43:                                               ; preds = %34, %37
  %44 = phi ptr [ %42, %37 ], [ null, %34 ]
  %45 = load i64, ptr %0, align 8
  %46 = and i64 %45, 65535
  %47 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !136
  switch i32 %48, label %109 [
    i32 3, label %49
    i32 2, label %61
  ]

49:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %50 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !132
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %3, i32 noundef %51) #22
  %52 = icmp eq ptr %44, null
  %53 = load ptr, ptr %3, align 8, !tbaa !204
  %54 = getelementptr inbounds %struct.expanded_location, ptr %3, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !205
  br i1 %52, label %58, label %56

56:                                               ; preds = %49
  %57 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 68, ptr noundef nonnull @.str.11, ptr noundef nonnull %0, ptr noundef %53, i32 noundef %55, ptr noundef nonnull %44) #22
  br label %60

58:                                               ; preds = %49
  %59 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 68, ptr noundef nonnull @.str.12, ptr noundef nonnull %0, ptr noundef %53, i32 noundef %55) #22
  br label %60

60:                                               ; preds = %58, %56
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  br label %109

61:                                               ; preds = %43
  %62 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !132
  %64 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 12
  %65 = load ptr, ptr %64, align 8, !tbaa !132
  %66 = icmp eq ptr %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %61
  %68 = load i64, ptr %65, align 8
  %69 = trunc i64 %68 to i16
  switch i16 %69, label %73 [
    i16 1, label %74
    i16 35, label %70
  ]

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.tree_decl_minimal, ptr %65, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !132
  br label %74

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %70, %67, %73, %61
  %75 = phi ptr [ null, %61 ], [ %65, %67 ], [ null, %73 ], [ %72, %70 ]
  %76 = icmp eq ptr %63, null
  br i1 %76, label %96, label %77

77:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  %78 = getelementptr inbounds %struct.tree_decl_minimal, ptr %63, i64 0, i32 1
  %79 = load i32, ptr %78, align 8, !tbaa !132
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %4, i32 noundef %79) #22
  %80 = icmp eq ptr %75, null
  %81 = icmp eq ptr %44, null
  %82 = load ptr, ptr %4, align 8, !tbaa !204
  %83 = getelementptr inbounds %struct.expanded_location, ptr %4, i64 0, i32 1
  %84 = load i32, ptr %83, align 8, !tbaa !205
  br i1 %80, label %90, label %85

85:                                               ; preds = %77
  br i1 %81, label %88, label %86

86:                                               ; preds = %85
  %87 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 68, ptr noundef nonnull @.str.13, ptr noundef nonnull %75, ptr noundef %82, i32 noundef %84, ptr noundef nonnull %44) #22
  br label %95

88:                                               ; preds = %85
  %89 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 68, ptr noundef nonnull @.str.14, ptr noundef nonnull %75, ptr noundef %82, i32 noundef %84) #22
  br label %95

90:                                               ; preds = %77
  br i1 %81, label %93, label %91

91:                                               ; preds = %90
  %92 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 68, ptr noundef nonnull @.str.15, ptr noundef %82, i32 noundef %84, ptr noundef nonnull %44) #22
  br label %95

93:                                               ; preds = %90
  %94 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 68, ptr noundef nonnull @.str.16, ptr noundef %82, i32 noundef %84) #22
  br label %95

95:                                               ; preds = %91, %93, %86, %88
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  br label %109

96:                                               ; preds = %74
  %97 = icmp eq ptr %75, null
  %98 = icmp eq ptr %44, null
  br i1 %97, label %104, label %99

99:                                               ; preds = %96
  br i1 %98, label %102, label %100

100:                                              ; preds = %99
  %101 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 68, ptr noundef nonnull @.str.17, ptr noundef nonnull %75, ptr noundef nonnull %44) #22
  br label %109

102:                                              ; preds = %99
  %103 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 68, ptr noundef nonnull @.str.18, ptr noundef nonnull %75) #22
  br label %109

104:                                              ; preds = %96
  br i1 %98, label %107, label %105

105:                                              ; preds = %104
  %106 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 68, ptr noundef nonnull @.str.19, ptr noundef nonnull %44) #22
  br label %109

107:                                              ; preds = %104
  %108 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 68, ptr noundef nonnull @.str.20) #22
  br label %109

109:                                              ; preds = %60, %43, %102, %100, %107, %105, %95, %2
  ret void
}

declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @decode_d_option(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !120 {
  %2 = alloca %struct.rlimit, align 8
  %3 = load i8, ptr %0, align 1, !tbaa !132
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rlimit, ptr %2, i64 0, i32 1
  br label %7

7:                                                ; preds = %5, %35
  %8 = phi i8 [ %3, %5 ], [ %36, %35 ]
  %9 = phi ptr [ %0, %5 ], [ %10, %35 ]
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  switch i8 %8, label %32 [
    i8 65, label %11
    i8 112, label %12
    i8 80, label %13
    i8 118, label %14
    i8 120, label %15
    i8 121, label %16
    i8 68, label %35
    i8 73, label %35
    i8 77, label %35
    i8 78, label %35
    i8 85, label %35
    i8 72, label %17
    i8 97, label %30
  ]

11:                                               ; preds = %7
  store i32 1, ptr @flag_debug_asm, align 4, !tbaa !136
  br label %35

12:                                               ; preds = %7
  store i32 1, ptr @flag_print_asm_name, align 4, !tbaa !136
  br label %35

13:                                               ; preds = %7
  store i32 1, ptr @flag_dump_rtl_in_asm, align 4, !tbaa !136
  store i32 1, ptr @flag_print_asm_name, align 4, !tbaa !136
  br label %35

14:                                               ; preds = %7
  store i32 1, ptr @graph_dump_format, align 4, !tbaa !136
  br label %35

15:                                               ; preds = %7
  store i32 1, ptr @rtl_dump_and_exit, align 4, !tbaa !136
  br label %35

16:                                               ; preds = %7
  store i1 true, ptr @set_yydebug, align 4
  br label %35

17:                                               ; preds = %7
  %18 = call ptr @signal(i32 noundef 6, ptr noundef null) #22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #22
  %19 = call i32 @getrlimit(i32 noundef 4, ptr noundef nonnull %2) #22
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.35) #22
  br label %22

22:                                               ; preds = %21, %17
  %23 = load i64, ptr %6, align 8, !tbaa !206
  store i64 %23, ptr %2, align 8, !tbaa !208
  %24 = call i32 @setrlimit(i32 noundef 4, ptr noundef nonnull %2) #22
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.36) #22
  br label %27

27:                                               ; preds = %22, %26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #22
  %28 = load ptr, ptr @global_dc, align 8, !tbaa !121
  %29 = getelementptr inbounds %struct.diagnostic_context, ptr %28, i64 0, i32 6
  store i8 1, ptr %29, align 1, !tbaa !209
  br label %35

30:                                               ; preds = %7
  %31 = call zeroext i8 @enable_rtl_dump_file() #22
  br label %35

32:                                               ; preds = %7
  %33 = sext i8 %8 to i32
  %34 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.21, i32 noundef %33) #22
  br label %35

35:                                               ; preds = %7, %7, %7, %7, %7, %32, %30, %27, %16, %15, %14, %13, %12, %11
  %36 = load i8, ptr %10, align 1, !tbaa !132
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %7, !llvm.loop !210

38:                                               ; preds = %35, %1
  ret void
}

declare zeroext i8 @enable_rtl_dump_file() local_unnamed_addr #3

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @print_version(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #15 !prof !120 {
  %3 = load i8, ptr %1, align 1, !tbaa !132
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %4, ptr @.str.29, ptr @.str.28
  %6 = load ptr, ptr @lang_hooks, align 8, !tbaa !211
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @print_version.fmt1, ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef %6, ptr noundef nonnull @pkgversion_string, ptr noundef nonnull @version_string, ptr noundef nonnull @.str.29, ptr noundef nonnull %1, ptr noundef nonnull @.str.30)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @default_get_pch_validity(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !120 {
  %2 = alloca %struct.cl_option_state, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #22
  store i64 2, ptr %0, align 8, !tbaa !212
  %3 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 76), align 8, !tbaa !213
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, i64 2, i64 6
  store i64 %5, ptr %0, align 8
  %6 = load i32, ptr @cl_options_count, align 4, !tbaa !136
  %7 = zext i32 %6 to i64
  %8 = icmp eq i32 %6, 0
  br i1 %8, label %39, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.cl_option_state, ptr %2, i64 0, i32 1
  br label %11

11:                                               ; preds = %9, %36
  %12 = phi i64 [ 0, %9 ], [ %37, %36 ]
  %13 = trunc i64 %12 to i32
  %14 = shl i64 %12, 32
  %15 = ashr exact i64 %14, 32
  %16 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %15, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !225
  %18 = and i32 %17, 1048576
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %15, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !227
  %23 = icmp eq ptr %22, @target_flags
  %24 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 76), align 8
  %25 = icmp ne ptr %24, null
  %26 = select i1 %23, i1 %25, i1 false
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = call zeroext i8 @get_option_state(i32 noundef %13, ptr noundef nonnull %2) #22
  br label %29

29:                                               ; preds = %11, %20, %27
  %30 = phi i8 [ %28, %27 ], [ 0, %11 ], [ 0, %20 ]
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i64, ptr %10, align 8, !tbaa !228
  %34 = load i64, ptr %0, align 8, !tbaa !212
  %35 = add i64 %34, %33
  store i64 %35, ptr %0, align 8, !tbaa !212
  br label %36

36:                                               ; preds = %29, %32
  %37 = add nuw nsw i64 %12, 1
  %38 = icmp eq i64 %37, %7
  br i1 %38, label %39, label %11, !llvm.loop !230

39:                                               ; preds = %36, %1
  %40 = load i64, ptr %0, align 8, !tbaa !212
  %41 = call ptr @xmalloc(i64 noundef %40) #22
  %42 = load i32, ptr @flag_pic, align 4, !tbaa !136
  %43 = trunc i32 %42 to i8
  store i8 %43, ptr %41, align 1, !tbaa !132
  %44 = load i32, ptr @flag_pie, align 4, !tbaa !136
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds i8, ptr %41, i64 1
  store i8 %45, ptr %46, align 1, !tbaa !132
  %47 = getelementptr inbounds i8, ptr %41, i64 2
  %48 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 76), align 8, !tbaa !213
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %39
  %51 = load i32, ptr @target_flags, align 4
  store i32 %51, ptr %47, align 1
  %52 = getelementptr inbounds i8, ptr %41, i64 6
  br label %53

53:                                               ; preds = %50, %39
  %54 = phi ptr [ %52, %50 ], [ %47, %39 ]
  %55 = icmp eq i32 %6, 0
  br i1 %55, label %89, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.cl_option_state, ptr %2, i64 0, i32 1
  br label %58

58:                                               ; preds = %56, %85
  %59 = phi ptr [ %54, %56 ], [ %86, %85 ]
  %60 = phi i64 [ 0, %56 ], [ %87, %85 ]
  %61 = trunc i64 %60 to i32
  %62 = shl i64 %60, 32
  %63 = ashr exact i64 %62, 32
  %64 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %63, i32 5
  %65 = load i32, ptr %64, align 8, !tbaa !225
  %66 = and i32 %65, 1048576
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %58
  %69 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %63, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !227
  %71 = icmp eq ptr %70, @target_flags
  %72 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 76), align 8
  %73 = icmp ne ptr %72, null
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %77, label %75

75:                                               ; preds = %68
  %76 = call zeroext i8 @get_option_state(i32 noundef %61, ptr noundef nonnull %2) #22
  br label %77

77:                                               ; preds = %58, %68, %75
  %78 = phi i8 [ %76, %75 ], [ 0, %58 ], [ 0, %68 ]
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %2, align 8, !tbaa !231
  %82 = load i64, ptr %57, align 8, !tbaa !228
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %59, ptr align 1 %81, i64 %82, i1 false)
  %83 = load i64, ptr %57, align 8, !tbaa !228
  %84 = getelementptr inbounds i8, ptr %59, i64 %83
  br label %85

85:                                               ; preds = %77, %80
  %86 = phi ptr [ %84, %80 ], [ %59, %77 ]
  %87 = add nuw nsw i64 %60, 1
  %88 = icmp eq i64 %87, %7
  br i1 %88, label %89, label %58, !llvm.loop !232

89:                                               ; preds = %85, %53
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #22
  ret ptr %41
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: cold nounwind uwtable
define dso_local ptr @default_pch_valid_p(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #9 !prof !120 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.cl_option_state, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  %5 = load i8, ptr %0, align 1, !tbaa !132
  %6 = sext i8 %5 to i32
  %7 = load i32, ptr @flag_pic, align 4, !tbaa !136
  %8 = icmp eq i32 %7, %6
  br i1 %8, label %9, label %71

9:                                                ; preds = %2
  %10 = getelementptr inbounds i8, ptr %0, i64 1
  %11 = load i8, ptr %10, align 1, !tbaa !132
  %12 = sext i8 %11 to i32
  %13 = load i32, ptr @flag_pie, align 4, !tbaa !136
  %14 = icmp eq i32 %13, %12
  br i1 %14, label %15, label %71

15:                                               ; preds = %9
  %16 = getelementptr inbounds i8, ptr %0, i64 2
  %17 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 76), align 8, !tbaa !213
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load i32, ptr %16, align 1
  %21 = getelementptr inbounds i8, ptr %0, i64 6
  %22 = tail call ptr %17(i32 noundef %20) #22
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %71

24:                                               ; preds = %19, %15
  %25 = phi ptr [ %21, %19 ], [ %16, %15 ]
  %26 = load i32, ptr @cl_options_count, align 4, !tbaa !136
  %27 = zext i32 %26 to i64
  %28 = icmp eq i32 %26, 0
  br i1 %28, label %71, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.cl_option_state, ptr %4, i64 0, i32 1
  br label %31

31:                                               ; preds = %29, %67
  %32 = phi i64 [ 0, %29 ], [ %69, %67 ]
  %33 = phi ptr [ %25, %29 ], [ %68, %67 ]
  %34 = trunc i64 %32 to i32
  %35 = shl i64 %32, 32
  %36 = ashr exact i64 %35, 32
  %37 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %36, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !225
  %39 = and i32 %38, 1048576
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %31
  %42 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %36, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !227
  %44 = icmp eq ptr %43, @target_flags
  %45 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 76), align 8
  %46 = icmp ne ptr %45, null
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %50, label %48

48:                                               ; preds = %41
  %49 = call zeroext i8 @get_option_state(i32 noundef %34, ptr noundef nonnull %4) #22
  br label %50

50:                                               ; preds = %31, %41, %48
  %51 = phi i8 [ %49, %48 ], [ 0, %31 ], [ 0, %41 ]
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %67, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %4, align 8, !tbaa !231
  %55 = load i64, ptr %30, align 8, !tbaa !228
  %56 = call i32 @bcmp(ptr %33, ptr %54, i64 %55)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %32
  %60 = load ptr, ptr %59, align 8, !tbaa !233
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %61 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.37, ptr noundef %60) #22
  %62 = load ptr, ptr %3, align 8, !tbaa !121
  %63 = icmp eq ptr %62, null
  %64 = select i1 %63, ptr @.str.38, ptr %62
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  br label %71

65:                                               ; preds = %53
  %66 = getelementptr inbounds i8, ptr %33, i64 %55
  br label %67

67:                                               ; preds = %50, %65
  %68 = phi ptr [ %66, %65 ], [ %33, %50 ]
  %69 = add nuw nsw i64 %32, 1
  %70 = icmp eq i64 %69, %27
  br i1 %70, label %71, label %31, !llvm.loop !234

71:                                               ; preds = %67, %24, %9, %2, %19, %58
  %72 = phi ptr [ %64, %58 ], [ %22, %19 ], [ @.str.31, %2 ], [ @.str.32, %9 ], [ null, %24 ], [ null, %67 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  ret ptr %72
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @default_tree_printer(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6) #9 !prof !120 {
  %8 = icmp ne i32 %3, 0
  %9 = or i8 %6, %4
  %10 = icmp ne i8 %9, 0
  %11 = or i1 %8, %10
  br i1 %11, label %118, label %12

12:                                               ; preds = %7
  %13 = load i8, ptr %2, align 1, !tbaa !132
  switch i8 %13, label %118 [
    i8 69, label %14
    i8 68, label %45
    i8 70, label %72
    i8 84, label %72
  ]

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !235
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
  %37 = load i8, ptr %36, align 2, !tbaa !237
  %38 = icmp eq i8 %37, 0
  %39 = getelementptr inbounds %struct.tree_identifier, ptr %31, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !132
  br i1 %38, label %43, label %41

41:                                               ; preds = %35
  %42 = tail call ptr @identifier_to_locale(ptr noundef %40) #22
  br label %43

43:                                               ; preds = %35, %41
  %44 = phi ptr [ %42, %41 ], [ %40, %35 ]
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %44) #22
  br label %118

45:                                               ; preds = %12
  %46 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !235
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
  %68 = tail call ptr @decl_debug_expr_lookup(ptr noundef %62) #22
  %69 = icmp eq ptr %68, null
  br i1 %69, label %90, label %70

70:                                               ; preds = %67
  %71 = tail call ptr @decl_debug_expr_lookup(ptr noundef %62) #22
  br label %90

72:                                               ; preds = %12, %12
  %73 = getelementptr inbounds %struct.text_info, ptr %1, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !235
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
  %95 = load ptr, ptr %94, align 8, !tbaa !238
  %96 = icmp eq ptr %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.tree_decl_minimal, ptr %91, i64 0, i32 1
  %99 = load i32, ptr %98, align 8, !tbaa !132
  store i32 %99, ptr %95, align 4, !tbaa !136
  br label %100

100:                                              ; preds = %97, %93, %90
  %101 = load i64, ptr %91, align 8
  %102 = and i64 %101, 65535
  %103 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !136
  %105 = icmp eq i32 %104, 3
  br i1 %105, label %106, label %116

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.tree_decl_minimal, ptr %91, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !132
  %109 = icmp eq ptr %108, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !142
  %112 = tail call ptr %111(ptr noundef nonnull %91, i32 noundef 2) #22
  %113 = tail call ptr @identifier_to_locale(ptr noundef %112) #22
  br label %114

114:                                              ; preds = %106, %110
  %115 = phi ptr [ %113, %110 ], [ @.str.33, %106 ]
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %115) #22
  br label %118

116:                                              ; preds = %100
  %117 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %91, i32 noundef 0, i32 noundef 32768, i8 noundef zeroext 0) #22
  br label %118

118:                                              ; preds = %114, %116, %12, %7, %43
  %119 = phi i8 [ 1, %43 ], [ 0, %7 ], [ 0, %12 ], [ 1, %116 ], [ 1, %114 ]
  ret i8 %119
}

declare void @pp_base_string(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @decl_debug_expr_lookup(ptr noundef) local_unnamed_addr #3

declare i32 @dump_generic_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @target_reinit() local_unnamed_addr #9 !prof !120 {
  tail call fastcc void @backend_init_target()
  tail call fastcc void @lang_dependent_init_target()
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @backend_init_target() unnamed_addr #9 !prof !156 !PGOFuncName !239 {
  %1 = load i32, ptr @align_loops, align 4, !tbaa !136
  %2 = icmp slt i32 %1, 1
  br i1 %2, label %3, label %4, !prof !159

3:                                                ; preds = %0
  store i32 1, ptr @align_loops, align 4, !tbaa !136
  br label %4

4:                                                ; preds = %3, %0
  %5 = load i32, ptr @align_loops_max_skip, align 4, !tbaa !136
  %6 = load i32, ptr @align_loops, align 4, !tbaa !136
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %8, label %10, !prof !159

8:                                                ; preds = %4
  %9 = add nsw i32 %6, -1
  store i32 %9, ptr @align_loops_max_skip, align 4, !tbaa !136
  br label %10

10:                                               ; preds = %8, %4
  %11 = shl nsw i32 %6, 1
  %12 = add nsw i32 %11, -1
  %13 = sext i32 %12 to i64
  %14 = tail call i32 @floor_log2(i64 noundef %13)
  store i32 %14, ptr @align_loops_log, align 4, !tbaa !136
  %15 = load i32, ptr @align_jumps, align 4, !tbaa !136
  %16 = icmp slt i32 %15, 1
  br i1 %16, label %17, label %18, !prof !159

17:                                               ; preds = %10
  store i32 1, ptr @align_jumps, align 4, !tbaa !136
  br label %18

18:                                               ; preds = %17, %10
  %19 = load i32, ptr @align_jumps_max_skip, align 4, !tbaa !136
  %20 = load i32, ptr @align_jumps, align 4, !tbaa !136
  %21 = icmp sgt i32 %19, %20
  br i1 %21, label %22, label %24, !prof !159

22:                                               ; preds = %18
  %23 = add nsw i32 %20, -1
  store i32 %23, ptr @align_jumps_max_skip, align 4, !tbaa !136
  br label %24

24:                                               ; preds = %22, %18
  %25 = shl nsw i32 %20, 1
  %26 = add nsw i32 %25, -1
  %27 = sext i32 %26 to i64
  %28 = tail call i32 @floor_log2(i64 noundef %27)
  store i32 %28, ptr @align_jumps_log, align 4, !tbaa !136
  %29 = load i32, ptr @align_labels, align 4, !tbaa !136
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %31, label %32, !prof !162

31:                                               ; preds = %24
  store i32 1, ptr @align_labels, align 4, !tbaa !136
  br label %32

32:                                               ; preds = %31, %24
  %33 = load i32, ptr @align_labels, align 4, !tbaa !136
  %34 = shl nsw i32 %33, 1
  %35 = add nsw i32 %34, -1
  %36 = sext i32 %35 to i64
  %37 = tail call i32 @floor_log2(i64 noundef %36)
  store i32 %37, ptr @align_labels_log, align 4, !tbaa !136
  %38 = load i32, ptr @align_labels_max_skip, align 4, !tbaa !136
  %39 = icmp sgt i32 %38, %33
  br i1 %39, label %40, label %42, !prof !159

40:                                               ; preds = %32
  %41 = add nsw i32 %33, -1
  store i32 %41, ptr @align_labels_max_skip, align 4, !tbaa !136
  br label %42

42:                                               ; preds = %40, %32
  %43 = load i32, ptr @align_functions, align 4, !tbaa !136
  %44 = icmp slt i32 %43, 1
  br i1 %44, label %45, label %46, !prof !159

45:                                               ; preds = %42
  store i32 1, ptr @align_functions, align 4, !tbaa !136
  br label %46

46:                                               ; preds = %42, %45
  %47 = load i32, ptr @align_functions, align 4, !tbaa !136
  %48 = shl nsw i32 %47, 1
  %49 = add nsw i32 %48, -1
  %50 = sext i32 %49 to i64
  %51 = tail call i32 @floor_log2(i64 noundef %50)
  store i32 %51, ptr @align_functions_log, align 4, !tbaa !136
  tail call void @init_emit_regs() #22
  tail call void @init_regs() #22
  tail call void @init_fake_stack_mems() #22
  tail call void @init_alias_target() #22
  tail call void @init_reload() #22
  tail call void @init_dummy_function_start() #22
  tail call void @init_expmed() #22
  store i8 0, ptr @caller_save_initialized_p, align 1, !tbaa !132
  tail call void @expand_dummy_function_end() #22
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @lang_dependent_init_target() unnamed_addr #9 !prof !156 !PGOFuncName !240 {
  %1 = load i32, ptr @flag_excess_precision_cmdline, align 4, !tbaa !136
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4, !prof !159

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.39, i32 noundef 2227, ptr noundef nonnull @.str.40) #22
  br label %4

4:                                                ; preds = %3, %0
  %5 = load i32, ptr @flag_excess_precision_cmdline, align 4, !tbaa !136
  store i32 %5, ptr @flag_excess_precision, align 4, !tbaa !136
  %6 = load i32, ptr @flag_unsafe_math_optimizations, align 4, !tbaa !136
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 %5, i32 1, !prof !162
  store i32 %8, ptr @flag_excess_precision, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %15, !prof !159

10:                                               ; preds = %4
  %11 = load i32, ptr @ix86_fpmath, align 4, !tbaa !136
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  store i32 1, ptr @flag_excess_precision, align 4, !tbaa !136
  br label %15

15:                                               ; preds = %4, %10, %14
  tail call void @init_optabs() #22
  tail call void @init_dummy_function_start() #22
  tail call void @init_expr_target() #22
  tail call void @init_set_costs() #22
  tail call void @ira_init() #22
  tail call void @expand_dummy_function_end() #22
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_memory_report(i8 noundef zeroext %0) local_unnamed_addr #9 !prof !120 {
  tail call void @ggc_print_statistics() #22
  tail call void @stringpool_statistics() #22
  tail call void @dump_tree_statistics() #22
  tail call void @dump_gimple_statistics() #22
  tail call void @dump_rtx_statistics() #22
  tail call void @dump_varray_statistics() #22
  tail call void @dump_alloc_pool_statistics() #22
  tail call void @dump_bitmap_statistics() #22
  tail call void @dump_vec_loc_statistics() #22
  tail call void @dump_ggc_loc_statistics(i8 noundef zeroext %0) #22
  %2 = load ptr, ptr @stderr, align 8, !tbaa !121
  tail call void @dump_alias_stats(ptr noundef %2) #22
  %3 = load ptr, ptr @stderr, align 8, !tbaa !121
  tail call void @dump_pta_stats(ptr noundef %3) #22
  ret void
}

declare void @ggc_print_statistics() local_unnamed_addr #3

declare void @stringpool_statistics() local_unnamed_addr #3

declare void @dump_tree_statistics() local_unnamed_addr #3

declare void @dump_gimple_statistics() local_unnamed_addr #3

declare void @dump_rtx_statistics() local_unnamed_addr #3

declare void @dump_varray_statistics() local_unnamed_addr #3

declare void @dump_alloc_pool_statistics() local_unnamed_addr #3

declare void @dump_bitmap_statistics() local_unnamed_addr #3

declare void @dump_vec_loc_statistics() local_unnamed_addr #3

declare void @dump_ggc_loc_statistics(i8 noundef zeroext) local_unnamed_addr #3

declare void @dump_alias_stats(ptr noundef) local_unnamed_addr #3

declare void @dump_pta_stats(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @toplev_main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !156 {
  %3 = alloca %struct.timeval, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store i32 %0, ptr %4, align 4, !tbaa !136
  store ptr %1, ptr %5, align 8, !tbaa !121
  call void @expandargv(ptr noundef nonnull %4, ptr noundef nonnull %5) #22
  %6 = load ptr, ptr %5, align 8, !tbaa !121
  store ptr %6, ptr @save_argv, align 8, !tbaa !121
  %7 = load ptr, ptr %6, align 8, !tbaa !121
  %8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7)
  %9 = getelementptr inbounds i8, ptr %7, i64 %8
  br label %10

10:                                               ; preds = %13, %2
  %11 = phi ptr [ %9, %2 ], [ %14, %13 ]
  %12 = icmp eq ptr %11, %7
  br i1 %12, label %17, label %13, !prof !241

13:                                               ; preds = %10
  %14 = getelementptr inbounds i8, ptr %11, i64 -1
  %15 = load i8, ptr %14, align 1, !tbaa !132
  %16 = icmp eq i8 %15, 47
  br i1 %16, label %17, label %10, !prof !242, !llvm.loop !243

17:                                               ; preds = %13, %10
  %18 = phi ptr [ %11, %13 ], [ %7, %10 ]
  store ptr %18, ptr @progname, align 8, !tbaa !121
  call void @xmalloc_set_program_name(ptr noundef %18) #22
  call void @hex_init() #22
  call void @unlock_std_streams() #22
  %19 = load ptr, ptr @global_dc, align 8, !tbaa !121
  call void @diagnostic_initialize(ptr noundef %19) #22
  %20 = load ptr, ptr @global_dc, align 8, !tbaa !121
  %21 = load ptr, ptr %20, align 8, !tbaa !150
  %22 = getelementptr inbounds %struct.pretty_print_info, ptr %21, i64 0, i32 6
  store ptr @default_tree_printer, ptr %22, align 8, !tbaa !244
  %23 = call ptr @signal(i32 noundef 11, ptr noundef nonnull @crash_signal) #22
  %24 = call ptr @signal(i32 noundef 4, ptr noundef nonnull @crash_signal) #22
  %25 = call ptr @signal(i32 noundef 7, ptr noundef nonnull @crash_signal) #22
  %26 = call ptr @signal(i32 noundef 6, ptr noundef nonnull @crash_signal) #22
  %27 = call ptr @signal(i32 noundef 8, ptr noundef nonnull @crash_signal) #22
  %28 = load ptr, ptr @host_hooks, align 8, !tbaa !245
  call void %28() #22, !prof !247
  call void @init_ggc() #22
  call void @init_stringpool() #22
  %29 = call ptr @ggc_alloc_stat(i64 noundef 56) #22
  store ptr %29, ptr @line_table, align 8, !tbaa !121
  call void @linemap_init(ptr noundef %29) #22
  %30 = load ptr, ptr @line_table, align 8, !tbaa !121
  %31 = getelementptr inbounds %struct.line_maps, ptr %30, i64 0, i32 10
  store ptr @realloc_for_line_map, ptr %31, align 8, !tbaa !248
  call void @init_ttree() #22
  call void @init_reg_sets() #22
  call void @add_params(ptr noundef nonnull @lang_independent_params, i64 noundef 119) #22
  call void @init_ggc_heuristics() #22
  call void @init_optimization_passes() #22
  call void @statistics_early_init() #22
  %32 = load i32, ptr %4, align 4, !tbaa !136
  %33 = load ptr, ptr %5, align 8, !tbaa !121
  call void @decode_options(i32 noundef %32, ptr noundef %33) #22
  %34 = load ptr, ptr @flag_random_seed, align 8, !tbaa !121
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %45, !prof !162

36:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %37 = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null)
  %38 = load i64, ptr %3, align 8, !tbaa !250
  %39 = mul nsw i64 %38, 1000
  %40 = getelementptr inbounds %struct.timeval, ptr %3, i64 0, i32 1
  %41 = load i64, ptr %40, align 8, !tbaa !252
  %42 = sdiv i64 %41, 1000
  %43 = add nsw i64 %42, %39
  %44 = trunc i64 %43 to i32
  store i32 %44, ptr @local_tick, align 4, !tbaa !136
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  br label %46

45:                                               ; preds = %17
  store i32 -1, ptr @local_tick, align 4, !tbaa !136
  br label %46

46:                                               ; preds = %36, %45
  call void @initialize_plugins() #22
  %47 = load i32, ptr @version_flag, align 4, !tbaa !136
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49, !prof !162

49:                                               ; preds = %46
  %50 = load ptr, ptr @stderr, align 8, !tbaa !121
  %51 = load ptr, ptr @lang_hooks, align 8, !tbaa !211
  %52 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @print_version.fmt1, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.29, ptr noundef %51, ptr noundef nonnull @pkgversion_string, ptr noundef nonnull @version_string, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #23
  br label %53

53:                                               ; preds = %49, %46
  %54 = load i32, ptr @help_flag, align 4, !tbaa !136
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56, !prof !162

56:                                               ; preds = %53
  %57 = load ptr, ptr @stderr, align 8, !tbaa !121
  call void @print_plugins_help(ptr noundef %57, ptr noundef nonnull @.str.29) #22
  br label %58

58:                                               ; preds = %56, %53
  %59 = load i8, ptr @exit_after_options, align 1, !tbaa !132
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %1062, !prof !162

61:                                               ; preds = %58
  %62 = load i32, ptr @time_report, align 4, !tbaa !136
  %63 = icmp ne i32 %62, 0
  %64 = load i32, ptr @quiet_flag, align 4
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %63, i1 true, i1 %65, !prof !159
  %67 = load i32, ptr @flag_detailed_statistics, align 4
  %68 = icmp ne i32 %67, 0
  %69 = select i1 %66, i1 true, i1 %68, !prof !159
  br i1 %69, label %70, label %71, !prof !159

70:                                               ; preds = %61
  call void @timevar_init() #22
  br label %71

71:                                               ; preds = %70, %61
  call void @timevar_start(i32 noundef 1) #22
  store ptr @do_nothing_debug_hooks, ptr @debug_hooks, align 8, !tbaa !121
  %72 = load i32, ptr @warn_unused_function, align 4, !tbaa !136
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %76, !prof !162

74:                                               ; preds = %71
  %75 = load i32, ptr @warn_unused, align 4, !tbaa !136
  store i32 %75, ptr @warn_unused_function, align 4, !tbaa !136
  br label %76

76:                                               ; preds = %74, %71
  %77 = load i32, ptr @warn_unused_label, align 4, !tbaa !136
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %79, label %81, !prof !162

79:                                               ; preds = %76
  %80 = load i32, ptr @warn_unused, align 4, !tbaa !136
  store i32 %80, ptr @warn_unused_label, align 4, !tbaa !136
  br label %81

81:                                               ; preds = %79, %76
  %82 = load i32, ptr @warn_unused_parameter, align 4, !tbaa !136
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %91, !prof !162

84:                                               ; preds = %81
  %85 = load i32, ptr @warn_unused, align 4, !tbaa !136
  %86 = icmp ne i32 %85, 0
  %87 = load i32, ptr @extra_warnings, align 4
  %88 = icmp ne i32 %87, 0
  %89 = select i1 %86, i1 %88, i1 false, !prof !159
  %90 = zext i1 %89 to i32
  store i32 %90, ptr @warn_unused_parameter, align 4, !tbaa !136
  br label %91

91:                                               ; preds = %84, %81
  %92 = load i32, ptr @warn_unused_variable, align 4, !tbaa !136
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %96, !prof !162

94:                                               ; preds = %91
  %95 = load i32, ptr @warn_unused, align 4, !tbaa !136
  store i32 %95, ptr @warn_unused_variable, align 4, !tbaa !136
  br label %96

96:                                               ; preds = %94, %91
  %97 = load i32, ptr @warn_unused_value, align 4, !tbaa !136
  %98 = icmp eq i32 %97, -1
  br i1 %98, label %99, label %101, !prof !162

99:                                               ; preds = %96
  %100 = load i32, ptr @warn_unused, align 4, !tbaa !136
  store i32 %100, ptr @warn_unused_value, align 4, !tbaa !136
  br label %101

101:                                              ; preds = %99, %96
  %102 = load i32, ptr @warn_uninitialized, align 4, !tbaa !136
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %106, !prof !162

104:                                              ; preds = %101
  %105 = load i32, ptr @extra_warnings, align 4, !tbaa !136
  store i32 %105, ptr @warn_uninitialized, align 4, !tbaa !136
  br label %106

106:                                              ; preds = %104, %101
  %107 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 8), align 8, !tbaa !253
  %108 = call zeroext i8 %107(ptr noundef nonnull @main_input_filename) #22, !prof !254
  store i8 %108, ptr @no_backend, align 1, !tbaa !132
  call void @override_options(i8 noundef zeroext 1) #22
  %109 = load i32, ptr @flag_compare_debug, align 4, !tbaa !136
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %114, label %111, !prof !162

111:                                              ; preds = %106
  %112 = load ptr, ptr @global_dc, align 8, !tbaa !121
  %113 = getelementptr inbounds %struct.diagnostic_context, ptr %112, i64 0, i32 13
  store i8 1, ptr %113, align 4, !tbaa !255
  br label %114

114:                                              ; preds = %111, %106
  %115 = load i32, ptr @flag_section_anchors, align 4, !tbaa !136
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %128, label %117, !prof !162

117:                                              ; preds = %114
  %118 = load i64, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 43), align 8, !tbaa !256
  %119 = icmp eq i64 %118, 0
  %120 = load i64, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 44), align 8
  %121 = icmp eq i64 %120, 0
  %122 = select i1 %119, i1 %121, i1 false
  %123 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 36), align 8
  %124 = icmp eq ptr %123, null
  %125 = select i1 %122, i1 true, i1 %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %117
  %127 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 592, ptr noundef nonnull @.str.279, ptr noundef nonnull @.str.280) #22
  store i32 0, ptr @flag_section_anchors, align 4, !tbaa !136
  br label %128

128:                                              ; preds = %126, %117, %114
  %129 = load i32, ptr @flag_short_enums, align 4, !tbaa !136
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %131, label %135, !prof !162

131:                                              ; preds = %128
  %132 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 77), align 8, !tbaa !257
  %133 = call zeroext i8 %132() #22, !prof !258
  %134 = zext i8 %133 to i32
  store i32 %134, ptr @flag_short_enums, align 4, !tbaa !136
  br label %135

135:                                              ; preds = %131, %128
  %136 = load ptr, ptr @aux_base_name, align 8, !tbaa !121
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %166, !prof !162

138:                                              ; preds = %135
  %139 = load ptr, ptr @main_input_filename, align 8, !tbaa !121
  %140 = icmp eq ptr %139, null
  br i1 %140, label %164, label %141, !prof !159

141:                                              ; preds = %138
  %142 = call ptr @lbasename(ptr noundef nonnull %139) #22
  %143 = call ptr @xstrdup(ptr noundef %142) #22
  %144 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %143)
  %145 = trunc i64 %144 to i32
  %146 = icmp sgt i32 %145, 2
  br i1 %146, label %147, label %164, !prof !162

147:                                              ; preds = %141
  %148 = and i64 %144, 4294967295
  br label %156

149:                                              ; preds = %156
  %150 = add nsw i32 %145, -3
  %151 = call i32 @llvm.umin.i32(i32 %150, i32 3)
  %152 = add nuw nsw i32 %151, 3
  %153 = zext nneg i32 %152 to i64
  %154 = add nuw nsw i64 %157, 1
  %155 = icmp eq i64 %154, %153
  br i1 %155, label %164, label %156, !prof !159, !llvm.loop !174

156:                                              ; preds = %147, %149
  %157 = phi i64 [ 2, %147 ], [ %154, %149 ]
  %158 = sub nsw i64 %148, %157
  %159 = getelementptr inbounds i8, ptr %143, i64 %158
  %160 = load i8, ptr %159, align 1, !tbaa !132
  %161 = icmp eq i8 %160, 46
  br i1 %161, label %162, label %149, !prof !162

162:                                              ; preds = %156
  %163 = getelementptr inbounds i8, ptr %143, i64 %158
  store i8 0, ptr %163, align 1, !tbaa !132
  br label %164

164:                                              ; preds = %149, %138, %162, %141
  %165 = phi ptr [ %143, %141 ], [ %143, %162 ], [ @.str.281, %138 ], [ %143, %149 ]
  store ptr %165, ptr @aux_base_name, align 8, !tbaa !121
  br label %166

166:                                              ; preds = %164, %135
  %167 = load i32, ptr @flag_graphite, align 4, !tbaa !136
  %168 = icmp ne i32 %167, 0
  %169 = load i32, ptr @flag_loop_block, align 4
  %170 = icmp ne i32 %169, 0
  %171 = select i1 %168, i1 true, i1 %170, !prof !159
  %172 = load i32, ptr @flag_loop_interchange, align 4
  %173 = icmp ne i32 %172, 0
  %174 = select i1 %171, i1 true, i1 %173, !prof !159
  %175 = load i32, ptr @flag_loop_strip_mine, align 4
  %176 = icmp ne i32 %175, 0
  %177 = select i1 %174, i1 true, i1 %176, !prof !159
  %178 = load i32, ptr @flag_graphite_identity, align 4
  %179 = icmp ne i32 %178, 0
  %180 = select i1 %177, i1 true, i1 %179, !prof !159
  %181 = load i32, ptr @flag_loop_parallelize_all, align 4
  %182 = icmp ne i32 %181, 0
  %183 = select i1 %180, i1 true, i1 %182, !prof !159
  br i1 %183, label %184, label %185, !prof !159

184:                                              ; preds = %166
  call void (ptr, ...) @sorry(ptr noundef nonnull @.str.282) #22
  br label %185

185:                                              ; preds = %184, %166
  %186 = load i32, ptr @flag_unroll_all_loops, align 4, !tbaa !136
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %189, label %188, !prof !162

188:                                              ; preds = %185
  store i32 1, ptr @flag_unroll_loops, align 4, !tbaa !136
  br label %189

189:                                              ; preds = %188, %185
  %190 = load i32, ptr @flag_rerun_cse_after_loop, align 4, !tbaa !136
  %191 = icmp eq i32 %190, 2
  br i1 %191, label %192, label %199, !prof !159

192:                                              ; preds = %189
  %193 = load i32, ptr @flag_unroll_loops, align 4, !tbaa !136
  %194 = icmp ne i32 %193, 0
  %195 = load i32, ptr @flag_peel_loops, align 4
  %196 = icmp ne i32 %195, 0
  %197 = select i1 %194, i1 true, i1 %196
  %198 = zext i1 %197 to i32
  store i32 %198, ptr @flag_rerun_cse_after_loop, align 4, !tbaa !136
  br label %199

199:                                              ; preds = %192, %189
  %200 = load i32, ptr @flag_web, align 4, !tbaa !136
  %201 = icmp eq i32 %200, 2
  br i1 %201, label %202, label %209, !prof !162

202:                                              ; preds = %199
  %203 = load i32, ptr @flag_unroll_loops, align 4, !tbaa !136
  %204 = icmp ne i32 %203, 0
  %205 = load i32, ptr @flag_peel_loops, align 4
  %206 = icmp ne i32 %205, 0
  %207 = select i1 %204, i1 true, i1 %206, !prof !159
  %208 = zext i1 %207 to i32
  store i32 %208, ptr @flag_web, align 4, !tbaa !136
  br label %209

209:                                              ; preds = %202, %199
  %210 = load i32, ptr @flag_rename_registers, align 4, !tbaa !136
  %211 = icmp eq i32 %210, 2
  br i1 %211, label %212, label %219, !prof !162

212:                                              ; preds = %209
  %213 = load i32, ptr @flag_unroll_loops, align 4, !tbaa !136
  %214 = icmp ne i32 %213, 0
  %215 = load i32, ptr @flag_peel_loops, align 4
  %216 = icmp ne i32 %215, 0
  %217 = select i1 %214, i1 true, i1 %216, !prof !159
  %218 = zext i1 %217 to i32
  store i32 %218, ptr @flag_rename_registers, align 4, !tbaa !136
  br label %219

219:                                              ; preds = %212, %209
  %220 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !136
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %223, label %222, !prof !162

222:                                              ; preds = %219
  store i32 1, ptr @flag_asynchronous_unwind_tables, align 4, !tbaa !136
  br label %223

223:                                              ; preds = %222, %219
  %224 = load i32, ptr @flag_asynchronous_unwind_tables, align 4, !tbaa !136
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %227, label %226, !prof !162

226:                                              ; preds = %223
  store i32 1, ptr @flag_unwind_tables, align 4, !tbaa !136
  br label %227

227:                                              ; preds = %226, %223
  %228 = load i32, ptr @flag_value_profile_transformations, align 4, !tbaa !136
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %231, label %230, !prof !162

230:                                              ; preds = %227
  store i32 1, ptr @flag_profile_values, align 4, !tbaa !136
  br label %231

231:                                              ; preds = %230, %227
  %232 = load i32, ptr @flag_delayed_branch, align 4, !tbaa !136
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %236, label %234, !prof !162

234:                                              ; preds = %231
  %235 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.283) #22
  br label %236

236:                                              ; preds = %234, %231
  store ptr @.str.29, ptr @user_label_prefix, align 8, !tbaa !121
  %237 = load i32, ptr @flag_leading_underscore, align 4, !tbaa !136
  %238 = icmp eq i32 %237, -1
  br i1 %238, label %242, label %239, !prof !162

239:                                              ; preds = %236
  %240 = icmp eq i32 %237, 0
  %241 = select i1 %240, ptr @.str.29, ptr @.str.284
  store ptr %241, ptr @user_label_prefix, align 8, !tbaa !121
  br label %242

242:                                              ; preds = %239, %236
  %243 = load i32, ptr @version_flag, align 4, !tbaa !136
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %375, label %245, !prof !162

245:                                              ; preds = %242
  %246 = load ptr, ptr @stderr, align 8, !tbaa !121
  %247 = load ptr, ptr @lang_hooks, align 8, !tbaa !211
  %248 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %246, ptr noundef nonnull @print_version.fmt1, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.29, ptr noundef %247, ptr noundef nonnull @pkgversion_string, ptr noundef nonnull @version_string, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #23
  %249 = load i32, ptr @quiet_flag, align 4, !tbaa !136
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %375

251:                                              ; preds = %245
  %252 = load ptr, ptr @flag_random_seed, align 8, !tbaa !121
  %253 = icmp eq ptr %252, null
  br i1 %253, label %254, label %260

254:                                              ; preds = %251
  %255 = load i32, ptr @local_tick, align 4, !tbaa !136
  %256 = call i32 @getpid() #22
  %257 = xor i32 %256, %255
  %258 = zext i32 %257 to i64
  %259 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @init_random_seed.random_seed, ptr noundef nonnull dereferenceable(1) @.str.34, i64 noundef %258)
  store ptr @init_random_seed.random_seed, ptr @flag_random_seed, align 8, !tbaa !121
  br label %260

260:                                              ; preds = %254, %251
  %261 = load ptr, ptr @stderr, align 8, !tbaa !121
  %262 = call i64 @fwrite(ptr nonnull @.str.302, i64 16, i64 1, ptr %261) #23
  %263 = load ptr, ptr @save_argv, align 8, !tbaa !121
  %264 = getelementptr inbounds ptr, ptr %263, i64 1
  %265 = load ptr, ptr %264, align 8, !tbaa !121
  %266 = icmp eq ptr %265, null
  br i1 %266, label %325, label %267

267:                                              ; preds = %260, %319
  %268 = phi ptr [ %323, %319 ], [ %265, %260 ]
  %269 = phi ptr [ %322, %319 ], [ %264, %260 ]
  %270 = phi ptr [ %321, %319 ], [ %263, %260 ]
  %271 = phi i32 [ %320, %319 ], [ 17, %260 ]
  %272 = load i8, ptr %268, align 1, !tbaa !132
  %273 = icmp eq i8 %272, 45
  br i1 %273, label %274, label %301

274:                                              ; preds = %267
  %275 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %268, ptr noundef nonnull dereferenceable(3) @.str.303)
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %286, label %277

277:                                              ; preds = %274
  %278 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %268, ptr noundef nonnull dereferenceable(10) @.str.304)
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %286, label %280

280:                                              ; preds = %277
  %281 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %268, ptr noundef nonnull dereferenceable(9) @.str.305)
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %286, label %283

283:                                              ; preds = %280
  %284 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %268, ptr noundef nonnull dereferenceable(9) @.str.306)
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %291

286:                                              ; preds = %283, %280, %277, %274
  %287 = getelementptr inbounds ptr, ptr %270, i64 2
  %288 = load ptr, ptr %287, align 8, !tbaa !121
  %289 = icmp eq ptr %288, null
  %290 = select i1 %289, ptr %269, ptr %287
  br label %319

291:                                              ; preds = %283
  %292 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %268, ptr noundef nonnull dereferenceable(7) @.str.307)
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %319, label %294

294:                                              ; preds = %291
  %295 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %268, ptr noundef nonnull dereferenceable(9) @.str.308)
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %319, label %297

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %268, i64 1
  %299 = load i8, ptr %298, align 1, !tbaa !132
  %300 = icmp eq i8 %299, 100
  br i1 %300, label %319, label %301

301:                                              ; preds = %297, %267
  %302 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %268)
  %303 = trunc i64 %302 to i32
  %304 = add i32 %303, 1
  %305 = icmp eq i32 %271, 0
  br i1 %305, label %312, label %306

306:                                              ; preds = %301
  %307 = add nsw i32 %304, %271
  %308 = icmp sgt i32 %307, 75
  br i1 %308, label %309, label %312

309:                                              ; preds = %306
  %310 = load ptr, ptr @stderr, align 8, !tbaa !121
  %311 = call i32 @putc(i32 noundef 10, ptr noundef %310)
  br label %312

312:                                              ; preds = %309, %306, %301
  %313 = phi i32 [ 0, %309 ], [ %271, %306 ], [ 0, %301 ]
  %314 = load ptr, ptr @stderr, align 8, !tbaa !121
  %315 = call i32 @fputc(i32 noundef 32, ptr noundef %314)
  %316 = load ptr, ptr @stderr, align 8, !tbaa !121
  %317 = call i32 @fputs(ptr noundef nonnull %268, ptr noundef %316) #23
  %318 = add nsw i32 %313, %304
  br label %319

319:                                              ; preds = %312, %297, %294, %291, %286
  %320 = phi i32 [ %271, %291 ], [ %271, %294 ], [ %271, %297 ], [ %318, %312 ], [ %271, %286 ]
  %321 = phi ptr [ %269, %291 ], [ %269, %294 ], [ %269, %297 ], [ %269, %312 ], [ %290, %286 ]
  %322 = getelementptr inbounds ptr, ptr %321, i64 1
  %323 = load ptr, ptr %322, align 8, !tbaa !121
  %324 = icmp eq ptr %323, null
  br i1 %324, label %325, label %267, !llvm.loop !259

325:                                              ; preds = %319, %260
  %326 = phi i32 [ 17, %260 ], [ %320, %319 ]
  %327 = icmp sgt i32 %326, 0
  br i1 %327, label %328, label %331

328:                                              ; preds = %325
  %329 = load ptr, ptr @stderr, align 8, !tbaa !121
  %330 = call i32 @putc(i32 noundef 10, ptr noundef %329)
  br label %331

331:                                              ; preds = %328, %325
  %332 = load ptr, ptr @stderr, align 8, !tbaa !121
  %333 = call i64 @fwrite(ptr nonnull @.str.309, i64 17, i64 1, ptr %332) #23
  %334 = load i32, ptr @cl_options_count, align 4, !tbaa !136
  %335 = zext i32 %334 to i64
  %336 = icmp eq i32 %334, 0
  br i1 %336, label %372, label %337

337:                                              ; preds = %331, %368
  %338 = phi i64 [ %370, %368 ], [ 0, %331 ]
  %339 = phi i32 [ %369, %368 ], [ 18, %331 ]
  %340 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %338
  %341 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %338, i32 5
  %342 = load i32, ptr %341, align 8, !tbaa !225
  %343 = and i32 %342, 16777216
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %368, label %345

345:                                              ; preds = %337
  %346 = trunc i64 %338 to i32
  %347 = call i32 @option_enabled(i32 noundef %346) #22
  %348 = icmp sgt i32 %347, 0
  br i1 %348, label %349, label %368

349:                                              ; preds = %345
  %350 = load ptr, ptr %340, align 8, !tbaa !233
  %351 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %350)
  %352 = trunc i64 %351 to i32
  %353 = add i32 %352, 1
  %354 = icmp eq i32 %339, 0
  br i1 %354, label %361, label %355

355:                                              ; preds = %349
  %356 = add nsw i32 %353, %339
  %357 = icmp sgt i32 %356, 75
  br i1 %357, label %358, label %361

358:                                              ; preds = %355
  %359 = load ptr, ptr @stderr, align 8, !tbaa !121
  %360 = call i32 @putc(i32 noundef 10, ptr noundef %359)
  br label %361

361:                                              ; preds = %358, %355, %349
  %362 = phi i32 [ 0, %358 ], [ %339, %355 ], [ 0, %349 ]
  %363 = load ptr, ptr @stderr, align 8, !tbaa !121
  %364 = call i32 @fputc(i32 noundef 32, ptr noundef %363)
  %365 = load ptr, ptr @stderr, align 8, !tbaa !121
  %366 = call i32 @fputs(ptr noundef %350, ptr noundef %365) #23
  %367 = add nsw i32 %362, %353
  br label %368

368:                                              ; preds = %361, %345, %337
  %369 = phi i32 [ %367, %361 ], [ %339, %345 ], [ %339, %337 ]
  %370 = add nuw nsw i64 %338, 1
  %371 = icmp eq i64 %370, %335
  br i1 %371, label %372, label %337, !llvm.loop !260

372:                                              ; preds = %368, %331
  %373 = load ptr, ptr @stderr, align 8, !tbaa !121
  %374 = call i32 @putc(i32 noundef 10, ptr noundef %373)
  br label %375

375:                                              ; preds = %372, %245, %242
  %376 = load i32, ptr @flag_syntax_only, align 4
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %379, label %378, !prof !162

378:                                              ; preds = %375
  store i32 0, ptr @write_symbols, align 4, !tbaa !136
  store i32 0, ptr @profile_flag, align 4, !tbaa !136
  br label %379

379:                                              ; preds = %378, %375
  %380 = load i32, ptr @flag_gtoggle, align 4, !tbaa !136
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %390, label %382, !prof !162

382:                                              ; preds = %379
  %383 = load i32, ptr @debug_info_level, align 4, !tbaa !136
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %389

385:                                              ; preds = %382
  store i32 2, ptr @debug_info_level, align 4, !tbaa !136
  %386 = load i32, ptr @write_symbols, align 4, !tbaa !136
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %390

388:                                              ; preds = %385
  store i32 3, ptr @write_symbols, align 4, !tbaa !136
  br label %390

389:                                              ; preds = %382
  store i32 0, ptr @debug_info_level, align 4, !tbaa !136
  br label %390

390:                                              ; preds = %389, %388, %385, %379
  %391 = load ptr, ptr @flag_dump_final_insns, align 8, !tbaa !121
  %392 = icmp eq ptr %391, null
  %393 = icmp ne i32 %376, 0
  %394 = or i1 %393, %392
  %395 = load i8, ptr @no_backend, align 1
  %396 = icmp ne i8 %395, 0
  %397 = select i1 %394, i1 true, i1 %396, !prof !162
  br i1 %397, label %410, label %398, !prof !162

398:                                              ; preds = %390
  %399 = call ptr @fopen_unlocked(ptr noundef %391, ptr noundef nonnull @.str.287) #22
  %400 = icmp eq ptr %399, null
  br i1 %400, label %404, label %401

401:                                              ; preds = %398
  %402 = call i32 @fclose(ptr noundef nonnull %399)
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %410, label %404

404:                                              ; preds = %401, %398
  %405 = phi ptr [ @.str.288, %398 ], [ @.str.289, %401 ]
  %406 = load ptr, ptr @flag_dump_final_insns, align 8, !tbaa !121
  %407 = call ptr @__errno_location() #22
  %408 = load i32, ptr %407, align 4, !tbaa !136
  %409 = call ptr @strerror(i32 noundef %408) #22
  call void (ptr, ...) @error(ptr noundef nonnull %405, ptr noundef %406, ptr noundef %409) #22
  store ptr null, ptr @flag_dump_final_insns, align 8, !tbaa !121
  br label %410

410:                                              ; preds = %404, %401, %390
  %411 = load i32, ptr @dwarf_strict, align 4, !tbaa !136
  %412 = icmp slt i32 %411, 0
  br i1 %412, label %413, label %414, !prof !162

413:                                              ; preds = %410
  store i32 0, ptr @dwarf_strict, align 4, !tbaa !136
  br label %414

414:                                              ; preds = %413, %410
  %415 = load i32, ptr @debug_info_level, align 4, !tbaa !136
  %416 = icmp eq i32 %415, 0
  br i1 %416, label %417, label %418, !prof !162

417:                                              ; preds = %414
  store i32 0, ptr @write_symbols, align 4, !tbaa !136
  br label %418

418:                                              ; preds = %417, %414
  %419 = load i32, ptr @write_symbols, align 4, !tbaa !136
  switch i32 %419, label %422 [
    i32 0, label %426
    i32 1, label %420
    i32 3, label %421
  ], !prof !261

420:                                              ; preds = %418
  store ptr @dbx_debug_hooks, ptr @debug_hooks, align 8, !tbaa !121
  br label %426

421:                                              ; preds = %418
  store ptr @dwarf2_debug_hooks, ptr @debug_hooks, align 8, !tbaa !121
  br label %426

422:                                              ; preds = %418
  %423 = zext i32 %419 to i64
  %424 = getelementptr inbounds [6 x ptr], ptr @debug_type_names, i64 0, i64 %423
  %425 = load ptr, ptr %424, align 8, !tbaa !121
  call void (ptr, ...) @error(ptr noundef nonnull @.str.290, ptr noundef %425) #22
  br label %426

426:                                              ; preds = %422, %421, %420, %418
  %427 = load i32, ptr @debug_info_level, align 4, !tbaa !136
  %428 = icmp ult i32 %427, 2
  br i1 %428, label %435, label %429, !prof !162

429:                                              ; preds = %426
  %430 = load ptr, ptr @debug_hooks, align 8, !tbaa !121
  %431 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %430, i64 0, i32 24
  %432 = load ptr, ptr %431, align 8, !tbaa !262
  %433 = load ptr, ptr getelementptr inbounds (%struct.gcc_debug_hooks, ptr @do_nothing_debug_hooks, i64 0, i32 24), align 8, !tbaa !262
  %434 = icmp eq ptr %432, %433
  br i1 %434, label %435, label %445

435:                                              ; preds = %429, %426
  %436 = load i32, ptr @flag_var_tracking, align 4, !tbaa !136
  %437 = icmp eq i32 %436, 1
  %438 = load i32, ptr @flag_var_tracking_uninit, align 4
  %439 = icmp eq i32 %438, 1
  %440 = select i1 %437, i1 true, i1 %439, !prof !159
  br i1 %440, label %441, label %444, !prof !159

441:                                              ; preds = %435
  %442 = select i1 %428, ptr @.str.291, ptr @.str.292
  %443 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull %442) #22
  br label %444

444:                                              ; preds = %441, %435
  store i32 0, ptr @flag_var_tracking, align 4, !tbaa !136
  store i32 0, ptr @flag_var_tracking_uninit, align 4, !tbaa !136
  br label %445

445:                                              ; preds = %444, %429
  %446 = load i32, ptr @flag_var_tracking_uninit, align 4, !tbaa !136
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %449, label %448, !prof !162

448:                                              ; preds = %445
  store i32 1, ptr @flag_var_tracking, align 4, !tbaa !136
  br label %449

449:                                              ; preds = %448, %445
  %450 = load i32, ptr @flag_var_tracking, align 4, !tbaa !136
  %451 = icmp eq i32 %450, 2
  br i1 %451, label %452, label %456, !prof !159

452:                                              ; preds = %449
  %453 = load i32, ptr @optimize, align 4, !tbaa !136
  %454 = icmp sgt i32 %453, 0
  %455 = zext i1 %454 to i32
  store i32 %455, ptr @flag_var_tracking, align 4, !tbaa !136
  br label %456

456:                                              ; preds = %452, %449
  %457 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !136
  %458 = icmp eq i32 %457, 2
  br i1 %458, label %459, label %471, !prof !162

459:                                              ; preds = %456
  %460 = load i32, ptr @flag_var_tracking, align 4, !tbaa !136
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %468, label %462, !prof !162

462:                                              ; preds = %459
  %463 = load i32, ptr @flag_selective_scheduling, align 4, !tbaa !136
  %464 = icmp eq i32 %463, 0
  %465 = load i32, ptr @flag_selective_scheduling2, align 4
  %466 = icmp eq i32 %465, 0
  %467 = select i1 %464, i1 %466, i1 false
  br label %468

468:                                              ; preds = %462, %459
  %469 = phi i1 [ false, %459 ], [ %467, %462 ]
  %470 = zext i1 %469 to i32
  store i32 %470, ptr @flag_var_tracking_assignments, align 4, !tbaa !136
  br label %471

471:                                              ; preds = %468, %456
  %472 = load i32, ptr @flag_var_tracking_assignments_toggle, align 4, !tbaa !136
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %478, label %474, !prof !162

474:                                              ; preds = %471
  %475 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !136
  %476 = icmp eq i32 %475, 0
  %477 = zext i1 %476 to i32
  store i32 %477, ptr @flag_var_tracking_assignments, align 4, !tbaa !136
  br label %478

478:                                              ; preds = %474, %471
  %479 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !136
  %480 = icmp eq i32 %479, 0
  %481 = load i32, ptr @flag_var_tracking, align 4
  %482 = icmp ne i32 %481, 0
  %483 = select i1 %480, i1 true, i1 %482, !prof !162
  br i1 %483, label %485, label %484, !prof !162

484:                                              ; preds = %478
  store i32 -1, ptr @flag_var_tracking_assignments, align 4, !tbaa !136
  store i32 -1, ptr @flag_var_tracking, align 4, !tbaa !136
  br label %485

485:                                              ; preds = %484, %478
  %486 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !136
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %496, label %488, !prof !162

488:                                              ; preds = %485
  %489 = load i32, ptr @flag_selective_scheduling, align 4, !tbaa !136
  %490 = icmp ne i32 %489, 0
  %491 = load i32, ptr @flag_selective_scheduling2, align 4
  %492 = icmp ne i32 %491, 0
  %493 = select i1 %490, i1 true, i1 %492
  br i1 %493, label %494, label %496

494:                                              ; preds = %488
  %495 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.293) #22
  br label %496

496:                                              ; preds = %494, %488, %485
  %497 = load i32, ptr @flag_tree_cselim, align 4, !tbaa !136
  %498 = icmp eq i32 %497, 2
  br i1 %498, label %499, label %500, !prof !162

499:                                              ; preds = %496
  store i32 1, ptr @flag_tree_cselim, align 4, !tbaa !136
  br label %500

500:                                              ; preds = %499, %496
  %501 = load i32, ptr @flag_gen_aux_info, align 4, !tbaa !136
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %509, label %503, !prof !162

503:                                              ; preds = %500
  %504 = load ptr, ptr @aux_info_file_name, align 8, !tbaa !121
  %505 = call ptr @fopen_unlocked(ptr noundef %504, ptr noundef nonnull @.str.287) #22
  store ptr %505, ptr @aux_info_file, align 8, !tbaa !121
  %506 = icmp eq ptr %505, null
  br i1 %506, label %507, label %509

507:                                              ; preds = %503
  %508 = load ptr, ptr @aux_info_file_name, align 8, !tbaa !121
  call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.294, ptr noundef %508) #22
  br label %509

509:                                              ; preds = %507, %503, %500
  %510 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 110), align 1, !tbaa !263
  %511 = icmp eq i8 %510, 0
  br i1 %511, label %512, label %522, !prof !159

512:                                              ; preds = %509
  %513 = load i32, ptr @flag_function_sections, align 4, !tbaa !136
  %514 = icmp eq i32 %513, 0
  br i1 %514, label %517, label %515

515:                                              ; preds = %512
  %516 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.295) #22
  store i32 0, ptr @flag_function_sections, align 4, !tbaa !136
  br label %517

517:                                              ; preds = %515, %512
  %518 = load i32, ptr @flag_data_sections, align 4, !tbaa !136
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %522, label %520

520:                                              ; preds = %517
  %521 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.296) #22
  store i32 0, ptr @flag_data_sections, align 4, !tbaa !136
  br label %522

522:                                              ; preds = %520, %517, %509
  %523 = load i32, ptr @flag_function_sections, align 4, !tbaa !136
  %524 = icmp ne i32 %523, 0
  %525 = load i32, ptr @profile_flag, align 4
  %526 = icmp ne i32 %525, 0
  %527 = select i1 %524, i1 %526, i1 false, !prof !159
  br i1 %527, label %528, label %530, !prof !159

528:                                              ; preds = %522
  %529 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.297) #22
  store i32 0, ptr @flag_function_sections, align 4, !tbaa !136
  br label %530

530:                                              ; preds = %528, %522
  %531 = load i32, ptr @flag_prefetch_loop_arrays, align 4, !tbaa !136
  %532 = icmp eq i32 %531, 0
  %533 = load i32, ptr @x86_prefetch_sse, align 4
  %534 = icmp ne i32 %533, 0
  %535 = select i1 %532, i1 true, i1 %534, !prof !162
  br i1 %535, label %542, label %536, !prof !162

536:                                              ; preds = %530
  %537 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !136
  %538 = and i32 %537, 1
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %540, label %542

540:                                              ; preds = %536
  %541 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.298) #22
  store i32 0, ptr @flag_prefetch_loop_arrays, align 4, !tbaa !136
  br label %542

542:                                              ; preds = %540, %536, %530
  %543 = load i32, ptr @flag_prefetch_loop_arrays, align 4, !tbaa !136
  %544 = icmp ne i32 %543, 0
  %545 = load i32, ptr @optimize_size, align 4
  %546 = icmp ne i32 %545, 0
  %547 = select i1 %544, i1 %546, i1 false, !prof !159
  br i1 %547, label %548, label %550, !prof !159

548:                                              ; preds = %542
  %549 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.299) #22
  store i32 0, ptr @flag_prefetch_loop_arrays, align 4, !tbaa !136
  br label %550

550:                                              ; preds = %548, %542
  %551 = load i32, ptr @flag_signaling_nans, align 4, !tbaa !136
  %552 = icmp eq i32 %551, 0
  br i1 %552, label %554, label %553, !prof !162

553:                                              ; preds = %550
  store i32 1, ptr @flag_trapping_math, align 4, !tbaa !136
  br label %554

554:                                              ; preds = %553, %550
  %555 = load i32, ptr @flag_associative_math, align 4, !tbaa !136
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %565, label %557, !prof !162

557:                                              ; preds = %554
  %558 = load i32, ptr @flag_trapping_math, align 4, !tbaa !136
  %559 = icmp ne i32 %558, 0
  %560 = load i32, ptr @flag_signed_zeros, align 4
  %561 = icmp ne i32 %560, 0
  %562 = select i1 %559, i1 true, i1 %561
  br i1 %562, label %563, label %565

563:                                              ; preds = %557
  %564 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.300) #22
  store i32 0, ptr @flag_associative_math, align 4, !tbaa !136
  br label %565

565:                                              ; preds = %563, %557, %554
  %566 = load i32, ptr @flag_cx_limited_range, align 4, !tbaa !136
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %569, label %568, !prof !162

568:                                              ; preds = %565
  store i32 0, ptr @flag_complex_method, align 4, !tbaa !136
  br label %569

569:                                              ; preds = %568, %565
  %570 = load i32, ptr @flag_cx_fortran_rules, align 4, !tbaa !136
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %573, label %572, !prof !162

572:                                              ; preds = %569
  store i32 1, ptr @flag_complex_method, align 4, !tbaa !136
  br label %573

573:                                              ; preds = %572, %569
  %574 = load i32, ptr @flag_stack_protect, align 4, !tbaa !136
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %576, label %577, !prof !162

576:                                              ; preds = %573
  store i32 0, ptr @warn_stack_protect, align 4, !tbaa !136
  br label %577

577:                                              ; preds = %576, %573
  %578 = load i32, ptr @flag_unwind_tables, align 4, !tbaa !136
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %592, label %580, !prof !162

580:                                              ; preds = %577
  %581 = load i32, ptr @target_flags, align 4, !tbaa !136
  %582 = and i32 %581, 4
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %584, label %592

584:                                              ; preds = %580
  %585 = call i32 @ix86_cfun_abi() #22
  %586 = icmp ne i32 %585, 1
  %587 = load i32, ptr @flag_omit_frame_pointer, align 4
  %588 = icmp ne i32 %587, 0
  %589 = select i1 %586, i1 %588, i1 false
  br i1 %589, label %590, label %592

590:                                              ; preds = %584
  %591 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.301) #22
  store i32 0, ptr @flag_omit_frame_pointer, align 4, !tbaa !136
  br label %592

592:                                              ; preds = %590, %584, %580, %577
  %593 = call ptr @build_optimization_node() #22
  store ptr %593, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 125), align 8, !tbaa !121
  store ptr %593, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !121
  %594 = load ptr, ptr @global_dc, align 8, !tbaa !121
  %595 = getelementptr inbounds %struct.diagnostic_context, ptr %594, i64 0, i32 1, i64 4
  %596 = load i32, ptr %595, align 8, !tbaa !136
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %598, label %1060, !prof !162

598:                                              ; preds = %592
  call void @init_adjust_machine_modes() #22
  %599 = load i8, ptr @no_backend, align 1, !tbaa !132
  %600 = icmp eq i8 %599, 0
  br i1 %600, label %601, label %602, !prof !162

601:                                              ; preds = %598
  call void @init_emit_once() #22
  call void @init_rtlanal() #22
  call void @init_inline_once() #22
  call void @init_varasm_once() #22
  call void @save_register_info() #22
  call void @ira_init_once() #22
  call fastcc void @backend_init_target()
  br label %602

602:                                              ; preds = %601, %598
  %603 = load ptr, ptr @main_input_filename, align 8, !tbaa !121
  %604 = load i32, ptr @input_location, align 4, !tbaa !136
  %605 = load ptr, ptr @dump_base_name, align 8, !tbaa !121
  %606 = icmp eq ptr %605, null
  br i1 %606, label %607, label %615, !prof !162

607:                                              ; preds = %602
  %608 = icmp eq ptr %603, null
  br i1 %608, label %613, label %609, !prof !159

609:                                              ; preds = %607
  %610 = load i8, ptr %603, align 1, !tbaa !132
  %611 = icmp eq i8 %610, 0
  %612 = select i1 %611, ptr @.str.310, ptr %603, !prof !159
  br label %613

613:                                              ; preds = %609, %607
  %614 = phi ptr [ @.str.310, %607 ], [ %612, %609 ]
  store ptr %614, ptr @dump_base_name, align 8, !tbaa !121
  br label %615

615:                                              ; preds = %613, %602
  store i32 1, ptr @input_location, align 4, !tbaa !136
  %616 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 9), align 8, !tbaa !264
  %617 = call zeroext i8 %616() #22, !prof !265
  %618 = icmp eq i8 %617, 0
  br i1 %618, label %1021, label %619, !prof !159

619:                                              ; preds = %615
  store i32 %604, ptr @input_location, align 4, !tbaa !136
  %620 = icmp eq ptr %603, null
  %621 = load ptr, ptr @asm_file_name, align 8
  %622 = icmp eq ptr %621, null
  %623 = select i1 %620, i1 %622, i1 false, !prof !159
  br i1 %623, label %624, label %626, !prof !159

624:                                              ; preds = %619
  %625 = load ptr, ptr @stdout, align 8, !tbaa !121
  store ptr %625, ptr @asm_out_file, align 8, !tbaa !121
  br label %672

626:                                              ; preds = %619
  br i1 %622, label %627, label %659, !prof !159

627:                                              ; preds = %626
  %628 = load ptr, ptr @dump_base_name, align 8, !tbaa !121
  %629 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %628)
  %630 = trunc i64 %629 to i32
  %631 = shl i64 %629, 32
  %632 = add i64 %631, 25769803776
  %633 = ashr exact i64 %632, 32
  %634 = call ptr @xmalloc(i64 noundef %633) #22
  %635 = load ptr, ptr @dump_base_name, align 8, !tbaa !121
  %636 = add i64 %631, 4294967296
  %637 = ashr exact i64 %636, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %634, ptr align 1 %635, i64 %637, i1 false)
  %638 = icmp sgt i32 %630, 2
  br i1 %638, label %639, label %656

639:                                              ; preds = %627
  %640 = and i64 %629, 4294967295
  %641 = add nsw i32 %630, -3
  %642 = call i32 @llvm.umin.i32(i32 %641, i32 3)
  %643 = add nuw nsw i32 %642, 3
  %644 = zext nneg i32 %643 to i64
  br label %648

645:                                              ; preds = %648
  %646 = add nuw nsw i64 %649, 1
  %647 = icmp eq i64 %646, %644
  br i1 %647, label %656, label %648, !llvm.loop !174

648:                                              ; preds = %639, %645
  %649 = phi i64 [ 2, %639 ], [ %646, %645 ]
  %650 = sub nsw i64 %640, %649
  %651 = getelementptr inbounds i8, ptr %634, i64 %650
  %652 = load i8, ptr %651, align 1, !tbaa !132
  %653 = icmp eq i8 %652, 46
  br i1 %653, label %654, label %645

654:                                              ; preds = %648
  %655 = getelementptr inbounds i8, ptr %634, i64 %650
  store i8 0, ptr %655, align 1, !tbaa !132
  br label %656

656:                                              ; preds = %645, %627, %654
  %657 = call i64 @strlen(ptr nonnull dereferenceable(1) %634)
  %658 = getelementptr inbounds i8, ptr %634, i64 %657
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %658, ptr noundef nonnull align 1 dereferenceable(3) @.str.311, i64 3, i1 false)
  store ptr %634, ptr @asm_file_name, align 8, !tbaa !121
  br label %659

659:                                              ; preds = %656, %626
  %660 = load ptr, ptr @asm_file_name, align 8, !tbaa !121
  %661 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %660, ptr noundef nonnull dereferenceable(2) @.str.312)
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %663, label %665, !prof !159

663:                                              ; preds = %659
  %664 = load ptr, ptr @stdout, align 8, !tbaa !121
  br label %667

665:                                              ; preds = %659
  %666 = call ptr @fopen_unlocked(ptr noundef %660, ptr noundef nonnull @.str.313) #22
  br label %667

667:                                              ; preds = %665, %663
  %668 = phi ptr [ %664, %663 ], [ %666, %665 ]
  store ptr %668, ptr @asm_out_file, align 8, !tbaa !121
  %669 = icmp eq ptr %668, null
  br i1 %669, label %670, label %672, !prof !159

670:                                              ; preds = %667
  %671 = load ptr, ptr @asm_file_name, align 8, !tbaa !121
  call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.314, ptr noundef %671) #22
  br label %672

672:                                              ; preds = %670, %667, %624
  %673 = load i32, ptr @flag_syntax_only, align 4, !tbaa !136
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %675, label %933, !prof !162

675:                                              ; preds = %672
  %676 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 29), align 8, !tbaa !266
  call void %676() #22, !prof !267
  %677 = load i32, ptr @flag_record_gcc_switches, align 4, !tbaa !136
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %781, label %679, !prof !162

679:                                              ; preds = %675
  %680 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 34), align 8, !tbaa !268
  %681 = icmp eq ptr %680, null
  br i1 %681, label %779, label %682

682:                                              ; preds = %679
  %683 = call i32 %680(i32 noundef 2, ptr noundef null) #22
  %684 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 34), align 8, !tbaa !268
  %685 = load ptr, ptr @flag_random_seed, align 8, !tbaa !121
  %686 = icmp eq ptr %685, null
  br i1 %686, label %687, label %693

687:                                              ; preds = %682
  %688 = load i32, ptr @local_tick, align 4, !tbaa !136
  %689 = call i32 @getpid() #22
  %690 = xor i32 %689, %688
  %691 = zext i32 %690 to i64
  %692 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @init_random_seed.random_seed, ptr noundef nonnull dereferenceable(1) @.str.34, i64 noundef %691)
  store ptr @init_random_seed.random_seed, ptr @flag_random_seed, align 8, !tbaa !121
  br label %693

693:                                              ; preds = %687, %682
  %694 = call i32 %684(i32 noundef 3, ptr noundef null) #22
  %695 = call i32 %684(i32 noundef 2, ptr noundef nonnull @.str.302) #22
  %696 = add nsw i32 %694, 17
  %697 = load ptr, ptr @save_argv, align 8, !tbaa !121
  %698 = getelementptr inbounds ptr, ptr %697, i64 1
  %699 = load ptr, ptr %698, align 8, !tbaa !121
  %700 = icmp eq ptr %699, null
  br i1 %700, label %743, label %701

701:                                              ; preds = %693, %737
  %702 = phi ptr [ %741, %737 ], [ %699, %693 ]
  %703 = phi ptr [ %740, %737 ], [ %698, %693 ]
  %704 = phi ptr [ %739, %737 ], [ %697, %693 ]
  %705 = phi i32 [ %738, %737 ], [ %696, %693 ]
  %706 = load i8, ptr %702, align 1, !tbaa !132
  %707 = icmp eq i8 %706, 45
  br i1 %707, label %708, label %735

708:                                              ; preds = %701
  %709 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %702, ptr noundef nonnull dereferenceable(3) @.str.303)
  %710 = icmp eq i32 %709, 0
  br i1 %710, label %720, label %711

711:                                              ; preds = %708
  %712 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %702, ptr noundef nonnull dereferenceable(10) @.str.304)
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %720, label %714

714:                                              ; preds = %711
  %715 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %702, ptr noundef nonnull dereferenceable(9) @.str.305)
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %720, label %717

717:                                              ; preds = %714
  %718 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %702, ptr noundef nonnull dereferenceable(9) @.str.306)
  %719 = icmp eq i32 %718, 0
  br i1 %719, label %720, label %725

720:                                              ; preds = %717, %714, %711, %708
  %721 = getelementptr inbounds ptr, ptr %704, i64 2
  %722 = load ptr, ptr %721, align 8, !tbaa !121
  %723 = icmp eq ptr %722, null
  %724 = select i1 %723, ptr %703, ptr %721
  br label %737

725:                                              ; preds = %717
  %726 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %702, ptr noundef nonnull dereferenceable(7) @.str.307)
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %737, label %728

728:                                              ; preds = %725
  %729 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %702, ptr noundef nonnull dereferenceable(9) @.str.308)
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %737, label %731

731:                                              ; preds = %728
  %732 = getelementptr inbounds i8, ptr %702, i64 1
  %733 = load i8, ptr %732, align 1, !tbaa !132
  %734 = icmp eq i8 %733, 100
  br i1 %734, label %737, label %735

735:                                              ; preds = %731, %701
  %736 = call fastcc i32 @print_single_switch(ptr noundef %684, i32 noundef %705, i32 noundef 0, ptr noundef nonnull %702)
  br label %737

737:                                              ; preds = %735, %731, %728, %725, %720
  %738 = phi i32 [ %705, %725 ], [ %705, %728 ], [ %705, %731 ], [ %736, %735 ], [ %705, %720 ]
  %739 = phi ptr [ %703, %725 ], [ %703, %728 ], [ %703, %731 ], [ %703, %735 ], [ %724, %720 ]
  %740 = getelementptr inbounds ptr, ptr %739, i64 1
  %741 = load ptr, ptr %740, align 8, !tbaa !121
  %742 = icmp eq ptr %741, null
  br i1 %742, label %743, label %701, !llvm.loop !259

743:                                              ; preds = %737, %693
  %744 = phi i32 [ %696, %693 ], [ %738, %737 ]
  %745 = icmp sgt i32 %744, 0
  br i1 %745, label %746, label %748

746:                                              ; preds = %743
  %747 = call i32 %684(i32 noundef 4, ptr noundef null) #22
  br label %748

748:                                              ; preds = %746, %743
  %749 = call i32 %684(i32 noundef 3, ptr noundef null) #22
  %750 = call i32 %684(i32 noundef 2, ptr noundef nonnull @.str.309) #22
  %751 = load i32, ptr @cl_options_count, align 4, !tbaa !136
  %752 = zext i32 %751 to i64
  %753 = icmp eq i32 %751, 0
  br i1 %753, label %775, label %754

754:                                              ; preds = %748
  %755 = add nsw i32 %749, 18
  br label %756

756:                                              ; preds = %754, %771
  %757 = phi i64 [ %773, %771 ], [ 0, %754 ]
  %758 = phi i32 [ %772, %771 ], [ %755, %754 ]
  %759 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %757
  %760 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %757, i32 5
  %761 = load i32, ptr %760, align 8, !tbaa !225
  %762 = and i32 %761, 16777216
  %763 = icmp eq i32 %762, 0
  br i1 %763, label %771, label %764

764:                                              ; preds = %756
  %765 = trunc i64 %757 to i32
  %766 = call i32 @option_enabled(i32 noundef %765) #22
  %767 = icmp sgt i32 %766, 0
  br i1 %767, label %768, label %771

768:                                              ; preds = %764
  %769 = load ptr, ptr %759, align 8, !tbaa !233
  %770 = call fastcc i32 @print_single_switch(ptr noundef %684, i32 noundef %758, i32 noundef 1, ptr noundef %769)
  br label %771

771:                                              ; preds = %768, %764, %756
  %772 = phi i32 [ %770, %768 ], [ %758, %764 ], [ %758, %756 ]
  %773 = add nuw nsw i64 %757, 1
  %774 = icmp eq i64 %773, %752
  br i1 %774, label %775, label %756, !llvm.loop !260

775:                                              ; preds = %771, %748
  %776 = call i32 %684(i32 noundef 4, ptr noundef null) #22
  %777 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 34), align 8, !tbaa !268
  %778 = call i32 %777(i32 noundef 2, ptr noundef null) #22
  br label %781

779:                                              ; preds = %679
  %780 = load i32, ptr @input_location, align 4, !tbaa !136
  call void (i32, ptr, ...) @inform(i32 noundef %780, ptr noundef nonnull @.str.315) #22
  br label %781

781:                                              ; preds = %779, %775, %675
  %782 = load i32, ptr @flag_verbose_asm, align 4, !tbaa !136
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %933, label %784, !prof !162

784:                                              ; preds = %781
  %785 = load ptr, ptr @asm_out_file, align 8, !tbaa !121
  %786 = load ptr, ptr @lang_hooks, align 8, !tbaa !211
  %787 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %785, ptr noundef nonnull @print_version.fmt1, ptr noundef nonnull @.str.316, ptr noundef nonnull @.str.28, ptr noundef %786, ptr noundef nonnull @pkgversion_string, ptr noundef nonnull @version_string, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.316, ptr noundef nonnull @.str.30)
  %788 = load ptr, ptr @flag_random_seed, align 8, !tbaa !121
  %789 = icmp eq ptr %788, null
  br i1 %789, label %790, label %796

790:                                              ; preds = %784
  %791 = load i32, ptr @local_tick, align 4, !tbaa !136
  %792 = call i32 @getpid() #22
  %793 = xor i32 %792, %791
  %794 = zext i32 %793 to i64
  %795 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @init_random_seed.random_seed, ptr noundef nonnull dereferenceable(1) @.str.34, i64 noundef %794)
  store ptr @init_random_seed.random_seed, ptr @flag_random_seed, align 8, !tbaa !121
  br label %796

796:                                              ; preds = %790, %784
  %797 = load ptr, ptr @asm_out_file, align 8, !tbaa !121
  %798 = call i32 @fputc(i32 35, ptr %797)
  %799 = load ptr, ptr @asm_out_file, align 8, !tbaa !121
  %800 = call i32 @fputc(i32 noundef 32, ptr noundef %799)
  %801 = load ptr, ptr @asm_out_file, align 8, !tbaa !121
  %802 = call i64 @fwrite(ptr nonnull @.str.302, i64 16, i64 1, ptr %801)
  %803 = load ptr, ptr @save_argv, align 8, !tbaa !121
  %804 = getelementptr inbounds ptr, ptr %803, i64 1
  %805 = load ptr, ptr %804, align 8, !tbaa !121
  %806 = icmp eq ptr %805, null
  br i1 %806, label %871, label %807

807:                                              ; preds = %796, %865
  %808 = phi ptr [ %869, %865 ], [ %805, %796 ]
  %809 = phi ptr [ %868, %865 ], [ %804, %796 ]
  %810 = phi ptr [ %867, %865 ], [ %803, %796 ]
  %811 = phi i32 [ %866, %865 ], [ 18, %796 ]
  %812 = load i8, ptr %808, align 1, !tbaa !132
  %813 = icmp eq i8 %812, 45
  br i1 %813, label %814, label %841

814:                                              ; preds = %807
  %815 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %808, ptr noundef nonnull dereferenceable(3) @.str.303)
  %816 = icmp eq i32 %815, 0
  br i1 %816, label %826, label %817

817:                                              ; preds = %814
  %818 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %808, ptr noundef nonnull dereferenceable(10) @.str.304)
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %826, label %820

820:                                              ; preds = %817
  %821 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %808, ptr noundef nonnull dereferenceable(9) @.str.305)
  %822 = icmp eq i32 %821, 0
  br i1 %822, label %826, label %823

823:                                              ; preds = %820
  %824 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %808, ptr noundef nonnull dereferenceable(9) @.str.306)
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %826, label %831

826:                                              ; preds = %823, %820, %817, %814
  %827 = getelementptr inbounds ptr, ptr %810, i64 2
  %828 = load ptr, ptr %827, align 8, !tbaa !121
  %829 = icmp eq ptr %828, null
  %830 = select i1 %829, ptr %809, ptr %827
  br label %865

831:                                              ; preds = %823
  %832 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %808, ptr noundef nonnull dereferenceable(7) @.str.307)
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %865, label %834

834:                                              ; preds = %831
  %835 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %808, ptr noundef nonnull dereferenceable(9) @.str.308)
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %865, label %837

837:                                              ; preds = %834
  %838 = getelementptr inbounds i8, ptr %808, i64 1
  %839 = load i8, ptr %838, align 1, !tbaa !132
  %840 = icmp eq i8 %839, 100
  br i1 %840, label %865, label %841

841:                                              ; preds = %837, %807
  %842 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %808)
  %843 = trunc i64 %842 to i32
  %844 = add i32 %843, 1
  %845 = icmp eq i32 %811, 0
  br i1 %845, label %852, label %846

846:                                              ; preds = %841
  %847 = add nsw i32 %844, %811
  %848 = icmp sgt i32 %847, 75
  br i1 %848, label %849, label %852

849:                                              ; preds = %846
  %850 = load ptr, ptr @asm_out_file, align 8, !tbaa !121
  %851 = call i32 @putc(i32 noundef 10, ptr noundef %850)
  br label %852

852:                                              ; preds = %849, %846, %841
  %853 = phi i32 [ 0, %849 ], [ %811, %846 ], [ 0, %841 ]
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %855, label %858

855:                                              ; preds = %852
  %856 = load ptr, ptr @asm_out_file, align 8, !tbaa !121
  %857 = call i32 @fputc(i32 35, ptr %856)
  br label %858

858:                                              ; preds = %855, %852
  %859 = phi i32 [ 1, %855 ], [ %853, %852 ]
  %860 = load ptr, ptr @asm_out_file, align 8, !tbaa !121
  %861 = call i32 @fputc(i32 noundef 32, ptr noundef %860)
  %862 = load ptr, ptr @asm_out_file, align 8, !tbaa !121
  %863 = call i32 @fputs(ptr noundef nonnull %808, ptr noundef %862)
  %864 = add nsw i32 %859, %844
  br label %865

865:                                              ; preds = %858, %837, %834, %831, %826
  %866 = phi i32 [ %811, %831 ], [ %811, %834 ], [ %811, %837 ], [ %864, %858 ], [ %811, %826 ]
  %867 = phi ptr [ %809, %831 ], [ %809, %834 ], [ %809, %837 ], [ %809, %858 ], [ %830, %826 ]
  %868 = getelementptr inbounds ptr, ptr %867, i64 1
  %869 = load ptr, ptr %868, align 8, !tbaa !121
  %870 = icmp eq ptr %869, null
  br i1 %870, label %871, label %807, !llvm.loop !259

871:                                              ; preds = %865, %796
  %872 = phi i32 [ 18, %796 ], [ %866, %865 ]
  %873 = icmp sgt i32 %872, 0
  br i1 %873, label %874, label %877

874:                                              ; preds = %871
  %875 = load ptr, ptr @asm_out_file, align 8, !tbaa !121
  %876 = call i32 @putc(i32 noundef 10, ptr noundef %875)
  br label %877

877:                                              ; preds = %874, %871
  %878 = load ptr, ptr @asm_out_file, align 8, !tbaa !121
  %879 = call i32 @fputc(i32 35, ptr %878)
  %880 = load ptr, ptr @asm_out_file, align 8, !tbaa !121
  %881 = call i32 @fputc(i32 noundef 32, ptr noundef %880)
  %882 = load ptr, ptr @asm_out_file, align 8, !tbaa !121
  %883 = call i64 @fwrite(ptr nonnull @.str.309, i64 17, i64 1, ptr %882)
  %884 = load i32, ptr @cl_options_count, align 4, !tbaa !136
  %885 = zext i32 %884 to i64
  %886 = icmp eq i32 %884, 0
  br i1 %886, label %928, label %887

887:                                              ; preds = %877, %924
  %888 = phi i64 [ %926, %924 ], [ 0, %877 ]
  %889 = phi i32 [ %925, %924 ], [ 19, %877 ]
  %890 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %888
  %891 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %888, i32 5
  %892 = load i32, ptr %891, align 8, !tbaa !225
  %893 = and i32 %892, 16777216
  %894 = icmp eq i32 %893, 0
  br i1 %894, label %924, label %895

895:                                              ; preds = %887
  %896 = trunc i64 %888 to i32
  %897 = call i32 @option_enabled(i32 noundef %896) #22
  %898 = icmp sgt i32 %897, 0
  br i1 %898, label %899, label %924

899:                                              ; preds = %895
  %900 = load ptr, ptr %890, align 8, !tbaa !233
  %901 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %900)
  %902 = trunc i64 %901 to i32
  %903 = add i32 %902, 1
  %904 = icmp eq i32 %889, 0
  br i1 %904, label %911, label %905

905:                                              ; preds = %899
  %906 = add nsw i32 %903, %889
  %907 = icmp sgt i32 %906, 75
  br i1 %907, label %908, label %911

908:                                              ; preds = %905
  %909 = load ptr, ptr @asm_out_file, align 8, !tbaa !121
  %910 = call i32 @putc(i32 noundef 10, ptr noundef %909)
  br label %911

911:                                              ; preds = %908, %905, %899
  %912 = phi i32 [ 0, %908 ], [ %889, %905 ], [ 0, %899 ]
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %914, label %917

914:                                              ; preds = %911
  %915 = load ptr, ptr @asm_out_file, align 8, !tbaa !121
  %916 = call i32 @fputc(i32 35, ptr %915)
  br label %917

917:                                              ; preds = %914, %911
  %918 = phi i32 [ 1, %914 ], [ %912, %911 ]
  %919 = load ptr, ptr @asm_out_file, align 8, !tbaa !121
  %920 = call i32 @fputc(i32 noundef 32, ptr noundef %919)
  %921 = load ptr, ptr @asm_out_file, align 8, !tbaa !121
  %922 = call i32 @fputs(ptr noundef %900, ptr noundef %921)
  %923 = add nsw i32 %918, %903
  br label %924

924:                                              ; preds = %917, %895, %887
  %925 = phi i32 [ %923, %917 ], [ %889, %895 ], [ %889, %887 ]
  %926 = add nuw nsw i64 %888, 1
  %927 = icmp eq i64 %926, %885
  br i1 %927, label %928, label %887, !llvm.loop !260

928:                                              ; preds = %924, %877
  %929 = load ptr, ptr @asm_out_file, align 8, !tbaa !121
  %930 = call i32 @putc(i32 noundef 10, ptr noundef %929)
  %931 = load ptr, ptr @asm_out_file, align 8, !tbaa !121
  %932 = call i32 @putc(i32 noundef 10, ptr noundef %931)
  br label %933

933:                                              ; preds = %928, %781, %672
  call void @init_eh() #22
  call fastcc void @lang_dependent_init_target()
  %934 = load i8, ptr @timevar_enable, align 1, !tbaa !132
  %935 = icmp eq i8 %934, 0
  br i1 %935, label %937, label %936, !prof !162

936:                                              ; preds = %933
  call void @timevar_push_1(i32 noundef 166) #22
  br label %937

937:                                              ; preds = %936, %933
  %938 = call i32 @dwarf2out_do_frame() #22
  %939 = icmp eq i32 %938, 0
  br i1 %939, label %941, label %940, !prof !162

940:                                              ; preds = %937
  call void @dwarf2out_frame_init() #22
  br label %941

941:                                              ; preds = %940, %937
  %942 = load ptr, ptr @debug_hooks, align 8, !tbaa !121
  %943 = load ptr, ptr %942, align 8, !tbaa !269
  call void %943(ptr noundef %603) #22, !prof !270
  %944 = load i8, ptr @timevar_enable, align 1, !tbaa !132
  %945 = icmp eq i8 %944, 0
  br i1 %945, label %947, label %946, !prof !162

946:                                              ; preds = %941
  call void @timevar_pop_1(i32 noundef 166) #22
  br label %947

947:                                              ; preds = %941, %946
  store i8 1, ptr @ggc_protect_identifiers, align 1, !tbaa !132
  call void @init_cgraph() #22
  %948 = load ptr, ptr @main_input_filename, align 8, !tbaa !121
  call void @init_final(ptr noundef %948) #22
  %949 = load ptr, ptr @aux_base_name, align 8, !tbaa !121
  call void @coverage_init(ptr noundef %949) #22
  call void @statistics_init() #22
  %950 = call i32 @invoke_plugin_callbacks(i32 noundef 12, ptr noundef null) #22
  %951 = load i8, ptr @timevar_enable, align 1, !tbaa !132
  %952 = icmp eq i8 %951, 0
  br i1 %952, label %954, label %953, !prof !162

953:                                              ; preds = %947
  call void @timevar_push_1(i32 noundef 44) #22
  br label %954

954:                                              ; preds = %953, %947
  %955 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 11), align 8, !tbaa !271
  %956 = load i1, ptr @set_yydebug, align 4
  %957 = zext i1 %956 to i32
  call void %955(i32 noundef %957) #22, !prof !272
  %958 = load i8, ptr @timevar_enable, align 1, !tbaa !132
  %959 = icmp eq i8 %958, 0
  br i1 %959, label %961, label %960, !prof !162

960:                                              ; preds = %954
  call void @timevar_pop_1(i32 noundef 44) #22
  br label %961

961:                                              ; preds = %960, %954
  %962 = load i32, ptr @flag_syntax_only, align 4, !tbaa !136
  %963 = icmp eq i32 %962, 0
  br i1 %963, label %964, label %1021, !prof !162

964:                                              ; preds = %961
  store i8 0, ptr @ggc_protect_identifiers, align 1, !tbaa !132
  %965 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 8), align 8, !tbaa !273
  call void %965() #22, !prof !274
  %966 = load ptr, ptr @global_dc, align 8, !tbaa !121
  %967 = getelementptr inbounds %struct.diagnostic_context, ptr %966, i64 0, i32 1, i64 4
  %968 = load i32, ptr %967, align 8, !tbaa !136
  %969 = icmp eq i32 %968, 0
  br i1 %969, label %970, label %1021, !prof !162

970:                                              ; preds = %964
  %971 = getelementptr inbounds %struct.diagnostic_context, ptr %966, i64 0, i32 1, i64 5
  %972 = load i32, ptr %971, align 4, !tbaa !136
  %973 = icmp eq i32 %972, 0
  br i1 %973, label %974, label %1021, !prof !162

974:                                              ; preds = %970
  %975 = call zeroext i8 @varpool_assemble_pending_decls() #22
  call void @finish_aliases_2() #22
  %976 = load i32, ptr @flag_mudflap, align 4, !tbaa !136
  %977 = icmp eq i32 %976, 0
  br i1 %977, label %979, label %978, !prof !162

978:                                              ; preds = %974
  call void @mudflap_finish_file() #22
  br label %979

979:                                              ; preds = %978, %974
  %980 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 113), align 4, !tbaa !275
  %981 = icmp eq i8 %980, 0
  br i1 %981, label %982, label %983, !prof !159

982:                                              ; preds = %979
  call void @emutls_finish() #22
  br label %983

983:                                              ; preds = %982, %979
  call void @output_shared_constant_pool() #22
  call void @output_object_blocks() #22
  call void @weak_finish() #22
  %984 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 31), align 8, !tbaa !276
  call void %984() #22, !prof !277
  %985 = load i8, ptr @timevar_enable, align 1, !tbaa !132
  %986 = icmp eq i8 %985, 0
  br i1 %986, label %988, label %987, !prof !162

987:                                              ; preds = %983
  call void @timevar_push_1(i32 noundef 166) #22
  br label %988

988:                                              ; preds = %987, %983
  %989 = call i32 @dwarf2out_do_frame() #22
  %990 = icmp eq i32 %989, 0
  br i1 %990, label %992, label %991, !prof !162

991:                                              ; preds = %988
  call void @dwarf2out_frame_finish() #22
  br label %992

992:                                              ; preds = %991, %988
  %993 = load ptr, ptr @debug_hooks, align 8, !tbaa !121
  %994 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %993, i64 0, i32 1
  %995 = load ptr, ptr %994, align 8, !tbaa !278
  %996 = load ptr, ptr @main_input_filename, align 8, !tbaa !121
  call void %995(ptr noundef %996) #22, !prof !270
  %997 = load i8, ptr @timevar_enable, align 1, !tbaa !132
  %998 = icmp eq i8 %997, 0
  br i1 %998, label %1000, label %999, !prof !162

999:                                              ; preds = %992
  call void @timevar_pop_1(i32 noundef 166) #22
  br label %1000

1000:                                             ; preds = %999, %992
  call void @dw2_output_indirect_constants() #22
  call void @process_pending_assemble_externals() #22
  %1001 = load i32, ptr @flag_generate_lto, align 4, !tbaa !136
  %1002 = icmp eq i32 %1001, 0
  br i1 %1002, label %1009, label %1003, !prof !162

1003:                                             ; preds = %1000
  %1004 = load ptr, ptr @asm_out_file, align 8, !tbaa !121
  %1005 = call i64 @fwrite(ptr nonnull @.str.317, i64 7, i64 1, ptr %1004)
  %1006 = load ptr, ptr @asm_out_file, align 8, !tbaa !121
  call void @assemble_name(ptr noundef %1006, ptr noundef nonnull @.str.318) #22
  %1007 = load ptr, ptr @asm_out_file, align 8, !tbaa !121
  %1008 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1007, ptr noundef nonnull @.str.319, i64 noundef 1, i32 noundef 1)
  br label %1009

1009:                                             ; preds = %1003, %1000
  %1010 = load i32, ptr @flag_no_ident, align 4, !tbaa !136
  %1011 = icmp eq i32 %1010, 0
  br i1 %1011, label %1012, label %1018, !prof !162

1012:                                             ; preds = %1009
  %1013 = call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.321, ptr noundef nonnull dereferenceable(1) @pkgversion_string)
  %1014 = icmp eq i32 %1013, 0
  %1015 = select i1 %1014, ptr @.str.320, ptr @pkgversion_string, !prof !159
  %1016 = load ptr, ptr @asm_out_file, align 8, !tbaa !121
  %1017 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1016, ptr noundef nonnull @.str.322, ptr noundef nonnull @.str.323, ptr noundef nonnull %1015, ptr noundef nonnull @version_string)
  br label %1018

1018:                                             ; preds = %1012, %1009
  %1019 = call i32 @invoke_plugin_callbacks(i32 noundef 2, ptr noundef null) #22
  %1020 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 30), align 8, !tbaa !279
  call void %1020() #22, !prof !280
  br label %1021

1021:                                             ; preds = %615, %1018, %970, %964, %961
  %1022 = load i32, ptr @flag_gen_aux_info, align 4, !tbaa !136
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1034, label %1024, !prof !162

1024:                                             ; preds = %1021
  %1025 = load ptr, ptr @aux_info_file, align 8, !tbaa !121
  %1026 = call i32 @fclose(ptr noundef %1025)
  %1027 = load ptr, ptr @global_dc, align 8, !tbaa !121
  %1028 = getelementptr inbounds %struct.diagnostic_context, ptr %1027, i64 0, i32 1, i64 4
  %1029 = load i32, ptr %1028, align 8, !tbaa !136
  %1030 = icmp eq i32 %1029, 0
  br i1 %1030, label %1034, label %1031

1031:                                             ; preds = %1024
  %1032 = load ptr, ptr @aux_info_file_name, align 8, !tbaa !121
  %1033 = call i32 @unlink(ptr noundef %1032)
  br label %1034

1034:                                             ; preds = %1031, %1024, %1021
  %1035 = load ptr, ptr @asm_out_file, align 8, !tbaa !121
  %1036 = icmp eq ptr %1035, null
  br i1 %1036, label %1054, label %1037, !prof !159

1037:                                             ; preds = %1034
  %1038 = call i32 @ferror(ptr noundef nonnull %1035)
  %1039 = icmp eq i32 %1038, 0
  br i1 %1039, label %1042, label %1040, !prof !162

1040:                                             ; preds = %1037
  %1041 = load ptr, ptr @asm_file_name, align 8, !tbaa !121
  call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.324, ptr noundef %1041) #22
  br label %1042

1042:                                             ; preds = %1040, %1037
  %1043 = load ptr, ptr @asm_out_file, align 8, !tbaa !121
  %1044 = call i32 @fclose(ptr noundef %1043)
  %1045 = icmp eq i32 %1044, 0
  br i1 %1045, label %1048, label %1046, !prof !162

1046:                                             ; preds = %1042
  %1047 = load ptr, ptr @asm_file_name, align 8, !tbaa !121
  call void (ptr, ...) @fatal_error(ptr noundef nonnull @.str.325, ptr noundef %1047) #22
  br label %1048

1048:                                             ; preds = %1046, %1042
  %1049 = load i32, ptr @flag_wpa, align 4, !tbaa !136
  %1050 = icmp eq i32 %1049, 0
  br i1 %1050, label %1054, label %1051, !prof !162

1051:                                             ; preds = %1048
  %1052 = load ptr, ptr @asm_file_name, align 8, !tbaa !121
  %1053 = call i32 @unlink_if_ordinary(ptr noundef %1052) #22
  br label %1054

1054:                                             ; preds = %1051, %1048, %1034
  call void @statistics_fini() #22
  call void @finish_optimization_passes() #22
  call void @ira_finish_once() #22
  %1055 = load i32, ptr @mem_report, align 4, !tbaa !136
  %1056 = icmp eq i32 %1055, 0
  br i1 %1056, label %1058, label %1057, !prof !162

1057:                                             ; preds = %1054
  call void @dump_memory_report(i8 noundef zeroext 1)
  br label %1058

1058:                                             ; preds = %1057, %1054
  %1059 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 10), align 8, !tbaa !281
  call void %1059() #22, !prof !282
  br label %1060

1060:                                             ; preds = %592, %1058
  call void @timevar_stop(i32 noundef 1) #22
  %1061 = load ptr, ptr @stderr, align 8, !tbaa !121
  call void @timevar_print(ptr noundef %1061) #22
  br label %1062

1062:                                             ; preds = %1060, %58
  %1063 = load ptr, ptr @global_dc, align 8, !tbaa !121
  %1064 = getelementptr inbounds %struct.diagnostic_context, ptr %1063, i64 0, i32 1, i64 6
  %1065 = load i32, ptr %1064, align 8, !tbaa !136
  %1066 = icmp eq i32 %1065, 0
  br i1 %1066, label %1067, label %1071, !prof !159

1067:                                             ; preds = %1062
  %1068 = getelementptr inbounds %struct.diagnostic_context, ptr %1063, i64 0, i32 1, i64 4
  %1069 = load i32, ptr %1068, align 8, !tbaa !136
  %1070 = icmp eq i32 %1069, 0
  br i1 %1070, label %1072, label %1071

1071:                                             ; preds = %1067, %1062
  call void @print_ignored_options() #22
  br label %1072

1072:                                             ; preds = %1071, %1067
  %1073 = call i32 @invoke_plugin_callbacks(i32 noundef 4, ptr noundef null) #22
  call void @finalize_plugins() #22
  %1074 = load ptr, ptr @global_dc, align 8, !tbaa !121
  %1075 = getelementptr inbounds %struct.diagnostic_context, ptr %1074, i64 0, i32 1, i64 4
  %1076 = load i32, ptr %1075, align 8, !tbaa !136
  %1077 = icmp eq i32 %1076, 0
  br i1 %1077, label %1078, label %1083, !prof !162

1078:                                             ; preds = %1072
  %1079 = getelementptr inbounds %struct.diagnostic_context, ptr %1074, i64 0, i32 1, i64 5
  %1080 = load i32, ptr %1079, align 4, !tbaa !136
  %1081 = icmp ne i32 %1080, 0
  %1082 = zext i1 %1081 to i32
  br label %1083

1083:                                             ; preds = %1078, %1072
  %1084 = phi i32 [ 1, %1072 ], [ %1082, %1078 ]
  ret i32 %1084
}

declare void @expandargv(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @decode_options(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @initialize_plugins() local_unnamed_addr #3

declare void @print_plugins_help(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @print_ignored_options() local_unnamed_addr #3

declare i32 @invoke_plugin_callbacks(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @finalize_plugins() local_unnamed_addr #3

declare i32 @getpid() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @getrlimit(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @fatal_error(ptr noundef, ...) local_unnamed_addr #3

declare i32 @setrlimit(i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @get_option_state(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @asprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @init_emit_regs() local_unnamed_addr #3

declare void @init_regs() local_unnamed_addr #3

declare void @init_fake_stack_mems() local_unnamed_addr #3

declare void @init_alias_target() local_unnamed_addr #3

declare void @init_reload() local_unnamed_addr #3

declare void @init_dummy_function_start() local_unnamed_addr #3

declare void @init_expmed() local_unnamed_addr #3

declare void @expand_dummy_function_end() local_unnamed_addr #3

declare void @init_optabs() local_unnamed_addr #3

declare void @init_expr_target() local_unnamed_addr #3

declare void @init_set_costs() local_unnamed_addr #3

declare void @ira_init() local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @xmalloc_set_program_name(ptr noundef) local_unnamed_addr #3

declare void @hex_init() local_unnamed_addr #3

declare void @unlock_std_streams() local_unnamed_addr #3

declare void @diagnostic_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @crash_signal(i32 noundef %0) #9 !prof !120 {
  %2 = tail call ptr @signal(i32 noundef %0, ptr noundef null) #22
  %3 = load ptr, ptr @this_is_asm_operands, align 8, !tbaa !121
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.41) #22
  tail call void @exit(i32 noundef 1) #24
  unreachable

6:                                                ; preds = %1
  %7 = tail call ptr @strsignal(i32 noundef %0) #22
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.42, ptr noundef %7) #22
  ret void
}

declare void @init_ggc() local_unnamed_addr #3

declare void @init_stringpool() local_unnamed_addr #3

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

declare void @linemap_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal ptr @realloc_for_line_map(ptr noundef %0, i64 noundef %1) #9 !prof !283 !PGOFuncName !284 {
  %3 = tail call ptr @ggc_realloc_stat(ptr noundef %0, i64 noundef %1) #22
  ret ptr %3
}

declare void @init_ttree() local_unnamed_addr #3

declare void @init_reg_sets() local_unnamed_addr #3

declare void @add_params(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @init_ggc_heuristics() local_unnamed_addr #3

declare void @init_optimization_passes() local_unnamed_addr #3

declare void @statistics_early_init() local_unnamed_addr #3

declare void @output_operand_lossage(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @exit(i32 noundef) local_unnamed_addr #17

declare void @internal_error(ptr noundef, ...) local_unnamed_addr #3

declare ptr @strsignal(i32 noundef) local_unnamed_addr #3

declare ptr @ggc_realloc_stat(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

declare void @timevar_init() local_unnamed_addr #3

declare void @timevar_start(i32 noundef) local_unnamed_addr #3

declare void @init_adjust_machine_modes() local_unnamed_addr #3

declare void @timevar_stop(i32 noundef) local_unnamed_addr #3

declare void @timevar_print(ptr noundef) local_unnamed_addr #3

declare void @override_options(i8 noundef zeroext) local_unnamed_addr #3

declare ptr @lbasename(ptr noundef) local_unnamed_addr #3

declare void @sorry(ptr noundef, ...) local_unnamed_addr #3

declare ptr @fopen_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @strerror(i32 noundef) local_unnamed_addr #3

declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

declare i32 @ix86_cfun_abi() local_unnamed_addr #3

declare ptr @build_optimization_node() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @print_single_switch(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #9 !prof !120 {
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3)
  %6 = trunc i64 %5 to i32
  %7 = add i32 %6, 1
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = add nsw i32 %7, %1
  %11 = icmp sgt i32 %10, 75
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = tail call i32 %0(i32 noundef 4, ptr noundef null) #22
  br label %14

14:                                               ; preds = %12, %9, %4
  %15 = phi i32 [ 0, %12 ], [ %1, %9 ], [ 0, %4 ]
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = tail call i32 %0(i32 noundef 3, ptr noundef null) #22
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi i32 [ %18, %17 ], [ %15, %14 ]
  %21 = tail call i32 %0(i32 noundef %2, ptr noundef %3) #22
  %22 = add nsw i32 %20, %7
  ret i32 %22
}

declare i32 @option_enabled(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #1

declare void @init_emit_once() local_unnamed_addr #3

declare void @init_rtlanal() local_unnamed_addr #3

declare void @init_inline_once() local_unnamed_addr #3

declare void @init_varasm_once() local_unnamed_addr #3

declare void @save_register_info() local_unnamed_addr #3

declare void @ira_init_once() local_unnamed_addr #3

declare void @init_eh() local_unnamed_addr #3

declare i32 @dwarf2out_do_frame() local_unnamed_addr #3

declare void @dwarf2out_frame_init() local_unnamed_addr #3

declare void @inform(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @init_cgraph() local_unnamed_addr #3

declare void @init_final(ptr noundef) local_unnamed_addr #3

declare void @coverage_init(ptr noundef) local_unnamed_addr #3

declare void @statistics_init() local_unnamed_addr #3

declare zeroext i8 @varpool_assemble_pending_decls() local_unnamed_addr #3

declare void @finish_aliases_2() local_unnamed_addr #3

declare void @mudflap_finish_file() local_unnamed_addr #3

declare void @emutls_finish() local_unnamed_addr #3

declare void @output_shared_constant_pool() local_unnamed_addr #3

declare void @output_object_blocks() local_unnamed_addr #3

declare void @weak_finish() local_unnamed_addr #3

declare void @dwarf2out_frame_finish() local_unnamed_addr #3

declare void @dw2_output_indirect_constants() local_unnamed_addr #3

declare void @process_pending_assemble_externals() local_unnamed_addr #3

declare void @assemble_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #18

declare i32 @unlink_if_ordinary(ptr noundef) local_unnamed_addr #3

declare void @statistics_fini() local_unnamed_addr #3

declare void @finish_optimization_passes() local_unnamed_addr #3

declare void @ira_finish_once() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #19

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

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
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nofree nounwind }
attributes #21 = { nofree nounwind willreturn memory(argmem: read) }
attributes #22 = { nounwind }
attributes #23 = { cold }
attributes #24 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!119}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118}
!35 = !{ptr @read_integral_parameter, ptr @strtol, i64 1}
!36 = !{ptr @output_quoted_string, ptr @putc, i64 9}
!37 = !{ptr @output_file_directive, ptr @remap_debug_filename, i64 1}
!38 = !{ptr @output_file_directive, ptr @strlen, i64 1}
!39 = !{ptr @output_file_directive, ptr @fwrite, i64 1}
!40 = !{ptr @output_file_directive, ptr @output_quoted_string, i64 1}
!41 = !{ptr @output_file_directive, ptr @putc, i64 1}
!42 = !{ptr @wrapup_global_declaration_2, ptr @varpool_node, i64 1}
!43 = !{ptr @backend_init_target, ptr @floor_log2, i64 4}
!44 = !{ptr @backend_init_target, ptr @init_emit_regs, i64 1}
!45 = !{ptr @backend_init_target, ptr @init_regs, i64 1}
!46 = !{ptr @backend_init_target, ptr @init_fake_stack_mems, i64 1}
!47 = !{ptr @backend_init_target, ptr @init_alias_target, i64 1}
!48 = !{ptr @backend_init_target, ptr @init_reload, i64 1}
!49 = !{ptr @backend_init_target, ptr @init_dummy_function_start, i64 1}
!50 = !{ptr @backend_init_target, ptr @init_expmed, i64 1}
!51 = !{ptr @backend_init_target, ptr @expand_dummy_function_end, i64 1}
!52 = !{ptr @lang_dependent_init_target, ptr @init_optabs, i64 1}
!53 = !{ptr @lang_dependent_init_target, ptr @init_dummy_function_start, i64 1}
!54 = !{ptr @lang_dependent_init_target, ptr @init_expr_target, i64 1}
!55 = !{ptr @lang_dependent_init_target, ptr @init_set_costs, i64 1}
!56 = !{ptr @lang_dependent_init_target, ptr @ira_init, i64 1}
!57 = !{ptr @lang_dependent_init_target, ptr @expand_dummy_function_end, i64 1}
!58 = !{ptr @toplev_main, ptr @expandargv, i64 1}
!59 = !{ptr @toplev_main, ptr @strlen, i64 2}
!60 = !{ptr @toplev_main, ptr @xmalloc_set_program_name, i64 1}
!61 = !{ptr @toplev_main, ptr @hex_init, i64 1}
!62 = !{ptr @toplev_main, ptr @unlock_std_streams, i64 1}
!63 = !{ptr @toplev_main, ptr @diagnostic_initialize, i64 1}
!64 = !{ptr @toplev_main, ptr @signal, i64 5}
!65 = !{ptr @toplev_main, ptr @init_ggc, i64 1}
!66 = !{ptr @toplev_main, ptr @init_stringpool, i64 1}
!67 = !{ptr @toplev_main, ptr @ggc_alloc_stat, i64 1}
!68 = !{ptr @toplev_main, ptr @linemap_init, i64 1}
!69 = !{ptr @toplev_main, ptr @init_ttree, i64 1}
!70 = !{ptr @toplev_main, ptr @init_reg_sets, i64 1}
!71 = !{ptr @toplev_main, ptr @add_params, i64 1}
!72 = !{ptr @toplev_main, ptr @init_ggc_heuristics, i64 1}
!73 = !{ptr @toplev_main, ptr @init_optimization_passes, i64 1}
!74 = !{ptr @toplev_main, ptr @statistics_early_init, i64 1}
!75 = !{ptr @toplev_main, ptr @decode_options, i64 1}
!76 = !{ptr @toplev_main, ptr @gettimeofday, i64 1}
!77 = !{ptr @toplev_main, ptr @initialize_plugins, i64 1}
!78 = !{ptr @toplev_main, ptr @timevar_start, i64 1}
!79 = !{ptr @toplev_main, ptr @override_options, i64 1}
!80 = !{ptr @toplev_main, ptr @lbasename, i64 1}
!81 = !{ptr @toplev_main, ptr @xstrdup, i64 1}
!82 = !{ptr @toplev_main, ptr @build_optimization_node, i64 1}
!83 = !{ptr @toplev_main, ptr @init_adjust_machine_modes, i64 1}
!84 = !{ptr @toplev_main, ptr @init_emit_once, i64 1}
!85 = !{ptr @toplev_main, ptr @init_rtlanal, i64 1}
!86 = !{ptr @toplev_main, ptr @init_inline_once, i64 1}
!87 = !{ptr @toplev_main, ptr @init_varasm_once, i64 1}
!88 = !{ptr @toplev_main, ptr @save_register_info, i64 1}
!89 = !{ptr @toplev_main, ptr @ira_init_once, i64 1}
!90 = !{ptr @toplev_main, ptr @backend_init_target, i64 1}
!91 = !{ptr @toplev_main, ptr @strcmp, i64 2}
!92 = !{ptr @toplev_main, ptr @fopen_unlocked, i64 1}
!93 = !{ptr @toplev_main, ptr @init_eh, i64 1}
!94 = !{ptr @toplev_main, ptr @lang_dependent_init_target, i64 1}
!95 = !{ptr @toplev_main, ptr @dwarf2out_do_frame, i64 2}
!96 = !{ptr @toplev_main, ptr @init_cgraph, i64 1}
!97 = !{ptr @toplev_main, ptr @init_final, i64 1}
!98 = !{ptr @toplev_main, ptr @coverage_init, i64 1}
!99 = !{ptr @toplev_main, ptr @statistics_init, i64 1}
!100 = !{ptr @toplev_main, ptr @invoke_plugin_callbacks, i64 3}
!101 = !{ptr @toplev_main, ptr @varpool_assemble_pending_decls, i64 1}
!102 = !{ptr @toplev_main, ptr @finish_aliases_2, i64 1}
!103 = !{ptr @toplev_main, ptr @output_shared_constant_pool, i64 1}
!104 = !{ptr @toplev_main, ptr @output_object_blocks, i64 1}
!105 = !{ptr @toplev_main, ptr @weak_finish, i64 1}
!106 = !{ptr @toplev_main, ptr @dw2_output_indirect_constants, i64 1}
!107 = !{ptr @toplev_main, ptr @process_pending_assemble_externals, i64 1}
!108 = !{ptr @toplev_main, ptr @fprintf, i64 1}
!109 = !{ptr @toplev_main, ptr @ferror, i64 1}
!110 = !{ptr @toplev_main, ptr @fclose, i64 1}
!111 = !{ptr @toplev_main, ptr @statistics_fini, i64 1}
!112 = !{ptr @toplev_main, ptr @finish_optimization_passes, i64 1}
!113 = !{ptr @toplev_main, ptr @ira_finish_once, i64 1}
!114 = !{ptr @toplev_main, ptr @timevar_stop, i64 1}
!115 = !{ptr @toplev_main, ptr @timevar_print, i64 1}
!116 = !{ptr @toplev_main, ptr @print_ignored_options, i64 1}
!117 = !{ptr @toplev_main, ptr @finalize_plugins, i64 1}
!118 = !{ptr @realloc_for_line_map, ptr @ggc_realloc_stat, i64 2}
!119 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!120 = !{!"function_entry_count", i64 0}
!121 = !{!122, !122, i64 0}
!122 = !{!"any pointer", !123, i64 0}
!123 = !{!"omnipotent char", !124, i64 0}
!124 = !{!"Simple C/C++ TBAA"}
!125 = !{!126, !122, i64 8}
!126 = !{!"_IO_FILE", !127, i64 0, !122, i64 8, !122, i64 16, !122, i64 24, !122, i64 32, !122, i64 40, !122, i64 48, !122, i64 56, !122, i64 64, !122, i64 72, !122, i64 80, !122, i64 88, !122, i64 96, !122, i64 104, !127, i64 112, !127, i64 116, !128, i64 120, !129, i64 128, !123, i64 130, !123, i64 131, !122, i64 136, !128, i64 144, !122, i64 152, !122, i64 160, !122, i64 168, !122, i64 176, !128, i64 184, !127, i64 192, !123, i64 196}
!127 = !{!"int", !123, i64 0}
!128 = !{!"long", !123, i64 0}
!129 = !{!"short", !123, i64 0}
!130 = !{!126, !122, i64 16}
!131 = !{!"branch_weights", i32 2000, i32 1}
!132 = !{!123, !123, i64 0}
!133 = !{!126, !122, i64 40}
!134 = !{!126, !122, i64 48}
!135 = !{!126, !127, i64 0}
!136 = !{!127, !127, i64 0}
!137 = distinct !{!137, !138, !139}
!138 = !{!"llvm.loop.mustprogress"}
!139 = !{!"llvm.loop.unroll.disable"}
!140 = !{!"function_entry_count", i64 693}
!141 = !{!"branch_weights", i32 0, i32 693}
!142 = !{!143, !122, i64 176}
!143 = !{!"lang_hooks", !122, i64 0, !128, i64 8, !122, i64 16, !122, i64 24, !122, i64 32, !122, i64 40, !122, i64 48, !122, i64 56, !122, i64 64, !122, i64 72, !122, i64 80, !122, i64 88, !122, i64 96, !122, i64 104, !122, i64 112, !122, i64 120, !122, i64 128, !122, i64 136, !122, i64 144, !122, i64 152, !122, i64 160, !122, i64 168, !122, i64 176, !122, i64 184, !122, i64 192, !122, i64 200, !122, i64 208, !122, i64 216, !122, i64 224, !122, i64 232, !144, i64 240, !145, i64 248, !146, i64 256, !147, i64 272, !148, i64 432, !149, i64 560, !122, i64 584, !122, i64 592, !122, i64 600, !122, i64 608, !122, i64 616, !122, i64 624, !122, i64 632, !122, i64 640, !122, i64 648, !122, i64 656, !122, i64 664, !123, i64 672}
!144 = !{!"lang_hooks_for_tree_inlining", !122, i64 0}
!145 = !{!"lang_hooks_for_callgraph", !122, i64 0}
!146 = !{!"lang_hooks_for_tree_dump", !122, i64 0, !122, i64 8}
!147 = !{!"lang_hooks_for_decls", !122, i64 0, !122, i64 8, !122, i64 16, !122, i64 24, !122, i64 32, !122, i64 40, !122, i64 48, !122, i64 56, !122, i64 64, !122, i64 72, !122, i64 80, !122, i64 88, !122, i64 96, !122, i64 104, !122, i64 112, !122, i64 120, !122, i64 128, !122, i64 136, !122, i64 144, !122, i64 152}
!148 = !{!"lang_hooks_for_types", !122, i64 0, !122, i64 8, !122, i64 16, !122, i64 24, !122, i64 32, !122, i64 40, !122, i64 48, !122, i64 56, !122, i64 64, !122, i64 72, !122, i64 80, !122, i64 88, !122, i64 96, !122, i64 104, !122, i64 112, !123, i64 120}
!149 = !{!"lang_hooks_for_lto", !122, i64 0, !122, i64 8, !122, i64 16}
!150 = !{!151, !122, i64 0}
!151 = !{!"diagnostic_context", !122, i64 0, !123, i64 8, !123, i64 56, !123, i64 57, !123, i64 60, !123, i64 3540, !123, i64 3541, !122, i64 3544, !122, i64 3552, !122, i64 3560, !122, i64 3568, !122, i64 3576, !127, i64 3584, !123, i64 3588}
!152 = !{!153, !123, i64 49}
!153 = !{!"pretty_print_info", !122, i64 0, !122, i64 8, !127, i64 16, !127, i64 20, !127, i64 24, !154, i64 28, !122, i64 40, !123, i64 48, !123, i64 49, !123, i64 50}
!154 = !{!"", !127, i64 0, !127, i64 4}
!155 = !{!151, !122, i64 3568}
!156 = !{!"function_entry_count", i64 1}
!157 = !{!"branch_weights", i32 1, i32 127}
!158 = !{!129, !129, i64 0}
!159 = !{!"branch_weights", i32 0, i32 1}
!160 = !{!"branch_weights", i32 127, i32 1}
!161 = distinct !{!161, !138, !139}
!162 = !{!"branch_weights", i32 1, i32 0}
!163 = !{!"function_entry_count", i64 3562815}
!164 = !{!"branch_weights", i32 65, i32 3842823}
!165 = !{!"branch_weights", i32 423106, i32 3419717}
!166 = !{!"branch_weights", i32 2619490, i32 1223333}
!167 = !{!"branch_weights", i32 2368569, i32 1474254}
!168 = !{!"branch_weights", i32 2467871, i32 1374952}
!169 = !{!"branch_weights", i32 1981946, i32 1860877}
!170 = !{!"branch_weights", i32 1923505, i32 1919318}
!171 = !{!"function_entry_count", i64 630192}
!172 = !{i64 0, i64 65}
!173 = !{!"branch_weights", i32 2102091730, i32 -1667064350}
!174 = distinct !{!174, !138, !139}
!175 = !{!"branch_weights", i32 0, i32 7}
!176 = !{!"branch_weights", i32 7, i32 0, i32 0}
!177 = !{!"branch_weights", i32 127, i32 769}
!178 = distinct !{!178, !138, !139}
!179 = !{!"branch_weights", i32 7, i32 1}
!180 = distinct !{!180, !138, !139}
!181 = !{!"function_entry_count", i64 17276}
!182 = !{!"branch_weights", i32 3371, i32 13905}
!183 = !{!"branch_weights", i32 3389, i32 10516}
!184 = !{!"branch_weights", i32 1462, i32 15814}
!185 = !{!"branch_weights", i32 34, i32 1428}
!186 = !{!143, !122, i64 112}
!187 = !{!"VP", i32 0, i64 34, i64 8154125787915132613, i64 34}
!188 = !{!"branch_weights", i32 17276, i32 0}
!189 = !{!"branch_weights", i32 4781, i32 82591775}
!190 = distinct !{!190, !138, !139}
!191 = !{i8 0, i8 2}
!192 = distinct !{!192, !138, !139}
!193 = distinct !{!193, !138, !139}
!194 = !{!"branch_weights", i32 11633, i32 5643}
!195 = !{!"branch_weights", i32 10978, i32 655}
!196 = !{!"branch_weights", i32 0, i32 10978}
!197 = !{!198, !123, i64 16}
!198 = !{!"", !122, i64 0, !127, i64 8, !127, i64 12, !123, i64 16}
!199 = !{!143, !122, i64 328}
!200 = distinct !{!200, !138, !139}
!201 = !{!202, !122, i64 136}
!202 = !{!"gcc_debug_hooks", !122, i64 0, !122, i64 8, !122, i64 16, !122, i64 24, !122, i64 32, !122, i64 40, !122, i64 48, !122, i64 56, !122, i64 64, !122, i64 72, !122, i64 80, !122, i64 88, !122, i64 96, !122, i64 104, !122, i64 112, !122, i64 120, !122, i64 128, !122, i64 136, !122, i64 144, !122, i64 152, !122, i64 160, !122, i64 168, !122, i64 176, !122, i64 184, !122, i64 192, !122, i64 200, !122, i64 208, !122, i64 216, !122, i64 224, !122, i64 232, !122, i64 240, !127, i64 248}
!203 = distinct !{!203, !138, !139}
!204 = !{!198, !122, i64 0}
!205 = !{!198, !127, i64 8}
!206 = !{!207, !128, i64 8}
!207 = !{!"rlimit", !128, i64 0, !128, i64 8}
!208 = !{!207, !128, i64 0}
!209 = !{!151, !123, i64 3541}
!210 = distinct !{!210, !138, !139}
!211 = !{!143, !122, i64 0}
!212 = !{!128, !128, i64 0}
!213 = !{!214, !122, i64 1376}
!214 = !{!"gcc_target", !215, i64 0, !217, i64 368, !218, i64 664, !127, i64 744, !122, i64 752, !122, i64 760, !122, i64 768, !122, i64 776, !122, i64 784, !122, i64 792, !122, i64 800, !122, i64 808, !122, i64 816, !122, i64 824, !122, i64 832, !122, i64 840, !122, i64 848, !122, i64 856, !122, i64 864, !122, i64 872, !122, i64 880, !122, i64 888, !122, i64 896, !122, i64 904, !122, i64 912, !122, i64 920, !122, i64 928, !122, i64 936, !122, i64 944, !122, i64 952, !122, i64 960, !122, i64 968, !122, i64 976, !122, i64 984, !122, i64 992, !122, i64 1000, !122, i64 1008, !122, i64 1016, !122, i64 1024, !122, i64 1032, !122, i64 1040, !122, i64 1048, !122, i64 1056, !128, i64 1064, !128, i64 1072, !122, i64 1080, !122, i64 1088, !122, i64 1096, !122, i64 1104, !122, i64 1112, !122, i64 1120, !122, i64 1128, !122, i64 1136, !122, i64 1144, !122, i64 1152, !122, i64 1160, !122, i64 1168, !219, i64 1176, !122, i64 1232, !122, i64 1240, !122, i64 1248, !122, i64 1256, !122, i64 1264, !122, i64 1272, !122, i64 1280, !122, i64 1288, !122, i64 1296, !122, i64 1304, !122, i64 1312, !122, i64 1320, !122, i64 1328, !122, i64 1336, !122, i64 1344, !122, i64 1352, !122, i64 1360, !122, i64 1368, !122, i64 1376, !122, i64 1384, !122, i64 1392, !122, i64 1400, !122, i64 1408, !122, i64 1416, !122, i64 1424, !122, i64 1432, !122, i64 1440, !122, i64 1448, !122, i64 1456, !128, i64 1464, !220, i64 1472, !122, i64 1664, !122, i64 1672, !122, i64 1680, !122, i64 1688, !122, i64 1696, !122, i64 1704, !122, i64 1712, !122, i64 1720, !122, i64 1728, !122, i64 1736, !122, i64 1744, !122, i64 1752, !122, i64 1760, !122, i64 1768, !122, i64 1776, !221, i64 1784, !222, i64 1792, !223, i64 1896, !224, i64 1968, !122, i64 2016, !123, i64 2024, !123, i64 2025, !123, i64 2026, !123, i64 2027, !123, i64 2028, !123, i64 2029, !123, i64 2030, !123, i64 2031, !123, i64 2032, !123, i64 2033, !123, i64 2034, !123, i64 2035}
!215 = !{!"asm_out", !122, i64 0, !122, i64 8, !122, i64 16, !216, i64 24, !216, i64 56, !122, i64 88, !122, i64 96, !122, i64 104, !122, i64 112, !122, i64 120, !122, i64 128, !122, i64 136, !122, i64 144, !122, i64 152, !122, i64 160, !122, i64 168, !122, i64 176, !122, i64 184, !122, i64 192, !122, i64 200, !122, i64 208, !122, i64 216, !122, i64 224, !122, i64 232, !122, i64 240, !122, i64 248, !122, i64 256, !122, i64 264, !122, i64 272, !122, i64 280, !122, i64 288, !122, i64 296, !122, i64 304, !122, i64 312, !122, i64 320, !122, i64 328, !122, i64 336, !122, i64 344, !122, i64 352, !122, i64 360}
!216 = !{!"asm_int_op", !122, i64 0, !122, i64 8, !122, i64 16, !122, i64 24}
!217 = !{!"sched", !122, i64 0, !122, i64 8, !122, i64 16, !122, i64 24, !122, i64 32, !122, i64 40, !122, i64 48, !122, i64 56, !122, i64 64, !122, i64 72, !122, i64 80, !122, i64 88, !122, i64 96, !122, i64 104, !122, i64 112, !122, i64 120, !122, i64 128, !122, i64 136, !122, i64 144, !122, i64 152, !122, i64 160, !122, i64 168, !122, i64 176, !122, i64 184, !122, i64 192, !122, i64 200, !122, i64 208, !122, i64 216, !122, i64 224, !122, i64 232, !122, i64 240, !122, i64 248, !122, i64 256, !122, i64 264, !122, i64 272, !122, i64 280, !122, i64 288}
!218 = !{!"vectorize", !122, i64 0, !122, i64 8, !122, i64 16, !122, i64 24, !122, i64 32, !122, i64 40, !122, i64 48, !122, i64 56, !122, i64 64, !122, i64 72}
!219 = !{!"addr_space", !122, i64 0, !122, i64 8, !122, i64 16, !122, i64 24, !122, i64 32, !122, i64 40, !122, i64 48}
!220 = !{!"calls", !122, i64 0, !122, i64 8, !122, i64 16, !122, i64 24, !122, i64 32, !122, i64 40, !122, i64 48, !122, i64 56, !122, i64 64, !122, i64 72, !122, i64 80, !122, i64 88, !122, i64 96, !122, i64 104, !122, i64 112, !122, i64 120, !122, i64 128, !122, i64 136, !122, i64 144, !122, i64 152, !122, i64 160, !122, i64 168, !122, i64 176, !122, i64 184}
!221 = !{!"c", !122, i64 0}
!222 = !{!"cxx", !122, i64 0, !122, i64 8, !122, i64 16, !122, i64 24, !122, i64 32, !122, i64 40, !122, i64 48, !122, i64 56, !122, i64 64, !122, i64 72, !122, i64 80, !122, i64 88, !122, i64 96}
!223 = !{!"emutls", !122, i64 0, !122, i64 8, !122, i64 16, !122, i64 24, !122, i64 32, !122, i64 40, !122, i64 48, !122, i64 56, !123, i64 64, !123, i64 65}
!224 = !{!"target_option_hooks", !122, i64 0, !122, i64 8, !122, i64 16, !122, i64 24, !122, i64 32, !122, i64 40}
!225 = !{!226, !127, i64 24}
!226 = !{!"cl_option", !122, i64 0, !122, i64 8, !129, i64 16, !123, i64 18, !127, i64 20, !127, i64 24, !122, i64 32, !127, i64 40, !127, i64 44}
!227 = !{!226, !122, i64 32}
!228 = !{!229, !128, i64 8}
!229 = !{!"cl_option_state", !122, i64 0, !128, i64 8, !123, i64 16}
!230 = distinct !{!230, !138, !139}
!231 = !{!229, !122, i64 0}
!232 = distinct !{!232, !138, !139}
!233 = !{!226, !122, i64 0}
!234 = distinct !{!234, !138, !139}
!235 = !{!236, !122, i64 8}
!236 = !{!"", !122, i64 0, !122, i64 8, !127, i64 16, !122, i64 24, !122, i64 32}
!237 = !{!153, !123, i64 50}
!238 = !{!236, !122, i64 24}
!239 = !{!"toplev.c;backend_init_target"}
!240 = !{!"toplev.c;lang_dependent_init_target"}
!241 = !{!"branch_weights", i32 0, i32 25}
!242 = !{!"branch_weights", i32 1, i32 24}
!243 = distinct !{!243, !138, !139}
!244 = !{!153, !122, i64 40}
!245 = !{!246, !122, i64 0}
!246 = !{!"host_hooks", !122, i64 0, !122, i64 8, !122, i64 16, !122, i64 24}
!247 = !{!"VP", i32 0, i64 1, i64 -7047677361869380989, i64 1}
!248 = !{!249, !122, i64 48}
!249 = !{!"line_maps", !122, i64 0, !127, i64 8, !127, i64 12, !127, i64 16, !127, i64 20, !127, i64 24, !123, i64 28, !127, i64 32, !127, i64 36, !127, i64 40, !122, i64 48}
!250 = !{!251, !128, i64 0}
!251 = !{!"timeval", !128, i64 0, !128, i64 8}
!252 = !{!251, !128, i64 8}
!253 = !{!143, !122, i64 64}
!254 = !{!"VP", i32 0, i64 1, i64 -6372625176530681363, i64 1}
!255 = !{!151, !123, i64 3588}
!256 = !{!214, !128, i64 1064}
!257 = !{!214, !122, i64 1384}
!258 = !{!"VP", i32 0, i64 1, i64 588856467287548527, i64 1}
!259 = distinct !{!259, !138, !139}
!260 = distinct !{!260, !138, !139}
!261 = !{!"branch_weights", i32 0, i32 1, i32 0, i32 0}
!262 = !{!202, !122, i64 192}
!263 = !{!214, !123, i64 2025}
!264 = !{!143, !122, i64 72}
!265 = !{!"VP", i32 0, i64 1, i64 -7799120934092497360, i64 1}
!266 = !{!214, !122, i64 280}
!267 = !{!"VP", i32 0, i64 1, i64 -7874573586400866196, i64 1}
!268 = !{!214, !122, i64 320}
!269 = !{!202, !122, i64 0}
!270 = !{!"VP", i32 0, i64 1, i64 -2109509543848062546, i64 1}
!271 = !{!143, !122, i64 88}
!272 = !{!"VP", i32 0, i64 1, i64 -4375774902698394010, i64 1}
!273 = !{!143, !122, i64 336}
!274 = !{!"VP", i32 0, i64 1, i64 -7046300221099524526, i64 1}
!275 = !{!214, !123, i64 2028}
!276 = !{!214, !122, i64 296}
!277 = !{!"VP", i32 0, i64 1, i64 5466119245751428096, i64 1}
!278 = !{!202, !122, i64 8}
!279 = !{!214, !122, i64 288}
!280 = !{!"VP", i32 0, i64 1, i64 5404796992859484693, i64 1}
!281 = !{!143, !122, i64 80}
!282 = !{!"VP", i32 0, i64 1, i64 -784444393784578288, i64 1}
!283 = !{!"function_entry_count", i64 2}
!284 = !{!"toplev.c;realloc_for_line_map"}
