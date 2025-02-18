; ModuleID = 'c-format.c'
source_filename = "c-format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.format_kind_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.target_ovr_attr = type { ptr, ptr }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.format_length_info = type { ptr, i32, i32, ptr, i32, i32, i32 }
%struct.format_flag_spec = type { i32, i32, i32, ptr, ptr, i32 }
%struct.format_flag_pair = type { i32, i32, i32, i32 }
%struct.format_char_info = type { ptr, i32, i32, [12 x %struct.format_type_detail], ptr, ptr, ptr }
%struct.format_type_detail = type { i32, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.format_check_context = type { ptr, ptr, ptr }
%struct.format_check_results = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.function_format_info = type { i32, i64, i64 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.format_wanted_type = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@warn_format = external local_unnamed_addr global i32, align 4
@warn_format_extra_args = external local_unnamed_addr global i32, align 4
@warn_format_zero_length = external local_unnamed_addr global i32, align 4
@warn_format_contains_nul = external local_unnamed_addr global i32, align 4
@warn_format_nonliteral = external local_unnamed_addr global i32, align 4
@warn_format_security = external local_unnamed_addr global i32, align 4
@warn_format_y2k = external local_unnamed_addr global i32, align 4
@warn_nonnull = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [41 x i8] c"format string has invalid operand number\00", align 1
@integer_types = external global [11 x ptr], align 16
@.str.1 = private unnamed_addr constant [37 x i8] c"function does not return string type\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@warn_missing_format_attribute = external local_unnamed_addr global i32, align 4
@format_types = internal unnamed_addr global ptr @format_types_orig, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [62 x i8] c"function might be possible candidate for %qs format attribute\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"args to be formatted is not %<...%>\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"strftime formats cannot format arguments\00", align 1
@dynamic_format_types = internal unnamed_addr global ptr null, align 8
@format_types_orig = internal constant [10 x %struct.format_kind_info] [%struct.format_kind_info { ptr @.str.14, ptr @printf_length_specs, ptr @print_char_table, ptr @.str.77, ptr null, ptr @printf_flag_specs, ptr @printf_flag_pairs, i32 89, i32 119, i32 0, i32 112, i32 0, i32 76, i32 0, ptr getelementptr (i8, ptr @integer_types, i64 40), ptr getelementptr (i8, ptr @integer_types, i64 40) }, %struct.format_kind_info { ptr @.str.78, ptr @asm_fprintf_length_specs, ptr @asm_fprintf_char_table, ptr @.str.79, ptr null, ptr @asm_fprintf_flag_specs, ptr @asm_fprintf_flag_pairs, i32 65, i32 119, i32 0, i32 112, i32 0, i32 76, i32 0, ptr null, ptr null }, %struct.format_kind_info { ptr @.str.80, ptr @gcc_diag_length_specs, ptr @gcc_diag_char_table, ptr @.str.81, ptr null, ptr @gcc_diag_flag_specs, ptr @gcc_diag_flag_pairs, i32 1, i32 0, i32 0, i32 112, i32 0, i32 76, i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 40) }, %struct.format_kind_info { ptr @.str.82, ptr @gcc_diag_length_specs, ptr @gcc_tdiag_char_table, ptr @.str.81, ptr null, ptr @gcc_diag_flag_specs, ptr @gcc_diag_flag_pairs, i32 1, i32 0, i32 0, i32 112, i32 0, i32 76, i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 40) }, %struct.format_kind_info { ptr @.str.83, ptr @gcc_diag_length_specs, ptr @gcc_cdiag_char_table, ptr @.str.81, ptr null, ptr @gcc_diag_flag_specs, ptr @gcc_diag_flag_pairs, i32 1, i32 0, i32 0, i32 112, i32 0, i32 76, i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 40) }, %struct.format_kind_info { ptr @.str.84, ptr @gcc_diag_length_specs, ptr @gcc_cxxdiag_char_table, ptr @.str.85, ptr null, ptr @gcc_cxxdiag_flag_specs, ptr @gcc_diag_flag_pairs, i32 1, i32 0, i32 0, i32 112, i32 0, i32 76, i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 40) }, %struct.format_kind_info { ptr @.str.86, ptr @gcc_gfc_length_specs, ptr @gcc_gfc_char_table, ptr @.str.87, ptr null, ptr null, ptr @gcc_gfc_flag_pairs, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null }, %struct.format_kind_info { ptr @.str.16, ptr @scanf_length_specs, ptr @scan_char_table, ptr @.str.88, ptr null, ptr @scanf_flag_specs, ptr @scanf_flag_pairs, i32 179, i32 119, i32 0, i32 0, i32 42, i32 76, i32 109, ptr null, ptr null }, %struct.format_kind_info { ptr @.str.18, ptr null, ptr @time_char_table, ptr @.str.89, ptr @.str.90, ptr @strftime_flag_specs, ptr @strftime_flag_pairs, i32 4, i32 119, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null }, %struct.format_kind_info { ptr @.str.20, ptr @strfmon_length_specs, ptr @monetary_char_table, ptr @.str.91, ptr null, ptr @strfmon_flag_specs, ptr @strfmon_flag_pairs, i32 1, i32 119, i32 35, i32 112, i32 0, i32 76, i32 0, ptr null, ptr null }], align 16
@.str.6 = private unnamed_addr constant [11 x i8] c"c-format.c\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"format string argument not a string type\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"unrecognized format specifier\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"%qE is an unrecognized format function type\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"%<...%> has invalid operand number\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"format string argument follows the args to be formatted\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"gcc_\00", align 1
@gnu_target_overrides_format_attributes = internal unnamed_addr constant [5 x %struct.target_ovr_attr] [%struct.target_ovr_attr { ptr @.str.14, ptr @.str.15 }, %struct.target_ovr_attr { ptr @.str.16, ptr @.str.17 }, %struct.target_ovr_attr { ptr @.str.18, ptr @.str.19 }, %struct.target_ovr_attr { ptr @.str.20, ptr @.str.21 }, %struct.target_ovr_attr zeroinitializer], align 16
@.str.14 = private unnamed_addr constant [11 x i8] c"gnu_printf\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"printf\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"gnu_scanf\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"scanf\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"gnu_strftime\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"strftime\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"gnu_strfmon\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"strfmon\00", align 1
@.str.22 = private unnamed_addr constant [55 x i8] c"format not a string literal, format string not checked\00", align 1
@.str.23 = private unnamed_addr constant [52 x i8] c"format not a string literal and no format arguments\00", align 1
@.str.24 = private unnamed_addr constant [56 x i8] c"format not a string literal, argument types not checked\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"too many arguments for format\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"unused arguments in $-style format\00", align 1
@.str.27 = private unnamed_addr constant [29 x i8] c"zero-length %s format string\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"format is a wide character string\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"unterminated format string\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"format_wanted_type pool\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"embedded %<\\0%> in format\00", align 1
@.str.32 = private unnamed_addr constant [35 x i8] c"spurious trailing %<%%%> in format\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"repeated %s in format\00", align 1
@.str.34 = private unnamed_addr constant [48 x i8] c"missing fill character at end of strfmon format\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"too few arguments for format\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"field width\00", align 1
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@.str.37 = private unnamed_addr constant [24 x i8] c"zero width in %s format\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"empty left precision in %s format\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"field precision\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"empty precision in %s format\00", align 1
@flag_isoc99 = external local_unnamed_addr global i32, align 4
@pedantic = external local_unnamed_addr global i32, align 4
@warn_long_long = external local_unnamed_addr global i32, align 4
@c_language = external local_unnamed_addr global i32, align 4
@flag_isoc94 = external local_unnamed_addr global i32, align 4
@.str.41 = private unnamed_addr constant [47 x i8] c"%s does not support the %qs %s length modifier\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"ISO C++\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"ISO C\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"ISO C90\00", align 1
@.str.45 = private unnamed_addr constant [39 x i8] c"conversion lacks type at end of format\00", align 1
@.str.46 = private unnamed_addr constant [48 x i8] c"unknown conversion type character %qc in format\00", align 1
@.str.47 = private unnamed_addr constant [49 x i8] c"unknown conversion type character 0x%x in format\00", align 1
@.str.48 = private unnamed_addr constant [43 x i8] c"%s does not support the %<%%%c%> %s format\00", align 1
@.str.49 = private unnamed_addr constant [32 x i8] c"%s used with %<%%%c%> %s format\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"%s does not support %s\00", align 1
@.str.51 = private unnamed_addr constant [51 x i8] c"%s does not support %s with the %<%%%c%> %s format\00", align 1
@.str.52 = private unnamed_addr constant [42 x i8] c"%s ignored with %s and %<%%%c%> %s format\00", align 1
@.str.53 = private unnamed_addr constant [32 x i8] c"%s ignored with %s in %s format\00", align 1
@.str.54 = private unnamed_addr constant [50 x i8] c"use of %s and %s together with %<%%%c%> %s format\00", align 1
@.str.55 = private unnamed_addr constant [39 x i8] c"use of %s and %s together in %s format\00", align 1
@.str.56 = private unnamed_addr constant [59 x i8] c"%<%%%c%> yields only last 2 digits of year in some locales\00", align 1
@.str.57 = private unnamed_addr constant [43 x i8] c"%<%%%c%> yields only last 2 digits of year\00", align 1
@.str.58 = private unnamed_addr constant [36 x i8] c"no closing %<]%> for %<%%[%> format\00", align 1
@.str.59 = private unnamed_addr constant [51 x i8] c"use of %qs length modifier with %qc type character\00", align 1
@.str.60 = private unnamed_addr constant [45 x i8] c"%s does not support the %<%%%s%c%> %s format\00", align 1
@global_trees = external global [131 x ptr], align 16
@.str.61 = private unnamed_addr constant [52 x i8] c"operand number specified with suppressed assignment\00", align 1
@.str.62 = private unnamed_addr constant [55 x i8] c"operand number specified for format taking no argument\00", align 1
@.str.63 = private unnamed_addr constant [35 x i8] c"missing $ operand number in format\00", align 1
@dollar_first_arg_num = internal unnamed_addr global i32 0, align 4
@dollar_arguments_count = internal unnamed_addr global i32 0, align 4
@dollar_max_arg_used = internal unnamed_addr global i32 0, align 4
@dollar_format_warned = internal unnamed_addr global i1 false, align 4
@dollar_arguments_alloc = internal unnamed_addr global i32 0, align 4
@dollar_arguments_used = internal unnamed_addr global ptr null, align 8
@dollar_arguments_pointer_p = internal unnamed_addr global ptr null, align 8
@.str.64 = private unnamed_addr constant [68 x i8] c"format argument %d unused before used argument %d in $-style format\00", align 1
@.str.65 = private unnamed_addr constant [48 x i8] c"%s does not support %%n$ operand number formats\00", align 1
@.str.66 = private unnamed_addr constant [38 x i8] c"operand number out of range in format\00", align 1
@.str.67 = private unnamed_addr constant [52 x i8] c"format argument %d used more than once in %s format\00", align 1
@.str.68 = private unnamed_addr constant [58 x i8] c"$ operand number used after format without operand number\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.69 = private unnamed_addr constant [43 x i8] c"writing through null pointer (argument %d)\00", align 1
@.str.70 = private unnamed_addr constant [43 x i8] c"reading through null pointer (argument %d)\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.71 = private unnamed_addr constant [43 x i8] c"writing into constant object (argument %d)\00", align 1
@.str.72 = private unnamed_addr constant [55 x i8] c"extra type qualifiers in format argument (argument %d)\00", align 1
@.str.73 = private unnamed_addr constant [59 x i8] c"%s should have type %<%s%s%>, but argument %d has type %qT\00", align 1
@.str.74 = private unnamed_addr constant [65 x i8] c"format %q.*s expects type %<%s%s%>, but argument %d has type %qT\00", align 1
@.str.75 = private unnamed_addr constant [59 x i8] c"%s should have type %<%T%s%>, but argument %d has type %qT\00", align 1
@.str.76 = private unnamed_addr constant [65 x i8] c"format %q.*s expects type %<%T%s%>, but argument %d has type %qT\00", align 1
@printf_length_specs = internal constant [11 x %struct.format_length_info] [%struct.format_length_info { ptr @.str.92, i32 2, i32 0, ptr @.str.93, i32 1, i32 3, i32 0 }, %struct.format_length_info { ptr @.str.94, i32 3, i32 0, ptr @.str.95, i32 4, i32 2, i32 0 }, %struct.format_length_info { ptr @.str.96, i32 4, i32 4, ptr null, i32 0, i32 0, i32 0 }, %struct.format_length_info { ptr @.str.97, i32 5, i32 0, ptr null, i32 0, i32 0, i32 0 }, %struct.format_length_info { ptr @.str.98, i32 6, i32 3, ptr null, i32 0, i32 0, i32 0 }, %struct.format_length_info { ptr @.str.99, i32 6, i32 4, ptr null, i32 0, i32 0, i32 0 }, %struct.format_length_info { ptr @.str.100, i32 7, i32 3, ptr null, i32 0, i32 0, i32 0 }, %struct.format_length_info { ptr @.str.101, i32 8, i32 3, ptr null, i32 0, i32 0, i32 0 }, %struct.format_length_info { ptr @.str.102, i32 9, i32 4, ptr null, i32 0, i32 0, i32 0 }, %struct.format_length_info { ptr @.str.103, i32 10, i32 4, ptr @.str.104, i32 11, i32 4, i32 0 }, %struct.format_length_info zeroinitializer], align 16
@.str.77 = private unnamed_addr constant [8 x i8] c" +#0-'I\00", align 1
@printf_flag_specs = internal constant [11 x %struct.format_flag_spec] [%struct.format_flag_spec { i32 32, i32 0, i32 0, ptr @.str.143, ptr @.str.144, i32 0 }, %struct.format_flag_spec { i32 43, i32 0, i32 0, ptr @.str.145, ptr @.str.146, i32 0 }, %struct.format_flag_spec { i32 35, i32 0, i32 0, ptr @.str.147, ptr @.str.148, i32 0 }, %struct.format_flag_spec { i32 48, i32 0, i32 0, ptr @.str.149, ptr @.str.150, i32 0 }, %struct.format_flag_spec { i32 45, i32 0, i32 0, ptr @.str.151, ptr @.str.152, i32 0 }, %struct.format_flag_spec { i32 39, i32 0, i32 0, ptr @.str.153, ptr @.str.154, i32 4 }, %struct.format_flag_spec { i32 73, i32 0, i32 0, ptr @.str.155, ptr @.str.156, i32 4 }, %struct.format_flag_spec { i32 119, i32 0, i32 0, ptr @.str.36, ptr @.str.157, i32 0 }, %struct.format_flag_spec { i32 112, i32 0, i32 0, ptr @.str.158, ptr @.str.159, i32 0 }, %struct.format_flag_spec { i32 76, i32 0, i32 0, ptr @.str.160, ptr @.str.161, i32 0 }, %struct.format_flag_spec zeroinitializer], align 16
@printf_flag_pairs = internal constant [4 x %struct.format_flag_pair] [%struct.format_flag_pair { i32 32, i32 43, i32 1, i32 0 }, %struct.format_flag_pair { i32 48, i32 45, i32 1, i32 0 }, %struct.format_flag_pair { i32 48, i32 112, i32 1, i32 105 }, %struct.format_flag_pair zeroinitializer], align 16
@.str.78 = private unnamed_addr constant [12 x i8] c"asm_fprintf\00", align 1
@asm_fprintf_length_specs = internal constant [3 x %struct.format_length_info] [%struct.format_length_info { ptr @.str.94, i32 3, i32 0, ptr @.str.95, i32 4, i32 0, i32 0 }, %struct.format_length_info { ptr @.str.162, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0 }, %struct.format_length_info zeroinitializer], align 16
@.str.79 = private unnamed_addr constant [6 x i8] c" +#0-\00", align 1
@asm_fprintf_flag_specs = internal constant [9 x %struct.format_flag_spec] [%struct.format_flag_spec { i32 32, i32 0, i32 0, ptr @.str.143, ptr @.str.144, i32 0 }, %struct.format_flag_spec { i32 43, i32 0, i32 0, ptr @.str.145, ptr @.str.146, i32 0 }, %struct.format_flag_spec { i32 35, i32 0, i32 0, ptr @.str.147, ptr @.str.148, i32 0 }, %struct.format_flag_spec { i32 48, i32 0, i32 0, ptr @.str.149, ptr @.str.150, i32 0 }, %struct.format_flag_spec { i32 45, i32 0, i32 0, ptr @.str.151, ptr @.str.152, i32 0 }, %struct.format_flag_spec { i32 119, i32 0, i32 0, ptr @.str.36, ptr @.str.157, i32 0 }, %struct.format_flag_spec { i32 112, i32 0, i32 0, ptr @.str.158, ptr @.str.159, i32 0 }, %struct.format_flag_spec { i32 76, i32 0, i32 0, ptr @.str.160, ptr @.str.161, i32 0 }, %struct.format_flag_spec zeroinitializer], align 16
@asm_fprintf_flag_pairs = internal constant [4 x %struct.format_flag_pair] [%struct.format_flag_pair { i32 32, i32 43, i32 1, i32 0 }, %struct.format_flag_pair { i32 48, i32 45, i32 1, i32 0 }, %struct.format_flag_pair { i32 48, i32 112, i32 1, i32 105 }, %struct.format_flag_pair zeroinitializer], align 16
@.str.80 = private unnamed_addr constant [9 x i8] c"gcc_diag\00", align 1
@gcc_diag_length_specs = internal constant [3 x %struct.format_length_info] [%struct.format_length_info { ptr @.str.94, i32 3, i32 0, ptr @.str.95, i32 4, i32 0, i32 0 }, %struct.format_length_info { ptr @.str.162, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0 }, %struct.format_length_info zeroinitializer], align 16
@.str.81 = private unnamed_addr constant [3 x i8] c"q+\00", align 1
@gcc_diag_flag_specs = internal constant [5 x %struct.format_flag_spec] [%struct.format_flag_spec { i32 43, i32 0, i32 0, ptr @.str.145, ptr @.str.146, i32 0 }, %struct.format_flag_spec { i32 113, i32 0, i32 0, ptr @.str.176, ptr @.str.177, i32 0 }, %struct.format_flag_spec { i32 112, i32 0, i32 0, ptr @.str.158, ptr @.str.159, i32 0 }, %struct.format_flag_spec { i32 76, i32 0, i32 0, ptr @.str.160, ptr @.str.161, i32 0 }, %struct.format_flag_spec zeroinitializer], align 16
@gcc_diag_flag_pairs = internal constant [1 x %struct.format_flag_pair] zeroinitializer, align 16
@.str.82 = private unnamed_addr constant [10 x i8] c"gcc_tdiag\00", align 1
@.str.83 = private unnamed_addr constant [10 x i8] c"gcc_cdiag\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"gcc_cxxdiag\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"q+#\00", align 1
@gcc_cxxdiag_flag_specs = internal constant [6 x %struct.format_flag_spec] [%struct.format_flag_spec { i32 43, i32 0, i32 0, ptr @.str.145, ptr @.str.146, i32 0 }, %struct.format_flag_spec { i32 35, i32 0, i32 0, ptr @.str.147, ptr @.str.148, i32 0 }, %struct.format_flag_spec { i32 113, i32 0, i32 0, ptr @.str.176, ptr @.str.177, i32 0 }, %struct.format_flag_spec { i32 112, i32 0, i32 0, ptr @.str.158, ptr @.str.159, i32 0 }, %struct.format_flag_spec { i32 76, i32 0, i32 0, ptr @.str.160, ptr @.str.161, i32 0 }, %struct.format_flag_spec zeroinitializer], align 16
@.str.86 = private unnamed_addr constant [8 x i8] c"gcc_gfc\00", align 1
@gcc_gfc_length_specs = internal constant [2 x %struct.format_length_info] [%struct.format_length_info { ptr @.str.94, i32 3, i32 0, ptr null, i32 0, i32 0, i32 0 }, %struct.format_length_info zeroinitializer], align 16
@.str.87 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@gcc_gfc_flag_pairs = internal constant [1 x %struct.format_flag_pair] zeroinitializer, align 16
@scanf_length_specs = internal constant [10 x %struct.format_length_info] [%struct.format_length_info { ptr @.str.92, i32 2, i32 0, ptr @.str.93, i32 1, i32 3, i32 0 }, %struct.format_length_info { ptr @.str.94, i32 3, i32 0, ptr @.str.95, i32 4, i32 2, i32 0 }, %struct.format_length_info { ptr @.str.96, i32 4, i32 4, ptr null, i32 0, i32 0, i32 0 }, %struct.format_length_info { ptr @.str.97, i32 5, i32 0, ptr null, i32 0, i32 0, i32 0 }, %struct.format_length_info { ptr @.str.98, i32 6, i32 3, ptr null, i32 0, i32 0, i32 0 }, %struct.format_length_info { ptr @.str.100, i32 7, i32 3, ptr null, i32 0, i32 0, i32 0 }, %struct.format_length_info { ptr @.str.101, i32 8, i32 3, ptr null, i32 0, i32 0, i32 0 }, %struct.format_length_info { ptr @.str.102, i32 9, i32 4, ptr null, i32 0, i32 0, i32 0 }, %struct.format_length_info { ptr @.str.103, i32 10, i32 4, ptr @.str.104, i32 11, i32 4, i32 0 }, %struct.format_length_info zeroinitializer], align 16
@.str.88 = private unnamed_addr constant [4 x i8] c"*'I\00", align 1
@scanf_flag_specs = internal constant [8 x %struct.format_flag_spec] [%struct.format_flag_spec { i32 42, i32 0, i32 0, ptr @.str.196, ptr @.str.197, i32 0 }, %struct.format_flag_spec { i32 97, i32 0, i32 0, ptr @.str.198, ptr @.str.199, i32 4 }, %struct.format_flag_spec { i32 109, i32 0, i32 0, ptr @.str.200, ptr @.str.201, i32 4 }, %struct.format_flag_spec { i32 119, i32 0, i32 0, ptr @.str.36, ptr @.str.202, i32 0 }, %struct.format_flag_spec { i32 76, i32 0, i32 0, ptr @.str.160, ptr @.str.203, i32 0 }, %struct.format_flag_spec { i32 39, i32 0, i32 0, ptr @.str.153, ptr @.str.204, i32 4 }, %struct.format_flag_spec { i32 73, i32 0, i32 0, ptr @.str.155, ptr @.str.205, i32 4 }, %struct.format_flag_spec zeroinitializer], align 16
@scanf_flag_pairs = internal constant [3 x %struct.format_flag_pair] [%struct.format_flag_pair { i32 42, i32 76, i32 0, i32 0 }, %struct.format_flag_pair { i32 97, i32 109, i32 0, i32 0 }, %struct.format_flag_pair zeroinitializer], align 16
@time_char_table = internal constant [20 x %struct.format_char_info] [%struct.format_char_info { ptr @.str.206, i32 0, i32 0, [12 x %struct.format_type_detail] zeroinitializer, ptr @.str.207, ptr @.str.87, ptr null }, %struct.format_char_info { ptr @.str.208, i32 0, i32 0, [12 x %struct.format_type_detail] zeroinitializer, ptr @.str.209, ptr @.str.210, ptr null }, %struct.format_char_info { ptr @.str.211, i32 0, i32 0, [12 x %struct.format_type_detail] zeroinitializer, ptr @.str.212, ptr @.str.87, ptr null }, %struct.format_char_info { ptr @.str.101, i32 0, i32 0, [12 x %struct.format_type_detail] zeroinitializer, ptr @.str.212, ptr @.str.213, ptr null }, %struct.format_char_info { ptr @.str.132, i32 0, i32 0, [12 x %struct.format_type_detail] zeroinitializer, ptr @.str.214, ptr @.str.87, ptr null }, %struct.format_char_info { ptr @.str.215, i32 0, i32 0, [12 x %struct.format_type_detail] zeroinitializer, ptr @.str.209, ptr @.str.87, ptr null }, %struct.format_char_info { ptr @.str.216, i32 0, i32 0, [12 x %struct.format_type_detail] zeroinitializer, ptr @.str.217, ptr @.str.218, ptr null }, %struct.format_char_info { ptr @.str.219, i32 0, i32 0, [12 x %struct.format_type_detail] zeroinitializer, ptr @.str.220, ptr @.str.213, ptr null }, %struct.format_char_info { ptr @.str.221, i32 0, i32 0, [12 x %struct.format_type_detail] zeroinitializer, ptr @.str.87, ptr @.str.87, ptr null }, %struct.format_char_info { ptr @.str.138, i32 0, i32 3, [12 x %struct.format_type_detail] zeroinitializer, ptr @.str.220, ptr @.str.213, ptr null }, %struct.format_char_info { ptr @.str.103, i32 0, i32 3, [12 x %struct.format_type_detail] zeroinitializer, ptr @.str.87, ptr @.str.222, ptr null }, %struct.format_char_info { ptr @.str.223, i32 0, i32 3, [12 x %struct.format_type_detail] zeroinitializer, ptr @.str.212, ptr @.str.87, ptr null }, %struct.format_char_info { ptr @.str.224, i32 0, i32 3, [12 x %struct.format_type_detail] zeroinitializer, ptr @.str.87, ptr @.str.87, ptr null }, %struct.format_char_info { ptr @.str.225, i32 0, i32 3, [12 x %struct.format_type_detail] zeroinitializer, ptr @.str.226, ptr @.str.227, ptr null }, %struct.format_char_info { ptr @.str.228, i32 0, i32 3, [12 x %struct.format_type_detail] zeroinitializer, ptr @.str.212, ptr @.str.213, ptr null }, %struct.format_char_info { ptr @.str.92, i32 0, i32 3, [12 x %struct.format_type_detail] zeroinitializer, ptr @.str.207, ptr @.str.87, ptr null }, %struct.format_char_info { ptr @.str.98, i32 0, i32 3, [12 x %struct.format_type_detail] zeroinitializer, ptr @.str.165, ptr @.str.213, ptr null }, %struct.format_char_info { ptr @.str.229, i32 0, i32 4, [12 x %struct.format_type_detail] zeroinitializer, ptr @.str.212, ptr @.str.87, ptr null }, %struct.format_char_info { ptr @.str.230, i32 0, i32 4, [12 x %struct.format_type_detail] zeroinitializer, ptr @.str.87, ptr @.str.87, ptr null }, %struct.format_char_info zeroinitializer], align 16
@.str.89 = private unnamed_addr constant [6 x i8] c"_-0^#\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"EO\00", align 1
@strftime_flag_specs = internal constant [10 x %struct.format_flag_spec] [%struct.format_flag_spec { i32 95, i32 0, i32 0, ptr @.str.231, ptr @.str.232, i32 4 }, %struct.format_flag_spec { i32 45, i32 0, i32 0, ptr @.str.151, ptr @.str.233, i32 4 }, %struct.format_flag_spec { i32 48, i32 0, i32 0, ptr @.str.149, ptr @.str.234, i32 4 }, %struct.format_flag_spec { i32 94, i32 0, i32 0, ptr @.str.235, ptr @.str.236, i32 4 }, %struct.format_flag_spec { i32 35, i32 0, i32 0, ptr @.str.147, ptr @.str.237, i32 4 }, %struct.format_flag_spec { i32 119, i32 0, i32 0, ptr @.str.36, ptr @.str.238, i32 4 }, %struct.format_flag_spec { i32 69, i32 0, i32 0, ptr @.str.239, ptr @.str.240, i32 3 }, %struct.format_flag_spec { i32 79, i32 0, i32 0, ptr @.str.241, ptr @.str.242, i32 3 }, %struct.format_flag_spec { i32 79, i32 111, i32 0, ptr null, ptr @.str.243, i32 4 }, %struct.format_flag_spec zeroinitializer], align 16
@strftime_flag_pairs = internal constant [6 x %struct.format_flag_pair] [%struct.format_flag_pair { i32 69, i32 79, i32 0, i32 0 }, %struct.format_flag_pair { i32 95, i32 45, i32 0, i32 0 }, %struct.format_flag_pair { i32 95, i32 48, i32 0, i32 0 }, %struct.format_flag_pair { i32 45, i32 48, i32 0, i32 0 }, %struct.format_flag_pair { i32 94, i32 35, i32 0, i32 0 }, %struct.format_flag_pair zeroinitializer], align 16
@strfmon_length_specs = internal constant [2 x %struct.format_length_info] [%struct.format_length_info { ptr @.str.97, i32 5, i32 0, ptr null, i32 0, i32 0, i32 0 }, %struct.format_length_info zeroinitializer], align 16
@monetary_char_table = internal constant [2 x %struct.format_char_info] [%struct.format_char_info { ptr @.str.244, i32 0, i32 0, [12 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 256) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 264) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], ptr @.str.245, ptr @.str.87, ptr null }, %struct.format_char_info zeroinitializer], align 16
@.str.91 = private unnamed_addr constant [7 x i8] c"=^+(!-\00", align 1
@strfmon_flag_specs = internal constant [11 x %struct.format_flag_spec] [%struct.format_flag_spec { i32 61, i32 0, i32 1, ptr @.str.246, ptr @.str.247, i32 0 }, %struct.format_flag_spec { i32 94, i32 0, i32 0, ptr @.str.235, ptr @.str.248, i32 0 }, %struct.format_flag_spec { i32 43, i32 0, i32 0, ptr @.str.145, ptr @.str.249, i32 0 }, %struct.format_flag_spec { i32 40, i32 0, i32 0, ptr @.str.250, ptr @.str.251, i32 0 }, %struct.format_flag_spec { i32 33, i32 0, i32 0, ptr @.str.252, ptr @.str.253, i32 0 }, %struct.format_flag_spec { i32 45, i32 0, i32 0, ptr @.str.151, ptr @.str.254, i32 0 }, %struct.format_flag_spec { i32 119, i32 0, i32 0, ptr @.str.36, ptr @.str.255, i32 0 }, %struct.format_flag_spec { i32 35, i32 0, i32 0, ptr @.str.256, ptr @.str.257, i32 0 }, %struct.format_flag_spec { i32 112, i32 0, i32 0, ptr @.str.258, ptr @.str.259, i32 0 }, %struct.format_flag_spec { i32 76, i32 0, i32 0, ptr @.str.160, ptr @.str.260, i32 0 }, %struct.format_flag_spec zeroinitializer], align 16
@strfmon_flag_pairs = internal constant [2 x %struct.format_flag_pair] [%struct.format_flag_pair { i32 43, i32 40, i32 0, i32 0 }, %struct.format_flag_pair zeroinitializer], align 16
@.str.92 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"hh\00", align 1
@.str.94 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"ll\00", align 1
@.str.96 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.97 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.98 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.99 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.100 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.101 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.102 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.103 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"DD\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"di\00", align 1
@.str.106 = private unnamed_addr constant [14 x i8] c"signed size_t\00", align 1
@c_global_trees = external global [55 x ptr], align 16
@.str.107 = private unnamed_addr constant [10 x i8] c"ptrdiff_t\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"intmax_t\00", align 1
@.str.109 = private unnamed_addr constant [9 x i8] c"-wp0 +'I\00", align 1
@.str.110 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.111 = private unnamed_addr constant [4 x i8] c"oxX\00", align 1
@.str.112 = private unnamed_addr constant [7 x i8] c"size_t\00", align 1
@.str.113 = private unnamed_addr constant [19 x i8] c"unsigned ptrdiff_t\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"uintmax_t\00", align 1
@.str.115 = private unnamed_addr constant [6 x i8] c"-wp0#\00", align 1
@.str.116 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.117 = private unnamed_addr constant [7 x i8] c"-wp0'I\00", align 1
@.str.118 = private unnamed_addr constant [4 x i8] c"fgG\00", align 1
@.str.119 = private unnamed_addr constant [11 x i8] c"_Decimal32\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"_Decimal64\00", align 1
@.str.121 = private unnamed_addr constant [12 x i8] c"_Decimal128\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"-wp0 +#'I\00", align 1
@.str.123 = private unnamed_addr constant [3 x i8] c"eE\00", align 1
@.str.124 = private unnamed_addr constant [9 x i8] c"-wp0 +#I\00", align 1
@.str.125 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.126 = private unnamed_addr constant [7 x i8] c"wint_t\00", align 1
@.str.127 = private unnamed_addr constant [3 x i8] c"-w\00", align 1
@.str.128 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.129 = private unnamed_addr constant [8 x i8] c"wchar_t\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"-wp\00", align 1
@.str.131 = private unnamed_addr constant [3 x i8] c"cR\00", align 1
@.str.132 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.133 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.134 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.135 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.136 = private unnamed_addr constant [3 x i8] c"aA\00", align 1
@.str.137 = private unnamed_addr constant [8 x i8] c"-wp0 +#\00", align 1
@.str.138 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.139 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.140 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.141 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@print_char_table = internal constant <{ %struct.format_char_info, %struct.format_char_info, %struct.format_char_info, %struct.format_char_info, %struct.format_char_info, { ptr, i32, i32, <{ %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, [8 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, [8 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, %struct.format_char_info, %struct.format_char_info, %struct.format_char_info, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, %struct.format_char_info }> <{ %struct.format_char_info { ptr @.str.105, i32 0, i32 0, [12 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 40) }, %struct.format_type_detail { i32 3, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 8) }, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 24) }, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 56) }, %struct.format_type_detail { i32 2, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 72) }, %struct.format_type_detail { i32 4, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 72) }, %struct.format_type_detail { i32 3, ptr @.str.106, ptr getelementptr (i8, ptr @c_global_trees, i64 40) }, %struct.format_type_detail { i32 3, ptr @.str.107, ptr getelementptr (i8, ptr @global_trees, i64 344) }, %struct.format_type_detail { i32 3, ptr @.str.108, ptr getelementptr (i8, ptr @c_global_trees, i64 56) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], ptr @.str.109, ptr @.str.110, ptr null }, %struct.format_char_info { ptr @.str.111, i32 0, i32 0, [12 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 48) }, %struct.format_type_detail { i32 3, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 16) }, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 32) }, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 64) }, %struct.format_type_detail { i32 2, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 80) }, %struct.format_type_detail { i32 4, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 80) }, %struct.format_type_detail { i32 3, ptr @.str.112, ptr getelementptr (i8, ptr @global_trees, i64 328) }, %struct.format_type_detail { i32 3, ptr @.str.113, ptr getelementptr (i8, ptr @c_global_trees, i64 48) }, %struct.format_type_detail { i32 3, ptr @.str.114, ptr getelementptr (i8, ptr @c_global_trees, i64 64) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], ptr @.str.115, ptr @.str.110, ptr null }, %struct.format_char_info { ptr @.str.116, i32 0, i32 0, [12 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 48) }, %struct.format_type_detail { i32 3, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 16) }, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 32) }, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 64) }, %struct.format_type_detail { i32 2, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 80) }, %struct.format_type_detail { i32 4, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 80) }, %struct.format_type_detail { i32 3, ptr @.str.112, ptr getelementptr (i8, ptr @global_trees, i64 328) }, %struct.format_type_detail { i32 3, ptr @.str.113, ptr getelementptr (i8, ptr @c_global_trees, i64 48) }, %struct.format_type_detail { i32 3, ptr @.str.114, ptr getelementptr (i8, ptr @c_global_trees, i64 64) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], ptr @.str.117, ptr @.str.110, ptr null }, %struct.format_char_info { ptr @.str.118, i32 0, i32 0, [12 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 256) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 3, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 256) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 264) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 4, ptr @.str.119, ptr getelementptr (i8, ptr @global_trees, i64 392) }, %struct.format_type_detail { i32 4, ptr @.str.120, ptr getelementptr (i8, ptr @global_trees, i64 400) }, %struct.format_type_detail { i32 4, ptr @.str.121, ptr getelementptr (i8, ptr @global_trees, i64 408) }], ptr @.str.122, ptr @.str.87, ptr null }, %struct.format_char_info { ptr @.str.123, i32 0, i32 0, [12 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 256) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 3, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 256) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 264) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 4, ptr @.str.119, ptr getelementptr (i8, ptr @global_trees, i64 392) }, %struct.format_type_detail { i32 4, ptr @.str.120, ptr getelementptr (i8, ptr @global_trees, i64 400) }, %struct.format_type_detail { i32 4, ptr @.str.121, ptr getelementptr (i8, ptr @global_trees, i64 408) }], ptr @.str.124, ptr @.str.87, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, [8 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.125, i32 0, i32 0, <{ %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, [8 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 40) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 1, ptr @.str.126, ptr getelementptr (i8, ptr @c_global_trees, i64 32) }, [8 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.127, ptr @.str.87, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, [8 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.128, i32 1, i32 0, <{ %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, [8 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr @integer_types }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 1, ptr @.str.129, ptr getelementptr (i8, ptr @c_global_trees, i64 16) }, [8 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.130, ptr @.str.131, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.132, i32 1, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 304) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.127, ptr @.str.125, ptr null }, %struct.format_char_info { ptr @.str.133, i32 1, i32 0, [12 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 40) }, %struct.format_type_detail { i32 3, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 8) }, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 24) }, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 56) }, %struct.format_type_detail { i32 2, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 72) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 3, ptr @.str.106, ptr getelementptr (i8, ptr @c_global_trees, i64 40) }, %struct.format_type_detail { i32 3, ptr @.str.107, ptr getelementptr (i8, ptr @global_trees, i64 344) }, %struct.format_type_detail { i32 3, ptr @.str.108, ptr getelementptr (i8, ptr @c_global_trees, i64 56) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], ptr @.str.87, ptr @.str.134, ptr null }, %struct.format_char_info { ptr @.str.135, i32 0, i32 3, [12 x %struct.format_type_detail] [%struct.format_type_detail { i32 3, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 256) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 3, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 256) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 3, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 264) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 4, ptr @.str.119, ptr getelementptr (i8, ptr @global_trees, i64 392) }, %struct.format_type_detail { i32 4, ptr @.str.120, ptr getelementptr (i8, ptr @global_trees, i64 400) }, %struct.format_type_detail { i32 4, ptr @.str.121, ptr getelementptr (i8, ptr @global_trees, i64 408) }], ptr @.str.122, ptr @.str.87, ptr null }, %struct.format_char_info { ptr @.str.136, i32 0, i32 3, [12 x %struct.format_type_detail] [%struct.format_type_detail { i32 3, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 256) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 3, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 256) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 3, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 264) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], ptr @.str.137, ptr @.str.87, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.138, i32 0, i32 4, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 4, ptr @.str.126, ptr getelementptr (i8, ptr @c_global_trees, i64 32) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.127, ptr @.str.87, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.139, i32 1, i32 4, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 4, ptr @.str.129, ptr getelementptr (i8, ptr @c_global_trees, i64 16) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.130, ptr @.str.140, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.141, i32 0, i32 4, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 304) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.130, ptr @.str.87, ptr null }, %struct.format_char_info zeroinitializer }>, align 16
@.str.143 = private unnamed_addr constant [9 x i8] c"' ' flag\00", align 1
@.str.144 = private unnamed_addr constant [20 x i8] c"the ' ' printf flag\00", align 1
@.str.145 = private unnamed_addr constant [9 x i8] c"'+' flag\00", align 1
@.str.146 = private unnamed_addr constant [20 x i8] c"the '+' printf flag\00", align 1
@.str.147 = private unnamed_addr constant [9 x i8] c"'#' flag\00", align 1
@.str.148 = private unnamed_addr constant [20 x i8] c"the '#' printf flag\00", align 1
@.str.149 = private unnamed_addr constant [9 x i8] c"'0' flag\00", align 1
@.str.150 = private unnamed_addr constant [20 x i8] c"the '0' printf flag\00", align 1
@.str.151 = private unnamed_addr constant [9 x i8] c"'-' flag\00", align 1
@.str.152 = private unnamed_addr constant [20 x i8] c"the '-' printf flag\00", align 1
@.str.153 = private unnamed_addr constant [9 x i8] c"''' flag\00", align 1
@.str.154 = private unnamed_addr constant [20 x i8] c"the ''' printf flag\00", align 1
@.str.155 = private unnamed_addr constant [9 x i8] c"'I' flag\00", align 1
@.str.156 = private unnamed_addr constant [20 x i8] c"the 'I' printf flag\00", align 1
@.str.157 = private unnamed_addr constant [29 x i8] c"field width in printf format\00", align 1
@.str.158 = private unnamed_addr constant [10 x i8] c"precision\00", align 1
@.str.159 = private unnamed_addr constant [27 x i8] c"precision in printf format\00", align 1
@.str.160 = private unnamed_addr constant [16 x i8] c"length modifier\00", align 1
@.str.161 = private unnamed_addr constant [33 x i8] c"length modifier in printf format\00", align 1
@.str.162 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.163 = private unnamed_addr constant [7 x i8] c"-wp0 +\00", align 1
@.str.164 = private unnamed_addr constant [5 x i8] c"-wp0\00", align 1
@.str.165 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.166 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.167 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.168 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.169 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@asm_fprintf_char_table = internal constant <{ %struct.format_char_info, %struct.format_char_info, %struct.format_char_info, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, %struct.format_char_info }> <{ %struct.format_char_info { ptr @.str.105, i32 0, i32 0, [12 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 40) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 56) }, %struct.format_type_detail { i32 2, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 72) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], ptr @.str.163, ptr @.str.110, ptr null }, %struct.format_char_info { ptr @.str.111, i32 0, i32 0, [12 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 48) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 64) }, %struct.format_type_detail { i32 2, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 80) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], ptr @.str.115, ptr @.str.110, ptr null }, %struct.format_char_info { ptr @.str.116, i32 0, i32 0, [12 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 48) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 64) }, %struct.format_type_detail { i32 2, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 80) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], ptr @.str.164, ptr @.str.110, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.125, i32 0, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 40) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.127, ptr @.str.87, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.128, i32 1, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr @integer_types }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.130, ptr @.str.131, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.165, i32 0, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 304) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.87, ptr @.str.87, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.140, i32 0, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 304) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.87, ptr @.str.87, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.166, i32 0, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 304) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.87, ptr @.str.87, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.97, i32 0, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 304) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.87, ptr @.str.87, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.167, i32 0, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 304) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.87, ptr @.str.87, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.168, i32 0, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 40) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.87, ptr @.str.87, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.169, i32 0, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 304) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.87, ptr @.str.87, ptr null }, %struct.format_char_info zeroinitializer }>, align 16
@.str.171 = private unnamed_addr constant [3 x i8] c"ox\00", align 1
@.str.172 = private unnamed_addr constant [3 x i8] c"pq\00", align 1
@.str.173 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.174 = private unnamed_addr constant [4 x i8] c"<>'\00", align 1
@gcc_diag_char_table = internal constant <{ %struct.format_char_info, %struct.format_char_info, %struct.format_char_info, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, %struct.format_char_info }> <{ %struct.format_char_info { ptr @.str.105, i32 0, i32 0, [12 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 40) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 56) }, %struct.format_type_detail { i32 2, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 72) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], ptr @.str.96, ptr @.str.87, ptr null }, %struct.format_char_info { ptr @.str.171, i32 0, i32 0, [12 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 48) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 64) }, %struct.format_type_detail { i32 2, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 80) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], ptr @.str.96, ptr @.str.87, ptr null }, %struct.format_char_info { ptr @.str.116, i32 0, i32 0, [12 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 48) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 64) }, %struct.format_type_detail { i32 2, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 80) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], ptr @.str.96, ptr @.str.87, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.125, i32 0, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 40) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.96, ptr @.str.87, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.128, i32 1, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr @integer_types }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.172, ptr @.str.131, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.132, i32 1, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 304) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.96, ptr @.str.125, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.173, i32 0, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 304) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.96, ptr @.str.87, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.174, i32 0, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 304) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.87, ptr @.str.87, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.141, i32 0, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 304) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.96, ptr @.str.87, ptr null }, %struct.format_char_info zeroinitializer }>, align 16
@.str.176 = private unnamed_addr constant [9 x i8] c"'q' flag\00", align 1
@.str.177 = private unnamed_addr constant [24 x i8] c"the 'q' diagnostic flag\00", align 1
@.str.178 = private unnamed_addr constant [6 x i8] c"DFKTE\00", align 1
@gcc_tdiag_char_table = internal constant <{ %struct.format_char_info, %struct.format_char_info, %struct.format_char_info, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, %struct.format_char_info }> <{ %struct.format_char_info { ptr @.str.105, i32 0, i32 0, [12 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 40) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 56) }, %struct.format_type_detail { i32 2, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 72) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], ptr @.str.96, ptr @.str.87, ptr null }, %struct.format_char_info { ptr @.str.171, i32 0, i32 0, [12 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 48) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 64) }, %struct.format_type_detail { i32 2, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 80) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], ptr @.str.96, ptr @.str.87, ptr null }, %struct.format_char_info { ptr @.str.116, i32 0, i32 0, [12 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 48) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 64) }, %struct.format_type_detail { i32 2, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 80) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], ptr @.str.96, ptr @.str.87, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.125, i32 0, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 40) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.96, ptr @.str.87, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.128, i32 1, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr @integer_types }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.172, ptr @.str.131, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.132, i32 1, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 304) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.96, ptr @.str.125, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.178, i32 0, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 304) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.81, ptr @.str.87, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.174, i32 0, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 304) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.87, ptr @.str.87, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.141, i32 0, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 304) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.96, ptr @.str.87, ptr null }, %struct.format_char_info zeroinitializer }>, align 16
@.str.180 = private unnamed_addr constant [6 x i8] c"DEFKT\00", align 1
@gcc_cdiag_char_table = internal constant <{ %struct.format_char_info, %struct.format_char_info, %struct.format_char_info, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, %struct.format_char_info }> <{ %struct.format_char_info { ptr @.str.105, i32 0, i32 0, [12 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 40) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 56) }, %struct.format_type_detail { i32 2, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 72) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], ptr @.str.96, ptr @.str.87, ptr null }, %struct.format_char_info { ptr @.str.171, i32 0, i32 0, [12 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 48) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 64) }, %struct.format_type_detail { i32 2, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 80) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], ptr @.str.96, ptr @.str.87, ptr null }, %struct.format_char_info { ptr @.str.116, i32 0, i32 0, [12 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 48) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 64) }, %struct.format_type_detail { i32 2, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 80) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], ptr @.str.96, ptr @.str.87, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.125, i32 0, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 40) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.96, ptr @.str.87, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.128, i32 1, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr @integer_types }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.172, ptr @.str.131, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.132, i32 1, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 304) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.96, ptr @.str.125, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.180, i32 0, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 304) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.81, ptr @.str.87, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.174, i32 0, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 304) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.87, ptr @.str.87, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.141, i32 0, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 304) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.96, ptr @.str.87, ptr null }, %struct.format_char_info zeroinitializer }>, align 16
@.str.182 = private unnamed_addr constant [8 x i8] c"ADEFKTV\00", align 1
@.str.183 = private unnamed_addr constant [6 x i8] c"CLOPQ\00", align 1
@gcc_cxxdiag_char_table = internal constant <{ %struct.format_char_info, %struct.format_char_info, %struct.format_char_info, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, %struct.format_char_info }> <{ %struct.format_char_info { ptr @.str.105, i32 0, i32 0, [12 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 40) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 56) }, %struct.format_type_detail { i32 2, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 72) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], ptr @.str.96, ptr @.str.87, ptr null }, %struct.format_char_info { ptr @.str.171, i32 0, i32 0, [12 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 48) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 64) }, %struct.format_type_detail { i32 2, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 80) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], ptr @.str.96, ptr @.str.87, ptr null }, %struct.format_char_info { ptr @.str.116, i32 0, i32 0, [12 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 48) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 64) }, %struct.format_type_detail { i32 2, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 80) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], ptr @.str.96, ptr @.str.87, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.125, i32 0, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 40) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.96, ptr @.str.87, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.128, i32 1, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr @integer_types }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.172, ptr @.str.131, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.132, i32 1, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 304) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.96, ptr @.str.125, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.182, i32 0, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 304) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.85, ptr @.str.87, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.183, i32 0, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 40) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.96, ptr @.str.87, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.174, i32 0, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 304) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.87, ptr @.str.87, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.141, i32 0, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 304) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.96, ptr @.str.87, ptr null }, %struct.format_char_info zeroinitializer }>, align 16
@gcc_gfc_char_table = internal constant <{ { ptr, i32, i32, <{ %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, [8 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, [8 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, %struct.format_char_info }> <{ { ptr, i32, i32, <{ %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, [8 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.105, i32 0, i32 0, <{ %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, [8 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 40) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 56) }, [8 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.87, ptr @.str.87, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, [8 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.116, i32 0, i32 0, <{ %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, [8 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 48) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 64) }, [8 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.87, ptr @.str.87, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.125, i32 0, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 40) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.87, ptr @.str.87, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.128, i32 1, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr @integer_types }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.87, ptr @.str.131, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.138, i32 0, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 304) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.87, ptr @.str.87, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.97, i32 0, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 304) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.87, ptr @.str.140, ptr null }, %struct.format_char_info zeroinitializer }>, align 16
@.str.186 = private unnamed_addr constant [5 x i8] c"*w'I\00", align 1
@.str.187 = private unnamed_addr constant [3 x i8] c"*w\00", align 1
@.str.188 = private unnamed_addr constant [6 x i8] c"efgEG\00", align 1
@.str.189 = private unnamed_addr constant [4 x i8] c"*w'\00", align 1
@.str.190 = private unnamed_addr constant [4 x i8] c"*mw\00", align 1
@.str.191 = private unnamed_addr constant [3 x i8] c"cW\00", align 1
@.str.192 = private unnamed_addr constant [5 x i8] c"*amw\00", align 1
@.str.193 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.194 = private unnamed_addr constant [4 x i8] c"cW[\00", align 1
@scan_char_table = internal constant <{ %struct.format_char_info, %struct.format_char_info, %struct.format_char_info, %struct.format_char_info, { ptr, i32, i32, <{ %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, [8 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, [8 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, [8 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, %struct.format_char_info, %struct.format_char_info, %struct.format_char_info, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr }, %struct.format_char_info }> <{ %struct.format_char_info { ptr @.str.105, i32 1, i32 0, [12 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 40) }, %struct.format_type_detail { i32 3, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 8) }, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 24) }, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 56) }, %struct.format_type_detail { i32 2, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 72) }, %struct.format_type_detail { i32 4, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 72) }, %struct.format_type_detail { i32 3, ptr @.str.106, ptr getelementptr (i8, ptr @c_global_trees, i64 40) }, %struct.format_type_detail { i32 3, ptr @.str.107, ptr getelementptr (i8, ptr @global_trees, i64 344) }, %struct.format_type_detail { i32 3, ptr @.str.108, ptr getelementptr (i8, ptr @c_global_trees, i64 56) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], ptr @.str.186, ptr @.str.134, ptr null }, %struct.format_char_info { ptr @.str.116, i32 1, i32 0, [12 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 48) }, %struct.format_type_detail { i32 3, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 16) }, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 32) }, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 64) }, %struct.format_type_detail { i32 2, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 80) }, %struct.format_type_detail { i32 4, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 80) }, %struct.format_type_detail { i32 3, ptr @.str.112, ptr getelementptr (i8, ptr @global_trees, i64 328) }, %struct.format_type_detail { i32 3, ptr @.str.113, ptr getelementptr (i8, ptr @c_global_trees, i64 48) }, %struct.format_type_detail { i32 3, ptr @.str.114, ptr getelementptr (i8, ptr @c_global_trees, i64 64) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], ptr @.str.186, ptr @.str.134, ptr null }, %struct.format_char_info { ptr @.str.111, i32 1, i32 0, [12 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 48) }, %struct.format_type_detail { i32 3, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 16) }, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 32) }, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 64) }, %struct.format_type_detail { i32 2, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 80) }, %struct.format_type_detail { i32 4, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 80) }, %struct.format_type_detail { i32 3, ptr @.str.112, ptr getelementptr (i8, ptr @global_trees, i64 328) }, %struct.format_type_detail { i32 3, ptr @.str.113, ptr getelementptr (i8, ptr @c_global_trees, i64 48) }, %struct.format_type_detail { i32 3, ptr @.str.114, ptr getelementptr (i8, ptr @c_global_trees, i64 64) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], ptr @.str.187, ptr @.str.134, ptr null }, %struct.format_char_info { ptr @.str.188, i32 1, i32 0, [12 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 248) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 256) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 264) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 4, ptr @.str.119, ptr getelementptr (i8, ptr @global_trees, i64 392) }, %struct.format_type_detail { i32 4, ptr @.str.120, ptr getelementptr (i8, ptr @global_trees, i64 400) }, %struct.format_type_detail { i32 4, ptr @.str.121, ptr getelementptr (i8, ptr @global_trees, i64 408) }], ptr @.str.189, ptr @.str.134, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, [8 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.125, i32 1, i32 0, <{ %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, [8 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr @integer_types }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 1, ptr @.str.129, ptr getelementptr (i8, ptr @c_global_trees, i64 16) }, [8 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.190, ptr @.str.191, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, [8 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.128, i32 1, i32 0, <{ %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, [8 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr @integer_types }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 1, ptr @.str.129, ptr getelementptr (i8, ptr @c_global_trees, i64 16) }, [8 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.192, ptr @.str.191, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, [8 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.193, i32 1, i32 0, <{ %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, %struct.format_type_detail, [8 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr @integer_types }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 1, ptr @.str.129, ptr getelementptr (i8, ptr @c_global_trees, i64 16) }, [8 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.192, ptr @.str.194, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.132, i32 2, i32 0, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 304) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.187, ptr @.str.134, ptr null }, %struct.format_char_info { ptr @.str.133, i32 1, i32 0, [12 x %struct.format_type_detail] [%struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 40) }, %struct.format_type_detail { i32 3, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 8) }, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 24) }, %struct.format_type_detail { i32 0, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 56) }, %struct.format_type_detail { i32 2, ptr null, ptr getelementptr (i8, ptr @integer_types, i64 72) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 3, ptr @.str.106, ptr getelementptr (i8, ptr @c_global_trees, i64 40) }, %struct.format_type_detail { i32 3, ptr @.str.107, ptr getelementptr (i8, ptr @global_trees, i64 344) }, %struct.format_type_detail { i32 3, ptr @.str.108, ptr getelementptr (i8, ptr @c_global_trees, i64 56) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], ptr @.str.87, ptr @.str.134, ptr null }, %struct.format_char_info { ptr @.str.135, i32 1, i32 3, [12 x %struct.format_type_detail] [%struct.format_type_detail { i32 3, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 248) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 3, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 256) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 3, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 264) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 4, ptr @.str.119, ptr getelementptr (i8, ptr @global_trees, i64 392) }, %struct.format_type_detail { i32 4, ptr @.str.120, ptr getelementptr (i8, ptr @global_trees, i64 400) }, %struct.format_type_detail { i32 4, ptr @.str.121, ptr getelementptr (i8, ptr @global_trees, i64 408) }], ptr @.str.189, ptr @.str.134, ptr null }, %struct.format_char_info { ptr @.str.136, i32 1, i32 3, [12 x %struct.format_type_detail] [%struct.format_type_detail { i32 3, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 248) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 3, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 256) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail { i32 3, ptr null, ptr getelementptr (i8, ptr @global_trees, i64 264) }, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer, %struct.format_type_detail zeroinitializer], ptr @.str.189, ptr @.str.134, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.138, i32 1, i32 4, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 4, ptr @.str.129, ptr getelementptr (i8, ptr @c_global_trees, i64 16) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.190, ptr @.str.134, ptr null }, { ptr, i32, i32, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }>, ptr, ptr, ptr } { ptr @.str.139, i32 1, i32 4, <{ %struct.format_type_detail, [11 x %struct.format_type_detail] }> <{ %struct.format_type_detail { i32 4, ptr @.str.129, ptr getelementptr (i8, ptr @c_global_trees, i64 16) }, [11 x %struct.format_type_detail] zeroinitializer }>, ptr @.str.192, ptr @.str.134, ptr null }, %struct.format_char_info zeroinitializer }>, align 16
@.str.196 = private unnamed_addr constant [23 x i8] c"assignment suppression\00", align 1
@.str.197 = private unnamed_addr constant [41 x i8] c"the assignment suppression scanf feature\00", align 1
@.str.198 = private unnamed_addr constant [9 x i8] c"'a' flag\00", align 1
@.str.199 = private unnamed_addr constant [19 x i8] c"the 'a' scanf flag\00", align 1
@.str.200 = private unnamed_addr constant [9 x i8] c"'m' flag\00", align 1
@.str.201 = private unnamed_addr constant [19 x i8] c"the 'm' scanf flag\00", align 1
@.str.202 = private unnamed_addr constant [28 x i8] c"field width in scanf format\00", align 1
@.str.203 = private unnamed_addr constant [32 x i8] c"length modifier in scanf format\00", align 1
@.str.204 = private unnamed_addr constant [19 x i8] c"the ''' scanf flag\00", align 1
@.str.205 = private unnamed_addr constant [19 x i8] c"the 'I' scanf flag\00", align 1
@.str.206 = private unnamed_addr constant [6 x i8] c"ABZab\00", align 1
@.str.207 = private unnamed_addr constant [3 x i8] c"^#\00", align 1
@.str.208 = private unnamed_addr constant [3 x i8] c"cx\00", align 1
@.str.209 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.210 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.211 = private unnamed_addr constant [10 x i8] c"HIMSUWdmw\00", align 1
@.str.212 = private unnamed_addr constant [6 x i8] c"-_0Ow\00", align 1
@.str.213 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.214 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.215 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.216 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.217 = private unnamed_addr constant [7 x i8] c"EO-_0w\00", align 1
@.str.218 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.219 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.220 = private unnamed_addr constant [7 x i8] c"-_0EOw\00", align 1
@.str.221 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.222 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.223 = private unnamed_addr constant [4 x i8] c"eVu\00", align 1
@.str.224 = private unnamed_addr constant [7 x i8] c"FRTnrt\00", align 1
@.str.225 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.226 = private unnamed_addr constant [6 x i8] c"O-_0w\00", align 1
@.str.227 = private unnamed_addr constant [3 x i8] c"2o\00", align 1
@.str.228 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.229 = private unnamed_addr constant [4 x i8] c"kls\00", align 1
@.str.230 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.231 = private unnamed_addr constant [9 x i8] c"'_' flag\00", align 1
@.str.232 = private unnamed_addr constant [22 x i8] c"the '_' strftime flag\00", align 1
@.str.233 = private unnamed_addr constant [22 x i8] c"the '-' strftime flag\00", align 1
@.str.234 = private unnamed_addr constant [22 x i8] c"the '0' strftime flag\00", align 1
@.str.235 = private unnamed_addr constant [9 x i8] c"'^' flag\00", align 1
@.str.236 = private unnamed_addr constant [22 x i8] c"the '^' strftime flag\00", align 1
@.str.237 = private unnamed_addr constant [22 x i8] c"the '#' strftime flag\00", align 1
@.str.238 = private unnamed_addr constant [31 x i8] c"field width in strftime format\00", align 1
@.str.239 = private unnamed_addr constant [13 x i8] c"'E' modifier\00", align 1
@.str.240 = private unnamed_addr constant [26 x i8] c"the 'E' strftime modifier\00", align 1
@.str.241 = private unnamed_addr constant [13 x i8] c"'O' modifier\00", align 1
@.str.242 = private unnamed_addr constant [26 x i8] c"the 'O' strftime modifier\00", align 1
@.str.243 = private unnamed_addr constant [17 x i8] c"the 'O' modifier\00", align 1
@.str.244 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.245 = private unnamed_addr constant [10 x i8] c"=^+(!-w#p\00", align 1
@.str.246 = private unnamed_addr constant [15 x i8] c"fill character\00", align 1
@.str.247 = private unnamed_addr constant [33 x i8] c"fill character in strfmon format\00", align 1
@.str.248 = private unnamed_addr constant [21 x i8] c"the '^' strfmon flag\00", align 1
@.str.249 = private unnamed_addr constant [21 x i8] c"the '+' strfmon flag\00", align 1
@.str.250 = private unnamed_addr constant [9 x i8] c"'(' flag\00", align 1
@.str.251 = private unnamed_addr constant [21 x i8] c"the '(' strfmon flag\00", align 1
@.str.252 = private unnamed_addr constant [9 x i8] c"'!' flag\00", align 1
@.str.253 = private unnamed_addr constant [21 x i8] c"the '!' strfmon flag\00", align 1
@.str.254 = private unnamed_addr constant [21 x i8] c"the '-' strfmon flag\00", align 1
@.str.255 = private unnamed_addr constant [30 x i8] c"field width in strfmon format\00", align 1
@.str.256 = private unnamed_addr constant [15 x i8] c"left precision\00", align 1
@.str.257 = private unnamed_addr constant [33 x i8] c"left precision in strfmon format\00", align 1
@.str.258 = private unnamed_addr constant [16 x i8] c"right precision\00", align 1
@.str.259 = private unnamed_addr constant [34 x i8] c"right precision in strfmon format\00", align 1
@.str.260 = private unnamed_addr constant [34 x i8] c"length modifier in strfmon format\00", align 1
@init_dynamic_asm_fprintf_info.hwi = internal unnamed_addr global ptr null, align 8
@.str.261 = private unnamed_addr constant [22 x i8] c"__gcc_host_wide_int__\00", align 1
@.str.262 = private unnamed_addr constant [51 x i8] c"%<__gcc_host_wide_int__%> is not defined as a type\00", align 1
@.str.263 = private unnamed_addr constant [70 x i8] c"%<__gcc_host_wide_int__%> is not defined as %<long%> or %<long long%>\00", align 1
@init_dynamic_gfc_info.locus = internal global ptr null, align 8
@init_dynamic_gfc_info.gfc_fci = internal unnamed_addr global ptr null, align 8
@.str.264 = private unnamed_addr constant [6 x i8] c"locus\00", align 1
@.str.265 = private unnamed_addr constant [35 x i8] c"%<locus%> is not defined as a type\00", align 1
@init_dynamic_diag_info.t = internal global ptr null, align 8
@init_dynamic_diag_info.loc = internal unnamed_addr global ptr null, align 8
@init_dynamic_diag_info.hwi = internal unnamed_addr global ptr null, align 8
@init_dynamic_diag_info.diag_fci = internal unnamed_addr global ptr null, align 8
@init_dynamic_diag_info.tdiag_fci = internal unnamed_addr global ptr null, align 8
@init_dynamic_diag_info.cdiag_fci = internal unnamed_addr global ptr null, align 8
@init_dynamic_diag_info.cxxdiag_fci = internal unnamed_addr global ptr null, align 8
@init_dynamic_diag_info.diag_ls = internal unnamed_addr global ptr null, align 8
@.str.266 = private unnamed_addr constant [11 x i8] c"location_t\00", align 1
@.str.267 = private unnamed_addr constant [40 x i8] c"%<location_t%> is not defined as a type\00", align 1
@.str.268 = private unnamed_addr constant [5 x i8] c"tree\00", align 1
@.str.269 = private unnamed_addr constant [34 x i8] c"%<tree%> is not defined as a type\00", align 1
@.str.270 = private unnamed_addr constant [42 x i8] c"%<tree%> is not defined as a pointer type\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !51 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !52
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !51 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !52
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !51 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !62

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !56
  %11 = load i8, ptr %3, align 1, !tbaa !63
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !51 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !62

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #16
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !56
  %11 = load i8, ptr %3, align 1, !tbaa !63
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !51 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !52
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !56
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !62

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #16
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !56
  %11 = load i8, ptr %3, align 1, !tbaa !63
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !51 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !52
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !51 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !62

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !64
  store i8 %12, ptr %4, align 1, !tbaa !63
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !51 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !62

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !64
  store i8 %12, ptr %4, align 1, !tbaa !63
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !51 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !52
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !62

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #16
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !64
  store i8 %12, ptr %4, align 1, !tbaa !63
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !51 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #16
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !51 {
  %2 = load i32, ptr %0, align 8, !tbaa !66
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !51 {
  %2 = load i32, ptr %0, align 8, !tbaa !66
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !51 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !67
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !51 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #16
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !67
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !51 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !51 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !51 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !51 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #16
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
  br i1 %23, label %7, label %24, !llvm.loop !68

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !51 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @set_Wformat(i32 noundef %0) local_unnamed_addr #9 !prof !51 {
  store i32 %0, ptr @warn_format, align 4, !tbaa !67
  store i32 %0, ptr @warn_format_extra_args, align 4, !tbaa !67
  store i32 %0, ptr @warn_format_zero_length, align 4, !tbaa !67
  store i32 %0, ptr @warn_format_contains_nul, align 4, !tbaa !67
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  store i32 %0, ptr @warn_format_nonliteral, align 4, !tbaa !67
  store i32 %0, ptr @warn_format_security, align 4, !tbaa !67
  store i32 %0, ptr @warn_format_y2k, align 4, !tbaa !67
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1, %3
  store i32 %0, ptr @warn_nonnull, align 4, !tbaa !67
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noalias noundef ptr @handle_format_arg_attribute(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #10 !prof !71 {
  %6 = load ptr, ptr %0, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.tree_list, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 23
  br i1 %11, label %12, label %19, !prof !72

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.tree_int_cst, ptr %8, i64 0, i32 1, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !63
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19, !prof !72

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tree_int_cst, ptr %8, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !63
  br label %19

19:                                               ; preds = %5, %12, %16
  %20 = phi i64 [ %18, %16 ], [ 0, %12 ], [ 0, %5 ]
  %21 = phi i1 [ false, %16 ], [ true, %12 ], [ true, %5 ]
  br i1 %21, label %45, label %22, !prof !73

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !63
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26, !prof !73

26:                                               ; preds = %22
  %27 = tail call fastcc zeroext i8 @check_format_string(ptr noundef nonnull %24, i64 noundef %20, i32 noundef %3, ptr noundef %4), !range !74
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %48, label %29, !prof !73

29:                                               ; preds = %26, %22
  %30 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !63
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 10
  br i1 %34, label %35, label %42, !prof !72

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !63
  %38 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 16
  %39 = load ptr, ptr %38, align 8, !tbaa !63
  %40 = load ptr, ptr @integer_types, align 16, !tbaa !52
  %41 = icmp eq ptr %39, %40
  br i1 %41, label %48, label %42, !prof !72

42:                                               ; preds = %35, %29
  %43 = and i32 %3, 16
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42, %19
  %46 = phi ptr [ @.str, %19 ], [ @.str.1, %42 ]
  tail call void (ptr, ...) @error(ptr noundef nonnull %46) #16
  br label %47

47:                                               ; preds = %45, %42
  store i8 1, ptr %4, align 1, !tbaa !63
  br label %48

48:                                               ; preds = %47, %35, %26
  ret ptr null
}

declare void @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @check_format_string(ptr noundef readonly %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #11 !prof !71 !PGOFuncName !75 {
  %5 = icmp eq i64 %1, 1
  %6 = icmp eq ptr %0, null
  %7 = or i1 %5, %6
  br i1 %7, label %17, label %8, !prof !76

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %13, %8 ], [ 1, %4 ]
  %10 = phi ptr [ %12, %8 ], [ %0, %4 ]
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !63
  %13 = add i64 %9, 1
  %14 = icmp eq i64 %13, %1
  %15 = icmp eq ptr %12, null
  %16 = select i1 %14, i1 true, i1 %15, !prof !77
  br i1 %16, label %17, label %8, !prof !78, !llvm.loop !79

17:                                               ; preds = %8, %4
  %18 = phi ptr [ %0, %4 ], [ %12, %8 ]
  %19 = phi i1 [ %6, %4 ], [ %15, %8 ]
  br i1 %19, label %33, label %20, !prof !80

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.tree_list, ptr %18, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !63
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 10
  br i1 %25, label %26, label %33, !prof !81

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !63
  %29 = getelementptr inbounds %struct.tree_type, ptr %28, i64 0, i32 16
  %30 = load ptr, ptr %29, align 8, !tbaa !63
  %31 = load ptr, ptr @integer_types, align 16, !tbaa !52
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %38, label %33, !prof !81

33:                                               ; preds = %26, %20, %17
  %34 = and i32 %2, 16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.8) #16
  br label %37

37:                                               ; preds = %36, %33
  store i8 1, ptr %3, align 1, !tbaa !63
  br label %38

38:                                               ; preds = %26, %37
  %39 = phi i8 [ 0, %37 ], [ 1, %26 ]
  ret i8 %39
}

; Function Attrs: cold nounwind uwtable
define dso_local void @check_function_format(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #10 !prof !51 {
  %4 = alloca %struct.format_check_context, align 8
  %5 = alloca %struct.format_check_results, align 4
  %6 = alloca %struct.function_format_info, align 8
  %7 = icmp eq ptr %0, null
  br i1 %7, label %234, label %8

8:                                                ; preds = %3
  %9 = icmp sgt i32 %1, 0
  %10 = getelementptr inbounds %struct.function_format_info, ptr %6, i64 0, i32 1
  %11 = getelementptr inbounds %struct.format_check_results, ptr %5, i64 0, i32 1
  %12 = getelementptr inbounds %struct.format_check_results, ptr %5, i64 0, i32 2
  %13 = getelementptr inbounds %struct.format_check_results, ptr %5, i64 0, i32 3
  %14 = getelementptr inbounds %struct.format_check_results, ptr %5, i64 0, i32 4
  %15 = getelementptr inbounds %struct.format_check_results, ptr %5, i64 0, i32 5
  %16 = getelementptr inbounds %struct.format_check_results, ptr %5, i64 0, i32 6
  %17 = getelementptr inbounds %struct.format_check_context, ptr %4, i64 0, i32 1
  %18 = getelementptr inbounds %struct.format_check_context, ptr %4, i64 0, i32 2
  %19 = getelementptr inbounds %struct.function_format_info, ptr %6, i64 0, i32 2
  %20 = zext i32 %1 to i64
  br label %21

21:                                               ; preds = %8, %230
  %22 = phi ptr [ %0, %8 ], [ %232, %230 ]
  %23 = getelementptr inbounds %struct.tree_list, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !63
  %25 = call i32 @is_attribute_p(ptr noundef nonnull @.str.2, ptr noundef %24) #16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %230, label %27

27:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  %28 = getelementptr inbounds %struct.tree_list, ptr %22, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !63
  %30 = call fastcc zeroext i8 @decode_format_attr(ptr noundef %29, ptr noundef nonnull %6, i32 noundef 1), !range !74
  %31 = load i32, ptr @warn_format, align 4, !tbaa !67
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %157, label %33

33:                                               ; preds = %27
  br i1 %9, label %34, label %42

34:                                               ; preds = %33, %34
  %35 = phi i64 [ %37, %34 ], [ %20, %33 ]
  %36 = phi ptr [ %40, %34 ], [ null, %33 ]
  %37 = add nsw i64 %35, -1
  %38 = getelementptr inbounds ptr, ptr %2, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !52
  %40 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %39, ptr noundef %36) #16
  %41 = icmp sgt i64 %35, 1
  br i1 %41, label %34, label %42, !llvm.loop !82

42:                                               ; preds = %34, %33
  %43 = phi ptr [ null, %33 ], [ %40, %34 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %5) #16
  %44 = icmp eq ptr %43, null
  br i1 %44, label %156, label %45

45:                                               ; preds = %42
  %46 = load i64, ptr %10, align 8, !tbaa !83
  br label %47

47:                                               ; preds = %45, %51
  %48 = phi ptr [ %43, %45 ], [ %53, %51 ]
  %49 = phi i64 [ 1, %45 ], [ %54, %51 ]
  %50 = icmp eq i64 %49, %46
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !63
  %54 = add i64 %49, 1
  %55 = icmp eq ptr %53, null
  br i1 %55, label %156, label %47, !llvm.loop !85

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.tree_list, ptr %48, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !63
  %59 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !63
  %61 = icmp eq ptr %58, null
  br i1 %61, label %156, label %62

62:                                               ; preds = %56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %5, i8 0, i64 28, i1 false)
  store ptr %5, ptr %4, align 8, !tbaa !86
  store ptr %6, ptr %17, align 8, !tbaa !88
  store ptr %60, ptr %18, align 8, !tbaa !89
  call void @check_function_arguments_recurse(ptr noundef nonnull @check_format_arg, ptr noundef nonnull %4, ptr noundef nonnull %58, i64 noundef %46) #16
  %63 = load i32, ptr %5, align 4, !tbaa !90
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %108

65:                                               ; preds = %62
  %66 = load ptr, ptr @format_types, align 8, !tbaa !52
  %67 = load i32, ptr %6, align 8, !tbaa !92
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.format_kind_info, ptr %66, i64 %68, i32 7
  %70 = load i32, ptr %69, align 8, !tbaa !93
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 94, ptr noundef nonnull @.str.22) #16
  br label %108

75:                                               ; preds = %65
  %76 = getelementptr inbounds %struct.function_format_info, ptr %6, i64 0, i32 2
  %77 = load i64, ptr %76, align 8, !tbaa !95
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %108, label %79

79:                                               ; preds = %75
  %80 = add i64 %46, 1
  %81 = icmp uge i64 %80, %77
  %82 = icmp eq ptr %60, null
  %83 = select i1 %81, i1 true, i1 %82
  br i1 %83, label %93, label %84

84:                                               ; preds = %79, %84
  %85 = phi i64 [ %89, %84 ], [ %80, %79 ]
  %86 = phi ptr [ %88, %84 ], [ %60, %79 ]
  %87 = getelementptr inbounds %struct.tree_common, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !63
  %89 = add nuw i64 %85, 1
  %90 = icmp uge i64 %89, %77
  %91 = icmp eq ptr %88, null
  %92 = select i1 %90, i1 true, i1 %91
  br i1 %92, label %93, label %84, !llvm.loop !96

93:                                               ; preds = %84, %79
  %94 = phi i1 [ %82, %79 ], [ %91, %84 ]
  %95 = load i32, ptr @warn_format_security, align 4
  %96 = icmp ne i32 %95, 0
  %97 = select i1 %94, i1 %96, i1 false
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 95, ptr noundef nonnull @.str.23) #16
  br label %108

100:                                              ; preds = %93
  %101 = load i32, ptr @warn_format_nonliteral, align 4
  %102 = icmp ne i32 %101, 0
  %103 = select i1 %94, i1 %102, i1 false
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 94, ptr noundef nonnull @.str.23) #16
  br label %108

106:                                              ; preds = %100
  %107 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 94, ptr noundef nonnull @.str.24) #16
  br label %108

108:                                              ; preds = %106, %104, %98, %75, %73, %62
  %109 = load i32, ptr %11, align 4, !tbaa !97
  %110 = icmp sgt i32 %109, 0
  %111 = load i32, ptr %5, align 4
  %112 = icmp eq i32 %111, 0
  %113 = select i1 %110, i1 %112, i1 false
  %114 = load i32, ptr %16, align 4
  %115 = icmp eq i32 %114, 0
  %116 = select i1 %113, i1 %115, i1 false
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 93, ptr noundef nonnull @.str.25) #16
  br label %119

119:                                              ; preds = %117, %108
  %120 = load i32, ptr %12, align 4, !tbaa !98
  %121 = icmp sgt i32 %120, 0
  %122 = load i32, ptr %5, align 4
  %123 = icmp eq i32 %122, 0
  %124 = select i1 %121, i1 %123, i1 false
  %125 = load i32, ptr %16, align 4
  %126 = icmp eq i32 %125, 0
  %127 = select i1 %124, i1 %126, i1 false
  br i1 %127, label %128, label %130

128:                                              ; preds = %119
  %129 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 93, ptr noundef nonnull @.str.26) #16
  br label %130

130:                                              ; preds = %128, %119
  %131 = load i32, ptr %14, align 4, !tbaa !99
  %132 = icmp sgt i32 %131, 0
  %133 = load i32, ptr %5, align 4
  %134 = icmp eq i32 %133, 0
  %135 = select i1 %132, i1 %134, i1 false
  %136 = load i32, ptr %16, align 4
  %137 = icmp eq i32 %136, 0
  %138 = select i1 %135, i1 %137, i1 false
  br i1 %138, label %139, label %146

139:                                              ; preds = %130
  %140 = load ptr, ptr @format_types, align 8, !tbaa !52
  %141 = load i32, ptr %6, align 8, !tbaa !92
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.format_kind_info, ptr %140, i64 %142
  %144 = load ptr, ptr %143, align 8, !tbaa !100
  %145 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 97, ptr noundef nonnull @.str.27, ptr noundef %144) #16
  br label %146

146:                                              ; preds = %139, %130
  %147 = load i32, ptr %13, align 4, !tbaa !101
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.28) #16
  br label %151

151:                                              ; preds = %149, %146
  %152 = load i32, ptr %15, align 4, !tbaa !102
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.29) #16
  br label %156

156:                                              ; preds = %51, %42, %56, %151, %154
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  br label %157

157:                                              ; preds = %156, %27
  %158 = load i32, ptr @warn_missing_format_attribute, align 4, !tbaa !67
  %159 = icmp ne i32 %158, 0
  %160 = load i64, ptr %19, align 8
  %161 = icmp eq i64 %160, 0
  %162 = select i1 %159, i1 %161, i1 false
  br i1 %162, label %163, label %229

163:                                              ; preds = %157
  %164 = load ptr, ptr @format_types, align 8, !tbaa !52
  %165 = load i32, ptr %6, align 8, !tbaa !92
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.format_kind_info, ptr %164, i64 %166, i32 7
  %168 = load i32, ptr %167, align 8, !tbaa !93
  %169 = and i32 %168, 1
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %229, label %171

171:                                              ; preds = %163
  %172 = load ptr, ptr @current_function_decl, align 8, !tbaa !52
  %173 = getelementptr inbounds %struct.tree_common, ptr %172, i64 0, i32 2
  %174 = load ptr, ptr %173, align 8, !tbaa !63
  %175 = getelementptr inbounds %struct.tree_type, ptr %174, i64 0, i32 4
  %176 = load ptr, ptr %175, align 8, !tbaa !63
  %177 = icmp eq ptr %176, null
  br i1 %177, label %198, label %178

178:                                              ; preds = %171, %194
  %179 = phi ptr [ %196, %194 ], [ %176, %171 ]
  %180 = getelementptr inbounds %struct.tree_list, ptr %179, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !63
  %182 = call i32 @is_attribute_p(ptr noundef nonnull @.str.2, ptr noundef %181) #16
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %194, label %184

184:                                              ; preds = %178
  %185 = getelementptr inbounds %struct.tree_list, ptr %179, i64 0, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !63
  %187 = getelementptr inbounds %struct.tree_list, ptr %186, i64 0, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !63
  %189 = getelementptr inbounds %struct.tree_identifier, ptr %188, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !63
  %191 = call fastcc i32 @decode_format_type(ptr noundef %190)
  %192 = load i32, ptr %6, align 8, !tbaa !92
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %229, label %194

194:                                              ; preds = %178, %184
  %195 = getelementptr inbounds %struct.tree_common, ptr %179, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !63
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %178, !llvm.loop !103

198:                                              ; preds = %194, %171
  %199 = load ptr, ptr @current_function_decl, align 8, !tbaa !52
  %200 = getelementptr inbounds %struct.tree_decl_non_common, ptr %199, i64 0, i32 2
  %201 = load ptr, ptr %200, align 8, !tbaa !63
  %202 = icmp eq ptr %201, null
  br i1 %202, label %229, label %203

203:                                              ; preds = %198
  %204 = load ptr, ptr @integer_types, align 16
  br label %205

205:                                              ; preds = %203, %218
  %206 = phi ptr [ %201, %203 ], [ %220, %218 ]
  %207 = getelementptr inbounds %struct.tree_common, ptr %206, i64 0, i32 2
  %208 = load ptr, ptr %207, align 8, !tbaa !63
  %209 = load i64, ptr %208, align 8
  %210 = and i64 %209, 65535
  %211 = icmp eq i64 %210, 10
  br i1 %211, label %212, label %218

212:                                              ; preds = %205
  %213 = getelementptr inbounds %struct.tree_common, ptr %208, i64 0, i32 2
  %214 = load ptr, ptr %213, align 8, !tbaa !63
  %215 = getelementptr inbounds %struct.tree_type, ptr %214, i64 0, i32 16
  %216 = load ptr, ptr %215, align 8, !tbaa !63
  %217 = icmp eq ptr %216, %204
  br i1 %217, label %222, label %218

218:                                              ; preds = %205, %212
  %219 = getelementptr inbounds %struct.tree_common, ptr %206, i64 0, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !63
  %221 = icmp eq ptr %220, null
  br i1 %221, label %229, label %205, !llvm.loop !104

222:                                              ; preds = %212
  %223 = load ptr, ptr @format_types, align 8, !tbaa !52
  %224 = load i32, ptr %6, align 8, !tbaa !92
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.format_kind_info, ptr %223, i64 %225
  %227 = load ptr, ptr %226, align 8, !tbaa !100
  %228 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 131, ptr noundef nonnull @.str.3, ptr noundef %227) #16
  br label %229

229:                                              ; preds = %184, %218, %198, %222, %163, %157
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  br label %230

230:                                              ; preds = %21, %229
  %231 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !63
  %233 = icmp eq ptr %232, null
  br i1 %233, label %234, label %21, !llvm.loop !105

234:                                              ; preds = %230, %3
  ret void
}

declare i32 @is_attribute_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @decode_format_attr(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #11 !prof !106 !PGOFuncName !107 {
  %4 = getelementptr inbounds %struct.tree_list, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !63
  %8 = getelementptr inbounds %struct.tree_list, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !63
  %12 = getelementptr inbounds %struct.tree_list, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !63
  %14 = load i64, ptr %5, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 1
  br i1 %16, label %21, label %17, !prof !108

17:                                               ; preds = %3
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 186, ptr noundef nonnull @.str.7) #16
  br label %20

20:                                               ; preds = %17, %19
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.9) #16
  br label %170

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.tree_identifier, ptr %5, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !63
  %24 = icmp eq ptr %23, null
  br i1 %24, label %122, label %25, !prof !109

25:                                               ; preds = %21
  %26 = load i8, ptr %23, align 1, !tbaa !63
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %122, label %28, !prof !109

28:                                               ; preds = %25
  %29 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(5) @.str.13, i64 noundef 4)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %122, label %31, !prof !109

31:                                               ; preds = %28
  %32 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %23)
  %33 = trunc i64 %32 to i32
  %34 = icmp sgt i32 %33, 4
  %35 = icmp eq i8 %26, 95
  %36 = and i1 %35, %34
  br label %42

37:                                               ; preds = %119
  %38 = add nuw nsw i64 %43, 1
  %39 = getelementptr inbounds [5 x %struct.target_ovr_attr], ptr @gnu_target_overrides_format_attributes, i64 0, i64 %38
  %40 = load ptr, ptr %39, align 16, !tbaa !110
  %41 = icmp eq i64 %38, 4
  br i1 %41, label %122, label %42, !prof !112, !llvm.loop !113

42:                                               ; preds = %31, %37
  %43 = phi i64 [ %38, %37 ], [ 0, %31 ]
  %44 = phi ptr [ %40, %37 ], [ @.str.14, %31 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46, !prof !114

46:                                               ; preds = %42
  %47 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %44)
  %48 = trunc i64 %47 to i32
  br label %49

49:                                               ; preds = %46, %42
  %50 = phi i32 [ %48, %46 ], [ 0, %42 ]
  br i1 %36, label %51, label %71, !prof !115

51:                                               ; preds = %49
  %52 = getelementptr inbounds i8, ptr %23, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !63
  %54 = icmp eq i8 %53, 95
  br i1 %54, label %55, label %71, !prof !116

55:                                               ; preds = %51
  %56 = add i64 %32, 4294967295
  %57 = and i64 %56, 4294967295
  %58 = getelementptr inbounds i8, ptr %23, i64 %57
  %59 = load i8, ptr %58, align 1, !tbaa !63
  %60 = icmp eq i8 %59, 95
  br i1 %60, label %61, label %71, !prof !116

61:                                               ; preds = %55
  %62 = add i64 %32, 4294967294
  %63 = and i64 %62, 4294967295
  %64 = getelementptr inbounds i8, ptr %23, i64 %63
  %65 = add nsw i32 %33, -4
  %66 = load i8, ptr %64, align 1, !tbaa !63
  %67 = icmp eq i8 %66, 95
  %68 = select i1 %67, i64 2, i64 0, !prof !116
  %69 = getelementptr inbounds i8, ptr %23, i64 %68
  %70 = select i1 %67, i32 %65, i32 %33, !prof !116
  br label %71

71:                                               ; preds = %61, %55, %51, %49
  %72 = phi ptr [ %23, %55 ], [ %23, %51 ], [ %23, %49 ], [ %69, %61 ]
  %73 = phi i32 [ %33, %55 ], [ %33, %51 ], [ %33, %49 ], [ %70, %61 ]
  %74 = icmp eq i32 %73, %50
  br i1 %74, label %75, label %80, !prof !117

75:                                               ; preds = %71
  %76 = sext i32 %73 to i64
  %77 = tail call i32 @strncmp(ptr noundef %44, ptr noundef %72, i64 noundef %76)
  %78 = icmp eq i32 %77, 0
  %79 = zext i1 %78 to i8
  br label %80

80:                                               ; preds = %71, %75
  %81 = phi i8 [ 0, %71 ], [ %79, %75 ]
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %122, !prof !118

83:                                               ; preds = %80
  %84 = icmp eq i8 %26, 95
  %85 = and i1 %84, %34
  %86 = getelementptr inbounds [5 x %struct.target_ovr_attr], ptr @gnu_target_overrides_format_attributes, i64 0, i64 %43, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !119
  %88 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %87)
  %89 = trunc i64 %88 to i32
  br i1 %85, label %90, label %110, !prof !115

90:                                               ; preds = %83
  %91 = getelementptr inbounds i8, ptr %23, i64 1
  %92 = load i8, ptr %91, align 1, !tbaa !63
  %93 = icmp eq i8 %92, 95
  br i1 %93, label %94, label %110, !prof !116

94:                                               ; preds = %90
  %95 = add i64 %32, 4294967295
  %96 = and i64 %95, 4294967295
  %97 = getelementptr inbounds i8, ptr %23, i64 %96
  %98 = load i8, ptr %97, align 1, !tbaa !63
  %99 = icmp eq i8 %98, 95
  br i1 %99, label %100, label %110, !prof !116

100:                                              ; preds = %94
  %101 = add i64 %32, 4294967294
  %102 = and i64 %101, 4294967295
  %103 = getelementptr inbounds i8, ptr %23, i64 %102
  %104 = add nsw i32 %33, -4
  %105 = load i8, ptr %103, align 1, !tbaa !63
  %106 = icmp eq i8 %105, 95
  %107 = select i1 %106, i64 2, i64 0, !prof !116
  %108 = getelementptr inbounds i8, ptr %23, i64 %107
  %109 = select i1 %106, i32 %104, i32 %33, !prof !116
  br label %110

110:                                              ; preds = %100, %94, %90, %83
  %111 = phi ptr [ %23, %94 ], [ %23, %90 ], [ %23, %83 ], [ %108, %100 ]
  %112 = phi i32 [ %33, %94 ], [ %33, %90 ], [ %33, %83 ], [ %109, %100 ]
  %113 = icmp eq i32 %112, %89
  br i1 %113, label %114, label %119, !prof !117

114:                                              ; preds = %110
  %115 = sext i32 %112 to i64
  %116 = tail call i32 @strncmp(ptr noundef %87, ptr noundef %111, i64 noundef %115)
  %117 = icmp eq i32 %116, 0
  %118 = zext i1 %117 to i8
  br label %119

119:                                              ; preds = %110, %114
  %120 = phi i8 [ 0, %110 ], [ %118, %114 ]
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %37, label %122, !prof !120

122:                                              ; preds = %37, %80, %119, %21, %25, %28
  %123 = phi ptr [ %23, %28 ], [ %23, %25 ], [ %23, %21 ], [ %23, %80 ], [ %23, %37 ], [ %44, %119 ]
  %124 = tail call fastcc i32 @decode_format_type(ptr noundef %123)
  store i32 %124, ptr %1, align 8, !tbaa !92
  %125 = icmp eq i32 %124, -1
  br i1 %125, label %126, label %131, !prof !121

126:                                              ; preds = %122
  %127 = icmp eq i32 %2, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %126
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 200, ptr noundef nonnull @.str.7) #16
  br label %129

129:                                              ; preds = %126, %128
  %130 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.10, ptr noundef nonnull %5) #16
  br label %170

131:                                              ; preds = %122
  %132 = getelementptr inbounds %struct.function_format_info, ptr %1, i64 0, i32 1
  %133 = load i64, ptr %9, align 8
  %134 = and i64 %133, 65535
  %135 = icmp eq i64 %134, 23
  br i1 %135, label %136, label %140, !prof !108

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.tree_int_cst, ptr %9, i64 0, i32 1, i32 1
  %138 = load i64, ptr %137, align 8, !tbaa !63
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %143, label %140, !prof !108

140:                                              ; preds = %136, %131
  %141 = icmp eq i32 %2, 0
  br i1 %141, label %150, label %142

142:                                              ; preds = %140
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 160, ptr noundef nonnull @.str.7) #16
  br label %150

143:                                              ; preds = %136
  %144 = getelementptr inbounds %struct.tree_int_cst, ptr %9, i64 0, i32 1
  %145 = load i64, ptr %144, align 8, !tbaa !63
  store i64 %145, ptr %132, align 8, !tbaa !122
  %146 = getelementptr inbounds %struct.function_format_info, ptr %1, i64 0, i32 2
  %147 = load i64, ptr %13, align 8
  %148 = and i64 %147, 65535
  %149 = icmp eq i64 %148, 23
  br i1 %149, label %151, label %155, !prof !108

150:                                              ; preds = %142, %140
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str) #16
  br label %170

151:                                              ; preds = %143
  %152 = getelementptr inbounds %struct.tree_int_cst, ptr %13, i64 0, i32 1, i32 1
  %153 = load i64, ptr %152, align 8, !tbaa !63
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %158, label %155, !prof !108

155:                                              ; preds = %151, %143
  %156 = icmp eq i32 %2, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %155
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 160, ptr noundef nonnull @.str.7) #16
  br label %162

158:                                              ; preds = %151
  %159 = getelementptr inbounds %struct.tree_int_cst, ptr %13, i64 0, i32 1
  %160 = load i64, ptr %159, align 8, !tbaa !63
  store i64 %160, ptr %146, align 8, !tbaa !122
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %170, label %163, !prof !123

162:                                              ; preds = %157, %155
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.11) #16
  br label %170

163:                                              ; preds = %158
  %164 = load i64, ptr %132, align 8, !tbaa !83
  %165 = icmp ugt i64 %160, %164
  br i1 %165, label %170, label %166, !prof !124

166:                                              ; preds = %163
  %167 = icmp eq i32 %2, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %166
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 221, ptr noundef nonnull @.str.7) #16
  br label %169

169:                                              ; preds = %166, %168
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.12) #16
  br label %170

170:                                              ; preds = %129, %158, %163, %169, %162, %150, %20
  %171 = phi i8 [ 0, %20 ], [ 0, %169 ], [ 0, %162 ], [ 0, %150 ], [ 0, %129 ], [ 1, %163 ], [ 1, %158 ]
  ret i8 %171
}

declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @decode_format_type(ptr noundef readonly %0) unnamed_addr #12 !prof !106 !PGOFuncName !125 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %100, label %3, !prof !109

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1, !tbaa !63
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %100, label %6, !prof !109

6:                                                ; preds = %3
  %7 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.13, i64 noundef 4)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %100, label %9, !prof !109

9:                                                ; preds = %6
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %11 = trunc i64 %10 to i32
  %12 = icmp sgt i32 %11, 4
  %13 = icmp eq i8 %4, 95
  %14 = and i1 %13, %12
  br label %20

15:                                               ; preds = %97
  %16 = add nuw nsw i64 %21, 1
  %17 = getelementptr inbounds [5 x %struct.target_ovr_attr], ptr @gnu_target_overrides_format_attributes, i64 0, i64 %16
  %18 = load ptr, ptr %17, align 16, !tbaa !110
  %19 = icmp eq i64 %16, 4
  br i1 %19, label %100, label %20, !prof !112, !llvm.loop !113

20:                                               ; preds = %9, %15
  %21 = phi i64 [ %16, %15 ], [ 0, %9 ]
  %22 = phi ptr [ %18, %15 ], [ @.str.14, %9 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24, !prof !114

24:                                               ; preds = %20
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %22)
  %26 = trunc i64 %25 to i32
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i32 [ %26, %24 ], [ 0, %20 ]
  br i1 %14, label %29, label %49, !prof !115

29:                                               ; preds = %27
  %30 = getelementptr inbounds i8, ptr %0, i64 1
  %31 = load i8, ptr %30, align 1, !tbaa !63
  %32 = icmp eq i8 %31, 95
  br i1 %32, label %33, label %49, !prof !116

33:                                               ; preds = %29
  %34 = add i64 %10, 4294967295
  %35 = and i64 %34, 4294967295
  %36 = getelementptr inbounds i8, ptr %0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !63
  %38 = icmp eq i8 %37, 95
  br i1 %38, label %39, label %49, !prof !116

39:                                               ; preds = %33
  %40 = add i64 %10, 4294967294
  %41 = and i64 %40, 4294967295
  %42 = getelementptr inbounds i8, ptr %0, i64 %41
  %43 = add nsw i32 %11, -4
  %44 = load i8, ptr %42, align 1, !tbaa !63
  %45 = icmp eq i8 %44, 95
  %46 = select i1 %45, i64 2, i64 0, !prof !116
  %47 = getelementptr inbounds i8, ptr %0, i64 %46
  %48 = select i1 %45, i32 %43, i32 %11, !prof !116
  br label %49

49:                                               ; preds = %39, %33, %29, %27
  %50 = phi ptr [ %0, %33 ], [ %0, %29 ], [ %0, %27 ], [ %47, %39 ]
  %51 = phi i32 [ %11, %33 ], [ %11, %29 ], [ %11, %27 ], [ %48, %39 ]
  %52 = icmp eq i32 %51, %28
  br i1 %52, label %53, label %58, !prof !117

53:                                               ; preds = %49
  %54 = sext i32 %51 to i64
  %55 = tail call i32 @strncmp(ptr noundef %22, ptr noundef %50, i64 noundef %54)
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i8
  br label %58

58:                                               ; preds = %49, %53
  %59 = phi i8 [ 0, %49 ], [ %57, %53 ]
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %100, !prof !118

61:                                               ; preds = %58
  %62 = icmp eq i8 %4, 95
  %63 = and i1 %62, %12
  %64 = getelementptr inbounds [5 x %struct.target_ovr_attr], ptr @gnu_target_overrides_format_attributes, i64 0, i64 %21, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !119
  %66 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %65)
  %67 = trunc i64 %66 to i32
  br i1 %63, label %68, label %88, !prof !115

68:                                               ; preds = %61
  %69 = getelementptr inbounds i8, ptr %0, i64 1
  %70 = load i8, ptr %69, align 1, !tbaa !63
  %71 = icmp eq i8 %70, 95
  br i1 %71, label %72, label %88, !prof !116

72:                                               ; preds = %68
  %73 = add i64 %10, 4294967295
  %74 = and i64 %73, 4294967295
  %75 = getelementptr inbounds i8, ptr %0, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !63
  %77 = icmp eq i8 %76, 95
  br i1 %77, label %78, label %88, !prof !116

78:                                               ; preds = %72
  %79 = add i64 %10, 4294967294
  %80 = and i64 %79, 4294967295
  %81 = getelementptr inbounds i8, ptr %0, i64 %80
  %82 = add nsw i32 %11, -4
  %83 = load i8, ptr %81, align 1, !tbaa !63
  %84 = icmp eq i8 %83, 95
  %85 = select i1 %84, i64 2, i64 0, !prof !116
  %86 = getelementptr inbounds i8, ptr %0, i64 %85
  %87 = select i1 %84, i32 %82, i32 %11, !prof !116
  br label %88

88:                                               ; preds = %78, %72, %68, %61
  %89 = phi ptr [ %0, %72 ], [ %0, %68 ], [ %0, %61 ], [ %86, %78 ]
  %90 = phi i32 [ %11, %72 ], [ %11, %68 ], [ %11, %61 ], [ %87, %78 ]
  %91 = icmp eq i32 %90, %67
  br i1 %91, label %92, label %97, !prof !117

92:                                               ; preds = %88
  %93 = sext i32 %90 to i64
  %94 = tail call i32 @strncmp(ptr noundef %65, ptr noundef %89, i64 noundef %93)
  %95 = icmp eq i32 %94, 0
  %96 = zext i1 %95 to i8
  br label %97

97:                                               ; preds = %88, %92
  %98 = phi i8 [ 0, %88 ], [ %96, %92 ]
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %15, label %100, !prof !120

100:                                              ; preds = %15, %58, %97, %1, %3, %6
  %101 = phi ptr [ %0, %6 ], [ %0, %3 ], [ %0, %1 ], [ %0, %58 ], [ %0, %15 ], [ %22, %97 ]
  %102 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %101)
  %103 = trunc i64 %102 to i32
  %104 = load ptr, ptr @format_types, align 8, !tbaa !52
  br label %108

105:                                              ; preds = %148
  %106 = add nuw nsw i64 %109, 1
  %107 = icmp eq i64 %106, 10
  br i1 %107, label %151, label %108, !prof !126, !llvm.loop !127

108:                                              ; preds = %100, %105
  %109 = phi i64 [ 0, %100 ], [ %106, %105 ]
  %110 = phi i32 [ undef, %100 ], [ %149, %105 ]
  %111 = getelementptr inbounds %struct.format_kind_info, ptr %104, i64 %109
  %112 = load ptr, ptr %111, align 8, !tbaa !100
  %113 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %101, ptr noundef nonnull dereferenceable(1) %112)
  %114 = icmp eq i32 %113, 0
  %115 = trunc i64 %109 to i32
  br i1 %114, label %148, label %116, !prof !128

116:                                              ; preds = %108
  %117 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %112)
  %118 = trunc i64 %117 to i32
  %119 = add nsw i32 %118, 4
  %120 = icmp eq i32 %119, %103
  br i1 %120, label %121, label %147, !prof !129

121:                                              ; preds = %116
  %122 = load i8, ptr %101, align 1, !tbaa !63
  %123 = icmp eq i8 %122, 95
  br i1 %123, label %124, label %147, !prof !130

124:                                              ; preds = %121
  %125 = getelementptr inbounds i8, ptr %101, i64 1
  %126 = load i8, ptr %125, align 1, !tbaa !63
  %127 = icmp eq i8 %126, 95
  br i1 %127, label %128, label %147, !prof !131

128:                                              ; preds = %124
  %129 = shl i64 %102, 32
  %130 = add i64 %129, -4294967296
  %131 = ashr exact i64 %130, 32
  %132 = getelementptr inbounds i8, ptr %101, i64 %131
  %133 = load i8, ptr %132, align 1, !tbaa !63
  %134 = icmp eq i8 %133, 95
  br i1 %134, label %135, label %147, !prof !131

135:                                              ; preds = %128
  %136 = add i64 %129, -8589934592
  %137 = ashr exact i64 %136, 32
  %138 = getelementptr inbounds i8, ptr %101, i64 %137
  %139 = load i8, ptr %138, align 1, !tbaa !63
  %140 = icmp eq i8 %139, 95
  br i1 %140, label %141, label %147, !prof !131

141:                                              ; preds = %135
  %142 = getelementptr inbounds i8, ptr %101, i64 2
  %143 = shl i64 %117, 32
  %144 = ashr exact i64 %143, 32
  %145 = tail call i32 @strncmp(ptr noundef nonnull %142, ptr noundef %112, i64 noundef %144)
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %148, label %147, !prof !131

147:                                              ; preds = %141, %135, %128, %124, %121, %116
  br label %148

148:                                              ; preds = %141, %108, %147
  %149 = phi i32 [ %110, %147 ], [ %115, %108 ], [ %115, %141 ]
  %150 = phi i1 [ true, %147 ], [ false, %108 ], [ false, %141 ]
  br i1 %150, label %105, label %151, !prof !132

151:                                              ; preds = %105, %148
  %152 = phi i32 [ %149, %148 ], [ -1, %105 ]
  ret i32 %152
}

declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @handle_format_attribute(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #11 !prof !106 {
  %6 = alloca %struct.function_format_info, align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  %8 = call fastcc zeroext i8 @decode_format_attr(ptr noundef %2, ptr noundef nonnull %6, i32 noundef 0), !range !74
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11, !prof !121

10:                                               ; preds = %5
  store i8 1, ptr %4, align 1, !tbaa !63
  br label %278

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !63
  %14 = icmp eq ptr %13, null
  br i1 %14, label %67, label %15, !prof !121

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.function_format_info, ptr %6, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !83
  %18 = icmp eq i64 %17, 1
  br i1 %18, label %28, label %19, !prof !76

19:                                               ; preds = %15, %19
  %20 = phi i64 [ %24, %19 ], [ 1, %15 ]
  %21 = phi ptr [ %23, %19 ], [ %13, %15 ]
  %22 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !63
  %24 = add i64 %20, 1
  %25 = icmp eq i64 %24, %17
  %26 = icmp eq ptr %23, null
  %27 = select i1 %25, i1 true, i1 %26, !prof !77
  br i1 %27, label %28, label %19, !prof !78, !llvm.loop !79

28:                                               ; preds = %19, %15
  %29 = phi ptr [ %13, %15 ], [ %23, %19 ]
  %30 = phi i1 [ false, %15 ], [ %26, %19 ]
  br i1 %30, label %44, label %31, !prof !80

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.tree_list, ptr %29, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !63
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 10
  br i1 %36, label %37, label %44, !prof !81

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !63
  %40 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 16
  %41 = load ptr, ptr %40, align 8, !tbaa !63
  %42 = load ptr, ptr @integer_types, align 16, !tbaa !52
  %43 = icmp eq ptr %41, %42
  br i1 %43, label %49, label %44, !prof !81

44:                                               ; preds = %37, %31, %28
  %45 = and i32 %3, 16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.8) #16
  br label %48

48:                                               ; preds = %47, %44
  store i8 1, ptr %4, align 1, !tbaa !63
  br label %278

49:                                               ; preds = %37
  %50 = getelementptr inbounds %struct.function_format_info, ptr %6, i64 0, i32 2
  %51 = load i64, ptr %50, align 8, !tbaa !95
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %67, label %53, !prof !123

53:                                               ; preds = %49, %53
  %54 = phi i64 [ %56, %53 ], [ 1, %49 ]
  %55 = phi ptr [ %58, %53 ], [ %13, %49 ]
  %56 = add i64 %54, 1
  %57 = getelementptr inbounds %struct.tree_common, ptr %55, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !63
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %53, !prof !133, !llvm.loop !134

60:                                               ; preds = %53
  %61 = icmp eq i64 %56, %51
  br i1 %61, label %67, label %62, !prof !124

62:                                               ; preds = %60
  %63 = and i32 %3, 16
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.4) #16
  br label %66

66:                                               ; preds = %65, %62
  store i8 1, ptr %4, align 1, !tbaa !63
  br label %278

67:                                               ; preds = %60, %49, %11
  %68 = load ptr, ptr @format_types, align 8, !tbaa !52
  %69 = load i32, ptr %6, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.format_kind_info, ptr %68, i64 %70, i32 7
  %72 = load i32, ptr %71, align 8, !tbaa !93
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, 0
  %75 = getelementptr inbounds %struct.function_format_info, ptr %6, i64 0, i32 2
  %76 = load i64, ptr %75, align 8
  %77 = icmp ne i64 %76, 0
  %78 = select i1 %74, i1 %77, i1 false, !prof !135
  br i1 %78, label %79, label %80, !prof !121

79:                                               ; preds = %67
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.5) #16
  store i8 1, ptr %4, align 1, !tbaa !63
  br label %278

80:                                               ; preds = %67
  %81 = add i32 %69, -1
  %82 = icmp ult i32 %81, 6
  br i1 %82, label %83, label %278, !prof !136

83:                                               ; preds = %80
  %84 = load ptr, ptr @dynamic_format_types, align 8, !tbaa !52
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %88, !prof !131

86:                                               ; preds = %83
  %87 = tail call ptr @xmemdup(ptr noundef nonnull @format_types_orig, i64 noundef 1040, i64 noundef 1040) #16
  store ptr %87, ptr @dynamic_format_types, align 8, !tbaa !52
  store ptr %87, ptr @format_types, align 8, !tbaa !52
  br label %88

88:                                               ; preds = %86, %83
  switch i32 %69, label %277 [
    i32 1, label %89
    i32 6, label %90
    i32 5, label %91
    i32 4, label %91
    i32 3, label %91
    i32 2, label %91
  ], !prof !137

89:                                               ; preds = %88
  tail call fastcc void @init_dynamic_asm_fprintf_info()
  br label %278

90:                                               ; preds = %88
  tail call fastcc void @init_dynamic_gfc_info()
  br label %278

91:                                               ; preds = %88, %88, %88, %88
  %92 = load ptr, ptr @init_dynamic_diag_info.loc, align 8, !tbaa !52
  %93 = icmp ne ptr %92, null
  %94 = load ptr, ptr @init_dynamic_diag_info.t, align 8
  %95 = icmp ne ptr %94, null
  %96 = select i1 %93, i1 %95, i1 false
  %97 = load ptr, ptr @init_dynamic_diag_info.hwi, align 8
  %98 = icmp ne ptr %97, null
  %99 = select i1 %96, i1 %98, i1 false
  br i1 %99, label %278, label %100

100:                                              ; preds = %91
  %101 = tail call ptr @maybe_get_identifier(ptr noundef nonnull @.str.266) #16
  store ptr %101, ptr @init_dynamic_diag_info.loc, align 8, !tbaa !52
  %102 = icmp eq ptr %101, null
  br i1 %102, label %116, label %103

103:                                              ; preds = %100
  %104 = tail call ptr @identifier_global_value(ptr noundef nonnull %101) #16
  store ptr %104, ptr @init_dynamic_diag_info.loc, align 8, !tbaa !52
  %105 = icmp eq ptr %104, null
  br i1 %105, label %116, label %106

106:                                              ; preds = %103
  %107 = load i64, ptr %104, align 8
  %108 = and i64 %107, 65535
  %109 = icmp eq i64 %108, 35
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.267) #16
  br label %114

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.tree_common, ptr %104, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !63
  br label %114

114:                                              ; preds = %110, %111
  %115 = phi ptr [ %113, %111 ], [ null, %110 ]
  store ptr %115, ptr @init_dynamic_diag_info.loc, align 8, !tbaa !52
  br label %116

116:                                              ; preds = %114, %103, %100
  %117 = tail call ptr @maybe_get_identifier(ptr noundef nonnull @.str.268) #16
  store ptr %117, ptr @init_dynamic_diag_info.t, align 8, !tbaa !52
  %118 = icmp eq ptr %117, null
  br i1 %118, label %139, label %119

119:                                              ; preds = %116
  %120 = tail call ptr @identifier_global_value(ptr noundef nonnull %117) #16
  store ptr %120, ptr @init_dynamic_diag_info.t, align 8, !tbaa !52
  %121 = icmp eq ptr %120, null
  br i1 %121, label %139, label %122

122:                                              ; preds = %119
  %123 = load i64, ptr %120, align 8
  %124 = and i64 %123, 65535
  %125 = icmp eq i64 %124, 35
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.269) #16
  br label %137

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.tree_common, ptr %120, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !63
  %130 = load i64, ptr %129, align 8
  %131 = and i64 %130, 65535
  %132 = icmp eq i64 %131, 10
  br i1 %132, label %134, label %133

133:                                              ; preds = %127
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.270) #16
  br label %137

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.tree_common, ptr %129, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !63
  br label %137

137:                                              ; preds = %126, %133, %134
  %138 = phi ptr [ %136, %134 ], [ null, %133 ], [ null, %126 ]
  store ptr %138, ptr @init_dynamic_diag_info.t, align 8, !tbaa !52
  br label %139

139:                                              ; preds = %137, %119, %116
  %140 = tail call ptr @maybe_get_identifier(ptr noundef nonnull @.str.261) #16
  store ptr %140, ptr @init_dynamic_diag_info.hwi, align 8, !tbaa !52
  %141 = icmp eq ptr %140, null
  br i1 %141, label %163, label %142

142:                                              ; preds = %139
  %143 = tail call ptr @identifier_global_value(ptr noundef nonnull %140) #16
  store ptr %143, ptr @init_dynamic_diag_info.hwi, align 8, !tbaa !52
  %144 = icmp eq ptr %143, null
  br i1 %144, label %163, label %145

145:                                              ; preds = %142
  %146 = load i64, ptr %143, align 8
  %147 = and i64 %146, 65535
  %148 = icmp eq i64 %147, 35
  br i1 %148, label %149, label %161

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.tree_decl_non_common, ptr %143, i64 0, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !63
  store ptr %151, ptr @init_dynamic_diag_info.hwi, align 8, !tbaa !52
  %152 = icmp eq ptr %151, null
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2578, ptr noundef nonnull @.str.7) #16
  br label %154

154:                                              ; preds = %153, %149
  %155 = load ptr, ptr @init_dynamic_diag_info.hwi, align 8, !tbaa !52
  %156 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !52
  %157 = icmp eq ptr %155, %156
  %158 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8
  %159 = icmp eq ptr %155, %158
  %160 = select i1 %157, i1 true, i1 %159
  br i1 %160, label %163, label %161

161:                                              ; preds = %154, %145
  %162 = phi ptr [ @.str.262, %145 ], [ @.str.263, %154 ]
  tail call void (ptr, ...) @error(ptr noundef nonnull %162) #16
  store ptr null, ptr @init_dynamic_diag_info.hwi, align 8, !tbaa !52
  br label %163

163:                                              ; preds = %161, %154, %142, %139
  %164 = load ptr, ptr @init_dynamic_diag_info.diag_ls, align 8, !tbaa !52
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %173

166:                                              ; preds = %163
  %167 = tail call ptr @xmemdup(ptr noundef nonnull @gcc_diag_length_specs, i64 noundef 120, i64 noundef 120) #16
  store ptr %167, ptr @init_dynamic_diag_info.diag_ls, align 8, !tbaa !52
  %168 = load ptr, ptr @dynamic_format_types, align 8, !tbaa !52
  %169 = getelementptr inbounds %struct.format_kind_info, ptr %168, i64 5, i32 1
  store ptr %167, ptr %169, align 8, !tbaa !138
  %170 = getelementptr inbounds %struct.format_kind_info, ptr %168, i64 4, i32 1
  store ptr %167, ptr %170, align 8, !tbaa !138
  %171 = getelementptr inbounds %struct.format_kind_info, ptr %168, i64 3, i32 1
  store ptr %167, ptr %171, align 8, !tbaa !138
  %172 = getelementptr inbounds %struct.format_kind_info, ptr %168, i64 2, i32 1
  store ptr %167, ptr %172, align 8, !tbaa !138
  br label %173

173:                                              ; preds = %166, %163
  %174 = load ptr, ptr @init_dynamic_diag_info.hwi, align 8, !tbaa !52
  %175 = icmp eq ptr %174, null
  br i1 %175, label %194, label %176

176:                                              ; preds = %173
  %177 = load ptr, ptr @init_dynamic_diag_info.diag_ls, align 8, !tbaa !52
  %178 = tail call fastcc i32 @find_length_info_modifier_index(ptr noundef %177)
  %179 = load ptr, ptr @init_dynamic_diag_info.hwi, align 8, !tbaa !52
  %180 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !52
  %181 = icmp eq ptr %179, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %176
  %183 = load ptr, ptr @init_dynamic_diag_info.diag_ls, align 8, !tbaa !52
  %184 = zext i32 %178 to i64
  %185 = getelementptr inbounds %struct.format_length_info, ptr %183, i64 %184, i32 1
  store i32 3, ptr %185, align 8, !tbaa !139
  br label %194

186:                                              ; preds = %176
  %187 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8, !tbaa !52
  %188 = icmp eq ptr %179, %187
  br i1 %188, label %189, label %193

189:                                              ; preds = %186
  %190 = load ptr, ptr @init_dynamic_diag_info.diag_ls, align 8, !tbaa !52
  %191 = zext i32 %178 to i64
  %192 = getelementptr inbounds %struct.format_length_info, ptr %190, i64 %191, i32 1
  store i32 4, ptr %192, align 8, !tbaa !139
  br label %194

193:                                              ; preds = %186
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2611, ptr noundef nonnull @.str.7) #16
  br label %194

194:                                              ; preds = %193, %189, %182, %173
  %195 = load ptr, ptr @init_dynamic_diag_info.diag_fci, align 8, !tbaa !52
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %201

197:                                              ; preds = %194
  %198 = tail call ptr @xmemdup(ptr noundef nonnull @gcc_diag_char_table, i64 noundef 3280, i64 noundef 3280) #16
  store ptr %198, ptr @init_dynamic_diag_info.diag_fci, align 8, !tbaa !52
  %199 = load ptr, ptr @dynamic_format_types, align 8, !tbaa !52
  %200 = getelementptr inbounds %struct.format_kind_info, ptr %199, i64 2, i32 2
  store ptr %198, ptr %200, align 8, !tbaa !141
  br label %201

201:                                              ; preds = %197, %194
  %202 = load ptr, ptr @init_dynamic_diag_info.t, align 8, !tbaa !52
  %203 = icmp eq ptr %202, null
  br i1 %203, label %211, label %204

204:                                              ; preds = %201
  %205 = load ptr, ptr @init_dynamic_diag_info.diag_fci, align 8, !tbaa !52
  %206 = tail call fastcc i32 @find_char_info_specifier_index(ptr noundef %205, i32 noundef 75)
  %207 = load ptr, ptr @init_dynamic_diag_info.diag_fci, align 8, !tbaa !52
  %208 = zext i32 %206 to i64
  %209 = getelementptr inbounds %struct.format_char_info, ptr %207, i64 %208, i32 3, i64 0, i32 2
  store ptr @init_dynamic_diag_info.t, ptr %209, align 8, !tbaa !142
  %210 = getelementptr inbounds %struct.format_char_info, ptr %207, i64 %208, i32 1
  store i32 1, ptr %210, align 8, !tbaa !144
  br label %211

211:                                              ; preds = %204, %201
  %212 = load ptr, ptr @init_dynamic_diag_info.tdiag_fci, align 8, !tbaa !52
  %213 = icmp eq ptr %212, null
  br i1 %213, label %214, label %218

214:                                              ; preds = %211
  %215 = tail call ptr @xmemdup(ptr noundef nonnull @gcc_tdiag_char_table, i64 noundef 3280, i64 noundef 3280) #16
  store ptr %215, ptr @init_dynamic_diag_info.tdiag_fci, align 8, !tbaa !52
  %216 = load ptr, ptr @dynamic_format_types, align 8, !tbaa !52
  %217 = getelementptr inbounds %struct.format_kind_info, ptr %216, i64 3, i32 2
  store ptr %215, ptr %217, align 8, !tbaa !141
  br label %218

218:                                              ; preds = %214, %211
  %219 = load ptr, ptr @init_dynamic_diag_info.t, align 8, !tbaa !52
  %220 = icmp eq ptr %219, null
  br i1 %220, label %233, label %221

221:                                              ; preds = %218
  %222 = load ptr, ptr @init_dynamic_diag_info.tdiag_fci, align 8, !tbaa !52
  %223 = tail call fastcc i32 @find_char_info_specifier_index(ptr noundef %222, i32 noundef 68)
  %224 = load ptr, ptr @init_dynamic_diag_info.tdiag_fci, align 8, !tbaa !52
  %225 = zext i32 %223 to i64
  %226 = getelementptr inbounds %struct.format_char_info, ptr %224, i64 %225, i32 3, i64 0, i32 2
  store ptr @init_dynamic_diag_info.t, ptr %226, align 8, !tbaa !142
  %227 = getelementptr inbounds %struct.format_char_info, ptr %224, i64 %225, i32 1
  store i32 1, ptr %227, align 8, !tbaa !144
  %228 = tail call fastcc i32 @find_char_info_specifier_index(ptr noundef %224, i32 noundef 75)
  %229 = load ptr, ptr @init_dynamic_diag_info.tdiag_fci, align 8, !tbaa !52
  %230 = zext i32 %228 to i64
  %231 = getelementptr inbounds %struct.format_char_info, ptr %229, i64 %230, i32 3, i64 0, i32 2
  store ptr @init_dynamic_diag_info.t, ptr %231, align 8, !tbaa !142
  %232 = getelementptr inbounds %struct.format_char_info, ptr %229, i64 %230, i32 1
  store i32 1, ptr %232, align 8, !tbaa !144
  br label %233

233:                                              ; preds = %221, %218
  %234 = load ptr, ptr @init_dynamic_diag_info.cdiag_fci, align 8, !tbaa !52
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %240

236:                                              ; preds = %233
  %237 = tail call ptr @xmemdup(ptr noundef nonnull @gcc_cdiag_char_table, i64 noundef 3280, i64 noundef 3280) #16
  store ptr %237, ptr @init_dynamic_diag_info.cdiag_fci, align 8, !tbaa !52
  %238 = load ptr, ptr @dynamic_format_types, align 8, !tbaa !52
  %239 = getelementptr inbounds %struct.format_kind_info, ptr %238, i64 4, i32 2
  store ptr %237, ptr %239, align 8, !tbaa !141
  br label %240

240:                                              ; preds = %236, %233
  %241 = load ptr, ptr @init_dynamic_diag_info.t, align 8, !tbaa !52
  %242 = icmp eq ptr %241, null
  br i1 %242, label %255, label %243

243:                                              ; preds = %240
  %244 = load ptr, ptr @init_dynamic_diag_info.cdiag_fci, align 8, !tbaa !52
  %245 = tail call fastcc i32 @find_char_info_specifier_index(ptr noundef %244, i32 noundef 68)
  %246 = load ptr, ptr @init_dynamic_diag_info.cdiag_fci, align 8, !tbaa !52
  %247 = zext i32 %245 to i64
  %248 = getelementptr inbounds %struct.format_char_info, ptr %246, i64 %247, i32 3, i64 0, i32 2
  store ptr @init_dynamic_diag_info.t, ptr %248, align 8, !tbaa !142
  %249 = getelementptr inbounds %struct.format_char_info, ptr %246, i64 %247, i32 1
  store i32 1, ptr %249, align 8, !tbaa !144
  %250 = tail call fastcc i32 @find_char_info_specifier_index(ptr noundef %246, i32 noundef 75)
  %251 = load ptr, ptr @init_dynamic_diag_info.cdiag_fci, align 8, !tbaa !52
  %252 = zext i32 %250 to i64
  %253 = getelementptr inbounds %struct.format_char_info, ptr %251, i64 %252, i32 3, i64 0, i32 2
  store ptr @init_dynamic_diag_info.t, ptr %253, align 8, !tbaa !142
  %254 = getelementptr inbounds %struct.format_char_info, ptr %251, i64 %252, i32 1
  store i32 1, ptr %254, align 8, !tbaa !144
  br label %255

255:                                              ; preds = %243, %240
  %256 = load ptr, ptr @init_dynamic_diag_info.cxxdiag_fci, align 8, !tbaa !52
  %257 = icmp eq ptr %256, null
  br i1 %257, label %258, label %262

258:                                              ; preds = %255
  %259 = tail call ptr @xmemdup(ptr noundef nonnull @gcc_cxxdiag_char_table, i64 noundef 3608, i64 noundef 3608) #16
  store ptr %259, ptr @init_dynamic_diag_info.cxxdiag_fci, align 8, !tbaa !52
  %260 = load ptr, ptr @dynamic_format_types, align 8, !tbaa !52
  %261 = getelementptr inbounds %struct.format_kind_info, ptr %260, i64 5, i32 2
  store ptr %259, ptr %261, align 8, !tbaa !141
  br label %262

262:                                              ; preds = %258, %255
  %263 = load ptr, ptr @init_dynamic_diag_info.t, align 8, !tbaa !52
  %264 = icmp eq ptr %263, null
  br i1 %264, label %278, label %265

265:                                              ; preds = %262
  %266 = load ptr, ptr @init_dynamic_diag_info.cxxdiag_fci, align 8, !tbaa !52
  %267 = tail call fastcc i32 @find_char_info_specifier_index(ptr noundef %266, i32 noundef 68)
  %268 = load ptr, ptr @init_dynamic_diag_info.cxxdiag_fci, align 8, !tbaa !52
  %269 = zext i32 %267 to i64
  %270 = getelementptr inbounds %struct.format_char_info, ptr %268, i64 %269, i32 3, i64 0, i32 2
  store ptr @init_dynamic_diag_info.t, ptr %270, align 8, !tbaa !142
  %271 = getelementptr inbounds %struct.format_char_info, ptr %268, i64 %269, i32 1
  store i32 1, ptr %271, align 8, !tbaa !144
  %272 = tail call fastcc i32 @find_char_info_specifier_index(ptr noundef %268, i32 noundef 75)
  %273 = load ptr, ptr @init_dynamic_diag_info.cxxdiag_fci, align 8, !tbaa !52
  %274 = zext i32 %272 to i64
  %275 = getelementptr inbounds %struct.format_char_info, ptr %273, i64 %274, i32 3, i64 0, i32 2
  store ptr @init_dynamic_diag_info.t, ptr %275, align 8, !tbaa !142
  %276 = getelementptr inbounds %struct.format_char_info, ptr %273, i64 %274, i32 1
  store i32 1, ptr %276, align 8, !tbaa !144
  br label %278

277:                                              ; preds = %88
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2873, ptr noundef nonnull @.str.7) #16
  br label %278

278:                                              ; preds = %48, %265, %262, %91, %66, %80, %90, %277, %89, %79, %10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  ret ptr null
}

declare ptr @xmemdup(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @init_dynamic_asm_fprintf_info() unnamed_addr #10 !prof !146 !PGOFuncName !147 {
  %1 = load ptr, ptr @init_dynamic_asm_fprintf_info.hwi, align 8, !tbaa !52
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %47, !prof !131

3:                                                ; preds = %0
  %4 = tail call ptr @maybe_get_identifier(ptr noundef nonnull @.str.261) #16
  store ptr %4, ptr @init_dynamic_asm_fprintf_info.hwi, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !148

6:                                                ; preds = %3
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.262) #16
  br label %47

7:                                                ; preds = %3
  %8 = tail call ptr @identifier_global_value(ptr noundef nonnull %4) #16
  store ptr %8, ptr @init_dynamic_asm_fprintf_info.hwi, align 8, !tbaa !52
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10, !prof !148

10:                                               ; preds = %7
  %11 = load i64, ptr %8, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 35
  br i1 %13, label %15, label %14, !prof !131

14:                                               ; preds = %10, %7
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.262) #16
  br label %47

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.tree_decl_non_common, ptr %8, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !63
  store ptr %17, ptr @init_dynamic_asm_fprintf_info.hwi, align 8, !tbaa !52
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20, !prof !148

19:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2425, ptr noundef nonnull @.str.7) #16
  br label %20

20:                                               ; preds = %15, %19
  %21 = load ptr, ptr @init_dynamic_asm_fprintf_info.hwi, align 8, !tbaa !52
  %22 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !52
  %23 = icmp eq ptr %21, %22
  %24 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8
  %25 = icmp eq ptr %21, %24
  %26 = select i1 %23, i1 true, i1 %25, !prof !131
  br i1 %26, label %28, label %27, !prof !131

27:                                               ; preds = %20
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.263) #16
  br label %47

28:                                               ; preds = %20
  %29 = tail call ptr @xmemdup(ptr noundef nonnull @asm_fprintf_length_specs, i64 noundef 120, i64 noundef 120) #16
  %30 = tail call fastcc i32 @find_length_info_modifier_index(ptr noundef %29)
  %31 = load ptr, ptr @init_dynamic_asm_fprintf_info.hwi, align 8, !tbaa !52
  %32 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !52
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %34, label %37, !prof !131

34:                                               ; preds = %28
  %35 = zext i32 %30 to i64
  %36 = getelementptr inbounds %struct.format_length_info, ptr %29, i64 %35, i32 1
  store i32 3, ptr %36, align 8, !tbaa !139
  br label %44

37:                                               ; preds = %28
  %38 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8, !tbaa !52
  %39 = icmp eq ptr %31, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = zext i32 %30 to i64
  %42 = getelementptr inbounds %struct.format_length_info, ptr %29, i64 %41, i32 1
  store i32 4, ptr %42, align 8, !tbaa !139
  br label %44

43:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2446, ptr noundef nonnull @.str.7) #16
  br label %44

44:                                               ; preds = %40, %43, %34
  %45 = load ptr, ptr @dynamic_format_types, align 8, !tbaa !52
  %46 = getelementptr inbounds %struct.format_kind_info, ptr %45, i64 1, i32 1
  store ptr %29, ptr %46, align 8, !tbaa !138
  br label %47

47:                                               ; preds = %6, %14, %27, %44, %0
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @init_dynamic_gfc_info() unnamed_addr #10 !prof !51 {
  %1 = load ptr, ptr @init_dynamic_gfc_info.locus, align 8, !tbaa !52
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %38

3:                                                ; preds = %0
  %4 = tail call ptr @maybe_get_identifier(ptr noundef nonnull @.str.264) #16
  store ptr %4, ptr @init_dynamic_gfc_info.locus, align 8, !tbaa !52
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @identifier_global_value(ptr noundef nonnull %4) #16
  store ptr %7, ptr @init_dynamic_gfc_info.locus, align 8, !tbaa !52
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %6
  %10 = load i64, ptr %7, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 35
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  %16 = load ptr, ptr @global_trees, align 16, !tbaa !52
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %9
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.265) #16
  br label %19

19:                                               ; preds = %13, %18
  %20 = phi ptr [ null, %18 ], [ %15, %13 ]
  store ptr %20, ptr @init_dynamic_gfc_info.locus, align 8, !tbaa !52
  br label %21

21:                                               ; preds = %19, %6, %3
  %22 = load ptr, ptr @init_dynamic_gfc_info.gfc_fci, align 8, !tbaa !52
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = tail call ptr @xmemdup(ptr noundef nonnull @gcc_gfc_char_table, i64 noundef 2296, i64 noundef 2296) #16
  store ptr %25, ptr @init_dynamic_gfc_info.gfc_fci, align 8, !tbaa !52
  %26 = load ptr, ptr @dynamic_format_types, align 8, !tbaa !52
  %27 = getelementptr inbounds %struct.format_kind_info, ptr %26, i64 6, i32 2
  store ptr %25, ptr %27, align 8, !tbaa !141
  br label %28

28:                                               ; preds = %24, %21
  %29 = load ptr, ptr @init_dynamic_gfc_info.locus, align 8, !tbaa !52
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr @init_dynamic_gfc_info.gfc_fci, align 8, !tbaa !52
  %33 = tail call fastcc i32 @find_char_info_specifier_index(ptr noundef %32, i32 noundef 76)
  %34 = load ptr, ptr @init_dynamic_gfc_info.gfc_fci, align 8, !tbaa !52
  %35 = zext i32 %33 to i64
  %36 = getelementptr inbounds %struct.format_char_info, ptr %34, i64 %35, i32 3, i64 0, i32 2
  store ptr @init_dynamic_gfc_info.locus, ptr %36, align 8, !tbaa !142
  %37 = getelementptr inbounds %struct.format_char_info, ptr %34, i64 %35, i32 1
  store i32 1, ptr %37, align 8, !tbaa !144
  br label %38

38:                                               ; preds = %28, %31, %0
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #13

declare void @check_function_arguments_recurse(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @check_format_arg(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2) #10 !prof !51 {
  %4 = load ptr, ptr %0, align 8, !tbaa !86
  %5 = getelementptr inbounds %struct.format_check_context, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = getelementptr inbounds %struct.format_check_context, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !89
  %9 = tail call i32 @integer_zerop(ptr noundef %1) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.function_format_info, ptr %6, i64 0, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !95
  %14 = add i64 %2, 1
  %15 = icmp ult i64 %14, %13
  br i1 %15, label %16, label %25

16:                                               ; preds = %11, %20
  %17 = phi i64 [ %23, %20 ], [ %14, %11 ]
  %18 = phi ptr [ %22, %20 ], [ %8, %11 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %217, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !63
  %23 = add nuw i64 %17, 1
  %24 = icmp eq i64 %23, %13
  br i1 %24, label %25, label %16, !llvm.loop !149

25:                                               ; preds = %20, %11
  %26 = phi ptr [ %8, %11 ], [ %22, %20 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.format_check_results, ptr %4, i64 0, i32 6
  %30 = load i32, ptr %29, align 4, !tbaa !150
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %29, align 4, !tbaa !150
  br label %217

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.format_check_results, ptr %4, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !97
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %33, align 4, !tbaa !97
  br label %217

36:                                               ; preds = %3
  %37 = load i64, ptr %1, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 66
  br i1 %39, label %40, label %65

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !63
  %43 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !63
  %45 = tail call ptr @tree_strip_nop_conversions(ptr noundef %42) #16
  %46 = tail call ptr @tree_strip_nop_conversions(ptr noundef %44) #16
  %47 = load i64, ptr %46, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 23
  br i1 %49, label %50, label %56

50:                                               ; preds = %40
  %51 = tail call i32 @host_integerp(ptr noundef nonnull %46, i32 noundef 0) #16
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = tail call i64 @tree_low_cst(ptr noundef nonnull %46, i32 noundef 0) #16
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %50, %53, %40
  %57 = phi i64 [ 0, %40 ], [ %54, %53 ], [ 0, %50 ]
  %58 = phi ptr [ %1, %40 ], [ %45, %53 ], [ %45, %50 ]
  %59 = load i32, ptr %4, align 4, !tbaa !90
  %60 = add nsw i32 %59, 1
  store i32 %60, ptr %4, align 4, !tbaa !90
  br label %61

61:                                               ; preds = %56, %53
  %62 = phi i64 [ %54, %53 ], [ %57, %56 ]
  %63 = phi i1 [ true, %53 ], [ false, %56 ]
  %64 = phi ptr [ %45, %53 ], [ %58, %56 ]
  br i1 %63, label %65, label %217

65:                                               ; preds = %61, %36
  %66 = phi i64 [ %62, %61 ], [ 0, %36 ]
  %67 = phi ptr [ %64, %61 ], [ %1, %36 ]
  %68 = load i64, ptr %67, align 8
  %69 = and i64 %68, 65535
  %70 = icmp eq i64 %69, 121
  br i1 %70, label %74, label %71

71:                                               ; preds = %65
  %72 = load i32, ptr %4, align 4, !tbaa !90
  %73 = add nsw i32 %72, 1
  store i32 %73, ptr %4, align 4, !tbaa !90
  br label %217

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.tree_exp, ptr %67, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !63
  %77 = load i64, ptr %76, align 8
  %78 = and i64 %77, 65535
  %79 = icmp eq i64 %78, 45
  br i1 %79, label %80, label %93

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.tree_exp, ptr %76, i64 0, i32 3
  %82 = getelementptr inbounds %struct.tree_exp, ptr %76, i64 1
  %83 = load ptr, ptr %82, align 8, !tbaa !63
  %84 = tail call i32 @host_integerp(ptr noundef %83, i32 noundef 0) #16
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %80
  %87 = load ptr, ptr %82, align 8, !tbaa !63
  %88 = tail call i64 @tree_low_cst(ptr noundef %87, i32 noundef 0) #16
  %89 = add nsw i64 %88, %66
  %90 = icmp sgt i64 %89, -1
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load ptr, ptr %81, align 8, !tbaa !63
  br label %93

93:                                               ; preds = %91, %86, %80, %74
  %94 = phi i64 [ %89, %91 ], [ %89, %86 ], [ %66, %80 ], [ %66, %74 ]
  %95 = phi ptr [ %92, %91 ], [ %76, %86 ], [ %76, %80 ], [ %76, %74 ]
  %96 = load i64, ptr %95, align 8
  %97 = and i64 %96, 65535
  %98 = icmp eq i64 %97, 32
  br i1 %98, label %99, label %115

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.tree_common, ptr %95, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !63
  %102 = load i64, ptr %101, align 8
  %103 = and i64 %102, 65535
  %104 = icmp eq i64 %103, 15
  br i1 %104, label %105, label %115

105:                                              ; preds = %99
  %106 = tail call ptr @decl_constant_value(ptr noundef nonnull %95) #16
  %107 = icmp eq ptr %106, %95
  br i1 %107, label %115, label %108

108:                                              ; preds = %105
  %109 = load i64, ptr %106, align 8
  %110 = and i64 %109, 65535
  %111 = icmp eq i64 %110, 28
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.tree_decl_common, ptr %95, i64 0, i32 4
  %114 = load ptr, ptr %113, align 8, !tbaa !63
  br label %115

115:                                              ; preds = %112, %108, %105, %99, %93
  %116 = phi ptr [ %114, %112 ], [ null, %108 ], [ null, %105 ], [ null, %99 ], [ null, %93 ]
  %117 = phi ptr [ %106, %112 ], [ %95, %108 ], [ %95, %105 ], [ %95, %99 ], [ %95, %93 ]
  %118 = load i64, ptr %117, align 8
  %119 = and i64 %118, 65535
  %120 = icmp eq i64 %119, 28
  br i1 %120, label %124, label %121

121:                                              ; preds = %115
  %122 = load i32, ptr %4, align 4, !tbaa !90
  %123 = add nsw i32 %122, 1
  store i32 %123, ptr %4, align 4, !tbaa !90
  br label %217

124:                                              ; preds = %115
  %125 = getelementptr inbounds %struct.tree_common, ptr %117, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !63
  %127 = getelementptr inbounds %struct.tree_common, ptr %126, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !63
  %129 = getelementptr inbounds %struct.tree_type, ptr %128, i64 0, i32 16
  %130 = load ptr, ptr %129, align 8, !tbaa !63
  %131 = load ptr, ptr @integer_types, align 16, !tbaa !52
  %132 = icmp eq ptr %130, %131
  br i1 %132, label %137, label %133

133:                                              ; preds = %124
  %134 = getelementptr inbounds %struct.format_check_results, ptr %4, i64 0, i32 3
  %135 = load i32, ptr %134, align 4, !tbaa !101
  %136 = add nsw i32 %135, 1
  store i32 %136, ptr %134, align 4, !tbaa !101
  br label %217

137:                                              ; preds = %124
  %138 = getelementptr inbounds %struct.tree_string, ptr %117, i64 0, i32 2
  %139 = getelementptr inbounds %struct.tree_string, ptr %117, i64 0, i32 1
  %140 = load i32, ptr %139, align 8, !tbaa !63
  %141 = icmp eq ptr %116, null
  br i1 %141, label %161, label %142

142:                                              ; preds = %137
  %143 = load i64, ptr %116, align 8
  %144 = and i64 %143, 65535
  %145 = icmp eq i64 %144, 23
  br i1 %145, label %147, label %146

146:                                              ; preds = %142
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1383, ptr noundef nonnull @.str.7) #16
  br label %147

147:                                              ; preds = %142, %146
  %148 = tail call i32 @host_integerp(ptr noundef nonnull %116, i32 noundef 0) #16
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %161, label %150

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.tree_int_cst, ptr %116, i64 0, i32 1
  %152 = load i64, ptr %151, align 8, !tbaa !63
  %153 = icmp sgt i64 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %150
  %155 = trunc i64 %152 to i32
  %156 = icmp ult i64 %152, 2147483648
  %157 = sext i32 %140 to i64
  %158 = icmp slt i64 %152, %157
  %159 = select i1 %156, i1 %158, i1 false
  %160 = select i1 %159, i32 %155, i32 %140
  br label %161

161:                                              ; preds = %154, %150, %147, %137
  %162 = phi i32 [ %140, %147 ], [ %140, %137 ], [ %140, %150 ], [ %160, %154 ]
  %163 = icmp eq i64 %94, 0
  br i1 %163, label %174, label %164

164:                                              ; preds = %161
  %165 = sext i32 %162 to i64
  %166 = icmp slt i64 %94, %165
  br i1 %166, label %170, label %167

167:                                              ; preds = %164
  %168 = load i32, ptr %4, align 4, !tbaa !90
  %169 = add nsw i32 %168, 1
  store i32 %169, ptr %4, align 4, !tbaa !90
  br label %217

170:                                              ; preds = %164
  %171 = getelementptr inbounds i8, ptr %138, i64 %94
  %172 = trunc i64 %94 to i32
  %173 = sub i32 %162, %172
  br label %174

174:                                              ; preds = %170, %161
  %175 = phi i32 [ %173, %170 ], [ %162, %161 ]
  %176 = phi ptr [ %171, %170 ], [ %138, %161 ]
  %177 = icmp slt i32 %175, 1
  br i1 %177, label %184, label %178

178:                                              ; preds = %174
  %179 = add nsw i32 %175, -1
  %180 = zext nneg i32 %179 to i64
  %181 = getelementptr inbounds i8, ptr %176, i64 %180
  %182 = load i8, ptr %181, align 1, !tbaa !63
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %188, label %184

184:                                              ; preds = %178, %174
  %185 = getelementptr inbounds %struct.format_check_results, ptr %4, i64 0, i32 5
  %186 = load i32, ptr %185, align 4, !tbaa !102
  %187 = add nsw i32 %186, 1
  store i32 %187, ptr %185, align 4, !tbaa !102
  br label %217

188:                                              ; preds = %178
  %189 = icmp eq i32 %179, 0
  br i1 %189, label %197, label %190

190:                                              ; preds = %188
  %191 = getelementptr inbounds %struct.function_format_info, ptr %6, i64 0, i32 2
  %192 = load i64, ptr %191, align 8, !tbaa !95
  %193 = add i64 %2, 1
  %194 = icmp ult i64 %193, %192
  br i1 %194, label %195, label %210

195:                                              ; preds = %190
  %196 = add i64 %192, -1
  br label %201

197:                                              ; preds = %188
  %198 = getelementptr inbounds %struct.format_check_results, ptr %4, i64 0, i32 4
  %199 = load i32, ptr %198, align 4, !tbaa !99
  %200 = add nsw i32 %199, 1
  store i32 %200, ptr %198, align 4, !tbaa !99
  br label %217

201:                                              ; preds = %195, %205
  %202 = phi i64 [ %208, %205 ], [ %193, %195 ]
  %203 = phi ptr [ %207, %205 ], [ %8, %195 ]
  %204 = icmp eq ptr %203, null
  br i1 %204, label %217, label %205

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.tree_common, ptr %203, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !63
  %208 = add nuw i64 %202, 1
  %209 = icmp eq i64 %208, %192
  br i1 %209, label %210, label %201, !llvm.loop !151

210:                                              ; preds = %205, %190
  %211 = phi ptr [ %8, %190 ], [ %207, %205 ]
  %212 = phi i64 [ %2, %190 ], [ %196, %205 ]
  %213 = getelementptr inbounds %struct.format_check_results, ptr %4, i64 0, i32 6
  %214 = load i32, ptr %213, align 4, !tbaa !150
  %215 = add nsw i32 %214, 1
  store i32 %215, ptr %213, align 4, !tbaa !150
  %216 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.30, i64 noundef 72, i64 noundef 10) #16
  tail call fastcc void @check_format_info_main(ptr noundef %4, ptr noundef %6, ptr noundef %176, i32 noundef %179, ptr noundef %211, i64 noundef %212, ptr noundef %216)
  tail call void @free_alloc_pool(ptr noundef %216) #16
  br label %217

217:                                              ; preds = %16, %201, %28, %32, %61, %210, %197, %184, %167, %133, %121, %71
  ret void
}

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #3

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @decl_constant_value(ptr noundef) local_unnamed_addr #3

declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @check_format_info_main(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6) unnamed_addr #10 !prof !51 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.format_wanted_type, align 8
  %12 = alloca %struct.format_wanted_type, align 8
  %13 = alloca %struct.format_wanted_type, align 8
  %14 = alloca [256 x i8], align 16
  store ptr %2, ptr %8, align 8, !tbaa !52
  store ptr %4, ptr %9, align 8, !tbaa !52
  %15 = load ptr, ptr @format_types, align 8, !tbaa !52
  %16 = load i32, ptr %1, align 8, !tbaa !92
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.format_kind_info, ptr %15, i64 %17
  %19 = getelementptr inbounds %struct.format_kind_info, ptr %15, i64 %17, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !152
  %21 = getelementptr inbounds %struct.format_kind_info, ptr %15, i64 %17, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !153
  %23 = getelementptr inbounds %struct.function_format_info, ptr %1, i64 0, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !95
  %25 = trunc i64 %24 to i32
  store i32 %25, ptr @dollar_first_arg_num, align 4, !tbaa !67
  store i32 0, ptr @dollar_arguments_count, align 4, !tbaa !67
  store i32 0, ptr @dollar_max_arg_used, align 4, !tbaa !67
  store i1 false, ptr @dollar_format_warned, align 4
  %26 = icmp sgt i32 %25, 0
  %27 = icmp ne ptr %4, null
  %28 = and i1 %27, %26
  br i1 %28, label %29, label %39

29:                                               ; preds = %7
  %30 = load i32, ptr @dollar_arguments_count, align 4, !tbaa !67
  br label %31

31:                                               ; preds = %29, %31
  %32 = phi i32 [ %34, %31 ], [ %30, %29 ]
  %33 = phi ptr [ %36, %31 ], [ %4, %29 ]
  %34 = add nsw i32 %32, 1
  %35 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !63
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %31

38:                                               ; preds = %31
  store i32 %34, ptr @dollar_arguments_count, align 4, !tbaa !67
  br label %39

39:                                               ; preds = %38, %7
  %40 = load i32, ptr @dollar_arguments_alloc, align 4, !tbaa !67
  %41 = load i32, ptr @dollar_arguments_count, align 4, !tbaa !67
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = load ptr, ptr @dollar_arguments_used, align 8, !tbaa !52
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call void @free(ptr noundef %44)
  br label %47

47:                                               ; preds = %46, %43
  %48 = load ptr, ptr @dollar_arguments_pointer_p, align 8, !tbaa !52
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  tail call void @free(ptr noundef %48)
  br label %51

51:                                               ; preds = %50, %47
  store i32 %41, ptr @dollar_arguments_alloc, align 4, !tbaa !67
  %52 = sext i32 %41 to i64
  %53 = tail call ptr @xmalloc(i64 noundef %52) #16
  store ptr %53, ptr @dollar_arguments_used, align 8, !tbaa !52
  %54 = load i32, ptr @dollar_arguments_alloc, align 4, !tbaa !67
  %55 = sext i32 %54 to i64
  %56 = tail call ptr @xmalloc(i64 noundef %55) #16
  store ptr %56, ptr @dollar_arguments_pointer_p, align 8, !tbaa !52
  br label %57

57:                                               ; preds = %51, %39
  %58 = load i32, ptr @dollar_arguments_alloc, align 4, !tbaa !67
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %83, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr @dollar_arguments_used, align 8, !tbaa !52
  %62 = sext i32 %58 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %61, i8 0, i64 %62, i1 false)
  %63 = icmp ne ptr %4, null
  %64 = and i1 %63, %26
  br i1 %64, label %65, label %83

65:                                               ; preds = %60
  %66 = load ptr, ptr @dollar_arguments_pointer_p, align 8, !tbaa !52
  br label %67

67:                                               ; preds = %65, %67
  %68 = phi i64 [ 0, %65 ], [ %81, %67 ]
  %69 = phi ptr [ %4, %65 ], [ %80, %67 ]
  %70 = getelementptr inbounds %struct.tree_list, ptr %69, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !63
  %72 = getelementptr inbounds %struct.tree_common, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !63
  %74 = load i64, ptr %73, align 8
  %75 = and i64 %74, 65535
  %76 = icmp eq i64 %75, 10
  %77 = zext i1 %76 to i8
  %78 = getelementptr inbounds i8, ptr %66, i64 %68
  store i8 %77, ptr %78, align 1, !tbaa !63
  %79 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !63
  %81 = add nuw i64 %68, 1
  %82 = icmp eq ptr %80, null
  br i1 %82, label %83, label %67, !llvm.loop !154

83:                                               ; preds = %67, %60, %57
  %84 = getelementptr inbounds %struct.format_kind_info, ptr %15, i64 %17, i32 7
  %85 = getelementptr inbounds %struct.format_kind_info, ptr %15, i64 %17, i32 3
  %86 = getelementptr inbounds %struct.format_kind_info, ptr %15, i64 %17, i32 8
  %87 = getelementptr inbounds %struct.format_kind_info, ptr %15, i64 %17, i32 14
  %88 = getelementptr inbounds %struct.format_kind_info, ptr %15, i64 %17, i32 9
  %89 = getelementptr inbounds %struct.format_kind_info, ptr %15, i64 %17, i32 10
  %90 = getelementptr inbounds %struct.format_kind_info, ptr %15, i64 %17, i32 15
  %91 = getelementptr inbounds %struct.format_kind_info, ptr %15, i64 %17, i32 13
  %92 = getelementptr inbounds %struct.format_kind_info, ptr %15, i64 %17, i32 1
  %93 = getelementptr inbounds %struct.format_kind_info, ptr %15, i64 %17, i32 4
  %94 = getelementptr inbounds %struct.format_kind_info, ptr %15, i64 %17, i32 2
  %95 = ptrtoint ptr %2 to i64
  %96 = zext nneg i32 %3 to i64
  %97 = getelementptr inbounds %struct.format_check_results, ptr %0, i64 0, i32 6
  %98 = getelementptr inbounds %struct.format_check_results, ptr %0, i64 0, i32 1
  %99 = getelementptr inbounds %struct.format_kind_info, ptr %15, i64 %17, i32 7
  %100 = getelementptr inbounds %struct.format_check_results, ptr %0, i64 0, i32 6
  %101 = getelementptr inbounds %struct.format_check_results, ptr %0, i64 0, i32 2
  br label %102

102:                                              ; preds = %1529, %83
  %103 = phi i32 [ -1, %83 ], [ %1527, %1529 ]
  %104 = phi i64 [ %5, %83 ], [ %1528, %1529 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  store ptr null, ptr %10, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %14) #16
  %105 = load ptr, ptr %8, align 8, !tbaa !52
  %106 = load i8, ptr %105, align 1, !tbaa !63
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %178

108:                                              ; preds = %102
  %109 = ptrtoint ptr %105 to i64
  %110 = sub i64 %109, %95
  %111 = icmp eq i64 %110, %96
  br i1 %111, label %114, label %112

112:                                              ; preds = %108
  %113 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 92, ptr noundef nonnull @.str.31) #16
  br label %114

114:                                              ; preds = %112, %108
  %115 = load i64, ptr %23, align 8, !tbaa !95
  %116 = icmp ne i64 %115, 0
  %117 = load ptr, ptr %9, align 8
  %118 = icmp ne ptr %117, null
  %119 = select i1 %116, i1 %118, i1 false
  %120 = icmp slt i32 %103, 1
  %121 = select i1 %119, i1 %120, i1 false
  br i1 %121, label %122, label %127

122:                                              ; preds = %114
  %123 = load i32, ptr %97, align 4, !tbaa !150
  %124 = add nsw i32 %123, -1
  store i32 %124, ptr %97, align 4, !tbaa !150
  %125 = load i32, ptr %98, align 4, !tbaa !97
  %126 = add nsw i32 %125, 1
  store i32 %126, ptr %98, align 4, !tbaa !97
  br label %127

127:                                              ; preds = %122, %114
  %128 = icmp sgt i32 %103, 0
  br i1 %128, label %129, label %1525

129:                                              ; preds = %127
  %130 = load i32, ptr @dollar_max_arg_used, align 4, !tbaa !67
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %163

132:                                              ; preds = %129
  %133 = load i32, ptr %99, align 8, !tbaa !93
  %134 = and i32 %133, 128
  %135 = icmp eq i32 %134, 0
  br label %136

136:                                              ; preds = %132, %157
  %137 = phi i64 [ 0, %132 ], [ %159, %157 ]
  %138 = phi i32 [ %130, %132 ], [ %160, %157 ]
  %139 = phi i8 [ 0, %132 ], [ %158, %157 ]
  %140 = load ptr, ptr @dollar_arguments_used, align 8, !tbaa !52
  %141 = getelementptr inbounds i8, ptr %140, i64 %137
  %142 = load i8, ptr %141, align 1, !tbaa !63
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %136
  br i1 %135, label %153, label %145

145:                                              ; preds = %144
  %146 = load i32, ptr @dollar_first_arg_num, align 4, !tbaa !67
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %157, label %148

148:                                              ; preds = %145
  %149 = load ptr, ptr @dollar_arguments_pointer_p, align 8, !tbaa !52
  %150 = getelementptr inbounds i8, ptr %149, i64 %137
  %151 = load i8, ptr %150, align 1, !tbaa !63
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %148, %144
  %154 = trunc i64 %137 to i32
  %155 = add i32 %154, 1
  %156 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.64, i32 noundef %155, i32 noundef %138) #16
  br label %157

157:                                              ; preds = %153, %148, %145, %136
  %158 = phi i8 [ %139, %136 ], [ %139, %153 ], [ 1, %148 ], [ 1, %145 ]
  %159 = add nuw nsw i64 %137, 1
  %160 = load i32, ptr @dollar_max_arg_used, align 4, !tbaa !67
  %161 = sext i32 %160 to i64
  %162 = icmp slt i64 %159, %161
  br i1 %162, label %136, label %163, !llvm.loop !155

163:                                              ; preds = %157, %129
  %164 = phi i8 [ 0, %129 ], [ %158, %157 ]
  %165 = phi i32 [ %130, %129 ], [ %160, %157 ]
  %166 = icmp eq i8 %164, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %163
  %168 = load i32, ptr @dollar_first_arg_num, align 4, !tbaa !67
  %169 = icmp ne i32 %168, 0
  %170 = load i32, ptr @dollar_arguments_count, align 4
  %171 = icmp slt i32 %165, %170
  %172 = select i1 %169, i1 %171, i1 false
  br i1 %172, label %173, label %1525

173:                                              ; preds = %167, %163
  %174 = load i32, ptr %100, align 4, !tbaa !150
  %175 = add nsw i32 %174, -1
  store i32 %175, ptr %100, align 4, !tbaa !150
  %176 = load i32, ptr %101, align 4, !tbaa !98
  %177 = add nsw i32 %176, 1
  store i32 %177, ptr %101, align 4, !tbaa !98
  br label %1525

178:                                              ; preds = %102
  %179 = getelementptr inbounds i8, ptr %105, i64 1
  store ptr %179, ptr %8, align 8, !tbaa !52
  %180 = icmp eq i8 %106, 37
  br i1 %180, label %181, label %1525, !llvm.loop !156

181:                                              ; preds = %178
  %182 = load i8, ptr %179, align 1, !tbaa !63
  switch i8 %182, label %187 [
    i8 0, label %183
    i8 37, label %185
  ]

183:                                              ; preds = %181
  %184 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.32) #16
  br label %1525, !llvm.loop !156

185:                                              ; preds = %181
  %186 = getelementptr inbounds i8, ptr %105, i64 2
  store ptr %186, ptr %8, align 8, !tbaa !52
  br label %1525, !llvm.loop !156

187:                                              ; preds = %181
  store i8 0, ptr %14, align 16, !tbaa !63
  %188 = load i32, ptr %84, align 8, !tbaa !93
  %189 = and i32 %188, 16
  %190 = icmp ne i32 %189, 0
  %191 = icmp ne i32 %103, 0
  %192 = select i1 %190, i1 %191, i1 false
  br i1 %192, label %193, label %205

193:                                              ; preds = %187
  %194 = call fastcc i32 @maybe_read_dollar_number(ptr noundef nonnull %8, i32 noundef 0, ptr noundef %4, ptr noundef nonnull %10, ptr noundef %18)
  %195 = icmp eq i32 %194, -1
  %196 = icmp sgt i32 %194, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %193
  %198 = load i64, ptr %23, align 8, !tbaa !95
  %199 = trunc i64 %198 to i32
  %200 = add nsw i32 %194, -1
  %201 = add i32 %200, %199
  br label %202

202:                                              ; preds = %197, %193
  %203 = phi i32 [ 0, %193 ], [ %201, %197 ]
  %204 = phi i32 [ %103, %193 ], [ 1, %197 ]
  br i1 %195, label %1525, label %209

205:                                              ; preds = %187
  br i1 %190, label %206, label %209

206:                                              ; preds = %205
  %207 = call fastcc zeroext i8 @avoid_dollar_number(ptr noundef nonnull %179), !range !74
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %209, label %1525

209:                                              ; preds = %206, %205, %202
  %210 = phi i32 [ %203, %202 ], [ 0, %205 ], [ 0, %206 ]
  %211 = phi i32 [ %204, %202 ], [ %103, %205 ], [ %103, %206 ]
  %212 = load ptr, ptr %8, align 8, !tbaa !52
  %213 = load i8, ptr %212, align 1, !tbaa !63
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %273, label %215

215:                                              ; preds = %209, %268
  %216 = phi i8 [ %271, %268 ], [ %213, %209 ]
  %217 = phi ptr [ %270, %268 ], [ %212, %209 ]
  %218 = sext i8 %216 to i32
  %219 = load ptr, ptr %85, align 8, !tbaa !157
  %220 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %219, i32 noundef %218)
  %221 = icmp eq ptr %220, null
  br i1 %221, label %273, label %222

222:                                              ; preds = %215
  %223 = load i32, ptr %20, align 8, !tbaa !158
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %239, label %225

225:                                              ; preds = %222, %234
  %226 = phi i64 [ %235, %234 ], [ 0, %222 ]
  %227 = phi i32 [ %237, %234 ], [ %223, %222 ]
  %228 = phi ptr [ %236, %234 ], [ %20, %222 ]
  %229 = icmp eq i32 %227, %218
  br i1 %229, label %230, label %234

230:                                              ; preds = %225
  %231 = getelementptr inbounds %struct.format_flag_spec, ptr %20, i64 %226, i32 1
  %232 = load i32, ptr %231, align 4, !tbaa !160
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %240, label %234

234:                                              ; preds = %230, %225
  %235 = add nuw i64 %226, 1
  %236 = getelementptr inbounds %struct.format_flag_spec, ptr %20, i64 %235
  %237 = load i32, ptr %236, align 8, !tbaa !158
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %225, !llvm.loop !161

239:                                              ; preds = %234, %222
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1177, ptr noundef nonnull @.str.7) #16
  br label %240

240:                                              ; preds = %230, %239
  %241 = phi ptr [ null, %239 ], [ %228, %230 ]
  %242 = load i8, ptr %217, align 1, !tbaa !63
  %243 = sext i8 %242 to i32
  %244 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %14, i32 noundef %243)
  %245 = icmp eq ptr %244, null
  br i1 %245, label %250, label %246

246:                                              ; preds = %240
  %247 = getelementptr inbounds %struct.format_flag_spec, ptr %241, i64 0, i32 3
  %248 = load ptr, ptr %247, align 8, !tbaa !162
  %249 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.33, ptr noundef %248) #16
  br label %258

250:                                              ; preds = %240
  %251 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14)
  %252 = shl i64 %251, 32
  %253 = ashr exact i64 %252, 32
  %254 = getelementptr inbounds [256 x i8], ptr %14, i64 0, i64 %253
  store i8 %242, ptr %254, align 1, !tbaa !63
  %255 = add i64 %252, 4294967296
  %256 = ashr exact i64 %255, 32
  %257 = getelementptr inbounds [256 x i8], ptr %14, i64 0, i64 %256
  store i8 0, ptr %257, align 1, !tbaa !63
  br label %258

258:                                              ; preds = %250, %246
  %259 = getelementptr inbounds %struct.format_flag_spec, ptr %241, i64 0, i32 2
  %260 = load i32, ptr %259, align 8, !tbaa !163
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %268, label %262

262:                                              ; preds = %258
  %263 = getelementptr inbounds i8, ptr %217, i64 1
  %264 = load i8, ptr %263, align 1, !tbaa !63
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %262
  store ptr %263, ptr %8, align 8, !tbaa !52
  %267 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.34) #16
  br label %1525

268:                                              ; preds = %262, %258
  %269 = phi ptr [ %263, %262 ], [ %217, %258 ]
  %270 = getelementptr inbounds i8, ptr %269, i64 1
  %271 = load i8, ptr %270, align 1, !tbaa !63
  %272 = icmp eq i8 %271, 0
  br i1 %272, label %273, label %215, !llvm.loop !164

273:                                              ; preds = %215, %268, %209
  %274 = phi ptr [ %212, %209 ], [ %217, %215 ], [ %270, %268 ]
  %275 = phi i8 [ %213, %209 ], [ %216, %215 ], [ %271, %268 ]
  store ptr %274, ptr %8, align 8, !tbaa !52
  %276 = load i32, ptr %86, align 4, !tbaa !165
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %384, label %278

278:                                              ; preds = %273
  %279 = load ptr, ptr %87, align 8, !tbaa !166
  %280 = icmp ne ptr %279, null
  %281 = icmp eq i8 %275, 42
  %282 = and i1 %281, %280
  br i1 %282, label %291, label %283

283:                                              ; preds = %278
  %284 = load ptr, ptr %8, align 8, !tbaa !52
  %285 = load i8, ptr %284, align 1, !tbaa !63
  %286 = zext i8 %285 to i64
  %287 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %286
  %288 = load i16, ptr %287, align 2, !tbaa !167
  %289 = and i16 %288, 4
  %290 = icmp eq i16 %289, 0
  br i1 %290, label %361, label %348

291:                                              ; preds = %278
  %292 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14)
  %293 = trunc i32 %276 to i8
  %294 = shl i64 %292, 32
  %295 = ashr exact i64 %294, 32
  %296 = getelementptr inbounds [256 x i8], ptr %14, i64 0, i64 %295
  store i8 %293, ptr %296, align 1, !tbaa !63
  %297 = add i64 %294, 4294967296
  %298 = ashr exact i64 %297, 32
  %299 = getelementptr inbounds [256 x i8], ptr %14, i64 0, i64 %298
  store i8 0, ptr %299, align 1, !tbaa !63
  %300 = getelementptr inbounds i8, ptr %274, i64 1
  store ptr %300, ptr %8, align 8, !tbaa !52
  %301 = icmp eq i32 %211, 0
  br i1 %301, label %317, label %302

302:                                              ; preds = %291
  %303 = icmp eq i32 %211, 1
  %304 = zext i1 %303 to i32
  %305 = call fastcc i32 @maybe_read_dollar_number(ptr noundef nonnull %8, i32 noundef %304, ptr noundef %4, ptr noundef nonnull %9, ptr noundef %18)
  %306 = icmp eq i32 %305, -1
  br i1 %306, label %314, label %307

307:                                              ; preds = %302
  %308 = icmp sgt i32 %305, 0
  br i1 %308, label %309, label %314

309:                                              ; preds = %307
  %310 = zext nneg i32 %305 to i64
  %311 = load i64, ptr %23, align 8, !tbaa !95
  %312 = add nsw i64 %310, -1
  %313 = add i64 %312, %311
  br label %314

314:                                              ; preds = %309, %307, %302
  %315 = phi i32 [ %211, %302 ], [ 1, %309 ], [ 0, %307 ]
  %316 = phi i64 [ %104, %302 ], [ %313, %309 ], [ %104, %307 ]
  br i1 %306, label %1525, label %320

317:                                              ; preds = %291
  %318 = call fastcc zeroext i8 @avoid_dollar_number(ptr noundef nonnull %300), !range !74
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %320, label %1525

320:                                              ; preds = %317, %314
  %321 = phi i32 [ %315, %314 ], [ 0, %317 ]
  %322 = phi i64 [ %316, %314 ], [ %104, %317 ]
  %323 = load i64, ptr %23, align 8, !tbaa !95
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %384, label %325

325:                                              ; preds = %320
  %326 = load ptr, ptr %9, align 8, !tbaa !52
  %327 = icmp eq ptr %326, null
  br i1 %327, label %328, label %330

328:                                              ; preds = %325
  %329 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.35) #16
  br label %1525

330:                                              ; preds = %325
  %331 = getelementptr inbounds %struct.tree_list, ptr %326, i64 0, i32 2
  %332 = load ptr, ptr %331, align 8, !tbaa !63
  %333 = icmp slt i32 %321, 1
  br i1 %333, label %334, label %338

334:                                              ; preds = %330
  %335 = getelementptr inbounds %struct.tree_common, ptr %326, i64 0, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !63
  store ptr %336, ptr %9, align 8, !tbaa !52
  %337 = add i64 %322, 1
  br label %338

338:                                              ; preds = %334, %330
  %339 = phi i64 [ %337, %334 ], [ %322, %330 ]
  %340 = getelementptr inbounds %struct.format_wanted_type, ptr %11, i64 0, i32 1
  %341 = getelementptr inbounds %struct.format_wanted_type, ptr %11, i64 0, i32 7
  %342 = getelementptr inbounds %struct.format_wanted_type, ptr %11, i64 0, i32 8
  %343 = getelementptr inbounds %struct.format_wanted_type, ptr %11, i64 0, i32 9
  %344 = getelementptr inbounds %struct.format_wanted_type, ptr %11, i64 0, i32 10
  %345 = load ptr, ptr %87, align 8, !tbaa !166
  %346 = load ptr, ptr %345, align 8, !tbaa !52
  store ptr %346, ptr %11, align 8, !tbaa !168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %340, i8 0, i64 28, i1 false)
  store ptr @.str.36, ptr %341, align 8, !tbaa !170
  store ptr %332, ptr %342, align 8, !tbaa !171
  %347 = trunc i64 %339 to i32
  store i32 %347, ptr %343, align 8, !tbaa !172
  store ptr null, ptr %344, align 8, !tbaa !173
  br label %384

348:                                              ; preds = %283, %348
  %349 = phi i8 [ %355, %348 ], [ %285, %283 ]
  %350 = phi i32 [ %353, %348 ], [ 0, %283 ]
  %351 = phi ptr [ %354, %348 ], [ %284, %283 ]
  %352 = icmp eq i8 %349, 48
  %353 = select i1 %352, i32 %350, i32 1
  %354 = getelementptr inbounds i8, ptr %351, i64 1
  %355 = load i8, ptr %354, align 1, !tbaa !63
  %356 = zext i8 %355 to i64
  %357 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %356
  %358 = load i16, ptr %357, align 2, !tbaa !167
  %359 = and i16 %358, 4
  %360 = icmp eq i16 %359, 0
  br i1 %360, label %361, label %348, !llvm.loop !174

361:                                              ; preds = %348, %283
  %362 = phi ptr [ %284, %283 ], [ %354, %348 ]
  %363 = phi i32 [ 0, %283 ], [ %353, %348 ]
  store ptr %362, ptr %8, align 8, !tbaa !52
  %364 = icmp ne i32 %363, 0
  %365 = select i1 %290, i1 true, i1 %364
  br i1 %365, label %373, label %366

366:                                              ; preds = %361
  %367 = load i32, ptr %84, align 8, !tbaa !93
  %368 = and i32 %367, 32
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %373, label %370

370:                                              ; preds = %366
  %371 = load ptr, ptr %18, align 8, !tbaa !100
  %372 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.37, ptr noundef %371) #16
  br label %373

373:                                              ; preds = %370, %366, %361
  br i1 %290, label %384, label %374

374:                                              ; preds = %373
  %375 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14)
  %376 = load i32, ptr %86, align 4, !tbaa !165
  %377 = trunc i32 %376 to i8
  %378 = shl i64 %375, 32
  %379 = ashr exact i64 %378, 32
  %380 = getelementptr inbounds [256 x i8], ptr %14, i64 0, i64 %379
  store i8 %377, ptr %380, align 1, !tbaa !63
  %381 = add i64 %378, 4294967296
  %382 = ashr exact i64 %381, 32
  %383 = getelementptr inbounds [256 x i8], ptr %14, i64 0, i64 %382
  store i8 0, ptr %383, align 1, !tbaa !63
  br label %384

384:                                              ; preds = %373, %374, %338, %320, %273
  %385 = phi ptr [ %11, %338 ], [ null, %320 ], [ null, %273 ], [ null, %374 ], [ null, %373 ]
  %386 = phi i32 [ %321, %338 ], [ %321, %320 ], [ %211, %273 ], [ %211, %374 ], [ %211, %373 ]
  %387 = phi i64 [ %339, %338 ], [ %322, %320 ], [ %104, %273 ], [ %104, %374 ], [ %104, %373 ]
  %388 = load i32, ptr %88, align 8, !tbaa !175
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %425, label %390

390:                                              ; preds = %384
  %391 = load ptr, ptr %8, align 8, !tbaa !52
  %392 = load i8, ptr %391, align 1, !tbaa !63
  %393 = icmp eq i8 %392, 35
  br i1 %393, label %394, label %425

394:                                              ; preds = %390
  %395 = getelementptr inbounds i8, ptr %391, i64 1
  store ptr %395, ptr %8, align 8, !tbaa !52
  %396 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14)
  %397 = trunc i32 %388 to i8
  %398 = shl i64 %396, 32
  %399 = ashr exact i64 %398, 32
  %400 = getelementptr inbounds [256 x i8], ptr %14, i64 0, i64 %399
  store i8 %397, ptr %400, align 1, !tbaa !63
  %401 = add i64 %398, 4294967296
  %402 = ashr exact i64 %401, 32
  %403 = getelementptr inbounds [256 x i8], ptr %14, i64 0, i64 %402
  store i8 0, ptr %403, align 1, !tbaa !63
  %404 = load i8, ptr %395, align 1, !tbaa !63
  %405 = zext i8 %404 to i64
  %406 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %405
  %407 = load i16, ptr %406, align 2, !tbaa !167
  %408 = and i16 %407, 4
  %409 = icmp eq i16 %408, 0
  br i1 %409, label %410, label %413

410:                                              ; preds = %394
  %411 = load ptr, ptr %18, align 8, !tbaa !100
  %412 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.38, ptr noundef %411) #16
  br label %413

413:                                              ; preds = %410, %394
  %414 = load ptr, ptr %8, align 8, !tbaa !52
  br label %415

415:                                              ; preds = %415, %413
  %416 = phi ptr [ %423, %415 ], [ %414, %413 ]
  %417 = load i8, ptr %416, align 1, !tbaa !63
  %418 = zext i8 %417 to i64
  %419 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %418
  %420 = load i16, ptr %419, align 2, !tbaa !167
  %421 = and i16 %420, 4
  %422 = icmp eq i16 %421, 0
  %423 = getelementptr inbounds i8, ptr %416, i64 1
  br i1 %422, label %424, label %415, !llvm.loop !176

424:                                              ; preds = %415
  store ptr %416, ptr %8, align 8, !tbaa !52
  br label %425

425:                                              ; preds = %424, %390, %384
  %426 = load i32, ptr %89, align 4, !tbaa !177
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %525, label %428

428:                                              ; preds = %425
  %429 = load ptr, ptr %8, align 8, !tbaa !52
  %430 = load i8, ptr %429, align 1, !tbaa !63
  %431 = icmp eq i8 %430, 46
  br i1 %431, label %432, label %525

432:                                              ; preds = %428
  %433 = getelementptr inbounds i8, ptr %429, i64 1
  store ptr %433, ptr %8, align 8, !tbaa !52
  %434 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14)
  %435 = trunc i32 %426 to i8
  %436 = shl i64 %434, 32
  %437 = ashr exact i64 %436, 32
  %438 = getelementptr inbounds [256 x i8], ptr %14, i64 0, i64 %437
  store i8 %435, ptr %438, align 1, !tbaa !63
  %439 = add i64 %436, 4294967296
  %440 = ashr exact i64 %439, 32
  %441 = getelementptr inbounds [256 x i8], ptr %14, i64 0, i64 %440
  store i8 0, ptr %441, align 1, !tbaa !63
  %442 = load ptr, ptr %90, align 8, !tbaa !178
  %443 = icmp eq ptr %442, null
  br i1 %443, label %499, label %444

444:                                              ; preds = %432
  %445 = load i8, ptr %433, align 1, !tbaa !63
  %446 = icmp eq i8 %445, 42
  br i1 %446, label %447, label %499

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %429, i64 2
  store ptr %448, ptr %8, align 8, !tbaa !52
  %449 = icmp eq i32 %386, 0
  br i1 %449, label %465, label %450

450:                                              ; preds = %447
  %451 = icmp eq i32 %386, 1
  %452 = zext i1 %451 to i32
  %453 = call fastcc i32 @maybe_read_dollar_number(ptr noundef nonnull %8, i32 noundef %452, ptr noundef %4, ptr noundef nonnull %9, ptr noundef %18)
  %454 = icmp eq i32 %453, -1
  br i1 %454, label %462, label %455

455:                                              ; preds = %450
  %456 = icmp sgt i32 %453, 0
  br i1 %456, label %457, label %462

457:                                              ; preds = %455
  %458 = zext nneg i32 %453 to i64
  %459 = load i64, ptr %23, align 8, !tbaa !95
  %460 = add nsw i64 %458, -1
  %461 = add i64 %460, %459
  br label %462

462:                                              ; preds = %457, %455, %450
  %463 = phi i32 [ %386, %450 ], [ 1, %457 ], [ 0, %455 ]
  %464 = phi i64 [ %387, %450 ], [ %461, %457 ], [ %387, %455 ]
  br i1 %454, label %1525, label %468

465:                                              ; preds = %447
  %466 = call fastcc zeroext i8 @avoid_dollar_number(ptr noundef nonnull %448), !range !74
  %467 = icmp eq i8 %466, 0
  br i1 %467, label %468, label %1525

468:                                              ; preds = %465, %462
  %469 = phi i32 [ %463, %462 ], [ 0, %465 ]
  %470 = phi i64 [ %464, %462 ], [ %387, %465 ]
  %471 = load i64, ptr %23, align 8, !tbaa !95
  %472 = icmp eq i64 %471, 0
  br i1 %472, label %525, label %473

473:                                              ; preds = %468
  %474 = load ptr, ptr %9, align 8, !tbaa !52
  %475 = icmp eq ptr %474, null
  br i1 %475, label %476, label %478

476:                                              ; preds = %473
  %477 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.35) #16
  br label %1525

478:                                              ; preds = %473
  %479 = getelementptr inbounds %struct.tree_list, ptr %474, i64 0, i32 2
  %480 = load ptr, ptr %479, align 8, !tbaa !63
  %481 = icmp slt i32 %469, 1
  br i1 %481, label %482, label %486

482:                                              ; preds = %478
  %483 = getelementptr inbounds %struct.tree_common, ptr %474, i64 0, i32 1
  %484 = load ptr, ptr %483, align 8, !tbaa !63
  store ptr %484, ptr %9, align 8, !tbaa !52
  %485 = add i64 %470, 1
  br label %486

486:                                              ; preds = %482, %478
  %487 = phi i64 [ %485, %482 ], [ %470, %478 ]
  %488 = getelementptr inbounds %struct.format_wanted_type, ptr %12, i64 0, i32 1
  %489 = getelementptr inbounds %struct.format_wanted_type, ptr %12, i64 0, i32 7
  %490 = getelementptr inbounds %struct.format_wanted_type, ptr %12, i64 0, i32 8
  %491 = getelementptr inbounds %struct.format_wanted_type, ptr %12, i64 0, i32 9
  %492 = getelementptr inbounds %struct.format_wanted_type, ptr %12, i64 0, i32 10
  %493 = load ptr, ptr %90, align 8, !tbaa !178
  %494 = load ptr, ptr %493, align 8, !tbaa !52
  store ptr %494, ptr %12, align 8, !tbaa !168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %488, i8 0, i64 28, i1 false)
  store ptr @.str.39, ptr %489, align 8, !tbaa !170
  store ptr %480, ptr %490, align 8, !tbaa !171
  %495 = trunc i64 %487 to i32
  store i32 %495, ptr %491, align 8, !tbaa !172
  store ptr null, ptr %492, align 8, !tbaa !173
  %496 = icmp eq ptr %385, null
  br i1 %496, label %525, label %497

497:                                              ; preds = %486
  %498 = getelementptr inbounds %struct.format_wanted_type, ptr %385, i64 0, i32 10
  store ptr %12, ptr %498, align 8, !tbaa !173
  br label %525

499:                                              ; preds = %444, %432
  %500 = load i32, ptr %84, align 8, !tbaa !93
  %501 = and i32 %500, 64
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %503, label %513

503:                                              ; preds = %499
  %504 = load i8, ptr %433, align 1, !tbaa !63
  %505 = zext i8 %504 to i64
  %506 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %505
  %507 = load i16, ptr %506, align 2, !tbaa !167
  %508 = and i16 %507, 4
  %509 = icmp eq i16 %508, 0
  br i1 %509, label %510, label %513

510:                                              ; preds = %503
  %511 = load ptr, ptr %18, align 8, !tbaa !100
  %512 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.40, ptr noundef %511) #16
  br label %513

513:                                              ; preds = %510, %503, %499
  %514 = load ptr, ptr %8, align 8, !tbaa !52
  br label %515

515:                                              ; preds = %515, %513
  %516 = phi ptr [ %523, %515 ], [ %514, %513 ]
  %517 = load i8, ptr %516, align 1, !tbaa !63
  %518 = zext i8 %517 to i64
  %519 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %518
  %520 = load i16, ptr %519, align 2, !tbaa !167
  %521 = and i16 %520, 4
  %522 = icmp eq i16 %521, 0
  %523 = getelementptr inbounds i8, ptr %516, i64 1
  br i1 %522, label %524, label %515, !llvm.loop !179

524:                                              ; preds = %515
  store ptr %516, ptr %8, align 8, !tbaa !52
  br label %525

525:                                              ; preds = %524, %486, %497, %468, %428, %425
  %526 = phi ptr [ %385, %428 ], [ %385, %425 ], [ %385, %468 ], [ %385, %497 ], [ %12, %486 ], [ %385, %524 ]
  %527 = phi ptr [ %385, %428 ], [ %385, %425 ], [ %385, %468 ], [ %12, %497 ], [ %12, %486 ], [ %385, %524 ]
  %528 = phi i32 [ %386, %428 ], [ %386, %425 ], [ %469, %468 ], [ %469, %497 ], [ %469, %486 ], [ %386, %524 ]
  %529 = phi i64 [ %387, %428 ], [ %387, %425 ], [ %470, %468 ], [ %487, %497 ], [ %487, %486 ], [ %387, %524 ]
  %530 = load i32, ptr %91, align 8, !tbaa !180
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %547, label %532

532:                                              ; preds = %525
  %533 = load ptr, ptr %8, align 8, !tbaa !52
  %534 = load i8, ptr %533, align 1, !tbaa !63
  %535 = sext i8 %534 to i32
  %536 = icmp eq i32 %530, %535
  br i1 %536, label %537, label %547

537:                                              ; preds = %532
  %538 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14)
  %539 = trunc i32 %530 to i8
  %540 = shl i64 %538, 32
  %541 = ashr exact i64 %540, 32
  %542 = getelementptr inbounds [256 x i8], ptr %14, i64 0, i64 %541
  store i8 %539, ptr %542, align 1, !tbaa !63
  %543 = add i64 %540, 4294967296
  %544 = ashr exact i64 %543, 32
  %545 = getelementptr inbounds [256 x i8], ptr %14, i64 0, i64 %544
  store i8 0, ptr %545, align 1, !tbaa !63
  %546 = getelementptr inbounds i8, ptr %533, i64 1
  store ptr %546, ptr %8, align 8, !tbaa !52
  br label %547

547:                                              ; preds = %537, %532, %525
  %548 = load i32, ptr %84, align 8, !tbaa !93
  %549 = and i32 %548, 2
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %569, label %551

551:                                              ; preds = %547
  %552 = load ptr, ptr %8, align 8, !tbaa !52
  %553 = load i8, ptr %552, align 1, !tbaa !63
  %554 = icmp ne i8 %553, 97
  %555 = load i32, ptr @flag_isoc99, align 4
  %556 = icmp ne i32 %555, 0
  %557 = select i1 %554, i1 true, i1 %556
  br i1 %557, label %569, label %558

558:                                              ; preds = %551
  %559 = getelementptr inbounds i8, ptr %552, i64 1
  %560 = load i8, ptr %559, align 1, !tbaa !63
  switch i8 %560, label %569 [
    i8 115, label %561
    i8 83, label %561
    i8 91, label %561
  ]

561:                                              ; preds = %558, %558, %558
  %562 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14)
  %563 = shl i64 %562, 32
  %564 = ashr exact i64 %563, 32
  %565 = getelementptr inbounds [256 x i8], ptr %14, i64 0, i64 %564
  store i8 97, ptr %565, align 1, !tbaa !63
  %566 = add i64 %563, 4294967296
  %567 = ashr exact i64 %566, 32
  %568 = getelementptr inbounds [256 x i8], ptr %14, i64 0, i64 %567
  store i8 0, ptr %568, align 1, !tbaa !63
  store ptr %559, ptr %8, align 8, !tbaa !52
  br label %569

569:                                              ; preds = %558, %551, %561, %547
  %570 = load ptr, ptr %92, align 8, !tbaa !138
  %571 = icmp eq ptr %570, null
  br i1 %571, label %663, label %572

572:                                              ; preds = %569
  %573 = load ptr, ptr %570, align 8, !tbaa !181
  %574 = icmp eq ptr %573, null
  br i1 %574, label %631, label %575

575:                                              ; preds = %572
  %576 = load ptr, ptr %8, align 8, !tbaa !52
  %577 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %573)
  %578 = call i32 @strncmp(ptr noundef nonnull %573, ptr noundef %576, i64 noundef %577)
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %589, label %584

580:                                              ; preds = %584
  %581 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %587)
  %582 = call i32 @strncmp(ptr noundef nonnull %587, ptr noundef %576, i64 noundef %581)
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %589, label %584, !llvm.loop !182

584:                                              ; preds = %575, %580
  %585 = phi ptr [ %586, %580 ], [ %570, %575 ]
  %586 = getelementptr inbounds %struct.format_length_info, ptr %585, i64 1
  %587 = load ptr, ptr %586, align 8, !tbaa !181
  %588 = icmp eq ptr %587, null
  br i1 %588, label %631, label %580, !llvm.loop !182

589:                                              ; preds = %580, %575
  %590 = phi i1 [ %574, %575 ], [ %588, %580 ]
  %591 = phi ptr [ %573, %575 ], [ %587, %580 ]
  %592 = phi ptr [ %570, %575 ], [ %586, %580 ]
  br i1 %590, label %631, label %593

593:                                              ; preds = %589
  %594 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %591)
  %595 = load ptr, ptr %8, align 8, !tbaa !52
  %596 = getelementptr inbounds i8, ptr %595, i64 %594
  store ptr %596, ptr %8, align 8, !tbaa !52
  %597 = getelementptr inbounds %struct.format_length_info, ptr %592, i64 0, i32 3
  %598 = load ptr, ptr %597, align 8, !tbaa !183
  %599 = icmp eq ptr %598, null
  br i1 %599, label %608, label %600

600:                                              ; preds = %593
  %601 = load i8, ptr %591, align 1, !tbaa !63
  %602 = load i8, ptr %596, align 1, !tbaa !63
  %603 = icmp eq i8 %601, %602
  br i1 %603, label %604, label %608

604:                                              ; preds = %600
  %605 = getelementptr inbounds i8, ptr %596, i64 1
  store ptr %605, ptr %8, align 8, !tbaa !52
  %606 = getelementptr inbounds %struct.format_length_info, ptr %592, i64 0, i32 4
  %607 = getelementptr inbounds %struct.format_length_info, ptr %592, i64 0, i32 5
  br label %613

608:                                              ; preds = %600, %593
  %609 = getelementptr inbounds %struct.format_length_info, ptr %592, i64 0, i32 1
  %610 = getelementptr inbounds %struct.format_length_info, ptr %592, i64 0, i32 2
  %611 = getelementptr inbounds %struct.format_length_info, ptr %592, i64 0, i32 6
  %612 = load i32, ptr %611, align 8, !tbaa !184
  br label %613

613:                                              ; preds = %608, %604
  %614 = phi i32 [ 0, %604 ], [ %612, %608 ]
  %615 = phi ptr [ %607, %604 ], [ %610, %608 ]
  %616 = phi ptr [ %606, %604 ], [ %609, %608 ]
  %617 = phi ptr [ %597, %604 ], [ %592, %608 ]
  %618 = getelementptr inbounds %struct.format_kind_info, ptr %15, i64 %17, i32 12
  %619 = load ptr, ptr %617, align 8, !tbaa !52
  %620 = load i32, ptr %616, align 8, !tbaa !67
  %621 = load i32, ptr %615, align 4, !tbaa !67
  %622 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14)
  %623 = load i32, ptr %618, align 4, !tbaa !185
  %624 = trunc i32 %623 to i8
  %625 = shl i64 %622, 32
  %626 = ashr exact i64 %625, 32
  %627 = getelementptr inbounds [256 x i8], ptr %14, i64 0, i64 %626
  store i8 %624, ptr %627, align 1, !tbaa !63
  %628 = add i64 %625, 4294967296
  %629 = ashr exact i64 %628, 32
  %630 = getelementptr inbounds [256 x i8], ptr %14, i64 0, i64 %629
  store i8 0, ptr %630, align 1, !tbaa !63
  br label %631

631:                                              ; preds = %584, %572, %613, %589
  %632 = phi i32 [ %614, %613 ], [ 0, %589 ], [ 0, %572 ], [ 0, %584 ]
  %633 = phi i32 [ %621, %613 ], [ 0, %589 ], [ 0, %572 ], [ 0, %584 ]
  %634 = phi i32 [ %620, %613 ], [ 0, %589 ], [ 0, %572 ], [ 0, %584 ]
  %635 = phi ptr [ %619, %613 ], [ null, %589 ], [ null, %572 ], [ null, %584 ]
  %636 = load i32, ptr @pedantic, align 4, !tbaa !67
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %663, label %638

638:                                              ; preds = %631
  %639 = icmp eq i32 %633, 2
  %640 = load i32, ptr @warn_long_long, align 4
  %641 = icmp eq i32 %640, 0
  %642 = select i1 %641, i32 0, i32 3
  %643 = select i1 %639, i32 %642, i32 %633
  %644 = load i32, ptr @c_language, align 4, !tbaa !67
  %645 = and i32 %644, 2
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %647, label %654

647:                                              ; preds = %638
  %648 = load i32, ptr @flag_isoc99, align 4, !tbaa !67
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %650, label %654

650:                                              ; preds = %647
  %651 = load i32, ptr @flag_isoc94, align 4, !tbaa !67
  %652 = icmp ne i32 %651, 0
  %653 = zext i1 %652 to i32
  br label %654

654:                                              ; preds = %650, %647, %638
  %655 = phi i32 [ 1, %638 ], [ %653, %650 ], [ 3, %647 ]
  %656 = icmp sgt i32 %643, %655
  br i1 %656, label %657, label %663

657:                                              ; preds = %654
  %658 = icmp eq i32 %633, 4
  %659 = select i1 %658, ptr @.str.43, ptr @.str.44
  %660 = select i1 %646, ptr %659, ptr @.str.42
  %661 = load ptr, ptr %18, align 8, !tbaa !100
  %662 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.41, ptr noundef nonnull %660, ptr noundef %635, ptr noundef %661) #16
  br label %663

663:                                              ; preds = %631, %657, %654, %569
  %664 = phi i32 [ %632, %657 ], [ %632, %654 ], [ 0, %569 ], [ %632, %631 ]
  %665 = phi i32 [ %633, %657 ], [ %633, %654 ], [ 0, %569 ], [ %633, %631 ]
  %666 = phi i32 [ %634, %657 ], [ %634, %654 ], [ 0, %569 ], [ %634, %631 ]
  %667 = phi ptr [ %635, %657 ], [ %635, %654 ], [ null, %569 ], [ %635, %631 ]
  %668 = load ptr, ptr %93, align 8, !tbaa !186
  %669 = icmp eq ptr %668, null
  br i1 %669, label %719, label %670

670:                                              ; preds = %663
  %671 = load ptr, ptr %8, align 8, !tbaa !52
  %672 = load i8, ptr %671, align 1, !tbaa !63
  %673 = icmp eq i8 %672, 0
  br i1 %673, label %717, label %674

674:                                              ; preds = %670, %713
  %675 = phi i8 [ %715, %713 ], [ %672, %670 ]
  %676 = phi ptr [ %714, %713 ], [ %671, %670 ]
  %677 = sext i8 %675 to i32
  %678 = load ptr, ptr %93, align 8, !tbaa !186
  %679 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %678, i32 noundef %677)
  %680 = icmp eq ptr %679, null
  br i1 %680, label %717, label %681

681:                                              ; preds = %674
  %682 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %14, i32 noundef %677)
  %683 = icmp eq ptr %682, null
  br i1 %683, label %705, label %684

684:                                              ; preds = %681
  %685 = load i32, ptr %20, align 8, !tbaa !158
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %700, label %687

687:                                              ; preds = %684, %695
  %688 = phi i64 [ %696, %695 ], [ 0, %684 ]
  %689 = phi i32 [ %698, %695 ], [ %685, %684 ]
  %690 = icmp eq i32 %689, %677
  br i1 %690, label %691, label %695

691:                                              ; preds = %687
  %692 = getelementptr inbounds %struct.format_flag_spec, ptr %20, i64 %688, i32 1
  %693 = load i32, ptr %692, align 4, !tbaa !160
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %701, label %695

695:                                              ; preds = %691, %687
  %696 = add nuw i64 %688, 1
  %697 = getelementptr inbounds %struct.format_flag_spec, ptr %20, i64 %696
  %698 = load i32, ptr %697, align 8, !tbaa !158
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %700, label %687, !llvm.loop !161

700:                                              ; preds = %684, %695
  store ptr %676, ptr %8, align 8, !tbaa !52
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1177, ptr noundef nonnull @.str.7) #16
  unreachable

701:                                              ; preds = %691
  %702 = getelementptr inbounds %struct.format_flag_spec, ptr %20, i64 %688, i32 3
  %703 = load ptr, ptr %702, align 8, !tbaa !162
  %704 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.33, ptr noundef %703) #16
  br label %713

705:                                              ; preds = %681
  %706 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14)
  %707 = shl i64 %706, 32
  %708 = ashr exact i64 %707, 32
  %709 = getelementptr inbounds [256 x i8], ptr %14, i64 0, i64 %708
  store i8 %675, ptr %709, align 1, !tbaa !63
  %710 = add i64 %707, 4294967296
  %711 = ashr exact i64 %710, 32
  %712 = getelementptr inbounds [256 x i8], ptr %14, i64 0, i64 %711
  store i8 0, ptr %712, align 1, !tbaa !63
  br label %713

713:                                              ; preds = %705, %701
  %714 = getelementptr inbounds i8, ptr %676, i64 1
  %715 = load i8, ptr %714, align 1, !tbaa !63
  %716 = icmp eq i8 %715, 0
  br i1 %716, label %717, label %674, !llvm.loop !187

717:                                              ; preds = %713, %674, %670
  %718 = phi ptr [ %671, %670 ], [ %714, %713 ], [ %676, %674 ]
  store ptr %718, ptr %8, align 8, !tbaa !52
  br label %719

719:                                              ; preds = %717, %663
  %720 = load ptr, ptr %8, align 8, !tbaa !52
  %721 = load i8, ptr %720, align 1, !tbaa !63
  %722 = sext i8 %721 to i32
  %723 = icmp eq i8 %721, 0
  br i1 %723, label %730, label %724

724:                                              ; preds = %719
  %725 = load i32, ptr %84, align 8, !tbaa !93
  %726 = and i32 %725, 4
  %727 = icmp eq i32 %726, 0
  %728 = icmp eq i8 %721, 37
  %729 = and i1 %728, %727
  br i1 %729, label %730, label %732

730:                                              ; preds = %724, %719
  %731 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.45) #16
  br label %1525, !llvm.loop !156

732:                                              ; preds = %724
  %733 = getelementptr inbounds i8, ptr %720, i64 1
  store ptr %733, ptr %8, align 8, !tbaa !52
  %734 = load ptr, ptr %94, align 8, !tbaa !141
  %735 = load ptr, ptr %734, align 8, !tbaa !188
  %736 = icmp eq ptr %735, null
  br i1 %736, label %751, label %737

737:                                              ; preds = %732
  %738 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %735, i32 noundef %722)
  %739 = icmp eq ptr %738, null
  br i1 %739, label %743, label %748

740:                                              ; preds = %743
  %741 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %746, i32 noundef %722)
  %742 = icmp eq ptr %741, null
  br i1 %742, label %743, label %748, !llvm.loop !189

743:                                              ; preds = %737, %740
  %744 = phi ptr [ %745, %740 ], [ %734, %737 ]
  %745 = getelementptr inbounds %struct.format_char_info, ptr %744, i64 1
  %746 = load ptr, ptr %745, align 8, !tbaa !188
  %747 = icmp eq ptr %746, null
  br i1 %747, label %751, label %740, !llvm.loop !189

748:                                              ; preds = %740, %737
  %749 = phi i1 [ %736, %737 ], [ %747, %740 ]
  %750 = phi ptr [ %734, %737 ], [ %745, %740 ]
  br i1 %749, label %751, label %762

751:                                              ; preds = %743, %732, %748
  %752 = and i32 %722, 255
  %753 = zext nneg i32 %752 to i64
  %754 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %753
  %755 = load i16, ptr %754, align 2, !tbaa !167
  %756 = and i16 %755, 172
  %757 = icmp eq i16 %756, 0
  br i1 %757, label %760, label %758

758:                                              ; preds = %751
  %759 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.46, i32 noundef %722) #16
  br label %1525, !llvm.loop !156

760:                                              ; preds = %751
  %761 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.47, i32 noundef %722) #16
  br label %1525, !llvm.loop !156

762:                                              ; preds = %748
  %763 = load i32, ptr @pedantic, align 4, !tbaa !67
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %792, label %765

765:                                              ; preds = %762
  %766 = getelementptr inbounds %struct.format_char_info, ptr %750, i64 0, i32 2
  %767 = load i32, ptr %766, align 4, !tbaa !190
  %768 = icmp eq i32 %767, 2
  %769 = load i32, ptr @warn_long_long, align 4
  %770 = icmp eq i32 %769, 0
  %771 = select i1 %770, i32 0, i32 3
  %772 = select i1 %768, i32 %771, i32 %767
  %773 = load i32, ptr @c_language, align 4, !tbaa !67
  %774 = and i32 %773, 2
  %775 = icmp eq i32 %774, 0
  br i1 %775, label %776, label %783

776:                                              ; preds = %765
  %777 = load i32, ptr @flag_isoc99, align 4, !tbaa !67
  %778 = icmp eq i32 %777, 0
  br i1 %778, label %779, label %783

779:                                              ; preds = %776
  %780 = load i32, ptr @flag_isoc94, align 4, !tbaa !67
  %781 = icmp ne i32 %780, 0
  %782 = zext i1 %781 to i32
  br label %783

783:                                              ; preds = %779, %776, %765
  %784 = phi i32 [ 1, %765 ], [ %782, %779 ], [ 3, %776 ]
  %785 = icmp sgt i32 %772, %784
  br i1 %785, label %786, label %792

786:                                              ; preds = %783
  %787 = icmp eq i32 %767, 4
  %788 = select i1 %787, ptr @.str.43, ptr @.str.44
  %789 = select i1 %775, ptr %788, ptr @.str.42
  %790 = load ptr, ptr %18, align 8, !tbaa !100
  %791 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.48, ptr noundef nonnull %789, i32 noundef %722, ptr noundef %790) #16
  br label %792

792:                                              ; preds = %783, %786, %762
  %793 = load i8, ptr %14, align 16, !tbaa !63
  %794 = icmp eq i8 %793, 0
  br i1 %794, label %929, label %795

795:                                              ; preds = %792
  %796 = getelementptr inbounds %struct.format_kind_info, ptr %15, i64 %17, i32 12
  %797 = getelementptr inbounds %struct.format_char_info, ptr %750, i64 0, i32 4
  br label %798

798:                                              ; preds = %795, %920
  %799 = phi i64 [ 0, %795 ], [ %922, %920 ]
  %800 = phi i8 [ %793, %795 ], [ %924, %920 ]
  %801 = phi ptr [ %14, %795 ], [ %923, %920 ]
  %802 = phi i32 [ 0, %795 ], [ %921, %920 ]
  %803 = sext i8 %800 to i32
  %804 = load i32, ptr %20, align 8, !tbaa !158
  %805 = icmp eq i32 %804, 0
  br i1 %805, label %820, label %806

806:                                              ; preds = %798, %815
  %807 = phi i64 [ %816, %815 ], [ 0, %798 ]
  %808 = phi i32 [ %818, %815 ], [ %804, %798 ]
  %809 = phi ptr [ %817, %815 ], [ %20, %798 ]
  %810 = icmp eq i32 %808, %803
  br i1 %810, label %811, label %815

811:                                              ; preds = %806
  %812 = getelementptr inbounds %struct.format_flag_spec, ptr %20, i64 %807, i32 1
  %813 = load i32, ptr %812, align 4, !tbaa !160
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %821, label %815

815:                                              ; preds = %811, %806
  %816 = add nuw i64 %807, 1
  %817 = getelementptr inbounds %struct.format_flag_spec, ptr %20, i64 %816
  %818 = load i32, ptr %817, align 8, !tbaa !158
  %819 = icmp eq i32 %818, 0
  br i1 %819, label %820, label %806, !llvm.loop !161

820:                                              ; preds = %815, %798
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1177, ptr noundef nonnull @.str.7) #16
  br label %821

821:                                              ; preds = %811, %820
  %822 = phi ptr [ null, %820 ], [ %809, %811 ]
  %823 = load i8, ptr %801, align 1, !tbaa !63
  %824 = trunc i64 %799 to i32
  %825 = sub nsw i32 %824, %802
  %826 = sext i32 %825 to i64
  %827 = getelementptr inbounds [256 x i8], ptr %14, i64 0, i64 %826
  store i8 %823, ptr %827, align 1, !tbaa !63
  %828 = load i8, ptr %801, align 1, !tbaa !63
  %829 = sext i8 %828 to i32
  %830 = load i32, ptr %796, align 4, !tbaa !185
  %831 = icmp eq i32 %830, %829
  br i1 %831, label %920, label %832

832:                                              ; preds = %821
  %833 = load ptr, ptr %797, align 8, !tbaa !191
  %834 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %833, i32 noundef %829)
  %835 = icmp eq ptr %834, null
  br i1 %835, label %836, label %842

836:                                              ; preds = %832
  %837 = getelementptr inbounds %struct.format_flag_spec, ptr %822, i64 0, i32 3
  %838 = load ptr, ptr %837, align 8, !tbaa !162
  %839 = load ptr, ptr %18, align 8, !tbaa !100
  %840 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.49, ptr noundef %838, i32 noundef %722, ptr noundef %839) #16
  %841 = add nsw i32 %802, 1
  br label %920

842:                                              ; preds = %832
  %843 = load i32, ptr @pedantic, align 4, !tbaa !67
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %920, label %845

845:                                              ; preds = %842
  %846 = getelementptr inbounds %struct.format_flag_spec, ptr %822, i64 0, i32 5
  %847 = load i32, ptr %846, align 8, !tbaa !192
  %848 = icmp eq i32 %847, 2
  %849 = load i32, ptr @warn_long_long, align 4
  %850 = icmp eq i32 %849, 0
  %851 = select i1 %850, i32 0, i32 3
  %852 = select i1 %848, i32 %851, i32 %847
  %853 = load i32, ptr @c_language, align 4, !tbaa !67
  %854 = and i32 %853, 2
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %856, label %863

856:                                              ; preds = %845
  %857 = load i32, ptr @flag_isoc99, align 4, !tbaa !67
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %859, label %863

859:                                              ; preds = %856
  %860 = load i32, ptr @flag_isoc94, align 4, !tbaa !67
  %861 = icmp ne i32 %860, 0
  %862 = zext i1 %861 to i32
  br label %863

863:                                              ; preds = %859, %856, %845
  %864 = phi i32 [ 1, %845 ], [ %862, %859 ], [ 3, %856 ]
  %865 = icmp sgt i32 %852, %864
  br i1 %865, label %866, label %873

866:                                              ; preds = %863
  %867 = icmp eq i32 %847, 4
  %868 = select i1 %867, ptr @.str.43, ptr @.str.44
  %869 = select i1 %855, ptr %868, ptr @.str.42
  %870 = getelementptr inbounds %struct.format_flag_spec, ptr %822, i64 0, i32 4
  %871 = load ptr, ptr %870, align 8, !tbaa !193
  %872 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.50, ptr noundef nonnull %869, ptr noundef %871) #16
  br label %873

873:                                              ; preds = %866, %863
  %874 = getelementptr inbounds %struct.format_char_info, ptr %750, i64 0, i32 5
  %875 = load i8, ptr %801, align 1, !tbaa !63
  %876 = sext i8 %875 to i32
  %877 = load ptr, ptr %874, align 8, !tbaa !194
  %878 = call fastcc ptr @get_flag_spec(ptr noundef nonnull %20, i32 noundef %876, ptr noundef %877)
  %879 = icmp eq ptr %878, null
  br i1 %879, label %920, label %880

880:                                              ; preds = %873
  %881 = getelementptr inbounds %struct.format_flag_spec, ptr %878, i64 0, i32 5
  %882 = load i32, ptr %881, align 8, !tbaa !192
  %883 = icmp eq i32 %882, 2
  %884 = load i32, ptr @warn_long_long, align 4
  %885 = icmp eq i32 %884, 0
  %886 = select i1 %885, i32 0, i32 3
  %887 = select i1 %883, i32 %886, i32 %882
  %888 = load i32, ptr %846, align 8, !tbaa !192
  %889 = icmp eq i32 %888, 2
  %890 = select i1 %889, i32 %886, i32 %888
  %891 = icmp sgt i32 %887, %890
  br i1 %891, label %892, label %920

892:                                              ; preds = %880
  %893 = getelementptr inbounds %struct.format_flag_spec, ptr %878, i64 0, i32 4
  %894 = load ptr, ptr %893, align 8, !tbaa !193
  %895 = icmp eq ptr %894, null
  br i1 %895, label %896, label %899

896:                                              ; preds = %892
  %897 = getelementptr inbounds %struct.format_flag_spec, ptr %822, i64 0, i32 4
  %898 = load ptr, ptr %897, align 8, !tbaa !193
  br label %899

899:                                              ; preds = %892, %896
  %900 = phi ptr [ %898, %896 ], [ %894, %892 ]
  %901 = load i32, ptr @c_language, align 4, !tbaa !67
  %902 = and i32 %901, 2
  %903 = icmp eq i32 %902, 0
  br i1 %903, label %904, label %911

904:                                              ; preds = %899
  %905 = load i32, ptr @flag_isoc99, align 4, !tbaa !67
  %906 = icmp eq i32 %905, 0
  br i1 %906, label %907, label %911

907:                                              ; preds = %904
  %908 = load i32, ptr @flag_isoc94, align 4, !tbaa !67
  %909 = icmp ne i32 %908, 0
  %910 = zext i1 %909 to i32
  br label %911

911:                                              ; preds = %907, %904, %899
  %912 = phi i32 [ 1, %899 ], [ %910, %907 ], [ 3, %904 ]
  %913 = icmp sgt i32 %887, %912
  br i1 %913, label %914, label %920

914:                                              ; preds = %911
  %915 = icmp eq i32 %882, 4
  %916 = select i1 %915, ptr @.str.43, ptr @.str.44
  %917 = select i1 %903, ptr %916, ptr @.str.42
  %918 = load ptr, ptr %18, align 8, !tbaa !100
  %919 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.51, ptr noundef nonnull %917, ptr noundef %900, i32 noundef %722, ptr noundef %918) #16
  br label %920

920:                                              ; preds = %842, %911, %914, %880, %873, %821, %836
  %921 = phi i32 [ %841, %836 ], [ %802, %821 ], [ %802, %873 ], [ %802, %880 ], [ %802, %914 ], [ %802, %911 ], [ %802, %842 ]
  %922 = add nuw i64 %799, 1
  %923 = getelementptr inbounds [256 x i8], ptr %14, i64 0, i64 %922
  %924 = load i8, ptr %923, align 1, !tbaa !63
  %925 = icmp eq i8 %924, 0
  br i1 %925, label %926, label %798, !llvm.loop !195

926:                                              ; preds = %920
  %927 = trunc i64 %922 to i32
  %928 = sub nsw i32 %927, %921
  br label %929

929:                                              ; preds = %926, %792
  %930 = phi i32 [ 0, %792 ], [ %928, %926 ]
  %931 = sext i32 %930 to i64
  %932 = getelementptr inbounds [256 x i8], ptr %14, i64 0, i64 %931
  store i8 0, ptr %932, align 1, !tbaa !63
  %933 = load i32, ptr %84, align 8, !tbaa !93
  %934 = and i32 %933, 2
  %935 = icmp eq i32 %934, 0
  br i1 %935, label %940, label %936

936:                                              ; preds = %929
  %937 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %14, i32 noundef 97)
  %938 = icmp ne ptr %937, null
  %939 = zext i1 %938 to i32
  br label %940

940:                                              ; preds = %936, %929
  %941 = phi i32 [ 0, %929 ], [ %939, %936 ]
  %942 = load i32, ptr %91, align 8, !tbaa !180
  %943 = icmp eq i32 %942, 0
  br i1 %943, label %948, label %944

944:                                              ; preds = %940
  %945 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %14, i32 noundef %942)
  %946 = icmp eq ptr %945, null
  %947 = select i1 %946, i32 %941, i32 1
  br label %948

948:                                              ; preds = %944, %940
  %949 = phi i32 [ %941, %940 ], [ %947, %944 ]
  %950 = getelementptr inbounds %struct.format_kind_info, ptr %15, i64 %17, i32 11
  %951 = load i32, ptr %950, align 8, !tbaa !196
  %952 = icmp eq i32 %951, 0
  br i1 %952, label %957, label %953

953:                                              ; preds = %948
  %954 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %14, i32 noundef %951)
  %955 = icmp eq ptr %954, null
  %956 = xor i1 %955, true
  br label %957

957:                                              ; preds = %953, %948
  %958 = phi i1 [ true, %948 ], [ %955, %953 ]
  %959 = phi i1 [ false, %948 ], [ %956, %953 ]
  %960 = load i32, ptr %22, align 4, !tbaa !197
  %961 = icmp eq i32 %960, 0
  br i1 %961, label %1046, label %962

962:                                              ; preds = %957
  %963 = getelementptr inbounds %struct.format_char_info, ptr %750, i64 0, i32 5
  br label %964

964:                                              ; preds = %962, %1041
  %965 = phi i64 [ 0, %962 ], [ %1042, %1041 ]
  %966 = phi i32 [ %960, %962 ], [ %1044, %1041 ]
  %967 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %14, i32 noundef %966)
  %968 = icmp eq ptr %967, null
  br i1 %968, label %1041, label %969

969:                                              ; preds = %964
  %970 = getelementptr inbounds %struct.format_flag_pair, ptr %22, i64 %965, i32 1
  %971 = load i32, ptr %970, align 4, !tbaa !199
  %972 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %14, i32 noundef %971)
  %973 = icmp eq ptr %972, null
  br i1 %973, label %1041, label %974

974:                                              ; preds = %969
  %975 = getelementptr inbounds %struct.format_flag_pair, ptr %22, i64 %965, i32 3
  %976 = load i32, ptr %975, align 4, !tbaa !200
  %977 = icmp eq i32 %976, 0
  br i1 %977, label %982, label %978

978:                                              ; preds = %974
  %979 = load ptr, ptr %963, align 8, !tbaa !194
  %980 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %979, i32 noundef %976)
  %981 = icmp eq ptr %980, null
  br i1 %981, label %1041, label %982

982:                                              ; preds = %978, %974
  %983 = load i32, ptr %20, align 8, !tbaa !158
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %999, label %985

985:                                              ; preds = %982, %994
  %986 = phi i64 [ %995, %994 ], [ 0, %982 ]
  %987 = phi i32 [ %997, %994 ], [ %983, %982 ]
  %988 = phi ptr [ %996, %994 ], [ %20, %982 ]
  %989 = icmp eq i32 %987, %966
  br i1 %989, label %990, label %994

990:                                              ; preds = %985
  %991 = getelementptr inbounds %struct.format_flag_spec, ptr %20, i64 %986, i32 1
  %992 = load i32, ptr %991, align 4, !tbaa !160
  %993 = icmp eq i32 %992, 0
  br i1 %993, label %1000, label %994

994:                                              ; preds = %990, %985
  %995 = add nuw i64 %986, 1
  %996 = getelementptr inbounds %struct.format_flag_spec, ptr %20, i64 %995
  %997 = load i32, ptr %996, align 8, !tbaa !158
  %998 = icmp eq i32 %997, 0
  br i1 %998, label %999, label %985, !llvm.loop !161

999:                                              ; preds = %994, %982
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1177, ptr noundef nonnull @.str.7) #16
  br label %1000

1000:                                             ; preds = %990, %999
  %1001 = phi ptr [ null, %999 ], [ %988, %990 ]
  %1002 = load i32, ptr %970, align 4, !tbaa !199
  %1003 = load i32, ptr %20, align 8, !tbaa !158
  %1004 = icmp eq i32 %1003, 0
  br i1 %1004, label %1019, label %1005

1005:                                             ; preds = %1000, %1014
  %1006 = phi i64 [ %1015, %1014 ], [ 0, %1000 ]
  %1007 = phi i32 [ %1017, %1014 ], [ %1003, %1000 ]
  %1008 = phi ptr [ %1016, %1014 ], [ %20, %1000 ]
  %1009 = icmp eq i32 %1007, %1002
  br i1 %1009, label %1010, label %1014

1010:                                             ; preds = %1005
  %1011 = getelementptr inbounds %struct.format_flag_spec, ptr %20, i64 %1006, i32 1
  %1012 = load i32, ptr %1011, align 4, !tbaa !160
  %1013 = icmp eq i32 %1012, 0
  br i1 %1013, label %1020, label %1014

1014:                                             ; preds = %1010, %1005
  %1015 = add nuw i64 %1006, 1
  %1016 = getelementptr inbounds %struct.format_flag_spec, ptr %20, i64 %1015
  %1017 = load i32, ptr %1016, align 8, !tbaa !158
  %1018 = icmp eq i32 %1017, 0
  br i1 %1018, label %1019, label %1005, !llvm.loop !161

1019:                                             ; preds = %1000, %1014
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1177, ptr noundef nonnull @.str.7) #16
  unreachable

1020:                                             ; preds = %1010
  %1021 = getelementptr inbounds %struct.format_flag_pair, ptr %22, i64 %965, i32 2
  %1022 = load i32, ptr %1021, align 4, !tbaa !201
  %1023 = icmp eq i32 %1022, 0
  %1024 = load i32, ptr %975, align 4, !tbaa !200
  %1025 = icmp eq i32 %1024, 0
  %1026 = getelementptr inbounds %struct.format_flag_spec, ptr %1001, i64 0, i32 3
  %1027 = load ptr, ptr %1026, align 8, !tbaa !162
  %1028 = getelementptr inbounds %struct.format_flag_spec, ptr %1008, i64 0, i32 3
  %1029 = load ptr, ptr %1028, align 8, !tbaa !162
  %1030 = load ptr, ptr %18, align 8, !tbaa !100
  br i1 %1023, label %1036, label %1031

1031:                                             ; preds = %1020
  br i1 %1025, label %1034, label %1032

1032:                                             ; preds = %1031
  %1033 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.52, ptr noundef %1027, ptr noundef %1029, i32 noundef %722, ptr noundef %1030) #16
  br label %1041

1034:                                             ; preds = %1031
  %1035 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.53, ptr noundef %1027, ptr noundef %1029, ptr noundef %1030) #16
  br label %1041

1036:                                             ; preds = %1020
  br i1 %1025, label %1039, label %1037

1037:                                             ; preds = %1036
  %1038 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.54, ptr noundef %1027, ptr noundef %1029, i32 noundef %722, ptr noundef %1030) #16
  br label %1041

1039:                                             ; preds = %1036
  %1040 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.55, ptr noundef %1027, ptr noundef %1029, ptr noundef %1030) #16
  br label %1041

1041:                                             ; preds = %1034, %1032, %1039, %1037, %978, %969, %964
  %1042 = add nuw i64 %965, 1
  %1043 = getelementptr inbounds %struct.format_flag_pair, ptr %22, i64 %1042
  %1044 = load i32, ptr %1043, align 4, !tbaa !197
  %1045 = icmp eq i32 %1044, 0
  br i1 %1045, label %1046, label %964, !llvm.loop !202

1046:                                             ; preds = %1041, %957
  %1047 = load i32, ptr @warn_format_y2k, align 4, !tbaa !67
  %1048 = icmp eq i32 %1047, 0
  br i1 %1048, label %1071, label %1049

1049:                                             ; preds = %1046
  %1050 = getelementptr inbounds %struct.format_char_info, ptr %750, i64 0, i32 5
  %1051 = load ptr, ptr %1050, align 8, !tbaa !194
  %1052 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1051, i32 noundef 52)
  %1053 = icmp eq ptr %1052, null
  br i1 %1053, label %1058, label %1054

1054:                                             ; preds = %1049
  %1055 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %14, i32 noundef 69)
  %1056 = icmp eq ptr %1055, null
  %1057 = xor i1 %1056, true
  br label %1064

1058:                                             ; preds = %1049
  %1059 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1051, i32 noundef 51)
  %1060 = icmp eq ptr %1059, null
  br i1 %1060, label %1061, label %1064

1061:                                             ; preds = %1058
  %1062 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1051, i32 noundef 50)
  %1063 = icmp ne ptr %1062, null
  br label %1064

1064:                                             ; preds = %1061, %1058, %1054
  %1065 = phi i1 [ %1057, %1054 ], [ true, %1058 ], [ false, %1061 ]
  %1066 = phi i1 [ %1056, %1054 ], [ false, %1058 ], [ %1063, %1061 ]
  %1067 = select i1 %1065, i1 true, i1 %1066
  br i1 %1067, label %1068, label %1071

1068:                                             ; preds = %1064
  %1069 = select i1 %1065, ptr @.str.56, ptr @.str.57
  %1070 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 96, ptr noundef nonnull %1069, i32 noundef %722) #16
  br label %1071

1071:                                             ; preds = %1064, %1068, %1046
  %1072 = getelementptr inbounds %struct.format_char_info, ptr %750, i64 0, i32 5
  %1073 = load ptr, ptr %1072, align 8, !tbaa !194
  %1074 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1073, i32 noundef 91)
  %1075 = icmp eq ptr %1074, null
  br i1 %1075, label %1097, label %1076

1076:                                             ; preds = %1071
  %1077 = load i8, ptr %733, align 1, !tbaa !63
  %1078 = icmp eq i8 %1077, 94
  br i1 %1078, label %1079, label %1081

1079:                                             ; preds = %1076
  %1080 = getelementptr inbounds i8, ptr %720, i64 2
  store ptr %1080, ptr %8, align 8, !tbaa !52
  br label %1081

1081:                                             ; preds = %1079, %1076
  %1082 = load ptr, ptr %8, align 8, !tbaa !52
  %1083 = load i8, ptr %1082, align 1, !tbaa !63
  %1084 = icmp eq i8 %1083, 93
  br i1 %1084, label %1085, label %1087

1085:                                             ; preds = %1081
  %1086 = getelementptr inbounds i8, ptr %1082, i64 1
  store ptr %1086, ptr %8, align 8, !tbaa !52
  br label %1087

1087:                                             ; preds = %1085, %1081
  %1088 = load ptr, ptr %8, align 8, !tbaa !52
  br label %1089

1089:                                             ; preds = %1092, %1087
  %1090 = phi ptr [ %1093, %1092 ], [ %1088, %1087 ]
  %1091 = load i8, ptr %1090, align 1, !tbaa !63
  switch i8 %1091, label %1092 [
    i8 93, label %1096
    i8 0, label %1094
  ]

1092:                                             ; preds = %1089
  %1093 = getelementptr inbounds i8, ptr %1090, i64 1
  br label %1089, !llvm.loop !203

1094:                                             ; preds = %1089
  store ptr %1090, ptr %8, align 8, !tbaa !52
  %1095 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.58) #16
  br label %1097

1096:                                             ; preds = %1089
  store ptr %1090, ptr %8, align 8, !tbaa !52
  br label %1097

1097:                                             ; preds = %1096, %1094, %1071
  %1098 = load i32, ptr %84, align 8, !tbaa !93
  %1099 = and i32 %1098, 1
  %1100 = icmp eq i32 %1099, 0
  br i1 %1100, label %1163, label %1101

1101:                                             ; preds = %1097
  %1102 = zext i32 %666 to i64
  %1103 = getelementptr inbounds %struct.format_char_info, ptr %750, i64 0, i32 3, i64 %1102
  %1104 = getelementptr inbounds %struct.format_char_info, ptr %750, i64 0, i32 3, i64 %1102, i32 2
  %1105 = load ptr, ptr %1104, align 8, !tbaa !142
  %1106 = icmp eq ptr %1105, null
  br i1 %1106, label %1109, label %1107

1107:                                             ; preds = %1101
  %1108 = load ptr, ptr %1105, align 8, !tbaa !52
  br label %1109

1109:                                             ; preds = %1101, %1107
  %1110 = phi ptr [ %1108, %1107 ], [ null, %1101 ]
  %1111 = getelementptr inbounds %struct.format_char_info, ptr %750, i64 0, i32 3, i64 %1102, i32 1
  %1112 = load ptr, ptr %1111, align 8, !tbaa !204
  %1113 = load i32, ptr %1103, align 8, !tbaa !205
  %1114 = icmp eq ptr %1110, null
  br i1 %1114, label %1115, label %1125

1115:                                             ; preds = %1109
  %1116 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.59, ptr noundef %667, i32 noundef %722) #16
  %1117 = add i64 %529, 1
  %1118 = load ptr, ptr %9, align 8, !tbaa !52
  %1119 = icmp eq ptr %1118, null
  br i1 %1119, label %1120, label %1122

1120:                                             ; preds = %1115
  %1121 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.35) #16
  br label %1525

1122:                                             ; preds = %1115
  %1123 = getelementptr inbounds %struct.tree_common, ptr %1118, i64 0, i32 1
  %1124 = load ptr, ptr %1123, align 8, !tbaa !63
  store ptr %1124, ptr %9, align 8, !tbaa !52
  br label %1525, !llvm.loop !156

1125:                                             ; preds = %1109
  %1126 = load i32, ptr @pedantic, align 4, !tbaa !67
  %1127 = icmp eq i32 %1126, 0
  br i1 %1127, label %1163, label %1128

1128:                                             ; preds = %1125
  %1129 = icmp eq i32 %1113, 2
  %1130 = load i32, ptr @warn_long_long, align 4
  %1131 = icmp eq i32 %1130, 0
  %1132 = select i1 %1131, i32 0, i32 3
  %1133 = select i1 %1129, i32 %1132, i32 %1113
  %1134 = icmp eq i32 %665, 2
  %1135 = select i1 %1134, i32 %1132, i32 %665
  %1136 = icmp sgt i32 %1133, %1135
  br i1 %1136, label %1137, label %1163

1137:                                             ; preds = %1128
  %1138 = getelementptr inbounds %struct.format_char_info, ptr %750, i64 0, i32 2
  %1139 = load i32, ptr %1138, align 4, !tbaa !190
  %1140 = icmp eq i32 %1139, 2
  %1141 = select i1 %1140, i32 %1132, i32 %1139
  %1142 = icmp sgt i32 %1133, %1141
  br i1 %1142, label %1143, label %1163

1143:                                             ; preds = %1137
  %1144 = load i32, ptr @c_language, align 4, !tbaa !67
  %1145 = and i32 %1144, 2
  %1146 = icmp eq i32 %1145, 0
  br i1 %1146, label %1147, label %1154

1147:                                             ; preds = %1143
  %1148 = load i32, ptr @flag_isoc99, align 4, !tbaa !67
  %1149 = icmp eq i32 %1148, 0
  br i1 %1149, label %1150, label %1154

1150:                                             ; preds = %1147
  %1151 = load i32, ptr @flag_isoc94, align 4, !tbaa !67
  %1152 = icmp ne i32 %1151, 0
  %1153 = zext i1 %1152 to i32
  br label %1154

1154:                                             ; preds = %1150, %1147, %1143
  %1155 = phi i32 [ 1, %1143 ], [ %1153, %1150 ], [ 3, %1147 ]
  %1156 = icmp sgt i32 %1133, %1155
  br i1 %1156, label %1157, label %1163

1157:                                             ; preds = %1154
  %1158 = icmp eq i32 %1113, 4
  %1159 = select i1 %1158, ptr @.str.43, ptr @.str.44
  %1160 = select i1 %1146, ptr %1159, ptr @.str.42
  %1161 = load ptr, ptr %18, align 8, !tbaa !100
  %1162 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.60, ptr noundef nonnull %1160, ptr noundef %667, i32 noundef %722, ptr noundef %1161) #16
  br label %1163

1163:                                             ; preds = %1154, %1157, %1137, %1128, %1125, %1097
  %1164 = phi ptr [ %1112, %1157 ], [ %1112, %1154 ], [ %1112, %1137 ], [ %1112, %1128 ], [ %1112, %1125 ], [ null, %1097 ]
  %1165 = phi ptr [ %1110, %1157 ], [ %1110, %1154 ], [ %1110, %1137 ], [ %1110, %1128 ], [ %1110, %1125 ], [ null, %1097 ]
  %1166 = getelementptr inbounds %struct.format_wanted_type, ptr %13, i64 0, i32 10
  store ptr null, ptr %1166, align 8, !tbaa !173
  %1167 = load i64, ptr %23, align 8, !tbaa !95
  %1168 = icmp eq i64 %1167, 0
  br i1 %1168, label %1525, label %1169, !llvm.loop !156

1169:                                             ; preds = %1163
  %1170 = getelementptr inbounds %struct.format_char_info, ptr %750, i64 0, i32 1
  %1171 = load i32, ptr %1170, align 8, !tbaa !144
  %1172 = icmp eq i32 %1171, 0
  br i1 %1172, label %1173, label %1177

1173:                                             ; preds = %1169
  %1174 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !52
  %1175 = icmp eq ptr %1165, %1174
  %1176 = or i1 %959, %1175
  br i1 %1176, label %1178, label %1183

1177:                                             ; preds = %1169
  br i1 %958, label %1183, label %1178

1178:                                             ; preds = %1177, %1173
  %1179 = icmp eq i32 %210, 0
  br i1 %1179, label %1277, label %1180

1180:                                             ; preds = %1178
  %1181 = select i1 %958, ptr @.str.62, ptr @.str.61
  %1182 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull %1181) #16
  br label %1277

1183:                                             ; preds = %1173, %1177
  %1184 = icmp eq i32 %210, 0
  br i1 %1184, label %1188, label %1185

1185:                                             ; preds = %1183
  %1186 = zext i32 %210 to i64
  %1187 = load ptr, ptr %10, align 8, !tbaa !52
  store ptr %1187, ptr %9, align 8, !tbaa !52
  br label %1191

1188:                                             ; preds = %1183
  %1189 = add i64 %529, 1
  %1190 = icmp sgt i32 %528, 0
  br i1 %1190, label %1266, label %1191

1191:                                             ; preds = %1188, %1185
  %1192 = phi i32 [ %528, %1185 ], [ 0, %1188 ]
  %1193 = phi i64 [ %1186, %1185 ], [ %1189, %1188 ]
  %1194 = icmp ne i32 %664, 0
  %1195 = zext i1 %1194 to i32
  %1196 = icmp eq i32 %949, 0
  %1197 = zext i32 %666 to i64
  br label %1198

1198:                                             ; preds = %1191, %1260
  %1199 = phi ptr [ %13, %1191 ], [ %1264, %1260 ]
  %1200 = phi i64 [ %1193, %1191 ], [ %1263, %1260 ]
  %1201 = phi ptr [ %1165, %1191 ], [ %1262, %1260 ]
  %1202 = phi ptr [ %1164, %1191 ], [ %1261, %1260 ]
  %1203 = phi ptr [ %750, %1191 ], [ %1250, %1260 ]
  %1204 = phi ptr [ %527, %1191 ], [ %1199, %1260 ]
  %1205 = phi ptr [ %526, %1191 ], [ %1248, %1260 ]
  %1206 = load ptr, ptr %9, align 8, !tbaa !52
  %1207 = icmp eq ptr %1206, null
  br i1 %1207, label %1266, label %1208

1208:                                             ; preds = %1198
  %1209 = getelementptr inbounds %struct.tree_list, ptr %1206, i64 0, i32 2
  %1210 = load ptr, ptr %1209, align 8, !tbaa !63
  %1211 = getelementptr inbounds %struct.tree_common, ptr %1206, i64 0, i32 1
  %1212 = load ptr, ptr %1211, align 8, !tbaa !63
  store ptr %1212, ptr %9, align 8, !tbaa !52
  store ptr %1201, ptr %1199, align 8, !tbaa !168
  %1213 = getelementptr inbounds %struct.format_wanted_type, ptr %1199, i64 0, i32 1
  store ptr %1202, ptr %1213, align 8, !tbaa !206
  %1214 = getelementptr inbounds %struct.format_char_info, ptr %1203, i64 0, i32 1
  %1215 = load i32, ptr %1214, align 8, !tbaa !144
  %1216 = add nsw i32 %1215, %949
  %1217 = getelementptr inbounds %struct.format_wanted_type, ptr %1199, i64 0, i32 3
  store i32 %1216, ptr %1217, align 4, !tbaa !207
  %1218 = getelementptr inbounds %struct.format_wanted_type, ptr %1199, i64 0, i32 4
  store i32 0, ptr %1218, align 8, !tbaa !208
  %1219 = getelementptr inbounds %struct.format_char_info, ptr %1203, i64 0, i32 5
  %1220 = load ptr, ptr %1219, align 8, !tbaa !194
  %1221 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1220, i32 noundef 99)
  %1222 = icmp ne ptr %1221, null
  %1223 = zext i1 %1222 to i32
  store i32 %1223, ptr %1218, align 8
  %1224 = getelementptr inbounds %struct.format_wanted_type, ptr %1199, i64 0, i32 2
  store i32 %1195, ptr %1224, align 8, !tbaa !209
  %1225 = getelementptr inbounds %struct.format_wanted_type, ptr %1199, i64 0, i32 5
  store i32 0, ptr %1225, align 4, !tbaa !210
  %1226 = getelementptr inbounds %struct.format_wanted_type, ptr %1199, i64 0, i32 6
  store i32 0, ptr %1226, align 8, !tbaa !211
  br i1 %1196, label %1228, label %1227

1227:                                             ; preds = %1208
  store i32 1, ptr %1225, align 4, !tbaa !210
  br label %1237

1228:                                             ; preds = %1208
  %1229 = load ptr, ptr %1219, align 8, !tbaa !194
  %1230 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1229, i32 noundef 87)
  %1231 = icmp eq ptr %1230, null
  br i1 %1231, label %1233, label %1232

1232:                                             ; preds = %1228
  store i32 1, ptr %1225, align 4, !tbaa !210
  br label %1233

1233:                                             ; preds = %1232, %1228
  %1234 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1229, i32 noundef 82)
  %1235 = icmp eq ptr %1234, null
  br i1 %1235, label %1237, label %1236

1236:                                             ; preds = %1233
  store i32 1, ptr %1226, align 8, !tbaa !211
  br label %1237

1237:                                             ; preds = %1233, %1236, %1227
  %1238 = getelementptr inbounds %struct.format_wanted_type, ptr %1199, i64 0, i32 7
  store ptr null, ptr %1238, align 8, !tbaa !170
  %1239 = getelementptr inbounds %struct.format_wanted_type, ptr %1199, i64 0, i32 8
  store ptr %1210, ptr %1239, align 8, !tbaa !171
  %1240 = trunc i64 %1200 to i32
  %1241 = getelementptr inbounds %struct.format_wanted_type, ptr %1199, i64 0, i32 9
  store i32 %1240, ptr %1241, align 8, !tbaa !172
  %1242 = getelementptr inbounds %struct.format_wanted_type, ptr %1199, i64 0, i32 10
  store ptr null, ptr %1242, align 8, !tbaa !173
  %1243 = icmp eq ptr %1204, null
  br i1 %1243, label %1246, label %1244

1244:                                             ; preds = %1237
  %1245 = getelementptr inbounds %struct.format_wanted_type, ptr %1204, i64 0, i32 10
  store ptr %1199, ptr %1245, align 8, !tbaa !173
  br label %1246

1246:                                             ; preds = %1244, %1237
  %1247 = icmp eq ptr %1205, null
  %1248 = select i1 %1247, ptr %1199, ptr %1205
  %1249 = getelementptr inbounds %struct.format_char_info, ptr %1203, i64 0, i32 6
  %1250 = load ptr, ptr %1249, align 8, !tbaa !212
  %1251 = icmp eq ptr %1250, null
  br i1 %1251, label %1260, label %1252

1252:                                             ; preds = %1246
  %1253 = call ptr @pool_alloc(ptr noundef %6) #16
  %1254 = add i64 %1200, 1
  %1255 = getelementptr inbounds %struct.format_char_info, ptr %1250, i64 0, i32 3, i64 %1197, i32 2
  %1256 = load ptr, ptr %1255, align 8, !tbaa !142
  %1257 = load ptr, ptr %1256, align 8, !tbaa !52
  %1258 = getelementptr inbounds %struct.format_char_info, ptr %1250, i64 0, i32 3, i64 %1197, i32 1
  %1259 = load ptr, ptr %1258, align 8, !tbaa !204
  br label %1260

1260:                                             ; preds = %1252, %1246
  %1261 = phi ptr [ %1259, %1252 ], [ %1202, %1246 ]
  %1262 = phi ptr [ %1257, %1252 ], [ %1201, %1246 ]
  %1263 = phi i64 [ %1254, %1252 ], [ %1200, %1246 ]
  %1264 = phi ptr [ %1253, %1252 ], [ %1199, %1246 ]
  %1265 = icmp eq ptr %1250, null
  br i1 %1265, label %1272, label %1198, !llvm.loop !213

1266:                                             ; preds = %1198, %1188
  %1267 = phi ptr [ @.str.63, %1188 ], [ @.str.35, %1198 ]
  %1268 = phi ptr [ %526, %1188 ], [ %1205, %1198 ]
  %1269 = phi i32 [ 1, %1188 ], [ %1192, %1198 ]
  %1270 = phi i64 [ %1189, %1188 ], [ %1200, %1198 ]
  %1271 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull %1267) #16
  br label %1272

1272:                                             ; preds = %1260, %1266
  %1273 = phi ptr [ %1268, %1266 ], [ %1248, %1260 ]
  %1274 = phi i1 [ false, %1266 ], [ true, %1260 ]
  %1275 = phi i32 [ %1269, %1266 ], [ %1192, %1260 ]
  %1276 = phi i64 [ %1270, %1266 ], [ %1263, %1260 ]
  br i1 %1274, label %1277, label %1525

1277:                                             ; preds = %1180, %1272, %1178
  %1278 = phi ptr [ %526, %1178 ], [ %1273, %1272 ], [ %526, %1180 ]
  %1279 = phi i32 [ %528, %1178 ], [ %1275, %1272 ], [ %528, %1180 ]
  %1280 = phi i64 [ %529, %1178 ], [ %1276, %1272 ], [ %529, %1180 ]
  %1281 = icmp eq ptr %1278, null
  br i1 %1281, label %1525, label %1282

1282:                                             ; preds = %1277
  %1283 = load ptr, ptr %8, align 8, !tbaa !52
  %1284 = ptrtoint ptr %1283 to i64
  %1285 = ptrtoint ptr %105 to i64
  %1286 = sub i64 %1284, %1285
  %1287 = trunc i64 %1286 to i32
  br label %1288

1288:                                             ; preds = %1282, %1521
  %1289 = phi ptr [ %1278, %1282 ], [ %1523, %1521 ]
  %1290 = getelementptr inbounds %struct.format_wanted_type, ptr %1289, i64 0, i32 8
  %1291 = load ptr, ptr %1290, align 8, !tbaa !171
  %1292 = getelementptr inbounds %struct.tree_common, ptr %1291, i64 0, i32 2
  %1293 = load ptr, ptr %1292, align 8, !tbaa !63
  %1294 = load ptr, ptr @global_trees, align 16, !tbaa !52
  %1295 = icmp eq ptr %1293, %1294
  br i1 %1295, label %1521, label %1296

1296:                                             ; preds = %1288
  %1297 = load ptr, ptr %1289, align 8, !tbaa !168
  %1298 = getelementptr inbounds %struct.format_wanted_type, ptr %1289, i64 0, i32 9
  %1299 = load i32, ptr %1298, align 8, !tbaa !172
  %1300 = icmp eq ptr %1297, null
  br i1 %1300, label %1301, label %1302

1301:                                             ; preds = %1296
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2153, ptr noundef nonnull @.str.7) #16
  br label %1302

1302:                                             ; preds = %1301, %1296
  %1303 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !52
  %1304 = icmp eq ptr %1297, %1303
  br i1 %1304, label %1305, label %1310

1305:                                             ; preds = %1302
  %1306 = getelementptr inbounds %struct.format_wanted_type, ptr %1289, i64 0, i32 3
  %1307 = load i32, ptr %1306, align 4, !tbaa !207
  %1308 = icmp eq i32 %1307, 0
  br i1 %1308, label %1309, label %1310

1309:                                             ; preds = %1305
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2154, ptr noundef nonnull @.str.7) #16
  br label %1310

1310:                                             ; preds = %1309, %1305, %1302
  %1311 = getelementptr inbounds %struct.format_wanted_type, ptr %1289, i64 0, i32 3
  %1312 = load i32, ptr %1311, align 4, !tbaa !207
  %1313 = icmp eq i32 %1312, 0
  br i1 %1313, label %1314, label %1317

1314:                                             ; preds = %1310
  %1315 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 6), align 8, !tbaa !214
  %1316 = call ptr %1315(ptr noundef %1297) #16
  br label %1317

1317:                                             ; preds = %1314, %1310
  %1318 = phi ptr [ %1316, %1314 ], [ %1297, %1310 ]
  %1319 = getelementptr inbounds %struct.tree_type, ptr %1318, i64 0, i32 16
  %1320 = load ptr, ptr %1319, align 8, !tbaa !63
  %1321 = call ptr @tree_strip_nop_conversions(ptr noundef %1291) #16
  %1322 = load i32, ptr %1311, align 4, !tbaa !207
  %1323 = icmp sgt i32 %1322, 0
  br i1 %1323, label %1324, label %1421

1324:                                             ; preds = %1317
  %1325 = getelementptr inbounds %struct.format_wanted_type, ptr %1289, i64 0, i32 5
  %1326 = getelementptr inbounds %struct.format_wanted_type, ptr %1289, i64 0, i32 6
  %1327 = load i64, ptr %1293, align 8
  %1328 = and i64 %1327, 65535
  %1329 = icmp eq i64 %1328, 10
  br i1 %1329, label %1334, label %1409

1330:                                             ; preds = %1417
  %1331 = load i64, ptr %1339, align 8
  %1332 = and i64 %1331, 65535
  %1333 = icmp eq i64 %1332, 10
  br i1 %1333, label %1334, label %1409, !llvm.loop !222

1334:                                             ; preds = %1324, %1330
  %1335 = phi ptr [ %1339, %1330 ], [ %1293, %1324 ]
  %1336 = phi ptr [ %1373, %1330 ], [ %1321, %1324 ]
  %1337 = phi i32 [ %1418, %1330 ], [ 0, %1324 ]
  %1338 = getelementptr inbounds %struct.tree_common, ptr %1335, i64 0, i32 2
  %1339 = load ptr, ptr %1338, align 8, !tbaa !63
  %1340 = load ptr, ptr @global_trees, align 16, !tbaa !52
  %1341 = icmp eq ptr %1339, %1340
  br i1 %1341, label %1421, label %1342

1342:                                             ; preds = %1334
  %1343 = load i32, ptr %1325, align 4, !tbaa !210
  %1344 = icmp ne i32 %1343, 0
  %1345 = icmp eq i32 %1337, 0
  %1346 = and i1 %1345, %1344
  %1347 = icmp ne ptr %1336, null
  %1348 = select i1 %1346, i1 %1347, i1 false
  br i1 %1348, label %1349, label %1354

1349:                                             ; preds = %1342
  %1350 = call i32 @integer_zerop(ptr noundef nonnull %1336) #16
  %1351 = icmp eq i32 %1350, 0
  br i1 %1351, label %1354, label %1352

1352:                                             ; preds = %1349
  %1353 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.69, i32 noundef %1299) #16
  br label %1354

1354:                                             ; preds = %1352, %1349, %1342
  %1355 = load i32, ptr %1326, align 8, !tbaa !211
  %1356 = icmp ne i32 %1355, 0
  %1357 = and i1 %1345, %1356
  %1358 = select i1 %1357, i1 %1347, i1 false
  br i1 %1358, label %1359, label %1364

1359:                                             ; preds = %1354
  %1360 = call i32 @integer_zerop(ptr noundef nonnull %1336) #16
  %1361 = icmp eq i32 %1360, 0
  br i1 %1361, label %1364, label %1362

1362:                                             ; preds = %1359
  %1363 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.70, i32 noundef %1299) #16
  br label %1364

1364:                                             ; preds = %1362, %1359, %1354
  br i1 %1347, label %1365, label %1372

1365:                                             ; preds = %1364
  %1366 = load i64, ptr %1336, align 8
  %1367 = and i64 %1366, 65535
  %1368 = icmp eq i64 %1367, 121
  br i1 %1368, label %1369, label %1372

1369:                                             ; preds = %1365
  %1370 = getelementptr inbounds %struct.tree_exp, ptr %1336, i64 0, i32 3
  %1371 = load ptr, ptr %1370, align 8, !tbaa !63
  br label %1372

1372:                                             ; preds = %1369, %1365, %1364
  %1373 = phi ptr [ %1371, %1369 ], [ null, %1365 ], [ null, %1364 ]
  %1374 = load i32, ptr %1325, align 4, !tbaa !210
  %1375 = icmp ne i32 %1374, 0
  %1376 = and i1 %1345, %1375
  br i1 %1376, label %1377, label %1393

1377:                                             ; preds = %1372
  %1378 = load i64, ptr %1339, align 8
  %1379 = and i64 %1378, 1048576
  %1380 = icmp eq i64 %1379, 0
  br i1 %1380, label %1381, label %1391

1381:                                             ; preds = %1377
  %1382 = icmp eq ptr %1373, null
  br i1 %1382, label %1393, label %1383

1383:                                             ; preds = %1381
  %1384 = load i64, ptr %1373, align 8
  %1385 = and i64 %1384, 65535
  %1386 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1385
  %1387 = load i32, ptr %1386, align 4, !tbaa !67
  switch i32 %1387, label %1393 [
    i32 1, label %1391
    i32 3, label %1388
  ]

1388:                                             ; preds = %1383
  %1389 = and i64 %1384, 1048576
  %1390 = icmp eq i64 %1389, 0
  br i1 %1390, label %1393, label %1391

1391:                                             ; preds = %1388, %1383, %1377
  %1392 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.71, i32 noundef %1299) #16
  br label %1393

1393:                                             ; preds = %1391, %1388, %1383, %1381, %1372
  %1394 = icmp ne i32 %1337, 0
  %1395 = load i32, ptr @pedantic, align 4
  %1396 = icmp ne i32 %1395, 0
  %1397 = select i1 %1394, i1 %1396, i1 false
  br i1 %1397, label %1398, label %1417

1398:                                             ; preds = %1393
  %1399 = load i64, ptr %1339, align 8
  %1400 = and i64 %1399, 1572864
  %1401 = icmp eq i64 %1400, 0
  br i1 %1401, label %1402, label %1407

1402:                                             ; preds = %1398
  %1403 = getelementptr inbounds %struct.tree_type, ptr %1339, i64 0, i32 6
  %1404 = load i32, ptr %1403, align 4
  %1405 = and i32 %1404, 8192
  %1406 = icmp eq i32 %1405, 0
  br i1 %1406, label %1417, label %1407

1407:                                             ; preds = %1402, %1398
  %1408 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.72, i32 noundef %1299) #16
  br label %1417

1409:                                             ; preds = %1330, %1324
  %1410 = phi i32 [ %1322, %1324 ], [ %1419, %1330 ]
  %1411 = phi i32 [ 0, %1324 ], [ %1418, %1330 ]
  %1412 = phi ptr [ %1293, %1324 ], [ %1339, %1330 ]
  %1413 = getelementptr inbounds %struct.format_wanted_type, ptr %1289, i64 0, i32 7
  %1414 = load ptr, ptr %1413, align 8, !tbaa !170
  %1415 = getelementptr inbounds %struct.format_wanted_type, ptr %1289, i64 0, i32 1
  %1416 = load ptr, ptr %1415, align 8, !tbaa !206
  call fastcc void @format_type_warning(ptr noundef %1414, ptr noundef nonnull %105, i32 noundef %1287, ptr noundef %1320, i32 noundef %1410, ptr noundef %1416, ptr noundef nonnull %1293, i32 noundef %1299)
  br label %1421

1417:                                             ; preds = %1407, %1402, %1393
  %1418 = add nuw nsw i32 %1337, 1
  %1419 = load i32, ptr %1311, align 4, !tbaa !207
  %1420 = icmp slt i32 %1418, %1419
  br i1 %1420, label %1330, label %1421, !llvm.loop !222

1421:                                             ; preds = %1417, %1334, %1317, %1409
  %1422 = phi i32 [ %1411, %1409 ], [ 0, %1317 ], [ %1337, %1334 ], [ %1418, %1417 ]
  %1423 = phi ptr [ %1412, %1409 ], [ %1293, %1317 ], [ %1339, %1334 ], [ %1339, %1417 ]
  %1424 = load i32, ptr %1311, align 4, !tbaa !207
  %1425 = icmp slt i32 %1422, %1424
  br i1 %1425, label %1521, label %1426

1426:                                             ; preds = %1421
  %1427 = getelementptr inbounds %struct.tree_type, ptr %1423, i64 0, i32 16
  %1428 = load ptr, ptr %1427, align 8, !tbaa !63
  %1429 = getelementptr inbounds %struct.format_wanted_type, ptr %1289, i64 0, i32 4
  %1430 = load i32, ptr %1429, align 8, !tbaa !208
  %1431 = icmp eq i32 %1430, 0
  br i1 %1431, label %1441, label %1432

1432:                                             ; preds = %1426
  %1433 = load ptr, ptr @integer_types, align 16, !tbaa !52
  %1434 = icmp eq ptr %1428, %1433
  %1435 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 1), align 8
  %1436 = icmp eq ptr %1428, %1435
  %1437 = select i1 %1434, i1 true, i1 %1436
  br i1 %1437, label %1441, label %1438

1438:                                             ; preds = %1432
  %1439 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 2), align 16, !tbaa !52
  %1440 = icmp eq ptr %1428, %1439
  br label %1441

1441:                                             ; preds = %1438, %1432, %1426
  %1442 = phi i1 [ false, %1426 ], [ true, %1432 ], [ %1440, %1438 ]
  %1443 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 24), align 8, !tbaa !223
  %1444 = call i32 %1443(ptr noundef %1320, ptr noundef %1428) #16
  %1445 = icmp eq i32 %1444, 0
  br i1 %1445, label %1446, label %1521

1446:                                             ; preds = %1441
  %1447 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !52
  %1448 = icmp eq ptr %1320, %1447
  br i1 %1448, label %1449, label %1455

1449:                                             ; preds = %1446
  %1450 = load i32, ptr @pedantic, align 4, !tbaa !67
  %1451 = icmp eq i32 %1450, 0
  %1452 = icmp eq i32 %1422, 1
  %1453 = select i1 %1452, i1 %1442, i1 false
  %1454 = select i1 %1451, i1 true, i1 %1453
  br i1 %1454, label %1521, label %1455

1455:                                             ; preds = %1449, %1446
  %1456 = load i64, ptr %1320, align 8
  %1457 = and i64 %1456, 65535
  %1458 = icmp eq i64 %1457, 8
  br i1 %1458, label %1459, label %1480

1459:                                             ; preds = %1455
  %1460 = load i64, ptr %1428, align 8
  %1461 = and i64 %1460, 65535
  %1462 = icmp eq i64 %1461, 8
  br i1 %1462, label %1463, label %1480

1463:                                             ; preds = %1459
  %1464 = load i32, ptr @pedantic, align 4, !tbaa !67
  %1465 = icmp eq i32 %1464, 0
  %1466 = icmp eq i32 %1422, 0
  %1467 = or i1 %1466, %1465
  %1468 = icmp eq i32 %1422, 1
  %1469 = select i1 %1468, i1 %1442, i1 false
  %1470 = select i1 %1467, i1 true, i1 %1469
  br i1 %1470, label %1471, label %1480

1471:                                             ; preds = %1463
  %1472 = and i64 %1456, 2097152
  %1473 = icmp eq i64 %1472, 0
  br i1 %1473, label %1477, label %1474

1474:                                             ; preds = %1471
  %1475 = call ptr @c_common_unsigned_type(ptr noundef nonnull %1428) #16
  %1476 = icmp eq ptr %1320, %1475
  br i1 %1476, label %1521, label %1480

1477:                                             ; preds = %1471
  %1478 = call ptr @c_common_signed_type(ptr noundef nonnull %1428) #16
  %1479 = icmp eq ptr %1320, %1478
  br i1 %1479, label %1521, label %1480

1480:                                             ; preds = %1477, %1474, %1463, %1459, %1455
  %1481 = load ptr, ptr @integer_types, align 16, !tbaa !52
  %1482 = icmp eq ptr %1320, %1481
  br i1 %1482, label %1483, label %1489

1483:                                             ; preds = %1480
  %1484 = load i32, ptr @pedantic, align 4, !tbaa !67
  %1485 = icmp eq i32 %1484, 0
  %1486 = icmp ult i32 %1422, 2
  %1487 = or i1 %1486, %1485
  %1488 = select i1 %1487, i1 %1442, i1 false
  br i1 %1488, label %1521, label %1489

1489:                                             ; preds = %1483, %1480
  %1490 = getelementptr inbounds %struct.format_wanted_type, ptr %1289, i64 0, i32 2
  %1491 = load i32, ptr %1490, align 8, !tbaa !209
  %1492 = icmp eq i32 %1491, 0
  br i1 %1492, label %1515, label %1493

1493:                                             ; preds = %1489
  %1494 = load i64, ptr %1428, align 8
  %1495 = trunc i64 %1494 to i32
  %1496 = and i32 %1495, 65535
  %1497 = load i64, ptr %1320, align 8
  %1498 = trunc i64 %1497 to i32
  %1499 = and i32 %1498, 65535
  %1500 = icmp eq i32 %1496, %1499
  br i1 %1500, label %1507, label %1501

1501:                                             ; preds = %1493
  %1502 = add nsw i32 %1496, -6
  %1503 = icmp ult i32 %1502, 3
  %1504 = add nsw i32 %1499, -6
  %1505 = icmp ult i32 %1504, 3
  %1506 = and i1 %1503, %1505
  br i1 %1506, label %1507, label %1515

1507:                                             ; preds = %1501, %1493
  %1508 = getelementptr inbounds %struct.tree_type, ptr %1428, i64 0, i32 6
  %1509 = load i32, ptr %1508, align 4
  %1510 = getelementptr inbounds %struct.tree_type, ptr %1320, i64 0, i32 6
  %1511 = load i32, ptr %1510, align 4
  %1512 = xor i32 %1511, %1509
  %1513 = and i32 %1512, 1023
  %1514 = icmp eq i32 %1513, 0
  br i1 %1514, label %1521, label %1515

1515:                                             ; preds = %1501, %1507, %1489
  %1516 = getelementptr inbounds %struct.format_wanted_type, ptr %1289, i64 0, i32 7
  %1517 = load ptr, ptr %1516, align 8, !tbaa !170
  %1518 = load i32, ptr %1311, align 4, !tbaa !207
  %1519 = getelementptr inbounds %struct.format_wanted_type, ptr %1289, i64 0, i32 1
  %1520 = load ptr, ptr %1519, align 8, !tbaa !206
  call fastcc void @format_type_warning(ptr noundef %1517, ptr noundef nonnull %105, i32 noundef %1287, ptr noundef nonnull %1320, i32 noundef %1518, ptr noundef %1520, ptr noundef %1293, i32 noundef %1299)
  br label %1521

1521:                                             ; preds = %1507, %1477, %1474, %1515, %1483, %1449, %1441, %1421, %1288
  %1522 = getelementptr inbounds %struct.format_wanted_type, ptr %1289, i64 0, i32 10
  %1523 = load ptr, ptr %1522, align 8, !tbaa !173
  %1524 = icmp eq ptr %1523, null
  br i1 %1524, label %1525, label %1288, !llvm.loop !224

1525:                                             ; preds = %1521, %1272, %173, %167, %1277, %1163, %758, %760, %465, %317, %266, %206, %178, %127, %202, %314, %462, %1122, %1120, %730, %476, %328, %185, %183
  %1526 = phi i32 [ 2, %183 ], [ 2, %185 ], [ 1, %328 ], [ 1, %476 ], [ 2, %730 ], [ 1, %1120 ], [ 2, %1122 ], [ 1, %462 ], [ 1, %314 ], [ 1, %202 ], [ 1, %127 ], [ 2, %178 ], [ 1, %206 ], [ 1, %266 ], [ 1, %317 ], [ 1, %465 ], [ 2, %760 ], [ 2, %758 ], [ 2, %1163 ], [ 0, %1277 ], [ 1, %167 ], [ 1, %173 ], [ 1, %1272 ], [ 0, %1521 ]
  %1527 = phi i32 [ %103, %183 ], [ %103, %185 ], [ %321, %328 ], [ %469, %476 ], [ %528, %730 ], [ %528, %1120 ], [ %528, %1122 ], [ %463, %462 ], [ %315, %314 ], [ %204, %202 ], [ %103, %127 ], [ %103, %178 ], [ %103, %206 ], [ %211, %266 ], [ 0, %317 ], [ 0, %465 ], [ %528, %760 ], [ %528, %758 ], [ %528, %1163 ], [ %1279, %1277 ], [ %103, %167 ], [ %103, %173 ], [ %1275, %1272 ], [ %1279, %1521 ]
  %1528 = phi i64 [ %104, %183 ], [ %104, %185 ], [ %322, %328 ], [ %470, %476 ], [ %529, %730 ], [ %1117, %1120 ], [ %1117, %1122 ], [ %464, %462 ], [ %316, %314 ], [ %104, %202 ], [ %104, %127 ], [ %104, %178 ], [ %104, %206 ], [ %104, %266 ], [ %104, %317 ], [ %387, %465 ], [ %529, %760 ], [ %529, %758 ], [ %529, %1163 ], [ %1280, %1277 ], [ %104, %167 ], [ %104, %173 ], [ %1276, %1272 ], [ %1280, %1521 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %12) #16
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  switch i32 %1526, label %1530 [
    i32 0, label %1529
    i32 2, label %1529
  ]

1529:                                             ; preds = %1525, %1525
  br label %102, !llvm.loop !156

1530:                                             ; preds = %1525
  ret void
}

declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @maybe_read_dollar_number(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #10 !prof !51 {
  %6 = load ptr, ptr %0, align 8, !tbaa !52
  %7 = load i8, ptr %6, align 1, !tbaa !63
  %8 = zext i8 %7 to i64
  %9 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !167
  %11 = and i16 %10, 4
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %5
  %14 = load i8, ptr %6, align 1, !tbaa !63
  %15 = sext i8 %14 to i32
  %16 = and i32 %15, 255
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %17
  %19 = load i16, ptr %18, align 2, !tbaa !167
  %20 = and i16 %19, 4
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %50, label %26

22:                                               ; preds = %5
  %23 = icmp eq i32 %1, 0
  br i1 %23, label %149, label %24

24:                                               ; preds = %22
  %25 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.63) #16
  br label %149

26:                                               ; preds = %13, %26
  %27 = phi i32 [ %41, %26 ], [ %15, %13 ]
  %28 = phi i32 [ %33, %26 ], [ 0, %13 ]
  %29 = phi ptr [ %39, %26 ], [ %6, %13 ]
  %30 = phi i32 [ %38, %26 ], [ 0, %13 ]
  %31 = mul nsw i32 %28, 10
  %32 = add i32 %31, -48
  %33 = add i32 %32, %27
  %34 = icmp sgt i32 %33, -1
  %35 = udiv i32 %33, 10
  %36 = icmp eq i32 %35, %28
  %37 = and i1 %34, %36
  %38 = select i1 %37, i32 %30, i32 1
  %39 = getelementptr inbounds i8, ptr %29, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !63
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, 255
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %43
  %45 = load i16, ptr %44, align 2, !tbaa !167
  %46 = and i16 %45, 4
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %26, !llvm.loop !225

48:                                               ; preds = %26
  %49 = icmp ne i32 %38, 0
  br label %50

50:                                               ; preds = %48, %13
  %51 = phi i1 [ false, %13 ], [ %49, %48 ]
  %52 = phi ptr [ %6, %13 ], [ %39, %48 ]
  %53 = phi i32 [ 0, %13 ], [ %33, %48 ]
  %54 = phi i8 [ %14, %13 ], [ %40, %48 ]
  %55 = icmp eq i8 %54, 36
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = icmp eq i32 %1, 0
  br i1 %57, label %149, label %58

58:                                               ; preds = %56
  %59 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.63) #16
  br label %149

60:                                               ; preds = %50
  %61 = getelementptr inbounds i8, ptr %52, i64 1
  store ptr %61, ptr %0, align 8, !tbaa !52
  %62 = load i32, ptr @pedantic, align 4, !tbaa !67
  %63 = icmp eq i32 %62, 0
  %64 = load i1, ptr @dollar_format_warned, align 4
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load i32, ptr @c_language, align 4, !tbaa !67
  %68 = and i32 %67, 2
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, ptr @.str.43, ptr @.str.42
  %71 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.65, ptr noundef nonnull %70) #16
  store i1 true, ptr @dollar_format_warned, align 4
  br label %72

72:                                               ; preds = %66, %60
  %73 = icmp eq i32 %53, 0
  %74 = or i1 %51, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %72
  %76 = load i32, ptr @dollar_first_arg_num, align 4, !tbaa !67
  %77 = icmp ne i32 %76, 0
  %78 = load i32, ptr @dollar_arguments_count, align 4
  %79 = icmp sgt i32 %53, %78
  %80 = select i1 %77, i1 %79, i1 false
  br i1 %80, label %81, label %83

81:                                               ; preds = %75, %72
  %82 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.66) #16
  br label %149

83:                                               ; preds = %75
  %84 = load i32, ptr @dollar_max_arg_used, align 4, !tbaa !67
  %85 = icmp sgt i32 %53, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 %53, ptr @dollar_max_arg_used, align 4, !tbaa !67
  br label %87

87:                                               ; preds = %86, %83
  %88 = load i32, ptr @dollar_arguments_alloc, align 4, !tbaa !67
  %89 = load i32, ptr @dollar_max_arg_used, align 4, !tbaa !67
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %87, %91
  %92 = phi i32 [ %94, %91 ], [ %88, %87 ]
  %93 = shl nsw i32 %92, 1
  %94 = add nsw i32 %93, 16
  %95 = load ptr, ptr @dollar_arguments_used, align 8, !tbaa !52
  %96 = sext i32 %94 to i64
  %97 = tail call ptr @xrealloc(ptr noundef %95, i64 noundef %96) #16
  store ptr %97, ptr @dollar_arguments_used, align 8, !tbaa !52
  %98 = load ptr, ptr @dollar_arguments_pointer_p, align 8, !tbaa !52
  %99 = tail call ptr @xrealloc(ptr noundef %98, i64 noundef %96) #16
  store ptr %99, ptr @dollar_arguments_pointer_p, align 8, !tbaa !52
  %100 = load ptr, ptr @dollar_arguments_used, align 8, !tbaa !52
  %101 = load i32, ptr @dollar_arguments_alloc, align 4, !tbaa !67
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, ptr %100, i64 %102
  %104 = sub nsw i32 %94, %101
  %105 = sext i32 %104 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %103, i8 0, i64 %105, i1 false)
  store i32 %94, ptr @dollar_arguments_alloc, align 4, !tbaa !67
  %106 = load i32, ptr @dollar_max_arg_used, align 4, !tbaa !67
  %107 = icmp slt i32 %94, %106
  br i1 %107, label %91, label %108, !llvm.loop !226

108:                                              ; preds = %91, %87
  %109 = getelementptr inbounds %struct.format_kind_info, ptr %4, i64 0, i32 7
  %110 = load i32, ptr %109, align 8, !tbaa !93
  %111 = and i32 %110, 8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %108
  %114 = load ptr, ptr @dollar_arguments_used, align 8, !tbaa !52
  %115 = sext i32 %53 to i64
  %116 = getelementptr i8, ptr %114, i64 %115
  %117 = getelementptr i8, ptr %116, i64 -1
  %118 = load i8, ptr %117, align 1, !tbaa !63
  %119 = icmp eq i8 %118, 1
  br i1 %119, label %120, label %123

120:                                              ; preds = %113
  store i8 2, ptr %117, align 1, !tbaa !63
  %121 = load ptr, ptr %4, align 8, !tbaa !100
  %122 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.67, i32 noundef %53, ptr noundef %121) #16
  br label %128

123:                                              ; preds = %113, %108
  %124 = load ptr, ptr @dollar_arguments_used, align 8, !tbaa !52
  %125 = sext i32 %53 to i64
  %126 = getelementptr i8, ptr %124, i64 %125
  %127 = getelementptr i8, ptr %126, i64 -1
  store i8 1, ptr %127, align 1, !tbaa !63
  br label %128

128:                                              ; preds = %123, %120
  %129 = load i32, ptr @dollar_first_arg_num, align 4, !tbaa !67
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %148, label %131

131:                                              ; preds = %128
  store ptr %2, ptr %3, align 8, !tbaa !52
  %132 = icmp sgt i32 %53, 1
  br i1 %132, label %133, label %144

133:                                              ; preds = %131
  %134 = load ptr, ptr %3, align 8, !tbaa !52
  br label %135

135:                                              ; preds = %133, %139
  %136 = phi ptr [ %134, %133 ], [ %141, %139 ]
  %137 = phi i32 [ 1, %133 ], [ %142, %139 ]
  %138 = icmp eq ptr %136, null
  br i1 %138, label %144, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.tree_common, ptr %136, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !63
  store ptr %141, ptr %3, align 8, !tbaa !52
  %142 = add nuw nsw i32 %137, 1
  %143 = icmp eq i32 %142, %53
  br i1 %143, label %144, label %135, !llvm.loop !227

144:                                              ; preds = %135, %139, %131
  %145 = load ptr, ptr %3, align 8, !tbaa !52
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1088, ptr noundef nonnull @.str.7) #16
  br label %149

148:                                              ; preds = %128
  store ptr null, ptr %3, align 8, !tbaa !52
  br label %149

149:                                              ; preds = %148, %144, %147, %56, %22, %81, %58, %24
  %150 = phi i32 [ -1, %58 ], [ -1, %81 ], [ -1, %24 ], [ 0, %22 ], [ 0, %56 ], [ %53, %147 ], [ %53, %144 ], [ %53, %148 ]
  ret i32 %150
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @avoid_dollar_number(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !51 {
  %2 = load i8, ptr %0, align 1, !tbaa !63
  %3 = zext i8 %2 to i64
  %4 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %3
  %5 = load i16, ptr %4, align 2, !tbaa !167
  %6 = and i16 %5, 4
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %1, %8
  %9 = phi ptr [ %16, %8 ], [ %0, %1 ]
  %10 = load i8, ptr %9, align 1, !tbaa !63
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !167
  %14 = and i16 %13, 4
  %15 = icmp eq i16 %14, 0
  %16 = getelementptr inbounds i8, ptr %9, i64 1
  br i1 %15, label %17, label %8, !llvm.loop !228

17:                                               ; preds = %8
  %18 = icmp eq i8 %10, 36
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.68) #16
  br label %21

21:                                               ; preds = %17, %1, %19
  %22 = phi i8 [ 1, %19 ], [ 0, %1 ], [ 0, %17 ]
  ret i8 %22
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @get_flag_spec(ptr noundef readonly %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #10 !prof !51 {
  %4 = load i32, ptr %0, align 8, !tbaa !158
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %3
  %7 = icmp eq ptr %2, null
  br label %8

8:                                                ; preds = %6, %22
  %9 = phi i64 [ 0, %6 ], [ %23, %22 ]
  %10 = phi i32 [ %4, %6 ], [ %25, %22 ]
  %11 = phi ptr [ %0, %6 ], [ %24, %22 ]
  %12 = icmp eq i32 %10, %1
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.format_flag_spec, ptr %0, i64 %9, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !160
  %16 = icmp eq i32 %15, 0
  br i1 %7, label %21, label %17

17:                                               ; preds = %13
  br i1 %16, label %22, label %18

18:                                               ; preds = %17
  %19 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef %15)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %30

21:                                               ; preds = %13
  br i1 %16, label %30, label %22

22:                                               ; preds = %18, %17, %21, %8
  %23 = add nuw i64 %9, 1
  %24 = getelementptr inbounds %struct.format_flag_spec, ptr %0, i64 %23
  %25 = load i32, ptr %24, align 8, !tbaa !158
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %8, !llvm.loop !161

27:                                               ; preds = %22, %3
  %28 = icmp eq ptr %2, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1177, ptr noundef nonnull @.str.7) #16
  br label %30

30:                                               ; preds = %21, %18, %29, %27
  %31 = phi ptr [ null, %27 ], [ null, %29 ], [ %11, %18 ], [ %11, %21 ]
  ret ptr %31
}

declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @format_type_warning(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) unnamed_addr #10 !prof !51 {
  %9 = icmp eq ptr %5, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !63
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %10
  %15 = load i64, ptr %12, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 35
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.tree_decl_minimal, ptr %12, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !63
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !229
  %24 = tail call ptr %23(ptr noundef nonnull %12, i32 noundef 2) #16
  %25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 16
  %29 = load ptr, ptr %28, align 8, !tbaa !63
  br label %30

30:                                               ; preds = %27, %22, %18, %14, %10, %8
  %31 = phi ptr [ %6, %22 ], [ %29, %27 ], [ %6, %18 ], [ %6, %14 ], [ %6, %10 ], [ %6, %8 ]
  %32 = add nsw i32 %4, 2
  %33 = sext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  %35 = icmp eq i32 %4, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i8 0, ptr %34, align 16, !tbaa !63
  br label %49

37:                                               ; preds = %30
  %38 = load i32, ptr @c_language, align 4, !tbaa !67
  %39 = and i32 %38, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = sext i32 %4 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %34, i8 42, i64 %42, i1 false)
  %43 = getelementptr inbounds i8, ptr %34, i64 %42
  store i8 0, ptr %43, align 1, !tbaa !63
  br label %49

44:                                               ; preds = %37
  store i8 32, ptr %34, align 16, !tbaa !63
  %45 = getelementptr inbounds i8, ptr %34, i64 1
  %46 = sext i32 %4 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %45, i8 42, i64 %46, i1 false)
  %47 = getelementptr i8, ptr %34, i64 %46
  %48 = getelementptr i8, ptr %47, i64 1
  store i8 0, ptr %48, align 1, !tbaa !63
  br label %49

49:                                               ; preds = %41, %44, %36
  %50 = icmp eq ptr %0, null
  br i1 %9, label %56, label %51

51:                                               ; preds = %49
  br i1 %50, label %54, label %52

52:                                               ; preds = %51
  %53 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.73, ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %34, i32 noundef %7, ptr noundef %31) #16
  br label %61

54:                                               ; preds = %51
  %55 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.74, i32 noundef %2, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %34, i32 noundef %7, ptr noundef %31) #16
  br label %61

56:                                               ; preds = %49
  br i1 %50, label %59, label %57

57:                                               ; preds = %56
  %58 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.75, ptr noundef nonnull %0, ptr noundef %3, ptr noundef nonnull %34, i32 noundef %7, ptr noundef %31) #16
  br label %61

59:                                               ; preds = %56
  %60 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.76, i32 noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %34, i32 noundef %7, ptr noundef %31) #16
  br label %61

61:                                               ; preds = %57, %59, %52, %54
  ret void
}

declare ptr @c_common_unsigned_type(ptr noundef) local_unnamed_addr #3

declare ptr @c_common_signed_type(ptr noundef) local_unnamed_addr #3

declare ptr @maybe_get_identifier(ptr noundef) local_unnamed_addr #3

declare ptr @identifier_global_value(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @find_length_info_modifier_index(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !146 !PGOFuncName !230 {
  %2 = load ptr, ptr %0, align 8, !tbaa !181
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4, !prof !148

4:                                                ; preds = %1, %10
  %5 = phi ptr [ %13, %10 ], [ %2, %1 ]
  %6 = phi i32 [ %11, %10 ], [ 0, %1 ]
  %7 = phi ptr [ %12, %10 ], [ %0, %1 ]
  %8 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %5, i32 noundef 119)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %16, !prof !231

10:                                               ; preds = %4
  %11 = add i32 %6, 1
  %12 = getelementptr inbounds %struct.format_length_info, ptr %7, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !181
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %4, !prof !232, !llvm.loop !233

15:                                               ; preds = %10, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2389, ptr noundef nonnull @.str.7) #16
  br label %16

16:                                               ; preds = %4, %15
  %17 = phi i32 [ 0, %15 ], [ %6, %4 ]
  ret i32 %17
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @find_char_info_specifier_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #10 !prof !51 {
  %3 = load ptr, ptr %0, align 8, !tbaa !188
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2, %11
  %6 = phi ptr [ %14, %11 ], [ %3, %2 ]
  %7 = phi i32 [ %12, %11 ], [ 0, %2 ]
  %8 = phi ptr [ %13, %11 ], [ %0, %2 ]
  %9 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %6, i32 noundef %1)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  %12 = add i32 %7, 1
  %13 = getelementptr inbounds %struct.format_char_info, ptr %8, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !188
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !234

16:                                               ; preds = %11, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2370, ptr noundef nonnull @.str.7) #16
  br label %17

17:                                               ; preds = %5, %16
  %18 = phi i32 [ 0, %16 ], [ %7, %5 ]
  ret i32 %18
}

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!50}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!35 = !{ptr @handle_format_arg_attribute, ptr @check_format_string, i64 6}
!36 = !{ptr @decode_format_attr, ptr @strncmp, i64 141}
!37 = !{ptr @decode_format_attr, ptr @strlen, i64 233}
!38 = !{ptr @decode_format_attr, ptr @decode_format_type, i64 70}
!39 = !{ptr @decode_format_type, ptr @strncmp, i64 142}
!40 = !{ptr @decode_format_type, ptr @strlen, i64 444}
!41 = !{ptr @decode_format_type, ptr @strcmp, i64 210}
!42 = !{ptr @handle_format_attribute, ptr @decode_format_attr, i64 70}
!43 = !{ptr @handle_format_attribute, ptr @xmemdup, i64 1}
!44 = !{ptr @handle_format_attribute, ptr @init_dynamic_asm_fprintf_info, i64 1}
!45 = !{ptr @init_dynamic_asm_fprintf_info, ptr @maybe_get_identifier, i64 1}
!46 = !{ptr @init_dynamic_asm_fprintf_info, ptr @identifier_global_value, i64 1}
!47 = !{ptr @init_dynamic_asm_fprintf_info, ptr @xmemdup, i64 1}
!48 = !{ptr @init_dynamic_asm_fprintf_info, ptr @find_length_info_modifier_index, i64 1}
!49 = !{ptr @find_length_info_modifier_index, ptr @strchr, i64 2}
!50 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!51 = !{!"function_entry_count", i64 0}
!52 = !{!53, !53, i64 0}
!53 = !{!"any pointer", !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C/C++ TBAA"}
!56 = !{!57, !53, i64 8}
!57 = !{!"_IO_FILE", !58, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !53, i64 80, !53, i64 88, !53, i64 96, !53, i64 104, !58, i64 112, !58, i64 116, !59, i64 120, !60, i64 128, !54, i64 130, !54, i64 131, !53, i64 136, !59, i64 144, !53, i64 152, !53, i64 160, !53, i64 168, !53, i64 176, !59, i64 184, !58, i64 192, !54, i64 196}
!58 = !{!"int", !54, i64 0}
!59 = !{!"long", !54, i64 0}
!60 = !{!"short", !54, i64 0}
!61 = !{!57, !53, i64 16}
!62 = !{!"branch_weights", i32 2000, i32 1}
!63 = !{!54, !54, i64 0}
!64 = !{!57, !53, i64 40}
!65 = !{!57, !53, i64 48}
!66 = !{!57, !58, i64 0}
!67 = !{!58, !58, i64 0}
!68 = distinct !{!68, !69, !70}
!69 = !{!"llvm.loop.mustprogress"}
!70 = !{!"llvm.loop.unroll.disable"}
!71 = !{!"function_entry_count", i64 6}
!72 = !{!"branch_weights", i32 6, i32 0}
!73 = !{!"branch_weights", i32 0, i32 6}
!74 = !{i8 0, i8 2}
!75 = !{!"c-format.c;check_format_string"}
!76 = !{!"branch_weights", i32 1, i32 151}
!77 = !{!"branch_weights", i32 76, i32 97}
!78 = !{!"branch_weights", i32 151, i32 43}
!79 = distinct !{!79, !69, !70}
!80 = !{!"branch_weights", i32 0, i32 76}
!81 = !{!"branch_weights", i32 76, i32 0}
!82 = distinct !{!82, !69, !70}
!83 = !{!84, !59, i64 8}
!84 = !{!"function_format_info", !58, i64 0, !59, i64 8, !59, i64 16}
!85 = distinct !{!85, !70}
!86 = !{!87, !53, i64 0}
!87 = !{!"", !53, i64 0, !53, i64 8, !53, i64 16}
!88 = !{!87, !53, i64 8}
!89 = !{!87, !53, i64 16}
!90 = !{!91, !58, i64 0}
!91 = !{!"", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12, !58, i64 16, !58, i64 20, !58, i64 24}
!92 = !{!84, !58, i64 0}
!93 = !{!94, !58, i64 56}
!94 = !{!"", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48, !58, i64 56, !58, i64 60, !58, i64 64, !58, i64 68, !58, i64 72, !58, i64 76, !58, i64 80, !53, i64 88, !53, i64 96}
!95 = !{!84, !59, i64 16}
!96 = distinct !{!96, !69, !70}
!97 = !{!91, !58, i64 4}
!98 = !{!91, !58, i64 8}
!99 = !{!91, !58, i64 16}
!100 = !{!94, !53, i64 0}
!101 = !{!91, !58, i64 12}
!102 = !{!91, !58, i64 20}
!103 = distinct !{!103, !69, !70}
!104 = distinct !{!104, !69, !70}
!105 = distinct !{!105, !69, !70}
!106 = !{!"function_entry_count", i64 70}
!107 = !{!"c-format.c;decode_format_attr"}
!108 = !{!"branch_weights", i32 70, i32 0}
!109 = !{!"branch_weights", i32 0, i32 140}
!110 = !{!111, !53, i64 0}
!111 = !{!"", !53, i64 0, !53, i64 8}
!112 = !{!"branch_weights", i32 2, i32 194}
!113 = distinct !{!113, !69, !70}
!114 = !{!"branch_weights", i32 0, i32 323}
!115 = !{!"branch_weights", i32 18088, i32 86241}
!116 = !{!"branch_weights", i32 56, i32 0}
!117 = !{!"branch_weights", i32 140, i32 183}
!118 = !{!"branch_weights", i32 127, i32 69}
!119 = !{!111, !53, i64 8}
!120 = !{!"branch_weights", i32 58, i32 69}
!121 = !{!"branch_weights", i32 0, i32 70}
!122 = !{!59, !59, i64 0}
!123 = !{!"branch_weights", i32 32, i32 38}
!124 = !{!"branch_weights", i32 38, i32 0}
!125 = !{!"c-format.c;decode_format_type"}
!126 = !{!"branch_weights", i32 0, i32 210}
!127 = distinct !{!127, !69, !70}
!128 = !{!"branch_weights", i32 69, i32 141}
!129 = !{!"branch_weights", i32 5, i32 136}
!130 = !{!"branch_weights", i32 1, i32 4}
!131 = !{!"branch_weights", i32 1, i32 0}
!132 = !{!"branch_weights", i32 140, i32 70}
!133 = !{!"branch_weights", i32 38, i32 49}
!134 = distinct !{!134, !69, !70}
!135 = !{!"branch_weights", i32 2, i32 68}
!136 = !{!"branch_weights", i32 1, i32 69}
!137 = !{!"branch_weights", i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0}
!138 = !{!94, !53, i64 8}
!139 = !{!140, !58, i64 8}
!140 = !{!"", !53, i64 0, !58, i64 8, !58, i64 12, !53, i64 16, !58, i64 24, !58, i64 28, !58, i64 32}
!141 = !{!94, !53, i64 16}
!142 = !{!143, !53, i64 16}
!143 = !{!"", !58, i64 0, !53, i64 8, !53, i64 16}
!144 = !{!145, !58, i64 8}
!145 = !{!"format_char_info", !53, i64 0, !58, i64 8, !58, i64 12, !54, i64 16, !53, i64 304, !53, i64 312, !53, i64 320}
!146 = !{!"function_entry_count", i64 1}
!147 = !{!"c-format.c;init_dynamic_asm_fprintf_info"}
!148 = !{!"branch_weights", i32 0, i32 1}
!149 = distinct !{!149, !69, !70}
!150 = !{!91, !58, i64 24}
!151 = distinct !{!151, !69, !70}
!152 = !{!94, !53, i64 40}
!153 = !{!94, !53, i64 48}
!154 = distinct !{!154, !69, !70}
!155 = distinct !{!155, !69, !70}
!156 = distinct !{!156, !70}
!157 = !{!94, !53, i64 24}
!158 = !{!159, !58, i64 0}
!159 = !{!"", !58, i64 0, !58, i64 4, !58, i64 8, !53, i64 16, !53, i64 24, !58, i64 32}
!160 = !{!159, !58, i64 4}
!161 = distinct !{!161, !69, !70}
!162 = !{!159, !53, i64 16}
!163 = !{!159, !58, i64 8}
!164 = distinct !{!164, !69, !70}
!165 = !{!94, !58, i64 60}
!166 = !{!94, !53, i64 88}
!167 = !{!60, !60, i64 0}
!168 = !{!169, !53, i64 0}
!169 = !{!"format_wanted_type", !53, i64 0, !53, i64 8, !58, i64 16, !58, i64 20, !58, i64 24, !58, i64 28, !58, i64 32, !53, i64 40, !53, i64 48, !58, i64 56, !53, i64 64}
!170 = !{!169, !53, i64 40}
!171 = !{!169, !53, i64 48}
!172 = !{!169, !58, i64 56}
!173 = !{!169, !53, i64 64}
!174 = distinct !{!174, !69, !70}
!175 = !{!94, !58, i64 64}
!176 = distinct !{!176, !69, !70}
!177 = !{!94, !58, i64 68}
!178 = !{!94, !53, i64 96}
!179 = distinct !{!179, !69, !70}
!180 = !{!94, !58, i64 80}
!181 = !{!140, !53, i64 0}
!182 = distinct !{!182, !69, !70}
!183 = !{!140, !53, i64 16}
!184 = !{!140, !58, i64 32}
!185 = !{!94, !58, i64 76}
!186 = !{!94, !53, i64 32}
!187 = distinct !{!187, !69, !70}
!188 = !{!145, !53, i64 0}
!189 = distinct !{!189, !69, !70}
!190 = !{!145, !58, i64 12}
!191 = !{!145, !53, i64 304}
!192 = !{!159, !58, i64 32}
!193 = !{!159, !53, i64 24}
!194 = !{!145, !53, i64 312}
!195 = distinct !{!195, !69, !70}
!196 = !{!94, !58, i64 72}
!197 = !{!198, !58, i64 0}
!198 = !{!"", !58, i64 0, !58, i64 4, !58, i64 8, !58, i64 12}
!199 = !{!198, !58, i64 4}
!200 = !{!198, !58, i64 12}
!201 = !{!198, !58, i64 8}
!202 = distinct !{!202, !69, !70}
!203 = distinct !{!203, !69, !70}
!204 = !{!143, !53, i64 8}
!205 = !{!143, !58, i64 0}
!206 = !{!169, !53, i64 8}
!207 = !{!169, !58, i64 20}
!208 = !{!169, !58, i64 24}
!209 = !{!169, !58, i64 16}
!210 = !{!169, !58, i64 28}
!211 = !{!169, !58, i64 32}
!212 = !{!145, !53, i64 320}
!213 = distinct !{!213, !69, !70}
!214 = !{!215, !53, i64 480}
!215 = !{!"lang_hooks", !53, i64 0, !59, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !53, i64 80, !53, i64 88, !53, i64 96, !53, i64 104, !53, i64 112, !53, i64 120, !53, i64 128, !53, i64 136, !53, i64 144, !53, i64 152, !53, i64 160, !53, i64 168, !53, i64 176, !53, i64 184, !53, i64 192, !53, i64 200, !53, i64 208, !53, i64 216, !53, i64 224, !53, i64 232, !216, i64 240, !217, i64 248, !218, i64 256, !219, i64 272, !220, i64 432, !221, i64 560, !53, i64 584, !53, i64 592, !53, i64 600, !53, i64 608, !53, i64 616, !53, i64 624, !53, i64 632, !53, i64 640, !53, i64 648, !53, i64 656, !53, i64 664, !54, i64 672}
!216 = !{!"lang_hooks_for_tree_inlining", !53, i64 0}
!217 = !{!"lang_hooks_for_callgraph", !53, i64 0}
!218 = !{!"lang_hooks_for_tree_dump", !53, i64 0, !53, i64 8}
!219 = !{!"lang_hooks_for_decls", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !53, i64 80, !53, i64 88, !53, i64 96, !53, i64 104, !53, i64 112, !53, i64 120, !53, i64 128, !53, i64 136, !53, i64 144, !53, i64 152}
!220 = !{!"lang_hooks_for_types", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !53, i64 80, !53, i64 88, !53, i64 96, !53, i64 104, !53, i64 112, !54, i64 120}
!221 = !{!"lang_hooks_for_lto", !53, i64 0, !53, i64 8, !53, i64 16}
!222 = distinct !{!222, !69, !70}
!223 = !{!215, !53, i64 192}
!224 = distinct !{!224, !69, !70}
!225 = distinct !{!225, !69, !70}
!226 = distinct !{!226, !69, !70}
!227 = distinct !{!227, !69, !70}
!228 = distinct !{!228, !69, !70}
!229 = !{!215, !53, i64 176}
!230 = !{!"c-format.c;find_length_info_modifier_index"}
!231 = !{!"branch_weights", i32 1, i32 1}
!232 = !{!"branch_weights", i32 0, i32 2}
!233 = distinct !{!233, !69, !70}
!234 = distinct !{!234, !69, !70}
