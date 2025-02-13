; ModuleID = 'c-typeck.c'
source_filename = "c-typeck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.c_expr = type { ptr, i32, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.sorted_fields_type = type { i32, [1 x ptr] }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.maybe_used_decl = type { ptr, i32, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_complex = type { %struct.tree_common, ptr, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.tree_constructor = type { %struct.tree_common, ptr }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.c_declspecs = type { ptr, ptr, ptr, ptr, i32, i32, i8, i32, i16, i8 }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.spelling = type { i32, %union.anon.0 }
%union.anon.0 = type { i64 }
%struct.initializer_stack = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.constructor_stack = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.c_expr, ptr, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.constructor_range_stack = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.init_node = type { ptr, ptr, ptr, i32, ptr, ptr, ptr }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.c_switch = type { ptr, ptr, ptr, ptr, ptr }
%struct.tree_stmt_iterator = type { ptr, ptr }
%struct.tree_statement_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_statement_list_node = type { ptr, ptr, ptr }
%struct.bitmap_head_def = type { ptr, ptr, i32, ptr }
%struct.tree_omp_clause = type { %struct.tree_common, i32, i32, %union.omp_clause_subcode, ptr, ptr, [1 x ptr] }
%union.omp_clause_subcode = type { i32 }
%struct.tagged_tu_seen_cache = type { ptr, ptr, ptr, i32 }

@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str = private unnamed_addr constant [27 x i8] c"%qD has an incomplete type\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"invalid use of void expression\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"invalid use of flexible array member\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"invalid use of array with unspecified bounds\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"c-typeck.c\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"invalid use of undefined type %<%s %E%>\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"invalid use of incomplete typedef %qD\00", align 1
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@c_override_global_bindings_to_false = external local_unnamed_addr global i8, align 1
@input_location = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [45 x i8] c"function types not truly compatible in ISO C\00", align 1
@tagged_tu_seen_base = internal unnamed_addr global ptr null, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@current_function_decl = external local_unnamed_addr global ptr, align 8
@flag_isoc99 = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [41 x i8] c"void value not ignored as it ought to be\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"%qT has no member named %qE\00", align 1
@.str.14 = private unnamed_addr constant [61 x i8] c"request for member %qE in something not a structure or union\00", align 1
@warn_strict_aliasing = external local_unnamed_addr global i32, align 4
@.str.15 = private unnamed_addr constant [41 x i8] c"dereferencing pointer to incomplete type\00", align 1
@c_inhibit_evaluation_warnings = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [33 x i8] c"dereferencing %<void *%> pointer\00", align 1
@.str.17 = private unnamed_addr constant [51 x i8] c"invalid type argument of array indexing (have %qT)\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"invalid type argument of unary %<*%> (have %qT)\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"invalid type argument of %<->%> (have %qT)\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c"subscripted value is neither array nor pointer\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"array subscript is not an integer\00", align 1
@.str.22 = private unnamed_addr constant [41 x i8] c"subscripted value is pointer to function\00", align 1
@pedantic = external local_unnamed_addr global i32, align 4
@.str.23 = private unnamed_addr constant [46 x i8] c"ISO C forbids subscripting %<register%> array\00", align 1
@.str.24 = private unnamed_addr constant [46 x i8] c"ISO C90 forbids subscripting non-lvalue array\00", align 1
@in_alignof = dso_local local_unnamed_addr global i32 0, align 4
@in_sizeof = dso_local local_unnamed_addr global i32 0, align 4
@in_typeof = dso_local local_unnamed_addr global i32 0, align 4
@warn_cxx_compat = external local_unnamed_addr global i32, align 4
@.str.25 = private unnamed_addr constant [63 x i8] c"enum constant defined in struct or union is not visible in C++\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"enum constant defined here\00", align 1
@maybe_used_decls = internal unnamed_addr global ptr null, align 8
@require_constant_value = internal unnamed_addr global i32 0, align 4
@.str.27 = private unnamed_addr constant [36 x i8] c"called object %qE is not a function\00", align 1
@current_function_returns_abnormally = external local_unnamed_addr global i32, align 4
@built_in_decls = external local_unnamed_addr global [721 x ptr], align 16
@.str.28 = private unnamed_addr constant [46 x i8] c"function called through a non-compatible type\00", align 1
@.str.29 = private unnamed_addr constant [48 x i8] c"if this code is reached, the program will abort\00", align 1
@.str.30 = private unnamed_addr constant [48 x i8] c"function with qualified void return type called\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"__builtin_\00", align 1
@warn_parentheses = external local_unnamed_addr global i32, align 4
@warn_logical_op = external local_unnamed_addr global i32, align 4
@.str.32 = private unnamed_addr constant [63 x i8] c"comparison with string literal results in unspecified behavior\00", align 1
@warn_enum_compare = external local_unnamed_addr global i32, align 4
@.str.33 = private unnamed_addr constant [31 x i8] c"comparison between %qT and %qT\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"wrong type argument to unary plus\00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"wrong type argument to unary minus\00", align 1
@.str.36 = private unnamed_addr constant [53 x i8] c"ISO C does not support %<~%> for complex conjugation\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"wrong type argument to bit-complement\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"wrong type argument to abs\00", align 1
@.str.39 = private unnamed_addr constant [35 x i8] c"wrong type argument to conjugation\00", align 1
@.str.40 = private unnamed_addr constant [46 x i8] c"wrong type argument to unary exclamation mark\00", align 1
@.str.41 = private unnamed_addr constant [49 x i8] c"increment of enumeration value is invalid in C++\00", align 1
@.str.42 = private unnamed_addr constant [49 x i8] c"decrement of enumeration value is invalid in C++\00", align 1
@.str.43 = private unnamed_addr constant [58 x i8] c"ISO C does not support %<++%> and %<--%> on complex types\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"wrong type argument to increment\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"wrong type argument to decrement\00", align 1
@.str.46 = private unnamed_addr constant [42 x i8] c"increment of pointer to unknown structure\00", align 1
@.str.47 = private unnamed_addr constant [42 x i8] c"decrement of pointer to unknown structure\00", align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@.str.48 = private unnamed_addr constant [46 x i8] c"taking address of expression of type %<void%>\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"cannot take address of bit-field %qD\00", align 1
@.str.50 = private unnamed_addr constant [53 x i8] c"global register variable %qD used in nested function\00", align 1
@.str.51 = private unnamed_addr constant [46 x i8] c"register variable %qD used in nested function\00", align 1
@.str.52 = private unnamed_addr constant [50 x i8] c"address of global register variable %qD requested\00", align 1
@.str.53 = private unnamed_addr constant [43 x i8] c"address of register variable %qD requested\00", align 1
@.str.54 = private unnamed_addr constant [43 x i8] c"non-lvalue array in conditional expression\00", align 1
@.str.55 = private unnamed_addr constant [66 x i8] c"different enum types in conditional is invalid in C++: %qT vs %qT\00", align 1
@c_global_trees = external local_unnamed_addr global [55 x ptr], align 16
@warn_sign_compare = external local_unnamed_addr global i32, align 4
@.str.56 = private unnamed_addr constant [51 x i8] c"signed and unsigned type in conditional expression\00", align 1
@.str.57 = private unnamed_addr constant [55 x i8] c"ISO C forbids conditional expr with only one void side\00", align 1
@.str.58 = private unnamed_addr constant [67 x i8] c"pointers to disjoint address spaces used in conditional expression\00", align 1
@.str.59 = private unnamed_addr constant [71 x i8] c"ISO C forbids conditional expr between %<void *%> and function pointer\00", align 1
@.str.60 = private unnamed_addr constant [48 x i8] c"pointer type mismatch in conditional expression\00", align 1
@.str.61 = private unnamed_addr constant [56 x i8] c"pointer/integer type mismatch in conditional expression\00", align 1
@flag_cond_mismatch = external local_unnamed_addr global i32, align 4
@.str.62 = private unnamed_addr constant [40 x i8] c"type mismatch in conditional expression\00", align 1
@warn_unused_value = external local_unnamed_addr global i32, align 4
@.str.63 = private unnamed_addr constant [52 x i8] c"left-hand operand of comma expression has no effect\00", align 1
@.str.64 = private unnamed_addr constant [26 x i8] c"cast specifies array type\00", align 1
@.str.65 = private unnamed_addr constant [29 x i8] c"cast specifies function type\00", align 1
@.str.66 = private unnamed_addr constant [49 x i8] c"ISO C forbids casting nonscalar to the same type\00", align 1
@.str.67 = private unnamed_addr constant [34 x i8] c"ISO C forbids casts to union type\00", align 1
@.str.68 = private unnamed_addr constant [50 x i8] c"cast to union type from type not present in union\00", align 1
@warn_cast_qual = external local_unnamed_addr global i32, align 4
@.str.69 = private unnamed_addr constant [77 x i8] c"cast to %s address space pointer from disjoint generic address space pointer\00", align 1
@.str.70 = private unnamed_addr constant [77 x i8] c"cast to generic address space pointer from disjoint %s address space pointer\00", align 1
@.str.71 = private unnamed_addr constant [72 x i8] c"cast to %s address space pointer from disjoint %s address space pointer\00", align 1
@.str.72 = private unnamed_addr constant [47 x i8] c"cast from pointer to integer of different size\00", align 1
@.str.73 = private unnamed_addr constant [61 x i8] c"cast from function call of type %qT to non-matching type %qT\00", align 1
@.str.74 = private unnamed_addr constant [47 x i8] c"cast to pointer from integer of different size\00", align 1
@.str.75 = private unnamed_addr constant [68 x i8] c"ISO C forbids conversion of function pointer to object pointer type\00", align 1
@.str.76 = private unnamed_addr constant [68 x i8] c"ISO C forbids conversion of object pointer to function pointer type\00", align 1
@warn_strict_prototypes = external local_unnamed_addr global i32, align 4
@.str.77 = private unnamed_addr constant [44 x i8] c"defining a type in a cast is invalid in C++\00", align 1
@.str.78 = private unnamed_addr constant [48 x i8] c"enum conversion in assignment is invalid in C++\00", align 1
@c_language = external local_unnamed_addr global i32, align 4
@flag_objc_gc = external local_unnamed_addr global i32, align 4
@.str.79 = private unnamed_addr constant [57 x i8] c"traditional C rejects automatic aggregate initialization\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.81 = private unnamed_addr constant [30 x i8] c"(near initialization for %qs)\00", align 1
@.str.82 = private unnamed_addr constant [53 x i8] c"array initialized from parenthesized string constant\00", align 1
@constructor_decl = internal unnamed_addr global ptr null, align 8
@require_constant_elements = internal unnamed_addr global i32 0, align 4
@constructor_stack = internal unnamed_addr global ptr null, align 8
@constructor_range_stack = internal unnamed_addr global ptr null, align 8
@constructor_elements = internal unnamed_addr global ptr null, align 8
@spelling = internal unnamed_addr global ptr null, align 8
@spelling_base = internal unnamed_addr global ptr null, align 8
@spelling_size = internal unnamed_addr global i32 0, align 4
@constructor_top_level = internal unnamed_addr global i32 0, align 4
@initializer_stack = internal unnamed_addr global ptr null, align 8
@constructor_designated = internal unnamed_addr global i32 0, align 4
@.str.83 = private unnamed_addr constant [12 x i8] c"(anonymous)\00", align 1
@missing_braces_mentioned = internal unnamed_addr global i1 false, align 4
@.str.84 = private unnamed_addr constant [42 x i8] c"opaque vector types cannot be initialized\00", align 1
@constructor_type = internal unnamed_addr global ptr null, align 8
@constructor_fields = internal unnamed_addr global ptr null, align 8
@constructor_index = internal unnamed_addr global ptr null, align 8
@constructor_max_index = internal unnamed_addr global ptr null, align 8
@constructor_unfilled_index = internal unnamed_addr global ptr null, align 8
@constructor_unfilled_fields = internal unnamed_addr global ptr null, align 8
@constructor_bit_index = internal unnamed_addr global ptr null, align 8
@constructor_constant = internal unnamed_addr global i32 0, align 4
@constructor_simple = internal unnamed_addr global i32 0, align 4
@constructor_nonconst = internal unnamed_addr global i32 0, align 4
@constructor_erroneous = internal unnamed_addr global i32 0, align 4
@constructor_pending_elts = internal unnamed_addr global ptr null, align 8
@constructor_depth = internal unnamed_addr global i32 0, align 4
@constructor_incremental = internal unnamed_addr global i32 0, align 4
@designator_depth = internal unnamed_addr global i32 0, align 4
@designator_erroneous = internal unnamed_addr global i1 false, align 4
@.str.85 = private unnamed_addr constant [40 x i8] c"extra brace group at end of initializer\00", align 1
@warn_missing_braces = external local_unnamed_addr global i32, align 4
@.str.86 = private unnamed_addr constant [34 x i8] c"missing braces around initializer\00", align 1
@.str.87 = private unnamed_addr constant [33 x i8] c"braces around scalar initializer\00", align 1
@.str.88 = private unnamed_addr constant [60 x i8] c"initialization of flexible array member in a nested context\00", align 1
@.str.89 = private unnamed_addr constant [42 x i8] c"initialization of a flexible array member\00", align 1
@warn_missing_field_initializers = external local_unnamed_addr global i32, align 4
@.str.90 = private unnamed_addr constant [20 x i8] c"missing initializer\00", align 1
@.str.91 = private unnamed_addr constant [25 x i8] c"empty scalar initializer\00", align 1
@.str.92 = private unnamed_addr constant [37 x i8] c"extra elements in scalar initializer\00", align 1
@.str.93 = private unnamed_addr constant [47 x i8] c"array index in initializer not of integer type\00", align 1
@.str.94 = private unnamed_addr constant [65 x i8] c"array index in initializer is not an integer constant expression\00", align 1
@.str.95 = private unnamed_addr constant [39 x i8] c"nonconstant array index in initializer\00", align 1
@.str.96 = private unnamed_addr constant [37 x i8] c"array index in non-array initializer\00", align 1
@.str.97 = private unnamed_addr constant [48 x i8] c"array index in initializer exceeds array bounds\00", align 1
@.str.98 = private unnamed_addr constant [33 x i8] c"empty index range in initializer\00", align 1
@.str.99 = private unnamed_addr constant [54 x i8] c"array index range in initializer exceeds array bounds\00", align 1
@.str.100 = private unnamed_addr constant [46 x i8] c"field name not in record or union initializer\00", align 1
@.str.101 = private unnamed_addr constant [43 x i8] c"unknown field %qE specified in initializer\00", align 1
@.str.102 = private unnamed_addr constant [42 x i8] c"excess elements in char array initializer\00", align 1
@.str.103 = private unnamed_addr constant [38 x i8] c"excess elements in struct initializer\00", align 1
@.str.104 = private unnamed_addr constant [53 x i8] c"non-static initialization of a flexible array member\00", align 1
@.str.105 = private unnamed_addr constant [37 x i8] c"excess elements in union initializer\00", align 1
@.str.106 = private unnamed_addr constant [47 x i8] c"traditional C rejects initialization of unions\00", align 1
@.str.107 = private unnamed_addr constant [37 x i8] c"excess elements in array initializer\00", align 1
@.str.108 = private unnamed_addr constant [38 x i8] c"excess elements in vector initializer\00", align 1
@.str.109 = private unnamed_addr constant [38 x i8] c"excess elements in scalar initializer\00", align 1
@.str.110 = private unnamed_addr constant [30 x i8] c"ISO C forbids %<goto *expr;%>\00", align 1
@.str.111 = private unnamed_addr constant [58 x i8] c"function declared %<noreturn%> has a %<return%> statement\00", align 1
@current_function_returns_null = external local_unnamed_addr global i32, align 4
@warn_return_type = external local_unnamed_addr global i32, align 4
@.str.112 = private unnamed_addr constant [57 x i8] c"%<return%> with no value, in function returning non-void\00", align 1
@.str.113 = private unnamed_addr constant [52 x i8] c"%<return%> with a value, in function returning void\00", align 1
@.str.114 = private unnamed_addr constant [69 x i8] c"ISO C forbids %<return%> with expression, in function returning void\00", align 1
@current_function_returns_value = external local_unnamed_addr global i32, align 4
@.str.115 = private unnamed_addr constant [43 x i8] c"function returns address of local variable\00", align 1
@warn_sequence_point = external local_unnamed_addr global i32, align 4
@.str.116 = private unnamed_addr constant [31 x i8] c"switch quantity not an integer\00", align 1
@.str.117 = private unnamed_addr constant [61 x i8] c"%<long%> switch expression not converted to %<int%> in ISO C\00", align 1
@c_switch_stack = dso_local local_unnamed_addr global ptr null, align 8
@.str.118 = private unnamed_addr constant [49 x i8] c"case label is not an integer constant expression\00", align 1
@.str.119 = private unnamed_addr constant [41 x i8] c"case label not within a switch statement\00", align 1
@.str.120 = private unnamed_addr constant [48 x i8] c"%<default%> label not within a switch statement\00", align 1
@.str.121 = private unnamed_addr constant [52 x i8] c"suggest explicit braces to avoid ambiguous %<else%>\00", align 1
@.str.122 = private unnamed_addr constant [42 x i8] c"break statement not within loop or switch\00", align 1
@.str.123 = private unnamed_addr constant [37 x i8] c"continue statement not within a loop\00", align 1
@.str.124 = private unnamed_addr constant [42 x i8] c"break statement used with OpenMP for loop\00", align 1
@.str.125 = private unnamed_addr constant [41 x i8] c"expression statement has incomplete type\00", align 1
@.str.126 = private unnamed_addr constant [30 x i8] c"right shift count is negative\00", align 1
@.str.127 = private unnamed_addr constant [35 x i8] c"right shift count >= width of type\00", align 1
@.str.128 = private unnamed_addr constant [29 x i8] c"left shift count is negative\00", align 1
@.str.129 = private unnamed_addr constant [34 x i8] c"left shift count >= width of type\00", align 1
@.str.130 = private unnamed_addr constant [49 x i8] c"comparing floating point with == or != is unsafe\00", align 1
@.str.131 = private unnamed_addr constant [50 x i8] c"comparison of pointers to disjoint address spaces\00", align 1
@.str.132 = private unnamed_addr constant [61 x i8] c"ISO C forbids comparison of %<void *%> with function pointer\00", align 1
@.str.133 = private unnamed_addr constant [50 x i8] c"comparison of distinct pointer types lacks a cast\00", align 1
@.str.134 = private unnamed_addr constant [38 x i8] c"the address of %qD will never be NULL\00", align 1
@.str.135 = private unnamed_addr constant [39 x i8] c"comparison between pointer and integer\00", align 1
@.str.136 = private unnamed_addr constant [47 x i8] c"comparison of complete and incomplete pointers\00", align 1
@.str.137 = private unnamed_addr constant [59 x i8] c"ISO C forbids ordered comparisons of pointers to functions\00", align 1
@.str.138 = private unnamed_addr constant [48 x i8] c"ordered comparison of pointer with integer zero\00", align 1
@extra_warnings = external local_unnamed_addr global i32, align 4
@flag_signed_zeros = external local_unnamed_addr global i32, align 4
@in_late_binary_op = dso_local local_unnamed_addr global i8 0, align 1
@.str.139 = private unnamed_addr constant [72 x i8] c"used array that cannot be converted to pointer where scalar is required\00", align 1
@.str.140 = private unnamed_addr constant [48 x i8] c"used struct type value where scalar is required\00", align 1
@.str.141 = private unnamed_addr constant [47 x i8] c"used union type value where scalar is required\00", align 1
@bitmap_default_obstack = external global %struct.bitmap_obstack, align 8
@.str.142 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str.143 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.144 = private unnamed_addr constant [10 x i8] c"reduction\00", align 1
@.str.145 = private unnamed_addr constant [39 x i8] c"%qE has invalid type for %<reduction%>\00", align 1
@.str.146 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.147 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.148 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.149 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.150 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.151 = private unnamed_addr constant [43 x i8] c"%qE has invalid type for %<reduction(%s)%>\00", align 1
@.str.152 = private unnamed_addr constant [12 x i8] c"copyprivate\00", align 1
@.str.153 = private unnamed_addr constant [7 x i8] c"copyin\00", align 1
@.str.154 = private unnamed_addr constant [45 x i8] c"%qE must be %<threadprivate%> for %<copyin%>\00", align 1
@.str.155 = private unnamed_addr constant [36 x i8] c"%qE is not a variable in clause %qs\00", align 1
@.str.156 = private unnamed_addr constant [43 x i8] c"%qE appears more than once in data clauses\00", align 1
@.str.157 = private unnamed_addr constant [13 x i8] c"firstprivate\00", align 1
@.str.158 = private unnamed_addr constant [49 x i8] c"%qE is not a variable in clause %<firstprivate%>\00", align 1
@.str.159 = private unnamed_addr constant [12 x i8] c"lastprivate\00", align 1
@.str.160 = private unnamed_addr constant [48 x i8] c"%qE is not a variable in clause %<lastprivate%>\00", align 1
@.str.161 = private unnamed_addr constant [14 x i8] c"threadprivate\00", align 1
@.str.162 = private unnamed_addr constant [33 x i8] c"%qE is predetermined %qs for %qs\00", align 1
@.str.163 = private unnamed_addr constant [28 x i8] c"invalid use of %<restrict%>\00", align 1
@.str.164 = private unnamed_addr constant [57 x i8] c"C++ requires promoted type, not enum type, in %<va_arg%>\00", align 1
@.str.165 = private unnamed_addr constant [49 x i8] c"%qT and %qT are in disjoint named address spaces\00", align 1
@.str.166 = private unnamed_addr constant [54 x i8] c"can%'t mix operands of decimal float and vector types\00", align 1
@.str.167 = private unnamed_addr constant [55 x i8] c"can%'t mix operands of decimal float and complex types\00", align 1
@.str.168 = private unnamed_addr constant [59 x i8] c"can%'t mix operands of decimal float and other float types\00", align 1
@mode_precision = external local_unnamed_addr constant [87 x i16], align 16
@mode_fbit = external local_unnamed_addr constant [87 x i8], align 16
@mode_ibit = external local_unnamed_addr constant [87 x i8], align 16
@.str.169 = private unnamed_addr constant [57 x i8] c"function return types not compatible due to %<volatile%>\00", align 1
@parser_obstack = external global %struct.obstack, align 8
@.str.170 = private unnamed_addr constant [13 x i8] c"type generic\00", align 1
@.str.171 = private unnamed_addr constant [35 x i8] c"too many arguments to function %qE\00", align 1
@.str.172 = private unnamed_addr constant [14 x i8] c"declared here\00", align 1
@.str.173 = private unnamed_addr constant [42 x i8] c"type of formal parameter %d is incomplete\00", align 1
@warn_traditional_conversion = external local_unnamed_addr global i32, align 4
@warn_traditional = external local_unnamed_addr global i32, align 4
@.str.174 = private unnamed_addr constant [76 x i8] c"passing argument %d of %qE as integer rather than floating due to prototype\00", align 1
@.str.175 = private unnamed_addr constant [75 x i8] c"passing argument %d of %qE as integer rather than complex due to prototype\00", align 1
@.str.176 = private unnamed_addr constant [76 x i8] c"passing argument %d of %qE as complex rather than floating due to prototype\00", align 1
@.str.177 = private unnamed_addr constant [76 x i8] c"passing argument %d of %qE as floating rather than integer due to prototype\00", align 1
@.str.178 = private unnamed_addr constant [75 x i8] c"passing argument %d of %qE as complex rather than integer due to prototype\00", align 1
@.str.179 = private unnamed_addr constant [76 x i8] c"passing argument %d of %qE as floating rather than complex due to prototype\00", align 1
@.str.180 = private unnamed_addr constant [80 x i8] c"passing argument %d of %qE as %<float%> rather than %<double%> due to prototype\00", align 1
@.str.181 = private unnamed_addr constant [67 x i8] c"passing argument %d of %qE as %qT rather than %qT due to prototype\00", align 1
@.str.182 = private unnamed_addr constant [65 x i8] c"passing argument %d of %qE with different width due to prototype\00", align 1
@.str.183 = private unnamed_addr constant [56 x i8] c"passing argument %d of %qE as unsigned due to prototype\00", align 1
@.str.184 = private unnamed_addr constant [54 x i8] c"passing argument %d of %qE as signed due to prototype\00", align 1
@.str.185 = private unnamed_addr constant [34 x i8] c"too few arguments to function %qE\00", align 1
@.str.186 = private unnamed_addr constant [44 x i8] c"arithmetic on pointer to an incomplete type\00", align 1
@.str.187 = private unnamed_addr constant [35 x i8] c"assignment of read-only member %qD\00", align 1
@.str.188 = private unnamed_addr constant [34 x i8] c"increment of read-only member %qD\00", align 1
@.str.189 = private unnamed_addr constant [34 x i8] c"decrement of read-only member %qD\00", align 1
@.str.190 = private unnamed_addr constant [44 x i8] c"read-only member %qD used as %<asm%> output\00", align 1
@.str.191 = private unnamed_addr constant [37 x i8] c"assignment of read-only variable %qD\00", align 1
@.str.192 = private unnamed_addr constant [36 x i8] c"increment of read-only variable %qD\00", align 1
@.str.193 = private unnamed_addr constant [36 x i8] c"decrement of read-only variable %qD\00", align 1
@.str.194 = private unnamed_addr constant [46 x i8] c"read-only variable %qD used as %<asm%> output\00", align 1
@.str.195 = private unnamed_addr constant [37 x i8] c"assignment of read-only location %qE\00", align 1
@.str.196 = private unnamed_addr constant [36 x i8] c"increment of read-only location %qE\00", align 1
@.str.197 = private unnamed_addr constant [36 x i8] c"decrement of read-only location %qE\00", align 1
@.str.198 = private unnamed_addr constant [46 x i8] c"read-only location %qE used as %<asm%> output\00", align 1
@.str.199 = private unnamed_addr constant [31 x i8] c"types are not quite compatible\00", align 1
@.str.200 = private unnamed_addr constant [41 x i8] c"pointer target types incompatible in C++\00", align 1
@.str.201 = private unnamed_addr constant [42 x i8] c"cast adds new qualifiers to function type\00", align 1
@.str.202 = private unnamed_addr constant [50 x i8] c"cast discards qualifiers from pointer target type\00", align 1
@.str.203 = private unnamed_addr constant [66 x i8] c"new qualifiers in middle of multi-level non-const cast are unsafe\00", align 1
@.str.204 = private unnamed_addr constant [66 x i8] c"enum conversion when passing argument %d of %qE is invalid in C++\00", align 1
@.str.205 = private unnamed_addr constant [41 x i8] c"expected %qT but argument is of type %qT\00", align 1
@.str.206 = private unnamed_addr constant [52 x i8] c"enum conversion in initialization is invalid in C++\00", align 1
@.str.207 = private unnamed_addr constant [44 x i8] c"enum conversion in return is invalid in C++\00", align 1
@.str.208 = private unnamed_addr constant [42 x i8] c"cannot pass rvalue to reference parameter\00", align 1
@.str.209 = private unnamed_addr constant [77 x i8] c"passing argument %d of %qE makes qualified function pointer from unqualified\00", align 1
@.str.210 = private unnamed_addr constant [61 x i8] c"assignment makes qualified function pointer from unqualified\00", align 1
@.str.211 = private unnamed_addr constant [65 x i8] c"initialization makes qualified function pointer from unqualified\00", align 1
@.str.212 = private unnamed_addr constant [57 x i8] c"return makes qualified function pointer from unqualified\00", align 1
@.str.213 = private unnamed_addr constant [72 x i8] c"passing argument %d of %qE discards qualifiers from pointer target type\00", align 1
@.str.214 = private unnamed_addr constant [56 x i8] c"assignment discards qualifiers from pointer target type\00", align 1
@.str.215 = private unnamed_addr constant [60 x i8] c"initialization discards qualifiers from pointer target type\00", align 1
@.str.216 = private unnamed_addr constant [52 x i8] c"return discards qualifiers from pointer target type\00", align 1
@.str.217 = private unnamed_addr constant [50 x i8] c"ISO C prohibits argument conversion to union type\00", align 1
@.str.218 = private unnamed_addr constant [69 x i8] c"request for implicit conversion from %qT to %qT not permitted in C++\00", align 1
@.str.219 = private unnamed_addr constant [70 x i8] c"passing argument %d of %qE from pointer to non-enclosed address space\00", align 1
@.str.220 = private unnamed_addr constant [54 x i8] c"assignment from pointer to non-enclosed address space\00", align 1
@.str.221 = private unnamed_addr constant [58 x i8] c"initialization from pointer to non-enclosed address space\00", align 1
@.str.222 = private unnamed_addr constant [50 x i8] c"return from pointer to non-enclosed address space\00", align 1
@warn_missing_format_attribute = external local_unnamed_addr global i32, align 4
@.str.223 = private unnamed_addr constant [63 x i8] c"argument %d of %qE might be a candidate for a format attribute\00", align 1
@.str.224 = private unnamed_addr constant [70 x i8] c"assignment left-hand side might be a candidate for a format attribute\00", align 1
@.str.225 = private unnamed_addr constant [74 x i8] c"initialization left-hand side might be a candidate for a format attribute\00", align 1
@.str.226 = private unnamed_addr constant [56 x i8] c"return type might be a candidate for a format attribute\00", align 1
@.str.227 = private unnamed_addr constant [81 x i8] c"ISO C forbids passing argument %d of %qE between function pointer and %<void *%>\00", align 1
@.str.228 = private unnamed_addr constant [65 x i8] c"ISO C forbids assignment between function pointer and %<void *%>\00", align 1
@.str.229 = private unnamed_addr constant [69 x i8] c"ISO C forbids initialization between function pointer and %<void *%>\00", align 1
@.str.230 = private unnamed_addr constant [61 x i8] c"ISO C forbids return between function pointer and %<void *%>\00", align 1
@warn_pointer_sign = external local_unnamed_addr global i32, align 4
@.str.231 = private unnamed_addr constant [67 x i8] c"pointer targets in passing argument %d of %qE differ in signedness\00", align 1
@.str.232 = private unnamed_addr constant [51 x i8] c"pointer targets in assignment differ in signedness\00", align 1
@.str.233 = private unnamed_addr constant [55 x i8] c"pointer targets in initialization differ in signedness\00", align 1
@.str.234 = private unnamed_addr constant [47 x i8] c"pointer targets in return differ in signedness\00", align 1
@.str.235 = private unnamed_addr constant [58 x i8] c"passing argument %d of %qE from incompatible pointer type\00", align 1
@.str.236 = private unnamed_addr constant [42 x i8] c"assignment from incompatible pointer type\00", align 1
@.str.237 = private unnamed_addr constant [46 x i8] c"initialization from incompatible pointer type\00", align 1
@.str.238 = private unnamed_addr constant [38 x i8] c"return from incompatible pointer type\00", align 1
@.str.239 = private unnamed_addr constant [32 x i8] c"invalid use of non-lvalue array\00", align 1
@.str.240 = private unnamed_addr constant [69 x i8] c"passing argument %d of %qE makes pointer from integer without a cast\00", align 1
@.str.241 = private unnamed_addr constant [53 x i8] c"assignment makes pointer from integer without a cast\00", align 1
@.str.242 = private unnamed_addr constant [57 x i8] c"initialization makes pointer from integer without a cast\00", align 1
@.str.243 = private unnamed_addr constant [49 x i8] c"return makes pointer from integer without a cast\00", align 1
@.str.244 = private unnamed_addr constant [69 x i8] c"passing argument %d of %qE makes integer from pointer without a cast\00", align 1
@.str.245 = private unnamed_addr constant [53 x i8] c"assignment makes integer from pointer without a cast\00", align 1
@.str.246 = private unnamed_addr constant [57 x i8] c"initialization makes integer from pointer without a cast\00", align 1
@.str.247 = private unnamed_addr constant [49 x i8] c"return makes integer from pointer without a cast\00", align 1
@.str.248 = private unnamed_addr constant [41 x i8] c"incompatible type for argument %d of %qE\00", align 1
@.str.249 = private unnamed_addr constant [60 x i8] c"incompatible types when assigning to type %qT from type %qT\00", align 1
@.str.250 = private unnamed_addr constant [61 x i8] c"incompatible types when initializing type %qT using type %qT\00", align 1
@.str.251 = private unnamed_addr constant [64 x i8] c"incompatible types when returning type %qT but %qT was expected\00", align 1
@.str.252 = private unnamed_addr constant [6 x i8] c"[%lu]\00", align 1
@.str.253 = private unnamed_addr constant [40 x i8] c"char-array initialized from wide string\00", align 1
@.str.254 = private unnamed_addr constant [54 x i8] c"wide character array initialized from non-wide string\00", align 1
@.str.255 = private unnamed_addr constant [63 x i8] c"wide character array initialized from incompatible wide string\00", align 1
@.str.256 = private unnamed_addr constant [50 x i8] c"initializer-string for array of chars is too long\00", align 1
@.str.257 = private unnamed_addr constant [55 x i8] c"initializer-string for array chars is too long for C++\00", align 1
@.str.258 = private unnamed_addr constant [61 x i8] c"array of inappropriate type initialized from string constant\00", align 1
@.str.259 = private unnamed_addr constant [53 x i8] c"array initialized from non-constant array expression\00", align 1
@.str.260 = private unnamed_addr constant [36 x i8] c"initializer element is not constant\00", align 1
@flag_pedantic_errors = external local_unnamed_addr global i32, align 4
@.str.261 = private unnamed_addr constant [49 x i8] c"initializer element is not a constant expression\00", align 1
@.str.262 = private unnamed_addr constant [51 x i8] c"initializer element is not computable at load time\00", align 1
@.str.263 = private unnamed_addr constant [45 x i8] c"variable-sized object may not be initialized\00", align 1
@.str.264 = private unnamed_addr constant [20 x i8] c"invalid initializer\00", align 1
@.str.265 = private unnamed_addr constant [12 x i8] c"<anonymous>\00", align 1
@.str.266 = private unnamed_addr constant [48 x i8] c"initialized field with side-effects overwritten\00", align 1
@warn_override_init = external local_unnamed_addr global i32, align 4
@.str.267 = private unnamed_addr constant [30 x i8] c"initialized field overwritten\00", align 1
@.str.268 = private unnamed_addr constant [25 x i8] c"statement with no effect\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.269 = private unnamed_addr constant [47 x i8] c"pointer of type %<void *%> used in subtraction\00", align 1
@.str.270 = private unnamed_addr constant [42 x i8] c"pointer to a function used in subtraction\00", align 1
@reltable.readonly_warning = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.195 to i64), i64 ptrtoint (ptr @reltable.readonly_warning to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.196 to i64), i64 ptrtoint (ptr @reltable.readonly_warning to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.197 to i64), i64 ptrtoint (ptr @reltable.readonly_warning to i64)) to i32)], align 4
@switch.table.convert_for_assignment = private unnamed_addr constant [3 x i32] [i32 -1, i32 -2, i32 0], align 4
@switch.table.output_pending_init_elements = private unnamed_addr constant [3 x ptr] [ptr @constructor_unfilled_index, ptr @constructor_unfilled_fields, ptr @constructor_unfilled_fields], align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @require_complete_type(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %5 = icmp eq ptr %4, %0
  %6 = icmp eq ptr %3, %4
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  tail call void @c_incomplete_type_error(ptr noundef nonnull %0, ptr noundef nonnull %3) #20
  %13 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %14

14:                                               ; preds = %1, %8, %12
  %15 = phi ptr [ %13, %12 ], [ %0, %8 ], [ %4, %1 ]
  ret ptr %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @c_incomplete_type_error(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %44, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %0, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %9, %6
  br label %13

9:                                                ; preds = %6
  %10 = load i64, ptr %0, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %8 [
    i16 32, label %12
    i16 34, label %12
  ]

12:                                               ; preds = %9, %9
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str, ptr noundef nonnull %0) #21
  br label %44

13:                                               ; preds = %8, %27
  %14 = phi i64 [ %30, %27 ], [ %3, %8 ]
  %15 = phi ptr [ %29, %27 ], [ %1, %8 ]
  %16 = trunc i64 %14 to i16
  switch i16 %16, label %32 [
    i16 16, label %33
    i16 17, label %34
    i16 6, label %35
    i16 19, label %17
    i16 15, label %18
  ]

17:                                               ; preds = %13
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.4) #21
  br label %44

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.tree_type, ptr %15, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = icmp eq ptr %20, null
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 14
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.5) #21
  br label %44

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  %30 = load i64, ptr %29, align 8
  br label %13

31:                                               ; preds = %18
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.6) #21
  br label %44

32:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 254, ptr noundef nonnull @.str.8) #21
  br label %35

33:                                               ; preds = %13
  br label %35

34:                                               ; preds = %13
  br label %35

35:                                               ; preds = %13, %34, %33, %32
  %36 = phi ptr [ undef, %32 ], [ @.str.1, %33 ], [ @.str.2, %34 ], [ @.str.3, %13 ]
  %37 = getelementptr inbounds %struct.tree_type, ptr %15, i64 0, i32 12
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.9, ptr noundef %36, ptr noundef nonnull %38) #21
  br label %44

43:                                               ; preds = %35
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.10, ptr noundef nonnull %38) #21
  br label %44

44:                                               ; preds = %12, %43, %42, %2, %31, %26, %17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @c_type_promotes_to(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !8
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16, !tbaa !8
  br label %26

8:                                                ; preds = %1
  %9 = tail call zeroext i8 @c_promoting_integer_type_p(ptr noundef nonnull %0) #21
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %8
  %12 = load i64, ptr %0, align 8
  %13 = and i64 %12, 2097152
  %14 = icmp eq i64 %13, 0
  %15 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !8
  br i1 %14, label %26, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.tree_type, ptr %15, i64 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = xor i32 %20, %18
  %22 = and i32 %21, 1023
  %23 = icmp eq i32 %22, 0
  %24 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16
  %25 = select i1 %23, ptr %24, ptr %15
  br label %26

26:                                               ; preds = %16, %11, %8, %6
  %27 = phi ptr [ %7, %6 ], [ %0, %8 ], [ %15, %11 ], [ %25, %16 ]
  ret ptr %27
}

; Function Attrs: optsize
declare zeroext i8 @c_promoting_integer_type_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @c_vla_type_p(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 15
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 67108864
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5, %1
  br label %11

11:                                               ; preds = %5, %10
  %12 = phi i8 [ 0, %10 ], [ 1, %5 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @composite_type(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %30, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %30, label %7

7:                                                ; preds = %4
  %8 = icmp eq ptr %5, %1
  br i1 %8, label %30, label %9

9:                                                ; preds = %7
  %10 = load i64, ptr %0, align 8
  %11 = trunc i64 %10 to i32
  %12 = and i32 %11, 65535
  %13 = load i64, ptr %1, align 8
  %14 = trunc i64 %13 to i32
  %15 = and i32 %14, 65535
  %16 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 12), align 8, !tbaa !10
  %17 = tail call ptr %16(ptr noundef nonnull %0, ptr noundef nonnull %1) #21
  %18 = icmp eq i32 %12, 6
  %19 = icmp eq i32 %15, 8
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %30, label %21

21:                                               ; preds = %9
  %22 = icmp eq i32 %15, 6
  %23 = icmp eq i32 %12, 8
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = icmp eq i32 %12, %15
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 388, ptr noundef nonnull @.str.8) #21
  br label %28

28:                                               ; preds = %25, %27
  %29 = trunc i64 %10 to i16
  switch i16 %29, label %442 [
    i16 10, label %32
    i16 15, label %41
    i16 6, label %236
    i16 16, label %236
    i16 17, label %236
    i16 20, label %250
  ]

30:                                               ; preds = %264, %271, %279, %274, %243, %238, %152, %165, %174, %183, %233, %21, %9, %7, %4, %2, %442, %248, %32
  %31 = phi ptr [ %40, %32 ], [ %444, %442 ], [ %249, %248 ], [ %0, %2 ], [ %1, %4 ], [ %0, %7 ], [ %0, %9 ], [ %1, %21 ], [ %235, %233 ], [ %184, %183 ], [ %175, %174 ], [ %166, %165 ], [ %153, %152 ], [ %0, %238 ], [ %1, %243 ], [ %265, %264 ], [ %272, %271 ], [ %282, %279 ], [ %277, %274 ]
  ret ptr %31

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !5
  %35 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !5
  %37 = tail call ptr @composite_type(ptr noundef %34, ptr noundef %36) #20
  %38 = tail call ptr @build_pointer_type(ptr noundef %37) #21
  %39 = tail call ptr @build_type_attribute_variant(ptr noundef %38, ptr noundef %17) #21
  %40 = tail call fastcc ptr @qualify_type(ptr noundef %39, ptr noundef nonnull %1) #20
  br label %30

41:                                               ; preds = %28
  %42 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !5
  %44 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !5
  %46 = tail call ptr @composite_type(ptr noundef %43, ptr noundef %45) #20
  %47 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !5
  %49 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !5
  %51 = load i64, ptr %0, align 8
  %52 = trunc i64 %51 to i32
  %53 = lshr i32 %52, 20
  %54 = and i32 %53, 1
  %55 = lshr i32 %52, 18
  %56 = and i32 %55, 2
  %57 = or disjoint i32 %54, %56
  %58 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %59 = load i32, ptr %58, align 4
  %60 = lshr i32 %59, 11
  %61 = and i32 %60, 4
  %62 = or disjoint i32 %57, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %41
  %65 = load i64, ptr %1, align 8
  %66 = trunc i64 %65 to i32
  %67 = lshr i32 %66, 20
  %68 = and i32 %67, 1
  %69 = lshr i32 %66, 18
  %70 = and i32 %69, 2
  %71 = or disjoint i32 %68, %70
  %72 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %73 = load i32, ptr %72, align 4
  %74 = lshr i32 %73, 11
  %75 = and i32 %74, 4
  %76 = or disjoint i32 %71, %75
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %64, %41
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 416, ptr noundef nonnull @.str.8) #21
  br label %79

79:                                               ; preds = %64, %78
  %80 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !5
  %82 = icmp ne ptr %81, null
  %83 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !5
  %85 = icmp ne ptr %84, null
  %86 = icmp eq ptr %48, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %79
  %88 = getelementptr inbounds %struct.tree_type, ptr %48, i64 0, i32 14
  %89 = load ptr, ptr %88, align 8, !tbaa !5
  %90 = icmp eq ptr %89, null
  br label %91

91:                                               ; preds = %87, %79
  %92 = phi i1 [ true, %79 ], [ %90, %87 ]
  %93 = icmp eq ptr %50, null
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 14
  %96 = load ptr, ptr %95, align 8, !tbaa !5
  %97 = icmp eq ptr %96, null
  br label %98

98:                                               ; preds = %94, %91
  %99 = phi i1 [ true, %91 ], [ %97, %94 ]
  br i1 %92, label %112, label %100

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.tree_type, ptr %48, i64 0, i32 13
  %102 = load ptr, ptr %101, align 8, !tbaa !5
  %103 = load i64, ptr %102, align 8
  %104 = and i64 %103, 65535
  %105 = icmp eq i64 %104, 23
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.tree_type, ptr %48, i64 0, i32 14
  %108 = load ptr, ptr %107, align 8, !tbaa !5
  %109 = load i64, ptr %108, align 8
  %110 = and i64 %109, 65535
  %111 = icmp ne i64 %110, 23
  br label %112

112:                                              ; preds = %100, %106, %98
  %113 = phi i1 [ false, %98 ], [ true, %100 ], [ %111, %106 ]
  br i1 %99, label %126, label %114

114:                                              ; preds = %112
  %115 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 13
  %116 = load ptr, ptr %115, align 8, !tbaa !5
  %117 = load i64, ptr %116, align 8
  %118 = and i64 %117, 65535
  %119 = icmp eq i64 %118, 23
  br i1 %119, label %120, label %126

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 14
  %122 = load ptr, ptr %121, align 8, !tbaa !5
  %123 = load i64, ptr %122, align 8
  %124 = and i64 %123, 65535
  %125 = icmp ne i64 %124, 23
  br label %126

126:                                              ; preds = %114, %120, %112
  %127 = phi i1 [ false, %112 ], [ true, %114 ], [ %125, %120 ]
  %128 = xor i1 %92, true
  %129 = select i1 %113, i1 true, i1 %128
  %130 = zext i1 %113 to i8
  br i1 %129, label %133, label %131

131:                                              ; preds = %126
  %132 = tail call zeroext i8 @c_vla_type_p(ptr noundef nonnull %0) #20, !range !24
  br label %133

133:                                              ; preds = %126, %131
  %134 = phi i8 [ %130, %126 ], [ %132, %131 ]
  %135 = xor i1 %99, true
  %136 = select i1 %127, i1 true, i1 %135
  %137 = zext i1 %127 to i8
  br i1 %136, label %140, label %138

138:                                              ; preds = %133
  %139 = tail call zeroext i8 @c_vla_type_p(ptr noundef nonnull %1) #20, !range !24
  br label %140

140:                                              ; preds = %133, %138
  %141 = phi i8 [ %137, %133 ], [ %139, %138 ]
  %142 = load ptr, ptr %42, align 8, !tbaa !5
  %143 = icmp eq ptr %46, %142
  br i1 %143, label %144, label %154

144:                                              ; preds = %140
  %145 = load ptr, ptr %47, align 8, !tbaa !5
  %146 = icmp eq ptr %145, null
  br i1 %146, label %154, label %147

147:                                              ; preds = %144
  %148 = icmp ne i8 %141, 0
  %149 = select i1 %148, i1 true, i1 %99
  %150 = icmp eq i8 %134, 0
  %151 = select i1 %149, i1 true, i1 %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %147
  %153 = tail call ptr @build_type_attribute_variant(ptr noundef nonnull %0, ptr noundef %17) #21
  br label %30

154:                                              ; preds = %147, %144, %140
  %155 = load ptr, ptr %44, align 8, !tbaa !5
  %156 = icmp eq ptr %46, %155
  br i1 %156, label %157, label %167

157:                                              ; preds = %154
  %158 = load ptr, ptr %49, align 8, !tbaa !5
  %159 = icmp eq ptr %158, null
  br i1 %159, label %167, label %160

160:                                              ; preds = %157
  %161 = icmp ne i8 %134, 0
  %162 = select i1 %161, i1 true, i1 %92
  %163 = icmp eq i8 %141, 0
  %164 = select i1 %162, i1 true, i1 %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = tail call ptr @build_type_attribute_variant(ptr noundef nonnull %1, ptr noundef %17) #21
  br label %30

167:                                              ; preds = %160, %157, %154
  br i1 %143, label %168, label %176

168:                                              ; preds = %167
  %169 = load ptr, ptr %49, align 8, !tbaa !5
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %176

171:                                              ; preds = %168
  %172 = load ptr, ptr %47, align 8, !tbaa !5
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = tail call ptr @build_type_attribute_variant(ptr noundef nonnull %0, ptr noundef %17) #21
  br label %30

176:                                              ; preds = %171, %168, %167
  br i1 %156, label %177, label %185

177:                                              ; preds = %176
  %178 = load ptr, ptr %49, align 8, !tbaa !5
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %185

180:                                              ; preds = %177
  %181 = load ptr, ptr %47, align 8, !tbaa !5
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %185

183:                                              ; preds = %180
  %184 = tail call ptr @build_type_attribute_variant(ptr noundef nonnull %1, ptr noundef %17) #21
  br label %30

185:                                              ; preds = %180, %177, %176
  %186 = tail call ptr @strip_array_types(ptr noundef %46) #21
  %187 = load i64, ptr %186, align 8
  %188 = trunc i64 %187 to i32
  %189 = lshr i32 %188, 20
  %190 = and i32 %189, 1
  %191 = tail call ptr @strip_array_types(ptr noundef %46) #21
  %192 = load i64, ptr %191, align 8
  %193 = trunc i64 %192 to i32
  %194 = lshr i32 %193, 18
  %195 = and i32 %194, 2
  %196 = or disjoint i32 %195, %190
  %197 = tail call ptr @strip_array_types(ptr noundef %46) #21
  %198 = getelementptr inbounds %struct.tree_type, ptr %197, i64 0, i32 6
  %199 = load i32, ptr %198, align 4
  %200 = lshr i32 %199, 11
  %201 = and i32 %200, 4
  %202 = or disjoint i32 %196, %201
  %203 = tail call ptr @strip_array_types(ptr noundef %46) #21
  %204 = load i64, ptr %203, align 8
  %205 = lshr i64 %204, 48
  %206 = trunc i64 %205 to i32
  %207 = and i32 %206, 65280
  %208 = or disjoint i32 %202, %207
  %209 = tail call ptr @c_build_qualified_type(ptr noundef %46, i32 noundef 0) #20
  %210 = load ptr, ptr %47, align 8, !tbaa !5
  %211 = icmp eq ptr %210, null
  br i1 %211, label %217, label %212

212:                                              ; preds = %185
  %213 = icmp ne i8 %141, 0
  %214 = select i1 %213, i1 true, i1 %99
  %215 = icmp eq i8 %134, 0
  %216 = select i1 %214, i1 true, i1 %215
  br i1 %216, label %219, label %217

217:                                              ; preds = %212, %185
  %218 = load ptr, ptr %49, align 8, !tbaa !5
  br label %219

219:                                              ; preds = %212, %217
  %220 = phi ptr [ %218, %217 ], [ %210, %212 ]
  %221 = tail call ptr @build_array_type(ptr noundef %209, ptr noundef %220) #21
  %222 = select i1 %92, i1 %99, i1 false
  %223 = select i1 %82, i1 true, i1 %85
  %224 = select i1 %222, i1 %223, i1 false
  br i1 %224, label %225, label %233

225:                                              ; preds = %219
  %226 = getelementptr inbounds %struct.tree_type, ptr %221, i64 0, i32 2
  %227 = load ptr, ptr %226, align 8, !tbaa !5
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %233

229:                                              ; preds = %225
  %230 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 19), align 8, !tbaa !8
  store ptr %230, ptr %226, align 8, !tbaa !5
  %231 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !8
  %232 = getelementptr inbounds %struct.tree_type, ptr %221, i64 0, i32 3
  store ptr %231, ptr %232, align 8, !tbaa !5
  br label %233

233:                                              ; preds = %229, %225, %219
  %234 = tail call ptr @c_build_qualified_type(ptr noundef %221, i32 noundef %208) #20
  %235 = tail call ptr @build_type_attribute_variant(ptr noundef %234, ptr noundef %17) #21
  br label %30

236:                                              ; preds = %28, %28, %28
  %237 = icmp eq ptr %17, null
  br i1 %237, label %248, label %238

238:                                              ; preds = %236
  %239 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 4
  %240 = load ptr, ptr %239, align 8, !tbaa !5
  %241 = tail call i32 @attribute_list_equal(ptr noundef %240, ptr noundef nonnull %17) #21
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %30

243:                                              ; preds = %238
  %244 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 4
  %245 = load ptr, ptr %244, align 8, !tbaa !5
  %246 = tail call i32 @attribute_list_equal(ptr noundef %245, ptr noundef nonnull %17) #21
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %30

248:                                              ; preds = %243, %236
  %249 = tail call ptr @build_type_attribute_variant(ptr noundef nonnull %0, ptr noundef %17) #21
  br label %30

250:                                              ; preds = %28
  %251 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %252 = load ptr, ptr %251, align 8, !tbaa !5
  %253 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %254 = load ptr, ptr %253, align 8, !tbaa !5
  %255 = tail call ptr @composite_type(ptr noundef %252, ptr noundef %254) #20
  %256 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %257 = load ptr, ptr %256, align 8, !tbaa !5
  %258 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !5
  %260 = load ptr, ptr %251, align 8, !tbaa !5
  %261 = icmp eq ptr %255, %260
  %262 = icmp eq ptr %259, null
  %263 = select i1 %261, i1 %262, i1 false
  br i1 %263, label %264, label %266

264:                                              ; preds = %250
  %265 = tail call ptr @build_type_attribute_variant(ptr noundef nonnull %0, ptr noundef %17) #21
  br label %30

266:                                              ; preds = %250
  %267 = load ptr, ptr %253, align 8, !tbaa !5
  %268 = icmp eq ptr %255, %267
  %269 = icmp eq ptr %257, null
  br i1 %268, label %270, label %273

270:                                              ; preds = %266
  br i1 %269, label %271, label %278

271:                                              ; preds = %270
  %272 = tail call ptr @build_type_attribute_variant(ptr noundef nonnull %1, ptr noundef %17) #21
  br label %30

273:                                              ; preds = %266
  br i1 %269, label %274, label %278

274:                                              ; preds = %273
  %275 = tail call ptr @build_function_type(ptr noundef %255, ptr noundef %259) #21
  %276 = tail call ptr @build_type_attribute_variant(ptr noundef %275, ptr noundef %17) #21
  %277 = tail call fastcc ptr @qualify_type(ptr noundef %276, ptr noundef nonnull %1) #20
  br label %30

278:                                              ; preds = %270, %273
  br i1 %262, label %279, label %283

279:                                              ; preds = %278
  %280 = tail call ptr @build_function_type(ptr noundef %255, ptr noundef nonnull %257) #21
  %281 = tail call ptr @build_type_attribute_variant(ptr noundef %280, ptr noundef %17) #21
  %282 = tail call fastcc ptr @qualify_type(ptr noundef %281, ptr noundef nonnull %1) #20
  br label %30

283:                                              ; preds = %278
  store i8 1, ptr @c_override_global_bindings_to_false, align 1, !tbaa !5
  %284 = tail call i32 @list_length(ptr noundef nonnull %257) #21
  %285 = icmp sgt i32 %284, 0
  br i1 %285, label %290, label %288

286:                                              ; preds = %290
  %287 = icmp eq ptr %257, null
  br i1 %287, label %438, label %288

288:                                              ; preds = %283, %286
  %289 = phi ptr [ %293, %286 ], [ null, %283 ]
  br label %296

290:                                              ; preds = %283, %290
  %291 = phi i32 [ %294, %290 ], [ 0, %283 ]
  %292 = phi ptr [ %293, %290 ], [ null, %283 ]
  %293 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef null, ptr noundef %292) #21
  %294 = add nuw nsw i32 %291, 1
  %295 = icmp eq i32 %294, %284
  br i1 %295, label %286, label %290, !llvm.loop !25

296:                                              ; preds = %288, %430
  %297 = phi ptr [ %436, %430 ], [ %289, %288 ]
  %298 = phi ptr [ %434, %430 ], [ %259, %288 ]
  %299 = phi ptr [ %432, %430 ], [ %257, %288 ]
  %300 = getelementptr inbounds %struct.tree_list, ptr %299, i64 0, i32 2
  %301 = load ptr, ptr %300, align 8, !tbaa !5
  %302 = icmp eq ptr %301, null
  %303 = getelementptr inbounds %struct.tree_list, ptr %298, i64 0, i32 2
  %304 = load ptr, ptr %303, align 8, !tbaa !5
  br i1 %302, label %305, label %307

305:                                              ; preds = %296
  %306 = getelementptr inbounds %struct.tree_list, ptr %297, i64 0, i32 2
  store ptr %304, ptr %306, align 8, !tbaa !5
  br label %430

307:                                              ; preds = %296
  %308 = icmp eq ptr %304, null
  br i1 %308, label %309, label %311

309:                                              ; preds = %307
  %310 = getelementptr inbounds %struct.tree_list, ptr %297, i64 0, i32 2
  store ptr %301, ptr %310, align 8, !tbaa !5
  br label %430

311:                                              ; preds = %307
  %312 = load i64, ptr %301, align 8
  %313 = and i64 %312, 65535
  %314 = icmp ne i64 %313, 17
  %315 = icmp eq ptr %301, %304
  %316 = or i1 %315, %314
  br i1 %316, label %366, label %317

317:                                              ; preds = %311
  %318 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %319 = icmp eq ptr %304, %318
  br i1 %319, label %327, label %320

320:                                              ; preds = %317
  %321 = load i64, ptr %304, align 8
  %322 = and i64 %321, 65535
  %323 = icmp eq i64 %322, 15
  br i1 %323, label %327, label %324

324:                                              ; preds = %320
  %325 = getelementptr inbounds %struct.tree_type, ptr %304, i64 0, i32 16
  %326 = load ptr, ptr %325, align 8, !tbaa !5
  br label %327

327:                                              ; preds = %324, %320, %317
  %328 = phi ptr [ %326, %324 ], [ %304, %320 ], [ %304, %317 ]
  %329 = getelementptr inbounds %struct.tree_type, ptr %301, i64 0, i32 1
  %330 = load ptr, ptr %329, align 8, !tbaa !5
  %331 = icmp eq ptr %330, null
  br i1 %331, label %366, label %332

332:                                              ; preds = %327, %351
  %333 = phi ptr [ %353, %351 ], [ %330, %327 ]
  %334 = getelementptr inbounds %struct.tree_common, ptr %333, i64 0, i32 2
  %335 = load ptr, ptr %334, align 8, !tbaa !5
  %336 = icmp eq ptr %335, null
  br i1 %336, label %347, label %337

337:                                              ; preds = %332
  %338 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %339 = icmp eq ptr %335, %338
  br i1 %339, label %347, label %340

340:                                              ; preds = %337
  %341 = load i64, ptr %335, align 8
  %342 = and i64 %341, 65535
  %343 = icmp eq i64 %342, 15
  br i1 %343, label %347, label %344

344:                                              ; preds = %340
  %345 = getelementptr inbounds %struct.tree_type, ptr %335, i64 0, i32 16
  %346 = load ptr, ptr %345, align 8, !tbaa !5
  br label %347

347:                                              ; preds = %344, %340, %337, %332
  %348 = phi ptr [ %346, %344 ], [ %335, %340 ], [ %335, %337 ], [ null, %332 ]
  %349 = tail call i32 @comptypes(ptr noundef %348, ptr noundef %328) #20
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %355

351:                                              ; preds = %347
  %352 = getelementptr inbounds %struct.tree_common, ptr %333, i64 0, i32 1
  %353 = load ptr, ptr %352, align 8, !tbaa !5
  %354 = icmp eq ptr %353, null
  br i1 %354, label %363, label %332, !llvm.loop !27

355:                                              ; preds = %347
  %356 = getelementptr inbounds %struct.tree_common, ptr %333, i64 0, i32 2
  %357 = load ptr, ptr %356, align 8, !tbaa !5
  %358 = load ptr, ptr %303, align 8, !tbaa !5
  %359 = tail call ptr @composite_type(ptr noundef %357, ptr noundef %358) #20
  %360 = getelementptr inbounds %struct.tree_list, ptr %297, i64 0, i32 2
  store ptr %359, ptr %360, align 8, !tbaa !5
  %361 = load i32, ptr @input_location, align 4, !tbaa !28
  %362 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %361, i32 noundef 834, ptr noundef nonnull @.str.11) #21
  br label %430

363:                                              ; preds = %351
  %364 = load ptr, ptr %303, align 8, !tbaa !5
  %365 = load ptr, ptr %300, align 8, !tbaa !5
  br label %366

366:                                              ; preds = %363, %327, %311
  %367 = phi ptr [ %365, %363 ], [ %301, %327 ], [ %301, %311 ]
  %368 = phi ptr [ %364, %363 ], [ %304, %327 ], [ %304, %311 ]
  %369 = load i64, ptr %368, align 8
  %370 = and i64 %369, 65535
  %371 = icmp eq i64 %370, 17
  br i1 %371, label %372, label %425

372:                                              ; preds = %366
  %373 = icmp eq ptr %368, %367
  br i1 %373, label %425, label %374

374:                                              ; preds = %372
  %375 = icmp eq ptr %367, null
  br i1 %375, label %386, label %376

376:                                              ; preds = %374
  %377 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %378 = icmp eq ptr %367, %377
  br i1 %378, label %386, label %379

379:                                              ; preds = %376
  %380 = load i64, ptr %367, align 8
  %381 = and i64 %380, 65535
  %382 = icmp eq i64 %381, 15
  br i1 %382, label %386, label %383

383:                                              ; preds = %379
  %384 = getelementptr inbounds %struct.tree_type, ptr %367, i64 0, i32 16
  %385 = load ptr, ptr %384, align 8, !tbaa !5
  br label %386

386:                                              ; preds = %383, %379, %376, %374
  %387 = phi ptr [ %385, %383 ], [ %367, %379 ], [ %367, %376 ], [ null, %374 ]
  %388 = getelementptr inbounds %struct.tree_type, ptr %368, i64 0, i32 1
  %389 = load ptr, ptr %388, align 8, !tbaa !5
  %390 = icmp eq ptr %389, null
  br i1 %390, label %425, label %391

391:                                              ; preds = %386, %410
  %392 = phi ptr [ %412, %410 ], [ %389, %386 ]
  %393 = getelementptr inbounds %struct.tree_common, ptr %392, i64 0, i32 2
  %394 = load ptr, ptr %393, align 8, !tbaa !5
  %395 = icmp eq ptr %394, null
  br i1 %395, label %406, label %396

396:                                              ; preds = %391
  %397 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %398 = icmp eq ptr %394, %397
  br i1 %398, label %406, label %399

399:                                              ; preds = %396
  %400 = load i64, ptr %394, align 8
  %401 = and i64 %400, 65535
  %402 = icmp eq i64 %401, 15
  br i1 %402, label %406, label %403

403:                                              ; preds = %399
  %404 = getelementptr inbounds %struct.tree_type, ptr %394, i64 0, i32 16
  %405 = load ptr, ptr %404, align 8, !tbaa !5
  br label %406

406:                                              ; preds = %403, %399, %396, %391
  %407 = phi ptr [ %405, %403 ], [ %394, %399 ], [ %394, %396 ], [ null, %391 ]
  %408 = tail call i32 @comptypes(ptr noundef %407, ptr noundef %387) #20
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %410, label %414

410:                                              ; preds = %406
  %411 = getelementptr inbounds %struct.tree_common, ptr %392, i64 0, i32 1
  %412 = load ptr, ptr %411, align 8, !tbaa !5
  %413 = icmp eq ptr %412, null
  br i1 %413, label %422, label %391, !llvm.loop !29

414:                                              ; preds = %406
  %415 = getelementptr inbounds %struct.tree_common, ptr %392, i64 0, i32 2
  %416 = load ptr, ptr %415, align 8, !tbaa !5
  %417 = load ptr, ptr %300, align 8, !tbaa !5
  %418 = tail call ptr @composite_type(ptr noundef %416, ptr noundef %417) #20
  %419 = getelementptr inbounds %struct.tree_list, ptr %297, i64 0, i32 2
  store ptr %418, ptr %419, align 8, !tbaa !5
  %420 = load i32, ptr @input_location, align 4, !tbaa !28
  %421 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %420, i32 noundef 834, ptr noundef nonnull @.str.11) #21
  br label %430

422:                                              ; preds = %410
  %423 = load ptr, ptr %300, align 8, !tbaa !5
  %424 = load ptr, ptr %303, align 8, !tbaa !5
  br label %425

425:                                              ; preds = %422, %386, %372, %366
  %426 = phi ptr [ %424, %422 ], [ %368, %386 ], [ %367, %372 ], [ %368, %366 ]
  %427 = phi ptr [ %423, %422 ], [ %367, %386 ], [ %367, %372 ], [ %367, %366 ]
  %428 = tail call ptr @composite_type(ptr noundef %427, ptr noundef %426) #20
  %429 = getelementptr inbounds %struct.tree_list, ptr %297, i64 0, i32 2
  store ptr %428, ptr %429, align 8, !tbaa !5
  br label %430

430:                                              ; preds = %414, %355, %305, %309, %425
  %431 = getelementptr inbounds %struct.tree_common, ptr %299, i64 0, i32 1
  %432 = load ptr, ptr %431, align 8, !tbaa !5
  %433 = getelementptr inbounds %struct.tree_common, ptr %298, i64 0, i32 1
  %434 = load ptr, ptr %433, align 8, !tbaa !5
  %435 = getelementptr inbounds %struct.tree_common, ptr %297, i64 0, i32 1
  %436 = load ptr, ptr %435, align 8, !tbaa !5
  %437 = icmp eq ptr %432, null
  br i1 %437, label %438, label %296, !llvm.loop !30

438:                                              ; preds = %430, %286
  %439 = phi ptr [ %293, %286 ], [ %289, %430 ]
  store i8 0, ptr @c_override_global_bindings_to_false, align 1, !tbaa !5
  %440 = tail call ptr @build_function_type(ptr noundef %255, ptr noundef %439) #21
  %441 = tail call fastcc ptr @qualify_type(ptr noundef %440, ptr noundef nonnull %1) #20
  br label %442

442:                                              ; preds = %438, %28
  %443 = phi ptr [ %0, %28 ], [ %441, %438 ]
  %444 = tail call ptr @build_type_attribute_variant(ptr noundef %443, ptr noundef %17) #21
  br label %30
}

; Function Attrs: optsize
declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_type_attribute_variant(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @qualify_type(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = load i64, ptr %0, align 8
  %5 = lshr i64 %4, 56
  %6 = trunc i64 %5 to i8
  %7 = load i64, ptr %1, align 8
  %8 = lshr i64 %7, 56
  %9 = trunc i64 %8 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #22
  %10 = call fastcc zeroext i8 @addr_space_superset(i8 noundef zeroext %6, i8 noundef zeroext %9, ptr noundef nonnull %3) #20, !range !24
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i8, ptr %3, align 1, !tbaa !5
  br label %15

14:                                               ; preds = %2
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.165, ptr noundef nonnull %0, ptr noundef nonnull %1) #21
  br label %15

15:                                               ; preds = %12, %14
  %16 = phi i8 [ %13, %12 ], [ %6, %14 ]
  %17 = load i64, ptr %0, align 8
  %18 = trunc i64 %17 to i32
  %19 = lshr i32 %18, 20
  %20 = and i32 %19, 1
  %21 = lshr i32 %18, 18
  %22 = and i32 %21, 2
  %23 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = lshr i32 %24, 11
  %26 = and i32 %25, 4
  %27 = load i64, ptr %1, align 8
  %28 = trunc i64 %27 to i32
  %29 = lshr i32 %28, 20
  %30 = and i32 %29, 1
  %31 = lshr i32 %28, 18
  %32 = and i32 %31, 2
  %33 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = lshr i32 %34, 11
  %36 = and i32 %35, 4
  %37 = or disjoint i32 %20, %22
  %38 = or disjoint i32 %37, %26
  %39 = or i32 %38, %32
  %40 = or i32 %39, %30
  %41 = or i32 %40, %36
  %42 = zext i8 %16 to i32
  %43 = shl nuw nsw i32 %42, 8
  %44 = or disjoint i32 %41, %43
  %45 = tail call ptr @c_build_qualified_type(ptr noundef nonnull %0, i32 noundef %44) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #22
  ret ptr %45
}

; Function Attrs: optsize
declare ptr @strip_array_types(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @c_build_qualified_type(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %88, label %5

5:                                                ; preds = %2
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 15
  br i1 %8, label %9, label %97

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = tail call ptr @c_build_qualified_type(ptr noundef %11, i32 noundef %1) #20
  %13 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %66, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 12
  %18 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 18
  %19 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 4
  br label %20

20:                                               ; preds = %16, %62
  %21 = phi ptr [ %14, %16 ], [ %64, %62 ]
  %22 = tail call ptr @strip_array_types(ptr noundef nonnull %21) #21
  %23 = load i64, ptr %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = lshr i32 %24, 20
  %26 = and i32 %25, 1
  %27 = tail call ptr @strip_array_types(ptr noundef nonnull %21) #21
  %28 = load i64, ptr %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = lshr i32 %29, 18
  %31 = and i32 %30, 2
  %32 = or disjoint i32 %31, %26
  %33 = tail call ptr @strip_array_types(ptr noundef nonnull %21) #21
  %34 = getelementptr inbounds %struct.tree_type, ptr %33, i64 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = lshr i32 %35, 11
  %37 = and i32 %36, 4
  %38 = or disjoint i32 %32, %37
  %39 = tail call ptr @strip_array_types(ptr noundef nonnull %21) #21
  %40 = load i64, ptr %39, align 8
  %41 = lshr i64 %40, 48
  %42 = trunc i64 %41 to i32
  %43 = and i32 %42, 65280
  %44 = or disjoint i32 %38, %43
  %45 = icmp eq i32 %44, %1
  br i1 %45, label %46, label %62

46:                                               ; preds = %20
  %47 = getelementptr inbounds %struct.tree_type, ptr %21, i64 0, i32 12
  %48 = load ptr, ptr %47, align 8, !tbaa !5
  %49 = load ptr, ptr %17, align 8, !tbaa !5
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.tree_type, ptr %21, i64 0, i32 18
  %53 = load ptr, ptr %52, align 8, !tbaa !5
  %54 = load ptr, ptr %18, align 8, !tbaa !5
  %55 = icmp eq ptr %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.tree_type, ptr %21, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !5
  %59 = load ptr, ptr %19, align 8, !tbaa !5
  %60 = tail call i32 @attribute_list_equal(ptr noundef %58, ptr noundef %59) #21
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %88

62:                                               ; preds = %20, %46, %51, %56
  %63 = getelementptr inbounds %struct.tree_type, ptr %21, i64 0, i32 15
  %64 = load ptr, ptr %63, align 8, !tbaa !5
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %20, !llvm.loop !31

66:                                               ; preds = %62, %9
  %67 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !5
  %69 = tail call ptr @build_variant_type_copy(ptr noundef nonnull %0) #21
  %70 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 2
  store ptr %12, ptr %70, align 8, !tbaa !5
  %71 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 19
  %72 = load ptr, ptr %71, align 8, !tbaa !5
  %73 = icmp eq ptr %72, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %66
  %75 = icmp eq ptr %68, null
  br i1 %75, label %82, label %76

76:                                               ; preds = %74
  %77 = getelementptr inbounds %struct.tree_type, ptr %68, i64 0, i32 19
  %78 = load ptr, ptr %77, align 8, !tbaa !5
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %76, %66
  %81 = getelementptr inbounds %struct.tree_type, ptr %69, i64 0, i32 19
  store ptr null, ptr %81, align 8, !tbaa !5
  br label %88

82:                                               ; preds = %74
  %83 = icmp eq ptr %72, %12
  br i1 %83, label %95, label %90

84:                                               ; preds = %76
  %85 = icmp eq ptr %72, %12
  %86 = icmp eq ptr %78, %68
  %87 = select i1 %85, i1 %86, i1 false
  br i1 %87, label %95, label %90

88:                                               ; preds = %95, %80, %2, %110, %56, %90
  %89 = phi ptr [ %69, %90 ], [ %112, %110 ], [ %0, %2 ], [ %69, %95 ], [ %69, %80 ], [ %21, %56 ]
  ret ptr %89

90:                                               ; preds = %84, %82
  %91 = phi ptr [ null, %82 ], [ %78, %84 ]
  %92 = tail call ptr @build_array_type(ptr noundef nonnull %72, ptr noundef %91) #21
  %93 = tail call ptr @c_build_qualified_type(ptr noundef %92, i32 noundef %1) #20
  %94 = getelementptr inbounds %struct.tree_type, ptr %69, i64 0, i32 19
  store ptr %93, ptr %94, align 8, !tbaa !5
  br label %88

95:                                               ; preds = %84, %82
  %96 = getelementptr inbounds %struct.tree_type, ptr %69, i64 0, i32 19
  store ptr %69, ptr %96, align 8, !tbaa !5
  br label %88

97:                                               ; preds = %5
  %98 = and i32 %1, 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %110, label %100

100:                                              ; preds = %97
  %101 = trunc i64 %6 to i16
  switch i16 %101, label %108 [
    i16 10, label %102
    i16 12, label %102
  ]

102:                                              ; preds = %100, %100
  %103 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !5
  %105 = load i64, ptr %104, align 8
  %106 = and i64 %105, 65535
  %107 = icmp eq i64 %106, 20
  br i1 %107, label %108, label %110

108:                                              ; preds = %100, %102
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.163) #21
  %109 = and i32 %1, -5
  br label %110

110:                                              ; preds = %108, %102, %97
  %111 = phi i32 [ %109, %108 ], [ %1, %102 ], [ %1, %97 ]
  %112 = tail call ptr @build_qualified_type(ptr noundef nonnull %0, i32 noundef %111) #21
  br label %88
}

; Function Attrs: optsize
declare ptr @build_array_type(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @attribute_list_equal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_function_type(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @list_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @comptypes(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @tagged_tu_seen_base, align 8, !tbaa !8
  %4 = tail call fastcc i32 @comptypes_internal(ptr noundef %0, ptr noundef %1, ptr noundef null) #20
  tail call fastcc void @free_all_tagged_tu_seen_up_to(ptr noundef %3) #20
  ret i32 %4
}

; Function Attrs: optsize
declare zeroext i8 @pedwarn(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @common_type(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 6
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1023
  %10 = tail call ptr @c_common_type_for_size(i32 noundef %9, i32 noundef 1) #21
  br label %11

11:                                               ; preds = %6, %2
  %12 = phi ptr [ %10, %6 ], [ %0, %2 ]
  %13 = load i64, ptr %1, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 6
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 1023
  %20 = tail call ptr @c_common_type_for_size(i32 noundef %19, i32 noundef 1) #21
  br label %21

21:                                               ; preds = %16, %11
  %22 = phi ptr [ %20, %16 ], [ %1, %11 ]
  %23 = load i64, ptr %12, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 7
  %26 = load i64, ptr %22, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 7
  br i1 %25, label %29, label %32

29:                                               ; preds = %21
  %30 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8
  %31 = select i1 %28, ptr %30, ptr %22
  br label %35

32:                                               ; preds = %21
  br i1 %28, label %35, label %33

33:                                               ; preds = %32
  %34 = tail call fastcc ptr @c_common_type(ptr noundef nonnull %12, ptr noundef nonnull %22) #20
  br label %35

35:                                               ; preds = %29, %32, %33
  %36 = phi ptr [ %34, %33 ], [ %12, %32 ], [ %31, %29 ]
  ret ptr %36
}

; Function Attrs: optsize
declare ptr @c_common_type_for_size(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_common_type(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %4 = icmp eq ptr %3, %0
  br i1 %4, label %411, label %5

5:                                                ; preds = %2
  %6 = icmp eq ptr %3, %1
  br i1 %6, label %411, label %7

7:                                                ; preds = %5
  %8 = load i64, ptr %0, align 8
  %9 = trunc i64 %8 to i32
  %10 = lshr i32 %9, 20
  %11 = and i32 %10, 1
  %12 = lshr i32 %9, 18
  %13 = and i32 %12, 2
  %14 = or disjoint i32 %11, %13
  %15 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = lshr i32 %16, 11
  %18 = and i32 %17, 4
  %19 = or disjoint i32 %14, %18
  %20 = lshr i64 %8, 48
  %21 = trunc i64 %20 to i32
  %22 = and i32 %21, 65280
  %23 = or disjoint i32 %19, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %7
  %26 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  br label %28

28:                                               ; preds = %25, %7
  %29 = phi ptr [ %27, %25 ], [ %0, %7 ]
  %30 = load i64, ptr %1, align 8
  %31 = trunc i64 %30 to i32
  %32 = lshr i32 %31, 20
  %33 = and i32 %32, 1
  %34 = lshr i32 %31, 18
  %35 = and i32 %34, 2
  %36 = or disjoint i32 %33, %35
  %37 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = lshr i32 %38, 11
  %40 = and i32 %39, 4
  %41 = or disjoint i32 %36, %40
  %42 = lshr i64 %30, 48
  %43 = trunc i64 %42 to i32
  %44 = and i32 %43, 65280
  %45 = or disjoint i32 %41, %44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %28
  %48 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 16
  %49 = load ptr, ptr %48, align 8, !tbaa !5
  br label %50

50:                                               ; preds = %47, %28
  %51 = phi ptr [ %49, %47 ], [ %1, %28 ]
  %52 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !5
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = tail call ptr @build_type_attribute_variant(ptr noundef nonnull %29, ptr noundef null) #21
  br label %57

57:                                               ; preds = %55, %50
  %58 = phi ptr [ %56, %55 ], [ %29, %50 ]
  %59 = getelementptr inbounds %struct.tree_type, ptr %51, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !5
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %57
  %63 = tail call ptr @build_type_attribute_variant(ptr noundef nonnull %51, ptr noundef null) #21
  br label %64

64:                                               ; preds = %62, %57
  %65 = phi ptr [ %63, %62 ], [ %51, %57 ]
  %66 = icmp eq ptr %58, %65
  br i1 %66, label %411, label %67

67:                                               ; preds = %64
  %68 = load i64, ptr %58, align 8
  %69 = freeze i64 %68
  %70 = trunc i64 %69 to i32
  %71 = and i32 %70, 65535
  %72 = load i64, ptr %65, align 8
  %73 = freeze i64 %72
  %74 = trunc i64 %73 to i32
  %75 = and i32 %74, 65535
  %76 = icmp eq i32 %71, 14
  %77 = icmp eq i32 %71, 13
  %78 = icmp eq i32 %71, 11
  %79 = icmp eq i32 %71, 9
  %80 = and i32 %70, 65534
  %81 = icmp eq i32 %80, 8
  br i1 %81, label %85, label %82

82:                                               ; preds = %67
  %83 = trunc i64 %69 to i16
  switch i16 %83, label %84 [
    i16 14, label %85
    i16 13, label %85
    i16 11, label %85
  ]

84:                                               ; preds = %82
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 726, ptr noundef nonnull @.str.8) #21
  br label %85

85:                                               ; preds = %82, %82, %82, %67, %84
  %86 = icmp eq i32 %75, 14
  %87 = icmp eq i32 %75, 13
  %88 = icmp eq i32 %75, 11
  %89 = icmp eq i32 %75, 9
  %90 = and i32 %74, 65534
  %91 = icmp eq i32 %90, 8
  br i1 %91, label %95, label %92

92:                                               ; preds = %85
  %93 = trunc i64 %73 to i16
  switch i16 %93, label %94 [
    i16 14, label %95
    i16 13, label %95
    i16 11, label %95
  ]

94:                                               ; preds = %92
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 729, ptr noundef nonnull @.str.8) #21
  br label %95

95:                                               ; preds = %92, %92, %92, %85, %94
  %96 = load i64, ptr %58, align 8
  %97 = and i64 %96, 65535
  %98 = icmp eq i64 %97, 9
  br i1 %98, label %99, label %108

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.tree_type, ptr %58, i64 0, i32 6
  %101 = load i32, ptr %100, align 4
  %102 = lshr i32 %101, 16
  %103 = and i32 %102, 255
  %104 = zext nneg i32 %103 to i64
  %105 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !5
  %107 = icmp eq i8 %106, 9
  br i1 %107, label %128, label %108

108:                                              ; preds = %99, %95
  %109 = load i64, ptr %65, align 8
  %110 = and i64 %109, 65535
  %111 = icmp eq i64 %110, 9
  br i1 %111, label %112, label %158

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.tree_type, ptr %65, i64 0, i32 6
  %114 = load i32, ptr %113, align 4
  %115 = lshr i32 %114, 16
  %116 = and i32 %115, 255
  %117 = zext nneg i32 %116 to i64
  %118 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !5
  %120 = icmp eq i8 %119, 9
  br i1 %120, label %121, label %158

121:                                              ; preds = %112
  br i1 %98, label %122, label %146

122:                                              ; preds = %121
  %123 = getelementptr inbounds %struct.tree_type, ptr %58, i64 0, i32 6
  %124 = load i32, ptr %123, align 4
  %125 = lshr i32 %124, 16
  %126 = and i32 %125, 255
  %127 = zext nneg i32 %126 to i64
  br label %128

128:                                              ; preds = %122, %99
  %129 = phi i64 [ %127, %122 ], [ %104, %99 ]
  %130 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !5
  %132 = icmp eq i8 %131, 9
  br i1 %132, label %133, label %146

133:                                              ; preds = %128
  %134 = load i64, ptr %65, align 8
  %135 = and i64 %134, 65535
  %136 = icmp eq i64 %135, 9
  br i1 %136, label %137, label %146

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.tree_type, ptr %65, i64 0, i32 6
  %139 = load i32, ptr %138, align 4
  %140 = lshr i32 %139, 16
  %141 = and i32 %140, 255
  %142 = zext nneg i32 %141 to i64
  %143 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %142
  %144 = load i8, ptr %143, align 1, !tbaa !5
  %145 = icmp eq i8 %144, 9
  br i1 %145, label %158, label %146

146:                                              ; preds = %137, %133, %128, %121
  %147 = or i1 %76, %86
  br i1 %147, label %148, label %150

148:                                              ; preds = %146
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.166) #21
  %149 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %411

150:                                              ; preds = %146
  %151 = or i1 %77, %87
  br i1 %151, label %152, label %154

152:                                              ; preds = %150
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.167) #21
  %153 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %411

154:                                              ; preds = %150
  %155 = and i1 %79, %89
  br i1 %155, label %156, label %158

156:                                              ; preds = %154
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.168) #21
  %157 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %411

158:                                              ; preds = %154, %137, %112, %108
  %159 = or i1 %76, %86
  %160 = select i1 %76, ptr %58, ptr %65
  br i1 %159, label %411, label %161

161:                                              ; preds = %158
  %162 = or i1 %77, %87
  br i1 %162, label %163, label %186

163:                                              ; preds = %161
  br i1 %77, label %164, label %167

164:                                              ; preds = %163
  %165 = getelementptr inbounds %struct.tree_common, ptr %58, i64 0, i32 2
  %166 = load ptr, ptr %165, align 8, !tbaa !5
  br label %167

167:                                              ; preds = %163, %164
  %168 = phi ptr [ %166, %164 ], [ %58, %163 ]
  br i1 %87, label %169, label %172

169:                                              ; preds = %167
  %170 = getelementptr inbounds %struct.tree_common, ptr %65, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !5
  br label %172

172:                                              ; preds = %167, %169
  %173 = phi ptr [ %171, %169 ], [ %65, %167 ]
  %174 = tail call fastcc ptr @c_common_type(ptr noundef %168, ptr noundef %173) #20
  br i1 %77, label %175, label %179

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.tree_common, ptr %58, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !5
  %178 = icmp eq ptr %177, %174
  br i1 %178, label %411, label %179

179:                                              ; preds = %175, %172
  br i1 %87, label %180, label %184

180:                                              ; preds = %179
  %181 = getelementptr inbounds %struct.tree_common, ptr %65, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !5
  %183 = icmp eq ptr %182, %174
  br i1 %183, label %411, label %184

184:                                              ; preds = %180, %179
  %185 = tail call ptr @build_complex_type(ptr noundef %174) #21
  br label %411

186:                                              ; preds = %161
  %187 = icmp ne i32 %75, 9
  %188 = and i1 %79, %187
  br i1 %188, label %411, label %189

189:                                              ; preds = %186
  %190 = icmp ne i32 %71, 9
  %191 = and i1 %190, %89
  br i1 %191, label %411, label %192

192:                                              ; preds = %189
  %193 = and i1 %79, %89
  br i1 %193, label %194, label %213

194:                                              ; preds = %192
  %195 = getelementptr inbounds %struct.tree_type, ptr %58, i64 0, i32 16
  %196 = load ptr, ptr %195, align 8, !tbaa !5
  %197 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 51), align 8, !tbaa !8
  %198 = icmp eq ptr %196, %197
  br i1 %198, label %411, label %199

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.tree_type, ptr %65, i64 0, i32 16
  %201 = load ptr, ptr %200, align 8, !tbaa !5
  %202 = icmp eq ptr %201, %197
  br i1 %202, label %411, label %203

203:                                              ; preds = %199
  %204 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 50), align 16, !tbaa !8
  %205 = icmp eq ptr %196, %204
  %206 = icmp eq ptr %201, %204
  %207 = or i1 %205, %206
  br i1 %207, label %411, label %208

208:                                              ; preds = %203
  %209 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 49), align 8, !tbaa !8
  %210 = icmp eq ptr %196, %209
  %211 = icmp eq ptr %201, %209
  %212 = or i1 %210, %211
  br i1 %212, label %411, label %213

213:                                              ; preds = %208, %192
  %214 = or i1 %78, %88
  br i1 %214, label %215, label %352

215:                                              ; preds = %213
  %216 = icmp eq i64 %97, 14
  br i1 %216, label %217, label %219

217:                                              ; preds = %215
  %218 = tail call i32 @vector_type_mode(ptr noundef nonnull %58) #21
  br label %224

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.tree_type, ptr %58, i64 0, i32 6
  %221 = load i32, ptr %220, align 4
  %222 = lshr i32 %221, 16
  %223 = and i32 %222, 255
  br label %224

224:                                              ; preds = %219, %217
  %225 = phi i32 [ %218, %217 ], [ %223, %219 ]
  %226 = load i64, ptr %65, align 8
  %227 = and i64 %226, 65535
  %228 = icmp eq i64 %227, 14
  br i1 %228, label %229, label %231

229:                                              ; preds = %224
  %230 = tail call i32 @vector_type_mode(ptr noundef nonnull %65) #21
  br label %236

231:                                              ; preds = %224
  %232 = getelementptr inbounds %struct.tree_type, ptr %65, i64 0, i32 6
  %233 = load i32, ptr %232, align 4
  %234 = lshr i32 %233, 16
  %235 = and i32 %234, 255
  br label %236

236:                                              ; preds = %231, %229
  %237 = phi i32 [ %230, %229 ], [ %235, %231 ]
  %238 = load i64, ptr %58, align 8
  %239 = and i64 %238, 2147483648
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %236
  %242 = load i64, ptr %65, align 8
  %243 = and i64 %242, 2147483648
  %244 = icmp eq i64 %243, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %241, %236
  br label %246

246:                                              ; preds = %245, %241
  %247 = phi i32 [ 1, %245 ], [ 0, %241 ]
  %248 = and i64 %238, 2097152
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %259

250:                                              ; preds = %246
  %251 = load i64, ptr %65, align 8
  %252 = and i64 %251, 2097152
  %253 = icmp ne i64 %252, 0
  %254 = and i1 %78, %253
  %255 = and i1 %88, %254
  %256 = icmp ne i32 %75, 11
  %257 = and i1 %78, %256
  %258 = or i1 %257, %255
  br i1 %258, label %302, label %259

259:                                              ; preds = %250, %246
  %260 = icmp ne i32 %71, 11
  %261 = and i1 %260, %88
  br i1 %261, label %262, label %266

262:                                              ; preds = %259
  %263 = load i64, ptr %65, align 8
  %264 = and i64 %263, 2097152
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %266, label %298

266:                                              ; preds = %262, %259
  %267 = and i1 %78, %249
  br i1 %267, label %268, label %280

268:                                              ; preds = %266
  %269 = zext i32 %225 to i64
  %270 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %269
  %271 = load i8, ptr %270, align 1, !tbaa !5
  switch i8 %271, label %273 [
    i8 5, label %274
    i8 7, label %272
  ]

272:                                              ; preds = %268
  br label %274

273:                                              ; preds = %268
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 843, ptr noundef nonnull @.str.8) #21
  br label %274

274:                                              ; preds = %268, %272, %273
  %275 = phi i32 [ 6, %272 ], [ 0, %273 ], [ 4, %268 ]
  %276 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %269
  %277 = load i16, ptr %276, align 2, !tbaa !32
  %278 = zext i16 %277 to i32
  %279 = tail call i32 @mode_for_size(i32 noundef %278, i32 noundef %275, i32 noundef 0) #21
  br label %280

280:                                              ; preds = %266, %274
  %281 = phi i32 [ %279, %274 ], [ %225, %266 ]
  br i1 %88, label %282, label %298

282:                                              ; preds = %280
  %283 = load i64, ptr %65, align 8
  %284 = and i64 %283, 2097152
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %298, label %286

286:                                              ; preds = %282
  %287 = zext i32 %237 to i64
  %288 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %287
  %289 = load i8, ptr %288, align 1, !tbaa !5
  switch i8 %289, label %291 [
    i8 5, label %292
    i8 7, label %290
  ]

290:                                              ; preds = %286
  br label %292

291:                                              ; preds = %286
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 854, ptr noundef nonnull @.str.8) #21
  br label %292

292:                                              ; preds = %286, %290, %291
  %293 = phi i32 [ 6, %290 ], [ 0, %291 ], [ 4, %286 ]
  %294 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %287
  %295 = load i16, ptr %294, align 2, !tbaa !32
  %296 = zext i16 %295 to i32
  %297 = tail call i32 @mode_for_size(i32 noundef %296, i32 noundef %293, i32 noundef 0) #21
  br label %298

298:                                              ; preds = %262, %280, %282, %292
  %299 = phi i32 [ 0, %292 ], [ 0, %282 ], [ 0, %280 ], [ 1, %262 ]
  %300 = phi i32 [ %281, %292 ], [ %281, %282 ], [ %281, %280 ], [ %225, %262 ]
  %301 = phi i32 [ %297, %292 ], [ %237, %282 ], [ %237, %280 ], [ %237, %262 ]
  br i1 %78, label %302, label %313

302:                                              ; preds = %250, %298
  %303 = phi i32 [ %301, %298 ], [ %237, %250 ]
  %304 = phi i32 [ %300, %298 ], [ %225, %250 ]
  %305 = phi i32 [ %299, %298 ], [ 1, %250 ]
  %306 = zext i32 %304 to i64
  %307 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %306
  %308 = load i8, ptr %307, align 1, !tbaa !5
  %309 = zext i8 %308 to i32
  %310 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %306
  %311 = load i8, ptr %310, align 1, !tbaa !5
  %312 = zext i8 %311 to i32
  br label %323

313:                                              ; preds = %298
  %314 = getelementptr inbounds %struct.tree_type, ptr %58, i64 0, i32 6
  %315 = load i32, ptr %314, align 4
  %316 = and i32 %315, 1023
  %317 = load i64, ptr %58, align 8
  %318 = trunc i64 %317 to i32
  %319 = lshr i32 %318, 21
  %320 = and i32 %319, 1
  %321 = add nsw i32 %316, -1
  %322 = add nsw i32 %321, %320
  br label %323

323:                                              ; preds = %313, %302
  %324 = phi i32 [ %303, %302 ], [ %301, %313 ]
  %325 = phi i32 [ %305, %302 ], [ %299, %313 ]
  %326 = phi i32 [ %309, %302 ], [ 0, %313 ]
  %327 = phi i32 [ %312, %302 ], [ %322, %313 ]
  br i1 %88, label %328, label %336

328:                                              ; preds = %323
  %329 = zext i32 %324 to i64
  %330 = getelementptr inbounds [87 x i8], ptr @mode_fbit, i64 0, i64 %329
  %331 = load i8, ptr %330, align 1, !tbaa !5
  %332 = zext i8 %331 to i32
  %333 = getelementptr inbounds [87 x i8], ptr @mode_ibit, i64 0, i64 %329
  %334 = load i8, ptr %333, align 1, !tbaa !5
  %335 = zext i8 %334 to i32
  br label %346

336:                                              ; preds = %323
  %337 = getelementptr inbounds %struct.tree_type, ptr %65, i64 0, i32 6
  %338 = load i32, ptr %337, align 4
  %339 = and i32 %338, 1023
  %340 = load i64, ptr %65, align 8
  %341 = trunc i64 %340 to i32
  %342 = lshr i32 %341, 21
  %343 = and i32 %342, 1
  %344 = add nsw i32 %339, -1
  %345 = add nsw i32 %344, %343
  br label %346

346:                                              ; preds = %336, %328
  %347 = phi i32 [ %332, %328 ], [ 0, %336 ]
  %348 = phi i32 [ %335, %328 ], [ %345, %336 ]
  %349 = tail call i32 @llvm.umax.i32(i32 %327, i32 %348)
  %350 = tail call i32 @llvm.umax.i32(i32 %326, i32 %347)
  %351 = tail call ptr @c_common_fixed_point_type_for_size(i32 noundef %349, i32 noundef %350, i32 noundef %325, i32 noundef %247) #21
  br label %411

352:                                              ; preds = %213
  %353 = getelementptr inbounds %struct.tree_type, ptr %58, i64 0, i32 6
  %354 = load i32, ptr %353, align 4
  %355 = and i32 %354, 1023
  %356 = getelementptr inbounds %struct.tree_type, ptr %65, i64 0, i32 6
  %357 = load i32, ptr %356, align 4
  %358 = and i32 %357, 1023
  %359 = icmp ugt i32 %355, %358
  br i1 %359, label %411, label %360

360:                                              ; preds = %352
  %361 = icmp ugt i32 %358, %355
  br i1 %361, label %411, label %362

362:                                              ; preds = %360
  %363 = getelementptr inbounds %struct.tree_type, ptr %58, i64 0, i32 16
  %364 = load ptr, ptr %363, align 8, !tbaa !5
  %365 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 10), align 16, !tbaa !8
  %366 = icmp eq ptr %364, %365
  br i1 %366, label %411, label %367

367:                                              ; preds = %362
  %368 = getelementptr inbounds %struct.tree_type, ptr %65, i64 0, i32 16
  %369 = load ptr, ptr %368, align 8, !tbaa !5
  %370 = icmp eq ptr %369, %365
  br i1 %370, label %411, label %371

371:                                              ; preds = %367
  %372 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8, !tbaa !8
  %373 = icmp eq ptr %364, %372
  %374 = icmp eq ptr %369, %372
  %375 = or i1 %373, %374
  br i1 %375, label %376, label %384

376:                                              ; preds = %371
  %377 = and i64 %96, 2097152
  %378 = icmp eq i64 %377, 0
  br i1 %378, label %379, label %411

379:                                              ; preds = %376
  %380 = load i64, ptr %65, align 8
  %381 = and i64 %380, 2097152
  %382 = icmp eq i64 %381, 0
  %383 = select i1 %382, ptr %372, ptr %365
  br label %411

384:                                              ; preds = %371
  %385 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 8), align 16, !tbaa !8
  %386 = icmp eq ptr %364, %385
  %387 = icmp eq ptr %369, %385
  %388 = or i1 %386, %387
  br i1 %388, label %411, label %389

389:                                              ; preds = %384
  %390 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !8
  %391 = icmp eq ptr %364, %390
  %392 = icmp eq ptr %369, %390
  %393 = or i1 %391, %392
  br i1 %393, label %394, label %402

394:                                              ; preds = %389
  %395 = and i64 %96, 2097152
  %396 = icmp eq i64 %395, 0
  br i1 %396, label %397, label %411

397:                                              ; preds = %394
  %398 = load i64, ptr %65, align 8
  %399 = and i64 %398, 2097152
  %400 = icmp eq i64 %399, 0
  %401 = select i1 %400, ptr %390, ptr %385
  br label %411

402:                                              ; preds = %389
  %403 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 33), align 8, !tbaa !8
  %404 = icmp eq ptr %364, %403
  %405 = icmp eq ptr %369, %403
  %406 = or i1 %404, %405
  br i1 %406, label %411, label %407

407:                                              ; preds = %402
  %408 = and i64 %96, 2097152
  %409 = icmp eq i64 %408, 0
  %410 = select i1 %409, ptr %65, ptr %58
  br label %411

411:                                              ; preds = %397, %379, %402, %394, %384, %376, %362, %367, %208, %203, %194, %199, %158, %407, %360, %352, %189, %186, %184, %175, %180, %64, %5, %2, %346, %156, %152, %148
  %412 = phi ptr [ %351, %346 ], [ %149, %148 ], [ %153, %152 ], [ %157, %156 ], [ %1, %2 ], [ %0, %5 ], [ %58, %64 ], [ %160, %158 ], [ %185, %184 ], [ %58, %175 ], [ %65, %180 ], [ %58, %186 ], [ %65, %189 ], [ %58, %352 ], [ %65, %360 ], [ %410, %407 ], [ %197, %199 ], [ %196, %194 ], [ %204, %203 ], [ %209, %208 ], [ %365, %367 ], [ %364, %362 ], [ %365, %376 ], [ %385, %384 ], [ %385, %394 ], [ %403, %402 ], [ %383, %379 ], [ %401, %397 ]
  ret ptr %412
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @comptypes_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp ne ptr %0, %1
  %5 = icmp ne ptr %0, null
  %6 = and i1 %5, %4
  %7 = icmp ne ptr %1, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %302

9:                                                ; preds = %3
  %10 = load i64, ptr %0, align 8
  %11 = trunc i64 %10 to i32
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %302, label %14

14:                                               ; preds = %9
  %15 = load i64, ptr %1, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %302, label %18

18:                                               ; preds = %14
  %19 = icmp eq i32 %12, 8
  br i1 %19, label %20, label %34

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 1024
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  %32 = icmp eq ptr %31, null
  %33 = select i1 %32, ptr %0, ptr %31
  br label %34

34:                                               ; preds = %29, %25, %20, %18
  %35 = phi ptr [ %0, %25 ], [ %0, %20 ], [ %0, %18 ], [ %33, %29 ]
  %36 = icmp eq i64 %16, 8
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 1024
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !5
  %49 = icmp eq ptr %48, null
  %50 = select i1 %49, ptr %1, ptr %48
  br label %51

51:                                               ; preds = %46, %42, %37, %34
  %52 = phi ptr [ %1, %42 ], [ %1, %37 ], [ %1, %34 ], [ %50, %46 ]
  %53 = load i64, ptr %35, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 6
  %56 = load i64, ptr %52, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 6
  br i1 %55, label %59, label %73

59:                                               ; preds = %51
  br i1 %58, label %90, label %60

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.tree_type, ptr %35, i64 0, i32 6
  %62 = load i32, ptr %61, align 4
  %63 = and i32 %62, 1023
  %64 = trunc i64 %53 to i32
  %65 = lshr i32 %64, 21
  %66 = and i32 %65, 1
  %67 = tail call ptr @c_common_type_for_size(i32 noundef %63, i32 noundef %66) #21
  %68 = icmp eq ptr %2, null
  br i1 %68, label %90, label %69

69:                                               ; preds = %60
  %70 = load i64, ptr %52, align 8
  %71 = and i64 %70, 65535
  %72 = icmp eq i64 %71, 19
  br i1 %72, label %90, label %87

73:                                               ; preds = %51
  br i1 %58, label %74, label %90

74:                                               ; preds = %73
  %75 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 6
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, 1023
  %78 = trunc i64 %56 to i32
  %79 = lshr i32 %78, 21
  %80 = and i32 %79, 1
  %81 = tail call ptr @c_common_type_for_size(i32 noundef %77, i32 noundef %80) #21
  %82 = icmp eq ptr %2, null
  br i1 %82, label %90, label %83

83:                                               ; preds = %74
  %84 = load i64, ptr %35, align 8
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 19
  br i1 %86, label %90, label %87

87:                                               ; preds = %83, %69
  %88 = phi ptr [ %52, %69 ], [ %81, %83 ]
  %89 = phi ptr [ %67, %69 ], [ %35, %83 ]
  store i8 1, ptr %2, align 1, !tbaa !5
  br label %90

90:                                               ; preds = %87, %59, %73, %83, %74, %60, %69
  %91 = phi ptr [ %52, %69 ], [ %52, %60 ], [ %81, %83 ], [ %81, %74 ], [ %52, %73 ], [ %52, %59 ], [ %88, %87 ]
  %92 = phi ptr [ %67, %69 ], [ %67, %60 ], [ %35, %83 ], [ %35, %74 ], [ %35, %73 ], [ %35, %59 ], [ %89, %87 ]
  %93 = icmp eq ptr %92, %91
  br i1 %93, label %302, label %94

94:                                               ; preds = %90
  %95 = load i64, ptr %92, align 8
  %96 = trunc i64 %95 to i32
  %97 = and i32 %96, 65535
  %98 = load i64, ptr %91, align 8
  %99 = trunc i64 %98 to i32
  %100 = and i32 %99, 65535
  %101 = icmp eq i32 %97, %100
  br i1 %101, label %102, label %302

102:                                              ; preds = %94
  %103 = lshr i32 %96, 20
  %104 = and i32 %103, 1
  %105 = lshr i32 %96, 18
  %106 = and i32 %105, 2
  %107 = or disjoint i32 %104, %106
  %108 = getelementptr inbounds %struct.tree_type, ptr %92, i64 0, i32 6
  %109 = load i32, ptr %108, align 4
  %110 = lshr i32 %109, 11
  %111 = and i32 %110, 4
  %112 = lshr i64 %95, 48
  %113 = trunc i64 %112 to i32
  %114 = and i32 %113, 65280
  %115 = or disjoint i32 %107, %114
  %116 = or disjoint i32 %115, %111
  %117 = lshr i32 %99, 20
  %118 = and i32 %117, 1
  %119 = lshr i32 %99, 18
  %120 = and i32 %119, 2
  %121 = or disjoint i32 %118, %120
  %122 = getelementptr inbounds %struct.tree_type, ptr %91, i64 0, i32 6
  %123 = load i32, ptr %122, align 4
  %124 = lshr i32 %123, 11
  %125 = and i32 %124, 4
  %126 = lshr i64 %98, 48
  %127 = trunc i64 %126 to i32
  %128 = and i32 %127, 65280
  %129 = or disjoint i32 %121, %128
  %130 = or disjoint i32 %129, %125
  %131 = icmp eq i32 %116, %130
  br i1 %131, label %132, label %302

132:                                              ; preds = %102
  %133 = icmp eq i32 %97, 15
  br i1 %133, label %140, label %134

134:                                              ; preds = %132
  %135 = getelementptr inbounds %struct.tree_type, ptr %92, i64 0, i32 16
  %136 = load ptr, ptr %135, align 8, !tbaa !5
  %137 = getelementptr inbounds %struct.tree_type, ptr %91, i64 0, i32 16
  %138 = load ptr, ptr %137, align 8, !tbaa !5
  %139 = icmp eq ptr %136, %138
  br i1 %139, label %302, label %140

140:                                              ; preds = %134, %132
  %141 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 14), align 8, !tbaa !34
  %142 = tail call i32 %141(ptr noundef nonnull %92, ptr noundef nonnull %91) #21
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %302, label %144

144:                                              ; preds = %140
  %145 = load i64, ptr %92, align 8
  %146 = trunc i64 %145 to i16
  switch i16 %146, label %296 [
    i16 10, label %147
    i16 20, label %177
    i16 15, label %179
    i16 6, label %262
    i16 16, label %262
    i16 17, label %262
    i16 14, label %278
  ]

147:                                              ; preds = %144
  %148 = load i32, ptr %108, align 4
  %149 = lshr i32 %148, 16
  %150 = and i32 %149, 255
  %151 = load i64, ptr %91, align 8
  %152 = and i64 %151, 65535
  %153 = icmp eq i64 %152, 14
  br i1 %153, label %154, label %156

154:                                              ; preds = %147
  %155 = tail call i32 @vector_type_mode(ptr noundef nonnull %91) #21
  br label %160

156:                                              ; preds = %147
  %157 = load i32, ptr %122, align 4
  %158 = lshr i32 %157, 16
  %159 = and i32 %158, 255
  br label %160

160:                                              ; preds = %156, %154
  %161 = phi i32 [ %155, %154 ], [ %159, %156 ]
  %162 = icmp eq i32 %150, %161
  br i1 %162, label %163, label %296

163:                                              ; preds = %160
  %164 = load i64, ptr %92, align 8
  %165 = load i64, ptr %91, align 8
  %166 = xor i64 %165, %164
  %167 = and i64 %166, 67108864
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %296

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.tree_common, ptr %92, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !5
  %172 = getelementptr inbounds %struct.tree_common, ptr %91, i64 0, i32 2
  %173 = load ptr, ptr %172, align 8, !tbaa !5
  %174 = icmp eq ptr %171, %173
  br i1 %174, label %296, label %175

175:                                              ; preds = %169
  %176 = tail call fastcc i32 @comptypes_internal(ptr noundef %171, ptr noundef %173, ptr noundef %2) #20
  br label %296

177:                                              ; preds = %144
  %178 = tail call fastcc i32 @function_types_compatible_p(ptr noundef nonnull %92, ptr noundef nonnull %91, ptr noundef %2) #20
  br label %296

179:                                              ; preds = %144
  %180 = getelementptr inbounds %struct.tree_type, ptr %92, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !5
  %182 = getelementptr inbounds %struct.tree_type, ptr %91, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !5
  %184 = getelementptr inbounds %struct.tree_common, ptr %92, i64 0, i32 2
  %185 = load ptr, ptr %184, align 8, !tbaa !5
  %186 = getelementptr inbounds %struct.tree_common, ptr %91, i64 0, i32 2
  %187 = load ptr, ptr %186, align 8, !tbaa !5
  %188 = icmp eq ptr %185, %187
  br i1 %188, label %192, label %189

189:                                              ; preds = %179
  %190 = tail call fastcc i32 @comptypes_internal(ptr noundef %185, ptr noundef %187, ptr noundef %2) #20
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %302, label %192

192:                                              ; preds = %189, %179
  %193 = phi i32 [ %190, %189 ], [ 1, %179 ]
  %194 = icmp eq ptr %181, null
  %195 = icmp eq ptr %183, null
  %196 = select i1 %194, i1 true, i1 %195
  %197 = icmp eq ptr %181, %183
  %198 = select i1 %196, i1 true, i1 %197
  br i1 %198, label %296, label %199

199:                                              ; preds = %192
  %200 = getelementptr inbounds %struct.tree_type, ptr %181, i64 0, i32 14
  %201 = load ptr, ptr %200, align 8, !tbaa !5
  %202 = icmp eq ptr %201, null
  %203 = getelementptr inbounds %struct.tree_type, ptr %183, i64 0, i32 14
  %204 = load ptr, ptr %203, align 8, !tbaa !5
  %205 = icmp eq ptr %204, null
  br i1 %202, label %216, label %206

206:                                              ; preds = %199
  %207 = getelementptr inbounds %struct.tree_type, ptr %181, i64 0, i32 13
  %208 = load ptr, ptr %207, align 8, !tbaa !5
  %209 = load i64, ptr %208, align 8
  %210 = and i64 %209, 65535
  %211 = icmp eq i64 %210, 23
  br i1 %211, label %212, label %216

212:                                              ; preds = %206
  %213 = load i64, ptr %201, align 8
  %214 = and i64 %213, 65535
  %215 = icmp ne i64 %214, 23
  br label %216

216:                                              ; preds = %206, %212, %199
  %217 = phi i1 [ false, %199 ], [ true, %206 ], [ %215, %212 ]
  br i1 %205, label %228, label %218

218:                                              ; preds = %216
  %219 = getelementptr inbounds %struct.tree_type, ptr %183, i64 0, i32 13
  %220 = load ptr, ptr %219, align 8, !tbaa !5
  %221 = load i64, ptr %220, align 8
  %222 = and i64 %221, 65535
  %223 = icmp eq i64 %222, 23
  br i1 %223, label %224, label %228

224:                                              ; preds = %218
  %225 = load i64, ptr %204, align 8
  %226 = and i64 %225, 65535
  %227 = icmp ne i64 %226, 23
  br label %228

228:                                              ; preds = %218, %224, %216
  %229 = phi i1 [ false, %216 ], [ true, %218 ], [ %227, %224 ]
  %230 = xor i1 %202, true
  %231 = or i1 %217, %230
  br i1 %231, label %235, label %232

232:                                              ; preds = %228
  %233 = tail call zeroext i8 @c_vla_type_p(ptr noundef nonnull %92) #20, !range !24
  %234 = icmp ne i8 %233, 0
  br label %235

235:                                              ; preds = %228, %232
  %236 = phi i1 [ %217, %228 ], [ %234, %232 ]
  %237 = xor i1 %205, true
  %238 = select i1 %229, i1 true, i1 %237
  br i1 %238, label %242, label %239

239:                                              ; preds = %235
  %240 = tail call zeroext i8 @c_vla_type_p(ptr noundef nonnull %91) #20, !range !24
  %241 = icmp ne i8 %240, 0
  br label %242

242:                                              ; preds = %235, %239
  %243 = phi i1 [ %229, %235 ], [ %241, %239 ]
  %244 = select i1 %236, i1 true, i1 %243
  %245 = select i1 %202, i1 %205, i1 false
  %246 = select i1 %244, i1 true, i1 %245
  br i1 %246, label %296, label %247

247:                                              ; preds = %242
  %248 = select i1 %202, i1 true, i1 %205
  br i1 %248, label %261, label %249

249:                                              ; preds = %247
  %250 = getelementptr inbounds %struct.tree_type, ptr %181, i64 0, i32 13
  %251 = load ptr, ptr %250, align 8, !tbaa !5
  %252 = getelementptr inbounds %struct.tree_type, ptr %183, i64 0, i32 13
  %253 = load ptr, ptr %252, align 8, !tbaa !5
  %254 = tail call i32 @tree_int_cst_equal(ptr noundef %251, ptr noundef %253) #21
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %261, label %256

256:                                              ; preds = %249
  %257 = load ptr, ptr %200, align 8, !tbaa !5
  %258 = load ptr, ptr %203, align 8, !tbaa !5
  %259 = tail call i32 @tree_int_cst_equal(ptr noundef %257, ptr noundef %258) #21
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %296

261:                                              ; preds = %256, %249, %247
  br label %296

262:                                              ; preds = %144, %144, %144
  %263 = tail call i32 @same_translation_unit_p(ptr noundef nonnull %92, ptr noundef nonnull %91) #20, !range !35
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %296

265:                                              ; preds = %262
  %266 = getelementptr inbounds %struct.tree_type, ptr %92, i64 0, i32 4
  %267 = load ptr, ptr %266, align 8, !tbaa !5
  %268 = getelementptr inbounds %struct.tree_type, ptr %91, i64 0, i32 4
  %269 = load ptr, ptr %268, align 8, !tbaa !5
  %270 = tail call i32 @attribute_list_contained(ptr noundef %267, ptr noundef %269) #21
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %265
  %273 = tail call i32 @attribute_list_contained(ptr noundef %269, ptr noundef %267) #21
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %296, label %275

275:                                              ; preds = %272, %265
  %276 = icmp eq i32 %142, 2
  %277 = tail call fastcc i32 @tagged_types_tu_compatible_p(ptr noundef nonnull %92, ptr noundef nonnull %91, ptr noundef %2) #20
  br i1 %276, label %296, label %302

278:                                              ; preds = %144
  %279 = load i32, ptr %108, align 4
  %280 = and i32 %279, 1023
  %281 = zext nneg i32 %280 to i64
  %282 = shl nuw i64 1, %281
  %283 = load i32, ptr %122, align 4
  %284 = and i32 %283, 1023
  %285 = zext nneg i32 %284 to i64
  %286 = shl nuw i64 1, %285
  %287 = icmp eq i64 %282, %286
  br i1 %287, label %288, label %296

288:                                              ; preds = %278
  %289 = getelementptr inbounds %struct.tree_common, ptr %92, i64 0, i32 2
  %290 = load ptr, ptr %289, align 8, !tbaa !5
  %291 = getelementptr inbounds %struct.tree_common, ptr %91, i64 0, i32 2
  %292 = load ptr, ptr %291, align 8, !tbaa !5
  %293 = tail call fastcc i32 @comptypes_internal(ptr noundef %290, ptr noundef %292, ptr noundef %2) #20
  %294 = icmp ne i32 %293, 0
  %295 = zext i1 %294 to i32
  br label %296

296:                                              ; preds = %275, %272, %256, %261, %242, %192, %278, %288, %175, %169, %144, %262, %160, %163, %177
  %297 = phi i32 [ 0, %144 ], [ 0, %262 ], [ %178, %177 ], [ 0, %160 ], [ 0, %163 ], [ %176, %175 ], [ 1, %169 ], [ 0, %278 ], [ %295, %288 ], [ %193, %256 ], [ 0, %261 ], [ %193, %242 ], [ %193, %192 ], [ 0, %272 ], [ %277, %275 ]
  %298 = icmp eq i32 %142, 2
  %299 = icmp eq i32 %297, 1
  %300 = select i1 %298, i1 %299, i1 false
  %301 = select i1 %300, i32 2, i32 %297
  br label %302

302:                                              ; preds = %275, %189, %140, %134, %102, %94, %90, %3, %9, %14, %296
  %303 = phi i32 [ %301, %296 ], [ 1, %14 ], [ 1, %9 ], [ 1, %3 ], [ 1, %90 ], [ 0, %94 ], [ 0, %102 ], [ 1, %134 ], [ 0, %140 ], [ 0, %189 ], [ %277, %275 ]
  ret i32 %303
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_all_tagged_tu_seen_up_to(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @tagged_tu_seen_base, align 8, !tbaa !8
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  tail call void @free(ptr noundef %5) #20
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %8, label %4, !llvm.loop !38

8:                                                ; preds = %4, %1
  store ptr %0, ptr @tagged_tu_seen_base, align 8, !tbaa !8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @same_translation_unit_p(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %2, %22
  %5 = phi ptr [ %23, %22 ], [ %0, %2 ]
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 40
  br i1 %8, label %25, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %11 = load i32, ptr %10, align 4, !tbaa !28
  switch i32 %11, label %21 [
    i32 3, label %12
    i32 2, label %15
    i32 0, label %18
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.tree_decl_minimal, ptr %5, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  br label %22

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 18
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  br label %22

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.tree_block, ptr %5, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  br label %22

21:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1221, ptr noundef nonnull @.str.8) #21
  br label %22

22:                                               ; preds = %21, %18, %15, %12
  %23 = phi ptr [ %5, %21 ], [ %20, %18 ], [ %17, %15 ], [ %14, %12 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %4, !llvm.loop !39

25:                                               ; preds = %4, %22, %2
  %26 = phi ptr [ null, %2 ], [ null, %22 ], [ %5, %4 ]
  %27 = icmp eq ptr %1, null
  br i1 %27, label %49, label %28

28:                                               ; preds = %25, %46
  %29 = phi ptr [ %47, %46 ], [ %1, %25 ]
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 40
  br i1 %32, label %49, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %31
  %35 = load i32, ptr %34, align 4, !tbaa !28
  switch i32 %35, label %45 [
    i32 3, label %36
    i32 2, label %39
    i32 0, label %42
  ]

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.tree_decl_minimal, ptr %29, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  br label %46

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 18
  %41 = load ptr, ptr %40, align 8, !tbaa !5
  br label %46

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.tree_block, ptr %29, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  br label %46

45:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1233, ptr noundef nonnull @.str.8) #21
  br label %46

46:                                               ; preds = %45, %42, %39, %36
  %47 = phi ptr [ %29, %45 ], [ %44, %42 ], [ %41, %39 ], [ %38, %36 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %28, !llvm.loop !40

49:                                               ; preds = %28, %46, %25
  %50 = phi ptr [ null, %25 ], [ null, %46 ], [ %29, %28 ]
  %51 = icmp eq ptr %26, %50
  %52 = zext i1 %51 to i32
  ret i32 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @decl_constant_value(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 34
  %8 = and i64 %5, 1572864
  %9 = icmp ne i64 %8, 1048576
  %10 = or i1 %7, %9
  br i1 %10, label %22, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = load i64, ptr %13, align 8
  %17 = freeze i64 %16
  %18 = and i64 %17, 131072
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = trunc i64 %17 to i16
  switch i16 %21, label %23 [
    i16 51, label %22
    i16 0, label %22
  ]

22:                                               ; preds = %20, %20, %15, %11, %4, %1
  br label %23

23:                                               ; preds = %20, %22
  %24 = phi ptr [ %0, %22 ], [ %13, %20 ]
  ret ptr %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @default_function_array_conversion(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.c_expr) align 8 %0, i32 noundef %1, ptr nocapture noundef byval(%struct.c_expr) align 8 %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !41
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %46 [
    i16 15, label %9
    i16 20, label %42
  ]

9:                                                ; preds = %3, %20
  %10 = phi ptr [ %16, %20 ], [ %4, %3 ]
  %11 = phi i8 [ %23, %20 ], [ 0, %3 ]
  %12 = load i64, ptr %10, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %24 [
    i16 117, label %14
    i16 116, label %14
    i16 113, label %14
  ]

14:                                               ; preds = %9, %9, %9
  %15 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = icmp eq ptr %18, %6
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = and i64 %12, 65535
  %22 = icmp eq i64 %21, 117
  %23 = select i1 %22, i8 1, i8 %11
  br label %9, !llvm.loop !43

24:                                               ; preds = %9, %14
  store ptr %10, ptr %2, align 8, !tbaa !41
  %25 = load i64, ptr %4, align 8
  %26 = and i64 %25, 8388608
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = or i64 %12, 8388608
  store i64 %29, ptr %10, align 8
  br label %30

30:                                               ; preds = %28, %24
  %31 = icmp eq i8 %11, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = tail call zeroext i8 @lvalue_p(ptr noundef nonnull %10) #20, !range !24
  %34 = icmp ne i8 %33, 0
  br label %35

35:                                               ; preds = %32, %30
  %36 = phi i1 [ false, %30 ], [ %34, %32 ]
  %37 = load i32, ptr @flag_isoc99, align 4, !tbaa !28
  %38 = icmp ne i32 %37, 0
  %39 = select i1 %38, i1 true, i1 %36
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = tail call fastcc ptr @array_to_pointer_conversion(i32 noundef %1, ptr noundef nonnull %10) #20
  br label %44

42:                                               ; preds = %3
  %43 = tail call fastcc ptr @function_to_pointer_conversion(i32 noundef %1, ptr noundef nonnull %4) #20
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi ptr [ %41, %40 ], [ %43, %42 ]
  store ptr %45, ptr %2, align 8, !tbaa !41
  br label %46

46:                                               ; preds = %3, %44, %35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @lvalue_p(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  br label %2

2:                                                ; preds = %8, %1
  %3 = phi ptr [ %0, %1 ], [ %10, %8 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %26 [
    i16 43, label %6
    i16 44, label %6
    i16 41, label %6
    i16 189, label %11
    i16 119, label %25
    i16 28, label %25
    i16 47, label %13
    i16 45, label %13
    i16 32, label %13
    i16 34, label %13
    i16 36, label %13
    i16 0, label %13
    i16 58, label %19
  ]

6:                                                ; preds = %2, %2, %2
  %7 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  br label %8

8:                                                ; preds = %6, %11
  %9 = phi ptr [ %7, %6 ], [ %12, %11 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  br label %2

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  br label %8

13:                                               ; preds = %2, %2, %2, %2, %2, %2
  %14 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65534
  %18 = icmp ne i64 %17, 20
  br label %26

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 15
  br label %26

25:                                               ; preds = %2, %2
  br label %26

26:                                               ; preds = %2, %25, %19, %13
  %27 = phi i1 [ %24, %19 ], [ %18, %13 ], [ true, %25 ], [ false, %2 ]
  %28 = zext i1 %27 to i8
  ret i8 %28
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @array_to_pointer_conversion(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = load i64, ptr %4, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 15
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1737, ptr noundef nonnull @.str.8) #21
  br label %11

11:                                               ; preds = %2, %10
  %12 = load ptr, ptr @global_trees, align 16
  br label %13

13:                                               ; preds = %21, %11
  %14 = phi ptr [ %1, %11 ], [ %19, %21 ]
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i16
  switch i16 %16, label %27 [
    i16 116, label %17
    i16 113, label %17
    i16 117, label %17
  ]

17:                                               ; preds = %13, %13, %13
  %18 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = icmp eq ptr %19, %12
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = icmp eq ptr %23, %25
  br i1 %26, label %13, label %27, !llvm.loop !44

27:                                               ; preds = %13, %17, %21
  %28 = load i64, ptr %1, align 8
  %29 = and i64 %28, 8388608
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = or i64 %15, 8388608
  store i64 %32, ptr %14, align 8
  br label %33

33:                                               ; preds = %31, %27
  %34 = tail call ptr @build_pointer_type(ptr noundef %6) #21
  %35 = load i64, ptr %14, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 47
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  br label %43

41:                                               ; preds = %33
  %42 = tail call ptr @build_unary_op(i32 noundef %0, i32 noundef 121, ptr noundef nonnull %14, i32 noundef 1) #20
  br label %43

43:                                               ; preds = %41, %38
  %44 = phi ptr [ %42, %41 ], [ %40, %38 ]
  %45 = tail call ptr @convert(ptr noundef %34, ptr noundef %44) #21
  ret ptr %45
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @function_to_pointer_conversion(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 20
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1759, ptr noundef nonnull @.str.8) #21
  br label %9

9:                                                ; preds = %2, %8
  %10 = load ptr, ptr @global_trees, align 16
  br label %11

11:                                               ; preds = %19, %9
  %12 = phi ptr [ %1, %9 ], [ %17, %19 ]
  %13 = load i64, ptr %12, align 8
  %14 = trunc i64 %13 to i16
  switch i16 %14, label %25 [
    i16 116, label %15
    i16 113, label %15
    i16 117, label %15
  ]

15:                                               ; preds = %11, %11, %11
  %16 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = icmp eq ptr %17, %10
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = icmp eq ptr %21, %23
  br i1 %24, label %11, label %25, !llvm.loop !45

25:                                               ; preds = %11, %15, %19
  %26 = load i64, ptr %1, align 8
  %27 = and i64 %26, 8388608
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = or i64 %13, 8388608
  store i64 %30, ptr %12, align 8
  br label %31

31:                                               ; preds = %29, %25
  %32 = tail call ptr @build_unary_op(i32 noundef %0, i32 noundef 121, ptr noundef nonnull %12, i32 noundef 0) #20
  ret ptr %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @perform_integral_promotions(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %6 [
    i16 6, label %7
    i16 7, label %22
    i16 8, label %22
  ]

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1834, ptr noundef nonnull @.str.8) #21
  br label %22

7:                                                ; preds = %1
  %8 = trunc i64 %4 to i32
  %9 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1023
  %12 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !8
  %13 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1023
  %16 = tail call i32 @llvm.umax.i32(i32 %11, i32 %15)
  %17 = icmp ult i32 %11, %15
  %18 = lshr i32 %8, 21
  %19 = and i32 %18, 1
  %20 = select i1 %17, i32 0, i32 %19
  %21 = tail call ptr @c_common_type_for_size(i32 noundef %16, i32 noundef %20) #21
  br label %63

22:                                               ; preds = %6, %1, %1
  %23 = load i64, ptr %0, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 41
  br i1 %25, label %26, label %45

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %28, i64 0, i32 2
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 524288
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.tree_decl_common, ptr %28, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  %36 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !8
  %37 = getelementptr inbounds %struct.tree_type, ptr %36, i64 0, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 1023
  %40 = zext nneg i32 %39 to i64
  %41 = tail call i32 @compare_tree_int(ptr noundef %35, i64 noundef %40) #21
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !8
  br label %63

45:                                               ; preds = %33, %26, %22
  %46 = tail call zeroext i8 @c_promoting_integer_type_p(ptr noundef nonnull %3) #21
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %66, label %48

48:                                               ; preds = %45
  %49 = load i64, ptr %3, align 8
  %50 = and i64 %49, 2097152
  %51 = icmp eq i64 %50, 0
  %52 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !8
  br i1 %51, label %63, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = xor i32 %57, %55
  %59 = and i32 %58, 1023
  %60 = icmp eq i32 %59, 0
  %61 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16
  %62 = select i1 %60, ptr %61, ptr %52
  br label %63

63:                                               ; preds = %53, %48, %7, %43
  %64 = phi ptr [ %44, %43 ], [ %21, %7 ], [ %52, %48 ], [ %62, %53 ]
  %65 = tail call ptr @convert(ptr noundef %64, ptr noundef nonnull %0) #21
  br label %66

66:                                               ; preds = %63, %45
  %67 = phi ptr [ %0, %45 ], [ %65, %63 ]
  ret ptr %67
}

; Function Attrs: optsize
declare ptr @convert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @default_conversion(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %7 [
    i16 20, label %6
    i16 15, label %60
  ]

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1886, ptr noundef nonnull @.str.8) #21
  br label %7

7:                                                ; preds = %6, %1
  %8 = load i64, ptr %0, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 33
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %13, %11 ], [ %0, %7 ]
  %16 = load ptr, ptr @global_trees, align 16
  br label %17

17:                                               ; preds = %25, %14
  %18 = phi ptr [ %15, %14 ], [ %23, %25 ]
  %19 = load i64, ptr %18, align 8
  %20 = trunc i64 %19 to i16
  switch i16 %20, label %31 [
    i16 116, label %21
    i16 113, label %21
    i16 117, label %21
  ]

21:                                               ; preds = %17, %17, %17
  %22 = getelementptr inbounds %struct.tree_exp, ptr %18, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = icmp eq ptr %23, %16
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  %30 = icmp eq ptr %27, %29
  br i1 %30, label %17, label %31, !llvm.loop !46

31:                                               ; preds = %17, %21, %25
  %32 = load i64, ptr %15, align 8
  %33 = and i64 %32, 8388608
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %31
  %36 = or i64 %19, 8388608
  store i64 %36, ptr %18, align 8
  br label %37

37:                                               ; preds = %35, %31
  %38 = and i64 %4, 65535
  %39 = icmp eq i64 %38, 19
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.12) #21
  %41 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %60

42:                                               ; preds = %37
  %43 = tail call ptr @require_complete_type(ptr noundef nonnull %18) #20
  %44 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %60, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 94), align 8, !tbaa !47
  %48 = tail call ptr %47(ptr noundef nonnull %3) #21
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = tail call ptr @convert(ptr noundef nonnull %48, ptr noundef %43) #21
  br label %60

52:                                               ; preds = %46
  %53 = load i64, ptr %3, align 8
  %54 = trunc i64 %53 to i32
  %55 = and i32 %54, 65535
  %56 = add nsw i32 %55, -6
  %57 = icmp ult i32 %56, 3
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = tail call ptr @perform_integral_promotions(ptr noundef %43) #20
  br label %60

60:                                               ; preds = %52, %42, %1, %58, %50, %40
  %61 = phi ptr [ %41, %40 ], [ %51, %50 ], [ %59, %58 ], [ %0, %1 ], [ %43, %42 ], [ %43, %52 ]
  ret ptr %61
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_component_ref(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 65535
  %9 = tail call zeroext i8 @lvalue_p(ptr noundef %1) #20, !range !24
  %10 = tail call i32 @objc_is_public(ptr noundef %1, ptr noundef %2) #21
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %148

14:                                               ; preds = %3
  %15 = and i32 %7, 65534
  %16 = icmp eq i32 %15, 16
  br i1 %16, label %17, label %143

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  tail call void @c_incomplete_type_error(ptr noundef null, ptr noundef nonnull %5) #20
  %22 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %148

23:                                               ; preds = %17
  %24 = tail call fastcc ptr @lookup_field(ptr noundef nonnull %1, ptr noundef %2) #20
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = icmp eq i8 %9, 0
  br label %30

28:                                               ; preds = %23
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull %5, ptr noundef %2) #21
  %29 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %148

30:                                               ; preds = %26, %139
  %31 = phi ptr [ %141, %139 ], [ %24, %26 ]
  %32 = phi ptr [ %96, %139 ], [ %1, %26 ]
  %33 = getelementptr inbounds %struct.tree_list, ptr %31, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !5
  %35 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !5
  %37 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %38 = icmp eq ptr %36, %37
  br i1 %38, label %148, label %39

39:                                               ; preds = %30
  br i1 %27, label %40, label %44

40:                                               ; preds = %39
  %41 = load i64, ptr %36, align 8
  %42 = and i64 %41, 65535
  %43 = icmp ne i64 %42, 15
  br label %44

44:                                               ; preds = %40, %39
  %45 = phi i1 [ true, %39 ], [ %43, %40 ]
  %46 = tail call ptr @strip_array_types(ptr noundef %36) #21
  %47 = load i64, ptr %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = lshr i32 %48, 20
  %50 = and i32 %49, 1
  %51 = load ptr, ptr %35, align 8, !tbaa !5
  %52 = tail call ptr @strip_array_types(ptr noundef %51) #21
  %53 = load i64, ptr %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = lshr i32 %54, 18
  %56 = and i32 %55, 2
  %57 = or disjoint i32 %56, %50
  %58 = load ptr, ptr %35, align 8, !tbaa !5
  %59 = tail call ptr @strip_array_types(ptr noundef %58) #21
  %60 = getelementptr inbounds %struct.tree_type, ptr %59, i64 0, i32 6
  %61 = load i32, ptr %60, align 4
  %62 = lshr i32 %61, 11
  %63 = and i32 %62, 4
  %64 = or disjoint i32 %57, %63
  %65 = load ptr, ptr %35, align 8, !tbaa !5
  %66 = tail call ptr @strip_array_types(ptr noundef %65) #21
  %67 = load i64, ptr %66, align 8
  %68 = lshr i64 %67, 48
  %69 = trunc i64 %68 to i32
  %70 = and i32 %69, 65280
  %71 = or disjoint i32 %64, %70
  br i1 %45, label %72, label %92

72:                                               ; preds = %44
  %73 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !5
  %75 = load i64, ptr %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = lshr i32 %76, 20
  %78 = and i32 %77, 1
  %79 = lshr i32 %76, 18
  %80 = and i32 %79, 2
  %81 = getelementptr inbounds %struct.tree_type, ptr %74, i64 0, i32 6
  %82 = load i32, ptr %81, align 4
  %83 = lshr i32 %82, 11
  %84 = and i32 %83, 4
  %85 = lshr i64 %75, 48
  %86 = trunc i64 %85 to i32
  %87 = and i32 %86, 65280
  %88 = or disjoint i32 %80, %78
  %89 = or disjoint i32 %88, %84
  %90 = or disjoint i32 %89, %87
  %91 = or i32 %90, %71
  br label %92

92:                                               ; preds = %72, %44
  %93 = phi i32 [ %91, %72 ], [ %71, %44 ]
  %94 = load ptr, ptr %35, align 8, !tbaa !5
  %95 = tail call ptr @c_build_qualified_type(ptr noundef %94, i32 noundef %93) #20
  %96 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %95, ptr noundef nonnull %32, ptr noundef nonnull %34, ptr noundef null) #21
  %97 = getelementptr inbounds %struct.tree_exp, ptr %96, i64 0, i32 1
  store i32 %0, ptr %97, align 8, !tbaa !5
  %98 = load i64, ptr %34, align 8
  %99 = and i64 %98, 1048576
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %92
  br i1 %45, label %102, label %121

102:                                              ; preds = %101
  %103 = load i64, ptr %32, align 8
  %104 = and i64 %103, 1048576
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %118, label %112

106:                                              ; preds = %92
  %107 = load i64, ptr %96, align 8
  %108 = or i64 %107, 1048576
  store i64 %108, ptr %96, align 8
  %109 = load i64, ptr %34, align 8
  %110 = and i64 %109, 524288
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %124, label %130

112:                                              ; preds = %102
  %113 = load i64, ptr %96, align 8
  %114 = or i64 %113, 1048576
  store i64 %114, ptr %96, align 8
  %115 = load i64, ptr %34, align 8
  %116 = and i64 %115, 524288
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %125, label %130

118:                                              ; preds = %102
  %119 = and i64 %98, 524288
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %125, label %130

121:                                              ; preds = %101
  %122 = and i64 %98, 524288
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %134, label %130

124:                                              ; preds = %106
  br i1 %45, label %125, label %134

125:                                              ; preds = %112, %118, %124
  %126 = phi i64 [ %115, %112 ], [ %98, %118 ], [ %109, %124 ]
  %127 = load i64, ptr %32, align 8
  %128 = and i64 %127, 524288
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %112, %118, %121, %125, %106
  %131 = load i64, ptr %96, align 8
  %132 = or i64 %131, 524288
  store i64 %132, ptr %96, align 8
  %133 = load i64, ptr %34, align 8
  br label %134

134:                                              ; preds = %121, %130, %125, %124
  %135 = phi i64 [ %98, %121 ], [ %133, %130 ], [ %126, %125 ], [ %109, %124 ]
  %136 = and i64 %135, 1073741824
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %134
  tail call void @warn_deprecated_use(ptr noundef nonnull %34, ptr noundef null) #21
  br label %139

139:                                              ; preds = %138, %134
  %140 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !5
  %142 = icmp eq ptr %141, null
  br i1 %142, label %148, label %30, !llvm.loop !48

143:                                              ; preds = %14
  %144 = icmp eq i32 %8, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %143
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.14, ptr noundef %2) #21
  br label %146

146:                                              ; preds = %143, %145
  %147 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %148

148:                                              ; preds = %30, %139, %146, %28, %21, %12
  %149 = phi ptr [ %29, %28 ], [ %22, %21 ], [ %147, %146 ], [ %13, %12 ], [ %36, %30 ], [ %96, %139 ]
  ret ptr %149
}

; Function Attrs: optsize
declare i32 @objc_is_public(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookup_field(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 20
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %90, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 8, !tbaa !49
  %10 = icmp eq ptr %9, null
  br i1 %10, label %90, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.sorted_fields_type, ptr %9, i64 0, i32 1
  %13 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = load i32, ptr %9, align 8, !tbaa !51
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %77

17:                                               ; preds = %11, %71
  %18 = phi i32 [ %75, %71 ], [ %15, %11 ]
  %19 = phi i32 [ %74, %71 ], [ 0, %11 ]
  %20 = phi i32 [ %73, %71 ], [ %15, %11 ]
  br label %24

21:                                               ; preds = %65
  %22 = sub nsw i32 %20, %66
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %77, !llvm.loop !53

24:                                               ; preds = %17, %21
  %25 = phi i32 [ %18, %17 ], [ %22, %21 ]
  %26 = phi i32 [ %19, %17 ], [ %66, %21 ]
  %27 = add nuw nsw i32 %25, 1
  %28 = lshr i32 %27, 1
  %29 = add nsw i32 %28, %26
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %12, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !8
  %33 = getelementptr inbounds %struct.tree_decl_minimal, ptr %32, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !5
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %69

36:                                               ; preds = %24
  %37 = sext i32 %26 to i64
  %38 = getelementptr inbounds ptr, ptr %12, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !8
  %40 = getelementptr inbounds %struct.tree_decl_minimal, ptr %39, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !5
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %65

43:                                               ; preds = %36, %57
  %44 = phi i64 [ %46, %57 ], [ %37, %36 ]
  %45 = phi ptr [ %59, %57 ], [ %39, %36 ]
  %46 = add i64 %44, 1
  %47 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !5
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, 65534
  %51 = icmp eq i64 %50, 16
  br i1 %51, label %52, label %57

52:                                               ; preds = %43
  %53 = tail call fastcc ptr @lookup_field(ptr noundef nonnull %45, ptr noundef %1) #20
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %45, ptr noundef nonnull %53) #21
  br label %122

57:                                               ; preds = %52, %43
  %58 = getelementptr inbounds ptr, ptr %12, i64 %46
  %59 = load ptr, ptr %58, align 8, !tbaa !8
  %60 = getelementptr inbounds %struct.tree_decl_minimal, ptr %59, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !5
  %62 = icmp eq ptr %61, null
  br i1 %62, label %43, label %63, !llvm.loop !54

63:                                               ; preds = %57
  %64 = trunc i64 %46 to i32
  br label %65

65:                                               ; preds = %63, %36
  %66 = phi i32 [ %26, %36 ], [ %64, %63 ]
  %67 = phi ptr [ %32, %36 ], [ %45, %63 ]
  %68 = icmp sgt i32 %66, %20
  br i1 %68, label %122, label %21, !llvm.loop !53

69:                                               ; preds = %24
  %70 = icmp eq ptr %34, %1
  br i1 %70, label %77, label %71

71:                                               ; preds = %69
  %72 = icmp ult ptr %34, %1
  %73 = select i1 %72, i32 %20, i32 %29
  %74 = select i1 %72, i32 %29, i32 %26
  %75 = sub nsw i32 %73, %74
  %76 = icmp sgt i32 %75, 1
  br i1 %76, label %17, label %77, !llvm.loop !53

77:                                               ; preds = %69, %71, %21, %11
  %78 = phi i32 [ 0, %11 ], [ %66, %21 ], [ %74, %71 ], [ %26, %69 ]
  %79 = phi ptr [ %14, %11 ], [ %67, %21 ], [ %32, %71 ], [ %32, %69 ]
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds ptr, ptr %12, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !8
  %83 = getelementptr inbounds %struct.tree_decl_minimal, ptr %82, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !5
  %85 = icmp eq ptr %84, %1
  br i1 %85, label %119, label %86

86:                                               ; preds = %77
  %87 = getelementptr inbounds %struct.tree_decl_minimal, ptr %79, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !5
  %89 = icmp eq ptr %88, %1
  br i1 %89, label %119, label %122

90:                                               ; preds = %8, %2
  %91 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !5
  %93 = icmp eq ptr %92, null
  br i1 %93, label %122, label %94

94:                                               ; preds = %90, %115
  %95 = phi ptr [ %117, %115 ], [ %92, %90 ]
  %96 = getelementptr inbounds %struct.tree_decl_minimal, ptr %95, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !5
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %112

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.tree_common, ptr %95, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !5
  %102 = load i64, ptr %101, align 8
  %103 = and i64 %102, 65534
  %104 = icmp eq i64 %103, 16
  br i1 %104, label %105, label %112

105:                                              ; preds = %99
  %106 = tail call fastcc ptr @lookup_field(ptr noundef nonnull %95, ptr noundef %1) #20
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load ptr, ptr %96, align 8, !tbaa !5
  br label %112

110:                                              ; preds = %105
  %111 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %95, ptr noundef nonnull %106) #21
  br label %122

112:                                              ; preds = %108, %99, %94
  %113 = phi ptr [ %109, %108 ], [ null, %99 ], [ %97, %94 ]
  %114 = icmp eq ptr %113, %1
  br i1 %114, label %119, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.tree_common, ptr %95, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !5
  %118 = icmp eq ptr %117, null
  br i1 %118, label %122, label %94, !llvm.loop !55

119:                                              ; preds = %112, %77, %86
  %120 = phi ptr [ %79, %86 ], [ %82, %77 ], [ %95, %112 ]
  %121 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %120, ptr noundef null) #21
  br label %122

122:                                              ; preds = %65, %115, %90, %55, %110, %86, %119
  %123 = phi ptr [ %121, %119 ], [ null, %86 ], [ %111, %110 ], [ %56, %55 ], [ null, %90 ], [ null, %115 ], [ null, %65 ]
  ret ptr %123
}

; Function Attrs: optsize
declare void @error_at(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @warn_deprecated_use(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_indirect_ref(i32 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @default_conversion(ptr noundef %1) #20
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 10
  %10 = load i64, ptr %4, align 8
  br i1 %9, label %11, label %88

11:                                               ; preds = %3
  %12 = trunc i64 %10 to i16
  switch i16 %12, label %13 [
    i16 116, label %19
    i16 113, label %19
  ]

13:                                               ; preds = %11
  %14 = and i64 %10, 65535
  %15 = icmp eq i64 %14, 118
  %16 = load i32, ptr @warn_strict_aliasing, align 4
  %17 = icmp sgt i32 %16, 2
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %22, label %32

19:                                               ; preds = %11, %11
  %20 = load i32, ptr @warn_strict_aliasing, align 4, !tbaa !28
  %21 = icmp sgt i32 %20, 2
  br i1 %21, label %22, label %32

22:                                               ; preds = %13, %19
  %23 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !5
  %27 = tail call zeroext i8 @strict_aliasing_warning(ptr noundef %26, ptr noundef nonnull %6, ptr noundef %24) #21
  %28 = icmp eq i8 %27, 0
  %29 = load i64, ptr %4, align 8
  br i1 %28, label %32, label %30

30:                                               ; preds = %22
  %31 = or i64 %29, 8388608
  store i64 %31, ptr %4, align 8
  br label %32

32:                                               ; preds = %19, %30, %22, %13
  %33 = phi i64 [ %10, %19 ], [ %31, %30 ], [ %29, %22 ], [ %10, %13 ]
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 121
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  br label %48

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !5
  %42 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !5
  %44 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !5
  %46 = icmp eq ptr %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  tail call void @protected_set_expr_location(ptr noundef nonnull %41, i32 noundef %0) #21
  br label %98

48:                                               ; preds = %36, %39
  %49 = phi ptr [ %38, %36 ], [ %45, %39 ]
  %50 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %49, ptr noundef nonnull %4) #21
  %51 = getelementptr inbounds %struct.tree_type, ptr %49, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !5
  %53 = icmp eq ptr %52, null
  %54 = load i64, ptr %49, align 8
  br i1 %53, label %55, label %59

55:                                               ; preds = %48
  %56 = trunc i64 %54 to i16
  switch i16 %56, label %57 [
    i16 19, label %59
    i16 15, label %59
  ]

57:                                               ; preds = %55
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.15) #21
  %58 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %98

59:                                               ; preds = %55, %55, %48
  %60 = and i64 %54, 65535
  %61 = icmp eq i64 %60, 19
  %62 = load i32, ptr @c_inhibit_evaluation_warnings, align 4
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.16) #21
  %67 = load i64, ptr %49, align 8
  br label %68

68:                                               ; preds = %65, %59
  %69 = phi i64 [ %67, %65 ], [ %54, %59 ]
  %70 = and i64 %69, 1048576
  %71 = load i64, ptr %50, align 8
  %72 = and i64 %71, -1048577
  %73 = or disjoint i64 %72, %70
  store i64 %73, ptr %50, align 8
  %74 = load i64, ptr %49, align 8
  %75 = and i64 %74, 524288
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %68
  %78 = load i64, ptr %4, align 8
  %79 = and i64 %78, 65536
  br label %80

80:                                               ; preds = %77, %68
  %81 = phi i64 [ 65536, %68 ], [ %79, %77 ]
  %82 = and i64 %73, -65537
  %83 = or disjoint i64 %81, %82
  store i64 %83, ptr %50, align 8
  %84 = load i64, ptr %49, align 8
  %85 = and i64 %84, 524288
  %86 = and i64 %83, -524289
  %87 = or disjoint i64 %85, %86
  store i64 %87, ptr %50, align 8
  tail call void @protected_set_expr_location(ptr noundef nonnull %50, i32 noundef %0) #21
  br label %98

88:                                               ; preds = %3
  %89 = and i64 %10, 65535
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %88
  switch i32 %2, label %95 [
    i32 1, label %92
    i32 2, label %93
    i32 3, label %94
  ]

92:                                               ; preds = %91
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.17, ptr noundef nonnull %6) #21
  br label %96

93:                                               ; preds = %91
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.18, ptr noundef nonnull %6) #21
  br label %96

94:                                               ; preds = %91
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %6) #21
  br label %96

95:                                               ; preds = %91
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 2189, ptr noundef nonnull @.str.8) #21
  br label %96

96:                                               ; preds = %88, %95, %94, %93, %92
  %97 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %98

98:                                               ; preds = %57, %80, %96, %47
  %99 = phi ptr [ %41, %47 ], [ %97, %96 ], [ %50, %80 ], [ %58, %57 ]
  ret ptr %99
}

; Function Attrs: optsize
declare zeroext i8 @strict_aliasing_warning(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @protected_set_expr_location(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @warning_at(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_array_ref(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %182, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = icmp eq ptr %10, %6
  br i1 %11, label %182, label %12

12:                                               ; preds = %8
  %13 = load i64, ptr %5, align 8
  %14 = trunc i64 %13 to i16
  switch i16 %14, label %15 [
    i16 15, label %20
    i16 10, label %20
  ]

15:                                               ; preds = %12
  %16 = load i64, ptr %10, align 8
  %17 = trunc i64 %16 to i16
  switch i16 %17, label %18 [
    i16 15, label %20
    i16 10, label %20
  ]

18:                                               ; preds = %15
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.20) #21
  %19 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %182

20:                                               ; preds = %15, %15, %12, %12
  %21 = phi i1 [ true, %12 ], [ true, %12 ], [ false, %15 ], [ false, %15 ]
  %22 = phi ptr [ %2, %12 ], [ %2, %12 ], [ %1, %15 ], [ %1, %15 ]
  %23 = phi ptr [ %1, %12 ], [ %1, %12 ], [ %2, %15 ], [ %2, %15 ]
  %24 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = load i64, ptr %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = and i32 %27, 65535
  %29 = add nsw i32 %28, -6
  %30 = icmp ult i32 %29, 3
  br i1 %30, label %33, label %31

31:                                               ; preds = %20
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.21) #21
  %32 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %182

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !5
  %36 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !5
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 20
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.22) #21
  %42 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %182

43:                                               ; preds = %33
  br i1 %21, label %44, label %45

44:                                               ; preds = %43
  tail call void @warn_array_subscript_with_type_char(ptr noundef nonnull %22) #21
  br label %45

45:                                               ; preds = %44, %43
  %46 = tail call ptr @default_conversion(ptr noundef nonnull %22) #20
  %47 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !5
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 8
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 2250, ptr noundef nonnull @.str.8) #21
  br label %53

53:                                               ; preds = %45, %52
  %54 = load ptr, ptr %34, align 8, !tbaa !5
  %55 = load i64, ptr %54, align 8
  %56 = and i64 %55, 65535
  %57 = icmp eq i64 %56, 15
  br i1 %57, label %58, label %159

58:                                               ; preds = %53
  %59 = load i64, ptr %46, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 23
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.tree_common, ptr %54, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !5
  %65 = getelementptr inbounds %struct.tree_type, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !5
  %67 = icmp eq ptr %66, null
  br i1 %67, label %79, label %68

68:                                               ; preds = %62
  %69 = load i64, ptr %66, align 8
  %70 = and i64 %69, 65535
  %71 = icmp eq i64 %70, 23
  br i1 %71, label %79, label %72

72:                                               ; preds = %68, %58
  %73 = tail call zeroext i8 @c_mark_addressable(ptr noundef nonnull %23) #20, !range !24
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = load i64, ptr %46, align 8
  br label %79

77:                                               ; preds = %72
  %78 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %182

79:                                               ; preds = %75, %68, %62
  %80 = phi i64 [ %76, %75 ], [ %59, %68 ], [ %59, %62 ]
  %81 = and i64 %80, 65535
  %82 = icmp eq i64 %81, 23
  br i1 %82, label %83, label %96

83:                                               ; preds = %79
  %84 = load ptr, ptr %34, align 8, !tbaa !5
  %85 = getelementptr inbounds %struct.tree_type, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !5
  %87 = icmp eq ptr %86, null
  br i1 %87, label %96, label %88

88:                                               ; preds = %83
  %89 = tail call i32 @int_fits_type_p(ptr noundef nonnull %46, ptr noundef nonnull %86) #21
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = tail call zeroext i8 @c_mark_addressable(ptr noundef nonnull %23) #20, !range !24
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %182

96:                                               ; preds = %91, %88, %83, %79
  %97 = load i32, ptr @pedantic, align 4, !tbaa !28
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %120, label %99

99:                                               ; preds = %96, %103
  %100 = phi ptr [ %105, %103 ], [ %23, %96 ]
  %101 = load i64, ptr %100, align 8
  %102 = trunc i64 %101 to i16
  switch i16 %102, label %111 [
    i16 41, label %103
    i16 32, label %106
  ]

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.tree_exp, ptr %100, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !5
  br label %99, !llvm.loop !56

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.tree_decl_common, ptr %100, i64 0, i32 2
  %108 = load i64, ptr %107, align 8
  %109 = and i64 %108, 524288
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %99, %106
  %112 = load i32, ptr @flag_isoc99, align 4, !tbaa !28
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = tail call zeroext i8 @lvalue_p(ptr noundef nonnull %100) #20, !range !24
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114, %106
  %118 = phi ptr [ @.str.23, %106 ], [ @.str.24, %114 ]
  %119 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 834, ptr noundef nonnull %118) #21
  br label %120

120:                                              ; preds = %117, %114, %111, %96
  %121 = load ptr, ptr %34, align 8, !tbaa !5
  %122 = getelementptr inbounds %struct.tree_common, ptr %121, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !5
  %124 = tail call ptr @build4_stat(i32 noundef 45, ptr noundef %123, ptr noundef %23, ptr noundef nonnull %46, ptr noundef null, ptr noundef null) #21
  %125 = load ptr, ptr %34, align 8, !tbaa !5
  %126 = getelementptr inbounds %struct.tree_common, ptr %125, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !5
  %128 = load i64, ptr %127, align 8
  %129 = load i64, ptr %23, align 8
  %130 = or i64 %129, %128
  %131 = load i64, ptr %124, align 8
  %132 = and i64 %130, 1048576
  %133 = or i64 %132, %131
  store i64 %133, ptr %124, align 8
  %134 = load ptr, ptr %34, align 8, !tbaa !5
  %135 = getelementptr inbounds %struct.tree_common, ptr %134, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !5
  %137 = load i64, ptr %136, align 8
  %138 = trunc i64 %137 to i32
  %139 = load i64, ptr %23, align 8
  %140 = lshr i32 %138, 3
  %141 = or i64 %139, %131
  %142 = trunc i64 %141 to i32
  %143 = or i32 %140, %142
  %144 = and i32 %143, 65536
  %145 = zext nneg i32 %144 to i64
  %146 = and i64 %133, -65537
  %147 = or disjoint i64 %146, %145
  store i64 %147, ptr %124, align 8
  %148 = load ptr, ptr %34, align 8, !tbaa !5
  %149 = getelementptr inbounds %struct.tree_common, ptr %148, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !5
  %151 = load i64, ptr %150, align 8
  %152 = load i64, ptr %23, align 8
  %153 = or i64 %151, %152
  %154 = or i64 %153, %131
  %155 = and i64 %154, 524288
  %156 = and i64 %147, -524289
  %157 = or disjoint i64 %155, %156
  store i64 %157, ptr %124, align 8
  %158 = tail call ptr @require_complete_type(ptr noundef nonnull %124) #20
  tail call void @protected_set_expr_location(ptr noundef %158, i32 noundef %0) #21
  br label %182

159:                                              ; preds = %53
  %160 = tail call ptr @default_conversion(ptr noundef nonnull %23) #20
  %161 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %162 = icmp eq ptr %160, %161
  br i1 %162, label %182, label %163

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.tree_common, ptr %160, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !5
  %166 = load i64, ptr %165, align 8
  %167 = and i64 %166, 65535
  %168 = icmp eq i64 %167, 10
  br i1 %168, label %171, label %169

169:                                              ; preds = %163
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 2320, ptr noundef nonnull @.str.8) #21
  %170 = load ptr, ptr %164, align 8, !tbaa !5
  br label %171

171:                                              ; preds = %163, %169
  %172 = phi ptr [ %165, %163 ], [ %170, %169 ]
  %173 = getelementptr inbounds %struct.tree_common, ptr %172, i64 0, i32 2
  %174 = load ptr, ptr %173, align 8, !tbaa !5
  %175 = load i64, ptr %174, align 8
  %176 = and i64 %175, 65535
  %177 = icmp eq i64 %176, 20
  br i1 %177, label %178, label %179

178:                                              ; preds = %171
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 2321, ptr noundef nonnull @.str.8) #21
  br label %179

179:                                              ; preds = %171, %178
  %180 = tail call ptr @build_binary_op(i32 noundef %0, i32 noundef 63, ptr noundef nonnull %160, ptr noundef nonnull %46, i32 noundef 0) #20
  %181 = tail call ptr @build_indirect_ref(i32 noundef %0, ptr noundef %180, i32 noundef 1) #20
  br label %182

182:                                              ; preds = %18, %3, %8, %179, %159, %77, %94, %120, %41, %31
  %183 = phi ptr [ %42, %41 ], [ %32, %31 ], [ %19, %18 ], [ %158, %120 ], [ %95, %94 ], [ %78, %77 ], [ %181, %179 ], [ %160, %159 ], [ %6, %8 ], [ %5, %3 ]
  ret ptr %183
}

; Function Attrs: optsize
declare void @warn_array_subscript_with_type_char(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @c_mark_addressable(ptr noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %14, %1
  %3 = phi ptr [ %0, %1 ], [ %16, %14 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %47 [
    i16 41, label %6
    i16 121, label %14
    i16 45, label %14
    i16 43, label %14
    i16 44, label %14
    i16 119, label %17
    i16 51, label %17
    i16 32, label %19
    i16 33, label %19
    i16 34, label %19
    i16 36, label %19
    i16 29, label %44
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %8, i64 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 524288
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.49, ptr noundef nonnull %8) #21
  br label %47

14:                                               ; preds = %6, %2, %2, %2, %2
  %15 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  br label %2

17:                                               ; preds = %2, %2
  %18 = or i64 %4, 262144
  store i64 %18, ptr %3, align 8
  br label %47

19:                                               ; preds = %2, %2, %2, %2
  %20 = getelementptr inbounds %struct.tree_decl_common, ptr %3, i64 0, i32 2
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 524544
  %23 = icmp eq i64 %22, 524544
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = and i64 %4, 201326592
  %26 = and i64 %21, 33554432
  %27 = or disjoint i64 %26, %25
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.50, ptr noundef nonnull %3) #21
  br label %47

30:                                               ; preds = %24
  %31 = load i32, ptr @input_location, align 4, !tbaa !28
  %32 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %31, i32 noundef 0, ptr noundef nonnull @.str.51, ptr noundef nonnull %3) #21
  %33 = load i64, ptr %3, align 8
  br label %44

34:                                               ; preds = %19
  %35 = and i64 %21, 524288
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = and i64 %4, 201326592
  %39 = and i64 %21, 33554432
  %40 = or disjoint i64 %39, %38
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.52, ptr noundef nonnull %3) #21
  br label %47

43:                                               ; preds = %37
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.53, ptr noundef nonnull %3) #21
  br label %47

44:                                               ; preds = %2, %30, %34
  %45 = phi i64 [ %33, %30 ], [ %4, %34 ], [ %4, %2 ]
  %46 = or i64 %45, 262144
  store i64 %46, ptr %3, align 8
  br label %47

47:                                               ; preds = %2, %44, %42, %43, %29, %17, %13
  %48 = phi i8 [ 0, %29 ], [ 1, %17 ], [ 0, %13 ], [ 0, %43 ], [ 0, %42 ], [ 1, %44 ], [ 1, %2 ]
  ret i8 %48
}

; Function Attrs: optsize
declare i32 @int_fits_type_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build4_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_binary_op(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = icmp eq i32 %0, 0
  %16 = load i32, ptr @input_location, align 4
  %17 = select i1 %15, i32 %16, i32 %0
  %18 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = and i32 %21, 65535
  %23 = add nsw i32 %22, -6
  %24 = icmp ult i32 %23, 3
  br i1 %24, label %25, label %33

25:                                               ; preds = %5
  %26 = load i64, ptr %2, align 8
  %27 = trunc i64 %26 to i16
  switch i16 %27, label %33 [
    i16 23, label %31
    i16 189, label %28
  ]

28:                                               ; preds = %25
  %29 = and i64 %26, 8589934592
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25, %28
  %32 = tail call fastcc ptr @remove_c_maybe_const_expr(ptr noundef nonnull %2) #20
  br label %33

33:                                               ; preds = %25, %5, %31, %28
  %34 = phi i1 [ true, %31 ], [ false, %28 ], [ false, %5 ], [ false, %25 ]
  %35 = phi ptr [ %32, %31 ], [ %2, %28 ], [ %2, %5 ], [ %2, %25 ]
  %36 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !5
  %38 = load i64, ptr %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = and i32 %39, 65535
  %41 = add nsw i32 %40, -6
  %42 = icmp ult i32 %41, 3
  br i1 %42, label %43, label %68

43:                                               ; preds = %33
  %44 = load i64, ptr %3, align 8
  %45 = trunc i64 %44 to i16
  switch i16 %45, label %68 [
    i16 23, label %49
    i16 189, label %46
  ]

46:                                               ; preds = %43
  %47 = and i64 %44, 8589934592
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %68, label %49

49:                                               ; preds = %43, %46
  %50 = tail call fastcc ptr @remove_c_maybe_const_expr(ptr noundef nonnull %3) #20
  br i1 %34, label %51, label %68

51:                                               ; preds = %49
  %52 = load i64, ptr %2, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 23
  %55 = and i64 %44, 65535
  %56 = icmp eq i64 %55, 23
  %57 = and i1 %54, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = and i64 %52, 134217728
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = and i64 %44, 134217728
  %63 = icmp eq i64 %62, 0
  br label %64

64:                                               ; preds = %51, %61, %58
  %65 = phi i8 [ 1, %58 ], [ 1, %61 ], [ 0, %51 ]
  %66 = phi i1 [ false, %58 ], [ %63, %61 ], [ false, %51 ]
  %67 = zext i1 %66 to i8
  br label %68

68:                                               ; preds = %43, %33, %46, %49, %64
  %69 = phi i1 [ true, %64 ], [ false, %49 ], [ false, %46 ], [ false, %33 ], [ false, %43 ]
  %70 = phi ptr [ %50, %64 ], [ %50, %49 ], [ %3, %46 ], [ %3, %33 ], [ %3, %43 ]
  %71 = phi i8 [ %65, %64 ], [ 0, %49 ], [ 0, %46 ], [ 0, %33 ], [ 0, %43 ]
  %72 = phi i8 [ %67, %64 ], [ 0, %49 ], [ 0, %46 ], [ 0, %33 ], [ 0, %43 ]
  %73 = icmp eq i32 %4, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = tail call ptr @default_conversion(ptr noundef %35) #20
  %76 = tail call ptr @default_conversion(ptr noundef %70) #20
  br label %77

77:                                               ; preds = %74, %68
  %78 = phi ptr [ %76, %74 ], [ %70, %68 ]
  %79 = phi ptr [ %75, %74 ], [ %35, %68 ]
  %80 = getelementptr inbounds %struct.tree_common, ptr %79, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !5
  %82 = getelementptr inbounds %struct.tree_common, ptr %78, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !5
  %84 = load i64, ptr %81, align 8
  %85 = freeze i64 %84
  %86 = trunc i64 %85 to i32
  %87 = and i32 %86, 65535
  %88 = load i64, ptr %83, align 8
  %89 = freeze i64 %88
  %90 = trunc i64 %89 to i32
  %91 = and i32 %90, 65535
  %92 = load ptr, ptr @global_trees, align 16
  br label %93

93:                                               ; preds = %101, %77
  %94 = phi ptr [ %79, %77 ], [ %99, %101 ]
  %95 = load i64, ptr %94, align 8
  %96 = trunc i64 %95 to i16
  switch i16 %96, label %105 [
    i16 116, label %97
    i16 113, label %97
    i16 117, label %97
  ]

97:                                               ; preds = %93, %93, %93
  %98 = getelementptr inbounds %struct.tree_exp, ptr %94, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !5
  %100 = icmp eq ptr %99, %92
  br i1 %100, label %105, label %101

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.tree_common, ptr %99, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !5
  %104 = icmp eq ptr %81, %103
  br i1 %104, label %93, label %105, !llvm.loop !57

105:                                              ; preds = %93, %97, %101
  br label %106

106:                                              ; preds = %105, %114
  %107 = phi ptr [ %112, %114 ], [ %78, %105 ]
  %108 = load i64, ptr %107, align 8
  %109 = trunc i64 %108 to i16
  switch i16 %109, label %118 [
    i16 116, label %110
    i16 113, label %110
    i16 117, label %110
  ]

110:                                              ; preds = %106, %106, %106
  %111 = getelementptr inbounds %struct.tree_exp, ptr %107, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !5
  %113 = icmp eq ptr %112, %92
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.tree_common, ptr %112, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !5
  %117 = icmp eq ptr %83, %116
  br i1 %117, label %106, label %118, !llvm.loop !58

118:                                              ; preds = %106, %110, %114
  %119 = icmp eq i32 %87, 0
  %120 = icmp eq i32 %91, 0
  %121 = or i1 %119, %120
  br i1 %121, label %1159, label %122

122:                                              ; preds = %118
  %123 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 91), align 8, !tbaa !59
  %124 = tail call ptr %123(i32 noundef %1, ptr noundef nonnull %81, ptr noundef nonnull %83) #21
  %125 = icmp eq ptr %124, null
  br i1 %125, label %128, label %126

126:                                              ; preds = %122
  tail call void (i32, ptr, ...) @error_at(i32 noundef %17, ptr noundef nonnull %124) #21
  %127 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %1159

128:                                              ; preds = %122
  switch i32 %1, label %133 [
    i32 63, label %129
    i32 64, label %129
    i32 65, label %129
    i32 67, label %129
    i32 68, label %129
    i32 69, label %129
    i32 70, label %129
    i32 76, label %129
  ]

129:                                              ; preds = %128, %128, %128, %128, %128, %128, %128, %128
  %130 = load i64, ptr %94, align 8
  %131 = and i64 %130, 65535
  %132 = icmp eq i64 %131, 190
  br i1 %132, label %137, label %144

133:                                              ; preds = %128
  %134 = load i64, ptr %94, align 8
  %135 = and i64 %134, 65535
  %136 = icmp eq i64 %135, 190
  br i1 %136, label %137, label %157

137:                                              ; preds = %133, %129
  %138 = phi i1 [ false, %133 ], [ true, %129 ]
  %139 = phi i1 [ true, %133 ], [ false, %129 ]
  %140 = getelementptr inbounds %struct.tree_exp, ptr %94, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !5
  %142 = getelementptr inbounds %struct.tree_common, ptr %141, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !5
  br label %149

144:                                              ; preds = %129
  %145 = tail call ptr @excess_precision_type(ptr noundef nonnull %81) #21
  %146 = icmp eq ptr %145, null
  br i1 %146, label %149, label %147

147:                                              ; preds = %144
  %148 = tail call ptr @convert(ptr noundef nonnull %145, ptr noundef nonnull %94) #21
  br label %149

149:                                              ; preds = %144, %147, %137
  %150 = phi i1 [ %138, %137 ], [ true, %147 ], [ true, %144 ]
  %151 = phi i1 [ %139, %137 ], [ false, %147 ], [ false, %144 ]
  %152 = phi ptr [ %141, %137 ], [ %148, %147 ], [ %94, %144 ]
  %153 = phi ptr [ %143, %137 ], [ %145, %147 ], [ %81, %144 ]
  %154 = load i64, ptr %107, align 8
  %155 = and i64 %154, 65535
  %156 = icmp eq i64 %155, 190
  br i1 %156, label %161, label %169

157:                                              ; preds = %133
  %158 = load i64, ptr %107, align 8
  %159 = and i64 %158, 65535
  %160 = icmp eq i64 %159, 190
  br i1 %160, label %161, label %175

161:                                              ; preds = %157, %149
  %162 = phi ptr [ %81, %157 ], [ %153, %149 ]
  %163 = phi ptr [ %94, %157 ], [ %152, %149 ]
  %164 = phi i1 [ false, %157 ], [ %150, %149 ]
  %165 = getelementptr inbounds %struct.tree_exp, ptr %107, i64 0, i32 3
  %166 = load ptr, ptr %165, align 8, !tbaa !5
  %167 = getelementptr inbounds %struct.tree_common, ptr %166, i64 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !5
  br label %175

169:                                              ; preds = %149
  br i1 %151, label %175, label %170

170:                                              ; preds = %169
  %171 = tail call ptr @excess_precision_type(ptr noundef nonnull %83) #21
  %172 = icmp eq ptr %171, null
  br i1 %172, label %175, label %173

173:                                              ; preds = %170
  %174 = tail call ptr @convert(ptr noundef nonnull %171, ptr noundef nonnull %107) #21
  br label %175

175:                                              ; preds = %157, %169, %170, %173, %161
  %176 = phi ptr [ %162, %161 ], [ %153, %173 ], [ %153, %170 ], [ %153, %169 ], [ %81, %157 ]
  %177 = phi ptr [ %163, %161 ], [ %152, %173 ], [ %152, %170 ], [ %152, %169 ], [ %94, %157 ]
  %178 = phi i1 [ %164, %161 ], [ %150, %173 ], [ %150, %170 ], [ %150, %169 ], [ false, %157 ]
  %179 = phi ptr [ %166, %161 ], [ %174, %173 ], [ %107, %170 ], [ %107, %169 ], [ %107, %157 ]
  %180 = phi ptr [ %168, %161 ], [ %171, %173 ], [ %83, %170 ], [ %83, %169 ], [ %83, %157 ]
  %181 = tail call zeroext i8 @objc_compare_types(ptr noundef %176, ptr noundef %180, i32 noundef -3, ptr noundef null) #21
  switch i32 %1, label %723 [
    i32 63, label %182
    i32 64, label %194
    i32 65, label %724
    i32 67, label %208
    i32 68, label %208
    i32 69, label %208
    i32 70, label %208
    i32 76, label %208
    i32 89, label %267
    i32 87, label %267
    i32 88, label %267
    i32 71, label %296
    i32 73, label %296
    i32 91, label %332
    i32 92, label %332
    i32 93, label %332
    i32 94, label %332
    i32 95, label %332
    i32 84, label %409
    i32 83, label %452
    i32 101, label %491
    i32 102, label %491
    i32 98, label %632
    i32 100, label %632
    i32 97, label %632
    i32 99, label %632
  ]

182:                                              ; preds = %175
  %183 = icmp eq i32 %87, 10
  %184 = icmp eq i32 %91, 8
  %185 = and i1 %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = tail call ptr @pointer_int_sum(i32 noundef %17, i32 noundef 63, ptr noundef %177, ptr noundef %179) #21
  br label %1123

188:                                              ; preds = %182
  %189 = icmp eq i32 %91, 10
  %190 = icmp eq i32 %87, 8
  %191 = and i1 %189, %190
  br i1 %191, label %192, label %724

192:                                              ; preds = %188
  %193 = tail call ptr @pointer_int_sum(i32 noundef %17, i32 noundef 63, ptr noundef %179, ptr noundef %177) #21
  br label %1123

194:                                              ; preds = %175
  %195 = icmp eq i32 %87, 10
  %196 = icmp eq i32 %91, 10
  %197 = and i1 %195, %196
  br i1 %197, label %198, label %203

198:                                              ; preds = %194
  %199 = tail call fastcc i32 @comp_target_types(i32 noundef %17, ptr noundef %176, ptr noundef %180) #20
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %755, label %201

201:                                              ; preds = %198
  %202 = tail call fastcc ptr @pointer_diff(i32 noundef %17, ptr noundef %177, ptr noundef %179) #20
  br label %1123

203:                                              ; preds = %194
  %204 = icmp eq i32 %91, 8
  %205 = and i1 %195, %204
  br i1 %205, label %206, label %724

206:                                              ; preds = %203
  %207 = tail call ptr @pointer_int_sum(i32 noundef %17, i32 noundef 64, ptr noundef %177, ptr noundef %179) #21
  br label %1123

208:                                              ; preds = %175, %175, %175, %175, %175
  tail call void @warn_for_div_by_zero(i32 noundef %17, ptr noundef %179) #21
  %209 = and i32 %86, 65534
  %210 = icmp eq i32 %209, 8
  %211 = icmp eq i32 %87, 11
  %212 = or i1 %210, %211
  %213 = add nsw i32 %87, -13
  %214 = icmp ult i32 %213, 2
  %215 = or i1 %212, %214
  br i1 %215, label %216, label %755

216:                                              ; preds = %208
  %217 = and i32 %90, 65534
  %218 = icmp eq i32 %217, 8
  %219 = icmp eq i32 %91, 11
  %220 = or i1 %218, %219
  %221 = add nsw i32 %91, -13
  %222 = icmp ult i32 %221, 2
  %223 = or i1 %220, %222
  br i1 %223, label %224, label %755

224:                                              ; preds = %216
  br i1 %214, label %225, label %233

225:                                              ; preds = %224
  %226 = getelementptr inbounds %struct.tree_common, ptr %177, i64 0, i32 2
  %227 = load ptr, ptr %226, align 8, !tbaa !5
  %228 = getelementptr inbounds %struct.tree_common, ptr %227, i64 0, i32 2
  %229 = load ptr, ptr %228, align 8, !tbaa !5
  %230 = load i64, ptr %229, align 8
  %231 = trunc i64 %230 to i32
  %232 = and i32 %231, 65535
  br label %233

233:                                              ; preds = %224, %225
  %234 = phi i32 [ %232, %225 ], [ %87, %224 ]
  br i1 %222, label %235, label %243

235:                                              ; preds = %233
  %236 = getelementptr inbounds %struct.tree_common, ptr %179, i64 0, i32 2
  %237 = load ptr, ptr %236, align 8, !tbaa !5
  %238 = getelementptr inbounds %struct.tree_common, ptr %237, i64 0, i32 2
  %239 = load ptr, ptr %238, align 8, !tbaa !5
  %240 = load i64, ptr %239, align 8
  %241 = trunc i64 %240 to i32
  %242 = and i32 %241, 65535
  br label %243

243:                                              ; preds = %233, %235
  %244 = phi i32 [ %242, %235 ], [ %91, %233 ]
  %245 = icmp eq i32 %234, 8
  %246 = icmp eq i32 %244, 8
  %247 = select i1 %245, i1 %246, i1 false
  br i1 %247, label %252, label %248

248:                                              ; preds = %243
  %249 = icmp eq i32 %234, 11
  %250 = icmp eq i32 %244, 11
  %251 = select i1 %249, i1 %250, i1 false
  br i1 %251, label %252, label %724

252:                                              ; preds = %248, %243
  %253 = load ptr, ptr %18, align 8, !tbaa !5
  %254 = load i64, ptr %253, align 8
  %255 = and i64 %254, 2097152
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %257, label %264

257:                                              ; preds = %252
  %258 = load i64, ptr %179, align 8
  %259 = and i64 %258, 65535
  %260 = icmp eq i64 %259, 23
  br i1 %260, label %261, label %264

261:                                              ; preds = %257
  %262 = tail call i32 @integer_all_onesp(ptr noundef nonnull %179) #21
  %263 = icmp eq i32 %262, 0
  br label %264

264:                                              ; preds = %257, %261, %252
  %265 = phi i1 [ true, %252 ], [ false, %257 ], [ %263, %261 ]
  %266 = zext i1 %265 to i32
  br label %724

267:                                              ; preds = %175, %175, %175
  %268 = icmp eq i32 %87, 8
  %269 = icmp eq i32 %91, 8
  %270 = and i1 %268, %269
  br i1 %270, label %755, label %271

271:                                              ; preds = %267
  %272 = icmp eq i32 %87, 14
  %273 = icmp eq i32 %91, 14
  %274 = and i1 %272, %273
  br i1 %274, label %275, label %724

275:                                              ; preds = %271
  %276 = load i64, ptr %176, align 8
  %277 = and i64 %276, 65535
  %278 = icmp eq i64 %277, 14
  br i1 %278, label %279, label %285

279:                                              ; preds = %275
  %280 = getelementptr inbounds %struct.tree_common, ptr %176, i64 0, i32 2
  %281 = load ptr, ptr %280, align 8, !tbaa !5
  %282 = load i64, ptr %281, align 8
  %283 = and i64 %282, 65535
  %284 = icmp eq i64 %283, 9
  br i1 %284, label %724, label %285

285:                                              ; preds = %279, %275
  %286 = load i64, ptr %180, align 8
  %287 = and i64 %286, 65535
  %288 = icmp eq i64 %287, 14
  br i1 %288, label %289, label %295

289:                                              ; preds = %285
  %290 = getelementptr inbounds %struct.tree_common, ptr %180, i64 0, i32 2
  %291 = load ptr, ptr %290, align 8, !tbaa !5
  %292 = load i64, ptr %291, align 8
  %293 = and i64 %292, 65535
  %294 = icmp eq i64 %293, 9
  br i1 %294, label %724, label %295

295:                                              ; preds = %289, %285
  br label %724

296:                                              ; preds = %175, %175
  tail call void @warn_for_div_by_zero(i32 noundef %17, ptr noundef %179) #21
  %297 = icmp eq i32 %87, 14
  %298 = icmp eq i32 %91, 14
  %299 = and i1 %297, %298
  br i1 %299, label %300, label %313

300:                                              ; preds = %296
  %301 = getelementptr inbounds %struct.tree_common, ptr %176, i64 0, i32 2
  %302 = load ptr, ptr %301, align 8, !tbaa !5
  %303 = load i64, ptr %302, align 8
  %304 = and i64 %303, 65535
  %305 = icmp eq i64 %304, 8
  br i1 %305, label %306, label %312

306:                                              ; preds = %300
  %307 = getelementptr inbounds %struct.tree_common, ptr %180, i64 0, i32 2
  %308 = load ptr, ptr %307, align 8, !tbaa !5
  %309 = load i64, ptr %308, align 8
  %310 = and i64 %309, 65535
  %311 = icmp eq i64 %310, 8
  br i1 %311, label %724, label %312

312:                                              ; preds = %306, %300
  br label %724

313:                                              ; preds = %296
  %314 = icmp eq i32 %87, 8
  %315 = icmp eq i32 %91, 8
  %316 = and i1 %314, %315
  br i1 %316, label %317, label %724

317:                                              ; preds = %313
  %318 = load ptr, ptr %18, align 8, !tbaa !5
  %319 = load i64, ptr %318, align 8
  %320 = and i64 %319, 2097152
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %322, label %329

322:                                              ; preds = %317
  %323 = load i64, ptr %179, align 8
  %324 = and i64 %323, 65535
  %325 = icmp eq i64 %324, 23
  br i1 %325, label %326, label %329

326:                                              ; preds = %322
  %327 = tail call i32 @integer_all_onesp(ptr noundef nonnull %179) #21
  %328 = icmp eq i32 %327, 0
  br label %329

329:                                              ; preds = %322, %326, %317
  %330 = phi i1 [ true, %317 ], [ false, %322 ], [ %328, %326 ]
  %331 = zext i1 %330 to i32
  br label %755

332:                                              ; preds = %175, %175, %175, %175, %175
  %333 = and i32 %86, 65533
  %334 = icmp eq i32 %333, 8
  %335 = and i32 %86, 65531
  %336 = icmp eq i32 %335, 9
  %337 = or i1 %334, %336
  %338 = icmp eq i32 %87, 11
  %339 = or i1 %337, %338
  br i1 %339, label %340, label %352

340:                                              ; preds = %332
  %341 = and i32 %90, 65533
  %342 = icmp eq i32 %341, 8
  %343 = and i32 %90, 65531
  %344 = icmp eq i32 %343, 9
  %345 = or i1 %342, %344
  %346 = icmp eq i32 %91, 11
  %347 = or i1 %345, %346
  br i1 %347, label %348, label %352

348:                                              ; preds = %340
  %349 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !8
  %350 = tail call ptr @c_common_truthvalue_conversion(i32 noundef %17, ptr noundef %177) #21
  %351 = tail call ptr @c_common_truthvalue_conversion(i32 noundef %17, ptr noundef %179) #21
  br label %352

352:                                              ; preds = %340, %332, %348
  %353 = phi i32 [ 1, %348 ], [ 0, %340 ], [ 0, %332 ]
  %354 = phi ptr [ %349, %348 ], [ null, %340 ], [ null, %332 ]
  %355 = phi ptr [ %351, %348 ], [ %179, %340 ], [ %179, %332 ]
  %356 = phi ptr [ %350, %348 ], [ %177, %340 ], [ %177, %332 ]
  switch i32 %1, label %724 [
    i32 91, label %357
    i32 92, label %383
  ]

357:                                              ; preds = %352
  br i1 %69, label %358, label %379

358:                                              ; preds = %357
  %359 = load i64, ptr %2, align 8
  %360 = and i64 %359, 65535
  %361 = icmp eq i64 %360, 23
  br i1 %361, label %362, label %379

362:                                              ; preds = %358
  %363 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 47), align 8, !tbaa !8
  %364 = icmp eq ptr %356, %363
  br i1 %364, label %369, label %365

365:                                              ; preds = %362
  %366 = load i64, ptr %3, align 8
  %367 = and i64 %366, 65535
  %368 = icmp eq i64 %367, 23
  br i1 %368, label %372, label %379

369:                                              ; preds = %362
  %370 = and i64 %359, 134217728
  %371 = icmp eq i64 %370, 0
  br label %379

372:                                              ; preds = %365
  %373 = and i64 %359, 134217728
  %374 = icmp eq i64 %373, 0
  br i1 %374, label %375, label %379

375:                                              ; preds = %372
  %376 = load i64, ptr %3, align 8
  %377 = and i64 %376, 134217728
  %378 = icmp eq i64 %377, 0
  br label %379

379:                                              ; preds = %369, %372, %357, %358, %375, %365
  %380 = phi i8 [ 0, %365 ], [ 1, %375 ], [ 0, %358 ], [ 0, %357 ], [ 1, %372 ], [ 1, %369 ]
  %381 = phi i1 [ false, %365 ], [ %378, %375 ], [ false, %358 ], [ false, %357 ], [ false, %372 ], [ %371, %369 ]
  %382 = zext i1 %381 to i8
  br label %724

383:                                              ; preds = %352
  br i1 %69, label %384, label %405

384:                                              ; preds = %383
  %385 = load i64, ptr %2, align 8
  %386 = and i64 %385, 65535
  %387 = icmp eq i64 %386, 23
  br i1 %387, label %388, label %405

388:                                              ; preds = %384
  %389 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 46), align 16, !tbaa !8
  %390 = icmp eq ptr %356, %389
  br i1 %390, label %395, label %391

391:                                              ; preds = %388
  %392 = load i64, ptr %3, align 8
  %393 = and i64 %392, 65535
  %394 = icmp eq i64 %393, 23
  br i1 %394, label %398, label %405

395:                                              ; preds = %388
  %396 = and i64 %385, 134217728
  %397 = icmp eq i64 %396, 0
  br label %405

398:                                              ; preds = %391
  %399 = and i64 %385, 134217728
  %400 = icmp eq i64 %399, 0
  br i1 %400, label %401, label %405

401:                                              ; preds = %398
  %402 = load i64, ptr %3, align 8
  %403 = and i64 %402, 134217728
  %404 = icmp eq i64 %403, 0
  br label %405

405:                                              ; preds = %395, %398, %383, %384, %401, %391
  %406 = phi i8 [ 0, %391 ], [ 1, %401 ], [ 0, %384 ], [ 0, %383 ], [ 1, %398 ], [ 1, %395 ]
  %407 = phi i1 [ false, %391 ], [ %404, %401 ], [ false, %384 ], [ false, %383 ], [ false, %398 ], [ %397, %395 ]
  %408 = zext i1 %407 to i8
  br label %724

409:                                              ; preds = %175
  %410 = icmp eq i32 %87, 8
  %411 = icmp eq i32 %87, 11
  %412 = or i1 %410, %411
  %413 = icmp eq i32 %91, 8
  %414 = and i1 %412, %413
  br i1 %414, label %415, label %724

415:                                              ; preds = %409
  %416 = load i64, ptr %179, align 8
  %417 = and i64 %416, 65535
  %418 = icmp eq i64 %417, 23
  br i1 %418, label %419, label %441

419:                                              ; preds = %415
  %420 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %179) #21
  %421 = icmp slt i32 %420, 0
  br i1 %421, label %422, label %425

422:                                              ; preds = %419
  %423 = load i32, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !28
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %437, label %441

425:                                              ; preds = %419
  %426 = tail call i32 @integer_zerop(ptr noundef nonnull %179) #21
  %427 = icmp eq i32 %426, 0
  %428 = getelementptr inbounds %struct.tree_type, ptr %176, i64 0, i32 6
  %429 = load i32, ptr %428, align 4
  %430 = and i32 %429, 1023
  %431 = zext nneg i32 %430 to i64
  %432 = tail call i32 @compare_tree_int(ptr noundef nonnull %179, i64 noundef %431) #21
  %433 = icmp sgt i32 %432, -1
  br i1 %433, label %434, label %441

434:                                              ; preds = %425
  %435 = load i32, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !28
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %441

437:                                              ; preds = %434, %422
  %438 = phi ptr [ @.str.126, %422 ], [ @.str.127, %434 ]
  %439 = phi i1 [ false, %422 ], [ %427, %434 ]
  %440 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull %438) #21
  br label %441

441:                                              ; preds = %437, %422, %434, %425, %415
  %442 = phi i1 [ false, %422 ], [ %427, %434 ], [ %427, %425 ], [ false, %415 ], [ %439, %437 ]
  %443 = phi i8 [ 0, %422 ], [ 0, %434 ], [ %72, %425 ], [ %72, %415 ], [ 0, %437 ]
  %444 = getelementptr inbounds %struct.tree_common, ptr %179, i64 0, i32 2
  %445 = load ptr, ptr %444, align 8, !tbaa !5
  %446 = getelementptr inbounds %struct.tree_type, ptr %445, i64 0, i32 16
  %447 = load ptr, ptr %446, align 8, !tbaa !5
  %448 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !8
  %449 = icmp eq ptr %447, %448
  br i1 %449, label %755, label %450

450:                                              ; preds = %441
  %451 = tail call ptr @convert(ptr noundef %448, ptr noundef nonnull %179) #21
  br label %755

452:                                              ; preds = %175
  %453 = icmp eq i32 %87, 8
  %454 = icmp eq i32 %87, 11
  %455 = or i1 %453, %454
  %456 = icmp eq i32 %91, 8
  %457 = and i1 %455, %456
  br i1 %457, label %458, label %724

458:                                              ; preds = %452
  %459 = load i64, ptr %179, align 8
  %460 = and i64 %459, 65535
  %461 = icmp eq i64 %460, 23
  br i1 %461, label %462, label %481

462:                                              ; preds = %458
  %463 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %179) #21
  %464 = icmp slt i32 %463, 0
  br i1 %464, label %465, label %468

465:                                              ; preds = %462
  %466 = load i32, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !28
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %478, label %481

468:                                              ; preds = %462
  %469 = getelementptr inbounds %struct.tree_type, ptr %176, i64 0, i32 6
  %470 = load i32, ptr %469, align 4
  %471 = and i32 %470, 1023
  %472 = zext nneg i32 %471 to i64
  %473 = tail call i32 @compare_tree_int(ptr noundef nonnull %179, i64 noundef %472) #21
  %474 = icmp sgt i32 %473, -1
  br i1 %474, label %475, label %481

475:                                              ; preds = %468
  %476 = load i32, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !28
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %478, label %481

478:                                              ; preds = %475, %465
  %479 = phi ptr [ @.str.128, %465 ], [ @.str.129, %475 ]
  %480 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull %479) #21
  br label %481

481:                                              ; preds = %478, %465, %475, %468, %458
  %482 = phi i8 [ 0, %465 ], [ 0, %475 ], [ %72, %468 ], [ %72, %458 ], [ 0, %478 ]
  %483 = getelementptr inbounds %struct.tree_common, ptr %179, i64 0, i32 2
  %484 = load ptr, ptr %483, align 8, !tbaa !5
  %485 = getelementptr inbounds %struct.tree_type, ptr %484, i64 0, i32 16
  %486 = load ptr, ptr %485, align 8, !tbaa !5
  %487 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !8
  %488 = icmp eq ptr %486, %487
  br i1 %488, label %755, label %489

489:                                              ; preds = %481
  %490 = tail call ptr @convert(ptr noundef %487, ptr noundef nonnull %179) #21
  br label %755

491:                                              ; preds = %175, %175
  %492 = load i64, ptr %176, align 8
  %493 = trunc i64 %492 to i16
  switch i16 %493, label %500 [
    i16 9, label %509
    i16 13, label %494
    i16 14, label %494
  ]

494:                                              ; preds = %491, %491
  %495 = getelementptr inbounds %struct.tree_common, ptr %176, i64 0, i32 2
  %496 = load ptr, ptr %495, align 8, !tbaa !5
  %497 = load i64, ptr %496, align 8
  %498 = and i64 %497, 65535
  %499 = icmp eq i64 %498, 9
  br i1 %499, label %509, label %500

500:                                              ; preds = %491, %494
  %501 = load i64, ptr %180, align 8
  %502 = trunc i64 %501 to i16
  switch i16 %502, label %511 [
    i16 9, label %509
    i16 13, label %503
    i16 14, label %503
  ]

503:                                              ; preds = %500, %500
  %504 = getelementptr inbounds %struct.tree_common, ptr %180, i64 0, i32 2
  %505 = load ptr, ptr %504, align 8, !tbaa !5
  %506 = load i64, ptr %505, align 8
  %507 = and i64 %506, 65535
  %508 = icmp eq i64 %507, 9
  br i1 %508, label %509, label %511

509:                                              ; preds = %500, %491, %503, %494
  %510 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %17, i32 noundef 89, ptr noundef nonnull @.str.130) #21
  br label %511

511:                                              ; preds = %500, %509, %503
  %512 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !8
  %513 = icmp eq i32 %87, 8
  %514 = and i32 %86, 65534
  %515 = icmp eq i32 %514, 8
  br i1 %515, label %518, label %516

516:                                              ; preds = %511
  %517 = trunc i64 %85 to i16
  switch i16 %517, label %523 [
    i16 13, label %518
    i16 11, label %518
  ]

518:                                              ; preds = %516, %516, %511
  %519 = and i32 %90, 65534
  %520 = icmp eq i32 %519, 8
  br i1 %520, label %724, label %521

521:                                              ; preds = %518
  %522 = trunc i64 %89 to i16
  switch i16 %522, label %523 [
    i16 13, label %724
    i16 11, label %724
  ]

523:                                              ; preds = %521, %516
  %524 = icmp eq i32 %87, 10
  %525 = icmp eq i32 %91, 10
  %526 = and i1 %524, %525
  br i1 %526, label %527, label %592

527:                                              ; preds = %523
  %528 = getelementptr inbounds %struct.tree_common, ptr %176, i64 0, i32 2
  %529 = load ptr, ptr %528, align 8, !tbaa !5
  %530 = getelementptr inbounds %struct.tree_common, ptr %180, i64 0, i32 2
  %531 = load ptr, ptr %530, align 8, !tbaa !5
  %532 = load i64, ptr %529, align 8
  %533 = lshr i64 %532, 56
  %534 = trunc i64 %533 to i8
  %535 = load i64, ptr %531, align 8
  %536 = lshr i64 %535, 56
  %537 = trunc i64 %536 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #22
  store i8 0, ptr %6, align 1, !tbaa !5
  %538 = tail call fastcc i32 @comp_target_types(i32 noundef %17, ptr noundef nonnull %176, ptr noundef %180) #20
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %540, label %578

540:                                              ; preds = %527
  %541 = tail call fastcc zeroext i8 @null_pointer_constant_p(ptr noundef %2) #20, !range !24
  %542 = icmp eq i8 %541, 0
  br i1 %542, label %543, label %588

543:                                              ; preds = %540
  %544 = tail call fastcc zeroext i8 @null_pointer_constant_p(ptr noundef %3) #20, !range !24
  %545 = icmp eq i8 %544, 0
  br i1 %545, label %546, label %588

546:                                              ; preds = %543
  %547 = call fastcc zeroext i8 @addr_space_superset(i8 noundef zeroext %534, i8 noundef zeroext %537, ptr noundef nonnull %6) #20, !range !24
  %548 = icmp eq i8 %547, 0
  br i1 %548, label %590, label %549

549:                                              ; preds = %546
  %550 = load i64, ptr %529, align 8
  %551 = trunc i64 %550 to i32
  %552 = and i32 %551, 65535
  %553 = icmp eq i32 %552, 19
  br i1 %553, label %554, label %563

554:                                              ; preds = %549
  %555 = load i32, ptr @pedantic, align 4, !tbaa !28
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %581, label %557

557:                                              ; preds = %554
  %558 = load i64, ptr %531, align 8
  %559 = and i64 %558, 65535
  %560 = icmp eq i64 %559, 20
  br i1 %560, label %561, label %581

561:                                              ; preds = %557
  %562 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %17, i32 noundef 834, ptr noundef nonnull @.str.132) #21
  br label %581

563:                                              ; preds = %549
  %564 = load i64, ptr %531, align 8
  %565 = and i64 %564, 65535
  %566 = icmp eq i64 %565, 19
  br i1 %566, label %567, label %574

567:                                              ; preds = %563
  %568 = load i32, ptr @pedantic, align 4, !tbaa !28
  %569 = icmp ne i32 %568, 0
  %570 = icmp eq i32 %552, 20
  %571 = and i1 %570, %569
  br i1 %571, label %572, label %581

572:                                              ; preds = %567
  %573 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %17, i32 noundef 834, ptr noundef nonnull @.str.132) #21
  br label %581

574:                                              ; preds = %563
  %575 = icmp eq i8 %181, 0
  br i1 %575, label %576, label %581

576:                                              ; preds = %574
  %577 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %17, i32 noundef 0, ptr noundef nonnull @.str.133) #21
  br label %581

578:                                              ; preds = %527
  %579 = tail call fastcc ptr @common_pointer_type(ptr noundef nonnull %176, ptr noundef nonnull %180) #20
  %580 = icmp eq ptr %579, null
  br i1 %580, label %581, label %588

581:                                              ; preds = %576, %574, %567, %572, %554, %557, %561, %578
  %582 = load i8, ptr %6, align 1, !tbaa !5
  %583 = zext i8 %582 to i32
  %584 = shl nuw nsw i32 %583, 8
  %585 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !8
  %586 = tail call ptr @build_qualified_type(ptr noundef %585, i32 noundef %584) #21
  %587 = tail call ptr @build_pointer_type(ptr noundef %586) #21
  br label %588

588:                                              ; preds = %581, %578, %540, %543
  %589 = phi ptr [ %579, %578 ], [ %587, %581 ], [ %176, %543 ], [ %180, %540 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #22
  br label %755

590:                                              ; preds = %546
  tail call void (i32, ptr, ...) @error_at(i32 noundef %17, ptr noundef nonnull @.str.131) #21
  %591 = load ptr, ptr @global_trees, align 16, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #22
  br label %1159

592:                                              ; preds = %523
  br i1 %524, label %593, label %608

593:                                              ; preds = %592
  %594 = tail call fastcc zeroext i8 @null_pointer_constant_p(ptr noundef %3) #20, !range !24
  %595 = icmp eq i8 %594, 0
  br i1 %595, label %608, label %596

596:                                              ; preds = %593
  %597 = load i64, ptr %177, align 8
  %598 = and i64 %597, 65535
  %599 = icmp eq i64 %598, 121
  br i1 %599, label %600, label %755

600:                                              ; preds = %596
  %601 = getelementptr inbounds %struct.tree_exp, ptr %177, i64 0, i32 3
  %602 = load ptr, ptr %601, align 8, !tbaa !5
  %603 = tail call zeroext i8 @decl_with_nonnull_addr_p(ptr noundef %602) #21
  %604 = icmp eq i8 %603, 0
  br i1 %604, label %755, label %605

605:                                              ; preds = %600
  %606 = load ptr, ptr %601, align 8, !tbaa !5
  %607 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %17, i32 noundef 33, ptr noundef nonnull @.str.134, ptr noundef %606) #21
  br label %755

608:                                              ; preds = %593, %592
  br i1 %525, label %609, label %624

609:                                              ; preds = %608
  %610 = tail call fastcc zeroext i8 @null_pointer_constant_p(ptr noundef %2) #20, !range !24
  %611 = icmp eq i8 %610, 0
  br i1 %611, label %629, label %612

612:                                              ; preds = %609
  %613 = load i64, ptr %179, align 8
  %614 = and i64 %613, 65535
  %615 = icmp eq i64 %614, 121
  br i1 %615, label %616, label %755

616:                                              ; preds = %612
  %617 = getelementptr inbounds %struct.tree_exp, ptr %179, i64 0, i32 3
  %618 = load ptr, ptr %617, align 8, !tbaa !5
  %619 = tail call zeroext i8 @decl_with_nonnull_addr_p(ptr noundef %618) #21
  %620 = icmp eq i8 %619, 0
  br i1 %620, label %755, label %621

621:                                              ; preds = %616
  %622 = load ptr, ptr %617, align 8, !tbaa !5
  %623 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %17, i32 noundef 33, ptr noundef nonnull @.str.134, ptr noundef %622) #21
  br label %755

624:                                              ; preds = %608
  %625 = icmp eq i32 %91, 8
  %626 = and i1 %524, %625
  br i1 %626, label %627, label %724

627:                                              ; preds = %624
  %628 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %17, i32 noundef 0, ptr noundef nonnull @.str.135) #21
  br label %755

629:                                              ; preds = %609
  br i1 %513, label %630, label %755

630:                                              ; preds = %629
  %631 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %17, i32 noundef 0, ptr noundef nonnull @.str.135) #21
  br label %755

632:                                              ; preds = %175, %175, %175, %175
  %633 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !8
  %634 = icmp eq i32 %87, 8
  %635 = and i32 %86, 65534
  %636 = icmp eq i32 %635, 8
  %637 = icmp eq i32 %87, 11
  %638 = or i1 %636, %637
  br i1 %638, label %639, label %644

639:                                              ; preds = %632
  %640 = and i32 %90, 65534
  %641 = icmp eq i32 %640, 8
  %642 = icmp eq i32 %91, 11
  %643 = or i1 %641, %642
  br i1 %643, label %724, label %644

644:                                              ; preds = %639, %632
  %645 = icmp eq i32 %87, 10
  %646 = icmp eq i32 %91, 10
  %647 = and i1 %645, %646
  br i1 %647, label %648, label %695

648:                                              ; preds = %644
  %649 = getelementptr inbounds %struct.tree_common, ptr %176, i64 0, i32 2
  %650 = load ptr, ptr %649, align 8, !tbaa !5
  %651 = load i64, ptr %650, align 8
  %652 = getelementptr inbounds %struct.tree_common, ptr %180, i64 0, i32 2
  %653 = load ptr, ptr %652, align 8, !tbaa !5
  %654 = load i64, ptr %653, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #22
  %655 = tail call fastcc i32 @comp_target_types(i32 noundef %17, ptr noundef %176, ptr noundef %180) #20
  %656 = icmp eq i32 %655, 0
  br i1 %656, label %676, label %657

657:                                              ; preds = %648
  %658 = tail call fastcc ptr @common_pointer_type(ptr noundef nonnull %176, ptr noundef nonnull %180) #20
  %659 = load ptr, ptr %649, align 8, !tbaa !5
  %660 = getelementptr inbounds %struct.tree_type, ptr %659, i64 0, i32 2
  %661 = load ptr, ptr %660, align 8, !tbaa !5
  %662 = icmp eq ptr %661, null
  %663 = load ptr, ptr %652, align 8, !tbaa !5
  %664 = getelementptr inbounds %struct.tree_type, ptr %663, i64 0, i32 2
  %665 = load ptr, ptr %664, align 8, !tbaa !5
  %666 = icmp ne ptr %665, null
  %667 = xor i1 %662, %666
  br i1 %667, label %670, label %668

668:                                              ; preds = %657
  %669 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %17, i32 noundef 0, ptr noundef nonnull @.str.136) #21
  br label %691

670:                                              ; preds = %657
  %671 = load i64, ptr %659, align 8
  %672 = and i64 %671, 65535
  %673 = icmp eq i64 %672, 20
  br i1 %673, label %674, label %691

674:                                              ; preds = %670
  %675 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %17, i32 noundef 834, ptr noundef nonnull @.str.137) #21
  br label %691

676:                                              ; preds = %648
  %677 = lshr i64 %654, 56
  %678 = trunc i64 %677 to i8
  %679 = lshr i64 %651, 56
  %680 = trunc i64 %679 to i8
  %681 = call fastcc zeroext i8 @addr_space_superset(i8 noundef zeroext %680, i8 noundef zeroext %678, ptr noundef nonnull %7) #20, !range !24
  %682 = icmp eq i8 %681, 0
  br i1 %682, label %693, label %683

683:                                              ; preds = %676
  %684 = load i8, ptr %7, align 1, !tbaa !5
  %685 = zext i8 %684 to i32
  %686 = shl nuw nsw i32 %685, 8
  %687 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !8
  %688 = tail call ptr @build_qualified_type(ptr noundef %687, i32 noundef %686) #21
  %689 = tail call ptr @build_pointer_type(ptr noundef %688) #21
  %690 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %17, i32 noundef 0, ptr noundef nonnull @.str.133) #21
  br label %691

691:                                              ; preds = %668, %674, %670, %683
  %692 = phi ptr [ %689, %683 ], [ %658, %670 ], [ %658, %674 ], [ %658, %668 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #22
  br label %755

693:                                              ; preds = %676
  tail call void (i32, ptr, ...) @error_at(i32 noundef %17, ptr noundef nonnull @.str.131) #21
  %694 = load ptr, ptr @global_trees, align 16, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #22
  br label %1159

695:                                              ; preds = %644
  br i1 %645, label %696, label %709

696:                                              ; preds = %695
  %697 = tail call fastcc zeroext i8 @null_pointer_constant_p(ptr noundef %3) #20, !range !24
  %698 = icmp eq i8 %697, 0
  br i1 %698, label %709, label %699

699:                                              ; preds = %696
  %700 = load i32, ptr @pedantic, align 4, !tbaa !28
  %701 = icmp eq i32 %700, 0
  br i1 %701, label %704, label %702

702:                                              ; preds = %699
  %703 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %17, i32 noundef 834, ptr noundef nonnull @.str.138) #21
  br label %755

704:                                              ; preds = %699
  %705 = load i32, ptr @extra_warnings, align 4, !tbaa !28
  %706 = icmp eq i32 %705, 0
  br i1 %706, label %755, label %707

707:                                              ; preds = %704
  %708 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %17, i32 noundef 82, ptr noundef nonnull @.str.138) #21
  br label %755

709:                                              ; preds = %696, %695
  br i1 %646, label %710, label %715

710:                                              ; preds = %709
  %711 = tail call fastcc zeroext i8 @null_pointer_constant_p(ptr noundef %2) #20, !range !24
  %712 = icmp eq i8 %711, 0
  br i1 %712, label %720, label %713

713:                                              ; preds = %710
  %714 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %17, i32 noundef 834, ptr noundef nonnull @.str.138) #21
  br label %755

715:                                              ; preds = %709
  %716 = icmp eq i32 %91, 8
  %717 = and i1 %645, %716
  br i1 %717, label %718, label %724

718:                                              ; preds = %715
  %719 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %17, i32 noundef 0, ptr noundef nonnull @.str.135) #21
  br label %755

720:                                              ; preds = %710
  br i1 %634, label %721, label %755

721:                                              ; preds = %720
  %722 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %17, i32 noundef 0, ptr noundef nonnull @.str.135) #21
  br label %755

723:                                              ; preds = %175
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 9585, ptr noundef nonnull @.str.8) #21
  br label %724

724:                                              ; preds = %521, %521, %518, %715, %624, %312, %723, %271, %279, %289, %295, %313, %405, %379, %409, %452, %188, %203, %175, %248, %264, %306, %352, %639
  %725 = phi i32 [ 0, %723 ], [ 0, %452 ], [ 0, %409 ], [ 0, %379 ], [ 0, %405 ], [ 0, %313 ], [ 0, %279 ], [ 0, %289 ], [ 0, %295 ], [ 0, %271 ], [ 0, %188 ], [ 0, %203 ], [ 0, %175 ], [ %266, %264 ], [ 0, %248 ], [ 0, %306 ], [ 0, %352 ], [ 0, %521 ], [ 0, %639 ], [ 0, %312 ], [ 0, %624 ], [ 0, %715 ], [ 0, %518 ], [ 0, %521 ]
  %726 = phi i1 [ false, %723 ], [ false, %452 ], [ false, %409 ], [ false, %379 ], [ false, %405 ], [ false, %313 ], [ false, %279 ], [ false, %289 ], [ false, %295 ], [ false, %271 ], [ false, %188 ], [ false, %203 ], [ false, %175 ], [ false, %264 ], [ false, %248 ], [ false, %306 ], [ false, %352 ], [ true, %521 ], [ true, %639 ], [ false, %312 ], [ false, %624 ], [ false, %715 ], [ true, %518 ], [ true, %521 ]
  %727 = phi i1 [ false, %723 ], [ false, %452 ], [ false, %409 ], [ false, %379 ], [ false, %405 ], [ false, %313 ], [ false, %279 ], [ false, %289 ], [ true, %295 ], [ false, %271 ], [ true, %188 ], [ true, %203 ], [ true, %175 ], [ true, %264 ], [ true, %248 ], [ true, %306 ], [ false, %352 ], [ false, %521 ], [ false, %639 ], [ false, %312 ], [ false, %624 ], [ false, %715 ], [ false, %518 ], [ false, %521 ]
  %728 = phi ptr [ null, %723 ], [ null, %452 ], [ null, %409 ], [ null, %379 ], [ null, %405 ], [ null, %313 ], [ null, %279 ], [ null, %289 ], [ null, %295 ], [ null, %271 ], [ null, %188 ], [ null, %203 ], [ null, %175 ], [ null, %264 ], [ null, %248 ], [ null, %306 ], [ null, %352 ], [ %512, %521 ], [ %633, %639 ], [ null, %312 ], [ %512, %624 ], [ %633, %715 ], [ %512, %518 ], [ %512, %521 ]
  %729 = phi i32 [ 0, %723 ], [ 0, %452 ], [ 0, %409 ], [ %353, %379 ], [ %353, %405 ], [ 0, %313 ], [ 0, %279 ], [ 0, %289 ], [ 0, %295 ], [ 0, %271 ], [ 0, %188 ], [ 0, %203 ], [ 0, %175 ], [ 0, %264 ], [ 0, %248 ], [ 0, %306 ], [ %353, %352 ], [ 0, %521 ], [ 0, %639 ], [ 0, %312 ], [ 0, %624 ], [ 0, %715 ], [ 0, %518 ], [ 0, %521 ]
  %730 = phi ptr [ null, %723 ], [ null, %452 ], [ null, %409 ], [ %354, %379 ], [ %354, %405 ], [ null, %313 ], [ null, %279 ], [ null, %289 ], [ null, %295 ], [ null, %271 ], [ null, %188 ], [ null, %203 ], [ null, %175 ], [ null, %264 ], [ null, %248 ], [ null, %306 ], [ %354, %352 ], [ null, %521 ], [ null, %639 ], [ null, %312 ], [ null, %624 ], [ null, %715 ], [ null, %518 ], [ null, %521 ]
  %731 = phi i32 [ %1, %723 ], [ 83, %452 ], [ 84, %409 ], [ 91, %379 ], [ 92, %405 ], [ %1, %313 ], [ %1, %279 ], [ %1, %289 ], [ %1, %295 ], [ %1, %271 ], [ 63, %188 ], [ 64, %203 ], [ %1, %175 ], [ %1, %264 ], [ 75, %248 ], [ %1, %306 ], [ %1, %352 ], [ %1, %521 ], [ %1, %639 ], [ %1, %312 ], [ %1, %624 ], [ %1, %715 ], [ %1, %518 ], [ %1, %521 ]
  %732 = phi i8 [ %71, %723 ], [ %71, %452 ], [ %71, %409 ], [ %380, %379 ], [ %406, %405 ], [ %71, %313 ], [ %71, %279 ], [ %71, %289 ], [ %71, %295 ], [ %71, %271 ], [ %71, %188 ], [ %71, %203 ], [ %71, %175 ], [ %71, %264 ], [ %71, %248 ], [ %71, %306 ], [ %71, %352 ], [ %71, %521 ], [ %71, %639 ], [ %71, %312 ], [ %71, %624 ], [ %71, %715 ], [ %71, %518 ], [ %71, %521 ]
  %733 = phi i8 [ %72, %723 ], [ %72, %452 ], [ %72, %409 ], [ %382, %379 ], [ %408, %405 ], [ %72, %313 ], [ %72, %279 ], [ %72, %289 ], [ %72, %295 ], [ %72, %271 ], [ %72, %188 ], [ %72, %203 ], [ %72, %175 ], [ %72, %264 ], [ %72, %248 ], [ %72, %306 ], [ %72, %352 ], [ %72, %521 ], [ %72, %639 ], [ %72, %312 ], [ %72, %624 ], [ %72, %715 ], [ %72, %518 ], [ %72, %521 ]
  %734 = phi ptr [ %179, %723 ], [ %179, %452 ], [ %179, %409 ], [ %355, %379 ], [ %355, %405 ], [ %179, %313 ], [ %179, %279 ], [ %179, %289 ], [ %179, %295 ], [ %179, %271 ], [ %179, %188 ], [ %179, %203 ], [ %179, %175 ], [ %179, %264 ], [ %179, %248 ], [ %179, %306 ], [ %355, %352 ], [ %179, %521 ], [ %179, %639 ], [ %179, %312 ], [ %179, %624 ], [ %179, %715 ], [ %179, %518 ], [ %179, %521 ]
  %735 = phi ptr [ %177, %723 ], [ %177, %452 ], [ %177, %409 ], [ %356, %379 ], [ %356, %405 ], [ %177, %313 ], [ %177, %279 ], [ %177, %289 ], [ %177, %295 ], [ %177, %271 ], [ %177, %188 ], [ %177, %203 ], [ %177, %175 ], [ %177, %264 ], [ %177, %248 ], [ %177, %306 ], [ %356, %352 ], [ %177, %521 ], [ %177, %639 ], [ %177, %312 ], [ %177, %624 ], [ %177, %715 ], [ %177, %518 ], [ %177, %521 ]
  %736 = icmp eq i32 %87, 14
  %737 = icmp eq i32 %91, 14
  %738 = and i1 %736, %737
  br i1 %738, label %739, label %755

739:                                              ; preds = %724
  %740 = getelementptr inbounds %struct.tree_type, ptr %176, i64 0, i32 2
  %741 = load ptr, ptr %740, align 8, !tbaa !5
  %742 = getelementptr inbounds %struct.tree_type, ptr %180, i64 0, i32 2
  %743 = load ptr, ptr %742, align 8, !tbaa !5
  %744 = tail call i32 @tree_int_cst_equal(ptr noundef %741, ptr noundef %743) #21
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %753, label %746

746:                                              ; preds = %739
  %747 = getelementptr inbounds %struct.tree_common, ptr %176, i64 0, i32 2
  %748 = load ptr, ptr %747, align 8, !tbaa !5
  %749 = getelementptr inbounds %struct.tree_common, ptr %180, i64 0, i32 2
  %750 = load ptr, ptr %749, align 8, !tbaa !5
  %751 = tail call zeroext i8 @same_scalar_type_ignoring_signedness(ptr noundef %748, ptr noundef %750) #21
  %752 = icmp eq i8 %751, 0
  br i1 %752, label %753, label %755

753:                                              ; preds = %746, %739
  tail call void @binary_op_error(i32 noundef %17, i32 noundef %1, ptr noundef nonnull %176, ptr noundef nonnull %180) #21
  %754 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %1159

755:                                              ; preds = %198, %612, %616, %621, %720, %713, %629, %216, %596, %600, %605, %481, %489, %441, %450, %267, %704, %707, %702, %718, %721, %627, %630, %329, %208, %588, %691, %746, %724
  %756 = phi ptr [ %735, %746 ], [ %735, %724 ], [ %177, %691 ], [ %177, %588 ], [ %177, %208 ], [ %177, %329 ], [ %177, %630 ], [ %177, %627 ], [ %177, %721 ], [ %177, %718 ], [ %177, %702 ], [ %177, %707 ], [ %177, %704 ], [ %177, %267 ], [ %177, %450 ], [ %177, %441 ], [ %177, %489 ], [ %177, %481 ], [ %177, %605 ], [ %177, %600 ], [ %177, %596 ], [ %177, %216 ], [ %177, %629 ], [ %177, %713 ], [ %177, %720 ], [ %177, %621 ], [ %177, %616 ], [ %177, %612 ], [ %177, %198 ]
  %757 = phi ptr [ %734, %746 ], [ %734, %724 ], [ %179, %691 ], [ %179, %588 ], [ %179, %208 ], [ %179, %329 ], [ %179, %630 ], [ %179, %627 ], [ %179, %721 ], [ %179, %718 ], [ %179, %702 ], [ %179, %707 ], [ %179, %704 ], [ %179, %267 ], [ %451, %450 ], [ %179, %441 ], [ %490, %489 ], [ %179, %481 ], [ %179, %605 ], [ %179, %600 ], [ %179, %596 ], [ %179, %216 ], [ %179, %629 ], [ %179, %713 ], [ %179, %720 ], [ %179, %621 ], [ %179, %616 ], [ %179, %612 ], [ %179, %198 ]
  %758 = phi i8 [ %733, %746 ], [ %733, %724 ], [ %72, %691 ], [ %72, %588 ], [ %72, %208 ], [ %72, %329 ], [ %72, %630 ], [ %72, %627 ], [ %72, %721 ], [ %72, %718 ], [ %72, %702 ], [ %72, %707 ], [ %72, %704 ], [ %72, %267 ], [ %443, %450 ], [ %443, %441 ], [ %482, %489 ], [ %482, %481 ], [ %72, %605 ], [ %72, %600 ], [ %72, %596 ], [ %72, %216 ], [ %72, %629 ], [ %72, %713 ], [ %72, %720 ], [ %72, %621 ], [ %72, %616 ], [ %72, %612 ], [ %72, %198 ]
  %759 = phi i8 [ %732, %746 ], [ %732, %724 ], [ %71, %691 ], [ %71, %588 ], [ %71, %208 ], [ %71, %329 ], [ %71, %630 ], [ %71, %627 ], [ %71, %721 ], [ %71, %718 ], [ %71, %702 ], [ %71, %707 ], [ %71, %704 ], [ %71, %267 ], [ %71, %450 ], [ %71, %441 ], [ %71, %489 ], [ %71, %481 ], [ %71, %605 ], [ %71, %600 ], [ %71, %596 ], [ %71, %216 ], [ %71, %629 ], [ %71, %713 ], [ %71, %720 ], [ %71, %621 ], [ %71, %616 ], [ %71, %612 ], [ %71, %198 ]
  %760 = phi i32 [ %731, %746 ], [ %731, %724 ], [ %1, %691 ], [ %1, %588 ], [ %1, %208 ], [ %1, %329 ], [ %1, %630 ], [ %1, %627 ], [ %1, %721 ], [ %1, %718 ], [ %1, %702 ], [ %1, %707 ], [ %1, %704 ], [ %1, %267 ], [ 84, %450 ], [ 84, %441 ], [ 83, %489 ], [ 83, %481 ], [ %1, %605 ], [ %1, %600 ], [ %1, %596 ], [ %1, %216 ], [ %1, %629 ], [ %1, %713 ], [ %1, %720 ], [ %1, %621 ], [ %1, %616 ], [ %1, %612 ], [ 64, %198 ]
  %761 = phi ptr [ %730, %746 ], [ %730, %724 ], [ %692, %691 ], [ %589, %588 ], [ null, %208 ], [ null, %329 ], [ %180, %630 ], [ %176, %627 ], [ %180, %721 ], [ %176, %718 ], [ %176, %702 ], [ %176, %707 ], [ %176, %704 ], [ null, %267 ], [ %176, %450 ], [ %176, %441 ], [ %176, %489 ], [ %176, %481 ], [ %176, %605 ], [ %176, %600 ], [ %176, %596 ], [ null, %216 ], [ null, %629 ], [ %180, %713 ], [ null, %720 ], [ %180, %621 ], [ %180, %616 ], [ %180, %612 ], [ null, %198 ]
  %762 = phi i32 [ %729, %746 ], [ %729, %724 ], [ 0, %691 ], [ 0, %588 ], [ 0, %208 ], [ 0, %329 ], [ 0, %630 ], [ 0, %627 ], [ 0, %721 ], [ 0, %718 ], [ 0, %702 ], [ 0, %707 ], [ 0, %704 ], [ 0, %267 ], [ 1, %450 ], [ 1, %441 ], [ 1, %489 ], [ 1, %481 ], [ 0, %605 ], [ 0, %600 ], [ 0, %596 ], [ 0, %216 ], [ 0, %629 ], [ 0, %713 ], [ 0, %720 ], [ 0, %621 ], [ 0, %616 ], [ 0, %612 ], [ 0, %198 ]
  %763 = phi ptr [ %728, %746 ], [ %728, %724 ], [ %633, %691 ], [ %512, %588 ], [ null, %208 ], [ null, %329 ], [ %512, %630 ], [ %512, %627 ], [ %633, %721 ], [ %633, %718 ], [ %633, %702 ], [ %633, %707 ], [ %633, %704 ], [ null, %267 ], [ null, %450 ], [ null, %441 ], [ null, %489 ], [ null, %481 ], [ %512, %605 ], [ %512, %600 ], [ %512, %596 ], [ null, %216 ], [ %512, %629 ], [ %633, %713 ], [ %633, %720 ], [ %512, %621 ], [ %512, %616 ], [ %512, %612 ], [ null, %198 ]
  %764 = phi i1 [ %727, %746 ], [ %727, %724 ], [ false, %691 ], [ false, %588 ], [ false, %208 ], [ true, %329 ], [ false, %630 ], [ false, %627 ], [ false, %721 ], [ false, %718 ], [ false, %702 ], [ false, %707 ], [ false, %704 ], [ false, %267 ], [ false, %450 ], [ false, %441 ], [ false, %489 ], [ false, %481 ], [ false, %605 ], [ false, %600 ], [ false, %596 ], [ false, %216 ], [ false, %629 ], [ false, %713 ], [ false, %720 ], [ false, %621 ], [ false, %616 ], [ false, %612 ], [ true, %198 ]
  %765 = phi i1 [ false, %746 ], [ false, %724 ], [ false, %691 ], [ false, %588 ], [ false, %208 ], [ false, %329 ], [ false, %630 ], [ false, %627 ], [ false, %721 ], [ false, %718 ], [ false, %702 ], [ false, %707 ], [ false, %704 ], [ false, %267 ], [ %442, %450 ], [ %442, %441 ], [ false, %489 ], [ false, %481 ], [ false, %605 ], [ false, %600 ], [ false, %596 ], [ false, %216 ], [ false, %629 ], [ false, %713 ], [ false, %720 ], [ false, %621 ], [ false, %616 ], [ false, %612 ], [ false, %198 ]
  %766 = phi i1 [ %726, %746 ], [ %726, %724 ], [ false, %691 ], [ false, %588 ], [ false, %208 ], [ false, %329 ], [ false, %630 ], [ false, %627 ], [ false, %721 ], [ false, %718 ], [ false, %702 ], [ false, %707 ], [ false, %704 ], [ false, %267 ], [ false, %450 ], [ false, %441 ], [ false, %489 ], [ false, %481 ], [ false, %605 ], [ false, %600 ], [ false, %596 ], [ false, %216 ], [ false, %629 ], [ false, %713 ], [ false, %720 ], [ false, %621 ], [ false, %616 ], [ false, %612 ], [ false, %198 ]
  %767 = phi i32 [ %725, %746 ], [ %725, %724 ], [ 0, %691 ], [ 0, %588 ], [ 0, %208 ], [ %331, %329 ], [ 0, %630 ], [ 0, %627 ], [ 0, %721 ], [ 0, %718 ], [ 0, %702 ], [ 0, %707 ], [ 0, %704 ], [ -1, %267 ], [ 0, %450 ], [ 0, %441 ], [ 0, %489 ], [ 0, %481 ], [ 0, %605 ], [ 0, %600 ], [ 0, %596 ], [ 0, %216 ], [ 0, %629 ], [ 0, %713 ], [ 0, %720 ], [ 0, %621 ], [ 0, %616 ], [ 0, %612 ], [ 0, %198 ]
  %768 = and i32 %86, 65534
  %769 = icmp eq i32 %768, 8
  %770 = icmp eq i32 %87, 13
  %771 = icmp eq i32 %87, 11
  %772 = or i1 %769, %771
  %773 = add nsw i32 %87, -13
  %774 = icmp ult i32 %773, 2
  %775 = or i1 %772, %774
  br i1 %775, label %776, label %1064

776:                                              ; preds = %755
  %777 = and i32 %90, 65534
  %778 = icmp eq i32 %777, 8
  %779 = icmp eq i32 %91, 11
  %780 = or i1 %778, %779
  %781 = add nsw i32 %91, -13
  %782 = icmp ult i32 %781, 2
  %783 = or i1 %780, %782
  br i1 %783, label %784, label %1064

784:                                              ; preds = %776
  %785 = icmp eq i32 %91, 13
  %786 = icmp ne i32 %767, 0
  %787 = or i1 %764, %786
  %788 = or i1 %766, %787
  br i1 %788, label %789, label %793

789:                                              ; preds = %784
  %790 = tail call fastcc ptr @c_common_type(ptr noundef %176, ptr noundef %180) #20
  %791 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %792 = icmp eq ptr %790, %791
  br i1 %792, label %1159, label %793

793:                                              ; preds = %789, %784
  %794 = phi ptr [ %790, %789 ], [ %761, %784 ]
  %795 = xor i1 %770, %785
  br i1 %795, label %796, label %930

796:                                              ; preds = %793
  %797 = add i32 %1, -63
  %798 = icmp ult i32 %797, 3
  %799 = icmp eq i32 %1, 67
  %800 = and i1 %799, %770
  %801 = or i1 %798, %800
  br i1 %801, label %802, label %930

802:                                              ; preds = %796
  %803 = getelementptr inbounds %struct.tree_common, ptr %794, i64 0, i32 2
  %804 = load ptr, ptr %803, align 8, !tbaa !5
  %805 = load i64, ptr %804, align 8
  %806 = and i64 %805, 65535
  %807 = icmp eq i64 %806, 9
  %808 = load i32, ptr @flag_signed_zeros, align 4
  %809 = icmp ne i32 %808, 0
  %810 = select i1 %807, i1 %809, i1 false
  br i1 %810, label %811, label %930

811:                                              ; preds = %802
  %812 = icmp eq ptr %176, %81
  %813 = icmp eq ptr %180, %83
  %814 = and i1 %812, %813
  br i1 %814, label %820, label %815

815:                                              ; preds = %811
  %816 = and i1 %178, %764
  br i1 %816, label %818, label %817

817:                                              ; preds = %815
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 9633, ptr noundef nonnull @.str.8) #21
  br label %818

818:                                              ; preds = %815, %817
  %819 = tail call fastcc ptr @c_common_type(ptr noundef nonnull %81, ptr noundef nonnull %83) #20
  br label %820

820:                                              ; preds = %811, %818
  %821 = phi ptr [ %819, %818 ], [ null, %811 ]
  %822 = getelementptr inbounds %struct.tree_common, ptr %756, i64 0, i32 2
  %823 = load ptr, ptr %822, align 8, !tbaa !5
  br i1 %770, label %824, label %833

824:                                              ; preds = %820
  %825 = icmp eq ptr %823, %794
  br i1 %825, label %828, label %826

826:                                              ; preds = %824
  %827 = tail call ptr @convert_and_check(ptr noundef nonnull %794, ptr noundef nonnull %756) #21
  br label %828

828:                                              ; preds = %826, %824
  %829 = phi ptr [ %827, %826 ], [ %756, %824 ]
  %830 = getelementptr inbounds %struct.tree_common, ptr %757, i64 0, i32 2
  %831 = load ptr, ptr %830, align 8, !tbaa !5
  %832 = icmp eq ptr %831, %804
  br i1 %832, label %846, label %842

833:                                              ; preds = %820
  %834 = icmp eq ptr %823, %804
  br i1 %834, label %837, label %835

835:                                              ; preds = %833
  %836 = tail call ptr @convert_and_check(ptr noundef nonnull %804, ptr noundef nonnull %756) #21
  br label %837

837:                                              ; preds = %835, %833
  %838 = phi ptr [ %836, %835 ], [ %756, %833 ]
  %839 = getelementptr inbounds %struct.tree_common, ptr %757, i64 0, i32 2
  %840 = load ptr, ptr %839, align 8, !tbaa !5
  %841 = icmp eq ptr %840, %794
  br i1 %841, label %846, label %842

842:                                              ; preds = %837, %828
  %843 = phi ptr [ %804, %828 ], [ %794, %837 ]
  %844 = phi ptr [ %829, %828 ], [ %838, %837 ]
  %845 = tail call ptr @convert_and_check(ptr noundef nonnull %843, ptr noundef nonnull %757) #21
  br label %846

846:                                              ; preds = %842, %837, %828
  %847 = phi ptr [ %757, %828 ], [ %757, %837 ], [ %845, %842 ]
  %848 = phi ptr [ %829, %828 ], [ %838, %837 ], [ %844, %842 ]
  %849 = load i64, ptr %848, align 8
  %850 = and i64 %849, 65535
  %851 = icmp eq i64 %850, 0
  br i1 %851, label %856, label %852

852:                                              ; preds = %846
  %853 = load i64, ptr %847, align 8
  %854 = and i64 %853, 65535
  %855 = icmp eq i64 %854, 0
  br i1 %855, label %856, label %858

856:                                              ; preds = %852, %846
  %857 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %1159

858:                                              ; preds = %852
  br i1 %770, label %859, label %891

859:                                              ; preds = %858
  %860 = tail call ptr @c_save_expr(ptr noundef nonnull %848) #21
  %861 = load i64, ptr %2, align 8
  %862 = and i64 %861, 65535
  %863 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %862
  %864 = load i32, ptr %863, align 4, !tbaa !28
  %865 = add i32 %864, -4
  %866 = icmp ult i32 %865, 7
  br i1 %866, label %867, label %870

867:                                              ; preds = %859
  %868 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 1
  %869 = load i32, ptr %868, align 8, !tbaa !5
  br label %870

870:                                              ; preds = %859, %867
  %871 = phi i32 [ %869, %867 ], [ 0, %859 ]
  %872 = tail call ptr @build_unary_op(i32 noundef %871, i32 noundef 43, ptr noundef %860, i32 noundef 1) #20
  %873 = load i64, ptr %2, align 8
  %874 = and i64 %873, 65535
  %875 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %874
  %876 = load i32, ptr %875, align 4, !tbaa !28
  %877 = add i32 %876, -4
  %878 = icmp ult i32 %877, 7
  br i1 %878, label %879, label %882

879:                                              ; preds = %870
  %880 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 1
  %881 = load i32, ptr %880, align 8, !tbaa !5
  br label %882

882:                                              ; preds = %870, %879
  %883 = phi i32 [ %881, %879 ], [ 0, %870 ]
  %884 = tail call ptr @build_unary_op(i32 noundef %883, i32 noundef 44, ptr noundef %860, i32 noundef 1) #20
  switch i32 %1, label %890 [
    i32 65, label %885
    i32 67, label %885
    i32 63, label %887
    i32 64, label %887
  ]

885:                                              ; preds = %882, %882
  %886 = tail call ptr @build2_stat(i32 noundef %760, ptr noundef nonnull %804, ptr noundef %884, ptr noundef nonnull %847) #21
  br label %887

887:                                              ; preds = %882, %882, %885
  %888 = phi ptr [ %884, %882 ], [ %884, %882 ], [ %886, %885 ]
  %889 = tail call ptr @build2_stat(i32 noundef %760, ptr noundef nonnull %804, ptr noundef %872, ptr noundef nonnull %847) #21
  br label %926

890:                                              ; preds = %882
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 9670, ptr noundef nonnull @.str.8) #21
  br label %926

891:                                              ; preds = %858
  %892 = tail call ptr @c_save_expr(ptr noundef nonnull %847) #21
  %893 = load i64, ptr %3, align 8
  %894 = and i64 %893, 65535
  %895 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %894
  %896 = load i32, ptr %895, align 4, !tbaa !28
  %897 = add i32 %896, -4
  %898 = icmp ult i32 %897, 7
  br i1 %898, label %899, label %902

899:                                              ; preds = %891
  %900 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 1
  %901 = load i32, ptr %900, align 8, !tbaa !5
  br label %902

902:                                              ; preds = %891, %899
  %903 = phi i32 [ %901, %899 ], [ 0, %891 ]
  %904 = tail call ptr @build_unary_op(i32 noundef %903, i32 noundef 43, ptr noundef %892, i32 noundef 1) #20
  %905 = load i64, ptr %3, align 8
  %906 = and i64 %905, 65535
  %907 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %906
  %908 = load i32, ptr %907, align 4, !tbaa !28
  %909 = add i32 %908, -4
  %910 = icmp ult i32 %909, 7
  br i1 %910, label %911, label %914

911:                                              ; preds = %902
  %912 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 1
  %913 = load i32, ptr %912, align 8, !tbaa !5
  br label %914

914:                                              ; preds = %902, %911
  %915 = phi i32 [ %913, %911 ], [ 0, %902 ]
  %916 = tail call ptr @build_unary_op(i32 noundef %915, i32 noundef 44, ptr noundef %892, i32 noundef 1) #20
  switch i32 %1, label %925 [
    i32 65, label %917
    i32 63, label %919
    i32 64, label %922
  ]

917:                                              ; preds = %914
  %918 = tail call ptr @build2_stat(i32 noundef %760, ptr noundef nonnull %804, ptr noundef nonnull %848, ptr noundef %916) #21
  br label %919

919:                                              ; preds = %914, %917
  %920 = phi ptr [ %916, %914 ], [ %918, %917 ]
  %921 = tail call ptr @build2_stat(i32 noundef %760, ptr noundef nonnull %804, ptr noundef nonnull %848, ptr noundef %904) #21
  br label %926

922:                                              ; preds = %914
  %923 = tail call ptr @build2_stat(i32 noundef %760, ptr noundef nonnull %804, ptr noundef nonnull %848, ptr noundef %904) #21
  %924 = tail call ptr @build1_stat(i32 noundef 79, ptr noundef nonnull %804, ptr noundef %916) #21
  br label %926

925:                                              ; preds = %914
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 9693, ptr noundef nonnull @.str.8) #21
  br label %926

926:                                              ; preds = %890, %887, %925, %922, %919
  %927 = phi ptr [ %872, %890 ], [ %889, %887 ], [ %904, %925 ], [ %923, %922 ], [ %921, %919 ]
  %928 = phi ptr [ %884, %890 ], [ %888, %887 ], [ %916, %925 ], [ %924, %922 ], [ %920, %919 ]
  %929 = tail call ptr @build2_stat(i32 noundef 123, ptr noundef nonnull %794, ptr noundef %927, ptr noundef %928) #21
  br label %1123

930:                                              ; preds = %796, %802, %793
  %931 = xor i1 %786, true
  %932 = or i1 %770, %931
  %933 = or i1 %932, %785
  br i1 %933, label %938, label %934

934:                                              ; preds = %930
  %935 = icmp eq i32 %767, -1
  %936 = zext i1 %935 to i8
  %937 = tail call ptr @shorten_binary_op(ptr noundef %794, ptr noundef %756, ptr noundef %757, i8 noundef zeroext %936) #21
  br label %938

938:                                              ; preds = %934, %930
  %939 = phi ptr [ %794, %934 ], [ null, %930 ]
  %940 = phi ptr [ %937, %934 ], [ %794, %930 ]
  br i1 %765, label %941, label %993

941:                                              ; preds = %938
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  %942 = call ptr @get_narrower(ptr noundef %756, ptr noundef nonnull %8) #21
  %943 = icmp eq ptr %942, %756
  br i1 %943, label %944, label %953

944:                                              ; preds = %941
  %945 = getelementptr inbounds %struct.tree_common, ptr %756, i64 0, i32 2
  %946 = load ptr, ptr %945, align 8, !tbaa !5
  %947 = icmp eq ptr %940, %946
  br i1 %947, label %948, label %953

948:                                              ; preds = %944
  %949 = load i64, ptr %940, align 8
  %950 = trunc i64 %949 to i32
  %951 = lshr i32 %950, 21
  %952 = and i32 %951, 1
  store i32 %952, ptr %8, align 4, !tbaa !28
  br label %953

953:                                              ; preds = %948, %944, %941
  %954 = getelementptr inbounds %struct.tree_common, ptr %942, i64 0, i32 2
  %955 = load ptr, ptr %954, align 8, !tbaa !5
  %956 = getelementptr inbounds %struct.tree_type, ptr %955, i64 0, i32 6
  %957 = load i32, ptr %956, align 4
  %958 = and i32 %957, 1023
  %959 = getelementptr inbounds %struct.tree_type, ptr %940, i64 0, i32 6
  %960 = load i32, ptr %959, align 4
  %961 = and i32 %960, 1023
  %962 = icmp ult i32 %958, %961
  br i1 %962, label %963, label %989

963:                                              ; preds = %953
  %964 = call i32 @tree_int_cst_sgn(ptr noundef %757) #21
  %965 = icmp sgt i32 %964, 0
  br i1 %965, label %966, label %989

966:                                              ; preds = %963
  %967 = load ptr, ptr %954, align 8, !tbaa !5
  %968 = getelementptr inbounds %struct.tree_type, ptr %967, i64 0, i32 6
  %969 = load i32, ptr %968, align 4
  %970 = and i32 %969, 1023
  %971 = zext nneg i32 %970 to i64
  %972 = call i32 @compare_tree_int(ptr noundef %757, i64 noundef %971) #21
  %973 = icmp slt i32 %972, 0
  br i1 %973, label %974, label %989

974:                                              ; preds = %966
  %975 = load i64, ptr %940, align 8
  %976 = and i64 %975, 2097152
  %977 = icmp eq i64 %976, 0
  %978 = load i32, ptr %8, align 4
  %979 = icmp ne i32 %978, 0
  %980 = select i1 %977, i1 true, i1 %979
  br i1 %980, label %981, label %989

981:                                              ; preds = %974
  %982 = load ptr, ptr %954, align 8, !tbaa !5
  %983 = call ptr @c_common_signed_or_unsigned_type(i32 noundef %978, ptr noundef %982) #21
  %984 = getelementptr inbounds %struct.tree_common, ptr %756, i64 0, i32 2
  %985 = load ptr, ptr %984, align 8, !tbaa !5
  %986 = icmp eq ptr %985, %983
  br i1 %986, label %989, label %987

987:                                              ; preds = %981
  %988 = call ptr @convert(ptr noundef %983, ptr noundef nonnull %756) #21
  br label %989

989:                                              ; preds = %981, %987, %974, %966, %963, %953
  %990 = phi i32 [ %762, %974 ], [ %762, %966 ], [ %762, %963 ], [ %762, %953 ], [ 1, %987 ], [ 1, %981 ]
  %991 = phi ptr [ %940, %974 ], [ %940, %966 ], [ %940, %963 ], [ %940, %953 ], [ %983, %987 ], [ %983, %981 ]
  %992 = phi ptr [ %756, %974 ], [ %756, %966 ], [ %756, %963 ], [ %756, %953 ], [ %988, %987 ], [ %756, %981 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  br label %993

993:                                              ; preds = %989, %938
  %994 = phi ptr [ %940, %989 ], [ %939, %938 ]
  %995 = phi i32 [ %990, %989 ], [ %762, %938 ]
  %996 = phi ptr [ %991, %989 ], [ %940, %938 ]
  %997 = phi ptr [ %992, %989 ], [ %756, %938 ]
  br i1 %766, label %998, label %1064

998:                                              ; preds = %993
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #22
  store ptr %997, ptr %9, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #22
  store ptr %757, ptr %10, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #22
  store ptr %996, ptr %11, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #22
  store i32 %760, ptr %12, align 4, !tbaa !28
  %999 = call ptr @shorten_compare(ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #21
  %1000 = icmp eq ptr %999, null
  br i1 %1000, label %1001, label %1063

1001:                                             ; preds = %998
  %1002 = load ptr, ptr %9, align 8, !tbaa !8
  %1003 = load ptr, ptr %10, align 8, !tbaa !8
  %1004 = load i32, ptr %12, align 4, !tbaa !28
  %1005 = load i32, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !28
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1007, label %1060

1007:                                             ; preds = %1001
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #22
  store i8 1, ptr %13, align 1, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #22
  store i8 1, ptr %14, align 1, !tbaa !5
  %1008 = load i8, ptr @in_late_binary_op, align 1, !tbaa !5
  %1009 = icmp eq i8 %1008, 0
  br i1 %1009, label %1010, label %1025

1010:                                             ; preds = %1007
  store i32 1, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !28
  %1011 = load i32, ptr @require_constant_value, align 4, !tbaa !28
  %1012 = trunc i32 %1011 to i8
  %1013 = call ptr @c_fully_fold(ptr noundef %1002, i8 noundef zeroext %1012, ptr noundef nonnull %13) #21
  %1014 = load i32, ptr @require_constant_value, align 4, !tbaa !28
  %1015 = trunc i32 %1014 to i8
  %1016 = call ptr @c_fully_fold(ptr noundef %1003, i8 noundef zeroext %1015, ptr noundef nonnull %14) #21
  %1017 = load i32, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !28
  %1018 = add nsw i32 %1017, -1
  store i32 %1018, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !28
  %1019 = load i32, ptr @require_constant_value, align 4, !tbaa !28
  %1020 = trunc i32 %1019 to i8
  %1021 = call ptr @c_fully_fold(ptr noundef %2, i8 noundef zeroext %1020, ptr noundef null) #21
  %1022 = load i32, ptr @require_constant_value, align 4, !tbaa !28
  %1023 = trunc i32 %1022 to i8
  %1024 = call ptr @c_fully_fold(ptr noundef %3, i8 noundef zeroext %1023, ptr noundef null) #21
  br label %1025

1025:                                             ; preds = %1007, %1010
  %1026 = phi ptr [ %1016, %1010 ], [ %1003, %1007 ]
  %1027 = phi ptr [ %1013, %1010 ], [ %1002, %1007 ]
  %1028 = phi ptr [ %1021, %1010 ], [ %2, %1007 ]
  %1029 = phi ptr [ %1024, %1010 ], [ %3, %1007 ]
  %1030 = load i32, ptr @warn_sign_compare, align 4, !tbaa !28
  %1031 = icmp eq i32 %1030, 0
  br i1 %1031, label %1033, label %1032

1032:                                             ; preds = %1025
  call void @warn_for_sign_compare(i32 noundef %17, ptr noundef %1028, ptr noundef %1029, ptr noundef %1027, ptr noundef %1026, ptr noundef %996, i32 noundef %1004) #21
  br label %1033

1033:                                             ; preds = %1032, %1025
  %1034 = load i8, ptr @in_late_binary_op, align 1, !tbaa !5
  %1035 = icmp eq i8 %1034, 0
  br i1 %1035, label %1036, label %1057

1036:                                             ; preds = %1033
  %1037 = load i8, ptr %13, align 1, !tbaa !5
  %1038 = icmp eq i8 %1037, 0
  br i1 %1038, label %1043, label %1039

1039:                                             ; preds = %1036
  %1040 = load i64, ptr %1027, align 8
  %1041 = and i64 %1040, 65535
  %1042 = icmp eq i64 %1041, 23
  br i1 %1042, label %1046, label %1043

1043:                                             ; preds = %1039, %1036
  %1044 = zext i1 %1038 to i8
  %1045 = call ptr @c_wrap_maybe_const(ptr noundef %1027, i8 noundef zeroext %1044) #21
  br label %1046

1046:                                             ; preds = %1043, %1039
  %1047 = phi ptr [ %1045, %1043 ], [ %1027, %1039 ]
  %1048 = load i8, ptr %14, align 1, !tbaa !5
  %1049 = icmp eq i8 %1048, 0
  br i1 %1049, label %1054, label %1050

1050:                                             ; preds = %1046
  %1051 = load i64, ptr %1026, align 8
  %1052 = and i64 %1051, 65535
  %1053 = icmp eq i64 %1052, 23
  br i1 %1053, label %1057, label %1054

1054:                                             ; preds = %1050, %1046
  %1055 = zext i1 %1049 to i8
  %1056 = call ptr @c_wrap_maybe_const(ptr noundef %1026, i8 noundef zeroext %1055) #21
  br label %1057

1057:                                             ; preds = %1050, %1054, %1033
  %1058 = phi ptr [ %1026, %1033 ], [ %1056, %1054 ], [ %1026, %1050 ]
  %1059 = phi ptr [ %1027, %1033 ], [ %1047, %1054 ], [ %1047, %1050 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #22
  br label %1060

1060:                                             ; preds = %1001, %1057
  %1061 = phi ptr [ %1003, %1001 ], [ %1058, %1057 ]
  %1062 = phi ptr [ %1002, %1001 ], [ %1059, %1057 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #22
  br label %1064

1063:                                             ; preds = %998
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #22
  br label %1123

1064:                                             ; preds = %1060, %993, %776, %755
  %1065 = phi ptr [ null, %776 ], [ null, %755 ], [ %994, %993 ], [ %994, %1060 ]
  %1066 = phi i32 [ %762, %776 ], [ %762, %755 ], [ %995, %993 ], [ 1, %1060 ]
  %1067 = phi ptr [ %761, %776 ], [ %761, %755 ], [ %996, %993 ], [ %996, %1060 ]
  %1068 = phi i32 [ %760, %776 ], [ %760, %755 ], [ %760, %993 ], [ %1004, %1060 ]
  %1069 = phi ptr [ %757, %776 ], [ %757, %755 ], [ %757, %993 ], [ %1061, %1060 ]
  %1070 = phi ptr [ %756, %776 ], [ %756, %755 ], [ %997, %993 ], [ %1062, %1060 ]
  %1071 = icmp eq ptr %1067, null
  br i1 %1071, label %1072, label %1078

1072:                                             ; preds = %1064
  %1073 = getelementptr inbounds %struct.tree_common, ptr %1070, i64 0, i32 2
  %1074 = load ptr, ptr %1073, align 8, !tbaa !5
  %1075 = getelementptr inbounds %struct.tree_common, ptr %1069, i64 0, i32 2
  %1076 = load ptr, ptr %1075, align 8, !tbaa !5
  call void @binary_op_error(i32 noundef %17, i32 noundef %1, ptr noundef %1074, ptr noundef %1076) #21
  %1077 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %1159

1078:                                             ; preds = %1064
  %1079 = icmp eq ptr %763, null
  br i1 %1079, label %1080, label %1089

1080:                                             ; preds = %1078
  %1081 = icmp eq ptr %176, %81
  %1082 = icmp eq ptr %180, %83
  %1083 = and i1 %1081, %1082
  br i1 %1083, label %1089, label %1084

1084:                                             ; preds = %1080
  %1085 = and i1 %178, %764
  br i1 %1085, label %1087, label %1086

1086:                                             ; preds = %1084
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 9836, ptr noundef nonnull @.str.8) #21
  br label %1087

1087:                                             ; preds = %1084, %1086
  %1088 = call fastcc ptr @c_common_type(ptr noundef nonnull %81, ptr noundef nonnull %83) #20
  br label %1089

1089:                                             ; preds = %1080, %1087, %1078
  %1090 = phi ptr [ %1067, %1087 ], [ %763, %1078 ], [ %1067, %1080 ]
  %1091 = phi ptr [ %1088, %1087 ], [ null, %1078 ], [ null, %1080 ]
  %1092 = icmp eq i32 %1066, 0
  br i1 %1092, label %1093, label %1105

1093:                                             ; preds = %1089
  %1094 = call fastcc ptr @ep_convert_and_check(ptr noundef nonnull %1067, ptr noundef %1070, ptr noundef %1091) #20
  %1095 = call fastcc ptr @ep_convert_and_check(ptr noundef nonnull %1067, ptr noundef %1069, ptr noundef %1091) #20
  %1096 = load i64, ptr %1094, align 8
  %1097 = and i64 %1096, 65535
  %1098 = icmp eq i64 %1097, 0
  br i1 %1098, label %1103, label %1099

1099:                                             ; preds = %1093
  %1100 = load i64, ptr %1095, align 8
  %1101 = and i64 %1100, 65535
  %1102 = icmp eq i64 %1101, 0
  br i1 %1102, label %1103, label %1105

1103:                                             ; preds = %1099, %1093
  %1104 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %1159

1105:                                             ; preds = %1099, %1089
  %1106 = phi ptr [ %1069, %1089 ], [ %1095, %1099 ]
  %1107 = phi ptr [ %1070, %1089 ], [ %1094, %1099 ]
  %1108 = icmp eq i8 %759, 0
  br i1 %1108, label %1116, label %1109

1109:                                             ; preds = %1105
  %1110 = load i32, ptr @require_constant_value, align 4, !tbaa !28
  %1111 = icmp eq i32 %1110, 0
  br i1 %1111, label %1114, label %1112

1112:                                             ; preds = %1109
  %1113 = call ptr @fold_build2_initializer_loc(i32 noundef %17, i32 noundef %1068, ptr noundef nonnull %1090, ptr noundef %1107, ptr noundef %1106) #21
  br label %1118

1114:                                             ; preds = %1109
  %1115 = call ptr @fold_build2_stat_loc(i32 noundef %17, i32 noundef %1068, ptr noundef nonnull %1090, ptr noundef %1107, ptr noundef %1106) #21
  br label %1118

1116:                                             ; preds = %1105
  %1117 = call ptr @build2_stat(i32 noundef %1068, ptr noundef nonnull %1090, ptr noundef %1107, ptr noundef %1106) #21
  br label %1118

1118:                                             ; preds = %1112, %1114, %1116
  %1119 = phi ptr [ %1117, %1116 ], [ %1113, %1112 ], [ %1115, %1114 ]
  %1120 = icmp eq ptr %1065, null
  br i1 %1120, label %1123, label %1121

1121:                                             ; preds = %1118
  %1122 = call ptr @convert(ptr noundef nonnull %1065, ptr noundef %1119) #21
  br label %1123

1123:                                             ; preds = %1063, %926, %1118, %1121, %206, %201, %192, %186
  %1124 = phi ptr [ null, %1063 ], [ %1091, %1121 ], [ %1091, %1118 ], [ null, %201 ], [ null, %206 ], [ null, %186 ], [ null, %192 ], [ %821, %926 ]
  %1125 = phi i8 [ %758, %1063 ], [ %758, %1121 ], [ %758, %1118 ], [ %72, %201 ], [ %72, %206 ], [ %72, %186 ], [ %72, %192 ], [ %758, %926 ]
  %1126 = phi ptr [ %999, %1063 ], [ %1122, %1121 ], [ %1119, %1118 ], [ %202, %201 ], [ %207, %206 ], [ %187, %186 ], [ %193, %192 ], [ %929, %926 ]
  %1127 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %1128 = icmp eq ptr %1126, %1127
  br i1 %1128, label %1129, label %1130

1129:                                             ; preds = %1123
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 9864, ptr noundef nonnull @.str.8) #21
  br label %1130

1130:                                             ; preds = %1123, %1129
  %1131 = load i64, ptr %1126, align 8
  %1132 = and i64 %1131, 65535
  %1133 = icmp eq i64 %1132, 23
  br i1 %1133, label %1134, label %1146

1134:                                             ; preds = %1130
  %1135 = and i64 %1131, 134217728
  %1136 = icmp ne i64 %1135, 0
  %1137 = icmp ne i8 %1125, 0
  %1138 = select i1 %1136, i1 true, i1 %1137
  br i1 %1138, label %1152, label %1139

1139:                                             ; preds = %1134
  br i1 %69, label %1140, label %1142

1140:                                             ; preds = %1139
  %1141 = call fastcc ptr @note_integer_operands(ptr noundef nonnull %1126) #20
  br label %1152

1142:                                             ; preds = %1139
  %1143 = getelementptr inbounds %struct.tree_common, ptr %1126, i64 0, i32 2
  %1144 = load ptr, ptr %1143, align 8, !tbaa !5
  %1145 = call ptr @build1_stat(i32 noundef 116, ptr noundef %1144, ptr noundef nonnull %1126) #21
  br label %1152

1146:                                             ; preds = %1130
  %1147 = load i8, ptr @in_late_binary_op, align 1
  %1148 = icmp eq i8 %1147, 0
  %1149 = select i1 %69, i1 %1148, i1 false
  br i1 %1149, label %1150, label %1152

1150:                                             ; preds = %1146
  %1151 = call fastcc ptr @note_integer_operands(ptr noundef nonnull %1126) #20
  br label %1152

1152:                                             ; preds = %1134, %1140, %1142, %1146, %1150
  %1153 = phi ptr [ %1126, %1146 ], [ %1151, %1150 ], [ %1141, %1140 ], [ %1145, %1142 ], [ %1126, %1134 ]
  %1154 = icmp eq ptr %1124, null
  br i1 %1154, label %1157, label %1155

1155:                                             ; preds = %1152
  %1156 = call ptr @build1_stat(i32 noundef 190, ptr noundef nonnull %1124, ptr noundef %1153) #21
  br label %1157

1157:                                             ; preds = %1155, %1152
  %1158 = phi ptr [ %1156, %1155 ], [ %1153, %1152 ]
  call void @protected_set_expr_location(ptr noundef %1158, i32 noundef %17) #21
  br label %1159

1159:                                             ; preds = %118, %856, %789, %693, %590, %1157, %1103, %1072, %753, %126
  %1160 = phi ptr [ %127, %126 ], [ %1158, %1157 ], [ %1104, %1103 ], [ %1077, %1072 ], [ %754, %753 ], [ %694, %693 ], [ %591, %590 ], [ %857, %856 ], [ %790, %789 ], [ %92, %118 ]
  ret ptr %1160
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_external_ref(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = tail call ptr @lookup_name(ptr noundef %1) #21
  %6 = tail call ptr @objc_lookup_ivar(ptr noundef %5, ptr noundef %1) #21
  store ptr null, ptr %3, align 8, !tbaa !8
  %7 = icmp eq ptr %6, null
  %8 = load ptr, ptr @global_trees, align 16
  %9 = icmp eq ptr %6, %8
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  store ptr %13, ptr %3, align 8, !tbaa !8
  br label %23

14:                                               ; preds = %4
  %15 = icmp eq i32 %2, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %14
  %17 = tail call ptr @implicitly_declare(i32 noundef %0, ptr noundef %1) #21
  %18 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  br label %23

20:                                               ; preds = %14
  br i1 %9, label %145, label %21

21:                                               ; preds = %20
  tail call void @undeclared_variable(i32 noundef %0, ptr noundef %1) #21
  %22 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %145

23:                                               ; preds = %16, %11
  %24 = phi ptr [ %13, %11 ], [ %19, %16 ]
  %25 = phi ptr [ %6, %11 ], [ %17, %16 ]
  %26 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %28 = icmp eq ptr %24, %27
  br i1 %28, label %145, label %29

29:                                               ; preds = %23
  %30 = load i64, ptr %25, align 8
  %31 = and i64 %30, 1073741824
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  tail call void @warn_deprecated_use(ptr noundef nonnull %25, ptr noundef null) #21
  %34 = load i64, ptr %25, align 8
  br label %35

35:                                               ; preds = %33, %29
  %36 = phi i64 [ %34, %33 ], [ %30, %29 ]
  %37 = load ptr, ptr @current_function_decl, align 8, !tbaa !8
  %38 = icmp eq ptr %25, %37
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = or i64 %36, 16777216
  store i64 %40, ptr %25, align 8
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi i64 [ %40, %39 ], [ %36, %35 ]
  %43 = and i64 %42, 65535
  %44 = icmp ne i64 %43, 29
  %45 = load i32, ptr @in_alignof, align 4
  %46 = icmp ne i32 %45, 0
  %47 = select i1 %44, i1 true, i1 %46
  br i1 %47, label %72, label %48

48:                                               ; preds = %41
  %49 = load i32, ptr @in_sizeof, align 4, !tbaa !28
  %50 = icmp ne i32 %49, 0
  %51 = load i32, ptr @in_typeof, align 4
  %52 = icmp ne i32 %51, 0
  %53 = select i1 %50, i1 true, i1 %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.tree_decl_common, ptr %25, i64 0, i32 2
  %56 = load i64, ptr %55, align 8
  %57 = or i64 %56, 1048576
  store i64 %57, ptr %55, align 8
  br label %72

58:                                               ; preds = %48
  %59 = getelementptr inbounds %struct.tree_decl_common, ptr %25, i64 0, i32 5
  %60 = load ptr, ptr %59, align 8, !tbaa !5
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.tree_decl_common, ptr %25, i64 0, i32 2
  %64 = load i64, ptr %63, align 8
  %65 = and i64 %64, 33554432
  %66 = icmp ne i64 %65, 0
  %67 = and i64 %42, 134217728
  %68 = icmp eq i64 %67, 0
  %69 = and i1 %68, %66
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  tail call fastcc void @record_maybe_used_decl(ptr noundef nonnull %25) #20
  %71 = load i64, ptr %25, align 8
  br label %72

72:                                               ; preds = %54, %70, %62, %58, %41
  %73 = phi i64 [ %42, %54 ], [ %71, %70 ], [ %42, %62 ], [ %42, %58 ], [ %42, %41 ]
  %74 = and i64 %73, 65535
  %75 = icmp eq i64 %74, 33
  br i1 %75, label %76, label %99

76:                                               ; preds = %72
  %77 = load ptr, ptr %26, align 8, !tbaa !5
  tail call void @used_types_insert(ptr noundef %77) #21
  %78 = load i32, ptr @warn_cxx_compat, align 4, !tbaa !28
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %94, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr %26, align 8, !tbaa !5
  %82 = load i64, ptr %81, align 8
  %83 = and i64 %82, 65535
  %84 = icmp eq i64 %83, 6
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, 134217728
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %85
  %91 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %0, i32 noundef 49, ptr noundef nonnull @.str.25) #21
  %92 = getelementptr inbounds %struct.tree_decl_minimal, ptr %25, i64 0, i32 1
  %93 = load i32, ptr %92, align 8, !tbaa !5
  tail call void (i32, ptr, ...) @inform(i32 noundef %93, ptr noundef nonnull @.str.26) #21
  br label %94

94:                                               ; preds = %90, %85, %80, %76
  %95 = getelementptr inbounds %struct.tree_decl_common, ptr %25, i64 0, i32 5
  %96 = load ptr, ptr %95, align 8, !tbaa !5
  %97 = load i64, ptr %96, align 8
  %98 = or i64 %97, 131072
  store i64 %98, ptr %96, align 8
  br label %145

99:                                               ; preds = %72
  %100 = load ptr, ptr @current_function_decl, align 8, !tbaa !8
  %101 = icmp eq ptr %100, null
  br i1 %101, label %145, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.tree_decl_minimal, ptr %100, i64 0, i32 4
  %104 = load ptr, ptr %103, align 8, !tbaa !5
  %105 = icmp eq ptr %104, null
  br i1 %105, label %122, label %106

106:                                              ; preds = %102
  %107 = load i64, ptr %104, align 8
  %108 = and i64 %107, 65535
  %109 = icmp eq i64 %108, 40
  br i1 %109, label %122, label %110

110:                                              ; preds = %106
  %111 = trunc i64 %73 to i16
  switch i16 %111, label %122 [
    i16 32, label %112
    i16 34, label %112
    i16 29, label %112
  ]

112:                                              ; preds = %110, %110, %110
  %113 = tail call ptr @decl_function_context(ptr noundef nonnull %25) #21
  %114 = icmp eq ptr %113, null
  %115 = load ptr, ptr @current_function_decl, align 8
  %116 = icmp eq ptr %113, %115
  %117 = select i1 %114, i1 true, i1 %116
  br i1 %117, label %145, label %118

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.tree_decl_common, ptr %25, i64 0, i32 2
  %120 = load i64, ptr %119, align 8
  %121 = or i64 %120, 256
  store i64 %121, ptr %119, align 8
  br label %145

122:                                              ; preds = %110, %106, %102
  %123 = getelementptr inbounds %struct.tree_function_decl, ptr %100, i64 0, i32 5
  %124 = load i32, ptr %123, align 8
  %125 = and i32 %124, 2097152
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %145, label %127

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.tree_decl_common, ptr %100, i64 0, i32 2
  %129 = load i64, ptr %128, align 8
  %130 = and i64 %129, 33554432
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %145, label %132

132:                                              ; preds = %127
  %133 = trunc i64 %73 to i16
  switch i16 %133, label %145 [
    i16 32, label %134
    i16 29, label %134
  ]

134:                                              ; preds = %132, %132
  %135 = and i64 %73, 67174399
  %136 = icmp ne i64 %135, 32
  %137 = and i64 %73, 134217728
  %138 = icmp eq i64 %137, 0
  %139 = and i1 %136, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %134
  %141 = getelementptr inbounds %struct.tree_decl_minimal, ptr %25, i64 0, i32 4
  %142 = load ptr, ptr %141, align 8, !tbaa !5
  %143 = icmp eq ptr %142, %100
  br i1 %143, label %145, label %144

144:                                              ; preds = %140
  tail call void @record_inline_static(i32 noundef %0, ptr noundef nonnull %100, ptr noundef nonnull %25, i32 noundef 0) #21
  br label %145

145:                                              ; preds = %99, %94, %122, %127, %140, %144, %118, %112, %132, %134, %23, %20, %21
  %146 = phi ptr [ %22, %21 ], [ %6, %20 ], [ %24, %23 ], [ %96, %94 ], [ %25, %144 ], [ %25, %140 ], [ %25, %127 ], [ %25, %122 ], [ %25, %118 ], [ %25, %112 ], [ %25, %132 ], [ %25, %134 ], [ %25, %99 ]
  ret ptr %146
}

; Function Attrs: optsize
declare ptr @lookup_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @objc_lookup_ivar(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @implicitly_declare(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @undeclared_variable(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_maybe_used_decl(ptr noundef %0) unnamed_addr #0 {
  store i64 24, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 5), align 8, !tbaa !60
  %2 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 4), align 8, !tbaa !62
  %3 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 3), align 8, !tbaa !63
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %3 to i64
  %6 = sub i64 %4, %5
  %7 = icmp slt i64 %6, 24
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  tail call void @_obstack_newchunk(ptr noundef nonnull @parser_obstack, i32 noundef 24) #21
  %9 = load i64, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 5), align 8, !tbaa !60
  %10 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 3), align 8, !tbaa !63
  br label %11

11:                                               ; preds = %1, %8
  %12 = phi ptr [ %3, %1 ], [ %10, %8 ]
  %13 = phi i64 [ 24, %1 ], [ %9, %8 ]
  %14 = getelementptr inbounds i8, ptr %12, i64 %13
  %15 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 2), align 8, !tbaa !64
  %16 = icmp eq ptr %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i8, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 10), align 8
  %19 = or i8 %18, 2
  store i8 %19, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 10), align 8
  br label %20

20:                                               ; preds = %11, %17
  %21 = ptrtoint ptr %15 to i64
  store i64 %21, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 5), align 8, !tbaa !60
  %22 = ptrtoint ptr %14 to i64
  %23 = load i32, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 6), align 8, !tbaa !65
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = xor i32 %23, -1
  %27 = sext i32 %26 to i64
  %28 = and i64 %25, %27
  %29 = inttoptr i64 %28 to ptr
  %30 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 1), align 8, !tbaa !66
  %31 = ptrtoint ptr %30 to i64
  %32 = sub i64 %28, %31
  %33 = load ptr, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 4), align 8, !tbaa !62
  %34 = ptrtoint ptr %33 to i64
  %35 = sub i64 %34, %31
  %36 = icmp sgt i64 %32, %35
  %37 = select i1 %36, ptr %33, ptr %29
  store ptr %37, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 3), align 8
  store ptr %37, ptr getelementptr inbounds (%struct.obstack, ptr @parser_obstack, i64 0, i32 2), align 8, !tbaa !64
  store ptr %0, ptr %15, align 8, !tbaa !67
  %38 = load i32, ptr @in_sizeof, align 4, !tbaa !28
  %39 = load i32, ptr @in_typeof, align 4, !tbaa !28
  %40 = add nsw i32 %39, %38
  %41 = getelementptr inbounds %struct.maybe_used_decl, ptr %15, i64 0, i32 1
  store i32 %40, ptr %41, align 8, !tbaa !69
  %42 = load ptr, ptr @maybe_used_decls, align 8, !tbaa !8
  %43 = getelementptr inbounds %struct.maybe_used_decl, ptr %15, i64 0, i32 2
  store ptr %42, ptr %43, align 8, !tbaa !70
  store ptr %15, ptr @maybe_used_decls, align 8, !tbaa !8
  ret void
}

; Function Attrs: optsize
declare void @used_types_insert(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @inform(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @decl_function_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @record_inline_static(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @pop_maybe_used(i8 noundef zeroext %0) local_unnamed_addr #7 {
  %2 = load i32, ptr @in_sizeof, align 4, !tbaa !28
  %3 = load i32, ptr @in_typeof, align 4, !tbaa !28
  %4 = add nsw i32 %3, %2
  %5 = load ptr, ptr @maybe_used_decls, align 8, !tbaa !8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  %8 = icmp eq i8 %0, 0
  %9 = icmp eq i32 %4, 0
  br label %10

10:                                               ; preds = %7, %23
  %11 = phi ptr [ %5, %7 ], [ %25, %23 ]
  %12 = getelementptr inbounds %struct.maybe_used_decl, ptr %11, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !69
  %14 = icmp sgt i32 %13, %4
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  br i1 %8, label %23, label %16

16:                                               ; preds = %15
  br i1 %9, label %17, label %22

17:                                               ; preds = %16
  %18 = load ptr, ptr %11, align 8, !tbaa !67
  %19 = getelementptr inbounds %struct.tree_decl_common, ptr %18, i64 0, i32 2
  %20 = load i64, ptr %19, align 8
  %21 = or i64 %20, 1048576
  store i64 %21, ptr %19, align 8
  br label %23

22:                                               ; preds = %16
  store i32 %4, ptr %12, align 8, !tbaa !69
  br label %23

23:                                               ; preds = %17, %22, %15
  %24 = getelementptr inbounds %struct.maybe_used_decl, ptr %11, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %10, !llvm.loop !71

27:                                               ; preds = %10, %23, %1
  %28 = phi ptr [ null, %1 ], [ null, %23 ], [ %11, %10 ]
  %29 = icmp eq i8 %0, 0
  %30 = icmp eq i32 %4, 0
  %31 = select i1 %29, i1 true, i1 %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store ptr %28, ptr @maybe_used_decls, align 8, !tbaa !8
  br label %33

33:                                               ; preds = %27, %32
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @c_expr_sizeof_expr(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.c_expr) align 8 %0, i32 noundef %1, ptr nocapture noundef readonly byval(%struct.c_expr) align 8 %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = load ptr, ptr %2, align 8, !tbaa !41
  %6 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  store ptr %5, ptr %0, align 8, !tbaa !41
  %9 = getelementptr inbounds %struct.c_expr, ptr %0, i64 0, i32 1
  store i32 0, ptr %9, align 8, !tbaa !72
  %10 = getelementptr inbounds %struct.c_expr, ptr %0, i64 0, i32 2
  store ptr null, ptr %10, align 8, !tbaa !73
  tail call void @pop_maybe_used(i8 noundef zeroext 0) #20
  br label %42

11:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #22
  store i8 1, ptr %4, align 1, !tbaa !5
  %12 = load i32, ptr @require_constant_value, align 4, !tbaa !28
  %13 = trunc i32 %12 to i8
  %14 = call ptr @c_fully_fold(ptr noundef %5, i8 noundef zeroext %13, ptr noundef nonnull %4) #21
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = call ptr @c_sizeof_or_alignof_type(i32 noundef %1, ptr noundef %16, i8 noundef zeroext 1, i32 noundef 1) #21
  store ptr %17, ptr %0, align 8, !tbaa !41
  %18 = getelementptr inbounds %struct.c_expr, ptr %0, i64 0, i32 1
  store i32 0, ptr %18, align 8, !tbaa !72
  %19 = getelementptr inbounds %struct.c_expr, ptr %0, i64 0, i32 2
  store ptr null, ptr %19, align 8, !tbaa !73
  %20 = load ptr, ptr %15, align 8, !tbaa !5
  %21 = call zeroext i8 @c_vla_type_p(ptr noundef %20) #20, !range !24
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = call ptr @build2_stat(i32 noundef 189, ptr noundef %25, ptr noundef nonnull %14, ptr noundef %17) #21
  store ptr %26, ptr %0, align 8, !tbaa !41
  %27 = load i8, ptr %4, align 1, !tbaa !5
  %28 = icmp eq i8 %27, 0
  %29 = load i64, ptr %26, align 8
  %30 = select i1 %28, i64 17179869184, i64 0
  %31 = and i64 %29, -17179869185
  %32 = or disjoint i64 %31, %30
  store i64 %32, ptr %26, align 8
  %33 = getelementptr inbounds %struct.tree_exp, ptr %26, i64 0, i32 1
  store i32 %1, ptr %33, align 8, !tbaa !5
  %34 = load ptr, ptr %15, align 8, !tbaa !5
  br label %35

35:                                               ; preds = %23, %11
  %36 = phi ptr [ %34, %23 ], [ %20, %11 ]
  %37 = getelementptr inbounds %struct.tree_type, ptr %36, i64 0, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = lshr i32 %38, 26
  %40 = trunc i32 %39 to i8
  %41 = and i8 %40, 1
  call void @pop_maybe_used(i8 noundef zeroext %41) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #22
  br label %42

42:                                               ; preds = %35, %8
  ret void
}

; Function Attrs: optsize
declare ptr @c_fully_fold(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @c_sizeof_or_alignof_type(i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @c_expr_sizeof_type(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.c_expr) align 8 %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #22
  store i8 1, ptr %5, align 1, !tbaa !5
  %6 = call ptr @groktypename(ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5) #21
  %7 = call ptr @c_sizeof_or_alignof_type(i32 noundef %1, ptr noundef %6, i8 noundef zeroext 1, i32 noundef 1) #21
  store ptr %7, ptr %0, align 8, !tbaa !41
  %8 = getelementptr inbounds %struct.c_expr, ptr %0, i64 0, i32 1
  store i32 0, ptr %8, align 8, !tbaa !72
  %9 = getelementptr inbounds %struct.c_expr, ptr %0, i64 0, i32 2
  store ptr null, ptr %9, align 8, !tbaa !73
  %10 = load ptr, ptr %4, align 8, !tbaa !8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load i64, ptr %7, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 23
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = call zeroext i8 @c_vla_type_p(ptr noundef %6) #20, !range !24
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %35, label %22

19:                                               ; preds = %3
  %20 = call zeroext i8 @c_vla_type_p(ptr noundef %6) #20, !range !24
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %35, label %24

22:                                               ; preds = %16
  %23 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !8
  store ptr %23, ptr %4, align 8, !tbaa !8
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi ptr [ %10, %19 ], [ %23, %22 ]
  %26 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = call ptr @build2_stat(i32 noundef 189, ptr noundef %27, ptr noundef %25, ptr noundef %7) #21
  store ptr %28, ptr %0, align 8, !tbaa !41
  %29 = load i8, ptr %5, align 1, !tbaa !5
  %30 = icmp eq i8 %29, 0
  %31 = load i64, ptr %28, align 8
  %32 = select i1 %30, i64 17179869184, i64 0
  %33 = and i64 %31, -17179869185
  %34 = or disjoint i64 %33, %32
  store i64 %34, ptr %28, align 8
  br label %35

35:                                               ; preds = %19, %24, %16, %12
  %36 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %37 = icmp eq ptr %6, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = lshr i32 %40, 26
  %42 = trunc i32 %41 to i8
  %43 = and i8 %42, 1
  br label %44

44:                                               ; preds = %35, %38
  %45 = phi i8 [ %43, %38 ], [ 0, %35 ]
  call void @pop_maybe_used(i8 noundef zeroext %45) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret void
}

; Function Attrs: optsize
declare ptr @groktypename(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_function_call(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = tail call i32 @list_length(ptr noundef %2) #21
  %6 = tail call fastcc ptr @VEC_tree_gc_alloc(i32 noundef %5) #20
  store ptr %6, ptr %4, align 8, !tbaa !8
  %7 = icmp eq ptr %2, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %3, %8
  %9 = phi ptr [ %13, %8 ], [ %2, %3 ]
  %10 = getelementptr inbounds %struct.tree_list, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %6, ptr noundef %11) #20
  %12 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %8, !llvm.loop !74

15:                                               ; preds = %8, %3
  %16 = tail call ptr @build_function_call_vec(i32 noundef %0, ptr noundef %1, ptr noundef %6, ptr noundef null) #20
  call fastcc void @VEC_tree_gc_free(ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_gc_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef null, i32 noundef %0) #21
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #8 {
  %3 = load i32, ptr %0, align 8, !tbaa !75
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !75
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_function_call_vec(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr @global_trees, align 16
  br label %6

6:                                                ; preds = %14, %4
  %7 = phi ptr [ %1, %4 ], [ %12, %14 ]
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %20 [
    i16 116, label %10
    i16 113, label %10
    i16 117, label %10
  ]

10:                                               ; preds = %6, %6, %6
  %11 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = icmp eq ptr %12, %5
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %6, label %20, !llvm.loop !77

20:                                               ; preds = %6, %10, %14
  %21 = and i64 %8, 65535
  %22 = icmp eq i64 %21, 29
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = tail call ptr @resolve_overloaded_builtin(i32 noundef %0, ptr noundef nonnull %7, ptr noundef %2) #21
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %238

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.tree_decl_minimal, ptr %7, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !5
  br label %29

29:                                               ; preds = %26, %20
  %30 = phi ptr [ %7, %26 ], [ null, %20 ]
  %31 = phi ptr [ %28, %26 ], [ null, %20 ]
  %32 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 20
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = tail call fastcc ptr @function_to_pointer_conversion(i32 noundef %0, ptr noundef nonnull %7) #20
  br label %39

39:                                               ; preds = %37, %29
  %40 = phi ptr [ %38, %37 ], [ %7, %29 ]
  %41 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %2) #20
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %2, i32 noundef 0) #20
  %45 = tail call ptr @objc_rewrite_function_call(ptr noundef %40, ptr noundef %44) #21
  br label %46

46:                                               ; preds = %43, %39
  %47 = phi ptr [ %40, %39 ], [ %45, %43 ]
  %48 = tail call ptr @c_fully_fold(ptr noundef %47, i8 noundef zeroext 0, ptr noundef null) #21
  %49 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !5
  %51 = load i64, ptr %50, align 8
  %52 = trunc i64 %51 to i16
  switch i16 %52, label %61 [
    i16 0, label %53
    i16 10, label %55
  ]

53:                                               ; preds = %46
  %54 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %238

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !5
  %58 = load i64, ptr %57, align 8
  %59 = and i64 %58, 65535
  %60 = icmp eq i64 %59, 20
  br i1 %60, label %63, label %61

61:                                               ; preds = %46, %55
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull %48) #21
  %62 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %238

63:                                               ; preds = %55
  %64 = icmp eq ptr %30, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %63
  %66 = load i64, ptr %30, align 8
  %67 = and i64 %66, 524288
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  store i32 1, ptr @current_function_returns_abnormally, align 4, !tbaa !28
  br label %70

70:                                               ; preds = %69, %65, %63
  %71 = getelementptr inbounds %struct.tree_type, ptr %57, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !5
  %73 = tail call fastcc i32 @convert_arguments(ptr noundef %72, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %48, ptr noundef %30) #20
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %238

77:                                               ; preds = %70
  %78 = load i64, ptr %48, align 8
  %79 = trunc i64 %78 to i16
  switch i16 %79, label %148 [
    i16 116, label %80
    i16 113, label %80
  ]

80:                                               ; preds = %77, %77
  %81 = getelementptr inbounds %struct.tree_exp, ptr %48, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !5
  %83 = load i64, ptr %82, align 8
  %84 = and i64 %83, 65535
  %85 = icmp eq i64 %84, 121
  br i1 %85, label %86, label %148

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.tree_exp, ptr %82, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !5
  %89 = load i64, ptr %88, align 8
  %90 = and i64 %89, 65535
  %91 = icmp eq i64 %90, 29
  br i1 %91, label %92, label %148

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.tree_common, ptr %88, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !5
  %95 = tail call i32 @comptypes(ptr noundef nonnull %57, ptr noundef %94) #20
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %148

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !5
  %100 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 509), align 8, !tbaa !8
  %101 = tail call ptr @build_function_call(i32 noundef %0, ptr noundef %100, ptr noundef null) #20
  %102 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.28) #21
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %97
  tail call void (i32, ptr, ...) @inform(i32 noundef %0, ptr noundef nonnull @.str.29) #21
  br label %105

105:                                              ; preds = %104, %97
  %106 = icmp eq i32 %73, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %105, %107
  %108 = phi i32 [ %113, %107 ], [ 0, %105 ]
  %109 = phi ptr [ %112, %107 ], [ %101, %105 ]
  %110 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !8
  %111 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %2, i32 noundef %108) #20
  %112 = tail call ptr @build2_stat(i32 noundef 52, ptr noundef %110, ptr noundef %111, ptr noundef %109) #21
  %113 = add nuw nsw i32 %108, 1
  %114 = icmp eq i32 %113, %73
  br i1 %114, label %115, label %107, !llvm.loop !78

115:                                              ; preds = %107, %105
  %116 = phi ptr [ %101, %105 ], [ %112, %107 ]
  %117 = load i64, ptr %99, align 8
  %118 = trunc i64 %117 to i16
  switch i16 %118, label %141 [
    i16 19, label %119
    i16 15, label %138
    i16 16, label %138
    i16 17, label %138
    i16 18, label %138
  ]

119:                                              ; preds = %115
  %120 = trunc i64 %117 to i32
  %121 = lshr i32 %120, 20
  %122 = and i32 %121, 1
  %123 = lshr i32 %120, 18
  %124 = and i32 %123, 2
  %125 = or disjoint i32 %122, %124
  %126 = getelementptr inbounds %struct.tree_type, ptr %99, i64 0, i32 6
  %127 = load i32, ptr %126, align 4
  %128 = lshr i32 %127, 11
  %129 = and i32 %128, 4
  %130 = lshr i64 %117, 48
  %131 = trunc i64 %130 to i32
  %132 = and i32 %131, 65280
  %133 = or disjoint i32 %125, %132
  %134 = or disjoint i32 %133, %129
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %238, label %136

136:                                              ; preds = %119
  %137 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.30) #21
  br label %238

138:                                              ; preds = %115, %115, %115, %115
  %139 = tail call ptr @build_constructor(ptr noundef nonnull %99, ptr noundef null) #21
  %140 = tail call ptr @build_compound_literal(i32 noundef %0, ptr noundef nonnull %99, ptr noundef %139, i8 noundef zeroext 0) #21
  br label %144

141:                                              ; preds = %115
  %142 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !8
  %143 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef nonnull %99, ptr noundef %142) #21
  br label %144

144:                                              ; preds = %141, %138
  %145 = phi ptr [ %140, %138 ], [ %143, %141 ]
  %146 = tail call ptr @build2_stat(i32 noundef 52, ptr noundef nonnull %99, ptr noundef %116, ptr noundef %145) #21
  %147 = tail call ptr @require_complete_type(ptr noundef %146) #20
  br label %238

148:                                              ; preds = %77, %92, %86, %80
  %149 = tail call fastcc ptr @VEC_tree_base_address(ptr noundef %2) #20
  br i1 %64, label %160, label %150

150:                                              ; preds = %148
  %151 = getelementptr inbounds %struct.tree_function_decl, ptr %30, i64 0, i32 5
  %152 = load i32, ptr %151, align 8
  %153 = and i32 %152, 6144
  %154 = icmp eq i32 %153, 6144
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = tail call zeroext i8 @check_builtin_function_arguments(ptr noundef nonnull %30, i32 noundef %73, ptr noundef %149) #21
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %155
  %159 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %238

160:                                              ; preds = %150, %155, %148
  %161 = getelementptr inbounds %struct.tree_type, ptr %57, i64 0, i32 4
  %162 = load ptr, ptr %161, align 8, !tbaa !5
  %163 = load ptr, ptr %71, align 8, !tbaa !5
  tail call void @check_function_arguments(ptr noundef %162, i32 noundef %73, ptr noundef %149, ptr noundef %163) #21
  %164 = icmp eq ptr %31, null
  br i1 %164, label %206, label %165

165:                                              ; preds = %160
  %166 = getelementptr inbounds %struct.tree_identifier, ptr %31, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !5
  %168 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %167, ptr noundef nonnull dereferenceable(11) @.str.31, i64 noundef 10) #20
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %206

170:                                              ; preds = %165
  %171 = load i32, ptr @require_constant_value, align 4, !tbaa !28
  %172 = icmp eq i32 %171, 0
  %173 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 2
  %174 = load ptr, ptr %173, align 8, !tbaa !5
  br i1 %172, label %177, label %175

175:                                              ; preds = %170
  %176 = tail call ptr @fold_build_call_array_initializer_loc(i32 noundef %0, ptr noundef %174, ptr noundef nonnull %48, i32 noundef %73, ptr noundef %149) #21
  br label %179

177:                                              ; preds = %170
  %178 = tail call ptr @fold_build_call_array_loc(i32 noundef %0, ptr noundef %174, ptr noundef nonnull %48, i32 noundef %73, ptr noundef %149) #21
  br label %179

179:                                              ; preds = %177, %175
  %180 = phi ptr [ %176, %175 ], [ %178, %177 ]
  %181 = load i64, ptr %180, align 8
  %182 = and i64 %181, 65535
  %183 = icmp eq i64 %182, 116
  br i1 %183, label %184, label %210

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.tree_exp, ptr %180, i64 0, i32 3
  %186 = load ptr, ptr %185, align 8, !tbaa !5
  %187 = load i64, ptr %186, align 8
  %188 = and i64 %187, 65535
  %189 = icmp eq i64 %188, 23
  br i1 %189, label %190, label %210

190:                                              ; preds = %184
  %191 = load ptr, ptr @global_trees, align 16
  br label %192

192:                                              ; preds = %190, %200
  %193 = phi ptr [ %198, %200 ], [ %180, %190 ]
  %194 = load i64, ptr %193, align 8
  %195 = trunc i64 %194 to i16
  switch i16 %195, label %210 [
    i16 116, label %196
    i16 113, label %196
    i16 117, label %196
  ]

196:                                              ; preds = %192, %192, %192
  %197 = getelementptr inbounds %struct.tree_exp, ptr %193, i64 0, i32 3
  %198 = load ptr, ptr %197, align 8, !tbaa !5
  %199 = icmp eq ptr %198, %191
  br i1 %199, label %210, label %200

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.tree_common, ptr %193, i64 0, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !5
  %203 = getelementptr inbounds %struct.tree_common, ptr %198, i64 0, i32 2
  %204 = load ptr, ptr %203, align 8, !tbaa !5
  %205 = icmp eq ptr %202, %204
  br i1 %205, label %192, label %210, !llvm.loop !79

206:                                              ; preds = %165, %160
  %207 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 2
  %208 = load ptr, ptr %207, align 8, !tbaa !5
  %209 = tail call ptr @build_call_array_loc(i32 noundef %0, ptr noundef %208, ptr noundef nonnull %48, i32 noundef %73, ptr noundef %149) #21
  br label %210

210:                                              ; preds = %192, %196, %200, %179, %184, %206
  %211 = phi ptr [ %209, %206 ], [ %180, %184 ], [ %180, %179 ], [ %193, %200 ], [ %193, %196 ], [ %193, %192 ]
  %212 = getelementptr inbounds %struct.tree_common, ptr %211, i64 0, i32 2
  %213 = load ptr, ptr %212, align 8, !tbaa !5
  %214 = load i64, ptr %213, align 8
  %215 = and i64 %214, 65535
  %216 = icmp eq i64 %215, 19
  br i1 %216, label %217, label %236

217:                                              ; preds = %210
  %218 = trunc i64 %214 to i32
  %219 = lshr i32 %218, 20
  %220 = and i32 %219, 1
  %221 = lshr i32 %218, 18
  %222 = and i32 %221, 2
  %223 = or disjoint i32 %220, %222
  %224 = getelementptr inbounds %struct.tree_type, ptr %213, i64 0, i32 6
  %225 = load i32, ptr %224, align 4
  %226 = lshr i32 %225, 11
  %227 = and i32 %226, 4
  %228 = lshr i64 %214, 48
  %229 = trunc i64 %228 to i32
  %230 = and i32 %229, 65280
  %231 = or disjoint i32 %223, %230
  %232 = or disjoint i32 %231, %227
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %238, label %234

234:                                              ; preds = %217
  %235 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.30) #21
  br label %238

236:                                              ; preds = %210
  %237 = tail call ptr @require_complete_type(ptr noundef nonnull %211) #20
  br label %238

238:                                              ; preds = %217, %234, %144, %136, %119, %23, %236, %158, %75, %61, %53
  %239 = phi ptr [ %54, %53 ], [ %76, %75 ], [ %237, %236 ], [ %159, %158 ], [ %62, %61 ], [ %24, %23 ], [ %147, %144 ], [ %116, %136 ], [ %116, %119 ], [ %211, %234 ], [ %211, %217 ]
  ret ptr %239
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_free(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @ggc_free(ptr noundef nonnull %2) #21
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !8
  ret void
}

; Function Attrs: optsize
declare ptr @resolve_overloaded_builtin(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !75
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @objc_rewrite_function_call(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !8
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @convert_arguments(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  %7 = icmp eq ptr %4, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.tree_type, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.170, ptr noundef %12) #21
  %14 = icmp ne ptr %13, null
  br label %15

15:                                               ; preds = %8, %5
  %16 = phi i1 [ false, %5 ], [ %14, %8 ]
  %17 = load i64, ptr %3, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 121
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 29
  %26 = select i1 %25, ptr %22, ptr %3
  br label %27

27:                                               ; preds = %20, %15
  %28 = phi ptr [ %3, %15 ], [ %26, %20 ]
  %29 = tail call ptr @objc_message_selector() #21
  br i1 %16, label %30, label %44

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.tree_function_decl, ptr %4, i64 0, i32 5
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 6144
  %34 = icmp eq i32 %33, 6144
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = and i32 %32, 2047
  %37 = add nsw i32 %36, -466
  %38 = icmp ult i32 %37, 16
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = trunc i32 %37 to i16
  %41 = lshr i16 -32241, %40
  %42 = and i16 %41, 1
  %43 = icmp ne i16 %42, 0
  br label %44

44:                                               ; preds = %35, %39, %30, %27
  %45 = phi i1 [ false, %27 ], [ false, %30 ], [ %43, %39 ], [ false, %35 ]
  %46 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %6) #20, !range !35
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %376, label %48

48:                                               ; preds = %44
  %49 = icmp ne ptr %29, null
  %50 = icmp eq ptr %2, null
  %51 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  br label %52

52:                                               ; preds = %48, %369
  %53 = phi ptr [ %0, %48 ], [ %370, %369 ]
  %54 = phi i32 [ 0, %48 ], [ %65, %369 ]
  %55 = phi i8 [ 0, %48 ], [ %365, %369 ]
  %56 = icmp eq ptr %53, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.tree_list, ptr %53, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !5
  br label %60

60:                                               ; preds = %52, %57
  %61 = phi ptr [ %59, %57 ], [ null, %52 ]
  %62 = load ptr, ptr %6, align 8, !tbaa !8
  %63 = getelementptr inbounds %struct.tree_common, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !5
  %65 = add i32 %54, 1
  %66 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !8
  %67 = icmp eq ptr %61, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %60
  %69 = load i32, ptr @input_location, align 4, !tbaa !28
  tail call void (i32, ptr, ...) @error_at(i32 noundef %69, ptr noundef nonnull @.str.171, ptr noundef nonnull %28) #21
  br i1 %7, label %400, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.tree_function_decl, ptr %4, i64 0, i32 5
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, 6144
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %400

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.tree_decl_minimal, ptr %4, i64 0, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !5
  tail call void (i32, ptr, ...) @inform(i32 noundef %77, ptr noundef nonnull @.str.172) #21
  br label %400

78:                                               ; preds = %60
  %79 = icmp sgt i32 %65, 2
  %80 = and i1 %49, %79
  %81 = add i32 %54, -1
  %82 = select i1 %80, ptr %29, ptr %28
  %83 = select i1 %80, i32 %81, i32 %65
  %84 = tail call fastcc zeroext i8 @null_pointer_constant_p(ptr noundef nonnull %62) #20, !range !24
  %85 = load i64, ptr %62, align 8
  %86 = and i64 %85, 65535
  %87 = icmp eq i64 %86, 190
  br i1 %87, label %88, label %95

88:                                               ; preds = %78
  %89 = icmp eq ptr %61, null
  %90 = select i1 %89, i1 %16, i1 false
  %91 = and i1 %45, %90
  br i1 %91, label %95, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.tree_exp, ptr %62, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !5
  br label %95

95:                                               ; preds = %88, %92, %78
  %96 = phi ptr [ %62, %88 ], [ %94, %92 ], [ %62, %78 ]
  %97 = phi i1 [ true, %88 ], [ false, %92 ], [ true, %78 ]
  %98 = tail call ptr @c_fully_fold(ptr noundef %96, i8 noundef zeroext 0, ptr noundef null) #21
  %99 = load ptr, ptr @global_trees, align 16
  br label %100

100:                                              ; preds = %108, %95
  %101 = phi ptr [ %98, %95 ], [ %106, %108 ]
  %102 = load i64, ptr %101, align 8
  %103 = trunc i64 %102 to i16
  switch i16 %103, label %114 [
    i16 116, label %104
    i16 113, label %104
    i16 117, label %104
  ]

104:                                              ; preds = %100, %100, %100
  %105 = getelementptr inbounds %struct.tree_exp, ptr %101, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !5
  %107 = icmp eq ptr %106, %99
  br i1 %107, label %114, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.tree_common, ptr %101, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !5
  %111 = getelementptr inbounds %struct.tree_common, ptr %106, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !5
  %113 = icmp eq ptr %110, %112
  br i1 %113, label %100, label %114, !llvm.loop !80

114:                                              ; preds = %100, %104, %108
  %115 = tail call ptr @require_complete_type(ptr noundef nonnull %101) #20
  store ptr %115, ptr %6, align 8, !tbaa !8
  %116 = icmp eq ptr %61, null
  br i1 %116, label %327, label %117

117:                                              ; preds = %114
  %118 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %119 = icmp eq ptr %61, %118
  br i1 %119, label %124, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.tree_type, ptr %61, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !5
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %120, %117
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.173, i32 noundef %65) #21
  br label %361

125:                                              ; preds = %120
  %126 = load i32, ptr @warn_traditional_conversion, align 4, !tbaa !28
  %127 = icmp ne i32 %126, 0
  %128 = load i32, ptr @warn_traditional, align 4
  %129 = icmp ne i32 %128, 0
  %130 = select i1 %127, i1 true, i1 %129
  br i1 %130, label %131, label %292

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.tree_type, ptr %61, i64 0, i32 6
  %133 = load i32, ptr %132, align 4
  %134 = and i32 %133, 1023
  %135 = load i64, ptr %61, align 8
  %136 = trunc i64 %135 to i32
  %137 = and i32 %136, 65535
  %138 = add nsw i32 %137, -6
  %139 = icmp ult i32 %138, 3
  br i1 %139, label %140, label %149

140:                                              ; preds = %131
  %141 = load i64, ptr %64, align 8
  %142 = and i64 %141, 65535
  %143 = icmp eq i64 %142, 9
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.174, i32 noundef %83, ptr noundef %82) #21
  %146 = load i64, ptr %61, align 8
  %147 = trunc i64 %146 to i32
  %148 = and i32 %147, 65535
  br label %149

149:                                              ; preds = %131, %144, %140
  %150 = phi i32 [ %137, %131 ], [ %148, %144 ], [ %137, %140 ]
  %151 = phi i64 [ %135, %131 ], [ %146, %144 ], [ %135, %140 ]
  %152 = add nsw i32 %150, -9
  %153 = icmp ult i32 %152, -3
  br i1 %153, label %160, label %154

154:                                              ; preds = %149
  %155 = load i64, ptr %64, align 8
  %156 = and i64 %155, 65535
  %157 = icmp eq i64 %156, 13
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.175, i32 noundef %83, ptr noundef %82) #21
  br label %292

160:                                              ; preds = %149, %154
  %161 = trunc i64 %151 to i16
  switch i16 %161, label %230 [
    i16 13, label %162
    i16 9, label %168
  ]

162:                                              ; preds = %160
  %163 = load i64, ptr %64, align 8
  %164 = and i64 %163, 65535
  %165 = icmp eq i64 %164, 9
  br i1 %165, label %166, label %176

166:                                              ; preds = %162
  %167 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.176, i32 noundef %83, ptr noundef %82) #21
  br label %292

168:                                              ; preds = %160
  %169 = load i64, ptr %64, align 8
  %170 = trunc i64 %169 to i32
  %171 = and i32 %170, 65535
  %172 = add nsw i32 %171, -6
  %173 = icmp ult i32 %172, 3
  br i1 %173, label %174, label %183

174:                                              ; preds = %168
  %175 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.177, i32 noundef %83, ptr noundef %82) #21
  br label %292

176:                                              ; preds = %162
  %177 = trunc i64 %163 to i32
  %178 = and i32 %177, 65535
  %179 = add nsw i32 %178, -6
  %180 = icmp ult i32 %179, 3
  br i1 %180, label %181, label %230

181:                                              ; preds = %176
  %182 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.178, i32 noundef %83, ptr noundef %82) #21
  br label %292

183:                                              ; preds = %168
  %184 = trunc i64 %169 to i16
  switch i16 %184, label %230 [
    i16 13, label %185
    i16 9, label %187
  ]

185:                                              ; preds = %183
  %186 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.179, i32 noundef %83, ptr noundef %82) #21
  br label %292

187:                                              ; preds = %183
  %188 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !8
  %189 = getelementptr inbounds %struct.tree_type, ptr %188, i64 0, i32 6
  %190 = load i32, ptr %189, align 4
  %191 = and i32 %190, 1023
  %192 = icmp ne i32 %134, %191
  %193 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 49), align 8
  %194 = icmp eq ptr %61, %193
  %195 = select i1 %192, i1 true, i1 %194
  br i1 %195, label %198, label %196

196:                                              ; preds = %187
  %197 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.180, i32 noundef %83, ptr noundef %82) #21
  br label %292

198:                                              ; preds = %187
  %199 = icmp eq ptr %61, %64
  br i1 %199, label %292, label %200

200:                                              ; preds = %198
  br i1 %194, label %213, label %201

201:                                              ; preds = %200
  %202 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 50), align 16, !tbaa !8
  %203 = icmp eq ptr %61, %202
  br i1 %203, label %213, label %204

204:                                              ; preds = %201
  %205 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 51), align 8, !tbaa !8
  %206 = icmp eq ptr %61, %205
  %207 = icmp eq ptr %64, %193
  %208 = select i1 %206, i1 true, i1 %207
  %209 = icmp eq ptr %64, %202
  %210 = select i1 %208, i1 true, i1 %209
  %211 = icmp eq ptr %64, %205
  %212 = select i1 %210, i1 true, i1 %211
  br i1 %212, label %213, label %292

213:                                              ; preds = %204, %201, %200
  %214 = getelementptr inbounds %struct.tree_type, ptr %64, i64 0, i32 6
  %215 = load i32, ptr %214, align 4
  %216 = and i32 %215, 1023
  %217 = icmp ugt i32 %134, %216
  br i1 %217, label %218, label %228

218:                                              ; preds = %213
  %219 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 51), align 8, !tbaa !8
  %220 = icmp ne ptr %61, %219
  %221 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 50), align 16
  %222 = icmp eq ptr %64, %221
  %223 = select i1 %220, i1 true, i1 %222
  %224 = icmp eq ptr %64, %193
  %225 = icmp ne ptr %61, %221
  %226 = select i1 %223, i1 %225, i1 false
  %227 = select i1 %226, i1 true, i1 %224
  br i1 %227, label %292, label %228

228:                                              ; preds = %218, %213
  %229 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.181, i32 noundef %83, ptr noundef %82, ptr noundef nonnull %61, ptr noundef nonnull %64) #21
  br label %292

230:                                              ; preds = %183, %176, %160
  %231 = load i32, ptr @warn_traditional_conversion, align 4, !tbaa !28
  %232 = icmp eq i32 %231, 0
  %233 = or i1 %153, %232
  br i1 %233, label %292, label %234

234:                                              ; preds = %230
  %235 = load i64, ptr %64, align 8
  %236 = trunc i64 %235 to i32
  %237 = and i32 %236, 65535
  %238 = add nsw i32 %237, -6
  %239 = icmp ult i32 %238, 3
  br i1 %239, label %240, label %292

240:                                              ; preds = %234
  %241 = tail call ptr @default_conversion(ptr noundef %115) #20
  %242 = getelementptr inbounds %struct.tree_common, ptr %241, i64 0, i32 2
  %243 = load ptr, ptr %242, align 8, !tbaa !5
  %244 = load i64, ptr %61, align 8
  %245 = and i64 %244, 65535
  %246 = icmp eq i64 %245, 6
  br i1 %246, label %247, label %253

247:                                              ; preds = %240
  %248 = getelementptr inbounds %struct.tree_type, ptr %61, i64 0, i32 16
  %249 = load ptr, ptr %248, align 8, !tbaa !5
  %250 = getelementptr inbounds %struct.tree_type, ptr %64, i64 0, i32 16
  %251 = load ptr, ptr %250, align 8, !tbaa !5
  %252 = icmp eq ptr %249, %251
  br i1 %252, label %292, label %253

253:                                              ; preds = %247, %240
  %254 = getelementptr inbounds %struct.tree_type, ptr %243, i64 0, i32 6
  %255 = load i32, ptr %254, align 4
  %256 = and i32 %255, 1023
  %257 = icmp eq i32 %134, %256
  br i1 %257, label %260, label %258

258:                                              ; preds = %253
  %259 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 203, ptr noundef nonnull @.str.182, i32 noundef %83, ptr noundef %82) #21
  br label %292

260:                                              ; preds = %253
  %261 = load i64, ptr %243, align 8
  %262 = xor i64 %261, %244
  %263 = and i64 %262, 2097152
  %264 = icmp eq i64 %263, 0
  %265 = or i1 %246, %264
  br i1 %265, label %292, label %266

266:                                              ; preds = %260
  %267 = load i64, ptr %115, align 8
  %268 = and i64 %267, 65535
  %269 = icmp eq i64 %268, 23
  br i1 %269, label %270, label %273

270:                                              ; preds = %266
  %271 = tail call i32 @int_fits_type_p(ptr noundef nonnull %115, ptr noundef nonnull %61) #21
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %292

273:                                              ; preds = %270, %266
  %274 = getelementptr inbounds %struct.tree_type, ptr %64, i64 0, i32 6
  %275 = load i32, ptr %274, align 4
  %276 = and i32 %275, 1023
  %277 = load i32, ptr %132, align 4
  %278 = and i32 %277, 1023
  %279 = icmp ult i32 %276, %278
  br i1 %279, label %280, label %284

280:                                              ; preds = %273
  %281 = load i64, ptr %64, align 8
  %282 = and i64 %281, 2097152
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %284, label %292

284:                                              ; preds = %280, %273
  %285 = load i64, ptr %61, align 8
  %286 = and i64 %285, 2097152
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %290, label %288

288:                                              ; preds = %284
  %289 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 203, ptr noundef nonnull @.str.183, i32 noundef %83, ptr noundef %82) #21
  br label %292

290:                                              ; preds = %284
  %291 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 203, ptr noundef nonnull @.str.184, i32 noundef %83, ptr noundef %82) #21
  br label %292

292:                                              ; preds = %230, %218, %234, %158, %174, %185, %196, %228, %198, %181, %166, %204, %258, %280, %290, %288, %270, %260, %247, %125
  br i1 %97, label %295, label %293

293:                                              ; preds = %292
  %294 = tail call ptr @build1_stat(i32 noundef 190, ptr noundef %64, ptr noundef %115) #21
  store ptr %294, ptr %6, align 8, !tbaa !8
  br label %295

295:                                              ; preds = %293, %292
  %296 = phi ptr [ %294, %293 ], [ %115, %292 ]
  br i1 %50, label %299, label %297

297:                                              ; preds = %295
  %298 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef nonnull %2, i32 noundef %54) #20
  br label %299

299:                                              ; preds = %295, %297
  %300 = phi ptr [ %298, %297 ], [ null, %295 ]
  %301 = load i32, ptr @input_location, align 4, !tbaa !28
  %302 = tail call fastcc ptr @convert_for_assignment(i32 noundef %301, ptr noundef nonnull %61, ptr noundef %296, ptr noundef %300, i32 noundef 0, i8 noundef zeroext %84, ptr noundef %4, ptr noundef nonnull %28, i32 noundef %65) #20
  %303 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 1), align 8, !tbaa !81
  br i1 %7, label %306, label %304

304:                                              ; preds = %299
  %305 = load ptr, ptr %51, align 8, !tbaa !5
  br label %306

306:                                              ; preds = %299, %304
  %307 = phi ptr [ %305, %304 ], [ null, %299 ]
  %308 = tail call zeroext i8 %303(ptr noundef %307) #21
  %309 = icmp eq i8 %308, 0
  br i1 %309, label %361, label %310

310:                                              ; preds = %306
  %311 = load i64, ptr %61, align 8
  %312 = trunc i64 %311 to i32
  %313 = and i32 %312, 65535
  %314 = add nsw i32 %313, -6
  %315 = icmp ult i32 %314, 3
  br i1 %315, label %316, label %361

316:                                              ; preds = %310
  %317 = getelementptr inbounds %struct.tree_type, ptr %61, i64 0, i32 6
  %318 = load i32, ptr %317, align 4
  %319 = and i32 %318, 1023
  %320 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !8
  %321 = getelementptr inbounds %struct.tree_type, ptr %320, i64 0, i32 6
  %322 = load i32, ptr %321, align 4
  %323 = and i32 %322, 1023
  %324 = icmp ult i32 %319, %323
  br i1 %324, label %325, label %361

325:                                              ; preds = %316
  %326 = tail call ptr @default_conversion(ptr noundef %302) #20
  br label %361

327:                                              ; preds = %114
  %328 = load i64, ptr %64, align 8
  %329 = and i64 %328, 65535
  %330 = icmp eq i64 %329, 9
  br i1 %330, label %331, label %350

331:                                              ; preds = %327
  %332 = getelementptr inbounds %struct.tree_type, ptr %64, i64 0, i32 6
  %333 = load i32, ptr %332, align 4
  %334 = and i32 %333, 1023
  %335 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16, !tbaa !8
  %336 = getelementptr inbounds %struct.tree_type, ptr %335, i64 0, i32 6
  %337 = load i32, ptr %336, align 4
  %338 = and i32 %337, 1023
  %339 = icmp ult i32 %334, %338
  br i1 %339, label %340, label %350

340:                                              ; preds = %331
  %341 = lshr i32 %333, 16
  %342 = and i32 %341, 255
  %343 = zext nneg i32 %342 to i64
  %344 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %343
  %345 = load i8, ptr %344, align 1, !tbaa !5
  %346 = icmp eq i8 %345, 9
  br i1 %346, label %350, label %347

347:                                              ; preds = %340
  br i1 %16, label %361, label %348

348:                                              ; preds = %347
  %349 = tail call ptr @convert(ptr noundef nonnull %335, ptr noundef %115) #21
  br label %361

350:                                              ; preds = %340, %331, %327
  %351 = select i1 %97, i1 true, i1 %16
  br i1 %351, label %354, label %352

352:                                              ; preds = %350
  %353 = tail call ptr @convert(ptr noundef nonnull %64, ptr noundef %115) #21
  br label %361

354:                                              ; preds = %350
  %355 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 14), align 8, !tbaa !82
  %356 = tail call ptr %355(ptr noundef %0, ptr noundef %4, ptr noundef %115) #21
  %357 = icmp eq ptr %356, null
  br i1 %357, label %359, label %358

358:                                              ; preds = %354
  tail call void (ptr, ...) @error(ptr noundef nonnull %356) #21
  br label %400

359:                                              ; preds = %354
  %360 = tail call ptr @default_conversion(ptr noundef %115) #20
  br label %361

361:                                              ; preds = %347, %310, %306, %316, %325, %348, %359, %352, %124
  %362 = phi ptr [ %115, %124 ], [ %360, %359 ], [ %353, %352 ], [ %349, %348 ], [ %326, %325 ], [ %302, %316 ], [ %302, %306 ], [ %302, %310 ], [ %115, %347 ]
  tail call fastcc void @VEC_tree_base_replace(ptr noundef %1, i32 noundef %54, ptr noundef %362) #20
  %363 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %364 = icmp eq ptr %362, %363
  %365 = select i1 %364, i8 1, i8 %55
  br i1 %56, label %369, label %366

366:                                              ; preds = %361
  %367 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 1
  %368 = load ptr, ptr %367, align 8, !tbaa !5
  br label %369

369:                                              ; preds = %361, %366
  %370 = phi ptr [ %368, %366 ], [ null, %361 ]
  %371 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %1, i32 noundef %65, ptr noundef nonnull %6) #20, !range !35
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %52, !llvm.loop !83

373:                                              ; preds = %369
  %374 = icmp eq i8 %365, 0
  %375 = select i1 %374, i32 %65, i32 -1
  br label %376

376:                                              ; preds = %373, %44
  %377 = phi i32 [ 0, %44 ], [ %375, %373 ]
  %378 = phi i32 [ 0, %44 ], [ %65, %373 ]
  %379 = phi ptr [ %0, %44 ], [ %370, %373 ]
  %380 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %1) #20
  %381 = icmp eq i32 %378, %380
  br i1 %381, label %383, label %382

382:                                              ; preds = %376
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3043, ptr noundef nonnull @.str.8) #21
  br label %383

383:                                              ; preds = %376, %382
  %384 = icmp eq ptr %379, null
  br i1 %384, label %400, label %385

385:                                              ; preds = %383
  %386 = getelementptr inbounds %struct.tree_list, ptr %379, i64 0, i32 2
  %387 = load ptr, ptr %386, align 8, !tbaa !5
  %388 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !8
  %389 = icmp eq ptr %387, %388
  br i1 %389, label %400, label %390

390:                                              ; preds = %385
  %391 = load i32, ptr @input_location, align 4, !tbaa !28
  tail call void (i32, ptr, ...) @error_at(i32 noundef %391, ptr noundef nonnull @.str.185, ptr noundef nonnull %28) #21
  br i1 %7, label %400, label %392

392:                                              ; preds = %390
  %393 = getelementptr inbounds %struct.tree_function_decl, ptr %4, i64 0, i32 5
  %394 = load i32, ptr %393, align 8
  %395 = and i32 %394, 6144
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %400

397:                                              ; preds = %392
  %398 = getelementptr inbounds %struct.tree_decl_minimal, ptr %4, i64 0, i32 1
  %399 = load i32, ptr %398, align 8, !tbaa !5
  tail call void (i32, ptr, ...) @inform(i32 noundef %399, ptr noundef nonnull @.str.172) #21
  br label %400

400:                                              ; preds = %383, %385, %68, %70, %75, %358, %390, %392, %397
  %401 = phi i32 [ -1, %397 ], [ -1, %392 ], [ -1, %390 ], [ %54, %68 ], [ %54, %70 ], [ %54, %75 ], [ -1, %358 ], [ %377, %385 ], [ %377, %383 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  ret i32 %401
}

; Function Attrs: optsize
declare ptr @build_compound_literal(i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_constructor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_tree_base_address(ptr noundef readnone %0) unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @check_builtin_function_arguments(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @check_function_arguments(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @fold_build_call_array_initializer_loc(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build_call_array_loc(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_call_array_loc(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @parser_build_unary_op(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.c_expr) align 8 %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly byval(%struct.c_expr) align 8 %3) local_unnamed_addr #0 {
  %5 = load ptr, ptr %3, align 8, !tbaa !41
  %6 = tail call ptr @build_unary_op(i32 noundef %1, i32 noundef %2, ptr noundef %5, i32 noundef 0) #20
  store ptr %6, ptr %0, align 8, !tbaa !41
  %7 = getelementptr inbounds %struct.c_expr, ptr %0, i64 0, i32 1
  store i32 %2, ptr %7, align 8, !tbaa !72
  %8 = getelementptr inbounds %struct.c_expr, ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !73
  %9 = load i64, ptr %6, align 8
  %10 = and i64 %9, 65535
  %11 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !28
  %13 = icmp ne i32 %12, 1
  %14 = and i64 %9, 134217728
  %15 = icmp eq i64 %14, 0
  %16 = or i1 %13, %15
  br i1 %16, label %27, label %17

17:                                               ; preds = %4
  %18 = load i64, ptr %5, align 8
  %19 = and i64 %18, 65535
  %20 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !28
  %22 = icmp ne i32 %21, 1
  %23 = and i64 %18, 134217728
  %24 = icmp eq i64 %23, 0
  %25 = or i1 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  tail call void @overflow_warning(i32 noundef %1, ptr noundef nonnull %6) #21
  br label %27

27:                                               ; preds = %17, %26, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_unary_op(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  %10 = add nsw i32 %9, -6
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %12, label %20

12:                                               ; preds = %4
  %13 = load i64, ptr %2, align 8
  %14 = trunc i64 %13 to i16
  switch i16 %14, label %20 [
    i16 23, label %18
    i16 189, label %15
  ]

15:                                               ; preds = %12
  %16 = and i64 %13, 8589934592
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %12, %15
  %19 = tail call fastcc ptr @remove_c_maybe_const_expr(ptr noundef nonnull %2) #20
  br label %20

20:                                               ; preds = %12, %4, %18, %15
  %21 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %4 ], [ false, %12 ]
  %22 = phi ptr [ %19, %18 ], [ %2, %15 ], [ %2, %4 ], [ %2, %12 ]
  %23 = icmp eq i32 %1, 121
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @require_complete_type(ptr noundef %22) #20
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi ptr [ %25, %24 ], [ %22, %20 ]
  %28 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  %30 = load i64, ptr %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = and i32 %31, 65535
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %634

36:                                               ; preds = %26
  %37 = and i32 %31, 65534
  %38 = icmp eq i32 %37, 6
  %39 = select i1 %38, i32 8, i32 %32
  %40 = freeze i32 %39
  %41 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 90), align 8, !tbaa !84
  %42 = load ptr, ptr %5, align 8, !tbaa !5
  %43 = tail call ptr %41(i32 noundef %1, ptr noundef %42) #21
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %36
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull %43) #21
  %46 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %634

47:                                               ; preds = %36
  %48 = load i64, ptr %27, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 190
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load ptr, ptr %28, align 8, !tbaa !5
  %53 = getelementptr inbounds %struct.tree_exp, ptr %27, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !5
  br label %55

55:                                               ; preds = %51, %47
  %56 = phi ptr [ %52, %51 ], [ null, %47 ]
  %57 = phi ptr [ %54, %51 ], [ %27, %47 ]
  switch i32 %1, label %584 [
    i32 113, label %58
    i32 79, label %72
    i32 90, label %83
    i32 82, label %108
    i32 124, label %117
    i32 96, label %128
    i32 43, label %146
    i32 44, label %173
    i32 126, label %203
    i32 128, label %203
    i32 125, label %203
    i32 127, label %203
    i32 121, label %429
  ]

58:                                               ; preds = %55
  %59 = and i32 %40, 65534
  %60 = icmp eq i32 %59, 8
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = trunc i32 %40 to i16
  switch i16 %62, label %63 [
    i16 14, label %65
    i16 13, label %65
    i16 11, label %65
  ]

63:                                               ; preds = %61
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.34) #21
  %64 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %634

65:                                               ; preds = %61, %61, %61, %58
  %66 = icmp eq i32 %3, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %65
  %68 = tail call ptr @default_conversion(ptr noundef %57) #20
  br label %69

69:                                               ; preds = %65, %67
  %70 = phi ptr [ %57, %65 ], [ %68, %67 ]
  %71 = tail call ptr @non_lvalue_loc(i32 noundef %0, ptr noundef %70) #21
  br label %585

72:                                               ; preds = %55
  %73 = and i32 %40, 65534
  %74 = icmp eq i32 %73, 8
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = trunc i32 %40 to i16
  switch i16 %76, label %77 [
    i16 14, label %79
    i16 13, label %79
    i16 11, label %79
  ]

77:                                               ; preds = %75
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.35) #21
  %78 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %634

79:                                               ; preds = %75, %75, %75, %72
  %80 = icmp eq i32 %3, 0
  br i1 %80, label %81, label %585

81:                                               ; preds = %79
  %82 = tail call ptr @default_conversion(ptr noundef %57) #20
  br label %585

83:                                               ; preds = %55
  %84 = trunc i32 %40 to i16
  switch i16 %84, label %106 [
    i16 8, label %97
    i16 14, label %85
    i16 13, label %101
  ]

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !5
  %88 = load i64, ptr %87, align 8
  %89 = and i64 %88, 65535
  %90 = icmp eq i64 %89, 14
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.tree_common, ptr %87, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !5
  %94 = load i64, ptr %93, align 8
  %95 = and i64 %94, 65535
  %96 = icmp eq i64 %95, 9
  br i1 %96, label %106, label %97

97:                                               ; preds = %83, %91, %85
  %98 = icmp eq i32 %3, 0
  br i1 %98, label %99, label %585

99:                                               ; preds = %97
  %100 = tail call ptr @default_conversion(ptr noundef %57) #20
  br label %585

101:                                              ; preds = %83
  %102 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 834, ptr noundef nonnull @.str.36) #21
  %103 = icmp eq i32 %3, 0
  br i1 %103, label %104, label %585

104:                                              ; preds = %101
  %105 = tail call ptr @default_conversion(ptr noundef %57) #20
  br label %585

106:                                              ; preds = %91, %83
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.37) #21
  %107 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %634

108:                                              ; preds = %55
  %109 = and i32 %40, 65534
  %110 = icmp eq i32 %109, 8
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.38) #21
  %112 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %634

113:                                              ; preds = %108
  %114 = icmp eq i32 %3, 0
  br i1 %114, label %115, label %585

115:                                              ; preds = %113
  %116 = tail call ptr @default_conversion(ptr noundef %57) #20
  br label %585

117:                                              ; preds = %55
  %118 = and i32 %40, 65534
  %119 = icmp eq i32 %118, 8
  %120 = icmp eq i32 %40, 13
  %121 = or i1 %120, %119
  br i1 %121, label %124, label %122

122:                                              ; preds = %117
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.39) #21
  %123 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %634

124:                                              ; preds = %117
  %125 = icmp eq i32 %3, 0
  br i1 %125, label %126, label %585

126:                                              ; preds = %124
  %127 = tail call ptr @default_conversion(ptr noundef %57) #20
  br label %585

128:                                              ; preds = %55
  %129 = trunc i32 %40 to i16
  switch i16 %129, label %130 [
    i16 13, label %132
    i16 11, label %132
    i16 10, label %132
    i16 9, label %132
    i16 8, label %132
  ]

130:                                              ; preds = %128
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.40) #21
  %131 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %634

132:                                              ; preds = %128, %128, %128, %128, %128
  %133 = tail call ptr @c_objc_common_truthvalue_conversion(i32 noundef %0, ptr noundef %57) #20
  %134 = tail call ptr @invert_truthvalue_loc(i32 noundef %0, ptr noundef %133) #21
  %135 = load i64, ptr %134, align 8
  %136 = and i64 %135, 65535
  %137 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !28
  %139 = add i32 %138, -4
  %140 = icmp ult i32 %139, 7
  br i1 %140, label %141, label %602

141:                                              ; preds = %132
  %142 = getelementptr inbounds %struct.tree_exp, ptr %134, i64 0, i32 1
  %143 = load i32, ptr %142, align 8, !tbaa !5
  %144 = icmp eq i32 %143, 0
  %145 = select i1 %144, i32 %0, i32 %143
  br label %602

146:                                              ; preds = %55
  %147 = load i64, ptr %57, align 8
  %148 = and i64 %147, 65535
  %149 = icmp eq i64 %148, 26
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.tree_complex, ptr %57, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !5
  br label %163

153:                                              ; preds = %146
  %154 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !5
  %156 = load i64, ptr %155, align 8
  %157 = and i64 %156, 65535
  %158 = icmp eq i64 %157, 13
  br i1 %158, label %159, label %163

159:                                              ; preds = %153
  %160 = getelementptr inbounds %struct.tree_common, ptr %155, i64 0, i32 2
  %161 = load ptr, ptr %160, align 8, !tbaa !5
  %162 = tail call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 43, ptr noundef %161, ptr noundef nonnull %57) #21
  br label %163

163:                                              ; preds = %153, %159, %150
  %164 = phi ptr [ %152, %150 ], [ %162, %159 ], [ %57, %153 ]
  %165 = icmp eq ptr %56, null
  br i1 %165, label %602, label %166

166:                                              ; preds = %163
  %167 = load i64, ptr %56, align 8
  %168 = and i64 %167, 65535
  %169 = icmp eq i64 %168, 13
  br i1 %169, label %170, label %602

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.tree_common, ptr %56, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !5
  br label %602

173:                                              ; preds = %55
  %174 = load i64, ptr %57, align 8
  %175 = and i64 %174, 65535
  %176 = icmp eq i64 %175, 26
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.tree_complex, ptr %57, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !5
  br label %193

180:                                              ; preds = %173
  %181 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !5
  %183 = load i64, ptr %182, align 8
  %184 = and i64 %183, 65535
  %185 = icmp eq i64 %184, 13
  br i1 %185, label %186, label %190

186:                                              ; preds = %180
  %187 = getelementptr inbounds %struct.tree_common, ptr %182, i64 0, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !5
  %189 = tail call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 44, ptr noundef %188, ptr noundef nonnull %57) #21
  br label %193

190:                                              ; preds = %180
  %191 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !8
  %192 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef nonnull %182, ptr noundef %191, ptr noundef nonnull %57) #21
  br label %193

193:                                              ; preds = %186, %190, %177
  %194 = phi ptr [ %179, %177 ], [ %189, %186 ], [ %192, %190 ]
  %195 = icmp eq ptr %56, null
  br i1 %195, label %602, label %196

196:                                              ; preds = %193
  %197 = load i64, ptr %56, align 8
  %198 = and i64 %197, 65535
  %199 = icmp eq i64 %198, 13
  br i1 %199, label %200, label %602

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.tree_common, ptr %56, i64 0, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !5
  br label %602

203:                                              ; preds = %55, %55, %55, %55
  %204 = load i64, ptr %57, align 8
  %205 = and i64 %204, 65535
  %206 = icmp eq i64 %205, 189
  br i1 %206, label %207, label %226

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.tree_exp, ptr %57, i64 1
  %209 = load ptr, ptr %208, align 8, !tbaa !5
  %210 = tail call ptr @build_unary_op(i32 noundef %0, i32 noundef %1, ptr noundef %209, i32 noundef %3) #20
  %211 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %212 = icmp eq ptr %210, %211
  br i1 %212, label %634, label %213

213:                                              ; preds = %207
  %214 = getelementptr inbounds %struct.tree_exp, ptr %57, i64 0, i32 3
  %215 = getelementptr inbounds %struct.tree_common, ptr %210, i64 0, i32 2
  %216 = load ptr, ptr %215, align 8, !tbaa !5
  %217 = load ptr, ptr %214, align 8, !tbaa !5
  %218 = tail call ptr @build2_stat(i32 noundef 189, ptr noundef %216, ptr noundef %217, ptr noundef %210) #21
  %219 = load i64, ptr %57, align 8
  %220 = and i64 %219, 8589934592
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %223, label %222

222:                                              ; preds = %213
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3455, ptr noundef nonnull @.str.8) #21
  br label %223

223:                                              ; preds = %222, %213
  %224 = load i64, ptr %218, align 8
  %225 = or i64 %224, 17179869184
  store i64 %225, ptr %218, align 8
  br label %602

226:                                              ; preds = %203
  %227 = icmp eq i32 %1, 126
  %228 = icmp eq i32 %1, 128
  %229 = or i1 %227, %228
  %230 = select i1 %229, i32 1, i32 2
  %231 = tail call fastcc i32 @lvalue_or_else(ptr noundef nonnull %57, i32 noundef %230) #20, !range !35
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %226
  %234 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %634

235:                                              ; preds = %226
  %236 = load i32, ptr @warn_cxx_compat, align 4, !tbaa !28
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %250, label %238

238:                                              ; preds = %235
  %239 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 2
  %240 = load ptr, ptr %239, align 8, !tbaa !5
  %241 = load i64, ptr %240, align 8
  %242 = and i64 %241, 65535
  %243 = icmp eq i64 %242, 6
  br i1 %243, label %244, label %250

244:                                              ; preds = %238
  %245 = add i32 %1, -126
  %246 = and i32 %245, -3
  %247 = icmp eq i32 %246, 0
  %248 = select i1 %247, ptr @.str.41, ptr @.str.42
  %249 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %0, i32 noundef 49, ptr noundef nonnull %248) #21
  br label %250

250:                                              ; preds = %244, %238, %235
  %251 = tail call ptr @c_fully_fold(ptr noundef nonnull %57, i8 noundef zeroext 0, ptr noundef null) #21
  %252 = icmp eq i32 %40, 13
  br i1 %252, label %253, label %300

253:                                              ; preds = %250
  %254 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 834, ptr noundef nonnull @.str.43) #21
  %255 = tail call ptr @stabilize_reference(ptr noundef %251) #21
  %256 = load i64, ptr %255, align 8
  %257 = and i64 %256, 65535
  %258 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %257
  %259 = load i32, ptr %258, align 4, !tbaa !28
  %260 = add i32 %259, -4
  %261 = icmp ult i32 %260, 7
  br i1 %261, label %262, label %265

262:                                              ; preds = %253
  %263 = getelementptr inbounds %struct.tree_exp, ptr %255, i64 0, i32 1
  %264 = load i32, ptr %263, align 8, !tbaa !5
  br label %265

265:                                              ; preds = %253, %262
  %266 = phi i32 [ %264, %262 ], [ 0, %253 ]
  %267 = tail call ptr @build_unary_op(i32 noundef %266, i32 noundef 43, ptr noundef nonnull %255, i32 noundef 1) #20
  %268 = load i64, ptr %255, align 8
  %269 = and i64 %268, 65535
  %270 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %269
  %271 = load i32, ptr %270, align 4, !tbaa !28
  %272 = add i32 %271, -4
  %273 = icmp ult i32 %272, 7
  br i1 %273, label %274, label %277

274:                                              ; preds = %265
  %275 = getelementptr inbounds %struct.tree_exp, ptr %255, i64 0, i32 1
  %276 = load i32, ptr %275, align 8, !tbaa !5
  br label %277

277:                                              ; preds = %265, %274
  %278 = phi i32 [ %276, %274 ], [ 0, %265 ]
  %279 = tail call ptr @build_unary_op(i32 noundef %278, i32 noundef 44, ptr noundef nonnull %255, i32 noundef 1) #20
  %280 = load i64, ptr %255, align 8
  %281 = and i64 %280, 65535
  %282 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %281
  %283 = load i32, ptr %282, align 4, !tbaa !28
  %284 = add i32 %283, -4
  %285 = icmp ult i32 %284, 7
  br i1 %285, label %286, label %289

286:                                              ; preds = %277
  %287 = getelementptr inbounds %struct.tree_exp, ptr %255, i64 0, i32 1
  %288 = load i32, ptr %287, align 8, !tbaa !5
  br label %289

289:                                              ; preds = %277, %286
  %290 = phi i32 [ %288, %286 ], [ 0, %277 ]
  %291 = tail call ptr @build_unary_op(i32 noundef %290, i32 noundef %1, ptr noundef %267, i32 noundef 1) #20
  %292 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %293 = icmp eq ptr %291, %292
  %294 = icmp eq ptr %279, %292
  %295 = select i1 %293, i1 true, i1 %294
  br i1 %295, label %634, label %296

296:                                              ; preds = %289
  %297 = getelementptr inbounds %struct.tree_common, ptr %255, i64 0, i32 2
  %298 = load ptr, ptr %297, align 8, !tbaa !5
  %299 = tail call ptr @build2_stat(i32 noundef 123, ptr noundef %298, ptr noundef %291, ptr noundef %279) #21
  br label %602

300:                                              ; preds = %250
  %301 = add nsw i32 %40, -12
  %302 = icmp ult i32 %301, -4
  br i1 %302, label %303, label %309

303:                                              ; preds = %300
  %304 = add i32 %1, -126
  %305 = and i32 %304, -3
  %306 = icmp eq i32 %305, 0
  %307 = select i1 %306, ptr @.str.44, ptr @.str.45
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull %307) #21
  %308 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %634

309:                                              ; preds = %300
  %310 = getelementptr inbounds %struct.tree_common, ptr %251, i64 0, i32 2
  %311 = load ptr, ptr %310, align 8, !tbaa !5
  %312 = icmp eq i32 %40, 10
  br i1 %312, label %313, label %347

313:                                              ; preds = %309
  %314 = getelementptr inbounds %struct.tree_common, ptr %311, i64 0, i32 2
  %315 = load ptr, ptr %314, align 8, !tbaa !5
  %316 = getelementptr inbounds %struct.tree_type, ptr %315, i64 0, i32 2
  %317 = load ptr, ptr %316, align 8, !tbaa !5
  %318 = icmp ne ptr %317, null
  %319 = load i64, ptr %315, align 8
  %320 = and i64 %319, 65535
  %321 = icmp eq i64 %320, 19
  %322 = select i1 %318, i1 true, i1 %321
  br i1 %322, label %326, label %323

323:                                              ; preds = %313
  switch i32 %1, label %325 [
    i32 128, label %324
    i32 126, label %324
  ]

324:                                              ; preds = %323, %323
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.46) #21
  br label %342

325:                                              ; preds = %323
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.47) #21
  br label %342

326:                                              ; preds = %313
  %327 = trunc i64 %319 to i32
  %328 = and i32 %327, 65535
  %329 = add nsw i32 %328, -19
  %330 = icmp ult i32 %329, 2
  br i1 %330, label %331, label %342

331:                                              ; preds = %326
  switch i32 %1, label %337 [
    i32 128, label %332
    i32 126, label %332
  ]

332:                                              ; preds = %331, %331
  %333 = load i32, ptr @pedantic, align 4, !tbaa !28
  %334 = icmp eq i32 %333, 0
  %335 = select i1 %334, i32 162, i32 834
  %336 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef %335, ptr noundef nonnull @.str.44) #21
  br label %342

337:                                              ; preds = %331
  %338 = load i32, ptr @pedantic, align 4, !tbaa !28
  %339 = icmp eq i32 %338, 0
  %340 = select i1 %339, i32 162, i32 834
  %341 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef %340, ptr noundef nonnull @.str.45) #21
  br label %342

342:                                              ; preds = %326, %337, %332, %324, %325
  %343 = load ptr, ptr %314, align 8, !tbaa !5
  %344 = tail call fastcc ptr @c_size_in_bytes(ptr noundef %343) #20
  %345 = load ptr, ptr @sizetype_tab, align 16, !tbaa !8
  %346 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %345, ptr noundef %344) #21
  br label %391

347:                                              ; preds = %309
  %348 = load i64, ptr %311, align 8
  %349 = and i64 %348, 65535
  %350 = icmp eq i64 %349, 14
  br i1 %350, label %351, label %353

351:                                              ; preds = %347
  %352 = tail call i32 @vector_type_mode(ptr noundef nonnull %311) #21
  br label %358

353:                                              ; preds = %347
  %354 = getelementptr inbounds %struct.tree_type, ptr %311, i64 0, i32 6
  %355 = load i32, ptr %354, align 4
  %356 = lshr i32 %355, 16
  %357 = and i32 %356, 255
  br label %358

358:                                              ; preds = %353, %351
  %359 = phi i32 [ %352, %351 ], [ %357, %353 ]
  %360 = zext i32 %359 to i64
  %361 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %360
  %362 = load i8, ptr %361, align 1, !tbaa !5
  %363 = icmp eq i8 %362, 4
  br i1 %363, label %381, label %364

364:                                              ; preds = %358
  %365 = load i64, ptr %311, align 8
  %366 = and i64 %365, 65535
  %367 = icmp eq i64 %366, 14
  br i1 %367, label %368, label %370

368:                                              ; preds = %364
  %369 = tail call i32 @vector_type_mode(ptr noundef nonnull %311) #21
  br label %375

370:                                              ; preds = %364
  %371 = getelementptr inbounds %struct.tree_type, ptr %311, i64 0, i32 6
  %372 = load i32, ptr %371, align 4
  %373 = lshr i32 %372, 16
  %374 = and i32 %373, 255
  br label %375

375:                                              ; preds = %370, %368
  %376 = phi i32 [ %369, %368 ], [ %374, %370 ]
  %377 = zext i32 %376 to i64
  %378 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %377
  %379 = load i8, ptr %378, align 1, !tbaa !5
  %380 = icmp eq i8 %379, 13
  br i1 %380, label %381, label %388

381:                                              ; preds = %375, %358
  %382 = icmp eq i32 %1, 125
  %383 = select i1 %228, i32 127, i32 128
  %384 = select i1 %382, i32 126, i32 %383
  %385 = select i1 %227, i32 125, i32 %384
  %386 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 15), align 8, !tbaa !8
  %387 = tail call ptr @convert(ptr noundef nonnull %311, ptr noundef %386) #21
  br label %391

388:                                              ; preds = %375
  %389 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !8
  %390 = tail call ptr @convert(ptr noundef nonnull %311, ptr noundef %389) #21
  br label %391

391:                                              ; preds = %381, %388, %342
  %392 = phi ptr [ %346, %342 ], [ %387, %381 ], [ %390, %388 ]
  %393 = phi i32 [ %1, %342 ], [ %385, %381 ], [ %1, %388 ]
  %394 = load i64, ptr %311, align 8
  %395 = and i64 %394, 1048576
  %396 = icmp eq i64 %395, 0
  br i1 %396, label %397, label %423

397:                                              ; preds = %391
  %398 = load i64, ptr %251, align 8
  %399 = and i64 %398, 1048576
  %400 = icmp eq i64 %399, 0
  br i1 %400, label %406, label %401

401:                                              ; preds = %397
  %402 = icmp eq i32 %393, 126
  %403 = icmp eq i32 %393, 128
  %404 = or i1 %402, %403
  %405 = select i1 %404, i32 1, i32 2
  tail call fastcc void @readonly_warning(ptr noundef nonnull %251, i32 noundef %405) #20
  br label %406

406:                                              ; preds = %397, %401
  %407 = load ptr, ptr %310, align 8, !tbaa !5
  %408 = load i64, ptr %407, align 8
  %409 = and i64 %408, 65535
  %410 = icmp eq i64 %409, 7
  br i1 %410, label %411, label %413

411:                                              ; preds = %406
  %412 = tail call ptr @boolean_increment(i32 noundef %393, ptr noundef nonnull %251) #21
  br label %415

413:                                              ; preds = %406
  %414 = tail call ptr @build2_stat(i32 noundef %393, ptr noundef nonnull %407, ptr noundef nonnull %251, ptr noundef %392) #21
  br label %415

415:                                              ; preds = %411, %413
  %416 = phi ptr [ %412, %411 ], [ %414, %413 ]
  %417 = load i64, ptr %416, align 8
  %418 = trunc i64 %417 to i32
  %419 = and i32 %418, 65535
  %420 = icmp eq i32 %419, %393
  %421 = select i1 %420, i64 65536, i64 8454144
  %422 = or i64 %421, %417
  store i64 %422, ptr %416, align 8
  br label %602

423:                                              ; preds = %391
  %424 = icmp eq i32 %393, 126
  %425 = icmp eq i32 %393, 128
  %426 = or i1 %424, %425
  %427 = select i1 %426, i32 1, i32 2
  tail call fastcc void @readonly_error(ptr noundef nonnull %251, i32 noundef %427) #20
  %428 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %634

429:                                              ; preds = %55
  %430 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 2
  %431 = load ptr, ptr %430, align 8, !tbaa !5
  %432 = load i64, ptr %431, align 8
  %433 = and i64 %432, 65535
  %434 = icmp eq i64 %433, 19
  br i1 %434, label %435, label %461

435:                                              ; preds = %429
  %436 = trunc i64 %432 to i32
  %437 = lshr i32 %436, 20
  %438 = and i32 %437, 1
  %439 = lshr i32 %436, 18
  %440 = and i32 %439, 2
  %441 = or disjoint i32 %438, %440
  %442 = getelementptr inbounds %struct.tree_type, ptr %431, i64 0, i32 6
  %443 = load i32, ptr %442, align 4
  %444 = lshr i32 %443, 11
  %445 = and i32 %444, 4
  %446 = lshr i64 %432, 48
  %447 = trunc i64 %446 to i32
  %448 = and i32 %447, 65280
  %449 = or disjoint i32 %441, %448
  %450 = or disjoint i32 %449, %445
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %452, label %461

452:                                              ; preds = %435
  %453 = load i64, ptr %57, align 8
  %454 = and i64 %453, 65535
  %455 = icmp eq i64 %454, 47
  %456 = load i32, ptr @flag_isoc99, align 4
  %457 = icmp ne i32 %456, 0
  %458 = select i1 %455, i1 %457, i1 false
  br i1 %458, label %461, label %459

459:                                              ; preds = %452
  %460 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.48) #21
  br label %461

461:                                              ; preds = %452, %459, %435, %429
  %462 = load i64, ptr %57, align 8
  %463 = trunc i64 %462 to i16
  switch i16 %463, label %491 [
    i16 47, label %464
    i16 45, label %471
  ]

464:                                              ; preds = %461
  %465 = getelementptr inbounds %struct.tree_exp, ptr %57, i64 0, i32 3
  %466 = load ptr, ptr %465, align 8, !tbaa !5
  %467 = tail call zeroext i8 @lvalue_p(ptr noundef %466) #20, !range !24
  %468 = icmp eq i8 %467, 0
  br i1 %468, label %602, label %469

469:                                              ; preds = %464
  %470 = tail call ptr @non_lvalue_loc(i32 noundef %0, ptr noundef %466) #21
  br label %634

471:                                              ; preds = %461
  %472 = getelementptr inbounds %struct.tree_exp, ptr %57, i64 0, i32 3
  %473 = load ptr, ptr %472, align 8, !tbaa !5
  %474 = tail call zeroext i8 @c_mark_addressable(ptr noundef %473) #20, !range !24
  %475 = icmp eq i8 %474, 0
  br i1 %475, label %476, label %478

476:                                              ; preds = %471
  %477 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %634

478:                                              ; preds = %471
  %479 = getelementptr inbounds %struct.tree_common, ptr %473, i64 0, i32 2
  %480 = load ptr, ptr %479, align 8, !tbaa !5
  %481 = load i64, ptr %480, align 8
  %482 = and i64 %481, 65535
  %483 = icmp eq i64 %482, 15
  br i1 %483, label %484, label %486

484:                                              ; preds = %478
  %485 = tail call fastcc ptr @array_to_pointer_conversion(i32 noundef %0, ptr noundef nonnull %473) #20
  br label %486

486:                                              ; preds = %478, %484
  %487 = phi ptr [ %485, %484 ], [ %473, %478 ]
  %488 = getelementptr inbounds %struct.tree_exp, ptr %57, i64 1
  %489 = load ptr, ptr %488, align 8, !tbaa !5
  %490 = tail call ptr @build_binary_op(i32 noundef %0, i32 noundef 63, ptr noundef %487, ptr noundef %489, i32 noundef 1) #20
  br label %634

491:                                              ; preds = %461
  %492 = icmp eq i32 %40, 20
  %493 = icmp ne i32 %3, 0
  %494 = or i1 %493, %492
  br i1 %494, label %502, label %495

495:                                              ; preds = %491
  %496 = tail call fastcc i32 @lvalue_or_else(ptr noundef nonnull %57, i32 noundef 3) #20, !range !35
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %500, label %498

498:                                              ; preds = %495
  %499 = load i64, ptr %57, align 8
  br label %502

500:                                              ; preds = %495
  %501 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %634

502:                                              ; preds = %498, %491
  %503 = phi i64 [ %499, %498 ], [ %462, %491 ]
  %504 = and i64 %503, 65535
  %505 = icmp eq i64 %504, 189
  br i1 %505, label %506, label %526

506:                                              ; preds = %502
  %507 = getelementptr inbounds %struct.tree_exp, ptr %57, i64 0, i32 3
  %508 = getelementptr inbounds %struct.tree_exp, ptr %57, i64 1
  %509 = load ptr, ptr %508, align 8, !tbaa !5
  %510 = tail call ptr @build_unary_op(i32 noundef %0, i32 noundef 121, ptr noundef %509, i32 noundef %3) #20
  %511 = getelementptr inbounds %struct.tree_common, ptr %510, i64 0, i32 2
  %512 = load ptr, ptr %511, align 8, !tbaa !5
  %513 = load ptr, ptr %507, align 8, !tbaa !5
  %514 = tail call ptr @build2_stat(i32 noundef 189, ptr noundef %512, ptr noundef %513, ptr noundef %510) #21
  %515 = load i64, ptr %57, align 8
  %516 = and i64 %515, 8589934592
  %517 = icmp eq i64 %516, 0
  br i1 %517, label %520, label %518

518:                                              ; preds = %506
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3648, ptr noundef nonnull @.str.8) #21
  %519 = load i64, ptr %57, align 8
  br label %520

520:                                              ; preds = %506, %518
  %521 = phi i64 [ %515, %506 ], [ %519, %518 ]
  %522 = and i64 %521, 17179869184
  %523 = load i64, ptr %514, align 8
  %524 = and i64 %523, -17179869185
  %525 = or disjoint i64 %524, %522
  store i64 %525, ptr %514, align 8
  br label %602

526:                                              ; preds = %502
  %527 = load ptr, ptr %430, align 8, !tbaa !5
  %528 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %504
  %529 = load i32, ptr %528, align 4, !tbaa !28
  %530 = add i32 %529, -5
  %531 = icmp ult i32 %530, -2
  %532 = and i64 %503, 1572864
  %533 = icmp eq i64 %532, 0
  %534 = or i1 %533, %531
  br i1 %534, label %543, label %535

535:                                              ; preds = %526
  %536 = trunc i64 %503 to i32
  %537 = lshr i32 %536, 20
  %538 = and i32 %537, 1
  %539 = lshr i32 %536, 18
  %540 = and i32 %539, 2
  %541 = or disjoint i32 %538, %540
  %542 = tail call ptr @c_build_qualified_type(ptr noundef %527, i32 noundef %541) #20
  br label %543

543:                                              ; preds = %526, %535
  %544 = phi ptr [ %542, %535 ], [ %527, %526 ]
  %545 = tail call zeroext i8 @c_mark_addressable(ptr noundef nonnull %57) #20, !range !24
  %546 = icmp eq i8 %545, 0
  br i1 %546, label %547, label %549

547:                                              ; preds = %543
  %548 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %634

549:                                              ; preds = %543
  %550 = load i64, ptr %57, align 8
  %551 = and i64 %550, 65535
  %552 = icmp eq i64 %551, 41
  br i1 %552, label %553, label %561

553:                                              ; preds = %549
  %554 = getelementptr inbounds %struct.tree_exp, ptr %57, i64 1
  %555 = load ptr, ptr %554, align 8, !tbaa !5
  %556 = getelementptr inbounds %struct.tree_decl_common, ptr %555, i64 0, i32 2
  %557 = load i64, ptr %556, align 8
  %558 = and i64 %557, 524288
  %559 = icmp eq i64 %558, 0
  br i1 %559, label %561, label %560

560:                                              ; preds = %553
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3671, ptr noundef nonnull @.str.8) #21
  br label %561

561:                                              ; preds = %549, %553, %560
  %562 = tail call ptr @build_pointer_type(ptr noundef %544) #21
  %563 = tail call ptr @get_base_address(ptr noundef nonnull %57) #21
  %564 = icmp eq ptr %563, null
  br i1 %564, label %582, label %565

565:                                              ; preds = %561
  %566 = load i64, ptr %563, align 8
  %567 = and i64 %566, 65535
  %568 = icmp eq i64 %567, 47
  br i1 %568, label %569, label %582

569:                                              ; preds = %565
  %570 = getelementptr inbounds %struct.tree_exp, ptr %563, i64 0, i32 3
  %571 = load ptr, ptr %570, align 8, !tbaa !5
  %572 = load i64, ptr %571, align 8
  %573 = and i64 %572, 131072
  %574 = icmp eq i64 %573, 0
  br i1 %574, label %582, label %575

575:                                              ; preds = %569
  %576 = load ptr, ptr @sizetype_tab, align 16, !tbaa !8
  %577 = tail call ptr @fold_offsetof(ptr noundef nonnull %57, ptr noundef nonnull %563) #21
  %578 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %576, ptr noundef %577) #21
  %579 = load ptr, ptr %570, align 8, !tbaa !5
  %580 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %562, ptr noundef %579) #21
  %581 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 66, ptr noundef %562, ptr noundef %580, ptr noundef %578) #21
  br label %602

582:                                              ; preds = %569, %565, %561
  %583 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %562, ptr noundef nonnull %57) #21
  br label %602

584:                                              ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3695, ptr noundef nonnull @.str.8) #21
  br label %585

585:                                              ; preds = %69, %584, %79, %81, %104, %101, %97, %99, %113, %115, %124, %126
  %586 = phi ptr [ %57, %584 ], [ %57, %124 ], [ %127, %126 ], [ %57, %113 ], [ %116, %115 ], [ %57, %97 ], [ %100, %99 ], [ %57, %101 ], [ %105, %104 ], [ %57, %79 ], [ %82, %81 ], [ %71, %69 ]
  %587 = phi i32 [ %1, %584 ], [ 124, %124 ], [ 124, %126 ], [ 82, %113 ], [ 82, %115 ], [ 90, %97 ], [ 90, %99 ], [ 124, %101 ], [ 124, %104 ], [ 79, %79 ], [ 79, %81 ], [ 113, %69 ]
  %588 = getelementptr inbounds %struct.tree_common, ptr %586, i64 0, i32 2
  %589 = load ptr, ptr %588, align 8, !tbaa !5
  %590 = load i64, ptr %586, align 8
  %591 = and i64 %590, 65535
  %592 = icmp eq i64 %591, 23
  br i1 %592, label %593, label %600

593:                                              ; preds = %585
  %594 = load i32, ptr @require_constant_value, align 4, !tbaa !28
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %598, label %596

596:                                              ; preds = %593
  %597 = tail call ptr @fold_build1_initializer_loc(i32 noundef %0, i32 noundef %587, ptr noundef %589, ptr noundef nonnull %586) #21
  br label %602

598:                                              ; preds = %593
  %599 = tail call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef %587, ptr noundef %589, ptr noundef nonnull %586) #21
  br label %602

600:                                              ; preds = %585
  %601 = tail call ptr @build1_stat(i32 noundef %587, ptr noundef %589, ptr noundef nonnull %586) #21
  br label %602

602:                                              ; preds = %141, %464, %415, %296, %223, %596, %598, %575, %520, %600, %193, %196, %200, %163, %166, %170, %132, %582
  %603 = phi ptr [ %56, %600 ], [ %56, %520 ], [ %56, %575 ], [ %56, %582 ], [ %56, %223 ], [ %202, %200 ], [ %56, %196 ], [ null, %193 ], [ %172, %170 ], [ %56, %166 ], [ null, %163 ], [ %56, %132 ], [ %56, %598 ], [ %56, %596 ], [ %56, %296 ], [ %56, %415 ], [ %56, %464 ], [ %56, %141 ]
  %604 = phi ptr [ %601, %600 ], [ %514, %520 ], [ %581, %575 ], [ %583, %582 ], [ %218, %223 ], [ %194, %200 ], [ %194, %196 ], [ %194, %193 ], [ %164, %170 ], [ %164, %166 ], [ %164, %163 ], [ %134, %132 ], [ %599, %598 ], [ %597, %596 ], [ %299, %296 ], [ %416, %415 ], [ %466, %464 ], [ %134, %141 ]
  %605 = phi i32 [ %0, %600 ], [ %0, %520 ], [ %0, %575 ], [ %0, %582 ], [ %0, %223 ], [ %0, %200 ], [ %0, %196 ], [ %0, %193 ], [ %0, %170 ], [ %0, %166 ], [ %0, %163 ], [ %0, %132 ], [ %0, %598 ], [ %0, %596 ], [ %0, %296 ], [ %0, %415 ], [ %0, %464 ], [ %145, %141 ]
  %606 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %607 = icmp eq ptr %604, %606
  br i1 %607, label %608, label %609

608:                                              ; preds = %602
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3707, ptr noundef nonnull @.str.8) #21
  br label %609

609:                                              ; preds = %602, %608
  %610 = load i64, ptr %604, align 8
  %611 = and i64 %610, 134283263
  %612 = icmp eq i64 %611, 23
  br i1 %612, label %613, label %621

613:                                              ; preds = %609
  %614 = load i64, ptr %2, align 8
  %615 = and i64 %614, 134283263
  %616 = icmp eq i64 %615, 23
  br i1 %616, label %627, label %617

617:                                              ; preds = %613
  %618 = getelementptr inbounds %struct.tree_common, ptr %604, i64 0, i32 2
  %619 = load ptr, ptr %618, align 8, !tbaa !5
  %620 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef %619, ptr noundef nonnull %604) #21
  br label %627

621:                                              ; preds = %609
  %622 = and i64 %610, 65535
  %623 = icmp ne i64 %622, 23
  %624 = and i1 %21, %623
  br i1 %624, label %625, label %627

625:                                              ; preds = %621
  %626 = tail call fastcc ptr @note_integer_operands(ptr noundef nonnull %604) #20
  br label %627

627:                                              ; preds = %613, %621, %625, %617
  %628 = phi ptr [ %626, %625 ], [ %604, %621 ], [ %620, %617 ], [ %604, %613 ]
  %629 = icmp eq ptr %603, null
  br i1 %629, label %632, label %630

630:                                              ; preds = %627
  %631 = tail call ptr @build1_stat(i32 noundef 190, ptr noundef nonnull %603, ptr noundef %628) #21
  br label %632

632:                                              ; preds = %630, %627
  %633 = phi ptr [ %631, %630 ], [ %628, %627 ]
  tail call void @protected_set_expr_location(ptr noundef %633, i32 noundef %605) #21
  br label %634

634:                                              ; preds = %207, %423, %289, %476, %486, %632, %547, %500, %469, %303, %233, %130, %122, %111, %106, %77, %63, %45, %34
  %635 = phi ptr [ %35, %34 ], [ %46, %45 ], [ %633, %632 ], [ %470, %469 ], [ %548, %547 ], [ %501, %500 ], [ %308, %303 ], [ %428, %423 ], [ %234, %233 ], [ %131, %130 ], [ %123, %122 ], [ %112, %111 ], [ %107, %106 ], [ %78, %77 ], [ %64, %63 ], [ %490, %486 ], [ %477, %476 ], [ %292, %289 ], [ %210, %207 ]
  ret ptr %635
}

; Function Attrs: optsize
declare void @overflow_warning(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @parser_build_binary_op(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.c_expr) align 8 %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly byval(%struct.c_expr) align 8 %3, ptr nocapture noundef readonly byval(%struct.c_expr) align 8 %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.c_expr, ptr %3, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !72
  %8 = getelementptr inbounds %struct.c_expr, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !72
  %10 = getelementptr inbounds %struct.c_expr, ptr %3, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %5
  %14 = load ptr, ptr %3, align 8, !tbaa !41
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  br label %17

17:                                               ; preds = %5, %13
  %18 = phi ptr [ %16, %13 ], [ %11, %5 ]
  %19 = getelementptr inbounds %struct.c_expr, ptr %4, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !73
  %21 = icmp eq ptr %20, null
  %22 = load ptr, ptr %4, align 8, !tbaa !41
  br i1 %21, label %23, label %26

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  br label %26

26:                                               ; preds = %17, %23
  %27 = phi ptr [ %25, %23 ], [ %20, %17 ]
  %28 = load ptr, ptr %3, align 8, !tbaa !41
  %29 = tail call ptr @build_binary_op(i32 noundef %1, i32 noundef %2, ptr noundef %28, ptr noundef %22, i32 noundef 1) #20
  store ptr %29, ptr %0, align 8, !tbaa !41
  %30 = getelementptr inbounds %struct.c_expr, ptr %0, i64 0, i32 1
  store i32 %2, ptr %30, align 8, !tbaa !72
  %31 = getelementptr inbounds %struct.c_expr, ptr %0, i64 0, i32 2
  store ptr null, ptr %31, align 8, !tbaa !73
  %32 = load i64, ptr %29, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %125, label %35

35:                                               ; preds = %26
  %36 = icmp eq i32 %1, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %35
  tail call void @protected_set_expr_location(ptr noundef nonnull %29, i32 noundef %1) #21
  br label %38

38:                                               ; preds = %37, %35
  %39 = load i32, ptr @warn_parentheses, align 4, !tbaa !28
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void @warn_about_parentheses(i32 noundef %2, i32 noundef %7, ptr noundef %28, i32 noundef %9, ptr noundef %22) #21
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i32, ptr @warn_logical_op, align 4, !tbaa !28
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load i32, ptr @input_location, align 4, !tbaa !28
  %47 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !5
  tail call void @warn_logical_operator(i32 noundef %46, i32 noundef %2, ptr noundef %48, i32 noundef %7, ptr noundef %28, i32 noundef %9, ptr noundef %22) #21
  br label %49

49:                                               ; preds = %45, %42
  %50 = add i32 %2, -101
  %51 = icmp ult i32 %50, 2
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = icmp eq i32 %7, 28
  br i1 %53, label %54, label %57

54:                                               ; preds = %52
  %55 = tail call i32 @integer_zerop(ptr noundef %22) #21
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %71, label %57

57:                                               ; preds = %54, %52
  %58 = icmp eq i32 %9, 28
  br i1 %58, label %59, label %73

59:                                               ; preds = %57
  %60 = tail call i32 @integer_zerop(ptr noundef %28) #21
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %71, label %73

62:                                               ; preds = %49
  %63 = sext i32 %2 to i64
  %64 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !28
  %66 = icmp eq i32 %65, 5
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = icmp eq i32 %7, 28
  %69 = icmp eq i32 %9, 28
  %70 = select i1 %68, i1 true, i1 %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67, %54, %59
  %72 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %1, i32 noundef 33, ptr noundef nonnull @.str.32) #21
  br label %73

73:                                               ; preds = %71, %62, %67, %57, %59
  %74 = load i64, ptr %29, align 8
  %75 = and i64 %74, 65535
  %76 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !28
  %78 = icmp ne i32 %77, 1
  %79 = and i64 %74, 134217728
  %80 = icmp eq i64 %79, 0
  %81 = or i1 %78, %80
  br i1 %81, label %101, label %82

82:                                               ; preds = %73
  %83 = load i64, ptr %28, align 8
  %84 = and i64 %83, 65535
  %85 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %84
  %86 = load i32, ptr %85, align 4, !tbaa !28
  %87 = icmp ne i32 %86, 1
  %88 = and i64 %83, 134217728
  %89 = icmp eq i64 %88, 0
  %90 = or i1 %87, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %82
  %92 = load i64, ptr %22, align 8
  %93 = and i64 %92, 65535
  %94 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !28
  %96 = icmp ne i32 %95, 1
  %97 = and i64 %92, 134217728
  %98 = icmp eq i64 %97, 0
  %99 = or i1 %96, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  tail call void @overflow_warning(i32 noundef %1, ptr noundef nonnull %29) #21
  br label %101

101:                                              ; preds = %91, %82, %100, %73
  %102 = load i32, ptr @warn_enum_compare, align 4, !tbaa !28
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %125, label %104

104:                                              ; preds = %101
  %105 = sext i32 %2 to i64
  %106 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !28
  %108 = icmp eq i32 %107, 5
  br i1 %108, label %109, label %125

109:                                              ; preds = %104
  %110 = load i64, ptr %18, align 8
  %111 = and i64 %110, 65535
  %112 = icmp eq i64 %111, 6
  br i1 %112, label %113, label %125

113:                                              ; preds = %109
  %114 = load i64, ptr %27, align 8
  %115 = and i64 %114, 65535
  %116 = icmp eq i64 %115, 6
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 16
  %119 = load ptr, ptr %118, align 8, !tbaa !5
  %120 = getelementptr inbounds %struct.tree_type, ptr %27, i64 0, i32 16
  %121 = load ptr, ptr %120, align 8, !tbaa !5
  %122 = icmp eq ptr %119, %121
  br i1 %122, label %125, label %123

123:                                              ; preds = %117
  %124 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %1, i32 noundef 76, ptr noundef nonnull @.str.33, ptr noundef nonnull %18, ptr noundef nonnull %27) #21
  br label %125

125:                                              ; preds = %101, %104, %109, %113, %117, %123, %26
  ret void
}

; Function Attrs: optsize
declare void @warn_about_parentheses(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @warn_logical_operator(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @remove_c_maybe_const_expr(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 189
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ %0, %1 ]
  ret ptr %9
}

; Function Attrs: optsize
declare ptr @non_lvalue_loc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @c_objc_common_truthvalue_conversion(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %16 [
    i16 15, label %7
    i16 16, label %9
    i16 17, label %11
    i16 20, label %13
  ]

7:                                                ; preds = %2
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.139) #21
  %8 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %52

9:                                                ; preds = %2
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.140) #21
  %10 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %52

11:                                               ; preds = %2
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.141) #21
  %12 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %52

13:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 9902, ptr noundef nonnull @.str.8) #21
  %14 = load ptr, ptr %3, align 8, !tbaa !5
  %15 = load i64, ptr %14, align 8
  br label %16

16:                                               ; preds = %13, %2
  %17 = phi i64 [ %15, %13 ], [ %5, %2 ]
  %18 = load i64, ptr %1, align 8
  %19 = and i64 %18, 134283263
  %20 = icmp eq i64 %19, 23
  %21 = trunc i64 %17 to i32
  %22 = and i32 %21, 65535
  %23 = add nsw i32 %22, -6
  %24 = icmp ult i32 %23, 3
  br i1 %24, label %25, label %32

25:                                               ; preds = %16
  %26 = trunc i64 %18 to i16
  switch i16 %26, label %32 [
    i16 23, label %30
    i16 189, label %27
  ]

27:                                               ; preds = %25
  %28 = and i64 %18, 8589934592
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25, %27
  %31 = tail call fastcc ptr @remove_c_maybe_const_expr(ptr noundef nonnull %1) #20
  br label %32

32:                                               ; preds = %25, %16, %30, %27
  %33 = phi i1 [ false, %30 ], [ true, %27 ], [ true, %16 ], [ true, %25 ]
  %34 = phi ptr [ %31, %30 ], [ %1, %27 ], [ %1, %16 ], [ %1, %25 ]
  %35 = tail call ptr @c_common_truthvalue_conversion(i32 noundef %0, ptr noundef %34) #21
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 65535
  %38 = icmp ne i64 %37, 23
  %39 = or i1 %33, %38
  %40 = or i1 %20, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %32
  %42 = and i64 %36, 134217728
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = tail call fastcc ptr @note_integer_operands(ptr noundef nonnull %35) #20
  br label %52

46:                                               ; preds = %32
  %47 = or i1 %20, %38
  br i1 %47, label %52, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !5
  %51 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef %50, ptr noundef nonnull %35) #21
  br label %52

52:                                               ; preds = %46, %41, %48, %44, %11, %9, %7
  %53 = phi ptr [ %51, %48 ], [ %45, %44 ], [ %12, %11 ], [ %10, %9 ], [ %8, %7 ], [ %35, %41 ], [ %35, %46 ]
  ret ptr %53
}

; Function Attrs: optsize
declare ptr @invert_truthvalue_loc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @omit_one_operand_loc(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @lvalue_or_else(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call zeroext i8 @lvalue_p(ptr noundef %0) #20, !range !24
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @lvalue_error(i32 noundef %1) #21
  br label %6

6:                                                ; preds = %5, %2
  %7 = zext nneg i8 %3 to i32
  ret i32 %7
}

; Function Attrs: optsize
declare ptr @stabilize_reference(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_size_in_bytes(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %6 [
    i16 20, label %4
    i16 19, label %4
    i16 0, label %4
  ]

4:                                                ; preds = %1, %1, %1
  %5 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 18), align 16, !tbaa !8
  br label %24

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.186) #21
  %11 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 18), align 16, !tbaa !8
  br label %24

12:                                               ; preds = %6
  %13 = load i32, ptr @input_location, align 4, !tbaa !28
  %14 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = load ptr, ptr @integer_types, align 16, !tbaa !8
  %17 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = lshr i32 %18, 3
  %20 = and i32 %19, 127
  %21 = zext nneg i32 %20 to i64
  %22 = tail call ptr @size_int_kind(i64 noundef %21, i32 noundef 0) #21
  %23 = tail call ptr @size_binop_loc(i32 noundef %13, i32 noundef 68, ptr noundef %15, ptr noundef %22) #21
  br label %24

24:                                               ; preds = %12, %10, %4
  %25 = phi ptr [ %5, %4 ], [ %23, %12 ], [ %11, %10 ]
  ret ptr %25
}

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @readonly_error(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  br label %3

3:                                                ; preds = %9, %2
  %4 = phi ptr [ %0, %2 ], [ %11, %9 ]
  switch i32 %1, label %5 [
    i32 4, label %6
    i32 2, label %6
    i32 1, label %6
    i32 0, label %6
  ]

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3765, ptr noundef nonnull @.str.8) #21
  br label %6

6:                                                ; preds = %3, %3, %3, %3, %5
  %7 = load i64, ptr %4, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %33 [
    i16 41, label %9
    i16 32, label %26
  ]

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 1048576
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %3

17:                                               ; preds = %9
  %18 = icmp eq i32 %1, 0
  %19 = icmp eq i32 %1, 1
  %20 = icmp eq i32 %1, 2
  %21 = select i1 %20, ptr @.str.189, ptr @.str.190
  %22 = select i1 %19, ptr @.str.188, ptr %21
  %23 = select i1 %18, ptr @.str.187, ptr %22
  %24 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  tail call void (ptr, ...) @error(ptr noundef nonnull %23, ptr noundef %25) #21
  br label %40

26:                                               ; preds = %6
  %27 = icmp eq i32 %1, 0
  %28 = icmp eq i32 %1, 1
  %29 = icmp eq i32 %1, 2
  %30 = select i1 %29, ptr @.str.193, ptr @.str.194
  %31 = select i1 %28, ptr @.str.192, ptr %30
  %32 = select i1 %27, ptr @.str.191, ptr %31
  tail call void (ptr, ...) @error(ptr noundef nonnull %32, ptr noundef nonnull %4) #21
  br label %40

33:                                               ; preds = %6
  %34 = icmp eq i32 %1, 0
  %35 = icmp eq i32 %1, 1
  %36 = icmp eq i32 %1, 2
  %37 = select i1 %36, ptr @.str.197, ptr @.str.198
  %38 = select i1 %35, ptr @.str.196, ptr %37
  %39 = select i1 %34, ptr @.str.195, ptr %38
  tail call void (ptr, ...) @error(ptr noundef nonnull %39, ptr noundef nonnull %4) #21
  br label %40

40:                                               ; preds = %26, %33, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @readonly_warning(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = sext i32 %1 to i64
  %4 = shl i64 %3, 2
  %5 = call ptr @llvm.load.relative.i64(ptr @reltable.readonly_warning, i64 %4)
  %6 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull %5, ptr noundef %0) #21
  ret void
}

; Function Attrs: optsize
declare ptr @boolean_increment(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_offsetof(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build1_initializer_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @note_integer_operands(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 23
  %5 = load i8, ptr @in_late_binary_op, align 1
  %6 = icmp ne i8 %5, 0
  %7 = select i1 %4, i1 %6, i1 false
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = tail call ptr @copy_node_stat(ptr noundef nonnull %0) #21
  br label %14

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = tail call ptr @build2_stat(i32 noundef 189, ptr noundef %12, ptr noundef null, ptr noundef nonnull %0) #21
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi ptr [ %13, %10 ], [ %9, %8 ]
  %16 = phi i64 [ 8589934592, %10 ], [ 134217728, %8 ]
  %17 = load i64, ptr %15, align 8
  %18 = or i64 %17, %16
  store i64 %18, ptr %15, align 8
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_conditional_expr(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 65535
  %17 = add nsw i32 %16, -6
  %18 = icmp ult i32 %17, 3
  br i1 %18, label %19, label %27

19:                                               ; preds = %7
  %20 = load i64, ptr %3, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %27 [
    i16 23, label %25
    i16 189, label %22
  ]

22:                                               ; preds = %19
  %23 = and i64 %20, 8589934592
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %19, %22
  %26 = tail call fastcc ptr @remove_c_maybe_const_expr(ptr noundef nonnull %3) #20
  br label %27

27:                                               ; preds = %19, %7, %25, %22
  %28 = phi i1 [ true, %25 ], [ false, %22 ], [ false, %7 ], [ false, %19 ]
  %29 = phi ptr [ %26, %25 ], [ %3, %22 ], [ %3, %7 ], [ %3, %19 ]
  %30 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  %32 = load i64, ptr %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = and i32 %33, 65535
  %35 = add nsw i32 %34, -6
  %36 = icmp ult i32 %35, 3
  br i1 %36, label %37, label %45

37:                                               ; preds = %27
  %38 = load i64, ptr %5, align 8
  %39 = trunc i64 %38 to i16
  switch i16 %39, label %45 [
    i16 23, label %43
    i16 189, label %40
  ]

40:                                               ; preds = %37
  %41 = and i64 %38, 8589934592
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %37, %40
  %44 = tail call fastcc ptr @remove_c_maybe_const_expr(ptr noundef nonnull %5) #20
  br label %45

45:                                               ; preds = %37, %27, %43, %40
  %46 = phi i1 [ true, %43 ], [ false, %40 ], [ false, %27 ], [ false, %37 ]
  %47 = phi ptr [ %44, %43 ], [ %5, %40 ], [ %5, %27 ], [ %5, %37 ]
  %48 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !5
  %50 = load i64, ptr %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = and i32 %51, 65535
  %53 = add nsw i32 %52, -6
  %54 = icmp ult i32 %53, 3
  br i1 %54, label %55, label %63

55:                                               ; preds = %45
  %56 = load i64, ptr %1, align 8
  %57 = trunc i64 %56 to i16
  switch i16 %57, label %63 [
    i16 23, label %61
    i16 189, label %58
  ]

58:                                               ; preds = %55
  %59 = and i64 %56, 8589934592
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %55, %58
  %62 = tail call fastcc ptr @remove_c_maybe_const_expr(ptr noundef nonnull %1) #20
  br label %63

63:                                               ; preds = %55, %45, %61, %58
  %64 = phi i1 [ true, %61 ], [ false, %58 ], [ false, %45 ], [ false, %55 ]
  %65 = phi ptr [ %62, %61 ], [ %1, %58 ], [ %1, %45 ], [ %1, %55 ]
  %66 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !5
  %68 = load i64, ptr %67, align 8
  %69 = and i64 %68, 65535
  %70 = icmp eq i64 %69, 19
  br i1 %70, label %73, label %71

71:                                               ; preds = %63
  %72 = tail call ptr @default_conversion(ptr noundef nonnull %29) #20
  br label %73

73:                                               ; preds = %71, %63
  %74 = phi ptr [ %72, %71 ], [ %29, %63 ]
  %75 = getelementptr inbounds %struct.tree_common, ptr %47, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !5
  %77 = load i64, ptr %76, align 8
  %78 = and i64 %77, 65535
  %79 = icmp eq i64 %78, 19
  br i1 %79, label %82, label %80

80:                                               ; preds = %73
  %81 = tail call ptr @default_conversion(ptr noundef nonnull %47) #20
  br label %82

82:                                               ; preds = %80, %73
  %83 = phi ptr [ %81, %80 ], [ %47, %73 ]
  %84 = load i64, ptr %65, align 8
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %101, label %87

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.tree_common, ptr %74, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !5
  %90 = load i64, ptr %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = and i32 %91, 65535
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.tree_common, ptr %83, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !5
  %97 = load i64, ptr %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = and i32 %98, 65535
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %94, %87, %82
  %102 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %495

103:                                              ; preds = %94
  %104 = icmp eq i32 %92, 15
  %105 = icmp eq i32 %99, 15
  %106 = or i1 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %103
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.54) #21
  %108 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %495

109:                                              ; preds = %103
  %110 = tail call zeroext i8 @objc_compare_types(ptr noundef nonnull %89, ptr noundef nonnull %96, i32 noundef -3, ptr noundef null) #21
  %111 = load i64, ptr %74, align 8
  %112 = and i64 %111, 65535
  %113 = icmp eq i64 %112, 190
  br i1 %113, label %118, label %114

114:                                              ; preds = %109
  %115 = load i64, ptr %83, align 8
  %116 = and i64 %115, 65535
  %117 = icmp eq i64 %116, 190
  br i1 %117, label %118, label %159

118:                                              ; preds = %114, %109
  %119 = and i32 %91, 65534
  %120 = icmp eq i32 %119, 8
  %121 = icmp eq i32 %92, 13
  %122 = or i1 %120, %121
  br i1 %122, label %123, label %159

123:                                              ; preds = %118
  %124 = and i32 %98, 65534
  %125 = icmp eq i32 %124, 8
  %126 = icmp eq i32 %99, 13
  %127 = or i1 %125, %126
  br i1 %127, label %128, label %159

128:                                              ; preds = %123
  %129 = tail call fastcc ptr @c_common_type(ptr noundef nonnull %89, ptr noundef nonnull %96) #20
  %130 = load i64, ptr %74, align 8
  %131 = and i64 %130, 65535
  %132 = icmp eq i64 %131, 190
  br i1 %132, label %133, label %143

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.tree_exp, ptr %74, i64 0, i32 3
  %135 = load ptr, ptr %134, align 8, !tbaa !5
  %136 = getelementptr inbounds %struct.tree_common, ptr %135, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !5
  %138 = load i64, ptr %137, align 8
  %139 = trunc i64 %138 to i32
  %140 = and i32 %139, 65535
  %141 = icmp eq i32 %140, %92
  br i1 %141, label %143, label %142

142:                                              ; preds = %133
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4003, ptr noundef nonnull @.str.8) #21
  br label %143

143:                                              ; preds = %142, %133, %128
  %144 = phi ptr [ %137, %133 ], [ %137, %142 ], [ %89, %128 ]
  %145 = phi ptr [ %135, %133 ], [ %135, %142 ], [ %74, %128 ]
  %146 = load i64, ptr %83, align 8
  %147 = and i64 %146, 65535
  %148 = icmp eq i64 %147, 190
  br i1 %148, label %149, label %159

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.tree_exp, ptr %83, i64 0, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !5
  %152 = getelementptr inbounds %struct.tree_common, ptr %151, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !5
  %154 = load i64, ptr %153, align 8
  %155 = trunc i64 %154 to i32
  %156 = and i32 %155, 65535
  %157 = icmp eq i32 %156, %99
  br i1 %157, label %159, label %158

158:                                              ; preds = %149
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4009, ptr noundef nonnull @.str.8) #21
  br label %159

159:                                              ; preds = %158, %149, %143, %123, %118, %114
  %160 = phi ptr [ %129, %149 ], [ %129, %158 ], [ %129, %143 ], [ null, %123 ], [ null, %118 ], [ null, %114 ]
  %161 = phi ptr [ %153, %149 ], [ %153, %158 ], [ %96, %143 ], [ %96, %123 ], [ %96, %118 ], [ %96, %114 ]
  %162 = phi ptr [ %144, %149 ], [ %144, %158 ], [ %144, %143 ], [ %89, %123 ], [ %89, %118 ], [ %89, %114 ]
  %163 = phi ptr [ %151, %149 ], [ %151, %158 ], [ %83, %143 ], [ %83, %123 ], [ %83, %118 ], [ %83, %114 ]
  %164 = phi ptr [ %145, %149 ], [ %145, %158 ], [ %145, %143 ], [ %74, %123 ], [ %74, %118 ], [ %74, %114 ]
  %165 = load i32, ptr @warn_cxx_compat, align 4, !tbaa !28
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %193, label %167

167:                                              ; preds = %159
  %168 = icmp eq ptr %4, null
  br i1 %168, label %169, label %171

169:                                              ; preds = %167
  %170 = load ptr, ptr %12, align 8, !tbaa !5
  br label %171

171:                                              ; preds = %167, %169
  %172 = phi ptr [ %170, %169 ], [ %4, %167 ]
  %173 = icmp eq ptr %6, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = load ptr, ptr %30, align 8, !tbaa !5
  br label %176

176:                                              ; preds = %171, %174
  %177 = phi ptr [ %175, %174 ], [ %6, %171 ]
  %178 = load i64, ptr %172, align 8
  %179 = and i64 %178, 65535
  %180 = icmp eq i64 %179, 6
  br i1 %180, label %181, label %193

181:                                              ; preds = %176
  %182 = load i64, ptr %177, align 8
  %183 = and i64 %182, 65535
  %184 = icmp eq i64 %183, 6
  br i1 %184, label %185, label %193

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.tree_type, ptr %172, i64 0, i32 16
  %187 = load ptr, ptr %186, align 8, !tbaa !5
  %188 = getelementptr inbounds %struct.tree_type, ptr %177, i64 0, i32 16
  %189 = load ptr, ptr %188, align 8, !tbaa !5
  %190 = icmp eq ptr %187, %189
  br i1 %190, label %193, label %191

191:                                              ; preds = %185
  %192 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %0, i32 noundef 49, ptr noundef nonnull @.str.55, ptr noundef nonnull %172, ptr noundef nonnull %177) #21
  br label %193

193:                                              ; preds = %176, %181, %185, %191, %159
  %194 = getelementptr inbounds %struct.tree_type, ptr %162, i64 0, i32 16
  %195 = load ptr, ptr %194, align 8, !tbaa !5
  %196 = getelementptr inbounds %struct.tree_type, ptr %161, i64 0, i32 16
  %197 = load ptr, ptr %196, align 8, !tbaa !5
  %198 = icmp eq ptr %195, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %193
  %200 = icmp eq ptr %162, %161
  br i1 %200, label %413, label %403

201:                                              ; preds = %193
  %202 = icmp eq i32 %92, 8
  %203 = and i32 %91, 65534
  %204 = icmp eq i32 %203, 8
  %205 = icmp eq i32 %92, 13
  %206 = or i1 %204, %205
  br i1 %206, label %207, label %296

207:                                              ; preds = %201
  %208 = and i32 %98, 65534
  %209 = icmp eq i32 %208, 8
  %210 = icmp eq i32 %99, 13
  %211 = or i1 %209, %210
  br i1 %211, label %212, label %296

212:                                              ; preds = %207
  %213 = tail call fastcc ptr @c_common_type(ptr noundef nonnull %162, ptr noundef nonnull %161) #20
  %214 = load i32, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !28
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %403

216:                                              ; preds = %212
  %217 = load ptr, ptr %12, align 8, !tbaa !5
  %218 = load i64, ptr %217, align 8
  %219 = trunc i64 %218 to i32
  %220 = lshr i32 %219, 21
  %221 = and i32 %220, 1
  %222 = load ptr, ptr %30, align 8, !tbaa !5
  %223 = load i64, ptr %222, align 8
  %224 = trunc i64 %223 to i32
  %225 = lshr i32 %224, 21
  %226 = and i32 %225, 1
  %227 = icmp eq i32 %221, %226
  br i1 %227, label %403, label %228

228:                                              ; preds = %216
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #22
  %229 = load i64, ptr %213, align 8
  %230 = and i64 %229, 2097152
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %293, label %232

232:                                              ; preds = %228
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #22
  store i8 1, ptr %9, align 1, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #22
  store i8 1, ptr %10, align 1, !tbaa !5
  %233 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 47), align 8, !tbaa !8
  %234 = icmp eq ptr %65, %233
  %235 = zext i1 %234 to i32
  store i32 %235, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !28
  %236 = load i32, ptr @require_constant_value, align 4, !tbaa !28
  %237 = trunc i32 %236 to i8
  %238 = call ptr @c_fully_fold(ptr noundef nonnull %164, i8 noundef zeroext %237, ptr noundef nonnull %9) #21
  %239 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 47), align 8, !tbaa !8
  %240 = icmp eq ptr %65, %239
  %241 = sext i1 %240 to i32
  %242 = load i32, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !28
  %243 = add i32 %242, %241
  %244 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 46), align 16, !tbaa !8
  %245 = icmp eq ptr %65, %244
  %246 = zext i1 %245 to i32
  %247 = add nsw i32 %243, %246
  store i32 %247, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !28
  %248 = load i32, ptr @require_constant_value, align 4, !tbaa !28
  %249 = trunc i32 %248 to i8
  %250 = call ptr @c_fully_fold(ptr noundef nonnull %163, i8 noundef zeroext %249, ptr noundef nonnull %10) #21
  %251 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 46), align 16, !tbaa !8
  %252 = icmp eq ptr %65, %251
  %253 = sext i1 %252 to i32
  %254 = load i32, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !28
  %255 = add i32 %254, %253
  store i32 %255, ptr @c_inhibit_evaluation_warnings, align 4, !tbaa !28
  %256 = load i32, ptr @warn_sign_compare, align 4, !tbaa !28
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %270, label %258

258:                                              ; preds = %232
  %259 = icmp eq i32 %226, 0
  br i1 %259, label %263, label %260

260:                                              ; preds = %258
  %261 = call zeroext i8 @tree_expr_nonnegative_warnv_p(ptr noundef %238, ptr noundef nonnull %8) #21
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %263, label %270

263:                                              ; preds = %260, %258
  %264 = icmp eq i32 %221, 0
  br i1 %264, label %268, label %265

265:                                              ; preds = %263
  %266 = call zeroext i8 @tree_expr_nonnegative_warnv_p(ptr noundef %250, ptr noundef nonnull %8) #21
  %267 = icmp eq i8 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %265, %263
  %269 = call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %0, i32 noundef 177, ptr noundef nonnull @.str.56) #21
  br label %270

270:                                              ; preds = %268, %265, %260, %232
  %271 = load i8, ptr %9, align 1, !tbaa !5
  %272 = icmp eq i8 %271, 0
  br i1 %272, label %277, label %273

273:                                              ; preds = %270
  %274 = load i64, ptr %238, align 8
  %275 = and i64 %274, 65535
  %276 = icmp eq i64 %275, 23
  br i1 %276, label %280, label %277

277:                                              ; preds = %273, %270
  %278 = zext i1 %272 to i8
  %279 = call ptr @c_wrap_maybe_const(ptr noundef %238, i8 noundef zeroext %278) #21
  br label %280

280:                                              ; preds = %277, %273
  %281 = phi ptr [ %279, %277 ], [ %238, %273 ]
  %282 = load i8, ptr %10, align 1, !tbaa !5
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %288, label %284

284:                                              ; preds = %280
  %285 = load i64, ptr %250, align 8
  %286 = and i64 %285, 65535
  %287 = icmp eq i64 %286, 23
  br i1 %287, label %291, label %288

288:                                              ; preds = %284, %280
  %289 = zext i1 %283 to i8
  %290 = call ptr @c_wrap_maybe_const(ptr noundef %250, i8 noundef zeroext %289) #21
  br label %291

291:                                              ; preds = %288, %284
  %292 = phi ptr [ %290, %288 ], [ %250, %284 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #22
  br label %293

293:                                              ; preds = %228, %291
  %294 = phi ptr [ %292, %291 ], [ %163, %228 ]
  %295 = phi ptr [ %281, %291 ], [ %164, %228 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #22
  br label %413

296:                                              ; preds = %207, %201
  %297 = icmp eq i32 %92, 19
  %298 = icmp eq i32 %99, 19
  %299 = or i1 %297, %298
  br i1 %299, label %300, label %308

300:                                              ; preds = %296
  %301 = icmp ne i32 %92, 19
  %302 = icmp ne i32 %99, 19
  %303 = or i1 %301, %302
  br i1 %303, label %304, label %306

304:                                              ; preds = %300
  %305 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 834, ptr noundef nonnull @.str.57) #21
  br label %306

306:                                              ; preds = %300, %304
  %307 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !8
  br label %403

308:                                              ; preds = %296
  %309 = icmp eq i32 %92, 10
  %310 = icmp eq i32 %99, 10
  %311 = and i1 %309, %310
  br i1 %311, label %312, label %384

312:                                              ; preds = %308
  %313 = getelementptr inbounds %struct.tree_common, ptr %162, i64 0, i32 2
  %314 = load ptr, ptr %313, align 8, !tbaa !5
  %315 = load i64, ptr %314, align 8
  %316 = lshr i64 %315, 56
  %317 = trunc i64 %316 to i8
  %318 = getelementptr inbounds %struct.tree_common, ptr %161, i64 0, i32 2
  %319 = load ptr, ptr %318, align 8, !tbaa !5
  %320 = load i64, ptr %319, align 8
  %321 = lshr i64 %320, 56
  %322 = trunc i64 %321 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #22
  %323 = tail call fastcc i32 @comp_target_types(i32 noundef %0, ptr noundef nonnull %162, ptr noundef nonnull %161) #20
  %324 = icmp eq i32 %323, 0
  br i1 %324, label %327, label %325

325:                                              ; preds = %312
  %326 = tail call fastcc ptr @common_pointer_type(ptr noundef nonnull %162, ptr noundef nonnull %161) #20
  br label %380

327:                                              ; preds = %312
  %328 = tail call fastcc zeroext i8 @null_pointer_constant_p(ptr noundef nonnull %3) #20, !range !24
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %330, label %380

330:                                              ; preds = %327
  %331 = tail call fastcc zeroext i8 @null_pointer_constant_p(ptr noundef nonnull %5) #20, !range !24
  %332 = icmp eq i8 %331, 0
  br i1 %332, label %333, label %380

333:                                              ; preds = %330
  %334 = call fastcc zeroext i8 @addr_space_superset(i8 noundef zeroext %317, i8 noundef zeroext %322, ptr noundef nonnull %11) #20, !range !24
  %335 = icmp eq i8 %334, 0
  br i1 %335, label %382, label %336

336:                                              ; preds = %333
  %337 = load ptr, ptr %313, align 8, !tbaa !5
  %338 = load i64, ptr %337, align 8
  %339 = trunc i64 %338 to i32
  %340 = and i32 %339, 65535
  %341 = icmp eq i32 %340, 19
  %342 = load ptr, ptr %318, align 8, !tbaa !5
  %343 = load i64, ptr %342, align 8
  %344 = and i64 %343, 65535
  br i1 %341, label %345, label %356

345:                                              ; preds = %336
  %346 = icmp eq i64 %344, 20
  br i1 %346, label %347, label %351

347:                                              ; preds = %345
  %348 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 834, ptr noundef nonnull @.str.59) #21
  %349 = load ptr, ptr %313, align 8, !tbaa !5
  %350 = load ptr, ptr %318, align 8, !tbaa !5
  br label %351

351:                                              ; preds = %347, %345
  %352 = phi ptr [ %350, %347 ], [ %342, %345 ]
  %353 = phi ptr [ %349, %347 ], [ %337, %345 ]
  %354 = tail call fastcc ptr @qualify_type(ptr noundef %353, ptr noundef %352) #20
  %355 = tail call ptr @build_pointer_type(ptr noundef %354) #21
  br label %380

356:                                              ; preds = %336
  %357 = icmp eq i64 %344, 19
  br i1 %357, label %358, label %369

358:                                              ; preds = %356
  %359 = icmp eq i32 %340, 20
  br i1 %359, label %360, label %364

360:                                              ; preds = %358
  %361 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 834, ptr noundef nonnull @.str.59) #21
  %362 = load ptr, ptr %318, align 8, !tbaa !5
  %363 = load ptr, ptr %313, align 8, !tbaa !5
  br label %364

364:                                              ; preds = %360, %358
  %365 = phi ptr [ %363, %360 ], [ %337, %358 ]
  %366 = phi ptr [ %362, %360 ], [ %342, %358 ]
  %367 = tail call fastcc ptr @qualify_type(ptr noundef %366, ptr noundef %365) #20
  %368 = tail call ptr @build_pointer_type(ptr noundef %367) #21
  br label %380

369:                                              ; preds = %356
  %370 = load i8, ptr %11, align 1, !tbaa !5
  %371 = zext i8 %370 to i32
  %372 = shl nuw nsw i32 %371, 8
  %373 = icmp eq i8 %110, 0
  br i1 %373, label %374, label %376

374:                                              ; preds = %369
  %375 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.60) #21
  br label %376

376:                                              ; preds = %374, %369
  %377 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !8
  %378 = tail call ptr @build_qualified_type(ptr noundef %377, i32 noundef %372) #21
  %379 = tail call ptr @build_pointer_type(ptr noundef %378) #21
  br label %380

380:                                              ; preds = %330, %327, %364, %376, %351, %325
  %381 = phi ptr [ %162, %330 ], [ %161, %327 ], [ %379, %376 ], [ %368, %364 ], [ %355, %351 ], [ %326, %325 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #22
  br label %403

382:                                              ; preds = %333
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.58) #21
  %383 = load ptr, ptr @global_trees, align 16, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #22
  br label %495

384:                                              ; preds = %308
  %385 = icmp eq i32 %99, 8
  %386 = and i1 %309, %385
  br i1 %386, label %387, label %394

387:                                              ; preds = %384
  %388 = tail call fastcc zeroext i8 @null_pointer_constant_p(ptr noundef nonnull %5) #20, !range !24
  %389 = icmp eq i8 %388, 0
  br i1 %389, label %390, label %392

390:                                              ; preds = %387
  %391 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.61) #21
  br label %413

392:                                              ; preds = %387
  %393 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !8
  br label %413

394:                                              ; preds = %384
  %395 = and i1 %202, %310
  br i1 %395, label %396, label %406

396:                                              ; preds = %394
  %397 = tail call fastcc zeroext i8 @null_pointer_constant_p(ptr noundef nonnull %3) #20, !range !24
  %398 = icmp eq i8 %397, 0
  br i1 %398, label %399, label %401

399:                                              ; preds = %396
  %400 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.61) #21
  br label %413

401:                                              ; preds = %396
  %402 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !8
  br label %413

403:                                              ; preds = %199, %380, %216, %212, %306
  %404 = phi ptr [ %213, %212 ], [ %307, %306 ], [ %195, %199 ], [ %213, %216 ], [ %381, %380 ]
  %405 = icmp eq ptr %404, null
  br i1 %405, label %406, label %413

406:                                              ; preds = %394, %403
  %407 = load i32, ptr @flag_cond_mismatch, align 4, !tbaa !28
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %411, label %409

409:                                              ; preds = %406
  %410 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !8
  br label %413

411:                                              ; preds = %406
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.62) #21
  %412 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %495

413:                                              ; preds = %199, %399, %401, %390, %392, %293, %409, %403
  %414 = phi ptr [ %164, %403 ], [ %164, %409 ], [ %164, %399 ], [ %402, %401 ], [ %164, %390 ], [ %164, %392 ], [ %295, %293 ], [ %164, %199 ]
  %415 = phi ptr [ %163, %403 ], [ %163, %409 ], [ %163, %399 ], [ %163, %401 ], [ %163, %390 ], [ %393, %392 ], [ %294, %293 ], [ %163, %199 ]
  %416 = phi ptr [ %404, %403 ], [ %410, %409 ], [ %161, %399 ], [ %161, %401 ], [ %162, %390 ], [ %162, %392 ], [ %213, %293 ], [ %161, %199 ]
  %417 = load i64, ptr %162, align 8
  %418 = and i64 %417, 1048576
  %419 = icmp eq i64 %418, 0
  br i1 %419, label %420, label %425

420:                                              ; preds = %413
  %421 = load i64, ptr %161, align 8
  %422 = trunc i64 %421 to i32
  %423 = lshr i32 %422, 20
  %424 = and i32 %423, 1
  br label %425

425:                                              ; preds = %420, %413
  %426 = phi i32 [ 1, %413 ], [ %424, %420 ]
  %427 = and i64 %417, 524288
  %428 = icmp eq i64 %427, 0
  br i1 %428, label %429, label %434

429:                                              ; preds = %425
  %430 = load i64, ptr %161, align 8
  %431 = trunc i64 %430 to i32
  %432 = lshr i32 %431, 18
  %433 = and i32 %432, 2
  br label %434

434:                                              ; preds = %429, %425
  %435 = phi i32 [ 2, %425 ], [ %433, %429 ]
  %436 = or disjoint i32 %435, %426
  %437 = call ptr @build_qualified_type(ptr noundef %416, i32 noundef %436) #21
  %438 = call fastcc ptr @ep_convert_and_check(ptr noundef %437, ptr noundef %414, ptr noundef %160) #20
  %439 = call fastcc ptr @ep_convert_and_check(ptr noundef %437, ptr noundef %415, ptr noundef %160) #20
  %440 = icmp ne i8 %2, 0
  %441 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 46), align 16
  %442 = icmp eq ptr %65, %441
  %443 = select i1 %440, i1 %442, i1 false
  br i1 %443, label %444, label %448

444:                                              ; preds = %434
  %445 = load i32, ptr @require_constant_value, align 4, !tbaa !28
  %446 = trunc i32 %445 to i8
  %447 = call ptr @c_fully_fold(ptr noundef %438, i8 noundef zeroext %446, ptr noundef null) #21
  br label %448

448:                                              ; preds = %444, %434
  %449 = phi i1 [ true, %444 ], [ %46, %434 ]
  %450 = phi ptr [ %447, %444 ], [ %438, %434 ]
  %451 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 47), align 8
  %452 = icmp eq ptr %65, %451
  %453 = select i1 %440, i1 %452, i1 false
  br i1 %453, label %454, label %458

454:                                              ; preds = %448
  %455 = load i32, ptr @require_constant_value, align 4, !tbaa !28
  %456 = trunc i32 %455 to i8
  %457 = call ptr @c_fully_fold(ptr noundef %439, i8 noundef zeroext %456, ptr noundef null) #21
  br label %458

458:                                              ; preds = %454, %448
  %459 = phi i1 [ true, %454 ], [ %28, %448 ]
  %460 = phi ptr [ %457, %454 ], [ %439, %448 ]
  %461 = and i1 %64, %459
  %462 = and i1 %449, %461
  br i1 %462, label %463, label %477

463:                                              ; preds = %458
  %464 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 46), align 16, !tbaa !8
  %465 = icmp eq ptr %65, %464
  br i1 %465, label %466, label %470

466:                                              ; preds = %463
  %467 = load i64, ptr %3, align 8
  %468 = and i64 %467, 134283263
  %469 = icmp eq i64 %468, 23
  br i1 %469, label %482, label %470

470:                                              ; preds = %466, %463
  %471 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 47), align 8, !tbaa !8
  %472 = icmp eq ptr %65, %471
  br i1 %472, label %473, label %477

473:                                              ; preds = %470
  %474 = load i64, ptr %5, align 8
  %475 = and i64 %474, 134283263
  %476 = icmp eq i64 %475, 23
  br i1 %476, label %482, label %477

477:                                              ; preds = %458, %473, %470
  br i1 %440, label %478, label %484

478:                                              ; preds = %477
  %479 = load i64, ptr %65, align 8
  %480 = and i64 %479, 65535
  %481 = icmp eq i64 %480, 23
  br i1 %481, label %482, label %484

482:                                              ; preds = %473, %466, %478
  %483 = call ptr @fold_build3_stat_loc(i32 noundef %0, i32 noundef 56, ptr noundef %437, ptr noundef nonnull %65, ptr noundef %450, ptr noundef %460) #21
  br label %488

484:                                              ; preds = %478, %477
  %485 = call ptr @build3_stat(i32 noundef 56, ptr noundef %437, ptr noundef nonnull %65, ptr noundef %450, ptr noundef %460) #21
  br i1 %462, label %486, label %488

486:                                              ; preds = %484
  %487 = call fastcc ptr @note_integer_operands(ptr noundef %485) #20
  br label %488

488:                                              ; preds = %484, %486, %482
  %489 = phi ptr [ %483, %482 ], [ %487, %486 ], [ %485, %484 ]
  %490 = icmp eq ptr %160, null
  br i1 %490, label %493, label %491

491:                                              ; preds = %488
  %492 = call ptr @build1_stat(i32 noundef 190, ptr noundef nonnull %160, ptr noundef %489) #21
  br label %493

493:                                              ; preds = %491, %488
  %494 = phi ptr [ %492, %491 ], [ %489, %488 ]
  call void @protected_set_expr_location(ptr noundef %494, i32 noundef %0) #21
  br label %495

495:                                              ; preds = %382, %493, %411, %107, %101
  %496 = phi ptr [ %102, %101 ], [ %108, %107 ], [ %494, %493 ], [ %412, %411 ], [ %383, %382 ]
  ret ptr %496
}

; Function Attrs: optsize
declare zeroext i8 @objc_compare_types(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @tree_expr_nonnegative_warnv_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @c_wrap_maybe_const(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @comp_target_types(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = load i64, ptr %7, align 8
  %11 = lshr i64 %10, 56
  %12 = trunc i64 %11 to i8
  %13 = load i64, ptr %9, align 8
  %14 = lshr i64 %13, 56
  %15 = trunc i64 %14 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #22
  %16 = call fastcc zeroext i8 @addr_space_superset(i8 noundef zeroext %12, i8 noundef zeroext %15, ptr noundef nonnull %4) #20, !range !24
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %49, label %18

18:                                               ; preds = %3
  %19 = load i64, ptr %7, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 15
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 16
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi ptr [ %24, %22 ], [ %7, %18 ]
  %27 = load i64, ptr %9, align 8
  %28 = and i64 %27, 65535
  %29 = icmp eq i64 %28, 15
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 16
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  br label %33

33:                                               ; preds = %30, %25
  %34 = phi ptr [ %32, %30 ], [ %9, %25 ]
  store i8 0, ptr %5, align 1, !tbaa !5
  %35 = call fastcc i32 @comptypes_check_enum_int(ptr noundef %26, ptr noundef %34, ptr noundef nonnull %5) #20
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 834, ptr noundef nonnull @.str.199) #21
  br label %39

39:                                               ; preds = %37, %33
  %40 = icmp eq i32 %35, 1
  %41 = load i8, ptr %5, align 1
  %42 = icmp ne i8 %41, 0
  %43 = select i1 %40, i1 %42, i1 false
  %44 = load i32, ptr @warn_cxx_compat, align 4
  %45 = icmp ne i32 %44, 0
  %46 = select i1 %43, i1 %45, i1 false
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %0, i32 noundef 49, ptr noundef nonnull @.str.200) #21
  br label %49

49:                                               ; preds = %39, %47, %3
  %50 = phi i32 [ 0, %3 ], [ 1, %47 ], [ %35, %39 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #22
  ret i32 %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @common_pointer_type(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #22
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %87, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %7 = icmp eq ptr %6, %0
  br i1 %7, label %87, label %8

8:                                                ; preds = %5
  %9 = icmp eq ptr %6, %1
  br i1 %9, label %87, label %10

10:                                               ; preds = %8
  %11 = load i64, ptr %0, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 10
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i64, ptr %1, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 10
  br i1 %17, label %19, label %18

18:                                               ; preds = %14, %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 644, ptr noundef nonnull @.str.8) #21
  br label %19

19:                                               ; preds = %14, %18
  %20 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 12), align 8, !tbaa !10
  %21 = tail call ptr %20(ptr noundef nonnull %0, ptr noundef %1) #21
  %22 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = load i64, ptr %23, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 15
  br i1 %28, label %32, label %29

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 16
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  br label %32

32:                                               ; preds = %29, %19
  %33 = phi ptr [ %31, %29 ], [ %23, %19 ]
  %34 = load i64, ptr %25, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 15
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.tree_type, ptr %25, i64 0, i32 16
  %39 = load ptr, ptr %38, align 8, !tbaa !5
  br label %40

40:                                               ; preds = %37, %32
  %41 = phi ptr [ %39, %37 ], [ %25, %32 ]
  %42 = tail call ptr @composite_type(ptr noundef %33, ptr noundef %41) #20
  %43 = load i64, ptr %23, align 8
  %44 = trunc i64 %43 to i32
  %45 = lshr i32 %44, 20
  %46 = and i32 %45, 1
  %47 = lshr i32 %44, 18
  %48 = and i32 %47, 2
  %49 = or disjoint i32 %46, %48
  %50 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = lshr i32 %51, 11
  %53 = and i32 %52, 4
  %54 = or disjoint i32 %49, %53
  %55 = load i64, ptr %25, align 8
  %56 = trunc i64 %55 to i32
  %57 = lshr i32 %56, 20
  %58 = and i32 %57, 1
  %59 = lshr i32 %56, 18
  %60 = and i32 %59, 2
  %61 = or disjoint i32 %58, %60
  %62 = getelementptr inbounds %struct.tree_type, ptr %25, i64 0, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = lshr i32 %63, 11
  %65 = and i32 %64, 4
  %66 = or disjoint i32 %61, %65
  %67 = and i64 %43, 65535
  %68 = icmp eq i64 %67, 20
  %69 = and i32 %66, %54
  %70 = or i32 %66, %54
  %71 = select i1 %68, i32 %69, i32 %70
  %72 = lshr i64 %43, 56
  %73 = trunc i64 %72 to i8
  %74 = lshr i64 %55, 56
  %75 = trunc i64 %74 to i8
  %76 = call fastcc zeroext i8 @addr_space_superset(i8 noundef zeroext %73, i8 noundef zeroext %75, ptr noundef nonnull %3) #20, !range !24
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 677, ptr noundef nonnull @.str.8) #21
  br label %79

79:                                               ; preds = %78, %40
  %80 = load i8, ptr %3, align 1, !tbaa !5
  %81 = zext i8 %80 to i32
  %82 = shl nuw nsw i32 %81, 8
  %83 = or disjoint i32 %82, %71
  %84 = tail call ptr @c_build_qualified_type(ptr noundef %42, i32 noundef %83) #20
  %85 = tail call ptr @build_pointer_type(ptr noundef %84) #21
  %86 = tail call ptr @build_type_attribute_variant(ptr noundef %85, ptr noundef %21) #21
  br label %87

87:                                               ; preds = %8, %5, %2, %79
  %88 = phi ptr [ %86, %79 ], [ %0, %2 ], [ %1, %5 ], [ %0, %8 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #22
  ret ptr %88
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @null_pointer_constant_p(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 134283263
  %6 = icmp eq i64 %5, 23
  br i1 %6, label %7, label %38

7:                                                ; preds = %1
  %8 = tail call i32 @integer_zerop(ptr noundef nonnull %0) #21
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %38, label %10

10:                                               ; preds = %7
  %11 = load i64, ptr %3, align 8
  %12 = trunc i64 %11 to i16
  switch i16 %12, label %37 [
    i16 6, label %38
    i16 7, label %38
    i16 8, label %38
    i16 10, label %13
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 19
  br i1 %18, label %19, label %38

19:                                               ; preds = %13
  %20 = trunc i64 %16 to i32
  %21 = lshr i32 %20, 20
  %22 = and i32 %21, 1
  %23 = lshr i32 %20, 18
  %24 = and i32 %23, 2
  %25 = or disjoint i32 %22, %24
  %26 = getelementptr inbounds %struct.tree_type, ptr %15, i64 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = lshr i32 %27, 11
  %29 = and i32 %28, 4
  %30 = lshr i64 %16, 48
  %31 = trunc i64 %30 to i32
  %32 = and i32 %31, 65280
  %33 = or disjoint i32 %25, %32
  %34 = or disjoint i32 %33, %29
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i8
  br label %38

37:                                               ; preds = %10
  br label %38

38:                                               ; preds = %10, %10, %10, %37, %19, %13, %7, %1
  %39 = phi i8 [ 0, %7 ], [ 0, %1 ], [ 1, %10 ], [ 0, %13 ], [ %36, %19 ], [ 1, %10 ], [ 1, %10 ], [ 0, %37 ]
  ret i8 %39
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @addr_space_superset(i8 noundef zeroext %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = icmp eq i8 %0, %1
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 5), align 8, !tbaa !85
  %7 = tail call zeroext i8 %6(i8 noundef zeroext %0, i8 noundef zeroext %1) #21
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 5), align 8, !tbaa !85
  %11 = tail call zeroext i8 %10(i8 noundef zeroext %1, i8 noundef zeroext %0) #21
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %9, %5, %3
  %14 = phi i8 [ %0, %3 ], [ %1, %5 ], [ %0, %9 ]
  store i8 %14, ptr %2, align 1, !tbaa !5
  br label %15

15:                                               ; preds = %13, %9
  %16 = phi i8 [ 0, %9 ], [ 1, %13 ]
  ret i8 %16
}

; Function Attrs: optsize
declare ptr @build_qualified_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ep_convert_and_check(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %22, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %2, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = tail call ptr @convert_and_check(ptr noundef %0, ptr noundef nonnull %1) #21
  br label %22

11:                                               ; preds = %7
  %12 = load i64, ptr %5, align 8
  %13 = and i64 %12, 65535
  %14 = icmp ne i64 %13, 8
  %15 = icmp eq ptr %5, %2
  %16 = or i1 %15, %14
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = tail call ptr @convert_and_check(ptr noundef nonnull %2, ptr noundef nonnull %1) #21
  br label %19

19:                                               ; preds = %17, %11
  %20 = phi ptr [ %18, %17 ], [ %1, %11 ]
  %21 = tail call ptr @convert(ptr noundef %0, ptr noundef %20) #21
  br label %22

22:                                               ; preds = %3, %19, %9
  %23 = phi ptr [ %21, %19 ], [ %10, %9 ], [ %1, %3 ]
  ret ptr %23
}

; Function Attrs: optsize
declare ptr @fold_build3_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_compound_expr(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 65535
  %9 = add nsw i32 %8, -6
  %10 = icmp ult i32 %9, 3
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load i64, ptr %1, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %19 [
    i16 23, label %17
    i16 189, label %14
  ]

14:                                               ; preds = %11
  %15 = and i64 %12, 8589934592
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11, %14
  %18 = tail call fastcc ptr @remove_c_maybe_const_expr(ptr noundef nonnull %1) #20
  br label %19

19:                                               ; preds = %11, %3, %17, %14
  %20 = phi i1 [ true, %17 ], [ false, %14 ], [ false, %3 ], [ false, %11 ]
  %21 = phi ptr [ %18, %17 ], [ %1, %14 ], [ %1, %3 ], [ %1, %11 ]
  %22 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = load i64, ptr %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = and i32 %25, 65535
  %27 = add nsw i32 %26, -6
  %28 = icmp ult i32 %27, 3
  br i1 %28, label %29, label %37

29:                                               ; preds = %19
  %30 = load i64, ptr %2, align 8
  %31 = trunc i64 %30 to i16
  switch i16 %31, label %37 [
    i16 23, label %35
    i16 189, label %32
  ]

32:                                               ; preds = %29
  %33 = and i64 %30, 8589934592
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %29, %32
  %36 = tail call fastcc ptr @remove_c_maybe_const_expr(ptr noundef nonnull %2) #20
  br label %37

37:                                               ; preds = %29, %19, %35, %32
  %38 = phi i1 [ true, %35 ], [ false, %32 ], [ false, %19 ], [ false, %29 ]
  %39 = phi ptr [ %36, %35 ], [ %2, %32 ], [ %2, %19 ], [ %2, %29 ]
  %40 = load i64, ptr %21, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 190
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.tree_exp, ptr %21, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !5
  br label %46

46:                                               ; preds = %43, %37
  %47 = phi ptr [ %45, %43 ], [ %21, %37 ]
  %48 = load i64, ptr %39, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 190
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !5
  %54 = getelementptr inbounds %struct.tree_exp, ptr %39, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !5
  br label %56

56:                                               ; preds = %51, %46
  %57 = phi ptr [ %55, %51 ], [ %39, %46 ]
  %58 = phi ptr [ %53, %51 ], [ null, %46 ]
  %59 = load i64, ptr %47, align 8
  %60 = and i64 %59, 65536
  %61 = icmp eq i64 %60, 0
  %62 = load i32, ptr @warn_unused_value, align 4, !tbaa !28
  %63 = icmp eq i32 %62, 0
  br i1 %61, label %64, label %83

64:                                               ; preds = %56
  br i1 %63, label %86, label %65

65:                                               ; preds = %64
  %66 = getelementptr inbounds %struct.tree_common, ptr %47, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !5
  %68 = load i64, ptr %67, align 8
  %69 = and i64 %68, 65535
  %70 = icmp eq i64 %69, 19
  br i1 %70, label %71, label %81

71:                                               ; preds = %65
  %72 = trunc i64 %59 to i16
  switch i16 %72, label %73 [
    i16 116, label %86
    i16 113, label %86
  ]

73:                                               ; preds = %71
  %74 = and i64 %59, 65535
  %75 = icmp eq i64 %74, 52
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.tree_exp, ptr %47, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !5
  %79 = load i64, ptr %78, align 8
  %80 = trunc i64 %79 to i16
  switch i16 %80, label %81 [
    i16 116, label %86
    i16 113, label %86
  ]

81:                                               ; preds = %65, %76, %73
  %82 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %0, i32 noundef 229, ptr noundef nonnull @.str.63) #21
  br label %86

83:                                               ; preds = %56
  br i1 %63, label %86, label %84

84:                                               ; preds = %83
  %85 = tail call i32 @warn_if_unused_value(ptr noundef nonnull %47, i32 noundef %0) #21
  br label %86

86:                                               ; preds = %76, %76, %71, %71, %83, %84, %64, %81
  %87 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %88 = icmp eq ptr %57, %87
  br i1 %88, label %106, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !5
  %92 = tail call ptr @build2_stat(i32 noundef 52, ptr noundef %91, ptr noundef nonnull %47, ptr noundef %57) #21
  %93 = load i32, ptr @flag_isoc99, align 4, !tbaa !28
  %94 = icmp ne i32 %93, 0
  %95 = and i1 %38, %94
  %96 = and i1 %20, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = tail call fastcc ptr @note_integer_operands(ptr noundef %92) #20
  br label %99

99:                                               ; preds = %97, %89
  %100 = phi ptr [ %98, %97 ], [ %92, %89 ]
  %101 = icmp eq ptr %58, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %99
  %103 = tail call ptr @build1_stat(i32 noundef 190, ptr noundef nonnull %58, ptr noundef %100) #21
  br label %104

104:                                              ; preds = %102, %99
  %105 = phi ptr [ %103, %102 ], [ %100, %99 ]
  tail call void @protected_set_expr_location(ptr noundef %105, i32 noundef %0) #21
  br label %106

106:                                              ; preds = %86, %104
  %107 = phi ptr [ %105, %104 ], [ %57, %86 ]
  ret ptr %107
}

; Function Attrs: optsize
declare i32 @warn_if_unused_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_c_cast(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = load i64, ptr %2, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 190
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  br label %12

12:                                               ; preds = %9, %3
  %13 = phi ptr [ %11, %9 ], [ %2, %3 ]
  %14 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %15 = icmp eq ptr %14, %1
  %16 = icmp eq ptr %13, %14
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %349, label %18

18:                                               ; preds = %12
  %19 = tail call ptr @objc_is_object_ptr(ptr noundef %1) #21
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = tail call ptr @objc_is_object_ptr(ptr noundef %23) #21
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef %1, ptr noundef nonnull %13) #21
  br label %349

28:                                               ; preds = %21, %18
  %29 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 16
  %30 = load ptr, ptr %29, align 8, !tbaa !5
  %31 = load i64, ptr %30, align 8
  %32 = trunc i64 %31 to i16
  switch i16 %32, label %37 [
    i16 15, label %33
    i16 20, label %35
    i16 19, label %41
  ]

33:                                               ; preds = %28
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.64) #21
  %34 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %349

35:                                               ; preds = %28
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.65) #21
  %36 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %349

37:                                               ; preds = %28
  %38 = tail call ptr @require_complete_type(ptr noundef %13) #20
  %39 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %349, label %41

41:                                               ; preds = %28, %37
  %42 = phi ptr [ %38, %37 ], [ %13, %28 ]
  %43 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = getelementptr inbounds %struct.tree_type, ptr %44, i64 0, i32 16
  %46 = load ptr, ptr %45, align 8, !tbaa !5
  %47 = icmp eq ptr %30, %46
  %48 = load i64, ptr %30, align 8
  br i1 %47, label %49, label %54

49:                                               ; preds = %41
  %50 = and i64 %48, 65534
  %51 = icmp eq i64 %50, 16
  br i1 %51, label %52, label %311

52:                                               ; preds = %49
  %53 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 834, ptr noundef nonnull @.str.66) #21
  br label %311

54:                                               ; preds = %41
  %55 = trunc i64 %48 to i32
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 17
  br i1 %57, label %58, label %102

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.tree_type, ptr %30, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !5
  %61 = icmp eq ptr %60, null
  br i1 %61, label %100, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %64

64:                                               ; preds = %62, %79
  %65 = phi ptr [ %80, %79 ], [ %63, %62 ]
  %66 = phi ptr [ %82, %79 ], [ %60, %62 ]
  %67 = getelementptr inbounds %struct.tree_common, ptr %66, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !5
  %69 = icmp eq ptr %68, %65
  br i1 %69, label %79, label %70

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.tree_type, ptr %68, i64 0, i32 16
  %72 = load ptr, ptr %71, align 8, !tbaa !5
  %73 = load ptr, ptr %43, align 8, !tbaa !5
  %74 = getelementptr inbounds %struct.tree_type, ptr %73, i64 0, i32 16
  %75 = load ptr, ptr %74, align 8, !tbaa !5
  %76 = tail call i32 @comptypes(ptr noundef %72, ptr noundef %75) #20
  %77 = icmp eq i32 %76, 0
  %78 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br i1 %77, label %79, label %84

79:                                               ; preds = %64, %70
  %80 = phi ptr [ %65, %64 ], [ %78, %70 ]
  %81 = getelementptr inbounds %struct.tree_common, ptr %66, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !5
  %83 = icmp eq ptr %82, null
  br i1 %83, label %100, label %64, !llvm.loop !86

84:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #22
  store i8 1, ptr %4, align 1, !tbaa !5
  %85 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 834, ptr noundef nonnull @.str.67) #21
  %86 = call ptr @c_fully_fold(ptr noundef nonnull %42, i8 noundef zeroext 0, ptr noundef nonnull %4) #21
  %87 = call ptr @build_constructor_single(ptr noundef nonnull %30, ptr noundef nonnull %66, ptr noundef %86) #21
  %88 = load i8, ptr %4, align 1, !tbaa !5
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = call ptr @c_wrap_maybe_const(ptr noundef %87, i8 noundef zeroext 1) #21
  br label %92

92:                                               ; preds = %90, %84
  %93 = phi ptr [ %87, %84 ], [ %91, %90 ]
  %94 = call fastcc ptr @digest_init(i32 noundef %0, ptr noundef nonnull %30, ptr noundef %93, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef 0) #20
  %95 = load i64, ptr %42, align 8
  %96 = and i64 %95, 131072
  %97 = load i64, ptr %94, align 8
  %98 = and i64 %97, -131073
  %99 = or disjoint i64 %98, %96
  store i64 %99, ptr %94, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #22
  br label %349

100:                                              ; preds = %79, %58
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.68) #21
  %101 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %349

102:                                              ; preds = %54
  %103 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !8
  %104 = icmp eq ptr %30, %103
  br i1 %104, label %308, label %105

105:                                              ; preds = %102
  %106 = load i32, ptr @warn_cast_qual, align 4, !tbaa !28
  %107 = icmp ne i32 %106, 0
  %108 = icmp eq i32 %56, 10
  %109 = and i1 %108, %107
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load i64, ptr %44, align 8
  %112 = and i64 %111, 65535
  %113 = icmp eq i64 %112, 10
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  tail call fastcc void @handle_warn_cast_qual(ptr noundef nonnull %30, ptr noundef nonnull %44) #20
  %115 = load i64, ptr %30, align 8
  br label %116

116:                                              ; preds = %114, %110, %105
  %117 = phi i64 [ %115, %114 ], [ %48, %110 ], [ %48, %105 ]
  %118 = and i64 %117, 65535
  %119 = icmp eq i64 %118, 10
  br i1 %119, label %120, label %155

120:                                              ; preds = %116
  %121 = load i64, ptr %44, align 8
  %122 = and i64 %121, 65535
  %123 = icmp eq i64 %122, 10
  br i1 %123, label %124, label %155

124:                                              ; preds = %120
  %125 = tail call fastcc zeroext i8 @null_pointer_constant_p(ptr noundef nonnull %42) #20, !range !24
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %155

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !5
  %130 = load i64, ptr %129, align 8
  %131 = lshr i64 %130, 56
  %132 = trunc i64 %131 to i8
  %133 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !5
  %135 = load i64, ptr %134, align 8
  %136 = lshr i64 %135, 56
  %137 = trunc i64 %136 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #22
  %138 = call fastcc zeroext i8 @addr_space_superset(i8 noundef zeroext %132, i8 noundef zeroext %137, ptr noundef nonnull %5) #20, !range !24
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %154

140:                                              ; preds = %127
  %141 = icmp ult i64 %135, 72057594037927936
  br i1 %141, label %142, label %145

142:                                              ; preds = %140
  %143 = tail call ptr @c_addr_space_name(i8 noundef zeroext %132) #21
  %144 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.69, ptr noundef %143) #21
  br label %154

145:                                              ; preds = %140
  %146 = icmp ult i64 %130, 72057594037927936
  br i1 %146, label %147, label %150

147:                                              ; preds = %145
  %148 = tail call ptr @c_addr_space_name(i8 noundef zeroext %137) #21
  %149 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.70, ptr noundef %148) #21
  br label %154

150:                                              ; preds = %145
  %151 = tail call ptr @c_addr_space_name(i8 noundef zeroext %132) #21
  %152 = tail call ptr @c_addr_space_name(i8 noundef zeroext %137) #21
  %153 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.71, ptr noundef %151, ptr noundef %152) #21
  br label %154

154:                                              ; preds = %142, %150, %147, %127
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #22
  br label %155

155:                                              ; preds = %154, %124, %120, %116
  %156 = load i64, ptr %30, align 8
  %157 = and i64 %156, 65535
  %158 = icmp eq i64 %157, 8
  br i1 %158, label %159, label %174

159:                                              ; preds = %155
  %160 = load i64, ptr %44, align 8
  %161 = and i64 %160, 65535
  %162 = icmp eq i64 %161, 10
  br i1 %162, label %163, label %174

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.tree_type, ptr %30, i64 0, i32 6
  %165 = load i32, ptr %164, align 4
  %166 = getelementptr inbounds %struct.tree_type, ptr %44, i64 0, i32 6
  %167 = load i32, ptr %166, align 4
  %168 = xor i32 %167, %165
  %169 = and i32 %168, 1023
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %163
  %172 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %0, i32 noundef 164, ptr noundef nonnull @.str.72) #21
  %173 = load i64, ptr %30, align 8
  br label %174

174:                                              ; preds = %171, %163, %159, %155
  %175 = phi i64 [ %173, %171 ], [ %156, %163 ], [ %156, %159 ], [ %156, %155 ]
  %176 = load i64, ptr %42, align 8
  %177 = and i64 %176, 65535
  %178 = icmp eq i64 %177, 59
  br i1 %178, label %179, label %187

179:                                              ; preds = %174
  %180 = load i64, ptr %44, align 8
  %181 = xor i64 %180, %175
  %182 = and i64 %181, 65535
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %179
  %185 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %0, i32 noundef 46, ptr noundef nonnull @.str.73, ptr noundef nonnull %44, ptr noundef nonnull %30) #21
  %186 = load i64, ptr %30, align 8
  br label %187

187:                                              ; preds = %184, %179, %174
  %188 = phi i64 [ %186, %184 ], [ %175, %179 ], [ %175, %174 ]
  %189 = and i64 %188, 65535
  %190 = icmp eq i64 %189, 10
  br i1 %190, label %191, label %209

191:                                              ; preds = %187
  %192 = load i64, ptr %44, align 8
  %193 = and i64 %192, 65535
  %194 = icmp eq i64 %193, 8
  br i1 %194, label %195, label %209

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.tree_type, ptr %30, i64 0, i32 6
  %197 = load i32, ptr %196, align 4
  %198 = getelementptr inbounds %struct.tree_type, ptr %44, i64 0, i32 6
  %199 = load i32, ptr %198, align 4
  %200 = xor i32 %199, %197
  %201 = and i32 %200, 1023
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %209, label %203

203:                                              ; preds = %195
  %204 = load i64, ptr %42, align 8
  %205 = and i64 %204, 131072
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %203
  %208 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %0, i32 noundef 111, ptr noundef nonnull @.str.74) #21
  br label %209

209:                                              ; preds = %207, %203, %195, %191, %187
  %210 = load i32, ptr @warn_strict_aliasing, align 4, !tbaa !28
  %211 = icmp slt i32 %210, 3
  br i1 %211, label %212, label %214

212:                                              ; preds = %209
  %213 = tail call zeroext i8 @strict_aliasing_warning(ptr noundef nonnull %44, ptr noundef nonnull %30, ptr noundef %13) #21
  br label %214

214:                                              ; preds = %212, %209
  %215 = load i32, ptr @pedantic, align 4, !tbaa !28
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %266, label %217

217:                                              ; preds = %214
  %218 = load i64, ptr %30, align 8
  %219 = and i64 %218, 65535
  %220 = icmp eq i64 %219, 10
  br i1 %220, label %221, label %241

221:                                              ; preds = %217
  %222 = load i64, ptr %44, align 8
  %223 = and i64 %222, 65535
  %224 = icmp eq i64 %223, 10
  br i1 %224, label %225, label %241

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %227 = load ptr, ptr %226, align 8, !tbaa !5
  %228 = load i64, ptr %227, align 8
  %229 = and i64 %228, 65535
  %230 = icmp eq i64 %229, 20
  br i1 %230, label %231, label %241

231:                                              ; preds = %225
  %232 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %233 = load ptr, ptr %232, align 8, !tbaa !5
  %234 = load i64, ptr %233, align 8
  %235 = and i64 %234, 65535
  %236 = icmp eq i64 %235, 20
  br i1 %236, label %241, label %237

237:                                              ; preds = %231
  %238 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 834, ptr noundef nonnull @.str.75) #21
  %239 = load i32, ptr @pedantic, align 4, !tbaa !28
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %266, label %241

241:                                              ; preds = %217, %221, %225, %231, %237
  %242 = load i64, ptr %30, align 8
  %243 = and i64 %242, 65535
  %244 = icmp eq i64 %243, 10
  br i1 %244, label %245, label %266

245:                                              ; preds = %241
  %246 = load i64, ptr %44, align 8
  %247 = and i64 %246, 65535
  %248 = icmp eq i64 %247, 10
  br i1 %248, label %249, label %266

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %251 = load ptr, ptr %250, align 8, !tbaa !5
  %252 = load i64, ptr %251, align 8
  %253 = and i64 %252, 65535
  %254 = icmp eq i64 %253, 20
  br i1 %254, label %255, label %266

255:                                              ; preds = %249
  %256 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %257 = load ptr, ptr %256, align 8, !tbaa !5
  %258 = load i64, ptr %257, align 8
  %259 = and i64 %258, 65535
  %260 = icmp eq i64 %259, 20
  br i1 %260, label %266, label %261

261:                                              ; preds = %255
  %262 = tail call fastcc zeroext i8 @null_pointer_constant_p(ptr noundef nonnull %42) #20, !range !24
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %261
  %265 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 834, ptr noundef nonnull @.str.76) #21
  br label %266

266:                                              ; preds = %214, %264, %261, %255, %249, %245, %241, %237
  %267 = tail call ptr @convert(ptr noundef nonnull %30, ptr noundef nonnull %42) #21
  %268 = load i64, ptr %267, align 8
  %269 = and i64 %268, 65535
  %270 = icmp eq i64 %269, 23
  br i1 %270, label %271, label %311

271:                                              ; preds = %266
  %272 = load i64, ptr %44, align 8
  %273 = trunc i64 %272 to i16
  switch i16 %273, label %280 [
    i16 9, label %311
    i16 13, label %274
    i16 14, label %274
  ]

274:                                              ; preds = %271, %271
  %275 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %276 = load ptr, ptr %275, align 8, !tbaa !5
  %277 = load i64, ptr %276, align 8
  %278 = and i64 %277, 65535
  %279 = icmp eq i64 %278, 9
  br i1 %279, label %311, label %280

280:                                              ; preds = %271, %274
  %281 = load i64, ptr %42, align 8
  %282 = and i64 %281, 65535
  %283 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %282
  %284 = load i32, ptr %283, align 4, !tbaa !28
  %285 = icmp ne i32 %284, 1
  %286 = and i64 %281, 134217728
  %287 = icmp eq i64 %286, 0
  %288 = or i1 %285, %287
  %289 = and i64 %268, 134217728
  %290 = icmp eq i64 %289, 0
  br i1 %288, label %299, label %291

291:                                              ; preds = %280
  br i1 %290, label %292, label %311

292:                                              ; preds = %291
  %293 = tail call ptr @copy_node_stat(ptr noundef nonnull %267) #21
  %294 = load i64, ptr %42, align 8
  %295 = and i64 %294, 134217728
  %296 = load i64, ptr %293, align 8
  %297 = and i64 %296, -134217729
  %298 = or disjoint i64 %297, %295
  store i64 %298, ptr %293, align 8
  br label %311

299:                                              ; preds = %280
  br i1 %290, label %311, label %300

300:                                              ; preds = %299
  %301 = getelementptr inbounds %struct.tree_common, ptr %267, i64 0, i32 2
  %302 = load ptr, ptr %301, align 8, !tbaa !5
  %303 = getelementptr inbounds %struct.tree_int_cst, ptr %267, i64 0, i32 1
  %304 = load i64, ptr %303, align 8, !tbaa !5
  %305 = getelementptr inbounds %struct.tree_int_cst, ptr %267, i64 0, i32 1, i32 1
  %306 = load i64, ptr %305, align 8, !tbaa !5
  %307 = tail call ptr @build_int_cst_wide(ptr noundef %302, i64 noundef %304, i64 noundef %306) #21
  br label %311

308:                                              ; preds = %102
  %309 = tail call ptr @build1_stat(i32 noundef 113, ptr noundef nonnull %30, ptr noundef nonnull %42) #21
  %310 = getelementptr inbounds %struct.tree_exp, ptr %309, i64 0, i32 1
  store i32 %0, ptr %310, align 8, !tbaa !5
  br label %349

311:                                              ; preds = %271, %292, %291, %300, %299, %274, %266, %49, %52
  %312 = phi ptr [ %42, %52 ], [ %42, %49 ], [ %267, %266 ], [ %267, %299 ], [ %307, %300 ], [ %293, %292 ], [ %267, %291 ], [ %267, %274 ], [ %267, %271 ]
  %313 = icmp eq ptr %312, %13
  br i1 %313, label %314, label %316

314:                                              ; preds = %311
  %315 = tail call ptr @non_lvalue_loc(i32 noundef %0, ptr noundef %13) #21
  br label %316

316:                                              ; preds = %314, %311
  %317 = phi ptr [ %315, %314 ], [ %312, %311 ]
  %318 = load i64, ptr %317, align 8
  %319 = trunc i64 %318 to i16
  switch i16 %319, label %339 [
    i16 24, label %334
    i16 26, label %334
    i16 23, label %320
  ]

320:                                              ; preds = %316
  %321 = load i64, ptr %13, align 8
  %322 = and i64 %321, 65535
  %323 = icmp eq i64 %322, 23
  br i1 %323, label %324, label %332

324:                                              ; preds = %320
  %325 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %326 = load ptr, ptr %325, align 8, !tbaa !5
  %327 = load i64, ptr %326, align 8
  %328 = trunc i64 %327 to i32
  %329 = and i32 %328, 65535
  %330 = add nsw i32 %329, -6
  %331 = icmp ult i32 %330, 3
  br i1 %331, label %339, label %332

332:                                              ; preds = %324, %320
  %333 = trunc i64 %321 to i16
  switch i16 %333, label %334 [
    i16 24, label %339
    i16 26, label %339
  ]

334:                                              ; preds = %316, %316, %332
  %335 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef nonnull %30, ptr noundef nonnull %317) #21
  %336 = icmp eq ptr %335, null
  br i1 %336, label %349, label %337

337:                                              ; preds = %334
  %338 = load i64, ptr %335, align 8
  br label %339

339:                                              ; preds = %337, %324, %316, %332, %332
  %340 = phi i64 [ %338, %337 ], [ %318, %332 ], [ %318, %332 ], [ %318, %316 ], [ %318, %324 ]
  %341 = phi ptr [ %335, %337 ], [ %317, %332 ], [ %317, %332 ], [ %317, %316 ], [ %317, %324 ]
  %342 = and i64 %340, 65535
  %343 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %342
  %344 = load i32, ptr %343, align 4, !tbaa !28
  %345 = add i32 %344, -4
  %346 = icmp ult i32 %345, 7
  br i1 %346, label %347, label %349

347:                                              ; preds = %339
  %348 = getelementptr inbounds %struct.tree_exp, ptr %341, i64 0, i32 1
  store i32 %0, ptr %348, align 8, !tbaa !5
  br label %349

349:                                              ; preds = %308, %12, %334, %339, %347, %92, %100, %37, %35, %33, %26
  %350 = phi ptr [ %27, %26 ], [ %34, %33 ], [ %36, %35 ], [ %309, %308 ], [ %38, %37 ], [ %94, %92 ], [ %101, %100 ], [ %341, %347 ], [ %341, %339 ], [ null, %334 ], [ %14, %12 ]
  ret ptr %350
}

; Function Attrs: optsize
declare ptr @objc_is_object_ptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_constructor_single(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @digest_init(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i32 noundef %6) unnamed_addr #0 {
  %8 = alloca i8, align 1
  %9 = alloca %struct.c_expr, align 8
  %10 = load i64, ptr %1, align 8
  %11 = trunc i64 %10 to i32
  %12 = and i32 %11, 65535
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #22
  store i8 1, ptr %8, align 1, !tbaa !5
  %13 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %14 = icmp eq ptr %13, %1
  %15 = icmp eq ptr %2, null
  %16 = or i1 %15, %14
  %17 = icmp eq ptr %13, %2
  %18 = or i1 %17, %16
  br i1 %18, label %410, label %19

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = icmp eq ptr %21, %13
  br i1 %22, label %410, label %23

23:                                               ; preds = %19, %31
  %24 = phi ptr [ %29, %31 ], [ %2, %19 ]
  %25 = load i64, ptr %24, align 8
  %26 = trunc i64 %25 to i16
  switch i16 %26, label %35 [
    i16 116, label %27
    i16 113, label %27
    i16 117, label %27
  ]

27:                                               ; preds = %23, %23, %23
  %28 = getelementptr inbounds %struct.tree_exp, ptr %24, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  %30 = icmp eq ptr %29, %13
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  %34 = icmp eq ptr %21, %33
  br i1 %34, label %23, label %35, !llvm.loop !87

35:                                               ; preds = %23, %27, %31
  %36 = and i64 %25, 65535
  %37 = icmp eq i64 %36, 190
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = getelementptr inbounds %struct.tree_exp, ptr %24, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  br label %43

43:                                               ; preds = %38, %35
  %44 = phi ptr [ %40, %38 ], [ null, %35 ]
  %45 = phi ptr [ %42, %38 ], [ %24, %35 ]
  %46 = trunc i32 %6 to i8
  %47 = call ptr @c_fully_fold(ptr noundef %45, i8 noundef zeroext %46, ptr noundef nonnull %8) #21
  %48 = call ptr @decl_constant_value_for_optimization(ptr noundef %47) #21
  %49 = icmp eq i32 %12, 15
  %50 = icmp ne ptr %48, null
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %52, label %169

52:                                               ; preds = %43
  %53 = load i64, ptr %48, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 28
  br i1 %55, label %56, label %223

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !5
  %59 = getelementptr inbounds %struct.tree_type, ptr %58, i64 0, i32 16
  %60 = load ptr, ptr %59, align 8, !tbaa !5
  %61 = load ptr, ptr @integer_types, align 16, !tbaa !8
  %62 = icmp eq ptr %60, %61
  %63 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 1), align 8
  %64 = icmp eq ptr %60, %63
  %65 = select i1 %62, i1 true, i1 %64
  br i1 %65, label %69, label %66

66:                                               ; preds = %56
  %67 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 2), align 16, !tbaa !8
  %68 = icmp eq ptr %60, %67
  br label %69

69:                                               ; preds = %66, %56
  %70 = phi i1 [ true, %56 ], [ %68, %66 ]
  %71 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 2), align 16, !tbaa !8
  %72 = call i32 @comptypes(ptr noundef %60, ptr noundef %71) #20
  %73 = icmp ne i32 %72, 0
  %74 = load ptr, ptr @c_global_trees, align 16, !tbaa !8
  %75 = call i32 @comptypes(ptr noundef %60, ptr noundef %74) #20
  %76 = icmp ne i32 %75, 0
  %77 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 1), align 8, !tbaa !8
  %78 = call i32 @comptypes(ptr noundef %60, ptr noundef %77) #20
  %79 = icmp ne i32 %78, 0
  %80 = select i1 %70, i1 true, i1 %73
  %81 = select i1 %80, i1 true, i1 %76
  %82 = select i1 %81, i1 true, i1 %79
  br i1 %82, label %83, label %161

83:                                               ; preds = %69
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #22
  %84 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !5
  %86 = getelementptr inbounds %struct.tree_common, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !5
  %88 = getelementptr inbounds %struct.tree_type, ptr %87, i64 0, i32 16
  %89 = load ptr, ptr %88, align 8, !tbaa !5
  store ptr %48, ptr %9, align 8, !tbaa !41
  %90 = icmp eq i8 %5, 0
  %91 = select i1 %90, i32 0, i32 28
  %92 = getelementptr inbounds %struct.c_expr, ptr %9, i64 0, i32 1
  store i32 %91, ptr %92, align 8, !tbaa !72
  %93 = getelementptr inbounds %struct.c_expr, ptr %9, i64 0, i32 2
  store ptr null, ptr %93, align 8, !tbaa !73
  call void @maybe_warn_string_init(ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.c_expr) align 8 %9) #20
  %94 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !5
  %96 = icmp eq ptr %95, null
  br i1 %96, label %102, label %97

97:                                               ; preds = %83
  %98 = getelementptr inbounds %struct.tree_type, ptr %95, i64 0, i32 14
  %99 = load ptr, ptr %98, align 8, !tbaa !5
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  call void @pedwarn_init(i32 noundef %0, i32 noundef 834, ptr noundef nonnull @.str.89) #20
  br label %102

102:                                              ; preds = %101, %97, %83
  %103 = load ptr, ptr %84, align 8, !tbaa !5
  %104 = getelementptr inbounds %struct.tree_type, ptr %103, i64 0, i32 16
  %105 = load ptr, ptr %104, align 8, !tbaa !5
  %106 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 16
  %107 = load ptr, ptr %106, align 8, !tbaa !5
  %108 = call i32 @comptypes(ptr noundef %105, ptr noundef %107) #20
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %159

110:                                              ; preds = %102
  %111 = load ptr, ptr @integer_types, align 16, !tbaa !8
  %112 = icmp eq ptr %89, %111
  br i1 %70, label %113, label %116

113:                                              ; preds = %110
  br i1 %112, label %124, label %114

114:                                              ; preds = %113
  call void @error_init(ptr noundef nonnull @.str.253) #20
  %115 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %159

116:                                              ; preds = %110
  br i1 %112, label %117, label %119

117:                                              ; preds = %116
  call void @error_init(ptr noundef nonnull @.str.254) #20
  %118 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %159

119:                                              ; preds = %116
  %120 = call i32 @comptypes(ptr noundef %60, ptr noundef %89) #20
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  call void @error_init(ptr noundef nonnull @.str.255) #20
  %123 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %159

124:                                              ; preds = %119, %113
  store ptr %1, ptr %84, align 8, !tbaa !5
  %125 = load ptr, ptr %94, align 8, !tbaa !5
  %126 = icmp eq ptr %125, null
  br i1 %126, label %159, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !5
  %130 = icmp eq ptr %129, null
  br i1 %130, label %159, label %131

131:                                              ; preds = %127
  %132 = load i64, ptr %129, align 8
  %133 = and i64 %132, 65535
  %134 = icmp eq i64 %133, 23
  br i1 %134, label %135, label %159

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.tree_string, ptr %48, i64 0, i32 1
  %137 = load i32, ptr %136, align 8, !tbaa !5
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !5
  %141 = getelementptr inbounds %struct.tree_type, ptr %60, i64 0, i32 6
  %142 = load i32, ptr %141, align 4
  %143 = lshr i32 %142, 3
  %144 = and i32 %143, 127
  %145 = zext nneg i32 %144 to i64
  %146 = sub nsw i64 %138, %145
  %147 = call i32 @compare_tree_int(ptr noundef %140, i64 noundef %146) #21
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %135
  call void @pedwarn_init(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.256) #20
  br label %159

150:                                              ; preds = %135
  %151 = load i32, ptr @warn_cxx_compat, align 4, !tbaa !28
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %150
  %154 = load ptr, ptr %139, align 8, !tbaa !5
  %155 = call i32 @compare_tree_int(ptr noundef %154, i64 noundef %138) #21
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %0, i32 noundef 49, ptr noundef nonnull @.str.257) #21
  br label %159

159:                                              ; preds = %124, %127, %131, %150, %153, %157, %149, %102, %122, %117, %114
  %160 = phi ptr [ %115, %114 ], [ %118, %117 ], [ %123, %122 ], [ %48, %102 ], [ %48, %149 ], [ %48, %157 ], [ %48, %153 ], [ %48, %150 ], [ %48, %131 ], [ %48, %127 ], [ %48, %124 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #22
  br label %410

161:                                              ; preds = %69
  %162 = load i64, ptr %60, align 8
  %163 = trunc i64 %162 to i32
  %164 = and i32 %163, 65535
  %165 = add nsw i32 %164, -6
  %166 = icmp ult i32 %165, 3
  br i1 %166, label %167, label %223

167:                                              ; preds = %161
  call void @error_init(ptr noundef nonnull @.str.258) #20
  %168 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %410

169:                                              ; preds = %43
  %170 = icmp eq i32 %12, 14
  br i1 %170, label %171, label %223

171:                                              ; preds = %169
  %172 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %173 = load ptr, ptr %172, align 8, !tbaa !5
  %174 = load i64, ptr %173, align 8
  %175 = and i64 %174, 65535
  %176 = icmp eq i64 %175, 14
  br i1 %176, label %177, label %223

177:                                              ; preds = %171
  %178 = call zeroext i8 @vector_types_convertible_p(ptr noundef nonnull %173, ptr noundef nonnull %1, i8 noundef zeroext 1) #21
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %223, label %180

180:                                              ; preds = %177
  %181 = load i64, ptr %48, align 8
  %182 = and i64 %181, 131072
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %223, label %184

184:                                              ; preds = %180
  %185 = and i64 %181, 65535
  %186 = icmp eq i64 %185, 27
  br i1 %186, label %187, label %197

187:                                              ; preds = %184
  %188 = load ptr, ptr %172, align 8, !tbaa !5
  %189 = getelementptr inbounds %struct.tree_type, ptr %188, i64 0, i32 16
  %190 = load ptr, ptr %189, align 8, !tbaa !5
  %191 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 16
  %192 = load ptr, ptr %191, align 8, !tbaa !5
  %193 = call i32 @comptypes(ptr noundef %190, ptr noundef %192) #20
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %410

195:                                              ; preds = %187
  %196 = load i64, ptr %48, align 8
  br label %197

197:                                              ; preds = %195, %184
  %198 = phi i64 [ %196, %195 ], [ %181, %184 ]
  %199 = and i64 %198, 65535
  %200 = icmp eq i64 %199, 51
  br i1 %200, label %201, label %223

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.tree_constructor, ptr %48, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !5
  %204 = call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %203) #20
  %205 = zext i32 %204 to i64
  %206 = icmp eq i32 %204, 0
  br i1 %206, label %221, label %210

207:                                              ; preds = %210
  %208 = add nuw nsw i64 %211, 1
  %209 = icmp eq i64 %208, %205
  br i1 %209, label %221, label %210, !llvm.loop !88

210:                                              ; preds = %201, %207
  %211 = phi i64 [ %208, %207 ], [ 0, %201 ]
  %212 = trunc i64 %211 to i32
  %213 = call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %203, i32 noundef %212) #20
  %214 = getelementptr inbounds %struct.constructor_elt_d, ptr %213, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !89
  %216 = load i64, ptr %215, align 8
  %217 = and i64 %216, 65535
  %218 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %217
  %219 = load i32, ptr %218, align 4, !tbaa !28
  %220 = icmp eq i32 %219, 1
  br i1 %220, label %207, label %223

221:                                              ; preds = %207, %201
  %222 = call ptr @build_vector_from_ctor(ptr noundef nonnull %1, ptr noundef %203) #21
  br label %410

223:                                              ; preds = %210, %52, %161, %197, %180, %177, %171, %169
  %224 = phi i1 [ true, %197 ], [ true, %180 ], [ true, %177 ], [ true, %171 ], [ false, %169 ], [ false, %161 ], [ false, %52 ], [ true, %210 ]
  %225 = load i32, ptr @warn_sequence_point, align 4, !tbaa !28
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %223
  call void @verify_sequence_points(ptr noundef %48) #21
  br label %228

228:                                              ; preds = %227, %223
  br i1 %50, label %229, label %350

229:                                              ; preds = %228
  %230 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %231 = load ptr, ptr %230, align 8, !tbaa !5
  %232 = icmp eq ptr %231, null
  br i1 %232, label %350, label %233

233:                                              ; preds = %229
  %234 = getelementptr inbounds %struct.tree_type, ptr %231, i64 0, i32 16
  %235 = load ptr, ptr %234, align 8, !tbaa !5
  %236 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 16
  %237 = load ptr, ptr %236, align 8, !tbaa !5
  %238 = call i32 @comptypes(ptr noundef %235, ptr noundef %237) #20
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %264

240:                                              ; preds = %233
  br i1 %49, label %241, label %245

241:                                              ; preds = %240
  %242 = load ptr, ptr %230, align 8, !tbaa !5
  %243 = call i32 @comptypes(ptr noundef %242, ptr noundef nonnull %1) #20
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %278

245:                                              ; preds = %241, %240
  br i1 %224, label %246, label %250

246:                                              ; preds = %245
  %247 = load ptr, ptr %230, align 8, !tbaa !5
  %248 = call i32 @comptypes(ptr noundef %247, ptr noundef nonnull %1) #20
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %250, label %264

250:                                              ; preds = %246, %245
  %251 = icmp eq i32 %12, 10
  br i1 %251, label %252, label %350

252:                                              ; preds = %250
  %253 = load ptr, ptr %230, align 8, !tbaa !5
  %254 = load i64, ptr %253, align 8
  %255 = and i64 %254, 65535
  %256 = icmp eq i64 %255, 15
  br i1 %256, label %257, label %350

257:                                              ; preds = %252
  %258 = getelementptr inbounds %struct.tree_common, ptr %253, i64 0, i32 2
  %259 = load ptr, ptr %258, align 8, !tbaa !5
  %260 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %261 = load ptr, ptr %260, align 8, !tbaa !5
  %262 = call i32 @comptypes(ptr noundef %259, ptr noundef %261) #20
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %350, label %266

264:                                              ; preds = %246, %233
  %265 = icmp eq i32 %12, 10
  br i1 %265, label %266, label %278

266:                                              ; preds = %257, %264
  %267 = load ptr, ptr %230, align 8, !tbaa !5
  %268 = load i64, ptr %267, align 8
  %269 = and i64 %268, 65535
  %270 = icmp eq i64 %269, 15
  br i1 %270, label %271, label %278

271:                                              ; preds = %266
  %272 = load i64, ptr %48, align 8
  %273 = trunc i64 %272 to i16
  switch i16 %273, label %276 [
    i16 28, label %274
    i16 119, label %274
  ]

274:                                              ; preds = %271, %271
  %275 = call fastcc ptr @array_to_pointer_conversion(i32 noundef %0, ptr noundef nonnull %48) #20
  br label %278

276:                                              ; preds = %271
  call void @error_init(ptr noundef nonnull @.str.239) #20
  %277 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %410

278:                                              ; preds = %241, %266, %274, %264
  %279 = phi ptr [ %275, %274 ], [ %48, %266 ], [ %48, %264 ], [ %48, %241 ]
  br i1 %224, label %280, label %282

280:                                              ; preds = %278
  %281 = call ptr @convert(ptr noundef nonnull %1, ptr noundef %279) #21
  br label %282

282:                                              ; preds = %280, %278
  %283 = phi ptr [ %281, %280 ], [ %279, %278 ]
  %284 = icmp ne i32 %6, 0
  br i1 %284, label %285, label %301

285:                                              ; preds = %282
  %286 = icmp ne i32 %12, 14
  %287 = load i32, ptr @flag_isoc99, align 4
  %288 = icmp ne i32 %287, 0
  %289 = select i1 %286, i1 %288, i1 false
  br i1 %289, label %301, label %290

290:                                              ; preds = %285
  %291 = load i64, ptr %283, align 8
  %292 = and i64 %291, 65535
  %293 = icmp eq i64 %292, 119
  br i1 %293, label %294, label %301

294:                                              ; preds = %290
  %295 = getelementptr inbounds %struct.tree_exp, ptr %283, i64 0, i32 3
  %296 = load ptr, ptr %295, align 8, !tbaa !5
  %297 = getelementptr inbounds %struct.tree_exp, ptr %296, i64 0, i32 3
  %298 = load ptr, ptr %297, align 8, !tbaa !5
  %299 = getelementptr inbounds %struct.tree_decl_common, ptr %298, i64 0, i32 5
  %300 = load ptr, ptr %299, align 8, !tbaa !5
  br label %301

301:                                              ; preds = %285, %294, %290, %282
  %302 = phi ptr [ %283, %285 ], [ %300, %294 ], [ %283, %290 ], [ %283, %282 ]
  br i1 %49, label %303, label %308

303:                                              ; preds = %301
  %304 = load i64, ptr %302, align 8
  %305 = trunc i64 %304 to i16
  switch i16 %305, label %306 [
    i16 28, label %308
    i16 51, label %308
  ]

306:                                              ; preds = %303
  call void @error_init(ptr noundef nonnull @.str.259) #20
  %307 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %410

308:                                              ; preds = %303, %303, %301
  %309 = load i32, ptr @pedantic, align 4
  %310 = icmp ne i32 %309, 0
  %311 = select i1 %284, i1 %310, i1 false
  br i1 %311, label %312, label %329

312:                                              ; preds = %308
  %313 = load i64, ptr %302, align 8
  %314 = and i64 %313, 65535
  %315 = icmp eq i64 %314, 52
  br i1 %315, label %316, label %330

316:                                              ; preds = %312
  %317 = getelementptr inbounds %struct.tree_common, ptr %302, i64 0, i32 2
  %318 = load ptr, ptr %317, align 8, !tbaa !5
  %319 = call fastcc ptr @valid_compound_expr_initializer(ptr noundef nonnull %302, ptr noundef %318) #20
  %320 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %321 = icmp eq ptr %319, %320
  br i1 %321, label %322, label %323

322:                                              ; preds = %316
  call void @error_init(ptr noundef nonnull @.str.260) #20
  br label %324

323:                                              ; preds = %316
  call void @pedwarn_init(i32 noundef %0, i32 noundef 834, ptr noundef nonnull @.str.260) #20
  br label %324

324:                                              ; preds = %323, %322
  %325 = load i32, ptr @flag_pedantic_errors, align 4, !tbaa !28
  %326 = icmp eq i32 %325, 0
  %327 = load ptr, ptr @global_trees, align 16
  %328 = select i1 %326, ptr %319, ptr %327
  br label %341

329:                                              ; preds = %308
  br i1 %284, label %330, label %341

330:                                              ; preds = %312, %329
  %331 = getelementptr inbounds %struct.tree_common, ptr %302, i64 0, i32 2
  %332 = load ptr, ptr %331, align 8, !tbaa !5
  %333 = call ptr @initializer_constant_valid_p(ptr noundef %302, ptr noundef %332) #21
  %334 = icmp eq ptr %333, null
  br i1 %334, label %335, label %337

335:                                              ; preds = %330
  call void @error_init(ptr noundef nonnull @.str.260) #20
  %336 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %341

337:                                              ; preds = %330
  %338 = load i8, ptr %8, align 1
  %339 = icmp eq i8 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %337
  call void @pedwarn_init(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.261) #20
  br label %341

341:                                              ; preds = %329, %324, %335, %340, %337
  %342 = phi ptr [ %302, %337 ], [ %302, %340 ], [ %336, %335 ], [ %328, %324 ], [ %302, %329 ]
  %343 = getelementptr inbounds %struct.tree_common, ptr %342, i64 0, i32 2
  %344 = load ptr, ptr %343, align 8, !tbaa !5
  %345 = load i64, ptr %344, align 8
  %346 = and i64 %345, 65535
  %347 = icmp eq i64 %346, 10
  br i1 %347, label %348, label %410

348:                                              ; preds = %341
  %349 = call fastcc ptr @convert_for_assignment(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %342, ptr noundef %3, i32 noundef 2, i8 noundef zeroext %4, ptr noundef null, ptr noundef null, i32 noundef 0) #20
  br label %410

350:                                              ; preds = %257, %252, %250, %229, %228
  %351 = and i32 %11, 65532
  %352 = icmp eq i32 %351, 8
  %353 = and i32 %11, 65534
  %354 = icmp eq i32 %353, 6
  %355 = or i1 %352, %354
  %356 = add nsw i32 %12, -13
  %357 = icmp ult i32 %356, 2
  %358 = select i1 %355, i1 true, i1 %357
  br i1 %358, label %359, label %398

359:                                              ; preds = %350
  %360 = load ptr, ptr %20, align 8, !tbaa !5
  %361 = load i64, ptr %360, align 8
  %362 = and i64 %361, 65535
  %363 = icmp eq i64 %362, 15
  br i1 %363, label %364, label %369

364:                                              ; preds = %359
  %365 = load i64, ptr %2, align 8
  %366 = trunc i64 %365 to i16
  switch i16 %366, label %369 [
    i16 28, label %367
    i16 119, label %367
  ]

367:                                              ; preds = %364, %364
  %368 = call fastcc ptr @array_to_pointer_conversion(i32 noundef %0, ptr noundef nonnull %2) #20
  br label %369

369:                                              ; preds = %364, %367, %359
  %370 = phi ptr [ %368, %367 ], [ %48, %359 ], [ %48, %364 ]
  %371 = icmp eq ptr %44, null
  br i1 %371, label %374, label %372

372:                                              ; preds = %369
  %373 = call ptr @build1_stat(i32 noundef 190, ptr noundef nonnull %44, ptr noundef %370) #21
  br label %374

374:                                              ; preds = %372, %369
  %375 = phi ptr [ %373, %372 ], [ %370, %369 ]
  %376 = call fastcc ptr @convert_for_assignment(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %375, ptr noundef %3, i32 noundef 2, i8 noundef zeroext %4, ptr noundef null, ptr noundef null, i32 noundef 0) #20
  %377 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %378 = icmp eq ptr %376, %377
  %379 = icmp eq i32 %6, 0
  %380 = or i1 %379, %378
  br i1 %380, label %410, label %381

381:                                              ; preds = %374
  %382 = load i64, ptr %376, align 8
  %383 = and i64 %382, 131072
  %384 = icmp eq i64 %383, 0
  br i1 %384, label %385, label %387

385:                                              ; preds = %381
  call void @error_init(ptr noundef nonnull @.str.260) #20
  %386 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %410

387:                                              ; preds = %381
  %388 = getelementptr inbounds %struct.tree_common, ptr %376, i64 0, i32 2
  %389 = load ptr, ptr %388, align 8, !tbaa !5
  %390 = call ptr @initializer_constant_valid_p(ptr noundef nonnull %376, ptr noundef %389) #21
  %391 = icmp eq ptr %390, null
  br i1 %391, label %392, label %394

392:                                              ; preds = %387
  call void @error_init(ptr noundef nonnull @.str.262) #20
  %393 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %410

394:                                              ; preds = %387
  %395 = load i8, ptr %8, align 1
  %396 = icmp eq i8 %395, 0
  br i1 %396, label %397, label %410

397:                                              ; preds = %394
  call void @pedwarn_init(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.261) #20
  br label %410

398:                                              ; preds = %350
  %399 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 2
  %400 = load ptr, ptr %399, align 8, !tbaa !5
  %401 = icmp eq ptr %400, null
  br i1 %401, label %408, label %402

402:                                              ; preds = %398
  %403 = load i64, ptr %400, align 8
  %404 = and i64 %403, 65535
  %405 = icmp eq i64 %404, 23
  br i1 %405, label %408, label %406

406:                                              ; preds = %402
  call void @error_init(ptr noundef nonnull @.str.263) #20
  %407 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %410

408:                                              ; preds = %402, %398
  call void @error_init(ptr noundef nonnull @.str.264) #20
  %409 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %410

410:                                              ; preds = %167, %159, %221, %7, %19, %374, %392, %397, %394, %385, %341, %348, %187, %408, %406, %306, %276
  %411 = phi ptr [ %307, %306 ], [ %277, %276 ], [ %407, %406 ], [ %409, %408 ], [ %222, %221 ], [ %48, %187 ], [ %349, %348 ], [ %342, %341 ], [ %376, %374 ], [ %376, %394 ], [ %376, %397 ], [ %393, %392 ], [ %386, %385 ], [ %13, %19 ], [ %13, %7 ], [ %168, %167 ], [ %160, %159 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #22
  ret ptr %411
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @handle_warn_cast_qual(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  br label %3

3:                                                ; preds = %18, %2
  %4 = phi ptr [ %0, %2 ], [ %10, %18 ]
  %5 = phi ptr [ %1, %2 ], [ %8, %18 ]
  %6 = phi i32 [ 0, %2 ], [ %43, %18 ]
  %7 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = load i64, ptr %8, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 20
  %14 = load i64, ptr %10, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 20
  %17 = select i1 %13, i1 %16, i1 false
  br i1 %17, label %47, label %18

18:                                               ; preds = %3
  %19 = trunc i64 %11 to i32
  %20 = lshr i32 %19, 20
  %21 = and i32 %20, 1
  %22 = lshr i32 %19, 18
  %23 = and i32 %22, 2
  %24 = or disjoint i32 %21, %23
  %25 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %26, 11
  %28 = and i32 %27, 4
  %29 = or disjoint i32 %24, %28
  %30 = trunc i64 %14 to i32
  %31 = lshr i32 %30, 20
  %32 = and i32 %31, 1
  %33 = lshr i32 %30, 18
  %34 = and i32 %33, 2
  %35 = or disjoint i32 %32, %34
  %36 = getelementptr inbounds %struct.tree_type, ptr %10, i64 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, 11
  %39 = and i32 %38, 4
  %40 = or disjoint i32 %35, %39
  %41 = xor i32 %40, -1
  %42 = and i32 %29, %41
  %43 = or i32 %42, %6
  %44 = icmp eq i64 %15, 10
  %45 = icmp eq i64 %12, 10
  %46 = and i1 %45, %44
  br i1 %46, label %3, label %75, !llvm.loop !91

47:                                               ; preds = %3
  %48 = trunc i64 %14 to i32
  %49 = lshr i32 %48, 20
  %50 = and i32 %49, 1
  %51 = lshr i32 %48, 18
  %52 = and i32 %51, 2
  %53 = or disjoint i32 %50, %52
  %54 = getelementptr inbounds %struct.tree_type, ptr %10, i64 0, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = lshr i32 %55, 11
  %57 = and i32 %56, 4
  %58 = or disjoint i32 %53, %57
  %59 = trunc i64 %11 to i32
  %60 = lshr i32 %59, 20
  %61 = and i32 %60, 1
  %62 = lshr i32 %59, 18
  %63 = and i32 %62, 2
  %64 = or disjoint i32 %61, %63
  %65 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %66 = load i32, ptr %65, align 4
  %67 = lshr i32 %66, 11
  %68 = and i32 %67, 4
  %69 = or disjoint i32 %64, %68
  %70 = xor i32 %69, -1
  %71 = and i32 %58, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %47
  %74 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 52, ptr noundef nonnull @.str.201) #21
  br label %75

75:                                               ; preds = %18, %73, %47
  %76 = phi i32 [ 1, %73 ], [ 0, %47 ], [ 0, %18 ]
  %77 = phi i32 [ %6, %73 ], [ %6, %47 ], [ %43, %18 ]
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 52, ptr noundef nonnull @.str.202) #21
  br label %81

81:                                               ; preds = %79, %75
  %82 = or i32 %76, %77
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %152

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.tree_type, ptr %10, i64 0, i32 16
  %86 = load ptr, ptr %85, align 8, !tbaa !5
  %87 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 16
  %88 = load ptr, ptr %87, align 8, !tbaa !5
  %89 = icmp eq ptr %86, %88
  br i1 %89, label %90, label %152

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !5
  %93 = load i64, ptr %92, align 8
  %94 = and i64 %93, 65535
  %95 = icmp eq i64 %94, 10
  br i1 %95, label %96, label %152

96:                                               ; preds = %90
  %97 = lshr i64 %93, 20
  %98 = trunc i64 %97 to i8
  %99 = and i8 %98, 1
  br label %100

100:                                              ; preds = %147, %96
  %101 = phi ptr [ %0, %96 ], [ %105, %147 ]
  %102 = phi ptr [ %1, %96 ], [ %107, %147 ]
  %103 = phi i8 [ %99, %96 ], [ %149, %147 ]
  %104 = getelementptr inbounds %struct.tree_common, ptr %101, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !5
  %106 = getelementptr inbounds %struct.tree_common, ptr %102, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !5
  %108 = load i64, ptr %105, align 8
  %109 = trunc i64 %108 to i32
  %110 = lshr i32 %109, 20
  %111 = and i32 %110, 1
  %112 = lshr i32 %109, 18
  %113 = and i32 %112, 2
  %114 = getelementptr inbounds %struct.tree_type, ptr %105, i64 0, i32 6
  %115 = load i32, ptr %114, align 4
  %116 = lshr i32 %115, 11
  %117 = and i32 %116, 4
  %118 = or disjoint i32 %113, %117
  %119 = lshr i64 %108, 48
  %120 = trunc i64 %119 to i32
  %121 = and i32 %120, 65280
  %122 = or disjoint i32 %118, %121
  %123 = or disjoint i32 %122, %111
  %124 = load i64, ptr %107, align 8
  %125 = trunc i64 %124 to i32
  %126 = lshr i32 %125, 20
  %127 = and i32 %126, 1
  %128 = lshr i32 %125, 18
  %129 = and i32 %128, 2
  %130 = or disjoint i32 %127, %129
  %131 = getelementptr inbounds %struct.tree_type, ptr %107, i64 0, i32 6
  %132 = load i32, ptr %131, align 4
  %133 = lshr i32 %132, 11
  %134 = and i32 %133, 4
  %135 = or disjoint i32 %130, %134
  %136 = lshr i64 %124, 48
  %137 = trunc i64 %136 to i32
  %138 = and i32 %137, 65280
  %139 = or disjoint i32 %135, %138
  %140 = xor i32 %139, -1
  %141 = and i32 %123, %140
  %142 = icmp eq i32 %141, 0
  %143 = icmp ne i8 %103, 0
  %144 = select i1 %142, i1 true, i1 %143
  br i1 %144, label %147, label %145

145:                                              ; preds = %100
  %146 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 52, ptr noundef nonnull @.str.203) #21
  br label %152

147:                                              ; preds = %100
  %148 = trunc i32 %111 to i8
  %149 = select i1 %143, i8 %148, i8 0
  %150 = and i64 %108, 65535
  %151 = icmp eq i64 %150, 10
  br i1 %151, label %100, label %152, !llvm.loop !92

152:                                              ; preds = %147, %145, %90, %84, %81
  ret void
}

; Function Attrs: optsize
declare ptr @c_addr_space_name(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_int_cst_wide(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @c_cast_expr(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #22
  store i8 1, ptr %5, align 1, !tbaa !5
  %6 = load i32, ptr @warn_strict_prototypes, align 4, !tbaa !28
  %7 = load i64, ptr %2, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 23
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i32 0, ptr @warn_strict_prototypes, align 4, !tbaa !28
  br label %11

11:                                               ; preds = %10, %3
  %12 = call ptr @groktypename(ptr noundef %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #21
  store i32 %6, ptr @warn_strict_prototypes, align 4, !tbaa !28
  %13 = call ptr @build_c_cast(i32 noundef %0, ptr noundef %12, ptr noundef nonnull %2) #20
  %14 = load ptr, ptr %4, align 8, !tbaa !8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !5
  %19 = call ptr @build2_stat(i32 noundef 189, ptr noundef %18, ptr noundef nonnull %14, ptr noundef %13) #21
  %20 = load i8, ptr %5, align 1, !tbaa !5
  %21 = icmp eq i8 %20, 0
  %22 = load i64, ptr %19, align 8
  %23 = select i1 %21, i64 17179869184, i64 0
  %24 = and i64 %22, -17179869185
  %25 = or disjoint i64 %24, %23
  store i64 %25, ptr %19, align 8
  %26 = getelementptr inbounds %struct.tree_exp, ptr %19, i64 0, i32 1
  store i32 %0, ptr %26, align 8, !tbaa !5
  br label %31

27:                                               ; preds = %11
  %28 = icmp eq ptr %13, null
  br i1 %28, label %44, label %29

29:                                               ; preds = %27
  %30 = load i64, ptr %13, align 8
  br label %31

31:                                               ; preds = %29, %16
  %32 = phi i64 [ %25, %16 ], [ %30, %29 ]
  %33 = phi ptr [ %19, %16 ], [ %13, %29 ]
  %34 = and i64 %32, 65535
  %35 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !28
  %37 = add i32 %36, -4
  %38 = icmp ult i32 %37, 7
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.tree_exp, ptr %33, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !5
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 %0, ptr %40, align 8, !tbaa !5
  br label %44

44:                                               ; preds = %43, %39, %31, %27
  %45 = phi ptr [ %33, %43 ], [ %33, %39 ], [ %33, %31 ], [ null, %27 ]
  %46 = load i32, ptr @warn_cxx_compat, align 4, !tbaa !28
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %1, align 8, !tbaa !93
  %50 = getelementptr inbounds %struct.c_declspecs, ptr %49, i64 0, i32 6
  %51 = load i8, ptr %50, align 8
  %52 = and i8 %51, 32
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %48
  %55 = call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %0, i32 noundef 49, ptr noundef nonnull @.str.77) #21
  br label %56

56:                                               ; preds = %54, %48, %44
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret ptr %45
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_modify_expr(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = tail call ptr @require_complete_type(ptr noundef %1) #20
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %7
  %15 = load i64, ptr %5, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %7
  %19 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %168

20:                                               ; preds = %14
  %21 = tail call fastcc i32 @lvalue_or_else(ptr noundef nonnull %10, i32 noundef 0) #20, !range !35
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %168

25:                                               ; preds = %20
  %26 = load i64, ptr %5, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 190
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  %32 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !5
  br label %34

34:                                               ; preds = %29, %25
  %35 = phi ptr [ %31, %29 ], [ null, %25 ]
  %36 = phi ptr [ %33, %29 ], [ %5, %25 ]
  %37 = load i64, ptr %10, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 189
  br i1 %39, label %40, label %59

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %43 = tail call ptr @build_modify_expr(i32 noundef %0, ptr noundef %42, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %36, ptr noundef %6) #20
  %44 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %168, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %48 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !5
  %50 = load ptr, ptr %47, align 8, !tbaa !5
  %51 = tail call ptr @build2_stat(i32 noundef 189, ptr noundef %49, ptr noundef %50, ptr noundef %43) #21
  %52 = load i64, ptr %10, align 8
  %53 = and i64 %52, 8589934592
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %46
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 4730, ptr noundef nonnull @.str.8) #21
  br label %56

56:                                               ; preds = %46, %55
  %57 = load i64, ptr %51, align 8
  %58 = or i64 %57, 17179869184
  store i64 %58, ptr %51, align 8
  tail call void @protected_set_expr_location(ptr noundef nonnull %51, i32 noundef %0) #21
  br label %168

59:                                               ; preds = %34
  %60 = icmp eq i32 %3, 116
  br i1 %60, label %65, label %61

61:                                               ; preds = %59
  %62 = tail call ptr @c_fully_fold(ptr noundef nonnull %10, i8 noundef zeroext 0, ptr noundef null) #21
  %63 = tail call ptr @stabilize_reference(ptr noundef %62) #21
  %64 = tail call ptr @build_binary_op(i32 noundef %0, i32 noundef %3, ptr noundef %63, ptr noundef %36, i32 noundef 1) #20
  br label %65

65:                                               ; preds = %61, %59
  %66 = phi ptr [ %64, %61 ], [ %36, %59 ]
  %67 = phi ptr [ null, %61 ], [ %6, %59 ]
  %68 = phi ptr [ %63, %61 ], [ %10, %59 ]
  %69 = load i64, ptr %9, align 8
  %70 = and i64 %69, 1048576
  %71 = icmp ne i64 %70, 0
  %72 = and i64 %69, 17179934718
  %73 = icmp eq i64 %72, 17179869200
  %74 = or i1 %71, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  tail call fastcc void @readonly_error(ptr noundef %68, i32 noundef 0) #20
  %76 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %168

77:                                               ; preds = %65
  %78 = load i64, ptr %68, align 8
  %79 = and i64 %78, 1048576
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  tail call fastcc void @readonly_warning(ptr noundef nonnull %68, i32 noundef 0) #20
  %82 = load i64, ptr %68, align 8
  br label %83

83:                                               ; preds = %77, %81
  %84 = phi i64 [ %78, %77 ], [ %82, %81 ]
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 41
  br i1 %86, label %87, label %97

87:                                               ; preds = %83
  %88 = load i64, ptr %9, align 8
  %89 = trunc i64 %88 to i32
  %90 = and i32 %89, 65534
  %91 = add nsw i32 %90, -6
  %92 = icmp ult i32 %91, 4
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = tail call ptr @get_unwidened(ptr noundef nonnull %68, ptr noundef null) #21
  %95 = getelementptr inbounds %struct.tree_common, ptr %94, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !5
  br label %97

97:                                               ; preds = %87, %93, %83
  %98 = phi ptr [ %96, %93 ], [ %9, %83 ], [ %9, %87 ]
  %99 = getelementptr inbounds %struct.tree_common, ptr %68, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !5
  %101 = icmp eq ptr %98, %100
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  %103 = tail call ptr @copy_node_stat(ptr noundef nonnull %68) #21
  %104 = getelementptr inbounds %struct.tree_common, ptr %103, i64 0, i32 2
  store ptr %98, ptr %104, align 8, !tbaa !5
  br label %105

105:                                              ; preds = %102, %97
  %106 = phi ptr [ %103, %102 ], [ %68, %97 ]
  %107 = load i32, ptr @warn_cxx_compat, align 4, !tbaa !28
  %108 = icmp eq i32 %107, 0
  %109 = icmp eq ptr %2, null
  %110 = or i1 %109, %108
  %111 = icmp eq ptr %98, %2
  %112 = or i1 %111, %110
  br i1 %112, label %134, label %113

113:                                              ; preds = %105
  %114 = load i64, ptr %2, align 8
  %115 = and i64 %114, 65535
  %116 = icmp eq i64 %115, 6
  br i1 %116, label %117, label %134

117:                                              ; preds = %113
  %118 = icmp eq ptr %67, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !5
  br label %122

122:                                              ; preds = %117, %119
  %123 = phi ptr [ %121, %119 ], [ %67, %117 ]
  %124 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %125 = icmp eq ptr %123, %124
  br i1 %125, label %134, label %126

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.tree_type, ptr %123, i64 0, i32 16
  %128 = load ptr, ptr %127, align 8, !tbaa !5
  %129 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 16
  %130 = load ptr, ptr %129, align 8, !tbaa !5
  %131 = icmp eq ptr %128, %130
  br i1 %131, label %134, label %132

132:                                              ; preds = %126
  %133 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %0, i32 noundef 49, ptr noundef nonnull @.str.78) #21
  br label %134

134:                                              ; preds = %122, %126, %132, %113, %105
  %135 = tail call fastcc zeroext i8 @null_pointer_constant_p(ptr noundef %66) #20, !range !24
  %136 = tail call ptr @c_fully_fold(ptr noundef %66, i8 noundef zeroext 0, ptr noundef null) #21
  %137 = icmp eq ptr %35, null
  br i1 %137, label %140, label %138

138:                                              ; preds = %134
  %139 = tail call ptr @build1_stat(i32 noundef 190, ptr noundef nonnull %35, ptr noundef %136) #21
  br label %140

140:                                              ; preds = %138, %134
  %141 = phi ptr [ %139, %138 ], [ %136, %134 ]
  %142 = tail call fastcc ptr @convert_for_assignment(i32 noundef %0, ptr noundef %98, ptr noundef %141, ptr noundef %67, i32 noundef 1, i8 noundef zeroext %135, ptr noundef null, ptr noundef null, i32 noundef 0) #20
  %143 = load i64, ptr %142, align 8
  %144 = and i64 %143, 65535
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %140
  %147 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %168

148:                                              ; preds = %140
  %149 = load i32, ptr @c_language, align 4, !tbaa !28
  %150 = and i32 %149, 1
  %151 = icmp ne i32 %150, 0
  %152 = load i32, ptr @flag_objc_gc, align 4
  %153 = icmp ne i32 %152, 0
  %154 = select i1 %151, i1 %153, i1 false
  br i1 %154, label %155, label %159

155:                                              ; preds = %148
  %156 = tail call ptr @objc_generate_write_barrier(ptr noundef nonnull %106, i32 noundef %3, ptr noundef nonnull %142) #21
  %157 = icmp eq ptr %156, null
  br i1 %157, label %159, label %158

158:                                              ; preds = %155
  tail call void @protected_set_expr_location(ptr noundef nonnull %156, i32 noundef %0) #21
  br label %168

159:                                              ; preds = %155, %148
  %160 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %98, ptr noundef nonnull %106, ptr noundef nonnull %142) #21
  %161 = load i64, ptr %160, align 8
  %162 = or i64 %161, 65536
  store i64 %162, ptr %160, align 8
  tail call void @protected_set_expr_location(ptr noundef nonnull %160, i32 noundef %0) #21
  %163 = getelementptr inbounds %struct.tree_common, ptr %160, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !5
  %165 = icmp eq ptr %9, %164
  br i1 %165, label %168, label %166

166:                                              ; preds = %159
  %167 = tail call fastcc ptr @convert_for_assignment(i32 noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %160, ptr noundef %67, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef null, i32 noundef 0) #20
  tail call void @protected_set_expr_location(ptr noundef %167, i32 noundef %0) #21
  br label %168

168:                                              ; preds = %159, %56, %40, %166, %158, %146, %75, %23, %18
  %169 = phi ptr [ %19, %18 ], [ %76, %75 ], [ %147, %146 ], [ %156, %158 ], [ %167, %166 ], [ %24, %23 ], [ %51, %56 ], [ %43, %40 ], [ %160, %159 ]
  ret ptr %169
}

; Function Attrs: optsize
declare ptr @get_unwidened(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @convert_for_assignment(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3, i32 noundef %4, i8 noundef zeroext %5, ptr noundef readonly %6, ptr noundef %7, i32 noundef %8) unnamed_addr #0 {
  %10 = alloca %struct.expanded_location, align 8
  %11 = load i64, ptr %1, align 8
  %12 = freeze i64 %11
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %4, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %9
  %17 = load i64, ptr %7, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 121
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 29
  %26 = select i1 %25, ptr %22, ptr %7
  br label %27

27:                                               ; preds = %20, %16
  %28 = phi ptr [ %7, %16 ], [ %26, %20 ]
  %29 = tail call ptr @objc_message_selector() #21
  %30 = icmp ne ptr %29, null
  %31 = icmp sgt i32 %8, 2
  %32 = and i1 %31, %30
  %33 = add nsw i32 %8, -2
  %34 = select i1 %32, ptr %29, ptr %28
  %35 = select i1 %32, i32 %33, i32 %8
  br label %36

36:                                               ; preds = %27, %9
  %37 = phi ptr [ %34, %27 ], [ null, %9 ]
  %38 = phi i32 [ %35, %27 ], [ %8, %9 ]
  %39 = load i64, ptr %2, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 190
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  br label %45

45:                                               ; preds = %42, %36
  %46 = phi ptr [ %44, %42 ], [ %2, %36 ]
  %47 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !5
  %49 = load i64, ptr %48, align 8
  %50 = freeze i64 %49
  %51 = trunc i64 %50 to i32
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %781

56:                                               ; preds = %45
  %57 = load i32, ptr @c_language, align 4, !tbaa !28
  %58 = and i32 %57, 1
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %56
  %61 = add i32 %4, -1
  %62 = icmp ult i32 %61, 3
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = zext nneg i32 %61 to i64
  %65 = getelementptr inbounds [3 x i32], ptr @switch.table.convert_for_assignment, i64 0, i64 %64
  %66 = load i32, ptr %65, align 4
  br label %67

67:                                               ; preds = %60, %63
  %68 = phi i32 [ %66, %63 ], [ %38, %60 ]
  %69 = tail call zeroext i8 @objc_compare_types(ptr noundef nonnull %1, ptr noundef nonnull %48, i32 noundef %68, ptr noundef %37) #21
  br label %70

70:                                               ; preds = %67, %56
  %71 = phi i8 [ %69, %67 ], [ 0, %56 ]
  %72 = load i32, ptr @warn_cxx_compat, align 4, !tbaa !28
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %114, label %74

74:                                               ; preds = %70
  %75 = icmp eq ptr %3, null
  %76 = select i1 %75, ptr %48, ptr %3
  %77 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %78 = icmp eq ptr %76, %77
  br i1 %78, label %114, label %79

79:                                               ; preds = %74
  %80 = load i64, ptr %1, align 8
  %81 = and i64 %80, 65535
  %82 = icmp eq i64 %81, 6
  br i1 %82, label %83, label %114

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.tree_type, ptr %76, i64 0, i32 16
  %85 = load ptr, ptr %84, align 8, !tbaa !5
  %86 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 16
  %87 = load ptr, ptr %86, align 8, !tbaa !5
  %88 = icmp eq ptr %85, %87
  br i1 %88, label %114, label %89

89:                                               ; preds = %83
  switch i32 %4, label %113 [
    i32 0, label %90
    i32 1, label %104
    i32 2, label %107
    i32 3, label %110
  ]

90:                                               ; preds = %89
  %91 = load i32, ptr @input_location, align 4, !tbaa !28
  %92 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %91, i32 noundef 49, ptr noundef nonnull @.str.204, i32 noundef %38, ptr noundef %37) #21
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %114, label %94

94:                                               ; preds = %90
  %95 = icmp eq ptr %6, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 1
  %98 = load i32, ptr %97, align 8, !tbaa !5
  %99 = icmp ult i32 %98, 2
  br i1 %99, label %100, label %102

100:                                              ; preds = %96, %94
  %101 = load i32, ptr @input_location, align 4, !tbaa !28
  br label %102

102:                                              ; preds = %96, %100
  %103 = phi i32 [ %101, %100 ], [ %98, %96 ]
  tail call void (i32, ptr, ...) @inform(i32 noundef %103, ptr noundef nonnull @.str.205, ptr noundef nonnull %1, ptr noundef nonnull %48) #21
  br label %114

104:                                              ; preds = %89
  %105 = load i32, ptr @input_location, align 4, !tbaa !28
  %106 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %105, i32 noundef 49, ptr noundef nonnull @.str.78) #21
  br label %114

107:                                              ; preds = %89
  %108 = load i32, ptr @input_location, align 4, !tbaa !28
  %109 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %108, i32 noundef 49, ptr noundef nonnull @.str.206) #21
  br label %114

110:                                              ; preds = %89
  %111 = load i32, ptr @input_location, align 4, !tbaa !28
  %112 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %111, i32 noundef 49, ptr noundef nonnull @.str.207) #21
  br label %114

113:                                              ; preds = %765, %739, %715, %684, %663, %613, %585, %529, %482, %469, %89
  unreachable

114:                                              ; preds = %74, %79, %83, %90, %102, %110, %107, %104, %70
  %115 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 16
  %116 = load ptr, ptr %115, align 8, !tbaa !5
  %117 = getelementptr inbounds %struct.tree_type, ptr %48, i64 0, i32 16
  %118 = load ptr, ptr %117, align 8, !tbaa !5
  %119 = icmp eq ptr %116, %118
  br i1 %119, label %781, label %120

120:                                              ; preds = %114
  %121 = icmp eq i32 %52, 19
  br i1 %121, label %122, label %124

122:                                              ; preds = %120
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.12) #21
  %123 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %781

124:                                              ; preds = %120
  %125 = tail call ptr @require_complete_type(ptr noundef nonnull %46) #20
  %126 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %127 = icmp eq ptr %125, %126
  br i1 %127, label %781, label %128

128:                                              ; preds = %124
  %129 = icmp eq i32 %14, 12
  br i1 %129, label %130, label %166

130:                                              ; preds = %128
  %131 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !5
  %133 = getelementptr inbounds %struct.tree_common, ptr %125, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !5
  %135 = tail call i32 @comptypes(ptr noundef %132, ptr noundef %134) #20
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %177

137:                                              ; preds = %130
  %138 = tail call zeroext i8 @lvalue_p(ptr noundef nonnull %125) #20, !range !24
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.208) #21
  %141 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %781

142:                                              ; preds = %137
  %143 = tail call zeroext i8 @c_mark_addressable(ptr noundef nonnull %125) #20, !range !24
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %142
  %146 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %781

147:                                              ; preds = %142
  %148 = load ptr, ptr %133, align 8, !tbaa !5
  %149 = tail call ptr @build_pointer_type(ptr noundef %148) #21
  %150 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %149, ptr noundef nonnull %125) #21
  %151 = getelementptr inbounds %struct.tree_exp, ptr %150, i64 0, i32 1
  store i32 %0, ptr %151, align 8, !tbaa !5
  %152 = getelementptr inbounds %struct.tree_common, ptr %150, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !5
  %154 = getelementptr inbounds %struct.tree_common, ptr %153, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !5
  %156 = load ptr, ptr %131, align 8, !tbaa !5
  %157 = icmp eq ptr %155, %156
  br i1 %157, label %162, label %158

158:                                              ; preds = %147
  %159 = tail call ptr @build_pointer_type(ptr noundef %156) #21
  %160 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef %159, ptr noundef nonnull %150) #21
  %161 = getelementptr inbounds %struct.tree_exp, ptr %160, i64 0, i32 1
  store i32 %0, ptr %161, align 8, !tbaa !5
  br label %162

162:                                              ; preds = %158, %147
  %163 = phi ptr [ %160, %158 ], [ %150, %147 ]
  %164 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef nonnull %1, ptr noundef nonnull %163) #21
  %165 = getelementptr inbounds %struct.tree_exp, ptr %164, i64 0, i32 1
  store i32 %0, ptr %165, align 8, !tbaa !5
  br label %781

166:                                              ; preds = %128
  %167 = icmp eq i32 %14, 14
  %168 = icmp eq i32 %52, 14
  %169 = and i1 %167, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.tree_common, ptr %125, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !5
  %173 = tail call zeroext i8 @vector_types_convertible_p(ptr noundef nonnull %1, ptr noundef %172, i8 noundef zeroext 1) #21
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %170
  %176 = tail call ptr @convert(ptr noundef nonnull %1, ptr noundef nonnull %125) #21
  br label %781

177:                                              ; preds = %130, %170, %166
  %178 = icmp eq i32 %14, 8
  %179 = and i32 %13, 65534
  %180 = icmp eq i32 %179, 8
  %181 = icmp eq i32 %14, 7
  br i1 %180, label %184, label %182

182:                                              ; preds = %177
  %183 = trunc i64 %12 to i16
  switch i16 %183, label %195 [
    i16 13, label %184
    i16 11, label %184
    i16 7, label %184
    i16 6, label %184
  ]

184:                                              ; preds = %182, %182, %182, %182, %177
  %185 = and i32 %51, 65534
  %186 = icmp eq i32 %185, 8
  br i1 %186, label %189, label %187

187:                                              ; preds = %184
  %188 = trunc i64 %50 to i16
  switch i16 %188, label %195 [
    i16 13, label %189
    i16 11, label %189
    i16 7, label %189
    i16 6, label %189
  ]

189:                                              ; preds = %187, %187, %187, %187, %184
  br i1 %181, label %192, label %190

190:                                              ; preds = %189
  %191 = tail call ptr @convert_and_check(ptr noundef nonnull %1, ptr noundef nonnull %2) #21
  br label %781

192:                                              ; preds = %189
  %193 = load i8, ptr @in_late_binary_op, align 1, !tbaa !5
  store i8 1, ptr @in_late_binary_op, align 1, !tbaa !5
  %194 = tail call ptr @convert_and_check(ptr noundef nonnull %1, ptr noundef nonnull %2) #21
  store i8 %193, ptr @in_late_binary_op, align 1, !tbaa !5
  br label %781

195:                                              ; preds = %187, %182
  %196 = icmp eq i32 %179, 16
  %197 = icmp eq i32 %14, %52
  %198 = and i1 %196, %197
  br i1 %198, label %199, label %204

199:                                              ; preds = %195
  %200 = tail call i32 @comptypes(ptr noundef nonnull %1, ptr noundef nonnull %48) #20
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %199
  %203 = tail call ptr @convert_and_check(ptr noundef nonnull %1, ptr noundef %125) #21
  br label %781

204:                                              ; preds = %195
  br i1 %196, label %205, label %414

205:                                              ; preds = %199, %204
  %206 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %207 = load i32, ptr %206, align 4
  %208 = and i32 %207, 4096
  %209 = icmp ne i32 %208, 0
  %210 = and i1 %15, %209
  br i1 %210, label %211, label %414

211:                                              ; preds = %205
  %212 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !5
  %214 = icmp eq ptr %213, null
  br i1 %214, label %766, label %215

215:                                              ; preds = %211
  %216 = icmp eq i32 %52, 10
  %217 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %218 = icmp eq i8 %5, 0
  br label %219

219:                                              ; preds = %215, %302
  %220 = phi ptr [ %213, %215 ], [ %305, %302 ]
  %221 = phi ptr [ null, %215 ], [ %303, %302 ]
  %222 = getelementptr inbounds %struct.tree_common, ptr %220, i64 0, i32 2
  %223 = load ptr, ptr %222, align 8, !tbaa !5
  %224 = getelementptr inbounds %struct.tree_type, ptr %223, i64 0, i32 16
  %225 = load ptr, ptr %224, align 8, !tbaa !5
  %226 = load ptr, ptr %117, align 8, !tbaa !5
  %227 = tail call i32 @comptypes(ptr noundef %225, ptr noundef %226) #20
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %397

229:                                              ; preds = %219
  %230 = load i64, ptr %223, align 8
  %231 = and i64 %230, 65535
  %232 = icmp eq i64 %231, 10
  br i1 %232, label %233, label %302

233:                                              ; preds = %229
  br i1 %216, label %234, label %299

234:                                              ; preds = %233
  %235 = getelementptr inbounds %struct.tree_common, ptr %223, i64 0, i32 2
  %236 = load ptr, ptr %235, align 8, !tbaa !5
  %237 = load ptr, ptr %217, align 8, !tbaa !5
  %238 = load i64, ptr %236, align 8
  %239 = and i64 %238, 65535
  %240 = icmp eq i64 %239, 19
  %241 = load i64, ptr %237, align 8
  %242 = and i64 %241, 65535
  %243 = icmp eq i64 %242, 19
  %244 = select i1 %240, i1 true, i1 %243
  br i1 %244, label %251, label %245

245:                                              ; preds = %234
  %246 = tail call fastcc i32 @comp_target_types(i32 noundef %0, ptr noundef nonnull %223, ptr noundef nonnull %48) #20
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %299, label %248

248:                                              ; preds = %245
  %249 = load i64, ptr %236, align 8
  %250 = load i64, ptr %237, align 8
  br label %251

251:                                              ; preds = %248, %234
  %252 = phi i64 [ %250, %248 ], [ %241, %234 ]
  %253 = phi i64 [ %249, %248 ], [ %238, %234 ]
  %254 = trunc i64 %253 to i32
  %255 = lshr i32 %254, 20
  %256 = and i32 %255, 1
  %257 = lshr i32 %254, 18
  %258 = and i32 %257, 2
  %259 = or disjoint i32 %256, %258
  %260 = getelementptr inbounds %struct.tree_type, ptr %236, i64 0, i32 6
  %261 = load i32, ptr %260, align 4
  %262 = lshr i32 %261, 11
  %263 = and i32 %262, 4
  %264 = or disjoint i32 %259, %263
  %265 = lshr i64 %253, 48
  %266 = trunc i64 %265 to i32
  %267 = and i32 %266, 65280
  %268 = or disjoint i32 %264, %267
  %269 = trunc i64 %252 to i32
  %270 = lshr i32 %269, 20
  %271 = and i32 %270, 1
  %272 = lshr i32 %269, 18
  %273 = and i32 %272, 2
  %274 = or disjoint i32 %271, %273
  %275 = getelementptr inbounds %struct.tree_type, ptr %237, i64 0, i32 6
  %276 = load i32, ptr %275, align 4
  %277 = lshr i32 %276, 11
  %278 = and i32 %277, 4
  %279 = or disjoint i32 %274, %278
  %280 = lshr i64 %252, 48
  %281 = trunc i64 %280 to i32
  %282 = and i32 %281, 65280
  %283 = or disjoint i32 %279, %282
  %284 = icmp eq i32 %268, %283
  br i1 %284, label %397, label %285

285:                                              ; preds = %251
  %286 = and i64 %252, 65535
  %287 = icmp eq i64 %286, 20
  %288 = and i64 %253, 65535
  %289 = icmp eq i64 %288, 20
  %290 = select i1 %287, i1 %289, i1 false
  %291 = or i32 %283, %268
  br i1 %290, label %292, label %294

292:                                              ; preds = %285
  %293 = icmp eq i32 %291, %283
  br i1 %293, label %397, label %296

294:                                              ; preds = %285
  %295 = icmp eq i32 %291, %268
  br i1 %295, label %397, label %296

296:                                              ; preds = %294, %292
  %297 = icmp eq ptr %221, null
  %298 = select i1 %297, ptr %220, ptr %221
  br label %299

299:                                              ; preds = %233, %296, %245
  %300 = phi ptr [ %221, %233 ], [ %221, %245 ], [ %298, %296 ]
  %301 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16
  br i1 %218, label %302, label %397

302:                                              ; preds = %229, %299
  %303 = phi ptr [ %300, %299 ], [ %221, %229 ]
  %304 = getelementptr inbounds %struct.tree_common, ptr %220, i64 0, i32 1
  %305 = load ptr, ptr %304, align 8, !tbaa !5
  %306 = icmp eq ptr %305, null
  br i1 %306, label %307, label %219, !llvm.loop !95

307:                                              ; preds = %302
  %308 = icmp eq ptr %303, null
  br i1 %308, label %765, label %309

309:                                              ; preds = %307
  %310 = getelementptr inbounds %struct.tree_common, ptr %303, i64 0, i32 2
  %311 = load ptr, ptr %310, align 8, !tbaa !5
  %312 = getelementptr inbounds %struct.tree_common, ptr %311, i64 0, i32 2
  %313 = load ptr, ptr %312, align 8, !tbaa !5
  %314 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %315 = load ptr, ptr %314, align 8, !tbaa !5
  %316 = load i64, ptr %315, align 8
  %317 = and i64 %316, 65535
  %318 = icmp eq i64 %317, 20
  %319 = load i64, ptr %313, align 8
  %320 = and i64 %319, 65535
  %321 = icmp eq i64 %320, 20
  %322 = select i1 %318, i1 %321, i1 false
  br i1 %322, label %323, label %359

323:                                              ; preds = %309
  %324 = trunc i64 %319 to i32
  %325 = lshr i32 %324, 20
  %326 = and i32 %325, 1
  %327 = lshr i32 %324, 18
  %328 = and i32 %327, 2
  %329 = or disjoint i32 %326, %328
  %330 = getelementptr inbounds %struct.tree_type, ptr %313, i64 0, i32 6
  %331 = load i32, ptr %330, align 4
  %332 = lshr i32 %331, 11
  %333 = and i32 %332, 4
  %334 = or disjoint i32 %329, %333
  %335 = trunc i64 %316 to i32
  %336 = lshr i32 %335, 20
  %337 = and i32 %336, 1
  %338 = lshr i32 %335, 18
  %339 = and i32 %338, 2
  %340 = or disjoint i32 %337, %339
  %341 = getelementptr inbounds %struct.tree_type, ptr %315, i64 0, i32 6
  %342 = load i32, ptr %341, align 4
  %343 = lshr i32 %342, 11
  %344 = and i32 %343, 4
  %345 = or disjoint i32 %340, %344
  %346 = xor i32 %345, -1
  %347 = and i32 %334, %346
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %397, label %349

349:                                              ; preds = %323
  %350 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.209, i32 noundef %38, ptr noundef %37) #21
  %351 = icmp eq i8 %350, 0
  br i1 %351, label %397, label %352

352:                                              ; preds = %349
  %353 = icmp eq ptr %6, null
  br i1 %353, label %358, label %354

354:                                              ; preds = %352
  %355 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 1
  %356 = load i32, ptr %355, align 8, !tbaa !5
  %357 = icmp ult i32 %356, 2
  br i1 %357, label %358, label %395

358:                                              ; preds = %354, %352
  br label %395

359:                                              ; preds = %309
  %360 = trunc i64 %316 to i32
  %361 = lshr i32 %360, 20
  %362 = and i32 %361, 1
  %363 = lshr i32 %360, 18
  %364 = and i32 %363, 2
  %365 = or disjoint i32 %362, %364
  %366 = getelementptr inbounds %struct.tree_type, ptr %315, i64 0, i32 6
  %367 = load i32, ptr %366, align 4
  %368 = lshr i32 %367, 11
  %369 = and i32 %368, 4
  %370 = or disjoint i32 %365, %369
  %371 = trunc i64 %319 to i32
  %372 = lshr i32 %371, 20
  %373 = and i32 %372, 1
  %374 = lshr i32 %371, 18
  %375 = and i32 %374, 2
  %376 = or disjoint i32 %373, %375
  %377 = getelementptr inbounds %struct.tree_type, ptr %313, i64 0, i32 6
  %378 = load i32, ptr %377, align 4
  %379 = lshr i32 %378, 11
  %380 = and i32 %379, 4
  %381 = or disjoint i32 %376, %380
  %382 = xor i32 %381, -1
  %383 = and i32 %370, %382
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %397, label %385

385:                                              ; preds = %359
  %386 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.213, i32 noundef %38, ptr noundef %37) #21
  %387 = icmp eq i8 %386, 0
  br i1 %387, label %397, label %388

388:                                              ; preds = %385
  %389 = icmp eq ptr %6, null
  br i1 %389, label %394, label %390

390:                                              ; preds = %388
  %391 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 1
  %392 = load i32, ptr %391, align 8, !tbaa !5
  %393 = icmp ult i32 %392, 2
  br i1 %393, label %394, label %395

394:                                              ; preds = %390, %388
  br label %395

395:                                              ; preds = %394, %390, %358, %354
  %396 = phi i32 [ %0, %358 ], [ %356, %354 ], [ %0, %394 ], [ %392, %390 ]
  tail call void (i32, ptr, ...) @inform(i32 noundef %396, ptr noundef nonnull @.str.205, ptr noundef nonnull %1, ptr noundef nonnull %48) #21
  br label %397

397:                                              ; preds = %299, %219, %294, %292, %251, %395, %349, %323, %385, %359
  %398 = phi ptr [ %125, %359 ], [ %125, %385 ], [ %125, %323 ], [ %125, %349 ], [ %125, %395 ], [ %125, %251 ], [ %125, %292 ], [ %125, %294 ], [ %125, %219 ], [ %301, %299 ]
  %399 = phi ptr [ %303, %359 ], [ %303, %385 ], [ %303, %323 ], [ %303, %349 ], [ %303, %395 ], [ %220, %251 ], [ %220, %292 ], [ %220, %294 ], [ %220, %219 ], [ %220, %299 ]
  %400 = icmp eq ptr %6, null
  br i1 %400, label %407, label %401

401:                                              ; preds = %397
  %402 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 1
  %403 = load i32, ptr %402, align 8, !tbaa !5
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %10, i32 noundef %403) #21
  %404 = getelementptr inbounds %struct.expanded_location, ptr %10, i64 0, i32 3
  %405 = load i8, ptr %404, align 8, !tbaa !96
  %406 = icmp eq i8 %405, 0
  br i1 %406, label %407, label %409

407:                                              ; preds = %401, %397
  %408 = call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 834, ptr noundef nonnull @.str.217) #21
  br label %409

409:                                              ; preds = %401, %407
  %410 = getelementptr inbounds %struct.tree_common, ptr %399, i64 0, i32 2
  %411 = load ptr, ptr %410, align 8, !tbaa !5
  %412 = call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %411, ptr noundef %398) #21
  %413 = call ptr @build_constructor_single(ptr noundef nonnull %1, ptr noundef nonnull %399, ptr noundef %412) #21
  br label %781

414:                                              ; preds = %204, %205
  %415 = icmp eq i32 %14, 10
  %416 = trunc i64 %12 to i16
  switch i16 %416, label %705 [
    i16 12, label %417
    i16 10, label %417
  ]

417:                                              ; preds = %414, %414
  br i1 %197, label %418, label %705

418:                                              ; preds = %417
  %419 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %420 = load ptr, ptr %419, align 8, !tbaa !5
  %421 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %422 = load ptr, ptr %421, align 8, !tbaa !5
  %423 = load i64, ptr %420, align 8
  %424 = and i64 %423, 65535
  %425 = icmp eq i64 %424, 15
  br i1 %425, label %429, label %426

426:                                              ; preds = %418
  %427 = getelementptr inbounds %struct.tree_type, ptr %420, i64 0, i32 16
  %428 = load ptr, ptr %427, align 8, !tbaa !5
  br label %429

429:                                              ; preds = %426, %418
  %430 = phi ptr [ %428, %426 ], [ %420, %418 ]
  %431 = load i64, ptr %422, align 8
  %432 = and i64 %431, 65535
  %433 = icmp eq i64 %432, 15
  br i1 %433, label %437, label %434

434:                                              ; preds = %429
  %435 = getelementptr inbounds %struct.tree_type, ptr %422, i64 0, i32 16
  %436 = load ptr, ptr %435, align 8, !tbaa !5
  br label %437

437:                                              ; preds = %434, %429
  %438 = phi ptr [ %436, %434 ], [ %422, %429 ]
  %439 = tail call zeroext i8 @vector_targets_convertible_p(ptr noundef nonnull %420, ptr noundef nonnull %422) #21
  %440 = load i64, ptr %422, align 8
  %441 = and i64 %440, 65535
  %442 = icmp ne i64 %441, 19
  %443 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16
  %444 = icmp eq ptr %125, %443
  %445 = select i1 %442, i1 true, i1 %444
  %446 = load i64, ptr %420, align 8
  %447 = and i64 %446, 65535
  %448 = icmp eq i64 %447, 19
  %449 = select i1 %445, i1 true, i1 %448
  br i1 %449, label %454, label %450

450:                                              ; preds = %437
  %451 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %0, i32 noundef 49, ptr noundef nonnull @.str.218, ptr noundef nonnull %48, ptr noundef nonnull %1) #21
  %452 = load i64, ptr %420, align 8
  %453 = load i64, ptr %422, align 8
  br label %454

454:                                              ; preds = %450, %437
  %455 = phi i64 [ %453, %450 ], [ %440, %437 ]
  %456 = phi i64 [ %452, %450 ], [ %446, %437 ]
  %457 = lshr i64 %456, 56
  %458 = lshr i64 %455, 56
  %459 = tail call fastcc zeroext i8 @null_pointer_constant_p(ptr noundef %125) #20, !range !24
  %460 = icmp ne i8 %459, 0
  %461 = icmp eq i64 %458, %457
  %462 = select i1 %460, i1 true, i1 %461
  br i1 %462, label %476, label %463

463:                                              ; preds = %454
  %464 = trunc i64 %458 to i8
  %465 = trunc i64 %457 to i8
  %466 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 5), align 8, !tbaa !85
  %467 = tail call zeroext i8 %466(i8 noundef zeroext %464, i8 noundef zeroext %465) #21
  %468 = icmp eq i8 %467, 0
  br i1 %468, label %469, label %476

469:                                              ; preds = %463
  switch i32 %4, label %113 [
    i32 0, label %470
    i32 1, label %471
    i32 2, label %472
    i32 3, label %473
  ]

470:                                              ; preds = %469
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.219, i32 noundef %38, ptr noundef %37) #21
  br label %474

471:                                              ; preds = %469
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.220) #21
  br label %474

472:                                              ; preds = %469
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.221) #21
  br label %474

473:                                              ; preds = %469
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.222) #21
  br label %474

474:                                              ; preds = %473, %472, %471, %470
  %475 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %781

476:                                              ; preds = %463, %454
  %477 = load i32, ptr @warn_missing_format_attribute, align 4, !tbaa !28
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %491, label %479

479:                                              ; preds = %476
  %480 = tail call zeroext i8 @check_missing_format_attribute(ptr noundef nonnull %1, ptr noundef nonnull %48) #21
  %481 = icmp eq i8 %480, 0
  br i1 %481, label %491, label %482

482:                                              ; preds = %479
  switch i32 %4, label %113 [
    i32 0, label %483
    i32 1, label %485
    i32 2, label %487
    i32 3, label %489
  ]

483:                                              ; preds = %482
  %484 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %0, i32 noundef 131, ptr noundef nonnull @.str.223, i32 noundef %38, ptr noundef %37) #21
  br label %491

485:                                              ; preds = %482
  %486 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %0, i32 noundef 131, ptr noundef nonnull @.str.224) #21
  br label %491

487:                                              ; preds = %482
  %488 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %0, i32 noundef 131, ptr noundef nonnull @.str.225) #21
  br label %491

489:                                              ; preds = %482
  %490 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %0, i32 noundef 131, ptr noundef nonnull @.str.226) #21
  br label %491

491:                                              ; preds = %483, %485, %487, %489, %479, %476
  %492 = load i64, ptr %420, align 8
  %493 = and i64 %492, 65535
  %494 = icmp eq i64 %493, 19
  br i1 %494, label %508, label %495

495:                                              ; preds = %491
  %496 = load i64, ptr %422, align 8
  %497 = and i64 %496, 65535
  %498 = icmp eq i64 %497, 19
  br i1 %498, label %508, label %499

499:                                              ; preds = %495
  %500 = tail call fastcc i32 @comp_target_types(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %48) #20
  %501 = icmp ne i32 %500, 0
  %502 = icmp ne i8 %439, 0
  %503 = select i1 %501, i1 true, i1 %502
  br i1 %503, label %508, label %504

504:                                              ; preds = %499
  %505 = tail call ptr @c_common_unsigned_type(ptr noundef %430) #21
  %506 = tail call ptr @c_common_unsigned_type(ptr noundef %438) #21
  %507 = icmp eq ptr %505, %506
  br i1 %507, label %508, label %682

508:                                              ; preds = %504, %499, %495, %491
  %509 = phi i32 [ 0, %491 ], [ 0, %495 ], [ %500, %499 ], [ 0, %504 ]
  %510 = load i32, ptr @pedantic, align 4, !tbaa !28
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %515

512:                                              ; preds = %508
  %513 = load i64, ptr %422, align 8
  %514 = load i64, ptr %420, align 8
  br label %548

515:                                              ; preds = %508
  %516 = load i64, ptr %420, align 8
  %517 = and i64 %516, 65535
  %518 = icmp eq i64 %517, 19
  %519 = load i64, ptr %422, align 8
  %520 = and i64 %519, 65535
  br i1 %518, label %521, label %523

521:                                              ; preds = %515
  %522 = icmp eq i64 %520, 20
  br i1 %522, label %529, label %548

523:                                              ; preds = %515
  %524 = icmp eq i64 %520, 19
  %525 = icmp eq i8 %5, 0
  %526 = and i1 %525, %524
  %527 = icmp eq i64 %517, 20
  %528 = and i1 %527, %526
  br i1 %528, label %529, label %548

529:                                              ; preds = %523, %521
  switch i32 %4, label %113 [
    i32 0, label %530
    i32 1, label %542
    i32 2, label %544
    i32 3, label %546
  ]

530:                                              ; preds = %529
  %531 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 834, ptr noundef nonnull @.str.227, i32 noundef %38, ptr noundef %37) #21
  %532 = icmp eq i8 %531, 0
  br i1 %532, label %703, label %533

533:                                              ; preds = %530
  %534 = icmp eq ptr %6, null
  br i1 %534, label %539, label %535

535:                                              ; preds = %533
  %536 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 1
  %537 = load i32, ptr %536, align 8, !tbaa !5
  %538 = icmp ult i32 %537, 2
  br i1 %538, label %539, label %540

539:                                              ; preds = %535, %533
  br label %540

540:                                              ; preds = %535, %539
  %541 = phi i32 [ %0, %539 ], [ %537, %535 ]
  tail call void (i32, ptr, ...) @inform(i32 noundef %541, ptr noundef nonnull @.str.205, ptr noundef nonnull %1, ptr noundef nonnull %48) #21
  br label %703

542:                                              ; preds = %529
  %543 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 834, ptr noundef nonnull @.str.228) #21
  br label %703

544:                                              ; preds = %529
  %545 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 834, ptr noundef nonnull @.str.229) #21
  br label %703

546:                                              ; preds = %529
  %547 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 834, ptr noundef nonnull @.str.230) #21
  br label %703

548:                                              ; preds = %512, %521, %523
  %549 = phi i64 [ %514, %512 ], [ %516, %521 ], [ %516, %523 ]
  %550 = phi i64 [ %513, %512 ], [ %519, %521 ], [ %519, %523 ]
  %551 = trunc i64 %550 to i32
  %552 = and i32 %551, 65535
  %553 = icmp eq i32 %552, 20
  br i1 %553, label %632, label %554

554:                                              ; preds = %548
  %555 = trunc i64 %549 to i32
  %556 = and i32 %555, 65535
  %557 = icmp eq i32 %556, 20
  br i1 %557, label %632, label %558

558:                                              ; preds = %554
  %559 = lshr i32 %551, 20
  %560 = and i32 %559, 1
  %561 = lshr i32 %551, 18
  %562 = and i32 %561, 2
  %563 = or disjoint i32 %560, %562
  %564 = getelementptr inbounds %struct.tree_type, ptr %422, i64 0, i32 6
  %565 = load i32, ptr %564, align 4
  %566 = lshr i32 %565, 11
  %567 = and i32 %566, 4
  %568 = or disjoint i32 %563, %567
  %569 = lshr i32 %555, 20
  %570 = and i32 %569, 1
  %571 = lshr i32 %555, 18
  %572 = and i32 %571, 2
  %573 = or disjoint i32 %570, %572
  %574 = getelementptr inbounds %struct.tree_type, ptr %420, i64 0, i32 6
  %575 = load i32, ptr %574, align 4
  %576 = lshr i32 %575, 11
  %577 = and i32 %576, 4
  %578 = or disjoint i32 %573, %577
  %579 = xor i32 %578, -1
  %580 = and i32 %568, %579
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %604, label %582

582:                                              ; preds = %558
  %583 = tail call zeroext i8 @objc_type_quals_match(ptr noundef nonnull %420, ptr noundef nonnull %422) #21
  %584 = icmp eq i8 %583, 0
  br i1 %584, label %585, label %703

585:                                              ; preds = %582
  switch i32 %4, label %113 [
    i32 0, label %586
    i32 1, label %598
    i32 2, label %600
    i32 3, label %602
  ]

586:                                              ; preds = %585
  %587 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.213, i32 noundef %38, ptr noundef %37) #21
  %588 = icmp eq i8 %587, 0
  br i1 %588, label %703, label %589

589:                                              ; preds = %586
  %590 = icmp eq ptr %6, null
  br i1 %590, label %595, label %591

591:                                              ; preds = %589
  %592 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 1
  %593 = load i32, ptr %592, align 8, !tbaa !5
  %594 = icmp ult i32 %593, 2
  br i1 %594, label %595, label %596

595:                                              ; preds = %591, %589
  br label %596

596:                                              ; preds = %591, %595
  %597 = phi i32 [ %0, %595 ], [ %593, %591 ]
  tail call void (i32, ptr, ...) @inform(i32 noundef %597, ptr noundef nonnull @.str.205, ptr noundef nonnull %1, ptr noundef nonnull %48) #21
  br label %703

598:                                              ; preds = %585
  %599 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.214) #21
  br label %703

600:                                              ; preds = %585
  %601 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.215) #21
  br label %703

602:                                              ; preds = %585
  %603 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.216) #21
  br label %703

604:                                              ; preds = %558
  %605 = icmp eq i32 %556, 19
  br i1 %605, label %703, label %606

606:                                              ; preds = %604
  %607 = icmp ne i32 %552, 19
  %608 = icmp eq i32 %509, 0
  %609 = and i1 %608, %607
  %610 = load i32, ptr @warn_pointer_sign, align 4
  %611 = icmp ne i32 %610, 0
  %612 = select i1 %609, i1 %611, i1 false
  br i1 %612, label %613, label %703

613:                                              ; preds = %606
  switch i32 %4, label %113 [
    i32 0, label %614
    i32 1, label %626
    i32 2, label %628
    i32 3, label %630
  ]

614:                                              ; preds = %613
  %615 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 163, ptr noundef nonnull @.str.231, i32 noundef %38, ptr noundef %37) #21
  %616 = icmp eq i8 %615, 0
  br i1 %616, label %703, label %617

617:                                              ; preds = %614
  %618 = icmp eq ptr %6, null
  br i1 %618, label %623, label %619

619:                                              ; preds = %617
  %620 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 1
  %621 = load i32, ptr %620, align 8, !tbaa !5
  %622 = icmp ult i32 %621, 2
  br i1 %622, label %623, label %624

623:                                              ; preds = %619, %617
  br label %624

624:                                              ; preds = %619, %623
  %625 = phi i32 [ %0, %623 ], [ %621, %619 ]
  tail call void (i32, ptr, ...) @inform(i32 noundef %625, ptr noundef nonnull @.str.205, ptr noundef nonnull %1, ptr noundef nonnull %48) #21
  br label %703

626:                                              ; preds = %613
  %627 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 163, ptr noundef nonnull @.str.232) #21
  br label %703

628:                                              ; preds = %613
  %629 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 163, ptr noundef nonnull @.str.233) #21
  br label %703

630:                                              ; preds = %613
  %631 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 163, ptr noundef nonnull @.str.234) #21
  br label %703

632:                                              ; preds = %554, %548
  %633 = and i64 %549, 65535
  %634 = icmp eq i64 %633, 20
  %635 = and i64 %550, 65535
  %636 = icmp eq i64 %635, 20
  %637 = and i1 %636, %634
  br i1 %637, label %638, label %703

638:                                              ; preds = %632
  %639 = trunc i64 %549 to i32
  %640 = lshr i32 %639, 20
  %641 = and i32 %640, 1
  %642 = lshr i32 %639, 18
  %643 = and i32 %642, 2
  %644 = or disjoint i32 %641, %643
  %645 = getelementptr inbounds %struct.tree_type, ptr %420, i64 0, i32 6
  %646 = load i32, ptr %645, align 4
  %647 = lshr i32 %646, 11
  %648 = and i32 %647, 4
  %649 = or disjoint i32 %644, %648
  %650 = lshr i32 %551, 20
  %651 = and i32 %650, 1
  %652 = lshr i32 %551, 18
  %653 = and i32 %652, 2
  %654 = or disjoint i32 %651, %653
  %655 = getelementptr inbounds %struct.tree_type, ptr %422, i64 0, i32 6
  %656 = load i32, ptr %655, align 4
  %657 = lshr i32 %656, 11
  %658 = and i32 %657, 4
  %659 = or disjoint i32 %654, %658
  %660 = xor i32 %659, -1
  %661 = and i32 %649, %660
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %703, label %663

663:                                              ; preds = %638
  switch i32 %4, label %113 [
    i32 0, label %664
    i32 1, label %676
    i32 2, label %678
    i32 3, label %680
  ]

664:                                              ; preds = %663
  %665 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.209, i32 noundef %38, ptr noundef %37) #21
  %666 = icmp eq i8 %665, 0
  br i1 %666, label %703, label %667

667:                                              ; preds = %664
  %668 = icmp eq ptr %6, null
  br i1 %668, label %673, label %669

669:                                              ; preds = %667
  %670 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 1
  %671 = load i32, ptr %670, align 8, !tbaa !5
  %672 = icmp ult i32 %671, 2
  br i1 %672, label %673, label %674

673:                                              ; preds = %669, %667
  br label %674

674:                                              ; preds = %669, %673
  %675 = phi i32 [ %0, %673 ], [ %671, %669 ]
  tail call void (i32, ptr, ...) @inform(i32 noundef %675, ptr noundef nonnull @.str.205, ptr noundef nonnull %1, ptr noundef nonnull %48) #21
  br label %703

676:                                              ; preds = %663
  %677 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.210) #21
  br label %703

678:                                              ; preds = %663
  %679 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.211) #21
  br label %703

680:                                              ; preds = %663
  %681 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.212) #21
  br label %703

682:                                              ; preds = %504
  %683 = icmp eq i8 %71, 0
  br i1 %683, label %684, label %703

684:                                              ; preds = %682
  switch i32 %4, label %113 [
    i32 0, label %685
    i32 1, label %697
    i32 2, label %699
    i32 3, label %701
  ]

685:                                              ; preds = %684
  %686 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.235, i32 noundef %38, ptr noundef %37) #21
  %687 = icmp eq i8 %686, 0
  br i1 %687, label %703, label %688

688:                                              ; preds = %685
  %689 = icmp eq ptr %6, null
  br i1 %689, label %694, label %690

690:                                              ; preds = %688
  %691 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 1
  %692 = load i32, ptr %691, align 8, !tbaa !5
  %693 = icmp ult i32 %692, 2
  br i1 %693, label %694, label %695

694:                                              ; preds = %690, %688
  br label %695

695:                                              ; preds = %690, %694
  %696 = phi i32 [ %0, %694 ], [ %692, %690 ]
  tail call void (i32, ptr, ...) @inform(i32 noundef %696, ptr noundef nonnull @.str.205, ptr noundef nonnull %1, ptr noundef nonnull %48) #21
  br label %703

697:                                              ; preds = %684
  %698 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.236) #21
  br label %703

699:                                              ; preds = %684
  %700 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.237) #21
  br label %703

701:                                              ; preds = %684
  %702 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.238) #21
  br label %703

703:                                              ; preds = %682, %685, %695, %701, %699, %697, %530, %540, %546, %544, %542, %632, %676, %678, %680, %674, %664, %638, %598, %600, %602, %596, %586, %582, %614, %624, %630, %628, %626, %604, %606
  %704 = tail call ptr @convert(ptr noundef nonnull %1, ptr noundef %125) #21
  br label %781

705:                                              ; preds = %414, %417
  %706 = icmp eq i32 %52, 15
  %707 = and i1 %415, %706
  br i1 %707, label %708, label %710

708:                                              ; preds = %705
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.239) #21
  %709 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %781

710:                                              ; preds = %705
  %711 = icmp eq i32 %52, 8
  %712 = and i1 %415, %711
  br i1 %712, label %713, label %736

713:                                              ; preds = %710
  %714 = icmp eq i8 %5, 0
  br i1 %714, label %715, label %734

715:                                              ; preds = %713
  switch i32 %4, label %113 [
    i32 0, label %716
    i32 1, label %728
    i32 2, label %730
    i32 3, label %732
  ]

716:                                              ; preds = %715
  %717 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.240, i32 noundef %38, ptr noundef %37) #21
  %718 = icmp eq i8 %717, 0
  br i1 %718, label %734, label %719

719:                                              ; preds = %716
  %720 = icmp eq ptr %6, null
  br i1 %720, label %725, label %721

721:                                              ; preds = %719
  %722 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 1
  %723 = load i32, ptr %722, align 8, !tbaa !5
  %724 = icmp ult i32 %723, 2
  br i1 %724, label %725, label %726

725:                                              ; preds = %721, %719
  br label %726

726:                                              ; preds = %721, %725
  %727 = phi i32 [ %0, %725 ], [ %723, %721 ]
  tail call void (i32, ptr, ...) @inform(i32 noundef %727, ptr noundef nonnull @.str.205, ptr noundef nonnull %1, ptr noundef nonnull %48) #21
  br label %734

728:                                              ; preds = %715
  %729 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.241) #21
  br label %734

730:                                              ; preds = %715
  %731 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.242) #21
  br label %734

732:                                              ; preds = %715
  %733 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.243) #21
  br label %734

734:                                              ; preds = %728, %730, %732, %726, %716, %713
  %735 = tail call ptr @convert(ptr noundef nonnull %1, ptr noundef %125) #21
  br label %781

736:                                              ; preds = %710
  %737 = icmp eq i32 %52, 10
  %738 = and i1 %178, %737
  br i1 %738, label %739, label %760

739:                                              ; preds = %736
  switch i32 %4, label %113 [
    i32 0, label %740
    i32 1, label %752
    i32 2, label %754
    i32 3, label %756
  ]

740:                                              ; preds = %739
  %741 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.244, i32 noundef %38, ptr noundef %37) #21
  %742 = icmp eq i8 %741, 0
  br i1 %742, label %758, label %743

743:                                              ; preds = %740
  %744 = icmp eq ptr %6, null
  br i1 %744, label %749, label %745

745:                                              ; preds = %743
  %746 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 1
  %747 = load i32, ptr %746, align 8, !tbaa !5
  %748 = icmp ult i32 %747, 2
  br i1 %748, label %749, label %750

749:                                              ; preds = %745, %743
  br label %750

750:                                              ; preds = %745, %749
  %751 = phi i32 [ %0, %749 ], [ %747, %745 ]
  tail call void (i32, ptr, ...) @inform(i32 noundef %751, ptr noundef nonnull @.str.205, ptr noundef nonnull %1, ptr noundef nonnull %48) #21
  br label %758

752:                                              ; preds = %739
  %753 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.245) #21
  br label %758

754:                                              ; preds = %739
  %755 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.246) #21
  br label %758

756:                                              ; preds = %739
  %757 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.247) #21
  br label %758

758:                                              ; preds = %740, %750, %756, %754, %752
  %759 = tail call ptr @convert(ptr noundef nonnull %1, ptr noundef %125) #21
  br label %781

760:                                              ; preds = %736
  %761 = and i1 %181, %737
  br i1 %761, label %762, label %765

762:                                              ; preds = %760
  %763 = load i8, ptr @in_late_binary_op, align 1, !tbaa !5
  store i8 1, ptr @in_late_binary_op, align 1, !tbaa !5
  %764 = tail call ptr @convert(ptr noundef nonnull %1, ptr noundef %125) #21
  store i8 %763, ptr @in_late_binary_op, align 1, !tbaa !5
  br label %781

765:                                              ; preds = %307, %760
  switch i32 %4, label %113 [
    i32 0, label %766
    i32 1, label %776
    i32 2, label %777
    i32 3, label %778
  ]

766:                                              ; preds = %211, %765
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.248, i32 noundef %38, ptr noundef %37) #21
  %767 = icmp eq ptr %6, null
  br i1 %767, label %772, label %768

768:                                              ; preds = %766
  %769 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 1
  %770 = load i32, ptr %769, align 8, !tbaa !5
  %771 = icmp ult i32 %770, 2
  br i1 %771, label %772, label %774

772:                                              ; preds = %768, %766
  %773 = load i32, ptr @input_location, align 4, !tbaa !28
  br label %774

774:                                              ; preds = %768, %772
  %775 = phi i32 [ %773, %772 ], [ %770, %768 ]
  tail call void (i32, ptr, ...) @inform(i32 noundef %775, ptr noundef nonnull @.str.205, ptr noundef nonnull %1, ptr noundef nonnull %48) #21
  br label %779

776:                                              ; preds = %765
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.249, ptr noundef nonnull %1, ptr noundef nonnull %48) #21
  br label %779

777:                                              ; preds = %765
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.250, ptr noundef nonnull %1, ptr noundef nonnull %48) #21
  br label %779

778:                                              ; preds = %765
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.251, ptr noundef nonnull %48, ptr noundef nonnull %1) #21
  br label %779

779:                                              ; preds = %778, %777, %776, %774
  %780 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %781

781:                                              ; preds = %409, %190, %474, %703, %192, %124, %114, %779, %762, %758, %734, %708, %202, %175, %162, %145, %140, %122, %54
  %782 = phi ptr [ %55, %54 ], [ %123, %122 ], [ %164, %162 ], [ %146, %145 ], [ %141, %140 ], [ %176, %175 ], [ %203, %202 ], [ %780, %779 ], [ %413, %409 ], [ %709, %708 ], [ %735, %734 ], [ %759, %758 ], [ %764, %762 ], [ %46, %114 ], [ %125, %124 ], [ %194, %192 ], [ %191, %190 ], [ %704, %703 ], [ %475, %474 ]
  ret ptr %782
}

; Function Attrs: optsize
declare ptr @objc_generate_write_barrier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @store_init_value(i32 noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.expanded_location, align 8
  %6 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %109, label %11

11:                                               ; preds = %4
  %12 = icmp eq ptr %2, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %11
  %14 = tail call fastcc zeroext i8 @null_pointer_constant_p(ptr noundef nonnull %2) #20, !range !24
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i8 [ %14, %13 ], [ 0, %11 ]
  %17 = load i64, ptr %1, align 8
  %18 = trunc i64 %17 to i32
  %19 = lshr i32 %18, 26
  %20 = and i32 %19, 1
  %21 = tail call fastcc ptr @digest_init(i32 noundef %0, ptr noundef nonnull %7, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %16, i8 noundef zeroext 1, i32 noundef %20) #20
  %22 = load i32, ptr @input_location, align 4, !tbaa !28
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %5, i32 noundef %22) #21
  %23 = getelementptr inbounds %struct.expanded_location, ptr %5, i64 0, i32 3
  %24 = load i8, ptr %23, align 8, !tbaa !96
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %15
  %27 = load ptr, ptr %6, align 8, !tbaa !5
  %28 = load i64, ptr %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = and i32 %29, 65535
  %31 = add nsw i32 %30, -15
  %32 = icmp ult i32 %31, 4
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load i64, ptr %1, align 8
  %35 = and i64 %34, 67108864
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 202, ptr noundef nonnull @.str.79) #21
  br label %39

39:                                               ; preds = %26, %37, %33, %15
  %40 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 5
  store ptr %21, ptr %40, align 8, !tbaa !5
  %41 = load ptr, ptr @global_trees, align 16
  br label %42

42:                                               ; preds = %50, %39
  %43 = phi ptr [ %21, %39 ], [ %48, %50 ]
  %44 = load i64, ptr %43, align 8
  %45 = trunc i64 %44 to i16
  switch i16 %45, label %56 [
    i16 116, label %46
    i16 113, label %46
    i16 117, label %46
  ]

46:                                               ; preds = %42, %42, %42
  %47 = getelementptr inbounds %struct.tree_exp, ptr %43, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !5
  %49 = icmp eq ptr %48, %41
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !5
  %53 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !5
  %55 = icmp eq ptr %52, %54
  br i1 %55, label %42, label %56, !llvm.loop !98

56:                                               ; preds = %42, %46, %50
  %57 = load i64, ptr %1, align 8
  %58 = and i64 %57, 67108864
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  call void @constant_expression_warning(ptr noundef nonnull %43) #21
  br label %61

61:                                               ; preds = %60, %56
  %62 = load i64, ptr %7, align 8
  %63 = and i64 %62, 65535
  %64 = icmp eq i64 %63, 15
  br i1 %64, label %65, label %109

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !5
  %68 = icmp ne ptr %67, null
  %69 = load ptr, ptr @global_trees, align 16
  %70 = icmp eq ptr %43, %69
  %71 = select i1 %68, i1 true, i1 %70
  br i1 %71, label %109, label %72

72:                                               ; preds = %65, %80
  %73 = phi ptr [ %78, %80 ], [ %2, %65 ]
  %74 = load i64, ptr %73, align 8
  %75 = trunc i64 %74 to i16
  switch i16 %75, label %86 [
    i16 116, label %76
    i16 113, label %76
    i16 117, label %76
  ]

76:                                               ; preds = %72, %72, %72
  %77 = getelementptr inbounds %struct.tree_exp, ptr %73, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !5
  %79 = icmp eq ptr %78, %69
  br i1 %79, label %86, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.tree_common, ptr %73, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !5
  %83 = getelementptr inbounds %struct.tree_common, ptr %78, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !5
  %85 = icmp eq ptr %82, %84
  br i1 %85, label %72, label %86, !llvm.loop !99

86:                                               ; preds = %72, %76, %80
  %87 = call ptr @fold(ptr noundef nonnull %73) #21
  %88 = load i64, ptr %87, align 8
  %89 = and i64 %88, 65535
  %90 = icmp eq i64 %89, 119
  br i1 %90, label %91, label %109

91:                                               ; preds = %86
  %92 = getelementptr inbounds %struct.tree_exp, ptr %87, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !5
  %94 = getelementptr inbounds %struct.tree_exp, ptr %93, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !5
  %96 = getelementptr inbounds %struct.tree_common, ptr %95, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !5
  %98 = getelementptr inbounds %struct.tree_type, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !5
  %100 = icmp eq ptr %99, null
  br i1 %100, label %109, label %101

101:                                              ; preds = %91
  %102 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 16
  %103 = load ptr, ptr %102, align 8, !tbaa !5
  %104 = call ptr @build_distinct_type_copy(ptr noundef %103) #21
  store ptr %104, ptr %6, align 8, !tbaa !5
  %105 = load ptr, ptr %96, align 8, !tbaa !5
  %106 = getelementptr inbounds %struct.tree_type, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !5
  %108 = getelementptr inbounds %struct.tree_type, ptr %104, i64 0, i32 1
  store ptr %107, ptr %108, align 8, !tbaa !5
  call void @layout_type(ptr noundef %104) #21
  call void @layout_decl(ptr noundef nonnull %95, i32 noundef 0) #21
  br label %109

109:                                              ; preds = %61, %65, %91, %101, %86, %4
  ret void
}

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @constant_expression_warning(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_distinct_type_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @layout_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @layout_decl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @error_init(ptr noundef %0) local_unnamed_addr #0 {
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.80, ptr noundef %0) #21
  %2 = tail call fastcc i32 @spelling_length() #20
  %3 = add nsw i32 %2, 1
  %4 = sext i32 %3 to i64
  %5 = alloca i8, i64 %4, align 16
  %6 = call fastcc ptr @print_spelling(ptr noundef nonnull %5) #20
  %7 = load i8, ptr %5, align 16, !tbaa !5
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  call void (ptr, ...) @error(ptr noundef nonnull @.str.81, ptr noundef nonnull %5) #21
  br label %10

10:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc noundef ptr @print_spelling(ptr noundef returned %0) unnamed_addr #11 {
  %2 = load ptr, ptr @spelling_base, align 8, !tbaa !8
  %3 = load ptr, ptr @spelling, align 8, !tbaa !8
  %4 = icmp ult ptr %2, %3
  br i1 %4, label %5, label %37

5:                                                ; preds = %1, %32
  %6 = phi ptr [ %33, %32 ], [ %3, %1 ]
  %7 = phi ptr [ %35, %32 ], [ %2, %1 ]
  %8 = phi ptr [ %34, %32 ], [ %0, %1 ]
  %9 = load i32, ptr %7, align 8, !tbaa !100
  switch i32 %9, label %19 [
    i32 3, label %10
    i32 2, label %17
  ]

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.spelling, ptr %7, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !5
  %13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) @.str.252, i64 noundef %12) #20
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #20
  %15 = getelementptr inbounds i8, ptr %8, i64 %14
  %16 = load ptr, ptr @spelling, align 8, !tbaa !8
  br label %32

17:                                               ; preds = %5
  %18 = getelementptr inbounds i8, ptr %8, i64 1
  store i8 46, ptr %8, align 1, !tbaa !5
  br label %19

19:                                               ; preds = %5, %17
  %20 = phi ptr [ %18, %17 ], [ %8, %5 ]
  %21 = getelementptr inbounds %struct.spelling, ptr %7, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  %23 = load i8, ptr %22, align 1, !tbaa !5
  store i8 %23, ptr %20, align 1, !tbaa !5
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %19, %25
  %26 = phi ptr [ %28, %25 ], [ %22, %19 ]
  %27 = phi ptr [ %29, %25 ], [ %20, %19 ]
  %28 = getelementptr inbounds i8, ptr %26, i64 1
  %29 = getelementptr inbounds i8, ptr %27, i64 1
  %30 = load i8, ptr %28, align 1, !tbaa !5
  store i8 %30, ptr %29, align 1, !tbaa !5
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %25, !llvm.loop !102

32:                                               ; preds = %25, %19, %10
  %33 = phi ptr [ %16, %10 ], [ %6, %19 ], [ %6, %25 ]
  %34 = phi ptr [ %15, %10 ], [ %20, %19 ], [ %29, %25 ]
  %35 = getelementptr inbounds %struct.spelling, ptr %7, i64 1
  %36 = icmp ult ptr %35, %33
  br i1 %36, label %5, label %37, !llvm.loop !103

37:                                               ; preds = %32, %1
  %38 = phi ptr [ %0, %1 ], [ %34, %32 ]
  store i8 0, ptr %38, align 1, !tbaa !5
  ret ptr %0
}

; Function Attrs: nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @spelling_length() unnamed_addr #12 {
  %1 = load ptr, ptr @spelling_base, align 8, !tbaa !8
  %2 = load ptr, ptr @spelling, align 8, !tbaa !8
  %3 = icmp ult ptr %1, %2
  br i1 %3, label %4, label %22

4:                                                ; preds = %0, %18
  %5 = phi ptr [ %20, %18 ], [ %1, %0 ]
  %6 = phi i32 [ %19, %18 ], [ 0, %0 ]
  %7 = load i32, ptr %5, align 8, !tbaa !100
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = add nsw i32 %6, 25
  br label %18

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.spelling, ptr %5, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #20
  %15 = trunc i64 %14 to i32
  %16 = add i32 %6, 1
  %17 = add i32 %16, %15
  br label %18

18:                                               ; preds = %9, %11
  %19 = phi i32 [ %10, %9 ], [ %17, %11 ]
  %20 = getelementptr inbounds %struct.spelling, ptr %5, i64 1
  %21 = icmp ult ptr %20, %2
  br i1 %21, label %4, label %22, !llvm.loop !104

22:                                               ; preds = %18, %0
  %23 = phi i32 [ 0, %0 ], [ %19, %18 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pedwarn_init(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef %1, ptr noundef nonnull @.str.80, ptr noundef %2) #21
  %5 = tail call fastcc i32 @spelling_length() #20
  %6 = add nsw i32 %5, 1
  %7 = sext i32 %6 to i64
  %8 = alloca i8, i64 %7, align 16
  %9 = call fastcc ptr @print_spelling(ptr noundef nonnull %8) #20
  %10 = load i8, ptr %8, align 16, !tbaa !5
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef %1, ptr noundef nonnull @.str.81, ptr noundef nonnull %8) #21
  br label %14

14:                                               ; preds = %12, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @maybe_warn_string_init(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly byval(%struct.c_expr) align 8 %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @pedantic, align 4, !tbaa !28
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %2
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 15
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = load ptr, ptr %1, align 8, !tbaa !41
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 28
  %14 = getelementptr inbounds %struct.c_expr, ptr %1, i64 0, i32 1
  %15 = load i32, ptr %14, align 8
  %16 = icmp ne i32 %15, 28
  %17 = select i1 %13, i1 %16, i1 false
  br i1 %17, label %18, label %20

18:                                               ; preds = %9
  %19 = load i32, ptr @input_location, align 4, !tbaa !28
  tail call void @pedwarn_init(i32 noundef %19, i32 noundef 834, ptr noundef nonnull @.str.82) #20
  br label %20

20:                                               ; preds = %18, %9, %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @start_init(ptr noundef %0, ptr nocapture noundef readnone %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @xmalloc(i64 noundef 64) #21
  %5 = load ptr, ptr @constructor_decl, align 8, !tbaa !8
  %6 = getelementptr inbounds %struct.initializer_stack, ptr %4, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !105
  %7 = load i32, ptr @require_constant_value, align 4, !tbaa !28
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds %struct.initializer_stack, ptr %4, i64 0, i32 9
  store i8 %8, ptr %9, align 1, !tbaa !107
  %10 = load i32, ptr @require_constant_elements, align 4, !tbaa !28
  %11 = trunc i32 %10 to i8
  %12 = getelementptr inbounds %struct.initializer_stack, ptr %4, i64 0, i32 10
  store i8 %11, ptr %12, align 2, !tbaa !108
  %13 = load ptr, ptr @constructor_stack, align 8, !tbaa !8
  %14 = getelementptr inbounds %struct.initializer_stack, ptr %4, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !109
  %15 = load ptr, ptr @constructor_range_stack, align 8, !tbaa !8
  %16 = getelementptr inbounds %struct.initializer_stack, ptr %4, i64 0, i32 3
  store ptr %15, ptr %16, align 8, !tbaa !110
  %17 = load ptr, ptr @constructor_elements, align 8, !tbaa !8
  %18 = getelementptr inbounds %struct.initializer_stack, ptr %4, i64 0, i32 4
  store ptr %17, ptr %18, align 8, !tbaa !111
  %19 = load ptr, ptr @spelling, align 8, !tbaa !8
  %20 = getelementptr inbounds %struct.initializer_stack, ptr %4, i64 0, i32 5
  store ptr %19, ptr %20, align 8, !tbaa !112
  %21 = load ptr, ptr @spelling_base, align 8, !tbaa !8
  %22 = getelementptr inbounds %struct.initializer_stack, ptr %4, i64 0, i32 6
  store ptr %21, ptr %22, align 8, !tbaa !113
  %23 = load i32, ptr @spelling_size, align 4, !tbaa !28
  %24 = getelementptr inbounds %struct.initializer_stack, ptr %4, i64 0, i32 7
  store i32 %23, ptr %24, align 8, !tbaa !114
  %25 = load i32, ptr @constructor_top_level, align 4, !tbaa !28
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.initializer_stack, ptr %4, i64 0, i32 8
  store i8 %26, ptr %27, align 4, !tbaa !115
  %28 = load ptr, ptr @initializer_stack, align 8, !tbaa !8
  store ptr %28, ptr %4, align 8, !tbaa !116
  store ptr %4, ptr @initializer_stack, align 8, !tbaa !8
  store ptr %0, ptr @constructor_decl, align 8, !tbaa !8
  store i32 0, ptr @constructor_designated, align 4, !tbaa !28
  store i32 %2, ptr @constructor_top_level, align 4, !tbaa !28
  %29 = icmp eq ptr %0, null
  %30 = load ptr, ptr @global_trees, align 16
  %31 = icmp eq ptr %30, %0
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %64, label %33

33:                                               ; preds = %3
  %34 = load i64, ptr %0, align 8
  %35 = trunc i64 %34 to i32
  %36 = lshr i32 %35, 26
  %37 = and i32 %36, 1
  store i32 %37, ptr @require_constant_value, align 4, !tbaa !28
  %38 = and i64 %34, 67108864
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i32, ptr @pedantic, align 4, !tbaa !28
  %42 = icmp eq i32 %41, 0
  %43 = load i32, ptr @flag_isoc99, align 4
  %44 = icmp ne i32 %43, 0
  %45 = select i1 %42, i1 true, i1 %44
  br i1 %45, label %57, label %46

46:                                               ; preds = %40, %33
  %47 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !5
  %49 = load i64, ptr %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = and i32 %50, 65535
  %52 = add nsw i32 %51, -15
  %53 = icmp ult i32 %52, 3
  br i1 %53, label %57, label %54

54:                                               ; preds = %46
  %55 = icmp eq i32 %51, 18
  %56 = zext i1 %55 to i32
  br label %57

57:                                               ; preds = %46, %54, %40
  %58 = phi i32 [ 0, %40 ], [ %56, %54 ], [ 1, %46 ]
  store i32 %58, ptr @require_constant_elements, align 4, !tbaa !28
  %59 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !5
  %61 = getelementptr inbounds %struct.tree_identifier, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !5
  %63 = tail call ptr @identifier_to_locale(ptr noundef %62) #21
  br label %65

64:                                               ; preds = %3
  store i32 0, ptr @require_constant_value, align 4, !tbaa !28
  store i32 0, ptr @require_constant_elements, align 4, !tbaa !28
  br label %65

65:                                               ; preds = %64, %57
  %66 = phi ptr [ %63, %57 ], [ @.str.83, %64 ]
  store ptr null, ptr @constructor_stack, align 8, !tbaa !8
  store ptr null, ptr @constructor_range_stack, align 8, !tbaa !8
  store i1 false, ptr @missing_braces_mentioned, align 4
  store ptr null, ptr @spelling_base, align 8, !tbaa !8
  store i32 0, ptr @spelling_size, align 4, !tbaa !28
  store ptr null, ptr @spelling, align 8, !tbaa !8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  tail call fastcc void @push_string(ptr noundef nonnull %66) #20
  br label %69

69:                                               ; preds = %68, %65
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @identifier_to_locale(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @push_string(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @spelling, align 8, !tbaa !8
  %3 = load ptr, ptr @spelling_base, align 8, !tbaa !8
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %3 to i64
  %6 = sub i64 %4, %5
  %7 = lshr exact i64 %6, 4
  %8 = trunc i64 %7 to i32
  %9 = load i32, ptr @spelling_size, align 4, !tbaa !28
  %10 = icmp sgt i32 %9, %8
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = add nsw i32 %9, 10
  store i32 %12, ptr @spelling_size, align 4, !tbaa !28
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 4
  %15 = tail call ptr @xrealloc(ptr noundef %3, i64 noundef %14) #21
  store ptr %15, ptr @spelling_base, align 8, !tbaa !8
  %16 = shl i64 %6, 28
  %17 = ashr i64 %16, 32
  %18 = getelementptr inbounds %struct.spelling, ptr %15, i64 %17
  br label %19

19:                                               ; preds = %11, %1
  %20 = phi ptr [ %18, %11 ], [ %2, %1 ]
  store i32 1, ptr %20, align 8, !tbaa !100
  %21 = getelementptr inbounds %struct.spelling, ptr %20, i64 0, i32 1
  store ptr %0, ptr %21, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.spelling, ptr %20, i64 1
  store ptr %22, ptr @spelling, align 8, !tbaa !8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @finish_init() local_unnamed_addr #0 {
  %1 = load ptr, ptr @initializer_stack, align 8, !tbaa !8
  %2 = load ptr, ptr @constructor_stack, align 8, !tbaa !8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %0, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %0 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !117
  store ptr %6, ptr @constructor_stack, align 8, !tbaa !8
  tail call void @free(ptr noundef nonnull %5) #20
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !119

8:                                                ; preds = %4, %0
  %9 = load ptr, ptr @constructor_range_stack, align 8, !tbaa !8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 6262, ptr noundef nonnull @.str.8) #21
  br label %12

12:                                               ; preds = %8, %11
  %13 = load ptr, ptr @spelling_base, align 8, !tbaa !8
  tail call void @free(ptr noundef %13) #20
  %14 = getelementptr inbounds %struct.initializer_stack, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !105
  store ptr %15, ptr @constructor_decl, align 8, !tbaa !8
  %16 = getelementptr inbounds %struct.initializer_stack, ptr %1, i64 0, i32 9
  %17 = load i8, ptr %16, align 1, !tbaa !107
  %18 = sext i8 %17 to i32
  store i32 %18, ptr @require_constant_value, align 4, !tbaa !28
  %19 = getelementptr inbounds %struct.initializer_stack, ptr %1, i64 0, i32 10
  %20 = load i8, ptr %19, align 2, !tbaa !108
  %21 = sext i8 %20 to i32
  store i32 %21, ptr @require_constant_elements, align 4, !tbaa !28
  %22 = getelementptr inbounds %struct.initializer_stack, ptr %1, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !109
  store ptr %23, ptr @constructor_stack, align 8, !tbaa !8
  %24 = getelementptr inbounds %struct.initializer_stack, ptr %1, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !110
  store ptr %25, ptr @constructor_range_stack, align 8, !tbaa !8
  %26 = getelementptr inbounds %struct.initializer_stack, ptr %1, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !111
  store ptr %27, ptr @constructor_elements, align 8, !tbaa !8
  %28 = getelementptr inbounds %struct.initializer_stack, ptr %1, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !112
  store ptr %29, ptr @spelling, align 8, !tbaa !8
  %30 = getelementptr inbounds %struct.initializer_stack, ptr %1, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !113
  store ptr %31, ptr @spelling_base, align 8, !tbaa !8
  %32 = getelementptr inbounds %struct.initializer_stack, ptr %1, i64 0, i32 7
  %33 = load i32, ptr %32, align 8, !tbaa !114
  store i32 %33, ptr @spelling_size, align 4, !tbaa !28
  %34 = getelementptr inbounds %struct.initializer_stack, ptr %1, i64 0, i32 8
  %35 = load i8, ptr %34, align 4, !tbaa !115
  %36 = sext i8 %35 to i32
  store i32 %36, ptr @constructor_top_level, align 4, !tbaa !28
  %37 = load ptr, ptr %1, align 8, !tbaa !116
  store ptr %37, ptr @initializer_stack, align 8, !tbaa !8
  tail call void @free(ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @really_start_incremental_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @xmalloc(i64 noundef 128) #21
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = load ptr, ptr @constructor_decl, align 8, !tbaa !8
  %6 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi ptr [ %7, %4 ], [ %0, %1 ]
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 4295032831
  %12 = icmp eq i64 %11, 4294967310
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.84) #21
  br label %14

14:                                               ; preds = %13, %8
  %15 = load ptr, ptr @constructor_type, align 8, !tbaa !8
  %16 = getelementptr inbounds %struct.constructor_stack, ptr %2, i64 0, i32 1
  store ptr %15, ptr %16, align 8, !tbaa !120
  %17 = load ptr, ptr @constructor_fields, align 8, !tbaa !8
  %18 = getelementptr inbounds %struct.constructor_stack, ptr %2, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !121
  %19 = load ptr, ptr @constructor_index, align 8, !tbaa !8
  %20 = getelementptr inbounds %struct.constructor_stack, ptr %2, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !122
  %21 = load ptr, ptr @constructor_max_index, align 8, !tbaa !8
  %22 = getelementptr inbounds %struct.constructor_stack, ptr %2, i64 0, i32 4
  store ptr %21, ptr %22, align 8, !tbaa !123
  %23 = load ptr, ptr @constructor_unfilled_index, align 8, !tbaa !8
  %24 = getelementptr inbounds %struct.constructor_stack, ptr %2, i64 0, i32 5
  store ptr %23, ptr %24, align 8, !tbaa !124
  %25 = load ptr, ptr @constructor_unfilled_fields, align 8, !tbaa !8
  %26 = getelementptr inbounds %struct.constructor_stack, ptr %2, i64 0, i32 6
  store ptr %25, ptr %26, align 8, !tbaa !125
  %27 = load ptr, ptr @constructor_bit_index, align 8, !tbaa !8
  %28 = getelementptr inbounds %struct.constructor_stack, ptr %2, i64 0, i32 7
  store ptr %27, ptr %28, align 8, !tbaa !126
  %29 = load ptr, ptr @constructor_elements, align 8, !tbaa !8
  %30 = getelementptr inbounds %struct.constructor_stack, ptr %2, i64 0, i32 8
  store ptr %29, ptr %30, align 8, !tbaa !127
  %31 = load i32, ptr @constructor_constant, align 4, !tbaa !28
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.constructor_stack, ptr %2, i64 0, i32 14
  store i8 %32, ptr %33, align 8, !tbaa !128
  %34 = load i32, ptr @constructor_simple, align 4, !tbaa !28
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.constructor_stack, ptr %2, i64 0, i32 15
  store i8 %35, ptr %36, align 1, !tbaa !129
  %37 = load i32, ptr @constructor_nonconst, align 4, !tbaa !28
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds %struct.constructor_stack, ptr %2, i64 0, i32 16
  store i8 %38, ptr %39, align 2, !tbaa !130
  %40 = load i32, ptr @constructor_erroneous, align 4, !tbaa !28
  %41 = trunc i32 %40 to i8
  %42 = getelementptr inbounds %struct.constructor_stack, ptr %2, i64 0, i32 18
  store i8 %41, ptr %42, align 4, !tbaa !131
  %43 = load ptr, ptr @constructor_pending_elts, align 8, !tbaa !8
  %44 = getelementptr inbounds %struct.constructor_stack, ptr %2, i64 0, i32 9
  store ptr %43, ptr %44, align 8, !tbaa !132
  %45 = load i32, ptr @constructor_depth, align 4, !tbaa !28
  %46 = getelementptr inbounds %struct.constructor_stack, ptr %2, i64 0, i32 11
  store i32 %45, ptr %46, align 4, !tbaa !133
  %47 = getelementptr inbounds %struct.constructor_stack, ptr %2, i64 0, i32 12
  store ptr null, ptr %47, align 8, !tbaa !134
  %48 = getelementptr inbounds %struct.constructor_stack, ptr %2, i64 0, i32 12, i32 1
  store i32 0, ptr %48, align 8, !tbaa !135
  %49 = getelementptr inbounds %struct.constructor_stack, ptr %2, i64 0, i32 12, i32 2
  %50 = getelementptr inbounds %struct.constructor_stack, ptr %2, i64 0, i32 17
  store i8 0, ptr %50, align 1, !tbaa !136
  %51 = getelementptr inbounds %struct.constructor_stack, ptr %2, i64 0, i32 19
  store i8 0, ptr %51, align 1, !tbaa !137
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %49, i8 0, i64 16, i1 false)
  %52 = load i32, ptr @constructor_incremental, align 4, !tbaa !28
  %53 = trunc i32 %52 to i8
  %54 = getelementptr inbounds %struct.constructor_stack, ptr %2, i64 0, i32 20
  store i8 %53, ptr %54, align 2, !tbaa !138
  %55 = load i32, ptr @constructor_designated, align 4, !tbaa !28
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds %struct.constructor_stack, ptr %2, i64 0, i32 21
  store i8 %56, ptr %57, align 1, !tbaa !139
  store ptr null, ptr %2, align 8, !tbaa !117
  store ptr %2, ptr @constructor_stack, align 8, !tbaa !8
  store i32 1, ptr @constructor_constant, align 4, !tbaa !28
  store i32 1, ptr @constructor_simple, align 4, !tbaa !28
  store i32 0, ptr @constructor_nonconst, align 4, !tbaa !28
  %58 = load ptr, ptr @spelling, align 8, !tbaa !8
  %59 = load ptr, ptr @spelling_base, align 8, !tbaa !8
  %60 = ptrtoint ptr %58 to i64
  %61 = ptrtoint ptr %59 to i64
  %62 = sub i64 %60, %61
  %63 = lshr exact i64 %62, 4
  %64 = trunc i64 %63 to i32
  store i32 %64, ptr @constructor_depth, align 4, !tbaa !28
  store ptr null, ptr @constructor_elements, align 8, !tbaa !8
  store ptr null, ptr @constructor_pending_elts, align 8, !tbaa !8
  store ptr %9, ptr @constructor_type, align 8, !tbaa !8
  store i32 1, ptr @constructor_incremental, align 4, !tbaa !28
  store i32 0, ptr @constructor_designated, align 4, !tbaa !28
  store i32 0, ptr @designator_depth, align 4, !tbaa !28
  store i1 false, ptr @designator_erroneous, align 4
  %65 = load i64, ptr %9, align 8
  %66 = trunc i64 %65 to i16
  switch i16 %66, label %131 [
    i16 16, label %67
    i16 17, label %67
    i16 15, label %88
    i16 14, label %122
  ]

67:                                               ; preds = %14, %14
  %68 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !5
  %70 = icmp eq ptr %69, null
  br i1 %70, label %85, label %71

71:                                               ; preds = %67, %81
  %72 = phi ptr [ %83, %81 ], [ %69, %67 ]
  %73 = getelementptr inbounds %struct.tree_decl_common, ptr %72, i64 0, i32 2
  %74 = load i64, ptr %73, align 8
  %75 = and i64 %74, 524288
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.tree_decl_minimal, ptr %72, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !5
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.tree_common, ptr %72, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !5
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %71, !llvm.loop !140

85:                                               ; preds = %77, %81, %71, %67
  %86 = phi ptr [ null, %67 ], [ %72, %71 ], [ null, %81 ], [ %72, %77 ]
  store ptr %86, ptr @constructor_fields, align 8, !tbaa !8
  store ptr %86, ptr @constructor_unfilled_fields, align 8, !tbaa !8
  %87 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 19), align 8, !tbaa !8
  store ptr %87, ptr @constructor_bit_index, align 8, !tbaa !8
  br label %132

88:                                               ; preds = %14
  %89 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !5
  %91 = icmp eq ptr %90, null
  br i1 %91, label %118, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.tree_type, ptr %90, i64 0, i32 14
  %94 = load ptr, ptr %93, align 8, !tbaa !5
  store ptr %94, ptr @constructor_max_index, align 8, !tbaa !8
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !5
  %99 = icmp eq ptr %98, null
  br i1 %99, label %110, label %100

100:                                              ; preds = %96
  %101 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef -1) #21
  store ptr %101, ptr @constructor_max_index, align 8, !tbaa !8
  %102 = icmp eq ptr %101, null
  br i1 %102, label %110, label %103

103:                                              ; preds = %92, %100
  %104 = phi ptr [ %101, %100 ], [ %94, %92 ]
  %105 = load i64, ptr %104, align 8
  %106 = and i64 %105, 65535
  %107 = icmp eq i64 %106, 23
  br i1 %107, label %110, label %108

108:                                              ; preds = %103
  %109 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef -1) #21
  store ptr %109, ptr @constructor_max_index, align 8, !tbaa !8
  br label %110

110:                                              ; preds = %96, %108, %103, %100
  %111 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 2), align 16, !tbaa !8
  %112 = load ptr, ptr @constructor_type, align 8, !tbaa !8
  %113 = getelementptr inbounds %struct.tree_type, ptr %112, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !5
  %115 = getelementptr inbounds %struct.tree_type, ptr %114, i64 0, i32 13
  %116 = load ptr, ptr %115, align 8, !tbaa !5
  %117 = tail call ptr @convert(ptr noundef %111, ptr noundef %116) #21
  store ptr %117, ptr @constructor_index, align 8, !tbaa !8
  br label %120

118:                                              ; preds = %88
  %119 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 19), align 8, !tbaa !8
  store ptr %119, ptr @constructor_index, align 8, !tbaa !8
  store ptr null, ptr @constructor_max_index, align 8, !tbaa !8
  br label %120

120:                                              ; preds = %118, %110
  %121 = phi ptr [ %119, %118 ], [ %117, %110 ]
  store ptr %121, ptr @constructor_unfilled_index, align 8, !tbaa !8
  br label %132

122:                                              ; preds = %14
  %123 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 6
  %124 = load i32, ptr %123, align 4
  %125 = and i32 %124, 1023
  %126 = zext nneg i32 %125 to i64
  %127 = shl nsw i64 -1, %126
  %128 = xor i64 %127, -1
  %129 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %128) #21
  store ptr %129, ptr @constructor_max_index, align 8, !tbaa !8
  %130 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 19), align 8, !tbaa !8
  store ptr %130, ptr @constructor_index, align 8, !tbaa !8
  store ptr %130, ptr @constructor_unfilled_index, align 8, !tbaa !8
  br label %132

131:                                              ; preds = %14
  store ptr %9, ptr @constructor_fields, align 8, !tbaa !8
  store ptr %9, ptr @constructor_unfilled_fields, align 8, !tbaa !8
  br label %132

132:                                              ; preds = %120, %131, %122, %85
  ret void
}

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @push_init_level(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.c_expr, align 8
  %3 = alloca %struct.c_expr, align 8
  %4 = icmp eq i32 %0, 1
  br i1 %4, label %42, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @constructor_stack, align 8, !tbaa !8
  %7 = getelementptr inbounds %struct.constructor_stack, ptr %6, i64 0, i32 17
  %8 = load i8, ptr %7, align 1, !tbaa !136
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %40, label %10

10:                                               ; preds = %5, %34
  %11 = load ptr, ptr @constructor_type, align 8, !tbaa !8
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 16
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = icmp eq i32 %14, 17
  %18 = load ptr, ptr @constructor_fields, align 8
  %19 = icmp eq ptr %18, null
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %34, label %24

21:                                               ; preds = %10
  %22 = load ptr, ptr @constructor_fields, align 8, !tbaa !8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %21, %16
  %25 = and i64 %12, 65535
  %26 = icmp eq i64 %25, 15
  %27 = load ptr, ptr @constructor_max_index, align 8
  %28 = icmp ne ptr %27, null
  %29 = select i1 %26, i1 %28, i1 false
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load ptr, ptr @constructor_index, align 8, !tbaa !8
  %32 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %27, ptr noundef %31) #21
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %30, %21, %16
  %35 = phi ptr [ %2, %16 ], [ %2, %21 ], [ %3, %30 ]
  call void @pop_init_level(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %35, i32 noundef 1) #20
  tail call void @process_init_element(ptr noundef nonnull byval(%struct.c_expr) align 8 %35, i8 noundef zeroext 1) #20
  %36 = load ptr, ptr @constructor_stack, align 8, !tbaa !8
  %37 = getelementptr inbounds %struct.constructor_stack, ptr %36, i64 0, i32 17
  %38 = load i8, ptr %37, align 1, !tbaa !136
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %10, !llvm.loop !141

40:                                               ; preds = %24, %30, %34, %5
  %41 = icmp eq i32 %0, 0
  br i1 %41, label %65, label %42

42:                                               ; preds = %1, %40
  %43 = load ptr, ptr @constructor_type, align 8, !tbaa !8
  %44 = load i64, ptr %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 16
  br i1 %47, label %53, label %48

48:                                               ; preds = %42
  %49 = icmp eq i32 %46, 17
  %50 = load ptr, ptr @constructor_fields, align 8
  %51 = icmp ne ptr %50, null
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %56, label %59

53:                                               ; preds = %42
  %54 = load ptr, ptr @constructor_fields, align 8, !tbaa !8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %48, %53
  %57 = phi ptr [ %50, %48 ], [ %54, %53 ]
  %58 = tail call fastcc ptr @find_init_member(ptr noundef nonnull %57) #20
  br label %65

59:                                               ; preds = %53, %48
  %60 = and i64 %44, 65535
  %61 = icmp eq i64 %60, 15
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load ptr, ptr @constructor_index, align 8, !tbaa !8
  %64 = tail call fastcc ptr @find_init_member(ptr noundef %63) #20
  br label %65

65:                                               ; preds = %56, %62, %59, %40
  %66 = phi i1 [ false, %56 ], [ false, %62 ], [ false, %59 ], [ true, %40 ]
  %67 = phi ptr [ %58, %56 ], [ %64, %62 ], [ null, %59 ], [ null, %40 ]
  %68 = tail call ptr @xmalloc(i64 noundef 128) #21
  %69 = load ptr, ptr @constructor_type, align 8, !tbaa !8
  %70 = getelementptr inbounds %struct.constructor_stack, ptr %68, i64 0, i32 1
  store ptr %69, ptr %70, align 8, !tbaa !120
  %71 = load ptr, ptr @constructor_fields, align 8, !tbaa !8
  %72 = getelementptr inbounds %struct.constructor_stack, ptr %68, i64 0, i32 2
  store ptr %71, ptr %72, align 8, !tbaa !121
  %73 = load ptr, ptr @constructor_index, align 8, !tbaa !8
  %74 = getelementptr inbounds %struct.constructor_stack, ptr %68, i64 0, i32 3
  store ptr %73, ptr %74, align 8, !tbaa !122
  %75 = load ptr, ptr @constructor_max_index, align 8, !tbaa !8
  %76 = getelementptr inbounds %struct.constructor_stack, ptr %68, i64 0, i32 4
  store ptr %75, ptr %76, align 8, !tbaa !123
  %77 = load ptr, ptr @constructor_unfilled_index, align 8, !tbaa !8
  %78 = getelementptr inbounds %struct.constructor_stack, ptr %68, i64 0, i32 5
  store ptr %77, ptr %78, align 8, !tbaa !124
  %79 = load ptr, ptr @constructor_unfilled_fields, align 8, !tbaa !8
  %80 = getelementptr inbounds %struct.constructor_stack, ptr %68, i64 0, i32 6
  store ptr %79, ptr %80, align 8, !tbaa !125
  %81 = load ptr, ptr @constructor_bit_index, align 8, !tbaa !8
  %82 = getelementptr inbounds %struct.constructor_stack, ptr %68, i64 0, i32 7
  store ptr %81, ptr %82, align 8, !tbaa !126
  %83 = load ptr, ptr @constructor_elements, align 8, !tbaa !8
  %84 = getelementptr inbounds %struct.constructor_stack, ptr %68, i64 0, i32 8
  store ptr %83, ptr %84, align 8, !tbaa !127
  %85 = load i32, ptr @constructor_constant, align 4, !tbaa !28
  %86 = trunc i32 %85 to i8
  %87 = getelementptr inbounds %struct.constructor_stack, ptr %68, i64 0, i32 14
  store i8 %86, ptr %87, align 8, !tbaa !128
  %88 = load i32, ptr @constructor_simple, align 4, !tbaa !28
  %89 = trunc i32 %88 to i8
  %90 = getelementptr inbounds %struct.constructor_stack, ptr %68, i64 0, i32 15
  store i8 %89, ptr %90, align 1, !tbaa !129
  %91 = load i32, ptr @constructor_nonconst, align 4, !tbaa !28
  %92 = trunc i32 %91 to i8
  %93 = getelementptr inbounds %struct.constructor_stack, ptr %68, i64 0, i32 16
  store i8 %92, ptr %93, align 2, !tbaa !130
  %94 = load i32, ptr @constructor_erroneous, align 4, !tbaa !28
  %95 = trunc i32 %94 to i8
  %96 = getelementptr inbounds %struct.constructor_stack, ptr %68, i64 0, i32 18
  store i8 %95, ptr %96, align 4, !tbaa !131
  %97 = load ptr, ptr @constructor_pending_elts, align 8, !tbaa !8
  %98 = getelementptr inbounds %struct.constructor_stack, ptr %68, i64 0, i32 9
  store ptr %97, ptr %98, align 8, !tbaa !132
  %99 = load i32, ptr @constructor_depth, align 4, !tbaa !28
  %100 = getelementptr inbounds %struct.constructor_stack, ptr %68, i64 0, i32 11
  store i32 %99, ptr %100, align 4, !tbaa !133
  %101 = getelementptr inbounds %struct.constructor_stack, ptr %68, i64 0, i32 12
  store ptr null, ptr %101, align 8, !tbaa !134
  %102 = getelementptr inbounds %struct.constructor_stack, ptr %68, i64 0, i32 12, i32 1
  store i32 0, ptr %102, align 8, !tbaa !135
  %103 = getelementptr inbounds %struct.constructor_stack, ptr %68, i64 0, i32 12, i32 2
  store ptr null, ptr %103, align 8, !tbaa !142
  %104 = trunc i32 %0 to i8
  %105 = getelementptr inbounds %struct.constructor_stack, ptr %68, i64 0, i32 17
  store i8 %104, ptr %105, align 1, !tbaa !136
  %106 = getelementptr inbounds %struct.constructor_stack, ptr %68, i64 0, i32 19
  store i8 0, ptr %106, align 1, !tbaa !137
  %107 = load i32, ptr @constructor_incremental, align 4, !tbaa !28
  %108 = trunc i32 %107 to i8
  %109 = getelementptr inbounds %struct.constructor_stack, ptr %68, i64 0, i32 20
  store i8 %108, ptr %109, align 2, !tbaa !138
  %110 = load i32, ptr @constructor_designated, align 4, !tbaa !28
  %111 = trunc i32 %110 to i8
  %112 = getelementptr inbounds %struct.constructor_stack, ptr %68, i64 0, i32 21
  store i8 %111, ptr %112, align 1, !tbaa !139
  %113 = load ptr, ptr @constructor_stack, align 8, !tbaa !8
  store ptr %113, ptr %68, align 8, !tbaa !117
  %114 = getelementptr inbounds %struct.constructor_stack, ptr %68, i64 0, i32 13
  store ptr null, ptr %114, align 8, !tbaa !143
  store ptr %68, ptr @constructor_stack, align 8, !tbaa !8
  store i32 1, ptr @constructor_constant, align 4, !tbaa !28
  store i32 1, ptr @constructor_simple, align 4, !tbaa !28
  store i32 0, ptr @constructor_nonconst, align 4, !tbaa !28
  %115 = load ptr, ptr @spelling, align 8, !tbaa !8
  %116 = load ptr, ptr @spelling_base, align 8, !tbaa !8
  %117 = ptrtoint ptr %115 to i64
  %118 = ptrtoint ptr %116 to i64
  %119 = sub i64 %117, %118
  %120 = lshr exact i64 %119, 4
  %121 = trunc i64 %120 to i32
  store i32 %121, ptr @constructor_depth, align 4, !tbaa !28
  store ptr null, ptr @constructor_elements, align 8, !tbaa !8
  store i32 1, ptr @constructor_incremental, align 4, !tbaa !28
  store i32 0, ptr @constructor_designated, align 4, !tbaa !28
  store ptr null, ptr @constructor_pending_elts, align 8, !tbaa !8
  br i1 %66, label %122, label %124

122:                                              ; preds = %65
  %123 = load ptr, ptr @constructor_range_stack, align 8, !tbaa !8
  store ptr %123, ptr %114, align 8, !tbaa !143
  store ptr null, ptr @constructor_range_stack, align 8, !tbaa !8
  store i32 0, ptr @designator_depth, align 4, !tbaa !28
  store i1 false, ptr @designator_erroneous, align 4
  br label %124

124:                                              ; preds = %122, %65
  %125 = icmp eq ptr %69, null
  br i1 %125, label %142, label %126

126:                                              ; preds = %124
  %127 = load i64, ptr %69, align 8
  %128 = trunc i64 %127 to i16
  switch i16 %128, label %142 [
    i16 16, label %129
    i16 17, label %129
    i16 15, label %135
  ]

129:                                              ; preds = %126, %126
  %130 = icmp eq ptr %71, null
  br i1 %130, label %131, label %132

131:                                              ; preds = %129
  store ptr null, ptr @constructor_type, align 8, !tbaa !8
  br label %145

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct.tree_common, ptr %71, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !5
  store ptr %134, ptr @constructor_type, align 8, !tbaa !8
  tail call fastcc void @push_member_name(ptr noundef nonnull %71) #20
  br label %139

135:                                              ; preds = %126
  %136 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !5
  store ptr %137, ptr @constructor_type, align 8, !tbaa !8
  %138 = tail call i64 @tree_low_cst(ptr noundef %73, i32 noundef 1) #21
  tail call fastcc void @push_array_bounds(i64 noundef %138) #20
  br label %139

139:                                              ; preds = %135, %132
  %140 = load i32, ptr @constructor_depth, align 4, !tbaa !28
  %141 = add nsw i32 %140, 1
  store i32 %141, ptr @constructor_depth, align 4, !tbaa !28
  br label %142

142:                                              ; preds = %139, %126, %124
  %143 = load ptr, ptr @constructor_type, align 8, !tbaa !8
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %146

145:                                              ; preds = %131, %142
  tail call void @error_init(ptr noundef nonnull @.str.85) #20
  store ptr null, ptr @constructor_fields, align 8, !tbaa !8
  store ptr null, ptr @constructor_unfilled_fields, align 8, !tbaa !8
  br label %262

146:                                              ; preds = %142
  %147 = icmp eq ptr %67, null
  br i1 %147, label %172, label %148

148:                                              ; preds = %146
  %149 = load i64, ptr %67, align 8
  %150 = and i64 %149, 65535
  %151 = icmp eq i64 %150, 51
  br i1 %151, label %152, label %172

152:                                              ; preds = %148
  %153 = trunc i64 %149 to i32
  %154 = lshr i32 %153, 17
  %155 = and i32 %154, 1
  store i32 %155, ptr @constructor_constant, align 4, !tbaa !28
  %156 = lshr i32 %153, 26
  %157 = and i32 %156, 1
  store i32 %157, ptr @constructor_simple, align 4, !tbaa !28
  %158 = lshr i64 %149, 34
  %159 = trunc i64 %158 to i32
  %160 = and i32 %159, 1
  store i32 %160, ptr @constructor_nonconst, align 4, !tbaa !28
  %161 = getelementptr inbounds %struct.tree_constructor, ptr %67, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !5
  store ptr %162, ptr @constructor_elements, align 8, !tbaa !8
  %163 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %162) #20
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %172, label %165

165:                                              ; preds = %152
  %166 = load i64, ptr %143, align 8
  %167 = trunc i64 %166 to i32
  %168 = and i32 %167, 65535
  %169 = add nsw i32 %168, -15
  %170 = icmp ult i32 %169, 2
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  tail call fastcc void @set_nonincremental_init() #20
  br label %172

172:                                              ; preds = %165, %152, %171, %148, %146
  %173 = icmp ne i32 %0, 1
  %174 = load i32, ptr @warn_missing_braces, align 4
  %175 = icmp eq i32 %174, 0
  %176 = select i1 %173, i1 true, i1 %175
  %177 = load i1, ptr @missing_braces_mentioned, align 4
  %178 = select i1 %176, i1 true, i1 %177
  br i1 %178, label %180, label %179

179:                                              ; preds = %172
  store i1 true, ptr @missing_braces_mentioned, align 4
  tail call fastcc void @warning_init(i32 noundef 128, ptr noundef nonnull @.str.86) #20
  br label %180

180:                                              ; preds = %179, %172
  %181 = load ptr, ptr @constructor_type, align 8, !tbaa !8
  %182 = load i64, ptr %181, align 8
  %183 = trunc i64 %182 to i16
  switch i16 %183, label %255 [
    i16 16, label %184
    i16 17, label %184
    i16 14, label %205
    i16 15, label %216
  ]

184:                                              ; preds = %180, %180
  %185 = getelementptr inbounds %struct.tree_type, ptr %181, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !5
  %187 = icmp eq ptr %186, null
  br i1 %187, label %202, label %188

188:                                              ; preds = %184, %198
  %189 = phi ptr [ %200, %198 ], [ %186, %184 ]
  %190 = getelementptr inbounds %struct.tree_decl_common, ptr %189, i64 0, i32 2
  %191 = load i64, ptr %190, align 8
  %192 = and i64 %191, 524288
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %202, label %194

194:                                              ; preds = %188
  %195 = getelementptr inbounds %struct.tree_decl_minimal, ptr %189, i64 0, i32 3
  %196 = load ptr, ptr %195, align 8, !tbaa !5
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %202

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.tree_common, ptr %189, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !5
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %188, !llvm.loop !144

202:                                              ; preds = %194, %198, %188, %184
  %203 = phi ptr [ null, %184 ], [ %189, %188 ], [ null, %198 ], [ %189, %194 ]
  store ptr %203, ptr @constructor_fields, align 8, !tbaa !8
  store ptr %203, ptr @constructor_unfilled_fields, align 8, !tbaa !8
  %204 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 19), align 8, !tbaa !8
  store ptr %204, ptr @constructor_bit_index, align 8, !tbaa !8
  br label %262

205:                                              ; preds = %180
  %206 = getelementptr inbounds %struct.tree_type, ptr %181, i64 0, i32 6
  %207 = load i32, ptr %206, align 4
  %208 = and i32 %207, 1023
  %209 = zext nneg i32 %208 to i64
  %210 = shl nsw i64 -1, %209
  %211 = xor i64 %210, -1
  %212 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %211) #21
  store ptr %212, ptr @constructor_max_index, align 8, !tbaa !8
  %213 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 2), align 16, !tbaa !8
  %214 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !8
  %215 = tail call ptr @convert(ptr noundef %213, ptr noundef %214) #21
  store ptr %215, ptr @constructor_index, align 8, !tbaa !8
  store ptr %215, ptr @constructor_unfilled_index, align 8, !tbaa !8
  br label %262

216:                                              ; preds = %180
  %217 = getelementptr inbounds %struct.tree_type, ptr %181, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !5
  %219 = icmp eq ptr %218, null
  br i1 %219, label %246, label %220

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.tree_type, ptr %218, i64 0, i32 14
  %222 = load ptr, ptr %221, align 8, !tbaa !5
  store ptr %222, ptr @constructor_max_index, align 8, !tbaa !8
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %231

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.tree_type, ptr %181, i64 0, i32 2
  %226 = load ptr, ptr %225, align 8, !tbaa !5
  %227 = icmp eq ptr %226, null
  br i1 %227, label %238, label %228

228:                                              ; preds = %224
  %229 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef -1) #21
  store ptr %229, ptr @constructor_max_index, align 8, !tbaa !8
  %230 = icmp eq ptr %229, null
  br i1 %230, label %238, label %231

231:                                              ; preds = %220, %228
  %232 = phi ptr [ %229, %228 ], [ %222, %220 ]
  %233 = load i64, ptr %232, align 8
  %234 = and i64 %233, 65535
  %235 = icmp eq i64 %234, 23
  br i1 %235, label %238, label %236

236:                                              ; preds = %231
  %237 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef -1) #21
  store ptr %237, ptr @constructor_max_index, align 8, !tbaa !8
  br label %238

238:                                              ; preds = %224, %236, %231, %228
  %239 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 2), align 16, !tbaa !8
  %240 = load ptr, ptr @constructor_type, align 8, !tbaa !8
  %241 = getelementptr inbounds %struct.tree_type, ptr %240, i64 0, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !5
  %243 = getelementptr inbounds %struct.tree_type, ptr %242, i64 0, i32 13
  %244 = load ptr, ptr %243, align 8, !tbaa !5
  %245 = tail call ptr @convert(ptr noundef %239, ptr noundef %244) #21
  br label %248

246:                                              ; preds = %216
  %247 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 19), align 8, !tbaa !8
  br label %248

248:                                              ; preds = %246, %238
  %249 = phi ptr [ %247, %246 ], [ %245, %238 ]
  store ptr %249, ptr @constructor_index, align 8, !tbaa !8
  store ptr %249, ptr @constructor_unfilled_index, align 8, !tbaa !8
  br i1 %147, label %262, label %250

250:                                              ; preds = %248
  %251 = load i64, ptr %67, align 8
  %252 = and i64 %251, 65535
  %253 = icmp eq i64 %252, 28
  br i1 %253, label %254, label %262

254:                                              ; preds = %250
  tail call fastcc void @set_nonincremental_init_from_string(ptr noundef nonnull %67) #20
  br label %262

255:                                              ; preds = %180
  %256 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %257 = icmp eq ptr %181, %256
  br i1 %257, label %260, label %258

258:                                              ; preds = %255
  tail call fastcc void @warning_init(i32 noundef 0, ptr noundef nonnull @.str.87) #20
  %259 = load ptr, ptr @constructor_type, align 8, !tbaa !8
  br label %260

260:                                              ; preds = %258, %255
  %261 = phi ptr [ %259, %258 ], [ %181, %255 ]
  store ptr %261, ptr @constructor_fields, align 8, !tbaa !8
  store ptr %261, ptr @constructor_unfilled_fields, align 8, !tbaa !8
  br label %262

262:                                              ; preds = %202, %260, %254, %250, %248, %205, %145
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @process_init_element(ptr nocapture noundef byval(%struct.c_expr) align 8 %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.c_expr, align 8
  %4 = alloca %struct.c_expr, align 8
  %5 = alloca %struct.expanded_location, align 8
  %6 = alloca %struct.c_expr, align 8
  %7 = alloca %struct.c_expr, align 8
  %8 = load ptr, ptr %0, align 8, !tbaa !41
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i64, ptr %8, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 28
  br label %14

14:                                               ; preds = %10, %2
  %15 = phi i1 [ false, %2 ], [ %13, %10 ]
  %16 = getelementptr inbounds %struct.c_expr, ptr %0, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !72
  %18 = icmp eq i32 %17, 28
  %19 = zext i1 %18 to i8
  store i32 0, ptr @designator_depth, align 4, !tbaa !28
  store i1 false, ptr @designator_erroneous, align 4
  %20 = load ptr, ptr @constructor_type, align 8
  %21 = icmp ne ptr %20, null
  %22 = select i1 %15, i1 %21, i1 false
  br i1 %22, label %23, label %49

23:                                               ; preds = %14
  %24 = load i64, ptr %20, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 15
  br i1 %26, label %27, label %49

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  %30 = load i64, ptr %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = and i32 %31, 65535
  %33 = add nsw i32 %32, -6
  %34 = icmp ult i32 %33, 3
  br i1 %34, label %35, label %49

35:                                               ; preds = %27
  %36 = load ptr, ptr @constructor_unfilled_index, align 8, !tbaa !8
  %37 = tail call i32 @integer_zerop(ptr noundef %36) #21
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr @constructor_stack, align 8, !tbaa !8
  %41 = getelementptr inbounds %struct.constructor_stack, ptr %40, i64 0, i32 12
  %42 = load ptr, ptr %41, align 8, !tbaa !134
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  tail call void @error_init(ptr noundef nonnull @.str.102) #20
  %45 = load ptr, ptr @constructor_stack, align 8, !tbaa !8
  br label %46

46:                                               ; preds = %44, %39
  %47 = phi ptr [ %45, %44 ], [ %40, %39 ]
  %48 = getelementptr inbounds %struct.constructor_stack, ptr %47, i64 0, i32 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %48, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !145
  br label %553

49:                                               ; preds = %27, %35, %23, %14
  %50 = load ptr, ptr @constructor_stack, align 8, !tbaa !8
  %51 = getelementptr inbounds %struct.constructor_stack, ptr %50, i64 0, i32 12
  %52 = load ptr, ptr %51, align 8, !tbaa !134
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  tail call void @error_init(ptr noundef nonnull @.str.103) #20
  br label %553

55:                                               ; preds = %49
  %56 = load ptr, ptr @constructor_type, align 8, !tbaa !8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %553, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.constructor_stack, ptr %50, i64 0, i32 17
  %60 = load i8, ptr %59, align 1, !tbaa !136
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %92, label %62

62:                                               ; preds = %58, %86
  %63 = load ptr, ptr @constructor_type, align 8, !tbaa !8
  %64 = load i64, ptr %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = and i32 %65, 65535
  %67 = icmp eq i32 %66, 16
  br i1 %67, label %73, label %68

68:                                               ; preds = %62
  %69 = icmp eq i32 %66, 17
  %70 = load ptr, ptr @constructor_fields, align 8
  %71 = icmp eq ptr %70, null
  %72 = select i1 %69, i1 %71, i1 false
  br i1 %72, label %86, label %76

73:                                               ; preds = %62
  %74 = load ptr, ptr @constructor_fields, align 8, !tbaa !8
  %75 = icmp eq ptr %74, null
  br i1 %75, label %86, label %92

76:                                               ; preds = %68
  %77 = and i32 %65, 65534
  %78 = icmp eq i32 %77, 14
  br i1 %78, label %79, label %92

79:                                               ; preds = %76
  %80 = load ptr, ptr @constructor_max_index, align 8, !tbaa !8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr @constructor_index, align 8, !tbaa !8
  %84 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %80, ptr noundef %83) #21
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %79, %82, %73, %68
  %87 = phi ptr [ %3, %68 ], [ %3, %73 ], [ %4, %82 ], [ %4, %79 ]
  call void @pop_init_level(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %87, i32 noundef 1) #20
  tail call void @process_init_element(ptr noundef nonnull byval(%struct.c_expr) align 8 %87, i8 noundef zeroext 1) #20
  %88 = load ptr, ptr @constructor_stack, align 8, !tbaa !8
  %89 = getelementptr inbounds %struct.constructor_stack, ptr %88, i64 0, i32 17
  %90 = load i8, ptr %89, align 1, !tbaa !136
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %62, !llvm.loop !146

92:                                               ; preds = %86, %82, %76, %73, %58
  %93 = load ptr, ptr @constructor_range_stack, align 8, !tbaa !8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %121, label %95

95:                                               ; preds = %92
  %96 = load i64, ptr %8, align 8
  %97 = trunc i64 %96 to i32
  %98 = and i32 %97, 65535
  %99 = icmp ne i32 %98, 119
  %100 = load i32, ptr @require_constant_value, align 4
  %101 = icmp eq i32 %100, 0
  %102 = select i1 %99, i1 true, i1 %101
  %103 = load i32, ptr @flag_isoc99, align 4
  %104 = icmp ne i32 %103, 0
  %105 = select i1 %102, i1 true, i1 %104
  br i1 %105, label %106, label %121

106:                                              ; preds = %95
  %107 = icmp eq i32 %98, 190
  br i1 %107, label %110, label %108

108:                                              ; preds = %106
  %109 = tail call ptr @c_save_expr(ptr noundef nonnull %8) #21
  br label %119

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !5
  %113 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !5
  %115 = tail call ptr @c_save_expr(ptr noundef %114) #21
  store ptr %115, ptr %0, align 8, !tbaa !41
  %116 = icmp eq ptr %112, null
  br i1 %116, label %121, label %117

117:                                              ; preds = %110
  %118 = tail call ptr @build1_stat(i32 noundef 190, ptr noundef nonnull %112, ptr noundef %115) #21
  br label %119

119:                                              ; preds = %117, %108
  %120 = phi ptr [ %109, %108 ], [ %118, %117 ]
  store ptr %120, ptr %0, align 8, !tbaa !41
  br label %121

121:                                              ; preds = %119, %110, %95, %92
  %122 = phi ptr [ %115, %110 ], [ %8, %95 ], [ %8, %92 ], [ %120, %119 ]
  %123 = getelementptr inbounds %struct.c_expr, ptr %0, i64 0, i32 2
  %124 = getelementptr inbounds %struct.expanded_location, ptr %5, i64 0, i32 3
  br label %125

125:                                              ; preds = %551, %121
  %126 = phi ptr [ %122, %121 ], [ %456, %551 ]
  %127 = icmp ne ptr %126, null
  %128 = icmp eq ptr %126, null
  %129 = getelementptr inbounds %struct.tree_common, ptr %126, i64 0, i32 2
  %130 = icmp eq ptr %126, null
  %131 = icmp ne ptr %126, null
  %132 = icmp eq ptr %126, null
  %133 = getelementptr inbounds %struct.tree_common, ptr %126, i64 0, i32 2
  %134 = icmp ne ptr %126, null
  %135 = icmp eq ptr %126, null
  %136 = getelementptr inbounds %struct.tree_common, ptr %126, i64 0, i32 2
  br label %137

137:                                              ; preds = %259, %125
  %138 = load ptr, ptr @constructor_type, align 8, !tbaa !8
  %139 = load i64, ptr %138, align 8
  %140 = trunc i64 %139 to i16
  switch i16 %140, label %441 [
    i16 16, label %141
    i16 17, label %260
    i16 15, label %341
    i16 14, label %410
  ]

141:                                              ; preds = %137
  %142 = load ptr, ptr @constructor_fields, align 8, !tbaa !8
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = load i32, ptr @input_location, align 4, !tbaa !28
  call void @pedwarn_init(i32 noundef %145, i32 noundef 0, ptr noundef nonnull @.str.103) #20
  br label %552

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.tree_common, ptr %142, i64 0, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !5
  %149 = load ptr, ptr @global_trees, align 16
  %150 = icmp eq ptr %148, %149
  br i1 %150, label %154, label %151

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.tree_type, ptr %148, i64 0, i32 16
  %153 = load ptr, ptr %152, align 8, !tbaa !5
  br label %154

154:                                              ; preds = %151, %146
  %155 = phi ptr [ %153, %151 ], [ %148, %146 ]
  %156 = load i64, ptr %155, align 8
  %157 = trunc i64 %156 to i32
  %158 = and i32 %157, 65535
  %159 = icmp ne i32 %158, 15
  %160 = load i32, ptr @require_constant_value, align 4
  %161 = icmp ne i32 %160, 0
  %162 = select i1 %159, i1 true, i1 %161
  br i1 %162, label %172, label %163

163:                                              ; preds = %154
  %164 = getelementptr inbounds %struct.tree_type, ptr %155, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !5
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %172

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.tree_common, ptr %142, i64 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !5
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %172

171:                                              ; preds = %167
  call void @error_init(ptr noundef nonnull @.str.104) #20
  br label %552

172:                                              ; preds = %167, %163, %154
  %173 = icmp eq i32 %158, 15
  %174 = and i1 %173, %134
  br i1 %174, label %175, label %187

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.tree_common, ptr %155, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !5
  %178 = load i64, ptr %177, align 8
  %179 = trunc i64 %178 to i32
  %180 = and i32 %179, 65534
  %181 = icmp eq i32 %180, 6
  br i1 %181, label %186, label %182

182:                                              ; preds = %175
  %183 = and i32 %179, 65535
  %184 = icmp eq i32 %183, 8
  %185 = and i1 %15, %184
  br i1 %185, label %198, label %187

186:                                              ; preds = %175
  br i1 %15, label %198, label %187

187:                                              ; preds = %186, %182, %172
  %188 = icmp eq ptr %126, %149
  %189 = or i1 %135, %188
  br i1 %189, label %198, label %190

190:                                              ; preds = %187
  %191 = load ptr, ptr %136, align 8, !tbaa !5
  %192 = getelementptr inbounds %struct.tree_type, ptr %191, i64 0, i32 16
  %193 = load ptr, ptr %192, align 8, !tbaa !5
  %194 = icmp ne ptr %193, %155
  %195 = add nsw i32 %158, -14
  %196 = icmp ult i32 %195, 4
  %197 = select i1 %194, i1 %196, i1 false
  br i1 %197, label %258, label %201

198:                                              ; preds = %187, %186, %182
  %199 = phi ptr [ %8, %182 ], [ %8, %186 ], [ %126, %187 ]
  %200 = icmp eq ptr %199, null
  br i1 %200, label %210, label %201

201:                                              ; preds = %190, %198
  %202 = phi ptr [ %199, %198 ], [ %126, %190 ]
  call fastcc void @push_member_name(ptr noundef nonnull %142) #20
  %203 = load ptr, ptr %123, align 8, !tbaa !73
  %204 = load ptr, ptr @constructor_fields, align 8, !tbaa !8
  call fastcc void @output_init_element(ptr noundef nonnull %202, ptr noundef %203, i8 noundef zeroext %19, ptr noundef nonnull %155, ptr noundef %204, i32 noundef 1, i8 noundef zeroext %1) #20
  %205 = load ptr, ptr @spelling_base, align 8, !tbaa !8
  %206 = load i32, ptr @constructor_depth, align 4, !tbaa !28
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.spelling, ptr %205, i64 %207
  store ptr %208, ptr @spelling, align 8, !tbaa !8
  %209 = load ptr, ptr @constructor_fields, align 8, !tbaa !8
  br label %241

210:                                              ; preds = %198
  %211 = getelementptr inbounds %struct.tree_decl_common, ptr %142, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !5
  %213 = icmp eq ptr %212, null
  br i1 %213, label %222, label %214

214:                                              ; preds = %210
  %215 = load i32, ptr @input_location, align 4, !tbaa !28
  %216 = call ptr @bit_position(ptr noundef nonnull %142) #21
  %217 = load ptr, ptr @constructor_fields, align 8, !tbaa !8
  %218 = getelementptr inbounds %struct.tree_decl_common, ptr %217, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !5
  %220 = call ptr @size_binop_loc(i32 noundef %215, i32 noundef 63, ptr noundef %216, ptr noundef %219) #21
  store ptr %220, ptr @constructor_bit_index, align 8, !tbaa !8
  %221 = load ptr, ptr @constructor_fields, align 8, !tbaa !8
  br label %222

222:                                              ; preds = %214, %210
  %223 = phi ptr [ %221, %214 ], [ %142, %210 ]
  %224 = load ptr, ptr @constructor_unfilled_fields, align 8, !tbaa !8
  %225 = icmp eq ptr %224, %223
  br i1 %225, label %226, label %241

226:                                              ; preds = %222, %236
  %227 = phi ptr [ %229, %236 ], [ %223, %222 ]
  %228 = getelementptr inbounds %struct.tree_common, ptr %227, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !5
  %230 = icmp eq ptr %229, null
  br i1 %230, label %240, label %231

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.tree_decl_common, ptr %229, i64 0, i32 2
  %233 = load i64, ptr %232, align 8
  %234 = and i64 %233, 524288
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %240, label %236

236:                                              ; preds = %231
  %237 = getelementptr inbounds %struct.tree_decl_minimal, ptr %229, i64 0, i32 3
  %238 = load ptr, ptr %237, align 8, !tbaa !5
  %239 = icmp eq ptr %238, null
  br i1 %239, label %226, label %240, !llvm.loop !147

240:                                              ; preds = %236, %226, %231
  store ptr %229, ptr @constructor_unfilled_fields, align 8, !tbaa !8
  br label %241

241:                                              ; preds = %240, %222, %201
  %242 = phi ptr [ %199, %240 ], [ null, %222 ], [ %202, %201 ]
  %243 = phi ptr [ %223, %240 ], [ %223, %222 ], [ %209, %201 ]
  br label %244

244:                                              ; preds = %254, %241
  %245 = phi ptr [ %243, %241 ], [ %247, %254 ]
  %246 = getelementptr inbounds %struct.tree_common, ptr %245, i64 0, i32 1
  %247 = load ptr, ptr %246, align 8, !tbaa !5
  %248 = icmp eq ptr %247, null
  br i1 %248, label %454, label %249

249:                                              ; preds = %244
  %250 = getelementptr inbounds %struct.tree_decl_common, ptr %247, i64 0, i32 2
  %251 = load i64, ptr %250, align 8
  %252 = and i64 %251, 524288
  %253 = icmp eq i64 %252, 0
  br i1 %253, label %454, label %254

254:                                              ; preds = %249
  %255 = getelementptr inbounds %struct.tree_decl_minimal, ptr %247, i64 0, i32 3
  %256 = load ptr, ptr %255, align 8, !tbaa !5
  %257 = icmp eq ptr %256, null
  br i1 %257, label %244, label %454, !llvm.loop !148

258:                                              ; preds = %190
  call void @push_init_level(i32 noundef 1) #20
  br label %259

259:                                              ; preds = %258, %340, %409
  br label %137

260:                                              ; preds = %137
  %261 = load ptr, ptr @constructor_fields, align 8, !tbaa !8
  %262 = icmp eq ptr %261, null
  br i1 %262, label %263, label %265

263:                                              ; preds = %260
  %264 = load i32, ptr @input_location, align 4, !tbaa !28
  call void @pedwarn_init(i32 noundef %264, i32 noundef 0, ptr noundef nonnull @.str.105) #20
  br label %552

265:                                              ; preds = %260
  %266 = getelementptr inbounds %struct.tree_common, ptr %261, i64 0, i32 2
  %267 = load ptr, ptr %266, align 8, !tbaa !5
  %268 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %269 = icmp eq ptr %267, %268
  br i1 %269, label %273, label %270

270:                                              ; preds = %265
  %271 = getelementptr inbounds %struct.tree_type, ptr %267, i64 0, i32 16
  %272 = load ptr, ptr %271, align 8, !tbaa !5
  br label %273

273:                                              ; preds = %270, %265
  %274 = phi ptr [ %272, %270 ], [ %267, %265 ]
  %275 = load i64, ptr %274, align 8
  %276 = trunc i64 %275 to i32
  %277 = and i32 %276, 65535
  %278 = load i32, ptr @input_location, align 4, !tbaa !28
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %5, i32 noundef %278) #21
  %279 = load i8, ptr %124, align 8, !tbaa !96
  %280 = icmp ne i8 %279, 0
  %281 = load i32, ptr @constructor_designated, align 4
  %282 = icmp ne i32 %281, 0
  %283 = select i1 %280, i1 true, i1 %282
  br i1 %283, label %293, label %284

284:                                              ; preds = %273
  br i1 %130, label %291, label %285

285:                                              ; preds = %284
  %286 = call i32 @integer_zerop(ptr noundef nonnull %126) #21
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %285
  %289 = call i32 @real_zerop(ptr noundef nonnull %126) #21
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %288, %284
  %292 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 202, ptr noundef nonnull @.str.106) #21
  br label %293

293:                                              ; preds = %291, %288, %285, %273
  %294 = icmp eq i32 %277, 15
  %295 = select i1 %131, i1 %294, i1 false
  br i1 %295, label %296, label %308

296:                                              ; preds = %293
  %297 = getelementptr inbounds %struct.tree_common, ptr %274, i64 0, i32 2
  %298 = load ptr, ptr %297, align 8, !tbaa !5
  %299 = load i64, ptr %298, align 8
  %300 = trunc i64 %299 to i32
  %301 = and i32 %300, 65534
  %302 = icmp eq i32 %301, 6
  br i1 %302, label %307, label %303

303:                                              ; preds = %296
  %304 = and i32 %300, 65535
  %305 = icmp eq i32 %304, 8
  %306 = and i1 %15, %305
  br i1 %306, label %320, label %308

307:                                              ; preds = %296
  br i1 %15, label %320, label %308

308:                                              ; preds = %307, %303, %293
  %309 = load ptr, ptr @global_trees, align 16
  %310 = icmp eq ptr %126, %309
  %311 = select i1 %132, i1 true, i1 %310
  br i1 %311, label %320, label %312

312:                                              ; preds = %308
  %313 = load ptr, ptr %133, align 8, !tbaa !5
  %314 = getelementptr inbounds %struct.tree_type, ptr %313, i64 0, i32 16
  %315 = load ptr, ptr %314, align 8, !tbaa !5
  %316 = icmp ne ptr %315, %274
  %317 = add nsw i32 %277, -14
  %318 = icmp ult i32 %317, 4
  %319 = select i1 %316, i1 %318, i1 false
  br i1 %319, label %340, label %323

320:                                              ; preds = %308, %307, %303
  %321 = phi ptr [ %8, %303 ], [ %8, %307 ], [ %126, %308 ]
  %322 = icmp eq ptr %321, null
  br i1 %322, label %332, label %323

323:                                              ; preds = %312, %320
  %324 = phi ptr [ %321, %320 ], [ %126, %312 ]
  %325 = load ptr, ptr @constructor_fields, align 8, !tbaa !8
  call fastcc void @push_member_name(ptr noundef %325) #20
  %326 = load ptr, ptr %123, align 8, !tbaa !73
  %327 = load ptr, ptr @constructor_fields, align 8, !tbaa !8
  call fastcc void @output_init_element(ptr noundef nonnull %324, ptr noundef %326, i8 noundef zeroext %19, ptr noundef nonnull %274, ptr noundef %327, i32 noundef 1, i8 noundef zeroext %1) #20
  %328 = load ptr, ptr @spelling_base, align 8, !tbaa !8
  %329 = load i32, ptr @constructor_depth, align 4, !tbaa !28
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.spelling, ptr %328, i64 %330
  store ptr %331, ptr @spelling, align 8, !tbaa !8
  br label %338

332:                                              ; preds = %320
  %333 = load ptr, ptr @constructor_fields, align 8, !tbaa !8
  %334 = getelementptr inbounds %struct.tree_decl_common, ptr %333, i64 0, i32 1
  %335 = load ptr, ptr %334, align 8, !tbaa !5
  store ptr %335, ptr @constructor_bit_index, align 8, !tbaa !8
  %336 = getelementptr inbounds %struct.tree_common, ptr %333, i64 0, i32 1
  %337 = load ptr, ptr %336, align 8, !tbaa !5
  store ptr %337, ptr @constructor_unfilled_fields, align 8, !tbaa !8
  br label %338

338:                                              ; preds = %323, %332
  %339 = phi ptr [ %324, %323 ], [ null, %332 ]
  store ptr null, ptr @constructor_fields, align 8, !tbaa !8
  br label %455

340:                                              ; preds = %312
  call void @push_init_level(i32 noundef 1) #20
  br label %259

341:                                              ; preds = %137
  %342 = getelementptr inbounds %struct.tree_common, ptr %138, i64 0, i32 2
  %343 = load ptr, ptr %342, align 8, !tbaa !5
  %344 = getelementptr inbounds %struct.tree_type, ptr %343, i64 0, i32 16
  %345 = load ptr, ptr %344, align 8, !tbaa !5
  %346 = load i64, ptr %345, align 8
  %347 = trunc i64 %346 to i32
  %348 = and i32 %347, 65535
  %349 = icmp eq i32 %348, 15
  %350 = select i1 %127, i1 %349, i1 false
  br i1 %350, label %351, label %363

351:                                              ; preds = %341
  %352 = getelementptr inbounds %struct.tree_common, ptr %345, i64 0, i32 2
  %353 = load ptr, ptr %352, align 8, !tbaa !5
  %354 = load i64, ptr %353, align 8
  %355 = trunc i64 %354 to i32
  %356 = and i32 %355, 65534
  %357 = icmp eq i32 %356, 6
  br i1 %357, label %362, label %358

358:                                              ; preds = %351
  %359 = and i32 %355, 65535
  %360 = icmp eq i32 %359, 8
  %361 = and i1 %15, %360
  br i1 %361, label %375, label %363

362:                                              ; preds = %351
  br i1 %15, label %375, label %363

363:                                              ; preds = %362, %358, %341
  %364 = load ptr, ptr @global_trees, align 16
  %365 = icmp eq ptr %126, %364
  %366 = select i1 %128, i1 true, i1 %365
  br i1 %366, label %375, label %367

367:                                              ; preds = %363
  %368 = load ptr, ptr %129, align 8, !tbaa !5
  %369 = getelementptr inbounds %struct.tree_type, ptr %368, i64 0, i32 16
  %370 = load ptr, ptr %369, align 8, !tbaa !5
  %371 = icmp ne ptr %370, %345
  %372 = add nsw i32 %348, -14
  %373 = icmp ult i32 %372, 4
  %374 = select i1 %371, i1 %373, i1 false
  br i1 %374, label %409, label %375

375:                                              ; preds = %362, %358, %363, %367
  %376 = phi ptr [ %126, %363 ], [ %126, %367 ], [ %8, %358 ], [ %8, %362 ]
  %377 = load ptr, ptr @constructor_max_index, align 8, !tbaa !8
  %378 = icmp eq ptr %377, null
  %379 = load ptr, ptr @constructor_index, align 8, !tbaa !8
  br i1 %378, label %391, label %380

380:                                              ; preds = %375
  %381 = call i32 @tree_int_cst_lt(ptr noundef nonnull %377, ptr noundef %379) #21
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %389

383:                                              ; preds = %380
  %384 = load ptr, ptr @constructor_max_index, align 8, !tbaa !8
  %385 = call i32 @integer_all_onesp(ptr noundef %384) #21
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %389

387:                                              ; preds = %383
  %388 = load ptr, ptr @constructor_index, align 8, !tbaa !8
  br label %391

389:                                              ; preds = %380, %383
  %390 = load i32, ptr @input_location, align 4, !tbaa !28
  call void @pedwarn_init(i32 noundef %390, i32 noundef 0, ptr noundef nonnull @.str.107) #20
  br label %552

391:                                              ; preds = %387, %375
  %392 = phi ptr [ %388, %387 ], [ %379, %375 ]
  %393 = icmp eq ptr %376, null
  br i1 %393, label %403, label %394

394:                                              ; preds = %391
  %395 = call i64 @tree_low_cst(ptr noundef %392, i32 noundef 1) #21
  call fastcc void @push_array_bounds(i64 noundef %395) #20
  %396 = load ptr, ptr %123, align 8, !tbaa !73
  %397 = load ptr, ptr @constructor_index, align 8, !tbaa !8
  call fastcc void @output_init_element(ptr noundef nonnull %376, ptr noundef %396, i8 noundef zeroext %19, ptr noundef nonnull %345, ptr noundef %397, i32 noundef 1, i8 noundef zeroext %1) #20
  %398 = load ptr, ptr @spelling_base, align 8, !tbaa !8
  %399 = load i32, ptr @constructor_depth, align 4, !tbaa !28
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds %struct.spelling, ptr %398, i64 %400
  store ptr %401, ptr @spelling, align 8, !tbaa !8
  %402 = load ptr, ptr @constructor_index, align 8, !tbaa !8
  br label %403

403:                                              ; preds = %394, %391
  %404 = phi ptr [ %402, %394 ], [ %392, %391 ]
  %405 = load i32, ptr @input_location, align 4, !tbaa !28
  %406 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 20), align 16, !tbaa !8
  %407 = call ptr @size_binop_loc(i32 noundef %405, i32 noundef 63, ptr noundef %404, ptr noundef %406) #21
  store ptr %407, ptr @constructor_index, align 8, !tbaa !8
  br i1 %393, label %408, label %455

408:                                              ; preds = %403
  store ptr %407, ptr @constructor_unfilled_index, align 8, !tbaa !8
  br label %455

409:                                              ; preds = %367
  call void @push_init_level(i32 noundef 1) #20
  br label %259

410:                                              ; preds = %137
  %411 = getelementptr inbounds %struct.tree_common, ptr %138, i64 0, i32 2
  %412 = load ptr, ptr %411, align 8, !tbaa !5
  %413 = getelementptr inbounds %struct.tree_type, ptr %412, i64 0, i32 16
  %414 = load ptr, ptr %413, align 8, !tbaa !5
  %415 = load ptr, ptr @constructor_max_index, align 8, !tbaa !8
  %416 = load ptr, ptr @constructor_index, align 8, !tbaa !8
  %417 = call i32 @tree_int_cst_lt(ptr noundef %415, ptr noundef %416) #21
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %419, label %439

419:                                              ; preds = %410
  %420 = icmp eq ptr %126, null
  br i1 %420, label %433, label %421

421:                                              ; preds = %419
  %422 = load i64, ptr %126, align 8
  %423 = and i64 %422, 65535
  %424 = icmp eq i64 %423, 27
  br i1 %424, label %425, label %429

425:                                              ; preds = %421
  %426 = load ptr, ptr @constructor_type, align 8, !tbaa !8
  %427 = getelementptr inbounds %struct.tree_type, ptr %426, i64 0, i32 16
  %428 = load ptr, ptr %427, align 8, !tbaa !5
  br label %429

429:                                              ; preds = %425, %421
  %430 = phi ptr [ %428, %425 ], [ %414, %421 ]
  %431 = load ptr, ptr %123, align 8, !tbaa !73
  %432 = load ptr, ptr @constructor_index, align 8, !tbaa !8
  call fastcc void @output_init_element(ptr noundef nonnull %126, ptr noundef %431, i8 noundef zeroext %19, ptr noundef %430, ptr noundef %432, i32 noundef 1, i8 noundef zeroext %1) #20
  br label %433

433:                                              ; preds = %429, %419
  %434 = load i32, ptr @input_location, align 4, !tbaa !28
  %435 = load ptr, ptr @constructor_index, align 8, !tbaa !8
  %436 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 20), align 16, !tbaa !8
  %437 = call ptr @size_binop_loc(i32 noundef %434, i32 noundef 63, ptr noundef %435, ptr noundef %436) #21
  store ptr %437, ptr @constructor_index, align 8, !tbaa !8
  br i1 %420, label %438, label %455

438:                                              ; preds = %433
  store ptr %437, ptr @constructor_unfilled_index, align 8, !tbaa !8
  br label %455

439:                                              ; preds = %410
  %440 = load i32, ptr @input_location, align 4, !tbaa !28
  call void @pedwarn_init(i32 noundef %440, i32 noundef 0, ptr noundef nonnull @.str.108) #20
  br label %552

441:                                              ; preds = %137
  %442 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %443 = icmp ne ptr %138, %442
  %444 = load ptr, ptr @constructor_fields, align 8
  %445 = icmp eq ptr %444, null
  %446 = select i1 %443, i1 %445, i1 false
  br i1 %446, label %447, label %449

447:                                              ; preds = %441
  %448 = load i32, ptr @input_location, align 4, !tbaa !28
  call void @pedwarn_init(i32 noundef %448, i32 noundef 0, ptr noundef nonnull @.str.109) #20
  br label %552

449:                                              ; preds = %441
  %450 = icmp eq ptr %126, null
  br i1 %450, label %453, label %451

451:                                              ; preds = %449
  %452 = load ptr, ptr %123, align 8, !tbaa !73
  call fastcc void @output_init_element(ptr noundef nonnull %126, ptr noundef %452, i8 noundef zeroext %19, ptr noundef nonnull %138, ptr noundef null, i32 noundef 1, i8 noundef zeroext %1) #20
  br label %453

453:                                              ; preds = %451, %449
  store ptr null, ptr @constructor_fields, align 8, !tbaa !8
  br label %455

454:                                              ; preds = %249, %244, %254
  store ptr %247, ptr @constructor_fields, align 8, !tbaa !8
  br label %455

455:                                              ; preds = %454, %433, %438, %403, %408, %338, %453
  %456 = phi ptr [ %242, %454 ], [ %126, %433 ], [ null, %438 ], [ %376, %403 ], [ null, %408 ], [ %339, %338 ], [ %126, %453 ]
  %457 = load ptr, ptr @constructor_range_stack, align 8, !tbaa !8
  %458 = icmp eq ptr %457, null
  br i1 %458, label %552, label %459

459:                                              ; preds = %455
  store ptr null, ptr @constructor_range_stack, align 8, !tbaa !8
  %460 = getelementptr inbounds %struct.constructor_range_stack, ptr %457, i64 0, i32 2
  %461 = load ptr, ptr @constructor_stack, align 8, !tbaa !8
  %462 = load ptr, ptr %460, align 8, !tbaa !149
  %463 = icmp eq ptr %461, %462
  br i1 %463, label %474, label %464

464:                                              ; preds = %459, %470
  %465 = phi ptr [ %471, %470 ], [ %461, %459 ]
  %466 = getelementptr inbounds %struct.constructor_stack, ptr %465, i64 0, i32 17
  %467 = load i8, ptr %466, align 1, !tbaa !136
  %468 = icmp eq i8 %467, 0
  br i1 %468, label %469, label %470

469:                                              ; preds = %464
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 8096, ptr noundef nonnull @.str.8) #21
  br label %470

470:                                              ; preds = %464, %469
  call void @pop_init_level(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %6, i32 noundef 1) #20
  call void @process_init_element(ptr noundef nonnull byval(%struct.c_expr) align 8 %6, i8 noundef zeroext 1) #20
  %471 = load ptr, ptr @constructor_stack, align 8, !tbaa !8
  %472 = load ptr, ptr %460, align 8, !tbaa !149
  %473 = icmp eq ptr %471, %472
  br i1 %473, label %474, label %464, !llvm.loop !151

474:                                              ; preds = %470, %459
  br label %475

475:                                              ; preds = %474, %491
  %476 = phi ptr [ %493, %491 ], [ %457, %474 ]
  %477 = getelementptr inbounds %struct.constructor_range_stack, ptr %476, i64 0, i32 5
  %478 = load ptr, ptr %477, align 8, !tbaa !152
  %479 = icmp eq ptr %478, null
  br i1 %479, label %485, label %480

480:                                              ; preds = %475
  %481 = getelementptr inbounds %struct.constructor_range_stack, ptr %476, i64 0, i32 4
  %482 = load ptr, ptr %481, align 8, !tbaa !153
  %483 = call i32 @tree_int_cst_equal(ptr noundef %482, ptr noundef nonnull %478) #21
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %494, label %485

485:                                              ; preds = %475, %480
  %486 = load ptr, ptr @constructor_stack, align 8, !tbaa !8
  %487 = getelementptr inbounds %struct.constructor_stack, ptr %486, i64 0, i32 17
  %488 = load i8, ptr %487, align 1, !tbaa !136
  %489 = icmp eq i8 %488, 0
  br i1 %489, label %490, label %491

490:                                              ; preds = %485
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 8103, ptr noundef nonnull @.str.8) #21
  br label %491

491:                                              ; preds = %485, %490
  call void @pop_init_level(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %7, i32 noundef 1) #20
  call void @process_init_element(ptr noundef nonnull byval(%struct.c_expr) align 8 %7, i8 noundef zeroext 1) #20
  %492 = getelementptr inbounds %struct.constructor_range_stack, ptr %476, i64 0, i32 1
  %493 = load ptr, ptr %492, align 8, !tbaa !154
  br label %475, !llvm.loop !155

494:                                              ; preds = %480
  %495 = getelementptr inbounds %struct.constructor_range_stack, ptr %476, i64 0, i32 5
  %496 = getelementptr inbounds %struct.constructor_range_stack, ptr %476, i64 0, i32 4
  %497 = load i32, ptr @input_location, align 4, !tbaa !28
  %498 = load ptr, ptr %496, align 8, !tbaa !153
  %499 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 20), align 16, !tbaa !8
  %500 = call ptr @size_binop_loc(i32 noundef %497, i32 noundef 63, ptr noundef %498, ptr noundef %499) #21
  store ptr %500, ptr %496, align 8, !tbaa !153
  %501 = load ptr, ptr %495, align 8, !tbaa !152
  %502 = call i32 @tree_int_cst_equal(ptr noundef %500, ptr noundef %501) #21
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %509, label %504

504:                                              ; preds = %494
  %505 = getelementptr inbounds %struct.constructor_range_stack, ptr %476, i64 0, i32 1
  %506 = load ptr, ptr %505, align 8, !tbaa !154
  %507 = icmp eq ptr %506, null
  %508 = zext i1 %507 to i32
  br label %509

509:                                              ; preds = %504, %494
  %510 = phi i32 [ 0, %494 ], [ %508, %504 ]
  br label %511

511:                                              ; preds = %548, %509
  %512 = phi ptr [ %476, %509 ], [ %532, %548 ]
  %513 = phi i32 [ %510, %509 ], [ %531, %548 ]
  %514 = getelementptr inbounds %struct.constructor_range_stack, ptr %512, i64 0, i32 4
  %515 = load ptr, ptr %514, align 8, !tbaa !153
  store ptr %515, ptr @constructor_index, align 8, !tbaa !8
  %516 = getelementptr inbounds %struct.constructor_range_stack, ptr %512, i64 0, i32 6
  %517 = load ptr, ptr %516, align 8, !tbaa !156
  store ptr %517, ptr @constructor_fields, align 8, !tbaa !8
  %518 = icmp eq i32 %513, 0
  br i1 %518, label %529, label %519

519:                                              ; preds = %511
  %520 = getelementptr inbounds %struct.constructor_range_stack, ptr %512, i64 0, i32 5
  %521 = load ptr, ptr %520, align 8, !tbaa !152
  %522 = icmp eq ptr %521, null
  br i1 %522, label %529, label %523

523:                                              ; preds = %519
  %524 = getelementptr inbounds %struct.constructor_range_stack, ptr %512, i64 0, i32 3
  %525 = load ptr, ptr %524, align 8, !tbaa !157
  %526 = icmp eq ptr %515, %525
  br i1 %526, label %527, label %529

527:                                              ; preds = %523
  %528 = getelementptr inbounds %struct.constructor_range_stack, ptr %512, i64 0, i32 1
  store ptr null, ptr %528, align 8, !tbaa !154
  br label %529

529:                                              ; preds = %527, %523, %519, %511
  %530 = phi i1 [ true, %527 ], [ false, %523 ], [ false, %519 ], [ true, %511 ]
  %531 = phi i32 [ 0, %527 ], [ 1, %523 ], [ 1, %519 ], [ 0, %511 ]
  %532 = load ptr, ptr %512, align 8, !tbaa !158
  %533 = icmp eq ptr %532, null
  br i1 %533, label %549, label %534

534:                                              ; preds = %529
  call void @push_init_level(i32 noundef 2) #20
  %535 = load ptr, ptr @constructor_stack, align 8, !tbaa !8
  %536 = getelementptr inbounds %struct.constructor_range_stack, ptr %532, i64 0, i32 2
  store ptr %535, ptr %536, align 8, !tbaa !149
  %537 = getelementptr inbounds %struct.constructor_range_stack, ptr %532, i64 0, i32 5
  %538 = load ptr, ptr %537, align 8, !tbaa !152
  %539 = icmp eq ptr %538, null
  br i1 %539, label %548, label %540

540:                                              ; preds = %534
  %541 = getelementptr inbounds %struct.constructor_range_stack, ptr %532, i64 0, i32 4
  %542 = load ptr, ptr %541, align 8, !tbaa !153
  %543 = call i32 @tree_int_cst_equal(ptr noundef %542, ptr noundef nonnull %538) #21
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %548, label %545

545:                                              ; preds = %540
  %546 = getelementptr inbounds %struct.constructor_range_stack, ptr %532, i64 0, i32 3
  %547 = load ptr, ptr %546, align 8, !tbaa !157
  store ptr %547, ptr %541, align 8, !tbaa !153
  br label %548

548:                                              ; preds = %545, %540, %534
  br label %511

549:                                              ; preds = %529
  br i1 %530, label %550, label %551

550:                                              ; preds = %549
  store ptr %457, ptr @constructor_range_stack, align 8, !tbaa !8
  br label %551

551:                                              ; preds = %550, %549
  br label %125

552:                                              ; preds = %455, %171, %144, %439, %389, %263, %447
  store ptr null, ptr @constructor_range_stack, align 8, !tbaa !8
  br label %553

553:                                              ; preds = %55, %552, %54, %46
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pop_init_level(ptr dead_on_unwind noalias nocapture writable sret(%struct.c_expr) align 8 %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.c_expr, align 8
  store ptr null, ptr %0, align 8, !tbaa !41
  %4 = getelementptr inbounds %struct.c_expr, ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct.c_expr, ptr %0, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !73
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = load ptr, ptr @constructor_stack, align 8, !tbaa !8
  %9 = getelementptr inbounds %struct.constructor_stack, ptr %8, i64 0, i32 17
  %10 = load i8, ptr %9, align 1, !tbaa !136
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7, %12
  call void @pop_init_level(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %3, i32 noundef 1) #20
  tail call void @process_init_element(ptr noundef nonnull byval(%struct.c_expr) align 8 %3, i8 noundef zeroext 1) #20
  %13 = load ptr, ptr @constructor_stack, align 8, !tbaa !8
  %14 = getelementptr inbounds %struct.constructor_stack, ptr %13, i64 0, i32 17
  %15 = load i8, ptr %14, align 1, !tbaa !136
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %12, !llvm.loop !159

17:                                               ; preds = %12, %7
  %18 = load ptr, ptr @constructor_range_stack, align 8, !tbaa !8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 6626, ptr noundef nonnull @.str.8) #21
  br label %21

21:                                               ; preds = %20, %17, %2
  store i32 1, ptr @constructor_incremental, align 4, !tbaa !28
  tail call fastcc void @output_pending_init_elements(i32 noundef 1) #20
  %22 = load ptr, ptr @constructor_stack, align 8, !tbaa !8
  %23 = load ptr, ptr @constructor_type, align 8
  %24 = icmp ne ptr %23, null
  %25 = load ptr, ptr @constructor_fields, align 8
  %26 = icmp ne ptr %25, null
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %65

28:                                               ; preds = %21
  %29 = load i64, ptr %23, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 15
  br i1 %31, label %32, label %65

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !5
  %35 = icmp eq ptr %34, null
  br i1 %35, label %65, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_type, ptr %34, i64 0, i32 14
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %65

40:                                               ; preds = %36
  %41 = load ptr, ptr @constructor_unfilled_index, align 8, !tbaa !8
  %42 = tail call i32 @integer_zerop(ptr noundef %41) #21
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  store ptr null, ptr @constructor_type, align 8, !tbaa !8
  br label %102

45:                                               ; preds = %40
  %46 = load ptr, ptr @constructor_type, align 8, !tbaa !8
  %47 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !5
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 6648, ptr noundef nonnull @.str.8) #21
  br label %51

51:                                               ; preds = %45, %50
  %52 = load i32, ptr @constructor_depth, align 4, !tbaa !28
  %53 = icmp sgt i32 %52, 2
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  tail call void @error_init(ptr noundef nonnull @.str.88) #20
  br label %57

55:                                               ; preds = %51
  %56 = load i32, ptr @input_location, align 4, !tbaa !28
  tail call void @pedwarn_init(i32 noundef %56, i32 noundef 834, ptr noundef nonnull @.str.89) #20
  br label %57

57:                                               ; preds = %55, %54
  %58 = load ptr, ptr @constructor_fields, align 8, !tbaa !8
  %59 = getelementptr inbounds %struct.tree_common, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !5
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load ptr, ptr @constructor_type, align 8
  br label %65

64:                                               ; preds = %57
  store ptr null, ptr @constructor_type, align 8, !tbaa !8
  br label %102

65:                                               ; preds = %62, %36, %32, %28, %21
  %66 = phi ptr [ %63, %62 ], [ %23, %36 ], [ %23, %32 ], [ %23, %28 ], [ %23, %21 ]
  %67 = load i32, ptr @warn_missing_field_initializers, align 4, !tbaa !28
  %68 = icmp ne i32 %67, 0
  %69 = icmp ne ptr %66, null
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %71, label %102

71:                                               ; preds = %65
  %72 = load i64, ptr %66, align 8
  %73 = and i64 %72, 65535
  %74 = icmp eq i64 %73, 16
  %75 = load ptr, ptr @constructor_unfilled_fields, align 8
  %76 = icmp ne ptr %75, null
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %78, label %102

78:                                               ; preds = %71, %87
  %79 = phi ptr [ %90, %87 ], [ %75, %71 ]
  %80 = getelementptr inbounds %struct.tree_decl_common, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !5
  %82 = icmp eq ptr %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = tail call i32 @integer_zerop(ptr noundef nonnull %81) #21
  %85 = icmp eq i32 %84, 0
  %86 = load ptr, ptr @constructor_unfilled_fields, align 8, !tbaa !8
  br i1 %85, label %92, label %87

87:                                               ; preds = %83, %78
  %88 = phi ptr [ %79, %78 ], [ %86, %83 ]
  %89 = getelementptr inbounds %struct.tree_common, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !5
  store ptr %90, ptr @constructor_unfilled_fields, align 8, !tbaa !8
  %91 = icmp eq ptr %90, null
  br i1 %91, label %102, label %78, !llvm.loop !160

92:                                               ; preds = %83
  %93 = icmp eq ptr %86, null
  %94 = load i32, ptr @constructor_designated, align 4
  %95 = icmp ne i32 %94, 0
  %96 = select i1 %93, i1 true, i1 %95
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  tail call fastcc void @push_member_name(ptr noundef nonnull %86) #20
  tail call fastcc void @warning_init(i32 noundef 130, ptr noundef nonnull @.str.90) #20
  %98 = load ptr, ptr @spelling_base, align 8, !tbaa !8
  %99 = load i32, ptr @constructor_depth, align 4, !tbaa !28
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.spelling, ptr %98, i64 %100
  store ptr %101, ptr @spelling, align 8, !tbaa !8
  br label %102

102:                                              ; preds = %87, %64, %44, %92, %97, %71, %65
  %103 = getelementptr inbounds %struct.constructor_stack, ptr %22, i64 0, i32 12
  %104 = load ptr, ptr %103, align 8, !tbaa !134
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %102
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %103, i64 24, i1 false), !tbaa.struct !145
  %107 = load ptr, ptr %0, align 8, !tbaa !41
  br label %158

108:                                              ; preds = %102
  %109 = load ptr, ptr @constructor_type, align 8, !tbaa !8
  %110 = icmp eq ptr %109, null
  br i1 %110, label %174, label %111

111:                                              ; preds = %108
  %112 = load i64, ptr %109, align 8
  %113 = trunc i64 %112 to i32
  %114 = and i32 %113, 65534
  %115 = add nsw i32 %114, -14
  %116 = icmp ult i32 %115, 4
  br i1 %116, label %135, label %117

117:                                              ; preds = %111
  %118 = load ptr, ptr @constructor_elements, align 8
  %119 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %118) #20
  switch i32 %119, label %126 [
    i32 0, label %120
    i32 1, label %131
  ]

120:                                              ; preds = %117
  %121 = load i32, ptr @constructor_erroneous, align 4, !tbaa !28
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  tail call void @error_init(ptr noundef nonnull @.str.91) #20
  br label %124

124:                                              ; preds = %123, %120
  %125 = load ptr, ptr @global_trees, align 16, !tbaa !8
  store ptr %125, ptr %0, align 8, !tbaa !41
  br label %158

126:                                              ; preds = %117
  tail call void @error_init(ptr noundef nonnull @.str.92) #20
  %127 = load ptr, ptr @constructor_elements, align 8
  %128 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %127, i32 noundef 0) #20
  %129 = getelementptr inbounds %struct.constructor_elt_d, ptr %128, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !89
  store ptr %130, ptr %0, align 8, !tbaa !41
  br label %158

131:                                              ; preds = %117
  %132 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %118, i32 noundef 0) #20
  %133 = getelementptr inbounds %struct.constructor_elt_d, ptr %132, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !89
  store ptr %134, ptr %0, align 8, !tbaa !41
  br label %158

135:                                              ; preds = %111
  %136 = load i32, ptr @constructor_erroneous, align 4, !tbaa !28
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %135
  %139 = load ptr, ptr @global_trees, align 16, !tbaa !8
  store ptr %139, ptr %0, align 8, !tbaa !41
  br label %158

140:                                              ; preds = %135
  %141 = load ptr, ptr @constructor_elements, align 8, !tbaa !8
  %142 = tail call ptr @build_constructor(ptr noundef nonnull %109, ptr noundef %141) #21
  store ptr %142, ptr %0, align 8, !tbaa !41
  %143 = load i32, ptr @constructor_constant, align 4, !tbaa !28
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %152, label %145

145:                                              ; preds = %140
  %146 = load i64, ptr %142, align 8
  %147 = or i64 %146, 131072
  store i64 %147, ptr %142, align 8
  %148 = load i32, ptr @constructor_simple, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %145
  %151 = or i64 %146, 67239936
  store i64 %151, ptr %142, align 8
  br label %152

152:                                              ; preds = %140, %150, %145
  %153 = load i32, ptr @constructor_nonconst, align 4, !tbaa !28
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %152
  %156 = load i64, ptr %142, align 8
  %157 = or i64 %156, 17179869184
  store i64 %157, ptr %142, align 8
  br label %161

158:                                              ; preds = %152, %106, %138, %124, %131, %126
  %159 = phi ptr [ %139, %138 ], [ %125, %124 ], [ %134, %131 ], [ %130, %126 ], [ %107, %106 ], [ %142, %152 ]
  %160 = icmp eq ptr %159, null
  br i1 %160, label %174, label %161

161:                                              ; preds = %155, %158
  %162 = phi ptr [ %142, %155 ], [ %159, %158 ]
  %163 = load i64, ptr %162, align 8
  %164 = and i64 %163, 65535
  %165 = icmp eq i64 %164, 51
  br i1 %165, label %174, label %166

166:                                              ; preds = %161
  %167 = load i32, ptr @constructor_nonconst, align 4, !tbaa !28
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load i32, ptr %4, align 8, !tbaa !72
  %171 = icmp eq i32 %170, 189
  br i1 %171, label %172, label %174

172:                                              ; preds = %169, %166
  %173 = phi i32 [ 189, %166 ], [ 0, %169 ]
  store i32 %173, ptr %4, align 8, !tbaa !72
  br label %174

174:                                              ; preds = %172, %108, %169, %161, %158
  %175 = phi i1 [ false, %169 ], [ false, %161 ], [ true, %158 ], [ true, %108 ], [ false, %172 ]
  %176 = getelementptr inbounds %struct.constructor_stack, ptr %22, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !120
  store ptr %177, ptr @constructor_type, align 8, !tbaa !8
  %178 = getelementptr inbounds %struct.constructor_stack, ptr %22, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !121
  store ptr %179, ptr @constructor_fields, align 8, !tbaa !8
  %180 = getelementptr inbounds %struct.constructor_stack, ptr %22, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !122
  store ptr %181, ptr @constructor_index, align 8, !tbaa !8
  %182 = getelementptr inbounds %struct.constructor_stack, ptr %22, i64 0, i32 4
  %183 = load ptr, ptr %182, align 8, !tbaa !123
  store ptr %183, ptr @constructor_max_index, align 8, !tbaa !8
  %184 = getelementptr inbounds %struct.constructor_stack, ptr %22, i64 0, i32 5
  %185 = load ptr, ptr %184, align 8, !tbaa !124
  store ptr %185, ptr @constructor_unfilled_index, align 8, !tbaa !8
  %186 = getelementptr inbounds %struct.constructor_stack, ptr %22, i64 0, i32 6
  %187 = load ptr, ptr %186, align 8, !tbaa !125
  store ptr %187, ptr @constructor_unfilled_fields, align 8, !tbaa !8
  %188 = getelementptr inbounds %struct.constructor_stack, ptr %22, i64 0, i32 7
  %189 = load ptr, ptr %188, align 8, !tbaa !126
  store ptr %189, ptr @constructor_bit_index, align 8, !tbaa !8
  %190 = getelementptr inbounds %struct.constructor_stack, ptr %22, i64 0, i32 8
  %191 = load ptr, ptr %190, align 8, !tbaa !127
  store ptr %191, ptr @constructor_elements, align 8, !tbaa !8
  %192 = getelementptr inbounds %struct.constructor_stack, ptr %22, i64 0, i32 14
  %193 = load i8, ptr %192, align 8, !tbaa !128
  %194 = sext i8 %193 to i32
  store i32 %194, ptr @constructor_constant, align 4, !tbaa !28
  %195 = getelementptr inbounds %struct.constructor_stack, ptr %22, i64 0, i32 15
  %196 = load i8, ptr %195, align 1, !tbaa !129
  %197 = sext i8 %196 to i32
  store i32 %197, ptr @constructor_simple, align 4, !tbaa !28
  %198 = getelementptr inbounds %struct.constructor_stack, ptr %22, i64 0, i32 16
  %199 = load i8, ptr %198, align 2, !tbaa !130
  %200 = sext i8 %199 to i32
  store i32 %200, ptr @constructor_nonconst, align 4, !tbaa !28
  %201 = getelementptr inbounds %struct.constructor_stack, ptr %22, i64 0, i32 18
  %202 = load i8, ptr %201, align 4, !tbaa !131
  %203 = sext i8 %202 to i32
  store i32 %203, ptr @constructor_erroneous, align 4, !tbaa !28
  %204 = getelementptr inbounds %struct.constructor_stack, ptr %22, i64 0, i32 20
  %205 = load i8, ptr %204, align 2, !tbaa !138
  %206 = sext i8 %205 to i32
  store i32 %206, ptr @constructor_incremental, align 4, !tbaa !28
  %207 = getelementptr inbounds %struct.constructor_stack, ptr %22, i64 0, i32 21
  %208 = load i8, ptr %207, align 1, !tbaa !139
  %209 = sext i8 %208 to i32
  store i32 %209, ptr @constructor_designated, align 4, !tbaa !28
  %210 = getelementptr inbounds %struct.constructor_stack, ptr %22, i64 0, i32 9
  %211 = load ptr, ptr %210, align 8, !tbaa !132
  store ptr %211, ptr @constructor_pending_elts, align 8, !tbaa !8
  %212 = getelementptr inbounds %struct.constructor_stack, ptr %22, i64 0, i32 11
  %213 = load i32, ptr %212, align 4, !tbaa !133
  store i32 %213, ptr @constructor_depth, align 4, !tbaa !28
  %214 = getelementptr inbounds %struct.constructor_stack, ptr %22, i64 0, i32 17
  %215 = load i8, ptr %214, align 1, !tbaa !136
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %174
  %218 = getelementptr inbounds %struct.constructor_stack, ptr %22, i64 0, i32 13
  %219 = load ptr, ptr %218, align 8, !tbaa !143
  store ptr %219, ptr @constructor_range_stack, align 8, !tbaa !8
  br label %220

220:                                              ; preds = %217, %174
  %221 = load ptr, ptr @spelling_base, align 8, !tbaa !8
  %222 = sext i32 %213 to i64
  %223 = getelementptr inbounds %struct.spelling, ptr %221, i64 %222
  store ptr %223, ptr @spelling, align 8, !tbaa !8
  %224 = load ptr, ptr %22, align 8, !tbaa !117
  store ptr %224, ptr @constructor_stack, align 8, !tbaa !8
  tail call void @free(ptr noundef nonnull %22) #20
  %225 = icmp eq ptr %224, null
  %226 = select i1 %175, i1 %225, i1 false
  br i1 %226, label %227, label %229

227:                                              ; preds = %220
  %228 = load ptr, ptr @global_trees, align 16, !tbaa !8
  store ptr %228, ptr %0, align 8, !tbaa !41
  br label %229

229:                                              ; preds = %227, %220
  ret void
}

; Function Attrs: optsize
declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_init_member(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @constructor_type, align 8, !tbaa !8
  %3 = load i64, ptr %2, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %77 [
    i16 15, label %5
    i16 16, label %34
    i16 17, label %64
  ]

5:                                                ; preds = %1
  %6 = load i32, ptr @constructor_incremental, align 4, !tbaa !28
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr @constructor_unfilled_index, align 8, !tbaa !8
  %10 = tail call i32 @tree_int_cst_lt(ptr noundef %0, ptr noundef %9) #21
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call fastcc void @set_nonincremental_init() #20
  br label %13

13:                                               ; preds = %12, %8, %5
  %14 = load ptr, ptr @constructor_pending_elts, align 8, !tbaa !8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %77, label %16

16:                                               ; preds = %13, %30
  %17 = phi ptr [ %32, %30 ], [ %14, %13 ]
  %18 = getelementptr inbounds %struct.init_node, ptr %17, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !161
  %20 = tail call i32 @tree_int_cst_lt(ptr noundef %0, ptr noundef %19) #21
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load ptr, ptr %18, align 8, !tbaa !161
  %24 = tail call i32 @tree_int_cst_lt(ptr noundef %23, ptr noundef %0) #21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.init_node, ptr %17, i64 0, i32 1
  br label %30

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.init_node, ptr %17, i64 0, i32 5
  br label %74

30:                                               ; preds = %16, %26
  %31 = phi ptr [ %27, %26 ], [ %17, %16 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %77, label %16, !llvm.loop !163

34:                                               ; preds = %1
  %35 = tail call ptr @bit_position(ptr noundef %0) #21
  %36 = load i32, ptr @constructor_incremental, align 4, !tbaa !28
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr @constructor_unfilled_fields, align 8, !tbaa !8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = tail call ptr @bit_position(ptr noundef nonnull %39) #21
  %43 = tail call i32 @tree_int_cst_lt(ptr noundef %35, ptr noundef %42) #21
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41, %38
  tail call fastcc void @set_nonincremental_init() #20
  br label %46

46:                                               ; preds = %45, %41, %34
  %47 = load ptr, ptr @constructor_pending_elts, align 8, !tbaa !8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %77, label %49

49:                                               ; preds = %46, %54
  %50 = phi ptr [ %60, %54 ], [ %47, %46 ]
  %51 = getelementptr inbounds %struct.init_node, ptr %50, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !161
  %53 = icmp eq ptr %52, %0
  br i1 %53, label %62, label %54

54:                                               ; preds = %49
  %55 = tail call ptr @bit_position(ptr noundef %52) #21
  %56 = tail call i32 @tree_int_cst_lt(ptr noundef %35, ptr noundef %55) #21
  %57 = icmp eq i32 %56, 0
  %58 = getelementptr inbounds %struct.init_node, ptr %50, i64 0, i32 1
  %59 = select i1 %57, ptr %58, ptr %50
  %60 = load ptr, ptr %59, align 8, !tbaa !8
  %61 = icmp eq ptr %60, null
  br i1 %61, label %77, label %49, !llvm.loop !164

62:                                               ; preds = %49
  %63 = getelementptr inbounds %struct.init_node, ptr %50, i64 0, i32 5
  br label %74

64:                                               ; preds = %1
  %65 = load ptr, ptr @constructor_elements, align 8
  %66 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %65) #20
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %64
  %69 = tail call fastcc ptr @VEC_constructor_elt_base_last(ptr noundef %65) #20
  %70 = load ptr, ptr %69, align 8, !tbaa !165
  %71 = icmp eq ptr %70, %0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.constructor_elt_d, ptr %69, i64 0, i32 1
  br label %74

74:                                               ; preds = %28, %72, %62
  %75 = phi ptr [ %63, %62 ], [ %73, %72 ], [ %29, %28 ]
  %76 = load ptr, ptr %75, align 8, !tbaa !8
  br label %77

77:                                               ; preds = %54, %30, %74, %46, %13, %68, %64, %1
  %78 = phi ptr [ null, %1 ], [ null, %64 ], [ null, %68 ], [ null, %13 ], [ null, %46 ], [ %76, %74 ], [ null, %30 ], [ null, %54 ]
  ret ptr %78
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @push_member_name(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_identifier, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = tail call ptr @identifier_to_locale(ptr noundef %7) #21
  br label %9

9:                                                ; preds = %1, %5
  %10 = phi ptr [ %8, %5 ], [ @.str.265, %1 ]
  %11 = load ptr, ptr @spelling, align 8, !tbaa !8
  %12 = load ptr, ptr @spelling_base, align 8, !tbaa !8
  %13 = ptrtoint ptr %11 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = lshr exact i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = load i32, ptr @spelling_size, align 4, !tbaa !28
  %19 = icmp sgt i32 %18, %17
  br i1 %19, label %28, label %20

20:                                               ; preds = %9
  %21 = add nsw i32 %18, 10
  store i32 %21, ptr @spelling_size, align 4, !tbaa !28
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 4
  %24 = tail call ptr @xrealloc(ptr noundef %12, i64 noundef %23) #21
  store ptr %24, ptr @spelling_base, align 8, !tbaa !8
  %25 = shl i64 %15, 28
  %26 = ashr i64 %25, 32
  %27 = getelementptr inbounds %struct.spelling, ptr %24, i64 %26
  br label %28

28:                                               ; preds = %20, %9
  %29 = phi ptr [ %27, %20 ], [ %11, %9 ]
  store i32 2, ptr %29, align 8, !tbaa !100
  %30 = getelementptr inbounds %struct.spelling, ptr %29, i64 0, i32 1
  store ptr %10, ptr %30, align 8, !tbaa !5
  %31 = getelementptr inbounds %struct.spelling, ptr %29, i64 1
  store ptr %31, ptr @spelling, align 8, !tbaa !8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @push_array_bounds(i64 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @spelling, align 8, !tbaa !8
  %3 = load ptr, ptr @spelling_base, align 8, !tbaa !8
  %4 = ptrtoint ptr %2 to i64
  %5 = ptrtoint ptr %3 to i64
  %6 = sub i64 %4, %5
  %7 = lshr exact i64 %6, 4
  %8 = trunc i64 %7 to i32
  %9 = load i32, ptr @spelling_size, align 4, !tbaa !28
  %10 = icmp sgt i32 %9, %8
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = add nsw i32 %9, 10
  store i32 %12, ptr @spelling_size, align 4, !tbaa !28
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 4
  %15 = tail call ptr @xrealloc(ptr noundef %3, i64 noundef %14) #21
  store ptr %15, ptr @spelling_base, align 8, !tbaa !8
  %16 = shl i64 %6, 28
  %17 = ashr i64 %16, 32
  %18 = getelementptr inbounds %struct.spelling, ptr %15, i64 %17
  br label %19

19:                                               ; preds = %11, %1
  %20 = phi ptr [ %18, %11 ], [ %2, %1 ]
  store i32 3, ptr %20, align 8, !tbaa !100
  %21 = getelementptr inbounds %struct.spelling, ptr %20, i64 0, i32 1
  store i64 %0, ptr %21, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.spelling, ptr %20, i64 1
  store ptr %22, ptr @spelling, align 8, !tbaa !8
  ret void
}

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_constructor_elt_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !166
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_nonincremental_init() unnamed_addr #0 {
  %1 = load ptr, ptr @constructor_type, align 8, !tbaa !8
  %2 = load i64, ptr %1, align 8
  %3 = trunc i64 %2 to i32
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -15
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %7, label %62

7:                                                ; preds = %0
  %8 = load ptr, ptr @constructor_elements, align 8
  %9 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %8) #20
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %7, %11
  %12 = phi ptr [ %20, %11 ], [ %8, %7 ]
  %13 = phi i64 [ %19, %11 ], [ 0, %7 ]
  %14 = trunc i64 %13 to i32
  %15 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %12, i32 noundef %14) #20
  %16 = getelementptr inbounds %struct.constructor_elt_d, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !89
  %18 = load ptr, ptr %15, align 8, !tbaa !165
  tail call fastcc void @add_pending_init(ptr noundef %18, ptr noundef %17, ptr noundef null, i8 noundef zeroext 0) #20
  %19 = add nuw nsw i64 %13, 1
  %20 = load ptr, ptr @constructor_elements, align 8
  %21 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %20) #20
  %22 = zext i32 %21 to i64
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %11, label %24, !llvm.loop !168

24:                                               ; preds = %11
  %25 = load ptr, ptr @constructor_type, align 8, !tbaa !8
  br label %26

26:                                               ; preds = %24, %7
  %27 = phi ptr [ %25, %24 ], [ %1, %7 ]
  store ptr null, ptr @constructor_elements, align 8, !tbaa !8
  %28 = load i64, ptr %27, align 8
  %29 = trunc i64 %28 to i16
  switch i16 %29, label %61 [
    i16 16, label %30
    i16 15, label %48
  ]

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.tree_type, ptr %27, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = icmp eq ptr %32, null
  br i1 %33, label %59, label %34

34:                                               ; preds = %30, %44
  %35 = phi ptr [ %46, %44 ], [ %32, %30 ]
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %35, i64 0, i32 2
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 524288
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.tree_decl_minimal, ptr %35, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !5
  %47 = icmp eq ptr %46, null
  br i1 %47, label %59, label %34, !llvm.loop !169

48:                                               ; preds = %26
  %49 = getelementptr inbounds %struct.tree_type, ptr %27, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !5
  %51 = icmp eq ptr %50, null
  br i1 %51, label %57, label %52

52:                                               ; preds = %48
  %53 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 2), align 16, !tbaa !8
  %54 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 13
  %55 = load ptr, ptr %54, align 8, !tbaa !5
  %56 = tail call ptr @convert(ptr noundef %53, ptr noundef %55) #21
  store ptr %56, ptr @constructor_unfilled_index, align 8, !tbaa !8
  br label %61

57:                                               ; preds = %48
  %58 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 19), align 8, !tbaa !8
  store ptr %58, ptr @constructor_unfilled_index, align 8, !tbaa !8
  br label %61

59:                                               ; preds = %40, %44, %34, %30
  %60 = phi ptr [ null, %30 ], [ %35, %34 ], [ null, %44 ], [ %35, %40 ]
  store ptr %60, ptr @constructor_unfilled_fields, align 8, !tbaa !8
  br label %61

61:                                               ; preds = %59, %26, %57, %52
  store i32 0, ptr @constructor_incremental, align 4, !tbaa !28
  br label %62

62:                                               ; preds = %0, %61
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @warning_init(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef %0, ptr noundef nonnull @.str.80, ptr noundef %1) #21
  %4 = tail call fastcc i32 @spelling_length() #20
  %5 = add nsw i32 %4, 1
  %6 = sext i32 %5 to i64
  %7 = alloca i8, i64 %6, align 16
  %8 = call fastcc ptr @print_spelling(ptr noundef nonnull %7) #20
  %9 = load i8, ptr %7, align 16, !tbaa !5
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef %0, ptr noundef nonnull @.str.81, ptr noundef nonnull %7) #21
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_nonincremental_init_from_string(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = alloca [2 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #22
  %3 = load ptr, ptr @constructor_type, align 8, !tbaa !8
  %4 = load i64, ptr %3, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 15
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 7257, ptr noundef nonnull @.str.8) #21
  %8 = load ptr, ptr @constructor_type, align 8, !tbaa !8
  br label %9

9:                                                ; preds = %1, %7
  %10 = phi ptr [ %3, %1 ], [ %8, %7 ]
  %11 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.tree_type, ptr %14, i64 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = lshr i32 %16, 3
  %18 = and i32 %17, 127
  %19 = load ptr, ptr @integer_types, align 16, !tbaa !8
  %20 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 1023
  %23 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = getelementptr inbounds %struct.tree_string, ptr %0, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !5
  %27 = sext i32 %26 to i64
  %28 = getelementptr i8, ptr %0, i64 %27
  %29 = getelementptr i8, ptr %28, i64 28
  %30 = icmp sgt i32 %26, 0
  br i1 %30, label %31, label %112

31:                                               ; preds = %9
  %32 = getelementptr inbounds i8, ptr %0, i64 28
  %33 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 19), align 8, !tbaa !8
  %34 = icmp eq i32 %18, 1
  %35 = getelementptr inbounds [2 x i64], ptr %2, i64 0, i64 1
  %36 = icmp eq i32 %18, 0
  %37 = add nsw i32 %18, -1
  %38 = mul nsw i32 %37, %22
  %39 = add nsw i32 %38, 8
  %40 = icmp slt i32 %38, 56
  %41 = icmp eq i32 %39, 64
  %42 = add nsw i32 %38, -57
  %43 = zext nneg i32 %42 to i64
  %44 = shl nuw i64 1, %43
  %45 = add nsw i32 %38, -56
  %46 = zext nneg i32 %45 to i64
  %47 = shl nsw i64 -1, %46
  %48 = add nsw i32 %38, 7
  %49 = zext nneg i32 %48 to i64
  %50 = shl nuw i64 1, %49
  %51 = zext nneg i32 %39 to i64
  %52 = shl nsw i64 -1, %51
  br label %53

53:                                               ; preds = %31, %105
  %54 = phi ptr [ %33, %31 ], [ %110, %105 ]
  %55 = phi ptr [ %32, %31 ], [ %83, %105 ]
  %56 = load ptr, ptr @constructor_max_index, align 8, !tbaa !8
  %57 = tail call i32 @tree_int_cst_lt(ptr noundef %56, ptr noundef %54) #21
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %112

59:                                               ; preds = %53
  br i1 %34, label %60, label %64

60:                                               ; preds = %59
  %61 = getelementptr inbounds i8, ptr %55, i64 1
  %62 = load i8, ptr %55, align 1, !tbaa !5
  %63 = zext i8 %62 to i64
  store i64 %63, ptr %35, align 8, !tbaa !170
  store i64 0, ptr %2, align 16, !tbaa !170
  br label %82

64:                                               ; preds = %59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br i1 %36, label %82, label %65

65:                                               ; preds = %64, %65
  %66 = phi ptr [ %69, %65 ], [ %55, %64 ]
  %67 = phi i32 [ %80, %65 ], [ 0, %64 ]
  %68 = mul nuw nsw i32 %67, %22
  %69 = getelementptr inbounds i8, ptr %66, i64 1
  %70 = load i8, ptr %66, align 1, !tbaa !5
  %71 = zext i8 %70 to i64
  %72 = and i32 %68, 63
  %73 = zext nneg i32 %72 to i64
  %74 = shl i64 %71, %73
  %75 = icmp ult i32 %68, 64
  %76 = zext i1 %75 to i64
  %77 = getelementptr inbounds [2 x i64], ptr %2, i64 0, i64 %76
  %78 = load i64, ptr %77, align 8, !tbaa !170
  %79 = or i64 %74, %78
  store i64 %79, ptr %77, align 8, !tbaa !170
  %80 = add nuw nsw i32 %67, 1
  %81 = icmp eq i32 %80, %18
  br i1 %81, label %82, label %65, !llvm.loop !171

82:                                               ; preds = %65, %64, %60
  %83 = phi ptr [ %61, %60 ], [ %55, %64 ], [ %69, %65 ]
  %84 = load i64, ptr %24, align 8
  %85 = and i64 %84, 2097152
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %105

87:                                               ; preds = %82
  br i1 %40, label %88, label %94

88:                                               ; preds = %87
  %89 = load i64, ptr %35, align 8, !tbaa !170
  %90 = and i64 %89, %50
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %105, label %92

92:                                               ; preds = %88
  %93 = or i64 %89, %52
  store i64 %93, ptr %35, align 8, !tbaa !170
  store i64 -1, ptr %2, align 16, !tbaa !170
  br label %105

94:                                               ; preds = %87
  br i1 %41, label %95, label %99

95:                                               ; preds = %94
  %96 = load i64, ptr %35, align 8, !tbaa !170
  %97 = icmp slt i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  store i64 -1, ptr %2, align 16, !tbaa !170
  br label %105

99:                                               ; preds = %94
  %100 = load i64, ptr %2, align 16, !tbaa !170
  %101 = and i64 %100, %44
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %99
  %104 = or i64 %100, %47
  store i64 %104, ptr %2, align 16, !tbaa !170
  br label %105

105:                                              ; preds = %92, %88, %99, %103, %95, %98, %82
  %106 = load i64, ptr %35, align 8, !tbaa !170
  %107 = load i64, ptr %2, align 16, !tbaa !170
  %108 = tail call ptr @build_int_cst_wide(ptr noundef nonnull %24, i64 noundef %106, i64 noundef %107) #21
  tail call fastcc void @add_pending_init(ptr noundef %54, ptr noundef %108, ptr noundef null, i8 noundef zeroext 0) #20
  %109 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 20), align 16, !tbaa !8
  %110 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %54, ptr noundef %109) #21
  %111 = icmp ult ptr %83, %29
  br i1 %111, label %53, label %112, !llvm.loop !172

112:                                              ; preds = %53, %105, %9
  store i32 0, ptr @constructor_incremental, align 4, !tbaa !28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_pending_init_elements(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @constructor_pending_elts, align 8, !tbaa !8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %108, label %4

4:                                                ; preds = %1
  %5 = icmp ne i32 %0, 0
  br label %6

6:                                                ; preds = %71, %4
  %7 = phi ptr [ %2, %4 ], [ %72, %71 ]
  %8 = load ptr, ptr @constructor_type, align 8, !tbaa !8
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %71 [
    i16 15, label %11
    i16 16, label %53
    i16 17, label %53
  ]

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.init_node, ptr %7, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !161
  %14 = load ptr, ptr @constructor_unfilled_index, align 8, !tbaa !8
  %15 = tail call i32 @tree_int_cst_equal(ptr noundef %13, ptr noundef %14) #21
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.init_node, ptr %7, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !173
  %20 = getelementptr inbounds %struct.init_node, ptr %7, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !174
  %22 = load ptr, ptr @constructor_type, align 8, !tbaa !8
  %23 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = load ptr, ptr @constructor_unfilled_index, align 8, !tbaa !8
  tail call fastcc void @output_init_element(ptr noundef %19, ptr noundef %21, i8 noundef zeroext 1, ptr noundef %24, ptr noundef %25, i32 noundef 0, i8 noundef zeroext 0) #20
  br label %71

26:                                               ; preds = %11
  %27 = load ptr, ptr @constructor_unfilled_index, align 8, !tbaa !8
  %28 = load ptr, ptr %12, align 8, !tbaa !161
  %29 = tail call i32 @tree_int_cst_lt(ptr noundef %27, ptr noundef %28) #21
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load ptr, ptr %7, align 8, !tbaa !175
  %33 = icmp eq ptr %32, null
  br i1 %33, label %102, label %71

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.init_node, ptr %7, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !176
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %71

38:                                               ; preds = %34, %43
  %39 = phi ptr [ %41, %43 ], [ %7, %34 ]
  %40 = getelementptr inbounds %struct.init_node, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !177
  %42 = icmp eq ptr %41, null
  br i1 %42, label %108, label %43

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.init_node, ptr %41, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !176
  %46 = icmp eq ptr %45, %39
  br i1 %46, label %38, label %47, !llvm.loop !178

47:                                               ; preds = %43
  %48 = load ptr, ptr @constructor_unfilled_index, align 8, !tbaa !8
  %49 = getelementptr inbounds %struct.init_node, ptr %41, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !161
  %51 = tail call i32 @tree_int_cst_lt(ptr noundef %48, ptr noundef %50) #21
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %71, label %98

53:                                               ; preds = %6, %6
  %54 = load ptr, ptr @constructor_unfilled_fields, align 8, !tbaa !8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %108, label %56

56:                                               ; preds = %53
  %57 = tail call ptr @bit_position(ptr noundef nonnull %54) #21
  %58 = getelementptr inbounds %struct.init_node, ptr %7, i64 0, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !161
  %60 = tail call ptr @bit_position(ptr noundef %59) #21
  %61 = tail call i32 @tree_int_cst_equal(ptr noundef %60, ptr noundef %57) #21
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %56
  %64 = load ptr, ptr %58, align 8, !tbaa !161
  store ptr %64, ptr @constructor_unfilled_fields, align 8, !tbaa !8
  %65 = getelementptr inbounds %struct.init_node, ptr %7, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !173
  %67 = getelementptr inbounds %struct.init_node, ptr %7, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !174
  %69 = getelementptr inbounds %struct.tree_common, ptr %64, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !5
  tail call fastcc void @output_init_element(ptr noundef %66, ptr noundef %68, i8 noundef zeroext 1, ptr noundef %70, ptr noundef %64, i32 noundef 0, i8 noundef zeroext 0) #20
  br label %71

71:                                               ; preds = %63, %92, %76, %79, %6, %34, %31, %17, %47, %109, %115
  %72 = phi ptr [ %7, %17 ], [ %41, %47 ], [ %32, %31 ], [ %36, %34 ], [ %7, %6 ], [ %81, %79 ], [ %77, %76 ], [ %86, %92 ], [ %7, %63 ], [ %104, %109 ], [ %104, %115 ]
  br label %6, !llvm.loop !179

73:                                               ; preds = %56
  %74 = tail call i32 @tree_int_cst_lt(ptr noundef %57, ptr noundef %60) #21
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = load ptr, ptr %7, align 8, !tbaa !175
  %78 = icmp eq ptr %77, null
  br i1 %78, label %102, label %71

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.init_node, ptr %7, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !176
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %71

83:                                               ; preds = %79, %88
  %84 = phi ptr [ %86, %88 ], [ %7, %79 ]
  %85 = getelementptr inbounds %struct.init_node, ptr %84, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !177
  %87 = icmp eq ptr %86, null
  br i1 %87, label %108, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.init_node, ptr %86, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !176
  %91 = icmp eq ptr %90, %84
  br i1 %91, label %83, label %92, !llvm.loop !180

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.init_node, ptr %86, i64 0, i32 4
  %94 = load ptr, ptr %93, align 8, !tbaa !161
  %95 = tail call ptr @bit_position(ptr noundef %94) #21
  %96 = tail call i32 @tree_int_cst_lt(ptr noundef %57, ptr noundef %95) #21
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %71, label %100

98:                                               ; preds = %47
  %99 = getelementptr inbounds %struct.init_node, ptr %41, i64 0, i32 4
  br label %102

100:                                              ; preds = %92
  %101 = getelementptr inbounds %struct.init_node, ptr %86, i64 0, i32 4
  br label %102

102:                                              ; preds = %76, %31, %100, %98
  %103 = phi ptr [ %99, %98 ], [ %101, %100 ], [ %58, %76 ], [ %12, %31 ]
  %104 = phi ptr [ %41, %98 ], [ %86, %100 ], [ %7, %76 ], [ %7, %31 ]
  %105 = load ptr, ptr %103, align 8, !tbaa !161
  %106 = icmp ne ptr %105, null
  %107 = select i1 %5, i1 %106, i1 false
  br i1 %107, label %109, label %108

108:                                              ; preds = %102, %53, %83, %38, %1
  ret void

109:                                              ; preds = %102
  %110 = load ptr, ptr @constructor_type, align 8, !tbaa !8
  %111 = load i64, ptr %110, align 8
  %112 = trunc i64 %111 to i16
  %113 = add i16 %112, -15
  %114 = icmp ult i16 %113, 3
  br i1 %114, label %115, label %71

115:                                              ; preds = %109
  %116 = zext nneg i16 %113 to i64
  %117 = getelementptr inbounds [3 x ptr], ptr @switch.table.output_pending_init_elements, i64 0, i64 %116
  %118 = load ptr, ptr %117, align 8
  store ptr %105, ptr %118, align 8, !tbaa !8
  br label %71
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_constructor_elt_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #9 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_init_index(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @set_designator(i32 noundef 1) #20, !range !35
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %112

5:                                                ; preds = %2
  store i1 true, ptr @designator_erroneous, align 4
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = and i32 %9, 65535
  %11 = add nsw i32 %10, -6
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %13, label %23

13:                                               ; preds = %5
  %14 = icmp eq ptr %1, null
  br i1 %14, label %24, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = and i32 %19, 65535
  %21 = add nsw i32 %20, -6
  %22 = icmp ult i32 %21, 3
  br i1 %22, label %24, label %23

23:                                               ; preds = %15, %5
  tail call void @error_init(ptr noundef nonnull @.str.93) #20
  br label %112

24:                                               ; preds = %15, %13
  %25 = load i64, ptr %0, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 23
  br i1 %27, label %35, label %28

28:                                               ; preds = %24
  %29 = tail call ptr @c_fully_fold(ptr noundef nonnull %0, i8 noundef zeroext 0, ptr noundef null) #21
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 23
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, ptr @input_location, align 4, !tbaa !28
  tail call void @pedwarn_init(i32 noundef %34, i32 noundef 834, ptr noundef nonnull @.str.94) #20
  br label %35

35:                                               ; preds = %28, %33, %24
  %36 = phi ptr [ %29, %33 ], [ %29, %28 ], [ %0, %24 ]
  br i1 %14, label %53, label %37

37:                                               ; preds = %35
  %38 = load i64, ptr %1, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 23
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = tail call ptr @c_fully_fold(ptr noundef nonnull %1, i8 noundef zeroext 0, ptr noundef null) #21
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 23
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, ptr @input_location, align 4, !tbaa !28
  tail call void @pedwarn_init(i32 noundef %47, i32 noundef 834, ptr noundef nonnull @.str.94) #20
  br label %48

48:                                               ; preds = %41, %46, %37
  %49 = phi ptr [ %42, %46 ], [ %42, %41 ], [ %1, %37 ]
  %50 = load i64, ptr %36, align 8
  %51 = and i64 %50, 65535
  %52 = icmp eq i64 %51, 23
  br i1 %52, label %58, label %57

53:                                               ; preds = %35
  %54 = load i64, ptr %36, align 8
  %55 = and i64 %54, 65535
  %56 = icmp eq i64 %55, 23
  br i1 %56, label %63, label %57

57:                                               ; preds = %53, %48
  tail call void @error_init(ptr noundef nonnull @.str.95) #20
  br label %112

58:                                               ; preds = %48
  %59 = load i64, ptr %49, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 23
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  tail call void @error_init(ptr noundef nonnull @.str.95) #20
  br label %112

63:                                               ; preds = %53, %58
  %64 = phi ptr [ %49, %58 ], [ null, %53 ]
  %65 = load ptr, ptr @constructor_type, align 8, !tbaa !8
  %66 = load i64, ptr %65, align 8
  %67 = and i64 %66, 65535
  %68 = icmp eq i64 %67, 15
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  tail call void @error_init(ptr noundef nonnull @.str.96) #20
  br label %112

70:                                               ; preds = %63
  %71 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %36) #21
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  tail call void @error_init(ptr noundef nonnull @.str.97) #20
  br label %112

74:                                               ; preds = %70
  %75 = load ptr, ptr @constructor_max_index, align 8, !tbaa !8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %75, ptr noundef nonnull %36) #21
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  tail call void @error_init(ptr noundef nonnull @.str.97) #20
  br label %112

81:                                               ; preds = %77, %74
  tail call void @constant_expression_warning(ptr noundef nonnull %36) #21
  br i1 %14, label %100, label %82

82:                                               ; preds = %81
  tail call void @constant_expression_warning(ptr noundef nonnull %64) #21
  %83 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 2), align 16, !tbaa !8
  %84 = tail call ptr @convert(ptr noundef %83, ptr noundef nonnull %36) #21
  store ptr %84, ptr @constructor_index, align 8, !tbaa !8
  %85 = tail call i32 @tree_int_cst_equal(ptr noundef nonnull %36, ptr noundef nonnull %64) #21
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %103

87:                                               ; preds = %82
  %88 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %64, ptr noundef nonnull %36) #21
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  tail call void @error_init(ptr noundef nonnull @.str.98) #20
  br label %103

91:                                               ; preds = %87
  %92 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 2), align 16, !tbaa !8
  %93 = tail call ptr @convert(ptr noundef %92, ptr noundef nonnull %64) #21
  %94 = load ptr, ptr @constructor_max_index, align 8, !tbaa !8
  %95 = icmp eq ptr %94, null
  br i1 %95, label %103, label %96

96:                                               ; preds = %91
  %97 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %94, ptr noundef %93) #21
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %96
  tail call void @error_init(ptr noundef nonnull @.str.99) #20
  br label %103

100:                                              ; preds = %81
  %101 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 2), align 16, !tbaa !8
  %102 = tail call ptr @convert(ptr noundef %101, ptr noundef nonnull %36) #21
  store ptr %102, ptr @constructor_index, align 8, !tbaa !8
  br label %103

103:                                              ; preds = %82, %100, %91, %96, %99, %90
  %104 = phi ptr [ null, %90 ], [ null, %99 ], [ %93, %96 ], [ %93, %91 ], [ null, %100 ], [ null, %82 ]
  %105 = load i32, ptr @designator_depth, align 4, !tbaa !28
  %106 = add nsw i32 %105, 1
  store i32 %106, ptr @designator_depth, align 4, !tbaa !28
  store i1 false, ptr @designator_erroneous, align 4
  %107 = load ptr, ptr @constructor_range_stack, align 8, !tbaa !8
  %108 = icmp ne ptr %107, null
  %109 = icmp ne ptr %104, null
  %110 = select i1 %108, i1 true, i1 %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  tail call fastcc void @push_range_stack(ptr noundef %104) #20
  br label %112

112:                                              ; preds = %62, %73, %111, %103, %80, %69, %2, %23, %57
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @set_designator(i32 noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.c_expr, align 8
  %3 = load ptr, ptr @constructor_type, align 8, !tbaa !8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %57, label %5

5:                                                ; preds = %1
  %6 = load i1, ptr @designator_erroneous, align 4
  br i1 %6, label %57, label %7

7:                                                ; preds = %5
  %8 = load i32, ptr @designator_depth, align 4, !tbaa !28
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %7
  %11 = load ptr, ptr @constructor_range_stack, align 8, !tbaa !8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 6789, ptr noundef nonnull @.str.8) #21
  br label %14

14:                                               ; preds = %10, %13
  %15 = load ptr, ptr @constructor_stack, align 8, !tbaa !8
  %16 = getelementptr inbounds %struct.constructor_stack, ptr %15, i64 0, i32 17
  %17 = load i8, ptr %16, align 1, !tbaa !136
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14, %19
  call void @pop_init_level(ptr dead_on_unwind nonnull writable sret(%struct.c_expr) align 8 %2, i32 noundef 1) #20
  tail call void @process_init_element(ptr noundef nonnull byval(%struct.c_expr) align 8 %2, i8 noundef zeroext 1) #20
  %20 = load ptr, ptr @constructor_stack, align 8, !tbaa !8
  %21 = getelementptr inbounds %struct.constructor_stack, ptr %20, i64 0, i32 17
  %22 = load i8, ptr %21, align 1, !tbaa !136
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %19, !llvm.loop !181

24:                                               ; preds = %19, %14
  store i32 1, ptr @constructor_designated, align 4, !tbaa !28
  br label %57

25:                                               ; preds = %7
  %26 = load i64, ptr %3, align 8
  %27 = trunc i64 %26 to i16
  switch i16 %27, label %37 [
    i16 16, label %28
    i16 17, label %28
    i16 15, label %34
  ]

28:                                               ; preds = %25, %25
  %29 = load ptr, ptr @constructor_fields, align 8, !tbaa !8
  %30 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !5
  %32 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %33 = icmp eq ptr %31, %32
  br i1 %33, label %42, label %38

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !5
  br label %38

37:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 6811, ptr noundef nonnull @.str.8) #21
  unreachable

38:                                               ; preds = %28, %34
  %39 = phi ptr [ %36, %34 ], [ %31, %28 ]
  %40 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 16
  %41 = load ptr, ptr %40, align 8, !tbaa !5
  br label %42

42:                                               ; preds = %38, %28
  %43 = phi ptr [ %31, %28 ], [ %41, %38 ]
  %44 = load i64, ptr %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = and i32 %45, 65535
  %47 = icmp ne i32 %0, 0
  %48 = icmp ne i32 %46, 15
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  tail call void @error_init(ptr noundef nonnull @.str.96) #20
  br label %57

51:                                               ; preds = %42
  %52 = and i32 %45, 65534
  %53 = icmp eq i32 %52, 16
  %54 = select i1 %47, i1 true, i1 %53
  br i1 %54, label %56, label %55

55:                                               ; preds = %51
  tail call void @error_init(ptr noundef nonnull @.str.100) #20
  br label %57

56:                                               ; preds = %51
  store i32 1, ptr @constructor_designated, align 4, !tbaa !28
  tail call void @push_init_level(i32 noundef 2) #20
  br label %57

57:                                               ; preds = %5, %1, %56, %55, %50, %24
  %58 = phi i32 [ 1, %50 ], [ 1, %55 ], [ 0, %56 ], [ 0, %24 ], [ 1, %1 ], [ 1, %5 ]
  ret i32 %58
}

; Function Attrs: optsize
declare i32 @tree_int_cst_sgn(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @push_range_stack(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @ggc_alloc_stat(i64 noundef 56) #21
  %3 = load ptr, ptr @constructor_range_stack, align 8, !tbaa !8
  %4 = getelementptr inbounds %struct.constructor_range_stack, ptr %2, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !154
  store ptr null, ptr %2, align 8, !tbaa !158
  %5 = load ptr, ptr @constructor_fields, align 8, !tbaa !8
  %6 = getelementptr inbounds %struct.constructor_range_stack, ptr %2, i64 0, i32 6
  store ptr %5, ptr %6, align 8, !tbaa !156
  %7 = load ptr, ptr @constructor_index, align 8, !tbaa !8
  %8 = getelementptr inbounds %struct.constructor_range_stack, ptr %2, i64 0, i32 3
  store ptr %7, ptr %8, align 8, !tbaa !157
  %9 = getelementptr inbounds %struct.constructor_range_stack, ptr %2, i64 0, i32 4
  store ptr %7, ptr %9, align 8, !tbaa !153
  %10 = load ptr, ptr @constructor_stack, align 8, !tbaa !8
  %11 = getelementptr inbounds %struct.constructor_range_stack, ptr %2, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !149
  %12 = getelementptr inbounds %struct.constructor_range_stack, ptr %2, i64 0, i32 5
  store ptr %0, ptr %12, align 8, !tbaa !152
  %13 = icmp eq ptr %3, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store ptr %2, ptr %3, align 8, !tbaa !158
  br label %15

15:                                               ; preds = %14, %1
  store ptr %2, ptr @constructor_range_stack, align 8, !tbaa !8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_init_label(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i32 @set_designator(i32 noundef 0) #20, !range !35
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %30

4:                                                ; preds = %1
  store i1 true, ptr @designator_erroneous, align 4
  %5 = load ptr, ptr @constructor_type, align 8, !tbaa !8
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65534
  %8 = icmp eq i64 %7, 16
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @error_init(ptr noundef nonnull @.str.100) #20
  br label %30

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %10, %19
  %15 = phi ptr [ %21, %19 ], [ %12, %10 ]
  %16 = getelementptr inbounds %struct.tree_decl_minimal, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = icmp eq ptr %17, %0
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14, !llvm.loop !182

23:                                               ; preds = %19, %10
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.101, ptr noundef %0) #21
  br label %30

24:                                               ; preds = %14
  store ptr %15, ptr @constructor_fields, align 8, !tbaa !8
  %25 = load i32, ptr @designator_depth, align 4, !tbaa !28
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr @designator_depth, align 4, !tbaa !28
  store i1 false, ptr @designator_erroneous, align 4
  %27 = load ptr, ptr @constructor_range_stack, align 8, !tbaa !8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  tail call fastcc void @push_range_stack(ptr noundef null) #20
  br label %30

30:                                               ; preds = %23, %29, %24, %1, %9
  ret void
}

; Function Attrs: optsize
declare ptr @c_save_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_init_element(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i8 noundef zeroext %6) unnamed_addr #0 {
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #22
  store i8 1, ptr %8, align 1, !tbaa !5
  %9 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %10 = icmp eq ptr %9, %3
  %11 = icmp eq ptr %9, %0
  %12 = or i1 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store i32 1, ptr @constructor_erroneous, align 4, !tbaa !28
  br label %318

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 15
  br i1 %19, label %20, label %48

20:                                               ; preds = %14
  %21 = load i64, ptr %0, align 8
  %22 = trunc i64 %21 to i16
  switch i16 %22, label %48 [
    i16 28, label %23
    i16 119, label %23
  ]

23:                                               ; preds = %20, %20
  %24 = and i64 %21, 65535
  %25 = icmp eq i64 %24, 28
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load i64, ptr %3, align 8
  %28 = and i64 %27, 65535
  %29 = icmp eq i64 %28, 15
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  %33 = load i64, ptr %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = and i32 %34, 65535
  %36 = add nsw i32 %35, -6
  %37 = icmp ult i32 %36, 3
  br i1 %37, label %48, label %38

38:                                               ; preds = %30, %26, %23
  %39 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 16
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 16
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %43 = tail call i32 @comptypes(ptr noundef %40, ptr noundef %42) #20
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, ptr @input_location, align 4, !tbaa !28
  %47 = tail call fastcc ptr @array_to_pointer_conversion(i32 noundef %46, ptr noundef nonnull %0) #20
  br label %48

48:                                               ; preds = %30, %20, %45, %38, %14
  %49 = phi ptr [ %0, %38 ], [ %47, %45 ], [ %0, %14 ], [ %0, %20 ], [ %0, %30 ]
  %50 = load i64, ptr %49, align 8
  %51 = and i64 %50, 65535
  %52 = icmp eq i64 %51, 119
  %53 = load i32, ptr @require_constant_value, align 4
  %54 = icmp ne i32 %53, 0
  %55 = select i1 %52, i1 %54, i1 false
  %56 = load i32, ptr @flag_isoc99, align 4
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %55, i1 %57, i1 false
  %59 = icmp ne i32 %5, 0
  %60 = and i1 %59, %58
  br i1 %60, label %61, label %68

61:                                               ; preds = %48
  %62 = getelementptr inbounds %struct.tree_exp, ptr %49, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !5
  %64 = getelementptr inbounds %struct.tree_exp, ptr %63, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !5
  %66 = getelementptr inbounds %struct.tree_decl_common, ptr %65, i64 0, i32 5
  %67 = load ptr, ptr %66, align 8, !tbaa !5
  br label %68

68:                                               ; preds = %61, %48
  %69 = phi ptr [ %67, %61 ], [ %49, %48 ]
  %70 = tail call fastcc zeroext i8 @null_pointer_constant_p(ptr noundef %69) #20, !range !24
  %71 = load i64, ptr %69, align 8
  %72 = and i64 %71, 65535
  %73 = icmp eq i64 %72, 190
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !5
  %77 = getelementptr inbounds %struct.tree_exp, ptr %69, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !5
  br label %79

79:                                               ; preds = %74, %68
  %80 = phi ptr [ %76, %74 ], [ null, %68 ]
  %81 = phi ptr [ %78, %74 ], [ %69, %68 ]
  %82 = load i32, ptr @require_constant_value, align 4, !tbaa !28
  %83 = trunc i32 %82 to i8
  %84 = call ptr @c_fully_fold(ptr noundef %81, i8 noundef zeroext %83, ptr noundef nonnull %8) #21
  %85 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %86 = icmp eq ptr %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  store i32 1, ptr @constructor_erroneous, align 4, !tbaa !28
  br label %113

88:                                               ; preds = %79
  %89 = load i64, ptr %84, align 8
  %90 = and i64 %89, 131072
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store i32 0, ptr @constructor_constant, align 4, !tbaa !28
  br label %113

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.tree_common, ptr %84, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !5
  %96 = call ptr @initializer_constant_valid_p(ptr noundef nonnull %84, ptr noundef %95) #21
  %97 = icmp eq ptr %96, null
  br i1 %97, label %112, label %98

98:                                               ; preds = %93
  %99 = load ptr, ptr @constructor_type, align 8, !tbaa !8
  %100 = load i64, ptr %99, align 8
  %101 = and i64 %100, 65534
  %102 = icmp eq i64 %101, 16
  br i1 %102, label %103, label %113

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.tree_decl_common, ptr %4, i64 0, i32 2
  %105 = load i64, ptr %104, align 8
  %106 = and i64 %105, 524288
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %103
  %109 = load i64, ptr %84, align 8
  %110 = and i64 %109, 65535
  %111 = icmp eq i64 %110, 23
  br i1 %111, label %113, label %112

112:                                              ; preds = %108, %93
  store i32 0, ptr @constructor_simple, align 4, !tbaa !28
  br label %113

113:                                              ; preds = %98, %92, %112, %108, %103, %87
  %114 = load i8, ptr %8, align 1, !tbaa !5
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i32 1, ptr @constructor_nonconst, align 4, !tbaa !28
  br label %117

117:                                              ; preds = %116, %113
  %118 = getelementptr inbounds %struct.tree_common, ptr %84, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !5
  %120 = call ptr @initializer_constant_valid_p(ptr noundef %84, ptr noundef %119) #21
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %133

122:                                              ; preds = %117
  %123 = load i32, ptr @require_constant_value, align 4, !tbaa !28
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %122
  call void @error_init(ptr noundef nonnull @.str.260) #20
  %126 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %144

127:                                              ; preds = %122
  %128 = load i32, ptr @require_constant_elements, align 4, !tbaa !28
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %144, label %130

130:                                              ; preds = %127
  %131 = load i32, ptr @input_location, align 4, !tbaa !28
  %132 = call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %131, i32 noundef 0, ptr noundef nonnull @.str.262) #21
  br label %144

133:                                              ; preds = %117
  %134 = load i8, ptr %8, align 1, !tbaa !5
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %133
  %137 = load i32, ptr @require_constant_value, align 4, !tbaa !28
  %138 = icmp ne i32 %137, 0
  %139 = load i32, ptr @require_constant_elements, align 4
  %140 = icmp ne i32 %139, 0
  %141 = select i1 %138, i1 true, i1 %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = load i32, ptr @input_location, align 4, !tbaa !28
  call void @pedwarn_init(i32 noundef %143, i32 noundef 0, ptr noundef nonnull @.str.261) #20
  br label %144

144:                                              ; preds = %133, %142, %136, %125, %130, %127
  %145 = phi ptr [ %84, %133 ], [ %84, %142 ], [ %84, %136 ], [ %126, %125 ], [ %84, %130 ], [ %84, %127 ]
  %146 = load i32, ptr @warn_cxx_compat, align 4, !tbaa !28
  %147 = icmp ne i32 %146, 0
  %148 = icmp ne ptr %4, null
  %149 = and i1 %148, %147
  br i1 %149, label %150, label %182

150:                                              ; preds = %144
  %151 = load i64, ptr %4, align 8
  %152 = and i64 %151, 65535
  %153 = icmp eq i64 %152, 31
  br i1 %153, label %154, label %183

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.tree_field_decl, ptr %4, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !5
  %157 = icmp eq ptr %156, null
  br i1 %157, label %183, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.tree_type, ptr %156, i64 0, i32 16
  %160 = load ptr, ptr %159, align 8, !tbaa !5
  %161 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 16
  %162 = load ptr, ptr %161, align 8, !tbaa !5
  %163 = icmp eq ptr %160, %162
  br i1 %163, label %183, label %164

164:                                              ; preds = %158
  %165 = load i64, ptr %156, align 8
  %166 = and i64 %165, 65535
  %167 = icmp eq i64 %166, 6
  br i1 %167, label %168, label %183

168:                                              ; preds = %164
  %169 = icmp eq ptr %1, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %168
  %171 = getelementptr inbounds %struct.tree_common, ptr %145, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !5
  br label %173

173:                                              ; preds = %168, %170
  %174 = phi ptr [ %172, %170 ], [ %1, %168 ]
  %175 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %176 = icmp eq ptr %174, %175
  br i1 %176, label %183, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.tree_type, ptr %174, i64 0, i32 16
  %179 = load ptr, ptr %178, align 8, !tbaa !5
  %180 = icmp eq ptr %179, %160
  br i1 %180, label %183, label %181

181:                                              ; preds = %177
  call fastcc void @warning_init(i32 noundef 49, ptr noundef nonnull @.str.206) #20
  br label %183

182:                                              ; preds = %144
  br i1 %148, label %183, label %204

183:                                              ; preds = %150, %154, %158, %164, %181, %177, %173, %182
  %184 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %185 = load ptr, ptr %184, align 8, !tbaa !5
  %186 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %187 = icmp eq ptr %185, %186
  br i1 %187, label %318, label %188

188:                                              ; preds = %183
  %189 = getelementptr inbounds %struct.tree_type, ptr %185, i64 0, i32 2
  %190 = load ptr, ptr %189, align 8, !tbaa !5
  %191 = icmp eq ptr %190, null
  br i1 %191, label %204, label %192

192:                                              ; preds = %188
  %193 = call i32 @integer_zerop(ptr noundef nonnull %190) #21
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %204, label %195

195:                                              ; preds = %192
  %196 = load ptr, ptr @constructor_type, align 8, !tbaa !8
  %197 = load i64, ptr %196, align 8
  %198 = and i64 %197, 65535
  %199 = icmp eq i64 %198, 15
  br i1 %199, label %318, label %200

200:                                              ; preds = %195
  %201 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !5
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %318

204:                                              ; preds = %200, %192, %188, %182
  %205 = icmp eq ptr %80, null
  br i1 %205, label %208, label %206

206:                                              ; preds = %204
  %207 = call ptr @build1_stat(i32 noundef 190, ptr noundef nonnull %80, ptr noundef %145) #21
  br label %208

208:                                              ; preds = %206, %204
  %209 = phi ptr [ %207, %206 ], [ %145, %204 ]
  %210 = load i32, ptr @input_location, align 4, !tbaa !28
  %211 = load i32, ptr @require_constant_value, align 4, !tbaa !28
  %212 = call fastcc ptr @digest_init(i32 noundef %210, ptr noundef %3, ptr noundef %209, ptr noundef %1, i8 noundef zeroext %70, i8 noundef zeroext %2, i32 noundef %211) #20
  %213 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %214 = icmp eq ptr %212, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %208
  store i32 1, ptr @constructor_erroneous, align 4, !tbaa !28
  br label %318

216:                                              ; preds = %208
  %217 = load i32, ptr @require_constant_value, align 4, !tbaa !28
  %218 = icmp ne i32 %217, 0
  %219 = load i32, ptr @require_constant_elements, align 4
  %220 = icmp ne i32 %219, 0
  %221 = select i1 %218, i1 true, i1 %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %216
  call void @constant_expression_warning(ptr noundef %212) #21
  br label %223

223:                                              ; preds = %216, %222
  %224 = load ptr, ptr @constructor_type, align 8, !tbaa !8
  %225 = load i64, ptr %224, align 8
  %226 = and i64 %225, 65535
  %227 = icmp eq i64 %226, 15
  br i1 %227, label %228, label %247

228:                                              ; preds = %223
  %229 = load i32, ptr @constructor_incremental, align 4, !tbaa !28
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %246, label %231

231:                                              ; preds = %228
  %232 = load ptr, ptr @constructor_unfilled_index, align 8, !tbaa !8
  %233 = call i32 @tree_int_cst_equal(ptr noundef %4, ptr noundef %232) #21
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %238, label %235

235:                                              ; preds = %231
  %236 = load ptr, ptr @constructor_type, align 8, !tbaa !8
  %237 = load i64, ptr %236, align 8
  br label %247

238:                                              ; preds = %231
  %239 = load i32, ptr @constructor_incremental, align 4, !tbaa !28
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %246, label %241

241:                                              ; preds = %238
  %242 = load ptr, ptr @constructor_unfilled_index, align 8, !tbaa !8
  %243 = call i32 @tree_int_cst_lt(ptr noundef %4, ptr noundef %242) #21
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %241
  call fastcc void @set_nonincremental_init() #20
  br label %246

246:                                              ; preds = %228, %245, %241, %238
  call fastcc void @add_pending_init(ptr noundef %4, ptr noundef %212, ptr noundef %1, i8 noundef zeroext %6) #20
  br label %318

247:                                              ; preds = %235, %223
  %248 = phi i64 [ %237, %235 ], [ %225, %223 ]
  %249 = trunc i64 %248 to i16
  switch i16 %249, label %287 [
    i16 16, label %250
    i16 17, label %268
  ]

250:                                              ; preds = %247
  %251 = load i32, ptr @constructor_incremental, align 4, !tbaa !28
  %252 = icmp ne i32 %251, 0
  %253 = load ptr, ptr @constructor_unfilled_fields, align 8
  %254 = icmp eq ptr %253, %4
  %255 = select i1 %252, i1 %254, i1 false
  br i1 %255, label %287, label %256

256:                                              ; preds = %250
  %257 = icmp eq i32 %251, 0
  br i1 %257, label %267, label %258

258:                                              ; preds = %256
  %259 = icmp eq ptr %253, null
  br i1 %259, label %266, label %260

260:                                              ; preds = %258
  %261 = call ptr @bit_position(ptr noundef %4) #21
  %262 = load ptr, ptr @constructor_unfilled_fields, align 8, !tbaa !8
  %263 = call ptr @bit_position(ptr noundef %262) #21
  %264 = call i32 @tree_int_cst_lt(ptr noundef %261, ptr noundef %263) #21
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %267, label %266

266:                                              ; preds = %260, %258
  call fastcc void @set_nonincremental_init() #20
  br label %267

267:                                              ; preds = %266, %260, %256
  call fastcc void @add_pending_init(ptr noundef %4, ptr noundef %212, ptr noundef %1, i8 noundef zeroext %6) #20
  br label %318

268:                                              ; preds = %247
  %269 = load ptr, ptr @constructor_elements, align 8
  %270 = call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %269) #20
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %287, label %272

272:                                              ; preds = %268
  %273 = icmp eq i8 %6, 0
  br i1 %273, label %274, label %286

274:                                              ; preds = %272
  %275 = call fastcc ptr @VEC_constructor_elt_base_last(ptr noundef %269) #20
  %276 = getelementptr inbounds %struct.constructor_elt_d, ptr %275, i64 0, i32 1
  %277 = load ptr, ptr %276, align 8, !tbaa !89
  %278 = load i64, ptr %277, align 8
  %279 = and i64 %278, 65536
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %282, label %281

281:                                              ; preds = %274
  call fastcc void @warning_init(i32 noundef 0, ptr noundef nonnull @.str.266) #20
  br label %286

282:                                              ; preds = %274
  %283 = load i32, ptr @warn_override_init, align 4, !tbaa !28
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %286, label %285

285:                                              ; preds = %282
  call fastcc void @warning_init(i32 noundef 154, ptr noundef nonnull @.str.267) #20
  br label %286

286:                                              ; preds = %281, %285, %282, %272
  store ptr null, ptr @constructor_elements, align 8, !tbaa !8
  br label %287

287:                                              ; preds = %247, %250, %286, %268
  %288 = call fastcc ptr @VEC_constructor_elt_gc_safe_push() #20
  store ptr %4, ptr %288, align 8, !tbaa !165
  %289 = getelementptr inbounds %struct.constructor_elt_d, ptr %288, i64 0, i32 1
  store ptr %212, ptr %289, align 8, !tbaa !89
  %290 = load ptr, ptr @constructor_type, align 8, !tbaa !8
  %291 = load i64, ptr %290, align 8
  %292 = trunc i64 %291 to i16
  switch i16 %292, label %316 [
    i16 15, label %293
    i16 16, label %298
    i16 17, label %314
  ]

293:                                              ; preds = %287
  %294 = load i32, ptr @input_location, align 4, !tbaa !28
  %295 = load ptr, ptr @constructor_unfilled_index, align 8, !tbaa !8
  %296 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 20), align 16, !tbaa !8
  %297 = call ptr @size_binop_loc(i32 noundef %294, i32 noundef 63, ptr noundef %295, ptr noundef %296) #21
  store ptr %297, ptr @constructor_unfilled_index, align 8, !tbaa !8
  br label %316

298:                                              ; preds = %287
  %299 = load ptr, ptr @constructor_unfilled_fields, align 8, !tbaa !8
  br label %300

300:                                              ; preds = %310, %298
  %301 = phi ptr [ %299, %298 ], [ %303, %310 ]
  %302 = getelementptr inbounds %struct.tree_common, ptr %301, i64 0, i32 1
  %303 = load ptr, ptr %302, align 8, !tbaa !5
  %304 = icmp eq ptr %303, null
  br i1 %304, label %315, label %305

305:                                              ; preds = %300
  %306 = getelementptr inbounds %struct.tree_decl_common, ptr %303, i64 0, i32 2
  %307 = load i64, ptr %306, align 8
  %308 = and i64 %307, 524288
  %309 = icmp eq i64 %308, 0
  br i1 %309, label %315, label %310

310:                                              ; preds = %305
  %311 = getelementptr inbounds %struct.tree_decl_minimal, ptr %303, i64 0, i32 3
  %312 = load ptr, ptr %311, align 8, !tbaa !5
  %313 = icmp eq ptr %312, null
  br i1 %313, label %300, label %315, !llvm.loop !183

314:                                              ; preds = %287
  store ptr null, ptr @constructor_unfilled_fields, align 8, !tbaa !8
  br label %316

315:                                              ; preds = %310, %300, %305
  store ptr %303, ptr @constructor_unfilled_fields, align 8, !tbaa !8
  br label %316

316:                                              ; preds = %315, %287, %314, %293
  br i1 %59, label %317, label %318

317:                                              ; preds = %316
  call fastcc void @output_pending_init_elements(i32 noundef 0) #20
  br label %318

318:                                              ; preds = %316, %317, %183, %195, %200, %267, %246, %215, %13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #22
  ret void
}

; Function Attrs: optsize
declare ptr @size_binop_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @bit_position(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @real_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_all_onesp(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_asm_stmt(ptr noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 134217728
  %5 = icmp eq i64 %4, 0
  %6 = icmp ne ptr %0, null
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = or i64 %3, 134217728
  store i64 %9, ptr %1, align 8
  br label %10

10:                                               ; preds = %8, %2
  %11 = tail call ptr @add_stmt(ptr noundef nonnull %1) #21
  ret ptr %11
}

; Function Attrs: optsize
declare ptr @add_stmt(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_asm_expr(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #22
  %12 = tail call i32 @list_length(ptr noundef %3) #21
  %13 = tail call i32 @list_length(ptr noundef %2) #21
  %14 = sext i32 %13 to i64
  %15 = shl nsw i64 %14, 3
  %16 = alloca i8, i64 %15, align 16
  %17 = tail call ptr @resolve_asm_operand_names(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %5) #21
  %18 = icmp eq ptr %2, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %66, %7
  %20 = icmp eq ptr %3, null
  br i1 %20, label %104, label %72

21:                                               ; preds = %7, %66
  %22 = phi i64 [ %68, %66 ], [ 0, %7 ]
  %23 = phi ptr [ %70, %66 ], [ %2, %7 ]
  %24 = getelementptr inbounds %struct.tree_list, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = call ptr @tree_strip_nop_conversions(ptr noundef %25) #21
  %27 = call fastcc i32 @lvalue_or_else(ptr noundef %26, i32 noundef 4) #20, !range !35
  %28 = icmp eq i32 %27, 0
  %29 = load ptr, ptr @global_trees, align 16
  %30 = select i1 %28, ptr %29, ptr %26
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %46, label %32

32:                                               ; preds = %21
  %33 = load i64, ptr %30, align 8
  %34 = and i64 %33, 1048576
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 1048576
  %41 = icmp ne i64 %40, 0
  %42 = and i64 %39, 17179934718
  %43 = icmp eq i64 %42, 17179869200
  %44 = or i1 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %36, %32
  call fastcc void @readonly_error(ptr noundef nonnull %30, i32 noundef 4) #20
  br label %46

46:                                               ; preds = %36, %45, %21
  %47 = getelementptr inbounds %struct.tree_list, ptr %23, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !5
  %49 = getelementptr inbounds %struct.tree_list, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !5
  %51 = getelementptr inbounds %struct.tree_string, ptr %50, i64 0, i32 2
  store ptr %51, ptr %8, align 8, !tbaa !8
  %52 = getelementptr inbounds ptr, ptr %16, i64 %22
  store ptr %51, ptr %52, align 8, !tbaa !8
  %53 = trunc i64 %22 to i32
  %54 = call zeroext i8 @parse_output_constraint(ptr noundef nonnull %8, i32 noundef %53, i32 noundef %12, i32 noundef %13, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #21
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %46
  %57 = load i8, ptr %10, align 1, !tbaa !5
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = call zeroext i8 @c_mark_addressable(ptr noundef %30) #20, !range !24
  %61 = icmp eq i8 %60, 0
  %62 = load ptr, ptr @global_trees, align 16
  %63 = select i1 %61, ptr %62, ptr %30
  br label %66

64:                                               ; preds = %46
  %65 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %66

66:                                               ; preds = %59, %56, %64
  %67 = phi ptr [ %30, %56 ], [ %65, %64 ], [ %63, %59 ]
  store ptr %67, ptr %24, align 8, !tbaa !5
  %68 = add nuw i64 %22, 1
  %69 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !5
  %71 = icmp eq ptr %70, null
  br i1 %71, label %19, label %21, !llvm.loop !184

72:                                               ; preds = %19, %98
  %73 = phi ptr [ %102, %98 ], [ %3, %19 ]
  %74 = phi i32 [ %100, %98 ], [ 0, %19 ]
  %75 = getelementptr inbounds %struct.tree_list, ptr %73, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !5
  %77 = getelementptr inbounds %struct.tree_list, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !5
  %79 = getelementptr inbounds %struct.tree_string, ptr %78, i64 0, i32 2
  store ptr %79, ptr %8, align 8, !tbaa !8
  %80 = getelementptr inbounds %struct.tree_list, ptr %73, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !5
  %82 = call zeroext i8 @parse_input_constraint(ptr noundef nonnull %8, i32 noundef %74, i32 noundef %12, i32 noundef %13, i32 noundef 0, ptr noundef nonnull %16, ptr noundef nonnull %9, ptr noundef nonnull %10) #21
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %72
  %85 = load i8, ptr %10, align 1, !tbaa !5
  %86 = icmp eq i8 %85, 0
  %87 = load i8, ptr %9, align 1
  %88 = icmp ne i8 %87, 0
  %89 = select i1 %86, i1 %88, i1 false
  br i1 %89, label %90, label %98

90:                                               ; preds = %84
  %91 = call ptr @tree_strip_nop_conversions(ptr noundef %81) #21
  %92 = call zeroext i8 @c_mark_addressable(ptr noundef %91) #20, !range !24
  %93 = icmp eq i8 %92, 0
  %94 = load ptr, ptr @global_trees, align 16
  %95 = select i1 %93, ptr %94, ptr %91
  br label %98

96:                                               ; preds = %72
  %97 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %98

98:                                               ; preds = %90, %84, %96
  %99 = phi ptr [ %81, %84 ], [ %97, %96 ], [ %95, %90 ]
  store ptr %99, ptr %80, align 8, !tbaa !5
  %100 = add nuw nsw i32 %74, 1
  %101 = getelementptr inbounds %struct.tree_common, ptr %73, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !5
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %72, !llvm.loop !185

104:                                              ; preds = %98, %19
  %105 = icmp eq ptr %5, null
  %106 = or i1 %18, %105
  br i1 %106, label %108, label %107

107:                                              ; preds = %104
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 8245, ptr noundef nonnull @.str.8) #21
  br label %108

108:                                              ; preds = %104, %107
  %109 = call ptr (i32, i32, ...) @build_stmt(i32 noundef %0, i32 noundef 140, ptr noundef %17, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #21
  %110 = load i64, ptr %109, align 8
  %111 = and i8 %6, 1
  %112 = zext nneg i8 %111 to i64
  %113 = shl nuw nsw i64 %112, 26
  %114 = and i64 %110, -201326593
  %115 = or disjoint i64 %114, %113
  %116 = icmp eq i32 %13, 0
  %117 = select i1 %116, i64 134217728, i64 0
  %118 = or disjoint i64 %115, %117
  store i64 %118, ptr %109, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  ret ptr %109
}

; Function Attrs: optsize
declare ptr @resolve_asm_operand_names(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @parse_output_constraint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @parse_input_constraint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_stmt(i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @c_finish_goto_label(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @lookup_label_for_goto(i32 noundef %0, ptr noundef %1) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = load i64, ptr %3, align 8
  %7 = or i64 %6, 16777216
  store i64 %7, ptr %3, align 8
  %8 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !8
  %9 = tail call ptr @build1_stat(i32 noundef 134, ptr noundef %8, ptr noundef nonnull %3) #21
  %10 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 1
  store i32 %0, ptr %10, align 8, !tbaa !5
  %11 = tail call ptr @add_stmt(ptr noundef %9) #21
  br label %12

12:                                               ; preds = %2, %5
  %13 = phi ptr [ %11, %5 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @lookup_label_for_goto(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @c_finish_goto_ptr(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 834, ptr noundef nonnull @.str.110) #21
  %4 = tail call ptr @c_fully_fold(ptr noundef %1, i8 noundef zeroext 0, ptr noundef null) #21
  %5 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !8
  %6 = tail call ptr @convert(ptr noundef %5, ptr noundef %4) #21
  %7 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !8
  %8 = tail call ptr @build1_stat(i32 noundef 134, ptr noundef %7, ptr noundef %6) #21
  %9 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 1
  store i32 %0, ptr %9, align 8, !tbaa !5
  %10 = tail call ptr @add_stmt(ptr noundef %8) #21
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @c_finish_return(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @current_function_decl, align 8, !tbaa !8
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = load i64, ptr %4, align 8
  %10 = and i64 %9, 524288
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.111) #21
  br label %14

14:                                               ; preds = %12, %3
  %15 = icmp eq ptr %1, null
  br i1 %15, label %35, label %16

16:                                               ; preds = %14
  %17 = tail call fastcc zeroext i8 @null_pointer_constant_p(ptr noundef nonnull %1) #20, !range !24
  %18 = load i64, ptr %1, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 190
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = tail call ptr @c_fully_fold(ptr noundef nonnull %1, i8 noundef zeroext 0, ptr noundef null) #21
  br label %32

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = tail call ptr @c_fully_fold(ptr noundef %27, i8 noundef zeroext 0, ptr noundef null) #21
  %29 = icmp eq ptr %25, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %23
  %31 = tail call ptr @build1_stat(i32 noundef 190, ptr noundef nonnull %25, ptr noundef %28) #21
  br label %32

32:                                               ; preds = %21, %23, %30
  %33 = phi ptr [ %31, %30 ], [ %28, %23 ], [ %22, %21 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %49

35:                                               ; preds = %14, %32
  store i32 1, ptr @current_function_returns_null, align 4, !tbaa !28
  %36 = load i32, ptr @warn_return_type, align 4, !tbaa !28
  %37 = icmp ne i32 %36, 0
  %38 = load i32, ptr @flag_isoc99, align 4
  %39 = icmp ne i32 %38, 0
  %40 = select i1 %37, i1 true, i1 %39
  %41 = icmp ne ptr %8, null
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %133

43:                                               ; preds = %35
  %44 = load i64, ptr %8, align 8
  %45 = and i64 %44, 65535
  %46 = icmp eq i64 %45, 19
  br i1 %46, label %133, label %47

47:                                               ; preds = %43
  %48 = select i1 %39, i32 0, i32 172
  tail call void (i32, i32, ptr, ...) @pedwarn_c99(i32 noundef %0, i32 noundef %48, ptr noundef nonnull @.str.112) #21
  br label %133

49:                                               ; preds = %32
  %50 = icmp eq ptr %8, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %49
  %52 = load i64, ptr %8, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 19
  br i1 %54, label %55, label %65

55:                                               ; preds = %51, %49
  store i32 1, ptr @current_function_returns_null, align 4, !tbaa !28
  %56 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !5
  %58 = load i64, ptr %57, align 8
  %59 = and i64 %58, 65535
  %60 = icmp eq i64 %59, 19
  br i1 %60, label %63, label %61

61:                                               ; preds = %55
  %62 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.113) #21
  br label %133

63:                                               ; preds = %55
  %64 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 834, ptr noundef nonnull @.str.114) #21
  br label %133

65:                                               ; preds = %51
  %66 = tail call fastcc ptr @convert_for_assignment(i32 noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %33, ptr noundef %2, i32 noundef 3, i8 noundef zeroext %17, ptr noundef null, ptr noundef null, i32 noundef 0) #20
  %67 = load ptr, ptr @current_function_decl, align 8, !tbaa !8
  %68 = getelementptr inbounds %struct.tree_decl_non_common, ptr %67, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !5
  store i32 1, ptr @current_function_returns_value, align 4, !tbaa !28
  %70 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %71 = icmp eq ptr %66, %70
  br i1 %71, label %140, label %72

72:                                               ; preds = %65
  %73 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !5
  %75 = tail call ptr @convert(ptr noundef %74, ptr noundef %66) #21
  br label %76

76:                                               ; preds = %80, %72
  %77 = phi ptr [ %75, %72 ], [ %82, %80 ]
  %78 = load i64, ptr %77, align 8
  %79 = trunc i64 %78 to i16
  switch i16 %79, label %126 [
    i16 116, label %80
    i16 113, label %80
    i16 117, label %80
    i16 63, label %80
    i16 66, label %80
    i16 64, label %83
    i16 121, label %99
  ]

80:                                               ; preds = %97, %76, %76, %76, %76, %76
  %81 = getelementptr inbounds %struct.tree_exp, ptr %77, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !5
  br label %76

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct.tree_exp, ptr %77, i64 1
  br label %85

85:                                               ; preds = %95, %83
  %86 = phi ptr [ %84, %83 ], [ %96, %95 ]
  %87 = load ptr, ptr %86, align 8, !tbaa !5
  %88 = getelementptr inbounds %struct.tree_common, ptr %87, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !5
  %90 = load i64, ptr %89, align 8
  %91 = trunc i64 %90 to i16
  switch i16 %91, label %92 [
    i16 10, label %126
    i16 12, label %126
  ]

92:                                               ; preds = %85
  %93 = load i64, ptr %87, align 8
  %94 = trunc i64 %93 to i16
  switch i16 %94, label %97 [
    i16 116, label %95
    i16 113, label %95
    i16 117, label %95
  ]

95:                                               ; preds = %92, %92, %92
  %96 = getelementptr inbounds %struct.tree_exp, ptr %87, i64 0, i32 3
  br label %85, !llvm.loop !186

97:                                               ; preds = %92
  %98 = icmp eq i16 %91, 10
  br i1 %98, label %126, label %80

99:                                               ; preds = %76, %99
  %100 = phi ptr [ %102, %99 ], [ %77, %76 ]
  %101 = getelementptr inbounds %struct.tree_exp, ptr %100, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !5
  %103 = load i64, ptr %102, align 8
  %104 = and i64 %103, 65535
  %105 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !28
  %107 = icmp ne i32 %106, 4
  %108 = icmp eq i64 %104, 47
  %109 = or i1 %107, %108
  br i1 %109, label %110, label %99, !llvm.loop !187

110:                                              ; preds = %99
  %111 = icmp eq i32 %106, 3
  br i1 %111, label %112, label %126

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.tree_decl_common, ptr %102, i64 0, i32 2
  %114 = load i64, ptr %113, align 8
  %115 = and i64 %114, 33554432
  %116 = and i64 %103, 67108864
  %117 = or disjoint i64 %115, %116
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.tree_decl_minimal, ptr %102, i64 0, i32 4
  %121 = load ptr, ptr %120, align 8, !tbaa !5
  %122 = load ptr, ptr @current_function_decl, align 8, !tbaa !8
  %123 = icmp eq ptr %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %119
  %125 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.115) #21
  br label %126

126:                                              ; preds = %97, %76, %85, %85, %124, %119, %112, %110
  %127 = load ptr, ptr %73, align 8, !tbaa !5
  %128 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %127, ptr noundef %69, ptr noundef %75) #21
  %129 = getelementptr inbounds %struct.tree_exp, ptr %128, i64 0, i32 1
  store i32 %0, ptr %129, align 8, !tbaa !5
  %130 = load i32, ptr @warn_sequence_point, align 4, !tbaa !28
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %126
  tail call void @verify_sequence_points(ptr noundef nonnull %128) #21
  br label %133

133:                                              ; preds = %132, %126, %63, %61, %43, %47, %35
  %134 = phi ptr [ %33, %61 ], [ %33, %63 ], [ null, %47 ], [ null, %43 ], [ null, %35 ], [ %128, %126 ], [ %128, %132 ]
  %135 = phi i64 [ 0, %61 ], [ 0, %63 ], [ 8388608, %47 ], [ 0, %43 ], [ 0, %35 ], [ 0, %126 ], [ 0, %132 ]
  %136 = tail call ptr (i32, i32, ...) @build_stmt(i32 noundef %0, i32 noundef 135, ptr noundef %134) #21
  %137 = load i64, ptr %136, align 8
  %138 = or i64 %137, %135
  store i64 %138, ptr %136, align 8
  %139 = tail call ptr @add_stmt(ptr noundef nonnull %136) #21
  br label %140

140:                                              ; preds = %65, %133
  %141 = phi ptr [ %139, %133 ], [ null, %65 ]
  ret ptr %141
}

; Function Attrs: optsize
declare void @pedwarn_c99(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @verify_sequence_points(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @c_start_case(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.expanded_location, align 8
  %5 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %6 = icmp eq ptr %5, %2
  br i1 %6, label %43, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i32
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -6
  %14 = icmp ult i32 %13, 3
  br i1 %14, label %22, label %15

15:                                               ; preds = %7
  %16 = icmp eq ptr %9, %5
  br i1 %16, label %19, label %17

17:                                               ; preds = %15
  tail call void (i32, ptr, ...) @error_at(i32 noundef %1, ptr noundef nonnull @.str.116) #21
  %18 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi ptr [ %18, %17 ], [ %5, %15 ]
  %21 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !8
  br label %43

22:                                               ; preds = %7
  %23 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 16
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  %25 = load i32, ptr @input_location, align 4, !tbaa !28
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %4, i32 noundef %25) #21
  %26 = getelementptr inbounds %struct.expanded_location, ptr %4, i64 0, i32 3
  %27 = load i8, ptr %26, align 8, !tbaa !96
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !8
  %31 = icmp eq ptr %24, %30
  %32 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 8), align 16
  %33 = icmp eq ptr %24, %32
  %34 = select i1 %31, i1 true, i1 %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %1, i32 noundef 202, ptr noundef nonnull @.str.117) #21
  br label %37

37:                                               ; preds = %29, %35, %22
  %38 = call ptr @c_fully_fold(ptr noundef nonnull %2, i8 noundef zeroext 0, ptr noundef null) #21
  %39 = call ptr @default_conversion(ptr noundef %38) #20
  %40 = load i32, ptr @warn_sequence_point, align 4, !tbaa !28
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  call void @verify_sequence_points(ptr noundef %39) #21
  br label %43

43:                                               ; preds = %37, %42, %19, %3
  %44 = phi ptr [ %20, %19 ], [ %2, %3 ], [ %9, %42 ], [ %9, %37 ]
  %45 = phi ptr [ %21, %19 ], [ %2, %3 ], [ %39, %42 ], [ %39, %37 ]
  %46 = call ptr @xmalloc(i64 noundef 40) #21
  %47 = call ptr @build3_stat(i32 noundef 138, ptr noundef %44, ptr noundef %45, ptr noundef null, ptr noundef null) #21
  store ptr %47, ptr %46, align 8, !tbaa !188
  %48 = getelementptr inbounds %struct.tree_exp, ptr %47, i64 0, i32 1
  store i32 %0, ptr %48, align 8, !tbaa !5
  %49 = getelementptr inbounds %struct.c_switch, ptr %46, i64 0, i32 1
  store ptr %44, ptr %49, align 8, !tbaa !190
  %50 = call ptr @splay_tree_new(ptr noundef nonnull @case_compare, ptr noundef null, ptr noundef null) #21
  %51 = getelementptr inbounds %struct.c_switch, ptr %46, i64 0, i32 2
  store ptr %50, ptr %51, align 8, !tbaa !191
  %52 = call ptr @c_get_switch_bindings() #21
  %53 = getelementptr inbounds %struct.c_switch, ptr %46, i64 0, i32 3
  store ptr %52, ptr %53, align 8, !tbaa !192
  %54 = load ptr, ptr @c_switch_stack, align 8, !tbaa !8
  %55 = getelementptr inbounds %struct.c_switch, ptr %46, i64 0, i32 4
  store ptr %54, ptr %55, align 8, !tbaa !193
  store ptr %46, ptr @c_switch_stack, align 8, !tbaa !8
  %56 = load ptr, ptr %46, align 8, !tbaa !188
  %57 = call ptr @add_stmt(ptr noundef %56) #21
  ret ptr %57
}

; Function Attrs: optsize
declare ptr @splay_tree_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @case_compare(i64 noundef, i64 noundef) #2

; Function Attrs: optsize
declare ptr @c_get_switch_bindings() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @do_case(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %3
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 23
  br i1 %8, label %17, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @c_fully_fold(ptr noundef nonnull %1, i8 noundef zeroext 0, ptr noundef null) #21
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 23
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i32, ptr @input_location, align 4, !tbaa !28
  %16 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %15, i32 noundef 834, ptr noundef nonnull @.str.118) #21
  br label %17

17:                                               ; preds = %9, %14, %5, %3
  %18 = phi ptr [ %10, %14 ], [ %10, %9 ], [ %1, %5 ], [ null, %3 ]
  %19 = icmp eq ptr %2, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %17
  %21 = load i64, ptr %2, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 23
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @c_fully_fold(ptr noundef nonnull %2, i8 noundef zeroext 0, ptr noundef null) #21
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 23
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, ptr @input_location, align 4, !tbaa !28
  %31 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %30, i32 noundef 834, ptr noundef nonnull @.str.118) #21
  br label %32

32:                                               ; preds = %24, %29, %20, %17
  %33 = phi ptr [ %25, %29 ], [ %25, %24 ], [ %2, %20 ], [ null, %17 ]
  %34 = load ptr, ptr @c_switch_stack, align 8, !tbaa !8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = icmp eq ptr %18, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %36
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.119) #21
  br label %70

39:                                               ; preds = %36
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.120) #21
  br label %70

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.c_switch, ptr %34, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !192
  %43 = load ptr, ptr %34, align 8, !tbaa !188
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 65535
  %46 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !28
  %48 = add i32 %47, -4
  %49 = icmp ult i32 %48, 7
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.tree_exp, ptr %43, i64 0, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !5
  br label %53

53:                                               ; preds = %40, %50
  %54 = phi i32 [ %52, %50 ], [ 0, %40 ]
  %55 = tail call zeroext i8 @c_check_switch_jump_warnings(ptr noundef %42, i32 noundef %54, i32 noundef %0) #21
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = load ptr, ptr @c_switch_stack, align 8, !tbaa !8
  %59 = getelementptr inbounds %struct.c_switch, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !191
  %61 = load ptr, ptr %58, align 8, !tbaa !188
  %62 = getelementptr inbounds %struct.tree_exp, ptr %61, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !5
  %64 = getelementptr inbounds %struct.c_switch, ptr %58, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !190
  %66 = tail call ptr @c_add_case_label(i32 noundef %0, ptr noundef %60, ptr noundef %63, ptr noundef %65, ptr noundef %18, ptr noundef %33) #21
  %67 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %68 = icmp eq ptr %66, %67
  %69 = select i1 %68, ptr null, ptr %66
  br label %70

70:                                               ; preds = %53, %38, %39, %57
  %71 = phi ptr [ %69, %57 ], [ null, %39 ], [ null, %38 ], [ null, %53 ]
  ret ptr %71
}

; Function Attrs: optsize
declare zeroext i8 @c_check_switch_jump_warnings(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @c_add_case_label(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @c_finish_case(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @c_switch_stack, align 8, !tbaa !8
  %3 = load ptr, ptr %2, align 8, !tbaa !188
  %4 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  store ptr %0, ptr %4, align 8, !tbaa !5
  %5 = load ptr, ptr %2, align 8, !tbaa !188
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !28
  %10 = add i32 %9, -4
  %11 = icmp ult i32 %10, 7
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %1, %12
  %16 = phi i32 [ %14, %12 ], [ 0, %1 ]
  %17 = getelementptr inbounds %struct.c_switch, ptr %2, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !191
  %19 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !5
  %21 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !5
  tail call void @c_do_switch_warnings(ptr noundef %18, i32 noundef %16, ptr noundef %20, ptr noundef %22) #21
  %23 = getelementptr inbounds %struct.c_switch, ptr %2, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !193
  store ptr %24, ptr @c_switch_stack, align 8, !tbaa !8
  %25 = load ptr, ptr %17, align 8, !tbaa !191
  tail call void @splay_tree_delete(ptr noundef %25) #21
  %26 = getelementptr inbounds %struct.c_switch, ptr %2, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !192
  tail call void @c_release_switch_bindings(ptr noundef %27) #21
  tail call void @free(ptr noundef nonnull %2) #20
  ret void
}

; Function Attrs: optsize
declare void @c_do_switch_warnings(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @splay_tree_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @c_release_switch_bindings(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @c_finish_if_stmt(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 {
  %6 = load i32, ptr @warn_parentheses, align 4, !tbaa !28
  %7 = icmp ne i32 %6, 0
  %8 = icmp ne i8 %4, 0
  %9 = and i1 %8, %7
  %10 = icmp eq ptr %3, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %34

12:                                               ; preds = %5, %25
  %13 = phi ptr [ %26, %25 ], [ %2, %5 ]
  br label %14

14:                                               ; preds = %12, %27
  %15 = load i64, ptr %13, align 8
  %16 = trunc i64 %15 to i16
  switch i16 %16, label %27 [
    i16 56, label %28
    i16 58, label %17
    i16 147, label %20
    i16 131, label %22
    i16 130, label %22
  ]

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  br label %25

20:                                               ; preds = %14
  %21 = tail call ptr @expr_last(ptr noundef %2) #21
  br label %25

22:                                               ; preds = %14, %14
  %23 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !5
  br label %25

25:                                               ; preds = %22, %20, %17
  %26 = phi ptr [ %19, %17 ], [ %21, %20 ], [ %24, %22 ]
  br label %12

27:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 8614, ptr noundef nonnull @.str.8) #21
  br label %14

28:                                               ; preds = %14
  %29 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 1, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !5
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %0, i32 noundef 159, ptr noundef nonnull @.str.121) #21
  br label %34

34:                                               ; preds = %28, %32, %5
  %35 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !8
  %36 = tail call ptr @build3_stat(i32 noundef 56, ptr noundef %35, ptr noundef %1, ptr noundef %2, ptr noundef %3) #21
  %37 = getelementptr inbounds %struct.tree_exp, ptr %36, i64 0, i32 1
  store i32 %0, ptr %37, align 8, !tbaa !5
  %38 = tail call ptr @add_stmt(ptr noundef %36) #21
  ret void
}

; Function Attrs: optsize
declare ptr @expr_last(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @c_finish_loop(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca ptr, align 8
  store ptr %4, ptr %8, align 8, !tbaa !8
  %9 = icmp eq ptr %1, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @integer_zerop(ptr noundef nonnull %1) #21
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = icmp eq i8 %6, 0
  br i1 %14, label %57, label %15

15:                                               ; preds = %13
  %16 = call ptr @build_and_jump(ptr noundef nonnull %8) #21
  %17 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 0, i32 1
  store i32 %0, ptr %17, align 8, !tbaa !5
  br label %52

18:                                               ; preds = %10, %7
  %19 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !8
  %20 = tail call ptr @build1_stat(i32 noundef 133, ptr noundef %19, ptr noundef null) #21
  %21 = getelementptr inbounds %struct.tree_exp, ptr %20, i64 0, i32 3
  %22 = tail call ptr @build_and_jump(ptr noundef nonnull %21) #21
  br i1 %9, label %52, label %23

23:                                               ; preds = %18
  %24 = tail call i32 @integer_nonzerop(ptr noundef nonnull %1) #21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %23
  %27 = icmp eq i8 %6, 0
  br i1 %27, label %47, label %28

28:                                               ; preds = %26
  %29 = icmp eq ptr %2, null
  %30 = icmp ne ptr %5, null
  %31 = and i1 %29, %30
  %32 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !8
  br i1 %31, label %37, label %33

33:                                               ; preds = %28
  %34 = tail call ptr @build1_stat(i32 noundef 133, ptr noundef %32, ptr noundef null) #21
  %35 = getelementptr inbounds %struct.tree_exp, ptr %34, i64 0, i32 3
  %36 = tail call ptr @build_and_jump(ptr noundef nonnull %35) #21
  br label %39

37:                                               ; preds = %28
  %38 = tail call ptr @build1_stat(i32 noundef 134, ptr noundef %32, ptr noundef nonnull %5) #21
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi ptr [ %38, %37 ], [ %36, %33 ]
  %41 = phi ptr [ null, %37 ], [ %34, %33 ]
  %42 = getelementptr inbounds %struct.tree_exp, ptr %40, i64 0, i32 1
  store i32 %0, ptr %42, align 8, !tbaa !5
  %43 = tail call ptr @add_stmt(ptr noundef %40) #21
  %44 = call ptr @build_and_jump(ptr noundef nonnull %8) #21
  %45 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !8
  %46 = call ptr @fold_build3_stat_loc(i32 noundef %0, i32 noundef 56, ptr noundef %45, ptr noundef nonnull %1, ptr noundef %22, ptr noundef %44) #21
  br label %52

47:                                               ; preds = %26
  %48 = call ptr @build_and_jump(ptr noundef nonnull %8) #21
  %49 = load i32, ptr @input_location, align 4, !tbaa !28
  %50 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !8
  %51 = call ptr @fold_build3_stat_loc(i32 noundef %49, i32 noundef 56, ptr noundef %50, ptr noundef nonnull %1, ptr noundef %22, ptr noundef %48) #21
  br label %52

52:                                               ; preds = %18, %23, %47, %39, %15
  %53 = phi ptr [ %16, %15 ], [ %20, %39 ], [ %20, %47 ], [ %20, %23 ], [ %20, %18 ]
  %54 = phi ptr [ null, %15 ], [ %46, %39 ], [ %51, %47 ], [ %22, %23 ], [ %22, %18 ]
  %55 = phi ptr [ null, %15 ], [ %41, %39 ], [ null, %47 ], [ null, %23 ], [ null, %18 ]
  %56 = call ptr @add_stmt(ptr noundef %53) #21
  br label %57

57:                                               ; preds = %52, %13
  %58 = phi ptr [ null, %13 ], [ %54, %52 ]
  %59 = phi ptr [ null, %13 ], [ %55, %52 ]
  %60 = icmp eq ptr %3, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = call ptr @add_stmt(ptr noundef nonnull %3) #21
  br label %63

63:                                               ; preds = %61, %57
  %64 = icmp eq ptr %5, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %63
  %66 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !8
  %67 = call ptr @build1_stat(i32 noundef 133, ptr noundef %66, ptr noundef nonnull %5) #21
  %68 = call ptr @add_stmt(ptr noundef %67) #21
  br label %69

69:                                               ; preds = %65, %63
  %70 = icmp eq ptr %2, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %69
  %72 = call ptr @add_stmt(ptr noundef nonnull %2) #21
  br label %73

73:                                               ; preds = %71, %69
  %74 = icmp eq ptr %59, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %73
  %76 = call ptr @add_stmt(ptr noundef nonnull %59) #21
  br label %77

77:                                               ; preds = %75, %73
  %78 = icmp eq ptr %58, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %77
  %80 = call ptr @add_stmt(ptr noundef nonnull %58) #21
  br label %81

81:                                               ; preds = %79, %77
  %82 = load ptr, ptr %8, align 8, !tbaa !8
  %83 = icmp eq ptr %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !8
  %86 = call ptr @build1_stat(i32 noundef 133, ptr noundef %85, ptr noundef nonnull %82) #21
  %87 = call ptr @add_stmt(ptr noundef %86) #21
  br label %88

88:                                               ; preds = %84, %81
  ret void
}

; Function Attrs: optsize
declare ptr @build_and_jump(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_nonzerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @c_finish_bc_stmt(i32 noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !8
  %5 = tail call ptr @current_stmt_tree() #21
  %6 = load ptr, ptr %5, align 8, !tbaa !194
  %7 = tail call zeroext i8 @block_may_fallthru(ptr noundef %6) #21
  %8 = icmp eq i8 %7, 0
  %9 = icmp eq ptr %4, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  br i1 %8, label %40, label %11

11:                                               ; preds = %10
  %12 = tail call ptr @create_artificial_label(i32 noundef %0) #21
  store ptr %12, ptr %1, align 8, !tbaa !8
  br label %30

13:                                               ; preds = %3
  %14 = load i64, ptr %4, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 30
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.tree_int_cst, ptr %4, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !5
  switch i64 %19, label %28 [
    i64 0, label %20
    i64 1, label %24
  ]

20:                                               ; preds = %17
  %21 = icmp eq i8 %2, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.122) #21
  br label %40

23:                                               ; preds = %20
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.123) #21
  br label %40

24:                                               ; preds = %17
  %25 = icmp eq i8 %2, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 8735, ptr noundef nonnull @.str.8) #21
  br label %27

27:                                               ; preds = %24, %26
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.124) #21
  br label %40

28:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 8740, ptr noundef nonnull @.str.8) #21
  br label %29

29:                                               ; preds = %28, %13
  br i1 %8, label %40, label %30

30:                                               ; preds = %11, %29
  %31 = phi ptr [ %12, %11 ], [ %4, %29 ]
  %32 = icmp eq i8 %2, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = tail call ptr @build_predict_expr(i32 noundef 8, i32 noundef 0) #21
  %35 = tail call ptr @add_stmt(ptr noundef %34) #21
  br label %36

36:                                               ; preds = %33, %30
  %37 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !8
  %38 = tail call ptr @build1_stat(i32 noundef 134, ptr noundef %37, ptr noundef %31) #21
  %39 = tail call ptr @add_stmt(ptr noundef %38) #21
  br label %40

40:                                               ; preds = %10, %29, %22, %23, %36, %27
  %41 = phi ptr [ %39, %36 ], [ null, %27 ], [ null, %23 ], [ null, %22 ], [ null, %29 ], [ null, %10 ]
  ret ptr %41
}

; Function Attrs: optsize
declare zeroext i8 @block_may_fallthru(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @current_stmt_tree() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @create_artificial_label(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_predict_expr(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @c_process_expr_stmt(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %41, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @c_fully_fold(ptr noundef nonnull %1, i8 noundef zeroext 0, ptr noundef null) #21
  %6 = load i32, ptr @warn_sequence_point, align 4, !tbaa !28
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @verify_sequence_points(ptr noundef %5) #21
  br label %9

9:                                                ; preds = %8, %4
  %10 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %13 = icmp eq ptr %11, %12
  br i1 %13, label %22, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !5
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i64, ptr %11, align 8
  %20 = trunc i64 %19 to i16
  switch i16 %20, label %21 [
    i16 19, label %22
    i16 15, label %22
  ]

21:                                               ; preds = %18
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.125) #21
  br label %22

22:                                               ; preds = %18, %18, %21, %14, %9
  %23 = tail call ptr @current_stmt_tree() #21
  %24 = load ptr, ptr %23, align 8, !tbaa !194
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 17179869184
  %27 = icmp eq i64 %26, 0
  %28 = load i32, ptr @warn_unused_value, align 4
  %29 = icmp ne i32 %28, 0
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  tail call fastcc void @emit_side_effect_warnings(i32 noundef %0, ptr noundef nonnull %5) #20
  br label %32

32:                                               ; preds = %31, %22
  %33 = load i64, ptr %5, align 8
  %34 = and i64 %33, 65535
  %35 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !28
  switch i32 %36, label %41 [
    i32 3, label %37
    i32 1, label %37
  ]

37:                                               ; preds = %32, %32
  %38 = load ptr, ptr %10, align 8, !tbaa !5
  %39 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef %38, ptr noundef nonnull %5) #21
  %40 = getelementptr inbounds %struct.tree_exp, ptr %39, i64 0, i32 1
  store i32 %0, ptr %40, align 8, !tbaa !5
  br label %41

41:                                               ; preds = %37, %32, %2
  %42 = phi ptr [ null, %2 ], [ %39, %37 ], [ %5, %32 ]
  ret ptr %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_side_effect_warnings(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %22, label %5

5:                                                ; preds = %2
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 65536
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp ne i64 %13, 19
  %15 = and i64 %6, 8388608
  %16 = icmp eq i64 %15, 0
  %17 = and i1 %16, %14
  br i1 %17, label %18, label %22

18:                                               ; preds = %9
  %19 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %0, i32 noundef 229, ptr noundef nonnull @.str.268) #21
  br label %22

20:                                               ; preds = %5
  %21 = tail call i32 @warn_if_unused_value(ptr noundef nonnull %1, i32 noundef %0) #21
  br label %22

22:                                               ; preds = %20, %18, %9, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @c_finish_expr_stmt(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = tail call ptr @c_process_expr_stmt(i32 noundef %0, ptr noundef nonnull %1) #20
  %6 = tail call ptr @add_stmt(ptr noundef %5) #21
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @c_begin_stmt_expr() local_unnamed_addr #0 {
  tail call void @keep_next_level() #21
  %1 = tail call ptr @c_begin_compound_stmt(i8 noundef zeroext 1) #20
  %2 = load ptr, ptr @c_switch_stack, align 8, !tbaa !8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.c_switch, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  br label %7

7:                                                ; preds = %0, %4
  %8 = phi ptr [ %6, %4 ], [ null, %0 ]
  tail call void @c_bindings_start_stmt_expr(ptr noundef %8) #21
  %9 = load i64, ptr %1, align 8
  %10 = or i64 %9, 17179869184
  store i64 %10, ptr %1, align 8
  ret ptr %1
}

; Function Attrs: optsize
declare void @keep_next_level() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @c_begin_compound_stmt(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = tail call ptr @push_stmt_list() #21
  %3 = icmp eq i8 %0, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @push_scope() #21
  br label %5

5:                                                ; preds = %4, %1
  ret ptr %2
}

; Function Attrs: optsize
declare void @c_bindings_start_stmt_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @c_finish_stmt_expr(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.tree_stmt_iterator, align 8
  %4 = tail call ptr @c_end_compound_stmt(i32 noundef %0, ptr noundef %1, i8 noundef zeroext 1) #20
  %5 = load ptr, ptr @c_switch_stack, align 8, !tbaa !8
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.c_switch, ptr %5, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !192
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi ptr [ %9, %7 ], [ null, %2 ]
  tail call void @c_bindings_end_stmt_expr(ptr noundef %11) #21
  %12 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %13 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %14 = getelementptr inbounds i8, ptr %3, i64 8
  br label %15

15:                                               ; preds = %67, %10
  %16 = phi ptr [ %13, %10 ], [ %68, %67 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 147
  br i1 %20, label %21, label %61

21:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %22 = and i64 %18, 65536
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  br label %121

25:                                               ; preds = %21
  %26 = load i32, ptr @warn_unused_value, align 4, !tbaa !28
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %53, label %28

28:                                               ; preds = %25
  %29 = tail call fastcc { ptr, ptr } @tsi_start(ptr noundef nonnull %17) #20
  %30 = extractvalue { ptr, ptr } %29, 0
  %31 = extractvalue { ptr, ptr } %29, 1
  store ptr %30, ptr %3, align 8, !tbaa.struct !196
  store ptr %31, ptr %14, align 8, !tbaa.struct !197
  %32 = tail call fastcc zeroext i8 @tsi_one_before_end_p(ptr %30) #20
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %28, %48
  %35 = phi ptr [ %50, %48 ], [ %30, %28 ]
  %36 = tail call fastcc ptr @tsi_stmt(ptr %35) #20
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 65535
  %39 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !28
  %41 = add i32 %40, -4
  %42 = icmp ult i32 %41, 7
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.tree_exp, ptr %36, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !5
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 %0, i32 %45
  br label %48

48:                                               ; preds = %43, %34
  %49 = phi i32 [ %0, %34 ], [ %47, %43 ]
  tail call fastcc void @emit_side_effect_warnings(i32 noundef %49, ptr noundef nonnull %36) #20
  call fastcc void @tsi_next(ptr noundef nonnull %3) #20
  %50 = load ptr, ptr %3, align 8
  %51 = tail call fastcc zeroext i8 @tsi_one_before_end_p(ptr %50) #20
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %34, label %56, !llvm.loop !198

53:                                               ; preds = %25
  %54 = tail call fastcc { ptr, ptr } @tsi_last(ptr noundef nonnull %17) #20
  %55 = extractvalue { ptr, ptr } %54, 0
  br label %56

56:                                               ; preds = %48, %28, %53
  %57 = phi ptr [ %30, %28 ], [ %55, %53 ], [ %50, %48 ]
  %58 = tail call fastcc ptr @tsi_stmt_ptr(ptr %57) #20
  %59 = load ptr, ptr %58, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  %60 = load i64, ptr %59, align 8
  br label %61

61:                                               ; preds = %56, %15
  %62 = phi i64 [ %60, %56 ], [ %18, %15 ]
  %63 = phi ptr [ %58, %56 ], [ %16, %15 ]
  %64 = phi ptr [ %59, %56 ], [ %17, %15 ]
  %65 = and i64 %62, 65534
  %66 = icmp eq i64 %65, 130
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.tree_exp, ptr %64, i64 0, i32 3
  br label %15

69:                                               ; preds = %61
  %70 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %71 = icmp eq ptr %64, %70
  br i1 %71, label %121, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr %13, align 8, !tbaa !5
  %74 = icmp eq ptr %64, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load ptr, ptr %12, align 8, !tbaa !5
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = tail call ptr @c_wrap_maybe_const(ptr noundef nonnull %64, i8 noundef zeroext 1) #21
  %80 = load i64, ptr %79, align 8
  %81 = or i64 %80, 8388608
  store i64 %81, ptr %79, align 8
  br label %121

82:                                               ; preds = %75, %72
  %83 = getelementptr inbounds %struct.tree_common, ptr %64, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !5
  %85 = icmp eq ptr %84, null
  br i1 %85, label %121, label %86

86:                                               ; preds = %82
  %87 = load i64, ptr %84, align 8
  %88 = and i64 %87, 65535
  %89 = icmp eq i64 %88, 19
  br i1 %89, label %121, label %90

90:                                               ; preds = %86
  %91 = tail call ptr @create_tmp_var_raw(ptr noundef nonnull %84, ptr noundef null) #21
  %92 = load i64, ptr %64, align 8
  %93 = and i64 %92, 65535
  %94 = icmp eq i64 %93, 116
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load ptr, ptr %83, align 8, !tbaa !5
  %97 = getelementptr inbounds %struct.tree_exp, ptr %64, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !5
  %99 = getelementptr inbounds %struct.tree_common, ptr %98, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !5
  %101 = icmp eq ptr %96, %100
  %102 = select i1 %101, ptr %98, ptr %64
  br label %103

103:                                              ; preds = %95, %90
  %104 = phi ptr [ %64, %90 ], [ %102, %95 ]
  %105 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !8
  %106 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %105, ptr noundef %91, ptr noundef %104) #21
  store ptr %106, ptr %63, align 8, !tbaa !8
  %107 = load i64, ptr %64, align 8
  %108 = and i64 %107, 65535
  %109 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %108
  %110 = load i32, ptr %109, align 4, !tbaa !28
  %111 = add i32 %110, -4
  %112 = icmp ult i32 %111, 7
  br i1 %112, label %113, label %116

113:                                              ; preds = %103
  %114 = getelementptr inbounds %struct.tree_exp, ptr %64, i64 0, i32 1
  %115 = load i32, ptr %114, align 8, !tbaa !5
  br label %116

116:                                              ; preds = %103, %113
  %117 = phi i32 [ %115, %113 ], [ 0, %103 ]
  %118 = getelementptr inbounds %struct.tree_exp, ptr %106, i64 0, i32 1
  store i32 %117, ptr %118, align 8, !tbaa !5
  %119 = tail call ptr @build4_stat(i32 noundef 55, ptr noundef nonnull %84, ptr noundef %91, ptr noundef nonnull %4, ptr noundef null, ptr noundef null) #21
  %120 = getelementptr inbounds %struct.tree_exp, ptr %119, i64 0, i32 1
  store i32 %0, ptr %120, align 8, !tbaa !5
  br label %121

121:                                              ; preds = %24, %82, %86, %69, %116, %78
  %122 = phi ptr [ %79, %78 ], [ %119, %116 ], [ %64, %69 ], [ %4, %86 ], [ %4, %82 ], [ %4, %24 ]
  ret ptr %122
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @c_end_compound_stmt(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr @c_language, align 4, !tbaa !28
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @objc_clear_super_receiver() #21
  br label %10

10:                                               ; preds = %9, %5
  %11 = tail call ptr @pop_scope() #21
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi ptr [ %11, %10 ], [ null, %3 ]
  %14 = tail call ptr @pop_stmt_list(ptr noundef %1) #21
  %15 = tail call ptr @c_build_bind_expr(i32 noundef %0, ptr noundef %13, ptr noundef %14) #21
  %16 = tail call ptr @current_stmt_tree() #21
  %17 = load ptr, ptr %16, align 8, !tbaa !194
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %12
  %20 = tail call ptr @current_stmt_tree() #21
  %21 = load ptr, ptr %20, align 8, !tbaa !194
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, 17179869184
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %19
  %26 = load i64, ptr %15, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 58
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !8
  %31 = tail call ptr @build3_stat(i32 noundef 58, ptr noundef %30, ptr noundef null, ptr noundef nonnull %15, ptr noundef null) #21
  %32 = load i64, ptr %31, align 8
  %33 = or i64 %32, 65536
  store i64 %33, ptr %31, align 8
  %34 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 0, i32 1
  store i32 %0, ptr %34, align 8, !tbaa !5
  br label %35

35:                                               ; preds = %29, %25, %19, %12
  %36 = phi ptr [ %31, %29 ], [ %15, %25 ], [ %15, %19 ], [ %15, %12 ]
  ret ptr %36
}

; Function Attrs: optsize
declare void @c_bindings_end_stmt_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc { ptr, ptr } @tsi_start(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.tree_statement_list, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = insertvalue { ptr, ptr } poison, ptr %3, 0
  %5 = insertvalue { ptr, ptr } %4, ptr %0, 1
  ret { ptr, ptr } %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @tsi_one_before_end_p(ptr readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.tree_statement_list_node, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !199
  %6 = icmp eq ptr %5, null
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %3, %1
  %9 = phi i8 [ 0, %1 ], [ %7, %3 ]
  ret i8 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @tsi_stmt(ptr nocapture readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.tree_statement_list_node, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !201
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @tsi_next(ptr nocapture noundef %0) unnamed_addr #14 {
  %2 = load ptr, ptr %0, align 8, !tbaa !202
  %3 = getelementptr inbounds %struct.tree_statement_list_node, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !199
  store ptr %4, ptr %0, align 8, !tbaa !202
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc { ptr, ptr } @tsi_last(ptr noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.tree_statement_list, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = insertvalue { ptr, ptr } poison, ptr %3, 0
  %5 = insertvalue { ptr, ptr } %4, ptr %0, 1
  ret { ptr, ptr } %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @tsi_stmt_ptr(ptr readnone %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.tree_statement_list_node, ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @create_tmp_var_raw(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @push_stmt_list() local_unnamed_addr #2

; Function Attrs: optsize
declare void @push_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare void @objc_clear_super_receiver() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @pop_scope() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @pop_stmt_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @c_build_bind_expr(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @push_cleanup(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq i8 %2, 0
  %5 = select i1 %4, i32 131, i32 130
  %6 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !5
  %8 = tail call ptr (i32, i32, ...) @build_stmt(i32 noundef %7, i32 noundef %5, ptr noundef null, ptr noundef %1) #21
  %9 = tail call ptr @add_stmt(ptr noundef %8) #21
  %10 = tail call ptr @current_stmt_tree() #21
  %11 = load ptr, ptr %10, align 8, !tbaa !194
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 17179869184
  %14 = tail call ptr @push_stmt_list() #21
  %15 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  store ptr %14, ptr %15, align 8, !tbaa !5
  %16 = load i64, ptr %14, align 8
  %17 = and i64 %16, -17179869185
  %18 = or disjoint i64 %17, %13
  store i64 %18, ptr %14, align 8
  ret void
}

; Function Attrs: optsize
declare ptr @excess_precision_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @pointer_int_sum(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @pointer_diff(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 43), align 8, !tbaa !8
  %6 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = load i64, ptr %9, align 8
  %11 = lshr i64 %10, 56
  %12 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = load i64, ptr %15, align 8
  %17 = lshr i64 %16, 56
  %18 = icmp eq i64 %11, %17
  br i1 %18, label %33, label %19

19:                                               ; preds = %3
  %20 = trunc i64 %17 to i8
  %21 = trunc i64 %11 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #22
  %22 = call fastcc zeroext i8 @addr_space_superset(i8 noundef zeroext %21, i8 noundef zeroext %20, ptr noundef nonnull %4) #20, !range !24
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 3182, ptr noundef nonnull @.str.8) #21
  br label %25

25:                                               ; preds = %24, %19
  %26 = load ptr, ptr %6, align 8, !tbaa !5
  %27 = load ptr, ptr %12, align 8, !tbaa !5
  %28 = tail call fastcc ptr @common_pointer_type(ptr noundef %26, ptr noundef %27) #20
  %29 = tail call ptr @convert(ptr noundef %28, ptr noundef nonnull %1) #21
  %30 = tail call ptr @convert(ptr noundef %28, ptr noundef nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #22
  %31 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !5
  br label %33

33:                                               ; preds = %25, %3
  %34 = phi ptr [ %32, %25 ], [ %7, %3 ]
  %35 = phi ptr [ %30, %25 ], [ %2, %3 ]
  %36 = phi ptr [ %29, %25 ], [ %1, %3 ]
  %37 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 1023
  %40 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 2
  %41 = getelementptr inbounds %struct.tree_type, ptr %34, i64 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 1023
  %44 = icmp ult i32 %39, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !204
  %47 = tail call ptr %46(i32 noundef %43, i32 noundef 0) #21
  br label %48

48:                                               ; preds = %33, %45
  %49 = phi ptr [ %47, %45 ], [ %5, %33 ]
  %50 = load i64, ptr %9, align 8
  %51 = and i64 %50, 65535
  %52 = icmp eq i64 %51, 19
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load i32, ptr @pedantic, align 4, !tbaa !28
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 162, i32 834
  %57 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef %56, ptr noundef nonnull @.str.269) #21
  %58 = load i64, ptr %9, align 8
  br label %59

59:                                               ; preds = %53, %48
  %60 = phi i64 [ %58, %53 ], [ %50, %48 ]
  %61 = and i64 %60, 65535
  %62 = icmp eq i64 %61, 20
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32, ptr @pedantic, align 4, !tbaa !28
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, i32 162, i32 834
  %67 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef %66, ptr noundef nonnull @.str.270) #21
  br label %68

68:                                               ; preds = %63, %59
  %69 = load i64, ptr %36, align 8
  %70 = trunc i64 %69 to i16
  switch i16 %70, label %84 [
    i16 116, label %71
    i16 113, label %71
  ]

71:                                               ; preds = %68, %68
  %72 = load ptr, ptr %40, align 8, !tbaa !5
  %73 = getelementptr inbounds %struct.tree_type, ptr %72, i64 0, i32 6
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds %struct.tree_exp, ptr %36, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !5
  %77 = getelementptr inbounds %struct.tree_common, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !5
  %79 = getelementptr inbounds %struct.tree_type, ptr %78, i64 0, i32 6
  %80 = load i32, ptr %79, align 4
  %81 = xor i32 %80, %74
  %82 = and i32 %81, 1023
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %68, %71
  br label %85

85:                                               ; preds = %71, %84
  %86 = phi ptr [ %36, %84 ], [ %76, %71 ]
  %87 = load i64, ptr %35, align 8
  %88 = trunc i64 %87 to i16
  switch i16 %88, label %103 [
    i16 116, label %89
    i16 113, label %89
  ]

89:                                               ; preds = %85, %85
  %90 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !5
  %92 = getelementptr inbounds %struct.tree_type, ptr %91, i64 0, i32 6
  %93 = load i32, ptr %92, align 4
  %94 = getelementptr inbounds %struct.tree_exp, ptr %35, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !5
  %96 = getelementptr inbounds %struct.tree_common, ptr %95, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !5
  %98 = getelementptr inbounds %struct.tree_type, ptr %97, i64 0, i32 6
  %99 = load i32, ptr %98, align 4
  %100 = xor i32 %99, %93
  %101 = and i32 %100, 1023
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %85, %89
  br label %104

104:                                              ; preds = %89, %103
  %105 = phi ptr [ %35, %103 ], [ %95, %89 ]
  %106 = load i64, ptr %86, align 8
  %107 = and i64 %106, 65535
  %108 = icmp eq i64 %107, 63
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.tree_exp, ptr %86, i64 0, i32 3
  %111 = getelementptr inbounds %struct.tree_exp, ptr %86, i64 1
  %112 = load ptr, ptr %110, align 8, !tbaa !5
  br label %113

113:                                              ; preds = %104, %109
  %114 = phi ptr [ %112, %109 ], [ %86, %104 ]
  %115 = phi ptr [ %111, %109 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), %104 ]
  %116 = load ptr, ptr %115, align 8, !tbaa !5
  %117 = load i64, ptr %105, align 8
  %118 = and i64 %117, 65535
  %119 = icmp eq i64 %118, 63
  br i1 %119, label %120, label %124

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.tree_exp, ptr %105, i64 0, i32 3
  %122 = getelementptr inbounds %struct.tree_exp, ptr %105, i64 1
  %123 = load ptr, ptr %121, align 8, !tbaa !5
  br label %124

124:                                              ; preds = %113, %120
  %125 = phi ptr [ %123, %120 ], [ %105, %113 ]
  %126 = phi ptr [ %122, %120 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), %113 ]
  %127 = load ptr, ptr %126, align 8, !tbaa !5
  %128 = tail call i32 @operand_equal_p(ptr noundef %114, ptr noundef %125, i32 noundef 0) #21
  %129 = icmp eq i32 %128, 0
  %130 = select i1 %129, ptr %35, ptr %127
  %131 = select i1 %129, ptr %36, ptr %116
  %132 = tail call ptr @convert(ptr noundef %49, ptr noundef %131) #21
  %133 = tail call ptr @convert(ptr noundef %49, ptr noundef %130) #21
  %134 = tail call ptr @build_binary_op(i32 noundef %0, i32 noundef 64, ptr noundef %132, ptr noundef %133, i32 noundef 0) #20
  %135 = load ptr, ptr %12, align 8, !tbaa !5
  %136 = getelementptr inbounds %struct.tree_common, ptr %135, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !5
  %138 = getelementptr inbounds %struct.tree_type, ptr %137, i64 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !5
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %124
  %142 = load i64, ptr %137, align 8
  %143 = and i64 %142, 65535
  %144 = icmp eq i64 %143, 19
  br i1 %144, label %146, label %145

145:                                              ; preds = %141
  tail call void (i32, ptr, ...) @error_at(i32 noundef %0, ptr noundef nonnull @.str.186) #21
  br label %146

146:                                              ; preds = %145, %141, %124
  %147 = tail call fastcc ptr @c_size_in_bytes(ptr noundef nonnull %9) #20
  %148 = tail call ptr @convert(ptr noundef %49, ptr noundef %147) #21
  %149 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 76, ptr noundef %49, ptr noundef %134, ptr noundef %148) #21
  %150 = tail call ptr @convert(ptr noundef nonnull %5, ptr noundef %149) #21
  ret ptr %150
}

; Function Attrs: optsize
declare void @warn_for_div_by_zero(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @c_common_truthvalue_conversion(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @decl_with_nonnull_addr_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @same_scalar_type_ignoring_signedness(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @binary_op_error(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @convert_and_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @shorten_binary_op(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_narrower(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @c_common_signed_or_unsigned_type(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @shorten_compare(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @warn_for_sign_compare(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build2_initializer_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @c_expr_to_decl(ptr noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #14 {
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 119
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 67108864
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %7
  store i8 1, ptr %2, align 1, !tbaa !5
  br label %16

16:                                               ; preds = %3, %7, %15
  %17 = phi ptr [ %11, %15 ], [ %11, %7 ], [ %0, %3 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @c_begin_omp_parallel() local_unnamed_addr #0 {
  tail call void @keep_next_level() #21
  %1 = tail call ptr @c_begin_compound_stmt(i8 noundef zeroext 1) #20
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @c_finish_omp_parallel(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @c_end_compound_stmt(i32 noundef %0, ptr noundef %2, i8 noundef zeroext 1) #20
  %5 = tail call ptr @make_node_stat(i32 noundef 153) #21
  %6 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !8
  %7 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %9 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  store ptr %1, ptr %9, align 8, !tbaa !5
  store ptr %4, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 1
  store i32 %0, ptr %10, align 8, !tbaa !5
  %11 = tail call ptr @add_stmt(ptr noundef %5) #21
  ret ptr %11
}

; Function Attrs: optsize
declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @c_begin_omp_task() local_unnamed_addr #0 {
  tail call void @keep_next_level() #21
  %1 = tail call ptr @c_begin_compound_stmt(i8 noundef zeroext 1) #20
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @c_finish_omp_task(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @c_end_compound_stmt(i32 noundef %0, ptr noundef %2, i8 noundef zeroext 1) #20
  %5 = tail call ptr @make_node_stat(i32 noundef 154) #21
  %6 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !8
  %7 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %9 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  store ptr %1, ptr %9, align 8, !tbaa !5
  store ptr %4, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 1
  store i32 %0, ptr %10, align 8, !tbaa !5
  %11 = tail call ptr @add_stmt(ptr noundef %5) #21
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @c_finish_omp_clauses(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.bitmap_head_def, align 8
  %4 = alloca %struct.bitmap_head_def, align 8
  %5 = alloca %struct.bitmap_head_def, align 8
  store ptr %0, ptr %2, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #22
  tail call void @bitmap_obstack_initialize(ptr noundef null) #21
  call fastcc void @bitmap_initialize_stat(ptr noundef nonnull %3) #20
  call fastcc void @bitmap_initialize_stat(ptr noundef nonnull %4) #20
  call fastcc void @bitmap_initialize_stat(ptr noundef nonnull %5) #20
  %6 = icmp eq ptr %0, null
  br i1 %6, label %183, label %7

7:                                                ; preds = %1, %177
  %8 = phi ptr [ %178, %177 ], [ %0, %1 ]
  %9 = phi ptr [ %179, %177 ], [ %2, %1 ]
  %10 = getelementptr inbounds %struct.tree_omp_clause, ptr %8, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !5
  switch i32 %11, label %124 [
    i32 2, label %56
    i32 1, label %12
    i32 5, label %13
    i32 7, label %41
    i32 6, label %42
    i32 3, label %84
    i32 4, label %104
    i32 8, label %174
    i32 9, label %174
    i32 10, label %174
    i32 11, label %174
    i32 12, label %174
    i32 13, label %174
    i32 15, label %174
    i32 14, label %174
  ]

12:                                               ; preds = %7
  br label %56

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.tree_omp_clause, ptr %8, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %56 [
    i16 15, label %20
    i16 16, label %20
    i16 17, label %20
    i16 18, label %20
    i16 10, label %20
    i16 12, label %20
    i16 9, label %29
    i16 13, label %23
    i16 14, label %23
  ]

20:                                               ; preds = %13, %13, %13, %13, %13, %13
  %21 = getelementptr inbounds %struct.tree_omp_clause, ptr %8, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !5
  call void (i32, ptr, ...) @error_at(i32 noundef %22, ptr noundef nonnull @.str.145, ptr noundef nonnull %15) #21
  br label %56

23:                                               ; preds = %13, %13
  %24 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 9
  br i1 %28, label %29, label %56

29:                                               ; preds = %13, %23
  %30 = getelementptr inbounds %struct.tree_omp_clause, ptr %8, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !5
  switch i32 %31, label %36 [
    i32 63, label %56
    i32 65, label %56
    i32 64, label %56
    i32 89, label %37
    i32 88, label %32
    i32 87, label %33
    i32 91, label %34
    i32 92, label %35
  ]

32:                                               ; preds = %29
  br label %37

33:                                               ; preds = %29
  br label %37

34:                                               ; preds = %29
  br label %37

35:                                               ; preds = %29
  br label %37

36:                                               ; preds = %29
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 10085, ptr noundef nonnull @.str.8) #21
  br label %56

37:                                               ; preds = %29, %35, %34, %33, %32
  %38 = phi ptr [ @.str.147, %32 ], [ @.str.148, %33 ], [ @.str.149, %34 ], [ @.str.150, %35 ], [ @.str.146, %29 ]
  %39 = getelementptr inbounds %struct.tree_omp_clause, ptr %8, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !5
  call void (i32, ptr, ...) @error_at(i32 noundef %40, ptr noundef nonnull @.str.151, ptr noundef nonnull %15, ptr noundef nonnull %38) #21
  br label %56

41:                                               ; preds = %7
  br label %56

42:                                               ; preds = %7
  %43 = getelementptr inbounds %struct.tree_omp_clause, ptr %8, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 32
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %44, i64 0, i32 4
  %50 = load i32, ptr %49, align 8
  %51 = and i32 %50, 49152
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48, %42
  %54 = getelementptr inbounds %struct.tree_omp_clause, ptr %8, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !5
  call void (i32, ptr, ...) @error_at(i32 noundef %55, ptr noundef nonnull @.str.154, ptr noundef nonnull %44) #21
  br label %56

56:                                               ; preds = %36, %29, %29, %29, %37, %13, %7, %48, %53, %20, %23, %41, %12
  %57 = phi ptr [ @.str.153, %53 ], [ @.str.153, %48 ], [ @.str.152, %41 ], [ @.str.144, %20 ], [ @.str.144, %23 ], [ @.str.143, %12 ], [ @.str.142, %7 ], [ @.str.144, %13 ], [ @.str.144, %37 ], [ @.str.144, %29 ], [ @.str.144, %29 ], [ @.str.144, %29 ], [ @.str.144, %36 ]
  %58 = phi i1 [ false, %53 ], [ true, %48 ], [ true, %41 ], [ false, %20 ], [ true, %23 ], [ true, %12 ], [ true, %7 ], [ true, %13 ], [ false, %37 ], [ true, %29 ], [ true, %29 ], [ true, %29 ], [ true, %36 ]
  %59 = phi i1 [ true, %53 ], [ true, %48 ], [ true, %41 ], [ true, %20 ], [ true, %23 ], [ false, %12 ], [ true, %7 ], [ true, %13 ], [ true, %37 ], [ true, %29 ], [ true, %29 ], [ true, %29 ], [ true, %36 ]
  %60 = phi i8 [ 0, %53 ], [ 0, %48 ], [ 0, %41 ], [ 1, %20 ], [ 1, %23 ], [ 1, %12 ], [ 1, %7 ], [ 1, %13 ], [ 1, %37 ], [ 1, %29 ], [ 1, %29 ], [ 1, %29 ], [ 1, %36 ]
  %61 = getelementptr inbounds %struct.tree_omp_clause, ptr %8, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !5
  %63 = load i64, ptr %62, align 8
  %64 = trunc i64 %63 to i16
  switch i16 %64, label %65 [
    i16 32, label %68
    i16 34, label %68
  ]

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.tree_omp_clause, ptr %8, i64 0, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !5
  call void (i32, ptr, ...) @error_at(i32 noundef %67, ptr noundef nonnull @.str.155, ptr noundef nonnull %62, ptr noundef nonnull %57) #21
  br label %171

68:                                               ; preds = %56, %56
  %69 = getelementptr inbounds %struct.tree_decl_minimal, ptr %62, i64 0, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !5
  %71 = call i32 @bitmap_bit_p(ptr noundef nonnull %3, i32 noundef %70) #21
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load i32, ptr %69, align 4, !tbaa !5
  %75 = call i32 @bitmap_bit_p(ptr noundef nonnull %4, i32 noundef %74) #21
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load i32, ptr %69, align 4, !tbaa !5
  %79 = call i32 @bitmap_bit_p(ptr noundef nonnull %5, i32 noundef %78) #21
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %125, label %81

81:                                               ; preds = %77, %73, %68
  %82 = getelementptr inbounds %struct.tree_omp_clause, ptr %8, i64 0, i32 1
  %83 = load i32, ptr %82, align 8, !tbaa !5
  call void (i32, ptr, ...) @error_at(i32 noundef %83, ptr noundef nonnull @.str.156, ptr noundef nonnull %62) #21
  br label %171

84:                                               ; preds = %7
  %85 = getelementptr inbounds %struct.tree_omp_clause, ptr %8, i64 0, i32 6
  %86 = load ptr, ptr %85, align 8, !tbaa !5
  %87 = load i64, ptr %86, align 8
  %88 = trunc i64 %87 to i16
  switch i16 %88, label %89 [
    i16 32, label %92
    i16 34, label %92
  ]

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.tree_omp_clause, ptr %8, i64 0, i32 1
  %91 = load i32, ptr %90, align 8, !tbaa !5
  call void (i32, ptr, ...) @error_at(i32 noundef %91, ptr noundef nonnull @.str.158, ptr noundef nonnull %86) #21
  br label %171

92:                                               ; preds = %84, %84
  %93 = getelementptr inbounds %struct.tree_decl_minimal, ptr %86, i64 0, i32 2
  %94 = load i32, ptr %93, align 4, !tbaa !5
  %95 = call i32 @bitmap_bit_p(ptr noundef nonnull %3, i32 noundef %94) #21
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i32, ptr %93, align 4, !tbaa !5
  %99 = call i32 @bitmap_bit_p(ptr noundef nonnull %4, i32 noundef %98) #21
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %128, label %101

101:                                              ; preds = %97, %92
  %102 = getelementptr inbounds %struct.tree_omp_clause, ptr %8, i64 0, i32 1
  %103 = load i32, ptr %102, align 8, !tbaa !5
  call void (i32, ptr, ...) @error_at(i32 noundef %103, ptr noundef nonnull @.str.156, ptr noundef nonnull %86) #21
  br label %171

104:                                              ; preds = %7
  %105 = getelementptr inbounds %struct.tree_omp_clause, ptr %8, i64 0, i32 6
  %106 = load ptr, ptr %105, align 8, !tbaa !5
  %107 = load i64, ptr %106, align 8
  %108 = trunc i64 %107 to i16
  switch i16 %108, label %109 [
    i16 32, label %112
    i16 34, label %112
  ]

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.tree_omp_clause, ptr %8, i64 0, i32 1
  %111 = load i32, ptr %110, align 8, !tbaa !5
  call void (i32, ptr, ...) @error_at(i32 noundef %111, ptr noundef nonnull @.str.160, ptr noundef nonnull %106) #21
  br label %171

112:                                              ; preds = %104, %104
  %113 = getelementptr inbounds %struct.tree_decl_minimal, ptr %106, i64 0, i32 2
  %114 = load i32, ptr %113, align 4, !tbaa !5
  %115 = call i32 @bitmap_bit_p(ptr noundef nonnull %3, i32 noundef %114) #21
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load i32, ptr %113, align 4, !tbaa !5
  %119 = call i32 @bitmap_bit_p(ptr noundef nonnull %5, i32 noundef %118) #21
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %117, %112
  %122 = getelementptr inbounds %struct.tree_omp_clause, ptr %8, i64 0, i32 1
  %123 = load i32, ptr %122, align 8, !tbaa !5
  call void (i32, ptr, ...) @error_at(i32 noundef %123, ptr noundef nonnull @.str.156, ptr noundef nonnull %106) #21
  br label %171

124:                                              ; preds = %7
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 10188, ptr noundef nonnull @.str.8) #21
  br label %174

125:                                              ; preds = %77
  %126 = load i32, ptr %69, align 4, !tbaa !5
  %127 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %3, i32 noundef %126) #21
  br i1 %58, label %136, label %171

128:                                              ; preds = %117, %97
  %129 = phi ptr [ %93, %97 ], [ %113, %117 ]
  %130 = phi ptr [ %4, %97 ], [ %5, %117 ]
  %131 = phi ptr [ @.str.157, %97 ], [ @.str.159, %117 ]
  %132 = load i32, ptr %129, align 4, !tbaa !5
  %133 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %130, i32 noundef %132) #21
  %134 = getelementptr inbounds %struct.tree_omp_clause, ptr %8, i64 0, i32 6
  %135 = load ptr, ptr %134, align 8, !tbaa !5
  br label %138

136:                                              ; preds = %125
  %137 = load ptr, ptr %61, align 8, !tbaa !5
  br i1 %59, label %146, label %138

138:                                              ; preds = %128, %136
  %139 = phi ptr [ %135, %128 ], [ %137, %136 ]
  %140 = phi ptr [ %131, %128 ], [ %57, %136 ]
  %141 = phi i8 [ 1, %128 ], [ %60, %136 ]
  %142 = call ptr @require_complete_type(ptr noundef %139) #20
  %143 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %144 = icmp eq ptr %142, %143
  %145 = zext i1 %144 to i8
  br label %146

146:                                              ; preds = %138, %136
  %147 = phi ptr [ %57, %136 ], [ %140, %138 ]
  %148 = phi i8 [ %60, %136 ], [ %141, %138 ]
  %149 = phi ptr [ %137, %136 ], [ %142, %138 ]
  %150 = phi i8 [ 0, %136 ], [ %145, %138 ]
  %151 = icmp eq i8 %148, 0
  br i1 %151, label %169, label %152

152:                                              ; preds = %146
  %153 = load i64, ptr %149, align 8
  %154 = and i64 %153, 65535
  %155 = icmp eq i64 %154, 32
  br i1 %155, label %156, label %161

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %149, i64 0, i32 4
  %158 = load i32, ptr %157, align 8
  %159 = and i32 %158, 49152
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %156, %152
  %162 = call i32 @c_omp_predetermined_sharing(ptr noundef nonnull %149) #21
  switch i32 %162, label %164 [
    i32 0, label %169
    i32 1, label %165
    i32 3, label %163
  ]

163:                                              ; preds = %161
  br label %165

164:                                              ; preds = %161
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 10219, ptr noundef nonnull @.str.8) #21
  br label %169

165:                                              ; preds = %161, %163, %156
  %166 = phi ptr [ @.str.161, %156 ], [ @.str.143, %163 ], [ @.str.142, %161 ]
  %167 = getelementptr inbounds %struct.tree_omp_clause, ptr %8, i64 0, i32 1
  %168 = load i32, ptr %167, align 8, !tbaa !5
  call void (i32, ptr, ...) @error_at(i32 noundef %168, ptr noundef nonnull @.str.162, ptr noundef nonnull %149, ptr noundef nonnull %166, ptr noundef %147) #21
  br label %171

169:                                              ; preds = %164, %161, %146
  %170 = icmp eq i8 %150, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %81, %65, %101, %89, %121, %109, %165, %125, %169
  %172 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  %173 = load ptr, ptr %172, align 8, !tbaa !5
  store ptr %173, ptr %9, align 8, !tbaa !8
  br label %177

174:                                              ; preds = %169, %124, %7, %7, %7, %7, %7, %7, %7, %7
  %175 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !8
  br label %177

177:                                              ; preds = %174, %171
  %178 = phi ptr [ %176, %174 ], [ %173, %171 ]
  %179 = phi ptr [ %175, %174 ], [ %9, %171 ]
  %180 = icmp eq ptr %178, null
  br i1 %180, label %181, label %7, !llvm.loop !212

181:                                              ; preds = %177
  %182 = load ptr, ptr %2, align 8, !tbaa !8
  br label %183

183:                                              ; preds = %181, %1
  %184 = phi ptr [ %182, %181 ], [ null, %1 ]
  call void @bitmap_obstack_release(ptr noundef null) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #22
  ret ptr %184
}

; Function Attrs: optsize
declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @bitmap_initialize_stat(ptr nocapture noundef writeonly %0) unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.bitmap_head_def, ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store ptr @bitmap_default_obstack, ptr %2, align 8, !tbaa !213
  ret void
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @c_omp_predetermined_sharing(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_variant_type_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @c_build_va_arg(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i32, ptr @warn_cxx_compat, align 4, !tbaa !28
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = load i64, ptr %2, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 6
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %0, i32 noundef 49, ptr noundef nonnull @.str.164) #21
  br label %12

12:                                               ; preds = %10, %6, %3
  %13 = tail call ptr @build_va_arg(i32 noundef %0, ptr noundef %1, ptr noundef %2) #21
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @build_va_arg(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_complex_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @mode_for_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @c_common_fixed_point_type_for_size(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @function_types_compatible_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = load i64, ptr %5, align 8
  %9 = load i64, ptr %7, align 8
  %10 = xor i64 %9, %8
  %11 = and i64 %10, 524288
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, ptr @input_location, align 4, !tbaa !28
  %15 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %14, i32 noundef 0, ptr noundef nonnull @.str.169) #21
  %16 = load i64, ptr %5, align 8
  br label %17

17:                                               ; preds = %13, %3
  %18 = phi i64 [ %16, %13 ], [ %8, %3 ]
  %19 = and i64 %18, 524288
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %37, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 16
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = trunc i64 %18 to i32
  %25 = lshr i32 %24, 20
  %26 = and i32 %25, 1
  %27 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = lshr i32 %28, 11
  %30 = and i32 %29, 4
  %31 = lshr i64 %18, 48
  %32 = trunc i64 %31 to i32
  %33 = and i32 %32, 65280
  %34 = or disjoint i32 %33, %26
  %35 = or disjoint i32 %34, %30
  %36 = tail call ptr @build_qualified_type(ptr noundef %23, i32 noundef %35) #21
  br label %37

37:                                               ; preds = %21, %17
  %38 = phi ptr [ %36, %21 ], [ %5, %17 ]
  %39 = load i64, ptr %7, align 8
  %40 = and i64 %39, 524288
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 16
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = trunc i64 %39 to i32
  %46 = lshr i32 %45, 20
  %47 = and i32 %46, 1
  %48 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = lshr i32 %49, 11
  %51 = and i32 %50, 4
  %52 = lshr i64 %39, 48
  %53 = trunc i64 %52 to i32
  %54 = and i32 %53, 65280
  %55 = or disjoint i32 %54, %47
  %56 = or disjoint i32 %55, %51
  %57 = tail call ptr @build_qualified_type(ptr noundef %44, i32 noundef %56) #21
  br label %58

58:                                               ; preds = %42, %37
  %59 = phi ptr [ %57, %42 ], [ %7, %37 ]
  %60 = tail call fastcc i32 @comptypes_internal(ptr noundef %38, ptr noundef %59, ptr noundef %2) #20
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %96, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !5
  %65 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !5
  %67 = icmp eq ptr %64, null
  br i1 %67, label %68, label %79

68:                                               ; preds = %62
  %69 = tail call i32 @self_promoting_args_p(ptr noundef %66) #21
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %96, label %71

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 17
  %73 = load ptr, ptr %72, align 8, !tbaa !5
  %74 = icmp eq ptr %73, null
  br i1 %74, label %96, label %75

75:                                               ; preds = %71
  %76 = tail call fastcc i32 @type_lists_compatible_p(ptr noundef %66, ptr noundef nonnull %73, ptr noundef %2) #20
  %77 = icmp eq i32 %76, 1
  %78 = select i1 %77, i32 %60, i32 2
  br label %96

79:                                               ; preds = %62
  %80 = icmp eq ptr %66, null
  br i1 %80, label %81, label %92

81:                                               ; preds = %79
  %82 = tail call i32 @self_promoting_args_p(ptr noundef nonnull %64) #21
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %81
  %85 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 17
  %86 = load ptr, ptr %85, align 8, !tbaa !5
  %87 = icmp eq ptr %86, null
  br i1 %87, label %96, label %88

88:                                               ; preds = %84
  %89 = tail call fastcc i32 @type_lists_compatible_p(ptr noundef nonnull %64, ptr noundef nonnull %86, ptr noundef %2) #20
  %90 = icmp eq i32 %89, 1
  %91 = select i1 %90, i32 %60, i32 2
  br label %96

92:                                               ; preds = %79
  %93 = tail call fastcc i32 @type_lists_compatible_p(ptr noundef nonnull %64, ptr noundef nonnull %66, ptr noundef %2) #20
  %94 = icmp eq i32 %93, 1
  %95 = select i1 %94, i32 %60, i32 %93
  br label %96

96:                                               ; preds = %88, %75, %84, %81, %71, %68, %58, %92
  %97 = phi i32 [ %95, %92 ], [ 0, %58 ], [ 0, %68 ], [ %60, %71 ], [ %78, %75 ], [ 0, %81 ], [ %60, %84 ], [ %91, %88 ]
  ret i32 %97
}

; Function Attrs: optsize
declare i32 @attribute_list_contained(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @tagged_types_tu_compatible_p(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  br label %4

4:                                                ; preds = %13, %3
  %5 = phi ptr [ %0, %3 ], [ %15, %13 ]
  %6 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 12
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = load i64, ptr %7, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 35
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tree_decl_non_common, ptr %7, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %4, !llvm.loop !215

17:                                               ; preds = %9, %4, %13
  br label %18

18:                                               ; preds = %17, %27
  %19 = phi ptr [ %29, %27 ], [ %1, %17 ]
  %20 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %18
  %24 = load i64, ptr %21, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 35
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.tree_decl_non_common, ptr %21, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !5
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !216

31:                                               ; preds = %23, %18, %27
  %32 = load i32, ptr @flag_isoc99, align 4, !tbaa !28
  %33 = icmp eq i32 %32, 0
  %34 = icmp eq ptr %7, %21
  %35 = or i1 %34, %33
  br i1 %35, label %36, label %335

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !5
  %39 = icmp eq ptr %38, null
  br i1 %39, label %335, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !5
  %43 = icmp eq ptr %42, null
  br i1 %43, label %335, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr @tagged_tu_seen_base, align 8, !tbaa !8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %62, label %47

47:                                               ; preds = %44, %56
  %48 = phi ptr [ %57, %56 ], [ %45, %44 ]
  %49 = getelementptr inbounds %struct.tagged_tu_seen_cache, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !217
  %51 = icmp eq ptr %50, %5
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.tagged_tu_seen_cache, ptr %48, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !218
  %55 = icmp eq ptr %54, %19
  br i1 %55, label %59, label %56

56:                                               ; preds = %47, %52
  %57 = load ptr, ptr %48, align 8, !tbaa !8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %47, !llvm.loop !219

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.tagged_tu_seen_cache, ptr %48, i64 0, i32 3
  %61 = load i32, ptr %60, align 8, !tbaa !220
  br label %335

62:                                               ; preds = %56, %44
  %63 = load i64, ptr %5, align 8
  %64 = trunc i64 %63 to i16
  switch i16 %64, label %334 [
    i16 6, label %65
    i16 17, label %144
    i16 16, label %275
  ]

65:                                               ; preds = %62
  %66 = tail call fastcc ptr @alloc_tagged_tu_seen_cache(ptr noundef nonnull %5, ptr noundef %19) #20
  %67 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !5
  %69 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !5
  %71 = icmp eq ptr %68, %70
  br i1 %71, label %335, label %72

72:                                               ; preds = %65
  %73 = icmp ne ptr %68, null
  %74 = icmp ne ptr %70, null
  %75 = and i1 %73, %74
  br i1 %75, label %76, label %101

76:                                               ; preds = %72, %93
  %77 = phi ptr [ %97, %93 ], [ %70, %72 ]
  %78 = phi ptr [ %95, %93 ], [ %68, %72 ]
  %79 = getelementptr inbounds %struct.tree_list, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !5
  %81 = getelementptr inbounds %struct.tree_list, ptr %77, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !5
  %83 = icmp eq ptr %80, %82
  br i1 %83, label %84, label %107

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.tree_list, ptr %78, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !5
  %87 = getelementptr inbounds %struct.tree_list, ptr %77, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !5
  %89 = tail call i32 @simple_cst_equal(ptr noundef %86, ptr noundef %88) #21
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %93, label %91

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.tagged_tu_seen_cache, ptr %66, i64 0, i32 3
  store i32 0, ptr %92, align 8, !tbaa !220
  br label %335

93:                                               ; preds = %84
  %94 = getelementptr inbounds %struct.tree_common, ptr %78, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !5
  %96 = getelementptr inbounds %struct.tree_common, ptr %77, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !5
  %98 = icmp ne ptr %95, null
  %99 = icmp ne ptr %97, null
  %100 = select i1 %98, i1 %99, i1 false
  br i1 %100, label %76, label %101, !llvm.loop !221

101:                                              ; preds = %93, %72
  %102 = phi ptr [ %68, %72 ], [ %95, %93 ]
  %103 = phi ptr [ %70, %72 ], [ %97, %93 ]
  %104 = icmp eq ptr %102, null
  %105 = icmp eq ptr %103, null
  %106 = select i1 %104, i1 %105, i1 false
  br i1 %106, label %335, label %107

107:                                              ; preds = %76, %101
  %108 = phi i1 [ %105, %101 ], [ false, %76 ]
  %109 = phi i1 [ %104, %101 ], [ false, %76 ]
  %110 = select i1 %109, i1 true, i1 %108
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.tagged_tu_seen_cache, ptr %66, i64 0, i32 3
  store i32 0, ptr %112, align 8, !tbaa !220
  br label %335

113:                                              ; preds = %107
  %114 = load ptr, ptr %67, align 8, !tbaa !5
  %115 = tail call i32 @list_length(ptr noundef %114) #21
  %116 = load ptr, ptr %69, align 8, !tbaa !5
  %117 = tail call i32 @list_length(ptr noundef %116) #21
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load ptr, ptr %67, align 8, !tbaa !5
  %121 = icmp eq ptr %120, null
  br i1 %121, label %335, label %128

122:                                              ; preds = %113
  %123 = getelementptr inbounds %struct.tagged_tu_seen_cache, ptr %66, i64 0, i32 3
  store i32 0, ptr %123, align 8, !tbaa !220
  br label %335

124:                                              ; preds = %135
  %125 = getelementptr inbounds %struct.tree_common, ptr %129, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !5
  %127 = icmp eq ptr %126, null
  br i1 %127, label %335, label %128, !llvm.loop !222

128:                                              ; preds = %119, %124
  %129 = phi ptr [ %126, %124 ], [ %120, %119 ]
  %130 = getelementptr inbounds %struct.tree_list, ptr %129, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !5
  %132 = load ptr, ptr %69, align 8, !tbaa !5
  %133 = tail call ptr @purpose_member(ptr noundef %131, ptr noundef %132) #21
  %134 = icmp eq ptr %133, null
  br i1 %134, label %142, label %135

135:                                              ; preds = %128
  %136 = getelementptr inbounds %struct.tree_list, ptr %129, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !5
  %138 = getelementptr inbounds %struct.tree_list, ptr %133, i64 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !5
  %140 = tail call i32 @simple_cst_equal(ptr noundef %137, ptr noundef %139) #21
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %124, label %142

142:                                              ; preds = %135, %128
  %143 = getelementptr inbounds %struct.tagged_tu_seen_cache, ptr %66, i64 0, i32 3
  store i32 0, ptr %143, align 8, !tbaa !220
  br label %335

144:                                              ; preds = %62
  %145 = tail call fastcc ptr @alloc_tagged_tu_seen_cache(ptr noundef nonnull %5, ptr noundef %19) #20
  %146 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !5
  %148 = tail call i32 @list_length(ptr noundef %147) #21
  %149 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !5
  %151 = tail call i32 @list_length(ptr noundef %150) #21
  %152 = icmp eq i32 %148, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %144
  %154 = load ptr, ptr %146, align 8, !tbaa !5
  %155 = load ptr, ptr %149, align 8, !tbaa !5
  %156 = icmp ne ptr %154, null
  %157 = icmp ne ptr %155, null
  %158 = select i1 %156, i1 %157, i1 false
  br i1 %158, label %161, label %206

159:                                              ; preds = %144
  %160 = getelementptr inbounds %struct.tagged_tu_seen_cache, ptr %145, i64 0, i32 3
  store i32 0, ptr %160, align 8, !tbaa !220
  br label %335

161:                                              ; preds = %153, %198
  %162 = phi ptr [ %202, %198 ], [ %155, %153 ]
  %163 = phi ptr [ %201, %198 ], [ %154, %153 ]
  %164 = phi i8 [ %185, %198 ], [ 0, %153 ]
  %165 = getelementptr inbounds %struct.tree_decl_minimal, ptr %163, i64 0, i32 3
  %166 = load ptr, ptr %165, align 8, !tbaa !5
  %167 = getelementptr inbounds %struct.tree_decl_minimal, ptr %162, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !5
  %169 = icmp eq ptr %166, %168
  br i1 %169, label %170, label %211

170:                                              ; preds = %161
  %171 = getelementptr inbounds %struct.tree_common, ptr %163, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !5
  %173 = getelementptr inbounds %struct.tree_common, ptr %162, i64 0, i32 2
  %174 = load ptr, ptr %173, align 8, !tbaa !5
  %175 = tail call fastcc i32 @comptypes_internal(ptr noundef %172, ptr noundef %174, ptr noundef %2) #20
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %184, label %177

177:                                              ; preds = %170
  %178 = load ptr, ptr %165, align 8, !tbaa !5
  %179 = icmp eq ptr %178, null
  br i1 %179, label %211, label %180

180:                                              ; preds = %177
  switch i32 %175, label %184 [
    i32 0, label %181
    i32 2, label %183
  ]

181:                                              ; preds = %180
  %182 = getelementptr inbounds %struct.tagged_tu_seen_cache, ptr %145, i64 0, i32 3
  store i32 0, ptr %182, align 8, !tbaa !220
  br label %335

183:                                              ; preds = %180
  br label %184

184:                                              ; preds = %170, %180, %183
  %185 = phi i8 [ 1, %183 ], [ %164, %180 ], [ %164, %170 ]
  %186 = load i64, ptr %163, align 8
  %187 = and i64 %186, 65535
  %188 = icmp eq i64 %187, 31
  br i1 %188, label %189, label %198

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.tree_field_decl, ptr %163, i64 0, i32 4
  %191 = load ptr, ptr %190, align 8, !tbaa !5
  %192 = getelementptr inbounds %struct.tree_field_decl, ptr %162, i64 0, i32 4
  %193 = load ptr, ptr %192, align 8, !tbaa !5
  %194 = tail call i32 @simple_cst_equal(ptr noundef %191, ptr noundef %193) #21
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %198, label %196

196:                                              ; preds = %189
  %197 = getelementptr inbounds %struct.tagged_tu_seen_cache, ptr %145, i64 0, i32 3
  store i32 0, ptr %197, align 8, !tbaa !220
  br label %335

198:                                              ; preds = %189, %184
  %199 = getelementptr inbounds %struct.tree_common, ptr %163, i64 0, i32 1
  %200 = getelementptr inbounds %struct.tree_common, ptr %162, i64 0, i32 1
  %201 = load ptr, ptr %199, align 8, !tbaa !5
  %202 = load ptr, ptr %200, align 8, !tbaa !5
  %203 = icmp ne ptr %201, null
  %204 = icmp ne ptr %202, null
  %205 = select i1 %203, i1 %204, i1 false
  br i1 %205, label %161, label %206, !llvm.loop !223

206:                                              ; preds = %198, %153
  %207 = phi i8 [ 0, %153 ], [ %185, %198 ]
  %208 = phi i1 [ %156, %153 ], [ %203, %198 ]
  %209 = phi i1 [ %157, %153 ], [ %204, %198 ]
  %210 = select i1 %208, i1 true, i1 %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %161, %177, %206
  %212 = phi i8 [ %207, %206 ], [ %164, %177 ], [ %164, %161 ]
  %213 = load ptr, ptr %146, align 8, !tbaa !5
  %214 = icmp eq ptr %213, null
  br i1 %214, label %270, label %219

215:                                              ; preds = %206
  %216 = icmp eq i8 %207, 0
  %217 = select i1 %216, i32 1, i32 2
  %218 = getelementptr inbounds %struct.tagged_tu_seen_cache, ptr %145, i64 0, i32 3
  store i32 %217, ptr %218, align 8, !tbaa !220
  br label %335

219:                                              ; preds = %211, %266
  %220 = phi ptr [ %268, %266 ], [ %213, %211 ]
  %221 = phi i8 [ %248, %266 ], [ %212, %211 ]
  %222 = load ptr, ptr %149, align 8, !tbaa !5
  %223 = icmp eq ptr %222, null
  br i1 %223, label %264, label %224

224:                                              ; preds = %219
  %225 = getelementptr inbounds %struct.tree_decl_minimal, ptr %220, i64 0, i32 3
  %226 = getelementptr inbounds %struct.tree_common, ptr %220, i64 0, i32 2
  %227 = load ptr, ptr %225, align 8, !tbaa !5
  br label %228

228:                                              ; preds = %224, %259
  %229 = phi ptr [ %227, %224 ], [ %260, %259 ]
  %230 = phi ptr [ %222, %224 ], [ %262, %259 ]
  %231 = getelementptr inbounds %struct.tree_decl_minimal, ptr %230, i64 0, i32 3
  %232 = load ptr, ptr %231, align 8, !tbaa !5
  %233 = icmp eq ptr %229, %232
  br i1 %233, label %234, label %259

234:                                              ; preds = %228
  %235 = load ptr, ptr %226, align 8, !tbaa !5
  %236 = getelementptr inbounds %struct.tree_common, ptr %230, i64 0, i32 2
  %237 = load ptr, ptr %236, align 8, !tbaa !5
  %238 = tail call fastcc i32 @comptypes_internal(ptr noundef %235, ptr noundef %237, ptr noundef %2) #20
  %239 = icmp eq i32 %238, 1
  br i1 %239, label %247, label %240

240:                                              ; preds = %234
  %241 = load ptr, ptr %225, align 8, !tbaa !5
  %242 = icmp eq ptr %241, null
  br i1 %242, label %259, label %243

243:                                              ; preds = %240
  switch i32 %238, label %247 [
    i32 0, label %244
    i32 2, label %246
  ]

244:                                              ; preds = %243
  %245 = getelementptr inbounds %struct.tagged_tu_seen_cache, ptr %145, i64 0, i32 3
  store i32 0, ptr %245, align 8, !tbaa !220
  br label %335

246:                                              ; preds = %243
  br label %247

247:                                              ; preds = %234, %243, %246
  %248 = phi i8 [ 1, %246 ], [ %221, %243 ], [ %221, %234 ]
  %249 = load i64, ptr %220, align 8
  %250 = and i64 %249, 65535
  %251 = icmp eq i64 %250, 31
  br i1 %251, label %252, label %266

252:                                              ; preds = %247
  %253 = getelementptr inbounds %struct.tree_field_decl, ptr %220, i64 0, i32 4
  %254 = load ptr, ptr %253, align 8, !tbaa !5
  %255 = getelementptr inbounds %struct.tree_field_decl, ptr %230, i64 0, i32 4
  %256 = load ptr, ptr %255, align 8, !tbaa !5
  %257 = tail call i32 @simple_cst_equal(ptr noundef %254, ptr noundef %256) #21
  %258 = icmp eq i32 %257, 1
  br i1 %258, label %266, label %264

259:                                              ; preds = %240, %228
  %260 = phi ptr [ null, %240 ], [ %229, %228 ]
  %261 = getelementptr inbounds %struct.tree_common, ptr %230, i64 0, i32 1
  %262 = load ptr, ptr %261, align 8, !tbaa !5
  %263 = icmp eq ptr %262, null
  br i1 %263, label %264, label %228, !llvm.loop !224

264:                                              ; preds = %252, %219, %259
  %265 = getelementptr inbounds %struct.tagged_tu_seen_cache, ptr %145, i64 0, i32 3
  store i32 0, ptr %265, align 8, !tbaa !220
  br label %335

266:                                              ; preds = %252, %247
  %267 = getelementptr inbounds %struct.tree_common, ptr %220, i64 0, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !5
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %219, !llvm.loop !225

270:                                              ; preds = %266, %211
  %271 = phi i8 [ %212, %211 ], [ %248, %266 ]
  %272 = icmp eq i8 %271, 0
  %273 = select i1 %272, i32 10, i32 2
  %274 = getelementptr inbounds %struct.tagged_tu_seen_cache, ptr %145, i64 0, i32 3
  store i32 %273, ptr %274, align 8, !tbaa !220
  br label %335

275:                                              ; preds = %62
  %276 = tail call fastcc ptr @alloc_tagged_tu_seen_cache(ptr noundef nonnull %5, ptr noundef %19) #20
  %277 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 1
  %278 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 1
  %279 = load ptr, ptr %277, align 8, !tbaa !5
  %280 = load ptr, ptr %278, align 8, !tbaa !5
  %281 = icmp ne ptr %279, null
  %282 = icmp ne ptr %280, null
  %283 = select i1 %281, i1 %282, i1 false
  br i1 %283, label %284, label %331

284:                                              ; preds = %275, %318
  %285 = phi ptr [ %322, %318 ], [ %280, %275 ]
  %286 = phi ptr [ %321, %318 ], [ %279, %275 ]
  %287 = phi i8 [ %307, %318 ], [ 0, %275 ]
  %288 = load i64, ptr %286, align 8
  %289 = load i64, ptr %285, align 8
  %290 = xor i64 %289, %288
  %291 = and i64 %290, 65535
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %293, label %326

293:                                              ; preds = %284
  %294 = getelementptr inbounds %struct.tree_decl_minimal, ptr %286, i64 0, i32 3
  %295 = load ptr, ptr %294, align 8, !tbaa !5
  %296 = getelementptr inbounds %struct.tree_decl_minimal, ptr %285, i64 0, i32 3
  %297 = load ptr, ptr %296, align 8, !tbaa !5
  %298 = icmp eq ptr %295, %297
  br i1 %298, label %299, label %326

299:                                              ; preds = %293
  %300 = getelementptr inbounds %struct.tree_common, ptr %286, i64 0, i32 2
  %301 = load ptr, ptr %300, align 8, !tbaa !5
  %302 = getelementptr inbounds %struct.tree_common, ptr %285, i64 0, i32 2
  %303 = load ptr, ptr %302, align 8, !tbaa !5
  %304 = tail call fastcc i32 @comptypes_internal(ptr noundef %301, ptr noundef %303, ptr noundef %2) #20
  switch i32 %304, label %306 [
    i32 0, label %326
    i32 2, label %305
  ]

305:                                              ; preds = %299
  br label %306

306:                                              ; preds = %299, %305
  %307 = phi i8 [ 1, %305 ], [ %287, %299 ]
  %308 = load i64, ptr %286, align 8
  %309 = and i64 %308, 65535
  %310 = icmp eq i64 %309, 31
  br i1 %310, label %311, label %318

311:                                              ; preds = %306
  %312 = getelementptr inbounds %struct.tree_field_decl, ptr %286, i64 0, i32 4
  %313 = load ptr, ptr %312, align 8, !tbaa !5
  %314 = getelementptr inbounds %struct.tree_field_decl, ptr %285, i64 0, i32 4
  %315 = load ptr, ptr %314, align 8, !tbaa !5
  %316 = tail call i32 @simple_cst_equal(ptr noundef %313, ptr noundef %315) #21
  %317 = icmp eq i32 %316, 1
  br i1 %317, label %318, label %326

318:                                              ; preds = %311, %306
  %319 = getelementptr inbounds %struct.tree_common, ptr %286, i64 0, i32 1
  %320 = getelementptr inbounds %struct.tree_common, ptr %285, i64 0, i32 1
  %321 = load ptr, ptr %319, align 8, !tbaa !5
  %322 = load ptr, ptr %320, align 8, !tbaa !5
  %323 = icmp ne ptr %321, null
  %324 = icmp ne ptr %322, null
  %325 = select i1 %323, i1 %324, i1 false
  br i1 %325, label %284, label %328, !llvm.loop !226

326:                                              ; preds = %293, %284, %299, %311
  %327 = getelementptr inbounds %struct.tagged_tu_seen_cache, ptr %276, i64 0, i32 3
  store i32 0, ptr %327, align 8, !tbaa !220
  br label %335

328:                                              ; preds = %318
  %329 = icmp eq i8 %307, 0
  %330 = select i1 %329, i32 1, i32 2
  br label %331

331:                                              ; preds = %328, %275
  %332 = phi i32 [ 1, %275 ], [ %330, %328 ]
  %333 = getelementptr inbounds %struct.tagged_tu_seen_cache, ptr %276, i64 0, i32 3
  store i32 %332, ptr %333, align 8, !tbaa !220
  br label %335

334:                                              ; preds = %62
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 1500, ptr noundef nonnull @.str.8) #21
  br label %335

335:                                              ; preds = %124, %326, %331, %119, %31, %244, %264, %196, %181, %59, %159, %215, %270, %91, %111, %122, %142, %65, %101, %36, %40, %334
  %336 = phi i32 [ 0, %334 ], [ %61, %59 ], [ 1, %40 ], [ 1, %36 ], [ 0, %111 ], [ 0, %122 ], [ 0, %142 ], [ 0, %91 ], [ 1, %65 ], [ 1, %101 ], [ 0, %159 ], [ %273, %270 ], [ %217, %215 ], [ 0, %181 ], [ 0, %196 ], [ 0, %264 ], [ 0, %244 ], [ 0, %31 ], [ 1, %119 ], [ %332, %331 ], [ 0, %326 ], [ 1, %124 ]
  ret i32 %336
}

; Function Attrs: optsize
declare i32 @self_promoting_args_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @type_lists_compatible_p(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  %5 = icmp eq ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %180, label %7

7:                                                ; preds = %3, %170
  %8 = phi i1 [ %178, %170 ], [ %5, %3 ]
  %9 = phi i1 [ %177, %170 ], [ %4, %3 ]
  %10 = phi ptr [ %174, %170 ], [ %0, %3 ]
  %11 = phi i32 [ %171, %170 ], [ 0, %3 ]
  %12 = phi i32 [ %172, %170 ], [ 1, %3 ]
  %13 = phi ptr [ %176, %170 ], [ %1, %3 ]
  %14 = select i1 %9, i1 true, i1 %8
  br i1 %14, label %180, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.tree_list, ptr %10, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  %18 = getelementptr inbounds %struct.tree_list, ptr %13, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !5
  %20 = icmp eq ptr %17, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %23 = icmp eq ptr %17, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load i64, ptr %17, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 15
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.tree_type, ptr %17, i64 0, i32 16
  %30 = load ptr, ptr %29, align 8, !tbaa !5
  br label %31

31:                                               ; preds = %28, %24, %21
  %32 = phi ptr [ %30, %28 ], [ %17, %24 ], [ %17, %21 ]
  %33 = icmp eq ptr %19, null
  br i1 %33, label %54, label %38

34:                                               ; preds = %15
  %35 = icmp eq ptr %19, null
  br i1 %35, label %51, label %36

36:                                               ; preds = %34
  %37 = load ptr, ptr @global_trees, align 16, !tbaa !8
  br label %38

38:                                               ; preds = %36, %31
  %39 = phi ptr [ %37, %36 ], [ %22, %31 ]
  %40 = phi ptr [ null, %36 ], [ %32, %31 ]
  %41 = icmp eq ptr %19, %39
  br i1 %41, label %49, label %42

42:                                               ; preds = %38
  %43 = load i64, ptr %19, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 15
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 16
  %48 = load ptr, ptr %47, align 8, !tbaa !5
  br label %49

49:                                               ; preds = %46, %42, %38
  %50 = phi ptr [ %48, %46 ], [ %19, %42 ], [ %19, %38 ]
  br i1 %20, label %51, label %57

51:                                               ; preds = %34, %49
  %52 = tail call ptr @c_type_promotes_to(ptr noundef %19) #20
  %53 = icmp eq ptr %52, %19
  br i1 %53, label %170, label %180

54:                                               ; preds = %31
  %55 = tail call ptr @c_type_promotes_to(ptr noundef nonnull %17) #20
  %56 = icmp eq ptr %55, %17
  br i1 %56, label %170, label %180

57:                                               ; preds = %49
  %58 = load i64, ptr %17, align 8
  %59 = and i64 %58, 65535
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %170, label %61

61:                                               ; preds = %57
  %62 = load i64, ptr %19, align 8
  %63 = and i64 %62, 65535
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %170, label %65

65:                                               ; preds = %61
  %66 = tail call fastcc i32 @comptypes_internal(ptr noundef %40, ptr noundef %50, ptr noundef %2) #20
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %170

68:                                               ; preds = %65
  %69 = load i64, ptr %17, align 8
  %70 = and i64 %69, 65535
  %71 = icmp eq i64 %70, 17
  br i1 %71, label %72, label %119

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.tree_type, ptr %17, i64 0, i32 12
  %74 = load ptr, ptr %73, align 8, !tbaa !5
  %75 = icmp eq ptr %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.tree_type, ptr %17, i64 0, i32 6
  %78 = load i32, ptr %77, align 4
  %79 = and i32 %78, 4096
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %119, label %81

81:                                               ; preds = %76, %72
  %82 = getelementptr inbounds %struct.tree_type, ptr %17, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !5
  %84 = load i64, ptr %83, align 8
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 23
  br i1 %86, label %87, label %119

87:                                               ; preds = %81
  %88 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !5
  %90 = tail call i32 @tree_int_cst_equal(ptr noundef nonnull %83, ptr noundef %89) #21
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %119, label %92

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.tree_type, ptr %17, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !5
  %95 = icmp eq ptr %94, null
  br i1 %95, label %180, label %100

96:                                               ; preds = %115
  %97 = getelementptr inbounds %struct.tree_common, ptr %101, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !5
  %99 = icmp eq ptr %98, null
  br i1 %99, label %180, label %100, !llvm.loop !227

100:                                              ; preds = %92, %96
  %101 = phi ptr [ %98, %96 ], [ %94, %92 ]
  %102 = getelementptr inbounds %struct.tree_common, ptr %101, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !5
  %104 = icmp eq ptr %103, null
  br i1 %104, label %115, label %105

105:                                              ; preds = %100
  %106 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %107 = icmp eq ptr %103, %106
  br i1 %107, label %115, label %108

108:                                              ; preds = %105
  %109 = load i64, ptr %103, align 8
  %110 = and i64 %109, 65535
  %111 = icmp eq i64 %110, 15
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.tree_type, ptr %103, i64 0, i32 16
  %114 = load ptr, ptr %113, align 8, !tbaa !5
  br label %115

115:                                              ; preds = %112, %108, %105, %100
  %116 = phi ptr [ %114, %112 ], [ %103, %108 ], [ %103, %105 ], [ null, %100 ]
  %117 = tail call fastcc i32 @comptypes_internal(ptr noundef %116, ptr noundef %50, ptr noundef %2) #20
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %96, label %170

119:                                              ; preds = %87, %81, %76, %68
  %120 = load i64, ptr %19, align 8
  %121 = and i64 %120, 65535
  %122 = icmp eq i64 %121, 17
  br i1 %122, label %123, label %180

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 12
  %125 = load ptr, ptr %124, align 8, !tbaa !5
  %126 = icmp eq ptr %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 6
  %129 = load i32, ptr %128, align 4
  %130 = and i32 %129, 4096
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %180, label %132

132:                                              ; preds = %127, %123
  %133 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !5
  %135 = load i64, ptr %134, align 8
  %136 = and i64 %135, 65535
  %137 = icmp eq i64 %136, 23
  br i1 %137, label %138, label %180

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.tree_type, ptr %17, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !5
  %141 = tail call i32 @tree_int_cst_equal(ptr noundef nonnull %134, ptr noundef %140) #21
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %180, label %143

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !5
  %146 = icmp eq ptr %145, null
  br i1 %146, label %180, label %151

147:                                              ; preds = %166
  %148 = getelementptr inbounds %struct.tree_common, ptr %152, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !5
  %150 = icmp eq ptr %149, null
  br i1 %150, label %180, label %151, !llvm.loop !228

151:                                              ; preds = %143, %147
  %152 = phi ptr [ %149, %147 ], [ %145, %143 ]
  %153 = getelementptr inbounds %struct.tree_common, ptr %152, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !5
  %155 = icmp eq ptr %154, null
  br i1 %155, label %166, label %156

156:                                              ; preds = %151
  %157 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %158 = icmp eq ptr %154, %157
  br i1 %158, label %166, label %159

159:                                              ; preds = %156
  %160 = load i64, ptr %154, align 8
  %161 = and i64 %160, 65535
  %162 = icmp eq i64 %161, 15
  br i1 %162, label %166, label %163

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.tree_type, ptr %154, i64 0, i32 16
  %165 = load ptr, ptr %164, align 8, !tbaa !5
  br label %166

166:                                              ; preds = %163, %159, %156, %151
  %167 = phi ptr [ %165, %163 ], [ %154, %159 ], [ %154, %156 ], [ null, %151 ]
  %168 = tail call fastcc i32 @comptypes_internal(ptr noundef %167, ptr noundef %40, ptr noundef %2) #20
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %147, label %170

170:                                              ; preds = %115, %166, %51, %61, %57, %65, %54
  %171 = phi i32 [ %11, %51 ], [ %11, %54 ], [ %11, %57 ], [ %11, %61 ], [ %66, %65 ], [ 0, %166 ], [ 0, %115 ]
  %172 = tail call i32 @llvm.smax.i32(i32 %171, i32 %12)
  %173 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !5
  %175 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !5
  %177 = icmp eq ptr %174, null
  %178 = icmp eq ptr %176, null
  %179 = select i1 %177, i1 %178, i1 false
  br i1 %179, label %180, label %7

180:                                              ; preds = %119, %127, %132, %138, %54, %51, %7, %170, %92, %143, %96, %147, %3
  %181 = phi i32 [ 1, %3 ], [ 0, %147 ], [ 0, %96 ], [ 0, %143 ], [ 0, %92 ], [ 0, %119 ], [ 0, %127 ], [ 0, %132 ], [ 0, %138 ], [ 0, %54 ], [ 0, %51 ], [ 0, %7 ], [ %172, %170 ]
  ret i32 %181
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @alloc_tagged_tu_seen_cache(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @xmalloc(i64 noundef 32) #21
  %4 = load ptr, ptr @tagged_tu_seen_base, align 8, !tbaa !8
  store ptr %4, ptr %3, align 8, !tbaa !36
  %5 = getelementptr inbounds %struct.tagged_tu_seen_cache, ptr %3, i64 0, i32 1
  store ptr %0, ptr %5, align 8, !tbaa !217
  %6 = getelementptr inbounds %struct.tagged_tu_seen_cache, ptr %3, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !218
  store ptr %3, ptr @tagged_tu_seen_base, align 8, !tbaa !8
  %7 = getelementptr inbounds %struct.tagged_tu_seen_cache, ptr %3, i64 0, i32 3
  store i32 1, ptr %7, align 8, !tbaa !220
  ret ptr %3
}

; Function Attrs: optsize
declare i32 @simple_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @purpose_member(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_obstack_newchunk(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @objc_message_selector() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_tree_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !75
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !8
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !8
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #8 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !8
  ret void
}

; Function Attrs: optsize
declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lvalue_error(i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @comptypes_check_enum_int(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr @tagged_tu_seen_base, align 8, !tbaa !8
  %5 = tail call fastcc i32 @comptypes_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2) #20
  tail call fastcc void @free_all_tagged_tu_seen_up_to(ptr noundef %4) #20
  ret i32 %5
}

; Function Attrs: optsize
declare zeroext i8 @vector_types_convertible_p(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @vector_targets_convertible_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @check_missing_format_attribute(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @c_common_unsigned_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @objc_type_quals_match(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @decl_constant_value_for_optimization(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_vector_from_ctor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @valid_compound_expr_initializer(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 52
  br i1 %5, label %6, label %19

6:                                                ; preds = %2, %13
  %7 = phi ptr [ %15, %13 ], [ %0, %2 ]
  %8 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = tail call fastcc ptr @valid_compound_expr_initializer(ptr noundef %9, ptr noundef %1) #20
  %11 = load ptr, ptr @global_trees, align 16, !tbaa !8
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %25, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 52
  br i1 %18, label %6, label %19

19:                                               ; preds = %13, %2
  %20 = phi ptr [ %0, %2 ], [ %15, %13 ]
  %21 = tail call ptr @initializer_constant_valid_p(ptr noundef nonnull %20, ptr noundef %1) #21
  %22 = icmp eq ptr %21, null
  %23 = load ptr, ptr @global_trees, align 16
  %24 = select i1 %22, ptr %23, ptr %20
  br label %25

25:                                               ; preds = %6, %19
  %26 = phi ptr [ %24, %19 ], [ %10, %6 ]
  ret ptr %26
}

; Function Attrs: optsize
declare ptr @initializer_constant_valid_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_pending_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = load ptr, ptr @constructor_type, align 8, !tbaa !8
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 15
  br i1 %8, label %9, label %44

9:                                                ; preds = %4
  %10 = load ptr, ptr @constructor_pending_elts, align 8, !tbaa !8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %80, label %12

12:                                               ; preds = %9, %40
  %13 = phi ptr [ %42, %40 ], [ %10, %9 ]
  %14 = getelementptr inbounds %struct.init_node, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !161
  %16 = tail call i32 @tree_int_cst_lt(ptr noundef %0, ptr noundef %15) #21
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %12
  %19 = load ptr, ptr %14, align 8, !tbaa !161
  %20 = tail call i32 @tree_int_cst_lt(ptr noundef %19, ptr noundef %0) #21
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.init_node, ptr %13, i64 0, i32 1
  br label %40

24:                                               ; preds = %18
  %25 = icmp eq i8 %3, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.init_node, ptr %13, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !173
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65536
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  tail call fastcc void @warning_init(i32 noundef 0, ptr noundef nonnull @.str.266) #20
  br label %37

33:                                               ; preds = %26
  %34 = load i32, ptr @warn_override_init, align 4, !tbaa !28
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  tail call fastcc void @warning_init(i32 noundef 154, ptr noundef nonnull @.str.267) #20
  br label %37

37:                                               ; preds = %32, %36, %33, %24
  %38 = getelementptr inbounds %struct.init_node, ptr %13, i64 0, i32 5
  store ptr %1, ptr %38, align 8, !tbaa !173
  %39 = getelementptr inbounds %struct.init_node, ptr %13, i64 0, i32 6
  store ptr %2, ptr %39, align 8, !tbaa !174
  br label %216

40:                                               ; preds = %12, %22
  %41 = phi ptr [ %23, %22 ], [ %13, %12 ]
  %42 = load ptr, ptr %41, align 8, !tbaa !8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %80, label %12, !llvm.loop !229

44:                                               ; preds = %4
  %45 = tail call ptr @bit_position(ptr noundef %0) #21
  %46 = load ptr, ptr @constructor_pending_elts, align 8, !tbaa !8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %80, label %48

48:                                               ; preds = %44, %73
  %49 = phi ptr [ %75, %73 ], [ %46, %44 ]
  %50 = getelementptr inbounds %struct.init_node, ptr %49, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !161
  %52 = tail call ptr @bit_position(ptr noundef %51) #21
  %53 = tail call i32 @tree_int_cst_lt(ptr noundef %45, ptr noundef %52) #21
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %48
  %56 = load ptr, ptr %50, align 8, !tbaa !161
  %57 = icmp eq ptr %56, %0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.init_node, ptr %49, i64 0, i32 1
  br label %73

60:                                               ; preds = %55
  %61 = icmp eq i8 %3, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.init_node, ptr %49, i64 0, i32 5
  %64 = load ptr, ptr %63, align 8, !tbaa !173
  %65 = load i64, ptr %64, align 8
  %66 = and i64 %65, 65536
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  tail call fastcc void @warning_init(i32 noundef 0, ptr noundef nonnull @.str.266) #20
  br label %77

69:                                               ; preds = %62
  %70 = load i32, ptr @warn_override_init, align 4, !tbaa !28
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %69
  tail call fastcc void @warning_init(i32 noundef 154, ptr noundef nonnull @.str.267) #20
  br label %77

73:                                               ; preds = %48, %58
  %74 = phi ptr [ %59, %58 ], [ %49, %48 ]
  %75 = load ptr, ptr %74, align 8, !tbaa !8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %48, !llvm.loop !230

77:                                               ; preds = %60, %69, %72, %68
  %78 = getelementptr inbounds %struct.init_node, ptr %49, i64 0, i32 5
  store ptr %1, ptr %78, align 8, !tbaa !173
  %79 = getelementptr inbounds %struct.init_node, ptr %49, i64 0, i32 6
  store ptr %2, ptr %79, align 8, !tbaa !174
  br label %216

80:                                               ; preds = %73, %40, %44, %9
  %81 = phi ptr [ @constructor_pending_elts, %9 ], [ @constructor_pending_elts, %44 ], [ %41, %40 ], [ %74, %73 ]
  %82 = phi ptr [ null, %9 ], [ null, %44 ], [ %13, %40 ], [ %49, %73 ]
  %83 = tail call ptr @ggc_alloc_stat(i64 noundef 56) #21
  %84 = getelementptr inbounds %struct.init_node, ptr %83, i64 0, i32 4
  store ptr %0, ptr %84, align 8, !tbaa !161
  %85 = getelementptr inbounds %struct.init_node, ptr %83, i64 0, i32 5
  store ptr %1, ptr %85, align 8, !tbaa !173
  %86 = getelementptr inbounds %struct.init_node, ptr %83, i64 0, i32 6
  store ptr %2, ptr %86, align 8, !tbaa !174
  store ptr %83, ptr %81, align 8, !tbaa !8
  %87 = getelementptr inbounds %struct.init_node, ptr %83, i64 0, i32 2
  store ptr %82, ptr %87, align 8, !tbaa !177
  %88 = getelementptr inbounds %struct.init_node, ptr %83, i64 0, i32 3
  store i32 0, ptr %88, align 8, !tbaa !231
  %89 = icmp eq ptr %82, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %83, i8 0, i64 16, i1 false)
  br i1 %89, label %216, label %90

90:                                               ; preds = %80, %211
  %91 = phi ptr [ %214, %211 ], [ %82, %80 ]
  %92 = phi ptr [ %91, %211 ], [ %83, %80 ]
  %93 = load ptr, ptr %91, align 8, !tbaa !175
  %94 = icmp eq ptr %92, %93
  %95 = getelementptr inbounds %struct.init_node, ptr %91, i64 0, i32 3
  %96 = load i32, ptr %95, align 8, !tbaa !231
  %97 = icmp eq i32 %96, 0
  br i1 %94, label %98, label %154

98:                                               ; preds = %90
  br i1 %97, label %211, label %99

99:                                               ; preds = %98
  %100 = icmp slt i32 %96, 0
  br i1 %100, label %101, label %153

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.init_node, ptr %92, i64 0, i32 3
  %103 = load i32, ptr %102, align 8, !tbaa !231
  %104 = icmp slt i32 %103, 0
  %105 = getelementptr inbounds %struct.init_node, ptr %92, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !176
  br i1 %104, label %107, label %123

107:                                              ; preds = %101
  store ptr %106, ptr %91, align 8, !tbaa !175
  %108 = icmp eq ptr %106, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %107
  %110 = getelementptr inbounds %struct.init_node, ptr %106, i64 0, i32 2
  store ptr %91, ptr %110, align 8, !tbaa !177
  br label %111

111:                                              ; preds = %109, %107
  store ptr %91, ptr %105, align 8, !tbaa !176
  store i32 0, ptr %95, align 8, !tbaa !231
  store i32 0, ptr %102, align 8, !tbaa !231
  %112 = getelementptr inbounds %struct.init_node, ptr %91, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !177
  store ptr %92, ptr %112, align 8, !tbaa !177
  %114 = getelementptr inbounds %struct.init_node, ptr %92, i64 0, i32 2
  store ptr %113, ptr %114, align 8, !tbaa !177
  %115 = icmp eq ptr %113, null
  br i1 %115, label %122, label %116

116:                                              ; preds = %111
  %117 = load ptr, ptr %113, align 8, !tbaa !175
  %118 = icmp eq ptr %117, %91
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store ptr %92, ptr %113, align 8, !tbaa !175
  br label %216

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.init_node, ptr %113, i64 0, i32 1
  store ptr %92, ptr %121, align 8, !tbaa !176
  br label %216

122:                                              ; preds = %111
  store ptr %92, ptr @constructor_pending_elts, align 8, !tbaa !8
  br label %216

123:                                              ; preds = %101
  %124 = load ptr, ptr %106, align 8, !tbaa !175
  store ptr %124, ptr %105, align 8, !tbaa !176
  %125 = icmp eq ptr %124, null
  br i1 %125, label %128, label %126

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.init_node, ptr %124, i64 0, i32 2
  store ptr %92, ptr %127, align 8, !tbaa !177
  br label %128

128:                                              ; preds = %126, %123
  store ptr %92, ptr %106, align 8, !tbaa !175
  %129 = getelementptr inbounds %struct.init_node, ptr %106, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !176
  store ptr %130, ptr %91, align 8, !tbaa !175
  %131 = icmp eq ptr %130, null
  br i1 %131, label %134, label %132

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.init_node, ptr %130, i64 0, i32 2
  store ptr %91, ptr %133, align 8, !tbaa !177
  br label %134

134:                                              ; preds = %132, %128
  store ptr %91, ptr %129, align 8, !tbaa !176
  %135 = getelementptr inbounds %struct.init_node, ptr %106, i64 0, i32 3
  %136 = load i32, ptr %135, align 8, !tbaa !231
  %137 = lshr i32 %136, 31
  store i32 %137, ptr %95, align 8, !tbaa !231
  %138 = load i32, ptr %135, align 8, !tbaa !231
  %139 = icmp sgt i32 %138, 0
  %140 = sext i1 %139 to i32
  store i32 %140, ptr %102, align 8, !tbaa !231
  store i32 0, ptr %135, align 8, !tbaa !231
  %141 = getelementptr inbounds %struct.init_node, ptr %91, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !177
  store ptr %106, ptr %141, align 8, !tbaa !177
  %143 = getelementptr inbounds %struct.init_node, ptr %92, i64 0, i32 2
  store ptr %106, ptr %143, align 8, !tbaa !177
  %144 = getelementptr inbounds %struct.init_node, ptr %106, i64 0, i32 2
  store ptr %142, ptr %144, align 8, !tbaa !177
  %145 = icmp eq ptr %142, null
  br i1 %145, label %152, label %146

146:                                              ; preds = %134
  %147 = load ptr, ptr %142, align 8, !tbaa !175
  %148 = icmp eq ptr %147, %91
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  store ptr %106, ptr %142, align 8, !tbaa !175
  br label %216

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.init_node, ptr %142, i64 0, i32 1
  store ptr %106, ptr %151, align 8, !tbaa !176
  br label %216

152:                                              ; preds = %134
  store ptr %106, ptr @constructor_pending_elts, align 8, !tbaa !8
  br label %216

153:                                              ; preds = %99
  store i32 0, ptr %95, align 8, !tbaa !231
  br label %216

154:                                              ; preds = %90
  br i1 %97, label %211, label %155

155:                                              ; preds = %154
  %156 = icmp sgt i32 %96, 0
  br i1 %156, label %157, label %210

157:                                              ; preds = %155
  %158 = getelementptr inbounds %struct.init_node, ptr %92, i64 0, i32 3
  %159 = load i32, ptr %158, align 8, !tbaa !231
  %160 = icmp sgt i32 %159, 0
  %161 = load ptr, ptr %92, align 8, !tbaa !175
  br i1 %160, label %162, label %179

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.init_node, ptr %91, i64 0, i32 1
  store ptr %161, ptr %163, align 8, !tbaa !176
  %164 = icmp eq ptr %161, null
  br i1 %164, label %167, label %165

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.init_node, ptr %161, i64 0, i32 2
  store ptr %91, ptr %166, align 8, !tbaa !177
  br label %167

167:                                              ; preds = %165, %162
  store ptr %91, ptr %92, align 8, !tbaa !175
  store i32 0, ptr %95, align 8, !tbaa !231
  store i32 0, ptr %158, align 8, !tbaa !231
  %168 = getelementptr inbounds %struct.init_node, ptr %91, i64 0, i32 2
  %169 = load ptr, ptr %168, align 8, !tbaa !177
  store ptr %92, ptr %168, align 8, !tbaa !177
  %170 = getelementptr inbounds %struct.init_node, ptr %92, i64 0, i32 2
  store ptr %169, ptr %170, align 8, !tbaa !177
  %171 = icmp eq ptr %169, null
  br i1 %171, label %178, label %172

172:                                              ; preds = %167
  %173 = load ptr, ptr %169, align 8, !tbaa !175
  %174 = icmp eq ptr %173, %91
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  store ptr %92, ptr %169, align 8, !tbaa !175
  br label %216

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.init_node, ptr %169, i64 0, i32 1
  store ptr %92, ptr %177, align 8, !tbaa !176
  br label %216

178:                                              ; preds = %167
  store ptr %92, ptr @constructor_pending_elts, align 8, !tbaa !8
  br label %216

179:                                              ; preds = %157
  %180 = getelementptr inbounds %struct.init_node, ptr %161, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !176
  store ptr %181, ptr %92, align 8, !tbaa !175
  %182 = icmp eq ptr %181, null
  br i1 %182, label %185, label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.init_node, ptr %181, i64 0, i32 2
  store ptr %92, ptr %184, align 8, !tbaa !177
  br label %185

185:                                              ; preds = %183, %179
  store ptr %92, ptr %180, align 8, !tbaa !176
  %186 = load ptr, ptr %161, align 8, !tbaa !175
  %187 = getelementptr inbounds %struct.init_node, ptr %91, i64 0, i32 1
  store ptr %186, ptr %187, align 8, !tbaa !176
  %188 = icmp eq ptr %186, null
  br i1 %188, label %191, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.init_node, ptr %186, i64 0, i32 2
  store ptr %91, ptr %190, align 8, !tbaa !177
  br label %191

191:                                              ; preds = %189, %185
  store ptr %91, ptr %161, align 8, !tbaa !175
  %192 = getelementptr inbounds %struct.init_node, ptr %161, i64 0, i32 3
  %193 = load i32, ptr %192, align 8, !tbaa !231
  %194 = lshr i32 %193, 31
  store i32 %194, ptr %158, align 8, !tbaa !231
  %195 = load i32, ptr %192, align 8, !tbaa !231
  %196 = icmp sgt i32 %195, 0
  %197 = sext i1 %196 to i32
  store i32 %197, ptr %95, align 8, !tbaa !231
  store i32 0, ptr %192, align 8, !tbaa !231
  %198 = getelementptr inbounds %struct.init_node, ptr %91, i64 0, i32 2
  %199 = load ptr, ptr %198, align 8, !tbaa !177
  store ptr %161, ptr %198, align 8, !tbaa !177
  %200 = getelementptr inbounds %struct.init_node, ptr %92, i64 0, i32 2
  store ptr %161, ptr %200, align 8, !tbaa !177
  %201 = getelementptr inbounds %struct.init_node, ptr %161, i64 0, i32 2
  store ptr %199, ptr %201, align 8, !tbaa !177
  %202 = icmp eq ptr %199, null
  br i1 %202, label %209, label %203

203:                                              ; preds = %191
  %204 = load ptr, ptr %199, align 8, !tbaa !175
  %205 = icmp eq ptr %204, %91
  br i1 %205, label %206, label %207

206:                                              ; preds = %203
  store ptr %161, ptr %199, align 8, !tbaa !175
  br label %216

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.init_node, ptr %199, i64 0, i32 1
  store ptr %161, ptr %208, align 8, !tbaa !176
  br label %216

209:                                              ; preds = %191
  store ptr %161, ptr @constructor_pending_elts, align 8, !tbaa !8
  br label %216

210:                                              ; preds = %155
  store i32 0, ptr %95, align 8, !tbaa !231
  br label %216

211:                                              ; preds = %154, %98
  %212 = phi i32 [ -1, %98 ], [ 1, %154 ]
  store i32 %212, ptr %95, align 8, !tbaa !231
  %213 = getelementptr inbounds %struct.init_node, ptr %91, i64 0, i32 2
  %214 = load ptr, ptr %213, align 8, !tbaa !177
  %215 = icmp eq ptr %214, null
  br i1 %215, label %216, label %90

216:                                              ; preds = %211, %80, %175, %176, %178, %206, %207, %209, %119, %120, %122, %149, %150, %152, %210, %153, %77, %37
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @VEC_constructor_elt_base_last(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = load i32, ptr %0, align 8, !tbaa !166
  %3 = add i32 %2, -1
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %4
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @VEC_constructor_elt_gc_safe_push() unnamed_addr #0 {
  tail call fastcc void @VEC_constructor_elt_gc_reserve() #20
  %1 = load ptr, ptr @constructor_elements, align 8, !tbaa !8
  %2 = tail call fastcc ptr @VEC_constructor_elt_base_quick_push(ptr noundef %1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_constructor_elt_gc_reserve() unnamed_addr #0 {
  %1 = load ptr, ptr @constructor_elements, align 8, !tbaa !8
  %2 = tail call fastcc i32 @VEC_constructor_elt_base_space(ptr noundef %1) #20
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_gc_o_reserve(ptr noundef %1, i32 noundef 1, i64 noundef 8, i64 noundef 16) #21
  store ptr %5, ptr @constructor_elements, align 8, !tbaa !8
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @VEC_constructor_elt_base_quick_push(ptr noundef %0) unnamed_addr #8 {
  %2 = load i32, ptr %0, align 8, !tbaa !166
  %3 = add i32 %2, 1
  store i32 %3, ptr %0, align 8, !tbaa !166
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %4
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_constructor_elt_base_space(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !232
  %6 = load i32, ptr %0, align 8, !tbaa !166
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_gc_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #19

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { optsize }
attributes #21 = { nounwind optsize }
attributes #22 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !9, i64 816}
!11 = !{!"gcc_target", !12, i64 0, !14, i64 368, !15, i64 664, !16, i64 744, !9, i64 752, !9, i64 760, !9, i64 768, !9, i64 776, !9, i64 784, !9, i64 792, !9, i64 800, !9, i64 808, !9, i64 816, !9, i64 824, !9, i64 832, !9, i64 840, !9, i64 848, !9, i64 856, !9, i64 864, !9, i64 872, !9, i64 880, !9, i64 888, !9, i64 896, !9, i64 904, !9, i64 912, !9, i64 920, !9, i64 928, !9, i64 936, !9, i64 944, !9, i64 952, !9, i64 960, !9, i64 968, !9, i64 976, !9, i64 984, !9, i64 992, !9, i64 1000, !9, i64 1008, !9, i64 1016, !9, i64 1024, !9, i64 1032, !9, i64 1040, !9, i64 1048, !9, i64 1056, !17, i64 1064, !17, i64 1072, !9, i64 1080, !9, i64 1088, !9, i64 1096, !9, i64 1104, !9, i64 1112, !9, i64 1120, !9, i64 1128, !9, i64 1136, !9, i64 1144, !9, i64 1152, !9, i64 1160, !9, i64 1168, !18, i64 1176, !9, i64 1232, !9, i64 1240, !9, i64 1248, !9, i64 1256, !9, i64 1264, !9, i64 1272, !9, i64 1280, !9, i64 1288, !9, i64 1296, !9, i64 1304, !9, i64 1312, !9, i64 1320, !9, i64 1328, !9, i64 1336, !9, i64 1344, !9, i64 1352, !9, i64 1360, !9, i64 1368, !9, i64 1376, !9, i64 1384, !9, i64 1392, !9, i64 1400, !9, i64 1408, !9, i64 1416, !9, i64 1424, !9, i64 1432, !9, i64 1440, !9, i64 1448, !9, i64 1456, !17, i64 1464, !19, i64 1472, !9, i64 1664, !9, i64 1672, !9, i64 1680, !9, i64 1688, !9, i64 1696, !9, i64 1704, !9, i64 1712, !9, i64 1720, !9, i64 1728, !9, i64 1736, !9, i64 1744, !9, i64 1752, !9, i64 1760, !9, i64 1768, !9, i64 1776, !20, i64 1784, !21, i64 1792, !22, i64 1896, !23, i64 1968, !9, i64 2016, !6, i64 2024, !6, i64 2025, !6, i64 2026, !6, i64 2027, !6, i64 2028, !6, i64 2029, !6, i64 2030, !6, i64 2031, !6, i64 2032, !6, i64 2033, !6, i64 2034, !6, i64 2035}
!12 = !{!"asm_out", !9, i64 0, !9, i64 8, !9, i64 16, !13, i64 24, !13, i64 56, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288, !9, i64 296, !9, i64 304, !9, i64 312, !9, i64 320, !9, i64 328, !9, i64 336, !9, i64 344, !9, i64 352, !9, i64 360}
!13 = !{!"asm_int_op", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!14 = !{!"sched", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !9, i64 264, !9, i64 272, !9, i64 280, !9, i64 288}
!15 = !{!"vectorize", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72}
!16 = !{!"int", !6, i64 0}
!17 = !{!"long", !6, i64 0}
!18 = !{!"addr_space", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48}
!19 = !{!"calls", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184}
!20 = !{!"c", !9, i64 0}
!21 = !{!"cxx", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96}
!22 = !{!"emutls", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !6, i64 64, !6, i64 65}
!23 = !{!"target_option_hooks", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40}
!24 = !{i8 0, i8 2}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = distinct !{!27, !26}
!28 = !{!16, !16, i64 0}
!29 = distinct !{!29, !26}
!30 = distinct !{!30, !26}
!31 = distinct !{!31, !26}
!32 = !{!33, !33, i64 0}
!33 = !{!"short", !6, i64 0}
!34 = !{!11, !9, i64 832}
!35 = !{i32 0, i32 2}
!36 = !{!37, !9, i64 0}
!37 = !{!"tagged_tu_seen_cache", !9, i64 0, !9, i64 8, !9, i64 16, !16, i64 24}
!38 = distinct !{!38, !26}
!39 = distinct !{!39, !26}
!40 = distinct !{!40, !26}
!41 = !{!42, !9, i64 0}
!42 = !{!"c_expr", !9, i64 0, !16, i64 8, !9, i64 16}
!43 = distinct !{!43, !26}
!44 = distinct !{!44, !26}
!45 = distinct !{!45, !26}
!46 = distinct !{!46, !26}
!47 = !{!11, !9, i64 1704}
!48 = distinct !{!48, !26}
!49 = !{!50, !9, i64 0}
!50 = !{!"lang_type", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!51 = !{!52, !16, i64 0}
!52 = !{!"sorted_fields_type", !16, i64 0, !6, i64 8}
!53 = distinct !{!53, !26}
!54 = distinct !{!54, !26}
!55 = distinct !{!55, !26}
!56 = distinct !{!56, !26}
!57 = distinct !{!57, !26}
!58 = distinct !{!58, !26}
!59 = !{!11, !9, i64 1680}
!60 = !{!61, !17, i64 40}
!61 = !{!"obstack", !17, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !17, i64 40, !16, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !16, i64 80, !16, i64 80, !16, i64 80}
!62 = !{!61, !9, i64 32}
!63 = !{!61, !9, i64 24}
!64 = !{!61, !9, i64 16}
!65 = !{!61, !16, i64 48}
!66 = !{!61, !9, i64 8}
!67 = !{!68, !9, i64 0}
!68 = !{!"maybe_used_decl", !9, i64 0, !16, i64 8, !9, i64 16}
!69 = !{!68, !16, i64 8}
!70 = !{!68, !9, i64 16}
!71 = distinct !{!71, !26}
!72 = !{!42, !16, i64 8}
!73 = !{!42, !9, i64 16}
!74 = distinct !{!74, !26}
!75 = !{!76, !16, i64 0}
!76 = !{!"VEC_tree_base", !16, i64 0, !16, i64 4, !6, i64 8}
!77 = distinct !{!77, !26}
!78 = distinct !{!78, !26}
!79 = distinct !{!79, !26}
!80 = distinct !{!80, !26}
!81 = !{!11, !9, i64 1480}
!82 = !{!11, !9, i64 1584}
!83 = distinct !{!83, !26}
!84 = !{!11, !9, i64 1672}
!85 = !{!11, !9, i64 1216}
!86 = distinct !{!86, !26}
!87 = distinct !{!87, !26}
!88 = distinct !{!88, !26}
!89 = !{!90, !9, i64 8}
!90 = !{!"constructor_elt_d", !9, i64 0, !9, i64 8}
!91 = distinct !{!91, !26}
!92 = distinct !{!92, !26}
!93 = !{!94, !9, i64 0}
!94 = !{!"c_type_name", !9, i64 0, !9, i64 8}
!95 = distinct !{!95, !26}
!96 = !{!97, !6, i64 16}
!97 = !{!"", !9, i64 0, !16, i64 8, !16, i64 12, !6, i64 16}
!98 = distinct !{!98, !26}
!99 = distinct !{!99, !26}
!100 = !{!101, !16, i64 0}
!101 = !{!"spelling", !16, i64 0, !6, i64 8}
!102 = distinct !{!102, !26}
!103 = distinct !{!103, !26}
!104 = distinct !{!104, !26}
!105 = !{!106, !9, i64 8}
!106 = !{!"initializer_stack", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !16, i64 56, !6, i64 60, !6, i64 61, !6, i64 62}
!107 = !{!106, !6, i64 61}
!108 = !{!106, !6, i64 62}
!109 = !{!106, !9, i64 16}
!110 = !{!106, !9, i64 24}
!111 = !{!106, !9, i64 32}
!112 = !{!106, !9, i64 40}
!113 = !{!106, !9, i64 48}
!114 = !{!106, !16, i64 56}
!115 = !{!106, !6, i64 60}
!116 = !{!106, !9, i64 0}
!117 = !{!118, !9, i64 0}
!118 = !{!"constructor_stack", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !16, i64 80, !16, i64 84, !42, i64 88, !9, i64 112, !6, i64 120, !6, i64 121, !6, i64 122, !6, i64 123, !6, i64 124, !6, i64 125, !6, i64 126, !6, i64 127}
!119 = distinct !{!119, !26}
!120 = !{!118, !9, i64 8}
!121 = !{!118, !9, i64 16}
!122 = !{!118, !9, i64 24}
!123 = !{!118, !9, i64 32}
!124 = !{!118, !9, i64 40}
!125 = !{!118, !9, i64 48}
!126 = !{!118, !9, i64 56}
!127 = !{!118, !9, i64 64}
!128 = !{!118, !6, i64 120}
!129 = !{!118, !6, i64 121}
!130 = !{!118, !6, i64 122}
!131 = !{!118, !6, i64 124}
!132 = !{!118, !9, i64 72}
!133 = !{!118, !16, i64 84}
!134 = !{!118, !9, i64 88}
!135 = !{!118, !16, i64 96}
!136 = !{!118, !6, i64 123}
!137 = !{!118, !6, i64 125}
!138 = !{!118, !6, i64 126}
!139 = !{!118, !6, i64 127}
!140 = distinct !{!140, !26}
!141 = distinct !{!141, !26}
!142 = !{!118, !9, i64 104}
!143 = !{!118, !9, i64 112}
!144 = distinct !{!144, !26}
!145 = !{i64 0, i64 8, !8, i64 8, i64 4, !28, i64 16, i64 8, !8}
!146 = distinct !{!146, !26}
!147 = distinct !{!147, !26}
!148 = distinct !{!148, !26}
!149 = !{!150, !9, i64 16}
!150 = !{!"constructor_range_stack", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48}
!151 = distinct !{!151, !26}
!152 = !{!150, !9, i64 40}
!153 = !{!150, !9, i64 32}
!154 = !{!150, !9, i64 8}
!155 = distinct !{!155, !26}
!156 = !{!150, !9, i64 48}
!157 = !{!150, !9, i64 24}
!158 = !{!150, !9, i64 0}
!159 = distinct !{!159, !26}
!160 = distinct !{!160, !26}
!161 = !{!162, !9, i64 32}
!162 = !{!"init_node", !9, i64 0, !9, i64 8, !9, i64 16, !16, i64 24, !9, i64 32, !9, i64 40, !9, i64 48}
!163 = distinct !{!163, !26}
!164 = distinct !{!164, !26}
!165 = !{!90, !9, i64 0}
!166 = !{!167, !16, i64 0}
!167 = !{!"VEC_constructor_elt_base", !16, i64 0, !16, i64 4, !6, i64 8}
!168 = distinct !{!168, !26}
!169 = distinct !{!169, !26}
!170 = !{!17, !17, i64 0}
!171 = distinct !{!171, !26}
!172 = distinct !{!172, !26}
!173 = !{!162, !9, i64 40}
!174 = !{!162, !9, i64 48}
!175 = !{!162, !9, i64 0}
!176 = !{!162, !9, i64 8}
!177 = !{!162, !9, i64 16}
!178 = distinct !{!178, !26}
!179 = distinct !{!179, !26}
!180 = distinct !{!180, !26}
!181 = distinct !{!181, !26}
!182 = distinct !{!182, !26}
!183 = distinct !{!183, !26}
!184 = distinct !{!184, !26}
!185 = distinct !{!185, !26}
!186 = distinct !{!186, !26}
!187 = distinct !{!187, !26}
!188 = !{!189, !9, i64 0}
!189 = !{!"c_switch", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32}
!190 = !{!189, !9, i64 8}
!191 = !{!189, !9, i64 16}
!192 = !{!189, !9, i64 24}
!193 = !{!189, !9, i64 32}
!194 = !{!195, !9, i64 0}
!195 = !{!"stmt_tree_s", !9, i64 0, !16, i64 8}
!196 = !{i64 0, i64 8, !8, i64 8, i64 8, !8}
!197 = !{i64 0, i64 8, !8}
!198 = distinct !{!198, !26}
!199 = !{!200, !9, i64 8}
!200 = !{!"tree_statement_list_node", !9, i64 0, !9, i64 8, !9, i64 16}
!201 = !{!200, !9, i64 16}
!202 = !{!203, !9, i64 0}
!203 = !{!"", !9, i64 0, !9, i64 8}
!204 = !{!205, !9, i64 456}
!205 = !{!"lang_hooks", !9, i64 0, !17, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !206, i64 240, !207, i64 248, !208, i64 256, !209, i64 272, !210, i64 432, !211, i64 560, !9, i64 584, !9, i64 592, !9, i64 600, !9, i64 608, !9, i64 616, !9, i64 624, !9, i64 632, !9, i64 640, !9, i64 648, !9, i64 656, !9, i64 664, !6, i64 672}
!206 = !{!"lang_hooks_for_tree_inlining", !9, i64 0}
!207 = !{!"lang_hooks_for_callgraph", !9, i64 0}
!208 = !{!"lang_hooks_for_tree_dump", !9, i64 0, !9, i64 8}
!209 = !{!"lang_hooks_for_decls", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !9, i64 120, !9, i64 128, !9, i64 136, !9, i64 144, !9, i64 152}
!210 = !{!"lang_hooks_for_types", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !6, i64 120}
!211 = !{!"lang_hooks_for_lto", !9, i64 0, !9, i64 8, !9, i64 16}
!212 = distinct !{!212, !26}
!213 = !{!214, !9, i64 24}
!214 = !{!"bitmap_head_def", !9, i64 0, !9, i64 8, !16, i64 16, !9, i64 24}
!215 = distinct !{!215, !26}
!216 = distinct !{!216, !26}
!217 = !{!37, !9, i64 8}
!218 = !{!37, !9, i64 16}
!219 = distinct !{!219, !26}
!220 = !{!37, !16, i64 24}
!221 = distinct !{!221, !26}
!222 = distinct !{!222, !26}
!223 = distinct !{!223, !26}
!224 = distinct !{!224, !26}
!225 = distinct !{!225, !26}
!226 = distinct !{!226, !26}
!227 = distinct !{!227, !26}
!228 = distinct !{!228, !26}
!229 = distinct !{!229, !26}
!230 = distinct !{!230, !26}
!231 = !{!162, !16, i64 24}
!232 = !{!167, !16, i64 4}
