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
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.function_format_info = type { i32, i64, i64 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.format_check_context = type { ptr, ptr, ptr }
%struct.format_check_results = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.format_wanted_type = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr }

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @set_Wformat(i32 noundef %0) local_unnamed_addr #0 !prof !63 {
  store i32 %0, ptr @warn_format, align 4, !tbaa !64
  store i32 %0, ptr @warn_format_extra_args, align 4, !tbaa !64
  store i32 %0, ptr @warn_format_zero_length, align 4, !tbaa !64
  store i32 %0, ptr @warn_format_contains_nul, align 4, !tbaa !64
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  store i32 %0, ptr @warn_format_nonliteral, align 4, !tbaa !64
  store i32 %0, ptr @warn_format_security, align 4, !tbaa !64
  store i32 %0, ptr @warn_format_y2k, align 4, !tbaa !64
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1, %3
  store i32 %0, ptr @warn_nonnull, align 4, !tbaa !64
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @handle_format_arg_attribute(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #1 !prof !68 {
  %6 = alloca i64, align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !69
  %8 = getelementptr inbounds %struct.tree_list, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  store i64 0, ptr %6, align 8, !tbaa !72
  %10 = call fastcc zeroext i8 @get_constant(ptr noundef %9, ptr noundef nonnull %6, i32 noundef 0) #10, !range !74
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %36, label %12, !prof !75

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !71
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16, !prof !75

16:                                               ; preds = %12
  %17 = load i64, ptr %6, align 8, !tbaa !72
  %18 = tail call fastcc zeroext i8 @check_format_string(ptr noundef nonnull %14, i64 noundef %17, i32 noundef %3, ptr noundef %4) #10, !range !74
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %39, label %20, !prof !75

20:                                               ; preds = %16, %12
  %21 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !71
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 10
  br i1 %25, label %26, label %33, !prof !76

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !71
  %29 = getelementptr inbounds %struct.tree_type, ptr %28, i64 0, i32 16
  %30 = load ptr, ptr %29, align 8, !tbaa !71
  %31 = load ptr, ptr @integer_types, align 16, !tbaa !69
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %39, label %33, !prof !76

33:                                               ; preds = %26, %20
  %34 = and i32 %3, 16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %5
  %37 = phi ptr [ @.str, %5 ], [ @.str.1, %33 ]
  tail call void (ptr, ...) @error(ptr noundef nonnull %37) #11
  br label %38

38:                                               ; preds = %36, %33
  store i8 1, ptr %4, align 1, !tbaa !71
  br label %39

39:                                               ; preds = %38, %26, %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  ret ptr null
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @get_constant(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #1 !prof !77 !PGOFuncName !78 {
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 23
  br i1 %6, label %7, label %11, !prof !79

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !71
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %14, label %11, !prof !79

11:                                               ; preds = %7, %3
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 160, ptr noundef nonnull @.str.7) #11
  br label %17

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !71
  store i64 %16, ptr %1, align 8, !tbaa !72
  br label %17

17:                                               ; preds = %13, %11, %14
  %18 = phi i8 [ 1, %14 ], [ 0, %11 ], [ 0, %13 ]
  ret i8 %18
}

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @check_format_string(ptr noundef readonly %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #1 !prof !80 !PGOFuncName !81 {
  %5 = icmp eq i64 %1, 1
  %6 = icmp eq ptr %0, null
  %7 = or i1 %5, %6
  br i1 %7, label %17, label %8, !prof !82

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %13, %8 ], [ 1, %4 ]
  %10 = phi ptr [ %12, %8 ], [ %0, %4 ]
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = add i64 %9, 1
  %14 = icmp eq i64 %13, %1
  %15 = icmp eq ptr %12, null
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %17, label %8, !prof !83, !llvm.loop !84

17:                                               ; preds = %8, %4
  %18 = phi ptr [ %0, %4 ], [ %12, %8 ]
  %19 = phi i1 [ %6, %4 ], [ %15, %8 ]
  br i1 %19, label %33, label %20, !prof !86

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.tree_list, ptr %18, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !71
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 10
  br i1 %25, label %26, label %33, !prof !87

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !71
  %29 = getelementptr inbounds %struct.tree_type, ptr %28, i64 0, i32 16
  %30 = load ptr, ptr %29, align 8, !tbaa !71
  %31 = load ptr, ptr @integer_types, align 16, !tbaa !69
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %38, label %33, !prof !87

33:                                               ; preds = %26, %20, %17
  %34 = and i32 %2, 16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.8) #11
  br label %37

37:                                               ; preds = %36, %33
  store i8 1, ptr %3, align 1, !tbaa !71
  br label %38

38:                                               ; preds = %26, %37
  %39 = phi i8 [ 0, %37 ], [ 1, %26 ]
  ret i8 %39
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @check_function_format(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 !prof !63 {
  %4 = alloca %struct.function_format_info, align 8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %112, label %6

6:                                                ; preds = %3
  %7 = icmp sgt i32 %1, 0
  %8 = getelementptr inbounds %struct.function_format_info, ptr %4, i64 0, i32 2
  %9 = zext i32 %1 to i64
  br label %10

10:                                               ; preds = %6, %108
  %11 = phi ptr [ %0, %6 ], [ %110, %108 ]
  %12 = getelementptr inbounds %struct.tree_list, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  %14 = call i32 @is_attribute_p(ptr noundef nonnull @.str.2, ptr noundef %13) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %108, label %16

16:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  %17 = getelementptr inbounds %struct.tree_list, ptr %11, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !71
  %19 = call fastcc zeroext i8 @decode_format_attr(ptr noundef %18, ptr noundef nonnull %4, i32 noundef 1) #10, !range !74
  %20 = load i32, ptr @warn_format, align 4, !tbaa !64
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %16
  br i1 %7, label %23, label %31

23:                                               ; preds = %22, %23
  %24 = phi i64 [ %26, %23 ], [ %9, %22 ]
  %25 = phi ptr [ %29, %23 ], [ null, %22 ]
  %26 = add nsw i64 %24, -1
  %27 = getelementptr inbounds ptr, ptr %2, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !69
  %29 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %28, ptr noundef %25) #11
  %30 = icmp sgt i64 %24, 1
  br i1 %30, label %23, label %31, !llvm.loop !88

31:                                               ; preds = %23, %22
  %32 = phi ptr [ null, %22 ], [ %29, %23 ]
  call fastcc void @check_format_info(ptr noundef nonnull %4, ptr noundef %32) #10
  br label %33

33:                                               ; preds = %31, %16
  %34 = load i32, ptr @warn_missing_format_attribute, align 4, !tbaa !64
  %35 = icmp ne i32 %34, 0
  %36 = load i64, ptr %8, align 8
  %37 = icmp eq i64 %36, 0
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %107

39:                                               ; preds = %33
  %40 = load ptr, ptr @format_types, align 8, !tbaa !69
  %41 = load i32, ptr %4, align 8, !tbaa !89
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.format_kind_info, ptr %40, i64 %42, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !91
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %107, label %47

47:                                               ; preds = %39
  %48 = load ptr, ptr @current_function_decl, align 8, !tbaa !69
  %49 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !71
  %51 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !71
  %53 = icmp eq ptr %52, null
  br i1 %53, label %76, label %54

54:                                               ; preds = %47, %70
  %55 = phi ptr [ %72, %70 ], [ %52, %47 ]
  %56 = getelementptr inbounds %struct.tree_list, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !71
  %58 = call i32 @is_attribute_p(ptr noundef nonnull @.str.2, ptr noundef %57) #11
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.tree_list, ptr %55, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !71
  %63 = getelementptr inbounds %struct.tree_list, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !71
  %65 = getelementptr inbounds %struct.tree_identifier, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !71
  %67 = call fastcc i32 @decode_format_type(ptr noundef %66) #10
  %68 = load i32, ptr %4, align 8, !tbaa !89
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %107, label %70

70:                                               ; preds = %54, %60
  %71 = getelementptr inbounds %struct.tree_common, ptr %55, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !71
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %54, !llvm.loop !93

74:                                               ; preds = %70
  %75 = load ptr, ptr @current_function_decl, align 8, !tbaa !69
  br label %76

76:                                               ; preds = %74, %47
  %77 = phi ptr [ %75, %74 ], [ %48, %47 ]
  %78 = getelementptr inbounds %struct.tree_decl_non_common, ptr %77, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !71
  %80 = icmp eq ptr %79, null
  br i1 %80, label %107, label %81

81:                                               ; preds = %76
  %82 = load ptr, ptr @integer_types, align 16
  br label %83

83:                                               ; preds = %81, %96
  %84 = phi ptr [ %79, %81 ], [ %98, %96 ]
  %85 = getelementptr inbounds %struct.tree_common, ptr %84, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !71
  %87 = load i64, ptr %86, align 8
  %88 = and i64 %87, 65535
  %89 = icmp eq i64 %88, 10
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.tree_common, ptr %86, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !71
  %93 = getelementptr inbounds %struct.tree_type, ptr %92, i64 0, i32 16
  %94 = load ptr, ptr %93, align 8, !tbaa !71
  %95 = icmp eq ptr %94, %82
  br i1 %95, label %100, label %96

96:                                               ; preds = %83, %90
  %97 = getelementptr inbounds %struct.tree_common, ptr %84, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !71
  %99 = icmp eq ptr %98, null
  br i1 %99, label %107, label %83, !llvm.loop !94

100:                                              ; preds = %90
  %101 = load ptr, ptr @format_types, align 8, !tbaa !69
  %102 = load i32, ptr %4, align 8, !tbaa !89
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.format_kind_info, ptr %101, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !95
  %106 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 131, ptr noundef nonnull @.str.3, ptr noundef %105) #11
  br label %107

107:                                              ; preds = %60, %96, %76, %100, %39, %33
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  br label %108

108:                                              ; preds = %10, %107
  %109 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !71
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %10, !llvm.loop !96

112:                                              ; preds = %108, %3
  ret void
}

; Function Attrs: optsize
declare i32 @is_attribute_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @decode_format_attr(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #1 !prof !97 !PGOFuncName !98 {
  %4 = getelementptr inbounds %struct.tree_list, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = getelementptr inbounds %struct.tree_list, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !71
  %10 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  %12 = getelementptr inbounds %struct.tree_list, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  %14 = load i64, ptr %5, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 1
  br i1 %16, label %21, label %17, !prof !99

17:                                               ; preds = %3
  %18 = icmp eq i32 %2, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 186, ptr noundef nonnull @.str.7) #11
  br label %20

20:                                               ; preds = %17, %19
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.9) #11
  br label %52

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.tree_identifier, ptr %5, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !71
  %24 = tail call fastcc ptr @convert_format_name_to_system_name(ptr noundef %23) #10
  %25 = tail call fastcc i32 @decode_format_type(ptr noundef %24) #10
  store i32 %25, ptr %1, align 8, !tbaa !89
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %32, !prof !100

27:                                               ; preds = %21
  %28 = icmp eq i32 %2, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 200, ptr noundef nonnull @.str.7) #11
  br label %30

30:                                               ; preds = %27, %29
  %31 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.10, ptr noundef nonnull %5) #11
  br label %52

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.function_format_info, ptr %1, i64 0, i32 1
  %34 = tail call fastcc zeroext i8 @get_constant(ptr noundef %9, ptr noundef nonnull %33, i32 noundef %2) #10, !range !74
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %37, !prof !100

36:                                               ; preds = %32
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str) #11
  br label %52

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.function_format_info, ptr %1, i64 0, i32 2
  %39 = tail call fastcc zeroext i8 @get_constant(ptr noundef %13, ptr noundef nonnull %38, i32 noundef %2) #10, !range !74
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %42, !prof !100

41:                                               ; preds = %37
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.11) #11
  br label %52

42:                                               ; preds = %37
  %43 = load i64, ptr %38, align 8, !tbaa !101
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %52, label %45, !prof !102

45:                                               ; preds = %42
  %46 = load i64, ptr %33, align 8, !tbaa !103
  %47 = icmp ugt i64 %43, %46
  br i1 %47, label %52, label %48, !prof !104

48:                                               ; preds = %45
  %49 = icmp eq i32 %2, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %48
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 221, ptr noundef nonnull @.str.7) #11
  br label %51

51:                                               ; preds = %48, %50
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.12) #11
  br label %52

52:                                               ; preds = %30, %42, %45, %51, %41, %36, %20
  %53 = phi i8 [ 0, %20 ], [ 0, %51 ], [ 0, %41 ], [ 0, %36 ], [ 0, %30 ], [ 1, %45 ], [ 1, %42 ]
  ret i8 %53
}

; Function Attrs: optsize
declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_format_info(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #1 !prof !63 !PGOFuncName !105 {
  %3 = alloca %struct.format_check_context, align 8
  %4 = alloca %struct.format_check_results, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #9
  %5 = icmp eq ptr %1, null
  br i1 %5, label %130, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.function_format_info, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !103
  br label %9

9:                                                ; preds = %6, %13
  %10 = phi ptr [ %1, %6 ], [ %15, %13 ]
  %11 = phi i64 [ 1, %6 ], [ %16, %13 ]
  %12 = icmp eq i64 %11, %8
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !71
  %16 = add i64 %11, 1
  %17 = icmp eq ptr %15, null
  br i1 %17, label %130, label %9

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.tree_list, ptr %10, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !71
  %21 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !71
  %23 = icmp eq ptr %20, null
  br i1 %23, label %130, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.format_check_results, ptr %4, i64 0, i32 1
  %26 = getelementptr inbounds %struct.format_check_results, ptr %4, i64 0, i32 2
  %27 = getelementptr inbounds %struct.format_check_results, ptr %4, i64 0, i32 3
  %28 = getelementptr inbounds %struct.format_check_results, ptr %4, i64 0, i32 4
  %29 = getelementptr inbounds %struct.format_check_results, ptr %4, i64 0, i32 5
  %30 = getelementptr inbounds %struct.format_check_results, ptr %4, i64 0, i32 6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  store ptr %4, ptr %3, align 8, !tbaa !106
  %31 = getelementptr inbounds %struct.format_check_context, ptr %3, i64 0, i32 1
  store ptr %0, ptr %31, align 8, !tbaa !108
  %32 = getelementptr inbounds %struct.format_check_context, ptr %3, i64 0, i32 2
  store ptr %22, ptr %32, align 8, !tbaa !109
  call void @check_function_arguments_recurse(ptr noundef nonnull @check_format_arg, ptr noundef nonnull %3, ptr noundef nonnull %20, i64 noundef %8) #11
  %33 = load i32, ptr %4, align 4, !tbaa !110
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %78

35:                                               ; preds = %24
  %36 = load ptr, ptr @format_types, align 8, !tbaa !69
  %37 = load i32, ptr %0, align 8, !tbaa !89
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.format_kind_info, ptr %36, i64 %38, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !91
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 94, ptr noundef nonnull @.str.22) #11
  br label %78

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.function_format_info, ptr %0, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !101
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %78, label %49

49:                                               ; preds = %45
  %50 = add i64 %8, 1
  %51 = icmp uge i64 %50, %47
  %52 = icmp eq ptr %22, null
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %63, label %54

54:                                               ; preds = %49, %54
  %55 = phi i64 [ %59, %54 ], [ %50, %49 ]
  %56 = phi ptr [ %58, %54 ], [ %22, %49 ]
  %57 = getelementptr inbounds %struct.tree_common, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !71
  %59 = add nuw i64 %55, 1
  %60 = icmp uge i64 %59, %47
  %61 = icmp eq ptr %58, null
  %62 = select i1 %60, i1 true, i1 %61
  br i1 %62, label %63, label %54, !llvm.loop !112

63:                                               ; preds = %54, %49
  %64 = phi i1 [ %52, %49 ], [ %61, %54 ]
  %65 = load i32, ptr @warn_format_security, align 4
  %66 = icmp ne i32 %65, 0
  %67 = select i1 %64, i1 %66, i1 false
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 95, ptr noundef nonnull @.str.23) #11
  br label %78

70:                                               ; preds = %63
  %71 = load i32, ptr @warn_format_nonliteral, align 4
  %72 = icmp ne i32 %71, 0
  %73 = select i1 %64, i1 %72, i1 false
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 94, ptr noundef nonnull @.str.23) #11
  br label %78

76:                                               ; preds = %70
  %77 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 94, ptr noundef nonnull @.str.24) #11
  br label %78

78:                                               ; preds = %43, %68, %76, %74, %45, %24
  %79 = load i32, ptr %25, align 4, !tbaa !113
  %80 = icmp sgt i32 %79, 0
  %81 = load i32, ptr %4, align 4
  %82 = icmp eq i32 %81, 0
  %83 = select i1 %80, i1 %82, i1 false
  %84 = load i32, ptr %30, align 4
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %83, i1 %85, i1 false
  br i1 %86, label %87, label %91

87:                                               ; preds = %78
  %88 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 93, ptr noundef nonnull @.str.25) #11
  %89 = load i32, ptr %4, align 4
  %90 = load i32, ptr %30, align 4
  br label %91

91:                                               ; preds = %87, %78
  %92 = phi i32 [ %90, %87 ], [ %84, %78 ]
  %93 = phi i32 [ %89, %87 ], [ %81, %78 ]
  %94 = load i32, ptr %26, align 4, !tbaa !114
  %95 = icmp sgt i32 %94, 0
  %96 = icmp eq i32 %93, 0
  %97 = select i1 %95, i1 %96, i1 false
  %98 = icmp eq i32 %92, 0
  %99 = select i1 %97, i1 %98, i1 false
  br i1 %99, label %100, label %104

100:                                              ; preds = %91
  %101 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 93, ptr noundef nonnull @.str.26) #11
  %102 = load i32, ptr %4, align 4
  %103 = load i32, ptr %30, align 4
  br label %104

104:                                              ; preds = %100, %91
  %105 = phi i32 [ %103, %100 ], [ %92, %91 ]
  %106 = phi i32 [ %102, %100 ], [ %93, %91 ]
  %107 = load i32, ptr %28, align 4, !tbaa !115
  %108 = icmp sgt i32 %107, 0
  %109 = icmp eq i32 %106, 0
  %110 = select i1 %108, i1 %109, i1 false
  %111 = icmp eq i32 %105, 0
  %112 = select i1 %110, i1 %111, i1 false
  br i1 %112, label %113, label %120

113:                                              ; preds = %104
  %114 = load ptr, ptr @format_types, align 8, !tbaa !69
  %115 = load i32, ptr %0, align 8, !tbaa !89
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.format_kind_info, ptr %114, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !95
  %119 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 97, ptr noundef nonnull @.str.27, ptr noundef %118) #11
  br label %120

120:                                              ; preds = %113, %104
  %121 = load i32, ptr %27, align 4, !tbaa !116
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.28) #11
  br label %125

125:                                              ; preds = %123, %120
  %126 = load i32, ptr %29, align 4, !tbaa !117
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.29) #11
  br label %130

130:                                              ; preds = %13, %2, %125, %128, %18
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @decode_format_type(ptr noundef readonly %0) unnamed_addr #4 !prof !97 !PGOFuncName !118 {
  %2 = tail call fastcc ptr @convert_format_name_to_system_name(ptr noundef %0) #10
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #10
  %4 = trunc i64 %3 to i32
  %5 = load ptr, ptr @format_types, align 8, !tbaa !69
  br label %6

6:                                                ; preds = %1, %43
  %7 = phi i64 [ 0, %1 ], [ %44, %43 ]
  %8 = getelementptr inbounds %struct.format_kind_info, ptr %5, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !95
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %9) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %48, label %12, !prof !119

12:                                               ; preds = %6
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #10
  %14 = trunc i64 %13 to i32
  %15 = add nsw i32 %14, 4
  %16 = icmp eq i32 %15, %4
  br i1 %16, label %17, label %43, !prof !120

17:                                               ; preds = %12
  %18 = load i8, ptr %2, align 1, !tbaa !71
  %19 = icmp eq i8 %18, 95
  br i1 %19, label %20, label %43, !prof !121

20:                                               ; preds = %17
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !71
  %23 = icmp eq i8 %22, 95
  br i1 %23, label %24, label %43, !prof !122

24:                                               ; preds = %20
  %25 = shl i64 %3, 32
  %26 = add i64 %25, -4294967296
  %27 = ashr exact i64 %26, 32
  %28 = getelementptr inbounds i8, ptr %2, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !71
  %30 = icmp eq i8 %29, 95
  br i1 %30, label %31, label %43, !prof !122

31:                                               ; preds = %24
  %32 = add i64 %25, -8589934592
  %33 = ashr exact i64 %32, 32
  %34 = getelementptr inbounds i8, ptr %2, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !71
  %36 = icmp eq i8 %35, 95
  br i1 %36, label %37, label %43, !prof !122

37:                                               ; preds = %31
  %38 = getelementptr inbounds i8, ptr %2, i64 2
  %39 = shl i64 %13, 32
  %40 = ashr exact i64 %39, 32
  %41 = tail call i32 @strncmp(ptr noundef nonnull %38, ptr noundef %9, i64 noundef %40) #10
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43, !prof !122

43:                                               ; preds = %37, %31, %24, %20, %17, %12
  %44 = add nuw nsw i64 %7, 1
  %45 = icmp eq i64 %44, 10
  br i1 %45, label %50, label %6, !prof !123, !llvm.loop !124

46:                                               ; preds = %37
  %47 = trunc i64 %7 to i32
  br label %50

48:                                               ; preds = %6
  %49 = trunc i64 %7 to i32
  br label %50

50:                                               ; preds = %43, %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ], [ -1, %43 ]
  ret i32 %51
}

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @handle_format_attribute(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #1 !prof !97 {
  %6 = alloca %struct.function_format_info, align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %8 = call fastcc zeroext i8 @decode_format_attr(ptr noundef %2, ptr noundef nonnull %6, i32 noundef 0) #10, !range !74
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11, !prof !100

10:                                               ; preds = %5
  store i8 1, ptr %4, align 1, !tbaa !71
  br label %66

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !71
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19, !prof !100

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.function_format_info, ptr %6, i64 0, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = icmp ne i64 %17, 0
  br label %42

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.function_format_info, ptr %6, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !103
  %22 = tail call fastcc zeroext i8 @check_format_string(ptr noundef nonnull %13, i64 noundef %21, i32 noundef %3, ptr noundef %4) #10, !range !74
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %66, label %24, !prof !100

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.function_format_info, ptr %6, i64 0, i32 2
  %26 = load i64, ptr %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %42, label %28, !prof !102

28:                                               ; preds = %24, %28
  %29 = phi i64 [ %31, %28 ], [ 1, %24 ]
  %30 = phi ptr [ %33, %28 ], [ %13, %24 ]
  %31 = add i64 %29, 1
  %32 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !71
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %28, !prof !125, !llvm.loop !126

35:                                               ; preds = %28
  %36 = icmp eq i64 %31, %26
  br i1 %36, label %42, label %37, !prof !104

37:                                               ; preds = %35
  %38 = and i32 %3, 16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.4) #11
  br label %41

41:                                               ; preds = %40, %37
  store i8 1, ptr %4, align 1, !tbaa !71
  br label %66

42:                                               ; preds = %15, %35, %24
  %43 = phi i1 [ %18, %15 ], [ true, %35 ], [ false, %24 ]
  %44 = load ptr, ptr @format_types, align 8, !tbaa !69
  %45 = load i32, ptr %6, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.format_kind_info, ptr %44, i64 %46, i32 7
  %48 = load i32, ptr %47, align 8, !tbaa !91
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i1 %43, i1 false
  br i1 %51, label %52, label %53, !prof !127

52:                                               ; preds = %42
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.5) #11
  store i8 1, ptr %4, align 1, !tbaa !71
  br label %66

53:                                               ; preds = %42
  %54 = add i32 %45, -1
  %55 = icmp ult i32 %54, 6
  br i1 %55, label %56, label %66, !prof !128

56:                                               ; preds = %53
  %57 = load ptr, ptr @dynamic_format_types, align 8, !tbaa !69
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %61, !prof !122

59:                                               ; preds = %56
  %60 = tail call ptr @xmemdup(ptr noundef nonnull @format_types_orig, i64 noundef 1040, i64 noundef 1040) #11
  store ptr %60, ptr @dynamic_format_types, align 8, !tbaa !69
  store ptr %60, ptr @format_types, align 8, !tbaa !69
  br label %61

61:                                               ; preds = %59, %56
  switch i32 %45, label %65 [
    i32 1, label %62
    i32 6, label %63
    i32 5, label %64
    i32 4, label %64
    i32 3, label %64
    i32 2, label %64
  ], !prof !129

62:                                               ; preds = %61
  tail call fastcc void @init_dynamic_asm_fprintf_info() #10
  br label %66

63:                                               ; preds = %61
  tail call fastcc void @init_dynamic_gfc_info() #10
  br label %66

64:                                               ; preds = %61, %61, %61, %61
  tail call fastcc void @init_dynamic_diag_info() #10
  br label %66

65:                                               ; preds = %61
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2873, ptr noundef nonnull @.str.7) #11
  br label %66

66:                                               ; preds = %41, %53, %63, %65, %64, %62, %19, %52, %10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  ret ptr null
}

; Function Attrs: optsize
declare ptr @xmemdup(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_dynamic_asm_fprintf_info() unnamed_addr #1 !prof !130 !PGOFuncName !131 {
  %1 = load ptr, ptr @init_dynamic_asm_fprintf_info.hwi, align 8, !tbaa !69
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %48, !prof !122

3:                                                ; preds = %0
  %4 = tail call ptr @maybe_get_identifier(ptr noundef nonnull @.str.261) #11
  store ptr %4, ptr @init_dynamic_asm_fprintf_info.hwi, align 8, !tbaa !69
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !132

6:                                                ; preds = %3
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.262) #11
  br label %48

7:                                                ; preds = %3
  %8 = tail call ptr @identifier_global_value(ptr noundef nonnull %4) #11
  store ptr %8, ptr @init_dynamic_asm_fprintf_info.hwi, align 8, !tbaa !69
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10, !prof !132

10:                                               ; preds = %7
  %11 = load i64, ptr %8, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 35
  br i1 %13, label %15, label %14, !prof !122

14:                                               ; preds = %10, %7
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.262) #11
  br label %48

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.tree_decl_non_common, ptr %8, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !71
  store ptr %17, ptr @init_dynamic_asm_fprintf_info.hwi, align 8, !tbaa !69
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21, !prof !132

19:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2425, ptr noundef nonnull @.str.7) #11
  %20 = load ptr, ptr @init_dynamic_asm_fprintf_info.hwi, align 8, !tbaa !69
  br label %21

21:                                               ; preds = %15, %19
  %22 = phi ptr [ %17, %15 ], [ %20, %19 ]
  %23 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !69
  %24 = icmp eq ptr %22, %23
  %25 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8
  %26 = icmp eq ptr %22, %25
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %29, label %28, !prof !133

28:                                               ; preds = %21
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.263) #11
  br label %48

29:                                               ; preds = %21
  %30 = tail call ptr @xmemdup(ptr noundef nonnull @asm_fprintf_length_specs, i64 noundef 120, i64 noundef 120) #11
  %31 = tail call fastcc i32 @find_length_info_modifier_index(ptr noundef %30) #10
  %32 = load ptr, ptr @init_dynamic_asm_fprintf_info.hwi, align 8, !tbaa !69
  %33 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !69
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %35, label %38, !prof !122

35:                                               ; preds = %29
  %36 = zext i32 %31 to i64
  %37 = getelementptr inbounds %struct.format_length_info, ptr %30, i64 %36, i32 1
  store i32 3, ptr %37, align 8, !tbaa !134
  br label %45

38:                                               ; preds = %29
  %39 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8, !tbaa !69
  %40 = icmp eq ptr %32, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = zext i32 %31 to i64
  %43 = getelementptr inbounds %struct.format_length_info, ptr %30, i64 %42, i32 1
  store i32 4, ptr %43, align 8, !tbaa !134
  br label %45

44:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2446, ptr noundef nonnull @.str.7) #11
  br label %45

45:                                               ; preds = %41, %44, %35
  %46 = load ptr, ptr @dynamic_format_types, align 8, !tbaa !69
  %47 = getelementptr inbounds %struct.format_kind_info, ptr %46, i64 1, i32 1
  store ptr %30, ptr %47, align 8, !tbaa !136
  br label %48

48:                                               ; preds = %6, %14, %28, %45, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_dynamic_gfc_info() unnamed_addr #1 !prof !63 !PGOFuncName !137 {
  %1 = load ptr, ptr @init_dynamic_gfc_info.locus, align 8, !tbaa !69
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %40

3:                                                ; preds = %0
  %4 = tail call ptr @maybe_get_identifier(ptr noundef nonnull @.str.264) #11
  store ptr %4, ptr @init_dynamic_gfc_info.locus, align 8, !tbaa !69
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @identifier_global_value(ptr noundef nonnull %4) #11
  store ptr %7, ptr @init_dynamic_gfc_info.locus, align 8, !tbaa !69
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %6
  %10 = load i64, ptr %7, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 35
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !71
  %16 = load ptr, ptr @global_trees, align 16, !tbaa !69
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %9
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.265) #11
  br label %19

19:                                               ; preds = %13, %18
  %20 = phi ptr [ null, %18 ], [ %15, %13 ]
  store ptr %20, ptr @init_dynamic_gfc_info.locus, align 8, !tbaa !69
  br label %21

21:                                               ; preds = %19, %6, %3
  %22 = phi ptr [ null, %6 ], [ null, %3 ], [ %20, %19 ]
  %23 = load ptr, ptr @init_dynamic_gfc_info.gfc_fci, align 8, !tbaa !69
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = tail call ptr @xmemdup(ptr noundef nonnull @gcc_gfc_char_table, i64 noundef 2296, i64 noundef 2296) #11
  store ptr %26, ptr @init_dynamic_gfc_info.gfc_fci, align 8, !tbaa !69
  %27 = load ptr, ptr @dynamic_format_types, align 8, !tbaa !69
  %28 = getelementptr inbounds %struct.format_kind_info, ptr %27, i64 6, i32 2
  store ptr %26, ptr %28, align 8, !tbaa !138
  %29 = load ptr, ptr @init_dynamic_gfc_info.locus, align 8, !tbaa !69
  br label %30

30:                                               ; preds = %25, %21
  %31 = phi ptr [ %26, %25 ], [ %23, %21 ]
  %32 = phi ptr [ %29, %25 ], [ %22, %21 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = tail call fastcc i32 @find_char_info_specifier_index(ptr noundef %31, i32 noundef 76) #10
  %36 = load ptr, ptr @init_dynamic_gfc_info.gfc_fci, align 8, !tbaa !69
  %37 = zext i32 %35 to i64
  %38 = getelementptr inbounds %struct.format_char_info, ptr %36, i64 %37, i32 3, i64 0, i32 2
  store ptr @init_dynamic_gfc_info.locus, ptr %38, align 8, !tbaa !139
  %39 = getelementptr inbounds %struct.format_char_info, ptr %36, i64 %37, i32 1
  store i32 1, ptr %39, align 8, !tbaa !141
  br label %40

40:                                               ; preds = %30, %34, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_dynamic_diag_info() unnamed_addr #1 !prof !63 !PGOFuncName !143 {
  %1 = load ptr, ptr @init_dynamic_diag_info.loc, align 8, !tbaa !69
  %2 = icmp ne ptr %1, null
  %3 = load ptr, ptr @init_dynamic_diag_info.t, align 8
  %4 = icmp ne ptr %3, null
  %5 = select i1 %2, i1 %4, i1 false
  %6 = load ptr, ptr @init_dynamic_diag_info.hwi, align 8
  %7 = icmp ne ptr %6, null
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %189, label %9

9:                                                ; preds = %0
  %10 = tail call ptr @maybe_get_identifier(ptr noundef nonnull @.str.266) #11
  store ptr %10, ptr @init_dynamic_diag_info.loc, align 8, !tbaa !69
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @identifier_global_value(ptr noundef nonnull %10) #11
  store ptr %13, ptr @init_dynamic_diag_info.loc, align 8, !tbaa !69
  %14 = icmp eq ptr %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %12
  %16 = load i64, ptr %13, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 35
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.267) #11
  br label %23

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !71
  br label %23

23:                                               ; preds = %19, %20
  %24 = phi ptr [ %22, %20 ], [ null, %19 ]
  store ptr %24, ptr @init_dynamic_diag_info.loc, align 8, !tbaa !69
  br label %25

25:                                               ; preds = %23, %12, %9
  %26 = tail call ptr @maybe_get_identifier(ptr noundef nonnull @.str.268) #11
  store ptr %26, ptr @init_dynamic_diag_info.t, align 8, !tbaa !69
  %27 = icmp eq ptr %26, null
  br i1 %27, label %48, label %28

28:                                               ; preds = %25
  %29 = tail call ptr @identifier_global_value(ptr noundef nonnull %26) #11
  store ptr %29, ptr @init_dynamic_diag_info.t, align 8, !tbaa !69
  %30 = icmp eq ptr %29, null
  br i1 %30, label %48, label %31

31:                                               ; preds = %28
  %32 = load i64, ptr %29, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 35
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.269) #11
  br label %46

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !71
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 10
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.270) #11
  br label %46

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !71
  br label %46

46:                                               ; preds = %35, %43, %42
  %47 = phi ptr [ null, %42 ], [ %45, %43 ], [ null, %35 ]
  store ptr %47, ptr @init_dynamic_diag_info.t, align 8, !tbaa !69
  br label %48

48:                                               ; preds = %46, %28, %25
  %49 = tail call ptr @maybe_get_identifier(ptr noundef nonnull @.str.261) #11
  store ptr %49, ptr @init_dynamic_diag_info.hwi, align 8, !tbaa !69
  %50 = icmp eq ptr %49, null
  br i1 %50, label %73, label %51

51:                                               ; preds = %48
  %52 = tail call ptr @identifier_global_value(ptr noundef nonnull %49) #11
  store ptr %52, ptr @init_dynamic_diag_info.hwi, align 8, !tbaa !69
  %53 = icmp eq ptr %52, null
  br i1 %53, label %73, label %54

54:                                               ; preds = %51
  %55 = load i64, ptr %52, align 8
  %56 = and i64 %55, 65535
  %57 = icmp eq i64 %56, 35
  br i1 %57, label %58, label %71

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.tree_decl_non_common, ptr %52, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !71
  store ptr %60, ptr @init_dynamic_diag_info.hwi, align 8, !tbaa !69
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2578, ptr noundef nonnull @.str.7) #11
  %63 = load ptr, ptr @init_dynamic_diag_info.hwi, align 8, !tbaa !69
  br label %64

64:                                               ; preds = %58, %62
  %65 = phi ptr [ %60, %58 ], [ %63, %62 ]
  %66 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !69
  %67 = icmp eq ptr %65, %66
  %68 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8
  %69 = icmp eq ptr %65, %68
  %70 = select i1 %67, i1 true, i1 %69
  br i1 %70, label %73, label %71

71:                                               ; preds = %64, %54
  %72 = phi ptr [ @.str.262, %54 ], [ @.str.263, %64 ]
  tail call void (ptr, ...) @error(ptr noundef nonnull %72) #11
  store ptr null, ptr @init_dynamic_diag_info.hwi, align 8, !tbaa !69
  br label %73

73:                                               ; preds = %71, %51, %64, %48
  %74 = phi ptr [ null, %51 ], [ %65, %64 ], [ null, %48 ], [ null, %71 ]
  %75 = load ptr, ptr @init_dynamic_diag_info.diag_ls, align 8, !tbaa !69
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = tail call ptr @xmemdup(ptr noundef nonnull @gcc_diag_length_specs, i64 noundef 120, i64 noundef 120) #11
  store ptr %78, ptr @init_dynamic_diag_info.diag_ls, align 8, !tbaa !69
  %79 = load ptr, ptr @dynamic_format_types, align 8, !tbaa !69
  %80 = getelementptr inbounds %struct.format_kind_info, ptr %79, i64 5, i32 1
  store ptr %78, ptr %80, align 8, !tbaa !136
  %81 = getelementptr inbounds %struct.format_kind_info, ptr %79, i64 4, i32 1
  store ptr %78, ptr %81, align 8, !tbaa !136
  %82 = getelementptr inbounds %struct.format_kind_info, ptr %79, i64 3, i32 1
  store ptr %78, ptr %82, align 8, !tbaa !136
  %83 = getelementptr inbounds %struct.format_kind_info, ptr %79, i64 2, i32 1
  store ptr %78, ptr %83, align 8, !tbaa !136
  %84 = load ptr, ptr @init_dynamic_diag_info.hwi, align 8, !tbaa !69
  br label %85

85:                                               ; preds = %77, %73
  %86 = phi ptr [ %78, %77 ], [ %75, %73 ]
  %87 = phi ptr [ %84, %77 ], [ %74, %73 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %106, label %89

89:                                               ; preds = %85
  %90 = tail call fastcc i32 @find_length_info_modifier_index(ptr noundef %86) #10
  %91 = load ptr, ptr @init_dynamic_diag_info.hwi, align 8, !tbaa !69
  %92 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !69
  %93 = icmp eq ptr %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load ptr, ptr @init_dynamic_diag_info.diag_ls, align 8, !tbaa !69
  %96 = zext i32 %90 to i64
  %97 = getelementptr inbounds %struct.format_length_info, ptr %95, i64 %96, i32 1
  store i32 3, ptr %97, align 8, !tbaa !134
  br label %106

98:                                               ; preds = %89
  %99 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8, !tbaa !69
  %100 = icmp eq ptr %91, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load ptr, ptr @init_dynamic_diag_info.diag_ls, align 8, !tbaa !69
  %103 = zext i32 %90 to i64
  %104 = getelementptr inbounds %struct.format_length_info, ptr %102, i64 %103, i32 1
  store i32 4, ptr %104, align 8, !tbaa !134
  br label %106

105:                                              ; preds = %98
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2611, ptr noundef nonnull @.str.7) #11
  br label %106

106:                                              ; preds = %94, %105, %101, %85
  %107 = load ptr, ptr @init_dynamic_diag_info.diag_fci, align 8, !tbaa !69
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = tail call ptr @xmemdup(ptr noundef nonnull @gcc_diag_char_table, i64 noundef 3280, i64 noundef 3280) #11
  store ptr %110, ptr @init_dynamic_diag_info.diag_fci, align 8, !tbaa !69
  %111 = load ptr, ptr @dynamic_format_types, align 8, !tbaa !69
  %112 = getelementptr inbounds %struct.format_kind_info, ptr %111, i64 2, i32 2
  store ptr %110, ptr %112, align 8, !tbaa !138
  br label %113

113:                                              ; preds = %109, %106
  %114 = phi ptr [ %110, %109 ], [ %107, %106 ]
  %115 = load ptr, ptr @init_dynamic_diag_info.t, align 8, !tbaa !69
  %116 = icmp eq ptr %115, null
  br i1 %116, label %123, label %117

117:                                              ; preds = %113
  %118 = tail call fastcc i32 @find_char_info_specifier_index(ptr noundef %114, i32 noundef 75) #10
  %119 = load ptr, ptr @init_dynamic_diag_info.diag_fci, align 8, !tbaa !69
  %120 = zext i32 %118 to i64
  %121 = getelementptr inbounds %struct.format_char_info, ptr %119, i64 %120, i32 3, i64 0, i32 2
  store ptr @init_dynamic_diag_info.t, ptr %121, align 8, !tbaa !139
  %122 = getelementptr inbounds %struct.format_char_info, ptr %119, i64 %120, i32 1
  store i32 1, ptr %122, align 8, !tbaa !141
  br label %123

123:                                              ; preds = %117, %113
  %124 = load ptr, ptr @init_dynamic_diag_info.tdiag_fci, align 8, !tbaa !69
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = tail call ptr @xmemdup(ptr noundef nonnull @gcc_tdiag_char_table, i64 noundef 3280, i64 noundef 3280) #11
  store ptr %127, ptr @init_dynamic_diag_info.tdiag_fci, align 8, !tbaa !69
  %128 = load ptr, ptr @dynamic_format_types, align 8, !tbaa !69
  %129 = getelementptr inbounds %struct.format_kind_info, ptr %128, i64 3, i32 2
  store ptr %127, ptr %129, align 8, !tbaa !138
  br label %130

130:                                              ; preds = %126, %123
  %131 = phi ptr [ %127, %126 ], [ %124, %123 ]
  %132 = load ptr, ptr @init_dynamic_diag_info.t, align 8, !tbaa !69
  %133 = icmp eq ptr %132, null
  br i1 %133, label %145, label %134

134:                                              ; preds = %130
  %135 = tail call fastcc i32 @find_char_info_specifier_index(ptr noundef %131, i32 noundef 68) #10
  %136 = load ptr, ptr @init_dynamic_diag_info.tdiag_fci, align 8, !tbaa !69
  %137 = zext i32 %135 to i64
  %138 = getelementptr inbounds %struct.format_char_info, ptr %136, i64 %137, i32 3, i64 0, i32 2
  store ptr @init_dynamic_diag_info.t, ptr %138, align 8, !tbaa !139
  %139 = getelementptr inbounds %struct.format_char_info, ptr %136, i64 %137, i32 1
  store i32 1, ptr %139, align 8, !tbaa !141
  %140 = tail call fastcc i32 @find_char_info_specifier_index(ptr noundef %136, i32 noundef 75) #10
  %141 = load ptr, ptr @init_dynamic_diag_info.tdiag_fci, align 8, !tbaa !69
  %142 = zext i32 %140 to i64
  %143 = getelementptr inbounds %struct.format_char_info, ptr %141, i64 %142, i32 3, i64 0, i32 2
  store ptr @init_dynamic_diag_info.t, ptr %143, align 8, !tbaa !139
  %144 = getelementptr inbounds %struct.format_char_info, ptr %141, i64 %142, i32 1
  store i32 1, ptr %144, align 8, !tbaa !141
  br label %145

145:                                              ; preds = %134, %130
  %146 = load ptr, ptr @init_dynamic_diag_info.cdiag_fci, align 8, !tbaa !69
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = tail call ptr @xmemdup(ptr noundef nonnull @gcc_cdiag_char_table, i64 noundef 3280, i64 noundef 3280) #11
  store ptr %149, ptr @init_dynamic_diag_info.cdiag_fci, align 8, !tbaa !69
  %150 = load ptr, ptr @dynamic_format_types, align 8, !tbaa !69
  %151 = getelementptr inbounds %struct.format_kind_info, ptr %150, i64 4, i32 2
  store ptr %149, ptr %151, align 8, !tbaa !138
  br label %152

152:                                              ; preds = %148, %145
  %153 = phi ptr [ %149, %148 ], [ %146, %145 ]
  %154 = load ptr, ptr @init_dynamic_diag_info.t, align 8, !tbaa !69
  %155 = icmp eq ptr %154, null
  br i1 %155, label %167, label %156

156:                                              ; preds = %152
  %157 = tail call fastcc i32 @find_char_info_specifier_index(ptr noundef %153, i32 noundef 68) #10
  %158 = load ptr, ptr @init_dynamic_diag_info.cdiag_fci, align 8, !tbaa !69
  %159 = zext i32 %157 to i64
  %160 = getelementptr inbounds %struct.format_char_info, ptr %158, i64 %159, i32 3, i64 0, i32 2
  store ptr @init_dynamic_diag_info.t, ptr %160, align 8, !tbaa !139
  %161 = getelementptr inbounds %struct.format_char_info, ptr %158, i64 %159, i32 1
  store i32 1, ptr %161, align 8, !tbaa !141
  %162 = tail call fastcc i32 @find_char_info_specifier_index(ptr noundef %158, i32 noundef 75) #10
  %163 = load ptr, ptr @init_dynamic_diag_info.cdiag_fci, align 8, !tbaa !69
  %164 = zext i32 %162 to i64
  %165 = getelementptr inbounds %struct.format_char_info, ptr %163, i64 %164, i32 3, i64 0, i32 2
  store ptr @init_dynamic_diag_info.t, ptr %165, align 8, !tbaa !139
  %166 = getelementptr inbounds %struct.format_char_info, ptr %163, i64 %164, i32 1
  store i32 1, ptr %166, align 8, !tbaa !141
  br label %167

167:                                              ; preds = %156, %152
  %168 = load ptr, ptr @init_dynamic_diag_info.cxxdiag_fci, align 8, !tbaa !69
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %174

170:                                              ; preds = %167
  %171 = tail call ptr @xmemdup(ptr noundef nonnull @gcc_cxxdiag_char_table, i64 noundef 3608, i64 noundef 3608) #11
  store ptr %171, ptr @init_dynamic_diag_info.cxxdiag_fci, align 8, !tbaa !69
  %172 = load ptr, ptr @dynamic_format_types, align 8, !tbaa !69
  %173 = getelementptr inbounds %struct.format_kind_info, ptr %172, i64 5, i32 2
  store ptr %171, ptr %173, align 8, !tbaa !138
  br label %174

174:                                              ; preds = %170, %167
  %175 = phi ptr [ %171, %170 ], [ %168, %167 ]
  %176 = load ptr, ptr @init_dynamic_diag_info.t, align 8, !tbaa !69
  %177 = icmp eq ptr %176, null
  br i1 %177, label %189, label %178

178:                                              ; preds = %174
  %179 = tail call fastcc i32 @find_char_info_specifier_index(ptr noundef %175, i32 noundef 68) #10
  %180 = load ptr, ptr @init_dynamic_diag_info.cxxdiag_fci, align 8, !tbaa !69
  %181 = zext i32 %179 to i64
  %182 = getelementptr inbounds %struct.format_char_info, ptr %180, i64 %181, i32 3, i64 0, i32 2
  store ptr @init_dynamic_diag_info.t, ptr %182, align 8, !tbaa !139
  %183 = getelementptr inbounds %struct.format_char_info, ptr %180, i64 %181, i32 1
  store i32 1, ptr %183, align 8, !tbaa !141
  %184 = tail call fastcc i32 @find_char_info_specifier_index(ptr noundef %180, i32 noundef 75) #10
  %185 = load ptr, ptr @init_dynamic_diag_info.cxxdiag_fci, align 8, !tbaa !69
  %186 = zext i32 %184 to i64
  %187 = getelementptr inbounds %struct.format_char_info, ptr %185, i64 %186, i32 3, i64 0, i32 2
  store ptr @init_dynamic_diag_info.t, ptr %187, align 8, !tbaa !139
  %188 = getelementptr inbounds %struct.format_char_info, ptr %185, i64 %186, i32 1
  store i32 1, ptr %188, align 8, !tbaa !141
  br label %189

189:                                              ; preds = %174, %178, %0
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @convert_format_name_to_system_name(ptr noundef readonly %0) unnamed_addr #4 !prof !144 !PGOFuncName !145 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %24, label %3, !prof !146

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1, !tbaa !71
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %24, label %6, !prof !146

6:                                                ; preds = %3
  %7 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.13, i64 noundef 4) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %14, !prof !146

9:                                                ; preds = %19
  %10 = add nuw nsw i64 %15, 1
  %11 = getelementptr inbounds [5 x %struct.target_ovr_attr], ptr @gnu_target_overrides_format_attributes, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 16, !tbaa !147
  %13 = icmp eq i64 %10, 4
  br i1 %13, label %24, label %14, !prof !149, !llvm.loop !150

14:                                               ; preds = %6, %9
  %15 = phi i64 [ %10, %9 ], [ 0, %6 ]
  %16 = phi ptr [ %12, %9 ], [ @.str.14, %6 ]
  %17 = tail call fastcc zeroext i8 @cmp_attribs(ptr noundef nonnull %16, ptr noundef nonnull %0) #10, !range !74
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %24, !prof !151

19:                                               ; preds = %14
  %20 = getelementptr inbounds [5 x %struct.target_ovr_attr], ptr @gnu_target_overrides_format_attributes, i64 0, i64 %15, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !152
  %22 = tail call fastcc zeroext i8 @cmp_attribs(ptr noundef %21, ptr noundef nonnull %0) #10, !range !74
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %9, label %24, !prof !153

24:                                               ; preds = %19, %9, %14, %1, %3, %6
  %25 = phi ptr [ %0, %6 ], [ %0, %3 ], [ null, %1 ], [ %16, %19 ], [ %0, %9 ], [ %0, %14 ]
  ret ptr %25
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @cmp_attribs(ptr noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !prof !154 !PGOFuncName !155 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #10
  %4 = trunc i64 %3 to i32
  %5 = icmp eq ptr %0, null
  br i1 %5, label %9, label %6, !prof !156

6:                                                ; preds = %2
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  %8 = trunc i64 %7 to i32
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i32 [ %8, %6 ], [ 0, %2 ]
  %11 = icmp sgt i32 %4, 4
  br i1 %11, label %12, label %34, !prof !157

12:                                               ; preds = %9
  %13 = load i8, ptr %1, align 1, !tbaa !71
  %14 = icmp eq i8 %13, 95
  br i1 %14, label %15, label %34, !prof !158

15:                                               ; preds = %12
  %16 = getelementptr inbounds i8, ptr %1, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !71
  %18 = icmp eq i8 %17, 95
  br i1 %18, label %19, label %34, !prof !159

19:                                               ; preds = %15
  %20 = add i64 %3, 4294967295
  %21 = and i64 %20, 4294967295
  %22 = getelementptr inbounds i8, ptr %1, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !71
  %24 = icmp eq i8 %23, 95
  br i1 %24, label %25, label %34, !prof !159

25:                                               ; preds = %19
  %26 = add i64 %3, 4294967294
  %27 = and i64 %26, 4294967295
  %28 = getelementptr inbounds i8, ptr %1, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !71
  %30 = icmp eq i8 %29, 95
  br i1 %30, label %31, label %34, !prof !159

31:                                               ; preds = %25
  %32 = getelementptr inbounds i8, ptr %1, i64 2
  %33 = add nsw i32 %4, -4
  br label %34

34:                                               ; preds = %31, %25, %19, %15, %12, %9
  %35 = phi ptr [ %32, %31 ], [ %1, %25 ], [ %1, %19 ], [ %1, %15 ], [ %1, %12 ], [ %1, %9 ]
  %36 = phi i32 [ %33, %31 ], [ %4, %25 ], [ %4, %19 ], [ %4, %15 ], [ %4, %12 ], [ %4, %9 ]
  %37 = icmp eq i32 %36, %10
  br i1 %37, label %38, label %43, !prof !160

38:                                               ; preds = %34
  %39 = sext i32 %10 to i64
  %40 = tail call i32 @strncmp(ptr noundef %0, ptr noundef %35, i64 noundef %39) #10
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i8
  br label %43

43:                                               ; preds = %38, %34
  %44 = phi i8 [ 0, %34 ], [ %42, %38 ]
  ret i8 %44
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @check_function_arguments_recurse(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @check_format_arg(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2) #1 !prof !63 !PGOFuncName !161 {
  %4 = load ptr, ptr %0, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.format_check_context, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !108
  %7 = getelementptr inbounds %struct.format_check_context, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !109
  %9 = tail call i32 @integer_zerop(ptr noundef %1) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.function_format_info, ptr %6, i64 0, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !101
  %14 = add i64 %2, 1
  %15 = icmp ult i64 %14, %13
  br i1 %15, label %16, label %25

16:                                               ; preds = %11, %20
  %17 = phi i64 [ %23, %20 ], [ %14, %11 ]
  %18 = phi ptr [ %22, %20 ], [ %8, %11 ]
  %19 = icmp eq ptr %18, null
  br i1 %19, label %216, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !71
  %23 = add nuw i64 %17, 1
  %24 = icmp eq i64 %23, %13
  br i1 %24, label %25, label %16, !llvm.loop !162

25:                                               ; preds = %20, %11
  %26 = phi ptr [ %8, %11 ], [ %22, %20 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.format_check_results, ptr %4, i64 0, i32 6
  %30 = load i32, ptr %29, align 4, !tbaa !163
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %29, align 4, !tbaa !163
  br label %216

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.format_check_results, ptr %4, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !113
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %33, align 4, !tbaa !113
  br label %216

36:                                               ; preds = %3
  %37 = load i64, ptr %1, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 66
  br i1 %39, label %40, label %64

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !71
  %43 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !71
  %45 = tail call ptr @tree_strip_nop_conversions(ptr noundef %42) #11
  %46 = tail call ptr @tree_strip_nop_conversions(ptr noundef %44) #11
  %47 = load i64, ptr %46, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 23
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = tail call i32 @host_integerp(ptr noundef nonnull %46, i32 noundef 0) #11
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %61, label %56

53:                                               ; preds = %40
  %54 = load i32, ptr %4, align 4, !tbaa !110
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %4, align 4, !tbaa !110
  br label %216

56:                                               ; preds = %50
  %57 = tail call i64 @tree_low_cst(ptr noundef nonnull %46, i32 noundef 0) #11
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = load i64, ptr %45, align 8
  br label %64

61:                                               ; preds = %56, %50
  %62 = load i32, ptr %4, align 4, !tbaa !110
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %4, align 4, !tbaa !110
  br label %216

64:                                               ; preds = %59, %36
  %65 = phi i64 [ %37, %36 ], [ %60, %59 ]
  %66 = phi i64 [ 0, %36 ], [ %57, %59 ]
  %67 = phi ptr [ %1, %36 ], [ %45, %59 ]
  %68 = and i64 %65, 65535
  %69 = icmp eq i64 %68, 121
  br i1 %69, label %73, label %70

70:                                               ; preds = %64
  %71 = load i32, ptr %4, align 4, !tbaa !110
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr %4, align 4, !tbaa !110
  br label %216

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.tree_exp, ptr %67, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !71
  %76 = load i64, ptr %75, align 8
  %77 = and i64 %76, 65535
  %78 = icmp eq i64 %77, 45
  br i1 %78, label %79, label %92

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.tree_exp, ptr %75, i64 0, i32 3
  %81 = getelementptr inbounds %struct.tree_exp, ptr %75, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !71
  %83 = tail call i32 @host_integerp(ptr noundef %82, i32 noundef 0) #11
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %79
  %86 = load ptr, ptr %81, align 8, !tbaa !71
  %87 = tail call i64 @tree_low_cst(ptr noundef %86, i32 noundef 0) #11
  %88 = add nsw i64 %87, %66
  %89 = icmp sgt i64 %88, -1
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load ptr, ptr %80, align 8, !tbaa !71
  br label %92

92:                                               ; preds = %90, %85, %79, %73
  %93 = phi i64 [ %88, %90 ], [ %88, %85 ], [ %66, %79 ], [ %66, %73 ]
  %94 = phi ptr [ %91, %90 ], [ %75, %85 ], [ %75, %79 ], [ %75, %73 ]
  %95 = load i64, ptr %94, align 8
  %96 = and i64 %95, 65535
  %97 = icmp eq i64 %96, 32
  br i1 %97, label %98, label %114

98:                                               ; preds = %92
  %99 = getelementptr inbounds %struct.tree_common, ptr %94, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !71
  %101 = load i64, ptr %100, align 8
  %102 = and i64 %101, 65535
  %103 = icmp eq i64 %102, 15
  br i1 %103, label %104, label %114

104:                                              ; preds = %98
  %105 = tail call ptr @decl_constant_value(ptr noundef nonnull %94) #11
  %106 = icmp eq ptr %105, %94
  br i1 %106, label %114, label %107

107:                                              ; preds = %104
  %108 = load i64, ptr %105, align 8
  %109 = and i64 %108, 65535
  %110 = icmp eq i64 %109, 28
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.tree_decl_common, ptr %94, i64 0, i32 4
  %113 = load ptr, ptr %112, align 8, !tbaa !71
  br label %114

114:                                              ; preds = %111, %107, %104, %98, %92
  %115 = phi ptr [ %113, %111 ], [ null, %107 ], [ null, %104 ], [ null, %98 ], [ null, %92 ]
  %116 = phi ptr [ %105, %111 ], [ %94, %107 ], [ %94, %104 ], [ %94, %98 ], [ %94, %92 ]
  %117 = load i64, ptr %116, align 8
  %118 = and i64 %117, 65535
  %119 = icmp eq i64 %118, 28
  br i1 %119, label %123, label %120

120:                                              ; preds = %114
  %121 = load i32, ptr %4, align 4, !tbaa !110
  %122 = add nsw i32 %121, 1
  store i32 %122, ptr %4, align 4, !tbaa !110
  br label %216

123:                                              ; preds = %114
  %124 = getelementptr inbounds %struct.tree_common, ptr %116, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !71
  %126 = getelementptr inbounds %struct.tree_common, ptr %125, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !71
  %128 = getelementptr inbounds %struct.tree_type, ptr %127, i64 0, i32 16
  %129 = load ptr, ptr %128, align 8, !tbaa !71
  %130 = load ptr, ptr @integer_types, align 16, !tbaa !69
  %131 = icmp eq ptr %129, %130
  br i1 %131, label %136, label %132

132:                                              ; preds = %123
  %133 = getelementptr inbounds %struct.format_check_results, ptr %4, i64 0, i32 3
  %134 = load i32, ptr %133, align 4, !tbaa !116
  %135 = add nsw i32 %134, 1
  store i32 %135, ptr %133, align 4, !tbaa !116
  br label %216

136:                                              ; preds = %123
  %137 = getelementptr inbounds %struct.tree_string, ptr %116, i64 0, i32 2
  %138 = getelementptr inbounds %struct.tree_string, ptr %116, i64 0, i32 1
  %139 = load i32, ptr %138, align 8, !tbaa !71
  %140 = icmp eq ptr %115, null
  br i1 %140, label %160, label %141

141:                                              ; preds = %136
  %142 = load i64, ptr %115, align 8
  %143 = and i64 %142, 65535
  %144 = icmp eq i64 %143, 23
  br i1 %144, label %146, label %145

145:                                              ; preds = %141
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1383, ptr noundef nonnull @.str.7) #11
  br label %146

146:                                              ; preds = %141, %145
  %147 = tail call i32 @host_integerp(ptr noundef nonnull %115, i32 noundef 0) #11
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %160, label %149

149:                                              ; preds = %146
  %150 = getelementptr inbounds %struct.tree_int_cst, ptr %115, i64 0, i32 1
  %151 = load i64, ptr %150, align 8, !tbaa !71
  %152 = icmp sgt i64 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %149
  %154 = trunc i64 %151 to i32
  %155 = icmp ult i64 %151, 2147483648
  %156 = sext i32 %139 to i64
  %157 = icmp slt i64 %151, %156
  %158 = select i1 %155, i1 %157, i1 false
  %159 = select i1 %158, i32 %154, i32 %139
  br label %160

160:                                              ; preds = %153, %149, %146, %136
  %161 = phi i32 [ %139, %146 ], [ %139, %136 ], [ %139, %149 ], [ %159, %153 ]
  %162 = icmp eq i64 %93, 0
  br i1 %162, label %173, label %163

163:                                              ; preds = %160
  %164 = sext i32 %161 to i64
  %165 = icmp slt i64 %93, %164
  br i1 %165, label %169, label %166

166:                                              ; preds = %163
  %167 = load i32, ptr %4, align 4, !tbaa !110
  %168 = add nsw i32 %167, 1
  store i32 %168, ptr %4, align 4, !tbaa !110
  br label %216

169:                                              ; preds = %163
  %170 = getelementptr inbounds i8, ptr %137, i64 %93
  %171 = trunc i64 %93 to i32
  %172 = sub i32 %161, %171
  br label %173

173:                                              ; preds = %169, %160
  %174 = phi i32 [ %172, %169 ], [ %161, %160 ]
  %175 = phi ptr [ %170, %169 ], [ %137, %160 ]
  %176 = icmp slt i32 %174, 1
  br i1 %176, label %183, label %177

177:                                              ; preds = %173
  %178 = add nsw i32 %174, -1
  %179 = zext nneg i32 %178 to i64
  %180 = getelementptr inbounds i8, ptr %175, i64 %179
  %181 = load i8, ptr %180, align 1, !tbaa !71
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %187, label %183

183:                                              ; preds = %177, %173
  %184 = getelementptr inbounds %struct.format_check_results, ptr %4, i64 0, i32 5
  %185 = load i32, ptr %184, align 4, !tbaa !117
  %186 = add nsw i32 %185, 1
  store i32 %186, ptr %184, align 4, !tbaa !117
  br label %216

187:                                              ; preds = %177
  %188 = icmp eq i32 %178, 0
  br i1 %188, label %196, label %189

189:                                              ; preds = %187
  %190 = getelementptr inbounds %struct.function_format_info, ptr %6, i64 0, i32 2
  %191 = load i64, ptr %190, align 8, !tbaa !101
  %192 = add i64 %2, 1
  %193 = icmp ult i64 %192, %191
  br i1 %193, label %194, label %209

194:                                              ; preds = %189
  %195 = add i64 %191, -1
  br label %200

196:                                              ; preds = %187
  %197 = getelementptr inbounds %struct.format_check_results, ptr %4, i64 0, i32 4
  %198 = load i32, ptr %197, align 4, !tbaa !115
  %199 = add nsw i32 %198, 1
  store i32 %199, ptr %197, align 4, !tbaa !115
  br label %216

200:                                              ; preds = %194, %204
  %201 = phi i64 [ %207, %204 ], [ %192, %194 ]
  %202 = phi ptr [ %206, %204 ], [ %8, %194 ]
  %203 = icmp eq ptr %202, null
  br i1 %203, label %216, label %204

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.tree_common, ptr %202, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !71
  %207 = add nuw i64 %201, 1
  %208 = icmp eq i64 %207, %191
  br i1 %208, label %209, label %200, !llvm.loop !164

209:                                              ; preds = %204, %189
  %210 = phi ptr [ %8, %189 ], [ %206, %204 ]
  %211 = phi i64 [ %2, %189 ], [ %195, %204 ]
  %212 = getelementptr inbounds %struct.format_check_results, ptr %4, i64 0, i32 6
  %213 = load i32, ptr %212, align 4, !tbaa !163
  %214 = add nsw i32 %213, 1
  store i32 %214, ptr %212, align 4, !tbaa !163
  %215 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.30, i64 noundef 72, i64 noundef 10) #11
  tail call fastcc void @check_format_info_main(ptr noundef %4, ptr noundef nonnull %6, ptr noundef %175, i32 noundef %178, ptr noundef %210, i64 noundef %211, ptr noundef %215) #10
  tail call void @free_alloc_pool(ptr noundef %215) #11
  br label %216

216:                                              ; preds = %16, %200, %53, %61, %28, %32, %209, %196, %183, %166, %132, %120, %70
  ret void
}

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @decl_constant_value(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_format_info_main(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6) unnamed_addr #1 !prof !63 !PGOFuncName !165 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.format_wanted_type, align 8
  %12 = alloca %struct.format_wanted_type, align 8
  %13 = alloca %struct.format_wanted_type, align 8
  %14 = getelementptr inbounds %struct.format_wanted_type, ptr %13, i64 0, i32 6
  %15 = getelementptr inbounds %struct.format_wanted_type, ptr %13, i64 0, i32 5
  %16 = getelementptr inbounds %struct.format_wanted_type, ptr %13, i64 0, i32 2
  %17 = getelementptr inbounds %struct.format_wanted_type, ptr %13, i64 0, i32 4
  %18 = getelementptr inbounds %struct.format_wanted_type, ptr %13, i64 0, i32 3
  %19 = getelementptr inbounds %struct.format_wanted_type, ptr %13, i64 0, i32 1
  %20 = alloca [256 x i8], align 16
  store ptr %4, ptr %9, align 8, !tbaa !69
  %21 = load ptr, ptr @format_types, align 8, !tbaa !69
  %22 = load i32, ptr %1, align 8, !tbaa !89
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23
  %25 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !166
  %27 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !167
  %29 = getelementptr inbounds %struct.function_format_info, ptr %1, i64 0, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !101
  %31 = trunc i64 %30 to i32
  tail call fastcc void @init_dollar_format_checking(i32 noundef %31, ptr noundef %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  store ptr null, ptr %10, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %20) #9
  %32 = load i8, ptr %2, align 1, !tbaa !71
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %7
  %35 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 7
  %36 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 3
  %37 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 8
  %38 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 14
  %39 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 9
  %40 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 10
  %41 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 13
  %42 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 1
  %43 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 4
  br label %75

44:                                               ; preds = %1079, %7
  %45 = phi i32 [ -1, %7 ], [ %1080, %1079 ]
  %46 = phi ptr [ %2, %7 ], [ %1082, %1079 ]
  %47 = ptrtoint ptr %46 to i64
  %48 = ptrtoint ptr %2 to i64
  %49 = sub i64 %47, %48
  %50 = zext nneg i32 %3 to i64
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %54, label %52

52:                                               ; preds = %44
  %53 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 92, ptr noundef nonnull @.str.31) #11
  br label %54

54:                                               ; preds = %52, %44
  %55 = load i64, ptr %29, align 8, !tbaa !101
  %56 = icmp ne i64 %55, 0
  %57 = load ptr, ptr %9, align 8
  %58 = icmp ne ptr %57, null
  %59 = select i1 %56, i1 %58, i1 false
  %60 = icmp slt i32 %45, 1
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %62, label %69

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.format_check_results, ptr %0, i64 0, i32 6
  %64 = load i32, ptr %63, align 4, !tbaa !163
  %65 = add nsw i32 %64, -1
  store i32 %65, ptr %63, align 4, !tbaa !163
  %66 = getelementptr inbounds %struct.format_check_results, ptr %0, i64 0, i32 1
  %67 = load i32, ptr %66, align 4, !tbaa !113
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr %66, align 4, !tbaa !113
  br label %1085

69:                                               ; preds = %54
  %70 = icmp sgt i32 %45, 0
  br i1 %70, label %71, label %1085

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 7
  %73 = load i32, ptr %72, align 8, !tbaa !91
  %74 = and i32 %73, 128
  call fastcc void @finish_dollar_format_checking(ptr noundef %0, i32 noundef %74) #10
  br label %1085

75:                                               ; preds = %34, %1079
  %76 = phi i8 [ %32, %34 ], [ %1083, %1079 ]
  %77 = phi ptr [ %2, %34 ], [ %1082, %1079 ]
  %78 = phi i64 [ %5, %34 ], [ %1081, %1079 ]
  %79 = phi i32 [ -1, %34 ], [ %1080, %1079 ]
  %80 = getelementptr inbounds i8, ptr %77, i64 1
  store ptr %80, ptr %8, align 8, !tbaa !69
  %81 = icmp eq i8 %76, 37
  br i1 %81, label %82, label %1079

82:                                               ; preds = %75
  %83 = load i8, ptr %80, align 1, !tbaa !71
  switch i8 %83, label %88 [
    i8 0, label %84
    i8 37, label %86
  ]

84:                                               ; preds = %82
  %85 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.32) #11
  br label %1079

86:                                               ; preds = %82
  %87 = getelementptr inbounds i8, ptr %77, i64 2
  store ptr %87, ptr %8, align 8, !tbaa !69
  br label %1079

88:                                               ; preds = %82
  store i8 0, ptr %20, align 16, !tbaa !71
  %89 = load i32, ptr %35, align 8, !tbaa !91
  %90 = and i32 %89, 16
  %91 = icmp ne i32 %90, 0
  %92 = icmp ne i32 %79, 0
  %93 = select i1 %91, i1 %92, i1 false
  br i1 %93, label %94, label %104

94:                                               ; preds = %88
  %95 = call fastcc i32 @maybe_read_dollar_number(ptr noundef nonnull %8, i32 noundef 0, ptr noundef %4, ptr noundef nonnull %10, ptr noundef nonnull %24) #10
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i64, ptr %29, align 8, !tbaa !101
  %99 = trunc i64 %98 to i32
  %100 = add nsw i32 %95, -1
  %101 = add i32 %100, %99
  br label %108

102:                                              ; preds = %94
  %103 = icmp eq i32 %95, -1
  br i1 %103, label %1085, label %108

104:                                              ; preds = %88
  br i1 %91, label %105, label %108

105:                                              ; preds = %104
  %106 = call fastcc zeroext i8 @avoid_dollar_number(ptr noundef nonnull %80) #10, !range !74
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %1085

108:                                              ; preds = %97, %104, %105, %102
  %109 = phi i32 [ 0, %102 ], [ 0, %105 ], [ 0, %104 ], [ %101, %97 ]
  %110 = phi i32 [ %79, %102 ], [ %79, %105 ], [ %79, %104 ], [ 1, %97 ]
  %111 = load ptr, ptr %8, align 8, !tbaa !69
  %112 = load i8, ptr %111, align 1, !tbaa !71
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %154, label %114

114:                                              ; preds = %108, %149
  %115 = phi i8 [ %152, %149 ], [ %112, %108 ]
  %116 = phi ptr [ %151, %149 ], [ %111, %108 ]
  %117 = sext i8 %115 to i32
  %118 = load ptr, ptr %36, align 8, !tbaa !168
  %119 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %118, i32 noundef %117) #10
  %120 = icmp eq ptr %119, null
  br i1 %120, label %154, label %121

121:                                              ; preds = %114
  %122 = call fastcc ptr @get_flag_spec(ptr noundef %26, i32 noundef %117, ptr noundef null) #10
  %123 = load i8, ptr %116, align 1, !tbaa !71
  %124 = sext i8 %123 to i32
  %125 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %20, i32 noundef %124) #10
  %126 = icmp eq ptr %125, null
  br i1 %126, label %131, label %127

127:                                              ; preds = %121
  %128 = getelementptr inbounds %struct.format_flag_spec, ptr %122, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !169
  %130 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.33, ptr noundef %129) #11
  br label %139

131:                                              ; preds = %121
  %132 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #10
  %133 = shl i64 %132, 32
  %134 = ashr exact i64 %133, 32
  %135 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %134
  store i8 %123, ptr %135, align 1, !tbaa !71
  %136 = add i64 %133, 4294967296
  %137 = ashr exact i64 %136, 32
  %138 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %137
  store i8 0, ptr %138, align 1, !tbaa !71
  br label %139

139:                                              ; preds = %131, %127
  %140 = getelementptr inbounds %struct.format_flag_spec, ptr %122, i64 0, i32 2
  %141 = load i32, ptr %140, align 8, !tbaa !171
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %149, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds i8, ptr %116, i64 1
  %145 = load i8, ptr %144, align 1, !tbaa !71
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.34) #11
  br label %1085

149:                                              ; preds = %143, %139
  %150 = phi ptr [ %144, %143 ], [ %116, %139 ]
  %151 = getelementptr inbounds i8, ptr %150, i64 1
  %152 = load i8, ptr %151, align 1, !tbaa !71
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %154, label %114, !llvm.loop !172

154:                                              ; preds = %114, %149, %108
  %155 = phi ptr [ %111, %108 ], [ %151, %149 ], [ %116, %114 ]
  %156 = phi i8 [ 0, %108 ], [ 0, %149 ], [ %115, %114 ]
  store ptr %155, ptr %8, align 8, !tbaa !69
  %157 = load i32, ptr %37, align 4, !tbaa !173
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %261, label %159

159:                                              ; preds = %154
  %160 = load ptr, ptr %38, align 8, !tbaa !174
  %161 = icmp ne ptr %160, null
  %162 = icmp eq i8 %156, 42
  %163 = and i1 %162, %161
  br i1 %163, label %171, label %164

164:                                              ; preds = %159
  %165 = load i8, ptr %155, align 1, !tbaa !71
  %166 = zext i8 %165 to i64
  %167 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %166
  %168 = load i16, ptr %167, align 2, !tbaa !175
  %169 = and i16 %168, 4
  %170 = icmp eq i16 %169, 0
  br i1 %170, label %261, label %227

171:                                              ; preds = %159
  %172 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #10
  %173 = trunc i32 %157 to i8
  %174 = shl i64 %172, 32
  %175 = ashr exact i64 %174, 32
  %176 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %175
  store i8 %173, ptr %176, align 1, !tbaa !71
  %177 = add i64 %174, 4294967296
  %178 = ashr exact i64 %177, 32
  %179 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %178
  store i8 0, ptr %179, align 1, !tbaa !71
  %180 = getelementptr inbounds i8, ptr %155, i64 1
  store ptr %180, ptr %8, align 8, !tbaa !69
  %181 = icmp eq i32 %110, 0
  br i1 %181, label %194, label %182

182:                                              ; preds = %171
  %183 = icmp eq i32 %110, 1
  %184 = zext i1 %183 to i32
  %185 = call fastcc i32 @maybe_read_dollar_number(ptr noundef nonnull %8, i32 noundef %184, ptr noundef %4, ptr noundef nonnull %9, ptr noundef nonnull %24) #10
  %186 = icmp eq i32 %185, -1
  br i1 %186, label %1085, label %187

187:                                              ; preds = %182
  %188 = icmp sgt i32 %185, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %187
  %190 = zext nneg i32 %185 to i64
  %191 = load i64, ptr %29, align 8, !tbaa !101
  %192 = add nsw i64 %190, -1
  %193 = add i64 %192, %191
  br label %199

194:                                              ; preds = %171
  %195 = call fastcc zeroext i8 @avoid_dollar_number(ptr noundef nonnull %180) #10, !range !74
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %197, label %1085

197:                                              ; preds = %194, %187
  %198 = load i64, ptr %29, align 8, !tbaa !101
  br label %199

199:                                              ; preds = %197, %189
  %200 = phi i64 [ %198, %197 ], [ %191, %189 ]
  %201 = phi i1 [ true, %197 ], [ false, %189 ]
  %202 = phi i32 [ 0, %197 ], [ 1, %189 ]
  %203 = phi i64 [ %78, %197 ], [ %193, %189 ]
  %204 = icmp eq i64 %200, 0
  br i1 %204, label %261, label %205

205:                                              ; preds = %199
  %206 = load ptr, ptr %9, align 8, !tbaa !69
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %210

208:                                              ; preds = %205
  %209 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.35) #11
  br label %1085

210:                                              ; preds = %205
  %211 = getelementptr inbounds %struct.tree_list, ptr %206, i64 0, i32 2
  %212 = load ptr, ptr %211, align 8, !tbaa !71
  br i1 %201, label %213, label %217

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct.tree_common, ptr %206, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !71
  store ptr %215, ptr %9, align 8, !tbaa !69
  %216 = add i64 %203, 1
  br label %217

217:                                              ; preds = %213, %210
  %218 = phi i64 [ %216, %213 ], [ %203, %210 ]
  %219 = getelementptr inbounds %struct.format_wanted_type, ptr %11, i64 0, i32 1
  %220 = getelementptr inbounds %struct.format_wanted_type, ptr %11, i64 0, i32 7
  %221 = getelementptr inbounds %struct.format_wanted_type, ptr %11, i64 0, i32 8
  %222 = getelementptr inbounds %struct.format_wanted_type, ptr %11, i64 0, i32 9
  %223 = getelementptr inbounds %struct.format_wanted_type, ptr %11, i64 0, i32 10
  %224 = load ptr, ptr %38, align 8, !tbaa !174
  %225 = load ptr, ptr %224, align 8, !tbaa !69
  store ptr %225, ptr %11, align 8, !tbaa !177
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %219, i8 0, i64 28, i1 false)
  store ptr @.str.36, ptr %220, align 8, !tbaa !179
  store ptr %212, ptr %221, align 8, !tbaa !180
  %226 = trunc i64 %218 to i32
  store i32 %226, ptr %222, align 8, !tbaa !181
  store ptr null, ptr %223, align 8, !tbaa !182
  br label %261

227:                                              ; preds = %164, %227
  %228 = phi i8 [ %234, %227 ], [ %165, %164 ]
  %229 = phi i32 [ %232, %227 ], [ 0, %164 ]
  %230 = phi ptr [ %233, %227 ], [ %155, %164 ]
  %231 = icmp eq i8 %228, 48
  %232 = select i1 %231, i32 %229, i32 1
  %233 = getelementptr inbounds i8, ptr %230, i64 1
  %234 = load i8, ptr %233, align 1, !tbaa !71
  %235 = zext i8 %234 to i64
  %236 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %235
  %237 = load i16, ptr %236, align 2, !tbaa !175
  %238 = and i16 %237, 4
  %239 = icmp eq i16 %238, 0
  br i1 %239, label %240, label %227, !llvm.loop !183

240:                                              ; preds = %227
  store ptr %233, ptr %8, align 8, !tbaa !69
  %241 = icmp ne i32 %232, 0
  %242 = select i1 %170, i1 true, i1 %241
  br i1 %242, label %250, label %243

243:                                              ; preds = %240
  %244 = load i32, ptr %35, align 8, !tbaa !91
  %245 = and i32 %244, 32
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %251, label %247

247:                                              ; preds = %243
  %248 = load ptr, ptr %24, align 8, !tbaa !95
  %249 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.37, ptr noundef %248) #11
  br label %251

250:                                              ; preds = %240
  br i1 %170, label %261, label %251

251:                                              ; preds = %243, %247, %250
  %252 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #10
  %253 = load i32, ptr %37, align 4, !tbaa !173
  %254 = trunc i32 %253 to i8
  %255 = shl i64 %252, 32
  %256 = ashr exact i64 %255, 32
  %257 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %256
  store i8 %254, ptr %257, align 1, !tbaa !71
  %258 = add i64 %255, 4294967296
  %259 = ashr exact i64 %258, 32
  %260 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %259
  store i8 0, ptr %260, align 1, !tbaa !71
  br label %261

261:                                              ; preds = %164, %250, %251, %217, %199, %154
  %262 = phi ptr [ %11, %217 ], [ null, %199 ], [ null, %154 ], [ null, %251 ], [ null, %250 ], [ null, %164 ]
  %263 = phi i32 [ %202, %217 ], [ %202, %199 ], [ %110, %154 ], [ %110, %251 ], [ %110, %250 ], [ %110, %164 ]
  %264 = phi i64 [ %218, %217 ], [ %203, %199 ], [ %78, %154 ], [ %78, %251 ], [ %78, %250 ], [ %78, %164 ]
  %265 = load i32, ptr %39, align 8, !tbaa !184
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %301, label %267

267:                                              ; preds = %261
  %268 = load ptr, ptr %8, align 8, !tbaa !69
  %269 = load i8, ptr %268, align 1, !tbaa !71
  %270 = icmp eq i8 %269, 35
  br i1 %270, label %271, label %301

271:                                              ; preds = %267
  %272 = getelementptr inbounds i8, ptr %268, i64 1
  %273 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #10
  %274 = trunc i32 %265 to i8
  %275 = shl i64 %273, 32
  %276 = ashr exact i64 %275, 32
  %277 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %276
  store i8 %274, ptr %277, align 1, !tbaa !71
  %278 = add i64 %275, 4294967296
  %279 = ashr exact i64 %278, 32
  %280 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %279
  store i8 0, ptr %280, align 1, !tbaa !71
  %281 = load i8, ptr %272, align 1, !tbaa !71
  %282 = zext i8 %281 to i64
  %283 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %282
  %284 = load i16, ptr %283, align 2, !tbaa !175
  %285 = and i16 %284, 4
  %286 = icmp eq i16 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %271
  %288 = load ptr, ptr %24, align 8, !tbaa !95
  %289 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.38, ptr noundef %288) #11
  br label %290

290:                                              ; preds = %287, %271
  br label %291

291:                                              ; preds = %290, %291
  %292 = phi ptr [ %299, %291 ], [ %272, %290 ]
  %293 = load i8, ptr %292, align 1, !tbaa !71
  %294 = zext i8 %293 to i64
  %295 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %294
  %296 = load i16, ptr %295, align 2, !tbaa !175
  %297 = and i16 %296, 4
  %298 = icmp eq i16 %297, 0
  %299 = getelementptr inbounds i8, ptr %292, i64 1
  br i1 %298, label %300, label %291, !llvm.loop !185

300:                                              ; preds = %291
  store ptr %292, ptr %8, align 8, !tbaa !69
  br label %301

301:                                              ; preds = %300, %267, %261
  %302 = load i32, ptr %40, align 4, !tbaa !186
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %400, label %304

304:                                              ; preds = %301
  %305 = load ptr, ptr %8, align 8, !tbaa !69
  %306 = load i8, ptr %305, align 1, !tbaa !71
  %307 = icmp eq i8 %306, 46
  br i1 %307, label %308, label %400

308:                                              ; preds = %304
  %309 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 15
  %310 = getelementptr inbounds i8, ptr %305, i64 1
  %311 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #10
  %312 = trunc i32 %302 to i8
  %313 = shl i64 %311, 32
  %314 = ashr exact i64 %313, 32
  %315 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %314
  store i8 %312, ptr %315, align 1, !tbaa !71
  %316 = add i64 %313, 4294967296
  %317 = ashr exact i64 %316, 32
  %318 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %317
  store i8 0, ptr %318, align 1, !tbaa !71
  %319 = load ptr, ptr %309, align 8, !tbaa !187
  %320 = icmp eq ptr %319, null
  br i1 %320, label %375, label %321

321:                                              ; preds = %308
  %322 = load i8, ptr %310, align 1, !tbaa !71
  %323 = icmp eq i8 %322, 42
  br i1 %323, label %324, label %375

324:                                              ; preds = %321
  %325 = getelementptr inbounds i8, ptr %305, i64 2
  store ptr %325, ptr %8, align 8, !tbaa !69
  %326 = icmp eq i32 %263, 0
  br i1 %326, label %339, label %327

327:                                              ; preds = %324
  %328 = icmp eq i32 %263, 1
  %329 = zext i1 %328 to i32
  %330 = call fastcc i32 @maybe_read_dollar_number(ptr noundef nonnull %8, i32 noundef %329, ptr noundef %4, ptr noundef nonnull %9, ptr noundef nonnull %24) #10
  %331 = icmp eq i32 %330, -1
  br i1 %331, label %1085, label %332

332:                                              ; preds = %327
  %333 = icmp sgt i32 %330, 0
  br i1 %333, label %334, label %342

334:                                              ; preds = %332
  %335 = zext nneg i32 %330 to i64
  %336 = load i64, ptr %29, align 8, !tbaa !101
  %337 = add nsw i64 %335, -1
  %338 = add i64 %337, %336
  br label %344

339:                                              ; preds = %324
  %340 = call fastcc zeroext i8 @avoid_dollar_number(ptr noundef nonnull %325) #10, !range !74
  %341 = icmp eq i8 %340, 0
  br i1 %341, label %342, label %1085

342:                                              ; preds = %339, %332
  %343 = load i64, ptr %29, align 8, !tbaa !101
  br label %344

344:                                              ; preds = %342, %334
  %345 = phi i64 [ %343, %342 ], [ %336, %334 ]
  %346 = phi i1 [ true, %342 ], [ false, %334 ]
  %347 = phi i32 [ 0, %342 ], [ 1, %334 ]
  %348 = phi i64 [ %264, %342 ], [ %338, %334 ]
  %349 = icmp eq i64 %345, 0
  br i1 %349, label %400, label %350

350:                                              ; preds = %344
  %351 = load ptr, ptr %9, align 8, !tbaa !69
  %352 = icmp eq ptr %351, null
  br i1 %352, label %353, label %355

353:                                              ; preds = %350
  %354 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.35) #11
  br label %1085

355:                                              ; preds = %350
  %356 = getelementptr inbounds %struct.tree_list, ptr %351, i64 0, i32 2
  %357 = load ptr, ptr %356, align 8, !tbaa !71
  br i1 %346, label %358, label %362

358:                                              ; preds = %355
  %359 = getelementptr inbounds %struct.tree_common, ptr %351, i64 0, i32 1
  %360 = load ptr, ptr %359, align 8, !tbaa !71
  store ptr %360, ptr %9, align 8, !tbaa !69
  %361 = add i64 %348, 1
  br label %362

362:                                              ; preds = %358, %355
  %363 = phi i64 [ %361, %358 ], [ %348, %355 ]
  %364 = getelementptr inbounds %struct.format_wanted_type, ptr %12, i64 0, i32 1
  %365 = getelementptr inbounds %struct.format_wanted_type, ptr %12, i64 0, i32 7
  %366 = getelementptr inbounds %struct.format_wanted_type, ptr %12, i64 0, i32 8
  %367 = getelementptr inbounds %struct.format_wanted_type, ptr %12, i64 0, i32 9
  %368 = getelementptr inbounds %struct.format_wanted_type, ptr %12, i64 0, i32 10
  %369 = load ptr, ptr %309, align 8, !tbaa !187
  %370 = load ptr, ptr %369, align 8, !tbaa !69
  store ptr %370, ptr %12, align 8, !tbaa !177
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %364, i8 0, i64 28, i1 false)
  store ptr @.str.39, ptr %365, align 8, !tbaa !179
  store ptr %357, ptr %366, align 8, !tbaa !180
  %371 = trunc i64 %363 to i32
  store i32 %371, ptr %367, align 8, !tbaa !181
  store ptr null, ptr %368, align 8, !tbaa !182
  %372 = icmp eq ptr %262, null
  br i1 %372, label %400, label %373

373:                                              ; preds = %362
  %374 = getelementptr inbounds %struct.format_wanted_type, ptr %262, i64 0, i32 10
  store ptr %12, ptr %374, align 8, !tbaa !182
  br label %400

375:                                              ; preds = %321, %308
  %376 = load i32, ptr %35, align 8, !tbaa !91
  %377 = and i32 %376, 64
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %379, label %389

379:                                              ; preds = %375
  %380 = load i8, ptr %310, align 1, !tbaa !71
  %381 = zext i8 %380 to i64
  %382 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %381
  %383 = load i16, ptr %382, align 2, !tbaa !175
  %384 = and i16 %383, 4
  %385 = icmp eq i16 %384, 0
  br i1 %385, label %386, label %389

386:                                              ; preds = %379
  %387 = load ptr, ptr %24, align 8, !tbaa !95
  %388 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.40, ptr noundef %387) #11
  br label %389

389:                                              ; preds = %386, %379, %375
  br label %390

390:                                              ; preds = %389, %390
  %391 = phi ptr [ %398, %390 ], [ %310, %389 ]
  %392 = load i8, ptr %391, align 1, !tbaa !71
  %393 = zext i8 %392 to i64
  %394 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %393
  %395 = load i16, ptr %394, align 2, !tbaa !175
  %396 = and i16 %395, 4
  %397 = icmp eq i16 %396, 0
  %398 = getelementptr inbounds i8, ptr %391, i64 1
  br i1 %397, label %399, label %390, !llvm.loop !188

399:                                              ; preds = %390
  store ptr %391, ptr %8, align 8, !tbaa !69
  br label %400

400:                                              ; preds = %399, %362, %373, %344, %304, %301
  %401 = phi ptr [ %262, %344 ], [ %262, %304 ], [ %262, %301 ], [ %262, %373 ], [ %12, %362 ], [ %262, %399 ]
  %402 = phi ptr [ %262, %344 ], [ %262, %304 ], [ %262, %301 ], [ %12, %373 ], [ %12, %362 ], [ %262, %399 ]
  %403 = phi i32 [ %347, %344 ], [ %263, %304 ], [ %263, %301 ], [ %347, %373 ], [ %347, %362 ], [ %263, %399 ]
  %404 = phi i64 [ %348, %344 ], [ %264, %304 ], [ %264, %301 ], [ %363, %373 ], [ %363, %362 ], [ %264, %399 ]
  %405 = load i32, ptr %41, align 8, !tbaa !189
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %422, label %407

407:                                              ; preds = %400
  %408 = load ptr, ptr %8, align 8, !tbaa !69
  %409 = load i8, ptr %408, align 1, !tbaa !71
  %410 = sext i8 %409 to i32
  %411 = icmp eq i32 %405, %410
  br i1 %411, label %412, label %422

412:                                              ; preds = %407
  %413 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #10
  %414 = trunc i32 %405 to i8
  %415 = shl i64 %413, 32
  %416 = ashr exact i64 %415, 32
  %417 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %416
  store i8 %414, ptr %417, align 1, !tbaa !71
  %418 = add i64 %415, 4294967296
  %419 = ashr exact i64 %418, 32
  %420 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %419
  store i8 0, ptr %420, align 1, !tbaa !71
  %421 = getelementptr inbounds i8, ptr %408, i64 1
  store ptr %421, ptr %8, align 8, !tbaa !69
  br label %422

422:                                              ; preds = %412, %407, %400
  %423 = load i32, ptr %35, align 8, !tbaa !91
  %424 = and i32 %423, 2
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %444, label %426

426:                                              ; preds = %422
  %427 = load ptr, ptr %8, align 8, !tbaa !69
  %428 = load i8, ptr %427, align 1, !tbaa !71
  %429 = icmp ne i8 %428, 97
  %430 = load i32, ptr @flag_isoc99, align 4
  %431 = icmp ne i32 %430, 0
  %432 = select i1 %429, i1 true, i1 %431
  br i1 %432, label %444, label %433

433:                                              ; preds = %426
  %434 = getelementptr inbounds i8, ptr %427, i64 1
  %435 = load i8, ptr %434, align 1, !tbaa !71
  switch i8 %435, label %444 [
    i8 115, label %436
    i8 83, label %436
    i8 91, label %436
  ]

436:                                              ; preds = %433, %433, %433
  %437 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #10
  %438 = shl i64 %437, 32
  %439 = ashr exact i64 %438, 32
  %440 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %439
  store i8 97, ptr %440, align 1, !tbaa !71
  %441 = add i64 %438, 4294967296
  %442 = ashr exact i64 %441, 32
  %443 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %442
  store i8 0, ptr %443, align 1, !tbaa !71
  store ptr %434, ptr %8, align 8, !tbaa !69
  br label %444

444:                                              ; preds = %433, %426, %436, %422
  %445 = load ptr, ptr %42, align 8, !tbaa !136
  %446 = icmp eq ptr %445, null
  br i1 %446, label %529, label %447

447:                                              ; preds = %444
  %448 = load ptr, ptr %445, align 8, !tbaa !69
  %449 = icmp eq ptr %448, null
  br i1 %449, label %497, label %450

450:                                              ; preds = %447
  %451 = load ptr, ptr %8, align 8, !tbaa !69
  br label %452

452:                                              ; preds = %450, %458
  %453 = phi ptr [ %448, %450 ], [ %460, %458 ]
  %454 = phi ptr [ %445, %450 ], [ %459, %458 ]
  %455 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %453) #10
  %456 = call i32 @strncmp(ptr noundef nonnull %453, ptr noundef %451, i64 noundef %455) #10
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %462, label %458

458:                                              ; preds = %452
  %459 = getelementptr inbounds %struct.format_length_info, ptr %454, i64 1
  %460 = load ptr, ptr %459, align 8, !tbaa !69
  %461 = icmp eq ptr %460, null
  br i1 %461, label %497, label %452, !llvm.loop !190

462:                                              ; preds = %452
  %463 = getelementptr inbounds i8, ptr %451, i64 %455
  store ptr %463, ptr %8, align 8, !tbaa !69
  %464 = getelementptr inbounds %struct.format_length_info, ptr %454, i64 0, i32 3
  %465 = load ptr, ptr %464, align 8, !tbaa !69
  %466 = icmp eq ptr %465, null
  br i1 %466, label %475, label %467

467:                                              ; preds = %462
  %468 = load i8, ptr %453, align 1, !tbaa !71
  %469 = load i8, ptr %463, align 1, !tbaa !71
  %470 = icmp eq i8 %468, %469
  br i1 %470, label %471, label %475

471:                                              ; preds = %467
  %472 = getelementptr inbounds i8, ptr %463, i64 1
  store ptr %472, ptr %8, align 8, !tbaa !69
  %473 = getelementptr inbounds %struct.format_length_info, ptr %454, i64 0, i32 4
  %474 = getelementptr inbounds %struct.format_length_info, ptr %454, i64 0, i32 5
  br label %480

475:                                              ; preds = %467, %462
  %476 = getelementptr inbounds %struct.format_length_info, ptr %454, i64 0, i32 1
  %477 = getelementptr inbounds %struct.format_length_info, ptr %454, i64 0, i32 2
  %478 = getelementptr inbounds %struct.format_length_info, ptr %454, i64 0, i32 6
  %479 = load i32, ptr %478, align 8, !tbaa !191
  br label %480

480:                                              ; preds = %475, %471
  %481 = phi ptr [ %465, %471 ], [ %453, %475 ]
  %482 = phi i32 [ 0, %471 ], [ %479, %475 ]
  %483 = phi ptr [ %474, %471 ], [ %477, %475 ]
  %484 = phi ptr [ %473, %471 ], [ %476, %475 ]
  %485 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 12
  %486 = load i32, ptr %484, align 8, !tbaa !64
  %487 = load i32, ptr %483, align 4, !tbaa !64
  %488 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #10
  %489 = load i32, ptr %485, align 4, !tbaa !192
  %490 = trunc i32 %489 to i8
  %491 = shl i64 %488, 32
  %492 = ashr exact i64 %491, 32
  %493 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %492
  store i8 %490, ptr %493, align 1, !tbaa !71
  %494 = add i64 %491, 4294967296
  %495 = ashr exact i64 %494, 32
  %496 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %495
  store i8 0, ptr %496, align 1, !tbaa !71
  br label %497

497:                                              ; preds = %458, %447, %480
  %498 = phi i32 [ %482, %480 ], [ 0, %447 ], [ 0, %458 ]
  %499 = phi i32 [ %487, %480 ], [ 0, %447 ], [ 0, %458 ]
  %500 = phi i32 [ %486, %480 ], [ 0, %447 ], [ 0, %458 ]
  %501 = phi ptr [ %481, %480 ], [ null, %447 ], [ null, %458 ]
  %502 = load i32, ptr @pedantic, align 4, !tbaa !64
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %529, label %504

504:                                              ; preds = %497
  %505 = icmp eq i32 %499, 2
  %506 = load i32, ptr @warn_long_long, align 4
  %507 = icmp eq i32 %506, 0
  %508 = select i1 %507, i32 0, i32 3
  %509 = select i1 %505, i32 %508, i32 %499
  %510 = load i32, ptr @c_language, align 4, !tbaa !64
  %511 = and i32 %510, 2
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %513, label %520

513:                                              ; preds = %504
  %514 = load i32, ptr @flag_isoc99, align 4, !tbaa !64
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %516, label %520

516:                                              ; preds = %513
  %517 = load i32, ptr @flag_isoc94, align 4, !tbaa !64
  %518 = icmp ne i32 %517, 0
  %519 = zext i1 %518 to i32
  br label %520

520:                                              ; preds = %516, %513, %504
  %521 = phi i32 [ 1, %504 ], [ %519, %516 ], [ 3, %513 ]
  %522 = icmp sgt i32 %509, %521
  br i1 %522, label %523, label %529

523:                                              ; preds = %520
  %524 = icmp eq i32 %499, 4
  %525 = select i1 %524, ptr @.str.43, ptr @.str.44
  %526 = select i1 %512, ptr %525, ptr @.str.42
  %527 = load ptr, ptr %24, align 8, !tbaa !95
  %528 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.41, ptr noundef nonnull %526, ptr noundef %501, ptr noundef %527) #11
  br label %529

529:                                              ; preds = %497, %523, %520, %444
  %530 = phi i32 [ %498, %523 ], [ %498, %520 ], [ %498, %497 ], [ 0, %444 ]
  %531 = phi i32 [ %499, %523 ], [ %499, %520 ], [ %499, %497 ], [ 0, %444 ]
  %532 = phi i32 [ %500, %523 ], [ %500, %520 ], [ %500, %497 ], [ 0, %444 ]
  %533 = phi ptr [ %501, %523 ], [ %501, %520 ], [ %501, %497 ], [ null, %444 ]
  %534 = load ptr, ptr %43, align 8, !tbaa !193
  %535 = icmp eq ptr %534, null
  %536 = load ptr, ptr %8, align 8, !tbaa !69
  br i1 %535, label %569, label %537

537:                                              ; preds = %529
  %538 = load i8, ptr %536, align 1, !tbaa !71
  %539 = icmp eq i8 %538, 0
  br i1 %539, label %567, label %540

540:                                              ; preds = %537, %563
  %541 = phi i8 [ %565, %563 ], [ %538, %537 ]
  %542 = phi ptr [ %564, %563 ], [ %536, %537 ]
  %543 = sext i8 %541 to i32
  %544 = load ptr, ptr %43, align 8, !tbaa !193
  %545 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %544, i32 noundef %543) #10
  %546 = icmp eq ptr %545, null
  br i1 %546, label %567, label %547

547:                                              ; preds = %540
  %548 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %20, i32 noundef %543) #10
  %549 = icmp eq ptr %548, null
  br i1 %549, label %555, label %550

550:                                              ; preds = %547
  %551 = call fastcc ptr @get_flag_spec(ptr noundef %26, i32 noundef %543, ptr noundef null) #10
  %552 = getelementptr inbounds %struct.format_flag_spec, ptr %551, i64 0, i32 3
  %553 = load ptr, ptr %552, align 8, !tbaa !169
  %554 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.33, ptr noundef %553) #11
  br label %563

555:                                              ; preds = %547
  %556 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #10
  %557 = shl i64 %556, 32
  %558 = ashr exact i64 %557, 32
  %559 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %558
  store i8 %541, ptr %559, align 1, !tbaa !71
  %560 = add i64 %557, 4294967296
  %561 = ashr exact i64 %560, 32
  %562 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %561
  store i8 0, ptr %562, align 1, !tbaa !71
  br label %563

563:                                              ; preds = %555, %550
  %564 = getelementptr inbounds i8, ptr %542, i64 1
  %565 = load i8, ptr %564, align 1, !tbaa !71
  %566 = icmp eq i8 %565, 0
  br i1 %566, label %567, label %540, !llvm.loop !194

567:                                              ; preds = %540, %563, %537
  %568 = phi ptr [ %536, %537 ], [ %564, %563 ], [ %542, %540 ]
  store ptr %568, ptr %8, align 8, !tbaa !69
  br label %569

569:                                              ; preds = %567, %529
  %570 = phi ptr [ %568, %567 ], [ %536, %529 ]
  %571 = load i8, ptr %570, align 1, !tbaa !71
  %572 = sext i8 %571 to i32
  %573 = icmp eq i8 %571, 0
  br i1 %573, label %580, label %574

574:                                              ; preds = %569
  %575 = load i32, ptr %35, align 8, !tbaa !91
  %576 = and i32 %575, 4
  %577 = icmp eq i32 %576, 0
  %578 = icmp eq i8 %571, 37
  %579 = and i1 %578, %577
  br i1 %579, label %580, label %582

580:                                              ; preds = %574, %569
  %581 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.45) #11
  br label %1079

582:                                              ; preds = %574
  %583 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 2
  %584 = getelementptr inbounds i8, ptr %570, i64 1
  store ptr %584, ptr %8, align 8, !tbaa !69
  %585 = load ptr, ptr %583, align 8, !tbaa !138
  %586 = load ptr, ptr %585, align 8, !tbaa !195
  %587 = icmp eq ptr %586, null
  br i1 %587, label %597, label %588

588:                                              ; preds = %582, %593
  %589 = phi ptr [ %595, %593 ], [ %586, %582 ]
  %590 = phi ptr [ %594, %593 ], [ %585, %582 ]
  %591 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %589, i32 noundef %572) #10
  %592 = icmp eq ptr %591, null
  br i1 %592, label %593, label %608

593:                                              ; preds = %588
  %594 = getelementptr inbounds %struct.format_char_info, ptr %590, i64 1
  %595 = load ptr, ptr %594, align 8, !tbaa !195
  %596 = icmp eq ptr %595, null
  br i1 %596, label %597, label %588, !llvm.loop !196

597:                                              ; preds = %593, %582
  %598 = and i32 %572, 255
  %599 = zext nneg i32 %598 to i64
  %600 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %599
  %601 = load i16, ptr %600, align 2, !tbaa !175
  %602 = and i16 %601, 172
  %603 = icmp eq i16 %602, 0
  br i1 %603, label %606, label %604

604:                                              ; preds = %597
  %605 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.46, i32 noundef %572) #11
  br label %1079

606:                                              ; preds = %597
  %607 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.47, i32 noundef %572) #11
  br label %1079

608:                                              ; preds = %588
  %609 = load i32, ptr @pedantic, align 4, !tbaa !64
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %639, label %611

611:                                              ; preds = %608
  %612 = getelementptr inbounds %struct.format_char_info, ptr %590, i64 0, i32 2
  %613 = load i32, ptr %612, align 4, !tbaa !197
  %614 = icmp eq i32 %613, 2
  %615 = load i32, ptr @warn_long_long, align 4
  %616 = icmp eq i32 %615, 0
  %617 = select i1 %616, i32 0, i32 3
  %618 = select i1 %614, i32 %617, i32 %613
  %619 = load i32, ptr @c_language, align 4, !tbaa !64
  %620 = and i32 %619, 2
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %622, label %630

622:                                              ; preds = %611
  %623 = load i32, ptr @flag_isoc99, align 4, !tbaa !64
  %624 = icmp eq i32 %623, 0
  %625 = load i32, ptr @flag_isoc94, align 4
  %626 = icmp ne i32 %625, 0
  %627 = zext i1 %626 to i32
  %628 = select i1 %624, i32 %627, i32 3
  %629 = icmp sgt i32 %618, %628
  br i1 %629, label %632, label %639

630:                                              ; preds = %611
  %631 = icmp sgt i32 %618, 1
  br i1 %631, label %635, label %639

632:                                              ; preds = %622
  %633 = icmp eq i32 %613, 4
  %634 = select i1 %633, ptr @.str.43, ptr @.str.44
  br label %635

635:                                              ; preds = %630, %632
  %636 = phi ptr [ %634, %632 ], [ @.str.42, %630 ]
  %637 = load ptr, ptr %24, align 8, !tbaa !95
  %638 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.48, ptr noundef nonnull %636, i32 noundef %572, ptr noundef %637) #11
  br label %639

639:                                              ; preds = %630, %622, %635, %608
  %640 = load i8, ptr %20, align 16, !tbaa !71
  %641 = icmp eq i8 %640, 0
  br i1 %641, label %760, label %642

642:                                              ; preds = %639
  %643 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 12
  %644 = getelementptr inbounds %struct.format_char_info, ptr %590, i64 0, i32 4
  %645 = getelementptr inbounds %struct.format_char_info, ptr %590, i64 0, i32 5
  br label %646

646:                                              ; preds = %642, %751
  %647 = phi i64 [ 0, %642 ], [ %753, %751 ]
  %648 = phi i8 [ %640, %642 ], [ %755, %751 ]
  %649 = phi ptr [ %20, %642 ], [ %754, %751 ]
  %650 = phi i32 [ 0, %642 ], [ %752, %751 ]
  %651 = sext i8 %648 to i32
  %652 = call fastcc ptr @get_flag_spec(ptr noundef %26, i32 noundef %651, ptr noundef null) #10
  %653 = load i8, ptr %649, align 1, !tbaa !71
  %654 = trunc i64 %647 to i32
  %655 = sub nsw i32 %654, %650
  %656 = sext i32 %655 to i64
  %657 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %656
  store i8 %653, ptr %657, align 1, !tbaa !71
  %658 = sext i8 %653 to i32
  %659 = load i32, ptr %643, align 4, !tbaa !192
  %660 = icmp eq i32 %659, %658
  br i1 %660, label %751, label %661

661:                                              ; preds = %646
  %662 = load ptr, ptr %644, align 8, !tbaa !198
  %663 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %662, i32 noundef %658) #10
  %664 = icmp eq ptr %663, null
  br i1 %664, label %665, label %671

665:                                              ; preds = %661
  %666 = getelementptr inbounds %struct.format_flag_spec, ptr %652, i64 0, i32 3
  %667 = load ptr, ptr %666, align 8, !tbaa !169
  %668 = load ptr, ptr %24, align 8, !tbaa !95
  %669 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.49, ptr noundef %667, i32 noundef %572, ptr noundef %668) #11
  %670 = add nsw i32 %650, 1
  br label %751

671:                                              ; preds = %661
  %672 = load i32, ptr @pedantic, align 4, !tbaa !64
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %751, label %674

674:                                              ; preds = %671
  %675 = getelementptr inbounds %struct.format_flag_spec, ptr %652, i64 0, i32 5
  %676 = load i32, ptr %675, align 8, !tbaa !199
  %677 = icmp eq i32 %676, 2
  %678 = load i32, ptr @warn_long_long, align 4
  %679 = icmp eq i32 %678, 0
  %680 = select i1 %679, i32 0, i32 3
  %681 = select i1 %677, i32 %680, i32 %676
  %682 = load i32, ptr @c_language, align 4, !tbaa !64
  %683 = and i32 %682, 2
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %685, label %693

685:                                              ; preds = %674
  %686 = load i32, ptr @flag_isoc99, align 4, !tbaa !64
  %687 = icmp eq i32 %686, 0
  %688 = load i32, ptr @flag_isoc94, align 4
  %689 = icmp ne i32 %688, 0
  %690 = zext i1 %689 to i32
  %691 = select i1 %687, i32 %690, i32 3
  %692 = icmp sgt i32 %681, %691
  br i1 %692, label %695, label %705

693:                                              ; preds = %674
  %694 = icmp sgt i32 %681, 1
  br i1 %694, label %698, label %705

695:                                              ; preds = %685
  %696 = icmp eq i32 %676, 4
  %697 = select i1 %696, ptr @.str.43, ptr @.str.44
  br label %698

698:                                              ; preds = %693, %695
  %699 = phi ptr [ %697, %695 ], [ @.str.42, %693 ]
  %700 = getelementptr inbounds %struct.format_flag_spec, ptr %652, i64 0, i32 4
  %701 = load ptr, ptr %700, align 8, !tbaa !200
  %702 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.50, ptr noundef nonnull %699, ptr noundef %701) #11
  %703 = load i8, ptr %649, align 1, !tbaa !71
  %704 = sext i8 %703 to i32
  br label %705

705:                                              ; preds = %693, %698, %685
  %706 = phi i32 [ %658, %693 ], [ %704, %698 ], [ %658, %685 ]
  %707 = load ptr, ptr %645, align 8, !tbaa !201
  %708 = call fastcc ptr @get_flag_spec(ptr noundef %26, i32 noundef %706, ptr noundef %707) #10
  %709 = icmp eq ptr %708, null
  br i1 %709, label %751, label %710

710:                                              ; preds = %705
  %711 = getelementptr inbounds %struct.format_flag_spec, ptr %708, i64 0, i32 5
  %712 = load i32, ptr %711, align 8, !tbaa !199
  %713 = icmp eq i32 %712, 2
  %714 = load i32, ptr @warn_long_long, align 4
  %715 = icmp eq i32 %714, 0
  %716 = select i1 %715, i32 0, i32 3
  %717 = select i1 %713, i32 %716, i32 %712
  %718 = load i32, ptr %675, align 8, !tbaa !199
  %719 = icmp eq i32 %718, 2
  %720 = select i1 %719, i32 %716, i32 %718
  %721 = icmp sgt i32 %717, %720
  br i1 %721, label %722, label %751

722:                                              ; preds = %710
  %723 = getelementptr inbounds %struct.format_flag_spec, ptr %708, i64 0, i32 4
  %724 = load ptr, ptr %723, align 8, !tbaa !200
  %725 = icmp eq ptr %724, null
  br i1 %725, label %726, label %729

726:                                              ; preds = %722
  %727 = getelementptr inbounds %struct.format_flag_spec, ptr %652, i64 0, i32 4
  %728 = load ptr, ptr %727, align 8, !tbaa !200
  br label %729

729:                                              ; preds = %722, %726
  %730 = phi ptr [ %728, %726 ], [ %724, %722 ]
  %731 = load i32, ptr @c_language, align 4, !tbaa !64
  %732 = and i32 %731, 2
  %733 = icmp eq i32 %732, 0
  br i1 %733, label %734, label %742

734:                                              ; preds = %729
  %735 = load i32, ptr @flag_isoc99, align 4, !tbaa !64
  %736 = icmp eq i32 %735, 0
  %737 = load i32, ptr @flag_isoc94, align 4
  %738 = icmp ne i32 %737, 0
  %739 = zext i1 %738 to i32
  %740 = select i1 %736, i32 %739, i32 3
  %741 = icmp sgt i32 %717, %740
  br i1 %741, label %744, label %751

742:                                              ; preds = %729
  %743 = icmp sgt i32 %717, 1
  br i1 %743, label %747, label %751

744:                                              ; preds = %734
  %745 = icmp eq i32 %712, 4
  %746 = select i1 %745, ptr @.str.43, ptr @.str.44
  br label %747

747:                                              ; preds = %742, %744
  %748 = phi ptr [ %746, %744 ], [ @.str.42, %742 ]
  %749 = load ptr, ptr %24, align 8, !tbaa !95
  %750 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.51, ptr noundef nonnull %748, ptr noundef %730, i32 noundef %572, ptr noundef %749) #11
  br label %751

751:                                              ; preds = %742, %671, %734, %747, %710, %705, %646, %665
  %752 = phi i32 [ %670, %665 ], [ %650, %646 ], [ %650, %705 ], [ %650, %710 ], [ %650, %747 ], [ %650, %734 ], [ %650, %671 ], [ %650, %742 ]
  %753 = add nuw i64 %647, 1
  %754 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %753
  %755 = load i8, ptr %754, align 1, !tbaa !71
  %756 = icmp eq i8 %755, 0
  br i1 %756, label %757, label %646, !llvm.loop !202

757:                                              ; preds = %751
  %758 = trunc i64 %753 to i32
  %759 = sub nsw i32 %758, %752
  br label %760

760:                                              ; preds = %757, %639
  %761 = phi i32 [ 0, %639 ], [ %759, %757 ]
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %762
  store i8 0, ptr %763, align 1, !tbaa !71
  %764 = load i32, ptr %35, align 8, !tbaa !91
  %765 = and i32 %764, 2
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %771, label %767

767:                                              ; preds = %760
  %768 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %20, i32 noundef 97) #10
  %769 = icmp ne ptr %768, null
  %770 = zext i1 %769 to i32
  br label %771

771:                                              ; preds = %767, %760
  %772 = phi i32 [ 0, %760 ], [ %770, %767 ]
  %773 = load i32, ptr %41, align 8, !tbaa !189
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %779, label %775

775:                                              ; preds = %771
  %776 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %20, i32 noundef %773) #10
  %777 = icmp eq ptr %776, null
  %778 = select i1 %777, i32 %772, i32 1
  br label %779

779:                                              ; preds = %775, %771
  %780 = phi i32 [ %772, %771 ], [ %778, %775 ]
  %781 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 11
  %782 = load i32, ptr %781, align 8, !tbaa !203
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %788, label %784

784:                                              ; preds = %779
  %785 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %20, i32 noundef %782) #10
  %786 = icmp eq ptr %785, null
  %787 = xor i1 %786, true
  br label %788

788:                                              ; preds = %784, %779
  %789 = phi i1 [ true, %779 ], [ %786, %784 ]
  %790 = phi i1 [ false, %779 ], [ %787, %784 ]
  %791 = load i32, ptr %28, align 4, !tbaa !204
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %842, label %793

793:                                              ; preds = %788
  %794 = getelementptr inbounds %struct.format_char_info, ptr %590, i64 0, i32 5
  br label %795

795:                                              ; preds = %793, %837
  %796 = phi i64 [ 0, %793 ], [ %838, %837 ]
  %797 = phi i32 [ %791, %793 ], [ %840, %837 ]
  %798 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %20, i32 noundef %797) #10
  %799 = icmp eq ptr %798, null
  br i1 %799, label %837, label %800

800:                                              ; preds = %795
  %801 = getelementptr inbounds %struct.format_flag_pair, ptr %28, i64 %796, i32 1
  %802 = load i32, ptr %801, align 4, !tbaa !206
  %803 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %20, i32 noundef %802) #10
  %804 = icmp eq ptr %803, null
  br i1 %804, label %837, label %805

805:                                              ; preds = %800
  %806 = getelementptr inbounds %struct.format_flag_pair, ptr %28, i64 %796, i32 3
  %807 = load i32, ptr %806, align 4, !tbaa !207
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %813, label %809

809:                                              ; preds = %805
  %810 = load ptr, ptr %794, align 8, !tbaa !201
  %811 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %810, i32 noundef %807) #10
  %812 = icmp eq ptr %811, null
  br i1 %812, label %837, label %813

813:                                              ; preds = %809, %805
  %814 = call fastcc ptr @get_flag_spec(ptr noundef %26, i32 noundef %797, ptr noundef null) #10
  %815 = load i32, ptr %801, align 4, !tbaa !206
  %816 = call fastcc ptr @get_flag_spec(ptr noundef %26, i32 noundef %815, ptr noundef null) #10
  %817 = getelementptr inbounds %struct.format_flag_pair, ptr %28, i64 %796, i32 2
  %818 = load i32, ptr %817, align 4, !tbaa !208
  %819 = icmp eq i32 %818, 0
  %820 = load i32, ptr %806, align 4, !tbaa !207
  %821 = icmp eq i32 %820, 0
  %822 = getelementptr inbounds %struct.format_flag_spec, ptr %814, i64 0, i32 3
  %823 = load ptr, ptr %822, align 8, !tbaa !169
  %824 = getelementptr inbounds %struct.format_flag_spec, ptr %816, i64 0, i32 3
  %825 = load ptr, ptr %824, align 8, !tbaa !169
  %826 = load ptr, ptr %24, align 8, !tbaa !95
  br i1 %819, label %832, label %827

827:                                              ; preds = %813
  br i1 %821, label %830, label %828

828:                                              ; preds = %827
  %829 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.52, ptr noundef %823, ptr noundef %825, i32 noundef %572, ptr noundef %826) #11
  br label %837

830:                                              ; preds = %827
  %831 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.53, ptr noundef %823, ptr noundef %825, ptr noundef %826) #11
  br label %837

832:                                              ; preds = %813
  br i1 %821, label %835, label %833

833:                                              ; preds = %832
  %834 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.54, ptr noundef %823, ptr noundef %825, i32 noundef %572, ptr noundef %826) #11
  br label %837

835:                                              ; preds = %832
  %836 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.55, ptr noundef %823, ptr noundef %825, ptr noundef %826) #11
  br label %837

837:                                              ; preds = %830, %828, %835, %833, %809, %800, %795
  %838 = add nuw i64 %796, 1
  %839 = getelementptr inbounds %struct.format_flag_pair, ptr %28, i64 %838
  %840 = load i32, ptr %839, align 4, !tbaa !204
  %841 = icmp eq i32 %840, 0
  br i1 %841, label %842, label %795, !llvm.loop !209

842:                                              ; preds = %837, %788
  %843 = load i32, ptr @warn_format_y2k, align 4, !tbaa !64
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %863, label %845

845:                                              ; preds = %842
  %846 = getelementptr inbounds %struct.format_char_info, ptr %590, i64 0, i32 5
  %847 = load ptr, ptr %846, align 8, !tbaa !201
  %848 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %847, i32 noundef 52) #10
  %849 = icmp eq ptr %848, null
  br i1 %849, label %850, label %856

850:                                              ; preds = %845
  %851 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %847, i32 noundef 51) #10
  %852 = icmp eq ptr %851, null
  br i1 %852, label %853, label %860

853:                                              ; preds = %850
  %854 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %847, i32 noundef 50) #10
  %855 = icmp eq ptr %854, null
  br i1 %855, label %863, label %859

856:                                              ; preds = %845
  %857 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %20, i32 noundef 69) #10
  %858 = icmp eq ptr %857, null
  br i1 %858, label %859, label %860

859:                                              ; preds = %856, %853
  br label %860

860:                                              ; preds = %856, %850, %859
  %861 = phi ptr [ @.str.57, %859 ], [ @.str.56, %850 ], [ @.str.56, %856 ]
  %862 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 96, ptr noundef nonnull %861, i32 noundef %572) #11
  br label %863

863:                                              ; preds = %860, %853, %842
  %864 = getelementptr inbounds %struct.format_char_info, ptr %590, i64 0, i32 5
  %865 = load ptr, ptr %864, align 8, !tbaa !201
  %866 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %865, i32 noundef 91) #10
  %867 = icmp eq ptr %866, null
  br i1 %867, label %890, label %868

868:                                              ; preds = %863
  %869 = load i8, ptr %584, align 1, !tbaa !71
  %870 = icmp eq i8 %869, 94
  br i1 %870, label %871, label %874

871:                                              ; preds = %868
  %872 = getelementptr inbounds i8, ptr %570, i64 2
  store ptr %872, ptr %8, align 8, !tbaa !69
  %873 = load i8, ptr %872, align 1, !tbaa !71
  br label %874

874:                                              ; preds = %871, %868
  %875 = phi i8 [ %873, %871 ], [ %869, %868 ]
  %876 = phi ptr [ %872, %871 ], [ %584, %868 ]
  %877 = icmp eq i8 %875, 93
  br i1 %877, label %878, label %880

878:                                              ; preds = %874
  %879 = getelementptr inbounds i8, ptr %876, i64 1
  store ptr %879, ptr %8, align 8, !tbaa !69
  br label %880

880:                                              ; preds = %878, %874
  %881 = phi ptr [ %876, %874 ], [ %879, %878 ]
  br label %882

882:                                              ; preds = %880, %885
  %883 = phi ptr [ %886, %885 ], [ %881, %880 ]
  %884 = load i8, ptr %883, align 1, !tbaa !71
  switch i8 %884, label %885 [
    i8 93, label %889
    i8 0, label %887
  ]

885:                                              ; preds = %882
  %886 = getelementptr inbounds i8, ptr %883, i64 1
  br label %882, !llvm.loop !210

887:                                              ; preds = %882
  store ptr %883, ptr %8, align 8, !tbaa !69
  %888 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.58) #11
  br label %890

889:                                              ; preds = %882
  store ptr %883, ptr %8, align 8, !tbaa !69
  br label %890

890:                                              ; preds = %889, %887, %863
  %891 = load i32, ptr %35, align 8, !tbaa !91
  %892 = and i32 %891, 1
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %954, label %894

894:                                              ; preds = %890
  %895 = zext i32 %532 to i64
  %896 = getelementptr inbounds %struct.format_char_info, ptr %590, i64 0, i32 3, i64 %895, i32 2
  %897 = load ptr, ptr %896, align 8, !tbaa !139
  %898 = icmp eq ptr %897, null
  br i1 %898, label %906, label %899

899:                                              ; preds = %894
  %900 = getelementptr inbounds %struct.format_char_info, ptr %590, i64 0, i32 3, i64 %895
  %901 = load ptr, ptr %897, align 8, !tbaa !69
  %902 = getelementptr inbounds %struct.format_char_info, ptr %590, i64 0, i32 3, i64 %895, i32 1
  %903 = load ptr, ptr %902, align 8, !tbaa !211
  %904 = load i32, ptr %900, align 8, !tbaa !212
  %905 = icmp eq ptr %901, null
  br i1 %905, label %906, label %916

906:                                              ; preds = %894, %899
  %907 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.59, ptr noundef %533, i32 noundef %572) #11
  %908 = load ptr, ptr %9, align 8, !tbaa !69
  %909 = icmp eq ptr %908, null
  br i1 %909, label %910, label %912

910:                                              ; preds = %906
  %911 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.35) #11
  br label %1085

912:                                              ; preds = %906
  %913 = add i64 %404, 1
  %914 = getelementptr inbounds %struct.tree_common, ptr %908, i64 0, i32 1
  %915 = load ptr, ptr %914, align 8, !tbaa !71
  store ptr %915, ptr %9, align 8, !tbaa !69
  br label %1079

916:                                              ; preds = %899
  %917 = load i32, ptr @pedantic, align 4, !tbaa !64
  %918 = icmp eq i32 %917, 0
  br i1 %918, label %954, label %919

919:                                              ; preds = %916
  %920 = icmp eq i32 %904, 2
  %921 = load i32, ptr @warn_long_long, align 4
  %922 = icmp eq i32 %921, 0
  %923 = select i1 %922, i32 0, i32 3
  %924 = select i1 %920, i32 %923, i32 %904
  %925 = icmp eq i32 %531, 2
  %926 = select i1 %925, i32 %923, i32 %531
  %927 = icmp sgt i32 %924, %926
  br i1 %927, label %928, label %954

928:                                              ; preds = %919
  %929 = getelementptr inbounds %struct.format_char_info, ptr %590, i64 0, i32 2
  %930 = load i32, ptr %929, align 4, !tbaa !197
  %931 = icmp eq i32 %930, 2
  %932 = select i1 %931, i32 %923, i32 %930
  %933 = icmp sgt i32 %924, %932
  br i1 %933, label %934, label %954

934:                                              ; preds = %928
  %935 = load i32, ptr @c_language, align 4, !tbaa !64
  %936 = and i32 %935, 2
  %937 = icmp eq i32 %936, 0
  br i1 %937, label %938, label %945

938:                                              ; preds = %934
  %939 = load i32, ptr @flag_isoc99, align 4, !tbaa !64
  %940 = icmp eq i32 %939, 0
  br i1 %940, label %941, label %945

941:                                              ; preds = %938
  %942 = load i32, ptr @flag_isoc94, align 4, !tbaa !64
  %943 = icmp ne i32 %942, 0
  %944 = zext i1 %943 to i32
  br label %945

945:                                              ; preds = %941, %938, %934
  %946 = phi i32 [ 1, %934 ], [ %944, %941 ], [ 3, %938 ]
  %947 = icmp sgt i32 %924, %946
  br i1 %947, label %948, label %954

948:                                              ; preds = %945
  %949 = icmp eq i32 %904, 4
  %950 = select i1 %949, ptr @.str.43, ptr @.str.44
  %951 = select i1 %937, ptr %950, ptr @.str.42
  %952 = load ptr, ptr %24, align 8, !tbaa !95
  %953 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.60, ptr noundef nonnull %951, ptr noundef %533, i32 noundef %572, ptr noundef %952) #11
  br label %954

954:                                              ; preds = %945, %948, %928, %919, %916, %890
  %955 = phi ptr [ %903, %948 ], [ %903, %945 ], [ %903, %928 ], [ %903, %919 ], [ %903, %916 ], [ null, %890 ]
  %956 = phi ptr [ %901, %948 ], [ %901, %945 ], [ %901, %928 ], [ %901, %919 ], [ %901, %916 ], [ null, %890 ]
  %957 = getelementptr inbounds %struct.format_wanted_type, ptr %13, i64 0, i32 10
  store ptr null, ptr %957, align 8, !tbaa !182
  %958 = load i64, ptr %29, align 8, !tbaa !101
  %959 = icmp eq i64 %958, 0
  br i1 %959, label %1079, label %960

960:                                              ; preds = %954
  %961 = getelementptr inbounds %struct.format_char_info, ptr %590, i64 0, i32 1
  %962 = load i32, ptr %961, align 8, !tbaa !141
  %963 = icmp eq i32 %962, 0
  br i1 %963, label %964, label %968

964:                                              ; preds = %960
  %965 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !69
  %966 = icmp eq ptr %956, %965
  %967 = or i1 %790, %966
  br i1 %967, label %969, label %978

968:                                              ; preds = %960
  br i1 %789, label %978, label %971

969:                                              ; preds = %964
  %970 = icmp eq i32 %109, 0
  br i1 %970, label %1068, label %973

971:                                              ; preds = %968
  %972 = icmp eq i32 %109, 0
  br i1 %972, label %1068, label %974

973:                                              ; preds = %969
  br i1 %789, label %976, label %974

974:                                              ; preds = %971, %973
  %975 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.61) #11
  br label %1068

976:                                              ; preds = %973
  %977 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.62) #11
  br label %1068

978:                                              ; preds = %964, %968
  %979 = icmp eq i32 %109, 0
  br i1 %979, label %983, label %980

980:                                              ; preds = %978
  %981 = zext i32 %109 to i64
  %982 = load ptr, ptr %10, align 8, !tbaa !69
  store ptr %982, ptr %9, align 8, !tbaa !69
  br label %988

983:                                              ; preds = %978
  %984 = add i64 %404, 1
  %985 = icmp sgt i32 %403, 0
  br i1 %985, label %986, label %988

986:                                              ; preds = %983
  %987 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.63) #11
  br label %1085

988:                                              ; preds = %983, %980
  %989 = phi i32 [ %403, %980 ], [ 0, %983 ]
  %990 = phi i64 [ %981, %980 ], [ %984, %983 ]
  %991 = icmp ne i32 %530, 0
  %992 = zext i1 %991 to i32
  %993 = icmp eq i32 %780, 0
  %994 = zext i32 %532 to i64
  %995 = load ptr, ptr %9, align 8, !tbaa !69
  %996 = icmp eq ptr %995, null
  br i1 %996, label %997, label %1000

997:                                              ; preds = %988, %1052
  %998 = phi ptr [ %1018, %1052 ], [ %995, %988 ]
  store ptr %998, ptr %9, align 8, !tbaa !69
  %999 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.35) #11
  br label %1085

1000:                                             ; preds = %988, %1052
  %1001 = phi ptr [ %1048, %1052 ], [ %401, %988 ]
  %1002 = phi ptr [ %1007, %1052 ], [ %402, %988 ]
  %1003 = phi ptr [ %1050, %1052 ], [ %590, %988 ]
  %1004 = phi ptr [ %1065, %1052 ], [ %955, %988 ]
  %1005 = phi ptr [ %1063, %1052 ], [ %956, %988 ]
  %1006 = phi i64 [ %1060, %1052 ], [ %990, %988 ]
  %1007 = phi ptr [ %1053, %1052 ], [ %13, %988 ]
  %1008 = phi ptr [ %1018, %1052 ], [ %995, %988 ]
  %1009 = phi ptr [ %1059, %1052 ], [ %19, %988 ]
  %1010 = phi ptr [ %1058, %1052 ], [ %18, %988 ]
  %1011 = phi ptr [ %1057, %1052 ], [ %17, %988 ]
  %1012 = phi ptr [ %1056, %1052 ], [ %16, %988 ]
  %1013 = phi ptr [ %1055, %1052 ], [ %15, %988 ]
  %1014 = phi ptr [ %1054, %1052 ], [ %14, %988 ]
  %1015 = getelementptr inbounds %struct.tree_list, ptr %1008, i64 0, i32 2
  %1016 = load ptr, ptr %1015, align 8, !tbaa !71
  %1017 = getelementptr inbounds %struct.tree_common, ptr %1008, i64 0, i32 1
  %1018 = load ptr, ptr %1017, align 8, !tbaa !71
  store ptr %1005, ptr %1007, align 8, !tbaa !177
  store ptr %1004, ptr %1009, align 8, !tbaa !213
  %1019 = getelementptr inbounds %struct.format_char_info, ptr %1003, i64 0, i32 1
  %1020 = load i32, ptr %1019, align 8, !tbaa !141
  %1021 = add nsw i32 %1020, %780
  store i32 %1021, ptr %1010, align 4, !tbaa !214
  store i32 0, ptr %1011, align 8, !tbaa !215
  %1022 = getelementptr inbounds %struct.format_char_info, ptr %1003, i64 0, i32 5
  %1023 = load ptr, ptr %1022, align 8, !tbaa !201
  %1024 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1023, i32 noundef 99) #10
  %1025 = icmp ne ptr %1024, null
  %1026 = zext i1 %1025 to i32
  store i32 %1026, ptr %1011, align 8
  store i32 %992, ptr %1012, align 8, !tbaa !216
  store i32 0, ptr %1013, align 4, !tbaa !217
  store i32 0, ptr %1014, align 8, !tbaa !218
  br i1 %993, label %1028, label %1027

1027:                                             ; preds = %1000
  store i32 1, ptr %1013, align 4, !tbaa !217
  br label %1037

1028:                                             ; preds = %1000
  %1029 = load ptr, ptr %1022, align 8, !tbaa !201
  %1030 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1029, i32 noundef 87) #10
  %1031 = icmp eq ptr %1030, null
  br i1 %1031, label %1033, label %1032

1032:                                             ; preds = %1028
  store i32 1, ptr %1013, align 4, !tbaa !217
  br label %1033

1033:                                             ; preds = %1032, %1028
  %1034 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1029, i32 noundef 82) #10
  %1035 = icmp eq ptr %1034, null
  br i1 %1035, label %1037, label %1036

1036:                                             ; preds = %1033
  store i32 1, ptr %1014, align 8, !tbaa !218
  br label %1037

1037:                                             ; preds = %1033, %1036, %1027
  %1038 = getelementptr inbounds %struct.format_wanted_type, ptr %1007, i64 0, i32 7
  store ptr null, ptr %1038, align 8, !tbaa !179
  %1039 = getelementptr inbounds %struct.format_wanted_type, ptr %1007, i64 0, i32 8
  store ptr %1016, ptr %1039, align 8, !tbaa !180
  %1040 = trunc i64 %1006 to i32
  %1041 = getelementptr inbounds %struct.format_wanted_type, ptr %1007, i64 0, i32 9
  store i32 %1040, ptr %1041, align 8, !tbaa !181
  %1042 = getelementptr inbounds %struct.format_wanted_type, ptr %1007, i64 0, i32 10
  store ptr null, ptr %1042, align 8, !tbaa !182
  %1043 = icmp eq ptr %1002, null
  br i1 %1043, label %1046, label %1044

1044:                                             ; preds = %1037
  %1045 = getelementptr inbounds %struct.format_wanted_type, ptr %1002, i64 0, i32 10
  store ptr %1007, ptr %1045, align 8, !tbaa !182
  br label %1046

1046:                                             ; preds = %1044, %1037
  %1047 = icmp eq ptr %1001, null
  %1048 = select i1 %1047, ptr %1007, ptr %1001
  %1049 = getelementptr inbounds %struct.format_char_info, ptr %1003, i64 0, i32 6
  %1050 = load ptr, ptr %1049, align 8, !tbaa !219
  %1051 = icmp eq ptr %1050, null
  br i1 %1051, label %1067, label %1052

1052:                                             ; preds = %1046
  %1053 = call ptr @pool_alloc(ptr noundef %6) #11
  %1054 = getelementptr inbounds %struct.format_wanted_type, ptr %1053, i64 0, i32 6
  %1055 = getelementptr inbounds %struct.format_wanted_type, ptr %1053, i64 0, i32 5
  %1056 = getelementptr inbounds %struct.format_wanted_type, ptr %1053, i64 0, i32 2
  %1057 = getelementptr inbounds %struct.format_wanted_type, ptr %1053, i64 0, i32 4
  %1058 = getelementptr inbounds %struct.format_wanted_type, ptr %1053, i64 0, i32 3
  %1059 = getelementptr inbounds %struct.format_wanted_type, ptr %1053, i64 0, i32 1
  %1060 = add i64 %1006, 1
  %1061 = getelementptr inbounds %struct.format_char_info, ptr %1050, i64 0, i32 3, i64 %994, i32 2
  %1062 = load ptr, ptr %1061, align 8, !tbaa !139
  %1063 = load ptr, ptr %1062, align 8, !tbaa !69
  %1064 = getelementptr inbounds %struct.format_char_info, ptr %1050, i64 0, i32 3, i64 %994, i32 1
  %1065 = load ptr, ptr %1064, align 8, !tbaa !211
  %1066 = icmp eq ptr %1018, null
  br i1 %1066, label %997, label %1000, !llvm.loop !220

1067:                                             ; preds = %1046
  store ptr %1018, ptr %9, align 8, !tbaa !69
  br label %1068

1068:                                             ; preds = %1067, %971, %969, %976, %974
  %1069 = phi ptr [ %401, %974 ], [ %401, %976 ], [ %401, %969 ], [ %401, %971 ], [ %1048, %1067 ]
  %1070 = phi i32 [ %403, %974 ], [ %403, %976 ], [ %403, %969 ], [ %403, %971 ], [ %989, %1067 ]
  %1071 = phi i64 [ %404, %974 ], [ %404, %976 ], [ %404, %969 ], [ %404, %971 ], [ %1006, %1067 ]
  %1072 = icmp eq ptr %1069, null
  br i1 %1072, label %1079, label %1073

1073:                                             ; preds = %1068
  %1074 = load ptr, ptr %8, align 8, !tbaa !69
  %1075 = ptrtoint ptr %1074 to i64
  %1076 = ptrtoint ptr %77 to i64
  %1077 = sub i64 %1075, %1076
  %1078 = trunc i64 %1077 to i32
  call fastcc void @check_format_types(ptr noundef nonnull %1069, ptr noundef nonnull %77, i32 noundef %1078) #10
  br label %1079

1079:                                             ; preds = %1068, %1073, %954, %604, %606, %75, %912, %580, %86, %84
  %1080 = phi i32 [ %79, %84 ], [ %79, %86 ], [ %403, %580 ], [ %403, %912 ], [ %79, %75 ], [ %403, %606 ], [ %403, %604 ], [ %403, %954 ], [ %1070, %1073 ], [ %1070, %1068 ]
  %1081 = phi i64 [ %78, %84 ], [ %78, %86 ], [ %404, %580 ], [ %913, %912 ], [ %78, %75 ], [ %404, %606 ], [ %404, %604 ], [ %404, %954 ], [ %1071, %1073 ], [ %1071, %1068 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %20) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  store ptr null, ptr %10, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %20) #9
  %1082 = load ptr, ptr %8, align 8, !tbaa !69
  %1083 = load i8, ptr %1082, align 1, !tbaa !71
  %1084 = icmp eq i8 %1083, 0
  br i1 %1084, label %44, label %75

1085:                                             ; preds = %102, %105, %194, %339, %182, %327, %986, %997, %208, %353, %910, %71, %69, %147, %62
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %20) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  ret void
}

; Function Attrs: optsize
declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_dollar_format_checking(i32 noundef %0, ptr noundef readonly %1) unnamed_addr #1 !prof !63 !PGOFuncName !221 {
  store i32 %0, ptr @dollar_first_arg_num, align 4, !tbaa !64
  store i32 0, ptr @dollar_arguments_count, align 4, !tbaa !64
  store i32 0, ptr @dollar_max_arg_used, align 4, !tbaa !64
  store i1 false, ptr @dollar_format_warned, align 4
  %3 = icmp sgt i32 %0, 0
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %14

6:                                                ; preds = %2, %6
  %7 = phi i32 [ %9, %6 ], [ 0, %2 ]
  %8 = phi ptr [ %11, %6 ], [ %1, %2 ]
  %9 = add nuw nsw i32 %7, 1
  %10 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !71
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6

13:                                               ; preds = %6
  store i32 %9, ptr @dollar_arguments_count, align 4, !tbaa !64
  br label %14

14:                                               ; preds = %13, %2
  %15 = phi i32 [ %9, %13 ], [ 0, %2 ]
  %16 = load i32, ptr @dollar_arguments_alloc, align 4, !tbaa !64
  %17 = icmp slt i32 %16, %15
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load ptr, ptr @dollar_arguments_used, align 8, !tbaa !69
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @free(ptr noundef nonnull %19) #10
  br label %22

22:                                               ; preds = %21, %18
  %23 = load ptr, ptr @dollar_arguments_pointer_p, align 8, !tbaa !69
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @free(ptr noundef nonnull %23) #10
  br label %26

26:                                               ; preds = %25, %22
  store i32 %15, ptr @dollar_arguments_alloc, align 4, !tbaa !64
  %27 = sext i32 %15 to i64
  %28 = tail call ptr @xmalloc(i64 noundef %27) #11
  store ptr %28, ptr @dollar_arguments_used, align 8, !tbaa !69
  %29 = load i32, ptr @dollar_arguments_alloc, align 4, !tbaa !64
  %30 = sext i32 %29 to i64
  %31 = tail call ptr @xmalloc(i64 noundef %30) #11
  store ptr %31, ptr @dollar_arguments_pointer_p, align 8, !tbaa !69
  %32 = load i32, ptr @dollar_arguments_alloc, align 4, !tbaa !64
  br label %33

33:                                               ; preds = %26, %14
  %34 = phi i32 [ %32, %26 ], [ %16, %14 ]
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr @dollar_arguments_used, align 8, !tbaa !69
  %38 = sext i32 %34 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %37, i8 0, i64 %38, i1 false)
  br i1 %5, label %39, label %57

39:                                               ; preds = %36
  %40 = load ptr, ptr @dollar_arguments_pointer_p, align 8, !tbaa !69
  br label %41

41:                                               ; preds = %39, %41
  %42 = phi i64 [ 0, %39 ], [ %55, %41 ]
  %43 = phi ptr [ %1, %39 ], [ %54, %41 ]
  %44 = getelementptr inbounds %struct.tree_list, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !71
  %46 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !71
  %48 = load i64, ptr %47, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 10
  %51 = zext i1 %50 to i8
  %52 = getelementptr inbounds i8, ptr %40, i64 %42
  store i8 %51, ptr %52, align 1, !tbaa !71
  %53 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !71
  %55 = add nuw i64 %42, 1
  %56 = icmp eq ptr %54, null
  br i1 %56, label %57, label %41, !llvm.loop !222

57:                                               ; preds = %41, %36, %33
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finish_dollar_format_checking(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #1 !prof !63 !PGOFuncName !223 {
  %3 = load i32, ptr @dollar_max_arg_used, align 4, !tbaa !64
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %40

5:                                                ; preds = %2
  %6 = icmp eq i32 %1, 0
  %7 = load ptr, ptr @dollar_arguments_used, align 8, !tbaa !69
  br label %8

8:                                                ; preds = %5, %31
  %9 = phi i32 [ %3, %5 ], [ %32, %31 ]
  %10 = phi ptr [ %7, %5 ], [ %33, %31 ]
  %11 = phi i64 [ 0, %5 ], [ %35, %31 ]
  %12 = phi i8 [ 0, %5 ], [ %34, %31 ]
  %13 = getelementptr inbounds i8, ptr %10, i64 %11
  %14 = load i8, ptr %13, align 1, !tbaa !71
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %8
  br i1 %6, label %25, label %17

17:                                               ; preds = %16
  %18 = load i32, ptr @dollar_first_arg_num, align 4, !tbaa !64
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr @dollar_arguments_pointer_p, align 8, !tbaa !69
  %22 = getelementptr inbounds i8, ptr %21, i64 %11
  %23 = load i8, ptr %22, align 1, !tbaa !71
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20, %16
  %26 = trunc i64 %11 to i32
  %27 = add i32 %26, 1
  %28 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.64, i32 noundef %27, i32 noundef %9) #11
  %29 = load ptr, ptr @dollar_arguments_used, align 8, !tbaa !69
  %30 = load i32, ptr @dollar_max_arg_used, align 4, !tbaa !64
  br label %31

31:                                               ; preds = %17, %20, %8, %25
  %32 = phi i32 [ %9, %8 ], [ %30, %25 ], [ %9, %20 ], [ %9, %17 ]
  %33 = phi ptr [ %10, %8 ], [ %29, %25 ], [ %10, %20 ], [ %10, %17 ]
  %34 = phi i8 [ %12, %8 ], [ %12, %25 ], [ 1, %20 ], [ 1, %17 ]
  %35 = add nuw nsw i64 %11, 1
  %36 = sext i32 %32 to i64
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %8, label %38, !llvm.loop !224

38:                                               ; preds = %31
  %39 = icmp eq i8 %34, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %2, %38
  %41 = phi i32 [ %32, %38 ], [ %3, %2 ]
  %42 = load i32, ptr @dollar_first_arg_num, align 4, !tbaa !64
  %43 = icmp ne i32 %42, 0
  %44 = load i32, ptr @dollar_arguments_count, align 4
  %45 = icmp slt i32 %41, %44
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %54

47:                                               ; preds = %40, %38
  %48 = getelementptr inbounds %struct.format_check_results, ptr %0, i64 0, i32 6
  %49 = load i32, ptr %48, align 4, !tbaa !163
  %50 = add nsw i32 %49, -1
  store i32 %50, ptr %48, align 4, !tbaa !163
  %51 = getelementptr inbounds %struct.format_check_results, ptr %0, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !114
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %51, align 4, !tbaa !114
  br label %54

54:                                               ; preds = %47, %40
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @maybe_read_dollar_number(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readonly %4) unnamed_addr #1 !prof !63 !PGOFuncName !225 {
  %6 = load ptr, ptr %0, align 8, !tbaa !69
  %7 = load i8, ptr %6, align 1, !tbaa !71
  %8 = zext i8 %7 to i64
  %9 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !175
  %11 = and i16 %10, 4
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %5
  %14 = sext i8 %7 to i32
  %15 = and i32 %14, 255
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !175
  %19 = and i16 %18, 4
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %49, label %25

21:                                               ; preds = %5
  %22 = icmp eq i32 %1, 0
  br i1 %22, label %145, label %23

23:                                               ; preds = %21
  %24 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.63) #11
  br label %145

25:                                               ; preds = %13, %25
  %26 = phi i32 [ %40, %25 ], [ %14, %13 ]
  %27 = phi i32 [ %32, %25 ], [ 0, %13 ]
  %28 = phi ptr [ %38, %25 ], [ %6, %13 ]
  %29 = phi i32 [ %37, %25 ], [ 0, %13 ]
  %30 = mul nsw i32 %27, 10
  %31 = add i32 %30, -48
  %32 = add i32 %31, %26
  %33 = icmp sgt i32 %32, -1
  %34 = udiv i32 %32, 10
  %35 = icmp eq i32 %34, %27
  %36 = and i1 %33, %35
  %37 = select i1 %36, i32 %29, i32 1
  %38 = getelementptr inbounds i8, ptr %28, i64 1
  %39 = load i8, ptr %38, align 1, !tbaa !71
  %40 = sext i8 %39 to i32
  %41 = and i32 %40, 255
  %42 = zext nneg i32 %41 to i64
  %43 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %42
  %44 = load i16, ptr %43, align 2, !tbaa !175
  %45 = and i16 %44, 4
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %25, !llvm.loop !226

47:                                               ; preds = %25
  %48 = icmp ne i32 %37, 0
  br label %49

49:                                               ; preds = %47, %13
  %50 = phi i1 [ false, %13 ], [ %48, %47 ]
  %51 = phi ptr [ %6, %13 ], [ %38, %47 ]
  %52 = phi i32 [ 0, %13 ], [ %32, %47 ]
  %53 = phi i8 [ %7, %13 ], [ %39, %47 ]
  %54 = icmp eq i8 %53, 36
  br i1 %54, label %59, label %55

55:                                               ; preds = %49
  %56 = icmp eq i32 %1, 0
  br i1 %56, label %145, label %57

57:                                               ; preds = %55
  %58 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.63) #11
  br label %145

59:                                               ; preds = %49
  %60 = getelementptr inbounds i8, ptr %51, i64 1
  store ptr %60, ptr %0, align 8, !tbaa !69
  %61 = load i32, ptr @pedantic, align 4, !tbaa !64
  %62 = icmp eq i32 %61, 0
  %63 = load i1, ptr @dollar_format_warned, align 4
  %64 = select i1 %62, i1 true, i1 %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load i32, ptr @c_language, align 4, !tbaa !64
  %67 = and i32 %66, 2
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %68, ptr @.str.43, ptr @.str.42
  %70 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.65, ptr noundef nonnull %69) #11
  store i1 true, ptr @dollar_format_warned, align 4
  br label %71

71:                                               ; preds = %65, %59
  %72 = icmp eq i32 %52, 0
  %73 = or i1 %50, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = load i32, ptr @dollar_first_arg_num, align 4, !tbaa !64
  %76 = icmp ne i32 %75, 0
  %77 = load i32, ptr @dollar_arguments_count, align 4
  %78 = icmp sgt i32 %52, %77
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %80, label %82

80:                                               ; preds = %74, %71
  %81 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.66) #11
  br label %145

82:                                               ; preds = %74
  %83 = load i32, ptr @dollar_max_arg_used, align 4, !tbaa !64
  %84 = icmp sgt i32 %52, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 %52, ptr @dollar_max_arg_used, align 4, !tbaa !64
  br label %86

86:                                               ; preds = %85, %82
  %87 = phi i32 [ %52, %85 ], [ %83, %82 ]
  %88 = load i32, ptr @dollar_arguments_alloc, align 4, !tbaa !64
  %89 = icmp slt i32 %88, %87
  %90 = load ptr, ptr @dollar_arguments_used, align 8, !tbaa !69
  br i1 %89, label %91, label %108

91:                                               ; preds = %86, %91
  %92 = phi ptr [ %100, %91 ], [ %90, %86 ]
  %93 = phi i32 [ %95, %91 ], [ %88, %86 ]
  %94 = shl nsw i32 %93, 1
  %95 = add nsw i32 %94, 16
  %96 = sext i32 %95 to i64
  %97 = tail call ptr @xrealloc(ptr noundef %92, i64 noundef %96) #11
  store ptr %97, ptr @dollar_arguments_used, align 8, !tbaa !69
  %98 = load ptr, ptr @dollar_arguments_pointer_p, align 8, !tbaa !69
  %99 = tail call ptr @xrealloc(ptr noundef %98, i64 noundef %96) #11
  store ptr %99, ptr @dollar_arguments_pointer_p, align 8, !tbaa !69
  %100 = load ptr, ptr @dollar_arguments_used, align 8, !tbaa !69
  %101 = load i32, ptr @dollar_arguments_alloc, align 4, !tbaa !64
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, ptr %100, i64 %102
  %104 = sub nsw i32 %95, %101
  %105 = sext i32 %104 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %103, i8 0, i64 %105, i1 false)
  store i32 %95, ptr @dollar_arguments_alloc, align 4, !tbaa !64
  %106 = load i32, ptr @dollar_max_arg_used, align 4, !tbaa !64
  %107 = icmp slt i32 %95, %106
  br i1 %107, label %91, label %108, !llvm.loop !227

108:                                              ; preds = %91, %86
  %109 = phi ptr [ %90, %86 ], [ %100, %91 ]
  %110 = getelementptr inbounds %struct.format_kind_info, ptr %4, i64 0, i32 7
  %111 = load i32, ptr %110, align 8, !tbaa !91
  %112 = and i32 %111, 8
  %113 = icmp eq i32 %112, 0
  %114 = sext i32 %52 to i64
  br i1 %113, label %115, label %123

115:                                              ; preds = %108
  %116 = getelementptr i8, ptr %109, i64 %114
  %117 = getelementptr i8, ptr %116, i64 -1
  %118 = load i8, ptr %117, align 1, !tbaa !71
  %119 = icmp eq i8 %118, 1
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  store i8 2, ptr %117, align 1, !tbaa !71
  %121 = load ptr, ptr %4, align 8, !tbaa !95
  %122 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.67, i32 noundef %52, ptr noundef %121) #11
  br label %126

123:                                              ; preds = %108, %115
  %124 = getelementptr i8, ptr %109, i64 %114
  %125 = getelementptr i8, ptr %124, i64 -1
  store i8 1, ptr %125, align 1, !tbaa !71
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i32, ptr @dollar_first_arg_num, align 4, !tbaa !64
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %144, label %129

129:                                              ; preds = %126
  store ptr %2, ptr %3, align 8, !tbaa !69
  %130 = icmp sgt i32 %52, 1
  br i1 %130, label %131, label %140

131:                                              ; preds = %129, %135
  %132 = phi ptr [ %137, %135 ], [ %2, %129 ]
  %133 = phi i32 [ %138, %135 ], [ 1, %129 ]
  %134 = icmp eq ptr %132, null
  br i1 %134, label %143, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.tree_common, ptr %132, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !71
  store ptr %137, ptr %3, align 8, !tbaa !69
  %138 = add nuw nsw i32 %133, 1
  %139 = icmp eq i32 %138, %52
  br i1 %139, label %140, label %131, !llvm.loop !228

140:                                              ; preds = %135, %129
  %141 = phi ptr [ %2, %129 ], [ %137, %135 ]
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %131, %140
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1088, ptr noundef nonnull @.str.7) #11
  br label %145

144:                                              ; preds = %126
  store ptr null, ptr %3, align 8, !tbaa !69
  br label %145

145:                                              ; preds = %144, %140, %143, %55, %21, %80, %57, %23
  %146 = phi i32 [ -1, %57 ], [ -1, %80 ], [ -1, %23 ], [ 0, %21 ], [ 0, %55 ], [ %52, %143 ], [ %52, %140 ], [ %52, %144 ]
  ret i32 %146
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @avoid_dollar_number(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !63 !PGOFuncName !229 {
  %2 = load i8, ptr %0, align 1, !tbaa !71
  %3 = zext i8 %2 to i64
  %4 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %3
  %5 = load i16, ptr %4, align 2, !tbaa !175
  %6 = and i16 %5, 4
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %1, %8
  %9 = phi ptr [ %16, %8 ], [ %0, %1 ]
  %10 = load i8, ptr %9, align 1, !tbaa !71
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !175
  %14 = and i16 %13, 4
  %15 = icmp eq i16 %14, 0
  %16 = getelementptr inbounds i8, ptr %9, i64 1
  br i1 %15, label %17, label %8, !llvm.loop !230

17:                                               ; preds = %8
  %18 = icmp eq i8 %10, 36
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.68) #11
  br label %21

21:                                               ; preds = %17, %1, %19
  %22 = phi i8 [ 1, %19 ], [ 0, %1 ], [ 0, %17 ]
  ret i8 %22
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @get_flag_spec(ptr noundef readonly %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #1 !prof !63 !PGOFuncName !231 {
  %4 = load i32, ptr %0, align 8, !tbaa !232
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
  %15 = load i32, ptr %14, align 4, !tbaa !233
  %16 = icmp eq i32 %15, 0
  br i1 %7, label %21, label %17

17:                                               ; preds = %13
  br i1 %16, label %22, label %18

18:                                               ; preds = %17
  %19 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef %15) #10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %30

21:                                               ; preds = %13
  br i1 %16, label %30, label %22

22:                                               ; preds = %18, %17, %21, %8
  %23 = add nuw i64 %9, 1
  %24 = getelementptr inbounds %struct.format_flag_spec, ptr %0, i64 %23
  %25 = load i32, ptr %24, align 8, !tbaa !232
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %8, !llvm.loop !234

27:                                               ; preds = %22, %3
  %28 = icmp eq ptr %2, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1177, ptr noundef nonnull @.str.7) #11
  br label %30

30:                                               ; preds = %21, %18, %29, %27
  %31 = phi ptr [ null, %27 ], [ null, %29 ], [ %11, %18 ], [ %11, %21 ]
  ret ptr %31
}

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_format_types(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 !prof !63 !PGOFuncName !235 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %237, label %5

5:                                                ; preds = %3, %233
  %6 = phi ptr [ %235, %233 ], [ %0, %3 ]
  %7 = getelementptr inbounds %struct.format_wanted_type, ptr %6, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !180
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !71
  %11 = load ptr, ptr @global_trees, align 16, !tbaa !69
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %233, label %13

13:                                               ; preds = %5
  %14 = load ptr, ptr %6, align 8, !tbaa !177
  %15 = getelementptr inbounds %struct.format_wanted_type, ptr %6, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !181
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2153, ptr noundef nonnull @.str.7) #11
  br label %19

19:                                               ; preds = %13, %18
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !69
  %21 = icmp eq ptr %14, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.format_wanted_type, ptr %6, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !214
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2154, ptr noundef nonnull @.str.7) #11
  br label %27

27:                                               ; preds = %19, %22, %26
  %28 = getelementptr inbounds %struct.format_wanted_type, ptr %6, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !214
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 6), align 8, !tbaa !236
  %33 = tail call ptr %32(ptr noundef %14) #11
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi ptr [ %33, %31 ], [ %14, %27 ]
  %36 = getelementptr inbounds %struct.tree_type, ptr %35, i64 0, i32 16
  %37 = load ptr, ptr %36, align 8, !tbaa !71
  %38 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %8) #11
  %39 = load i32, ptr %28, align 4, !tbaa !214
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %133

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.format_wanted_type, ptr %6, i64 0, i32 5
  %43 = getelementptr inbounds %struct.format_wanted_type, ptr %6, i64 0, i32 6
  br label %44

44:                                               ; preds = %41, %129
  %45 = phi i32 [ %39, %41 ], [ %131, %129 ]
  %46 = phi i32 [ 0, %41 ], [ %130, %129 ]
  %47 = phi ptr [ %38, %41 ], [ %88, %129 ]
  %48 = phi ptr [ %10, %41 ], [ %54, %129 ]
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 10
  br i1 %51, label %52, label %120

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !71
  %55 = load ptr, ptr @global_trees, align 16, !tbaa !69
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %133, label %57

57:                                               ; preds = %52
  %58 = load i32, ptr %42, align 4, !tbaa !217
  %59 = icmp ne i32 %58, 0
  %60 = icmp eq i32 %46, 0
  %61 = and i1 %60, %59
  %62 = icmp ne ptr %47, null
  %63 = select i1 %61, i1 %62, i1 false
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = tail call i32 @integer_zerop(ptr noundef nonnull %47) #11
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.69, i32 noundef %16) #11
  br label %69

69:                                               ; preds = %67, %64, %57
  %70 = load i32, ptr %43, align 8, !tbaa !218
  %71 = icmp ne i32 %70, 0
  %72 = and i1 %60, %71
  %73 = select i1 %72, i1 %62, i1 false
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = tail call i32 @integer_zerop(ptr noundef nonnull %47) #11
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.70, i32 noundef %16) #11
  br label %80

79:                                               ; preds = %69
  br i1 %62, label %80, label %87

80:                                               ; preds = %74, %77, %79
  %81 = load i64, ptr %47, align 8
  %82 = and i64 %81, 65535
  %83 = icmp eq i64 %82, 121
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.tree_exp, ptr %47, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !71
  br label %87

87:                                               ; preds = %79, %80, %84
  %88 = phi ptr [ %86, %84 ], [ null, %80 ], [ null, %79 ]
  %89 = load i32, ptr %42, align 4, !tbaa !217
  %90 = icmp ne i32 %89, 0
  %91 = and i1 %60, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %87
  %93 = load i64, ptr %54, align 8
  %94 = and i64 %93, 1048576
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %126

96:                                               ; preds = %92
  %97 = icmp eq ptr %88, null
  br i1 %97, label %129, label %98

98:                                               ; preds = %96
  %99 = load i64, ptr %88, align 8
  %100 = and i64 %99, 65535
  %101 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !64
  switch i32 %102, label %129 [
    i32 1, label %126
    i32 3, label %103
  ]

103:                                              ; preds = %98
  %104 = and i64 %99, 1048576
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %129, label %126

106:                                              ; preds = %87
  %107 = icmp ne i32 %46, 0
  %108 = load i32, ptr @pedantic, align 4
  %109 = icmp ne i32 %108, 0
  %110 = select i1 %107, i1 %109, i1 false
  br i1 %110, label %111, label %129

111:                                              ; preds = %106
  %112 = load i64, ptr %54, align 8
  %113 = and i64 %112, 1572864
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.tree_type, ptr %54, i64 0, i32 6
  %117 = load i32, ptr %116, align 4
  %118 = and i32 %117, 8192
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %129, label %126

120:                                              ; preds = %44
  %121 = getelementptr inbounds %struct.format_wanted_type, ptr %6, i64 0, i32 7
  %122 = load ptr, ptr %121, align 8, !tbaa !179
  %123 = getelementptr inbounds %struct.format_wanted_type, ptr %6, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !213
  tail call fastcc void @format_type_warning(ptr noundef %122, ptr noundef %1, i32 noundef %2, ptr noundef %37, i32 noundef %45, ptr noundef %124, ptr noundef %10, i32 noundef %16) #10
  %125 = load i32, ptr %28, align 4, !tbaa !214
  br label %133

126:                                              ; preds = %111, %115, %92, %103, %98
  %127 = phi ptr [ @.str.71, %98 ], [ @.str.71, %103 ], [ @.str.71, %92 ], [ @.str.72, %115 ], [ @.str.72, %111 ]
  %128 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull %127, i32 noundef %16) #11
  br label %129

129:                                              ; preds = %126, %96, %103, %98, %115, %106
  %130 = add nuw nsw i32 %46, 1
  %131 = load i32, ptr %28, align 4, !tbaa !214
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %44, label %133, !llvm.loop !244

133:                                              ; preds = %129, %52, %34, %120
  %134 = phi i32 [ %125, %120 ], [ %39, %34 ], [ %131, %129 ], [ %45, %52 ]
  %135 = phi i32 [ %46, %120 ], [ 0, %34 ], [ %130, %129 ], [ %46, %52 ]
  %136 = phi ptr [ %48, %120 ], [ %10, %34 ], [ %54, %52 ], [ %54, %129 ]
  %137 = icmp slt i32 %135, %134
  br i1 %137, label %233, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.tree_type, ptr %136, i64 0, i32 16
  %140 = load ptr, ptr %139, align 8, !tbaa !71
  %141 = getelementptr inbounds %struct.format_wanted_type, ptr %6, i64 0, i32 4
  %142 = load i32, ptr %141, align 8, !tbaa !215
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %153, label %144

144:                                              ; preds = %138
  %145 = load ptr, ptr @integer_types, align 16, !tbaa !69
  %146 = icmp eq ptr %140, %145
  %147 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 1), align 8
  %148 = icmp eq ptr %140, %147
  %149 = select i1 %146, i1 true, i1 %148
  br i1 %149, label %153, label %150

150:                                              ; preds = %144
  %151 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 2), align 16, !tbaa !69
  %152 = icmp eq ptr %140, %151
  br label %153

153:                                              ; preds = %144, %150, %138
  %154 = phi i1 [ false, %138 ], [ true, %144 ], [ %152, %150 ]
  %155 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 24), align 8, !tbaa !245
  %156 = tail call i32 %155(ptr noundef %37, ptr noundef %140) #11
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %233

158:                                              ; preds = %153
  %159 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !69
  %160 = icmp eq ptr %37, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  %162 = load i32, ptr @pedantic, align 4, !tbaa !64
  %163 = icmp eq i32 %162, 0
  %164 = icmp eq i32 %135, 1
  %165 = select i1 %164, i1 %154, i1 false
  %166 = select i1 %163, i1 true, i1 %165
  br i1 %166, label %233, label %167

167:                                              ; preds = %161, %158
  %168 = load i64, ptr %37, align 8
  %169 = and i64 %168, 65535
  %170 = icmp eq i64 %169, 8
  br i1 %170, label %171, label %192

171:                                              ; preds = %167
  %172 = load i64, ptr %140, align 8
  %173 = and i64 %172, 65535
  %174 = icmp eq i64 %173, 8
  br i1 %174, label %175, label %192

175:                                              ; preds = %171
  %176 = load i32, ptr @pedantic, align 4, !tbaa !64
  %177 = icmp eq i32 %176, 0
  %178 = icmp eq i32 %135, 0
  %179 = or i1 %178, %177
  %180 = icmp eq i32 %135, 1
  %181 = select i1 %180, i1 %154, i1 false
  %182 = select i1 %179, i1 true, i1 %181
  br i1 %182, label %183, label %192

183:                                              ; preds = %175
  %184 = and i64 %168, 2097152
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %183
  %187 = tail call ptr @c_common_unsigned_type(ptr noundef nonnull %140) #11
  %188 = icmp eq ptr %37, %187
  br i1 %188, label %233, label %192

189:                                              ; preds = %183
  %190 = tail call ptr @c_common_signed_type(ptr noundef nonnull %140) #11
  %191 = icmp eq ptr %37, %190
  br i1 %191, label %233, label %192

192:                                              ; preds = %175, %189, %186, %171, %167
  %193 = load ptr, ptr @integer_types, align 16, !tbaa !69
  %194 = icmp eq ptr %37, %193
  br i1 %194, label %195, label %201

195:                                              ; preds = %192
  %196 = load i32, ptr @pedantic, align 4, !tbaa !64
  %197 = icmp eq i32 %196, 0
  %198 = icmp ult i32 %135, 2
  %199 = or i1 %198, %197
  %200 = select i1 %199, i1 %154, i1 false
  br i1 %200, label %233, label %201

201:                                              ; preds = %195, %192
  %202 = getelementptr inbounds %struct.format_wanted_type, ptr %6, i64 0, i32 2
  %203 = load i32, ptr %202, align 8, !tbaa !216
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %227, label %205

205:                                              ; preds = %201
  %206 = load i64, ptr %140, align 8
  %207 = trunc i64 %206 to i32
  %208 = and i32 %207, 65535
  %209 = load i64, ptr %37, align 8
  %210 = trunc i64 %209 to i32
  %211 = and i32 %210, 65535
  %212 = icmp eq i32 %208, %211
  br i1 %212, label %219, label %213

213:                                              ; preds = %205
  %214 = add nsw i32 %208, -6
  %215 = icmp ult i32 %214, 3
  %216 = add nsw i32 %211, -6
  %217 = icmp ult i32 %216, 3
  %218 = select i1 %215, i1 %217, i1 false
  br i1 %218, label %219, label %227

219:                                              ; preds = %213, %205
  %220 = getelementptr inbounds %struct.tree_type, ptr %140, i64 0, i32 6
  %221 = load i32, ptr %220, align 4
  %222 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 6
  %223 = load i32, ptr %222, align 4
  %224 = xor i32 %223, %221
  %225 = and i32 %224, 1023
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %233, label %227

227:                                              ; preds = %213, %219, %201
  %228 = getelementptr inbounds %struct.format_wanted_type, ptr %6, i64 0, i32 7
  %229 = load ptr, ptr %228, align 8, !tbaa !179
  %230 = load i32, ptr %28, align 4, !tbaa !214
  %231 = getelementptr inbounds %struct.format_wanted_type, ptr %6, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !213
  tail call fastcc void @format_type_warning(ptr noundef %229, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %37, i32 noundef %230, ptr noundef %232, ptr noundef %10, i32 noundef %16) #10
  br label %233

233:                                              ; preds = %219, %195, %186, %189, %161, %153, %133, %5, %227
  %234 = getelementptr inbounds %struct.format_wanted_type, ptr %6, i64 0, i32 10
  %235 = load ptr, ptr %234, align 8, !tbaa !182
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %5, !llvm.loop !246

237:                                              ; preds = %233, %3
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @format_type_warning(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) unnamed_addr #1 !prof !63 !PGOFuncName !247 {
  %9 = icmp eq ptr %5, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !71
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %10
  %15 = load i64, ptr %12, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 35
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.tree_decl_minimal, ptr %12, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !71
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !248
  %24 = tail call ptr %23(ptr noundef nonnull %12, i32 noundef 2) #11
  %25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %24) #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 16
  %29 = load ptr, ptr %28, align 8, !tbaa !71
  br label %30

30:                                               ; preds = %27, %22, %18, %14, %10, %8
  %31 = phi ptr [ %6, %22 ], [ %29, %27 ], [ %6, %18 ], [ %6, %14 ], [ %6, %10 ], [ %6, %8 ]
  %32 = add nsw i32 %4, 2
  %33 = sext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  %35 = icmp eq i32 %4, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i8 0, ptr %34, align 16, !tbaa !71
  br label %49

37:                                               ; preds = %30
  %38 = load i32, ptr @c_language, align 4, !tbaa !64
  %39 = and i32 %38, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = sext i32 %4 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %34, i8 42, i64 %42, i1 false)
  %43 = getelementptr inbounds i8, ptr %34, i64 %42
  store i8 0, ptr %43, align 1, !tbaa !71
  br label %49

44:                                               ; preds = %37
  store i8 32, ptr %34, align 16, !tbaa !71
  %45 = getelementptr inbounds i8, ptr %34, i64 1
  %46 = sext i32 %4 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %45, i8 42, i64 %46, i1 false)
  %47 = getelementptr i8, ptr %34, i64 %46
  %48 = getelementptr i8, ptr %47, i64 1
  store i8 0, ptr %48, align 1, !tbaa !71
  br label %49

49:                                               ; preds = %41, %44, %36
  %50 = icmp eq ptr %0, null
  br i1 %9, label %56, label %51

51:                                               ; preds = %49
  br i1 %50, label %54, label %52

52:                                               ; preds = %51
  %53 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.73, ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %34, i32 noundef %7, ptr noundef %31) #11
  br label %61

54:                                               ; preds = %51
  %55 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.74, i32 noundef %2, ptr noundef %1, ptr noundef nonnull %5, ptr noundef nonnull %34, i32 noundef %7, ptr noundef %31) #11
  br label %61

56:                                               ; preds = %49
  br i1 %50, label %59, label %57

57:                                               ; preds = %56
  %58 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.75, ptr noundef nonnull %0, ptr noundef %3, ptr noundef nonnull %34, i32 noundef %7, ptr noundef %31) #11
  br label %61

59:                                               ; preds = %56
  %60 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.76, i32 noundef %2, ptr noundef %1, ptr noundef %3, ptr noundef nonnull %34, i32 noundef %7, ptr noundef %31) #11
  br label %61

61:                                               ; preds = %57, %59, %52, %54
  ret void
}

; Function Attrs: optsize
declare ptr @c_common_unsigned_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @c_common_signed_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @maybe_get_identifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @identifier_global_value(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find_length_info_modifier_index(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !130 !PGOFuncName !249 {
  %2 = load ptr, ptr %0, align 8, !tbaa !250
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4, !prof !251

4:                                                ; preds = %1, %10
  %5 = phi ptr [ %13, %10 ], [ %2, %1 ]
  %6 = phi i32 [ %11, %10 ], [ 0, %1 ]
  %7 = phi ptr [ %12, %10 ], [ %0, %1 ]
  %8 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %5, i32 noundef 119) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %16, !prof !252

10:                                               ; preds = %4
  %11 = add i32 %6, 1
  %12 = getelementptr inbounds %struct.format_length_info, ptr %7, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !250
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %4, !prof !253, !llvm.loop !254

15:                                               ; preds = %10, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2389, ptr noundef nonnull @.str.7) #11
  br label %16

16:                                               ; preds = %4, %15
  %17 = phi i32 [ 0, %15 ], [ %6, %4 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find_char_info_specifier_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !63 !PGOFuncName !255 {
  %3 = load ptr, ptr %0, align 8, !tbaa !195
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2, %11
  %6 = phi ptr [ %14, %11 ], [ %3, %2 ]
  %7 = phi i32 [ %12, %11 ], [ 0, %2 ]
  %8 = phi ptr [ %13, %11 ], [ %0, %2 ]
  %9 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %6, i32 noundef %1) #10
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  %12 = add i32 %7, 1
  %13 = getelementptr inbounds %struct.format_char_info, ptr %8, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !195
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !256

16:                                               ; preds = %11, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2370, ptr noundef nonnull @.str.7) #11
  br label %17

17:                                               ; preds = %5, %16
  %18 = phi i32 [ 0, %16 ], [ %7, %5 ]
  ret i32 %18
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!62}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61}
!35 = !{ptr @handle_format_arg_attribute, ptr @get_constant, i64 6}
!36 = !{ptr @handle_format_arg_attribute, ptr @check_format_string, i64 5}
!37 = !{ptr @handle_format_arg_attribute, ptr @error, i64 1}
!38 = !{ptr @get_constant, ptr @fancy_abort, i64 1}
!39 = !{ptr @check_format_string, ptr @error, i64 1}
!40 = !{ptr @decode_format_attr, ptr @fancy_abort, i64 3}
!41 = !{ptr @decode_format_attr, ptr @error, i64 4}
!42 = !{ptr @decode_format_attr, ptr @convert_format_name_to_system_name, i64 69}
!43 = !{ptr @decode_format_attr, ptr @decode_format_type, i64 69}
!44 = !{ptr @decode_format_attr, ptr @warning, i64 1}
!45 = !{ptr @decode_format_attr, ptr @get_constant, i64 135}
!46 = !{ptr @decode_format_type, ptr @convert_format_name_to_system_name, i64 70}
!47 = !{ptr @decode_format_type, ptr @strlen, i64 210}
!48 = !{ptr @decode_format_type, ptr @strcmp, i64 209}
!49 = !{ptr @handle_format_attribute, ptr @decode_format_attr, i64 70}
!50 = !{ptr @handle_format_attribute, ptr @check_format_string, i64 68}
!51 = !{ptr @handle_format_attribute, ptr @error, i64 1}
!52 = !{ptr @handle_format_attribute, ptr @xmemdup, i64 4}
!53 = !{ptr @handle_format_attribute, ptr @init_dynamic_asm_fprintf_info, i64 4}
!54 = !{ptr @handle_format_attribute, ptr @init_dynamic_gfc_info, i64 1}
!55 = !{ptr @handle_format_attribute, ptr @init_dynamic_diag_info, i64 1}
!56 = !{ptr @init_dynamic_asm_fprintf_info, ptr @maybe_get_identifier, i64 1}
!57 = !{ptr @convert_format_name_to_system_name, ptr @strncmp, i64 138}
!58 = !{ptr @convert_format_name_to_system_name, ptr @cmp_attribs, i64 318}
!59 = !{ptr @cmp_attribs, ptr @strlen, i64 645}
!60 = !{ptr @cmp_attribs, ptr @strncmp, i64 140}
!61 = !{ptr @find_length_info_modifier_index, ptr @strchr, i64 1}
!62 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!63 = !{!"function_entry_count", i64 0}
!64 = !{!65, !65, i64 0}
!65 = !{!"int", !66, i64 0}
!66 = !{!"omnipotent char", !67, i64 0}
!67 = !{!"Simple C/C++ TBAA"}
!68 = !{!"function_entry_count", i64 6}
!69 = !{!70, !70, i64 0}
!70 = !{!"any pointer", !66, i64 0}
!71 = !{!66, !66, i64 0}
!72 = !{!73, !73, i64 0}
!73 = !{!"long", !66, i64 0}
!74 = !{i8 0, i8 2}
!75 = !{!"branch_weights", i32 1, i32 7}
!76 = !{!"branch_weights", i32 7, i32 1}
!77 = !{!"function_entry_count", i64 146}
!78 = !{!"c-format.c:get_constant"}
!79 = !{!"branch_weights", i32 147, i32 1}
!80 = !{!"function_entry_count", i64 76}
!81 = !{!"c-format.c:check_format_string"}
!82 = !{!"branch_weights", i32 1, i32 7720}
!83 = !{!"branch_weights", i32 7720, i32 1884}
!84 = distinct !{!84, !85}
!85 = !{!"llvm.loop.mustprogress"}
!86 = !{!"branch_weights", i32 1, i32 77}
!87 = !{!"branch_weights", i32 77, i32 1}
!88 = distinct !{!88, !85}
!89 = !{!90, !65, i64 0}
!90 = !{!"function_format_info", !65, i64 0, !73, i64 8, !73, i64 16}
!91 = !{!92, !65, i64 56}
!92 = !{!"", !70, i64 0, !70, i64 8, !70, i64 16, !70, i64 24, !70, i64 32, !70, i64 40, !70, i64 48, !65, i64 56, !65, i64 60, !65, i64 64, !65, i64 68, !65, i64 72, !65, i64 76, !65, i64 80, !70, i64 88, !70, i64 96}
!93 = distinct !{!93, !85}
!94 = distinct !{!94, !85}
!95 = !{!92, !70, i64 0}
!96 = distinct !{!96, !85}
!97 = !{!"function_entry_count", i64 70}
!98 = !{!"c-format.c:decode_format_attr"}
!99 = !{!"branch_weights", i32 71, i32 1}
!100 = !{!"branch_weights", i32 1, i32 71}
!101 = !{!90, !73, i64 16}
!102 = !{!"branch_weights", i32 33, i32 39}
!103 = !{!90, !73, i64 8}
!104 = !{!"branch_weights", i32 39, i32 1}
!105 = !{!"c-format.c:check_format_info"}
!106 = !{!107, !70, i64 0}
!107 = !{!"", !70, i64 0, !70, i64 8, !70, i64 16}
!108 = !{!107, !70, i64 8}
!109 = !{!107, !70, i64 16}
!110 = !{!111, !65, i64 0}
!111 = !{!"", !65, i64 0, !65, i64 4, !65, i64 8, !65, i64 12, !65, i64 16, !65, i64 20, !65, i64 24}
!112 = distinct !{!112, !85}
!113 = !{!111, !65, i64 4}
!114 = !{!111, !65, i64 8}
!115 = !{!111, !65, i64 16}
!116 = !{!111, !65, i64 12}
!117 = !{!111, !65, i64 20}
!118 = !{!"c-format.c:decode_format_type"}
!119 = !{!"branch_weights", i32 70, i32 142}
!120 = !{!"branch_weights", i32 6, i32 137}
!121 = !{!"branch_weights", i32 2, i32 5}
!122 = !{!"branch_weights", i32 2, i32 1}
!123 = !{!"branch_weights", i32 1, i32 210}
!124 = distinct !{!124, !85}
!125 = !{!"branch_weights", i32 39, i32 49}
!126 = distinct !{!126, !85}
!127 = !{!"branch_weights", i32 3, i32 285}
!128 = !{!"branch_weights", i32 382984789, i32 -618436046}
!129 = !{!"branch_weights", i32 1, i32 20, i32 5, i32 1, i32 1, i32 1, i32 1}
!130 = !{!"function_entry_count", i64 1}
!131 = !{!"c-format.c:init_dynamic_asm_fprintf_info"}
!132 = !{!"branch_weights", i32 1, i32 2}
!133 = !{!"branch_weights", i32 5, i32 1}
!134 = !{!135, !65, i64 8}
!135 = !{!"", !70, i64 0, !65, i64 8, !65, i64 12, !70, i64 16, !65, i64 24, !65, i64 28, !65, i64 32}
!136 = !{!92, !70, i64 8}
!137 = !{!"c-format.c:init_dynamic_gfc_info"}
!138 = !{!92, !70, i64 16}
!139 = !{!140, !70, i64 16}
!140 = !{!"", !65, i64 0, !70, i64 8, !70, i64 16}
!141 = !{!142, !65, i64 8}
!142 = !{!"format_char_info", !70, i64 0, !65, i64 8, !65, i64 12, !66, i64 16, !70, i64 304, !70, i64 312, !70, i64 320}
!143 = !{!"c-format.c:init_dynamic_diag_info"}
!144 = !{!"function_entry_count", i64 140}
!145 = !{!"c-format.c:convert_format_name_to_system_name"}
!146 = !{!"branch_weights", i32 1, i32 141}
!147 = !{!148, !70, i64 0}
!148 = !{!"", !70, i64 0, !70, i64 8}
!149 = !{!"branch_weights", i32 3, i32 194}
!150 = distinct !{!150, !85}
!151 = !{!"branch_weights", i32 128, i32 70}
!152 = !{!148, !70, i64 8}
!153 = !{!"branch_weights", i32 59, i32 70}
!154 = !{!"function_entry_count", i64 323}
!155 = !{!"c-format.c:cmp_attribs"}
!156 = !{!"branch_weights", i32 1, i32 324}
!157 = !{!"branch_weights", i32 324, i32 1}
!158 = !{!"branch_weights", i32 57, i32 268}
!159 = !{!"branch_weights", i32 57, i32 1}
!160 = !{!"branch_weights", i32 141, i32 184}
!161 = !{!"c-format.c:check_format_arg"}
!162 = distinct !{!162, !85}
!163 = !{!111, !65, i64 24}
!164 = distinct !{!164, !85}
!165 = !{!"c-format.c:check_format_info_main"}
!166 = !{!92, !70, i64 40}
!167 = !{!92, !70, i64 48}
!168 = !{!92, !70, i64 24}
!169 = !{!170, !70, i64 16}
!170 = !{!"", !65, i64 0, !65, i64 4, !65, i64 8, !70, i64 16, !70, i64 24, !65, i64 32}
!171 = !{!170, !65, i64 8}
!172 = distinct !{!172, !85}
!173 = !{!92, !65, i64 60}
!174 = !{!92, !70, i64 88}
!175 = !{!176, !176, i64 0}
!176 = !{!"short", !66, i64 0}
!177 = !{!178, !70, i64 0}
!178 = !{!"format_wanted_type", !70, i64 0, !70, i64 8, !65, i64 16, !65, i64 20, !65, i64 24, !65, i64 28, !65, i64 32, !70, i64 40, !70, i64 48, !65, i64 56, !70, i64 64}
!179 = !{!178, !70, i64 40}
!180 = !{!178, !70, i64 48}
!181 = !{!178, !65, i64 56}
!182 = !{!178, !70, i64 64}
!183 = distinct !{!183, !85}
!184 = !{!92, !65, i64 64}
!185 = distinct !{!185, !85}
!186 = !{!92, !65, i64 68}
!187 = !{!92, !70, i64 96}
!188 = distinct !{!188, !85}
!189 = !{!92, !65, i64 80}
!190 = distinct !{!190, !85}
!191 = !{!135, !65, i64 32}
!192 = !{!92, !65, i64 76}
!193 = !{!92, !70, i64 32}
!194 = distinct !{!194, !85}
!195 = !{!142, !70, i64 0}
!196 = distinct !{!196, !85}
!197 = !{!142, !65, i64 12}
!198 = !{!142, !70, i64 304}
!199 = !{!170, !65, i64 32}
!200 = !{!170, !70, i64 24}
!201 = !{!142, !70, i64 312}
!202 = distinct !{!202, !85}
!203 = !{!92, !65, i64 72}
!204 = !{!205, !65, i64 0}
!205 = !{!"", !65, i64 0, !65, i64 4, !65, i64 8, !65, i64 12}
!206 = !{!205, !65, i64 4}
!207 = !{!205, !65, i64 12}
!208 = !{!205, !65, i64 8}
!209 = distinct !{!209, !85}
!210 = distinct !{!210, !85}
!211 = !{!140, !70, i64 8}
!212 = !{!140, !65, i64 0}
!213 = !{!178, !70, i64 8}
!214 = !{!178, !65, i64 20}
!215 = !{!178, !65, i64 24}
!216 = !{!178, !65, i64 16}
!217 = !{!178, !65, i64 28}
!218 = !{!178, !65, i64 32}
!219 = !{!142, !70, i64 320}
!220 = distinct !{!220, !85}
!221 = !{!"c-format.c:init_dollar_format_checking"}
!222 = distinct !{!222, !85}
!223 = !{!"c-format.c:finish_dollar_format_checking"}
!224 = distinct !{!224, !85}
!225 = !{!"c-format.c:maybe_read_dollar_number"}
!226 = distinct !{!226, !85}
!227 = distinct !{!227, !85}
!228 = distinct !{!228, !85}
!229 = !{!"c-format.c:avoid_dollar_number"}
!230 = distinct !{!230, !85}
!231 = !{!"c-format.c:get_flag_spec"}
!232 = !{!170, !65, i64 0}
!233 = !{!170, !65, i64 4}
!234 = distinct !{!234, !85}
!235 = !{!"c-format.c:check_format_types"}
!236 = !{!237, !70, i64 480}
!237 = !{!"lang_hooks", !70, i64 0, !73, i64 8, !70, i64 16, !70, i64 24, !70, i64 32, !70, i64 40, !70, i64 48, !70, i64 56, !70, i64 64, !70, i64 72, !70, i64 80, !70, i64 88, !70, i64 96, !70, i64 104, !70, i64 112, !70, i64 120, !70, i64 128, !70, i64 136, !70, i64 144, !70, i64 152, !70, i64 160, !70, i64 168, !70, i64 176, !70, i64 184, !70, i64 192, !70, i64 200, !70, i64 208, !70, i64 216, !70, i64 224, !70, i64 232, !238, i64 240, !239, i64 248, !240, i64 256, !241, i64 272, !242, i64 432, !243, i64 560, !70, i64 584, !70, i64 592, !70, i64 600, !70, i64 608, !70, i64 616, !70, i64 624, !70, i64 632, !70, i64 640, !70, i64 648, !70, i64 656, !70, i64 664, !66, i64 672}
!238 = !{!"lang_hooks_for_tree_inlining", !70, i64 0}
!239 = !{!"lang_hooks_for_callgraph", !70, i64 0}
!240 = !{!"lang_hooks_for_tree_dump", !70, i64 0, !70, i64 8}
!241 = !{!"lang_hooks_for_decls", !70, i64 0, !70, i64 8, !70, i64 16, !70, i64 24, !70, i64 32, !70, i64 40, !70, i64 48, !70, i64 56, !70, i64 64, !70, i64 72, !70, i64 80, !70, i64 88, !70, i64 96, !70, i64 104, !70, i64 112, !70, i64 120, !70, i64 128, !70, i64 136, !70, i64 144, !70, i64 152}
!242 = !{!"lang_hooks_for_types", !70, i64 0, !70, i64 8, !70, i64 16, !70, i64 24, !70, i64 32, !70, i64 40, !70, i64 48, !70, i64 56, !70, i64 64, !70, i64 72, !70, i64 80, !70, i64 88, !70, i64 96, !70, i64 104, !70, i64 112, !66, i64 120}
!243 = !{!"lang_hooks_for_lto", !70, i64 0, !70, i64 8, !70, i64 16}
!244 = distinct !{!244, !85}
!245 = !{!237, !70, i64 192}
!246 = distinct !{!246, !85}
!247 = !{!"c-format.c:format_type_warning"}
!248 = !{!237, !70, i64 176}
!249 = !{!"c-format.c:find_length_info_modifier_index"}
!250 = !{!135, !70, i64 0}
!251 = !{!"branch_weights", i32 1, i32 127}
!252 = !{!"branch_weights", i32 2, i32 2}
!253 = !{!"branch_weights", i32 127, i32 257}
!254 = distinct !{!254, !85}
!255 = !{!"c-format.c:find_char_info_specifier_index"}
!256 = distinct !{!256, !85}
