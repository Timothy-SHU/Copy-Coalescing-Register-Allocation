; ModuleID = 'c-parser.c'
source_filename = "c-parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.c_common_resword = type { ptr, i32 }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
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
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.c_common_identifier = type { %struct.tree_common, %struct.cpp_hashnode }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.cpp_hashnode = type { %struct.ht_identifier, i8, i8, i16, %union._cpp_hashnode_value }
%struct.ht_identifier = type { ptr, i32, i32 }
%union._cpp_hashnode_value = type { ptr }
%struct.c_token = type { i32, ptr, i32 }
%struct.c_parser = type { [2 x %struct.c_token], i16, i8 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.cpp_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, i32, i8, i8, %struct.anon, i64, i64, i64, i64, i8, i8, i8, i8, i8 }
%struct.anon = type { i32, i8, i8, i8, i8 }
%struct.c_expr = type { ptr, i32, ptr }
%struct.c_declspecs = type { ptr, ptr, ptr, ptr, i32, i32, i8, i32, i16, i8 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.c_type_name = type { ptr, ptr }
%struct.c_typespec = type { i32, ptr, ptr, i8 }
%struct.c_enum_contents = type { ptr, i32 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.anon.0 = type { %struct.c_expr, i32, i32, i32 }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.c_declarator = type { i32, ptr, i32, %union.anon.1 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { ptr, i32, ptr, i8 }
%struct.c_arg_info = type { ptr, ptr, ptr, ptr, ptr, i8 }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_omp_clause = type { %struct.tree_common, i32, i32, %union.omp_clause_subcode, ptr, ptr, [1 x ptr] }
%union.omp_clause_subcode = type { i32 }
%struct.tree_vec = type { %struct.tree_common, i32, [1 x ptr] }

@flag_isoc99 = external local_unnamed_addr global i32, align 4
@flag_no_asm = external local_unnamed_addr global i32, align 4
@c_language = external local_unnamed_addr global i32, align 4
@ridpointers = external local_unnamed_addr global ptr, align 8
@num_c_common_reswords = external local_unnamed_addr constant i32, align 4
@c_common_reswords = external local_unnamed_addr constant [0 x %struct.c_common_resword], align 8
@warn_cxx_compat = external local_unnamed_addr global i32, align 4
@the_parser = internal global ptr null, align 8
@timevar_enable = external local_unnamed_addr global i8, align 1
@.str = private unnamed_addr constant [42 x i8] c"identifier %qE conflicts with C++ keyword\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"c-parser.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@flag_exceptions = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"expected string literal\00", align 1
@parse_in = external local_unnamed_addr global ptr, align 8
@input_location = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"expected end of line\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"ISO C forbids an empty translation unit\00", align 1
@parser_obstack = external global %struct.obstack, align 8
@.str.6 = private unnamed_addr constant [55 x i8] c"ISO C does not allow extra %<;%> outside of a function\00", align 1
@pedantic = external local_unnamed_addr global i32, align 4
@warn_pointer_arith = external local_unnamed_addr global i32, align 4
@warn_traditional = external local_unnamed_addr global i32, align 4
@flag_iso = external local_unnamed_addr global i32, align 4
@warn_long_long = external local_unnamed_addr global i32, align 4
@cpp_opts = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"expected %<;%>\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"expected %<(%>\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"expected %<)%>\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"wide string literal in %<asm%>\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"expected identifier\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"expected %<@end%>\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"expected %<>%>\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"expected %<:%>\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.16 = private unnamed_addr constant [34 x i8] c"expected specifier-qualifier-list\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"comma at end of enumerator list\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"expected %<,%> or %<}%>\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"expected %<{%>\00", align 1
@.str.20 = private unnamed_addr constant [51 x i8] c"ISO C forbids forward references to %<enum%> types\00", align 1
@.str.21 = private unnamed_addr constant [58 x i8] c"ISO C forbids omitting the middle term of a ?: expression\00", align 1
@c_global_trees = external local_unnamed_addr global [55 x ptr], align 16
@c_inhibit_evaluation_warnings = external local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [15 x i8] c"expected %<]%>\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"compound literal has variable size\00", align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [54 x i8] c"compound literal qualified by address-space qualifier\00", align 1
@.str.25 = private unnamed_addr constant [34 x i8] c"ISO C90 forbids compound literals\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"ISO C forbids empty initializer braces\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"expected %<}%>\00", align 1
@.str.28 = private unnamed_addr constant [50 x i8] c"obsolete use of designated initializer with %<:%>\00", align 1
@.str.29 = private unnamed_addr constant [57 x i8] c"ISO C forbids specifying range of elements to initialize\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"ISO C90 forbids specifying subobject to initialize\00", align 1
@.str.31 = private unnamed_addr constant [53 x i8] c"obsolete use of designated initializer without %<=%>\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"expected %<=%>\00", align 1
@.str.33 = private unnamed_addr constant [46 x i8] c"traditional C rejects the unary plus operator\00", align 1
@in_sizeof = external local_unnamed_addr global i32, align 4
@.str.34 = private unnamed_addr constant [34 x i8] c"%<sizeof%> applied to a bit-field\00", align 1
@in_alignof = external local_unnamed_addr global i32, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.35 = private unnamed_addr constant [48 x i8] c"fixed-point types not supported for this target\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"expected expression\00", align 1
@.str.37 = private unnamed_addr constant [62 x i8] c"braced-group within expression allowed only inside a function\00", align 1
@.str.38 = private unnamed_addr constant [47 x i8] c"ISO C forbids braced-groups within expressions\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"expected %<,%>\00", align 1
@.str.40 = private unnamed_addr constant [59 x i8] c"first argument to %<__builtin_choose_expr%> not a constant\00", align 1
@.str.41 = private unnamed_addr constant [33 x i8] c"ISO C forbids label declarations\00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c"expected declaration or statement\00", align 1
@.str.43 = private unnamed_addr constant [44 x i8] c"ISO C90 forbids mixed declarations and code\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"expected %<}%> before %<else%>\00", align 1
@.str.45 = private unnamed_addr constant [35 x i8] c"%<else%> without a previous %<if%>\00", align 1
@.str.46 = private unnamed_addr constant [35 x i8] c"label at end of compound statement\00", align 1
@.str.47 = private unnamed_addr constant [26 x i8] c"expected %<:%> or %<...%>\00", align 1
@.str.48 = private unnamed_addr constant [77 x i8] c"a label can only be part of a statement and a declaration is not a statement\00", align 1
@.str.49 = private unnamed_addr constant [29 x i8] c"expected identifier or %<*%>\00", align 1
@c_cont_label = external global ptr, align 8
@c_break_label = external global ptr, align 8
@.str.50 = private unnamed_addr constant [19 x i8] c"expected statement\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@warn_sequence_point = external local_unnamed_addr global i32, align 4
@.str.51 = private unnamed_addr constant [56 x i8] c"suggest braces around empty body in an %<if%> statement\00", align 1
@.str.52 = private unnamed_addr constant [58 x i8] c"suggest braces around empty body in an %<else%> statement\00", align 1
@.str.53 = private unnamed_addr constant [53 x i8] c"suggest braces around empty body in %<do%> statement\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"expected %<while%>\00", align 1
@.str.55 = private unnamed_addr constant [28 x i8] c"%E qualifier ignored on asm\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"expected %<:%> or %<)%>\00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"expected class name\00", align 1
@.str.58 = private unnamed_addr constant [45 x i8] c"extra semicolon in struct or union specified\00", align 1
@.str.59 = private unnamed_addr constant [39 x i8] c"no semicolon at end of struct or union\00", align 1
@.str.60 = private unnamed_addr constant [50 x i8] c"ISO C forbids member declarations with no members\00", align 1
@.str.61 = private unnamed_addr constant [31 x i8] c"expected %<,%>, %<;%> or %<}%>\00", align 1
@.str.62 = private unnamed_addr constant [57 x i8] c"expected %<:%>, %<,%>, %<;%>, %<}%> or %<__attribute__%>\00", align 1
@in_typeof = external local_unnamed_addr global i32, align 4
@.str.63 = private unnamed_addr constant [34 x i8] c"%<typeof%> applied to a bit-field\00", align 1
@.str.64 = private unnamed_addr constant [29 x i8] c"expected identifier or %<(%>\00", align 1
@.str.65 = private unnamed_addr constant [47 x i8] c"ISO C requires a named argument before %<...%>\00", align 1
@.str.66 = private unnamed_addr constant [31 x i8] c"expected %<;%>, %<,%> or %<)%>\00", align 1
@.str.67 = private unnamed_addr constant [43 x i8] c"expected declaration specifiers or %<...%>\00", align 1
@.str.68 = private unnamed_addr constant [64 x i8] c"%<#pragma omp barrier%> may only be used in compound statements\00", align 1
@.str.69 = private unnamed_addr constant [62 x i8] c"%<#pragma omp flush%> may only be used in compound statements\00", align 1
@.str.70 = private unnamed_addr constant [65 x i8] c"%<#pragma omp taskwait%> may only be used in compound statements\00", align 1
@.str.71 = private unnamed_addr constant [79 x i8] c"%<#pragma omp section%> may only be used in %<#pragma omp sections%> construct\00", align 1
@.str.72 = private unnamed_addr constant [45 x i8] c"%<#pragma GCC pch_preprocess%> must be first\00", align 1
@.str.73 = private unnamed_addr constant [32 x i8] c"expected declaration specifiers\00", align 1
@.str.74 = private unnamed_addr constant [30 x i8] c"expected %<(%> or end of line\00", align 1
@.str.75 = private unnamed_addr constant [22 x i8] c"%qD is not a variable\00", align 1
@.str.76 = private unnamed_addr constant [47 x i8] c"%qE declared %<threadprivate%> after first use\00", align 1
@.str.77 = private unnamed_addr constant [51 x i8] c"automatic variable %qE cannot be %<threadprivate%>\00", align 1
@.str.78 = private unnamed_addr constant [42 x i8] c"%<threadprivate%> %qE has incomplete type\00", align 1
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@.str.79 = private unnamed_addr constant [44 x i8] c"invalid operator for %<#pragma omp atomic%>\00", align 1
@.str.80 = private unnamed_addr constant [16 x i8] c"#pragma omp for\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"collapse\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"copyin\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"copyprivate\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.85 = private unnamed_addr constant [13 x i8] c"firstprivate\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"lastprivate\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"nowait\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"num_threads\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"ordered\00", align 1
@.str.91 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"reduction\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"schedule\00", align 1
@.str.94 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"untied\00", align 1
@.str.96 = private unnamed_addr constant [32 x i8] c"expected %<#pragma omp%> clause\00", align 1
@.str.97 = private unnamed_addr constant [25 x i8] c"%qs is not valid for %qs\00", align 1
@.str.98 = private unnamed_addr constant [61 x i8] c"collapse argument needs positive constant integer expression\00", align 1
@.str.99 = private unnamed_addr constant [21 x i8] c"too many %qs clauses\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.101 = private unnamed_addr constant [32 x i8] c"expected %<none%> or %<shared%>\00", align 1
@.str.102 = private unnamed_addr constant [28 x i8] c"expected integer expression\00", align 1
@.str.103 = private unnamed_addr constant [39 x i8] c"%<num_threads%> value must be positive\00", align 1
@.str.104 = private unnamed_addr constant [69 x i8] c"expected %<+%>, %<*%>, %<-%>, %<&%>, %<^%>, %<|%>, %<&&%>, or %<||%>\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"dynamic\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"guided\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c"runtime\00", align 1
@.str.108 = private unnamed_addr constant [62 x i8] c"schedule %<runtime%> does not take a %<chunk_size%> parameter\00", align 1
@.str.109 = private unnamed_addr constant [59 x i8] c"schedule %<auto%> does not take a %<chunk_size%> parameter\00", align 1
@.str.110 = private unnamed_addr constant [24 x i8] c"expected %<,%> or %<)%>\00", align 1
@.str.111 = private unnamed_addr constant [22 x i8] c"invalid schedule kind\00", align 1
@.str.112 = private unnamed_addr constant [23 x i8] c"for statement expected\00", align 1
@.str.113 = private unnamed_addr constant [49 x i8] c"expected iteration declaration or initialization\00", align 1
@.str.114 = private unnamed_addr constant [34 x i8] c"not enough perfectly nested loops\00", align 1
@.str.115 = private unnamed_addr constant [37 x i8] c"collapsed loops not perfectly nested\00", align 1
@.str.116 = private unnamed_addr constant [50 x i8] c"iteration variable %qD should not be firstprivate\00", align 1
@.str.117 = private unnamed_addr constant [21 x i8] c"#pragma omp parallel\00", align 1
@.str.118 = private unnamed_addr constant [25 x i8] c"#pragma omp parallel for\00", align 1
@.str.119 = private unnamed_addr constant [9 x i8] c"sections\00", align 1
@.str.120 = private unnamed_addr constant [30 x i8] c"#pragma omp parallel sections\00", align 1
@.str.121 = private unnamed_addr constant [42 x i8] c"expected %<#pragma omp section%> or %<}%>\00", align 1
@.str.122 = private unnamed_addr constant [21 x i8] c"#pragma omp sections\00", align 1
@.str.123 = private unnamed_addr constant [19 x i8] c"#pragma omp single\00", align 1
@.str.124 = private unnamed_addr constant [17 x i8] c"#pragma omp task\00", align 1
@.str.125 = private unnamed_addr constant [47 x i8] c"extra semicolon in method definition specified\00", align 1
@.str.126 = private unnamed_addr constant [18 x i8] c"empty declaration\00", align 1
@.str.127 = private unnamed_addr constant [45 x i8] c"data definition has no type or storage class\00", align 1
@.str.128 = private unnamed_addr constant [24 x i8] c"expected %<,%> or %<;%>\00", align 1
@.str.129 = private unnamed_addr constant [59 x i8] c"expected %<=%>, %<,%>, %<;%>, %<asm%> or %<__attribute__%>\00", align 1
@.str.130 = private unnamed_addr constant [31 x i8] c"ISO C forbids nested functions\00", align 1
@gt_ggc_r_gt_c_parser_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @the_parser, i64 1, i64 8, ptr @gt_ggc_mx_c_parser, ptr @gt_pch_nx_c_parser }, %struct.ggc_root_tab zeroinitializer], align 16
@switch.table.c_parser_binary_expression = private unnamed_addr constant [25 x i32] [i32 7, i32 7, i32 9, i32 9, i32 10, i32 10, i32 10, i32 5, i32 3, i32 4, i32 8, i32 8, i32 10, i32 2, i32 1, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 6, i32 6, i32 7, i32 7], align 4
@switch.table.c_parser_binary_expression.131 = private unnamed_addr constant [25 x i32] [i32 99, i32 97, i32 63, i32 64, i32 65, i32 67, i32 71, i32 89, i32 87, i32 88, i32 84, i32 83, i32 65, i32 91, i32 92, i32 65, i32 65, i32 65, i32 65, i32 65, i32 65, i32 101, i32 102, i32 100, i32 98], align 4
@switch.table.c_token_starts_declspecs = private unnamed_addr constant [70 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\01\00\00\00\00\00\00\00\01\01\01\01\01\00\00\00\00\01", align 1
@switch.table.c_parser_omp_atomic = private unnamed_addr constant [10 x i32] [i32 63, i32 64, i32 65, i32 67, i32 65, i32 89, i32 87, i32 88, i32 84, i32 83], align 4
@switch.table.c_parser_omp_clause_reduction = private unnamed_addr constant [13 x i32] [i32 63, i32 64, i32 65, i32 63, i32 63, i32 89, i32 87, i32 88, i32 63, i32 63, i32 63, i32 91, i32 92], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @c_parse_init() local_unnamed_addr #0 !prof !675 {
  %1 = load i32, ptr @flag_isoc99, align 4, !tbaa !676
  %2 = icmp eq i32 %1, 0
  %3 = select i1 %2, i32 6, i32 2, !prof !680
  %4 = load i32, ptr @flag_no_asm, align 4, !tbaa !676
  %5 = icmp eq i32 %4, 0
  %6 = select i1 %2, i32 118, i32 82
  %7 = select i1 %5, i32 %3, i32 %6, !prof !680
  %8 = load i32, ptr @c_language, align 4, !tbaa !676
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  %11 = or disjoint i32 %7, 384
  %12 = select i1 %10, i32 %11, i32 %7, !prof !680
  %13 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 1216) #11
  store ptr %13, ptr @ridpointers, align 8, !tbaa !681
  %14 = load i32, ptr @num_c_common_reswords, align 4, !tbaa !676
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %52, label %16, !prof !683

16:                                               ; preds = %0
  %17 = zext i32 %14 to i64
  br label %18

18:                                               ; preds = %16, %49
  %19 = phi i64 [ 0, %16 ], [ %50, %49 ]
  %20 = getelementptr inbounds [0 x %struct.c_common_resword], ptr @c_common_reswords, i64 0, i64 %19
  %21 = getelementptr inbounds [0 x %struct.c_common_resword], ptr @c_common_reswords, i64 0, i64 %19, i32 1
  %22 = load i32, ptr %21, align 8
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, %12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %38, label %26, !prof !684

26:                                               ; preds = %18
  %27 = load i32, ptr @warn_cxx_compat, align 4, !tbaa !676
  %28 = icmp eq i32 %27, 0
  %29 = and i32 %22, 33554432
  %30 = icmp eq i32 %29, 0
  %31 = or i1 %30, %28
  br i1 %31, label %49, label %32, !prof !685

32:                                               ; preds = %26
  %33 = load ptr, ptr %20, align 8, !tbaa !686
  %34 = tail call ptr @get_identifier(ptr noundef %33) #11
  %35 = getelementptr inbounds %struct.c_common_identifier, ptr %34, i64 0, i32 1, i32 2
  store i8 65, ptr %35, align 1, !tbaa !688
  %36 = load i64, ptr %34, align 8
  %37 = or i64 %36, 8589934592
  store i64 %37, ptr %34, align 8
  br label %49

38:                                               ; preds = %18
  %39 = load ptr, ptr %20, align 8, !tbaa !686
  %40 = tail call ptr @get_identifier(ptr noundef %39) #11
  %41 = trunc i32 %22 to i8
  %42 = getelementptr inbounds %struct.c_common_identifier, ptr %40, i64 0, i32 1, i32 2
  store i8 %41, ptr %42, align 1, !tbaa !688
  %43 = load i64, ptr %40, align 8
  %44 = or i64 %43, 8589934592
  store i64 %44, ptr %40, align 8
  %45 = load ptr, ptr @ridpointers, align 8, !tbaa !681
  %46 = and i32 %22, 65535
  %47 = zext nneg i32 %46 to i64
  %48 = getelementptr inbounds ptr, ptr %45, i64 %47
  store ptr %40, ptr %48, align 8, !tbaa !681
  br label %49

49:                                               ; preds = %26, %32, %38
  %50 = add nuw nsw i64 %19, 1
  %51 = icmp eq i64 %50, %17
  br i1 %51, label %52, label %18, !prof !694, !llvm.loop !695

52:                                               ; preds = %49, %0
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_identifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @pragma_lex(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 !prof !697 {
  %2 = load ptr, ptr @the_parser, align 8, !tbaa !681
  %3 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %2) #12
  %4 = load i32, ptr %2, align 8
  %5 = getelementptr inbounds %struct.c_token, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !698
  store ptr %6, ptr %0, align 8, !tbaa !681
  %7 = trunc i32 %4 to i8
  switch i8 %7, label %8 [
    i8 71, label %13
    i8 22, label %13
  ]

8:                                                ; preds = %1
  %9 = and i32 %4, 255
  %10 = icmp eq i32 %9, 74
  %11 = select i1 %10, i32 53, i32 %9
  %12 = load ptr, ptr @the_parser, align 8, !tbaa !681
  tail call fastcc void @c_parser_consume_token(ptr noundef %12) #12
  br label %13

13:                                               ; preds = %1, %1, %8
  %14 = phi i32 [ %11, %8 ], [ 22, %1 ], [ 22, %1 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @c_parser_peek_token(ptr noundef returned %0) unnamed_addr #0 !prof !700 !PGOFuncName !701 {
  %2 = getelementptr inbounds %struct.c_parser, ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !702
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %5, label %6, !prof !705

5:                                                ; preds = %1
  tail call fastcc void @c_lex_one_token(ptr noundef nonnull %0, ptr noundef nonnull %0) #12
  store i16 1, ptr %2, align 8, !tbaa !702
  br label %6

6:                                                ; preds = %5, %1
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_consume_token(ptr nocapture noundef %0) unnamed_addr #0 !prof !706 !PGOFuncName !707 {
  %2 = getelementptr inbounds %struct.c_parser, ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !702
  %4 = icmp sgt i16 %3, 0
  br i1 %4, label %6, label %5, !prof !708

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 528, ptr noundef nonnull @.str.2) #11
  br label %6

6:                                                ; preds = %1, %5
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 255
  %9 = icmp eq i32 %8, 22
  br i1 %9, label %10, label %11, !prof !709

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 529, ptr noundef nonnull @.str.2) #11
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %struct.c_parser, ptr %0, i64 0, i32 2
  %13 = load i8, ptr %12, align 2
  %14 = and i8 %13, 2
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %22, label %16, !prof !708

16:                                               ; preds = %11
  %17 = load i32, ptr %0, align 8
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, 71
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 530, ptr noundef nonnull @.str.2) #11
  %21 = load i8, ptr %12, align 2
  br label %22

22:                                               ; preds = %11, %16, %20
  %23 = phi i8 [ %13, %11 ], [ %13, %16 ], [ %21, %20 ]
  %24 = and i8 %23, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %31, !prof !708

26:                                               ; preds = %22
  %27 = load i32, ptr %0, align 8
  %28 = and i32 %27, 255
  %29 = icmp eq i32 %28, 70
  br i1 %29, label %30, label %31, !prof !709

30:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 531, ptr noundef nonnull @.str.2) #11
  br label %31

31:                                               ; preds = %22, %26, %30
  %32 = load i16, ptr %2, align 8, !tbaa !702
  %33 = icmp eq i16 %32, 2
  br i1 %33, label %34, label %36, !prof !710

34:                                               ; preds = %31
  %35 = getelementptr inbounds [2 x %struct.c_token], ptr %0, i64 0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %35, i64 24, i1 false), !tbaa.struct !711
  br label %36

36:                                               ; preds = %34, %31
  %37 = add i16 %32, -1
  store i16 %37, ptr %2, align 8, !tbaa !702
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_lex_one_token(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !712 !PGOFuncName !713 {
  %3 = load i8, ptr @timevar_enable, align 1, !tbaa !714
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5, !prof !715

5:                                                ; preds = %2
  tail call void @timevar_push_1(i32 noundef 43) #11
  br label %6

6:                                                ; preds = %2, %5
  %7 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 1
  %8 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 2
  %9 = getelementptr inbounds %struct.c_parser, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 2
  %11 = lshr i8 %10, 3
  %12 = and i8 %11, 1
  %13 = zext nneg i8 %12 to i32
  %14 = tail call i32 @c_lex_with_flags(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null, i32 noundef %13) #11
  %15 = and i32 %14, 255
  %16 = or disjoint i32 %15, 9962496
  store i32 %16, ptr %1, align 8
  %17 = trunc i32 %14 to i8
  switch i8 %17, label %129 [
    i8 53, label %18
    i8 54, label %108
    i8 18, label %115
    i8 19, label %115
    i8 21, label %115
    i8 43, label %115
    i8 70, label %122
  ], !prof !716

18:                                               ; preds = %6
  %19 = load i8, ptr %9, align 2
  %20 = load i32, ptr @c_language, align 4, !tbaa !676
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !717

23:                                               ; preds = %18
  %24 = and i8 %19, -33
  store i8 %24, ptr %9, align 2
  br label %25

25:                                               ; preds = %23, %18
  %26 = load ptr, ptr %7, align 8, !tbaa !698
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 8589934592
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %75, label %30, !prof !718

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.c_common_identifier, ptr %26, i64 0, i32 1, i32 2
  %32 = load i8, ptr %31, align 1, !tbaa !688
  %33 = zext i8 %32 to i32
  %34 = icmp eq i8 %32, 65
  br i1 %34, label %35, label %38, !prof !719

35:                                               ; preds = %30
  %36 = load i32, ptr %8, align 8, !tbaa !720
  %37 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %36, i32 noundef 49, ptr noundef nonnull @.str, ptr noundef nonnull %26) #11
  br label %75

38:                                               ; preds = %30
  %39 = icmp ugt i8 %32, -121
  br i1 %39, label %40, label %48, !prof !719

40:                                               ; preds = %38
  %41 = icmp ult i8 %32, -104
  br i1 %41, label %42, label %48

42:                                               ; preds = %40
  %43 = load i32, ptr %1, align 8
  %44 = and i32 %43, -16776961
  %45 = shl nuw nsw i32 %33, 16
  %46 = or disjoint i32 %44, %45
  %47 = or disjoint i32 %46, 768
  store i32 %47, ptr %1, align 8
  br label %129

48:                                               ; preds = %40, %38
  br i1 %22, label %69, label %49, !prof !721

49:                                               ; preds = %48
  %50 = tail call i32 @objc_is_reserved_word(ptr noundef nonnull %26) #11
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %49
  %53 = add i8 %32, -21
  %54 = icmp ult i8 %53, 6
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i8, ptr %9, align 2
  %57 = and i8 %56, 16
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %75, label %59

59:                                               ; preds = %55, %52
  %60 = load ptr, ptr @ridpointers, align 8, !tbaa !681
  %61 = zext i8 %32 to i64
  %62 = getelementptr inbounds ptr, ptr %60, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !681
  store ptr %63, ptr %7, align 8, !tbaa !698
  %64 = load i32, ptr %1, align 8
  %65 = and i32 %64, -16711936
  %66 = shl nuw nsw i32 %33, 16
  %67 = or disjoint i32 %65, %66
  %68 = or disjoint i32 %67, 74
  store i32 %68, ptr %1, align 8
  br label %129

69:                                               ; preds = %48
  %70 = load i32, ptr %1, align 8
  %71 = and i32 %70, -16711936
  %72 = shl nuw nsw i32 %33, 16
  %73 = or disjoint i32 %71, %72
  %74 = or disjoint i32 %73, 74
  store i32 %74, ptr %1, align 8
  br label %129

75:                                               ; preds = %49, %55, %35, %25
  %76 = load ptr, ptr %7, align 8, !tbaa !698
  %77 = tail call ptr @lookup_name(ptr noundef %76) #11
  %78 = icmp eq ptr %77, null
  br i1 %78, label %87, label %79, !prof !722

79:                                               ; preds = %75
  %80 = load i64, ptr %77, align 8
  %81 = and i64 %80, 65535
  %82 = icmp eq i64 %81, 35
  br i1 %82, label %83, label %105, !prof !723

83:                                               ; preds = %79
  %84 = load i32, ptr %1, align 8
  %85 = and i32 %84, -65281
  %86 = or disjoint i32 %85, 256
  store i32 %86, ptr %1, align 8
  br label %129

87:                                               ; preds = %75
  %88 = load i32, ptr @c_language, align 4, !tbaa !676
  %89 = and i32 %88, 1
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %105, label %91, !prof !724

91:                                               ; preds = %87
  %92 = load ptr, ptr %7, align 8, !tbaa !698
  %93 = tail call ptr @objc_is_class_name(ptr noundef %92) #11
  %94 = icmp eq ptr %93, null
  br i1 %94, label %105, label %95

95:                                               ; preds = %91
  %96 = tail call i32 @global_bindings_p() #11
  %97 = icmp ne i32 %96, 0
  %98 = and i8 %19, 32
  %99 = icmp eq i8 %98, 0
  %100 = select i1 %97, i1 true, i1 %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %95
  store ptr %93, ptr %7, align 8, !tbaa !698
  %102 = load i32, ptr %1, align 8
  %103 = and i32 %102, -65281
  %104 = or disjoint i32 %103, 512
  store i32 %104, ptr %1, align 8
  br label %129

105:                                              ; preds = %95, %91, %87, %79
  %106 = load i32, ptr %1, align 8
  %107 = and i32 %106, -65281
  store i32 %107, ptr %1, align 8
  br label %129

108:                                              ; preds = %6
  store i32 9962570, ptr %1, align 8
  %109 = load ptr, ptr %7, align 8, !tbaa !698
  %110 = getelementptr inbounds %struct.c_common_identifier, ptr %109, i64 0, i32 1, i32 2
  %111 = load i8, ptr %110, align 1, !tbaa !688
  %112 = zext i8 %111 to i32
  %113 = shl nuw nsw i32 %112, 16
  %114 = or disjoint i32 %113, 1098
  store i32 %114, ptr %1, align 8
  br label %129

115:                                              ; preds = %6, %6, %6, %6
  %116 = load i32, ptr @c_language, align 4, !tbaa !676
  %117 = and i32 %116, 1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %129, label %119, !prof !725

119:                                              ; preds = %115
  %120 = load i8, ptr %9, align 2
  %121 = and i8 %120, -33
  store i8 %121, ptr %9, align 2
  br label %129

122:                                              ; preds = %6
  %123 = load ptr, ptr %7, align 8, !tbaa !698
  %124 = getelementptr inbounds %struct.tree_int_cst, ptr %123, i64 0, i32 1
  %125 = load i64, ptr %124, align 8, !tbaa !714
  %126 = trunc i64 %125 to i32
  %127 = shl i32 %126, 24
  %128 = or disjoint i32 %127, %16
  store i32 %128, ptr %1, align 8
  store ptr null, ptr %7, align 8, !tbaa !698
  br label %129

129:                                              ; preds = %83, %105, %101, %69, %59, %42, %108, %122, %119, %115, %6
  %130 = load i8, ptr @timevar_enable, align 1, !tbaa !714
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %133, label %132, !prof !715

132:                                              ; preds = %129
  tail call void @timevar_pop_1(i32 noundef 43) #11
  br label %133

133:                                              ; preds = %129, %132
  ret void
}

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @c_lex_with_flags(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @warning_at(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @objc_is_reserved_word(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lookup_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @objc_is_class_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @global_bindings_p() local_unnamed_addr #2

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @c_parse_file() local_unnamed_addr #0 !prof !675 {
  %1 = alloca %struct.c_parser, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false)
  store ptr %1, ptr @the_parser, align 8, !tbaa !681
  %2 = call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %3 = load i32, ptr %1, align 8
  %4 = and i32 %3, -16777216
  %5 = icmp eq i32 %4, 285212672
  br i1 %5, label %6, label %7, !prof !726

6:                                                ; preds = %0
  call fastcc void @c_parser_pragma_pch_preprocess(ptr noundef nonnull %1) #12
  br label %7

7:                                                ; preds = %6, %0
  %8 = call ptr @ggc_alloc_stat(i64 noundef 56) #11
  store ptr %8, ptr @the_parser, align 8, !tbaa !681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !tbaa.struct !727
  %9 = load i32, ptr @flag_exceptions, align 4, !tbaa !676
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11, !prof !680

11:                                               ; preds = %7
  call void @using_eh_for_cleanups() #11
  %12 = load ptr, ptr @the_parser, align 8, !tbaa !681
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi ptr [ %12, %11 ], [ %8, %7 ]
  call fastcc void @c_parser_translation_unit(ptr noundef %14) #12
  store ptr null, ptr @the_parser, align 8, !tbaa !681
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %1) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_pragma_pch_preprocess(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !729 {
  tail call fastcc void @c_parser_consume_pragma(ptr noundef %0) #12
  %2 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 61) #12, !range !730
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call fastcc void @c_parser_error(ptr noundef %0, ptr noundef nonnull @.str.3) #12
  tail call fastcc void @c_parser_skip_to_pragma_eol(ptr noundef %0) #12
  br label %13

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %7 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !698
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  tail call fastcc void @c_parser_skip_to_pragma_eol(ptr noundef %0) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @parse_in, align 8, !tbaa !681
  %12 = getelementptr inbounds %struct.tree_string, ptr %8, i64 0, i32 2
  tail call void @c_common_pch_pragma(ptr noundef %11, ptr noundef nonnull %12) #11
  br label %13

13:                                               ; preds = %4, %10, %5
  ret void
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @using_eh_for_cleanups() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_translation_unit(ptr noundef %0) unnamed_addr #0 !prof !675 !PGOFuncName !731 {
  %2 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 22) #12, !range !730
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !680

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %6 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !720
  %8 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %7, i32 noundef 834, ptr noundef nonnull @.str.5) #11
  br label %63

9:                                                ; preds = %1
  store i64 0, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 5), align 8, !tbaa !732
  %10 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 4), align 8, !tbaa !735
  %11 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 3), align 8, !tbaa !736
  %12 = ptrtoint ptr %10 to i64
  %13 = ptrtoint ptr %11 to i64
  %14 = sub i64 %12, %13
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %19, !prof !726

16:                                               ; preds = %9
  tail call void @_obstack_newchunk(ptr noundef nonnull @parser_obstack, i32 noundef 0) #11
  %17 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 5), align 8, !tbaa !732
  %18 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 3), align 8, !tbaa !736
  br label %19

19:                                               ; preds = %9, %16
  %20 = phi ptr [ %11, %9 ], [ %18, %16 ]
  %21 = phi i64 [ 0, %9 ], [ %17, %16 ]
  %22 = getelementptr inbounds i8, ptr %20, i64 %21
  %23 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 2), align 8, !tbaa !737
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %25, label %28, !prof !680

25:                                               ; preds = %19
  %26 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 10), align 8
  %27 = or i8 %26, 2
  store i8 %27, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 10), align 8
  br label %28

28:                                               ; preds = %19, %25
  %29 = ptrtoint ptr %23 to i64
  store i64 %29, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 5), align 8, !tbaa !732
  %30 = ptrtoint ptr %22 to i64
  %31 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 6), align 8, !tbaa !738
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = xor i32 %31, -1
  %35 = sext i32 %34 to i64
  %36 = and i64 %33, %35
  %37 = inttoptr i64 %36 to ptr
  %38 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 1), align 8, !tbaa !739
  %39 = ptrtoint ptr %38 to i64
  %40 = sub i64 %36, %39
  %41 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 4), align 8, !tbaa !735
  %42 = ptrtoint ptr %41 to i64
  %43 = sub i64 %42, %39
  %44 = icmp sgt i64 %40, %43
  %45 = select i1 %44, ptr %41, ptr %37, !prof !726
  store ptr %45, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 3), align 8
  store ptr %45, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 2), align 8, !tbaa !737
  tail call void @mark_valid_location_for_stdc_pragma(i8 noundef zeroext 0) #11
  br label %46

46:                                               ; preds = %60, %28
  tail call void @ggc_collect() #11
  tail call fastcc void @c_parser_external_declaration(ptr noundef %0) #12
  %47 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 1), align 8, !tbaa !739
  %48 = ptrtoint ptr %47 to i64
  %49 = sub i64 %29, %48
  store i64 %49, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 5), align 8, !tbaa !732
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %58, !prof !740

51:                                               ; preds = %46
  %52 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 4), align 8, !tbaa !735
  %53 = ptrtoint ptr %52 to i64
  %54 = sub i64 %53, %48
  %55 = icmp slt i64 %49, %54
  br i1 %55, label %56, label %58, !prof !741

56:                                               ; preds = %51
  %57 = getelementptr inbounds i8, ptr %47, i64 %49
  store ptr %57, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 2), align 8, !tbaa !737
  store ptr %57, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 3), align 8, !tbaa !736
  br label %60

58:                                               ; preds = %51, %46
  %59 = getelementptr inbounds i8, ptr %47, i64 %49
  tail call void @obstack_free(ptr noundef nonnull @parser_obstack, ptr noundef %59) #11
  br label %60

60:                                               ; preds = %56, %58
  %61 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef %0, i32 noundef 22) #12, !range !730
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %46, !prof !742, !llvm.loop !743

63:                                               ; preds = %60, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_consume_pragma(ptr nocapture noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !744 {
  %2 = getelementptr inbounds %struct.c_parser, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 2
  %4 = and i8 %3, 2
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 543, ptr noundef nonnull @.str.2) #11
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.c_parser, ptr %0, i64 0, i32 1
  %9 = load i16, ptr %8, align 8, !tbaa !702
  %10 = icmp sgt i16 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 544, ptr noundef nonnull @.str.2) #11
  br label %12

12:                                               ; preds = %7, %11
  %13 = load i32, ptr %0, align 8
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, 70
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 545, ptr noundef nonnull @.str.2) #11
  br label %17

17:                                               ; preds = %12, %16
  %18 = load i16, ptr %8, align 8, !tbaa !702
  %19 = icmp eq i16 %18, 2
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = getelementptr inbounds [2 x %struct.c_token], ptr %0, i64 0, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %21, i64 24, i1 false), !tbaa.struct !711
  br label %22

22:                                               ; preds = %20, %17
  %23 = add i16 %18, -1
  store i16 %23, ptr %8, align 8, !tbaa !702
  %24 = load i8, ptr %2, align 2
  %25 = or i8 %24, 2
  store i8 %25, ptr %2, align 2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !745 !PGOFuncName !746 {
  %3 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 255
  %6 = icmp eq i32 %5, %1
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_error(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !697 !PGOFuncName !747 {
  %3 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.c_parser, ptr %0, i64 0, i32 2
  %5 = load i8, ptr %4, align 2
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %2
  %9 = or disjoint i8 %5, 1
  store i8 %9, ptr %4, align 2
  %10 = icmp eq ptr %1, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  tail call fastcc void @c_parser_set_source_position_from_token(ptr noundef nonnull %0) #12
  %12 = load i32, ptr %0, align 8
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %13, 74
  %15 = select i1 %14, i32 53, i32 %13
  %16 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !698
  tail call void @c_parse_error(ptr noundef nonnull %1, i32 noundef %15, ptr noundef %17, i8 noundef zeroext 0) #11
  br label %18

18:                                               ; preds = %8, %2, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_skip_to_pragma_eol(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !748 {
  %2 = getelementptr inbounds %struct.c_parser, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 2
  %4 = and i8 %3, 2
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 733, ptr noundef nonnull @.str.2) #11
  %7 = load i8, ptr %2, align 2
  br label %8

8:                                                ; preds = %1, %6
  %9 = phi i8 [ %3, %1 ], [ %7, %6 ]
  %10 = and i8 %9, -3
  store i8 %10, ptr %2, align 2
  %11 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef nonnull %0, i32 noundef 71, ptr noundef nonnull @.str.4) #12, !range !730
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %8, %18
  %14 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %15 = load i32, ptr %0, align 8
  %16 = trunc i32 %15 to i8
  switch i8 %16, label %18 [
    i8 22, label %19
    i8 71, label %17
  ]

17:                                               ; preds = %13
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  br label %19

18:                                               ; preds = %13
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  br label %13

19:                                               ; preds = %13, %17, %8
  %20 = load i8, ptr %2, align 2
  %21 = and i8 %20, -2
  store i8 %21, ptr %2, align 2
  ret void
}

; Function Attrs: optsize
declare void @c_common_pch_pragma(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc void @c_parser_set_source_position_from_token(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !749 !PGOFuncName !750 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  %4 = icmp eq i32 %3, 22
  br i1 %4, label %8, label %5, !prof !751

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !720
  store i32 %7, ptr @input_location, align 4, !tbaa !676
  br label %8

8:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare void @c_parse_error(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @c_parser_require(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !752 !PGOFuncName !753 {
  %4 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef %1) #12, !range !730
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6, !prof !754

6:                                                ; preds = %3
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  br label %8

7:                                                ; preds = %3
  tail call fastcc void @c_parser_error(ptr noundef %0, ptr noundef %2) #12
  br label %8

8:                                                ; preds = %7, %6
  %9 = phi i8 [ 1, %6 ], [ 0, %7 ]
  ret i8 %9
}

; Function Attrs: optsize
declare zeroext i8 @pedwarn(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mark_valid_location_for_stdc_pragma(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ggc_collect() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_external_declaration(ptr noundef %0) unnamed_addr #0 !prof !755 !PGOFuncName !756 {
  %2 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %56 [
    i8 74, label %5
    i8 43, label %44
    i8 70, label %49
    i8 4, label %51
    i8 5, label %51
  ], !prof !757

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %7 = load i32, ptr %0, align 8
  %8 = lshr i32 %7, 16
  %9 = trunc i32 %8 to i8
  switch i8 %9, label %56 [
    i8 54, label %11
    i8 49, label %13
    i8 -122, label %14
    i8 -121, label %14
    i8 71, label %20
    i8 122, label %26
    i8 127, label %32
    i8 120, label %38
  ], !prof !758

10:                                               ; preds = %13, %19, %25, %31, %37, %43, %56, %55, %49, %44, %11
  ret void

11:                                               ; preds = %5
  %12 = tail call fastcc i32 @disable_extension_diagnostics() #12
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  tail call fastcc void @c_parser_external_declaration(ptr noundef nonnull %0) #12
  tail call fastcc void @restore_extension_diagnostics(i32 noundef %12) #12
  br label %10

13:                                               ; preds = %5
  tail call fastcc void @c_parser_asm_definition(ptr noundef nonnull %0) #12
  br label %10

14:                                               ; preds = %5, %5
  %15 = load i32, ptr @c_language, align 4, !tbaa !676
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1056, ptr noundef nonnull @.str.2) #11
  br label %19

19:                                               ; preds = %14, %18
  tail call fastcc void @c_parser_objc_class_definition(ptr noundef nonnull %0) #12
  br label %10

20:                                               ; preds = %5
  %21 = load i32, ptr @c_language, align 4, !tbaa !676
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1060, ptr noundef nonnull @.str.2) #11
  br label %25

25:                                               ; preds = %20, %24
  tail call fastcc void @c_parser_objc_class_declaration(ptr noundef nonnull %0) #12
  br label %10

26:                                               ; preds = %5
  %27 = load i32, ptr @c_language, align 4, !tbaa !676
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1064, ptr noundef nonnull @.str.2) #11
  br label %31

31:                                               ; preds = %26, %30
  tail call fastcc void @c_parser_objc_alias_declaration(ptr noundef nonnull %0) #12
  br label %10

32:                                               ; preds = %5
  %33 = load i32, ptr @c_language, align 4, !tbaa !676
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1068, ptr noundef nonnull @.str.2) #11
  br label %37

37:                                               ; preds = %32, %36
  tail call fastcc void @c_parser_objc_protocol_definition(ptr noundef nonnull %0) #12
  br label %10

38:                                               ; preds = %5
  %39 = load i32, ptr @c_language, align 4, !tbaa !676
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1072, ptr noundef nonnull @.str.2) #11
  br label %43

43:                                               ; preds = %38, %42
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  tail call void @objc_finish_implementation() #11
  br label %10

44:                                               ; preds = %1
  %45 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %46 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !720
  %48 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %47, i32 noundef 834, ptr noundef nonnull @.str.6) #11
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  br label %10

49:                                               ; preds = %1
  tail call void @mark_valid_location_for_stdc_pragma(i8 noundef zeroext 1) #11
  %50 = tail call fastcc zeroext i8 @c_parser_pragma(ptr noundef nonnull %0, i32 noundef 0) #12, !range !730
  tail call void @mark_valid_location_for_stdc_pragma(i8 noundef zeroext 0) #11
  br label %10

51:                                               ; preds = %1, %1
  %52 = load i32, ptr @c_language, align 4, !tbaa !676
  %53 = and i32 %52, 1
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call fastcc void @c_parser_objc_method_definition(ptr noundef nonnull %0) #12
  br label %10

56:                                               ; preds = %1, %51, %5
  tail call fastcc void @c_parser_declaration_or_fndef(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 1) #12
  br label %10
}

; Function Attrs: optsize
declare void @obstack_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !759 !PGOFuncName !760 {
  %3 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef %1) #12, !range !730
  %4 = xor i8 %3, 1
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define internal fastcc i32 @disable_extension_diagnostics() unnamed_addr #6 !prof !761 !PGOFuncName !762 {
  %1 = load i32, ptr @pedantic, align 4, !tbaa !676
  %2 = load i32, ptr @warn_pointer_arith, align 4, !tbaa !676
  %3 = shl i32 %2, 1
  %4 = or i32 %3, %1
  %5 = load i32, ptr @warn_traditional, align 4, !tbaa !676
  %6 = shl i32 %5, 2
  %7 = or i32 %4, %6
  %8 = load i32, ptr @flag_iso, align 4, !tbaa !676
  %9 = shl i32 %8, 3
  %10 = or i32 %7, %9
  %11 = load i32, ptr @warn_long_long, align 4, !tbaa !676
  %12 = shl i32 %11, 4
  %13 = or i32 %10, %12
  %14 = load i32, ptr @warn_cxx_compat, align 4, !tbaa !676
  %15 = shl i32 %14, 5
  %16 = or i32 %13, %15
  store i32 0, ptr @pedantic, align 4, !tbaa !676
  %17 = load ptr, ptr @cpp_opts, align 8, !tbaa !681
  %18 = getelementptr inbounds %struct.cpp_options, ptr %17, i64 0, i32 31
  store i8 0, ptr %18, align 1, !tbaa !763
  store i32 0, ptr @warn_pointer_arith, align 4, !tbaa !676
  store i32 0, ptr @warn_traditional, align 4, !tbaa !676
  %19 = getelementptr inbounds %struct.cpp_options, ptr %17, i64 0, i32 17
  store i8 0, ptr %19, align 1, !tbaa !766
  store i32 0, ptr @flag_iso, align 4, !tbaa !676
  store i32 0, ptr @warn_long_long, align 4, !tbaa !676
  %20 = getelementptr inbounds %struct.cpp_options, ptr %17, i64 0, i32 18
  store i8 0, ptr %20, align 8, !tbaa !767
  store i32 0, ptr @warn_cxx_compat, align 4, !tbaa !676
  ret i32 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define internal fastcc void @restore_extension_diagnostics(i32 noundef %0) unnamed_addr #6 !prof !761 !PGOFuncName !768 {
  %2 = and i32 %0, 1
  store i32 %2, ptr @pedantic, align 4, !tbaa !676
  %3 = trunc i32 %2 to i8
  %4 = load ptr, ptr @cpp_opts, align 8, !tbaa !681
  %5 = getelementptr inbounds %struct.cpp_options, ptr %4, i64 0, i32 31
  store i8 %3, ptr %5, align 1, !tbaa !763
  %6 = lshr i32 %0, 1
  %7 = and i32 %6, 1
  store i32 %7, ptr @warn_pointer_arith, align 4, !tbaa !676
  %8 = lshr i32 %0, 2
  %9 = and i32 %8, 1
  store i32 %9, ptr @warn_traditional, align 4, !tbaa !676
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds %struct.cpp_options, ptr %4, i64 0, i32 17
  store i8 %10, ptr %11, align 1, !tbaa !766
  %12 = lshr i32 %0, 3
  %13 = and i32 %12, 1
  store i32 %13, ptr @flag_iso, align 4, !tbaa !676
  %14 = lshr i32 %0, 4
  %15 = and i32 %14, 1
  store i32 %15, ptr @warn_long_long, align 4, !tbaa !676
  %16 = trunc i32 %15 to i8
  %17 = getelementptr inbounds %struct.cpp_options, ptr %4, i64 0, i32 18
  store i8 %16, ptr %17, align 8, !tbaa !767
  %18 = lshr i32 %0, 5
  %19 = and i32 %18, 1
  store i32 %19, ptr @warn_cxx_compat, align 4, !tbaa !676
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_asm_definition(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !769 {
  %2 = tail call fastcc ptr @c_parser_simple_asm_expr(ptr noundef %0) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @cgraph_add_asm_node(ptr noundef nonnull %2) #11
  br label %6

6:                                                ; preds = %4, %1
  tail call fastcc void @c_parser_skip_until_found(ptr noundef %0, i32 noundef 43, ptr noundef nonnull @.str.7) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_objc_class_definition(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !770 {
  %2 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 134) #12, !range !730
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 135) #12, !range !730
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6112, ptr noundef nonnull @.str.2) #11
  br label %8

8:                                                ; preds = %4, %1, %7
  %9 = phi i1 [ undef, %7 ], [ false, %1 ], [ true, %4 ]
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %10 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef %0, i32 noundef 53) #12, !range !730
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call fastcc void @c_parser_error(ptr noundef %0, ptr noundef nonnull @.str.12) #12
  br label %61

13:                                               ; preds = %8
  %14 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %15 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !698
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %17 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 20) #12, !range !730
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %13
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %20 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef nonnull %0, i32 noundef 53) #12, !range !730
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call fastcc void @c_parser_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.12) #12
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %0, i32 noundef 21, ptr noundef null) #12
  br label %61

23:                                               ; preds = %19
  %24 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %25 = load ptr, ptr %15, align 8, !tbaa !698
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %0, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  br i1 %9, label %26, label %27

26:                                               ; preds = %23
  tail call void @objc_start_category_implementation(ptr noundef %16, ptr noundef %25) #11
  br label %61

27:                                               ; preds = %23
  %28 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 3) #12, !range !730
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = tail call fastcc ptr @c_parser_objc_protocol_refs(ptr noundef nonnull %0) #12
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi ptr [ %31, %30 ], [ null, %27 ]
  tail call void @objc_start_category_interface(ptr noundef %16, ptr noundef %25, ptr noundef %33) #11
  tail call fastcc void @c_parser_objc_methodprotolist(ptr noundef nonnull %0) #12
  tail call fastcc void @c_parser_require_keyword(ptr noundef nonnull %0, i32 noundef 120, ptr noundef nonnull @.str.13) #12
  tail call void @objc_finish_interface() #11
  br label %61

34:                                               ; preds = %13
  %35 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 18) #12, !range !730
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %38 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef nonnull %0, i32 noundef 53) #12, !range !730
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call fastcc void @c_parser_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.12) #12
  br label %61

41:                                               ; preds = %37
  %42 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %43 = load ptr, ptr %15, align 8, !tbaa !698
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  br label %44

44:                                               ; preds = %34, %41
  %45 = phi ptr [ %43, %41 ], [ null, %34 ]
  br i1 %9, label %53, label %46

46:                                               ; preds = %44
  %47 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 3) #12, !range !730
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = tail call fastcc ptr @c_parser_objc_protocol_refs(ptr noundef nonnull %0) #12
  br label %51

51:                                               ; preds = %49, %46
  %52 = phi ptr [ %50, %49 ], [ null, %46 ]
  tail call void @objc_start_class_interface(ptr noundef %16, ptr noundef %45, ptr noundef %52) #11
  br label %54

53:                                               ; preds = %44
  tail call void @objc_start_class_implementation(ptr noundef %16, ptr noundef %45) #11
  br label %54

54:                                               ; preds = %53, %51
  %55 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 41) #12, !range !730
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  tail call fastcc void @c_parser_objc_class_instance_variables(ptr noundef nonnull %0) #12
  br label %58

58:                                               ; preds = %57, %54
  br i1 %9, label %60, label %59

59:                                               ; preds = %58
  tail call void @objc_continue_interface() #11
  tail call fastcc void @c_parser_objc_methodprotolist(ptr noundef nonnull %0) #12
  tail call fastcc void @c_parser_require_keyword(ptr noundef nonnull %0, i32 noundef 120, ptr noundef nonnull @.str.13) #12
  tail call void @objc_finish_interface() #11
  br label %61

60:                                               ; preds = %58
  tail call void @objc_continue_implementation() #11
  br label %61

61:                                               ; preds = %22, %26, %32, %59, %60, %40, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_objc_class_declaration(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !771 {
  %2 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 71) #12, !range !730
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6278, ptr noundef nonnull @.str.2) #11
  br label %5

5:                                                ; preds = %1, %4
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %6 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef %0, i32 noundef 53) #12, !range !730
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %20, %5
  %11 = phi ptr [ null, %5 ], [ %17, %20 ]
  tail call fastcc void @c_parser_error(ptr noundef %0, ptr noundef nonnull @.str.12) #12
  br label %23

12:                                               ; preds = %8, %20
  %13 = phi ptr [ null, %8 ], [ %17, %20 ]
  %14 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %15 = load ptr, ptr %9, align 8, !tbaa !698
  %16 = tail call ptr @build_tree_list_stat(ptr noundef null, ptr noundef %15) #11
  %17 = tail call ptr @chainon(ptr noundef %13, ptr noundef %16) #11
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %18 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 19) #12, !range !730
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %12
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %21 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef nonnull %0, i32 noundef 53) #12, !range !730
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %12, label %10

23:                                               ; preds = %12, %10
  %24 = phi ptr [ %11, %10 ], [ %17, %12 ]
  tail call fastcc void @c_parser_skip_until_found(ptr noundef %0, i32 noundef 43, ptr noundef nonnull @.str.7) #12
  tail call void @objc_declare_class(ptr noundef %24) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_objc_alias_declaration(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !772 {
  %2 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 122) #12, !range !730
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6312, ptr noundef nonnull @.str.2) #11
  br label %5

5:                                                ; preds = %1, %4
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %6 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef %0, i32 noundef 53) #12, !range !730
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call fastcc void @c_parser_error(ptr noundef %0, ptr noundef nonnull @.str.12) #12
  tail call fastcc void @c_parser_skip_until_found(ptr noundef %0, i32 noundef 43, ptr noundef null) #12
  br label %19

9:                                                ; preds = %5
  %10 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %11 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !698
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %13 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef %0, i32 noundef 53) #12, !range !730
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  tail call fastcc void @c_parser_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.12) #12
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %0, i32 noundef 43, ptr noundef null) #12
  br label %19

16:                                               ; preds = %9
  %17 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %18 = load ptr, ptr %11, align 8, !tbaa !698
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %0, i32 noundef 43, ptr noundef nonnull @.str.7) #12
  tail call void @objc_declare_alias(ptr noundef %12, ptr noundef %18) #11
  br label %19

19:                                               ; preds = %16, %15, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_objc_protocol_definition(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !773 {
  %2 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 127) #12, !range !730
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6348, ptr noundef nonnull @.str.2) #11
  br label %5

5:                                                ; preds = %1, %4
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %6 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef %0, i32 noundef 53) #12, !range !730
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call fastcc void @c_parser_error(ptr noundef %0, ptr noundef nonnull @.str.12) #12
  br label %54

9:                                                ; preds = %5
  %10 = tail call fastcc ptr @c_parser_peek_2nd_token(ptr noundef %0) #12
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, 19
  br i1 %13, label %19, label %14

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @c_parser_peek_2nd_token(ptr noundef %0) #12
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 255
  %18 = icmp eq i32 %17, 43
  br i1 %18, label %19, label %39

19:                                               ; preds = %14, %9
  %20 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef %0, i32 noundef 53) #12, !range !730
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 1
  br label %26

24:                                               ; preds = %34, %19
  %25 = phi ptr [ null, %19 ], [ %31, %34 ]
  tail call fastcc void @c_parser_error(ptr noundef %0, ptr noundef nonnull @.str.12) #12
  br label %37

26:                                               ; preds = %22, %34
  %27 = phi ptr [ null, %22 ], [ %31, %34 ]
  %28 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %29 = load ptr, ptr %23, align 8, !tbaa !698
  %30 = tail call ptr @build_tree_list_stat(ptr noundef null, ptr noundef %29) #11
  %31 = tail call ptr @chainon(ptr noundef %27, ptr noundef %30) #11
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %32 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 19) #12, !range !730
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %35 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef nonnull %0, i32 noundef 53) #12, !range !730
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %26, label %24

37:                                               ; preds = %26, %24
  %38 = phi ptr [ %25, %24 ], [ %31, %26 ]
  tail call fastcc void @c_parser_skip_until_found(ptr noundef %0, i32 noundef 43, ptr noundef nonnull @.str.7) #12
  tail call void @objc_declare_protocols(ptr noundef %38) #11
  br label %54

39:                                               ; preds = %14
  %40 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %41 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !698
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %43 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 3) #12, !range !730
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = tail call fastcc ptr @c_parser_objc_protocol_refs(ptr noundef nonnull %0) #12
  br label %47

47:                                               ; preds = %45, %39
  %48 = phi ptr [ %46, %45 ], [ null, %39 ]
  %49 = getelementptr inbounds %struct.c_parser, ptr %0, i64 0, i32 2
  %50 = load i8, ptr %49, align 2
  %51 = or i8 %50, 16
  store i8 %51, ptr %49, align 2
  tail call void @objc_start_protocol(ptr noundef %42, ptr noundef %48) #11
  tail call fastcc void @c_parser_objc_methodprotolist(ptr noundef nonnull %0) #12
  tail call fastcc void @c_parser_require_keyword(ptr noundef nonnull %0, i32 noundef 120, ptr noundef nonnull @.str.13) #12
  %52 = load i8, ptr %49, align 2
  %53 = and i8 %52, -17
  store i8 %53, ptr %49, align 2
  tail call void @objc_finish_interface() #11
  br label %54

54:                                               ; preds = %8, %47, %37
  ret void
}

; Function Attrs: optsize
declare void @objc_finish_implementation() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @c_parser_pragma(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !697 !PGOFuncName !774 {
  %3 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 24
  %6 = icmp ult i32 %4, 16777216
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6980, ptr noundef nonnull @.str.2) #11
  br label %8

8:                                                ; preds = %2, %7
  %9 = trunc i32 %5 to i8
  switch i8 %9, label %22 [
    i8 2, label %10
    i8 4, label %12
    i8 15, label %14
    i8 16, label %16
    i8 11, label %17
    i8 17, label %21
  ]

10:                                               ; preds = %8
  switch i32 %1, label %28 [
    i32 2, label %11
    i32 1, label %26
  ]

11:                                               ; preds = %10
  tail call fastcc void @c_parser_omp_barrier(ptr noundef nonnull %0) #12
  br label %34

12:                                               ; preds = %8
  switch i32 %1, label %28 [
    i32 2, label %13
    i32 1, label %26
  ]

13:                                               ; preds = %12
  tail call fastcc void @c_parser_omp_flush(ptr noundef nonnull %0) #12
  br label %34

14:                                               ; preds = %8
  switch i32 %1, label %28 [
    i32 2, label %15
    i32 1, label %26
  ]

15:                                               ; preds = %14
  tail call fastcc void @c_parser_omp_taskwait(ptr noundef nonnull %0) #12
  br label %34

16:                                               ; preds = %8
  tail call fastcc void @c_parser_omp_threadprivate(ptr noundef nonnull %0) #12
  br label %34

17:                                               ; preds = %8
  %18 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %19 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !720
  tail call void (i32, ptr, ...) @error_at(i32 noundef %20, ptr noundef nonnull @.str.71) #11
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %0, i32 noundef 71, ptr noundef null) #12
  br label %34

21:                                               ; preds = %8
  tail call fastcc void @c_parser_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.72) #12
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %0, i32 noundef 71, ptr noundef null) #12
  br label %34

22:                                               ; preds = %8
  %23 = icmp ult i32 %4, 301989888
  br i1 %23, label %24, label %30

24:                                               ; preds = %22
  %25 = icmp eq i32 %1, 0
  br i1 %25, label %28, label %29

26:                                               ; preds = %14, %12, %10
  %27 = phi ptr [ @.str.68, %10 ], [ @.str.69, %12 ], [ @.str.70, %14 ]
  tail call fastcc void @c_parser_error(ptr noundef nonnull %0, ptr noundef nonnull %27) #12
  br label %28

28:                                               ; preds = %26, %14, %12, %10, %24
  tail call fastcc void @c_parser_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.73) #12
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %0, i32 noundef 71, ptr noundef null) #12
  br label %34

29:                                               ; preds = %24
  tail call fastcc void @c_parser_omp_construct(ptr noundef nonnull %0) #12
  br label %34

30:                                               ; preds = %22
  tail call fastcc void @c_parser_consume_pragma(ptr noundef nonnull %0) #12
  tail call void @c_invoke_pragma_handler(i32 noundef %5) #11
  %31 = getelementptr inbounds %struct.c_parser, ptr %0, i64 0, i32 2
  %32 = load i8, ptr %31, align 2
  %33 = or i8 %32, 1
  store i8 %33, ptr %31, align 2
  tail call fastcc void @c_parser_skip_to_pragma_eol(ptr noundef nonnull %0) #12
  br label %34

34:                                               ; preds = %30, %29, %28, %21, %17, %16, %15, %13, %11
  %35 = phi i8 [ 0, %28 ], [ 1, %29 ], [ 0, %30 ], [ 0, %21 ], [ 0, %17 ], [ 0, %16 ], [ 0, %15 ], [ 0, %13 ], [ 0, %11 ]
  ret i8 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_objc_method_definition(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !775 {
  %2 = tail call fastcc i32 @c_parser_objc_method_type(ptr noundef %0) #12, !range !776
  tail call void @objc_set_method_type(i32 noundef %2) #11
  %3 = getelementptr inbounds %struct.c_parser, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 2
  %5 = or i8 %4, 16
  store i8 %5, ptr %3, align 2
  %6 = tail call fastcc ptr @c_parser_objc_method_decl(ptr noundef %0) #12
  %7 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 43) #12, !range !730
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %10 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %11 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !720
  %13 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %12, i32 noundef 834, ptr noundef nonnull @.str.125) #11
  br label %14

14:                                               ; preds = %9, %1
  %15 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 41) #12, !range !730
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call fastcc void @c_parser_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.19) #12
  br label %24

18:                                               ; preds = %14
  %19 = load i8, ptr %3, align 2
  %20 = and i8 %19, -17
  store i8 %20, ptr %3, align 2
  tail call void @objc_start_method_definition(ptr noundef %6) #11
  %21 = tail call fastcc ptr @c_parser_compound_statement(ptr noundef nonnull %0) #12
  %22 = tail call ptr @add_stmt(ptr noundef %21) #11
  %23 = load ptr, ptr @current_function_decl, align 8, !tbaa !681
  tail call void @objc_finish_method_definition(ptr noundef %23) #11
  br label %24

24:                                               ; preds = %18, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_declaration_or_fndef(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 !prof !777 !PGOFuncName !778 {
  %6 = alloca i8, align 1
  %7 = alloca %struct.c_expr, align 8
  %8 = alloca %struct.c_expr, align 8
  %9 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %10 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !720
  %12 = tail call ptr @build_null_declspecs() #11
  tail call fastcc void @c_parser_declspecs(ptr noundef %0, ptr noundef %12, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext %4) #12
  %13 = getelementptr inbounds %struct.c_parser, ptr %0, i64 0, i32 2
  %14 = load i8, ptr %13, align 2
  %15 = and i8 %14, 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17, !prof !779

17:                                               ; preds = %5
  tail call fastcc void @c_parser_skip_to_end_of_block_or_statement(ptr noundef nonnull %0) #12
  br label %177

18:                                               ; preds = %5
  %19 = icmp eq i8 %3, 0
  br i1 %19, label %26, label %20, !prof !780

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.c_declspecs, ptr %12, i64 0, i32 6
  %22 = load i8, ptr %21, align 8
  %23 = and i8 %22, 2
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %26, !prof !781

25:                                               ; preds = %20
  tail call fastcc void @c_parser_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.73) #12
  tail call fastcc void @c_parser_skip_to_end_of_block_or_statement(ptr noundef nonnull %0) #12
  br label %177

26:                                               ; preds = %20, %18
  %27 = tail call ptr @finish_declspecs(ptr noundef %12) #11
  %28 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 43) #12, !range !730
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %36, label %30, !prof !782

30:                                               ; preds = %26
  %31 = icmp eq i8 %2, 0
  br i1 %31, label %33, label %32, !prof !783

32:                                               ; preds = %30
  tail call void @shadow_tag(ptr noundef %12) #11
  br label %35

33:                                               ; preds = %30
  tail call void @shadow_tag_warned(ptr noundef %12, i32 noundef 1) #11
  %34 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %11, i32 noundef 0, ptr noundef nonnull @.str.126) #11
  br label %35

35:                                               ; preds = %33, %32
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  br label %177

36:                                               ; preds = %26
  tail call void @pending_xref_error() #11
  %37 = getelementptr inbounds %struct.c_declspecs, ptr %12, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !784
  store ptr null, ptr %37, align 8, !tbaa !784
  %39 = getelementptr inbounds %struct.c_declspecs, ptr %12, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #13
  store i8 0, ptr %6, align 1, !tbaa !714
  %40 = load i8, ptr %39, align 8
  %41 = lshr i8 %40, 2
  %42 = and i8 %41, 1
  %43 = call fastcc ptr @c_parser_declarator(ptr noundef nonnull %0, i8 noundef zeroext %42, i32 noundef 0, ptr noundef nonnull %6) #12
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45, !prof !683

45:                                               ; preds = %36
  %46 = icmp eq i8 %1, 0
  br label %48

47:                                               ; preds = %170, %36
  call fastcc void @c_parser_skip_to_end_of_block_or_statement(ptr noundef %0) #12
  br label %169

48:                                               ; preds = %45, %170
  %49 = phi ptr [ %43, %45 ], [ %175, %170 ]
  %50 = phi i1 [ %46, %45 ], [ true, %170 ]
  %51 = phi ptr [ %38, %45 ], [ %171, %170 ]
  %52 = phi i8 [ 0, %45 ], [ %76, %170 ]
  %53 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 0) #12, !range !730
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %67, !prof !786

55:                                               ; preds = %48
  %56 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 19) #12, !range !730
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %67, !prof !787

58:                                               ; preds = %55
  %59 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 43) #12, !range !730
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %67, !prof !788

61:                                               ; preds = %58
  %62 = call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 49) #12, !range !730
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %67, !prof !789

64:                                               ; preds = %61
  %65 = call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 52) #12, !range !730
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %130, label %67, !prof !790

67:                                               ; preds = %64, %61, %58, %55, %48
  %68 = icmp eq i8 %52, 0
  br i1 %68, label %69, label %75, !prof !791

69:                                               ; preds = %67
  %70 = load i8, ptr %39, align 8
  %71 = and i8 %70, 2
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %75, !prof !792

73:                                               ; preds = %69
  %74 = call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %11, i32 noundef 0, ptr noundef nonnull @.str.127) #11
  br label %75

75:                                               ; preds = %73, %69, %67
  %76 = phi i8 [ 1, %67 ], [ 0, %69 ], [ 1, %73 ]
  %77 = call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 49) #12, !range !730
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %81, label %79, !prof !793

79:                                               ; preds = %75
  %80 = call fastcc ptr @c_parser_simple_asm_expr(ptr noundef %0) #12
  br label %81

81:                                               ; preds = %79, %75
  %82 = phi ptr [ %80, %79 ], [ null, %75 ]
  %83 = call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 52) #12, !range !730
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %87, label %85, !prof !794

85:                                               ; preds = %81
  %86 = call fastcc ptr @c_parser_attributes(ptr noundef %0) #12
  br label %87

87:                                               ; preds = %85, %81
  %88 = phi ptr [ %86, %85 ], [ null, %81 ]
  %89 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 0) #12, !range !730
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %111, label %91, !prof !795

91:                                               ; preds = %87
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %92 = call ptr @chainon(ptr noundef %88, ptr noundef %51) #11
  %93 = call ptr @start_decl(ptr noundef nonnull %49, ptr noundef nonnull %12, i8 noundef zeroext 1, ptr noundef %92) #11
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %97, !prof !796

95:                                               ; preds = %91
  %96 = load ptr, ptr @global_trees, align 16, !tbaa !681
  br label %97

97:                                               ; preds = %95, %91
  %98 = phi ptr [ %93, %91 ], [ %96, %95 ]
  %99 = call i32 @global_bindings_p() #11
  call void @start_init(ptr noundef %98, ptr noundef %82, i32 noundef %99) #11
  %100 = call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %101 = load i32, ptr %10, align 8, !tbaa !720
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #13
  call fastcc void @c_parser_initializer(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %8, ptr noundef %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  call void @finish_init() #11
  %102 = load ptr, ptr @global_trees, align 16, !tbaa !681
  %103 = icmp eq ptr %98, %102
  br i1 %103, label %110, label %104, !prof !796

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.c_expr, ptr %7, i64 0, i32 2
  %106 = getelementptr inbounds %struct.tree_common, ptr %98, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !714
  call void @maybe_warn_string_init(ptr noundef %107, ptr noundef nonnull byval(%struct.c_expr) align 8 %7) #11
  %108 = load ptr, ptr %7, align 8, !tbaa !798
  %109 = load ptr, ptr %105, align 8, !tbaa !800
  call void @finish_decl(ptr noundef %98, i32 noundef %101, ptr noundef %108, ptr noundef %109, ptr noundef %82) #11
  br label %110

110:                                              ; preds = %104, %97
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  br label %116

111:                                              ; preds = %87
  %112 = call ptr @chainon(ptr noundef %88, ptr noundef %51) #11
  %113 = call ptr @start_decl(ptr noundef nonnull %49, ptr noundef nonnull %12, i8 noundef zeroext 0, ptr noundef %112) #11
  %114 = icmp eq ptr %113, null
  br i1 %114, label %116, label %115, !prof !801

115:                                              ; preds = %111
  call void @finish_decl(ptr noundef nonnull %113, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef %82) #11
  br label %116

116:                                              ; preds = %111, %115, %110
  %117 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 19) #12, !range !730
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %125, label %119, !prof !802

119:                                              ; preds = %116
  call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %120 = call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 52) #12, !range !730
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %170, label %122, !prof !803

122:                                              ; preds = %119
  %123 = call fastcc ptr @c_parser_attributes(ptr noundef %0) #12
  %124 = call ptr @chainon(ptr noundef %123, ptr noundef %38) #11
  br label %170

125:                                              ; preds = %116
  %126 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 43) #12, !range !730
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %129, label %128, !prof !804

128:                                              ; preds = %125
  call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  br label %169

129:                                              ; preds = %125
  call fastcc void @c_parser_error(ptr noundef %0, ptr noundef nonnull @.str.128) #12
  call fastcc void @c_parser_skip_to_end_of_block_or_statement(ptr noundef %0) #12
  br label %169

130:                                              ; preds = %64
  br i1 %50, label %131, label %132, !prof !805

131:                                              ; preds = %130
  call fastcc void @c_parser_error(ptr noundef %0, ptr noundef nonnull @.str.129) #12
  call fastcc void @c_parser_skip_to_end_of_block_or_statement(ptr noundef %0) #12
  br label %169

132:                                              ; preds = %130
  br i1 %19, label %135, label %133, !prof !806

133:                                              ; preds = %132
  %134 = call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %11, i32 noundef 834, ptr noundef nonnull @.str.130) #11
  call void @c_push_function_context() #11
  br label %135

135:                                              ; preds = %133, %132
  %136 = call i32 @start_function(ptr noundef nonnull %12, ptr noundef nonnull %49, ptr noundef %51) #11
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %141, label %138, !prof !805

138:                                              ; preds = %135
  %139 = call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef %0, i32 noundef 22) #12, !range !730
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %149, label %143, !prof !683

141:                                              ; preds = %135
  call fastcc void @c_parser_error(ptr noundef %0, ptr noundef nonnull @.str.129) #12
  br i1 %19, label %169, label %142

142:                                              ; preds = %141
  call void @c_pop_function_context() #11
  br label %169

143:                                              ; preds = %138, %146
  %144 = call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef %0, i32 noundef 41) #12, !range !730
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %149, label %146, !prof !807

146:                                              ; preds = %143
  call fastcc void @c_parser_declaration_or_fndef(ptr noundef %0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0) #12
  %147 = call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef %0, i32 noundef 22) #12, !range !730
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %143, !prof !808, !llvm.loop !809

149:                                              ; preds = %143, %146, %138
  call void @store_parm_decls() #11
  %150 = call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %151 = load i32, ptr %10, align 8, !tbaa !720
  %152 = load ptr, ptr @current_function_decl, align 8, !tbaa !681
  %153 = getelementptr inbounds %struct.tree_function_decl, ptr %152, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !714
  %155 = getelementptr inbounds %struct.function, ptr %154, i64 0, i32 15
  store i32 %151, ptr %155, align 8, !tbaa !810
  %156 = call fastcc ptr @c_parser_compound_statement(ptr noundef %0) #12
  br i1 %19, label %167, label %157, !prof !806

157:                                              ; preds = %149
  %158 = load ptr, ptr @current_function_decl, align 8, !tbaa !681
  %159 = getelementptr inbounds %struct.tree_function_decl, ptr %158, i64 0, i32 5
  %160 = load i32, ptr %159, align 8
  %161 = or i32 %160, 4194304
  store i32 %161, ptr %159, align 8
  %162 = call ptr @add_stmt(ptr noundef %156) #11
  call void @finish_function() #11
  call void @c_pop_function_context() #11
  %163 = getelementptr inbounds %struct.tree_decl_minimal, ptr %158, i64 0, i32 1
  %164 = load i32, ptr %163, align 8, !tbaa !714
  %165 = call ptr (i32, i32, ...) @build_stmt(i32 noundef %164, i32 noundef 132, ptr noundef %158) #11
  %166 = call ptr @add_stmt(ptr noundef %165) #11
  br label %169

167:                                              ; preds = %149
  %168 = call ptr @add_stmt(ptr noundef %156) #11
  call void @finish_function() #11
  br label %169

169:                                              ; preds = %47, %131, %128, %129, %142, %141, %167, %157
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  br label %177

170:                                              ; preds = %119, %122
  %171 = phi ptr [ %124, %122 ], [ %38, %119 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #13
  store i8 0, ptr %6, align 1, !tbaa !714
  %172 = load i8, ptr %39, align 8
  %173 = lshr i8 %172, 2
  %174 = and i8 %173, 1
  %175 = call fastcc ptr @c_parser_declarator(ptr noundef %0, i8 noundef zeroext %174, i32 noundef 0, ptr noundef nonnull %6) #12
  %176 = icmp eq ptr %175, null
  br i1 %176, label %47, label %48, !prof !812

177:                                              ; preds = %169, %35, %25, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_simple_asm_expr(ptr noundef %0) unnamed_addr #0 !prof !675 !PGOFuncName !813 {
  %2 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 49) #12, !range !730
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !726

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2783, ptr noundef nonnull @.str.2) #11
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.c_parser, ptr %0, i64 0, i32 2
  %7 = load i8, ptr %6, align 2
  %8 = or i8 %7, 8
  store i8 %8, ptr %6, align 2
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %9 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef %0, i32 noundef 20, ptr noundef nonnull @.str.8) #12, !range !730
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %14, !prof !726

11:                                               ; preds = %5
  %12 = load i8, ptr %6, align 2
  %13 = and i8 %12, -9
  store i8 %13, ptr %6, align 2
  br label %21

14:                                               ; preds = %5
  %15 = tail call fastcc ptr @c_parser_asm_string_literal(ptr noundef nonnull %0) #12
  %16 = load i8, ptr %6, align 2
  %17 = and i8 %16, -9
  store i8 %17, ptr %6, align 2
  %18 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef nonnull %0, i32 noundef 21, ptr noundef nonnull @.str.9) #12, !range !730
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21, !prof !726

20:                                               ; preds = %14
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %0, i32 noundef 21, ptr noundef null) #12
  br label %21

21:                                               ; preds = %14, %20, %11
  %22 = phi ptr [ null, %20 ], [ null, %11 ], [ %15, %14 ]
  ret ptr %22
}

; Function Attrs: optsize
declare ptr @cgraph_add_asm_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_skip_until_found(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !814 !PGOFuncName !815 {
  %4 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef %0, i32 noundef %1, ptr noundef %2) #12, !range !730
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %39, !prof !816

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.c_parser, ptr %0, i64 0, i32 2
  br label %14

13:                                               ; preds = %27, %6
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  br label %35

14:                                               ; preds = %11, %27
  %15 = phi i32 [ %8, %11 ], [ %30, %27 ]
  %16 = phi i32 [ 0, %11 ], [ %28, %27 ]
  %17 = trunc i32 %15 to i8
  switch i8 %17, label %27 [
    i8 22, label %39
    i8 71, label %18
    i8 41, label %22
    i8 20, label %22
    i8 39, label %22
    i8 42, label %24
    i8 21, label %24
    i8 40, label %24
  ]

18:                                               ; preds = %14
  %19 = load i8, ptr %12, align 2
  %20 = and i8 %19, 2
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %27, label %39

22:                                               ; preds = %14, %14, %14
  %23 = add i32 %16, 1
  br label %27

24:                                               ; preds = %14, %14, %14
  %25 = add i32 %16, -1
  %26 = icmp eq i32 %16, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %14, %18, %22, %24
  %28 = phi i32 [ %23, %22 ], [ %25, %24 ], [ %16, %18 ], [ %16, %14 ]
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %29 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %30 = load i32, ptr %0, align 8
  %31 = and i32 %30, 255
  %32 = icmp ne i32 %31, %1
  %33 = icmp ne i32 %28, 0
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %14, label %13

35:                                               ; preds = %24, %13
  %36 = getelementptr inbounds %struct.c_parser, ptr %0, i64 0, i32 2
  %37 = load i8, ptr %36, align 2
  %38 = and i8 %37, -2
  store i8 %38, ptr %36, align 2
  br label %39

39:                                               ; preds = %14, %18, %3, %35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !817 !PGOFuncName !818 {
  %3 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %4 = load i32, ptr %0, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = icmp eq i32 %6, %1
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_asm_string_literal(ptr noundef %0) unnamed_addr #0 !prof !675 !PGOFuncName !819 {
  %2 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 61) #12, !range !730
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4, !prof !726

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %6 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !698
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  br label %17

8:                                                ; preds = %1
  %9 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 62) #12, !range !730
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %13 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !720
  tail call void (i32, ptr, ...) @error_at(i32 noundef %14, ptr noundef nonnull @.str.10) #11
  %15 = tail call ptr @build_string(i32 noundef 1, ptr noundef nonnull @.str.11) #11
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  br label %17

16:                                               ; preds = %8
  tail call fastcc void @c_parser_error(ptr noundef %0, ptr noundef nonnull @.str.3) #12
  br label %17

17:                                               ; preds = %11, %16, %4
  %18 = phi ptr [ %7, %4 ], [ %15, %11 ], [ null, %16 ]
  ret ptr %18
}

; Function Attrs: optsize
declare void @error_at(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_string(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @objc_start_category_implementation(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_objc_protocol_refs(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !820 {
  %2 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 3) #12, !range !730
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6675, ptr noundef nonnull @.str.2) #11
  br label %5

5:                                                ; preds = %1, %4
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %6 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef %0, i32 noundef 53) #12, !range !730
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %20, %5
  %11 = phi ptr [ null, %5 ], [ %17, %20 ]
  tail call fastcc void @c_parser_error(ptr noundef %0, ptr noundef nonnull @.str.12) #12
  br label %23

12:                                               ; preds = %8, %20
  %13 = phi ptr [ null, %8 ], [ %17, %20 ]
  %14 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %15 = load ptr, ptr %9, align 8, !tbaa !698
  %16 = tail call ptr @build_tree_list_stat(ptr noundef null, ptr noundef %15) #11
  %17 = tail call ptr @chainon(ptr noundef %13, ptr noundef %16) #11
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %18 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 19) #12, !range !730
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %12
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %21 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef nonnull %0, i32 noundef 53) #12, !range !730
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %12, label %10

23:                                               ; preds = %12, %10
  %24 = phi ptr [ %11, %10 ], [ %17, %12 ]
  %25 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.14) #12, !range !730
  ret ptr %24
}

; Function Attrs: optsize
declare void @objc_start_category_interface(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_objc_methodprotolist(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !821 {
  %2 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  br label %3

3:                                                ; preds = %18, %1
  %4 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %5 = load i32, ptr %0, align 8
  %6 = trunc i32 %5 to i8
  switch i8 %6, label %14 [
    i8 43, label %7
    i8 4, label %11
    i8 5, label %11
    i8 70, label %12
    i8 22, label %19
  ]

7:                                                ; preds = %3
  %8 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %9 = load i32, ptr %2, align 8, !tbaa !720
  %10 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %9, i32 noundef 834, ptr noundef nonnull @.str.6) #11
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  br label %18

11:                                               ; preds = %3, %3
  tail call fastcc void @c_parser_objc_methodproto(ptr noundef nonnull %0) #12
  br label %18

12:                                               ; preds = %3
  %13 = tail call fastcc zeroext i8 @c_parser_pragma(ptr noundef nonnull %0, i32 noundef 0) #12, !range !730
  br label %18

14:                                               ; preds = %3
  %15 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef nonnull %0, i32 noundef 120) #12, !range !730
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  tail call fastcc void @c_parser_declaration_or_fndef(ptr noundef nonnull %0, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 1) #12
  br label %18

18:                                               ; preds = %17, %12, %11, %7
  br label %3

19:                                               ; preds = %14, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_require_keyword(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !822 !PGOFuncName !823 {
  %4 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef %1) #12, !range !730
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6, !prof !824

6:                                                ; preds = %3
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  br label %8

7:                                                ; preds = %3
  tail call fastcc void @c_parser_error(ptr noundef %0, ptr noundef %2) #12
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: optsize
declare void @objc_finish_interface() local_unnamed_addr #2

; Function Attrs: optsize
declare void @objc_start_class_interface(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @objc_start_class_implementation(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_objc_class_instance_variables(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !825 {
  %2 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 41) #12, !range !730
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6211, ptr noundef nonnull @.str.2) #11
  br label %5

5:                                                ; preds = %1, %4
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %6 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef %0, i32 noundef 22) #12, !range !730
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %52, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  br label %10

10:                                               ; preds = %8, %49
  %11 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 43) #12, !range !730
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %15 = load i32, ptr %9, align 8, !tbaa !720
  %16 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %15, i32 noundef 834, ptr noundef nonnull @.str.58) #11
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  br label %49, !llvm.loop !826

17:                                               ; preds = %10
  %18 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 42) #12, !range !730
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  br label %52

21:                                               ; preds = %17
  %22 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 73) #12, !range !730
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  tail call void @objc_set_visibility(i32 noundef 2) #11
  br label %49, !llvm.loop !826

25:                                               ; preds = %21
  %26 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 74) #12, !range !730
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  tail call void @objc_set_visibility(i32 noundef 0) #11
  br label %49, !llvm.loop !826

29:                                               ; preds = %25
  %30 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 72) #12, !range !730
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  tail call void @objc_set_visibility(i32 noundef 1) #11
  br label %49, !llvm.loop !826

33:                                               ; preds = %29
  %34 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 70) #12, !range !730
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %33
  %37 = tail call fastcc zeroext i8 @c_parser_pragma(ptr noundef %0, i32 noundef 0) #12, !range !730
  br label %49, !llvm.loop !826

38:                                               ; preds = %33
  %39 = tail call fastcc ptr @c_parser_struct_declaration(ptr noundef %0) #12
  %40 = tail call ptr @nreverse(ptr noundef %39) #11
  %41 = icmp eq ptr %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %38, %42
  %43 = phi ptr [ %46, %42 ], [ %40, %38 ]
  %44 = tail call ptr @copy_node_stat(ptr noundef nonnull %43) #11
  tail call void @objc_add_instance_variable(ptr noundef %44) #11
  %45 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !714
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %42, !llvm.loop !827

48:                                               ; preds = %42, %38
  tail call fastcc void @c_parser_skip_until_found(ptr noundef %0, i32 noundef 43, ptr noundef nonnull @.str.7) #12
  br label %49

49:                                               ; preds = %48, %36, %32, %28, %24, %13
  %50 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef %0, i32 noundef 22) #12, !range !730
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %10

52:                                               ; preds = %49, %5, %20
  ret void
}

; Function Attrs: optsize
declare void @objc_continue_interface() local_unnamed_addr #2

; Function Attrs: optsize
declare void @objc_continue_implementation() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @chainon(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_tree_list_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_objc_methodproto(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !828 {
  %2 = tail call fastcc i32 @c_parser_objc_method_type(ptr noundef %0) #12, !range !776
  tail call void @objc_set_method_type(i32 noundef %2) #11
  %3 = getelementptr inbounds %struct.c_parser, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 2
  %5 = or i8 %4, 16
  store i8 %5, ptr %3, align 2
  %6 = tail call fastcc ptr @c_parser_objc_method_decl(ptr noundef %0) #12
  %7 = load i8, ptr %3, align 2
  %8 = and i8 %7, -17
  store i8 %8, ptr %3, align 2
  tail call void @objc_add_method_declaration(ptr noundef %6) #11
  tail call fastcc void @c_parser_skip_until_found(ptr noundef %0, i32 noundef 43, ptr noundef nonnull @.str.7) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @c_parser_objc_method_type(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !829 {
  %2 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %3 = load i32, ptr %0, align 8
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %7 [
    i8 4, label %5
    i8 5, label %6
  ]

5:                                                ; preds = %1
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  br label %8

6:                                                ; preds = %1
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6415, ptr noundef nonnull @.str.2) #11
  br label %8

8:                                                ; preds = %7, %6, %5
  %9 = phi i32 [ 191, %7 ], [ 64, %6 ], [ 63, %5 ]
  ret i32 %9
}

; Function Attrs: optsize
declare void @objc_set_method_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_objc_method_decl(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !830 {
  %2 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 20) #12, !range !730
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %5 = tail call fastcc ptr @c_parser_objc_type_name(ptr noundef %0) #12
  tail call fastcc void @c_parser_skip_until_found(ptr noundef %0, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  %8 = tail call fastcc ptr @c_parser_objc_selector(ptr noundef %0) #12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 18) #12, !range !730
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %63, label %13

13:                                               ; preds = %10, %6
  %14 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef %0, i32 noundef 18, ptr noundef nonnull @.str.15) #12, !range !730
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %42, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %39
  %19 = phi ptr [ null, %16 ], [ %33, %39 ]
  %20 = phi ptr [ %8, %16 ], [ %34, %39 ]
  %21 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 20) #12, !range !730
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %24 = tail call fastcc ptr @c_parser_objc_type_name(ptr noundef %0) #12
  tail call fastcc void @c_parser_skip_until_found(ptr noundef %0, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  br label %25

25:                                               ; preds = %23, %18
  %26 = phi ptr [ %24, %23 ], [ null, %18 ]
  %27 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef %0, i32 noundef 53) #12, !range !730
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %61

29:                                               ; preds = %25
  %30 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %31 = load ptr, ptr %17, align 8, !tbaa !698
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %32 = tail call ptr @objc_build_keyword_decl(ptr noundef %20, ptr noundef %26, ptr noundef %31) #11
  %33 = tail call ptr @chainon(ptr noundef %19, ptr noundef %32) #11
  %34 = tail call fastcc ptr @c_parser_objc_selector(ptr noundef %0) #12
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef nonnull %0, i32 noundef 18) #12, !range !730
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %29, %36
  %40 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef nonnull %0, i32 noundef 18, ptr noundef nonnull @.str.15) #12, !range !730
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %18

42:                                               ; preds = %36, %39, %13
  %43 = phi ptr [ null, %13 ], [ %33, %39 ], [ %33, %36 ]
  %44 = tail call ptr @make_node_stat(i32 noundef 2) #11
  %45 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 19) #12, !range !730
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %63, label %47

47:                                               ; preds = %42, %55
  %48 = phi ptr [ %58, %55 ], [ %44, %42 ]
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %49 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 44) #12, !range !730
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  br label %63

52:                                               ; preds = %47
  %53 = tail call fastcc ptr @c_parser_parameter_declaration(ptr noundef %0, ptr noundef null) #12
  %54 = icmp eq ptr %53, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %52
  %56 = tail call ptr @grokparm(ptr noundef nonnull %53) #11
  %57 = tail call ptr @build_tree_list_stat(ptr noundef null, ptr noundef %56) #11
  %58 = tail call ptr @chainon(ptr noundef %48, ptr noundef %57) #11
  %59 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 19) #12, !range !730
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %63, label %47

61:                                               ; preds = %25
  tail call fastcc void @c_parser_error(ptr noundef %0, ptr noundef nonnull @.str.12) #12
  %62 = load ptr, ptr @global_trees, align 16, !tbaa !681
  br label %68

63:                                               ; preds = %55, %52, %42, %51, %10
  %64 = phi ptr [ null, %10 ], [ %48, %51 ], [ %44, %42 ], [ %58, %55 ], [ %48, %52 ]
  %65 = phi i8 [ 0, %10 ], [ 1, %51 ], [ 0, %42 ], [ 0, %52 ], [ 0, %55 ]
  %66 = phi ptr [ %8, %10 ], [ %43, %51 ], [ %43, %42 ], [ %43, %52 ], [ %43, %55 ]
  %67 = tail call ptr @objc_build_method_signature(ptr noundef %7, ptr noundef %66, ptr noundef %64, i8 noundef zeroext %65) #11
  br label %68

68:                                               ; preds = %61, %63
  %69 = phi ptr [ %67, %63 ], [ %62, %61 ]
  ret ptr %69
}

; Function Attrs: optsize
declare void @objc_add_method_declaration(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_objc_type_name(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !831 {
  %2 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 255
  %5 = icmp eq i32 %4, 74
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 1
  br label %8

8:                                                ; preds = %6, %15
  %9 = phi i32 [ %3, %6 ], [ %20, %15 ]
  %10 = phi ptr [ null, %6 ], [ %18, %15 ]
  %11 = lshr i32 %9, 16
  %12 = and i32 %11, 255
  %13 = add nsw i32 %12, -21
  %14 = icmp ult i32 %13, 6
  br i1 %14, label %15, label %23

15:                                               ; preds = %8
  %16 = load ptr, ptr %7, align 8, !tbaa !698
  %17 = tail call ptr @build_tree_list_stat(ptr noundef null, ptr noundef %16) #11
  %18 = tail call ptr @chainon(ptr noundef %10, ptr noundef %17) #11
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %19 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %20 = load i32, ptr %0, align 8
  %21 = and i32 %20, 255
  %22 = icmp eq i32 %21, 74
  br i1 %22, label %8, label %23

23:                                               ; preds = %15, %8, %1
  %24 = phi ptr [ null, %1 ], [ %10, %8 ], [ %18, %15 ]
  %25 = tail call fastcc zeroext i8 @c_parser_next_token_starts_typename(ptr noundef nonnull %0) #12, !range !730
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = tail call fastcc ptr @c_parser_type_name(ptr noundef nonnull %0) #12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = tail call ptr @groktypename(ptr noundef nonnull %28, ptr noundef null, ptr noundef null) #11
  br label %32

32:                                               ; preds = %23, %30, %27
  %33 = phi ptr [ %31, %30 ], [ null, %27 ], [ null, %23 ]
  %34 = tail call ptr @build_tree_list_stat(ptr noundef %24, ptr noundef %33) #11
  ret ptr %34
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_objc_selector(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !832 {
  %2 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !698
  %5 = load i32, ptr %0, align 8
  %6 = trunc i32 %5 to i8
  switch i8 %6, label %11 [
    i8 53, label %10
    i8 74, label %7
  ]

7:                                                ; preds = %1
  %8 = lshr i32 %5, 16
  %9 = trunc i32 %8 to i8
  switch i8 %9, label %11 [
    i8 33, label %10
    i8 34, label %10
    i8 35, label %10
    i8 36, label %10
    i8 37, label %10
    i8 38, label %10
    i8 39, label %10
    i8 40, label %10
    i8 41, label %10
    i8 42, label %10
    i8 43, label %10
    i8 44, label %10
    i8 45, label %10
    i8 46, label %10
    i8 47, label %10
    i8 49, label %10
    i8 48, label %10
    i8 50, label %10
    i8 51, label %10
    i8 1, label %10
    i8 2, label %10
    i8 3, label %10
    i8 7, label %10
    i8 9, label %10
    i8 10, label %10
    i8 12, label %10
    i8 13, label %10
    i8 21, label %10
    i8 22, label %10
    i8 23, label %10
    i8 24, label %10
    i8 25, label %10
    i8 26, label %10
    i8 28, label %10
    i8 29, label %10
    i8 30, label %10
    i8 31, label %10
    i8 32, label %10
    i8 69, label %10
  ]

10:                                               ; preds = %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %1
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  br label %11

11:                                               ; preds = %10, %7, %1
  %12 = phi ptr [ null, %1 ], [ null, %7 ], [ %4, %10 ]
  ret ptr %12
}

; Function Attrs: optsize
declare ptr @objc_build_keyword_decl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_parameter_declaration(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !833 !PGOFuncName !834 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  store i8 0, ptr %3, align 1, !tbaa !714
  %4 = tail call fastcc zeroext i8 @c_parser_next_token_starts_declspecs(ptr noundef %0) #12, !range !730
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7, !prof !835

6:                                                ; preds = %2
  tail call fastcc void @c_parser_error(ptr noundef %0, ptr noundef nonnull @.str.67) #12
  tail call fastcc void @c_parser_skip_to_end_of_parameter(ptr noundef %0) #12
  br label %32

7:                                                ; preds = %2
  %8 = tail call ptr @build_null_declspecs() #11
  %9 = icmp eq ptr %1, null
  br i1 %9, label %12, label %10, !prof !836

10:                                               ; preds = %7
  %11 = tail call ptr @declspecs_add_attrs(ptr noundef %8, ptr noundef nonnull %1) #11
  br label %12

12:                                               ; preds = %10, %7
  tail call fastcc void @c_parser_declspecs(ptr noundef %0, ptr noundef %8, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  %13 = tail call ptr @finish_declspecs(ptr noundef %8) #11
  tail call void @pending_xref_error() #11
  %14 = getelementptr inbounds %struct.c_declspecs, ptr %8, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !784
  store ptr null, ptr %14, align 8, !tbaa !784
  %16 = getelementptr inbounds %struct.c_declspecs, ptr %8, i64 0, i32 6
  %17 = load i8, ptr %16, align 8
  %18 = lshr i8 %17, 2
  %19 = and i8 %18, 1
  %20 = call fastcc ptr @c_parser_declarator(ptr noundef %0, i8 noundef zeroext %19, i32 noundef 2, ptr noundef nonnull %3) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23, !prof !835

22:                                               ; preds = %12
  tail call fastcc void @c_parser_skip_until_found(ptr noundef %0, i32 noundef 19, ptr noundef null) #12
  br label %32

23:                                               ; preds = %12
  %24 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 52) #12, !range !730
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26, !prof !837

26:                                               ; preds = %23
  %27 = tail call fastcc ptr @c_parser_attributes(ptr noundef %0) #12
  br label %28

28:                                               ; preds = %26, %23
  %29 = phi ptr [ %27, %26 ], [ null, %23 ]
  %30 = tail call ptr @chainon(ptr noundef %29, ptr noundef %15) #11
  %31 = tail call ptr @build_c_parm(ptr noundef nonnull %8, ptr noundef %30, ptr noundef nonnull %20) #11
  br label %32

32:                                               ; preds = %28, %22, %6
  %33 = phi ptr [ null, %22 ], [ %31, %28 ], [ null, %6 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  ret ptr %33
}

; Function Attrs: optsize
declare ptr @grokparm(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @objc_build_method_signature(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @c_parser_next_token_starts_typename(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !838 {
  %2 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %3 = tail call fastcc zeroext i8 @c_token_starts_typename(ptr noundef %0) #12, !range !730
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @c_parser_type_name(ptr noundef %0) unnamed_addr #0 !prof !839 !PGOFuncName !840 {
  %2 = alloca i8, align 1
  %3 = tail call ptr @build_null_declspecs() #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #13
  store i8 0, ptr %2, align 1, !tbaa !714
  tail call fastcc void @c_parser_declspecs(ptr noundef %0, ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  %4 = getelementptr inbounds %struct.c_declspecs, ptr %3, i64 0, i32 6
  %5 = load i8, ptr %4, align 8
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9, !prof !841

8:                                                ; preds = %1
  tail call fastcc void @c_parser_error(ptr noundef %0, ptr noundef nonnull @.str.16) #12
  br label %56

9:                                                ; preds = %1
  tail call void @pending_xref_error() #11
  %10 = tail call ptr @finish_declspecs(ptr noundef nonnull %3) #11
  %11 = load i8, ptr %4, align 8
  %12 = lshr i8 %11, 2
  %13 = and i8 %12, 1
  %14 = call fastcc ptr @c_parser_declarator(ptr noundef %0, i8 noundef zeroext %13, i32 noundef 1, ptr noundef nonnull %2) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %56, label %16, !prof !841

16:                                               ; preds = %9
  store i64 16, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 5), align 8, !tbaa !732
  %17 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 4), align 8, !tbaa !735
  %18 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 3), align 8, !tbaa !736
  %19 = ptrtoint ptr %17 to i64
  %20 = ptrtoint ptr %18 to i64
  %21 = sub i64 %19, %20
  %22 = icmp slt i64 %21, 16
  br i1 %22, label %23, label %26, !prof !842

23:                                               ; preds = %16
  tail call void @_obstack_newchunk(ptr noundef nonnull @parser_obstack, i32 noundef 16) #11
  %24 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 5), align 8, !tbaa !732
  %25 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 3), align 8, !tbaa !736
  br label %26

26:                                               ; preds = %16, %23
  %27 = phi ptr [ %18, %16 ], [ %25, %23 ]
  %28 = phi i64 [ 16, %16 ], [ %24, %23 ]
  %29 = getelementptr inbounds i8, ptr %27, i64 %28
  %30 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 2), align 8, !tbaa !737
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %32, label %35, !prof !841

32:                                               ; preds = %26
  %33 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 10), align 8
  %34 = or i8 %33, 2
  store i8 %34, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 10), align 8
  br label %35

35:                                               ; preds = %26, %32
  %36 = ptrtoint ptr %30 to i64
  store i64 %36, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 5), align 8, !tbaa !732
  %37 = ptrtoint ptr %29 to i64
  %38 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 6), align 8, !tbaa !738
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = xor i32 %38, -1
  %42 = sext i32 %41 to i64
  %43 = and i64 %40, %42
  %44 = inttoptr i64 %43 to ptr
  store ptr %44, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 3), align 8, !tbaa !736
  %45 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 1), align 8, !tbaa !739
  %46 = ptrtoint ptr %45 to i64
  %47 = sub i64 %43, %46
  %48 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 4), align 8, !tbaa !735
  %49 = ptrtoint ptr %48 to i64
  %50 = sub i64 %49, %46
  %51 = icmp sgt i64 %47, %50
  br i1 %51, label %52, label %53, !prof !841

52:                                               ; preds = %35
  store ptr %48, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 3), align 8, !tbaa !736
  br label %53

53:                                               ; preds = %35, %52
  %54 = phi ptr [ %44, %35 ], [ %48, %52 ]
  store ptr %54, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 2), align 8, !tbaa !737
  store ptr %3, ptr %30, align 8, !tbaa !843
  %55 = getelementptr inbounds %struct.c_type_name, ptr %30, i64 0, i32 1
  store ptr %14, ptr %55, align 8, !tbaa !845
  br label %56

56:                                               ; preds = %9, %53, %8
  %57 = phi ptr [ %30, %53 ], [ null, %8 ], [ null, %9 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #13
  ret ptr %57
}

; Function Attrs: optsize
declare ptr @groktypename(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @c_token_starts_typename(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !846 !PGOFuncName !847 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %25 [
    i8 53, label %4
    i8 74, label %16
    i8 3, label %21
  ], !prof !848

4:                                                ; preds = %1
  %5 = lshr i32 %2, 8
  %6 = trunc i32 %5 to i8
  switch i8 %6, label %14 [
    i8 0, label %25
    i8 3, label %7
    i8 1, label %8
    i8 2, label %9
  ], !prof !849

7:                                                ; preds = %4
  br label %25

8:                                                ; preds = %4
  br label %25

9:                                                ; preds = %4
  %10 = load i32, ptr @c_language, align 4, !tbaa !676
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 373, ptr noundef nonnull @.str.2) #11
  br label %25

14:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 376, ptr noundef nonnull @.str.2) #11
  %15 = load i32, ptr %0, align 8
  br label %16

16:                                               ; preds = %1, %14
  %17 = phi i32 [ %2, %1 ], [ %15, %14 ]
  %18 = lshr i32 %17, 16
  %19 = trunc i32 %18 to i8
  switch i8 %19, label %20 [
    i8 1, label %25
    i8 2, label %25
    i8 7, label %25
    i8 10, label %25
    i8 13, label %25
    i8 28, label %25
    i8 29, label %25
    i8 30, label %25
    i8 31, label %25
    i8 32, label %25
    i8 60, label %25
    i8 61, label %25
    i8 62, label %25
    i8 69, label %25
    i8 33, label %25
    i8 34, label %25
    i8 35, label %25
    i8 50, label %25
    i8 3, label %25
    i8 9, label %25
    i8 12, label %25
    i8 52, label %25
    i8 63, label %25
    i8 64, label %25
    i8 15, label %25
  ], !prof !850

20:                                               ; preds = %16
  br label %25

21:                                               ; preds = %1
  %22 = load i32, ptr @c_language, align 4, !tbaa !676
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  br label %25

25:                                               ; preds = %1, %21, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %13, %9, %4, %20, %8, %7
  %26 = phi i8 [ 0, %20 ], [ 1, %8 ], [ 1, %7 ], [ %6, %4 ], [ 1, %9 ], [ 1, %13 ], [ 1, %16 ], [ 1, %16 ], [ 1, %16 ], [ 1, %16 ], [ 1, %16 ], [ 1, %16 ], [ 1, %16 ], [ 1, %16 ], [ 1, %16 ], [ 1, %16 ], [ 1, %16 ], [ 1, %16 ], [ 1, %16 ], [ 1, %16 ], [ 1, %16 ], [ 1, %16 ], [ 1, %16 ], [ 1, %16 ], [ 1, %16 ], [ 1, %16 ], [ 1, %16 ], [ 1, %16 ], [ 1, %16 ], [ 1, %16 ], [ 1, %16 ], [ %24, %21 ], [ 0, %1 ]
  ret i8 %26
}

; Function Attrs: optsize
declare ptr @build_null_declspecs() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_declspecs(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #0 !prof !851 !PGOFuncName !852 {
  %6 = alloca %struct.c_typespec, align 8
  %7 = alloca %struct.c_typespec, align 8
  %8 = alloca %struct.c_typespec, align 8
  %9 = alloca %struct.c_typespec, align 8
  %10 = getelementptr inbounds %struct.c_declspecs, ptr %1, i64 0, i32 6
  %11 = load i8, ptr %10, align 8
  %12 = lshr i8 %11, 2
  %13 = and i8 %12, 1
  %14 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %15 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 1
  br label %16

16:                                               ; preds = %166, %5
  %17 = phi i8 [ %13, %5 ], [ %167, %166 ]
  %18 = phi i8 [ %4, %5 ], [ %168, %166 ]
  %19 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 53) #12, !range !730
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %31, !prof !853

21:                                               ; preds = %16
  %22 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 74) #12, !range !730
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %31, !prof !854

24:                                               ; preds = %21
  %25 = load i32, ptr @c_language, align 4, !tbaa !676
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %169, label %28, !prof !855

28:                                               ; preds = %24
  %29 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 3) #12, !range !730
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %169, label %31, !prof !856

31:                                               ; preds = %21, %16, %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #13
  %32 = call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %33 = load i32, ptr %14, align 8, !tbaa !720
  %34 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 53) #12, !range !730
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %88, label %36, !prof !857

36:                                               ; preds = %31
  %37 = call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %38 = load ptr, ptr %15, align 8, !tbaa !698
  %39 = call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %40 = load i32, ptr %0, align 8
  %41 = lshr i32 %40, 8
  %42 = and i32 %41, 255
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %51, !prof !858

44:                                               ; preds = %36
  %45 = call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %46 = load i32, ptr %0, align 8
  %47 = lshr i32 %46, 16
  %48 = trunc i32 %47 to i8
  %49 = add i8 %48, 120
  %50 = call ptr @declspecs_add_addrspace(ptr noundef %1, i8 noundef zeroext %49) #11
  call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  br label %166

51:                                               ; preds = %36
  %52 = icmp ne i8 %3, 0
  %53 = icmp eq i8 %17, 0
  %54 = select i1 %52, i1 %53, i1 false
  %55 = add nsw i32 %42, -1
  %56 = icmp ult i32 %55, 2
  %57 = and i1 %54, %56
  br i1 %57, label %58, label %165, !prof !859

58:                                               ; preds = %51
  call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %59 = icmp eq i32 %42, 1
  br i1 %59, label %60, label %69, !prof !860

60:                                               ; preds = %58
  %61 = load i32, ptr @c_language, align 4, !tbaa !676
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64, !prof !860

64:                                               ; preds = %60
  %65 = call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef nonnull %0, i32 noundef 3) #12, !range !730
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64, %60
  store i32 4, ptr %6, align 8, !tbaa !861
  %68 = call ptr @lookup_name(ptr noundef %38) #11
  br label %82

69:                                               ; preds = %64, %58
  %70 = load i32, ptr @c_language, align 4, !tbaa !676
  %71 = and i32 %70, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1520, ptr noundef nonnull @.str.2) #11
  br label %74

74:                                               ; preds = %69, %73
  store i32 5, ptr %6, align 8, !tbaa !861
  %75 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 3) #12, !range !730
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %74
  %78 = call fastcc ptr @c_parser_objc_protocol_refs(ptr noundef nonnull %0) #12
  br label %79

79:                                               ; preds = %77, %74
  %80 = phi ptr [ %78, %77 ], [ null, %74 ]
  %81 = call ptr @objc_get_protocol_qualified_type(ptr noundef %38, ptr noundef %80) #11
  br label %82

82:                                               ; preds = %79, %67
  %83 = phi ptr [ %81, %79 ], [ %68, %67 ]
  %84 = getelementptr inbounds %struct.c_typespec, ptr %6, i64 0, i32 1
  %85 = getelementptr inbounds %struct.c_typespec, ptr %6, i64 0, i32 2
  %86 = getelementptr inbounds %struct.c_typespec, ptr %6, i64 0, i32 3
  store ptr %83, ptr %84, align 8, !tbaa !863
  store ptr null, ptr %85, align 8, !tbaa !864
  store i8 1, ptr %86, align 8, !tbaa !865
  %87 = call ptr @declspecs_add_type(i32 noundef %33, ptr noundef %1, ptr noundef nonnull byval(%struct.c_typespec) align 8 %6) #11
  br label %166, !llvm.loop !866

88:                                               ; preds = %31
  %89 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 3) #12, !range !730
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %107, label %91, !prof !867

91:                                               ; preds = %88
  %92 = load i32, ptr @c_language, align 4, !tbaa !676
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1536, ptr noundef nonnull @.str.2) #11
  br label %96

96:                                               ; preds = %91, %95
  %97 = icmp eq i8 %3, 0
  %98 = icmp ne i8 %17, 0
  %99 = select i1 %97, i1 true, i1 %98
  br i1 %99, label %165, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.c_typespec, ptr %6, i64 0, i32 1
  %102 = getelementptr inbounds %struct.c_typespec, ptr %6, i64 0, i32 2
  %103 = getelementptr inbounds %struct.c_typespec, ptr %6, i64 0, i32 3
  %104 = call fastcc ptr @c_parser_objc_protocol_refs(ptr noundef nonnull %0) #12
  store i32 5, ptr %6, align 8, !tbaa !861
  %105 = call ptr @objc_get_protocol_qualified_type(ptr noundef null, ptr noundef %104) #11
  store ptr %105, ptr %101, align 8, !tbaa !863
  store ptr null, ptr %102, align 8, !tbaa !864
  store i8 1, ptr %103, align 8, !tbaa !865
  %106 = call ptr @declspecs_add_type(i32 noundef %33, ptr noundef %1, ptr noundef nonnull byval(%struct.c_typespec) align 8 %6) #11
  br label %166, !llvm.loop !866

107:                                              ; preds = %88
  %108 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 74) #12, !range !730
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %111, !prof !868

110:                                              ; preds = %107
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1547, ptr noundef nonnull @.str.2) #11
  br label %111

111:                                              ; preds = %107, %110
  %112 = call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %113 = load i32, ptr %0, align 8
  %114 = lshr i32 %113, 16
  %115 = trunc i32 %114 to i8
  switch i8 %115, label %165 [
    i8 0, label %116
    i8 4, label %116
    i8 5, label %116
    i8 6, label %116
    i8 8, label %116
    i8 11, label %116
    i8 14, label %116
    i8 1, label %122
    i8 2, label %122
    i8 7, label %122
    i8 10, label %122
    i8 13, label %122
    i8 28, label %122
    i8 29, label %122
    i8 30, label %122
    i8 31, label %122
    i8 32, label %122
    i8 60, label %122
    i8 61, label %122
    i8 62, label %122
    i8 69, label %122
    i8 63, label %122
    i8 64, label %122
    i8 15, label %122
    i8 33, label %139
    i8 34, label %143
    i8 35, label %143
    i8 50, label %150
    i8 3, label %156
    i8 9, label %156
    i8 12, label %156
    i8 52, label %160
  ], !prof !869

116:                                              ; preds = %111, %111, %111, %111, %111, %111, %111
  %117 = icmp eq i8 %2, 0
  br i1 %117, label %165, label %118, !prof !870

118:                                              ; preds = %116
  %119 = call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %120 = load ptr, ptr %15, align 8, !tbaa !698
  %121 = call ptr @declspecs_add_scspec(ptr noundef %1, ptr noundef %120) #11
  call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  br label %166

122:                                              ; preds = %111, %111, %111, %111, %111, %111, %111, %111, %111, %111, %111, %111, %111, %111, %111, %111, %111
  %123 = icmp eq i8 %3, 0
  br i1 %123, label %165, label %124, !prof !871

124:                                              ; preds = %122
  %125 = load i32, ptr @c_language, align 4, !tbaa !676
  %126 = and i32 %125, 1
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %132, label %128, !prof !872

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.c_parser, ptr %0, i64 0, i32 2
  %130 = load i8, ptr %129, align 2
  %131 = or i8 %130, 32
  store i8 %131, ptr %129, align 2
  br label %132

132:                                              ; preds = %128, %124
  %133 = getelementptr inbounds %struct.c_typespec, ptr %6, i64 0, i32 1
  %134 = getelementptr inbounds %struct.c_typespec, ptr %6, i64 0, i32 2
  %135 = getelementptr inbounds %struct.c_typespec, ptr %6, i64 0, i32 3
  store i32 0, ptr %6, align 8, !tbaa !861
  %136 = call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %137 = load ptr, ptr %15, align 8, !tbaa !698
  store ptr %137, ptr %133, align 8, !tbaa !863
  store ptr null, ptr %134, align 8, !tbaa !864
  store i8 1, ptr %135, align 8, !tbaa !865
  %138 = call ptr @declspecs_add_type(i32 noundef %33, ptr noundef %1, ptr noundef nonnull byval(%struct.c_typespec) align 8 %6) #11
  call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  br label %166

139:                                              ; preds = %111
  %140 = icmp eq i8 %3, 0
  br i1 %140, label %165, label %141, !prof !873

141:                                              ; preds = %139
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #13
  call fastcc void @c_parser_enum_specifier(ptr dead_on_unwind nonnull writable sret(%struct.c_typespec) align 8 %7, ptr noundef nonnull %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !874
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #13
  %142 = call ptr @declspecs_add_type(i32 noundef %33, ptr noundef %1, ptr noundef nonnull byval(%struct.c_typespec) align 8 %6) #11
  br label %166

143:                                              ; preds = %111, %111
  %144 = icmp eq i8 %3, 0
  br i1 %144, label %165, label %145, !prof !875

145:                                              ; preds = %143
  %146 = getelementptr inbounds %struct.c_typespec, ptr %6, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #13
  call fastcc void @c_parser_struct_or_union_specifier(ptr dead_on_unwind nonnull writable sret(%struct.c_typespec) align 8 %8, ptr noundef nonnull %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false), !tbaa.struct !874
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #13
  %147 = load ptr, ptr %146, align 8, !tbaa !863
  %148 = call i32 @invoke_plugin_callbacks(i32 noundef 1, ptr noundef %147) #11
  %149 = call ptr @declspecs_add_type(i32 noundef %33, ptr noundef %1, ptr noundef nonnull byval(%struct.c_typespec) align 8 %6) #11
  br label %166

150:                                              ; preds = %111
  %151 = icmp eq i8 %3, 0
  %152 = icmp ne i8 %17, 0
  %153 = select i1 %151, i1 true, i1 %152
  br i1 %153, label %165, label %154

154:                                              ; preds = %150
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #13
  call fastcc void @c_parser_typeof_specifier(ptr dead_on_unwind nonnull writable sret(%struct.c_typespec) align 8 %9, ptr noundef nonnull %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false), !tbaa.struct !874
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #13
  %155 = call ptr @declspecs_add_type(i32 noundef %33, ptr noundef %1, ptr noundef nonnull byval(%struct.c_typespec) align 8 %6) #11
  br label %166

156:                                              ; preds = %111, %111, %111
  %157 = call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %158 = load ptr, ptr %15, align 8, !tbaa !698
  %159 = call ptr @declspecs_add_qual(ptr noundef %1, ptr noundef %158) #11
  call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  br label %166

160:                                              ; preds = %111
  %161 = icmp eq i8 %18, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %160
  %163 = call fastcc ptr @c_parser_attributes(ptr noundef nonnull %0) #12
  %164 = call ptr @declspecs_add_attrs(ptr noundef %1, ptr noundef %163) #11
  br label %166

165:                                              ; preds = %51, %96, %116, %122, %139, %143, %150, %160, %111
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #13
  br label %169

166:                                              ; preds = %118, %132, %141, %145, %154, %156, %162, %100, %44, %82
  %167 = phi i8 [ %17, %44 ], [ 1, %82 ], [ 0, %100 ], [ %17, %162 ], [ %17, %156 ], [ 1, %154 ], [ 1, %145 ], [ 1, %141 ], [ 1, %132 ], [ %17, %118 ]
  %168 = phi i8 [ 1, %44 ], [ 1, %82 ], [ %18, %100 ], [ 1, %162 ], [ 1, %156 ], [ 1, %154 ], [ 1, %145 ], [ 1, %141 ], [ 1, %132 ], [ 1, %118 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #13
  br label %16

169:                                              ; preds = %28, %24, %165
  ret void
}

; Function Attrs: optsize
declare void @pending_xref_error() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @finish_declspecs(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_declarator(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !prof !876 !PGOFuncName !877 {
  %5 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 6) #12, !range !730
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %13, label %7, !prof !878

7:                                                ; preds = %4
  %8 = tail call ptr @build_null_declspecs() #11
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  tail call fastcc void @c_parser_declspecs(ptr noundef %0, ptr noundef %8, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1) #12
  %9 = tail call fastcc ptr @c_parser_declarator(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, ptr noundef %3) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !879

11:                                               ; preds = %7
  %12 = tail call ptr @make_pointer_declarator(ptr noundef %8, ptr noundef nonnull %9) #11
  br label %15

13:                                               ; preds = %4
  %14 = tail call fastcc ptr @c_parser_direct_declarator(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, ptr noundef %3) #12
  br label %15

15:                                               ; preds = %11, %7, %13
  %16 = phi ptr [ %14, %13 ], [ %12, %11 ], [ null, %7 ]
  ret ptr %16
}

; Function Attrs: optsize
declare ptr @declspecs_add_addrspace(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @objc_get_protocol_qualified_type(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @declspecs_add_type(i32 noundef, ptr noundef, ptr noundef byval(%struct.c_typespec) align 8) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @declspecs_add_scspec(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_enum_specifier(ptr dead_on_unwind noalias nocapture writable sret(%struct.c_typespec) align 8 %0, ptr noundef %1) unnamed_addr #0 !prof !880 !PGOFuncName !881 {
  %3 = alloca %struct.c_enum_contents, align 8
  %4 = alloca %struct.c_expr, align 8
  %5 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %1, i32 noundef 33) #12, !range !730
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8, !prof !873

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1675, ptr noundef nonnull @.str.2) #11
  br label %8

8:                                                ; preds = %2, %7
  %9 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  tail call fastcc void @c_parser_consume_token(ptr noundef %1) #12
  %10 = tail call fastcc ptr @c_parser_attributes(ptr noundef %1) #12
  %11 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %12 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !720
  %14 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  tail call fastcc void @c_parser_set_source_position_from_token(ptr noundef %1) #12
  %15 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %1, i32 noundef 53) #12, !range !730
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17, !prof !882

17:                                               ; preds = %8
  %18 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %19 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !698
  %21 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %22 = load i32, ptr %12, align 8, !tbaa !720
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %23 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 41) #12, !range !730
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %81, label %28, !prof !883

25:                                               ; preds = %8
  %26 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 41) #12, !range !730
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %83, label %28, !prof !883

28:                                               ; preds = %25, %17
  %29 = phi ptr [ null, %25 ], [ %20, %17 ]
  %30 = phi i32 [ %13, %25 ], [ %22, %17 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %31 = call ptr @start_enum(i32 noundef %30, ptr noundef nonnull %3, ptr noundef %29) #11
  call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %32 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 1
  br label %33

33:                                               ; preds = %59, %28
  %34 = phi ptr [ null, %28 ], [ %52, %59 ]
  %35 = call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef nonnull %1, i32 noundef 53) #12, !range !730
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %39, label %37, !prof !884

37:                                               ; preds = %33
  call fastcc void @c_parser_error(ptr noundef nonnull %1, ptr noundef nonnull @.str.12) #12
  call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %1, i32 noundef 42, ptr noundef null) #12
  %38 = load ptr, ptr @global_trees, align 16, !tbaa !681
  br label %72

39:                                               ; preds = %33
  %40 = call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %41 = load ptr, ptr %32, align 8, !tbaa !698
  call fastcc void @c_parser_set_source_position_from_token(ptr noundef nonnull %1) #12
  %42 = load i32, ptr %12, align 8, !tbaa !720
  call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %43 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 0) #12, !range !730
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %49, label %45, !prof !885

45:                                               ; preds = %39
  call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %46 = call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %47 = load i32, ptr %12, align 8, !tbaa !720
  call fastcc void @c_parser_expr_no_commas(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %4, ptr noundef nonnull %1, ptr noundef null) #12
  %48 = load ptr, ptr %4, align 8, !tbaa !798
  br label %49

49:                                               ; preds = %39, %45
  %50 = phi ptr [ %48, %45 ], [ null, %39 ]
  %51 = phi i32 [ %47, %45 ], [ %42, %39 ]
  %52 = call ptr @build_enumerator(i32 noundef %51, ptr noundef nonnull %3, ptr noundef %41, ptr noundef %50) #11
  %53 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 1
  store ptr %34, ptr %53, align 8, !tbaa !714
  %54 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 19) #12, !range !730
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %59, !prof !886

56:                                               ; preds = %49
  %57 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 42) #12, !range !730
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %70, label %69, !prof !887

59:                                               ; preds = %49
  %60 = call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %61 = load i32, ptr %12, align 8, !tbaa !720
  call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %62 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 42) #12, !range !730
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %33, label %64, !prof !887

64:                                               ; preds = %59
  %65 = load i32, ptr @flag_isoc99, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %69, !prof !888

67:                                               ; preds = %64
  %68 = call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %61, i32 noundef 834, ptr noundef nonnull @.str.17) #11
  br label %69

69:                                               ; preds = %56, %67, %64
  call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  br label %72

70:                                               ; preds = %56
  call fastcc void @c_parser_error(ptr noundef nonnull %1, ptr noundef nonnull @.str.18) #12
  call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %1, i32 noundef 42, ptr noundef null) #12
  %71 = load ptr, ptr @global_trees, align 16, !tbaa !681
  br label %72

72:                                               ; preds = %37, %69, %70
  %73 = phi ptr [ %71, %70 ], [ %52, %69 ], [ %38, %37 ]
  %74 = call fastcc ptr @c_parser_attributes(ptr noundef nonnull %1) #12
  %75 = call ptr @nreverse(ptr noundef %73) #11
  %76 = call ptr @chainon(ptr noundef %10, ptr noundef %74) #11
  %77 = call ptr @finish_enum(ptr noundef %31, ptr noundef %75, ptr noundef %76) #11
  %78 = getelementptr inbounds %struct.c_typespec, ptr %0, i64 0, i32 1
  store ptr %77, ptr %78, align 8, !tbaa !863
  store i32 3, ptr %0, align 8, !tbaa !861
  %79 = getelementptr inbounds %struct.c_typespec, ptr %0, i64 0, i32 2
  store ptr null, ptr %79, align 8, !tbaa !864
  %80 = getelementptr inbounds %struct.c_typespec, ptr %0, i64 0, i32 3
  store i8 1, ptr %80, align 8, !tbaa !865
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  br label %99

81:                                               ; preds = %17
  %82 = icmp eq ptr %20, null
  br i1 %82, label %83, label %88, !prof !889

83:                                               ; preds = %25, %81
  tail call fastcc void @c_parser_error(ptr noundef nonnull %1, ptr noundef nonnull @.str.19) #12
  %84 = load ptr, ptr @global_trees, align 16, !tbaa !681
  %85 = getelementptr inbounds %struct.c_typespec, ptr %0, i64 0, i32 1
  store ptr %84, ptr %85, align 8, !tbaa !863
  store i32 1, ptr %0, align 8, !tbaa !861
  %86 = getelementptr inbounds %struct.c_typespec, ptr %0, i64 0, i32 2
  store ptr null, ptr %86, align 8, !tbaa !864
  %87 = getelementptr inbounds %struct.c_typespec, ptr %0, i64 0, i32 3
  store i8 1, ptr %87, align 8, !tbaa !865
  br label %99

88:                                               ; preds = %81
  tail call void @parser_xref_tag(ptr dead_on_unwind nonnull writable sret(%struct.c_typespec) align 8 %0, i32 noundef %22, i32 noundef 6, ptr noundef nonnull %20) #11
  %89 = load i32, ptr @pedantic, align 4, !tbaa !676
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %99, label %91, !prof !890

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.c_typespec, ptr %0, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !863
  %94 = getelementptr inbounds %struct.tree_type, ptr %93, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !714
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %22, i32 noundef 834, ptr noundef nonnull @.str.20) #11
  br label %99

99:                                               ; preds = %88, %91, %97, %83, %72
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_struct_or_union_specifier(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.c_typespec) align 8 %0, ptr noundef %1) unnamed_addr #0 !prof !891 !PGOFuncName !892 {
  %3 = alloca ptr, align 8
  %4 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %5 = load i32, ptr %1, align 8
  %6 = lshr i32 %5, 16
  %7 = trunc i32 %6 to i8
  switch i8 %7, label %9 [
    i8 34, label %10
    i8 35, label %8
  ], !prof !893

8:                                                ; preds = %2
  br label %10

9:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1841, ptr noundef nonnull @.str.2) #11
  br label %10

10:                                               ; preds = %2, %9, %8
  %11 = phi i32 [ undef, %9 ], [ 17, %8 ], [ 16, %2 ]
  %12 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %13 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !720
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %15 = tail call fastcc ptr @c_parser_attributes(ptr noundef nonnull %1) #12
  %16 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  tail call fastcc void @c_parser_set_source_position_from_token(ptr noundef nonnull %1) #12
  %17 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 53) #12, !range !730
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %27, label %19, !prof !894

19:                                               ; preds = %10
  %20 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %21 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !698
  %23 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %24 = load i32, ptr %13, align 8, !tbaa !720
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %25 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 41) #12, !range !730
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %105, label %30, !prof !895

27:                                               ; preds = %10
  %28 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 41) #12, !range !730
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %107, label %30, !prof !895

30:                                               ; preds = %27, %19
  %31 = phi ptr [ null, %27 ], [ %22, %19 ]
  %32 = phi i32 [ %14, %27 ], [ %24, %19 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %33 = call ptr @start_struct(i32 noundef %32, i32 noundef %11, ptr noundef %31, ptr noundef nonnull %3) #11
  call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %34 = call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef nonnull %1, i32 noundef 123) #12, !range !730
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %59, label %36, !prof !896

36:                                               ; preds = %30
  %37 = load i32, ptr @c_language, align 4, !tbaa !676
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1881, ptr noundef nonnull @.str.2) #11
  br label %41

41:                                               ; preds = %36, %40
  call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %42 = call fastcc zeroext i8 @c_parser_require(ptr noundef nonnull %1, i32 noundef 20, ptr noundef nonnull @.str.8) #12, !range !730
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %41
  %45 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 53) #12, !range !730
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %44
  %48 = call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %49 = load i32, ptr %1, align 8
  %50 = and i32 %49, 65280
  %51 = icmp eq i32 %50, 512
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %54 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !698
  call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %1, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  %56 = call ptr @objc_get_class_ivars(ptr noundef %55) #11
  %57 = call ptr @nreverse(ptr noundef %56) #11
  br label %59

58:                                               ; preds = %47, %44
  call fastcc void @c_parser_error(ptr noundef nonnull %1, ptr noundef nonnull @.str.57) #12
  call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %1, i32 noundef 21, ptr noundef null) #12
  br label %59

59:                                               ; preds = %52, %58, %41, %30
  %60 = phi ptr [ null, %41 ], [ null, %58 ], [ %57, %52 ], [ null, %30 ]
  br label %61

61:                                               ; preds = %93, %59
  %62 = phi ptr [ %60, %59 ], [ %82, %93 ]
  br label %63

63:                                               ; preds = %79, %61
  %64 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 43) #12, !range !730
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %70, label %66, !prof !897

66:                                               ; preds = %63
  %67 = call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %68 = load i32, ptr %13, align 8, !tbaa !720
  %69 = call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %68, i32 noundef 834, ptr noundef nonnull @.str.58) #11
  call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  br label %79

70:                                               ; preds = %63
  %71 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 42) #12, !range !730
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %74, label %73, !prof !898

73:                                               ; preds = %70
  call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  br label %95

74:                                               ; preds = %70
  %75 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 70) #12, !range !730
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %80, label %77, !prof !899

77:                                               ; preds = %74
  %78 = call fastcc zeroext i8 @c_parser_pragma(ptr noundef nonnull %1, i32 noundef 0) #12, !range !730
  br label %79

79:                                               ; preds = %77, %66
  br label %63

80:                                               ; preds = %74
  %81 = call fastcc ptr @c_parser_struct_declaration(ptr noundef nonnull %1) #12
  %82 = call ptr @chainon(ptr noundef %81, ptr noundef %62) #11
  %83 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 43) #12, !range !730
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %86, label %85, !prof !900

85:                                               ; preds = %80
  call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  br label %93

86:                                               ; preds = %80
  %87 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 42) #12, !range !730
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %86
  %90 = call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %91 = load i32, ptr %13, align 8, !tbaa !720
  %92 = call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %91, i32 noundef 0, ptr noundef nonnull @.str.59) #11
  br label %93

93:                                               ; preds = %89, %85
  br label %61

94:                                               ; preds = %86
  call fastcc void @c_parser_error(ptr noundef nonnull %1, ptr noundef nonnull @.str.7) #12
  call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %1, i32 noundef 42, ptr noundef null) #12
  br label %95

95:                                               ; preds = %94, %73
  %96 = phi ptr [ %82, %94 ], [ %62, %73 ]
  %97 = call fastcc ptr @c_parser_attributes(ptr noundef nonnull %1) #12
  %98 = call ptr @nreverse(ptr noundef %96) #11
  %99 = call ptr @chainon(ptr noundef %15, ptr noundef %97) #11
  %100 = load ptr, ptr %3, align 8, !tbaa !681
  %101 = call ptr @finish_struct(i32 noundef %32, ptr noundef %33, ptr noundef %98, ptr noundef %99, ptr noundef %100) #11
  %102 = getelementptr inbounds %struct.c_typespec, ptr %0, i64 0, i32 1
  store ptr %101, ptr %102, align 8, !tbaa !863
  store i32 3, ptr %0, align 8, !tbaa !861
  %103 = getelementptr inbounds %struct.c_typespec, ptr %0, i64 0, i32 2
  store ptr null, ptr %103, align 8, !tbaa !864
  %104 = getelementptr inbounds %struct.c_typespec, ptr %0, i64 0, i32 3
  store i8 1, ptr %104, align 8, !tbaa !865
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %113

105:                                              ; preds = %19
  %106 = icmp eq ptr %22, null
  br i1 %106, label %107, label %112, !prof !889

107:                                              ; preds = %27, %105
  tail call fastcc void @c_parser_error(ptr noundef nonnull %1, ptr noundef nonnull @.str.19) #12
  %108 = load ptr, ptr @global_trees, align 16, !tbaa !681
  %109 = getelementptr inbounds %struct.c_typespec, ptr %0, i64 0, i32 1
  store ptr %108, ptr %109, align 8, !tbaa !863
  store i32 1, ptr %0, align 8, !tbaa !861
  %110 = getelementptr inbounds %struct.c_typespec, ptr %0, i64 0, i32 2
  store ptr null, ptr %110, align 8, !tbaa !864
  %111 = getelementptr inbounds %struct.c_typespec, ptr %0, i64 0, i32 3
  store i8 1, ptr %111, align 8, !tbaa !865
  br label %113

112:                                              ; preds = %105
  tail call void @parser_xref_tag(ptr dead_on_unwind nonnull writable sret(%struct.c_typespec) align 8 %0, i32 noundef %24, i32 noundef %11, ptr noundef nonnull %22) #11
  br label %113

113:                                              ; preds = %112, %107, %95
  ret void
}

; Function Attrs: optsize
declare i32 @invoke_plugin_callbacks(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_typeof_specifier(ptr dead_on_unwind noalias writable sret(%struct.c_typespec) align 8 %0, ptr noundef %1) unnamed_addr #0 !prof !697 !PGOFuncName !901 {
  %3 = alloca %struct.c_expr, align 8
  store i32 6, ptr %0, align 8, !tbaa !861
  %4 = load ptr, ptr @global_trees, align 16, !tbaa !681
  %5 = getelementptr inbounds %struct.c_typespec, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !863
  %6 = getelementptr inbounds %struct.c_typespec, ptr %0, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !864
  %7 = getelementptr inbounds %struct.c_typespec, ptr %0, i64 0, i32 3
  store i8 1, ptr %7, align 8, !tbaa !865
  %8 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %1, i32 noundef 50) #12, !range !730
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2143, ptr noundef nonnull @.str.2) #11
  br label %11

11:                                               ; preds = %2, %10
  tail call fastcc void @c_parser_consume_token(ptr noundef %1) #12
  %12 = load i32, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %14 = load i32, ptr @in_typeof, align 4, !tbaa !676
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr @in_typeof, align 4, !tbaa !676
  %16 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef %1, i32 noundef 20, ptr noundef nonnull @.str.8) #12, !range !730
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = load i32, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %20 = add nsw i32 %19, -1
  store i32 %20, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %21 = load i32, ptr @in_typeof, align 4, !tbaa !676
  %22 = add nsw i32 %21, -1
  store i32 %22, ptr @in_typeof, align 4, !tbaa !676
  br label %65

23:                                               ; preds = %11
  %24 = tail call fastcc zeroext i8 @c_parser_next_token_starts_typename(ptr noundef %1) #12, !range !730
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %23
  %27 = tail call fastcc ptr @c_parser_type_name(ptr noundef %1) #12
  %28 = load i32, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %29 = add nsw i32 %28, -1
  store i32 %29, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %30 = load i32, ptr @in_typeof, align 4, !tbaa !676
  %31 = add nsw i32 %30, -1
  store i32 %31, ptr @in_typeof, align 4, !tbaa !676
  %32 = icmp eq ptr %27, null
  br i1 %32, label %64, label %33

33:                                               ; preds = %26
  %34 = tail call ptr @groktypename(ptr noundef nonnull %27, ptr noundef nonnull %6, ptr noundef nonnull %7) #11
  store ptr %34, ptr %5, align 8, !tbaa !863
  %35 = tail call zeroext i8 @variably_modified_type_p(ptr noundef %34, ptr noundef null) #11
  tail call void @pop_maybe_used(i8 noundef zeroext %35) #11
  br label %64

36:                                               ; preds = %23
  %37 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %38 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 2
  %39 = load i32, ptr %38, align 8, !tbaa !720
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call fastcc void @c_parser_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %3, ptr noundef %1) #12
  %40 = load i32, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %41 = add nsw i32 %40, -1
  store i32 %41, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %42 = load i32, ptr @in_typeof, align 4, !tbaa !676
  %43 = add nsw i32 %42, -1
  store i32 %43, ptr @in_typeof, align 4, !tbaa !676
  %44 = load ptr, ptr %3, align 8, !tbaa !798
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 41
  br i1 %47, label %48, label %56

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.tree_exp, ptr %44, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !714
  %51 = getelementptr inbounds %struct.tree_decl_common, ptr %50, i64 0, i32 2
  %52 = load i64, ptr %51, align 8
  %53 = and i64 %52, 524288
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  tail call void (i32, ptr, ...) @error_at(i32 noundef %39, ptr noundef nonnull @.str.63) #11
  br label %56

56:                                               ; preds = %55, %48, %36
  %57 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !714
  store ptr %58, ptr %5, align 8, !tbaa !863
  %59 = tail call zeroext i8 @variably_modified_type_p(ptr noundef %58, ptr noundef null) #11
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = tail call ptr @c_fully_fold(ptr noundef nonnull %44, i8 noundef zeroext 0, ptr noundef nonnull %7) #11
  store ptr %62, ptr %6, align 8, !tbaa !864
  br label %63

63:                                               ; preds = %61, %56
  tail call void @pop_maybe_used(i8 noundef zeroext %59) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %64

64:                                               ; preds = %26, %33, %63
  tail call fastcc void @c_parser_skip_until_found(ptr noundef %1, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  br label %65

65:                                               ; preds = %64, %18
  ret void
}

; Function Attrs: optsize
declare ptr @declspecs_add_qual(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_attributes(ptr noundef %0) unnamed_addr #0 !prof !902 !PGOFuncName !903 {
  %2 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 52) #12, !range !730
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %126, label %4, !prof !904

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.c_parser, ptr %0, i64 0, i32 2
  br label %6

6:                                                ; preds = %4, %118
  %7 = phi ptr [ null, %4 ], [ %63, %118 ]
  %8 = load i8, ptr %5, align 2
  %9 = or i8 %8, 8
  store i8 %9, ptr %5, align 2
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %10 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef %0, i32 noundef 20, ptr noundef nonnull @.str.8) #12, !range !730
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %15, !prof !905

12:                                               ; preds = %6
  %13 = load i8, ptr %5, align 2
  %14 = and i8 %13, -9
  store i8 %14, ptr %5, align 2
  br label %126

15:                                               ; preds = %6
  %16 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef nonnull %0, i32 noundef 20, ptr noundef nonnull @.str.8) #12, !range !730
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %20, label %18, !prof !905

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 1
  br label %62

20:                                               ; preds = %15
  %21 = load i8, ptr %5, align 2
  %22 = and i8 %21, -9
  store i8 %22, ptr %5, align 2
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %0, i32 noundef 21, ptr noundef null) #12
  br label %126

23:                                               ; preds = %62, %35
  %24 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 19) #12, !range !730
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %32, !prof !906

26:                                               ; preds = %23
  %27 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 53) #12, !range !730
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %32, !prof !907

29:                                               ; preds = %26
  %30 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 74) #12, !range !730
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %109, label %32, !prof !908

32:                                               ; preds = %26, %23, %29
  %33 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 19) #12, !range !730
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %36, label %35, !prof !909

35:                                               ; preds = %32
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  br label %23, !llvm.loop !910

36:                                               ; preds = %32
  %37 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 74) #12, !range !730
  %38 = icmp eq i8 %37, 0
  %39 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  br i1 %38, label %52, label %40, !prof !911

40:                                               ; preds = %36
  %41 = load i32, ptr %0, align 8
  %42 = lshr i32 %41, 16
  %43 = trunc i32 %42 to i8
  switch i8 %43, label %109 [
    i8 0, label %44
    i8 1, label %44
    i8 2, label %44
    i8 3, label %44
    i8 4, label %44
    i8 5, label %44
    i8 6, label %44
    i8 7, label %44
    i8 8, label %44
    i8 9, label %44
    i8 10, label %44
    i8 11, label %44
    i8 12, label %44
    i8 13, label %44
    i8 14, label %44
    i8 28, label %44
    i8 29, label %44
    i8 30, label %44
    i8 31, label %44
    i8 32, label %44
    i8 60, label %44
    i8 61, label %44
    i8 62, label %44
    i8 69, label %44
    i8 63, label %44
    i8 64, label %44
    i8 15, label %44
  ], !prof !912

44:                                               ; preds = %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40
  %45 = load ptr, ptr @ridpointers, align 8, !tbaa !681
  %46 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %47 = load i32, ptr %0, align 8
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 255
  %50 = zext nneg i32 %49 to i64
  %51 = getelementptr inbounds ptr, ptr %45, i64 %50
  br label %52

52:                                               ; preds = %36, %44
  %53 = phi ptr [ %51, %44 ], [ %19, %36 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !681
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %55 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef nonnull %0, i32 noundef 20) #12, !range !730
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %64, label %57, !prof !913

57:                                               ; preds = %52
  %58 = tail call ptr @build_tree_list_stat(ptr noundef %54, ptr noundef null) #11
  %59 = tail call ptr @chainon(ptr noundef %63, ptr noundef %58) #11
  br label %60

60:                                               ; preds = %57, %104
  %61 = phi ptr [ %105, %104 ], [ %59, %57 ]
  br label %62, !llvm.loop !910

62:                                               ; preds = %60, %18
  %63 = phi ptr [ %7, %18 ], [ %61, %60 ]
  br label %23

64:                                               ; preds = %52
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %65 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 53) #12, !range !730
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %93, label %67, !prof !914

67:                                               ; preds = %64
  %68 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %69 = load i32, ptr %0, align 8
  %70 = and i32 %69, 65280
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %93, !prof !915

72:                                               ; preds = %67
  %73 = tail call fastcc ptr @c_parser_peek_2nd_token(ptr noundef nonnull %0) #12
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 255
  %76 = icmp eq i32 %75, 19
  br i1 %76, label %82, label %77, !prof !916

77:                                               ; preds = %72
  %78 = tail call fastcc ptr @c_parser_peek_2nd_token(ptr noundef nonnull %0) #12
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 255
  %81 = icmp eq i32 %80, 21
  br i1 %81, label %82, label %93, !prof !917

82:                                               ; preds = %77, %72
  %83 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %84 = load ptr, ptr %19, align 8, !tbaa !698
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %85 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 21) #12, !range !730
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %89, label %87, !prof !916

87:                                               ; preds = %82
  %88 = tail call ptr @build_tree_list_stat(ptr noundef null, ptr noundef %84) #11
  br label %99

89:                                               ; preds = %82
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %90 = tail call fastcc ptr @c_parser_expr_list(ptr noundef nonnull %0, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef null) #12
  %91 = tail call ptr @build_tree_list_vec_stat(ptr noundef %90) #11
  %92 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %84, ptr noundef %91) #11
  tail call void @release_tree_vector(ptr noundef %90) #11
  br label %99

93:                                               ; preds = %77, %67, %64
  %94 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 21) #12, !range !730
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %99, !prof !918

96:                                               ; preds = %93
  %97 = tail call fastcc ptr @c_parser_expr_list(ptr noundef nonnull %0, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef null) #12
  %98 = tail call ptr @build_tree_list_vec_stat(ptr noundef %97) #11
  tail call void @release_tree_vector(ptr noundef %97) #11
  br label %99

99:                                               ; preds = %93, %87, %89, %96
  %100 = phi ptr [ %98, %96 ], [ %88, %87 ], [ %92, %89 ], [ null, %93 ]
  %101 = tail call ptr @build_tree_list_stat(ptr noundef %54, ptr noundef %100) #11
  %102 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 21) #12, !range !730
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %106, label %104, !prof !919

104:                                              ; preds = %99
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %105 = tail call ptr @chainon(ptr noundef %63, ptr noundef %101) #11
  br label %60

106:                                              ; preds = %99
  %107 = load i8, ptr %5, align 2
  %108 = and i8 %107, -9
  store i8 %108, ptr %5, align 2
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %0, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  br label %126

109:                                              ; preds = %40, %29
  %110 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 21) #12, !range !730
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %115, label %112, !prof !905

112:                                              ; preds = %109
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %113 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 21) #12, !range !730
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %123, label %118, !prof !905

115:                                              ; preds = %109
  %116 = load i8, ptr %5, align 2
  %117 = and i8 %116, -9
  store i8 %117, ptr %5, align 2
  tail call fastcc void @c_parser_skip_until_found(ptr noundef %0, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  br label %126

118:                                              ; preds = %112
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %119 = load i8, ptr %5, align 2
  %120 = and i8 %119, -9
  store i8 %120, ptr %5, align 2
  %121 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 52) #12, !range !730
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %126, label %6, !prof !920, !llvm.loop !921

123:                                              ; preds = %112
  %124 = load i8, ptr %5, align 2
  %125 = and i8 %124, -9
  store i8 %125, ptr %5, align 2
  tail call fastcc void @c_parser_skip_until_found(ptr noundef %0, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  br label %126

126:                                              ; preds = %118, %1, %106, %123, %115, %20, %12
  %127 = phi ptr [ %63, %123 ], [ %63, %115 ], [ %7, %20 ], [ %7, %12 ], [ %63, %106 ], [ null, %1 ], [ %63, %118 ]
  ret ptr %127
}

; Function Attrs: optsize
declare ptr @declspecs_add_attrs(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @start_enum(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_expr_no_commas(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.c_expr) align 8 %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !922 !PGOFuncName !923 {
  %4 = alloca %struct.c_expr, align 8
  %5 = alloca %struct.c_expr, align 8
  %6 = alloca %struct.c_expr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %7 = icmp eq ptr %2, null
  br i1 %7, label %13, label %8, !prof !924

8:                                                ; preds = %3
  %9 = load i32, ptr @c_language, align 4, !tbaa !676
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4564, ptr noundef nonnull @.str.2) #11
  br label %13

13:                                               ; preds = %3, %8, %12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call fastcc void @c_parser_conditional_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %5, ptr noundef %1, ptr noundef %2) #12
  %14 = load ptr, ptr %5, align 8, !tbaa.struct !797
  %15 = getelementptr inbounds i8, ptr %5, i64 8
  %16 = load i64, ptr %15, align 8, !tbaa.struct !925
  %17 = getelementptr inbounds i8, ptr %5, i64 16
  %18 = load ptr, ptr %17, align 8, !tbaa.struct !926
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  %19 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %20 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !720
  %22 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %23 = load i32, ptr %1, align 8
  %24 = trunc i32 %23 to i8
  switch i8 %24, label %35 [
    i8 0, label %37
    i8 29, label %25
    i8 30, label %26
    i8 31, label %27
    i8 27, label %28
    i8 28, label %29
    i8 36, label %30
    i8 35, label %31
    i8 32, label %32
    i8 34, label %33
    i8 33, label %34
  ], !prof !927

25:                                               ; preds = %13
  br label %37

26:                                               ; preds = %13
  br label %37

27:                                               ; preds = %13
  br label %37

28:                                               ; preds = %13
  br label %37

29:                                               ; preds = %13
  br label %37

30:                                               ; preds = %13
  br label %37

31:                                               ; preds = %13
  br label %37

32:                                               ; preds = %13
  br label %37

33:                                               ; preds = %13
  br label %37

34:                                               ; preds = %13
  br label %37

35:                                               ; preds = %13
  store ptr %14, ptr %0, align 8, !tbaa.struct !797
  %36 = getelementptr inbounds i8, ptr %0, i64 8
  store i64 %16, ptr %36, align 8, !tbaa.struct !925
  br label %52

37:                                               ; preds = %13, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25
  %38 = phi i1 [ false, %34 ], [ false, %33 ], [ false, %32 ], [ false, %31 ], [ false, %30 ], [ false, %29 ], [ false, %28 ], [ false, %27 ], [ false, %26 ], [ false, %25 ], [ true, %13 ]
  %39 = phi i32 [ 87, %34 ], [ 88, %33 ], [ 89, %32 ], [ 84, %31 ], [ 83, %30 ], [ 64, %29 ], [ 63, %28 ], [ 71, %27 ], [ 67, %26 ], [ 65, %25 ], [ 116, %13 ]
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %40 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %41 = load i32, ptr %20, align 8, !tbaa !720
  call fastcc void @c_parser_expr_no_commas(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %4, ptr noundef nonnull %1, ptr noundef null) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %6, i32 noundef %41, ptr noundef nonnull byval(%struct.c_expr) align 8 %4) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  %42 = load ptr, ptr %4, align 8, !tbaa !798
  %43 = getelementptr inbounds %struct.c_expr, ptr %4, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !800
  %45 = call ptr @build_modify_expr(i32 noundef %21, ptr noundef %14, ptr noundef %18, i32 noundef %39, i32 noundef %41, ptr noundef %42, ptr noundef %44) #11
  br i1 %38, label %49, label %46, !prof !928

46:                                               ; preds = %37
  %47 = load i64, ptr %45, align 8
  %48 = or i64 %47, 8388608
  store i64 %48, ptr %45, align 8
  br label %49

49:                                               ; preds = %37, %46
  %50 = phi i32 [ 0, %46 ], [ 53, %37 ]
  store ptr %45, ptr %0, align 8, !tbaa.struct !797
  %51 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 %50, ptr %51, align 8, !tbaa.struct !925
  br label %52

52:                                               ; preds = %49, %35
  %53 = phi ptr [ null, %49 ], [ %18, %35 ]
  %54 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr %53, ptr %54, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: optsize
declare ptr @build_enumerator(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @finish_enum(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @nreverse(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @parser_xref_tag(ptr dead_on_unwind writable sret(%struct.c_typespec) align 8, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_conditional_expression(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.c_expr) align 8 %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !929 !PGOFuncName !930 {
  %4 = alloca %struct.c_expr, align 8
  %5 = alloca %struct.c_expr, align 8
  %6 = alloca %struct.c_expr, align 8
  %7 = alloca %struct.c_expr, align 8
  %8 = alloca %struct.c_expr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  %9 = icmp eq ptr %2, null
  br i1 %9, label %15, label %10, !prof !931

10:                                               ; preds = %3
  %11 = load i32, ptr @c_language, align 4, !tbaa !676
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4643, ptr noundef nonnull @.str.2) #11
  br label %15

15:                                               ; preds = %3, %10, %14
  call fastcc void @c_parser_binary_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %4, ptr noundef %1, ptr noundef %2) #12
  %16 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef %1, i32 noundef 17) #12, !range !730
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18, !prof !932

18:                                               ; preds = %15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !797
  br label %144

19:                                               ; preds = %15
  %20 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %21 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !720
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %6, i32 noundef %22, ptr noundef nonnull byval(%struct.c_expr) align 8 %4) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  call fastcc void @c_parser_consume_token(ptr noundef %1) #12
  %23 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %1, i32 noundef 18) #12, !range !730
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %54, label %25, !prof !933

25:                                               ; preds = %19
  %26 = call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %27 = load i32, ptr %21, align 8, !tbaa !720
  %28 = call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %27, i32 noundef 834, ptr noundef nonnull @.str.21) #11
  %29 = load ptr, ptr %4, align 8, !tbaa !798
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 190
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !714
  %36 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !714
  store ptr %37, ptr %4, align 8, !tbaa !798
  br label %38

38:                                               ; preds = %33, %25
  %39 = phi ptr [ %37, %33 ], [ %29, %25 ]
  %40 = phi ptr [ %35, %33 ], [ null, %25 ]
  %41 = call ptr @default_conversion(ptr noundef %39) #11
  %42 = call ptr @c_save_expr(ptr noundef %41) #11
  %43 = icmp eq ptr %40, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = call ptr @build1_stat(i32 noundef 190, ptr noundef nonnull %40, ptr noundef %42) #11
  br label %46

46:                                               ; preds = %44, %38
  %47 = phi ptr [ %45, %44 ], [ %42, %38 ]
  %48 = call ptr @c_objc_common_truthvalue_conversion(i32 noundef %22, ptr noundef %47) #11
  store ptr %48, ptr %4, align 8, !tbaa !798
  %49 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 46), align 16, !tbaa !681
  %50 = icmp eq ptr %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %53 = add nsw i32 %52, %51
  br label %76

54:                                               ; preds = %19
  %55 = load ptr, ptr %4, align 8, !tbaa !798
  %56 = call ptr @default_conversion(ptr noundef %55) #11
  %57 = call ptr @c_objc_common_truthvalue_conversion(i32 noundef %22, ptr noundef %56) #11
  store ptr %57, ptr %4, align 8, !tbaa !798
  %58 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 47), align 8, !tbaa !681
  %59 = icmp eq ptr %57, %58
  %60 = zext i1 %59 to i32
  %61 = load i32, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %62 = add nsw i32 %61, %60
  store i32 %62, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call fastcc void @c_parser_expression_conv(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %7, ptr noundef nonnull %1) #12
  %63 = load ptr, ptr %7, align 8, !tbaa.struct !797
  %64 = getelementptr inbounds i8, ptr %7, i64 16
  %65 = load ptr, ptr %64, align 8, !tbaa.struct !926
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  %66 = load ptr, ptr %4, align 8, !tbaa !798
  %67 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 46), align 16, !tbaa !681
  %68 = icmp eq ptr %66, %67
  %69 = zext i1 %68 to i32
  %70 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 47), align 8, !tbaa !681
  %71 = icmp eq ptr %66, %70
  %72 = sext i1 %71 to i32
  %73 = load i32, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %74 = add i32 %73, %69
  %75 = add i32 %74, %72
  br label %76

76:                                               ; preds = %54, %46
  %77 = phi i32 [ %75, %54 ], [ %53, %46 ]
  %78 = phi ptr [ %63, %54 ], [ %47, %46 ]
  %79 = phi ptr [ %65, %54 ], [ null, %46 ]
  store i32 %77, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %80 = call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %81 = load i32, ptr %21, align 8, !tbaa !720
  %82 = call fastcc zeroext i8 @c_parser_require(ptr noundef nonnull %1, i32 noundef 18, ptr noundef nonnull @.str.15) #12, !range !730
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %94, !prof !934

84:                                               ; preds = %76
  %85 = load ptr, ptr %4, align 8, !tbaa !798
  %86 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 46), align 16, !tbaa !681
  %87 = icmp eq ptr %85, %86
  %88 = sext i1 %87 to i32
  %89 = load i32, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %90 = add i32 %89, %88
  store i32 %90, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %91 = load ptr, ptr @global_trees, align 16, !tbaa !681
  store ptr %91, ptr %0, align 8, !tbaa.struct !797
  %92 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 0, ptr %92, align 8, !tbaa.struct !925
  %93 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr null, ptr %93, align 8, !tbaa.struct !926
  br label %144

94:                                               ; preds = %76
  %95 = call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %96 = load i32, ptr %21, align 8, !tbaa !720
  call fastcc void @c_parser_conditional_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %5, ptr noundef nonnull %1, ptr noundef null) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #13
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %8, i32 noundef %96, ptr noundef nonnull byval(%struct.c_expr) align 8 %5) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  %97 = load ptr, ptr %4, align 8, !tbaa !798
  %98 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 46), align 16, !tbaa !681
  %99 = icmp eq ptr %97, %98
  %100 = sext i1 %99 to i32
  %101 = load i32, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %102 = add i32 %101, %100
  store i32 %102, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %103 = getelementptr inbounds %struct.c_expr, ptr %4, i64 0, i32 1
  %104 = load i32, ptr %103, align 8, !tbaa !935
  %105 = icmp eq i32 %104, 189
  %106 = zext i1 %105 to i8
  %107 = load ptr, ptr %5, align 8, !tbaa !798
  %108 = getelementptr inbounds %struct.c_expr, ptr %5, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !800
  %110 = call ptr @build_conditional_expr(i32 noundef %81, ptr noundef %97, i8 noundef zeroext %106, ptr noundef %78, ptr noundef %79, ptr noundef %107, ptr noundef %109) #11
  %111 = load ptr, ptr @global_trees, align 16, !tbaa !681
  %112 = icmp eq ptr %78, %111
  %113 = load ptr, ptr %5, align 8
  %114 = icmp eq ptr %113, %111
  %115 = select i1 %112, i1 true, i1 %114
  br i1 %115, label %140, label %116, !prof !936

116:                                              ; preds = %94
  %117 = icmp eq ptr %79, null
  br i1 %117, label %118, label %121, !prof !937

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.tree_common, ptr %78, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !714
  br label %121

121:                                              ; preds = %116, %118
  %122 = phi ptr [ %120, %118 ], [ %79, %116 ]
  %123 = load ptr, ptr %108, align 8, !tbaa !800
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %128, !prof !938

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.tree_common, ptr %113, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !714
  br label %128

128:                                              ; preds = %121, %125
  %129 = phi ptr [ %127, %125 ], [ %123, %121 ]
  %130 = icmp eq ptr %122, %111
  %131 = icmp eq ptr %129, %111
  %132 = select i1 %130, i1 true, i1 %131
  br i1 %132, label %140, label %133, !prof !936

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.tree_type, ptr %122, i64 0, i32 16
  %135 = load ptr, ptr %134, align 8, !tbaa !714
  %136 = getelementptr inbounds %struct.tree_type, ptr %129, i64 0, i32 16
  %137 = load ptr, ptr %136, align 8, !tbaa !714
  %138 = icmp eq ptr %135, %137
  %139 = select i1 %138, ptr %122, ptr null, !prof !939
  br label %140

140:                                              ; preds = %128, %133, %94
  %141 = phi ptr [ null, %94 ], [ null, %128 ], [ %139, %133 ]
  store ptr %110, ptr %0, align 8, !tbaa.struct !797
  %142 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 0, ptr %142, align 8, !tbaa.struct !925
  %143 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr %141, ptr %143, align 8, !tbaa.struct !926
  br label %144

144:                                              ; preds = %140, %84, %18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: optsize
declare void @default_function_array_conversion(ptr dead_on_unwind writable sret(%struct.c_expr) align 8, i32 noundef, ptr noundef byval(%struct.c_expr) align 8) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_modify_expr(i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_binary_expression(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.c_expr) align 8 %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !929 !PGOFuncName !940 {
  %4 = alloca [11 x %struct.anon.0], align 16
  %5 = alloca %struct.c_expr, align 8
  %6 = alloca %struct.c_expr, align 8
  %7 = alloca %struct.c_expr, align 8
  %8 = alloca %struct.c_expr, align 8
  %9 = alloca %struct.c_expr, align 8
  %10 = alloca %struct.c_expr, align 8
  %11 = alloca %struct.c_expr, align 8
  %12 = alloca %struct.c_expr, align 8
  %13 = alloca %struct.c_expr, align 8
  %14 = alloca %struct.c_expr, align 8
  call void @llvm.lifetime.start.p0(i64 440, ptr nonnull %4) #13
  %15 = icmp eq ptr %2, null
  br i1 %15, label %21, label %16, !prof !931

16:                                               ; preds = %3
  %17 = load i32, ptr @c_language, align 4, !tbaa !676
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4857, ptr noundef nonnull @.str.2) #11
  br label %21

21:                                               ; preds = %3, %16, %20
  %22 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %23 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !720
  %25 = getelementptr inbounds %struct.anon.0, ptr %4, i64 0, i32 3
  store i32 %24, ptr %25, align 16, !tbaa !941
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call fastcc void @c_parser_cast_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %5, ptr noundef %1, ptr noundef %2) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  %26 = getelementptr inbounds %struct.anon.0, ptr %4, i64 0, i32 1
  store i32 0, ptr %26, align 8, !tbaa !943
  %27 = getelementptr inbounds %struct.c_parser, ptr %1, i64 0, i32 2
  %28 = load i8, ptr %27, align 2
  %29 = and i8 %28, 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %128, !prof !944

31:                                               ; preds = %21, %118
  %32 = phi i32 [ %119, %118 ], [ 0, %21 ]
  %33 = call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %34 = load i32, ptr %1, align 8
  %35 = trunc i32 %34 to i8
  %36 = add i8 %35, -2
  %37 = icmp ult i8 %36, 25
  br i1 %37, label %38, label %128

38:                                               ; preds = %31
  %39 = zext nneg i8 %36 to i32
  %40 = lshr i32 31485951, %39
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %128, label %43

43:                                               ; preds = %38
  %44 = zext nneg i8 %36 to i64
  %45 = getelementptr inbounds [25 x i32], ptr @switch.table.c_parser_binary_expression, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4
  %47 = zext nneg i8 %36 to i64
  %48 = getelementptr inbounds [25 x i32], ptr @switch.table.c_parser_binary_expression.131, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4
  %50 = call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %51 = load i32, ptr %23, align 8, !tbaa !720
  call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %52 = sext i32 %32 to i64
  %53 = getelementptr inbounds [11 x %struct.anon.0], ptr %4, i64 0, i64 %52
  %54 = getelementptr inbounds [11 x %struct.anon.0], ptr %4, i64 0, i64 %52, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !943
  %56 = icmp ugt i32 %46, %55
  br i1 %56, label %91, label %57, !prof !945

57:                                               ; preds = %43, %78
  %58 = phi i64 [ %62, %78 ], [ %52, %43 ]
  %59 = phi ptr [ %79, %78 ], [ %53, %43 ]
  %60 = getelementptr inbounds [11 x %struct.anon.0], ptr %4, i64 0, i64 %58, i32 2
  %61 = load i32, ptr %60, align 4, !tbaa !946
  %62 = add i64 %58, -1
  switch i32 %61, label %78 [
    i32 91, label %63
    i32 92, label %68
  ], !prof !947

63:                                               ; preds = %57
  %64 = getelementptr inbounds [11 x %struct.anon.0], ptr %4, i64 0, i64 %62
  %65 = load ptr, ptr %64, align 8, !tbaa !948
  %66 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 47), align 8, !tbaa !681
  %67 = icmp eq ptr %65, %66
  br label %73

68:                                               ; preds = %57
  %69 = getelementptr inbounds [11 x %struct.anon.0], ptr %4, i64 0, i64 %62
  %70 = load ptr, ptr %69, align 8, !tbaa !948
  %71 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 46), align 16, !tbaa !681
  %72 = icmp eq ptr %70, %71
  br label %73

73:                                               ; preds = %63, %68
  %74 = phi i1 [ %72, %68 ], [ %67, %63 ]
  %75 = sext i1 %74 to i32
  %76 = load i32, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %77 = add i32 %76, %75
  store i32 %77, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  br label %78

78:                                               ; preds = %73, %57
  %79 = getelementptr inbounds [11 x %struct.anon.0], ptr %4, i64 0, i64 %62
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  %80 = getelementptr inbounds [11 x %struct.anon.0], ptr %4, i64 0, i64 %62, i32 3
  %81 = load i32, ptr %80, align 8, !tbaa !941
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %6, i32 noundef %81, ptr noundef nonnull byval(%struct.c_expr) align 8 %79) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %79, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  %82 = getelementptr inbounds [11 x %struct.anon.0], ptr %4, i64 0, i64 %58, i32 3
  %83 = load i32, ptr %82, align 8, !tbaa !941
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %7, i32 noundef %83, ptr noundef nonnull byval(%struct.c_expr) align 8 %59) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %59, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #13
  %84 = load i32, ptr %82, align 8, !tbaa !941
  %85 = load i32, ptr %60, align 4, !tbaa !946
  call void @parser_build_binary_op(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %8, i32 noundef %84, i32 noundef %85, ptr noundef nonnull byval(%struct.c_expr) align 8 %79, ptr noundef nonnull byval(%struct.c_expr) align 8 %59) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %79, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  %86 = getelementptr inbounds [11 x %struct.anon.0], ptr %4, i64 0, i64 %62, i32 1
  %87 = load i32, ptr %86, align 8, !tbaa !943
  %88 = icmp ugt i32 %46, %87
  br i1 %88, label %89, label %57, !prof !949, !llvm.loop !950

89:                                               ; preds = %78
  %90 = trunc i64 %62 to i32
  br label %91

91:                                               ; preds = %89, %43
  %92 = phi i32 [ %32, %43 ], [ %90, %89 ]
  %93 = phi i64 [ %52, %43 ], [ %62, %89 ]
  %94 = phi ptr [ %53, %43 ], [ %79, %89 ]
  switch i32 %49, label %118 [
    i32 91, label %95
    i32 92, label %104
  ], !prof !951

95:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #13
  %96 = getelementptr inbounds [11 x %struct.anon.0], ptr %4, i64 0, i64 %93, i32 3
  %97 = load i32, ptr %96, align 8, !tbaa !941
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %9, i32 noundef %97, ptr noundef nonnull byval(%struct.c_expr) align 8 %94) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %94, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #13
  %98 = load i32, ptr %96, align 8, !tbaa !941
  %99 = load ptr, ptr %94, align 8, !tbaa !948
  %100 = call ptr @default_conversion(ptr noundef %99) #11
  %101 = call ptr @c_objc_common_truthvalue_conversion(i32 noundef %98, ptr noundef %100) #11
  store ptr %101, ptr %94, align 8, !tbaa !948
  %102 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 47), align 8, !tbaa !681
  %103 = icmp eq ptr %101, %102
  br label %113

104:                                              ; preds = %91
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #13
  %105 = getelementptr inbounds [11 x %struct.anon.0], ptr %4, i64 0, i64 %93, i32 3
  %106 = load i32, ptr %105, align 8, !tbaa !941
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %10, i32 noundef %106, ptr noundef nonnull byval(%struct.c_expr) align 8 %94) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %94, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #13
  %107 = load i32, ptr %105, align 8, !tbaa !941
  %108 = load ptr, ptr %94, align 8, !tbaa !948
  %109 = call ptr @default_conversion(ptr noundef %108) #11
  %110 = call ptr @c_objc_common_truthvalue_conversion(i32 noundef %107, ptr noundef %109) #11
  store ptr %110, ptr %94, align 8, !tbaa !948
  %111 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 46), align 16, !tbaa !681
  %112 = icmp eq ptr %110, %111
  br label %113

113:                                              ; preds = %104, %95
  %114 = phi i1 [ %103, %95 ], [ %112, %104 ]
  %115 = zext i1 %114 to i32
  %116 = load i32, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %117 = add nsw i32 %116, %115
  store i32 %117, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  br label %118

118:                                              ; preds = %113, %91
  %119 = add nsw i32 %92, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [11 x %struct.anon.0], ptr %4, i64 0, i64 %120
  %122 = getelementptr inbounds [11 x %struct.anon.0], ptr %4, i64 0, i64 %120, i32 3
  store i32 %51, ptr %122, align 8, !tbaa !941
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #13
  call fastcc void @c_parser_cast_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %11, ptr noundef nonnull %1, ptr noundef null) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %121, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #13
  %123 = getelementptr inbounds [11 x %struct.anon.0], ptr %4, i64 0, i64 %120, i32 1
  store i32 %46, ptr %123, align 8, !tbaa !943
  %124 = getelementptr inbounds [11 x %struct.anon.0], ptr %4, i64 0, i64 %120, i32 2
  store i32 %49, ptr %124, align 4, !tbaa !946
  store i32 %51, ptr %122, align 8, !tbaa !941
  %125 = load i8, ptr %27, align 2
  %126 = and i8 %125, 1
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %31, label %128, !prof !952

128:                                              ; preds = %31, %38, %118, %21
  %129 = phi i32 [ 0, %21 ], [ %32, %31 ], [ %32, %38 ], [ %119, %118 ]
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %163, !prof !953

131:                                              ; preds = %128
  %132 = zext nneg i32 %129 to i64
  br label %133

133:                                              ; preds = %131, %154
  %134 = phi i64 [ %132, %131 ], [ %138, %154 ]
  %135 = getelementptr inbounds [11 x %struct.anon.0], ptr %4, i64 0, i64 %134
  %136 = getelementptr inbounds [11 x %struct.anon.0], ptr %4, i64 0, i64 %134, i32 2
  %137 = load i32, ptr %136, align 4, !tbaa !946
  %138 = add nsw i64 %134, -1
  switch i32 %137, label %154 [
    i32 91, label %139
    i32 92, label %144
  ], !prof !954

139:                                              ; preds = %133
  %140 = getelementptr inbounds [11 x %struct.anon.0], ptr %4, i64 0, i64 %138
  %141 = load ptr, ptr %140, align 8, !tbaa !948
  %142 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 47), align 8, !tbaa !681
  %143 = icmp eq ptr %141, %142
  br label %149

144:                                              ; preds = %133
  %145 = getelementptr inbounds [11 x %struct.anon.0], ptr %4, i64 0, i64 %138
  %146 = load ptr, ptr %145, align 8, !tbaa !948
  %147 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 46), align 16, !tbaa !681
  %148 = icmp eq ptr %146, %147
  br label %149

149:                                              ; preds = %139, %144
  %150 = phi i1 [ %148, %144 ], [ %143, %139 ]
  %151 = sext i1 %150 to i32
  %152 = load i32, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %153 = add i32 %152, %151
  store i32 %153, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  br label %154

154:                                              ; preds = %149, %133
  %155 = getelementptr inbounds [11 x %struct.anon.0], ptr %4, i64 0, i64 %138
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #13
  %156 = getelementptr inbounds [11 x %struct.anon.0], ptr %4, i64 0, i64 %138, i32 3
  %157 = load i32, ptr %156, align 8, !tbaa !941
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %12, i32 noundef %157, ptr noundef nonnull byval(%struct.c_expr) align 8 %155) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %155, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #13
  %158 = getelementptr inbounds [11 x %struct.anon.0], ptr %4, i64 0, i64 %134, i32 3
  %159 = load i32, ptr %158, align 8, !tbaa !941
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %13, i32 noundef %159, ptr noundef nonnull byval(%struct.c_expr) align 8 %135) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %135, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #13
  %160 = load i32, ptr %158, align 8, !tbaa !941
  %161 = load i32, ptr %136, align 4, !tbaa !946
  call void @parser_build_binary_op(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %14, i32 noundef %160, i32 noundef %161, ptr noundef nonnull byval(%struct.c_expr) align 8 %155, ptr noundef nonnull byval(%struct.c_expr) align 8 %135) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %155, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #13
  %162 = icmp sgt i64 %134, 1
  br i1 %162, label %133, label %163, !prof !955, !llvm.loop !956

163:                                              ; preds = %154, %128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 16 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 440, ptr nonnull %4) #13
  ret void
}

; Function Attrs: optsize
declare ptr @c_save_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @default_conversion(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @c_objc_common_truthvalue_conversion(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_expression_conv(ptr dead_on_unwind noalias writable sret(%struct.c_expr) align 8 %0, ptr noundef %1) unnamed_addr #0 !prof !957 !PGOFuncName !958 {
  %3 = alloca %struct.c_expr, align 8
  %4 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %5 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !720
  tail call fastcc void @c_parser_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %0, ptr noundef %1) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %3, i32 noundef %6, ptr noundef byval(%struct.c_expr) align 8 %0) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  ret void
}

; Function Attrs: optsize
declare ptr @build_conditional_expr(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_cast_expression(ptr dead_on_unwind noalias writable sret(%struct.c_expr) align 8 %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !959 !PGOFuncName !960 {
  %4 = alloca %struct.c_expr, align 8
  %5 = alloca %struct.c_expr, align 8
  %6 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %7 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !720
  %9 = icmp eq ptr %2, null
  br i1 %9, label %16, label %10, !prof !961

10:                                               ; preds = %3
  %11 = load i32, ptr @c_language, align 4, !tbaa !676
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5001, ptr noundef nonnull @.str.2) #11
  br label %15

15:                                               ; preds = %14, %10
  tail call fastcc void @c_parser_postfix_expression_after_primary(ptr dead_on_unwind writable sret(%struct.c_expr) align 8 %0, ptr noundef nonnull %1, i32 noundef %8, ptr noundef nonnull byval(%struct.c_expr) align 8 %2) #12
  br label %45

16:                                               ; preds = %3
  %17 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 20) #12, !range !730
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %44, label %19, !prof !962

19:                                               ; preds = %16
  %20 = tail call fastcc ptr @c_parser_peek_2nd_token(ptr noundef nonnull %1) #12
  %21 = tail call fastcc zeroext i8 @c_token_starts_typename(ptr noundef nonnull %20) #12, !range !730
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %44, label %23, !prof !963

23:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %24 = tail call fastcc ptr @c_parser_type_name(ptr noundef nonnull %1) #12
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %1, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %30, !prof !964

26:                                               ; preds = %23
  %27 = load ptr, ptr @global_trees, align 16, !tbaa !681
  store ptr %27, ptr %0, align 8, !tbaa.struct !797
  %28 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 0, ptr %28, align 8, !tbaa.struct !925
  %29 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr null, ptr %29, align 8, !tbaa.struct !926
  br label %43

30:                                               ; preds = %23
  %31 = load ptr, ptr %24, align 8, !tbaa !843
  %32 = load ptr, ptr %31, align 8, !tbaa !965
  tail call void @used_types_insert(ptr noundef %32) #11
  %33 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 41) #12, !range !730
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %36, label %35, !prof !966

35:                                               ; preds = %30
  tail call fastcc void @c_parser_postfix_expression_after_paren_type(ptr dead_on_unwind writable sret(%struct.c_expr) align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull %24, i32 noundef %8) #12
  br label %43

36:                                               ; preds = %30
  %37 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %38 = load i32, ptr %7, align 8, !tbaa !720
  call fastcc void @c_parser_cast_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %4, ptr noundef nonnull %1, ptr noundef null) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %5, i32 noundef %38, ptr noundef nonnull byval(%struct.c_expr) align 8 %4) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  %39 = load ptr, ptr %4, align 8, !tbaa !798
  %40 = call ptr @c_cast_expr(i32 noundef %8, ptr noundef nonnull %24, ptr noundef %39) #11
  store ptr %40, ptr %0, align 8, !tbaa.struct !797
  %41 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 0, ptr %41, align 8, !tbaa.struct !925
  %42 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr null, ptr %42, align 8, !tbaa.struct !926
  br label %43

43:                                               ; preds = %36, %35, %26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  br label %45

44:                                               ; preds = %19, %16
  tail call fastcc void @c_parser_unary_expression(ptr dead_on_unwind writable sret(%struct.c_expr) align 8 %0, ptr noundef nonnull %1) #12
  br label %45

45:                                               ; preds = %44, %43, %15
  ret void
}

; Function Attrs: optsize
declare void @parser_build_binary_op(ptr dead_on_unwind writable sret(%struct.c_expr) align 8, i32 noundef, i32 noundef, ptr noundef byval(%struct.c_expr) align 8, ptr noundef byval(%struct.c_expr) align 8) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_postfix_expression_after_primary(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.c_expr) align 8 %0, ptr noundef %1, i32 noundef %2, ptr noundef byval(%struct.c_expr) align 8 %3) unnamed_addr #0 !prof !967 !PGOFuncName !968 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.c_expr, align 8
  %7 = alloca %struct.c_expr, align 8
  %8 = alloca %struct.c_expr, align 8
  %9 = alloca %struct.c_expr, align 8
  %10 = alloca %struct.c_expr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  %11 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 2
  %12 = getelementptr inbounds %struct.c_expr, ptr %3, i64 0, i32 1
  %13 = getelementptr inbounds %struct.c_expr, ptr %3, i64 0, i32 2
  br label %14

14:                                               ; preds = %24, %4
  %15 = call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %16 = load i32, ptr %11, align 8, !tbaa !720
  %17 = call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %18 = load i32, ptr %1, align 8
  %19 = trunc i32 %18 to i8
  switch i8 %19, label %107 [
    i8 39, label %20
    i8 20, label %25
    i8 48, label %52
    i8 47, label %75
    i8 45, label %99
    i8 46, label %102
  ], !prof !969

20:                                               ; preds = %14
  call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  call fastcc void @c_parser_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %6, ptr noundef nonnull %1) #12
  %21 = load ptr, ptr %6, align 8, !tbaa !798
  call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %1, i32 noundef 40, ptr noundef nonnull @.str.22) #12
  %22 = load ptr, ptr %3, align 8, !tbaa !798
  %23 = call ptr @build_array_ref(i32 noundef %16, ptr noundef %22, ptr noundef %21) #11
  store ptr %23, ptr %3, align 8, !tbaa !798
  store i32 0, ptr %12, align 8, !tbaa !935
  store ptr null, ptr %13, align 8, !tbaa !800
  br label %24

24:                                               ; preds = %20, %99, %102, %50, %48, %64, %88, %72, %71, %96, %95
  br label %14

25:                                               ; preds = %14
  call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %26 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 21) #12, !range !730
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %30, !prof !970

28:                                               ; preds = %25
  %29 = call fastcc ptr @c_parser_expr_list(ptr noundef nonnull %1, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %5) #12
  br label %30

30:                                               ; preds = %25, %28
  %31 = phi ptr [ %29, %28 ], [ null, %25 ]
  call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %1, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  %32 = load ptr, ptr %3, align 8
  %33 = load ptr, ptr %5, align 8, !tbaa !681
  %34 = call ptr @build_function_call_vec(i32 noundef %16, ptr noundef %32, ptr noundef %31, ptr noundef %33) #11
  store ptr %34, ptr %3, align 8, !tbaa !798
  store i32 0, ptr %12, align 8, !tbaa !935
  %35 = load i64, ptr %34, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 23
  br i1 %37, label %38, label %48, !prof !971

38:                                               ; preds = %30
  %39 = load i64, ptr %32, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 29
  br i1 %41, label %42, label %48, !prof !972

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.tree_function_decl, ptr %32, i64 0, i32 5
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 8191
  %46 = icmp eq i32 %45, 6572
  br i1 %46, label %47, label %48, !prof !973

47:                                               ; preds = %42
  store i32 189, ptr %12, align 8, !tbaa !935
  br label %48

48:                                               ; preds = %47, %42, %38, %30
  store ptr null, ptr %13, align 8, !tbaa !800
  %49 = icmp eq ptr %31, null
  br i1 %49, label %24, label %50, !prof !974

50:                                               ; preds = %48
  call void @release_tree_vector(ptr noundef nonnull %31) #11
  %51 = load ptr, ptr %5, align 8, !tbaa !681
  call void @release_tree_vector(ptr noundef %51) #11
  br label %24

52:                                               ; preds = %14
  call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %7, i32 noundef %2, ptr noundef nonnull byval(%struct.c_expr) align 8 %3) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  %53 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 53) #12, !range !730
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %105, label %55, !prof !975

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 1
  %57 = call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %58 = load ptr, ptr %56, align 8, !tbaa !698
  call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %59 = load ptr, ptr %3, align 8, !tbaa !798
  %60 = call ptr @build_component_ref(i32 noundef %16, ptr noundef %59, ptr noundef %58) #11
  store ptr %60, ptr %3, align 8, !tbaa !798
  store i32 0, ptr %12, align 8, !tbaa !935
  %61 = load i64, ptr %60, align 8
  %62 = and i64 %61, 65535
  %63 = icmp eq i64 %62, 41
  br i1 %63, label %65, label %64, !prof !976

64:                                               ; preds = %55
  store ptr null, ptr %13, align 8, !tbaa !800
  br label %24

65:                                               ; preds = %55
  %66 = getelementptr inbounds %struct.tree_exp, ptr %60, i64 1
  %67 = load ptr, ptr %66, align 8, !tbaa !714
  %68 = load i64, ptr %67, align 8
  %69 = and i64 %68, 65535
  %70 = icmp eq i64 %69, 31
  br i1 %70, label %72, label %71, !prof !976

71:                                               ; preds = %65
  store ptr null, ptr %13, align 8, !tbaa !800
  br label %24

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.tree_field_decl, ptr %67, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !714
  store ptr %74, ptr %13, align 8, !tbaa !800
  br label %24

75:                                               ; preds = %14
  call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #13
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %8, i32 noundef %2, ptr noundef nonnull byval(%struct.c_expr) align 8 %3) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  %76 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 53) #12, !range !730
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %105, label %78, !prof !977

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 1
  %80 = call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %81 = load ptr, ptr %79, align 8, !tbaa !698
  call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %82 = load ptr, ptr %3, align 8, !tbaa !798
  %83 = call ptr @build_indirect_ref(i32 noundef %16, ptr noundef %82, i32 noundef 3) #11
  %84 = call ptr @build_component_ref(i32 noundef %16, ptr noundef %83, ptr noundef %81) #11
  store ptr %84, ptr %3, align 8, !tbaa !798
  store i32 0, ptr %12, align 8, !tbaa !935
  %85 = load i64, ptr %84, align 8
  %86 = and i64 %85, 65535
  %87 = icmp eq i64 %86, 41
  br i1 %87, label %89, label %88, !prof !978

88:                                               ; preds = %78
  store ptr null, ptr %13, align 8, !tbaa !800
  br label %24

89:                                               ; preds = %78
  %90 = getelementptr inbounds %struct.tree_exp, ptr %84, i64 1
  %91 = load ptr, ptr %90, align 8, !tbaa !714
  %92 = load i64, ptr %91, align 8
  %93 = and i64 %92, 65535
  %94 = icmp eq i64 %93, 31
  br i1 %94, label %96, label %95, !prof !978

95:                                               ; preds = %89
  store ptr null, ptr %13, align 8, !tbaa !800
  br label %24

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.tree_field_decl, ptr %91, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !714
  store ptr %98, ptr %13, align 8, !tbaa !800
  br label %24

99:                                               ; preds = %14
  call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #13
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %9, i32 noundef %2, ptr noundef nonnull byval(%struct.c_expr) align 8 %3) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #13
  %100 = load ptr, ptr %3, align 8, !tbaa !798
  %101 = call ptr @build_unary_op(i32 noundef %16, i32 noundef 128, ptr noundef %100, i32 noundef 0) #11
  store ptr %101, ptr %3, align 8, !tbaa !798
  store i32 0, ptr %12, align 8, !tbaa !935
  store ptr null, ptr %13, align 8, !tbaa !800
  br label %24

102:                                              ; preds = %14
  call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #13
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %10, i32 noundef %2, ptr noundef nonnull byval(%struct.c_expr) align 8 %3) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #13
  %103 = load ptr, ptr %3, align 8, !tbaa !798
  %104 = call ptr @build_unary_op(i32 noundef %16, i32 noundef 127, ptr noundef %103, i32 noundef 0) #11
  store ptr %104, ptr %3, align 8, !tbaa !798
  store i32 0, ptr %12, align 8, !tbaa !935
  store ptr null, ptr %13, align 8, !tbaa !800
  br label %24

105:                                              ; preds = %75, %52
  call fastcc void @c_parser_error(ptr noundef nonnull %1, ptr noundef nonnull @.str.12) #12
  %106 = load ptr, ptr @global_trees, align 16, !tbaa !681
  store ptr %106, ptr %3, align 8, !tbaa !798
  store i32 0, ptr %12, align 8, !tbaa !935
  store ptr null, ptr %13, align 8, !tbaa !800
  br label %107

107:                                              ; preds = %14, %105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @c_parser_peek_2nd_token(ptr noundef %0) unnamed_addr #0 !prof !979 !PGOFuncName !980 {
  %2 = getelementptr inbounds %struct.c_parser, ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !702
  %4 = icmp sgt i16 %3, 1
  br i1 %4, label %5, label %7, !prof !981

5:                                                ; preds = %1
  %6 = getelementptr inbounds [2 x %struct.c_token], ptr %0, i64 0, i64 1
  br label %23

7:                                                ; preds = %1
  %8 = icmp eq i16 %3, 1
  br i1 %8, label %10, label %9, !prof !982

9:                                                ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 515, ptr noundef nonnull @.str.2) #11
  br label %10

10:                                               ; preds = %7, %9
  %11 = load i32, ptr %0, align 8
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, 22
  br i1 %13, label %14, label %16, !prof !983

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 516, ptr noundef nonnull @.str.2) #11
  %15 = load i32, ptr %0, align 8
  br label %16

16:                                               ; preds = %10, %14
  %17 = phi i32 [ %11, %10 ], [ %15, %14 ]
  %18 = and i32 %17, 255
  %19 = icmp eq i32 %18, 71
  br i1 %19, label %20, label %21, !prof !983

20:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 517, ptr noundef nonnull @.str.2) #11
  br label %21

21:                                               ; preds = %16, %20
  %22 = getelementptr inbounds [2 x %struct.c_token], ptr %0, i64 0, i64 1
  tail call fastcc void @c_lex_one_token(ptr noundef nonnull %0, ptr noundef nonnull %22) #12
  store i16 2, ptr %2, align 8, !tbaa !702
  br label %23

23:                                               ; preds = %21, %5
  %24 = phi ptr [ %6, %5 ], [ %22, %21 ]
  ret ptr %24
}

; Function Attrs: optsize
declare void @used_types_insert(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_postfix_expression_after_paren_type(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.c_expr) align 8 %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 !prof !697 !PGOFuncName !984 {
  %5 = alloca %struct.c_expr, align 8
  %6 = alloca %struct.c_expr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  store ptr null, ptr %7, align 8, !tbaa !681
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #13
  store i8 1, ptr %8, align 1, !tbaa !714
  tail call void @check_compound_literal_type(i32 noundef %3, ptr noundef %2) #11
  tail call void @start_init(ptr noundef null, ptr noundef null, i32 noundef 0) #11
  %9 = call ptr @groktypename(ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %8) #11
  %10 = call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %11 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !720
  %13 = load ptr, ptr @global_trees, align 16, !tbaa !681
  %14 = icmp eq ptr %9, %13
  br i1 %14, label %22, label %15

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 67108864
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  call void (i32, ptr, ...) @error_at(i32 noundef %3, ptr noundef nonnull @.str.23) #11
  %21 = load ptr, ptr @global_trees, align 16, !tbaa !681
  br label %22

22:                                               ; preds = %20, %15, %4
  %23 = phi ptr [ %21, %20 ], [ %9, %15 ], [ %9, %4 ]
  call fastcc void @c_parser_braced_init(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %5, ptr noundef nonnull %1, ptr noundef %23, i8 noundef zeroext 0) #12
  call void @finish_init() #11
  call void @maybe_warn_string_init(ptr noundef %23, ptr noundef nonnull byval(%struct.c_expr) align 8 %5) #11
  %24 = load ptr, ptr @global_trees, align 16, !tbaa !681
  %25 = icmp eq ptr %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load i64, ptr %23, align 8
  %28 = icmp ugt i64 %27, 72057594037927935
  %29 = load ptr, ptr @current_function_decl, align 8
  %30 = icmp ne ptr %29, null
  %31 = select i1 %28, i1 %30, i1 false
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  call void (ptr, ...) @error(ptr noundef nonnull @.str.24) #11
  %33 = load ptr, ptr @global_trees, align 16, !tbaa !681
  br label %34

34:                                               ; preds = %32, %26, %22
  %35 = phi ptr [ %33, %32 ], [ %23, %26 ], [ %23, %22 ]
  %36 = load i32, ptr @flag_isoc99, align 4, !tbaa !676
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %12, i32 noundef 834, ptr noundef nonnull @.str.25) #11
  br label %40

40:                                               ; preds = %38, %34
  %41 = load ptr, ptr %5, align 8, !tbaa !798
  %42 = icmp eq ptr %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %40
  %44 = load i64, ptr %41, align 8
  %45 = and i64 %44, 65535
  %46 = icmp eq i64 %45, 51
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = lshr i64 %44, 34
  %49 = trunc i64 %48 to i8
  %50 = and i8 %49, 1
  br label %56

51:                                               ; preds = %43, %40
  %52 = getelementptr inbounds %struct.c_expr, ptr %5, i64 0, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !935
  %54 = icmp eq i32 %53, 189
  %55 = zext i1 %54 to i8
  br label %56

56:                                               ; preds = %51, %47
  %57 = phi i8 [ %50, %47 ], [ %55, %51 ]
  %58 = load i8, ptr %8, align 1, !tbaa !714
  %59 = icmp eq i8 %58, 0
  %60 = zext i1 %59 to i8
  %61 = or i8 %57, %60
  %62 = call ptr @build_compound_literal(i32 noundef %12, ptr noundef %35, ptr noundef %41, i8 noundef zeroext %61) #11
  store ptr %62, ptr %6, align 8, !tbaa !798
  %63 = getelementptr inbounds %struct.c_expr, ptr %6, i64 0, i32 1
  store i32 0, ptr %63, align 8, !tbaa !935
  %64 = getelementptr inbounds %struct.c_expr, ptr %6, i64 0, i32 2
  store ptr null, ptr %64, align 8, !tbaa !800
  %65 = load ptr, ptr %7, align 8, !tbaa !681
  %66 = icmp eq ptr %65, null
  br i1 %66, label %86, label %67

67:                                               ; preds = %56
  %68 = load i64, ptr %62, align 8
  %69 = and i64 %68, 65535
  %70 = icmp eq i64 %69, 189
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.tree_exp, ptr %62, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !714
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5834, ptr noundef nonnull @.str.2) #11
  %76 = load ptr, ptr %7, align 8, !tbaa !681
  br label %77

77:                                               ; preds = %71, %75
  %78 = phi ptr [ %65, %71 ], [ %76, %75 ]
  store ptr %78, ptr %72, align 8, !tbaa !714
  br label %86

79:                                               ; preds = %67
  %80 = icmp eq i8 %61, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %79
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5839, ptr noundef nonnull @.str.2) #11
  %82 = load ptr, ptr %7, align 8, !tbaa !681
  br label %83

83:                                               ; preds = %79, %81
  %84 = phi ptr [ %65, %79 ], [ %82, %81 ]
  %85 = call ptr @build2_stat(i32 noundef 189, ptr noundef %35, ptr noundef %84, ptr noundef nonnull %62) #11
  store ptr %85, ptr %6, align 8, !tbaa !798
  br label %86

86:                                               ; preds = %77, %83, %56
  call fastcc void @c_parser_postfix_expression_after_primary(ptr dead_on_unwind writable sret(%struct.c_expr) align 8 %0, ptr noundef nonnull %1, i32 noundef %12, ptr noundef nonnull byval(%struct.c_expr) align 8 %6) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret void
}

; Function Attrs: optsize
declare ptr @c_cast_expr(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_unary_expression(ptr dead_on_unwind noalias writable sret(%struct.c_expr) align 8 %0, ptr noundef %1) unnamed_addr #0 !prof !985 !PGOFuncName !986 {
  %3 = alloca %struct.c_expr, align 8
  %4 = alloca %struct.c_expr, align 8
  %5 = alloca %struct.c_expr, align 8
  %6 = alloca %struct.c_expr, align 8
  %7 = alloca %struct.c_expr, align 8
  %8 = alloca %struct.expanded_location, align 8
  %9 = alloca %struct.c_expr, align 8
  %10 = alloca %struct.c_expr, align 8
  %11 = alloca %struct.c_expr, align 8
  %12 = alloca %struct.c_expr, align 8
  %13 = alloca %struct.c_expr, align 8
  %14 = alloca %struct.c_expr, align 8
  %15 = alloca %struct.c_expr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  %16 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %17 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !720
  %19 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %20 = load i32, ptr %1, align 8
  %21 = trunc i32 %20 to i8
  switch i8 %21, label %96 [
    i8 45, label %22
    i8 46, label %25
    i8 9, label %28
    i8 6, label %29
    i8 4, label %36
    i8 5, label %50
    i8 14, label %53
    i8 1, label %56
    i8 15, label %59
    i8 74, label %73
  ], !prof !987

22:                                               ; preds = %2
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %23 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %24 = load i32, ptr %17, align 8, !tbaa !720
  call fastcc void @c_parser_cast_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %3, ptr noundef nonnull %1, ptr noundef null) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %4, i32 noundef %24, ptr noundef nonnull byval(%struct.c_expr) align 8 %3) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  call void @parser_build_unary_op(ptr dead_on_unwind writable sret(%struct.c_expr) align 8 %0, i32 noundef %18, i32 noundef 126, ptr noundef nonnull byval(%struct.c_expr) align 8 %3) #11
  br label %97

25:                                               ; preds = %2
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %26 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %27 = load i32, ptr %17, align 8, !tbaa !720
  call fastcc void @c_parser_cast_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %3, ptr noundef nonnull %1, ptr noundef null) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %5, i32 noundef %27, ptr noundef nonnull byval(%struct.c_expr) align 8 %3) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  call void @parser_build_unary_op(ptr dead_on_unwind writable sret(%struct.c_expr) align 8 %0, i32 noundef %18, i32 noundef 125, ptr noundef nonnull byval(%struct.c_expr) align 8 %3) #11
  br label %97

28:                                               ; preds = %2
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  call fastcc void @c_parser_cast_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %6, ptr noundef nonnull %1, ptr noundef null) #12
  call void @parser_build_unary_op(ptr dead_on_unwind writable sret(%struct.c_expr) align 8 %0, i32 noundef %18, i32 noundef 121, ptr noundef nonnull byval(%struct.c_expr) align 8 %6) #11
  br label %97

29:                                               ; preds = %2
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %30 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %31 = load i32, ptr %17, align 8, !tbaa !720
  call fastcc void @c_parser_cast_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %3, ptr noundef nonnull %1, ptr noundef null) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %7, i32 noundef %31, ptr noundef nonnull byval(%struct.c_expr) align 8 %3) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  %32 = load ptr, ptr %3, align 8, !tbaa !798
  %33 = call ptr @build_indirect_ref(i32 noundef %18, ptr noundef %32, i32 noundef 2) #11
  store ptr %33, ptr %0, align 8, !tbaa.struct !797
  %34 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 0, ptr %34, align 8, !tbaa.struct !925
  %35 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr null, ptr %35, align 8, !tbaa.struct !926
  br label %97

36:                                               ; preds = %2
  %37 = load i32, ptr @c_language, align 4, !tbaa !676
  %38 = and i32 %37, 1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load i32, ptr @input_location, align 4, !tbaa !676
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %8, i32 noundef %41) #11
  %42 = getelementptr inbounds %struct.expanded_location, ptr %8, i64 0, i32 3
  %43 = load i8, ptr %42, align 8, !tbaa !988
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %18, i32 noundef 202, ptr noundef nonnull @.str.33) #11
  br label %47

47:                                               ; preds = %45, %40, %36
  call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %48 = call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %49 = load i32, ptr %17, align 8, !tbaa !720
  call fastcc void @c_parser_cast_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %3, ptr noundef nonnull %1, ptr noundef null) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #13
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %9, i32 noundef %49, ptr noundef nonnull byval(%struct.c_expr) align 8 %3) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #13
  call void @parser_build_unary_op(ptr dead_on_unwind writable sret(%struct.c_expr) align 8 %0, i32 noundef %18, i32 noundef 113, ptr noundef nonnull byval(%struct.c_expr) align 8 %3) #11
  br label %97

50:                                               ; preds = %2
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %51 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %52 = load i32, ptr %17, align 8, !tbaa !720
  call fastcc void @c_parser_cast_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %3, ptr noundef nonnull %1, ptr noundef null) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #13
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %10, i32 noundef %52, ptr noundef nonnull byval(%struct.c_expr) align 8 %3) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #13
  call void @parser_build_unary_op(ptr dead_on_unwind writable sret(%struct.c_expr) align 8 %0, i32 noundef %18, i32 noundef 79, ptr noundef nonnull byval(%struct.c_expr) align 8 %3) #11
  br label %97

53:                                               ; preds = %2
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %54 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %55 = load i32, ptr %17, align 8, !tbaa !720
  call fastcc void @c_parser_cast_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %3, ptr noundef nonnull %1, ptr noundef null) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #13
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %11, i32 noundef %55, ptr noundef nonnull byval(%struct.c_expr) align 8 %3) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #13
  call void @parser_build_unary_op(ptr dead_on_unwind writable sret(%struct.c_expr) align 8 %0, i32 noundef %18, i32 noundef 90, ptr noundef nonnull byval(%struct.c_expr) align 8 %3) #11
  br label %97

56:                                               ; preds = %2
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %57 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %58 = load i32, ptr %17, align 8, !tbaa !720
  call fastcc void @c_parser_cast_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %3, ptr noundef nonnull %1, ptr noundef null) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #13
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %12, i32 noundef %58, ptr noundef nonnull byval(%struct.c_expr) align 8 %3) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #13
  call void @parser_build_unary_op(ptr dead_on_unwind writable sret(%struct.c_expr) align 8 %0, i32 noundef %18, i32 noundef 96, ptr noundef nonnull byval(%struct.c_expr) align 8 %3) #11
  br label %97

59:                                               ; preds = %2
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %60 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 53) #12, !range !730
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %59
  %63 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %64 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !698
  %66 = tail call ptr @finish_label_address_expr(ptr noundef %65, i32 noundef %18) #11
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  br label %69

67:                                               ; preds = %59
  tail call fastcc void @c_parser_error(ptr noundef nonnull %1, ptr noundef nonnull @.str.12) #12
  %68 = load ptr, ptr @global_trees, align 16, !tbaa !681
  br label %69

69:                                               ; preds = %67, %62
  %70 = phi ptr [ %66, %62 ], [ %68, %67 ]
  store ptr %70, ptr %0, align 8, !tbaa.struct !797
  %71 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 0, ptr %71, align 8, !tbaa.struct !925
  %72 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr null, ptr %72, align 8, !tbaa.struct !926
  br label %97

73:                                               ; preds = %2
  %74 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %75 = load i32, ptr %1, align 8
  %76 = lshr i32 %75, 16
  %77 = trunc i32 %76 to i8
  switch i8 %77, label %95 [
    i8 48, label %78
    i8 51, label %79
    i8 54, label %80
    i8 56, label %89
    i8 55, label %92
  ], !prof !990

78:                                               ; preds = %73
  tail call fastcc void @c_parser_sizeof_expression(ptr dead_on_unwind writable sret(%struct.c_expr) align 8 %0, ptr noundef nonnull %1) #12
  br label %97

79:                                               ; preds = %73
  tail call fastcc void @c_parser_alignof_expression(ptr dead_on_unwind writable sret(%struct.c_expr) align 8 %0, ptr noundef nonnull %1) #12
  br label %97

80:                                               ; preds = %73
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %81 = tail call fastcc i32 @disable_extension_diagnostics() #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #13
  call fastcc void @c_parser_cast_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %13, ptr noundef nonnull %1, ptr noundef null) #12
  %82 = load ptr, ptr %13, align 8, !tbaa.struct !797
  %83 = getelementptr inbounds i8, ptr %13, i64 8
  %84 = getelementptr inbounds i8, ptr %13, i64 16
  %85 = load ptr, ptr %84, align 8, !tbaa.struct !926
  %86 = getelementptr inbounds i8, ptr %0, i64 8
  %87 = load <2 x i32>, ptr %83, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #13
  call fastcc void @restore_extension_diagnostics(i32 noundef %81) #12
  store ptr %82, ptr %0, align 8, !tbaa.struct !797
  store <2 x i32> %87, ptr %86, align 8
  %88 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr %85, ptr %88, align 8, !tbaa.struct !926
  br label %97

89:                                               ; preds = %73
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %90 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %91 = load i32, ptr %17, align 8, !tbaa !720
  call fastcc void @c_parser_cast_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %3, ptr noundef nonnull %1, ptr noundef null) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #13
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %14, i32 noundef %91, ptr noundef nonnull byval(%struct.c_expr) align 8 %3) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #13
  call void @parser_build_unary_op(ptr dead_on_unwind writable sret(%struct.c_expr) align 8 %0, i32 noundef %18, i32 noundef 43, ptr noundef nonnull byval(%struct.c_expr) align 8 %3) #11
  br label %97

92:                                               ; preds = %73
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %93 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %94 = load i32, ptr %17, align 8, !tbaa !720
  call fastcc void @c_parser_cast_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %3, ptr noundef nonnull %1, ptr noundef null) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #13
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %15, i32 noundef %94, ptr noundef nonnull byval(%struct.c_expr) align 8 %3) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %15, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #13
  call void @parser_build_unary_op(ptr dead_on_unwind writable sret(%struct.c_expr) align 8 %0, i32 noundef %18, i32 noundef 44, ptr noundef nonnull byval(%struct.c_expr) align 8 %3) #11
  br label %97

95:                                               ; preds = %73
  tail call fastcc void @c_parser_postfix_expression(ptr dead_on_unwind writable sret(%struct.c_expr) align 8 %0, ptr noundef nonnull %1) #12
  br label %97

96:                                               ; preds = %2
  tail call fastcc void @c_parser_postfix_expression(ptr dead_on_unwind writable sret(%struct.c_expr) align 8 %0, ptr noundef nonnull %1) #12
  br label %97

97:                                               ; preds = %96, %95, %92, %89, %80, %79, %78, %69, %56, %53, %50, %47, %29, %28, %25, %22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_expression(ptr dead_on_unwind noalias nocapture writable sret(%struct.c_expr) align 8 %0, ptr noundef %1) unnamed_addr #0 !prof !991 !PGOFuncName !992 {
  %3 = alloca %struct.c_expr, align 8
  %4 = alloca %struct.c_expr, align 8
  %5 = alloca %struct.c_expr, align 8
  tail call fastcc void @c_parser_expr_no_commas(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %0, ptr noundef %1, ptr noundef null) #12
  %6 = load ptr, ptr %0, align 8, !tbaa !798
  %7 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %1, i32 noundef 19) #12, !range !730
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %9, !prof !993

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 2
  %11 = getelementptr inbounds %struct.c_expr, ptr %3, i64 0, i32 2
  br label %12

12:                                               ; preds = %9, %12
  %13 = phi ptr [ %6, %9 ], [ %19, %12 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  %14 = call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %15 = load i32, ptr %10, align 8, !tbaa !720
  call fastcc void @c_parser_consume_token(ptr noundef %1) #12
  %16 = call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %17 = load i32, ptr %10, align 8, !tbaa !720
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call fastcc void @c_parser_expr_no_commas(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %4, ptr noundef %1, ptr noundef null) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %5, i32 noundef %17, ptr noundef nonnull byval(%struct.c_expr) align 8 %3) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  %18 = load ptr, ptr %3, align 8, !tbaa !798
  %19 = call ptr @build_compound_expr(i32 noundef %15, ptr noundef %13, ptr noundef %18) #11
  %20 = load ptr, ptr %11, align 8, !tbaa !800
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  %21 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %1, i32 noundef 19) #12, !range !730
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %12, !prof !994, !llvm.loop !995

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.c_expr, ptr %0, i64 0, i32 1
  %25 = getelementptr inbounds %struct.c_expr, ptr %0, i64 0, i32 2
  store i32 52, ptr %24, align 8, !tbaa !935
  store ptr %20, ptr %25, align 8, !tbaa !800
  br label %26

26:                                               ; preds = %23, %2
  %27 = phi ptr [ %19, %23 ], [ %6, %2 ]
  store ptr %27, ptr %0, align 8, !tbaa !798
  ret void
}

; Function Attrs: optsize
declare ptr @build_array_ref(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_expr_list(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr noundef writeonly %3) unnamed_addr #0 !prof !996 !PGOFuncName !997 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.c_expr, align 8
  %8 = alloca %struct.c_expr, align 8
  %9 = alloca %struct.c_expr, align 8
  %10 = alloca %struct.c_expr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  %11 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %12 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !720
  %14 = tail call ptr @make_tree_vector() #11
  store ptr %14, ptr %5, align 8, !tbaa !681
  %15 = icmp eq ptr %3, null
  br i1 %15, label %18, label %16, !prof !998

16:                                               ; preds = %4
  %17 = tail call ptr @make_tree_vector() #11
  br label %18

18:                                               ; preds = %4, %16
  %19 = phi ptr [ %17, %16 ], [ null, %4 ]
  store ptr %19, ptr %6, align 8, !tbaa !681
  call fastcc void @c_parser_expr_no_commas(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %7, ptr noundef nonnull %0, ptr noundef null) #12
  %20 = icmp eq i8 %1, 0
  br i1 %20, label %22, label %21, !prof !998

21:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #13
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %8, i32 noundef %13, ptr noundef nonnull byval(%struct.c_expr) align 8 %7) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  br label %22

22:                                               ; preds = %21, %18
  %23 = icmp eq i8 %2, 0
  %24 = load ptr, ptr %7, align 8, !tbaa !798
  br i1 %23, label %27, label %25, !prof !999

25:                                               ; preds = %22
  %26 = call ptr @c_fully_fold(ptr noundef %24, i8 noundef zeroext 0, ptr noundef null) #11
  store ptr %26, ptr %7, align 8, !tbaa !798
  br label %27

27:                                               ; preds = %25, %22
  %28 = phi ptr [ %26, %25 ], [ %24, %22 ]
  call fastcc void @VEC_tree_base_quick_push(ptr noundef %14, ptr noundef %28) #12
  %29 = icmp eq ptr %19, null
  br i1 %29, label %33, label %30, !prof !998

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.c_expr, ptr %7, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !800
  call fastcc void @VEC_tree_base_quick_push(ptr noundef nonnull %19, ptr noundef %32) #12
  br label %33

33:                                               ; preds = %30, %27
  %34 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 19) #12, !range !730
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %57, label %36, !prof !1000

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.c_expr, ptr %7, i64 0, i32 2
  br label %38

38:                                               ; preds = %36, %52
  call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %39 = call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %40 = load i32, ptr %12, align 8, !tbaa !720
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #13
  call fastcc void @c_parser_expr_no_commas(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %9, ptr noundef nonnull %0, ptr noundef null) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #13
  br i1 %20, label %42, label %41, !prof !1001

41:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #13
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %10, i32 noundef %40, ptr noundef nonnull byval(%struct.c_expr) align 8 %7) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #13
  br label %42

42:                                               ; preds = %41, %38
  %43 = load ptr, ptr %7, align 8, !tbaa !798
  br i1 %23, label %46, label %44, !prof !1002

44:                                               ; preds = %42
  %45 = call ptr @c_fully_fold(ptr noundef %43, i8 noundef zeroext 0, ptr noundef null) #11
  store ptr %45, ptr %7, align 8, !tbaa !798
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi ptr [ %45, %44 ], [ %43, %42 ]
  call fastcc void @VEC_tree_gc_safe_push(ptr noundef nonnull %5, ptr noundef %47) #12
  %48 = load ptr, ptr %6, align 8, !tbaa !681
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50, !prof !1001

50:                                               ; preds = %46
  %51 = load ptr, ptr %37, align 8, !tbaa !800
  call fastcc void @VEC_tree_gc_safe_push(ptr noundef nonnull %6, ptr noundef %51) #12
  br label %52

52:                                               ; preds = %50, %46
  %53 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 19) #12, !range !730
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %38, !prof !1003, !llvm.loop !1004

55:                                               ; preds = %52
  %56 = load ptr, ptr %6, align 8, !tbaa !681
  br label %57

57:                                               ; preds = %55, %33
  %58 = phi ptr [ %56, %55 ], [ %19, %33 ]
  %59 = icmp eq ptr %58, null
  br i1 %59, label %61, label %60, !prof !998

60:                                               ; preds = %57
  store ptr %58, ptr %3, align 8, !tbaa !681
  br label %61

61:                                               ; preds = %60, %57
  %62 = load ptr, ptr %5, align 8, !tbaa !681
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  ret ptr %62
}

; Function Attrs: optsize
declare ptr @build_function_call_vec(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @release_tree_vector(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_component_ref(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_indirect_ref(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_unary_op(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_compound_expr(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_tree_vector() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @c_fully_fold(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #7 !prof !1005 !PGOFuncName !1006 {
  %3 = load i32, ptr %0, align 8, !tbaa !1007
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1007
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !681
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1009 !PGOFuncName !1010 {
  tail call fastcc void @VEC_tree_gc_reserve(ptr noundef %0) #12
  %3 = load ptr, ptr %0, align 8, !tbaa !681
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !1009 !PGOFuncName !1011 {
  %2 = load ptr, ptr %0, align 8, !tbaa !681
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2) #12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1012

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve(ptr noundef %2, i32 noundef 1) #11
  store ptr %6, ptr %0, align 8, !tbaa !681
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #8 !prof !1009 !PGOFuncName !1013 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !1014

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1015
  %6 = load i32, ptr %0, align 8, !tbaa !1007
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @check_compound_literal_type(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @start_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_braced_init(ptr dead_on_unwind noalias writable sret(%struct.c_expr) align 8 %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 !prof !1016 !PGOFuncName !1017 {
  %5 = alloca %struct.c_expr, align 8
  %6 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %7 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !720
  %9 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %1, i32 noundef 41) #12, !range !730
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12, !prof !1018

11:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3091, ptr noundef nonnull @.str.2) #11
  br label %12

12:                                               ; preds = %4, %11
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %13 = icmp eq i8 %3, 0
  br i1 %13, label %15, label %14, !prof !1019

14:                                               ; preds = %12
  tail call void @push_init_level(i32 noundef 0) #11
  br label %16

15:                                               ; preds = %12
  tail call void @really_start_incremental_init(ptr noundef %2) #11
  br label %16

16:                                               ; preds = %15, %14
  %17 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 42) #12, !range !730
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %21, !prof !1020

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.c_parser, ptr %1, i64 0, i32 2
  br label %23

21:                                               ; preds = %16
  %22 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %8, i32 noundef 834, ptr noundef nonnull @.str.26) #11
  br label %33

23:                                               ; preds = %19, %30
  tail call fastcc void @c_parser_initelt(ptr noundef nonnull %1) #12
  %24 = load i8, ptr %20, align 2
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %33, !prof !1021

27:                                               ; preds = %23
  %28 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 19) #12, !range !730
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %33, label %30, !prof !1022

30:                                               ; preds = %27
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %31 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 42) #12, !range !730
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %23, label %33, !prof !1023

33:                                               ; preds = %23, %27, %30, %21
  %34 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef nonnull %1, i32 noundef 42) #12, !range !730
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %40, label %36, !prof !1020

36:                                               ; preds = %33
  %37 = load ptr, ptr @global_trees, align 16, !tbaa !681
  store ptr %37, ptr %0, align 8, !tbaa !798
  %38 = getelementptr inbounds %struct.c_expr, ptr %0, i64 0, i32 1
  store i32 0, ptr %38, align 8, !tbaa !935
  %39 = getelementptr inbounds %struct.c_expr, ptr %0, i64 0, i32 2
  store ptr null, ptr %39, align 8, !tbaa !800
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %1, i32 noundef 42, ptr noundef nonnull @.str.27) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @pop_init_level(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %5, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  br label %41

40:                                               ; preds = %33
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  tail call void @pop_init_level(ptr dead_on_unwind writable sret(%struct.c_expr) align 8 %0, i32 noundef 0) #11
  br label %41

41:                                               ; preds = %40, %36
  ret void
}

; Function Attrs: optsize
declare void @finish_init() local_unnamed_addr #2

; Function Attrs: optsize
declare void @maybe_warn_string_init(ptr noundef, ptr noundef byval(%struct.c_expr) align 8) local_unnamed_addr #2

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_compound_literal(i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @push_init_level(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @really_start_incremental_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_initelt(ptr noundef %0) unnamed_addr #0 !prof !1024 !PGOFuncName !1025 {
  %2 = alloca %struct.c_expr, align 8
  %3 = alloca %struct.c_expr, align 8
  %4 = alloca %struct.c_expr, align 8
  %5 = alloca %struct.c_expr, align 8
  %6 = alloca %struct.c_expr, align 8
  %7 = alloca %struct.c_expr, align 8
  %8 = alloca %struct.c_expr, align 8
  %9 = alloca %struct.c_expr, align 8
  %10 = alloca %struct.c_expr, align 8
  %11 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 53) #12, !range !730
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %26, label %13, !prof !1026

13:                                               ; preds = %1
  %14 = tail call fastcc ptr @c_parser_peek_2nd_token(ptr noundef %0) #12
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 255
  %17 = icmp eq i32 %16, 18
  br i1 %17, label %18, label %26, !prof !1027

18:                                               ; preds = %13
  %19 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %20 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !698
  tail call void @set_init_label(ptr noundef %21) #11
  %22 = tail call fastcc ptr @c_parser_peek_2nd_token(ptr noundef %0) #12
  %23 = getelementptr inbounds %struct.c_token, ptr %22, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !720
  %25 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %24, i32 noundef 834, ptr noundef nonnull @.str.28) #11
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  br label %157

26:                                               ; preds = %13, %1
  %27 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %28 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 1
  %29 = getelementptr inbounds %struct.c_expr, ptr %3, i64 0, i32 1
  %30 = getelementptr inbounds %struct.c_expr, ptr %3, i64 0, i32 2
  br label %31

31:                                               ; preds = %127, %26
  %32 = phi i32 [ 0, %26 ], [ %45, %127 ]
  %33 = phi i32 [ 0, %26 ], [ %128, %127 ]
  %34 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 39) #12, !range !730
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39, !prof !1028

36:                                               ; preds = %31
  %37 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 48) #12, !range !730
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %132, label %39, !prof !1029

39:                                               ; preds = %31, %36
  %40 = icmp eq i32 %33, 0
  br i1 %40, label %41, label %44, !prof !1030

41:                                               ; preds = %39
  %42 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %43 = load i32, ptr %27, align 8, !tbaa !720
  br label %44

44:                                               ; preds = %41, %39
  %45 = phi i32 [ %32, %39 ], [ %43, %41 ]
  %46 = icmp slt i32 %33, 2
  %47 = add nuw nsw i32 %33, 1
  %48 = select i1 %46, i32 %47, i32 2, !prof !1030
  %49 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 48) #12, !range !730
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %61, label %51, !prof !1031

51:                                               ; preds = %44
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %52 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 53) #12, !range !730
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %57, label %54, !prof !1032

54:                                               ; preds = %51
  %55 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %56 = load ptr, ptr %28, align 8, !tbaa !698
  tail call void @set_init_label(ptr noundef %56) #11
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  br label %127

57:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #13
  %58 = load ptr, ptr @global_trees, align 16, !tbaa !681
  store ptr %58, ptr %2, align 8, !tbaa !798
  %59 = getelementptr inbounds %struct.c_expr, ptr %2, i64 0, i32 1
  store i32 0, ptr %59, align 8, !tbaa !935
  %60 = getelementptr inbounds %struct.c_expr, ptr %2, i64 0, i32 2
  store ptr null, ptr %60, align 8, !tbaa !800
  tail call fastcc void @c_parser_error(ptr noundef %0, ptr noundef nonnull @.str.12) #12
  tail call fastcc void @c_parser_skip_until_found(ptr noundef %0, i32 noundef 19, ptr noundef null) #12
  tail call void @process_init_element(ptr noundef nonnull byval(%struct.c_expr) align 8 %2, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #13
  br label %163

61:                                               ; preds = %44
  switch i32 %33, label %110 [
    i32 1, label %62
    i32 0, label %66
  ], !prof !1033

62:                                               ; preds = %61
  %63 = load i32, ptr @c_language, align 4, !tbaa !676
  %64 = and i32 %63, 1
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %110, label %137

66:                                               ; preds = %61
  %67 = load i32, ptr @c_language, align 4, !tbaa !676
  %68 = and i32 %67, 1
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %110, label %70, !prof !1034

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %71 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %72 = load i32, ptr %0, align 8
  %73 = and i32 %72, 255
  %74 = icmp eq i32 %73, 53
  br i1 %74, label %75, label %89

75:                                               ; preds = %70
  %76 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %77 = load i32, ptr %0, align 8
  %78 = and i32 %77, 65280
  %79 = icmp eq i32 %78, 256
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %82 = load i32, ptr %0, align 8
  %83 = and i32 %82, 65280
  %84 = icmp eq i32 %83, 512
  br i1 %84, label %85, label %89

85:                                               ; preds = %80, %75
  %86 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %87 = load ptr, ptr %28, align 8, !tbaa !698
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %88 = tail call ptr @objc_get_class_reference(ptr noundef %87) #11
  br label %158

89:                                               ; preds = %80, %70
  call fastcc void @c_parser_expr_no_commas(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %4, ptr noundef nonnull %0, ptr noundef null) #12
  %90 = load ptr, ptr %4, align 8, !tbaa !798
  %91 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 44) #12, !range !730
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %89
  %94 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 40) #12, !range !730
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %93
  %97 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 19) #12, !range !730
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %158, label %99

99:                                               ; preds = %96, %99
  %100 = phi ptr [ %106, %99 ], [ %90, %96 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  %101 = call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %102 = load i32, ptr %27, align 8, !tbaa !720
  call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %103 = call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %104 = load i32, ptr %27, align 8, !tbaa !720
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  call fastcc void @c_parser_expr_no_commas(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %6, ptr noundef nonnull %0, ptr noundef null) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %7, i32 noundef %104, ptr noundef nonnull byval(%struct.c_expr) align 8 %5) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  %105 = load ptr, ptr %5, align 8, !tbaa !798
  %106 = call ptr @build_compound_expr(i32 noundef %102, ptr noundef %100, ptr noundef %105) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  %107 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 19) #12, !range !730
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %158, label %99, !llvm.loop !1035

109:                                              ; preds = %93, %89
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %112

110:                                              ; preds = %62, %61, %66
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  call fastcc void @c_parser_expr_no_commas(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %8, ptr noundef %0, ptr noundef null) #12
  %111 = load ptr, ptr %8, align 8, !tbaa !798
  br label %112

112:                                              ; preds = %109, %110
  %113 = phi ptr [ %111, %110 ], [ %90, %109 ]
  %114 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 44) #12, !range !730
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %120, label %116, !prof !1034

116:                                              ; preds = %112
  %117 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %118 = load i32, ptr %27, align 8, !tbaa !720
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  call fastcc void @c_parser_expr_no_commas(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %9, ptr noundef %0, ptr noundef null) #12
  %119 = load ptr, ptr %9, align 8, !tbaa !798
  br label %120

120:                                              ; preds = %112, %116
  %121 = phi ptr [ %119, %116 ], [ null, %112 ]
  %122 = phi i32 [ %118, %116 ], [ 0, %112 ]
  %123 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 40) #12, !range !730
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %131, label %125, !prof !1036

125:                                              ; preds = %120
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  tail call void @set_init_index(ptr noundef %113, ptr noundef %121) #11
  %126 = icmp eq ptr %121, null
  br i1 %126, label %127, label %129, !prof !1034

127:                                              ; preds = %125, %129, %131, %54
  %128 = phi i32 [ %48, %125 ], [ %48, %129 ], [ %48, %131 ], [ 2, %54 ]
  br label %31

129:                                              ; preds = %125
  %130 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %122, i32 noundef 834, ptr noundef nonnull @.str.29) #11
  br label %127

131:                                              ; preds = %120
  tail call fastcc void @c_parser_skip_until_found(ptr noundef %0, i32 noundef 40, ptr noundef nonnull @.str.22) #12
  br label %127

132:                                              ; preds = %36
  %133 = icmp sgt i32 %33, 0
  br i1 %133, label %134, label %157, !prof !1037

134:                                              ; preds = %132
  %135 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 0) #12, !range !730
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %147, label %140, !prof !1038

137:                                              ; preds = %62
  %138 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 0) #12, !range !730
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %149, label %140, !prof !1038

140:                                              ; preds = %137, %134
  %141 = phi i32 [ %45, %137 ], [ %32, %134 ]
  %142 = load i32, ptr @flag_isoc99, align 4, !tbaa !676
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %146, !prof !1030

144:                                              ; preds = %140
  %145 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %141, i32 noundef 834, ptr noundef nonnull @.str.30) #11
  br label %146

146:                                              ; preds = %144, %140
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  br label %157

147:                                              ; preds = %134
  %148 = icmp eq i32 %33, 1
  br i1 %148, label %149, label %153

149:                                              ; preds = %137, %147
  %150 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %151 = load i32, ptr %27, align 8, !tbaa !720
  %152 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %151, i32 noundef 834, ptr noundef nonnull @.str.31) #11
  br label %157

153:                                              ; preds = %147
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #13
  %154 = load ptr, ptr @global_trees, align 16, !tbaa !681
  store ptr %154, ptr %10, align 8, !tbaa !798
  %155 = getelementptr inbounds %struct.c_expr, ptr %10, i64 0, i32 1
  store i32 0, ptr %155, align 8, !tbaa !935
  %156 = getelementptr inbounds %struct.c_expr, ptr %10, i64 0, i32 2
  store ptr null, ptr %156, align 8, !tbaa !800
  tail call fastcc void @c_parser_error(ptr noundef %0, ptr noundef nonnull @.str.32) #12
  tail call fastcc void @c_parser_skip_until_found(ptr noundef %0, i32 noundef 19, ptr noundef null) #12
  tail call void @process_init_element(ptr noundef nonnull byval(%struct.c_expr) align 8 %10, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #13
  br label %163

157:                                              ; preds = %132, %149, %146, %18
  tail call fastcc void @c_parser_initval(ptr noundef %0, ptr noundef null) #12
  br label %163

158:                                              ; preds = %99, %85, %96
  %159 = phi ptr [ %88, %85 ], [ %90, %96 ], [ %106, %99 ]
  %160 = call fastcc ptr @c_parser_objc_message_args(ptr noundef nonnull %0) #12
  call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %0, i32 noundef 40, ptr noundef nonnull @.str.22) #12
  %161 = call ptr @build_tree_list_stat(ptr noundef %159, ptr noundef %160) #11
  %162 = call ptr @objc_build_message_expr(ptr noundef %161) #11
  store ptr %162, ptr %3, align 8, !tbaa !798
  store i32 0, ptr %29, align 8, !tbaa !935
  store ptr null, ptr %30, align 8, !tbaa !800
  call fastcc void @c_parser_initval(ptr noundef nonnull %0, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %163

163:                                              ; preds = %158, %57, %153, %157
  ret void
}

; Function Attrs: optsize
declare void @pop_init_level(ptr dead_on_unwind writable sret(%struct.c_expr) align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_init_label(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @process_init_element(ptr noundef byval(%struct.c_expr) align 8, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @objc_get_class_reference(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_objc_message_args(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !1039 {
  %2 = tail call fastcc ptr @c_parser_objc_selector(ptr noundef %0) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef %0, i32 noundef 18) #12, !range !730
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %4, %1
  %8 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef %0, i32 noundef 18, ptr noundef nonnull @.str.15) #12, !range !730
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %23, %7
  %11 = load ptr, ptr @global_trees, align 16, !tbaa !681
  br label %26

12:                                               ; preds = %7, %23
  %13 = phi ptr [ %17, %23 ], [ null, %7 ]
  %14 = phi ptr [ %18, %23 ], [ %2, %7 ]
  %15 = tail call fastcc ptr @c_parser_objc_keywordexpr(ptr noundef %0) #12
  %16 = tail call ptr @build_tree_list_stat(ptr noundef %14, ptr noundef %15) #11
  %17 = tail call ptr @chainon(ptr noundef %13, ptr noundef %16) #11
  %18 = tail call fastcc ptr @c_parser_objc_selector(ptr noundef %0) #12
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef %0, i32 noundef 18) #12, !range !730
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %12, %20
  %24 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef %0, i32 noundef 18, ptr noundef nonnull @.str.15) #12, !range !730
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %10, label %12

26:                                               ; preds = %20, %10, %4
  %27 = phi ptr [ %2, %4 ], [ %11, %10 ], [ %17, %20 ]
  ret ptr %27
}

; Function Attrs: optsize
declare ptr @objc_build_message_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_initval(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1024 !PGOFuncName !1040 {
  %3 = alloca %struct.c_expr, align 8
  %4 = alloca %struct.c_expr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  %5 = icmp eq ptr %1, null
  br i1 %5, label %13, label %6, !prof !1021

6:                                                ; preds = %2
  %7 = load i32, ptr @c_language, align 4, !tbaa !676
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3330, ptr noundef nonnull @.str.2) #11
  br label %11

11:                                               ; preds = %6, %10
  %12 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 41) #12, !range !730
  br label %17

13:                                               ; preds = %2
  %14 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 41) #12, !range !730
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16, !prof !1041

16:                                               ; preds = %13
  call fastcc void @c_parser_braced_init(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %3, ptr noundef %0, ptr noundef null, i8 noundef zeroext 1) #12
  br label %27

17:                                               ; preds = %11, %13
  %18 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %19 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !720
  call fastcc void @c_parser_expr_no_commas(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %3, ptr noundef %0, ptr noundef %1) #12
  %21 = load ptr, ptr %3, align 8, !tbaa !798
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23, !prof !1042

23:                                               ; preds = %17
  %24 = load i64, ptr %21, align 8
  %25 = trunc i64 %24 to i16
  switch i16 %25, label %26 [
    i16 28, label %27
    i16 119, label %27
  ], !prof !1043

26:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %4, i32 noundef %20, ptr noundef nonnull byval(%struct.c_expr) align 8 %3) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  br label %27

27:                                               ; preds = %17, %26, %23, %23, %16
  call void @process_init_element(ptr noundef nonnull byval(%struct.c_expr) align 8 %3, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  ret void
}

; Function Attrs: optsize
declare void @set_init_index(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_objc_keywordexpr(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !1044 {
  %2 = tail call fastcc ptr @c_parser_expr_list(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef null) #12
  %3 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %2) #12
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %2) #12
  br label %9

7:                                                ; preds = %1
  %8 = tail call ptr @build_tree_list_vec_stat(ptr noundef %2) #11
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %6, %5 ], [ %8, %7 ]
  tail call void @release_tree_vector(ptr noundef %2) #11
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #8 !prof !697 !PGOFuncName !1045 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1007
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !697 !PGOFuncName !1046 {
  %2 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !681
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @build_tree_list_vec_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @parser_build_unary_op(ptr dead_on_unwind writable sret(%struct.c_expr) align 8, i32 noundef, i32 noundef, ptr noundef byval(%struct.c_expr) align 8) local_unnamed_addr #2

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @finish_label_address_expr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_sizeof_expression(ptr dead_on_unwind noalias writable sret(%struct.c_expr) align 8 %0, ptr noundef %1) unnamed_addr #0 !prof !1047 !PGOFuncName !1048 {
  %3 = alloca %struct.c_expr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  %4 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %1, i32 noundef 48) #12, !range !730
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7, !prof !1049

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5190, ptr noundef nonnull @.str.2) #11
  br label %7

7:                                                ; preds = %2, %6
  tail call fastcc void @c_parser_consume_token(ptr noundef %1) #12
  %8 = load i32, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %10 = load i32, ptr @in_sizeof, align 4, !tbaa !676
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr @in_sizeof, align 4, !tbaa !676
  %12 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %1, i32 noundef 20) #12, !range !730
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %41, label %14, !prof !1050

14:                                               ; preds = %7
  %15 = tail call fastcc ptr @c_parser_peek_2nd_token(ptr noundef %1) #12
  %16 = tail call fastcc zeroext i8 @c_token_starts_typename(ptr noundef nonnull %15) #12, !range !730
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %41, label %18, !prof !1051

18:                                               ; preds = %14
  tail call fastcc void @c_parser_consume_token(ptr noundef %1) #12
  %19 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %20 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !720
  %22 = tail call fastcc ptr @c_parser_type_name(ptr noundef %1) #12
  tail call fastcc void @c_parser_skip_until_found(ptr noundef %1, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %32, !prof !1052

24:                                               ; preds = %18
  %25 = load i32, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %26 = add nsw i32 %25, -1
  store i32 %26, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %27 = load i32, ptr @in_sizeof, align 4, !tbaa !676
  %28 = add nsw i32 %27, -1
  store i32 %28, ptr @in_sizeof, align 4, !tbaa !676
  %29 = load ptr, ptr @global_trees, align 16, !tbaa !681
  store ptr %29, ptr %0, align 8, !tbaa !798
  %30 = getelementptr inbounds %struct.c_expr, ptr %0, i64 0, i32 1
  store i32 0, ptr %30, align 8, !tbaa !935
  %31 = getelementptr inbounds %struct.c_expr, ptr %0, i64 0, i32 2
  store ptr null, ptr %31, align 8, !tbaa !800
  br label %64

32:                                               ; preds = %18
  %33 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 41) #12, !range !730
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %36, label %35, !prof !1053

35:                                               ; preds = %32
  call fastcc void @c_parser_postfix_expression_after_paren_type(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %3, ptr noundef nonnull %1, ptr noundef nonnull %22, i32 noundef %21) #12
  br label %45

36:                                               ; preds = %32
  %37 = load i32, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %38 = add nsw i32 %37, -1
  store i32 %38, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %39 = load i32, ptr @in_sizeof, align 4, !tbaa !676
  %40 = add nsw i32 %39, -1
  store i32 %40, ptr @in_sizeof, align 4, !tbaa !676
  tail call void @c_expr_sizeof_type(ptr dead_on_unwind writable sret(%struct.c_expr) align 8 %0, i32 noundef %21, ptr noundef nonnull %22) #11
  br label %64

41:                                               ; preds = %14, %7
  %42 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %43 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !720
  call fastcc void @c_parser_unary_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %3, ptr noundef %1) #12
  br label %45

45:                                               ; preds = %35, %41
  %46 = phi i32 [ %21, %35 ], [ %44, %41 ]
  %47 = load i32, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %48 = add nsw i32 %47, -1
  store i32 %48, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %49 = load i32, ptr @in_sizeof, align 4, !tbaa !676
  %50 = add nsw i32 %49, -1
  store i32 %50, ptr @in_sizeof, align 4, !tbaa !676
  %51 = load ptr, ptr %3, align 8, !tbaa !798
  %52 = load i64, ptr %51, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 41
  br i1 %54, label %55, label %63, !prof !1054

55:                                               ; preds = %45
  %56 = getelementptr inbounds %struct.tree_exp, ptr %51, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !714
  %58 = getelementptr inbounds %struct.tree_decl_common, ptr %57, i64 0, i32 2
  %59 = load i64, ptr %58, align 8
  %60 = and i64 %59, 524288
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %63, label %62, !prof !1055

62:                                               ; preds = %55
  call void (i32, ptr, ...) @error_at(i32 noundef %46, ptr noundef nonnull @.str.34) #11
  br label %63

63:                                               ; preds = %62, %55, %45
  call void @c_expr_sizeof_expr(ptr dead_on_unwind writable sret(%struct.c_expr) align 8 %0, i32 noundef %46, ptr noundef nonnull byval(%struct.c_expr) align 8 %3) #11
  br label %64

64:                                               ; preds = %24, %36, %63
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_alignof_expression(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.c_expr) align 8 %0, ptr noundef %1) unnamed_addr #0 !prof !1056 !PGOFuncName !1057 {
  %3 = alloca %struct.c_expr, align 8
  %4 = alloca %struct.c_expr, align 8
  %5 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %6 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !720
  %8 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %1, i32 noundef 51) #12, !range !730
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11, !prof !1058

10:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5247, ptr noundef nonnull @.str.2) #11
  br label %11

11:                                               ; preds = %2, %10
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %12 = load i32, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %14 = load i32, ptr @in_alignof, align 4, !tbaa !676
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr @in_alignof, align 4, !tbaa !676
  %16 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 20) #12, !range !730
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %49, label %18, !prof !1058

18:                                               ; preds = %11
  %19 = tail call fastcc ptr @c_parser_peek_2nd_token(ptr noundef nonnull %1) #12
  %20 = tail call fastcc zeroext i8 @c_token_starts_typename(ptr noundef nonnull %19) #12, !range !730
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %49, label %22, !prof !1058

22:                                               ; preds = %18
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %23 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %24 = load i32, ptr %6, align 8, !tbaa !720
  %25 = tail call fastcc ptr @c_parser_type_name(ptr noundef nonnull %1) #12
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %1, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %35, !prof !1058

27:                                               ; preds = %22
  %28 = load i32, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %29 = add nsw i32 %28, -1
  store i32 %29, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %30 = load i32, ptr @in_alignof, align 4, !tbaa !676
  %31 = add nsw i32 %30, -1
  store i32 %31, ptr @in_alignof, align 4, !tbaa !676
  %32 = load ptr, ptr @global_trees, align 16, !tbaa !681
  store ptr %32, ptr %0, align 8, !tbaa !798
  %33 = getelementptr inbounds %struct.c_expr, ptr %0, i64 0, i32 1
  store i32 0, ptr %33, align 8, !tbaa !935
  %34 = getelementptr inbounds %struct.c_expr, ptr %0, i64 0, i32 2
  br label %60

35:                                               ; preds = %22
  %36 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 41) #12, !range !730
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %47, !prof !1059

38:                                               ; preds = %35
  %39 = load i32, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %40 = add nsw i32 %39, -1
  store i32 %40, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %41 = load i32, ptr @in_alignof, align 4, !tbaa !676
  %42 = add nsw i32 %41, -1
  store i32 %42, ptr @in_alignof, align 4, !tbaa !676
  %43 = tail call ptr @groktypename(ptr noundef nonnull %25, ptr noundef null, ptr noundef null) #11
  %44 = tail call ptr @c_sizeof_or_alignof_type(i32 noundef %24, ptr noundef %43, i8 noundef zeroext 0, i32 noundef 1) #11
  store ptr %44, ptr %0, align 8, !tbaa.struct !797
  %45 = getelementptr inbounds i8, ptr %0, i64 8
  store i32 0, ptr %45, align 8, !tbaa.struct !925
  %46 = getelementptr inbounds i8, ptr %0, i64 16
  br label %60

47:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call fastcc void @c_parser_postfix_expression_after_paren_type(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %3, ptr noundef nonnull %1, ptr noundef nonnull %25, i32 noundef %24) #12
  %48 = load ptr, ptr %3, align 8, !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %51

49:                                               ; preds = %18, %11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call fastcc void @c_parser_unary_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %4, ptr noundef nonnull %1) #12
  %50 = load ptr, ptr %4, align 8, !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  br label %51

51:                                               ; preds = %47, %49
  %52 = phi ptr [ %48, %47 ], [ %50, %49 ]
  %53 = load i32, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %54 = add nsw i32 %53, -1
  store i32 %54, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !676
  %55 = load i32, ptr @in_alignof, align 4, !tbaa !676
  %56 = add nsw i32 %55, -1
  store i32 %56, ptr @in_alignof, align 4, !tbaa !676
  %57 = call ptr @c_alignof_expr(i32 noundef %7, ptr noundef %52) #11
  store ptr %57, ptr %0, align 8, !tbaa !798
  %58 = getelementptr inbounds %struct.c_expr, ptr %0, i64 0, i32 1
  store i32 0, ptr %58, align 8, !tbaa !935
  %59 = getelementptr inbounds %struct.c_expr, ptr %0, i64 0, i32 2
  br label %60

60:                                               ; preds = %38, %27, %51
  %61 = phi ptr [ %46, %38 ], [ %34, %27 ], [ %59, %51 ]
  store ptr null, ptr %61, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_postfix_expression(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.c_expr) align 8 %0, ptr noundef %1) unnamed_addr #0 !prof !967 !PGOFuncName !1060 {
  %3 = alloca %struct.c_expr, align 8
  %4 = alloca %struct.c_expr, align 8
  %5 = alloca %struct.c_expr, align 8
  %6 = alloca %struct.c_expr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.c_expr, align 8
  %9 = alloca %struct.c_expr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5)
  %10 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %11 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !720
  %13 = getelementptr inbounds %struct.c_expr, ptr %3, i64 0, i32 1
  store i32 0, ptr %13, align 8, !tbaa !935
  %14 = getelementptr inbounds %struct.c_expr, ptr %3, i64 0, i32 2
  store ptr null, ptr %14, align 8, !tbaa !800
  %15 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %16 = load i32, ptr %1, align 8
  %17 = trunc i32 %16 to i8
  switch i8 %17, label %367 [
    i8 55, label %18
    i8 56, label %33
    i8 58, label %33
    i8 59, label %33
    i8 57, label %33
    i8 61, label %37
    i8 63, label %37
    i8 64, label %37
    i8 62, label %37
    i8 65, label %37
    i8 66, label %41
    i8 53, label %51
    i8 20, label %68
    i8 74, label %114
    i8 39, label %358
  ], !prof !1061

18:                                               ; preds = %2
  %19 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %20 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !698
  store ptr %21, ptr %3, align 8, !tbaa !798
  %22 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %23 = load i32, ptr %11, align 8, !tbaa !720
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %24 = load i64, ptr %21, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 25
  br i1 %26, label %27, label %369, !prof !1062

27:                                               ; preds = %18
  %28 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 20), align 8, !tbaa !1063
  %29 = tail call zeroext i8 %28() #11
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %369

31:                                               ; preds = %27
  tail call void (i32, ptr, ...) @error_at(i32 noundef %23, ptr noundef nonnull @.str.35) #11
  %32 = load ptr, ptr @global_trees, align 16, !tbaa !681
  store ptr %32, ptr %3, align 8, !tbaa !798
  br label %369

33:                                               ; preds = %2, %2, %2, %2
  %34 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %35 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !698
  store ptr %36, ptr %3, align 8, !tbaa !798
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  br label %369

37:                                               ; preds = %2, %2, %2, %2, %2
  %38 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %39 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !698
  store ptr %40, ptr %3, align 8, !tbaa !798
  store i32 28, ptr %13, align 8, !tbaa !935
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  br label %369

41:                                               ; preds = %2
  %42 = load i32, ptr @c_language, align 4, !tbaa !676
  %43 = and i32 %42, 1
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5393, ptr noundef nonnull @.str.2) #11
  br label %46

46:                                               ; preds = %41, %45
  %47 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %48 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !698
  %50 = tail call ptr @objc_build_string_object(ptr noundef %49) #11
  store ptr %50, ptr %3, align 8, !tbaa !798
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  br label %369

51:                                               ; preds = %2
  %52 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %53 = load i32, ptr %1, align 8
  %54 = and i32 %53, 65280
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %58, label %56, !prof !1075

56:                                               ; preds = %51
  tail call fastcc void @c_parser_error(ptr noundef nonnull %1, ptr noundef nonnull @.str.36) #12
  %57 = load ptr, ptr @global_trees, align 16, !tbaa !681
  store ptr %57, ptr %3, align 8, !tbaa !798
  br label %369

58:                                               ; preds = %51
  %59 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %60 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !698
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %62 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %63 = load i32, ptr %1, align 8
  %64 = and i32 %63, 255
  %65 = icmp eq i32 %64, 20
  %66 = zext i1 %65 to i32
  %67 = call ptr @build_external_ref(i32 noundef %12, ptr noundef %61, i32 noundef %66, ptr noundef nonnull %14) #11
  store ptr %67, ptr %3, align 8, !tbaa !798
  br label %369

68:                                               ; preds = %2
  %69 = tail call fastcc ptr @c_parser_peek_2nd_token(ptr noundef nonnull %1) #12
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, 255
  %72 = icmp eq i32 %71, 41
  br i1 %72, label %73, label %90, !prof !1076

73:                                               ; preds = %68
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %74 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %75 = load i32, ptr %11, align 8, !tbaa !720
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %76 = tail call ptr @current_stmt_tree() #11
  %77 = load ptr, ptr %76, align 8, !tbaa !1077
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %84, !prof !1079

79:                                               ; preds = %73
  tail call void (i32, ptr, ...) @error_at(i32 noundef %12, ptr noundef nonnull @.str.37) #11
  %80 = getelementptr inbounds %struct.c_parser, ptr %1, i64 0, i32 2
  %81 = load i8, ptr %80, align 2
  %82 = or i8 %81, 1
  store i8 %82, ptr %80, align 2
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %1, i32 noundef 42, ptr noundef null) #12
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %1, i32 noundef 21, ptr noundef null) #12
  %83 = load ptr, ptr @global_trees, align 16, !tbaa !681
  br label %88

84:                                               ; preds = %73
  %85 = tail call ptr @c_begin_stmt_expr() #11
  tail call fastcc void @c_parser_compound_statement_nostart(ptr noundef nonnull %1) #12
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %1, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  %86 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %12, i32 noundef 834, ptr noundef nonnull @.str.38) #11
  %87 = tail call ptr @c_finish_stmt_expr(i32 noundef %75, ptr noundef %85) #11
  br label %88

88:                                               ; preds = %84, %79
  %89 = phi ptr [ %87, %84 ], [ %83, %79 ]
  store ptr %89, ptr %3, align 8, !tbaa !798
  br label %369

90:                                               ; preds = %68
  %91 = tail call fastcc ptr @c_parser_peek_2nd_token(ptr noundef nonnull %1) #12
  %92 = tail call fastcc zeroext i8 @c_token_starts_typename(ptr noundef nonnull %91) #12, !range !730
  %93 = icmp eq i8 %92, 0
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  br i1 %93, label %102, label %94, !prof !1080

94:                                               ; preds = %90
  %95 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %96 = load i32, ptr %11, align 8, !tbaa !720
  %97 = tail call fastcc ptr @c_parser_type_name(ptr noundef nonnull %1) #12
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %1, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load ptr, ptr @global_trees, align 16, !tbaa !681
  store ptr %100, ptr %3, align 8, !tbaa !798
  br label %369

101:                                              ; preds = %94
  call fastcc void @c_parser_postfix_expression_after_paren_type(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %3, ptr noundef nonnull %1, ptr noundef nonnull %97, i32 noundef %96) #12
  br label %369

102:                                              ; preds = %90
  call fastcc void @c_parser_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %3, ptr noundef nonnull %1) #12
  %103 = load ptr, ptr %3, align 8, !tbaa !798
  %104 = load i64, ptr %103, align 8
  %105 = and i64 %104, 65535
  %106 = icmp eq i64 %105, 53
  br i1 %106, label %107, label %109, !prof !1081

107:                                              ; preds = %102
  %108 = or i64 %104, 8388608
  store i64 %108, ptr %103, align 8
  br label %109

109:                                              ; preds = %107, %102
  %110 = load i32, ptr %13, align 8, !tbaa !935
  %111 = icmp eq i32 %110, 189
  br i1 %111, label %113, label %112, !prof !1082

112:                                              ; preds = %109
  store i32 0, ptr %13, align 8, !tbaa !935
  br label %113

113:                                              ; preds = %112, %109
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %1, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  br label %369

114:                                              ; preds = %2
  %115 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %116 = load i32, ptr %1, align 8
  %117 = lshr i32 %116, 16
  %118 = trunc i32 %117 to i8
  switch i8 %118, label %356 [
    i8 66, label %119
    i8 67, label %119
    i8 68, label %119
    i8 53, label %128
    i8 82, label %159
    i8 58, label %238
    i8 59, label %274
    i8 -128, label %305
    i8 127, label %318
    i8 119, label %338
  ], !prof !1083

119:                                              ; preds = %114, %114, %114
  %120 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %121 = load i32, ptr %1, align 8
  %122 = lshr i32 %121, 16
  %123 = and i32 %122, 255
  %124 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %125 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !698
  %127 = tail call ptr @fname_decl(i32 noundef %12, i32 noundef %123, ptr noundef %126) #11
  store ptr %127, ptr %3, align 8, !tbaa !798
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  br label %369

128:                                              ; preds = %114
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %129 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef nonnull %1, i32 noundef 20, ptr noundef nonnull @.str.8) #12, !range !730
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %133, !prof !1084

131:                                              ; preds = %128
  %132 = load ptr, ptr @global_trees, align 16, !tbaa !681
  store ptr %132, ptr %3, align 8, !tbaa !798
  br label %369

133:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  call fastcc void @c_parser_expr_no_commas(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %6, ptr noundef nonnull %1, ptr noundef null) #12
  %134 = load ptr, ptr %6, align 8, !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  %135 = tail call ptr @c_fully_fold(ptr noundef %134, i8 noundef zeroext 0, ptr noundef null) #11
  %136 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef nonnull %1, i32 noundef 19, ptr noundef nonnull @.str.39) #12, !range !730
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %140, !prof !1084

138:                                              ; preds = %133
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %1, i32 noundef 21, ptr noundef null) #12
  %139 = load ptr, ptr @global_trees, align 16, !tbaa !681
  store ptr %139, ptr %3, align 8, !tbaa !798
  br label %369

140:                                              ; preds = %133
  %141 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %142 = load i32, ptr %11, align 8, !tbaa !720
  %143 = tail call fastcc ptr @c_parser_type_name(ptr noundef nonnull %1) #12
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %1, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %147, !prof !1084

145:                                              ; preds = %140
  %146 = load ptr, ptr @global_trees, align 16, !tbaa !681
  store ptr %146, ptr %3, align 8, !tbaa !798
  br label %369

147:                                              ; preds = %140
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  store ptr null, ptr %7, align 8, !tbaa !681
  %148 = call ptr @groktypename(ptr noundef nonnull %143, ptr noundef nonnull %7, ptr noundef null) #11
  %149 = call ptr @c_build_va_arg(i32 noundef %142, ptr noundef %135, ptr noundef %148) #11
  store ptr %149, ptr %3, align 8, !tbaa !798
  %150 = load ptr, ptr %7, align 8, !tbaa !681
  %151 = icmp eq ptr %150, null
  br i1 %151, label %158, label %152, !prof !1085

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.tree_common, ptr %149, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !714
  %155 = call ptr @build2_stat(i32 noundef 189, ptr noundef %154, ptr noundef nonnull %150, ptr noundef %149) #11
  store ptr %155, ptr %3, align 8, !tbaa !798
  %156 = load i64, ptr %155, align 8
  %157 = or i64 %156, 17179869184
  store i64 %157, ptr %155, align 8
  br label %158

158:                                              ; preds = %152, %147
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  br label %369

159:                                              ; preds = %114
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %160 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef nonnull %1, i32 noundef 20, ptr noundef nonnull @.str.8) #12, !range !730
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %162, label %164, !prof !1086

162:                                              ; preds = %159
  %163 = load ptr, ptr @global_trees, align 16, !tbaa !681
  store ptr %163, ptr %3, align 8, !tbaa !798
  br label %369

164:                                              ; preds = %159
  %165 = tail call fastcc ptr @c_parser_type_name(ptr noundef nonnull %1) #12
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %169, !prof !1086

167:                                              ; preds = %164
  %168 = load ptr, ptr @global_trees, align 16, !tbaa !681
  store ptr %168, ptr %3, align 8, !tbaa !798
  br label %369

169:                                              ; preds = %164
  %170 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef nonnull %1, i32 noundef 19, ptr noundef nonnull @.str.39) #12, !range !730
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %172, label %174, !prof !1086

172:                                              ; preds = %169
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %1, i32 noundef 21, ptr noundef null) #12
  %173 = load ptr, ptr @global_trees, align 16, !tbaa !681
  store ptr %173, ptr %3, align 8, !tbaa !798
  br label %369

174:                                              ; preds = %169
  %175 = tail call ptr @groktypename(ptr noundef nonnull %165, ptr noundef null, ptr noundef null) #11
  %176 = load ptr, ptr @global_trees, align 16, !tbaa !681
  %177 = icmp eq ptr %175, %176
  br i1 %177, label %182, label %178, !prof !1086

178:                                              ; preds = %174
  %179 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !681
  %180 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %175, ptr noundef %179) #11
  %181 = getelementptr inbounds %struct.tree_exp, ptr %180, i64 0, i32 1
  store i32 %12, ptr %181, align 8, !tbaa !714
  br label %182

182:                                              ; preds = %174, %178
  %183 = phi ptr [ %180, %178 ], [ %175, %174 ]
  %184 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 53) #12, !range !730
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %231, label %186, !prof !1086

186:                                              ; preds = %182
  %187 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %188 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !698
  %190 = tail call ptr @build_component_ref(i32 noundef %12, ptr noundef %183, ptr noundef %189) #11
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  br label %191

191:                                              ; preds = %222, %186
  %192 = phi ptr [ %190, %186 ], [ %223, %222 ]
  %193 = phi i32 [ %12, %186 ], [ %224, %222 ]
  %194 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 48) #12, !range !730
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %196, label %202, !prof !1087

196:                                              ; preds = %191
  %197 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 39) #12, !range !730
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %199, label %202, !prof !1087

199:                                              ; preds = %196
  %200 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 47) #12, !range !730
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %234, label %202, !prof !1087

202:                                              ; preds = %196, %191, %199
  %203 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 47) #12, !range !730
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %210, label %205

205:                                              ; preds = %202
  %206 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %207 = load i32, ptr %11, align 8, !tbaa !720
  %208 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !681
  %209 = tail call ptr @build_array_ref(i32 noundef %207, ptr noundef %192, ptr noundef %208) #11
  br label %213

210:                                              ; preds = %202
  %211 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 48) #12, !range !730
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %225, label %213

213:                                              ; preds = %210, %205
  %214 = phi ptr [ %209, %205 ], [ %192, %210 ]
  %215 = phi i32 [ %207, %205 ], [ %193, %210 ]
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %216 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef nonnull %1, i32 noundef 53) #12, !range !730
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %218, label %231

218:                                              ; preds = %213
  %219 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %220 = load ptr, ptr %188, align 8, !tbaa !698
  %221 = tail call ptr @build_component_ref(i32 noundef %215, ptr noundef %214, ptr noundef %220) #11
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  br label %222

222:                                              ; preds = %218, %225
  %223 = phi ptr [ %221, %218 ], [ %230, %225 ]
  %224 = phi i32 [ %215, %218 ], [ %227, %225 ]
  br label %191, !llvm.loop !1088

225:                                              ; preds = %210
  %226 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %227 = load i32, ptr %11, align 8, !tbaa !720
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  call fastcc void @c_parser_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %8, ptr noundef nonnull %1) #12
  %228 = load ptr, ptr %8, align 8, !tbaa !798
  %229 = tail call ptr @c_fully_fold(ptr noundef %228, i8 noundef zeroext 0, ptr noundef null) #11
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %1, i32 noundef 40, ptr noundef nonnull @.str.22) #12
  %230 = tail call ptr @build_array_ref(i32 noundef %227, ptr noundef %192, ptr noundef %229) #11
  br label %222

231:                                              ; preds = %213, %182
  %232 = phi ptr [ %183, %182 ], [ %214, %213 ]
  %233 = phi i32 [ %12, %182 ], [ %215, %213 ]
  tail call fastcc void @c_parser_error(ptr noundef nonnull %1, ptr noundef nonnull @.str.12) #12
  br label %234

234:                                              ; preds = %199, %231
  %235 = phi ptr [ %232, %231 ], [ %192, %199 ]
  %236 = phi i32 [ %233, %231 ], [ %193, %199 ]
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %1, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  %237 = tail call ptr @fold_offsetof(ptr noundef %235, ptr noundef null) #11
  store ptr %237, ptr %3, align 8, !tbaa !798
  br label %369

238:                                              ; preds = %114
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %239 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef nonnull %1, i32 noundef 20, ptr noundef nonnull @.str.8) #12, !range !730
  %240 = icmp eq i8 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %238
  %242 = load ptr, ptr @global_trees, align 16, !tbaa !681
  store ptr %242, ptr %3, align 8, !tbaa !798
  br label %369

243:                                              ; preds = %238
  %244 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %245 = load i32, ptr %11, align 8, !tbaa !720
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #13
  call fastcc void @c_parser_expr_no_commas(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %9, ptr noundef nonnull %1, ptr noundef null) #12
  %246 = load ptr, ptr %9, align 8, !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #13
  %247 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef nonnull %1, i32 noundef 19, ptr noundef nonnull @.str.39) #12, !range !730
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %243
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %1, i32 noundef 21, ptr noundef null) #12
  %250 = load ptr, ptr @global_trees, align 16, !tbaa !681
  store ptr %250, ptr %3, align 8, !tbaa !798
  br label %369

251:                                              ; preds = %243
  call fastcc void @c_parser_expr_no_commas(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %4, ptr noundef nonnull %1, ptr noundef null) #12
  %252 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef nonnull %1, i32 noundef 19, ptr noundef nonnull @.str.39) #12, !range !730
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %251
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %1, i32 noundef 21, ptr noundef null) #12
  %255 = load ptr, ptr @global_trees, align 16, !tbaa !681
  store ptr %255, ptr %3, align 8, !tbaa !798
  br label %369

256:                                              ; preds = %251
  call fastcc void @c_parser_expr_no_commas(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %5, ptr noundef nonnull %1, ptr noundef null) #12
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %1, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  %257 = load i64, ptr %246, align 8
  %258 = and i64 %257, 65535
  %259 = icmp eq i64 %258, 23
  br i1 %259, label %260, label %268

260:                                              ; preds = %256
  %261 = getelementptr inbounds %struct.tree_common, ptr %246, i64 0, i32 2
  %262 = load ptr, ptr %261, align 8, !tbaa !714
  %263 = load i64, ptr %262, align 8
  %264 = trunc i64 %263 to i32
  %265 = and i32 %264, 65535
  %266 = add nsw i32 %265, -6
  %267 = icmp ult i32 %266, 3
  br i1 %267, label %269, label %268

268:                                              ; preds = %260, %256
  tail call void (i32, ptr, ...) @error_at(i32 noundef %245, ptr noundef nonnull @.str.40) #11
  br label %269

269:                                              ; preds = %260, %268
  tail call void @constant_expression_warning(ptr noundef nonnull %246) #11
  %270 = tail call i32 @integer_zerop(ptr noundef nonnull %246) #11
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %269
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !797
  br label %369

273:                                              ; preds = %269
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !797
  br label %369

274:                                              ; preds = %114
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %275 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef nonnull %1, i32 noundef 20, ptr noundef nonnull @.str.8) #12, !range !730
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %274
  %278 = load ptr, ptr @global_trees, align 16, !tbaa !681
  store ptr %278, ptr %3, align 8, !tbaa !798
  br label %369

279:                                              ; preds = %274
  %280 = tail call fastcc ptr @c_parser_type_name(ptr noundef nonnull %1) #12
  %281 = icmp eq ptr %280, null
  br i1 %281, label %282, label %284

282:                                              ; preds = %279
  %283 = load ptr, ptr @global_trees, align 16, !tbaa !681
  store ptr %283, ptr %3, align 8, !tbaa !798
  br label %369

284:                                              ; preds = %279
  %285 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef nonnull %1, i32 noundef 19, ptr noundef nonnull @.str.39) #12, !range !730
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %284
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %1, i32 noundef 21, ptr noundef null) #12
  %288 = load ptr, ptr @global_trees, align 16, !tbaa !681
  store ptr %288, ptr %3, align 8, !tbaa !798
  br label %369

289:                                              ; preds = %284
  %290 = tail call fastcc ptr @c_parser_type_name(ptr noundef nonnull %1) #12
  %291 = icmp eq ptr %290, null
  br i1 %291, label %292, label %294

292:                                              ; preds = %289
  %293 = load ptr, ptr @global_trees, align 16, !tbaa !681
  store ptr %293, ptr %3, align 8, !tbaa !798
  br label %369

294:                                              ; preds = %289
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %1, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  %295 = tail call ptr @groktypename(ptr noundef nonnull %280, ptr noundef null, ptr noundef null) #11
  %296 = getelementptr inbounds %struct.tree_type, ptr %295, i64 0, i32 16
  %297 = load ptr, ptr %296, align 8, !tbaa !714
  %298 = tail call ptr @groktypename(ptr noundef nonnull %290, ptr noundef null, ptr noundef null) #11
  %299 = getelementptr inbounds %struct.tree_type, ptr %298, i64 0, i32 16
  %300 = load ptr, ptr %299, align 8, !tbaa !714
  %301 = tail call i32 @comptypes(ptr noundef %297, ptr noundef %300) #11
  %302 = icmp ne i32 %301, 0
  %303 = zext i1 %302 to i64
  %304 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %303) #11
  store ptr %304, ptr %3, align 8, !tbaa !798
  br label %369

305:                                              ; preds = %114
  %306 = load i32, ptr @c_language, align 4, !tbaa !676
  %307 = and i32 %306, 1
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %305
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5690, ptr noundef nonnull @.str.2) #11
  br label %310

310:                                              ; preds = %305, %309
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %311 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef nonnull %1, i32 noundef 20, ptr noundef nonnull @.str.8) #12, !range !730
  %312 = icmp eq i8 %311, 0
  br i1 %312, label %313, label %315

313:                                              ; preds = %310
  %314 = load ptr, ptr @global_trees, align 16, !tbaa !681
  store ptr %314, ptr %3, align 8, !tbaa !798
  br label %369

315:                                              ; preds = %310
  %316 = tail call fastcc ptr @c_parser_objc_selector_arg(ptr noundef nonnull %1) #12
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %1, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  %317 = tail call ptr @objc_build_selector_expr(i32 noundef %12, ptr noundef %316) #11
  store ptr %317, ptr %3, align 8, !tbaa !798
  br label %369

318:                                              ; preds = %114
  %319 = load i32, ptr @c_language, align 4, !tbaa !676
  %320 = and i32 %319, 1
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %318
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5705, ptr noundef nonnull @.str.2) #11
  br label %323

323:                                              ; preds = %318, %322
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %324 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef nonnull %1, i32 noundef 20, ptr noundef nonnull @.str.8) #12, !range !730
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %326, label %328

326:                                              ; preds = %323
  %327 = load ptr, ptr @global_trees, align 16, !tbaa !681
  store ptr %327, ptr %3, align 8, !tbaa !798
  br label %369

328:                                              ; preds = %323
  %329 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef nonnull %1, i32 noundef 53) #12, !range !730
  %330 = icmp eq i8 %329, 0
  br i1 %330, label %333, label %331

331:                                              ; preds = %328
  tail call fastcc void @c_parser_error(ptr noundef nonnull %1, ptr noundef nonnull @.str.12) #12
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %1, i32 noundef 21, ptr noundef null) #12
  %332 = load ptr, ptr @global_trees, align 16, !tbaa !681
  store ptr %332, ptr %3, align 8, !tbaa !798
  br label %369

333:                                              ; preds = %328
  %334 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %335 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 1
  %336 = load ptr, ptr %335, align 8, !tbaa !698
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %1, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  %337 = tail call ptr @objc_build_protocol_expr(ptr noundef %336) #11
  store ptr %337, ptr %3, align 8, !tbaa !798
  br label %369

338:                                              ; preds = %114
  %339 = load i32, ptr @c_language, align 4, !tbaa !676
  %340 = and i32 %339, 1
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %343

342:                                              ; preds = %338
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5729, ptr noundef nonnull @.str.2) #11
  br label %343

343:                                              ; preds = %338, %342
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %344 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef nonnull %1, i32 noundef 20, ptr noundef nonnull @.str.8) #12, !range !730
  %345 = icmp eq i8 %344, 0
  br i1 %345, label %346, label %348

346:                                              ; preds = %343
  %347 = load ptr, ptr @global_trees, align 16, !tbaa !681
  store ptr %347, ptr %3, align 8, !tbaa !798
  br label %369

348:                                              ; preds = %343
  %349 = tail call fastcc ptr @c_parser_type_name(ptr noundef nonnull %1) #12
  %350 = icmp eq ptr %349, null
  br i1 %350, label %351, label %353

351:                                              ; preds = %348
  %352 = load ptr, ptr @global_trees, align 16, !tbaa !681
  store ptr %352, ptr %3, align 8, !tbaa !798
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %1, i32 noundef 21, ptr noundef null) #12
  br label %369

353:                                              ; preds = %348
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %1, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  %354 = tail call ptr @groktypename(ptr noundef nonnull %349, ptr noundef null, ptr noundef null) #11
  %355 = tail call ptr @objc_build_encode_expr(ptr noundef %354) #11
  store ptr %355, ptr %3, align 8, !tbaa !798
  br label %369

356:                                              ; preds = %114
  tail call fastcc void @c_parser_error(ptr noundef nonnull %1, ptr noundef nonnull @.str.36) #12
  %357 = load ptr, ptr @global_trees, align 16, !tbaa !681
  store ptr %357, ptr %3, align 8, !tbaa !798
  br label %369

358:                                              ; preds = %2
  %359 = load i32, ptr @c_language, align 4, !tbaa !676
  %360 = and i32 %359, 1
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %367, label %362

362:                                              ; preds = %358
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %363 = tail call fastcc ptr @c_parser_objc_receiver(ptr noundef nonnull %1) #12
  %364 = tail call fastcc ptr @c_parser_objc_message_args(ptr noundef nonnull %1) #12
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %1, i32 noundef 40, ptr noundef nonnull @.str.22) #12
  %365 = tail call ptr @build_tree_list_stat(ptr noundef %363, ptr noundef %364) #11
  %366 = tail call ptr @objc_build_message_expr(ptr noundef %365) #11
  store ptr %366, ptr %3, align 8, !tbaa !798
  br label %369

367:                                              ; preds = %358, %2
  tail call fastcc void @c_parser_error(ptr noundef nonnull %1, ptr noundef nonnull @.str.36) #12
  %368 = load ptr, ptr @global_trees, align 16, !tbaa !681
  store ptr %368, ptr %3, align 8, !tbaa !798
  br label %369

369:                                              ; preds = %272, %273, %99, %101, %88, %119, %131, %138, %162, %167, %172, %234, %241, %249, %254, %277, %282, %287, %292, %294, %313, %315, %326, %331, %333, %346, %351, %353, %356, %158, %145, %113, %18, %27, %31, %367, %362, %58, %56, %46, %37, %33
  %370 = phi i32 [ %12, %367 ], [ %12, %362 ], [ %12, %356 ], [ %12, %351 ], [ %12, %353 ], [ %12, %346 ], [ %12, %331 ], [ %12, %333 ], [ %12, %326 ], [ %12, %315 ], [ %12, %313 ], [ %12, %282 ], [ %12, %292 ], [ %12, %294 ], [ %12, %287 ], [ %12, %277 ], [ %245, %254 ], [ %245, %249 ], [ %12, %241 ], [ %12, %167 ], [ %236, %234 ], [ %12, %172 ], [ %12, %162 ], [ %142, %145 ], [ %142, %158 ], [ %12, %138 ], [ %12, %131 ], [ %12, %119 ], [ %12, %88 ], [ %12, %113 ], [ %12, %56 ], [ %12, %58 ], [ %12, %46 ], [ %12, %37 ], [ %12, %33 ], [ %23, %27 ], [ %23, %31 ], [ %23, %18 ], [ %12, %101 ], [ %12, %99 ], [ %245, %273 ], [ %245, %272 ]
  call fastcc void @c_parser_postfix_expression_after_primary(ptr dead_on_unwind writable sret(%struct.c_expr) align 8 %0, ptr noundef nonnull %1, i32 noundef %370, ptr noundef nonnull byval(%struct.c_expr) align 8 %3) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  ret void
}

; Function Attrs: optsize
declare void @c_expr_sizeof_type(ptr dead_on_unwind writable sret(%struct.c_expr) align 8, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @c_expr_sizeof_expr(ptr dead_on_unwind writable sret(%struct.c_expr) align 8, i32 noundef, ptr noundef byval(%struct.c_expr) align 8) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @c_sizeof_or_alignof_type(i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @c_alignof_expr(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @objc_build_string_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_external_ref(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @current_stmt_tree() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @c_begin_stmt_expr() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_compound_statement_nostart(ptr noundef %0) unnamed_addr #0 !prof !1089 !PGOFuncName !1090 {
  %2 = tail call zeroext i8 @valid_location_for_stdc_pragma_p() #11
  %3 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 42) #12, !range !730
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5, !prof !1091

5:                                                ; preds = %1
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  br label %165

6:                                                ; preds = %1
  tail call void @mark_valid_location_for_stdc_pragma(i8 noundef zeroext 1) #11
  %7 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 57) #12, !range !730
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %40, label %9, !prof !1092

9:                                                ; preds = %6
  tail call void @mark_valid_location_for_stdc_pragma(i8 noundef zeroext 0) #11
  %10 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 57) #12, !range !730
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %14 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 1
  br label %15

15:                                               ; preds = %12, %34
  %16 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %17 = load i32, ptr %13, align 8, !tbaa !720
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %18 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef nonnull %0, i32 noundef 53) #12, !range !730
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %31, %15
  tail call fastcc void @c_parser_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.12) #12
  br label %34

21:                                               ; preds = %15, %31
  %22 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %23 = load ptr, ptr %14, align 8, !tbaa !698
  %24 = tail call ptr @declare_label(ptr noundef %23) #11
  %25 = load i64, ptr %24, align 8
  %26 = or i64 %25, 17179869184
  store i64 %26, ptr %24, align 8
  %27 = tail call ptr (i32, i32, ...) @build_stmt(i32 noundef %17, i32 noundef 132, ptr noundef nonnull %24) #11
  %28 = tail call ptr @add_stmt(ptr noundef %27) #11
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %29 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 19) #12, !range !730
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %21
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %32 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef nonnull %0, i32 noundef 53) #12, !range !730
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %21, label %20

34:                                               ; preds = %21, %20
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %0, i32 noundef 43, ptr noundef nonnull @.str.7) #12
  %35 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 57) #12, !range !730
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %15, !llvm.loop !1093

37:                                               ; preds = %34, %9
  %38 = phi i32 [ 0, %9 ], [ %17, %34 ]
  %39 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %38, i32 noundef 834, ptr noundef nonnull @.str.41) #11
  br label %40

40:                                               ; preds = %37, %6
  %41 = phi i32 [ %38, %37 ], [ 0, %6 ]
  %42 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 42) #12, !range !730
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %50, !prof !1092

44:                                               ; preds = %40
  %45 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef %0, i32 noundef 42) #12, !range !730
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %164, label %47, !prof !1094

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %49 = getelementptr inbounds %struct.c_parser, ptr %0, i64 0, i32 2
  br label %51

50:                                               ; preds = %40
  tail call void @mark_valid_location_for_stdc_pragma(i8 noundef zeroext %2) #11
  tail call fastcc void @c_parser_error(ptr noundef %0, ptr noundef nonnull @.str.42) #12
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  br label %165

51:                                               ; preds = %47, %155
  %52 = phi i8 [ 0, %47 ], [ %158, %155 ]
  %53 = phi i8 [ 0, %47 ], [ %157, %155 ]
  %54 = phi i32 [ %41, %47 ], [ %156, %155 ]
  %55 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %56 = load i32, ptr %48, align 8, !tbaa !720
  %57 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 42) #12, !range !730
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %70, !prof !1095

59:                                               ; preds = %51
  %60 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef nonnull %0, i32 noundef 43) #12, !range !730
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %70, !prof !1096

62:                                               ; preds = %59
  %63 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 53) #12, !range !730
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %81, label %65, !prof !1097

65:                                               ; preds = %62
  %66 = tail call fastcc ptr @c_parser_peek_2nd_token(ptr noundef nonnull %0) #12
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 255
  %69 = icmp eq i32 %68, 18
  br i1 %69, label %70, label %81, !prof !1098

70:                                               ; preds = %65, %59, %51
  %71 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef nonnull %0, i32 noundef 42) #12, !range !730
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %75, label %73, !prof !1099

73:                                               ; preds = %70
  %74 = tail call fastcc ptr @c_parser_peek_2nd_token(ptr noundef nonnull %0) #12
  br label %77

75:                                               ; preds = %70
  %76 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi ptr [ %74, %73 ], [ %0, %75 ]
  %79 = getelementptr inbounds %struct.c_token, ptr %78, i64 0, i32 2
  %80 = load i32, ptr %79, align 8, !tbaa !720
  tail call void @mark_valid_location_for_stdc_pragma(i8 noundef zeroext 0) #11
  tail call fastcc void @c_parser_label(ptr noundef nonnull %0) #12
  br label %149

81:                                               ; preds = %65, %62
  %82 = icmp eq i8 %53, 0
  br i1 %82, label %83, label %127, !prof !1100

83:                                               ; preds = %81
  %84 = tail call fastcc zeroext i8 @c_parser_next_token_starts_declspecs(ptr noundef nonnull %0) #12, !range !730
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %95, label %86, !prof !1101

86:                                               ; preds = %83
  tail call void @mark_valid_location_for_stdc_pragma(i8 noundef zeroext 0) #11
  tail call fastcc void @c_parser_declaration_or_fndef(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  %87 = icmp eq i8 %52, 0
  br i1 %87, label %149, label %88, !prof !1102

88:                                               ; preds = %86
  %89 = load i32, ptr @pedantic, align 4, !tbaa !676
  %90 = icmp ne i32 %89, 0
  %91 = load i32, ptr @flag_isoc99, align 4
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %90, i1 %92, i1 false
  %94 = select i1 %93, i32 834, i32 65
  tail call void (i32, i32, ptr, ...) @pedwarn_c90(i32 noundef %56, i32 noundef %94, ptr noundef nonnull @.str.43) #11
  br label %149

95:                                               ; preds = %83
  %96 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef nonnull %0, i32 noundef 54) #12, !range !730
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %127, label %98, !prof !1103

98:                                               ; preds = %95
  %99 = tail call fastcc ptr @c_parser_peek_2nd_token(ptr noundef nonnull %0) #12
  %100 = load i32, ptr %99, align 8
  %101 = and i32 %100, 255
  %102 = icmp eq i32 %101, 74
  br i1 %102, label %103, label %113, !prof !1104

103:                                              ; preds = %98, %108
  %104 = tail call fastcc ptr @c_parser_peek_2nd_token(ptr noundef %0) #12
  %105 = load i32, ptr %104, align 8
  %106 = and i32 %105, 16711680
  %107 = icmp eq i32 %106, 3538944
  br i1 %107, label %108, label %113, !prof !1105

108:                                              ; preds = %103
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %109 = tail call fastcc ptr @c_parser_peek_2nd_token(ptr noundef %0) #12
  %110 = load i32, ptr %109, align 8
  %111 = and i32 %110, 255
  %112 = icmp eq i32 %111, 74
  br i1 %112, label %103, label %113, !prof !1106, !llvm.loop !1107

113:                                              ; preds = %103, %108, %98
  %114 = tail call fastcc ptr @c_parser_peek_2nd_token(ptr noundef %0) #12
  %115 = tail call fastcc zeroext i8 @c_token_starts_declspecs(ptr noundef nonnull %114) #12, !range !730
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %148, label %117, !prof !1108

117:                                              ; preds = %113
  %118 = tail call fastcc i32 @disable_extension_diagnostics() #12
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  tail call void @mark_valid_location_for_stdc_pragma(i8 noundef zeroext 0) #11
  tail call fastcc void @c_parser_declaration_or_fndef(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  tail call fastcc void @restore_extension_diagnostics(i32 noundef %118) #12
  %119 = icmp eq i8 %52, 0
  br i1 %119, label %149, label %120, !prof !1109

120:                                              ; preds = %117
  %121 = load i32, ptr @pedantic, align 4, !tbaa !676
  %122 = icmp ne i32 %121, 0
  %123 = load i32, ptr @flag_isoc99, align 4
  %124 = icmp eq i32 %123, 0
  %125 = select i1 %122, i1 %124, i1 false
  %126 = select i1 %125, i32 834, i32 65
  tail call void (i32, i32, ptr, ...) @pedwarn_c90(i32 noundef %56, i32 noundef %126, ptr noundef nonnull @.str.43) #11
  br label %149

127:                                              ; preds = %81, %95
  %128 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 70) #12, !range !730
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %135, label %130, !prof !1110

130:                                              ; preds = %127
  %131 = tail call fastcc zeroext i8 @c_parser_pragma(ptr noundef nonnull %0, i32 noundef 2) #12, !range !730
  %132 = icmp eq i8 %131, 0
  %133 = select i1 %132, i8 %53, i8 0
  %134 = select i1 %132, i8 %52, i8 1
  br label %149

135:                                              ; preds = %127
  %136 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 22) #12, !range !730
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %139, label %138, !prof !1110

138:                                              ; preds = %135
  tail call void @mark_valid_location_for_stdc_pragma(i8 noundef zeroext %2) #11
  tail call fastcc void @c_parser_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.42) #12
  br label %165

139:                                              ; preds = %135
  %140 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef nonnull %0, i32 noundef 37) #12, !range !730
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %148, label %142, !prof !1110

142:                                              ; preds = %139
  %143 = load i8, ptr %49, align 2
  %144 = and i8 %143, 4
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %142
  tail call void @mark_valid_location_for_stdc_pragma(i8 noundef zeroext %2) #11
  tail call void (i32, ptr, ...) @error_at(i32 noundef %56, ptr noundef nonnull @.str.44) #11
  br label %165

147:                                              ; preds = %142
  tail call void (i32, ptr, ...) @error_at(i32 noundef %56, ptr noundef nonnull @.str.45) #11
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  br label %155, !llvm.loop !1111

148:                                              ; preds = %139, %113
  tail call void @mark_valid_location_for_stdc_pragma(i8 noundef zeroext 0) #11
  tail call fastcc void @c_parser_statement_after_labels(ptr noundef %0) #12
  br label %149

149:                                              ; preds = %130, %117, %120, %86, %88, %148, %77
  %150 = phi i32 [ %80, %77 ], [ %54, %148 ], [ %54, %88 ], [ %54, %86 ], [ %54, %120 ], [ %54, %117 ], [ %54, %130 ]
  %151 = phi i8 [ 1, %77 ], [ 0, %148 ], [ 0, %88 ], [ 0, %86 ], [ 0, %120 ], [ 0, %117 ], [ %133, %130 ]
  %152 = phi i8 [ 0, %77 ], [ 1, %148 ], [ 0, %88 ], [ 0, %86 ], [ 0, %120 ], [ 0, %117 ], [ %134, %130 ]
  %153 = load i8, ptr %49, align 2
  %154 = and i8 %153, -2
  store i8 %154, ptr %49, align 2
  br label %155

155:                                              ; preds = %149, %147
  %156 = phi i32 [ %150, %149 ], [ %54, %147 ]
  %157 = phi i8 [ %151, %149 ], [ %53, %147 ]
  %158 = phi i8 [ %152, %149 ], [ %52, %147 ]
  %159 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef nonnull %0, i32 noundef 42) #12, !range !730
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %161, label %51, !prof !1112

161:                                              ; preds = %155
  %162 = icmp eq i8 %157, 0
  br i1 %162, label %164, label %163, !prof !1113

163:                                              ; preds = %161
  tail call void (i32, ptr, ...) @error_at(i32 noundef %156, ptr noundef nonnull @.str.46) #11
  br label %164

164:                                              ; preds = %44, %163, %161
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  tail call void @mark_valid_location_for_stdc_pragma(i8 noundef zeroext %2) #11
  br label %165

165:                                              ; preds = %146, %138, %164, %50, %5
  ret void
}

; Function Attrs: optsize
declare ptr @c_finish_stmt_expr(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fname_decl(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @c_build_va_arg(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_offsetof(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @constant_expression_warning(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @comptypes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_objc_selector_arg(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !1114 {
  %2 = tail call fastcc ptr @c_parser_objc_selector(ptr noundef %0) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef %0, i32 noundef 18) #12, !range !730
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %4, %1
  %8 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef %0, i32 noundef 18, ptr noundef nonnull @.str.15) #12, !range !730
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %7, %20
  %11 = phi ptr [ %14, %20 ], [ null, %7 ]
  %12 = phi ptr [ %15, %20 ], [ %2, %7 ]
  %13 = tail call ptr @build_tree_list_stat(ptr noundef %12, ptr noundef null) #11
  %14 = tail call ptr @chainon(ptr noundef %11, ptr noundef %13) #11
  %15 = tail call fastcc ptr @c_parser_objc_selector(ptr noundef %0) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef %0, i32 noundef 18) #12, !range !730
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17, %10
  %21 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef %0, i32 noundef 18, ptr noundef nonnull @.str.15) #12, !range !730
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %10

23:                                               ; preds = %20, %17, %7, %4
  %24 = phi ptr [ %2, %4 ], [ null, %7 ], [ %14, %17 ], [ %14, %20 ]
  ret ptr %24
}

; Function Attrs: optsize
declare ptr @objc_build_selector_expr(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @objc_build_protocol_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @objc_build_encode_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_objc_receiver(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !1115 {
  %2 = alloca %struct.c_expr, align 8
  %3 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 255
  %6 = icmp eq i32 %5, 53
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65280
  %11 = icmp eq i32 %10, 256
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %14 = load i32, ptr %0, align 8
  %15 = and i32 %14, 65280
  %16 = icmp eq i32 %15, 512
  br i1 %16, label %17, label %22

17:                                               ; preds = %12, %7
  %18 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %19 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !698
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %21 = tail call ptr @objc_get_class_reference(ptr noundef %20) #11
  br label %25

22:                                               ; preds = %12, %1
  call fastcc void @c_parser_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %2, ptr noundef nonnull %0) #12
  %23 = load ptr, ptr %2, align 8, !tbaa !798
  %24 = tail call ptr @c_fully_fold(ptr noundef %23, i8 noundef zeroext 0, ptr noundef null) #11
  br label %25

25:                                               ; preds = %22, %17
  %26 = phi ptr [ %21, %17 ], [ %24, %22 ]
  ret ptr %26
}

; Function Attrs: optsize
declare zeroext i8 @valid_location_for_stdc_pragma_p() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @declare_label(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @add_stmt(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_stmt(i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_label(ptr noundef %0) unnamed_addr #0 !prof !1116 !PGOFuncName !1117 {
  %2 = alloca %struct.c_expr, align 8
  %3 = alloca %struct.c_expr, align 8
  %4 = alloca ptr, align 8
  %5 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %6 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !720
  %8 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 42) #12, !range !730
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %26, label %10, !prof !1118

10:                                               ; preds = %1
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  call fastcc void @c_parser_expr_no_commas(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %2, ptr noundef nonnull %0, ptr noundef null) #12
  %11 = load ptr, ptr %2, align 8, !tbaa !798
  %12 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 18) #12, !range !730
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %16, label %14, !prof !1119

14:                                               ; preds = %10
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %15 = tail call ptr @do_case(i32 noundef %7, ptr noundef %11, ptr noundef null) #11
  br label %58

16:                                               ; preds = %10
  %17 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 44) #12, !range !730
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  call fastcc void @c_parser_expr_no_commas(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %3, ptr noundef nonnull %0, ptr noundef null) #12
  %20 = load ptr, ptr %3, align 8, !tbaa !798
  %21 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef nonnull %0, i32 noundef 18, ptr noundef nonnull @.str.15) #12, !range !730
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %75, label %23

23:                                               ; preds = %19
  %24 = tail call ptr @do_case(i32 noundef %7, ptr noundef %11, ptr noundef %20) #11
  br label %58

25:                                               ; preds = %16
  tail call fastcc void @c_parser_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.47) #12
  br label %75

26:                                               ; preds = %1
  %27 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef nonnull %0, i32 noundef 43) #12, !range !730
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %34, label %29, !prof !1120

29:                                               ; preds = %26
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %30 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef nonnull %0, i32 noundef 18, ptr noundef nonnull @.str.15) #12, !range !730
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %75, label %32, !prof !1121

32:                                               ; preds = %29
  %33 = tail call ptr @do_case(i32 noundef %7, ptr noundef null, ptr noundef null) #11
  br label %58

34:                                               ; preds = %26
  %35 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %36 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !698
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %38 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %39 = load i32, ptr %6, align 8, !tbaa !720
  %40 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 53) #12, !range !730
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %43, !prof !1122

42:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3640, ptr noundef nonnull @.str.2) #11
  br label %43

43:                                               ; preds = %34, %42
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %44 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 18) #12, !range !730
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %47, !prof !1122

46:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3642, ptr noundef nonnull @.str.2) #11
  br label %47

47:                                               ; preds = %43, %46
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %48 = tail call fastcc ptr @c_parser_attributes(ptr noundef nonnull %0) #12
  %49 = tail call ptr @define_label(i32 noundef %39, ptr noundef %37) #11
  store ptr %49, ptr %4, align 8, !tbaa !681
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %51, !prof !1122

51:                                               ; preds = %47
  %52 = call ptr @decl_attributes(ptr noundef nonnull %4, ptr noundef %48, i32 noundef 0) #11
  %53 = load ptr, ptr %4, align 8, !tbaa !681
  %54 = call ptr (i32, i32, ...) @build_stmt(i32 noundef %7, i32 noundef 133, ptr noundef %53) #11
  %55 = call ptr @add_stmt(ptr noundef %54) #11
  br label %56

56:                                               ; preds = %51, %47
  %57 = phi ptr [ %55, %51 ], [ null, %47 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %58

58:                                               ; preds = %14, %23, %56, %32
  %59 = phi ptr [ %33, %32 ], [ %57, %56 ], [ %15, %14 ], [ %24, %23 ]
  %60 = icmp eq ptr %59, null
  br i1 %60, label %75, label %61, !prof !889

61:                                               ; preds = %58
  %62 = call fastcc zeroext i8 @c_parser_next_token_starts_declspecs(ptr noundef nonnull %0) #12, !range !730
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %75, label %64, !prof !1123

64:                                               ; preds = %61
  %65 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 53) #12, !range !730
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = call fastcc ptr @c_parser_peek_2nd_token(ptr noundef nonnull %0) #12
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 255
  %71 = icmp eq i32 %70, 18
  br i1 %71, label %75, label %72

72:                                               ; preds = %67, %64
  %73 = call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %74 = load i32, ptr %6, align 8, !tbaa !720
  call void (i32, ptr, ...) @error_at(i32 noundef %74, ptr noundef nonnull @.str.48) #11
  call fastcc void @c_parser_declaration_or_fndef(ptr noundef nonnull %0, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 1) #12
  br label %75

75:                                               ; preds = %25, %19, %29, %61, %67, %72, %58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @c_parser_next_token_starts_declspecs(ptr noundef %0) unnamed_addr #0 !prof !1124 !PGOFuncName !1125 {
  %2 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %3 = tail call fastcc zeroext i8 @c_token_starts_declspecs(ptr noundef %0) #12, !range !730
  ret i8 %3
}

; Function Attrs: optsize
declare void @pedwarn_c90(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @c_token_starts_declspecs(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1126 !PGOFuncName !1127 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %30 [
    i8 53, label %4
    i8 74, label %16
    i8 3, label %21
  ], !prof !1128

4:                                                ; preds = %1
  %5 = lshr i32 %2, 8
  %6 = trunc i32 %5 to i8
  switch i8 %6, label %14 [
    i8 0, label %30
    i8 3, label %7
    i8 1, label %8
    i8 2, label %9
  ], !prof !1129

7:                                                ; preds = %4
  br label %30

8:                                                ; preds = %4
  br label %30

9:                                                ; preds = %4
  %10 = load i32, ptr @c_language, align 4, !tbaa !676
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 445, ptr noundef nonnull @.str.2) #11
  br label %30

14:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 448, ptr noundef nonnull @.str.2) #11
  %15 = load i32, ptr %0, align 8
  br label %16

16:                                               ; preds = %1, %14
  %17 = phi i32 [ %2, %1 ], [ %15, %14 ]
  %18 = lshr i32 %17, 16
  %19 = trunc i32 %18 to i8
  %20 = icmp ult i8 %19, 70
  br i1 %20, label %25, label %30

21:                                               ; preds = %1
  %22 = load i32, ptr @c_language, align 4, !tbaa !676
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  br label %30

25:                                               ; preds = %16
  %26 = and i32 %18, 255
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [70 x i8], ptr @switch.table.c_token_starts_declspecs, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1
  br label %30

30:                                               ; preds = %16, %25, %1, %21, %13, %9, %4, %8, %7
  %31 = phi i8 [ 1, %8 ], [ 1, %7 ], [ %6, %4 ], [ 1, %9 ], [ 1, %13 ], [ %24, %21 ], [ 0, %1 ], [ %29, %25 ], [ 0, %16 ]
  ret i8 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_statement_after_labels(ptr noundef %0) unnamed_addr #0 !prof !1130 !PGOFuncName !1131 {
  %2 = alloca %struct.c_expr, align 8
  %3 = alloca %struct.c_expr, align 8
  %4 = alloca %struct.c_expr, align 8
  %5 = alloca %struct.c_expr, align 8
  %6 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %7 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !720
  %9 = getelementptr inbounds %struct.c_parser, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 2
  %11 = and i8 %10, -5
  store i8 %11, ptr %9, align 2
  %12 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %13 = load i32, ptr %0, align 8
  %14 = trunc i32 %13 to i8
  switch i8 %14, label %89 [
    i8 41, label %15
    i8 74, label %18
    i8 43, label %85
    i8 21, label %86
    i8 40, label %86
    i8 70, label %87
  ], !prof !1132

15:                                               ; preds = %1
  %16 = tail call fastcc ptr @c_parser_compound_statement(ptr noundef nonnull %0) #12
  %17 = tail call ptr @add_stmt(ptr noundef %16) #11
  br label %109

18:                                               ; preds = %1
  %19 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %20 = load i32, ptr %0, align 8
  %21 = lshr i32 %20, 16
  %22 = trunc i32 %21 to i8
  switch i8 %22, label %89 [
    i8 36, label %23
    i8 41, label %24
    i8 38, label %25
    i8 39, label %26
    i8 40, label %27
    i8 47, label %28
    i8 45, label %43
    i8 44, label %45
    i8 46, label %47
    i8 49, label %57
    i8 85, label %59
    i8 87, label %73
    i8 -123, label %79
  ], !prof !1133

23:                                               ; preds = %18
  tail call fastcc void @c_parser_if_statement(ptr noundef nonnull %0) #12
  br label %109

24:                                               ; preds = %18
  tail call fastcc void @c_parser_switch_statement(ptr noundef nonnull %0) #12
  br label %109

25:                                               ; preds = %18
  tail call fastcc void @c_parser_while_statement(ptr noundef nonnull %0) #12
  br label %109

26:                                               ; preds = %18
  tail call fastcc void @c_parser_do_statement(ptr noundef nonnull %0) #12
  br label %109

27:                                               ; preds = %18
  tail call fastcc void @c_parser_for_statement(ptr noundef nonnull %0) #12
  br label %109

28:                                               ; preds = %18
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %29 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 53) #12, !range !730
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %36, label %31, !prof !1134

31:                                               ; preds = %28
  %32 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %33 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !698
  %35 = tail call ptr @c_finish_goto_label(i32 noundef %8, ptr noundef %34) #11
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  br label %92

36:                                               ; preds = %28
  %37 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 6) #12, !range !730
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  call fastcc void @c_parser_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %2, ptr noundef nonnull %0) #12
  %40 = load ptr, ptr %2, align 8, !tbaa !798
  %41 = tail call ptr @c_finish_goto_ptr(i32 noundef %8, ptr noundef %40) #11
  br label %92

42:                                               ; preds = %36
  tail call fastcc void @c_parser_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.49) #12
  br label %92

43:                                               ; preds = %18
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %44 = tail call ptr @c_finish_bc_stmt(i32 noundef %8, ptr noundef nonnull @c_cont_label, i8 noundef zeroext 0) #11
  br label %92

45:                                               ; preds = %18
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %46 = tail call ptr @c_finish_bc_stmt(i32 noundef %8, ptr noundef nonnull @c_break_label, i8 noundef zeroext 1) #11
  br label %92

47:                                               ; preds = %18
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %48 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 43) #12, !range !730
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %52, label %50, !prof !1135

50:                                               ; preds = %47
  %51 = tail call ptr @c_finish_return(i32 noundef %8, ptr noundef null, ptr noundef null) #11
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  br label %94

52:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call fastcc void @c_parser_expression_conv(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %3, ptr noundef nonnull %0) #12
  %53 = load ptr, ptr %3, align 8, !tbaa !798
  %54 = getelementptr inbounds %struct.c_expr, ptr %3, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !800
  %56 = call ptr @c_finish_return(i32 noundef %8, ptr noundef %53, ptr noundef %55) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %92

57:                                               ; preds = %18
  %58 = tail call fastcc ptr @c_parser_asm_statement(ptr noundef nonnull %0) #12
  br label %94

59:                                               ; preds = %18
  %60 = load i32, ptr @c_language, align 4, !tbaa !676
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3851, ptr noundef nonnull @.str.2) #11
  br label %64

64:                                               ; preds = %59, %63
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %65 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 43) #12, !range !730
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = tail call ptr @objc_build_throw_stmt(i32 noundef %8, ptr noundef null) #11
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  br label %94

69:                                               ; preds = %64
  call fastcc void @c_parser_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %4, ptr noundef nonnull %0) #12
  %70 = load ptr, ptr %4, align 8, !tbaa !798
  %71 = tail call ptr @c_fully_fold(ptr noundef %70, i8 noundef zeroext 0, ptr noundef null) #11
  %72 = tail call ptr @objc_build_throw_stmt(i32 noundef %8, ptr noundef %71) #11
  br label %92

73:                                               ; preds = %18
  %74 = load i32, ptr @c_language, align 4, !tbaa !676
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3867, ptr noundef nonnull @.str.2) #11
  br label %78

78:                                               ; preds = %73, %77
  tail call fastcc void @c_parser_objc_try_catch_statement(ptr noundef nonnull %0) #12
  br label %109

79:                                               ; preds = %18
  %80 = load i32, ptr @c_language, align 4, !tbaa !676
  %81 = and i32 %80, 1
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3871, ptr noundef nonnull @.str.2) #11
  br label %84

84:                                               ; preds = %79, %83
  tail call fastcc void @c_parser_objc_synchronized_statement(ptr noundef nonnull %0) #12
  br label %109

85:                                               ; preds = %1
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  br label %109

86:                                               ; preds = %1, %1
  tail call fastcc void @c_parser_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.50) #12
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  br label %109

87:                                               ; preds = %1
  %88 = tail call fastcc zeroext i8 @c_parser_pragma(ptr noundef nonnull %0, i32 noundef 1) #12, !range !730
  br label %109

89:                                               ; preds = %1, %18
  call fastcc void @c_parser_expression_conv(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %5, ptr noundef nonnull %0) #12
  %90 = load ptr, ptr %5, align 8, !tbaa !798
  %91 = call ptr @c_finish_expr_stmt(i32 noundef %8, ptr noundef %90) #11
  br label %92

92:                                               ; preds = %31, %42, %39, %52, %69, %89, %45, %43
  %93 = phi ptr [ %91, %89 ], [ %72, %69 ], [ %56, %52 ], [ %46, %45 ], [ %44, %43 ], [ %35, %31 ], [ %41, %39 ], [ null, %42 ]
  call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %0, i32 noundef 43, ptr noundef nonnull @.str.7) #12
  br label %94

94:                                               ; preds = %50, %57, %67, %92
  %95 = phi ptr [ %93, %92 ], [ %68, %67 ], [ %58, %57 ], [ %51, %50 ]
  %96 = icmp eq ptr %95, null
  br i1 %96, label %109, label %97, !prof !1136

97:                                               ; preds = %94
  %98 = load i64, ptr %95, align 8
  %99 = and i64 %98, 65535
  %100 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !676
  %102 = add i32 %101, -4
  %103 = icmp ult i32 %102, 7
  br i1 %103, label %104, label %109, !prof !1137

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.tree_exp, ptr %95, i64 0, i32 1
  %106 = load i32, ptr %105, align 8, !tbaa !714
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109, !prof !1138

108:                                              ; preds = %104
  store i32 %8, ptr %105, align 8, !tbaa !714
  br label %109

109:                                              ; preds = %15, %23, %24, %25, %26, %27, %78, %84, %85, %86, %87, %108, %104, %97, %94
  %110 = and i8 %10, 4
  %111 = load i8, ptr %9, align 2
  %112 = and i8 %111, -5
  %113 = or disjoint i8 %112, %110
  store i8 %113, ptr %9, align 2
  ret void
}

; Function Attrs: optsize
declare ptr @do_case(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @define_label(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @decl_attributes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_compound_statement(ptr noundef %0) unnamed_addr #0 !prof !1139 !PGOFuncName !1140 {
  %2 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !720
  %5 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef %0, i32 noundef 41, ptr noundef nonnull @.str.19) #12, !range !730
  %6 = icmp eq i8 %5, 0
  %7 = tail call ptr @c_begin_compound_stmt(i8 noundef zeroext 1) #11
  br i1 %6, label %8, label %11, !prof !1141

8:                                                ; preds = %1
  %9 = tail call ptr @c_end_compound_stmt(i32 noundef %4, ptr noundef %7, i8 noundef zeroext 1) #11
  %10 = load ptr, ptr @global_trees, align 16, !tbaa !681
  br label %13

11:                                               ; preds = %1
  tail call fastcc void @c_parser_compound_statement_nostart(ptr noundef nonnull %0) #12
  %12 = tail call ptr @c_end_compound_stmt(i32 noundef %4, ptr noundef %7, i8 noundef zeroext 1) #11
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi ptr [ %12, %11 ], [ %10, %8 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_if_statement(ptr noundef %0) unnamed_addr #0 !prof !1142 !PGOFuncName !1143 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #13
  store i8 0, ptr %2, align 1, !tbaa !714
  %3 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 36) #12, !range !730
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6, !prof !1144

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4039, ptr noundef nonnull @.str.2) #11
  br label %6

6:                                                ; preds = %1, %5
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %7 = load i32, ptr @flag_isoc99, align 4, !tbaa !676
  %8 = trunc i32 %7 to i8
  %9 = tail call ptr @c_begin_compound_stmt(i8 noundef zeroext %8) #11
  %10 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %11 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !720
  %13 = tail call fastcc ptr @c_parser_paren_condition(ptr noundef %0) #12
  %14 = getelementptr inbounds %struct.c_parser, ptr %0, i64 0, i32 2
  %15 = load i8, ptr %14, align 2
  %16 = and i8 %15, 4
  %17 = or i8 %15, 4
  store i8 %17, ptr %14, align 2
  %18 = call fastcc ptr @c_parser_if_body(ptr noundef %0, ptr noundef nonnull %2) #12
  %19 = load i8, ptr %14, align 2
  %20 = and i8 %19, -5
  %21 = or disjoint i8 %20, %16
  store i8 %21, ptr %14, align 2
  %22 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 37) #12, !range !730
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %26, label %24, !prof !1145

24:                                               ; preds = %6
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %25 = tail call fastcc ptr @c_parser_else_body(ptr noundef nonnull %0) #12
  br label %26

26:                                               ; preds = %6, %24
  %27 = phi ptr [ %25, %24 ], [ null, %6 ]
  %28 = load i8, ptr %2, align 1, !tbaa !714
  tail call void @c_finish_if_stmt(i32 noundef %12, ptr noundef %13, ptr noundef %18, ptr noundef %27, i8 noundef zeroext %28) #11
  %29 = load i32, ptr @flag_isoc99, align 4, !tbaa !676
  %30 = trunc i32 %29 to i8
  %31 = tail call ptr @c_end_compound_stmt(i32 noundef %12, ptr noundef %9, i8 noundef zeroext %30) #11
  %32 = tail call ptr @add_stmt(ptr noundef %31) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_switch_statement(ptr noundef %0) unnamed_addr #0 !prof !1146 !PGOFuncName !1147 {
  %2 = alloca %struct.c_expr, align 8
  %3 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !720
  %6 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 41) #12, !range !730
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %9, !prof !1148

8:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4071, ptr noundef nonnull @.str.2) #11
  br label %9

9:                                                ; preds = %1, %8
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %10 = load i32, ptr @flag_isoc99, align 4, !tbaa !676
  %11 = trunc i32 %10 to i8
  %12 = tail call ptr @c_begin_compound_stmt(i8 noundef zeroext %11) #11
  %13 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef nonnull %0, i32 noundef 20, ptr noundef nonnull @.str.8) #12, !range !730
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15, !prof !1148

15:                                               ; preds = %9
  %16 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %17 = load i32, ptr %4, align 8, !tbaa !720
  call fastcc void @c_parser_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %2, ptr noundef nonnull %0) #12
  %18 = load ptr, ptr %2, align 8, !tbaa !798
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %0, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  br label %21

19:                                               ; preds = %9
  %20 = load ptr, ptr @global_trees, align 16, !tbaa !681
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi i32 [ %17, %15 ], [ 0, %19 ]
  %23 = phi ptr [ %18, %15 ], [ %20, %19 ]
  %24 = tail call ptr @c_start_case(i32 noundef %5, i32 noundef %22, ptr noundef %23) #11
  %25 = load ptr, ptr @c_break_label, align 8, !tbaa !681
  store ptr null, ptr @c_break_label, align 8, !tbaa !681
  %26 = tail call fastcc ptr @c_parser_c99_block_statement(ptr noundef nonnull %0) #12
  tail call void @c_finish_case(ptr noundef %26) #11
  %27 = load ptr, ptr @c_break_label, align 8, !tbaa !681
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29, !prof !1149

29:                                               ; preds = %21
  %30 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %31 = load i32, ptr %4, align 8, !tbaa !720
  %32 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !681
  %33 = load ptr, ptr @c_break_label, align 8, !tbaa !681
  %34 = tail call ptr @build1_stat(i32 noundef 133, ptr noundef %32, ptr noundef %33) #11
  %35 = getelementptr inbounds %struct.tree_exp, ptr %34, i64 0, i32 1
  store i32 %31, ptr %35, align 8, !tbaa !714
  %36 = tail call ptr @add_stmt(ptr noundef %34) #11
  br label %37

37:                                               ; preds = %29, %21
  store ptr %25, ptr @c_break_label, align 8, !tbaa !681
  %38 = load i32, ptr @flag_isoc99, align 4, !tbaa !676
  %39 = trunc i32 %38 to i8
  %40 = tail call ptr @c_end_compound_stmt(i32 noundef %5, ptr noundef %12, i8 noundef zeroext %39) #11
  %41 = tail call ptr @add_stmt(ptr noundef %40) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_while_statement(ptr noundef %0) unnamed_addr #0 !prof !1150 !PGOFuncName !1151 {
  %2 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 38) #12, !range !730
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !1152

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4112, ptr noundef nonnull @.str.2) #11
  br label %5

5:                                                ; preds = %1, %4
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %6 = load i32, ptr @flag_isoc99, align 4, !tbaa !676
  %7 = trunc i32 %6 to i8
  %8 = tail call ptr @c_begin_compound_stmt(i8 noundef zeroext %7) #11
  %9 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %10 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !720
  %12 = tail call fastcc ptr @c_parser_paren_condition(ptr noundef %0) #12
  %13 = load ptr, ptr @c_break_label, align 8, !tbaa !681
  store ptr null, ptr @c_break_label, align 8, !tbaa !681
  %14 = load ptr, ptr @c_cont_label, align 8, !tbaa !681
  store ptr null, ptr @c_cont_label, align 8, !tbaa !681
  %15 = tail call fastcc ptr @c_parser_c99_block_statement(ptr noundef %0) #12
  %16 = load ptr, ptr @c_break_label, align 8, !tbaa !681
  %17 = load ptr, ptr @c_cont_label, align 8, !tbaa !681
  tail call void @c_finish_loop(i32 noundef %11, ptr noundef %12, ptr noundef null, ptr noundef %15, ptr noundef %16, ptr noundef %17, i8 noundef zeroext 1) #11
  %18 = load i32, ptr @flag_isoc99, align 4, !tbaa !676
  %19 = trunc i32 %18 to i8
  %20 = tail call ptr @c_end_compound_stmt(i32 noundef %11, ptr noundef %8, i8 noundef zeroext %19) #11
  %21 = tail call ptr @add_stmt(ptr noundef %20) #11
  store ptr %13, ptr @c_break_label, align 8, !tbaa !681
  store ptr %14, ptr @c_cont_label, align 8, !tbaa !681
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_do_statement(ptr noundef %0) unnamed_addr #0 !prof !822 !PGOFuncName !1153 {
  %2 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 39) #12, !range !730
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !824

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4139, ptr noundef nonnull @.str.2) #11
  br label %5

5:                                                ; preds = %1, %4
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %6 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 43) #12, !range !730
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8, !prof !1154

8:                                                ; preds = %5
  %9 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %10 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !720
  %12 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %11, i32 noundef 74, ptr noundef nonnull @.str.53) #11
  br label %13

13:                                               ; preds = %8, %5
  %14 = load i32, ptr @flag_isoc99, align 4, !tbaa !676
  %15 = trunc i32 %14 to i8
  %16 = tail call ptr @c_begin_compound_stmt(i8 noundef zeroext %15) #11
  %17 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %18 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %19 = load i32, ptr %18, align 8, !tbaa !720
  %20 = load ptr, ptr @c_break_label, align 8, !tbaa !681
  store ptr null, ptr @c_break_label, align 8, !tbaa !681
  %21 = load ptr, ptr @c_cont_label, align 8, !tbaa !681
  store ptr null, ptr @c_cont_label, align 8, !tbaa !681
  %22 = tail call fastcc ptr @c_parser_c99_block_statement(ptr noundef %0) #12
  tail call fastcc void @c_parser_require_keyword(ptr noundef %0, i32 noundef 38, ptr noundef nonnull @.str.54) #12
  %23 = load ptr, ptr @c_break_label, align 8, !tbaa !681
  store ptr %20, ptr @c_break_label, align 8, !tbaa !681
  %24 = load ptr, ptr @c_cont_label, align 8, !tbaa !681
  store ptr %21, ptr @c_cont_label, align 8, !tbaa !681
  %25 = tail call fastcc ptr @c_parser_paren_condition(ptr noundef %0) #12
  %26 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef %0, i32 noundef 43, ptr noundef nonnull @.str.7) #12, !range !730
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %29, !prof !824

28:                                               ; preds = %13
  tail call fastcc void @c_parser_skip_to_end_of_block_or_statement(ptr noundef nonnull %0) #12
  br label %29

29:                                               ; preds = %28, %13
  tail call void @c_finish_loop(i32 noundef %19, ptr noundef %25, ptr noundef null, ptr noundef %22, ptr noundef %23, ptr noundef %24, i8 noundef zeroext 0) #11
  %30 = load i32, ptr @flag_isoc99, align 4, !tbaa !676
  %31 = trunc i32 %30 to i8
  %32 = tail call ptr @c_end_compound_stmt(i32 noundef %19, ptr noundef %16, i8 noundef zeroext %31) #11
  %33 = tail call ptr @add_stmt(ptr noundef %32) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_for_statement(ptr noundef %0) unnamed_addr #0 !prof !1155 !PGOFuncName !1156 {
  %2 = alloca %struct.c_expr, align 8
  %3 = alloca %struct.c_expr, align 8
  %4 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !720
  %7 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %8 = load i32, ptr %5, align 8, !tbaa !720
  %9 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 40) #12, !range !730
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12, !prof !1157

11:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4186, ptr noundef nonnull @.str.2) #11
  br label %12

12:                                               ; preds = %1, %11
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %13 = load i32, ptr @flag_isoc99, align 4, !tbaa !676
  %14 = trunc i32 %13 to i8
  %15 = tail call ptr @c_begin_compound_stmt(i8 noundef zeroext %14) #11
  %16 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef nonnull %0, i32 noundef 20, ptr noundef nonnull @.str.8) #12, !range !730
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %71, label %18, !prof !1157

18:                                               ; preds = %12
  %19 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 43) #12, !range !730
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21, !prof !1158

21:                                               ; preds = %18
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %22 = tail call ptr @c_finish_expr_stmt(i32 noundef %6, ptr noundef null) #11
  br label %56

23:                                               ; preds = %18
  %24 = tail call fastcc zeroext i8 @c_parser_next_token_starts_declspecs(ptr noundef nonnull %0) #12, !range !730
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26, !prof !1159

26:                                               ; preds = %23
  tail call fastcc void @c_parser_declaration_or_fndef(ptr noundef nonnull %0, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  %27 = tail call ptr @check_for_loop_decls(i32 noundef %8) #11
  br label %56

28:                                               ; preds = %23
  %29 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef nonnull %0, i32 noundef 54) #12, !range !730
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %53, label %31, !prof !1159

31:                                               ; preds = %28
  %32 = tail call fastcc ptr @c_parser_peek_2nd_token(ptr noundef nonnull %0) #12
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 255
  %35 = icmp eq i32 %34, 74
  br i1 %35, label %36, label %46

36:                                               ; preds = %31, %41
  %37 = tail call fastcc ptr @c_parser_peek_2nd_token(ptr noundef %0) #12
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 16711680
  %40 = icmp eq i32 %39, 3538944
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %42 = tail call fastcc ptr @c_parser_peek_2nd_token(ptr noundef %0) #12
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 255
  %45 = icmp eq i32 %44, 74
  br i1 %45, label %36, label %46, !llvm.loop !1160

46:                                               ; preds = %36, %41, %31
  %47 = tail call fastcc ptr @c_parser_peek_2nd_token(ptr noundef %0) #12
  %48 = tail call fastcc zeroext i8 @c_token_starts_declspecs(ptr noundef nonnull %47) #12, !range !730
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = tail call fastcc i32 @disable_extension_diagnostics() #12
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  tail call fastcc void @c_parser_declaration_or_fndef(ptr noundef %0, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  tail call fastcc void @restore_extension_diagnostics(i32 noundef %51) #12
  %52 = tail call ptr @check_for_loop_decls(i32 noundef %8) #11
  br label %56

53:                                               ; preds = %28, %46
  call fastcc void @c_parser_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %2, ptr noundef %0) #12
  %54 = load ptr, ptr %2, align 8, !tbaa !798
  %55 = tail call ptr @c_finish_expr_stmt(i32 noundef %6, ptr noundef %54) #11
  tail call fastcc void @c_parser_skip_until_found(ptr noundef %0, i32 noundef 43, ptr noundef nonnull @.str.7) #12
  br label %56

56:                                               ; preds = %26, %53, %50, %21
  %57 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 43) #12, !range !730
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %60, label %59, !prof !1161

59:                                               ; preds = %56
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  br label %62

60:                                               ; preds = %56
  %61 = tail call fastcc ptr @c_parser_condition(ptr noundef %0) #12
  tail call fastcc void @c_parser_skip_until_found(ptr noundef %0, i32 noundef 43, ptr noundef nonnull @.str.7) #12
  br label %62

62:                                               ; preds = %60, %59
  %63 = phi ptr [ null, %59 ], [ %61, %60 ]
  %64 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 21) #12, !range !730
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %68, !prof !1162

66:                                               ; preds = %62
  call fastcc void @c_parser_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %3, ptr noundef %0) #12
  %67 = load ptr, ptr %3, align 8, !tbaa !798
  br label %68

68:                                               ; preds = %62, %66
  %69 = phi ptr [ %67, %66 ], [ null, %62 ]
  %70 = tail call ptr @c_process_expr_stmt(i32 noundef %6, ptr noundef %69) #11
  tail call fastcc void @c_parser_skip_until_found(ptr noundef %0, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  br label %73

71:                                               ; preds = %12
  %72 = load ptr, ptr @global_trees, align 16, !tbaa !681
  br label %73

73:                                               ; preds = %71, %68
  %74 = phi ptr [ %70, %68 ], [ %72, %71 ]
  %75 = phi ptr [ %63, %68 ], [ %72, %71 ]
  %76 = load ptr, ptr @c_break_label, align 8, !tbaa !681
  store ptr null, ptr @c_break_label, align 8, !tbaa !681
  %77 = load ptr, ptr @c_cont_label, align 8, !tbaa !681
  store ptr null, ptr @c_cont_label, align 8, !tbaa !681
  %78 = tail call fastcc ptr @c_parser_c99_block_statement(ptr noundef %0) #12
  %79 = load ptr, ptr @c_break_label, align 8, !tbaa !681
  %80 = load ptr, ptr @c_cont_label, align 8, !tbaa !681
  tail call void @c_finish_loop(i32 noundef %6, ptr noundef %75, ptr noundef %74, ptr noundef %78, ptr noundef %79, ptr noundef %80, i8 noundef zeroext 1) #11
  %81 = load i32, ptr @flag_isoc99, align 4, !tbaa !676
  %82 = trunc i32 %81 to i8
  %83 = tail call ptr @c_end_compound_stmt(i32 noundef %6, ptr noundef %15, i8 noundef zeroext %82) #11
  %84 = tail call ptr @add_stmt(ptr noundef %83) #11
  store ptr %76, ptr @c_break_label, align 8, !tbaa !681
  store ptr %77, ptr @c_cont_label, align 8, !tbaa !681
  ret void
}

; Function Attrs: optsize
declare ptr @c_finish_goto_label(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @c_finish_goto_ptr(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @c_finish_bc_stmt(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @c_finish_return(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_asm_statement(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !1163 {
  %2 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !720
  %5 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 49) #12, !range !730
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4293, ptr noundef nonnull @.str.2) #11
  br label %8

8:                                                ; preds = %1, %7
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %9 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef nonnull %0, i32 noundef 9) #12, !range !730
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %13 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !698
  br label %28

15:                                               ; preds = %8
  %16 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef nonnull %0, i32 noundef 3) #12, !range !730
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef nonnull %0, i32 noundef 12) #12, !range !730
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %18, %15
  %22 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %23 = load i32, ptr %3, align 8, !tbaa !720
  %24 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %25 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !698
  %27 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %23, i32 noundef 0, ptr noundef nonnull @.str.55, ptr noundef %26) #11
  br label %28

28:                                               ; preds = %11, %21
  %29 = phi ptr [ null, %21 ], [ %14, %11 ]
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  br label %30

30:                                               ; preds = %28, %18
  %31 = phi ptr [ null, %18 ], [ %29, %28 ]
  %32 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef nonnull %0, i32 noundef 47) #12, !range !730
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  br label %35

35:                                               ; preds = %34, %30
  %36 = phi i32 [ 4, %34 ], [ 3, %30 ]
  %37 = getelementptr inbounds %struct.c_parser, ptr %0, i64 0, i32 2
  %38 = load i8, ptr %37, align 2
  %39 = or i8 %38, 8
  store i8 %39, ptr %37, align 2
  %40 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef nonnull %0, i32 noundef 20, ptr noundef nonnull @.str.8) #12, !range !730
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %113, label %42

42:                                               ; preds = %35
  %43 = tail call fastcc ptr @c_parser_asm_string_literal(ptr noundef nonnull %0) #12
  %44 = icmp eq ptr %43, null
  br i1 %44, label %117, label %45

45:                                               ; preds = %42
  %46 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 21) #12, !range !730
  %47 = icmp eq i8 %46, 0
  %48 = or i1 %33, %47
  br i1 %48, label %49, label %97

49:                                               ; preds = %45
  %50 = select i1 %33, ptr @.str.15, ptr @.str.56
  br label %51

51:                                               ; preds = %49, %90
  %52 = phi i32 [ 0, %49 ], [ %95, %90 ]
  %53 = phi ptr [ null, %49 ], [ %91, %90 ]
  %54 = phi ptr [ null, %49 ], [ %92, %90 ]
  %55 = phi ptr [ null, %49 ], [ %93, %90 ]
  %56 = phi ptr [ null, %49 ], [ %94, %90 ]
  %57 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef %0, i32 noundef 18, ptr noundef nonnull %50) #12, !range !730
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %117, label %59

59:                                               ; preds = %51
  %60 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 18) #12, !range !730
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 21) #12, !range !730
  %64 = icmp eq i8 %63, 0
  %65 = icmp eq i32 %52, 3
  %66 = or i1 %65, %64
  br i1 %66, label %69, label %82

67:                                               ; preds = %59
  %68 = icmp eq i32 %52, 3
  br i1 %68, label %79, label %82

69:                                               ; preds = %62
  switch i32 %52, label %81 [
    i32 0, label %70
    i32 1, label %75
    i32 2, label %77
    i32 3, label %79
  ]

70:                                               ; preds = %69
  br i1 %33, label %71, label %73

71:                                               ; preds = %70
  %72 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 21) #12, !range !730
  br label %90

73:                                               ; preds = %70
  %74 = tail call fastcc ptr @c_parser_asm_operands(ptr noundef %0, i8 noundef zeroext 0) #12
  br label %82

75:                                               ; preds = %69
  %76 = tail call fastcc ptr @c_parser_asm_operands(ptr noundef %0, i8 noundef zeroext 1) #12
  br label %82

77:                                               ; preds = %69
  %78 = tail call fastcc ptr @c_parser_asm_clobbers(ptr noundef %0) #12
  br label %82

79:                                               ; preds = %67, %69
  %80 = tail call fastcc ptr @c_parser_asm_goto_operands(ptr noundef %0) #12
  br label %82

81:                                               ; preds = %69
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4375, ptr noundef nonnull @.str.2) #11
  br label %82

82:                                               ; preds = %67, %75, %77, %79, %81, %73, %62
  %83 = phi ptr [ %56, %81 ], [ %56, %79 ], [ %56, %77 ], [ %76, %75 ], [ %56, %73 ], [ %56, %67 ], [ %56, %62 ]
  %84 = phi ptr [ %55, %81 ], [ %55, %79 ], [ %78, %77 ], [ %55, %75 ], [ %55, %73 ], [ %55, %67 ], [ %55, %62 ]
  %85 = phi ptr [ %54, %81 ], [ %80, %79 ], [ %54, %77 ], [ %54, %75 ], [ %54, %73 ], [ %54, %67 ], [ %54, %62 ]
  %86 = phi ptr [ %53, %81 ], [ %53, %79 ], [ %53, %77 ], [ %53, %75 ], [ %74, %73 ], [ %53, %67 ], [ %53, %62 ]
  %87 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 21) #12, !range !730
  %88 = icmp eq i8 %87, 0
  %89 = or i1 %33, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %71, %82
  %91 = phi ptr [ %53, %71 ], [ %86, %82 ]
  %92 = phi ptr [ %54, %71 ], [ %85, %82 ]
  %93 = phi ptr [ %55, %71 ], [ %84, %82 ]
  %94 = phi ptr [ %56, %71 ], [ %83, %82 ]
  %95 = add nuw nsw i32 %52, 1
  %96 = icmp eq i32 %95, %36
  br i1 %96, label %97, label %51, !llvm.loop !1164

97:                                               ; preds = %90, %82, %45
  %98 = phi ptr [ null, %45 ], [ %94, %90 ], [ %83, %82 ]
  %99 = phi ptr [ null, %45 ], [ %93, %90 ], [ %84, %82 ]
  %100 = phi ptr [ null, %45 ], [ %92, %90 ], [ %85, %82 ]
  %101 = phi i8 [ 1, %45 ], [ 0, %82 ], [ 0, %90 ]
  %102 = phi ptr [ null, %45 ], [ %91, %90 ], [ %86, %82 ]
  %103 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef %0, i32 noundef 21, ptr noundef nonnull @.str.9) #12, !range !730
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  tail call fastcc void @c_parser_skip_until_found(ptr noundef %0, i32 noundef 21, ptr noundef null) #12
  br label %113

106:                                              ; preds = %97
  %107 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef %0, i32 noundef 43, ptr noundef nonnull @.str.7) #12, !range !730
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  tail call fastcc void @c_parser_skip_to_end_of_block_or_statement(ptr noundef %0) #12
  br label %110

110:                                              ; preds = %109, %106
  %111 = tail call ptr @build_asm_expr(i32 noundef %4, ptr noundef nonnull %43, ptr noundef %102, ptr noundef %98, ptr noundef %99, ptr noundef %100, i8 noundef zeroext %101) #11
  %112 = tail call ptr @build_asm_stmt(ptr noundef %31, ptr noundef %111) #11
  br label %113

113:                                              ; preds = %35, %117, %110, %105
  %114 = phi ptr [ null, %117 ], [ %112, %110 ], [ null, %105 ], [ null, %35 ]
  %115 = load i8, ptr %37, align 2
  %116 = and i8 %115, -9
  store i8 %116, ptr %37, align 2
  ret ptr %114

117:                                              ; preds = %51, %42
  tail call fastcc void @c_parser_skip_until_found(ptr noundef %0, i32 noundef 21, ptr noundef null) #12
  br label %113
}

; Function Attrs: optsize
declare ptr @objc_build_throw_stmt(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_objc_try_catch_statement(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !1165 {
  %2 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 87) #12, !range !730
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6715, ptr noundef nonnull @.str.2) #11
  br label %5

5:                                                ; preds = %1, %4
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %6 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %7 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !720
  %9 = tail call fastcc ptr @c_parser_compound_statement(ptr noundef %0) #12
  tail call void @objc_begin_try_stmt(i32 noundef %8, ptr noundef %9) #11
  %10 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 77) #12, !range !730
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %5, %24
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %13 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef %0, i32 noundef 20, ptr noundef nonnull @.str.8) #12, !range !730
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %27, label %15

15:                                               ; preds = %12
  %16 = tail call fastcc ptr @c_parser_parameter_declaration(ptr noundef %0, ptr noundef null) #12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  tail call fastcc void @c_parser_skip_until_found(ptr noundef %0, i32 noundef 21, ptr noundef null) #12
  br label %27

19:                                               ; preds = %15
  tail call fastcc void @c_parser_skip_until_found(ptr noundef %0, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  %20 = tail call ptr @grokparm(ptr noundef nonnull %16) #11
  tail call void @objc_begin_catch_clause(ptr noundef %20) #11
  %21 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef %0, i32 noundef 41, ptr noundef nonnull @.str.19) #12, !range !730
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call fastcc void @c_parser_compound_statement_nostart(ptr noundef %0) #12
  br label %24

24:                                               ; preds = %19, %23
  tail call void @objc_finish_catch_clause() #11
  %25 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 77) #12, !range !730
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %12

27:                                               ; preds = %24, %12, %5, %18
  %28 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 132) #12, !range !730
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %31 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %32 = load i32, ptr %7, align 8, !tbaa !720
  %33 = tail call fastcc ptr @c_parser_compound_statement(ptr noundef %0) #12
  tail call void @objc_build_finally_clause(i32 noundef %32, ptr noundef %33) #11
  br label %34

34:                                               ; preds = %30, %27
  %35 = tail call ptr @objc_finish_try_stmt() #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_objc_synchronized_statement(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !1166 {
  %2 = alloca %struct.c_expr, align 8
  %3 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 133) #12, !range !730
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6761, ptr noundef nonnull @.str.2) #11
  br label %6

6:                                                ; preds = %1, %5
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %7 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %8 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !720
  %10 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef %0, i32 noundef 20, ptr noundef nonnull @.str.8) #12, !range !730
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  call fastcc void @c_parser_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %2, ptr noundef nonnull %0) #12
  %13 = load ptr, ptr %2, align 8, !tbaa !798
  %14 = tail call ptr @c_fully_fold(ptr noundef %13, i8 noundef zeroext 0, ptr noundef null) #11
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %0, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  br label %17

15:                                               ; preds = %6
  %16 = load ptr, ptr @global_trees, align 16, !tbaa !681
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi ptr [ %14, %12 ], [ %16, %15 ]
  %19 = tail call fastcc ptr @c_parser_compound_statement(ptr noundef nonnull %0) #12
  %20 = tail call ptr @objc_build_synchronized(i32 noundef %9, ptr noundef %18, ptr noundef %19) #11
  ret void
}

; Function Attrs: optsize
declare ptr @c_finish_expr_stmt(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @c_begin_compound_stmt(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @c_end_compound_stmt(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_paren_condition(ptr noundef %0) unnamed_addr #0 !prof !1167 !PGOFuncName !1168 {
  %2 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef %0, i32 noundef 20, ptr noundef nonnull @.str.8) #12, !range !730
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6, !prof !1169

4:                                                ; preds = %1
  %5 = load ptr, ptr @global_trees, align 16, !tbaa !681
  br label %8

6:                                                ; preds = %1
  %7 = tail call fastcc ptr @c_parser_condition(ptr noundef %0) #12
  tail call fastcc void @c_parser_skip_until_found(ptr noundef %0, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi ptr [ %7, %6 ], [ %5, %4 ]
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_if_body(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !1142 !PGOFuncName !1170 {
  %3 = load i32, ptr @flag_isoc99, align 4, !tbaa !676
  %4 = trunc i32 %3 to i8
  %5 = tail call ptr @c_begin_compound_stmt(i8 noundef zeroext %4) #11
  %6 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %7 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !720
  br label %9

9:                                                ; preds = %23, %2
  %10 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 42) #12, !range !730
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %23, !prof !1171

12:                                               ; preds = %9
  %13 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 43) #12, !range !730
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %23, !prof !1171

15:                                               ; preds = %12
  %16 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 53) #12, !range !730
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %24, label %18, !prof !1172

18:                                               ; preds = %15
  %19 = tail call fastcc ptr @c_parser_peek_2nd_token(ptr noundef %0) #12
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 255
  %22 = icmp eq i32 %21, 18
  br i1 %22, label %23, label %24, !prof !1173

23:                                               ; preds = %12, %9, %18
  tail call fastcc void @c_parser_label(ptr noundef %0) #12
  br label %9, !llvm.loop !1174

24:                                               ; preds = %15, %18
  %25 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 36) #12, !range !730
  store i8 %25, ptr %1, align 1, !tbaa !714
  %26 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 43) #12, !range !730
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %37, label %28, !prof !1175

28:                                               ; preds = %24
  %29 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %30 = load i32, ptr %7, align 8, !tbaa !720
  %31 = tail call ptr @build_empty_stmt(i32 noundef %30) #11
  %32 = tail call ptr @add_stmt(ptr noundef %31) #11
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %33 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 37) #12, !range !730
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %44, !prof !1176

35:                                               ; preds = %28
  %36 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %30, i32 noundef 74, ptr noundef nonnull @.str.51) #11
  br label %44

37:                                               ; preds = %24
  %38 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 41) #12, !range !730
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %43, label %40, !prof !1177

40:                                               ; preds = %37
  %41 = tail call fastcc ptr @c_parser_compound_statement(ptr noundef %0) #12
  %42 = tail call ptr @add_stmt(ptr noundef %41) #11
  br label %44

43:                                               ; preds = %37
  tail call fastcc void @c_parser_statement_after_labels(ptr noundef %0) #12
  br label %44

44:                                               ; preds = %28, %35, %40, %43
  %45 = load i32, ptr @flag_isoc99, align 4, !tbaa !676
  %46 = trunc i32 %45 to i8
  %47 = tail call ptr @c_end_compound_stmt(i32 noundef %8, ptr noundef %5, i8 noundef zeroext %46) #11
  ret ptr %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_else_body(ptr noundef %0) unnamed_addr #0 !prof !1178 !PGOFuncName !1179 {
  %2 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !720
  %5 = load i32, ptr @flag_isoc99, align 4, !tbaa !676
  %6 = trunc i32 %5 to i8
  %7 = tail call ptr @c_begin_compound_stmt(i8 noundef zeroext %6) #11
  br label %8

8:                                                ; preds = %22, %1
  %9 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 42) #12, !range !730
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %22, !prof !1180

11:                                               ; preds = %8
  %12 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 43) #12, !range !730
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %22, !prof !1180

14:                                               ; preds = %11
  %15 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 53) #12, !range !730
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %23, label %17, !prof !1181

17:                                               ; preds = %14
  %18 = tail call fastcc ptr @c_parser_peek_2nd_token(ptr noundef %0) #12
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 255
  %21 = icmp eq i32 %20, 18
  br i1 %21, label %22, label %23, !prof !1182

22:                                               ; preds = %11, %8, %17
  tail call fastcc void @c_parser_label(ptr noundef %0) #12
  br label %8, !llvm.loop !1183

23:                                               ; preds = %14, %17
  %24 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 43) #12, !range !730
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %32, label %26, !prof !1184

26:                                               ; preds = %23
  %27 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %28 = load i32, ptr %3, align 8, !tbaa !720
  %29 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %28, i32 noundef 74, ptr noundef nonnull @.str.52) #11
  %30 = tail call ptr @build_empty_stmt(i32 noundef %28) #11
  %31 = tail call ptr @add_stmt(ptr noundef %30) #11
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  br label %33

32:                                               ; preds = %23
  tail call fastcc void @c_parser_statement_after_labels(ptr noundef %0) #12
  br label %33

33:                                               ; preds = %32, %26
  %34 = load i32, ptr @flag_isoc99, align 4, !tbaa !676
  %35 = trunc i32 %34 to i8
  %36 = tail call ptr @c_end_compound_stmt(i32 noundef %4, ptr noundef %7, i8 noundef zeroext %35) #11
  ret ptr %36
}

; Function Attrs: optsize
declare void @c_finish_if_stmt(i32 noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_condition(ptr noundef %0) unnamed_addr #0 !prof !1185 !PGOFuncName !1186 {
  %2 = alloca %struct.c_expr, align 8
  %3 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !720
  call fastcc void @c_parser_expression_conv(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %2, ptr noundef %0) #12
  %6 = load ptr, ptr %2, align 8, !tbaa !798
  %7 = call ptr @c_objc_common_truthvalue_conversion(i32 noundef %5, ptr noundef %6) #11
  %8 = call ptr @c_fully_fold(ptr noundef %7, i8 noundef zeroext 0, ptr noundef null) #11
  %9 = load i32, ptr @warn_sequence_point, align 4, !tbaa !676
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !1187

11:                                               ; preds = %1
  call void @verify_sequence_points(ptr noundef %8) #11
  br label %12

12:                                               ; preds = %11, %1
  ret ptr %8
}

; Function Attrs: optsize
declare void @verify_sequence_points(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_empty_stmt(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @c_start_case(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_c99_block_statement(ptr noundef %0) unnamed_addr #0 !prof !1188 !PGOFuncName !1189 {
  %2 = load i32, ptr @flag_isoc99, align 4, !tbaa !676
  %3 = trunc i32 %2 to i8
  %4 = tail call ptr @c_begin_compound_stmt(i8 noundef zeroext %3) #11
  %5 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %6 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !720
  tail call fastcc void @c_parser_statement(ptr noundef %0) #12
  %8 = load i32, ptr @flag_isoc99, align 4, !tbaa !676
  %9 = trunc i32 %8 to i8
  %10 = tail call ptr @c_end_compound_stmt(i32 noundef %7, ptr noundef %4, i8 noundef zeroext %9) #11
  ret ptr %10
}

; Function Attrs: optsize
declare void @c_finish_case(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_statement(ptr noundef %0) unnamed_addr #0 !prof !1188 !PGOFuncName !1190 {
  br label %2

2:                                                ; preds = %16, %1
  %3 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 42) #12, !range !730
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %16, !prof !1191

5:                                                ; preds = %2
  %6 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 43) #12, !range !730
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %16, !prof !1191

8:                                                ; preds = %5
  %9 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 53) #12, !range !730
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %17, label %11, !prof !1192

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @c_parser_peek_2nd_token(ptr noundef %0) #12
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, 18
  br i1 %15, label %16, label %17, !prof !1193

16:                                               ; preds = %5, %2, %11
  tail call fastcc void @c_parser_label(ptr noundef %0) #12
  br label %2, !llvm.loop !1194

17:                                               ; preds = %8, %11
  tail call fastcc void @c_parser_statement_after_labels(ptr noundef %0) #12
  ret void
}

; Function Attrs: optsize
declare void @c_finish_loop(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_skip_to_end_of_block_or_statement(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !1195 {
  %2 = getelementptr inbounds %struct.c_parser, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 2
  %4 = and i8 %3, 1
  br label %5

5:                                                ; preds = %26, %1
  %6 = phi i32 [ %27, %26 ], [ 0, %1 ]
  br label %7

7:                                                ; preds = %5, %22
  %8 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %9 = load i32, ptr %0, align 8
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %26 [
    i8 22, label %31
    i8 71, label %11
    i8 43, label %15
    i8 42, label %17
    i8 41, label %20
    i8 70, label %22
  ]

11:                                               ; preds = %7
  %12 = load i8, ptr %2, align 2
  %13 = and i8 %12, 2
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %26, label %31

15:                                               ; preds = %7
  %16 = icmp eq i32 %6, 0
  br i1 %16, label %28, label %26

17:                                               ; preds = %7
  %18 = add i32 %6, -1
  %19 = icmp ult i32 %6, 2
  br i1 %19, label %28, label %26

20:                                               ; preds = %7
  %21 = add i32 %6, 1
  br label %26

22:                                               ; preds = %7
  tail call fastcc void @c_parser_consume_pragma(ptr noundef nonnull %0) #12
  tail call fastcc void @c_parser_skip_to_pragma_eol(ptr noundef nonnull %0) #12
  %23 = load i8, ptr %2, align 2
  %24 = and i8 %23, -2
  %25 = or disjoint i8 %24, %4
  store i8 %25, ptr %2, align 2
  br label %7

26:                                               ; preds = %7, %17, %15, %11, %20
  %27 = phi i32 [ %21, %20 ], [ %6, %15 ], [ %6, %11 ], [ %18, %17 ], [ %6, %7 ]
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  br label %5

28:                                               ; preds = %17, %15
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %29 = load i8, ptr %2, align 2
  %30 = and i8 %29, -2
  store i8 %30, ptr %2, align 2
  br label %31

31:                                               ; preds = %7, %11, %28
  ret void
}

; Function Attrs: optsize
declare ptr @check_for_loop_decls(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @c_process_expr_stmt(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_asm_operands(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !697 !PGOFuncName !1196 {
  %3 = alloca %struct.c_expr, align 8
  %4 = alloca %struct.c_expr, align 8
  %5 = alloca %struct.c_expr, align 8
  %6 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %struct.c_parser, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %9 = icmp eq i8 %1, 0
  br label %10

10:                                               ; preds = %58, %2
  %11 = phi ptr [ null, %2 ], [ %54, %58 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  %12 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 39) #12, !range !730
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %10
  call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %15 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 53) #12, !range !730
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  %18 = call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %19 = load ptr, ptr %6, align 8, !tbaa !698
  call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %20 = getelementptr inbounds %struct.tree_identifier, ptr %19, i64 0, i32 1
  %21 = getelementptr inbounds %struct.tree_identifier, ptr %19, i64 0, i32 1, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !714
  %23 = load ptr, ptr %20, align 8, !tbaa !714
  %24 = call ptr @build_string(i32 noundef %22, ptr noundef %23) #11
  call fastcc void @c_parser_skip_until_found(ptr noundef %0, i32 noundef 40, ptr noundef nonnull @.str.22) #12
  br label %26

25:                                               ; preds = %14
  call fastcc void @c_parser_error(ptr noundef %0, ptr noundef nonnull @.str.12) #12
  call fastcc void @c_parser_skip_until_found(ptr noundef %0, i32 noundef 40, ptr noundef null) #12
  br label %57

26:                                               ; preds = %10, %17
  %27 = phi ptr [ %24, %17 ], [ null, %10 ]
  %28 = call fastcc ptr @c_parser_asm_string_literal(ptr noundef %0) #12
  %29 = icmp eq ptr %28, null
  br i1 %29, label %57, label %30

30:                                               ; preds = %26
  %31 = load i8, ptr %7, align 2
  %32 = and i8 %31, -9
  store i8 %32, ptr %7, align 2
  %33 = call fastcc zeroext i8 @c_parser_require(ptr noundef %0, i32 noundef 20, ptr noundef nonnull @.str.8) #12, !range !730
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i8, ptr %7, align 2
  %37 = or i8 %36, 8
  store i8 %37, ptr %7, align 2
  br label %57

38:                                               ; preds = %30
  %39 = call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %40 = load i32, ptr %8, align 8, !tbaa !720
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call fastcc void @c_parser_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %4, ptr noundef nonnull %0) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  br i1 %9, label %42, label %41

41:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %5, i32 noundef %40, ptr noundef nonnull byval(%struct.c_expr) align 8 %3) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  br label %42

42:                                               ; preds = %41, %38
  %43 = load ptr, ptr %3, align 8, !tbaa !798
  %44 = call ptr @c_fully_fold(ptr noundef %43, i8 noundef zeroext 0, ptr noundef null) #11
  store ptr %44, ptr %3, align 8, !tbaa !798
  %45 = load i8, ptr %7, align 2
  %46 = or i8 %45, 8
  store i8 %46, ptr %7, align 2
  %47 = call fastcc zeroext i8 @c_parser_require(ptr noundef nonnull %0, i32 noundef 21, ptr noundef nonnull @.str.9) #12, !range !730
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %0, i32 noundef 21, ptr noundef null) #12
  br label %57

50:                                               ; preds = %42
  %51 = call ptr @build_tree_list_stat(ptr noundef %27, ptr noundef nonnull %28) #11
  %52 = load ptr, ptr %3, align 8, !tbaa !798
  %53 = call ptr @build_tree_list_stat(ptr noundef %51, ptr noundef %52) #11
  %54 = call ptr @chainon(ptr noundef %11, ptr noundef %53) #11
  %55 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 19) #12, !range !730
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %59, label %58

57:                                               ; preds = %26, %49, %35, %25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %60

58:                                               ; preds = %50
  call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %10

59:                                               ; preds = %50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %60

60:                                               ; preds = %57, %59
  %61 = phi ptr [ %54, %59 ], [ null, %57 ]
  ret ptr %61
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_asm_clobbers(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !1197 {
  %2 = tail call fastcc ptr @c_parser_asm_string_literal(ptr noundef %0) #12
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1, %10
  %5 = phi ptr [ %11, %10 ], [ %2, %1 ]
  %6 = phi ptr [ %7, %10 ], [ null, %1 ]
  %7 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %5, ptr noundef %6) #11
  %8 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 19) #12, !range !730
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %11 = tail call fastcc ptr @c_parser_asm_string_literal(ptr noundef %0) #12
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4

13:                                               ; preds = %4, %10, %1
  %14 = phi ptr [ null, %1 ], [ null, %10 ], [ %7, %4 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_asm_goto_operands(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !1198 {
  %2 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 53) #12, !range !730
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  br label %7

7:                                                ; preds = %4, %26
  %8 = phi ptr [ null, %4 ], [ %20, %26 ]
  %9 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %10 = load ptr, ptr %5, align 8, !tbaa !698
  %11 = load i32, ptr %6, align 8, !tbaa !720
  %12 = tail call ptr @lookup_label_for_goto(i32 noundef %11, ptr noundef %10) #11
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %13 = load i64, ptr %12, align 8
  %14 = or i64 %13, 16777216
  store i64 %14, ptr %12, align 8
  %15 = getelementptr inbounds %struct.tree_identifier, ptr %10, i64 0, i32 1
  %16 = getelementptr inbounds %struct.tree_identifier, ptr %10, i64 0, i32 1, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !714
  %18 = load ptr, ptr %15, align 8, !tbaa !714
  %19 = tail call ptr @build_string(i32 noundef %17, ptr noundef %18) #11
  %20 = tail call ptr @tree_cons_stat(ptr noundef %19, ptr noundef nonnull %12, ptr noundef %8) #11
  %21 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 19) #12, !range !730
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %26

23:                                               ; preds = %26, %1
  tail call fastcc void @c_parser_error(ptr noundef %0, ptr noundef nonnull @.str.12) #12
  br label %29

24:                                               ; preds = %7
  %25 = tail call ptr @nreverse(ptr noundef %20) #11
  br label %29

26:                                               ; preds = %7
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %27 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 53) #12, !range !730
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %23, label %7

29:                                               ; preds = %24, %23
  %30 = phi ptr [ null, %23 ], [ %25, %24 ]
  ret ptr %30
}

; Function Attrs: optsize
declare ptr @build_asm_stmt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_asm_expr(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lookup_label_for_goto(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @objc_begin_try_stmt(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @objc_begin_catch_clause(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @objc_finish_catch_clause() local_unnamed_addr #2

; Function Attrs: optsize
declare void @objc_build_finally_clause(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @objc_finish_try_stmt() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @objc_build_synchronized(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @start_struct(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @objc_get_class_ivars(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_struct_declaration(ptr noundef %0) unnamed_addr #0 !prof !1199 !PGOFuncName !1200 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca ptr, align 8
  %7 = alloca %struct.c_expr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  %8 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 54) #12, !range !730
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10, !prof !1201

10:                                               ; preds = %1
  %11 = tail call fastcc i32 @disable_extension_diagnostics() #12
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %12 = tail call fastcc ptr @c_parser_struct_declaration(ptr noundef %0) #12
  tail call fastcc void @restore_extension_diagnostics(i32 noundef %11) #12
  br label %127

13:                                               ; preds = %1
  %14 = tail call ptr @build_null_declspecs() #11
  %15 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %16 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !720
  tail call fastcc void @c_parser_declspecs(ptr noundef %0, ptr noundef %14, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  %18 = getelementptr inbounds %struct.c_parser, ptr %0, i64 0, i32 2
  %19 = load i8, ptr %18, align 2
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %127, !prof !899

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.c_declspecs, ptr %14, i64 0, i32 6
  %24 = load i8, ptr %23, align 8
  %25 = and i8 %24, 2
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %28, !prof !900

27:                                               ; preds = %22
  tail call fastcc void @c_parser_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.16) #12
  br label %127

28:                                               ; preds = %22
  %29 = tail call ptr @finish_declspecs(ptr noundef nonnull %14) #11
  %30 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 43) #12, !range !730
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %53, label %32, !prof !1202

32:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %33 = load i8, ptr %23, align 8
  %34 = and i8 %33, 4
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %39, !prof !1203

36:                                               ; preds = %32
  %37 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %17, i32 noundef 834, ptr noundef nonnull @.str.60) #11
  %38 = load i32, ptr @pedantic, align 4, !tbaa !676
  tail call void @shadow_tag_warned(ptr noundef nonnull %14, i32 noundef %38) #11
  br label %51

39:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store ptr null, ptr %4, align 8, !tbaa !681
  %40 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %41 = load i32, ptr %16, align 8, !tbaa !720
  %42 = tail call ptr @build_id_declarator(ptr noundef null) #11
  %43 = call ptr @grokfield(i32 noundef %41, ptr noundef %42, ptr noundef nonnull %14, ptr noundef null, ptr noundef nonnull %4) #11
  store ptr %43, ptr %3, align 8, !tbaa !681
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45, !prof !1203

45:                                               ; preds = %39
  %46 = load ptr, ptr %4, align 8, !tbaa !681
  %47 = call ptr @decl_attributes(ptr noundef nonnull %3, ptr noundef %46, i32 noundef 0) #11
  %48 = load ptr, ptr %3, align 8, !tbaa !681
  br label %49

49:                                               ; preds = %45, %39
  %50 = phi ptr [ %48, %45 ], [ null, %39 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %51

51:                                               ; preds = %49, %36
  %52 = phi ptr [ %50, %49 ], [ null, %36 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %127

53:                                               ; preds = %28
  tail call void @pending_xref_error() #11
  %54 = getelementptr inbounds %struct.c_declspecs, ptr %14, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !784
  store ptr %55, ptr %2, align 8, !tbaa !681
  store ptr null, ptr %54, align 8, !tbaa !784
  br label %56

56:                                               ; preds = %126, %53
  %57 = phi ptr [ null, %53 ], [ %105, %126 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  store i8 0, ptr %5, align 1, !tbaa !714
  %58 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 18) #12, !range !730
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %60, !prof !1204

60:                                               ; preds = %56
  %61 = call ptr @build_id_declarator(ptr noundef null) #11
  br label %67

62:                                               ; preds = %56
  %63 = load i8, ptr %23, align 8
  %64 = lshr i8 %63, 2
  %65 = and i8 %64, 1
  %66 = call fastcc ptr @c_parser_declarator(ptr noundef nonnull %0, i8 noundef zeroext %65, i32 noundef 0, ptr noundef nonnull %5) #12
  br label %67

67:                                               ; preds = %62, %60
  %68 = phi ptr [ %61, %60 ], [ %66, %62 ]
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %71, !prof !1205

70:                                               ; preds = %67
  call fastcc void @c_parser_skip_to_end_of_block_or_statement(ptr noundef %0) #12
  br label %124

71:                                               ; preds = %67
  %72 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 18) #12, !range !730
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %86, !prof !1206

74:                                               ; preds = %71
  %75 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 19) #12, !range !730
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %86, !prof !1207

77:                                               ; preds = %74
  %78 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 43) #12, !range !730
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %86, !prof !1208

80:                                               ; preds = %77
  %81 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 42) #12, !range !730
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %86, !prof !1209

83:                                               ; preds = %80
  %84 = call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 52) #12, !range !730
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %123, label %86, !prof !1210

86:                                               ; preds = %83, %80, %77, %74, %71
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %87 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 18) #12, !range !730
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %91, label %89, !prof !1206

89:                                               ; preds = %86
  call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  call fastcc void @c_parser_expr_no_commas(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %7, ptr noundef %0, ptr noundef null) #12
  %90 = load ptr, ptr %7, align 8, !tbaa !798
  br label %91

91:                                               ; preds = %89, %86
  %92 = phi ptr [ %90, %89 ], [ null, %86 ]
  %93 = call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 52) #12, !range !730
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %97, label %95, !prof !1211

95:                                               ; preds = %91
  %96 = call fastcc ptr @c_parser_attributes(ptr noundef %0) #12
  br label %97

97:                                               ; preds = %95, %91
  %98 = phi ptr [ %96, %95 ], [ null, %91 ]
  %99 = call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %100 = load i32, ptr %16, align 8, !tbaa !720
  %101 = call ptr @grokfield(i32 noundef %100, ptr noundef nonnull %68, ptr noundef %14, ptr noundef %92, ptr noundef nonnull %2) #11
  store ptr %101, ptr %6, align 8, !tbaa !681
  %102 = load ptr, ptr %2, align 8, !tbaa !681
  %103 = call ptr @chainon(ptr noundef %98, ptr noundef %102) #11
  %104 = call ptr @decl_attributes(ptr noundef nonnull %6, ptr noundef %103, i32 noundef 0) #11
  %105 = load ptr, ptr %6, align 8, !tbaa !681
  %106 = getelementptr inbounds %struct.tree_common, ptr %105, i64 0, i32 1
  store ptr %57, ptr %106, align 8, !tbaa !714
  %107 = call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 52) #12, !range !730
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %112, label %109, !prof !1212

109:                                              ; preds = %97
  %110 = call fastcc ptr @c_parser_attributes(ptr noundef nonnull %0) #12
  %111 = call ptr @chainon(ptr noundef %110, ptr noundef %55) #11
  br label %112

112:                                              ; preds = %97, %109
  %113 = phi ptr [ %111, %109 ], [ %55, %97 ]
  store ptr %113, ptr %2, align 8, !tbaa !681
  %114 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 19) #12, !range !730
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %126, !prof !1213

116:                                              ; preds = %112
  %117 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 43) #12, !range !730
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %125, !prof !1214

119:                                              ; preds = %116
  %120 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 42) #12, !range !730
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  call fastcc void @c_parser_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.61) #12
  br label %125

123:                                              ; preds = %83
  call fastcc void @c_parser_error(ptr noundef %0, ptr noundef nonnull @.str.62) #12
  br label %124

124:                                              ; preds = %70, %123
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  br label %127

125:                                              ; preds = %122, %119, %116
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  br label %127

126:                                              ; preds = %112
  call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  br label %56

127:                                              ; preds = %125, %124, %13, %51, %27, %10
  %128 = phi ptr [ %12, %10 ], [ %52, %51 ], [ null, %27 ], [ null, %13 ], [ %57, %124 ], [ %105, %125 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  ret ptr %128
}

; Function Attrs: optsize
declare ptr @finish_struct(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @shadow_tag_warned(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @grokfield(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_id_declarator(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @pop_maybe_used(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @variably_modified_type_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_pointer_declarator(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_direct_declarator(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !prof !1215 !PGOFuncName !1216 {
  %5 = icmp eq i32 %2, 1
  br i1 %5, label %34, label %6, !prof !1217

6:                                                ; preds = %4
  %7 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 53) #12, !range !730
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %32, label %9, !prof !1218

9:                                                ; preds = %6
  %10 = icmp eq i8 %1, 0
  br i1 %10, label %16, label %11, !prof !1219

11:                                               ; preds = %9
  %12 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %13 = load i32, ptr %0, align 8
  %14 = and i32 %13, 65280
  %15 = icmp eq i32 %14, 256
  br i1 %15, label %21, label %16, !prof !1220

16:                                               ; preds = %11, %9
  %17 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %18 = load i32, ptr %0, align 8
  %19 = and i32 %18, 65280
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %32, !prof !1221

21:                                               ; preds = %16, %11
  %22 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %23 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !698
  %25 = tail call ptr @build_id_declarator(ptr noundef %24) #11
  store i8 1, ptr %3, align 1, !tbaa !714
  %26 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %27 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !720
  %29 = getelementptr inbounds %struct.c_declarator, ptr %25, i64 0, i32 2
  store i32 %28, ptr %29, align 8, !tbaa !1222
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %30 = load i8, ptr %3, align 1, !tbaa !714
  %31 = tail call fastcc ptr @c_parser_direct_declarator_inner(ptr noundef nonnull %0, i8 noundef zeroext %30, ptr noundef %25) #12
  br label %84

32:                                               ; preds = %16, %6
  %33 = icmp eq i32 %2, 0
  br i1 %33, label %41, label %34, !prof !1224

34:                                               ; preds = %4, %32
  %35 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 39) #12, !range !730
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %44, label %37, !prof !1225

37:                                               ; preds = %34
  %38 = tail call ptr @build_id_declarator(ptr noundef null) #11
  %39 = load i8, ptr %3, align 1, !tbaa !714
  %40 = tail call fastcc ptr @c_parser_direct_declarator_inner(ptr noundef %0, i8 noundef zeroext %39, ptr noundef %38) #12
  br label %84

41:                                               ; preds = %32
  %42 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 20) #12, !range !730
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %81, label %47, !prof !1226

44:                                               ; preds = %34
  %45 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 20) #12, !range !730
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %82, label %47, !prof !1226

47:                                               ; preds = %44, %41
  %48 = phi i1 [ false, %44 ], [ true, %41 ]
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %49 = tail call fastcc ptr @c_parser_attributes(ptr noundef %0) #12
  br i1 %48, label %64, label %50, !prof !1227

50:                                               ; preds = %47
  %51 = tail call fastcc zeroext i8 @c_parser_next_token_starts_declspecs(ptr noundef %0) #12, !range !730
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %56, !prof !1228

53:                                               ; preds = %50
  %54 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 21) #12, !range !730
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %64, label %56, !prof !1228

56:                                               ; preds = %53, %50
  %57 = tail call fastcc ptr @c_parser_parms_declarator(ptr noundef %0, i8 noundef zeroext 0, ptr noundef %49) #12
  %58 = icmp eq ptr %57, null
  br i1 %58, label %84, label %59

59:                                               ; preds = %56
  %60 = tail call ptr @build_id_declarator(ptr noundef null) #11
  %61 = tail call ptr @build_function_declarator(ptr noundef nonnull %57, ptr noundef %60) #11
  %62 = load i8, ptr %3, align 1, !tbaa !714
  %63 = tail call fastcc ptr @c_parser_direct_declarator_inner(ptr noundef %0, i8 noundef zeroext %62, ptr noundef %61) #12
  br label %84

64:                                               ; preds = %53, %47
  %65 = tail call fastcc ptr @c_parser_declarator(ptr noundef %0, i8 noundef zeroext %1, i32 noundef %2, ptr noundef %3) #12
  %66 = icmp ne ptr %65, null
  %67 = icmp ne ptr %49, null
  %68 = select i1 %66, i1 %67, i1 false
  br i1 %68, label %69, label %71, !prof !1229

69:                                               ; preds = %64
  %70 = tail call ptr @build_attrs_declarator(ptr noundef nonnull %49, ptr noundef nonnull %65) #11
  br label %71

71:                                               ; preds = %69, %64
  %72 = phi ptr [ %70, %69 ], [ %65, %64 ]
  %73 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 21) #12, !range !730
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %80, label %75, !prof !1230

75:                                               ; preds = %71
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %76 = icmp eq ptr %72, null
  br i1 %76, label %84, label %77, !prof !1230

77:                                               ; preds = %75
  %78 = load i8, ptr %3, align 1, !tbaa !714
  %79 = tail call fastcc ptr @c_parser_direct_declarator_inner(ptr noundef %0, i8 noundef zeroext %78, ptr noundef nonnull %72) #12
  br label %84

80:                                               ; preds = %71
  tail call fastcc void @c_parser_skip_until_found(ptr noundef %0, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  br label %84

81:                                               ; preds = %41
  tail call fastcc void @c_parser_error(ptr noundef %0, ptr noundef nonnull @.str.64) #12
  br label %84

82:                                               ; preds = %44
  %83 = tail call ptr @build_id_declarator(ptr noundef null) #11
  br label %84

84:                                               ; preds = %77, %80, %56, %59, %75, %82, %81, %37, %21
  %85 = phi ptr [ %31, %21 ], [ %40, %37 ], [ null, %81 ], [ %83, %82 ], [ %79, %77 ], [ null, %80 ], [ %63, %59 ], [ null, %56 ], [ null, %75 ]
  ret ptr %85
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_direct_declarator_inner(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 !prof !1231 !PGOFuncName !1232 {
  %4 = alloca %struct.c_expr, align 8
  %5 = alloca %struct.c_expr, align 8
  %6 = alloca %struct.c_expr, align 8
  br label %7

7:                                                ; preds = %64, %3
  %8 = phi ptr [ %2, %3 ], [ %65, %64 ]
  %9 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 39) #12, !range !730
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %66, label %11, !prof !1233

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %13 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %14 = load i32, ptr %12, align 8, !tbaa !720
  %15 = tail call ptr @build_null_declspecs() #11
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  tail call fastcc void @c_parser_declspecs(ptr noundef %0, ptr noundef %15, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1) #12
  %16 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 0) #12, !range !730
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %31, label %18, !prof !1234

18:                                               ; preds = %11
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %19 = getelementptr inbounds %struct.c_declspecs, ptr %15, i64 0, i32 6
  %20 = load i8, ptr %19, align 8
  %21 = and i8 %20, 2
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  tail call fastcc void @c_parser_declspecs(ptr noundef nonnull %0, ptr noundef nonnull %15, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 1) #12
  %24 = load i8, ptr %19, align 8
  %25 = and i8 %24, 2
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi i8 [ %25, %23 ], [ %21, %18 ]
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %28, ptr null, ptr %15, !prof !1235
  call fastcc void @c_parser_expr_no_commas(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %4, ptr noundef nonnull %0, ptr noundef null) #12
  %30 = load ptr, ptr %4, align 8, !tbaa !798
  br label %52

31:                                               ; preds = %11
  %32 = getelementptr inbounds %struct.c_declspecs, ptr %15, i64 0, i32 6
  %33 = load i8, ptr %32, align 8
  %34 = and i8 %33, 2
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %35, ptr null, ptr %15, !prof !1235
  %37 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 40) #12, !range !730
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %52, !prof !1236

39:                                               ; preds = %31
  %40 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 6) #12, !range !730
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %50, label %42, !prof !1237

42:                                               ; preds = %39
  %43 = tail call fastcc ptr @c_parser_peek_2nd_token(ptr noundef nonnull %0) #12
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 255
  %46 = icmp eq i32 %45, 40
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  br label %52

48:                                               ; preds = %42
  call fastcc void @c_parser_expr_no_commas(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %5, ptr noundef nonnull %0, ptr noundef null) #12
  %49 = load ptr, ptr %5, align 8, !tbaa !798
  br label %52

50:                                               ; preds = %39
  call fastcc void @c_parser_expr_no_commas(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %6, ptr noundef nonnull %0, ptr noundef null) #12
  %51 = load ptr, ptr %6, align 8, !tbaa !798
  br label %52

52:                                               ; preds = %31, %47, %48, %50, %26
  %53 = phi ptr [ %29, %26 ], [ %36, %47 ], [ %36, %48 ], [ %36, %50 ], [ %36, %31 ]
  %54 = phi i8 [ 0, %26 ], [ 1, %47 ], [ 0, %48 ], [ 0, %50 ], [ 0, %31 ]
  %55 = phi ptr [ %30, %26 ], [ null, %47 ], [ %49, %48 ], [ %51, %50 ], [ null, %31 ]
  %56 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 40) #12, !range !730
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %61, label %58, !prof !1238

58:                                               ; preds = %52
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %59 = tail call ptr @build_array_declarator(i32 noundef %14, ptr noundef %55, ptr noundef %53, i8 noundef zeroext %16, i8 noundef zeroext %54) #11
  %60 = icmp eq ptr %59, null
  br i1 %60, label %75, label %62, !prof !1238

61:                                               ; preds = %52
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %0, i32 noundef 40, ptr noundef nonnull @.str.22) #12
  br label %75

62:                                               ; preds = %58
  %63 = tail call ptr @set_array_declarator_inner(ptr noundef nonnull %59, ptr noundef %8) #11
  br label %64

64:                                               ; preds = %62, %73
  %65 = phi ptr [ %63, %62 ], [ %74, %73 ]
  br label %7

66:                                               ; preds = %7
  %67 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 20) #12, !range !730
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %75, label %69, !prof !1239

69:                                               ; preds = %66
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %70 = tail call fastcc ptr @c_parser_attributes(ptr noundef %0) #12
  %71 = tail call fastcc ptr @c_parser_parms_declarator(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %70) #12
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73, !prof !1240

73:                                               ; preds = %69
  %74 = tail call ptr @build_function_declarator(ptr noundef nonnull %71, ptr noundef %8) #11
  br label %64

75:                                               ; preds = %66, %69, %58, %61
  %76 = phi ptr [ null, %61 ], [ %8, %66 ], [ null, %69 ], [ null, %58 ]
  ret ptr %76
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_parms_declarator(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 !prof !1241 !PGOFuncName !1242 {
  %4 = alloca ptr, align 8
  tail call void @push_scope() #11
  tail call void @declare_parm_level() #11
  %5 = icmp eq i8 %1, 0
  %6 = icmp ne ptr %2, null
  %7 = or i1 %5, %6
  br i1 %7, label %90, label %8, !prof !1243

8:                                                ; preds = %3
  %9 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 53) #12, !range !730
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %90, label %11, !prof !1244

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %13 = load i32, ptr %0, align 8
  %14 = and i32 %13, 65280
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %90, !prof !1245

16:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  store ptr null, ptr %4, align 8, !tbaa !681
  %17 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %33, %16
  %19 = phi ptr [ %4, %16 ], [ %34, %33 ]
  %20 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 53) #12, !range !730
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %38, label %22, !prof !1246

22:                                               ; preds = %18
  %23 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %24 = load i32, ptr %0, align 8
  %25 = and i32 %24, 65280
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %38, !prof !1247

27:                                               ; preds = %22
  %28 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %29 = load ptr, ptr %17, align 8, !tbaa !698
  %30 = tail call ptr @build_tree_list_stat(ptr noundef null, ptr noundef %29) #11
  store ptr %30, ptr %19, align 8, !tbaa !681
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %31 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef nonnull %0, i32 noundef 19) #12, !range !730
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %38, !prof !1248

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 1
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %35 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 21) #12, !range !730
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %18, label %37, !prof !1249, !llvm.loop !1250

37:                                               ; preds = %33
  tail call fastcc void @c_parser_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.12) #12
  br label %38

38:                                               ; preds = %18, %27, %22, %37
  %39 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 21) #12, !range !730
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %86, label %41, !prof !1251

41:                                               ; preds = %38
  store i64 48, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 5), align 8, !tbaa !732
  %42 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 4), align 8, !tbaa !735
  %43 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 3), align 8, !tbaa !736
  %44 = ptrtoint ptr %42 to i64
  %45 = ptrtoint ptr %43 to i64
  %46 = sub i64 %44, %45
  %47 = icmp slt i64 %46, 48
  br i1 %47, label %48, label %51, !prof !1251

48:                                               ; preds = %41
  tail call void @_obstack_newchunk(ptr noundef nonnull @parser_obstack, i32 noundef 48) #11
  %49 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 5), align 8, !tbaa !732
  %50 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 3), align 8, !tbaa !736
  br label %51

51:                                               ; preds = %41, %48
  %52 = phi ptr [ %43, %41 ], [ %50, %48 ]
  %53 = phi i64 [ 48, %41 ], [ %49, %48 ]
  %54 = getelementptr inbounds i8, ptr %52, i64 %53
  %55 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 2), align 8, !tbaa !737
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %57, label %60, !prof !1251

57:                                               ; preds = %51
  %58 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 10), align 8
  %59 = or i8 %58, 2
  store i8 %59, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 10), align 8
  br label %60

60:                                               ; preds = %51, %57
  %61 = ptrtoint ptr %55 to i64
  store i64 %61, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 5), align 8, !tbaa !732
  %62 = ptrtoint ptr %54 to i64
  %63 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 6), align 8, !tbaa !738
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = xor i32 %63, -1
  %67 = sext i32 %66 to i64
  %68 = and i64 %65, %67
  %69 = inttoptr i64 %68 to ptr
  store ptr %69, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 3), align 8, !tbaa !736
  %70 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 1), align 8, !tbaa !739
  %71 = ptrtoint ptr %70 to i64
  %72 = sub i64 %68, %71
  %73 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 4), align 8, !tbaa !735
  %74 = ptrtoint ptr %73 to i64
  %75 = sub i64 %74, %71
  %76 = icmp sgt i64 %72, %75
  br i1 %76, label %77, label %78, !prof !1251

77:                                               ; preds = %60
  store ptr %73, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 3), align 8, !tbaa !736
  br label %78

78:                                               ; preds = %60, %77
  %79 = phi ptr [ %69, %60 ], [ %73, %77 ]
  store ptr %79, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 2), align 8, !tbaa !737
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %55, i8 0, i64 16, i1 false)
  %80 = load ptr, ptr %4, align 8, !tbaa !681
  %81 = getelementptr inbounds %struct.c_arg_info, ptr %55, i64 0, i32 2
  store ptr %80, ptr %81, align 8, !tbaa !1252
  %82 = getelementptr inbounds %struct.c_arg_info, ptr %55, i64 0, i32 3
  %83 = getelementptr inbounds %struct.c_arg_info, ptr %55, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %82, i8 0, i64 16, i1 false)
  %84 = load i8, ptr %83, align 8
  %85 = and i8 %84, -2
  store i8 %85, ptr %83, align 8
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  br label %87

86:                                               ; preds = %38
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %0, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  br label %87

87:                                               ; preds = %86, %78
  %88 = phi ptr [ %55, %78 ], [ null, %86 ]
  %89 = tail call ptr @pop_scope() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  br label %93

90:                                               ; preds = %11, %8, %3
  %91 = tail call fastcc ptr @c_parser_parms_list_declarator(ptr noundef %0, ptr noundef %2) #12
  %92 = tail call ptr @pop_scope() #11
  br label %93

93:                                               ; preds = %90, %87
  %94 = phi ptr [ %91, %90 ], [ %88, %87 ]
  ret ptr %94
}

; Function Attrs: optsize
declare ptr @build_function_declarator(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_attrs_declarator(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_array_declarator(i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @set_array_declarator_inner(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @push_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare void @declare_parm_level() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @pop_scope() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_parms_list_declarator(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1254 !PGOFuncName !1255 {
  %3 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 21) #12, !range !730
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %45, label %5, !prof !1256

5:                                                ; preds = %109, %2
  store i64 48, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 5), align 8, !tbaa !732
  %6 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 4), align 8, !tbaa !735
  %7 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 3), align 8, !tbaa !736
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = icmp slt i64 %10, 48
  br i1 %11, label %12, label %15, !prof !1257

12:                                               ; preds = %5
  tail call void @_obstack_newchunk(ptr noundef nonnull @parser_obstack, i32 noundef 48) #11
  %13 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 5), align 8, !tbaa !732
  %14 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 3), align 8, !tbaa !736
  br label %15

15:                                               ; preds = %5, %12
  %16 = phi ptr [ %7, %5 ], [ %14, %12 ]
  %17 = phi i64 [ 48, %5 ], [ %13, %12 ]
  %18 = getelementptr inbounds i8, ptr %16, i64 %17
  %19 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 2), align 8, !tbaa !737
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %24, !prof !1257

21:                                               ; preds = %15
  %22 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 10), align 8
  %23 = or i8 %22, 2
  store i8 %23, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 10), align 8
  br label %24

24:                                               ; preds = %15, %21
  %25 = ptrtoint ptr %19 to i64
  store i64 %25, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 5), align 8, !tbaa !732
  %26 = ptrtoint ptr %18 to i64
  %27 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 6), align 8, !tbaa !738
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = xor i32 %27, -1
  %31 = sext i32 %30 to i64
  %32 = and i64 %29, %31
  %33 = inttoptr i64 %32 to ptr
  %34 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 1), align 8, !tbaa !739
  %35 = ptrtoint ptr %34 to i64
  %36 = sub i64 %32, %35
  %37 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 4), align 8, !tbaa !735
  %38 = ptrtoint ptr %37 to i64
  %39 = sub i64 %38, %35
  %40 = icmp sgt i64 %36, %39
  %41 = select i1 %40, ptr %37, ptr %33, !prof !1257
  store ptr %41, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 3), align 8
  store ptr %41, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 2), align 8, !tbaa !737
  %42 = getelementptr inbounds %struct.c_arg_info, ptr %19, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %19, i8 0, i64 40, i1 false)
  %43 = load i8, ptr %42, align 8
  %44 = and i8 %43, -2
  store i8 %44, ptr %42, align 8
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  br label %217

45:                                               ; preds = %2, %109
  %46 = phi ptr [ %110, %109 ], [ %1, %2 ]
  %47 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 44) #12, !range !730
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %99, label %49, !prof !1258

49:                                               ; preds = %45
  store i64 48, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 5), align 8, !tbaa !732
  %50 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 4), align 8, !tbaa !735
  %51 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 3), align 8, !tbaa !736
  %52 = ptrtoint ptr %50 to i64
  %53 = ptrtoint ptr %51 to i64
  %54 = sub i64 %52, %53
  %55 = icmp slt i64 %54, 48
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  tail call void @_obstack_newchunk(ptr noundef nonnull @parser_obstack, i32 noundef 48) #11
  %57 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 5), align 8, !tbaa !732
  %58 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 3), align 8, !tbaa !736
  br label %59

59:                                               ; preds = %49, %56
  %60 = phi ptr [ %51, %49 ], [ %58, %56 ]
  %61 = phi i64 [ 48, %49 ], [ %57, %56 ]
  %62 = getelementptr inbounds i8, ptr %60, i64 %61
  %63 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 2), align 8, !tbaa !737
  %64 = icmp eq ptr %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 10), align 8
  %67 = or i8 %66, 2
  store i8 %67, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 10), align 8
  br label %68

68:                                               ; preds = %59, %65
  %69 = ptrtoint ptr %63 to i64
  store i64 %69, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 5), align 8, !tbaa !732
  %70 = ptrtoint ptr %62 to i64
  %71 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 6), align 8, !tbaa !738
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %70
  %74 = xor i32 %71, -1
  %75 = sext i32 %74 to i64
  %76 = and i64 %73, %75
  %77 = inttoptr i64 %76 to ptr
  %78 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 1), align 8, !tbaa !739
  %79 = ptrtoint ptr %78 to i64
  %80 = sub i64 %76, %79
  %81 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 4), align 8, !tbaa !735
  %82 = ptrtoint ptr %81 to i64
  %83 = sub i64 %82, %79
  %84 = icmp sgt i64 %80, %83
  %85 = select i1 %84, ptr %81, ptr %77
  store ptr %85, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 3), align 8
  store ptr %85, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 2), align 8, !tbaa !737
  %86 = getelementptr inbounds %struct.c_arg_info, ptr %63, i64 0, i32 3
  %87 = getelementptr inbounds %struct.c_arg_info, ptr %63, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %63, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %86, i8 0, i64 16, i1 false)
  %88 = load i8, ptr %87, align 8
  %89 = and i8 %88, -2
  store i8 %89, ptr %87, align 8
  %90 = load ptr, ptr @global_trees, align 16, !tbaa !681
  %91 = getelementptr inbounds %struct.c_arg_info, ptr %63, i64 0, i32 2
  store ptr %90, ptr %91, align 8, !tbaa !1252
  %92 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %93 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %94 = load i32, ptr %93, align 8, !tbaa !720
  tail call void (i32, ptr, ...) @error_at(i32 noundef %94, ptr noundef nonnull @.str.65) #11
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %95 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 21) #12, !range !730
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %68
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  br label %217

98:                                               ; preds = %68
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %0, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  br label %217

99:                                               ; preds = %45, %165
  %100 = phi i8 [ %106, %165 ], [ 0, %45 ]
  %101 = phi ptr [ null, %165 ], [ %46, %45 ]
  %102 = tail call fastcc ptr @c_parser_parameter_declaration(ptr noundef %0, ptr noundef %101) #12
  %103 = icmp eq ptr %102, null
  br i1 %103, label %105, label %104, !prof !835

104:                                              ; preds = %99
  tail call void @push_parm_decl(ptr noundef nonnull %102) #11
  br label %105

105:                                              ; preds = %104, %99
  %106 = phi i8 [ 1, %104 ], [ %100, %99 ]
  %107 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 43) #12, !range !730
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %113, label %109, !prof !836

109:                                              ; preds = %105
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  tail call void @mark_forward_parm_decls() #11
  %110 = tail call fastcc ptr @c_parser_attributes(ptr noundef %0) #12
  %111 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 21) #12, !range !730
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %45, label %5, !prof !1259

113:                                              ; preds = %105
  %114 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 21) #12, !range !730
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %160, label %116, !prof !1260

116:                                              ; preds = %113
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %117 = icmp eq i8 %106, 0
  br i1 %117, label %120, label %118, !prof !1261

118:                                              ; preds = %116
  %119 = tail call ptr @get_parm_info(i8 noundef zeroext 0) #11
  br label %217

120:                                              ; preds = %116
  store i64 48, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 5), align 8, !tbaa !732
  %121 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 4), align 8, !tbaa !735
  %122 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 3), align 8, !tbaa !736
  %123 = ptrtoint ptr %121 to i64
  %124 = ptrtoint ptr %122 to i64
  %125 = sub i64 %123, %124
  %126 = icmp slt i64 %125, 48
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  tail call void @_obstack_newchunk(ptr noundef nonnull @parser_obstack, i32 noundef 48) #11
  %128 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 5), align 8, !tbaa !732
  %129 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 3), align 8, !tbaa !736
  br label %130

130:                                              ; preds = %120, %127
  %131 = phi ptr [ %122, %120 ], [ %129, %127 ]
  %132 = phi i64 [ 48, %120 ], [ %128, %127 ]
  %133 = getelementptr inbounds i8, ptr %131, i64 %132
  %134 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 2), align 8, !tbaa !737
  %135 = icmp eq ptr %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 10), align 8
  %138 = or i8 %137, 2
  store i8 %138, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 10), align 8
  br label %139

139:                                              ; preds = %130, %136
  %140 = ptrtoint ptr %134 to i64
  store i64 %140, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 5), align 8, !tbaa !732
  %141 = ptrtoint ptr %133 to i64
  %142 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 6), align 8, !tbaa !738
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %143, %141
  %145 = xor i32 %142, -1
  %146 = sext i32 %145 to i64
  %147 = and i64 %144, %146
  %148 = inttoptr i64 %147 to ptr
  %149 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 1), align 8, !tbaa !739
  %150 = ptrtoint ptr %149 to i64
  %151 = sub i64 %147, %150
  %152 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 4), align 8, !tbaa !735
  %153 = ptrtoint ptr %152 to i64
  %154 = sub i64 %153, %150
  %155 = icmp sgt i64 %151, %154
  %156 = select i1 %155, ptr %152, ptr %148
  store ptr %156, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 3), align 8
  store ptr %156, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 2), align 8, !tbaa !737
  %157 = getelementptr inbounds %struct.c_arg_info, ptr %134, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %134, i8 0, i64 40, i1 false)
  %158 = load i8, ptr %157, align 8
  %159 = and i8 %158, -2
  store i8 %159, ptr %157, align 8
  br label %217

160:                                              ; preds = %113
  %161 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef %0, i32 noundef 19, ptr noundef nonnull @.str.66) #12, !range !730
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %163, label %165, !prof !1262

163:                                              ; preds = %160
  tail call fastcc void @c_parser_skip_until_found(ptr noundef %0, i32 noundef 21, ptr noundef null) #12
  %164 = tail call ptr @get_pending_sizes() #11
  br label %217

165:                                              ; preds = %160
  %166 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 44) #12, !range !730
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %99, label %168, !prof !1263

168:                                              ; preds = %165
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %169 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 21) #12, !range !730
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %215, label %171, !prof !1264

171:                                              ; preds = %168
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  %172 = icmp eq i8 %106, 0
  br i1 %172, label %175, label %173, !prof !1264

173:                                              ; preds = %171
  %174 = tail call ptr @get_parm_info(i8 noundef zeroext 1) #11
  br label %217

175:                                              ; preds = %171
  store i64 48, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 5), align 8, !tbaa !732
  %176 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 4), align 8, !tbaa !735
  %177 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 3), align 8, !tbaa !736
  %178 = ptrtoint ptr %176 to i64
  %179 = ptrtoint ptr %177 to i64
  %180 = sub i64 %178, %179
  %181 = icmp slt i64 %180, 48
  br i1 %181, label %182, label %185

182:                                              ; preds = %175
  tail call void @_obstack_newchunk(ptr noundef nonnull @parser_obstack, i32 noundef 48) #11
  %183 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 5), align 8, !tbaa !732
  %184 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 3), align 8, !tbaa !736
  br label %185

185:                                              ; preds = %175, %182
  %186 = phi ptr [ %177, %175 ], [ %184, %182 ]
  %187 = phi i64 [ 48, %175 ], [ %183, %182 ]
  %188 = getelementptr inbounds i8, ptr %186, i64 %187
  %189 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 2), align 8, !tbaa !737
  %190 = icmp eq ptr %188, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 10), align 8
  %193 = or i8 %192, 2
  store i8 %193, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 10), align 8
  br label %194

194:                                              ; preds = %185, %191
  %195 = ptrtoint ptr %189 to i64
  store i64 %195, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 5), align 8, !tbaa !732
  %196 = ptrtoint ptr %188 to i64
  %197 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 6), align 8, !tbaa !738
  %198 = sext i32 %197 to i64
  %199 = add nsw i64 %198, %196
  %200 = xor i32 %197, -1
  %201 = sext i32 %200 to i64
  %202 = and i64 %199, %201
  %203 = inttoptr i64 %202 to ptr
  %204 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 1), align 8, !tbaa !739
  %205 = ptrtoint ptr %204 to i64
  %206 = sub i64 %202, %205
  %207 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 4), align 8, !tbaa !735
  %208 = ptrtoint ptr %207 to i64
  %209 = sub i64 %208, %205
  %210 = icmp sgt i64 %206, %209
  %211 = select i1 %210, ptr %207, ptr %203
  store ptr %211, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 3), align 8
  store ptr %211, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 2), align 8, !tbaa !737
  %212 = getelementptr inbounds %struct.c_arg_info, ptr %189, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %189, i8 0, i64 40, i1 false)
  %213 = load i8, ptr %212, align 8
  %214 = and i8 %213, -2
  store i8 %214, ptr %212, align 8
  br label %217

215:                                              ; preds = %168
  tail call fastcc void @c_parser_skip_until_found(ptr noundef %0, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  %216 = tail call ptr @get_pending_sizes() #11
  br label %217

217:                                              ; preds = %163, %215, %194, %173, %139, %118, %97, %98, %24
  %218 = phi ptr [ %19, %24 ], [ %63, %97 ], [ null, %98 ], [ null, %163 ], [ null, %215 ], [ %189, %194 ], [ %174, %173 ], [ %134, %139 ], [ %119, %118 ]
  ret ptr %218
}

; Function Attrs: optsize
declare void @push_parm_decl(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mark_forward_parm_decls() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_parm_info(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_pending_sizes() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_skip_to_end_of_parameter(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !1265 {
  %2 = getelementptr inbounds %struct.c_parser, ptr %0, i64 0, i32 2
  br label %3

3:                                                ; preds = %26, %1
  %4 = phi i32 [ 0, %1 ], [ %27, %26 ]
  %5 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, 19
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  %10 = icmp ne i32 %7, 43
  %11 = icmp ne i32 %4, 0
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %15, label %28

13:                                               ; preds = %3
  %14 = icmp eq i32 %4, 0
  br i1 %14, label %28, label %26

15:                                               ; preds = %9
  %16 = trunc i32 %6 to i8
  switch i8 %16, label %26 [
    i8 22, label %31
    i8 71, label %17
    i8 41, label %21
    i8 20, label %21
    i8 39, label %21
    i8 42, label %23
    i8 21, label %23
    i8 40, label %23
  ]

17:                                               ; preds = %15
  %18 = load i8, ptr %2, align 2
  %19 = and i8 %18, 2
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %26, label %31

21:                                               ; preds = %15, %15, %15
  %22 = add i32 %4, 1
  br label %26

23:                                               ; preds = %15, %15, %15
  %24 = add i32 %4, -1
  %25 = icmp eq i32 %4, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %15, %13, %17, %21, %23
  %27 = phi i32 [ %22, %21 ], [ %24, %23 ], [ %4, %17 ], [ %4, %13 ], [ %4, %15 ]
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  br label %3

28:                                               ; preds = %9, %13, %23
  %29 = load i8, ptr %2, align 2
  %30 = and i8 %29, -2
  store i8 %30, ptr %2, align 2
  br label %31

31:                                               ; preds = %15, %17, %28
  ret void
}

; Function Attrs: optsize
declare ptr @build_c_parm(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @objc_set_visibility(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @objc_add_instance_variable(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @objc_declare_class(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @objc_declare_alias(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @objc_declare_protocols(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @objc_start_protocol(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_omp_barrier(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !1266 {
  %2 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !720
  tail call fastcc void @c_parser_consume_pragma(ptr noundef %0) #12
  tail call fastcc void @c_parser_skip_to_pragma_eol(ptr noundef %0) #12
  tail call void @c_finish_omp_barrier(i32 noundef %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_omp_flush(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !1267 {
  %2 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !720
  tail call fastcc void @c_parser_consume_pragma(ptr noundef %0) #12
  %5 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 20) #12, !range !730
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @c_parser_omp_var_list_parens(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #12
  br label %13

9:                                                ; preds = %1
  %10 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef nonnull %0, i32 noundef 71) #12, !range !730
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call fastcc void @c_parser_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.74) #12
  br label %13

13:                                               ; preds = %9, %12, %7
  tail call fastcc void @c_parser_skip_to_pragma_eol(ptr noundef nonnull %0) #12
  tail call void @c_finish_omp_flush(i32 noundef %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_omp_taskwait(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !1268 {
  %2 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !720
  tail call fastcc void @c_parser_consume_pragma(ptr noundef %0) #12
  tail call fastcc void @c_parser_skip_to_pragma_eol(ptr noundef %0) #12
  tail call void @c_finish_omp_taskwait(i32 noundef %4) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_omp_threadprivate(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !1269 {
  tail call fastcc void @c_parser_consume_pragma(ptr noundef %0) #12
  %2 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !720
  %5 = tail call fastcc ptr @c_parser_omp_var_list_parens(ptr noundef %0, i32 noundef 0, ptr noundef null) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %73, label %7

7:                                                ; preds = %1, %69
  %8 = phi ptr [ %71, %69 ], [ %5, %1 ]
  %9 = getelementptr inbounds %struct.tree_list, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !714
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 32
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  tail call void (i32, ptr, ...) @error_at(i32 noundef %4, ptr noundef nonnull @.str.75, ptr noundef nonnull %10) #11
  br label %69

15:                                               ; preds = %7
  %16 = and i64 %11, 16777216
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 2
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 262144
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  tail call void (i32, ptr, ...) @error_at(i32 noundef %4, ptr noundef nonnull @.str.76, ptr noundef nonnull %10) #11
  br label %69

24:                                               ; preds = %18, %15
  %25 = and i64 %11, 67108864
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 2
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 33554432
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  tail call void (i32, ptr, ...) @error_at(i32 noundef %4, ptr noundef nonnull @.str.77, ptr noundef nonnull %10) #11
  br label %69

33:                                               ; preds = %27, %24
  %34 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !714
  %36 = load ptr, ptr @global_trees, align 16, !tbaa !681
  %37 = icmp eq ptr %35, %36
  br i1 %37, label %69, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.tree_type, ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !714
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  tail call void (i32, ptr, ...) @error_at(i32 noundef %4, ptr noundef nonnull @.str.78, ptr noundef nonnull %10) #11
  br label %69

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %10, i64 0, i32 4
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 49152
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %65

48:                                               ; preds = %43
  %49 = tail call i32 @decl_default_tls_model(ptr noundef nonnull %10) #11
  %50 = load i32, ptr %44, align 8
  %51 = shl i32 %49, 13
  %52 = and i32 %51, 57344
  %53 = and i32 %50, -57345
  %54 = or disjoint i32 %53, %52
  store i32 %54, ptr %44, align 8
  %55 = load i64, ptr %10, align 8
  %56 = and i64 %55, 65535
  %57 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %56, i64 11
  %58 = load i8, ptr %57, align 1, !tbaa !714
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %48
  %61 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %10, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !714
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  tail call void @make_decl_rtl(ptr noundef nonnull %10) #11
  br label %65

65:                                               ; preds = %48, %60, %64, %43
  %66 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 2
  %67 = load i64, ptr %66, align 8
  %68 = or i64 %67, 262144
  store i64 %68, ptr %66, align 8
  br label %69

69:                                               ; preds = %23, %33, %65, %42, %32, %14
  %70 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !714
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %7, !llvm.loop !1270

73:                                               ; preds = %69, %1
  tail call fastcc void @c_parser_skip_to_pragma_eol(ptr noundef %0) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_omp_construct(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !1271 {
  %2 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %3 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 8, !tbaa !720
  %5 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %6 = load i32, ptr %0, align 8
  %7 = lshr i32 %6, 24
  tail call fastcc void @c_parser_consume_pragma(ptr noundef nonnull %0) #12
  %8 = trunc i32 %7 to i8
  switch i8 %8, label %26 [
    i8 1, label %9
    i8 3, label %10
    i8 5, label %12
    i8 6, label %14
    i8 7, label %16
    i8 8, label %18
    i8 12, label %20
    i8 13, label %22
    i8 14, label %24
  ]

9:                                                ; preds = %1
  tail call fastcc void @c_parser_omp_atomic(i32 noundef %4, ptr noundef nonnull %0) #12
  br label %42

10:                                               ; preds = %1
  %11 = tail call fastcc ptr @c_parser_omp_critical(i32 noundef %4, ptr noundef nonnull %0) #12
  br label %27

12:                                               ; preds = %1
  %13 = tail call fastcc ptr @c_parser_omp_for(i32 noundef %4, ptr noundef nonnull %0) #12
  br label %27

14:                                               ; preds = %1
  %15 = tail call fastcc ptr @c_parser_omp_master(i32 noundef %4, ptr noundef nonnull %0) #12
  br label %27

16:                                               ; preds = %1
  %17 = tail call fastcc ptr @c_parser_omp_ordered(i32 noundef %4, ptr noundef nonnull %0) #12
  br label %27

18:                                               ; preds = %1
  %19 = tail call fastcc ptr @c_parser_omp_parallel(i32 noundef %4, ptr noundef nonnull %0) #12
  br label %27

20:                                               ; preds = %1
  %21 = tail call fastcc ptr @c_parser_omp_sections(i32 noundef %4, ptr noundef nonnull %0) #12
  br label %27

22:                                               ; preds = %1
  %23 = tail call fastcc ptr @c_parser_omp_single(i32 noundef %4, ptr noundef nonnull %0) #12
  br label %27

24:                                               ; preds = %1
  %25 = tail call fastcc ptr @c_parser_omp_task(i32 noundef %4, ptr noundef nonnull %0) #12
  br label %27

26:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 8633, ptr noundef nonnull @.str.2) #11
  unreachable

27:                                               ; preds = %24, %22, %20, %18, %16, %14, %12, %10
  %28 = phi ptr [ %25, %24 ], [ %23, %22 ], [ %21, %20 ], [ %19, %18 ], [ %17, %16 ], [ %15, %14 ], [ %13, %12 ], [ %11, %10 ]
  %29 = icmp eq ptr %28, null
  br i1 %29, label %42, label %30

30:                                               ; preds = %27
  %31 = load i64, ptr %28, align 8
  %32 = and i64 %31, 65535
  %33 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !676
  %35 = add i32 %34, -4
  %36 = icmp ult i32 %35, 7
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.tree_exp, ptr %28, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !714
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30, %37
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 8637, ptr noundef nonnull @.str.2) #11
  br label %42

42:                                               ; preds = %27, %37, %41, %9
  ret void
}

; Function Attrs: optsize
declare void @c_invoke_pragma_handler(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @c_finish_omp_barrier(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_omp_var_list_parens(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !697 !PGOFuncName !1272 {
  %4 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !720
  %7 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef %0, i32 noundef 20, ptr noundef nonnull @.str.8) #12, !range !730
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = tail call fastcc ptr @c_parser_omp_variable_list(ptr noundef nonnull %0, i32 noundef %6, i32 noundef %1, ptr noundef %2) #12
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %0, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi ptr [ %10, %9 ], [ %2, %3 ]
  ret ptr %12
}

; Function Attrs: optsize
declare void @c_finish_omp_flush(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_omp_variable_list(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 !prof !697 !PGOFuncName !1273 {
  %5 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef %0, i32 noundef 53) #12, !range !730
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65280
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %7, %4
  tail call fastcc void @c_parser_error(ptr noundef %0, ptr noundef nonnull @.str.12) #12
  br label %13

13:                                               ; preds = %12, %7
  %14 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 53) #12, !range !730
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %53, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 1
  %18 = icmp eq i32 %2, 0
  %19 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  br label %20

20:                                               ; preds = %16, %50
  %21 = phi ptr [ %3, %16 ], [ %47, %50 ]
  %22 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %23 = load i32, ptr %0, align 8
  %24 = and i32 %23, 65280
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %53

26:                                               ; preds = %20
  %27 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %28 = load ptr, ptr %17, align 8, !tbaa !698
  %29 = tail call ptr @lookup_name(ptr noundef %28) #11
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %33 = load i32, ptr %19, align 8, !tbaa !720
  %34 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %35 = load ptr, ptr %17, align 8, !tbaa !698
  tail call void @undeclared_variable(i32 noundef %33, ptr noundef %35) #11
  br label %46

36:                                               ; preds = %26
  %37 = load ptr, ptr @global_trees, align 16, !tbaa !681
  %38 = icmp eq ptr %29, %37
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  br i1 %18, label %44, label %40

40:                                               ; preds = %39
  %41 = tail call ptr @build_omp_clause(i32 noundef %1, i32 noundef %2) #11
  %42 = getelementptr inbounds %struct.tree_omp_clause, ptr %41, i64 0, i32 6
  store ptr %29, ptr %42, align 8, !tbaa !714
  %43 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 1
  store ptr %21, ptr %43, align 8, !tbaa !714
  br label %46

44:                                               ; preds = %39
  %45 = tail call ptr @tree_cons_stat(ptr noundef nonnull %29, ptr noundef null, ptr noundef %21) #11
  br label %46

46:                                               ; preds = %36, %44, %40, %31
  %47 = phi ptr [ %21, %31 ], [ %21, %36 ], [ %41, %40 ], [ %45, %44 ]
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %48 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef nonnull %0, i32 noundef 19) #12, !range !730
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %51 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 53) #12, !range !730
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %20

53:                                               ; preds = %20, %50, %46, %13
  %54 = phi ptr [ %3, %13 ], [ %47, %46 ], [ %47, %50 ], [ %21, %20 ]
  ret ptr %54
}

; Function Attrs: optsize
declare void @undeclared_variable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_omp_clause(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @c_finish_omp_taskwait(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @decl_default_tls_model(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @make_decl_rtl(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_omp_atomic(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !697 !PGOFuncName !1274 {
  %3 = alloca %struct.c_expr, align 8
  %4 = alloca %struct.c_expr, align 8
  %5 = alloca %struct.c_expr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  tail call fastcc void @c_parser_skip_to_pragma_eol(ptr noundef %1) #12
  call fastcc void @c_parser_unary_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %4, ptr noundef %1) #12
  %6 = load ptr, ptr %4, align 8, !tbaa !798
  %7 = call ptr @c_fully_fold(ptr noundef %6, i8 noundef zeroext 0, ptr noundef null) #11
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %19 [
    i16 0, label %10
    i16 126, label %11
    i16 128, label %11
    i16 125, label %15
    i16 127, label %15
  ]

10:                                               ; preds = %2, %25
  call fastcc void @c_parser_skip_to_end_of_block_or_statement(ptr noundef %1) #12
  br label %50

11:                                               ; preds = %2, %2
  %12 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !714
  %14 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !681
  br label %40

15:                                               ; preds = %2, %2
  %16 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !714
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !681
  br label %40

19:                                               ; preds = %2
  %20 = call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %21 = load i32, ptr %1, align 8
  %22 = trunc i32 %21 to i8
  %23 = add i8 %22, -27
  %24 = icmp ult i8 %23, 10
  br i1 %24, label %26, label %25

25:                                               ; preds = %26, %19
  call fastcc void @c_parser_error(ptr noundef nonnull %1, ptr noundef nonnull @.str.79) #12
  br label %10

26:                                               ; preds = %19
  %27 = zext nneg i8 %23 to i16
  %28 = lshr i16 1007, %27
  %29 = and i16 %28, 1
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %25, label %31

31:                                               ; preds = %26
  %32 = zext nneg i8 %23 to i64
  %33 = getelementptr inbounds [10 x i32], ptr @switch.table.c_parser_omp_atomic, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4
  call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %35 = call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %36 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !720
  call fastcc void @c_parser_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %3, ptr noundef nonnull %1) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %5, i32 noundef %37, ptr noundef nonnull byval(%struct.c_expr) align 8 %3) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  %38 = load ptr, ptr %3, align 8, !tbaa !798
  %39 = call ptr @c_fully_fold(ptr noundef %38, i8 noundef zeroext 0, ptr noundef null) #11
  br label %40

40:                                               ; preds = %31, %15, %11
  %41 = phi ptr [ %39, %31 ], [ %18, %15 ], [ %14, %11 ]
  %42 = phi i32 [ %34, %31 ], [ 64, %15 ], [ 63, %11 ]
  %43 = phi ptr [ %7, %31 ], [ %17, %15 ], [ %13, %11 ]
  %44 = call ptr @c_finish_omp_atomic(i32 noundef %0, i32 noundef %42, ptr noundef %43, ptr noundef %41) #11
  %45 = load ptr, ptr @global_trees, align 16, !tbaa !681
  %46 = icmp eq ptr %44, %45
  br i1 %46, label %49, label %47

47:                                               ; preds = %40
  %48 = call ptr @add_stmt(ptr noundef %44) #11
  br label %49

49:                                               ; preds = %47, %40
  call fastcc void @c_parser_skip_until_found(ptr noundef %1, i32 noundef 43, ptr noundef nonnull @.str.7) #12
  br label %50

50:                                               ; preds = %49, %10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_omp_critical(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !697 !PGOFuncName !1275 {
  %3 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %1, i32 noundef 20) #12, !range !730
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  tail call fastcc void @c_parser_consume_token(ptr noundef %1) #12
  %6 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %1, i32 noundef 53) #12, !range !730
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %10 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !698
  tail call fastcc void @c_parser_consume_token(ptr noundef %1) #12
  %12 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef %1, i32 noundef 21, ptr noundef nonnull @.str.9) #12, !range !730
  br label %18

13:                                               ; preds = %5
  tail call fastcc void @c_parser_error(ptr noundef %1, ptr noundef nonnull @.str.12) #12
  br label %18

14:                                               ; preds = %2
  %15 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef %1, i32 noundef 71) #12, !range !730
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  tail call fastcc void @c_parser_error(ptr noundef %1, ptr noundef nonnull @.str.74) #12
  br label %18

18:                                               ; preds = %14, %17, %8, %13
  %19 = phi ptr [ %11, %8 ], [ null, %13 ], [ null, %17 ], [ null, %14 ]
  tail call fastcc void @c_parser_skip_to_pragma_eol(ptr noundef %1) #12
  %20 = tail call fastcc ptr @c_parser_omp_structured_block(ptr noundef %1) #12
  %21 = tail call ptr @c_finish_omp_critical(i32 noundef %0, ptr noundef %20, ptr noundef %19) #11
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_omp_for(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !697 !PGOFuncName !1276 {
  %3 = tail call fastcc ptr @c_parser_omp_all_clauses(ptr noundef %1, i32 noundef 15778, ptr noundef nonnull @.str.80) #12
  %4 = tail call ptr @c_begin_compound_stmt(i8 noundef zeroext 1) #11
  %5 = tail call fastcc ptr @c_parser_omp_for_loop(i32 noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef null) #12
  %6 = tail call ptr @c_end_compound_stmt(i32 noundef %0, ptr noundef %4, i8 noundef zeroext 1) #11
  %7 = tail call ptr @add_stmt(ptr noundef %6) #11
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_omp_master(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !697 !PGOFuncName !1277 {
  tail call fastcc void @c_parser_skip_to_pragma_eol(ptr noundef %1) #12
  %3 = tail call fastcc ptr @c_parser_omp_structured_block(ptr noundef %1) #12
  %4 = tail call ptr @c_finish_omp_master(i32 noundef %0, ptr noundef %3) #11
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_omp_ordered(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !697 !PGOFuncName !1278 {
  tail call fastcc void @c_parser_skip_to_pragma_eol(ptr noundef %1) #12
  %3 = tail call fastcc ptr @c_parser_omp_structured_block(ptr noundef %1) #12
  %4 = tail call ptr @c_finish_omp_ordered(i32 noundef %0, ptr noundef %3) #11
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_omp_parallel(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !697 !PGOFuncName !1279 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %5 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %1, i32 noundef 40) #12, !range !730
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %1, i32 noundef 53) #12, !range !730
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %12 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !698
  %14 = getelementptr inbounds %struct.tree_identifier, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !714
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(9) @.str.119) #12
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %7, %10
  %19 = tail call fastcc ptr @c_parser_omp_all_clauses(ptr noundef %1, i32 noundef 23156, ptr noundef nonnull @.str.117) #12
  %20 = tail call ptr @c_begin_omp_parallel() #11
  tail call fastcc void @c_parser_statement(ptr noundef %1) #12
  %21 = tail call ptr @c_finish_omp_parallel(i32 noundef %0, ptr noundef %19, ptr noundef %20) #11
  br label %44

22:                                               ; preds = %2
  tail call fastcc void @c_parser_consume_token(ptr noundef %1) #12
  %23 = tail call fastcc ptr @c_parser_omp_all_clauses(ptr noundef %1, i32 noundef 32502, ptr noundef nonnull @.str.118) #12
  %24 = tail call ptr @c_begin_omp_parallel() #11
  call void @c_split_parallel_clauses(i32 noundef %0, ptr noundef %23, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  %25 = load ptr, ptr %4, align 8, !tbaa !681
  %26 = call fastcc ptr @c_parser_omp_for_loop(i32 noundef %0, ptr noundef %1, ptr noundef %25, ptr noundef nonnull %3) #12
  %27 = load ptr, ptr %3, align 8, !tbaa !681
  %28 = call ptr @c_finish_omp_parallel(i32 noundef %0, ptr noundef %27, ptr noundef %24) #11
  %29 = load i64, ptr %28, align 8
  %30 = or i64 %29, 268435456
  store i64 %30, ptr %28, align 8
  br label %44

31:                                               ; preds = %10
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %1) #12
  %32 = tail call fastcc ptr @c_parser_omp_all_clauses(ptr noundef nonnull %1, i32 noundef 23284, ptr noundef nonnull @.str.120) #12
  %33 = tail call ptr @c_begin_omp_parallel() #11
  call void @c_split_parallel_clauses(i32 noundef %0, ptr noundef %32, ptr noundef nonnull %3, ptr noundef nonnull %4) #11
  %34 = call fastcc ptr @c_parser_omp_sections_scope(i32 noundef %0, ptr noundef nonnull %1) #12
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %4, align 8, !tbaa !681
  %38 = getelementptr inbounds %struct.tree_exp, ptr %34, i64 1
  store ptr %37, ptr %38, align 8, !tbaa !714
  br label %39

39:                                               ; preds = %36, %31
  %40 = load ptr, ptr %3, align 8, !tbaa !681
  %41 = call ptr @c_finish_omp_parallel(i32 noundef %0, ptr noundef %40, ptr noundef %33) #11
  %42 = load i64, ptr %41, align 8
  %43 = or i64 %42, 268435456
  store i64 %43, ptr %41, align 8
  br label %44

44:                                               ; preds = %39, %22, %18
  %45 = phi ptr [ %41, %39 ], [ %28, %22 ], [ %21, %18 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret ptr %45
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_omp_sections(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !697 !PGOFuncName !1280 {
  %3 = tail call fastcc ptr @c_parser_omp_all_clauses(ptr noundef %1, i32 noundef 6560, ptr noundef nonnull @.str.122) #12
  %4 = tail call ptr @c_begin_compound_stmt(i8 noundef zeroext 1) #11
  %5 = tail call fastcc ptr @c_parser_omp_sections_scope(i32 noundef %0, ptr noundef %1) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  store ptr %3, ptr %8, align 8, !tbaa !714
  br label %9

9:                                                ; preds = %7, %2
  %10 = tail call ptr @c_end_compound_stmt(i32 noundef %0, ptr noundef %4, i8 noundef zeroext 1) #11
  %11 = tail call ptr @add_stmt(ptr noundef %10) #11
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_omp_single(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !697 !PGOFuncName !1281 {
  %3 = tail call ptr @make_node_stat(i32 noundef 157) #11
  %4 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 1
  store i32 %0, ptr %4, align 8, !tbaa !714
  %5 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !681
  %6 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !714
  %7 = tail call fastcc ptr @c_parser_omp_all_clauses(ptr noundef %1, i32 noundef 2344, ptr noundef nonnull @.str.123) #12
  %8 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %9 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  store ptr %7, ptr %9, align 8, !tbaa !714
  %10 = tail call fastcc ptr @c_parser_omp_structured_block(ptr noundef %1) #12
  store ptr %10, ptr %8, align 8, !tbaa !714
  %11 = tail call ptr @add_stmt(ptr noundef %3) #11
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_omp_task(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !697 !PGOFuncName !1282 {
  %3 = tail call fastcc ptr @c_parser_omp_all_clauses(ptr noundef %1, i32 noundef 51312, ptr noundef nonnull @.str.124) #12
  %4 = tail call ptr @c_begin_omp_task() #11
  tail call fastcc void @c_parser_statement(ptr noundef %1) #12
  %5 = tail call ptr @c_finish_omp_task(i32 noundef %0, ptr noundef %3, ptr noundef %4) #11
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @c_finish_omp_atomic(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_omp_structured_block(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !1283 {
  %2 = tail call ptr @push_stmt_list() #11
  tail call fastcc void @c_parser_statement(ptr noundef %0) #12
  %3 = tail call ptr @pop_stmt_list(ptr noundef %2) #11
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @c_finish_omp_critical(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @push_stmt_list() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @pop_stmt_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_omp_all_clauses(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !697 !PGOFuncName !1284 {
  %4 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef %0, i32 noundef 71) #12, !range !730
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %66, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %struct.c_parser, ptr %0, i64 0, i32 2
  br label %9

9:                                                ; preds = %6, %62
  %10 = phi ptr [ null, %6 ], [ %63, %62 ]
  %11 = phi i1 [ false, %6 ], [ true, %62 ]
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 19) #12, !range !730
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  br label %16

16:                                               ; preds = %15, %12, %9
  %17 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %18 = load i32, ptr %7, align 8, !tbaa !720
  %19 = tail call fastcc i32 @c_parser_omp_clause_name(ptr noundef %0) #12, !range !1285
  switch i32 %19, label %50 [
    i32 1, label %20
    i32 2, label %22
    i32 3, label %24
    i32 4, label %26
    i32 5, label %28
    i32 6, label %30
    i32 7, label %32
    i32 8, label %34
    i32 9, label %36
    i32 10, label %38
    i32 11, label %40
    i32 12, label %42
    i32 13, label %44
    i32 14, label %46
    i32 15, label %48
  ]

20:                                               ; preds = %16
  %21 = tail call fastcc ptr @c_parser_omp_clause_collapse(ptr noundef nonnull %0, ptr noundef %10) #12
  br label %51

22:                                               ; preds = %16
  %23 = tail call fastcc ptr @c_parser_omp_clause_copyin(ptr noundef nonnull %0, ptr noundef %10) #12
  br label %51

24:                                               ; preds = %16
  %25 = tail call fastcc ptr @c_parser_omp_clause_copyprivate(ptr noundef nonnull %0, ptr noundef %10) #12
  br label %51

26:                                               ; preds = %16
  %27 = tail call fastcc ptr @c_parser_omp_clause_default(ptr noundef nonnull %0, ptr noundef %10) #12
  br label %51

28:                                               ; preds = %16
  %29 = tail call fastcc ptr @c_parser_omp_clause_firstprivate(ptr noundef nonnull %0, ptr noundef %10) #12
  br label %51

30:                                               ; preds = %16
  %31 = tail call fastcc ptr @c_parser_omp_clause_if(ptr noundef nonnull %0, ptr noundef %10) #12
  br label %51

32:                                               ; preds = %16
  %33 = tail call fastcc ptr @c_parser_omp_clause_lastprivate(ptr noundef nonnull %0, ptr noundef %10) #12
  br label %51

34:                                               ; preds = %16
  %35 = tail call fastcc ptr @c_parser_omp_clause_nowait(ptr noundef nonnull %0, ptr noundef %10) #12
  br label %51

36:                                               ; preds = %16
  %37 = tail call fastcc ptr @c_parser_omp_clause_num_threads(ptr noundef nonnull %0, ptr noundef %10) #12
  br label %51

38:                                               ; preds = %16
  %39 = tail call fastcc ptr @c_parser_omp_clause_ordered(ptr noundef nonnull %0, ptr noundef %10) #12
  br label %51

40:                                               ; preds = %16
  %41 = tail call fastcc ptr @c_parser_omp_clause_private(ptr noundef nonnull %0, ptr noundef %10) #12
  br label %51

42:                                               ; preds = %16
  %43 = tail call fastcc ptr @c_parser_omp_clause_reduction(ptr noundef nonnull %0, ptr noundef %10) #12
  br label %51

44:                                               ; preds = %16
  %45 = tail call fastcc ptr @c_parser_omp_clause_schedule(ptr noundef nonnull %0, ptr noundef %10) #12
  br label %51

46:                                               ; preds = %16
  %47 = tail call fastcc ptr @c_parser_omp_clause_shared(ptr noundef nonnull %0, ptr noundef %10) #12
  br label %51

48:                                               ; preds = %16
  %49 = tail call fastcc ptr @c_parser_omp_clause_untied(ptr noundef nonnull %0, ptr noundef %10) #12
  br label %51

50:                                               ; preds = %16
  tail call fastcc void @c_parser_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.96) #12
  br label %66

51:                                               ; preds = %48, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20
  %52 = phi ptr [ %49, %48 ], [ %47, %46 ], [ %45, %44 ], [ %43, %42 ], [ %41, %40 ], [ %39, %38 ], [ %37, %36 ], [ %35, %34 ], [ %33, %32 ], [ %31, %30 ], [ %29, %28 ], [ %27, %26 ], [ %25, %24 ], [ %23, %22 ], [ %21, %20 ]
  %53 = phi ptr [ @.str.95, %48 ], [ @.str.94, %46 ], [ @.str.93, %44 ], [ @.str.92, %42 ], [ @.str.91, %40 ], [ @.str.90, %38 ], [ @.str.89, %36 ], [ @.str.88, %34 ], [ @.str.87, %32 ], [ @.str.86, %30 ], [ @.str.85, %28 ], [ @.str.84, %26 ], [ @.str.83, %24 ], [ @.str.82, %22 ], [ @.str.81, %20 ]
  %54 = shl nuw nsw i32 1, %19
  %55 = and i32 %54, %1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load i8, ptr %8, align 2
  %59 = and i8 %58, 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  tail call void (i32, ptr, ...) @error_at(i32 noundef %18, ptr noundef nonnull @.str.97, ptr noundef nonnull %53, ptr noundef %2) #11
  br label %62

62:                                               ; preds = %51, %57, %61
  %63 = phi ptr [ %52, %57 ], [ %10, %61 ], [ %52, %51 ]
  %64 = tail call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef nonnull %0, i32 noundef 71) #12, !range !730
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %9

66:                                               ; preds = %62, %3, %50
  %67 = phi ptr [ %10, %50 ], [ null, %3 ], [ %63, %62 ]
  tail call fastcc void @c_parser_skip_to_pragma_eol(ptr noundef %0) #12
  %68 = tail call ptr @c_finish_omp_clauses(ptr noundef %67) #11
  ret ptr %68
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_omp_for_loop(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !697 !PGOFuncName !1286 {
  %5 = alloca %struct.c_expr, align 8
  %6 = alloca %struct.c_expr, align 8
  %7 = alloca %struct.c_expr, align 8
  %8 = alloca %struct.c_expr, align 8
  %9 = alloca %struct.c_expr, align 8
  %10 = alloca %struct.c_expr, align 8
  %11 = icmp eq ptr %2, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %4, %23
  %13 = phi ptr [ %26, %23 ], [ %2, %4 ]
  %14 = phi i32 [ %24, %23 ], [ 1, %4 ]
  %15 = getelementptr inbounds %struct.tree_omp_clause, ptr %13, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !714
  %17 = icmp eq i32 %16, 14
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.tree_omp_clause, ptr %13, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !714
  %21 = tail call i64 @tree_low_cst(ptr noundef %20, i32 noundef 0) #11
  %22 = trunc i64 %21 to i32
  br label %23

23:                                               ; preds = %12, %18
  %24 = phi i32 [ %22, %18 ], [ %14, %12 ]
  %25 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !714
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %12, !llvm.loop !1287

28:                                               ; preds = %23
  %29 = icmp sgt i32 %24, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7990, ptr noundef nonnull @.str.2) #11
  br label %31

31:                                               ; preds = %4, %28, %30
  %32 = phi i1 [ true, %28 ], [ false, %30 ], [ true, %4 ]
  %33 = phi i32 [ %24, %28 ], [ %24, %30 ], [ 1, %4 ]
  %34 = tail call ptr @make_tree_vec_stat(i32 noundef %33) #11
  %35 = tail call ptr @make_tree_vec_stat(i32 noundef %33) #11
  %36 = tail call ptr @make_tree_vec_stat(i32 noundef %33) #11
  %37 = tail call ptr @make_tree_vec_stat(i32 noundef %33) #11
  %38 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %1, i32 noundef 40) #12, !range !730
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  tail call fastcc void @c_parser_error(ptr noundef %1, ptr noundef nonnull @.str.112) #12
  br label %324

41:                                               ; preds = %31
  %42 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %43 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !720
  tail call fastcc void @c_parser_consume_token(ptr noundef %1) #12
  br i1 %32, label %45, label %185

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.c_expr, ptr %9, i64 0, i32 1
  br label %47

47:                                               ; preds = %45, %169
  %48 = phi i64 [ 0, %45 ], [ %175, %169 ]
  %49 = phi ptr [ null, %45 ], [ %141, %169 ]
  %50 = phi i32 [ 0, %45 ], [ %174, %169 ]
  %51 = phi i32 [ %33, %45 ], [ %172, %169 ]
  %52 = phi i8 [ 0, %45 ], [ %171, %169 ]
  %53 = phi i8 [ 0, %45 ], [ %170, %169 ]
  %54 = call fastcc zeroext i8 @c_parser_require(ptr noundef %1, i32 noundef 20, ptr noundef nonnull @.str.8) #12, !range !730
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %311, label %56

56:                                               ; preds = %47
  %57 = call fastcc zeroext i8 @c_parser_next_token_starts_declspecs(ptr noundef %1) #12, !range !730
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %56
  %60 = icmp eq i64 %48, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %59
  %62 = call ptr @c_begin_compound_stmt(i8 noundef zeroext 1) #11
  %63 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %62, ptr noundef %49) #11
  br label %64

64:                                               ; preds = %61, %59
  %65 = phi ptr [ %63, %61 ], [ %49, %59 ]
  call fastcc void @c_parser_declaration_or_fndef(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  %66 = call ptr @check_for_loop_decls(i32 noundef %44) #11
  %67 = icmp eq ptr %66, null
  br i1 %67, label %94, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.tree_decl_common, ptr %66, i64 0, i32 5
  %70 = load ptr, ptr %69, align 8, !tbaa !714
  %71 = load ptr, ptr @global_trees, align 16, !tbaa !681
  %72 = icmp eq ptr %70, %71
  %73 = select i1 %72, ptr %71, ptr %66
  br label %96

74:                                               ; preds = %56
  %75 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %1, i32 noundef 53) #12, !range !730
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %94, label %77

77:                                               ; preds = %74
  %78 = call fastcc ptr @c_parser_peek_2nd_token(ptr noundef %1) #12
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 255
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %77
  %83 = getelementptr inbounds i8, ptr %6, i64 16
  %84 = getelementptr inbounds %struct.c_expr, ptr %5, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  call fastcc void @c_parser_postfix_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %6, ptr noundef %1) #12
  %85 = load ptr, ptr %6, align 8, !tbaa.struct !797
  %86 = load ptr, ptr %83, align 8, !tbaa.struct !926
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  %87 = call fastcc zeroext i8 @c_parser_require(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.32) #12, !range !730
  %88 = call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %89 = load i32, ptr %43, align 8, !tbaa !720
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #13
  call fastcc void @c_parser_expr_no_commas(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %7, ptr noundef %1, ptr noundef null) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #13
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %8, i32 noundef %89, ptr noundef nonnull byval(%struct.c_expr) align 8 %5) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  %90 = load ptr, ptr %5, align 8, !tbaa !798
  %91 = load ptr, ptr %84, align 8, !tbaa !800
  %92 = call ptr @build_modify_expr(i32 noundef %89, ptr noundef %85, ptr noundef %86, i32 noundef 116, i32 noundef %89, ptr noundef %90, ptr noundef %91) #11
  %93 = call ptr @c_process_expr_stmt(i32 noundef %89, ptr noundef %92) #11
  call fastcc void @c_parser_skip_until_found(ptr noundef %1, i32 noundef 43, ptr noundef nonnull @.str.7) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  br label %96

94:                                               ; preds = %74, %77, %64
  %95 = phi ptr [ %65, %64 ], [ %49, %77 ], [ %49, %74 ]
  call fastcc void @c_parser_error(ptr noundef %1, ptr noundef nonnull @.str.113) #12
  call fastcc void @c_parser_skip_until_found(ptr noundef %1, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  br label %139

96:                                               ; preds = %82, %68
  %97 = phi ptr [ %65, %68 ], [ %49, %82 ]
  %98 = phi ptr [ %73, %68 ], [ %93, %82 ]
  %99 = phi ptr [ %73, %68 ], [ %85, %82 ]
  %100 = call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef %1, i32 noundef 43) #12, !range !730
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %117, label %102

102:                                              ; preds = %96
  %103 = call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %104 = load i32, ptr %43, align 8, !tbaa !720
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #13
  call fastcc void @c_parser_binary_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %9, ptr noundef %1, ptr noundef null) #12
  %105 = load ptr, ptr %9, align 8, !tbaa !798
  %106 = call ptr @c_objc_common_truthvalue_conversion(i32 noundef %104, ptr noundef %105) #11
  %107 = call ptr @c_fully_fold(ptr noundef %106, i8 noundef zeroext 0, ptr noundef null) #11
  %108 = load i32, ptr %46, align 8, !tbaa !935
  %109 = add i32 %108, -97
  %110 = icmp ult i32 %109, 4
  br i1 %110, label %115, label %111

111:                                              ; preds = %102
  %112 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !681
  %113 = load ptr, ptr @global_trees, align 16, !tbaa !681
  %114 = call ptr @build1_stat(i32 noundef 116, ptr noundef %112, ptr noundef %113) #11
  br label %115

115:                                              ; preds = %102, %111
  %116 = phi ptr [ %114, %111 ], [ %107, %102 ]
  call void @protected_set_expr_location(ptr noundef %116, i32 noundef %104) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #13
  br label %117

117:                                              ; preds = %115, %96
  %118 = phi ptr [ %116, %115 ], [ null, %96 ]
  call fastcc void @c_parser_skip_until_found(ptr noundef %1, i32 noundef 43, ptr noundef nonnull @.str.7) #12
  %119 = call fastcc zeroext i8 @c_parser_next_token_is_not(ptr noundef %1, i32 noundef 21) #12, !range !730
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %117
  %122 = call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %123 = load i32, ptr %43, align 8, !tbaa !720
  call fastcc void @c_parser_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %10, ptr noundef %1) #12
  %124 = load ptr, ptr %10, align 8, !tbaa !798
  %125 = call ptr @c_process_expr_stmt(i32 noundef %123, ptr noundef %124) #11
  br label %126

126:                                              ; preds = %121, %117
  %127 = phi ptr [ %125, %121 ], [ null, %117 ]
  call fastcc void @c_parser_skip_until_found(ptr noundef %1, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  %128 = icmp eq ptr %99, null
  br i1 %128, label %139, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr @global_trees, align 16, !tbaa !681
  %131 = icmp eq ptr %99, %130
  %132 = icmp eq ptr %98, %130
  %133 = select i1 %131, i1 true, i1 %132
  br i1 %133, label %139, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.tree_vec, ptr %34, i64 0, i32 2, i64 %48
  store ptr %99, ptr %135, align 8, !tbaa !714
  %136 = getelementptr inbounds %struct.tree_vec, ptr %35, i64 0, i32 2, i64 %48
  store ptr %98, ptr %136, align 8, !tbaa !714
  %137 = getelementptr inbounds %struct.tree_vec, ptr %36, i64 0, i32 2, i64 %48
  store ptr %118, ptr %137, align 8, !tbaa !714
  %138 = getelementptr inbounds %struct.tree_vec, ptr %37, i64 0, i32 2, i64 %48
  store ptr %127, ptr %138, align 8, !tbaa !714
  br label %139

139:                                              ; preds = %126, %129, %134, %94
  %140 = phi i8 [ 1, %94 ], [ %53, %134 ], [ 1, %129 ], [ 1, %126 ]
  %141 = phi ptr [ %95, %94 ], [ %97, %134 ], [ %97, %129 ], [ %97, %126 ]
  %142 = add nsw i32 %51, -1
  %143 = zext i32 %142 to i64
  %144 = icmp eq i64 %48, %143
  br i1 %144, label %178, label %145

145:                                              ; preds = %139
  %146 = call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %1, i32 noundef 40) #12, !range !730
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %165, %145
  %149 = phi i32 [ 0, %145 ], [ %166, %165 ]
  call fastcc void @c_parser_consume_token(ptr noundef %1) #12
  br label %169

150:                                              ; preds = %145, %165
  %151 = phi i32 [ %166, %165 ], [ 0, %145 ]
  %152 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %1, i32 noundef 41) #12, !range !730
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %150
  call fastcc void @c_parser_consume_token(ptr noundef %1) #12
  %155 = add nsw i32 %151, 1
  br label %165

156:                                              ; preds = %150
  %157 = icmp eq i32 %151, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %156
  %159 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %1, i32 noundef 43) #12, !range !730
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %162, label %161

161:                                              ; preds = %158
  call fastcc void @c_parser_consume_token(ptr noundef %1) #12
  br label %165

162:                                              ; preds = %158, %156
  %163 = phi i8 [ 1, %158 ], [ %52, %156 ]
  call fastcc void @c_parser_error(ptr noundef %1, ptr noundef nonnull @.str.114) #12
  %164 = call i32 @llvm.usub.sat.i32(i32 %151, i32 1)
  br label %169

165:                                              ; preds = %161, %154
  %166 = phi i32 [ %155, %154 ], [ %151, %161 ]
  %167 = call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %1, i32 noundef 40) #12, !range !730
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %150, label %148

169:                                              ; preds = %148, %162
  %170 = phi i8 [ %140, %148 ], [ 1, %162 ]
  %171 = phi i8 [ %52, %148 ], [ %163, %162 ]
  %172 = phi i32 [ %51, %148 ], [ 0, %162 ]
  %173 = phi i32 [ %149, %148 ], [ %164, %162 ]
  %174 = add nsw i32 %173, %50
  %175 = add nuw nsw i64 %48, 1
  %176 = sext i32 %172 to i64
  %177 = icmp slt i64 %175, %176
  br i1 %177, label %47, label %178, !llvm.loop !1288

178:                                              ; preds = %139, %169
  %179 = phi i8 [ %171, %169 ], [ %52, %139 ]
  %180 = phi i32 [ %172, %169 ], [ %51, %139 ]
  %181 = phi i32 [ %174, %169 ], [ %50, %139 ]
  %182 = phi i8 [ %170, %169 ], [ %140, %139 ]
  %183 = icmp eq i8 %179, 0
  %184 = icmp eq i8 %182, 0
  br label %185

185:                                              ; preds = %178, %41
  %186 = phi i1 [ true, %41 ], [ %183, %178 ]
  %187 = phi i32 [ %33, %41 ], [ %180, %178 ]
  %188 = phi i32 [ 0, %41 ], [ %181, %178 ]
  %189 = phi i1 [ true, %41 ], [ %184, %178 ]
  %190 = phi ptr [ null, %41 ], [ %141, %178 ]
  %191 = load ptr, ptr @c_break_label, align 8, !tbaa !681
  %192 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 18), align 16, !tbaa !681
  store ptr %192, ptr @c_break_label, align 8, !tbaa !681
  %193 = load ptr, ptr @c_cont_label, align 8, !tbaa !681
  store ptr null, ptr @c_cont_label, align 8, !tbaa !681
  %194 = call ptr @push_stmt_list() #11
  br i1 %186, label %200, label %195

195:                                              ; preds = %185
  %196 = call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %197 = load i32, ptr %43, align 8, !tbaa !720
  %198 = call ptr @c_begin_compound_stmt(i8 noundef zeroext 1) #11
  call fastcc void @c_parser_compound_statement_nostart(ptr noundef %1) #12
  %199 = call ptr @c_end_compound_stmt(i32 noundef %197, ptr noundef %198, i8 noundef zeroext 1) #11
  br label %202

200:                                              ; preds = %185
  %201 = call fastcc ptr @c_parser_c99_block_statement(ptr noundef %1) #12
  br label %202

202:                                              ; preds = %200, %195
  %203 = phi ptr [ %201, %200 ], [ %199, %195 ]
  %204 = call ptr @add_stmt(ptr noundef %203) #11
  %205 = load ptr, ptr @c_cont_label, align 8, !tbaa !681
  %206 = icmp eq ptr %205, null
  br i1 %206, label %212, label %207

207:                                              ; preds = %202
  %208 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !681
  %209 = call ptr @build1_stat(i32 noundef 133, ptr noundef %208, ptr noundef nonnull %205) #11
  %210 = getelementptr inbounds %struct.tree_exp, ptr %209, i64 0, i32 1
  store i32 %0, ptr %210, align 8, !tbaa !714
  %211 = call ptr @add_stmt(ptr noundef %209) #11
  br label %212

212:                                              ; preds = %207, %202
  %213 = call ptr @pop_stmt_list(ptr noundef %194) #11
  store ptr %191, ptr @c_break_label, align 8, !tbaa !681
  store ptr %193, ptr @c_cont_label, align 8, !tbaa !681
  %214 = icmp eq i32 %188, 0
  br i1 %214, label %239, label %215

215:                                              ; preds = %212, %236
  %216 = phi i32 [ %237, %236 ], [ %188, %212 ]
  %217 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %1, i32 noundef 42) #12, !range !730
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %221, label %219

219:                                              ; preds = %215
  call fastcc void @c_parser_consume_token(ptr noundef %1) #12
  %220 = add nsw i32 %216, -1
  br label %236

221:                                              ; preds = %215
  %222 = call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %1, i32 noundef 43) #12, !range !730
  %223 = icmp eq i8 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %221
  call fastcc void @c_parser_consume_token(ptr noundef %1) #12
  br label %236

225:                                              ; preds = %221
  call fastcc void @c_parser_error(ptr noundef %1, ptr noundef nonnull @.str.115) #12
  br label %226

226:                                              ; preds = %225, %226
  %227 = phi ptr [ %213, %225 ], [ %233, %226 ]
  %228 = phi i32 [ %216, %225 ], [ %234, %226 ]
  %229 = call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %230 = load i32, ptr %43, align 8, !tbaa !720
  %231 = call ptr @c_begin_compound_stmt(i8 noundef zeroext 1) #11
  %232 = call ptr @add_stmt(ptr noundef %227) #11
  call fastcc void @c_parser_compound_statement_nostart(ptr noundef %1) #12
  %233 = call ptr @c_end_compound_stmt(i32 noundef %230, ptr noundef %231, i8 noundef zeroext 1) #11
  %234 = add nsw i32 %228, -1
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %311, label %226, !llvm.loop !1289

236:                                              ; preds = %224, %219
  %237 = phi i32 [ %220, %219 ], [ %216, %224 ]
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %215, !llvm.loop !1290

239:                                              ; preds = %236, %212
  br i1 %189, label %240, label %311

240:                                              ; preds = %239
  %241 = call ptr @c_finish_omp_for(i32 noundef %0, ptr noundef %34, ptr noundef %35, ptr noundef %36, ptr noundef %37, ptr noundef %213, ptr noundef null) #11
  %242 = icmp eq ptr %241, null
  br i1 %242, label %311, label %243

243:                                              ; preds = %240
  %244 = icmp eq ptr %3, null
  br i1 %244, label %308, label %245

245:                                              ; preds = %243
  %246 = load ptr, ptr %3, align 8, !tbaa !681
  %247 = icmp eq ptr %246, null
  br i1 %247, label %308, label %248

248:                                              ; preds = %245
  %249 = icmp sgt i32 %187, 0
  %250 = zext nneg i32 %187 to i64
  br label %251

251:                                              ; preds = %248, %303
  %252 = phi ptr [ %246, %248 ], [ %304, %303 ]
  %253 = phi ptr [ %3, %248 ], [ %306, %303 ]
  %254 = phi ptr [ %2, %248 ], [ %305, %303 ]
  %255 = getelementptr inbounds %struct.tree_omp_clause, ptr %252, i64 0, i32 2
  %256 = load i32, ptr %255, align 4, !tbaa !714
  %257 = add i32 %256, -3
  %258 = icmp ult i32 %257, 2
  br i1 %258, label %259, label %263

259:                                              ; preds = %251
  br i1 %249, label %260, label %275

260:                                              ; preds = %259
  %261 = getelementptr inbounds %struct.tree_omp_clause, ptr %252, i64 0, i32 6
  %262 = load ptr, ptr %261, align 8, !tbaa !714
  br label %265

263:                                              ; preds = %251
  %264 = getelementptr inbounds %struct.tree_common, ptr %252, i64 0, i32 1
  br label %299

265:                                              ; preds = %260, %270
  %266 = phi i64 [ 0, %260 ], [ %271, %270 ]
  %267 = getelementptr inbounds %struct.tree_vec, ptr %34, i64 0, i32 2, i64 %266
  %268 = load ptr, ptr %267, align 8, !tbaa !714
  %269 = icmp eq ptr %268, %262
  br i1 %269, label %273, label %270

270:                                              ; preds = %265
  %271 = add nuw nsw i64 %266, 1
  %272 = icmp eq i64 %271, %250
  br i1 %272, label %278, label %265, !llvm.loop !1291

273:                                              ; preds = %265
  %274 = trunc i64 %266 to i32
  br label %275

275:                                              ; preds = %273, %259
  %276 = phi i32 [ 0, %259 ], [ %274, %273 ]
  %277 = icmp eq i32 %276, %187
  br i1 %277, label %278, label %280

278:                                              ; preds = %270, %275
  %279 = getelementptr inbounds %struct.tree_common, ptr %252, i64 0, i32 1
  br label %299

280:                                              ; preds = %275
  %281 = icmp eq i32 %256, 3
  br i1 %281, label %282, label %288

282:                                              ; preds = %280
  %283 = getelementptr inbounds %struct.tree_omp_clause, ptr %252, i64 0, i32 6
  %284 = load ptr, ptr %283, align 8, !tbaa !714
  call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.116, ptr noundef %284) #11
  %285 = load ptr, ptr %253, align 8, !tbaa !681
  %286 = getelementptr inbounds %struct.tree_common, ptr %285, i64 0, i32 1
  %287 = load ptr, ptr %286, align 8, !tbaa !714
  store ptr %287, ptr %253, align 8, !tbaa !681
  br label %303

288:                                              ; preds = %280
  %289 = getelementptr inbounds %struct.tree_omp_clause, ptr %252, i64 0, i32 1
  %290 = load i32, ptr %289, align 8, !tbaa !714
  %291 = call ptr @build_omp_clause(i32 noundef %290, i32 noundef 4) #11
  %292 = load ptr, ptr %253, align 8, !tbaa !681
  %293 = getelementptr inbounds %struct.tree_omp_clause, ptr %292, i64 0, i32 6
  %294 = load ptr, ptr %293, align 8, !tbaa !714
  %295 = getelementptr inbounds %struct.tree_omp_clause, ptr %291, i64 0, i32 6
  store ptr %294, ptr %295, align 8, !tbaa !714
  %296 = getelementptr inbounds %struct.tree_common, ptr %291, i64 0, i32 1
  store ptr %254, ptr %296, align 8, !tbaa !714
  %297 = load ptr, ptr %253, align 8, !tbaa !681
  %298 = getelementptr inbounds %struct.tree_omp_clause, ptr %297, i64 0, i32 2
  store i32 2, ptr %298, align 4, !tbaa !714
  br label %299

299:                                              ; preds = %263, %288, %278
  %300 = phi ptr [ %291, %288 ], [ %254, %278 ], [ %254, %263 ]
  %301 = phi ptr [ %253, %288 ], [ %279, %278 ], [ %264, %263 ]
  %302 = load ptr, ptr %301, align 8, !tbaa !681
  br label %303

303:                                              ; preds = %299, %282
  %304 = phi ptr [ %302, %299 ], [ %287, %282 ]
  %305 = phi ptr [ %300, %299 ], [ %254, %282 ]
  %306 = phi ptr [ %301, %299 ], [ %253, %282 ]
  %307 = icmp eq ptr %304, null
  br i1 %307, label %308, label %251, !llvm.loop !1292

308:                                              ; preds = %303, %245, %243
  %309 = phi ptr [ %2, %243 ], [ %2, %245 ], [ %305, %303 ]
  %310 = getelementptr inbounds %struct.tree_exp, ptr %241, i64 1
  store ptr %309, ptr %310, align 8, !tbaa !714
  br label %311

311:                                              ; preds = %47, %226, %240, %308, %239
  %312 = phi ptr [ null, %239 ], [ %241, %308 ], [ null, %240 ], [ null, %226 ], [ null, %47 ]
  %313 = phi ptr [ %190, %239 ], [ %190, %308 ], [ %190, %240 ], [ %190, %226 ], [ %49, %47 ]
  %314 = icmp eq ptr %313, null
  br i1 %314, label %324, label %315

315:                                              ; preds = %311, %315
  %316 = phi ptr [ %322, %315 ], [ %313, %311 ]
  %317 = getelementptr inbounds %struct.tree_list, ptr %316, i64 0, i32 2
  %318 = load ptr, ptr %317, align 8, !tbaa !714
  %319 = call ptr @c_end_compound_stmt(i32 noundef %0, ptr noundef %318, i8 noundef zeroext 1) #11
  %320 = call ptr @add_stmt(ptr noundef %319) #11
  %321 = getelementptr inbounds %struct.tree_common, ptr %316, i64 0, i32 1
  %322 = load ptr, ptr %321, align 8, !tbaa !714
  %323 = icmp eq ptr %322, null
  br i1 %323, label %324, label %315, !llvm.loop !1293

324:                                              ; preds = %315, %311, %40
  %325 = phi ptr [ null, %40 ], [ %312, %311 ], [ %312, %315 ]
  ret ptr %325
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @c_parser_omp_clause_name(ptr noundef %0) unnamed_addr #0 !prof !697 !PGOFuncName !1294 {
  %2 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 36) #12, !range !730
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %56

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef %0, i32 noundef 43) #12, !range !730
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %56

7:                                                ; preds = %4
  %8 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 53) #12, !range !730
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %58, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %12 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !698
  %14 = getelementptr inbounds %struct.tree_identifier, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !714
  %16 = load i8, ptr %15, align 1, !tbaa !714
  switch i8 %16, label %58 [
    i8 99, label %17
    i8 102, label %26
    i8 108, label %29
    i8 110, label %32
    i8 111, label %38
    i8 112, label %41
    i8 114, label %44
    i8 115, label %47
    i8 117, label %53
  ]

17:                                               ; preds = %10
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.81, ptr noundef nonnull dereferenceable(1) %15) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %56, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.82, ptr noundef nonnull dereferenceable(1) %15) #12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %56, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.83, ptr noundef nonnull dereferenceable(1) %15) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %56, label %58

26:                                               ; preds = %10
  %27 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(13) @.str.85, ptr noundef nonnull dereferenceable(1) %15) #12
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %56, label %58

29:                                               ; preds = %10
  %30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.87, ptr noundef nonnull dereferenceable(1) %15) #12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %56, label %58

32:                                               ; preds = %10
  %33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.88, ptr noundef nonnull dereferenceable(1) %15) #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %56, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.89, ptr noundef nonnull dereferenceable(1) %15) #12
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %56, label %58

38:                                               ; preds = %10
  %39 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.90, ptr noundef nonnull dereferenceable(1) %15) #12
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %56, label %58

41:                                               ; preds = %10
  %42 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.91, ptr noundef nonnull dereferenceable(1) %15) #12
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %56, label %58

44:                                               ; preds = %10
  %45 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(10) @.str.92, ptr noundef nonnull dereferenceable(1) %15) #12
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %56, label %58

47:                                               ; preds = %10
  %48 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(9) @.str.93, ptr noundef nonnull dereferenceable(1) %15) #12
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.94, ptr noundef nonnull dereferenceable(1) %15) #12
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %58

53:                                               ; preds = %10
  %54 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.95, ptr noundef nonnull dereferenceable(1) %15) #12
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53, %50, %44, %41, %38, %35, %29, %26, %23, %1, %4, %17, %20, %32, %47
  %57 = phi i32 [ 13, %47 ], [ 8, %32 ], [ 2, %20 ], [ 1, %17 ], [ 4, %4 ], [ 6, %1 ], [ 3, %23 ], [ 5, %26 ], [ 7, %29 ], [ 9, %35 ], [ 10, %38 ], [ 11, %41 ], [ 12, %44 ], [ 14, %50 ], [ 15, %53 ]
  tail call fastcc void @c_parser_consume_token(ptr noundef %0) #12
  br label %58

58:                                               ; preds = %7, %10, %23, %26, %29, %35, %38, %41, %44, %50, %53, %56
  %59 = phi i32 [ %57, %56 ], [ 0, %7 ], [ 0, %10 ], [ 0, %23 ], [ 0, %26 ], [ 0, %29 ], [ 0, %35 ], [ 0, %38 ], [ 0, %41 ], [ 0, %44 ], [ 0, %50 ], [ 0, %53 ]
  ret i32 %59
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_omp_clause_collapse(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !697 !PGOFuncName !1295 {
  %3 = alloca %struct.c_expr, align 8
  %4 = load ptr, ptr @global_trees, align 16, !tbaa !681
  tail call fastcc void @check_no_duplicate_clause(ptr noundef %1, i32 noundef 14, ptr noundef nonnull @.str.81) #12
  %5 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %6 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !720
  %8 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef %0, i32 noundef 20, ptr noundef nonnull @.str.8) #12, !range !730
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  call fastcc void @c_parser_expr_no_commas(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %3, ptr noundef nonnull %0, ptr noundef null) #12
  %11 = load ptr, ptr %3, align 8, !tbaa !798
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %0, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  br label %12

12:                                               ; preds = %10, %2
  %13 = phi ptr [ %11, %10 ], [ %4, %2 ]
  %14 = load ptr, ptr @global_trees, align 16, !tbaa !681
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %36, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !714
  %19 = load i64, ptr %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = and i32 %20, 65535
  %22 = add nsw i32 %21, -6
  %23 = icmp ult i32 %22, 3
  br i1 %23, label %24, label %31

24:                                               ; preds = %16
  %25 = tail call i32 @host_integerp(ptr noundef nonnull %13, i32 noundef 0) #11
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = tail call i64 @tree_low_cst(ptr noundef nonnull %13, i32 noundef 0) #11
  %29 = add i64 %28, -1
  %30 = icmp ult i64 %29, 2147483647
  br i1 %30, label %32, label %31

31:                                               ; preds = %16, %27, %24
  tail call void (i32, ptr, ...) @error_at(i32 noundef %7, ptr noundef nonnull @.str.98) #11
  br label %36

32:                                               ; preds = %27
  %33 = tail call ptr @build_omp_clause(i32 noundef %7, i32 noundef 14) #11
  %34 = getelementptr inbounds %struct.tree_omp_clause, ptr %33, i64 0, i32 6
  store ptr %13, ptr %34, align 8, !tbaa !714
  %35 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 1
  store ptr %1, ptr %35, align 8, !tbaa !714
  br label %36

36:                                               ; preds = %12, %32, %31
  %37 = phi ptr [ %1, %31 ], [ %33, %32 ], [ %1, %12 ]
  ret ptr %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_omp_clause_copyin(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !697 !PGOFuncName !1296 {
  %3 = tail call fastcc ptr @c_parser_omp_var_list_parens(ptr noundef %0, i32 noundef 6, ptr noundef %1) #12
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_omp_clause_copyprivate(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !697 !PGOFuncName !1297 {
  %3 = tail call fastcc ptr @c_parser_omp_var_list_parens(ptr noundef %0, i32 noundef 7, ptr noundef %1) #12
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_omp_clause_default(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !697 !PGOFuncName !1298 {
  %3 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !720
  %6 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef %0, i32 noundef 20, ptr noundef nonnull @.str.8) #12, !range !730
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %2
  %9 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 53) #12, !range !730
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %13 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !698
  %15 = getelementptr inbounds %struct.tree_identifier, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !714
  %17 = load i8, ptr %16, align 1, !tbaa !714
  switch i8 %17, label %24 [
    i8 110, label %18
    i8 115, label %21
  ]

18:                                               ; preds = %11
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.100, ptr noundef nonnull dereferenceable(1) %16) #12
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %25, label %24

21:                                               ; preds = %11
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.94, ptr noundef nonnull dereferenceable(1) %16) #12
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %8, %18, %21, %11
  tail call fastcc void @c_parser_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.101) #12
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %0, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  br label %30

25:                                               ; preds = %18, %21
  %26 = phi i32 [ 2, %18 ], [ 1, %21 ]
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %0, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  tail call fastcc void @check_no_duplicate_clause(ptr noundef %1, i32 noundef 13, ptr noundef nonnull @.str.84) #12
  %27 = tail call ptr @build_omp_clause(i32 noundef %5, i32 noundef 13) #11
  %28 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 1
  store ptr %1, ptr %28, align 8, !tbaa !714
  %29 = getelementptr inbounds %struct.tree_omp_clause, ptr %27, i64 0, i32 3
  store i32 %26, ptr %29, align 8, !tbaa !714
  br label %30

30:                                               ; preds = %24, %2, %25
  %31 = phi ptr [ %27, %25 ], [ %1, %2 ], [ %1, %24 ]
  ret ptr %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_omp_clause_firstprivate(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !697 !PGOFuncName !1299 {
  %3 = tail call fastcc ptr @c_parser_omp_var_list_parens(ptr noundef %0, i32 noundef 3, ptr noundef %1) #12
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_omp_clause_if(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !697 !PGOFuncName !1300 {
  %3 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !720
  %6 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %0, i32 noundef 20) #12, !range !730
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @c_parser_paren_condition(ptr noundef nonnull %0) #12
  tail call fastcc void @check_no_duplicate_clause(ptr noundef %1, i32 noundef 8, ptr noundef nonnull @.str.86) #12
  %10 = tail call ptr @build_omp_clause(i32 noundef %5, i32 noundef 8) #11
  %11 = getelementptr inbounds %struct.tree_omp_clause, ptr %10, i64 0, i32 6
  store ptr %9, ptr %11, align 8, !tbaa !714
  %12 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  store ptr %1, ptr %12, align 8, !tbaa !714
  br label %14

13:                                               ; preds = %2
  tail call fastcc void @c_parser_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.8) #12
  br label %14

14:                                               ; preds = %13, %8
  %15 = phi ptr [ %10, %8 ], [ %1, %13 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_omp_clause_lastprivate(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !697 !PGOFuncName !1301 {
  %3 = tail call fastcc ptr @c_parser_omp_var_list_parens(ptr noundef %0, i32 noundef 4, ptr noundef %1) #12
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_omp_clause_nowait(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !697 !PGOFuncName !1302 {
  %3 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !720
  tail call fastcc void @check_no_duplicate_clause(ptr noundef %1, i32 noundef 11, ptr noundef nonnull @.str.88) #12
  %6 = tail call ptr @build_omp_clause(i32 noundef %5, i32 noundef 11) #11
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !714
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_omp_clause_num_threads(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !697 !PGOFuncName !1303 {
  %3 = alloca %struct.c_expr, align 8
  %4 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !720
  %7 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef %0, i32 noundef 20, ptr noundef nonnull @.str.8) #12, !range !730
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %47, label %9

9:                                                ; preds = %2
  %10 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %11 = load i32, ptr %5, align 8, !tbaa !720
  call fastcc void @c_parser_expression(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %3, ptr noundef nonnull %0) #12
  %12 = load ptr, ptr %3, align 8, !tbaa !798
  %13 = tail call ptr @c_fully_fold(ptr noundef %12, i8 noundef zeroext 0, ptr noundef null) #11
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %0, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  %14 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !714
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 65535
  %19 = add nsw i32 %18, -6
  %20 = icmp ult i32 %19, 3
  br i1 %20, label %21, label %41

21:                                               ; preds = %9
  %22 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !681
  %23 = tail call ptr @build_int_cst(ptr noundef nonnull %15, i64 noundef 0) #11
  %24 = tail call ptr @fold_build2_stat_loc(i32 noundef %11, i32 noundef 98, ptr noundef %22, ptr noundef nonnull %13, ptr noundef %23) #11
  %25 = icmp eq ptr %24, null
  br i1 %25, label %35, label %26

26:                                               ; preds = %21
  %27 = load i64, ptr %24, align 8
  %28 = and i64 %27, 65535
  %29 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !676
  %31 = add i32 %30, -4
  %32 = icmp ult i32 %31, 7
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.tree_exp, ptr %24, i64 0, i32 1
  store i32 %11, ptr %34, align 8, !tbaa !714
  br label %35

35:                                               ; preds = %33, %26, %21
  %36 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !681
  %37 = icmp eq ptr %24, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %11, i32 noundef 0, ptr noundef nonnull @.str.103) #11
  %40 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !681
  br label %42

41:                                               ; preds = %9
  tail call fastcc void @c_parser_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.102) #12
  br label %47

42:                                               ; preds = %35, %38
  %43 = phi ptr [ %40, %38 ], [ %13, %35 ]
  tail call fastcc void @check_no_duplicate_clause(ptr noundef %1, i32 noundef 9, ptr noundef nonnull @.str.89) #12
  %44 = tail call ptr @build_omp_clause(i32 noundef %6, i32 noundef 9) #11
  %45 = getelementptr inbounds %struct.tree_omp_clause, ptr %44, i64 0, i32 6
  store ptr %43, ptr %45, align 8, !tbaa !714
  %46 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 1
  store ptr %1, ptr %46, align 8, !tbaa !714
  br label %47

47:                                               ; preds = %42, %41, %2
  %48 = phi ptr [ %1, %2 ], [ %44, %42 ], [ %1, %41 ]
  ret ptr %48
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_omp_clause_ordered(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !697 !PGOFuncName !1304 {
  tail call fastcc void @check_no_duplicate_clause(ptr noundef %1, i32 noundef 12, ptr noundef nonnull @.str.90) #12
  %3 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !720
  %6 = tail call ptr @build_omp_clause(i32 noundef %5, i32 noundef 12) #11
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !714
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_omp_clause_private(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !697 !PGOFuncName !1305 {
  %3 = tail call fastcc ptr @c_parser_omp_var_list_parens(ptr noundef %0, i32 noundef 1, ptr noundef %1) #12
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_omp_clause_reduction(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !697 !PGOFuncName !1306 {
  %3 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !720
  %6 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef %0, i32 noundef 20, ptr noundef nonnull @.str.8) #12, !range !730
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %37, label %8

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %10 = load i32, ptr %0, align 8
  %11 = trunc i32 %10 to i8
  %12 = add i8 %11, -4
  %13 = icmp ult i8 %12, 13
  br i1 %13, label %14, label %34

14:                                               ; preds = %8
  %15 = zext nneg i8 %12 to i16
  %16 = lshr i16 6375, %15
  %17 = and i16 %16, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %14
  %20 = zext nneg i8 %12 to i64
  %21 = getelementptr inbounds [13 x i32], ptr @switch.table.c_parser_omp_clause_reduction, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %23 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef nonnull %0, i32 noundef 18, ptr noundef nonnull @.str.15) #12, !range !730
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %19
  %26 = tail call fastcc ptr @c_parser_omp_variable_list(ptr noundef nonnull %0, i32 noundef %5, i32 noundef 5, ptr noundef %1) #12
  %27 = icmp eq ptr %26, %1
  br i1 %27, label %35, label %28

28:                                               ; preds = %25, %28
  %29 = phi ptr [ %32, %28 ], [ %26, %25 ]
  %30 = getelementptr inbounds %struct.tree_omp_clause, ptr %29, i64 0, i32 3
  store i32 %22, ptr %30, align 8, !tbaa !714
  %31 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !714
  %33 = icmp eq ptr %32, %1
  br i1 %33, label %35, label %28, !llvm.loop !1307

34:                                               ; preds = %14, %8
  tail call fastcc void @c_parser_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.104) #12
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %0, i32 noundef 21, ptr noundef null) #12
  br label %37

35:                                               ; preds = %28, %25, %19
  %36 = phi ptr [ %1, %19 ], [ %1, %25 ], [ %26, %28 ]
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %0, i32 noundef 21, ptr noundef nonnull @.str.9) #12
  br label %37

37:                                               ; preds = %35, %34, %2
  %38 = phi ptr [ %1, %2 ], [ %36, %35 ], [ %1, %34 ]
  ret ptr %38
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_omp_clause_schedule(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !697 !PGOFuncName !1308 {
  %3 = alloca %struct.c_expr, align 8
  %4 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %5 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !720
  %7 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef %0, i32 noundef 20, ptr noundef nonnull @.str.8) #12, !range !730
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %62, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @build_omp_clause(i32 noundef %6, i32 noundef 10) #11
  %11 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 53) #12, !range !730
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %9
  %14 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %15 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !698
  %17 = getelementptr inbounds %struct.tree_identifier, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !714
  %19 = load i8, ptr %18, align 1, !tbaa !714
  switch i8 %19, label %61 [
    i8 100, label %20
    i8 103, label %23
    i8 114, label %26
  ]

20:                                               ; preds = %13
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.105, ptr noundef nonnull dereferenceable(1) %18) #12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %35, label %61

23:                                               ; preds = %13
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.106, ptr noundef nonnull dereferenceable(1) %18) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %61

26:                                               ; preds = %13
  %27 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.107, ptr noundef nonnull dereferenceable(1) %18) #12
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %61

29:                                               ; preds = %9
  %30 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef nonnull %0, i32 noundef 0) #12, !range !730
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = tail call fastcc zeroext i8 @c_parser_next_token_is_keyword(ptr noundef nonnull %0, i32 noundef 11) #12, !range !730
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %61, label %35

35:                                               ; preds = %32, %29, %26, %23, %20
  %36 = phi i32 [ 1, %20 ], [ 2, %23 ], [ 4, %26 ], [ 0, %29 ], [ 3, %32 ]
  %37 = getelementptr inbounds %struct.tree_omp_clause, ptr %10, i64 0, i32 3
  store i32 %36, ptr %37, align 8, !tbaa !714
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %38 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %0, i32 noundef 19) #12, !range !730
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %58, label %40

40:                                               ; preds = %35
  tail call fastcc void @c_parser_consume_token(ptr noundef nonnull %0) #12
  %41 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %0) #12
  %42 = load i32, ptr %5, align 8, !tbaa !720
  call fastcc void @c_parser_expr_no_commas(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %3, ptr noundef nonnull %0, ptr noundef null) #12
  %43 = load ptr, ptr %3, align 8, !tbaa !798
  %44 = tail call ptr @c_fully_fold(ptr noundef %43, i8 noundef zeroext 0, ptr noundef null) #11
  %45 = getelementptr inbounds %struct.tree_omp_clause, ptr %10, i64 0, i32 3
  %46 = load i32, ptr %45, align 8, !tbaa !714
  switch i32 %46, label %49 [
    i32 4, label %47
    i32 3, label %48
  ]

47:                                               ; preds = %40
  tail call void (i32, ptr, ...) @error_at(i32 noundef %42, ptr noundef nonnull @.str.108) #11
  br label %58

48:                                               ; preds = %40
  tail call void (i32, ptr, ...) @error_at(i32 noundef %42, ptr noundef nonnull @.str.109) #11
  br label %58

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !714
  %52 = load i64, ptr %51, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 8
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.tree_omp_clause, ptr %10, i64 0, i32 6
  store ptr %44, ptr %56, align 8, !tbaa !714
  br label %58

57:                                               ; preds = %49
  tail call fastcc void @c_parser_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.102) #12
  br label %58

58:                                               ; preds = %35, %47, %55, %57, %48
  %59 = phi ptr [ @.str.9, %48 ], [ @.str.9, %57 ], [ @.str.9, %55 ], [ @.str.9, %47 ], [ @.str.110, %35 ]
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %0, i32 noundef 21, ptr noundef nonnull %59) #12
  tail call fastcc void @check_no_duplicate_clause(ptr noundef %1, i32 noundef 10, ptr noundef nonnull @.str.93) #12
  %60 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  store ptr %1, ptr %60, align 8, !tbaa !714
  br label %62

61:                                               ; preds = %13, %26, %23, %20, %32
  tail call fastcc void @c_parser_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.111) #12
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %0, i32 noundef 21, ptr noundef null) #12
  br label %62

62:                                               ; preds = %2, %61, %58
  %63 = phi ptr [ %1, %61 ], [ %10, %58 ], [ %1, %2 ]
  ret ptr %63
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_omp_clause_shared(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !697 !PGOFuncName !1309 {
  %3 = tail call fastcc ptr @c_parser_omp_var_list_parens(ptr noundef %0, i32 noundef 2, ptr noundef %1) #12
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_omp_clause_untied(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !697 !PGOFuncName !1310 {
  tail call fastcc void @check_no_duplicate_clause(ptr noundef %1, i32 noundef 15, ptr noundef nonnull @.str.95) #12
  %3 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %0) #12
  %4 = getelementptr inbounds %struct.c_token, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !720
  %6 = tail call ptr @build_omp_clause(i32 noundef %5, i32 noundef 15) #11
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !714
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @c_finish_omp_clauses(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_no_duplicate_clause(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !697 !PGOFuncName !1311 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %3, %13
  %6 = phi ptr [ %15, %13 ], [ %0, %3 ]
  %7 = getelementptr inbounds %struct.tree_omp_clause, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !714
  %9 = icmp eq i32 %8, %1
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_omp_clause, ptr %6, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !714
  tail call void (i32, ptr, ...) @error_at(i32 noundef %12, ptr noundef nonnull @.str.99, ptr noundef %2) #11
  br label %17

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !714
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %5, !llvm.loop !1312

17:                                               ; preds = %13, %3, %10
  ret void
}

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_tree_vec_stat(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @protected_set_expr_location(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @c_finish_omp_for(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @c_finish_omp_master(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @c_finish_omp_ordered(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @c_begin_omp_parallel() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @c_finish_omp_parallel(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @c_split_parallel_clauses(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_parser_omp_sections_scope(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !697 !PGOFuncName !1313 {
  %3 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %4 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !720
  %6 = tail call fastcc zeroext i8 @c_parser_require(ptr noundef %1, i32 noundef 41, ptr noundef nonnull @.str.19) #12, !range !730
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.c_parser, ptr %1, i64 0, i32 2
  %10 = load i8, ptr %9, align 2
  %11 = and i8 %10, -2
  store i8 %11, ptr %9, align 2
  br label %72

12:                                               ; preds = %2
  %13 = tail call ptr @push_stmt_list() #11
  %14 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %15 = load i32, ptr %1, align 8
  %16 = and i32 %15, -16777216
  %17 = icmp eq i32 %16, 184549376
  br i1 %17, label %37, label %18

18:                                               ; preds = %12
  %19 = tail call ptr @push_stmt_list() #11
  br label %20

20:                                               ; preds = %28, %18
  tail call fastcc void @c_parser_statement(ptr noundef nonnull %1) #12
  %21 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %22 = load i32, ptr %1, align 8
  %23 = and i32 %22, -16777216
  %24 = icmp eq i32 %23, 184549376
  br i1 %24, label %31, label %25

25:                                               ; preds = %20
  %26 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 42) #12, !range !730
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 22) #12, !range !730
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %20, label %31

31:                                               ; preds = %28, %25, %20
  %32 = tail call ptr @pop_stmt_list(ptr noundef %19) #11
  %33 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !681
  %34 = tail call ptr @build1_stat(i32 noundef 158, ptr noundef %33, ptr noundef %32) #11
  %35 = getelementptr inbounds %struct.tree_exp, ptr %34, i64 0, i32 1
  store i32 %5, ptr %35, align 8, !tbaa !714
  %36 = tail call ptr @add_stmt(ptr noundef %34) #11
  br label %37

37:                                               ; preds = %31, %12
  %38 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 42) #12, !range !730
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %37, %55
  %41 = phi i8 [ %56, %55 ], [ 0, %37 ]
  %42 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 22) #12, !range !730
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %40
  %45 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %46 = load i32, ptr %4, align 8, !tbaa !720
  %47 = tail call fastcc ptr @c_parser_peek_token(ptr noundef nonnull %1) #12
  %48 = load i32, ptr %1, align 8
  %49 = and i32 %48, -16777216
  %50 = icmp eq i32 %49, 184549376
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  tail call fastcc void @c_parser_consume_pragma(ptr noundef nonnull %1) #12
  tail call fastcc void @c_parser_skip_to_pragma_eol(ptr noundef nonnull %1) #12
  br label %55

52:                                               ; preds = %44
  %53 = icmp eq i8 %41, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %52
  tail call void (i32, ptr, ...) @error_at(i32 noundef %46, ptr noundef nonnull @.str.121) #11
  br label %55

55:                                               ; preds = %52, %54, %51
  %56 = phi i8 [ 0, %51 ], [ 1, %52 ], [ 1, %54 ]
  %57 = tail call fastcc ptr @c_parser_omp_structured_block(ptr noundef nonnull %1) #12
  %58 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !681
  %59 = tail call ptr @build1_stat(i32 noundef 158, ptr noundef %58, ptr noundef %57) #11
  %60 = getelementptr inbounds %struct.tree_exp, ptr %59, i64 0, i32 1
  store i32 %46, ptr %60, align 8, !tbaa !714
  %61 = tail call ptr @add_stmt(ptr noundef %59) #11
  %62 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef nonnull %1, i32 noundef 42) #12, !range !730
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %40, label %64

64:                                               ; preds = %55, %40, %37
  tail call fastcc void @c_parser_skip_until_found(ptr noundef nonnull %1, i32 noundef 42, ptr noundef nonnull @.str.121) #12
  %65 = tail call ptr @pop_stmt_list(ptr noundef %13) #11
  %66 = tail call ptr @make_node_stat(i32 noundef 156) #11
  %67 = getelementptr inbounds %struct.tree_exp, ptr %66, i64 0, i32 1
  store i32 %0, ptr %67, align 8, !tbaa !714
  %68 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !681
  %69 = getelementptr inbounds %struct.tree_common, ptr %66, i64 0, i32 2
  store ptr %68, ptr %69, align 8, !tbaa !714
  %70 = getelementptr inbounds %struct.tree_exp, ptr %66, i64 0, i32 3
  store ptr %65, ptr %70, align 8, !tbaa !714
  %71 = tail call ptr @add_stmt(ptr noundef %66) #11
  br label %72

72:                                               ; preds = %64, %8
  %73 = phi ptr [ %71, %64 ], [ null, %8 ]
  ret ptr %73
}

; Function Attrs: optsize
declare ptr @c_begin_omp_task() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @c_finish_omp_task(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @objc_start_method_definition(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @objc_finish_method_definition(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @shadow_tag(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @start_decl(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_parser_initializer(ptr dead_on_unwind noalias writable sret(%struct.c_expr) align 8 %0, ptr noundef %1) unnamed_addr #0 !prof !1314 !PGOFuncName !1315 {
  %3 = alloca %struct.c_expr, align 8
  %4 = tail call fastcc zeroext i8 @c_parser_next_token_is(ptr noundef %1, i32 noundef 41) #12, !range !730
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6, !prof !1316

6:                                                ; preds = %2
  tail call fastcc void @c_parser_braced_init(ptr dead_on_unwind writable sret(%struct.c_expr) align 8 %0, ptr noundef %1, ptr noundef null, i8 noundef zeroext 0) #12
  br label %15

7:                                                ; preds = %2
  %8 = tail call fastcc ptr @c_parser_peek_token(ptr noundef %1) #12
  %9 = getelementptr inbounds %struct.c_token, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !720
  tail call fastcc void @c_parser_expr_no_commas(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %0, ptr noundef %1, ptr noundef null) #12
  %11 = load ptr, ptr %0, align 8, !tbaa !798
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %14 [
    i16 28, label %15
    i16 119, label %15
  ], !prof !1317

14:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #13
  call void @default_function_array_conversion(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %3, i32 noundef %10, ptr noundef nonnull byval(%struct.c_expr) align 8 %0) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !797
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #13
  br label %15

15:                                               ; preds = %14, %7, %7, %6
  ret void
}

; Function Attrs: optsize
declare void @finish_decl(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @c_push_function_context() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @start_function(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @c_pop_function_context() local_unnamed_addr #2

; Function Attrs: optsize
declare void @store_parm_decls() local_unnamed_addr #2

; Function Attrs: optsize
declare void @finish_function() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_c_parser(ptr noundef %0) #0 !prof !697 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %15, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %3, %12
  %7 = phi i64 [ %13, %12 ], [ 0, %3 ]
  %8 = getelementptr inbounds [2 x %struct.c_token], ptr %0, i64 0, i64 %7, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !698
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %9) #11
  br label %12

12:                                               ; preds = %6, %11
  %13 = add nuw nsw i64 %7, 1
  %14 = icmp eq i64 %13, 2
  br i1 %14, label %15, label %6, !llvm.loop !1318

15:                                               ; preds = %12, %1, %3
  ret void
}

; Function Attrs: optsize
declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gt_ggc_mx_lang_tree_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_c_parser(ptr noundef %0) #0 !prof !697 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_8c_parser, i32 noundef 9) #11
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1, %10
  %5 = phi i64 [ %11, %10 ], [ 0, %1 ]
  %6 = getelementptr inbounds [2 x %struct.c_token], ptr %0, i64 0, i64 %5, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !698
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %7) #11
  br label %10

10:                                               ; preds = %4, %9
  %11 = add nuw nsw i64 %5, 1
  %12 = icmp eq i64 %11, 2
  br i1 %12, label %13, label %4, !llvm.loop !1319

13:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: optsize
declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_8c_parser(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 !prof !697 {
  %5 = icmp eq ptr %1, %0
  br label %6

6:                                                ; preds = %4, %10
  %7 = phi i64 [ 0, %4 ], [ %11, %10 ]
  br i1 %5, label %8, label %10

8:                                                ; preds = %6
  %9 = getelementptr inbounds [2 x %struct.c_token], ptr %1, i64 0, i64 %7, i32 1
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #11
  br label %10

10:                                               ; preds = %6, %8
  %11 = add nuw nsw i64 %7, 1
  %12 = icmp eq i64 %11, 2
  br i1 %12, label %13, label %6, !llvm.loop !1320

13:                                               ; preds = %10
  ret void
}

; Function Attrs: optsize
declare void @gt_pch_nx_lang_tree_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!674}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673}
!36 = !{ptr @c_parse_init, ptr @ggc_alloc_cleared_stat, i64 1}
!37 = !{ptr @c_parse_init, ptr @get_identifier, i64 40}
!38 = !{ptr @c_parser_peek_token, ptr @c_lex_one_token, i64 3723008}
!39 = !{ptr @c_parser_consume_token, ptr @fancy_abort, i64 3}
!40 = !{ptr @c_lex_one_token, ptr @timevar_push_1, i64 1}
!41 = !{ptr @c_lex_one_token, ptr @c_lex_with_flags, i64 4310356}
!42 = !{ptr @c_lex_one_token, ptr @warning_at, i64 1}
!43 = !{ptr @c_lex_one_token, ptr @objc_is_reserved_word, i64 1}
!44 = !{ptr @c_lex_one_token, ptr @lookup_name, i64 1030667}
!45 = !{ptr @c_lex_one_token, ptr @objc_is_class_name, i64 1}
!46 = !{ptr @c_lex_one_token, ptr @global_bindings_p, i64 1}
!47 = !{ptr @c_lex_one_token, ptr @timevar_pop_1, i64 1}
!48 = !{ptr @c_parse_file, ptr @c_parser_peek_token, i64 1}
!49 = !{ptr @c_parse_file, ptr @ggc_alloc_stat, i64 1}
!50 = !{ptr @c_parse_file, ptr @c_parser_translation_unit, i64 1}
!51 = !{ptr @c_parser_translation_unit, ptr @c_parser_next_token_is, i64 1}
!52 = !{ptr @c_parser_translation_unit, ptr @mark_valid_location_for_stdc_pragma, i64 1}
!53 = !{ptr @c_parser_translation_unit, ptr @ggc_collect, i64 7767}
!54 = !{ptr @c_parser_translation_unit, ptr @c_parser_external_declaration, i64 7767}
!55 = !{ptr @c_parser_translation_unit, ptr @obstack_free, i64 302}
!56 = !{ptr @c_parser_translation_unit, ptr @c_parser_next_token_is_not, i64 7767}
!57 = !{ptr @c_parser_next_token_is, ptr @c_parser_peek_token, i64 9247672}
!58 = !{ptr @c_parser_require, ptr @c_parser_next_token_is, i64 1018482}
!59 = !{ptr @c_parser_require, ptr @c_parser_consume_token, i64 1018481}
!60 = !{ptr @c_parser_require, ptr @c_parser_error, i64 1}
!61 = !{ptr @c_parser_external_declaration, ptr @c_parser_peek_token, i64 44687}
!62 = !{ptr @c_parser_external_declaration, ptr @disable_extension_diagnostics, i64 31}
!63 = !{ptr @c_parser_external_declaration, ptr @c_parser_consume_token, i64 33}
!64 = !{ptr @c_parser_external_declaration, ptr @c_parser_external_declaration, i64 31}
!65 = !{ptr @c_parser_external_declaration, ptr @restore_extension_diagnostics, i64 31}
!66 = !{ptr @c_parser_external_declaration, ptr @c_parser_asm_definition, i64 1}
!67 = !{ptr @c_parser_external_declaration, ptr @fancy_abort, i64 1}
!68 = !{ptr @c_parser_external_declaration, ptr @c_parser_objc_class_definition, i64 2}
!69 = !{ptr @c_parser_external_declaration, ptr @c_parser_objc_class_declaration, i64 1}
!70 = !{ptr @c_parser_external_declaration, ptr @c_parser_objc_alias_declaration, i64 1}
!71 = !{ptr @c_parser_external_declaration, ptr @c_parser_objc_protocol_definition, i64 1}
!72 = !{ptr @c_parser_external_declaration, ptr @objc_finish_implementation, i64 1}
!73 = !{ptr @c_parser_external_declaration, ptr @pedwarn, i64 1}
!74 = !{ptr @c_parser_external_declaration, ptr @mark_valid_location_for_stdc_pragma, i64 2}
!75 = !{ptr @c_parser_external_declaration, ptr @c_parser_pragma, i64 1}
!76 = !{ptr @c_parser_external_declaration, ptr @c_parser_objc_method_definition, i64 1}
!77 = !{ptr @c_parser_external_declaration, ptr @c_parser_declaration_or_fndef, i64 23288}
!78 = !{ptr @c_parser_next_token_is_not, ptr @c_parser_next_token_is, i64 1439643}
!79 = !{ptr @c_parser_declaration_or_fndef, ptr @c_parser_peek_token, i64 73258}
!80 = !{ptr @c_parser_declaration_or_fndef, ptr @build_null_declspecs, i64 50396}
!81 = !{ptr @c_parser_declaration_or_fndef, ptr @c_parser_declspecs, i64 50396}
!82 = !{ptr @c_parser_declaration_or_fndef, ptr @c_parser_skip_to_end_of_block_or_statement, i64 392}
!83 = !{ptr @c_parser_declaration_or_fndef, ptr @c_parser_error, i64 4}
!84 = !{ptr @c_parser_declaration_or_fndef, ptr @finish_declspecs, i64 50394}
!85 = !{ptr @c_parser_declaration_or_fndef, ptr @c_parser_next_token_is, i64 308107}
!86 = !{ptr @c_parser_declaration_or_fndef, ptr @shadow_tag, i64 802}
!87 = !{ptr @c_parser_declaration_or_fndef, ptr @shadow_tag_warned, i64 1}
!88 = !{ptr @c_parser_declaration_or_fndef, ptr @pedwarn, i64 3}
!89 = !{ptr @c_parser_declaration_or_fndef, ptr @c_parser_consume_token, i64 58980}
!90 = !{ptr @c_parser_declaration_or_fndef, ptr @pending_xref_error, i64 49591}
!91 = !{ptr @c_parser_declaration_or_fndef, ptr @c_parser_declarator, i64 53643}
!92 = !{ptr @c_parser_declaration_or_fndef, ptr @c_parser_next_token_is_keyword, i64 114204}
!93 = !{ptr @c_parser_declaration_or_fndef, ptr @c_parser_simple_asm_expr, i64 2}
!94 = !{ptr @c_parser_declaration_or_fndef, ptr @c_parser_attributes, i64 1821}
!95 = !{ptr @c_parser_declaration_or_fndef, ptr @chainon, i64 44286}
!96 = !{ptr @c_parser_declaration_or_fndef, ptr @start_decl, i64 44285}
!97 = !{ptr @c_parser_declaration_or_fndef, ptr @global_bindings_p, i64 13893}
!98 = !{ptr @c_parser_declaration_or_fndef, ptr @start_init, i64 13893}
!99 = !{ptr @c_parser_declaration_or_fndef, ptr @c_parser_initializer, i64 13893}
!100 = !{ptr @c_parser_declaration_or_fndef, ptr @finish_init, i64 13893}
!101 = !{ptr @c_parser_declaration_or_fndef, ptr @maybe_warn_string_init, i64 13892}
!102 = !{ptr @c_parser_declaration_or_fndef, ptr @finish_decl, i64 44283}
!103 = !{ptr @c_parser_declaration_or_fndef, ptr @c_push_function_context, i64 1}
!104 = !{ptr @c_parser_declaration_or_fndef, ptr @start_function, i64 8970}
!105 = !{ptr @c_parser_declaration_or_fndef, ptr @c_parser_next_token_is_not, i64 19263}
!106 = !{ptr @c_parser_declaration_or_fndef, ptr @c_pop_function_context, i64 2}
!107 = !{ptr @c_parser_declaration_or_fndef, ptr @c_parser_declaration_or_fndef, i64 698}
!108 = !{ptr @c_parser_declaration_or_fndef, ptr @store_parm_decls, i64 8969}
!109 = !{ptr @c_parser_declaration_or_fndef, ptr @c_parser_compound_statement, i64 8969}
!110 = !{ptr @c_parser_declaration_or_fndef, ptr @add_stmt, i64 8970}
!111 = !{ptr @c_parser_declaration_or_fndef, ptr @finish_function, i64 8969}
!112 = !{ptr @c_parser_declaration_or_fndef, ptr @build_stmt, i64 1}
!113 = !{ptr @c_parser_simple_asm_expr, ptr @c_parser_next_token_is_keyword, i64 1}
!114 = !{ptr @c_parser_simple_asm_expr, ptr @c_parser_consume_token, i64 1}
!115 = !{ptr @c_parser_simple_asm_expr, ptr @c_parser_require, i64 2}
!116 = !{ptr @c_parser_simple_asm_expr, ptr @c_parser_asm_string_literal, i64 1}
!117 = !{ptr @c_parser_skip_until_found, ptr @c_parser_require, i64 844796}
!118 = !{ptr @c_parser_skip_until_found, ptr @c_parser_peek_token, i64 11}
!119 = !{ptr @c_parser_skip_until_found, ptr @c_parser_consume_token, i64 11}
!120 = !{ptr @c_parser_next_token_is_keyword, ptr @c_parser_peek_token, i64 1522842}
!121 = !{ptr @c_parser_asm_string_literal, ptr @c_parser_next_token_is, i64 1}
!122 = !{ptr @c_parser_asm_string_literal, ptr @c_parser_peek_token, i64 1}
!123 = !{ptr @c_parser_asm_string_literal, ptr @c_parser_consume_token, i64 1}
!124 = !{ptr @c_parser_require_keyword, ptr @c_parser_next_token_is_keyword, i64 3383}
!125 = !{ptr @c_parser_require_keyword, ptr @c_parser_consume_token, i64 3382}
!126 = !{ptr @c_parser_require_keyword, ptr @c_parser_error, i64 1}
!127 = !{ptr @c_parser_parameter_declaration, ptr @c_parser_next_token_starts_declspecs, i64 39180}
!128 = !{ptr @c_parser_parameter_declaration, ptr @c_parser_error, i64 1}
!129 = !{ptr @c_parser_parameter_declaration, ptr @c_parser_skip_to_end_of_parameter, i64 1}
!130 = !{ptr @c_parser_parameter_declaration, ptr @build_null_declspecs, i64 39179}
!131 = !{ptr @c_parser_parameter_declaration, ptr @declspecs_add_attrs, i64 1}
!132 = !{ptr @c_parser_parameter_declaration, ptr @c_parser_declspecs, i64 39179}
!133 = !{ptr @c_parser_parameter_declaration, ptr @finish_declspecs, i64 39179}
!134 = !{ptr @c_parser_parameter_declaration, ptr @pending_xref_error, i64 39179}
!135 = !{ptr @c_parser_parameter_declaration, ptr @c_parser_declarator, i64 39179}
!136 = !{ptr @c_parser_parameter_declaration, ptr @c_parser_skip_until_found, i64 1}
!137 = !{ptr @c_parser_parameter_declaration, ptr @c_parser_next_token_is_keyword, i64 39178}
!138 = !{ptr @c_parser_parameter_declaration, ptr @c_parser_attributes, i64 3037}
!139 = !{ptr @c_parser_parameter_declaration, ptr @chainon, i64 39178}
!140 = !{ptr @c_parser_parameter_declaration, ptr @build_c_parm, i64 39178}
!141 = !{ptr @c_parser_type_name, ptr @build_null_declspecs, i64 59782}
!142 = !{ptr @c_parser_type_name, ptr @c_parser_declspecs, i64 59782}
!143 = !{ptr @c_parser_type_name, ptr @c_parser_error, i64 1}
!144 = !{ptr @c_parser_type_name, ptr @pending_xref_error, i64 59781}
!145 = !{ptr @c_parser_type_name, ptr @finish_declspecs, i64 59781}
!146 = !{ptr @c_parser_type_name, ptr @c_parser_declarator, i64 59781}
!147 = !{ptr @c_parser_type_name, ptr @_obstack_newchunk, i64 140}
!148 = !{ptr @c_token_starts_typename, ptr @fancy_abort, i64 2}
!149 = !{ptr @c_parser_declspecs, ptr @c_parser_next_token_is, i64 1166026}
!150 = !{ptr @c_parser_declspecs, ptr @c_parser_peek_token, i64 754347}
!151 = !{ptr @c_parser_declspecs, ptr @declspecs_add_addrspace, i64 1}
!152 = !{ptr @c_parser_declspecs, ptr @c_parser_consume_token, i64 152219}
!153 = !{ptr @c_parser_declspecs, ptr @c_parser_next_token_is_not, i64 1}
!154 = !{ptr @c_parser_declspecs, ptr @lookup_name, i64 52611}
!155 = !{ptr @c_parser_declspecs, ptr @fancy_abort, i64 2}
!156 = !{ptr @c_parser_declspecs, ptr @c_parser_objc_protocol_refs, i64 2}
!157 = !{ptr @c_parser_declspecs, ptr @objc_get_protocol_qualified_type, i64 2}
!158 = !{ptr @c_parser_declspecs, ptr @declspecs_add_type, i64 164153}
!159 = !{ptr @c_parser_declspecs, ptr @declspecs_add_scspec, i64 17423}
!160 = !{ptr @c_parser_declspecs, ptr @c_parser_enum_specifier, i64 26335}
!161 = !{ptr @c_parser_declspecs, ptr @c_parser_struct_or_union_specifier, i64 9752}
!162 = !{ptr @c_parser_declspecs, ptr @invoke_plugin_callbacks, i64 9752}
!163 = !{ptr @c_parser_declspecs, ptr @c_parser_typeof_specifier, i64 1}
!164 = !{ptr @c_parser_declspecs, ptr @declspecs_add_qual, i64 6731}
!165 = !{ptr @c_parser_declspecs, ptr @c_parser_attributes, i64 1}
!166 = !{ptr @c_parser_declspecs, ptr @declspecs_add_attrs, i64 1}
!167 = !{ptr @c_parser_declarator, ptr @c_parser_next_token_is, i64 193375}
!168 = !{ptr @c_parser_declarator, ptr @build_null_declspecs, i64 35842}
!169 = !{ptr @c_parser_declarator, ptr @c_parser_consume_token, i64 35842}
!170 = !{ptr @c_parser_declarator, ptr @c_parser_declspecs, i64 35842}
!171 = !{ptr @c_parser_declarator, ptr @c_parser_declarator, i64 35842}
!172 = !{ptr @c_parser_declarator, ptr @make_pointer_declarator, i64 35841}
!173 = !{ptr @c_parser_declarator, ptr @c_parser_direct_declarator, i64 157533}
!174 = !{ptr @c_parser_enum_specifier, ptr @c_parser_next_token_is_keyword, i64 26342}
!175 = !{ptr @c_parser_enum_specifier, ptr @fancy_abort, i64 1}
!176 = !{ptr @c_parser_enum_specifier, ptr @c_parser_peek_token, i64 139266}
!177 = !{ptr @c_parser_enum_specifier, ptr @c_parser_consume_token, i64 60775}
!178 = !{ptr @c_parser_enum_specifier, ptr @c_parser_attributes, i64 26623}
!179 = !{ptr @c_parser_enum_specifier, ptr @c_parser_set_source_position_from_token, i64 29720}
!180 = !{ptr @c_parser_enum_specifier, ptr @c_parser_next_token_is, i64 62817}
!181 = !{ptr @c_parser_enum_specifier, ptr @start_enum, i64 281}
!182 = !{ptr @c_parser_enum_specifier, ptr @c_parser_next_token_is_not, i64 3378}
!183 = !{ptr @c_parser_enum_specifier, ptr @c_parser_error, i64 232}
!184 = !{ptr @c_parser_enum_specifier, ptr @c_parser_skip_until_found, i64 130}
!185 = !{ptr @c_parser_enum_specifier, ptr @c_parser_expr_no_commas, i64 1142}
!186 = !{ptr @c_parser_enum_specifier, ptr @build_enumerator, i64 3378}
!187 = !{ptr @c_parser_enum_specifier, ptr @pedwarn, i64 16}
!188 = !{ptr @c_parser_enum_specifier, ptr @nreverse, i64 281}
!189 = !{ptr @c_parser_enum_specifier, ptr @chainon, i64 281}
!190 = !{ptr @c_parser_enum_specifier, ptr @finish_enum, i64 281}
!191 = !{ptr @c_parser_enum_specifier, ptr @parser_xref_tag, i64 25959}
!192 = !{ptr @c_parser_struct_or_union_specifier, ptr @c_parser_peek_token, i64 48512}
!193 = !{ptr @c_parser_struct_or_union_specifier, ptr @fancy_abort, i64 1}
!194 = !{ptr @c_parser_struct_or_union_specifier, ptr @c_parser_consume_token, i64 25246}
!195 = !{ptr @c_parser_struct_or_union_specifier, ptr @c_parser_attributes, i64 10512}
!196 = !{ptr @c_parser_struct_or_union_specifier, ptr @c_parser_set_source_position_from_token, i64 9754}
!197 = !{ptr @c_parser_struct_or_union_specifier, ptr @c_parser_next_token_is, i64 38434}
!198 = !{ptr @c_parser_struct_or_union_specifier, ptr @start_struct, i64 758}
!199 = !{ptr @c_parser_struct_or_union_specifier, ptr @c_parser_next_token_is_keyword, i64 758}
!200 = !{ptr @c_parser_struct_or_union_specifier, ptr @c_parser_require, i64 1}
!201 = !{ptr @c_parser_struct_or_union_specifier, ptr @pedwarn, i64 2}
!202 = !{ptr @c_parser_struct_or_union_specifier, ptr @c_parser_pragma, i64 1}
!203 = !{ptr @c_parser_struct_or_union_specifier, ptr @c_parser_struct_declaration, i64 4351}
!204 = !{ptr @c_parser_struct_or_union_specifier, ptr @chainon, i64 5109}
!205 = !{ptr @c_parser_struct_or_union_specifier, ptr @nreverse, i64 758}
!206 = !{ptr @c_parser_struct_or_union_specifier, ptr @finish_struct, i64 758}
!207 = !{ptr @c_parser_struct_or_union_specifier, ptr @c_parser_error, i64 120}
!208 = !{ptr @c_parser_struct_or_union_specifier, ptr @parser_xref_tag, i64 8876}
!209 = !{ptr @c_parser_attributes, ptr @c_parser_next_token_is_keyword, i64 82880}
!210 = !{ptr @c_parser_attributes, ptr @c_parser_consume_token, i64 80251}
!211 = !{ptr @c_parser_attributes, ptr @c_parser_require, i64 26163}
!212 = !{ptr @c_parser_attributes, ptr @c_parser_skip_until_found, i64 6}
!213 = !{ptr @c_parser_attributes, ptr @c_parser_next_token_is, i64 236550}
!214 = !{ptr @c_parser_attributes, ptr @c_parser_peek_token, i64 39401}
!215 = !{ptr @c_parser_attributes, ptr @c_parser_next_token_is_not, i64 38776}
!216 = !{ptr @c_parser_attributes, ptr @build_tree_list_stat, i64 38804}
!217 = !{ptr @c_parser_attributes, ptr @chainon, i64 38773}
!218 = !{ptr @c_parser_attributes, ptr @c_parser_peek_2nd_token, i64 173}
!219 = !{ptr @c_parser_attributes, ptr @c_parser_expr_list, i64 962}
!220 = !{ptr @c_parser_attributes, ptr @build_tree_list_vec_stat, i64 962}
!221 = !{ptr @c_parser_attributes, ptr @tree_cons_stat, i64 114}
!222 = !{ptr @c_parser_attributes, ptr @release_tree_vector, i64 962}
!223 = !{ptr @c_parser_expr_no_commas, ptr @c_parser_conditional_expression, i64 1077983}
!224 = !{ptr @c_parser_expr_no_commas, ptr @c_parser_peek_token, i64 2235063}
!225 = !{ptr @c_parser_expr_no_commas, ptr @c_parser_consume_token, i64 79097}
!226 = !{ptr @c_parser_expr_no_commas, ptr @c_parser_expr_no_commas, i64 79097}
!227 = !{ptr @c_parser_expr_no_commas, ptr @default_function_array_conversion, i64 79097}
!228 = !{ptr @c_parser_expr_no_commas, ptr @build_modify_expr, i64 79097}
!229 = !{ptr @c_parser_conditional_expression, ptr @c_parser_binary_expression, i64 1086028}
!230 = !{ptr @c_parser_conditional_expression, ptr @c_parser_next_token_is_not, i64 1086028}
!231 = !{ptr @c_parser_conditional_expression, ptr @c_parser_peek_token, i64 24138}
!232 = !{ptr @c_parser_conditional_expression, ptr @default_function_array_conversion, i64 16091}
!233 = !{ptr @c_parser_conditional_expression, ptr @c_parser_consume_token, i64 8046}
!234 = !{ptr @c_parser_conditional_expression, ptr @c_parser_next_token_is, i64 8046}
!235 = !{ptr @c_parser_conditional_expression, ptr @pedwarn, i64 1}
!236 = !{ptr @c_parser_conditional_expression, ptr @default_conversion, i64 8046}
!237 = !{ptr @c_parser_conditional_expression, ptr @c_save_expr, i64 1}
!238 = !{ptr @c_parser_conditional_expression, ptr @build1_stat, i64 1}
!239 = !{ptr @c_parser_conditional_expression, ptr @c_objc_common_truthvalue_conversion, i64 8046}
!240 = !{ptr @c_parser_conditional_expression, ptr @c_parser_expression_conv, i64 8045}
!241 = !{ptr @c_parser_conditional_expression, ptr @c_parser_require, i64 8046}
!242 = !{ptr @c_parser_conditional_expression, ptr @c_parser_conditional_expression, i64 8045}
!243 = !{ptr @c_parser_conditional_expression, ptr @build_conditional_expr, i64 8045}
!244 = !{ptr @c_parser_binary_expression, ptr @c_parser_peek_token, i64 35036790}
!245 = !{ptr @c_parser_binary_expression, ptr @c_parser_cast_expression, i64 17522644}
!246 = !{ptr @c_parser_binary_expression, ptr @c_parser_consume_token, i64 16436616}
!247 = !{ptr @c_parser_binary_expression, ptr @default_function_array_conversion, i64 10906045}
!248 = !{ptr @c_parser_binary_expression, ptr @parser_build_binary_op, i64 3209943}
!249 = !{ptr @c_parser_binary_expression, ptr @default_conversion, i64 4486159}
!250 = !{ptr @c_parser_binary_expression, ptr @c_objc_common_truthvalue_conversion, i64 4486159}
!251 = !{ptr @c_parser_expression_conv, ptr @c_parser_peek_token, i64 196880}
!252 = !{ptr @c_parser_expression_conv, ptr @c_parser_expression, i64 196880}
!253 = !{ptr @c_parser_expression_conv, ptr @default_function_array_conversion, i64 196880}
!254 = !{ptr @c_parser_cast_expression, ptr @c_parser_peek_token, i64 1416687}
!255 = !{ptr @c_parser_cast_expression, ptr @fancy_abort, i64 1}
!256 = !{ptr @c_parser_cast_expression, ptr @c_parser_postfix_expression_after_primary, i64 1}
!257 = !{ptr @c_parser_cast_expression, ptr @c_parser_next_token_is, i64 1416687}
!258 = !{ptr @c_parser_cast_expression, ptr @c_parser_peek_2nd_token, i64 438571}
!259 = !{ptr @c_parser_cast_expression, ptr @c_token_starts_typename, i64 438571}
!260 = !{ptr @c_parser_cast_expression, ptr @c_parser_consume_token, i64 57441}
!261 = !{ptr @c_parser_cast_expression, ptr @c_parser_type_name, i64 57441}
!262 = !{ptr @c_parser_cast_expression, ptr @c_parser_skip_until_found, i64 57441}
!263 = !{ptr @c_parser_cast_expression, ptr @used_types_insert, i64 57440}
!264 = !{ptr @c_parser_cast_expression, ptr @c_parser_postfix_expression_after_paren_type, i64 1}
!265 = !{ptr @c_parser_cast_expression, ptr @c_parser_cast_expression, i64 57439}
!266 = !{ptr @c_parser_cast_expression, ptr @default_function_array_conversion, i64 57439}
!267 = !{ptr @c_parser_cast_expression, ptr @c_cast_expr, i64 57439}
!268 = !{ptr @c_parser_cast_expression, ptr @c_parser_unary_expression, i64 1301806}
!269 = !{ptr @c_parser_postfix_expression_after_primary, ptr @c_parser_peek_token, i64 3609235}
!270 = !{ptr @c_parser_postfix_expression_after_primary, ptr @c_parser_consume_token, i64 665305}
!271 = !{ptr @c_parser_postfix_expression_after_primary, ptr @c_parser_expression, i64 91236}
!272 = !{ptr @c_parser_postfix_expression_after_primary, ptr @c_parser_skip_until_found, i64 177823}
!273 = !{ptr @c_parser_postfix_expression_after_primary, ptr @build_array_ref, i64 91236}
!274 = !{ptr @c_parser_postfix_expression_after_primary, ptr @c_parser_next_token_is, i64 327784}
!275 = !{ptr @c_parser_postfix_expression_after_primary, ptr @c_parser_expr_list, i64 80674}
!276 = !{ptr @c_parser_postfix_expression_after_primary, ptr @build_function_call_vec, i64 86587}
!277 = !{ptr @c_parser_postfix_expression_after_primary, ptr @release_tree_vector, i64 161348}
!278 = !{ptr @c_parser_postfix_expression_after_primary, ptr @default_function_array_conversion, i64 246287}
!279 = !{ptr @c_parser_postfix_expression_after_primary, ptr @build_component_ref, i64 241195}
!280 = !{ptr @c_parser_postfix_expression_after_primary, ptr @build_indirect_ref, i64 123261}
!281 = !{ptr @c_parser_postfix_expression_after_primary, ptr @build_unary_op, i64 5090}
!282 = !{ptr @c_parser_postfix_expression_after_primary, ptr @c_parser_error, i64 2}
!283 = !{ptr @c_parser_peek_2nd_token, ptr @fancy_abort, i64 3}
!284 = !{ptr @c_parser_peek_2nd_token, ptr @c_lex_one_token, i64 587349}
!285 = !{ptr @c_parser_unary_expression, ptr @c_parser_peek_token, i64 2642379}
!286 = !{ptr @c_parser_unary_expression, ptr @c_parser_consume_token, i64 40151}
!287 = !{ptr @c_parser_unary_expression, ptr @c_parser_cast_expression, i64 40149}
!288 = !{ptr @c_parser_unary_expression, ptr @default_function_array_conversion, i64 29958}
!289 = !{ptr @c_parser_unary_expression, ptr @parser_build_unary_op, i64 28278}
!290 = !{ptr @c_parser_unary_expression, ptr @build_indirect_ref, i64 11677}
!291 = !{ptr @c_parser_unary_expression, ptr @expand_location, i64 1}
!292 = !{ptr @c_parser_unary_expression, ptr @c_parser_next_token_is, i64 1}
!293 = !{ptr @c_parser_unary_expression, ptr @finish_label_address_expr, i64 1}
!294 = !{ptr @c_parser_unary_expression, ptr @c_parser_sizeof_expression, i64 3404}
!295 = !{ptr @c_parser_unary_expression, ptr @c_parser_alignof_expression, i64 4}
!296 = !{ptr @c_parser_unary_expression, ptr @disable_extension_diagnostics, i64 194}
!297 = !{ptr @c_parser_unary_expression, ptr @restore_extension_diagnostics, i64 194}
!298 = !{ptr @c_parser_unary_expression, ptr @c_parser_postfix_expression, i64 1259902}
!299 = !{ptr @c_parser_expression, ptr @c_parser_expr_no_commas, i64 684384}
!300 = !{ptr @c_parser_expression, ptr @c_parser_next_token_is, i64 684384}
!301 = !{ptr @c_parser_expression, ptr @c_parser_peek_token, i64 3750}
!302 = !{ptr @c_parser_expression, ptr @c_parser_consume_token, i64 1875}
!303 = !{ptr @c_parser_expression, ptr @default_function_array_conversion, i64 1875}
!304 = !{ptr @c_parser_expression, ptr @build_compound_expr, i64 1875}
!305 = !{ptr @c_parser_expr_list, ptr @c_parser_peek_token, i64 176089}
!306 = !{ptr @c_parser_expr_list, ptr @make_tree_vector, i64 161672}
!307 = !{ptr @c_parser_expr_list, ptr @c_parser_expr_no_commas, i64 176089}
!308 = !{ptr @c_parser_expr_list, ptr @default_function_array_conversion, i64 175600}
!309 = !{ptr @c_parser_expr_list, ptr @c_fully_fold, i64 489}
!310 = !{ptr @c_parser_expr_list, ptr @VEC_tree_base_quick_push, i64 161672}
!311 = !{ptr @c_parser_expr_list, ptr @c_parser_next_token_is, i64 176089}
!312 = !{ptr @c_parser_expr_list, ptr @c_parser_consume_token, i64 95090}
!313 = !{ptr @c_parser_expr_list, ptr @VEC_tree_gc_safe_push, i64 190017}
!314 = !{ptr @VEC_tree_gc_safe_push, ptr @VEC_tree_gc_reserve, i64 190018}
!315 = !{ptr @VEC_tree_gc_safe_push, ptr @VEC_tree_base_quick_push, i64 190018}
!316 = !{ptr @VEC_tree_gc_reserve, ptr @VEC_tree_base_space, i64 190018}
!317 = !{ptr @VEC_tree_gc_reserve, ptr @vec_gc_p_reserve, i64 31}
!318 = !{ptr @c_parser_braced_init, ptr @c_parser_peek_token, i64 10042}
!319 = !{ptr @c_parser_braced_init, ptr @c_parser_next_token_is, i64 222860}
!320 = !{ptr @c_parser_braced_init, ptr @fancy_abort, i64 1}
!321 = !{ptr @c_parser_braced_init, ptr @c_parser_consume_token, i64 116925}
!322 = !{ptr @c_parser_braced_init, ptr @push_init_level, i64 9479}
!323 = !{ptr @c_parser_braced_init, ptr @really_start_incremental_init, i64 563}
!324 = !{ptr @c_parser_braced_init, ptr @pedwarn, i64 1}
!325 = !{ptr @c_parser_braced_init, ptr @c_parser_initelt, i64 105935}
!326 = !{ptr @c_parser_braced_init, ptr @c_parser_next_token_is_not, i64 10042}
!327 = !{ptr @c_parser_braced_init, ptr @c_parser_skip_until_found, i64 1}
!328 = !{ptr @c_parser_braced_init, ptr @pop_init_level, i64 10042}
!329 = !{ptr @c_parser_initelt, ptr @c_parser_next_token_is, i64 323933}
!330 = !{ptr @c_parser_initelt, ptr @c_parser_peek_2nd_token, i64 7893}
!331 = !{ptr @c_parser_initelt, ptr @c_parser_peek_token, i64 2342}
!332 = !{ptr @c_parser_initelt, ptr @set_init_label, i64 1119}
!333 = !{ptr @c_parser_initelt, ptr @pedwarn, i64 1126}
!334 = !{ptr @c_parser_initelt, ptr @c_parser_consume_token, i64 3565}
!335 = !{ptr @c_parser_initelt, ptr @c_parser_error, i64 1}
!336 = !{ptr @c_parser_initelt, ptr @c_parser_skip_until_found, i64 2}
!337 = !{ptr @c_parser_initelt, ptr @process_init_element, i64 1}
!338 = !{ptr @c_parser_initelt, ptr @c_parser_expr_no_commas, i64 102}
!339 = !{ptr @c_parser_initelt, ptr @set_init_index, i64 99}
!340 = !{ptr @c_parser_initelt, ptr @c_parser_initval, i64 105972}
!341 = !{ptr @c_parser_initval, ptr @c_parser_next_token_is, i64 105974}
!342 = !{ptr @c_parser_initval, ptr @c_parser_braced_init, i64 9480}
!343 = !{ptr @c_parser_initval, ptr @c_parser_peek_token, i64 96494}
!344 = !{ptr @c_parser_initval, ptr @c_parser_expr_no_commas, i64 96494}
!345 = !{ptr @c_parser_initval, ptr @default_function_array_conversion, i64 86515}
!346 = !{ptr @c_parser_initval, ptr @process_init_element, i64 105974}
!347 = !{ptr @c_parser_sizeof_expression, ptr @c_parser_next_token_is_keyword, i64 3406}
!348 = !{ptr @c_parser_sizeof_expression, ptr @fancy_abort, i64 1}
!349 = !{ptr @c_parser_sizeof_expression, ptr @c_parser_consume_token, i64 5159}
!350 = !{ptr @c_parser_sizeof_expression, ptr @c_parser_next_token_is, i64 5158}
!351 = !{ptr @c_parser_sizeof_expression, ptr @c_parser_peek_2nd_token, i64 2667}
!352 = !{ptr @c_parser_sizeof_expression, ptr @c_token_starts_typename, i64 2667}
!353 = !{ptr @c_parser_sizeof_expression, ptr @c_parser_peek_token, i64 3406}
!354 = !{ptr @c_parser_sizeof_expression, ptr @c_parser_type_name, i64 1753}
!355 = !{ptr @c_parser_sizeof_expression, ptr @c_parser_skip_until_found, i64 1753}
!356 = !{ptr @c_parser_sizeof_expression, ptr @c_parser_postfix_expression_after_paren_type, i64 1}
!357 = !{ptr @c_parser_sizeof_expression, ptr @c_expr_sizeof_type, i64 1751}
!358 = !{ptr @c_parser_sizeof_expression, ptr @c_parser_unary_expression, i64 1653}
!359 = !{ptr @c_parser_sizeof_expression, ptr @error_at, i64 1}
!360 = !{ptr @c_parser_sizeof_expression, ptr @c_expr_sizeof_expr, i64 1654}
!361 = !{ptr @c_parser_alignof_expression, ptr @c_parser_peek_token, i64 5}
!362 = !{ptr @c_parser_alignof_expression, ptr @c_parser_next_token_is_keyword, i64 3}
!363 = !{ptr @c_parser_alignof_expression, ptr @fancy_abort, i64 1}
!364 = !{ptr @c_parser_alignof_expression, ptr @c_parser_consume_token, i64 5}
!365 = !{ptr @c_parser_alignof_expression, ptr @c_parser_next_token_is, i64 5}
!366 = !{ptr @c_parser_alignof_expression, ptr @c_parser_peek_2nd_token, i64 2}
!367 = !{ptr @c_parser_alignof_expression, ptr @c_token_starts_typename, i64 2}
!368 = !{ptr @c_parser_alignof_expression, ptr @c_parser_type_name, i64 2}
!369 = !{ptr @c_parser_alignof_expression, ptr @c_parser_skip_until_found, i64 2}
!370 = !{ptr @c_parser_alignof_expression, ptr @groktypename, i64 1}
!371 = !{ptr @c_parser_alignof_expression, ptr @c_sizeof_or_alignof_type, i64 1}
!372 = !{ptr @c_parser_alignof_expression, ptr @c_parser_unary_expression, i64 1}
!373 = !{ptr @c_parser_alignof_expression, ptr @c_alignof_expr, i64 1}
!374 = !{ptr @c_parser_postfix_expression, ptr @c_parser_peek_token, i64 4824460}
!375 = !{ptr @c_parser_postfix_expression, ptr @c_parser_consume_token, i64 1260637}
!376 = !{ptr @c_parser_postfix_expression, ptr @objc_build_string_object, i64 1}
!377 = !{ptr @c_parser_postfix_expression, ptr @c_parser_error, i64 4}
!378 = !{ptr @c_parser_postfix_expression, ptr @build_external_ref, i64 577606}
!379 = !{ptr @c_parser_postfix_expression, ptr @c_parser_peek_2nd_token, i64 763888}
!380 = !{ptr @c_parser_postfix_expression, ptr @current_stmt_tree, i64 194}
!381 = !{ptr @c_parser_postfix_expression, ptr @error_at, i64 1}
!382 = !{ptr @c_parser_postfix_expression, ptr @c_parser_skip_until_found, i64 382624}
!383 = !{ptr @c_parser_postfix_expression, ptr @c_begin_stmt_expr, i64 193}
!384 = !{ptr @c_parser_postfix_expression, ptr @c_parser_compound_statement_nostart, i64 193}
!385 = !{ptr @c_parser_postfix_expression, ptr @pedwarn, i64 193}
!386 = !{ptr @c_parser_postfix_expression, ptr @c_finish_stmt_expr, i64 193}
!387 = !{ptr @c_parser_postfix_expression, ptr @c_token_starts_typename, i64 381847}
!388 = !{ptr @c_parser_postfix_expression, ptr @c_parser_type_name, i64 584}
!389 = !{ptr @c_parser_postfix_expression, ptr @c_parser_postfix_expression_after_paren_type, i64 1}
!390 = !{ptr @c_parser_postfix_expression, ptr @c_parser_expression, i64 381846}
!391 = !{ptr @c_parser_postfix_expression, ptr @fname_decl, i64 1308}
!392 = !{ptr @c_parser_postfix_expression, ptr @c_parser_require, i64 1171}
!393 = !{ptr @c_parser_postfix_expression, ptr @c_parser_expr_no_commas, i64 52}
!394 = !{ptr @c_parser_postfix_expression, ptr @c_fully_fold, i64 51}
!395 = !{ptr @c_parser_postfix_expression, ptr @groktypename, i64 578}
!396 = !{ptr @c_parser_postfix_expression, ptr @c_build_va_arg, i64 49}
!397 = !{ptr @c_parser_postfix_expression, ptr @build2_stat, i64 1}
!398 = !{ptr @c_parser_postfix_expression, ptr @build1_stat, i64 528}
!399 = !{ptr @c_parser_postfix_expression, ptr @c_parser_next_token_is, i64 2123}
!400 = !{ptr @c_parser_postfix_expression, ptr @build_component_ref, i64 530}
!401 = !{ptr @c_parser_postfix_expression, ptr @build_array_ref, i64 2}
!402 = !{ptr @c_parser_postfix_expression, ptr @c_parser_next_token_is_not, i64 4}
!403 = !{ptr @c_parser_postfix_expression, ptr @fold_offsetof, i64 529}
!404 = !{ptr @c_parser_postfix_expression, ptr @c_parser_objc_selector_arg, i64 1}
!405 = !{ptr @c_parser_postfix_expression, ptr @objc_build_selector_expr, i64 1}
!406 = !{ptr @c_parser_postfix_expression, ptr @c_parser_postfix_expression_after_primary, i64 1259913}
!407 = !{ptr @c_parser_compound_statement_nostart, ptr @valid_location_for_stdc_pragma_p, i64 46846}
!408 = !{ptr @c_parser_compound_statement_nostart, ptr @c_parser_next_token_is, i64 647322}
!409 = !{ptr @c_parser_compound_statement_nostart, ptr @c_parser_consume_token, i64 47113}
!410 = !{ptr @c_parser_compound_statement_nostart, ptr @mark_valid_location_for_stdc_pragma, i64 327373}
!411 = !{ptr @c_parser_compound_statement_nostart, ptr @c_parser_next_token_is_keyword, i64 850449}
!412 = !{ptr @c_parser_compound_statement_nostart, ptr @c_parser_peek_token, i64 243610}
!413 = !{ptr @c_parser_compound_statement_nostart, ptr @c_parser_next_token_is_not, i64 280788}
!414 = !{ptr @c_parser_compound_statement_nostart, ptr @c_parser_error, i64 18}
!415 = !{ptr @c_parser_compound_statement_nostart, ptr @declare_label, i64 122}
!416 = !{ptr @c_parser_compound_statement_nostart, ptr @build_stmt, i64 122}
!417 = !{ptr @c_parser_compound_statement_nostart, ptr @add_stmt, i64 122}
!418 = !{ptr @c_parser_compound_statement_nostart, ptr @c_parser_skip_until_found, i64 20}
!419 = !{ptr @c_parser_compound_statement_nostart, ptr @pedwarn, i64 1}
!420 = !{ptr @c_parser_compound_statement_nostart, ptr @c_parser_peek_2nd_token, i64 118428}
!421 = !{ptr @c_parser_compound_statement_nostart, ptr @c_parser_label, i64 34386}
!422 = !{ptr @c_parser_compound_statement_nostart, ptr @c_parser_next_token_starts_declspecs, i64 179668}
!423 = !{ptr @c_parser_compound_statement_nostart, ptr @c_parser_declaration_or_fndef, i64 26388}
!424 = !{ptr @c_parser_compound_statement_nostart, ptr @pedwarn_c90, i64 2}
!425 = !{ptr @c_parser_compound_statement_nostart, ptr @c_token_starts_declspecs, i64 140}
!426 = !{ptr @c_parser_compound_statement_nostart, ptr @disable_extension_diagnostics, i64 7}
!427 = !{ptr @c_parser_compound_statement_nostart, ptr @restore_extension_diagnostics, i64 7}
!428 = !{ptr @c_parser_compound_statement_nostart, ptr @c_parser_pragma, i64 1}
!429 = !{ptr @c_parser_compound_statement_nostart, ptr @error_at, i64 2}
!430 = !{ptr @c_parser_compound_statement_nostart, ptr @c_parser_statement_after_labels, i64 173152}
!431 = !{ptr @c_parser_label, ptr @c_parser_peek_token, i64 50492}
!432 = !{ptr @c_parser_label, ptr @c_parser_next_token_is_keyword, i64 43935}
!433 = !{ptr @c_parser_label, ptr @c_parser_consume_token, i64 67289}
!434 = !{ptr @c_parser_label, ptr @c_parser_expr_no_commas, i64 24848}
!435 = !{ptr @c_parser_label, ptr @c_parser_next_token_is, i64 40949}
!436 = !{ptr @c_parser_label, ptr @do_case, i64 26340}
!437 = !{ptr @c_parser_label, ptr @c_parser_require, i64 1496}
!438 = !{ptr @c_parser_label, ptr @fancy_abort, i64 2}
!439 = !{ptr @c_parser_label, ptr @c_parser_attributes, i64 8050}
!440 = !{ptr @c_parser_label, ptr @define_label, i64 8050}
!441 = !{ptr @c_parser_label, ptr @decl_attributes, i64 8049}
!442 = !{ptr @c_parser_label, ptr @build_stmt, i64 8049}
!443 = !{ptr @c_parser_label, ptr @add_stmt, i64 8049}
!444 = !{ptr @c_parser_label, ptr @c_parser_next_token_starts_declspecs, i64 34389}
!445 = !{ptr @c_parser_label, ptr @c_parser_peek_2nd_token, i64 1}
!446 = !{ptr @c_parser_label, ptr @error_at, i64 1}
!447 = !{ptr @c_parser_label, ptr @c_parser_declaration_or_fndef, i64 1}
!448 = !{ptr @c_parser_next_token_starts_declspecs, ptr @c_parser_peek_token, i64 258617}
!449 = !{ptr @c_parser_next_token_starts_declspecs, ptr @c_token_starts_declspecs, i64 258617}
!450 = !{ptr @c_token_starts_declspecs, ptr @fancy_abort, i64 1}
!451 = !{ptr @c_parser_statement_after_labels, ptr @c_parser_peek_token, i64 591253}
!452 = !{ptr @c_parser_statement_after_labels, ptr @c_parser_compound_statement, i64 13503}
!453 = !{ptr @c_parser_statement_after_labels, ptr @add_stmt, i64 13503}
!454 = !{ptr @c_parser_statement_after_labels, ptr @c_parser_if_statement, i64 54101}
!455 = !{ptr @c_parser_statement_after_labels, ptr @c_parser_switch_statement, i64 1566}
!456 = !{ptr @c_parser_statement_after_labels, ptr @c_parser_while_statement, i64 1432}
!457 = !{ptr @c_parser_statement_after_labels, ptr @c_parser_do_statement, i64 3384}
!458 = !{ptr @c_parser_statement_after_labels, ptr @c_parser_for_statement, i64 5889}
!459 = !{ptr @c_parser_statement_after_labels, ptr @c_parser_consume_token, i64 66949}
!460 = !{ptr @c_parser_statement_after_labels, ptr @c_parser_next_token_is, i64 40804}
!461 = !{ptr @c_parser_statement_after_labels, ptr @c_finish_goto_label, i64 15153}
!462 = !{ptr @c_parser_statement_after_labels, ptr @c_parser_expression, i64 1}
!463 = !{ptr @c_parser_statement_after_labels, ptr @c_finish_goto_ptr, i64 1}
!464 = !{ptr @c_parser_statement_after_labels, ptr @c_finish_bc_stmt, i64 8475}
!465 = !{ptr @c_parser_statement_after_labels, ptr @c_finish_return, i64 25649}
!466 = !{ptr @c_parser_statement_after_labels, ptr @c_parser_expression_conv, i64 124131}
!467 = !{ptr @c_parser_statement_after_labels, ptr @c_parser_asm_statement, i64 1}
!468 = !{ptr @c_parser_statement_after_labels, ptr @objc_build_throw_stmt, i64 1}
!469 = !{ptr @c_parser_statement_after_labels, ptr @c_parser_objc_try_catch_statement, i64 1}
!470 = !{ptr @c_parser_statement_after_labels, ptr @c_parser_objc_synchronized_statement, i64 1}
!471 = !{ptr @c_parser_statement_after_labels, ptr @c_parser_error, i64 2}
!472 = !{ptr @c_parser_statement_after_labels, ptr @c_parser_pragma, i64 1}
!473 = !{ptr @c_parser_statement_after_labels, ptr @c_finish_expr_stmt, i64 99929}
!474 = !{ptr @c_parser_statement_after_labels, ptr @c_parser_skip_until_found, i64 147760}
!475 = !{ptr @c_parser_compound_statement, ptr @c_parser_peek_token, i64 46653}
!476 = !{ptr @c_parser_compound_statement, ptr @c_parser_require, i64 46653}
!477 = !{ptr @c_parser_compound_statement, ptr @c_begin_compound_stmt, i64 46653}
!478 = !{ptr @c_parser_compound_statement, ptr @c_end_compound_stmt, i64 46653}
!479 = !{ptr @c_parser_compound_statement, ptr @c_parser_compound_statement_nostart, i64 46652}
!480 = !{ptr @c_parser_if_statement, ptr @c_parser_next_token_is_keyword, i64 108216}
!481 = !{ptr @c_parser_if_statement, ptr @fancy_abort, i64 1}
!482 = !{ptr @c_parser_if_statement, ptr @c_parser_consume_token, i64 69003}
!483 = !{ptr @c_parser_if_statement, ptr @c_begin_compound_stmt, i64 54108}
!484 = !{ptr @c_parser_if_statement, ptr @c_parser_peek_token, i64 54108}
!485 = !{ptr @c_parser_if_statement, ptr @c_parser_paren_condition, i64 54108}
!486 = !{ptr @c_parser_if_statement, ptr @c_parser_if_body, i64 54108}
!487 = !{ptr @c_parser_if_statement, ptr @c_parser_else_body, i64 14895}
!488 = !{ptr @c_parser_if_statement, ptr @c_finish_if_stmt, i64 54108}
!489 = !{ptr @c_parser_if_statement, ptr @c_end_compound_stmt, i64 54108}
!490 = !{ptr @c_parser_if_statement, ptr @add_stmt, i64 54108}
!491 = !{ptr @c_parser_switch_statement, ptr @c_parser_peek_token, i64 4333}
!492 = !{ptr @c_parser_switch_statement, ptr @c_parser_next_token_is_keyword, i64 1565}
!493 = !{ptr @c_parser_switch_statement, ptr @fancy_abort, i64 1}
!494 = !{ptr @c_parser_switch_statement, ptr @c_parser_consume_token, i64 1565}
!495 = !{ptr @c_parser_switch_statement, ptr @c_begin_compound_stmt, i64 1565}
!496 = !{ptr @c_parser_switch_statement, ptr @c_parser_require, i64 1565}
!497 = !{ptr @c_parser_switch_statement, ptr @c_parser_expression, i64 1564}
!498 = !{ptr @c_parser_switch_statement, ptr @c_parser_skip_until_found, i64 1564}
!499 = !{ptr @c_parser_switch_statement, ptr @c_start_case, i64 1565}
!500 = !{ptr @c_parser_switch_statement, ptr @c_parser_c99_block_statement, i64 1565}
!501 = !{ptr @c_parser_switch_statement, ptr @c_finish_case, i64 1565}
!502 = !{ptr @c_parser_switch_statement, ptr @build1_stat, i64 1204}
!503 = !{ptr @c_parser_switch_statement, ptr @add_stmt, i64 2769}
!504 = !{ptr @c_parser_switch_statement, ptr @c_end_compound_stmt, i64 1565}
!505 = !{ptr @c_parser_while_statement, ptr @c_parser_next_token_is_keyword, i64 1431}
!506 = !{ptr @c_parser_while_statement, ptr @fancy_abort, i64 1}
!507 = !{ptr @c_parser_while_statement, ptr @c_parser_consume_token, i64 1431}
!508 = !{ptr @c_parser_while_statement, ptr @c_begin_compound_stmt, i64 1431}
!509 = !{ptr @c_parser_while_statement, ptr @c_parser_peek_token, i64 1431}
!510 = !{ptr @c_parser_while_statement, ptr @c_parser_paren_condition, i64 1431}
!511 = !{ptr @c_parser_while_statement, ptr @c_parser_c99_block_statement, i64 1431}
!512 = !{ptr @c_parser_while_statement, ptr @c_finish_loop, i64 1431}
!513 = !{ptr @c_parser_while_statement, ptr @c_end_compound_stmt, i64 1431}
!514 = !{ptr @c_parser_while_statement, ptr @add_stmt, i64 1431}
!515 = !{ptr @c_parser_do_statement, ptr @c_parser_next_token_is_keyword, i64 3383}
!516 = !{ptr @c_parser_do_statement, ptr @fancy_abort, i64 1}
!517 = !{ptr @c_parser_do_statement, ptr @c_parser_consume_token, i64 3383}
!518 = !{ptr @c_parser_do_statement, ptr @c_parser_next_token_is, i64 3383}
!519 = !{ptr @c_parser_do_statement, ptr @c_parser_peek_token, i64 3384}
!520 = !{ptr @c_parser_do_statement, ptr @warning_at, i64 1}
!521 = !{ptr @c_parser_do_statement, ptr @c_begin_compound_stmt, i64 3383}
!522 = !{ptr @c_parser_do_statement, ptr @c_parser_c99_block_statement, i64 3383}
!523 = !{ptr @c_parser_do_statement, ptr @c_parser_require_keyword, i64 3383}
!524 = !{ptr @c_parser_do_statement, ptr @c_parser_paren_condition, i64 3383}
!525 = !{ptr @c_parser_do_statement, ptr @c_parser_require, i64 3383}
!526 = !{ptr @c_parser_do_statement, ptr @c_parser_skip_to_end_of_block_or_statement, i64 1}
!527 = !{ptr @c_parser_do_statement, ptr @c_finish_loop, i64 3383}
!528 = !{ptr @c_parser_do_statement, ptr @c_end_compound_stmt, i64 3383}
!529 = !{ptr @c_parser_do_statement, ptr @add_stmt, i64 3383}
!530 = !{ptr @c_parser_for_statement, ptr @c_parser_peek_token, i64 11778}
!531 = !{ptr @c_parser_for_statement, ptr @c_parser_next_token_is_keyword, i64 11116}
!532 = !{ptr @c_parser_for_statement, ptr @fancy_abort, i64 1}
!533 = !{ptr @c_parser_for_statement, ptr @c_parser_consume_token, i64 6670}
!534 = !{ptr @c_parser_for_statement, ptr @c_begin_compound_stmt, i64 5889}
!535 = !{ptr @c_parser_for_statement, ptr @c_parser_require, i64 5889}
!536 = !{ptr @c_parser_for_statement, ptr @c_parser_next_token_is, i64 17664}
!537 = !{ptr @c_parser_for_statement, ptr @c_finish_expr_stmt, i64 5887}
!538 = !{ptr @c_parser_for_statement, ptr @c_parser_next_token_starts_declspecs, i64 5228}
!539 = !{ptr @c_parser_for_statement, ptr @c_parser_declaration_or_fndef, i64 2}
!540 = !{ptr @c_parser_for_statement, ptr @check_for_loop_decls, i64 2}
!541 = !{ptr @c_parser_for_statement, ptr @c_parser_peek_2nd_token, i64 18}
!542 = !{ptr @c_parser_for_statement, ptr @c_token_starts_declspecs, i64 1}
!543 = !{ptr @c_parser_for_statement, ptr @disable_extension_diagnostics, i64 1}
!544 = !{ptr @c_parser_for_statement, ptr @restore_extension_diagnostics, i64 1}
!545 = !{ptr @c_parser_for_statement, ptr @c_parser_expression, i64 10972}
!546 = !{ptr @c_parser_for_statement, ptr @c_parser_skip_until_found, i64 16891}
!547 = !{ptr @c_parser_for_statement, ptr @c_parser_condition, i64 5776}
!548 = !{ptr @c_parser_for_statement, ptr @c_process_expr_stmt, i64 5888}
!549 = !{ptr @c_parser_for_statement, ptr @c_parser_c99_block_statement, i64 5889}
!550 = !{ptr @c_parser_for_statement, ptr @c_finish_loop, i64 5889}
!551 = !{ptr @c_parser_for_statement, ptr @c_end_compound_stmt, i64 5889}
!552 = !{ptr @c_parser_for_statement, ptr @add_stmt, i64 5889}
!553 = !{ptr @c_parser_paren_condition, ptr @c_parser_require, i64 58922}
!554 = !{ptr @c_parser_paren_condition, ptr @c_parser_condition, i64 58921}
!555 = !{ptr @c_parser_paren_condition, ptr @c_parser_skip_until_found, i64 58921}
!556 = !{ptr @c_parser_if_body, ptr @c_begin_compound_stmt, i64 54108}
!557 = !{ptr @c_parser_if_body, ptr @c_parser_peek_token, i64 54290}
!558 = !{ptr @c_parser_if_body, ptr @c_parser_next_token_is_keyword, i64 162511}
!559 = !{ptr @c_parser_if_body, ptr @c_parser_next_token_is, i64 162143}
!560 = !{ptr @c_parser_if_body, ptr @c_parser_peek_2nd_token, i64 15787}
!561 = !{ptr @c_parser_if_body, ptr @c_parser_label, i64 3}
!562 = !{ptr @c_parser_if_body, ptr @build_empty_stmt, i64 182}
!563 = !{ptr @c_parser_if_body, ptr @add_stmt, i64 24290}
!564 = !{ptr @c_parser_if_body, ptr @c_parser_consume_token, i64 182}
!565 = !{ptr @c_parser_if_body, ptr @warning_at, i64 1}
!566 = !{ptr @c_parser_if_body, ptr @c_parser_compound_statement, i64 24108}
!567 = !{ptr @c_parser_if_body, ptr @c_parser_statement_after_labels, i64 29818}
!568 = !{ptr @c_parser_if_body, ptr @c_end_compound_stmt, i64 54108}
!569 = !{ptr @c_parser_else_body, ptr @c_parser_peek_token, i64 14896}
!570 = !{ptr @c_parser_else_body, ptr @c_begin_compound_stmt, i64 14895}
!571 = !{ptr @c_parser_else_body, ptr @c_parser_next_token_is_keyword, i64 29795}
!572 = !{ptr @c_parser_else_body, ptr @c_parser_next_token_is, i64 29791}
!573 = !{ptr @c_parser_else_body, ptr @c_parser_peek_2nd_token, i64 2804}
!574 = !{ptr @c_parser_else_body, ptr @c_parser_label, i64 3}
!575 = !{ptr @c_parser_else_body, ptr @warning_at, i64 1}
!576 = !{ptr @c_parser_else_body, ptr @build_empty_stmt, i64 1}
!577 = !{ptr @c_parser_else_body, ptr @add_stmt, i64 1}
!578 = !{ptr @c_parser_else_body, ptr @c_parser_consume_token, i64 1}
!579 = !{ptr @c_parser_else_body, ptr @c_parser_statement_after_labels, i64 14894}
!580 = !{ptr @c_parser_else_body, ptr @c_end_compound_stmt, i64 14895}
!581 = !{ptr @c_parser_condition, ptr @c_parser_peek_token, i64 64700}
!582 = !{ptr @c_parser_condition, ptr @c_parser_expression_conv, i64 64700}
!583 = !{ptr @c_parser_condition, ptr @c_objc_common_truthvalue_conversion, i64 64700}
!584 = !{ptr @c_parser_condition, ptr @c_fully_fold, i64 64700}
!585 = !{ptr @c_parser_condition, ptr @verify_sequence_points, i64 1}
!586 = !{ptr @c_parser_c99_block_statement, ptr @c_begin_compound_stmt, i64 12268}
!587 = !{ptr @c_parser_c99_block_statement, ptr @c_parser_peek_token, i64 12268}
!588 = !{ptr @c_parser_c99_block_statement, ptr @c_parser_statement, i64 12268}
!589 = !{ptr @c_parser_c99_block_statement, ptr @c_end_compound_stmt, i64 12268}
!590 = !{ptr @c_parser_statement, ptr @c_parser_next_token_is_keyword, i64 24539}
!591 = !{ptr @c_parser_statement, ptr @c_parser_next_token_is, i64 12268}
!592 = !{ptr @c_parser_statement, ptr @c_parser_peek_2nd_token, i64 1288}
!593 = !{ptr @c_parser_statement, ptr @c_parser_label, i64 2}
!594 = !{ptr @c_parser_statement, ptr @c_parser_statement_after_labels, i64 12268}
!595 = !{ptr @c_parser_struct_declaration, ptr @c_parser_next_token_is_keyword, i64 13186}
!596 = !{ptr @c_parser_struct_declaration, ptr @disable_extension_diagnostics, i64 49}
!597 = !{ptr @c_parser_struct_declaration, ptr @c_parser_consume_token, i64 424}
!598 = !{ptr @c_parser_struct_declaration, ptr @c_parser_struct_declaration, i64 49}
!599 = !{ptr @c_parser_struct_declaration, ptr @restore_extension_diagnostics, i64 49}
!600 = !{ptr @c_parser_struct_declaration, ptr @build_null_declspecs, i64 4351}
!601 = !{ptr @c_parser_struct_declaration, ptr @c_parser_peek_token, i64 8758}
!602 = !{ptr @c_parser_struct_declaration, ptr @c_parser_declspecs, i64 4351}
!603 = !{ptr @c_parser_struct_declaration, ptr @c_parser_error, i64 2}
!604 = !{ptr @c_parser_struct_declaration, ptr @finish_declspecs, i64 4349}
!605 = !{ptr @c_parser_struct_declaration, ptr @c_parser_next_token_is, i64 34352}
!606 = !{ptr @c_parser_struct_declaration, ptr @pedwarn, i64 1}
!607 = !{ptr @c_parser_struct_declaration, ptr @shadow_tag_warned, i64 1}
!608 = !{ptr @c_parser_struct_declaration, ptr @build_id_declarator, i64 30}
!609 = !{ptr @c_parser_struct_declaration, ptr @grokfield, i64 4407}
!610 = !{ptr @c_parser_struct_declaration, ptr @decl_attributes, i64 4406}
!611 = !{ptr @c_parser_struct_declaration, ptr @pending_xref_error, i64 4333}
!612 = !{ptr @c_parser_struct_declaration, ptr @c_parser_declarator, i64 4379}
!613 = !{ptr @c_parser_struct_declaration, ptr @c_parser_skip_to_end_of_block_or_statement, i64 1}
!614 = !{ptr @c_parser_struct_declaration, ptr @c_parser_expr_no_commas, i64 314}
!615 = !{ptr @c_parser_struct_declaration, ptr @c_parser_attributes, i64 4}
!616 = !{ptr @c_parser_struct_declaration, ptr @chainon, i64 4393}
!617 = !{ptr @c_parser_direct_declarator, ptr @c_parser_next_token_is, i64 255877}
!618 = !{ptr @c_parser_direct_declarator, ptr @c_parser_peek_token, i64 313922}
!619 = !{ptr @c_parser_direct_declarator, ptr @build_id_declarator, i64 156642}
!620 = !{ptr @c_parser_direct_declarator, ptr @c_parser_consume_token, i64 79589}
!621 = !{ptr @c_parser_direct_declarator, ptr @c_parser_direct_declarator_inner, i64 79096}
!622 = !{ptr @c_parser_direct_declarator, ptr @c_parser_attributes, i64 513}
!623 = !{ptr @c_parser_direct_declarator, ptr @c_parser_next_token_starts_declspecs, i64 132}
!624 = !{ptr @c_parser_direct_declarator, ptr @c_parser_parms_declarator, i64 2}
!625 = !{ptr @c_parser_direct_declarator, ptr @build_function_declarator, i64 1}
!626 = !{ptr @c_parser_direct_declarator, ptr @c_parser_declarator, i64 511}
!627 = !{ptr @c_parser_direct_declarator, ptr @build_attrs_declarator, i64 1}
!628 = !{ptr @c_parser_direct_declarator, ptr @c_parser_skip_until_found, i64 1}
!629 = !{ptr @c_parser_direct_declarator, ptr @c_parser_error, i64 380}
!630 = !{ptr @c_parser_direct_declarator_inner, ptr @c_parser_next_token_is, i64 255868}
!631 = !{ptr @c_parser_direct_declarator_inner, ptr @c_parser_peek_token, i64 2018}
!632 = !{ptr @c_parser_direct_declarator_inner, ptr @build_null_declspecs, i64 2018}
!633 = !{ptr @c_parser_direct_declarator_inner, ptr @c_parser_consume_token, i64 28343}
!634 = !{ptr @c_parser_direct_declarator_inner, ptr @c_parser_declspecs, i64 2019}
!635 = !{ptr @c_parser_direct_declarator_inner, ptr @c_parser_next_token_is_keyword, i64 2018}
!636 = !{ptr @c_parser_direct_declarator_inner, ptr @c_parser_expr_no_commas, i64 1343}
!637 = !{ptr @c_parser_direct_declarator_inner, ptr @c_parser_peek_2nd_token, i64 1}
!638 = !{ptr @c_parser_direct_declarator_inner, ptr @build_array_declarator, i64 2016}
!639 = !{ptr @c_parser_direct_declarator_inner, ptr @c_parser_skip_until_found, i64 1}
!640 = !{ptr @c_parser_direct_declarator_inner, ptr @set_array_declarator_inner, i64 2015}
!641 = !{ptr @c_parser_direct_declarator_inner, ptr @c_parser_attributes, i64 24307}
!642 = !{ptr @c_parser_direct_declarator_inner, ptr @c_parser_parms_declarator, i64 24307}
!643 = !{ptr @c_parser_direct_declarator_inner, ptr @build_function_declarator, i64 24305}
!644 = !{ptr @c_parser_parms_declarator, ptr @push_scope, i64 19239}
!645 = !{ptr @c_parser_parms_declarator, ptr @declare_parm_level, i64 19239}
!646 = !{ptr @c_parser_parms_declarator, ptr @c_parser_next_token_is, i64 20622}
!647 = !{ptr @c_parser_parms_declarator, ptr @c_parser_peek_token, i64 12963}
!648 = !{ptr @c_parser_parms_declarator, ptr @build_tree_list_stat, i64 733}
!649 = !{ptr @c_parser_parms_declarator, ptr @c_parser_consume_token, i64 1468}
!650 = !{ptr @c_parser_parms_declarator, ptr @c_parser_next_token_is_not, i64 733}
!651 = !{ptr @c_parser_parms_declarator, ptr @c_parser_error, i64 1}
!652 = !{ptr @c_parser_parms_declarator, ptr @_obstack_newchunk, i64 1}
!653 = !{ptr @c_parser_parms_declarator, ptr @c_parser_skip_until_found, i64 1}
!654 = !{ptr @c_parser_parms_declarator, ptr @pop_scope, i64 19239}
!655 = !{ptr @c_parser_parms_declarator, ptr @c_parser_parms_list_declarator, i64 18928}
!656 = !{ptr @c_parser_parms_list_declarator, ptr @c_parser_next_token_is, i64 136101}
!657 = !{ptr @c_parser_parms_list_declarator, ptr @_obstack_newchunk, i64 6}
!658 = !{ptr @c_parser_parms_list_declarator, ptr @c_parser_consume_token, i64 19059}
!659 = !{ptr @c_parser_parms_list_declarator, ptr @c_parser_peek_token, i64 1}
!660 = !{ptr @c_parser_parms_list_declarator, ptr @error_at, i64 1}
!661 = !{ptr @c_parser_parms_list_declarator, ptr @c_parser_parameter_declaration, i64 38969}
!662 = !{ptr @c_parser_parms_list_declarator, ptr @push_parm_decl, i64 38968}
!663 = !{ptr @c_parser_parms_list_declarator, ptr @mark_forward_parm_decls, i64 1}
!664 = !{ptr @c_parser_parms_list_declarator, ptr @c_parser_attributes, i64 1}
!665 = !{ptr @c_parser_parms_list_declarator, ptr @get_parm_info, i64 18805}
!666 = !{ptr @c_parser_parms_list_declarator, ptr @c_parser_require, i64 20291}
!667 = !{ptr @c_parser_parms_list_declarator, ptr @c_parser_skip_until_found, i64 2}
!668 = !{ptr @c_parser_parms_list_declarator, ptr @get_pending_sizes, i64 2}
!669 = !{ptr @c_parser_initializer, ptr @c_parser_next_token_is, i64 14002}
!670 = !{ptr @c_parser_initializer, ptr @c_parser_braced_init, i64 563}
!671 = !{ptr @c_parser_initializer, ptr @c_parser_peek_token, i64 13439}
!672 = !{ptr @c_parser_initializer, ptr @c_parser_expr_no_commas, i64 13439}
!673 = !{ptr @c_parser_initializer, ptr @default_function_array_conversion, i64 13392}
!674 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!675 = !{!"function_entry_count", i64 1}
!676 = !{!677, !677, i64 0}
!677 = !{!"int", !678, i64 0}
!678 = !{!"omnipotent char", !679, i64 0}
!679 = !{!"Simple C/C++ TBAA"}
!680 = !{!"branch_weights", i32 2, i32 1}
!681 = !{!682, !682, i64 0}
!682 = !{!"any pointer", !678, i64 0}
!683 = !{!"branch_weights", i32 1, i32 127}
!684 = !{!"branch_weights", i32 80, i32 73}
!685 = !{!"branch_weights", i32 147, i32 1}
!686 = !{!687, !682, i64 0}
!687 = !{!"c_common_resword", !682, i64 0, !677, i64 8, !677, i64 10}
!688 = !{!689, !678, i64 41}
!689 = !{!"c_common_identifier", !690, i64 0, !692, i64 24}
!690 = !{!"tree_common", !691, i64 0, !682, i64 8, !682, i64 16}
!691 = !{!"tree_base", !677, i64 0, !677, i64 2, !677, i64 2, !677, i64 2, !677, i64 2, !677, i64 2, !677, i64 2, !677, i64 2, !677, i64 2, !677, i64 3, !677, i64 3, !677, i64 3, !677, i64 3, !677, i64 3, !677, i64 3, !677, i64 3, !677, i64 3, !677, i64 4, !677, i64 4, !677, i64 4, !677, i64 4, !677, i64 4, !677, i64 4, !677, i64 4, !677, i64 4, !677, i64 5, !677, i64 5, !677, i64 5, !677, i64 5, !677, i64 7}
!692 = !{!"cpp_hashnode", !693, i64 0, !677, i64 16, !677, i64 16, !678, i64 17, !677, i64 18, !677, i64 18, !678, i64 24}
!693 = !{!"ht_identifier", !682, i64 0, !677, i64 8, !677, i64 12}
!694 = !{!"branch_weights", i32 127, i32 9601}
!695 = distinct !{!695, !696}
!696 = !{!"llvm.loop.mustprogress"}
!697 = !{!"function_entry_count", i64 0}
!698 = !{!699, !682, i64 8}
!699 = !{!"c_token", !677, i64 0, !677, i64 1, !677, i64 2, !677, i64 3, !682, i64 8, !677, i64 16}
!700 = !{!"function_entry_count", i64 31377272}
!701 = !{!"c-parser.c:c_parser_peek_token"}
!702 = !{!703, !704, i64 48}
!703 = !{!"c_parser", !678, i64 0, !704, i64 48, !677, i64 50, !677, i64 50, !677, i64 50, !677, i64 50, !677, i64 50, !677, i64 50}
!704 = !{!"short", !678, i64 0}
!705 = !{!"branch_weights", i32 3723008, i32 27654266}
!706 = !{!"function_entry_count", i64 4310355}
!707 = !{!"c-parser.c:c_parser_consume_token"}
!708 = !{!"branch_weights", i32 4310356, i32 1}
!709 = !{!"branch_weights", i32 1, i32 4310356}
!710 = !{!"branch_weights", i32 587350, i32 3723007}
!711 = !{i64 0, i64 4, !676, i64 1, i64 4, !676, i64 2, i64 4, !676, i64 3, i64 4, !676, i64 8, i64 8, !681, i64 16, i64 4, !676}
!712 = !{!"function_entry_count", i64 4310356}
!713 = !{!"c-parser.c:c_lex_one_token"}
!714 = !{!678, !678, i64 0}
!715 = !{!"branch_weights", i32 4310357, i32 1}
!716 = !{!"branch_weights", i32 1844354, i32 1345424, i32 1, i32 42750, i32 225472, i32 641038, i32 211324, i32 1}
!717 = !{!"branch_weights", i32 1345424, i32 1}
!718 = !{!"branch_weights", i32 1030668, i32 314757}
!719 = !{!"branch_weights", i32 1, i32 314757}
!720 = !{!699, !677, i64 16}
!721 = !{!"branch_weights", i32 314757, i32 1}
!722 = !{!"branch_weights", i32 338083, i32 692586}
!723 = !{!"branch_weights", i32 82716, i32 609871}
!724 = !{!"branch_weights", i32 338083, i32 1}
!725 = !{!"branch_weights", i32 1120581, i32 1}
!726 = !{!"branch_weights", i32 1, i32 2}
!727 = !{i64 0, i64 48, !714, i64 48, i64 2, !728, i64 50, i64 4, !676, i64 50, i64 4, !676, i64 50, i64 4, !676, i64 50, i64 4, !676, i64 50, i64 4, !676, i64 50, i64 4, !676}
!728 = !{!704, !704, i64 0}
!729 = !{!"c-parser.c:c_parser_pragma_pch_preprocess"}
!730 = !{i8 0, i8 2}
!731 = !{!"c-parser.c:c_parser_translation_unit"}
!732 = !{!733, !734, i64 40}
!733 = !{!"obstack", !734, i64 0, !682, i64 8, !682, i64 16, !682, i64 24, !682, i64 32, !734, i64 40, !677, i64 48, !682, i64 56, !682, i64 64, !682, i64 72, !677, i64 80, !677, i64 80, !677, i64 80}
!734 = !{!"long", !678, i64 0}
!735 = !{!733, !682, i64 32}
!736 = !{!733, !682, i64 24}
!737 = !{!733, !682, i64 16}
!738 = !{!733, !677, i64 48}
!739 = !{!733, !682, i64 8}
!740 = !{!"branch_weights", i32 22396, i32 905}
!741 = !{!"branch_weights", i32 22396, i32 1}
!742 = !{!"branch_weights", i32 2, i32 23299}
!743 = distinct !{!743, !696}
!744 = !{!"c-parser.c:c_parser_consume_pragma"}
!745 = !{!"function_entry_count", i64 9247672}
!746 = !{!"c-parser.c:c_parser_next_token_is"}
!747 = !{!"c-parser.c:c_parser_error"}
!748 = !{!"c-parser.c:c_parser_skip_to_pragma_eol"}
!749 = !{!"function_entry_count", i64 42378}
!750 = !{!"c-parser.c:c_parser_set_source_position_from_token"}
!751 = !{!"branch_weights", i32 1, i32 42379}
!752 = !{!"function_entry_count", i64 1018482}
!753 = !{!"c-parser.c:c_parser_require"}
!754 = !{!"branch_weights", i32 1, i32 1018483}
!755 = !{!"function_entry_count", i64 23329}
!756 = !{!"c-parser.c:c_parser_external_declaration"}
!757 = !{!"branch_weights", i32 1969, i32 21362, i32 1, i32 1, i32 1, i32 1}
!758 = !{!"branch_weights", i32 21332, i32 31, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!759 = !{!"function_entry_count", i64 1439643}
!760 = !{!"c-parser.c:c_parser_next_token_is_not"}
!761 = !{!"function_entry_count", i64 277}
!762 = !{!"c-parser.c:disable_extension_diagnostics"}
!763 = !{!764, !678, i64 37}
!764 = !{!"cpp_options", !677, i64 0, !677, i64 4, !678, i64 8, !678, i64 9, !678, i64 10, !678, i64 11, !678, i64 12, !678, i64 13, !678, i64 14, !678, i64 15, !678, i64 16, !678, i64 17, !678, i64 18, !678, i64 19, !678, i64 20, !678, i64 21, !678, i64 22, !678, i64 23, !678, i64 24, !678, i64 25, !678, i64 26, !678, i64 27, !678, i64 28, !678, i64 29, !678, i64 30, !678, i64 31, !678, i64 32, !678, i64 33, !678, i64 34, !678, i64 35, !678, i64 36, !678, i64 37, !678, i64 38, !678, i64 39, !678, i64 40, !678, i64 41, !678, i64 42, !682, i64 48, !682, i64 56, !682, i64 64, !677, i64 72, !678, i64 76, !678, i64 77, !765, i64 80, !734, i64 88, !734, i64 96, !734, i64 104, !734, i64 112, !678, i64 120, !678, i64 121, !678, i64 122, !678, i64 123, !678, i64 124}
!765 = !{!"", !677, i64 0, !678, i64 4, !678, i64 5, !678, i64 6, !678, i64 7}
!766 = !{!764, !678, i64 23}
!767 = !{!764, !678, i64 24}
!768 = !{!"c-parser.c:restore_extension_diagnostics"}
!769 = !{!"c-parser.c:c_parser_asm_definition"}
!770 = !{!"c-parser.c:c_parser_objc_class_definition"}
!771 = !{!"c-parser.c:c_parser_objc_class_declaration"}
!772 = !{!"c-parser.c:c_parser_objc_alias_declaration"}
!773 = !{!"c-parser.c:c_parser_objc_protocol_definition"}
!774 = !{!"c-parser.c:c_parser_pragma"}
!775 = !{!"c-parser.c:c_parser_objc_method_definition"}
!776 = !{i32 63, i32 192}
!777 = !{!"function_entry_count", i64 50396}
!778 = !{!"c-parser.c:c_parser_declaration_or_fndef"}
!779 = !{!"branch_weights", i32 50397, i32 1}
!780 = !{!"branch_weights", i32 23300, i32 27098}
!781 = !{!"branch_weights", i32 1, i32 27098}
!782 = !{!"branch_weights", i32 49595, i32 803}
!783 = !{!"branch_weights", i32 1, i32 803}
!784 = !{!785, !682, i64 24}
!785 = !{!"c_declspecs", !682, i64 0, !682, i64 8, !682, i64 16, !682, i64 24, !677, i64 32, !677, i64 36, !677, i64 40, !677, i64 40, !677, i64 40, !677, i64 40, !677, i64 40, !677, i64 40, !677, i64 40, !677, i64 40, !677, i64 44, !677, i64 48, !677, i64 48, !677, i64 48, !677, i64 48, !677, i64 48, !677, i64 48, !677, i64 48, !677, i64 48, !677, i64 49, !677, i64 49, !677, i64 49, !677, i64 49, !678, i64 50}
!786 = !{!"branch_weights", i32 39890, i32 13789}
!787 = !{!"branch_weights", i32 36368, i32 3523}
!788 = !{!"branch_weights", i32 10878, i32 25491}
!789 = !{!"branch_weights", i32 10877, i32 2}
!790 = !{!"branch_weights", i32 9044, i32 1834}
!791 = !{!"branch_weights", i32 44635, i32 1}
!792 = !{!"branch_weights", i32 1, i32 44635}
!793 = !{!"branch_weights", i32 44634, i32 2}
!794 = !{!"branch_weights", i32 42802, i32 1834}
!795 = !{!"branch_weights", i32 30633, i32 14003}
!796 = !{!"branch_weights", i32 1, i32 14003}
!797 = !{i64 0, i64 8, !681, i64 8, i64 4, !676, i64 16, i64 8, !681}
!798 = !{!799, !682, i64 0}
!799 = !{!"c_expr", !682, i64 0, !677, i64 8, !682, i64 16}
!800 = !{!799, !682, i64 16}
!801 = !{!"branch_weights", i32 1, i32 30633}
!802 = !{!"branch_weights", i32 40552, i32 4084}
!803 = !{!"branch_weights", i32 4084, i32 1}
!804 = !{!"branch_weights", i32 1, i32 40552}
!805 = !{!"branch_weights", i32 1, i32 9044}
!806 = !{!"branch_weights", i32 9044, i32 1}
!807 = !{!"branch_weights", i32 9044, i32 709}
!808 = !{!"branch_weights", i32 127, i32 1248129}
!809 = distinct !{!809, !696}
!810 = !{!811, !677, i64 112}
!811 = !{!"function", !682, i64 0, !682, i64 8, !682, i64 16, !682, i64 24, !682, i64 32, !682, i64 40, !682, i64 48, !682, i64 56, !682, i64 64, !682, i64 72, !682, i64 80, !682, i64 88, !682, i64 96, !677, i64 104, !677, i64 108, !677, i64 112, !677, i64 116, !677, i64 120, !677, i64 124, !682, i64 128, !677, i64 136, !677, i64 137, !677, i64 138, !677, i64 138, !677, i64 138, !677, i64 138, !677, i64 138, !677, i64 138, !677, i64 138, !677, i64 139, !677, i64 139, !677, i64 139, !677, i64 139, !677, i64 139, !677, i64 139, !677, i64 139}
!812 = !{!"branch_weights", i32 127, i32 6870657}
!813 = !{!"c-parser.c:c_parser_simple_asm_expr"}
!814 = !{!"function_entry_count", i64 844796}
!815 = !{!"c-parser.c:c_parser_skip_until_found"}
!816 = !{!"branch_weights", i32 1, i32 844797}
!817 = !{!"function_entry_count", i64 1522842}
!818 = !{!"c-parser.c:c_parser_next_token_is_keyword"}
!819 = !{!"c-parser.c:c_parser_asm_string_literal"}
!820 = !{!"c-parser.c:c_parser_objc_protocol_refs"}
!821 = !{!"c-parser.c:c_parser_objc_methodprotolist"}
!822 = !{!"function_entry_count", i64 3383}
!823 = !{!"c-parser.c:c_parser_require_keyword"}
!824 = !{!"branch_weights", i32 1, i32 3384}
!825 = !{!"c-parser.c:c_parser_objc_class_instance_variables"}
!826 = distinct !{!826, !696}
!827 = distinct !{!827, !696}
!828 = !{!"c-parser.c:c_parser_objc_methodproto"}
!829 = !{!"c-parser.c:c_parser_objc_method_type"}
!830 = !{!"c-parser.c:c_parser_objc_method_decl"}
!831 = !{!"c-parser.c:c_parser_objc_type_name"}
!832 = !{!"c-parser.c:c_parser_objc_selector"}
!833 = !{!"function_entry_count", i64 39180}
!834 = !{!"c-parser.c:c_parser_parameter_declaration"}
!835 = !{!"branch_weights", i32 1, i32 39181}
!836 = !{!"branch_weights", i32 39181, i32 1}
!837 = !{!"branch_weights", i32 36145, i32 3037}
!838 = !{!"c-parser.c:c_parser_next_token_starts_typename"}
!839 = !{!"function_entry_count", i64 59782}
!840 = !{!"c-parser.c:c_parser_type_name"}
!841 = !{!"branch_weights", i32 1, i32 59783}
!842 = !{!"branch_weights", i32 140, i32 59644}
!843 = !{!844, !682, i64 0}
!844 = !{!"c_type_name", !682, i64 0, !682, i64 8}
!845 = !{!844, !682, i64 8}
!846 = !{!"function_entry_count", i64 823094}
!847 = !{!"c-parser.c:c_token_starts_typename"}
!848 = !{!"branch_weights", i32 483258, i32 286457, i32 53382, i32 1}
!849 = !{!"branch_weights", i32 1, i32 278977, i32 1, i32 7481, i32 1}
!850 = !{!"branch_weights", i32 1665, i32 7365, i32 1597, i32 15, i32 24, i32 1, i32 5569, i32 431, i32 10, i32 34, i32 12278, i32 1, i32 1, i32 1, i32 1, i32 22587, i32 1138, i32 22, i32 1, i32 660, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!851 = !{!"function_entry_count", i64 191147}
!852 = !{!"c-parser.c:c_parser_declspecs"}
!853 = !{!"branch_weights", i32 251686, i32 127782}
!854 = !{!"branch_weights", i32 115979, i32 135708}
!855 = !{!"branch_weights", i32 115979, i32 1}
!856 = !{!"branch_weights", i32 115979, i32 263489}
!857 = !{!"branch_weights", i32 135708, i32 127782}
!858 = !{!"branch_weights", i32 1, i32 127782}
!859 = !{!"branch_weights", i32 -1928613372, i32 -914297959}
!860 = !{!"branch_weights", i32 52616, i32 1}
!861 = !{!862, !677, i64 0}
!862 = !{!"c_typespec", !677, i64 0, !682, i64 8, !682, i64 16, !678, i64 24}
!863 = !{!862, !682, i64 8}
!864 = !{!862, !682, i64 16}
!865 = !{!862, !678, i64 24}
!866 = distinct !{!866, !696}
!867 = !{!"branch_weights", i32 135708, i32 1}
!868 = !{!"branch_weights", i32 1, i32 135708}
!869 = !{!"branch_weights", i32 4, i32 9105, i32 7206, i32 60, i32 519, i32 536, i32 2, i32 1, i32 13840, i32 5032, i32 2423, i32 36, i32 1, i32 21451, i32 7396, i32 334, i32 744, i32 24209, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 26343, i32 9606, i32 150, i32 1, i32 6313, i32 9, i32 411, i32 1}
!870 = !{!"branch_weights", i32 1, i32 17423}
!871 = !{!"branch_weights", i32 1, i32 75457}
!872 = !{!"branch_weights", i32 75457, i32 1}
!873 = !{!"branch_weights", i32 1, i32 26343}
!874 = !{i64 0, i64 4, !676, i64 8, i64 8, !681, i64 16, i64 8, !681, i64 24, i64 1, !714}
!875 = !{!"branch_weights", i32 1, i32 9755}
!876 = !{!"function_entry_count", i64 193375}
!877 = !{!"c-parser.c:c_parser_declarator"}
!878 = !{!"branch_weights", i32 157535, i32 35842}
!879 = !{!"branch_weights", i32 1, i32 35842}
!880 = !{!"function_entry_count", i64 26342}
!881 = !{!"c-parser.c:c_parser_enum_specifier"}
!882 = !{!"branch_weights", i32 103, i32 26241}
!883 = !{!"branch_weights", i32 26063, i32 281}
!884 = !{!"branch_weights", i32 6283, i32 1}
!885 = !{!"branch_weights", i32 4159, i32 2125}
!886 = !{!"branch_weights", i32 252, i32 6032}
!887 = !{!"branch_weights", i32 6003, i32 281}
!888 = !{!"branch_weights", i32 230322527, i32 1917161121}
!889 = !{!"branch_weights", i32 0, i32 -2147483648}
!890 = !{!"branch_weights", i32 26063, i32 1}
!891 = !{!"function_entry_count", i64 9754}
!892 = !{!"c-parser.c:c_parser_struct_or_union_specifier"}
!893 = !{!"branch_weights", i32 1, i32 9606, i32 150}
!894 = !{!"branch_weights", i32 130, i32 9626}
!895 = !{!"branch_weights", i32 8998, i32 758}
!896 = !{!"branch_weights", i32 758, i32 1}
!897 = !{!"branch_weights", i32 5110, i32 1}
!898 = !{!"branch_weights", i32 4353, i32 758}
!899 = !{!"branch_weights", i32 4353, i32 1}
!900 = !{!"branch_weights", i32 1, i32 4353}
!901 = !{!"c-parser.c:c_parser_typeof_specifier"}
!902 = !{!"function_entry_count", i64 69805}
!903 = !{!"c-parser.c:c_parser_attributes"}
!904 = !{!"branch_weights", i32 56724, i32 13082}
!905 = !{!"branch_weights", i32 1, i32 13082}
!906 = !{!"branch_weights", i32 26163, i32 1}
!907 = !{!"branch_weights", i32 13194, i32 12970}
!908 = !{!"branch_weights", i32 13082, i32 13082}
!909 = !{!"branch_weights", i32 13082, i32 1}
!910 = distinct !{!910, !696}
!911 = !{!"branch_weights", i32 12970, i32 113}
!912 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 113, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!913 = !{!"branch_weights", i32 335, i32 12748}
!914 = !{!"branch_weights", i32 286, i32 50}
!915 = !{!"branch_weights", i32 50, i32 1}
!916 = !{!"branch_weights", i32 41, i32 10}
!917 = !{!"branch_weights", i32 10, i32 1}
!918 = !{!"branch_weights", i32 286, i32 1}
!919 = !{!"branch_weights", i32 1, i32 335}
!920 = !{!"branch_weights", i32 13082, i32 0}
!921 = distinct !{!921, !696}
!922 = !{!"function_entry_count", i64 1077983}
!923 = !{!"c-parser.c:c_parser_expr_no_commas"}
!924 = !{!"branch_weights", i32 1077984, i32 1}
!925 = !{i64 0, i64 4, !676, i64 8, i64 8, !681}
!926 = !{i64 0, i64 8, !681}
!927 = !{!"branch_weights", i32 998897, i32 75160, i32 54, i32 28, i32 16, i32 1746, i32 330, i32 55, i32 66, i32 581, i32 35, i32 1027}
!928 = !{!"branch_weights", i32 75160, i32 3929}
!929 = !{!"function_entry_count", i64 1086028}
!930 = !{!"c-parser.c:c_parser_conditional_expression"}
!931 = !{!"branch_weights", i32 1086029, i32 1}
!932 = !{!"branch_weights", i32 8046, i32 1077984}
!933 = !{!"branch_weights", i32 8046, i32 1}
!934 = !{!"branch_weights", i32 1, i32 8046}
!935 = !{!799, !677, i64 8}
!936 = !{!"branch_weights", i32 16093, i32 64738116}
!937 = !{!"branch_weights", i32 4894, i32 3153}
!938 = !{!"branch_weights", i32 5029, i32 3018}
!939 = !{!"branch_weights", i32 6781, i32 1266}
!940 = !{!"c-parser.c:c_parser_binary_expression"}
!941 = !{!942, !677, i64 32}
!942 = !{!"", !799, i64 0, !677, i64 24, !677, i64 28, !677, i64 32}
!943 = !{!942, !677, i64 24}
!944 = !{!"branch_weights", i32 127, i32 1}
!945 = !{!"branch_weights", i32 142868, i32 32775}
!946 = !{!942, !677, i64 28}
!947 = !{!"branch_weights", i32 22493, i32 6776, i32 3508}
!948 = !{!942, !682, i64 0}
!949 = !{!"branch_weights", i32 32775, i32 0}
!950 = distinct !{!950, !696}
!951 = !{!"branch_weights", i32 127705, i32 32006, i32 15934}
!952 = !{!"branch_weights", i32 161493761, i32 127}
!953 = !{!"branch_weights", i32 142869, i32 943160}
!954 = !{!"branch_weights", i32 105213, i32 25231, i32 12427}
!955 = !{!"branch_weights", i32 0, i32 142869}
!956 = distinct !{!956, !696}
!957 = !{!"function_entry_count", i64 196880}
!958 = !{!"c-parser.c:c_parser_expression_conv"}
!959 = !{!"function_entry_count", i64 1359248}
!960 = !{!"c-parser.c:c_parser_cast_expression"}
!961 = !{!"branch_weights", i32 1359249, i32 1}
!962 = !{!"branch_weights", i32 920678, i32 438572}
!963 = !{!"branch_weights", i32 381132, i32 57441}
!964 = !{!"branch_weights", i32 1, i32 57441}
!965 = !{!785, !682, i64 0}
!966 = !{!"branch_weights", i32 57441, i32 1}
!967 = !{!"function_entry_count", i64 1259913}
!968 = !{!"c-parser.c:c_parser_postfix_expression_after_primary"}
!969 = !{!"branch_weights", i32 1259914, i32 91236, i32 86587, i32 117935, i32 123262, i32 4438, i32 652}
!970 = !{!"branch_weights", i32 80675, i32 5913}
!971 = !{!"branch_weights", i32 45, i32 86543}
!972 = !{!"branch_weights", i32 45, i32 1}
!973 = !{!"branch_weights", i32 2025, i32 91}
!974 = !{!"branch_weights", i32 5913, i32 80675}
!975 = !{!"branch_weights", i32 1, i32 117935}
!976 = !{!"branch_weights", i32 117935, i32 1}
!977 = !{!"branch_weights", i32 1, i32 123262}
!978 = !{!"branch_weights", i32 123262, i32 1}
!979 = !{!"function_entry_count", i64 1351400}
!980 = !{!"c-parser.c:c_parser_peek_2nd_token"}
!981 = !{!"branch_weights", i32 764052, i32 587350}
!982 = !{!"branch_weights", i32 587350, i32 1}
!983 = !{!"branch_weights", i32 1, i32 587350}
!984 = !{!"c-parser.c:c_parser_postfix_expression_after_paren_type"}
!985 = !{!"function_entry_count", i64 1303460}
!986 = !{!"c-parser.c:c_parser_unary_expression"}
!987 = !{!"branch_weights", i32 1258017, i32 402, i32 219, i32 9997, i32 11677, i32 1, i32 4071, i32 1122, i32 12464, i32 1, i32 5500}
!988 = !{!989, !678, i64 16}
!989 = !{!"", !682, i64 0, !677, i64 8, !677, i64 12, !678, i64 16}
!990 = !{!"branch_weights", i32 1898, i32 3407, i32 4, i32 194, i32 1, i32 1}
!991 = !{!"function_entry_count", i64 682509}
!992 = !{!"c-parser.c:c_parser_expression"}
!993 = !{!"branch_weights", i32 680635, i32 1875}
!994 = !{!"branch_weights", i32 1875, i32 0}
!995 = distinct !{!995, !696}
!996 = !{!"function_entry_count", i64 80999}
!997 = !{!"c-parser.c:c_parser_expr_list"}
!998 = !{!"branch_weights", i32 326, i32 80675}
!999 = !{!"branch_weights", i32 80675, i32 326}
!1000 = !{!"branch_weights", i32 1, i32 80999}
!1001 = !{!"branch_weights", i32 163, i32 94929}
!1002 = !{!"branch_weights", i32 94929, i32 163}
!1003 = !{!"branch_weights", i32 80999, i32 14092}
!1004 = distinct !{!1004, !696}
!1005 = !{!"function_entry_count", i64 351691}
!1006 = !{!"c-parser.c:VEC_tree_base_quick_push"}
!1007 = !{!1008, !677, i64 0}
!1008 = !{!"VEC_tree_base", !677, i64 0, !677, i64 4, !678, i64 8}
!1009 = !{!"function_entry_count", i64 190018}
!1010 = !{!"c-parser.c:VEC_tree_gc_safe_push"}
!1011 = !{!"c-parser.c:VEC_tree_gc_reserve"}
!1012 = !{!"branch_weights", i32 31, i32 189989}
!1013 = !{!"c-parser.c:VEC_tree_base_space"}
!1014 = !{!"branch_weights", i32 1, i32 190019}
!1015 = !{!1008, !677, i64 4}
!1016 = !{!"function_entry_count", i64 10042}
!1017 = !{!"c-parser.c:c_parser_braced_init"}
!1018 = !{!"branch_weights", i32 1, i32 10043}
!1019 = !{!"branch_weights", i32 563, i32 9481}
!1020 = !{!"branch_weights", i32 10043, i32 1}
!1021 = !{!"branch_weights", i32 105975, i32 1}
!1022 = !{!"branch_weights", i32 9096, i32 96880}
!1023 = !{!"branch_weights", i32 95933, i32 948}
!1024 = !{!"function_entry_count", i64 105974}
!1025 = !{!"c-parser.c:c_parser_initelt"}
!1026 = !{!"branch_weights", i32 98084, i32 7892}
!1027 = !{!"branch_weights", i32 1, i32 7892}
!1028 = !{!"branch_weights", i32 107009, i32 93}
!1029 = !{!"branch_weights", i32 105975, i32 1127}
!1030 = !{!"branch_weights", i32 1127, i32 1}
!1031 = !{!"branch_weights", i32 93, i32 1035}
!1032 = !{!"branch_weights", i32 1, i32 1035}
!1033 = !{!"branch_weights", i32 93, i32 94, i32 8649}
!1034 = !{!"branch_weights", i32 93, i32 1}
!1035 = distinct !{!1035, !696}
!1036 = !{!"branch_weights", i32 1, i32 93}
!1037 = !{!"branch_weights", i32 22826655, i32 2124656993}
!1038 = !{!"branch_weights", i32 1, i32 1127}
!1039 = !{!"c-parser.c:c_parser_objc_message_args"}
!1040 = !{!"c-parser.c:c_parser_initval"}
!1041 = !{!"branch_weights", i32 1955380367, i32 192103281}
!1042 = !{!"branch_weights", i32 1, i32 96495}
!1043 = !{!"branch_weights", i32 -552198616, i32 431605020, i32 43259}
!1044 = !{!"c-parser.c:c_parser_objc_keywordexpr"}
!1045 = !{!"c-parser.c:VEC_tree_base_length"}
!1046 = !{!"c-parser.c:VEC_tree_base_index"}
!1047 = !{!"function_entry_count", i64 3406}
!1048 = !{!"c-parser.c:c_parser_sizeof_expression"}
!1049 = !{!"branch_weights", i32 1, i32 3407}
!1050 = !{!"branch_weights", i32 739, i32 2669}
!1051 = !{!"branch_weights", i32 915, i32 1755}
!1052 = !{!"branch_weights", i32 1, i32 1755}
!1053 = !{!"branch_weights", i32 1755, i32 1}
!1054 = !{!"branch_weights", i32 41, i32 1613}
!1055 = !{!"branch_weights", i32 41, i32 1}
!1056 = !{!"function_entry_count", i64 3}
!1057 = !{!"c-parser.c:c_parser_alignof_expression"}
!1058 = !{!"branch_weights", i32 1, i32 4}
!1059 = !{!"branch_weights", i32 4, i32 1}
!1060 = !{!"c-parser.c:c_parser_postfix_expression"}
!1061 = !{!"branch_weights", i32 1, i32 268160, i32 5218, i32 1, i32 1, i32 1, i32 24983, i32 1, i32 1, i32 1, i32 1, i32 1, i32 577614, i32 382046, i32 1898, i32 1}
!1062 = !{!"branch_weights", i32 1, i32 268160}
!1063 = !{!1064, !682, i64 880}
!1064 = !{!"gcc_target", !1065, i64 0, !1067, i64 368, !1068, i64 664, !677, i64 744, !682, i64 752, !682, i64 760, !682, i64 768, !682, i64 776, !682, i64 784, !682, i64 792, !682, i64 800, !682, i64 808, !682, i64 816, !682, i64 824, !682, i64 832, !682, i64 840, !682, i64 848, !682, i64 856, !682, i64 864, !682, i64 872, !682, i64 880, !682, i64 888, !682, i64 896, !682, i64 904, !682, i64 912, !682, i64 920, !682, i64 928, !682, i64 936, !682, i64 944, !682, i64 952, !682, i64 960, !682, i64 968, !682, i64 976, !682, i64 984, !682, i64 992, !682, i64 1000, !682, i64 1008, !682, i64 1016, !682, i64 1024, !682, i64 1032, !682, i64 1040, !682, i64 1048, !682, i64 1056, !734, i64 1064, !734, i64 1072, !682, i64 1080, !682, i64 1088, !682, i64 1096, !682, i64 1104, !682, i64 1112, !682, i64 1120, !682, i64 1128, !682, i64 1136, !682, i64 1144, !682, i64 1152, !682, i64 1160, !682, i64 1168, !1069, i64 1176, !682, i64 1232, !682, i64 1240, !682, i64 1248, !682, i64 1256, !682, i64 1264, !682, i64 1272, !682, i64 1280, !682, i64 1288, !682, i64 1296, !682, i64 1304, !682, i64 1312, !682, i64 1320, !682, i64 1328, !682, i64 1336, !682, i64 1344, !682, i64 1352, !682, i64 1360, !682, i64 1368, !682, i64 1376, !682, i64 1384, !682, i64 1392, !682, i64 1400, !682, i64 1408, !682, i64 1416, !682, i64 1424, !682, i64 1432, !682, i64 1440, !682, i64 1448, !682, i64 1456, !734, i64 1464, !1070, i64 1472, !682, i64 1664, !682, i64 1672, !682, i64 1680, !682, i64 1688, !682, i64 1696, !682, i64 1704, !682, i64 1712, !682, i64 1720, !682, i64 1728, !682, i64 1736, !682, i64 1744, !682, i64 1752, !682, i64 1760, !682, i64 1768, !682, i64 1776, !1071, i64 1784, !1072, i64 1792, !1073, i64 1896, !1074, i64 1968, !682, i64 2016, !678, i64 2024, !678, i64 2025, !678, i64 2026, !678, i64 2027, !678, i64 2028, !678, i64 2029, !678, i64 2030, !678, i64 2031, !678, i64 2032, !678, i64 2033, !678, i64 2034, !678, i64 2035}
!1065 = !{!"asm_out", !682, i64 0, !682, i64 8, !682, i64 16, !1066, i64 24, !1066, i64 56, !682, i64 88, !682, i64 96, !682, i64 104, !682, i64 112, !682, i64 120, !682, i64 128, !682, i64 136, !682, i64 144, !682, i64 152, !682, i64 160, !682, i64 168, !682, i64 176, !682, i64 184, !682, i64 192, !682, i64 200, !682, i64 208, !682, i64 216, !682, i64 224, !682, i64 232, !682, i64 240, !682, i64 248, !682, i64 256, !682, i64 264, !682, i64 272, !682, i64 280, !682, i64 288, !682, i64 296, !682, i64 304, !682, i64 312, !682, i64 320, !682, i64 328, !682, i64 336, !682, i64 344, !682, i64 352, !682, i64 360}
!1066 = !{!"asm_int_op", !682, i64 0, !682, i64 8, !682, i64 16, !682, i64 24}
!1067 = !{!"sched", !682, i64 0, !682, i64 8, !682, i64 16, !682, i64 24, !682, i64 32, !682, i64 40, !682, i64 48, !682, i64 56, !682, i64 64, !682, i64 72, !682, i64 80, !682, i64 88, !682, i64 96, !682, i64 104, !682, i64 112, !682, i64 120, !682, i64 128, !682, i64 136, !682, i64 144, !682, i64 152, !682, i64 160, !682, i64 168, !682, i64 176, !682, i64 184, !682, i64 192, !682, i64 200, !682, i64 208, !682, i64 216, !682, i64 224, !682, i64 232, !682, i64 240, !682, i64 248, !682, i64 256, !682, i64 264, !682, i64 272, !682, i64 280, !682, i64 288}
!1068 = !{!"vectorize", !682, i64 0, !682, i64 8, !682, i64 16, !682, i64 24, !682, i64 32, !682, i64 40, !682, i64 48, !682, i64 56, !682, i64 64, !682, i64 72}
!1069 = !{!"addr_space", !682, i64 0, !682, i64 8, !682, i64 16, !682, i64 24, !682, i64 32, !682, i64 40, !682, i64 48}
!1070 = !{!"calls", !682, i64 0, !682, i64 8, !682, i64 16, !682, i64 24, !682, i64 32, !682, i64 40, !682, i64 48, !682, i64 56, !682, i64 64, !682, i64 72, !682, i64 80, !682, i64 88, !682, i64 96, !682, i64 104, !682, i64 112, !682, i64 120, !682, i64 128, !682, i64 136, !682, i64 144, !682, i64 152, !682, i64 160, !682, i64 168, !682, i64 176, !682, i64 184}
!1071 = !{!"c", !682, i64 0}
!1072 = !{!"cxx", !682, i64 0, !682, i64 8, !682, i64 16, !682, i64 24, !682, i64 32, !682, i64 40, !682, i64 48, !682, i64 56, !682, i64 64, !682, i64 72, !682, i64 80, !682, i64 88, !682, i64 96}
!1073 = !{!"emutls", !682, i64 0, !682, i64 8, !682, i64 16, !682, i64 24, !682, i64 32, !682, i64 40, !682, i64 48, !682, i64 56, !678, i64 64, !678, i64 65}
!1074 = !{!"target_option_hooks", !682, i64 0, !682, i64 8, !682, i64 16, !682, i64 24, !682, i64 32, !682, i64 40}
!1075 = !{!"branch_weights", i32 577614, i32 1}
!1076 = !{!"branch_weights", i32 194, i32 381853}
!1077 = !{!1078, !682, i64 0}
!1078 = !{!"stmt_tree_s", !682, i64 0, !677, i64 8}
!1079 = !{!"branch_weights", i32 1, i32 194}
!1080 = !{!"branch_weights", i32 381853, i32 1}
!1081 = !{!"branch_weights", i32 2378, i32 379476}
!1082 = !{!"branch_weights", i32 1, i32 381853}
!1083 = !{!"branch_weights", i32 1, i32 1313, i32 1, i32 1, i32 52, i32 535, i32 1, i32 1, i32 1, i32 1, i32 1}
!1084 = !{!"branch_weights", i32 1, i32 52}
!1085 = !{!"branch_weights", i32 52, i32 1}
!1086 = !{!"branch_weights", i32 1, i32 535}
!1087 = !{!"branch_weights", i32 535, i32 1}
!1088 = distinct !{!1088, !696}
!1089 = !{!"function_entry_count", i64 46846}
!1090 = !{!"c-parser.c:c_parser_compound_statement_nostart"}
!1091 = !{!"branch_weights", i32 46725, i32 123}
!1092 = !{!"branch_weights", i32 46725, i32 1}
!1093 = distinct !{!1093, !696}
!1094 = !{!"branch_weights", i32 1, i32 46724}
!1095 = !{!"branch_weights", i32 209101, i32 24848}
!1096 = !{!"branch_weights", i32 207607, i32 1495}
!1097 = !{!"branch_weights", i32 114304, i32 93304}
!1098 = !{!"branch_weights", i32 8046, i32 85259}
!1099 = !{!"branch_weights", i32 9540, i32 24848}
!1100 = !{!"branch_weights", i32 179686, i32 19877}
!1101 = !{!"branch_weights", i32 153303, i32 26384}
!1102 = !{!"branch_weights", i32 26384, i32 1}
!1103 = !{!"branch_weights", i32 153164, i32 140}
!1104 = !{!"branch_weights", i32 7, i32 127}
!1105 = !{!"branch_weights", i32 1, i32 140}
!1106 = !{!"branch_weights", i32 0, i32 7}
!1107 = distinct !{!1107, !696}
!1108 = !{!"branch_weights", i32 134, i32 7}
!1109 = !{!"branch_weights", i32 7, i32 1}
!1110 = !{!"branch_weights", i32 173040, i32 1}
!1111 = distinct !{!1111, !696}
!1112 = !{!"branch_weights", i32 46724, i32 187224}
!1113 = !{!"branch_weights", i32 2147437688, i32 45960}
!1114 = !{!"c-parser.c:c_parser_objc_selector_arg"}
!1115 = !{!"c-parser.c:c_parser_objc_receiver"}
!1116 = !{!"function_entry_count", i64 34391}
!1117 = !{!"c-parser.c:c_parser_label"}
!1118 = !{!"branch_weights", i32 9545, i32 24848}
!1119 = !{!"branch_weights", i32 1, i32 24848}
!1120 = !{!"branch_weights", i32 8051, i32 1495}
!1121 = !{!"branch_weights", i32 1, i32 1495}
!1122 = !{!"branch_weights", i32 1, i32 8051}
!1123 = !{!"branch_weights", i32 34392, i32 1}
!1124 = !{!"function_entry_count", i64 258617}
!1125 = !{!"c-parser.c:c_parser_next_token_starts_declspecs"}
!1126 = !{!"function_entry_count", i64 258756}
!1127 = !{!"c-parser.c:c_token_starts_declspecs"}
!1128 = !{!"branch_weights", i32 9888, i32 112933, i32 135938, i32 1}
!1129 = !{!"branch_weights", i32 1, i32 76339, i32 1, i32 36595, i32 1}
!1130 = !{!"function_entry_count", i64 230154}
!1131 = !{!"c-parser.c:c_parser_statement_after_labels"}
!1132 = !{!"branch_weights", i32 99792, i32 13503, i32 115796, i32 1067, i32 1, i32 1, i32 1}
!1133 = !{!"branch_weights", i32 140, i32 54109, i32 1566, i32 1432, i32 3384, i32 5890, i32 15156, i32 1050, i32 7426, i32 25652, i32 1, i32 1, i32 1, i32 1}
!1134 = !{!"branch_weights", i32 1, i32 15156}
!1135 = !{!"branch_weights", i32 24206, i32 1447}
!1136 = !{!"branch_weights", i32 693864, i32 2146789784}
!1137 = !{!"branch_weights", i32 -1513841806, i32 37290}
!1138 = !{!"branch_weights", i32 1, i32 149161}
!1139 = !{!"function_entry_count", i64 46653}
!1140 = !{!"c-parser.c:c_parser_compound_statement"}
!1141 = !{!"branch_weights", i32 1, i32 46654}
!1142 = !{!"function_entry_count", i64 54108}
!1143 = !{!"c-parser.c:c_parser_if_statement"}
!1144 = !{!"branch_weights", i32 1, i32 54109}
!1145 = !{!"branch_weights", i32 39214, i32 14896}
!1146 = !{!"function_entry_count", i64 1565}
!1147 = !{!"c-parser.c:c_parser_switch_statement"}
!1148 = !{!"branch_weights", i32 1, i32 1566}
!1149 = !{!"branch_weights", i32 361, i32 1206}
!1150 = !{!"function_entry_count", i64 1431}
!1151 = !{!"c-parser.c:c_parser_while_statement"}
!1152 = !{!"branch_weights", i32 1, i32 1432}
!1153 = !{!"c-parser.c:c_parser_do_statement"}
!1154 = !{!"branch_weights", i32 3384, i32 1}
!1155 = !{!"function_entry_count", i64 5889}
!1156 = !{!"c-parser.c:c_parser_for_statement"}
!1157 = !{!"branch_weights", i32 1, i32 5890}
!1158 = !{!"branch_weights", i32 5231, i32 660}
!1159 = !{!"branch_weights", i32 5231, i32 1}
!1160 = distinct !{!1160, !696}
!1161 = !{!"branch_weights", i32 5779, i32 112}
!1162 = !{!"branch_weights", i32 5748, i32 143}
!1163 = !{!"c-parser.c:c_parser_asm_statement"}
!1164 = distinct !{!1164, !696}
!1165 = !{!"c-parser.c:c_parser_objc_try_catch_statement"}
!1166 = !{!"c-parser.c:c_parser_objc_synchronized_statement"}
!1167 = !{!"function_entry_count", i64 58922}
!1168 = !{!"c-parser.c:c_parser_paren_condition"}
!1169 = !{!"branch_weights", i32 1, i32 58923}
!1170 = !{!"c-parser.c:c_parser_if_body"}
!1171 = !{!"branch_weights", i32 54111, i32 1}
!1172 = !{!"branch_weights", i32 38324, i32 15788}
!1173 = !{!"branch_weights", i32 3, i32 54109}
!1174 = distinct !{!1174, !696}
!1175 = !{!"branch_weights", i32 53928, i32 182}
!1176 = !{!"branch_weights", i32 1, i32 182}
!1177 = !{!"branch_weights", i32 29820, i32 24109}
!1178 = !{!"function_entry_count", i64 14895}
!1179 = !{!"c-parser.c:c_parser_else_body"}
!1180 = !{!"branch_weights", i32 14899, i32 1}
!1181 = !{!"branch_weights", i32 12095, i32 2805}
!1182 = !{!"branch_weights", i32 4, i32 14896}
!1183 = distinct !{!1183, !696}
!1184 = !{!"branch_weights", i32 14896, i32 1}
!1185 = !{!"function_entry_count", i64 64700}
!1186 = !{!"c-parser.c:c_parser_condition"}
!1187 = !{!"branch_weights", i32 64701, i32 1}
!1188 = !{!"function_entry_count", i64 12268}
!1189 = !{!"c-parser.c:c_parser_c99_block_statement"}
!1190 = !{!"c-parser.c:c_parser_statement"}
!1191 = !{!"branch_weights", i32 12269, i32 1}
!1192 = !{!"branch_weights", i32 10982, i32 1288}
!1193 = !{!"branch_weights", i32 1, i32 12269}
!1194 = distinct !{!1194, !696}
!1195 = !{!"c-parser.c:c_parser_skip_to_end_of_block_or_statement"}
!1196 = !{!"c-parser.c:c_parser_asm_operands"}
!1197 = !{!"c-parser.c:c_parser_asm_clobbers"}
!1198 = !{!"c-parser.c:c_parser_asm_goto_operands"}
!1199 = !{!"function_entry_count", i64 4400}
!1200 = !{!"c-parser.c:c_parser_struct_declaration"}
!1201 = !{!"branch_weights", i32 4353, i32 49}
!1202 = !{!"branch_weights", i32 4338, i32 16}
!1203 = !{!"branch_weights", i32 1, i32 16}
!1204 = !{!"branch_weights", i32 4384, i32 15}
!1205 = !{!"branch_weights", i32 1, i32 4398}
!1206 = !{!"branch_weights", i32 4085, i32 314}
!1207 = !{!"branch_weights", i32 4025, i32 61}
!1208 = !{!"branch_weights", i32 3, i32 4023}
!1209 = !{!"branch_weights", i32 3, i32 1}
!1210 = !{!"branch_weights", i32 1, i32 3}
!1211 = !{!"branch_weights", i32 4396, i32 3}
!1212 = !{!"branch_weights", i32 4398, i32 1}
!1213 = !{!"branch_weights", i32 4338, i32 61}
!1214 = !{!"branch_weights", i32 1, i32 4338}
!1215 = !{!"function_entry_count", i64 157534}
!1216 = !{!"c-parser.c:c_parser_direct_declarator"}
!1217 = !{!"branch_weights", i32 59834, i32 97702}
!1218 = !{!"branch_weights", i32 19134, i32 78569}
!1219 = !{!"branch_weights", i32 1, i32 78569}
!1220 = !{!"branch_weights", i32 343, i32 78227}
!1221 = !{!"branch_weights", i32 78227, i32 1}
!1222 = !{!1223, !677, i64 16}
!1223 = !{!"c_declarator", !677, i64 0, !682, i64 8, !677, i64 16, !678, i64 24}
!1224 = !{!"branch_weights", i32 42871989, i32 2104611659}
!1225 = !{!"branch_weights", i32 78567, i32 20}
!1226 = !{!"branch_weights", i32 78436, i32 513}
!1227 = !{!"branch_weights", i32 382, i32 132}
!1228 = !{!"branch_weights", i32 132, i32 1}
!1229 = !{!"branch_weights", i32 513, i32 263683}
!1230 = !{!"branch_weights", i32 1, i32 513}
!1231 = !{!"function_entry_count", i64 99934}
!1232 = !{!"c-parser.c:c_parser_direct_declarator_inner"}
!1233 = !{!"branch_weights", i32 98339, i32 1597}
!1234 = !{!"branch_weights", i32 1597, i32 1}
!1235 = !{!"branch_weights", i32 1596, i32 2}
!1236 = !{!"branch_weights", i32 1064, i32 534}
!1237 = !{!"branch_weights", i32 1064, i32 1}
!1238 = !{!"branch_weights", i32 1, i32 1597}
!1239 = !{!"branch_weights", i32 79100, i32 19240}
!1240 = !{!"branch_weights", i32 1, i32 19240}
!1241 = !{!"function_entry_count", i64 19239}
!1242 = !{!"c-parser.c:c_parser_parms_declarator"}
!1243 = !{!"branch_weights", i32 1685639, i32 366875716}
!1244 = !{!"branch_weights", i32 7657, i32 11498}
!1245 = !{!"branch_weights", i32 311, i32 11188}
!1246 = !{!"branch_weights", i32 1, i32 739}
!1247 = !{!"branch_weights", i32 739, i32 1}
!1248 = !{!"branch_weights", i32 429, i32 311}
!1249 = !{!"branch_weights", i32 429, i32 1}
!1250 = distinct !{!1250, !696}
!1251 = !{!"branch_weights", i32 1, i32 311}
!1252 = !{!1253, !682, i64 16}
!1253 = !{!"c_arg_info", !682, i64 0, !682, i64 8, !682, i64 16, !682, i64 24, !682, i64 32, !677, i64 40}
!1254 = !{!"function_entry_count", i64 18929}
!1255 = !{!"c-parser.c:c_parser_parms_list_declarator"}
!1256 = !{!"branch_weights", i32 159, i32 1}
!1257 = !{!"branch_weights", i32 1, i32 20}
!1258 = !{!"branch_weights", i32 18911, i32 1}
!1259 = !{!"branch_weights", i32 151129, i32 159}
!1260 = !{!"branch_weights", i32 20402, i32 18780}
!1261 = !{!"branch_weights", i32 1, i32 18780}
!1262 = !{!"branch_weights", i32 1, i32 20402}
!1263 = !{!"branch_weights", i32 20271, i32 132}
!1264 = !{!"branch_weights", i32 1, i32 132}
!1265 = !{!"c-parser.c:c_parser_skip_to_end_of_parameter"}
!1266 = !{!"c-parser.c:c_parser_omp_barrier"}
!1267 = !{!"c-parser.c:c_parser_omp_flush"}
!1268 = !{!"c-parser.c:c_parser_omp_taskwait"}
!1269 = !{!"c-parser.c:c_parser_omp_threadprivate"}
!1270 = distinct !{!1270, !696}
!1271 = !{!"c-parser.c:c_parser_omp_construct"}
!1272 = !{!"c-parser.c:c_parser_omp_var_list_parens"}
!1273 = !{!"c-parser.c:c_parser_omp_variable_list"}
!1274 = !{!"c-parser.c:c_parser_omp_atomic"}
!1275 = !{!"c-parser.c:c_parser_omp_critical"}
!1276 = !{!"c-parser.c:c_parser_omp_for"}
!1277 = !{!"c-parser.c:c_parser_omp_master"}
!1278 = !{!"c-parser.c:c_parser_omp_ordered"}
!1279 = !{!"c-parser.c:c_parser_omp_parallel"}
!1280 = !{!"c-parser.c:c_parser_omp_sections"}
!1281 = !{!"c-parser.c:c_parser_omp_single"}
!1282 = !{!"c-parser.c:c_parser_omp_task"}
!1283 = !{!"c-parser.c:c_parser_omp_structured_block"}
!1284 = !{!"c-parser.c:c_parser_omp_all_clauses"}
!1285 = !{i32 0, i32 16}
!1286 = !{!"c-parser.c:c_parser_omp_for_loop"}
!1287 = distinct !{!1287, !696}
!1288 = distinct !{!1288, !696}
!1289 = distinct !{!1289, !696}
!1290 = distinct !{!1290, !696}
!1291 = distinct !{!1291, !696}
!1292 = distinct !{!1292, !696}
!1293 = distinct !{!1293, !696}
!1294 = !{!"c-parser.c:c_parser_omp_clause_name"}
!1295 = !{!"c-parser.c:c_parser_omp_clause_collapse"}
!1296 = !{!"c-parser.c:c_parser_omp_clause_copyin"}
!1297 = !{!"c-parser.c:c_parser_omp_clause_copyprivate"}
!1298 = !{!"c-parser.c:c_parser_omp_clause_default"}
!1299 = !{!"c-parser.c:c_parser_omp_clause_firstprivate"}
!1300 = !{!"c-parser.c:c_parser_omp_clause_if"}
!1301 = !{!"c-parser.c:c_parser_omp_clause_lastprivate"}
!1302 = !{!"c-parser.c:c_parser_omp_clause_nowait"}
!1303 = !{!"c-parser.c:c_parser_omp_clause_num_threads"}
!1304 = !{!"c-parser.c:c_parser_omp_clause_ordered"}
!1305 = !{!"c-parser.c:c_parser_omp_clause_private"}
!1306 = !{!"c-parser.c:c_parser_omp_clause_reduction"}
!1307 = distinct !{!1307, !696}
!1308 = !{!"c-parser.c:c_parser_omp_clause_schedule"}
!1309 = !{!"c-parser.c:c_parser_omp_clause_shared"}
!1310 = !{!"c-parser.c:c_parser_omp_clause_untied"}
!1311 = !{!"c-parser.c:check_no_duplicate_clause"}
!1312 = distinct !{!1312, !696}
!1313 = !{!"c-parser.c:c_parser_omp_sections_scope"}
!1314 = !{!"function_entry_count", i64 14002}
!1315 = !{!"c-parser.c:c_parser_initializer"}
!1316 = !{!"branch_weights", i32 13441, i32 563}
!1317 = !{!"branch_weights", i32 179452816, i32 616262, i32 13396}
!1318 = distinct !{!1318, !696}
!1319 = distinct !{!1319, !696}
!1320 = distinct !{!1320, !696}
