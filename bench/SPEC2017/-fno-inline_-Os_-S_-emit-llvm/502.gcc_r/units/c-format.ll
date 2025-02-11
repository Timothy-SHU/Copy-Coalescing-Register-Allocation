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
define dso_local void @set_Wformat(i32 noundef %0) local_unnamed_addr #0 {
  store i32 %0, ptr @warn_format, align 4, !tbaa !5
  store i32 %0, ptr @warn_format_extra_args, align 4, !tbaa !5
  store i32 %0, ptr @warn_format_zero_length, align 4, !tbaa !5
  store i32 %0, ptr @warn_format_contains_nul, align 4, !tbaa !5
  %2 = icmp eq i32 %0, 1
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  store i32 %0, ptr @warn_format_nonliteral, align 4, !tbaa !5
  store i32 %0, ptr @warn_format_security, align 4, !tbaa !5
  store i32 %0, ptr @warn_format_y2k, align 4, !tbaa !5
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1, %3
  store i32 %0, ptr @warn_nonnull, align 4, !tbaa !5
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @handle_format_arg_attribute(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #1 {
  %6 = alloca i64, align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !9
  %8 = getelementptr inbounds %struct.tree_list, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  store i64 0, ptr %6, align 8, !tbaa !12
  %10 = call fastcc zeroext i8 @get_constant(ptr noundef %9, ptr noundef nonnull %6, i32 noundef 0) #10, !range !14
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %36, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i64, ptr %6, align 8, !tbaa !12
  %18 = tail call fastcc zeroext i8 @check_format_string(ptr noundef nonnull %14, i64 noundef %17, i32 noundef %3, ptr noundef %4) #10, !range !14
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %39, label %20

20:                                               ; preds = %16, %12
  %21 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !11
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 10
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !11
  %29 = getelementptr inbounds %struct.tree_type, ptr %28, i64 0, i32 16
  %30 = load ptr, ptr %29, align 8, !tbaa !11
  %31 = load ptr, ptr @integer_types, align 16, !tbaa !9
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %26, %20
  %34 = and i32 %3, 16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %5
  %37 = phi ptr [ @.str, %5 ], [ @.str.1, %33 ]
  tail call void (ptr, ...) @error(ptr noundef nonnull %37) #11
  br label %38

38:                                               ; preds = %36, %33
  store i8 1, ptr %4, align 1, !tbaa !11
  br label %39

39:                                               ; preds = %38, %26, %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  ret ptr null
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @get_constant(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #1 {
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 23
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !11
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %7, %3
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 160, ptr noundef nonnull @.str.7) #11
  br label %17

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !11
  store i64 %16, ptr %1, align 8, !tbaa !12
  br label %17

17:                                               ; preds = %13, %11, %14
  %18 = phi i8 [ 1, %14 ], [ 0, %11 ], [ 0, %13 ]
  ret i8 %18
}

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @check_format_string(ptr noundef readonly %0, i64 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #1 {
  %5 = icmp eq i64 %1, 1
  %6 = icmp eq ptr %0, null
  %7 = or i1 %5, %6
  br i1 %7, label %17, label %8

8:                                                ; preds = %4, %8
  %9 = phi i64 [ %13, %8 ], [ 1, %4 ]
  %10 = phi ptr [ %12, %8 ], [ %0, %4 ]
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  %13 = add i64 %9, 1
  %14 = icmp eq i64 %13, %1
  %15 = icmp eq ptr %12, null
  %16 = select i1 %14, i1 true, i1 %15
  br i1 %16, label %17, label %8, !llvm.loop !15

17:                                               ; preds = %8, %4
  %18 = phi ptr [ %0, %4 ], [ %12, %8 ]
  %19 = phi i1 [ %6, %4 ], [ %15, %8 ]
  br i1 %19, label %33, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.tree_list, ptr %18, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !11
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 10
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !11
  %29 = getelementptr inbounds %struct.tree_type, ptr %28, i64 0, i32 16
  %30 = load ptr, ptr %29, align 8, !tbaa !11
  %31 = load ptr, ptr @integer_types, align 16, !tbaa !9
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %38, label %33

33:                                               ; preds = %26, %20, %17
  %34 = and i32 %2, 16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.8) #11
  br label %37

37:                                               ; preds = %36, %33
  store i8 1, ptr %3, align 1, !tbaa !11
  br label %38

38:                                               ; preds = %26, %37
  %39 = phi i8 [ 0, %37 ], [ 1, %26 ]
  ret i8 %39
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @check_function_format(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #1 {
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
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  %14 = call i32 @is_attribute_p(ptr noundef nonnull @.str.2, ptr noundef %13) #11
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %108, label %16

16:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  %17 = getelementptr inbounds %struct.tree_list, ptr %11, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !11
  %19 = call fastcc zeroext i8 @decode_format_attr(ptr noundef %18, ptr noundef nonnull %4, i32 noundef 1) #10, !range !14
  %20 = load i32, ptr @warn_format, align 4, !tbaa !5
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %22

22:                                               ; preds = %16
  br i1 %7, label %23, label %31

23:                                               ; preds = %22, %23
  %24 = phi i64 [ %26, %23 ], [ %9, %22 ]
  %25 = phi ptr [ %29, %23 ], [ null, %22 ]
  %26 = add nsw i64 %24, -1
  %27 = getelementptr inbounds ptr, ptr %2, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !9
  %29 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %28, ptr noundef %25) #11
  %30 = icmp sgt i64 %24, 1
  br i1 %30, label %23, label %31, !llvm.loop !17

31:                                               ; preds = %23, %22
  %32 = phi ptr [ null, %22 ], [ %29, %23 ]
  call fastcc void @check_format_info(ptr noundef nonnull %4, ptr noundef %32) #10
  br label %33

33:                                               ; preds = %31, %16
  %34 = load i32, ptr @warn_missing_format_attribute, align 4, !tbaa !5
  %35 = icmp ne i32 %34, 0
  %36 = load i64, ptr %8, align 8
  %37 = icmp eq i64 %36, 0
  %38 = select i1 %35, i1 %37, i1 false
  br i1 %38, label %39, label %107

39:                                               ; preds = %33
  %40 = load ptr, ptr @format_types, align 8, !tbaa !9
  %41 = load i32, ptr %4, align 8, !tbaa !18
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.format_kind_info, ptr %40, i64 %42, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !20
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %107, label %47

47:                                               ; preds = %39
  %48 = load ptr, ptr @current_function_decl, align 8, !tbaa !9
  %49 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !11
  %51 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !11
  %53 = icmp eq ptr %52, null
  br i1 %53, label %76, label %54

54:                                               ; preds = %47, %70
  %55 = phi ptr [ %72, %70 ], [ %52, %47 ]
  %56 = getelementptr inbounds %struct.tree_list, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !11
  %58 = call i32 @is_attribute_p(ptr noundef nonnull @.str.2, ptr noundef %57) #11
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.tree_list, ptr %55, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !11
  %63 = getelementptr inbounds %struct.tree_list, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !11
  %65 = getelementptr inbounds %struct.tree_identifier, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !11
  %67 = call fastcc i32 @decode_format_type(ptr noundef %66) #10
  %68 = load i32, ptr %4, align 8, !tbaa !18
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %107, label %70

70:                                               ; preds = %54, %60
  %71 = getelementptr inbounds %struct.tree_common, ptr %55, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !11
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %54, !llvm.loop !22

74:                                               ; preds = %70
  %75 = load ptr, ptr @current_function_decl, align 8, !tbaa !9
  br label %76

76:                                               ; preds = %74, %47
  %77 = phi ptr [ %75, %74 ], [ %48, %47 ]
  %78 = getelementptr inbounds %struct.tree_decl_non_common, ptr %77, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !11
  %80 = icmp eq ptr %79, null
  br i1 %80, label %107, label %81

81:                                               ; preds = %76
  %82 = load ptr, ptr @integer_types, align 16
  br label %83

83:                                               ; preds = %81, %96
  %84 = phi ptr [ %79, %81 ], [ %98, %96 ]
  %85 = getelementptr inbounds %struct.tree_common, ptr %84, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !11
  %87 = load i64, ptr %86, align 8
  %88 = and i64 %87, 65535
  %89 = icmp eq i64 %88, 10
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = getelementptr inbounds %struct.tree_common, ptr %86, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !11
  %93 = getelementptr inbounds %struct.tree_type, ptr %92, i64 0, i32 16
  %94 = load ptr, ptr %93, align 8, !tbaa !11
  %95 = icmp eq ptr %94, %82
  br i1 %95, label %100, label %96

96:                                               ; preds = %83, %90
  %97 = getelementptr inbounds %struct.tree_common, ptr %84, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !11
  %99 = icmp eq ptr %98, null
  br i1 %99, label %107, label %83, !llvm.loop !23

100:                                              ; preds = %90
  %101 = load ptr, ptr @format_types, align 8, !tbaa !9
  %102 = load i32, ptr %4, align 8, !tbaa !18
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.format_kind_info, ptr %101, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !24
  %106 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 131, ptr noundef nonnull @.str.3, ptr noundef %105) #11
  br label %107

107:                                              ; preds = %60, %96, %76, %100, %39, %33
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  br label %108

108:                                              ; preds = %10, %107
  %109 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !11
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %10, !llvm.loop !25

112:                                              ; preds = %108, %3
  ret void
}

; Function Attrs: optsize
declare i32 @is_attribute_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @decode_format_attr(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.tree_list, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !11
  %8 = getelementptr inbounds %struct.tree_list, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = getelementptr inbounds %struct.tree_list, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  %14 = load i64, ptr %5, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 1
  br i1 %16, label %21, label %17

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
  %23 = load ptr, ptr %22, align 8, !tbaa !11
  %24 = tail call fastcc ptr @convert_format_name_to_system_name(ptr noundef %23) #10
  %25 = tail call fastcc i32 @decode_format_type(ptr noundef %24) #10
  store i32 %25, ptr %1, align 8, !tbaa !18
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %32

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
  %34 = tail call fastcc zeroext i8 @get_constant(ptr noundef %9, ptr noundef nonnull %33, i32 noundef %2) #10, !range !14
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str) #11
  br label %52

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.function_format_info, ptr %1, i64 0, i32 2
  %39 = tail call fastcc zeroext i8 @get_constant(ptr noundef %13, ptr noundef nonnull %38, i32 noundef %2) #10, !range !14
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.11) #11
  br label %52

42:                                               ; preds = %37
  %43 = load i64, ptr %38, align 8, !tbaa !26
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %42
  %46 = load i64, ptr %33, align 8, !tbaa !27
  %47 = icmp ugt i64 %43, %46
  br i1 %47, label %52, label %48

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
define internal fastcc void @check_format_info(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #1 {
  %3 = alloca %struct.format_check_context, align 8
  %4 = alloca %struct.format_check_results, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %4) #9
  %5 = icmp eq ptr %1, null
  br i1 %5, label %130, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.function_format_info, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !27
  br label %9

9:                                                ; preds = %6, %13
  %10 = phi ptr [ %1, %6 ], [ %15, %13 ]
  %11 = phi i64 [ 1, %6 ], [ %16, %13 ]
  %12 = icmp eq i64 %11, %8
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !11
  %16 = add i64 %11, 1
  %17 = icmp eq ptr %15, null
  br i1 %17, label %130, label %9

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.tree_list, ptr %10, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !11
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
  store ptr %4, ptr %3, align 8, !tbaa !28
  %31 = getelementptr inbounds %struct.format_check_context, ptr %3, i64 0, i32 1
  store ptr %0, ptr %31, align 8, !tbaa !30
  %32 = getelementptr inbounds %struct.format_check_context, ptr %3, i64 0, i32 2
  store ptr %22, ptr %32, align 8, !tbaa !31
  call void @check_function_arguments_recurse(ptr noundef nonnull @check_format_arg, ptr noundef nonnull %3, ptr noundef nonnull %20, i64 noundef %8) #11
  %33 = load i32, ptr %4, align 4, !tbaa !32
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %78

35:                                               ; preds = %24
  %36 = load ptr, ptr @format_types, align 8, !tbaa !9
  %37 = load i32, ptr %0, align 8, !tbaa !18
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.format_kind_info, ptr %36, i64 %38, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !20
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 94, ptr noundef nonnull @.str.22) #11
  br label %78

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.function_format_info, ptr %0, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !26
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
  %58 = load ptr, ptr %57, align 8, !tbaa !11
  %59 = add nuw i64 %55, 1
  %60 = icmp uge i64 %59, %47
  %61 = icmp eq ptr %58, null
  %62 = select i1 %60, i1 true, i1 %61
  br i1 %62, label %63, label %54, !llvm.loop !34

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
  %79 = load i32, ptr %25, align 4, !tbaa !35
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
  %94 = load i32, ptr %26, align 4, !tbaa !36
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
  %107 = load i32, ptr %28, align 4, !tbaa !37
  %108 = icmp sgt i32 %107, 0
  %109 = icmp eq i32 %106, 0
  %110 = select i1 %108, i1 %109, i1 false
  %111 = icmp eq i32 %105, 0
  %112 = select i1 %110, i1 %111, i1 false
  br i1 %112, label %113, label %120

113:                                              ; preds = %104
  %114 = load ptr, ptr @format_types, align 8, !tbaa !9
  %115 = load i32, ptr %0, align 8, !tbaa !18
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.format_kind_info, ptr %114, i64 %116
  %118 = load ptr, ptr %117, align 8, !tbaa !24
  %119 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 97, ptr noundef nonnull @.str.27, ptr noundef %118) #11
  br label %120

120:                                              ; preds = %113, %104
  %121 = load i32, ptr %27, align 4, !tbaa !38
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.28) #11
  br label %125

125:                                              ; preds = %123, %120
  %126 = load i32, ptr %29, align 4, !tbaa !39
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
define internal fastcc i32 @decode_format_type(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc ptr @convert_format_name_to_system_name(ptr noundef %0) #10
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #10
  %4 = trunc i64 %3 to i32
  %5 = getelementptr inbounds i8, ptr %2, i64 2
  %6 = load ptr, ptr @format_types, align 8, !tbaa !9
  %7 = getelementptr inbounds i8, ptr %2, i64 1
  %8 = shl i64 %3, 32
  %9 = add i64 %8, -4294967296
  %10 = ashr exact i64 %9, 32
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = add i64 %8, -8589934592
  %13 = ashr exact i64 %12, 32
  %14 = getelementptr inbounds i8, ptr %2, i64 %13
  br label %15

15:                                               ; preds = %1, %43
  %16 = phi i64 [ 0, %1 ], [ %44, %43 ]
  %17 = getelementptr inbounds %struct.format_kind_info, ptr %6, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !24
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %18) #10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %48, label %21

21:                                               ; preds = %15
  %22 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %18) #10
  %23 = trunc i64 %22 to i32
  %24 = add nsw i32 %23, 4
  %25 = icmp eq i32 %24, %4
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = load i8, ptr %2, align 1, !tbaa !11
  %28 = icmp eq i8 %27, 95
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load i8, ptr %7, align 1, !tbaa !11
  %31 = icmp eq i8 %30, 95
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load i8, ptr %11, align 1, !tbaa !11
  %34 = icmp eq i8 %33, 95
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load i8, ptr %14, align 1, !tbaa !11
  %37 = icmp eq i8 %36, 95
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = shl i64 %22, 32
  %40 = ashr exact i64 %39, 32
  %41 = tail call i32 @strncmp(ptr noundef nonnull %5, ptr noundef %18, i64 noundef %40) #10
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %38, %35, %32, %29, %26, %21
  %44 = add nuw nsw i64 %16, 1
  %45 = icmp eq i64 %44, 10
  br i1 %45, label %50, label %15, !llvm.loop !40

46:                                               ; preds = %38
  %47 = trunc i64 %16 to i32
  br label %50

48:                                               ; preds = %15
  %49 = trunc i64 %16 to i32
  br label %50

50:                                               ; preds = %43, %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ], [ -1, %43 ]
  ret i32 %51
}

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @handle_format_attribute(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #1 {
  %6 = alloca %struct.function_format_info, align 8
  %7 = load ptr, ptr %0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %8 = call fastcc zeroext i8 @decode_format_attr(ptr noundef %2, ptr noundef nonnull %6, i32 noundef 0) #10, !range !14
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  store i8 1, ptr %4, align 1, !tbaa !11
  br label %66

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.function_format_info, ptr %6, i64 0, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = icmp ne i64 %17, 0
  br label %42

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.function_format_info, ptr %6, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !27
  %22 = tail call fastcc zeroext i8 @check_format_string(ptr noundef nonnull %13, i64 noundef %21, i32 noundef %3, ptr noundef %4) #10, !range !14
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %66, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.function_format_info, ptr %6, i64 0, i32 2
  %26 = load i64, ptr %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %42, label %28

28:                                               ; preds = %24, %28
  %29 = phi i64 [ %31, %28 ], [ 1, %24 ]
  %30 = phi ptr [ %33, %28 ], [ %13, %24 ]
  %31 = add i64 %29, 1
  %32 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !11
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %28, !llvm.loop !41

35:                                               ; preds = %28
  %36 = icmp eq i64 %31, %26
  br i1 %36, label %42, label %37

37:                                               ; preds = %35
  %38 = and i32 %3, 16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.4) #11
  br label %41

41:                                               ; preds = %40, %37
  store i8 1, ptr %4, align 1, !tbaa !11
  br label %66

42:                                               ; preds = %15, %35, %24
  %43 = phi i1 [ %18, %15 ], [ true, %35 ], [ false, %24 ]
  %44 = load ptr, ptr @format_types, align 8, !tbaa !9
  %45 = load i32, ptr %6, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.format_kind_info, ptr %44, i64 %46, i32 7
  %48 = load i32, ptr %47, align 8, !tbaa !20
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i1 %43, i1 false
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.5) #11
  store i8 1, ptr %4, align 1, !tbaa !11
  br label %66

53:                                               ; preds = %42
  %54 = add i32 %45, -1
  %55 = icmp ult i32 %54, 6
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load ptr, ptr @dynamic_format_types, align 8, !tbaa !9
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = tail call ptr @xmemdup(ptr noundef nonnull @format_types_orig, i64 noundef 1040, i64 noundef 1040) #11
  store ptr %60, ptr @dynamic_format_types, align 8, !tbaa !9
  store ptr %60, ptr @format_types, align 8, !tbaa !9
  br label %61

61:                                               ; preds = %59, %56
  switch i32 %45, label %65 [
    i32 1, label %62
    i32 6, label %63
    i32 5, label %64
    i32 4, label %64
    i32 3, label %64
    i32 2, label %64
  ]

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
define internal fastcc void @init_dynamic_asm_fprintf_info() unnamed_addr #1 {
  %1 = load ptr, ptr @init_dynamic_asm_fprintf_info.hwi, align 8, !tbaa !9
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %48

3:                                                ; preds = %0
  %4 = tail call ptr @maybe_get_identifier(ptr noundef nonnull @.str.261) #11
  store ptr %4, ptr @init_dynamic_asm_fprintf_info.hwi, align 8, !tbaa !9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.262) #11
  br label %48

7:                                                ; preds = %3
  %8 = tail call ptr @identifier_global_value(ptr noundef nonnull %4) #11
  store ptr %8, ptr @init_dynamic_asm_fprintf_info.hwi, align 8, !tbaa !9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = load i64, ptr %8, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 35
  br i1 %13, label %15, label %14

14:                                               ; preds = %10, %7
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.262) #11
  br label %48

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.tree_decl_non_common, ptr %8, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !11
  store ptr %17, ptr @init_dynamic_asm_fprintf_info.hwi, align 8, !tbaa !9
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2425, ptr noundef nonnull @.str.7) #11
  %20 = load ptr, ptr @init_dynamic_asm_fprintf_info.hwi, align 8, !tbaa !9
  br label %21

21:                                               ; preds = %15, %19
  %22 = phi ptr [ %17, %15 ], [ %20, %19 ]
  %23 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !9
  %24 = icmp eq ptr %22, %23
  %25 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8
  %26 = icmp eq ptr %22, %25
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.263) #11
  br label %48

29:                                               ; preds = %21
  %30 = tail call ptr @xmemdup(ptr noundef nonnull @asm_fprintf_length_specs, i64 noundef 120, i64 noundef 120) #11
  %31 = tail call fastcc i32 @find_length_info_modifier_index(ptr noundef %30) #10
  %32 = load ptr, ptr @init_dynamic_asm_fprintf_info.hwi, align 8, !tbaa !9
  %33 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !9
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = zext i32 %31 to i64
  %37 = getelementptr inbounds %struct.format_length_info, ptr %30, i64 %36, i32 1
  store i32 3, ptr %37, align 8, !tbaa !42
  br label %45

38:                                               ; preds = %29
  %39 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8, !tbaa !9
  %40 = icmp eq ptr %32, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = zext i32 %31 to i64
  %43 = getelementptr inbounds %struct.format_length_info, ptr %30, i64 %42, i32 1
  store i32 4, ptr %43, align 8, !tbaa !42
  br label %45

44:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2446, ptr noundef nonnull @.str.7) #11
  br label %45

45:                                               ; preds = %41, %44, %35
  %46 = load ptr, ptr @dynamic_format_types, align 8, !tbaa !9
  %47 = getelementptr inbounds %struct.format_kind_info, ptr %46, i64 1, i32 1
  store ptr %30, ptr %47, align 8, !tbaa !44
  br label %48

48:                                               ; preds = %6, %14, %28, %45, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_dynamic_gfc_info() unnamed_addr #1 {
  %1 = load ptr, ptr @init_dynamic_gfc_info.locus, align 8, !tbaa !9
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %40

3:                                                ; preds = %0
  %4 = tail call ptr @maybe_get_identifier(ptr noundef nonnull @.str.264) #11
  store ptr %4, ptr @init_dynamic_gfc_info.locus, align 8, !tbaa !9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @identifier_global_value(ptr noundef nonnull %4) #11
  store ptr %7, ptr @init_dynamic_gfc_info.locus, align 8, !tbaa !9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %6
  %10 = load i64, ptr %7, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 35
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !11
  %16 = load ptr, ptr @global_trees, align 16, !tbaa !9
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %9
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.265) #11
  br label %19

19:                                               ; preds = %13, %18
  %20 = phi ptr [ null, %18 ], [ %15, %13 ]
  store ptr %20, ptr @init_dynamic_gfc_info.locus, align 8, !tbaa !9
  br label %21

21:                                               ; preds = %19, %6, %3
  %22 = phi ptr [ null, %6 ], [ null, %3 ], [ %20, %19 ]
  %23 = load ptr, ptr @init_dynamic_gfc_info.gfc_fci, align 8, !tbaa !9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = tail call ptr @xmemdup(ptr noundef nonnull @gcc_gfc_char_table, i64 noundef 2296, i64 noundef 2296) #11
  store ptr %26, ptr @init_dynamic_gfc_info.gfc_fci, align 8, !tbaa !9
  %27 = load ptr, ptr @dynamic_format_types, align 8, !tbaa !9
  %28 = getelementptr inbounds %struct.format_kind_info, ptr %27, i64 6, i32 2
  store ptr %26, ptr %28, align 8, !tbaa !45
  %29 = load ptr, ptr @init_dynamic_gfc_info.locus, align 8, !tbaa !9
  br label %30

30:                                               ; preds = %25, %21
  %31 = phi ptr [ %26, %25 ], [ %23, %21 ]
  %32 = phi ptr [ %29, %25 ], [ %22, %21 ]
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = tail call fastcc i32 @find_char_info_specifier_index(ptr noundef %31, i32 noundef 76) #10
  %36 = load ptr, ptr @init_dynamic_gfc_info.gfc_fci, align 8, !tbaa !9
  %37 = zext i32 %35 to i64
  %38 = getelementptr inbounds %struct.format_char_info, ptr %36, i64 %37, i32 3, i64 0, i32 2
  store ptr @init_dynamic_gfc_info.locus, ptr %38, align 8, !tbaa !46
  %39 = getelementptr inbounds %struct.format_char_info, ptr %36, i64 %37, i32 1
  store i32 1, ptr %39, align 8, !tbaa !48
  br label %40

40:                                               ; preds = %30, %34, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_dynamic_diag_info() unnamed_addr #1 {
  %1 = load ptr, ptr @init_dynamic_diag_info.loc, align 8, !tbaa !9
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
  store ptr %10, ptr @init_dynamic_diag_info.loc, align 8, !tbaa !9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @identifier_global_value(ptr noundef nonnull %10) #11
  store ptr %13, ptr @init_dynamic_diag_info.loc, align 8, !tbaa !9
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
  %22 = load ptr, ptr %21, align 8, !tbaa !11
  br label %23

23:                                               ; preds = %19, %20
  %24 = phi ptr [ %22, %20 ], [ null, %19 ]
  store ptr %24, ptr @init_dynamic_diag_info.loc, align 8, !tbaa !9
  br label %25

25:                                               ; preds = %23, %12, %9
  %26 = tail call ptr @maybe_get_identifier(ptr noundef nonnull @.str.268) #11
  store ptr %26, ptr @init_dynamic_diag_info.t, align 8, !tbaa !9
  %27 = icmp eq ptr %26, null
  br i1 %27, label %48, label %28

28:                                               ; preds = %25
  %29 = tail call ptr @identifier_global_value(ptr noundef nonnull %26) #11
  store ptr %29, ptr @init_dynamic_diag_info.t, align 8, !tbaa !9
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
  %38 = load ptr, ptr %37, align 8, !tbaa !11
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 10
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.270) #11
  br label %46

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !11
  br label %46

46:                                               ; preds = %35, %43, %42
  %47 = phi ptr [ null, %42 ], [ %45, %43 ], [ null, %35 ]
  store ptr %47, ptr @init_dynamic_diag_info.t, align 8, !tbaa !9
  br label %48

48:                                               ; preds = %46, %28, %25
  %49 = tail call ptr @maybe_get_identifier(ptr noundef nonnull @.str.261) #11
  store ptr %49, ptr @init_dynamic_diag_info.hwi, align 8, !tbaa !9
  %50 = icmp eq ptr %49, null
  br i1 %50, label %73, label %51

51:                                               ; preds = %48
  %52 = tail call ptr @identifier_global_value(ptr noundef nonnull %49) #11
  store ptr %52, ptr @init_dynamic_diag_info.hwi, align 8, !tbaa !9
  %53 = icmp eq ptr %52, null
  br i1 %53, label %73, label %54

54:                                               ; preds = %51
  %55 = load i64, ptr %52, align 8
  %56 = and i64 %55, 65535
  %57 = icmp eq i64 %56, 35
  br i1 %57, label %58, label %71

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.tree_decl_non_common, ptr %52, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !11
  store ptr %60, ptr @init_dynamic_diag_info.hwi, align 8, !tbaa !9
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2578, ptr noundef nonnull @.str.7) #11
  %63 = load ptr, ptr @init_dynamic_diag_info.hwi, align 8, !tbaa !9
  br label %64

64:                                               ; preds = %58, %62
  %65 = phi ptr [ %60, %58 ], [ %63, %62 ]
  %66 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !9
  %67 = icmp eq ptr %65, %66
  %68 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8
  %69 = icmp eq ptr %65, %68
  %70 = select i1 %67, i1 true, i1 %69
  br i1 %70, label %73, label %71

71:                                               ; preds = %64, %54
  %72 = phi ptr [ @.str.262, %54 ], [ @.str.263, %64 ]
  tail call void (ptr, ...) @error(ptr noundef nonnull %72) #11
  store ptr null, ptr @init_dynamic_diag_info.hwi, align 8, !tbaa !9
  br label %73

73:                                               ; preds = %71, %51, %64, %48
  %74 = phi ptr [ null, %51 ], [ %65, %64 ], [ null, %48 ], [ null, %71 ]
  %75 = load ptr, ptr @init_dynamic_diag_info.diag_ls, align 8, !tbaa !9
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %73
  %78 = tail call ptr @xmemdup(ptr noundef nonnull @gcc_diag_length_specs, i64 noundef 120, i64 noundef 120) #11
  store ptr %78, ptr @init_dynamic_diag_info.diag_ls, align 8, !tbaa !9
  %79 = load ptr, ptr @dynamic_format_types, align 8, !tbaa !9
  %80 = getelementptr inbounds %struct.format_kind_info, ptr %79, i64 5, i32 1
  store ptr %78, ptr %80, align 8, !tbaa !44
  %81 = getelementptr inbounds %struct.format_kind_info, ptr %79, i64 4, i32 1
  store ptr %78, ptr %81, align 8, !tbaa !44
  %82 = getelementptr inbounds %struct.format_kind_info, ptr %79, i64 3, i32 1
  store ptr %78, ptr %82, align 8, !tbaa !44
  %83 = getelementptr inbounds %struct.format_kind_info, ptr %79, i64 2, i32 1
  store ptr %78, ptr %83, align 8, !tbaa !44
  %84 = load ptr, ptr @init_dynamic_diag_info.hwi, align 8, !tbaa !9
  br label %85

85:                                               ; preds = %77, %73
  %86 = phi ptr [ %78, %77 ], [ %75, %73 ]
  %87 = phi ptr [ %84, %77 ], [ %74, %73 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %106, label %89

89:                                               ; preds = %85
  %90 = tail call fastcc i32 @find_length_info_modifier_index(ptr noundef %86) #10
  %91 = load ptr, ptr @init_dynamic_diag_info.hwi, align 8, !tbaa !9
  %92 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !9
  %93 = icmp eq ptr %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load ptr, ptr @init_dynamic_diag_info.diag_ls, align 8, !tbaa !9
  %96 = zext i32 %90 to i64
  %97 = getelementptr inbounds %struct.format_length_info, ptr %95, i64 %96, i32 1
  store i32 3, ptr %97, align 8, !tbaa !42
  br label %106

98:                                               ; preds = %89
  %99 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8, !tbaa !9
  %100 = icmp eq ptr %91, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load ptr, ptr @init_dynamic_diag_info.diag_ls, align 8, !tbaa !9
  %103 = zext i32 %90 to i64
  %104 = getelementptr inbounds %struct.format_length_info, ptr %102, i64 %103, i32 1
  store i32 4, ptr %104, align 8, !tbaa !42
  br label %106

105:                                              ; preds = %98
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2611, ptr noundef nonnull @.str.7) #11
  br label %106

106:                                              ; preds = %94, %105, %101, %85
  %107 = load ptr, ptr @init_dynamic_diag_info.diag_fci, align 8, !tbaa !9
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = tail call ptr @xmemdup(ptr noundef nonnull @gcc_diag_char_table, i64 noundef 3280, i64 noundef 3280) #11
  store ptr %110, ptr @init_dynamic_diag_info.diag_fci, align 8, !tbaa !9
  %111 = load ptr, ptr @dynamic_format_types, align 8, !tbaa !9
  %112 = getelementptr inbounds %struct.format_kind_info, ptr %111, i64 2, i32 2
  store ptr %110, ptr %112, align 8, !tbaa !45
  br label %113

113:                                              ; preds = %109, %106
  %114 = phi ptr [ %110, %109 ], [ %107, %106 ]
  %115 = load ptr, ptr @init_dynamic_diag_info.t, align 8, !tbaa !9
  %116 = icmp eq ptr %115, null
  br i1 %116, label %123, label %117

117:                                              ; preds = %113
  %118 = tail call fastcc i32 @find_char_info_specifier_index(ptr noundef %114, i32 noundef 75) #10
  %119 = load ptr, ptr @init_dynamic_diag_info.diag_fci, align 8, !tbaa !9
  %120 = zext i32 %118 to i64
  %121 = getelementptr inbounds %struct.format_char_info, ptr %119, i64 %120, i32 3, i64 0, i32 2
  store ptr @init_dynamic_diag_info.t, ptr %121, align 8, !tbaa !46
  %122 = getelementptr inbounds %struct.format_char_info, ptr %119, i64 %120, i32 1
  store i32 1, ptr %122, align 8, !tbaa !48
  br label %123

123:                                              ; preds = %117, %113
  %124 = load ptr, ptr @init_dynamic_diag_info.tdiag_fci, align 8, !tbaa !9
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = tail call ptr @xmemdup(ptr noundef nonnull @gcc_tdiag_char_table, i64 noundef 3280, i64 noundef 3280) #11
  store ptr %127, ptr @init_dynamic_diag_info.tdiag_fci, align 8, !tbaa !9
  %128 = load ptr, ptr @dynamic_format_types, align 8, !tbaa !9
  %129 = getelementptr inbounds %struct.format_kind_info, ptr %128, i64 3, i32 2
  store ptr %127, ptr %129, align 8, !tbaa !45
  br label %130

130:                                              ; preds = %126, %123
  %131 = phi ptr [ %127, %126 ], [ %124, %123 ]
  %132 = load ptr, ptr @init_dynamic_diag_info.t, align 8, !tbaa !9
  %133 = icmp eq ptr %132, null
  br i1 %133, label %145, label %134

134:                                              ; preds = %130
  %135 = tail call fastcc i32 @find_char_info_specifier_index(ptr noundef %131, i32 noundef 68) #10
  %136 = load ptr, ptr @init_dynamic_diag_info.tdiag_fci, align 8, !tbaa !9
  %137 = zext i32 %135 to i64
  %138 = getelementptr inbounds %struct.format_char_info, ptr %136, i64 %137, i32 3, i64 0, i32 2
  store ptr @init_dynamic_diag_info.t, ptr %138, align 8, !tbaa !46
  %139 = getelementptr inbounds %struct.format_char_info, ptr %136, i64 %137, i32 1
  store i32 1, ptr %139, align 8, !tbaa !48
  %140 = tail call fastcc i32 @find_char_info_specifier_index(ptr noundef %136, i32 noundef 75) #10
  %141 = load ptr, ptr @init_dynamic_diag_info.tdiag_fci, align 8, !tbaa !9
  %142 = zext i32 %140 to i64
  %143 = getelementptr inbounds %struct.format_char_info, ptr %141, i64 %142, i32 3, i64 0, i32 2
  store ptr @init_dynamic_diag_info.t, ptr %143, align 8, !tbaa !46
  %144 = getelementptr inbounds %struct.format_char_info, ptr %141, i64 %142, i32 1
  store i32 1, ptr %144, align 8, !tbaa !48
  br label %145

145:                                              ; preds = %134, %130
  %146 = load ptr, ptr @init_dynamic_diag_info.cdiag_fci, align 8, !tbaa !9
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = tail call ptr @xmemdup(ptr noundef nonnull @gcc_cdiag_char_table, i64 noundef 3280, i64 noundef 3280) #11
  store ptr %149, ptr @init_dynamic_diag_info.cdiag_fci, align 8, !tbaa !9
  %150 = load ptr, ptr @dynamic_format_types, align 8, !tbaa !9
  %151 = getelementptr inbounds %struct.format_kind_info, ptr %150, i64 4, i32 2
  store ptr %149, ptr %151, align 8, !tbaa !45
  br label %152

152:                                              ; preds = %148, %145
  %153 = phi ptr [ %149, %148 ], [ %146, %145 ]
  %154 = load ptr, ptr @init_dynamic_diag_info.t, align 8, !tbaa !9
  %155 = icmp eq ptr %154, null
  br i1 %155, label %167, label %156

156:                                              ; preds = %152
  %157 = tail call fastcc i32 @find_char_info_specifier_index(ptr noundef %153, i32 noundef 68) #10
  %158 = load ptr, ptr @init_dynamic_diag_info.cdiag_fci, align 8, !tbaa !9
  %159 = zext i32 %157 to i64
  %160 = getelementptr inbounds %struct.format_char_info, ptr %158, i64 %159, i32 3, i64 0, i32 2
  store ptr @init_dynamic_diag_info.t, ptr %160, align 8, !tbaa !46
  %161 = getelementptr inbounds %struct.format_char_info, ptr %158, i64 %159, i32 1
  store i32 1, ptr %161, align 8, !tbaa !48
  %162 = tail call fastcc i32 @find_char_info_specifier_index(ptr noundef %158, i32 noundef 75) #10
  %163 = load ptr, ptr @init_dynamic_diag_info.cdiag_fci, align 8, !tbaa !9
  %164 = zext i32 %162 to i64
  %165 = getelementptr inbounds %struct.format_char_info, ptr %163, i64 %164, i32 3, i64 0, i32 2
  store ptr @init_dynamic_diag_info.t, ptr %165, align 8, !tbaa !46
  %166 = getelementptr inbounds %struct.format_char_info, ptr %163, i64 %164, i32 1
  store i32 1, ptr %166, align 8, !tbaa !48
  br label %167

167:                                              ; preds = %156, %152
  %168 = load ptr, ptr @init_dynamic_diag_info.cxxdiag_fci, align 8, !tbaa !9
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %174

170:                                              ; preds = %167
  %171 = tail call ptr @xmemdup(ptr noundef nonnull @gcc_cxxdiag_char_table, i64 noundef 3608, i64 noundef 3608) #11
  store ptr %171, ptr @init_dynamic_diag_info.cxxdiag_fci, align 8, !tbaa !9
  %172 = load ptr, ptr @dynamic_format_types, align 8, !tbaa !9
  %173 = getelementptr inbounds %struct.format_kind_info, ptr %172, i64 5, i32 2
  store ptr %171, ptr %173, align 8, !tbaa !45
  br label %174

174:                                              ; preds = %170, %167
  %175 = phi ptr [ %171, %170 ], [ %168, %167 ]
  %176 = load ptr, ptr @init_dynamic_diag_info.t, align 8, !tbaa !9
  %177 = icmp eq ptr %176, null
  br i1 %177, label %189, label %178

178:                                              ; preds = %174
  %179 = tail call fastcc i32 @find_char_info_specifier_index(ptr noundef %175, i32 noundef 68) #10
  %180 = load ptr, ptr @init_dynamic_diag_info.cxxdiag_fci, align 8, !tbaa !9
  %181 = zext i32 %179 to i64
  %182 = getelementptr inbounds %struct.format_char_info, ptr %180, i64 %181, i32 3, i64 0, i32 2
  store ptr @init_dynamic_diag_info.t, ptr %182, align 8, !tbaa !46
  %183 = getelementptr inbounds %struct.format_char_info, ptr %180, i64 %181, i32 1
  store i32 1, ptr %183, align 8, !tbaa !48
  %184 = tail call fastcc i32 @find_char_info_specifier_index(ptr noundef %180, i32 noundef 75) #10
  %185 = load ptr, ptr @init_dynamic_diag_info.cxxdiag_fci, align 8, !tbaa !9
  %186 = zext i32 %184 to i64
  %187 = getelementptr inbounds %struct.format_char_info, ptr %185, i64 %186, i32 3, i64 0, i32 2
  store ptr @init_dynamic_diag_info.t, ptr %187, align 8, !tbaa !46
  %188 = getelementptr inbounds %struct.format_char_info, ptr %185, i64 %186, i32 1
  store i32 1, ptr %188, align 8, !tbaa !48
  br label %189

189:                                              ; preds = %174, %178, %0
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @convert_format_name_to_system_name(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = load i8, ptr %0, align 1, !tbaa !11
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.13, i64 noundef 4) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %14

9:                                                ; preds = %19
  %10 = add nuw nsw i64 %15, 1
  %11 = getelementptr inbounds [5 x %struct.target_ovr_attr], ptr @gnu_target_overrides_format_attributes, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 16, !tbaa !50
  %13 = icmp eq i64 %10, 4
  br i1 %13, label %24, label %14, !llvm.loop !52

14:                                               ; preds = %6, %9
  %15 = phi i64 [ %10, %9 ], [ 0, %6 ]
  %16 = phi ptr [ %12, %9 ], [ @.str.14, %6 ]
  %17 = tail call fastcc zeroext i8 @cmp_attribs(ptr noundef nonnull %16, ptr noundef nonnull %0) #10, !range !14
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = getelementptr inbounds [5 x %struct.target_ovr_attr], ptr @gnu_target_overrides_format_attributes, i64 0, i64 %15, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !53
  %22 = tail call fastcc zeroext i8 @cmp_attribs(ptr noundef %21, ptr noundef nonnull %0) #10, !range !14
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %9, label %24

24:                                               ; preds = %19, %9, %14, %1, %3, %6
  %25 = phi ptr [ %0, %6 ], [ %0, %3 ], [ null, %1 ], [ %16, %19 ], [ %0, %9 ], [ %0, %14 ]
  ret ptr %25
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @cmp_attribs(ptr noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #10
  %4 = trunc i64 %3 to i32
  %5 = icmp eq ptr %0, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  %8 = trunc i64 %7 to i32
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi i32 [ %8, %6 ], [ 0, %2 ]
  %11 = icmp sgt i32 %4, 4
  br i1 %11, label %12, label %34

12:                                               ; preds = %9
  %13 = load i8, ptr %1, align 1, !tbaa !11
  %14 = icmp eq i8 %13, 95
  br i1 %14, label %15, label %34

15:                                               ; preds = %12
  %16 = getelementptr inbounds i8, ptr %1, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !11
  %18 = icmp eq i8 %17, 95
  br i1 %18, label %19, label %34

19:                                               ; preds = %15
  %20 = add i64 %3, 4294967295
  %21 = and i64 %20, 4294967295
  %22 = getelementptr inbounds i8, ptr %1, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !11
  %24 = icmp eq i8 %23, 95
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = add i64 %3, 4294967294
  %27 = and i64 %26, 4294967295
  %28 = getelementptr inbounds i8, ptr %1, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !11
  %30 = icmp eq i8 %29, 95
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = getelementptr inbounds i8, ptr %1, i64 2
  %33 = add nsw i32 %4, -4
  br label %34

34:                                               ; preds = %31, %25, %19, %15, %12, %9
  %35 = phi ptr [ %32, %31 ], [ %1, %25 ], [ %1, %19 ], [ %1, %15 ], [ %1, %12 ], [ %1, %9 ]
  %36 = phi i32 [ %33, %31 ], [ %4, %25 ], [ %4, %19 ], [ %4, %15 ], [ %4, %12 ], [ %4, %9 ]
  %37 = icmp eq i32 %36, %10
  br i1 %37, label %38, label %43

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
define internal void @check_format_arg(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2) #1 {
  %4 = load ptr, ptr %0, align 8, !tbaa !28
  %5 = getelementptr inbounds %struct.format_check_context, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !30
  %7 = getelementptr inbounds %struct.format_check_context, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !31
  %9 = tail call i32 @integer_zerop(ptr noundef %1) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.function_format_info, ptr %6, i64 0, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !26
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
  %22 = load ptr, ptr %21, align 8, !tbaa !11
  %23 = add nuw i64 %17, 1
  %24 = icmp eq i64 %23, %13
  br i1 %24, label %25, label %16, !llvm.loop !54

25:                                               ; preds = %20, %11
  %26 = phi ptr [ %8, %11 ], [ %22, %20 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.format_check_results, ptr %4, i64 0, i32 6
  %30 = load i32, ptr %29, align 4, !tbaa !55
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %29, align 4, !tbaa !55
  br label %216

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.format_check_results, ptr %4, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !35
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %33, align 4, !tbaa !35
  br label %216

36:                                               ; preds = %3
  %37 = load i64, ptr %1, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 66
  br i1 %39, label %40, label %64

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !11
  %43 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !11
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
  %54 = load i32, ptr %4, align 4, !tbaa !32
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %4, align 4, !tbaa !32
  br label %216

56:                                               ; preds = %50
  %57 = tail call i64 @tree_low_cst(ptr noundef nonnull %46, i32 noundef 0) #11
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = load i64, ptr %45, align 8
  br label %64

61:                                               ; preds = %56, %50
  %62 = load i32, ptr %4, align 4, !tbaa !32
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %4, align 4, !tbaa !32
  br label %216

64:                                               ; preds = %59, %36
  %65 = phi i64 [ %37, %36 ], [ %60, %59 ]
  %66 = phi i64 [ 0, %36 ], [ %57, %59 ]
  %67 = phi ptr [ %1, %36 ], [ %45, %59 ]
  %68 = and i64 %65, 65535
  %69 = icmp eq i64 %68, 121
  br i1 %69, label %73, label %70

70:                                               ; preds = %64
  %71 = load i32, ptr %4, align 4, !tbaa !32
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr %4, align 4, !tbaa !32
  br label %216

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.tree_exp, ptr %67, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !11
  %76 = load i64, ptr %75, align 8
  %77 = and i64 %76, 65535
  %78 = icmp eq i64 %77, 45
  br i1 %78, label %79, label %92

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.tree_exp, ptr %75, i64 0, i32 3
  %81 = getelementptr inbounds %struct.tree_exp, ptr %75, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !11
  %83 = tail call i32 @host_integerp(ptr noundef %82, i32 noundef 0) #11
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %79
  %86 = load ptr, ptr %81, align 8, !tbaa !11
  %87 = tail call i64 @tree_low_cst(ptr noundef %86, i32 noundef 0) #11
  %88 = add nsw i64 %87, %66
  %89 = icmp sgt i64 %88, -1
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load ptr, ptr %80, align 8, !tbaa !11
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
  %100 = load ptr, ptr %99, align 8, !tbaa !11
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
  %113 = load ptr, ptr %112, align 8, !tbaa !11
  br label %114

114:                                              ; preds = %111, %107, %104, %98, %92
  %115 = phi ptr [ %113, %111 ], [ null, %107 ], [ null, %104 ], [ null, %98 ], [ null, %92 ]
  %116 = phi ptr [ %105, %111 ], [ %94, %107 ], [ %94, %104 ], [ %94, %98 ], [ %94, %92 ]
  %117 = load i64, ptr %116, align 8
  %118 = and i64 %117, 65535
  %119 = icmp eq i64 %118, 28
  br i1 %119, label %123, label %120

120:                                              ; preds = %114
  %121 = load i32, ptr %4, align 4, !tbaa !32
  %122 = add nsw i32 %121, 1
  store i32 %122, ptr %4, align 4, !tbaa !32
  br label %216

123:                                              ; preds = %114
  %124 = getelementptr inbounds %struct.tree_common, ptr %116, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !11
  %126 = getelementptr inbounds %struct.tree_common, ptr %125, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !11
  %128 = getelementptr inbounds %struct.tree_type, ptr %127, i64 0, i32 16
  %129 = load ptr, ptr %128, align 8, !tbaa !11
  %130 = load ptr, ptr @integer_types, align 16, !tbaa !9
  %131 = icmp eq ptr %129, %130
  br i1 %131, label %136, label %132

132:                                              ; preds = %123
  %133 = getelementptr inbounds %struct.format_check_results, ptr %4, i64 0, i32 3
  %134 = load i32, ptr %133, align 4, !tbaa !38
  %135 = add nsw i32 %134, 1
  store i32 %135, ptr %133, align 4, !tbaa !38
  br label %216

136:                                              ; preds = %123
  %137 = getelementptr inbounds %struct.tree_string, ptr %116, i64 0, i32 2
  %138 = getelementptr inbounds %struct.tree_string, ptr %116, i64 0, i32 1
  %139 = load i32, ptr %138, align 8, !tbaa !11
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
  %151 = load i64, ptr %150, align 8, !tbaa !11
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
  %167 = load i32, ptr %4, align 4, !tbaa !32
  %168 = add nsw i32 %167, 1
  store i32 %168, ptr %4, align 4, !tbaa !32
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
  %181 = load i8, ptr %180, align 1, !tbaa !11
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %187, label %183

183:                                              ; preds = %177, %173
  %184 = getelementptr inbounds %struct.format_check_results, ptr %4, i64 0, i32 5
  %185 = load i32, ptr %184, align 4, !tbaa !39
  %186 = add nsw i32 %185, 1
  store i32 %186, ptr %184, align 4, !tbaa !39
  br label %216

187:                                              ; preds = %177
  %188 = icmp eq i32 %178, 0
  br i1 %188, label %196, label %189

189:                                              ; preds = %187
  %190 = getelementptr inbounds %struct.function_format_info, ptr %6, i64 0, i32 2
  %191 = load i64, ptr %190, align 8, !tbaa !26
  %192 = add i64 %2, 1
  %193 = icmp ult i64 %192, %191
  br i1 %193, label %194, label %209

194:                                              ; preds = %189
  %195 = add i64 %191, -1
  br label %200

196:                                              ; preds = %187
  %197 = getelementptr inbounds %struct.format_check_results, ptr %4, i64 0, i32 4
  %198 = load i32, ptr %197, align 4, !tbaa !37
  %199 = add nsw i32 %198, 1
  store i32 %199, ptr %197, align 4, !tbaa !37
  br label %216

200:                                              ; preds = %194, %204
  %201 = phi i64 [ %207, %204 ], [ %192, %194 ]
  %202 = phi ptr [ %206, %204 ], [ %8, %194 ]
  %203 = icmp eq ptr %202, null
  br i1 %203, label %216, label %204

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.tree_common, ptr %202, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !11
  %207 = add nuw i64 %201, 1
  %208 = icmp eq i64 %207, %191
  br i1 %208, label %209, label %200, !llvm.loop !56

209:                                              ; preds = %204, %189
  %210 = phi ptr [ %8, %189 ], [ %206, %204 ]
  %211 = phi i64 [ %2, %189 ], [ %195, %204 ]
  %212 = getelementptr inbounds %struct.format_check_results, ptr %4, i64 0, i32 6
  %213 = load i32, ptr %212, align 4, !tbaa !55
  %214 = add nsw i32 %213, 1
  store i32 %214, ptr %212, align 4, !tbaa !55
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
define internal fastcc void @check_format_info_main(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6) unnamed_addr #1 {
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
  store ptr %4, ptr %9, align 8, !tbaa !9
  %21 = load ptr, ptr @format_types, align 8, !tbaa !9
  %22 = load i32, ptr %1, align 8, !tbaa !18
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23
  %25 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !57
  %27 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !58
  %29 = getelementptr inbounds %struct.function_format_info, ptr %1, i64 0, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !26
  %31 = trunc i64 %30 to i32
  tail call fastcc void @init_dollar_format_checking(i32 noundef %31, ptr noundef %4) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  store ptr null, ptr %10, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %20) #9
  %32 = load i8, ptr %2, align 1, !tbaa !11
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %59, label %34

34:                                               ; preds = %7
  %35 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 7
  %36 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 3
  %37 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 8
  %38 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 14
  %39 = getelementptr inbounds %struct.format_wanted_type, ptr %11, i64 0, i32 1
  %40 = getelementptr inbounds %struct.format_wanted_type, ptr %11, i64 0, i32 7
  %41 = getelementptr inbounds %struct.format_wanted_type, ptr %11, i64 0, i32 8
  %42 = getelementptr inbounds %struct.format_wanted_type, ptr %11, i64 0, i32 9
  %43 = getelementptr inbounds %struct.format_wanted_type, ptr %11, i64 0, i32 10
  %44 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 9
  %45 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 10
  %46 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 15
  %47 = getelementptr inbounds %struct.format_wanted_type, ptr %12, i64 0, i32 1
  %48 = getelementptr inbounds %struct.format_wanted_type, ptr %12, i64 0, i32 7
  %49 = getelementptr inbounds %struct.format_wanted_type, ptr %12, i64 0, i32 8
  %50 = getelementptr inbounds %struct.format_wanted_type, ptr %12, i64 0, i32 9
  %51 = getelementptr inbounds %struct.format_wanted_type, ptr %12, i64 0, i32 10
  %52 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 13
  %53 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 1
  %54 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 12
  %55 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 4
  %56 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 2
  %57 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 11
  %58 = getelementptr inbounds %struct.format_wanted_type, ptr %13, i64 0, i32 10
  br label %90

59:                                               ; preds = %1078, %7
  %60 = phi i32 [ -1, %7 ], [ %1079, %1078 ]
  %61 = phi ptr [ %2, %7 ], [ %1081, %1078 ]
  %62 = ptrtoint ptr %61 to i64
  %63 = ptrtoint ptr %2 to i64
  %64 = sub i64 %62, %63
  %65 = zext nneg i32 %3 to i64
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %69, label %67

67:                                               ; preds = %59
  %68 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 92, ptr noundef nonnull @.str.31) #11
  br label %69

69:                                               ; preds = %67, %59
  %70 = load i64, ptr %29, align 8, !tbaa !26
  %71 = icmp ne i64 %70, 0
  %72 = load ptr, ptr %9, align 8
  %73 = icmp ne ptr %72, null
  %74 = select i1 %71, i1 %73, i1 false
  %75 = icmp slt i32 %60, 1
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %77, label %84

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.format_check_results, ptr %0, i64 0, i32 6
  %79 = load i32, ptr %78, align 4, !tbaa !55
  %80 = add nsw i32 %79, -1
  store i32 %80, ptr %78, align 4, !tbaa !55
  %81 = getelementptr inbounds %struct.format_check_results, ptr %0, i64 0, i32 1
  %82 = load i32, ptr %81, align 4, !tbaa !35
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr %81, align 4, !tbaa !35
  br label %1084

84:                                               ; preds = %69
  %85 = icmp sgt i32 %60, 0
  br i1 %85, label %86, label %1084

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.format_kind_info, ptr %21, i64 %23, i32 7
  %88 = load i32, ptr %87, align 8, !tbaa !20
  %89 = and i32 %88, 128
  call fastcc void @finish_dollar_format_checking(ptr noundef %0, i32 noundef %89) #10
  br label %1084

90:                                               ; preds = %34, %1078
  %91 = phi i8 [ %32, %34 ], [ %1082, %1078 ]
  %92 = phi ptr [ %2, %34 ], [ %1081, %1078 ]
  %93 = phi i64 [ %5, %34 ], [ %1080, %1078 ]
  %94 = phi i32 [ -1, %34 ], [ %1079, %1078 ]
  %95 = getelementptr inbounds i8, ptr %92, i64 1
  store ptr %95, ptr %8, align 8, !tbaa !9
  %96 = icmp eq i8 %91, 37
  br i1 %96, label %97, label %1078

97:                                               ; preds = %90
  %98 = load i8, ptr %95, align 1, !tbaa !11
  switch i8 %98, label %103 [
    i8 0, label %99
    i8 37, label %101
  ]

99:                                               ; preds = %97
  %100 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.32) #11
  br label %1078

101:                                              ; preds = %97
  %102 = getelementptr inbounds i8, ptr %92, i64 2
  store ptr %102, ptr %8, align 8, !tbaa !9
  br label %1078

103:                                              ; preds = %97
  store i8 0, ptr %20, align 16, !tbaa !11
  %104 = load i32, ptr %35, align 8, !tbaa !20
  %105 = and i32 %104, 16
  %106 = icmp ne i32 %105, 0
  %107 = icmp ne i32 %94, 0
  %108 = select i1 %106, i1 %107, i1 false
  br i1 %108, label %109, label %119

109:                                              ; preds = %103
  %110 = call fastcc i32 @maybe_read_dollar_number(ptr noundef nonnull %8, i32 noundef 0, ptr noundef %4, ptr noundef nonnull %10, ptr noundef nonnull %24) #10
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load i64, ptr %29, align 8, !tbaa !26
  %114 = trunc i64 %113 to i32
  %115 = add nsw i32 %110, -1
  %116 = add i32 %115, %114
  br label %123

117:                                              ; preds = %109
  %118 = icmp eq i32 %110, -1
  br i1 %118, label %1084, label %123

119:                                              ; preds = %103
  br i1 %106, label %120, label %123

120:                                              ; preds = %119
  %121 = call fastcc zeroext i8 @avoid_dollar_number(ptr noundef nonnull %95) #10, !range !14
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %1084

123:                                              ; preds = %112, %119, %120, %117
  %124 = phi i32 [ 0, %117 ], [ 0, %120 ], [ 0, %119 ], [ %116, %112 ]
  %125 = phi i32 [ %94, %117 ], [ %94, %120 ], [ %94, %119 ], [ 1, %112 ]
  %126 = load ptr, ptr %8, align 8, !tbaa !9
  %127 = load i8, ptr %126, align 1, !tbaa !11
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %169, label %129

129:                                              ; preds = %123, %164
  %130 = phi i8 [ %167, %164 ], [ %127, %123 ]
  %131 = phi ptr [ %166, %164 ], [ %126, %123 ]
  %132 = sext i8 %130 to i32
  %133 = load ptr, ptr %36, align 8, !tbaa !59
  %134 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %133, i32 noundef %132) #10
  %135 = icmp eq ptr %134, null
  br i1 %135, label %169, label %136

136:                                              ; preds = %129
  %137 = call fastcc ptr @get_flag_spec(ptr noundef %26, i32 noundef %132, ptr noundef null) #10
  %138 = load i8, ptr %131, align 1, !tbaa !11
  %139 = sext i8 %138 to i32
  %140 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %20, i32 noundef %139) #10
  %141 = icmp eq ptr %140, null
  br i1 %141, label %146, label %142

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.format_flag_spec, ptr %137, i64 0, i32 3
  %144 = load ptr, ptr %143, align 8, !tbaa !60
  %145 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.33, ptr noundef %144) #11
  br label %154

146:                                              ; preds = %136
  %147 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #10
  %148 = shl i64 %147, 32
  %149 = ashr exact i64 %148, 32
  %150 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %149
  store i8 %138, ptr %150, align 1, !tbaa !11
  %151 = add i64 %148, 4294967296
  %152 = ashr exact i64 %151, 32
  %153 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %152
  store i8 0, ptr %153, align 1, !tbaa !11
  br label %154

154:                                              ; preds = %146, %142
  %155 = getelementptr inbounds %struct.format_flag_spec, ptr %137, i64 0, i32 2
  %156 = load i32, ptr %155, align 8, !tbaa !62
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds i8, ptr %131, i64 1
  %160 = load i8, ptr %159, align 1, !tbaa !11
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.34) #11
  br label %1084

164:                                              ; preds = %158, %154
  %165 = phi ptr [ %159, %158 ], [ %131, %154 ]
  %166 = getelementptr inbounds i8, ptr %165, i64 1
  %167 = load i8, ptr %166, align 1, !tbaa !11
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %169, label %129, !llvm.loop !63

169:                                              ; preds = %129, %164, %123
  %170 = phi ptr [ %126, %123 ], [ %166, %164 ], [ %131, %129 ]
  %171 = phi i8 [ 0, %123 ], [ 0, %164 ], [ %130, %129 ]
  store ptr %170, ptr %8, align 8, !tbaa !9
  %172 = load i32, ptr %37, align 4, !tbaa !64
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %271, label %174

174:                                              ; preds = %169
  %175 = load ptr, ptr %38, align 8, !tbaa !65
  %176 = icmp ne ptr %175, null
  %177 = icmp eq i8 %171, 42
  %178 = and i1 %177, %176
  br i1 %178, label %186, label %179

179:                                              ; preds = %174
  %180 = load i8, ptr %170, align 1, !tbaa !11
  %181 = zext i8 %180 to i64
  %182 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %181
  %183 = load i16, ptr %182, align 2, !tbaa !66
  %184 = and i16 %183, 4
  %185 = icmp eq i16 %184, 0
  br i1 %185, label %271, label %237

186:                                              ; preds = %174
  %187 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #10
  %188 = trunc i32 %172 to i8
  %189 = shl i64 %187, 32
  %190 = ashr exact i64 %189, 32
  %191 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %190
  store i8 %188, ptr %191, align 1, !tbaa !11
  %192 = add i64 %189, 4294967296
  %193 = ashr exact i64 %192, 32
  %194 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %193
  store i8 0, ptr %194, align 1, !tbaa !11
  %195 = getelementptr inbounds i8, ptr %170, i64 1
  store ptr %195, ptr %8, align 8, !tbaa !9
  %196 = icmp eq i32 %125, 0
  br i1 %196, label %209, label %197

197:                                              ; preds = %186
  %198 = icmp eq i32 %125, 1
  %199 = zext i1 %198 to i32
  %200 = call fastcc i32 @maybe_read_dollar_number(ptr noundef nonnull %8, i32 noundef %199, ptr noundef %4, ptr noundef nonnull %9, ptr noundef nonnull %24) #10
  %201 = icmp eq i32 %200, -1
  br i1 %201, label %1084, label %202

202:                                              ; preds = %197
  %203 = icmp sgt i32 %200, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %202
  %205 = zext nneg i32 %200 to i64
  %206 = load i64, ptr %29, align 8, !tbaa !26
  %207 = add nsw i64 %205, -1
  %208 = add i64 %207, %206
  br label %214

209:                                              ; preds = %186
  %210 = call fastcc zeroext i8 @avoid_dollar_number(ptr noundef nonnull %195) #10, !range !14
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %212, label %1084

212:                                              ; preds = %209, %202
  %213 = load i64, ptr %29, align 8, !tbaa !26
  br label %214

214:                                              ; preds = %212, %204
  %215 = phi i64 [ %213, %212 ], [ %206, %204 ]
  %216 = phi i1 [ true, %212 ], [ false, %204 ]
  %217 = phi i32 [ 0, %212 ], [ 1, %204 ]
  %218 = phi i64 [ %93, %212 ], [ %208, %204 ]
  %219 = icmp eq i64 %215, 0
  br i1 %219, label %271, label %220

220:                                              ; preds = %214
  %221 = load ptr, ptr %9, align 8, !tbaa !9
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.35) #11
  br label %1084

225:                                              ; preds = %220
  %226 = getelementptr inbounds %struct.tree_list, ptr %221, i64 0, i32 2
  %227 = load ptr, ptr %226, align 8, !tbaa !11
  br i1 %216, label %228, label %232

228:                                              ; preds = %225
  %229 = getelementptr inbounds %struct.tree_common, ptr %221, i64 0, i32 1
  %230 = load ptr, ptr %229, align 8, !tbaa !11
  store ptr %230, ptr %9, align 8, !tbaa !9
  %231 = add i64 %218, 1
  br label %232

232:                                              ; preds = %228, %225
  %233 = phi i64 [ %231, %228 ], [ %218, %225 ]
  %234 = load ptr, ptr %38, align 8, !tbaa !65
  %235 = load ptr, ptr %234, align 8, !tbaa !9
  store ptr %235, ptr %11, align 8, !tbaa !68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %39, i8 0, i64 28, i1 false)
  store ptr @.str.36, ptr %40, align 8, !tbaa !70
  store ptr %227, ptr %41, align 8, !tbaa !71
  %236 = trunc i64 %233 to i32
  store i32 %236, ptr %42, align 8, !tbaa !72
  store ptr null, ptr %43, align 8, !tbaa !73
  br label %271

237:                                              ; preds = %179, %237
  %238 = phi i8 [ %244, %237 ], [ %180, %179 ]
  %239 = phi i32 [ %242, %237 ], [ 0, %179 ]
  %240 = phi ptr [ %243, %237 ], [ %170, %179 ]
  %241 = icmp eq i8 %238, 48
  %242 = select i1 %241, i32 %239, i32 1
  %243 = getelementptr inbounds i8, ptr %240, i64 1
  %244 = load i8, ptr %243, align 1, !tbaa !11
  %245 = zext i8 %244 to i64
  %246 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %245
  %247 = load i16, ptr %246, align 2, !tbaa !66
  %248 = and i16 %247, 4
  %249 = icmp eq i16 %248, 0
  br i1 %249, label %250, label %237, !llvm.loop !74

250:                                              ; preds = %237
  store ptr %243, ptr %8, align 8, !tbaa !9
  %251 = icmp ne i32 %242, 0
  %252 = select i1 %185, i1 true, i1 %251
  br i1 %252, label %260, label %253

253:                                              ; preds = %250
  %254 = load i32, ptr %35, align 8, !tbaa !20
  %255 = and i32 %254, 32
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %261, label %257

257:                                              ; preds = %253
  %258 = load ptr, ptr %24, align 8, !tbaa !24
  %259 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.37, ptr noundef %258) #11
  br label %261

260:                                              ; preds = %250
  br i1 %185, label %271, label %261

261:                                              ; preds = %253, %257, %260
  %262 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #10
  %263 = load i32, ptr %37, align 4, !tbaa !64
  %264 = trunc i32 %263 to i8
  %265 = shl i64 %262, 32
  %266 = ashr exact i64 %265, 32
  %267 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %266
  store i8 %264, ptr %267, align 1, !tbaa !11
  %268 = add i64 %265, 4294967296
  %269 = ashr exact i64 %268, 32
  %270 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %269
  store i8 0, ptr %270, align 1, !tbaa !11
  br label %271

271:                                              ; preds = %179, %260, %261, %232, %214, %169
  %272 = phi ptr [ %11, %232 ], [ null, %214 ], [ null, %169 ], [ null, %261 ], [ null, %260 ], [ null, %179 ]
  %273 = phi i32 [ %217, %232 ], [ %217, %214 ], [ %125, %169 ], [ %125, %261 ], [ %125, %260 ], [ %125, %179 ]
  %274 = phi i64 [ %233, %232 ], [ %218, %214 ], [ %93, %169 ], [ %93, %261 ], [ %93, %260 ], [ %93, %179 ]
  %275 = load i32, ptr %44, align 8, !tbaa !75
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %311, label %277

277:                                              ; preds = %271
  %278 = load ptr, ptr %8, align 8, !tbaa !9
  %279 = load i8, ptr %278, align 1, !tbaa !11
  %280 = icmp eq i8 %279, 35
  br i1 %280, label %281, label %311

281:                                              ; preds = %277
  %282 = getelementptr inbounds i8, ptr %278, i64 1
  %283 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #10
  %284 = trunc i32 %275 to i8
  %285 = shl i64 %283, 32
  %286 = ashr exact i64 %285, 32
  %287 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %286
  store i8 %284, ptr %287, align 1, !tbaa !11
  %288 = add i64 %285, 4294967296
  %289 = ashr exact i64 %288, 32
  %290 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %289
  store i8 0, ptr %290, align 1, !tbaa !11
  %291 = load i8, ptr %282, align 1, !tbaa !11
  %292 = zext i8 %291 to i64
  %293 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %292
  %294 = load i16, ptr %293, align 2, !tbaa !66
  %295 = and i16 %294, 4
  %296 = icmp eq i16 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %281
  %298 = load ptr, ptr %24, align 8, !tbaa !24
  %299 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.38, ptr noundef %298) #11
  br label %300

300:                                              ; preds = %297, %281
  br label %301

301:                                              ; preds = %300, %301
  %302 = phi ptr [ %309, %301 ], [ %282, %300 ]
  %303 = load i8, ptr %302, align 1, !tbaa !11
  %304 = zext i8 %303 to i64
  %305 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %304
  %306 = load i16, ptr %305, align 2, !tbaa !66
  %307 = and i16 %306, 4
  %308 = icmp eq i16 %307, 0
  %309 = getelementptr inbounds i8, ptr %302, i64 1
  br i1 %308, label %310, label %301, !llvm.loop !76

310:                                              ; preds = %301
  store ptr %302, ptr %8, align 8, !tbaa !9
  br label %311

311:                                              ; preds = %310, %277, %271
  %312 = load i32, ptr %45, align 4, !tbaa !77
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %404, label %314

314:                                              ; preds = %311
  %315 = load ptr, ptr %8, align 8, !tbaa !9
  %316 = load i8, ptr %315, align 1, !tbaa !11
  %317 = icmp eq i8 %316, 46
  br i1 %317, label %318, label %404

318:                                              ; preds = %314
  %319 = getelementptr inbounds i8, ptr %315, i64 1
  %320 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #10
  %321 = trunc i32 %312 to i8
  %322 = shl i64 %320, 32
  %323 = ashr exact i64 %322, 32
  %324 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %323
  store i8 %321, ptr %324, align 1, !tbaa !11
  %325 = add i64 %322, 4294967296
  %326 = ashr exact i64 %325, 32
  %327 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %326
  store i8 0, ptr %327, align 1, !tbaa !11
  %328 = load ptr, ptr %46, align 8, !tbaa !78
  %329 = icmp eq ptr %328, null
  br i1 %329, label %379, label %330

330:                                              ; preds = %318
  %331 = load i8, ptr %319, align 1, !tbaa !11
  %332 = icmp eq i8 %331, 42
  br i1 %332, label %333, label %379

333:                                              ; preds = %330
  %334 = getelementptr inbounds i8, ptr %315, i64 2
  store ptr %334, ptr %8, align 8, !tbaa !9
  %335 = icmp eq i32 %273, 0
  br i1 %335, label %348, label %336

336:                                              ; preds = %333
  %337 = icmp eq i32 %273, 1
  %338 = zext i1 %337 to i32
  %339 = call fastcc i32 @maybe_read_dollar_number(ptr noundef nonnull %8, i32 noundef %338, ptr noundef %4, ptr noundef nonnull %9, ptr noundef nonnull %24) #10
  %340 = icmp eq i32 %339, -1
  br i1 %340, label %1084, label %341

341:                                              ; preds = %336
  %342 = icmp sgt i32 %339, 0
  br i1 %342, label %343, label %351

343:                                              ; preds = %341
  %344 = zext nneg i32 %339 to i64
  %345 = load i64, ptr %29, align 8, !tbaa !26
  %346 = add nsw i64 %344, -1
  %347 = add i64 %346, %345
  br label %353

348:                                              ; preds = %333
  %349 = call fastcc zeroext i8 @avoid_dollar_number(ptr noundef nonnull %334) #10, !range !14
  %350 = icmp eq i8 %349, 0
  br i1 %350, label %351, label %1084

351:                                              ; preds = %348, %341
  %352 = load i64, ptr %29, align 8, !tbaa !26
  br label %353

353:                                              ; preds = %351, %343
  %354 = phi i64 [ %352, %351 ], [ %345, %343 ]
  %355 = phi i1 [ true, %351 ], [ false, %343 ]
  %356 = phi i32 [ 0, %351 ], [ 1, %343 ]
  %357 = phi i64 [ %274, %351 ], [ %347, %343 ]
  %358 = icmp eq i64 %354, 0
  br i1 %358, label %404, label %359

359:                                              ; preds = %353
  %360 = load ptr, ptr %9, align 8, !tbaa !9
  %361 = icmp eq ptr %360, null
  br i1 %361, label %362, label %364

362:                                              ; preds = %359
  %363 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.35) #11
  br label %1084

364:                                              ; preds = %359
  %365 = getelementptr inbounds %struct.tree_list, ptr %360, i64 0, i32 2
  %366 = load ptr, ptr %365, align 8, !tbaa !11
  br i1 %355, label %367, label %371

367:                                              ; preds = %364
  %368 = getelementptr inbounds %struct.tree_common, ptr %360, i64 0, i32 1
  %369 = load ptr, ptr %368, align 8, !tbaa !11
  store ptr %369, ptr %9, align 8, !tbaa !9
  %370 = add i64 %357, 1
  br label %371

371:                                              ; preds = %367, %364
  %372 = phi i64 [ %370, %367 ], [ %357, %364 ]
  %373 = load ptr, ptr %46, align 8, !tbaa !78
  %374 = load ptr, ptr %373, align 8, !tbaa !9
  store ptr %374, ptr %12, align 8, !tbaa !68
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %47, i8 0, i64 28, i1 false)
  store ptr @.str.39, ptr %48, align 8, !tbaa !70
  store ptr %366, ptr %49, align 8, !tbaa !71
  %375 = trunc i64 %372 to i32
  store i32 %375, ptr %50, align 8, !tbaa !72
  store ptr null, ptr %51, align 8, !tbaa !73
  %376 = icmp eq ptr %272, null
  br i1 %376, label %404, label %377

377:                                              ; preds = %371
  %378 = getelementptr inbounds %struct.format_wanted_type, ptr %272, i64 0, i32 10
  store ptr %12, ptr %378, align 8, !tbaa !73
  br label %404

379:                                              ; preds = %330, %318
  %380 = load i32, ptr %35, align 8, !tbaa !20
  %381 = and i32 %380, 64
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %393

383:                                              ; preds = %379
  %384 = load i8, ptr %319, align 1, !tbaa !11
  %385 = zext i8 %384 to i64
  %386 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %385
  %387 = load i16, ptr %386, align 2, !tbaa !66
  %388 = and i16 %387, 4
  %389 = icmp eq i16 %388, 0
  br i1 %389, label %390, label %393

390:                                              ; preds = %383
  %391 = load ptr, ptr %24, align 8, !tbaa !24
  %392 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.40, ptr noundef %391) #11
  br label %393

393:                                              ; preds = %390, %383, %379
  br label %394

394:                                              ; preds = %393, %394
  %395 = phi ptr [ %402, %394 ], [ %319, %393 ]
  %396 = load i8, ptr %395, align 1, !tbaa !11
  %397 = zext i8 %396 to i64
  %398 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %397
  %399 = load i16, ptr %398, align 2, !tbaa !66
  %400 = and i16 %399, 4
  %401 = icmp eq i16 %400, 0
  %402 = getelementptr inbounds i8, ptr %395, i64 1
  br i1 %401, label %403, label %394, !llvm.loop !79

403:                                              ; preds = %394
  store ptr %395, ptr %8, align 8, !tbaa !9
  br label %404

404:                                              ; preds = %403, %371, %377, %353, %314, %311
  %405 = phi ptr [ %272, %353 ], [ %272, %314 ], [ %272, %311 ], [ %272, %377 ], [ %12, %371 ], [ %272, %403 ]
  %406 = phi ptr [ %272, %353 ], [ %272, %314 ], [ %272, %311 ], [ %12, %377 ], [ %12, %371 ], [ %272, %403 ]
  %407 = phi i32 [ %356, %353 ], [ %273, %314 ], [ %273, %311 ], [ %356, %377 ], [ %356, %371 ], [ %273, %403 ]
  %408 = phi i64 [ %357, %353 ], [ %274, %314 ], [ %274, %311 ], [ %372, %377 ], [ %372, %371 ], [ %274, %403 ]
  %409 = load i32, ptr %52, align 8, !tbaa !80
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %426, label %411

411:                                              ; preds = %404
  %412 = load ptr, ptr %8, align 8, !tbaa !9
  %413 = load i8, ptr %412, align 1, !tbaa !11
  %414 = sext i8 %413 to i32
  %415 = icmp eq i32 %409, %414
  br i1 %415, label %416, label %426

416:                                              ; preds = %411
  %417 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #10
  %418 = trunc i32 %409 to i8
  %419 = shl i64 %417, 32
  %420 = ashr exact i64 %419, 32
  %421 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %420
  store i8 %418, ptr %421, align 1, !tbaa !11
  %422 = add i64 %419, 4294967296
  %423 = ashr exact i64 %422, 32
  %424 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %423
  store i8 0, ptr %424, align 1, !tbaa !11
  %425 = getelementptr inbounds i8, ptr %412, i64 1
  store ptr %425, ptr %8, align 8, !tbaa !9
  br label %426

426:                                              ; preds = %416, %411, %404
  %427 = load i32, ptr %35, align 8, !tbaa !20
  %428 = and i32 %427, 2
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %448, label %430

430:                                              ; preds = %426
  %431 = load ptr, ptr %8, align 8, !tbaa !9
  %432 = load i8, ptr %431, align 1, !tbaa !11
  %433 = icmp ne i8 %432, 97
  %434 = load i32, ptr @flag_isoc99, align 4
  %435 = icmp ne i32 %434, 0
  %436 = select i1 %433, i1 true, i1 %435
  br i1 %436, label %448, label %437

437:                                              ; preds = %430
  %438 = getelementptr inbounds i8, ptr %431, i64 1
  %439 = load i8, ptr %438, align 1, !tbaa !11
  switch i8 %439, label %448 [
    i8 115, label %440
    i8 83, label %440
    i8 91, label %440
  ]

440:                                              ; preds = %437, %437, %437
  %441 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #10
  %442 = shl i64 %441, 32
  %443 = ashr exact i64 %442, 32
  %444 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %443
  store i8 97, ptr %444, align 1, !tbaa !11
  %445 = add i64 %442, 4294967296
  %446 = ashr exact i64 %445, 32
  %447 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %446
  store i8 0, ptr %447, align 1, !tbaa !11
  store ptr %438, ptr %8, align 8, !tbaa !9
  br label %448

448:                                              ; preds = %437, %430, %440, %426
  %449 = load ptr, ptr %53, align 8, !tbaa !44
  %450 = icmp eq ptr %449, null
  br i1 %450, label %532, label %451

451:                                              ; preds = %448
  %452 = load ptr, ptr %449, align 8, !tbaa !9
  %453 = icmp eq ptr %452, null
  br i1 %453, label %500, label %454

454:                                              ; preds = %451
  %455 = load ptr, ptr %8, align 8, !tbaa !9
  br label %456

456:                                              ; preds = %454, %462
  %457 = phi ptr [ %452, %454 ], [ %464, %462 ]
  %458 = phi ptr [ %449, %454 ], [ %463, %462 ]
  %459 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %457) #10
  %460 = call i32 @strncmp(ptr noundef nonnull %457, ptr noundef %455, i64 noundef %459) #10
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %466, label %462

462:                                              ; preds = %456
  %463 = getelementptr inbounds %struct.format_length_info, ptr %458, i64 1
  %464 = load ptr, ptr %463, align 8, !tbaa !9
  %465 = icmp eq ptr %464, null
  br i1 %465, label %500, label %456, !llvm.loop !81

466:                                              ; preds = %456
  %467 = getelementptr inbounds i8, ptr %455, i64 %459
  store ptr %467, ptr %8, align 8, !tbaa !9
  %468 = getelementptr inbounds %struct.format_length_info, ptr %458, i64 0, i32 3
  %469 = load ptr, ptr %468, align 8, !tbaa !9
  %470 = icmp eq ptr %469, null
  br i1 %470, label %479, label %471

471:                                              ; preds = %466
  %472 = load i8, ptr %457, align 1, !tbaa !11
  %473 = load i8, ptr %467, align 1, !tbaa !11
  %474 = icmp eq i8 %472, %473
  br i1 %474, label %475, label %479

475:                                              ; preds = %471
  %476 = getelementptr inbounds i8, ptr %467, i64 1
  store ptr %476, ptr %8, align 8, !tbaa !9
  %477 = getelementptr inbounds %struct.format_length_info, ptr %458, i64 0, i32 4
  %478 = getelementptr inbounds %struct.format_length_info, ptr %458, i64 0, i32 5
  br label %484

479:                                              ; preds = %471, %466
  %480 = getelementptr inbounds %struct.format_length_info, ptr %458, i64 0, i32 1
  %481 = getelementptr inbounds %struct.format_length_info, ptr %458, i64 0, i32 2
  %482 = getelementptr inbounds %struct.format_length_info, ptr %458, i64 0, i32 6
  %483 = load i32, ptr %482, align 8, !tbaa !82
  br label %484

484:                                              ; preds = %479, %475
  %485 = phi ptr [ %469, %475 ], [ %457, %479 ]
  %486 = phi i32 [ 0, %475 ], [ %483, %479 ]
  %487 = phi ptr [ %478, %475 ], [ %481, %479 ]
  %488 = phi ptr [ %477, %475 ], [ %480, %479 ]
  %489 = load i32, ptr %488, align 8, !tbaa !5
  %490 = load i32, ptr %487, align 4, !tbaa !5
  %491 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #10
  %492 = load i32, ptr %54, align 4, !tbaa !83
  %493 = trunc i32 %492 to i8
  %494 = shl i64 %491, 32
  %495 = ashr exact i64 %494, 32
  %496 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %495
  store i8 %493, ptr %496, align 1, !tbaa !11
  %497 = add i64 %494, 4294967296
  %498 = ashr exact i64 %497, 32
  %499 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %498
  store i8 0, ptr %499, align 1, !tbaa !11
  br label %500

500:                                              ; preds = %462, %451, %484
  %501 = phi i32 [ %486, %484 ], [ 0, %451 ], [ 0, %462 ]
  %502 = phi i32 [ %490, %484 ], [ 0, %451 ], [ 0, %462 ]
  %503 = phi i32 [ %489, %484 ], [ 0, %451 ], [ 0, %462 ]
  %504 = phi ptr [ %485, %484 ], [ null, %451 ], [ null, %462 ]
  %505 = load i32, ptr @pedantic, align 4, !tbaa !5
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %532, label %507

507:                                              ; preds = %500
  %508 = icmp eq i32 %502, 2
  %509 = load i32, ptr @warn_long_long, align 4
  %510 = icmp eq i32 %509, 0
  %511 = select i1 %510, i32 0, i32 3
  %512 = select i1 %508, i32 %511, i32 %502
  %513 = load i32, ptr @c_language, align 4, !tbaa !5
  %514 = and i32 %513, 2
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %516, label %523

516:                                              ; preds = %507
  %517 = load i32, ptr @flag_isoc99, align 4, !tbaa !5
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %519, label %523

519:                                              ; preds = %516
  %520 = load i32, ptr @flag_isoc94, align 4, !tbaa !5
  %521 = icmp ne i32 %520, 0
  %522 = zext i1 %521 to i32
  br label %523

523:                                              ; preds = %519, %516, %507
  %524 = phi i32 [ 1, %507 ], [ %522, %519 ], [ 3, %516 ]
  %525 = icmp sgt i32 %512, %524
  br i1 %525, label %526, label %532

526:                                              ; preds = %523
  %527 = icmp eq i32 %502, 4
  %528 = select i1 %527, ptr @.str.43, ptr @.str.44
  %529 = select i1 %515, ptr %528, ptr @.str.42
  %530 = load ptr, ptr %24, align 8, !tbaa !24
  %531 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.41, ptr noundef nonnull %529, ptr noundef %504, ptr noundef %530) #11
  br label %532

532:                                              ; preds = %500, %526, %523, %448
  %533 = phi i32 [ %501, %526 ], [ %501, %523 ], [ %501, %500 ], [ 0, %448 ]
  %534 = phi i32 [ %502, %526 ], [ %502, %523 ], [ %502, %500 ], [ 0, %448 ]
  %535 = phi i32 [ %503, %526 ], [ %503, %523 ], [ %503, %500 ], [ 0, %448 ]
  %536 = phi ptr [ %504, %526 ], [ %504, %523 ], [ %504, %500 ], [ null, %448 ]
  %537 = load ptr, ptr %55, align 8, !tbaa !84
  %538 = icmp eq ptr %537, null
  %539 = load ptr, ptr %8, align 8, !tbaa !9
  br i1 %538, label %572, label %540

540:                                              ; preds = %532
  %541 = load i8, ptr %539, align 1, !tbaa !11
  %542 = icmp eq i8 %541, 0
  br i1 %542, label %570, label %543

543:                                              ; preds = %540, %566
  %544 = phi i8 [ %568, %566 ], [ %541, %540 ]
  %545 = phi ptr [ %567, %566 ], [ %539, %540 ]
  %546 = sext i8 %544 to i32
  %547 = load ptr, ptr %55, align 8, !tbaa !84
  %548 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %547, i32 noundef %546) #10
  %549 = icmp eq ptr %548, null
  br i1 %549, label %570, label %550

550:                                              ; preds = %543
  %551 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %20, i32 noundef %546) #10
  %552 = icmp eq ptr %551, null
  br i1 %552, label %558, label %553

553:                                              ; preds = %550
  %554 = call fastcc ptr @get_flag_spec(ptr noundef %26, i32 noundef %546, ptr noundef null) #10
  %555 = getelementptr inbounds %struct.format_flag_spec, ptr %554, i64 0, i32 3
  %556 = load ptr, ptr %555, align 8, !tbaa !60
  %557 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.33, ptr noundef %556) #11
  br label %566

558:                                              ; preds = %550
  %559 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #10
  %560 = shl i64 %559, 32
  %561 = ashr exact i64 %560, 32
  %562 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %561
  store i8 %544, ptr %562, align 1, !tbaa !11
  %563 = add i64 %560, 4294967296
  %564 = ashr exact i64 %563, 32
  %565 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %564
  store i8 0, ptr %565, align 1, !tbaa !11
  br label %566

566:                                              ; preds = %558, %553
  %567 = getelementptr inbounds i8, ptr %545, i64 1
  %568 = load i8, ptr %567, align 1, !tbaa !11
  %569 = icmp eq i8 %568, 0
  br i1 %569, label %570, label %543, !llvm.loop !85

570:                                              ; preds = %543, %566, %540
  %571 = phi ptr [ %539, %540 ], [ %567, %566 ], [ %545, %543 ]
  store ptr %571, ptr %8, align 8, !tbaa !9
  br label %572

572:                                              ; preds = %570, %532
  %573 = phi ptr [ %571, %570 ], [ %539, %532 ]
  %574 = load i8, ptr %573, align 1, !tbaa !11
  %575 = sext i8 %574 to i32
  %576 = icmp eq i8 %574, 0
  br i1 %576, label %583, label %577

577:                                              ; preds = %572
  %578 = load i32, ptr %35, align 8, !tbaa !20
  %579 = and i32 %578, 4
  %580 = icmp eq i32 %579, 0
  %581 = icmp eq i8 %574, 37
  %582 = and i1 %581, %580
  br i1 %582, label %583, label %585

583:                                              ; preds = %577, %572
  %584 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.45) #11
  br label %1078

585:                                              ; preds = %577
  %586 = getelementptr inbounds i8, ptr %573, i64 1
  store ptr %586, ptr %8, align 8, !tbaa !9
  %587 = load ptr, ptr %56, align 8, !tbaa !45
  %588 = load ptr, ptr %587, align 8, !tbaa !86
  %589 = icmp eq ptr %588, null
  br i1 %589, label %599, label %590

590:                                              ; preds = %585, %595
  %591 = phi ptr [ %597, %595 ], [ %588, %585 ]
  %592 = phi ptr [ %596, %595 ], [ %587, %585 ]
  %593 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %591, i32 noundef %575) #10
  %594 = icmp eq ptr %593, null
  br i1 %594, label %595, label %610

595:                                              ; preds = %590
  %596 = getelementptr inbounds %struct.format_char_info, ptr %592, i64 1
  %597 = load ptr, ptr %596, align 8, !tbaa !86
  %598 = icmp eq ptr %597, null
  br i1 %598, label %599, label %590, !llvm.loop !87

599:                                              ; preds = %595, %585
  %600 = and i32 %575, 255
  %601 = zext nneg i32 %600 to i64
  %602 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %601
  %603 = load i16, ptr %602, align 2, !tbaa !66
  %604 = and i16 %603, 172
  %605 = icmp eq i16 %604, 0
  br i1 %605, label %608, label %606

606:                                              ; preds = %599
  %607 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.46, i32 noundef %575) #11
  br label %1078

608:                                              ; preds = %599
  %609 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.47, i32 noundef %575) #11
  br label %1078

610:                                              ; preds = %590
  %611 = load i32, ptr @pedantic, align 4, !tbaa !5
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %641, label %613

613:                                              ; preds = %610
  %614 = getelementptr inbounds %struct.format_char_info, ptr %592, i64 0, i32 2
  %615 = load i32, ptr %614, align 4, !tbaa !88
  %616 = icmp eq i32 %615, 2
  %617 = load i32, ptr @warn_long_long, align 4
  %618 = icmp eq i32 %617, 0
  %619 = select i1 %618, i32 0, i32 3
  %620 = select i1 %616, i32 %619, i32 %615
  %621 = load i32, ptr @c_language, align 4, !tbaa !5
  %622 = and i32 %621, 2
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %624, label %632

624:                                              ; preds = %613
  %625 = load i32, ptr @flag_isoc99, align 4, !tbaa !5
  %626 = icmp eq i32 %625, 0
  %627 = load i32, ptr @flag_isoc94, align 4
  %628 = icmp ne i32 %627, 0
  %629 = zext i1 %628 to i32
  %630 = select i1 %626, i32 %629, i32 3
  %631 = icmp sgt i32 %620, %630
  br i1 %631, label %634, label %641

632:                                              ; preds = %613
  %633 = icmp sgt i32 %620, 1
  br i1 %633, label %637, label %641

634:                                              ; preds = %624
  %635 = icmp eq i32 %615, 4
  %636 = select i1 %635, ptr @.str.43, ptr @.str.44
  br label %637

637:                                              ; preds = %632, %634
  %638 = phi ptr [ %636, %634 ], [ @.str.42, %632 ]
  %639 = load ptr, ptr %24, align 8, !tbaa !24
  %640 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.48, ptr noundef nonnull %638, i32 noundef %575, ptr noundef %639) #11
  br label %641

641:                                              ; preds = %632, %624, %637, %610
  %642 = load i8, ptr %20, align 16, !tbaa !11
  %643 = icmp eq i8 %642, 0
  br i1 %643, label %761, label %644

644:                                              ; preds = %641
  %645 = getelementptr inbounds %struct.format_char_info, ptr %592, i64 0, i32 4
  %646 = getelementptr inbounds %struct.format_char_info, ptr %592, i64 0, i32 5
  br label %647

647:                                              ; preds = %644, %752
  %648 = phi i64 [ 0, %644 ], [ %754, %752 ]
  %649 = phi i8 [ %642, %644 ], [ %756, %752 ]
  %650 = phi ptr [ %20, %644 ], [ %755, %752 ]
  %651 = phi i32 [ 0, %644 ], [ %753, %752 ]
  %652 = sext i8 %649 to i32
  %653 = call fastcc ptr @get_flag_spec(ptr noundef %26, i32 noundef %652, ptr noundef null) #10
  %654 = load i8, ptr %650, align 1, !tbaa !11
  %655 = trunc i64 %648 to i32
  %656 = sub nsw i32 %655, %651
  %657 = sext i32 %656 to i64
  %658 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %657
  store i8 %654, ptr %658, align 1, !tbaa !11
  %659 = sext i8 %654 to i32
  %660 = load i32, ptr %54, align 4, !tbaa !83
  %661 = icmp eq i32 %660, %659
  br i1 %661, label %752, label %662

662:                                              ; preds = %647
  %663 = load ptr, ptr %645, align 8, !tbaa !89
  %664 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %663, i32 noundef %659) #10
  %665 = icmp eq ptr %664, null
  br i1 %665, label %666, label %672

666:                                              ; preds = %662
  %667 = getelementptr inbounds %struct.format_flag_spec, ptr %653, i64 0, i32 3
  %668 = load ptr, ptr %667, align 8, !tbaa !60
  %669 = load ptr, ptr %24, align 8, !tbaa !24
  %670 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.49, ptr noundef %668, i32 noundef %575, ptr noundef %669) #11
  %671 = add nsw i32 %651, 1
  br label %752

672:                                              ; preds = %662
  %673 = load i32, ptr @pedantic, align 4, !tbaa !5
  %674 = icmp eq i32 %673, 0
  br i1 %674, label %752, label %675

675:                                              ; preds = %672
  %676 = getelementptr inbounds %struct.format_flag_spec, ptr %653, i64 0, i32 5
  %677 = load i32, ptr %676, align 8, !tbaa !90
  %678 = icmp eq i32 %677, 2
  %679 = load i32, ptr @warn_long_long, align 4
  %680 = icmp eq i32 %679, 0
  %681 = select i1 %680, i32 0, i32 3
  %682 = select i1 %678, i32 %681, i32 %677
  %683 = load i32, ptr @c_language, align 4, !tbaa !5
  %684 = and i32 %683, 2
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %686, label %694

686:                                              ; preds = %675
  %687 = load i32, ptr @flag_isoc99, align 4, !tbaa !5
  %688 = icmp eq i32 %687, 0
  %689 = load i32, ptr @flag_isoc94, align 4
  %690 = icmp ne i32 %689, 0
  %691 = zext i1 %690 to i32
  %692 = select i1 %688, i32 %691, i32 3
  %693 = icmp sgt i32 %682, %692
  br i1 %693, label %696, label %706

694:                                              ; preds = %675
  %695 = icmp sgt i32 %682, 1
  br i1 %695, label %699, label %706

696:                                              ; preds = %686
  %697 = icmp eq i32 %677, 4
  %698 = select i1 %697, ptr @.str.43, ptr @.str.44
  br label %699

699:                                              ; preds = %694, %696
  %700 = phi ptr [ %698, %696 ], [ @.str.42, %694 ]
  %701 = getelementptr inbounds %struct.format_flag_spec, ptr %653, i64 0, i32 4
  %702 = load ptr, ptr %701, align 8, !tbaa !91
  %703 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.50, ptr noundef nonnull %700, ptr noundef %702) #11
  %704 = load i8, ptr %650, align 1, !tbaa !11
  %705 = sext i8 %704 to i32
  br label %706

706:                                              ; preds = %694, %699, %686
  %707 = phi i32 [ %659, %694 ], [ %705, %699 ], [ %659, %686 ]
  %708 = load ptr, ptr %646, align 8, !tbaa !92
  %709 = call fastcc ptr @get_flag_spec(ptr noundef %26, i32 noundef %707, ptr noundef %708) #10
  %710 = icmp eq ptr %709, null
  br i1 %710, label %752, label %711

711:                                              ; preds = %706
  %712 = getelementptr inbounds %struct.format_flag_spec, ptr %709, i64 0, i32 5
  %713 = load i32, ptr %712, align 8, !tbaa !90
  %714 = icmp eq i32 %713, 2
  %715 = load i32, ptr @warn_long_long, align 4
  %716 = icmp eq i32 %715, 0
  %717 = select i1 %716, i32 0, i32 3
  %718 = select i1 %714, i32 %717, i32 %713
  %719 = load i32, ptr %676, align 8, !tbaa !90
  %720 = icmp eq i32 %719, 2
  %721 = select i1 %720, i32 %717, i32 %719
  %722 = icmp sgt i32 %718, %721
  br i1 %722, label %723, label %752

723:                                              ; preds = %711
  %724 = getelementptr inbounds %struct.format_flag_spec, ptr %709, i64 0, i32 4
  %725 = load ptr, ptr %724, align 8, !tbaa !91
  %726 = icmp eq ptr %725, null
  br i1 %726, label %727, label %730

727:                                              ; preds = %723
  %728 = getelementptr inbounds %struct.format_flag_spec, ptr %653, i64 0, i32 4
  %729 = load ptr, ptr %728, align 8, !tbaa !91
  br label %730

730:                                              ; preds = %723, %727
  %731 = phi ptr [ %729, %727 ], [ %725, %723 ]
  %732 = load i32, ptr @c_language, align 4, !tbaa !5
  %733 = and i32 %732, 2
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %735, label %743

735:                                              ; preds = %730
  %736 = load i32, ptr @flag_isoc99, align 4, !tbaa !5
  %737 = icmp eq i32 %736, 0
  %738 = load i32, ptr @flag_isoc94, align 4
  %739 = icmp ne i32 %738, 0
  %740 = zext i1 %739 to i32
  %741 = select i1 %737, i32 %740, i32 3
  %742 = icmp sgt i32 %718, %741
  br i1 %742, label %745, label %752

743:                                              ; preds = %730
  %744 = icmp sgt i32 %718, 1
  br i1 %744, label %748, label %752

745:                                              ; preds = %735
  %746 = icmp eq i32 %713, 4
  %747 = select i1 %746, ptr @.str.43, ptr @.str.44
  br label %748

748:                                              ; preds = %743, %745
  %749 = phi ptr [ %747, %745 ], [ @.str.42, %743 ]
  %750 = load ptr, ptr %24, align 8, !tbaa !24
  %751 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.51, ptr noundef nonnull %749, ptr noundef %731, i32 noundef %575, ptr noundef %750) #11
  br label %752

752:                                              ; preds = %743, %672, %735, %748, %711, %706, %647, %666
  %753 = phi i32 [ %671, %666 ], [ %651, %647 ], [ %651, %706 ], [ %651, %711 ], [ %651, %748 ], [ %651, %735 ], [ %651, %672 ], [ %651, %743 ]
  %754 = add nuw i64 %648, 1
  %755 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %754
  %756 = load i8, ptr %755, align 1, !tbaa !11
  %757 = icmp eq i8 %756, 0
  br i1 %757, label %758, label %647, !llvm.loop !93

758:                                              ; preds = %752
  %759 = trunc i64 %754 to i32
  %760 = sub nsw i32 %759, %753
  br label %761

761:                                              ; preds = %758, %641
  %762 = phi i32 [ 0, %641 ], [ %760, %758 ]
  %763 = sext i32 %762 to i64
  %764 = getelementptr inbounds [256 x i8], ptr %20, i64 0, i64 %763
  store i8 0, ptr %764, align 1, !tbaa !11
  %765 = load i32, ptr %35, align 8, !tbaa !20
  %766 = and i32 %765, 2
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %772, label %768

768:                                              ; preds = %761
  %769 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %20, i32 noundef 97) #10
  %770 = icmp ne ptr %769, null
  %771 = zext i1 %770 to i32
  br label %772

772:                                              ; preds = %768, %761
  %773 = phi i32 [ 0, %761 ], [ %771, %768 ]
  %774 = load i32, ptr %52, align 8, !tbaa !80
  %775 = icmp eq i32 %774, 0
  br i1 %775, label %780, label %776

776:                                              ; preds = %772
  %777 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %20, i32 noundef %774) #10
  %778 = icmp eq ptr %777, null
  %779 = select i1 %778, i32 %773, i32 1
  br label %780

780:                                              ; preds = %776, %772
  %781 = phi i32 [ %773, %772 ], [ %779, %776 ]
  %782 = load i32, ptr %57, align 8, !tbaa !94
  %783 = icmp eq i32 %782, 0
  br i1 %783, label %788, label %784

784:                                              ; preds = %780
  %785 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %20, i32 noundef %782) #10
  %786 = icmp eq ptr %785, null
  %787 = xor i1 %786, true
  br label %788

788:                                              ; preds = %784, %780
  %789 = phi i1 [ true, %780 ], [ %786, %784 ]
  %790 = phi i1 [ false, %780 ], [ %787, %784 ]
  %791 = load i32, ptr %28, align 4, !tbaa !95
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %842, label %793

793:                                              ; preds = %788
  %794 = getelementptr inbounds %struct.format_char_info, ptr %592, i64 0, i32 5
  br label %795

795:                                              ; preds = %793, %837
  %796 = phi i64 [ 0, %793 ], [ %838, %837 ]
  %797 = phi i32 [ %791, %793 ], [ %840, %837 ]
  %798 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %20, i32 noundef %797) #10
  %799 = icmp eq ptr %798, null
  br i1 %799, label %837, label %800

800:                                              ; preds = %795
  %801 = getelementptr inbounds %struct.format_flag_pair, ptr %28, i64 %796, i32 1
  %802 = load i32, ptr %801, align 4, !tbaa !97
  %803 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %20, i32 noundef %802) #10
  %804 = icmp eq ptr %803, null
  br i1 %804, label %837, label %805

805:                                              ; preds = %800
  %806 = getelementptr inbounds %struct.format_flag_pair, ptr %28, i64 %796, i32 3
  %807 = load i32, ptr %806, align 4, !tbaa !98
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %813, label %809

809:                                              ; preds = %805
  %810 = load ptr, ptr %794, align 8, !tbaa !92
  %811 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %810, i32 noundef %807) #10
  %812 = icmp eq ptr %811, null
  br i1 %812, label %837, label %813

813:                                              ; preds = %809, %805
  %814 = call fastcc ptr @get_flag_spec(ptr noundef %26, i32 noundef %797, ptr noundef null) #10
  %815 = load i32, ptr %801, align 4, !tbaa !97
  %816 = call fastcc ptr @get_flag_spec(ptr noundef %26, i32 noundef %815, ptr noundef null) #10
  %817 = getelementptr inbounds %struct.format_flag_pair, ptr %28, i64 %796, i32 2
  %818 = load i32, ptr %817, align 4, !tbaa !99
  %819 = icmp eq i32 %818, 0
  %820 = load i32, ptr %806, align 4, !tbaa !98
  %821 = icmp eq i32 %820, 0
  %822 = getelementptr inbounds %struct.format_flag_spec, ptr %814, i64 0, i32 3
  %823 = load ptr, ptr %822, align 8, !tbaa !60
  %824 = getelementptr inbounds %struct.format_flag_spec, ptr %816, i64 0, i32 3
  %825 = load ptr, ptr %824, align 8, !tbaa !60
  %826 = load ptr, ptr %24, align 8, !tbaa !24
  br i1 %819, label %832, label %827

827:                                              ; preds = %813
  br i1 %821, label %830, label %828

828:                                              ; preds = %827
  %829 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.52, ptr noundef %823, ptr noundef %825, i32 noundef %575, ptr noundef %826) #11
  br label %837

830:                                              ; preds = %827
  %831 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.53, ptr noundef %823, ptr noundef %825, ptr noundef %826) #11
  br label %837

832:                                              ; preds = %813
  br i1 %821, label %835, label %833

833:                                              ; preds = %832
  %834 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.54, ptr noundef %823, ptr noundef %825, i32 noundef %575, ptr noundef %826) #11
  br label %837

835:                                              ; preds = %832
  %836 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.55, ptr noundef %823, ptr noundef %825, ptr noundef %826) #11
  br label %837

837:                                              ; preds = %830, %828, %835, %833, %809, %800, %795
  %838 = add nuw i64 %796, 1
  %839 = getelementptr inbounds %struct.format_flag_pair, ptr %28, i64 %838
  %840 = load i32, ptr %839, align 4, !tbaa !95
  %841 = icmp eq i32 %840, 0
  br i1 %841, label %842, label %795, !llvm.loop !100

842:                                              ; preds = %837, %788
  %843 = load i32, ptr @warn_format_y2k, align 4, !tbaa !5
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %863, label %845

845:                                              ; preds = %842
  %846 = getelementptr inbounds %struct.format_char_info, ptr %592, i64 0, i32 5
  %847 = load ptr, ptr %846, align 8, !tbaa !92
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
  %862 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 96, ptr noundef nonnull %861, i32 noundef %575) #11
  br label %863

863:                                              ; preds = %860, %853, %842
  %864 = getelementptr inbounds %struct.format_char_info, ptr %592, i64 0, i32 5
  %865 = load ptr, ptr %864, align 8, !tbaa !92
  %866 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %865, i32 noundef 91) #10
  %867 = icmp eq ptr %866, null
  br i1 %867, label %890, label %868

868:                                              ; preds = %863
  %869 = load i8, ptr %586, align 1, !tbaa !11
  %870 = icmp eq i8 %869, 94
  br i1 %870, label %871, label %874

871:                                              ; preds = %868
  %872 = getelementptr inbounds i8, ptr %573, i64 2
  store ptr %872, ptr %8, align 8, !tbaa !9
  %873 = load i8, ptr %872, align 1, !tbaa !11
  br label %874

874:                                              ; preds = %871, %868
  %875 = phi i8 [ %873, %871 ], [ %869, %868 ]
  %876 = phi ptr [ %872, %871 ], [ %586, %868 ]
  %877 = icmp eq i8 %875, 93
  br i1 %877, label %878, label %880

878:                                              ; preds = %874
  %879 = getelementptr inbounds i8, ptr %876, i64 1
  store ptr %879, ptr %8, align 8, !tbaa !9
  br label %880

880:                                              ; preds = %878, %874
  %881 = phi ptr [ %876, %874 ], [ %879, %878 ]
  br label %882

882:                                              ; preds = %880, %885
  %883 = phi ptr [ %886, %885 ], [ %881, %880 ]
  %884 = load i8, ptr %883, align 1, !tbaa !11
  switch i8 %884, label %885 [
    i8 93, label %889
    i8 0, label %887
  ]

885:                                              ; preds = %882
  %886 = getelementptr inbounds i8, ptr %883, i64 1
  br label %882, !llvm.loop !101

887:                                              ; preds = %882
  store ptr %883, ptr %8, align 8, !tbaa !9
  %888 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.58) #11
  br label %890

889:                                              ; preds = %882
  store ptr %883, ptr %8, align 8, !tbaa !9
  br label %890

890:                                              ; preds = %889, %887, %863
  %891 = load i32, ptr %35, align 8, !tbaa !20
  %892 = and i32 %891, 1
  %893 = icmp eq i32 %892, 0
  br i1 %893, label %954, label %894

894:                                              ; preds = %890
  %895 = zext i32 %535 to i64
  %896 = getelementptr inbounds %struct.format_char_info, ptr %592, i64 0, i32 3, i64 %895, i32 2
  %897 = load ptr, ptr %896, align 8, !tbaa !46
  %898 = icmp eq ptr %897, null
  br i1 %898, label %906, label %899

899:                                              ; preds = %894
  %900 = getelementptr inbounds %struct.format_char_info, ptr %592, i64 0, i32 3, i64 %895
  %901 = load ptr, ptr %897, align 8, !tbaa !9
  %902 = getelementptr inbounds %struct.format_char_info, ptr %592, i64 0, i32 3, i64 %895, i32 1
  %903 = load ptr, ptr %902, align 8, !tbaa !102
  %904 = load i32, ptr %900, align 8, !tbaa !103
  %905 = icmp eq ptr %901, null
  br i1 %905, label %906, label %916

906:                                              ; preds = %894, %899
  %907 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.59, ptr noundef %536, i32 noundef %575) #11
  %908 = load ptr, ptr %9, align 8, !tbaa !9
  %909 = icmp eq ptr %908, null
  br i1 %909, label %910, label %912

910:                                              ; preds = %906
  %911 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.35) #11
  br label %1084

912:                                              ; preds = %906
  %913 = add i64 %408, 1
  %914 = getelementptr inbounds %struct.tree_common, ptr %908, i64 0, i32 1
  %915 = load ptr, ptr %914, align 8, !tbaa !11
  store ptr %915, ptr %9, align 8, !tbaa !9
  br label %1078

916:                                              ; preds = %899
  %917 = load i32, ptr @pedantic, align 4, !tbaa !5
  %918 = icmp eq i32 %917, 0
  br i1 %918, label %954, label %919

919:                                              ; preds = %916
  %920 = icmp eq i32 %904, 2
  %921 = load i32, ptr @warn_long_long, align 4
  %922 = icmp eq i32 %921, 0
  %923 = select i1 %922, i32 0, i32 3
  %924 = select i1 %920, i32 %923, i32 %904
  %925 = icmp eq i32 %534, 2
  %926 = select i1 %925, i32 %923, i32 %534
  %927 = icmp sgt i32 %924, %926
  br i1 %927, label %928, label %954

928:                                              ; preds = %919
  %929 = getelementptr inbounds %struct.format_char_info, ptr %592, i64 0, i32 2
  %930 = load i32, ptr %929, align 4, !tbaa !88
  %931 = icmp eq i32 %930, 2
  %932 = select i1 %931, i32 %923, i32 %930
  %933 = icmp sgt i32 %924, %932
  br i1 %933, label %934, label %954

934:                                              ; preds = %928
  %935 = load i32, ptr @c_language, align 4, !tbaa !5
  %936 = and i32 %935, 2
  %937 = icmp eq i32 %936, 0
  br i1 %937, label %938, label %945

938:                                              ; preds = %934
  %939 = load i32, ptr @flag_isoc99, align 4, !tbaa !5
  %940 = icmp eq i32 %939, 0
  br i1 %940, label %941, label %945

941:                                              ; preds = %938
  %942 = load i32, ptr @flag_isoc94, align 4, !tbaa !5
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
  %952 = load ptr, ptr %24, align 8, !tbaa !24
  %953 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.60, ptr noundef nonnull %951, ptr noundef %536, i32 noundef %575, ptr noundef %952) #11
  br label %954

954:                                              ; preds = %945, %948, %928, %919, %916, %890
  %955 = phi ptr [ %903, %948 ], [ %903, %945 ], [ %903, %928 ], [ %903, %919 ], [ %903, %916 ], [ null, %890 ]
  %956 = phi ptr [ %901, %948 ], [ %901, %945 ], [ %901, %928 ], [ %901, %919 ], [ %901, %916 ], [ null, %890 ]
  store ptr null, ptr %58, align 8, !tbaa !73
  %957 = load i64, ptr %29, align 8, !tbaa !26
  %958 = icmp eq i64 %957, 0
  br i1 %958, label %1078, label %959

959:                                              ; preds = %954
  %960 = getelementptr inbounds %struct.format_char_info, ptr %592, i64 0, i32 1
  %961 = load i32, ptr %960, align 8, !tbaa !48
  %962 = icmp eq i32 %961, 0
  br i1 %962, label %963, label %967

963:                                              ; preds = %959
  %964 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !9
  %965 = icmp eq ptr %956, %964
  %966 = or i1 %790, %965
  br i1 %966, label %968, label %977

967:                                              ; preds = %959
  br i1 %789, label %977, label %970

968:                                              ; preds = %963
  %969 = icmp eq i32 %124, 0
  br i1 %969, label %1067, label %972

970:                                              ; preds = %967
  %971 = icmp eq i32 %124, 0
  br i1 %971, label %1067, label %973

972:                                              ; preds = %968
  br i1 %789, label %975, label %973

973:                                              ; preds = %970, %972
  %974 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.61) #11
  br label %1067

975:                                              ; preds = %972
  %976 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.62) #11
  br label %1067

977:                                              ; preds = %963, %967
  %978 = icmp eq i32 %124, 0
  br i1 %978, label %982, label %979

979:                                              ; preds = %977
  %980 = zext i32 %124 to i64
  %981 = load ptr, ptr %10, align 8, !tbaa !9
  store ptr %981, ptr %9, align 8, !tbaa !9
  br label %987

982:                                              ; preds = %977
  %983 = add i64 %408, 1
  %984 = icmp sgt i32 %407, 0
  br i1 %984, label %985, label %987

985:                                              ; preds = %982
  %986 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.63) #11
  br label %1084

987:                                              ; preds = %982, %979
  %988 = phi i32 [ %407, %979 ], [ 0, %982 ]
  %989 = phi i64 [ %980, %979 ], [ %983, %982 ]
  %990 = icmp ne i32 %533, 0
  %991 = zext i1 %990 to i32
  %992 = icmp eq i32 %781, 0
  %993 = zext i32 %535 to i64
  %994 = load ptr, ptr %9, align 8, !tbaa !9
  %995 = icmp eq ptr %994, null
  br i1 %995, label %996, label %999

996:                                              ; preds = %987, %1051
  %997 = phi ptr [ %1017, %1051 ], [ %994, %987 ]
  store ptr %997, ptr %9, align 8, !tbaa !9
  %998 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.35) #11
  br label %1084

999:                                              ; preds = %987, %1051
  %1000 = phi ptr [ %1047, %1051 ], [ %405, %987 ]
  %1001 = phi ptr [ %1006, %1051 ], [ %406, %987 ]
  %1002 = phi ptr [ %1049, %1051 ], [ %592, %987 ]
  %1003 = phi ptr [ %1064, %1051 ], [ %955, %987 ]
  %1004 = phi ptr [ %1062, %1051 ], [ %956, %987 ]
  %1005 = phi i64 [ %1059, %1051 ], [ %989, %987 ]
  %1006 = phi ptr [ %1052, %1051 ], [ %13, %987 ]
  %1007 = phi ptr [ %1017, %1051 ], [ %994, %987 ]
  %1008 = phi ptr [ %1058, %1051 ], [ %19, %987 ]
  %1009 = phi ptr [ %1057, %1051 ], [ %18, %987 ]
  %1010 = phi ptr [ %1056, %1051 ], [ %17, %987 ]
  %1011 = phi ptr [ %1055, %1051 ], [ %16, %987 ]
  %1012 = phi ptr [ %1054, %1051 ], [ %15, %987 ]
  %1013 = phi ptr [ %1053, %1051 ], [ %14, %987 ]
  %1014 = getelementptr inbounds %struct.tree_list, ptr %1007, i64 0, i32 2
  %1015 = load ptr, ptr %1014, align 8, !tbaa !11
  %1016 = getelementptr inbounds %struct.tree_common, ptr %1007, i64 0, i32 1
  %1017 = load ptr, ptr %1016, align 8, !tbaa !11
  store ptr %1004, ptr %1006, align 8, !tbaa !68
  store ptr %1003, ptr %1008, align 8, !tbaa !104
  %1018 = getelementptr inbounds %struct.format_char_info, ptr %1002, i64 0, i32 1
  %1019 = load i32, ptr %1018, align 8, !tbaa !48
  %1020 = add nsw i32 %1019, %781
  store i32 %1020, ptr %1009, align 4, !tbaa !105
  store i32 0, ptr %1010, align 8, !tbaa !106
  %1021 = getelementptr inbounds %struct.format_char_info, ptr %1002, i64 0, i32 5
  %1022 = load ptr, ptr %1021, align 8, !tbaa !92
  %1023 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1022, i32 noundef 99) #10
  %1024 = icmp ne ptr %1023, null
  %1025 = zext i1 %1024 to i32
  store i32 %1025, ptr %1010, align 8
  store i32 %991, ptr %1011, align 8, !tbaa !107
  store i32 0, ptr %1012, align 4, !tbaa !108
  store i32 0, ptr %1013, align 8, !tbaa !109
  br i1 %992, label %1027, label %1026

1026:                                             ; preds = %999
  store i32 1, ptr %1012, align 4, !tbaa !108
  br label %1036

1027:                                             ; preds = %999
  %1028 = load ptr, ptr %1021, align 8, !tbaa !92
  %1029 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1028, i32 noundef 87) #10
  %1030 = icmp eq ptr %1029, null
  br i1 %1030, label %1032, label %1031

1031:                                             ; preds = %1027
  store i32 1, ptr %1012, align 4, !tbaa !108
  br label %1032

1032:                                             ; preds = %1031, %1027
  %1033 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1028, i32 noundef 82) #10
  %1034 = icmp eq ptr %1033, null
  br i1 %1034, label %1036, label %1035

1035:                                             ; preds = %1032
  store i32 1, ptr %1013, align 8, !tbaa !109
  br label %1036

1036:                                             ; preds = %1032, %1035, %1026
  %1037 = getelementptr inbounds %struct.format_wanted_type, ptr %1006, i64 0, i32 7
  store ptr null, ptr %1037, align 8, !tbaa !70
  %1038 = getelementptr inbounds %struct.format_wanted_type, ptr %1006, i64 0, i32 8
  store ptr %1015, ptr %1038, align 8, !tbaa !71
  %1039 = trunc i64 %1005 to i32
  %1040 = getelementptr inbounds %struct.format_wanted_type, ptr %1006, i64 0, i32 9
  store i32 %1039, ptr %1040, align 8, !tbaa !72
  %1041 = getelementptr inbounds %struct.format_wanted_type, ptr %1006, i64 0, i32 10
  store ptr null, ptr %1041, align 8, !tbaa !73
  %1042 = icmp eq ptr %1001, null
  br i1 %1042, label %1045, label %1043

1043:                                             ; preds = %1036
  %1044 = getelementptr inbounds %struct.format_wanted_type, ptr %1001, i64 0, i32 10
  store ptr %1006, ptr %1044, align 8, !tbaa !73
  br label %1045

1045:                                             ; preds = %1043, %1036
  %1046 = icmp eq ptr %1000, null
  %1047 = select i1 %1046, ptr %1006, ptr %1000
  %1048 = getelementptr inbounds %struct.format_char_info, ptr %1002, i64 0, i32 6
  %1049 = load ptr, ptr %1048, align 8, !tbaa !110
  %1050 = icmp eq ptr %1049, null
  br i1 %1050, label %1066, label %1051

1051:                                             ; preds = %1045
  %1052 = call ptr @pool_alloc(ptr noundef %6) #11
  %1053 = getelementptr inbounds %struct.format_wanted_type, ptr %1052, i64 0, i32 6
  %1054 = getelementptr inbounds %struct.format_wanted_type, ptr %1052, i64 0, i32 5
  %1055 = getelementptr inbounds %struct.format_wanted_type, ptr %1052, i64 0, i32 2
  %1056 = getelementptr inbounds %struct.format_wanted_type, ptr %1052, i64 0, i32 4
  %1057 = getelementptr inbounds %struct.format_wanted_type, ptr %1052, i64 0, i32 3
  %1058 = getelementptr inbounds %struct.format_wanted_type, ptr %1052, i64 0, i32 1
  %1059 = add i64 %1005, 1
  %1060 = getelementptr inbounds %struct.format_char_info, ptr %1049, i64 0, i32 3, i64 %993, i32 2
  %1061 = load ptr, ptr %1060, align 8, !tbaa !46
  %1062 = load ptr, ptr %1061, align 8, !tbaa !9
  %1063 = getelementptr inbounds %struct.format_char_info, ptr %1049, i64 0, i32 3, i64 %993, i32 1
  %1064 = load ptr, ptr %1063, align 8, !tbaa !102
  %1065 = icmp eq ptr %1017, null
  br i1 %1065, label %996, label %999, !llvm.loop !111

1066:                                             ; preds = %1045
  store ptr %1017, ptr %9, align 8, !tbaa !9
  br label %1067

1067:                                             ; preds = %1066, %970, %968, %975, %973
  %1068 = phi ptr [ %405, %973 ], [ %405, %975 ], [ %405, %968 ], [ %405, %970 ], [ %1047, %1066 ]
  %1069 = phi i32 [ %407, %973 ], [ %407, %975 ], [ %407, %968 ], [ %407, %970 ], [ %988, %1066 ]
  %1070 = phi i64 [ %408, %973 ], [ %408, %975 ], [ %408, %968 ], [ %408, %970 ], [ %1005, %1066 ]
  %1071 = icmp eq ptr %1068, null
  br i1 %1071, label %1078, label %1072

1072:                                             ; preds = %1067
  %1073 = load ptr, ptr %8, align 8, !tbaa !9
  %1074 = ptrtoint ptr %1073 to i64
  %1075 = ptrtoint ptr %92 to i64
  %1076 = sub i64 %1074, %1075
  %1077 = trunc i64 %1076 to i32
  call fastcc void @check_format_types(ptr noundef nonnull %1068, ptr noundef nonnull %92, i32 noundef %1077) #10
  br label %1078

1078:                                             ; preds = %1067, %1072, %954, %606, %608, %90, %912, %583, %101, %99
  %1079 = phi i32 [ %94, %99 ], [ %94, %101 ], [ %407, %583 ], [ %407, %912 ], [ %94, %90 ], [ %407, %608 ], [ %407, %606 ], [ %407, %954 ], [ %1069, %1072 ], [ %1069, %1067 ]
  %1080 = phi i64 [ %93, %99 ], [ %93, %101 ], [ %408, %583 ], [ %913, %912 ], [ %93, %90 ], [ %408, %608 ], [ %408, %606 ], [ %408, %954 ], [ %1070, %1072 ], [ %1070, %1067 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %20) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #9
  store ptr null, ptr %10, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %13) #9
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %20) #9
  %1081 = load ptr, ptr %8, align 8, !tbaa !9
  %1082 = load i8, ptr %1081, align 1, !tbaa !11
  %1083 = icmp eq i8 %1082, 0
  br i1 %1083, label %59, label %90

1084:                                             ; preds = %117, %120, %209, %348, %197, %336, %985, %996, %223, %362, %910, %86, %84, %162, %77
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
define internal fastcc void @init_dollar_format_checking(i32 noundef %0, ptr noundef readonly %1) unnamed_addr #1 {
  store i32 %0, ptr @dollar_first_arg_num, align 4, !tbaa !5
  store i32 0, ptr @dollar_arguments_count, align 4, !tbaa !5
  store i32 0, ptr @dollar_max_arg_used, align 4, !tbaa !5
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
  %11 = load ptr, ptr %10, align 8, !tbaa !11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6

13:                                               ; preds = %6
  store i32 %9, ptr @dollar_arguments_count, align 4, !tbaa !5
  br label %14

14:                                               ; preds = %13, %2
  %15 = phi i32 [ %9, %13 ], [ 0, %2 ]
  %16 = load i32, ptr @dollar_arguments_alloc, align 4, !tbaa !5
  %17 = icmp slt i32 %16, %15
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load ptr, ptr @dollar_arguments_used, align 8, !tbaa !9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @free(ptr noundef nonnull %19) #10
  br label %22

22:                                               ; preds = %21, %18
  %23 = load ptr, ptr @dollar_arguments_pointer_p, align 8, !tbaa !9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @free(ptr noundef nonnull %23) #10
  br label %26

26:                                               ; preds = %25, %22
  store i32 %15, ptr @dollar_arguments_alloc, align 4, !tbaa !5
  %27 = sext i32 %15 to i64
  %28 = tail call ptr @xmalloc(i64 noundef %27) #11
  store ptr %28, ptr @dollar_arguments_used, align 8, !tbaa !9
  %29 = load i32, ptr @dollar_arguments_alloc, align 4, !tbaa !5
  %30 = sext i32 %29 to i64
  %31 = tail call ptr @xmalloc(i64 noundef %30) #11
  store ptr %31, ptr @dollar_arguments_pointer_p, align 8, !tbaa !9
  %32 = load i32, ptr @dollar_arguments_alloc, align 4, !tbaa !5
  br label %33

33:                                               ; preds = %26, %14
  %34 = phi i32 [ %32, %26 ], [ %16, %14 ]
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %57, label %36

36:                                               ; preds = %33
  %37 = load ptr, ptr @dollar_arguments_used, align 8, !tbaa !9
  %38 = sext i32 %34 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %37, i8 0, i64 %38, i1 false)
  br i1 %5, label %39, label %57

39:                                               ; preds = %36
  %40 = load ptr, ptr @dollar_arguments_pointer_p, align 8, !tbaa !9
  br label %41

41:                                               ; preds = %39, %41
  %42 = phi i64 [ 0, %39 ], [ %55, %41 ]
  %43 = phi ptr [ %1, %39 ], [ %54, %41 ]
  %44 = getelementptr inbounds %struct.tree_list, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !11
  %46 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !11
  %48 = load i64, ptr %47, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 10
  %51 = zext i1 %50 to i8
  %52 = getelementptr inbounds i8, ptr %40, i64 %42
  store i8 %51, ptr %52, align 1, !tbaa !11
  %53 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !11
  %55 = add nuw i64 %42, 1
  %56 = icmp eq ptr %54, null
  br i1 %56, label %57, label %41, !llvm.loop !112

57:                                               ; preds = %41, %36, %33
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finish_dollar_format_checking(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = load i32, ptr @dollar_max_arg_used, align 4, !tbaa !5
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %40

5:                                                ; preds = %2
  %6 = icmp eq i32 %1, 0
  %7 = load ptr, ptr @dollar_arguments_used, align 8, !tbaa !9
  br label %8

8:                                                ; preds = %5, %31
  %9 = phi i32 [ %3, %5 ], [ %32, %31 ]
  %10 = phi ptr [ %7, %5 ], [ %33, %31 ]
  %11 = phi i64 [ 0, %5 ], [ %35, %31 ]
  %12 = phi i8 [ 0, %5 ], [ %34, %31 ]
  %13 = getelementptr inbounds i8, ptr %10, i64 %11
  %14 = load i8, ptr %13, align 1, !tbaa !11
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %8
  br i1 %6, label %25, label %17

17:                                               ; preds = %16
  %18 = load i32, ptr @dollar_first_arg_num, align 4, !tbaa !5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr @dollar_arguments_pointer_p, align 8, !tbaa !9
  %22 = getelementptr inbounds i8, ptr %21, i64 %11
  %23 = load i8, ptr %22, align 1, !tbaa !11
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20, %16
  %26 = trunc i64 %11 to i32
  %27 = add i32 %26, 1
  %28 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.64, i32 noundef %27, i32 noundef %9) #11
  %29 = load ptr, ptr @dollar_arguments_used, align 8, !tbaa !9
  %30 = load i32, ptr @dollar_max_arg_used, align 4, !tbaa !5
  br label %31

31:                                               ; preds = %17, %20, %8, %25
  %32 = phi i32 [ %9, %8 ], [ %30, %25 ], [ %9, %20 ], [ %9, %17 ]
  %33 = phi ptr [ %10, %8 ], [ %29, %25 ], [ %10, %20 ], [ %10, %17 ]
  %34 = phi i8 [ %12, %8 ], [ %12, %25 ], [ 1, %20 ], [ 1, %17 ]
  %35 = add nuw nsw i64 %11, 1
  %36 = sext i32 %32 to i64
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %8, label %38, !llvm.loop !113

38:                                               ; preds = %31
  %39 = icmp eq i8 %34, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %2, %38
  %41 = phi i32 [ %32, %38 ], [ %3, %2 ]
  %42 = load i32, ptr @dollar_first_arg_num, align 4, !tbaa !5
  %43 = icmp ne i32 %42, 0
  %44 = load i32, ptr @dollar_arguments_count, align 4
  %45 = icmp slt i32 %41, %44
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %54

47:                                               ; preds = %40, %38
  %48 = getelementptr inbounds %struct.format_check_results, ptr %0, i64 0, i32 6
  %49 = load i32, ptr %48, align 4, !tbaa !55
  %50 = add nsw i32 %49, -1
  store i32 %50, ptr %48, align 4, !tbaa !55
  %51 = getelementptr inbounds %struct.format_check_results, ptr %0, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !36
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %51, align 4, !tbaa !36
  br label %54

54:                                               ; preds = %47, %40
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @maybe_read_dollar_number(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef readonly %4) unnamed_addr #1 {
  %6 = load ptr, ptr %0, align 8, !tbaa !9
  %7 = load i8, ptr %6, align 1, !tbaa !11
  %8 = zext i8 %7 to i64
  %9 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %8
  %10 = load i16, ptr %9, align 2, !tbaa !66
  %11 = and i16 %10, 4
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %5
  %14 = sext i8 %7 to i32
  %15 = and i32 %14, 255
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !66
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
  %39 = load i8, ptr %38, align 1, !tbaa !11
  %40 = sext i8 %39 to i32
  %41 = and i32 %40, 255
  %42 = zext nneg i32 %41 to i64
  %43 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %42
  %44 = load i16, ptr %43, align 2, !tbaa !66
  %45 = and i16 %44, 4
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %47, label %25, !llvm.loop !114

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
  store ptr %60, ptr %0, align 8, !tbaa !9
  %61 = load i32, ptr @pedantic, align 4, !tbaa !5
  %62 = icmp eq i32 %61, 0
  %63 = load i1, ptr @dollar_format_warned, align 4
  %64 = select i1 %62, i1 true, i1 %63
  br i1 %64, label %71, label %65

65:                                               ; preds = %59
  %66 = load i32, ptr @c_language, align 4, !tbaa !5
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
  %75 = load i32, ptr @dollar_first_arg_num, align 4, !tbaa !5
  %76 = icmp ne i32 %75, 0
  %77 = load i32, ptr @dollar_arguments_count, align 4
  %78 = icmp sgt i32 %52, %77
  %79 = select i1 %76, i1 %78, i1 false
  br i1 %79, label %80, label %82

80:                                               ; preds = %74, %71
  %81 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.66) #11
  br label %145

82:                                               ; preds = %74
  %83 = load i32, ptr @dollar_max_arg_used, align 4, !tbaa !5
  %84 = icmp sgt i32 %52, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 %52, ptr @dollar_max_arg_used, align 4, !tbaa !5
  br label %86

86:                                               ; preds = %85, %82
  %87 = phi i32 [ %52, %85 ], [ %83, %82 ]
  %88 = load i32, ptr @dollar_arguments_alloc, align 4, !tbaa !5
  %89 = icmp slt i32 %88, %87
  %90 = load ptr, ptr @dollar_arguments_used, align 8, !tbaa !9
  br i1 %89, label %91, label %108

91:                                               ; preds = %86, %91
  %92 = phi ptr [ %100, %91 ], [ %90, %86 ]
  %93 = phi i32 [ %95, %91 ], [ %88, %86 ]
  %94 = shl nsw i32 %93, 1
  %95 = add nsw i32 %94, 16
  %96 = sext i32 %95 to i64
  %97 = tail call ptr @xrealloc(ptr noundef %92, i64 noundef %96) #11
  store ptr %97, ptr @dollar_arguments_used, align 8, !tbaa !9
  %98 = load ptr, ptr @dollar_arguments_pointer_p, align 8, !tbaa !9
  %99 = tail call ptr @xrealloc(ptr noundef %98, i64 noundef %96) #11
  store ptr %99, ptr @dollar_arguments_pointer_p, align 8, !tbaa !9
  %100 = load ptr, ptr @dollar_arguments_used, align 8, !tbaa !9
  %101 = load i32, ptr @dollar_arguments_alloc, align 4, !tbaa !5
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, ptr %100, i64 %102
  %104 = sub nsw i32 %95, %101
  %105 = sext i32 %104 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %103, i8 0, i64 %105, i1 false)
  store i32 %95, ptr @dollar_arguments_alloc, align 4, !tbaa !5
  %106 = load i32, ptr @dollar_max_arg_used, align 4, !tbaa !5
  %107 = icmp slt i32 %95, %106
  br i1 %107, label %91, label %108, !llvm.loop !115

108:                                              ; preds = %91, %86
  %109 = phi ptr [ %90, %86 ], [ %100, %91 ]
  %110 = getelementptr inbounds %struct.format_kind_info, ptr %4, i64 0, i32 7
  %111 = load i32, ptr %110, align 8, !tbaa !20
  %112 = and i32 %111, 8
  %113 = icmp eq i32 %112, 0
  %114 = sext i32 %52 to i64
  br i1 %113, label %115, label %123

115:                                              ; preds = %108
  %116 = getelementptr i8, ptr %109, i64 %114
  %117 = getelementptr i8, ptr %116, i64 -1
  %118 = load i8, ptr %117, align 1, !tbaa !11
  %119 = icmp eq i8 %118, 1
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  store i8 2, ptr %117, align 1, !tbaa !11
  %121 = load ptr, ptr %4, align 8, !tbaa !24
  %122 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull @.str.67, i32 noundef %52, ptr noundef %121) #11
  br label %126

123:                                              ; preds = %108, %115
  %124 = getelementptr i8, ptr %109, i64 %114
  %125 = getelementptr i8, ptr %124, i64 -1
  store i8 1, ptr %125, align 1, !tbaa !11
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i32, ptr @dollar_first_arg_num, align 4, !tbaa !5
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %144, label %129

129:                                              ; preds = %126
  store ptr %2, ptr %3, align 8, !tbaa !9
  %130 = icmp sgt i32 %52, 1
  br i1 %130, label %131, label %140

131:                                              ; preds = %129, %135
  %132 = phi ptr [ %137, %135 ], [ %2, %129 ]
  %133 = phi i32 [ %138, %135 ], [ 1, %129 ]
  %134 = icmp eq ptr %132, null
  br i1 %134, label %143, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.tree_common, ptr %132, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !11
  store ptr %137, ptr %3, align 8, !tbaa !9
  %138 = add nuw nsw i32 %133, 1
  %139 = icmp eq i32 %138, %52
  br i1 %139, label %140, label %131, !llvm.loop !116

140:                                              ; preds = %135, %129
  %141 = phi ptr [ %2, %129 ], [ %137, %135 ]
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %131, %140
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1088, ptr noundef nonnull @.str.7) #11
  br label %145

144:                                              ; preds = %126
  store ptr null, ptr %3, align 8, !tbaa !9
  br label %145

145:                                              ; preds = %144, %140, %143, %55, %21, %80, %57, %23
  %146 = phi i32 [ -1, %57 ], [ -1, %80 ], [ -1, %23 ], [ 0, %21 ], [ 0, %55 ], [ %52, %143 ], [ %52, %140 ], [ %52, %144 ]
  ret i32 %146
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @avoid_dollar_number(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load i8, ptr %0, align 1, !tbaa !11
  %3 = zext i8 %2 to i64
  %4 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %3
  %5 = load i16, ptr %4, align 2, !tbaa !66
  %6 = and i16 %5, 4
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %21, label %8

8:                                                ; preds = %1, %8
  %9 = phi ptr [ %16, %8 ], [ %0, %1 ]
  %10 = load i8, ptr %9, align 1, !tbaa !11
  %11 = zext i8 %10 to i64
  %12 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !66
  %14 = and i16 %13, 4
  %15 = icmp eq i16 %14, 0
  %16 = getelementptr inbounds i8, ptr %9, i64 1
  br i1 %15, label %17, label %8, !llvm.loop !117

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
define internal fastcc noundef ptr @get_flag_spec(ptr noundef readonly %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #1 {
  %4 = load i32, ptr %0, align 8, !tbaa !118
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
  %15 = load i32, ptr %14, align 4, !tbaa !119
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
  %25 = load i32, ptr %24, align 8, !tbaa !118
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %8, !llvm.loop !120

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
define internal fastcc void @check_format_types(ptr noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %237, label %5

5:                                                ; preds = %3, %233
  %6 = phi ptr [ %235, %233 ], [ %0, %3 ]
  %7 = getelementptr inbounds %struct.format_wanted_type, ptr %6, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !71
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !11
  %11 = load ptr, ptr @global_trees, align 16, !tbaa !9
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %233, label %13

13:                                               ; preds = %5
  %14 = load ptr, ptr %6, align 8, !tbaa !68
  %15 = getelementptr inbounds %struct.format_wanted_type, ptr %6, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !72
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2153, ptr noundef nonnull @.str.7) #11
  br label %19

19:                                               ; preds = %13, %18
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !9
  %21 = icmp eq ptr %14, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.format_wanted_type, ptr %6, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !105
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2154, ptr noundef nonnull @.str.7) #11
  br label %27

27:                                               ; preds = %19, %22, %26
  %28 = getelementptr inbounds %struct.format_wanted_type, ptr %6, i64 0, i32 3
  %29 = load i32, ptr %28, align 4, !tbaa !105
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 6), align 8, !tbaa !121
  %33 = tail call ptr %32(ptr noundef %14) #11
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi ptr [ %33, %31 ], [ %14, %27 ]
  %36 = getelementptr inbounds %struct.tree_type, ptr %35, i64 0, i32 16
  %37 = load ptr, ptr %36, align 8, !tbaa !11
  %38 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %8) #11
  %39 = load i32, ptr %28, align 4, !tbaa !105
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
  %54 = load ptr, ptr %53, align 8, !tbaa !11
  %55 = load ptr, ptr @global_trees, align 16, !tbaa !9
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %133, label %57

57:                                               ; preds = %52
  %58 = load i32, ptr %42, align 4, !tbaa !108
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
  %70 = load i32, ptr %43, align 8, !tbaa !109
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
  %86 = load ptr, ptr %85, align 8, !tbaa !11
  br label %87

87:                                               ; preds = %79, %80, %84
  %88 = phi ptr [ %86, %84 ], [ null, %80 ], [ null, %79 ]
  %89 = load i32, ptr %42, align 4, !tbaa !108
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
  %102 = load i32, ptr %101, align 4, !tbaa !5
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
  %122 = load ptr, ptr %121, align 8, !tbaa !70
  %123 = getelementptr inbounds %struct.format_wanted_type, ptr %6, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !104
  tail call fastcc void @format_type_warning(ptr noundef %122, ptr noundef %1, i32 noundef %2, ptr noundef %37, i32 noundef %45, ptr noundef %124, ptr noundef %10, i32 noundef %16) #10
  %125 = load i32, ptr %28, align 4, !tbaa !105
  br label %133

126:                                              ; preds = %111, %115, %92, %103, %98
  %127 = phi ptr [ @.str.71, %98 ], [ @.str.71, %103 ], [ @.str.71, %92 ], [ @.str.72, %115 ], [ @.str.72, %111 ]
  %128 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 91, ptr noundef nonnull %127, i32 noundef %16) #11
  br label %129

129:                                              ; preds = %126, %96, %103, %98, %115, %106
  %130 = add nuw nsw i32 %46, 1
  %131 = load i32, ptr %28, align 4, !tbaa !105
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %44, label %133, !llvm.loop !129

133:                                              ; preds = %129, %52, %34, %120
  %134 = phi i32 [ %125, %120 ], [ %39, %34 ], [ %131, %129 ], [ %45, %52 ]
  %135 = phi i32 [ %46, %120 ], [ 0, %34 ], [ %130, %129 ], [ %46, %52 ]
  %136 = phi ptr [ %48, %120 ], [ %10, %34 ], [ %54, %52 ], [ %54, %129 ]
  %137 = icmp slt i32 %135, %134
  br i1 %137, label %233, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.tree_type, ptr %136, i64 0, i32 16
  %140 = load ptr, ptr %139, align 8, !tbaa !11
  %141 = getelementptr inbounds %struct.format_wanted_type, ptr %6, i64 0, i32 4
  %142 = load i32, ptr %141, align 8, !tbaa !106
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %153, label %144

144:                                              ; preds = %138
  %145 = load ptr, ptr @integer_types, align 16, !tbaa !9
  %146 = icmp eq ptr %140, %145
  %147 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 1), align 8
  %148 = icmp eq ptr %140, %147
  %149 = select i1 %146, i1 true, i1 %148
  br i1 %149, label %153, label %150

150:                                              ; preds = %144
  %151 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 2), align 16, !tbaa !9
  %152 = icmp eq ptr %140, %151
  br label %153

153:                                              ; preds = %144, %150, %138
  %154 = phi i1 [ false, %138 ], [ true, %144 ], [ %152, %150 ]
  %155 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 24), align 8, !tbaa !130
  %156 = tail call i32 %155(ptr noundef %37, ptr noundef %140) #11
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %233

158:                                              ; preds = %153
  %159 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !9
  %160 = icmp eq ptr %37, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  %162 = load i32, ptr @pedantic, align 4, !tbaa !5
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
  %176 = load i32, ptr @pedantic, align 4, !tbaa !5
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
  %193 = load ptr, ptr @integer_types, align 16, !tbaa !9
  %194 = icmp eq ptr %37, %193
  br i1 %194, label %195, label %201

195:                                              ; preds = %192
  %196 = load i32, ptr @pedantic, align 4, !tbaa !5
  %197 = icmp eq i32 %196, 0
  %198 = icmp ult i32 %135, 2
  %199 = or i1 %198, %197
  %200 = select i1 %199, i1 %154, i1 false
  br i1 %200, label %233, label %201

201:                                              ; preds = %195, %192
  %202 = getelementptr inbounds %struct.format_wanted_type, ptr %6, i64 0, i32 2
  %203 = load i32, ptr %202, align 8, !tbaa !107
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
  %229 = load ptr, ptr %228, align 8, !tbaa !70
  %230 = load i32, ptr %28, align 4, !tbaa !105
  %231 = getelementptr inbounds %struct.format_wanted_type, ptr %6, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !104
  tail call fastcc void @format_type_warning(ptr noundef %229, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %37, i32 noundef %230, ptr noundef %232, ptr noundef %10, i32 noundef %16) #10
  br label %233

233:                                              ; preds = %219, %195, %186, %189, %161, %153, %133, %5, %227
  %234 = getelementptr inbounds %struct.format_wanted_type, ptr %6, i64 0, i32 10
  %235 = load ptr, ptr %234, align 8, !tbaa !73
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %5, !llvm.loop !131

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
define internal fastcc void @format_type_warning(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) unnamed_addr #1 {
  %9 = icmp eq ptr %5, null
  br i1 %9, label %30, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %10
  %15 = load i64, ptr %12, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 35
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.tree_decl_minimal, ptr %12, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !132
  %24 = tail call ptr %23(ptr noundef nonnull %12, i32 noundef 2) #11
  %25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %24) #10
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 16
  %29 = load ptr, ptr %28, align 8, !tbaa !11
  br label %30

30:                                               ; preds = %27, %22, %18, %14, %10, %8
  %31 = phi ptr [ %6, %22 ], [ %29, %27 ], [ %6, %18 ], [ %6, %14 ], [ %6, %10 ], [ %6, %8 ]
  %32 = add nsw i32 %4, 2
  %33 = sext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  %35 = icmp eq i32 %4, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i8 0, ptr %34, align 16, !tbaa !11
  br label %49

37:                                               ; preds = %30
  %38 = load i32, ptr @c_language, align 4, !tbaa !5
  %39 = and i32 %38, 2
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = sext i32 %4 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %34, i8 42, i64 %42, i1 false)
  %43 = getelementptr inbounds i8, ptr %34, i64 %42
  store i8 0, ptr %43, align 1, !tbaa !11
  br label %49

44:                                               ; preds = %37
  store i8 32, ptr %34, align 16, !tbaa !11
  %45 = getelementptr inbounds i8, ptr %34, i64 1
  %46 = sext i32 %4 to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %45, i8 42, i64 %46, i1 false)
  %47 = getelementptr i8, ptr %34, i64 %46
  %48 = getelementptr i8, ptr %47, i64 1
  store i8 0, ptr %48, align 1, !tbaa !11
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
define internal fastcc i32 @find_length_info_modifier_index(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !133
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %1, %10
  %5 = phi ptr [ %13, %10 ], [ %2, %1 ]
  %6 = phi i32 [ %11, %10 ], [ 0, %1 ]
  %7 = phi ptr [ %12, %10 ], [ %0, %1 ]
  %8 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %5, i32 noundef 119) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = add i32 %6, 1
  %12 = getelementptr inbounds %struct.format_length_info, ptr %7, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !133
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %4, !llvm.loop !134

15:                                               ; preds = %10, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 2389, ptr noundef nonnull @.str.7) #11
  br label %16

16:                                               ; preds = %4, %15
  %17 = phi i32 [ 0, %15 ], [ %6, %4 ]
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find_char_info_specifier_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = load ptr, ptr %0, align 8, !tbaa !86
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
  %14 = load ptr, ptr %13, align 8, !tbaa !86
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !135

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

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{i8 0, i8 2}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = !{!19, !6, i64 0}
!19 = !{!"function_format_info", !6, i64 0, !13, i64 8, !13, i64 16}
!20 = !{!21, !6, i64 56}
!21 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !10, i64 88, !10, i64 96}
!22 = distinct !{!22, !16}
!23 = distinct !{!23, !16}
!24 = !{!21, !10, i64 0}
!25 = distinct !{!25, !16}
!26 = !{!19, !13, i64 16}
!27 = !{!19, !13, i64 8}
!28 = !{!29, !10, i64 0}
!29 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!30 = !{!29, !10, i64 8}
!31 = !{!29, !10, i64 16}
!32 = !{!33, !6, i64 0}
!33 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!34 = distinct !{!34, !16}
!35 = !{!33, !6, i64 4}
!36 = !{!33, !6, i64 8}
!37 = !{!33, !6, i64 16}
!38 = !{!33, !6, i64 12}
!39 = !{!33, !6, i64 20}
!40 = distinct !{!40, !16}
!41 = distinct !{!41, !16}
!42 = !{!43, !6, i64 8}
!43 = !{!"", !10, i64 0, !6, i64 8, !6, i64 12, !10, i64 16, !6, i64 24, !6, i64 28, !6, i64 32}
!44 = !{!21, !10, i64 8}
!45 = !{!21, !10, i64 16}
!46 = !{!47, !10, i64 16}
!47 = !{!"", !6, i64 0, !10, i64 8, !10, i64 16}
!48 = !{!49, !6, i64 8}
!49 = !{!"format_char_info", !10, i64 0, !6, i64 8, !6, i64 12, !7, i64 16, !10, i64 304, !10, i64 312, !10, i64 320}
!50 = !{!51, !10, i64 0}
!51 = !{!"", !10, i64 0, !10, i64 8}
!52 = distinct !{!52, !16}
!53 = !{!51, !10, i64 8}
!54 = distinct !{!54, !16}
!55 = !{!33, !6, i64 24}
!56 = distinct !{!56, !16}
!57 = !{!21, !10, i64 40}
!58 = !{!21, !10, i64 48}
!59 = !{!21, !10, i64 24}
!60 = !{!61, !10, i64 16}
!61 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !10, i64 16, !10, i64 24, !6, i64 32}
!62 = !{!61, !6, i64 8}
!63 = distinct !{!63, !16}
!64 = !{!21, !6, i64 60}
!65 = !{!21, !10, i64 88}
!66 = !{!67, !67, i64 0}
!67 = !{!"short", !7, i64 0}
!68 = !{!69, !10, i64 0}
!69 = !{!"format_wanted_type", !10, i64 0, !10, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !10, i64 40, !10, i64 48, !6, i64 56, !10, i64 64}
!70 = !{!69, !10, i64 40}
!71 = !{!69, !10, i64 48}
!72 = !{!69, !6, i64 56}
!73 = !{!69, !10, i64 64}
!74 = distinct !{!74, !16}
!75 = !{!21, !6, i64 64}
!76 = distinct !{!76, !16}
!77 = !{!21, !6, i64 68}
!78 = !{!21, !10, i64 96}
!79 = distinct !{!79, !16}
!80 = !{!21, !6, i64 80}
!81 = distinct !{!81, !16}
!82 = !{!43, !6, i64 32}
!83 = !{!21, !6, i64 76}
!84 = !{!21, !10, i64 32}
!85 = distinct !{!85, !16}
!86 = !{!49, !10, i64 0}
!87 = distinct !{!87, !16}
!88 = !{!49, !6, i64 12}
!89 = !{!49, !10, i64 304}
!90 = !{!61, !6, i64 32}
!91 = !{!61, !10, i64 24}
!92 = !{!49, !10, i64 312}
!93 = distinct !{!93, !16}
!94 = !{!21, !6, i64 72}
!95 = !{!96, !6, i64 0}
!96 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!97 = !{!96, !6, i64 4}
!98 = !{!96, !6, i64 12}
!99 = !{!96, !6, i64 8}
!100 = distinct !{!100, !16}
!101 = distinct !{!101, !16}
!102 = !{!47, !10, i64 8}
!103 = !{!47, !6, i64 0}
!104 = !{!69, !10, i64 8}
!105 = !{!69, !6, i64 20}
!106 = !{!69, !6, i64 24}
!107 = !{!69, !6, i64 16}
!108 = !{!69, !6, i64 28}
!109 = !{!69, !6, i64 32}
!110 = !{!49, !10, i64 320}
!111 = distinct !{!111, !16}
!112 = distinct !{!112, !16}
!113 = distinct !{!113, !16}
!114 = distinct !{!114, !16}
!115 = distinct !{!115, !16}
!116 = distinct !{!116, !16}
!117 = distinct !{!117, !16}
!118 = !{!61, !6, i64 0}
!119 = !{!61, !6, i64 4}
!120 = distinct !{!120, !16}
!121 = !{!122, !10, i64 480}
!122 = !{!"lang_hooks", !10, i64 0, !13, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !123, i64 240, !124, i64 248, !125, i64 256, !126, i64 272, !127, i64 432, !128, i64 560, !10, i64 584, !10, i64 592, !10, i64 600, !10, i64 608, !10, i64 616, !10, i64 624, !10, i64 632, !10, i64 640, !10, i64 648, !10, i64 656, !10, i64 664, !7, i64 672}
!123 = !{!"lang_hooks_for_tree_inlining", !10, i64 0}
!124 = !{!"lang_hooks_for_callgraph", !10, i64 0}
!125 = !{!"lang_hooks_for_tree_dump", !10, i64 0, !10, i64 8}
!126 = !{!"lang_hooks_for_decls", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152}
!127 = !{!"lang_hooks_for_types", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !7, i64 120}
!128 = !{!"lang_hooks_for_lto", !10, i64 0, !10, i64 8, !10, i64 16}
!129 = distinct !{!129, !16}
!130 = !{!122, !10, i64 192}
!131 = distinct !{!131, !16}
!132 = !{!122, !10, i64 176}
!133 = !{!43, !10, i64 0}
!134 = distinct !{!134, !16}
!135 = distinct !{!135, !16}
