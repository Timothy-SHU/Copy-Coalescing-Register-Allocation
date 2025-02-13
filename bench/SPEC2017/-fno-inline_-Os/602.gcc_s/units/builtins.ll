; ModuleID = 'builtins.c'
source_filename = "builtins.c"
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
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.real_value = type { i32, [3 x i64] }
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct.optab_handlers = type { i32 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.call_expr_arg_iterator_d = type { ptr, i32, i32 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.const_call_expr_arg_iterator_d = type { ptr, i32, i32 }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.tree_real_cst = type { %struct.tree_common, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }

@built_in_decls = dso_local local_unnamed_addr global [721 x ptr] zeroinitializer, align 16
@implicit_built_in_decls = dso_local local_unnamed_addr global [721 x ptr] zeroinitializer, align 16
@built_in_class_names = dso_local local_unnamed_addr constant [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], align 16
@.str = private unnamed_addr constant [13 x i8] c"NOT_BUILT_IN\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"BUILT_IN_FRONTEND\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"BUILT_IN_MD\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"BUILT_IN_NORMAL\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"BUILT_IN_ACOS\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"BUILT_IN_ACOSF\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"BUILT_IN_ACOSH\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"BUILT_IN_ACOSHF\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"BUILT_IN_ACOSHL\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"BUILT_IN_ACOSL\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"BUILT_IN_ASIN\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"BUILT_IN_ASINF\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"BUILT_IN_ASINH\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"BUILT_IN_ASINHF\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"BUILT_IN_ASINHL\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"BUILT_IN_ASINL\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"BUILT_IN_ATAN\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"BUILT_IN_ATAN2\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"BUILT_IN_ATAN2F\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"BUILT_IN_ATAN2L\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"BUILT_IN_ATANF\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"BUILT_IN_ATANH\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"BUILT_IN_ATANHF\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"BUILT_IN_ATANHL\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"BUILT_IN_ATANL\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"BUILT_IN_CBRT\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CBRTF\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CBRTL\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"BUILT_IN_CEIL\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CEILF\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CEILL\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"BUILT_IN_COPYSIGN\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"BUILT_IN_COPYSIGNF\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"BUILT_IN_COPYSIGNL\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"BUILT_IN_COS\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"BUILT_IN_COSF\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"BUILT_IN_COSH\00", align 1
@.str.37 = private unnamed_addr constant [15 x i8] c"BUILT_IN_COSHF\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"BUILT_IN_COSHL\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"BUILT_IN_COSL\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"BUILT_IN_DREM\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"BUILT_IN_DREMF\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"BUILT_IN_DREML\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"BUILT_IN_ERF\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"BUILT_IN_ERFC\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"BUILT_IN_ERFCF\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"BUILT_IN_ERFCL\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"BUILT_IN_ERFF\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"BUILT_IN_ERFL\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c"BUILT_IN_EXP\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"BUILT_IN_EXP10\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"BUILT_IN_EXP10F\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"BUILT_IN_EXP10L\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"BUILT_IN_EXP2\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"BUILT_IN_EXP2F\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"BUILT_IN_EXP2L\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"BUILT_IN_EXPF\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"BUILT_IN_EXPL\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"BUILT_IN_EXPM1\00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"BUILT_IN_EXPM1F\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"BUILT_IN_EXPM1L\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"BUILT_IN_FABS\00", align 1
@.str.62 = private unnamed_addr constant [15 x i8] c"BUILT_IN_FABSF\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"BUILT_IN_FABSL\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"BUILT_IN_FDIM\00", align 1
@.str.65 = private unnamed_addr constant [15 x i8] c"BUILT_IN_FDIMF\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"BUILT_IN_FDIML\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"BUILT_IN_FLOOR\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c"BUILT_IN_FLOORF\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"BUILT_IN_FLOORL\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"BUILT_IN_FMA\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c"BUILT_IN_FMAF\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"BUILT_IN_FMAL\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c"BUILT_IN_FMAX\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"BUILT_IN_FMAXF\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"BUILT_IN_FMAXL\00", align 1
@.str.76 = private unnamed_addr constant [14 x i8] c"BUILT_IN_FMIN\00", align 1
@.str.77 = private unnamed_addr constant [15 x i8] c"BUILT_IN_FMINF\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"BUILT_IN_FMINL\00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"BUILT_IN_FMOD\00", align 1
@.str.80 = private unnamed_addr constant [15 x i8] c"BUILT_IN_FMODF\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"BUILT_IN_FMODL\00", align 1
@.str.82 = private unnamed_addr constant [15 x i8] c"BUILT_IN_FREXP\00", align 1
@.str.83 = private unnamed_addr constant [16 x i8] c"BUILT_IN_FREXPF\00", align 1
@.str.84 = private unnamed_addr constant [16 x i8] c"BUILT_IN_FREXPL\00", align 1
@.str.85 = private unnamed_addr constant [15 x i8] c"BUILT_IN_GAMMA\00", align 1
@.str.86 = private unnamed_addr constant [16 x i8] c"BUILT_IN_GAMMAF\00", align 1
@.str.87 = private unnamed_addr constant [16 x i8] c"BUILT_IN_GAMMAL\00", align 1
@.str.88 = private unnamed_addr constant [17 x i8] c"BUILT_IN_GAMMA_R\00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"BUILT_IN_GAMMAF_R\00", align 1
@.str.90 = private unnamed_addr constant [18 x i8] c"BUILT_IN_GAMMAL_R\00", align 1
@.str.91 = private unnamed_addr constant [18 x i8] c"BUILT_IN_HUGE_VAL\00", align 1
@.str.92 = private unnamed_addr constant [19 x i8] c"BUILT_IN_HUGE_VALF\00", align 1
@.str.93 = private unnamed_addr constant [19 x i8] c"BUILT_IN_HUGE_VALL\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"BUILT_IN_HYPOT\00", align 1
@.str.95 = private unnamed_addr constant [16 x i8] c"BUILT_IN_HYPOTF\00", align 1
@.str.96 = private unnamed_addr constant [16 x i8] c"BUILT_IN_HYPOTL\00", align 1
@.str.97 = private unnamed_addr constant [15 x i8] c"BUILT_IN_ILOGB\00", align 1
@.str.98 = private unnamed_addr constant [16 x i8] c"BUILT_IN_ILOGBF\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"BUILT_IN_ILOGBL\00", align 1
@.str.100 = private unnamed_addr constant [13 x i8] c"BUILT_IN_INF\00", align 1
@.str.101 = private unnamed_addr constant [14 x i8] c"BUILT_IN_INFF\00", align 1
@.str.102 = private unnamed_addr constant [14 x i8] c"BUILT_IN_INFL\00", align 1
@.str.103 = private unnamed_addr constant [16 x i8] c"BUILT_IN_INFD32\00", align 1
@.str.104 = private unnamed_addr constant [16 x i8] c"BUILT_IN_INFD64\00", align 1
@.str.105 = private unnamed_addr constant [17 x i8] c"BUILT_IN_INFD128\00", align 1
@.str.106 = private unnamed_addr constant [12 x i8] c"BUILT_IN_J0\00", align 1
@.str.107 = private unnamed_addr constant [13 x i8] c"BUILT_IN_J0F\00", align 1
@.str.108 = private unnamed_addr constant [13 x i8] c"BUILT_IN_J0L\00", align 1
@.str.109 = private unnamed_addr constant [12 x i8] c"BUILT_IN_J1\00", align 1
@.str.110 = private unnamed_addr constant [13 x i8] c"BUILT_IN_J1F\00", align 1
@.str.111 = private unnamed_addr constant [13 x i8] c"BUILT_IN_J1L\00", align 1
@.str.112 = private unnamed_addr constant [12 x i8] c"BUILT_IN_JN\00", align 1
@.str.113 = private unnamed_addr constant [13 x i8] c"BUILT_IN_JNF\00", align 1
@.str.114 = private unnamed_addr constant [13 x i8] c"BUILT_IN_JNL\00", align 1
@.str.115 = private unnamed_addr constant [15 x i8] c"BUILT_IN_LCEIL\00", align 1
@.str.116 = private unnamed_addr constant [16 x i8] c"BUILT_IN_LCEILF\00", align 1
@.str.117 = private unnamed_addr constant [16 x i8] c"BUILT_IN_LCEILL\00", align 1
@.str.118 = private unnamed_addr constant [15 x i8] c"BUILT_IN_LDEXP\00", align 1
@.str.119 = private unnamed_addr constant [16 x i8] c"BUILT_IN_LDEXPF\00", align 1
@.str.120 = private unnamed_addr constant [16 x i8] c"BUILT_IN_LDEXPL\00", align 1
@.str.121 = private unnamed_addr constant [16 x i8] c"BUILT_IN_LFLOOR\00", align 1
@.str.122 = private unnamed_addr constant [17 x i8] c"BUILT_IN_LFLOORF\00", align 1
@.str.123 = private unnamed_addr constant [17 x i8] c"BUILT_IN_LFLOORL\00", align 1
@.str.124 = private unnamed_addr constant [16 x i8] c"BUILT_IN_LGAMMA\00", align 1
@.str.125 = private unnamed_addr constant [17 x i8] c"BUILT_IN_LGAMMAF\00", align 1
@.str.126 = private unnamed_addr constant [17 x i8] c"BUILT_IN_LGAMMAL\00", align 1
@.str.127 = private unnamed_addr constant [18 x i8] c"BUILT_IN_LGAMMA_R\00", align 1
@.str.128 = private unnamed_addr constant [19 x i8] c"BUILT_IN_LGAMMAF_R\00", align 1
@.str.129 = private unnamed_addr constant [19 x i8] c"BUILT_IN_LGAMMAL_R\00", align 1
@.str.130 = private unnamed_addr constant [16 x i8] c"BUILT_IN_LLCEIL\00", align 1
@.str.131 = private unnamed_addr constant [17 x i8] c"BUILT_IN_LLCEILF\00", align 1
@.str.132 = private unnamed_addr constant [17 x i8] c"BUILT_IN_LLCEILL\00", align 1
@.str.133 = private unnamed_addr constant [17 x i8] c"BUILT_IN_LLFLOOR\00", align 1
@.str.134 = private unnamed_addr constant [18 x i8] c"BUILT_IN_LLFLOORF\00", align 1
@.str.135 = private unnamed_addr constant [18 x i8] c"BUILT_IN_LLFLOORL\00", align 1
@.str.136 = private unnamed_addr constant [16 x i8] c"BUILT_IN_LLRINT\00", align 1
@.str.137 = private unnamed_addr constant [17 x i8] c"BUILT_IN_LLRINTF\00", align 1
@.str.138 = private unnamed_addr constant [17 x i8] c"BUILT_IN_LLRINTL\00", align 1
@.str.139 = private unnamed_addr constant [17 x i8] c"BUILT_IN_LLROUND\00", align 1
@.str.140 = private unnamed_addr constant [18 x i8] c"BUILT_IN_LLROUNDF\00", align 1
@.str.141 = private unnamed_addr constant [18 x i8] c"BUILT_IN_LLROUNDL\00", align 1
@.str.142 = private unnamed_addr constant [13 x i8] c"BUILT_IN_LOG\00", align 1
@.str.143 = private unnamed_addr constant [15 x i8] c"BUILT_IN_LOG10\00", align 1
@.str.144 = private unnamed_addr constant [16 x i8] c"BUILT_IN_LOG10F\00", align 1
@.str.145 = private unnamed_addr constant [16 x i8] c"BUILT_IN_LOG10L\00", align 1
@.str.146 = private unnamed_addr constant [15 x i8] c"BUILT_IN_LOG1P\00", align 1
@.str.147 = private unnamed_addr constant [16 x i8] c"BUILT_IN_LOG1PF\00", align 1
@.str.148 = private unnamed_addr constant [16 x i8] c"BUILT_IN_LOG1PL\00", align 1
@.str.149 = private unnamed_addr constant [14 x i8] c"BUILT_IN_LOG2\00", align 1
@.str.150 = private unnamed_addr constant [15 x i8] c"BUILT_IN_LOG2F\00", align 1
@.str.151 = private unnamed_addr constant [15 x i8] c"BUILT_IN_LOG2L\00", align 1
@.str.152 = private unnamed_addr constant [14 x i8] c"BUILT_IN_LOGB\00", align 1
@.str.153 = private unnamed_addr constant [15 x i8] c"BUILT_IN_LOGBF\00", align 1
@.str.154 = private unnamed_addr constant [15 x i8] c"BUILT_IN_LOGBL\00", align 1
@.str.155 = private unnamed_addr constant [14 x i8] c"BUILT_IN_LOGF\00", align 1
@.str.156 = private unnamed_addr constant [14 x i8] c"BUILT_IN_LOGL\00", align 1
@.str.157 = private unnamed_addr constant [15 x i8] c"BUILT_IN_LRINT\00", align 1
@.str.158 = private unnamed_addr constant [16 x i8] c"BUILT_IN_LRINTF\00", align 1
@.str.159 = private unnamed_addr constant [16 x i8] c"BUILT_IN_LRINTL\00", align 1
@.str.160 = private unnamed_addr constant [16 x i8] c"BUILT_IN_LROUND\00", align 1
@.str.161 = private unnamed_addr constant [17 x i8] c"BUILT_IN_LROUNDF\00", align 1
@.str.162 = private unnamed_addr constant [17 x i8] c"BUILT_IN_LROUNDL\00", align 1
@.str.163 = private unnamed_addr constant [14 x i8] c"BUILT_IN_MODF\00", align 1
@.str.164 = private unnamed_addr constant [15 x i8] c"BUILT_IN_MODFF\00", align 1
@.str.165 = private unnamed_addr constant [15 x i8] c"BUILT_IN_MODFL\00", align 1
@.str.166 = private unnamed_addr constant [13 x i8] c"BUILT_IN_NAN\00", align 1
@.str.167 = private unnamed_addr constant [14 x i8] c"BUILT_IN_NANF\00", align 1
@.str.168 = private unnamed_addr constant [14 x i8] c"BUILT_IN_NANL\00", align 1
@.str.169 = private unnamed_addr constant [16 x i8] c"BUILT_IN_NAND32\00", align 1
@.str.170 = private unnamed_addr constant [16 x i8] c"BUILT_IN_NAND64\00", align 1
@.str.171 = private unnamed_addr constant [17 x i8] c"BUILT_IN_NAND128\00", align 1
@.str.172 = private unnamed_addr constant [14 x i8] c"BUILT_IN_NANS\00", align 1
@.str.173 = private unnamed_addr constant [15 x i8] c"BUILT_IN_NANSF\00", align 1
@.str.174 = private unnamed_addr constant [15 x i8] c"BUILT_IN_NANSL\00", align 1
@.str.175 = private unnamed_addr constant [19 x i8] c"BUILT_IN_NEARBYINT\00", align 1
@.str.176 = private unnamed_addr constant [20 x i8] c"BUILT_IN_NEARBYINTF\00", align 1
@.str.177 = private unnamed_addr constant [20 x i8] c"BUILT_IN_NEARBYINTL\00", align 1
@.str.178 = private unnamed_addr constant [19 x i8] c"BUILT_IN_NEXTAFTER\00", align 1
@.str.179 = private unnamed_addr constant [20 x i8] c"BUILT_IN_NEXTAFTERF\00", align 1
@.str.180 = private unnamed_addr constant [20 x i8] c"BUILT_IN_NEXTAFTERL\00", align 1
@.str.181 = private unnamed_addr constant [20 x i8] c"BUILT_IN_NEXTTOWARD\00", align 1
@.str.182 = private unnamed_addr constant [21 x i8] c"BUILT_IN_NEXTTOWARDF\00", align 1
@.str.183 = private unnamed_addr constant [21 x i8] c"BUILT_IN_NEXTTOWARDL\00", align 1
@.str.184 = private unnamed_addr constant [13 x i8] c"BUILT_IN_POW\00", align 1
@.str.185 = private unnamed_addr constant [15 x i8] c"BUILT_IN_POW10\00", align 1
@.str.186 = private unnamed_addr constant [16 x i8] c"BUILT_IN_POW10F\00", align 1
@.str.187 = private unnamed_addr constant [16 x i8] c"BUILT_IN_POW10L\00", align 1
@.str.188 = private unnamed_addr constant [14 x i8] c"BUILT_IN_POWF\00", align 1
@.str.189 = private unnamed_addr constant [14 x i8] c"BUILT_IN_POWI\00", align 1
@.str.190 = private unnamed_addr constant [15 x i8] c"BUILT_IN_POWIF\00", align 1
@.str.191 = private unnamed_addr constant [15 x i8] c"BUILT_IN_POWIL\00", align 1
@.str.192 = private unnamed_addr constant [14 x i8] c"BUILT_IN_POWL\00", align 1
@.str.193 = private unnamed_addr constant [19 x i8] c"BUILT_IN_REMAINDER\00", align 1
@.str.194 = private unnamed_addr constant [20 x i8] c"BUILT_IN_REMAINDERF\00", align 1
@.str.195 = private unnamed_addr constant [20 x i8] c"BUILT_IN_REMAINDERL\00", align 1
@.str.196 = private unnamed_addr constant [16 x i8] c"BUILT_IN_REMQUO\00", align 1
@.str.197 = private unnamed_addr constant [17 x i8] c"BUILT_IN_REMQUOF\00", align 1
@.str.198 = private unnamed_addr constant [17 x i8] c"BUILT_IN_REMQUOL\00", align 1
@.str.199 = private unnamed_addr constant [14 x i8] c"BUILT_IN_RINT\00", align 1
@.str.200 = private unnamed_addr constant [15 x i8] c"BUILT_IN_RINTF\00", align 1
@.str.201 = private unnamed_addr constant [15 x i8] c"BUILT_IN_RINTL\00", align 1
@.str.202 = private unnamed_addr constant [15 x i8] c"BUILT_IN_ROUND\00", align 1
@.str.203 = private unnamed_addr constant [16 x i8] c"BUILT_IN_ROUNDF\00", align 1
@.str.204 = private unnamed_addr constant [16 x i8] c"BUILT_IN_ROUNDL\00", align 1
@.str.205 = private unnamed_addr constant [15 x i8] c"BUILT_IN_SCALB\00", align 1
@.str.206 = private unnamed_addr constant [16 x i8] c"BUILT_IN_SCALBF\00", align 1
@.str.207 = private unnamed_addr constant [16 x i8] c"BUILT_IN_SCALBL\00", align 1
@.str.208 = private unnamed_addr constant [17 x i8] c"BUILT_IN_SCALBLN\00", align 1
@.str.209 = private unnamed_addr constant [18 x i8] c"BUILT_IN_SCALBLNF\00", align 1
@.str.210 = private unnamed_addr constant [18 x i8] c"BUILT_IN_SCALBLNL\00", align 1
@.str.211 = private unnamed_addr constant [16 x i8] c"BUILT_IN_SCALBN\00", align 1
@.str.212 = private unnamed_addr constant [17 x i8] c"BUILT_IN_SCALBNF\00", align 1
@.str.213 = private unnamed_addr constant [17 x i8] c"BUILT_IN_SCALBNL\00", align 1
@.str.214 = private unnamed_addr constant [17 x i8] c"BUILT_IN_SIGNBIT\00", align 1
@.str.215 = private unnamed_addr constant [18 x i8] c"BUILT_IN_SIGNBITF\00", align 1
@.str.216 = private unnamed_addr constant [18 x i8] c"BUILT_IN_SIGNBITL\00", align 1
@.str.217 = private unnamed_addr constant [20 x i8] c"BUILT_IN_SIGNBITD32\00", align 1
@.str.218 = private unnamed_addr constant [20 x i8] c"BUILT_IN_SIGNBITD64\00", align 1
@.str.219 = private unnamed_addr constant [21 x i8] c"BUILT_IN_SIGNBITD128\00", align 1
@.str.220 = private unnamed_addr constant [21 x i8] c"BUILT_IN_SIGNIFICAND\00", align 1
@.str.221 = private unnamed_addr constant [22 x i8] c"BUILT_IN_SIGNIFICANDF\00", align 1
@.str.222 = private unnamed_addr constant [22 x i8] c"BUILT_IN_SIGNIFICANDL\00", align 1
@.str.223 = private unnamed_addr constant [13 x i8] c"BUILT_IN_SIN\00", align 1
@.str.224 = private unnamed_addr constant [16 x i8] c"BUILT_IN_SINCOS\00", align 1
@.str.225 = private unnamed_addr constant [17 x i8] c"BUILT_IN_SINCOSF\00", align 1
@.str.226 = private unnamed_addr constant [17 x i8] c"BUILT_IN_SINCOSL\00", align 1
@.str.227 = private unnamed_addr constant [14 x i8] c"BUILT_IN_SINF\00", align 1
@.str.228 = private unnamed_addr constant [14 x i8] c"BUILT_IN_SINH\00", align 1
@.str.229 = private unnamed_addr constant [15 x i8] c"BUILT_IN_SINHF\00", align 1
@.str.230 = private unnamed_addr constant [15 x i8] c"BUILT_IN_SINHL\00", align 1
@.str.231 = private unnamed_addr constant [14 x i8] c"BUILT_IN_SINL\00", align 1
@.str.232 = private unnamed_addr constant [14 x i8] c"BUILT_IN_SQRT\00", align 1
@.str.233 = private unnamed_addr constant [15 x i8] c"BUILT_IN_SQRTF\00", align 1
@.str.234 = private unnamed_addr constant [15 x i8] c"BUILT_IN_SQRTL\00", align 1
@.str.235 = private unnamed_addr constant [13 x i8] c"BUILT_IN_TAN\00", align 1
@.str.236 = private unnamed_addr constant [14 x i8] c"BUILT_IN_TANF\00", align 1
@.str.237 = private unnamed_addr constant [14 x i8] c"BUILT_IN_TANH\00", align 1
@.str.238 = private unnamed_addr constant [15 x i8] c"BUILT_IN_TANHF\00", align 1
@.str.239 = private unnamed_addr constant [15 x i8] c"BUILT_IN_TANHL\00", align 1
@.str.240 = private unnamed_addr constant [14 x i8] c"BUILT_IN_TANL\00", align 1
@.str.241 = private unnamed_addr constant [16 x i8] c"BUILT_IN_TGAMMA\00", align 1
@.str.242 = private unnamed_addr constant [17 x i8] c"BUILT_IN_TGAMMAF\00", align 1
@.str.243 = private unnamed_addr constant [17 x i8] c"BUILT_IN_TGAMMAL\00", align 1
@.str.244 = private unnamed_addr constant [15 x i8] c"BUILT_IN_TRUNC\00", align 1
@.str.245 = private unnamed_addr constant [16 x i8] c"BUILT_IN_TRUNCF\00", align 1
@.str.246 = private unnamed_addr constant [16 x i8] c"BUILT_IN_TRUNCL\00", align 1
@.str.247 = private unnamed_addr constant [12 x i8] c"BUILT_IN_Y0\00", align 1
@.str.248 = private unnamed_addr constant [13 x i8] c"BUILT_IN_Y0F\00", align 1
@.str.249 = private unnamed_addr constant [13 x i8] c"BUILT_IN_Y0L\00", align 1
@.str.250 = private unnamed_addr constant [12 x i8] c"BUILT_IN_Y1\00", align 1
@.str.251 = private unnamed_addr constant [13 x i8] c"BUILT_IN_Y1F\00", align 1
@.str.252 = private unnamed_addr constant [13 x i8] c"BUILT_IN_Y1L\00", align 1
@.str.253 = private unnamed_addr constant [12 x i8] c"BUILT_IN_YN\00", align 1
@.str.254 = private unnamed_addr constant [13 x i8] c"BUILT_IN_YNF\00", align 1
@.str.255 = private unnamed_addr constant [13 x i8] c"BUILT_IN_YNL\00", align 1
@.str.256 = private unnamed_addr constant [14 x i8] c"BUILT_IN_CABS\00", align 1
@.str.257 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CABSF\00", align 1
@.str.258 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CABSL\00", align 1
@.str.259 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CACOS\00", align 1
@.str.260 = private unnamed_addr constant [16 x i8] c"BUILT_IN_CACOSF\00", align 1
@.str.261 = private unnamed_addr constant [16 x i8] c"BUILT_IN_CACOSH\00", align 1
@.str.262 = private unnamed_addr constant [17 x i8] c"BUILT_IN_CACOSHF\00", align 1
@.str.263 = private unnamed_addr constant [17 x i8] c"BUILT_IN_CACOSHL\00", align 1
@.str.264 = private unnamed_addr constant [16 x i8] c"BUILT_IN_CACOSL\00", align 1
@.str.265 = private unnamed_addr constant [14 x i8] c"BUILT_IN_CARG\00", align 1
@.str.266 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CARGF\00", align 1
@.str.267 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CARGL\00", align 1
@.str.268 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CASIN\00", align 1
@.str.269 = private unnamed_addr constant [16 x i8] c"BUILT_IN_CASINF\00", align 1
@.str.270 = private unnamed_addr constant [16 x i8] c"BUILT_IN_CASINH\00", align 1
@.str.271 = private unnamed_addr constant [17 x i8] c"BUILT_IN_CASINHF\00", align 1
@.str.272 = private unnamed_addr constant [17 x i8] c"BUILT_IN_CASINHL\00", align 1
@.str.273 = private unnamed_addr constant [16 x i8] c"BUILT_IN_CASINL\00", align 1
@.str.274 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CATAN\00", align 1
@.str.275 = private unnamed_addr constant [16 x i8] c"BUILT_IN_CATANF\00", align 1
@.str.276 = private unnamed_addr constant [16 x i8] c"BUILT_IN_CATANH\00", align 1
@.str.277 = private unnamed_addr constant [17 x i8] c"BUILT_IN_CATANHF\00", align 1
@.str.278 = private unnamed_addr constant [17 x i8] c"BUILT_IN_CATANHL\00", align 1
@.str.279 = private unnamed_addr constant [16 x i8] c"BUILT_IN_CATANL\00", align 1
@.str.280 = private unnamed_addr constant [14 x i8] c"BUILT_IN_CCOS\00", align 1
@.str.281 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CCOSF\00", align 1
@.str.282 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CCOSH\00", align 1
@.str.283 = private unnamed_addr constant [16 x i8] c"BUILT_IN_CCOSHF\00", align 1
@.str.284 = private unnamed_addr constant [16 x i8] c"BUILT_IN_CCOSHL\00", align 1
@.str.285 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CCOSL\00", align 1
@.str.286 = private unnamed_addr constant [14 x i8] c"BUILT_IN_CEXP\00", align 1
@.str.287 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CEXPF\00", align 1
@.str.288 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CEXPL\00", align 1
@.str.289 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CEXPI\00", align 1
@.str.290 = private unnamed_addr constant [16 x i8] c"BUILT_IN_CEXPIF\00", align 1
@.str.291 = private unnamed_addr constant [16 x i8] c"BUILT_IN_CEXPIL\00", align 1
@.str.292 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CIMAG\00", align 1
@.str.293 = private unnamed_addr constant [16 x i8] c"BUILT_IN_CIMAGF\00", align 1
@.str.294 = private unnamed_addr constant [16 x i8] c"BUILT_IN_CIMAGL\00", align 1
@.str.295 = private unnamed_addr constant [14 x i8] c"BUILT_IN_CLOG\00", align 1
@.str.296 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CLOGF\00", align 1
@.str.297 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CLOGL\00", align 1
@.str.298 = private unnamed_addr constant [16 x i8] c"BUILT_IN_CLOG10\00", align 1
@.str.299 = private unnamed_addr constant [17 x i8] c"BUILT_IN_CLOG10F\00", align 1
@.str.300 = private unnamed_addr constant [17 x i8] c"BUILT_IN_CLOG10L\00", align 1
@.str.301 = private unnamed_addr constant [14 x i8] c"BUILT_IN_CONJ\00", align 1
@.str.302 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CONJF\00", align 1
@.str.303 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CONJL\00", align 1
@.str.304 = private unnamed_addr constant [14 x i8] c"BUILT_IN_CPOW\00", align 1
@.str.305 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CPOWF\00", align 1
@.str.306 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CPOWL\00", align 1
@.str.307 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CPROJ\00", align 1
@.str.308 = private unnamed_addr constant [16 x i8] c"BUILT_IN_CPROJF\00", align 1
@.str.309 = private unnamed_addr constant [16 x i8] c"BUILT_IN_CPROJL\00", align 1
@.str.310 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CREAL\00", align 1
@.str.311 = private unnamed_addr constant [16 x i8] c"BUILT_IN_CREALF\00", align 1
@.str.312 = private unnamed_addr constant [16 x i8] c"BUILT_IN_CREALL\00", align 1
@.str.313 = private unnamed_addr constant [14 x i8] c"BUILT_IN_CSIN\00", align 1
@.str.314 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CSINF\00", align 1
@.str.315 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CSINH\00", align 1
@.str.316 = private unnamed_addr constant [16 x i8] c"BUILT_IN_CSINHF\00", align 1
@.str.317 = private unnamed_addr constant [16 x i8] c"BUILT_IN_CSINHL\00", align 1
@.str.318 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CSINL\00", align 1
@.str.319 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CSQRT\00", align 1
@.str.320 = private unnamed_addr constant [16 x i8] c"BUILT_IN_CSQRTF\00", align 1
@.str.321 = private unnamed_addr constant [16 x i8] c"BUILT_IN_CSQRTL\00", align 1
@.str.322 = private unnamed_addr constant [14 x i8] c"BUILT_IN_CTAN\00", align 1
@.str.323 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CTANF\00", align 1
@.str.324 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CTANH\00", align 1
@.str.325 = private unnamed_addr constant [16 x i8] c"BUILT_IN_CTANHF\00", align 1
@.str.326 = private unnamed_addr constant [16 x i8] c"BUILT_IN_CTANHL\00", align 1
@.str.327 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CTANL\00", align 1
@.str.328 = private unnamed_addr constant [14 x i8] c"BUILT_IN_BCMP\00", align 1
@.str.329 = private unnamed_addr constant [15 x i8] c"BUILT_IN_BCOPY\00", align 1
@.str.330 = private unnamed_addr constant [15 x i8] c"BUILT_IN_BZERO\00", align 1
@.str.331 = private unnamed_addr constant [15 x i8] c"BUILT_IN_INDEX\00", align 1
@.str.332 = private unnamed_addr constant [16 x i8] c"BUILT_IN_MEMCHR\00", align 1
@.str.333 = private unnamed_addr constant [16 x i8] c"BUILT_IN_MEMCMP\00", align 1
@.str.334 = private unnamed_addr constant [16 x i8] c"BUILT_IN_MEMCPY\00", align 1
@.str.335 = private unnamed_addr constant [17 x i8] c"BUILT_IN_MEMMOVE\00", align 1
@.str.336 = private unnamed_addr constant [17 x i8] c"BUILT_IN_MEMPCPY\00", align 1
@.str.337 = private unnamed_addr constant [16 x i8] c"BUILT_IN_MEMSET\00", align 1
@.str.338 = private unnamed_addr constant [16 x i8] c"BUILT_IN_RINDEX\00", align 1
@.str.339 = private unnamed_addr constant [16 x i8] c"BUILT_IN_STPCPY\00", align 1
@.str.340 = private unnamed_addr constant [17 x i8] c"BUILT_IN_STPNCPY\00", align 1
@.str.341 = private unnamed_addr constant [20 x i8] c"BUILT_IN_STRCASECMP\00", align 1
@.str.342 = private unnamed_addr constant [16 x i8] c"BUILT_IN_STRCAT\00", align 1
@.str.343 = private unnamed_addr constant [16 x i8] c"BUILT_IN_STRCHR\00", align 1
@.str.344 = private unnamed_addr constant [16 x i8] c"BUILT_IN_STRCMP\00", align 1
@.str.345 = private unnamed_addr constant [16 x i8] c"BUILT_IN_STRCPY\00", align 1
@.str.346 = private unnamed_addr constant [17 x i8] c"BUILT_IN_STRCSPN\00", align 1
@.str.347 = private unnamed_addr constant [16 x i8] c"BUILT_IN_STRDUP\00", align 1
@.str.348 = private unnamed_addr constant [17 x i8] c"BUILT_IN_STRNDUP\00", align 1
@.str.349 = private unnamed_addr constant [16 x i8] c"BUILT_IN_STRLEN\00", align 1
@.str.350 = private unnamed_addr constant [21 x i8] c"BUILT_IN_STRNCASECMP\00", align 1
@.str.351 = private unnamed_addr constant [17 x i8] c"BUILT_IN_STRNCAT\00", align 1
@.str.352 = private unnamed_addr constant [17 x i8] c"BUILT_IN_STRNCMP\00", align 1
@.str.353 = private unnamed_addr constant [17 x i8] c"BUILT_IN_STRNCPY\00", align 1
@.str.354 = private unnamed_addr constant [17 x i8] c"BUILT_IN_STRPBRK\00", align 1
@.str.355 = private unnamed_addr constant [17 x i8] c"BUILT_IN_STRRCHR\00", align 1
@.str.356 = private unnamed_addr constant [16 x i8] c"BUILT_IN_STRSPN\00", align 1
@.str.357 = private unnamed_addr constant [16 x i8] c"BUILT_IN_STRSTR\00", align 1
@.str.358 = private unnamed_addr constant [17 x i8] c"BUILT_IN_FPRINTF\00", align 1
@.str.359 = private unnamed_addr constant [26 x i8] c"BUILT_IN_FPRINTF_UNLOCKED\00", align 1
@.str.360 = private unnamed_addr constant [14 x i8] c"BUILT_IN_PUTC\00", align 1
@.str.361 = private unnamed_addr constant [23 x i8] c"BUILT_IN_PUTC_UNLOCKED\00", align 1
@.str.362 = private unnamed_addr constant [15 x i8] c"BUILT_IN_FPUTC\00", align 1
@.str.363 = private unnamed_addr constant [24 x i8] c"BUILT_IN_FPUTC_UNLOCKED\00", align 1
@.str.364 = private unnamed_addr constant [15 x i8] c"BUILT_IN_FPUTS\00", align 1
@.str.365 = private unnamed_addr constant [24 x i8] c"BUILT_IN_FPUTS_UNLOCKED\00", align 1
@.str.366 = private unnamed_addr constant [16 x i8] c"BUILT_IN_FSCANF\00", align 1
@.str.367 = private unnamed_addr constant [16 x i8] c"BUILT_IN_FWRITE\00", align 1
@.str.368 = private unnamed_addr constant [25 x i8] c"BUILT_IN_FWRITE_UNLOCKED\00", align 1
@.str.369 = private unnamed_addr constant [16 x i8] c"BUILT_IN_PRINTF\00", align 1
@.str.370 = private unnamed_addr constant [25 x i8] c"BUILT_IN_PRINTF_UNLOCKED\00", align 1
@.str.371 = private unnamed_addr constant [17 x i8] c"BUILT_IN_PUTCHAR\00", align 1
@.str.372 = private unnamed_addr constant [26 x i8] c"BUILT_IN_PUTCHAR_UNLOCKED\00", align 1
@.str.373 = private unnamed_addr constant [14 x i8] c"BUILT_IN_PUTS\00", align 1
@.str.374 = private unnamed_addr constant [23 x i8] c"BUILT_IN_PUTS_UNLOCKED\00", align 1
@.str.375 = private unnamed_addr constant [15 x i8] c"BUILT_IN_SCANF\00", align 1
@.str.376 = private unnamed_addr constant [18 x i8] c"BUILT_IN_SNPRINTF\00", align 1
@.str.377 = private unnamed_addr constant [17 x i8] c"BUILT_IN_SPRINTF\00", align 1
@.str.378 = private unnamed_addr constant [16 x i8] c"BUILT_IN_SSCANF\00", align 1
@.str.379 = private unnamed_addr constant [18 x i8] c"BUILT_IN_VFPRINTF\00", align 1
@.str.380 = private unnamed_addr constant [17 x i8] c"BUILT_IN_VFSCANF\00", align 1
@.str.381 = private unnamed_addr constant [17 x i8] c"BUILT_IN_VPRINTF\00", align 1
@.str.382 = private unnamed_addr constant [16 x i8] c"BUILT_IN_VSCANF\00", align 1
@.str.383 = private unnamed_addr constant [19 x i8] c"BUILT_IN_VSNPRINTF\00", align 1
@.str.384 = private unnamed_addr constant [18 x i8] c"BUILT_IN_VSPRINTF\00", align 1
@.str.385 = private unnamed_addr constant [17 x i8] c"BUILT_IN_VSSCANF\00", align 1
@.str.386 = private unnamed_addr constant [17 x i8] c"BUILT_IN_ISALNUM\00", align 1
@.str.387 = private unnamed_addr constant [17 x i8] c"BUILT_IN_ISALPHA\00", align 1
@.str.388 = private unnamed_addr constant [17 x i8] c"BUILT_IN_ISASCII\00", align 1
@.str.389 = private unnamed_addr constant [17 x i8] c"BUILT_IN_ISBLANK\00", align 1
@.str.390 = private unnamed_addr constant [17 x i8] c"BUILT_IN_ISCNTRL\00", align 1
@.str.391 = private unnamed_addr constant [17 x i8] c"BUILT_IN_ISDIGIT\00", align 1
@.str.392 = private unnamed_addr constant [17 x i8] c"BUILT_IN_ISGRAPH\00", align 1
@.str.393 = private unnamed_addr constant [17 x i8] c"BUILT_IN_ISLOWER\00", align 1
@.str.394 = private unnamed_addr constant [17 x i8] c"BUILT_IN_ISPRINT\00", align 1
@.str.395 = private unnamed_addr constant [17 x i8] c"BUILT_IN_ISPUNCT\00", align 1
@.str.396 = private unnamed_addr constant [17 x i8] c"BUILT_IN_ISSPACE\00", align 1
@.str.397 = private unnamed_addr constant [17 x i8] c"BUILT_IN_ISUPPER\00", align 1
@.str.398 = private unnamed_addr constant [18 x i8] c"BUILT_IN_ISXDIGIT\00", align 1
@.str.399 = private unnamed_addr constant [17 x i8] c"BUILT_IN_TOASCII\00", align 1
@.str.400 = private unnamed_addr constant [17 x i8] c"BUILT_IN_TOLOWER\00", align 1
@.str.401 = private unnamed_addr constant [17 x i8] c"BUILT_IN_TOUPPER\00", align 1
@.str.402 = private unnamed_addr constant [18 x i8] c"BUILT_IN_ISWALNUM\00", align 1
@.str.403 = private unnamed_addr constant [18 x i8] c"BUILT_IN_ISWALPHA\00", align 1
@.str.404 = private unnamed_addr constant [18 x i8] c"BUILT_IN_ISWBLANK\00", align 1
@.str.405 = private unnamed_addr constant [18 x i8] c"BUILT_IN_ISWCNTRL\00", align 1
@.str.406 = private unnamed_addr constant [18 x i8] c"BUILT_IN_ISWDIGIT\00", align 1
@.str.407 = private unnamed_addr constant [18 x i8] c"BUILT_IN_ISWGRAPH\00", align 1
@.str.408 = private unnamed_addr constant [18 x i8] c"BUILT_IN_ISWLOWER\00", align 1
@.str.409 = private unnamed_addr constant [18 x i8] c"BUILT_IN_ISWPRINT\00", align 1
@.str.410 = private unnamed_addr constant [18 x i8] c"BUILT_IN_ISWPUNCT\00", align 1
@.str.411 = private unnamed_addr constant [18 x i8] c"BUILT_IN_ISWSPACE\00", align 1
@.str.412 = private unnamed_addr constant [18 x i8] c"BUILT_IN_ISWUPPER\00", align 1
@.str.413 = private unnamed_addr constant [19 x i8] c"BUILT_IN_ISWXDIGIT\00", align 1
@.str.414 = private unnamed_addr constant [18 x i8] c"BUILT_IN_TOWLOWER\00", align 1
@.str.415 = private unnamed_addr constant [18 x i8] c"BUILT_IN_TOWUPPER\00", align 1
@.str.416 = private unnamed_addr constant [15 x i8] c"BUILT_IN_ABORT\00", align 1
@.str.417 = private unnamed_addr constant [13 x i8] c"BUILT_IN_ABS\00", align 1
@.str.418 = private unnamed_addr constant [36 x i8] c"BUILT_IN_AGGREGATE_INCOMING_ADDRESS\00", align 1
@.str.419 = private unnamed_addr constant [16 x i8] c"BUILT_IN_ALLOCA\00", align 1
@.str.420 = private unnamed_addr constant [15 x i8] c"BUILT_IN_APPLY\00", align 1
@.str.421 = private unnamed_addr constant [20 x i8] c"BUILT_IN_APPLY_ARGS\00", align 1
@.str.422 = private unnamed_addr constant [19 x i8] c"BUILT_IN_ARGS_INFO\00", align 1
@.str.423 = private unnamed_addr constant [17 x i8] c"BUILT_IN_BSWAP32\00", align 1
@.str.424 = private unnamed_addr constant [17 x i8] c"BUILT_IN_BSWAP64\00", align 1
@.str.425 = private unnamed_addr constant [21 x i8] c"BUILT_IN_CLEAR_CACHE\00", align 1
@.str.426 = private unnamed_addr constant [16 x i8] c"BUILT_IN_CALLOC\00", align 1
@.str.427 = private unnamed_addr constant [23 x i8] c"BUILT_IN_CLASSIFY_TYPE\00", align 1
@.str.428 = private unnamed_addr constant [13 x i8] c"BUILT_IN_CLZ\00", align 1
@.str.429 = private unnamed_addr constant [17 x i8] c"BUILT_IN_CLZIMAX\00", align 1
@.str.430 = private unnamed_addr constant [14 x i8] c"BUILT_IN_CLZL\00", align 1
@.str.431 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CLZLL\00", align 1
@.str.432 = private unnamed_addr constant [20 x i8] c"BUILT_IN_CONSTANT_P\00", align 1
@.str.433 = private unnamed_addr constant [13 x i8] c"BUILT_IN_CTZ\00", align 1
@.str.434 = private unnamed_addr constant [17 x i8] c"BUILT_IN_CTZIMAX\00", align 1
@.str.435 = private unnamed_addr constant [14 x i8] c"BUILT_IN_CTZL\00", align 1
@.str.436 = private unnamed_addr constant [15 x i8] c"BUILT_IN_CTZLL\00", align 1
@.str.437 = private unnamed_addr constant [19 x i8] c"BUILT_IN_DCGETTEXT\00", align 1
@.str.438 = private unnamed_addr constant [18 x i8] c"BUILT_IN_DGETTEXT\00", align 1
@.str.439 = private unnamed_addr constant [19 x i8] c"BUILT_IN_DWARF_CFA\00", align 1
@.str.440 = private unnamed_addr constant [25 x i8] c"BUILT_IN_DWARF_SP_COLUMN\00", align 1
@.str.441 = private unnamed_addr constant [19 x i8] c"BUILT_IN_EH_RETURN\00", align 1
@.str.442 = private unnamed_addr constant [30 x i8] c"BUILT_IN_EH_RETURN_DATA_REGNO\00", align 1
@.str.443 = private unnamed_addr constant [15 x i8] c"BUILT_IN_EXECL\00", align 1
@.str.444 = private unnamed_addr constant [16 x i8] c"BUILT_IN_EXECLP\00", align 1
@.str.445 = private unnamed_addr constant [16 x i8] c"BUILT_IN_EXECLE\00", align 1
@.str.446 = private unnamed_addr constant [15 x i8] c"BUILT_IN_EXECV\00", align 1
@.str.447 = private unnamed_addr constant [16 x i8] c"BUILT_IN_EXECVP\00", align 1
@.str.448 = private unnamed_addr constant [16 x i8] c"BUILT_IN_EXECVE\00", align 1
@.str.449 = private unnamed_addr constant [14 x i8] c"BUILT_IN_EXIT\00", align 1
@.str.450 = private unnamed_addr constant [16 x i8] c"BUILT_IN_EXPECT\00", align 1
@.str.451 = private unnamed_addr constant [24 x i8] c"BUILT_IN_EXTEND_POINTER\00", align 1
@.str.452 = private unnamed_addr constant [29 x i8] c"BUILT_IN_EXTRACT_RETURN_ADDR\00", align 1
@.str.453 = private unnamed_addr constant [13 x i8] c"BUILT_IN_FFS\00", align 1
@.str.454 = private unnamed_addr constant [17 x i8] c"BUILT_IN_FFSIMAX\00", align 1
@.str.455 = private unnamed_addr constant [14 x i8] c"BUILT_IN_FFSL\00", align 1
@.str.456 = private unnamed_addr constant [15 x i8] c"BUILT_IN_FFSLL\00", align 1
@.str.457 = private unnamed_addr constant [14 x i8] c"BUILT_IN_FORK\00", align 1
@.str.458 = private unnamed_addr constant [23 x i8] c"BUILT_IN_FRAME_ADDRESS\00", align 1
@.str.459 = private unnamed_addr constant [14 x i8] c"BUILT_IN_FREE\00", align 1
@.str.460 = private unnamed_addr constant [26 x i8] c"BUILT_IN_FROB_RETURN_ADDR\00", align 1
@.str.461 = private unnamed_addr constant [17 x i8] c"BUILT_IN_GETTEXT\00", align 1
@.str.462 = private unnamed_addr constant [17 x i8] c"BUILT_IN_IMAXABS\00", align 1
@.str.463 = private unnamed_addr constant [30 x i8] c"BUILT_IN_INIT_DWARF_REG_SIZES\00", align 1
@.str.464 = private unnamed_addr constant [16 x i8] c"BUILT_IN_FINITE\00", align 1
@.str.465 = private unnamed_addr constant [17 x i8] c"BUILT_IN_FINITEF\00", align 1
@.str.466 = private unnamed_addr constant [17 x i8] c"BUILT_IN_FINITEL\00", align 1
@.str.467 = private unnamed_addr constant [19 x i8] c"BUILT_IN_FINITED32\00", align 1
@.str.468 = private unnamed_addr constant [19 x i8] c"BUILT_IN_FINITED64\00", align 1
@.str.469 = private unnamed_addr constant [20 x i8] c"BUILT_IN_FINITED128\00", align 1
@.str.470 = private unnamed_addr constant [20 x i8] c"BUILT_IN_FPCLASSIFY\00", align 1
@.str.471 = private unnamed_addr constant [18 x i8] c"BUILT_IN_ISFINITE\00", align 1
@.str.472 = private unnamed_addr constant [20 x i8] c"BUILT_IN_ISINF_SIGN\00", align 1
@.str.473 = private unnamed_addr constant [15 x i8] c"BUILT_IN_ISINF\00", align 1
@.str.474 = private unnamed_addr constant [16 x i8] c"BUILT_IN_ISINFF\00", align 1
@.str.475 = private unnamed_addr constant [16 x i8] c"BUILT_IN_ISINFL\00", align 1
@.str.476 = private unnamed_addr constant [18 x i8] c"BUILT_IN_ISINFD32\00", align 1
@.str.477 = private unnamed_addr constant [18 x i8] c"BUILT_IN_ISINFD64\00", align 1
@.str.478 = private unnamed_addr constant [19 x i8] c"BUILT_IN_ISINFD128\00", align 1
@.str.479 = private unnamed_addr constant [15 x i8] c"BUILT_IN_ISNAN\00", align 1
@.str.480 = private unnamed_addr constant [16 x i8] c"BUILT_IN_ISNANF\00", align 1
@.str.481 = private unnamed_addr constant [16 x i8] c"BUILT_IN_ISNANL\00", align 1
@.str.482 = private unnamed_addr constant [18 x i8] c"BUILT_IN_ISNAND32\00", align 1
@.str.483 = private unnamed_addr constant [18 x i8] c"BUILT_IN_ISNAND64\00", align 1
@.str.484 = private unnamed_addr constant [19 x i8] c"BUILT_IN_ISNAND128\00", align 1
@.str.485 = private unnamed_addr constant [18 x i8] c"BUILT_IN_ISNORMAL\00", align 1
@.str.486 = private unnamed_addr constant [19 x i8] c"BUILT_IN_ISGREATER\00", align 1
@.str.487 = private unnamed_addr constant [24 x i8] c"BUILT_IN_ISGREATEREQUAL\00", align 1
@.str.488 = private unnamed_addr constant [16 x i8] c"BUILT_IN_ISLESS\00", align 1
@.str.489 = private unnamed_addr constant [21 x i8] c"BUILT_IN_ISLESSEQUAL\00", align 1
@.str.490 = private unnamed_addr constant [23 x i8] c"BUILT_IN_ISLESSGREATER\00", align 1
@.str.491 = private unnamed_addr constant [21 x i8] c"BUILT_IN_ISUNORDERED\00", align 1
@.str.492 = private unnamed_addr constant [14 x i8] c"BUILT_IN_LABS\00", align 1
@.str.493 = private unnamed_addr constant [15 x i8] c"BUILT_IN_LLABS\00", align 1
@.str.494 = private unnamed_addr constant [17 x i8] c"BUILT_IN_LONGJMP\00", align 1
@.str.495 = private unnamed_addr constant [16 x i8] c"BUILT_IN_MALLOC\00", align 1
@.str.496 = private unnamed_addr constant [18 x i8] c"BUILT_IN_NEXT_ARG\00", align 1
@.str.497 = private unnamed_addr constant [16 x i8] c"BUILT_IN_PARITY\00", align 1
@.str.498 = private unnamed_addr constant [20 x i8] c"BUILT_IN_PARITYIMAX\00", align 1
@.str.499 = private unnamed_addr constant [17 x i8] c"BUILT_IN_PARITYL\00", align 1
@.str.500 = private unnamed_addr constant [18 x i8] c"BUILT_IN_PARITYLL\00", align 1
@.str.501 = private unnamed_addr constant [18 x i8] c"BUILT_IN_POPCOUNT\00", align 1
@.str.502 = private unnamed_addr constant [22 x i8] c"BUILT_IN_POPCOUNTIMAX\00", align 1
@.str.503 = private unnamed_addr constant [19 x i8] c"BUILT_IN_POPCOUNTL\00", align 1
@.str.504 = private unnamed_addr constant [20 x i8] c"BUILT_IN_POPCOUNTLL\00", align 1
@.str.505 = private unnamed_addr constant [18 x i8] c"BUILT_IN_PREFETCH\00", align 1
@.str.506 = private unnamed_addr constant [17 x i8] c"BUILT_IN_REALLOC\00", align 1
@.str.507 = private unnamed_addr constant [16 x i8] c"BUILT_IN_RETURN\00", align 1
@.str.508 = private unnamed_addr constant [24 x i8] c"BUILT_IN_RETURN_ADDRESS\00", align 1
@.str.509 = private unnamed_addr constant [18 x i8] c"BUILT_IN_SAVEREGS\00", align 1
@.str.510 = private unnamed_addr constant [16 x i8] c"BUILT_IN_SETJMP\00", align 1
@.str.511 = private unnamed_addr constant [17 x i8] c"BUILT_IN_STRFMON\00", align 1
@.str.512 = private unnamed_addr constant [18 x i8] c"BUILT_IN_STRFTIME\00", align 1
@.str.513 = private unnamed_addr constant [14 x i8] c"BUILT_IN_TRAP\00", align 1
@.str.514 = private unnamed_addr constant [21 x i8] c"BUILT_IN_UNREACHABLE\00", align 1
@.str.515 = private unnamed_addr constant [21 x i8] c"BUILT_IN_UNWIND_INIT\00", align 1
@.str.516 = private unnamed_addr constant [27 x i8] c"BUILT_IN_UPDATE_SETJMP_BUF\00", align 1
@.str.517 = private unnamed_addr constant [17 x i8] c"BUILT_IN_VA_COPY\00", align 1
@.str.518 = private unnamed_addr constant [16 x i8] c"BUILT_IN_VA_END\00", align 1
@.str.519 = private unnamed_addr constant [18 x i8] c"BUILT_IN_VA_START\00", align 1
@.str.520 = private unnamed_addr constant [21 x i8] c"BUILT_IN_VA_ARG_PACK\00", align 1
@.str.521 = private unnamed_addr constant [25 x i8] c"BUILT_IN_VA_ARG_PACK_LEN\00", align 1
@.str.522 = private unnamed_addr constant [15 x i8] c"BUILT_IN__EXIT\00", align 1
@.str.523 = private unnamed_addr constant [16 x i8] c"BUILT_IN__EXIT2\00", align 1
@.str.524 = private unnamed_addr constant [25 x i8] c"BUILT_IN_INIT_TRAMPOLINE\00", align 1
@.str.525 = private unnamed_addr constant [27 x i8] c"BUILT_IN_ADJUST_TRAMPOLINE\00", align 1
@.str.526 = private unnamed_addr constant [23 x i8] c"BUILT_IN_NONLOCAL_GOTO\00", align 1
@.str.527 = private unnamed_addr constant [22 x i8] c"BUILT_IN_SETJMP_SETUP\00", align 1
@.str.528 = private unnamed_addr constant [27 x i8] c"BUILT_IN_SETJMP_DISPATCHER\00", align 1
@.str.529 = private unnamed_addr constant [25 x i8] c"BUILT_IN_SETJMP_RECEIVER\00", align 1
@.str.530 = private unnamed_addr constant [20 x i8] c"BUILT_IN_STACK_SAVE\00", align 1
@.str.531 = private unnamed_addr constant [23 x i8] c"BUILT_IN_STACK_RESTORE\00", align 1
@.str.532 = private unnamed_addr constant [21 x i8] c"BUILT_IN_OBJECT_SIZE\00", align 1
@.str.533 = private unnamed_addr constant [20 x i8] c"BUILT_IN_MEMCPY_CHK\00", align 1
@.str.534 = private unnamed_addr constant [21 x i8] c"BUILT_IN_MEMMOVE_CHK\00", align 1
@.str.535 = private unnamed_addr constant [21 x i8] c"BUILT_IN_MEMPCPY_CHK\00", align 1
@.str.536 = private unnamed_addr constant [20 x i8] c"BUILT_IN_MEMSET_CHK\00", align 1
@.str.537 = private unnamed_addr constant [20 x i8] c"BUILT_IN_STPCPY_CHK\00", align 1
@.str.538 = private unnamed_addr constant [20 x i8] c"BUILT_IN_STRCAT_CHK\00", align 1
@.str.539 = private unnamed_addr constant [20 x i8] c"BUILT_IN_STRCPY_CHK\00", align 1
@.str.540 = private unnamed_addr constant [21 x i8] c"BUILT_IN_STRNCAT_CHK\00", align 1
@.str.541 = private unnamed_addr constant [21 x i8] c"BUILT_IN_STRNCPY_CHK\00", align 1
@.str.542 = private unnamed_addr constant [22 x i8] c"BUILT_IN_SNPRINTF_CHK\00", align 1
@.str.543 = private unnamed_addr constant [21 x i8] c"BUILT_IN_SPRINTF_CHK\00", align 1
@.str.544 = private unnamed_addr constant [23 x i8] c"BUILT_IN_VSNPRINTF_CHK\00", align 1
@.str.545 = private unnamed_addr constant [22 x i8] c"BUILT_IN_VSPRINTF_CHK\00", align 1
@.str.546 = private unnamed_addr constant [21 x i8] c"BUILT_IN_FPRINTF_CHK\00", align 1
@.str.547 = private unnamed_addr constant [20 x i8] c"BUILT_IN_PRINTF_CHK\00", align 1
@.str.548 = private unnamed_addr constant [22 x i8] c"BUILT_IN_VFPRINTF_CHK\00", align 1
@.str.549 = private unnamed_addr constant [21 x i8] c"BUILT_IN_VPRINTF_CHK\00", align 1
@.str.550 = private unnamed_addr constant [28 x i8] c"BUILT_IN_PROFILE_FUNC_ENTER\00", align 1
@.str.551 = private unnamed_addr constant [27 x i8] c"BUILT_IN_PROFILE_FUNC_EXIT\00", align 1
@.str.552 = private unnamed_addr constant [28 x i8] c"BUILT_IN_EMUTLS_GET_ADDRESS\00", align 1
@.str.553 = private unnamed_addr constant [32 x i8] c"BUILT_IN_EMUTLS_REGISTER_COMMON\00", align 1
@.str.554 = private unnamed_addr constant [23 x i8] c"BUILT_IN_UNWIND_RESUME\00", align 1
@.str.555 = private unnamed_addr constant [25 x i8] c"BUILT_IN_CXA_END_CLEANUP\00", align 1
@.str.556 = private unnamed_addr constant [20 x i8] c"BUILT_IN_EH_POINTER\00", align 1
@.str.557 = private unnamed_addr constant [19 x i8] c"BUILT_IN_EH_FILTER\00", align 1
@.str.558 = private unnamed_addr constant [24 x i8] c"BUILT_IN_EH_COPY_VALUES\00", align 1
@.str.559 = private unnamed_addr constant [25 x i8] c"BUILT_IN_FETCH_AND_ADD_N\00", align 1
@.str.560 = private unnamed_addr constant [25 x i8] c"BUILT_IN_FETCH_AND_ADD_1\00", align 1
@.str.561 = private unnamed_addr constant [25 x i8] c"BUILT_IN_FETCH_AND_ADD_2\00", align 1
@.str.562 = private unnamed_addr constant [25 x i8] c"BUILT_IN_FETCH_AND_ADD_4\00", align 1
@.str.563 = private unnamed_addr constant [25 x i8] c"BUILT_IN_FETCH_AND_ADD_8\00", align 1
@.str.564 = private unnamed_addr constant [26 x i8] c"BUILT_IN_FETCH_AND_ADD_16\00", align 1
@.str.565 = private unnamed_addr constant [25 x i8] c"BUILT_IN_FETCH_AND_SUB_N\00", align 1
@.str.566 = private unnamed_addr constant [25 x i8] c"BUILT_IN_FETCH_AND_SUB_1\00", align 1
@.str.567 = private unnamed_addr constant [25 x i8] c"BUILT_IN_FETCH_AND_SUB_2\00", align 1
@.str.568 = private unnamed_addr constant [25 x i8] c"BUILT_IN_FETCH_AND_SUB_4\00", align 1
@.str.569 = private unnamed_addr constant [25 x i8] c"BUILT_IN_FETCH_AND_SUB_8\00", align 1
@.str.570 = private unnamed_addr constant [26 x i8] c"BUILT_IN_FETCH_AND_SUB_16\00", align 1
@.str.571 = private unnamed_addr constant [24 x i8] c"BUILT_IN_FETCH_AND_OR_N\00", align 1
@.str.572 = private unnamed_addr constant [24 x i8] c"BUILT_IN_FETCH_AND_OR_1\00", align 1
@.str.573 = private unnamed_addr constant [24 x i8] c"BUILT_IN_FETCH_AND_OR_2\00", align 1
@.str.574 = private unnamed_addr constant [24 x i8] c"BUILT_IN_FETCH_AND_OR_4\00", align 1
@.str.575 = private unnamed_addr constant [24 x i8] c"BUILT_IN_FETCH_AND_OR_8\00", align 1
@.str.576 = private unnamed_addr constant [25 x i8] c"BUILT_IN_FETCH_AND_OR_16\00", align 1
@.str.577 = private unnamed_addr constant [25 x i8] c"BUILT_IN_FETCH_AND_AND_N\00", align 1
@.str.578 = private unnamed_addr constant [25 x i8] c"BUILT_IN_FETCH_AND_AND_1\00", align 1
@.str.579 = private unnamed_addr constant [25 x i8] c"BUILT_IN_FETCH_AND_AND_2\00", align 1
@.str.580 = private unnamed_addr constant [25 x i8] c"BUILT_IN_FETCH_AND_AND_4\00", align 1
@.str.581 = private unnamed_addr constant [25 x i8] c"BUILT_IN_FETCH_AND_AND_8\00", align 1
@.str.582 = private unnamed_addr constant [26 x i8] c"BUILT_IN_FETCH_AND_AND_16\00", align 1
@.str.583 = private unnamed_addr constant [25 x i8] c"BUILT_IN_FETCH_AND_XOR_N\00", align 1
@.str.584 = private unnamed_addr constant [25 x i8] c"BUILT_IN_FETCH_AND_XOR_1\00", align 1
@.str.585 = private unnamed_addr constant [25 x i8] c"BUILT_IN_FETCH_AND_XOR_2\00", align 1
@.str.586 = private unnamed_addr constant [25 x i8] c"BUILT_IN_FETCH_AND_XOR_4\00", align 1
@.str.587 = private unnamed_addr constant [25 x i8] c"BUILT_IN_FETCH_AND_XOR_8\00", align 1
@.str.588 = private unnamed_addr constant [26 x i8] c"BUILT_IN_FETCH_AND_XOR_16\00", align 1
@.str.589 = private unnamed_addr constant [26 x i8] c"BUILT_IN_FETCH_AND_NAND_N\00", align 1
@.str.590 = private unnamed_addr constant [26 x i8] c"BUILT_IN_FETCH_AND_NAND_1\00", align 1
@.str.591 = private unnamed_addr constant [26 x i8] c"BUILT_IN_FETCH_AND_NAND_2\00", align 1
@.str.592 = private unnamed_addr constant [26 x i8] c"BUILT_IN_FETCH_AND_NAND_4\00", align 1
@.str.593 = private unnamed_addr constant [26 x i8] c"BUILT_IN_FETCH_AND_NAND_8\00", align 1
@.str.594 = private unnamed_addr constant [27 x i8] c"BUILT_IN_FETCH_AND_NAND_16\00", align 1
@.str.595 = private unnamed_addr constant [25 x i8] c"BUILT_IN_ADD_AND_FETCH_N\00", align 1
@.str.596 = private unnamed_addr constant [25 x i8] c"BUILT_IN_ADD_AND_FETCH_1\00", align 1
@.str.597 = private unnamed_addr constant [25 x i8] c"BUILT_IN_ADD_AND_FETCH_2\00", align 1
@.str.598 = private unnamed_addr constant [25 x i8] c"BUILT_IN_ADD_AND_FETCH_4\00", align 1
@.str.599 = private unnamed_addr constant [25 x i8] c"BUILT_IN_ADD_AND_FETCH_8\00", align 1
@.str.600 = private unnamed_addr constant [26 x i8] c"BUILT_IN_ADD_AND_FETCH_16\00", align 1
@.str.601 = private unnamed_addr constant [25 x i8] c"BUILT_IN_SUB_AND_FETCH_N\00", align 1
@.str.602 = private unnamed_addr constant [25 x i8] c"BUILT_IN_SUB_AND_FETCH_1\00", align 1
@.str.603 = private unnamed_addr constant [25 x i8] c"BUILT_IN_SUB_AND_FETCH_2\00", align 1
@.str.604 = private unnamed_addr constant [25 x i8] c"BUILT_IN_SUB_AND_FETCH_4\00", align 1
@.str.605 = private unnamed_addr constant [25 x i8] c"BUILT_IN_SUB_AND_FETCH_8\00", align 1
@.str.606 = private unnamed_addr constant [26 x i8] c"BUILT_IN_SUB_AND_FETCH_16\00", align 1
@.str.607 = private unnamed_addr constant [24 x i8] c"BUILT_IN_OR_AND_FETCH_N\00", align 1
@.str.608 = private unnamed_addr constant [24 x i8] c"BUILT_IN_OR_AND_FETCH_1\00", align 1
@.str.609 = private unnamed_addr constant [24 x i8] c"BUILT_IN_OR_AND_FETCH_2\00", align 1
@.str.610 = private unnamed_addr constant [24 x i8] c"BUILT_IN_OR_AND_FETCH_4\00", align 1
@.str.611 = private unnamed_addr constant [24 x i8] c"BUILT_IN_OR_AND_FETCH_8\00", align 1
@.str.612 = private unnamed_addr constant [25 x i8] c"BUILT_IN_OR_AND_FETCH_16\00", align 1
@.str.613 = private unnamed_addr constant [25 x i8] c"BUILT_IN_AND_AND_FETCH_N\00", align 1
@.str.614 = private unnamed_addr constant [25 x i8] c"BUILT_IN_AND_AND_FETCH_1\00", align 1
@.str.615 = private unnamed_addr constant [25 x i8] c"BUILT_IN_AND_AND_FETCH_2\00", align 1
@.str.616 = private unnamed_addr constant [25 x i8] c"BUILT_IN_AND_AND_FETCH_4\00", align 1
@.str.617 = private unnamed_addr constant [25 x i8] c"BUILT_IN_AND_AND_FETCH_8\00", align 1
@.str.618 = private unnamed_addr constant [26 x i8] c"BUILT_IN_AND_AND_FETCH_16\00", align 1
@.str.619 = private unnamed_addr constant [25 x i8] c"BUILT_IN_XOR_AND_FETCH_N\00", align 1
@.str.620 = private unnamed_addr constant [25 x i8] c"BUILT_IN_XOR_AND_FETCH_1\00", align 1
@.str.621 = private unnamed_addr constant [25 x i8] c"BUILT_IN_XOR_AND_FETCH_2\00", align 1
@.str.622 = private unnamed_addr constant [25 x i8] c"BUILT_IN_XOR_AND_FETCH_4\00", align 1
@.str.623 = private unnamed_addr constant [25 x i8] c"BUILT_IN_XOR_AND_FETCH_8\00", align 1
@.str.624 = private unnamed_addr constant [26 x i8] c"BUILT_IN_XOR_AND_FETCH_16\00", align 1
@.str.625 = private unnamed_addr constant [26 x i8] c"BUILT_IN_NAND_AND_FETCH_N\00", align 1
@.str.626 = private unnamed_addr constant [26 x i8] c"BUILT_IN_NAND_AND_FETCH_1\00", align 1
@.str.627 = private unnamed_addr constant [26 x i8] c"BUILT_IN_NAND_AND_FETCH_2\00", align 1
@.str.628 = private unnamed_addr constant [26 x i8] c"BUILT_IN_NAND_AND_FETCH_4\00", align 1
@.str.629 = private unnamed_addr constant [26 x i8] c"BUILT_IN_NAND_AND_FETCH_8\00", align 1
@.str.630 = private unnamed_addr constant [27 x i8] c"BUILT_IN_NAND_AND_FETCH_16\00", align 1
@.str.631 = private unnamed_addr constant [33 x i8] c"BUILT_IN_BOOL_COMPARE_AND_SWAP_N\00", align 1
@.str.632 = private unnamed_addr constant [33 x i8] c"BUILT_IN_BOOL_COMPARE_AND_SWAP_1\00", align 1
@.str.633 = private unnamed_addr constant [33 x i8] c"BUILT_IN_BOOL_COMPARE_AND_SWAP_2\00", align 1
@.str.634 = private unnamed_addr constant [33 x i8] c"BUILT_IN_BOOL_COMPARE_AND_SWAP_4\00", align 1
@.str.635 = private unnamed_addr constant [33 x i8] c"BUILT_IN_BOOL_COMPARE_AND_SWAP_8\00", align 1
@.str.636 = private unnamed_addr constant [34 x i8] c"BUILT_IN_BOOL_COMPARE_AND_SWAP_16\00", align 1
@.str.637 = private unnamed_addr constant [32 x i8] c"BUILT_IN_VAL_COMPARE_AND_SWAP_N\00", align 1
@.str.638 = private unnamed_addr constant [32 x i8] c"BUILT_IN_VAL_COMPARE_AND_SWAP_1\00", align 1
@.str.639 = private unnamed_addr constant [32 x i8] c"BUILT_IN_VAL_COMPARE_AND_SWAP_2\00", align 1
@.str.640 = private unnamed_addr constant [32 x i8] c"BUILT_IN_VAL_COMPARE_AND_SWAP_4\00", align 1
@.str.641 = private unnamed_addr constant [32 x i8] c"BUILT_IN_VAL_COMPARE_AND_SWAP_8\00", align 1
@.str.642 = private unnamed_addr constant [33 x i8] c"BUILT_IN_VAL_COMPARE_AND_SWAP_16\00", align 1
@.str.643 = private unnamed_addr constant [29 x i8] c"BUILT_IN_LOCK_TEST_AND_SET_N\00", align 1
@.str.644 = private unnamed_addr constant [29 x i8] c"BUILT_IN_LOCK_TEST_AND_SET_1\00", align 1
@.str.645 = private unnamed_addr constant [29 x i8] c"BUILT_IN_LOCK_TEST_AND_SET_2\00", align 1
@.str.646 = private unnamed_addr constant [29 x i8] c"BUILT_IN_LOCK_TEST_AND_SET_4\00", align 1
@.str.647 = private unnamed_addr constant [29 x i8] c"BUILT_IN_LOCK_TEST_AND_SET_8\00", align 1
@.str.648 = private unnamed_addr constant [30 x i8] c"BUILT_IN_LOCK_TEST_AND_SET_16\00", align 1
@.str.649 = private unnamed_addr constant [24 x i8] c"BUILT_IN_LOCK_RELEASE_N\00", align 1
@.str.650 = private unnamed_addr constant [24 x i8] c"BUILT_IN_LOCK_RELEASE_1\00", align 1
@.str.651 = private unnamed_addr constant [24 x i8] c"BUILT_IN_LOCK_RELEASE_2\00", align 1
@.str.652 = private unnamed_addr constant [24 x i8] c"BUILT_IN_LOCK_RELEASE_4\00", align 1
@.str.653 = private unnamed_addr constant [24 x i8] c"BUILT_IN_LOCK_RELEASE_8\00", align 1
@.str.654 = private unnamed_addr constant [25 x i8] c"BUILT_IN_LOCK_RELEASE_16\00", align 1
@.str.655 = private unnamed_addr constant [21 x i8] c"BUILT_IN_SYNCHRONIZE\00", align 1
@.str.656 = private unnamed_addr constant [28 x i8] c"BUILT_IN_OMP_GET_THREAD_NUM\00", align 1
@.str.657 = private unnamed_addr constant [29 x i8] c"BUILT_IN_OMP_GET_NUM_THREADS\00", align 1
@.str.658 = private unnamed_addr constant [27 x i8] c"BUILT_IN_GOMP_ATOMIC_START\00", align 1
@.str.659 = private unnamed_addr constant [25 x i8] c"BUILT_IN_GOMP_ATOMIC_END\00", align 1
@.str.660 = private unnamed_addr constant [22 x i8] c"BUILT_IN_GOMP_BARRIER\00", align 1
@.str.661 = private unnamed_addr constant [23 x i8] c"BUILT_IN_GOMP_TASKWAIT\00", align 1
@.str.662 = private unnamed_addr constant [29 x i8] c"BUILT_IN_GOMP_CRITICAL_START\00", align 1
@.str.663 = private unnamed_addr constant [27 x i8] c"BUILT_IN_GOMP_CRITICAL_END\00", align 1
@.str.664 = private unnamed_addr constant [34 x i8] c"BUILT_IN_GOMP_CRITICAL_NAME_START\00", align 1
@.str.665 = private unnamed_addr constant [32 x i8] c"BUILT_IN_GOMP_CRITICAL_NAME_END\00", align 1
@.str.666 = private unnamed_addr constant [32 x i8] c"BUILT_IN_GOMP_LOOP_STATIC_START\00", align 1
@.str.667 = private unnamed_addr constant [33 x i8] c"BUILT_IN_GOMP_LOOP_DYNAMIC_START\00", align 1
@.str.668 = private unnamed_addr constant [32 x i8] c"BUILT_IN_GOMP_LOOP_GUIDED_START\00", align 1
@.str.669 = private unnamed_addr constant [33 x i8] c"BUILT_IN_GOMP_LOOP_RUNTIME_START\00", align 1
@.str.670 = private unnamed_addr constant [40 x i8] c"BUILT_IN_GOMP_LOOP_ORDERED_STATIC_START\00", align 1
@.str.671 = private unnamed_addr constant [41 x i8] c"BUILT_IN_GOMP_LOOP_ORDERED_DYNAMIC_START\00", align 1
@.str.672 = private unnamed_addr constant [40 x i8] c"BUILT_IN_GOMP_LOOP_ORDERED_GUIDED_START\00", align 1
@.str.673 = private unnamed_addr constant [41 x i8] c"BUILT_IN_GOMP_LOOP_ORDERED_RUNTIME_START\00", align 1
@.str.674 = private unnamed_addr constant [31 x i8] c"BUILT_IN_GOMP_LOOP_STATIC_NEXT\00", align 1
@.str.675 = private unnamed_addr constant [32 x i8] c"BUILT_IN_GOMP_LOOP_DYNAMIC_NEXT\00", align 1
@.str.676 = private unnamed_addr constant [31 x i8] c"BUILT_IN_GOMP_LOOP_GUIDED_NEXT\00", align 1
@.str.677 = private unnamed_addr constant [32 x i8] c"BUILT_IN_GOMP_LOOP_RUNTIME_NEXT\00", align 1
@.str.678 = private unnamed_addr constant [39 x i8] c"BUILT_IN_GOMP_LOOP_ORDERED_STATIC_NEXT\00", align 1
@.str.679 = private unnamed_addr constant [40 x i8] c"BUILT_IN_GOMP_LOOP_ORDERED_DYNAMIC_NEXT\00", align 1
@.str.680 = private unnamed_addr constant [39 x i8] c"BUILT_IN_GOMP_LOOP_ORDERED_GUIDED_NEXT\00", align 1
@.str.681 = private unnamed_addr constant [40 x i8] c"BUILT_IN_GOMP_LOOP_ORDERED_RUNTIME_NEXT\00", align 1
@.str.682 = private unnamed_addr constant [36 x i8] c"BUILT_IN_GOMP_LOOP_ULL_STATIC_START\00", align 1
@.str.683 = private unnamed_addr constant [37 x i8] c"BUILT_IN_GOMP_LOOP_ULL_DYNAMIC_START\00", align 1
@.str.684 = private unnamed_addr constant [36 x i8] c"BUILT_IN_GOMP_LOOP_ULL_GUIDED_START\00", align 1
@.str.685 = private unnamed_addr constant [37 x i8] c"BUILT_IN_GOMP_LOOP_ULL_RUNTIME_START\00", align 1
@.str.686 = private unnamed_addr constant [44 x i8] c"BUILT_IN_GOMP_LOOP_ULL_ORDERED_STATIC_START\00", align 1
@.str.687 = private unnamed_addr constant [45 x i8] c"BUILT_IN_GOMP_LOOP_ULL_ORDERED_DYNAMIC_START\00", align 1
@.str.688 = private unnamed_addr constant [44 x i8] c"BUILT_IN_GOMP_LOOP_ULL_ORDERED_GUIDED_START\00", align 1
@.str.689 = private unnamed_addr constant [45 x i8] c"BUILT_IN_GOMP_LOOP_ULL_ORDERED_RUNTIME_START\00", align 1
@.str.690 = private unnamed_addr constant [35 x i8] c"BUILT_IN_GOMP_LOOP_ULL_STATIC_NEXT\00", align 1
@.str.691 = private unnamed_addr constant [36 x i8] c"BUILT_IN_GOMP_LOOP_ULL_DYNAMIC_NEXT\00", align 1
@.str.692 = private unnamed_addr constant [35 x i8] c"BUILT_IN_GOMP_LOOP_ULL_GUIDED_NEXT\00", align 1
@.str.693 = private unnamed_addr constant [36 x i8] c"BUILT_IN_GOMP_LOOP_ULL_RUNTIME_NEXT\00", align 1
@.str.694 = private unnamed_addr constant [43 x i8] c"BUILT_IN_GOMP_LOOP_ULL_ORDERED_STATIC_NEXT\00", align 1
@.str.695 = private unnamed_addr constant [44 x i8] c"BUILT_IN_GOMP_LOOP_ULL_ORDERED_DYNAMIC_NEXT\00", align 1
@.str.696 = private unnamed_addr constant [43 x i8] c"BUILT_IN_GOMP_LOOP_ULL_ORDERED_GUIDED_NEXT\00", align 1
@.str.697 = private unnamed_addr constant [44 x i8] c"BUILT_IN_GOMP_LOOP_ULL_ORDERED_RUNTIME_NEXT\00", align 1
@.str.698 = private unnamed_addr constant [41 x i8] c"BUILT_IN_GOMP_PARALLEL_LOOP_STATIC_START\00", align 1
@.str.699 = private unnamed_addr constant [42 x i8] c"BUILT_IN_GOMP_PARALLEL_LOOP_DYNAMIC_START\00", align 1
@.str.700 = private unnamed_addr constant [41 x i8] c"BUILT_IN_GOMP_PARALLEL_LOOP_GUIDED_START\00", align 1
@.str.701 = private unnamed_addr constant [42 x i8] c"BUILT_IN_GOMP_PARALLEL_LOOP_RUNTIME_START\00", align 1
@.str.702 = private unnamed_addr constant [23 x i8] c"BUILT_IN_GOMP_LOOP_END\00", align 1
@.str.703 = private unnamed_addr constant [30 x i8] c"BUILT_IN_GOMP_LOOP_END_NOWAIT\00", align 1
@.str.704 = private unnamed_addr constant [28 x i8] c"BUILT_IN_GOMP_ORDERED_START\00", align 1
@.str.705 = private unnamed_addr constant [26 x i8] c"BUILT_IN_GOMP_ORDERED_END\00", align 1
@.str.706 = private unnamed_addr constant [29 x i8] c"BUILT_IN_GOMP_PARALLEL_START\00", align 1
@.str.707 = private unnamed_addr constant [27 x i8] c"BUILT_IN_GOMP_PARALLEL_END\00", align 1
@.str.708 = private unnamed_addr constant [19 x i8] c"BUILT_IN_GOMP_TASK\00", align 1
@.str.709 = private unnamed_addr constant [29 x i8] c"BUILT_IN_GOMP_SECTIONS_START\00", align 1
@.str.710 = private unnamed_addr constant [28 x i8] c"BUILT_IN_GOMP_SECTIONS_NEXT\00", align 1
@.str.711 = private unnamed_addr constant [38 x i8] c"BUILT_IN_GOMP_PARALLEL_SECTIONS_START\00", align 1
@.str.712 = private unnamed_addr constant [27 x i8] c"BUILT_IN_GOMP_SECTIONS_END\00", align 1
@.str.713 = private unnamed_addr constant [34 x i8] c"BUILT_IN_GOMP_SECTIONS_END_NOWAIT\00", align 1
@.str.714 = private unnamed_addr constant [27 x i8] c"BUILT_IN_GOMP_SINGLE_START\00", align 1
@.str.715 = private unnamed_addr constant [32 x i8] c"BUILT_IN_GOMP_SINGLE_COPY_START\00", align 1
@.str.716 = private unnamed_addr constant [30 x i8] c"BUILT_IN_GOMP_SINGLE_COPY_END\00", align 1
@built_in_names = dso_local local_unnamed_addr global <{ [713 x ptr], [8 x ptr] }> <{ [713 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @.str.342, ptr @.str.343, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.348, ptr @.str.349, ptr @.str.350, ptr @.str.351, ptr @.str.352, ptr @.str.353, ptr @.str.354, ptr @.str.355, ptr @.str.356, ptr @.str.357, ptr @.str.358, ptr @.str.359, ptr @.str.360, ptr @.str.361, ptr @.str.362, ptr @.str.363, ptr @.str.364, ptr @.str.365, ptr @.str.366, ptr @.str.367, ptr @.str.368, ptr @.str.369, ptr @.str.370, ptr @.str.371, ptr @.str.372, ptr @.str.373, ptr @.str.374, ptr @.str.375, ptr @.str.376, ptr @.str.377, ptr @.str.378, ptr @.str.379, ptr @.str.380, ptr @.str.381, ptr @.str.382, ptr @.str.383, ptr @.str.384, ptr @.str.385, ptr @.str.386, ptr @.str.387, ptr @.str.388, ptr @.str.389, ptr @.str.390, ptr @.str.391, ptr @.str.392, ptr @.str.393, ptr @.str.394, ptr @.str.395, ptr @.str.396, ptr @.str.397, ptr @.str.398, ptr @.str.399, ptr @.str.400, ptr @.str.401, ptr @.str.402, ptr @.str.403, ptr @.str.404, ptr @.str.405, ptr @.str.406, ptr @.str.407, ptr @.str.408, ptr @.str.409, ptr @.str.410, ptr @.str.411, ptr @.str.412, ptr @.str.413, ptr @.str.414, ptr @.str.415, ptr @.str.416, ptr @.str.417, ptr @.str.418, ptr @.str.419, ptr @.str.420, ptr @.str.421, ptr @.str.422, ptr @.str.423, ptr @.str.424, ptr @.str.425, ptr @.str.426, ptr @.str.427, ptr @.str.428, ptr @.str.429, ptr @.str.430, ptr @.str.431, ptr @.str.432, ptr @.str.433, ptr @.str.434, ptr @.str.435, ptr @.str.436, ptr @.str.437, ptr @.str.438, ptr @.str.439, ptr @.str.440, ptr @.str.441, ptr @.str.442, ptr @.str.443, ptr @.str.444, ptr @.str.445, ptr @.str.446, ptr @.str.447, ptr @.str.448, ptr @.str.449, ptr @.str.450, ptr @.str.451, ptr @.str.452, ptr @.str.453, ptr @.str.454, ptr @.str.455, ptr @.str.456, ptr @.str.457, ptr @.str.458, ptr @.str.459, ptr @.str.460, ptr @.str.461, ptr @.str.462, ptr @.str.463, ptr @.str.464, ptr @.str.465, ptr @.str.466, ptr @.str.467, ptr @.str.468, ptr @.str.469, ptr @.str.470, ptr @.str.471, ptr @.str.472, ptr @.str.473, ptr @.str.474, ptr @.str.475, ptr @.str.476, ptr @.str.477, ptr @.str.478, ptr @.str.479, ptr @.str.480, ptr @.str.481, ptr @.str.482, ptr @.str.483, ptr @.str.484, ptr @.str.485, ptr @.str.486, ptr @.str.487, ptr @.str.488, ptr @.str.489, ptr @.str.490, ptr @.str.491, ptr @.str.492, ptr @.str.493, ptr @.str.494, ptr @.str.495, ptr @.str.496, ptr @.str.497, ptr @.str.498, ptr @.str.499, ptr @.str.500, ptr @.str.501, ptr @.str.502, ptr @.str.503, ptr @.str.504, ptr @.str.505, ptr @.str.506, ptr @.str.507, ptr @.str.508, ptr @.str.509, ptr @.str.510, ptr @.str.511, ptr @.str.512, ptr @.str.513, ptr @.str.514, ptr @.str.515, ptr @.str.516, ptr @.str.517, ptr @.str.518, ptr @.str.519, ptr @.str.520, ptr @.str.521, ptr @.str.522, ptr @.str.523, ptr @.str.524, ptr @.str.525, ptr @.str.526, ptr @.str.527, ptr @.str.528, ptr @.str.529, ptr @.str.530, ptr @.str.531, ptr @.str.532, ptr @.str.533, ptr @.str.534, ptr @.str.535, ptr @.str.536, ptr @.str.537, ptr @.str.538, ptr @.str.539, ptr @.str.540, ptr @.str.541, ptr @.str.542, ptr @.str.543, ptr @.str.544, ptr @.str.545, ptr @.str.546, ptr @.str.547, ptr @.str.548, ptr @.str.549, ptr @.str.550, ptr @.str.551, ptr @.str.552, ptr @.str.553, ptr @.str.554, ptr @.str.555, ptr @.str.556, ptr @.str.557, ptr @.str.558, ptr @.str.559, ptr @.str.560, ptr @.str.561, ptr @.str.562, ptr @.str.563, ptr @.str.564, ptr @.str.565, ptr @.str.566, ptr @.str.567, ptr @.str.568, ptr @.str.569, ptr @.str.570, ptr @.str.571, ptr @.str.572, ptr @.str.573, ptr @.str.574, ptr @.str.575, ptr @.str.576, ptr @.str.577, ptr @.str.578, ptr @.str.579, ptr @.str.580, ptr @.str.581, ptr @.str.582, ptr @.str.583, ptr @.str.584, ptr @.str.585, ptr @.str.586, ptr @.str.587, ptr @.str.588, ptr @.str.589, ptr @.str.590, ptr @.str.591, ptr @.str.592, ptr @.str.593, ptr @.str.594, ptr @.str.595, ptr @.str.596, ptr @.str.597, ptr @.str.598, ptr @.str.599, ptr @.str.600, ptr @.str.601, ptr @.str.602, ptr @.str.603, ptr @.str.604, ptr @.str.605, ptr @.str.606, ptr @.str.607, ptr @.str.608, ptr @.str.609, ptr @.str.610, ptr @.str.611, ptr @.str.612, ptr @.str.613, ptr @.str.614, ptr @.str.615, ptr @.str.616, ptr @.str.617, ptr @.str.618, ptr @.str.619, ptr @.str.620, ptr @.str.621, ptr @.str.622, ptr @.str.623, ptr @.str.624, ptr @.str.625, ptr @.str.626, ptr @.str.627, ptr @.str.628, ptr @.str.629, ptr @.str.630, ptr @.str.631, ptr @.str.632, ptr @.str.633, ptr @.str.634, ptr @.str.635, ptr @.str.636, ptr @.str.637, ptr @.str.638, ptr @.str.639, ptr @.str.640, ptr @.str.641, ptr @.str.642, ptr @.str.643, ptr @.str.644, ptr @.str.645, ptr @.str.646, ptr @.str.647, ptr @.str.648, ptr @.str.649, ptr @.str.650, ptr @.str.651, ptr @.str.652, ptr @.str.653, ptr @.str.654, ptr @.str.655, ptr @.str.656, ptr @.str.657, ptr @.str.658, ptr @.str.659, ptr @.str.660, ptr @.str.661, ptr @.str.662, ptr @.str.663, ptr @.str.664, ptr @.str.665, ptr @.str.666, ptr @.str.667, ptr @.str.668, ptr @.str.669, ptr @.str.670, ptr @.str.671, ptr @.str.672, ptr @.str.673, ptr @.str.674, ptr @.str.675, ptr @.str.676, ptr @.str.677, ptr @.str.678, ptr @.str.679, ptr @.str.680, ptr @.str.681, ptr @.str.682, ptr @.str.683, ptr @.str.684, ptr @.str.685, ptr @.str.686, ptr @.str.687, ptr @.str.688, ptr @.str.689, ptr @.str.690, ptr @.str.691, ptr @.str.692, ptr @.str.693, ptr @.str.694, ptr @.str.695, ptr @.str.696, ptr @.str.697, ptr @.str.698, ptr @.str.699, ptr @.str.700, ptr @.str.701, ptr @.str.702, ptr @.str.703, ptr @.str.704, ptr @.str.705, ptr @.str.706, ptr @.str.707, ptr @.str.708, ptr @.str.709, ptr @.str.710, ptr @.str.711, ptr @.str.712, ptr @.str.713, ptr @.str.714, ptr @.str.715, ptr @.str.716], [8 x ptr] zeroinitializer }>, align 16
@.str.718 = private unnamed_addr constant [11 x i8] c"__builtin_\00", align 1
@.str.719 = private unnamed_addr constant [8 x i8] c"__sync_\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@optimize = external local_unnamed_addr global i32, align 4
@flag_tree_ter = external local_unnamed_addr global i32, align 4
@input_location = external local_unnamed_addr global i32, align 4
@.str.720 = private unnamed_addr constant [41 x i8] c"offset outside bounds of constant string\00", align 1
@setjmp_alias_set = internal unnamed_addr global i32 -1, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@cfun = external local_unnamed_addr global ptr, align 8
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@current_function_decl = external local_unnamed_addr global ptr, align 8
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@flag_pic = external local_unnamed_addr global i32, align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@.str.721 = private unnamed_addr constant [11 x i8] c"builtins.c\00", align 1
@.str.722 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@flag_mudflap = external local_unnamed_addr global i32, align 4
@.str.723 = private unnamed_addr constant [53 x i8] c"first argument to %<va_arg%> not of type %<va_list%>\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@gimplify_va_arg_expr.gave_help = internal unnamed_addr global i1 false, align 1
@.str.724 = private unnamed_addr constant [51 x i8] c"%qT is promoted to %qT when passed through %<...%>\00", align 1
@.str.725 = private unnamed_addr constant [47 x i8] c"(so you should pass %qT not %qT to %<va_arg%>)\00", align 1
@.str.726 = private unnamed_addr constant [48 x i8] c"if this code is reached, the program will abort\00", align 1
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@.str.727 = private unnamed_addr constant [14 x i8] c"always_inline\00", align 1
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@.str.728 = private unnamed_addr constant [40 x i8] c"target format does not support infinity\00", align 1
@folding_initializer = external local_unnamed_addr global i32, align 4
@flag_errno_math = external local_unnamed_addr global i32, align 4
@flag_signed_zeros = external local_unnamed_addr global i32, align 4
@dconst0 = external global %struct.real_value, align 8
@flag_finite_math_only = external local_unnamed_addr global i32, align 4
@.str.729 = private unnamed_addr constant [7 x i8] c"0x1p%d\00", align 1
@optab_table = external local_unnamed_addr global [159 x %struct.optab_d], align 16
@target_percent_s = internal global [3 x i8] zeroinitializer, align 1
@target_percent = internal unnamed_addr global i64 0, align 8
@target_newline = internal unnamed_addr global i64 0, align 8
@target_percent_s_newline = internal global [4 x i8] zeroinitializer, align 1
@target_percent_c = internal global [3 x i8] zeroinitializer, align 1
@init_target_chars.init = internal unnamed_addr global i1 false, align 1
@target_c = internal unnamed_addr global i64 0, align 8
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@ptr_mode = external local_unnamed_addr global i32, align 4
@dconst1 = external global %struct.real_value, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.730 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.731 = private unnamed_addr constant [46 x i8] c"%<va_start%> used in function with fixed args\00", align 1
@.str.732 = private unnamed_addr constant [51 x i8] c"wrong number of arguments to function %<va_start%>\00", align 1
@.str.733 = private unnamed_addr constant [50 x i8] c"%<__builtin_next_arg%> called without an argument\00", align 1
@.str.734 = private unnamed_addr constant [61 x i8] c"wrong number of arguments to function %<__builtin_next_arg%>\00", align 1
@.str.735 = private unnamed_addr constant [57 x i8] c"second parameter of %<va_start%> not last named argument\00", align 1
@.str.736 = private unnamed_addr constant [96 x i8] c"undefined behaviour when second parameter of %<va_start%> is declared with %<register%> storage\00", align 1
@.str.737 = private unnamed_addr constant [7 x i8] c"memcpy\00", align 1
@libfunc_table = external local_unnamed_addr global [14 x ptr], align 16
@.str.738 = private unnamed_addr constant [7 x i8] c"memset\00", align 1
@.str.739 = private unnamed_addr constant [8 x i8] c"memmove\00", align 1
@.str.740 = private unnamed_addr constant [7 x i8] c"memcmp\00", align 1
@.str.741 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@switch.table.fold_fixed_mathfn = private unnamed_addr constant [12 x i32] [i32 111, i32 111, i32 111, i32 117, i32 117, i32 117, i32 153, i32 153, i32 153, i32 156, i32 156, i32 156], align 4
@switch.table.fold_builtin_memory_chk = private unnamed_addr constant [4 x ptr] [ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 330), ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 331), ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 332), ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 333)], align 8

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @is_builtin_name(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !447 {
  %2 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(11) @.str.718, i64 noundef 10) #19
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4, !prof !448

4:                                                ; preds = %1
  %5 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.719, i64 noundef 7) #19
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i8 [ 1, %1 ], [ %7, %4 ]
  ret i8 %9
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @is_builtin_fn(ptr nocapture noundef readonly %0) local_unnamed_addr #2 !prof !449 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 29
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 6144
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i8 [ 0, %1 ], [ %10, %5 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_object_alignment(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 !prof !450 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %0) #19, !range !451
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %69, label %12, !prof !452

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #20
  %13 = call ptr @get_inner_reference(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, i8 noundef zeroext 1) #21
  %14 = load i64, ptr %5, align 8, !tbaa !453
  %15 = icmp eq i64 %14, 0
  %16 = sub nsw i64 0, %14
  %17 = and i64 %14, %16
  %18 = trunc i64 %17 to i32
  %19 = call i32 @llvm.umin.i32(i32 %18, i32 %2)
  %20 = select i1 %15, i32 %2, i32 %19, !prof !457
  %21 = load ptr, ptr %6, align 8, !tbaa !458
  %22 = icmp eq ptr %21, null
  br i1 %22, label %67, label %23, !prof !460

23:                                               ; preds = %12, %56
  %24 = phi i32 [ %65, %56 ], [ %20, %12 ]
  %25 = phi ptr [ %36, %56 ], [ %21, %12 ]
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 63
  br i1 %28, label %29, label %34, !prof !461

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.tree_exp, ptr %25, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !462
  %32 = getelementptr inbounds %struct.tree_exp, ptr %25, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !462
  store ptr %33, ptr %6, align 8, !tbaa !458
  br label %34

34:                                               ; preds = %23, %29
  %35 = phi ptr [ %33, %29 ], [ %25, %23 ]
  %36 = phi ptr [ %31, %29 ], [ null, %23 ]
  %37 = call i32 @host_integerp(ptr noundef %35, i32 noundef 1) #21
  %38 = icmp eq i32 %37, 0
  %39 = load ptr, ptr %6, align 8, !tbaa !458
  br i1 %38, label %40, label %56, !prof !463

40:                                               ; preds = %34
  %41 = load i64, ptr %39, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 65
  br i1 %43, label %44, label %53, !prof !464

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.tree_exp, ptr %39, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !462
  %47 = call i32 @host_integerp(ptr noundef %46, i32 noundef 1) #21
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49, !prof !465

49:                                               ; preds = %44
  %50 = load ptr, ptr %6, align 8, !tbaa !458
  %51 = getelementptr inbounds %struct.tree_exp, ptr %50, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !462
  br label %56

53:                                               ; preds = %44, %40
  %54 = icmp ult i32 %24, 8
  br i1 %54, label %55, label %67, !prof !466

55:                                               ; preds = %53
  br label %67

56:                                               ; preds = %34, %49
  %57 = phi ptr [ %52, %49 ], [ %39, %34 ]
  %58 = call i64 @tree_low_cst(ptr noundef %57, i32 noundef 1) #21
  %59 = trunc i64 %58 to i32
  %60 = shl i32 %59, 3
  %61 = icmp eq i32 %60, 0
  %62 = sub i32 0, %60
  %63 = and i32 %60, %62
  %64 = call i32 @llvm.umin.i32(i32 %24, i32 %63)
  %65 = select i1 %61, i32 %24, i32 %64
  store ptr %36, ptr %6, align 8, !tbaa !458
  %66 = icmp eq ptr %36, null
  br i1 %66, label %67, label %23, !prof !467

67:                                               ; preds = %56, %12, %55, %53
  %68 = phi i32 [ 8, %53 ], [ %24, %55 ], [ %20, %12 ], [ %65, %56 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br label %69

69:                                               ; preds = %67, %3
  %70 = phi i32 [ %68, %67 ], [ %2, %3 ]
  %71 = phi ptr [ %13, %67 ], [ %0, %3 ]
  %72 = load i64, ptr %71, align 8
  %73 = and i64 %72, 65535
  %74 = icmp eq i64 %73, 33
  br i1 %74, label %75, label %80, !prof !468

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.tree_decl_common, ptr %71, i64 0, i32 5
  %77 = load ptr, ptr %76, align 8, !tbaa !462
  %78 = load i64, ptr %77, align 8
  %79 = and i64 %78, 65535
  br label %80

80:                                               ; preds = %75, %69
  %81 = phi i64 [ %79, %75 ], [ %73, %69 ]
  %82 = phi i64 [ %78, %75 ], [ %72, %69 ]
  %83 = phi ptr [ %77, %75 ], [ %71, %69 ]
  %84 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %81
  %85 = load i32, ptr %84, align 4, !tbaa !469
  %86 = icmp ne i32 %85, 3
  %87 = icmp eq i64 %81, 30
  %88 = or i1 %86, %87
  br i1 %88, label %93, label %89, !prof !471

89:                                               ; preds = %80
  %90 = getelementptr inbounds %struct.tree_decl_common, ptr %83, i64 0, i32 3
  %91 = load i32, ptr %90, align 8, !tbaa !462
  %92 = call i32 @llvm.umin.i32(i32 %70, i32 %91)
  br label %110

93:                                               ; preds = %80
  %94 = icmp eq i32 %85, 1
  br i1 %94, label %95, label %100, !prof !472

95:                                               ; preds = %93
  %96 = call i32 @ix86_constant_alignment(ptr noundef nonnull %83, i32 noundef %1) #21
  %97 = icmp ult i32 %70, %96
  br i1 %97, label %110, label %98, !prof !473

98:                                               ; preds = %95
  %99 = call i32 @ix86_constant_alignment(ptr noundef nonnull %83, i32 noundef %1) #21
  br label %110

100:                                              ; preds = %93
  %101 = trunc i64 %82 to i16
  switch i16 %101, label %108 [
    i16 118, label %102
    i16 47, label %102
  ], !prof !474

102:                                              ; preds = %100, %100
  %103 = getelementptr inbounds %struct.tree_common, ptr %83, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !462
  %105 = getelementptr inbounds %struct.tree_type, ptr %104, i64 0, i32 7
  %106 = load i32, ptr %105, align 8, !tbaa !462
  %107 = call i32 @llvm.umin.i32(i32 %106, i32 %70)
  br label %110

108:                                              ; preds = %100
  %109 = call i32 @llvm.umin.i32(i32 %70, i32 %1)
  br label %110

110:                                              ; preds = %98, %95, %108, %102, %89
  %111 = phi i32 [ %92, %89 ], [ %107, %102 ], [ %109, %108 ], [ %99, %98 ], [ %70, %95 ]
  %112 = call i32 @llvm.umin.i32(i32 %111, i32 %2)
  ret i32 %112
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !475 !PGOFuncName !476 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %4 [
    i16 42, label %5
    i16 41, label %5
    i16 45, label %5
    i16 46, label %5
    i16 118, label %5
    i16 43, label %5
    i16 44, label %5
  ], !prof !477

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: optsize
declare ptr @get_inner_reference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare i32 @ix86_constant_alignment(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @can_trust_pointer_alignment() local_unnamed_addr #6 !prof !478 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !469
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_tree_ter, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !479
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_pointer_alignment(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 !prof !478 {
  %3 = tail call zeroext i8 @can_trust_pointer_alignment() #19, !range !451
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %60, label %5, !prof !480

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !462
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %60 [
    i16 10, label %10
    i16 12, label %10
  ], !prof !481

10:                                               ; preds = %5, %5
  %11 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !462
  %13 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !462
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %1)
  br label %16

16:                                               ; preds = %54, %10
  %17 = phi ptr [ %55, %54 ], [ %0, %10 ]
  %18 = phi i32 [ %45, %54 ], [ %1, %10 ]
  %19 = phi i32 [ %22, %54 ], [ %15, %10 ]
  br label %20

20:                                               ; preds = %16, %32
  %21 = phi ptr [ %27, %32 ], [ %17, %16 ]
  %22 = phi i32 [ %37, %32 ], [ %19, %16 ]
  %23 = load i64, ptr %21, align 8
  %24 = trunc i64 %23 to i16
  switch i16 %24, label %60 [
    i16 116, label %25
    i16 113, label %25
    i16 66, label %38
    i16 121, label %56
  ], !prof !482

25:                                               ; preds = %20, %20
  %26 = getelementptr inbounds %struct.tree_exp, ptr %21, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !462
  %28 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !462
  %30 = load i64, ptr %29, align 8
  %31 = trunc i64 %30 to i16
  switch i16 %31, label %60 [
    i16 10, label %32
    i16 12, label %32
  ], !prof !483

32:                                               ; preds = %25, %25
  %33 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !462
  %35 = getelementptr inbounds %struct.tree_type, ptr %34, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !462
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 %18)
  br label %20

38:                                               ; preds = %20
  %39 = getelementptr inbounds %struct.tree_exp, ptr %21, i64 0, i32 3
  %40 = getelementptr inbounds %struct.tree_exp, ptr %21, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !462
  %42 = tail call i32 @host_integerp(ptr noundef %41, i32 noundef 1) #21
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %60, label %44, !prof !484

44:                                               ; preds = %38, %44
  %45 = phi i32 [ %53, %44 ], [ %18, %38 ]
  %46 = load ptr, ptr %40, align 8, !tbaa !462
  %47 = tail call i64 @tree_low_cst(ptr noundef %46, i32 noundef 1) #21
  %48 = lshr i32 %45, 3
  %49 = add nsw i32 %48, -1
  %50 = zext i32 %49 to i64
  %51 = and i64 %47, %50
  %52 = icmp eq i64 %51, 0
  %53 = lshr i32 %45, 1
  br i1 %52, label %54, label %44, !prof !485, !llvm.loop !486

54:                                               ; preds = %44
  %55 = load ptr, ptr %39, align 8, !tbaa !462
  br label %16

56:                                               ; preds = %20
  %57 = getelementptr inbounds %struct.tree_exp, ptr %21, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !462
  %59 = tail call i32 @get_object_alignment(ptr noundef %58, i32 noundef %22, i32 noundef %18) #19
  br label %60

60:                                               ; preds = %20, %25, %38, %5, %2, %56
  %61 = phi i32 [ %59, %56 ], [ 0, %2 ], [ 0, %5 ], [ %22, %38 ], [ %22, %25 ], [ %22, %20 ]
  ret i32 %61
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @c_strlen(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 !prof !488 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %4 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #21
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 56
  br i1 %7, label %8, label %27, !prof !489

8:                                                ; preds = %2
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %16, !prof !490

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !462
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65536
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %43, !prof !491

16:                                               ; preds = %10, %8
  %17 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !462
  %19 = tail call ptr @c_strlen(ptr noundef %18, i32 noundef %1) #19
  %20 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !462
  %22 = tail call ptr @c_strlen(ptr noundef %21, i32 noundef %1) #19
  %23 = tail call i32 @tree_int_cst_equal(ptr noundef %19, ptr noundef %22) #21
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %111

25:                                               ; preds = %16
  %26 = load i64, ptr %4, align 8
  br label %27

27:                                               ; preds = %25, %2
  %28 = phi i64 [ %26, %25 ], [ %5, %2 ]
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 52
  br i1 %30, label %31, label %43, !prof !492

31:                                               ; preds = %27
  %32 = icmp eq i32 %1, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !462
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 65536
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33, %31
  %40 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !462
  %42 = tail call ptr @c_strlen(ptr noundef %41, i32 noundef %1) #19
  br label %111

43:                                               ; preds = %10, %33, %27
  %44 = phi i64 [ 52, %33 ], [ %29, %27 ], [ 56, %10 ]
  %45 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !469
  %47 = add i32 %46, -4
  %48 = icmp ult i32 %47, 7
  br i1 %48, label %49, label %53, !prof !493

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !462
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %55, !prof !494

53:                                               ; preds = %43, %49
  %54 = load i32, ptr @input_location, align 4, !tbaa !469
  br label %55

55:                                               ; preds = %49, %53
  %56 = phi i32 [ %54, %53 ], [ %51, %49 ]
  %57 = call ptr @string_constant(ptr noundef nonnull %4, ptr noundef nonnull %3) #21
  %58 = icmp eq ptr %57, null
  br i1 %58, label %111, label %59, !prof !495

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.tree_string, ptr %57, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !462
  %62 = add i32 %61, -1
  %63 = getelementptr inbounds %struct.tree_string, ptr %57, i64 0, i32 2
  %64 = load ptr, ptr %3, align 8, !tbaa !458
  %65 = icmp eq ptr %64, null
  br i1 %65, label %93, label %66, !prof !496

66:                                               ; preds = %59
  %67 = load i64, ptr %64, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 23
  br i1 %69, label %87, label %70, !prof !497

70:                                               ; preds = %66
  %71 = icmp sgt i32 %61, 1
  br i1 %71, label %72, label %82

72:                                               ; preds = %70
  %73 = zext nneg i32 %62 to i64
  br label %77

74:                                               ; preds = %77
  %75 = add nuw nsw i64 %78, 1
  %76 = icmp eq i64 %75, %73
  br i1 %76, label %82, label %77, !llvm.loop !498

77:                                               ; preds = %72, %74
  %78 = phi i64 [ 0, %72 ], [ %75, %74 ]
  %79 = getelementptr inbounds i8, ptr %63, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !462
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %111, label %74

82:                                               ; preds = %74, %70
  %83 = sext i32 %62 to i64
  %84 = call ptr @size_int_kind(i64 noundef %83, i32 noundef 0) #21
  %85 = load ptr, ptr %3, align 8, !tbaa !458
  %86 = call ptr @size_diffop_loc(i32 noundef %56, ptr noundef %84, ptr noundef %85) #21
  br label %111

87:                                               ; preds = %66
  %88 = call i32 @host_integerp(ptr noundef nonnull %64, i32 noundef 0) #21
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %99, label %90, !prof !496

90:                                               ; preds = %87
  %91 = load ptr, ptr %3, align 8, !tbaa !458
  %92 = call i64 @tree_low_cst(ptr noundef %91, i32 noundef 0) #21
  br label %93

93:                                               ; preds = %59, %90
  %94 = phi i64 [ %92, %90 ], [ 0, %59 ]
  %95 = icmp slt i64 %94, 0
  %96 = sext i32 %62 to i64
  %97 = icmp sgt i64 %94, %96
  %98 = select i1 %95, i1 true, i1 %97
  br i1 %98, label %99, label %107, !prof !499

99:                                               ; preds = %87, %93
  %100 = load i64, ptr %57, align 8
  %101 = and i64 %100, 8388608
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %56, i32 noundef 0, ptr noundef nonnull @.str.720) #21
  %105 = load i64, ptr %57, align 8
  %106 = or i64 %105, 8388608
  store i64 %106, ptr %57, align 8
  br label %111

107:                                              ; preds = %93
  %108 = getelementptr inbounds i8, ptr %63, i64 %94
  %109 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %108) #19
  %110 = call ptr @size_int_kind(i64 noundef %109, i32 noundef 1) #21
  br label %111

111:                                              ; preds = %77, %99, %103, %82, %55, %16, %107, %39
  %112 = phi ptr [ %42, %39 ], [ %110, %107 ], [ %19, %16 ], [ null, %55 ], [ %86, %82 ], [ null, %103 ], [ null, %99 ], [ null, %77 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret ptr %112
}

; Function Attrs: optsize
declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @string_constant(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @size_diffop_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @warning_at(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @expand_builtin_setjmp_setup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !449 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %4 = load i32, ptr @setjmp_alias_set, align 4, !tbaa !469
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 @new_alias_set() #21
  store i32 %7, ptr @setjmp_alias_set, align 4, !tbaa !469
  br label %8

8:                                                ; preds = %6, %2
  %9 = tail call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef %0, i8 noundef zeroext 0) #21
  %10 = tail call ptr @force_operand(ptr noundef %9, ptr noundef null) #21
  %11 = tail call ptr @force_reg(i32 noundef 16, ptr noundef %10) #21
  %12 = tail call ptr @gen_rtx_MEM(i32 noundef 16, ptr noundef %11) #21
  %13 = load i32, ptr @setjmp_alias_set, align 4, !tbaa !469
  tail call void @set_mem_alias_set(ptr noundef %12, i32 noundef %13) #21
  %14 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 78), align 8, !tbaa !500
  %15 = tail call ptr %14() #21
  %16 = tail call ptr @emit_move_insn(ptr noundef %12, ptr noundef %15) #21
  %17 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 16), align 16, !tbaa !462
  %18 = zext i8 %17 to i64
  %19 = tail call ptr @plus_constant(ptr noundef %11, i64 noundef %18) #21
  %20 = tail call ptr @gen_rtx_MEM(i32 noundef 16, ptr noundef %19) #21
  %21 = load i32, ptr @setjmp_alias_set, align 4, !tbaa !469
  tail call void @set_mem_alias_set(ptr noundef %20, i32 noundef %21) #21
  %22 = tail call ptr @validize_mem(ptr noundef %20) #21
  %23 = tail call ptr @gen_rtx_fmt_u_stat(i32 noundef 44, i32 noundef 16, ptr noundef %1) #21
  %24 = tail call ptr @force_reg(i32 noundef 16, ptr noundef %23) #21
  %25 = tail call ptr @emit_move_insn(ptr noundef %22, ptr noundef %24) #21
  %26 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 16), align 16, !tbaa !462
  %27 = zext i8 %26 to i64
  %28 = shl nuw nsw i64 %27, 1
  %29 = tail call ptr @plus_constant(ptr noundef %11, i64 noundef %28) #21
  %30 = tail call ptr @gen_rtx_MEM(i32 noundef 16, ptr noundef %29) #21
  store ptr %30, ptr %3, align 8, !tbaa !458
  %31 = load i32, ptr @setjmp_alias_set, align 4, !tbaa !469
  tail call void @set_mem_alias_set(ptr noundef %30, i32 noundef %31) #21
  call void @emit_stack_save(i32 noundef 2, ptr noundef nonnull %3, ptr noundef null) #21
  %32 = load ptr, ptr @cfun, align 8, !tbaa !458
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 20
  %34 = load i32, ptr %33, align 8
  %35 = or i32 %34, 1310720
  store i32 %35, ptr %33, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  ret void
}

; Function Attrs: optsize
declare i32 @new_alias_set() local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @convert_memory_address_addr_space(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @force_reg(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @force_operand(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @set_mem_alias_set(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @validize_mem(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @gen_rtx_fmt_u_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @emit_stack_save(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @expand_builtin_setjmp_receiver(ptr noundef %0) local_unnamed_addr #3 !prof !449 {
  %2 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !458
  %3 = tail call ptr @emit_use(ptr noundef %2) #21
  %4 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 21), align 8, !tbaa !512
  %5 = load ptr, ptr @current_function_decl, align 8, !tbaa !458
  %6 = tail call ptr %4(ptr noundef %5, i8 noundef zeroext 1) #21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 37
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call ptr @emit_clobber(ptr noundef nonnull %6) #21
  br label %14

14:                                               ; preds = %12, %8, %1
  %15 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 7), align 8, !tbaa !458
  %16 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !458
  %17 = tail call ptr @emit_move_insn(ptr noundef %15, ptr noundef %16) #21
  %18 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !458
  %19 = tail call ptr @emit_clobber(ptr noundef %18) #21
  %20 = load i32, ptr @flag_pic, align 4, !tbaa !469
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = tail call ptr @gen_builtin_setjmp_receiver(ptr noundef %0) #21
  %24 = tail call ptr @emit_insn(ptr noundef %23) #21
  br label %25

25:                                               ; preds = %14, %22
  %26 = tail call ptr @gen_blockage() #21
  %27 = tail call ptr @emit_insn(ptr noundef %26) #21
  ret void
}

; Function Attrs: optsize
declare ptr @emit_use(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @emit_clobber(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @emit_insn(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @gen_builtin_setjmp_receiver(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @gen_blockage() local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @mathfn_built_in(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #7 !prof !449 {
  %3 = tail call fastcc ptr @mathfn_built_in_1(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 1) #19
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @mathfn_built_in_1(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #7 !prof !449 !PGOFuncName !513 {
  %4 = icmp eq i8 %2, 0
  %5 = select i1 %4, ptr @built_in_decls, ptr @implicit_built_in_decls
  switch i32 %1, label %106 [
    i32 0, label %88
    i32 1, label %88
    i32 5, label %88
    i32 2, label %6
    i32 3, label %6
    i32 4, label %6
    i32 6, label %7
    i32 7, label %7
    i32 11, label %7
    i32 8, label %8
    i32 9, label %8
    i32 10, label %8
    i32 12, label %9
    i32 16, label %9
    i32 20, label %9
    i32 13, label %10
    i32 14, label %10
    i32 15, label %10
    i32 17, label %11
    i32 18, label %11
    i32 19, label %11
    i32 21, label %12
    i32 22, label %12
    i32 23, label %12
    i32 24, label %13
    i32 25, label %13
    i32 26, label %13
    i32 285, label %14
    i32 286, label %14
    i32 287, label %14
    i32 27, label %15
    i32 28, label %15
    i32 29, label %15
    i32 30, label %16
    i32 31, label %16
    i32 35, label %16
    i32 32, label %17
    i32 33, label %17
    i32 34, label %17
    i32 36, label %18
    i32 37, label %18
    i32 38, label %18
    i32 39, label %19
    i32 43, label %19
    i32 44, label %19
    i32 40, label %20
    i32 41, label %20
    i32 42, label %20
    i32 45, label %21
    i32 52, label %21
    i32 53, label %21
    i32 46, label %22
    i32 47, label %22
    i32 48, label %22
    i32 49, label %23
    i32 50, label %23
    i32 51, label %23
    i32 54, label %24
    i32 55, label %24
    i32 56, label %24
    i32 57, label %25
    i32 58, label %25
    i32 59, label %25
    i32 60, label %26
    i32 61, label %26
    i32 62, label %26
    i32 63, label %27
    i32 64, label %27
    i32 65, label %27
    i32 66, label %28
    i32 67, label %28
    i32 68, label %28
    i32 69, label %29
    i32 70, label %29
    i32 71, label %29
    i32 72, label %30
    i32 73, label %30
    i32 74, label %30
    i32 75, label %31
    i32 76, label %31
    i32 77, label %31
    i32 78, label %32
    i32 79, label %32
    i32 80, label %32
    i32 81, label %33
    i32 82, label %33
    i32 83, label %33
    i32 84, label %34
    i32 85, label %34
    i32 86, label %34
    i32 87, label %35
    i32 88, label %35
    i32 89, label %35
    i32 90, label %36
    i32 91, label %36
    i32 92, label %36
    i32 93, label %37
    i32 94, label %37
    i32 95, label %37
    i32 96, label %38
    i32 97, label %38
    i32 98, label %38
    i32 469, label %39
    i32 470, label %39
    i32 471, label %39
    i32 102, label %40
    i32 103, label %40
    i32 104, label %40
    i32 105, label %41
    i32 106, label %41
    i32 107, label %41
    i32 108, label %42
    i32 109, label %42
    i32 110, label %42
    i32 111, label %43
    i32 112, label %43
    i32 113, label %43
    i32 114, label %44
    i32 115, label %44
    i32 116, label %44
    i32 117, label %45
    i32 118, label %45
    i32 119, label %45
    i32 120, label %46
    i32 121, label %46
    i32 122, label %46
    i32 123, label %47
    i32 124, label %47
    i32 125, label %47
    i32 126, label %48
    i32 127, label %48
    i32 128, label %48
    i32 129, label %49
    i32 130, label %49
    i32 131, label %49
    i32 132, label %50
    i32 133, label %50
    i32 134, label %50
    i32 135, label %51
    i32 136, label %51
    i32 137, label %51
    i32 138, label %52
    i32 151, label %52
    i32 152, label %52
    i32 139, label %53
    i32 140, label %53
    i32 141, label %53
    i32 142, label %54
    i32 143, label %54
    i32 144, label %54
    i32 145, label %55
    i32 146, label %55
    i32 147, label %55
    i32 148, label %56
    i32 149, label %56
    i32 150, label %56
    i32 153, label %57
    i32 154, label %57
    i32 155, label %57
    i32 156, label %58
    i32 157, label %58
    i32 158, label %58
    i32 159, label %59
    i32 160, label %59
    i32 161, label %59
    i32 162, label %60
    i32 163, label %60
    i32 164, label %60
    i32 168, label %61
    i32 169, label %61
    i32 170, label %61
    i32 171, label %62
    i32 172, label %62
    i32 173, label %62
    i32 174, label %63
    i32 175, label %63
    i32 176, label %63
    i32 177, label %64
    i32 178, label %64
    i32 179, label %64
    i32 180, label %65
    i32 184, label %65
    i32 188, label %65
    i32 185, label %66
    i32 186, label %66
    i32 187, label %66
    i32 181, label %67
    i32 182, label %67
    i32 183, label %67
    i32 189, label %68
    i32 190, label %68
    i32 191, label %68
    i32 192, label %69
    i32 193, label %69
    i32 194, label %69
    i32 195, label %70
    i32 196, label %70
    i32 197, label %70
    i32 198, label %71
    i32 199, label %71
    i32 200, label %71
    i32 201, label %72
    i32 202, label %72
    i32 203, label %72
    i32 204, label %73
    i32 205, label %73
    i32 206, label %73
    i32 207, label %74
    i32 208, label %74
    i32 209, label %74
    i32 210, label %75
    i32 211, label %75
    i32 212, label %75
    i32 216, label %76
    i32 217, label %76
    i32 218, label %76
    i32 219, label %77
    i32 223, label %77
    i32 227, label %77
    i32 220, label %78
    i32 221, label %78
    i32 222, label %78
    i32 224, label %79
    i32 225, label %79
    i32 226, label %79
    i32 228, label %80
    i32 229, label %80
    i32 230, label %80
    i32 231, label %81
    i32 232, label %81
    i32 236, label %81
    i32 233, label %82
    i32 234, label %82
    i32 235, label %82
    i32 237, label %83
    i32 238, label %83
    i32 239, label %83
    i32 240, label %84
    i32 241, label %84
    i32 242, label %84
    i32 243, label %85
    i32 244, label %85
    i32 245, label %85
    i32 246, label %86
    i32 247, label %86
    i32 248, label %86
    i32 249, label %87
    i32 250, label %87
    i32 251, label %87
  ]

6:                                                ; preds = %3, %3, %3
  br label %88

7:                                                ; preds = %3, %3, %3
  br label %88

8:                                                ; preds = %3, %3, %3
  br label %88

9:                                                ; preds = %3, %3, %3
  br label %88

10:                                               ; preds = %3, %3, %3
  br label %88

11:                                               ; preds = %3, %3, %3
  br label %88

12:                                               ; preds = %3, %3, %3
  br label %88

13:                                               ; preds = %3, %3, %3
  br label %88

14:                                               ; preds = %3, %3, %3
  br label %88

15:                                               ; preds = %3, %3, %3
  br label %88

16:                                               ; preds = %3, %3, %3
  br label %88

17:                                               ; preds = %3, %3, %3
  br label %88

18:                                               ; preds = %3, %3, %3
  br label %88

19:                                               ; preds = %3, %3, %3
  br label %88

20:                                               ; preds = %3, %3, %3
  br label %88

21:                                               ; preds = %3, %3, %3
  br label %88

22:                                               ; preds = %3, %3, %3
  br label %88

23:                                               ; preds = %3, %3, %3
  br label %88

24:                                               ; preds = %3, %3, %3
  br label %88

25:                                               ; preds = %3, %3, %3
  br label %88

26:                                               ; preds = %3, %3, %3
  br label %88

27:                                               ; preds = %3, %3, %3
  br label %88

28:                                               ; preds = %3, %3, %3
  br label %88

29:                                               ; preds = %3, %3, %3
  br label %88

30:                                               ; preds = %3, %3, %3
  br label %88

31:                                               ; preds = %3, %3, %3
  br label %88

32:                                               ; preds = %3, %3, %3
  br label %88

33:                                               ; preds = %3, %3, %3
  br label %88

34:                                               ; preds = %3, %3, %3
  br label %88

35:                                               ; preds = %3, %3, %3
  br label %88

36:                                               ; preds = %3, %3, %3
  br label %88

37:                                               ; preds = %3, %3, %3
  br label %88

38:                                               ; preds = %3, %3, %3
  br label %88

39:                                               ; preds = %3, %3, %3
  br label %88

40:                                               ; preds = %3, %3, %3
  br label %88

41:                                               ; preds = %3, %3, %3
  br label %88

42:                                               ; preds = %3, %3, %3
  br label %88

43:                                               ; preds = %3, %3, %3
  br label %88

44:                                               ; preds = %3, %3, %3
  br label %88

45:                                               ; preds = %3, %3, %3
  br label %88

46:                                               ; preds = %3, %3, %3
  br label %88

47:                                               ; preds = %3, %3, %3
  br label %88

48:                                               ; preds = %3, %3, %3
  br label %88

49:                                               ; preds = %3, %3, %3
  br label %88

50:                                               ; preds = %3, %3, %3
  br label %88

51:                                               ; preds = %3, %3, %3
  br label %88

52:                                               ; preds = %3, %3, %3
  br label %88

53:                                               ; preds = %3, %3, %3
  br label %88

54:                                               ; preds = %3, %3, %3
  br label %88

55:                                               ; preds = %3, %3, %3
  br label %88

56:                                               ; preds = %3, %3, %3
  br label %88

57:                                               ; preds = %3, %3, %3
  br label %88

58:                                               ; preds = %3, %3, %3
  br label %88

59:                                               ; preds = %3, %3, %3
  br label %88

60:                                               ; preds = %3, %3, %3
  br label %88

61:                                               ; preds = %3, %3, %3
  br label %88

62:                                               ; preds = %3, %3, %3
  br label %88

63:                                               ; preds = %3, %3, %3
  br label %88

64:                                               ; preds = %3, %3, %3
  br label %88

65:                                               ; preds = %3, %3, %3
  br label %88

66:                                               ; preds = %3, %3, %3
  br label %88

67:                                               ; preds = %3, %3, %3
  br label %88

68:                                               ; preds = %3, %3, %3
  br label %88

69:                                               ; preds = %3, %3, %3
  br label %88

70:                                               ; preds = %3, %3, %3
  br label %88

71:                                               ; preds = %3, %3, %3
  br label %88

72:                                               ; preds = %3, %3, %3
  br label %88

73:                                               ; preds = %3, %3, %3
  br label %88

74:                                               ; preds = %3, %3, %3
  br label %88

75:                                               ; preds = %3, %3, %3
  br label %88

76:                                               ; preds = %3, %3, %3
  br label %88

77:                                               ; preds = %3, %3, %3
  br label %88

78:                                               ; preds = %3, %3, %3
  br label %88

79:                                               ; preds = %3, %3, %3
  br label %88

80:                                               ; preds = %3, %3, %3
  br label %88

81:                                               ; preds = %3, %3, %3
  br label %88

82:                                               ; preds = %3, %3, %3
  br label %88

83:                                               ; preds = %3, %3, %3
  br label %88

84:                                               ; preds = %3, %3, %3
  br label %88

85:                                               ; preds = %3, %3, %3
  br label %88

86:                                               ; preds = %3, %3, %3
  br label %88

87:                                               ; preds = %3, %3, %3
  br label %88

88:                                               ; preds = %3, %3, %3, %87, %86, %85, %84, %83, %82, %81, %80, %79, %78, %77, %76, %75, %74, %73, %72, %71, %70, %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6
  %89 = phi i64 [ 249, %87 ], [ 246, %86 ], [ 243, %85 ], [ 240, %84 ], [ 237, %83 ], [ 233, %82 ], [ 231, %81 ], [ 228, %80 ], [ 224, %79 ], [ 220, %78 ], [ 219, %77 ], [ 216, %76 ], [ 210, %75 ], [ 207, %74 ], [ 204, %73 ], [ 201, %72 ], [ 198, %71 ], [ 195, %70 ], [ 192, %69 ], [ 189, %68 ], [ 181, %67 ], [ 185, %66 ], [ 180, %65 ], [ 177, %64 ], [ 174, %63 ], [ 171, %62 ], [ 168, %61 ], [ 162, %60 ], [ 159, %59 ], [ 156, %58 ], [ 153, %57 ], [ 148, %56 ], [ 145, %55 ], [ 142, %54 ], [ 139, %53 ], [ 138, %52 ], [ 135, %51 ], [ 132, %50 ], [ 129, %49 ], [ 126, %48 ], [ 123, %47 ], [ 120, %46 ], [ 117, %45 ], [ 114, %44 ], [ 111, %43 ], [ 108, %42 ], [ 105, %41 ], [ 102, %40 ], [ 469, %39 ], [ 96, %38 ], [ 93, %37 ], [ 90, %36 ], [ 87, %35 ], [ 84, %34 ], [ 81, %33 ], [ 78, %32 ], [ 75, %31 ], [ 72, %30 ], [ 69, %29 ], [ 66, %28 ], [ 63, %27 ], [ 60, %26 ], [ 57, %25 ], [ 54, %24 ], [ 49, %23 ], [ 46, %22 ], [ 45, %21 ], [ 40, %20 ], [ 39, %19 ], [ 36, %18 ], [ 32, %17 ], [ 30, %16 ], [ 27, %15 ], [ 285, %14 ], [ 24, %13 ], [ 21, %12 ], [ 17, %11 ], [ 13, %10 ], [ 12, %9 ], [ 8, %8 ], [ 6, %7 ], [ 2, %6 ], [ 0, %3 ], [ 0, %3 ], [ 0, %3 ]
  %90 = phi i64 [ 250, %87 ], [ 247, %86 ], [ 244, %85 ], [ 241, %84 ], [ 238, %83 ], [ 234, %82 ], [ 232, %81 ], [ 229, %80 ], [ 225, %79 ], [ 221, %78 ], [ 223, %77 ], [ 217, %76 ], [ 211, %75 ], [ 208, %74 ], [ 205, %73 ], [ 202, %72 ], [ 199, %71 ], [ 196, %70 ], [ 193, %69 ], [ 190, %68 ], [ 182, %67 ], [ 186, %66 ], [ 184, %65 ], [ 178, %64 ], [ 175, %63 ], [ 172, %62 ], [ 169, %61 ], [ 163, %60 ], [ 160, %59 ], [ 157, %58 ], [ 154, %57 ], [ 149, %56 ], [ 146, %55 ], [ 143, %54 ], [ 140, %53 ], [ 151, %52 ], [ 136, %51 ], [ 133, %50 ], [ 130, %49 ], [ 127, %48 ], [ 124, %47 ], [ 121, %46 ], [ 118, %45 ], [ 115, %44 ], [ 112, %43 ], [ 109, %42 ], [ 106, %41 ], [ 103, %40 ], [ 470, %39 ], [ 97, %38 ], [ 94, %37 ], [ 91, %36 ], [ 88, %35 ], [ 85, %34 ], [ 82, %33 ], [ 79, %32 ], [ 76, %31 ], [ 73, %30 ], [ 70, %29 ], [ 67, %28 ], [ 64, %27 ], [ 61, %26 ], [ 58, %25 ], [ 55, %24 ], [ 50, %23 ], [ 47, %22 ], [ 52, %21 ], [ 41, %20 ], [ 43, %19 ], [ 37, %18 ], [ 33, %17 ], [ 31, %16 ], [ 28, %15 ], [ 286, %14 ], [ 25, %13 ], [ 22, %12 ], [ 18, %11 ], [ 14, %10 ], [ 16, %9 ], [ 9, %8 ], [ 7, %7 ], [ 3, %6 ], [ 1, %3 ], [ 1, %3 ], [ 1, %3 ]
  %91 = phi i64 [ 251, %87 ], [ 248, %86 ], [ 245, %85 ], [ 242, %84 ], [ 239, %83 ], [ 235, %82 ], [ 236, %81 ], [ 230, %80 ], [ 226, %79 ], [ 222, %78 ], [ 227, %77 ], [ 218, %76 ], [ 212, %75 ], [ 209, %74 ], [ 206, %73 ], [ 203, %72 ], [ 200, %71 ], [ 197, %70 ], [ 194, %69 ], [ 191, %68 ], [ 183, %67 ], [ 187, %66 ], [ 188, %65 ], [ 179, %64 ], [ 176, %63 ], [ 173, %62 ], [ 170, %61 ], [ 164, %60 ], [ 161, %59 ], [ 158, %58 ], [ 155, %57 ], [ 150, %56 ], [ 147, %55 ], [ 144, %54 ], [ 141, %53 ], [ 152, %52 ], [ 137, %51 ], [ 134, %50 ], [ 131, %49 ], [ 128, %48 ], [ 125, %47 ], [ 122, %46 ], [ 119, %45 ], [ 116, %44 ], [ 113, %43 ], [ 110, %42 ], [ 107, %41 ], [ 104, %40 ], [ 471, %39 ], [ 98, %38 ], [ 95, %37 ], [ 92, %36 ], [ 89, %35 ], [ 86, %34 ], [ 83, %33 ], [ 80, %32 ], [ 77, %31 ], [ 74, %30 ], [ 71, %29 ], [ 68, %28 ], [ 65, %27 ], [ 62, %26 ], [ 59, %25 ], [ 56, %24 ], [ 51, %23 ], [ 48, %22 ], [ 53, %21 ], [ 42, %20 ], [ 44, %19 ], [ 38, %18 ], [ 34, %17 ], [ 35, %16 ], [ 29, %15 ], [ 287, %14 ], [ 26, %13 ], [ 23, %12 ], [ 19, %11 ], [ 15, %10 ], [ 20, %9 ], [ 10, %8 ], [ 11, %7 ], [ 4, %6 ], [ 5, %3 ], [ 5, %3 ], [ 5, %3 ]
  %92 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %93 = load ptr, ptr %92, align 8, !tbaa !462
  %94 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16, !tbaa !458
  %95 = icmp eq ptr %93, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %88
  %97 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !458
  %98 = icmp eq ptr %93, %97
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 33), align 8, !tbaa !458
  %101 = icmp eq ptr %93, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %99, %96, %88
  %103 = phi i64 [ %89, %88 ], [ %90, %96 ], [ %91, %99 ]
  %104 = getelementptr inbounds ptr, ptr %5, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !458
  br label %106

106:                                              ; preds = %102, %99, %3
  %107 = phi ptr [ null, %3 ], [ null, %99 ], [ %105, %102 ]
  ret ptr %107
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @builtin_strncpy_read_str(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #3 !prof !514 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #19
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %8, !prof !515

6:                                                ; preds = %3
  %7 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !458
  br label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, ptr %0, i64 %1
  %10 = tail call fastcc ptr @c_readstr(ptr noundef %9, i32 noundef %2) #19
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi ptr [ %7, %6 ], [ %10, %8 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_readstr(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !514 !PGOFuncName !516 {
  %3 = alloca [2 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !462
  %7 = icmp eq i8 %6, 2
  br i1 %7, label %9, label %8, !prof !517

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.721, i32 noundef 553, ptr noundef nonnull @.str.722) #21
  br label %9

9:                                                ; preds = %2, %8
  %10 = getelementptr inbounds [2 x i64], ptr %3, i64 0, i64 1
  %11 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %12 = load i8, ptr %11, align 1, !tbaa !462
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %41, label %14, !prof !518

14:                                               ; preds = %9, %25
  %15 = phi i64 [ %34, %25 ], [ 0, %9 ]
  %16 = phi i64 [ %26, %25 ], [ 1, %9 ]
  %17 = icmp ult i64 %15, 17
  br i1 %17, label %19, label %18, !prof !491

18:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.721, i32 noundef 567, ptr noundef nonnull @.str.722) #21
  br label %19

19:                                               ; preds = %14, %18
  %20 = icmp eq i64 %16, 0
  br i1 %20, label %25, label %21, !prof !519

21:                                               ; preds = %19
  %22 = getelementptr inbounds i8, ptr %0, i64 %15
  %23 = load i8, ptr %22, align 1, !tbaa !462
  %24 = zext i8 %23 to i64
  br label %25

25:                                               ; preds = %21, %19
  %26 = phi i64 [ %24, %21 ], [ 0, %19 ]
  %27 = shl nuw nsw i64 %15, 3
  %28 = and i64 %27, 56
  %29 = shl nuw i64 %26, %28
  %30 = lshr i64 %15, 3
  %31 = getelementptr inbounds [2 x i64], ptr %3, i64 0, i64 %30
  %32 = load i64, ptr %31, align 8, !tbaa !453
  %33 = or i64 %32, %29
  store i64 %33, ptr %31, align 8, !tbaa !453
  %34 = add nuw nsw i64 %15, 1
  %35 = load i8, ptr %11, align 1, !tbaa !462
  %36 = zext i8 %35 to i64
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %14, label %38, !prof !520, !llvm.loop !521

38:                                               ; preds = %25
  %39 = load i64, ptr %3, align 16, !tbaa !453
  %40 = load i64, ptr %10, align 8, !tbaa !453
  br label %41

41:                                               ; preds = %38, %9
  %42 = phi i64 [ %40, %38 ], [ 0, %9 ]
  %43 = phi i64 [ %39, %38 ], [ 0, %9 ]
  %44 = tail call ptr @immed_double_const(i64 noundef %43, i64 noundef %42, i32 noundef %1) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  ret ptr %44
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @immed_double_const(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @builtin_memset_read_str(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #3 !prof !449 {
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !462
  %7 = zext i8 %6 to i64
  %8 = alloca i8, i64 %7, align 16
  %9 = load i8, ptr %0, align 1, !tbaa !462
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %8, i8 %9, i64 %7, i1 false)
  %10 = call fastcc ptr @c_readstr(ptr noundef nonnull %8, i32 noundef %2) #19
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_builtin_saveregs() local_unnamed_addr #3 !prof !449 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 3), align 8, !tbaa !522
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  tail call void @start_sequence() #21
  %4 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 6), align 8, !tbaa !531
  %5 = tail call ptr %4() #21
  %6 = tail call ptr @get_insns() #21
  tail call void @end_sequence() #21
  store ptr %5, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 3), align 8, !tbaa !522
  tail call void @push_topmost_sequence() #21
  %7 = tail call ptr @entry_of_function() #21
  %8 = tail call ptr @emit_insn_after(ptr noundef %6, ptr noundef %7) #21
  tail call void @pop_topmost_sequence() #21
  br label %9

9:                                                ; preds = %0, %3
  %10 = phi ptr [ %5, %3 ], [ %1, %0 ]
  ret ptr %10
}

; Function Attrs: optsize
declare void @start_sequence() local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #5

; Function Attrs: optsize
declare void @end_sequence() local_unnamed_addr #5

; Function Attrs: optsize
declare void @push_topmost_sequence() local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @entry_of_function() local_unnamed_addr #5

; Function Attrs: optsize
declare void @pop_topmost_sequence() local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @std_build_builtin_va_list() local_unnamed_addr #6 !prof !449 {
  %1 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !458
  ret ptr %1
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @std_fn_abi_va_list(ptr nocapture noundef readnone %0) local_unnamed_addr #6 !prof !449 {
  %2 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 44), align 16, !tbaa !458
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @std_canonical_va_list_type(ptr nocapture noundef readonly %0) local_unnamed_addr #7 !prof !532 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %13 [
    i16 47, label %4
    i16 48, label %4
    i16 49, label %4
    i16 10, label %7
    i16 12, label %7
  ], !prof !533

4:                                                ; preds = %1, %1, %1
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !462
  br label %13

7:                                                ; preds = %1, %1
  %8 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !462
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %13 [
    i16 10, label %12
    i16 12, label %12
  ], !prof !534

12:                                               ; preds = %7, %7
  br label %13

13:                                               ; preds = %7, %1, %12, %4
  %14 = phi ptr [ %6, %4 ], [ %9, %12 ], [ %0, %1 ], [ %0, %7 ]
  %15 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 44), align 16
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i16
  switch i16 %17, label %31 [
    i16 16, label %18
    i16 15, label %21
  ], !prof !535

18:                                               ; preds = %13
  %19 = load i64, ptr %14, align 8
  %20 = trunc i64 %19 to i16
  switch i16 %20, label %31 [
    i16 10, label %27
    i16 12, label %27
  ]

21:                                               ; preds = %13
  %22 = load i64, ptr %14, align 8
  %23 = trunc i64 %22 to i16
  switch i16 %23, label %31 [
    i16 15, label %24
    i16 10, label %24
    i16 12, label %24
  ]

24:                                               ; preds = %21, %21, %21
  %25 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !462
  br label %27

27:                                               ; preds = %18, %18, %24
  %28 = phi ptr [ %26, %24 ], [ %15, %18 ], [ %15, %18 ]
  %29 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !462
  br label %31

31:                                               ; preds = %27, %13, %18, %21
  %32 = phi ptr [ %15, %21 ], [ %15, %18 ], [ %15, %13 ], [ %28, %27 ]
  %33 = phi ptr [ %14, %21 ], [ %14, %18 ], [ %14, %13 ], [ %30, %27 ]
  %34 = getelementptr inbounds %struct.tree_type, ptr %32, i64 0, i32 16
  %35 = load ptr, ptr %34, align 8, !tbaa !462
  %36 = getelementptr inbounds %struct.tree_type, ptr %33, i64 0, i32 16
  %37 = load ptr, ptr %36, align 8, !tbaa !462
  %38 = icmp eq ptr %35, %37
  %39 = select i1 %38, ptr %15, ptr null, !prof !536
  ret ptr %39
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @std_expand_builtin_va_start(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !449 {
  %3 = tail call fastcc ptr @expand_expr(ptr noundef %0, ptr noundef null, i32 noundef 5) #19
  tail call void @convert_move(ptr noundef %3, ptr noundef %1, i32 noundef 0) #21
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_expr(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 !prof !449 !PGOFuncName !537 {
  %4 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef %2, ptr noundef null) #21
  ret ptr %4
}

; Function Attrs: optsize
declare void @convert_move(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @std_gimplify_va_arg_expr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 !prof !532 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 14
  br i1 %8, label %9, label %11, !prof !538

9:                                                ; preds = %4
  %10 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #21
  br label %16

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  br label %16

16:                                               ; preds = %11, %9
  %17 = phi i32 [ %10, %9 ], [ %15, %11 ]
  %18 = tail call zeroext i8 @pass_by_reference(ptr noundef null, i32 noundef %17, ptr noundef nonnull %1, i8 noundef zeroext 0) #21
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20, !prof !536

20:                                               ; preds = %16
  %21 = tail call ptr @build_pointer_type(ptr noundef nonnull %1) #21
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi ptr [ %21, %20 ], [ %1, %16 ]
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 14
  br i1 %26, label %27, label %29, !prof !538

27:                                               ; preds = %22
  %28 = tail call i32 @vector_type_mode(ptr noundef nonnull %23) #21
  br label %34

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = lshr i32 %31, 16
  %33 = and i32 %32, 255
  br label %34

34:                                               ; preds = %29, %27
  %35 = phi i32 [ %28, %27 ], [ %33, %29 ]
  %36 = tail call i32 @ix86_function_arg_boundary(i32 noundef %35, ptr noundef nonnull %23) #21
  %37 = sext i32 %36 to i64
  %38 = tail call i64 @llvm.umin.i64(i64 %37, i64 2147483648)
  %39 = lshr i64 %38, 3
  %40 = tail call ptr @get_initialized_tmp_var(ptr noundef %0, ptr noundef %2, ptr noundef null) #21
  %41 = icmp ugt i32 %36, 39
  br i1 %41, label %42, label %64, !prof !538

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !462
  %45 = tail call i32 @integer_zerop(ptr noundef %44) #21
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !462
  %50 = add nsw i64 %39, -1
  %51 = tail call ptr @size_int_kind(i64 noundef %50, i32 noundef 0) #21
  %52 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef %49, ptr noundef %40, ptr noundef %51) #21
  %53 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %49, ptr noundef %40, ptr noundef %52) #21
  tail call void @gimplify_and_add(ptr noundef %53, ptr noundef %2) #21
  %54 = load ptr, ptr @sizetype_tab, align 16, !tbaa !458
  %55 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %54, ptr noundef %40) #21
  %56 = load ptr, ptr %48, align 8, !tbaa !462
  %57 = load ptr, ptr @sizetype_tab, align 16, !tbaa !458
  %58 = sub nsw i64 0, %39
  %59 = tail call ptr @size_int_kind(i64 noundef %58, i32 noundef 0) #21
  %60 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 89, ptr noundef %57, ptr noundef %55, ptr noundef %59) #21
  %61 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %56, ptr noundef %60) #21
  %62 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %56, ptr noundef %40, ptr noundef %61) #21
  tail call void @gimplify_and_add(ptr noundef %62, ptr noundef %2) #21
  %63 = and i64 %38, 4294967288
  br label %64

64:                                               ; preds = %34, %42, %47
  %65 = phi i64 [ %63, %47 ], [ 32, %42 ], [ 32, %34 ]
  %66 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 7
  %67 = load i32, ptr %66, align 8, !tbaa !462
  %68 = zext i32 %67 to i64
  %69 = icmp ult i64 %65, %68
  br i1 %69, label %70, label %74, !prof !539

70:                                               ; preds = %64
  %71 = tail call ptr @build_variant_type_copy(ptr noundef nonnull %23) #21
  %72 = trunc i64 %65 to i32
  %73 = getelementptr inbounds %struct.tree_type, ptr %71, i64 0, i32 7
  store i32 %72, ptr %73, align 8, !tbaa !462
  br label %74

74:                                               ; preds = %70, %64
  %75 = phi ptr [ %71, %70 ], [ %23, %64 ]
  %76 = tail call ptr @size_in_bytes(ptr noundef nonnull %75) #21
  %77 = tail call ptr @round_up_loc(i32 noundef 0, ptr noundef %76, i32 noundef 4) #21
  store ptr %77, ptr %5, align 8, !tbaa !458
  %78 = call i32 @gimplify_expr(ptr noundef nonnull %5, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #21
  %79 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !462
  %81 = load ptr, ptr %5, align 8, !tbaa !458
  %82 = call ptr @build2_stat(i32 noundef 66, ptr noundef %80, ptr noundef %40, ptr noundef %81) #21
  %83 = load ptr, ptr %79, align 8, !tbaa !462
  %84 = call ptr @build2_stat(i32 noundef 53, ptr noundef %83, ptr noundef %0, ptr noundef %82) #21
  call void @gimplify_and_add(ptr noundef %84, ptr noundef %2) #21
  %85 = call ptr @build_pointer_type(ptr noundef nonnull %75) #21
  %86 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %85, ptr noundef %40) #21
  br i1 %19, label %89, label %87, !prof !536

87:                                               ; preds = %74
  %88 = call ptr @build_va_arg_indirect_ref(ptr noundef %86) #19
  br label %89

89:                                               ; preds = %87, %74
  %90 = phi ptr [ %88, %87 ], [ %86, %74 ]
  %91 = call ptr @build_va_arg_indirect_ref(ptr noundef %90) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  ret ptr %91
}

; Function Attrs: optsize
declare zeroext i8 @pass_by_reference(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @ix86_function_arg_boundary(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @get_initialized_tmp_var(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @gimplify_and_add(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @build_variant_type_copy(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @size_in_bytes(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @round_up_loc(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @gimplify_expr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @is_gimple_val(ptr noundef) #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_va_arg_indirect_ref(ptr noundef %0) local_unnamed_addr #3 !prof !532 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !469
  %6 = add i32 %5, -4
  %7 = icmp ult i32 %6, 7
  br i1 %7, label %8, label %11, !prof !540

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !462
  br label %11

11:                                               ; preds = %1, %8
  %12 = phi i32 [ %10, %8 ], [ 0, %1 ]
  %13 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef %12, ptr noundef nonnull %0) #21
  %14 = load i32, ptr @flag_mudflap, align 4, !tbaa !469
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16, !prof !536

16:                                               ; preds = %11
  %17 = tail call ptr @mf_mark(ptr noundef %13) #21
  br label %18

18:                                               ; preds = %16, %11
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @build_fold_indirect_ref_loc(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @mf_mark(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @gimplify_va_arg_expr(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !532 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %5 = load ptr, ptr %0, align 8, !tbaa !458
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !462
  store ptr %7, ptr %4, align 8, !tbaa !458
  %8 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !462
  %10 = load i64, ptr %5, align 8
  %11 = and i64 %10, 65535
  %12 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !469
  %14 = add i32 %13, -4
  %15 = icmp ult i32 %14, 7
  br i1 %15, label %16, label %19, !prof !540

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !462
  br label %19

19:                                               ; preds = %3, %16
  %20 = phi i32 [ %18, %16 ], [ 0, %3 ]
  %21 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !462
  %23 = load ptr, ptr @global_trees, align 16, !tbaa !458
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %71, label %25, !prof !538

25:                                               ; preds = %19
  %26 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 71), align 8, !tbaa !541
  %27 = tail call ptr %26(ptr noundef %22) #21
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30, !prof !538

29:                                               ; preds = %25
  tail call void (i32, ptr, ...) @error_at(i32 noundef %20, ptr noundef nonnull @.str.723) #21
  br label %71

30:                                               ; preds = %25
  %31 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 6), align 8, !tbaa !542
  %32 = tail call ptr %31(ptr noundef %9) #21
  %33 = icmp eq ptr %32, %9
  br i1 %33, label %46, label %34, !prof !536

34:                                               ; preds = %30
  %35 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %20, i32 noundef 0, ptr noundef nonnull @.str.724, ptr noundef %9, ptr noundef %32) #21
  %36 = load i1, ptr @gimplify_va_arg_expr.gave_help, align 1
  %37 = icmp eq i8 %35, 0
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i1 true, ptr @gimplify_va_arg_expr.gave_help, align 1
  tail call void (i32, ptr, ...) @inform(i32 noundef %20, ptr noundef nonnull @.str.725, ptr noundef %32, ptr noundef %9) #21
  br label %41

40:                                               ; preds = %34
  br i1 %37, label %42, label %41

41:                                               ; preds = %39, %40
  tail call void (i32, ptr, ...) @inform(i32 noundef %20, ptr noundef nonnull @.str.726) #21
  br label %42

42:                                               ; preds = %41, %40
  tail call void @gimplify_and_add(ptr noundef nonnull %7, ptr noundef %1) #21
  %43 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 509), align 8, !tbaa !458
  %44 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %20, ptr noundef %43, i32 noundef 0) #19
  tail call void @gimplify_and_add(ptr noundef %44, ptr noundef %1) #21
  %45 = tail call fastcc ptr @dummy_object(ptr noundef %9) #19
  store ptr %45, ptr %0, align 8, !tbaa !458
  br label %71

46:                                               ; preds = %30
  %47 = load i64, ptr %27, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 15
  br i1 %49, label %50, label %63, !prof !538

50:                                               ; preds = %46
  %51 = load ptr, ptr %21, align 8, !tbaa !462
  %52 = load i64, ptr %51, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 15
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !462
  %58 = tail call ptr @build_pointer_type(ptr noundef %57) #21
  %59 = tail call ptr @build_fold_addr_expr_loc(i32 noundef %20, ptr noundef nonnull %7) #21
  %60 = tail call ptr @fold_convert_loc(i32 noundef %20, ptr noundef %58, ptr noundef %59) #21
  store ptr %60, ptr %4, align 8, !tbaa !458
  br label %61

61:                                               ; preds = %55, %50
  %62 = call i32 @gimplify_expr(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #21
  br label %65

63:                                               ; preds = %46
  %64 = call i32 @gimplify_expr(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_min_lval, i32 noundef 2) #21
  br label %65

65:                                               ; preds = %63, %61
  %66 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 73), align 8, !tbaa !550
  %67 = icmp eq ptr %66, null
  br i1 %67, label %71, label %68, !prof !538

68:                                               ; preds = %65
  %69 = load ptr, ptr %4, align 8, !tbaa !458
  %70 = call ptr %66(ptr noundef %69, ptr noundef %9, ptr noundef %1, ptr noundef %2) #21
  store ptr %70, ptr %0, align 8, !tbaa !458
  br label %71

71:                                               ; preds = %65, %19, %68, %42, %29
  %72 = phi i32 [ -2, %29 ], [ 1, %42 ], [ 0, %68 ], [ -2, %19 ], [ 1, %65 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  ret i32 %72
}

; Function Attrs: optsize
declare void @error_at(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare void @inform(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_call_expr_loc(i32 noundef %0, ptr noundef %1, i32 noundef %2, ...) local_unnamed_addr #3 !prof !551 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #20
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !462
  %7 = tail call ptr @build_pointer_type(ptr noundef %6) #21
  %8 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %7, ptr noundef %1) #21
  %9 = sext i32 %2 to i64
  %10 = shl nsw i64 %9, 3
  %11 = alloca i8, i64 %10, align 16
  call void @llvm.va_start(ptr nonnull %4)
  %12 = icmp sgt i32 %2, 0
  br i1 %12, label %13, label %39, !prof !552

13:                                               ; preds = %3
  %14 = load i32, ptr %4, align 16
  %15 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %16 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %17 = load ptr, ptr %16, align 16
  %18 = load ptr, ptr %15, align 8
  %19 = zext nneg i32 %2 to i64
  br label %20

20:                                               ; preds = %13, %31
  %21 = phi i64 [ 0, %13 ], [ %37, %31 ]
  %22 = phi ptr [ %18, %13 ], [ %32, %31 ]
  %23 = phi i32 [ %14, %13 ], [ %33, %31 ]
  %24 = icmp ult i32 %23, 41
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = zext nneg i32 %23 to i64
  %27 = getelementptr i8, ptr %17, i64 %26
  %28 = add nuw nsw i32 %23, 8
  store i32 %28, ptr %4, align 16
  br label %31

29:                                               ; preds = %20
  %30 = getelementptr i8, ptr %22, i64 8
  store ptr %30, ptr %15, align 8
  br label %31

31:                                               ; preds = %29, %25
  %32 = phi ptr [ %22, %25 ], [ %30, %29 ]
  %33 = phi i32 [ %28, %25 ], [ %23, %29 ]
  %34 = phi ptr [ %27, %25 ], [ %22, %29 ]
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds ptr, ptr %11, i64 %21
  store ptr %35, ptr %36, align 8, !tbaa !458
  %37 = add nuw nsw i64 %21, 1
  %38 = icmp eq i64 %37, %19
  br i1 %38, label %39, label %20, !prof !553, !llvm.loop !554

39:                                               ; preds = %31, %3
  call void @llvm.va_end(ptr nonnull %4)
  %40 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !462
  %42 = call ptr @fold_builtin_call_array(i32 noundef %0, ptr noundef %41, ptr noundef %8, i32 noundef %2, ptr noundef nonnull %11) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #20
  ret ptr %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @dummy_object(ptr noundef %0) unnamed_addr #3 !prof !449 !PGOFuncName !555 {
  %2 = tail call ptr @build_pointer_type(ptr noundef %0) #21
  %3 = tail call ptr @build_int_cst(ptr noundef %2, i64 noundef 0) #21
  %4 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %0, ptr noundef %3) #21
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_lval(ptr noundef) #5

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @expand_builtin_trap() local_unnamed_addr #3 !prof !449 {
  %1 = tail call ptr @gen_trap() #21
  %2 = tail call ptr @emit_insn(ptr noundef %1) #21
  %3 = tail call ptr @emit_barrier() #21
  ret void
}

; Function Attrs: optsize
declare ptr @gen_trap() local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @emit_barrier() local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_string_literal(i32 noundef %0, ptr noundef %1) local_unnamed_addr #3 !prof !514 {
  %3 = tail call ptr @build_string(i32 noundef %0, ptr noundef %1) #21
  %4 = load ptr, ptr @integer_types, align 16, !tbaa !458
  %5 = tail call ptr @build_qualified_type(ptr noundef %4, i32 noundef 1) #21
  %6 = add nsw i32 %0, -1
  %7 = sext i32 %6 to i64
  %8 = tail call ptr @size_int_kind(i64 noundef %7, i32 noundef 0) #21
  %9 = tail call ptr @build_index_type(ptr noundef %8) #21
  %10 = tail call ptr @build_array_type(ptr noundef %5, ptr noundef %9) #21
  %11 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !462
  %12 = load i64, ptr %3, align 8
  %13 = or i64 %12, 68288512
  store i64 %13, ptr %3, align 8
  %14 = tail call ptr @build_pointer_type(ptr noundef %5) #21
  %15 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !458
  %16 = tail call ptr @build4_stat(i32 noundef 45, ptr noundef %5, ptr noundef nonnull %3, ptr noundef %15, ptr noundef null, ptr noundef null) #21
  %17 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %14, ptr noundef %16) #21
  ret ptr %17
}

; Function Attrs: optsize
declare ptr @build_string(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @build_qualified_type(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @build_index_type(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @build_array_type(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @build4_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @expand_builtin(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 !prof !556 {
  %6 = alloca %struct.call_expr_arg_iterator_d, align 8
  %7 = tail call ptr @get_callee_fndecl(ptr noundef %0) #21
  %8 = getelementptr inbounds %struct.tree_function_decl, ptr %7, i64 0, i32 5
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 2047
  %11 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !462
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 14
  br i1 %15, label %16, label %19, !prof !557

16:                                               ; preds = %5
  %17 = tail call i32 @vector_type_mode(ptr noundef nonnull %12) #21
  %18 = load i32, ptr %8, align 8
  br label %19

19:                                               ; preds = %5, %16
  %20 = phi i32 [ %9, %5 ], [ %18, %16 ]
  %21 = and i32 %20, 6144
  %22 = icmp eq i32 %21, 4096
  br i1 %22, label %23, label %26, !prof !557

23:                                               ; preds = %19
  %24 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 25), align 8, !tbaa !558
  %25 = tail call ptr %24(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #21
  br label %85

26:                                               ; preds = %19
  %27 = load i32, ptr @optimize, align 4, !tbaa !469
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %48, !prof !557

29:                                               ; preds = %26
  %30 = tail call fastcc zeroext i8 @called_as_built_in(ptr noundef nonnull %7) #19, !range !451
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = load i64, ptr %7, align 8
  %34 = and i64 %33, 65535
  %35 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %34, i64 13
  %36 = load i8, ptr %35, align 1, !tbaa !462
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %7, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !462
  %41 = icmp ne ptr %40, null
  %42 = icmp ne i32 %10, 415
  %43 = select i1 %41, i1 %42, i1 false
  %44 = icmp ne i32 %10, 455
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = tail call ptr @expand_call(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %4) #21
  br label %85

48:                                               ; preds = %38, %32, %29, %26
  %49 = icmp eq i32 %4, 0
  %50 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %51 = select i1 %49, ptr %1, ptr %50, !prof !559
  %52 = icmp eq ptr %51, %50
  br i1 %52, label %53, label %83, !prof !560

53:                                               ; preds = %48
  %54 = and i32 %20, 134217728
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60, !prof !561

56:                                               ; preds = %53
  %57 = load i64, ptr %7, align 8
  %58 = and i64 %57, 1048576
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %83, label %60, !prof !561

60:                                               ; preds = %56, %53
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20
  %61 = call fastcc ptr @first_call_expr_arg(ptr noundef nonnull %0, ptr noundef nonnull %6) #19
  %62 = icmp eq ptr %61, null
  br i1 %62, label %72, label %63

63:                                               ; preds = %60, %69
  %64 = phi ptr [ %70, %69 ], [ %61, %60 ]
  %65 = load i64, ptr %64, align 8
  %66 = and i64 %65, 524288
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  br label %83

69:                                               ; preds = %63
  %70 = call fastcc ptr @next_call_expr_arg(ptr noundef nonnull %6) #19
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %63, !llvm.loop !562

72:                                               ; preds = %69, %60
  %73 = call fastcc ptr @first_call_expr_arg(ptr noundef %0, ptr noundef nonnull %6) #19
  %74 = icmp eq ptr %73, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %72, %75
  %76 = phi ptr [ %79, %75 ], [ %73, %72 ]
  %77 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !458
  %78 = tail call fastcc ptr @expand_expr(ptr noundef nonnull %76, ptr noundef %77, i32 noundef 0) #19
  %79 = call fastcc ptr @next_call_expr_arg(ptr noundef nonnull %6) #19
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %75, !llvm.loop !563

81:                                               ; preds = %75, %72
  %82 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !458
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20
  br label %85

83:                                               ; preds = %68, %56, %48
  %84 = tail call ptr @expand_call(ptr noundef %0, ptr noundef %51, i32 noundef %4) #21
  br label %85

85:                                               ; preds = %81, %83, %46, %23
  %86 = phi ptr [ %25, %23 ], [ %84, %83 ], [ %82, %81 ], [ %47, %46 ]
  ret ptr %86
}

; Function Attrs: optsize
declare ptr @get_callee_fndecl(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @called_as_built_in(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !449 !PGOFuncName !564 {
  %2 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !462
  %4 = getelementptr inbounds %struct.tree_identifier, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !462
  %6 = tail call zeroext i8 @is_builtin_name(ptr noundef %5) #19, !range !451
  ret i8 %6
}

; Function Attrs: optsize
declare ptr @expand_call(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @first_call_expr_arg(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #10 !prof !449 !PGOFuncName !565 {
  tail call fastcc void @init_call_expr_arg_iterator(ptr noundef %0, ptr noundef %1) #19
  %3 = tail call fastcc ptr @next_call_expr_arg(ptr noundef %1) #19
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_call_expr_arg(ptr nocapture noundef %0) unnamed_addr #10 !prof !449 !PGOFuncName !566 {
  %2 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !567
  %4 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !569
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !570
  %9 = add nsw i32 %3, 3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !462
  %13 = add nsw i32 %3, 1
  store i32 %13, ptr %2, align 4, !tbaa !567
  br label %14

14:                                               ; preds = %1, %7
  %15 = phi ptr [ %12, %7 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @init_call_expr_arg_iterator(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #10 !prof !449 !PGOFuncName !571 {
  store ptr %0, ptr %1, align 8, !tbaa !570
  %3 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !462
  %5 = getelementptr inbounds %struct.tree_int_cst, ptr %4, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !462
  %7 = trunc i64 %6 to i32
  %8 = add nsw i32 %7, -3
  %9 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %1, i64 0, i32 1
  store i32 %8, ptr %9, align 8, !tbaa !569
  %10 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %1, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !567
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @builtin_mathfn_code(ptr noundef %0) local_unnamed_addr #3 !prof !572 {
  %2 = alloca %struct.const_call_expr_arg_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #20
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 59
  br i1 %5, label %6, label %82, !prof !573

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !462
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 121
  br i1 %11, label %12, label %82, !prof !574

12:                                               ; preds = %6
  %13 = tail call ptr @get_callee_fndecl(ptr noundef nonnull %0) #21
  %14 = icmp eq ptr %13, null
  br i1 %14, label %82, label %15, !prof !575

15:                                               ; preds = %12
  %16 = load i64, ptr %13, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 29
  br i1 %18, label %19, label %82, !prof !576

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.tree_function_decl, ptr %13, i64 0, i32 5
  %21 = load i32, ptr %20, align 8
  %22 = lshr i32 %21, 11
  %23 = and i32 %22, 3
  switch i32 %23, label %24 [
    i32 0, label %82
    i32 2, label %82
  ], !prof !577

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !462
  %27 = getelementptr inbounds %struct.tree_type, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !462
  call fastcc void @init_const_call_expr_arg_iterator(ptr noundef nonnull %0, ptr noundef nonnull %2) #19
  %29 = icmp eq ptr %28, null
  br i1 %29, label %79, label %30, !prof !518

30:                                               ; preds = %24, %75
  %31 = phi ptr [ %77, %75 ], [ %28, %24 ]
  %32 = getelementptr inbounds %struct.tree_list, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !462
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 19
  %37 = call fastcc zeroext i8 @more_const_call_expr_args_p(ptr noundef nonnull %2) #19, !range !451
  %38 = icmp eq i8 %37, 0
  br i1 %36, label %39, label %40, !prof !578

39:                                               ; preds = %30
  br i1 %38, label %79, label %82, !prof !579

40:                                               ; preds = %30
  br i1 %38, label %82, label %41, !prof !580

41:                                               ; preds = %40
  %42 = call fastcc ptr @next_const_call_expr_arg(ptr noundef nonnull %2) #19
  %43 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !462
  %45 = trunc i64 %34 to i16
  switch i16 %45, label %82 [
    i16 9, label %46
    i16 13, label %50
    i16 10, label %66
    i16 12, label %66
    i16 6, label %69
    i16 7, label %69
    i16 8, label %69
  ], !prof !581

46:                                               ; preds = %41
  %47 = load i64, ptr %44, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 9
  br i1 %49, label %75, label %82

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !462
  %53 = load i64, ptr %52, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 9
  br i1 %55, label %56, label %82

56:                                               ; preds = %50
  %57 = load i64, ptr %44, align 8
  %58 = and i64 %57, 65535
  %59 = icmp eq i64 %58, 13
  br i1 %59, label %60, label %82

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !462
  %63 = load i64, ptr %62, align 8
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 9
  br i1 %65, label %75, label %82

66:                                               ; preds = %41, %41
  %67 = load i64, ptr %44, align 8
  %68 = trunc i64 %67 to i16
  switch i16 %68, label %82 [
    i16 10, label %75
    i16 12, label %75
  ], !prof !582

69:                                               ; preds = %41, %41, %41
  %70 = load i64, ptr %44, align 8
  %71 = trunc i64 %70 to i32
  %72 = and i32 %71, 65535
  %73 = add nsw i32 %72, -6
  %74 = icmp ult i32 %73, 3
  br i1 %74, label %75, label %82, !prof !583

75:                                               ; preds = %69, %66, %66, %46, %60
  %76 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !462
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %30, !prof !584, !llvm.loop !585

79:                                               ; preds = %75, %24, %39
  %80 = load i32, ptr %20, align 8
  %81 = and i32 %80, 2047
  br label %82

82:                                               ; preds = %41, %50, %69, %66, %56, %60, %46, %40, %79, %39, %12, %15, %19, %19, %1, %6
  %83 = phi i32 [ 721, %6 ], [ 721, %1 ], [ 721, %19 ], [ 721, %19 ], [ 721, %15 ], [ 721, %12 ], [ 721, %39 ], [ %81, %79 ], [ 721, %40 ], [ 721, %46 ], [ 721, %60 ], [ 721, %56 ], [ 721, %66 ], [ 721, %69 ], [ 721, %50 ], [ 721, %41 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #20
  ret i32 %83
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @init_const_call_expr_arg_iterator(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #10 !prof !586 !PGOFuncName !587 {
  store ptr %0, ptr %1, align 8, !tbaa !588
  %3 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !462
  %5 = getelementptr inbounds %struct.tree_int_cst, ptr %4, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !462
  %7 = trunc i64 %6 to i32
  %8 = add nsw i32 %7, -3
  %9 = getelementptr inbounds %struct.const_call_expr_arg_iterator_d, ptr %1, i64 0, i32 1
  store i32 %8, ptr %9, align 8, !tbaa !590
  %10 = getelementptr inbounds %struct.const_call_expr_arg_iterator_d, ptr %1, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !591
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @more_const_call_expr_args_p(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !592 !PGOFuncName !593 {
  %2 = getelementptr inbounds %struct.const_call_expr_arg_iterator_d, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !591
  %4 = getelementptr inbounds %struct.const_call_expr_arg_iterator_d, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !590
  %6 = icmp slt i32 %3, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_const_call_expr_arg(ptr nocapture noundef %0) unnamed_addr #10 !prof !594 !PGOFuncName !595 {
  %2 = getelementptr inbounds %struct.const_call_expr_arg_iterator_d, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !591
  %4 = getelementptr inbounds %struct.const_call_expr_arg_iterator_d, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !590
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %14, !prof !596

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !588
  %9 = add nsw i32 %3, 3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !462
  %13 = add nsw i32 %3, 1
  store i32 %13, ptr %2, align 4, !tbaa !591
  br label %14

14:                                               ; preds = %1, %7
  %15 = phi ptr [ %12, %7 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @fold_builtin_strcpy(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 !prof !597 {
  %6 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 10) #19, !range !451
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %46, label %8, !prof !598

8:                                                ; preds = %5
  %9 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %3, i32 noundef 10) #19, !range !451
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %46, label %11, !prof !598

11:                                               ; preds = %8
  %12 = tail call i32 @operand_equal_p(ptr noundef %3, ptr noundef %2, i32 noundef 0) #21
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14, !prof !599

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !462
  %17 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !462
  %19 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %18, ptr noundef %2) #21
  br label %46

20:                                               ; preds = %11
  %21 = load ptr, ptr @cfun, align 8, !tbaa !458
  %22 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %21) #21
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %46, !prof !599

24:                                               ; preds = %20
  %25 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 330), align 16, !tbaa !458
  %26 = icmp eq ptr %25, null
  br i1 %26, label %46, label %27, !prof !598

27:                                               ; preds = %24
  %28 = icmp eq ptr %4, null
  br i1 %28, label %29, label %36, !prof !600

29:                                               ; preds = %27
  %30 = tail call ptr @c_strlen(ptr noundef %3, i32 noundef 1) #19
  %31 = icmp eq ptr %30, null
  br i1 %31, label %46, label %32, !prof !601

32:                                               ; preds = %29
  %33 = load i64, ptr %30, align 8
  %34 = and i64 %33, 65536
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %46, !prof !602

36:                                               ; preds = %32, %27
  %37 = phi ptr [ %4, %27 ], [ %30, %32 ]
  %38 = tail call ptr @size_int_kind(i64 noundef 1, i32 noundef 1) #21
  %39 = tail call ptr @size_binop_loc(i32 noundef %0, i32 noundef 63, ptr noundef nonnull %37, ptr noundef %38) #21
  %40 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !462
  %42 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !462
  %44 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %25, i32 noundef 3, ptr noundef %2, ptr noundef %3, ptr noundef %39) #19
  %45 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %43, ptr noundef %44) #21
  br label %46

46:                                               ; preds = %29, %32, %24, %20, %5, %8, %36, %14
  %47 = phi ptr [ %19, %14 ], [ %45, %36 ], [ null, %8 ], [ null, %5 ], [ null, %20 ], [ null, %24 ], [ null, %32 ], [ null, %29 ]
  ret ptr %47
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @validate_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !603 !PGOFuncName !604 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %23, label %4, !prof !605

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !462
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  switch i32 %1, label %20 [
    i32 10, label %9
    i32 8, label %14
  ], !prof !606

9:                                                ; preds = %4
  %10 = and i32 %8, 65535
  %11 = icmp eq i32 %10, 10
  %12 = icmp eq i32 %10, 12
  %13 = or i1 %11, %12
  br label %23

14:                                               ; preds = %4
  %15 = and i32 %8, 65534
  %16 = icmp eq i32 %15, 6
  br i1 %16, label %23, label %17, !prof !607

17:                                               ; preds = %14
  %18 = and i32 %8, 65535
  %19 = icmp eq i32 %18, 8
  br label %23

20:                                               ; preds = %4
  %21 = and i32 %8, 65535
  %22 = icmp eq i32 %21, %1
  br label %23

23:                                               ; preds = %14, %17, %2, %20, %9
  %24 = phi i1 [ %13, %9 ], [ %22, %20 ], [ false, %2 ], [ %19, %17 ], [ true, %14 ]
  %25 = zext i1 %24 to i8
  ret i8 %25
}

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_size_p(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @size_binop_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @fold_builtin_strncpy(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #3 !prof !608 {
  %7 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 10) #19, !range !451
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %55, label %9, !prof !609

9:                                                ; preds = %6
  %10 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %3, i32 noundef 10) #19, !range !451
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %55, label %12, !prof !609

12:                                               ; preds = %9
  %13 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %4, i32 noundef 8) #19, !range !451
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %55, label %15, !prof !609

15:                                               ; preds = %12
  %16 = tail call i32 @integer_zerop(ptr noundef %4) #21
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18, !prof !610

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !462
  %21 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !462
  %23 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %22, ptr noundef %2, ptr noundef %3) #21
  br label %55

24:                                               ; preds = %15
  %25 = icmp eq ptr %4, null
  br i1 %25, label %55, label %26, !prof !609

26:                                               ; preds = %24
  %27 = load i64, ptr %4, align 8
  %28 = and i64 %27, 65535
  %29 = icmp eq i64 %28, 23
  br i1 %29, label %30, label %55, !prof !611

30:                                               ; preds = %26
  %31 = icmp eq ptr %5, null
  br i1 %31, label %32, label %35, !prof !612

32:                                               ; preds = %30
  %33 = tail call ptr @c_strlen(ptr noundef %3, i32 noundef 1) #19
  %34 = icmp eq ptr %33, null
  br i1 %34, label %55, label %35, !prof !613

35:                                               ; preds = %30, %32
  %36 = phi ptr [ %33, %32 ], [ %5, %30 ]
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 23
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = tail call ptr @size_int_kind(i64 noundef 1, i32 noundef 1) #21
  %42 = tail call ptr @size_binop_loc(i32 noundef %0, i32 noundef 63, ptr noundef nonnull %36, ptr noundef %41) #21
  %43 = tail call i32 @tree_int_cst_lt(ptr noundef %42, ptr noundef nonnull %4) #21
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 330), align 16, !tbaa !458
  %47 = icmp eq ptr %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !462
  %51 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !462
  %53 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %46, i32 noundef 3, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4) #19
  %54 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %52, ptr noundef %53) #21
  br label %55

55:                                               ; preds = %45, %40, %32, %35, %24, %26, %6, %9, %12, %48, %18
  %56 = phi ptr [ %23, %18 ], [ %54, %48 ], [ null, %12 ], [ null, %9 ], [ null, %6 ], [ null, %26 ], [ null, %24 ], [ null, %35 ], [ null, %32 ], [ null, %40 ], [ null, %45 ]
  ret ptr %56
}

; Function Attrs: optsize
declare ptr @omit_one_operand_loc(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @fold_call_expr(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #3 !prof !614 {
  %4 = tail call ptr @get_callee_fndecl(ptr noundef %1) #21
  %5 = icmp eq ptr %4, null
  br i1 %5, label %68, label %6, !prof !615

6:                                                ; preds = %3
  %7 = load i64, ptr %4, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 29
  br i1 %9, label %10, label %68, !prof !616

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_function_decl, ptr %4, i64 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 6144
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %68, label %15, !prof !617

15:                                               ; preds = %10
  %16 = load i64, ptr %1, align 8
  %17 = and i64 %16, 134217728
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %68, !prof !618

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !462
  %22 = getelementptr inbounds %struct.tree_int_cst, ptr %21, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !462
  %24 = trunc i64 %23 to i32
  %25 = add nsw i32 %24, -3
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %48, label %27, !prof !619

27:                                               ; preds = %19
  %28 = shl i64 %23, 32
  %29 = add i64 %28, -4294967296
  %30 = ashr exact i64 %29, 32
  %31 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !462
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 59
  br i1 %35, label %36, label %48, !prof !620

36:                                               ; preds = %27
  %37 = tail call ptr @get_callee_fndecl(ptr noundef nonnull %32) #21
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39, !prof !621

39:                                               ; preds = %36
  %40 = load i64, ptr %37, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 29
  br i1 %42, label %43, label %48, !prof !622

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.tree_function_decl, ptr %37, i64 0, i32 5
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 8191
  %47 = icmp eq i32 %46, 6660
  br i1 %47, label %69, label %48, !prof !623

48:                                               ; preds = %36, %39, %43, %27, %19
  %49 = tail call fastcc zeroext i8 @avoid_folding_inline_builtin(ptr noundef nonnull %4) #19, !range !451
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %69, !prof !618

51:                                               ; preds = %48
  %52 = load i32, ptr %11, align 8
  %53 = and i32 %52, 6144
  %54 = icmp eq i32 %53, 4096
  br i1 %54, label %55, label %59, !prof !624

55:                                               ; preds = %51
  %56 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 27), align 8, !tbaa !625
  %57 = tail call ptr @call_expr_arglist(ptr noundef nonnull %1) #21
  %58 = tail call ptr %56(ptr noundef nonnull %4, ptr noundef %57, i8 noundef zeroext %2) #21
  br label %69

59:                                               ; preds = %51
  %60 = icmp slt i32 %24, 8
  br i1 %60, label %61, label %65, !prof !626

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 2
  %63 = tail call fastcc ptr @fold_builtin_n(i32 noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %62, i32 noundef %25, i8 noundef zeroext %2) #19
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %69, !prof !627

65:                                               ; preds = %59, %61
  %66 = tail call fastcc ptr @fold_builtin_varargs(i32 noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %1) #19
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %65, %15, %10, %6, %3
  br label %69

69:                                               ; preds = %48, %43, %55, %61, %65, %68
  %70 = phi ptr [ null, %68 ], [ %66, %65 ], [ %63, %61 ], [ null, %48 ], [ null, %43 ], [ %58, %55 ]
  ret ptr %70
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @avoid_folding_inline_builtin(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !628 !PGOFuncName !629 {
  %2 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 2097152
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %23, label %6, !prof !630

6:                                                ; preds = %1
  %7 = and i32 %3, 67108864
  %8 = icmp ne i32 %7, 0
  %9 = load ptr, ptr @cfun, align 8
  %10 = icmp ne ptr %9, null
  %11 = select i1 %8, i1 %10, i1 false
  br i1 %11, label %12, label %23

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 20
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 33554432
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !462
  %20 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.727, ptr noundef %19) #21
  %21 = icmp ne ptr %20, null
  %22 = zext i1 %21 to i8
  br label %23

23:                                               ; preds = %17, %12, %6, %1
  %24 = phi i8 [ 0, %12 ], [ 0, %6 ], [ 0, %1 ], [ %22, %17 ]
  ret i8 %24
}

; Function Attrs: optsize
declare ptr @call_expr_arglist(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @fold_builtin_n(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #3 !prof !631 !PGOFuncName !632 {
  switch i32 %3, label %42 [
    i32 0, label %6
    i32 1, label %8
    i32 2, label %11
    i32 3, label %16
    i32 4, label %23
  ], !prof !633

6:                                                ; preds = %5
  %7 = tail call fastcc ptr @fold_builtin_0(i32 noundef %0, ptr noundef %1) #19
  br label %32

8:                                                ; preds = %5
  %9 = load ptr, ptr %2, align 8, !tbaa !458
  %10 = tail call fastcc ptr @fold_builtin_1(i32 noundef %0, ptr noundef %1, ptr noundef %9, i8 noundef zeroext %4) #19
  br label %32

11:                                               ; preds = %5
  %12 = load ptr, ptr %2, align 8, !tbaa !458
  %13 = getelementptr inbounds ptr, ptr %2, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !458
  %15 = tail call fastcc ptr @fold_builtin_2(i32 noundef %0, ptr noundef %1, ptr noundef %12, ptr noundef %14, i8 noundef zeroext %4) #19
  br label %32

16:                                               ; preds = %5
  %17 = load ptr, ptr %2, align 8, !tbaa !458
  %18 = getelementptr inbounds ptr, ptr %2, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !458
  %20 = getelementptr inbounds ptr, ptr %2, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !458
  %22 = tail call fastcc ptr @fold_builtin_3(i32 noundef %0, ptr noundef %1, ptr noundef %17, ptr noundef %19, ptr noundef %21, i8 noundef zeroext %4) #19
  br label %32

23:                                               ; preds = %5
  %24 = load ptr, ptr %2, align 8, !tbaa !458
  %25 = getelementptr inbounds ptr, ptr %2, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !458
  %27 = getelementptr inbounds ptr, ptr %2, i64 2
  %28 = load ptr, ptr %27, align 8, !tbaa !458
  %29 = getelementptr inbounds ptr, ptr %2, i64 3
  %30 = load ptr, ptr %29, align 8, !tbaa !458
  %31 = tail call fastcc ptr @fold_builtin_4(i32 noundef %0, ptr noundef %1, ptr noundef %24, ptr noundef %26, ptr noundef %28, ptr noundef %30, i8 noundef zeroext %4) #19
  br label %32

32:                                               ; preds = %23, %16, %11, %8, %6
  %33 = phi ptr [ %31, %23 ], [ %22, %16 ], [ %15, %11 ], [ %10, %8 ], [ %7, %6 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35, !prof !634

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !462
  %38 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef %37, ptr noundef nonnull %33) #21
  %39 = getelementptr inbounds %struct.tree_exp, ptr %38, i64 0, i32 1
  store i32 %0, ptr %39, align 8, !tbaa !462
  %40 = load i64, ptr %38, align 8
  %41 = or i64 %40, 8388608
  store i64 %41, ptr %38, align 8
  br label %42

42:                                               ; preds = %5, %32, %35
  %43 = phi ptr [ %38, %35 ], [ null, %32 ], [ null, %5 ]
  ret ptr %43
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @fold_builtin_varargs(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #3 !prof !635 !PGOFuncName !636 {
  %4 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 2047
  switch i32 %6, label %23 [
    i32 539, label %7
    i32 541, label %7
    i32 538, label %9
    i32 540, label %9
    i32 466, label %11
  ], !prof !637

7:                                                ; preds = %3, %3
  %8 = tail call fastcc ptr @fold_builtin_sprintf_chk(i32 noundef %0, ptr noundef %2, i32 noundef %6) #19
  br label %13

9:                                                ; preds = %3, %3
  %10 = tail call ptr @fold_builtin_snprintf_chk(i32 noundef %0, ptr noundef %2, ptr noundef null, i32 noundef %6) #19
  br label %13

11:                                               ; preds = %3
  %12 = tail call fastcc ptr @fold_builtin_fpclassify(i32 noundef %0, ptr noundef %2) #19
  br label %13

13:                                               ; preds = %11, %9, %7
  %14 = phi ptr [ %12, %11 ], [ %10, %9 ], [ %8, %7 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16, !prof !638

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !462
  %19 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef %18, ptr noundef nonnull %14) #21
  %20 = getelementptr inbounds %struct.tree_exp, ptr %19, i64 0, i32 1
  store i32 %0, ptr %20, align 8, !tbaa !462
  %21 = load i64, ptr %19, align 8
  %22 = or i64 %21, 8388608
  store i64 %22, ptr %19, align 8
  br label %23

23:                                               ; preds = %3, %13, %16
  %24 = phi ptr [ %19, %16 ], [ null, %13 ], [ null, %3 ]
  ret ptr %24
}

; Function Attrs: optsize
declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_0(i32 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !prof !639 !PGOFuncName !640 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !462
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !462
  %7 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 2047
  switch i32 %9, label %16 [
    i32 96, label %10
    i32 97, label %10
    i32 98, label %10
    i32 99, label %10
    i32 100, label %10
    i32 101, label %10
    i32 87, label %12
    i32 88, label %12
    i32 89, label %12
    i32 423, label %14
  ], !prof !641

10:                                               ; preds = %2, %2, %2, %2, %2, %2
  %11 = tail call fastcc ptr @fold_builtin_inf(i32 noundef %0, ptr noundef %6, i32 noundef 1) #19
  br label %16

12:                                               ; preds = %2, %2, %2
  %13 = tail call fastcc ptr @fold_builtin_inf(i32 noundef %0, ptr noundef %6, i32 noundef 0) #19
  br label %16

14:                                               ; preds = %2
  %15 = tail call fastcc ptr @fold_builtin_classify_type(ptr noundef null) #19
  br label %16

16:                                               ; preds = %2, %14, %12, %10
  %17 = phi ptr [ %15, %14 ], [ %13, %12 ], [ %11, %10 ], [ null, %2 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_1(i32 noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #3 !prof !642 !PGOFuncName !643 {
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !462
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !462
  %9 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %10 = load i32, ptr %9, align 8
  %11 = and i32 %10, 2047
  switch i32 %11, label %123 [
    i32 428, label %12
    i32 423, label %20
    i32 345, label %22
    i32 57, label %24
    i32 58, label %24
    i32 59, label %24
    i32 413, label %26
    i32 488, label %26
    i32 489, label %26
    i32 458, label %26
    i32 297, label %28
    i32 298, label %28
    i32 299, label %28
    i32 306, label %41
    i32 307, label %41
    i32 308, label %41
    i32 288, label %55
    i32 289, label %55
    i32 290, label %55
    i32 162, label %71
    i32 163, label %71
    i32 164, label %71
    i32 165, label %71
    i32 166, label %71
    i32 167, label %71
    i32 377, label %121
    i32 366, label %121
    i32 365, label %121
    i32 480, label %119
    i32 479, label %119
    i32 478, label %119
    i32 477, label %119
    i32 476, label %119
    i32 475, label %119
    i32 468, label %117
    i32 481, label %115
    i32 474, label %110
    i32 473, label %110
    i32 472, label %110
    i32 471, label %110
    i32 470, label %110
    i32 469, label %110
    i32 467, label %105
    i32 465, label %105
    i32 464, label %105
    i32 463, label %105
    i32 462, label %105
    i32 461, label %105
    i32 460, label %105
    i32 387, label %103
    i32 395, label %101
    i32 384, label %99
    i32 150, label %97
    i32 149, label %97
    i32 148, label %97
    i32 95, label %97
    i32 94, label %97
    i32 93, label %97
    i32 218, label %95
    i32 217, label %95
    i32 216, label %95
    i32 168, label %73
    i32 169, label %73
    i32 170, label %73
    i32 261, label %69
    i32 262, label %69
    i32 263, label %69
    i32 63, label %75
    i32 64, label %75
    i32 65, label %75
    i32 24, label %77
    i32 25, label %77
    i32 26, label %77
    i32 212, label %93
    i32 211, label %93
    i32 210, label %93
    i32 496, label %91
    i32 495, label %91
    i32 493, label %91
    i32 500, label %91
    i32 499, label %91
    i32 497, label %91
    i32 432, label %91
    i32 431, label %91
    i32 429, label %91
    i32 427, label %91
    i32 426, label %91
    i32 424, label %91
    i32 452, label %91
    i32 451, label %91
    i32 449, label %91
    i32 420, label %89
    i32 419, label %89
    i32 134, label %87
    i32 240, label %79
    i32 241, label %79
    i32 242, label %79
    i32 198, label %81
    i32 199, label %81
    i32 200, label %81
    i32 171, label %83
    i32 172, label %83
    i32 173, label %83
    i32 133, label %87
    i32 132, label %87
    i32 155, label %87
    i32 154, label %87
    i32 153, label %87
    i32 137, label %85
    i32 195, label %83
    i32 196, label %83
    i32 197, label %83
    i32 136, label %85
    i32 135, label %85
    i32 158, label %85
    i32 157, label %85
    i32 156, label %85
    i32 131, label %85
    i32 130, label %85
    i32 129, label %85
    i32 119, label %85
    i32 118, label %85
    i32 117, label %85
    i32 128, label %85
    i32 127, label %85
    i32 126, label %85
    i32 113, label %85
    i32 112, label %85
    i32 111, label %85
  ], !prof !644

12:                                               ; preds = %4
  %13 = tail call fastcc ptr @fold_builtin_constant_p(ptr noundef %2) #19
  %14 = icmp ne ptr %13, null
  %15 = load i32, ptr @optimize, align 4
  %16 = icmp ne i32 %15, 0
  %17 = select i1 %14, i1 true, i1 %16
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8
  %19 = select i1 %17, ptr %13, ptr %18, !prof !622
  br label %123

20:                                               ; preds = %4
  %21 = tail call fastcc ptr @fold_builtin_classify_type(ptr noundef %2) #19
  br label %123

22:                                               ; preds = %4
  %23 = tail call fastcc ptr @fold_builtin_strlen(i32 noundef %0, ptr noundef %8, ptr noundef %2) #19
  br label %123

24:                                               ; preds = %4, %4, %4
  %25 = tail call fastcc ptr @fold_builtin_fabs(i32 noundef %0, ptr noundef %2, ptr noundef %8) #19
  br label %123

26:                                               ; preds = %4, %4, %4, %4
  %27 = tail call fastcc ptr @fold_builtin_abs(i32 noundef %0, ptr noundef %2, ptr noundef %8) #19
  br label %123

28:                                               ; preds = %4, %4, %4
  %29 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 13) #19, !range !451
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %123, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !462
  %34 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !462
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 9
  br i1 %38, label %39, label %123

39:                                               ; preds = %31
  %40 = tail call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 124, ptr noundef %8, ptr noundef nonnull %2) #21
  br label %123

41:                                               ; preds = %4, %4, %4
  %42 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 13) #19, !range !451
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %123, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !462
  %47 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !462
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 9
  br i1 %51, label %52, label %123

52:                                               ; preds = %44
  %53 = tail call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 43, ptr noundef %8, ptr noundef nonnull %2) #21
  %54 = tail call ptr @non_lvalue_loc(i32 noundef %0, ptr noundef %53) #21
  br label %123

55:                                               ; preds = %4, %4, %4
  %56 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 13) #19, !range !451
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %123, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !462
  %61 = getelementptr inbounds %struct.tree_common, ptr %60, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !462
  %63 = load i64, ptr %62, align 8
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 9
  br i1 %65, label %66, label %123

66:                                               ; preds = %58
  %67 = tail call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 44, ptr noundef %8, ptr noundef nonnull %2) #21
  %68 = tail call ptr @non_lvalue_loc(i32 noundef %0, ptr noundef %67) #21
  br label %123

69:                                               ; preds = %4, %4, %4
  %70 = tail call fastcc ptr @fold_builtin_carg(i32 noundef %0, ptr noundef %2, ptr noundef %8) #19
  br label %123

71:                                               ; preds = %4, %4, %4, %4, %4, %4
  %72 = tail call fastcc ptr @fold_builtin_nan(ptr noundef %2, ptr noundef %8, i32 noundef 1) #19
  br label %123

73:                                               ; preds = %4, %4, %4
  %74 = tail call fastcc ptr @fold_builtin_nan(ptr noundef %2, ptr noundef %8, i32 noundef 0) #19
  br label %123

75:                                               ; preds = %4, %4, %4
  %76 = tail call fastcc ptr @fold_builtin_floor(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2) #19
  br label %123

77:                                               ; preds = %4, %4, %4
  %78 = tail call fastcc ptr @fold_builtin_ceil(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2) #19
  br label %123

79:                                               ; preds = %4, %4, %4
  %80 = tail call fastcc ptr @fold_builtin_trunc(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2) #19
  br label %123

81:                                               ; preds = %4, %4, %4
  %82 = tail call fastcc ptr @fold_builtin_round(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2) #19
  br label %123

83:                                               ; preds = %4, %4, %4, %4, %4, %4
  %84 = tail call fastcc ptr @fold_trunc_transparent_mathfn(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2) #19
  br label %123

85:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %86 = tail call fastcc ptr @fold_builtin_int_roundingfn(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2) #19
  br label %123

87:                                               ; preds = %4, %4, %4, %4, %4, %4
  %88 = tail call fastcc ptr @fold_fixed_mathfn(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2) #19
  br label %123

89:                                               ; preds = %4, %4
  %90 = tail call fastcc ptr @fold_builtin_bswap(ptr noundef nonnull %1, ptr noundef %2) #19
  br label %123

91:                                               ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %92 = tail call fastcc ptr @fold_builtin_bitop(ptr noundef nonnull %1, ptr noundef %2) #19
  br label %123

93:                                               ; preds = %4, %4, %4
  %94 = tail call fastcc ptr @fold_builtin_signbit(i32 noundef %0, ptr noundef %2, ptr noundef %8) #19
  br label %123

95:                                               ; preds = %4, %4, %4
  %96 = tail call fastcc ptr @fold_builtin_significand(i32 noundef %0, ptr noundef %2, ptr noundef %8) #19
  br label %123

97:                                               ; preds = %4, %4, %4, %4, %4, %4
  %98 = tail call fastcc ptr @fold_builtin_logb(i32 noundef %0, ptr noundef %2, ptr noundef %8) #19
  br label %123

99:                                               ; preds = %4
  %100 = tail call fastcc ptr @fold_builtin_isascii(i32 noundef %0, ptr noundef %2) #19
  br label %123

101:                                              ; preds = %4
  %102 = tail call fastcc ptr @fold_builtin_toascii(i32 noundef %0, ptr noundef %2) #19
  br label %123

103:                                              ; preds = %4
  %104 = tail call fastcc ptr @fold_builtin_isdigit(i32 noundef %0, ptr noundef %2) #19
  br label %123

105:                                              ; preds = %4, %4, %4, %4, %4, %4, %4
  %106 = tail call fastcc ptr @fold_builtin_classify(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 467) #19
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %123

108:                                              ; preds = %105
  %109 = tail call fastcc ptr @fold_builtin_interclass_mathfn(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2) #19
  br label %123

110:                                              ; preds = %4, %4, %4, %4, %4, %4
  %111 = tail call fastcc ptr @fold_builtin_classify(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 469) #19
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %123

113:                                              ; preds = %110
  %114 = tail call fastcc ptr @fold_builtin_interclass_mathfn(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2) #19
  br label %123

115:                                              ; preds = %4
  %116 = tail call fastcc ptr @fold_builtin_interclass_mathfn(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2) #19
  br label %123

117:                                              ; preds = %4
  %118 = tail call fastcc ptr @fold_builtin_classify(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 468) #19
  br label %123

119:                                              ; preds = %4, %4, %4, %4, %4, %4
  %120 = tail call fastcc ptr @fold_builtin_classify(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 475) #19
  br label %123

121:                                              ; preds = %4, %4, %4
  %122 = tail call fastcc ptr @fold_builtin_printf(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef null, i8 noundef zeroext %3, i32 noundef %11) #19
  br label %123

123:                                              ; preds = %31, %28, %44, %41, %58, %55, %4, %113, %110, %108, %105, %121, %119, %117, %115, %103, %101, %99, %97, %95, %93, %91, %89, %87, %85, %83, %81, %79, %77, %75, %73, %71, %69, %66, %52, %39, %26, %24, %22, %20, %12
  %124 = phi ptr [ %122, %121 ], [ %120, %119 ], [ %118, %117 ], [ %116, %115 ], [ %104, %103 ], [ %102, %101 ], [ %100, %99 ], [ %98, %97 ], [ %96, %95 ], [ %94, %93 ], [ %92, %91 ], [ %90, %89 ], [ %88, %87 ], [ %86, %85 ], [ %84, %83 ], [ %82, %81 ], [ %80, %79 ], [ %78, %77 ], [ %76, %75 ], [ %74, %73 ], [ %72, %71 ], [ %70, %69 ], [ %68, %66 ], [ %54, %52 ], [ %40, %39 ], [ %27, %26 ], [ %25, %24 ], [ %23, %22 ], [ %21, %20 ], [ %19, %12 ], [ %109, %108 ], [ %106, %105 ], [ %114, %113 ], [ %111, %110 ], [ null, %55 ], [ null, %58 ], [ null, %41 ], [ null, %44 ], [ null, %28 ], [ null, %31 ], [ null, %4 ]
  ret ptr %124
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_2(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #3 !prof !645 !PGOFuncName !646 {
  %6 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !462
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !462
  %10 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 2047
  switch i32 %12, label %90 [
    i32 355, label %88
    i32 354, label %88
    i32 545, label %79
    i32 543, label %79
    i32 377, label %77
    i32 366, label %77
    i32 365, label %77
    i32 528, label %75
    i32 373, label %72
    i32 375, label %88
    i32 487, label %70
    i32 486, label %68
    i32 485, label %66
    i32 484, label %64
    i32 483, label %62
    i32 482, label %60
    i32 29, label %58
    i32 28, label %58
    i32 27, label %58
    i32 187, label %56
    i32 186, label %56
    i32 185, label %56
    i32 446, label %54
    i32 350, label %52
    i32 340, label %50
    i32 335, label %41
    i32 341, label %39
    i32 334, label %37
    i32 351, label %37
    i32 327, label %35
    i32 114, label %13
    i32 115, label %13
    i32 116, label %13
    i32 207, label %15
    i32 208, label %15
    i32 209, label %15
    i32 204, label %15
    i32 205, label %15
    i32 206, label %15
    i32 78, label %17
    i32 79, label %17
    i32 80, label %17
    i32 159, label %19
    i32 160, label %19
    i32 161, label %19
    i32 326, label %21
    i32 360, label %23
    i32 361, label %25
    i32 353, label %27
    i32 338, label %29
    i32 352, label %31
    i32 342, label %33
    i32 339, label %35
  ], !prof !647

13:                                               ; preds = %5, %5, %5
  %14 = tail call fastcc ptr @fold_builtin_load_exponent(i32 noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %9, i8 noundef zeroext 1) #19
  br label %90

15:                                               ; preds = %5, %5, %5, %5, %5, %5
  %16 = tail call fastcc ptr @fold_builtin_load_exponent(i32 noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %9, i8 noundef zeroext 0) #19
  br label %90

17:                                               ; preds = %5, %5, %5
  %18 = tail call fastcc ptr @fold_builtin_frexp(i32 noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %9) #19
  br label %90

19:                                               ; preds = %5, %5, %5
  %20 = tail call fastcc ptr @fold_builtin_modf(i32 noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %9) #19
  br label %90

21:                                               ; preds = %5
  %22 = tail call fastcc ptr @fold_builtin_bzero(i32 noundef %0, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) #19
  br label %90

23:                                               ; preds = %5
  %24 = tail call ptr @fold_builtin_fputs(i32 noundef %0, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext 0, ptr noundef null) #19
  br label %90

25:                                               ; preds = %5
  %26 = tail call ptr @fold_builtin_fputs(i32 noundef %0, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i8 noundef zeroext 1, ptr noundef null) #19
  br label %90

27:                                               ; preds = %5
  %28 = tail call fastcc ptr @fold_builtin_strstr(i32 noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %9) #19
  br label %90

29:                                               ; preds = %5
  %30 = tail call fastcc ptr @fold_builtin_strcat(i32 noundef %0, ptr noundef %2, ptr noundef %3) #19
  br label %90

31:                                               ; preds = %5
  %32 = tail call fastcc ptr @fold_builtin_strspn(i32 noundef %0, ptr noundef %2, ptr noundef %3) #19
  br label %90

33:                                               ; preds = %5
  %34 = tail call fastcc ptr @fold_builtin_strcspn(i32 noundef %0, ptr noundef %2, ptr noundef %3) #19
  br label %90

35:                                               ; preds = %5, %5
  %36 = tail call fastcc ptr @fold_builtin_strchr(i32 noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %9) #19
  br label %90

37:                                               ; preds = %5, %5
  %38 = tail call fastcc ptr @fold_builtin_strrchr(i32 noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %9) #19
  br label %90

39:                                               ; preds = %5
  %40 = tail call ptr @fold_builtin_strcpy(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef null) #19
  br label %90

41:                                               ; preds = %5
  %42 = icmp eq i8 %4, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %41
  %44 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 341), align 8, !tbaa !458
  %45 = icmp eq ptr %44, null
  br i1 %45, label %90, label %46

46:                                               ; preds = %43
  %47 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %44, i32 noundef 2, ptr noundef %2, ptr noundef %3) #19
  br label %90

48:                                               ; preds = %41
  %49 = tail call fastcc ptr @fold_builtin_stpcpy(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #19
  br label %90

50:                                               ; preds = %5
  %51 = tail call fastcc ptr @fold_builtin_strcmp(i32 noundef %0, ptr noundef %2, ptr noundef %3) #19
  br label %90

52:                                               ; preds = %5
  %53 = tail call fastcc ptr @fold_builtin_strpbrk(i32 noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %9) #19
  br label %90

54:                                               ; preds = %5
  %55 = tail call fastcc ptr @fold_builtin_expect(i32 noundef %0, ptr noundef %2, ptr noundef %3) #19
  br label %90

56:                                               ; preds = %5, %5, %5
  %57 = tail call fastcc ptr @fold_builtin_powi(i32 noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %9) #19
  br label %90

58:                                               ; preds = %5, %5, %5
  %59 = tail call fastcc ptr @fold_builtin_copysign(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %9) #19
  br label %90

60:                                               ; preds = %5
  %61 = tail call fastcc ptr @fold_builtin_unordered_cmp(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef 106, i32 noundef 98) #19
  br label %90

62:                                               ; preds = %5
  %63 = tail call fastcc ptr @fold_builtin_unordered_cmp(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef 105, i32 noundef 97) #19
  br label %90

64:                                               ; preds = %5
  %65 = tail call fastcc ptr @fold_builtin_unordered_cmp(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef 108, i32 noundef 100) #19
  br label %90

66:                                               ; preds = %5
  %67 = tail call fastcc ptr @fold_builtin_unordered_cmp(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef 107, i32 noundef 99) #19
  br label %90

68:                                               ; preds = %5
  %69 = tail call fastcc ptr @fold_builtin_unordered_cmp(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef 109, i32 noundef 101) #19
  br label %90

70:                                               ; preds = %5
  %71 = tail call fastcc ptr @fold_builtin_unordered_cmp(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i32 noundef 103, i32 noundef 116) #19
  br label %90

72:                                               ; preds = %5
  %73 = zext i8 %4 to i32
  %74 = tail call fastcc ptr @fold_builtin_sprintf(i32 noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef null, i32 noundef %73) #19
  br label %90

75:                                               ; preds = %5
  %76 = tail call fastcc ptr @fold_builtin_object_size(ptr noundef %2, ptr noundef %3) #19
  br label %90

77:                                               ; preds = %5, %5, %5
  %78 = tail call fastcc ptr @fold_builtin_printf(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i32 noundef %12) #19
  br label %90

79:                                               ; preds = %5, %5
  %80 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 8) #19, !range !451
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %79
  %83 = load i64, ptr %2, align 8
  %84 = and i64 %83, 65536
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = tail call fastcc ptr @fold_builtin_printf(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %3, ptr noundef null, i8 noundef zeroext %4, i32 noundef %12) #19
  br label %90

88:                                               ; preds = %5, %5, %5
  %89 = tail call fastcc ptr @fold_builtin_fprintf(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef null, i8 noundef zeroext %4, i32 noundef %12) #19
  br label %90

90:                                               ; preds = %43, %5, %46, %79, %82, %88, %86, %77, %75, %72, %70, %68, %66, %64, %62, %60, %58, %56, %54, %52, %50, %48, %39, %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13
  %91 = phi ptr [ %87, %86 ], [ %78, %77 ], [ %76, %75 ], [ %74, %72 ], [ %89, %88 ], [ %71, %70 ], [ %69, %68 ], [ %67, %66 ], [ %65, %64 ], [ %63, %62 ], [ %61, %60 ], [ %59, %58 ], [ %57, %56 ], [ %55, %54 ], [ %53, %52 ], [ %51, %50 ], [ %47, %46 ], [ %49, %48 ], [ %40, %39 ], [ %38, %37 ], [ %36, %35 ], [ %34, %33 ], [ %32, %31 ], [ %30, %29 ], [ %28, %27 ], [ %26, %25 ], [ %24, %23 ], [ %22, %21 ], [ %20, %19 ], [ %18, %17 ], [ %16, %15 ], [ %14, %13 ], [ null, %82 ], [ null, %79 ], [ null, %5 ], [ null, %43 ]
  ret ptr %91
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_3(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) unnamed_addr #3 !prof !648 !PGOFuncName !649 {
  %7 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !462
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !462
  %11 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 2047
  switch i32 %13, label %62 [
    i32 543, label %42
    i32 534, label %40
    i32 533, label %38
    i32 544, label %53
    i32 542, label %53
    i32 375, label %51
    i32 355, label %51
    i32 354, label %51
    i32 545, label %42
    i32 333, label %14
    i32 325, label %16
    i32 330, label %19
    i32 332, label %21
    i32 331, label %23
    i32 347, label %25
    i32 349, label %27
    i32 348, label %29
    i32 328, label %31
    i32 324, label %33
    i32 329, label %33
    i32 373, label %35
    i32 535, label %38
  ], !prof !650

14:                                               ; preds = %6
  %15 = tail call fastcc ptr @fold_builtin_memset(i32 noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %10, i8 noundef zeroext %5) #19
  br label %62

16:                                               ; preds = %6
  %17 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !458
  %18 = tail call fastcc ptr @fold_builtin_memory_op(i32 noundef %0, ptr noundef %3, ptr noundef %2, ptr noundef %4, ptr noundef %17, i8 noundef zeroext 1, i32 noundef 3) #19
  br label %62

19:                                               ; preds = %6
  %20 = tail call fastcc ptr @fold_builtin_memory_op(i32 noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %10, i8 noundef zeroext %5, i32 noundef 0) #19
  br label %62

21:                                               ; preds = %6
  %22 = tail call fastcc ptr @fold_builtin_memory_op(i32 noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %10, i8 noundef zeroext %5, i32 noundef 1) #19
  br label %62

23:                                               ; preds = %6
  %24 = tail call fastcc ptr @fold_builtin_memory_op(i32 noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %10, i8 noundef zeroext %5, i32 noundef 3) #19
  br label %62

25:                                               ; preds = %6
  %26 = tail call fastcc ptr @fold_builtin_strncat(i32 noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  br label %62

27:                                               ; preds = %6
  %28 = tail call ptr @fold_builtin_strncpy(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef null) #19
  br label %62

29:                                               ; preds = %6
  %30 = tail call fastcc ptr @fold_builtin_strncmp(i32 noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  br label %62

31:                                               ; preds = %6
  %32 = tail call fastcc ptr @fold_builtin_memchr(i32 noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %10) #19
  br label %62

33:                                               ; preds = %6, %6
  %34 = tail call fastcc ptr @fold_builtin_memcmp(i32 noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  br label %62

35:                                               ; preds = %6
  %36 = zext i8 %5 to i32
  %37 = tail call fastcc ptr @fold_builtin_sprintf(i32 noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %36) #19
  br label %62

38:                                               ; preds = %6, %6
  %39 = tail call ptr @fold_builtin_stxcpy_chk(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef null, i8 noundef zeroext %5, i32 noundef %13) #19
  br label %62

40:                                               ; preds = %6
  %41 = tail call fastcc ptr @fold_builtin_strcat_chk(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  br label %62

42:                                               ; preds = %6, %6
  %43 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 8) #19, !range !451
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %62, label %45

45:                                               ; preds = %42
  %46 = load i64, ptr %2, align 8
  %47 = and i64 %46, 65536
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = tail call fastcc ptr @fold_builtin_printf(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, i32 noundef %13) #19
  br label %62

51:                                               ; preds = %6, %6, %6
  %52 = tail call fastcc ptr @fold_builtin_fprintf(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, i32 noundef %13) #19
  br label %62

53:                                               ; preds = %6, %6
  %54 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %3, i32 noundef 8) #19, !range !451
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  %57 = load i64, ptr %3, align 8
  %58 = and i64 %57, 65536
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = tail call fastcc ptr @fold_builtin_fprintf(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %4, ptr noundef null, i8 noundef zeroext %5, i32 noundef %13) #19
  br label %62

62:                                               ; preds = %6, %53, %56, %42, %45, %60, %51, %49, %40, %38, %35, %33, %31, %29, %27, %25, %23, %21, %19, %16, %14
  %63 = phi ptr [ %61, %60 ], [ %52, %51 ], [ %50, %49 ], [ %41, %40 ], [ %39, %38 ], [ %37, %35 ], [ %34, %33 ], [ %32, %31 ], [ %30, %29 ], [ %28, %27 ], [ %26, %25 ], [ %24, %23 ], [ %22, %21 ], [ %20, %19 ], [ %18, %16 ], [ %15, %14 ], [ null, %45 ], [ null, %42 ], [ null, %56 ], [ null, %53 ], [ null, %6 ]
  ret ptr %63
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_4(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6) unnamed_addr #3 !prof !651 !PGOFuncName !652 {
  %8 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 2047
  switch i32 %10, label %26 [
    i32 529, label %11
    i32 531, label %11
    i32 530, label %11
    i32 532, label %11
    i32 537, label %13
    i32 536, label %15
    i32 542, label %17
    i32 544, label %17
  ], !prof !653

11:                                               ; preds = %7, %7, %7, %7
  %12 = tail call ptr @fold_builtin_memory_chk(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef null, i8 noundef zeroext %6, i32 noundef %10) #19
  br label %26

13:                                               ; preds = %7
  %14 = tail call ptr @fold_builtin_strncpy_chk(i32 noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef null) #19
  br label %26

15:                                               ; preds = %7
  %16 = tail call fastcc ptr @fold_builtin_strncat_chk(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #19
  br label %26

17:                                               ; preds = %7, %7
  %18 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %3, i32 noundef 8) #19, !range !451
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load i64, ptr %3, align 8
  %22 = and i64 %21, 65536
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = tail call fastcc ptr @fold_builtin_fprintf(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6, i32 noundef %10) #19
  br label %26

26:                                               ; preds = %7, %17, %20, %24, %15, %13, %11
  %27 = phi ptr [ %25, %24 ], [ %16, %15 ], [ %14, %13 ], [ %12, %11 ], [ null, %20 ], [ null, %17 ], [ null, %7 ]
  ret ptr %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_inf(i32 noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 !prof !654 !PGOFuncName !655 {
  %4 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 14
  br i1 %7, label %8, label %11, !prof !656

8:                                                ; preds = %3
  %9 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #21
  %10 = load i64, ptr %1, align 8
  br label %16

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  br label %16

16:                                               ; preds = %11, %8
  %17 = phi i64 [ %10, %8 ], [ %5, %11 ]
  %18 = phi i32 [ %9, %8 ], [ %15, %11 ]
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !462
  %22 = icmp eq i8 %21, 8
  br i1 %22, label %77, label %23, !prof !657

23:                                               ; preds = %16
  %24 = and i64 %17, 65535
  %25 = icmp eq i64 %24, 14
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #21
  %28 = load i64, ptr %1, align 8
  br label %34

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = lshr i32 %31, 16
  %33 = and i32 %32, 255
  br label %34

34:                                               ; preds = %29, %26
  %35 = phi i64 [ %28, %26 ], [ %17, %29 ]
  %36 = phi i32 [ %27, %26 ], [ %33, %29 ]
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !462
  %40 = icmp eq i8 %39, 9
  br i1 %40, label %77, label %41

41:                                               ; preds = %34
  %42 = and i64 %35, 65535
  %43 = icmp eq i64 %42, 14
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #21
  %46 = load i64, ptr %1, align 8
  br label %52

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 255
  br label %52

52:                                               ; preds = %47, %44
  %53 = phi i64 [ %46, %44 ], [ %35, %47 ]
  %54 = phi i32 [ %45, %44 ], [ %51, %47 ]
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !462
  %58 = icmp eq i8 %57, 11
  br i1 %58, label %77, label %59

59:                                               ; preds = %52
  %60 = and i64 %53, 65535
  %61 = icmp eq i64 %60, 14
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #21
  br label %69

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %66 = load i32, ptr %65, align 4
  %67 = lshr i32 %66, 16
  %68 = and i32 %67, 255
  br label %69

69:                                               ; preds = %64, %62
  %70 = phi i32 [ %63, %62 ], [ %68, %64 ]
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %71
  %73 = load i8, ptr %72, align 1, !tbaa !462
  %74 = icmp eq i8 %73, 17
  br i1 %74, label %75, label %283

75:                                               ; preds = %69
  %76 = load i64, ptr %1, align 8
  br label %77

77:                                               ; preds = %75, %52, %34, %16
  %78 = phi i64 [ %76, %75 ], [ %53, %52 ], [ %35, %34 ], [ %17, %16 ]
  %79 = and i64 %78, 65535
  %80 = icmp eq i64 %79, 14
  br i1 %80, label %81, label %84, !prof !656

81:                                               ; preds = %77
  %82 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #21
  %83 = load i64, ptr %1, align 8
  br label %89

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %86 = load i32, ptr %85, align 4
  %87 = lshr i32 %86, 16
  %88 = and i32 %87, 255
  br label %89

89:                                               ; preds = %84, %81
  %90 = phi i64 [ %83, %81 ], [ %78, %84 ]
  %91 = phi i32 [ %82, %81 ], [ %88, %84 ]
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !462
  %95 = icmp eq i8 %94, 8
  br i1 %95, label %114, label %96, !prof !657

96:                                               ; preds = %89
  %97 = and i64 %90, 65535
  %98 = icmp eq i64 %97, 14
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #21
  %101 = load i64, ptr %1, align 8
  br label %107

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %104 = load i32, ptr %103, align 4
  %105 = lshr i32 %104, 16
  %106 = and i32 %105, 255
  br label %107

107:                                              ; preds = %102, %99
  %108 = phi i64 [ %101, %99 ], [ %90, %102 ]
  %109 = phi i32 [ %100, %99 ], [ %106, %102 ]
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !462
  %113 = icmp eq i8 %112, 9
  br i1 %113, label %114, label %125

114:                                              ; preds = %107, %89
  %115 = phi i64 [ %108, %107 ], [ %90, %89 ]
  %116 = and i64 %115, 65535
  %117 = icmp eq i64 %116, 14
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #21
  br label %141

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %122 = load i32, ptr %121, align 4
  %123 = lshr i32 %122, 16
  %124 = and i32 %123, 255
  br label %141

125:                                              ; preds = %107
  %126 = and i64 %108, 65535
  %127 = icmp eq i64 %126, 14
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #21
  br label %135

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %132 = load i32, ptr %131, align 4
  %133 = lshr i32 %132, 16
  %134 = and i32 %133, 255
  br label %135

135:                                              ; preds = %130, %128
  %136 = phi i32 [ %129, %128 ], [ %134, %130 ]
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %137
  %139 = load i8, ptr %138, align 1, !tbaa !462
  %140 = zext i8 %139 to i32
  br label %141

141:                                              ; preds = %118, %120, %135
  %142 = phi i32 [ %140, %135 ], [ %119, %118 ], [ %124, %120 ]
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %143
  %145 = load i8, ptr %144, align 1, !tbaa !462
  %146 = icmp eq i8 %145, 9
  %147 = load i64, ptr %1, align 8
  %148 = and i64 %147, 65535
  %149 = icmp eq i64 %148, 14
  br i1 %146, label %150, label %211

150:                                              ; preds = %141
  br i1 %149, label %151, label %154

151:                                              ; preds = %150
  %152 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #21
  %153 = load i64, ptr %1, align 8
  br label %159

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %156 = load i32, ptr %155, align 4
  %157 = lshr i32 %156, 16
  %158 = and i32 %157, 255
  br label %159

159:                                              ; preds = %154, %151
  %160 = phi i64 [ %153, %151 ], [ %147, %154 ]
  %161 = phi i32 [ %152, %151 ], [ %158, %154 ]
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !462
  %165 = icmp eq i8 %164, 8
  br i1 %165, label %184, label %166

166:                                              ; preds = %159
  %167 = and i64 %160, 65535
  %168 = icmp eq i64 %167, 14
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #21
  %171 = load i64, ptr %1, align 8
  br label %177

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %174 = load i32, ptr %173, align 4
  %175 = lshr i32 %174, 16
  %176 = and i32 %175, 255
  br label %177

177:                                              ; preds = %172, %169
  %178 = phi i64 [ %171, %169 ], [ %160, %172 ]
  %179 = phi i32 [ %170, %169 ], [ %176, %172 ]
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %180
  %182 = load i8, ptr %181, align 1, !tbaa !462
  %183 = icmp eq i8 %182, 9
  br i1 %183, label %184, label %195

184:                                              ; preds = %177, %159
  %185 = phi i64 [ %178, %177 ], [ %160, %159 ]
  %186 = and i64 %185, 65535
  %187 = icmp eq i64 %186, 14
  br i1 %187, label %188, label %190

188:                                              ; preds = %184
  %189 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #21
  br label %272

190:                                              ; preds = %184
  %191 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %192 = load i32, ptr %191, align 4
  %193 = lshr i32 %192, 16
  %194 = and i32 %193, 255
  br label %272

195:                                              ; preds = %177
  %196 = and i64 %178, 65535
  %197 = icmp eq i64 %196, 14
  br i1 %197, label %198, label %200

198:                                              ; preds = %195
  %199 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #21
  br label %205

200:                                              ; preds = %195
  %201 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %202 = load i32, ptr %201, align 4
  %203 = lshr i32 %202, 16
  %204 = and i32 %203, 255
  br label %205

205:                                              ; preds = %200, %198
  %206 = phi i32 [ %199, %198 ], [ %204, %200 ]
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %207
  %209 = load i8, ptr %208, align 1, !tbaa !462
  %210 = zext i8 %209 to i32
  br label %272

211:                                              ; preds = %141
  br i1 %149, label %212, label %215

212:                                              ; preds = %211
  %213 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #21
  %214 = load i64, ptr %1, align 8
  br label %220

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %217 = load i32, ptr %216, align 4
  %218 = lshr i32 %217, 16
  %219 = and i32 %218, 255
  br label %220

220:                                              ; preds = %215, %212
  %221 = phi i64 [ %214, %212 ], [ %147, %215 ]
  %222 = phi i32 [ %213, %212 ], [ %219, %215 ]
  %223 = zext i32 %222 to i64
  %224 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %223
  %225 = load i8, ptr %224, align 1, !tbaa !462
  %226 = icmp eq i8 %225, 8
  br i1 %226, label %245, label %227

227:                                              ; preds = %220
  %228 = and i64 %221, 65535
  %229 = icmp eq i64 %228, 14
  br i1 %229, label %230, label %233

230:                                              ; preds = %227
  %231 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #21
  %232 = load i64, ptr %1, align 8
  br label %238

233:                                              ; preds = %227
  %234 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %235 = load i32, ptr %234, align 4
  %236 = lshr i32 %235, 16
  %237 = and i32 %236, 255
  br label %238

238:                                              ; preds = %233, %230
  %239 = phi i64 [ %232, %230 ], [ %221, %233 ]
  %240 = phi i32 [ %231, %230 ], [ %237, %233 ]
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %241
  %243 = load i8, ptr %242, align 1, !tbaa !462
  %244 = icmp eq i8 %243, 9
  br i1 %244, label %245, label %256, !prof !657

245:                                              ; preds = %238, %220
  %246 = phi i64 [ %239, %238 ], [ %221, %220 ]
  %247 = and i64 %246, 65535
  %248 = icmp eq i64 %247, 14
  br i1 %248, label %249, label %251

249:                                              ; preds = %245
  %250 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #21
  br label %272

251:                                              ; preds = %245
  %252 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %253 = load i32, ptr %252, align 4
  %254 = lshr i32 %253, 16
  %255 = and i32 %254, 255
  br label %272

256:                                              ; preds = %238
  %257 = and i64 %239, 65535
  %258 = icmp eq i64 %257, 14
  br i1 %258, label %259, label %261

259:                                              ; preds = %256
  %260 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #21
  br label %266

261:                                              ; preds = %256
  %262 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %263 = load i32, ptr %262, align 4
  %264 = lshr i32 %263, 16
  %265 = and i32 %264, 255
  br label %266

266:                                              ; preds = %261, %259
  %267 = phi i32 [ %260, %259 ], [ %265, %261 ]
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %268
  %270 = load i8, ptr %269, align 1, !tbaa !462
  %271 = zext i8 %270 to i32
  br label %272

272:                                              ; preds = %266, %251, %249, %205, %190, %188
  %273 = phi i32 [ %210, %205 ], [ %189, %188 ], [ %194, %190 ], [ %271, %266 ], [ %250, %249 ], [ %255, %251 ]
  %274 = add i32 %273, -38
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %275
  %277 = load ptr, ptr %276, align 8, !tbaa !458
  %278 = getelementptr inbounds %struct.real_format, ptr %277, i64 0, i32 12
  %279 = load i8, ptr %278, align 1, !tbaa !658
  %280 = icmp eq i8 %279, 0
  %281 = icmp ne i32 %2, 0
  %282 = and i1 %281, %280
  br i1 %282, label %285, label %287, !prof !515

283:                                              ; preds = %69
  %284 = icmp eq i32 %2, 0
  br i1 %284, label %287, label %285

285:                                              ; preds = %272, %283
  %286 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.728) #21
  br label %287

287:                                              ; preds = %285, %283, %272
  call void @real_inf(ptr noundef nonnull %4) #21
  %288 = call ptr @build_real(ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.real_value) align 8 %4) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  ret ptr %288
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_classify_type(ptr noundef readonly %0) unnamed_addr #3 !prof !449 !PGOFuncName !660 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !462
  %6 = tail call fastcc i32 @type_to_class(ptr noundef %5) #19, !range !661
  %7 = sext i32 %6 to i64
  br label %8

8:                                                ; preds = %1, %3
  %9 = phi i64 [ %7, %3 ], [ -1, %1 ]
  %10 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %9) #21
  ret ptr %10
}

; Function Attrs: optsize
declare zeroext i8 @pedwarn(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare void @real_inf(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @build_real(ptr noundef, ptr noundef byval(%struct.real_value) align 8) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @type_to_class(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !449 !PGOFuncName !662 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %23 [
    i16 19, label %24
    i16 8, label %4
    i16 6, label %5
    i16 7, label %6
    i16 10, label %7
    i16 12, label %8
    i16 5, label %9
    i16 9, label %10
    i16 13, label %11
    i16 20, label %12
    i16 21, label %13
    i16 16, label %14
    i16 17, label %15
    i16 18, label %15
    i16 15, label %16
    i16 22, label %22
  ]

4:                                                ; preds = %1
  br label %24

5:                                                ; preds = %1
  br label %24

6:                                                ; preds = %1
  br label %24

7:                                                ; preds = %1
  br label %24

8:                                                ; preds = %1
  br label %24

9:                                                ; preds = %1
  br label %24

10:                                               ; preds = %1
  br label %24

11:                                               ; preds = %1
  br label %24

12:                                               ; preds = %1
  br label %24

13:                                               ; preds = %1
  br label %24

14:                                               ; preds = %1
  br label %24

15:                                               ; preds = %1, %1
  br label %24

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 16777216
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 14, i32 15
  br label %24

22:                                               ; preds = %1
  br label %24

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %1, %23, %22, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4
  %25 = phi i32 [ -1, %23 ], [ 16, %22 ], [ %21, %16 ], [ 13, %15 ], [ 12, %14 ], [ 11, %13 ], [ 10, %12 ], [ 9, %11 ], [ 8, %10 ], [ 7, %9 ], [ 6, %8 ], [ 5, %7 ], [ 4, %6 ], [ 3, %5 ], [ 1, %4 ], [ 0, %1 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_constant_p(ptr noundef %0) unnamed_addr #3 !prof !663 !PGOFuncName !664 {
  %2 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #21
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !469
  %7 = icmp eq i32 %6, 1
  %8 = and i64 %3, 196607
  %9 = icmp eq i64 %8, 131123
  %10 = or i1 %7, %9
  br i1 %10, label %11, label %13, !prof !665

11:                                               ; preds = %1
  %12 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !458
  br label %53

13:                                               ; preds = %1
  %14 = icmp eq i64 %4, 121
  br i1 %14, label %15, label %33, !prof !666

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !462
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %33 [
    i16 28, label %31
    i16 45, label %20
  ], !prof !667

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !462
  %23 = tail call i32 @integer_zerop(ptr noundef %22) #21
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !462
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 28
  br i1 %30, label %31, label %33

31:                                               ; preds = %25, %15
  %32 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !458
  br label %53

33:                                               ; preds = %20, %25, %15, %13
  %34 = load i64, ptr %2, align 8
  %35 = and i64 %34, 65536
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %51, !prof !668

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !462
  %40 = load i64, ptr %39, align 8
  %41 = trunc i64 %40 to i16
  switch i16 %41, label %42 [
    i16 15, label %51
    i16 16, label %51
    i16 17, label %51
    i16 18, label %51
    i16 10, label %51
  ], !prof !669

42:                                               ; preds = %37
  %43 = and i64 %40, 65535
  %44 = icmp eq i64 %43, 12
  %45 = load ptr, ptr @cfun, align 8
  %46 = icmp eq ptr %45, null
  %47 = select i1 %44, i1 true, i1 %46
  %48 = load i32, ptr @folding_initializer, align 4
  %49 = icmp ne i32 %48, 0
  %50 = select i1 %47, i1 true, i1 %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %37, %37, %37, %37, %37, %42, %33
  %52 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !458
  br label %53

53:                                               ; preds = %31, %42, %51, %11
  %54 = phi ptr [ %12, %11 ], [ %32, %31 ], [ %52, %51 ], [ null, %42 ]
  ret ptr %54
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_strlen(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 !prof !670 !PGOFuncName !671 {
  %4 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 10) #19, !range !451
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6, !prof !672

6:                                                ; preds = %3
  %7 = tail call ptr @c_strlen(ptr noundef %2, i32 noundef 0) #19
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !673

9:                                                ; preds = %6
  %10 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %7) #21
  br label %11

11:                                               ; preds = %9, %6, %3
  %12 = phi ptr [ null, %3 ], [ %10, %9 ], [ null, %6 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_fabs(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 !prof !449 !PGOFuncName !674 {
  %4 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 9) #19, !range !451
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %2, ptr noundef %1) #21
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 24
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = tail call ptr @fold_abs_const(ptr noundef nonnull %7, ptr noundef %2) #21
  br label %15

13:                                               ; preds = %6
  %14 = tail call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 82, ptr noundef %2, ptr noundef nonnull %7) #21
  br label %15

15:                                               ; preds = %3, %13, %11
  %16 = phi ptr [ %12, %11 ], [ %14, %13 ], [ null, %3 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_abs(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 !prof !675 !PGOFuncName !676 {
  %4 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 8) #19, !range !451
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %15, label %6, !prof !677

6:                                                ; preds = %3
  %7 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %2, ptr noundef %1) #21
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 23
  br i1 %10, label %11, label %13, !prof !677

11:                                               ; preds = %6
  %12 = tail call ptr @fold_abs_const(ptr noundef nonnull %7, ptr noundef %2) #21
  br label %15

13:                                               ; preds = %6
  %14 = tail call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 82, ptr noundef %2, ptr noundef nonnull %7) #21
  br label %15

15:                                               ; preds = %3, %13, %11
  %16 = phi ptr [ %12, %11 ], [ %14, %13 ], [ null, %3 ]
  ret ptr %16
}

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @non_lvalue_loc(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_carg(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 !prof !449 !PGOFuncName !678 {
  %4 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 13) #19, !range !451
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !462
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !462
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 9
  br i1 %13, label %14, label %22

14:                                               ; preds = %6
  %15 = tail call ptr @mathfn_built_in(ptr noundef %2, i32 noundef 13) #19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = tail call fastcc ptr @builtin_save_expr(ptr noundef nonnull %1) #19
  %19 = tail call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 43, ptr noundef %2, ptr noundef %18) #21
  %20 = tail call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 44, ptr noundef %2, ptr noundef %18) #21
  %21 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %15, i32 noundef 2, ptr noundef %20, ptr noundef %19) #19
  br label %22

22:                                               ; preds = %14, %3, %6, %17
  %23 = phi ptr [ %21, %17 ], [ null, %6 ], [ null, %3 ], [ null, %14 ]
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_nan(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 !prof !654 !PGOFuncName !679 {
  %4 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  %5 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %0, i32 noundef 10) #19, !range !451
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %27, label %7, !prof !656

7:                                                ; preds = %3
  %8 = tail call fastcc ptr @c_getstr(ptr noundef %0) #19
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10, !prof !656

10:                                               ; preds = %7
  %11 = load i64, ptr %1, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 14
  br i1 %13, label %14, label %16, !prof !656

14:                                               ; preds = %10
  %15 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #21
  br label %21

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = lshr i32 %18, 16
  %20 = and i32 %19, 255
  br label %21

21:                                               ; preds = %16, %14
  %22 = phi i32 [ %15, %14 ], [ %20, %16 ]
  %23 = call zeroext i8 @real_nan(ptr noundef nonnull %4, ptr noundef nonnull %8, i32 noundef %2, i32 noundef %22) #21
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25, !prof !656

25:                                               ; preds = %21
  %26 = call ptr @build_real(ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.real_value) align 8 %4) #21
  br label %27

27:                                               ; preds = %21, %7, %3, %25
  %28 = phi ptr [ %26, %25 ], [ null, %3 ], [ null, %7 ], [ null, %21 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  ret ptr %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_floor(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #3 !prof !449 !PGOFuncName !680 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.real_value, align 8
  %6 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 9) #19, !range !451
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %51, label %8

8:                                                ; preds = %3
  %9 = load i64, ptr %2, align 8
  %10 = and i64 %9, 134283263
  %11 = icmp eq i64 %10, 24
  br i1 %11, label %12, label %39

12:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  %13 = getelementptr inbounds %struct.tree_real_cst, ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !462
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false), !tbaa.struct !681
  %15 = call zeroext i8 @real_isnan(ptr noundef nonnull %4) #21
  %16 = icmp eq i8 %15, 0
  %17 = load i32, ptr @flag_errno_math, align 4
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %39

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !462
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !462
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 14
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = call i32 @vector_type_mode(ptr noundef nonnull %25) #21
  br label %36

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.tree_type, ptr %25, i64 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = lshr i32 %33, 16
  %35 = and i32 %34, 255
  br label %36

36:                                               ; preds = %29, %31
  %37 = phi i32 [ %30, %29 ], [ %35, %31 ]
  call void @real_floor(ptr noundef nonnull %5, i32 noundef %37, ptr noundef nonnull %4) #21
  %38 = call ptr @build_real(ptr noundef nonnull %25, ptr noundef nonnull byval(%struct.real_value) align 8 %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %51

39:                                               ; preds = %20, %8
  %40 = call zeroext i8 @tree_expr_nonnegative_p(ptr noundef nonnull %2) #21
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !462
  %45 = call ptr @mathfn_built_in(ptr noundef %44, i32 noundef 240) #19
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %45, i32 noundef 1, ptr noundef nonnull %2) #19
  br label %51

49:                                               ; preds = %42, %39
  %50 = call fastcc ptr @fold_trunc_transparent_mathfn(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2) #19
  br label %51

51:                                               ; preds = %47, %36, %3, %49
  %52 = phi ptr [ %48, %47 ], [ %50, %49 ], [ %38, %36 ], [ null, %3 ]
  ret ptr %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_ceil(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #3 !prof !449 !PGOFuncName !682 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.real_value, align 8
  %6 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 9) #19, !range !451
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %41, label %8

8:                                                ; preds = %3
  %9 = load i64, ptr %2, align 8
  %10 = and i64 %9, 134283263
  %11 = icmp eq i64 %10, 24
  br i1 %11, label %12, label %39

12:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  %13 = getelementptr inbounds %struct.tree_real_cst, ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !462
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false), !tbaa.struct !681
  %15 = call zeroext i8 @real_isnan(ptr noundef nonnull %4) #21
  %16 = icmp eq i8 %15, 0
  %17 = load i32, ptr @flag_errno_math, align 4
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %39

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !462
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !462
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 14
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = call i32 @vector_type_mode(ptr noundef nonnull %25) #21
  br label %36

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.tree_type, ptr %25, i64 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = lshr i32 %33, 16
  %35 = and i32 %34, 255
  br label %36

36:                                               ; preds = %29, %31
  %37 = phi i32 [ %30, %29 ], [ %35, %31 ]
  call void @real_ceil(ptr noundef nonnull %5, i32 noundef %37, ptr noundef nonnull %4) #21
  %38 = call ptr @build_real(ptr noundef nonnull %25, ptr noundef nonnull byval(%struct.real_value) align 8 %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %41

39:                                               ; preds = %20, %8
  %40 = call fastcc ptr @fold_trunc_transparent_mathfn(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2) #19
  br label %41

41:                                               ; preds = %36, %3, %39
  %42 = phi ptr [ %40, %39 ], [ %38, %36 ], [ null, %3 ]
  ret ptr %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_trunc(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #3 !prof !449 !PGOFuncName !683 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.real_value, align 8
  %6 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 9) #19, !range !451
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %34, label %8

8:                                                ; preds = %3
  %9 = load i64, ptr %2, align 8
  %10 = and i64 %9, 134283263
  %11 = icmp eq i64 %10, 24
  br i1 %11, label %12, label %32

12:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %13 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !462
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !462
  %17 = getelementptr inbounds %struct.tree_real_cst, ptr %2, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !462
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %18, i64 32, i1 false), !tbaa.struct !681
  %19 = load i64, ptr %16, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 14
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = tail call i32 @vector_type_mode(ptr noundef nonnull %16) #21
  br label %29

24:                                               ; preds = %12
  %25 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 255
  br label %29

29:                                               ; preds = %24, %22
  %30 = phi i32 [ %23, %22 ], [ %28, %24 ]
  call void @real_trunc(ptr noundef nonnull %4, i32 noundef %30, ptr noundef nonnull %5) #21
  %31 = call ptr @build_real(ptr noundef nonnull %16, ptr noundef nonnull byval(%struct.real_value) align 8 %4) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %34

32:                                               ; preds = %8
  %33 = tail call fastcc ptr @fold_trunc_transparent_mathfn(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2) #19
  br label %34

34:                                               ; preds = %3, %32, %29
  %35 = phi ptr [ %33, %32 ], [ %31, %29 ], [ null, %3 ]
  ret ptr %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_round(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #3 !prof !449 !PGOFuncName !684 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.real_value, align 8
  %6 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 9) #19, !range !451
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %41, label %8

8:                                                ; preds = %3
  %9 = load i64, ptr %2, align 8
  %10 = and i64 %9, 134283263
  %11 = icmp eq i64 %10, 24
  br i1 %11, label %12, label %39

12:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  %13 = getelementptr inbounds %struct.tree_real_cst, ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !462
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false), !tbaa.struct !681
  %15 = call zeroext i8 @real_isnan(ptr noundef nonnull %4) #21
  %16 = icmp eq i8 %15, 0
  %17 = load i32, ptr @flag_errno_math, align 4
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %39

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !462
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !462
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 14
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = call i32 @vector_type_mode(ptr noundef nonnull %25) #21
  br label %36

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.tree_type, ptr %25, i64 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = lshr i32 %33, 16
  %35 = and i32 %34, 255
  br label %36

36:                                               ; preds = %29, %31
  %37 = phi i32 [ %30, %29 ], [ %35, %31 ]
  call void @real_round(ptr noundef nonnull %5, i32 noundef %37, ptr noundef nonnull %4) #21
  %38 = call ptr @build_real(ptr noundef nonnull %25, ptr noundef nonnull byval(%struct.real_value) align 8 %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %41

39:                                               ; preds = %20, %8
  %40 = call fastcc ptr @fold_trunc_transparent_mathfn(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2) #19
  br label %41

41:                                               ; preds = %36, %3, %39
  %42 = phi ptr [ %40, %39 ], [ %38, %36 ], [ null, %3 ]
  ret ptr %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_trunc_transparent_mathfn(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #3 !prof !449 !PGOFuncName !685 {
  %4 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 2047
  %7 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 9) #19, !range !451
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %43, label %9

9:                                                ; preds = %3
  %10 = tail call i32 @builtin_mathfn_code(ptr noundef %2) #19, !range !686
  %11 = icmp eq i32 %6, %10
  br i1 %11, label %43, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr @flag_errno_math, align 4, !tbaa !469
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = tail call fastcc zeroext i8 @integer_valued_real_p(ptr noundef %2) #19
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %15, %12
  %19 = load i32, ptr @optimize, align 4, !tbaa !469
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %43, label %21

21:                                               ; preds = %18
  %22 = tail call ptr @strip_float_extensions(ptr noundef %2) #21
  %23 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !462
  %25 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !462
  %27 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !462
  %29 = getelementptr inbounds %struct.tree_type, ptr %28, i64 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 1023
  %32 = getelementptr inbounds %struct.tree_type, ptr %26, i64 0, i32 6
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 1023
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %21
  %37 = tail call ptr @mathfn_built_in(ptr noundef nonnull %28, i32 noundef %6) #19
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef nonnull %28, ptr noundef nonnull %22) #21
  %41 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %37, i32 noundef 1, ptr noundef %40) #19
  %42 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef nonnull %26, ptr noundef %41) #21
  br label %43

43:                                               ; preds = %21, %36, %18, %39, %15, %9, %3
  %44 = phi ptr [ %42, %39 ], [ null, %3 ], [ %2, %9 ], [ %2, %15 ], [ null, %18 ], [ null, %36 ], [ null, %21 ]
  ret ptr %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_int_roundingfn(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #3 !prof !449 !PGOFuncName !687 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.real_value, align 8
  %9 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 9) #19, !range !451
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %96, label %11

11:                                               ; preds = %3
  %12 = load i64, ptr %2, align 8
  %13 = and i64 %12, 134283263
  %14 = icmp eq i64 %13, 24
  br i1 %14, label %15, label %81

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  %16 = getelementptr inbounds %struct.tree_real_cst, ptr %2, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !462
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %17, i64 32, i1 false), !tbaa.struct !681
  %18 = call zeroext i8 @real_isfinite(ptr noundef nonnull %4) #21
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %81

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !462
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !462
  %26 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !462
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #20
  %28 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 2047
  switch i32 %30, label %70 [
    i32 117, label %31
    i32 118, label %31
    i32 119, label %31
    i32 129, label %31
    i32 130, label %31
    i32 131, label %31
    i32 111, label %44
    i32 112, label %44
    i32 113, label %44
    i32 126, label %44
    i32 127, label %44
    i32 128, label %44
    i32 156, label %57
    i32 157, label %57
    i32 158, label %57
    i32 135, label %57
    i32 136, label %57
    i32 137, label %57
  ]

31:                                               ; preds = %21, %21, %21, %21, %21, %21
  %32 = load i64, ptr %27, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 14
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @vector_type_mode(ptr noundef nonnull %27) #21
  br label %42

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.tree_type, ptr %27, i64 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 255
  br label %42

42:                                               ; preds = %37, %35
  %43 = phi i32 [ %36, %35 ], [ %41, %37 ]
  call void @real_floor(ptr noundef nonnull %8, i32 noundef %43, ptr noundef nonnull %4) #21
  br label %71

44:                                               ; preds = %21, %21, %21, %21, %21, %21
  %45 = load i64, ptr %27, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 14
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 @vector_type_mode(ptr noundef nonnull %27) #21
  br label %55

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.tree_type, ptr %27, i64 0, i32 6
  %52 = load i32, ptr %51, align 4
  %53 = lshr i32 %52, 16
  %54 = and i32 %53, 255
  br label %55

55:                                               ; preds = %50, %48
  %56 = phi i32 [ %49, %48 ], [ %54, %50 ]
  call void @real_ceil(ptr noundef nonnull %8, i32 noundef %56, ptr noundef nonnull %4) #21
  br label %71

57:                                               ; preds = %21, %21, %21, %21, %21, %21
  %58 = load i64, ptr %27, align 8
  %59 = and i64 %58, 65535
  %60 = icmp eq i64 %59, 14
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = call i32 @vector_type_mode(ptr noundef nonnull %27) #21
  br label %68

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.tree_type, ptr %27, i64 0, i32 6
  %65 = load i32, ptr %64, align 4
  %66 = lshr i32 %65, 16
  %67 = and i32 %66, 255
  br label %68

68:                                               ; preds = %63, %61
  %69 = phi i32 [ %62, %61 ], [ %67, %63 ]
  call void @real_round(ptr noundef nonnull %8, i32 noundef %69, ptr noundef nonnull %4) #21
  br label %71

70:                                               ; preds = %21
  call void @fancy_abort(ptr noundef nonnull @.str.721, i32 noundef 7529, ptr noundef nonnull @.str.722) #21
  br label %71

71:                                               ; preds = %70, %68, %55, %42
  call void @real_to_integer2(ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %8) #21
  %72 = load i64, ptr %7, align 8, !tbaa !453
  %73 = load i64, ptr %6, align 8, !tbaa !453
  %74 = call i32 @fit_double_type(i64 noundef %72, i64 noundef %73, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %25) #21
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %81

77:                                               ; preds = %71
  %78 = load i64, ptr %5, align 8, !tbaa !453
  %79 = load i64, ptr %6, align 8, !tbaa !453
  %80 = call ptr @build_int_cst_wide(ptr noundef %25, i64 noundef %78, i64 noundef %79) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %96

81:                                               ; preds = %76, %20, %11
  %82 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, 2047
  switch i32 %84, label %94 [
    i32 117, label %85
    i32 118, label %85
    i32 119, label %85
    i32 129, label %85
    i32 130, label %85
    i32 131, label %85
  ]

85:                                               ; preds = %81, %81, %81, %81, %81, %81
  %86 = call zeroext i8 @tree_expr_nonnegative_p(ptr noundef nonnull %2) #21
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !462
  %91 = getelementptr inbounds %struct.tree_common, ptr %90, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !462
  %93 = call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 77, ptr noundef %92, ptr noundef nonnull %2) #21
  br label %96

94:                                               ; preds = %81, %85
  %95 = call fastcc ptr @fold_fixed_mathfn(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) #19
  br label %96

96:                                               ; preds = %77, %3, %94, %88
  %97 = phi ptr [ %95, %94 ], [ %93, %88 ], [ %80, %77 ], [ null, %3 ]
  ret ptr %97
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_fixed_mathfn(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #3 !prof !449 !PGOFuncName !688 {
  %4 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 2047
  %7 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 9) #19, !range !451
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %71, label %9

9:                                                ; preds = %3
  %10 = load i32, ptr @flag_errno_math, align 4, !tbaa !469
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = tail call fastcc zeroext i8 @integer_valued_real_p(ptr noundef %2) #19
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !462
  %18 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !462
  %20 = tail call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 77, ptr noundef %19, ptr noundef %2) #21
  br label %71

21:                                               ; preds = %12, %9
  %22 = load i32, ptr @optimize, align 4, !tbaa !469
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !462
  %27 = tail call ptr @strip_float_extensions(ptr noundef %2) #21
  %28 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !462
  %30 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 1023
  %33 = getelementptr inbounds %struct.tree_type, ptr %26, i64 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 1023
  %36 = icmp ult i32 %32, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %24
  %38 = tail call ptr @mathfn_built_in(ptr noundef nonnull %29, i32 noundef %6) #19
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef nonnull %29, ptr noundef nonnull %27) #21
  %42 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %38, i32 noundef 1, ptr noundef %41) #19
  br label %71

43:                                               ; preds = %24, %37, %21
  %44 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8, !tbaa !458
  %45 = getelementptr inbounds %struct.tree_type, ptr %44, i64 0, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !458
  %48 = getelementptr inbounds %struct.tree_type, ptr %47, i64 0, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = xor i32 %49, %46
  %51 = and i32 %50, 1023
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %43
  %54 = add nsw i32 %6, -126
  %55 = icmp ult i32 %54, 12
  br i1 %55, label %56, label %71

56:                                               ; preds = %53
  %57 = zext nneg i32 %54 to i64
  %58 = getelementptr inbounds [12 x i32], ptr @switch.table.fold_fixed_mathfn, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !462
  %62 = tail call ptr @mathfn_built_in(ptr noundef %61, i32 noundef %59) #19
  %63 = icmp eq ptr %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %56
  %65 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %62, i32 noundef 1, ptr noundef nonnull %2) #19
  %66 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !462
  %68 = getelementptr inbounds %struct.tree_common, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !462
  %70 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %69, ptr noundef %65) #21
  br label %71

71:                                               ; preds = %53, %56, %43, %64, %40, %3, %15
  %72 = phi ptr [ %70, %64 ], [ %42, %40 ], [ %20, %15 ], [ null, %3 ], [ null, %43 ], [ null, %56 ], [ null, %53 ]
  ret ptr %72
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_bswap(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #3 !prof !689 !PGOFuncName !690 {
  %3 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 8) #19, !range !451
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %71, label %5, !prof !691

5:                                                ; preds = %2
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 134283263
  %8 = icmp eq i64 %7, 23
  br i1 %8, label %9, label %71, !prof !692

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !462
  %12 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1023
  %15 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !462
  %17 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !462
  %19 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 2047
  %22 = add nsw i32 %21, -419
  %23 = icmp ult i32 %22, 2
  br i1 %23, label %24, label %53

24:                                               ; preds = %9
  %25 = icmp eq i32 %14, 0
  br i1 %25, label %58, label %26

26:                                               ; preds = %24
  %27 = zext nneg i32 %14 to i64
  br label %28

28:                                               ; preds = %26, %48
  %29 = phi i64 [ 0, %26 ], [ %51, %48 ]
  %30 = phi i64 [ 0, %26 ], [ %50, %48 ]
  %31 = phi i64 [ 0, %26 ], [ %49, %48 ]
  %32 = sub nsw i64 %27, %29
  %33 = icmp ult i64 %29, 64
  %34 = lshr i64 %16, %29
  %35 = add nsw i64 %29, -64
  %36 = ashr i64 %18, %35
  %37 = select i1 %33, i64 %34, i64 %36
  %38 = and i64 %37, 255
  %39 = icmp slt i64 %32, 72
  br i1 %39, label %40, label %44

40:                                               ; preds = %28
  %41 = add nsw i64 %32, -8
  %42 = shl i64 %38, %41
  %43 = or i64 %42, %31
  br label %48

44:                                               ; preds = %28
  %45 = add nsw i64 %32, -72
  %46 = shl i64 %38, %45
  %47 = or i64 %46, %30
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i64 [ %43, %40 ], [ %31, %44 ]
  %50 = phi i64 [ %30, %40 ], [ %47, %44 ]
  %51 = add nuw nsw i64 %29, 8
  %52 = icmp ult i64 %51, %27
  br i1 %52, label %28, label %54, !llvm.loop !693

53:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.721, i32 noundef 7692, ptr noundef nonnull @.str.722) #21
  br label %54

54:                                               ; preds = %48, %53
  %55 = phi i64 [ 0, %53 ], [ %49, %48 ]
  %56 = phi i64 [ 0, %53 ], [ %50, %48 ]
  %57 = icmp ult i32 %14, 64
  br i1 %57, label %58, label %65

58:                                               ; preds = %24, %54
  %59 = phi i64 [ %55, %54 ], [ 0, %24 ]
  %60 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !462
  %62 = getelementptr inbounds %struct.tree_common, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !462
  %64 = tail call ptr @build_int_cst(ptr noundef %63, i64 noundef %59) #21
  br label %71

65:                                               ; preds = %54
  %66 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !462
  %68 = getelementptr inbounds %struct.tree_common, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !462
  %70 = tail call ptr @build_int_cst_wide(ptr noundef %69, i64 noundef %55, i64 noundef %56) #21
  br label %71

71:                                               ; preds = %5, %58, %65, %2
  %72 = phi ptr [ null, %2 ], [ %64, %58 ], [ %70, %65 ], [ null, %5 ]
  ret ptr %72
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_bitop(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #3 !prof !694 !PGOFuncName !695 {
  %3 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 8) #19, !range !451
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %131, label %5, !prof !696

5:                                                ; preds = %2
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 134283263
  %8 = icmp eq i64 %7, 23
  br i1 %8, label %9, label %131, !prof !697

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !462
  %12 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1023
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !462
  %18 = icmp ugt i32 %14, 64
  br i1 %18, label %19, label %24, !prof !698

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !462
  %22 = icmp ult i32 %14, 128
  %23 = select i1 %22, i64 0, i64 %21
  br label %30

24:                                               ; preds = %9
  %25 = icmp eq i32 %14, 64
  br i1 %25, label %30, label %26, !prof !698

26:                                               ; preds = %24
  %27 = shl nsw i64 -1, %15
  %28 = xor i64 %27, -1
  %29 = and i64 %17, %28
  br label %30

30:                                               ; preds = %19, %24, %26
  %31 = phi i64 [ 0, %26 ], [ 0, %24 ], [ %23, %19 ]
  %32 = phi i64 [ %29, %26 ], [ %17, %24 ], [ %17, %19 ]
  %33 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 2047
  switch i32 %35, label %123 [
    i32 449, label %36
    i32 451, label %36
    i32 452, label %36
    i32 424, label %52
    i32 426, label %52
    i32 427, label %52
    i32 429, label %67
    i32 431, label %67
    i32 432, label %67
    i32 497, label %82
    i32 499, label %82
    i32 500, label %82
    i32 493, label %101
    i32 495, label %101
    i32 496, label %101
  ], !prof !699

36:                                               ; preds = %30, %30, %30
  %37 = icmp eq i64 %32, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %36
  %39 = sub i64 0, %32
  %40 = and i64 %32, %39
  %41 = tail call i32 @exact_log2(i64 noundef %40) #21
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  br label %124

44:                                               ; preds = %36
  %45 = icmp eq i64 %31, 0
  br i1 %45, label %124, label %46

46:                                               ; preds = %44
  %47 = sub nsw i64 0, %31
  %48 = and i64 %31, %47
  %49 = tail call i32 @exact_log2(i64 noundef %48) #21
  %50 = add nsw i32 %49, 65
  %51 = sext i32 %50 to i64
  br label %124

52:                                               ; preds = %30, %30, %30
  %53 = icmp eq i64 %31, 0
  br i1 %53, label %60, label %54, !prof !700

54:                                               ; preds = %52
  %55 = tail call i32 @floor_log2(i64 noundef %31) #21
  %56 = xor i32 %55, -1
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %15, -64
  %59 = add nsw i64 %58, %57
  br label %124

60:                                               ; preds = %52
  %61 = icmp eq i64 %32, 0
  br i1 %61, label %124, label %62, !prof !701

62:                                               ; preds = %60
  %63 = tail call i32 @floor_log2(i64 noundef %32) #21
  %64 = xor i32 %63, -1
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %15
  br label %124

67:                                               ; preds = %30, %30, %30
  %68 = icmp eq i64 %32, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %67
  %70 = sub i64 0, %32
  %71 = and i64 %32, %70
  %72 = tail call i32 @exact_log2(i64 noundef %71) #21
  %73 = sext i32 %72 to i64
  br label %124

74:                                               ; preds = %67
  %75 = icmp eq i64 %31, 0
  br i1 %75, label %124, label %76

76:                                               ; preds = %74
  %77 = sub nsw i64 0, %31
  %78 = and i64 %31, %77
  %79 = tail call i32 @exact_log2(i64 noundef %78) #21
  %80 = add nsw i32 %79, 64
  %81 = sext i32 %80 to i64
  br label %124

82:                                               ; preds = %30, %30, %30
  %83 = icmp eq i64 %32, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %87, %82
  %85 = phi i64 [ 0, %82 ], [ %90, %87 ]
  %86 = icmp eq i64 %31, 0
  br i1 %86, label %124, label %94

87:                                               ; preds = %82, %87
  %88 = phi i64 [ %92, %87 ], [ %32, %82 ]
  %89 = phi i64 [ %90, %87 ], [ 0, %82 ]
  %90 = add nuw nsw i64 %89, 1
  %91 = add i64 %88, -1
  %92 = and i64 %91, %88
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %84, label %87, !llvm.loop !702

94:                                               ; preds = %84, %94
  %95 = phi i64 [ %97, %94 ], [ %85, %84 ]
  %96 = phi i64 [ %99, %94 ], [ %31, %84 ]
  %97 = add nuw nsw i64 %95, 1
  %98 = add nsw i64 %96, -1
  %99 = and i64 %98, %96
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %124, label %94, !llvm.loop !703

101:                                              ; preds = %30, %30, %30
  %102 = icmp eq i64 %32, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %106, %101
  %104 = phi i64 [ 0, %101 ], [ %109, %106 ]
  %105 = icmp eq i64 %31, 0
  br i1 %105, label %120, label %113

106:                                              ; preds = %101, %106
  %107 = phi i64 [ %111, %106 ], [ %32, %101 ]
  %108 = phi i64 [ %109, %106 ], [ 0, %101 ]
  %109 = add nuw nsw i64 %108, 1
  %110 = add i64 %107, -1
  %111 = and i64 %110, %107
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %103, label %106, !llvm.loop !704

113:                                              ; preds = %103, %113
  %114 = phi i64 [ %116, %113 ], [ %104, %103 ]
  %115 = phi i64 [ %118, %113 ], [ %31, %103 ]
  %116 = add nuw nsw i64 %114, 1
  %117 = add nsw i64 %115, -1
  %118 = and i64 %117, %115
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %113, !llvm.loop !705

120:                                              ; preds = %113, %103
  %121 = phi i64 [ %104, %103 ], [ %116, %113 ]
  %122 = and i64 %121, 1
  br label %124

123:                                              ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.721, i32 noundef 7636, ptr noundef nonnull @.str.722) #21
  unreachable

124:                                              ; preds = %94, %84, %74, %60, %44, %69, %76, %54, %62, %38, %46, %120
  %125 = phi i64 [ %122, %120 ], [ %73, %69 ], [ %81, %76 ], [ %59, %54 ], [ %66, %62 ], [ %43, %38 ], [ %51, %46 ], [ 0, %44 ], [ %15, %60 ], [ %15, %74 ], [ %85, %84 ], [ %97, %94 ]
  %126 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !462
  %128 = getelementptr inbounds %struct.tree_common, ptr %127, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !462
  %130 = tail call ptr @build_int_cst(ptr noundef %129, i64 noundef %125) #21
  br label %131

131:                                              ; preds = %5, %2, %124
  %132 = phi ptr [ %130, %124 ], [ null, %2 ], [ null, %5 ]
  ret ptr %132
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_signbit(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 !prof !449 !PGOFuncName !706 {
  %4 = alloca %struct.real_value, align 8
  %5 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 9) #19, !range !451
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %328, label %7

7:                                                ; preds = %3
  %8 = load i64, ptr %1, align 8
  %9 = and i64 %8, 134283263
  %10 = icmp eq i64 %9, 24
  br i1 %10, label %11, label %20

11:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  %12 = getelementptr inbounds %struct.tree_real_cst, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !462
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !681
  %14 = call zeroext i8 @real_isneg(ptr noundef nonnull %4) #21
  %15 = icmp eq i8 %14, 0
  %16 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16
  %17 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8
  %18 = select i1 %15, ptr %17, ptr %16
  %19 = call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %2, ptr noundef %18) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %328

20:                                               ; preds = %7
  %21 = tail call zeroext i8 @tree_expr_nonnegative_p(ptr noundef nonnull %1) #21
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !458
  %25 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %2, ptr noundef %24, ptr noundef nonnull %1) #21
  br label %328

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !462
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 14
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = tail call i32 @vector_type_mode(ptr noundef nonnull %28) #21
  %34 = load ptr, ptr %27, align 8, !tbaa !462
  br label %40

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.tree_type, ptr %28, i64 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 255
  br label %40

40:                                               ; preds = %35, %32
  %41 = phi ptr [ %34, %32 ], [ %28, %35 ]
  %42 = phi i32 [ %33, %32 ], [ %39, %35 ]
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %43
  %45 = load i8, ptr %44, align 1, !tbaa !462
  %46 = icmp eq i8 %45, 8
  br i1 %46, label %104, label %47

47:                                               ; preds = %40
  %48 = load i64, ptr %41, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 14
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = tail call i32 @vector_type_mode(ptr noundef nonnull %41) #21
  %53 = load ptr, ptr %27, align 8, !tbaa !462
  br label %59

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.tree_type, ptr %41, i64 0, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = lshr i32 %56, 16
  %58 = and i32 %57, 255
  br label %59

59:                                               ; preds = %54, %51
  %60 = phi ptr [ %53, %51 ], [ %41, %54 ]
  %61 = phi i32 [ %52, %51 ], [ %58, %54 ]
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !462
  %65 = icmp eq i8 %64, 9
  br i1 %65, label %104, label %66

66:                                               ; preds = %59
  %67 = load i64, ptr %60, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 14
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = tail call i32 @vector_type_mode(ptr noundef nonnull %60) #21
  %72 = load ptr, ptr %27, align 8, !tbaa !462
  br label %78

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.tree_type, ptr %60, i64 0, i32 6
  %75 = load i32, ptr %74, align 4
  %76 = lshr i32 %75, 16
  %77 = and i32 %76, 255
  br label %78

78:                                               ; preds = %73, %70
  %79 = phi ptr [ %72, %70 ], [ %60, %73 ]
  %80 = phi i32 [ %71, %70 ], [ %77, %73 ]
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !462
  %84 = icmp eq i8 %83, 11
  br i1 %84, label %104, label %85

85:                                               ; preds = %78
  %86 = load i64, ptr %79, align 8
  %87 = and i64 %86, 65535
  %88 = icmp eq i64 %87, 14
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = tail call i32 @vector_type_mode(ptr noundef nonnull %79) #21
  %91 = load ptr, ptr %27, align 8, !tbaa !462
  br label %97

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.tree_type, ptr %79, i64 0, i32 6
  %94 = load i32, ptr %93, align 4
  %95 = lshr i32 %94, 16
  %96 = and i32 %95, 255
  br label %97

97:                                               ; preds = %92, %89
  %98 = phi ptr [ %91, %89 ], [ %79, %92 ]
  %99 = phi i32 [ %90, %89 ], [ %96, %92 ]
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !462
  %103 = icmp eq i8 %102, 17
  br i1 %103, label %104, label %324

104:                                              ; preds = %97, %78, %59, %40
  %105 = phi ptr [ %79, %78 ], [ %60, %59 ], [ %41, %40 ], [ %98, %97 ]
  %106 = load i64, ptr %105, align 8
  %107 = and i64 %106, 65535
  %108 = icmp eq i64 %107, 14
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = tail call i32 @vector_type_mode(ptr noundef nonnull %105) #21
  %111 = load ptr, ptr %27, align 8, !tbaa !462
  br label %117

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.tree_type, ptr %105, i64 0, i32 6
  %114 = load i32, ptr %113, align 4
  %115 = lshr i32 %114, 16
  %116 = and i32 %115, 255
  br label %117

117:                                              ; preds = %112, %109
  %118 = phi ptr [ %111, %109 ], [ %105, %112 ]
  %119 = phi i32 [ %110, %109 ], [ %116, %112 ]
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %120
  %122 = load i8, ptr %121, align 1, !tbaa !462
  %123 = icmp eq i8 %122, 8
  br i1 %123, label %143, label %124

124:                                              ; preds = %117
  %125 = load i64, ptr %118, align 8
  %126 = and i64 %125, 65535
  %127 = icmp eq i64 %126, 14
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = tail call i32 @vector_type_mode(ptr noundef nonnull %118) #21
  %130 = load ptr, ptr %27, align 8, !tbaa !462
  br label %136

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.tree_type, ptr %118, i64 0, i32 6
  %133 = load i32, ptr %132, align 4
  %134 = lshr i32 %133, 16
  %135 = and i32 %134, 255
  br label %136

136:                                              ; preds = %131, %128
  %137 = phi ptr [ %130, %128 ], [ %118, %131 ]
  %138 = phi i32 [ %129, %128 ], [ %135, %131 ]
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !462
  %142 = icmp eq i8 %141, 9
  br i1 %142, label %143, label %155

143:                                              ; preds = %136, %117
  %144 = phi ptr [ %137, %136 ], [ %118, %117 ]
  %145 = load i64, ptr %144, align 8
  %146 = and i64 %145, 65535
  %147 = icmp eq i64 %146, 14
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = tail call i32 @vector_type_mode(ptr noundef nonnull %144) #21
  br label %172

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.tree_type, ptr %144, i64 0, i32 6
  %152 = load i32, ptr %151, align 4
  %153 = lshr i32 %152, 16
  %154 = and i32 %153, 255
  br label %172

155:                                              ; preds = %136
  %156 = load i64, ptr %137, align 8
  %157 = and i64 %156, 65535
  %158 = icmp eq i64 %157, 14
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  %160 = tail call i32 @vector_type_mode(ptr noundef nonnull %137) #21
  br label %166

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.tree_type, ptr %137, i64 0, i32 6
  %163 = load i32, ptr %162, align 4
  %164 = lshr i32 %163, 16
  %165 = and i32 %164, 255
  br label %166

166:                                              ; preds = %161, %159
  %167 = phi i32 [ %160, %159 ], [ %165, %161 ]
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %168
  %170 = load i8, ptr %169, align 1, !tbaa !462
  %171 = zext i8 %170 to i32
  br label %172

172:                                              ; preds = %148, %150, %166
  %173 = phi i32 [ %171, %166 ], [ %149, %148 ], [ %154, %150 ]
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %174
  %176 = load i8, ptr %175, align 1, !tbaa !462
  %177 = icmp eq i8 %176, 9
  %178 = load ptr, ptr %27, align 8, !tbaa !462
  %179 = load i64, ptr %178, align 8
  %180 = and i64 %179, 65535
  %181 = icmp eq i64 %180, 14
  br i1 %177, label %182, label %246

182:                                              ; preds = %172
  br i1 %181, label %183, label %186

183:                                              ; preds = %182
  %184 = tail call i32 @vector_type_mode(ptr noundef nonnull %178) #21
  %185 = load ptr, ptr %27, align 8, !tbaa !462
  br label %191

186:                                              ; preds = %182
  %187 = getelementptr inbounds %struct.tree_type, ptr %178, i64 0, i32 6
  %188 = load i32, ptr %187, align 4
  %189 = lshr i32 %188, 16
  %190 = and i32 %189, 255
  br label %191

191:                                              ; preds = %186, %183
  %192 = phi ptr [ %185, %183 ], [ %178, %186 ]
  %193 = phi i32 [ %184, %183 ], [ %190, %186 ]
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %194
  %196 = load i8, ptr %195, align 1, !tbaa !462
  %197 = icmp eq i8 %196, 8
  br i1 %197, label %217, label %198

198:                                              ; preds = %191
  %199 = load i64, ptr %192, align 8
  %200 = and i64 %199, 65535
  %201 = icmp eq i64 %200, 14
  br i1 %201, label %202, label %205

202:                                              ; preds = %198
  %203 = tail call i32 @vector_type_mode(ptr noundef nonnull %192) #21
  %204 = load ptr, ptr %27, align 8, !tbaa !462
  br label %210

205:                                              ; preds = %198
  %206 = getelementptr inbounds %struct.tree_type, ptr %192, i64 0, i32 6
  %207 = load i32, ptr %206, align 4
  %208 = lshr i32 %207, 16
  %209 = and i32 %208, 255
  br label %210

210:                                              ; preds = %205, %202
  %211 = phi ptr [ %204, %202 ], [ %192, %205 ]
  %212 = phi i32 [ %203, %202 ], [ %209, %205 ]
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %213
  %215 = load i8, ptr %214, align 1, !tbaa !462
  %216 = icmp eq i8 %215, 9
  br i1 %216, label %217, label %229

217:                                              ; preds = %210, %191
  %218 = phi ptr [ %211, %210 ], [ %192, %191 ]
  %219 = load i64, ptr %218, align 8
  %220 = and i64 %219, 65535
  %221 = icmp eq i64 %220, 14
  br i1 %221, label %222, label %224

222:                                              ; preds = %217
  %223 = tail call i32 @vector_type_mode(ptr noundef nonnull %218) #21
  br label %310

224:                                              ; preds = %217
  %225 = getelementptr inbounds %struct.tree_type, ptr %218, i64 0, i32 6
  %226 = load i32, ptr %225, align 4
  %227 = lshr i32 %226, 16
  %228 = and i32 %227, 255
  br label %310

229:                                              ; preds = %210
  %230 = load i64, ptr %211, align 8
  %231 = and i64 %230, 65535
  %232 = icmp eq i64 %231, 14
  br i1 %232, label %233, label %235

233:                                              ; preds = %229
  %234 = tail call i32 @vector_type_mode(ptr noundef nonnull %211) #21
  br label %240

235:                                              ; preds = %229
  %236 = getelementptr inbounds %struct.tree_type, ptr %211, i64 0, i32 6
  %237 = load i32, ptr %236, align 4
  %238 = lshr i32 %237, 16
  %239 = and i32 %238, 255
  br label %240

240:                                              ; preds = %235, %233
  %241 = phi i32 [ %234, %233 ], [ %239, %235 ]
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %242
  %244 = load i8, ptr %243, align 1, !tbaa !462
  %245 = zext i8 %244 to i32
  br label %310

246:                                              ; preds = %172
  br i1 %181, label %247, label %250

247:                                              ; preds = %246
  %248 = tail call i32 @vector_type_mode(ptr noundef nonnull %178) #21
  %249 = load ptr, ptr %27, align 8, !tbaa !462
  br label %255

250:                                              ; preds = %246
  %251 = getelementptr inbounds %struct.tree_type, ptr %178, i64 0, i32 6
  %252 = load i32, ptr %251, align 4
  %253 = lshr i32 %252, 16
  %254 = and i32 %253, 255
  br label %255

255:                                              ; preds = %250, %247
  %256 = phi ptr [ %249, %247 ], [ %178, %250 ]
  %257 = phi i32 [ %248, %247 ], [ %254, %250 ]
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %258
  %260 = load i8, ptr %259, align 1, !tbaa !462
  %261 = icmp eq i8 %260, 8
  br i1 %261, label %281, label %262

262:                                              ; preds = %255
  %263 = load i64, ptr %256, align 8
  %264 = and i64 %263, 65535
  %265 = icmp eq i64 %264, 14
  br i1 %265, label %266, label %269

266:                                              ; preds = %262
  %267 = tail call i32 @vector_type_mode(ptr noundef nonnull %256) #21
  %268 = load ptr, ptr %27, align 8, !tbaa !462
  br label %274

269:                                              ; preds = %262
  %270 = getelementptr inbounds %struct.tree_type, ptr %256, i64 0, i32 6
  %271 = load i32, ptr %270, align 4
  %272 = lshr i32 %271, 16
  %273 = and i32 %272, 255
  br label %274

274:                                              ; preds = %269, %266
  %275 = phi ptr [ %268, %266 ], [ %256, %269 ]
  %276 = phi i32 [ %267, %266 ], [ %273, %269 ]
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %277
  %279 = load i8, ptr %278, align 1, !tbaa !462
  %280 = icmp eq i8 %279, 9
  br i1 %280, label %281, label %293

281:                                              ; preds = %274, %255
  %282 = phi ptr [ %275, %274 ], [ %256, %255 ]
  %283 = load i64, ptr %282, align 8
  %284 = and i64 %283, 65535
  %285 = icmp eq i64 %284, 14
  br i1 %285, label %286, label %288

286:                                              ; preds = %281
  %287 = tail call i32 @vector_type_mode(ptr noundef nonnull %282) #21
  br label %310

288:                                              ; preds = %281
  %289 = getelementptr inbounds %struct.tree_type, ptr %282, i64 0, i32 6
  %290 = load i32, ptr %289, align 4
  %291 = lshr i32 %290, 16
  %292 = and i32 %291, 255
  br label %310

293:                                              ; preds = %274
  %294 = load i64, ptr %275, align 8
  %295 = and i64 %294, 65535
  %296 = icmp eq i64 %295, 14
  br i1 %296, label %297, label %299

297:                                              ; preds = %293
  %298 = tail call i32 @vector_type_mode(ptr noundef nonnull %275) #21
  br label %304

299:                                              ; preds = %293
  %300 = getelementptr inbounds %struct.tree_type, ptr %275, i64 0, i32 6
  %301 = load i32, ptr %300, align 4
  %302 = lshr i32 %301, 16
  %303 = and i32 %302, 255
  br label %304

304:                                              ; preds = %299, %297
  %305 = phi i32 [ %298, %297 ], [ %303, %299 ]
  %306 = zext i32 %305 to i64
  %307 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %306
  %308 = load i8, ptr %307, align 1, !tbaa !462
  %309 = zext i8 %308 to i32
  br label %310

310:                                              ; preds = %304, %288, %286, %240, %224, %222
  %311 = phi i32 [ %245, %240 ], [ %223, %222 ], [ %228, %224 ], [ %309, %304 ], [ %287, %286 ], [ %292, %288 ]
  %312 = add i32 %311, -38
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %313
  %315 = load ptr, ptr %314, align 8, !tbaa !458
  %316 = getelementptr inbounds %struct.real_format, ptr %315, i64 0, i32 14
  %317 = load i8, ptr %316, align 1, !tbaa !707
  %318 = icmp ne i8 %317, 0
  %319 = load i32, ptr @flag_signed_zeros, align 4
  %320 = icmp ne i32 %319, 0
  %321 = select i1 %318, i1 %320, i1 false
  br i1 %321, label %328, label %322

322:                                              ; preds = %310
  %323 = load ptr, ptr %27, align 8, !tbaa !462
  br label %324

324:                                              ; preds = %322, %97
  %325 = phi ptr [ %323, %322 ], [ %98, %97 ]
  %326 = tail call ptr @build_real(ptr noundef %325, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst0) #21
  %327 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 97, ptr noundef %2, ptr noundef nonnull %1, ptr noundef %326) #21
  br label %328

328:                                              ; preds = %310, %3, %324, %23, %11
  %329 = phi ptr [ %25, %23 ], [ %327, %324 ], [ %19, %11 ], [ null, %3 ], [ null, %310 ]
  ret ptr %329
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_significand(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 !prof !449 !PGOFuncName !708 {
  %4 = alloca %struct.real_value, align 8
  %5 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 9) #19, !range !451
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %73, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @tree_strip_nop_conversions(ptr noundef %1) #21
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 134283263
  %11 = icmp eq i64 %10, 24
  br i1 %11, label %12, label %73

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.tree_real_cst, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !462
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 3
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %2, ptr noundef nonnull %8) #21
  br label %73

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !462
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 14
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = tail call i32 @vector_type_mode(ptr noundef nonnull %22) #21
  br label %33

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.tree_type, ptr %22, i64 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  br label %33

33:                                               ; preds = %28, %26
  %34 = phi i32 [ %27, %26 ], [ %32, %28 ]
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !462
  %38 = icmp eq i8 %37, 9
  %39 = load ptr, ptr %21, align 8, !tbaa !462
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 14
  br i1 %38, label %43, label %51

43:                                               ; preds = %33
  br i1 %42, label %44, label %46

44:                                               ; preds = %43
  %45 = tail call i32 @vector_type_mode(ptr noundef nonnull %39) #21
  br label %59

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = lshr i32 %48, 16
  %50 = and i32 %49, 255
  br label %59

51:                                               ; preds = %33
  br i1 %42, label %52, label %54

52:                                               ; preds = %51
  %53 = tail call i32 @vector_type_mode(ptr noundef nonnull %39) #21
  br label %59

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = lshr i32 %56, 16
  %58 = and i32 %57, 255
  br label %59

59:                                               ; preds = %52, %54, %44, %46
  %60 = phi i32 [ %45, %44 ], [ %50, %46 ], [ %53, %52 ], [ %58, %54 ]
  %61 = add i32 %60, -38
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !458
  %65 = getelementptr inbounds %struct.real_format, ptr %64, i64 0, i32 2
  %66 = load i32, ptr %65, align 8, !tbaa !709
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %73

68:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %14, i64 32, i1 false), !tbaa.struct !681
  %69 = load i32, ptr %4, align 8
  %70 = and i32 %69, 63
  %71 = or disjoint i32 %70, 64
  store i32 %71, ptr %4, align 8
  %72 = tail call ptr @build_real(ptr noundef %2, ptr noundef nonnull byval(%struct.real_value) align 8 %4) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %73

73:                                               ; preds = %18, %68, %7, %59, %3
  %74 = phi ptr [ null, %3 ], [ null, %59 ], [ null, %7 ], [ %19, %18 ], [ %72, %68 ]
  ret ptr %74
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_logb(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 !prof !449 !PGOFuncName !710 {
  %4 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 9) #19, !range !451
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %78, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @tree_strip_nop_conversions(ptr noundef %1) #21
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 134283263
  %10 = icmp eq i64 %9, 24
  br i1 %10, label %11, label %78

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.tree_real_cst, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !462
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 3
  switch i32 %15, label %77 [
    i32 3, label %16
    i32 2, label %16
    i32 0, label %78
    i32 1, label %22
  ]

16:                                               ; preds = %11, %11
  %17 = load i64, ptr %2, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 9
  br i1 %19, label %20, label %78

20:                                               ; preds = %16
  %21 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %7) #21
  br label %78

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !462
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 14
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = tail call i32 @vector_type_mode(ptr noundef nonnull %24) #21
  br label %35

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.tree_type, ptr %24, i64 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = lshr i32 %32, 16
  %34 = and i32 %33, 255
  br label %35

35:                                               ; preds = %30, %28
  %36 = phi i32 [ %29, %28 ], [ %34, %30 ]
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !462
  %40 = icmp eq i8 %39, 9
  %41 = load ptr, ptr %23, align 8, !tbaa !462
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 14
  br i1 %40, label %45, label %53

45:                                               ; preds = %35
  br i1 %44, label %46, label %48

46:                                               ; preds = %45
  %47 = tail call i32 @vector_type_mode(ptr noundef nonnull %41) #21
  br label %61

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.tree_type, ptr %41, i64 0, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = lshr i32 %50, 16
  %52 = and i32 %51, 255
  br label %61

53:                                               ; preds = %35
  br i1 %44, label %54, label %56

54:                                               ; preds = %53
  %55 = tail call i32 @vector_type_mode(ptr noundef nonnull %41) #21
  br label %61

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.tree_type, ptr %41, i64 0, i32 6
  %58 = load i32, ptr %57, align 4
  %59 = lshr i32 %58, 16
  %60 = and i32 %59, 255
  br label %61

61:                                               ; preds = %54, %56, %46, %48
  %62 = phi i32 [ %47, %46 ], [ %52, %48 ], [ %55, %54 ], [ %60, %56 ]
  %63 = add i32 %62, -38
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !458
  %67 = getelementptr inbounds %struct.real_format, ptr %66, i64 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !709
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %78

70:                                               ; preds = %61
  %71 = load i32, ptr %13, align 8
  %72 = ashr i32 %71, 6
  %73 = add nsw i32 %72, -1
  %74 = sext i32 %73 to i64
  %75 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %74) #21
  %76 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %2, ptr noundef %75) #21
  br label %78

77:                                               ; preds = %11
  unreachable

78:                                               ; preds = %11, %16, %20, %70, %6, %61, %3
  %79 = phi ptr [ null, %3 ], [ null, %61 ], [ null, %6 ], [ null, %11 ], [ null, %16 ], [ %21, %20 ], [ %76, %70 ]
  ret ptr %79
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_isascii(i32 noundef %0, ptr noundef %1) unnamed_addr #3 !prof !449 !PGOFuncName !711 {
  %3 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 8) #19, !range !451
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %7 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef -128) #21
  %8 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 89, ptr noundef %6, ptr noundef %1, ptr noundef %7) #21
  %9 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %10 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !458
  %11 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 101, ptr noundef %9, ptr noundef %8, ptr noundef %10) #21
  br label %12

12:                                               ; preds = %2, %5
  %13 = phi ptr [ %11, %5 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_toascii(i32 noundef %0, ptr noundef %1) unnamed_addr #3 !prof !449 !PGOFuncName !712 {
  %3 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 8) #19, !range !451
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %7 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef 127) #21
  %8 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 89, ptr noundef %6, ptr noundef %1, ptr noundef %7) #21
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi ptr [ %8, %5 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_isdigit(i32 noundef %0, ptr noundef %1) unnamed_addr #3 !prof !449 !PGOFuncName !713 {
  %3 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 8) #19, !range !451
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 26), align 8, !tbaa !714
  %7 = tail call i64 %6(i64 noundef 48) #21
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !458
  %11 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %10, ptr noundef %1) #21
  %12 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !458
  %13 = tail call ptr @build_int_cst(ptr noundef %12, i64 noundef %7) #21
  %14 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %12, ptr noundef %11, ptr noundef %13) #21
  %15 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %16 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !458
  %17 = tail call ptr @build_int_cst(ptr noundef %16, i64 noundef 9) #21
  %18 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 98, ptr noundef %15, ptr noundef %14, ptr noundef %17) #21
  br label %19

19:                                               ; preds = %9, %5, %2
  %20 = phi ptr [ null, %2 ], [ %18, %9 ], [ null, %5 ]
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_classify(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #3 !prof !449 !PGOFuncName !715 {
  %5 = alloca %struct.real_value, align 8
  %6 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !462
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !462
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %10 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 9) #19, !range !451
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %1277, label %12

12:                                               ; preds = %4
  switch i32 %3, label %1276 [
    i32 469, label %13
    i32 468, label %329
    i32 467, label %354
    i32 475, label %962
  ]

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !462
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 14
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = tail call i32 @vector_type_mode(ptr noundef nonnull %15) #21
  %21 = load ptr, ptr %14, align 8, !tbaa !462
  br label %27

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.tree_type, ptr %15, i64 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = lshr i32 %24, 16
  %26 = and i32 %25, 255
  br label %27

27:                                               ; preds = %22, %19
  %28 = phi ptr [ %21, %19 ], [ %15, %22 ]
  %29 = phi i32 [ %20, %19 ], [ %26, %22 ]
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !462
  %33 = icmp eq i8 %32, 8
  br i1 %33, label %91, label %34

34:                                               ; preds = %27
  %35 = load i64, ptr %28, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 14
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = tail call i32 @vector_type_mode(ptr noundef nonnull %28) #21
  %40 = load ptr, ptr %14, align 8, !tbaa !462
  br label %46

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.tree_type, ptr %28, i64 0, i32 6
  %43 = load i32, ptr %42, align 4
  %44 = lshr i32 %43, 16
  %45 = and i32 %44, 255
  br label %46

46:                                               ; preds = %41, %38
  %47 = phi ptr [ %40, %38 ], [ %28, %41 ]
  %48 = phi i32 [ %39, %38 ], [ %45, %41 ]
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %49
  %51 = load i8, ptr %50, align 1, !tbaa !462
  %52 = icmp eq i8 %51, 9
  br i1 %52, label %91, label %53

53:                                               ; preds = %46
  %54 = load i64, ptr %47, align 8
  %55 = and i64 %54, 65535
  %56 = icmp eq i64 %55, 14
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = tail call i32 @vector_type_mode(ptr noundef nonnull %47) #21
  %59 = load ptr, ptr %14, align 8, !tbaa !462
  br label %65

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.tree_type, ptr %47, i64 0, i32 6
  %62 = load i32, ptr %61, align 4
  %63 = lshr i32 %62, 16
  %64 = and i32 %63, 255
  br label %65

65:                                               ; preds = %60, %57
  %66 = phi ptr [ %59, %57 ], [ %47, %60 ]
  %67 = phi i32 [ %58, %57 ], [ %64, %60 ]
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !462
  %71 = icmp eq i8 %70, 11
  br i1 %71, label %91, label %72

72:                                               ; preds = %65
  %73 = load i64, ptr %66, align 8
  %74 = and i64 %73, 65535
  %75 = icmp eq i64 %74, 14
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = tail call i32 @vector_type_mode(ptr noundef nonnull %66) #21
  br label %83

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.tree_type, ptr %66, i64 0, i32 6
  %80 = load i32, ptr %79, align 4
  %81 = lshr i32 %80, 16
  %82 = and i32 %81, 255
  br label %83

83:                                               ; preds = %78, %76
  %84 = phi i32 [ %77, %76 ], [ %82, %78 ]
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !462
  %88 = icmp eq i8 %87, 17
  br i1 %88, label %89, label %309

89:                                               ; preds = %83
  %90 = load ptr, ptr %14, align 8, !tbaa !462
  br label %91

91:                                               ; preds = %89, %65, %46, %27
  %92 = phi ptr [ %90, %89 ], [ %66, %65 ], [ %47, %46 ], [ %28, %27 ]
  %93 = load i64, ptr %92, align 8
  %94 = and i64 %93, 65535
  %95 = icmp eq i64 %94, 14
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = tail call i32 @vector_type_mode(ptr noundef nonnull %92) #21
  %98 = load ptr, ptr %14, align 8, !tbaa !462
  br label %104

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.tree_type, ptr %92, i64 0, i32 6
  %101 = load i32, ptr %100, align 4
  %102 = lshr i32 %101, 16
  %103 = and i32 %102, 255
  br label %104

104:                                              ; preds = %99, %96
  %105 = phi ptr [ %98, %96 ], [ %92, %99 ]
  %106 = phi i32 [ %97, %96 ], [ %103, %99 ]
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !462
  %110 = icmp eq i8 %109, 8
  br i1 %110, label %130, label %111

111:                                              ; preds = %104
  %112 = load i64, ptr %105, align 8
  %113 = and i64 %112, 65535
  %114 = icmp eq i64 %113, 14
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = tail call i32 @vector_type_mode(ptr noundef nonnull %105) #21
  %117 = load ptr, ptr %14, align 8, !tbaa !462
  br label %123

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.tree_type, ptr %105, i64 0, i32 6
  %120 = load i32, ptr %119, align 4
  %121 = lshr i32 %120, 16
  %122 = and i32 %121, 255
  br label %123

123:                                              ; preds = %118, %115
  %124 = phi ptr [ %117, %115 ], [ %105, %118 ]
  %125 = phi i32 [ %116, %115 ], [ %122, %118 ]
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %126
  %128 = load i8, ptr %127, align 1, !tbaa !462
  %129 = icmp eq i8 %128, 9
  br i1 %129, label %130, label %142

130:                                              ; preds = %123, %104
  %131 = phi ptr [ %124, %123 ], [ %105, %104 ]
  %132 = load i64, ptr %131, align 8
  %133 = and i64 %132, 65535
  %134 = icmp eq i64 %133, 14
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = tail call i32 @vector_type_mode(ptr noundef nonnull %131) #21
  br label %159

137:                                              ; preds = %130
  %138 = getelementptr inbounds %struct.tree_type, ptr %131, i64 0, i32 6
  %139 = load i32, ptr %138, align 4
  %140 = lshr i32 %139, 16
  %141 = and i32 %140, 255
  br label %159

142:                                              ; preds = %123
  %143 = load i64, ptr %124, align 8
  %144 = and i64 %143, 65535
  %145 = icmp eq i64 %144, 14
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = tail call i32 @vector_type_mode(ptr noundef nonnull %124) #21
  br label %153

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct.tree_type, ptr %124, i64 0, i32 6
  %150 = load i32, ptr %149, align 4
  %151 = lshr i32 %150, 16
  %152 = and i32 %151, 255
  br label %153

153:                                              ; preds = %148, %146
  %154 = phi i32 [ %147, %146 ], [ %152, %148 ]
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !462
  %158 = zext i8 %157 to i32
  br label %159

159:                                              ; preds = %135, %137, %153
  %160 = phi i32 [ %158, %153 ], [ %136, %135 ], [ %141, %137 ]
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !462
  %164 = icmp eq i8 %163, 9
  %165 = load ptr, ptr %14, align 8, !tbaa !462
  %166 = load i64, ptr %165, align 8
  %167 = and i64 %166, 65535
  %168 = icmp eq i64 %167, 14
  br i1 %164, label %169, label %233

169:                                              ; preds = %159
  br i1 %168, label %170, label %173

170:                                              ; preds = %169
  %171 = tail call i32 @vector_type_mode(ptr noundef nonnull %165) #21
  %172 = load ptr, ptr %14, align 8, !tbaa !462
  br label %178

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.tree_type, ptr %165, i64 0, i32 6
  %175 = load i32, ptr %174, align 4
  %176 = lshr i32 %175, 16
  %177 = and i32 %176, 255
  br label %178

178:                                              ; preds = %173, %170
  %179 = phi ptr [ %172, %170 ], [ %165, %173 ]
  %180 = phi i32 [ %171, %170 ], [ %177, %173 ]
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %181
  %183 = load i8, ptr %182, align 1, !tbaa !462
  %184 = icmp eq i8 %183, 8
  br i1 %184, label %204, label %185

185:                                              ; preds = %178
  %186 = load i64, ptr %179, align 8
  %187 = and i64 %186, 65535
  %188 = icmp eq i64 %187, 14
  br i1 %188, label %189, label %192

189:                                              ; preds = %185
  %190 = tail call i32 @vector_type_mode(ptr noundef nonnull %179) #21
  %191 = load ptr, ptr %14, align 8, !tbaa !462
  br label %197

192:                                              ; preds = %185
  %193 = getelementptr inbounds %struct.tree_type, ptr %179, i64 0, i32 6
  %194 = load i32, ptr %193, align 4
  %195 = lshr i32 %194, 16
  %196 = and i32 %195, 255
  br label %197

197:                                              ; preds = %192, %189
  %198 = phi ptr [ %191, %189 ], [ %179, %192 ]
  %199 = phi i32 [ %190, %189 ], [ %196, %192 ]
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %200
  %202 = load i8, ptr %201, align 1, !tbaa !462
  %203 = icmp eq i8 %202, 9
  br i1 %203, label %204, label %216

204:                                              ; preds = %197, %178
  %205 = phi ptr [ %198, %197 ], [ %179, %178 ]
  %206 = load i64, ptr %205, align 8
  %207 = and i64 %206, 65535
  %208 = icmp eq i64 %207, 14
  br i1 %208, label %209, label %211

209:                                              ; preds = %204
  %210 = tail call i32 @vector_type_mode(ptr noundef nonnull %205) #21
  br label %297

211:                                              ; preds = %204
  %212 = getelementptr inbounds %struct.tree_type, ptr %205, i64 0, i32 6
  %213 = load i32, ptr %212, align 4
  %214 = lshr i32 %213, 16
  %215 = and i32 %214, 255
  br label %297

216:                                              ; preds = %197
  %217 = load i64, ptr %198, align 8
  %218 = and i64 %217, 65535
  %219 = icmp eq i64 %218, 14
  br i1 %219, label %220, label %222

220:                                              ; preds = %216
  %221 = tail call i32 @vector_type_mode(ptr noundef nonnull %198) #21
  br label %227

222:                                              ; preds = %216
  %223 = getelementptr inbounds %struct.tree_type, ptr %198, i64 0, i32 6
  %224 = load i32, ptr %223, align 4
  %225 = lshr i32 %224, 16
  %226 = and i32 %225, 255
  br label %227

227:                                              ; preds = %222, %220
  %228 = phi i32 [ %221, %220 ], [ %226, %222 ]
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %229
  %231 = load i8, ptr %230, align 1, !tbaa !462
  %232 = zext i8 %231 to i32
  br label %297

233:                                              ; preds = %159
  br i1 %168, label %234, label %237

234:                                              ; preds = %233
  %235 = tail call i32 @vector_type_mode(ptr noundef nonnull %165) #21
  %236 = load ptr, ptr %14, align 8, !tbaa !462
  br label %242

237:                                              ; preds = %233
  %238 = getelementptr inbounds %struct.tree_type, ptr %165, i64 0, i32 6
  %239 = load i32, ptr %238, align 4
  %240 = lshr i32 %239, 16
  %241 = and i32 %240, 255
  br label %242

242:                                              ; preds = %237, %234
  %243 = phi ptr [ %236, %234 ], [ %165, %237 ]
  %244 = phi i32 [ %235, %234 ], [ %241, %237 ]
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %245
  %247 = load i8, ptr %246, align 1, !tbaa !462
  %248 = icmp eq i8 %247, 8
  br i1 %248, label %268, label %249

249:                                              ; preds = %242
  %250 = load i64, ptr %243, align 8
  %251 = and i64 %250, 65535
  %252 = icmp eq i64 %251, 14
  br i1 %252, label %253, label %256

253:                                              ; preds = %249
  %254 = tail call i32 @vector_type_mode(ptr noundef nonnull %243) #21
  %255 = load ptr, ptr %14, align 8, !tbaa !462
  br label %261

256:                                              ; preds = %249
  %257 = getelementptr inbounds %struct.tree_type, ptr %243, i64 0, i32 6
  %258 = load i32, ptr %257, align 4
  %259 = lshr i32 %258, 16
  %260 = and i32 %259, 255
  br label %261

261:                                              ; preds = %256, %253
  %262 = phi ptr [ %255, %253 ], [ %243, %256 ]
  %263 = phi i32 [ %254, %253 ], [ %260, %256 ]
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %264
  %266 = load i8, ptr %265, align 1, !tbaa !462
  %267 = icmp eq i8 %266, 9
  br i1 %267, label %268, label %280

268:                                              ; preds = %261, %242
  %269 = phi ptr [ %262, %261 ], [ %243, %242 ]
  %270 = load i64, ptr %269, align 8
  %271 = and i64 %270, 65535
  %272 = icmp eq i64 %271, 14
  br i1 %272, label %273, label %275

273:                                              ; preds = %268
  %274 = tail call i32 @vector_type_mode(ptr noundef nonnull %269) #21
  br label %297

275:                                              ; preds = %268
  %276 = getelementptr inbounds %struct.tree_type, ptr %269, i64 0, i32 6
  %277 = load i32, ptr %276, align 4
  %278 = lshr i32 %277, 16
  %279 = and i32 %278, 255
  br label %297

280:                                              ; preds = %261
  %281 = load i64, ptr %262, align 8
  %282 = and i64 %281, 65535
  %283 = icmp eq i64 %282, 14
  br i1 %283, label %284, label %286

284:                                              ; preds = %280
  %285 = tail call i32 @vector_type_mode(ptr noundef nonnull %262) #21
  br label %291

286:                                              ; preds = %280
  %287 = getelementptr inbounds %struct.tree_type, ptr %262, i64 0, i32 6
  %288 = load i32, ptr %287, align 4
  %289 = lshr i32 %288, 16
  %290 = and i32 %289, 255
  br label %291

291:                                              ; preds = %286, %284
  %292 = phi i32 [ %285, %284 ], [ %290, %286 ]
  %293 = zext i32 %292 to i64
  %294 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %293
  %295 = load i8, ptr %294, align 1, !tbaa !462
  %296 = zext i8 %295 to i32
  br label %297

297:                                              ; preds = %291, %275, %273, %227, %211, %209
  %298 = phi i32 [ %232, %227 ], [ %210, %209 ], [ %215, %211 ], [ %296, %291 ], [ %274, %273 ], [ %279, %275 ]
  %299 = add i32 %298, -38
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %300
  %302 = load ptr, ptr %301, align 8, !tbaa !458
  %303 = getelementptr inbounds %struct.real_format, ptr %302, i64 0, i32 12
  %304 = load i8, ptr %303, align 1, !tbaa !658
  %305 = icmp eq i8 %304, 0
  %306 = load i32, ptr @flag_finite_math_only, align 4
  %307 = icmp ne i32 %306, 0
  %308 = select i1 %305, i1 true, i1 %307
  br i1 %308, label %309, label %312

309:                                              ; preds = %297, %83
  %310 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !458
  %311 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %9, ptr noundef %310, ptr noundef nonnull %2) #21
  br label %1277

312:                                              ; preds = %297
  %313 = load i64, ptr %2, align 8
  %314 = and i64 %313, 65535
  %315 = icmp eq i64 %314, 24
  br i1 %315, label %316, label %1277

316:                                              ; preds = %312
  %317 = getelementptr inbounds %struct.tree_real_cst, ptr %2, i64 0, i32 1
  %318 = load ptr, ptr %317, align 8, !tbaa !462
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %318, i64 32, i1 false), !tbaa.struct !681
  %319 = call zeroext i8 @real_isinf(ptr noundef nonnull %5) #21
  %320 = icmp eq i8 %319, 0
  br i1 %320, label %327, label %321

321:                                              ; preds = %316
  %322 = call zeroext i8 @real_compare(i32 noundef 99, ptr noundef nonnull %5, ptr noundef nonnull @dconst0) #21
  %323 = icmp eq i8 %322, 0
  %324 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16
  %325 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 15), align 8
  %326 = select i1 %323, ptr %325, ptr %324
  br label %1277

327:                                              ; preds = %316
  %328 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !458
  br label %1277

329:                                              ; preds = %12
  %330 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %331 = load ptr, ptr %330, align 8, !tbaa !462
  %332 = tail call fastcc ptr @mathfn_built_in_1(ptr noundef %331, i32 noundef 210, i8 noundef zeroext 0) #19
  %333 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 469), align 8, !tbaa !458
  %334 = tail call fastcc ptr @builtin_save_expr(ptr noundef %2) #19
  %335 = icmp ne ptr %332, null
  %336 = icmp ne ptr %333, null
  %337 = select i1 %335, i1 %336, i1 false
  br i1 %337, label %338, label %1277

338:                                              ; preds = %329
  %339 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %332, i32 noundef 1, ptr noundef %334) #19
  %340 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %333, i32 noundef 1, ptr noundef %334) #19
  %341 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %342 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !458
  %343 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 102, ptr noundef %341, ptr noundef %339, ptr noundef %342) #21
  %344 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %345 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !458
  %346 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 102, ptr noundef %344, ptr noundef %340, ptr noundef %345) #21
  %347 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %348 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 15), align 8, !tbaa !458
  %349 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !458
  %350 = tail call ptr @fold_build3_stat_loc(i32 noundef %0, i32 noundef 56, ptr noundef %347, ptr noundef %343, ptr noundef %348, ptr noundef %349) #21
  %351 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %352 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !458
  %353 = tail call ptr @fold_build3_stat_loc(i32 noundef %0, i32 noundef 56, ptr noundef %351, ptr noundef %346, ptr noundef %350, ptr noundef %352) #21
  br label %1277

354:                                              ; preds = %12
  %355 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %356 = load ptr, ptr %355, align 8, !tbaa !462
  %357 = load i64, ptr %356, align 8
  %358 = and i64 %357, 65535
  %359 = icmp eq i64 %358, 14
  br i1 %359, label %360, label %363

360:                                              ; preds = %354
  %361 = tail call i32 @vector_type_mode(ptr noundef nonnull %356) #21
  %362 = load ptr, ptr %355, align 8, !tbaa !462
  br label %368

363:                                              ; preds = %354
  %364 = getelementptr inbounds %struct.tree_type, ptr %356, i64 0, i32 6
  %365 = load i32, ptr %364, align 4
  %366 = lshr i32 %365, 16
  %367 = and i32 %366, 255
  br label %368

368:                                              ; preds = %363, %360
  %369 = phi ptr [ %362, %360 ], [ %356, %363 ]
  %370 = phi i32 [ %361, %360 ], [ %367, %363 ]
  %371 = zext i32 %370 to i64
  %372 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %371
  %373 = load i8, ptr %372, align 1, !tbaa !462
  %374 = icmp eq i8 %373, 8
  br i1 %374, label %432, label %375

375:                                              ; preds = %368
  %376 = load i64, ptr %369, align 8
  %377 = and i64 %376, 65535
  %378 = icmp eq i64 %377, 14
  br i1 %378, label %379, label %382

379:                                              ; preds = %375
  %380 = tail call i32 @vector_type_mode(ptr noundef nonnull %369) #21
  %381 = load ptr, ptr %355, align 8, !tbaa !462
  br label %387

382:                                              ; preds = %375
  %383 = getelementptr inbounds %struct.tree_type, ptr %369, i64 0, i32 6
  %384 = load i32, ptr %383, align 4
  %385 = lshr i32 %384, 16
  %386 = and i32 %385, 255
  br label %387

387:                                              ; preds = %382, %379
  %388 = phi ptr [ %381, %379 ], [ %369, %382 ]
  %389 = phi i32 [ %380, %379 ], [ %386, %382 ]
  %390 = zext i32 %389 to i64
  %391 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %390
  %392 = load i8, ptr %391, align 1, !tbaa !462
  %393 = icmp eq i8 %392, 9
  br i1 %393, label %432, label %394

394:                                              ; preds = %387
  %395 = load i64, ptr %388, align 8
  %396 = and i64 %395, 65535
  %397 = icmp eq i64 %396, 14
  br i1 %397, label %398, label %401

398:                                              ; preds = %394
  %399 = tail call i32 @vector_type_mode(ptr noundef nonnull %388) #21
  %400 = load ptr, ptr %355, align 8, !tbaa !462
  br label %406

401:                                              ; preds = %394
  %402 = getelementptr inbounds %struct.tree_type, ptr %388, i64 0, i32 6
  %403 = load i32, ptr %402, align 4
  %404 = lshr i32 %403, 16
  %405 = and i32 %404, 255
  br label %406

406:                                              ; preds = %401, %398
  %407 = phi ptr [ %400, %398 ], [ %388, %401 ]
  %408 = phi i32 [ %399, %398 ], [ %405, %401 ]
  %409 = zext i32 %408 to i64
  %410 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %409
  %411 = load i8, ptr %410, align 1, !tbaa !462
  %412 = icmp eq i8 %411, 11
  br i1 %412, label %432, label %413

413:                                              ; preds = %406
  %414 = load i64, ptr %407, align 8
  %415 = and i64 %414, 65535
  %416 = icmp eq i64 %415, 14
  br i1 %416, label %417, label %420

417:                                              ; preds = %413
  %418 = tail call i32 @vector_type_mode(ptr noundef nonnull %407) #21
  %419 = load ptr, ptr %355, align 8, !tbaa !462
  br label %425

420:                                              ; preds = %413
  %421 = getelementptr inbounds %struct.tree_type, ptr %407, i64 0, i32 6
  %422 = load i32, ptr %421, align 4
  %423 = lshr i32 %422, 16
  %424 = and i32 %423, 255
  br label %425

425:                                              ; preds = %420, %417
  %426 = phi ptr [ %419, %417 ], [ %407, %420 ]
  %427 = phi i32 [ %418, %417 ], [ %424, %420 ]
  %428 = zext i32 %427 to i64
  %429 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %428
  %430 = load i8, ptr %429, align 1, !tbaa !462
  %431 = icmp eq i8 %430, 17
  br i1 %431, label %432, label %652

432:                                              ; preds = %425, %406, %387, %368
  %433 = phi ptr [ %407, %406 ], [ %388, %387 ], [ %369, %368 ], [ %426, %425 ]
  %434 = load i64, ptr %433, align 8
  %435 = and i64 %434, 65535
  %436 = icmp eq i64 %435, 14
  br i1 %436, label %437, label %440

437:                                              ; preds = %432
  %438 = tail call i32 @vector_type_mode(ptr noundef nonnull %433) #21
  %439 = load ptr, ptr %355, align 8, !tbaa !462
  br label %445

440:                                              ; preds = %432
  %441 = getelementptr inbounds %struct.tree_type, ptr %433, i64 0, i32 6
  %442 = load i32, ptr %441, align 4
  %443 = lshr i32 %442, 16
  %444 = and i32 %443, 255
  br label %445

445:                                              ; preds = %440, %437
  %446 = phi ptr [ %439, %437 ], [ %433, %440 ]
  %447 = phi i32 [ %438, %437 ], [ %444, %440 ]
  %448 = zext i32 %447 to i64
  %449 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %448
  %450 = load i8, ptr %449, align 1, !tbaa !462
  %451 = icmp eq i8 %450, 8
  br i1 %451, label %471, label %452

452:                                              ; preds = %445
  %453 = load i64, ptr %446, align 8
  %454 = and i64 %453, 65535
  %455 = icmp eq i64 %454, 14
  br i1 %455, label %456, label %459

456:                                              ; preds = %452
  %457 = tail call i32 @vector_type_mode(ptr noundef nonnull %446) #21
  %458 = load ptr, ptr %355, align 8, !tbaa !462
  br label %464

459:                                              ; preds = %452
  %460 = getelementptr inbounds %struct.tree_type, ptr %446, i64 0, i32 6
  %461 = load i32, ptr %460, align 4
  %462 = lshr i32 %461, 16
  %463 = and i32 %462, 255
  br label %464

464:                                              ; preds = %459, %456
  %465 = phi ptr [ %458, %456 ], [ %446, %459 ]
  %466 = phi i32 [ %457, %456 ], [ %463, %459 ]
  %467 = zext i32 %466 to i64
  %468 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %467
  %469 = load i8, ptr %468, align 1, !tbaa !462
  %470 = icmp eq i8 %469, 9
  br i1 %470, label %471, label %483

471:                                              ; preds = %464, %445
  %472 = phi ptr [ %465, %464 ], [ %446, %445 ]
  %473 = load i64, ptr %472, align 8
  %474 = and i64 %473, 65535
  %475 = icmp eq i64 %474, 14
  br i1 %475, label %476, label %478

476:                                              ; preds = %471
  %477 = tail call i32 @vector_type_mode(ptr noundef nonnull %472) #21
  br label %500

478:                                              ; preds = %471
  %479 = getelementptr inbounds %struct.tree_type, ptr %472, i64 0, i32 6
  %480 = load i32, ptr %479, align 4
  %481 = lshr i32 %480, 16
  %482 = and i32 %481, 255
  br label %500

483:                                              ; preds = %464
  %484 = load i64, ptr %465, align 8
  %485 = and i64 %484, 65535
  %486 = icmp eq i64 %485, 14
  br i1 %486, label %487, label %489

487:                                              ; preds = %483
  %488 = tail call i32 @vector_type_mode(ptr noundef nonnull %465) #21
  br label %494

489:                                              ; preds = %483
  %490 = getelementptr inbounds %struct.tree_type, ptr %465, i64 0, i32 6
  %491 = load i32, ptr %490, align 4
  %492 = lshr i32 %491, 16
  %493 = and i32 %492, 255
  br label %494

494:                                              ; preds = %489, %487
  %495 = phi i32 [ %488, %487 ], [ %493, %489 ]
  %496 = zext i32 %495 to i64
  %497 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %496
  %498 = load i8, ptr %497, align 1, !tbaa !462
  %499 = zext i8 %498 to i32
  br label %500

500:                                              ; preds = %476, %478, %494
  %501 = phi i32 [ %499, %494 ], [ %477, %476 ], [ %482, %478 ]
  %502 = zext i32 %501 to i64
  %503 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %502
  %504 = load i8, ptr %503, align 1, !tbaa !462
  %505 = icmp eq i8 %504, 9
  %506 = load ptr, ptr %355, align 8, !tbaa !462
  %507 = load i64, ptr %506, align 8
  %508 = and i64 %507, 65535
  %509 = icmp eq i64 %508, 14
  br i1 %505, label %510, label %574

510:                                              ; preds = %500
  br i1 %509, label %511, label %514

511:                                              ; preds = %510
  %512 = tail call i32 @vector_type_mode(ptr noundef nonnull %506) #21
  %513 = load ptr, ptr %355, align 8, !tbaa !462
  br label %519

514:                                              ; preds = %510
  %515 = getelementptr inbounds %struct.tree_type, ptr %506, i64 0, i32 6
  %516 = load i32, ptr %515, align 4
  %517 = lshr i32 %516, 16
  %518 = and i32 %517, 255
  br label %519

519:                                              ; preds = %514, %511
  %520 = phi ptr [ %513, %511 ], [ %506, %514 ]
  %521 = phi i32 [ %512, %511 ], [ %518, %514 ]
  %522 = zext i32 %521 to i64
  %523 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %522
  %524 = load i8, ptr %523, align 1, !tbaa !462
  %525 = icmp eq i8 %524, 8
  br i1 %525, label %545, label %526

526:                                              ; preds = %519
  %527 = load i64, ptr %520, align 8
  %528 = and i64 %527, 65535
  %529 = icmp eq i64 %528, 14
  br i1 %529, label %530, label %533

530:                                              ; preds = %526
  %531 = tail call i32 @vector_type_mode(ptr noundef nonnull %520) #21
  %532 = load ptr, ptr %355, align 8, !tbaa !462
  br label %538

533:                                              ; preds = %526
  %534 = getelementptr inbounds %struct.tree_type, ptr %520, i64 0, i32 6
  %535 = load i32, ptr %534, align 4
  %536 = lshr i32 %535, 16
  %537 = and i32 %536, 255
  br label %538

538:                                              ; preds = %533, %530
  %539 = phi ptr [ %532, %530 ], [ %520, %533 ]
  %540 = phi i32 [ %531, %530 ], [ %537, %533 ]
  %541 = zext i32 %540 to i64
  %542 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %541
  %543 = load i8, ptr %542, align 1, !tbaa !462
  %544 = icmp eq i8 %543, 9
  br i1 %544, label %545, label %557

545:                                              ; preds = %538, %519
  %546 = phi ptr [ %539, %538 ], [ %520, %519 ]
  %547 = load i64, ptr %546, align 8
  %548 = and i64 %547, 65535
  %549 = icmp eq i64 %548, 14
  br i1 %549, label %550, label %552

550:                                              ; preds = %545
  %551 = tail call i32 @vector_type_mode(ptr noundef nonnull %546) #21
  br label %638

552:                                              ; preds = %545
  %553 = getelementptr inbounds %struct.tree_type, ptr %546, i64 0, i32 6
  %554 = load i32, ptr %553, align 4
  %555 = lshr i32 %554, 16
  %556 = and i32 %555, 255
  br label %638

557:                                              ; preds = %538
  %558 = load i64, ptr %539, align 8
  %559 = and i64 %558, 65535
  %560 = icmp eq i64 %559, 14
  br i1 %560, label %561, label %563

561:                                              ; preds = %557
  %562 = tail call i32 @vector_type_mode(ptr noundef nonnull %539) #21
  br label %568

563:                                              ; preds = %557
  %564 = getelementptr inbounds %struct.tree_type, ptr %539, i64 0, i32 6
  %565 = load i32, ptr %564, align 4
  %566 = lshr i32 %565, 16
  %567 = and i32 %566, 255
  br label %568

568:                                              ; preds = %563, %561
  %569 = phi i32 [ %562, %561 ], [ %567, %563 ]
  %570 = zext i32 %569 to i64
  %571 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %570
  %572 = load i8, ptr %571, align 1, !tbaa !462
  %573 = zext i8 %572 to i32
  br label %638

574:                                              ; preds = %500
  br i1 %509, label %575, label %578

575:                                              ; preds = %574
  %576 = tail call i32 @vector_type_mode(ptr noundef nonnull %506) #21
  %577 = load ptr, ptr %355, align 8, !tbaa !462
  br label %583

578:                                              ; preds = %574
  %579 = getelementptr inbounds %struct.tree_type, ptr %506, i64 0, i32 6
  %580 = load i32, ptr %579, align 4
  %581 = lshr i32 %580, 16
  %582 = and i32 %581, 255
  br label %583

583:                                              ; preds = %578, %575
  %584 = phi ptr [ %577, %575 ], [ %506, %578 ]
  %585 = phi i32 [ %576, %575 ], [ %582, %578 ]
  %586 = zext i32 %585 to i64
  %587 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %586
  %588 = load i8, ptr %587, align 1, !tbaa !462
  %589 = icmp eq i8 %588, 8
  br i1 %589, label %609, label %590

590:                                              ; preds = %583
  %591 = load i64, ptr %584, align 8
  %592 = and i64 %591, 65535
  %593 = icmp eq i64 %592, 14
  br i1 %593, label %594, label %597

594:                                              ; preds = %590
  %595 = tail call i32 @vector_type_mode(ptr noundef nonnull %584) #21
  %596 = load ptr, ptr %355, align 8, !tbaa !462
  br label %602

597:                                              ; preds = %590
  %598 = getelementptr inbounds %struct.tree_type, ptr %584, i64 0, i32 6
  %599 = load i32, ptr %598, align 4
  %600 = lshr i32 %599, 16
  %601 = and i32 %600, 255
  br label %602

602:                                              ; preds = %597, %594
  %603 = phi ptr [ %596, %594 ], [ %584, %597 ]
  %604 = phi i32 [ %595, %594 ], [ %601, %597 ]
  %605 = zext i32 %604 to i64
  %606 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %605
  %607 = load i8, ptr %606, align 1, !tbaa !462
  %608 = icmp eq i8 %607, 9
  br i1 %608, label %609, label %621

609:                                              ; preds = %602, %583
  %610 = phi ptr [ %603, %602 ], [ %584, %583 ]
  %611 = load i64, ptr %610, align 8
  %612 = and i64 %611, 65535
  %613 = icmp eq i64 %612, 14
  br i1 %613, label %614, label %616

614:                                              ; preds = %609
  %615 = tail call i32 @vector_type_mode(ptr noundef nonnull %610) #21
  br label %638

616:                                              ; preds = %609
  %617 = getelementptr inbounds %struct.tree_type, ptr %610, i64 0, i32 6
  %618 = load i32, ptr %617, align 4
  %619 = lshr i32 %618, 16
  %620 = and i32 %619, 255
  br label %638

621:                                              ; preds = %602
  %622 = load i64, ptr %603, align 8
  %623 = and i64 %622, 65535
  %624 = icmp eq i64 %623, 14
  br i1 %624, label %625, label %627

625:                                              ; preds = %621
  %626 = tail call i32 @vector_type_mode(ptr noundef nonnull %603) #21
  br label %632

627:                                              ; preds = %621
  %628 = getelementptr inbounds %struct.tree_type, ptr %603, i64 0, i32 6
  %629 = load i32, ptr %628, align 4
  %630 = lshr i32 %629, 16
  %631 = and i32 %630, 255
  br label %632

632:                                              ; preds = %627, %625
  %633 = phi i32 [ %626, %625 ], [ %631, %627 ]
  %634 = zext i32 %633 to i64
  %635 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %634
  %636 = load i8, ptr %635, align 1, !tbaa !462
  %637 = zext i8 %636 to i32
  br label %638

638:                                              ; preds = %632, %616, %614, %568, %552, %550
  %639 = phi i32 [ %573, %568 ], [ %551, %550 ], [ %556, %552 ], [ %637, %632 ], [ %615, %614 ], [ %620, %616 ]
  %640 = add i32 %639, -38
  %641 = zext i32 %640 to i64
  %642 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %641
  %643 = load ptr, ptr %642, align 8, !tbaa !458
  %644 = getelementptr inbounds %struct.real_format, ptr %643, i64 0, i32 11
  %645 = load i8, ptr %644, align 2, !tbaa !716
  %646 = icmp eq i8 %645, 0
  %647 = load i32, ptr @flag_finite_math_only, align 4
  %648 = icmp ne i32 %647, 0
  %649 = select i1 %646, i1 true, i1 %648
  br i1 %649, label %650, label %950

650:                                              ; preds = %638
  %651 = load ptr, ptr %355, align 8, !tbaa !462
  br label %652

652:                                              ; preds = %650, %425
  %653 = phi ptr [ %651, %650 ], [ %426, %425 ]
  %654 = load i64, ptr %653, align 8
  %655 = and i64 %654, 65535
  %656 = icmp eq i64 %655, 14
  br i1 %656, label %657, label %660

657:                                              ; preds = %652
  %658 = tail call i32 @vector_type_mode(ptr noundef nonnull %653) #21
  %659 = load ptr, ptr %355, align 8, !tbaa !462
  br label %665

660:                                              ; preds = %652
  %661 = getelementptr inbounds %struct.tree_type, ptr %653, i64 0, i32 6
  %662 = load i32, ptr %661, align 4
  %663 = lshr i32 %662, 16
  %664 = and i32 %663, 255
  br label %665

665:                                              ; preds = %660, %657
  %666 = phi ptr [ %659, %657 ], [ %653, %660 ]
  %667 = phi i32 [ %658, %657 ], [ %664, %660 ]
  %668 = zext i32 %667 to i64
  %669 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %668
  %670 = load i8, ptr %669, align 1, !tbaa !462
  %671 = icmp eq i8 %670, 8
  br i1 %671, label %729, label %672

672:                                              ; preds = %665
  %673 = load i64, ptr %666, align 8
  %674 = and i64 %673, 65535
  %675 = icmp eq i64 %674, 14
  br i1 %675, label %676, label %679

676:                                              ; preds = %672
  %677 = tail call i32 @vector_type_mode(ptr noundef nonnull %666) #21
  %678 = load ptr, ptr %355, align 8, !tbaa !462
  br label %684

679:                                              ; preds = %672
  %680 = getelementptr inbounds %struct.tree_type, ptr %666, i64 0, i32 6
  %681 = load i32, ptr %680, align 4
  %682 = lshr i32 %681, 16
  %683 = and i32 %682, 255
  br label %684

684:                                              ; preds = %679, %676
  %685 = phi ptr [ %678, %676 ], [ %666, %679 ]
  %686 = phi i32 [ %677, %676 ], [ %683, %679 ]
  %687 = zext i32 %686 to i64
  %688 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %687
  %689 = load i8, ptr %688, align 1, !tbaa !462
  %690 = icmp eq i8 %689, 9
  br i1 %690, label %729, label %691

691:                                              ; preds = %684
  %692 = load i64, ptr %685, align 8
  %693 = and i64 %692, 65535
  %694 = icmp eq i64 %693, 14
  br i1 %694, label %695, label %698

695:                                              ; preds = %691
  %696 = tail call i32 @vector_type_mode(ptr noundef nonnull %685) #21
  %697 = load ptr, ptr %355, align 8, !tbaa !462
  br label %703

698:                                              ; preds = %691
  %699 = getelementptr inbounds %struct.tree_type, ptr %685, i64 0, i32 6
  %700 = load i32, ptr %699, align 4
  %701 = lshr i32 %700, 16
  %702 = and i32 %701, 255
  br label %703

703:                                              ; preds = %698, %695
  %704 = phi ptr [ %697, %695 ], [ %685, %698 ]
  %705 = phi i32 [ %696, %695 ], [ %702, %698 ]
  %706 = zext i32 %705 to i64
  %707 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %706
  %708 = load i8, ptr %707, align 1, !tbaa !462
  %709 = icmp eq i8 %708, 11
  br i1 %709, label %729, label %710

710:                                              ; preds = %703
  %711 = load i64, ptr %704, align 8
  %712 = and i64 %711, 65535
  %713 = icmp eq i64 %712, 14
  br i1 %713, label %714, label %716

714:                                              ; preds = %710
  %715 = tail call i32 @vector_type_mode(ptr noundef nonnull %704) #21
  br label %721

716:                                              ; preds = %710
  %717 = getelementptr inbounds %struct.tree_type, ptr %704, i64 0, i32 6
  %718 = load i32, ptr %717, align 4
  %719 = lshr i32 %718, 16
  %720 = and i32 %719, 255
  br label %721

721:                                              ; preds = %716, %714
  %722 = phi i32 [ %715, %714 ], [ %720, %716 ]
  %723 = zext i32 %722 to i64
  %724 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %723
  %725 = load i8, ptr %724, align 1, !tbaa !462
  %726 = icmp eq i8 %725, 17
  br i1 %726, label %727, label %947

727:                                              ; preds = %721
  %728 = load ptr, ptr %355, align 8, !tbaa !462
  br label %729

729:                                              ; preds = %727, %703, %684, %665
  %730 = phi ptr [ %728, %727 ], [ %704, %703 ], [ %685, %684 ], [ %666, %665 ]
  %731 = load i64, ptr %730, align 8
  %732 = and i64 %731, 65535
  %733 = icmp eq i64 %732, 14
  br i1 %733, label %734, label %737

734:                                              ; preds = %729
  %735 = tail call i32 @vector_type_mode(ptr noundef nonnull %730) #21
  %736 = load ptr, ptr %355, align 8, !tbaa !462
  br label %742

737:                                              ; preds = %729
  %738 = getelementptr inbounds %struct.tree_type, ptr %730, i64 0, i32 6
  %739 = load i32, ptr %738, align 4
  %740 = lshr i32 %739, 16
  %741 = and i32 %740, 255
  br label %742

742:                                              ; preds = %737, %734
  %743 = phi ptr [ %736, %734 ], [ %730, %737 ]
  %744 = phi i32 [ %735, %734 ], [ %741, %737 ]
  %745 = zext i32 %744 to i64
  %746 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %745
  %747 = load i8, ptr %746, align 1, !tbaa !462
  %748 = icmp eq i8 %747, 8
  br i1 %748, label %768, label %749

749:                                              ; preds = %742
  %750 = load i64, ptr %743, align 8
  %751 = and i64 %750, 65535
  %752 = icmp eq i64 %751, 14
  br i1 %752, label %753, label %756

753:                                              ; preds = %749
  %754 = tail call i32 @vector_type_mode(ptr noundef nonnull %743) #21
  %755 = load ptr, ptr %355, align 8, !tbaa !462
  br label %761

756:                                              ; preds = %749
  %757 = getelementptr inbounds %struct.tree_type, ptr %743, i64 0, i32 6
  %758 = load i32, ptr %757, align 4
  %759 = lshr i32 %758, 16
  %760 = and i32 %759, 255
  br label %761

761:                                              ; preds = %756, %753
  %762 = phi ptr [ %755, %753 ], [ %743, %756 ]
  %763 = phi i32 [ %754, %753 ], [ %760, %756 ]
  %764 = zext i32 %763 to i64
  %765 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %764
  %766 = load i8, ptr %765, align 1, !tbaa !462
  %767 = icmp eq i8 %766, 9
  br i1 %767, label %768, label %780

768:                                              ; preds = %761, %742
  %769 = phi ptr [ %762, %761 ], [ %743, %742 ]
  %770 = load i64, ptr %769, align 8
  %771 = and i64 %770, 65535
  %772 = icmp eq i64 %771, 14
  br i1 %772, label %773, label %775

773:                                              ; preds = %768
  %774 = tail call i32 @vector_type_mode(ptr noundef nonnull %769) #21
  br label %797

775:                                              ; preds = %768
  %776 = getelementptr inbounds %struct.tree_type, ptr %769, i64 0, i32 6
  %777 = load i32, ptr %776, align 4
  %778 = lshr i32 %777, 16
  %779 = and i32 %778, 255
  br label %797

780:                                              ; preds = %761
  %781 = load i64, ptr %762, align 8
  %782 = and i64 %781, 65535
  %783 = icmp eq i64 %782, 14
  br i1 %783, label %784, label %786

784:                                              ; preds = %780
  %785 = tail call i32 @vector_type_mode(ptr noundef nonnull %762) #21
  br label %791

786:                                              ; preds = %780
  %787 = getelementptr inbounds %struct.tree_type, ptr %762, i64 0, i32 6
  %788 = load i32, ptr %787, align 4
  %789 = lshr i32 %788, 16
  %790 = and i32 %789, 255
  br label %791

791:                                              ; preds = %786, %784
  %792 = phi i32 [ %785, %784 ], [ %790, %786 ]
  %793 = zext i32 %792 to i64
  %794 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %793
  %795 = load i8, ptr %794, align 1, !tbaa !462
  %796 = zext i8 %795 to i32
  br label %797

797:                                              ; preds = %773, %775, %791
  %798 = phi i32 [ %796, %791 ], [ %774, %773 ], [ %779, %775 ]
  %799 = zext i32 %798 to i64
  %800 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %799
  %801 = load i8, ptr %800, align 1, !tbaa !462
  %802 = icmp eq i8 %801, 9
  %803 = load ptr, ptr %355, align 8, !tbaa !462
  %804 = load i64, ptr %803, align 8
  %805 = and i64 %804, 65535
  %806 = icmp eq i64 %805, 14
  br i1 %802, label %807, label %871

807:                                              ; preds = %797
  br i1 %806, label %808, label %811

808:                                              ; preds = %807
  %809 = tail call i32 @vector_type_mode(ptr noundef nonnull %803) #21
  %810 = load ptr, ptr %355, align 8, !tbaa !462
  br label %816

811:                                              ; preds = %807
  %812 = getelementptr inbounds %struct.tree_type, ptr %803, i64 0, i32 6
  %813 = load i32, ptr %812, align 4
  %814 = lshr i32 %813, 16
  %815 = and i32 %814, 255
  br label %816

816:                                              ; preds = %811, %808
  %817 = phi ptr [ %810, %808 ], [ %803, %811 ]
  %818 = phi i32 [ %809, %808 ], [ %815, %811 ]
  %819 = zext i32 %818 to i64
  %820 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %819
  %821 = load i8, ptr %820, align 1, !tbaa !462
  %822 = icmp eq i8 %821, 8
  br i1 %822, label %842, label %823

823:                                              ; preds = %816
  %824 = load i64, ptr %817, align 8
  %825 = and i64 %824, 65535
  %826 = icmp eq i64 %825, 14
  br i1 %826, label %827, label %830

827:                                              ; preds = %823
  %828 = tail call i32 @vector_type_mode(ptr noundef nonnull %817) #21
  %829 = load ptr, ptr %355, align 8, !tbaa !462
  br label %835

830:                                              ; preds = %823
  %831 = getelementptr inbounds %struct.tree_type, ptr %817, i64 0, i32 6
  %832 = load i32, ptr %831, align 4
  %833 = lshr i32 %832, 16
  %834 = and i32 %833, 255
  br label %835

835:                                              ; preds = %830, %827
  %836 = phi ptr [ %829, %827 ], [ %817, %830 ]
  %837 = phi i32 [ %828, %827 ], [ %834, %830 ]
  %838 = zext i32 %837 to i64
  %839 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %838
  %840 = load i8, ptr %839, align 1, !tbaa !462
  %841 = icmp eq i8 %840, 9
  br i1 %841, label %842, label %854

842:                                              ; preds = %835, %816
  %843 = phi ptr [ %836, %835 ], [ %817, %816 ]
  %844 = load i64, ptr %843, align 8
  %845 = and i64 %844, 65535
  %846 = icmp eq i64 %845, 14
  br i1 %846, label %847, label %849

847:                                              ; preds = %842
  %848 = tail call i32 @vector_type_mode(ptr noundef nonnull %843) #21
  br label %935

849:                                              ; preds = %842
  %850 = getelementptr inbounds %struct.tree_type, ptr %843, i64 0, i32 6
  %851 = load i32, ptr %850, align 4
  %852 = lshr i32 %851, 16
  %853 = and i32 %852, 255
  br label %935

854:                                              ; preds = %835
  %855 = load i64, ptr %836, align 8
  %856 = and i64 %855, 65535
  %857 = icmp eq i64 %856, 14
  br i1 %857, label %858, label %860

858:                                              ; preds = %854
  %859 = tail call i32 @vector_type_mode(ptr noundef nonnull %836) #21
  br label %865

860:                                              ; preds = %854
  %861 = getelementptr inbounds %struct.tree_type, ptr %836, i64 0, i32 6
  %862 = load i32, ptr %861, align 4
  %863 = lshr i32 %862, 16
  %864 = and i32 %863, 255
  br label %865

865:                                              ; preds = %860, %858
  %866 = phi i32 [ %859, %858 ], [ %864, %860 ]
  %867 = zext i32 %866 to i64
  %868 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %867
  %869 = load i8, ptr %868, align 1, !tbaa !462
  %870 = zext i8 %869 to i32
  br label %935

871:                                              ; preds = %797
  br i1 %806, label %872, label %875

872:                                              ; preds = %871
  %873 = tail call i32 @vector_type_mode(ptr noundef nonnull %803) #21
  %874 = load ptr, ptr %355, align 8, !tbaa !462
  br label %880

875:                                              ; preds = %871
  %876 = getelementptr inbounds %struct.tree_type, ptr %803, i64 0, i32 6
  %877 = load i32, ptr %876, align 4
  %878 = lshr i32 %877, 16
  %879 = and i32 %878, 255
  br label %880

880:                                              ; preds = %875, %872
  %881 = phi ptr [ %874, %872 ], [ %803, %875 ]
  %882 = phi i32 [ %873, %872 ], [ %879, %875 ]
  %883 = zext i32 %882 to i64
  %884 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %883
  %885 = load i8, ptr %884, align 1, !tbaa !462
  %886 = icmp eq i8 %885, 8
  br i1 %886, label %906, label %887

887:                                              ; preds = %880
  %888 = load i64, ptr %881, align 8
  %889 = and i64 %888, 65535
  %890 = icmp eq i64 %889, 14
  br i1 %890, label %891, label %894

891:                                              ; preds = %887
  %892 = tail call i32 @vector_type_mode(ptr noundef nonnull %881) #21
  %893 = load ptr, ptr %355, align 8, !tbaa !462
  br label %899

894:                                              ; preds = %887
  %895 = getelementptr inbounds %struct.tree_type, ptr %881, i64 0, i32 6
  %896 = load i32, ptr %895, align 4
  %897 = lshr i32 %896, 16
  %898 = and i32 %897, 255
  br label %899

899:                                              ; preds = %894, %891
  %900 = phi ptr [ %893, %891 ], [ %881, %894 ]
  %901 = phi i32 [ %892, %891 ], [ %898, %894 ]
  %902 = zext i32 %901 to i64
  %903 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %902
  %904 = load i8, ptr %903, align 1, !tbaa !462
  %905 = icmp eq i8 %904, 9
  br i1 %905, label %906, label %918

906:                                              ; preds = %899, %880
  %907 = phi ptr [ %900, %899 ], [ %881, %880 ]
  %908 = load i64, ptr %907, align 8
  %909 = and i64 %908, 65535
  %910 = icmp eq i64 %909, 14
  br i1 %910, label %911, label %913

911:                                              ; preds = %906
  %912 = tail call i32 @vector_type_mode(ptr noundef nonnull %907) #21
  br label %935

913:                                              ; preds = %906
  %914 = getelementptr inbounds %struct.tree_type, ptr %907, i64 0, i32 6
  %915 = load i32, ptr %914, align 4
  %916 = lshr i32 %915, 16
  %917 = and i32 %916, 255
  br label %935

918:                                              ; preds = %899
  %919 = load i64, ptr %900, align 8
  %920 = and i64 %919, 65535
  %921 = icmp eq i64 %920, 14
  br i1 %921, label %922, label %924

922:                                              ; preds = %918
  %923 = tail call i32 @vector_type_mode(ptr noundef nonnull %900) #21
  br label %929

924:                                              ; preds = %918
  %925 = getelementptr inbounds %struct.tree_type, ptr %900, i64 0, i32 6
  %926 = load i32, ptr %925, align 4
  %927 = lshr i32 %926, 16
  %928 = and i32 %927, 255
  br label %929

929:                                              ; preds = %924, %922
  %930 = phi i32 [ %923, %922 ], [ %928, %924 ]
  %931 = zext i32 %930 to i64
  %932 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %931
  %933 = load i8, ptr %932, align 1, !tbaa !462
  %934 = zext i8 %933 to i32
  br label %935

935:                                              ; preds = %929, %913, %911, %865, %849, %847
  %936 = phi i32 [ %870, %865 ], [ %848, %847 ], [ %853, %849 ], [ %934, %929 ], [ %912, %911 ], [ %917, %913 ]
  %937 = add i32 %936, -38
  %938 = zext i32 %937 to i64
  %939 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %938
  %940 = load ptr, ptr %939, align 8, !tbaa !458
  %941 = getelementptr inbounds %struct.real_format, ptr %940, i64 0, i32 12
  %942 = load i8, ptr %941, align 1, !tbaa !658
  %943 = icmp eq i8 %942, 0
  %944 = load i32, ptr @flag_finite_math_only, align 4
  %945 = icmp ne i32 %944, 0
  %946 = select i1 %943, i1 true, i1 %945
  br i1 %946, label %947, label %950

947:                                              ; preds = %935, %721
  %948 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !458
  %949 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %9, ptr noundef %948, ptr noundef nonnull %2) #21
  br label %1277

950:                                              ; preds = %935, %638
  %951 = load i64, ptr %2, align 8
  %952 = and i64 %951, 65535
  %953 = icmp eq i64 %952, 24
  br i1 %953, label %954, label %1277

954:                                              ; preds = %950
  %955 = getelementptr inbounds %struct.tree_real_cst, ptr %2, i64 0, i32 1
  %956 = load ptr, ptr %955, align 8, !tbaa !462
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %956, i64 32, i1 false), !tbaa.struct !681
  %957 = call zeroext i8 @real_isfinite(ptr noundef nonnull %5) #21
  %958 = icmp eq i8 %957, 0
  %959 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16
  %960 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8
  %961 = select i1 %958, ptr %960, ptr %959
  br label %1277

962:                                              ; preds = %12
  %963 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %964 = load ptr, ptr %963, align 8, !tbaa !462
  %965 = load i64, ptr %964, align 8
  %966 = and i64 %965, 65535
  %967 = icmp eq i64 %966, 14
  br i1 %967, label %968, label %971

968:                                              ; preds = %962
  %969 = tail call i32 @vector_type_mode(ptr noundef nonnull %964) #21
  %970 = load ptr, ptr %963, align 8, !tbaa !462
  br label %976

971:                                              ; preds = %962
  %972 = getelementptr inbounds %struct.tree_type, ptr %964, i64 0, i32 6
  %973 = load i32, ptr %972, align 4
  %974 = lshr i32 %973, 16
  %975 = and i32 %974, 255
  br label %976

976:                                              ; preds = %971, %968
  %977 = phi ptr [ %970, %968 ], [ %964, %971 ]
  %978 = phi i32 [ %969, %968 ], [ %975, %971 ]
  %979 = zext i32 %978 to i64
  %980 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %979
  %981 = load i8, ptr %980, align 1, !tbaa !462
  %982 = icmp eq i8 %981, 8
  br i1 %982, label %1040, label %983

983:                                              ; preds = %976
  %984 = load i64, ptr %977, align 8
  %985 = and i64 %984, 65535
  %986 = icmp eq i64 %985, 14
  br i1 %986, label %987, label %990

987:                                              ; preds = %983
  %988 = tail call i32 @vector_type_mode(ptr noundef nonnull %977) #21
  %989 = load ptr, ptr %963, align 8, !tbaa !462
  br label %995

990:                                              ; preds = %983
  %991 = getelementptr inbounds %struct.tree_type, ptr %977, i64 0, i32 6
  %992 = load i32, ptr %991, align 4
  %993 = lshr i32 %992, 16
  %994 = and i32 %993, 255
  br label %995

995:                                              ; preds = %990, %987
  %996 = phi ptr [ %989, %987 ], [ %977, %990 ]
  %997 = phi i32 [ %988, %987 ], [ %994, %990 ]
  %998 = zext i32 %997 to i64
  %999 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %998
  %1000 = load i8, ptr %999, align 1, !tbaa !462
  %1001 = icmp eq i8 %1000, 9
  br i1 %1001, label %1040, label %1002

1002:                                             ; preds = %995
  %1003 = load i64, ptr %996, align 8
  %1004 = and i64 %1003, 65535
  %1005 = icmp eq i64 %1004, 14
  br i1 %1005, label %1006, label %1009

1006:                                             ; preds = %1002
  %1007 = tail call i32 @vector_type_mode(ptr noundef nonnull %996) #21
  %1008 = load ptr, ptr %963, align 8, !tbaa !462
  br label %1014

1009:                                             ; preds = %1002
  %1010 = getelementptr inbounds %struct.tree_type, ptr %996, i64 0, i32 6
  %1011 = load i32, ptr %1010, align 4
  %1012 = lshr i32 %1011, 16
  %1013 = and i32 %1012, 255
  br label %1014

1014:                                             ; preds = %1009, %1006
  %1015 = phi ptr [ %1008, %1006 ], [ %996, %1009 ]
  %1016 = phi i32 [ %1007, %1006 ], [ %1013, %1009 ]
  %1017 = zext i32 %1016 to i64
  %1018 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1017
  %1019 = load i8, ptr %1018, align 1, !tbaa !462
  %1020 = icmp eq i8 %1019, 11
  br i1 %1020, label %1040, label %1021

1021:                                             ; preds = %1014
  %1022 = load i64, ptr %1015, align 8
  %1023 = and i64 %1022, 65535
  %1024 = icmp eq i64 %1023, 14
  br i1 %1024, label %1025, label %1027

1025:                                             ; preds = %1021
  %1026 = tail call i32 @vector_type_mode(ptr noundef nonnull %1015) #21
  br label %1032

1027:                                             ; preds = %1021
  %1028 = getelementptr inbounds %struct.tree_type, ptr %1015, i64 0, i32 6
  %1029 = load i32, ptr %1028, align 4
  %1030 = lshr i32 %1029, 16
  %1031 = and i32 %1030, 255
  br label %1032

1032:                                             ; preds = %1027, %1025
  %1033 = phi i32 [ %1026, %1025 ], [ %1031, %1027 ]
  %1034 = zext i32 %1033 to i64
  %1035 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1034
  %1036 = load i8, ptr %1035, align 1, !tbaa !462
  %1037 = icmp eq i8 %1036, 17
  br i1 %1037, label %1038, label %1258

1038:                                             ; preds = %1032
  %1039 = load ptr, ptr %963, align 8, !tbaa !462
  br label %1040

1040:                                             ; preds = %1038, %1014, %995, %976
  %1041 = phi ptr [ %1039, %1038 ], [ %1015, %1014 ], [ %996, %995 ], [ %977, %976 ]
  %1042 = load i64, ptr %1041, align 8
  %1043 = and i64 %1042, 65535
  %1044 = icmp eq i64 %1043, 14
  br i1 %1044, label %1045, label %1048

1045:                                             ; preds = %1040
  %1046 = tail call i32 @vector_type_mode(ptr noundef nonnull %1041) #21
  %1047 = load ptr, ptr %963, align 8, !tbaa !462
  br label %1053

1048:                                             ; preds = %1040
  %1049 = getelementptr inbounds %struct.tree_type, ptr %1041, i64 0, i32 6
  %1050 = load i32, ptr %1049, align 4
  %1051 = lshr i32 %1050, 16
  %1052 = and i32 %1051, 255
  br label %1053

1053:                                             ; preds = %1048, %1045
  %1054 = phi ptr [ %1047, %1045 ], [ %1041, %1048 ]
  %1055 = phi i32 [ %1046, %1045 ], [ %1052, %1048 ]
  %1056 = zext i32 %1055 to i64
  %1057 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1056
  %1058 = load i8, ptr %1057, align 1, !tbaa !462
  %1059 = icmp eq i8 %1058, 8
  br i1 %1059, label %1079, label %1060

1060:                                             ; preds = %1053
  %1061 = load i64, ptr %1054, align 8
  %1062 = and i64 %1061, 65535
  %1063 = icmp eq i64 %1062, 14
  br i1 %1063, label %1064, label %1067

1064:                                             ; preds = %1060
  %1065 = tail call i32 @vector_type_mode(ptr noundef nonnull %1054) #21
  %1066 = load ptr, ptr %963, align 8, !tbaa !462
  br label %1072

1067:                                             ; preds = %1060
  %1068 = getelementptr inbounds %struct.tree_type, ptr %1054, i64 0, i32 6
  %1069 = load i32, ptr %1068, align 4
  %1070 = lshr i32 %1069, 16
  %1071 = and i32 %1070, 255
  br label %1072

1072:                                             ; preds = %1067, %1064
  %1073 = phi ptr [ %1066, %1064 ], [ %1054, %1067 ]
  %1074 = phi i32 [ %1065, %1064 ], [ %1071, %1067 ]
  %1075 = zext i32 %1074 to i64
  %1076 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1075
  %1077 = load i8, ptr %1076, align 1, !tbaa !462
  %1078 = icmp eq i8 %1077, 9
  br i1 %1078, label %1079, label %1091

1079:                                             ; preds = %1072, %1053
  %1080 = phi ptr [ %1073, %1072 ], [ %1054, %1053 ]
  %1081 = load i64, ptr %1080, align 8
  %1082 = and i64 %1081, 65535
  %1083 = icmp eq i64 %1082, 14
  br i1 %1083, label %1084, label %1086

1084:                                             ; preds = %1079
  %1085 = tail call i32 @vector_type_mode(ptr noundef nonnull %1080) #21
  br label %1108

1086:                                             ; preds = %1079
  %1087 = getelementptr inbounds %struct.tree_type, ptr %1080, i64 0, i32 6
  %1088 = load i32, ptr %1087, align 4
  %1089 = lshr i32 %1088, 16
  %1090 = and i32 %1089, 255
  br label %1108

1091:                                             ; preds = %1072
  %1092 = load i64, ptr %1073, align 8
  %1093 = and i64 %1092, 65535
  %1094 = icmp eq i64 %1093, 14
  br i1 %1094, label %1095, label %1097

1095:                                             ; preds = %1091
  %1096 = tail call i32 @vector_type_mode(ptr noundef nonnull %1073) #21
  br label %1102

1097:                                             ; preds = %1091
  %1098 = getelementptr inbounds %struct.tree_type, ptr %1073, i64 0, i32 6
  %1099 = load i32, ptr %1098, align 4
  %1100 = lshr i32 %1099, 16
  %1101 = and i32 %1100, 255
  br label %1102

1102:                                             ; preds = %1097, %1095
  %1103 = phi i32 [ %1096, %1095 ], [ %1101, %1097 ]
  %1104 = zext i32 %1103 to i64
  %1105 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %1104
  %1106 = load i8, ptr %1105, align 1, !tbaa !462
  %1107 = zext i8 %1106 to i32
  br label %1108

1108:                                             ; preds = %1084, %1086, %1102
  %1109 = phi i32 [ %1107, %1102 ], [ %1085, %1084 ], [ %1090, %1086 ]
  %1110 = zext i32 %1109 to i64
  %1111 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1110
  %1112 = load i8, ptr %1111, align 1, !tbaa !462
  %1113 = icmp eq i8 %1112, 9
  %1114 = load ptr, ptr %963, align 8, !tbaa !462
  %1115 = load i64, ptr %1114, align 8
  %1116 = and i64 %1115, 65535
  %1117 = icmp eq i64 %1116, 14
  br i1 %1113, label %1118, label %1182

1118:                                             ; preds = %1108
  br i1 %1117, label %1119, label %1122

1119:                                             ; preds = %1118
  %1120 = tail call i32 @vector_type_mode(ptr noundef nonnull %1114) #21
  %1121 = load ptr, ptr %963, align 8, !tbaa !462
  br label %1127

1122:                                             ; preds = %1118
  %1123 = getelementptr inbounds %struct.tree_type, ptr %1114, i64 0, i32 6
  %1124 = load i32, ptr %1123, align 4
  %1125 = lshr i32 %1124, 16
  %1126 = and i32 %1125, 255
  br label %1127

1127:                                             ; preds = %1122, %1119
  %1128 = phi ptr [ %1121, %1119 ], [ %1114, %1122 ]
  %1129 = phi i32 [ %1120, %1119 ], [ %1126, %1122 ]
  %1130 = zext i32 %1129 to i64
  %1131 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1130
  %1132 = load i8, ptr %1131, align 1, !tbaa !462
  %1133 = icmp eq i8 %1132, 8
  br i1 %1133, label %1153, label %1134

1134:                                             ; preds = %1127
  %1135 = load i64, ptr %1128, align 8
  %1136 = and i64 %1135, 65535
  %1137 = icmp eq i64 %1136, 14
  br i1 %1137, label %1138, label %1141

1138:                                             ; preds = %1134
  %1139 = tail call i32 @vector_type_mode(ptr noundef nonnull %1128) #21
  %1140 = load ptr, ptr %963, align 8, !tbaa !462
  br label %1146

1141:                                             ; preds = %1134
  %1142 = getelementptr inbounds %struct.tree_type, ptr %1128, i64 0, i32 6
  %1143 = load i32, ptr %1142, align 4
  %1144 = lshr i32 %1143, 16
  %1145 = and i32 %1144, 255
  br label %1146

1146:                                             ; preds = %1141, %1138
  %1147 = phi ptr [ %1140, %1138 ], [ %1128, %1141 ]
  %1148 = phi i32 [ %1139, %1138 ], [ %1145, %1141 ]
  %1149 = zext i32 %1148 to i64
  %1150 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1149
  %1151 = load i8, ptr %1150, align 1, !tbaa !462
  %1152 = icmp eq i8 %1151, 9
  br i1 %1152, label %1153, label %1165

1153:                                             ; preds = %1146, %1127
  %1154 = phi ptr [ %1147, %1146 ], [ %1128, %1127 ]
  %1155 = load i64, ptr %1154, align 8
  %1156 = and i64 %1155, 65535
  %1157 = icmp eq i64 %1156, 14
  br i1 %1157, label %1158, label %1160

1158:                                             ; preds = %1153
  %1159 = tail call i32 @vector_type_mode(ptr noundef nonnull %1154) #21
  br label %1246

1160:                                             ; preds = %1153
  %1161 = getelementptr inbounds %struct.tree_type, ptr %1154, i64 0, i32 6
  %1162 = load i32, ptr %1161, align 4
  %1163 = lshr i32 %1162, 16
  %1164 = and i32 %1163, 255
  br label %1246

1165:                                             ; preds = %1146
  %1166 = load i64, ptr %1147, align 8
  %1167 = and i64 %1166, 65535
  %1168 = icmp eq i64 %1167, 14
  br i1 %1168, label %1169, label %1171

1169:                                             ; preds = %1165
  %1170 = tail call i32 @vector_type_mode(ptr noundef nonnull %1147) #21
  br label %1176

1171:                                             ; preds = %1165
  %1172 = getelementptr inbounds %struct.tree_type, ptr %1147, i64 0, i32 6
  %1173 = load i32, ptr %1172, align 4
  %1174 = lshr i32 %1173, 16
  %1175 = and i32 %1174, 255
  br label %1176

1176:                                             ; preds = %1171, %1169
  %1177 = phi i32 [ %1170, %1169 ], [ %1175, %1171 ]
  %1178 = zext i32 %1177 to i64
  %1179 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %1178
  %1180 = load i8, ptr %1179, align 1, !tbaa !462
  %1181 = zext i8 %1180 to i32
  br label %1246

1182:                                             ; preds = %1108
  br i1 %1117, label %1183, label %1186

1183:                                             ; preds = %1182
  %1184 = tail call i32 @vector_type_mode(ptr noundef nonnull %1114) #21
  %1185 = load ptr, ptr %963, align 8, !tbaa !462
  br label %1191

1186:                                             ; preds = %1182
  %1187 = getelementptr inbounds %struct.tree_type, ptr %1114, i64 0, i32 6
  %1188 = load i32, ptr %1187, align 4
  %1189 = lshr i32 %1188, 16
  %1190 = and i32 %1189, 255
  br label %1191

1191:                                             ; preds = %1186, %1183
  %1192 = phi ptr [ %1185, %1183 ], [ %1114, %1186 ]
  %1193 = phi i32 [ %1184, %1183 ], [ %1190, %1186 ]
  %1194 = zext i32 %1193 to i64
  %1195 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1194
  %1196 = load i8, ptr %1195, align 1, !tbaa !462
  %1197 = icmp eq i8 %1196, 8
  br i1 %1197, label %1217, label %1198

1198:                                             ; preds = %1191
  %1199 = load i64, ptr %1192, align 8
  %1200 = and i64 %1199, 65535
  %1201 = icmp eq i64 %1200, 14
  br i1 %1201, label %1202, label %1205

1202:                                             ; preds = %1198
  %1203 = tail call i32 @vector_type_mode(ptr noundef nonnull %1192) #21
  %1204 = load ptr, ptr %963, align 8, !tbaa !462
  br label %1210

1205:                                             ; preds = %1198
  %1206 = getelementptr inbounds %struct.tree_type, ptr %1192, i64 0, i32 6
  %1207 = load i32, ptr %1206, align 4
  %1208 = lshr i32 %1207, 16
  %1209 = and i32 %1208, 255
  br label %1210

1210:                                             ; preds = %1205, %1202
  %1211 = phi ptr [ %1204, %1202 ], [ %1192, %1205 ]
  %1212 = phi i32 [ %1203, %1202 ], [ %1209, %1205 ]
  %1213 = zext i32 %1212 to i64
  %1214 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1213
  %1215 = load i8, ptr %1214, align 1, !tbaa !462
  %1216 = icmp eq i8 %1215, 9
  br i1 %1216, label %1217, label %1229

1217:                                             ; preds = %1210, %1191
  %1218 = phi ptr [ %1211, %1210 ], [ %1192, %1191 ]
  %1219 = load i64, ptr %1218, align 8
  %1220 = and i64 %1219, 65535
  %1221 = icmp eq i64 %1220, 14
  br i1 %1221, label %1222, label %1224

1222:                                             ; preds = %1217
  %1223 = tail call i32 @vector_type_mode(ptr noundef nonnull %1218) #21
  br label %1246

1224:                                             ; preds = %1217
  %1225 = getelementptr inbounds %struct.tree_type, ptr %1218, i64 0, i32 6
  %1226 = load i32, ptr %1225, align 4
  %1227 = lshr i32 %1226, 16
  %1228 = and i32 %1227, 255
  br label %1246

1229:                                             ; preds = %1210
  %1230 = load i64, ptr %1211, align 8
  %1231 = and i64 %1230, 65535
  %1232 = icmp eq i64 %1231, 14
  br i1 %1232, label %1233, label %1235

1233:                                             ; preds = %1229
  %1234 = tail call i32 @vector_type_mode(ptr noundef nonnull %1211) #21
  br label %1240

1235:                                             ; preds = %1229
  %1236 = getelementptr inbounds %struct.tree_type, ptr %1211, i64 0, i32 6
  %1237 = load i32, ptr %1236, align 4
  %1238 = lshr i32 %1237, 16
  %1239 = and i32 %1238, 255
  br label %1240

1240:                                             ; preds = %1235, %1233
  %1241 = phi i32 [ %1234, %1233 ], [ %1239, %1235 ]
  %1242 = zext i32 %1241 to i64
  %1243 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %1242
  %1244 = load i8, ptr %1243, align 1, !tbaa !462
  %1245 = zext i8 %1244 to i32
  br label %1246

1246:                                             ; preds = %1240, %1224, %1222, %1176, %1160, %1158
  %1247 = phi i32 [ %1181, %1176 ], [ %1159, %1158 ], [ %1164, %1160 ], [ %1245, %1240 ], [ %1223, %1222 ], [ %1228, %1224 ]
  %1248 = add i32 %1247, -38
  %1249 = zext i32 %1248 to i64
  %1250 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %1249
  %1251 = load ptr, ptr %1250, align 8, !tbaa !458
  %1252 = getelementptr inbounds %struct.real_format, ptr %1251, i64 0, i32 11
  %1253 = load i8, ptr %1252, align 2, !tbaa !716
  %1254 = icmp eq i8 %1253, 0
  %1255 = load i32, ptr @flag_finite_math_only, align 4
  %1256 = icmp ne i32 %1255, 0
  %1257 = select i1 %1254, i1 true, i1 %1256
  br i1 %1257, label %1258, label %1261

1258:                                             ; preds = %1246, %1032
  %1259 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !458
  %1260 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %9, ptr noundef %1259, ptr noundef nonnull %2) #21
  br label %1277

1261:                                             ; preds = %1246
  %1262 = load i64, ptr %2, align 8
  %1263 = and i64 %1262, 65535
  %1264 = icmp eq i64 %1263, 24
  br i1 %1264, label %1265, label %1273

1265:                                             ; preds = %1261
  %1266 = getelementptr inbounds %struct.tree_real_cst, ptr %2, i64 0, i32 1
  %1267 = load ptr, ptr %1266, align 8, !tbaa !462
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %1267, i64 32, i1 false), !tbaa.struct !681
  %1268 = call zeroext i8 @real_isnan(ptr noundef nonnull %5) #21
  %1269 = icmp eq i8 %1268, 0
  %1270 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16
  %1271 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8
  %1272 = select i1 %1269, ptr %1271, ptr %1270
  br label %1277

1273:                                             ; preds = %1261
  %1274 = tail call fastcc ptr @builtin_save_expr(ptr noundef nonnull %2) #19
  %1275 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 103, ptr noundef %9, ptr noundef %1274, ptr noundef %1274) #21
  br label %1277

1276:                                             ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.721, i32 noundef 9559, ptr noundef nonnull @.str.722) #21
  br label %1277

1277:                                             ; preds = %950, %329, %338, %312, %4, %1276, %1273, %1265, %1258, %954, %947, %327, %321, %309
  %1278 = phi ptr [ null, %1276 ], [ %1260, %1258 ], [ %1272, %1265 ], [ %1275, %1273 ], [ %949, %947 ], [ %961, %954 ], [ %311, %309 ], [ %326, %321 ], [ %328, %327 ], [ null, %4 ], [ null, %312 ], [ %353, %338 ], [ null, %329 ], [ null, %950 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  ret ptr %1278
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_interclass_mathfn(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #3 !prof !449 !PGOFuncName !717 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca %struct.real_value, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca %struct.real_value, align 8
  %9 = alloca %struct.real_value, align 8
  %10 = alloca [128 x i8], align 16
  %11 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 9) #19, !range !451
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %79, label %13

13:                                               ; preds = %3
  %14 = tail call fastcc i32 @interclass_mathfn_icode(ptr noundef %2, ptr noundef %1) #19
  %15 = icmp eq i32 %14, 2956
  br i1 %15, label %16, label %79

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !462
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 14
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = tail call i32 @vector_type_mode(ptr noundef nonnull %18) #21
  br label %29

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 255
  br label %29

29:                                               ; preds = %24, %22
  %30 = phi i32 [ %23, %22 ], [ %28, %24 ]
  %31 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 2047
  switch i32 %33, label %79 [
    i32 469, label %34
    i32 470, label %34
    i32 471, label %34
    i32 460, label %45
    i32 461, label %45
    i32 462, label %45
    i32 467, label %45
    i32 481, label %56
  ]

34:                                               ; preds = %29, %29, %29
  %35 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 482), align 16, !tbaa !458
  %36 = load ptr, ptr %17, align 8, !tbaa !462
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #20
  %37 = add i32 %30, -38
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !458
  call void @get_max_float(ptr noundef %40, ptr noundef nonnull %5, i64 noundef 128) #21
  %41 = call i32 @real_from_string(ptr noundef nonnull %4, ptr noundef nonnull %5) #21
  %42 = call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 82, ptr noundef %36, ptr noundef nonnull %2) #21
  %43 = call ptr @build_real(ptr noundef %36, ptr noundef nonnull byval(%struct.real_value) align 8 %4) #21
  %44 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %35, i32 noundef 2, ptr noundef %42, ptr noundef %43) #19
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #20
  br label %79

45:                                               ; preds = %29, %29, %29, %29
  %46 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 485), align 8, !tbaa !458
  %47 = load ptr, ptr %17, align 8, !tbaa !462
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #20
  %48 = add i32 %30, -38
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !458
  call void @get_max_float(ptr noundef %51, ptr noundef nonnull %7, i64 noundef 128) #21
  %52 = call i32 @real_from_string(ptr noundef nonnull %6, ptr noundef nonnull %7) #21
  %53 = call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 82, ptr noundef %47, ptr noundef nonnull %2) #21
  %54 = call ptr @build_real(ptr noundef %47, ptr noundef nonnull byval(%struct.real_value) align 8 %6) #21
  %55 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %46, i32 noundef 2, ptr noundef %53, ptr noundef %54) #19
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #20
  br label %79

56:                                               ; preds = %29
  %57 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 485), align 8, !tbaa !458
  %58 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 483), align 8, !tbaa !458
  %59 = load ptr, ptr %17, align 8, !tbaa !462
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %10) #20
  %60 = add i32 %30, -38
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !458
  call void @get_max_float(ptr noundef %63, ptr noundef nonnull %10, i64 noundef 128) #21
  %64 = call i32 @real_from_string(ptr noundef nonnull %8, ptr noundef nonnull %10) #21
  %65 = load ptr, ptr %62, align 8, !tbaa !458
  %66 = getelementptr inbounds %struct.real_format, ptr %65, i64 0, i32 5
  %67 = load i32, ptr %66, align 4, !tbaa !718
  %68 = add nsw i32 %67, -1
  %69 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) @.str.729, i32 noundef %68) #19
  %70 = call i32 @real_from_string(ptr noundef nonnull %9, ptr noundef nonnull %10) #21
  %71 = call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 82, ptr noundef %59, ptr noundef nonnull %2) #21
  %72 = call fastcc ptr @builtin_save_expr(ptr noundef %71) #19
  %73 = call ptr @build_real(ptr noundef %59, ptr noundef nonnull byval(%struct.real_value) align 8 %8) #21
  %74 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %57, i32 noundef 2, ptr noundef %72, ptr noundef %73) #19
  %75 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %76 = call ptr @build_real(ptr noundef %59, ptr noundef nonnull byval(%struct.real_value) align 8 %9) #21
  %77 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %58, i32 noundef 2, ptr noundef %72, ptr noundef %76) #19
  %78 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 89, ptr noundef %75, ptr noundef %74, ptr noundef %77) #21
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #20
  br label %79

79:                                               ; preds = %29, %13, %3, %56, %45, %34
  %80 = phi ptr [ %78, %56 ], [ %55, %45 ], [ %44, %34 ], [ null, %3 ], [ null, %13 ], [ null, %29 ]
  ret ptr %80
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_printf(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i32 noundef %5) unnamed_addr #3 !prof !719 !PGOFuncName !720 {
  %7 = icmp eq i8 %4, 0
  br i1 %7, label %114, label %8, !prof !721

8:                                                ; preds = %6
  %9 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 10) #19, !range !451
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %114, label %11, !prof !722

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @c_getstr(ptr noundef %2) #19
  %13 = icmp eq ptr %12, null
  br i1 %13, label %114, label %14, !prof !723

14:                                               ; preds = %11
  %15 = icmp eq i32 %5, 366
  %16 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 368), align 16
  %17 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 367), align 8
  %18 = select i1 %15, ptr %16, ptr %17
  %19 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 370), align 16
  %20 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 369), align 8
  %21 = select i1 %15, ptr %19, ptr %20
  %22 = tail call fastcc zeroext i8 @init_target_chars() #19, !range !451
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %114, label %24, !prof !724

24:                                               ; preds = %14
  %25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) @target_percent_s) #19
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27, !prof !724

27:                                               ; preds = %24
  %28 = load i64, ptr @target_percent, align 8, !tbaa !453
  %29 = trunc i64 %28 to i32
  %30 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %12, i32 noundef %29) #19
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %80, !prof !725

32:                                               ; preds = %24
  switch i32 %5, label %33 [
    i32 545, label %114
    i32 377, label %114
  ]

33:                                               ; preds = %32
  %34 = icmp eq ptr %3, null
  br i1 %34, label %114, label %35

35:                                               ; preds = %33
  %36 = tail call fastcc zeroext i8 @validate_arg(ptr noundef nonnull %3, i32 noundef 10) #19, !range !451
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %114, label %38

38:                                               ; preds = %35
  %39 = tail call fastcc ptr @c_getstr(ptr noundef nonnull %3) #19
  %40 = icmp eq ptr %39, null
  br i1 %40, label %114, label %44

41:                                               ; preds = %27
  %42 = icmp eq ptr %3, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %41
  switch i32 %5, label %114 [
    i32 545, label %44
    i32 377, label %44
  ]

44:                                               ; preds = %41, %43, %43, %38
  %45 = phi ptr [ %39, %38 ], [ %12, %43 ], [ %12, %43 ], [ %12, %41 ]
  %46 = load i8, ptr %45, align 1, !tbaa !462
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %54, !prof !515

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !462
  %51 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !462
  %53 = tail call ptr @build_int_cst(ptr noundef %52, i64 noundef 0) #21
  br label %114

54:                                               ; preds = %44
  %55 = getelementptr inbounds i8, ptr %45, i64 1
  %56 = load i8, ptr %55, align 1, !tbaa !462
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %64, !prof !515

58:                                               ; preds = %54
  %59 = sext i8 %46 to i64
  %60 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %59) #21
  %61 = icmp eq ptr %18, null
  br i1 %61, label %114, label %62

62:                                               ; preds = %58
  %63 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %18, i32 noundef 1, ptr noundef %60) #19
  br label %105

64:                                               ; preds = %54
  %65 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %45) #19
  %66 = add i64 %65, -1
  %67 = getelementptr inbounds i8, ptr %45, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !462
  %69 = zext i8 %68 to i64
  %70 = load i64, ptr @target_newline, align 8, !tbaa !453
  %71 = icmp eq i64 %70, %69
  br i1 %71, label %72, label %114, !prof !517

72:                                               ; preds = %64
  %73 = alloca i8, i64 %65, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %73, ptr nonnull align 1 %45, i64 %66, i1 false)
  %74 = getelementptr inbounds i8, ptr %73, i64 %66
  store i8 0, ptr %74, align 1, !tbaa !462
  %75 = trunc i64 %65 to i32
  %76 = call ptr @build_string_literal(i32 noundef %75, ptr noundef nonnull %73) #19
  %77 = icmp eq ptr %21, null
  br i1 %77, label %114, label %78, !prof !515

78:                                               ; preds = %72
  %79 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %21, i32 noundef 1, ptr noundef %76) #19
  br label %105

80:                                               ; preds = %27
  switch i32 %5, label %81 [
    i32 545, label %114
    i32 377, label %114
  ]

81:                                               ; preds = %80
  %82 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) @target_percent_s_newline) #19
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %93, !prof !691

84:                                               ; preds = %81
  %85 = icmp eq ptr %3, null
  br i1 %85, label %114, label %86

86:                                               ; preds = %84
  %87 = tail call fastcc zeroext i8 @validate_arg(ptr noundef nonnull %3, i32 noundef 10) #19, !range !451
  %88 = icmp eq i8 %87, 0
  %89 = icmp eq ptr %21, null
  %90 = select i1 %88, i1 true, i1 %89
  br i1 %90, label %114, label %91

91:                                               ; preds = %86
  %92 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %21, i32 noundef 1, ptr noundef nonnull %3) #19
  br label %105

93:                                               ; preds = %81
  %94 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) @target_percent_c) #19
  %95 = icmp ne i32 %94, 0
  %96 = icmp eq ptr %3, null
  %97 = or i1 %96, %95
  br i1 %97, label %114, label %98, !prof !726

98:                                               ; preds = %93
  %99 = tail call fastcc zeroext i8 @validate_arg(ptr noundef nonnull %3, i32 noundef 8) #19, !range !451
  %100 = icmp eq i8 %99, 0
  %101 = icmp eq ptr %18, null
  %102 = select i1 %100, i1 true, i1 %101
  br i1 %102, label %114, label %103

103:                                              ; preds = %98
  %104 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %18, i32 noundef 1, ptr noundef nonnull %3) #19
  br label %105

105:                                              ; preds = %62, %78, %103, %91
  %106 = phi ptr [ %92, %91 ], [ %104, %103 ], [ %63, %62 ], [ %79, %78 ]
  %107 = icmp eq ptr %106, null
  br i1 %107, label %114, label %108, !prof !727

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !462
  %111 = getelementptr inbounds %struct.tree_common, ptr %110, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !462
  %113 = call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %112, ptr noundef nonnull %106) #21
  br label %114

114:                                              ; preds = %72, %58, %93, %64, %43, %38, %33, %35, %32, %32, %48, %105, %98, %84, %86, %80, %80, %14, %11, %8, %6, %108
  %115 = phi ptr [ %113, %108 ], [ null, %6 ], [ null, %8 ], [ null, %11 ], [ null, %14 ], [ null, %80 ], [ null, %80 ], [ null, %86 ], [ null, %84 ], [ null, %98 ], [ null, %105 ], [ null, %64 ], [ null, %43 ], [ null, %38 ], [ null, %33 ], [ null, %35 ], [ null, %32 ], [ null, %32 ], [ %53, %48 ], [ null, %93 ], [ null, %58 ], [ null, %72 ]
  ret ptr %115
}

; Function Attrs: optsize
declare ptr @fold_abs_const(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @builtin_save_expr(ptr noundef %0) unnamed_addr #3 !prof !728 !PGOFuncName !729 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 262144
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %10, !prof !730

5:                                                ; preds = %1
  %6 = trunc i64 %2 to i16
  switch i16 %6, label %10 [
    i16 34, label %12
    i16 32, label %7
  ], !prof !731

7:                                                ; preds = %5
  %8 = and i64 %2, 67108864
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %12, label %10, !prof !732

10:                                               ; preds = %5, %7, %1
  %11 = tail call ptr @save_expr(ptr noundef nonnull %0) #21
  br label %12

12:                                               ; preds = %7, %5, %10
  %13 = phi ptr [ %11, %10 ], [ %0, %5 ], [ %0, %7 ]
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @save_expr(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @c_getstr(ptr noundef %0) unnamed_addr #3 !prof !733 !PGOFuncName !734 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  %3 = call ptr @string_constant(ptr noundef %0, ptr noundef nonnull %2) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5, !prof !735

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !tbaa !458
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !736

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tree_string, ptr %3, i64 0, i32 2
  br label %26

10:                                               ; preds = %5
  %11 = call i32 @host_integerp(ptr noundef nonnull %6, i32 noundef 1) #21
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13, !prof !736

13:                                               ; preds = %10
  %14 = load ptr, ptr %2, align 8, !tbaa !458
  %15 = getelementptr inbounds %struct.tree_string, ptr %3, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !462
  %17 = add nsw i32 %16, -1
  %18 = sext i32 %17 to i64
  %19 = call i32 @compare_tree_int(ptr noundef %14, i64 noundef %18) #21
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %26, label %21, !prof !736

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.tree_string, ptr %3, i64 0, i32 2
  %23 = load ptr, ptr %2, align 8, !tbaa !458
  %24 = call i64 @tree_low_cst(ptr noundef %23, i32 noundef 1) #21
  %25 = getelementptr inbounds i8, ptr %22, i64 %24
  br label %26

26:                                               ; preds = %10, %13, %1, %21, %8
  %27 = phi ptr [ %9, %8 ], [ %25, %21 ], [ null, %1 ], [ null, %13 ], [ null, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  ret ptr %27
}

; Function Attrs: optsize
declare zeroext i8 @real_nan(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: optsize
declare zeroext i8 @real_isnan(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @real_floor(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @tree_expr_nonnegative_p(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @real_ceil(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @real_trunc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @real_round(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @integer_valued_real_p(ptr noundef %0) unnamed_addr #3 !prof !449 !PGOFuncName !737 {
  br label %2

2:                                                ; preds = %11, %1
  %3 = phi ptr [ %0, %1 ], [ %12, %11 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %77 [
    i16 78, label %20
    i16 82, label %6
    i16 120, label %6
    i16 52, label %13
    i16 53, label %13
    i16 58, label %13
    i16 63, label %15
    i16 64, label %15
    i16 65, label %15
    i16 80, label %15
    i16 81, label %15
    i16 56, label %28
    i16 24, label %39
    i16 116, label %57
    i16 59, label %64
  ]

6:                                                ; preds = %2, %2
  %7 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  br label %8

8:                                                ; preds = %13, %6
  %9 = phi ptr [ %7, %6 ], [ %14, %13 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !462
  br label %11

11:                                               ; preds = %8, %57
  %12 = phi ptr [ %59, %57 ], [ %10, %8 ]
  br label %2

13:                                               ; preds = %2, %2, %2
  %14 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  br label %8

15:                                               ; preds = %2, %2, %2, %2, %2
  %16 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !462
  %18 = tail call fastcc zeroext i8 @integer_valued_real_p(ptr noundef %17) #19
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %66, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %64, %28, %15, %77, %54, %57, %2, %71, %33, %22
  %21 = phi i8 [ %27, %22 ], [ %38, %33 ], [ %76, %71 ], [ 0, %77 ], [ %56, %54 ], [ 0, %15 ], [ 0, %28 ], [ 1, %64 ], [ 1, %64 ], [ 1, %64 ], [ 1, %64 ], [ 1, %64 ], [ 1, %64 ], [ 1, %64 ], [ 1, %64 ], [ 1, %64 ], [ 1, %64 ], [ 1, %64 ], [ 1, %64 ], [ 1, %64 ], [ 1, %64 ], [ 1, %64 ], [ 1, %64 ], [ 1, %64 ], [ 1, %64 ], [ 0, %66 ], [ 1, %57 ], [ 1, %2 ]
  ret i8 %21

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !462
  %25 = tail call fastcc zeroext i8 @integer_valued_real_p(ptr noundef %24) #19
  %26 = icmp ne i8 %25, 0
  %27 = zext i1 %26 to i8
  br label %20

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !462
  %31 = tail call fastcc zeroext i8 @integer_valued_real_p(ptr noundef %30) #19
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %20, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !462
  %36 = tail call fastcc zeroext i8 @integer_valued_real_p(ptr noundef %35) #19
  %37 = icmp ne i8 %36, 0
  %38 = zext i1 %37 to i8
  br label %20

39:                                               ; preds = %2
  %40 = getelementptr inbounds %struct.tree_real_cst, ptr %3, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !462
  %42 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !462
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 65535
  %46 = icmp eq i64 %45, 14
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = tail call i32 @vector_type_mode(ptr noundef nonnull %43) #21
  br label %54

49:                                               ; preds = %39
  %50 = getelementptr inbounds %struct.tree_type, ptr %43, i64 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = lshr i32 %51, 16
  %53 = and i32 %52, 255
  br label %54

54:                                               ; preds = %49, %47
  %55 = phi i32 [ %48, %47 ], [ %53, %49 ]
  %56 = tail call zeroext i8 @real_isinteger(ptr noundef %41, i32 noundef %55) #21
  br label %20

57:                                               ; preds = %2
  %58 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !462
  %60 = getelementptr inbounds %struct.tree_common, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !462
  %62 = load i64, ptr %61, align 8
  %63 = trunc i64 %62 to i16
  switch i16 %63, label %77 [
    i16 8, label %20
    i16 9, label %11
  ]

64:                                               ; preds = %2
  %65 = tail call i32 @builtin_mathfn_code(ptr noundef nonnull %3) #19, !range !686
  switch i32 %65, label %77 [
    i32 24, label %20
    i32 25, label %20
    i32 26, label %20
    i32 63, label %20
    i32 64, label %20
    i32 65, label %20
    i32 171, label %20
    i32 172, label %20
    i32 173, label %20
    i32 195, label %20
    i32 196, label %20
    i32 197, label %20
    i32 198, label %20
    i32 199, label %20
    i32 200, label %20
    i32 240, label %20
    i32 241, label %20
    i32 242, label %20
    i32 72, label %66
    i32 73, label %66
    i32 74, label %66
    i32 69, label %66
    i32 70, label %66
    i32 71, label %66
  ]

66:                                               ; preds = %64, %64, %64, %64, %64, %64
  %67 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !462
  %69 = tail call fastcc zeroext i8 @integer_valued_real_p(ptr noundef %68) #19
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %20, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !462
  %74 = tail call fastcc zeroext i8 @integer_valued_real_p(ptr noundef %73) #19
  %75 = icmp ne i8 %74, 0
  %76 = zext i1 %75 to i8
  br label %20

77:                                               ; preds = %57, %2, %64
  br label %20
}

; Function Attrs: optsize
declare ptr @strip_float_extensions(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @real_isinteger(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @real_isfinite(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @real_to_integer2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @fit_double_type(i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @build_int_cst_wide(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @exact_log2(i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @floor_log2(i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @real_isneg(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @real_isinf(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @real_compare(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @fold_build3_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @interclass_mathfn_icode(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !prof !449 !PGOFuncName !738 {
  %3 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 2047
  switch i32 %5, label %7 [
    i32 93, label %8
    i32 94, label %8
    i32 95, label %8
    i32 469, label %6
    i32 470, label %6
    i32 471, label %6
    i32 481, label %11
    i32 467, label %11
    i32 460, label %11
    i32 461, label %11
    i32 462, label %11
    i32 463, label %11
    i32 464, label %11
    i32 465, label %11
    i32 472, label %11
    i32 473, label %11
    i32 474, label %11
  ]

6:                                                ; preds = %2, %2, %2
  br label %11

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.721, i32 noundef 2278, ptr noundef nonnull @.str.722) #21
  br label %11

8:                                                ; preds = %2, %2, %2
  %9 = load i32, ptr @flag_errno_math, align 4, !tbaa !469
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %6, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %7, %8
  %12 = phi ptr [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 89), %8 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 104), %6 ], [ null, %2 ], [ null, %2 ], [ null, %2 ], [ null, %2 ], [ null, %2 ], [ null, %2 ], [ null, %2 ], [ null, %2 ], [ null, %2 ], [ null, %2 ], [ null, %2 ], [ null, %7 ]
  %13 = phi i1 [ false, %8 ], [ false, %6 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %2 ], [ true, %7 ]
  %14 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !462
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 14
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = tail call i32 @vector_type_mode(ptr noundef nonnull %15) #21
  br label %26

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.tree_type, ptr %15, i64 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 255
  br label %26

26:                                               ; preds = %21, %19
  %27 = phi i32 [ %20, %19 ], [ %25, %21 ]
  br i1 %13, label %32, label %28

28:                                               ; preds = %26
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds %struct.optab_d, ptr %12, i64 0, i32 4, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !739
  br label %32

32:                                               ; preds = %26, %8, %28
  %33 = phi i32 [ %31, %28 ], [ 2956, %8 ], [ 2956, %26 ]
  ret i32 %33
}

; Function Attrs: optsize
declare void @get_max_float(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @real_from_string(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @init_target_chars() unnamed_addr #3 !prof !741 !PGOFuncName !742 {
  %1 = load i1, ptr @init_target_chars.init, align 1
  br i1 %1, label %26, label %2, !prof !743

2:                                                ; preds = %0
  %3 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 26), align 8, !tbaa !714
  %4 = tail call i64 %3(i64 noundef 10) #21
  store i64 %4, ptr @target_newline, align 8, !tbaa !453
  %5 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 26), align 8, !tbaa !714
  %6 = tail call i64 %5(i64 noundef 37) #21
  store i64 %6, ptr @target_percent, align 8, !tbaa !453
  %7 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 26), align 8, !tbaa !714
  %8 = tail call i64 %7(i64 noundef 99) #21
  store i64 %8, ptr @target_c, align 8, !tbaa !453
  %9 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 26), align 8, !tbaa !714
  %10 = tail call i64 %9(i64 noundef 115) #21
  %11 = load i64, ptr @target_newline, align 8, !tbaa !453
  %12 = icmp eq i64 %11, 0
  %13 = load i64, ptr @target_percent, align 8
  %14 = icmp eq i64 %13, 0
  %15 = select i1 %12, i1 true, i1 %14
  %16 = load i64, ptr @target_c, align 8
  %17 = icmp eq i64 %16, 0
  %18 = select i1 %15, i1 true, i1 %17
  %19 = icmp eq i64 %10, 0
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %26, label %21, !prof !744

21:                                               ; preds = %2
  %22 = trunc i64 %13 to i8
  store i8 %22, ptr @target_percent_c, align 1, !tbaa !462
  %23 = trunc i64 %16 to i8
  store i8 %23, ptr getelementptr inbounds ([3 x i8], ptr @target_percent_c, i64 0, i64 1), align 1, !tbaa !462
  store i8 0, ptr getelementptr inbounds ([3 x i8], ptr @target_percent_c, i64 0, i64 2), align 1, !tbaa !462
  store i8 %22, ptr @target_percent_s, align 1, !tbaa !462
  %24 = trunc i64 %10 to i8
  store i8 %24, ptr getelementptr inbounds ([3 x i8], ptr @target_percent_s, i64 0, i64 1), align 1, !tbaa !462
  store i8 0, ptr getelementptr inbounds ([3 x i8], ptr @target_percent_s, i64 0, i64 2), align 1, !tbaa !462
  store i8 %22, ptr @target_percent_s_newline, align 1, !tbaa !462
  store i8 %24, ptr getelementptr inbounds ([4 x i8], ptr @target_percent_s_newline, i64 0, i64 1), align 1, !tbaa !462
  %25 = trunc i64 %11 to i8
  store i8 %25, ptr getelementptr inbounds ([4 x i8], ptr @target_percent_s_newline, i64 0, i64 2), align 1, !tbaa !462
  store i8 0, ptr getelementptr inbounds ([4 x i8], ptr @target_percent_s_newline, i64 0, i64 3), align 1, !tbaa !462
  store i1 true, ptr @init_target_chars.init, align 1
  br label %26

26:                                               ; preds = %0, %21, %2
  %27 = phi i8 [ 0, %2 ], [ 1, %21 ], [ 1, %0 ]
  ret i8 %27
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_load_exponent(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #3 !prof !745 !PGOFuncName !746 {
  %6 = alloca %struct.real_value, align 8
  %7 = alloca %struct.real_value, align 8
  %8 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 9) #19, !range !451
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %207, label %10, !prof !747

10:                                               ; preds = %5
  %11 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 8) #19, !range !451
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %207, label %13, !prof !747

13:                                               ; preds = %10
  %14 = tail call ptr @tree_strip_nop_conversions(ptr noundef %1) #21
  %15 = tail call ptr @tree_strip_nop_conversions(ptr noundef %2) #21
  %16 = tail call i32 @real_zerop(ptr noundef %14) #21
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %30, !prof !748

18:                                               ; preds = %13
  %19 = tail call i32 @integer_zerop(ptr noundef %15) #21
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30, !prof !748

21:                                               ; preds = %18
  %22 = load i64, ptr %14, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 24
  br i1 %24, label %25, label %32, !prof !749

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tree_real_cst, ptr %14, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !462
  %28 = tail call zeroext i8 @real_isfinite(ptr noundef %27) #21
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %32, !prof !750

30:                                               ; preds = %25, %18, %13
  %31 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %3, ptr noundef %14, ptr noundef %15) #21
  br label %207

32:                                               ; preds = %25, %21
  %33 = icmp eq i8 %4, 0
  br i1 %33, label %34, label %79, !prof !747

34:                                               ; preds = %32
  %35 = load i64, ptr %3, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 14
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #21
  br label %45

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = lshr i32 %42, 16
  %44 = and i32 %43, 255
  br label %45

45:                                               ; preds = %40, %38
  %46 = phi i32 [ %39, %38 ], [ %44, %40 ]
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !462
  %50 = icmp eq i8 %49, 9
  %51 = load i64, ptr %3, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 14
  br i1 %50, label %54, label %62

54:                                               ; preds = %45
  br i1 %53, label %55, label %57

55:                                               ; preds = %54
  %56 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #21
  br label %70

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %59 = load i32, ptr %58, align 4
  %60 = lshr i32 %59, 16
  %61 = and i32 %60, 255
  br label %70

62:                                               ; preds = %45
  br i1 %53, label %63, label %65

63:                                               ; preds = %62
  %64 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #21
  br label %70

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %67 = load i32, ptr %66, align 4
  %68 = lshr i32 %67, 16
  %69 = and i32 %68, 255
  br label %70

70:                                               ; preds = %63, %65, %55, %57
  %71 = phi i32 [ %56, %55 ], [ %61, %57 ], [ %64, %63 ], [ %69, %65 ]
  %72 = add i32 %71, -38
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !458
  %76 = getelementptr inbounds %struct.real_format, ptr %75, i64 0, i32 2
  %77 = load i32, ptr %76, align 8, !tbaa !709
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %79, label %207

79:                                               ; preds = %70, %32
  %80 = load i64, ptr %14, align 8
  %81 = and i64 %80, 134283263
  %82 = icmp eq i64 %81, 24
  br i1 %82, label %83, label %207, !prof !751

83:                                               ; preds = %79
  %84 = tail call i32 @host_integerp(ptr noundef %15, i32 noundef 0) #21
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %207, label %86, !prof !752

86:                                               ; preds = %83
  %87 = load i64, ptr %3, align 8
  %88 = and i64 %87, 65535
  %89 = icmp eq i64 %88, 14
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #21
  br label %97

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %94 = load i32, ptr %93, align 4
  %95 = lshr i32 %94, 16
  %96 = and i32 %95, 255
  br label %97

97:                                               ; preds = %92, %90
  %98 = phi i32 [ %91, %90 ], [ %96, %92 ]
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !462
  %102 = icmp eq i8 %101, 9
  %103 = load i64, ptr %3, align 8
  %104 = and i64 %103, 65535
  %105 = icmp eq i64 %104, 14
  br i1 %102, label %106, label %114

106:                                              ; preds = %97
  br i1 %105, label %107, label %109

107:                                              ; preds = %106
  %108 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #21
  br label %122

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %111 = load i32, ptr %110, align 4
  %112 = lshr i32 %111, 16
  %113 = and i32 %112, 255
  br label %122

114:                                              ; preds = %97
  br i1 %105, label %115, label %117

115:                                              ; preds = %114
  %116 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #21
  br label %122

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %119 = load i32, ptr %118, align 4
  %120 = lshr i32 %119, 16
  %121 = and i32 %120, 255
  br label %122

122:                                              ; preds = %115, %117, %107, %109
  %123 = phi i32 [ %108, %107 ], [ %113, %109 ], [ %116, %115 ], [ %121, %117 ]
  %124 = add i32 %123, -38
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %125
  %127 = load ptr, ptr %126, align 8, !tbaa !458
  %128 = getelementptr inbounds %struct.real_format, ptr %127, i64 0, i32 6
  %129 = load i32, ptr %128, align 8, !tbaa !753
  %130 = load i64, ptr %3, align 8
  %131 = and i64 %130, 65535
  %132 = icmp eq i64 %131, 14
  br i1 %132, label %133, label %135

133:                                              ; preds = %122
  %134 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #21
  br label %140

135:                                              ; preds = %122
  %136 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %137 = load i32, ptr %136, align 4
  %138 = lshr i32 %137, 16
  %139 = and i32 %138, 255
  br label %140

140:                                              ; preds = %135, %133
  %141 = phi i32 [ %134, %133 ], [ %139, %135 ]
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %142
  %144 = load i8, ptr %143, align 1, !tbaa !462
  %145 = icmp eq i8 %144, 9
  %146 = load i64, ptr %3, align 8
  %147 = and i64 %146, 65535
  %148 = icmp eq i64 %147, 14
  br i1 %145, label %149, label %157

149:                                              ; preds = %140
  br i1 %148, label %150, label %152

150:                                              ; preds = %149
  %151 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #21
  br label %165

152:                                              ; preds = %149
  %153 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %154 = load i32, ptr %153, align 4
  %155 = lshr i32 %154, 16
  %156 = and i32 %155, 255
  br label %165

157:                                              ; preds = %140
  br i1 %148, label %158, label %160

158:                                              ; preds = %157
  %159 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #21
  br label %165

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %162 = load i32, ptr %161, align 4
  %163 = lshr i32 %162, 16
  %164 = and i32 %163, 255
  br label %165

165:                                              ; preds = %158, %160, %150, %152
  %166 = phi i32 [ %151, %150 ], [ %156, %152 ], [ %159, %158 ], [ %164, %160 ]
  %167 = add i32 %166, -38
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %168
  %170 = load ptr, ptr %169, align 8, !tbaa !458
  %171 = getelementptr inbounds %struct.real_format, ptr %170, i64 0, i32 5
  %172 = load i32, ptr %171, align 4, !tbaa !718
  %173 = sub nsw i32 %129, %172
  %174 = tail call i32 @llvm.abs.i32(i32 %173, i1 false)
  %175 = zext i32 %174 to i64
  %176 = shl nuw nsw i64 %175, 1
  %177 = tail call i64 @tree_low_cst(ptr noundef %15, i32 noundef 0) #21
  %178 = sub nsw i64 0, %176
  %179 = icmp sgt i64 %177, %178
  %180 = icmp slt i64 %177, %176
  %181 = and i1 %179, %180
  br i1 %181, label %182, label %207

182:                                              ; preds = %165
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #20
  %183 = getelementptr inbounds %struct.tree_real_cst, ptr %14, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !462
  %185 = trunc i64 %177 to i32
  call void @real_ldexp(ptr noundef nonnull %6, ptr noundef %184, i32 noundef %185) #21
  %186 = call zeroext i8 @real_isinf(ptr noundef nonnull %6) #21
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %182
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #20
  br label %207

189:                                              ; preds = %182
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #20
  %190 = load i64, ptr %3, align 8
  %191 = and i64 %190, 65535
  %192 = icmp eq i64 %191, 14
  br i1 %192, label %193, label %195

193:                                              ; preds = %189
  %194 = call i32 @vector_type_mode(ptr noundef nonnull %3) #21
  br label %200

195:                                              ; preds = %189
  %196 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %197 = load i32, ptr %196, align 4
  %198 = lshr i32 %197, 16
  %199 = and i32 %198, 255
  br label %200

200:                                              ; preds = %195, %193
  %201 = phi i32 [ %194, %193 ], [ %199, %195 ]
  call void @real_value_truncate(ptr dead_on_unwind nonnull writable sret(%struct.real_value) align 8 %7, i32 noundef %201, ptr noundef nonnull byval(%struct.real_value) align 8 %6) #21
  %202 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %6, ptr noundef nonnull %7) #21
  %203 = icmp eq i8 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %200
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #20
  br label %207

205:                                              ; preds = %200
  %206 = call ptr @build_real(ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.real_value) align 8 %7) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #20
  br label %207

207:                                              ; preds = %188, %204, %165, %5, %10, %83, %79, %70, %205, %30
  %208 = phi ptr [ %31, %30 ], [ %206, %205 ], [ null, %70 ], [ null, %79 ], [ null, %83 ], [ null, %10 ], [ null, %5 ], [ null, %165 ], [ null, %204 ], [ null, %188 ]
  ret ptr %208
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_frexp(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 !prof !754 !PGOFuncName !755 {
  %5 = alloca %struct.real_value, align 8
  %6 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 9) #19, !range !451
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %49, label %8, !prof !750

8:                                                ; preds = %4
  %9 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 10) #19, !range !451
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %49, label %11, !prof !750

11:                                               ; preds = %8
  %12 = tail call ptr @tree_strip_nop_conversions(ptr noundef %1) #21
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 134283263
  %15 = icmp eq i64 %14, 24
  br i1 %15, label %16, label %49, !prof !756

16:                                               ; preds = %11
  %17 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef %0, ptr noundef %2) #21
  %18 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !462
  %20 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 16
  %21 = load ptr, ptr %20, align 8, !tbaa !462
  %22 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %23 = icmp eq ptr %21, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.tree_real_cst, ptr %12, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !462
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 3
  switch i32 %28, label %41 [
    i32 0, label %29
    i32 3, label %31
    i32 2, label %31
    i32 1, label %33
  ]

29:                                               ; preds = %24
  %30 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !458
  br label %42

31:                                               ; preds = %24, %24
  %32 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %3, ptr noundef nonnull %12, ptr noundef nonnull %17) #21
  br label %49

33:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %26, i64 32, i1 false), !tbaa.struct !681
  %34 = load i32, ptr %5, align 8
  %35 = and i32 %34, 63
  store i32 %35, ptr %5, align 8
  %36 = tail call ptr @build_real(ptr noundef %3, ptr noundef nonnull byval(%struct.real_value) align 8 %5) #21
  %37 = load i32, ptr %26, align 8
  %38 = ashr i32 %37, 6
  %39 = sext i32 %38 to i64
  %40 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %39) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %42

41:                                               ; preds = %24
  unreachable

42:                                               ; preds = %33, %29
  %43 = phi ptr [ %36, %33 ], [ %12, %29 ]
  %44 = phi ptr [ %40, %33 ], [ %30, %29 ]
  %45 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 53, ptr noundef %3, ptr noundef nonnull %17, ptr noundef %44) #21
  %46 = load i64, ptr %45, align 8
  %47 = or i64 %46, 65536
  store i64 %47, ptr %45, align 8
  %48 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 52, ptr noundef %3, ptr noundef nonnull %45, ptr noundef %43) #21
  br label %49

49:                                               ; preds = %16, %31, %42, %11, %4, %8
  %50 = phi ptr [ null, %8 ], [ null, %4 ], [ null, %11 ], [ %48, %42 ], [ %32, %31 ], [ null, %16 ]
  ret ptr %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_modf(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 !prof !449 !PGOFuncName !757 {
  %5 = alloca %struct.real_value, align 8
  %6 = alloca %struct.real_value, align 8
  %7 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 9) #19, !range !451
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %56, label %9

9:                                                ; preds = %4
  %10 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 10) #19, !range !451
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %56, label %12

12:                                               ; preds = %9
  %13 = tail call ptr @tree_strip_nop_conversions(ptr noundef %1) #21
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 134283263
  %16 = icmp eq i64 %15, 24
  br i1 %16, label %17, label %56

17:                                               ; preds = %12
  %18 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef %0, ptr noundef %2) #21
  %19 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !462
  %21 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 16
  %22 = load ptr, ptr %21, align 8, !tbaa !462
  %23 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 16
  %24 = load ptr, ptr %23, align 8, !tbaa !462
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.tree_real_cst, ptr %13, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !462
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #20
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 3
  switch i32 %30, label %48 [
    i32 3, label %31
    i32 0, label %31
    i32 2, label %32
    i32 1, label %37
  ]

31:                                               ; preds = %26, %26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %28, i64 32, i1 false), !tbaa.struct !681
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %28, i64 32, i1 false)
  br label %49

32:                                               ; preds = %26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) @dconst0, i64 32, i1 false), !tbaa.struct !681
  %33 = and i32 %29, 8
  %34 = load i32, ptr %6, align 8
  %35 = and i32 %34, -9
  %36 = or disjoint i32 %35, %33
  store i32 %36, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %28, i64 32, i1 false), !tbaa.struct !681
  br label %49

37:                                               ; preds = %26
  call void @real_trunc(ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull %28) #21
  %38 = call zeroext i8 @real_arithmetic(ptr noundef nonnull %6, i32 noundef 64, ptr noundef nonnull %28, ptr noundef nonnull %5) #21
  %39 = load i32, ptr %28, align 8
  %40 = and i32 %39, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = load i32, ptr %6, align 8
  %44 = and i32 %43, 3
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = or i32 %43, 8
  store i32 %47, ptr %6, align 8
  br label %49

48:                                               ; preds = %26
  unreachable

49:                                               ; preds = %37, %42, %46, %32, %31
  %50 = call ptr @build_real(ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.real_value) align 8 %5) #21
  %51 = call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 53, ptr noundef nonnull %3, ptr noundef nonnull %18, ptr noundef %50) #21
  %52 = load i64, ptr %51, align 8
  %53 = or i64 %52, 65536
  store i64 %53, ptr %51, align 8
  %54 = call ptr @build_real(ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.real_value) align 8 %6) #21
  %55 = call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 52, ptr noundef nonnull %3, ptr noundef nonnull %51, ptr noundef %54) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %56

56:                                               ; preds = %17, %12, %4, %9, %49
  %57 = phi ptr [ %55, %49 ], [ null, %9 ], [ null, %4 ], [ null, %12 ], [ null, %17 ]
  ret ptr %57
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_bzero(i32 noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #3 !prof !449 !PGOFuncName !758 {
  %5 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 10) #19, !range !451
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 8) #19, !range !451
  %9 = icmp eq i8 %8, 0
  %10 = icmp eq i8 %3, 0
  %11 = or i1 %10, %9
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !458
  %14 = load ptr, ptr @sizetype_tab, align 16, !tbaa !458
  %15 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %14, ptr noundef %2) #21
  %16 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !458
  %17 = tail call fastcc ptr @fold_builtin_memset(i32 noundef %0, ptr noundef %1, ptr noundef %13, ptr noundef %15, ptr noundef %16, i8 noundef zeroext %3) #19
  br label %18

18:                                               ; preds = %4, %7, %12
  %19 = phi ptr [ %17, %12 ], [ null, %7 ], [ null, %4 ]
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @fold_builtin_fputs(i32 noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #3 !prof !759 {
  %7 = icmp eq i8 %4, 0
  %8 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 359), align 8
  %9 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 358), align 16
  %10 = select i1 %7, ptr %9, ptr %8, !prof !760
  %11 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 364), align 16
  %12 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 363), align 8
  %13 = select i1 %7, ptr %12, ptr %11, !prof !760
  %14 = icmp eq i8 %3, 0
  br i1 %14, label %57, label %15, !prof !761

15:                                               ; preds = %6
  %16 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 10) #19, !range !451
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %57, label %18, !prof !762

18:                                               ; preds = %15
  %19 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 10) #19, !range !451
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %57, label %21, !prof !762

21:                                               ; preds = %18
  %22 = icmp eq ptr %5, null
  br i1 %22, label %23, label %26, !prof !763

23:                                               ; preds = %21
  %24 = tail call ptr @c_strlen(ptr noundef %1, i32 noundef 0) #19
  %25 = icmp eq ptr %24, null
  br i1 %25, label %57, label %26, !prof !764

26:                                               ; preds = %21, %23
  %27 = phi ptr [ %24, %23 ], [ %5, %21 ]
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 23
  br i1 %30, label %31, label %57, !prof !765

31:                                               ; preds = %26
  %32 = tail call i32 @compare_tree_int(ptr noundef nonnull %27, i64 noundef 1) #21
  switch i32 %32, label %56 [
    i32 -1, label %33
    i32 0, label %37
    i32 1, label %47
  ], !prof !766

33:                                               ; preds = %31
  %34 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %35 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !458
  %36 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %34, ptr noundef %35, ptr noundef %2) #21
  br label %57

37:                                               ; preds = %31
  %38 = tail call fastcc ptr @c_getstr(ptr noundef %1) #19
  %39 = icmp eq ptr %38, null
  br i1 %39, label %47, label %40, !prof !767

40:                                               ; preds = %37
  %41 = icmp eq ptr %10, null
  br i1 %41, label %57, label %42, !prof !767

42:                                               ; preds = %40
  %43 = load i8, ptr %38, align 1, !tbaa !462
  %44 = sext i8 %43 to i64
  %45 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %44) #21
  %46 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %10, i32 noundef 2, ptr noundef %45, ptr noundef %2) #19
  br label %57

47:                                               ; preds = %37, %31
  %48 = load ptr, ptr @cfun, align 8, !tbaa !458
  %49 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %48) #21
  %50 = icmp ne i8 %49, 0
  %51 = icmp eq ptr %13, null
  %52 = select i1 %50, i1 true, i1 %51
  br i1 %52, label %57, label %53, !prof !768

53:                                               ; preds = %47
  %54 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 18), align 16, !tbaa !458
  %55 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %13, i32 noundef 4, ptr noundef %1, ptr noundef %54, ptr noundef nonnull %27, ptr noundef %2) #19
  br label %57

56:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.721, i32 noundef 11645, ptr noundef nonnull @.str.722) #21
  br label %57

57:                                               ; preds = %42, %40, %47, %23, %26, %15, %18, %6, %56, %53, %33
  %58 = phi ptr [ null, %56 ], [ %55, %53 ], [ %36, %33 ], [ null, %6 ], [ null, %18 ], [ null, %15 ], [ null, %26 ], [ null, %23 ], [ null, %47 ], [ null, %40 ], [ %46, %42 ]
  ret ptr %58
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_strstr(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 !prof !769 !PGOFuncName !770 {
  %5 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 10) #19, !range !451
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %46, label %7, !prof !771

7:                                                ; preds = %4
  %8 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 10) #19, !range !451
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %46, label %10, !prof !771

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @c_getstr(ptr noundef %2) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %46, label %13, !prof !772

13:                                               ; preds = %10
  %14 = tail call fastcc ptr @c_getstr(ptr noundef %1) #19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16, !prof !773

16:                                               ; preds = %13
  %17 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %11) #19
  %18 = icmp eq ptr %17, null
  %19 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !462
  br i1 %18, label %21, label %23

21:                                               ; preds = %16
  %22 = tail call ptr @build_int_cst(ptr noundef %20, i64 noundef 0) #21
  br label %46

23:                                               ; preds = %16
  %24 = ptrtoint ptr %17 to i64
  %25 = ptrtoint ptr %14 to i64
  %26 = sub i64 %24, %25
  %27 = tail call ptr @size_int_kind(i64 noundef %26, i32 noundef 0) #21
  %28 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 66, ptr noundef %20, ptr noundef %1, ptr noundef %27) #21
  %29 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %3, ptr noundef %28) #21
  br label %46

30:                                               ; preds = %13
  %31 = load i8, ptr %11, align 1, !tbaa !462
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %35, !prof !774

33:                                               ; preds = %30
  %34 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %3, ptr noundef %1) #21
  br label %46

35:                                               ; preds = %30
  %36 = getelementptr inbounds i8, ptr %11, i64 1
  %37 = load i8, ptr %36, align 1, !tbaa !462
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %46, !prof !774

39:                                               ; preds = %35
  %40 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 339), align 8, !tbaa !458
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = sext i8 %31 to i64
  %44 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %43) #21
  %45 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %40, i32 noundef 2, ptr noundef %1, ptr noundef %44) #19
  br label %46

46:                                               ; preds = %33, %42, %10, %23, %21, %35, %39, %4, %7
  %47 = phi ptr [ null, %7 ], [ null, %4 ], [ %34, %33 ], [ %45, %42 ], [ null, %10 ], [ %22, %21 ], [ %29, %23 ], [ null, %35 ], [ null, %39 ]
  ret ptr %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_strcat(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 !prof !775 !PGOFuncName !776 {
  %4 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 10) #19, !range !451
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %41, label %6, !prof !777

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 10) #19, !range !451
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %41, label %9, !prof !777

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @c_getstr(ptr noundef %2) #19
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12, !prof !778

12:                                               ; preds = %9
  %13 = load i8, ptr %10, align 1, !tbaa !462
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %41, label %15, !prof !779

15:                                               ; preds = %12, %9
  %16 = tail call zeroext i8 @optimize_insn_for_speed_p() #21
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %41, label %18, !prof !780

18:                                               ; preds = %15
  %19 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 345), align 8, !tbaa !458
  %20 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 341), align 8, !tbaa !458
  %21 = icmp ne ptr %19, null
  %22 = icmp ne ptr %20, null
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %24, label %41, !prof !781

24:                                               ; preds = %18
  %25 = tail call ptr @c_strlen(ptr noundef %2, i32 noundef 1) #19
  %26 = icmp eq ptr %25, null
  br i1 %26, label %41, label %27, !prof !782

27:                                               ; preds = %24
  %28 = load i64, ptr %25, align 8
  %29 = and i64 %28, 65536
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %41, !prof !783

31:                                               ; preds = %27
  %32 = tail call fastcc ptr @builtin_save_expr(ptr noundef %1) #19
  %33 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %19, i32 noundef 1, ptr noundef %32) #19
  %34 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !462
  %36 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 66, ptr noundef %35, ptr noundef %32, ptr noundef %33) #21
  %37 = tail call fastcc ptr @builtin_save_expr(ptr noundef %36) #19
  %38 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %20, i32 noundef 2, ptr noundef %37, ptr noundef %2) #19
  %39 = load ptr, ptr %34, align 8, !tbaa !462
  %40 = tail call ptr @build2_stat(i32 noundef 52, ptr noundef %39, ptr noundef %38, ptr noundef %32) #21
  br label %41

41:                                               ; preds = %12, %27, %24, %18, %31, %15, %3, %6
  %42 = phi ptr [ null, %6 ], [ null, %3 ], [ %1, %12 ], [ %40, %31 ], [ null, %18 ], [ null, %24 ], [ null, %27 ], [ null, %15 ]
  ret ptr %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_strspn(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 !prof !745 !PGOFuncName !784 {
  %4 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 10) #19, !range !451
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %30, label %6, !prof !747

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 10) #19, !range !451
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %30, label %9, !prof !747

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @c_getstr(ptr noundef %1) #19
  %11 = tail call fastcc ptr @c_getstr(ptr noundef %2) #19
  %12 = icmp ne ptr %10, null
  %13 = icmp ne ptr %11, null
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %18, !prof !785

15:                                               ; preds = %9
  %16 = tail call i64 @strspn(ptr noundef nonnull %10, ptr noundef nonnull %11) #19
  %17 = tail call ptr @size_int_kind(i64 noundef %16, i32 noundef 0) #21
  br label %30

18:                                               ; preds = %9
  br i1 %12, label %19, label %22, !prof !747

19:                                               ; preds = %18
  %20 = load i8, ptr %10, align 1, !tbaa !462
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19, %18
  br i1 %13, label %23, label %30, !prof !786

23:                                               ; preds = %22
  %24 = load i8, ptr %11, align 1, !tbaa !462
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %30, !prof !787

26:                                               ; preds = %23, %19
  %27 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !458
  %28 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !458
  %29 = tail call ptr @omit_two_operands_loc(i32 noundef %0, ptr noundef %27, ptr noundef %28, ptr noundef %1, ptr noundef %2) #21
  br label %30

30:                                               ; preds = %15, %26, %23, %22, %3, %6
  %31 = phi ptr [ null, %6 ], [ null, %3 ], [ %17, %15 ], [ %29, %26 ], [ null, %23 ], [ null, %22 ]
  ret ptr %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_strcspn(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 !prof !788 !PGOFuncName !789 {
  %4 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 10) #19, !range !451
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %35, label %6, !prof !790

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 10) #19, !range !451
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %35, label %9, !prof !790

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @c_getstr(ptr noundef %1) #19
  %11 = tail call fastcc ptr @c_getstr(ptr noundef %2) #19
  %12 = icmp ne ptr %10, null
  %13 = icmp ne ptr %11, null
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %15, label %18, !prof !791

15:                                               ; preds = %9
  %16 = tail call i64 @strcspn(ptr noundef nonnull %10, ptr noundef nonnull %11) #19
  %17 = tail call ptr @size_int_kind(i64 noundef %16, i32 noundef 0) #21
  br label %35

18:                                               ; preds = %9
  br i1 %12, label %19, label %26, !prof !790

19:                                               ; preds = %18
  %20 = load i8, ptr %10, align 1, !tbaa !462
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !458
  %24 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !458
  %25 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %23, ptr noundef %24, ptr noundef %2) #21
  br label %35

26:                                               ; preds = %19, %18
  br i1 %13, label %27, label %35, !prof !792

27:                                               ; preds = %26
  %28 = load i8, ptr %11, align 1, !tbaa !462
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %35, !prof !756

30:                                               ; preds = %27
  %31 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 345), align 8, !tbaa !458
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %31, i32 noundef 1, ptr noundef %1) #19
  br label %35

35:                                               ; preds = %15, %22, %30, %33, %27, %26, %3, %6
  %36 = phi ptr [ null, %6 ], [ null, %3 ], [ %17, %15 ], [ %25, %22 ], [ %34, %33 ], [ null, %30 ], [ null, %27 ], [ null, %26 ]
  ret ptr %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_strchr(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 !prof !793 !PGOFuncName !794 {
  %5 = alloca i8, align 1
  %6 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 10) #19, !range !451
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %39, label %8, !prof !795

8:                                                ; preds = %4
  %9 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 8) #19, !range !451
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %39, label %11, !prof !795

11:                                               ; preds = %8
  %12 = load i64, ptr %2, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 23
  br i1 %14, label %15, label %39, !prof !796

15:                                               ; preds = %11
  %16 = tail call fastcc ptr @c_getstr(ptr noundef %1) #19
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18, !prof !797

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #20
  %19 = call fastcc i32 @target_char_cast(ptr noundef nonnull %2, ptr noundef nonnull %5) #19, !range !798
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %37, !prof !799

21:                                               ; preds = %18
  %22 = load i8, ptr %5, align 1, !tbaa !462
  %23 = sext i8 %22 to i32
  %24 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %16, i32 noundef %23) #19
  %25 = icmp eq ptr %24, null
  %26 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !462
  br i1 %25, label %28, label %30, !prof !800

28:                                               ; preds = %21
  %29 = tail call ptr @build_int_cst(ptr noundef %27, i64 noundef 0) #21
  br label %37

30:                                               ; preds = %21
  %31 = ptrtoint ptr %24 to i64
  %32 = ptrtoint ptr %16 to i64
  %33 = sub i64 %31, %32
  %34 = tail call ptr @size_int_kind(i64 noundef %33, i32 noundef 0) #21
  %35 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 66, ptr noundef %27, ptr noundef %1, ptr noundef %34) #21
  %36 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %3, ptr noundef %35) #21
  br label %37

37:                                               ; preds = %18, %30, %28
  %38 = phi ptr [ %29, %28 ], [ %36, %30 ], [ null, %18 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  br label %39

39:                                               ; preds = %37, %11, %15, %4, %8
  %40 = phi ptr [ null, %8 ], [ null, %4 ], [ %38, %37 ], [ null, %11 ], [ null, %15 ]
  ret ptr %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_strrchr(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 !prof !801 !PGOFuncName !802 {
  %5 = alloca i8, align 1
  %6 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 10) #19, !range !451
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %47, label %8, !prof !803

8:                                                ; preds = %4
  %9 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 8) #19, !range !451
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %47, label %11, !prof !803

11:                                               ; preds = %8
  %12 = load i64, ptr %2, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 23
  br i1 %14, label %15, label %47, !prof !804

15:                                               ; preds = %11
  %16 = tail call fastcc ptr @c_getstr(ptr noundef %1) #19
  %17 = icmp eq ptr %16, null
  br i1 %17, label %39, label %18, !prof !805

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #20
  %19 = call fastcc i32 @target_char_cast(ptr noundef nonnull %2, ptr noundef nonnull %5) #19, !range !798
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %18
  %22 = load i8, ptr %5, align 1, !tbaa !462
  %23 = sext i8 %22 to i32
  %24 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %16, i32 noundef %23) #19
  %25 = icmp eq ptr %24, null
  %26 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !462
  br i1 %25, label %28, label %30

28:                                               ; preds = %21
  %29 = tail call ptr @build_int_cst(ptr noundef %27, i64 noundef 0) #21
  br label %37

30:                                               ; preds = %21
  %31 = ptrtoint ptr %24 to i64
  %32 = ptrtoint ptr %16 to i64
  %33 = sub i64 %31, %32
  %34 = tail call ptr @size_int_kind(i64 noundef %33, i32 noundef 0) #21
  %35 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 66, ptr noundef %27, ptr noundef %1, ptr noundef %34) #21
  %36 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %3, ptr noundef %35) #21
  br label %37

37:                                               ; preds = %18, %30, %28
  %38 = phi ptr [ %29, %28 ], [ %36, %30 ], [ null, %18 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #20
  br label %47

39:                                               ; preds = %15
  %40 = tail call i32 @integer_zerop(ptr noundef nonnull %2) #21
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42, !prof !805

42:                                               ; preds = %39
  %43 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 339), align 8, !tbaa !458
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %43, i32 noundef 2, ptr noundef %1, ptr noundef nonnull %2) #19
  br label %47

47:                                               ; preds = %37, %45, %11, %39, %42, %4, %8
  %48 = phi ptr [ null, %8 ], [ null, %4 ], [ %38, %37 ], [ %46, %45 ], [ null, %11 ], [ null, %39 ], [ null, %42 ]
  ret ptr %48
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_stpcpy(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 !prof !449 !PGOFuncName !806 {
  %5 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 10) #19, !range !451
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %43, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %3, i32 noundef 10) #19, !range !451
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %43, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @c_strlen(ptr noundef %3, i32 noundef 1) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %43, label %13

13:                                               ; preds = %10
  %14 = load i64, ptr %11, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 23
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load ptr, ptr @cfun, align 8, !tbaa !458
  %19 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %18) #21
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @integer_zerop(ptr noundef nonnull %11) #21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %21, %17
  %25 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 330), align 16, !tbaa !458
  %26 = icmp eq ptr %25, null
  br i1 %26, label %43, label %27

27:                                               ; preds = %24
  %28 = tail call ptr @size_int_kind(i64 noundef 1, i32 noundef 1) #21
  %29 = tail call ptr @size_binop_loc(i32 noundef %0, i32 noundef 63, ptr noundef nonnull %11, ptr noundef %28) #21
  %30 = tail call fastcc ptr @builtin_save_expr(ptr noundef %2) #19
  %31 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %25, i32 noundef 3, ptr noundef %30, ptr noundef %3, ptr noundef %29) #19
  %32 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !462
  %34 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !462
  %36 = load ptr, ptr @sizetype_tab, align 16, !tbaa !458
  %37 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %36, ptr noundef nonnull %11) #21
  %38 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !462
  %40 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 66, ptr noundef %39, ptr noundef %30, ptr noundef %37) #21
  %41 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %35, ptr noundef %40) #21
  %42 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %35, ptr noundef %41, ptr noundef %31) #21
  br label %43

43:                                               ; preds = %24, %21, %10, %13, %4, %7, %27
  %44 = phi ptr [ %42, %27 ], [ null, %7 ], [ null, %4 ], [ null, %13 ], [ null, %10 ], [ null, %21 ], [ null, %24 ]
  ret ptr %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_strcmp(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 !prof !807 !PGOFuncName !808 {
  %4 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 10) #19, !range !451
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %54, label %6, !prof !809

6:                                                ; preds = %3
  %7 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 10) #19, !range !451
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %54, label %9, !prof !809

9:                                                ; preds = %6
  %10 = tail call i32 @operand_equal_p(ptr noundef %1, ptr noundef %2, i32 noundef 0) #21
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12, !prof !810

12:                                               ; preds = %9
  %13 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !458
  br label %54

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @c_getstr(ptr noundef %1) #19
  %16 = tail call fastcc ptr @c_getstr(ptr noundef %2) #19
  %17 = icmp eq ptr %15, null
  %18 = icmp eq ptr %16, null
  br i1 %17, label %27, label %19, !prof !811

19:                                               ; preds = %14
  br i1 %18, label %40, label %20, !prof !812

20:                                               ; preds = %19
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) %16) #19
  %22 = icmp slt i32 %21, 0
  %23 = icmp eq i32 %21, 0
  %24 = select i1 %23, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14)
  %25 = select i1 %22, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 15), ptr %24, !prof !813
  %26 = load ptr, ptr %25, align 8, !tbaa !458
  br label %54

27:                                               ; preds = %14
  br i1 %18, label %54, label %28, !prof !814

28:                                               ; preds = %27
  %29 = load i8, ptr %16, align 1, !tbaa !462
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %54, !prof !815

31:                                               ; preds = %28
  %32 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 2), align 16, !tbaa !458
  %33 = tail call ptr @build_qualified_type(ptr noundef %32, i32 noundef 1) #21
  %34 = load i32, ptr @ptr_mode, align 4, !tbaa !469
  %35 = tail call ptr @build_pointer_type_for_mode(ptr noundef %33, i32 noundef %34, i8 noundef zeroext 1) #21
  %36 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %37 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %35, ptr noundef %1) #21
  %38 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %33, ptr noundef %37) #21
  %39 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %36, ptr noundef %38) #21
  br label %54

40:                                               ; preds = %19
  %41 = load i8, ptr %15, align 1, !tbaa !462
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %54, !prof !816

43:                                               ; preds = %40
  %44 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 2), align 16, !tbaa !458
  %45 = tail call ptr @build_qualified_type(ptr noundef %44, i32 noundef 1) #21
  %46 = load i32, ptr @ptr_mode, align 4, !tbaa !469
  %47 = tail call ptr @build_pointer_type_for_mode(ptr noundef %45, i32 noundef %46, i8 noundef zeroext 1) #21
  %48 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %49 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %47, ptr noundef %2) #21
  %50 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %45, ptr noundef %49) #21
  %51 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %48, ptr noundef %50) #21
  %52 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %53 = tail call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 79, ptr noundef %52, ptr noundef %51) #21
  br label %54

54:                                               ; preds = %27, %28, %40, %3, %6, %43, %31, %20, %12
  %55 = phi ptr [ %13, %12 ], [ %26, %20 ], [ %39, %31 ], [ %53, %43 ], [ null, %6 ], [ null, %3 ], [ null, %40 ], [ null, %28 ], [ null, %27 ]
  ret ptr %55
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_strpbrk(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 !prof !817 !PGOFuncName !818 {
  %5 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 10) #19, !range !451
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %49, label %7, !prof !819

7:                                                ; preds = %4
  %8 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 10) #19, !range !451
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %49, label %10, !prof !819

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @c_getstr(ptr noundef %2) #19
  %12 = icmp eq ptr %11, null
  br i1 %12, label %49, label %13, !prof !820

13:                                               ; preds = %10
  %14 = tail call fastcc ptr @c_getstr(ptr noundef %1) #19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %30, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @strpbrk(ptr noundef nonnull %14, ptr noundef nonnull %11) #19
  %18 = icmp eq ptr %17, null
  %19 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !462
  br i1 %18, label %21, label %23

21:                                               ; preds = %16
  %22 = tail call ptr @build_int_cst(ptr noundef %20, i64 noundef 0) #21
  br label %49

23:                                               ; preds = %16
  %24 = ptrtoint ptr %17 to i64
  %25 = ptrtoint ptr %14 to i64
  %26 = sub i64 %24, %25
  %27 = tail call ptr @size_int_kind(i64 noundef %26, i32 noundef 0) #21
  %28 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 66, ptr noundef %20, ptr noundef %1, ptr noundef %27) #21
  %29 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %3, ptr noundef %28) #21
  br label %49

30:                                               ; preds = %13
  %31 = load i8, ptr %11, align 1, !tbaa !462
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !462
  %36 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !458
  %37 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %35, ptr noundef %36, ptr noundef %1) #21
  br label %49

38:                                               ; preds = %30
  %39 = getelementptr inbounds i8, ptr %11, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !462
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 339), align 8, !tbaa !458
  %44 = icmp eq ptr %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = sext i8 %31 to i64
  %47 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %46) #21
  %48 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %43, i32 noundef 2, ptr noundef %1, ptr noundef %47) #19
  br label %49

49:                                               ; preds = %33, %45, %10, %23, %21, %38, %42, %4, %7
  %50 = phi ptr [ null, %7 ], [ null, %4 ], [ %37, %33 ], [ %48, %45 ], [ null, %10 ], [ %22, %21 ], [ %29, %23 ], [ null, %38 ], [ null, %42 ]
  ret ptr %50
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_expect(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 !prof !821 !PGOFuncName !822 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !469
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %9, label %19, !prof !823

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !462
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 23
  br i1 %14, label %15, label %19, !prof !824

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !462
  %18 = load i64, ptr %17, align 8
  br label %19

19:                                               ; preds = %15, %9, %3
  %20 = phi i64 [ %18, %15 ], [ %4, %9 ], [ %4, %3 ]
  %21 = phi ptr [ %17, %15 ], [ %1, %9 ], [ %1, %3 ]
  %22 = and i64 %20, 65535
  %23 = icmp eq i64 %22, 59
  br i1 %23, label %24, label %32, !prof !825

24:                                               ; preds = %19
  %25 = tail call ptr @get_callee_fndecl(ptr noundef nonnull %21) #21
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.tree_function_decl, ptr %25, i64 0, i32 5
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 8191
  %31 = icmp eq i32 %30, 6590
  br i1 %31, label %96, label %32

32:                                               ; preds = %27, %24, %19
  br label %33

33:                                               ; preds = %32, %46
  %34 = phi ptr [ %48, %46 ], [ %1, %32 ]
  %35 = load i64, ptr %34, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 116
  br i1 %37, label %38, label %56, !prof !826

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !462
  %41 = load i64, ptr %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = and i32 %42, 65535
  %44 = add nsw i32 %43, -6
  %45 = icmp ult i32 %44, 3
  br i1 %45, label %46, label %56, !prof !827

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.tree_exp, ptr %34, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !462
  %49 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !462
  %51 = load i64, ptr %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = and i32 %52, 65535
  %54 = add nsw i32 %53, -6
  %55 = icmp ult i32 %54, 3
  br i1 %55, label %33, label %56, !prof !828, !llvm.loop !829

56:                                               ; preds = %46, %38, %33
  %57 = trunc i64 %35 to i32
  %58 = and i32 %57, 65535
  %59 = add nsw i32 %58, -91
  %60 = icmp ult i32 %59, 2
  br i1 %60, label %61, label %74, !prof !830

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.tree_exp, ptr %34, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !462
  %64 = getelementptr inbounds %struct.tree_exp, ptr %34, i64 1
  %65 = load ptr, ptr %64, align 8, !tbaa !462
  %66 = tail call fastcc ptr @build_builtin_expect_predicate(i32 noundef %0, ptr noundef %63, ptr noundef %2) #19
  %67 = tail call fastcc ptr @build_builtin_expect_predicate(i32 noundef %0, ptr noundef %65, ptr noundef %2) #19
  %68 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !462
  %70 = tail call ptr @build2_stat(i32 noundef %58, ptr noundef %69, ptr noundef %66, ptr noundef %67) #21
  %71 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !462
  %73 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %72, ptr noundef %70) #21
  br label %96

74:                                               ; preds = %56
  %75 = load i64, ptr %1, align 8
  %76 = and i64 %75, 131072
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %96, label %78, !prof !831

78:                                               ; preds = %74
  %79 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %1) #21
  %80 = load i64, ptr %79, align 8
  %81 = and i64 %80, 65535
  %82 = icmp eq i64 %81, 121
  br i1 %82, label %83, label %95

83:                                               ; preds = %78, %89
  %84 = phi ptr [ %86, %89 ], [ %79, %78 ]
  %85 = getelementptr inbounds %struct.tree_exp, ptr %84, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !462
  %87 = load i64, ptr %86, align 8
  %88 = trunc i64 %87 to i16
  switch i16 %88, label %95 [
    i16 41, label %89
    i16 45, label %89
    i16 32, label %90
    i16 29, label %90
  ]

89:                                               ; preds = %83, %83
  br label %83

90:                                               ; preds = %83, %83
  %91 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %86, i64 0, i32 4
  %92 = load i32, ptr %91, align 8
  %93 = and i32 %92, 128
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %83, %90, %78
  br label %96

96:                                               ; preds = %90, %74, %27, %95, %61
  %97 = phi ptr [ %73, %61 ], [ %1, %95 ], [ %1, %27 ], [ null, %74 ], [ null, %90 ]
  ret ptr %97
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_powi(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 !prof !449 !PGOFuncName !832 {
  %5 = alloca %struct.real_value, align 8
  %6 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 9) #19, !range !451
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %51, label %8

8:                                                ; preds = %4
  %9 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 8) #19, !range !451
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %51, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @real_onep(ptr noundef %1) #21
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = tail call ptr @build_real(ptr noundef %3, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst1) #21
  %16 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %3, ptr noundef %15, ptr noundef %2) #21
  br label %51

17:                                               ; preds = %11
  %18 = tail call i32 @host_integerp(ptr noundef %2, i32 noundef 0) #21
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %51, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.tree_int_cst, ptr %2, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !462
  %23 = load i64, ptr %1, align 8
  %24 = and i64 %23, 134283263
  %25 = icmp eq i64 %24, 24
  br i1 %25, label %26, label %43

26:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %27 = getelementptr inbounds %struct.tree_real_cst, ptr %1, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !462
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %28, i64 32, i1 false), !tbaa.struct !681
  %29 = load i64, ptr %3, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 14
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #21
  br label %39

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 255
  br label %39

39:                                               ; preds = %34, %32
  %40 = phi i32 [ %33, %32 ], [ %38, %34 ]
  %41 = call zeroext i8 @real_powi(ptr noundef nonnull %5, i32 noundef %40, ptr noundef nonnull %5, i64 noundef %22) #21
  %42 = call ptr @build_real(ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.real_value) align 8 %5) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  br label %51

43:                                               ; preds = %20
  switch i64 %22, label %51 [
    i64 0, label %44
    i64 1, label %50
    i64 -1, label %47
  ]

44:                                               ; preds = %43
  %45 = tail call ptr @build_real(ptr noundef %3, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst1) #21
  %46 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %3, ptr noundef %45, ptr noundef nonnull %1) #21
  br label %51

47:                                               ; preds = %43
  %48 = tail call ptr @build_real(ptr noundef %3, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst1) #21
  %49 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 75, ptr noundef %3, ptr noundef %48, ptr noundef nonnull %1) #21
  br label %51

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %39, %47, %44, %17, %43, %50, %4, %8, %14
  %52 = phi ptr [ %16, %14 ], [ null, %8 ], [ null, %4 ], [ null, %43 ], [ null, %17 ], [ %42, %39 ], [ %49, %47 ], [ %46, %44 ], [ %1, %50 ]
  ret ptr %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_copysign(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 !prof !449 !PGOFuncName !833 {
  %6 = alloca %struct.real_value, align 8
  %7 = alloca %struct.real_value, align 8
  %8 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 9) #19, !range !451
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %46, label %10

10:                                               ; preds = %5
  %11 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %3, i32 noundef 9) #19, !range !451
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %46, label %13

13:                                               ; preds = %10
  %14 = tail call i32 @operand_equal_p(ptr noundef %2, ptr noundef %3, i32 noundef 0) #21
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %4, ptr noundef %2) #21
  br label %46

18:                                               ; preds = %13
  %19 = load i64, ptr %2, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 24
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load i64, ptr %3, align 8
  %24 = and i64 %19, 134217728
  %25 = icmp eq i64 %24, 0
  %26 = and i64 %23, 134283263
  %27 = icmp eq i64 %26, 24
  %28 = and i1 %25, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #20
  %30 = getelementptr inbounds %struct.tree_real_cst, ptr %2, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !462
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %31, i64 32, i1 false), !tbaa.struct !681
  %32 = getelementptr inbounds %struct.tree_real_cst, ptr %3, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !462
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %33, i64 32, i1 false), !tbaa.struct !681
  call void @real_copysign(ptr noundef nonnull %6, ptr noundef nonnull %7) #21
  %34 = call ptr @build_real(ptr noundef %4, ptr noundef nonnull byval(%struct.real_value) align 8 %6) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #20
  br label %46

35:                                               ; preds = %22, %18
  %36 = tail call zeroext i8 @tree_expr_nonnegative_p(ptr noundef %3) #21
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = tail call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 82, ptr noundef %4, ptr noundef nonnull %2) #21
  %40 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %4, ptr noundef %39, ptr noundef %3) #21
  br label %46

41:                                               ; preds = %35
  %42 = tail call ptr @fold_strip_sign_ops(ptr noundef nonnull %2) #21
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %41
  %45 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef %1, i32 noundef 2, ptr noundef nonnull %42, ptr noundef %3) #19
  br label %46

46:                                               ; preds = %41, %5, %10, %44, %38, %29, %16
  %47 = phi ptr [ %17, %16 ], [ %40, %38 ], [ %45, %44 ], [ %34, %29 ], [ null, %10 ], [ null, %5 ], [ null, %41 ]
  ret ptr %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_unordered_cmp(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #3 !prof !449 !PGOFuncName !834 {
  %7 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !462
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !462
  %11 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !462
  %13 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !462
  %15 = load i64, ptr %12, align 8
  %16 = trunc i64 %15 to i32
  %17 = and i32 %16, 65535
  %18 = load i64, ptr %14, align 8
  %19 = trunc i64 %18 to i32
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %17, 9
  %22 = icmp eq i32 %20, 9
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %24, label %33

24:                                               ; preds = %6
  %25 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 1023
  %28 = getelementptr inbounds %struct.tree_type, ptr %14, i64 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 1023
  %31 = icmp ult i32 %27, %30
  %32 = select i1 %31, ptr %14, ptr %12
  br label %40

33:                                               ; preds = %6
  %34 = icmp eq i32 %20, 8
  %35 = select i1 %21, i1 %34, i1 false
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = icmp eq i32 %17, 8
  %38 = select i1 %37, i1 %22, i1 false
  %39 = select i1 %38, ptr %14, ptr null
  br label %40

40:                                               ; preds = %36, %33, %24
  %41 = phi ptr [ %32, %24 ], [ %12, %33 ], [ %39, %36 ]
  %42 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %41, ptr noundef nonnull %2) #21
  %43 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %41, ptr noundef nonnull %3) #21
  %44 = icmp eq i32 %4, 103
  %45 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !462
  %47 = load i64, ptr %46, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 14
  br i1 %44, label %50, label %346

50:                                               ; preds = %40
  br i1 %49, label %51, label %54

51:                                               ; preds = %50
  %52 = tail call i32 @vector_type_mode(ptr noundef nonnull %46) #21
  %53 = load ptr, ptr %45, align 8, !tbaa !462
  br label %59

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = lshr i32 %56, 16
  %58 = and i32 %57, 255
  br label %59

59:                                               ; preds = %54, %51
  %60 = phi ptr [ %53, %51 ], [ %46, %54 ]
  %61 = phi i32 [ %52, %51 ], [ %58, %54 ]
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !462
  %65 = icmp eq i8 %64, 8
  br i1 %65, label %123, label %66

66:                                               ; preds = %59
  %67 = load i64, ptr %60, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 14
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = tail call i32 @vector_type_mode(ptr noundef nonnull %60) #21
  %72 = load ptr, ptr %45, align 8, !tbaa !462
  br label %78

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.tree_type, ptr %60, i64 0, i32 6
  %75 = load i32, ptr %74, align 4
  %76 = lshr i32 %75, 16
  %77 = and i32 %76, 255
  br label %78

78:                                               ; preds = %73, %70
  %79 = phi ptr [ %72, %70 ], [ %60, %73 ]
  %80 = phi i32 [ %71, %70 ], [ %77, %73 ]
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !462
  %84 = icmp eq i8 %83, 9
  br i1 %84, label %123, label %85

85:                                               ; preds = %78
  %86 = load i64, ptr %79, align 8
  %87 = and i64 %86, 65535
  %88 = icmp eq i64 %87, 14
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = tail call i32 @vector_type_mode(ptr noundef nonnull %79) #21
  %91 = load ptr, ptr %45, align 8, !tbaa !462
  br label %97

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.tree_type, ptr %79, i64 0, i32 6
  %94 = load i32, ptr %93, align 4
  %95 = lshr i32 %94, 16
  %96 = and i32 %95, 255
  br label %97

97:                                               ; preds = %92, %89
  %98 = phi ptr [ %91, %89 ], [ %79, %92 ]
  %99 = phi i32 [ %90, %89 ], [ %96, %92 ]
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !462
  %103 = icmp eq i8 %102, 11
  br i1 %103, label %123, label %104

104:                                              ; preds = %97
  %105 = load i64, ptr %98, align 8
  %106 = and i64 %105, 65535
  %107 = icmp eq i64 %106, 14
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = tail call i32 @vector_type_mode(ptr noundef nonnull %98) #21
  br label %115

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.tree_type, ptr %98, i64 0, i32 6
  %112 = load i32, ptr %111, align 4
  %113 = lshr i32 %112, 16
  %114 = and i32 %113, 255
  br label %115

115:                                              ; preds = %110, %108
  %116 = phi i32 [ %109, %108 ], [ %114, %110 ]
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !462
  %120 = icmp eq i8 %119, 17
  br i1 %120, label %121, label %341

121:                                              ; preds = %115
  %122 = load ptr, ptr %45, align 8, !tbaa !462
  br label %123

123:                                              ; preds = %121, %97, %78, %59
  %124 = phi ptr [ %122, %121 ], [ %98, %97 ], [ %79, %78 ], [ %60, %59 ]
  %125 = load i64, ptr %124, align 8
  %126 = and i64 %125, 65535
  %127 = icmp eq i64 %126, 14
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = tail call i32 @vector_type_mode(ptr noundef nonnull %124) #21
  %130 = load ptr, ptr %45, align 8, !tbaa !462
  br label %136

131:                                              ; preds = %123
  %132 = getelementptr inbounds %struct.tree_type, ptr %124, i64 0, i32 6
  %133 = load i32, ptr %132, align 4
  %134 = lshr i32 %133, 16
  %135 = and i32 %134, 255
  br label %136

136:                                              ; preds = %131, %128
  %137 = phi ptr [ %130, %128 ], [ %124, %131 ]
  %138 = phi i32 [ %129, %128 ], [ %135, %131 ]
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !462
  %142 = icmp eq i8 %141, 8
  br i1 %142, label %162, label %143

143:                                              ; preds = %136
  %144 = load i64, ptr %137, align 8
  %145 = and i64 %144, 65535
  %146 = icmp eq i64 %145, 14
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = tail call i32 @vector_type_mode(ptr noundef nonnull %137) #21
  %149 = load ptr, ptr %45, align 8, !tbaa !462
  br label %155

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.tree_type, ptr %137, i64 0, i32 6
  %152 = load i32, ptr %151, align 4
  %153 = lshr i32 %152, 16
  %154 = and i32 %153, 255
  br label %155

155:                                              ; preds = %150, %147
  %156 = phi ptr [ %149, %147 ], [ %137, %150 ]
  %157 = phi i32 [ %148, %147 ], [ %154, %150 ]
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %158
  %160 = load i8, ptr %159, align 1, !tbaa !462
  %161 = icmp eq i8 %160, 9
  br i1 %161, label %162, label %174

162:                                              ; preds = %155, %136
  %163 = phi ptr [ %156, %155 ], [ %137, %136 ]
  %164 = load i64, ptr %163, align 8
  %165 = and i64 %164, 65535
  %166 = icmp eq i64 %165, 14
  br i1 %166, label %167, label %169

167:                                              ; preds = %162
  %168 = tail call i32 @vector_type_mode(ptr noundef nonnull %163) #21
  br label %191

169:                                              ; preds = %162
  %170 = getelementptr inbounds %struct.tree_type, ptr %163, i64 0, i32 6
  %171 = load i32, ptr %170, align 4
  %172 = lshr i32 %171, 16
  %173 = and i32 %172, 255
  br label %191

174:                                              ; preds = %155
  %175 = load i64, ptr %156, align 8
  %176 = and i64 %175, 65535
  %177 = icmp eq i64 %176, 14
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = tail call i32 @vector_type_mode(ptr noundef nonnull %156) #21
  br label %185

180:                                              ; preds = %174
  %181 = getelementptr inbounds %struct.tree_type, ptr %156, i64 0, i32 6
  %182 = load i32, ptr %181, align 4
  %183 = lshr i32 %182, 16
  %184 = and i32 %183, 255
  br label %185

185:                                              ; preds = %180, %178
  %186 = phi i32 [ %179, %178 ], [ %184, %180 ]
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %187
  %189 = load i8, ptr %188, align 1, !tbaa !462
  %190 = zext i8 %189 to i32
  br label %191

191:                                              ; preds = %167, %169, %185
  %192 = phi i32 [ %190, %185 ], [ %168, %167 ], [ %173, %169 ]
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %193
  %195 = load i8, ptr %194, align 1, !tbaa !462
  %196 = icmp eq i8 %195, 9
  %197 = load ptr, ptr %45, align 8, !tbaa !462
  %198 = load i64, ptr %197, align 8
  %199 = and i64 %198, 65535
  %200 = icmp eq i64 %199, 14
  br i1 %196, label %201, label %265

201:                                              ; preds = %191
  br i1 %200, label %202, label %205

202:                                              ; preds = %201
  %203 = tail call i32 @vector_type_mode(ptr noundef nonnull %197) #21
  %204 = load ptr, ptr %45, align 8, !tbaa !462
  br label %210

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.tree_type, ptr %197, i64 0, i32 6
  %207 = load i32, ptr %206, align 4
  %208 = lshr i32 %207, 16
  %209 = and i32 %208, 255
  br label %210

210:                                              ; preds = %205, %202
  %211 = phi ptr [ %204, %202 ], [ %197, %205 ]
  %212 = phi i32 [ %203, %202 ], [ %209, %205 ]
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %213
  %215 = load i8, ptr %214, align 1, !tbaa !462
  %216 = icmp eq i8 %215, 8
  br i1 %216, label %236, label %217

217:                                              ; preds = %210
  %218 = load i64, ptr %211, align 8
  %219 = and i64 %218, 65535
  %220 = icmp eq i64 %219, 14
  br i1 %220, label %221, label %224

221:                                              ; preds = %217
  %222 = tail call i32 @vector_type_mode(ptr noundef nonnull %211) #21
  %223 = load ptr, ptr %45, align 8, !tbaa !462
  br label %229

224:                                              ; preds = %217
  %225 = getelementptr inbounds %struct.tree_type, ptr %211, i64 0, i32 6
  %226 = load i32, ptr %225, align 4
  %227 = lshr i32 %226, 16
  %228 = and i32 %227, 255
  br label %229

229:                                              ; preds = %224, %221
  %230 = phi ptr [ %223, %221 ], [ %211, %224 ]
  %231 = phi i32 [ %222, %221 ], [ %228, %224 ]
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %232
  %234 = load i8, ptr %233, align 1, !tbaa !462
  %235 = icmp eq i8 %234, 9
  br i1 %235, label %236, label %248

236:                                              ; preds = %229, %210
  %237 = phi ptr [ %230, %229 ], [ %211, %210 ]
  %238 = load i64, ptr %237, align 8
  %239 = and i64 %238, 65535
  %240 = icmp eq i64 %239, 14
  br i1 %240, label %241, label %243

241:                                              ; preds = %236
  %242 = tail call i32 @vector_type_mode(ptr noundef nonnull %237) #21
  br label %329

243:                                              ; preds = %236
  %244 = getelementptr inbounds %struct.tree_type, ptr %237, i64 0, i32 6
  %245 = load i32, ptr %244, align 4
  %246 = lshr i32 %245, 16
  %247 = and i32 %246, 255
  br label %329

248:                                              ; preds = %229
  %249 = load i64, ptr %230, align 8
  %250 = and i64 %249, 65535
  %251 = icmp eq i64 %250, 14
  br i1 %251, label %252, label %254

252:                                              ; preds = %248
  %253 = tail call i32 @vector_type_mode(ptr noundef nonnull %230) #21
  br label %259

254:                                              ; preds = %248
  %255 = getelementptr inbounds %struct.tree_type, ptr %230, i64 0, i32 6
  %256 = load i32, ptr %255, align 4
  %257 = lshr i32 %256, 16
  %258 = and i32 %257, 255
  br label %259

259:                                              ; preds = %254, %252
  %260 = phi i32 [ %253, %252 ], [ %258, %254 ]
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %261
  %263 = load i8, ptr %262, align 1, !tbaa !462
  %264 = zext i8 %263 to i32
  br label %329

265:                                              ; preds = %191
  br i1 %200, label %266, label %269

266:                                              ; preds = %265
  %267 = tail call i32 @vector_type_mode(ptr noundef nonnull %197) #21
  %268 = load ptr, ptr %45, align 8, !tbaa !462
  br label %274

269:                                              ; preds = %265
  %270 = getelementptr inbounds %struct.tree_type, ptr %197, i64 0, i32 6
  %271 = load i32, ptr %270, align 4
  %272 = lshr i32 %271, 16
  %273 = and i32 %272, 255
  br label %274

274:                                              ; preds = %269, %266
  %275 = phi ptr [ %268, %266 ], [ %197, %269 ]
  %276 = phi i32 [ %267, %266 ], [ %273, %269 ]
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %277
  %279 = load i8, ptr %278, align 1, !tbaa !462
  %280 = icmp eq i8 %279, 8
  br i1 %280, label %300, label %281

281:                                              ; preds = %274
  %282 = load i64, ptr %275, align 8
  %283 = and i64 %282, 65535
  %284 = icmp eq i64 %283, 14
  br i1 %284, label %285, label %288

285:                                              ; preds = %281
  %286 = tail call i32 @vector_type_mode(ptr noundef nonnull %275) #21
  %287 = load ptr, ptr %45, align 8, !tbaa !462
  br label %293

288:                                              ; preds = %281
  %289 = getelementptr inbounds %struct.tree_type, ptr %275, i64 0, i32 6
  %290 = load i32, ptr %289, align 4
  %291 = lshr i32 %290, 16
  %292 = and i32 %291, 255
  br label %293

293:                                              ; preds = %288, %285
  %294 = phi ptr [ %287, %285 ], [ %275, %288 ]
  %295 = phi i32 [ %286, %285 ], [ %292, %288 ]
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %296
  %298 = load i8, ptr %297, align 1, !tbaa !462
  %299 = icmp eq i8 %298, 9
  br i1 %299, label %300, label %312

300:                                              ; preds = %293, %274
  %301 = phi ptr [ %294, %293 ], [ %275, %274 ]
  %302 = load i64, ptr %301, align 8
  %303 = and i64 %302, 65535
  %304 = icmp eq i64 %303, 14
  br i1 %304, label %305, label %307

305:                                              ; preds = %300
  %306 = tail call i32 @vector_type_mode(ptr noundef nonnull %301) #21
  br label %329

307:                                              ; preds = %300
  %308 = getelementptr inbounds %struct.tree_type, ptr %301, i64 0, i32 6
  %309 = load i32, ptr %308, align 4
  %310 = lshr i32 %309, 16
  %311 = and i32 %310, 255
  br label %329

312:                                              ; preds = %293
  %313 = load i64, ptr %294, align 8
  %314 = and i64 %313, 65535
  %315 = icmp eq i64 %314, 14
  br i1 %315, label %316, label %318

316:                                              ; preds = %312
  %317 = tail call i32 @vector_type_mode(ptr noundef nonnull %294) #21
  br label %323

318:                                              ; preds = %312
  %319 = getelementptr inbounds %struct.tree_type, ptr %294, i64 0, i32 6
  %320 = load i32, ptr %319, align 4
  %321 = lshr i32 %320, 16
  %322 = and i32 %321, 255
  br label %323

323:                                              ; preds = %318, %316
  %324 = phi i32 [ %317, %316 ], [ %322, %318 ]
  %325 = zext i32 %324 to i64
  %326 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %325
  %327 = load i8, ptr %326, align 1, !tbaa !462
  %328 = zext i8 %327 to i32
  br label %329

329:                                              ; preds = %323, %307, %305, %259, %243, %241
  %330 = phi i32 [ %264, %259 ], [ %242, %241 ], [ %247, %243 ], [ %328, %323 ], [ %306, %305 ], [ %311, %307 ]
  %331 = add i32 %330, -38
  %332 = zext i32 %331 to i64
  %333 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %332
  %334 = load ptr, ptr %333, align 8, !tbaa !458
  %335 = getelementptr inbounds %struct.real_format, ptr %334, i64 0, i32 11
  %336 = load i8, ptr %335, align 2, !tbaa !716
  %337 = icmp eq i8 %336, 0
  %338 = load i32, ptr @flag_finite_math_only, align 4
  %339 = icmp ne i32 %338, 0
  %340 = select i1 %337, i1 true, i1 %339
  br i1 %340, label %341, label %344

341:                                              ; preds = %329, %115
  %342 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !458
  %343 = tail call ptr @omit_two_operands_loc(i32 noundef %0, ptr noundef %10, ptr noundef %342, ptr noundef nonnull %42, ptr noundef %43) #21
  br label %642

344:                                              ; preds = %329
  %345 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 103, ptr noundef %10, ptr noundef nonnull %42, ptr noundef %43) #21
  br label %642

346:                                              ; preds = %40
  br i1 %49, label %347, label %350

347:                                              ; preds = %346
  %348 = tail call i32 @vector_type_mode(ptr noundef nonnull %46) #21
  %349 = load ptr, ptr %45, align 8, !tbaa !462
  br label %355

350:                                              ; preds = %346
  %351 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 6
  %352 = load i32, ptr %351, align 4
  %353 = lshr i32 %352, 16
  %354 = and i32 %353, 255
  br label %355

355:                                              ; preds = %350, %347
  %356 = phi ptr [ %349, %347 ], [ %46, %350 ]
  %357 = phi i32 [ %348, %347 ], [ %354, %350 ]
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %358
  %360 = load i8, ptr %359, align 1, !tbaa !462
  %361 = icmp eq i8 %360, 8
  br i1 %361, label %419, label %362

362:                                              ; preds = %355
  %363 = load i64, ptr %356, align 8
  %364 = and i64 %363, 65535
  %365 = icmp eq i64 %364, 14
  br i1 %365, label %366, label %369

366:                                              ; preds = %362
  %367 = tail call i32 @vector_type_mode(ptr noundef nonnull %356) #21
  %368 = load ptr, ptr %45, align 8, !tbaa !462
  br label %374

369:                                              ; preds = %362
  %370 = getelementptr inbounds %struct.tree_type, ptr %356, i64 0, i32 6
  %371 = load i32, ptr %370, align 4
  %372 = lshr i32 %371, 16
  %373 = and i32 %372, 255
  br label %374

374:                                              ; preds = %369, %366
  %375 = phi ptr [ %368, %366 ], [ %356, %369 ]
  %376 = phi i32 [ %367, %366 ], [ %373, %369 ]
  %377 = zext i32 %376 to i64
  %378 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %377
  %379 = load i8, ptr %378, align 1, !tbaa !462
  %380 = icmp eq i8 %379, 9
  br i1 %380, label %419, label %381

381:                                              ; preds = %374
  %382 = load i64, ptr %375, align 8
  %383 = and i64 %382, 65535
  %384 = icmp eq i64 %383, 14
  br i1 %384, label %385, label %388

385:                                              ; preds = %381
  %386 = tail call i32 @vector_type_mode(ptr noundef nonnull %375) #21
  %387 = load ptr, ptr %45, align 8, !tbaa !462
  br label %393

388:                                              ; preds = %381
  %389 = getelementptr inbounds %struct.tree_type, ptr %375, i64 0, i32 6
  %390 = load i32, ptr %389, align 4
  %391 = lshr i32 %390, 16
  %392 = and i32 %391, 255
  br label %393

393:                                              ; preds = %388, %385
  %394 = phi ptr [ %387, %385 ], [ %375, %388 ]
  %395 = phi i32 [ %386, %385 ], [ %392, %388 ]
  %396 = zext i32 %395 to i64
  %397 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %396
  %398 = load i8, ptr %397, align 1, !tbaa !462
  %399 = icmp eq i8 %398, 11
  br i1 %399, label %419, label %400

400:                                              ; preds = %393
  %401 = load i64, ptr %394, align 8
  %402 = and i64 %401, 65535
  %403 = icmp eq i64 %402, 14
  br i1 %403, label %404, label %406

404:                                              ; preds = %400
  %405 = tail call i32 @vector_type_mode(ptr noundef nonnull %394) #21
  br label %411

406:                                              ; preds = %400
  %407 = getelementptr inbounds %struct.tree_type, ptr %394, i64 0, i32 6
  %408 = load i32, ptr %407, align 4
  %409 = lshr i32 %408, 16
  %410 = and i32 %409, 255
  br label %411

411:                                              ; preds = %406, %404
  %412 = phi i32 [ %405, %404 ], [ %410, %406 ]
  %413 = zext i32 %412 to i64
  %414 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %413
  %415 = load i8, ptr %414, align 1, !tbaa !462
  %416 = icmp eq i8 %415, 17
  br i1 %416, label %417, label %637

417:                                              ; preds = %411
  %418 = load ptr, ptr %45, align 8, !tbaa !462
  br label %419

419:                                              ; preds = %417, %393, %374, %355
  %420 = phi ptr [ %418, %417 ], [ %394, %393 ], [ %375, %374 ], [ %356, %355 ]
  %421 = load i64, ptr %420, align 8
  %422 = and i64 %421, 65535
  %423 = icmp eq i64 %422, 14
  br i1 %423, label %424, label %427

424:                                              ; preds = %419
  %425 = tail call i32 @vector_type_mode(ptr noundef nonnull %420) #21
  %426 = load ptr, ptr %45, align 8, !tbaa !462
  br label %432

427:                                              ; preds = %419
  %428 = getelementptr inbounds %struct.tree_type, ptr %420, i64 0, i32 6
  %429 = load i32, ptr %428, align 4
  %430 = lshr i32 %429, 16
  %431 = and i32 %430, 255
  br label %432

432:                                              ; preds = %427, %424
  %433 = phi ptr [ %426, %424 ], [ %420, %427 ]
  %434 = phi i32 [ %425, %424 ], [ %431, %427 ]
  %435 = zext i32 %434 to i64
  %436 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %435
  %437 = load i8, ptr %436, align 1, !tbaa !462
  %438 = icmp eq i8 %437, 8
  br i1 %438, label %458, label %439

439:                                              ; preds = %432
  %440 = load i64, ptr %433, align 8
  %441 = and i64 %440, 65535
  %442 = icmp eq i64 %441, 14
  br i1 %442, label %443, label %446

443:                                              ; preds = %439
  %444 = tail call i32 @vector_type_mode(ptr noundef nonnull %433) #21
  %445 = load ptr, ptr %45, align 8, !tbaa !462
  br label %451

446:                                              ; preds = %439
  %447 = getelementptr inbounds %struct.tree_type, ptr %433, i64 0, i32 6
  %448 = load i32, ptr %447, align 4
  %449 = lshr i32 %448, 16
  %450 = and i32 %449, 255
  br label %451

451:                                              ; preds = %446, %443
  %452 = phi ptr [ %445, %443 ], [ %433, %446 ]
  %453 = phi i32 [ %444, %443 ], [ %450, %446 ]
  %454 = zext i32 %453 to i64
  %455 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %454
  %456 = load i8, ptr %455, align 1, !tbaa !462
  %457 = icmp eq i8 %456, 9
  br i1 %457, label %458, label %470

458:                                              ; preds = %451, %432
  %459 = phi ptr [ %452, %451 ], [ %433, %432 ]
  %460 = load i64, ptr %459, align 8
  %461 = and i64 %460, 65535
  %462 = icmp eq i64 %461, 14
  br i1 %462, label %463, label %465

463:                                              ; preds = %458
  %464 = tail call i32 @vector_type_mode(ptr noundef nonnull %459) #21
  br label %487

465:                                              ; preds = %458
  %466 = getelementptr inbounds %struct.tree_type, ptr %459, i64 0, i32 6
  %467 = load i32, ptr %466, align 4
  %468 = lshr i32 %467, 16
  %469 = and i32 %468, 255
  br label %487

470:                                              ; preds = %451
  %471 = load i64, ptr %452, align 8
  %472 = and i64 %471, 65535
  %473 = icmp eq i64 %472, 14
  br i1 %473, label %474, label %476

474:                                              ; preds = %470
  %475 = tail call i32 @vector_type_mode(ptr noundef nonnull %452) #21
  br label %481

476:                                              ; preds = %470
  %477 = getelementptr inbounds %struct.tree_type, ptr %452, i64 0, i32 6
  %478 = load i32, ptr %477, align 4
  %479 = lshr i32 %478, 16
  %480 = and i32 %479, 255
  br label %481

481:                                              ; preds = %476, %474
  %482 = phi i32 [ %475, %474 ], [ %480, %476 ]
  %483 = zext i32 %482 to i64
  %484 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %483
  %485 = load i8, ptr %484, align 1, !tbaa !462
  %486 = zext i8 %485 to i32
  br label %487

487:                                              ; preds = %463, %465, %481
  %488 = phi i32 [ %486, %481 ], [ %464, %463 ], [ %469, %465 ]
  %489 = zext i32 %488 to i64
  %490 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %489
  %491 = load i8, ptr %490, align 1, !tbaa !462
  %492 = icmp eq i8 %491, 9
  %493 = load ptr, ptr %45, align 8, !tbaa !462
  %494 = load i64, ptr %493, align 8
  %495 = and i64 %494, 65535
  %496 = icmp eq i64 %495, 14
  br i1 %492, label %497, label %561

497:                                              ; preds = %487
  br i1 %496, label %498, label %501

498:                                              ; preds = %497
  %499 = tail call i32 @vector_type_mode(ptr noundef nonnull %493) #21
  %500 = load ptr, ptr %45, align 8, !tbaa !462
  br label %506

501:                                              ; preds = %497
  %502 = getelementptr inbounds %struct.tree_type, ptr %493, i64 0, i32 6
  %503 = load i32, ptr %502, align 4
  %504 = lshr i32 %503, 16
  %505 = and i32 %504, 255
  br label %506

506:                                              ; preds = %501, %498
  %507 = phi ptr [ %500, %498 ], [ %493, %501 ]
  %508 = phi i32 [ %499, %498 ], [ %505, %501 ]
  %509 = zext i32 %508 to i64
  %510 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %509
  %511 = load i8, ptr %510, align 1, !tbaa !462
  %512 = icmp eq i8 %511, 8
  br i1 %512, label %532, label %513

513:                                              ; preds = %506
  %514 = load i64, ptr %507, align 8
  %515 = and i64 %514, 65535
  %516 = icmp eq i64 %515, 14
  br i1 %516, label %517, label %520

517:                                              ; preds = %513
  %518 = tail call i32 @vector_type_mode(ptr noundef nonnull %507) #21
  %519 = load ptr, ptr %45, align 8, !tbaa !462
  br label %525

520:                                              ; preds = %513
  %521 = getelementptr inbounds %struct.tree_type, ptr %507, i64 0, i32 6
  %522 = load i32, ptr %521, align 4
  %523 = lshr i32 %522, 16
  %524 = and i32 %523, 255
  br label %525

525:                                              ; preds = %520, %517
  %526 = phi ptr [ %519, %517 ], [ %507, %520 ]
  %527 = phi i32 [ %518, %517 ], [ %524, %520 ]
  %528 = zext i32 %527 to i64
  %529 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %528
  %530 = load i8, ptr %529, align 1, !tbaa !462
  %531 = icmp eq i8 %530, 9
  br i1 %531, label %532, label %544

532:                                              ; preds = %525, %506
  %533 = phi ptr [ %526, %525 ], [ %507, %506 ]
  %534 = load i64, ptr %533, align 8
  %535 = and i64 %534, 65535
  %536 = icmp eq i64 %535, 14
  br i1 %536, label %537, label %539

537:                                              ; preds = %532
  %538 = tail call i32 @vector_type_mode(ptr noundef nonnull %533) #21
  br label %625

539:                                              ; preds = %532
  %540 = getelementptr inbounds %struct.tree_type, ptr %533, i64 0, i32 6
  %541 = load i32, ptr %540, align 4
  %542 = lshr i32 %541, 16
  %543 = and i32 %542, 255
  br label %625

544:                                              ; preds = %525
  %545 = load i64, ptr %526, align 8
  %546 = and i64 %545, 65535
  %547 = icmp eq i64 %546, 14
  br i1 %547, label %548, label %550

548:                                              ; preds = %544
  %549 = tail call i32 @vector_type_mode(ptr noundef nonnull %526) #21
  br label %555

550:                                              ; preds = %544
  %551 = getelementptr inbounds %struct.tree_type, ptr %526, i64 0, i32 6
  %552 = load i32, ptr %551, align 4
  %553 = lshr i32 %552, 16
  %554 = and i32 %553, 255
  br label %555

555:                                              ; preds = %550, %548
  %556 = phi i32 [ %549, %548 ], [ %554, %550 ]
  %557 = zext i32 %556 to i64
  %558 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %557
  %559 = load i8, ptr %558, align 1, !tbaa !462
  %560 = zext i8 %559 to i32
  br label %625

561:                                              ; preds = %487
  br i1 %496, label %562, label %565

562:                                              ; preds = %561
  %563 = tail call i32 @vector_type_mode(ptr noundef nonnull %493) #21
  %564 = load ptr, ptr %45, align 8, !tbaa !462
  br label %570

565:                                              ; preds = %561
  %566 = getelementptr inbounds %struct.tree_type, ptr %493, i64 0, i32 6
  %567 = load i32, ptr %566, align 4
  %568 = lshr i32 %567, 16
  %569 = and i32 %568, 255
  br label %570

570:                                              ; preds = %565, %562
  %571 = phi ptr [ %564, %562 ], [ %493, %565 ]
  %572 = phi i32 [ %563, %562 ], [ %569, %565 ]
  %573 = zext i32 %572 to i64
  %574 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %573
  %575 = load i8, ptr %574, align 1, !tbaa !462
  %576 = icmp eq i8 %575, 8
  br i1 %576, label %596, label %577

577:                                              ; preds = %570
  %578 = load i64, ptr %571, align 8
  %579 = and i64 %578, 65535
  %580 = icmp eq i64 %579, 14
  br i1 %580, label %581, label %584

581:                                              ; preds = %577
  %582 = tail call i32 @vector_type_mode(ptr noundef nonnull %571) #21
  %583 = load ptr, ptr %45, align 8, !tbaa !462
  br label %589

584:                                              ; preds = %577
  %585 = getelementptr inbounds %struct.tree_type, ptr %571, i64 0, i32 6
  %586 = load i32, ptr %585, align 4
  %587 = lshr i32 %586, 16
  %588 = and i32 %587, 255
  br label %589

589:                                              ; preds = %584, %581
  %590 = phi ptr [ %583, %581 ], [ %571, %584 ]
  %591 = phi i32 [ %582, %581 ], [ %588, %584 ]
  %592 = zext i32 %591 to i64
  %593 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %592
  %594 = load i8, ptr %593, align 1, !tbaa !462
  %595 = icmp eq i8 %594, 9
  br i1 %595, label %596, label %608

596:                                              ; preds = %589, %570
  %597 = phi ptr [ %590, %589 ], [ %571, %570 ]
  %598 = load i64, ptr %597, align 8
  %599 = and i64 %598, 65535
  %600 = icmp eq i64 %599, 14
  br i1 %600, label %601, label %603

601:                                              ; preds = %596
  %602 = tail call i32 @vector_type_mode(ptr noundef nonnull %597) #21
  br label %625

603:                                              ; preds = %596
  %604 = getelementptr inbounds %struct.tree_type, ptr %597, i64 0, i32 6
  %605 = load i32, ptr %604, align 4
  %606 = lshr i32 %605, 16
  %607 = and i32 %606, 255
  br label %625

608:                                              ; preds = %589
  %609 = load i64, ptr %590, align 8
  %610 = and i64 %609, 65535
  %611 = icmp eq i64 %610, 14
  br i1 %611, label %612, label %614

612:                                              ; preds = %608
  %613 = tail call i32 @vector_type_mode(ptr noundef nonnull %590) #21
  br label %619

614:                                              ; preds = %608
  %615 = getelementptr inbounds %struct.tree_type, ptr %590, i64 0, i32 6
  %616 = load i32, ptr %615, align 4
  %617 = lshr i32 %616, 16
  %618 = and i32 %617, 255
  br label %619

619:                                              ; preds = %614, %612
  %620 = phi i32 [ %613, %612 ], [ %618, %614 ]
  %621 = zext i32 %620 to i64
  %622 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %621
  %623 = load i8, ptr %622, align 1, !tbaa !462
  %624 = zext i8 %623 to i32
  br label %625

625:                                              ; preds = %619, %603, %601, %555, %539, %537
  %626 = phi i32 [ %560, %555 ], [ %538, %537 ], [ %543, %539 ], [ %624, %619 ], [ %602, %601 ], [ %607, %603 ]
  %627 = add i32 %626, -38
  %628 = zext i32 %627 to i64
  %629 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %628
  %630 = load ptr, ptr %629, align 8, !tbaa !458
  %631 = getelementptr inbounds %struct.real_format, ptr %630, i64 0, i32 11
  %632 = load i8, ptr %631, align 2, !tbaa !716
  %633 = icmp eq i8 %632, 0
  %634 = load i32, ptr @flag_finite_math_only, align 4
  %635 = icmp ne i32 %634, 0
  %636 = select i1 %633, i1 true, i1 %635
  br i1 %636, label %637, label %638

637:                                              ; preds = %625, %411
  br label %638

638:                                              ; preds = %625, %637
  %639 = phi i32 [ %5, %637 ], [ %4, %625 ]
  %640 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef %639, ptr noundef %10, ptr noundef nonnull %42, ptr noundef %43) #21
  %641 = tail call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 96, ptr noundef %10, ptr noundef %640) #21
  br label %642

642:                                              ; preds = %638, %344, %341
  %643 = phi ptr [ %343, %341 ], [ %345, %344 ], [ %641, %638 ]
  ret ptr %643
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_sprintf(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #3 !prof !835 !PGOFuncName !836 {
  %6 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 10) #19, !range !451
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %72, label %8, !prof !837

8:                                                ; preds = %5
  %9 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 10) #19, !range !451
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %72, label %11, !prof !837

11:                                               ; preds = %8
  %12 = icmp eq ptr %3, null
  br i1 %12, label %16, label %13, !prof !838

13:                                               ; preds = %11
  %14 = tail call fastcc zeroext i8 @validate_arg(ptr noundef nonnull %3, i32 noundef 10) #19, !range !451
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %72, label %16, !prof !839

16:                                               ; preds = %13, %11
  %17 = tail call fastcc ptr @c_getstr(ptr noundef %2) #19
  %18 = icmp eq ptr %17, null
  br i1 %18, label %72, label %19, !prof !840

19:                                               ; preds = %16
  %20 = tail call fastcc zeroext i8 @init_target_chars() #19, !range !451
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %72, label %22, !prof !841

22:                                               ; preds = %19
  %23 = load i64, ptr @target_percent, align 8, !tbaa !453
  %24 = trunc i64 %23 to i32
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %17, i32 noundef %24) #19
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %37, !prof !842

27:                                               ; preds = %22
  %28 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 341), align 8, !tbaa !458
  %29 = icmp ne ptr %28, null
  %30 = and i1 %12, %29
  br i1 %30, label %31, label %72, !prof !843

31:                                               ; preds = %27
  %32 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %28, i32 noundef 2, ptr noundef %1, ptr noundef %2) #19
  %33 = icmp eq i32 %4, 0
  br i1 %33, label %34, label %72, !prof !844

34:                                               ; preds = %31
  %35 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #19
  %36 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %35) #21
  br label %56

37:                                               ; preds = %22
  %38 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) @target_percent_s) #19
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %72, !prof !845

40:                                               ; preds = %37
  %41 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 341), align 8, !tbaa !458
  %42 = icmp eq ptr %41, null
  %43 = or i1 %12, %42
  br i1 %43, label %72, label %44, !prof !846

44:                                               ; preds = %40
  %45 = icmp eq i32 %4, 0
  br i1 %45, label %46, label %53, !prof !847

46:                                               ; preds = %44
  %47 = tail call ptr @c_strlen(ptr noundef nonnull %3, i32 noundef 1) #19
  %48 = icmp eq ptr %47, null
  br i1 %48, label %72, label %49, !prof !848

49:                                               ; preds = %46
  %50 = load i64, ptr %47, align 8
  %51 = and i64 %50, 65535
  %52 = icmp eq i64 %51, 23
  br i1 %52, label %53, label %72, !prof !491

53:                                               ; preds = %44, %49
  %54 = phi ptr [ null, %44 ], [ %47, %49 ]
  %55 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %41, i32 noundef 2, ptr noundef %1, ptr noundef nonnull %3) #19
  br label %56

56:                                               ; preds = %34, %53
  %57 = phi ptr [ %54, %53 ], [ %36, %34 ]
  %58 = phi ptr [ %55, %53 ], [ %32, %34 ]
  %59 = icmp ne ptr %58, null
  %60 = icmp ne ptr %57, null
  %61 = select i1 %59, i1 %60, i1 false
  br i1 %61, label %62, label %72, !prof !613

62:                                               ; preds = %56
  %63 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 373), align 8, !tbaa !458
  %64 = getelementptr inbounds %struct.tree_common, ptr %63, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !462
  %66 = getelementptr inbounds %struct.tree_common, ptr %65, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !462
  %68 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %67, ptr noundef nonnull %57) #21
  %69 = getelementptr inbounds %struct.tree_common, ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !462
  %71 = tail call ptr @build2_stat(i32 noundef 52, ptr noundef %70, ptr noundef nonnull %58, ptr noundef %68) #21
  br label %72

72:                                               ; preds = %31, %46, %49, %40, %37, %27, %56, %19, %16, %13, %5, %8, %62
  %73 = phi ptr [ %71, %62 ], [ null, %8 ], [ null, %5 ], [ null, %13 ], [ null, %16 ], [ null, %19 ], [ %58, %56 ], [ null, %27 ], [ null, %37 ], [ null, %40 ], [ null, %49 ], [ null, %46 ], [ %32, %31 ]
  ret ptr %73
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_object_size(ptr noundef %0, ptr noundef %1) unnamed_addr #3 !prof !449 !PGOFuncName !849 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %0, i32 noundef 10) #19, !range !451
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %59, label %7

7:                                                ; preds = %2
  %8 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 8) #19, !range !451
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %59, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @tree_strip_nop_conversions(ptr noundef %1) #21
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 23
  br i1 %14, label %15, label %59

15:                                               ; preds = %10
  %16 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %11) #21
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %59, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @compare_tree_int(ptr noundef nonnull %11, i64 noundef 3) #21
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %59, label %21

21:                                               ; preds = %18
  %22 = tail call i64 @tree_low_cst(ptr noundef nonnull %11, i32 noundef 0) #21
  %23 = trunc i64 %22 to i32
  %24 = load i64, ptr %0, align 8
  %25 = and i64 %24, 65536
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %21
  %28 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !458
  %29 = icmp slt i32 %23, 2
  %30 = sext i1 %29 to i64
  %31 = tail call ptr @build_int_cst_type(ptr noundef %28, i64 noundef %30) #21
  br label %59

32:                                               ; preds = %21
  %33 = trunc i64 %24 to i16
  switch i16 %33, label %59 [
    i16 121, label %34
    i16 141, label %38
  ]

34:                                               ; preds = %32
  %35 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !458
  %36 = tail call i64 @compute_builtin_object_size(ptr noundef nonnull %0, i32 noundef %23) #21
  %37 = tail call ptr @build_int_cstu(ptr noundef %35, i64 noundef %36) #21
  br label %46

38:                                               ; preds = %32
  %39 = tail call i64 @compute_builtin_object_size(ptr noundef nonnull %0, i32 noundef %23) #21
  %40 = icmp slt i32 %23, 2
  %41 = sext i1 %40 to i64
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %59, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !458
  %45 = tail call ptr @build_int_cstu(ptr noundef %44, i64 noundef %39) #21
  br label %46

46:                                               ; preds = %43, %34
  %47 = phi ptr [ %37, %34 ], [ %45, %43 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %59, label %49

49:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  %50 = getelementptr inbounds %struct.tree_int_cst, ptr %47, i64 0, i32 1
  %51 = load i64, ptr %50, align 8, !tbaa !462
  store i64 %51, ptr %3, align 8, !tbaa !453
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  %52 = getelementptr inbounds %struct.tree_int_cst, ptr %47, i64 0, i32 1, i32 1
  %53 = load i64, ptr %52, align 8, !tbaa !462
  store i64 %53, ptr %4, align 8, !tbaa !453
  %54 = getelementptr inbounds %struct.tree_common, ptr %47, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !462
  %56 = call i32 @fit_double_type(i64 noundef %51, i64 noundef %53, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %55) #21
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, ptr %47, ptr null
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  br label %59

59:                                               ; preds = %38, %32, %46, %49, %10, %15, %18, %2, %7, %27
  %60 = phi ptr [ %31, %27 ], [ null, %7 ], [ null, %2 ], [ null, %18 ], [ null, %15 ], [ null, %10 ], [ %58, %49 ], [ null, %46 ], [ null, %32 ], [ null, %38 ]
  ret ptr %60
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_fprintf(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, i32 noundef %6) unnamed_addr #3 !prof !850 !PGOFuncName !851 {
  %8 = icmp eq i8 %5, 0
  br i1 %8, label %87, label %9, !prof !852

9:                                                ; preds = %7
  %10 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 10) #19, !range !451
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %87, label %12, !prof !853

12:                                               ; preds = %9
  %13 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %3, i32 noundef 10) #19, !range !451
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %87, label %15, !prof !853

15:                                               ; preds = %12
  %16 = tail call fastcc ptr @c_getstr(ptr noundef %3) #19
  %17 = icmp eq ptr %16, null
  br i1 %17, label %87, label %18, !prof !854

18:                                               ; preds = %15
  %19 = icmp eq i32 %6, 355
  %20 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 361), align 8
  %21 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 360), align 16
  %22 = select i1 %19, ptr %20, ptr %21
  %23 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 359), align 8
  %24 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 358), align 16
  %25 = select i1 %19, ptr %23, ptr %24
  %26 = tail call fastcc zeroext i8 @init_target_chars() #19, !range !451
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %87, label %28, !prof !855

28:                                               ; preds = %18
  %29 = load i64, ptr @target_percent, align 8, !tbaa !453
  %30 = trunc i64 %29 to i32
  %31 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %16, i32 noundef %30) #19
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %53, !prof !856

33:                                               ; preds = %28
  %34 = icmp eq ptr %4, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %33
  switch i32 %6, label %87 [
    i32 544, label %36
    i32 375, label %36
  ]

36:                                               ; preds = %35, %35, %33
  %37 = load i8, ptr %16, align 1, !tbaa !462
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %49, !prof !857

39:                                               ; preds = %36
  %40 = load i64, ptr %2, align 8
  %41 = and i64 %40, 65536
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %87

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !462
  %46 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !462
  %48 = tail call ptr @build_int_cst(ptr noundef %47, i64 noundef 0) #21
  br label %87

49:                                               ; preds = %36
  %50 = icmp eq ptr %22, null
  br i1 %50, label %87, label %51, !prof !857

51:                                               ; preds = %49
  %52 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %22, i32 noundef 2, ptr noundef %3, ptr noundef %2) #19
  br label %78

53:                                               ; preds = %28
  switch i32 %6, label %54 [
    i32 544, label %87
    i32 375, label %87
  ]

54:                                               ; preds = %53
  %55 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) @target_percent_s) #19
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %66, !prof !858

57:                                               ; preds = %54
  %58 = icmp eq ptr %4, null
  br i1 %58, label %87, label %59, !prof !859

59:                                               ; preds = %57
  %60 = tail call fastcc zeroext i8 @validate_arg(ptr noundef nonnull %4, i32 noundef 10) #19, !range !451
  %61 = icmp eq i8 %60, 0
  %62 = icmp eq ptr %22, null
  %63 = select i1 %61, i1 true, i1 %62
  br i1 %63, label %87, label %64, !prof !860

64:                                               ; preds = %59
  %65 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %22, i32 noundef 2, ptr noundef nonnull %4, ptr noundef %2) #19
  br label %78

66:                                               ; preds = %54
  %67 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) @target_percent_c) #19
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %87, !prof !861

69:                                               ; preds = %66
  %70 = icmp eq ptr %4, null
  br i1 %70, label %87, label %71

71:                                               ; preds = %69
  %72 = tail call fastcc zeroext i8 @validate_arg(ptr noundef nonnull %4, i32 noundef 8) #19, !range !451
  %73 = icmp eq i8 %72, 0
  %74 = icmp eq ptr %25, null
  %75 = select i1 %73, i1 true, i1 %74
  br i1 %75, label %87, label %76

76:                                               ; preds = %71
  %77 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %25, i32 noundef 2, ptr noundef nonnull %4, ptr noundef %2) #19
  br label %78

78:                                               ; preds = %76, %64, %51
  %79 = phi ptr [ %52, %51 ], [ %65, %64 ], [ %77, %76 ]
  %80 = icmp eq ptr %79, null
  br i1 %80, label %87, label %81, !prof !862

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !462
  %84 = getelementptr inbounds %struct.tree_common, ptr %83, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !462
  %86 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %85, ptr noundef nonnull %79) #21
  br label %87

87:                                               ; preds = %66, %49, %78, %69, %71, %57, %59, %53, %53, %39, %35, %18, %15, %12, %9, %7, %81, %43
  %88 = phi ptr [ %48, %43 ], [ %86, %81 ], [ null, %7 ], [ null, %9 ], [ null, %12 ], [ null, %15 ], [ null, %18 ], [ null, %35 ], [ null, %39 ], [ null, %53 ], [ null, %53 ], [ null, %59 ], [ null, %57 ], [ null, %71 ], [ null, %69 ], [ null, %78 ], [ null, %49 ], [ null, %66 ]
  ret ptr %88
}

; Function Attrs: optsize
declare i32 @real_zerop(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @real_ldexp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @real_value_truncate(ptr dead_on_unwind writable sret(%struct.real_value) align 8, i32 noundef, ptr noundef byval(%struct.real_value) align 8) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @real_arithmetic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_memset(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) unnamed_addr #3 !prof !863 !PGOFuncName !864 {
  %7 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 10) #19, !range !451
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %105, label %9, !prof !865

9:                                                ; preds = %6
  %10 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 8) #19, !range !451
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %105, label %12, !prof !865

12:                                               ; preds = %9
  %13 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %3, i32 noundef 8) #19, !range !451
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %105, label %15, !prof !865

15:                                               ; preds = %12
  %16 = tail call i32 @host_integerp(ptr noundef %3, i32 noundef 1) #21
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %105, label %18, !prof !866

18:                                               ; preds = %15
  %19 = tail call i32 @integer_zerop(ptr noundef %3) #21
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21, !prof !867

21:                                               ; preds = %18
  %22 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %4, ptr noundef %1, ptr noundef %2) #21
  br label %105

23:                                               ; preds = %18
  %24 = tail call i32 @host_integerp(ptr noundef %2, i32 noundef 1) #21
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %105, label %26, !prof !868

26:                                               ; preds = %23
  %27 = load i64, ptr %1, align 8
  %28 = and i64 %27, 65536
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %105, !prof !869

30:                                               ; preds = %26
  %31 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %1) #21
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 121
  br i1 %34, label %35, label %105, !prof !870

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !462
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 524288
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %105, !prof !871

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !462
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 65535
  %46 = icmp eq i64 %45, 15
  br i1 %46, label %47, label %51, !prof !872

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !462
  %50 = load i64, ptr %49, align 8
  br label %51

51:                                               ; preds = %47, %41
  %52 = phi i64 [ %50, %47 ], [ %44, %41 ]
  %53 = phi ptr [ %49, %47 ], [ %43, %41 ]
  %54 = trunc i64 %52 to i16
  switch i16 %54, label %105 [
    i16 6, label %55
    i16 7, label %55
    i16 8, label %55
    i16 10, label %55
    i16 12, label %55
  ], !prof !873

55:                                               ; preds = %51, %51, %51, %51, %51
  %56 = tail call fastcc zeroext i8 @var_decl_component_p(ptr noundef nonnull %37) #19, !range !451
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %105, label %58, !prof !874

58:                                               ; preds = %55
  %59 = tail call i64 @tree_low_cst(ptr noundef %3, i32 noundef 1) #21
  %60 = load i64, ptr %53, align 8
  %61 = and i64 %60, 65535
  %62 = icmp eq i64 %61, 14
  br i1 %62, label %63, label %65, !prof !771

63:                                               ; preds = %58
  %64 = tail call i32 @vector_type_mode(ptr noundef nonnull %53) #21
  br label %70

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.tree_type, ptr %53, i64 0, i32 6
  %67 = load i32, ptr %66, align 4
  %68 = lshr i32 %67, 16
  %69 = and i32 %68, 255
  br label %70

70:                                               ; preds = %65, %63
  %71 = phi i32 [ %64, %63 ], [ %69, %65 ]
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !462
  %75 = zext i8 %74 to i64
  %76 = icmp eq i64 %59, %75
  br i1 %76, label %77, label %105, !prof !875

77:                                               ; preds = %70
  %78 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !469
  %79 = and i32 %78, 32
  %80 = icmp eq i32 %79, 0
  %81 = select i1 %80, i32 128, i32 256
  %82 = tail call i32 @get_pointer_alignment(ptr noundef nonnull %1, i32 noundef %81) #19
  %83 = sdiv i32 %82, 8
  %84 = trunc i64 %59 to i32
  %85 = icmp slt i32 %83, %84
  %86 = icmp ugt i64 %59, 8
  %87 = or i1 %86, %85
  br i1 %87, label %105, label %88, !prof !876

88:                                               ; preds = %77
  %89 = tail call i32 @integer_zerop(ptr noundef %2) #21
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %95, !prof !877

91:                                               ; preds = %88
  %92 = tail call i64 @tree_low_cst(ptr noundef %2, i32 noundef 1) #21
  %93 = and i64 %92, 255
  %94 = mul nuw i64 %93, 72340172838076673
  br label %95

95:                                               ; preds = %88, %91
  %96 = phi i64 [ %94, %91 ], [ 0, %88 ]
  %97 = tail call ptr @build_int_cst_type(ptr noundef nonnull %53, i64 noundef %96) #21
  %98 = tail call ptr @build_pointer_type(ptr noundef nonnull %53) #21
  %99 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %98, ptr noundef nonnull %1) #21
  %100 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef %0, ptr noundef %99) #21
  %101 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef nonnull %53, ptr noundef %100, ptr noundef %97) #21
  %102 = icmp eq i8 %5, 0
  br i1 %102, label %103, label %105, !prof !878

103:                                              ; preds = %95
  %104 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %4, ptr noundef nonnull %1, ptr noundef %101) #21
  br label %105

105:                                              ; preds = %95, %70, %77, %55, %51, %35, %30, %23, %26, %15, %6, %9, %12, %103, %21
  %106 = phi ptr [ %22, %21 ], [ %104, %103 ], [ null, %12 ], [ null, %9 ], [ null, %6 ], [ null, %15 ], [ null, %26 ], [ null, %23 ], [ null, %30 ], [ null, %35 ], [ null, %51 ], [ null, %55 ], [ null, %77 ], [ null, %70 ], [ %101, %95 ]
  ret ptr %106
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @var_decl_component_p(ptr nocapture noundef readonly %0) unnamed_addr #13 !prof !879 !PGOFuncName !880 {
  %2 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %0) #19, !range !451
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %10, label %4, !prof !881

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !462
  %8 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %7) #19, !range !451
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %4, !prof !882, !llvm.loop !883

10:                                               ; preds = %4, %1
  %11 = phi ptr [ %0, %1 ], [ %7, %4 ]
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %23 [
    i16 32, label %24
    i16 34, label %24
    i16 36, label %24
    i16 141, label %14
  ], !prof !884

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %11, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !462
  %17 = load i64, ptr %16, align 8
  %18 = trunc i64 %17 to i16
  switch i16 %18, label %19 [
    i16 32, label %24
    i16 34, label %24
  ]

19:                                               ; preds = %14
  %20 = and i64 %17, 65535
  %21 = icmp eq i64 %20, 36
  %22 = zext i1 %21 to i8
  br label %24

23:                                               ; preds = %10
  br label %24

24:                                               ; preds = %14, %14, %10, %10, %10, %23, %19
  %25 = phi i8 [ 1, %10 ], [ 1, %14 ], [ %22, %19 ], [ 1, %10 ], [ 1, %10 ], [ 0, %23 ], [ 1, %14 ]
  ret i8 %25
}

; Function Attrs: optsize
declare ptr @build_int_cst_type(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @optimize_insn_for_speed_p() local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @omit_two_operands_loc(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @target_char_cast(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #3 !prof !885 !PGOFuncName !886 {
  %3 = tail call i32 @host_integerp(ptr noundef %0, i32 noundef 1) #21
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5, !prof !787

5:                                                ; preds = %2
  %6 = tail call i64 @tree_low_cst(ptr noundef %0, i32 noundef 1) #21
  %7 = trunc i64 %6 to i8
  store i8 %7, ptr %1, align 1, !tbaa !462
  br label %8

8:                                                ; preds = %2, %5
  %9 = phi i32 [ 0, %5 ], [ 1, %2 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_pointer_type_for_mode(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @build_builtin_expect_predicate(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #3 !prof !887 !PGOFuncName !888 {
  %4 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 446), align 16, !tbaa !458
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !462
  %7 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !462
  %9 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !462
  %11 = getelementptr inbounds %struct.tree_list, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !462
  %13 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !462
  %15 = getelementptr inbounds %struct.tree_list, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !462
  %17 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %12, ptr noundef %1) #21
  %18 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %16, ptr noundef %2) #21
  %19 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef %4, i32 noundef 2, ptr noundef %17, ptr noundef %18) #19
  %20 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !462
  %22 = tail call ptr @build_int_cst(ptr noundef %10, i64 noundef 0) #21
  %23 = tail call ptr @build2_stat(i32 noundef 102, ptr noundef %21, ptr noundef %19, ptr noundef %22) #21
  ret ptr %23
}

; Function Attrs: optsize
declare i32 @real_onep(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @real_powi(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @real_copysign(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @fold_strip_sign_ops(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i32 @tree_int_cst_sgn(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @build_int_cstu(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare i64 @compute_builtin_object_size(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_memory_op(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, i32 noundef %6) unnamed_addr #3 !prof !889 !PGOFuncName !890 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 10) #19, !range !451
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %443, label %14, !prof !891

14:                                               ; preds = %7
  %15 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 10) #19, !range !451
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %443, label %17, !prof !891

17:                                               ; preds = %14
  %18 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %3, i32 noundef 8) #19, !range !451
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %443, label %20, !prof !891

20:                                               ; preds = %17
  %21 = tail call i32 @integer_zerop(ptr noundef %3) #21
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !892

23:                                               ; preds = %20
  %24 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %4, ptr noundef %1, ptr noundef %2) #21
  br label %443

25:                                               ; preds = %20
  %26 = tail call i32 @operand_equal_p(ptr noundef %2, ptr noundef %1, i32 noundef 0) #21
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %416, !prof !893

28:                                               ; preds = %25
  %29 = icmp eq i32 %6, 3
  br i1 %29, label %30, label %149, !prof !894

30:                                               ; preds = %28
  %31 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !469
  %32 = and i32 %31, 32
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 128, i32 256
  %35 = tail call i32 @get_pointer_alignment(ptr noundef %2, i32 noundef %34) #19
  %36 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !469
  %37 = and i32 %36, 32
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 128, i32 256
  %40 = tail call i32 @get_pointer_alignment(ptr noundef %1, i32 noundef %39) #19
  %41 = icmp ne i32 %40, 0
  %42 = icmp ne i32 %35, 0
  %43 = select i1 %41, i1 %42, i1 false
  br i1 %43, label %44, label %443, !prof !895

44:                                               ; preds = %30
  %45 = tail call fastcc zeroext i8 @readonly_data_expr(ptr noundef %2) #19
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %56, !prof !896

47:                                               ; preds = %44
  %48 = tail call i32 @host_integerp(ptr noundef %3, i32 noundef 1) #21
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %61, label %50, !prof !896

50:                                               ; preds = %47
  %51 = tail call i32 @llvm.smin.i32(i32 %35, i32 %40)
  %52 = sdiv i32 %51, 8
  %53 = sext i32 %52 to i64
  %54 = tail call i64 @tree_low_cst(ptr noundef %3, i32 noundef 1) #21
  %55 = icmp sgt i64 %54, %53
  br i1 %55, label %61, label %56

56:                                               ; preds = %50, %44
  %57 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 330), align 16, !tbaa !458
  %58 = icmp eq ptr %57, null
  br i1 %58, label %443, label %59

59:                                               ; preds = %56
  %60 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %57, i32 noundef 3, ptr noundef %1, ptr noundef %2, ptr noundef %3) #19
  br label %443

61:                                               ; preds = %50, %47
  %62 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef %0, ptr noundef %2) #21
  %63 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef %0, ptr noundef %1) #21
  %64 = icmp eq ptr %62, null
  br i1 %64, label %443, label %65, !prof !897

65:                                               ; preds = %61
  %66 = load i64, ptr %62, align 8
  %67 = and i64 %66, 524288
  %68 = icmp eq i64 %67, 0
  %69 = icmp ne ptr %63, null
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %71, label %443, !prof !895

71:                                               ; preds = %65
  %72 = load i64, ptr %63, align 8
  %73 = and i64 %72, 524288
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %443, !prof !896

75:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #20
  store i64 0, ptr %8, align 8, !tbaa !453
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #20
  store i64 0, ptr %9, align 8, !tbaa !453
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #20
  store i64 -1, ptr %10, align 8, !tbaa !453
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #20
  store i64 -1, ptr %11, align 8, !tbaa !453
  %76 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %62) #19, !range !451
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %80, label %78, !prof !896

78:                                               ; preds = %75
  %79 = call ptr @get_ref_base_and_extent(ptr noundef nonnull %62, ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %11) #21
  br label %80

80:                                               ; preds = %78, %75
  %81 = phi ptr [ %79, %78 ], [ %62, %75 ]
  %82 = call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %63) #19, !range !451
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %86, label %84, !prof !896

84:                                               ; preds = %80
  %85 = call ptr @get_ref_base_and_extent(ptr noundef nonnull %63, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #21
  br label %86

86:                                               ; preds = %84, %80
  %87 = phi ptr [ %85, %84 ], [ %63, %80 ]
  %88 = call i32 @host_integerp(ptr noundef %3, i32 noundef 1) #21
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %96, label %90, !prof !896

90:                                               ; preds = %86
  %91 = call i64 @tree_low_cst(ptr noundef %3, i32 noundef 1) #21
  %92 = icmp sgt i64 %91, 1152921504606846975
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i64 -1, ptr %11, align 8, !tbaa !453
  br label %97

94:                                               ; preds = %90
  %95 = shl nsw i64 %91, 3
  store i64 %95, ptr %11, align 8, !tbaa !453
  br label %97

96:                                               ; preds = %86
  store i64 -1, ptr %11, align 8, !tbaa !453
  br label %97

97:                                               ; preds = %93, %94, %96
  %98 = load i64, ptr %81, align 8
  %99 = trunc i64 %98 to i16
  switch i16 %99, label %122 [
    i16 32, label %105
    i16 34, label %105
    i16 36, label %105
    i16 141, label %100
  ], !prof !898

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.tree_ssa_name, ptr %81, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !462
  %103 = load i64, ptr %102, align 8
  %104 = trunc i64 %103 to i16
  switch i16 %104, label %122 [
    i16 32, label %105
    i16 34, label %105
    i16 36, label %105
  ]

105:                                              ; preds = %100, %100, %100, %97, %97, %97
  %106 = load i64, ptr %87, align 8
  %107 = trunc i64 %106 to i16
  switch i16 %107, label %122 [
    i16 32, label %113
    i16 34, label %113
    i16 36, label %113
    i16 141, label %108
  ]

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.tree_ssa_name, ptr %87, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !462
  %111 = load i64, ptr %110, align 8
  %112 = trunc i64 %111 to i16
  switch i16 %112, label %122 [
    i16 32, label %113
    i16 34, label %113
    i16 36, label %113
  ]

113:                                              ; preds = %108, %108, %108, %105, %105, %105
  %114 = call i32 @operand_equal_p(ptr noundef nonnull %81, ptr noundef nonnull %87, i32 noundef 0) #21
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %142, label %116

116:                                              ; preds = %113
  %117 = load i64, ptr %8, align 8, !tbaa !453
  %118 = load i64, ptr %11, align 8, !tbaa !453
  %119 = load i64, ptr %9, align 8, !tbaa !453
  %120 = call fastcc zeroext i8 @ranges_overlap_p(i64 noundef %117, i64 noundef %118, i64 noundef %119, i64 noundef %118) #19, !range !451
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %142, label %147

122:                                              ; preds = %108, %105, %100, %97
  %123 = and i64 %98, 65535
  %124 = icmp eq i64 %123, 47
  br i1 %124, label %125, label %147, !prof !896

125:                                              ; preds = %122
  %126 = load i64, ptr %87, align 8
  %127 = and i64 %126, 65535
  %128 = icmp eq i64 %127, 47
  br i1 %128, label %129, label %147, !prof !896

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.tree_exp, ptr %81, i64 0, i32 3
  %131 = load ptr, ptr %130, align 8, !tbaa !462
  %132 = getelementptr inbounds %struct.tree_exp, ptr %87, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !462
  %134 = call i32 @operand_equal_p(ptr noundef %131, ptr noundef %133, i32 noundef 0) #21
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %147, label %136, !prof !896

136:                                              ; preds = %129
  %137 = load i64, ptr %8, align 8, !tbaa !453
  %138 = load i64, ptr %11, align 8, !tbaa !453
  %139 = load i64, ptr %9, align 8, !tbaa !453
  %140 = call fastcc zeroext i8 @ranges_overlap_p(i64 noundef %137, i64 noundef %138, i64 noundef %139, i64 noundef %138) #19, !range !451
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %136, %113, %116
  %143 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 330), align 16, !tbaa !458
  %144 = icmp eq ptr %143, null
  br i1 %144, label %147, label %145

145:                                              ; preds = %142
  %146 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %143, i32 noundef 3, ptr noundef %1, ptr noundef %2, ptr noundef %3) #19
  br label %147

147:                                              ; preds = %142, %122, %125, %129, %136, %116, %145
  %148 = phi ptr [ %146, %145 ], [ null, %116 ], [ null, %136 ], [ null, %129 ], [ null, %125 ], [ null, %122 ], [ null, %142 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #20
  br label %443

149:                                              ; preds = %28
  %150 = tail call i32 @host_integerp(ptr noundef %3, i32 noundef 0) #21
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %443, label %152, !prof !899

152:                                              ; preds = %149
  %153 = tail call ptr @tree_strip_nop_conversions(ptr noundef %2) #21
  %154 = tail call ptr @tree_strip_nop_conversions(ptr noundef %1) #21
  %155 = load i64, ptr %153, align 8
  %156 = and i64 %155, 65535
  %157 = icmp eq i64 %156, 66
  br i1 %157, label %158, label %168, !prof !900

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.tree_exp, ptr %153, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !462
  %161 = tail call ptr @tree_strip_nop_conversions(ptr noundef %160) #21
  %162 = load ptr, ptr %159, align 8, !tbaa !462
  %163 = icmp eq ptr %161, %162
  br i1 %163, label %168, label %164, !prof !901

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.tree_common, ptr %161, i64 0, i32 2
  %166 = load ptr, ptr %165, align 8, !tbaa !462
  %167 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef %166, ptr noundef nonnull %153) #21
  br label %168

168:                                              ; preds = %158, %164, %152
  %169 = phi ptr [ %153, %152 ], [ %167, %164 ], [ %153, %158 ]
  %170 = load i64, ptr %154, align 8
  %171 = and i64 %170, 65535
  %172 = icmp eq i64 %171, 66
  br i1 %172, label %173, label %183, !prof !902

173:                                              ; preds = %168
  %174 = getelementptr inbounds %struct.tree_exp, ptr %154, i64 0, i32 3
  %175 = load ptr, ptr %174, align 8, !tbaa !462
  %176 = tail call ptr @tree_strip_nop_conversions(ptr noundef %175) #21
  %177 = load ptr, ptr %174, align 8, !tbaa !462
  %178 = icmp eq ptr %176, %177
  br i1 %178, label %183, label %179, !prof !903

179:                                              ; preds = %173
  %180 = getelementptr inbounds %struct.tree_common, ptr %176, i64 0, i32 2
  %181 = load ptr, ptr %180, align 8, !tbaa !462
  %182 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef %181, ptr noundef nonnull %154) #21
  br label %183

183:                                              ; preds = %173, %179, %168
  %184 = phi ptr [ %154, %168 ], [ %182, %179 ], [ %154, %173 ]
  %185 = getelementptr inbounds %struct.tree_common, ptr %169, i64 0, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !462
  %187 = getelementptr inbounds %struct.tree_common, ptr %186, i64 0, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !462
  %189 = icmp eq ptr %188, null
  br i1 %189, label %205, label %190, !prof !904

190:                                              ; preds = %183
  %191 = load i64, ptr %188, align 8
  %192 = and i64 %191, 65535
  %193 = icmp eq i64 %192, 15
  br i1 %193, label %194, label %205, !prof !905

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.tree_type, ptr %188, i64 0, i32 3
  %196 = load ptr, ptr %195, align 8, !tbaa !462
  %197 = tail call i32 @tree_int_cst_equal(ptr noundef %196, ptr noundef %3) #21
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %205, !prof !906

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.tree_common, ptr %188, i64 0, i32 2
  %201 = load ptr, ptr %200, align 8, !tbaa !462
  %202 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %169) #21
  %203 = tail call ptr @build_pointer_type(ptr noundef %201) #21
  %204 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef %203, ptr noundef %202) #21
  br label %205

205:                                              ; preds = %199, %194, %190, %183
  %206 = phi ptr [ %188, %194 ], [ %201, %199 ], [ %188, %190 ], [ null, %183 ]
  %207 = phi ptr [ %169, %194 ], [ %204, %199 ], [ %169, %190 ], [ %169, %183 ]
  %208 = getelementptr inbounds %struct.tree_common, ptr %184, i64 0, i32 2
  %209 = load ptr, ptr %208, align 8, !tbaa !462
  %210 = getelementptr inbounds %struct.tree_common, ptr %209, i64 0, i32 2
  %211 = load ptr, ptr %210, align 8, !tbaa !462
  %212 = icmp eq ptr %211, null
  br i1 %212, label %443, label %213, !prof !904

213:                                              ; preds = %205
  %214 = load i64, ptr %211, align 8
  %215 = and i64 %214, 65535
  %216 = icmp eq i64 %215, 15
  br i1 %216, label %217, label %228, !prof !907

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.tree_type, ptr %211, i64 0, i32 3
  %219 = load ptr, ptr %218, align 8, !tbaa !462
  %220 = tail call i32 @tree_int_cst_equal(ptr noundef %219, ptr noundef %3) #21
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %228, !prof !908

222:                                              ; preds = %217
  %223 = getelementptr inbounds %struct.tree_common, ptr %211, i64 0, i32 2
  %224 = load ptr, ptr %223, align 8, !tbaa !462
  %225 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %184) #21
  %226 = tail call ptr @build_pointer_type(ptr noundef %224) #21
  %227 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef %226, ptr noundef %225) #21
  br label %228

228:                                              ; preds = %222, %217, %213
  %229 = phi ptr [ %211, %217 ], [ %224, %222 ], [ %211, %213 ]
  %230 = phi ptr [ %184, %217 ], [ %227, %222 ], [ %184, %213 ]
  %231 = icmp ne ptr %206, null
  %232 = icmp ne ptr %229, null
  %233 = select i1 %231, i1 %232, i1 false
  br i1 %233, label %234, label %443, !prof !909

234:                                              ; preds = %228
  %235 = getelementptr inbounds %struct.tree_type, ptr %206, i64 0, i32 3
  %236 = load ptr, ptr %235, align 8, !tbaa !462
  %237 = icmp eq ptr %236, null
  br i1 %237, label %443, label %238, !prof !910

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.tree_type, ptr %229, i64 0, i32 3
  %240 = load ptr, ptr %239, align 8, !tbaa !462
  %241 = icmp eq ptr %240, null
  br i1 %241, label %443, label %242, !prof !911

242:                                              ; preds = %238
  %243 = load i64, ptr %236, align 8
  %244 = and i64 %243, 65535
  %245 = icmp eq i64 %244, 23
  br i1 %245, label %246, label %443, !prof !912

246:                                              ; preds = %242
  %247 = load i64, ptr %240, align 8
  %248 = and i64 %247, 65535
  %249 = icmp eq i64 %248, 23
  br i1 %249, label %250, label %443, !prof !912

250:                                              ; preds = %246
  %251 = load i64, ptr %206, align 8
  %252 = and i64 %251, 524288
  %253 = icmp eq i64 %252, 0
  br i1 %253, label %254, label %443, !prof !912

254:                                              ; preds = %250
  %255 = load i64, ptr %229, align 8
  %256 = and i64 %255, 524288
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %443, !prof !912

258:                                              ; preds = %254
  %259 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !469
  %260 = and i32 %259, 32
  %261 = icmp eq i32 %260, 0
  %262 = select i1 %261, i32 128, i32 256
  %263 = tail call i32 @get_pointer_alignment(ptr noundef %207, i32 noundef %262) #19
  %264 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !469
  %265 = and i32 %264, 32
  %266 = icmp eq i32 %265, 0
  %267 = select i1 %266, i32 128, i32 256
  %268 = tail call i32 @get_pointer_alignment(ptr noundef %230, i32 noundef %267) #19
  %269 = getelementptr inbounds %struct.tree_type, ptr %229, i64 0, i32 7
  %270 = load i32, ptr %269, align 8, !tbaa !462
  %271 = icmp slt i32 %268, %270
  br i1 %271, label %443, label %272, !prof !913

272:                                              ; preds = %258
  %273 = getelementptr inbounds %struct.tree_type, ptr %206, i64 0, i32 7
  %274 = load i32, ptr %273, align 8, !tbaa !462
  %275 = icmp slt i32 %263, %274
  br i1 %275, label %443, label %276, !prof !913

276:                                              ; preds = %272
  %277 = icmp eq i8 %5, 0
  br i1 %277, label %278, label %280, !prof !914

278:                                              ; preds = %276
  %279 = tail call fastcc ptr @builtin_save_expr(ptr noundef %230) #19
  br label %280

280:                                              ; preds = %278, %276
  %281 = phi ptr [ %230, %276 ], [ %279, %278 ]
  %282 = load ptr, ptr %235, align 8, !tbaa !462
  %283 = tail call i32 @tree_int_cst_equal(ptr noundef %282, ptr noundef %3) #21
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %298, label %285, !prof !915

285:                                              ; preds = %280
  %286 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef %0, ptr noundef %207) #21
  %287 = load i64, ptr %286, align 8
  %288 = and i64 %287, 524288
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %290, label %443, !prof !916

290:                                              ; preds = %285
  %291 = tail call ptr @tree_expr_size(ptr noundef nonnull %286) #21
  %292 = tail call i32 @tree_int_cst_equal(ptr noundef %291, ptr noundef %3) #21
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %298, label %294, !prof !767

294:                                              ; preds = %290
  %295 = tail call fastcc zeroext i8 @var_decl_component_p(ptr noundef nonnull %286) #19, !range !451
  %296 = icmp eq i8 %295, 0
  %297 = select i1 %296, ptr null, ptr %286, !prof !917
  br label %298

298:                                              ; preds = %294, %290, %280
  %299 = phi ptr [ null, %280 ], [ null, %290 ], [ %297, %294 ]
  %300 = load ptr, ptr %239, align 8, !tbaa !462
  %301 = tail call i32 @tree_int_cst_equal(ptr noundef %300, ptr noundef %3) #21
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %316, label %303, !prof !918

303:                                              ; preds = %298
  %304 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef %0, ptr noundef %281) #21
  %305 = load i64, ptr %304, align 8
  %306 = and i64 %305, 524288
  %307 = icmp eq i64 %306, 0
  br i1 %307, label %308, label %443, !prof !919

308:                                              ; preds = %303
  %309 = tail call ptr @tree_expr_size(ptr noundef nonnull %304) #21
  %310 = tail call i32 @tree_int_cst_equal(ptr noundef %309, ptr noundef %3) #21
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %316, label %312, !prof !920

312:                                              ; preds = %308
  %313 = tail call fastcc zeroext i8 @var_decl_component_p(ptr noundef nonnull %304) #19, !range !451
  %314 = icmp eq i8 %313, 0
  %315 = select i1 %314, ptr null, ptr %304, !prof !921
  br label %316

316:                                              ; preds = %312, %308, %298
  %317 = phi ptr [ null, %298 ], [ null, %308 ], [ %315, %312 ]
  %318 = icmp eq ptr %299, null
  %319 = icmp eq ptr %317, null
  %320 = and i1 %318, %319
  br i1 %320, label %443, label %321, !prof !922

321:                                              ; preds = %316
  br i1 %318, label %322, label %350, !prof !923

322:                                              ; preds = %321
  %323 = getelementptr inbounds %struct.tree_common, ptr %317, i64 0, i32 2
  %324 = load ptr, ptr %323, align 8, !tbaa !462
  %325 = load i64, ptr %324, align 8
  %326 = and i64 %325, 262144
  %327 = icmp eq i64 %326, 0
  br i1 %327, label %328, label %443, !prof !924

328:                                              ; preds = %322
  %329 = tail call ptr @build_qualified_type(ptr noundef nonnull %229, i32 noundef 0) #21
  %330 = getelementptr inbounds %struct.tree_type, ptr %329, i64 0, i32 7
  %331 = load i32, ptr %330, align 8, !tbaa !462
  %332 = icmp slt i32 %263, %331
  br i1 %332, label %333, label %344, !prof !925

333:                                              ; preds = %328
  %334 = load i64, ptr %329, align 8
  %335 = trunc i64 %334 to i32
  %336 = and i32 %335, 65535
  %337 = add nsw i32 %336, -15
  %338 = icmp ult i32 %337, 4
  br i1 %338, label %443, label %339, !prof !744

339:                                              ; preds = %333
  %340 = tail call ptr @build_variant_type_copy(ptr noundef nonnull %329) #21
  %341 = getelementptr inbounds %struct.tree_type, ptr %340, i64 0, i32 7
  store i32 %263, ptr %341, align 8, !tbaa !462
  %342 = load i64, ptr %340, align 8
  %343 = or i64 %342, 6597069766656
  store i64 %343, ptr %340, align 8
  br label %344

344:                                              ; preds = %328, %339
  %345 = phi ptr [ %340, %339 ], [ %329, %328 ]
  %346 = load i32, ptr @ptr_mode, align 4, !tbaa !469
  %347 = tail call ptr @build_pointer_type_for_mode(ptr noundef nonnull %345, i32 noundef %346, i8 noundef zeroext 1) #21
  %348 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %347, ptr noundef %207) #21
  %349 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef %0, ptr noundef %348) #21
  br label %379

350:                                              ; preds = %321
  br i1 %319, label %351, label %379, !prof !926

351:                                              ; preds = %350
  %352 = getelementptr inbounds %struct.tree_common, ptr %299, i64 0, i32 2
  %353 = load ptr, ptr %352, align 8, !tbaa !462
  %354 = load i64, ptr %353, align 8
  %355 = and i64 %354, 262144
  %356 = icmp eq i64 %355, 0
  br i1 %356, label %357, label %443, !prof !927

357:                                              ; preds = %351
  %358 = tail call ptr @build_qualified_type(ptr noundef nonnull %206, i32 noundef 0) #21
  %359 = getelementptr inbounds %struct.tree_type, ptr %358, i64 0, i32 7
  %360 = load i32, ptr %359, align 8, !tbaa !462
  %361 = icmp slt i32 %268, %360
  br i1 %361, label %362, label %373, !prof !928

362:                                              ; preds = %357
  %363 = load i64, ptr %358, align 8
  %364 = trunc i64 %363 to i32
  %365 = and i32 %364, 65535
  %366 = add nsw i32 %365, -15
  %367 = icmp ult i32 %366, 4
  br i1 %367, label %443, label %368, !prof !929

368:                                              ; preds = %362
  %369 = tail call ptr @build_variant_type_copy(ptr noundef nonnull %358) #21
  %370 = getelementptr inbounds %struct.tree_type, ptr %369, i64 0, i32 7
  store i32 %268, ptr %370, align 8, !tbaa !462
  %371 = load i64, ptr %369, align 8
  %372 = or i64 %371, 6597069766656
  store i64 %372, ptr %369, align 8
  br label %373

373:                                              ; preds = %357, %368
  %374 = phi ptr [ %369, %368 ], [ %358, %357 ]
  %375 = load i32, ptr @ptr_mode, align 4, !tbaa !469
  %376 = tail call ptr @build_pointer_type_for_mode(ptr noundef nonnull %374, i32 noundef %375, i8 noundef zeroext 1) #21
  %377 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %376, ptr noundef %281) #21
  %378 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef %0, ptr noundef %377) #21
  br label %379

379:                                              ; preds = %373, %344, %350
  %380 = phi ptr [ %317, %344 ], [ %378, %373 ], [ %317, %350 ]
  %381 = phi ptr [ %349, %344 ], [ %299, %373 ], [ %299, %350 ]
  %382 = phi ptr [ %345, %344 ], [ %206, %373 ], [ %206, %350 ]
  %383 = phi ptr [ %229, %344 ], [ %374, %373 ], [ %229, %350 ]
  %384 = phi ptr [ %281, %344 ], [ %377, %373 ], [ %281, %350 ]
  %385 = icmp eq ptr %382, %383
  br i1 %385, label %411, label %386, !prof !930

386:                                              ; preds = %379
  %387 = load ptr, ptr @cfun, align 8, !tbaa !458
  %388 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %387) #19, !range !451
  %389 = icmp eq i8 %388, 0
  br i1 %389, label %393, label %390, !prof !931

390:                                              ; preds = %386
  %391 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef nonnull %383, ptr noundef nonnull %382) #21
  %392 = icmp eq i8 %391, 0
  br i1 %392, label %393, label %411

393:                                              ; preds = %390, %386
  %394 = getelementptr inbounds %struct.tree_common, ptr %381, i64 0, i32 2
  %395 = load ptr, ptr %394, align 8, !tbaa !462
  %396 = load i64, ptr %395, align 8
  %397 = trunc i64 %396 to i16
  switch i16 %397, label %398 [
    i16 6, label %401
    i16 7, label %401
    i16 8, label %401
    i16 10, label %401
    i16 12, label %401
  ], !prof !932

398:                                              ; preds = %393
  %399 = getelementptr inbounds %struct.tree_common, ptr %380, i64 0, i32 2
  %400 = load ptr, ptr %399, align 8, !tbaa !462
  br label %408

401:                                              ; preds = %393, %393, %393, %393, %393
  %402 = getelementptr inbounds %struct.tree_common, ptr %380, i64 0, i32 2
  %403 = load ptr, ptr %402, align 8, !tbaa !462
  %404 = load i64, ptr %403, align 8
  %405 = trunc i64 %404 to i16
  switch i16 %405, label %408 [
    i16 6, label %406
    i16 7, label %406
    i16 8, label %406
    i16 10, label %406
    i16 12, label %406
  ], !prof !933

406:                                              ; preds = %401, %401, %401, %401, %401
  %407 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef nonnull %403, ptr noundef nonnull %381) #21
  br label %411

408:                                              ; preds = %398, %401
  %409 = phi ptr [ %400, %398 ], [ %403, %401 ]
  %410 = tail call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 118, ptr noundef %409, ptr noundef nonnull %381) #21
  br label %411

411:                                              ; preds = %408, %406, %390, %379
  %412 = phi ptr [ %407, %406 ], [ %410, %408 ], [ %381, %390 ], [ %381, %379 ]
  %413 = getelementptr inbounds %struct.tree_common, ptr %380, i64 0, i32 2
  %414 = load ptr, ptr %413, align 8, !tbaa !462
  %415 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %414, ptr noundef %380, ptr noundef %412) #21
  br label %416

416:                                              ; preds = %411, %25
  %417 = phi ptr [ %415, %411 ], [ %3, %25 ]
  %418 = phi ptr [ %384, %411 ], [ %1, %25 ]
  %419 = icmp eq i8 %5, 0
  br i1 %419, label %420, label %443, !prof !934

420:                                              ; preds = %416
  switch i32 %6, label %423 [
    i32 3, label %421
    i32 0, label %421
  ]

421:                                              ; preds = %420, %420
  %422 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %4, ptr noundef %418, ptr noundef %417) #21
  br label %443

423:                                              ; preds = %420
  %424 = icmp eq ptr %417, %3
  %425 = select i1 %424, ptr null, ptr %417
  %426 = icmp eq i32 %6, 2
  br i1 %426, label %427, label %432

427:                                              ; preds = %423
  %428 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %429 = load ptr, ptr %428, align 8, !tbaa !462
  %430 = tail call ptr @size_int_kind(i64 noundef 1, i32 noundef 1) #21
  %431 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 64, ptr noundef %429, ptr noundef %3, ptr noundef %430) #21
  br label %432

432:                                              ; preds = %427, %423
  %433 = phi ptr [ %431, %427 ], [ %3, %423 ]
  %434 = load ptr, ptr @sizetype_tab, align 16, !tbaa !458
  %435 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %434, ptr noundef %433) #21
  %436 = getelementptr inbounds %struct.tree_common, ptr %418, i64 0, i32 2
  %437 = load ptr, ptr %436, align 8, !tbaa !462
  %438 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 66, ptr noundef %437, ptr noundef %418, ptr noundef %435) #21
  %439 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %4, ptr noundef %438) #21
  %440 = icmp eq ptr %425, null
  br i1 %440, label %443, label %441

441:                                              ; preds = %432
  %442 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %4, ptr noundef %439, ptr noundef nonnull %425) #21
  br label %443

443:                                              ; preds = %362, %351, %333, %322, %205, %316, %303, %285, %258, %272, %228, %234, %238, %242, %246, %250, %254, %149, %61, %65, %71, %59, %56, %30, %147, %432, %441, %416, %7, %14, %17, %421, %23
  %444 = phi ptr [ %24, %23 ], [ %422, %421 ], [ null, %17 ], [ null, %14 ], [ null, %7 ], [ %417, %416 ], [ %442, %441 ], [ %439, %432 ], [ null, %316 ], [ null, %303 ], [ null, %285 ], [ null, %258 ], [ null, %272 ], [ null, %228 ], [ null, %234 ], [ null, %238 ], [ null, %242 ], [ null, %246 ], [ null, %250 ], [ null, %254 ], [ null, %149 ], [ null, %61 ], [ null, %65 ], [ null, %71 ], [ null, %56 ], [ %60, %59 ], [ null, %30 ], [ %148, %147 ], [ null, %205 ], [ null, %322 ], [ null, %333 ], [ null, %351 ], [ null, %362 ]
  ret ptr %444
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_strncat(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 !prof !935 !PGOFuncName !936 {
  %5 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 10) #19, !range !451
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %39, label %7, !prof !937

7:                                                ; preds = %4
  %8 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 10) #19, !range !451
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %39, label %10, !prof !937

10:                                               ; preds = %7
  %11 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %3, i32 noundef 8) #19, !range !451
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %39, label %13, !prof !937

13:                                               ; preds = %10
  %14 = tail call fastcc ptr @c_getstr(ptr noundef %2) #19
  %15 = tail call i32 @integer_zerop(ptr noundef %3) #21
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22, !prof !938

17:                                               ; preds = %13
  %18 = icmp eq ptr %14, null
  br i1 %18, label %39, label %19, !prof !938

19:                                               ; preds = %17
  %20 = load i8, ptr %14, align 1, !tbaa !462
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19, %13
  %23 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !462
  %25 = tail call ptr @omit_two_operands_loc(i32 noundef %0, ptr noundef %24, ptr noundef %1, ptr noundef %2, ptr noundef %3) #21
  br label %39

26:                                               ; preds = %19
  %27 = load i64, ptr %3, align 8
  %28 = and i64 %27, 65535
  %29 = icmp eq i64 %28, 23
  br i1 %29, label %30, label %39, !prof !939

30:                                               ; preds = %26
  %31 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #19
  %32 = tail call i32 @compare_tree_int(ptr noundef nonnull %3, i64 noundef %31) #21
  %33 = icmp sgt i32 %32, -1
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 338), align 16, !tbaa !458
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %34
  %38 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %35, i32 noundef 2, ptr noundef %1, ptr noundef %2) #19
  br label %39

39:                                               ; preds = %17, %22, %34, %37, %30, %26, %4, %7, %10
  %40 = phi ptr [ null, %10 ], [ null, %7 ], [ null, %4 ], [ %25, %22 ], [ %38, %37 ], [ null, %34 ], [ null, %30 ], [ null, %26 ], [ null, %17 ]
  ret ptr %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_strncmp(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 !prof !940 !PGOFuncName !941 {
  %5 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 10) #19, !range !451
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %107, label %7, !prof !942

7:                                                ; preds = %4
  %8 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 10) #19, !range !451
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %107, label %10, !prof !942

10:                                               ; preds = %7
  %11 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %3, i32 noundef 8) #19, !range !451
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %107, label %13, !prof !942

13:                                               ; preds = %10
  %14 = tail call i32 @integer_zerop(ptr noundef %3) #21
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !943

16:                                               ; preds = %13
  %17 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !458
  %19 = tail call ptr @omit_two_operands_loc(i32 noundef %0, ptr noundef %17, ptr noundef %18, ptr noundef %1, ptr noundef %2) #21
  br label %107

20:                                               ; preds = %13
  %21 = tail call i32 @operand_equal_p(ptr noundef %1, ptr noundef %2, i32 noundef 0) #21
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23, !prof !943

23:                                               ; preds = %20
  %24 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %25 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !458
  %26 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %24, ptr noundef %25, ptr noundef %3) #21
  br label %107

27:                                               ; preds = %20
  %28 = tail call fastcc ptr @c_getstr(ptr noundef %1) #19
  %29 = tail call fastcc ptr @c_getstr(ptr noundef %2) #19
  %30 = tail call i32 @host_integerp(ptr noundef %3, i32 noundef 1) #21
  %31 = icmp ne i32 %30, 0
  %32 = icmp ne ptr %28, null
  %33 = select i1 %31, i1 %32, i1 false
  %34 = icmp ne ptr %29, null
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %44, !prof !944

36:                                               ; preds = %27
  %37 = tail call i64 @tree_low_cst(ptr noundef %3, i32 noundef 1) #21
  %38 = tail call i32 @strncmp(ptr noundef nonnull %28, ptr noundef nonnull %29, i64 noundef %37) #19
  %39 = icmp sgt i32 %38, 0
  %40 = icmp slt i32 %38, 0
  %41 = select i1 %40, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 15), ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13)
  %42 = select i1 %39, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), ptr %41, !prof !945
  %43 = load ptr, ptr %42, align 8, !tbaa !458
  br label %107

44:                                               ; preds = %27
  br i1 %34, label %45, label %64, !prof !946

45:                                               ; preds = %44
  %46 = load i8, ptr %29, align 1, !tbaa !462
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %64, !prof !947

48:                                               ; preds = %45
  %49 = load i64, ptr %3, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 23
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %3) #21
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 2), align 16, !tbaa !458
  %57 = tail call ptr @build_qualified_type(ptr noundef %56, i32 noundef 1) #21
  %58 = load i32, ptr @ptr_mode, align 4, !tbaa !469
  %59 = tail call ptr @build_pointer_type_for_mode(ptr noundef %57, i32 noundef %58, i8 noundef zeroext 1) #21
  %60 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %61 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %59, ptr noundef %1) #21
  %62 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %57, ptr noundef %61) #21
  %63 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %60, ptr noundef %62) #21
  br label %107

64:                                               ; preds = %52, %48, %45, %44
  br i1 %32, label %65, label %86, !prof !948

65:                                               ; preds = %64
  %66 = load i8, ptr %28, align 1, !tbaa !462
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %86, !prof !877

68:                                               ; preds = %65
  %69 = load i64, ptr %3, align 8
  %70 = and i64 %69, 65535
  %71 = icmp eq i64 %70, 23
  br i1 %71, label %72, label %86

72:                                               ; preds = %68
  %73 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %3) #21
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 2), align 16, !tbaa !458
  %77 = tail call ptr @build_qualified_type(ptr noundef %76, i32 noundef 1) #21
  %78 = load i32, ptr @ptr_mode, align 4, !tbaa !469
  %79 = tail call ptr @build_pointer_type_for_mode(ptr noundef %77, i32 noundef %78, i8 noundef zeroext 1) #21
  %80 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %81 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %79, ptr noundef %2) #21
  %82 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %77, ptr noundef %81) #21
  %83 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %80, ptr noundef %82) #21
  %84 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %85 = tail call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 79, ptr noundef %84, ptr noundef %83) #21
  br label %107

86:                                               ; preds = %72, %68, %65, %64
  %87 = tail call i32 @host_integerp(ptr noundef %3, i32 noundef 1) #21
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %107, label %89, !prof !949

89:                                               ; preds = %86
  %90 = tail call i64 @tree_low_cst(ptr noundef %3, i32 noundef 1) #21
  %91 = icmp eq i64 %90, 1
  br i1 %91, label %92, label %107, !prof !950

92:                                               ; preds = %89
  %93 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 2), align 16, !tbaa !458
  %94 = tail call ptr @build_qualified_type(ptr noundef %93, i32 noundef 1) #21
  %95 = load i32, ptr @ptr_mode, align 4, !tbaa !469
  %96 = tail call ptr @build_pointer_type_for_mode(ptr noundef %94, i32 noundef %95, i8 noundef zeroext 1) #21
  %97 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %98 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %96, ptr noundef %1) #21
  %99 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %94, ptr noundef %98) #21
  %100 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %97, ptr noundef %99) #21
  %101 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %102 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %96, ptr noundef %2) #21
  %103 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %94, ptr noundef %102) #21
  %104 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %101, ptr noundef %103) #21
  %105 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %106 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 64, ptr noundef %105, ptr noundef %100, ptr noundef %104) #21
  br label %107

107:                                              ; preds = %86, %89, %4, %7, %10, %92, %75, %55, %36, %23, %16
  %108 = phi ptr [ %19, %16 ], [ %26, %23 ], [ %43, %36 ], [ %63, %55 ], [ %85, %75 ], [ %106, %92 ], [ null, %10 ], [ null, %7 ], [ null, %4 ], [ null, %89 ], [ null, %86 ]
  ret ptr %108
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_memchr(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 !prof !449 !PGOFuncName !951 {
  %6 = alloca i8, align 1
  %7 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 10) #19, !range !451
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %52, label %9

9:                                                ; preds = %5
  %10 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 8) #19, !range !451
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %52, label %12

12:                                               ; preds = %9
  %13 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %3, i32 noundef 8) #19, !range !451
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %52, label %15

15:                                               ; preds = %12
  %16 = load i64, ptr %2, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 23
  br i1 %18, label %19, label %52

19:                                               ; preds = %15
  %20 = tail call i32 @host_integerp(ptr noundef %3, i32 noundef 1) #21
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %52, label %22

22:                                               ; preds = %19
  %23 = tail call fastcc ptr @c_getstr(ptr noundef %1) #19
  %24 = icmp eq ptr %23, null
  br i1 %24, label %52, label %25

25:                                               ; preds = %22
  %26 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %23) #19
  %27 = add i64 %26, 1
  %28 = tail call i32 @compare_tree_int(ptr noundef %3, i64 noundef %27) #21
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %30, label %52

30:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #20
  %31 = call fastcc i32 @target_char_cast(ptr noundef nonnull %2, ptr noundef nonnull %6) #19, !range !798
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %50

33:                                               ; preds = %30
  %34 = load i8, ptr %6, align 1, !tbaa !462
  %35 = sext i8 %34 to i32
  %36 = tail call i64 @tree_low_cst(ptr noundef %3, i32 noundef 1) #21
  %37 = tail call ptr @memchr(ptr noundef nonnull %23, i32 noundef %35, i64 noundef %36) #19
  %38 = icmp eq ptr %37, null
  %39 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !462
  br i1 %38, label %41, label %43

41:                                               ; preds = %33
  %42 = tail call ptr @build_int_cst(ptr noundef %40, i64 noundef 0) #21
  br label %50

43:                                               ; preds = %33
  %44 = ptrtoint ptr %37 to i64
  %45 = ptrtoint ptr %23 to i64
  %46 = sub i64 %44, %45
  %47 = tail call ptr @size_int_kind(i64 noundef %46, i32 noundef 0) #21
  %48 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 66, ptr noundef %40, ptr noundef %1, ptr noundef %47) #21
  %49 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %4, ptr noundef %48) #21
  br label %50

50:                                               ; preds = %30, %43, %41
  %51 = phi ptr [ %42, %41 ], [ %49, %43 ], [ null, %30 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #20
  br label %52

52:                                               ; preds = %50, %19, %15, %25, %22, %5, %9, %12
  %53 = phi ptr [ null, %12 ], [ null, %9 ], [ null, %5 ], [ %51, %50 ], [ null, %19 ], [ null, %15 ], [ null, %25 ], [ null, %22 ]
  ret ptr %53
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_memcmp(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #3 !prof !952 !PGOFuncName !953 {
  %5 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 10) #19, !range !451
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %75, label %7, !prof !954

7:                                                ; preds = %4
  %8 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 10) #19, !range !451
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %75, label %10, !prof !954

10:                                               ; preds = %7
  %11 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %3, i32 noundef 8) #19, !range !451
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %75, label %13, !prof !954

13:                                               ; preds = %10
  %14 = tail call i32 @integer_zerop(ptr noundef %3) #21
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16, !prof !955

16:                                               ; preds = %13
  %17 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !458
  %19 = tail call ptr @omit_two_operands_loc(i32 noundef %0, ptr noundef %17, ptr noundef %18, ptr noundef %1, ptr noundef %2) #21
  br label %75

20:                                               ; preds = %13
  %21 = tail call i32 @operand_equal_p(ptr noundef %1, ptr noundef %2, i32 noundef 0) #21
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23, !prof !956

23:                                               ; preds = %20
  %24 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %25 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !458
  %26 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %24, ptr noundef %25, ptr noundef %3) #21
  br label %75

27:                                               ; preds = %20
  %28 = tail call fastcc ptr @c_getstr(ptr noundef %1) #19
  %29 = tail call fastcc ptr @c_getstr(ptr noundef %2) #19
  %30 = tail call i32 @host_integerp(ptr noundef %3, i32 noundef 1) #21
  %31 = icmp ne i32 %30, 0
  %32 = icmp ne ptr %28, null
  %33 = select i1 %31, i1 %32, i1 false
  %34 = icmp ne ptr %29, null
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %54, !prof !957

36:                                               ; preds = %27
  %37 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %28) #19
  %38 = add i64 %37, 1
  %39 = tail call i32 @compare_tree_int(ptr noundef %3, i64 noundef %38) #21
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %29) #19
  %43 = add i64 %42, 1
  %44 = tail call i32 @compare_tree_int(ptr noundef %3, i64 noundef %43) #21
  %45 = icmp slt i32 %44, 1
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = tail call i64 @tree_low_cst(ptr noundef %3, i32 noundef 1) #21
  %48 = tail call i32 @memcmp(ptr noundef nonnull %28, ptr noundef nonnull %29, i64 noundef %47) #19
  %49 = icmp sgt i32 %48, 0
  %50 = icmp slt i32 %48, 0
  %51 = select i1 %50, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 15), ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13)
  %52 = select i1 %49, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), ptr %51
  %53 = load ptr, ptr %52, align 8, !tbaa !458
  br label %75

54:                                               ; preds = %41, %36, %27
  %55 = tail call i32 @host_integerp(ptr noundef %3, i32 noundef 1) #21
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %75, label %57, !prof !958

57:                                               ; preds = %54
  %58 = tail call i64 @tree_low_cst(ptr noundef %3, i32 noundef 1) #21
  %59 = icmp eq i64 %58, 1
  br i1 %59, label %60, label %75, !prof !959

60:                                               ; preds = %57
  %61 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 2), align 16, !tbaa !458
  %62 = tail call ptr @build_qualified_type(ptr noundef %61, i32 noundef 1) #21
  %63 = load i32, ptr @ptr_mode, align 4, !tbaa !469
  %64 = tail call ptr @build_pointer_type_for_mode(ptr noundef %62, i32 noundef %63, i8 noundef zeroext 1) #21
  %65 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %66 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %64, ptr noundef %1) #21
  %67 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %62, ptr noundef %66) #21
  %68 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %65, ptr noundef %67) #21
  %69 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %70 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %64, ptr noundef %2) #21
  %71 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %62, ptr noundef %70) #21
  %72 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %69, ptr noundef %71) #21
  %73 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %74 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 64, ptr noundef %73, ptr noundef %68, ptr noundef %72) #21
  br label %75

75:                                               ; preds = %54, %57, %4, %7, %10, %60, %46, %23, %16
  %76 = phi ptr [ %19, %16 ], [ %26, %23 ], [ %53, %46 ], [ %74, %60 ], [ null, %10 ], [ null, %7 ], [ null, %4 ], [ null, %57 ], [ null, %54 ]
  ret ptr %76
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @fold_builtin_stxcpy_chk(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6, i32 noundef %7) local_unnamed_addr #3 !prof !449 {
  %9 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 10) #19, !range !451
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %83, label %11

11:                                               ; preds = %8
  %12 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %3, i32 noundef 10) #19, !range !451
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %83, label %14

14:                                               ; preds = %11
  %15 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %4, i32 noundef 8) #19, !range !451
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %83, label %17

17:                                               ; preds = %14
  %18 = icmp eq i32 %7, 535
  br i1 %18, label %19, label %28

19:                                               ; preds = %17
  %20 = tail call i32 @operand_equal_p(ptr noundef %3, ptr noundef %2, i32 noundef 0) #21
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !462
  %25 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !462
  %27 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %26, ptr noundef %2) #21
  br label %83

28:                                               ; preds = %19, %17
  %29 = tail call i32 @host_integerp(ptr noundef %4, i32 noundef 1) #21
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %83, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @integer_all_onesp(ptr noundef %4) #21
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %75

34:                                               ; preds = %31
  %35 = tail call ptr @c_strlen(ptr noundef %3, i32 noundef 1) #19
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = tail call i32 @host_integerp(ptr noundef nonnull %35, i32 noundef 1) #21
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %71

40:                                               ; preds = %37, %34
  %41 = icmp eq ptr %5, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %40
  %43 = tail call i32 @host_integerp(ptr noundef nonnull %5, i32 noundef 1) #21
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %71

45:                                               ; preds = %42, %40
  %46 = icmp eq i32 %7, 533
  br i1 %46, label %47, label %54

47:                                               ; preds = %45
  %48 = icmp eq i8 %6, 0
  br i1 %48, label %83, label %49

49:                                               ; preds = %47
  %50 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 535), align 8, !tbaa !458
  %51 = icmp eq ptr %50, null
  br i1 %51, label %83, label %52

52:                                               ; preds = %49
  %53 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %50, i32 noundef 3, ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  br label %83

54:                                               ; preds = %45
  br i1 %36, label %83, label %55

55:                                               ; preds = %54
  %56 = load i64, ptr %35, align 8
  %57 = and i64 %56, 65536
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %55
  %60 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 529), align 8, !tbaa !458
  %61 = icmp eq ptr %60, null
  br i1 %61, label %83, label %62

62:                                               ; preds = %59
  %63 = tail call ptr @size_int_kind(i64 noundef 1, i32 noundef 1) #21
  %64 = tail call ptr @size_binop_loc(i32 noundef %0, i32 noundef 63, ptr noundef nonnull %35, ptr noundef %63) #21
  %65 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !462
  %67 = getelementptr inbounds %struct.tree_common, ptr %66, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !462
  %69 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %60, i32 noundef 4, ptr noundef %2, ptr noundef %3, ptr noundef %64, ptr noundef %4) #19
  %70 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %68, ptr noundef %69) #21
  br label %83

71:                                               ; preds = %37, %42
  %72 = phi ptr [ %5, %42 ], [ %35, %37 ]
  %73 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %72, ptr noundef %4) #21
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %71, %31
  %76 = icmp eq i32 %7, 533
  %77 = select i1 %76, i64 335, i64 341
  %78 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !458
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %75
  %82 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %79, i32 noundef 2, ptr noundef %2, ptr noundef %3) #19
  br label %83

83:                                               ; preds = %75, %71, %59, %54, %55, %49, %47, %28, %8, %11, %14, %81, %62, %52, %22
  %84 = phi ptr [ %27, %22 ], [ %82, %81 ], [ %53, %52 ], [ %70, %62 ], [ null, %14 ], [ null, %11 ], [ null, %8 ], [ null, %28 ], [ null, %47 ], [ null, %49 ], [ null, %55 ], [ null, %54 ], [ null, %59 ], [ null, %71 ], [ null, %75 ]
  ret ptr %84
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_strcat_chk(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 !prof !449 !PGOFuncName !960 {
  %6 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 10) #19, !range !451
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %37, label %8

8:                                                ; preds = %5
  %9 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %3, i32 noundef 10) #19, !range !451
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %37, label %11

11:                                               ; preds = %8
  %12 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %4, i32 noundef 8) #19, !range !451
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %11
  %15 = tail call fastcc ptr @c_getstr(ptr noundef %3) #19
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %14
  %18 = load i8, ptr %15, align 1, !tbaa !462
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !462
  %23 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !462
  %25 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %24, ptr noundef %2, ptr noundef %3) #21
  br label %37

26:                                               ; preds = %17, %14
  %27 = tail call i32 @host_integerp(ptr noundef %4, i32 noundef 1) #21
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @integer_all_onesp(ptr noundef %4) #21
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 338), align 16, !tbaa !458
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %33, i32 noundef 2, ptr noundef %2, ptr noundef %3) #19
  br label %37

37:                                               ; preds = %32, %26, %29, %5, %8, %11, %35, %20
  %38 = phi ptr [ %25, %20 ], [ %36, %35 ], [ null, %11 ], [ null, %8 ], [ null, %5 ], [ null, %29 ], [ null, %26 ], [ null, %32 ]
  ret ptr %38
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @readonly_data_expr(ptr noundef %0) unnamed_addr #3 !prof !961 !PGOFuncName !962 {
  %2 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #21
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %19, !prof !897

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !462
  %9 = tail call ptr @get_base_address(ptr noundef %8) #21
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %6
  %12 = load i64, ptr %9, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %19 [
    i16 28, label %17
    i16 51, label %17
    i16 32, label %14
  ]

14:                                               ; preds = %11
  %15 = and i64 %12, 67108864
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %11, %11, %14
  %18 = tail call zeroext i8 @decl_readonly_section(ptr noundef nonnull %9, i32 noundef 0) #21
  br label %19

19:                                               ; preds = %14, %11, %6, %1, %17
  %20 = phi i8 [ %18, %17 ], [ 0, %1 ], [ 0, %6 ], [ 0, %11 ], [ 0, %14 ]
  ret i8 %20
}

; Function Attrs: optsize
declare ptr @get_ref_base_and_extent(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @ranges_overlap_p(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #14 !prof !449 !PGOFuncName !963 {
  %5 = icmp ult i64 %0, %2
  br i1 %5, label %11, label %6

6:                                                ; preds = %4
  %7 = icmp eq i64 %3, -1
  %8 = add i64 %3, %2
  %9 = icmp ugt i64 %8, %0
  %10 = or i1 %7, %9
  br i1 %10, label %19, label %11

11:                                               ; preds = %6, %4
  %12 = icmp ult i64 %2, %0
  br i1 %12, label %18, label %13

13:                                               ; preds = %11
  %14 = icmp eq i64 %1, -1
  %15 = add i64 %1, %0
  %16 = icmp ugt i64 %15, %2
  %17 = or i1 %14, %16
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %11
  br label %19

19:                                               ; preds = %13, %6, %18
  %20 = phi i8 [ 0, %18 ], [ 1, %6 ], [ 1, %13 ]
  ret i8 %20
}

; Function Attrs: optsize
declare ptr @tree_expr_size(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef readonly %0) unnamed_addr #7 !prof !964 !PGOFuncName !965 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3, !prof !966

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !967
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7, !prof !931

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gimple_df, ptr %5, i64 0, i32 10
  %9 = load i8, ptr %8, align 8
  %10 = and i8 %9, 1
  br label %11

11:                                               ; preds = %7, %3, %1
  %12 = phi i8 [ 0, %3 ], [ 0, %1 ], [ %10, %7 ]
  ret i8 %12
}

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @decl_readonly_section(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @integer_all_onesp(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @fold_builtin_memory_chk(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i8 noundef zeroext %7, i32 noundef %8) local_unnamed_addr #3 !prof !449 {
  %10 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 10) #19, !range !451
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %82, label %12

12:                                               ; preds = %9
  %13 = icmp eq i32 %8, 532
  %14 = select i1 %13, i32 8, i32 10
  %15 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %3, i32 noundef %14) #19, !range !451
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %82, label %17

17:                                               ; preds = %12
  %18 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %4, i32 noundef 8) #19, !range !451
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %82, label %20

20:                                               ; preds = %17
  %21 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %5, i32 noundef 8) #19, !range !451
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %82, label %23

23:                                               ; preds = %20
  br i1 %13, label %44, label %24

24:                                               ; preds = %23
  %25 = tail call i32 @operand_equal_p(ptr noundef %3, ptr noundef %2, i32 noundef 0) #21
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %24
  %28 = icmp eq i32 %8, 531
  br i1 %28, label %35, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !462
  %32 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !462
  %34 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %33, ptr noundef %2, ptr noundef %4) #21
  br label %82

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !462
  %38 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 66, ptr noundef %37, ptr noundef %2, ptr noundef %4) #21
  %39 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !462
  %41 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !462
  %43 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %42, ptr noundef %38) #21
  br label %82

44:                                               ; preds = %24, %23
  %45 = tail call i32 @host_integerp(ptr noundef %5, i32 noundef 1) #21
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %82, label %47

47:                                               ; preds = %44
  %48 = tail call i32 @integer_all_onesp(ptr noundef %5) #21
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %47
  %51 = tail call i32 @host_integerp(ptr noundef %4, i32 noundef 1) #21
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %50
  %54 = icmp eq ptr %6, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %53
  %56 = tail call i32 @host_integerp(ptr noundef nonnull %6, i32 noundef 1) #21
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %55, %53
  %59 = icmp eq i32 %8, 531
  %60 = icmp ne i8 %7, 0
  %61 = and i1 %60, %59
  br i1 %61, label %62, label %82

62:                                               ; preds = %58
  %63 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 529), align 8, !tbaa !458
  %64 = icmp eq ptr %63, null
  br i1 %64, label %82, label %65

65:                                               ; preds = %62
  %66 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %63, i32 noundef 4, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #19
  br label %82

67:                                               ; preds = %50, %55
  %68 = phi ptr [ %6, %55 ], [ %4, %50 ]
  %69 = tail call i32 @tree_int_cst_lt(ptr noundef %5, ptr noundef %68) #21
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %67, %47
  %72 = add i32 %8, -529
  %73 = icmp ult i32 %72, 4
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = zext nneg i32 %72 to i64
  %76 = getelementptr inbounds [4 x ptr], ptr @switch.table.fold_builtin_memory_chk, i64 0, i64 %75
  %77 = load ptr, ptr %76, align 8
  %78 = load ptr, ptr %77, align 8, !tbaa !458
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %74
  %81 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %78, i32 noundef 3, ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  br label %82

82:                                               ; preds = %71, %74, %67, %58, %62, %44, %9, %12, %17, %20, %80, %65, %35, %29
  %83 = phi ptr [ %34, %29 ], [ %43, %35 ], [ %81, %80 ], [ %66, %65 ], [ null, %20 ], [ null, %17 ], [ null, %12 ], [ null, %9 ], [ null, %44 ], [ null, %62 ], [ null, %58 ], [ null, %67 ], [ null, %74 ], [ null, %71 ]
  ret ptr %83
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @fold_builtin_strncpy_chk(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #3 !prof !449 {
  %7 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %1, i32 noundef 10) #19, !range !451
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %41, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 10) #19, !range !451
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %41, label %12

12:                                               ; preds = %9
  %13 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %3, i32 noundef 8) #19, !range !451
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %41, label %15

15:                                               ; preds = %12
  %16 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %4, i32 noundef 8) #19, !range !451
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %41, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @host_integerp(ptr noundef %4, i32 noundef 1) #21
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @integer_all_onesp(ptr noundef %4) #21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = tail call i32 @host_integerp(ptr noundef %3, i32 noundef 1) #21
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = icmp eq ptr %5, null
  br i1 %28, label %41, label %29

29:                                               ; preds = %27
  %30 = tail call i32 @host_integerp(ptr noundef nonnull %5, i32 noundef 1) #21
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %24, %29
  %33 = phi ptr [ %5, %29 ], [ %3, %24 ]
  %34 = tail call i32 @tree_int_cst_lt(ptr noundef %4, ptr noundef %33) #21
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32, %21
  %37 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 349), align 8, !tbaa !458
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  %40 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %37, i32 noundef 3, ptr noundef %1, ptr noundef %2, ptr noundef %3) #19
  br label %41

41:                                               ; preds = %36, %32, %27, %29, %18, %6, %9, %12, %15, %39
  %42 = phi ptr [ %40, %39 ], [ null, %15 ], [ null, %12 ], [ null, %9 ], [ null, %6 ], [ null, %18 ], [ null, %29 ], [ null, %27 ], [ null, %32 ], [ null, %36 ]
  ret ptr %42
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_strncat_chk(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #3 !prof !449 !PGOFuncName !969 {
  %7 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %2, i32 noundef 10) #19, !range !451
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %64, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %3, i32 noundef 10) #19, !range !451
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %64, label %12

12:                                               ; preds = %9
  %13 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %5, i32 noundef 8) #19, !range !451
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %64, label %15

15:                                               ; preds = %12
  %16 = tail call fastcc ptr @c_getstr(ptr noundef %3) #19
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load i8, ptr %16, align 1, !tbaa !462
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !462
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !462
  %26 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %25, ptr noundef %2, ptr noundef %4) #21
  br label %64

27:                                               ; preds = %18, %15
  %28 = tail call i32 @integer_zerop(ptr noundef %4) #21
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !462
  %33 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !462
  %35 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %34, ptr noundef %2, ptr noundef %3) #21
  br label %64

36:                                               ; preds = %27
  %37 = tail call i32 @host_integerp(ptr noundef %5, i32 noundef 1) #21
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %64, label %39

39:                                               ; preds = %36
  %40 = tail call i32 @integer_all_onesp(ptr noundef %5) #21
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  %43 = tail call ptr @c_strlen(ptr noundef %3, i32 noundef 1) #19
  %44 = icmp eq ptr %43, null
  br i1 %44, label %64, label %45

45:                                               ; preds = %42
  %46 = tail call i32 @host_integerp(ptr noundef nonnull %43, i32 noundef 1) #21
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %64, label %48

48:                                               ; preds = %45
  %49 = tail call i32 @host_integerp(ptr noundef %4, i32 noundef 1) #21
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %48
  %52 = tail call i32 @tree_int_cst_lt(ptr noundef %4, ptr noundef nonnull %43) #21
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 534), align 16, !tbaa !458
  %56 = icmp eq ptr %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %54
  %58 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %55, i32 noundef 3, ptr noundef %2, ptr noundef %3, ptr noundef %5) #19
  br label %64

59:                                               ; preds = %39
  %60 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 347), align 8, !tbaa !458
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %60, i32 noundef 3, ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  br label %64

64:                                               ; preds = %59, %57, %54, %51, %48, %45, %42, %36, %6, %9, %12, %62, %30, %21
  %65 = phi ptr [ %26, %21 ], [ %35, %30 ], [ %63, %62 ], [ null, %12 ], [ null, %9 ], [ null, %6 ], [ null, %36 ], [ %58, %57 ], [ null, %54 ], [ null, %51 ], [ null, %48 ], [ null, %45 ], [ null, %42 ], [ null, %59 ]
  ret ptr %65
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_sprintf_chk(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #3 !prof !449 !PGOFuncName !970 {
  %4 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !462
  %6 = getelementptr inbounds %struct.tree_int_cst, ptr %5, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !462
  %8 = trunc i64 %7 to i32
  %9 = add nsw i32 %8, -3
  %10 = icmp slt i32 %8, 7
  br i1 %10, label %101, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !462
  %14 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %13, i32 noundef 10) #19, !range !451
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %101, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !462
  %19 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %18, i32 noundef 8) #19, !range !451
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %101, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !462
  %24 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %23, i32 noundef 8) #19, !range !451
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %101, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !462
  %29 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %28, i32 noundef 10) #19, !range !451
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %101, label %31

31:                                               ; preds = %26
  %32 = tail call i32 @host_integerp(ptr noundef %23, i32 noundef 1) #21
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %101, label %34

34:                                               ; preds = %31
  %35 = tail call fastcc zeroext i8 @init_target_chars() #19, !range !451
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %101, label %37

37:                                               ; preds = %34
  %38 = tail call fastcc ptr @c_getstr(ptr noundef %28) #19
  %39 = icmp eq ptr %38, null
  br i1 %39, label %72, label %40

40:                                               ; preds = %37
  %41 = load i64, ptr @target_percent, align 8, !tbaa !453
  %42 = trunc i64 %41 to i32
  %43 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %38, i32 noundef %42) #19
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = icmp ne i32 %2, 539
  %47 = icmp eq i32 %9, 4
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %49, label %72

49:                                               ; preds = %45
  %50 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !458
  %51 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %38) #19
  %52 = tail call ptr @build_int_cstu(ptr noundef %50, i64 noundef %51) #21
  br label %72

53:                                               ; preds = %40
  %54 = icmp eq i32 %2, 539
  br i1 %54, label %55, label %72

55:                                               ; preds = %53
  %56 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(1) @target_percent_s) #19
  %57 = icmp eq i32 %56, 0
  %58 = icmp eq i32 %9, 5
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !462
  %63 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %62, i32 noundef 10) #19, !range !451
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %60
  %66 = tail call ptr @c_strlen(ptr noundef %62, i32 noundef 1) #19
  %67 = icmp eq ptr %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = tail call i32 @host_integerp(ptr noundef nonnull %66, i32 noundef 1) #21
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68, %65
  br label %72

72:                                               ; preds = %68, %71, %60, %45, %49, %55, %53, %37
  %73 = phi ptr [ %52, %49 ], [ null, %45 ], [ null, %55 ], [ null, %53 ], [ null, %37 ], [ %66, %68 ], [ null, %71 ], [ null, %60 ]
  %74 = tail call i32 @integer_all_onesp(ptr noundef %23) #21
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = icmp eq ptr %73, null
  br i1 %77, label %101, label %78

78:                                               ; preds = %76
  %79 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %73, ptr noundef %23) #21
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %101, label %81

81:                                               ; preds = %78, %72
  %82 = tail call i32 @integer_zerop(ptr noundef %18) #21
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %81
  br i1 %39, label %101, label %85

85:                                               ; preds = %84
  %86 = load i64, ptr @target_percent, align 8, !tbaa !453
  %87 = trunc i64 %86 to i32
  %88 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %38, i32 noundef %87) #19
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(1) @target_percent_s) #19
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %85, %90, %81
  %94 = icmp eq i32 %2, 541
  %95 = select i1 %94, i64 380, i64 373
  %96 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !458
  %98 = icmp eq ptr %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %93
  %100 = tail call ptr (i32, ptr, i32, ptr, i32, ...) @rewrite_call_expr(i32 noundef %0, ptr noundef nonnull %1, i32 noundef 4, ptr noundef nonnull %97, i32 noundef 2, ptr noundef %13, ptr noundef %28) #19
  br label %101

101:                                              ; preds = %93, %90, %84, %76, %78, %34, %31, %26, %21, %16, %11, %3, %99
  %102 = phi ptr [ %100, %99 ], [ null, %3 ], [ null, %11 ], [ null, %16 ], [ null, %21 ], [ null, %26 ], [ null, %31 ], [ null, %34 ], [ null, %78 ], [ null, %76 ], [ null, %84 ], [ null, %90 ], [ null, %93 ]
  ret ptr %102
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @fold_builtin_snprintf_chk(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #3 !prof !449 {
  %5 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !462
  %7 = getelementptr inbounds %struct.tree_int_cst, ptr %6, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !462
  %9 = trunc i64 %8 to i32
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %79, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !462
  %14 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %13, i32 noundef 10) #19, !range !451
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %79, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !462
  %19 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %18, i32 noundef 8) #19, !range !451
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %79, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !462
  %24 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %23, i32 noundef 8) #19, !range !451
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %79, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !462
  %29 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %28, i32 noundef 8) #19, !range !451
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %79, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 2
  %33 = load ptr, ptr %32, align 8, !tbaa !462
  %34 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %33, i32 noundef 10) #19, !range !451
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %79, label %36

36:                                               ; preds = %31
  %37 = tail call i32 @host_integerp(ptr noundef %28, i32 noundef 1) #21
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %79, label %39

39:                                               ; preds = %36
  %40 = tail call i32 @integer_all_onesp(ptr noundef %28) #21
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %39
  %43 = tail call i32 @host_integerp(ptr noundef %18, i32 noundef 1) #21
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = icmp eq ptr %2, null
  br i1 %46, label %79, label %47

47:                                               ; preds = %45
  %48 = tail call i32 @host_integerp(ptr noundef nonnull %2, i32 noundef 1) #21
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %79, label %50

50:                                               ; preds = %42, %47
  %51 = phi ptr [ %2, %47 ], [ %18, %42 ]
  %52 = tail call i32 @tree_int_cst_lt(ptr noundef %28, ptr noundef %51) #21
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %79

54:                                               ; preds = %50, %39
  %55 = tail call fastcc zeroext i8 @init_target_chars() #19, !range !451
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %79, label %57

57:                                               ; preds = %54
  %58 = tail call i32 @integer_zerop(ptr noundef %23) #21
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = tail call fastcc ptr @c_getstr(ptr noundef %33) #19
  %62 = icmp eq ptr %61, null
  br i1 %62, label %79, label %63

63:                                               ; preds = %60
  %64 = load i64, ptr @target_percent, align 8, !tbaa !453
  %65 = trunc i64 %64 to i32
  %66 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %61, i32 noundef %65) #19
  %67 = icmp eq ptr %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %61, ptr noundef nonnull dereferenceable(1) @target_percent_s) #19
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %63, %68, %57
  %72 = icmp eq i32 %3, 540
  %73 = select i1 %72, i64 379, i64 372
  %74 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !458
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %71
  %78 = tail call ptr (i32, ptr, i32, ptr, i32, ...) @rewrite_call_expr(i32 noundef %0, ptr noundef nonnull %1, i32 noundef 5, ptr noundef nonnull %75, i32 noundef 3, ptr noundef %13, ptr noundef %18, ptr noundef %33) #19
  br label %79

79:                                               ; preds = %71, %68, %60, %54, %50, %45, %47, %36, %31, %26, %21, %16, %11, %4, %77
  %80 = phi ptr [ %78, %77 ], [ null, %4 ], [ null, %11 ], [ null, %16 ], [ null, %21 ], [ null, %26 ], [ null, %31 ], [ null, %36 ], [ null, %47 ], [ null, %45 ], [ null, %50 ], [ null, %54 ], [ null, %60 ], [ null, %68 ], [ null, %71 ]
  ret ptr %80
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @fold_builtin_fpclassify(i32 noundef %0, ptr noundef %1) unnamed_addr #3 !prof !449 !PGOFuncName !971 {
  %3 = alloca %struct.real_value, align 8
  %4 = alloca [128 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #20
  %5 = tail call zeroext i8 (ptr, ...) @validate_arglist(ptr noundef %1, i32 noundef 8, i32 noundef 8, i32 noundef 8, i32 noundef 8, i32 noundef 8, i32 noundef 9, i32 noundef 19) #19, !range !451
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %109, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !462
  %10 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !462
  %12 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !462
  %14 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !462
  %16 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 2
  %17 = load ptr, ptr %16, align 8, !tbaa !462
  %18 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 2, i32 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !462
  %20 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !462
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 14
  br i1 %24, label %25, label %27

25:                                               ; preds = %7
  %26 = tail call i32 @vector_type_mode(ptr noundef nonnull %21) #21
  br label %32

27:                                               ; preds = %7
  %28 = getelementptr inbounds %struct.tree_type, ptr %21, i64 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = lshr i32 %29, 16
  %31 = and i32 %30, 255
  br label %32

32:                                               ; preds = %27, %25
  %33 = phi i32 [ %26, %25 ], [ %31, %27 ]
  %34 = tail call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 82, ptr noundef nonnull %21, ptr noundef nonnull %19) #21
  %35 = tail call fastcc ptr @builtin_save_expr(ptr noundef %34) #19
  %36 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %37 = tail call ptr @build_real(ptr noundef nonnull %21, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst0) #21
  %38 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 101, ptr noundef %36, ptr noundef %35, ptr noundef %37) #21
  %39 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %40 = tail call ptr @fold_build3_stat_loc(i32 noundef %0, i32 noundef 56, ptr noundef %39, ptr noundef %38, ptr noundef %17, ptr noundef %15) #21
  %41 = zext i32 %33 to i64
  %42 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %41
  %43 = add i32 %33, -38
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !458
  %47 = getelementptr inbounds %struct.real_format, ptr %46, i64 0, i32 5
  %48 = load i32, ptr %47, align 4, !tbaa !718
  %49 = add nsw i32 %48, -1
  %50 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.729, i32 noundef %49) #19
  %51 = call i32 @real_from_string(ptr noundef nonnull %3, ptr noundef nonnull %4) #21
  %52 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %53 = call ptr @build_real(ptr noundef nonnull %21, ptr noundef nonnull byval(%struct.real_value) align 8 %3) #21
  %54 = call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 100, ptr noundef %52, ptr noundef %35, ptr noundef %53) #21
  %55 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %56 = call ptr @fold_build3_stat_loc(i32 noundef %0, i32 noundef 56, ptr noundef %55, ptr noundef %54, ptr noundef %13, ptr noundef %40) #21
  %57 = load i8, ptr %42, align 1, !tbaa !462
  switch i8 %57, label %83 [
    i8 8, label %58
    i8 9, label %58
    i8 11, label %58
    i8 17, label %58
  ]

58:                                               ; preds = %32, %32, %32, %32
  %59 = and i8 %57, -2
  %60 = icmp eq i8 %59, 8
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %41
  %63 = load i8, ptr %62, align 1, !tbaa !462
  %64 = zext i8 %63 to i32
  br label %65

65:                                               ; preds = %61, %58
  %66 = phi i32 [ %33, %58 ], [ %64, %61 ]
  %67 = add i32 %66, -38
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !458
  %71 = getelementptr inbounds %struct.real_format, ptr %70, i64 0, i32 12
  %72 = load i8, ptr %71, align 1, !tbaa !658
  %73 = icmp eq i8 %72, 0
  %74 = load i32, ptr @flag_finite_math_only, align 4
  %75 = icmp ne i32 %74, 0
  %76 = select i1 %73, i1 true, i1 %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %65
  call void @real_inf(ptr noundef nonnull %3) #21
  %78 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %79 = call ptr @build_real(ptr noundef nonnull %21, ptr noundef nonnull byval(%struct.real_value) align 8 %3) #21
  %80 = call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 101, ptr noundef %78, ptr noundef %35, ptr noundef %79) #21
  %81 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %82 = call ptr @fold_build3_stat_loc(i32 noundef %0, i32 noundef 56, ptr noundef %81, ptr noundef %80, ptr noundef %11, ptr noundef %56) #21
  br label %83

83:                                               ; preds = %32, %77, %65
  %84 = phi ptr [ %56, %65 ], [ %82, %77 ], [ %56, %32 ]
  switch i8 %57, label %109 [
    i8 8, label %85
    i8 9, label %85
    i8 11, label %85
    i8 17, label %85
  ]

85:                                               ; preds = %83, %83, %83, %83
  %86 = and i8 %57, -2
  %87 = icmp eq i8 %86, 8
  br i1 %87, label %92, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %41
  %90 = load i8, ptr %89, align 1, !tbaa !462
  %91 = zext i8 %90 to i32
  br label %92

92:                                               ; preds = %88, %85
  %93 = phi i32 [ %33, %85 ], [ %91, %88 ]
  %94 = add i32 %93, -38
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !458
  %98 = getelementptr inbounds %struct.real_format, ptr %97, i64 0, i32 11
  %99 = load i8, ptr %98, align 2, !tbaa !716
  %100 = icmp eq i8 %99, 0
  %101 = load i32, ptr @flag_finite_math_only, align 4
  %102 = icmp ne i32 %101, 0
  %103 = select i1 %100, i1 true, i1 %102
  br i1 %103, label %109, label %104

104:                                              ; preds = %92
  %105 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %106 = call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 104, ptr noundef %105, ptr noundef %35, ptr noundef %35) #21
  %107 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !458
  %108 = call ptr @fold_build3_stat_loc(i32 noundef %0, i32 noundef 56, ptr noundef %107, ptr noundef %106, ptr noundef %84, ptr noundef %9) #21
  br label %109

109:                                              ; preds = %92, %104, %83, %2
  %110 = phi ptr [ null, %2 ], [ %84, %92 ], [ %108, %104 ], [ %84, %83 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  ret ptr %110
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @rewrite_call_expr(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ...) unnamed_addr #3 !prof !449 !PGOFuncName !972 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  %7 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !462
  %9 = getelementptr inbounds %struct.tree_int_cst, ptr %8, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !462
  %11 = trunc i64 %10 to i32
  %12 = add nsw i32 %11, -3
  %13 = sub nsw i32 %12, %2
  %14 = add nsw i32 %13, %4
  %15 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !462
  %17 = tail call ptr @build_pointer_type(ptr noundef %16) #21
  %18 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %17, ptr noundef %3) #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  %19 = sext i32 %14 to i64
  %20 = shl nsw i64 %19, 3
  %21 = alloca i8, i64 %20, align 16
  call void @llvm.va_start(ptr nonnull %6)
  %22 = icmp sgt i32 %4, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %5
  %24 = load i32, ptr %6, align 16
  %25 = getelementptr inbounds %struct.__va_list_tag, ptr %6, i64 0, i32 2
  %26 = getelementptr inbounds %struct.__va_list_tag, ptr %6, i64 0, i32 3
  %27 = load ptr, ptr %26, align 16
  %28 = load ptr, ptr %25, align 8
  %29 = zext nneg i32 %4 to i64
  br label %30

30:                                               ; preds = %23, %41
  %31 = phi i64 [ 0, %23 ], [ %47, %41 ]
  %32 = phi ptr [ %28, %23 ], [ %42, %41 ]
  %33 = phi i32 [ %24, %23 ], [ %43, %41 ]
  %34 = icmp ult i32 %33, 41
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = zext nneg i32 %33 to i64
  %37 = getelementptr i8, ptr %27, i64 %36
  %38 = add nuw nsw i32 %33, 8
  store i32 %38, ptr %6, align 16
  br label %41

39:                                               ; preds = %30
  %40 = getelementptr i8, ptr %32, i64 8
  store ptr %40, ptr %25, align 8
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi ptr [ %32, %35 ], [ %40, %39 ]
  %43 = phi i32 [ %38, %35 ], [ %33, %39 ]
  %44 = phi ptr [ %37, %35 ], [ %32, %39 ]
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds ptr, ptr %21, i64 %31
  store ptr %45, ptr %46, align 8, !tbaa !458
  %47 = add nuw nsw i64 %31, 1
  %48 = icmp eq i64 %47, %29
  br i1 %48, label %49, label %30, !llvm.loop !973

49:                                               ; preds = %41
  %50 = zext nneg i32 %4 to i64
  %51 = shl nuw nsw i64 %50, 3
  br label %52

52:                                               ; preds = %49, %5
  %53 = phi i64 [ 0, %5 ], [ %51, %49 ]
  call void @llvm.va_end(ptr nonnull %6)
  %54 = icmp sgt i32 %12, %2
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = getelementptr i8, ptr %21, i64 %53
  %57 = add i32 %2, 3
  %58 = sext i32 %57 to i64
  %59 = shl nsw i64 %58, 3
  %60 = getelementptr i8, ptr %1, i64 %59
  %61 = getelementptr i8, ptr %60, i64 40
  %62 = add i32 %11, -4
  %63 = sub i32 %62, %2
  %64 = zext i32 %63 to i64
  %65 = shl nuw nsw i64 %64, 3
  %66 = add nuw nsw i64 %65, 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %56, ptr noundef nonnull align 8 dereferenceable(1) %61, i64 %66, i1 false), !tbaa !462
  br label %67

67:                                               ; preds = %55, %52
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  %68 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !462
  %70 = call ptr @build_call_array_loc(i32 noundef %0, ptr noundef %69, ptr noundef %18, i32 noundef %14, ptr noundef nonnull %21) #21
  %71 = call ptr @fold(ptr noundef %70) #21
  ret ptr %71
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: optsize
declare ptr @fold(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @build_call_array_loc(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline norecurse nosync nounwind optsize uwtable
define dso_local zeroext i8 @validate_arglist(ptr noundef %0, ...) local_unnamed_addr #16 !prof !449 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = alloca %struct.const_call_expr_arg_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.va_start(ptr nonnull %2)
  call fastcc void @init_const_call_expr_arg_iterator(ptr noundef %0, ptr noundef nonnull %3) #19
  %4 = load i32, ptr %2, align 16
  %5 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %6 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %7 = load ptr, ptr %6, align 16
  %8 = load ptr, ptr %5, align 8
  br label %9

9:                                                ; preds = %27, %1
  %10 = phi ptr [ %20, %27 ], [ %8, %1 ]
  %11 = phi i32 [ %21, %27 ], [ %4, %1 ]
  %12 = icmp ult i32 %11, 41
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = zext nneg i32 %11 to i64
  %15 = getelementptr i8, ptr %7, i64 %14
  %16 = add nuw nsw i32 %11, 8
  store i32 %16, ptr %2, align 16
  br label %19

17:                                               ; preds = %9
  %18 = getelementptr i8, ptr %10, i64 8
  store ptr %18, ptr %5, align 8
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi ptr [ %10, %13 ], [ %18, %17 ]
  %21 = phi i32 [ %16, %13 ], [ %11, %17 ]
  %22 = phi ptr [ %15, %13 ], [ %10, %17 ]
  %23 = load i32, ptr %22, align 4
  switch i32 %23, label %27 [
    i32 0, label %31
    i32 19, label %24
  ]

24:                                               ; preds = %19
  %25 = call fastcc zeroext i8 @more_const_call_expr_args_p(ptr noundef nonnull %3) #19, !range !451
  %26 = xor i8 %25, 1
  br label %31

27:                                               ; preds = %19
  %28 = call fastcc ptr @next_const_call_expr_arg(ptr noundef nonnull %3) #19
  %29 = call fastcc zeroext i8 @validate_arg(ptr noundef %28, i32 noundef %23) #19, !range !451
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %9

31:                                               ; preds = %19, %27, %24
  %32 = phi i8 [ %26, %24 ], [ 1, %19 ], [ 0, %27 ]
  call void @llvm.va_end(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  ret i8 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_function_call_expr(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 !prof !449 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !462
  %6 = tail call ptr @build_pointer_type(ptr noundef %5) #21
  %7 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %6, ptr noundef %1) #21
  %8 = tail call i32 @list_length(ptr noundef %2) #21
  %9 = sext i32 %8 to i64
  %10 = shl nsw i64 %9, 3
  %11 = alloca i8, i64 %10, align 16
  %12 = icmp sgt i32 %8, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %3
  %14 = zext nneg i32 %8 to i64
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi i64 [ 0, %13 ], [ %21, %15 ]
  %17 = phi ptr [ %2, %13 ], [ %23, %15 ]
  %18 = getelementptr inbounds %struct.tree_list, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !462
  %20 = getelementptr inbounds ptr, ptr %11, i64 %16
  store ptr %19, ptr %20, align 8, !tbaa !458
  %21 = add nuw nsw i64 %16, 1
  %22 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !462
  %24 = icmp eq i64 %21, %14
  br i1 %24, label %25, label %15, !llvm.loop !974

25:                                               ; preds = %15, %3
  %26 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !462
  %28 = call ptr @fold_builtin_call_array(i32 noundef %0, ptr noundef %27, ptr noundef %7, i32 noundef %8, ptr noundef nonnull %11) #19
  ret ptr %28
}

; Function Attrs: optsize
declare i32 @list_length(ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @fold_builtin_call_array(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #3 !prof !975 {
  %6 = load i64, ptr %2, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 121
  br i1 %8, label %9, label %82, !prof !976

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !462
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 29
  br i1 %14, label %15, label %82, !prof !976

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.tree_function_decl, ptr %11, i64 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 6144
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %82, label %20, !prof !977

20:                                               ; preds = %15
  %21 = icmp eq i32 %3, 0
  br i1 %21, label %44, label %22, !prof !978

22:                                               ; preds = %20
  %23 = sext i32 %3 to i64
  %24 = getelementptr ptr, ptr %4, i64 %23
  %25 = getelementptr ptr, ptr %24, i64 -1
  %26 = load ptr, ptr %25, align 8, !tbaa !458
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 65535
  %29 = icmp eq i64 %28, 59
  br i1 %29, label %30, label %44, !prof !979

30:                                               ; preds = %22
  %31 = tail call ptr @get_callee_fndecl(ptr noundef nonnull %26) #21
  %32 = icmp eq ptr %31, null
  br i1 %32, label %44, label %33

33:                                               ; preds = %30
  %34 = load i64, ptr %31, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 29
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.tree_function_decl, ptr %31, i64 0, i32 5
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 8191
  %41 = icmp eq i32 %40, 6660
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = tail call ptr @build_call_array_loc(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef nonnull %4) #21
  br label %84

44:                                               ; preds = %30, %33, %37, %22, %20
  %45 = tail call fastcc zeroext i8 @avoid_folding_inline_builtin(ptr noundef nonnull %11) #19, !range !451
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %49, label %47, !prof !976

47:                                               ; preds = %44
  %48 = tail call ptr @build_call_array_loc(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef %4) #21
  br label %84

49:                                               ; preds = %44
  %50 = load i32, ptr %16, align 8
  %51 = and i32 %50, 6144
  %52 = icmp eq i32 %51, 4096
  br i1 %52, label %53, label %72, !prof !977

53:                                               ; preds = %49
  %54 = icmp sgt i32 %3, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %53
  %56 = zext nneg i32 %3 to i64
  br label %57

57:                                               ; preds = %55, %57
  %58 = phi i64 [ %56, %55 ], [ %60, %57 ]
  %59 = phi ptr [ null, %55 ], [ %63, %57 ]
  %60 = add nsw i64 %58, -1
  %61 = getelementptr inbounds ptr, ptr %4, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !458
  %63 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %62, ptr noundef %59) #21
  %64 = icmp ugt i64 %58, 1
  br i1 %64, label %57, label %65, !llvm.loop !980

65:                                               ; preds = %57, %53
  %66 = phi ptr [ null, %53 ], [ %63, %57 ]
  %67 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 27), align 8, !tbaa !625
  %68 = tail call ptr %67(ptr noundef nonnull %11, ptr noundef %66, i8 noundef zeroext 0) #21
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %84

70:                                               ; preds = %65
  %71 = tail call ptr @build_call_array_loc(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef %4) #21
  br label %84

72:                                               ; preds = %49
  %73 = icmp slt i32 %3, 5
  br i1 %73, label %74, label %77, !prof !976

74:                                               ; preds = %72
  %75 = tail call fastcc ptr @fold_builtin_n(i32 noundef %0, ptr noundef nonnull %11, ptr noundef %4, i32 noundef %3, i8 noundef zeroext 0) #19
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %84, !prof !981

77:                                               ; preds = %72, %74
  %78 = tail call ptr @build_call_array_loc(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef %4) #21
  %79 = tail call fastcc ptr @fold_builtin_varargs(i32 noundef %0, ptr noundef nonnull %11, ptr noundef %78) #19
  %80 = icmp eq ptr %79, null
  %81 = select i1 %80, ptr %78, ptr %79, !prof !982
  br label %84

82:                                               ; preds = %15, %9, %5
  %83 = tail call ptr @build_call_array_loc(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef %4) #21
  br label %84

84:                                               ; preds = %74, %70, %65, %42, %77, %47, %82
  %85 = phi ptr [ %83, %82 ], [ %75, %74 ], [ %68, %65 ], [ %71, %70 ], [ %43, %42 ], [ %81, %77 ], [ %48, %47 ]
  ret ptr %85
}

; Function Attrs: optsize
declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @validate_gimple_arglist(ptr noundef %0, ...) local_unnamed_addr #3 !prof !449 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #20
  call void @llvm.va_start(ptr nonnull %2)
  %3 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %4 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  br label %5

5:                                                ; preds = %25, %1
  %6 = phi i64 [ 0, %1 ], [ %26, %25 ]
  %7 = load i32, ptr %2, align 16
  %8 = icmp ult i32 %7, 41
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = load ptr, ptr %4, align 16
  %11 = zext nneg i32 %7 to i64
  %12 = getelementptr i8, ptr %10, i64 %11
  %13 = add nuw nsw i32 %7, 8
  store i32 %13, ptr %2, align 16
  br label %17

14:                                               ; preds = %5
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr i8, ptr %15, i64 8
  store ptr %16, ptr %3, align 8
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi ptr [ %12, %9 ], [ %15, %14 ]
  %19 = load i32, ptr %18, align 4
  switch i32 %19, label %25 [
    i32 0, label %31
    i32 19, label %20
  ]

20:                                               ; preds = %17
  %21 = call fastcc i32 @gimple_call_num_args(ptr noundef %0) #19
  %22 = zext i32 %21 to i64
  %23 = icmp eq i64 %6, %22
  %24 = zext i1 %23 to i8
  br label %31

25:                                               ; preds = %17
  %26 = add i64 %6, 1
  %27 = trunc i64 %6 to i32
  %28 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %27) #19
  %29 = call fastcc zeroext i8 @validate_arg(ptr noundef %28, i32 noundef %19) #19, !range !451
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %5

31:                                               ; preds = %17, %25, %20
  %32 = phi i8 [ %24, %20 ], [ 1, %17 ], [ 0, %25 ]
  call void @llvm.va_end(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #20
  ret i8 %32
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !983 !PGOFuncName !984 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #19
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #3 !prof !985 !PGOFuncName !986 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #19
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !983 !PGOFuncName !987 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !462
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #3 !prof !988 !PGOFuncName !989 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !451
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !990

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !458
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !988 !PGOFuncName !991 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !992
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #3 !prof !988 !PGOFuncName !993 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #19
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !453
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !990

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.730, i32 noundef 1622, ptr noundef nonnull @.str.722) #21
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !994 !PGOFuncName !995 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !988 !PGOFuncName !996 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !992
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #19
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #14 !prof !988 !PGOFuncName !997 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !469
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @default_expand_builtin(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #14 !prof !449 {
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @fold_builtin_next_arg(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !prof !998 {
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !458
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !462
  %6 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !462
  %8 = getelementptr inbounds %struct.tree_int_cst, ptr %7, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !462
  %10 = trunc i64 %9 to i32
  %11 = add nsw i32 %10, -3
  %12 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !462
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15, !prof !999

15:                                               ; preds = %2
  %16 = tail call ptr @tree_last(ptr noundef nonnull %13) #21
  %17 = getelementptr inbounds %struct.tree_list, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !462
  %19 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !458
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %22, !prof !999

21:                                               ; preds = %15, %2
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.731) #21
  br label %79

22:                                               ; preds = %15
  %23 = icmp eq i8 %1, 0
  br i1 %23, label %29, label %24, !prof !999

24:                                               ; preds = %22
  %25 = icmp eq i32 %11, 2
  br i1 %25, label %27, label %26, !prof !1000

26:                                               ; preds = %24
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.732) #21
  br label %79

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 1
  br label %38

29:                                               ; preds = %22
  %30 = icmp eq i32 %11, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %29
  %32 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.733) #21
  br label %79

33:                                               ; preds = %29
  %34 = icmp sgt i32 %10, 4
  br i1 %34, label %35, label %36

35:                                               ; preds = %33
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.734) #21
  br label %79

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  br label %38

38:                                               ; preds = %36, %27
  %39 = phi ptr [ %28, %27 ], [ %37, %36 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !462
  %41 = load i64, ptr %40, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 141
  br i1 %43, label %44, label %47, !prof !999

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.tree_ssa_name, ptr %40, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !462
  br label %47

47:                                               ; preds = %44, %38
  %48 = phi ptr [ %46, %44 ], [ %40, %38 ]
  %49 = tail call i32 @integer_zerop(ptr noundef %48) #21
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %79, !prof !1001

51:                                               ; preds = %47
  %52 = load ptr, ptr @current_function_decl, align 8, !tbaa !458
  %53 = getelementptr inbounds %struct.tree_decl_non_common, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !462
  %55 = tail call ptr @tree_last(ptr noundef %54) #21
  br label %56

56:                                               ; preds = %60, %51
  %57 = phi ptr [ %48, %51 ], [ %62, %60 ]
  %58 = load i64, ptr %57, align 8
  %59 = trunc i64 %58 to i16
  switch i16 %59, label %63 [
    i16 116, label %60
    i16 113, label %60
    i16 47, label %60
  ], !prof !1002

60:                                               ; preds = %56, %56, %56
  %61 = getelementptr inbounds %struct.tree_exp, ptr %57, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !462
  br label %56, !llvm.loop !1003

63:                                               ; preds = %56
  %64 = icmp eq ptr %57, %55
  br i1 %64, label %65, label %70, !prof !1001

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.tree_decl_common, ptr %55, i64 0, i32 2
  %67 = load i64, ptr %66, align 8
  %68 = and i64 %67, 16777216
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %73, label %70, !prof !1001

70:                                               ; preds = %65, %63
  %71 = phi ptr [ @.str.735, %63 ], [ @.str.736, %65 ]
  %72 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull %71) #21
  br label %73

73:                                               ; preds = %70, %65
  %74 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !458
  br i1 %23, label %77, label %75, !prof !999

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 1
  store ptr %74, ptr %76, align 8, !tbaa !462
  br label %79

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  store ptr %74, ptr %78, align 8, !tbaa !462
  br label %79

79:                                               ; preds = %47, %77, %75, %35, %31, %26, %21
  %80 = phi i8 [ 1, %21 ], [ 1, %26 ], [ 1, %31 ], [ 1, %35 ], [ 0, %75 ], [ 0, %77 ], [ 0, %47 ]
  ret i8 %80
}

; Function Attrs: optsize
declare ptr @tree_last(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gimple_fold_builtin_snprintf_chk(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 !prof !449 {
  %4 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #19
  %5 = icmp ult i32 %4, 5
  br i1 %5, label %69, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #19
  %8 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %7, i32 noundef 10) #19, !range !451
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %69, label %10

10:                                               ; preds = %6
  %11 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 1) #19
  %12 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %11, i32 noundef 8) #19, !range !451
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %69, label %14

14:                                               ; preds = %10
  %15 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 2) #19
  %16 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %15, i32 noundef 8) #19, !range !451
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %69, label %18

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 3) #19
  %20 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %19, i32 noundef 8) #19, !range !451
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %69, label %22

22:                                               ; preds = %18
  %23 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 4) #19
  %24 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %23, i32 noundef 10) #19, !range !451
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %69, label %26

26:                                               ; preds = %22
  %27 = tail call i32 @host_integerp(ptr noundef %19, i32 noundef 1) #21
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %69, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @integer_all_onesp(ptr noundef %19) #21
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = tail call i32 @host_integerp(ptr noundef %11, i32 noundef 1) #21
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = icmp eq ptr %1, null
  br i1 %36, label %69, label %37

37:                                               ; preds = %35
  %38 = tail call i32 @host_integerp(ptr noundef nonnull %1, i32 noundef 1) #21
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %69, label %40

40:                                               ; preds = %32, %37
  %41 = phi ptr [ %1, %37 ], [ %11, %32 ]
  %42 = tail call i32 @tree_int_cst_lt(ptr noundef %19, ptr noundef %41) #21
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %40, %29
  %45 = tail call fastcc zeroext i8 @init_target_chars() #19, !range !451
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %69, label %47

47:                                               ; preds = %44
  %48 = tail call i32 @integer_zerop(ptr noundef %15) #21
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = tail call fastcc ptr @c_getstr(ptr noundef %23) #19
  %52 = icmp eq ptr %51, null
  br i1 %52, label %69, label %53

53:                                               ; preds = %50
  %54 = load i64, ptr @target_percent, align 8, !tbaa !453
  %55 = trunc i64 %54 to i32
  %56 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %51, i32 noundef %55) #19
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %53
  %59 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %51, ptr noundef nonnull dereferenceable(1) @target_percent_s) #19
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %53, %58, %47
  %62 = icmp eq i32 %2, 540
  %63 = select i1 %62, i64 379, i64 372
  %64 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !458
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %61
  %68 = tail call ptr (ptr, i32, ptr, i32, ...) @gimple_rewrite_call_expr(ptr noundef %0, i32 noundef 5, ptr noundef nonnull %65, i32 noundef 3, ptr noundef %7, ptr noundef %11, ptr noundef %23) #19
  br label %69

69:                                               ; preds = %61, %58, %50, %44, %40, %35, %37, %26, %22, %18, %14, %10, %6, %3, %67
  %70 = phi ptr [ %68, %67 ], [ null, %3 ], [ null, %6 ], [ null, %10 ], [ null, %14 ], [ null, %18 ], [ null, %22 ], [ null, %26 ], [ null, %37 ], [ null, %35 ], [ null, %40 ], [ null, %44 ], [ null, %50 ], [ null, %58 ], [ null, %61 ]
  ret ptr %70
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @gimple_rewrite_call_expr(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ...) unnamed_addr #3 !prof !449 !PGOFuncName !1004 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #19
  %7 = sub nsw i32 %6, %1
  %8 = add nsw i32 %7, %3
  %9 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !462
  %11 = tail call ptr @build_pointer_type(ptr noundef %10) #21
  %12 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %11, ptr noundef %2) #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #20
  %13 = tail call fastcc i32 @gimple_location(ptr noundef %0) #19
  %14 = sext i32 %8 to i64
  %15 = shl nsw i64 %14, 3
  %16 = alloca i8, i64 %15, align 16
  call void @llvm.va_start(ptr nonnull %5)
  %17 = icmp sgt i32 %3, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %4
  %19 = load i32, ptr %5, align 16
  %20 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 2
  %21 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 3
  %22 = load ptr, ptr %21, align 16
  %23 = load ptr, ptr %20, align 8
  %24 = zext nneg i32 %3 to i64
  br label %25

25:                                               ; preds = %18, %36
  %26 = phi i64 [ 0, %18 ], [ %42, %36 ]
  %27 = phi ptr [ %23, %18 ], [ %37, %36 ]
  %28 = phi i32 [ %19, %18 ], [ %38, %36 ]
  %29 = icmp ult i32 %28, 41
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = zext nneg i32 %28 to i64
  %32 = getelementptr i8, ptr %22, i64 %31
  %33 = add nuw nsw i32 %28, 8
  store i32 %33, ptr %5, align 16
  br label %36

34:                                               ; preds = %25
  %35 = getelementptr i8, ptr %27, i64 8
  store ptr %35, ptr %20, align 8
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi ptr [ %27, %30 ], [ %35, %34 ]
  %38 = phi i32 [ %33, %30 ], [ %28, %34 ]
  %39 = phi ptr [ %32, %30 ], [ %27, %34 ]
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds ptr, ptr %16, i64 %26
  store ptr %40, ptr %41, align 8, !tbaa !458
  %42 = add nuw nsw i64 %26, 1
  %43 = icmp eq i64 %42, %24
  br i1 %43, label %44, label %25, !llvm.loop !1005

44:                                               ; preds = %36
  %45 = zext nneg i32 %3 to i64
  br label %46

46:                                               ; preds = %44, %4
  %47 = phi i64 [ 0, %4 ], [ %45, %44 ]
  call void @llvm.va_end(ptr nonnull %5)
  %48 = icmp sgt i32 %6, %1
  br i1 %48, label %49, label %57

49:                                               ; preds = %46, %49
  %50 = phi i64 [ %55, %49 ], [ %47, %46 ]
  %51 = phi i32 [ %54, %49 ], [ %1, %46 ]
  %52 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %51) #19
  %53 = getelementptr inbounds ptr, ptr %16, i64 %50
  store ptr %52, ptr %53, align 8, !tbaa !458
  %54 = add i32 %51, 1
  %55 = add nuw nsw i64 %50, 1
  %56 = icmp eq i32 %54, %6
  br i1 %56, label %57, label %49, !llvm.loop !1006

57:                                               ; preds = %49, %46
  %58 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !462
  %60 = call ptr @build_call_array_loc(i32 noundef %13, ptr noundef %59, ptr noundef %12, i32 noundef %8, ptr noundef nonnull %16) #21
  %61 = call ptr @fold(ptr noundef %60) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #20
  ret ptr %61
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !1007 !PGOFuncName !1008 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !462
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @fold_call_stmt(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #3 !prof !1009 {
  %3 = alloca [4 x ptr], align 16
  %4 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #19
  %5 = tail call fastcc i32 @gimple_location(ptr noundef %0) #19
  %6 = icmp eq ptr %4, null
  br i1 %6, label %86, label %7, !prof !1010

7:                                                ; preds = %2
  %8 = load i64, ptr %4, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 29
  br i1 %10, label %11, label %86, !prof !1011

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_function_decl, ptr %4, i64 0, i32 5
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 6144
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %86, label %16, !prof !1012

16:                                               ; preds = %11
  %17 = tail call fastcc zeroext i8 @gimple_call_va_arg_pack_p(ptr noundef %0) #19, !range !451
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %86, !prof !1013

19:                                               ; preds = %16
  %20 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #19
  %21 = tail call fastcc zeroext i8 @avoid_folding_inline_builtin(ptr noundef nonnull %4) #19, !range !451
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %86, !prof !1013

23:                                               ; preds = %19
  %24 = load i32, ptr %12, align 8
  %25 = and i32 %24, 6144
  %26 = icmp eq i32 %25, 4096
  br i1 %26, label %27, label %40, !prof !1014

27:                                               ; preds = %23
  %28 = icmp sgt i32 %20, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %27, %29
  %30 = phi i32 [ %32, %29 ], [ %20, %27 ]
  %31 = phi ptr [ %34, %29 ], [ null, %27 ]
  %32 = add nsw i32 %30, -1
  %33 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %32) #19
  %34 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %33, ptr noundef %31) #21
  %35 = icmp ugt i32 %30, 1
  br i1 %35, label %29, label %36, !llvm.loop !1015

36:                                               ; preds = %29, %27
  %37 = phi ptr [ null, %27 ], [ %34, %29 ]
  %38 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 27), align 8, !tbaa !625
  %39 = tail call ptr %38(ptr noundef nonnull %4, ptr noundef %37, i8 noundef zeroext %1) #21
  br label %86

40:                                               ; preds = %23
  %41 = icmp slt i32 %20, 5
  br i1 %41, label %42, label %56, !prof !1016

42:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  %43 = icmp sgt i32 %20, 0
  br i1 %43, label %44, label %53, !prof !1017

44:                                               ; preds = %42
  %45 = zext nneg i32 %20 to i64
  br label %46

46:                                               ; preds = %44, %46
  %47 = phi i64 [ 0, %44 ], [ %51, %46 ]
  %48 = trunc i64 %47 to i32
  %49 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %48) #19
  %50 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %47
  store ptr %49, ptr %50, align 8, !tbaa !458
  %51 = add nuw nsw i64 %47, 1
  %52 = icmp eq i64 %51, %45
  br i1 %52, label %53, label %46, !prof !1018, !llvm.loop !1019

53:                                               ; preds = %46, %42
  %54 = call fastcc ptr @fold_builtin_n(i32 noundef %5, ptr noundef nonnull %4, ptr noundef nonnull %3, i32 noundef %20, i8 noundef zeroext %1) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %59, !prof !1020

56:                                               ; preds = %40, %53
  %57 = tail call fastcc ptr @gimple_fold_builtin_varargs(ptr noundef nonnull %4, ptr noundef %0) #19
  %58 = icmp eq ptr %57, null
  br i1 %58, label %86, label %59, !prof !613

59:                                               ; preds = %53, %56
  %60 = phi ptr [ %57, %56 ], [ %54, %53 ]
  %61 = tail call fastcc zeroext i8 @gimple_has_location(ptr noundef %0) #19, !range !451
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %86, label %63, !prof !1021

63:                                               ; preds = %59
  %64 = load i64, ptr %60, align 8
  %65 = and i64 %64, 65535
  %66 = icmp eq i64 %65, 116
  br i1 %66, label %67, label %74, !prof !1022

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.tree_exp, ptr %60, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !462
  %70 = icmp eq ptr %69, null
  br i1 %70, label %86, label %71, !prof !1023

71:                                               ; preds = %67
  %72 = load i64, ptr %69, align 8
  %73 = and i64 %72, 65535
  br label %74

74:                                               ; preds = %71, %63
  %75 = phi i64 [ %73, %71 ], [ %65, %63 ]
  %76 = phi ptr [ %69, %71 ], [ %60, %63 ]
  %77 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %75
  %78 = load i32, ptr %77, align 4, !tbaa !469
  %79 = add i32 %78, -4
  %80 = icmp ult i32 %79, 7
  br i1 %80, label %81, label %86, !prof !1024

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.tree_exp, ptr %76, i64 0, i32 1
  %83 = load i32, ptr %82, align 8, !tbaa !462
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86, !prof !1025

85:                                               ; preds = %81
  store i32 %5, ptr %82, align 8, !tbaa !462
  br label %86

86:                                               ; preds = %59, %67, %74, %81, %85, %19, %36, %2, %7, %11, %16, %56
  %87 = phi ptr [ null, %56 ], [ null, %16 ], [ null, %11 ], [ null, %7 ], [ null, %2 ], [ %60, %59 ], [ null, %67 ], [ %76, %74 ], [ %76, %81 ], [ %76, %85 ], [ null, %19 ], [ %39, %36 ]
  ret ptr %87
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #3 !prof !1009 !PGOFuncName !1026 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #19
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !1027

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !462
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_call_va_arg_pack_p(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !983 !PGOFuncName !1028 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 20
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @gimple_fold_builtin_varargs(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #3 !prof !1029 !PGOFuncName !1030 {
  %3 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 2047
  switch i32 %5, label %19 [
    i32 539, label %6
    i32 541, label %6
    i32 538, label %8
    i32 540, label %8
  ], !prof !1031

6:                                                ; preds = %2, %2
  %7 = tail call fastcc ptr @gimple_fold_builtin_sprintf_chk(ptr noundef %1, i32 noundef %5) #19
  br label %10

8:                                                ; preds = %2, %2
  %9 = tail call ptr @gimple_fold_builtin_snprintf_chk(ptr noundef %1, ptr noundef null, i32 noundef %5) #19
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi ptr [ %9, %8 ], [ %7, %6 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13, !prof !1032

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !462
  %16 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef %15, ptr noundef nonnull %11) #21
  %17 = load i64, ptr %16, align 8
  %18 = or i64 %17, 8388608
  store i64 %18, ptr %16, align 8
  br label %19

19:                                               ; preds = %2, %10, %13
  %20 = phi ptr [ %16, %13 ], [ null, %10 ], [ null, %2 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_location(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !1033 !PGOFuncName !1034 {
  %2 = tail call fastcc i32 @gimple_location(ptr noundef %0) #19
  %3 = icmp ne i32 %2, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #3 !prof !1009 !PGOFuncName !1035 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_fold_builtin_sprintf_chk(ptr noundef %0, i32 noundef %1) unnamed_addr #3 !prof !449 !PGOFuncName !1036 {
  %3 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #19
  %4 = icmp slt i32 %3, 4
  br i1 %4, label %90, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #19
  %7 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %6, i32 noundef 10) #19, !range !451
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %90, label %9

9:                                                ; preds = %5
  %10 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 1) #19
  %11 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %10, i32 noundef 8) #19, !range !451
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %90, label %13

13:                                               ; preds = %9
  %14 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 2) #19
  %15 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %14, i32 noundef 8) #19, !range !451
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %90, label %17

17:                                               ; preds = %13
  %18 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 3) #19
  %19 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %18, i32 noundef 10) #19, !range !451
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %90, label %21

21:                                               ; preds = %17
  %22 = tail call i32 @host_integerp(ptr noundef %14, i32 noundef 1) #21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %90, label %24

24:                                               ; preds = %21
  %25 = tail call fastcc zeroext i8 @init_target_chars() #19, !range !451
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %90, label %27

27:                                               ; preds = %24
  %28 = tail call fastcc ptr @c_getstr(ptr noundef %18) #19
  %29 = icmp eq ptr %28, null
  br i1 %29, label %61, label %30

30:                                               ; preds = %27
  %31 = load i64, ptr @target_percent, align 8, !tbaa !453
  %32 = trunc i64 %31 to i32
  %33 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %28, i32 noundef %32) #19
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = icmp ne i32 %1, 539
  %37 = icmp eq i32 %3, 4
  %38 = or i1 %36, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %35
  %40 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !458
  %41 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %28) #19
  %42 = tail call ptr @build_int_cstu(ptr noundef %40, i64 noundef %41) #21
  br label %61

43:                                               ; preds = %30
  %44 = icmp eq i32 %1, 539
  br i1 %44, label %45, label %61

45:                                               ; preds = %43
  %46 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(1) @target_percent_s) #19
  %47 = icmp eq i32 %46, 0
  %48 = icmp eq i32 %3, 5
  %49 = and i1 %48, %47
  br i1 %49, label %50, label %61

50:                                               ; preds = %45
  %51 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 4) #19
  %52 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %51, i32 noundef 10) #19, !range !451
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %50
  %55 = tail call ptr @c_strlen(ptr noundef %51, i32 noundef 1) #19
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = tail call i32 @host_integerp(ptr noundef nonnull %55, i32 noundef 1) #21
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57, %54
  br label %61

61:                                               ; preds = %57, %60, %50, %35, %39, %45, %43, %27
  %62 = phi ptr [ %42, %39 ], [ null, %35 ], [ null, %45 ], [ null, %43 ], [ null, %27 ], [ %55, %57 ], [ null, %60 ], [ null, %50 ]
  %63 = tail call i32 @integer_all_onesp(ptr noundef %14) #21
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = icmp eq ptr %62, null
  br i1 %66, label %90, label %67

67:                                               ; preds = %65
  %68 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %62, ptr noundef %14) #21
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %90, label %70

70:                                               ; preds = %67, %61
  %71 = tail call i32 @integer_zerop(ptr noundef %10) #21
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  br i1 %29, label %90, label %74

74:                                               ; preds = %73
  %75 = load i64, ptr @target_percent, align 8, !tbaa !453
  %76 = trunc i64 %75 to i32
  %77 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %28, i32 noundef %76) #19
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(1) @target_percent_s) #19
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %74, %79, %70
  %83 = icmp eq i32 %1, 541
  %84 = select i1 %83, i64 380, i64 373
  %85 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !458
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %82
  %89 = tail call ptr (ptr, i32, ptr, i32, ...) @gimple_rewrite_call_expr(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %86, i32 noundef 2, ptr noundef %6, ptr noundef %18) #19
  br label %90

90:                                               ; preds = %82, %79, %73, %65, %67, %24, %21, %17, %13, %9, %5, %2, %88
  %91 = phi ptr [ %89, %88 ], [ null, %2 ], [ null, %5 ], [ null, %9 ], [ null, %13 ], [ null, %17 ], [ null, %21 ], [ null, %24 ], [ null, %67 ], [ null, %65 ], [ null, %73 ], [ null, %79 ], [ null, %82 ]
  ret ptr %91
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @set_builtin_user_assembler_name(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #3 !prof !449 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 29
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 6144
  %10 = icmp eq i32 %9, 6144
  %11 = icmp ne ptr %1, null
  %12 = and i1 %11, %10
  br i1 %12, label %16, label %13

13:                                               ; preds = %6, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.721, i32 noundef 13869, ptr noundef nonnull @.str.722) #21
  %14 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %15 = load i32, ptr %14, align 8
  br label %16

16:                                               ; preds = %6, %13
  %17 = phi i32 [ %8, %6 ], [ %15, %13 ]
  %18 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %19 = and i32 %17, 2047
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !458
  tail call void @set_user_assembler_name(ptr noundef %22, ptr noundef %1) #21
  %23 = load i32, ptr %18, align 8
  %24 = and i32 %23, 2047
  switch i32 %24, label %35 [
    i32 330, label %25
    i32 333, label %27
    i32 331, label %29
    i32 329, label %31
    i32 412, label %33
  ]

25:                                               ; preds = %16
  tail call void @init_block_move_fn(ptr noundef %1) #21
  %26 = tail call ptr @set_user_assembler_libfunc(ptr noundef nonnull @.str.737, ptr noundef %1) #21
  store ptr %26, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 1), align 8, !tbaa !458
  br label %35

27:                                               ; preds = %16
  tail call void @init_block_clear_fn(ptr noundef %1) #21
  %28 = tail call ptr @set_user_assembler_libfunc(ptr noundef nonnull @.str.738, ptr noundef %1) #21
  store ptr %28, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 4), align 16, !tbaa !458
  br label %35

29:                                               ; preds = %16
  %30 = tail call ptr @set_user_assembler_libfunc(ptr noundef nonnull @.str.739, ptr noundef %1) #21
  store ptr %30, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 2), align 16, !tbaa !458
  br label %35

31:                                               ; preds = %16
  %32 = tail call ptr @set_user_assembler_libfunc(ptr noundef nonnull @.str.740, ptr noundef %1) #21
  store ptr %32, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 3), align 8, !tbaa !458
  br label %35

33:                                               ; preds = %16
  %34 = tail call ptr @set_user_assembler_libfunc(ptr noundef nonnull @.str.741, ptr noundef %1) #21
  store ptr %34, ptr @libfunc_table, align 16, !tbaa !458
  br label %35

35:                                               ; preds = %16, %33, %31, %29, %27, %25
  ret void
}

; Function Attrs: optsize
declare void @set_user_assembler_name(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @init_block_move_fn(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @set_user_assembler_libfunc(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @init_block_clear_fn(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #18

attributes #0 = { mustprogress nofree noinline nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nofree noinline nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { optsize }
attributes #20 = { nounwind }
attributes #21 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!446}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445}
!36 = !{ptr @is_builtin_name, ptr @strncmp, i64 111}
!37 = !{ptr @get_object_alignment, ptr @handled_component_p, i64 200989}
!38 = !{ptr @get_object_alignment, ptr @get_inner_reference, i64 200758}
!39 = !{ptr @get_object_alignment, ptr @host_integerp, i64 33706}
!40 = !{ptr @get_object_alignment, ptr @tree_low_cst, i64 14712}
!41 = !{ptr @get_object_alignment, ptr @ix86_constant_alignment, i64 833}
!42 = !{ptr @get_pointer_alignment, ptr @can_trust_pointer_alignment, i64 1197}
!43 = !{ptr @get_pointer_alignment, ptr @host_integerp, i64 93}
!44 = !{ptr @get_pointer_alignment, ptr @tree_low_cst, i64 16}
!45 = !{ptr @get_pointer_alignment, ptr @get_object_alignment, i64 478}
!46 = !{ptr @c_strlen, ptr @tree_strip_nop_conversions, i64 9662}
!47 = !{ptr @c_strlen, ptr @c_strlen, i64 41}
!48 = !{ptr @c_strlen, ptr @tree_int_cst_equal, i64 20}
!49 = !{ptr @c_strlen, ptr @string_constant, i64 9649}
!50 = !{ptr @c_strlen, ptr @size_int_kind, i64 2940}
!51 = !{ptr @c_strlen, ptr @size_diffop_loc, i64 1}
!52 = !{ptr @c_strlen, ptr @host_integerp, i64 2940}
!53 = !{ptr @c_strlen, ptr @tree_low_cst, i64 2939}
!54 = !{ptr @c_strlen, ptr @warning_at, i64 1}
!55 = !{ptr @c_strlen, ptr @strlen, i64 2939}
!56 = !{ptr @builtin_strncpy_read_str, ptr @strlen, i64 4}
!57 = !{ptr @builtin_strncpy_read_str, ptr @c_readstr, i64 3}
!58 = !{ptr @c_readstr, ptr @fancy_abort, i64 2}
!59 = !{ptr @c_readstr, ptr @immed_double_const, i64 4}
!60 = !{ptr @std_gimplify_va_arg_expr, ptr @vector_type_mode, i64 2}
!61 = !{ptr @std_gimplify_va_arg_expr, ptr @pass_by_reference, i64 51}
!62 = !{ptr @std_gimplify_va_arg_expr, ptr @build_pointer_type, i64 52}
!63 = !{ptr @std_gimplify_va_arg_expr, ptr @ix86_function_arg_boundary, i64 51}
!64 = !{ptr @std_gimplify_va_arg_expr, ptr @get_initialized_tmp_var, i64 51}
!65 = !{ptr @std_gimplify_va_arg_expr, ptr @integer_zerop, i64 1}
!66 = !{ptr @std_gimplify_va_arg_expr, ptr @build_variant_type_copy, i64 6}
!67 = !{ptr @std_gimplify_va_arg_expr, ptr @size_in_bytes, i64 51}
!68 = !{ptr @std_gimplify_va_arg_expr, ptr @round_up_loc, i64 51}
!69 = !{ptr @std_gimplify_va_arg_expr, ptr @gimplify_expr, i64 51}
!70 = !{ptr @std_gimplify_va_arg_expr, ptr @build2_stat, i64 102}
!71 = !{ptr @std_gimplify_va_arg_expr, ptr @gimplify_and_add, i64 51}
!72 = !{ptr @std_gimplify_va_arg_expr, ptr @fold_convert_loc, i64 51}
!73 = !{ptr @std_gimplify_va_arg_expr, ptr @build_va_arg_indirect_ref, i64 52}
!74 = !{ptr @build_va_arg_indirect_ref, ptr @build_fold_indirect_ref_loc, i64 51}
!75 = !{ptr @build_va_arg_indirect_ref, ptr @mf_mark, i64 1}
!76 = !{ptr @gimplify_va_arg_expr, ptr @error_at, i64 1}
!77 = !{ptr @gimplify_va_arg_expr, ptr @warning_at, i64 1}
!78 = !{ptr @gimplify_va_arg_expr, ptr @inform, i64 1}
!79 = !{ptr @gimplify_va_arg_expr, ptr @gimplify_and_add, i64 2}
!80 = !{ptr @gimplify_va_arg_expr, ptr @build_call_expr_loc, i64 1}
!81 = !{ptr @gimplify_va_arg_expr, ptr @dummy_object, i64 1}
!82 = !{ptr @gimplify_va_arg_expr, ptr @gimplify_expr, i64 48}
!83 = !{ptr @build_call_expr_loc, ptr @build_pointer_type, i64 5273}
!84 = !{ptr @build_call_expr_loc, ptr @build1_stat, i64 5273}
!85 = !{ptr @build_call_expr_loc, ptr @fold_builtin_call_array, i64 5273}
!86 = !{ptr @build_string_literal, ptr @build_string, i64 4}
!87 = !{ptr @build_string_literal, ptr @build_qualified_type, i64 4}
!88 = !{ptr @build_string_literal, ptr @size_int_kind, i64 4}
!89 = !{ptr @build_string_literal, ptr @build_index_type, i64 4}
!90 = !{ptr @build_string_literal, ptr @build_array_type, i64 4}
!91 = !{ptr @build_string_literal, ptr @build_pointer_type, i64 4}
!92 = !{ptr @build_string_literal, ptr @build4_stat, i64 4}
!93 = !{ptr @build_string_literal, ptr @build1_stat, i64 4}
!94 = !{ptr @expand_builtin, ptr @get_callee_fndecl, i64 11410}
!95 = !{ptr @expand_builtin, ptr @vector_type_mode, i64 1}
!96 = !{ptr @expand_builtin, ptr @called_as_built_in, i64 1}
!97 = !{ptr @expand_builtin, ptr @first_call_expr_arg, i64 3}
!98 = !{ptr @expand_builtin, ptr @next_call_expr_arg, i64 47}
!99 = !{ptr @expand_builtin, ptr @expand_expr, i64 27}
!100 = !{ptr @expand_builtin, ptr @expand_call, i64 11408}
!101 = !{ptr @builtin_mathfn_code, ptr @get_callee_fndecl, i64 10515}
!102 = !{ptr @builtin_mathfn_code, ptr @init_const_call_expr_arg_iterator, i64 106}
!103 = !{ptr @builtin_mathfn_code, ptr @more_const_call_expr_args_p, i64 211}
!104 = !{ptr @builtin_mathfn_code, ptr @next_const_call_expr_arg, i64 109}
!105 = !{ptr @fold_builtin_strcpy, ptr @validate_arg, i64 381}
!106 = !{ptr @fold_builtin_strcpy, ptr @operand_equal_p, i64 189}
!107 = !{ptr @fold_builtin_strcpy, ptr @fold_convert_loc, i64 49}
!108 = !{ptr @fold_builtin_strcpy, ptr @optimize_function_for_size_p, i64 188}
!109 = !{ptr @fold_builtin_strcpy, ptr @c_strlen, i64 183}
!110 = !{ptr @fold_builtin_strcpy, ptr @size_int_kind, i64 48}
!111 = !{ptr @fold_builtin_strcpy, ptr @size_binop_loc, i64 48}
!112 = !{ptr @fold_builtin_strcpy, ptr @build_call_expr_loc, i64 48}
!113 = !{ptr @fold_builtin_strncpy, ptr @validate_arg, i64 111}
!114 = !{ptr @fold_builtin_strncpy, ptr @integer_zerop, i64 35}
!115 = !{ptr @fold_builtin_strncpy, ptr @omit_one_operand_loc, i64 1}
!116 = !{ptr @fold_builtin_strncpy, ptr @c_strlen, i64 5}
!117 = !{ptr @fold_call_expr, ptr @get_callee_fndecl, i64 279844}
!118 = !{ptr @fold_call_expr, ptr @avoid_folding_inline_builtin, i64 31976}
!119 = !{ptr @fold_call_expr, ptr @call_expr_arglist, i64 1}
!120 = !{ptr @fold_call_expr, ptr @fold_builtin_n, i64 31448}
!121 = !{ptr @fold_call_expr, ptr @fold_builtin_varargs, i64 27460}
!122 = !{ptr @fold_builtin_n, ptr @fold_builtin_0, i64 6856}
!123 = !{ptr @fold_builtin_n, ptr @fold_builtin_1, i64 16285}
!124 = !{ptr @fold_builtin_n, ptr @fold_builtin_2, i64 16619}
!125 = !{ptr @fold_builtin_n, ptr @fold_builtin_3, i64 14633}
!126 = !{ptr @fold_builtin_n, ptr @fold_builtin_4, i64 8331}
!127 = !{ptr @fold_builtin_n, ptr @build1_stat, i64 4796}
!128 = !{ptr @fold_builtin_varargs, ptr @fold_builtin_sprintf_chk, i64 2}
!129 = !{ptr @fold_builtin_varargs, ptr @fold_builtin_snprintf_chk, i64 2}
!130 = !{ptr @fold_builtin_varargs, ptr @fold_builtin_fpclassify, i64 1}
!131 = !{ptr @fold_builtin_varargs, ptr @build1_stat, i64 1}
!132 = !{ptr @fold_builtin_0, ptr @fold_builtin_inf, i64 10}
!133 = !{ptr @fold_builtin_0, ptr @fold_builtin_classify_type, i64 1}
!134 = !{ptr @fold_builtin_1, ptr @fold_builtin_constant_p, i64 44}
!135 = !{ptr @fold_builtin_1, ptr @fold_builtin_classify_type, i64 1}
!136 = !{ptr @fold_builtin_1, ptr @fold_builtin_strlen, i64 6156}
!137 = !{ptr @fold_builtin_1, ptr @fold_builtin_fabs, i64 3}
!138 = !{ptr @fold_builtin_1, ptr @fold_builtin_abs, i64 10}
!139 = !{ptr @fold_builtin_1, ptr @validate_arg, i64 9}
!140 = !{ptr @fold_builtin_1, ptr @fold_build1_stat_loc, i64 3}
!141 = !{ptr @fold_builtin_1, ptr @non_lvalue_loc, i64 2}
!142 = !{ptr @fold_builtin_1, ptr @fold_builtin_carg, i64 3}
!143 = !{ptr @fold_builtin_1, ptr @fold_builtin_nan, i64 10}
!144 = !{ptr @fold_builtin_1, ptr @fold_builtin_floor, i64 3}
!145 = !{ptr @fold_builtin_1, ptr @fold_builtin_ceil, i64 3}
!146 = !{ptr @fold_builtin_1, ptr @fold_builtin_trunc, i64 3}
!147 = !{ptr @fold_builtin_1, ptr @fold_builtin_round, i64 3}
!148 = !{ptr @fold_builtin_1, ptr @fold_trunc_transparent_mathfn, i64 6}
!149 = !{ptr @fold_builtin_1, ptr @fold_builtin_int_roundingfn, i64 18}
!150 = !{ptr @fold_builtin_1, ptr @fold_fixed_mathfn, i64 6}
!151 = !{ptr @fold_builtin_1, ptr @fold_builtin_bswap, i64 29}
!152 = !{ptr @fold_builtin_1, ptr @fold_builtin_bitop, i64 375}
!153 = !{ptr @fold_builtin_1, ptr @fold_builtin_signbit, i64 3}
!154 = !{ptr @fold_builtin_1, ptr @fold_builtin_significand, i64 3}
!155 = !{ptr @fold_builtin_1, ptr @fold_builtin_logb, i64 6}
!156 = !{ptr @fold_builtin_1, ptr @fold_builtin_isascii, i64 1}
!157 = !{ptr @fold_builtin_1, ptr @fold_builtin_toascii, i64 1}
!158 = !{ptr @fold_builtin_1, ptr @fold_builtin_isdigit, i64 1}
!159 = !{ptr @fold_builtin_1, ptr @fold_builtin_classify, i64 20}
!160 = !{ptr @fold_builtin_1, ptr @fold_builtin_interclass_mathfn, i64 6}
!161 = !{ptr @fold_builtin_1, ptr @fold_builtin_printf, i64 11}
!162 = !{ptr @fold_builtin_2, ptr @fold_builtin_load_exponent, i64 45}
!163 = !{ptr @fold_builtin_2, ptr @fold_builtin_frexp, i64 10}
!164 = !{ptr @fold_builtin_2, ptr @fold_builtin_modf, i64 3}
!165 = !{ptr @fold_builtin_2, ptr @fold_builtin_bzero, i64 1}
!166 = !{ptr @fold_builtin_2, ptr @fold_builtin_fputs, i64 2839}
!167 = !{ptr @fold_builtin_2, ptr @fold_builtin_strstr, i64 195}
!168 = !{ptr @fold_builtin_2, ptr @fold_builtin_strcat, i64 67}
!169 = !{ptr @fold_builtin_2, ptr @fold_builtin_strspn, i64 37}
!170 = !{ptr @fold_builtin_2, ptr @fold_builtin_strcspn, i64 53}
!171 = !{ptr @fold_builtin_2, ptr @fold_builtin_strchr, i64 3545}
!172 = !{ptr @fold_builtin_2, ptr @fold_builtin_strrchr, i64 47}
!173 = !{ptr @fold_builtin_2, ptr @fold_builtin_strcpy, i64 189}
!174 = !{ptr @fold_builtin_2, ptr @fold_builtin_strcmp, i64 4152}
!175 = !{ptr @fold_builtin_2, ptr @fold_builtin_strpbrk, i64 83}
!176 = !{ptr @fold_builtin_2, ptr @fold_builtin_expect, i64 54}
!177 = !{ptr @fold_builtin_2, ptr @fold_builtin_powi, i64 3}
!178 = !{ptr @fold_builtin_2, ptr @fold_builtin_copysign, i64 3}
!179 = !{ptr @fold_builtin_2, ptr @fold_builtin_unordered_cmp, i64 6}
!180 = !{ptr @fold_builtin_2, ptr @fold_builtin_sprintf, i64 13}
!181 = !{ptr @fold_builtin_2, ptr @fold_builtin_object_size, i64 1}
!182 = !{ptr @fold_builtin_2, ptr @fold_builtin_printf, i64 37}
!183 = !{ptr @fold_builtin_2, ptr @validate_arg, i64 2}
!184 = !{ptr @fold_builtin_2, ptr @fold_builtin_fprintf, i64 1620}
!185 = !{ptr @fold_builtin_3, ptr @fold_builtin_memset, i64 4081}
!186 = !{ptr @fold_builtin_3, ptr @fold_builtin_memory_op, i64 2747}
!187 = !{ptr @fold_builtin_3, ptr @fold_builtin_strncat, i64 9}
!188 = !{ptr @fold_builtin_3, ptr @fold_builtin_strncpy, i64 39}
!189 = !{ptr @fold_builtin_3, ptr @fold_builtin_strncmp, i64 1678}
!190 = !{ptr @fold_builtin_3, ptr @fold_builtin_memchr, i64 1}
!191 = !{ptr @fold_builtin_3, ptr @fold_builtin_memcmp, i64 709}
!192 = !{ptr @fold_builtin_3, ptr @fold_builtin_sprintf, i64 855}
!193 = !{ptr @fold_builtin_3, ptr @fold_builtin_stxcpy_chk, i64 2}
!194 = !{ptr @fold_builtin_3, ptr @fold_builtin_strcat_chk, i64 1}
!195 = !{ptr @fold_builtin_3, ptr @validate_arg, i64 4}
!196 = !{ptr @fold_builtin_3, ptr @fold_builtin_printf, i64 1}
!197 = !{ptr @fold_builtin_3, ptr @fold_builtin_fprintf, i64 4436}
!198 = !{ptr @fold_builtin_4, ptr @fold_builtin_memory_chk, i64 4}
!199 = !{ptr @fold_builtin_4, ptr @fold_builtin_strncpy_chk, i64 1}
!200 = !{ptr @fold_builtin_4, ptr @fold_builtin_strncat_chk, i64 1}
!201 = !{ptr @fold_builtin_4, ptr @validate_arg, i64 2}
!202 = !{ptr @fold_builtin_4, ptr @fold_builtin_fprintf, i64 1}
!203 = !{ptr @fold_builtin_inf, ptr @real_inf, i64 1}
!204 = !{ptr @fold_builtin_inf, ptr @build_real, i64 1}
!205 = !{ptr @fold_builtin_constant_p, ptr @tree_strip_nop_conversions, i64 44}
!206 = !{ptr @fold_builtin_constant_p, ptr @integer_zerop, i64 1}
!207 = !{ptr @fold_builtin_strlen, ptr @validate_arg, i64 6257}
!208 = !{ptr @fold_builtin_strlen, ptr @c_strlen, i64 6256}
!209 = !{ptr @fold_builtin_strlen, ptr @fold_convert_loc, i64 1615}
!210 = !{ptr @fold_builtin_abs, ptr @validate_arg, i64 6}
!211 = !{ptr @fold_builtin_abs, ptr @fold_convert_loc, i64 5}
!212 = !{ptr @fold_builtin_abs, ptr @fold_abs_const, i64 1}
!213 = !{ptr @fold_builtin_abs, ptr @fold_build1_stat_loc, i64 5}
!214 = !{ptr @fold_builtin_nan, ptr @validate_arg, i64 1}
!215 = !{ptr @fold_builtin_nan, ptr @c_getstr, i64 1}
!216 = !{ptr @fold_builtin_bswap, ptr @validate_arg, i64 27}
!217 = !{ptr @fold_builtin_bitop, ptr @validate_arg, i64 366}
!218 = !{ptr @fold_builtin_bitop, ptr @exact_log2, i64 2}
!219 = !{ptr @fold_builtin_bitop, ptr @floor_log2, i64 21}
!220 = !{ptr @fold_builtin_bitop, ptr @build_int_cst, i64 32}
!221 = !{ptr @fold_builtin_printf, ptr @validate_arg, i64 33}
!222 = !{ptr @fold_builtin_printf, ptr @c_getstr, i64 32}
!223 = !{ptr @fold_builtin_printf, ptr @init_target_chars, i64 29}
!224 = !{ptr @fold_builtin_printf, ptr @strcmp, i64 43}
!225 = !{ptr @fold_builtin_printf, ptr @strchr, i64 27}
!226 = !{ptr @fold_builtin_printf, ptr @build_int_cst, i64 1}
!227 = !{ptr @fold_builtin_printf, ptr @strlen, i64 2}
!228 = !{ptr @fold_builtin_printf, ptr @build_string_literal, i64 2}
!229 = !{ptr @fold_builtin_printf, ptr @build_call_expr_loc, i64 2}
!230 = !{ptr @fold_builtin_printf, ptr @fold_convert_loc, i64 1}
!231 = !{ptr @builtin_save_expr, ptr @save_expr, i64 135}
!232 = !{ptr @c_getstr, ptr @string_constant, i64 19688}
!233 = !{ptr @c_getstr, ptr @host_integerp, i64 9938}
!234 = !{ptr @c_getstr, ptr @compare_tree_int, i64 9937}
!235 = !{ptr @c_getstr, ptr @tree_low_cst, i64 9936}
!236 = !{ptr @fold_builtin_load_exponent, ptr @validate_arg, i64 71}
!237 = !{ptr @fold_builtin_load_exponent, ptr @tree_strip_nop_conversions, i64 68}
!238 = !{ptr @fold_builtin_load_exponent, ptr @real_zerop, i64 34}
!239 = !{ptr @fold_builtin_load_exponent, ptr @integer_zerop, i64 33}
!240 = !{ptr @fold_builtin_load_exponent, ptr @real_isfinite, i64 7}
!241 = !{ptr @fold_builtin_load_exponent, ptr @omit_one_operand_loc, i64 3}
!242 = !{ptr @fold_builtin_load_exponent, ptr @host_integerp, i64 6}
!243 = !{ptr @fold_builtin_load_exponent, ptr @tree_low_cst, i64 1}
!244 = !{ptr @fold_builtin_frexp, ptr @validate_arg, i64 13}
!245 = !{ptr @fold_builtin_frexp, ptr @tree_strip_nop_conversions, i64 6}
!246 = !{ptr @fold_builtin_fputs, ptr @validate_arg, i64 4133}
!247 = !{ptr @fold_builtin_fputs, ptr @c_strlen, i64 2064}
!248 = !{ptr @fold_builtin_fputs, ptr @compare_tree_int, i64 1153}
!249 = !{ptr @fold_builtin_fputs, ptr @omit_one_operand_loc, i64 4}
!250 = !{ptr @fold_builtin_fputs, ptr @c_getstr, i64 237}
!251 = !{ptr @fold_builtin_fputs, ptr @build_int_cst, i64 235}
!252 = !{ptr @fold_builtin_fputs, ptr @build_call_expr_loc, i64 1145}
!253 = !{ptr @fold_builtin_fputs, ptr @optimize_function_for_size_p, i64 912}
!254 = !{ptr @fold_builtin_fputs, ptr @fancy_abort, i64 1}
!255 = !{ptr @fold_builtin_strstr, ptr @validate_arg, i64 389}
!256 = !{ptr @fold_builtin_strstr, ptr @c_getstr, i64 367}
!257 = !{ptr @fold_builtin_strstr, ptr @strstr, i64 1}
!258 = !{ptr @fold_builtin_strstr, ptr @size_int_kind, i64 1}
!259 = !{ptr @fold_builtin_strstr, ptr @fold_build2_stat_loc, i64 1}
!260 = !{ptr @fold_builtin_strstr, ptr @fold_convert_loc, i64 2}
!261 = !{ptr @fold_builtin_strstr, ptr @build_int_cst, i64 1}
!262 = !{ptr @fold_builtin_strstr, ptr @build_call_expr_loc, i64 1}
!263 = !{ptr @fold_builtin_strcat, ptr @validate_arg, i64 131}
!264 = !{ptr @fold_builtin_strcat, ptr @c_getstr, i64 64}
!265 = !{ptr @fold_builtin_strcat, ptr @optimize_insn_for_speed_p, i64 63}
!266 = !{ptr @fold_builtin_strcat, ptr @c_strlen, i64 39}
!267 = !{ptr @fold_builtin_strcat, ptr @builtin_save_expr, i64 22}
!268 = !{ptr @fold_builtin_strcat, ptr @build_call_expr_loc, i64 22}
!269 = !{ptr @fold_builtin_strcat, ptr @fold_build2_stat_loc, i64 11}
!270 = !{ptr @fold_builtin_strcat, ptr @build2_stat, i64 11}
!271 = !{ptr @fold_builtin_strspn, ptr @validate_arg, i64 71}
!272 = !{ptr @fold_builtin_strspn, ptr @c_getstr, i64 68}
!273 = !{ptr @fold_builtin_strspn, ptr @omit_two_operands_loc, i64 1}
!274 = !{ptr @fold_builtin_strcspn, ptr @validate_arg, i64 103}
!275 = !{ptr @fold_builtin_strcspn, ptr @c_getstr, i64 100}
!276 = !{ptr @fold_builtin_strcspn, ptr @build_call_expr_loc, i64 1}
!277 = !{ptr @fold_builtin_strchr, ptr @validate_arg, i64 7125}
!278 = !{ptr @fold_builtin_strchr, ptr @c_getstr, i64 832}
!279 = !{ptr @fold_builtin_strchr, ptr @target_char_cast, i64 19}
!280 = !{ptr @fold_builtin_strchr, ptr @strchr, i64 18}
!281 = !{ptr @fold_builtin_strchr, ptr @build_int_cst, i64 5}
!282 = !{ptr @fold_builtin_strchr, ptr @size_int_kind, i64 14}
!283 = !{ptr @fold_builtin_strchr, ptr @fold_build2_stat_loc, i64 14}
!284 = !{ptr @fold_builtin_strchr, ptr @fold_convert_loc, i64 14}
!285 = !{ptr @fold_builtin_strrchr, ptr @validate_arg, i64 89}
!286 = !{ptr @fold_builtin_strrchr, ptr @c_getstr, i64 19}
!287 = !{ptr @fold_builtin_strrchr, ptr @target_char_cast, i64 1}
!288 = !{ptr @fold_builtin_strrchr, ptr @integer_zerop, i64 18}
!289 = !{ptr @fold_builtin_strrchr, ptr @build_call_expr_loc, i64 1}
!290 = !{ptr @fold_builtin_strcmp, ptr @validate_arg, i64 8347}
!291 = !{ptr @fold_builtin_strcmp, ptr @operand_equal_p, i64 4172}
!292 = !{ptr @fold_builtin_strcmp, ptr @c_getstr, i64 8332}
!293 = !{ptr @fold_builtin_strcmp, ptr @strcmp, i64 13}
!294 = !{ptr @fold_builtin_strcmp, ptr @build_qualified_type, i64 2}
!295 = !{ptr @fold_builtin_strcmp, ptr @build_pointer_type_for_mode, i64 2}
!296 = !{ptr @fold_builtin_strcmp, ptr @fold_convert_loc, i64 4}
!297 = !{ptr @fold_builtin_strcmp, ptr @build1_stat, i64 2}
!298 = !{ptr @fold_builtin_strcmp, ptr @fold_build1_stat_loc, i64 1}
!299 = !{ptr @fold_builtin_strpbrk, ptr @validate_arg, i64 163}
!300 = !{ptr @fold_builtin_strpbrk, ptr @c_getstr, i64 81}
!301 = !{ptr @fold_builtin_strpbrk, ptr @strpbrk, i64 1}
!302 = !{ptr @fold_builtin_expect, ptr @get_callee_fndecl, i64 1}
!303 = !{ptr @fold_builtin_expect, ptr @build_builtin_expect_predicate, i64 6}
!304 = !{ptr @fold_builtin_expect, ptr @build2_stat, i64 3}
!305 = !{ptr @fold_builtin_expect, ptr @fold_convert_loc, i64 3}
!306 = !{ptr @fold_builtin_expect, ptr @tree_strip_nop_conversions, i64 1}
!307 = !{ptr @fold_builtin_sprintf, ptr @validate_arg, i64 2588}
!308 = !{ptr @fold_builtin_sprintf, ptr @c_getstr, i64 211}
!309 = !{ptr @fold_builtin_sprintf, ptr @init_target_chars, i64 169}
!310 = !{ptr @fold_builtin_sprintf, ptr @strchr, i64 168}
!311 = !{ptr @fold_builtin_sprintf, ptr @build_call_expr_loc, i64 16}
!312 = !{ptr @fold_builtin_sprintf, ptr @strlen, i64 7}
!313 = !{ptr @fold_builtin_sprintf, ptr @build_int_cst, i64 7}
!314 = !{ptr @fold_builtin_sprintf, ptr @strcmp, i64 158}
!315 = !{ptr @fold_builtin_sprintf, ptr @c_strlen, i64 12}
!316 = !{ptr @fold_builtin_sprintf, ptr @fold_convert_loc, i64 15}
!317 = !{ptr @fold_builtin_sprintf, ptr @build2_stat, i64 15}
!318 = !{ptr @fold_builtin_fprintf, ptr @validate_arg, i64 9080}
!319 = !{ptr @fold_builtin_fprintf, ptr @c_getstr, i64 4534}
!320 = !{ptr @fold_builtin_fprintf, ptr @init_target_chars, i64 3793}
!321 = !{ptr @fold_builtin_fprintf, ptr @strchr, i64 3792}
!322 = !{ptr @fold_builtin_fprintf, ptr @build_call_expr_loc, i64 648}
!323 = !{ptr @fold_builtin_fprintf, ptr @strcmp, i64 1979}
!324 = !{ptr @fold_builtin_fprintf, ptr @fold_convert_loc, i64 361}
!325 = !{ptr @fold_builtin_memset, ptr @validate_arg, i64 12264}
!326 = !{ptr @fold_builtin_memset, ptr @host_integerp, i64 7236}
!327 = !{ptr @fold_builtin_memset, ptr @integer_zerop, i64 3155}
!328 = !{ptr @fold_builtin_memset, ptr @omit_one_operand_loc, i64 4}
!329 = !{ptr @fold_builtin_memset, ptr @tree_strip_nop_conversions, i64 3134}
!330 = !{ptr @fold_builtin_memset, ptr @var_decl_component_p, i64 208}
!331 = !{ptr @fold_builtin_memset, ptr @tree_low_cst, i64 198}
!332 = !{ptr @fold_builtin_memset, ptr @vector_type_mode, i64 1}
!333 = !{ptr @fold_builtin_memset, ptr @get_pointer_alignment, i64 4}
!334 = !{ptr @fold_builtin_memset, ptr @build_int_cst_type, i64 3}
!335 = !{ptr @fold_builtin_memset, ptr @build_pointer_type, i64 3}
!336 = !{ptr @fold_builtin_memset, ptr @fold_convert_loc, i64 3}
!337 = !{ptr @fold_builtin_memset, ptr @build_fold_indirect_ref_loc, i64 3}
!338 = !{ptr @fold_builtin_memset, ptr @build2_stat, i64 3}
!339 = !{ptr @var_decl_component_p, ptr @handled_component_p, i64 644}
!340 = !{ptr @target_char_cast, ptr @host_integerp, i64 18}
!341 = !{ptr @target_char_cast, ptr @tree_low_cst, i64 17}
!342 = !{ptr @build_builtin_expect_predicate, ptr @fold_convert_loc, i64 4}
!343 = !{ptr @build_builtin_expect_predicate, ptr @build_call_expr_loc, i64 2}
!344 = !{ptr @build_builtin_expect_predicate, ptr @build_int_cst, i64 2}
!345 = !{ptr @build_builtin_expect_predicate, ptr @build2_stat, i64 2}
!346 = !{ptr @fold_builtin_memory_op, ptr @validate_arg, i64 8244}
!347 = !{ptr @fold_builtin_memory_op, ptr @integer_zerop, i64 2746}
!348 = !{ptr @fold_builtin_memory_op, ptr @omit_one_operand_loc, i64 42}
!349 = !{ptr @fold_builtin_memory_op, ptr @operand_equal_p, i64 2794}
!350 = !{ptr @fold_builtin_memory_op, ptr @get_pointer_alignment, i64 1180}
!351 = !{ptr @fold_builtin_memory_op, ptr @readonly_data_expr, i64 64}
!352 = !{ptr @fold_builtin_memory_op, ptr @host_integerp, i64 2792}
!353 = !{ptr @fold_builtin_memory_op, ptr @tree_low_cst, i64 2}
!354 = !{ptr @fold_builtin_memory_op, ptr @build_call_expr_loc, i64 2}
!355 = !{ptr @fold_builtin_memory_op, ptr @build_fold_indirect_ref_loc, i64 577}
!356 = !{ptr @fold_builtin_memory_op, ptr @handled_component_p, i64 118}
!357 = !{ptr @fold_builtin_memory_op, ptr @get_ref_base_and_extent, i64 2}
!358 = !{ptr @fold_builtin_memory_op, ptr @ranges_overlap_p, i64 3}
!359 = !{ptr @fold_builtin_memory_op, ptr @tree_strip_nop_conversions, i64 1671}
!360 = !{ptr @fold_builtin_memory_op, ptr @build1_stat, i64 268}
!361 = !{ptr @fold_builtin_memory_op, ptr @tree_int_cst_equal, i64 1733}
!362 = !{ptr @fold_builtin_memory_op, ptr @build_pointer_type, i64 189}
!363 = !{ptr @fold_builtin_memory_op, ptr @builtin_save_expr, i64 140}
!364 = !{ptr @fold_builtin_memory_op, ptr @tree_expr_size, i64 409}
!365 = !{ptr @fold_builtin_memory_op, ptr @var_decl_component_p, i64 407}
!366 = !{ptr @fold_builtin_memory_op, ptr @build_qualified_type, i64 47}
!367 = !{ptr @fold_builtin_memory_op, ptr @build_pointer_type_for_mode, i64 42}
!368 = !{ptr @fold_builtin_memory_op, ptr @fold_convert_loc, i64 71}
!369 = !{ptr @fold_builtin_memory_op, ptr @build_variant_type_copy, i64 1}
!370 = !{ptr @fold_builtin_memory_op, ptr @gimple_in_ssa_p, i64 5}
!371 = !{ptr @fold_builtin_memory_op, ptr @useless_type_conversion_p, i64 1}
!372 = !{ptr @fold_builtin_memory_op, ptr @fold_build1_stat_loc, i64 1}
!373 = !{ptr @fold_builtin_memory_op, ptr @build2_stat, i64 50}
!374 = !{ptr @fold_builtin_memory_op, ptr @size_int_kind, i64 6}
!375 = !{ptr @fold_builtin_memory_op, ptr @fold_build2_stat_loc, i64 19}
!376 = !{ptr @fold_builtin_strncat, ptr @validate_arg, i64 21}
!377 = !{ptr @fold_builtin_strncat, ptr @c_getstr, i64 6}
!378 = !{ptr @fold_builtin_strncat, ptr @integer_zerop, i64 6}
!379 = !{ptr @fold_builtin_strncat, ptr @omit_two_operands_loc, i64 1}
!380 = !{ptr @fold_builtin_strncmp, ptr @validate_arg, i64 5040}
!381 = !{ptr @fold_builtin_strncmp, ptr @integer_zerop, i64 1678}
!382 = !{ptr @fold_builtin_strncmp, ptr @omit_two_operands_loc, i64 1}
!383 = !{ptr @fold_builtin_strncmp, ptr @operand_equal_p, i64 1677}
!384 = !{ptr @fold_builtin_strncmp, ptr @omit_one_operand_loc, i64 1}
!385 = !{ptr @fold_builtin_strncmp, ptr @c_getstr, i64 3352}
!386 = !{ptr @fold_builtin_strncmp, ptr @host_integerp, i64 2442}
!387 = !{ptr @fold_builtin_strncmp, ptr @tree_low_cst, i64 1363}
!388 = !{ptr @fold_builtin_strncmp, ptr @strncmp, i64 910}
!389 = !{ptr @fold_builtin_strncmp, ptr @build_qualified_type, i64 1}
!390 = !{ptr @fold_builtin_strncmp, ptr @build_pointer_type_for_mode, i64 1}
!391 = !{ptr @fold_builtin_strncmp, ptr @fold_convert_loc, i64 4}
!392 = !{ptr @fold_builtin_strncmp, ptr @build1_stat, i64 2}
!393 = !{ptr @fold_builtin_strncmp, ptr @fold_build2_stat_loc, i64 1}
!394 = !{ptr @fold_builtin_memcmp, ptr @validate_arg, i64 2124}
!395 = !{ptr @fold_builtin_memcmp, ptr @integer_zerop, i64 706}
!396 = !{ptr @fold_builtin_memcmp, ptr @omit_two_operands_loc, i64 3}
!397 = !{ptr @fold_builtin_memcmp, ptr @operand_equal_p, i64 703}
!398 = !{ptr @fold_builtin_memcmp, ptr @omit_one_operand_loc, i64 1}
!399 = !{ptr @fold_builtin_memcmp, ptr @c_getstr, i64 1404}
!400 = !{ptr @fold_builtin_memcmp, ptr @host_integerp, i64 1404}
!401 = !{ptr @fold_builtin_memcmp, ptr @strlen, i64 1}
!402 = !{ptr @fold_builtin_memcmp, ptr @compare_tree_int, i64 1}
!403 = !{ptr @fold_builtin_memcmp, ptr @tree_low_cst, i64 258}
!404 = !{ptr @fold_builtin_memcmp, ptr @build_qualified_type, i64 2}
!405 = !{ptr @fold_builtin_memcmp, ptr @build_pointer_type_for_mode, i64 2}
!406 = !{ptr @fold_builtin_memcmp, ptr @fold_convert_loc, i64 8}
!407 = !{ptr @fold_builtin_memcmp, ptr @build1_stat, i64 4}
!408 = !{ptr @fold_builtin_memcmp, ptr @fold_build2_stat_loc, i64 2}
!409 = !{ptr @readonly_data_expr, ptr @tree_strip_nop_conversions, i64 65}
!410 = !{ptr @readonly_data_expr, ptr @get_base_address, i64 1}
!411 = !{ptr @fold_builtin_call_array, ptr @get_callee_fndecl, i64 1}
!412 = !{ptr @fold_builtin_call_array, ptr @avoid_folding_inline_builtin, i64 5558}
!413 = !{ptr @fold_builtin_call_array, ptr @build_call_array_loc, i64 5408}
!414 = !{ptr @fold_builtin_call_array, ptr @tree_cons_stat, i64 20}
!415 = !{ptr @fold_builtin_call_array, ptr @fold_builtin_n, i64 5555}
!416 = !{ptr @fold_builtin_call_array, ptr @fold_builtin_varargs, i64 5404}
!417 = !{ptr @gimple_call_num_args, ptr @gimple_num_ops, i64 26440}
!418 = !{ptr @gimple_call_arg, ptr @gimple_op, i64 54813}
!419 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 143493}
!420 = !{ptr @gimple_op, ptr @gimple_ops, i64 143492}
!421 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 143493}
!422 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 143493}
!423 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!424 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 143493}
!425 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 143493}
!426 = !{ptr @fold_builtin_next_arg, ptr @tree_last, i64 91}
!427 = !{ptr @fold_builtin_next_arg, ptr @error, i64 3}
!428 = !{ptr @fold_builtin_next_arg, ptr @integer_zerop, i64 45}
!429 = !{ptr @fold_builtin_next_arg, ptr @warning, i64 2}
!430 = !{ptr @fold_call_stmt, ptr @gimple_call_fndecl, i64 88680}
!431 = !{ptr @fold_call_stmt, ptr @gimple_location, i64 88680}
!432 = !{ptr @fold_call_stmt, ptr @gimple_call_va_arg_pack_p, i64 26440}
!433 = !{ptr @fold_call_stmt, ptr @gimple_call_num_args, i64 26439}
!434 = !{ptr @fold_call_stmt, ptr @avoid_folding_inline_builtin, i64 26439}
!435 = !{ptr @fold_call_stmt, ptr @gimple_call_arg, i64 54823}
!436 = !{ptr @fold_call_stmt, ptr @tree_cons_stat, i64 20}
!437 = !{ptr @fold_call_stmt, ptr @fold_builtin_n, i64 25709}
!438 = !{ptr @fold_call_stmt, ptr @gimple_fold_builtin_varargs, i64 26306}
!439 = !{ptr @fold_call_stmt, ptr @gimple_has_location, i64 131}
!440 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 88680}
!441 = !{ptr @gimple_fold_builtin_varargs, ptr @gimple_fold_builtin_sprintf_chk, i64 2}
!442 = !{ptr @gimple_fold_builtin_varargs, ptr @gimple_fold_builtin_snprintf_chk, i64 2}
!443 = !{ptr @gimple_fold_builtin_varargs, ptr @build1_stat, i64 1}
!444 = !{ptr @gimple_has_location, ptr @gimple_location, i64 130}
!445 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 88680}
!446 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!447 = !{!"function_entry_count", i64 59}
!448 = !{!"branch_weights", i32 7, i32 54}
!449 = !{!"function_entry_count", i64 0}
!450 = !{!"function_entry_count", i64 200989}
!451 = !{i8 0, i8 2}
!452 = !{!"branch_weights", i32 231, i32 200760}
!453 = !{!454, !454, i64 0}
!454 = !{!"long", !455, i64 0}
!455 = !{!"omnipotent char", !456, i64 0}
!456 = !{!"Simple C/C++ TBAA"}
!457 = !{!"branch_weights", i32 45615, i32 155146}
!458 = !{!459, !459, i64 0}
!459 = !{!"any pointer", !455, i64 0}
!460 = !{!"branch_weights", i32 176047, i32 19523}
!461 = !{!"branch_weights", i32 1432, i32 18092}
!462 = !{!455, !455, i64 0}
!463 = !{!"branch_weights", i32 18503, i32 1021}
!464 = !{!"branch_weights", i32 13313, i32 5191}
!465 = !{!"branch_weights", i32 1, i32 13313}
!466 = !{!"branch_weights", i32 1, i32 5191}
!467 = !{!"branch_weights", i32 19523, i32 0}
!468 = !{!"branch_weights", i32 1, i32 200990}
!469 = !{!470, !470, i64 0}
!470 = !{!"int", !455, i64 0}
!471 = !{!"branch_weights", i32 -1759769027, i32 437458620}
!472 = !{!"branch_weights", i32 422, i32 170991}
!473 = !{!"branch_weights", i32 11, i32 412}
!474 = !{!"branch_weights", i32 21373, i32 21374, i32 -640227036}
!475 = !{!"function_entry_count", i64 201762}
!476 = !{!"builtins.c:handled_component_p"}
!477 = !{!"branch_weights", i32 984, i32 1, i32 168593, i32 32188, i32 1, i32 1, i32 1, i32 1}
!478 = !{!"function_entry_count", i64 1197}
!479 = !{!"branch_weights", i32 1198, i32 1}
!480 = !{!"branch_weights", i32 1, i32 1198}
!481 = !{!"branch_weights", i32 1, i32 2396, i32 1}
!482 = !{!"branch_weights", i32 633, i32 213, i32 1, i32 93, i32 480}
!483 = !{!"branch_weights", i32 1, i32 426, i32 1}
!484 = !{!"branch_weights", i32 87, i32 7}
!485 = !{!"branch_weights", i32 7, i32 9}
!486 = distinct !{!486, !487}
!487 = !{!"llvm.loop.mustprogress"}
!488 = !{!"function_entry_count", i64 9662}
!489 = !{!"branch_weights", i32 21, i32 9643}
!490 = !{!"branch_weights", i32 11, i32 11}
!491 = !{!"branch_weights", i32 11, i32 1}
!492 = !{!"branch_weights", i32 1, i32 9653}
!493 = !{!"branch_weights", i32 20948929, i32 23247083}
!494 = !{!"branch_weights", i32 129, i32 4449}
!495 = !{!"branch_weights", i32 6710, i32 2944}
!496 = !{!"branch_weights", i32 1, i32 2944}
!497 = !{!"branch_weights", i32 2944, i32 1}
!498 = distinct !{!498, !487}
!499 = !{!"branch_weights", i32 729443, i32 2146754205}
!500 = !{!501, !459, i64 1392}
!501 = !{!"gcc_target", !502, i64 0, !504, i64 368, !505, i64 664, !470, i64 744, !459, i64 752, !459, i64 760, !459, i64 768, !459, i64 776, !459, i64 784, !459, i64 792, !459, i64 800, !459, i64 808, !459, i64 816, !459, i64 824, !459, i64 832, !459, i64 840, !459, i64 848, !459, i64 856, !459, i64 864, !459, i64 872, !459, i64 880, !459, i64 888, !459, i64 896, !459, i64 904, !459, i64 912, !459, i64 920, !459, i64 928, !459, i64 936, !459, i64 944, !459, i64 952, !459, i64 960, !459, i64 968, !459, i64 976, !459, i64 984, !459, i64 992, !459, i64 1000, !459, i64 1008, !459, i64 1016, !459, i64 1024, !459, i64 1032, !459, i64 1040, !459, i64 1048, !459, i64 1056, !454, i64 1064, !454, i64 1072, !459, i64 1080, !459, i64 1088, !459, i64 1096, !459, i64 1104, !459, i64 1112, !459, i64 1120, !459, i64 1128, !459, i64 1136, !459, i64 1144, !459, i64 1152, !459, i64 1160, !459, i64 1168, !506, i64 1176, !459, i64 1232, !459, i64 1240, !459, i64 1248, !459, i64 1256, !459, i64 1264, !459, i64 1272, !459, i64 1280, !459, i64 1288, !459, i64 1296, !459, i64 1304, !459, i64 1312, !459, i64 1320, !459, i64 1328, !459, i64 1336, !459, i64 1344, !459, i64 1352, !459, i64 1360, !459, i64 1368, !459, i64 1376, !459, i64 1384, !459, i64 1392, !459, i64 1400, !459, i64 1408, !459, i64 1416, !459, i64 1424, !459, i64 1432, !459, i64 1440, !459, i64 1448, !459, i64 1456, !454, i64 1464, !507, i64 1472, !459, i64 1664, !459, i64 1672, !459, i64 1680, !459, i64 1688, !459, i64 1696, !459, i64 1704, !459, i64 1712, !459, i64 1720, !459, i64 1728, !459, i64 1736, !459, i64 1744, !459, i64 1752, !459, i64 1760, !459, i64 1768, !459, i64 1776, !508, i64 1784, !509, i64 1792, !510, i64 1896, !511, i64 1968, !459, i64 2016, !455, i64 2024, !455, i64 2025, !455, i64 2026, !455, i64 2027, !455, i64 2028, !455, i64 2029, !455, i64 2030, !455, i64 2031, !455, i64 2032, !455, i64 2033, !455, i64 2034, !455, i64 2035}
!502 = !{!"asm_out", !459, i64 0, !459, i64 8, !459, i64 16, !503, i64 24, !503, i64 56, !459, i64 88, !459, i64 96, !459, i64 104, !459, i64 112, !459, i64 120, !459, i64 128, !459, i64 136, !459, i64 144, !459, i64 152, !459, i64 160, !459, i64 168, !459, i64 176, !459, i64 184, !459, i64 192, !459, i64 200, !459, i64 208, !459, i64 216, !459, i64 224, !459, i64 232, !459, i64 240, !459, i64 248, !459, i64 256, !459, i64 264, !459, i64 272, !459, i64 280, !459, i64 288, !459, i64 296, !459, i64 304, !459, i64 312, !459, i64 320, !459, i64 328, !459, i64 336, !459, i64 344, !459, i64 352, !459, i64 360}
!503 = !{!"asm_int_op", !459, i64 0, !459, i64 8, !459, i64 16, !459, i64 24}
!504 = !{!"sched", !459, i64 0, !459, i64 8, !459, i64 16, !459, i64 24, !459, i64 32, !459, i64 40, !459, i64 48, !459, i64 56, !459, i64 64, !459, i64 72, !459, i64 80, !459, i64 88, !459, i64 96, !459, i64 104, !459, i64 112, !459, i64 120, !459, i64 128, !459, i64 136, !459, i64 144, !459, i64 152, !459, i64 160, !459, i64 168, !459, i64 176, !459, i64 184, !459, i64 192, !459, i64 200, !459, i64 208, !459, i64 216, !459, i64 224, !459, i64 232, !459, i64 240, !459, i64 248, !459, i64 256, !459, i64 264, !459, i64 272, !459, i64 280, !459, i64 288}
!505 = !{!"vectorize", !459, i64 0, !459, i64 8, !459, i64 16, !459, i64 24, !459, i64 32, !459, i64 40, !459, i64 48, !459, i64 56, !459, i64 64, !459, i64 72}
!506 = !{!"addr_space", !459, i64 0, !459, i64 8, !459, i64 16, !459, i64 24, !459, i64 32, !459, i64 40, !459, i64 48}
!507 = !{!"calls", !459, i64 0, !459, i64 8, !459, i64 16, !459, i64 24, !459, i64 32, !459, i64 40, !459, i64 48, !459, i64 56, !459, i64 64, !459, i64 72, !459, i64 80, !459, i64 88, !459, i64 96, !459, i64 104, !459, i64 112, !459, i64 120, !459, i64 128, !459, i64 136, !459, i64 144, !459, i64 152, !459, i64 160, !459, i64 168, !459, i64 176, !459, i64 184}
!508 = !{!"c", !459, i64 0}
!509 = !{!"cxx", !459, i64 0, !459, i64 8, !459, i64 16, !459, i64 24, !459, i64 32, !459, i64 40, !459, i64 48, !459, i64 56, !459, i64 64, !459, i64 72, !459, i64 80, !459, i64 88, !459, i64 96}
!510 = !{!"emutls", !459, i64 0, !459, i64 8, !459, i64 16, !459, i64 24, !459, i64 32, !459, i64 40, !459, i64 48, !459, i64 56, !455, i64 64, !455, i64 65}
!511 = !{!"target_option_hooks", !459, i64 0, !459, i64 8, !459, i64 16, !459, i64 24, !459, i64 32, !459, i64 40}
!512 = !{!501, !459, i64 1640}
!513 = !{!"builtins.c:mathfn_built_in_1"}
!514 = !{!"function_entry_count", i64 4}
!515 = !{!"branch_weights", i32 1, i32 5}
!516 = !{!"builtins.c:c_readstr"}
!517 = !{!"branch_weights", i32 5, i32 1}
!518 = !{!"branch_weights", i32 1, i32 159}
!519 = !{!"branch_weights", i32 1, i32 11}
!520 = !{!"branch_weights", i32 193, i32 159}
!521 = distinct !{!521, !487}
!522 = !{!523, !459, i64 16}
!523 = !{!"rtl_data", !524, i64 0, !525, i64 40, !526, i64 96, !527, i64 112, !529, i64 208, !530, i64 248, !470, i64 312, !459, i64 320, !459, i64 328, !459, i64 336, !459, i64 344, !459, i64 352, !459, i64 360, !459, i64 368, !459, i64 376, !459, i64 384, !459, i64 392, !454, i64 400, !459, i64 408, !459, i64 416, !459, i64 424, !470, i64 432, !470, i64 436, !470, i64 440, !470, i64 444, !470, i64 448, !470, i64 452, !459, i64 456, !455, i64 464, !455, i64 465, !455, i64 466, !455, i64 467, !455, i64 468, !455, i64 469, !455, i64 470, !455, i64 471, !455, i64 472, !455, i64 473, !455, i64 474, !455, i64 475, !455, i64 476, !455, i64 477, !455, i64 478, !455, i64 479, !455, i64 480, !455, i64 481, !455, i64 482, !455, i64 483, !455, i64 484, !455, i64 485}
!524 = !{!"expr_status", !470, i64 0, !470, i64 4, !470, i64 8, !459, i64 16, !459, i64 24, !459, i64 32}
!525 = !{!"emit_status", !470, i64 0, !470, i64 4, !459, i64 8, !459, i64 16, !459, i64 24, !470, i64 32, !470, i64 36, !470, i64 40, !470, i64 44, !459, i64 48}
!526 = !{!"varasm_status", !459, i64 0, !470, i64 8}
!527 = !{!"incoming_args", !470, i64 0, !470, i64 4, !470, i64 8, !459, i64 16, !528, i64 24, !459, i64 88}
!528 = !{!"ix86_args", !470, i64 0, !470, i64 4, !470, i64 8, !470, i64 12, !470, i64 16, !470, i64 20, !470, i64 24, !470, i64 28, !470, i64 32, !470, i64 36, !470, i64 40, !470, i64 44, !470, i64 48, !470, i64 52, !470, i64 56, !470, i64 60}
!529 = !{!"function_subsections", !459, i64 0, !459, i64 8, !459, i64 16, !459, i64 24, !459, i64 32}
!530 = !{!"rtl_eh", !459, i64 0, !459, i64 8, !459, i64 16, !459, i64 24, !459, i64 32, !459, i64 40, !455, i64 48}
!531 = !{!501, !459, i64 1520}
!532 = !{!"function_entry_count", i64 51}
!533 = !{!"branch_weights", i32 140608, i32 297754, i32 292136, i32 286624, i32 14623232, i32 140608}
!534 = !{!"branch_weights", i32 2704, i32 53, i32 52}
!535 = !{!"branch_weights", i32 -871571095, i32 67108864, i32 66264726}
!536 = !{!"branch_weights", i32 52, i32 1}
!537 = !{!"builtins.c:expand_expr"}
!538 = !{!"branch_weights", i32 1, i32 52}
!539 = !{!"branch_weights", i32 6, i32 47}
!540 = !{!"branch_weights", i32 2704, i32 105}
!541 = !{!501, !459, i64 1336}
!542 = !{!543, !459, i64 480}
!543 = !{!"lang_hooks", !459, i64 0, !454, i64 8, !459, i64 16, !459, i64 24, !459, i64 32, !459, i64 40, !459, i64 48, !459, i64 56, !459, i64 64, !459, i64 72, !459, i64 80, !459, i64 88, !459, i64 96, !459, i64 104, !459, i64 112, !459, i64 120, !459, i64 128, !459, i64 136, !459, i64 144, !459, i64 152, !459, i64 160, !459, i64 168, !459, i64 176, !459, i64 184, !459, i64 192, !459, i64 200, !459, i64 208, !459, i64 216, !459, i64 224, !459, i64 232, !544, i64 240, !545, i64 248, !546, i64 256, !547, i64 272, !548, i64 432, !549, i64 560, !459, i64 584, !459, i64 592, !459, i64 600, !459, i64 608, !459, i64 616, !459, i64 624, !459, i64 632, !459, i64 640, !459, i64 648, !459, i64 656, !459, i64 664, !455, i64 672}
!544 = !{!"lang_hooks_for_tree_inlining", !459, i64 0}
!545 = !{!"lang_hooks_for_callgraph", !459, i64 0}
!546 = !{!"lang_hooks_for_tree_dump", !459, i64 0, !459, i64 8}
!547 = !{!"lang_hooks_for_decls", !459, i64 0, !459, i64 8, !459, i64 16, !459, i64 24, !459, i64 32, !459, i64 40, !459, i64 48, !459, i64 56, !459, i64 64, !459, i64 72, !459, i64 80, !459, i64 88, !459, i64 96, !459, i64 104, !459, i64 112, !459, i64 120, !459, i64 128, !459, i64 136, !459, i64 144, !459, i64 152}
!548 = !{!"lang_hooks_for_types", !459, i64 0, !459, i64 8, !459, i64 16, !459, i64 24, !459, i64 32, !459, i64 40, !459, i64 48, !459, i64 56, !459, i64 64, !459, i64 72, !459, i64 80, !459, i64 88, !459, i64 96, !459, i64 104, !459, i64 112, !455, i64 120}
!549 = !{!"lang_hooks_for_lto", !459, i64 0, !459, i64 8, !459, i64 16}
!550 = !{!501, !459, i64 1352}
!551 = !{!"function_entry_count", i64 5273}
!552 = !{!"branch_weights", i32 5273, i32 1}
!553 = !{!"branch_weights", i32 5273, i32 6782}
!554 = distinct !{!554, !487}
!555 = !{!"builtins.c:dummy_object"}
!556 = !{!"function_entry_count", i64 11410}
!557 = !{!"branch_weights", i32 1, i32 11411}
!558 = !{!501, !459, i64 920}
!559 = !{!"branch_weights", i32 1533, i32 9879}
!560 = !{!"branch_weights", i32 9879, i32 1533}
!561 = !{!"branch_weights", i32 9879, i32 1}
!562 = distinct !{!562, !487}
!563 = distinct !{!563, !487}
!564 = !{!"builtins.c:called_as_built_in"}
!565 = !{!"builtins.c:first_call_expr_arg"}
!566 = !{!"builtins.c:next_call_expr_arg"}
!567 = !{!568, !470, i64 12}
!568 = !{!"call_expr_arg_iterator_d", !459, i64 0, !470, i64 8, !470, i64 12}
!569 = !{!568, !470, i64 8}
!570 = !{!568, !459, i64 0}
!571 = !{!"builtins.c:init_call_expr_arg_iterator"}
!572 = !{!"function_entry_count", i64 305664}
!573 = !{!"branch_weights", i32 10652, i32 295014}
!574 = !{!"branch_weights", i32 10516, i32 137}
!575 = !{!"branch_weights", i32 1, i32 10516}
!576 = !{!"branch_weights", i32 10516, i32 1}
!577 = !{!"branch_weights", i32 11449, i32 1124280, i32 107}
!578 = !{!"branch_weights", i32 103, i32 113}
!579 = !{!"branch_weights", i32 103, i32 1}
!580 = !{!"branch_weights", i32 1, i32 113}
!581 = !{!"branch_weights", i32 1086250, i32 59768832, i32 59244544, i32 -1147812360, i32 -1147812360, i32 133079116, i32 133079116, i32 133079116}
!582 = !{!"branch_weights", i32 1, i32 216, i32 1}
!583 = !{!"branch_weights", i32 307, i32 36}
!584 = !{!"branch_weights", i32 159, i32 6721}
!585 = distinct !{!585, !487}
!586 = !{!"function_entry_count", i64 106}
!587 = !{!"builtins.c:init_const_call_expr_arg_iterator"}
!588 = !{!589, !459, i64 0}
!589 = !{!"const_call_expr_arg_iterator_d", !459, i64 0, !470, i64 8, !470, i64 12}
!590 = !{!589, !470, i64 8}
!591 = !{!589, !470, i64 12}
!592 = !{!"function_entry_count", i64 214}
!593 = !{!"builtins.c:more_const_call_expr_args_p"}
!594 = !{!"function_entry_count", i64 112}
!595 = !{!"builtins.c:next_const_call_expr_arg"}
!596 = !{!"branch_weights", i32 113, i32 1}
!597 = !{!"function_entry_count", i64 191}
!598 = !{!"branch_weights", i32 1, i32 192}
!599 = !{!"branch_weights", i32 192, i32 1}
!600 = !{!"branch_weights", i32 190, i32 3}
!601 = !{!"branch_weights", i32 143, i32 48}
!602 = !{!"branch_weights", i32 48, i32 1}
!603 = !{!"function_entry_count", i64 67233}
!604 = !{!"builtins.c:validate_arg"}
!605 = !{!"branch_weights", i32 1, i32 67234}
!606 = !{!"branch_weights", i32 767800, i32 868798035, i32 303752150}
!607 = !{!"branch_weights", i32 34815, i32 303003649}
!608 = !{!"function_entry_count", i64 38}
!609 = !{!"branch_weights", i32 1, i32 39}
!610 = !{!"branch_weights", i32 39, i32 1}
!611 = !{!"branch_weights", i32 7, i32 33}
!612 = !{!"branch_weights", i32 7, i32 1}
!613 = !{!"branch_weights", i32 -2147483648, i32 0}
!614 = !{!"function_entry_count", i64 279732}
!615 = !{!"branch_weights", i32 5796, i32 273938}
!616 = !{!"branch_weights", i32 273938, i32 1}
!617 = !{!"branch_weights", i32 241961, i32 31978}
!618 = !{!"branch_weights", i32 31978, i32 1}
!619 = !{!"branch_weights", i32 3251, i32 28728}
!620 = !{!"branch_weights", i32 112, i32 28617}
!621 = !{!"branch_weights", i32 22, i32 91}
!622 = !{!"branch_weights", i32 91, i32 1}
!623 = !{!"branch_weights", i32 4, i32 456}
!624 = !{!"branch_weights", i32 1, i32 31978}
!625 = !{!501, !459, i64 936}
!626 = !{!"branch_weights", i32 31453, i32 526}
!627 = !{!"branch_weights", i32 1839217707, i32 308265941}
!628 = !{!"function_entry_count", i64 63978}
!629 = !{!"builtins.c:avoid_folding_inline_builtin"}
!630 = !{!"branch_weights", i32 63979, i32 1}
!631 = !{!"function_entry_count", i64 62726}
!632 = !{!"builtins.c:fold_builtin_n"}
!633 = !{!"branch_weights", i32 1, i32 6857, i32 16287, i32 16621, i32 14634, i32 8332}
!634 = !{!"branch_weights", i32 1983290691, i32 164192957}
!635 = !{!"function_entry_count", i64 32873}
!636 = !{!"builtins.c:fold_builtin_varargs"}
!637 = !{!"branch_weights", i32 32874, i32 1, i32 1, i32 1, i32 1, i32 1}
!638 = !{!"branch_weights", i32 1717932997, i32 429550651}
!639 = !{!"function_entry_count", i64 6856}
!640 = !{!"builtins.c:fold_builtin_0"}
!641 = !{!"branch_weights", i32 6856, i32 1, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!642 = !{!"function_entry_count", i64 16286}
!643 = !{!"builtins.c:fold_builtin_1"}
!644 = !{!"branch_weights", i32 9719, i32 45, i32 1, i32 6258, i32 1, i32 1, i32 1, i32 7, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 9, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 367, i32 1, i32 1, i32 1, i32 1, i32 3, i32 26, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!645 = !{!"function_entry_count", i64 16620}
!646 = !{!"builtins.c:fold_builtin_2"}
!647 = !{!"branch_weights", i32 3639, i32 1, i32 1627, i32 1, i32 1, i32 1, i32 1, i32 34, i32 1, i32 13, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 54, i32 83, i32 4175, i32 1, i32 190, i32 1, i32 46, i32 1, i32 37, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 8, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1756, i32 1099, i32 196, i32 67, i32 37, i32 53, i32 3564}
!648 = !{!"function_entry_count", i64 14633}
!649 = !{!"builtins.c:fold_builtin_3"}
!650 = !{!"branch_weights", i32 71, i32 1, i32 1, i32 1, i32 1, i32 1, i32 66, i32 1, i32 4378, i32 1, i32 4090, i32 1, i32 2667, i32 12, i32 73, i32 9, i32 39, i32 1682, i32 1, i32 1, i32 710, i32 857, i32 1}
!651 = !{!"function_entry_count", i64 8331}
!652 = !{!"builtins.c:fold_builtin_4"}
!653 = !{!"branch_weights", i32 8332, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!654 = !{!"function_entry_count", i64 1}
!655 = !{!"builtins.c:fold_builtin_inf"}
!656 = !{!"branch_weights", i32 1, i32 2}
!657 = !{!"branch_weights", i32 2, i32 1}
!658 = !{!659, !455, i64 47}
!659 = !{!"real_format", !459, i64 0, !459, i64 8, !470, i64 16, !470, i64 20, !470, i64 24, !470, i64 28, !470, i64 32, !470, i64 36, !470, i64 40, !455, i64 44, !455, i64 45, !455, i64 46, !455, i64 47, !455, i64 48, !455, i64 49, !455, i64 50, !455, i64 51}
!660 = !{!"builtins.c:fold_builtin_classify_type"}
!661 = !{i32 -1, i32 17}
!662 = !{!"builtins.c:type_to_class"}
!663 = !{!"function_entry_count", i64 44}
!664 = !{!"builtins.c:fold_builtin_constant_p"}
!665 = !{!"branch_weights", i32 137, i32 4095}
!666 = !{!"branch_weights", i32 32, i32 14}
!667 = !{!"branch_weights", i32 25, i32 168, i32 5}
!668 = !{!"branch_weights", i32 18, i32 1}
!669 = !{!"branch_weights", i32 104976, i32 130321, i32 123462, i32 116964, i32 110808, i32 1889568}
!670 = !{!"function_entry_count", i64 6257}
!671 = !{!"builtins.c:fold_builtin_strlen"}
!672 = !{!"branch_weights", i32 1, i32 6258}
!673 = !{!"branch_weights", i32 4643, i32 1616}
!674 = !{!"builtins.c:fold_builtin_fabs"}
!675 = !{!"function_entry_count", i64 6}
!676 = !{!"builtins.c:fold_builtin_abs"}
!677 = !{!"branch_weights", i32 1, i32 7}
!678 = !{!"builtins.c:fold_builtin_carg"}
!679 = !{!"builtins.c:fold_builtin_nan"}
!680 = !{!"builtins.c:fold_builtin_floor"}
!681 = !{i64 0, i64 4, !469, i64 0, i64 4, !469, i64 0, i64 4, !469, i64 0, i64 4, !469, i64 0, i64 4, !469, i64 0, i64 4, !469, i64 8, i64 24, !462}
!682 = !{!"builtins.c:fold_builtin_ceil"}
!683 = !{!"builtins.c:fold_builtin_trunc"}
!684 = !{!"builtins.c:fold_builtin_round"}
!685 = !{!"builtins.c:fold_trunc_transparent_mathfn"}
!686 = !{i32 0, i32 2048}
!687 = !{!"builtins.c:fold_builtin_int_roundingfn"}
!688 = !{!"builtins.c:fold_fixed_mathfn"}
!689 = !{!"function_entry_count", i64 27}
!690 = !{!"builtins.c:fold_builtin_bswap"}
!691 = !{!"branch_weights", i32 1, i32 28}
!692 = !{!"branch_weights", i32 1, i32 57}
!693 = distinct !{!693, !487}
!694 = !{!"function_entry_count", i64 366}
!695 = !{!"builtins.c:fold_builtin_bitop"}
!696 = !{!"branch_weights", i32 1, i32 367}
!697 = !{!"branch_weights", i32 1089, i32 11423}
!698 = !{!"branch_weights", i32 1, i32 33}
!699 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 33, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!700 = !{!"branch_weights", i32 33, i32 1}
!701 = !{!"branch_weights", i32 5, i32 29}
!702 = distinct !{!702, !487}
!703 = distinct !{!703, !487}
!704 = distinct !{!704, !487}
!705 = distinct !{!705, !487}
!706 = !{!"builtins.c:fold_builtin_signbit"}
!707 = !{!659, !455, i64 49}
!708 = !{!"builtins.c:fold_builtin_significand"}
!709 = !{!659, !470, i64 16}
!710 = !{!"builtins.c:fold_builtin_logb"}
!711 = !{!"builtins.c:fold_builtin_isascii"}
!712 = !{!"builtins.c:fold_builtin_toascii"}
!713 = !{!"builtins.c:fold_builtin_isdigit"}
!714 = !{!543, !459, i64 208}
!715 = !{!"builtins.c:fold_builtin_classify"}
!716 = !{!659, !455, i64 46}
!717 = !{!"builtins.c:fold_builtin_interclass_mathfn"}
!718 = !{!659, !470, i64 28}
!719 = !{!"function_entry_count", i64 41}
!720 = !{!"builtins.c:fold_builtin_printf"}
!721 = !{!"branch_weights", i32 8, i32 35}
!722 = !{!"branch_weights", i32 1, i32 35}
!723 = !{!"branch_weights", i32 4, i32 32}
!724 = !{!"branch_weights", i32 1, i32 32}
!725 = !{!"branch_weights", i32 5, i32 28}
!726 = !{!"branch_weights", i32 57, i32 1}
!727 = !{!"branch_weights", i32 631013504, i32 1516470144}
!728 = !{!"function_entry_count", i64 168}
!729 = !{!"builtins.c:builtin_save_expr"}
!730 = !{!"branch_weights", i32 169, i32 1}
!731 = !{!"branch_weights", i32 20196, i32 2618, i32 3366}
!732 = !{!"branch_weights", i32 17, i32 6}
!733 = !{!"function_entry_count", i64 19688}
!734 = !{!"builtins.c:c_getstr"}
!735 = !{!"branch_weights", i32 9750, i32 9940}
!736 = !{!"branch_weights", i32 1, i32 9940}
!737 = !{!"builtins.c:integer_valued_real_p"}
!738 = !{!"builtins.c:interclass_mathfn_icode"}
!739 = !{!740, !470, i64 0}
!740 = !{!"optab_handlers", !470, i64 0}
!741 = !{!"function_entry_count", i64 3996}
!742 = !{!"builtins.c:init_target_chars"}
!743 = !{!"branch_weights", i32 3996, i32 2}
!744 = !{!"branch_weights", i32 65, i32 16}
!745 = !{!"function_entry_count", i64 36}
!746 = !{!"builtins.c:fold_builtin_load_exponent"}
!747 = !{!"branch_weights", i32 1, i32 37}
!748 = !{!"branch_weights", i32 37, i32 1}
!749 = !{!"branch_weights", i32 8, i32 30}
!750 = !{!"branch_weights", i32 1, i32 8}
!751 = !{!"branch_weights", i32 64, i32 278}
!752 = !{!"branch_weights", i32 8, i32 1}
!753 = !{!659, !470, i64 32}
!754 = !{!"function_entry_count", i64 7}
!755 = !{!"builtins.c:fold_builtin_frexp"}
!756 = !{!"branch_weights", i32 1, i32 17}
!757 = !{!"builtins.c:fold_builtin_modf"}
!758 = !{!"builtins.c:fold_builtin_bzero"}
!759 = !{!"function_entry_count", i64 3260}
!760 = !{!"branch_weights", i32 1803, i32 1459}
!761 = !{!"branch_weights", i32 1194, i32 2068}
!762 = !{!"branch_weights", i32 1, i32 2068}
!763 = !{!"branch_weights", i32 2068, i32 1}
!764 = !{!"branch_weights", i32 948091186, i32 1199392462}
!765 = !{!"branch_weights", i32 1156, i32 1}
!766 = !{!"branch_weights", i32 1, i32 4, i32 238, i32 916}
!767 = !{!"branch_weights", i32 1, i32 238}
!768 = !{!"branch_weights", i32 1833, i32 839056}
!769 = !{!"function_entry_count", i64 195}
!770 = !{!"builtins.c:fold_builtin_strstr"}
!771 = !{!"branch_weights", i32 1, i32 196}
!772 = !{!"branch_weights", i32 19, i32 178}
!773 = !{!"branch_weights", i32 178, i32 1}
!774 = !{!"branch_weights", i32 1, i32 178}
!775 = !{!"function_entry_count", i64 66}
!776 = !{!"builtins.c:fold_builtin_strcat"}
!777 = !{!"branch_weights", i32 1, i32 67}
!778 = !{!"branch_weights", i32 41, i32 27}
!779 = !{!"branch_weights", i32 1, i32 27}
!780 = !{!"branch_weights", i32 24, i32 44}
!781 = !{!"branch_weights", i32 1936, i32 89}
!782 = !{!"branch_weights", i32 31, i32 14}
!783 = !{!"branch_weights", i32 14, i32 1}
!784 = !{!"builtins.c:fold_builtin_strspn"}
!785 = !{!"branch_weights", i32 1, i32 75}
!786 = !{!"branch_weights", i32 19, i32 19}
!787 = !{!"branch_weights", i32 1, i32 19}
!788 = !{!"function_entry_count", i64 52}
!789 = !{!"builtins.c:fold_builtin_strcspn"}
!790 = !{!"branch_weights", i32 1, i32 53}
!791 = !{!"branch_weights", i32 1, i32 107}
!792 = !{!"branch_weights", i32 17, i32 37}
!793 = !{!"function_entry_count", i64 3563}
!794 = !{!"builtins.c:fold_builtin_strchr"}
!795 = !{!"branch_weights", i32 1, i32 3564}
!796 = !{!"branch_weights", i32 833, i32 2732}
!797 = !{!"branch_weights", i32 815, i32 19}
!798 = !{i32 0, i32 2}
!799 = !{!"branch_weights", i32 19, i32 1}
!800 = !{!"branch_weights", i32 5, i32 15}
!801 = !{!"function_entry_count", i64 45}
!802 = !{!"builtins.c:fold_builtin_strrchr"}
!803 = !{!"branch_weights", i32 1, i32 46}
!804 = !{!"branch_weights", i32 21, i32 26}
!805 = !{!"branch_weights", i32 21, i32 1}
!806 = !{!"builtins.c:fold_builtin_stpcpy"}
!807 = !{!"function_entry_count", i64 4174}
!808 = !{!"builtins.c:fold_builtin_strcmp"}
!809 = !{!"branch_weights", i32 1, i32 4175}
!810 = !{!"branch_weights", i32 4170, i32 6}
!811 = !{!"branch_weights", i32 4146, i32 25}
!812 = !{!"branch_weights", i32 12, i32 14}
!813 = !{!"branch_weights", i32 12, i32 3}
!814 = !{!"branch_weights", i32 1171, i32 2987}
!815 = !{!"branch_weights", i32 1, i32 2987}
!816 = !{!"branch_weights", i32 1, i32 12}
!817 = !{!"function_entry_count", i64 82}
!818 = !{!"builtins.c:fold_builtin_strpbrk"}
!819 = !{!"branch_weights", i32 1, i32 83}
!820 = !{!"branch_weights", i32 83, i32 1}
!821 = !{!"function_entry_count", i64 53}
!822 = !{!"builtins.c:fold_builtin_expect"}
!823 = !{!"branch_weights", i32 19, i32 36}
!824 = !{!"branch_weights", i32 15, i32 5}
!825 = !{!"branch_weights", i32 1, i32 54}
!826 = !{!"branch_weights", i32 2, i32 54}
!827 = !{!"branch_weights", i32 23, i32 4}
!828 = !{!"branch_weights", i32 288, i32 216}
!829 = distinct !{!829, !487}
!830 = !{!"branch_weights", i32 161, i32 2809}
!831 = !{!"branch_weights", i32 53, i32 1}
!832 = !{!"builtins.c:fold_builtin_powi"}
!833 = !{!"builtins.c:fold_builtin_copysign"}
!834 = !{!"builtins.c:fold_builtin_unordered_cmp"}
!835 = !{!"function_entry_count", i64 868}
!836 = !{!"builtins.c:fold_builtin_sprintf"}
!837 = !{!"branch_weights", i32 1, i32 869}
!838 = !{!"branch_weights", i32 13, i32 857}
!839 = !{!"branch_weights", i32 659, i32 199}
!840 = !{!"branch_weights", i32 42, i32 170}
!841 = !{!"branch_weights", i32 1, i32 170}
!842 = !{!"branch_weights", i32 10, i32 161}
!843 = !{!"branch_weights", i32 100, i32 21}
!844 = !{!"branch_weights", i32 9, i32 2}
!845 = !{!"branch_weights", i32 15, i32 147}
!846 = !{!"branch_weights", i32 31, i32 225}
!847 = !{!"branch_weights", i32 15, i32 1}
!848 = !{!"branch_weights", i32 5, i32 11}
!849 = !{!"builtins.c:fold_builtin_object_size"}
!850 = !{!"function_entry_count", i64 6068}
!851 = !{!"builtins.c:fold_builtin_fprintf"}
!852 = !{!"branch_weights", i32 1533, i32 4537}
!853 = !{!"branch_weights", i32 1, i32 4537}
!854 = !{!"branch_weights", i32 741, i32 3797}
!855 = !{!"branch_weights", i32 1, i32 3797}
!856 = !{!"branch_weights", i32 811, i32 2987}
!857 = !{!"branch_weights", i32 1, i32 811}
!858 = !{!"branch_weights", i32 29, i32 2959}
!859 = !{!"branch_weights", i32 1, i32 29}
!860 = !{!"branch_weights", i32 59, i32 841}
!861 = !{!"branch_weights", i32 1, i32 2959}
!862 = !{!"branch_weights", i32 952077861, i32 1195405787}
!863 = !{!"function_entry_count", i64 4089}
!864 = !{!"builtins.c:fold_builtin_memset"}
!865 = !{!"branch_weights", i32 1, i32 4090}
!866 = !{!"branch_weights", i32 935, i32 3156}
!867 = !{!"branch_weights", i32 3155, i32 2}
!868 = !{!"branch_weights", i32 15, i32 3141}
!869 = !{!"branch_weights", i32 3141, i32 1}
!870 = !{!"branch_weights", i32 671, i32 2471}
!871 = !{!"branch_weights", i32 671, i32 1}
!872 = !{!"branch_weights", i32 227, i32 445}
!873 = !{!"branch_weights", i32 -1126191914, i32 6847737, i32 6837547, i32 962659556, i32 449759595, i32 6799947}
!874 = !{!"branch_weights", i32 11, i32 196}
!875 = !{!"branch_weights", i32 4, i32 193}
!876 = !{!"branch_weights", i32 9, i32 16}
!877 = !{!"branch_weights", i32 1, i32 4}
!878 = !{!"branch_weights", i32 4, i32 1}
!879 = !{!"function_entry_count", i64 623}
!880 = !{!"builtins.c:var_decl_component_p"}
!881 = !{!"branch_weights", i32 603, i32 21}
!882 = !{!"branch_weights", i32 21, i32 0}
!883 = distinct !{!883, !487}
!884 = !{!"branch_weights", i32 -2088511408, i32 1582929490, i32 18285131, i32 6078345, i32 6061692}
!885 = !{!"function_entry_count", i64 18}
!886 = !{!"builtins.c:target_char_cast"}
!887 = !{!"function_entry_count", i64 2}
!888 = !{!"builtins.c:build_builtin_expect_predicate"}
!889 = !{!"function_entry_count", i64 2749}
!890 = !{!"builtins.c:fold_builtin_memory_op"}
!891 = !{!"branch_weights", i32 1, i32 2750}
!892 = !{!"branch_weights", i32 2742, i32 9}
!893 = !{!"branch_weights", i32 2742, i32 1}
!894 = !{!"branch_weights", i32 66, i32 2677}
!895 = !{!"branch_weights", i32 4356, i32 133}
!896 = !{!"branch_weights", i32 66, i32 1}
!897 = !{!"branch_weights", i32 1, i32 66}
!898 = !{!"branch_weights", i32 18974736, i32 300763, i32 296274, i32 291852, i32 287496}
!899 = !{!"branch_weights", i32 1979, i32 699}
!900 = !{!"branch_weights", i32 3, i32 697}
!901 = !{!"branch_weights", i32 1, i32 3}
!902 = !{!"branch_weights", i32 85, i32 615}
!903 = !{!"branch_weights", i32 8, i32 78}
!904 = !{!"branch_weights", i32 1, i32 699}
!905 = !{!"branch_weights", i32 262, i32 438}
!906 = !{!"branch_weights", i32 180, i32 83}
!907 = !{!"branch_weights", i32 20, i32 680}
!908 = !{!"branch_weights", i32 12, i32 9}
!909 = !{!"branch_weights", i32 2144415814, i32 3067834}
!910 = !{!"branch_weights", i32 11, i32 689}
!911 = !{!"branch_weights", i32 157, i32 533}
!912 = !{!"branch_weights", i32 533, i32 1}
!913 = !{!"branch_weights", i32 1, i32 533}
!914 = !{!"branch_weights", i32 143, i32 391}
!915 = !{!"branch_weights", i32 296, i32 238}
!916 = !{!"branch_weights", i32 238, i32 1}
!917 = !{!"branch_weights", i32 204, i32 35}
!918 = !{!"branch_weights", i32 352, i32 182}
!919 = !{!"branch_weights", i32 182, i32 1}
!920 = !{!"branch_weights", i32 1, i32 182}
!921 = !{!"branch_weights", i32 151, i32 32}
!922 = !{!"branch_weights", i32 237524, i32 29476}
!923 = !{!"branch_weights", i32 24, i32 35}
!924 = !{!"branch_weights", i32 24, i32 1}
!925 = !{!"branch_weights", i32 2, i32 23}
!926 = !{!"branch_weights", i32 27, i32 9}
!927 = !{!"branch_weights", i32 27, i32 1}
!928 = !{!"branch_weights", i32 5, i32 23}
!929 = !{!"branch_weights", i32 284, i32 40}
!930 = !{!"branch_weights", i32 50, i32 6}
!931 = !{!"branch_weights", i32 6, i32 1}
!932 = !{!"branch_weights", i32 2304, i32 1225, i32 1050, i32 2700, i32 720, i32 576}
!933 = !{!"branch_weights", i32 9, i32 64, i32 48, i32 108, i32 18, i32 9}
!934 = !{!"branch_weights", i32 41, i32 15}
!935 = !{!"function_entry_count", i64 8}
!936 = !{!"builtins.c:fold_builtin_strncat"}
!937 = !{!"branch_weights", i32 1, i32 9}
!938 = !{!"branch_weights", i32 9, i32 1}
!939 = !{!"branch_weights", i32 1653562401, i32 493921247}
!940 = !{!"function_entry_count", i64 1681}
!941 = !{!"builtins.c:fold_builtin_strncmp"}
!942 = !{!"branch_weights", i32 1, i32 1682}
!943 = !{!"branch_weights", i32 1682, i32 1}
!944 = !{!"branch_weights", i32 1149918930, i32 969028560}
!945 = !{!"branch_weights", i32 1, i32 915}
!946 = !{!"branch_weights", i32 451, i32 318}
!947 = !{!"branch_weights", i32 1, i32 451}
!948 = !{!"branch_weights", i32 4, i32 765}
!949 = !{!"branch_weights", i32 314, i32 455}
!950 = !{!"branch_weights", i32 1, i32 455}
!951 = !{!"builtins.c:fold_builtin_memchr"}
!952 = !{!"function_entry_count", i64 709}
!953 = !{!"builtins.c:fold_builtin_memcmp"}
!954 = !{!"branch_weights", i32 1, i32 710}
!955 = !{!"branch_weights", i32 708, i32 3}
!956 = !{!"branch_weights", i32 708, i32 1}
!957 = !{!"branch_weights", i32 11223, i32 8162129}
!958 = !{!"branch_weights", i32 448, i32 261}
!959 = !{!"branch_weights", i32 2, i32 260}
!960 = !{!"builtins.c:fold_builtin_strcat_chk"}
!961 = !{!"function_entry_count", i64 65}
!962 = !{!"builtins.c:readonly_data_expr"}
!963 = !{!"builtins.c:ranges_overlap_p"}
!964 = !{!"function_entry_count", i64 5}
!965 = !{!"builtins.c:gimple_in_ssa_p"}
!966 = !{!"branch_weights", i32 1, i32 6}
!967 = !{!968, !459, i64 24}
!968 = !{!"function", !459, i64 0, !459, i64 8, !459, i64 16, !459, i64 24, !459, i64 32, !459, i64 40, !459, i64 48, !459, i64 56, !459, i64 64, !459, i64 72, !459, i64 80, !459, i64 88, !459, i64 96, !470, i64 104, !470, i64 108, !470, i64 112, !470, i64 116, !470, i64 120, !470, i64 124, !459, i64 128, !470, i64 136, !470, i64 137, !470, i64 138, !470, i64 138, !470, i64 138, !470, i64 138, !470, i64 138, !470, i64 138, !470, i64 138, !470, i64 139, !470, i64 139, !470, i64 139, !470, i64 139, !470, i64 139, !470, i64 139, !470, i64 139}
!969 = !{!"builtins.c:fold_builtin_strncat_chk"}
!970 = !{!"builtins.c:fold_builtin_sprintf_chk"}
!971 = !{!"builtins.c:fold_builtin_fpclassify"}
!972 = !{!"builtins.c:rewrite_call_expr"}
!973 = distinct !{!973, !487}
!974 = distinct !{!974, !487}
!975 = !{!"function_entry_count", i64 5561}
!976 = !{!"branch_weights", i32 5562, i32 1}
!977 = !{!"branch_weights", i32 1, i32 5562}
!978 = !{!"branch_weights", i32 2, i32 5561}
!979 = !{!"branch_weights", i32 1, i32 5561}
!980 = distinct !{!980, !487}
!981 = !{!"branch_weights", i32 5411, i32 152}
!982 = !{!"branch_weights", i32 5411, i32 1}
!983 = !{!"function_entry_count", i64 26440}
!984 = !{!"builtins.c:gimple_call_num_args"}
!985 = !{!"function_entry_count", i64 54813}
!986 = !{!"builtins.c:gimple_call_arg"}
!987 = !{!"builtins.c:gimple_num_ops"}
!988 = !{!"function_entry_count", i64 143493}
!989 = !{!"builtins.c:gimple_op"}
!990 = !{!"branch_weights", i32 1, i32 143494}
!991 = !{!"builtins.c:gimple_has_ops"}
!992 = !{i32 0, i32 256}
!993 = !{!"builtins.c:gimple_ops"}
!994 = !{!"function_entry_count", i64 430479}
!995 = !{!"builtins.c:gimple_code"}
!996 = !{!"builtins.c:gimple_statement_structure"}
!997 = !{!"builtins.c:gss_for_code"}
!998 = !{!"function_entry_count", i64 48}
!999 = !{!"branch_weights", i32 1, i32 49}
!1000 = !{!"branch_weights", i32 2451, i32 49}
!1001 = !{!"branch_weights", i32 49, i32 1}
!1002 = !{!"branch_weights", i32 117649, i32 7800, i32 2548, i32 7203}
!1003 = distinct !{!1003, !487}
!1004 = !{!"builtins.c:gimple_rewrite_call_expr"}
!1005 = distinct !{!1005, !487}
!1006 = distinct !{!1006, !487}
!1007 = !{!"function_entry_count", i64 88810}
!1008 = !{!"builtins.c:gimple_location"}
!1009 = !{!"function_entry_count", i64 88680}
!1010 = !{!"branch_weights", i32 2060, i32 86622}
!1011 = !{!"branch_weights", i32 86622, i32 1}
!1012 = !{!"branch_weights", i32 60182, i32 26441}
!1013 = !{!"branch_weights", i32 26441, i32 1}
!1014 = !{!"branch_weights", i32 1, i32 26441}
!1015 = distinct !{!1015, !487}
!1016 = !{!"branch_weights", i32 25714, i32 728}
!1017 = !{!"branch_weights", i32 25713, i32 1}
!1018 = !{!"branch_weights", i32 25713, i32 29101}
!1019 = distinct !{!1019, !487}
!1020 = !{!"branch_weights", i32 2136543290, i32 10940358}
!1021 = !{!"branch_weights", i32 1, i32 131}
!1022 = !{!"branch_weights", i32 131, i32 1}
!1023 = !{!"branch_weights", i32 16393005, i32 2131090643}
!1024 = !{!"branch_weights", i32 3025, i32 4367}
!1025 = !{!"branch_weights", i32 19, i32 37}
!1026 = !{!"builtins.c:gimple_call_fndecl"}
!1027 = !{!"branch_weights", i32 86622, i32 2060}
!1028 = !{!"builtins.c:gimple_call_va_arg_pack_p"}
!1029 = !{!"function_entry_count", i64 26310}
!1030 = !{!"builtins.c:gimple_fold_builtin_varargs"}
!1031 = !{!"branch_weights", i32 26311, i32 1, i32 1, i32 1, i32 1}
!1032 = !{!"branch_weights", i32 1610551882, i32 536931766}
!1033 = !{!"function_entry_count", i64 130}
!1034 = !{!"builtins.c:gimple_has_location"}
!1035 = !{!"builtins.c:gimple_call_fn"}
!1036 = !{!"builtins.c:gimple_fold_builtin_sprintf_chk"}
