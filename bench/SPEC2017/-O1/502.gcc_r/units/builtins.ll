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
%struct.elims = type { i32, i32 }
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
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
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
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_real_cst = type { %struct.tree_common, ptr }
%struct.real_format = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"NOT_BUILT_IN\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"BUILT_IN_FRONTEND\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"BUILT_IN_MD\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"BUILT_IN_NORMAL\00", align 1
@built_in_class_names = dso_local local_unnamed_addr constant [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], align 16
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
@.str.717 = private unnamed_addr constant [11 x i8] c"__builtin_\00", align 1
@.str.718 = private unnamed_addr constant [8 x i8] c"__sync_\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@optimize = external local_unnamed_addr global i32, align 4
@flag_tree_ter = external local_unnamed_addr global i32, align 4
@input_location = external local_unnamed_addr global i32, align 4
@.str.719 = private unnamed_addr constant [41 x i8] c"offset outside bounds of constant string\00", align 1
@setjmp_alias_set = internal unnamed_addr global i32 -1, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@cfun = external local_unnamed_addr global ptr, align 8
@global_rtl = external local_unnamed_addr global [11 x ptr], align 16
@current_function_decl = external local_unnamed_addr global ptr, align 8
@fixed_regs = external local_unnamed_addr global [53 x i8], align 16
@expand_builtin_setjmp_receiver.elim_regs = internal unnamed_addr constant [4 x %struct.elims] [%struct.elims { i32 16, i32 7 }, %struct.elims { i32 16, i32 6 }, %struct.elims { i32 20, i32 7 }, %struct.elims { i32 20, i32 6 }], align 16
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@flag_pic = external local_unnamed_addr global i32, align 4
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@flag_mudflap = external local_unnamed_addr global i32, align 4
@.str.720 = private unnamed_addr constant [53 x i8] c"first argument to %<va_arg%> not of type %<va_list%>\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@gimplify_va_arg_expr.gave_help = internal unnamed_addr global i1 false, align 1
@.str.721 = private unnamed_addr constant [51 x i8] c"%qT is promoted to %qT when passed through %<...%>\00", align 1
@.str.722 = private unnamed_addr constant [47 x i8] c"(so you should pass %qT not %qT to %<va_arg%>)\00", align 1
@.str.723 = private unnamed_addr constant [48 x i8] c"if this code is reached, the program will abort\00", align 1
@implicit_built_in_decls = dso_local local_unnamed_addr global [721 x ptr] zeroinitializer, align 16
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@built_in_decls = dso_local local_unnamed_addr global [721 x ptr] zeroinitializer, align 16
@.str.724 = private unnamed_addr constant [11 x i8] c"builtins.c\00", align 1
@.str.725 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.726 = private unnamed_addr constant [46 x i8] c"%<va_start%> used in function with fixed args\00", align 1
@.str.727 = private unnamed_addr constant [51 x i8] c"wrong number of arguments to function %<va_start%>\00", align 1
@.str.728 = private unnamed_addr constant [50 x i8] c"%<__builtin_next_arg%> called without an argument\00", align 1
@.str.729 = private unnamed_addr constant [61 x i8] c"wrong number of arguments to function %<__builtin_next_arg%>\00", align 1
@.str.730 = private unnamed_addr constant [57 x i8] c"second parameter of %<va_start%> not last named argument\00", align 1
@.str.731 = private unnamed_addr constant [96 x i8] c"undefined behaviour when second parameter of %<va_start%> is declared with %<register%> storage\00", align 1
@target_percent = internal unnamed_addr global i64 0, align 8
@target_percent_s = internal global [3 x i8] zeroinitializer, align 1
@.str.732 = private unnamed_addr constant [7 x i8] c"memcpy\00", align 1
@libfunc_table = external local_unnamed_addr global [14 x ptr], align 16
@.str.733 = private unnamed_addr constant [7 x i8] c"memset\00", align 1
@.str.734 = private unnamed_addr constant [8 x i8] c"memmove\00", align 1
@.str.735 = private unnamed_addr constant [7 x i8] c"memcmp\00", align 1
@.str.736 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@.str.737 = private unnamed_addr constant [14 x i8] c"always_inline\00", align 1
@real_format_for_mode = external local_unnamed_addr global [7 x ptr], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@.str.738 = private unnamed_addr constant [40 x i8] c"target format does not support infinity\00", align 1
@folding_initializer = external local_unnamed_addr global i32, align 4
@flag_errno_math = external local_unnamed_addr global i32, align 4
@flag_signed_zeros = external local_unnamed_addr global i32, align 4
@dconst0 = external global %struct.real_value, align 8
@flag_finite_math_only = external local_unnamed_addr global i32, align 4
@.str.739 = private unnamed_addr constant [7 x i8] c"0x1p%d\00", align 1
@optab_table = external local_unnamed_addr global [159 x %struct.optab_d], align 16
@target_newline = internal unnamed_addr global i64 0, align 8
@target_percent_s_newline = internal global [4 x i8] zeroinitializer, align 1
@target_percent_c = internal global [3 x i8] zeroinitializer, align 1
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@ptr_mode = external local_unnamed_addr global i32, align 4
@dconst1 = external global %struct.real_value, align 8
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.740 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@init_target_chars.init = internal unnamed_addr global i1 false, align 1
@target_c = internal unnamed_addr global i64 0, align 8

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !60 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !61
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !60 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !61
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !60 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !71

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #25
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !65
  %11 = load i8, ptr %3, align 1, !tbaa !72
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !60 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !71

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #25
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !65
  %11 = load i8, ptr %3, align 1, !tbaa !72
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !60 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !61
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !65
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !71

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #25
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !65
  %11 = load i8, ptr %3, align 1, !tbaa !72
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !60 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !61
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !60 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !71

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #25
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !73
  store i8 %12, ptr %4, align 1, !tbaa !72
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !60 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !71

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #25
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !73
  store i8 %12, ptr %4, align 1, !tbaa !72
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !60 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !61
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !71

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #25
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !73
  store i8 %12, ptr %4, align 1, !tbaa !72
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !60 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #25
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !60 {
  %2 = load i32, ptr %0, align 8, !tbaa !75
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !60 {
  %2 = load i32, ptr %0, align 8, !tbaa !75
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !60 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #25
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !76
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !60 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #25
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !76
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !60 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !60 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !60 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !60 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #25
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
  br i1 %23, label %7, label %24, !llvm.loop !77

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !60 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @is_builtin_name(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !60 {
  %2 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(11) @.str.717, i64 noundef 10)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.718, i64 noundef 7)
  %6 = icmp eq i32 %5, 0
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i8 [ 1, %1 ], [ %7, %4 ]
  ret i8 %9
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @is_builtin_fn(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !60 {
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

; Function Attrs: nounwind uwtable
define dso_local i32 @get_object_alignment(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #12 !prof !80 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i64, ptr %0, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %70 [
    i16 42, label %12
    i16 41, label %12
    i16 45, label %12
    i16 46, label %12
    i16 118, label %12
    i16 43, label %12
    i16 44, label %12
  ], !prof !81

12:                                               ; preds = %3, %3, %3, %3, %3, %3, %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #25
  %13 = call ptr @get_inner_reference(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, i8 noundef zeroext 1) #25
  %14 = load i64, ptr %5, align 8, !tbaa !82
  %15 = icmp eq i64 %14, 0
  %16 = sub nsw i64 0, %14
  %17 = and i64 %14, %16
  %18 = trunc i64 %17 to i32
  %19 = call i32 @llvm.umin.i32(i32 %18, i32 %2)
  %20 = select i1 %15, i32 %2, i32 %19, !prof !83
  br label %21

21:                                               ; preds = %65, %12
  %22 = phi i32 [ %20, %12 ], [ %66, %65 ]
  %23 = load ptr, ptr %6, align 8, !tbaa !61
  %24 = icmp eq ptr %23, null
  br i1 %24, label %68, label %25, !prof !84

25:                                               ; preds = %21
  %26 = load i64, ptr %23, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 63
  br i1 %28, label %29, label %34, !prof !85

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.tree_exp, ptr %23, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !72
  %32 = getelementptr inbounds %struct.tree_exp, ptr %23, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !72
  store ptr %33, ptr %6, align 8, !tbaa !61
  br label %34

34:                                               ; preds = %25, %29
  %35 = phi ptr [ %31, %29 ], [ null, %25 ]
  %36 = load ptr, ptr %6, align 8, !tbaa !61
  %37 = call i32 @host_integerp(ptr noundef %36, i32 noundef 1) #25
  %38 = icmp eq i32 %37, 0
  %39 = load ptr, ptr %6, align 8, !tbaa !61
  br i1 %38, label %40, label %55, !prof !86

40:                                               ; preds = %34
  %41 = load i64, ptr %39, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 65
  br i1 %43, label %44, label %53, !prof !86

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.tree_exp, ptr %39, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !72
  %47 = call i32 @host_integerp(ptr noundef %46, i32 noundef 1) #25
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49, !prof !85

49:                                               ; preds = %44
  %50 = load ptr, ptr %6, align 8, !tbaa !61
  %51 = getelementptr inbounds %struct.tree_exp, ptr %50, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !72
  br label %55

53:                                               ; preds = %44, %40
  %54 = call i32 @llvm.umin.i32(i32 %22, i32 8)
  br label %65

55:                                               ; preds = %34, %49
  %56 = phi ptr [ %52, %49 ], [ %39, %34 ]
  %57 = call i64 @tree_low_cst(ptr noundef %56, i32 noundef 1) #25
  %58 = trunc i64 %57 to i32
  %59 = shl i32 %58, 3
  %60 = icmp eq i32 %59, 0
  %61 = sub i32 0, %59
  %62 = and i32 %59, %61
  %63 = call i32 @llvm.umin.i32(i32 %22, i32 %62)
  %64 = select i1 %60, i32 %22, i32 %63, !prof !85
  store ptr %35, ptr %6, align 8, !tbaa !61
  br label %65

65:                                               ; preds = %55, %53
  %66 = phi i32 [ %64, %55 ], [ %54, %53 ]
  %67 = phi i1 [ true, %55 ], [ false, %53 ]
  br i1 %67, label %21, label %68, !prof !86

68:                                               ; preds = %65, %21
  %69 = phi i32 [ %22, %21 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  br label %70

70:                                               ; preds = %3, %68
  %71 = phi i32 [ %69, %68 ], [ %2, %3 ]
  %72 = phi ptr [ %13, %68 ], [ %0, %3 ]
  %73 = load i64, ptr %72, align 8
  %74 = and i64 %73, 65535
  %75 = icmp eq i64 %74, 33
  br i1 %75, label %76, label %79, !prof !87

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.tree_decl_common, ptr %72, i64 0, i32 5
  %78 = load ptr, ptr %77, align 8, !tbaa !72
  br label %79

79:                                               ; preds = %76, %70
  %80 = phi ptr [ %78, %76 ], [ %72, %70 ]
  %81 = load i64, ptr %80, align 8
  %82 = and i64 %81, 65535
  %83 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !76
  %85 = icmp ne i32 %84, 3
  %86 = icmp eq i64 %82, 30
  %87 = or i1 %85, %86
  br i1 %87, label %92, label %88, !prof !88

88:                                               ; preds = %79
  %89 = getelementptr inbounds %struct.tree_decl_common, ptr %80, i64 0, i32 3
  %90 = load i32, ptr %89, align 8, !tbaa !72
  %91 = call i32 @llvm.umin.i32(i32 %71, i32 %90)
  br label %109

92:                                               ; preds = %79
  %93 = icmp eq i32 %84, 1
  br i1 %93, label %94, label %99, !prof !89

94:                                               ; preds = %92
  %95 = call i32 @ix86_constant_alignment(ptr noundef nonnull %80, i32 noundef %1) #25
  %96 = icmp ult i32 %71, %95
  br i1 %96, label %109, label %97

97:                                               ; preds = %94
  %98 = call i32 @ix86_constant_alignment(ptr noundef nonnull %80, i32 noundef %1) #25
  br label %109

99:                                               ; preds = %92
  %100 = trunc i64 %81 to i16
  switch i16 %100, label %107 [
    i16 118, label %101
    i16 47, label %101
  ], !prof !90

101:                                              ; preds = %99, %99
  %102 = getelementptr inbounds %struct.tree_common, ptr %80, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !72
  %104 = getelementptr inbounds %struct.tree_type, ptr %103, i64 0, i32 7
  %105 = load i32, ptr %104, align 8, !tbaa !72
  %106 = call i32 @llvm.umin.i32(i32 %105, i32 %71)
  br label %109

107:                                              ; preds = %99
  %108 = call i32 @llvm.umin.i32(i32 %71, i32 %1)
  br label %109

109:                                              ; preds = %97, %94, %107, %101, %88
  %110 = phi i32 [ %91, %88 ], [ %106, %101 ], [ %108, %107 ], [ %98, %97 ], [ %71, %94 ]
  %111 = call i32 @llvm.umin.i32(i32 %110, i32 %2)
  ret i32 %111
}

declare ptr @get_inner_reference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @ix86_constant_alignment(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @can_trust_pointer_alignment() local_unnamed_addr #13 !prof !60 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !76
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_tree_ter, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: nounwind uwtable
define dso_local i32 @get_pointer_alignment(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #12 !prof !91 {
  %3 = load i32, ptr @optimize, align 4, !tbaa !76
  %4 = icmp eq i32 %3, 0
  %5 = load i32, ptr @flag_tree_ter, align 4
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %4, i1 true, i1 %6, !prof !92
  br i1 %7, label %63, label %8, !prof !92

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i16
  switch i16 %12, label %63 [
    i16 10, label %13
    i16 12, label %13
  ], !prof !93

13:                                               ; preds = %8, %8
  %14 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = getelementptr inbounds %struct.tree_type, ptr %15, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !72
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 %1)
  br label %19

19:                                               ; preds = %57, %13
  %20 = phi ptr [ %58, %57 ], [ %0, %13 ]
  %21 = phi i32 [ %48, %57 ], [ %1, %13 ]
  %22 = phi i32 [ %25, %57 ], [ %18, %13 ]
  br label %23

23:                                               ; preds = %19, %35
  %24 = phi ptr [ %30, %35 ], [ %20, %19 ]
  %25 = phi i32 [ %40, %35 ], [ %22, %19 ]
  %26 = load i64, ptr %24, align 8
  %27 = trunc i64 %26 to i16
  switch i16 %27, label %63 [
    i16 116, label %28
    i16 113, label %28
    i16 66, label %41
    i16 121, label %59
  ], !prof !94

28:                                               ; preds = %23, %23
  %29 = getelementptr inbounds %struct.tree_exp, ptr %24, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !72
  %31 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !72
  %33 = load i64, ptr %32, align 8
  %34 = trunc i64 %33 to i16
  switch i16 %34, label %63 [
    i16 10, label %35
    i16 12, label %35
  ], !prof !95

35:                                               ; preds = %28, %28
  %36 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !72
  %38 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 7
  %39 = load i32, ptr %38, align 8, !tbaa !72
  %40 = tail call i32 @llvm.umin.i32(i32 %39, i32 %21)
  br label %23, !llvm.loop !96

41:                                               ; preds = %23
  %42 = getelementptr inbounds %struct.tree_exp, ptr %24, i64 0, i32 3
  %43 = getelementptr inbounds %struct.tree_exp, ptr %24, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !72
  %45 = tail call i32 @host_integerp(ptr noundef %44, i32 noundef 1) #25
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %63, label %47, !prof !97

47:                                               ; preds = %41, %47
  %48 = phi i32 [ %56, %47 ], [ %21, %41 ]
  %49 = load ptr, ptr %43, align 8, !tbaa !72
  %50 = tail call i64 @tree_low_cst(ptr noundef %49, i32 noundef 1) #25
  %51 = lshr i32 %48, 3
  %52 = add nsw i32 %51, -1
  %53 = zext i32 %52 to i64
  %54 = and i64 %50, %53
  %55 = icmp eq i64 %54, 0
  %56 = lshr i32 %48, 1
  br i1 %55, label %57, label %47, !prof !98, !llvm.loop !99

57:                                               ; preds = %47
  %58 = load ptr, ptr %42, align 8, !tbaa !72
  br label %19, !llvm.loop !96

59:                                               ; preds = %23
  %60 = getelementptr inbounds %struct.tree_exp, ptr %24, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !72
  %62 = tail call i32 @get_object_alignment(ptr noundef %61, i32 noundef %25, i32 noundef %21)
  br label %63

63:                                               ; preds = %28, %23, %41, %8, %2, %59
  %64 = phi i32 [ %62, %59 ], [ 0, %2 ], [ 0, %8 ], [ %25, %41 ], [ %25, %23 ], [ %25, %28 ]
  ret i32 %64
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @c_strlen(ptr noundef %0, i32 noundef %1) local_unnamed_addr #14 !prof !60 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %4 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #25
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 56
  br i1 %7, label %8, label %25

8:                                                ; preds = %2
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !72
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65536
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %10, %8
  %17 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !72
  %19 = tail call ptr @c_strlen(ptr noundef %18, i32 noundef %1)
  %20 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !72
  %22 = tail call ptr @c_strlen(ptr noundef %21, i32 noundef %1)
  %23 = tail call i32 @tree_int_cst_equal(ptr noundef %19, ptr noundef %22) #25
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %109

25:                                               ; preds = %10, %16, %2
  %26 = load i64, ptr %4, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 52
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = icmp eq i32 %1, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !72
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65536
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31, %29
  %38 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !72
  %40 = tail call ptr @c_strlen(ptr noundef %39, i32 noundef %1)
  br label %109

41:                                               ; preds = %31, %25
  %42 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %27
  %43 = load i32, ptr %42, align 4, !tbaa !76
  %44 = add i32 %43, -4
  %45 = icmp ult i32 %44, 7
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !72
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46, %41
  %51 = load i32, ptr @input_location, align 4, !tbaa !76
  br label %52

52:                                               ; preds = %46, %50
  %53 = phi i32 [ %51, %50 ], [ %48, %46 ]
  %54 = call ptr @string_constant(ptr noundef nonnull %4, ptr noundef nonnull %3) #25
  %55 = icmp eq ptr %54, null
  br i1 %55, label %109, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.tree_string, ptr %54, i64 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !72
  %59 = add i32 %58, -1
  %60 = getelementptr inbounds %struct.tree_string, ptr %54, i64 0, i32 2
  %61 = load ptr, ptr %3, align 8, !tbaa !61
  %62 = icmp eq ptr %61, null
  br i1 %62, label %91, label %63

63:                                               ; preds = %56
  %64 = load i64, ptr %61, align 8
  %65 = and i64 %64, 65535
  %66 = icmp eq i64 %65, 23
  br i1 %66, label %84, label %67

67:                                               ; preds = %63
  %68 = icmp sgt i32 %58, 1
  br i1 %68, label %69, label %79

69:                                               ; preds = %67
  %70 = zext i32 %59 to i64
  br label %74

71:                                               ; preds = %74
  %72 = add nuw nsw i64 %75, 1
  %73 = icmp eq i64 %72, %70
  br i1 %73, label %79, label %74, !llvm.loop !100

74:                                               ; preds = %69, %71
  %75 = phi i64 [ 0, %69 ], [ %72, %71 ]
  %76 = getelementptr inbounds i8, ptr %60, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !72
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %109, label %71

79:                                               ; preds = %71, %67
  %80 = sext i32 %59 to i64
  %81 = call ptr @size_int_kind(i64 noundef %80, i32 noundef 0) #25
  %82 = load ptr, ptr %3, align 8, !tbaa !61
  %83 = call ptr @size_diffop_loc(i32 noundef %53, ptr noundef %81, ptr noundef %82) #25
  br label %109

84:                                               ; preds = %63
  br i1 %62, label %91, label %85

85:                                               ; preds = %84
  %86 = call i32 @host_integerp(ptr noundef nonnull %61, i32 noundef 0) #25
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %85
  %89 = load ptr, ptr %3, align 8, !tbaa !61
  %90 = call i64 @tree_low_cst(ptr noundef %89, i32 noundef 0) #25
  br label %91

91:                                               ; preds = %56, %85, %84, %88
  %92 = phi i64 [ %90, %88 ], [ 0, %84 ], [ -1, %85 ], [ 0, %56 ]
  %93 = icmp slt i64 %92, 0
  %94 = sext i32 %59 to i64
  %95 = icmp sgt i64 %92, %94
  %96 = select i1 %93, i1 true, i1 %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %91
  %98 = load i64, ptr %54, align 8
  %99 = and i64 %98, 8388608
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %97
  %102 = call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %53, i32 noundef 0, ptr noundef nonnull @.str.719) #25
  %103 = load i64, ptr %54, align 8
  %104 = or i64 %103, 8388608
  store i64 %104, ptr %54, align 8
  br label %109

105:                                              ; preds = %91
  %106 = getelementptr inbounds i8, ptr %60, i64 %92
  %107 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %106)
  %108 = call ptr @size_int_kind(i64 noundef %107, i32 noundef 1) #25
  br label %109

109:                                              ; preds = %74, %97, %101, %79, %52, %16, %105, %37
  %110 = phi ptr [ %40, %37 ], [ %108, %105 ], [ %19, %16 ], [ null, %52 ], [ %83, %79 ], [ null, %101 ], [ null, %97 ], [ null, %74 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret ptr %110
}

declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @string_constant(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @size_diffop_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @warning_at(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: cold nounwind uwtable
define dso_local void @expand_builtin_setjmp_setup(ptr noundef %0, ptr noundef %1) local_unnamed_addr #14 !prof !60 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %4 = load i32, ptr @setjmp_alias_set, align 4, !tbaa !76
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call i32 @new_alias_set() #25
  store i32 %7, ptr @setjmp_alias_set, align 4, !tbaa !76
  br label %8

8:                                                ; preds = %6, %2
  %9 = tail call ptr @convert_memory_address_addr_space(i32 noundef 16, ptr noundef %0, i8 noundef zeroext 0) #25
  %10 = tail call ptr @force_operand(ptr noundef %9, ptr noundef null) #25
  %11 = tail call ptr @force_reg(i32 noundef 16, ptr noundef %10) #25
  %12 = tail call ptr @gen_rtx_MEM(i32 noundef 16, ptr noundef %11) #25
  %13 = load i32, ptr @setjmp_alias_set, align 4, !tbaa !76
  tail call void @set_mem_alias_set(ptr noundef %12, i32 noundef %13) #25
  %14 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 78), align 8, !tbaa !101
  %15 = tail call ptr %14() #25
  %16 = tail call ptr @emit_move_insn(ptr noundef %12, ptr noundef %15) #25
  %17 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 16), align 16, !tbaa !72
  %18 = zext i8 %17 to i64
  %19 = tail call ptr @plus_constant(ptr noundef %11, i64 noundef %18) #25
  %20 = tail call ptr @gen_rtx_MEM(i32 noundef 16, ptr noundef %19) #25
  %21 = load i32, ptr @setjmp_alias_set, align 4, !tbaa !76
  tail call void @set_mem_alias_set(ptr noundef %20, i32 noundef %21) #25
  %22 = tail call ptr @validize_mem(ptr noundef %20) #25
  %23 = tail call ptr @gen_rtx_fmt_u_stat(i32 noundef 44, i32 noundef 16, ptr noundef %1) #25
  %24 = tail call ptr @force_reg(i32 noundef 16, ptr noundef %23) #25
  %25 = tail call ptr @emit_move_insn(ptr noundef %22, ptr noundef %24) #25
  %26 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 16), align 16, !tbaa !72
  %27 = zext i8 %26 to i64
  %28 = shl nuw nsw i64 %27, 1
  %29 = tail call ptr @plus_constant(ptr noundef %11, i64 noundef %28) #25
  %30 = tail call ptr @gen_rtx_MEM(i32 noundef 16, ptr noundef %29) #25
  store ptr %30, ptr %3, align 8, !tbaa !61
  %31 = load i32, ptr @setjmp_alias_set, align 4, !tbaa !76
  tail call void @set_mem_alias_set(ptr noundef %30, i32 noundef %31) #25
  call void @emit_stack_save(i32 noundef 2, ptr noundef nonnull %3, ptr noundef null) #25
  %32 = load ptr, ptr @cfun, align 8, !tbaa !61
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 20
  %34 = load i32, ptr %33, align 8
  %35 = or i32 %34, 1310720
  store i32 %35, ptr %33, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret void
}

declare i32 @new_alias_set() local_unnamed_addr #3

declare ptr @convert_memory_address_addr_space(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @force_reg(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @force_operand(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @set_mem_alias_set(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @emit_move_insn(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @validize_mem(ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_u_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @emit_stack_save(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @expand_builtin_setjmp_receiver(ptr noundef %0) local_unnamed_addr #14 !prof !60 {
  %2 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !61
  %3 = tail call ptr @emit_use(ptr noundef %2) #25
  %4 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 21), align 8, !tbaa !113
  %5 = load ptr, ptr @current_function_decl, align 8, !tbaa !61
  %6 = tail call ptr %4(ptr noundef %5, i8 noundef zeroext 1) #25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr %6, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 37
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = tail call ptr @emit_clobber(ptr noundef nonnull %6) #25
  br label %14

14:                                               ; preds = %12, %8, %1
  %15 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 7), align 8, !tbaa !61
  %16 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !61
  %17 = tail call ptr @emit_move_insn(ptr noundef %15, ptr noundef %16) #25
  %18 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !61
  %19 = tail call ptr @emit_clobber(ptr noundef %18) #25
  %20 = load i8, ptr getelementptr inbounds ([53 x i8], ptr @fixed_regs, i64 0, i64 16), align 16, !tbaa !72
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %14, %30
  %23 = phi i64 [ %31, %30 ], [ 0, %14 ]
  %24 = getelementptr inbounds [4 x %struct.elims], ptr @expand_builtin_setjmp_receiver.elim_regs, i64 0, i64 %23
  %25 = load i32, ptr %24, align 8, !tbaa !114
  %26 = icmp ne i32 %25, 16
  %27 = and i64 %23, 1
  %28 = icmp eq i64 %27, 0
  %29 = or i1 %28, %26
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = add nuw nsw i64 %23, 1
  %32 = icmp eq i64 %31, 4
  br i1 %32, label %33, label %22, !llvm.loop !116

33:                                               ; preds = %22, %30
  %34 = phi i64 [ %23, %22 ], [ 4, %30 ]
  %35 = icmp eq i64 %34, 4
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 5), align 8, !tbaa !117
  %38 = tail call ptr @get_arg_pointer_save_area() #25
  %39 = tail call ptr @copy_to_reg(ptr noundef %38) #25
  %40 = tail call ptr @emit_move_insn(ptr noundef %37, ptr noundef %39) #25
  br label %41

41:                                               ; preds = %33, %36, %14
  %42 = load i32, ptr @flag_pic, align 4, !tbaa !76
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = tail call ptr @gen_builtin_setjmp_receiver(ptr noundef %0) #25
  %46 = tail call ptr @emit_insn(ptr noundef %45) #25
  br label %47

47:                                               ; preds = %41, %44
  %48 = tail call ptr @gen_blockage() #25
  %49 = tail call ptr @emit_insn(ptr noundef %48) #25
  ret void
}

declare ptr @emit_use(ptr noundef) local_unnamed_addr #3

declare ptr @emit_clobber(ptr noundef) local_unnamed_addr #3

declare ptr @copy_to_reg(ptr noundef) local_unnamed_addr #3

declare ptr @get_arg_pointer_save_area() local_unnamed_addr #3

declare ptr @emit_insn(ptr noundef) local_unnamed_addr #3

declare ptr @gen_builtin_setjmp_receiver(ptr noundef) local_unnamed_addr #3

declare ptr @gen_blockage() local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @mathfn_built_in(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #15 !prof !60 {
  %3 = tail call fastcc ptr @mathfn_built_in_1(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 1)
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @mathfn_built_in_1(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #15 !prof !60 {
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
  %93 = load ptr, ptr %92, align 8, !tbaa !72
  %94 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16, !tbaa !61
  %95 = icmp eq ptr %93, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %88
  %97 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !61
  %98 = icmp eq ptr %93, %97
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 33), align 8, !tbaa !61
  %101 = icmp eq ptr %93, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %99, %96, %88
  %103 = phi i64 [ %89, %88 ], [ %90, %96 ], [ %91, %99 ]
  %104 = getelementptr inbounds ptr, ptr %5, i64 %103
  %105 = load ptr, ptr %104, align 8, !tbaa !61
  br label %106

106:                                              ; preds = %102, %99, %3
  %107 = phi ptr [ null, %3 ], [ null, %99 ], [ %105, %102 ]
  ret ptr %107
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @builtin_strncpy_read_str(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #14 !prof !60 {
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !61
  br label %11

8:                                                ; preds = %3
  %9 = getelementptr inbounds i8, ptr %0, i64 %1
  %10 = tail call fastcc ptr @c_readstr(ptr noundef %9, i32 noundef %2)
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi ptr [ %7, %6 ], [ %10, %8 ]
  ret ptr %12
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @c_readstr(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #14 !prof !60 {
  %3 = alloca [2 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !72
  %7 = icmp eq i8 %6, 2
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.724, i32 noundef 553, ptr noundef nonnull @.str.725) #25
  br label %9

9:                                                ; preds = %2, %8
  %10 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %11 = load i8, ptr %10, align 1, !tbaa !72
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %9, %24
  %14 = phi i64 [ %34, %24 ], [ 0, %9 ]
  %15 = phi i64 [ %25, %24 ], [ 1, %9 ]
  %16 = icmp ult i64 %14, 17
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.724, i32 noundef 567, ptr noundef nonnull @.str.725) #25
  br label %18

18:                                               ; preds = %13, %17
  %19 = icmp eq i64 %15, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds i8, ptr %0, i64 %14
  %22 = load i8, ptr %21, align 1, !tbaa !72
  %23 = zext i8 %22 to i64
  br label %24

24:                                               ; preds = %20, %18
  %25 = phi i64 [ %23, %20 ], [ 0, %18 ]
  %26 = shl i64 %14, 3
  %27 = and i64 %26, 56
  %28 = shl nuw i64 %25, %27
  %29 = lshr i64 %14, 3
  %30 = and i64 %29, 536870911
  %31 = getelementptr inbounds [2 x i64], ptr %3, i64 0, i64 %30
  %32 = load i64, ptr %31, align 8, !tbaa !82
  %33 = or i64 %32, %28
  store i64 %33, ptr %31, align 8, !tbaa !82
  %34 = add nuw nsw i64 %14, 1
  %35 = load i8, ptr %10, align 1, !tbaa !72
  %36 = zext i8 %35 to i64
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %13, label %38, !llvm.loop !126

38:                                               ; preds = %24, %9
  %39 = getelementptr inbounds [2 x i64], ptr %3, i64 0, i64 1
  %40 = load i64, ptr %3, align 16, !tbaa !82
  %41 = load i64, ptr %39, align 8, !tbaa !82
  %42 = tail call ptr @immed_double_const(i64 noundef %40, i64 noundef %41, i32 noundef %1) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  ret ptr %42
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @builtin_memset_read_str(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #14 !prof !60 {
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !72
  %7 = zext i8 %6 to i64
  %8 = alloca i8, i64 %7, align 16
  %9 = load i8, ptr %0, align 1, !tbaa !72
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %8, i8 %9, i64 %7, i1 false)
  %10 = call fastcc ptr @c_readstr(ptr noundef nonnull %8, i32 noundef %2)
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: cold nounwind uwtable
define dso_local ptr @expand_builtin_saveregs() local_unnamed_addr #14 !prof !60 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 3), align 8, !tbaa !127
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %9

3:                                                ; preds = %0
  tail call void @start_sequence() #25
  %4 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 6), align 8, !tbaa !128
  %5 = tail call ptr %4() #25
  %6 = tail call ptr @get_insns() #25
  tail call void @end_sequence() #25
  store ptr %5, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 0, i32 3), align 8, !tbaa !127
  tail call void @push_topmost_sequence() #25
  %7 = tail call ptr @entry_of_function() #25
  %8 = tail call ptr @emit_insn_after(ptr noundef %6, ptr noundef %7) #25
  tail call void @pop_topmost_sequence() #25
  br label %9

9:                                                ; preds = %0, %3
  %10 = phi ptr [ %5, %3 ], [ %1, %0 ]
  ret ptr %10
}

declare void @start_sequence() local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

declare void @end_sequence() local_unnamed_addr #3

declare void @push_topmost_sequence() local_unnamed_addr #3

declare ptr @emit_insn_after(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @entry_of_function() local_unnamed_addr #3

declare void @pop_topmost_sequence() local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @std_build_builtin_va_list() local_unnamed_addr #13 !prof !60 {
  %1 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !61
  ret ptr %1
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @std_fn_abi_va_list(ptr nocapture noundef readnone %0) local_unnamed_addr #13 !prof !60 {
  %2 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 44), align 16, !tbaa !61
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @std_canonical_va_list_type(ptr nocapture noundef readonly %0) local_unnamed_addr #15 !prof !60 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %13 [
    i16 47, label %4
    i16 48, label %4
    i16 49, label %4
    i16 10, label %7
    i16 12, label %7
  ]

4:                                                ; preds = %1, %1, %1
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  br label %13

7:                                                ; preds = %1, %1
  %8 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %13 [
    i16 10, label %12
    i16 12, label %12
  ]

12:                                               ; preds = %7, %7
  br label %13

13:                                               ; preds = %7, %1, %12, %4
  %14 = phi ptr [ %6, %4 ], [ %9, %12 ], [ %0, %1 ], [ %0, %7 ]
  %15 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 44), align 16
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = trunc i64 %16 to i16
  switch i16 %18, label %34 [
    i16 16, label %19
    i16 15, label %24
  ]

19:                                               ; preds = %13
  %20 = load i64, ptr %14, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %22 [
    i16 10, label %30
    i16 12, label %30
  ]

22:                                               ; preds = %19
  %23 = icmp eq i64 %17, 15
  br i1 %23, label %24, label %34

24:                                               ; preds = %13, %22
  %25 = load i64, ptr %14, align 8
  %26 = trunc i64 %25 to i16
  switch i16 %26, label %34 [
    i16 15, label %27
    i16 10, label %27
    i16 12, label %27
  ]

27:                                               ; preds = %24, %24, %24
  %28 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !72
  br label %30

30:                                               ; preds = %19, %19, %27
  %31 = phi ptr [ %29, %27 ], [ %15, %19 ], [ %15, %19 ]
  %32 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !72
  br label %34

34:                                               ; preds = %30, %13, %24, %22
  %35 = phi ptr [ %15, %22 ], [ %15, %24 ], [ %15, %13 ], [ %31, %30 ]
  %36 = phi ptr [ %14, %22 ], [ %14, %24 ], [ %14, %13 ], [ %33, %30 ]
  %37 = getelementptr inbounds %struct.tree_type, ptr %35, i64 0, i32 16
  %38 = load ptr, ptr %37, align 8, !tbaa !72
  %39 = getelementptr inbounds %struct.tree_type, ptr %36, i64 0, i32 16
  %40 = load ptr, ptr %39, align 8, !tbaa !72
  %41 = icmp eq ptr %38, %40
  %42 = select i1 %41, ptr %15, ptr null
  ret ptr %42
}

; Function Attrs: cold nounwind uwtable
define dso_local void @std_expand_builtin_va_start(ptr noundef %0, ptr noundef %1) local_unnamed_addr #14 !prof !60 {
  %3 = tail call ptr @expand_expr_real(ptr noundef %0, ptr noundef null, i32 noundef 0, i32 noundef 5, ptr noundef null) #25
  tail call void @convert_move(ptr noundef %3, ptr noundef %1, i32 noundef 0) #25
  ret void
}

declare void @convert_move(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @std_gimplify_va_arg_expr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #14 !prof !60 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 14
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #25
  br label %16

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  br label %16

16:                                               ; preds = %11, %9
  %17 = phi i32 [ %10, %9 ], [ %15, %11 ]
  %18 = tail call zeroext i8 @pass_by_reference(ptr noundef null, i32 noundef %17, ptr noundef nonnull %1, i8 noundef zeroext 0) #25
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @build_pointer_type(ptr noundef nonnull %1) #25
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi ptr [ %21, %20 ], [ %1, %16 ]
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 14
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = tail call i32 @vector_type_mode(ptr noundef nonnull %23) #25
  br label %34

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = lshr i32 %31, 16
  %33 = and i32 %32, 255
  br label %34

34:                                               ; preds = %29, %27
  %35 = phi i32 [ %28, %27 ], [ %33, %29 ]
  %36 = tail call i32 @ix86_function_arg_boundary(i32 noundef %35, ptr noundef nonnull %23) #25
  %37 = sext i32 %36 to i64
  %38 = tail call i64 @llvm.umin.i64(i64 %37, i64 2147483648)
  %39 = lshr i64 %38, 3
  %40 = tail call ptr @get_initialized_tmp_var(ptr noundef %0, ptr noundef %2, ptr noundef null) #25
  %41 = icmp ugt i32 %36, 39
  br i1 %41, label %42, label %64

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !72
  %45 = tail call i32 @integer_zerop(ptr noundef %44) #25
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !72
  %50 = add nsw i64 %39, -1
  %51 = tail call ptr @size_int_kind(i64 noundef %50, i32 noundef 0) #25
  %52 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef %49, ptr noundef %40, ptr noundef %51) #25
  %53 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %49, ptr noundef %40, ptr noundef %52) #25
  tail call void @gimplify_and_add(ptr noundef %53, ptr noundef %2) #25
  %54 = load ptr, ptr @sizetype_tab, align 16, !tbaa !61
  %55 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %54, ptr noundef %40) #25
  %56 = load ptr, ptr %48, align 8, !tbaa !72
  %57 = load ptr, ptr @sizetype_tab, align 16, !tbaa !61
  %58 = sub nsw i64 0, %39
  %59 = tail call ptr @size_int_kind(i64 noundef %58, i32 noundef 0) #25
  %60 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 89, ptr noundef %57, ptr noundef %55, ptr noundef %59) #25
  %61 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %56, ptr noundef %60) #25
  %62 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %56, ptr noundef %40, ptr noundef %61) #25
  tail call void @gimplify_and_add(ptr noundef %62, ptr noundef %2) #25
  %63 = and i64 %38, 4294967288
  br label %64

64:                                               ; preds = %34, %42, %47
  %65 = phi i64 [ %63, %47 ], [ 32, %42 ], [ 32, %34 ]
  %66 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 7
  %67 = load i32, ptr %66, align 8, !tbaa !72
  %68 = zext i32 %67 to i64
  %69 = icmp ult i64 %65, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = tail call ptr @build_variant_type_copy(ptr noundef nonnull %23) #25
  %72 = trunc i64 %65 to i32
  %73 = getelementptr inbounds %struct.tree_type, ptr %71, i64 0, i32 7
  store i32 %72, ptr %73, align 8, !tbaa !72
  br label %74

74:                                               ; preds = %70, %64
  %75 = phi ptr [ %71, %70 ], [ %23, %64 ]
  %76 = tail call ptr @size_in_bytes(ptr noundef %75) #25
  %77 = tail call ptr @round_up_loc(i32 noundef 0, ptr noundef %76, i32 noundef 4) #25
  store ptr %77, ptr %5, align 8, !tbaa !61
  %78 = call i32 @gimplify_expr(ptr noundef nonnull %5, ptr noundef %2, ptr noundef %3, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #25
  %79 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !72
  %81 = load ptr, ptr %5, align 8, !tbaa !61
  %82 = call ptr @build2_stat(i32 noundef 66, ptr noundef %80, ptr noundef %40, ptr noundef %81) #25
  %83 = load ptr, ptr %79, align 8, !tbaa !72
  %84 = call ptr @build2_stat(i32 noundef 53, ptr noundef %83, ptr noundef %0, ptr noundef %82) #25
  call void @gimplify_and_add(ptr noundef %84, ptr noundef %2) #25
  %85 = call ptr @build_pointer_type(ptr noundef %75) #25
  %86 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %85, ptr noundef %40) #25
  br i1 %19, label %89, label %87

87:                                               ; preds = %74
  %88 = call ptr @build_va_arg_indirect_ref(ptr noundef %86)
  br label %89

89:                                               ; preds = %87, %74
  %90 = phi ptr [ %88, %87 ], [ %86, %74 ]
  %91 = call ptr @build_va_arg_indirect_ref(ptr noundef %90)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  ret ptr %91
}

declare zeroext i8 @pass_by_reference(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #3

declare i32 @ix86_function_arg_boundary(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_initialized_tmp_var(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gimplify_and_add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_variant_type_copy(ptr noundef) local_unnamed_addr #3

declare ptr @size_in_bytes(ptr noundef) local_unnamed_addr #3

declare ptr @round_up_loc(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @gimplify_expr(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_val(ptr noundef) #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @build_va_arg_indirect_ref(ptr noundef %0) local_unnamed_addr #14 !prof !60 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !76
  %6 = add i32 %5, -4
  %7 = icmp ult i32 %6, 7
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !72
  br label %11

11:                                               ; preds = %1, %8
  %12 = phi i32 [ %10, %8 ], [ 0, %1 ]
  %13 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef %12, ptr noundef nonnull %0) #25
  %14 = load i32, ptr @flag_mudflap, align 4, !tbaa !76
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = tail call ptr @mf_mark(ptr noundef %13) #25
  br label %18

18:                                               ; preds = %16, %11
  ret ptr %13
}

declare ptr @build_fold_indirect_ref_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @mf_mark(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @gimplify_va_arg_expr(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #14 !prof !60 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = load ptr, ptr %0, align 8, !tbaa !61
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  store ptr %7, ptr %4, align 8, !tbaa !61
  %8 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = load i64, ptr %5, align 8
  %11 = and i64 %10, 65535
  %12 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !76
  %14 = add i32 %13, -4
  %15 = icmp ult i32 %14, 7
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !72
  br label %19

19:                                               ; preds = %3, %16
  %20 = phi i32 [ %18, %16 ], [ 0, %3 ]
  %21 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !72
  %23 = load ptr, ptr @global_trees, align 16, !tbaa !61
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %77, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 71), align 8, !tbaa !129
  %27 = tail call ptr %26(ptr noundef %22) #25
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  tail call void (i32, ptr, ...) @error_at(i32 noundef %20, ptr noundef nonnull @.str.720) #25
  br label %77

30:                                               ; preds = %25
  %31 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 6), align 8, !tbaa !130
  %32 = tail call ptr %31(ptr noundef %9) #25
  %33 = icmp eq ptr %32, %9
  br i1 %33, label %49, label %34

34:                                               ; preds = %30
  %35 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %20, i32 noundef 0, ptr noundef nonnull @.str.721, ptr noundef %9, ptr noundef %32) #25
  %36 = load i1, ptr @gimplify_va_arg_expr.gave_help, align 1
  %37 = icmp eq i8 %35, 0
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i1 true, ptr @gimplify_va_arg_expr.gave_help, align 1
  tail call void (i32, ptr, ...) @inform(i32 noundef %20, ptr noundef nonnull @.str.722, ptr noundef %32, ptr noundef %9) #25
  br label %40

40:                                               ; preds = %39, %34
  br i1 %37, label %42, label %41

41:                                               ; preds = %40
  tail call void (i32, ptr, ...) @inform(i32 noundef %20, ptr noundef nonnull @.str.723) #25
  br label %42

42:                                               ; preds = %41, %40
  %43 = load ptr, ptr %4, align 8, !tbaa !61
  tail call void @gimplify_and_add(ptr noundef %43, ptr noundef %1) #25
  %44 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 509), align 8, !tbaa !61
  %45 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %20, ptr noundef %44, i32 noundef 0)
  tail call void @gimplify_and_add(ptr noundef %45, ptr noundef %1) #25
  %46 = tail call ptr @build_pointer_type(ptr noundef %9) #25
  %47 = tail call ptr @build_int_cst(ptr noundef %46, i64 noundef 0) #25
  %48 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %9, ptr noundef %47) #25
  store ptr %48, ptr %0, align 8, !tbaa !61
  br label %77

49:                                               ; preds = %30
  %50 = load i64, ptr %27, align 8
  %51 = and i64 %50, 65535
  %52 = icmp eq i64 %51, 15
  br i1 %52, label %53, label %69

53:                                               ; preds = %49
  %54 = load ptr, ptr %4, align 8, !tbaa !61
  %55 = getelementptr inbounds %struct.tree_common, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !72
  %57 = load i64, ptr %56, align 8
  %58 = and i64 %57, 65535
  %59 = icmp eq i64 %58, 15
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !72
  %63 = tail call ptr @build_pointer_type(ptr noundef %62) #25
  %64 = load ptr, ptr %4, align 8, !tbaa !61
  %65 = tail call ptr @build_fold_addr_expr_loc(i32 noundef %20, ptr noundef %64) #25
  %66 = tail call ptr @fold_convert_loc(i32 noundef %20, ptr noundef %63, ptr noundef %65) #25
  store ptr %66, ptr %4, align 8, !tbaa !61
  br label %67

67:                                               ; preds = %60, %53
  %68 = call i32 @gimplify_expr(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #25
  br label %71

69:                                               ; preds = %49
  %70 = call i32 @gimplify_expr(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_min_lval, i32 noundef 2) #25
  br label %71

71:                                               ; preds = %69, %67
  %72 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 73), align 8, !tbaa !138
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr %4, align 8, !tbaa !61
  %76 = call ptr %72(ptr noundef %75, ptr noundef %9, ptr noundef %1, ptr noundef %2) #25
  store ptr %76, ptr %0, align 8, !tbaa !61
  br label %77

77:                                               ; preds = %71, %19, %74, %42, %29
  %78 = phi i32 [ -2, %29 ], [ 1, %42 ], [ 0, %74 ], [ -2, %19 ], [ 1, %71 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret i32 %78
}

declare void @error_at(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @inform(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @build_call_expr_loc(i32 noundef %0, ptr noundef %1, i32 noundef %2, ...) local_unnamed_addr #14 !prof !60 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = tail call ptr @build_pointer_type(ptr noundef %6) #25
  %8 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %7, ptr noundef %1) #25
  %9 = sext i32 %2 to i64
  %10 = shl nsw i64 %9, 3
  %11 = alloca i8, i64 %10, align 16
  call void @llvm.va_start(ptr nonnull %4)
  %12 = icmp sgt i32 %2, 0
  br i1 %12, label %13, label %39

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
  store ptr %35, ptr %36, align 8, !tbaa !61
  %37 = add nuw nsw i64 %21, 1
  %38 = icmp eq i64 %37, %19
  br i1 %38, label %39, label %20, !llvm.loop !139

39:                                               ; preds = %31, %3
  call void @llvm.va_end(ptr %4)
  %40 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !72
  %42 = call ptr @fold_builtin_call_array(i32 noundef %0, ptr noundef %41, ptr noundef %8, i32 noundef %2, ptr noundef nonnull %11)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  ret ptr %42
}

declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_min_lval(ptr noundef) #3

; Function Attrs: cold nounwind uwtable
define dso_local void @expand_builtin_trap() local_unnamed_addr #14 !prof !60 {
  %1 = tail call ptr @gen_trap() #25
  %2 = tail call ptr @emit_insn(ptr noundef %1) #25
  %3 = tail call ptr @emit_barrier() #25
  ret void
}

declare ptr @gen_trap() local_unnamed_addr #3

declare ptr @emit_barrier() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @build_string_literal(i32 noundef %0, ptr noundef %1) local_unnamed_addr #14 !prof !60 {
  %3 = tail call ptr @build_string(i32 noundef %0, ptr noundef %1) #25
  %4 = load ptr, ptr @integer_types, align 16, !tbaa !61
  %5 = tail call ptr @build_qualified_type(ptr noundef %4, i32 noundef 1) #25
  %6 = add nsw i32 %0, -1
  %7 = sext i32 %6 to i64
  %8 = tail call ptr @size_int_kind(i64 noundef %7, i32 noundef 0) #25
  %9 = tail call ptr @build_index_type(ptr noundef %8) #25
  %10 = tail call ptr @build_array_type(ptr noundef %5, ptr noundef %9) #25
  %11 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !72
  %12 = load i64, ptr %3, align 8
  %13 = or i64 %12, 68288512
  store i64 %13, ptr %3, align 8
  %14 = tail call ptr @build_pointer_type(ptr noundef %5) #25
  %15 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !61
  %16 = tail call ptr @build4_stat(i32 noundef 45, ptr noundef %5, ptr noundef nonnull %3, ptr noundef %15, ptr noundef null, ptr noundef null) #25
  %17 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %14, ptr noundef %16) #25
  ret ptr %17
}

declare ptr @build_string(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_qualified_type(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build_index_type(ptr noundef) local_unnamed_addr #3

declare ptr @build_array_type(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build4_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @expand_builtin(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #14 !prof !60 {
  %6 = tail call ptr @get_callee_fndecl(ptr noundef %0) #25
  %7 = getelementptr inbounds %struct.tree_function_decl, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 2047
  %10 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 14
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = tail call i32 @vector_type_mode(ptr noundef nonnull %11) #25
  br label %17

17:                                               ; preds = %5, %15
  %18 = load i32, ptr %7, align 8
  %19 = and i32 %18, 6144
  %20 = icmp eq i32 %19, 4096
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 25), align 8, !tbaa !140
  %23 = tail call ptr %22(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #25
  br label %130

24:                                               ; preds = %17
  %25 = load i32, ptr @optimize, align 4, !tbaa !76
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !72
  %30 = getelementptr inbounds %struct.tree_identifier, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !72
  %32 = tail call zeroext i8 @is_builtin_name(ptr noundef %31), !range !141
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %27
  %35 = load i64, ptr %6, align 8
  %36 = and i64 %35, 65535
  %37 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %36, i64 13
  %38 = load i8, ptr %37, align 1, !tbaa !72
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %6, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !72
  %43 = icmp ne ptr %42, null
  %44 = icmp ne i32 %9, 415
  %45 = select i1 %43, i1 %44, i1 false
  %46 = icmp ne i32 %9, 455
  %47 = select i1 %45, i1 %46, i1 false
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = tail call ptr @expand_call(ptr noundef %0, ptr noundef %1, i32 noundef %4) #25
  br label %130

50:                                               ; preds = %40, %34, %27, %24
  %51 = icmp eq i32 %4, 0
  %52 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16
  %53 = select i1 %51, ptr %1, ptr %52
  %54 = icmp eq ptr %53, %52
  br i1 %54, label %55, label %128

55:                                               ; preds = %50
  %56 = and i32 %18, 134217728
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i64, ptr %6, align 8
  %60 = and i64 %59, 1048576
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %128, label %62

62:                                               ; preds = %58, %55
  %63 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !72
  %65 = getelementptr inbounds %struct.tree_int_cst, ptr %64, i64 0, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !72
  %67 = trunc i64 %66 to i32
  %68 = add nsw i32 %67, -3
  %69 = icmp sgt i32 %67, 3
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 3
  %72 = load ptr, ptr %71, align 8, !tbaa !72
  br label %73

73:                                               ; preds = %62, %70
  %74 = phi i32 [ 1, %70 ], [ 0, %62 ]
  %75 = phi ptr [ %72, %70 ], [ null, %62 ]
  %76 = icmp eq ptr %75, null
  br i1 %76, label %98, label %77

77:                                               ; preds = %73
  %78 = load i64, ptr %75, align 8
  %79 = and i64 %78, 524288
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %85, label %125

81:                                               ; preds = %94
  %82 = load i64, ptr %96, align 8
  %83 = and i64 %82, 524288
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %125, !llvm.loop !142

85:                                               ; preds = %77, %81
  %86 = phi i32 [ %95, %81 ], [ %74, %77 ]
  %87 = icmp slt i32 %86, %68
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = add nsw i32 %86, 3
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !72
  %93 = add nsw i32 %86, 1
  br label %94

94:                                               ; preds = %85, %88
  %95 = phi i32 [ %93, %88 ], [ %86, %85 ]
  %96 = phi ptr [ %92, %88 ], [ null, %85 ]
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %81, !llvm.loop !142

98:                                               ; preds = %94, %73
  %99 = phi i1 [ %76, %73 ], [ %97, %94 ]
  br i1 %69, label %100, label %103

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 3
  %102 = load ptr, ptr %101, align 8, !tbaa !72
  br label %103

103:                                              ; preds = %98, %100
  %104 = phi i32 [ 1, %100 ], [ 0, %98 ]
  %105 = phi ptr [ %102, %100 ], [ null, %98 ]
  %106 = icmp eq ptr %105, null
  br i1 %106, label %123, label %107

107:                                              ; preds = %103, %119
  %108 = phi ptr [ %121, %119 ], [ %105, %103 ]
  %109 = phi i32 [ %120, %119 ], [ %104, %103 ]
  %110 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !61
  %111 = tail call ptr @expand_expr_real(ptr noundef nonnull %108, ptr noundef %110, i32 noundef 0, i32 noundef 0, ptr noundef null) #25
  %112 = icmp slt i32 %109, %68
  br i1 %112, label %113, label %119

113:                                              ; preds = %107
  %114 = add nsw i32 %109, 3
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !72
  %118 = add nsw i32 %109, 1
  br label %119

119:                                              ; preds = %107, %113
  %120 = phi i32 [ %118, %113 ], [ %109, %107 ]
  %121 = phi ptr [ %117, %113 ], [ null, %107 ]
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %107, !llvm.loop !143

123:                                              ; preds = %119, %103
  %124 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !61
  br label %125

125:                                              ; preds = %81, %77, %123
  %126 = phi i1 [ %99, %123 ], [ %76, %77 ], [ %97, %81 ]
  %127 = phi ptr [ %124, %123 ], [ undef, %77 ], [ undef, %81 ]
  br i1 %126, label %130, label %128

128:                                              ; preds = %125, %58, %50
  %129 = tail call ptr @expand_call(ptr noundef %0, ptr noundef %53, i32 noundef %4) #25
  br label %130

130:                                              ; preds = %125, %128, %48, %21
  %131 = phi ptr [ %23, %21 ], [ %129, %128 ], [ %127, %125 ], [ %49, %48 ]
  ret ptr %131
}

declare ptr @get_callee_fndecl(ptr noundef) local_unnamed_addr #3

declare ptr @expand_call(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @builtin_mathfn_code(ptr noundef %0) local_unnamed_addr #17 !prof !144 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 59
  br i1 %4, label %5, label %96, !prof !145

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 121
  br i1 %10, label %11, label %96, !prof !146

11:                                               ; preds = %5
  %12 = tail call ptr @get_callee_fndecl(ptr noundef nonnull %0) #25
  %13 = icmp eq ptr %12, null
  br i1 %13, label %96, label %14, !prof !147

14:                                               ; preds = %11
  %15 = load i64, ptr %12, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 29
  br i1 %17, label %18, label %96, !prof !148

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.tree_function_decl, ptr %12, i64 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 11
  %22 = and i32 %21, 3
  switch i32 %22, label %23 [
    i32 0, label %96
    i32 2, label %96
  ], !prof !149

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !72
  %26 = getelementptr inbounds %struct.tree_type, ptr %25, i64 0, i32 1
  %27 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !72
  %29 = getelementptr inbounds %struct.tree_int_cst, ptr %28, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !72
  %31 = trunc i64 %30 to i32
  %32 = add i32 %31, -3
  %33 = load ptr, ptr %26, align 8, !tbaa !72
  %34 = icmp eq ptr %33, null
  br i1 %34, label %94, label %35, !prof !150

35:                                               ; preds = %23, %90
  %36 = phi i64 [ %56, %90 ], [ 0, %23 ]
  %37 = phi ptr [ %92, %90 ], [ %33, %23 ]
  %38 = getelementptr inbounds %struct.tree_list, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !72
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 19
  br i1 %42, label %43, label %48, !prof !151

43:                                               ; preds = %35
  %44 = trunc i64 %36 to i32
  %45 = icmp sgt i32 %32, %44
  %46 = and i32 %20, 2047
  %47 = select i1 %45, i32 721, i32 %46, !prof !152
  br label %96

48:                                               ; preds = %35
  %49 = tail call i32 @llvm.smax.i32(i32 %32, i32 0)
  %50 = zext nneg i32 %49 to i64
  %51 = icmp eq i64 %36, %50
  br i1 %51, label %96, label %52, !prof !152

52:                                               ; preds = %48
  %53 = add nuw nsw i64 %36, 3
  %54 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !72
  %56 = add nuw nsw i64 %36, 1
  %57 = getelementptr inbounds %struct.tree_common, ptr %55, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !72
  %59 = trunc i64 %40 to i16
  switch i16 %59, label %96 [
    i16 9, label %60
    i16 13, label %64
    i16 10, label %81
    i16 12, label %81
    i16 6, label %84
    i16 7, label %84
    i16 8, label %84
  ], !prof !153

60:                                               ; preds = %52
  %61 = load i64, ptr %58, align 8
  %62 = and i64 %61, 65535
  %63 = icmp eq i64 %62, 9
  br i1 %63, label %90, label %96

64:                                               ; preds = %52
  %65 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !72
  %67 = load i64, ptr %66, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 9
  br i1 %69, label %70, label %80

70:                                               ; preds = %64
  %71 = load i64, ptr %58, align 8
  %72 = and i64 %71, 65535
  %73 = icmp eq i64 %72, 13
  br i1 %73, label %74, label %96

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.tree_common, ptr %58, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !72
  %77 = load i64, ptr %76, align 8
  %78 = and i64 %77, 65535
  %79 = icmp eq i64 %78, 9
  br i1 %79, label %90, label %96

80:                                               ; preds = %64
  switch i16 %59, label %96 [
    i16 10, label %81
    i16 12, label %81
    i16 6, label %84
    i16 7, label %84
    i16 8, label %84
  ], !prof !154

81:                                               ; preds = %80, %52, %52, %80
  %82 = load i64, ptr %58, align 8
  %83 = trunc i64 %82 to i16
  switch i16 %83, label %96 [
    i16 10, label %90
    i16 12, label %90
  ]

84:                                               ; preds = %80, %52, %80, %52, %52, %80
  %85 = load i64, ptr %58, align 8
  %86 = trunc i64 %85 to i32
  %87 = and i32 %86, 65535
  %88 = add nsw i32 %87, -6
  %89 = icmp ult i32 %88, 3
  br i1 %89, label %90, label %96, !prof !155

90:                                               ; preds = %81, %81, %84, %60, %74
  %91 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !72
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %35, !prof !156, !llvm.loop !157

94:                                               ; preds = %90, %23
  %95 = and i32 %20, 2047
  br label %96

96:                                               ; preds = %84, %81, %80, %52, %74, %70, %60, %48, %43, %18, %11, %14, %18, %1, %5, %94
  %97 = phi i32 [ %95, %94 ], [ 721, %5 ], [ 721, %1 ], [ 721, %18 ], [ 721, %14 ], [ 721, %11 ], [ 721, %18 ], [ %47, %43 ], [ 721, %48 ], [ 721, %60 ], [ 721, %70 ], [ 721, %74 ], [ 721, %52 ], [ 721, %80 ], [ 721, %81 ], [ 721, %84 ]
  ret i32 %97
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @fold_builtin_strcpy(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #14 !prof !60 {
  %6 = icmp eq ptr %2, null
  br i1 %6, label %54, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %54 [
    i16 12, label %12
    i16 10, label %12
  ]

12:                                               ; preds = %7, %7
  %13 = icmp eq ptr %3, null
  br i1 %13, label %54, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !72
  %17 = load i64, ptr %16, align 8
  %18 = trunc i64 %17 to i16
  switch i16 %18, label %54 [
    i16 12, label %19
    i16 10, label %19
  ]

19:                                               ; preds = %14, %14
  %20 = tail call i32 @operand_equal_p(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 0) #25
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !72
  %25 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !72
  %27 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %26, ptr noundef nonnull %2) #25
  br label %54

28:                                               ; preds = %19
  %29 = load ptr, ptr @cfun, align 8, !tbaa !61
  %30 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %29) #25
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %28
  %33 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 330), align 16, !tbaa !61
  %34 = icmp eq ptr %33, null
  br i1 %34, label %54, label %35

35:                                               ; preds = %32
  %36 = icmp eq ptr %4, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %35
  %38 = tail call ptr @c_strlen(ptr noundef nonnull %3, i32 noundef 1)
  %39 = icmp eq ptr %38, null
  br i1 %39, label %54, label %40

40:                                               ; preds = %37
  %41 = load i64, ptr %38, align 8
  %42 = and i64 %41, 65536
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %40, %35
  %45 = phi ptr [ %4, %35 ], [ %38, %40 ]
  %46 = tail call ptr @size_int_kind(i64 noundef 1, i32 noundef 1) #25
  %47 = tail call ptr @size_binop_loc(i32 noundef %0, i32 noundef 63, ptr noundef nonnull %45, ptr noundef %46) #25
  %48 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !72
  %50 = getelementptr inbounds %struct.tree_common, ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !72
  %52 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %33, i32 noundef 3, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %47)
  %53 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %51, ptr noundef %52) #25
  br label %54

54:                                               ; preds = %12, %14, %7, %5, %37, %40, %32, %28, %44, %22
  %55 = phi ptr [ %27, %22 ], [ %53, %44 ], [ null, %14 ], [ null, %7 ], [ null, %28 ], [ null, %32 ], [ null, %40 ], [ null, %37 ], [ null, %5 ], [ null, %12 ]
  ret ptr %55
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @validate_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #15 !prof !60 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  switch i32 %1, label %20 [
    i32 10, label %9
    i32 8, label %14
  ]

9:                                                ; preds = %4
  %10 = and i32 %8, 65535
  %11 = icmp eq i32 %10, 10
  %12 = icmp eq i32 %10, 12
  %13 = or i1 %11, %12
  br label %23

14:                                               ; preds = %4
  %15 = and i32 %8, 65534
  %16 = icmp eq i32 %15, 6
  br i1 %16, label %23, label %17

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

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_function_for_size_p(ptr noundef) local_unnamed_addr #3

declare ptr @size_binop_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @fold_builtin_strncpy(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #14 !prof !60 {
  %7 = icmp eq ptr %2, null
  br i1 %7, label %71, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i16
  switch i16 %12, label %71 [
    i16 12, label %13
    i16 10, label %13
  ]

13:                                               ; preds = %8, %8
  %14 = icmp eq ptr %3, null
  br i1 %14, label %71, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !72
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %71 [
    i16 12, label %20
    i16 10, label %20
  ]

20:                                               ; preds = %15, %15
  %21 = icmp eq ptr %4, null
  br i1 %21, label %71, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !72
  %25 = load i64, ptr %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = and i32 %26, 65534
  %28 = icmp ne i32 %27, 6
  %29 = and i32 %26, 65535
  %30 = icmp ne i32 %29, 8
  %31 = and i1 %28, %30
  br i1 %31, label %71, label %32

32:                                               ; preds = %22
  %33 = tail call i32 @integer_zerop(ptr noundef nonnull %4) #25
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !72
  %38 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !72
  %40 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %39, ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  br label %71

41:                                               ; preds = %32
  %42 = load i64, ptr %4, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 23
  br i1 %44, label %45, label %71

45:                                               ; preds = %41
  %46 = icmp eq ptr %5, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %45
  %48 = tail call ptr @c_strlen(ptr noundef nonnull %3, i32 noundef 1)
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi ptr [ %5, %45 ], [ %48, %47 ]
  %51 = icmp eq ptr %50, null
  br i1 %51, label %71, label %52

52:                                               ; preds = %49
  %53 = load i64, ptr %50, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 23
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = tail call ptr @size_int_kind(i64 noundef 1, i32 noundef 1) #25
  %58 = tail call ptr @size_binop_loc(i32 noundef %0, i32 noundef 63, ptr noundef nonnull %50, ptr noundef %57) #25
  %59 = tail call i32 @tree_int_cst_lt(ptr noundef %58, ptr noundef nonnull %4) #25
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 330), align 16, !tbaa !61
  %63 = icmp eq ptr %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !72
  %67 = getelementptr inbounds %struct.tree_common, ptr %66, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !72
  %69 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %62, i32 noundef 3, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %70 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %68, ptr noundef %69) #25
  br label %71

71:                                               ; preds = %20, %13, %22, %15, %8, %6, %61, %56, %49, %52, %41, %64, %35
  %72 = phi ptr [ %40, %35 ], [ %70, %64 ], [ null, %15 ], [ null, %8 ], [ null, %41 ], [ null, %52 ], [ null, %49 ], [ null, %56 ], [ null, %61 ], [ null, %6 ], [ null, %22 ], [ null, %13 ], [ null, %20 ]
  ret ptr %72
}

declare ptr @omit_one_operand_loc(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @fold_call_expr(i32 noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #17 !prof !158 {
  %4 = tail call ptr @get_callee_fndecl(ptr noundef %1) #25
  %5 = icmp eq ptr %4, null
  br i1 %5, label %92, label %6, !prof !159

6:                                                ; preds = %3
  %7 = load i64, ptr %4, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 29
  br i1 %9, label %10, label %92, !prof !160

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_function_decl, ptr %4, i64 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 6144
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %92, label %15, !prof !161

15:                                               ; preds = %10
  %16 = load i64, ptr %1, align 8
  %17 = and i64 %16, 134217728
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %92, !prof !162

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !72
  %22 = getelementptr inbounds %struct.tree_int_cst, ptr %21, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !72
  %24 = trunc i64 %23 to i32
  %25 = add nsw i32 %24, -3
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %48, label %27, !prof !163

27:                                               ; preds = %19
  %28 = shl i64 %23, 32
  %29 = add i64 %28, -4294967296
  %30 = ashr exact i64 %29, 32
  %31 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !72
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 59
  br i1 %35, label %36, label %48, !prof !163

36:                                               ; preds = %27
  %37 = tail call ptr @get_callee_fndecl(ptr noundef nonnull %32) #25
  %38 = icmp eq ptr %37, null
  br i1 %38, label %48, label %39

39:                                               ; preds = %36
  %40 = load i64, ptr %37, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 29
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.tree_function_decl, ptr %37, i64 0, i32 5
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 8191
  %47 = icmp eq i32 %46, 6660
  br i1 %47, label %89, label %48

48:                                               ; preds = %43, %36, %39, %27, %19
  %49 = load i32, ptr %11, align 8
  %50 = and i32 %49, 2097152
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %68, label %52, !prof !164

52:                                               ; preds = %48
  %53 = and i32 %49, 67108864
  %54 = icmp ne i32 %53, 0
  %55 = load ptr, ptr @cfun, align 8
  %56 = icmp ne ptr %55, null
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %68

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.function, ptr %55, i64 0, i32 20
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 33554432
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.tree_decl_common, ptr %4, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !72
  %66 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.737, ptr noundef %65) #25
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %89, !prof !162

68:                                               ; preds = %58, %52, %48, %63
  %69 = load i32, ptr %11, align 8
  %70 = and i32 %69, 6144
  %71 = icmp eq i32 %70, 4096
  br i1 %71, label %72, label %76, !prof !163

72:                                               ; preds = %68
  %73 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 27), align 8, !tbaa !165
  %74 = tail call ptr @call_expr_arglist(ptr noundef nonnull %1) #25
  %75 = tail call ptr %73(ptr noundef nonnull %4, ptr noundef %74, i8 noundef zeroext %2) #25
  br label %89

76:                                               ; preds = %68
  %77 = icmp slt i32 %24, 8
  br i1 %77, label %78, label %81, !prof !162

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 2
  %80 = tail call fastcc ptr @fold_builtin_n(i32 noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %79, i32 noundef %25, i8 noundef zeroext %2)
  br label %81

81:                                               ; preds = %78, %76
  %82 = phi ptr [ %80, %78 ], [ null, %76 ]
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %86, !prof !162

84:                                               ; preds = %81
  %85 = tail call fastcc ptr @fold_builtin_varargs(i32 noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %1)
  br label %86

86:                                               ; preds = %84, %81
  %87 = phi ptr [ %82, %81 ], [ %85, %84 ]
  %88 = icmp eq ptr %87, null
  br label %89

89:                                               ; preds = %86, %63, %43, %72
  %90 = phi i1 [ false, %72 ], [ false, %43 ], [ false, %63 ], [ %88, %86 ]
  %91 = phi ptr [ %75, %72 ], [ null, %43 ], [ null, %63 ], [ %87, %86 ]
  br i1 %90, label %92, label %93, !prof !162

92:                                               ; preds = %89, %15, %10, %6, %3
  br label %93

93:                                               ; preds = %89, %92
  %94 = phi ptr [ null, %92 ], [ %91, %89 ]
  ret ptr %94
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @avoid_folding_inline_builtin(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !166 !PGOFuncName !167 {
  %2 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 2097152
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %23, label %6, !prof !164

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
  %19 = load ptr, ptr %18, align 8, !tbaa !72
  %20 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.737, ptr noundef %19) #25
  %21 = icmp ne ptr %20, null
  %22 = zext i1 %21 to i8
  br label %23

23:                                               ; preds = %17, %12, %6, %1
  %24 = phi i8 [ 0, %12 ], [ 0, %6 ], [ 0, %1 ], [ %22, %17 ]
  ret i8 %24
}

declare ptr @call_expr_arglist(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @fold_builtin_n(i32 noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i8 noundef zeroext %4) unnamed_addr #12 !prof !168 !PGOFuncName !169 {
  %6 = alloca %struct.real_value, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.real_value, align 8
  switch i32 %3, label %547 [
    i32 0, label %11
    i32 1, label %25
    i32 2, label %243
    i32 3, label %433
    i32 4, label %512
  ], !prof !170

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  %14 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 2047
  switch i32 %18, label %547 [
    i32 96, label %19
    i32 97, label %19
    i32 98, label %19
    i32 99, label %19
    i32 100, label %19
    i32 101, label %19
    i32 87, label %21
    i32 88, label %21
    i32 89, label %21
    i32 423, label %23
  ]

19:                                               ; preds = %11, %11, %11, %11, %11, %11
  %20 = tail call fastcc ptr @fold_builtin_inf(i32 noundef %0, ptr noundef %15, i32 noundef 1)
  br label %547

21:                                               ; preds = %11, %11, %11
  %22 = tail call fastcc ptr @fold_builtin_inf(i32 noundef %0, ptr noundef %15, i32 noundef 0)
  br label %547

23:                                               ; preds = %11
  %24 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef -1) #25
  br label %547

25:                                               ; preds = %5
  %26 = load ptr, ptr %2, align 8, !tbaa !61
  %27 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !72
  %29 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !72
  %31 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 2047
  switch i32 %33, label %547 [
    i32 428, label %34
    i32 423, label %42
    i32 345, label %44
    i32 57, label %46
    i32 58, label %46
    i32 59, label %46
    i32 413, label %48
    i32 488, label %48
    i32 489, label %48
    i32 458, label %48
    i32 297, label %50
    i32 298, label %50
    i32 299, label %50
    i32 306, label %66
    i32 307, label %66
    i32 308, label %66
    i32 288, label %83
    i32 289, label %83
    i32 290, label %83
    i32 162, label %102
    i32 163, label %102
    i32 164, label %102
    i32 165, label %102
    i32 166, label %102
    i32 167, label %102
    i32 377, label %241
    i32 366, label %241
    i32 365, label %241
    i32 480, label %239
    i32 479, label %239
    i32 478, label %239
    i32 477, label %239
    i32 476, label %239
    i32 475, label %239
    i32 468, label %237
    i32 481, label %235
    i32 474, label %230
    i32 473, label %230
    i32 472, label %230
    i32 471, label %230
    i32 470, label %230
    i32 469, label %230
    i32 467, label %225
    i32 465, label %225
    i32 464, label %225
    i32 463, label %225
    i32 462, label %225
    i32 461, label %225
    i32 460, label %225
    i32 387, label %223
    i32 395, label %221
    i32 384, label %219
    i32 150, label %217
    i32 149, label %217
    i32 148, label %217
    i32 95, label %217
    i32 94, label %217
    i32 93, label %217
    i32 218, label %215
    i32 217, label %215
    i32 216, label %215
    i32 168, label %104
    i32 169, label %104
    i32 170, label %104
    i32 261, label %100
    i32 262, label %100
    i32 263, label %100
    i32 63, label %106
    i32 64, label %106
    i32 65, label %106
    i32 24, label %108
    i32 25, label %108
    i32 26, label %108
    i32 212, label %213
    i32 211, label %213
    i32 210, label %213
    i32 496, label %211
    i32 495, label %211
    i32 493, label %211
    i32 500, label %211
    i32 499, label %211
    i32 497, label %211
    i32 432, label %211
    i32 431, label %211
    i32 429, label %211
    i32 427, label %211
    i32 426, label %211
    i32 424, label %211
    i32 452, label %211
    i32 451, label %211
    i32 449, label %211
    i32 420, label %209
    i32 419, label %209
    i32 134, label %207
    i32 240, label %110
    i32 241, label %110
    i32 242, label %110
    i32 198, label %112
    i32 199, label %112
    i32 200, label %112
    i32 171, label %114
    i32 172, label %114
    i32 173, label %114
    i32 133, label %207
    i32 132, label %207
    i32 155, label %207
    i32 154, label %207
    i32 153, label %207
    i32 137, label %116
    i32 195, label %114
    i32 196, label %114
    i32 197, label %114
    i32 136, label %116
    i32 135, label %116
    i32 158, label %116
    i32 157, label %116
    i32 156, label %116
    i32 131, label %116
    i32 130, label %116
    i32 129, label %116
    i32 119, label %116
    i32 118, label %116
    i32 117, label %116
    i32 128, label %116
    i32 127, label %116
    i32 126, label %116
    i32 113, label %116
    i32 112, label %116
    i32 111, label %116
  ], !prof !171

34:                                               ; preds = %25
  %35 = tail call fastcc ptr @fold_builtin_constant_p(ptr noundef %26)
  %36 = icmp ne ptr %35, null
  %37 = load i32, ptr @optimize, align 4
  %38 = icmp ne i32 %37, 0
  %39 = select i1 %36, i1 true, i1 %38
  %40 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8
  %41 = select i1 %39, ptr %35, ptr %40
  br label %547

42:                                               ; preds = %25
  %43 = tail call fastcc ptr @fold_builtin_classify_type(ptr noundef %26)
  br label %547

44:                                               ; preds = %25
  %45 = tail call fastcc ptr @fold_builtin_strlen(i32 noundef %0, ptr noundef %30, ptr noundef %26)
  br label %547

46:                                               ; preds = %25, %25, %25
  %47 = tail call fastcc ptr @fold_builtin_fabs(i32 noundef %0, ptr noundef %26, ptr noundef %30)
  br label %547

48:                                               ; preds = %25, %25, %25, %25
  %49 = tail call fastcc ptr @fold_builtin_abs(i32 noundef %0, ptr noundef %26, ptr noundef %30)
  br label %547

50:                                               ; preds = %25, %25, %25
  %51 = icmp eq ptr %26, null
  br i1 %51, label %547, label %52

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !72
  %55 = load i64, ptr %54, align 8
  %56 = and i64 %55, 65535
  %57 = icmp eq i64 %56, 13
  br i1 %57, label %58, label %547

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.tree_common, ptr %54, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !72
  %61 = load i64, ptr %60, align 8
  %62 = and i64 %61, 65535
  %63 = icmp eq i64 %62, 9
  br i1 %63, label %64, label %547

64:                                               ; preds = %58
  %65 = tail call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 124, ptr noundef %30, ptr noundef nonnull %26) #25
  br label %547

66:                                               ; preds = %25, %25, %25
  %67 = icmp eq ptr %26, null
  br i1 %67, label %547, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !72
  %71 = load i64, ptr %70, align 8
  %72 = and i64 %71, 65535
  %73 = icmp eq i64 %72, 13
  br i1 %73, label %74, label %547

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.tree_common, ptr %70, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !72
  %77 = load i64, ptr %76, align 8
  %78 = and i64 %77, 65535
  %79 = icmp eq i64 %78, 9
  br i1 %79, label %80, label %547

80:                                               ; preds = %74
  %81 = tail call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 43, ptr noundef %30, ptr noundef nonnull %26) #25
  %82 = tail call ptr @non_lvalue_loc(i32 noundef %0, ptr noundef %81) #25
  br label %547

83:                                               ; preds = %25, %25, %25
  %84 = icmp eq ptr %26, null
  br i1 %84, label %547, label %85

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !72
  %88 = load i64, ptr %87, align 8
  %89 = and i64 %88, 65535
  %90 = icmp eq i64 %89, 13
  br i1 %90, label %91, label %547

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.tree_common, ptr %87, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !72
  %94 = load i64, ptr %93, align 8
  %95 = and i64 %94, 65535
  %96 = icmp eq i64 %95, 9
  br i1 %96, label %97, label %547

97:                                               ; preds = %91
  %98 = tail call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 44, ptr noundef %30, ptr noundef nonnull %26) #25
  %99 = tail call ptr @non_lvalue_loc(i32 noundef %0, ptr noundef %98) #25
  br label %547

100:                                              ; preds = %25, %25, %25
  %101 = tail call fastcc ptr @fold_builtin_carg(i32 noundef %0, ptr noundef %26, ptr noundef %30)
  br label %547

102:                                              ; preds = %25, %25, %25, %25, %25, %25
  %103 = tail call fastcc ptr @fold_builtin_nan(ptr noundef %26, ptr noundef %30, i32 noundef 1)
  br label %547

104:                                              ; preds = %25, %25, %25
  %105 = tail call fastcc ptr @fold_builtin_nan(ptr noundef %26, ptr noundef %30, i32 noundef 0)
  br label %547

106:                                              ; preds = %25, %25, %25
  %107 = tail call fastcc ptr @fold_builtin_floor(i32 noundef %0, ptr noundef %1, ptr noundef %26)
  br label %547

108:                                              ; preds = %25, %25, %25
  %109 = tail call fastcc ptr @fold_builtin_ceil(i32 noundef %0, ptr noundef %1, ptr noundef %26)
  br label %547

110:                                              ; preds = %25, %25, %25
  %111 = tail call fastcc ptr @fold_builtin_trunc(i32 noundef %0, ptr noundef %1, ptr noundef %26)
  br label %547

112:                                              ; preds = %25, %25, %25
  %113 = tail call fastcc ptr @fold_builtin_round(i32 noundef %0, ptr noundef %1, ptr noundef %26)
  br label %547

114:                                              ; preds = %25, %25, %25, %25, %25, %25
  %115 = tail call fastcc ptr @fold_trunc_transparent_mathfn(i32 noundef %0, ptr noundef %1, ptr noundef %26)
  br label %547

116:                                              ; preds = %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25
  %117 = icmp eq ptr %26, null
  br i1 %117, label %547, label %118

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !72
  %121 = load i64, ptr %120, align 8
  %122 = and i64 %121, 65535
  %123 = icmp eq i64 %122, 9
  br i1 %123, label %124, label %547

124:                                              ; preds = %118
  %125 = load i64, ptr %26, align 8
  %126 = and i64 %125, 134283263
  %127 = icmp eq i64 %126, 24
  br i1 %127, label %128, label %194

128:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #25
  %129 = getelementptr inbounds %struct.tree_real_cst, ptr %26, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %130, i64 32, i1 false), !tbaa.struct !172
  %131 = call zeroext i8 @real_isfinite(ptr noundef nonnull %6) #25
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %191, label %133

133:                                              ; preds = %128
  %134 = load ptr, ptr %27, align 8, !tbaa !72
  %135 = getelementptr inbounds %struct.tree_common, ptr %134, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !72
  %137 = load ptr, ptr %119, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #25
  %138 = load i32, ptr %31, align 8
  %139 = and i32 %138, 2047
  switch i32 %139, label %179 [
    i32 117, label %140
    i32 118, label %140
    i32 119, label %140
    i32 129, label %140
    i32 130, label %140
    i32 131, label %140
    i32 111, label %153
    i32 112, label %153
    i32 113, label %153
    i32 126, label %153
    i32 127, label %153
    i32 128, label %153
    i32 156, label %166
    i32 157, label %166
    i32 158, label %166
    i32 135, label %166
    i32 136, label %166
    i32 137, label %166
  ]

140:                                              ; preds = %133, %133, %133, %133, %133, %133
  %141 = load i64, ptr %137, align 8
  %142 = and i64 %141, 65535
  %143 = icmp eq i64 %142, 14
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = call i32 @vector_type_mode(ptr noundef nonnull %137) #25
  br label %151

146:                                              ; preds = %140
  %147 = getelementptr inbounds %struct.tree_type, ptr %137, i64 0, i32 6
  %148 = load i32, ptr %147, align 4
  %149 = lshr i32 %148, 16
  %150 = and i32 %149, 255
  br label %151

151:                                              ; preds = %146, %144
  %152 = phi i32 [ %145, %144 ], [ %150, %146 ]
  call void @real_floor(ptr noundef nonnull %10, i32 noundef %152, ptr noundef nonnull %6) #25
  br label %180

153:                                              ; preds = %133, %133, %133, %133, %133, %133
  %154 = load i64, ptr %137, align 8
  %155 = and i64 %154, 65535
  %156 = icmp eq i64 %155, 14
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = call i32 @vector_type_mode(ptr noundef nonnull %137) #25
  br label %164

159:                                              ; preds = %153
  %160 = getelementptr inbounds %struct.tree_type, ptr %137, i64 0, i32 6
  %161 = load i32, ptr %160, align 4
  %162 = lshr i32 %161, 16
  %163 = and i32 %162, 255
  br label %164

164:                                              ; preds = %159, %157
  %165 = phi i32 [ %158, %157 ], [ %163, %159 ]
  call void @real_ceil(ptr noundef nonnull %10, i32 noundef %165, ptr noundef nonnull %6) #25
  br label %180

166:                                              ; preds = %133, %133, %133, %133, %133, %133
  %167 = load i64, ptr %137, align 8
  %168 = and i64 %167, 65535
  %169 = icmp eq i64 %168, 14
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = call i32 @vector_type_mode(ptr noundef nonnull %137) #25
  br label %177

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.tree_type, ptr %137, i64 0, i32 6
  %174 = load i32, ptr %173, align 4
  %175 = lshr i32 %174, 16
  %176 = and i32 %175, 255
  br label %177

177:                                              ; preds = %172, %170
  %178 = phi i32 [ %171, %170 ], [ %176, %172 ]
  call void @real_round(ptr noundef nonnull %10, i32 noundef %178, ptr noundef nonnull %6) #25
  br label %180

179:                                              ; preds = %133
  call void @fancy_abort(ptr noundef nonnull @.str.724, i32 noundef 7529, ptr noundef nonnull @.str.725) #25
  br label %180

180:                                              ; preds = %179, %177, %164, %151
  call void @real_to_integer2(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %10) #25
  %181 = load i64, ptr %9, align 8, !tbaa !82
  %182 = load i64, ptr %8, align 8, !tbaa !82
  %183 = call i32 @fit_double_type(i64 noundef %181, i64 noundef %182, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef %136) #25
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %180
  %186 = load i64, ptr %7, align 8, !tbaa !82
  %187 = load i64, ptr %8, align 8, !tbaa !82
  %188 = call ptr @build_int_cst_wide(ptr noundef %136, i64 noundef %186, i64 noundef %187) #25
  br label %189

189:                                              ; preds = %185, %180
  %190 = phi ptr [ %188, %185 ], [ undef, %180 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #25
  br label %191

191:                                              ; preds = %189, %128
  %192 = phi ptr [ undef, %128 ], [ %190, %189 ]
  %193 = phi i1 [ true, %128 ], [ %184, %189 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #25
  br i1 %193, label %194, label %547

194:                                              ; preds = %191, %124
  %195 = load i32, ptr %31, align 8
  %196 = and i32 %195, 2047
  switch i32 %196, label %205 [
    i32 117, label %197
    i32 118, label %197
    i32 119, label %197
    i32 129, label %197
    i32 130, label %197
    i32 131, label %197
  ]

197:                                              ; preds = %194, %194, %194, %194, %194, %194
  %198 = call zeroext i8 @tree_expr_nonnegative_p(ptr noundef nonnull %26) #25
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %205, label %200

200:                                              ; preds = %197
  %201 = load ptr, ptr %27, align 8, !tbaa !72
  %202 = getelementptr inbounds %struct.tree_common, ptr %201, i64 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !72
  %204 = call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 77, ptr noundef %203, ptr noundef nonnull %26) #25
  br label %547

205:                                              ; preds = %194, %197
  %206 = call fastcc ptr @fold_fixed_mathfn(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %26)
  br label %547

207:                                              ; preds = %25, %25, %25, %25, %25, %25
  %208 = tail call fastcc ptr @fold_fixed_mathfn(i32 noundef %0, ptr noundef %1, ptr noundef %26)
  br label %547

209:                                              ; preds = %25, %25
  %210 = tail call fastcc ptr @fold_builtin_bswap(ptr noundef %1, ptr noundef %26)
  br label %547

211:                                              ; preds = %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25, %25
  %212 = tail call fastcc ptr @fold_builtin_bitop(ptr noundef %1, ptr noundef %26)
  br label %547

213:                                              ; preds = %25, %25, %25
  %214 = tail call fastcc ptr @fold_builtin_signbit(i32 noundef %0, ptr noundef %26, ptr noundef %30)
  br label %547

215:                                              ; preds = %25, %25, %25
  %216 = tail call fastcc ptr @fold_builtin_significand(i32 noundef %0, ptr noundef %26, ptr noundef %30)
  br label %547

217:                                              ; preds = %25, %25, %25, %25, %25, %25
  %218 = tail call fastcc ptr @fold_builtin_logb(i32 noundef %0, ptr noundef %26, ptr noundef %30)
  br label %547

219:                                              ; preds = %25
  %220 = tail call fastcc ptr @fold_builtin_isascii(i32 noundef %0, ptr noundef %26)
  br label %547

221:                                              ; preds = %25
  %222 = tail call fastcc ptr @fold_builtin_toascii(i32 noundef %0, ptr noundef %26)
  br label %547

223:                                              ; preds = %25
  %224 = tail call fastcc ptr @fold_builtin_isdigit(i32 noundef %0, ptr noundef %26)
  br label %547

225:                                              ; preds = %25, %25, %25, %25, %25, %25, %25
  %226 = tail call fastcc ptr @fold_builtin_classify(i32 noundef %0, ptr noundef %1, ptr noundef %26, i32 noundef 467)
  %227 = icmp eq ptr %226, null
  br i1 %227, label %228, label %547

228:                                              ; preds = %225
  %229 = tail call fastcc ptr @fold_builtin_interclass_mathfn(i32 noundef %0, ptr noundef %1, ptr noundef %26)
  br label %547

230:                                              ; preds = %25, %25, %25, %25, %25, %25
  %231 = tail call fastcc ptr @fold_builtin_classify(i32 noundef %0, ptr noundef %1, ptr noundef %26, i32 noundef 469)
  %232 = icmp eq ptr %231, null
  br i1 %232, label %233, label %547

233:                                              ; preds = %230
  %234 = tail call fastcc ptr @fold_builtin_interclass_mathfn(i32 noundef %0, ptr noundef %1, ptr noundef %26)
  br label %547

235:                                              ; preds = %25
  %236 = tail call fastcc ptr @fold_builtin_interclass_mathfn(i32 noundef %0, ptr noundef %1, ptr noundef %26)
  br label %547

237:                                              ; preds = %25
  %238 = tail call fastcc ptr @fold_builtin_classify(i32 noundef %0, ptr noundef %1, ptr noundef %26, i32 noundef 468)
  br label %547

239:                                              ; preds = %25, %25, %25, %25, %25, %25
  %240 = tail call fastcc ptr @fold_builtin_classify(i32 noundef %0, ptr noundef %1, ptr noundef %26, i32 noundef 475)
  br label %547

241:                                              ; preds = %25, %25, %25
  %242 = tail call fastcc ptr @fold_builtin_printf(i32 noundef %0, ptr noundef %1, ptr noundef %26, ptr noundef null, i8 noundef zeroext %4, i32 noundef %33)
  br label %547

243:                                              ; preds = %5
  %244 = load ptr, ptr %2, align 8, !tbaa !61
  %245 = getelementptr inbounds ptr, ptr %2, i64 1
  %246 = load ptr, ptr %245, align 8, !tbaa !61
  %247 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %248 = load ptr, ptr %247, align 8, !tbaa !72
  %249 = getelementptr inbounds %struct.tree_common, ptr %248, i64 0, i32 2
  %250 = load ptr, ptr %249, align 8, !tbaa !72
  %251 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %252 = load i32, ptr %251, align 8
  %253 = and i32 %252, 2047
  switch i32 %253, label %432 [
    i32 108, label %547
    i32 109, label %547
    i32 110, label %547
    i32 249, label %547
    i32 250, label %547
    i32 251, label %547
    i32 36, label %547
    i32 37, label %547
    i32 38, label %547
    i32 189, label %547
    i32 190, label %547
    i32 191, label %547
    i32 84, label %547
    i32 85, label %547
    i32 86, label %547
    i32 123, label %547
    i32 124, label %547
    i32 125, label %547
    i32 13, label %547
    i32 14, label %547
    i32 15, label %547
    i32 60, label %547
    i32 61, label %547
    i32 62, label %547
    i32 90, label %547
    i32 91, label %547
    i32 92, label %547
    i32 300, label %547
    i32 301, label %547
    i32 302, label %547
    i32 114, label %254
    i32 115, label %254
    i32 116, label %254
    i32 207, label %256
    i32 208, label %256
    i32 209, label %256
    i32 204, label %256
    i32 205, label %256
    i32 206, label %256
    i32 78, label %258
    i32 79, label %258
    i32 80, label %258
    i32 159, label %260
    i32 160, label %260
    i32 161, label %260
    i32 326, label %262
    i32 360, label %264
    i32 361, label %266
    i32 353, label %268
    i32 338, label %270
    i32 352, label %272
    i32 342, label %274
    i32 339, label %276
    i32 327, label %276
    i32 351, label %278
    i32 334, label %278
    i32 341, label %280
    i32 335, label %282
    i32 340, label %293
    i32 350, label %295
    i32 446, label %297
    i32 180, label %547
    i32 184, label %547
    i32 188, label %547
    i32 185, label %389
    i32 186, label %389
    i32 187, label %389
    i32 27, label %391
    i32 28, label %391
    i32 29, label %391
    i32 72, label %547
    i32 73, label %547
    i32 74, label %547
    i32 69, label %547
    i32 70, label %547
    i32 71, label %547
    i32 482, label %393
    i32 483, label %395
    i32 484, label %397
    i32 485, label %399
    i32 486, label %401
    i32 487, label %403
    i32 375, label %430
    i32 373, label %405
    i32 528, label %408
    i32 365, label %410
    i32 366, label %410
    i32 377, label %410
    i32 543, label %412
    i32 545, label %412
    i32 354, label %430
    i32 355, label %430
  ], !prof !173

254:                                              ; preds = %243, %243, %243
  %255 = tail call fastcc ptr @fold_builtin_load_exponent(i32 noundef %0, ptr noundef %244, ptr noundef %246, ptr noundef %250, i8 noundef zeroext 1)
  br label %547

256:                                              ; preds = %243, %243, %243, %243, %243, %243
  %257 = tail call fastcc ptr @fold_builtin_load_exponent(i32 noundef %0, ptr noundef %244, ptr noundef %246, ptr noundef %250, i8 noundef zeroext 0)
  br label %547

258:                                              ; preds = %243, %243, %243
  %259 = tail call fastcc ptr @fold_builtin_frexp(i32 noundef %0, ptr noundef %244, ptr noundef %246, ptr noundef %250)
  br label %547

260:                                              ; preds = %243, %243, %243
  %261 = tail call fastcc ptr @fold_builtin_modf(i32 noundef %0, ptr noundef %244, ptr noundef %246, ptr noundef %250)
  br label %547

262:                                              ; preds = %243
  %263 = tail call fastcc ptr @fold_builtin_bzero(i32 noundef %0, ptr noundef %244, ptr noundef %246, i8 noundef zeroext %4)
  br label %547

264:                                              ; preds = %243
  %265 = tail call ptr @fold_builtin_fputs(i32 noundef %0, ptr noundef %244, ptr noundef %246, i8 noundef zeroext %4, i8 noundef zeroext 0, ptr noundef null)
  br label %547

266:                                              ; preds = %243
  %267 = tail call ptr @fold_builtin_fputs(i32 noundef %0, ptr noundef %244, ptr noundef %246, i8 noundef zeroext %4, i8 noundef zeroext 1, ptr noundef null)
  br label %547

268:                                              ; preds = %243
  %269 = tail call fastcc ptr @fold_builtin_strstr(i32 noundef %0, ptr noundef %244, ptr noundef %246, ptr noundef %250)
  br label %547

270:                                              ; preds = %243
  %271 = tail call fastcc ptr @fold_builtin_strcat(i32 noundef %0, ptr noundef %244, ptr noundef %246)
  br label %547

272:                                              ; preds = %243
  %273 = tail call fastcc ptr @fold_builtin_strspn(i32 noundef %0, ptr noundef %244, ptr noundef %246)
  br label %547

274:                                              ; preds = %243
  %275 = tail call fastcc ptr @fold_builtin_strcspn(i32 noundef %0, ptr noundef %244, ptr noundef %246)
  br label %547

276:                                              ; preds = %243, %243
  %277 = tail call fastcc ptr @fold_builtin_strchr(i32 noundef %0, ptr noundef %244, ptr noundef %246, ptr noundef %250)
  br label %547

278:                                              ; preds = %243, %243
  %279 = tail call fastcc ptr @fold_builtin_strrchr(i32 noundef %0, ptr noundef %244, ptr noundef %246, ptr noundef %250)
  br label %547

280:                                              ; preds = %243
  %281 = tail call ptr @fold_builtin_strcpy(i32 noundef %0, ptr noundef %1, ptr noundef %244, ptr noundef %246, ptr noundef null)
  br label %547

282:                                              ; preds = %243
  %283 = icmp eq i8 %4, 0
  br i1 %283, label %291, label %284

284:                                              ; preds = %282
  %285 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 341), align 8, !tbaa !61
  %286 = icmp eq ptr %285, null
  br i1 %286, label %289, label %287

287:                                              ; preds = %284
  %288 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %285, i32 noundef 2, ptr noundef %244, ptr noundef %246)
  br label %289

289:                                              ; preds = %287, %284
  %290 = phi ptr [ %288, %287 ], [ undef, %284 ]
  br i1 %286, label %432, label %547

291:                                              ; preds = %282
  %292 = tail call fastcc ptr @fold_builtin_stpcpy(i32 noundef %0, ptr noundef %1, ptr noundef %244, ptr noundef %246)
  br label %547

293:                                              ; preds = %243
  %294 = tail call fastcc ptr @fold_builtin_strcmp(i32 noundef %0, ptr noundef %244, ptr noundef %246)
  br label %547

295:                                              ; preds = %243
  %296 = tail call fastcc ptr @fold_builtin_strpbrk(i32 noundef %0, ptr noundef %244, ptr noundef %246, ptr noundef %250)
  br label %547

297:                                              ; preds = %243
  %298 = load i64, ptr %244, align 8
  %299 = and i64 %298, 65535
  %300 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %299
  %301 = load i32, ptr %300, align 4, !tbaa !76
  %302 = icmp eq i32 %301, 5
  br i1 %302, label %303, label %312, !prof !174

303:                                              ; preds = %297
  %304 = getelementptr inbounds %struct.tree_exp, ptr %244, i64 1
  %305 = load ptr, ptr %304, align 8, !tbaa !72
  %306 = load i64, ptr %305, align 8
  %307 = and i64 %306, 65535
  %308 = icmp eq i64 %307, 23
  br i1 %308, label %309, label %312, !prof !175

309:                                              ; preds = %303
  %310 = getelementptr inbounds %struct.tree_exp, ptr %244, i64 0, i32 3
  %311 = load ptr, ptr %310, align 8, !tbaa !72
  br label %312

312:                                              ; preds = %309, %303, %297
  %313 = phi ptr [ %311, %309 ], [ %244, %303 ], [ %244, %297 ]
  %314 = load i64, ptr %313, align 8
  %315 = and i64 %314, 65535
  %316 = icmp eq i64 %315, 59
  br i1 %316, label %317, label %325, !prof !176

317:                                              ; preds = %312
  %318 = tail call ptr @get_callee_fndecl(ptr noundef nonnull %313) #25
  %319 = icmp eq ptr %318, null
  br i1 %319, label %325, label %320

320:                                              ; preds = %317
  %321 = getelementptr inbounds %struct.tree_function_decl, ptr %318, i64 0, i32 5
  %322 = load i32, ptr %321, align 8
  %323 = and i32 %322, 8191
  %324 = icmp eq i32 %323, 6590
  br i1 %324, label %547, label %325

325:                                              ; preds = %320, %317, %312
  br label %326

326:                                              ; preds = %325, %339
  %327 = phi ptr [ %341, %339 ], [ %244, %325 ]
  %328 = load i64, ptr %327, align 8
  %329 = and i64 %328, 65535
  %330 = icmp eq i64 %329, 116
  br i1 %330, label %331, label %349, !prof !176

331:                                              ; preds = %326
  %332 = getelementptr inbounds %struct.tree_common, ptr %327, i64 0, i32 2
  %333 = load ptr, ptr %332, align 8, !tbaa !72
  %334 = load i64, ptr %333, align 8
  %335 = trunc i64 %334 to i32
  %336 = and i32 %335, 65535
  %337 = add nsw i32 %336, -6
  %338 = icmp ult i32 %337, 3
  br i1 %338, label %339, label %349

339:                                              ; preds = %331
  %340 = getelementptr inbounds %struct.tree_exp, ptr %327, i64 0, i32 3
  %341 = load ptr, ptr %340, align 8, !tbaa !72
  %342 = getelementptr inbounds %struct.tree_common, ptr %341, i64 0, i32 2
  %343 = load ptr, ptr %342, align 8, !tbaa !72
  %344 = load i64, ptr %343, align 8
  %345 = trunc i64 %344 to i32
  %346 = and i32 %345, 65535
  %347 = add nsw i32 %346, -6
  %348 = icmp ult i32 %347, 3
  br i1 %348, label %326, label %349, !llvm.loop !177

349:                                              ; preds = %339, %331, %326
  %350 = trunc i64 %328 to i32
  %351 = and i32 %350, 65535
  %352 = add nsw i32 %351, -91
  %353 = icmp ult i32 %352, 2
  br i1 %353, label %354, label %367, !prof !176

354:                                              ; preds = %349
  %355 = getelementptr inbounds %struct.tree_exp, ptr %327, i64 0, i32 3
  %356 = load ptr, ptr %355, align 8, !tbaa !72
  %357 = getelementptr inbounds %struct.tree_exp, ptr %327, i64 1
  %358 = load ptr, ptr %357, align 8, !tbaa !72
  %359 = tail call fastcc ptr @build_builtin_expect_predicate(i32 noundef %0, ptr noundef %356, ptr noundef %246)
  %360 = tail call fastcc ptr @build_builtin_expect_predicate(i32 noundef %0, ptr noundef %358, ptr noundef %246)
  %361 = getelementptr inbounds %struct.tree_common, ptr %327, i64 0, i32 2
  %362 = load ptr, ptr %361, align 8, !tbaa !72
  %363 = tail call ptr @build2_stat(i32 noundef %351, ptr noundef %362, ptr noundef %359, ptr noundef %360) #25
  %364 = getelementptr inbounds %struct.tree_common, ptr %244, i64 0, i32 2
  %365 = load ptr, ptr %364, align 8, !tbaa !72
  %366 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %365, ptr noundef %363) #25
  br label %547

367:                                              ; preds = %349
  %368 = load i64, ptr %244, align 8
  %369 = and i64 %368, 131072
  %370 = icmp eq i64 %369, 0
  br i1 %370, label %547, label %371, !prof !174

371:                                              ; preds = %367
  %372 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %244) #25
  %373 = load i64, ptr %372, align 8
  %374 = and i64 %373, 65535
  %375 = icmp eq i64 %374, 121
  br i1 %375, label %376, label %388

376:                                              ; preds = %371, %382
  %377 = phi ptr [ %379, %382 ], [ %372, %371 ]
  %378 = getelementptr inbounds %struct.tree_exp, ptr %377, i64 0, i32 3
  %379 = load ptr, ptr %378, align 8, !tbaa !72
  %380 = load i64, ptr %379, align 8
  %381 = trunc i64 %380 to i16
  switch i16 %381, label %388 [
    i16 41, label %382
    i16 45, label %382
    i16 32, label %383
    i16 29, label %383
  ]

382:                                              ; preds = %376, %376
  br label %376

383:                                              ; preds = %376, %376
  %384 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %379, i64 0, i32 4
  %385 = load i32, ptr %384, align 8
  %386 = and i32 %385, 128
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %388, label %547

388:                                              ; preds = %376, %383, %371
  br label %547

389:                                              ; preds = %243, %243, %243
  %390 = tail call fastcc ptr @fold_builtin_powi(i32 noundef %0, ptr noundef %244, ptr noundef %246, ptr noundef %250)
  br label %547

391:                                              ; preds = %243, %243, %243
  %392 = tail call fastcc ptr @fold_builtin_copysign(i32 noundef %0, ptr noundef %1, ptr noundef %244, ptr noundef %246, ptr noundef %250)
  br label %547

393:                                              ; preds = %243
  %394 = tail call fastcc ptr @fold_builtin_unordered_cmp(i32 noundef %0, ptr noundef %1, ptr noundef %244, ptr noundef %246, i32 noundef 106, i32 noundef 98)
  br label %547

395:                                              ; preds = %243
  %396 = tail call fastcc ptr @fold_builtin_unordered_cmp(i32 noundef %0, ptr noundef %1, ptr noundef %244, ptr noundef %246, i32 noundef 105, i32 noundef 97)
  br label %547

397:                                              ; preds = %243
  %398 = tail call fastcc ptr @fold_builtin_unordered_cmp(i32 noundef %0, ptr noundef %1, ptr noundef %244, ptr noundef %246, i32 noundef 108, i32 noundef 100)
  br label %547

399:                                              ; preds = %243
  %400 = tail call fastcc ptr @fold_builtin_unordered_cmp(i32 noundef %0, ptr noundef %1, ptr noundef %244, ptr noundef %246, i32 noundef 107, i32 noundef 99)
  br label %547

401:                                              ; preds = %243
  %402 = tail call fastcc ptr @fold_builtin_unordered_cmp(i32 noundef %0, ptr noundef %1, ptr noundef %244, ptr noundef %246, i32 noundef 109, i32 noundef 101)
  br label %547

403:                                              ; preds = %243
  %404 = tail call fastcc ptr @fold_builtin_unordered_cmp(i32 noundef %0, ptr noundef %1, ptr noundef %244, ptr noundef %246, i32 noundef 103, i32 noundef 116)
  br label %547

405:                                              ; preds = %243
  %406 = zext i8 %4 to i32
  %407 = tail call fastcc ptr @fold_builtin_sprintf(i32 noundef %0, ptr noundef %244, ptr noundef %246, ptr noundef null, i32 noundef %406)
  br label %547

408:                                              ; preds = %243
  %409 = tail call fastcc ptr @fold_builtin_object_size(ptr noundef %244, ptr noundef %246)
  br label %547

410:                                              ; preds = %243, %243, %243
  %411 = tail call fastcc ptr @fold_builtin_printf(i32 noundef %0, ptr noundef %1, ptr noundef %244, ptr noundef %246, i8 noundef zeroext %4, i32 noundef %253)
  br label %547

412:                                              ; preds = %243, %243
  %413 = icmp eq ptr %244, null
  br i1 %413, label %547, label %414

414:                                              ; preds = %412
  %415 = getelementptr inbounds %struct.tree_common, ptr %244, i64 0, i32 2
  %416 = load ptr, ptr %415, align 8, !tbaa !72
  %417 = load i64, ptr %416, align 8
  %418 = trunc i64 %417 to i32
  %419 = and i32 %418, 65534
  %420 = icmp ne i32 %419, 6
  %421 = and i32 %418, 65535
  %422 = icmp ne i32 %421, 8
  %423 = and i1 %420, %422
  br i1 %423, label %547, label %424

424:                                              ; preds = %414
  %425 = load i64, ptr %244, align 8
  %426 = and i64 %425, 65536
  %427 = icmp eq i64 %426, 0
  br i1 %427, label %428, label %547

428:                                              ; preds = %424
  %429 = tail call fastcc ptr @fold_builtin_printf(i32 noundef %0, ptr noundef %1, ptr noundef %246, ptr noundef null, i8 noundef zeroext %4, i32 noundef %253)
  br label %547

430:                                              ; preds = %243, %243, %243
  %431 = tail call fastcc ptr @fold_builtin_fprintf(i32 noundef %0, ptr noundef %1, ptr noundef %244, ptr noundef %246, ptr noundef null, i8 noundef zeroext %4, i32 noundef %253)
  br label %547

432:                                              ; preds = %289, %243
  br label %547

433:                                              ; preds = %5
  %434 = load ptr, ptr %2, align 8, !tbaa !61
  %435 = getelementptr inbounds ptr, ptr %2, i64 1
  %436 = load ptr, ptr %435, align 8, !tbaa !61
  %437 = getelementptr inbounds ptr, ptr %2, i64 2
  %438 = load ptr, ptr %437, align 8, !tbaa !61
  %439 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %440 = load ptr, ptr %439, align 8, !tbaa !72
  %441 = getelementptr inbounds %struct.tree_common, ptr %440, i64 0, i32 2
  %442 = load ptr, ptr %441, align 8, !tbaa !72
  %443 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %444 = load i32, ptr %443, align 8
  %445 = and i32 %444, 2047
  switch i32 %445, label %547 [
    i32 543, label %474
    i32 534, label %472
    i32 533, label %470
    i32 544, label %494
    i32 542, label %494
    i32 375, label %492
    i32 355, label %492
    i32 354, label %492
    i32 545, label %474
    i32 333, label %446
    i32 325, label %448
    i32 330, label %451
    i32 332, label %453
    i32 331, label %455
    i32 347, label %457
    i32 349, label %459
    i32 348, label %461
    i32 328, label %463
    i32 324, label %465
    i32 329, label %465
    i32 373, label %467
    i32 535, label %470
  ], !prof !178

446:                                              ; preds = %433
  %447 = tail call fastcc ptr @fold_builtin_memset(i32 noundef %0, ptr noundef %434, ptr noundef %436, ptr noundef %438, ptr noundef %442, i8 noundef zeroext %4)
  br label %547

448:                                              ; preds = %433
  %449 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !61
  %450 = tail call fastcc ptr @fold_builtin_memory_op(i32 noundef %0, ptr noundef %436, ptr noundef %434, ptr noundef %438, ptr noundef %449, i8 noundef zeroext 1, i32 noundef 3)
  br label %547

451:                                              ; preds = %433
  %452 = tail call fastcc ptr @fold_builtin_memory_op(i32 noundef %0, ptr noundef %434, ptr noundef %436, ptr noundef %438, ptr noundef %442, i8 noundef zeroext %4, i32 noundef 0)
  br label %547

453:                                              ; preds = %433
  %454 = tail call fastcc ptr @fold_builtin_memory_op(i32 noundef %0, ptr noundef %434, ptr noundef %436, ptr noundef %438, ptr noundef %442, i8 noundef zeroext %4, i32 noundef 1)
  br label %547

455:                                              ; preds = %433
  %456 = tail call fastcc ptr @fold_builtin_memory_op(i32 noundef %0, ptr noundef %434, ptr noundef %436, ptr noundef %438, ptr noundef %442, i8 noundef zeroext %4, i32 noundef 3)
  br label %547

457:                                              ; preds = %433
  %458 = tail call fastcc ptr @fold_builtin_strncat(i32 noundef %0, ptr noundef %434, ptr noundef %436, ptr noundef %438)
  br label %547

459:                                              ; preds = %433
  %460 = tail call ptr @fold_builtin_strncpy(i32 noundef %0, ptr noundef %1, ptr noundef %434, ptr noundef %436, ptr noundef %438, ptr noundef null)
  br label %547

461:                                              ; preds = %433
  %462 = tail call fastcc ptr @fold_builtin_strncmp(i32 noundef %0, ptr noundef %434, ptr noundef %436, ptr noundef %438)
  br label %547

463:                                              ; preds = %433
  %464 = tail call fastcc ptr @fold_builtin_memchr(i32 noundef %0, ptr noundef %434, ptr noundef %436, ptr noundef %438, ptr noundef %442)
  br label %547

465:                                              ; preds = %433, %433
  %466 = tail call fastcc ptr @fold_builtin_memcmp(i32 noundef %0, ptr noundef %434, ptr noundef %436, ptr noundef %438)
  br label %547

467:                                              ; preds = %433
  %468 = zext i8 %4 to i32
  %469 = tail call fastcc ptr @fold_builtin_sprintf(i32 noundef %0, ptr noundef %434, ptr noundef %436, ptr noundef %438, i32 noundef %468)
  br label %547

470:                                              ; preds = %433, %433
  %471 = tail call ptr @fold_builtin_stxcpy_chk(i32 noundef %0, ptr noundef %1, ptr noundef %434, ptr noundef %436, ptr noundef %438, ptr noundef null, i8 noundef zeroext %4, i32 noundef %445)
  br label %547

472:                                              ; preds = %433
  %473 = tail call fastcc ptr @fold_builtin_strcat_chk(i32 noundef %0, ptr noundef %1, ptr noundef %434, ptr noundef %436, ptr noundef %438)
  br label %547

474:                                              ; preds = %433, %433
  %475 = icmp eq ptr %434, null
  br i1 %475, label %547, label %476

476:                                              ; preds = %474
  %477 = getelementptr inbounds %struct.tree_common, ptr %434, i64 0, i32 2
  %478 = load ptr, ptr %477, align 8, !tbaa !72
  %479 = load i64, ptr %478, align 8
  %480 = trunc i64 %479 to i32
  %481 = and i32 %480, 65534
  %482 = icmp ne i32 %481, 6
  %483 = and i32 %480, 65535
  %484 = icmp ne i32 %483, 8
  %485 = and i1 %482, %484
  br i1 %485, label %547, label %486

486:                                              ; preds = %476
  %487 = load i64, ptr %434, align 8
  %488 = and i64 %487, 65536
  %489 = icmp eq i64 %488, 0
  br i1 %489, label %490, label %547

490:                                              ; preds = %486
  %491 = tail call fastcc ptr @fold_builtin_printf(i32 noundef %0, ptr noundef %1, ptr noundef %436, ptr noundef %438, i8 noundef zeroext %4, i32 noundef %445)
  br label %547

492:                                              ; preds = %433, %433, %433
  %493 = tail call fastcc ptr @fold_builtin_fprintf(i32 noundef %0, ptr noundef %1, ptr noundef %434, ptr noundef %436, ptr noundef %438, i8 noundef zeroext %4, i32 noundef %445)
  br label %547

494:                                              ; preds = %433, %433
  %495 = icmp eq ptr %436, null
  br i1 %495, label %547, label %496

496:                                              ; preds = %494
  %497 = getelementptr inbounds %struct.tree_common, ptr %436, i64 0, i32 2
  %498 = load ptr, ptr %497, align 8, !tbaa !72
  %499 = load i64, ptr %498, align 8
  %500 = trunc i64 %499 to i32
  %501 = and i32 %500, 65534
  %502 = icmp ne i32 %501, 6
  %503 = and i32 %500, 65535
  %504 = icmp ne i32 %503, 8
  %505 = and i1 %502, %504
  br i1 %505, label %547, label %506

506:                                              ; preds = %496
  %507 = load i64, ptr %436, align 8
  %508 = and i64 %507, 65536
  %509 = icmp eq i64 %508, 0
  br i1 %509, label %510, label %547

510:                                              ; preds = %506
  %511 = tail call fastcc ptr @fold_builtin_fprintf(i32 noundef %0, ptr noundef %1, ptr noundef %434, ptr noundef %438, ptr noundef null, i8 noundef zeroext %4, i32 noundef %445)
  br label %547

512:                                              ; preds = %5
  %513 = load ptr, ptr %2, align 8, !tbaa !61
  %514 = getelementptr inbounds ptr, ptr %2, i64 1
  %515 = load ptr, ptr %514, align 8, !tbaa !61
  %516 = getelementptr inbounds ptr, ptr %2, i64 2
  %517 = load ptr, ptr %516, align 8, !tbaa !61
  %518 = getelementptr inbounds ptr, ptr %2, i64 3
  %519 = load ptr, ptr %518, align 8, !tbaa !61
  %520 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %521 = load i32, ptr %520, align 8
  %522 = and i32 %521, 2047
  switch i32 %522, label %547 [
    i32 529, label %523
    i32 531, label %523
    i32 530, label %523
    i32 532, label %523
    i32 537, label %525
    i32 536, label %527
    i32 542, label %529
    i32 544, label %529
  ]

523:                                              ; preds = %512, %512, %512, %512
  %524 = tail call ptr @fold_builtin_memory_chk(i32 noundef %0, ptr noundef %1, ptr noundef %513, ptr noundef %515, ptr noundef %517, ptr noundef %519, ptr noundef null, i8 noundef zeroext %4, i32 noundef %522)
  br label %547

525:                                              ; preds = %512
  %526 = tail call ptr @fold_builtin_strncpy_chk(i32 noundef %0, ptr noundef %513, ptr noundef %515, ptr noundef %517, ptr noundef %519, ptr noundef null)
  br label %547

527:                                              ; preds = %512
  %528 = tail call fastcc ptr @fold_builtin_strncat_chk(i32 noundef %0, ptr noundef %1, ptr noundef %513, ptr noundef %515, ptr noundef %517, ptr noundef %519)
  br label %547

529:                                              ; preds = %512, %512
  %530 = icmp eq ptr %515, null
  br i1 %530, label %547, label %531

531:                                              ; preds = %529
  %532 = getelementptr inbounds %struct.tree_common, ptr %515, i64 0, i32 2
  %533 = load ptr, ptr %532, align 8, !tbaa !72
  %534 = load i64, ptr %533, align 8
  %535 = trunc i64 %534 to i32
  %536 = and i32 %535, 65534
  %537 = icmp ne i32 %536, 6
  %538 = and i32 %535, 65535
  %539 = icmp ne i32 %538, 8
  %540 = and i1 %537, %539
  br i1 %540, label %547, label %541

541:                                              ; preds = %531
  %542 = load i64, ptr %515, align 8
  %543 = and i64 %542, 65536
  %544 = icmp eq i64 %543, 0
  br i1 %544, label %545, label %547

545:                                              ; preds = %541
  %546 = tail call fastcc ptr @fold_builtin_fprintf(i32 noundef %0, ptr noundef %1, ptr noundef %513, ptr noundef %517, ptr noundef %519, i8 noundef zeroext %4, i32 noundef %522)
  br label %547

547:                                              ; preds = %529, %494, %474, %412, %388, %383, %367, %354, %320, %243, %243, %243, %243, %243, %243, %243, %243, %243, %243, %243, %243, %243, %243, %243, %243, %243, %243, %243, %243, %243, %243, %243, %243, %243, %243, %243, %243, %243, %243, %243, %243, %243, %243, %243, %243, %243, %243, %230, %225, %83, %66, %50, %25, %531, %496, %476, %414, %205, %200, %191, %118, %116, %545, %541, %527, %525, %523, %512, %510, %506, %492, %490, %486, %472, %470, %467, %465, %463, %461, %459, %457, %455, %453, %451, %448, %446, %433, %432, %430, %428, %424, %410, %408, %405, %403, %401, %399, %397, %395, %393, %391, %389, %295, %293, %291, %289, %280, %278, %276, %274, %272, %270, %268, %266, %264, %262, %260, %258, %256, %254, %243, %241, %239, %237, %235, %233, %228, %223, %221, %219, %217, %215, %213, %211, %209, %207, %114, %112, %110, %108, %106, %104, %102, %100, %97, %91, %85, %80, %74, %68, %64, %58, %52, %48, %46, %44, %42, %34, %23, %21, %19, %11, %5
  %548 = phi ptr [ null, %5 ], [ %24, %23 ], [ %22, %21 ], [ %20, %19 ], [ null, %11 ], [ %242, %241 ], [ %240, %239 ], [ %238, %237 ], [ %236, %235 ], [ %224, %223 ], [ %222, %221 ], [ %220, %219 ], [ %218, %217 ], [ %216, %215 ], [ %214, %213 ], [ %212, %211 ], [ %210, %209 ], [ %208, %207 ], [ %115, %114 ], [ %113, %112 ], [ %111, %110 ], [ %109, %108 ], [ %107, %106 ], [ %105, %104 ], [ %103, %102 ], [ %101, %100 ], [ %99, %97 ], [ %82, %80 ], [ %65, %64 ], [ %49, %48 ], [ %47, %46 ], [ %45, %44 ], [ %43, %42 ], [ %41, %34 ], [ %229, %228 ], [ %234, %233 ], [ null, %85 ], [ null, %91 ], [ null, %68 ], [ null, %74 ], [ null, %52 ], [ null, %58 ], [ null, %432 ], [ %429, %428 ], [ %411, %410 ], [ %409, %408 ], [ %407, %405 ], [ %431, %430 ], [ %404, %403 ], [ %402, %401 ], [ %400, %399 ], [ %398, %397 ], [ %396, %395 ], [ %394, %393 ], [ %392, %391 ], [ %390, %389 ], [ %296, %295 ], [ %294, %293 ], [ %290, %289 ], [ %292, %291 ], [ %281, %280 ], [ %279, %278 ], [ %277, %276 ], [ %275, %274 ], [ %273, %272 ], [ %271, %270 ], [ %269, %268 ], [ %267, %266 ], [ %265, %264 ], [ %263, %262 ], [ %261, %260 ], [ %259, %258 ], [ %257, %256 ], [ %255, %254 ], [ null, %424 ], [ null, %243 ], [ %511, %510 ], [ %493, %492 ], [ %491, %490 ], [ %473, %472 ], [ %471, %470 ], [ %469, %467 ], [ %466, %465 ], [ %464, %463 ], [ %462, %461 ], [ %460, %459 ], [ %458, %457 ], [ %456, %455 ], [ %454, %453 ], [ %452, %451 ], [ %450, %448 ], [ %447, %446 ], [ null, %486 ], [ null, %506 ], [ null, %433 ], [ %546, %545 ], [ %528, %527 ], [ %526, %525 ], [ %524, %523 ], [ null, %541 ], [ null, %512 ], [ %206, %205 ], [ %204, %200 ], [ %192, %191 ], [ null, %118 ], [ null, %116 ], [ null, %414 ], [ null, %476 ], [ null, %496 ], [ null, %531 ], [ null, %25 ], [ null, %50 ], [ null, %66 ], [ null, %83 ], [ %226, %225 ], [ %231, %230 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ null, %243 ], [ %366, %354 ], [ %244, %388 ], [ %244, %320 ], [ null, %367 ], [ null, %383 ], [ null, %412 ], [ null, %474 ], [ null, %494 ], [ null, %529 ]
  %549 = icmp eq ptr %548, null
  br i1 %549, label %557, label %550, !prof !164

550:                                              ; preds = %547
  %551 = getelementptr inbounds %struct.tree_common, ptr %548, i64 0, i32 2
  %552 = load ptr, ptr %551, align 8, !tbaa !72
  %553 = call ptr @build1_stat(i32 noundef 116, ptr noundef %552, ptr noundef nonnull %548) #25
  %554 = getelementptr inbounds %struct.tree_exp, ptr %553, i64 0, i32 1
  store i32 %0, ptr %554, align 8, !tbaa !72
  %555 = load i64, ptr %553, align 8
  %556 = or i64 %555, 8388608
  store i64 %556, ptr %553, align 8
  br label %557

557:                                              ; preds = %547, %550
  %558 = phi ptr [ %553, %550 ], [ null, %547 ]
  ret ptr %558
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @fold_builtin_varargs(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #12 !prof !168 !PGOFuncName !179 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca [128 x i8], align 16
  %6 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 2047
  switch i32 %8, label %257 [
    i32 539, label %9
    i32 541, label %9
    i32 538, label %137
    i32 540, label %137
    i32 466, label %139
  ], !prof !180

9:                                                ; preds = %3, %3
  %10 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  %12 = getelementptr inbounds %struct.tree_int_cst, ptr %11, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !72
  %14 = trunc i64 %13 to i32
  %15 = add nsw i32 %14, -3
  %16 = icmp slt i32 %14, 7
  br i1 %16, label %257, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !72
  %20 = icmp eq ptr %19, null
  br i1 %20, label %257, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !72
  %24 = load i64, ptr %23, align 8
  %25 = trunc i64 %24 to i16
  switch i16 %25, label %257 [
    i16 12, label %26
    i16 10, label %26
  ]

26:                                               ; preds = %21, %21
  %27 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !72
  %29 = icmp eq ptr %28, null
  br i1 %29, label %257, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !72
  %33 = load i64, ptr %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = and i32 %34, 65534
  %36 = icmp eq i32 %35, 6
  %37 = and i32 %34, 65535
  %38 = icmp eq i32 %37, 8
  %39 = or i1 %36, %38
  br i1 %39, label %40, label %257

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !72
  %43 = icmp eq ptr %42, null
  br i1 %43, label %257, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !72
  %47 = load i64, ptr %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = and i32 %48, 65534
  %50 = icmp ne i32 %49, 6
  %51 = and i32 %48, 65535
  %52 = icmp ne i32 %51, 8
  %53 = and i1 %50, %52
  br i1 %53, label %257, label %54

54:                                               ; preds = %44
  %55 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !72
  %57 = icmp eq ptr %56, null
  br i1 %57, label %257, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.tree_common, ptr %56, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !72
  %61 = load i64, ptr %60, align 8
  %62 = trunc i64 %61 to i16
  switch i16 %62, label %257 [
    i16 12, label %63
    i16 10, label %63
  ]

63:                                               ; preds = %58, %58
  %64 = tail call i32 @host_integerp(ptr noundef nonnull %42, i32 noundef 1) #25
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %257, label %66

66:                                               ; preds = %63
  %67 = tail call fastcc zeroext i8 @init_target_chars(), !range !141
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %257, label %69

69:                                               ; preds = %66
  %70 = tail call fastcc ptr @c_getstr(ptr noundef nonnull %56)
  %71 = icmp eq ptr %70, null
  br i1 %71, label %108, label %72

72:                                               ; preds = %69
  %73 = load i64, ptr @target_percent, align 8, !tbaa !82
  %74 = trunc i64 %73 to i32
  %75 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %70, i32 noundef %74)
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = icmp ne i32 %8, 539
  %79 = icmp eq i32 %15, 4
  %80 = select i1 %78, i1 true, i1 %79
  br i1 %80, label %81, label %108

81:                                               ; preds = %77
  %82 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !61
  %83 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %70)
  %84 = tail call ptr @build_int_cstu(ptr noundef %82, i64 noundef %83) #25
  br label %108

85:                                               ; preds = %72
  %86 = icmp eq i32 %8, 539
  br i1 %86, label %87, label %108

87:                                               ; preds = %85
  %88 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(1) @target_percent_s)
  %89 = icmp eq i32 %88, 0
  %90 = icmp eq i32 %15, 5
  %91 = select i1 %89, i1 %90, i1 false
  br i1 %91, label %92, label %108

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 2
  %94 = load ptr, ptr %93, align 8, !tbaa !72
  %95 = icmp eq ptr %94, null
  br i1 %95, label %108, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.tree_common, ptr %94, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !72
  %99 = load i64, ptr %98, align 8
  %100 = trunc i64 %99 to i16
  switch i16 %100, label %108 [
    i16 12, label %101
    i16 10, label %101
  ]

101:                                              ; preds = %96, %96
  %102 = tail call ptr @c_strlen(ptr noundef nonnull %94, i32 noundef 1)
  %103 = icmp eq ptr %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = tail call i32 @host_integerp(ptr noundef nonnull %102, i32 noundef 1) #25
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104, %101
  br label %108

108:                                              ; preds = %96, %92, %107, %104, %87, %85, %81, %77, %69
  %109 = phi ptr [ %84, %81 ], [ null, %77 ], [ null, %87 ], [ null, %85 ], [ null, %69 ], [ %102, %104 ], [ null, %107 ], [ null, %96 ], [ null, %92 ]
  %110 = tail call i32 @integer_all_onesp(ptr noundef nonnull %42) #25
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = icmp eq ptr %109, null
  br i1 %113, label %257, label %114

114:                                              ; preds = %112
  %115 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %109, ptr noundef nonnull %42) #25
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %257, label %117

117:                                              ; preds = %114, %108
  %118 = tail call i32 @integer_zerop(ptr noundef nonnull %28) #25
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  br i1 %71, label %257, label %121

121:                                              ; preds = %120
  %122 = load i64, ptr @target_percent, align 8, !tbaa !82
  %123 = trunc i64 %122 to i32
  %124 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %70, i32 noundef %123)
  %125 = icmp eq ptr %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %121
  %127 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(1) @target_percent_s)
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %257

129:                                              ; preds = %126, %121, %117
  %130 = icmp eq i32 %8, 541
  %131 = select i1 %130, i64 380, i64 373
  %132 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !61
  %134 = icmp eq ptr %133, null
  br i1 %134, label %257, label %135

135:                                              ; preds = %129
  %136 = tail call ptr (i32, ptr, i32, ptr, i32, ...) @rewrite_call_expr(i32 noundef %0, ptr noundef %2, i32 noundef 4, ptr noundef nonnull %133, i32 noundef 2, ptr noundef nonnull %19, ptr noundef nonnull %56)
  br label %257

137:                                              ; preds = %3, %3
  %138 = tail call ptr @fold_builtin_snprintf_chk(i32 noundef %0, ptr noundef %2, ptr noundef null, i32 noundef %8)
  br label %257

139:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #25
  %140 = tail call zeroext i8 (ptr, ...) @validate_arglist(ptr noundef %2, i32 noundef 8, i32 noundef 8, i32 noundef 8, i32 noundef 8, i32 noundef 8, i32 noundef 9, i32 noundef 19), !range !141
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %255, label %142

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !72
  %145 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !72
  %147 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 2
  %148 = load ptr, ptr %147, align 8, !tbaa !72
  %149 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 3
  %150 = load ptr, ptr %149, align 8, !tbaa !72
  %151 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 2
  %152 = load ptr, ptr %151, align 8, !tbaa !72
  %153 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 2, i32 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !72
  %155 = getelementptr inbounds %struct.tree_common, ptr %154, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !72
  %157 = load i64, ptr %156, align 8
  %158 = and i64 %157, 65535
  %159 = icmp eq i64 %158, 14
  br i1 %159, label %160, label %162

160:                                              ; preds = %142
  %161 = tail call i32 @vector_type_mode(ptr noundef nonnull %156) #25
  br label %167

162:                                              ; preds = %142
  %163 = getelementptr inbounds %struct.tree_type, ptr %156, i64 0, i32 6
  %164 = load i32, ptr %163, align 4
  %165 = lshr i32 %164, 16
  %166 = and i32 %165, 255
  br label %167

167:                                              ; preds = %162, %160
  %168 = phi i32 [ %161, %160 ], [ %166, %162 ]
  %169 = tail call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 82, ptr noundef nonnull %156, ptr noundef %154) #25
  %170 = load i64, ptr %169, align 8
  %171 = and i64 %170, 262144
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %167
  %174 = trunc i64 %170 to i16
  switch i16 %174, label %178 [
    i16 34, label %180
    i16 32, label %175
  ]

175:                                              ; preds = %173
  %176 = and i64 %170, 67108864
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %175, %173, %167
  %179 = tail call ptr @save_expr(ptr noundef nonnull %169) #25
  br label %180

180:                                              ; preds = %178, %175, %173
  %181 = phi ptr [ %179, %178 ], [ %169, %173 ], [ %169, %175 ]
  %182 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %183 = tail call ptr @build_real(ptr noundef nonnull %156, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst0) #25
  %184 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 101, ptr noundef %182, ptr noundef %181, ptr noundef %183) #25
  %185 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %186 = tail call ptr @fold_build3_stat_loc(i32 noundef %0, i32 noundef 56, ptr noundef %185, ptr noundef %184, ptr noundef %152, ptr noundef %150) #25
  %187 = zext i32 %168 to i64
  %188 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %187
  %189 = add i32 %168, -38
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %190
  %192 = load ptr, ptr %191, align 8, !tbaa !61
  %193 = getelementptr inbounds %struct.real_format, ptr %192, i64 0, i32 5
  %194 = load i32, ptr %193, align 4, !tbaa !181
  %195 = add nsw i32 %194, -1
  %196 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.739, i32 noundef %195)
  %197 = call i32 @real_from_string(ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %198 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %199 = call ptr @build_real(ptr noundef nonnull %156, ptr noundef nonnull byval(%struct.real_value) align 8 %4) #25
  %200 = call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 100, ptr noundef %198, ptr noundef %181, ptr noundef %199) #25
  %201 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %202 = call ptr @fold_build3_stat_loc(i32 noundef %0, i32 noundef 56, ptr noundef %201, ptr noundef %200, ptr noundef %148, ptr noundef %186) #25
  %203 = load i8, ptr %188, align 1, !tbaa !72
  switch i8 %203, label %229 [
    i8 8, label %204
    i8 9, label %204
    i8 11, label %204
    i8 17, label %204
  ]

204:                                              ; preds = %180, %180, %180, %180
  %205 = and i8 %203, -2
  %206 = icmp eq i8 %205, 8
  br i1 %206, label %211, label %207

207:                                              ; preds = %204
  %208 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %187
  %209 = load i8, ptr %208, align 1, !tbaa !72
  %210 = zext i8 %209 to i32
  br label %211

211:                                              ; preds = %204, %207
  %212 = phi i32 [ %210, %207 ], [ %168, %204 ]
  %213 = add i32 %212, -38
  %214 = zext i32 %213 to i64
  %215 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %214
  %216 = load ptr, ptr %215, align 8, !tbaa !61
  %217 = getelementptr inbounds %struct.real_format, ptr %216, i64 0, i32 12
  %218 = load i8, ptr %217, align 1, !tbaa !183
  %219 = icmp eq i8 %218, 0
  %220 = load i32, ptr @flag_finite_math_only, align 4
  %221 = icmp ne i32 %220, 0
  %222 = select i1 %219, i1 true, i1 %221
  br i1 %222, label %229, label %223

223:                                              ; preds = %211
  call void @real_inf(ptr noundef nonnull %4) #25
  %224 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %225 = call ptr @build_real(ptr noundef nonnull %156, ptr noundef nonnull byval(%struct.real_value) align 8 %4) #25
  %226 = call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 101, ptr noundef %224, ptr noundef %181, ptr noundef %225) #25
  %227 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %228 = call ptr @fold_build3_stat_loc(i32 noundef %0, i32 noundef 56, ptr noundef %227, ptr noundef %226, ptr noundef %146, ptr noundef %202) #25
  br label %229

229:                                              ; preds = %223, %211, %180
  %230 = phi ptr [ %202, %211 ], [ %228, %223 ], [ %202, %180 ]
  switch i8 %203, label %255 [
    i8 8, label %231
    i8 9, label %231
    i8 11, label %231
    i8 17, label %231
  ]

231:                                              ; preds = %229, %229, %229, %229
  %232 = and i8 %203, -2
  %233 = icmp eq i8 %232, 8
  br i1 %233, label %238, label %234

234:                                              ; preds = %231
  %235 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %187
  %236 = load i8, ptr %235, align 1, !tbaa !72
  %237 = zext i8 %236 to i32
  br label %238

238:                                              ; preds = %231, %234
  %239 = phi i32 [ %237, %234 ], [ %168, %231 ]
  %240 = add i32 %239, -38
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %241
  %243 = load ptr, ptr %242, align 8, !tbaa !61
  %244 = getelementptr inbounds %struct.real_format, ptr %243, i64 0, i32 11
  %245 = load i8, ptr %244, align 2, !tbaa !184
  %246 = icmp eq i8 %245, 0
  %247 = load i32, ptr @flag_finite_math_only, align 4
  %248 = icmp ne i32 %247, 0
  %249 = select i1 %246, i1 true, i1 %248
  br i1 %249, label %255, label %250

250:                                              ; preds = %238
  %251 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %252 = call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 104, ptr noundef %251, ptr noundef %181, ptr noundef %181) #25
  %253 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %254 = call ptr @fold_build3_stat_loc(i32 noundef %0, i32 noundef 56, ptr noundef %253, ptr noundef %252, ptr noundef %230, ptr noundef %144) #25
  br label %255

255:                                              ; preds = %139, %229, %238, %250
  %256 = phi ptr [ null, %139 ], [ %230, %238 ], [ %254, %250 ], [ %230, %229 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  br label %257

257:                                              ; preds = %114, %63, %26, %3, %44, %30, %58, %21, %135, %129, %126, %120, %112, %66, %9, %17, %40, %54, %255, %137
  %258 = phi ptr [ %256, %255 ], [ %138, %137 ], [ %136, %135 ], [ null, %9 ], [ null, %21 ], [ null, %58 ], [ null, %66 ], [ null, %112 ], [ null, %120 ], [ null, %126 ], [ null, %129 ], [ null, %17 ], [ null, %40 ], [ null, %54 ], [ null, %30 ], [ null, %44 ], [ null, %3 ], [ null, %26 ], [ null, %63 ], [ null, %114 ]
  %259 = icmp eq ptr %258, null
  br i1 %259, label %267, label %260, !prof !164

260:                                              ; preds = %257
  %261 = getelementptr inbounds %struct.tree_common, ptr %258, i64 0, i32 2
  %262 = load ptr, ptr %261, align 8, !tbaa !72
  %263 = call ptr @build1_stat(i32 noundef 116, ptr noundef %262, ptr noundef nonnull %258) #25
  %264 = getelementptr inbounds %struct.tree_exp, ptr %263, i64 0, i32 1
  store i32 %0, ptr %264, align 8, !tbaa !72
  %265 = load i64, ptr %263, align 8
  %266 = or i64 %265, 8388608
  store i64 %266, ptr %263, align 8
  br label %267

267:                                              ; preds = %257, %260
  %268 = phi ptr [ %263, %260 ], [ null, %257 ]
  ret ptr %268
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @build_function_call_expr(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #14 !prof !60 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = tail call ptr @build_pointer_type(ptr noundef %5) #25
  %7 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %6, ptr noundef %1) #25
  %8 = tail call i32 @list_length(ptr noundef %2) #25
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
  %19 = load ptr, ptr %18, align 8, !tbaa !72
  %20 = getelementptr inbounds ptr, ptr %11, i64 %16
  store ptr %19, ptr %20, align 8, !tbaa !61
  %21 = add nuw nsw i64 %16, 1
  %22 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !72
  %24 = icmp eq i64 %21, %14
  br i1 %24, label %25, label %15, !llvm.loop !185

25:                                               ; preds = %15, %3
  %26 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !72
  %28 = call ptr @fold_builtin_call_array(i32 noundef %0, ptr noundef %27, ptr noundef %7, i32 noundef %8, ptr noundef nonnull %11)
  ret ptr %28
}

declare i32 @list_length(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @fold_builtin_call_array(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #14 !prof !166 {
  %6 = load i64, ptr %2, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 121
  br i1 %8, label %9, label %88, !prof !186

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 29
  br i1 %14, label %15, label %85, !prof !186

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.tree_function_decl, ptr %11, i64 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 6144
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %85, label %20, !prof !187

20:                                               ; preds = %15
  %21 = icmp eq i32 %3, 0
  br i1 %21, label %47, label %22, !prof !187

22:                                               ; preds = %20
  %23 = sext i32 %3 to i64
  %24 = getelementptr ptr, ptr %4, i64 %23
  %25 = getelementptr ptr, ptr %24, i64 -1
  %26 = load ptr, ptr %25, align 8, !tbaa !61
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 65535
  %29 = icmp eq i64 %28, 59
  br i1 %29, label %30, label %47, !prof !187

30:                                               ; preds = %22
  %31 = tail call ptr @get_callee_fndecl(ptr noundef nonnull %26) #25
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
  %43 = tail call ptr @build_call_array_loc(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef %4) #25
  br label %44

44:                                               ; preds = %30, %33, %37, %42
  %45 = phi ptr [ %43, %42 ], [ undef, %37 ], [ undef, %33 ], [ undef, %30 ]
  %46 = phi i1 [ false, %42 ], [ true, %37 ], [ true, %33 ], [ true, %30 ]
  br i1 %46, label %47, label %85

47:                                               ; preds = %44, %22, %20
  %48 = tail call fastcc zeroext i8 @avoid_folding_inline_builtin(ptr noundef nonnull %11), !range !141
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %52, label %50, !prof !186

50:                                               ; preds = %47
  %51 = tail call ptr @build_call_array_loc(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef %4) #25
  br label %85

52:                                               ; preds = %47
  %53 = load i32, ptr %16, align 8
  %54 = and i32 %53, 6144
  %55 = icmp eq i32 %54, 4096
  br i1 %55, label %56, label %75, !prof !187

56:                                               ; preds = %52
  %57 = icmp sgt i32 %3, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %56
  %59 = zext nneg i32 %3 to i64
  br label %60

60:                                               ; preds = %58, %60
  %61 = phi i64 [ %59, %58 ], [ %63, %60 ]
  %62 = phi ptr [ null, %58 ], [ %66, %60 ]
  %63 = add nsw i64 %61, -1
  %64 = getelementptr inbounds ptr, ptr %4, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !61
  %66 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %65, ptr noundef %62) #25
  %67 = icmp sgt i64 %61, 1
  br i1 %67, label %60, label %68, !llvm.loop !188

68:                                               ; preds = %60, %56
  %69 = phi ptr [ null, %56 ], [ %66, %60 ]
  %70 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 27), align 8, !tbaa !165
  %71 = tail call ptr %70(ptr noundef nonnull %11, ptr noundef %69, i8 noundef zeroext 0) #25
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %68
  %74 = tail call ptr @build_call_array_loc(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef %4) #25
  br label %85

75:                                               ; preds = %52
  %76 = icmp slt i32 %3, 5
  br i1 %76, label %77, label %80, !prof !186

77:                                               ; preds = %75
  %78 = tail call fastcc ptr @fold_builtin_n(i32 noundef %0, ptr noundef nonnull %11, ptr noundef %4, i32 noundef %3, i8 noundef zeroext 0)
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %85, !prof !186

80:                                               ; preds = %75, %77
  %81 = tail call ptr @build_call_array_loc(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef %4) #25
  %82 = tail call fastcc ptr @fold_builtin_varargs(i32 noundef %0, ptr noundef nonnull %11, ptr noundef %81)
  %83 = icmp eq ptr %82, null
  %84 = select i1 %83, ptr %81, ptr %82, !prof !186
  br label %85

85:                                               ; preds = %9, %15, %77, %73, %68, %44, %80, %50
  %86 = phi ptr [ %51, %50 ], [ %84, %80 ], [ %45, %44 ], [ %74, %73 ], [ %71, %68 ], [ %78, %77 ], [ undef, %15 ], [ undef, %9 ]
  %87 = phi i1 [ false, %50 ], [ false, %80 ], [ false, %44 ], [ false, %73 ], [ false, %68 ], [ false, %77 ], [ true, %15 ], [ true, %9 ]
  br i1 %87, label %88, label %90, !prof !187

88:                                               ; preds = %85, %5
  %89 = tail call ptr @build_call_array_loc(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3, ptr noundef %4) #25
  br label %90

90:                                               ; preds = %85, %88
  %91 = phi ptr [ %89, %88 ], [ %86, %85 ]
  ret ptr %91
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #18

declare ptr @build_call_array_loc(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @validate_gimple_arglist(ptr nocapture noundef readonly %0, ...) local_unnamed_addr #14 !prof !60 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  call void @llvm.va_start(ptr nonnull %2)
  br label %3

3:                                                ; preds = %48, %1
  %4 = phi i64 [ 0, %1 ], [ %28, %48 ]
  %5 = load i32, ptr %2, align 16
  %6 = icmp ult i32 %5, 41
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %9 = load ptr, ptr %8, align 16
  %10 = zext nneg i32 %5 to i64
  %11 = getelementptr i8, ptr %9, i64 %10
  %12 = add nuw nsw i32 %5, 8
  store i32 %12, ptr %2, align 16
  br label %17

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr i8, ptr %15, i64 8
  store ptr %16, ptr %14, align 8
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi ptr [ %11, %7 ], [ %15, %13 ]
  %19 = load i32, ptr %18, align 4
  switch i32 %19, label %27 [
    i32 0, label %52
    i32 19, label %20
  ]

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !72
  %23 = add i32 %22, -3
  %24 = zext i32 %23 to i64
  %25 = icmp eq i64 %4, %24
  %26 = zext i1 %25 to i8
  br label %52

27:                                               ; preds = %17
  %28 = add i64 %4, 1
  %29 = add i64 %4, 3
  %30 = load i32, ptr %0, align 8
  %31 = and i32 %30, 255
  %32 = add nsw i32 %31, -10
  %33 = icmp ult i32 %32, -9
  br i1 %33, label %48, label %34

34:                                               ; preds = %27
  %35 = zext nneg i32 %31 to i64
  %36 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !76
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %38
  %40 = load i64, ptr %39, align 8, !tbaa !82
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  call void @fancy_abort(ptr noundef nonnull @.str.740, i32 noundef 1622, ptr noundef nonnull @.str.725) #25
  br label %43

43:                                               ; preds = %42, %34
  %44 = getelementptr inbounds i8, ptr %0, i64 %40
  %45 = and i64 %29, 4294967295
  %46 = getelementptr inbounds ptr, ptr %44, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !61
  br label %48

48:                                               ; preds = %27, %43
  %49 = phi ptr [ %47, %43 ], [ null, %27 ]
  %50 = call fastcc zeroext i8 @validate_arg(ptr noundef %49, i32 noundef %19), !range !141
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %3, !llvm.loop !189

52:                                               ; preds = %17, %48, %20
  %53 = phi i8 [ %26, %20 ], [ 0, %48 ], [ 1, %17 ]
  call void @llvm.va_end(ptr %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  ret i8 %53
}

; Function Attrs: cold nofree norecurse nosync nounwind uwtable
define dso_local zeroext i8 @validate_arglist(ptr nocapture noundef readonly %0, ...) local_unnamed_addr #19 !prof !60 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  call void @llvm.va_start(ptr nonnull %2)
  %3 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct.tree_int_cst, ptr %4, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !72
  %7 = trunc i64 %6 to i32
  %8 = add nsw i32 %7, -3
  %9 = load i32, ptr %2, align 16
  %10 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %11 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %12 = load ptr, ptr %11, align 16
  %13 = load ptr, ptr %10, align 8
  br label %14

14:                                               ; preds = %41, %1
  %15 = phi ptr [ %13, %1 ], [ %26, %41 ]
  %16 = phi i32 [ %9, %1 ], [ %27, %41 ]
  %17 = phi i32 [ 0, %1 ], [ %42, %41 ]
  %18 = icmp ult i32 %16, 41
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = zext nneg i32 %16 to i64
  %21 = getelementptr i8, ptr %12, i64 %20
  %22 = add nuw nsw i32 %16, 8
  store i32 %22, ptr %2, align 16
  br label %25

23:                                               ; preds = %14
  %24 = getelementptr i8, ptr %15, i64 8
  store ptr %24, ptr %10, align 8
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi ptr [ %15, %19 ], [ %24, %23 ]
  %27 = phi i32 [ %22, %19 ], [ %16, %23 ]
  %28 = phi ptr [ %21, %19 ], [ %15, %23 ]
  %29 = load i32, ptr %28, align 4
  switch i32 %29, label %33 [
    i32 0, label %46
    i32 19, label %30
  ]

30:                                               ; preds = %25
  %31 = icmp sge i32 %17, %8
  %32 = zext i1 %31 to i8
  br label %46

33:                                               ; preds = %25
  %34 = icmp slt i32 %17, %8
  br i1 %34, label %35, label %41

35:                                               ; preds = %33
  %36 = add nsw i32 %17, 3
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !72
  %40 = add nsw i32 %17, 1
  br label %41

41:                                               ; preds = %33, %35
  %42 = phi i32 [ %40, %35 ], [ %17, %33 ]
  %43 = phi ptr [ %39, %35 ], [ null, %33 ]
  %44 = call fastcc zeroext i8 @validate_arg(ptr noundef %43, i32 noundef %29), !range !141
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %14, !llvm.loop !190

46:                                               ; preds = %25, %41, %30
  %47 = phi i8 [ %32, %30 ], [ 0, %41 ], [ 1, %25 ]
  call void @llvm.va_end(ptr %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  ret i8 %47
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @default_expand_builtin(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #20 !prof !60 {
  ret ptr null
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @fold_builtin_fputs(i32 noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4, ptr noundef %5) local_unnamed_addr #14 !prof !60 {
  %7 = icmp eq i8 %4, 0
  %8 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 359), align 8
  %9 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 358), align 16
  %10 = select i1 %7, ptr %9, ptr %8
  %11 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 364), align 16
  %12 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 363), align 8
  %13 = select i1 %7, ptr %12, ptr %11
  %14 = icmp eq i8 %3, 0
  %15 = icmp eq ptr %1, null
  %16 = or i1 %15, %14
  br i1 %16, label %68, label %17

17:                                               ; preds = %6
  %18 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !72
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %68 [
    i16 12, label %22
    i16 10, label %22
  ]

22:                                               ; preds = %17, %17
  %23 = icmp eq ptr %2, null
  br i1 %23, label %68, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !72
  %27 = load i64, ptr %26, align 8
  %28 = trunc i64 %27 to i16
  switch i16 %28, label %68 [
    i16 12, label %29
    i16 10, label %29
  ]

29:                                               ; preds = %24, %24
  %30 = icmp eq ptr %5, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %29
  %32 = tail call ptr @c_strlen(ptr noundef %1, i32 noundef 0)
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi ptr [ %5, %29 ], [ %32, %31 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %68, label %36

36:                                               ; preds = %33
  %37 = load i64, ptr %34, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 23
  br i1 %39, label %40, label %68

40:                                               ; preds = %36
  %41 = tail call i32 @compare_tree_int(ptr noundef nonnull %34, i64 noundef 1) #25
  switch i32 %41, label %67 [
    i32 -1, label %42
    i32 0, label %46
    i32 1, label %58
  ]

42:                                               ; preds = %40
  %43 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %44 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !61
  %45 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %43, ptr noundef %44, ptr noundef nonnull %2) #25
  br label %68

46:                                               ; preds = %40
  %47 = tail call fastcc ptr @c_getstr(ptr noundef %1)
  %48 = icmp eq ptr %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %46
  %50 = icmp eq ptr %10, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %49
  %52 = load i8, ptr %47, align 1, !tbaa !72
  %53 = sext i8 %52 to i64
  %54 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %53) #25
  %55 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %10, i32 noundef 2, ptr noundef %54, ptr noundef nonnull %2)
  br label %56

56:                                               ; preds = %46, %49, %51
  %57 = phi ptr [ %55, %51 ], [ null, %49 ], [ undef, %46 ]
  br i1 %48, label %58, label %68

58:                                               ; preds = %56, %40
  %59 = load ptr, ptr @cfun, align 8, !tbaa !61
  %60 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %59) #25
  %61 = icmp ne i8 %60, 0
  %62 = icmp eq ptr %13, null
  %63 = select i1 %61, i1 true, i1 %62
  br i1 %63, label %68, label %64

64:                                               ; preds = %58
  %65 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 18), align 16, !tbaa !61
  %66 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %13, i32 noundef 4, ptr noundef %1, ptr noundef %65, ptr noundef nonnull %34, ptr noundef nonnull %2)
  br label %68

67:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.724, i32 noundef 11645, ptr noundef nonnull @.str.725) #25
  br label %68

68:                                               ; preds = %33, %22, %24, %17, %58, %36, %6, %56, %67, %64, %42
  %69 = phi ptr [ null, %67 ], [ %66, %64 ], [ %57, %56 ], [ %45, %42 ], [ null, %6 ], [ null, %24 ], [ null, %17 ], [ null, %36 ], [ null, %58 ], [ null, %22 ], [ null, %33 ]
  ret ptr %69
}

declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @c_getstr(ptr noundef %0) unnamed_addr #14 !prof !60 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  %3 = call ptr @string_constant(ptr noundef %0, ptr noundef nonnull %2) #25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !tbaa !61
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tree_string, ptr %3, i64 0, i32 2
  br label %26

10:                                               ; preds = %5
  %11 = call i32 @host_integerp(ptr noundef nonnull %6, i32 noundef 1) #25
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr %2, align 8, !tbaa !61
  %15 = getelementptr inbounds %struct.tree_string, ptr %3, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !72
  %17 = add nsw i32 %16, -1
  %18 = sext i32 %17 to i64
  %19 = call i32 @compare_tree_int(ptr noundef %14, i64 noundef %18) #25
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.tree_string, ptr %3, i64 0, i32 2
  %23 = load ptr, ptr %2, align 8, !tbaa !61
  %24 = call i64 @tree_low_cst(ptr noundef %23, i32 noundef 1) #25
  %25 = getelementptr inbounds i8, ptr %22, i64 %24
  br label %26

26:                                               ; preds = %10, %13, %1, %21, %8
  %27 = phi ptr [ %9, %8 ], [ %25, %21 ], [ null, %1 ], [ null, %13 ], [ null, %10 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret ptr %27
}

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @fold_builtin_next_arg(ptr nocapture noundef %0, i8 noundef zeroext %1) local_unnamed_addr #14 !prof !60 {
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = getelementptr inbounds %struct.tree_int_cst, ptr %7, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !72
  %10 = trunc i64 %9 to i32
  %11 = add nsw i32 %10, -3
  %12 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = tail call ptr @tree_last(ptr noundef nonnull %13) #25
  %17 = getelementptr inbounds %struct.tree_list, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !72
  %19 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !61
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %2
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.726) #25
  br label %79

22:                                               ; preds = %15
  %23 = icmp eq i8 %1, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %22
  %25 = icmp eq i32 %11, 2
  br i1 %25, label %27, label %26

26:                                               ; preds = %24
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.727) #25
  br label %79

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 1
  br label %38

29:                                               ; preds = %22
  %30 = icmp eq i32 %11, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %29
  %32 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.728) #25
  br label %79

33:                                               ; preds = %29
  %34 = icmp sgt i32 %10, 4
  br i1 %34, label %35, label %36

35:                                               ; preds = %33
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.729) #25
  br label %79

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  br label %38

38:                                               ; preds = %36, %27
  %39 = phi ptr [ %28, %27 ], [ %37, %36 ]
  %40 = load ptr, ptr %39, align 8, !tbaa !72
  %41 = load i64, ptr %40, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 141
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.tree_ssa_name, ptr %40, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !72
  br label %47

47:                                               ; preds = %44, %38
  %48 = phi ptr [ %46, %44 ], [ %40, %38 ]
  %49 = tail call i32 @integer_zerop(ptr noundef %48) #25
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %79

51:                                               ; preds = %47
  %52 = load ptr, ptr @current_function_decl, align 8, !tbaa !61
  %53 = getelementptr inbounds %struct.tree_decl_non_common, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !72
  %55 = tail call ptr @tree_last(ptr noundef %54) #25
  br label %56

56:                                               ; preds = %60, %51
  %57 = phi ptr [ %48, %51 ], [ %62, %60 ]
  %58 = load i64, ptr %57, align 8
  %59 = trunc i64 %58 to i16
  switch i16 %59, label %63 [
    i16 116, label %60
    i16 113, label %60
    i16 47, label %60
  ]

60:                                               ; preds = %56, %56, %56
  %61 = getelementptr inbounds %struct.tree_exp, ptr %57, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !72
  br label %56, !llvm.loop !191

63:                                               ; preds = %56
  %64 = icmp eq ptr %57, %55
  br i1 %64, label %65, label %70

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.tree_decl_common, ptr %57, i64 0, i32 2
  %67 = load i64, ptr %66, align 8
  %68 = and i64 %67, 16777216
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65, %63
  %71 = phi ptr [ @.str.730, %63 ], [ @.str.731, %65 ]
  %72 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull %71) #25
  br label %73

73:                                               ; preds = %70, %65
  %74 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !61
  br i1 %23, label %77, label %75

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 1
  store ptr %74, ptr %76, align 8, !tbaa !72
  br label %79

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  store ptr %74, ptr %78, align 8, !tbaa !72
  br label %79

79:                                               ; preds = %47, %77, %75, %35, %31, %26, %21
  %80 = phi i8 [ 1, %21 ], [ 1, %26 ], [ 1, %31 ], [ 1, %35 ], [ 0, %75 ], [ 0, %77 ], [ 0, %47 ]
  ret i8 %80
}

declare ptr @tree_last(ptr noundef) local_unnamed_addr #3

declare void @error(ptr noundef, ...) local_unnamed_addr #3

declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @fold_builtin_memory_chk(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i8 noundef zeroext %7, i32 noundef %8) local_unnamed_addr #14 !prof !60 {
  %10 = icmp eq ptr %2, null
  br i1 %10, label %108, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i16
  switch i16 %15, label %108 [
    i16 12, label %16
    i16 10, label %16
  ]

16:                                               ; preds = %11, %11
  %17 = icmp eq i32 %8, 532
  %18 = select i1 %17, i32 8, i32 10
  %19 = tail call fastcc zeroext i8 @validate_arg(ptr noundef %3, i32 noundef %18), !range !141
  %20 = icmp eq i8 %19, 0
  %21 = icmp eq ptr %4, null
  %22 = or i1 %21, %20
  br i1 %22, label %108, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !72
  %26 = load i64, ptr %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = and i32 %27, 65534
  %29 = icmp eq i32 %28, 6
  br i1 %29, label %35, label %30

30:                                               ; preds = %23
  %31 = and i32 %27, 65535
  %32 = icmp ne i32 %31, 8
  %33 = icmp eq ptr %5, null
  %34 = or i1 %33, %32
  br i1 %34, label %108, label %37

35:                                               ; preds = %23
  %36 = icmp eq ptr %5, null
  br i1 %36, label %108, label %37

37:                                               ; preds = %30, %35
  %38 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !72
  %40 = load i64, ptr %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = and i32 %41, 65534
  %43 = icmp ne i32 %42, 6
  %44 = and i32 %41, 65535
  %45 = icmp ne i32 %44, 8
  %46 = and i1 %43, %45
  br i1 %46, label %108, label %47

47:                                               ; preds = %37
  br i1 %17, label %67, label %48

48:                                               ; preds = %47
  %49 = tail call i32 @operand_equal_p(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 0) #25
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %48
  %52 = icmp eq i32 %8, 531
  br i1 %52, label %59, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !72
  %56 = getelementptr inbounds %struct.tree_common, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !72
  %58 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %57, ptr noundef nonnull %2, ptr noundef %4) #25
  br label %108

59:                                               ; preds = %51
  %60 = load ptr, ptr %12, align 8, !tbaa !72
  %61 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 66, ptr noundef %60, ptr noundef nonnull %2, ptr noundef %4) #25
  %62 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !72
  %64 = getelementptr inbounds %struct.tree_common, ptr %63, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !72
  %66 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %65, ptr noundef %61) #25
  br label %108

67:                                               ; preds = %48, %47
  %68 = tail call i32 @host_integerp(ptr noundef %5, i32 noundef 1) #25
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %108, label %70

70:                                               ; preds = %67
  %71 = tail call i32 @integer_all_onesp(ptr noundef %5) #25
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %70
  %74 = tail call i32 @host_integerp(ptr noundef %4, i32 noundef 1) #25
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %73
  %77 = icmp eq ptr %6, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %76
  %79 = tail call i32 @host_integerp(ptr noundef nonnull %6, i32 noundef 1) #25
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %78, %76
  %82 = icmp eq i32 %8, 531
  %83 = icmp ne i8 %7, 0
  %84 = and i1 %83, %82
  br i1 %84, label %85, label %108

85:                                               ; preds = %81
  %86 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 529), align 8, !tbaa !61
  %87 = icmp eq ptr %86, null
  br i1 %87, label %108, label %88

88:                                               ; preds = %85
  %89 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %86, i32 noundef 4, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  br label %108

90:                                               ; preds = %73, %78
  %91 = phi ptr [ %6, %78 ], [ %4, %73 ]
  %92 = tail call i32 @tree_int_cst_lt(ptr noundef %5, ptr noundef %91) #25
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %108

94:                                               ; preds = %90, %70
  switch i32 %8, label %103 [
    i32 529, label %95
    i32 531, label %97
    i32 530, label %99
    i32 532, label %101
  ]

95:                                               ; preds = %94
  %96 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 330), align 16, !tbaa !61
  br label %103

97:                                               ; preds = %94
  %98 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 332), align 16, !tbaa !61
  br label %103

99:                                               ; preds = %94
  %100 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 331), align 8, !tbaa !61
  br label %103

101:                                              ; preds = %94
  %102 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 333), align 8, !tbaa !61
  br label %103

103:                                              ; preds = %94, %101, %99, %97, %95
  %104 = phi ptr [ null, %94 ], [ %102, %101 ], [ %100, %99 ], [ %98, %97 ], [ %96, %95 ]
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %103
  %107 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %104, i32 noundef 3, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4)
  br label %108

108:                                              ; preds = %35, %16, %37, %11, %9, %103, %90, %81, %85, %67, %30, %106, %88, %59, %53
  %109 = phi ptr [ %58, %53 ], [ %66, %59 ], [ %107, %106 ], [ %89, %88 ], [ null, %30 ], [ null, %11 ], [ null, %67 ], [ null, %85 ], [ null, %81 ], [ null, %90 ], [ null, %103 ], [ null, %9 ], [ null, %37 ], [ null, %16 ], [ null, %35 ]
  ret ptr %109
}

declare i32 @integer_all_onesp(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @fold_builtin_stxcpy_chk(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6, i32 noundef %7) local_unnamed_addr #14 !prof !60 {
  %9 = icmp eq ptr %2, null
  br i1 %9, label %100, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !72
  %13 = load i64, ptr %12, align 8
  %14 = trunc i64 %13 to i16
  switch i16 %14, label %100 [
    i16 12, label %15
    i16 10, label %15
  ]

15:                                               ; preds = %10, %10
  %16 = icmp eq ptr %3, null
  br i1 %16, label %100, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !72
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %100 [
    i16 12, label %22
    i16 10, label %22
  ]

22:                                               ; preds = %17, %17
  %23 = icmp eq ptr %4, null
  br i1 %23, label %100, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !72
  %27 = load i64, ptr %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = and i32 %28, 65534
  %30 = icmp ne i32 %29, 6
  %31 = and i32 %28, 65535
  %32 = icmp ne i32 %31, 8
  %33 = and i1 %30, %32
  br i1 %33, label %100, label %34

34:                                               ; preds = %24
  %35 = icmp eq i32 %7, 535
  br i1 %35, label %36, label %45

36:                                               ; preds = %34
  %37 = tail call i32 @operand_equal_p(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 0) #25
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !72
  %42 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !72
  %44 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %43, ptr noundef nonnull %2) #25
  br label %100

45:                                               ; preds = %36, %34
  %46 = tail call i32 @host_integerp(ptr noundef nonnull %4, i32 noundef 1) #25
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %100, label %48

48:                                               ; preds = %45
  %49 = tail call i32 @integer_all_onesp(ptr noundef nonnull %4) #25
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %92

51:                                               ; preds = %48
  %52 = tail call ptr @c_strlen(ptr noundef nonnull %3, i32 noundef 1)
  %53 = icmp eq ptr %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = tail call i32 @host_integerp(ptr noundef nonnull %52, i32 noundef 1) #25
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %88

57:                                               ; preds = %54, %51
  %58 = icmp eq ptr %5, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %57
  %60 = tail call i32 @host_integerp(ptr noundef nonnull %5, i32 noundef 1) #25
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %88

62:                                               ; preds = %59, %57
  %63 = icmp eq i32 %7, 533
  br i1 %63, label %64, label %71

64:                                               ; preds = %62
  %65 = icmp eq i8 %6, 0
  br i1 %65, label %100, label %66

66:                                               ; preds = %64
  %67 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 535), align 8, !tbaa !61
  %68 = icmp eq ptr %67, null
  br i1 %68, label %100, label %69

69:                                               ; preds = %66
  %70 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %67, i32 noundef 3, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4)
  br label %100

71:                                               ; preds = %62
  br i1 %53, label %100, label %72

72:                                               ; preds = %71
  %73 = load i64, ptr %52, align 8
  %74 = and i64 %73, 65536
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %100

76:                                               ; preds = %72
  %77 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 529), align 8, !tbaa !61
  %78 = icmp eq ptr %77, null
  br i1 %78, label %100, label %79

79:                                               ; preds = %76
  %80 = tail call ptr @size_int_kind(i64 noundef 1, i32 noundef 1) #25
  %81 = tail call ptr @size_binop_loc(i32 noundef %0, i32 noundef 63, ptr noundef nonnull %52, ptr noundef %80) #25
  %82 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !72
  %84 = getelementptr inbounds %struct.tree_common, ptr %83, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !72
  %86 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %77, i32 noundef 4, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %81, ptr noundef nonnull %4)
  %87 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %85, ptr noundef %86) #25
  br label %100

88:                                               ; preds = %54, %59
  %89 = phi ptr [ %5, %59 ], [ %52, %54 ]
  %90 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %89, ptr noundef nonnull %4) #25
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %88, %48
  %93 = icmp eq i32 %7, 533
  %94 = select i1 %93, i64 335, i64 341
  %95 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !61
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %92
  %99 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %96, i32 noundef 2, ptr noundef nonnull %2, ptr noundef nonnull %3)
  br label %100

100:                                              ; preds = %88, %22, %15, %24, %17, %10, %8, %92, %76, %71, %72, %66, %64, %45, %98, %79, %69, %39
  %101 = phi ptr [ %44, %39 ], [ %99, %98 ], [ %70, %69 ], [ %87, %79 ], [ null, %17 ], [ null, %10 ], [ null, %45 ], [ null, %64 ], [ null, %66 ], [ null, %72 ], [ null, %71 ], [ null, %76 ], [ null, %92 ], [ null, %8 ], [ null, %24 ], [ null, %15 ], [ null, %22 ], [ null, %88 ]
  ret ptr %101
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @fold_builtin_strncpy_chk(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #14 !prof !60 {
  %7 = icmp eq ptr %1, null
  br i1 %7, label %69, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i16
  switch i16 %12, label %69 [
    i16 12, label %13
    i16 10, label %13
  ]

13:                                               ; preds = %8, %8
  %14 = icmp eq ptr %2, null
  br i1 %14, label %69, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !72
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %69 [
    i16 12, label %20
    i16 10, label %20
  ]

20:                                               ; preds = %15, %15
  %21 = icmp eq ptr %3, null
  br i1 %21, label %69, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !72
  %25 = load i64, ptr %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = and i32 %26, 65534
  %28 = icmp eq i32 %27, 6
  br i1 %28, label %34, label %29

29:                                               ; preds = %22
  %30 = and i32 %26, 65535
  %31 = icmp ne i32 %30, 8
  %32 = icmp eq ptr %4, null
  %33 = or i1 %32, %31
  br i1 %33, label %69, label %36

34:                                               ; preds = %22
  %35 = icmp eq ptr %4, null
  br i1 %35, label %69, label %36

36:                                               ; preds = %29, %34
  %37 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !72
  %39 = load i64, ptr %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = and i32 %40, 65534
  %42 = icmp ne i32 %41, 6
  %43 = and i32 %40, 65535
  %44 = icmp ne i32 %43, 8
  %45 = and i1 %42, %44
  br i1 %45, label %69, label %46

46:                                               ; preds = %36
  %47 = tail call i32 @host_integerp(ptr noundef %4, i32 noundef 1) #25
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %69, label %49

49:                                               ; preds = %46
  %50 = tail call i32 @integer_all_onesp(ptr noundef %4) #25
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = tail call i32 @host_integerp(ptr noundef nonnull %3, i32 noundef 1) #25
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = icmp eq ptr %5, null
  br i1 %56, label %69, label %57

57:                                               ; preds = %55
  %58 = tail call i32 @host_integerp(ptr noundef nonnull %5, i32 noundef 1) #25
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %52, %57
  %61 = phi ptr [ %5, %57 ], [ %3, %52 ]
  %62 = tail call i32 @tree_int_cst_lt(ptr noundef %4, ptr noundef nonnull %61) #25
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60, %49
  %65 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 349), align 8, !tbaa !61
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %65, i32 noundef 3, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3)
  br label %69

69:                                               ; preds = %57, %34, %20, %13, %36, %15, %8, %6, %64, %60, %55, %46, %29, %67
  %70 = phi ptr [ %68, %67 ], [ null, %29 ], [ null, %15 ], [ null, %8 ], [ null, %46 ], [ null, %55 ], [ null, %60 ], [ null, %64 ], [ null, %6 ], [ null, %36 ], [ null, %13 ], [ null, %20 ], [ null, %34 ], [ null, %57 ]
  ret ptr %70
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @fold_builtin_snprintf_chk(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #14 !prof !60 {
  %5 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = getelementptr inbounds %struct.tree_int_cst, ptr %6, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !72
  %9 = trunc i64 %8 to i32
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %114, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  %14 = icmp eq ptr %13, null
  br i1 %14, label %114, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !72
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %114 [
    i16 12, label %20
    i16 10, label %20
  ]

20:                                               ; preds = %15, %15
  %21 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !72
  %23 = icmp eq ptr %22, null
  br i1 %23, label %114, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !72
  %27 = load i64, ptr %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = and i32 %28, 65534
  %30 = icmp ne i32 %29, 6
  %31 = and i32 %28, 65535
  %32 = icmp ne i32 %31, 8
  %33 = and i1 %30, %32
  br i1 %33, label %114, label %34

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !72
  %37 = icmp eq ptr %36, null
  br i1 %37, label %114, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !72
  %41 = load i64, ptr %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = and i32 %42, 65534
  %44 = icmp ne i32 %43, 6
  %45 = and i32 %42, 65535
  %46 = icmp ne i32 %45, 8
  %47 = and i1 %44, %46
  br i1 %47, label %114, label %48

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !72
  %51 = icmp eq ptr %50, null
  br i1 %51, label %114, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !72
  %55 = load i64, ptr %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = and i32 %56, 65534
  %58 = icmp ne i32 %57, 6
  %59 = and i32 %56, 65535
  %60 = icmp ne i32 %59, 8
  %61 = and i1 %58, %60
  br i1 %61, label %114, label %62

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 2
  %64 = load ptr, ptr %63, align 8, !tbaa !72
  %65 = icmp eq ptr %64, null
  br i1 %65, label %114, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.tree_common, ptr %64, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !72
  %69 = load i64, ptr %68, align 8
  %70 = trunc i64 %69 to i16
  switch i16 %70, label %114 [
    i16 12, label %71
    i16 10, label %71
  ]

71:                                               ; preds = %66, %66
  %72 = tail call i32 @host_integerp(ptr noundef nonnull %50, i32 noundef 1) #25
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %114, label %74

74:                                               ; preds = %71
  %75 = tail call i32 @integer_all_onesp(ptr noundef nonnull %50) #25
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %74
  %78 = tail call i32 @host_integerp(ptr noundef nonnull %22, i32 noundef 1) #25
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = icmp eq ptr %2, null
  br i1 %81, label %114, label %82

82:                                               ; preds = %80
  %83 = tail call i32 @host_integerp(ptr noundef nonnull %2, i32 noundef 1) #25
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %114, label %85

85:                                               ; preds = %77, %82
  %86 = phi ptr [ %2, %82 ], [ %22, %77 ]
  %87 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %50, ptr noundef nonnull %86) #25
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %114

89:                                               ; preds = %85, %74
  %90 = tail call fastcc zeroext i8 @init_target_chars(), !range !141
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %114, label %92

92:                                               ; preds = %89
  %93 = tail call i32 @integer_zerop(ptr noundef nonnull %36) #25
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %92
  %96 = tail call fastcc ptr @c_getstr(ptr noundef nonnull %64)
  %97 = icmp eq ptr %96, null
  br i1 %97, label %114, label %98

98:                                               ; preds = %95
  %99 = load i64, ptr @target_percent, align 8, !tbaa !82
  %100 = trunc i64 %99 to i32
  %101 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %96, i32 noundef %100)
  %102 = icmp eq ptr %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %96, ptr noundef nonnull dereferenceable(1) @target_percent_s)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %103, %98, %92
  %107 = icmp eq i32 %3, 540
  %108 = select i1 %107, i64 379, i64 372
  %109 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !61
  %111 = icmp eq ptr %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %106
  %113 = tail call ptr (i32, ptr, i32, ptr, i32, ...) @rewrite_call_expr(i32 noundef %0, ptr noundef %1, i32 noundef 5, ptr noundef nonnull %110, i32 noundef 3, ptr noundef nonnull %13, ptr noundef nonnull %22, ptr noundef nonnull %64)
  br label %114

114:                                              ; preds = %52, %38, %24, %66, %15, %62, %48, %34, %20, %11, %82, %106, %103, %95, %89, %85, %80, %71, %4, %112
  %115 = phi ptr [ %113, %112 ], [ null, %4 ], [ null, %15 ], [ null, %66 ], [ null, %71 ], [ null, %80 ], [ null, %85 ], [ null, %89 ], [ null, %95 ], [ null, %103 ], [ null, %106 ], [ null, %82 ], [ null, %11 ], [ null, %20 ], [ null, %34 ], [ null, %48 ], [ null, %62 ], [ null, %24 ], [ null, %38 ], [ null, %52 ]
  ret ptr %115
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @init_target_chars() unnamed_addr #14 !prof !60 {
  %1 = load i1, ptr @init_target_chars.init, align 1
  br i1 %1, label %26, label %2

2:                                                ; preds = %0
  %3 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 26), align 8, !tbaa !192
  %4 = tail call i64 %3(i64 noundef 10) #25
  store i64 %4, ptr @target_newline, align 8, !tbaa !82
  %5 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 26), align 8, !tbaa !192
  %6 = tail call i64 %5(i64 noundef 37) #25
  store i64 %6, ptr @target_percent, align 8, !tbaa !82
  %7 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 26), align 8, !tbaa !192
  %8 = tail call i64 %7(i64 noundef 99) #25
  store i64 %8, ptr @target_c, align 8, !tbaa !82
  %9 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 26), align 8, !tbaa !192
  %10 = tail call i64 %9(i64 noundef 115) #25
  %11 = load i64, ptr @target_newline, align 8, !tbaa !82
  %12 = icmp eq i64 %11, 0
  %13 = load i64, ptr @target_percent, align 8
  %14 = icmp eq i64 %13, 0
  %15 = select i1 %12, i1 true, i1 %14
  %16 = load i64, ptr @target_c, align 8
  %17 = icmp eq i64 %16, 0
  %18 = select i1 %15, i1 true, i1 %17
  %19 = icmp eq i64 %10, 0
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = trunc i64 %13 to i8
  store i8 %22, ptr @target_percent_c, align 1, !tbaa !72
  %23 = trunc i64 %16 to i8
  store i8 %23, ptr getelementptr inbounds ([3 x i8], ptr @target_percent_c, i64 0, i64 1), align 1, !tbaa !72
  store i8 0, ptr getelementptr inbounds ([3 x i8], ptr @target_percent_c, i64 0, i64 2), align 1, !tbaa !72
  store i8 %22, ptr @target_percent_s, align 1, !tbaa !72
  %24 = trunc i64 %10 to i8
  store i8 %24, ptr getelementptr inbounds ([3 x i8], ptr @target_percent_s, i64 0, i64 1), align 1, !tbaa !72
  store i8 0, ptr getelementptr inbounds ([3 x i8], ptr @target_percent_s, i64 0, i64 2), align 1, !tbaa !72
  store i8 %22, ptr @target_percent_s_newline, align 1, !tbaa !72
  store i8 %24, ptr getelementptr inbounds ([4 x i8], ptr @target_percent_s_newline, i64 0, i64 1), align 1, !tbaa !72
  %25 = trunc i64 %11 to i8
  store i8 %25, ptr getelementptr inbounds ([4 x i8], ptr @target_percent_s_newline, i64 0, i64 2), align 1, !tbaa !72
  store i8 0, ptr getelementptr inbounds ([4 x i8], ptr @target_percent_s_newline, i64 0, i64 3), align 1, !tbaa !72
  store i1 true, ptr @init_target_chars.init, align 1
  br label %26

26:                                               ; preds = %0, %21, %2
  %27 = phi i8 [ 0, %2 ], [ 1, %21 ], [ 1, %0 ]
  ret i8 %27
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: cold nounwind uwtable
define internal ptr @rewrite_call_expr(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ...) unnamed_addr #14 !prof !60 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  %7 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = getelementptr inbounds %struct.tree_int_cst, ptr %8, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !72
  %11 = trunc i64 %10 to i32
  %12 = add nsw i32 %11, -3
  %13 = sub nsw i32 %12, %2
  %14 = add nsw i32 %13, %4
  %15 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !72
  %17 = tail call ptr @build_pointer_type(ptr noundef %16) #25
  %18 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %17, ptr noundef %3) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #25
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
  store ptr %45, ptr %46, align 8, !tbaa !61
  %47 = add nuw nsw i64 %31, 1
  %48 = icmp eq i64 %47, %29
  br i1 %48, label %49, label %30, !llvm.loop !193

49:                                               ; preds = %41
  %50 = shl i64 %47, 3
  %51 = and i64 %50, 34359738360
  br label %52

52:                                               ; preds = %49, %5
  %53 = phi i64 [ 0, %5 ], [ %51, %49 ]
  call void @llvm.va_end(ptr %6)
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %56, ptr noundef nonnull align 8 dereferenceable(1) %61, i64 %66, i1 false), !tbaa !72
  br label %67

67:                                               ; preds = %55, %52
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #25
  %68 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !72
  %70 = call ptr @build_call_array_loc(i32 noundef %0, ptr noundef %69, ptr noundef %18, i32 noundef %14, ptr noundef nonnull %21) #25
  %71 = call ptr @fold(ptr noundef %70) #25
  ret ptr %71
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @gimple_fold_builtin_snprintf_chk(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #14 !prof !60 {
  %4 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !72
  %6 = add i32 %5, -3
  %7 = icmp ult i32 %6, 5
  br i1 %7, label %196, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 255
  %11 = add nsw i32 %10, -10
  %12 = icmp ult i32 %11, -9
  br i1 %12, label %26, label %13

13:                                               ; preds = %8
  %14 = zext nneg i32 %10 to i64
  %15 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !76
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %17
  %19 = load i64, ptr %18, align 8, !tbaa !82
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.740, i32 noundef 1622, ptr noundef nonnull @.str.725) #25
  br label %22

22:                                               ; preds = %21, %13
  %23 = getelementptr inbounds i8, ptr %0, i64 %19
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8, !tbaa !61
  br label %26

26:                                               ; preds = %8, %22
  %27 = phi ptr [ %25, %22 ], [ null, %8 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %196, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !72
  %32 = load i64, ptr %31, align 8
  %33 = trunc i64 %32 to i16
  switch i16 %33, label %196 [
    i16 12, label %34
    i16 10, label %34
  ]

34:                                               ; preds = %29, %29
  %35 = load i32, ptr %0, align 8
  %36 = and i32 %35, 255
  %37 = add nsw i32 %36, -10
  %38 = icmp ult i32 %37, -9
  br i1 %38, label %52, label %39

39:                                               ; preds = %34
  %40 = zext nneg i32 %36 to i64
  %41 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !76
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %43
  %45 = load i64, ptr %44, align 8, !tbaa !82
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.740, i32 noundef 1622, ptr noundef nonnull @.str.725) #25
  br label %48

48:                                               ; preds = %47, %39
  %49 = getelementptr inbounds i8, ptr %0, i64 %45
  %50 = getelementptr inbounds ptr, ptr %49, i64 4
  %51 = load ptr, ptr %50, align 8, !tbaa !61
  br label %52

52:                                               ; preds = %34, %48
  %53 = phi ptr [ %51, %48 ], [ null, %34 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %196, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !72
  %58 = load i64, ptr %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = and i32 %59, 65534
  %61 = icmp eq i32 %60, 6
  %62 = and i32 %59, 65535
  %63 = icmp eq i32 %62, 8
  %64 = or i1 %61, %63
  br i1 %64, label %65, label %196

65:                                               ; preds = %55
  %66 = load i32, ptr %0, align 8
  %67 = and i32 %66, 255
  %68 = add nsw i32 %67, -10
  %69 = icmp ult i32 %68, -9
  br i1 %69, label %83, label %70

70:                                               ; preds = %65
  %71 = zext nneg i32 %67 to i64
  %72 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !76
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %74
  %76 = load i64, ptr %75, align 8, !tbaa !82
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  tail call void @fancy_abort(ptr noundef nonnull @.str.740, i32 noundef 1622, ptr noundef nonnull @.str.725) #25
  br label %79

79:                                               ; preds = %78, %70
  %80 = getelementptr inbounds i8, ptr %0, i64 %76
  %81 = getelementptr inbounds ptr, ptr %80, i64 5
  %82 = load ptr, ptr %81, align 8, !tbaa !61
  br label %83

83:                                               ; preds = %65, %79
  %84 = phi ptr [ %82, %79 ], [ null, %65 ]
  %85 = icmp eq ptr %84, null
  br i1 %85, label %196, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.tree_common, ptr %84, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !72
  %89 = load i64, ptr %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = and i32 %90, 65534
  %92 = icmp ne i32 %91, 6
  %93 = and i32 %90, 65535
  %94 = icmp ne i32 %93, 8
  %95 = and i1 %92, %94
  br i1 %95, label %196, label %96

96:                                               ; preds = %86
  %97 = load i32, ptr %0, align 8
  %98 = and i32 %97, 255
  %99 = add nsw i32 %98, -10
  %100 = icmp ult i32 %99, -9
  br i1 %100, label %114, label %101

101:                                              ; preds = %96
  %102 = zext nneg i32 %98 to i64
  %103 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !76
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %105
  %107 = load i64, ptr %106, align 8, !tbaa !82
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  tail call void @fancy_abort(ptr noundef nonnull @.str.740, i32 noundef 1622, ptr noundef nonnull @.str.725) #25
  br label %110

110:                                              ; preds = %109, %101
  %111 = getelementptr inbounds i8, ptr %0, i64 %107
  %112 = getelementptr inbounds ptr, ptr %111, i64 6
  %113 = load ptr, ptr %112, align 8, !tbaa !61
  br label %114

114:                                              ; preds = %96, %110
  %115 = phi ptr [ %113, %110 ], [ null, %96 ]
  %116 = icmp eq ptr %115, null
  br i1 %116, label %196, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.tree_common, ptr %115, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !72
  %120 = load i64, ptr %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = and i32 %121, 65534
  %123 = icmp ne i32 %122, 6
  %124 = and i32 %121, 65535
  %125 = icmp ne i32 %124, 8
  %126 = and i1 %123, %125
  br i1 %126, label %196, label %127

127:                                              ; preds = %117
  %128 = load i32, ptr %0, align 8
  %129 = and i32 %128, 255
  %130 = add nsw i32 %129, -10
  %131 = icmp ult i32 %130, -9
  br i1 %131, label %145, label %132

132:                                              ; preds = %127
  %133 = zext nneg i32 %129 to i64
  %134 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %133
  %135 = load i32, ptr %134, align 4, !tbaa !76
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %136
  %138 = load i64, ptr %137, align 8, !tbaa !82
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  tail call void @fancy_abort(ptr noundef nonnull @.str.740, i32 noundef 1622, ptr noundef nonnull @.str.725) #25
  br label %141

141:                                              ; preds = %140, %132
  %142 = getelementptr inbounds i8, ptr %0, i64 %138
  %143 = getelementptr inbounds ptr, ptr %142, i64 7
  %144 = load ptr, ptr %143, align 8, !tbaa !61
  br label %145

145:                                              ; preds = %127, %141
  %146 = phi ptr [ %144, %141 ], [ null, %127 ]
  %147 = icmp eq ptr %146, null
  br i1 %147, label %196, label %148

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.tree_common, ptr %146, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !72
  %151 = load i64, ptr %150, align 8
  %152 = trunc i64 %151 to i16
  switch i16 %152, label %196 [
    i16 12, label %153
    i16 10, label %153
  ]

153:                                              ; preds = %148, %148
  %154 = tail call i32 @host_integerp(ptr noundef nonnull %115, i32 noundef 1) #25
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %196, label %156

156:                                              ; preds = %153
  %157 = tail call i32 @integer_all_onesp(ptr noundef nonnull %115) #25
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %171

159:                                              ; preds = %156
  %160 = tail call i32 @host_integerp(ptr noundef nonnull %53, i32 noundef 1) #25
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %159
  %163 = icmp eq ptr %1, null
  br i1 %163, label %196, label %164

164:                                              ; preds = %162
  %165 = tail call i32 @host_integerp(ptr noundef nonnull %1, i32 noundef 1) #25
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %196, label %167

167:                                              ; preds = %159, %164
  %168 = phi ptr [ %1, %164 ], [ %53, %159 ]
  %169 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %115, ptr noundef nonnull %168) #25
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %196

171:                                              ; preds = %167, %156
  %172 = tail call fastcc zeroext i8 @init_target_chars(), !range !141
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %196, label %174

174:                                              ; preds = %171
  %175 = tail call i32 @integer_zerop(ptr noundef nonnull %84) #25
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %188

177:                                              ; preds = %174
  %178 = tail call fastcc ptr @c_getstr(ptr noundef nonnull %146)
  %179 = icmp eq ptr %178, null
  br i1 %179, label %196, label %180

180:                                              ; preds = %177
  %181 = load i64, ptr @target_percent, align 8, !tbaa !82
  %182 = trunc i64 %181 to i32
  %183 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %178, i32 noundef %182)
  %184 = icmp eq ptr %183, null
  br i1 %184, label %188, label %185

185:                                              ; preds = %180
  %186 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %178, ptr noundef nonnull dereferenceable(1) @target_percent_s)
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %185, %180, %174
  %189 = icmp eq i32 %2, 540
  %190 = select i1 %189, i64 379, i64 372
  %191 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %190
  %192 = load ptr, ptr %191, align 8, !tbaa !61
  %193 = icmp eq ptr %192, null
  br i1 %193, label %196, label %194

194:                                              ; preds = %188
  %195 = tail call ptr (ptr, i32, ptr, i32, ...) @gimple_rewrite_call_expr(ptr noundef nonnull %0, i32 noundef 5, ptr noundef nonnull %192, i32 noundef 3, ptr noundef nonnull %27, ptr noundef nonnull %53, ptr noundef nonnull %146)
  br label %196

196:                                              ; preds = %117, %86, %55, %148, %29, %145, %114, %83, %52, %26, %164, %188, %185, %177, %171, %167, %162, %153, %3, %194
  %197 = phi ptr [ %195, %194 ], [ null, %3 ], [ null, %29 ], [ null, %148 ], [ null, %153 ], [ null, %162 ], [ null, %167 ], [ null, %171 ], [ null, %177 ], [ null, %185 ], [ null, %188 ], [ null, %164 ], [ null, %26 ], [ null, %52 ], [ null, %83 ], [ null, %114 ], [ null, %145 ], [ null, %55 ], [ null, %86 ], [ null, %117 ]
  ret ptr %197
}

; Function Attrs: cold nounwind uwtable
define internal ptr @gimple_rewrite_call_expr(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ...) unnamed_addr #14 !prof !60 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !72
  %8 = add i32 %7, -3
  %9 = sub nsw i32 %8, %1
  %10 = add nsw i32 %9, %3
  %11 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !72
  %13 = tail call ptr @build_pointer_type(ptr noundef %12) #25
  %14 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %13, ptr noundef %2) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #25
  %15 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !72
  %17 = sext i32 %10 to i64
  %18 = shl nsw i64 %17, 3
  %19 = alloca i8, i64 %18, align 16
  call void @llvm.va_start(ptr nonnull %5)
  %20 = icmp sgt i32 %3, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %4
  %22 = load i32, ptr %5, align 16
  %23 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 2
  %24 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 3
  %25 = load ptr, ptr %24, align 16
  %26 = load ptr, ptr %23, align 8
  %27 = zext nneg i32 %3 to i64
  br label %28

28:                                               ; preds = %21, %39
  %29 = phi i64 [ 0, %21 ], [ %45, %39 ]
  %30 = phi ptr [ %26, %21 ], [ %40, %39 ]
  %31 = phi i32 [ %22, %21 ], [ %41, %39 ]
  %32 = icmp ult i32 %31, 41
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = zext nneg i32 %31 to i64
  %35 = getelementptr i8, ptr %25, i64 %34
  %36 = add nuw nsw i32 %31, 8
  store i32 %36, ptr %5, align 16
  br label %39

37:                                               ; preds = %28
  %38 = getelementptr i8, ptr %30, i64 8
  store ptr %38, ptr %23, align 8
  br label %39

39:                                               ; preds = %37, %33
  %40 = phi ptr [ %30, %33 ], [ %38, %37 ]
  %41 = phi i32 [ %36, %33 ], [ %31, %37 ]
  %42 = phi ptr [ %35, %33 ], [ %30, %37 ]
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds ptr, ptr %19, i64 %29
  store ptr %43, ptr %44, align 8, !tbaa !61
  %45 = add nuw nsw i64 %29, 1
  %46 = icmp eq i64 %45, %27
  br i1 %46, label %47, label %28, !llvm.loop !194

47:                                               ; preds = %39
  %48 = and i64 %45, 4294967295
  br label %49

49:                                               ; preds = %47, %4
  %50 = phi i64 [ 0, %4 ], [ %48, %47 ]
  call void @llvm.va_end(ptr %5)
  %51 = icmp sgt i32 %8, %1
  br i1 %51, label %52, label %80

52:                                               ; preds = %49, %74
  %53 = phi i64 [ %78, %74 ], [ %50, %49 ]
  %54 = phi i32 [ %77, %74 ], [ %1, %49 ]
  %55 = add i32 %54, 3
  %56 = load i32, ptr %0, align 8
  %57 = and i32 %56, 255
  %58 = add nsw i32 %57, -10
  %59 = icmp ult i32 %58, -9
  br i1 %59, label %74, label %60

60:                                               ; preds = %52
  %61 = zext nneg i32 %57 to i64
  %62 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !76
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %64
  %66 = load i64, ptr %65, align 8, !tbaa !82
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  call void @fancy_abort(ptr noundef nonnull @.str.740, i32 noundef 1622, ptr noundef nonnull @.str.725) #25
  br label %69

69:                                               ; preds = %68, %60
  %70 = getelementptr inbounds i8, ptr %0, i64 %66
  %71 = zext i32 %55 to i64
  %72 = getelementptr inbounds ptr, ptr %70, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !61
  br label %74

74:                                               ; preds = %52, %69
  %75 = phi ptr [ %73, %69 ], [ null, %52 ]
  %76 = getelementptr inbounds ptr, ptr %19, i64 %53
  store ptr %75, ptr %76, align 8, !tbaa !61
  %77 = add i32 %54, 1
  %78 = add nuw nsw i64 %53, 1
  %79 = icmp eq i32 %77, %8
  br i1 %79, label %80, label %52, !llvm.loop !195

80:                                               ; preds = %74, %49
  %81 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !72
  %83 = call ptr @build_call_array_loc(i32 noundef %16, ptr noundef %82, ptr noundef %14, i32 noundef %10, ptr noundef nonnull %19) #25
  %84 = call ptr @fold(ptr noundef %83) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #25
  ret ptr %84
}

; Function Attrs: nounwind uwtable
define dso_local ptr @fold_call_stmt(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) local_unnamed_addr #12 !prof !196 {
  %3 = alloca [4 x ptr], align 16
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 255
  %6 = add nsw i32 %5, -10
  %7 = icmp ult i32 %6, -9
  br i1 %7, label %21, label %8, !prof !197

8:                                                ; preds = %2
  %9 = zext nneg i32 %5 to i64
  %10 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !76
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !82
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17, !prof !197

16:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.740, i32 noundef 1622, ptr noundef nonnull @.str.725) #25
  br label %17

17:                                               ; preds = %16, %8
  %18 = getelementptr inbounds i8, ptr %0, i64 %14
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !61
  br label %21

21:                                               ; preds = %17, %2
  %22 = phi ptr [ %20, %17 ], [ null, %2 ]
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 121
  br i1 %25, label %26, label %29, !prof !198

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.tree_exp, ptr %22, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !72
  br label %29

29:                                               ; preds = %21, %26
  %30 = phi ptr [ %28, %26 ], [ null, %21 ]
  %31 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !72
  %33 = icmp eq ptr %30, null
  br i1 %33, label %160, label %34, !prof !197

34:                                               ; preds = %29
  %35 = load i64, ptr %30, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 29
  br i1 %37, label %38, label %160, !prof !198

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.tree_function_decl, ptr %30, i64 0, i32 5
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 6144
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %160, label %43, !prof !198

43:                                               ; preds = %38
  %44 = load i32, ptr %0, align 8
  %45 = and i32 %44, 1048576
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %160

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %49 = load i32, ptr %48, align 4, !tbaa !72
  %50 = add i32 %49, -3
  %51 = tail call fastcc zeroext i8 @avoid_folding_inline_builtin(ptr noundef nonnull %30), !range !141
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %157

53:                                               ; preds = %47
  %54 = load i32, ptr %39, align 8
  %55 = and i32 %54, 6144
  %56 = icmp eq i32 %55, 4096
  br i1 %56, label %57, label %91

57:                                               ; preds = %53
  %58 = icmp sgt i32 %50, 0
  br i1 %58, label %59, label %87

59:                                               ; preds = %57
  %60 = zext nneg i32 %50 to i64
  br label %61

61:                                               ; preds = %59, %83
  %62 = phi i64 [ %60, %59 ], [ %64, %83 ]
  %63 = phi ptr [ null, %59 ], [ %85, %83 ]
  %64 = add nsw i64 %62, -1
  %65 = load i32, ptr %0, align 8
  %66 = and i32 %65, 255
  %67 = add nsw i32 %66, -10
  %68 = icmp ult i32 %67, -9
  br i1 %68, label %83, label %69

69:                                               ; preds = %61
  %70 = zext nneg i32 %66 to i64
  %71 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !76
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %73
  %75 = load i64, ptr %74, align 8, !tbaa !82
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  tail call void @fancy_abort(ptr noundef nonnull @.str.740, i32 noundef 1622, ptr noundef nonnull @.str.725) #25
  br label %78

78:                                               ; preds = %77, %69
  %79 = getelementptr inbounds i8, ptr %0, i64 %75
  %80 = getelementptr ptr, ptr %79, i64 %62
  %81 = getelementptr ptr, ptr %80, i64 2
  %82 = load ptr, ptr %81, align 8, !tbaa !61
  br label %83

83:                                               ; preds = %61, %78
  %84 = phi ptr [ %82, %78 ], [ null, %61 ]
  %85 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %84, ptr noundef %63) #25
  %86 = icmp sgt i64 %62, 1
  br i1 %86, label %61, label %87, !llvm.loop !199

87:                                               ; preds = %83, %57
  %88 = phi ptr [ null, %57 ], [ %85, %83 ]
  %89 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 27), align 8, !tbaa !165
  %90 = tail call ptr %89(ptr noundef nonnull %30, ptr noundef %88, i8 noundef zeroext %1) #25
  br label %157

91:                                               ; preds = %53
  %92 = icmp slt i32 %50, 5
  br i1 %92, label %93, label %124

93:                                               ; preds = %91
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #25
  %94 = icmp sgt i32 %50, 0
  br i1 %94, label %95, label %122

95:                                               ; preds = %93
  %96 = zext nneg i32 %50 to i64
  br label %97

97:                                               ; preds = %95, %117
  %98 = phi i64 [ 0, %95 ], [ %120, %117 ]
  %99 = load i32, ptr %0, align 8
  %100 = and i32 %99, 255
  %101 = add nsw i32 %100, -10
  %102 = icmp ult i32 %101, -9
  br i1 %102, label %117, label %103

103:                                              ; preds = %97
  %104 = zext nneg i32 %100 to i64
  %105 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %104
  %106 = load i32, ptr %105, align 4, !tbaa !76
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %107
  %109 = load i64, ptr %108, align 8, !tbaa !82
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  tail call void @fancy_abort(ptr noundef nonnull @.str.740, i32 noundef 1622, ptr noundef nonnull @.str.725) #25
  br label %112

112:                                              ; preds = %111, %103
  %113 = getelementptr inbounds i8, ptr %0, i64 %109
  %114 = getelementptr ptr, ptr %113, i64 %98
  %115 = getelementptr ptr, ptr %114, i64 3
  %116 = load ptr, ptr %115, align 8, !tbaa !61
  br label %117

117:                                              ; preds = %97, %112
  %118 = phi ptr [ %116, %112 ], [ null, %97 ]
  %119 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %98
  store ptr %118, ptr %119, align 8, !tbaa !61
  %120 = add nuw nsw i64 %98, 1
  %121 = icmp eq i64 %120, %96
  br i1 %121, label %122, label %97, !llvm.loop !200

122:                                              ; preds = %117, %93
  %123 = call fastcc ptr @fold_builtin_n(i32 noundef %32, ptr noundef nonnull %30, ptr noundef nonnull %3, i32 noundef %50, i8 noundef zeroext %1)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  br label %124

124:                                              ; preds = %122, %91
  %125 = phi ptr [ %123, %122 ], [ null, %91 ]
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = tail call fastcc ptr @gimple_fold_builtin_varargs(ptr noundef nonnull %30, ptr noundef nonnull %0)
  br label %129

129:                                              ; preds = %127, %124
  %130 = phi ptr [ %125, %124 ], [ %128, %127 ]
  %131 = icmp eq ptr %130, null
  br i1 %131, label %157, label %132

132:                                              ; preds = %129
  %133 = load i32, ptr %31, align 8, !tbaa !72
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %157, label %135

135:                                              ; preds = %132
  %136 = load i64, ptr %130, align 8
  %137 = and i64 %136, 65535
  %138 = icmp eq i64 %137, 116
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.tree_exp, ptr %130, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !72
  br label %142

142:                                              ; preds = %139, %135
  %143 = phi ptr [ %141, %139 ], [ %130, %135 ]
  %144 = icmp eq ptr %143, null
  br i1 %144, label %157, label %145

145:                                              ; preds = %142
  %146 = load i64, ptr %143, align 8
  %147 = and i64 %146, 65535
  %148 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %147
  %149 = load i32, ptr %148, align 4, !tbaa !76
  %150 = add i32 %149, -4
  %151 = icmp ult i32 %150, 7
  br i1 %151, label %152, label %157

152:                                              ; preds = %145
  %153 = getelementptr inbounds %struct.tree_exp, ptr %143, i64 0, i32 1
  %154 = load i32, ptr %153, align 8, !tbaa !72
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  store i32 %32, ptr %153, align 8, !tbaa !72
  br label %157

157:                                              ; preds = %129, %132, %142, %145, %152, %156, %47, %87
  %158 = phi ptr [ %90, %87 ], [ null, %47 ], [ %143, %156 ], [ %143, %152 ], [ %143, %145 ], [ %143, %142 ], [ %130, %132 ], [ undef, %129 ]
  %159 = phi i1 [ false, %87 ], [ false, %47 ], [ false, %156 ], [ false, %152 ], [ false, %145 ], [ false, %142 ], [ false, %132 ], [ true, %129 ]
  br i1 %159, label %160, label %161

160:                                              ; preds = %157, %43, %38, %34, %29
  br label %161

161:                                              ; preds = %157, %160
  %162 = phi ptr [ null, %160 ], [ %158, %157 ]
  ret ptr %162
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @gimple_fold_builtin_varargs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #14 !prof !60 {
  %3 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 2047
  switch i32 %5, label %218 [
    i32 539, label %6
    i32 541, label %6
    i32 538, label %216
    i32 540, label %216
  ]

6:                                                ; preds = %2, %2
  %7 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !72
  %9 = add i32 %8, -3
  %10 = icmp slt i32 %9, 4
  br i1 %10, label %218, label %11

11:                                               ; preds = %6
  %12 = load i32, ptr %1, align 8
  %13 = and i32 %12, 255
  %14 = add nsw i32 %13, -10
  %15 = icmp ult i32 %14, -9
  br i1 %15, label %29, label %16

16:                                               ; preds = %11
  %17 = zext nneg i32 %13 to i64
  %18 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !76
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %20
  %22 = load i64, ptr %21, align 8, !tbaa !82
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.740, i32 noundef 1622, ptr noundef nonnull @.str.725) #25
  br label %25

25:                                               ; preds = %24, %16
  %26 = getelementptr inbounds i8, ptr %1, i64 %22
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8, !tbaa !61
  br label %29

29:                                               ; preds = %25, %11
  %30 = phi ptr [ %28, %25 ], [ null, %11 ]
  %31 = icmp eq ptr %30, null
  br i1 %31, label %218, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !72
  %35 = load i64, ptr %34, align 8
  %36 = trunc i64 %35 to i16
  switch i16 %36, label %218 [
    i16 12, label %37
    i16 10, label %37
  ]

37:                                               ; preds = %32, %32
  %38 = load i32, ptr %1, align 8
  %39 = and i32 %38, 255
  %40 = add nsw i32 %39, -10
  %41 = icmp ult i32 %40, -9
  br i1 %41, label %55, label %42

42:                                               ; preds = %37
  %43 = zext nneg i32 %39 to i64
  %44 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !76
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %46
  %48 = load i64, ptr %47, align 8, !tbaa !82
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str.740, i32 noundef 1622, ptr noundef nonnull @.str.725) #25
  br label %51

51:                                               ; preds = %50, %42
  %52 = getelementptr inbounds i8, ptr %1, i64 %48
  %53 = getelementptr inbounds ptr, ptr %52, i64 4
  %54 = load ptr, ptr %53, align 8, !tbaa !61
  br label %55

55:                                               ; preds = %51, %37
  %56 = phi ptr [ %54, %51 ], [ null, %37 ]
  %57 = icmp eq ptr %56, null
  br i1 %57, label %218, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.tree_common, ptr %56, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !72
  %61 = load i64, ptr %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = and i32 %62, 65534
  %64 = icmp eq i32 %63, 6
  %65 = and i32 %62, 65535
  %66 = icmp eq i32 %65, 8
  %67 = or i1 %64, %66
  br i1 %67, label %68, label %218

68:                                               ; preds = %58
  %69 = load i32, ptr %1, align 8
  %70 = and i32 %69, 255
  %71 = add nsw i32 %70, -10
  %72 = icmp ult i32 %71, -9
  br i1 %72, label %86, label %73

73:                                               ; preds = %68
  %74 = zext nneg i32 %70 to i64
  %75 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !76
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %77
  %79 = load i64, ptr %78, align 8, !tbaa !82
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  tail call void @fancy_abort(ptr noundef nonnull @.str.740, i32 noundef 1622, ptr noundef nonnull @.str.725) #25
  br label %82

82:                                               ; preds = %81, %73
  %83 = getelementptr inbounds i8, ptr %1, i64 %79
  %84 = getelementptr inbounds ptr, ptr %83, i64 5
  %85 = load ptr, ptr %84, align 8, !tbaa !61
  br label %86

86:                                               ; preds = %82, %68
  %87 = phi ptr [ %85, %82 ], [ null, %68 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %218, label %89

89:                                               ; preds = %86
  %90 = getelementptr inbounds %struct.tree_common, ptr %87, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !72
  %92 = load i64, ptr %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = and i32 %93, 65534
  %95 = icmp eq i32 %94, 6
  %96 = and i32 %93, 65535
  %97 = icmp eq i32 %96, 8
  %98 = or i1 %95, %97
  br i1 %98, label %99, label %218

99:                                               ; preds = %89
  %100 = load i32, ptr %1, align 8
  %101 = and i32 %100, 255
  %102 = add nsw i32 %101, -10
  %103 = icmp ult i32 %102, -9
  br i1 %103, label %117, label %104

104:                                              ; preds = %99
  %105 = zext nneg i32 %101 to i64
  %106 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !76
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %108
  %110 = load i64, ptr %109, align 8, !tbaa !82
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  tail call void @fancy_abort(ptr noundef nonnull @.str.740, i32 noundef 1622, ptr noundef nonnull @.str.725) #25
  br label %113

113:                                              ; preds = %112, %104
  %114 = getelementptr inbounds i8, ptr %1, i64 %110
  %115 = getelementptr inbounds ptr, ptr %114, i64 6
  %116 = load ptr, ptr %115, align 8, !tbaa !61
  br label %117

117:                                              ; preds = %113, %99
  %118 = phi ptr [ %116, %113 ], [ null, %99 ]
  %119 = icmp eq ptr %118, null
  br i1 %119, label %218, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.tree_common, ptr %118, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !72
  %123 = load i64, ptr %122, align 8
  %124 = trunc i64 %123 to i16
  switch i16 %124, label %218 [
    i16 12, label %125
    i16 10, label %125
  ]

125:                                              ; preds = %120, %120
  %126 = tail call i32 @host_integerp(ptr noundef nonnull %87, i32 noundef 1) #25
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %218, label %128

128:                                              ; preds = %125
  %129 = tail call fastcc zeroext i8 @init_target_chars(), !range !141
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %218, label %131

131:                                              ; preds = %128
  %132 = tail call fastcc ptr @c_getstr(ptr noundef nonnull %118)
  %133 = icmp eq ptr %132, null
  br i1 %133, label %187, label %134

134:                                              ; preds = %131
  %135 = load i64, ptr @target_percent, align 8, !tbaa !82
  %136 = trunc i64 %135 to i32
  %137 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %132, i32 noundef %136)
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %147

139:                                              ; preds = %134
  %140 = icmp ne i32 %5, 539
  %141 = icmp eq i32 %9, 4
  %142 = or i1 %140, %141
  br i1 %142, label %143, label %187

143:                                              ; preds = %139
  %144 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !61
  %145 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %132)
  %146 = tail call ptr @build_int_cstu(ptr noundef %144, i64 noundef %145) #25
  br label %187

147:                                              ; preds = %134
  %148 = icmp eq i32 %5, 539
  br i1 %148, label %149, label %187

149:                                              ; preds = %147
  %150 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %132, ptr noundef nonnull dereferenceable(1) @target_percent_s)
  %151 = icmp eq i32 %150, 0
  %152 = icmp eq i32 %9, 5
  %153 = and i1 %152, %151
  br i1 %153, label %154, label %187

154:                                              ; preds = %149
  %155 = load i32, ptr %1, align 8
  %156 = and i32 %155, 255
  %157 = add nsw i32 %156, -10
  %158 = icmp ult i32 %157, -9
  br i1 %158, label %172, label %159

159:                                              ; preds = %154
  %160 = zext nneg i32 %156 to i64
  %161 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %160
  %162 = load i32, ptr %161, align 4, !tbaa !76
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %163
  %165 = load i64, ptr %164, align 8, !tbaa !82
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %159
  tail call void @fancy_abort(ptr noundef nonnull @.str.740, i32 noundef 1622, ptr noundef nonnull @.str.725) #25
  br label %168

168:                                              ; preds = %167, %159
  %169 = getelementptr inbounds i8, ptr %1, i64 %165
  %170 = getelementptr inbounds ptr, ptr %169, i64 7
  %171 = load ptr, ptr %170, align 8, !tbaa !61
  br label %172

172:                                              ; preds = %168, %154
  %173 = phi ptr [ %171, %168 ], [ null, %154 ]
  %174 = icmp eq ptr %173, null
  br i1 %174, label %187, label %175

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.tree_common, ptr %173, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !72
  %178 = load i64, ptr %177, align 8
  %179 = trunc i64 %178 to i16
  switch i16 %179, label %187 [
    i16 12, label %180
    i16 10, label %180
  ]

180:                                              ; preds = %175, %175
  %181 = tail call ptr @c_strlen(ptr noundef nonnull %173, i32 noundef 1)
  %182 = icmp eq ptr %181, null
  br i1 %182, label %186, label %183

183:                                              ; preds = %180
  %184 = tail call i32 @host_integerp(ptr noundef nonnull %181, i32 noundef 1) #25
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %183, %180
  br label %187

187:                                              ; preds = %175, %172, %186, %183, %149, %147, %143, %139, %131
  %188 = phi ptr [ %146, %143 ], [ null, %139 ], [ null, %149 ], [ null, %147 ], [ null, %131 ], [ %181, %183 ], [ null, %186 ], [ null, %175 ], [ null, %172 ]
  %189 = tail call i32 @integer_all_onesp(ptr noundef nonnull %87) #25
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %187
  %192 = icmp eq ptr %188, null
  br i1 %192, label %218, label %193

193:                                              ; preds = %191
  %194 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %188, ptr noundef nonnull %87) #25
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %218, label %196

196:                                              ; preds = %193, %187
  %197 = tail call i32 @integer_zerop(ptr noundef nonnull %56) #25
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %208

199:                                              ; preds = %196
  br i1 %133, label %218, label %200

200:                                              ; preds = %199
  %201 = load i64, ptr @target_percent, align 8, !tbaa !82
  %202 = trunc i64 %201 to i32
  %203 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %132, i32 noundef %202)
  %204 = icmp eq ptr %203, null
  br i1 %204, label %208, label %205

205:                                              ; preds = %200
  %206 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %132, ptr noundef nonnull dereferenceable(1) @target_percent_s)
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %218

208:                                              ; preds = %205, %200, %196
  %209 = icmp eq i32 %5, 541
  %210 = select i1 %209, i64 380, i64 373
  %211 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %210
  %212 = load ptr, ptr %211, align 8, !tbaa !61
  %213 = icmp eq ptr %212, null
  br i1 %213, label %218, label %214

214:                                              ; preds = %208
  %215 = tail call ptr (ptr, i32, ptr, i32, ...) @gimple_rewrite_call_expr(ptr noundef nonnull %1, i32 noundef 4, ptr noundef nonnull %212, i32 noundef 2, ptr noundef nonnull %30, ptr noundef nonnull %118)
  br label %218

216:                                              ; preds = %2, %2
  %217 = tail call ptr @gimple_fold_builtin_snprintf_chk(ptr noundef %1, ptr noundef null, i32 noundef %5)
  br label %218

218:                                              ; preds = %193, %125, %55, %6, %89, %58, %120, %32, %214, %208, %205, %199, %191, %128, %29, %86, %117, %216, %2
  %219 = phi ptr [ null, %2 ], [ %217, %216 ], [ %215, %214 ], [ null, %32 ], [ null, %120 ], [ null, %128 ], [ null, %191 ], [ null, %199 ], [ null, %205 ], [ null, %208 ], [ null, %29 ], [ null, %86 ], [ null, %117 ], [ null, %58 ], [ null, %89 ], [ null, %6 ], [ null, %55 ], [ null, %125 ], [ null, %193 ]
  %220 = icmp eq ptr %219, null
  br i1 %220, label %227, label %221

221:                                              ; preds = %218
  %222 = getelementptr inbounds %struct.tree_common, ptr %219, i64 0, i32 2
  %223 = load ptr, ptr %222, align 8, !tbaa !72
  %224 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef %223, ptr noundef nonnull %219) #25
  %225 = load i64, ptr %224, align 8
  %226 = or i64 %225, 8388608
  store i64 %226, ptr %224, align 8
  br label %227

227:                                              ; preds = %218, %221
  %228 = phi ptr [ %224, %221 ], [ null, %218 ]
  ret ptr %228
}

; Function Attrs: cold nounwind uwtable
define dso_local void @set_builtin_user_assembler_name(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #14 !prof !60 {
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
  br i1 %12, label %14, label %13

13:                                               ; preds = %6, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.724, i32 noundef 13869, ptr noundef nonnull @.str.725) #25
  br label %14

14:                                               ; preds = %6, %13
  %15 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 2047
  %18 = zext nneg i32 %17 to i64
  %19 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !61
  tail call void @set_user_assembler_name(ptr noundef %20, ptr noundef %1) #25
  %21 = load i32, ptr %15, align 8
  %22 = and i32 %21, 2047
  switch i32 %22, label %33 [
    i32 330, label %23
    i32 333, label %25
    i32 331, label %27
    i32 329, label %29
    i32 412, label %31
  ]

23:                                               ; preds = %14
  tail call void @init_block_move_fn(ptr noundef %1) #25
  %24 = tail call ptr @set_user_assembler_libfunc(ptr noundef nonnull @.str.732, ptr noundef %1) #25
  store ptr %24, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 1), align 8, !tbaa !61
  br label %33

25:                                               ; preds = %14
  tail call void @init_block_clear_fn(ptr noundef %1) #25
  %26 = tail call ptr @set_user_assembler_libfunc(ptr noundef nonnull @.str.733, ptr noundef %1) #25
  store ptr %26, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 4), align 16, !tbaa !61
  br label %33

27:                                               ; preds = %14
  %28 = tail call ptr @set_user_assembler_libfunc(ptr noundef nonnull @.str.734, ptr noundef %1) #25
  store ptr %28, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 2), align 16, !tbaa !61
  br label %33

29:                                               ; preds = %14
  %30 = tail call ptr @set_user_assembler_libfunc(ptr noundef nonnull @.str.735, ptr noundef %1) #25
  store ptr %30, ptr getelementptr inbounds ([14 x ptr], ptr @libfunc_table, i64 0, i64 3), align 8, !tbaa !61
  br label %33

31:                                               ; preds = %14
  %32 = tail call ptr @set_user_assembler_libfunc(ptr noundef nonnull @.str.736, ptr noundef %1) #25
  store ptr %32, ptr @libfunc_table, align 16, !tbaa !61
  br label %33

33:                                               ; preds = %14, %31, %29, %27, %25, %23
  ret void
}

declare void @set_user_assembler_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @init_block_move_fn(ptr noundef) local_unnamed_addr #3

declare ptr @set_user_assembler_libfunc(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @init_block_clear_fn(ptr noundef) local_unnamed_addr #3

declare ptr @immed_double_const(i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @expand_expr_real(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_inf(i32 noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #14 !prof !60 {
  %4 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #25
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 14
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #25
  br label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = lshr i32 %12, 16
  %14 = and i32 %13, 255
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi i32 [ %9, %8 ], [ %14, %10 ]
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !72
  %20 = icmp eq i8 %19, 8
  br i1 %20, label %72, label %21

21:                                               ; preds = %15
  %22 = load i64, ptr %1, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 14
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #25
  br label %32

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = lshr i32 %29, 16
  %31 = and i32 %30, 255
  br label %32

32:                                               ; preds = %27, %25
  %33 = phi i32 [ %26, %25 ], [ %31, %27 ]
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !72
  %37 = icmp eq i8 %36, 9
  br i1 %37, label %72, label %38

38:                                               ; preds = %32
  %39 = load i64, ptr %1, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 14
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #25
  br label %49

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = lshr i32 %46, 16
  %48 = and i32 %47, 255
  br label %49

49:                                               ; preds = %44, %42
  %50 = phi i32 [ %43, %42 ], [ %48, %44 ]
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !72
  %54 = icmp eq i8 %53, 11
  br i1 %54, label %72, label %55

55:                                               ; preds = %49
  %56 = load i64, ptr %1, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 14
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #25
  br label %66

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = lshr i32 %63, 16
  %65 = and i32 %64, 255
  br label %66

66:                                               ; preds = %61, %59
  %67 = phi i32 [ %60, %59 ], [ %65, %61 ]
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !72
  %71 = icmp eq i8 %70, 17
  br i1 %71, label %72, label %272

72:                                               ; preds = %66, %49, %32, %15
  %73 = load i64, ptr %1, align 8
  %74 = and i64 %73, 65535
  %75 = icmp eq i64 %74, 14
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #25
  br label %83

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %80 = load i32, ptr %79, align 4
  %81 = lshr i32 %80, 16
  %82 = and i32 %81, 255
  br label %83

83:                                               ; preds = %78, %76
  %84 = phi i32 [ %77, %76 ], [ %82, %78 ]
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !72
  %88 = icmp eq i8 %87, 8
  br i1 %88, label %106, label %89

89:                                               ; preds = %83
  %90 = load i64, ptr %1, align 8
  %91 = and i64 %90, 65535
  %92 = icmp eq i64 %91, 14
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #25
  br label %100

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %97 = load i32, ptr %96, align 4
  %98 = lshr i32 %97, 16
  %99 = and i32 %98, 255
  br label %100

100:                                              ; preds = %95, %93
  %101 = phi i32 [ %94, %93 ], [ %99, %95 ]
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %102
  %104 = load i8, ptr %103, align 1, !tbaa !72
  %105 = icmp eq i8 %104, 9
  br i1 %105, label %106, label %117

106:                                              ; preds = %100, %83
  %107 = load i64, ptr %1, align 8
  %108 = and i64 %107, 65535
  %109 = icmp eq i64 %108, 14
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #25
  br label %134

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %114 = load i32, ptr %113, align 4
  %115 = lshr i32 %114, 16
  %116 = and i32 %115, 255
  br label %134

117:                                              ; preds = %100
  %118 = load i64, ptr %1, align 8
  %119 = and i64 %118, 65535
  %120 = icmp eq i64 %119, 14
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #25
  br label %128

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %125 = load i32, ptr %124, align 4
  %126 = lshr i32 %125, 16
  %127 = and i32 %126, 255
  br label %128

128:                                              ; preds = %123, %121
  %129 = phi i32 [ %122, %121 ], [ %127, %123 ]
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !72
  %133 = zext i8 %132 to i32
  br label %134

134:                                              ; preds = %110, %112, %128
  %135 = phi i32 [ %133, %128 ], [ %111, %110 ], [ %116, %112 ]
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %136
  %138 = load i8, ptr %137, align 1, !tbaa !72
  %139 = icmp eq i8 %138, 9
  %140 = load i64, ptr %1, align 8
  %141 = and i64 %140, 65535
  %142 = icmp eq i64 %141, 14
  br i1 %139, label %143, label %202

143:                                              ; preds = %134
  br i1 %142, label %144, label %146

144:                                              ; preds = %143
  %145 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #25
  br label %151

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %148 = load i32, ptr %147, align 4
  %149 = lshr i32 %148, 16
  %150 = and i32 %149, 255
  br label %151

151:                                              ; preds = %146, %144
  %152 = phi i32 [ %145, %144 ], [ %150, %146 ]
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %153
  %155 = load i8, ptr %154, align 1, !tbaa !72
  %156 = icmp eq i8 %155, 8
  br i1 %156, label %174, label %157

157:                                              ; preds = %151
  %158 = load i64, ptr %1, align 8
  %159 = and i64 %158, 65535
  %160 = icmp eq i64 %159, 14
  br i1 %160, label %161, label %163

161:                                              ; preds = %157
  %162 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #25
  br label %168

163:                                              ; preds = %157
  %164 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %165 = load i32, ptr %164, align 4
  %166 = lshr i32 %165, 16
  %167 = and i32 %166, 255
  br label %168

168:                                              ; preds = %163, %161
  %169 = phi i32 [ %162, %161 ], [ %167, %163 ]
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %170
  %172 = load i8, ptr %171, align 1, !tbaa !72
  %173 = icmp eq i8 %172, 9
  br i1 %173, label %174, label %185

174:                                              ; preds = %168, %151
  %175 = load i64, ptr %1, align 8
  %176 = and i64 %175, 65535
  %177 = icmp eq i64 %176, 14
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #25
  br label %261

180:                                              ; preds = %174
  %181 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %182 = load i32, ptr %181, align 4
  %183 = lshr i32 %182, 16
  %184 = and i32 %183, 255
  br label %261

185:                                              ; preds = %168
  %186 = load i64, ptr %1, align 8
  %187 = and i64 %186, 65535
  %188 = icmp eq i64 %187, 14
  br i1 %188, label %189, label %191

189:                                              ; preds = %185
  %190 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #25
  br label %196

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %193 = load i32, ptr %192, align 4
  %194 = lshr i32 %193, 16
  %195 = and i32 %194, 255
  br label %196

196:                                              ; preds = %191, %189
  %197 = phi i32 [ %190, %189 ], [ %195, %191 ]
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %198
  %200 = load i8, ptr %199, align 1, !tbaa !72
  %201 = zext i8 %200 to i32
  br label %261

202:                                              ; preds = %134
  br i1 %142, label %203, label %205

203:                                              ; preds = %202
  %204 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #25
  br label %210

205:                                              ; preds = %202
  %206 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %207 = load i32, ptr %206, align 4
  %208 = lshr i32 %207, 16
  %209 = and i32 %208, 255
  br label %210

210:                                              ; preds = %205, %203
  %211 = phi i32 [ %204, %203 ], [ %209, %205 ]
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %212
  %214 = load i8, ptr %213, align 1, !tbaa !72
  %215 = icmp eq i8 %214, 8
  br i1 %215, label %233, label %216

216:                                              ; preds = %210
  %217 = load i64, ptr %1, align 8
  %218 = and i64 %217, 65535
  %219 = icmp eq i64 %218, 14
  br i1 %219, label %220, label %222

220:                                              ; preds = %216
  %221 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #25
  br label %227

222:                                              ; preds = %216
  %223 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %224 = load i32, ptr %223, align 4
  %225 = lshr i32 %224, 16
  %226 = and i32 %225, 255
  br label %227

227:                                              ; preds = %222, %220
  %228 = phi i32 [ %221, %220 ], [ %226, %222 ]
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %229
  %231 = load i8, ptr %230, align 1, !tbaa !72
  %232 = icmp eq i8 %231, 9
  br i1 %232, label %233, label %244

233:                                              ; preds = %227, %210
  %234 = load i64, ptr %1, align 8
  %235 = and i64 %234, 65535
  %236 = icmp eq i64 %235, 14
  br i1 %236, label %237, label %239

237:                                              ; preds = %233
  %238 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #25
  br label %261

239:                                              ; preds = %233
  %240 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %241 = load i32, ptr %240, align 4
  %242 = lshr i32 %241, 16
  %243 = and i32 %242, 255
  br label %261

244:                                              ; preds = %227
  %245 = load i64, ptr %1, align 8
  %246 = and i64 %245, 65535
  %247 = icmp eq i64 %246, 14
  br i1 %247, label %248, label %250

248:                                              ; preds = %244
  %249 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #25
  br label %255

250:                                              ; preds = %244
  %251 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %252 = load i32, ptr %251, align 4
  %253 = lshr i32 %252, 16
  %254 = and i32 %253, 255
  br label %255

255:                                              ; preds = %250, %248
  %256 = phi i32 [ %249, %248 ], [ %254, %250 ]
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %257
  %259 = load i8, ptr %258, align 1, !tbaa !72
  %260 = zext i8 %259 to i32
  br label %261

261:                                              ; preds = %255, %239, %237, %196, %180, %178
  %262 = phi i32 [ %201, %196 ], [ %179, %178 ], [ %184, %180 ], [ %260, %255 ], [ %238, %237 ], [ %243, %239 ]
  %263 = add i32 %262, -38
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %264
  %266 = load ptr, ptr %265, align 8, !tbaa !61
  %267 = getelementptr inbounds %struct.real_format, ptr %266, i64 0, i32 12
  %268 = load i8, ptr %267, align 1, !tbaa !183
  %269 = icmp eq i8 %268, 0
  %270 = icmp ne i32 %2, 0
  %271 = and i1 %270, %269
  br i1 %271, label %274, label %276

272:                                              ; preds = %66
  %273 = icmp eq i32 %2, 0
  br i1 %273, label %276, label %274

274:                                              ; preds = %261, %272
  %275 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %0, i32 noundef 0, ptr noundef nonnull @.str.738) #25
  br label %276

276:                                              ; preds = %272, %274, %261
  call void @real_inf(ptr noundef nonnull %4) #25
  %277 = call ptr @build_real(ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.real_value) align 8 %4) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  ret ptr %277
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_classify_type(ptr noundef readonly %0) unnamed_addr #14 !prof !60 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %28, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %27 [
    i16 19, label %28
    i16 8, label %8
    i16 6, label %9
    i16 7, label %10
    i16 10, label %11
    i16 12, label %12
    i16 5, label %13
    i16 9, label %14
    i16 13, label %15
    i16 20, label %16
    i16 21, label %17
    i16 16, label %18
    i16 17, label %19
    i16 18, label %19
    i16 15, label %20
    i16 22, label %26
  ]

8:                                                ; preds = %3
  br label %28

9:                                                ; preds = %3
  br label %28

10:                                               ; preds = %3
  br label %28

11:                                               ; preds = %3
  br label %28

12:                                               ; preds = %3
  br label %28

13:                                               ; preds = %3
  br label %28

14:                                               ; preds = %3
  br label %28

15:                                               ; preds = %3
  br label %28

16:                                               ; preds = %3
  br label %28

17:                                               ; preds = %3
  br label %28

18:                                               ; preds = %3
  br label %28

19:                                               ; preds = %3, %3
  br label %28

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 16777216
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i64 14, i64 15
  br label %28

26:                                               ; preds = %3
  br label %28

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %27, %26, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %3, %1
  %29 = phi i64 [ -1, %1 ], [ -1, %27 ], [ 16, %26 ], [ %25, %20 ], [ 13, %19 ], [ 12, %18 ], [ 11, %17 ], [ 10, %16 ], [ 9, %15 ], [ 8, %14 ], [ 7, %13 ], [ 6, %12 ], [ 5, %11 ], [ 4, %10 ], [ 3, %9 ], [ 1, %8 ], [ 0, %3 ]
  %30 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %29) #25
  ret ptr %30
}

declare zeroext i8 @pedwarn(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @real_inf(ptr noundef) local_unnamed_addr #3

declare ptr @build_real(ptr noundef, ptr noundef byval(%struct.real_value) align 8) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_constant_p(ptr noundef %0) unnamed_addr #14 !prof !60 {
  %2 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #25
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !76
  %7 = icmp eq i32 %6, 1
  %8 = and i64 %3, 196607
  %9 = icmp eq i64 %8, 131123
  %10 = or i1 %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !61
  br label %56

13:                                               ; preds = %1
  %14 = icmp eq i64 %4, 121
  br i1 %14, label %15, label %36

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !72
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %33 [
    i16 28, label %31
    i16 45, label %20
  ]

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !72
  %23 = tail call i32 @integer_zerop(ptr noundef %22) #25
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !72
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 28
  br i1 %30, label %31, label %33

31:                                               ; preds = %15, %25
  %32 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !61
  br label %33

33:                                               ; preds = %25, %20, %15, %31
  %34 = phi ptr [ %32, %31 ], [ undef, %15 ], [ undef, %20 ], [ undef, %25 ]
  %35 = phi i1 [ false, %31 ], [ true, %15 ], [ true, %20 ], [ true, %25 ]
  br i1 %35, label %36, label %56

36:                                               ; preds = %33, %13
  %37 = load i64, ptr %2, align 8
  %38 = and i64 %37, 65536
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !72
  %43 = load i64, ptr %42, align 8
  %44 = trunc i64 %43 to i16
  switch i16 %44, label %45 [
    i16 15, label %54
    i16 16, label %54
    i16 17, label %54
    i16 18, label %54
    i16 10, label %54
  ]

45:                                               ; preds = %40
  %46 = and i64 %43, 65535
  %47 = icmp eq i64 %46, 12
  %48 = load ptr, ptr @cfun, align 8
  %49 = icmp eq ptr %48, null
  %50 = select i1 %47, i1 true, i1 %49
  %51 = load i32, ptr @folding_initializer, align 4
  %52 = icmp ne i32 %51, 0
  %53 = select i1 %50, i1 true, i1 %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %40, %40, %40, %40, %40, %45, %36
  %55 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !61
  br label %56

56:                                               ; preds = %45, %33, %54, %11
  %57 = phi ptr [ %12, %11 ], [ %34, %33 ], [ %55, %54 ], [ null, %45 ]
  ret ptr %57
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_strlen(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #14 !prof !60 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %15 [
    i16 12, label %10
    i16 10, label %10
  ]

10:                                               ; preds = %5, %5
  %11 = tail call ptr @c_strlen(ptr noundef nonnull %2, i32 noundef 0)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %11) #25
  br label %15

15:                                               ; preds = %5, %3, %13, %10
  %16 = phi ptr [ null, %5 ], [ %14, %13 ], [ null, %10 ], [ null, %3 ]
  ret ptr %16
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_fabs(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #14 !prof !60 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 9
  br i1 %10, label %11, label %20

11:                                               ; preds = %5
  %12 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %2, ptr noundef nonnull %1) #25
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 24
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = tail call ptr @fold_abs_const(ptr noundef nonnull %12, ptr noundef %2) #25
  br label %20

18:                                               ; preds = %11
  %19 = tail call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 82, ptr noundef %2, ptr noundef nonnull %12) #25
  br label %20

20:                                               ; preds = %3, %5, %18, %16
  %21 = phi ptr [ %17, %16 ], [ %19, %18 ], [ null, %5 ], [ null, %3 ]
  ret ptr %21
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_abs(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #14 !prof !60 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %24, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = and i32 %9, 65534
  %11 = icmp ne i32 %10, 6
  %12 = and i32 %9, 65535
  %13 = icmp ne i32 %12, 8
  %14 = and i1 %11, %13
  br i1 %14, label %24, label %15

15:                                               ; preds = %5
  %16 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %2, ptr noundef nonnull %1) #25
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 23
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = tail call ptr @fold_abs_const(ptr noundef nonnull %16, ptr noundef %2) #25
  br label %24

22:                                               ; preds = %15
  %23 = tail call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 82, ptr noundef %2, ptr noundef nonnull %16) #25
  br label %24

24:                                               ; preds = %5, %3, %22, %20
  %25 = phi ptr [ %21, %20 ], [ %23, %22 ], [ null, %3 ], [ null, %5 ]
  ret ptr %25
}

declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @non_lvalue_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_carg(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #14 !prof !60 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %55, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 13
  br i1 %10, label %11, label %55

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 9
  br i1 %16, label %17, label %55

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 16
  %19 = load ptr, ptr %18, align 8, !tbaa !72
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16, !tbaa !61
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 13), align 8, !tbaa !61
  br label %34

24:                                               ; preds = %17
  %25 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !61
  %26 = icmp eq ptr %19, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 14), align 16, !tbaa !61
  br label %34

29:                                               ; preds = %24
  %30 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 33), align 8, !tbaa !61
  %31 = icmp eq ptr %19, %30
  %32 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 15), align 8
  %33 = select i1 %31, ptr %32, ptr null
  br label %34

34:                                               ; preds = %29, %22, %27
  %35 = phi ptr [ %23, %22 ], [ %28, %27 ], [ %33, %29 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %53, label %37

37:                                               ; preds = %34
  %38 = load i64, ptr %1, align 8
  %39 = and i64 %38, 262144
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = trunc i64 %38 to i16
  switch i16 %42, label %46 [
    i16 34, label %48
    i16 32, label %43
  ]

43:                                               ; preds = %41
  %44 = and i64 %38, 67108864
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43, %41, %37
  %47 = tail call ptr @save_expr(ptr noundef nonnull %1) #25
  br label %48

48:                                               ; preds = %41, %43, %46
  %49 = phi ptr [ %47, %46 ], [ %1, %41 ], [ %1, %43 ]
  %50 = tail call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 43, ptr noundef %2, ptr noundef %49) #25
  %51 = tail call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 44, ptr noundef %2, ptr noundef %49) #25
  %52 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %35, i32 noundef 2, ptr noundef %51, ptr noundef %50)
  br label %53

53:                                               ; preds = %34, %48
  %54 = phi ptr [ %52, %48 ], [ undef, %34 ]
  br i1 %36, label %55, label %56

55:                                               ; preds = %3, %53, %11, %5
  br label %56

56:                                               ; preds = %53, %55
  %57 = phi ptr [ %54, %53 ], [ null, %55 ]
  ret ptr %57
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_nan(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #14 !prof !60 {
  %4 = alloca %struct.real_value, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #25
  %5 = icmp eq ptr %0, null
  br i1 %5, label %31, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %31 [
    i16 12, label %11
    i16 10, label %11
  ]

11:                                               ; preds = %6, %6
  %12 = tail call fastcc ptr @c_getstr(ptr noundef nonnull %0)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %31, label %14

14:                                               ; preds = %11
  %15 = load i64, ptr %1, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 14
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #25
  br label %25

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = lshr i32 %22, 16
  %24 = and i32 %23, 255
  br label %25

25:                                               ; preds = %20, %18
  %26 = phi i32 [ %19, %18 ], [ %24, %20 ]
  %27 = call zeroext i8 @real_nan(ptr noundef nonnull %4, ptr noundef nonnull %12, i32 noundef %2, i32 noundef %26) #25
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = call ptr @build_real(ptr noundef nonnull %1, ptr noundef nonnull byval(%struct.real_value) align 8 %4) #25
  br label %31

31:                                               ; preds = %6, %3, %25, %11, %29
  %32 = phi ptr [ %30, %29 ], [ null, %6 ], [ null, %11 ], [ null, %25 ], [ null, %3 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  ret ptr %32
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_floor(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #14 !prof !60 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.real_value, align 8
  %6 = icmp eq ptr %2, null
  br i1 %6, label %76, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 9
  br i1 %12, label %13, label %76

13:                                               ; preds = %7
  %14 = load i64, ptr %2, align 8
  %15 = and i64 %14, 134283263
  %16 = icmp eq i64 %15, 24
  br i1 %16, label %17, label %45

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #25
  %18 = getelementptr inbounds %struct.tree_real_cst, ptr %2, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %19, i64 32, i1 false), !tbaa.struct !172
  %20 = call zeroext i8 @real_isnan(ptr noundef nonnull %4) #25
  %21 = icmp ne i8 %20, 0
  %22 = load i32, ptr @flag_errno_math, align 4
  %23 = icmp ne i32 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %43, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !72
  %28 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #25
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 14
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = call i32 @vector_type_mode(ptr noundef nonnull %29) #25
  br label %40

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 255
  br label %40

40:                                               ; preds = %35, %33
  %41 = phi i32 [ %34, %33 ], [ %39, %35 ]
  call void @real_floor(ptr noundef nonnull %5, i32 noundef %41, ptr noundef nonnull %4) #25
  %42 = call ptr @build_real(ptr noundef nonnull %29, ptr noundef nonnull byval(%struct.real_value) align 8 %5) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #25
  br label %43

43:                                               ; preds = %17, %40
  %44 = phi ptr [ %42, %40 ], [ undef, %17 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  br i1 %24, label %45, label %76

45:                                               ; preds = %43, %13
  %46 = phi ptr [ %44, %43 ], [ undef, %13 ]
  %47 = call zeroext i8 @tree_expr_nonnegative_p(ptr noundef nonnull %2) #25
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %74, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr %8, align 8, !tbaa !72
  %51 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 16
  %52 = load ptr, ptr %51, align 8, !tbaa !72
  %53 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16, !tbaa !61
  %54 = icmp eq ptr %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 240), align 16, !tbaa !61
  br label %67

57:                                               ; preds = %49
  %58 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !61
  %59 = icmp eq ptr %52, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 241), align 8, !tbaa !61
  br label %67

62:                                               ; preds = %57
  %63 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 33), align 8, !tbaa !61
  %64 = icmp eq ptr %52, %63
  %65 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 242), align 16
  %66 = select i1 %64, ptr %65, ptr null
  br label %67

67:                                               ; preds = %62, %55, %60
  %68 = phi ptr [ %56, %55 ], [ %61, %60 ], [ %66, %62 ]
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %68, i32 noundef 1, ptr noundef nonnull %2)
  br label %72

72:                                               ; preds = %67, %70
  %73 = phi ptr [ %71, %70 ], [ %46, %67 ]
  br i1 %69, label %74, label %76

74:                                               ; preds = %72, %45
  %75 = call fastcc ptr @fold_trunc_transparent_mathfn(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %76

76:                                               ; preds = %3, %72, %43, %7, %74
  %77 = phi ptr [ %73, %72 ], [ %75, %74 ], [ %44, %43 ], [ null, %7 ], [ null, %3 ]
  ret ptr %77
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_ceil(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #14 !prof !60 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.real_value, align 8
  %6 = icmp eq ptr %2, null
  br i1 %6, label %47, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 9
  br i1 %12, label %13, label %47

13:                                               ; preds = %7
  %14 = load i64, ptr %2, align 8
  %15 = and i64 %14, 134283263
  %16 = icmp eq i64 %15, 24
  br i1 %16, label %17, label %45

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #25
  %18 = getelementptr inbounds %struct.tree_real_cst, ptr %2, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %19, i64 32, i1 false), !tbaa.struct !172
  %20 = call zeroext i8 @real_isnan(ptr noundef nonnull %4) #25
  %21 = icmp ne i8 %20, 0
  %22 = load i32, ptr @flag_errno_math, align 4
  %23 = icmp ne i32 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %43, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !72
  %28 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #25
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 14
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = call i32 @vector_type_mode(ptr noundef nonnull %29) #25
  br label %40

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 255
  br label %40

40:                                               ; preds = %35, %33
  %41 = phi i32 [ %34, %33 ], [ %39, %35 ]
  call void @real_ceil(ptr noundef nonnull %5, i32 noundef %41, ptr noundef nonnull %4) #25
  %42 = call ptr @build_real(ptr noundef nonnull %29, ptr noundef nonnull byval(%struct.real_value) align 8 %5) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #25
  br label %43

43:                                               ; preds = %17, %40
  %44 = phi ptr [ %42, %40 ], [ undef, %17 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  br i1 %24, label %45, label %47

45:                                               ; preds = %43, %13
  %46 = call fastcc ptr @fold_trunc_transparent_mathfn(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %47

47:                                               ; preds = %3, %43, %7, %45
  %48 = phi ptr [ %46, %45 ], [ %44, %43 ], [ null, %7 ], [ null, %3 ]
  ret ptr %48
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_trunc(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #14 !prof !60 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.real_value, align 8
  %6 = icmp eq ptr %2, null
  br i1 %6, label %39, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 9
  br i1 %12, label %13, label %39

13:                                               ; preds = %7
  %14 = load i64, ptr %2, align 8
  %15 = and i64 %14, 134283263
  %16 = icmp eq i64 %15, 24
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #25
  %18 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !72
  %20 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !72
  %22 = getelementptr inbounds %struct.tree_real_cst, ptr %2, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %23, i64 32, i1 false), !tbaa.struct !172
  %24 = load i64, ptr %21, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 14
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = tail call i32 @vector_type_mode(ptr noundef nonnull %21) #25
  br label %34

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.tree_type, ptr %21, i64 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = lshr i32 %31, 16
  %33 = and i32 %32, 255
  br label %34

34:                                               ; preds = %29, %27
  %35 = phi i32 [ %28, %27 ], [ %33, %29 ]
  call void @real_trunc(ptr noundef nonnull %4, i32 noundef %35, ptr noundef nonnull %5) #25
  %36 = call ptr @build_real(ptr noundef nonnull %21, ptr noundef nonnull byval(%struct.real_value) align 8 %4) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  br label %39

37:                                               ; preds = %13
  %38 = tail call fastcc ptr @fold_trunc_transparent_mathfn(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %39

39:                                               ; preds = %3, %7, %37, %34
  %40 = phi ptr [ %38, %37 ], [ %36, %34 ], [ null, %7 ], [ null, %3 ]
  ret ptr %40
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_round(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #14 !prof !60 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca %struct.real_value, align 8
  %6 = icmp eq ptr %2, null
  br i1 %6, label %47, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 9
  br i1 %12, label %13, label %47

13:                                               ; preds = %7
  %14 = load i64, ptr %2, align 8
  %15 = and i64 %14, 134283263
  %16 = icmp eq i64 %15, 24
  br i1 %16, label %17, label %45

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #25
  %18 = getelementptr inbounds %struct.tree_real_cst, ptr %2, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %19, i64 32, i1 false), !tbaa.struct !172
  %20 = call zeroext i8 @real_isnan(ptr noundef nonnull %4) #25
  %21 = icmp ne i8 %20, 0
  %22 = load i32, ptr @flag_errno_math, align 4
  %23 = icmp ne i32 %22, 0
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %43, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !72
  %28 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #25
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 14
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = call i32 @vector_type_mode(ptr noundef nonnull %29) #25
  br label %40

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 255
  br label %40

40:                                               ; preds = %35, %33
  %41 = phi i32 [ %34, %33 ], [ %39, %35 ]
  call void @real_round(ptr noundef nonnull %5, i32 noundef %41, ptr noundef nonnull %4) #25
  %42 = call ptr @build_real(ptr noundef nonnull %29, ptr noundef nonnull byval(%struct.real_value) align 8 %5) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #25
  br label %43

43:                                               ; preds = %17, %40
  %44 = phi ptr [ %42, %40 ], [ undef, %17 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  br i1 %24, label %45, label %47

45:                                               ; preds = %43, %13
  %46 = call fastcc ptr @fold_trunc_transparent_mathfn(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2)
  br label %47

47:                                               ; preds = %3, %43, %7, %45
  %48 = phi ptr [ %46, %45 ], [ %44, %43 ], [ null, %7 ], [ null, %3 ]
  ret ptr %48
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_trunc_transparent_mathfn(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #14 !prof !60 {
  %4 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 2047
  %7 = icmp eq ptr %2, null
  br i1 %7, label %52, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 9
  br i1 %13, label %14, label %52

14:                                               ; preds = %8
  %15 = tail call i32 @builtin_mathfn_code(ptr noundef nonnull %2), !range !201
  %16 = icmp eq i32 %6, %15
  br i1 %16, label %52, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr @flag_errno_math, align 4, !tbaa !76
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = tail call fastcc zeroext i8 @integer_valued_real_p(ptr noundef nonnull %2)
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %20, %17
  %24 = load i32, ptr @optimize, align 4, !tbaa !76
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %51, label %26

26:                                               ; preds = %23
  %27 = tail call ptr @strip_float_extensions(ptr noundef nonnull %2) #25
  %28 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !72
  %30 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !72
  %32 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !72
  %34 = getelementptr inbounds %struct.tree_type, ptr %33, i64 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 1023
  %37 = getelementptr inbounds %struct.tree_type, ptr %31, i64 0, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 1023
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %26
  %42 = tail call fastcc ptr @mathfn_built_in_1(ptr noundef %33, i32 noundef %6, i8 noundef zeroext 1)
  %43 = icmp eq ptr %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %33, ptr noundef %27) #25
  %46 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %42, i32 noundef 1, ptr noundef %45)
  %47 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %31, ptr noundef %46) #25
  br label %48

48:                                               ; preds = %26, %41, %44
  %49 = phi i1 [ false, %44 ], [ true, %41 ], [ true, %26 ]
  %50 = phi ptr [ %47, %44 ], [ undef, %41 ], [ undef, %26 ]
  br i1 %49, label %51, label %52

51:                                               ; preds = %48, %23
  br label %52

52:                                               ; preds = %3, %20, %14, %8, %48, %51
  %53 = phi ptr [ null, %51 ], [ %50, %48 ], [ null, %8 ], [ %2, %14 ], [ %2, %20 ], [ null, %3 ]
  ret ptr %53
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_fixed_mathfn(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #14 !prof !60 {
  %4 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 2047
  %7 = icmp eq ptr %2, null
  br i1 %7, label %147, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 9
  br i1 %13, label %14, label %147

14:                                               ; preds = %8
  %15 = load i32, ptr @flag_errno_math, align 4, !tbaa !76
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = tail call fastcc zeroext i8 @integer_valued_real_p(ptr noundef nonnull %2)
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !72
  %23 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !72
  %25 = tail call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 77, ptr noundef %24, ptr noundef nonnull %2) #25
  br label %147

26:                                               ; preds = %17, %14
  %27 = load i32, ptr @optimize, align 4, !tbaa !76
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %50, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %9, align 8, !tbaa !72
  %31 = tail call ptr @strip_float_extensions(ptr noundef nonnull %2) #25
  %32 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !72
  %34 = getelementptr inbounds %struct.tree_type, ptr %33, i64 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 1023
  %37 = getelementptr inbounds %struct.tree_type, ptr %30, i64 0, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, 1023
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %29
  %42 = tail call fastcc ptr @mathfn_built_in_1(ptr noundef %33, i32 noundef %6, i8 noundef zeroext 1)
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %33, ptr noundef %31) #25
  %46 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %42, i32 noundef 1, ptr noundef %45)
  br label %47

47:                                               ; preds = %29, %41, %44
  %48 = phi i1 [ false, %44 ], [ true, %41 ], [ true, %29 ]
  %49 = phi ptr [ %46, %44 ], [ undef, %41 ], [ undef, %29 ]
  br i1 %48, label %50, label %147

50:                                               ; preds = %47, %26
  %51 = phi ptr [ %49, %47 ], [ undef, %26 ]
  %52 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8, !tbaa !61
  %53 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !61
  %56 = getelementptr inbounds %struct.tree_type, ptr %55, i64 0, i32 6
  %57 = load i32, ptr %56, align 4
  %58 = xor i32 %57, %54
  %59 = and i32 %58, 1023
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %146

61:                                               ; preds = %50
  switch i32 %6, label %134 [
    i32 126, label %62
    i32 127, label %62
    i32 128, label %62
    i32 129, label %80
    i32 130, label %80
    i32 131, label %80
    i32 135, label %98
    i32 136, label %98
    i32 137, label %98
    i32 132, label %116
    i32 133, label %116
    i32 134, label %116
  ]

62:                                               ; preds = %61, %61, %61
  %63 = load ptr, ptr %9, align 8, !tbaa !72
  %64 = getelementptr inbounds %struct.tree_type, ptr %63, i64 0, i32 16
  %65 = load ptr, ptr %64, align 8, !tbaa !72
  %66 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16, !tbaa !61
  %67 = icmp eq ptr %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 111), align 8, !tbaa !61
  br label %134

70:                                               ; preds = %62
  %71 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !61
  %72 = icmp eq ptr %65, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 112), align 16, !tbaa !61
  br label %134

75:                                               ; preds = %70
  %76 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 33), align 8, !tbaa !61
  %77 = icmp eq ptr %65, %76
  %78 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 113), align 8
  %79 = select i1 %77, ptr %78, ptr null
  br label %134

80:                                               ; preds = %61, %61, %61
  %81 = load ptr, ptr %9, align 8, !tbaa !72
  %82 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 16
  %83 = load ptr, ptr %82, align 8, !tbaa !72
  %84 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16, !tbaa !61
  %85 = icmp eq ptr %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 117), align 8, !tbaa !61
  br label %134

88:                                               ; preds = %80
  %89 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !61
  %90 = icmp eq ptr %83, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 118), align 16, !tbaa !61
  br label %134

93:                                               ; preds = %88
  %94 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 33), align 8, !tbaa !61
  %95 = icmp eq ptr %83, %94
  %96 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 119), align 8
  %97 = select i1 %95, ptr %96, ptr null
  br label %134

98:                                               ; preds = %61, %61, %61
  %99 = load ptr, ptr %9, align 8, !tbaa !72
  %100 = getelementptr inbounds %struct.tree_type, ptr %99, i64 0, i32 16
  %101 = load ptr, ptr %100, align 8, !tbaa !72
  %102 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16, !tbaa !61
  %103 = icmp eq ptr %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 156), align 16, !tbaa !61
  br label %134

106:                                              ; preds = %98
  %107 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !61
  %108 = icmp eq ptr %101, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 157), align 8, !tbaa !61
  br label %134

111:                                              ; preds = %106
  %112 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 33), align 8, !tbaa !61
  %113 = icmp eq ptr %101, %112
  %114 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 158), align 16
  %115 = select i1 %113, ptr %114, ptr null
  br label %134

116:                                              ; preds = %61, %61, %61
  %117 = load ptr, ptr %9, align 8, !tbaa !72
  %118 = getelementptr inbounds %struct.tree_type, ptr %117, i64 0, i32 16
  %119 = load ptr, ptr %118, align 8, !tbaa !72
  %120 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16, !tbaa !61
  %121 = icmp eq ptr %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 153), align 8, !tbaa !61
  br label %134

124:                                              ; preds = %116
  %125 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !61
  %126 = icmp eq ptr %119, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %124
  %128 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 154), align 16, !tbaa !61
  br label %134

129:                                              ; preds = %124
  %130 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 33), align 8, !tbaa !61
  %131 = icmp eq ptr %119, %130
  %132 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 155), align 8
  %133 = select i1 %131, ptr %132, ptr null
  br label %134

134:                                              ; preds = %129, %111, %93, %75, %127, %122, %109, %104, %91, %86, %73, %68, %61
  %135 = phi ptr [ null, %61 ], [ %69, %68 ], [ %74, %73 ], [ %79, %75 ], [ %87, %86 ], [ %92, %91 ], [ %97, %93 ], [ %105, %104 ], [ %110, %109 ], [ %115, %111 ], [ %123, %122 ], [ %128, %127 ], [ %133, %129 ]
  %136 = icmp eq ptr %135, null
  br i1 %136, label %144, label %137

137:                                              ; preds = %134
  %138 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %135, i32 noundef 1, ptr noundef nonnull %2)
  %139 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !72
  %141 = getelementptr inbounds %struct.tree_common, ptr %140, i64 0, i32 2
  %142 = load ptr, ptr %141, align 8, !tbaa !72
  %143 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %142, ptr noundef %138) #25
  br label %144

144:                                              ; preds = %134, %137
  %145 = phi ptr [ %143, %137 ], [ %51, %134 ]
  br i1 %136, label %146, label %147

146:                                              ; preds = %144, %50
  br label %147

147:                                              ; preds = %3, %8, %47, %144, %146, %20
  %148 = phi ptr [ null, %146 ], [ %145, %144 ], [ %49, %47 ], [ %25, %20 ], [ null, %8 ], [ null, %3 ]
  ret ptr %148
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_bswap(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #14 !prof !60 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %76, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65534
  %10 = icmp ne i32 %9, 6
  %11 = and i32 %8, 65535
  %12 = icmp ne i32 %11, 8
  %13 = and i1 %10, %12
  br i1 %13, label %76, label %14

14:                                               ; preds = %4
  %15 = load i64, ptr %1, align 8
  %16 = and i64 %15, 134283263
  %17 = icmp eq i64 %16, 23
  br i1 %17, label %18, label %76

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !72
  %21 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 1023
  %24 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !72
  %26 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !72
  %28 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 2047
  %31 = add nsw i32 %30, -419
  %32 = icmp ult i32 %31, 2
  br i1 %32, label %33, label %63

33:                                               ; preds = %18
  %34 = icmp eq i32 %23, 0
  br i1 %34, label %64, label %35

35:                                               ; preds = %33
  %36 = zext nneg i32 %23 to i64
  %37 = zext nneg i32 %23 to i64
  br label %38

38:                                               ; preds = %35, %58
  %39 = phi i64 [ 0, %35 ], [ %61, %58 ]
  %40 = phi i64 [ 0, %35 ], [ %60, %58 ]
  %41 = phi i64 [ 0, %35 ], [ %59, %58 ]
  %42 = sub nsw i64 %36, %39
  %43 = icmp ult i64 %39, 64
  %44 = lshr i64 %25, %39
  %45 = add nsw i64 %39, -64
  %46 = ashr i64 %27, %45
  %47 = select i1 %43, i64 %44, i64 %46
  %48 = and i64 %47, 255
  %49 = icmp slt i64 %42, 72
  br i1 %49, label %50, label %54

50:                                               ; preds = %38
  %51 = add nsw i64 %42, -8
  %52 = shl i64 %48, %51
  %53 = or i64 %52, %41
  br label %58

54:                                               ; preds = %38
  %55 = add nsw i64 %42, -72
  %56 = shl i64 %48, %55
  %57 = or i64 %56, %40
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i64 [ %53, %50 ], [ %41, %54 ]
  %60 = phi i64 [ %40, %50 ], [ %57, %54 ]
  %61 = add nuw nsw i64 %39, 8
  %62 = icmp ult i64 %61, %37
  br i1 %62, label %38, label %64, !llvm.loop !202

63:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.724, i32 noundef 7692, ptr noundef nonnull @.str.725) #25
  br label %64

64:                                               ; preds = %58, %33, %63
  %65 = phi i64 [ 0, %63 ], [ 0, %33 ], [ %59, %58 ]
  %66 = phi i64 [ 0, %63 ], [ 0, %33 ], [ %60, %58 ]
  %67 = icmp ult i32 %23, 64
  %68 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !72
  %70 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !72
  br i1 %67, label %72, label %74

72:                                               ; preds = %64
  %73 = tail call ptr @build_int_cst(ptr noundef %71, i64 noundef %65) #25
  br label %76

74:                                               ; preds = %64
  %75 = tail call ptr @build_int_cst_wide(ptr noundef %71, i64 noundef %65, i64 noundef %66) #25
  br label %76

76:                                               ; preds = %4, %2, %14, %72, %74
  %77 = phi ptr [ %73, %72 ], [ %75, %74 ], [ null, %14 ], [ null, %2 ], [ null, %4 ]
  ret ptr %77
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_bitop(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #14 !prof !203 !PGOFuncName !204 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %140, label %4, !prof !156

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65534
  %10 = icmp eq i32 %9, 6
  %11 = and i32 %8, 65535
  %12 = icmp eq i32 %11, 8
  %13 = or i1 %10, %12
  br i1 %13, label %14, label %140, !prof !205

14:                                               ; preds = %4
  %15 = load i64, ptr %1, align 8
  %16 = and i64 %15, 134283263
  %17 = icmp eq i64 %16, 23
  br i1 %17, label %18, label %140, !prof !156

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !72
  %21 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 1023
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !72
  %27 = icmp ugt i32 %23, 64
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !72
  %31 = icmp ult i32 %23, 128
  %32 = select i1 %31, i64 0, i64 %30
  br label %39

33:                                               ; preds = %18
  %34 = icmp eq i32 %23, 64
  br i1 %34, label %39, label %35

35:                                               ; preds = %33
  %36 = shl nsw i64 -1, %24
  %37 = xor i64 %36, -1
  %38 = and i64 %26, %37
  br label %39

39:                                               ; preds = %28, %33, %35
  %40 = phi i64 [ 0, %35 ], [ 0, %33 ], [ %32, %28 ]
  %41 = phi i64 [ %38, %35 ], [ %26, %33 ], [ %26, %28 ]
  %42 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 2047
  switch i32 %44, label %132 [
    i32 449, label %45
    i32 451, label %45
    i32 452, label %45
    i32 424, label %61
    i32 426, label %61
    i32 427, label %61
    i32 429, label %76
    i32 431, label %76
    i32 432, label %76
    i32 497, label %91
    i32 499, label %91
    i32 500, label %91
    i32 493, label %110
    i32 495, label %110
    i32 496, label %110
  ]

45:                                               ; preds = %39, %39, %39
  %46 = icmp eq i64 %41, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %45
  %48 = sub i64 0, %41
  %49 = and i64 %41, %48
  %50 = tail call i32 @exact_log2(i64 noundef %49) #25
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  br label %133

53:                                               ; preds = %45
  %54 = icmp eq i64 %40, 0
  br i1 %54, label %133, label %55

55:                                               ; preds = %53
  %56 = sub nsw i64 0, %40
  %57 = and i64 %40, %56
  %58 = tail call i32 @exact_log2(i64 noundef %57) #25
  %59 = add nsw i32 %58, 65
  %60 = sext i32 %59 to i64
  br label %133

61:                                               ; preds = %39, %39, %39
  %62 = icmp eq i64 %40, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %61
  %64 = tail call i32 @floor_log2(i64 noundef %40) #25
  %65 = xor i32 %64, -1
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %24, -64
  %68 = add nsw i64 %67, %66
  br label %133

69:                                               ; preds = %61
  %70 = icmp eq i64 %41, 0
  br i1 %70, label %133, label %71

71:                                               ; preds = %69
  %72 = tail call i32 @floor_log2(i64 noundef %41) #25
  %73 = xor i32 %72, -1
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %24
  br label %133

76:                                               ; preds = %39, %39, %39
  %77 = icmp eq i64 %41, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %76
  %79 = sub i64 0, %41
  %80 = and i64 %41, %79
  %81 = tail call i32 @exact_log2(i64 noundef %80) #25
  %82 = sext i32 %81 to i64
  br label %133

83:                                               ; preds = %76
  %84 = icmp eq i64 %40, 0
  br i1 %84, label %133, label %85

85:                                               ; preds = %83
  %86 = sub nsw i64 0, %40
  %87 = and i64 %40, %86
  %88 = tail call i32 @exact_log2(i64 noundef %87) #25
  %89 = add nsw i32 %88, 64
  %90 = sext i32 %89 to i64
  br label %133

91:                                               ; preds = %39, %39, %39
  %92 = icmp eq i64 %41, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %96, %91
  %94 = phi i64 [ 0, %91 ], [ %99, %96 ]
  %95 = icmp eq i64 %40, 0
  br i1 %95, label %133, label %103

96:                                               ; preds = %91, %96
  %97 = phi i64 [ %101, %96 ], [ %41, %91 ]
  %98 = phi i64 [ %99, %96 ], [ 0, %91 ]
  %99 = add nuw nsw i64 %98, 1
  %100 = add i64 %97, -1
  %101 = and i64 %100, %97
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %93, label %96, !llvm.loop !206

103:                                              ; preds = %93, %103
  %104 = phi i64 [ %106, %103 ], [ %94, %93 ]
  %105 = phi i64 [ %108, %103 ], [ %40, %93 ]
  %106 = add nuw nsw i64 %104, 1
  %107 = add nsw i64 %105, -1
  %108 = and i64 %107, %105
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %133, label %103, !llvm.loop !207

110:                                              ; preds = %39, %39, %39
  %111 = icmp eq i64 %41, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %115, %110
  %113 = phi i64 [ 0, %110 ], [ %118, %115 ]
  %114 = icmp eq i64 %40, 0
  br i1 %114, label %129, label %122

115:                                              ; preds = %110, %115
  %116 = phi i64 [ %120, %115 ], [ %41, %110 ]
  %117 = phi i64 [ %118, %115 ], [ 0, %110 ]
  %118 = add nuw nsw i64 %117, 1
  %119 = add i64 %116, -1
  %120 = and i64 %119, %116
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %112, label %115, !llvm.loop !208

122:                                              ; preds = %112, %122
  %123 = phi i64 [ %125, %122 ], [ %113, %112 ]
  %124 = phi i64 [ %127, %122 ], [ %40, %112 ]
  %125 = add nuw nsw i64 %123, 1
  %126 = add nsw i64 %124, -1
  %127 = and i64 %126, %124
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %122, !llvm.loop !209

129:                                              ; preds = %122, %112
  %130 = phi i64 [ %113, %112 ], [ %125, %122 ]
  %131 = and i64 %130, 1
  br label %133

132:                                              ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.724, i32 noundef 7636, ptr noundef nonnull @.str.725) #25
  unreachable

133:                                              ; preds = %103, %93, %83, %69, %53, %78, %85, %63, %71, %47, %55, %129
  %134 = phi i64 [ %131, %129 ], [ %82, %78 ], [ %90, %85 ], [ %68, %63 ], [ %75, %71 ], [ %52, %47 ], [ %60, %55 ], [ 0, %53 ], [ %24, %69 ], [ %24, %83 ], [ %94, %93 ], [ %106, %103 ]
  %135 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !72
  %137 = getelementptr inbounds %struct.tree_common, ptr %136, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !72
  %139 = tail call ptr @build_int_cst(ptr noundef %138, i64 noundef %134) #25
  br label %140

140:                                              ; preds = %4, %2, %14, %133
  %141 = phi ptr [ %139, %133 ], [ null, %14 ], [ null, %2 ], [ null, %4 ]
  ret ptr %141
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_signbit(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #14 !prof !60 {
  %4 = alloca %struct.real_value, align 8
  %5 = icmp eq ptr %1, null
  br i1 %5, label %320, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 9
  br i1 %11, label %12, label %320

12:                                               ; preds = %6
  %13 = load i64, ptr %1, align 8
  %14 = and i64 %13, 134283263
  %15 = icmp eq i64 %14, 24
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #25
  %17 = getelementptr inbounds %struct.tree_real_cst, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %18, i64 32, i1 false), !tbaa.struct !172
  %19 = call zeroext i8 @real_isneg(ptr noundef nonnull %4) #25
  %20 = icmp eq i8 %19, 0
  %21 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16
  %22 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8
  %23 = select i1 %20, ptr %22, ptr %21
  %24 = call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %2, ptr noundef %23) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  br label %320

25:                                               ; preds = %12
  %26 = tail call zeroext i8 @tree_expr_nonnegative_p(ptr noundef nonnull %1) #25
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !61
  %30 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %2, ptr noundef %29, ptr noundef nonnull %1) #25
  br label %320

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !72
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 14
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = tail call i32 @vector_type_mode(ptr noundef nonnull %33) #25
  br label %44

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.tree_type, ptr %33, i64 0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  br label %44

44:                                               ; preds = %39, %37
  %45 = phi i32 [ %38, %37 ], [ %43, %39 ]
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !72
  %49 = icmp eq i8 %48, 8
  br i1 %49, label %104, label %50

50:                                               ; preds = %44
  %51 = load ptr, ptr %32, align 8, !tbaa !72
  %52 = load i64, ptr %51, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 14
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = tail call i32 @vector_type_mode(ptr noundef nonnull %51) #25
  br label %62

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.tree_type, ptr %51, i64 0, i32 6
  %59 = load i32, ptr %58, align 4
  %60 = lshr i32 %59, 16
  %61 = and i32 %60, 255
  br label %62

62:                                               ; preds = %57, %55
  %63 = phi i32 [ %56, %55 ], [ %61, %57 ]
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %64
  %66 = load i8, ptr %65, align 1, !tbaa !72
  %67 = icmp eq i8 %66, 9
  br i1 %67, label %104, label %68

68:                                               ; preds = %62
  %69 = load ptr, ptr %32, align 8, !tbaa !72
  %70 = load i64, ptr %69, align 8
  %71 = and i64 %70, 65535
  %72 = icmp eq i64 %71, 14
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = tail call i32 @vector_type_mode(ptr noundef nonnull %69) #25
  br label %80

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.tree_type, ptr %69, i64 0, i32 6
  %77 = load i32, ptr %76, align 4
  %78 = lshr i32 %77, 16
  %79 = and i32 %78, 255
  br label %80

80:                                               ; preds = %75, %73
  %81 = phi i32 [ %74, %73 ], [ %79, %75 ]
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !72
  %85 = icmp eq i8 %84, 11
  br i1 %85, label %104, label %86

86:                                               ; preds = %80
  %87 = load ptr, ptr %32, align 8, !tbaa !72
  %88 = load i64, ptr %87, align 8
  %89 = and i64 %88, 65535
  %90 = icmp eq i64 %89, 14
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = tail call i32 @vector_type_mode(ptr noundef nonnull %87) #25
  br label %98

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.tree_type, ptr %87, i64 0, i32 6
  %95 = load i32, ptr %94, align 4
  %96 = lshr i32 %95, 16
  %97 = and i32 %96, 255
  br label %98

98:                                               ; preds = %93, %91
  %99 = phi i32 [ %92, %91 ], [ %97, %93 ]
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !72
  %103 = icmp eq i8 %102, 17
  br i1 %103, label %104, label %316

104:                                              ; preds = %98, %80, %62, %44
  %105 = load ptr, ptr %32, align 8, !tbaa !72
  %106 = load i64, ptr %105, align 8
  %107 = and i64 %106, 65535
  %108 = icmp eq i64 %107, 14
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = tail call i32 @vector_type_mode(ptr noundef nonnull %105) #25
  br label %116

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.tree_type, ptr %105, i64 0, i32 6
  %113 = load i32, ptr %112, align 4
  %114 = lshr i32 %113, 16
  %115 = and i32 %114, 255
  br label %116

116:                                              ; preds = %111, %109
  %117 = phi i32 [ %110, %109 ], [ %115, %111 ]
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !72
  %121 = icmp eq i8 %120, 8
  br i1 %121, label %140, label %122

122:                                              ; preds = %116
  %123 = load ptr, ptr %32, align 8, !tbaa !72
  %124 = load i64, ptr %123, align 8
  %125 = and i64 %124, 65535
  %126 = icmp eq i64 %125, 14
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = tail call i32 @vector_type_mode(ptr noundef nonnull %123) #25
  br label %134

129:                                              ; preds = %122
  %130 = getelementptr inbounds %struct.tree_type, ptr %123, i64 0, i32 6
  %131 = load i32, ptr %130, align 4
  %132 = lshr i32 %131, 16
  %133 = and i32 %132, 255
  br label %134

134:                                              ; preds = %129, %127
  %135 = phi i32 [ %128, %127 ], [ %133, %129 ]
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %136
  %138 = load i8, ptr %137, align 1, !tbaa !72
  %139 = icmp eq i8 %138, 9
  br i1 %139, label %140, label %152

140:                                              ; preds = %134, %116
  %141 = load ptr, ptr %32, align 8, !tbaa !72
  %142 = load i64, ptr %141, align 8
  %143 = and i64 %142, 65535
  %144 = icmp eq i64 %143, 14
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = tail call i32 @vector_type_mode(ptr noundef nonnull %141) #25
  br label %170

147:                                              ; preds = %140
  %148 = getelementptr inbounds %struct.tree_type, ptr %141, i64 0, i32 6
  %149 = load i32, ptr %148, align 4
  %150 = lshr i32 %149, 16
  %151 = and i32 %150, 255
  br label %170

152:                                              ; preds = %134
  %153 = load ptr, ptr %32, align 8, !tbaa !72
  %154 = load i64, ptr %153, align 8
  %155 = and i64 %154, 65535
  %156 = icmp eq i64 %155, 14
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = tail call i32 @vector_type_mode(ptr noundef nonnull %153) #25
  br label %164

159:                                              ; preds = %152
  %160 = getelementptr inbounds %struct.tree_type, ptr %153, i64 0, i32 6
  %161 = load i32, ptr %160, align 4
  %162 = lshr i32 %161, 16
  %163 = and i32 %162, 255
  br label %164

164:                                              ; preds = %159, %157
  %165 = phi i32 [ %158, %157 ], [ %163, %159 ]
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !72
  %169 = zext i8 %168 to i32
  br label %170

170:                                              ; preds = %145, %147, %164
  %171 = phi i32 [ %169, %164 ], [ %146, %145 ], [ %151, %147 ]
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %172
  %174 = load i8, ptr %173, align 1, !tbaa !72
  %175 = icmp eq i8 %174, 9
  %176 = load ptr, ptr %32, align 8, !tbaa !72
  %177 = load i64, ptr %176, align 8
  %178 = and i64 %177, 65535
  %179 = icmp eq i64 %178, 14
  br i1 %175, label %180, label %242

180:                                              ; preds = %170
  br i1 %179, label %181, label %183

181:                                              ; preds = %180
  %182 = tail call i32 @vector_type_mode(ptr noundef nonnull %176) #25
  br label %188

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.tree_type, ptr %176, i64 0, i32 6
  %185 = load i32, ptr %184, align 4
  %186 = lshr i32 %185, 16
  %187 = and i32 %186, 255
  br label %188

188:                                              ; preds = %183, %181
  %189 = phi i32 [ %182, %181 ], [ %187, %183 ]
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %190
  %192 = load i8, ptr %191, align 1, !tbaa !72
  %193 = icmp eq i8 %192, 8
  br i1 %193, label %212, label %194

194:                                              ; preds = %188
  %195 = load ptr, ptr %32, align 8, !tbaa !72
  %196 = load i64, ptr %195, align 8
  %197 = and i64 %196, 65535
  %198 = icmp eq i64 %197, 14
  br i1 %198, label %199, label %201

199:                                              ; preds = %194
  %200 = tail call i32 @vector_type_mode(ptr noundef nonnull %195) #25
  br label %206

201:                                              ; preds = %194
  %202 = getelementptr inbounds %struct.tree_type, ptr %195, i64 0, i32 6
  %203 = load i32, ptr %202, align 4
  %204 = lshr i32 %203, 16
  %205 = and i32 %204, 255
  br label %206

206:                                              ; preds = %201, %199
  %207 = phi i32 [ %200, %199 ], [ %205, %201 ]
  %208 = zext i32 %207 to i64
  %209 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %208
  %210 = load i8, ptr %209, align 1, !tbaa !72
  %211 = icmp eq i8 %210, 9
  br i1 %211, label %212, label %224

212:                                              ; preds = %206, %188
  %213 = load ptr, ptr %32, align 8, !tbaa !72
  %214 = load i64, ptr %213, align 8
  %215 = and i64 %214, 65535
  %216 = icmp eq i64 %215, 14
  br i1 %216, label %217, label %219

217:                                              ; preds = %212
  %218 = tail call i32 @vector_type_mode(ptr noundef nonnull %213) #25
  br label %304

219:                                              ; preds = %212
  %220 = getelementptr inbounds %struct.tree_type, ptr %213, i64 0, i32 6
  %221 = load i32, ptr %220, align 4
  %222 = lshr i32 %221, 16
  %223 = and i32 %222, 255
  br label %304

224:                                              ; preds = %206
  %225 = load ptr, ptr %32, align 8, !tbaa !72
  %226 = load i64, ptr %225, align 8
  %227 = and i64 %226, 65535
  %228 = icmp eq i64 %227, 14
  br i1 %228, label %229, label %231

229:                                              ; preds = %224
  %230 = tail call i32 @vector_type_mode(ptr noundef nonnull %225) #25
  br label %236

231:                                              ; preds = %224
  %232 = getelementptr inbounds %struct.tree_type, ptr %225, i64 0, i32 6
  %233 = load i32, ptr %232, align 4
  %234 = lshr i32 %233, 16
  %235 = and i32 %234, 255
  br label %236

236:                                              ; preds = %231, %229
  %237 = phi i32 [ %230, %229 ], [ %235, %231 ]
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %238
  %240 = load i8, ptr %239, align 1, !tbaa !72
  %241 = zext i8 %240 to i32
  br label %304

242:                                              ; preds = %170
  br i1 %179, label %243, label %245

243:                                              ; preds = %242
  %244 = tail call i32 @vector_type_mode(ptr noundef nonnull %176) #25
  br label %250

245:                                              ; preds = %242
  %246 = getelementptr inbounds %struct.tree_type, ptr %176, i64 0, i32 6
  %247 = load i32, ptr %246, align 4
  %248 = lshr i32 %247, 16
  %249 = and i32 %248, 255
  br label %250

250:                                              ; preds = %245, %243
  %251 = phi i32 [ %244, %243 ], [ %249, %245 ]
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %252
  %254 = load i8, ptr %253, align 1, !tbaa !72
  %255 = icmp eq i8 %254, 8
  br i1 %255, label %274, label %256

256:                                              ; preds = %250
  %257 = load ptr, ptr %32, align 8, !tbaa !72
  %258 = load i64, ptr %257, align 8
  %259 = and i64 %258, 65535
  %260 = icmp eq i64 %259, 14
  br i1 %260, label %261, label %263

261:                                              ; preds = %256
  %262 = tail call i32 @vector_type_mode(ptr noundef nonnull %257) #25
  br label %268

263:                                              ; preds = %256
  %264 = getelementptr inbounds %struct.tree_type, ptr %257, i64 0, i32 6
  %265 = load i32, ptr %264, align 4
  %266 = lshr i32 %265, 16
  %267 = and i32 %266, 255
  br label %268

268:                                              ; preds = %263, %261
  %269 = phi i32 [ %262, %261 ], [ %267, %263 ]
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %270
  %272 = load i8, ptr %271, align 1, !tbaa !72
  %273 = icmp eq i8 %272, 9
  br i1 %273, label %274, label %286

274:                                              ; preds = %268, %250
  %275 = load ptr, ptr %32, align 8, !tbaa !72
  %276 = load i64, ptr %275, align 8
  %277 = and i64 %276, 65535
  %278 = icmp eq i64 %277, 14
  br i1 %278, label %279, label %281

279:                                              ; preds = %274
  %280 = tail call i32 @vector_type_mode(ptr noundef nonnull %275) #25
  br label %304

281:                                              ; preds = %274
  %282 = getelementptr inbounds %struct.tree_type, ptr %275, i64 0, i32 6
  %283 = load i32, ptr %282, align 4
  %284 = lshr i32 %283, 16
  %285 = and i32 %284, 255
  br label %304

286:                                              ; preds = %268
  %287 = load ptr, ptr %32, align 8, !tbaa !72
  %288 = load i64, ptr %287, align 8
  %289 = and i64 %288, 65535
  %290 = icmp eq i64 %289, 14
  br i1 %290, label %291, label %293

291:                                              ; preds = %286
  %292 = tail call i32 @vector_type_mode(ptr noundef nonnull %287) #25
  br label %298

293:                                              ; preds = %286
  %294 = getelementptr inbounds %struct.tree_type, ptr %287, i64 0, i32 6
  %295 = load i32, ptr %294, align 4
  %296 = lshr i32 %295, 16
  %297 = and i32 %296, 255
  br label %298

298:                                              ; preds = %293, %291
  %299 = phi i32 [ %292, %291 ], [ %297, %293 ]
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %300
  %302 = load i8, ptr %301, align 1, !tbaa !72
  %303 = zext i8 %302 to i32
  br label %304

304:                                              ; preds = %298, %281, %279, %236, %219, %217
  %305 = phi i32 [ %241, %236 ], [ %218, %217 ], [ %223, %219 ], [ %303, %298 ], [ %280, %279 ], [ %285, %281 ]
  %306 = add i32 %305, -38
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %307
  %309 = load ptr, ptr %308, align 8, !tbaa !61
  %310 = getelementptr inbounds %struct.real_format, ptr %309, i64 0, i32 14
  %311 = load i8, ptr %310, align 1, !tbaa !210
  %312 = icmp ne i8 %311, 0
  %313 = load i32, ptr @flag_signed_zeros, align 4
  %314 = icmp ne i32 %313, 0
  %315 = select i1 %312, i1 %314, i1 false
  br i1 %315, label %320, label %316

316:                                              ; preds = %304, %98
  %317 = load ptr, ptr %32, align 8, !tbaa !72
  %318 = tail call ptr @build_real(ptr noundef %317, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst0) #25
  %319 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 97, ptr noundef %2, ptr noundef nonnull %1, ptr noundef %318) #25
  br label %320

320:                                              ; preds = %3, %304, %6, %316, %28, %16
  %321 = phi ptr [ %30, %28 ], [ %319, %316 ], [ %24, %16 ], [ null, %6 ], [ null, %304 ], [ null, %3 ]
  ret ptr %321
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_significand(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #14 !prof !60 {
  %4 = alloca %struct.real_value, align 8
  %5 = icmp eq ptr %1, null
  br i1 %5, label %82, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 9
  br i1 %11, label %12, label %82

12:                                               ; preds = %6
  %13 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %1) #25
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 134283263
  %16 = icmp eq i64 %15, 24
  br i1 %16, label %17, label %81

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.tree_real_cst, ptr %13, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !72
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 3
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %2, ptr noundef nonnull %13) #25
  br label %78

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !72
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 14
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = tail call i32 @vector_type_mode(ptr noundef nonnull %27) #25
  br label %38

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.tree_type, ptr %27, i64 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = lshr i32 %35, 16
  %37 = and i32 %36, 255
  br label %38

38:                                               ; preds = %33, %31
  %39 = phi i32 [ %32, %31 ], [ %37, %33 ]
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !72
  %43 = icmp eq i8 %42, 9
  %44 = load ptr, ptr %26, align 8, !tbaa !72
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 14
  br i1 %43, label %48, label %56

48:                                               ; preds = %38
  br i1 %47, label %49, label %51

49:                                               ; preds = %48
  %50 = tail call i32 @vector_type_mode(ptr noundef nonnull %44) #25
  br label %64

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.tree_type, ptr %44, i64 0, i32 6
  %53 = load i32, ptr %52, align 4
  %54 = lshr i32 %53, 16
  %55 = and i32 %54, 255
  br label %64

56:                                               ; preds = %38
  br i1 %47, label %57, label %59

57:                                               ; preds = %56
  %58 = tail call i32 @vector_type_mode(ptr noundef nonnull %44) #25
  br label %64

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.tree_type, ptr %44, i64 0, i32 6
  %61 = load i32, ptr %60, align 4
  %62 = lshr i32 %61, 16
  %63 = and i32 %62, 255
  br label %64

64:                                               ; preds = %57, %59, %49, %51
  %65 = phi i32 [ %50, %49 ], [ %55, %51 ], [ %58, %57 ], [ %63, %59 ]
  %66 = add i32 %65, -38
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !61
  %70 = getelementptr inbounds %struct.real_format, ptr %69, i64 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !211
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %78

73:                                               ; preds = %64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %19, i64 32, i1 false), !tbaa.struct !172
  %74 = load i32, ptr %4, align 8
  %75 = and i32 %74, 63
  %76 = or disjoint i32 %75, 64
  store i32 %76, ptr %4, align 8
  %77 = tail call ptr @build_real(ptr noundef %2, ptr noundef nonnull byval(%struct.real_value) align 8 %4) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  br label %78

78:                                               ; preds = %64, %73, %23
  %79 = phi ptr [ %77, %73 ], [ %24, %23 ], [ undef, %64 ]
  %80 = phi i1 [ false, %73 ], [ false, %23 ], [ true, %64 ]
  br i1 %80, label %81, label %82

81:                                               ; preds = %78, %12
  br label %82

82:                                               ; preds = %3, %78, %6, %81
  %83 = phi ptr [ null, %81 ], [ %79, %78 ], [ null, %6 ], [ null, %3 ]
  ret ptr %83
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_logb(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #14 !prof !60 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %87, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 9
  br i1 %10, label %11, label %87

11:                                               ; preds = %5
  %12 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %1) #25
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 134283263
  %15 = icmp eq i64 %14, 24
  br i1 %15, label %16, label %86

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.tree_real_cst, ptr %12, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !72
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 3
  switch i32 %20, label %82 [
    i32 3, label %21
    i32 2, label %21
    i32 0, label %83
    i32 1, label %27
  ]

21:                                               ; preds = %16, %16
  %22 = load i64, ptr %2, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 9
  br i1 %24, label %25, label %83

25:                                               ; preds = %21
  %26 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %12) #25
  br label %83

27:                                               ; preds = %16
  %28 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !72
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 14
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = tail call i32 @vector_type_mode(ptr noundef nonnull %29) #25
  br label %40

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 255
  br label %40

40:                                               ; preds = %35, %33
  %41 = phi i32 [ %34, %33 ], [ %39, %35 ]
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !72
  %45 = icmp eq i8 %44, 9
  %46 = load ptr, ptr %28, align 8, !tbaa !72
  %47 = load i64, ptr %46, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 14
  br i1 %45, label %50, label %58

50:                                               ; preds = %40
  br i1 %49, label %51, label %53

51:                                               ; preds = %50
  %52 = tail call i32 @vector_type_mode(ptr noundef nonnull %46) #25
  br label %66

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 255
  br label %66

58:                                               ; preds = %40
  br i1 %49, label %59, label %61

59:                                               ; preds = %58
  %60 = tail call i32 @vector_type_mode(ptr noundef nonnull %46) #25
  br label %66

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = lshr i32 %63, 16
  %65 = and i32 %64, 255
  br label %66

66:                                               ; preds = %59, %61, %51, %53
  %67 = phi i32 [ %52, %51 ], [ %57, %53 ], [ %60, %59 ], [ %65, %61 ]
  %68 = add i32 %67, -38
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !61
  %72 = getelementptr inbounds %struct.real_format, ptr %71, i64 0, i32 2
  %73 = load i32, ptr %72, align 8, !tbaa !211
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %83

75:                                               ; preds = %66
  %76 = load i32, ptr %18, align 8
  %77 = ashr i32 %76, 6
  %78 = add nsw i32 %77, -1
  %79 = sext i32 %78 to i64
  %80 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %79) #25
  %81 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %2, ptr noundef %80) #25
  br label %83

82:                                               ; preds = %16
  unreachable

83:                                               ; preds = %21, %66, %16, %75, %25
  %84 = phi ptr [ %81, %75 ], [ %26, %25 ], [ null, %16 ], [ undef, %66 ], [ null, %21 ]
  %85 = phi i1 [ false, %75 ], [ false, %25 ], [ false, %16 ], [ true, %66 ], [ false, %21 ]
  br i1 %85, label %86, label %87

86:                                               ; preds = %83, %11
  br label %87

87:                                               ; preds = %3, %83, %5, %86
  %88 = phi ptr [ null, %86 ], [ %84, %83 ], [ null, %5 ], [ null, %3 ]
  ret ptr %88
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_isascii(i32 noundef %0, ptr noundef %1) unnamed_addr #14 !prof !60 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65534
  %10 = icmp ne i32 %9, 6
  %11 = and i32 %8, 65535
  %12 = icmp ne i32 %11, 8
  %13 = and i1 %10, %12
  br i1 %13, label %21, label %14

14:                                               ; preds = %4
  %15 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %16 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef -128) #25
  %17 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 89, ptr noundef %15, ptr noundef nonnull %1, ptr noundef %16) #25
  %18 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %19 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !61
  %20 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 101, ptr noundef %18, ptr noundef %17, ptr noundef %19) #25
  br label %21

21:                                               ; preds = %4, %2, %14
  %22 = phi ptr [ %20, %14 ], [ null, %2 ], [ null, %4 ]
  ret ptr %22
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_toascii(i32 noundef %0, ptr noundef %1) unnamed_addr #14 !prof !60 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65534
  %10 = icmp ne i32 %9, 6
  %11 = and i32 %8, 65535
  %12 = icmp ne i32 %11, 8
  %13 = and i1 %10, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %16 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef 127) #25
  %17 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 89, ptr noundef %15, ptr noundef nonnull %1, ptr noundef %16) #25
  br label %18

18:                                               ; preds = %4, %2, %14
  %19 = phi ptr [ %17, %14 ], [ null, %2 ], [ null, %4 ]
  ret ptr %19
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_isdigit(i32 noundef %0, ptr noundef %1) unnamed_addr #14 !prof !60 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %28, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65534
  %10 = icmp ne i32 %9, 6
  %11 = and i32 %8, 65535
  %12 = icmp ne i32 %11, 8
  %13 = and i1 %10, %12
  br i1 %13, label %28, label %14

14:                                               ; preds = %4
  %15 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 26), align 8, !tbaa !192
  %16 = tail call i64 %15(i64 noundef 48) #25
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !61
  %20 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %19, ptr noundef nonnull %1) #25
  %21 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !61
  %22 = tail call ptr @build_int_cst(ptr noundef %21, i64 noundef %16) #25
  %23 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %21, ptr noundef %20, ptr noundef %22) #25
  %24 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %25 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !61
  %26 = tail call ptr @build_int_cst(ptr noundef %25, i64 noundef 9) #25
  %27 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 98, ptr noundef %24, ptr noundef %23, ptr noundef %26) #25
  br label %28

28:                                               ; preds = %4, %2, %18, %14
  %29 = phi ptr [ %27, %18 ], [ null, %14 ], [ null, %2 ], [ null, %4 ]
  ret ptr %29
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_classify(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #14 !prof !60 {
  %5 = alloca %struct.real_value, align 8
  %6 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #25
  %10 = icmp eq ptr %2, null
  br i1 %10, label %1215, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 9
  br i1 %16, label %17, label %1215

17:                                               ; preds = %11
  switch i32 %3, label %1214 [
    i32 469, label %18
    i32 468, label %304
    i32 467, label %355
    i32 475, label %920
  ]

18:                                               ; preds = %17
  %19 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %20 = load i32, ptr %19, align 4
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = zext nneg i32 %22 to i64
  %24 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !72
  %26 = icmp eq i8 %25, 8
  br i1 %26, label %72, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = lshr i32 %29, 16
  %31 = and i32 %30, 255
  %32 = zext nneg i32 %31 to i64
  %33 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !72
  %35 = icmp eq i8 %34, 9
  br i1 %35, label %72, label %36

36:                                               ; preds = %27
  %37 = load ptr, ptr %12, align 8, !tbaa !72
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 14
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = tail call i32 @vector_type_mode(ptr noundef nonnull %37) #25
  br label %48

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = lshr i32 %45, 16
  %47 = and i32 %46, 255
  br label %48

48:                                               ; preds = %43, %41
  %49 = phi i32 [ %42, %41 ], [ %47, %43 ]
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !72
  %53 = icmp eq i8 %52, 11
  br i1 %53, label %72, label %54

54:                                               ; preds = %48
  %55 = load ptr, ptr %12, align 8, !tbaa !72
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 14
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = tail call i32 @vector_type_mode(ptr noundef nonnull %55) #25
  br label %66

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.tree_type, ptr %55, i64 0, i32 6
  %63 = load i32, ptr %62, align 4
  %64 = lshr i32 %63, 16
  %65 = and i32 %64, 255
  br label %66

66:                                               ; preds = %61, %59
  %67 = phi i32 [ %60, %59 ], [ %65, %61 ]
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !72
  %71 = icmp eq i8 %70, 17
  br i1 %71, label %72, label %284

72:                                               ; preds = %66, %48, %27, %18
  %73 = load ptr, ptr %12, align 8, !tbaa !72
  %74 = load i64, ptr %73, align 8
  %75 = and i64 %74, 65535
  %76 = icmp eq i64 %75, 14
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = tail call i32 @vector_type_mode(ptr noundef nonnull %73) #25
  br label %84

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.tree_type, ptr %73, i64 0, i32 6
  %81 = load i32, ptr %80, align 4
  %82 = lshr i32 %81, 16
  %83 = and i32 %82, 255
  br label %84

84:                                               ; preds = %79, %77
  %85 = phi i32 [ %78, %77 ], [ %83, %79 ]
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !72
  %89 = icmp eq i8 %88, 8
  br i1 %89, label %108, label %90

90:                                               ; preds = %84
  %91 = load ptr, ptr %12, align 8, !tbaa !72
  %92 = load i64, ptr %91, align 8
  %93 = and i64 %92, 65535
  %94 = icmp eq i64 %93, 14
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = tail call i32 @vector_type_mode(ptr noundef nonnull %91) #25
  br label %102

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.tree_type, ptr %91, i64 0, i32 6
  %99 = load i32, ptr %98, align 4
  %100 = lshr i32 %99, 16
  %101 = and i32 %100, 255
  br label %102

102:                                              ; preds = %97, %95
  %103 = phi i32 [ %96, %95 ], [ %101, %97 ]
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !72
  %107 = icmp eq i8 %106, 9
  br i1 %107, label %108, label %120

108:                                              ; preds = %102, %84
  %109 = load ptr, ptr %12, align 8, !tbaa !72
  %110 = load i64, ptr %109, align 8
  %111 = and i64 %110, 65535
  %112 = icmp eq i64 %111, 14
  br i1 %112, label %113, label %115

113:                                              ; preds = %108
  %114 = tail call i32 @vector_type_mode(ptr noundef nonnull %109) #25
  br label %138

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.tree_type, ptr %109, i64 0, i32 6
  %117 = load i32, ptr %116, align 4
  %118 = lshr i32 %117, 16
  %119 = and i32 %118, 255
  br label %138

120:                                              ; preds = %102
  %121 = load ptr, ptr %12, align 8, !tbaa !72
  %122 = load i64, ptr %121, align 8
  %123 = and i64 %122, 65535
  %124 = icmp eq i64 %123, 14
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = tail call i32 @vector_type_mode(ptr noundef nonnull %121) #25
  br label %132

127:                                              ; preds = %120
  %128 = getelementptr inbounds %struct.tree_type, ptr %121, i64 0, i32 6
  %129 = load i32, ptr %128, align 4
  %130 = lshr i32 %129, 16
  %131 = and i32 %130, 255
  br label %132

132:                                              ; preds = %127, %125
  %133 = phi i32 [ %126, %125 ], [ %131, %127 ]
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %134
  %136 = load i8, ptr %135, align 1, !tbaa !72
  %137 = zext i8 %136 to i32
  br label %138

138:                                              ; preds = %113, %115, %132
  %139 = phi i32 [ %137, %132 ], [ %114, %113 ], [ %119, %115 ]
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %140
  %142 = load i8, ptr %141, align 1, !tbaa !72
  %143 = icmp eq i8 %142, 9
  %144 = load ptr, ptr %12, align 8, !tbaa !72
  %145 = load i64, ptr %144, align 8
  %146 = and i64 %145, 65535
  %147 = icmp eq i64 %146, 14
  br i1 %143, label %148, label %210

148:                                              ; preds = %138
  br i1 %147, label %149, label %151

149:                                              ; preds = %148
  %150 = tail call i32 @vector_type_mode(ptr noundef nonnull %144) #25
  br label %156

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.tree_type, ptr %144, i64 0, i32 6
  %153 = load i32, ptr %152, align 4
  %154 = lshr i32 %153, 16
  %155 = and i32 %154, 255
  br label %156

156:                                              ; preds = %151, %149
  %157 = phi i32 [ %150, %149 ], [ %155, %151 ]
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %158
  %160 = load i8, ptr %159, align 1, !tbaa !72
  %161 = icmp eq i8 %160, 8
  br i1 %161, label %180, label %162

162:                                              ; preds = %156
  %163 = load ptr, ptr %12, align 8, !tbaa !72
  %164 = load i64, ptr %163, align 8
  %165 = and i64 %164, 65535
  %166 = icmp eq i64 %165, 14
  br i1 %166, label %167, label %169

167:                                              ; preds = %162
  %168 = tail call i32 @vector_type_mode(ptr noundef nonnull %163) #25
  br label %174

169:                                              ; preds = %162
  %170 = getelementptr inbounds %struct.tree_type, ptr %163, i64 0, i32 6
  %171 = load i32, ptr %170, align 4
  %172 = lshr i32 %171, 16
  %173 = and i32 %172, 255
  br label %174

174:                                              ; preds = %169, %167
  %175 = phi i32 [ %168, %167 ], [ %173, %169 ]
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %176
  %178 = load i8, ptr %177, align 1, !tbaa !72
  %179 = icmp eq i8 %178, 9
  br i1 %179, label %180, label %192

180:                                              ; preds = %174, %156
  %181 = load ptr, ptr %12, align 8, !tbaa !72
  %182 = load i64, ptr %181, align 8
  %183 = and i64 %182, 65535
  %184 = icmp eq i64 %183, 14
  br i1 %184, label %185, label %187

185:                                              ; preds = %180
  %186 = tail call i32 @vector_type_mode(ptr noundef nonnull %181) #25
  br label %272

187:                                              ; preds = %180
  %188 = getelementptr inbounds %struct.tree_type, ptr %181, i64 0, i32 6
  %189 = load i32, ptr %188, align 4
  %190 = lshr i32 %189, 16
  %191 = and i32 %190, 255
  br label %272

192:                                              ; preds = %174
  %193 = load ptr, ptr %12, align 8, !tbaa !72
  %194 = load i64, ptr %193, align 8
  %195 = and i64 %194, 65535
  %196 = icmp eq i64 %195, 14
  br i1 %196, label %197, label %199

197:                                              ; preds = %192
  %198 = tail call i32 @vector_type_mode(ptr noundef nonnull %193) #25
  br label %204

199:                                              ; preds = %192
  %200 = getelementptr inbounds %struct.tree_type, ptr %193, i64 0, i32 6
  %201 = load i32, ptr %200, align 4
  %202 = lshr i32 %201, 16
  %203 = and i32 %202, 255
  br label %204

204:                                              ; preds = %199, %197
  %205 = phi i32 [ %198, %197 ], [ %203, %199 ]
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %206
  %208 = load i8, ptr %207, align 1, !tbaa !72
  %209 = zext i8 %208 to i32
  br label %272

210:                                              ; preds = %138
  br i1 %147, label %211, label %213

211:                                              ; preds = %210
  %212 = tail call i32 @vector_type_mode(ptr noundef nonnull %144) #25
  br label %218

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct.tree_type, ptr %144, i64 0, i32 6
  %215 = load i32, ptr %214, align 4
  %216 = lshr i32 %215, 16
  %217 = and i32 %216, 255
  br label %218

218:                                              ; preds = %213, %211
  %219 = phi i32 [ %212, %211 ], [ %217, %213 ]
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %220
  %222 = load i8, ptr %221, align 1, !tbaa !72
  %223 = icmp eq i8 %222, 8
  br i1 %223, label %242, label %224

224:                                              ; preds = %218
  %225 = load ptr, ptr %12, align 8, !tbaa !72
  %226 = load i64, ptr %225, align 8
  %227 = and i64 %226, 65535
  %228 = icmp eq i64 %227, 14
  br i1 %228, label %229, label %231

229:                                              ; preds = %224
  %230 = tail call i32 @vector_type_mode(ptr noundef nonnull %225) #25
  br label %236

231:                                              ; preds = %224
  %232 = getelementptr inbounds %struct.tree_type, ptr %225, i64 0, i32 6
  %233 = load i32, ptr %232, align 4
  %234 = lshr i32 %233, 16
  %235 = and i32 %234, 255
  br label %236

236:                                              ; preds = %231, %229
  %237 = phi i32 [ %230, %229 ], [ %235, %231 ]
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %238
  %240 = load i8, ptr %239, align 1, !tbaa !72
  %241 = icmp eq i8 %240, 9
  br i1 %241, label %242, label %254

242:                                              ; preds = %236, %218
  %243 = load ptr, ptr %12, align 8, !tbaa !72
  %244 = load i64, ptr %243, align 8
  %245 = and i64 %244, 65535
  %246 = icmp eq i64 %245, 14
  br i1 %246, label %247, label %249

247:                                              ; preds = %242
  %248 = tail call i32 @vector_type_mode(ptr noundef nonnull %243) #25
  br label %272

249:                                              ; preds = %242
  %250 = getelementptr inbounds %struct.tree_type, ptr %243, i64 0, i32 6
  %251 = load i32, ptr %250, align 4
  %252 = lshr i32 %251, 16
  %253 = and i32 %252, 255
  br label %272

254:                                              ; preds = %236
  %255 = load ptr, ptr %12, align 8, !tbaa !72
  %256 = load i64, ptr %255, align 8
  %257 = and i64 %256, 65535
  %258 = icmp eq i64 %257, 14
  br i1 %258, label %259, label %261

259:                                              ; preds = %254
  %260 = tail call i32 @vector_type_mode(ptr noundef nonnull %255) #25
  br label %266

261:                                              ; preds = %254
  %262 = getelementptr inbounds %struct.tree_type, ptr %255, i64 0, i32 6
  %263 = load i32, ptr %262, align 4
  %264 = lshr i32 %263, 16
  %265 = and i32 %264, 255
  br label %266

266:                                              ; preds = %261, %259
  %267 = phi i32 [ %260, %259 ], [ %265, %261 ]
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %268
  %270 = load i8, ptr %269, align 1, !tbaa !72
  %271 = zext i8 %270 to i32
  br label %272

272:                                              ; preds = %266, %249, %247, %204, %187, %185
  %273 = phi i32 [ %209, %204 ], [ %186, %185 ], [ %191, %187 ], [ %271, %266 ], [ %248, %247 ], [ %253, %249 ]
  %274 = add i32 %273, -38
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %275
  %277 = load ptr, ptr %276, align 8, !tbaa !61
  %278 = getelementptr inbounds %struct.real_format, ptr %277, i64 0, i32 12
  %279 = load i8, ptr %278, align 1, !tbaa !183
  %280 = icmp eq i8 %279, 0
  %281 = load i32, ptr @flag_finite_math_only, align 4
  %282 = icmp ne i32 %281, 0
  %283 = select i1 %280, i1 true, i1 %282
  br i1 %283, label %284, label %287

284:                                              ; preds = %272, %66
  %285 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !61
  %286 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %9, ptr noundef %285, ptr noundef nonnull %2) #25
  br label %1215

287:                                              ; preds = %272
  %288 = load i64, ptr %2, align 8
  %289 = and i64 %288, 65535
  %290 = icmp eq i64 %289, 24
  br i1 %290, label %291, label %1215

291:                                              ; preds = %287
  %292 = getelementptr inbounds %struct.tree_real_cst, ptr %2, i64 0, i32 1
  %293 = load ptr, ptr %292, align 8, !tbaa !72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %293, i64 32, i1 false), !tbaa.struct !172
  %294 = call zeroext i8 @real_isinf(ptr noundef nonnull %5) #25
  %295 = icmp eq i8 %294, 0
  br i1 %295, label %302, label %296

296:                                              ; preds = %291
  %297 = call zeroext i8 @real_compare(i32 noundef 99, ptr noundef nonnull %5, ptr noundef nonnull @dconst0) #25
  %298 = icmp eq i8 %297, 0
  %299 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16
  %300 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 15), align 8
  %301 = select i1 %298, ptr %300, ptr %299
  br label %1215

302:                                              ; preds = %291
  %303 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !61
  br label %1215

304:                                              ; preds = %17
  %305 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 16
  %306 = load ptr, ptr %305, align 8, !tbaa !72
  %307 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16, !tbaa !61
  %308 = icmp eq ptr %306, %307
  br i1 %308, label %309, label %311

309:                                              ; preds = %304
  %310 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 210), align 16, !tbaa !61
  br label %321

311:                                              ; preds = %304
  %312 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !61
  %313 = icmp eq ptr %306, %312
  br i1 %313, label %314, label %316

314:                                              ; preds = %311
  %315 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 211), align 8, !tbaa !61
  br label %321

316:                                              ; preds = %311
  %317 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 33), align 8, !tbaa !61
  %318 = icmp eq ptr %306, %317
  %319 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 212), align 16
  %320 = select i1 %318, ptr %319, ptr null
  br label %321

321:                                              ; preds = %316, %309, %314
  %322 = phi ptr [ %310, %309 ], [ %315, %314 ], [ %320, %316 ]
  %323 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 469), align 8, !tbaa !61
  %324 = load i64, ptr %2, align 8
  %325 = and i64 %324, 262144
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %327, label %332

327:                                              ; preds = %321
  %328 = trunc i64 %324 to i16
  switch i16 %328, label %332 [
    i16 34, label %334
    i16 32, label %329
  ]

329:                                              ; preds = %327
  %330 = and i64 %324, 67108864
  %331 = icmp eq i64 %330, 0
  br i1 %331, label %334, label %332

332:                                              ; preds = %329, %327, %321
  %333 = tail call ptr @save_expr(ptr noundef nonnull %2) #25
  br label %334

334:                                              ; preds = %327, %329, %332
  %335 = phi ptr [ %333, %332 ], [ %2, %327 ], [ %2, %329 ]
  %336 = icmp ne ptr %322, null
  %337 = icmp ne ptr %323, null
  %338 = select i1 %336, i1 %337, i1 false
  br i1 %338, label %339, label %1215

339:                                              ; preds = %334
  %340 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %322, i32 noundef 1, ptr noundef %335)
  %341 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %323, i32 noundef 1, ptr noundef %335)
  %342 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %343 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !61
  %344 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 102, ptr noundef %342, ptr noundef %340, ptr noundef %343) #25
  %345 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %346 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !61
  %347 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 102, ptr noundef %345, ptr noundef %341, ptr noundef %346) #25
  %348 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %349 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 15), align 8, !tbaa !61
  %350 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !61
  %351 = tail call ptr @fold_build3_stat_loc(i32 noundef %0, i32 noundef 56, ptr noundef %348, ptr noundef %344, ptr noundef %349, ptr noundef %350) #25
  %352 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %353 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !61
  %354 = tail call ptr @fold_build3_stat_loc(i32 noundef %0, i32 noundef 56, ptr noundef %352, ptr noundef %347, ptr noundef %351, ptr noundef %353) #25
  br label %1215

355:                                              ; preds = %17
  %356 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %357 = load i32, ptr %356, align 4
  %358 = lshr i32 %357, 16
  %359 = and i32 %358, 255
  %360 = zext nneg i32 %359 to i64
  %361 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %360
  %362 = load i8, ptr %361, align 1, !tbaa !72
  %363 = icmp eq i8 %362, 8
  br i1 %363, label %409, label %364

364:                                              ; preds = %355
  %365 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %366 = load i32, ptr %365, align 4
  %367 = lshr i32 %366, 16
  %368 = and i32 %367, 255
  %369 = zext nneg i32 %368 to i64
  %370 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %369
  %371 = load i8, ptr %370, align 1, !tbaa !72
  %372 = icmp eq i8 %371, 9
  br i1 %372, label %409, label %373

373:                                              ; preds = %364
  %374 = load ptr, ptr %12, align 8, !tbaa !72
  %375 = load i64, ptr %374, align 8
  %376 = and i64 %375, 65535
  %377 = icmp eq i64 %376, 14
  br i1 %377, label %378, label %380

378:                                              ; preds = %373
  %379 = tail call i32 @vector_type_mode(ptr noundef nonnull %374) #25
  br label %385

380:                                              ; preds = %373
  %381 = getelementptr inbounds %struct.tree_type, ptr %374, i64 0, i32 6
  %382 = load i32, ptr %381, align 4
  %383 = lshr i32 %382, 16
  %384 = and i32 %383, 255
  br label %385

385:                                              ; preds = %380, %378
  %386 = phi i32 [ %379, %378 ], [ %384, %380 ]
  %387 = zext i32 %386 to i64
  %388 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %387
  %389 = load i8, ptr %388, align 1, !tbaa !72
  %390 = icmp eq i8 %389, 11
  br i1 %390, label %409, label %391

391:                                              ; preds = %385
  %392 = load ptr, ptr %12, align 8, !tbaa !72
  %393 = load i64, ptr %392, align 8
  %394 = and i64 %393, 65535
  %395 = icmp eq i64 %394, 14
  br i1 %395, label %396, label %398

396:                                              ; preds = %391
  %397 = tail call i32 @vector_type_mode(ptr noundef nonnull %392) #25
  br label %403

398:                                              ; preds = %391
  %399 = getelementptr inbounds %struct.tree_type, ptr %392, i64 0, i32 6
  %400 = load i32, ptr %399, align 4
  %401 = lshr i32 %400, 16
  %402 = and i32 %401, 255
  br label %403

403:                                              ; preds = %398, %396
  %404 = phi i32 [ %397, %396 ], [ %402, %398 ]
  %405 = zext i32 %404 to i64
  %406 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %405
  %407 = load i8, ptr %406, align 1, !tbaa !72
  %408 = icmp eq i8 %407, 17
  br i1 %408, label %409, label %621

409:                                              ; preds = %403, %385, %364, %355
  %410 = load ptr, ptr %12, align 8, !tbaa !72
  %411 = load i64, ptr %410, align 8
  %412 = and i64 %411, 65535
  %413 = icmp eq i64 %412, 14
  br i1 %413, label %414, label %416

414:                                              ; preds = %409
  %415 = tail call i32 @vector_type_mode(ptr noundef nonnull %410) #25
  br label %421

416:                                              ; preds = %409
  %417 = getelementptr inbounds %struct.tree_type, ptr %410, i64 0, i32 6
  %418 = load i32, ptr %417, align 4
  %419 = lshr i32 %418, 16
  %420 = and i32 %419, 255
  br label %421

421:                                              ; preds = %416, %414
  %422 = phi i32 [ %415, %414 ], [ %420, %416 ]
  %423 = zext i32 %422 to i64
  %424 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %423
  %425 = load i8, ptr %424, align 1, !tbaa !72
  %426 = icmp eq i8 %425, 8
  br i1 %426, label %445, label %427

427:                                              ; preds = %421
  %428 = load ptr, ptr %12, align 8, !tbaa !72
  %429 = load i64, ptr %428, align 8
  %430 = and i64 %429, 65535
  %431 = icmp eq i64 %430, 14
  br i1 %431, label %432, label %434

432:                                              ; preds = %427
  %433 = tail call i32 @vector_type_mode(ptr noundef nonnull %428) #25
  br label %439

434:                                              ; preds = %427
  %435 = getelementptr inbounds %struct.tree_type, ptr %428, i64 0, i32 6
  %436 = load i32, ptr %435, align 4
  %437 = lshr i32 %436, 16
  %438 = and i32 %437, 255
  br label %439

439:                                              ; preds = %434, %432
  %440 = phi i32 [ %433, %432 ], [ %438, %434 ]
  %441 = zext i32 %440 to i64
  %442 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %441
  %443 = load i8, ptr %442, align 1, !tbaa !72
  %444 = icmp eq i8 %443, 9
  br i1 %444, label %445, label %457

445:                                              ; preds = %439, %421
  %446 = load ptr, ptr %12, align 8, !tbaa !72
  %447 = load i64, ptr %446, align 8
  %448 = and i64 %447, 65535
  %449 = icmp eq i64 %448, 14
  br i1 %449, label %450, label %452

450:                                              ; preds = %445
  %451 = tail call i32 @vector_type_mode(ptr noundef nonnull %446) #25
  br label %475

452:                                              ; preds = %445
  %453 = getelementptr inbounds %struct.tree_type, ptr %446, i64 0, i32 6
  %454 = load i32, ptr %453, align 4
  %455 = lshr i32 %454, 16
  %456 = and i32 %455, 255
  br label %475

457:                                              ; preds = %439
  %458 = load ptr, ptr %12, align 8, !tbaa !72
  %459 = load i64, ptr %458, align 8
  %460 = and i64 %459, 65535
  %461 = icmp eq i64 %460, 14
  br i1 %461, label %462, label %464

462:                                              ; preds = %457
  %463 = tail call i32 @vector_type_mode(ptr noundef nonnull %458) #25
  br label %469

464:                                              ; preds = %457
  %465 = getelementptr inbounds %struct.tree_type, ptr %458, i64 0, i32 6
  %466 = load i32, ptr %465, align 4
  %467 = lshr i32 %466, 16
  %468 = and i32 %467, 255
  br label %469

469:                                              ; preds = %464, %462
  %470 = phi i32 [ %463, %462 ], [ %468, %464 ]
  %471 = zext i32 %470 to i64
  %472 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %471
  %473 = load i8, ptr %472, align 1, !tbaa !72
  %474 = zext i8 %473 to i32
  br label %475

475:                                              ; preds = %450, %452, %469
  %476 = phi i32 [ %474, %469 ], [ %451, %450 ], [ %456, %452 ]
  %477 = zext i32 %476 to i64
  %478 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %477
  %479 = load i8, ptr %478, align 1, !tbaa !72
  %480 = icmp eq i8 %479, 9
  %481 = load ptr, ptr %12, align 8, !tbaa !72
  %482 = load i64, ptr %481, align 8
  %483 = and i64 %482, 65535
  %484 = icmp eq i64 %483, 14
  br i1 %480, label %485, label %547

485:                                              ; preds = %475
  br i1 %484, label %486, label %488

486:                                              ; preds = %485
  %487 = tail call i32 @vector_type_mode(ptr noundef nonnull %481) #25
  br label %493

488:                                              ; preds = %485
  %489 = getelementptr inbounds %struct.tree_type, ptr %481, i64 0, i32 6
  %490 = load i32, ptr %489, align 4
  %491 = lshr i32 %490, 16
  %492 = and i32 %491, 255
  br label %493

493:                                              ; preds = %488, %486
  %494 = phi i32 [ %487, %486 ], [ %492, %488 ]
  %495 = zext i32 %494 to i64
  %496 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %495
  %497 = load i8, ptr %496, align 1, !tbaa !72
  %498 = icmp eq i8 %497, 8
  br i1 %498, label %517, label %499

499:                                              ; preds = %493
  %500 = load ptr, ptr %12, align 8, !tbaa !72
  %501 = load i64, ptr %500, align 8
  %502 = and i64 %501, 65535
  %503 = icmp eq i64 %502, 14
  br i1 %503, label %504, label %506

504:                                              ; preds = %499
  %505 = tail call i32 @vector_type_mode(ptr noundef nonnull %500) #25
  br label %511

506:                                              ; preds = %499
  %507 = getelementptr inbounds %struct.tree_type, ptr %500, i64 0, i32 6
  %508 = load i32, ptr %507, align 4
  %509 = lshr i32 %508, 16
  %510 = and i32 %509, 255
  br label %511

511:                                              ; preds = %506, %504
  %512 = phi i32 [ %505, %504 ], [ %510, %506 ]
  %513 = zext i32 %512 to i64
  %514 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %513
  %515 = load i8, ptr %514, align 1, !tbaa !72
  %516 = icmp eq i8 %515, 9
  br i1 %516, label %517, label %529

517:                                              ; preds = %511, %493
  %518 = load ptr, ptr %12, align 8, !tbaa !72
  %519 = load i64, ptr %518, align 8
  %520 = and i64 %519, 65535
  %521 = icmp eq i64 %520, 14
  br i1 %521, label %522, label %524

522:                                              ; preds = %517
  %523 = tail call i32 @vector_type_mode(ptr noundef nonnull %518) #25
  br label %609

524:                                              ; preds = %517
  %525 = getelementptr inbounds %struct.tree_type, ptr %518, i64 0, i32 6
  %526 = load i32, ptr %525, align 4
  %527 = lshr i32 %526, 16
  %528 = and i32 %527, 255
  br label %609

529:                                              ; preds = %511
  %530 = load ptr, ptr %12, align 8, !tbaa !72
  %531 = load i64, ptr %530, align 8
  %532 = and i64 %531, 65535
  %533 = icmp eq i64 %532, 14
  br i1 %533, label %534, label %536

534:                                              ; preds = %529
  %535 = tail call i32 @vector_type_mode(ptr noundef nonnull %530) #25
  br label %541

536:                                              ; preds = %529
  %537 = getelementptr inbounds %struct.tree_type, ptr %530, i64 0, i32 6
  %538 = load i32, ptr %537, align 4
  %539 = lshr i32 %538, 16
  %540 = and i32 %539, 255
  br label %541

541:                                              ; preds = %536, %534
  %542 = phi i32 [ %535, %534 ], [ %540, %536 ]
  %543 = zext i32 %542 to i64
  %544 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %543
  %545 = load i8, ptr %544, align 1, !tbaa !72
  %546 = zext i8 %545 to i32
  br label %609

547:                                              ; preds = %475
  br i1 %484, label %548, label %550

548:                                              ; preds = %547
  %549 = tail call i32 @vector_type_mode(ptr noundef nonnull %481) #25
  br label %555

550:                                              ; preds = %547
  %551 = getelementptr inbounds %struct.tree_type, ptr %481, i64 0, i32 6
  %552 = load i32, ptr %551, align 4
  %553 = lshr i32 %552, 16
  %554 = and i32 %553, 255
  br label %555

555:                                              ; preds = %550, %548
  %556 = phi i32 [ %549, %548 ], [ %554, %550 ]
  %557 = zext i32 %556 to i64
  %558 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %557
  %559 = load i8, ptr %558, align 1, !tbaa !72
  %560 = icmp eq i8 %559, 8
  br i1 %560, label %579, label %561

561:                                              ; preds = %555
  %562 = load ptr, ptr %12, align 8, !tbaa !72
  %563 = load i64, ptr %562, align 8
  %564 = and i64 %563, 65535
  %565 = icmp eq i64 %564, 14
  br i1 %565, label %566, label %568

566:                                              ; preds = %561
  %567 = tail call i32 @vector_type_mode(ptr noundef nonnull %562) #25
  br label %573

568:                                              ; preds = %561
  %569 = getelementptr inbounds %struct.tree_type, ptr %562, i64 0, i32 6
  %570 = load i32, ptr %569, align 4
  %571 = lshr i32 %570, 16
  %572 = and i32 %571, 255
  br label %573

573:                                              ; preds = %568, %566
  %574 = phi i32 [ %567, %566 ], [ %572, %568 ]
  %575 = zext i32 %574 to i64
  %576 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %575
  %577 = load i8, ptr %576, align 1, !tbaa !72
  %578 = icmp eq i8 %577, 9
  br i1 %578, label %579, label %591

579:                                              ; preds = %573, %555
  %580 = load ptr, ptr %12, align 8, !tbaa !72
  %581 = load i64, ptr %580, align 8
  %582 = and i64 %581, 65535
  %583 = icmp eq i64 %582, 14
  br i1 %583, label %584, label %586

584:                                              ; preds = %579
  %585 = tail call i32 @vector_type_mode(ptr noundef nonnull %580) #25
  br label %609

586:                                              ; preds = %579
  %587 = getelementptr inbounds %struct.tree_type, ptr %580, i64 0, i32 6
  %588 = load i32, ptr %587, align 4
  %589 = lshr i32 %588, 16
  %590 = and i32 %589, 255
  br label %609

591:                                              ; preds = %573
  %592 = load ptr, ptr %12, align 8, !tbaa !72
  %593 = load i64, ptr %592, align 8
  %594 = and i64 %593, 65535
  %595 = icmp eq i64 %594, 14
  br i1 %595, label %596, label %598

596:                                              ; preds = %591
  %597 = tail call i32 @vector_type_mode(ptr noundef nonnull %592) #25
  br label %603

598:                                              ; preds = %591
  %599 = getelementptr inbounds %struct.tree_type, ptr %592, i64 0, i32 6
  %600 = load i32, ptr %599, align 4
  %601 = lshr i32 %600, 16
  %602 = and i32 %601, 255
  br label %603

603:                                              ; preds = %598, %596
  %604 = phi i32 [ %597, %596 ], [ %602, %598 ]
  %605 = zext i32 %604 to i64
  %606 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %605
  %607 = load i8, ptr %606, align 1, !tbaa !72
  %608 = zext i8 %607 to i32
  br label %609

609:                                              ; preds = %603, %586, %584, %541, %524, %522
  %610 = phi i32 [ %546, %541 ], [ %523, %522 ], [ %528, %524 ], [ %608, %603 ], [ %585, %584 ], [ %590, %586 ]
  %611 = add i32 %610, -38
  %612 = zext i32 %611 to i64
  %613 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %612
  %614 = load ptr, ptr %613, align 8, !tbaa !61
  %615 = getelementptr inbounds %struct.real_format, ptr %614, i64 0, i32 11
  %616 = load i8, ptr %615, align 2, !tbaa !184
  %617 = icmp eq i8 %616, 0
  %618 = load i32, ptr @flag_finite_math_only, align 4
  %619 = icmp ne i32 %618, 0
  %620 = select i1 %617, i1 true, i1 %619
  br i1 %620, label %621, label %908

621:                                              ; preds = %609, %403
  %622 = load ptr, ptr %12, align 8, !tbaa !72
  %623 = load i64, ptr %622, align 8
  %624 = and i64 %623, 65535
  %625 = icmp eq i64 %624, 14
  br i1 %625, label %626, label %628

626:                                              ; preds = %621
  %627 = tail call i32 @vector_type_mode(ptr noundef nonnull %622) #25
  br label %633

628:                                              ; preds = %621
  %629 = getelementptr inbounds %struct.tree_type, ptr %622, i64 0, i32 6
  %630 = load i32, ptr %629, align 4
  %631 = lshr i32 %630, 16
  %632 = and i32 %631, 255
  br label %633

633:                                              ; preds = %628, %626
  %634 = phi i32 [ %627, %626 ], [ %632, %628 ]
  %635 = zext i32 %634 to i64
  %636 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %635
  %637 = load i8, ptr %636, align 1, !tbaa !72
  %638 = icmp eq i8 %637, 8
  br i1 %638, label %693, label %639

639:                                              ; preds = %633
  %640 = load ptr, ptr %12, align 8, !tbaa !72
  %641 = load i64, ptr %640, align 8
  %642 = and i64 %641, 65535
  %643 = icmp eq i64 %642, 14
  br i1 %643, label %644, label %646

644:                                              ; preds = %639
  %645 = tail call i32 @vector_type_mode(ptr noundef nonnull %640) #25
  br label %651

646:                                              ; preds = %639
  %647 = getelementptr inbounds %struct.tree_type, ptr %640, i64 0, i32 6
  %648 = load i32, ptr %647, align 4
  %649 = lshr i32 %648, 16
  %650 = and i32 %649, 255
  br label %651

651:                                              ; preds = %646, %644
  %652 = phi i32 [ %645, %644 ], [ %650, %646 ]
  %653 = zext i32 %652 to i64
  %654 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %653
  %655 = load i8, ptr %654, align 1, !tbaa !72
  %656 = icmp eq i8 %655, 9
  br i1 %656, label %693, label %657

657:                                              ; preds = %651
  %658 = load ptr, ptr %12, align 8, !tbaa !72
  %659 = load i64, ptr %658, align 8
  %660 = and i64 %659, 65535
  %661 = icmp eq i64 %660, 14
  br i1 %661, label %662, label %664

662:                                              ; preds = %657
  %663 = tail call i32 @vector_type_mode(ptr noundef nonnull %658) #25
  br label %669

664:                                              ; preds = %657
  %665 = getelementptr inbounds %struct.tree_type, ptr %658, i64 0, i32 6
  %666 = load i32, ptr %665, align 4
  %667 = lshr i32 %666, 16
  %668 = and i32 %667, 255
  br label %669

669:                                              ; preds = %664, %662
  %670 = phi i32 [ %663, %662 ], [ %668, %664 ]
  %671 = zext i32 %670 to i64
  %672 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %671
  %673 = load i8, ptr %672, align 1, !tbaa !72
  %674 = icmp eq i8 %673, 11
  br i1 %674, label %693, label %675

675:                                              ; preds = %669
  %676 = load ptr, ptr %12, align 8, !tbaa !72
  %677 = load i64, ptr %676, align 8
  %678 = and i64 %677, 65535
  %679 = icmp eq i64 %678, 14
  br i1 %679, label %680, label %682

680:                                              ; preds = %675
  %681 = tail call i32 @vector_type_mode(ptr noundef nonnull %676) #25
  br label %687

682:                                              ; preds = %675
  %683 = getelementptr inbounds %struct.tree_type, ptr %676, i64 0, i32 6
  %684 = load i32, ptr %683, align 4
  %685 = lshr i32 %684, 16
  %686 = and i32 %685, 255
  br label %687

687:                                              ; preds = %682, %680
  %688 = phi i32 [ %681, %680 ], [ %686, %682 ]
  %689 = zext i32 %688 to i64
  %690 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %689
  %691 = load i8, ptr %690, align 1, !tbaa !72
  %692 = icmp eq i8 %691, 17
  br i1 %692, label %693, label %905

693:                                              ; preds = %687, %669, %651, %633
  %694 = load ptr, ptr %12, align 8, !tbaa !72
  %695 = load i64, ptr %694, align 8
  %696 = and i64 %695, 65535
  %697 = icmp eq i64 %696, 14
  br i1 %697, label %698, label %700

698:                                              ; preds = %693
  %699 = tail call i32 @vector_type_mode(ptr noundef nonnull %694) #25
  br label %705

700:                                              ; preds = %693
  %701 = getelementptr inbounds %struct.tree_type, ptr %694, i64 0, i32 6
  %702 = load i32, ptr %701, align 4
  %703 = lshr i32 %702, 16
  %704 = and i32 %703, 255
  br label %705

705:                                              ; preds = %700, %698
  %706 = phi i32 [ %699, %698 ], [ %704, %700 ]
  %707 = zext i32 %706 to i64
  %708 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %707
  %709 = load i8, ptr %708, align 1, !tbaa !72
  %710 = icmp eq i8 %709, 8
  br i1 %710, label %729, label %711

711:                                              ; preds = %705
  %712 = load ptr, ptr %12, align 8, !tbaa !72
  %713 = load i64, ptr %712, align 8
  %714 = and i64 %713, 65535
  %715 = icmp eq i64 %714, 14
  br i1 %715, label %716, label %718

716:                                              ; preds = %711
  %717 = tail call i32 @vector_type_mode(ptr noundef nonnull %712) #25
  br label %723

718:                                              ; preds = %711
  %719 = getelementptr inbounds %struct.tree_type, ptr %712, i64 0, i32 6
  %720 = load i32, ptr %719, align 4
  %721 = lshr i32 %720, 16
  %722 = and i32 %721, 255
  br label %723

723:                                              ; preds = %718, %716
  %724 = phi i32 [ %717, %716 ], [ %722, %718 ]
  %725 = zext i32 %724 to i64
  %726 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %725
  %727 = load i8, ptr %726, align 1, !tbaa !72
  %728 = icmp eq i8 %727, 9
  br i1 %728, label %729, label %741

729:                                              ; preds = %723, %705
  %730 = load ptr, ptr %12, align 8, !tbaa !72
  %731 = load i64, ptr %730, align 8
  %732 = and i64 %731, 65535
  %733 = icmp eq i64 %732, 14
  br i1 %733, label %734, label %736

734:                                              ; preds = %729
  %735 = tail call i32 @vector_type_mode(ptr noundef nonnull %730) #25
  br label %759

736:                                              ; preds = %729
  %737 = getelementptr inbounds %struct.tree_type, ptr %730, i64 0, i32 6
  %738 = load i32, ptr %737, align 4
  %739 = lshr i32 %738, 16
  %740 = and i32 %739, 255
  br label %759

741:                                              ; preds = %723
  %742 = load ptr, ptr %12, align 8, !tbaa !72
  %743 = load i64, ptr %742, align 8
  %744 = and i64 %743, 65535
  %745 = icmp eq i64 %744, 14
  br i1 %745, label %746, label %748

746:                                              ; preds = %741
  %747 = tail call i32 @vector_type_mode(ptr noundef nonnull %742) #25
  br label %753

748:                                              ; preds = %741
  %749 = getelementptr inbounds %struct.tree_type, ptr %742, i64 0, i32 6
  %750 = load i32, ptr %749, align 4
  %751 = lshr i32 %750, 16
  %752 = and i32 %751, 255
  br label %753

753:                                              ; preds = %748, %746
  %754 = phi i32 [ %747, %746 ], [ %752, %748 ]
  %755 = zext i32 %754 to i64
  %756 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %755
  %757 = load i8, ptr %756, align 1, !tbaa !72
  %758 = zext i8 %757 to i32
  br label %759

759:                                              ; preds = %734, %736, %753
  %760 = phi i32 [ %758, %753 ], [ %735, %734 ], [ %740, %736 ]
  %761 = zext i32 %760 to i64
  %762 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %761
  %763 = load i8, ptr %762, align 1, !tbaa !72
  %764 = icmp eq i8 %763, 9
  %765 = load ptr, ptr %12, align 8, !tbaa !72
  %766 = load i64, ptr %765, align 8
  %767 = and i64 %766, 65535
  %768 = icmp eq i64 %767, 14
  br i1 %764, label %769, label %831

769:                                              ; preds = %759
  br i1 %768, label %770, label %772

770:                                              ; preds = %769
  %771 = tail call i32 @vector_type_mode(ptr noundef nonnull %765) #25
  br label %777

772:                                              ; preds = %769
  %773 = getelementptr inbounds %struct.tree_type, ptr %765, i64 0, i32 6
  %774 = load i32, ptr %773, align 4
  %775 = lshr i32 %774, 16
  %776 = and i32 %775, 255
  br label %777

777:                                              ; preds = %772, %770
  %778 = phi i32 [ %771, %770 ], [ %776, %772 ]
  %779 = zext i32 %778 to i64
  %780 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %779
  %781 = load i8, ptr %780, align 1, !tbaa !72
  %782 = icmp eq i8 %781, 8
  br i1 %782, label %801, label %783

783:                                              ; preds = %777
  %784 = load ptr, ptr %12, align 8, !tbaa !72
  %785 = load i64, ptr %784, align 8
  %786 = and i64 %785, 65535
  %787 = icmp eq i64 %786, 14
  br i1 %787, label %788, label %790

788:                                              ; preds = %783
  %789 = tail call i32 @vector_type_mode(ptr noundef nonnull %784) #25
  br label %795

790:                                              ; preds = %783
  %791 = getelementptr inbounds %struct.tree_type, ptr %784, i64 0, i32 6
  %792 = load i32, ptr %791, align 4
  %793 = lshr i32 %792, 16
  %794 = and i32 %793, 255
  br label %795

795:                                              ; preds = %790, %788
  %796 = phi i32 [ %789, %788 ], [ %794, %790 ]
  %797 = zext i32 %796 to i64
  %798 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %797
  %799 = load i8, ptr %798, align 1, !tbaa !72
  %800 = icmp eq i8 %799, 9
  br i1 %800, label %801, label %813

801:                                              ; preds = %795, %777
  %802 = load ptr, ptr %12, align 8, !tbaa !72
  %803 = load i64, ptr %802, align 8
  %804 = and i64 %803, 65535
  %805 = icmp eq i64 %804, 14
  br i1 %805, label %806, label %808

806:                                              ; preds = %801
  %807 = tail call i32 @vector_type_mode(ptr noundef nonnull %802) #25
  br label %893

808:                                              ; preds = %801
  %809 = getelementptr inbounds %struct.tree_type, ptr %802, i64 0, i32 6
  %810 = load i32, ptr %809, align 4
  %811 = lshr i32 %810, 16
  %812 = and i32 %811, 255
  br label %893

813:                                              ; preds = %795
  %814 = load ptr, ptr %12, align 8, !tbaa !72
  %815 = load i64, ptr %814, align 8
  %816 = and i64 %815, 65535
  %817 = icmp eq i64 %816, 14
  br i1 %817, label %818, label %820

818:                                              ; preds = %813
  %819 = tail call i32 @vector_type_mode(ptr noundef nonnull %814) #25
  br label %825

820:                                              ; preds = %813
  %821 = getelementptr inbounds %struct.tree_type, ptr %814, i64 0, i32 6
  %822 = load i32, ptr %821, align 4
  %823 = lshr i32 %822, 16
  %824 = and i32 %823, 255
  br label %825

825:                                              ; preds = %820, %818
  %826 = phi i32 [ %819, %818 ], [ %824, %820 ]
  %827 = zext i32 %826 to i64
  %828 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %827
  %829 = load i8, ptr %828, align 1, !tbaa !72
  %830 = zext i8 %829 to i32
  br label %893

831:                                              ; preds = %759
  br i1 %768, label %832, label %834

832:                                              ; preds = %831
  %833 = tail call i32 @vector_type_mode(ptr noundef nonnull %765) #25
  br label %839

834:                                              ; preds = %831
  %835 = getelementptr inbounds %struct.tree_type, ptr %765, i64 0, i32 6
  %836 = load i32, ptr %835, align 4
  %837 = lshr i32 %836, 16
  %838 = and i32 %837, 255
  br label %839

839:                                              ; preds = %834, %832
  %840 = phi i32 [ %833, %832 ], [ %838, %834 ]
  %841 = zext i32 %840 to i64
  %842 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %841
  %843 = load i8, ptr %842, align 1, !tbaa !72
  %844 = icmp eq i8 %843, 8
  br i1 %844, label %863, label %845

845:                                              ; preds = %839
  %846 = load ptr, ptr %12, align 8, !tbaa !72
  %847 = load i64, ptr %846, align 8
  %848 = and i64 %847, 65535
  %849 = icmp eq i64 %848, 14
  br i1 %849, label %850, label %852

850:                                              ; preds = %845
  %851 = tail call i32 @vector_type_mode(ptr noundef nonnull %846) #25
  br label %857

852:                                              ; preds = %845
  %853 = getelementptr inbounds %struct.tree_type, ptr %846, i64 0, i32 6
  %854 = load i32, ptr %853, align 4
  %855 = lshr i32 %854, 16
  %856 = and i32 %855, 255
  br label %857

857:                                              ; preds = %852, %850
  %858 = phi i32 [ %851, %850 ], [ %856, %852 ]
  %859 = zext i32 %858 to i64
  %860 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %859
  %861 = load i8, ptr %860, align 1, !tbaa !72
  %862 = icmp eq i8 %861, 9
  br i1 %862, label %863, label %875

863:                                              ; preds = %857, %839
  %864 = load ptr, ptr %12, align 8, !tbaa !72
  %865 = load i64, ptr %864, align 8
  %866 = and i64 %865, 65535
  %867 = icmp eq i64 %866, 14
  br i1 %867, label %868, label %870

868:                                              ; preds = %863
  %869 = tail call i32 @vector_type_mode(ptr noundef nonnull %864) #25
  br label %893

870:                                              ; preds = %863
  %871 = getelementptr inbounds %struct.tree_type, ptr %864, i64 0, i32 6
  %872 = load i32, ptr %871, align 4
  %873 = lshr i32 %872, 16
  %874 = and i32 %873, 255
  br label %893

875:                                              ; preds = %857
  %876 = load ptr, ptr %12, align 8, !tbaa !72
  %877 = load i64, ptr %876, align 8
  %878 = and i64 %877, 65535
  %879 = icmp eq i64 %878, 14
  br i1 %879, label %880, label %882

880:                                              ; preds = %875
  %881 = tail call i32 @vector_type_mode(ptr noundef nonnull %876) #25
  br label %887

882:                                              ; preds = %875
  %883 = getelementptr inbounds %struct.tree_type, ptr %876, i64 0, i32 6
  %884 = load i32, ptr %883, align 4
  %885 = lshr i32 %884, 16
  %886 = and i32 %885, 255
  br label %887

887:                                              ; preds = %882, %880
  %888 = phi i32 [ %881, %880 ], [ %886, %882 ]
  %889 = zext i32 %888 to i64
  %890 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %889
  %891 = load i8, ptr %890, align 1, !tbaa !72
  %892 = zext i8 %891 to i32
  br label %893

893:                                              ; preds = %887, %870, %868, %825, %808, %806
  %894 = phi i32 [ %830, %825 ], [ %807, %806 ], [ %812, %808 ], [ %892, %887 ], [ %869, %868 ], [ %874, %870 ]
  %895 = add i32 %894, -38
  %896 = zext i32 %895 to i64
  %897 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %896
  %898 = load ptr, ptr %897, align 8, !tbaa !61
  %899 = getelementptr inbounds %struct.real_format, ptr %898, i64 0, i32 12
  %900 = load i8, ptr %899, align 1, !tbaa !183
  %901 = icmp eq i8 %900, 0
  %902 = load i32, ptr @flag_finite_math_only, align 4
  %903 = icmp ne i32 %902, 0
  %904 = select i1 %901, i1 true, i1 %903
  br i1 %904, label %905, label %908

905:                                              ; preds = %893, %687
  %906 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !61
  %907 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %9, ptr noundef %906, ptr noundef nonnull %2) #25
  br label %1215

908:                                              ; preds = %893, %609
  %909 = load i64, ptr %2, align 8
  %910 = and i64 %909, 65535
  %911 = icmp eq i64 %910, 24
  br i1 %911, label %912, label %1215

912:                                              ; preds = %908
  %913 = getelementptr inbounds %struct.tree_real_cst, ptr %2, i64 0, i32 1
  %914 = load ptr, ptr %913, align 8, !tbaa !72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %914, i64 32, i1 false), !tbaa.struct !172
  %915 = call zeroext i8 @real_isfinite(ptr noundef nonnull %5) #25
  %916 = icmp eq i8 %915, 0
  %917 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16
  %918 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8
  %919 = select i1 %916, ptr %918, ptr %917
  br label %1215

920:                                              ; preds = %17
  %921 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %922 = load i32, ptr %921, align 4
  %923 = lshr i32 %922, 16
  %924 = and i32 %923, 255
  %925 = zext nneg i32 %924 to i64
  %926 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %925
  %927 = load i8, ptr %926, align 1, !tbaa !72
  %928 = icmp eq i8 %927, 8
  br i1 %928, label %974, label %929

929:                                              ; preds = %920
  %930 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %931 = load i32, ptr %930, align 4
  %932 = lshr i32 %931, 16
  %933 = and i32 %932, 255
  %934 = zext nneg i32 %933 to i64
  %935 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %934
  %936 = load i8, ptr %935, align 1, !tbaa !72
  %937 = icmp eq i8 %936, 9
  br i1 %937, label %974, label %938

938:                                              ; preds = %929
  %939 = load ptr, ptr %12, align 8, !tbaa !72
  %940 = load i64, ptr %939, align 8
  %941 = and i64 %940, 65535
  %942 = icmp eq i64 %941, 14
  br i1 %942, label %943, label %945

943:                                              ; preds = %938
  %944 = tail call i32 @vector_type_mode(ptr noundef nonnull %939) #25
  br label %950

945:                                              ; preds = %938
  %946 = getelementptr inbounds %struct.tree_type, ptr %939, i64 0, i32 6
  %947 = load i32, ptr %946, align 4
  %948 = lshr i32 %947, 16
  %949 = and i32 %948, 255
  br label %950

950:                                              ; preds = %945, %943
  %951 = phi i32 [ %944, %943 ], [ %949, %945 ]
  %952 = zext i32 %951 to i64
  %953 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %952
  %954 = load i8, ptr %953, align 1, !tbaa !72
  %955 = icmp eq i8 %954, 11
  br i1 %955, label %974, label %956

956:                                              ; preds = %950
  %957 = load ptr, ptr %12, align 8, !tbaa !72
  %958 = load i64, ptr %957, align 8
  %959 = and i64 %958, 65535
  %960 = icmp eq i64 %959, 14
  br i1 %960, label %961, label %963

961:                                              ; preds = %956
  %962 = tail call i32 @vector_type_mode(ptr noundef nonnull %957) #25
  br label %968

963:                                              ; preds = %956
  %964 = getelementptr inbounds %struct.tree_type, ptr %957, i64 0, i32 6
  %965 = load i32, ptr %964, align 4
  %966 = lshr i32 %965, 16
  %967 = and i32 %966, 255
  br label %968

968:                                              ; preds = %963, %961
  %969 = phi i32 [ %962, %961 ], [ %967, %963 ]
  %970 = zext i32 %969 to i64
  %971 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %970
  %972 = load i8, ptr %971, align 1, !tbaa !72
  %973 = icmp eq i8 %972, 17
  br i1 %973, label %974, label %1186

974:                                              ; preds = %968, %950, %929, %920
  %975 = load ptr, ptr %12, align 8, !tbaa !72
  %976 = load i64, ptr %975, align 8
  %977 = and i64 %976, 65535
  %978 = icmp eq i64 %977, 14
  br i1 %978, label %979, label %981

979:                                              ; preds = %974
  %980 = tail call i32 @vector_type_mode(ptr noundef nonnull %975) #25
  br label %986

981:                                              ; preds = %974
  %982 = getelementptr inbounds %struct.tree_type, ptr %975, i64 0, i32 6
  %983 = load i32, ptr %982, align 4
  %984 = lshr i32 %983, 16
  %985 = and i32 %984, 255
  br label %986

986:                                              ; preds = %981, %979
  %987 = phi i32 [ %980, %979 ], [ %985, %981 ]
  %988 = zext i32 %987 to i64
  %989 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %988
  %990 = load i8, ptr %989, align 1, !tbaa !72
  %991 = icmp eq i8 %990, 8
  br i1 %991, label %1010, label %992

992:                                              ; preds = %986
  %993 = load ptr, ptr %12, align 8, !tbaa !72
  %994 = load i64, ptr %993, align 8
  %995 = and i64 %994, 65535
  %996 = icmp eq i64 %995, 14
  br i1 %996, label %997, label %999

997:                                              ; preds = %992
  %998 = tail call i32 @vector_type_mode(ptr noundef nonnull %993) #25
  br label %1004

999:                                              ; preds = %992
  %1000 = getelementptr inbounds %struct.tree_type, ptr %993, i64 0, i32 6
  %1001 = load i32, ptr %1000, align 4
  %1002 = lshr i32 %1001, 16
  %1003 = and i32 %1002, 255
  br label %1004

1004:                                             ; preds = %999, %997
  %1005 = phi i32 [ %998, %997 ], [ %1003, %999 ]
  %1006 = zext i32 %1005 to i64
  %1007 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1006
  %1008 = load i8, ptr %1007, align 1, !tbaa !72
  %1009 = icmp eq i8 %1008, 9
  br i1 %1009, label %1010, label %1022

1010:                                             ; preds = %1004, %986
  %1011 = load ptr, ptr %12, align 8, !tbaa !72
  %1012 = load i64, ptr %1011, align 8
  %1013 = and i64 %1012, 65535
  %1014 = icmp eq i64 %1013, 14
  br i1 %1014, label %1015, label %1017

1015:                                             ; preds = %1010
  %1016 = tail call i32 @vector_type_mode(ptr noundef nonnull %1011) #25
  br label %1040

1017:                                             ; preds = %1010
  %1018 = getelementptr inbounds %struct.tree_type, ptr %1011, i64 0, i32 6
  %1019 = load i32, ptr %1018, align 4
  %1020 = lshr i32 %1019, 16
  %1021 = and i32 %1020, 255
  br label %1040

1022:                                             ; preds = %1004
  %1023 = load ptr, ptr %12, align 8, !tbaa !72
  %1024 = load i64, ptr %1023, align 8
  %1025 = and i64 %1024, 65535
  %1026 = icmp eq i64 %1025, 14
  br i1 %1026, label %1027, label %1029

1027:                                             ; preds = %1022
  %1028 = tail call i32 @vector_type_mode(ptr noundef nonnull %1023) #25
  br label %1034

1029:                                             ; preds = %1022
  %1030 = getelementptr inbounds %struct.tree_type, ptr %1023, i64 0, i32 6
  %1031 = load i32, ptr %1030, align 4
  %1032 = lshr i32 %1031, 16
  %1033 = and i32 %1032, 255
  br label %1034

1034:                                             ; preds = %1029, %1027
  %1035 = phi i32 [ %1028, %1027 ], [ %1033, %1029 ]
  %1036 = zext i32 %1035 to i64
  %1037 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %1036
  %1038 = load i8, ptr %1037, align 1, !tbaa !72
  %1039 = zext i8 %1038 to i32
  br label %1040

1040:                                             ; preds = %1015, %1017, %1034
  %1041 = phi i32 [ %1039, %1034 ], [ %1016, %1015 ], [ %1021, %1017 ]
  %1042 = zext i32 %1041 to i64
  %1043 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1042
  %1044 = load i8, ptr %1043, align 1, !tbaa !72
  %1045 = icmp eq i8 %1044, 9
  %1046 = load ptr, ptr %12, align 8, !tbaa !72
  %1047 = load i64, ptr %1046, align 8
  %1048 = and i64 %1047, 65535
  %1049 = icmp eq i64 %1048, 14
  br i1 %1045, label %1050, label %1112

1050:                                             ; preds = %1040
  br i1 %1049, label %1051, label %1053

1051:                                             ; preds = %1050
  %1052 = tail call i32 @vector_type_mode(ptr noundef nonnull %1046) #25
  br label %1058

1053:                                             ; preds = %1050
  %1054 = getelementptr inbounds %struct.tree_type, ptr %1046, i64 0, i32 6
  %1055 = load i32, ptr %1054, align 4
  %1056 = lshr i32 %1055, 16
  %1057 = and i32 %1056, 255
  br label %1058

1058:                                             ; preds = %1053, %1051
  %1059 = phi i32 [ %1052, %1051 ], [ %1057, %1053 ]
  %1060 = zext i32 %1059 to i64
  %1061 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1060
  %1062 = load i8, ptr %1061, align 1, !tbaa !72
  %1063 = icmp eq i8 %1062, 8
  br i1 %1063, label %1082, label %1064

1064:                                             ; preds = %1058
  %1065 = load ptr, ptr %12, align 8, !tbaa !72
  %1066 = load i64, ptr %1065, align 8
  %1067 = and i64 %1066, 65535
  %1068 = icmp eq i64 %1067, 14
  br i1 %1068, label %1069, label %1071

1069:                                             ; preds = %1064
  %1070 = tail call i32 @vector_type_mode(ptr noundef nonnull %1065) #25
  br label %1076

1071:                                             ; preds = %1064
  %1072 = getelementptr inbounds %struct.tree_type, ptr %1065, i64 0, i32 6
  %1073 = load i32, ptr %1072, align 4
  %1074 = lshr i32 %1073, 16
  %1075 = and i32 %1074, 255
  br label %1076

1076:                                             ; preds = %1071, %1069
  %1077 = phi i32 [ %1070, %1069 ], [ %1075, %1071 ]
  %1078 = zext i32 %1077 to i64
  %1079 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1078
  %1080 = load i8, ptr %1079, align 1, !tbaa !72
  %1081 = icmp eq i8 %1080, 9
  br i1 %1081, label %1082, label %1094

1082:                                             ; preds = %1076, %1058
  %1083 = load ptr, ptr %12, align 8, !tbaa !72
  %1084 = load i64, ptr %1083, align 8
  %1085 = and i64 %1084, 65535
  %1086 = icmp eq i64 %1085, 14
  br i1 %1086, label %1087, label %1089

1087:                                             ; preds = %1082
  %1088 = tail call i32 @vector_type_mode(ptr noundef nonnull %1083) #25
  br label %1174

1089:                                             ; preds = %1082
  %1090 = getelementptr inbounds %struct.tree_type, ptr %1083, i64 0, i32 6
  %1091 = load i32, ptr %1090, align 4
  %1092 = lshr i32 %1091, 16
  %1093 = and i32 %1092, 255
  br label %1174

1094:                                             ; preds = %1076
  %1095 = load ptr, ptr %12, align 8, !tbaa !72
  %1096 = load i64, ptr %1095, align 8
  %1097 = and i64 %1096, 65535
  %1098 = icmp eq i64 %1097, 14
  br i1 %1098, label %1099, label %1101

1099:                                             ; preds = %1094
  %1100 = tail call i32 @vector_type_mode(ptr noundef nonnull %1095) #25
  br label %1106

1101:                                             ; preds = %1094
  %1102 = getelementptr inbounds %struct.tree_type, ptr %1095, i64 0, i32 6
  %1103 = load i32, ptr %1102, align 4
  %1104 = lshr i32 %1103, 16
  %1105 = and i32 %1104, 255
  br label %1106

1106:                                             ; preds = %1101, %1099
  %1107 = phi i32 [ %1100, %1099 ], [ %1105, %1101 ]
  %1108 = zext i32 %1107 to i64
  %1109 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %1108
  %1110 = load i8, ptr %1109, align 1, !tbaa !72
  %1111 = zext i8 %1110 to i32
  br label %1174

1112:                                             ; preds = %1040
  br i1 %1049, label %1113, label %1115

1113:                                             ; preds = %1112
  %1114 = tail call i32 @vector_type_mode(ptr noundef nonnull %1046) #25
  br label %1120

1115:                                             ; preds = %1112
  %1116 = getelementptr inbounds %struct.tree_type, ptr %1046, i64 0, i32 6
  %1117 = load i32, ptr %1116, align 4
  %1118 = lshr i32 %1117, 16
  %1119 = and i32 %1118, 255
  br label %1120

1120:                                             ; preds = %1115, %1113
  %1121 = phi i32 [ %1114, %1113 ], [ %1119, %1115 ]
  %1122 = zext i32 %1121 to i64
  %1123 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1122
  %1124 = load i8, ptr %1123, align 1, !tbaa !72
  %1125 = icmp eq i8 %1124, 8
  br i1 %1125, label %1144, label %1126

1126:                                             ; preds = %1120
  %1127 = load ptr, ptr %12, align 8, !tbaa !72
  %1128 = load i64, ptr %1127, align 8
  %1129 = and i64 %1128, 65535
  %1130 = icmp eq i64 %1129, 14
  br i1 %1130, label %1131, label %1133

1131:                                             ; preds = %1126
  %1132 = tail call i32 @vector_type_mode(ptr noundef nonnull %1127) #25
  br label %1138

1133:                                             ; preds = %1126
  %1134 = getelementptr inbounds %struct.tree_type, ptr %1127, i64 0, i32 6
  %1135 = load i32, ptr %1134, align 4
  %1136 = lshr i32 %1135, 16
  %1137 = and i32 %1136, 255
  br label %1138

1138:                                             ; preds = %1133, %1131
  %1139 = phi i32 [ %1132, %1131 ], [ %1137, %1133 ]
  %1140 = zext i32 %1139 to i64
  %1141 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %1140
  %1142 = load i8, ptr %1141, align 1, !tbaa !72
  %1143 = icmp eq i8 %1142, 9
  br i1 %1143, label %1144, label %1156

1144:                                             ; preds = %1138, %1120
  %1145 = load ptr, ptr %12, align 8, !tbaa !72
  %1146 = load i64, ptr %1145, align 8
  %1147 = and i64 %1146, 65535
  %1148 = icmp eq i64 %1147, 14
  br i1 %1148, label %1149, label %1151

1149:                                             ; preds = %1144
  %1150 = tail call i32 @vector_type_mode(ptr noundef nonnull %1145) #25
  br label %1174

1151:                                             ; preds = %1144
  %1152 = getelementptr inbounds %struct.tree_type, ptr %1145, i64 0, i32 6
  %1153 = load i32, ptr %1152, align 4
  %1154 = lshr i32 %1153, 16
  %1155 = and i32 %1154, 255
  br label %1174

1156:                                             ; preds = %1138
  %1157 = load ptr, ptr %12, align 8, !tbaa !72
  %1158 = load i64, ptr %1157, align 8
  %1159 = and i64 %1158, 65535
  %1160 = icmp eq i64 %1159, 14
  br i1 %1160, label %1161, label %1163

1161:                                             ; preds = %1156
  %1162 = tail call i32 @vector_type_mode(ptr noundef nonnull %1157) #25
  br label %1168

1163:                                             ; preds = %1156
  %1164 = getelementptr inbounds %struct.tree_type, ptr %1157, i64 0, i32 6
  %1165 = load i32, ptr %1164, align 4
  %1166 = lshr i32 %1165, 16
  %1167 = and i32 %1166, 255
  br label %1168

1168:                                             ; preds = %1163, %1161
  %1169 = phi i32 [ %1162, %1161 ], [ %1167, %1163 ]
  %1170 = zext i32 %1169 to i64
  %1171 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %1170
  %1172 = load i8, ptr %1171, align 1, !tbaa !72
  %1173 = zext i8 %1172 to i32
  br label %1174

1174:                                             ; preds = %1168, %1151, %1149, %1106, %1089, %1087
  %1175 = phi i32 [ %1111, %1106 ], [ %1088, %1087 ], [ %1093, %1089 ], [ %1173, %1168 ], [ %1150, %1149 ], [ %1155, %1151 ]
  %1176 = add i32 %1175, -38
  %1177 = zext i32 %1176 to i64
  %1178 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %1177
  %1179 = load ptr, ptr %1178, align 8, !tbaa !61
  %1180 = getelementptr inbounds %struct.real_format, ptr %1179, i64 0, i32 11
  %1181 = load i8, ptr %1180, align 2, !tbaa !184
  %1182 = icmp eq i8 %1181, 0
  %1183 = load i32, ptr @flag_finite_math_only, align 4
  %1184 = icmp ne i32 %1183, 0
  %1185 = select i1 %1182, i1 true, i1 %1184
  br i1 %1185, label %1186, label %1189

1186:                                             ; preds = %1174, %968
  %1187 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !61
  %1188 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %9, ptr noundef %1187, ptr noundef nonnull %2) #25
  br label %1215

1189:                                             ; preds = %1174
  %1190 = load i64, ptr %2, align 8
  %1191 = and i64 %1190, 65535
  %1192 = icmp eq i64 %1191, 24
  br i1 %1192, label %1193, label %1201

1193:                                             ; preds = %1189
  %1194 = getelementptr inbounds %struct.tree_real_cst, ptr %2, i64 0, i32 1
  %1195 = load ptr, ptr %1194, align 8, !tbaa !72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %1195, i64 32, i1 false), !tbaa.struct !172
  %1196 = call zeroext i8 @real_isnan(ptr noundef nonnull %5) #25
  %1197 = icmp eq i8 %1196, 0
  %1198 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16
  %1199 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8
  %1200 = select i1 %1197, ptr %1199, ptr %1198
  br label %1215

1201:                                             ; preds = %1189
  %1202 = and i64 %1190, 262144
  %1203 = icmp eq i64 %1202, 0
  br i1 %1203, label %1204, label %1209

1204:                                             ; preds = %1201
  %1205 = trunc i64 %1190 to i16
  switch i16 %1205, label %1209 [
    i16 34, label %1211
    i16 32, label %1206
  ]

1206:                                             ; preds = %1204
  %1207 = and i64 %1190, 67108864
  %1208 = icmp eq i64 %1207, 0
  br i1 %1208, label %1211, label %1209

1209:                                             ; preds = %1206, %1204, %1201
  %1210 = tail call ptr @save_expr(ptr noundef nonnull %2) #25
  br label %1211

1211:                                             ; preds = %1204, %1206, %1209
  %1212 = phi ptr [ %1210, %1209 ], [ %2, %1204 ], [ %2, %1206 ]
  %1213 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 103, ptr noundef %9, ptr noundef %1212, ptr noundef %1212) #25
  br label %1215

1214:                                             ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.724, i32 noundef 9559, ptr noundef nonnull @.str.725) #25
  br label %1215

1215:                                             ; preds = %4, %908, %334, %339, %287, %11, %1214, %1211, %1193, %1186, %912, %905, %302, %296, %284
  %1216 = phi ptr [ null, %1214 ], [ %1188, %1186 ], [ %1200, %1193 ], [ %1213, %1211 ], [ %907, %905 ], [ %919, %912 ], [ %286, %284 ], [ %301, %296 ], [ %303, %302 ], [ null, %11 ], [ null, %287 ], [ %354, %339 ], [ null, %334 ], [ null, %908 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #25
  ret ptr %1216
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_interclass_mathfn(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #14 !prof !60 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca %struct.real_value, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca %struct.real_value, align 8
  %9 = alloca %struct.real_value, align 8
  %10 = alloca [128 x i8], align 16
  %11 = icmp eq ptr %2, null
  br i1 %11, label %123, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 9
  br i1 %17, label %18, label %123

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.tree_function_decl, ptr %1, i64 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 2047
  switch i32 %21, label %24 [
    i32 93, label %22
    i32 94, label %22
    i32 95, label %22
    i32 469, label %23
    i32 470, label %23
    i32 471, label %23
    i32 481, label %25
    i32 467, label %25
    i32 460, label %25
    i32 461, label %25
    i32 462, label %25
    i32 463, label %25
    i32 464, label %25
    i32 465, label %25
    i32 472, label %25
    i32 473, label %25
    i32 474, label %25
  ]

22:                                               ; preds = %18, %18, %18
  br label %25

23:                                               ; preds = %18, %18, %18
  br label %25

24:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.724, i32 noundef 2278, ptr noundef nonnull @.str.725) #25
  br label %25

25:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18, %18, %18, %24, %23, %22, %18
  %26 = phi i1 [ false, %24 ], [ false, %18 ], [ false, %23 ], [ true, %22 ], [ false, %18 ], [ false, %18 ], [ false, %18 ], [ false, %18 ], [ false, %18 ], [ false, %18 ], [ false, %18 ], [ false, %18 ], [ false, %18 ], [ false, %18 ]
  %27 = phi i1 [ true, %24 ], [ true, %18 ], [ false, %23 ], [ false, %22 ], [ true, %18 ], [ true, %18 ], [ true, %18 ], [ true, %18 ], [ true, %18 ], [ true, %18 ], [ true, %18 ], [ true, %18 ], [ true, %18 ], [ true, %18 ]
  %28 = phi ptr [ null, %24 ], [ null, %18 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 104), %23 ], [ getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 89), %22 ], [ null, %18 ], [ null, %18 ], [ null, %18 ], [ null, %18 ], [ null, %18 ], [ null, %18 ], [ null, %18 ], [ null, %18 ], [ null, %18 ], [ null, %18 ]
  %29 = load i32, ptr @flag_errno_math, align 4, !tbaa !76
  %30 = icmp ne i32 %29, 0
  %31 = and i1 %26, %30
  br i1 %31, label %51, label %32

32:                                               ; preds = %25
  %33 = load ptr, ptr %13, align 8, !tbaa !72
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 14
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = tail call i32 @vector_type_mode(ptr noundef nonnull %33) #25
  br label %44

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.tree_type, ptr %33, i64 0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  br label %44

44:                                               ; preds = %39, %37
  %45 = phi i32 [ %38, %37 ], [ %43, %39 ]
  br i1 %27, label %51, label %46

46:                                               ; preds = %44
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds %struct.optab_d, ptr %28, i64 0, i32 4, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !212
  %50 = icmp eq i32 %49, 2956
  br i1 %50, label %51, label %123

51:                                               ; preds = %25, %44, %46
  %52 = load ptr, ptr %13, align 8, !tbaa !72
  %53 = load i64, ptr %52, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 14
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = tail call i32 @vector_type_mode(ptr noundef nonnull %52) #25
  br label %63

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 6
  %60 = load i32, ptr %59, align 4
  %61 = lshr i32 %60, 16
  %62 = and i32 %61, 255
  br label %63

63:                                               ; preds = %58, %56
  %64 = phi i32 [ %57, %56 ], [ %62, %58 ]
  %65 = load i32, ptr %19, align 8
  %66 = and i32 %65, 2047
  switch i32 %66, label %123 [
    i32 469, label %67
    i32 470, label %67
    i32 471, label %67
    i32 460, label %78
    i32 461, label %78
    i32 462, label %78
    i32 467, label %78
    i32 481, label %89
  ]

67:                                               ; preds = %63, %63, %63
  %68 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 482), align 16, !tbaa !61
  %69 = load ptr, ptr %13, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #25
  %70 = add i32 %64, -38
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !61
  call void @get_max_float(ptr noundef %73, ptr noundef nonnull %5, i64 noundef 128) #25
  %74 = call i32 @real_from_string(ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  %75 = call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 82, ptr noundef %69, ptr noundef nonnull %2) #25
  %76 = call ptr @build_real(ptr noundef %69, ptr noundef nonnull byval(%struct.real_value) align 8 %4) #25
  %77 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %68, i32 noundef 2, ptr noundef %75, ptr noundef %76)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #25
  br label %123

78:                                               ; preds = %63, %63, %63, %63
  %79 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 485), align 8, !tbaa !61
  %80 = load ptr, ptr %13, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %7) #25
  %81 = add i32 %64, -38
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !61
  call void @get_max_float(ptr noundef %84, ptr noundef nonnull %7, i64 noundef 128) #25
  %85 = call i32 @real_from_string(ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %86 = call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 82, ptr noundef %80, ptr noundef nonnull %2) #25
  %87 = call ptr @build_real(ptr noundef %80, ptr noundef nonnull byval(%struct.real_value) align 8 %6) #25
  %88 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %79, i32 noundef 2, ptr noundef %86, ptr noundef %87)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #25
  br label %123

89:                                               ; preds = %63
  %90 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 485), align 8, !tbaa !61
  %91 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 483), align 8, !tbaa !61
  %92 = load ptr, ptr %13, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %10) #25
  %93 = add i32 %64, -38
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !61
  call void @get_max_float(ptr noundef %96, ptr noundef nonnull %10, i64 noundef 128) #25
  %97 = call i32 @real_from_string(ptr noundef nonnull %8, ptr noundef nonnull %10) #25
  %98 = load ptr, ptr %95, align 8, !tbaa !61
  %99 = getelementptr inbounds %struct.real_format, ptr %98, i64 0, i32 5
  %100 = load i32, ptr %99, align 4, !tbaa !181
  %101 = add nsw i32 %100, -1
  %102 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) @.str.739, i32 noundef %101)
  %103 = call i32 @real_from_string(ptr noundef nonnull %9, ptr noundef nonnull %10) #25
  %104 = call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 82, ptr noundef %92, ptr noundef nonnull %2) #25
  %105 = load i64, ptr %104, align 8
  %106 = and i64 %105, 262144
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %89
  %109 = trunc i64 %105 to i16
  switch i16 %109, label %113 [
    i16 34, label %115
    i16 32, label %110
  ]

110:                                              ; preds = %108
  %111 = and i64 %105, 67108864
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %110, %108, %89
  %114 = call ptr @save_expr(ptr noundef nonnull %104) #25
  br label %115

115:                                              ; preds = %108, %110, %113
  %116 = phi ptr [ %114, %113 ], [ %104, %108 ], [ %104, %110 ]
  %117 = call ptr @build_real(ptr noundef %92, ptr noundef nonnull byval(%struct.real_value) align 8 %8) #25
  %118 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %90, i32 noundef 2, ptr noundef %116, ptr noundef %117)
  %119 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %120 = call ptr @build_real(ptr noundef %92, ptr noundef nonnull byval(%struct.real_value) align 8 %9) #25
  %121 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %91, i32 noundef 2, ptr noundef %116, ptr noundef %120)
  %122 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 89, ptr noundef %119, ptr noundef %118, ptr noundef %121) #25
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #25
  br label %123

123:                                              ; preds = %3, %63, %46, %12, %115, %78, %67
  %124 = phi ptr [ %122, %115 ], [ %88, %78 ], [ %77, %67 ], [ null, %12 ], [ null, %46 ], [ null, %63 ], [ null, %3 ]
  ret ptr %124
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_printf(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4, i32 noundef %5) unnamed_addr #14 !prof !60 {
  %7 = icmp eq i8 %4, 0
  %8 = icmp eq ptr %2, null
  %9 = or i1 %8, %7
  br i1 %9, label %133, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !72
  %13 = load i64, ptr %12, align 8
  %14 = trunc i64 %13 to i16
  switch i16 %14, label %133 [
    i16 12, label %15
    i16 10, label %15
  ]

15:                                               ; preds = %10, %10
  %16 = tail call fastcc ptr @c_getstr(ptr noundef %2)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %133, label %18

18:                                               ; preds = %15
  %19 = icmp eq i32 %5, 366
  %20 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 368), align 16
  %21 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 367), align 8
  %22 = select i1 %19, ptr %20, ptr %21
  %23 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 370), align 16
  %24 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 369), align 8
  %25 = select i1 %19, ptr %23, ptr %24
  %26 = tail call fastcc zeroext i8 @init_target_chars(), !range !141
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %133, label %28

28:                                               ; preds = %18
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) @target_percent_s)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load i64, ptr @target_percent, align 8, !tbaa !82
  %33 = trunc i64 %32 to i32
  %34 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %16, i32 noundef %33)
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %91

36:                                               ; preds = %31
  br i1 %30, label %37, label %48

37:                                               ; preds = %28, %36
  switch i32 %5, label %38 [
    i32 545, label %87
    i32 377, label %87
  ]

38:                                               ; preds = %37
  %39 = icmp eq ptr %3, null
  br i1 %39, label %87, label %40

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !72
  %43 = load i64, ptr %42, align 8
  %44 = trunc i64 %43 to i16
  switch i16 %44, label %87 [
    i16 12, label %45
    i16 10, label %45
  ]

45:                                               ; preds = %40, %40
  %46 = tail call fastcc ptr @c_getstr(ptr noundef nonnull %3)
  %47 = icmp eq ptr %46, null
  br i1 %47, label %87, label %51

48:                                               ; preds = %36
  %49 = icmp eq ptr %3, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %48
  switch i32 %5, label %87 [
    i32 545, label %51
    i32 377, label %51
  ]

51:                                               ; preds = %50, %48, %50, %45
  %52 = phi ptr [ %46, %45 ], [ %16, %50 ], [ %16, %48 ], [ %16, %50 ]
  %53 = load i8, ptr %52, align 1, !tbaa !72
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !72
  %58 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !72
  %60 = tail call ptr @build_int_cst(ptr noundef %59, i64 noundef 0) #25
  br label %87

61:                                               ; preds = %51
  %62 = getelementptr inbounds i8, ptr %52, i64 1
  %63 = load i8, ptr %62, align 1, !tbaa !72
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = sext i8 %53 to i64
  %67 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %66) #25
  %68 = icmp eq ptr %22, null
  br i1 %68, label %87, label %69

69:                                               ; preds = %65
  %70 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %22, i32 noundef 1, ptr noundef %67)
  br label %87

71:                                               ; preds = %61
  %72 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %52)
  %73 = add i64 %72, -1
  %74 = getelementptr inbounds i8, ptr %52, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !72
  %76 = zext i8 %75 to i64
  %77 = load i64, ptr @target_newline, align 8, !tbaa !82
  %78 = icmp eq i64 %77, %76
  br i1 %78, label %79, label %87

79:                                               ; preds = %71
  %80 = alloca i8, i64 %72, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %80, ptr nonnull align 1 %52, i64 %73, i1 false)
  %81 = getelementptr inbounds i8, ptr %80, i64 %73
  store i8 0, ptr %81, align 1, !tbaa !72
  %82 = trunc i64 %72 to i32
  %83 = call ptr @build_string_literal(i32 noundef %82, ptr noundef nonnull %80)
  %84 = icmp eq ptr %25, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %79
  %86 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %25, i32 noundef 1, ptr noundef %83)
  br label %87

87:                                               ; preds = %45, %40, %37, %85, %79, %71, %69, %65, %50, %38, %37, %55
  %88 = phi ptr [ null, %55 ], [ null, %37 ], [ null, %38 ], [ null, %50 ], [ %70, %69 ], [ null, %65 ], [ %86, %85 ], [ null, %79 ], [ null, %71 ], [ null, %37 ], [ null, %40 ], [ null, %45 ]
  %89 = phi i1 [ false, %55 ], [ false, %37 ], [ false, %38 ], [ false, %50 ], [ true, %69 ], [ true, %65 ], [ true, %85 ], [ true, %79 ], [ %78, %71 ], [ false, %37 ], [ false, %40 ], [ false, %45 ]
  %90 = phi ptr [ %60, %55 ], [ null, %37 ], [ null, %38 ], [ null, %50 ], [ null, %69 ], [ null, %65 ], [ null, %85 ], [ null, %79 ], [ null, %71 ], [ null, %37 ], [ null, %40 ], [ null, %45 ]
  br i1 %89, label %124, label %133

91:                                               ; preds = %31
  switch i32 %5, label %92 [
    i32 545, label %133
    i32 377, label %133
  ]

92:                                               ; preds = %91
  %93 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) @target_percent_s_newline)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = icmp eq ptr %3, null
  br i1 %96, label %133, label %97

97:                                               ; preds = %95
  %98 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !72
  %100 = load i64, ptr %99, align 8
  %101 = trunc i64 %100 to i16
  switch i16 %101, label %133 [
    i16 12, label %102
    i16 10, label %102
  ]

102:                                              ; preds = %97, %97
  %103 = icmp eq ptr %25, null
  br i1 %103, label %124, label %121

104:                                              ; preds = %92
  %105 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) @target_percent_c)
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %124

107:                                              ; preds = %104
  %108 = icmp eq ptr %3, null
  br i1 %108, label %133, label %109

109:                                              ; preds = %107
  %110 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !72
  %112 = load i64, ptr %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = and i32 %113, 65534
  %115 = icmp ne i32 %114, 6
  %116 = and i32 %113, 65535
  %117 = icmp ne i32 %116, 8
  %118 = and i1 %115, %117
  br i1 %118, label %133, label %119

119:                                              ; preds = %109
  %120 = icmp eq ptr %22, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %119, %102
  %122 = phi ptr [ %25, %102 ], [ %22, %119 ]
  %123 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %122, i32 noundef 1, ptr noundef nonnull %3)
  br label %124

124:                                              ; preds = %121, %102, %104, %119, %87
  %125 = phi ptr [ %88, %87 ], [ null, %119 ], [ null, %104 ], [ null, %102 ], [ %123, %121 ]
  %126 = icmp eq ptr %125, null
  br i1 %126, label %133, label %127

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !72
  %130 = getelementptr inbounds %struct.tree_common, ptr %129, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !72
  %132 = call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %131, ptr noundef nonnull %125) #25
  br label %133

133:                                              ; preds = %124, %91, %15, %10, %97, %107, %109, %95, %91, %18, %6, %87, %127
  %134 = phi ptr [ %132, %127 ], [ %90, %87 ], [ null, %6 ], [ null, %10 ], [ null, %18 ], [ null, %91 ], [ null, %97 ], [ null, %95 ], [ null, %109 ], [ null, %107 ], [ null, %15 ], [ null, %91 ], [ null, %124 ]
  ret ptr %134
}

declare ptr @fold_abs_const(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @save_expr(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @real_nan(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #21

declare zeroext i8 @real_isnan(ptr noundef) local_unnamed_addr #3

declare void @real_floor(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @tree_expr_nonnegative_p(ptr noundef) local_unnamed_addr #3

declare void @real_ceil(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @real_trunc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @real_round(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @integer_valued_real_p(ptr noundef %0) unnamed_addr #14 !prof !60 {
  br label %2

2:                                                ; preds = %9, %6, %1
  %3 = phi ptr [ %0, %1 ], [ %8, %6 ], [ %11, %9 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %80 [
    i16 78, label %17
    i16 82, label %6
    i16 120, label %6
    i16 52, label %9
    i16 53, label %9
    i16 58, label %9
    i16 63, label %12
    i16 64, label %12
    i16 65, label %12
    i16 80, label %12
    i16 81, label %12
    i16 56, label %25
    i16 24, label %36
    i16 116, label %54
    i16 59, label %67
  ]

6:                                                ; preds = %2, %2
  %7 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  br label %2

9:                                                ; preds = %2, %2, %2
  %10 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  br label %2

12:                                               ; preds = %2, %2, %2, %2, %2
  %13 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  %15 = tail call fastcc zeroext i8 @integer_valued_real_p(ptr noundef %14)
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %51, %80, %12, %25, %64, %67, %2, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %67, %69, %74, %30, %19
  %18 = phi i8 [ %24, %19 ], [ %35, %30 ], [ %79, %74 ], [ 0, %80 ], [ %65, %64 ], [ %53, %51 ], [ 0, %12 ], [ 0, %25 ], [ 1, %67 ], [ 1, %2 ], [ 1, %67 ], [ 1, %67 ], [ 1, %67 ], [ 1, %67 ], [ 1, %67 ], [ 1, %67 ], [ 1, %67 ], [ 1, %67 ], [ 1, %67 ], [ 1, %67 ], [ 1, %67 ], [ 1, %67 ], [ 1, %67 ], [ 1, %67 ], [ 1, %67 ], [ 1, %67 ], [ 1, %67 ], [ 0, %69 ]
  ret i8 %18

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !72
  %22 = tail call fastcc zeroext i8 @integer_valued_real_p(ptr noundef %21)
  %23 = icmp ne i8 %22, 0
  %24 = zext i1 %23 to i8
  br label %17

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !72
  %28 = tail call fastcc zeroext i8 @integer_valued_real_p(ptr noundef %27)
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %17, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !72
  %33 = tail call fastcc zeroext i8 @integer_valued_real_p(ptr noundef %32)
  %34 = icmp ne i8 %33, 0
  %35 = zext i1 %34 to i8
  br label %17

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.tree_real_cst, ptr %3, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !72
  %39 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !72
  %41 = load i64, ptr %40, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 14
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = tail call i32 @vector_type_mode(ptr noundef nonnull %40) #25
  br label %51

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.tree_type, ptr %40, i64 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = lshr i32 %48, 16
  %50 = and i32 %49, 255
  br label %51

51:                                               ; preds = %46, %44
  %52 = phi i32 [ %45, %44 ], [ %50, %46 ]
  %53 = tail call zeroext i8 @real_isinteger(ptr noundef %38, i32 noundef %52) #25
  br label %17

54:                                               ; preds = %2
  %55 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !72
  %57 = getelementptr inbounds %struct.tree_common, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !72
  %59 = load i64, ptr %58, align 8
  %60 = trunc i64 %59 to i16
  switch i16 %60, label %63 [
    i16 8, label %64
    i16 9, label %61
  ]

61:                                               ; preds = %54
  %62 = tail call fastcc zeroext i8 @integer_valued_real_p(ptr noundef %56)
  br label %64

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %54, %63, %61
  %65 = phi i8 [ %62, %61 ], [ undef, %63 ], [ 1, %54 ]
  %66 = phi i1 [ true, %61 ], [ false, %63 ], [ true, %54 ]
  br i1 %66, label %17, label %80

67:                                               ; preds = %2
  %68 = tail call i32 @builtin_mathfn_code(ptr noundef nonnull %3), !range !201
  switch i32 %68, label %80 [
    i32 24, label %17
    i32 25, label %17
    i32 26, label %17
    i32 63, label %17
    i32 64, label %17
    i32 65, label %17
    i32 171, label %17
    i32 172, label %17
    i32 173, label %17
    i32 195, label %17
    i32 196, label %17
    i32 197, label %17
    i32 198, label %17
    i32 199, label %17
    i32 200, label %17
    i32 240, label %17
    i32 241, label %17
    i32 242, label %17
    i32 72, label %69
    i32 73, label %69
    i32 74, label %69
    i32 69, label %69
    i32 70, label %69
    i32 71, label %69
  ]

69:                                               ; preds = %67, %67, %67, %67, %67, %67
  %70 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !72
  %72 = tail call fastcc zeroext i8 @integer_valued_real_p(ptr noundef %71)
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %17, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !72
  %77 = tail call fastcc zeroext i8 @integer_valued_real_p(ptr noundef %76)
  %78 = icmp ne i8 %77, 0
  %79 = zext i1 %78 to i8
  br label %17

80:                                               ; preds = %67, %64, %2
  br label %17
}

declare ptr @strip_float_extensions(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @real_isinteger(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @real_isfinite(ptr noundef) local_unnamed_addr #3

declare void @real_to_integer2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @fit_double_type(i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst_wide(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @exact_log2(i64 noundef) local_unnamed_addr #3

declare i32 @floor_log2(i64 noundef) local_unnamed_addr #3

declare zeroext i8 @real_isneg(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @real_isinf(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @real_compare(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_build3_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @get_max_float(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @real_from_string(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_load_exponent(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i8 noundef zeroext %4) unnamed_addr #14 !prof !60 {
  %6 = alloca %struct.real_value, align 8
  %7 = alloca %struct.real_value, align 8
  %8 = icmp eq ptr %1, null
  br i1 %8, label %227, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp ne i64 %13, 9
  %15 = icmp eq ptr %2, null
  %16 = or i1 %15, %14
  br i1 %16, label %227, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !72
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = and i32 %21, 65534
  %23 = icmp eq i32 %22, 6
  %24 = and i32 %21, 65535
  %25 = icmp eq i32 %24, 8
  %26 = or i1 %23, %25
  br i1 %26, label %27, label %227

27:                                               ; preds = %17
  %28 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %1) #25
  %29 = tail call ptr @tree_strip_nop_conversions(ptr noundef %2) #25
  %30 = tail call i32 @real_zerop(ptr noundef %28) #25
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %27
  %33 = tail call i32 @integer_zerop(ptr noundef %29) #25
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i64, ptr %28, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 24
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.tree_real_cst, ptr %28, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !72
  %42 = tail call zeroext i8 @real_isfinite(ptr noundef %41) #25
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39, %32, %27
  %45 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %3, ptr noundef %28, ptr noundef %29) #25
  br label %228

46:                                               ; preds = %39, %35
  %47 = icmp eq i8 %4, 0
  br i1 %47, label %48, label %93

48:                                               ; preds = %46
  %49 = load i64, ptr %3, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 14
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #25
  br label %59

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %56 = load i32, ptr %55, align 4
  %57 = lshr i32 %56, 16
  %58 = and i32 %57, 255
  br label %59

59:                                               ; preds = %54, %52
  %60 = phi i32 [ %53, %52 ], [ %58, %54 ]
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !72
  %64 = icmp eq i8 %63, 9
  %65 = load i64, ptr %3, align 8
  %66 = and i64 %65, 65535
  %67 = icmp eq i64 %66, 14
  br i1 %64, label %68, label %76

68:                                               ; preds = %59
  br i1 %67, label %69, label %71

69:                                               ; preds = %68
  %70 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #25
  br label %84

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %73 = load i32, ptr %72, align 4
  %74 = lshr i32 %73, 16
  %75 = and i32 %74, 255
  br label %84

76:                                               ; preds = %59
  br i1 %67, label %77, label %79

77:                                               ; preds = %76
  %78 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #25
  br label %84

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %81 = load i32, ptr %80, align 4
  %82 = lshr i32 %81, 16
  %83 = and i32 %82, 255
  br label %84

84:                                               ; preds = %77, %79, %69, %71
  %85 = phi i32 [ %70, %69 ], [ %75, %71 ], [ %78, %77 ], [ %83, %79 ]
  %86 = add i32 %85, -38
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !61
  %90 = getelementptr inbounds %struct.real_format, ptr %89, i64 0, i32 2
  %91 = load i32, ptr %90, align 8, !tbaa !211
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %227

93:                                               ; preds = %84, %46
  %94 = load i64, ptr %28, align 8
  %95 = and i64 %94, 134283263
  %96 = icmp eq i64 %95, 24
  br i1 %96, label %97, label %227

97:                                               ; preds = %93
  %98 = tail call i32 @host_integerp(ptr noundef %29, i32 noundef 0) #25
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %227, label %100

100:                                              ; preds = %97
  %101 = load i64, ptr %3, align 8
  %102 = and i64 %101, 65535
  %103 = icmp eq i64 %102, 14
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #25
  br label %111

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %108 = load i32, ptr %107, align 4
  %109 = lshr i32 %108, 16
  %110 = and i32 %109, 255
  br label %111

111:                                              ; preds = %106, %104
  %112 = phi i32 [ %105, %104 ], [ %110, %106 ]
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %113
  %115 = load i8, ptr %114, align 1, !tbaa !72
  %116 = icmp eq i8 %115, 9
  %117 = load i64, ptr %3, align 8
  %118 = and i64 %117, 65535
  %119 = icmp eq i64 %118, 14
  br i1 %116, label %120, label %128

120:                                              ; preds = %111
  br i1 %119, label %121, label %123

121:                                              ; preds = %120
  %122 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #25
  br label %136

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %125 = load i32, ptr %124, align 4
  %126 = lshr i32 %125, 16
  %127 = and i32 %126, 255
  br label %136

128:                                              ; preds = %111
  br i1 %119, label %129, label %131

129:                                              ; preds = %128
  %130 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #25
  br label %136

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %133 = load i32, ptr %132, align 4
  %134 = lshr i32 %133, 16
  %135 = and i32 %134, 255
  br label %136

136:                                              ; preds = %129, %131, %121, %123
  %137 = phi i32 [ %122, %121 ], [ %127, %123 ], [ %130, %129 ], [ %135, %131 ]
  %138 = add i32 %137, -38
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !61
  %142 = getelementptr inbounds %struct.real_format, ptr %141, i64 0, i32 6
  %143 = load i32, ptr %142, align 8, !tbaa !214
  %144 = load i64, ptr %3, align 8
  %145 = and i64 %144, 65535
  %146 = icmp eq i64 %145, 14
  br i1 %146, label %147, label %149

147:                                              ; preds = %136
  %148 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #25
  br label %154

149:                                              ; preds = %136
  %150 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %151 = load i32, ptr %150, align 4
  %152 = lshr i32 %151, 16
  %153 = and i32 %152, 255
  br label %154

154:                                              ; preds = %149, %147
  %155 = phi i32 [ %148, %147 ], [ %153, %149 ]
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %156
  %158 = load i8, ptr %157, align 1, !tbaa !72
  %159 = icmp eq i8 %158, 9
  %160 = load i64, ptr %3, align 8
  %161 = and i64 %160, 65535
  %162 = icmp eq i64 %161, 14
  br i1 %159, label %163, label %171

163:                                              ; preds = %154
  br i1 %162, label %164, label %166

164:                                              ; preds = %163
  %165 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #25
  br label %179

166:                                              ; preds = %163
  %167 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %168 = load i32, ptr %167, align 4
  %169 = lshr i32 %168, 16
  %170 = and i32 %169, 255
  br label %179

171:                                              ; preds = %154
  br i1 %162, label %172, label %174

172:                                              ; preds = %171
  %173 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #25
  br label %179

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %176 = load i32, ptr %175, align 4
  %177 = lshr i32 %176, 16
  %178 = and i32 %177, 255
  br label %179

179:                                              ; preds = %172, %174, %164, %166
  %180 = phi i32 [ %165, %164 ], [ %170, %166 ], [ %173, %172 ], [ %178, %174 ]
  %181 = add i32 %180, -38
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %182
  %184 = load ptr, ptr %183, align 8, !tbaa !61
  %185 = getelementptr inbounds %struct.real_format, ptr %184, i64 0, i32 5
  %186 = load i32, ptr %185, align 4, !tbaa !181
  %187 = sub nsw i32 %143, %186
  %188 = tail call i32 @llvm.abs.i32(i32 %187, i1 false)
  %189 = zext i32 %188 to i64
  %190 = shl nuw nsw i64 %189, 1
  %191 = tail call i64 @tree_low_cst(ptr noundef %29, i32 noundef 0) #25
  %192 = sub nsw i64 0, %190
  %193 = icmp sgt i64 %191, %192
  %194 = icmp slt i64 %191, %190
  %195 = and i1 %193, %194
  br i1 %195, label %196, label %224

196:                                              ; preds = %179
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #25
  %197 = getelementptr inbounds %struct.tree_real_cst, ptr %28, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !72
  %199 = trunc i64 %191 to i32
  call void @real_ldexp(ptr noundef nonnull %6, ptr noundef %198, i32 noundef %199) #25
  %200 = call zeroext i8 @real_isinf(ptr noundef nonnull %6) #25
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %202, label %221

202:                                              ; preds = %196
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #25
  %203 = load i64, ptr %3, align 8
  %204 = and i64 %203, 65535
  %205 = icmp eq i64 %204, 14
  br i1 %205, label %206, label %208

206:                                              ; preds = %202
  %207 = call i32 @vector_type_mode(ptr noundef nonnull %3) #25
  br label %213

208:                                              ; preds = %202
  %209 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %210 = load i32, ptr %209, align 4
  %211 = lshr i32 %210, 16
  %212 = and i32 %211, 255
  br label %213

213:                                              ; preds = %208, %206
  %214 = phi i32 [ %207, %206 ], [ %212, %208 ]
  call void @real_value_truncate(ptr dead_on_unwind nonnull writable sret(%struct.real_value) align 8 %7, i32 noundef %214, ptr noundef nonnull byval(%struct.real_value) align 8 %6) #25
  %215 = call zeroext i8 @real_compare(i32 noundef 101, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %216 = icmp eq i8 %215, 0
  br i1 %216, label %219, label %217

217:                                              ; preds = %213
  %218 = call ptr @build_real(ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.real_value) align 8 %7) #25
  br label %219

219:                                              ; preds = %213, %217
  %220 = phi ptr [ %218, %217 ], [ undef, %213 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #25
  br label %221

221:                                              ; preds = %219, %196
  %222 = phi ptr [ undef, %196 ], [ %220, %219 ]
  %223 = phi i1 [ true, %196 ], [ %216, %219 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #25
  br label %224

224:                                              ; preds = %221, %179
  %225 = phi ptr [ undef, %179 ], [ %222, %221 ]
  %226 = phi i1 [ true, %179 ], [ %223, %221 ]
  br i1 %226, label %227, label %228

227:                                              ; preds = %17, %5, %84, %224, %93, %97, %9
  br label %228

228:                                              ; preds = %224, %227, %44
  %229 = phi ptr [ %45, %44 ], [ null, %227 ], [ %225, %224 ]
  ret ptr %229
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_frexp(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #14 !prof !60 {
  %5 = alloca %struct.real_value, align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %58, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp ne i64 %11, 9
  %13 = icmp eq ptr %2, null
  %14 = or i1 %13, %12
  br i1 %14, label %58, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !72
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %58 [
    i16 12, label %20
    i16 10, label %20
  ]

20:                                               ; preds = %15, %15
  %21 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %1) #25
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, 134283263
  %24 = icmp eq i64 %23, 24
  br i1 %24, label %25, label %58

25:                                               ; preds = %20
  %26 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef %0, ptr noundef %2) #25
  %27 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !72
  %29 = getelementptr inbounds %struct.tree_type, ptr %28, i64 0, i32 16
  %30 = load ptr, ptr %29, align 8, !tbaa !72
  %31 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %32 = icmp eq ptr %30, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.tree_real_cst, ptr %21, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !72
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 3
  switch i32 %37, label %50 [
    i32 0, label %38
    i32 3, label %40
    i32 2, label %40
    i32 1, label %42
  ]

38:                                               ; preds = %33
  %39 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !61
  br label %51

40:                                               ; preds = %33, %33
  %41 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %3, ptr noundef nonnull %21, ptr noundef %26) #25
  br label %58

42:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %35, i64 32, i1 false), !tbaa.struct !172
  %43 = load i32, ptr %5, align 8
  %44 = and i32 %43, 63
  store i32 %44, ptr %5, align 8
  %45 = tail call ptr @build_real(ptr noundef %3, ptr noundef nonnull byval(%struct.real_value) align 8 %5) #25
  %46 = load i32, ptr %35, align 8
  %47 = ashr i32 %46, 6
  %48 = sext i32 %47 to i64
  %49 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %48) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #25
  br label %51

50:                                               ; preds = %33
  unreachable

51:                                               ; preds = %42, %38
  %52 = phi ptr [ %45, %42 ], [ %21, %38 ]
  %53 = phi ptr [ %49, %42 ], [ %39, %38 ]
  %54 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 53, ptr noundef %3, ptr noundef %26, ptr noundef %53) #25
  %55 = load i64, ptr %54, align 8
  %56 = or i64 %55, 65536
  store i64 %56, ptr %54, align 8
  %57 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 52, ptr noundef %3, ptr noundef nonnull %54, ptr noundef %52) #25
  br label %58

58:                                               ; preds = %15, %4, %25, %40, %51, %20, %7
  %59 = phi ptr [ null, %15 ], [ null, %7 ], [ null, %20 ], [ %57, %51 ], [ %41, %40 ], [ null, %25 ], [ null, %4 ]
  ret ptr %59
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_modf(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #14 !prof !60 {
  %5 = alloca %struct.real_value, align 8
  %6 = alloca %struct.real_value, align 8
  %7 = icmp eq ptr %1, null
  br i1 %7, label %66, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp ne i64 %12, 9
  %14 = icmp eq ptr %2, null
  %15 = or i1 %14, %13
  br i1 %15, label %66, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !72
  %19 = load i64, ptr %18, align 8
  %20 = trunc i64 %19 to i16
  switch i16 %20, label %66 [
    i16 12, label %21
    i16 10, label %21
  ]

21:                                               ; preds = %16, %16
  %22 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %1) #25
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 134283263
  %25 = icmp eq i64 %24, 24
  br i1 %25, label %26, label %66

26:                                               ; preds = %21
  %27 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef %0, ptr noundef %2) #25
  %28 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !72
  %30 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 16
  %31 = load ptr, ptr %30, align 8, !tbaa !72
  %32 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 16
  %33 = load ptr, ptr %32, align 8, !tbaa !72
  %34 = icmp eq ptr %31, %33
  br i1 %34, label %35, label %66

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.tree_real_cst, ptr %22, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #25
  %38 = load i32, ptr %37, align 8
  %39 = and i32 %38, 3
  switch i32 %39, label %58 [
    i32 3, label %40
    i32 0, label %40
    i32 2, label %41
    i32 1, label %47
  ]

40:                                               ; preds = %35, %35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %37, i64 32, i1 false), !tbaa.struct !172
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %37, i64 32, i1 false)
  br label %59

41:                                               ; preds = %35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) @dconst0, i64 32, i1 false), !tbaa.struct !172
  %42 = load i32, ptr %37, align 8
  %43 = and i32 %42, 8
  %44 = load i32, ptr %6, align 8
  %45 = and i32 %44, -9
  %46 = or disjoint i32 %45, %43
  store i32 %46, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %37, i64 32, i1 false), !tbaa.struct !172
  br label %59

47:                                               ; preds = %35
  call void @real_trunc(ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull %37) #25
  %48 = call zeroext i8 @real_arithmetic(ptr noundef nonnull %6, i32 noundef 64, ptr noundef nonnull %37, ptr noundef nonnull %5) #25
  %49 = load i32, ptr %37, align 8
  %50 = and i32 %49, 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %47
  %53 = load i32, ptr %6, align 8
  %54 = and i32 %53, 3
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = or i32 %53, 8
  store i32 %57, ptr %6, align 8
  br label %59

58:                                               ; preds = %35
  unreachable

59:                                               ; preds = %47, %52, %56, %41, %40
  %60 = call ptr @build_real(ptr noundef %3, ptr noundef nonnull byval(%struct.real_value) align 8 %5) #25
  %61 = call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 53, ptr noundef %3, ptr noundef %27, ptr noundef %60) #25
  %62 = load i64, ptr %61, align 8
  %63 = or i64 %62, 65536
  store i64 %63, ptr %61, align 8
  %64 = call ptr @build_real(ptr noundef %3, ptr noundef nonnull byval(%struct.real_value) align 8 %6) #25
  %65 = call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 52, ptr noundef %3, ptr noundef nonnull %61, ptr noundef %64) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #25
  br label %66

66:                                               ; preds = %16, %4, %26, %21, %8, %59
  %67 = phi ptr [ %65, %59 ], [ null, %16 ], [ null, %8 ], [ null, %21 ], [ null, %26 ], [ null, %4 ]
  ret ptr %67
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_bzero(i32 noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #14 !prof !60 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %33 [
    i16 12, label %11
    i16 10, label %11
  ]

11:                                               ; preds = %6, %6
  %12 = icmp eq ptr %2, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 65534
  %19 = icmp eq i32 %18, 6
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = and i32 %17, 65535
  %22 = icmp ne i32 %21, 8
  br label %23

23:                                               ; preds = %11, %13, %20
  %24 = phi i1 [ true, %11 ], [ %22, %20 ], [ false, %13 ]
  %25 = icmp eq i8 %3, 0
  %26 = or i1 %25, %24
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !61
  %29 = load ptr, ptr @sizetype_tab, align 16, !tbaa !61
  %30 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %29, ptr noundef %2) #25
  %31 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !61
  %32 = tail call fastcc ptr @fold_builtin_memset(i32 noundef %0, ptr noundef nonnull %1, ptr noundef %28, ptr noundef %30, ptr noundef %31, i8 noundef zeroext %3)
  br label %33

33:                                               ; preds = %6, %4, %23, %27
  %34 = phi ptr [ %32, %27 ], [ null, %23 ], [ null, %6 ], [ null, %4 ]
  ret ptr %34
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_strstr(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #14 !prof !60 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %53, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %53 [
    i16 12, label %11
    i16 10, label %11
  ]

11:                                               ; preds = %6, %6
  %12 = icmp eq ptr %2, null
  br i1 %12, label %53, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i16
  switch i16 %17, label %53 [
    i16 12, label %18
    i16 10, label %18
  ]

18:                                               ; preds = %13, %13
  %19 = tail call fastcc ptr @c_getstr(ptr noundef nonnull %2)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %53, label %21

21:                                               ; preds = %18
  %22 = tail call fastcc ptr @c_getstr(ptr noundef nonnull %1)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %37, label %24

24:                                               ; preds = %21
  %25 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) %19)
  %26 = icmp eq ptr %25, null
  %27 = load ptr, ptr %7, align 8, !tbaa !72
  br i1 %26, label %28, label %30

28:                                               ; preds = %24
  %29 = tail call ptr @build_int_cst(ptr noundef %27, i64 noundef 0) #25
  br label %53

30:                                               ; preds = %24
  %31 = ptrtoint ptr %25 to i64
  %32 = ptrtoint ptr %22 to i64
  %33 = sub i64 %31, %32
  %34 = tail call ptr @size_int_kind(i64 noundef %33, i32 noundef 0) #25
  %35 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 66, ptr noundef %27, ptr noundef nonnull %1, ptr noundef %34) #25
  %36 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %3, ptr noundef %35) #25
  br label %53

37:                                               ; preds = %21
  %38 = load i8, ptr %19, align 1, !tbaa !72
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %3, ptr noundef nonnull %1) #25
  br label %53

42:                                               ; preds = %37
  %43 = getelementptr inbounds i8, ptr %19, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !72
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %42
  %47 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 339), align 8, !tbaa !61
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = sext i8 %38 to i64
  %51 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %50) #25
  %52 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %47, i32 noundef 2, ptr noundef nonnull %1, ptr noundef %51)
  br label %53

53:                                               ; preds = %18, %11, %13, %6, %4, %40, %49, %30, %28, %42, %46
  %54 = phi ptr [ null, %13 ], [ null, %6 ], [ %41, %40 ], [ %52, %49 ], [ %29, %28 ], [ %36, %30 ], [ null, %42 ], [ null, %46 ], [ null, %4 ], [ null, %11 ], [ null, %18 ]
  ret ptr %54
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_strcat(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #14 !prof !60 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %71, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %71 [
    i16 12, label %10
    i16 10, label %10
  ]

10:                                               ; preds = %5, %5
  %11 = icmp eq ptr %2, null
  br i1 %11, label %71, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i16
  switch i16 %16, label %71 [
    i16 12, label %17
    i16 10, label %17
  ]

17:                                               ; preds = %12, %12
  %18 = tail call fastcc ptr @c_getstr(ptr noundef nonnull %2)
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i8, ptr %18, align 1, !tbaa !72
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %71, label %23

23:                                               ; preds = %20, %17
  %24 = tail call zeroext i8 @optimize_insn_for_speed_p() #25
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %71, label %26

26:                                               ; preds = %23
  %27 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 345), align 8, !tbaa !61
  %28 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 341), align 8, !tbaa !61
  %29 = icmp ne ptr %27, null
  %30 = icmp ne ptr %28, null
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %32, label %71

32:                                               ; preds = %26
  %33 = tail call ptr @c_strlen(ptr noundef nonnull %2, i32 noundef 1)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %71, label %35

35:                                               ; preds = %32
  %36 = load i64, ptr %33, align 8
  %37 = and i64 %36, 65536
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %71

39:                                               ; preds = %35
  %40 = load i64, ptr %1, align 8
  %41 = and i64 %40, 262144
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = trunc i64 %40 to i16
  switch i16 %44, label %48 [
    i16 34, label %50
    i16 32, label %45
  ]

45:                                               ; preds = %43
  %46 = and i64 %40, 67108864
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45, %43, %39
  %49 = tail call ptr @save_expr(ptr noundef nonnull %1) #25
  br label %50

50:                                               ; preds = %43, %45, %48
  %51 = phi ptr [ %49, %48 ], [ %1, %43 ], [ %1, %45 ]
  %52 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %27, i32 noundef 1, ptr noundef %51)
  %53 = getelementptr inbounds %struct.tree_common, ptr %51, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !72
  %55 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 66, ptr noundef %54, ptr noundef %51, ptr noundef %52) #25
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 262144
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = trunc i64 %56 to i16
  switch i16 %60, label %64 [
    i16 34, label %66
    i16 32, label %61
  ]

61:                                               ; preds = %59
  %62 = and i64 %56, 67108864
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %61, %59, %50
  %65 = tail call ptr @save_expr(ptr noundef nonnull %55) #25
  br label %66

66:                                               ; preds = %59, %61, %64
  %67 = phi ptr [ %65, %64 ], [ %55, %59 ], [ %55, %61 ]
  %68 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %28, i32 noundef 2, ptr noundef %67, ptr noundef nonnull %2)
  %69 = load ptr, ptr %53, align 8, !tbaa !72
  %70 = tail call ptr @build2_stat(i32 noundef 52, ptr noundef %69, ptr noundef %68, ptr noundef %51) #25
  br label %71

71:                                               ; preds = %23, %20, %10, %12, %5, %3, %35, %32, %26, %66
  %72 = phi ptr [ null, %12 ], [ null, %5 ], [ %70, %66 ], [ null, %26 ], [ null, %32 ], [ null, %35 ], [ null, %3 ], [ null, %10 ], [ %1, %20 ], [ null, %23 ]
  ret ptr %72
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_strspn(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #14 !prof !60 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %38, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %38 [
    i16 12, label %10
    i16 10, label %10
  ]

10:                                               ; preds = %5, %5
  %11 = icmp eq ptr %2, null
  br i1 %11, label %38, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i16
  switch i16 %16, label %38 [
    i16 12, label %17
    i16 10, label %17
  ]

17:                                               ; preds = %12, %12
  %18 = tail call fastcc ptr @c_getstr(ptr noundef nonnull %1)
  %19 = tail call fastcc ptr @c_getstr(ptr noundef nonnull %2)
  %20 = icmp ne ptr %18, null
  %21 = icmp ne ptr %19, null
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = tail call i64 @strspn(ptr noundef nonnull %18, ptr noundef nonnull %19)
  %25 = tail call ptr @size_int_kind(i64 noundef %24, i32 noundef 0) #25
  br label %38

26:                                               ; preds = %17
  br i1 %20, label %27, label %30

27:                                               ; preds = %26
  %28 = load i8, ptr %18, align 1, !tbaa !72
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27, %26
  br i1 %21, label %31, label %38

31:                                               ; preds = %30
  %32 = load i8, ptr %19, align 1, !tbaa !72
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31, %27
  %35 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !61
  %36 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !61
  %37 = tail call ptr @omit_two_operands_loc(i32 noundef %0, ptr noundef %35, ptr noundef %36, ptr noundef nonnull %1, ptr noundef nonnull %2) #25
  br label %38

38:                                               ; preds = %12, %5, %10, %3, %23, %34, %31, %30
  %39 = phi ptr [ null, %12 ], [ null, %5 ], [ %25, %23 ], [ %37, %34 ], [ null, %31 ], [ null, %30 ], [ null, %3 ], [ null, %10 ]
  ret ptr %39
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_strcspn(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #14 !prof !60 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %43, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %43 [
    i16 12, label %10
    i16 10, label %10
  ]

10:                                               ; preds = %5, %5
  %11 = icmp eq ptr %2, null
  br i1 %11, label %43, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i16
  switch i16 %16, label %43 [
    i16 12, label %17
    i16 10, label %17
  ]

17:                                               ; preds = %12, %12
  %18 = tail call fastcc ptr @c_getstr(ptr noundef nonnull %1)
  %19 = tail call fastcc ptr @c_getstr(ptr noundef nonnull %2)
  %20 = icmp ne ptr %18, null
  %21 = icmp ne ptr %19, null
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = tail call i64 @strcspn(ptr noundef nonnull %18, ptr noundef nonnull %19)
  %25 = tail call ptr @size_int_kind(i64 noundef %24, i32 noundef 0) #25
  br label %43

26:                                               ; preds = %17
  br i1 %20, label %27, label %34

27:                                               ; preds = %26
  %28 = load i8, ptr %18, align 1, !tbaa !72
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !61
  %32 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !61
  %33 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %31, ptr noundef %32, ptr noundef nonnull %2) #25
  br label %43

34:                                               ; preds = %27, %26
  br i1 %21, label %35, label %43

35:                                               ; preds = %34
  %36 = load i8, ptr %19, align 1, !tbaa !72
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 345), align 8, !tbaa !61
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %39, i32 noundef 1, ptr noundef nonnull %1)
  br label %43

43:                                               ; preds = %10, %12, %5, %3, %23, %30, %38, %41, %35, %34
  %44 = phi ptr [ null, %12 ], [ null, %5 ], [ %25, %23 ], [ %33, %30 ], [ %42, %41 ], [ null, %38 ], [ null, %35 ], [ null, %34 ], [ null, %3 ], [ null, %10 ]
  ret ptr %44
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_strchr(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #14 !prof !60 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %54, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %54 [
    i16 12, label %11
    i16 10, label %11
  ]

11:                                               ; preds = %6, %6
  %12 = icmp eq ptr %2, null
  br i1 %12, label %54, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 65534
  %19 = icmp ne i32 %18, 6
  %20 = and i32 %17, 65535
  %21 = icmp ne i32 %20, 8
  %22 = and i1 %19, %21
  br i1 %22, label %54, label %23

23:                                               ; preds = %13
  %24 = load i64, ptr %2, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 23
  br i1 %26, label %27, label %54

27:                                               ; preds = %23
  %28 = tail call fastcc ptr @c_getstr(ptr noundef nonnull %1)
  %29 = icmp eq ptr %28, null
  br i1 %29, label %54, label %30

30:                                               ; preds = %27
  %31 = tail call i32 @host_integerp(ptr noundef nonnull %2, i32 noundef 1) #25
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = tail call i64 @tree_low_cst(ptr noundef nonnull %2, i32 noundef 1) #25
  %35 = trunc i64 %34 to i32
  %36 = shl i32 %35, 24
  %37 = ashr exact i32 %36, 24
  br label %38

38:                                               ; preds = %30, %33
  %39 = phi i32 [ 0, %30 ], [ %37, %33 ]
  br i1 %32, label %54, label %40

40:                                               ; preds = %38
  %41 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %28, i32 noundef %39)
  %42 = icmp eq ptr %41, null
  %43 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !72
  br i1 %42, label %45, label %47

45:                                               ; preds = %40
  %46 = tail call ptr @build_int_cst(ptr noundef %44, i64 noundef 0) #25
  br label %54

47:                                               ; preds = %40
  %48 = ptrtoint ptr %41 to i64
  %49 = ptrtoint ptr %28 to i64
  %50 = sub i64 %48, %49
  %51 = tail call ptr @size_int_kind(i64 noundef %50, i32 noundef 0) #25
  %52 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 66, ptr noundef %44, ptr noundef nonnull %1, ptr noundef %51) #25
  %53 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %3, ptr noundef %52) #25
  br label %54

54:                                               ; preds = %13, %6, %11, %4, %45, %47, %38, %23, %27
  %55 = phi ptr [ null, %6 ], [ null, %23 ], [ null, %27 ], [ %46, %45 ], [ %53, %47 ], [ null, %38 ], [ null, %4 ], [ null, %11 ], [ null, %13 ]
  ret ptr %55
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_strrchr(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #14 !prof !60 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %61, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %61 [
    i16 12, label %11
    i16 10, label %11
  ]

11:                                               ; preds = %6, %6
  %12 = icmp eq ptr %2, null
  br i1 %12, label %61, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 65534
  %19 = icmp ne i32 %18, 6
  %20 = and i32 %17, 65535
  %21 = icmp ne i32 %20, 8
  %22 = and i1 %19, %21
  br i1 %22, label %61, label %23

23:                                               ; preds = %13
  %24 = load i64, ptr %2, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 23
  br i1 %26, label %27, label %61

27:                                               ; preds = %23
  %28 = tail call fastcc ptr @c_getstr(ptr noundef nonnull %1)
  %29 = icmp eq ptr %28, null
  br i1 %29, label %53, label %30

30:                                               ; preds = %27
  %31 = tail call i32 @host_integerp(ptr noundef nonnull %2, i32 noundef 1) #25
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = tail call i64 @tree_low_cst(ptr noundef nonnull %2, i32 noundef 1) #25
  %35 = trunc i64 %34 to i32
  %36 = shl i32 %35, 24
  %37 = ashr exact i32 %36, 24
  br label %38

38:                                               ; preds = %30, %33
  %39 = phi i32 [ 0, %30 ], [ %37, %33 ]
  br i1 %32, label %61, label %40

40:                                               ; preds = %38
  %41 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %28, i32 noundef %39)
  %42 = icmp eq ptr %41, null
  %43 = load ptr, ptr %7, align 8, !tbaa !72
  br i1 %42, label %44, label %46

44:                                               ; preds = %40
  %45 = tail call ptr @build_int_cst(ptr noundef %43, i64 noundef 0) #25
  br label %61

46:                                               ; preds = %40
  %47 = ptrtoint ptr %41 to i64
  %48 = ptrtoint ptr %28 to i64
  %49 = sub i64 %47, %48
  %50 = tail call ptr @size_int_kind(i64 noundef %49, i32 noundef 0) #25
  %51 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 66, ptr noundef %43, ptr noundef nonnull %1, ptr noundef %50) #25
  %52 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %3, ptr noundef %51) #25
  br label %61

53:                                               ; preds = %27
  %54 = tail call i32 @integer_zerop(ptr noundef nonnull %2) #25
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 339), align 8, !tbaa !61
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %57, i32 noundef 2, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %61

61:                                               ; preds = %11, %13, %6, %4, %44, %46, %38, %59, %23, %53, %56
  %62 = phi ptr [ null, %6 ], [ %60, %59 ], [ null, %23 ], [ null, %53 ], [ null, %56 ], [ %45, %44 ], [ %52, %46 ], [ null, %38 ], [ null, %4 ], [ null, %13 ], [ null, %11 ]
  ret ptr %62
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_stpcpy(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3) unnamed_addr #14 !prof !60 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %62, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %62 [
    i16 12, label %11
    i16 10, label %11
  ]

11:                                               ; preds = %6, %6
  %12 = icmp eq ptr %3, null
  br i1 %12, label %62, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i16
  switch i16 %17, label %62 [
    i16 12, label %18
    i16 10, label %18
  ]

18:                                               ; preds = %13, %13
  %19 = tail call ptr @c_strlen(ptr noundef nonnull %3, i32 noundef 1)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %62, label %21

21:                                               ; preds = %18
  %22 = load i64, ptr %19, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 23
  br i1 %24, label %25, label %62

25:                                               ; preds = %21
  %26 = load ptr, ptr @cfun, align 8, !tbaa !61
  %27 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %26) #25
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = tail call i32 @integer_zerop(ptr noundef nonnull %19) #25
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %62, label %32

32:                                               ; preds = %29, %25
  %33 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 330), align 16, !tbaa !61
  %34 = icmp eq ptr %33, null
  br i1 %34, label %62, label %35

35:                                               ; preds = %32
  %36 = tail call ptr @size_int_kind(i64 noundef 1, i32 noundef 1) #25
  %37 = tail call ptr @size_binop_loc(i32 noundef %0, i32 noundef 63, ptr noundef nonnull %19, ptr noundef %36) #25
  %38 = load i64, ptr %2, align 8
  %39 = and i64 %38, 262144
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = trunc i64 %38 to i16
  switch i16 %42, label %46 [
    i16 34, label %48
    i16 32, label %43
  ]

43:                                               ; preds = %41
  %44 = and i64 %38, 67108864
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43, %41, %35
  %47 = tail call ptr @save_expr(ptr noundef nonnull %2) #25
  br label %48

48:                                               ; preds = %41, %43, %46
  %49 = phi ptr [ %47, %46 ], [ %2, %41 ], [ %2, %43 ]
  %50 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %33, i32 noundef 3, ptr noundef %49, ptr noundef nonnull %3, ptr noundef %37)
  %51 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !72
  %53 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !72
  %55 = load ptr, ptr @sizetype_tab, align 16, !tbaa !61
  %56 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %55, ptr noundef nonnull %19) #25
  %57 = getelementptr inbounds %struct.tree_common, ptr %49, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !72
  %59 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 66, ptr noundef %58, ptr noundef %49, ptr noundef %56) #25
  %60 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %54, ptr noundef %59) #25
  %61 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %54, ptr noundef %60, ptr noundef %50) #25
  br label %62

62:                                               ; preds = %29, %18, %11, %13, %6, %4, %32, %21, %48
  %63 = phi ptr [ %61, %48 ], [ null, %13 ], [ null, %6 ], [ null, %21 ], [ null, %32 ], [ null, %4 ], [ null, %11 ], [ null, %18 ], [ null, %29 ]
  ret ptr %63
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_strcmp(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #14 !prof !60 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %63, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !72
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %63 [
    i16 12, label %10
    i16 10, label %10
  ]

10:                                               ; preds = %5, %5
  %11 = icmp eq ptr %2, null
  br i1 %11, label %63, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  %15 = load i64, ptr %14, align 8
  %16 = trunc i64 %15 to i16
  switch i16 %16, label %63 [
    i16 12, label %17
    i16 10, label %17
  ]

17:                                               ; preds = %12, %12
  %18 = tail call i32 @operand_equal_p(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 0) #25
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !61
  br label %63

22:                                               ; preds = %17
  %23 = tail call fastcc ptr @c_getstr(ptr noundef nonnull %1)
  %24 = tail call fastcc ptr @c_getstr(ptr noundef nonnull %2)
  %25 = icmp ne ptr %23, null
  %26 = icmp ne ptr %24, null
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) %24)
  %30 = icmp slt i32 %29, 0
  %31 = icmp eq i32 %29, 0
  %32 = select i1 %31, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14)
  %33 = select i1 %30, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 15), ptr %32
  %34 = load ptr, ptr %33, align 8, !tbaa !61
  br label %63

35:                                               ; preds = %22
  br i1 %26, label %36, label %48

36:                                               ; preds = %35
  %37 = load i8, ptr %24, align 1, !tbaa !72
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 2), align 16, !tbaa !61
  %41 = tail call ptr @build_qualified_type(ptr noundef %40, i32 noundef 1) #25
  %42 = load i32, ptr @ptr_mode, align 4, !tbaa !76
  %43 = tail call ptr @build_pointer_type_for_mode(ptr noundef %41, i32 noundef %42, i8 noundef zeroext 1) #25
  %44 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %45 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %43, ptr noundef nonnull %1) #25
  %46 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %41, ptr noundef %45) #25
  %47 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %44, ptr noundef %46) #25
  br label %63

48:                                               ; preds = %36, %35
  br i1 %25, label %49, label %63

49:                                               ; preds = %48
  %50 = load i8, ptr %23, align 1, !tbaa !72
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %49
  %53 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 2), align 16, !tbaa !61
  %54 = tail call ptr @build_qualified_type(ptr noundef %53, i32 noundef 1) #25
  %55 = load i32, ptr @ptr_mode, align 4, !tbaa !76
  %56 = tail call ptr @build_pointer_type_for_mode(ptr noundef %54, i32 noundef %55, i8 noundef zeroext 1) #25
  %57 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %58 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %56, ptr noundef nonnull %2) #25
  %59 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %54, ptr noundef %58) #25
  %60 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %57, ptr noundef %59) #25
  %61 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %62 = tail call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 79, ptr noundef %61, ptr noundef %60) #25
  br label %63

63:                                               ; preds = %12, %5, %10, %3, %48, %49, %52, %39, %28, %20
  %64 = phi ptr [ %21, %20 ], [ %34, %28 ], [ %47, %39 ], [ %62, %52 ], [ null, %12 ], [ null, %5 ], [ null, %49 ], [ null, %48 ], [ null, %3 ], [ null, %10 ]
  ret ptr %64
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_strpbrk(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #14 !prof !60 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %55, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %55 [
    i16 12, label %11
    i16 10, label %11
  ]

11:                                               ; preds = %6, %6
  %12 = icmp eq ptr %2, null
  br i1 %12, label %55, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i16
  switch i16 %17, label %55 [
    i16 12, label %18
    i16 10, label %18
  ]

18:                                               ; preds = %13, %13
  %19 = tail call fastcc ptr @c_getstr(ptr noundef nonnull %2)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %55, label %21

21:                                               ; preds = %18
  %22 = tail call fastcc ptr @c_getstr(ptr noundef nonnull %1)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %37, label %24

24:                                               ; preds = %21
  %25 = tail call ptr @strpbrk(ptr noundef nonnull %22, ptr noundef nonnull %19)
  %26 = icmp eq ptr %25, null
  %27 = load ptr, ptr %7, align 8, !tbaa !72
  br i1 %26, label %28, label %30

28:                                               ; preds = %24
  %29 = tail call ptr @build_int_cst(ptr noundef %27, i64 noundef 0) #25
  br label %55

30:                                               ; preds = %24
  %31 = ptrtoint ptr %25 to i64
  %32 = ptrtoint ptr %22 to i64
  %33 = sub i64 %31, %32
  %34 = tail call ptr @size_int_kind(i64 noundef %33, i32 noundef 0) #25
  %35 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 66, ptr noundef %27, ptr noundef nonnull %1, ptr noundef %34) #25
  %36 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %3, ptr noundef %35) #25
  br label %55

37:                                               ; preds = %21
  %38 = load i8, ptr %19, align 1, !tbaa !72
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load ptr, ptr %7, align 8, !tbaa !72
  %42 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !61
  %43 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %41, ptr noundef %42, ptr noundef nonnull %1) #25
  br label %55

44:                                               ; preds = %37
  %45 = getelementptr inbounds i8, ptr %19, i64 1
  %46 = load i8, ptr %45, align 1, !tbaa !72
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 339), align 8, !tbaa !61
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = sext i8 %38 to i64
  %53 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %52) #25
  %54 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %49, i32 noundef 2, ptr noundef nonnull %1, ptr noundef %53)
  br label %55

55:                                               ; preds = %18, %11, %13, %6, %4, %40, %51, %30, %28, %44, %48
  %56 = phi ptr [ null, %13 ], [ null, %6 ], [ %43, %40 ], [ %54, %51 ], [ %29, %28 ], [ %36, %30 ], [ null, %44 ], [ null, %48 ], [ null, %4 ], [ null, %11 ], [ null, %18 ]
  ret ptr %56
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_powi(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #14 !prof !60 {
  %5 = alloca %struct.real_value, align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %69, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp ne i64 %11, 9
  %13 = icmp eq ptr %2, null
  %14 = or i1 %13, %12
  br i1 %14, label %69, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !72
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = and i32 %19, 65534
  %21 = icmp ne i32 %20, 6
  %22 = and i32 %19, 65535
  %23 = icmp ne i32 %22, 8
  %24 = and i1 %21, %23
  br i1 %24, label %69, label %25

25:                                               ; preds = %15
  %26 = tail call i32 @real_onep(ptr noundef nonnull %1) #25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = tail call ptr @build_real(ptr noundef %3, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst1) #25
  %30 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %3, ptr noundef %29, ptr noundef %2) #25
  br label %69

31:                                               ; preds = %25
  %32 = tail call i32 @host_integerp(ptr noundef %2, i32 noundef 0) #25
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %68, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.tree_int_cst, ptr %2, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !72
  %37 = load i64, ptr %1, align 8
  %38 = and i64 %37, 134283263
  %39 = icmp eq i64 %38, 24
  br i1 %39, label %40, label %57

40:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #25
  %41 = getelementptr inbounds %struct.tree_real_cst, ptr %1, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %42, i64 32, i1 false), !tbaa.struct !172
  %43 = load i64, ptr %3, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 14
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = tail call i32 @vector_type_mode(ptr noundef nonnull %3) #25
  br label %53

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = lshr i32 %50, 16
  %52 = and i32 %51, 255
  br label %53

53:                                               ; preds = %48, %46
  %54 = phi i32 [ %47, %46 ], [ %52, %48 ]
  %55 = call zeroext i8 @real_powi(ptr noundef nonnull %5, i32 noundef %54, ptr noundef nonnull %5, i64 noundef %36) #25
  %56 = call ptr @build_real(ptr noundef nonnull %3, ptr noundef nonnull byval(%struct.real_value) align 8 %5) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #25
  br label %65

57:                                               ; preds = %34
  switch i64 %36, label %64 [
    i64 0, label %58
    i64 1, label %65
    i64 -1, label %61
  ]

58:                                               ; preds = %57
  %59 = tail call ptr @build_real(ptr noundef %3, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst1) #25
  %60 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %3, ptr noundef %59, ptr noundef nonnull %1) #25
  br label %65

61:                                               ; preds = %57
  %62 = tail call ptr @build_real(ptr noundef %3, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst1) #25
  %63 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 75, ptr noundef %3, ptr noundef %62, ptr noundef nonnull %1) #25
  br label %65

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %57, %64, %61, %58, %53
  %66 = phi ptr [ %60, %58 ], [ %63, %61 ], [ undef, %64 ], [ %56, %53 ], [ %1, %57 ]
  %67 = phi i1 [ false, %58 ], [ false, %61 ], [ true, %64 ], [ false, %53 ], [ false, %57 ]
  br i1 %67, label %68, label %69

68:                                               ; preds = %65, %31
  br label %69

69:                                               ; preds = %15, %4, %65, %7, %68, %28
  %70 = phi ptr [ %30, %28 ], [ %66, %65 ], [ null, %68 ], [ null, %7 ], [ null, %4 ], [ null, %15 ]
  ret ptr %70
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_copysign(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #14 !prof !60 {
  %6 = alloca %struct.real_value, align 8
  %7 = alloca %struct.real_value, align 8
  %8 = icmp eq ptr %2, null
  br i1 %8, label %56, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp ne i64 %13, 9
  %15 = icmp eq ptr %3, null
  %16 = or i1 %15, %14
  br i1 %16, label %56, label %17

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !72
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 9
  br i1 %22, label %23, label %56

23:                                               ; preds = %17
  %24 = tail call i32 @operand_equal_p(ptr noundef nonnull %2, ptr noundef %3, i32 noundef 0) #25
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %4, ptr noundef nonnull %2) #25
  br label %56

28:                                               ; preds = %23
  %29 = load i64, ptr %2, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 24
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load i64, ptr %3, align 8
  %34 = and i64 %29, 134217728
  %35 = icmp eq i64 %34, 0
  %36 = and i64 %33, 134283263
  %37 = icmp eq i64 %36, 24
  %38 = and i1 %35, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #25
  %40 = getelementptr inbounds %struct.tree_real_cst, ptr %2, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %41, i64 32, i1 false), !tbaa.struct !172
  %42 = getelementptr inbounds %struct.tree_real_cst, ptr %3, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %43, i64 32, i1 false), !tbaa.struct !172
  call void @real_copysign(ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %44 = call ptr @build_real(ptr noundef %4, ptr noundef nonnull byval(%struct.real_value) align 8 %6) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #25
  br label %56

45:                                               ; preds = %32, %28
  %46 = tail call zeroext i8 @tree_expr_nonnegative_p(ptr noundef %3) #25
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = tail call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 82, ptr noundef %4, ptr noundef nonnull %2) #25
  %50 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %4, ptr noundef %49, ptr noundef %3) #25
  br label %56

51:                                               ; preds = %45
  %52 = tail call ptr @fold_strip_sign_ops(ptr noundef nonnull %2) #25
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef %1, i32 noundef 2, ptr noundef nonnull %52, ptr noundef %3)
  br label %56

56:                                               ; preds = %5, %51, %9, %17, %54, %48, %39, %26
  %57 = phi ptr [ %27, %26 ], [ %50, %48 ], [ %55, %54 ], [ %44, %39 ], [ null, %17 ], [ null, %9 ], [ null, %51 ], [ null, %5 ]
  ret ptr %57
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_unordered_cmp(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #14 !prof !60 {
  %7 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  %11 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !72
  %13 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !72
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
  %42 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %41, ptr noundef %2) #25
  %43 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %41, ptr noundef %3) #25
  %44 = icmp eq i32 %4, 103
  %45 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !72
  %47 = load i64, ptr %46, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 14
  br i1 %44, label %50, label %335

50:                                               ; preds = %40
  br i1 %49, label %51, label %53

51:                                               ; preds = %50
  %52 = tail call i32 @vector_type_mode(ptr noundef nonnull %46) #25
  br label %58

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = lshr i32 %55, 16
  %57 = and i32 %56, 255
  br label %58

58:                                               ; preds = %53, %51
  %59 = phi i32 [ %52, %51 ], [ %57, %53 ]
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %60
  %62 = load i8, ptr %61, align 1, !tbaa !72
  %63 = icmp eq i8 %62, 8
  br i1 %63, label %118, label %64

64:                                               ; preds = %58
  %65 = load ptr, ptr %45, align 8, !tbaa !72
  %66 = load i64, ptr %65, align 8
  %67 = and i64 %66, 65535
  %68 = icmp eq i64 %67, 14
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = tail call i32 @vector_type_mode(ptr noundef nonnull %65) #25
  br label %76

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.tree_type, ptr %65, i64 0, i32 6
  %73 = load i32, ptr %72, align 4
  %74 = lshr i32 %73, 16
  %75 = and i32 %74, 255
  br label %76

76:                                               ; preds = %71, %69
  %77 = phi i32 [ %70, %69 ], [ %75, %71 ]
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !72
  %81 = icmp eq i8 %80, 9
  br i1 %81, label %118, label %82

82:                                               ; preds = %76
  %83 = load ptr, ptr %45, align 8, !tbaa !72
  %84 = load i64, ptr %83, align 8
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 14
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = tail call i32 @vector_type_mode(ptr noundef nonnull %83) #25
  br label %94

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.tree_type, ptr %83, i64 0, i32 6
  %91 = load i32, ptr %90, align 4
  %92 = lshr i32 %91, 16
  %93 = and i32 %92, 255
  br label %94

94:                                               ; preds = %89, %87
  %95 = phi i32 [ %88, %87 ], [ %93, %89 ]
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %96
  %98 = load i8, ptr %97, align 1, !tbaa !72
  %99 = icmp eq i8 %98, 11
  br i1 %99, label %118, label %100

100:                                              ; preds = %94
  %101 = load ptr, ptr %45, align 8, !tbaa !72
  %102 = load i64, ptr %101, align 8
  %103 = and i64 %102, 65535
  %104 = icmp eq i64 %103, 14
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = tail call i32 @vector_type_mode(ptr noundef nonnull %101) #25
  br label %112

107:                                              ; preds = %100
  %108 = getelementptr inbounds %struct.tree_type, ptr %101, i64 0, i32 6
  %109 = load i32, ptr %108, align 4
  %110 = lshr i32 %109, 16
  %111 = and i32 %110, 255
  br label %112

112:                                              ; preds = %107, %105
  %113 = phi i32 [ %106, %105 ], [ %111, %107 ]
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !72
  %117 = icmp eq i8 %116, 17
  br i1 %117, label %118, label %330

118:                                              ; preds = %112, %94, %76, %58
  %119 = load ptr, ptr %45, align 8, !tbaa !72
  %120 = load i64, ptr %119, align 8
  %121 = and i64 %120, 65535
  %122 = icmp eq i64 %121, 14
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = tail call i32 @vector_type_mode(ptr noundef nonnull %119) #25
  br label %130

125:                                              ; preds = %118
  %126 = getelementptr inbounds %struct.tree_type, ptr %119, i64 0, i32 6
  %127 = load i32, ptr %126, align 4
  %128 = lshr i32 %127, 16
  %129 = and i32 %128, 255
  br label %130

130:                                              ; preds = %125, %123
  %131 = phi i32 [ %124, %123 ], [ %129, %125 ]
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %132
  %134 = load i8, ptr %133, align 1, !tbaa !72
  %135 = icmp eq i8 %134, 8
  br i1 %135, label %154, label %136

136:                                              ; preds = %130
  %137 = load ptr, ptr %45, align 8, !tbaa !72
  %138 = load i64, ptr %137, align 8
  %139 = and i64 %138, 65535
  %140 = icmp eq i64 %139, 14
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = tail call i32 @vector_type_mode(ptr noundef nonnull %137) #25
  br label %148

143:                                              ; preds = %136
  %144 = getelementptr inbounds %struct.tree_type, ptr %137, i64 0, i32 6
  %145 = load i32, ptr %144, align 4
  %146 = lshr i32 %145, 16
  %147 = and i32 %146, 255
  br label %148

148:                                              ; preds = %143, %141
  %149 = phi i32 [ %142, %141 ], [ %147, %143 ]
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %150
  %152 = load i8, ptr %151, align 1, !tbaa !72
  %153 = icmp eq i8 %152, 9
  br i1 %153, label %154, label %166

154:                                              ; preds = %148, %130
  %155 = load ptr, ptr %45, align 8, !tbaa !72
  %156 = load i64, ptr %155, align 8
  %157 = and i64 %156, 65535
  %158 = icmp eq i64 %157, 14
  br i1 %158, label %159, label %161

159:                                              ; preds = %154
  %160 = tail call i32 @vector_type_mode(ptr noundef nonnull %155) #25
  br label %184

161:                                              ; preds = %154
  %162 = getelementptr inbounds %struct.tree_type, ptr %155, i64 0, i32 6
  %163 = load i32, ptr %162, align 4
  %164 = lshr i32 %163, 16
  %165 = and i32 %164, 255
  br label %184

166:                                              ; preds = %148
  %167 = load ptr, ptr %45, align 8, !tbaa !72
  %168 = load i64, ptr %167, align 8
  %169 = and i64 %168, 65535
  %170 = icmp eq i64 %169, 14
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = tail call i32 @vector_type_mode(ptr noundef nonnull %167) #25
  br label %178

173:                                              ; preds = %166
  %174 = getelementptr inbounds %struct.tree_type, ptr %167, i64 0, i32 6
  %175 = load i32, ptr %174, align 4
  %176 = lshr i32 %175, 16
  %177 = and i32 %176, 255
  br label %178

178:                                              ; preds = %173, %171
  %179 = phi i32 [ %172, %171 ], [ %177, %173 ]
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %180
  %182 = load i8, ptr %181, align 1, !tbaa !72
  %183 = zext i8 %182 to i32
  br label %184

184:                                              ; preds = %159, %161, %178
  %185 = phi i32 [ %183, %178 ], [ %160, %159 ], [ %165, %161 ]
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %186
  %188 = load i8, ptr %187, align 1, !tbaa !72
  %189 = icmp eq i8 %188, 9
  %190 = load ptr, ptr %45, align 8, !tbaa !72
  %191 = load i64, ptr %190, align 8
  %192 = and i64 %191, 65535
  %193 = icmp eq i64 %192, 14
  br i1 %189, label %194, label %256

194:                                              ; preds = %184
  br i1 %193, label %195, label %197

195:                                              ; preds = %194
  %196 = tail call i32 @vector_type_mode(ptr noundef nonnull %190) #25
  br label %202

197:                                              ; preds = %194
  %198 = getelementptr inbounds %struct.tree_type, ptr %190, i64 0, i32 6
  %199 = load i32, ptr %198, align 4
  %200 = lshr i32 %199, 16
  %201 = and i32 %200, 255
  br label %202

202:                                              ; preds = %197, %195
  %203 = phi i32 [ %196, %195 ], [ %201, %197 ]
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %204
  %206 = load i8, ptr %205, align 1, !tbaa !72
  %207 = icmp eq i8 %206, 8
  br i1 %207, label %226, label %208

208:                                              ; preds = %202
  %209 = load ptr, ptr %45, align 8, !tbaa !72
  %210 = load i64, ptr %209, align 8
  %211 = and i64 %210, 65535
  %212 = icmp eq i64 %211, 14
  br i1 %212, label %213, label %215

213:                                              ; preds = %208
  %214 = tail call i32 @vector_type_mode(ptr noundef nonnull %209) #25
  br label %220

215:                                              ; preds = %208
  %216 = getelementptr inbounds %struct.tree_type, ptr %209, i64 0, i32 6
  %217 = load i32, ptr %216, align 4
  %218 = lshr i32 %217, 16
  %219 = and i32 %218, 255
  br label %220

220:                                              ; preds = %215, %213
  %221 = phi i32 [ %214, %213 ], [ %219, %215 ]
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %222
  %224 = load i8, ptr %223, align 1, !tbaa !72
  %225 = icmp eq i8 %224, 9
  br i1 %225, label %226, label %238

226:                                              ; preds = %220, %202
  %227 = load ptr, ptr %45, align 8, !tbaa !72
  %228 = load i64, ptr %227, align 8
  %229 = and i64 %228, 65535
  %230 = icmp eq i64 %229, 14
  br i1 %230, label %231, label %233

231:                                              ; preds = %226
  %232 = tail call i32 @vector_type_mode(ptr noundef nonnull %227) #25
  br label %318

233:                                              ; preds = %226
  %234 = getelementptr inbounds %struct.tree_type, ptr %227, i64 0, i32 6
  %235 = load i32, ptr %234, align 4
  %236 = lshr i32 %235, 16
  %237 = and i32 %236, 255
  br label %318

238:                                              ; preds = %220
  %239 = load ptr, ptr %45, align 8, !tbaa !72
  %240 = load i64, ptr %239, align 8
  %241 = and i64 %240, 65535
  %242 = icmp eq i64 %241, 14
  br i1 %242, label %243, label %245

243:                                              ; preds = %238
  %244 = tail call i32 @vector_type_mode(ptr noundef nonnull %239) #25
  br label %250

245:                                              ; preds = %238
  %246 = getelementptr inbounds %struct.tree_type, ptr %239, i64 0, i32 6
  %247 = load i32, ptr %246, align 4
  %248 = lshr i32 %247, 16
  %249 = and i32 %248, 255
  br label %250

250:                                              ; preds = %245, %243
  %251 = phi i32 [ %244, %243 ], [ %249, %245 ]
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %252
  %254 = load i8, ptr %253, align 1, !tbaa !72
  %255 = zext i8 %254 to i32
  br label %318

256:                                              ; preds = %184
  br i1 %193, label %257, label %259

257:                                              ; preds = %256
  %258 = tail call i32 @vector_type_mode(ptr noundef nonnull %190) #25
  br label %264

259:                                              ; preds = %256
  %260 = getelementptr inbounds %struct.tree_type, ptr %190, i64 0, i32 6
  %261 = load i32, ptr %260, align 4
  %262 = lshr i32 %261, 16
  %263 = and i32 %262, 255
  br label %264

264:                                              ; preds = %259, %257
  %265 = phi i32 [ %258, %257 ], [ %263, %259 ]
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %266
  %268 = load i8, ptr %267, align 1, !tbaa !72
  %269 = icmp eq i8 %268, 8
  br i1 %269, label %288, label %270

270:                                              ; preds = %264
  %271 = load ptr, ptr %45, align 8, !tbaa !72
  %272 = load i64, ptr %271, align 8
  %273 = and i64 %272, 65535
  %274 = icmp eq i64 %273, 14
  br i1 %274, label %275, label %277

275:                                              ; preds = %270
  %276 = tail call i32 @vector_type_mode(ptr noundef nonnull %271) #25
  br label %282

277:                                              ; preds = %270
  %278 = getelementptr inbounds %struct.tree_type, ptr %271, i64 0, i32 6
  %279 = load i32, ptr %278, align 4
  %280 = lshr i32 %279, 16
  %281 = and i32 %280, 255
  br label %282

282:                                              ; preds = %277, %275
  %283 = phi i32 [ %276, %275 ], [ %281, %277 ]
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %284
  %286 = load i8, ptr %285, align 1, !tbaa !72
  %287 = icmp eq i8 %286, 9
  br i1 %287, label %288, label %300

288:                                              ; preds = %282, %264
  %289 = load ptr, ptr %45, align 8, !tbaa !72
  %290 = load i64, ptr %289, align 8
  %291 = and i64 %290, 65535
  %292 = icmp eq i64 %291, 14
  br i1 %292, label %293, label %295

293:                                              ; preds = %288
  %294 = tail call i32 @vector_type_mode(ptr noundef nonnull %289) #25
  br label %318

295:                                              ; preds = %288
  %296 = getelementptr inbounds %struct.tree_type, ptr %289, i64 0, i32 6
  %297 = load i32, ptr %296, align 4
  %298 = lshr i32 %297, 16
  %299 = and i32 %298, 255
  br label %318

300:                                              ; preds = %282
  %301 = load ptr, ptr %45, align 8, !tbaa !72
  %302 = load i64, ptr %301, align 8
  %303 = and i64 %302, 65535
  %304 = icmp eq i64 %303, 14
  br i1 %304, label %305, label %307

305:                                              ; preds = %300
  %306 = tail call i32 @vector_type_mode(ptr noundef nonnull %301) #25
  br label %312

307:                                              ; preds = %300
  %308 = getelementptr inbounds %struct.tree_type, ptr %301, i64 0, i32 6
  %309 = load i32, ptr %308, align 4
  %310 = lshr i32 %309, 16
  %311 = and i32 %310, 255
  br label %312

312:                                              ; preds = %307, %305
  %313 = phi i32 [ %306, %305 ], [ %311, %307 ]
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %314
  %316 = load i8, ptr %315, align 1, !tbaa !72
  %317 = zext i8 %316 to i32
  br label %318

318:                                              ; preds = %312, %295, %293, %250, %233, %231
  %319 = phi i32 [ %255, %250 ], [ %232, %231 ], [ %237, %233 ], [ %317, %312 ], [ %294, %293 ], [ %299, %295 ]
  %320 = add i32 %319, -38
  %321 = zext i32 %320 to i64
  %322 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %321
  %323 = load ptr, ptr %322, align 8, !tbaa !61
  %324 = getelementptr inbounds %struct.real_format, ptr %323, i64 0, i32 11
  %325 = load i8, ptr %324, align 2, !tbaa !184
  %326 = icmp eq i8 %325, 0
  %327 = load i32, ptr @flag_finite_math_only, align 4
  %328 = icmp ne i32 %327, 0
  %329 = select i1 %326, i1 true, i1 %328
  br i1 %329, label %330, label %333

330:                                              ; preds = %318, %112
  %331 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !61
  %332 = tail call ptr @omit_two_operands_loc(i32 noundef %0, ptr noundef %10, ptr noundef %331, ptr noundef %42, ptr noundef %43) #25
  br label %620

333:                                              ; preds = %318
  %334 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 103, ptr noundef %10, ptr noundef %42, ptr noundef %43) #25
  br label %620

335:                                              ; preds = %40
  br i1 %49, label %336, label %338

336:                                              ; preds = %335
  %337 = tail call i32 @vector_type_mode(ptr noundef nonnull %46) #25
  br label %343

338:                                              ; preds = %335
  %339 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 6
  %340 = load i32, ptr %339, align 4
  %341 = lshr i32 %340, 16
  %342 = and i32 %341, 255
  br label %343

343:                                              ; preds = %338, %336
  %344 = phi i32 [ %337, %336 ], [ %342, %338 ]
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %345
  %347 = load i8, ptr %346, align 1, !tbaa !72
  %348 = icmp eq i8 %347, 8
  br i1 %348, label %403, label %349

349:                                              ; preds = %343
  %350 = load ptr, ptr %45, align 8, !tbaa !72
  %351 = load i64, ptr %350, align 8
  %352 = and i64 %351, 65535
  %353 = icmp eq i64 %352, 14
  br i1 %353, label %354, label %356

354:                                              ; preds = %349
  %355 = tail call i32 @vector_type_mode(ptr noundef nonnull %350) #25
  br label %361

356:                                              ; preds = %349
  %357 = getelementptr inbounds %struct.tree_type, ptr %350, i64 0, i32 6
  %358 = load i32, ptr %357, align 4
  %359 = lshr i32 %358, 16
  %360 = and i32 %359, 255
  br label %361

361:                                              ; preds = %356, %354
  %362 = phi i32 [ %355, %354 ], [ %360, %356 ]
  %363 = zext i32 %362 to i64
  %364 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %363
  %365 = load i8, ptr %364, align 1, !tbaa !72
  %366 = icmp eq i8 %365, 9
  br i1 %366, label %403, label %367

367:                                              ; preds = %361
  %368 = load ptr, ptr %45, align 8, !tbaa !72
  %369 = load i64, ptr %368, align 8
  %370 = and i64 %369, 65535
  %371 = icmp eq i64 %370, 14
  br i1 %371, label %372, label %374

372:                                              ; preds = %367
  %373 = tail call i32 @vector_type_mode(ptr noundef nonnull %368) #25
  br label %379

374:                                              ; preds = %367
  %375 = getelementptr inbounds %struct.tree_type, ptr %368, i64 0, i32 6
  %376 = load i32, ptr %375, align 4
  %377 = lshr i32 %376, 16
  %378 = and i32 %377, 255
  br label %379

379:                                              ; preds = %374, %372
  %380 = phi i32 [ %373, %372 ], [ %378, %374 ]
  %381 = zext i32 %380 to i64
  %382 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %381
  %383 = load i8, ptr %382, align 1, !tbaa !72
  %384 = icmp eq i8 %383, 11
  br i1 %384, label %403, label %385

385:                                              ; preds = %379
  %386 = load ptr, ptr %45, align 8, !tbaa !72
  %387 = load i64, ptr %386, align 8
  %388 = and i64 %387, 65535
  %389 = icmp eq i64 %388, 14
  br i1 %389, label %390, label %392

390:                                              ; preds = %385
  %391 = tail call i32 @vector_type_mode(ptr noundef nonnull %386) #25
  br label %397

392:                                              ; preds = %385
  %393 = getelementptr inbounds %struct.tree_type, ptr %386, i64 0, i32 6
  %394 = load i32, ptr %393, align 4
  %395 = lshr i32 %394, 16
  %396 = and i32 %395, 255
  br label %397

397:                                              ; preds = %392, %390
  %398 = phi i32 [ %391, %390 ], [ %396, %392 ]
  %399 = zext i32 %398 to i64
  %400 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %399
  %401 = load i8, ptr %400, align 1, !tbaa !72
  %402 = icmp eq i8 %401, 17
  br i1 %402, label %403, label %615

403:                                              ; preds = %397, %379, %361, %343
  %404 = load ptr, ptr %45, align 8, !tbaa !72
  %405 = load i64, ptr %404, align 8
  %406 = and i64 %405, 65535
  %407 = icmp eq i64 %406, 14
  br i1 %407, label %408, label %410

408:                                              ; preds = %403
  %409 = tail call i32 @vector_type_mode(ptr noundef nonnull %404) #25
  br label %415

410:                                              ; preds = %403
  %411 = getelementptr inbounds %struct.tree_type, ptr %404, i64 0, i32 6
  %412 = load i32, ptr %411, align 4
  %413 = lshr i32 %412, 16
  %414 = and i32 %413, 255
  br label %415

415:                                              ; preds = %410, %408
  %416 = phi i32 [ %409, %408 ], [ %414, %410 ]
  %417 = zext i32 %416 to i64
  %418 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %417
  %419 = load i8, ptr %418, align 1, !tbaa !72
  %420 = icmp eq i8 %419, 8
  br i1 %420, label %439, label %421

421:                                              ; preds = %415
  %422 = load ptr, ptr %45, align 8, !tbaa !72
  %423 = load i64, ptr %422, align 8
  %424 = and i64 %423, 65535
  %425 = icmp eq i64 %424, 14
  br i1 %425, label %426, label %428

426:                                              ; preds = %421
  %427 = tail call i32 @vector_type_mode(ptr noundef nonnull %422) #25
  br label %433

428:                                              ; preds = %421
  %429 = getelementptr inbounds %struct.tree_type, ptr %422, i64 0, i32 6
  %430 = load i32, ptr %429, align 4
  %431 = lshr i32 %430, 16
  %432 = and i32 %431, 255
  br label %433

433:                                              ; preds = %428, %426
  %434 = phi i32 [ %427, %426 ], [ %432, %428 ]
  %435 = zext i32 %434 to i64
  %436 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %435
  %437 = load i8, ptr %436, align 1, !tbaa !72
  %438 = icmp eq i8 %437, 9
  br i1 %438, label %439, label %451

439:                                              ; preds = %433, %415
  %440 = load ptr, ptr %45, align 8, !tbaa !72
  %441 = load i64, ptr %440, align 8
  %442 = and i64 %441, 65535
  %443 = icmp eq i64 %442, 14
  br i1 %443, label %444, label %446

444:                                              ; preds = %439
  %445 = tail call i32 @vector_type_mode(ptr noundef nonnull %440) #25
  br label %469

446:                                              ; preds = %439
  %447 = getelementptr inbounds %struct.tree_type, ptr %440, i64 0, i32 6
  %448 = load i32, ptr %447, align 4
  %449 = lshr i32 %448, 16
  %450 = and i32 %449, 255
  br label %469

451:                                              ; preds = %433
  %452 = load ptr, ptr %45, align 8, !tbaa !72
  %453 = load i64, ptr %452, align 8
  %454 = and i64 %453, 65535
  %455 = icmp eq i64 %454, 14
  br i1 %455, label %456, label %458

456:                                              ; preds = %451
  %457 = tail call i32 @vector_type_mode(ptr noundef nonnull %452) #25
  br label %463

458:                                              ; preds = %451
  %459 = getelementptr inbounds %struct.tree_type, ptr %452, i64 0, i32 6
  %460 = load i32, ptr %459, align 4
  %461 = lshr i32 %460, 16
  %462 = and i32 %461, 255
  br label %463

463:                                              ; preds = %458, %456
  %464 = phi i32 [ %457, %456 ], [ %462, %458 ]
  %465 = zext i32 %464 to i64
  %466 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %465
  %467 = load i8, ptr %466, align 1, !tbaa !72
  %468 = zext i8 %467 to i32
  br label %469

469:                                              ; preds = %444, %446, %463
  %470 = phi i32 [ %468, %463 ], [ %445, %444 ], [ %450, %446 ]
  %471 = zext i32 %470 to i64
  %472 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %471
  %473 = load i8, ptr %472, align 1, !tbaa !72
  %474 = icmp eq i8 %473, 9
  %475 = load ptr, ptr %45, align 8, !tbaa !72
  %476 = load i64, ptr %475, align 8
  %477 = and i64 %476, 65535
  %478 = icmp eq i64 %477, 14
  br i1 %474, label %479, label %541

479:                                              ; preds = %469
  br i1 %478, label %480, label %482

480:                                              ; preds = %479
  %481 = tail call i32 @vector_type_mode(ptr noundef nonnull %475) #25
  br label %487

482:                                              ; preds = %479
  %483 = getelementptr inbounds %struct.tree_type, ptr %475, i64 0, i32 6
  %484 = load i32, ptr %483, align 4
  %485 = lshr i32 %484, 16
  %486 = and i32 %485, 255
  br label %487

487:                                              ; preds = %482, %480
  %488 = phi i32 [ %481, %480 ], [ %486, %482 ]
  %489 = zext i32 %488 to i64
  %490 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %489
  %491 = load i8, ptr %490, align 1, !tbaa !72
  %492 = icmp eq i8 %491, 8
  br i1 %492, label %511, label %493

493:                                              ; preds = %487
  %494 = load ptr, ptr %45, align 8, !tbaa !72
  %495 = load i64, ptr %494, align 8
  %496 = and i64 %495, 65535
  %497 = icmp eq i64 %496, 14
  br i1 %497, label %498, label %500

498:                                              ; preds = %493
  %499 = tail call i32 @vector_type_mode(ptr noundef nonnull %494) #25
  br label %505

500:                                              ; preds = %493
  %501 = getelementptr inbounds %struct.tree_type, ptr %494, i64 0, i32 6
  %502 = load i32, ptr %501, align 4
  %503 = lshr i32 %502, 16
  %504 = and i32 %503, 255
  br label %505

505:                                              ; preds = %500, %498
  %506 = phi i32 [ %499, %498 ], [ %504, %500 ]
  %507 = zext i32 %506 to i64
  %508 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %507
  %509 = load i8, ptr %508, align 1, !tbaa !72
  %510 = icmp eq i8 %509, 9
  br i1 %510, label %511, label %523

511:                                              ; preds = %505, %487
  %512 = load ptr, ptr %45, align 8, !tbaa !72
  %513 = load i64, ptr %512, align 8
  %514 = and i64 %513, 65535
  %515 = icmp eq i64 %514, 14
  br i1 %515, label %516, label %518

516:                                              ; preds = %511
  %517 = tail call i32 @vector_type_mode(ptr noundef nonnull %512) #25
  br label %603

518:                                              ; preds = %511
  %519 = getelementptr inbounds %struct.tree_type, ptr %512, i64 0, i32 6
  %520 = load i32, ptr %519, align 4
  %521 = lshr i32 %520, 16
  %522 = and i32 %521, 255
  br label %603

523:                                              ; preds = %505
  %524 = load ptr, ptr %45, align 8, !tbaa !72
  %525 = load i64, ptr %524, align 8
  %526 = and i64 %525, 65535
  %527 = icmp eq i64 %526, 14
  br i1 %527, label %528, label %530

528:                                              ; preds = %523
  %529 = tail call i32 @vector_type_mode(ptr noundef nonnull %524) #25
  br label %535

530:                                              ; preds = %523
  %531 = getelementptr inbounds %struct.tree_type, ptr %524, i64 0, i32 6
  %532 = load i32, ptr %531, align 4
  %533 = lshr i32 %532, 16
  %534 = and i32 %533, 255
  br label %535

535:                                              ; preds = %530, %528
  %536 = phi i32 [ %529, %528 ], [ %534, %530 ]
  %537 = zext i32 %536 to i64
  %538 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %537
  %539 = load i8, ptr %538, align 1, !tbaa !72
  %540 = zext i8 %539 to i32
  br label %603

541:                                              ; preds = %469
  br i1 %478, label %542, label %544

542:                                              ; preds = %541
  %543 = tail call i32 @vector_type_mode(ptr noundef nonnull %475) #25
  br label %549

544:                                              ; preds = %541
  %545 = getelementptr inbounds %struct.tree_type, ptr %475, i64 0, i32 6
  %546 = load i32, ptr %545, align 4
  %547 = lshr i32 %546, 16
  %548 = and i32 %547, 255
  br label %549

549:                                              ; preds = %544, %542
  %550 = phi i32 [ %543, %542 ], [ %548, %544 ]
  %551 = zext i32 %550 to i64
  %552 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %551
  %553 = load i8, ptr %552, align 1, !tbaa !72
  %554 = icmp eq i8 %553, 8
  br i1 %554, label %573, label %555

555:                                              ; preds = %549
  %556 = load ptr, ptr %45, align 8, !tbaa !72
  %557 = load i64, ptr %556, align 8
  %558 = and i64 %557, 65535
  %559 = icmp eq i64 %558, 14
  br i1 %559, label %560, label %562

560:                                              ; preds = %555
  %561 = tail call i32 @vector_type_mode(ptr noundef nonnull %556) #25
  br label %567

562:                                              ; preds = %555
  %563 = getelementptr inbounds %struct.tree_type, ptr %556, i64 0, i32 6
  %564 = load i32, ptr %563, align 4
  %565 = lshr i32 %564, 16
  %566 = and i32 %565, 255
  br label %567

567:                                              ; preds = %562, %560
  %568 = phi i32 [ %561, %560 ], [ %566, %562 ]
  %569 = zext i32 %568 to i64
  %570 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %569
  %571 = load i8, ptr %570, align 1, !tbaa !72
  %572 = icmp eq i8 %571, 9
  br i1 %572, label %573, label %585

573:                                              ; preds = %567, %549
  %574 = load ptr, ptr %45, align 8, !tbaa !72
  %575 = load i64, ptr %574, align 8
  %576 = and i64 %575, 65535
  %577 = icmp eq i64 %576, 14
  br i1 %577, label %578, label %580

578:                                              ; preds = %573
  %579 = tail call i32 @vector_type_mode(ptr noundef nonnull %574) #25
  br label %603

580:                                              ; preds = %573
  %581 = getelementptr inbounds %struct.tree_type, ptr %574, i64 0, i32 6
  %582 = load i32, ptr %581, align 4
  %583 = lshr i32 %582, 16
  %584 = and i32 %583, 255
  br label %603

585:                                              ; preds = %567
  %586 = load ptr, ptr %45, align 8, !tbaa !72
  %587 = load i64, ptr %586, align 8
  %588 = and i64 %587, 65535
  %589 = icmp eq i64 %588, 14
  br i1 %589, label %590, label %592

590:                                              ; preds = %585
  %591 = tail call i32 @vector_type_mode(ptr noundef nonnull %586) #25
  br label %597

592:                                              ; preds = %585
  %593 = getelementptr inbounds %struct.tree_type, ptr %586, i64 0, i32 6
  %594 = load i32, ptr %593, align 4
  %595 = lshr i32 %594, 16
  %596 = and i32 %595, 255
  br label %597

597:                                              ; preds = %592, %590
  %598 = phi i32 [ %591, %590 ], [ %596, %592 ]
  %599 = zext i32 %598 to i64
  %600 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %599
  %601 = load i8, ptr %600, align 1, !tbaa !72
  %602 = zext i8 %601 to i32
  br label %603

603:                                              ; preds = %597, %580, %578, %535, %518, %516
  %604 = phi i32 [ %540, %535 ], [ %517, %516 ], [ %522, %518 ], [ %602, %597 ], [ %579, %578 ], [ %584, %580 ]
  %605 = add i32 %604, -38
  %606 = zext i32 %605 to i64
  %607 = getelementptr inbounds [7 x ptr], ptr @real_format_for_mode, i64 0, i64 %606
  %608 = load ptr, ptr %607, align 8, !tbaa !61
  %609 = getelementptr inbounds %struct.real_format, ptr %608, i64 0, i32 11
  %610 = load i8, ptr %609, align 2, !tbaa !184
  %611 = icmp eq i8 %610, 0
  %612 = load i32, ptr @flag_finite_math_only, align 4
  %613 = icmp ne i32 %612, 0
  %614 = select i1 %611, i1 true, i1 %613
  br i1 %614, label %615, label %616

615:                                              ; preds = %603, %397
  br label %616

616:                                              ; preds = %603, %615
  %617 = phi i32 [ %5, %615 ], [ %4, %603 ]
  %618 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef %617, ptr noundef %10, ptr noundef %42, ptr noundef %43) #25
  %619 = tail call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 96, ptr noundef %10, ptr noundef %618) #25
  br label %620

620:                                              ; preds = %616, %333, %330
  %621 = phi ptr [ %332, %330 ], [ %334, %333 ], [ %619, %616 ]
  ret ptr %621
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_sprintf(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #14 !prof !60 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %89, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %89 [
    i16 12, label %12
    i16 10, label %12
  ]

12:                                               ; preds = %7, %7
  %13 = icmp eq ptr %2, null
  br i1 %13, label %89, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !72
  %17 = load i64, ptr %16, align 8
  %18 = trunc i64 %17 to i16
  switch i16 %18, label %89 [
    i16 12, label %19
    i16 10, label %19
  ]

19:                                               ; preds = %14, %14
  %20 = icmp eq ptr %3, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !72
  %24 = load i64, ptr %23, align 8
  %25 = trunc i64 %24 to i16
  switch i16 %25, label %89 [
    i16 12, label %26
    i16 10, label %26
  ]

26:                                               ; preds = %21, %21, %19
  %27 = tail call fastcc ptr @c_getstr(ptr noundef nonnull %2)
  %28 = icmp eq ptr %27, null
  br i1 %28, label %89, label %29

29:                                               ; preds = %26
  %30 = tail call fastcc zeroext i8 @init_target_chars(), !range !141
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %89, label %32

32:                                               ; preds = %29
  %33 = load i64, ptr @target_percent, align 8, !tbaa !82
  %34 = trunc i64 %33 to i32
  %35 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %27, i32 noundef %34)
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 341), align 8, !tbaa !61
  %39 = icmp ne ptr %38, null
  %40 = and i1 %20, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %38, i32 noundef 2, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %43 = icmp eq i32 %4, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %27)
  %46 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %45) #25
  br label %47

47:                                               ; preds = %37, %41, %44
  %48 = phi ptr [ null, %37 ], [ null, %41 ], [ %46, %44 ]
  %49 = phi ptr [ null, %37 ], [ %42, %41 ], [ %42, %44 ]
  br i1 %40, label %73, label %89

50:                                               ; preds = %32
  %51 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %27, ptr noundef nonnull dereferenceable(1) @target_percent_s)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %50
  %54 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 341), align 8, !tbaa !61
  %55 = icmp eq ptr %54, null
  %56 = or i1 %20, %55
  br i1 %56, label %69, label %57

57:                                               ; preds = %53
  %58 = icmp eq i32 %4, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %57
  %60 = tail call ptr @c_strlen(ptr noundef nonnull %3, i32 noundef 1)
  %61 = icmp eq ptr %60, null
  br i1 %61, label %69, label %62

62:                                               ; preds = %59
  %63 = load i64, ptr %60, align 8
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 23
  br i1 %65, label %66, label %69

66:                                               ; preds = %62, %57
  %67 = phi ptr [ null, %57 ], [ %60, %62 ]
  %68 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %54, i32 noundef 2, ptr noundef nonnull %1, ptr noundef nonnull %3)
  br label %69

69:                                               ; preds = %53, %59, %62, %66
  %70 = phi ptr [ %67, %66 ], [ null, %53 ], [ %60, %62 ], [ %60, %59 ]
  %71 = phi i1 [ true, %66 ], [ false, %53 ], [ false, %62 ], [ false, %59 ]
  %72 = phi ptr [ %68, %66 ], [ null, %53 ], [ null, %62 ], [ null, %59 ]
  br i1 %71, label %73, label %89

73:                                               ; preds = %50, %69, %47
  %74 = phi ptr [ %48, %47 ], [ %70, %69 ], [ null, %50 ]
  %75 = phi ptr [ %49, %47 ], [ %72, %69 ], [ null, %50 ]
  %76 = icmp ne ptr %75, null
  %77 = icmp ne ptr %74, null
  %78 = select i1 %76, i1 %77, i1 false
  br i1 %78, label %79, label %89

79:                                               ; preds = %73
  %80 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 373), align 8, !tbaa !61
  %81 = getelementptr inbounds %struct.tree_common, ptr %80, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !72
  %83 = getelementptr inbounds %struct.tree_common, ptr %82, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !72
  %85 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %84, ptr noundef nonnull %74) #25
  %86 = getelementptr inbounds %struct.tree_common, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !72
  %88 = tail call ptr @build2_stat(i32 noundef 52, ptr noundef %87, ptr noundef nonnull %75, ptr noundef %85) #25
  br label %89

89:                                               ; preds = %69, %47, %26, %21, %12, %14, %7, %5, %73, %29, %79
  %90 = phi ptr [ %88, %79 ], [ null, %14 ], [ null, %7 ], [ null, %29 ], [ %75, %73 ], [ null, %5 ], [ null, %12 ], [ null, %21 ], [ null, %26 ], [ null, %47 ], [ null, %69 ]
  ret ptr %90
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_object_size(ptr noundef %0, ptr noundef %1) unnamed_addr #14 !prof !60 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = icmp eq ptr %0, null
  br i1 %5, label %72, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %72 [
    i16 12, label %11
    i16 10, label %11
  ]

11:                                               ; preds = %6, %6
  %12 = icmp eq ptr %1, null
  br i1 %12, label %72, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 65534
  %19 = icmp ne i32 %18, 6
  %20 = and i32 %17, 65535
  %21 = icmp ne i32 %20, 8
  %22 = and i1 %19, %21
  br i1 %22, label %72, label %23

23:                                               ; preds = %13
  %24 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %1) #25
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 23
  br i1 %27, label %28, label %72

28:                                               ; preds = %23
  %29 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %24) #25
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %72, label %31

31:                                               ; preds = %28
  %32 = tail call i32 @compare_tree_int(ptr noundef nonnull %24, i64 noundef 3) #25
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %72, label %34

34:                                               ; preds = %31
  %35 = tail call i64 @tree_low_cst(ptr noundef nonnull %24, i32 noundef 0) #25
  %36 = trunc i64 %35 to i32
  %37 = load i64, ptr %0, align 8
  %38 = and i64 %37, 65536
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !61
  %42 = icmp slt i32 %36, 2
  %43 = sext i1 %42 to i64
  %44 = tail call ptr @build_int_cst_type(ptr noundef %41, i64 noundef %43) #25
  br label %72

45:                                               ; preds = %34
  %46 = trunc i64 %37 to i16
  switch i16 %46, label %59 [
    i16 121, label %47
    i16 141, label %51
  ]

47:                                               ; preds = %45
  %48 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !61
  %49 = tail call i64 @compute_builtin_object_size(ptr noundef nonnull %0, i32 noundef %36) #25
  %50 = tail call ptr @build_int_cstu(ptr noundef %48, i64 noundef %49) #25
  br label %59

51:                                               ; preds = %45
  %52 = tail call i64 @compute_builtin_object_size(ptr noundef nonnull %0, i32 noundef %36) #25
  %53 = icmp slt i32 %36, 2
  %54 = sext i1 %53 to i64
  %55 = icmp eq i64 %52, %54
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !61
  %58 = tail call ptr @build_int_cstu(ptr noundef %57, i64 noundef %52) #25
  br label %59

59:                                               ; preds = %51, %56, %45, %47
  %60 = phi ptr [ %50, %47 ], [ null, %45 ], [ %58, %56 ], [ null, %51 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %72, label %62

62:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %63 = getelementptr inbounds %struct.tree_int_cst, ptr %60, i64 0, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !72
  store i64 %64, ptr %3, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %65 = getelementptr inbounds %struct.tree_int_cst, ptr %60, i64 0, i32 1, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !72
  store i64 %66, ptr %4, align 8, !tbaa !82
  %67 = getelementptr inbounds %struct.tree_common, ptr %60, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !72
  %69 = call i32 @fit_double_type(i64 noundef %64, i64 noundef %66, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %68) #25
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %70, ptr %60, ptr null
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  br label %72

72:                                               ; preds = %13, %6, %11, %2, %59, %62, %23, %28, %31, %40
  %73 = phi ptr [ %44, %40 ], [ null, %6 ], [ null, %31 ], [ null, %28 ], [ null, %23 ], [ %71, %62 ], [ null, %59 ], [ null, %2 ], [ null, %11 ], [ null, %13 ]
  ret ptr %73
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_fprintf(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, i32 noundef %6) unnamed_addr #14 !prof !215 !PGOFuncName !216 {
  %8 = icmp eq i8 %5, 0
  %9 = icmp eq ptr %2, null
  %10 = or i1 %9, %8
  br i1 %10, label %104, label %11, !prof !217

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !72
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i16
  switch i16 %15, label %104 [
    i16 12, label %16
    i16 10, label %16
  ]

16:                                               ; preds = %11, %11
  %17 = icmp eq ptr %3, null
  br i1 %17, label %104, label %18

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !72
  %21 = load i64, ptr %20, align 8
  %22 = trunc i64 %21 to i16
  switch i16 %22, label %104 [
    i16 12, label %23
    i16 10, label %23
  ]

23:                                               ; preds = %18, %18
  %24 = tail call fastcc ptr @c_getstr(ptr noundef nonnull %3)
  %25 = icmp eq ptr %24, null
  br i1 %25, label %104, label %26

26:                                               ; preds = %23
  %27 = icmp eq i32 %6, 355
  %28 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 361), align 8
  %29 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 360), align 16
  %30 = select i1 %27, ptr %28, ptr %29
  %31 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 359), align 8
  %32 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 358), align 16
  %33 = select i1 %27, ptr %31, ptr %32
  %34 = tail call fastcc zeroext i8 @init_target_chars(), !range !141
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %104, label %36

36:                                               ; preds = %26
  %37 = load i64, ptr @target_percent, align 8, !tbaa !82
  %38 = trunc i64 %37 to i32
  %39 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %24, i32 noundef %38)
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %61

41:                                               ; preds = %36
  %42 = icmp eq ptr %4, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %41
  switch i32 %6, label %104 [
    i32 544, label %44
    i32 375, label %44
  ]

44:                                               ; preds = %43, %43, %41
  %45 = load i8, ptr %24, align 1, !tbaa !72
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load i64, ptr %2, align 8
  %49 = and i64 %48, 65536
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %104

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !72
  %54 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !72
  %56 = tail call ptr @build_int_cst(ptr noundef %55, i64 noundef 0) #25
  br label %104

57:                                               ; preds = %44
  %58 = icmp eq ptr %30, null
  br i1 %58, label %95, label %59

59:                                               ; preds = %57
  %60 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %30, i32 noundef 2, ptr noundef nonnull %3, ptr noundef %2)
  br label %95

61:                                               ; preds = %36
  switch i32 %6, label %62 [
    i32 544, label %104
    i32 375, label %104
  ]

62:                                               ; preds = %61
  %63 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(1) @target_percent_s)
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = icmp eq ptr %4, null
  br i1 %66, label %104, label %67

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !72
  %70 = load i64, ptr %69, align 8
  %71 = trunc i64 %70 to i16
  switch i16 %71, label %104 [
    i16 12, label %72
    i16 10, label %72
  ]

72:                                               ; preds = %67, %67
  %73 = icmp eq ptr %30, null
  br i1 %73, label %95, label %74

74:                                               ; preds = %72
  %75 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %30, i32 noundef 2, ptr noundef nonnull %4, ptr noundef %2)
  br label %95

76:                                               ; preds = %62
  %77 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(1) @target_percent_c)
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %76
  %80 = icmp eq ptr %4, null
  br i1 %80, label %104, label %81

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !72
  %84 = load i64, ptr %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = and i32 %85, 65534
  %87 = icmp ne i32 %86, 6
  %88 = and i32 %85, 65535
  %89 = icmp ne i32 %88, 8
  %90 = and i1 %87, %89
  br i1 %90, label %104, label %91

91:                                               ; preds = %81
  %92 = icmp eq ptr %33, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %91
  %94 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %33, i32 noundef 2, ptr noundef nonnull %4, ptr noundef %2)
  br label %95

95:                                               ; preds = %72, %76, %93, %91, %74, %57, %59
  %96 = phi ptr [ %60, %59 ], [ null, %57 ], [ %75, %74 ], [ %94, %93 ], [ null, %91 ], [ null, %76 ], [ null, %72 ]
  %97 = icmp eq ptr %96, null
  br i1 %97, label %104, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %100 = load ptr, ptr %99, align 8, !tbaa !72
  %101 = getelementptr inbounds %struct.tree_common, ptr %100, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !72
  %103 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %102, ptr noundef nonnull %96) #25
  br label %104

104:                                              ; preds = %61, %23, %16, %18, %11, %67, %95, %79, %81, %65, %61, %47, %43, %26, %7, %98, %51
  %105 = phi ptr [ %56, %51 ], [ %103, %98 ], [ null, %7 ], [ null, %11 ], [ null, %18 ], [ null, %26 ], [ null, %43 ], [ null, %47 ], [ null, %61 ], [ null, %67 ], [ null, %65 ], [ null, %81 ], [ null, %79 ], [ null, %95 ], [ null, %16 ], [ null, %23 ], [ null, %61 ]
  ret ptr %105
}

declare i32 @real_zerop(ptr noundef) local_unnamed_addr #3

declare void @real_ldexp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @real_value_truncate(ptr dead_on_unwind writable sret(%struct.real_value) align 8, i32 noundef, ptr noundef byval(%struct.real_value) align 8) local_unnamed_addr #3

declare zeroext i8 @real_arithmetic(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_memset(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) unnamed_addr #14 !prof !218 !PGOFuncName !219 {
  %7 = icmp eq ptr %1, null
  br i1 %7, label %128, label %8, !prof !220

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i16
  switch i16 %12, label %128 [
    i16 12, label %13
    i16 10, label %13
  ]

13:                                               ; preds = %8, %8
  %14 = icmp eq ptr %2, null
  br i1 %14, label %128, label %15, !prof !220

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !72
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = and i32 %19, 65534
  %21 = icmp eq i32 %20, 6
  br i1 %21, label %27, label %22, !prof !220

22:                                               ; preds = %15
  %23 = and i32 %19, 65535
  %24 = icmp ne i32 %23, 8
  %25 = icmp eq ptr %3, null
  %26 = or i1 %25, %24
  br i1 %26, label %128, label %29, !prof !221

27:                                               ; preds = %15
  %28 = icmp eq ptr %3, null
  br i1 %28, label %128, label %29, !prof !220

29:                                               ; preds = %22, %27
  %30 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !72
  %32 = load i64, ptr %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = and i32 %33, 65534
  %35 = icmp ne i32 %34, 6
  %36 = and i32 %33, 65535
  %37 = icmp ne i32 %36, 8
  %38 = and i1 %35, %37
  br i1 %38, label %128, label %39, !prof !221

39:                                               ; preds = %29
  %40 = tail call i32 @host_integerp(ptr noundef %3, i32 noundef 1) #25
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %128, label %42, !prof !222

42:                                               ; preds = %39
  %43 = tail call i32 @integer_zerop(ptr noundef %3) #25
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %4, ptr noundef nonnull %1, ptr noundef nonnull %2) #25
  br label %128

47:                                               ; preds = %42
  %48 = tail call i32 @host_integerp(ptr noundef nonnull %2, i32 noundef 1) #25
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %128, label %50

50:                                               ; preds = %47
  %51 = load i64, ptr %1, align 8
  %52 = and i64 %51, 65536
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %128

54:                                               ; preds = %50
  %55 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %1) #25
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 121
  br i1 %58, label %59, label %128

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.tree_exp, ptr %55, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !72
  %62 = load i64, ptr %61, align 8
  %63 = and i64 %62, 524288
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %128

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.tree_common, ptr %61, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !72
  %68 = load i64, ptr %67, align 8
  %69 = and i64 %68, 65535
  %70 = icmp eq i64 %69, 15
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.tree_common, ptr %67, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !72
  br label %74

74:                                               ; preds = %71, %65
  %75 = phi ptr [ %73, %71 ], [ %67, %65 ]
  %76 = load i64, ptr %75, align 8
  %77 = trunc i64 %76 to i16
  switch i16 %77, label %128 [
    i16 6, label %78
    i16 7, label %78
    i16 8, label %78
    i16 10, label %78
    i16 12, label %78
  ]

78:                                               ; preds = %74, %74, %74, %74, %74
  %79 = tail call fastcc zeroext i8 @var_decl_component_p(ptr noundef nonnull %61), !range !141
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %128, label %81

81:                                               ; preds = %78
  %82 = tail call i64 @tree_low_cst(ptr noundef %3, i32 noundef 1) #25
  %83 = load i64, ptr %75, align 8
  %84 = and i64 %83, 65535
  %85 = icmp eq i64 %84, 14
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = tail call i32 @vector_type_mode(ptr noundef nonnull %75) #25
  br label %93

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 6
  %90 = load i32, ptr %89, align 4
  %91 = lshr i32 %90, 16
  %92 = and i32 %91, 255
  br label %93

93:                                               ; preds = %88, %86
  %94 = phi i32 [ %87, %86 ], [ %92, %88 ]
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %95
  %97 = load i8, ptr %96, align 1, !tbaa !72
  %98 = zext i8 %97 to i64
  %99 = icmp eq i64 %82, %98
  br i1 %99, label %100, label %128

100:                                              ; preds = %93
  %101 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !76
  %102 = and i32 %101, 32
  %103 = icmp eq i32 %102, 0
  %104 = select i1 %103, i32 128, i32 256
  %105 = tail call i32 @get_pointer_alignment(ptr noundef nonnull %1, i32 noundef %104)
  %106 = sdiv i32 %105, 8
  %107 = trunc i64 %82 to i32
  %108 = icmp slt i32 %106, %107
  %109 = icmp ugt i64 %82, 8
  %110 = or i1 %109, %108
  br i1 %110, label %128, label %111

111:                                              ; preds = %100
  %112 = tail call i32 @integer_zerop(ptr noundef nonnull %2) #25
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = tail call i64 @tree_low_cst(ptr noundef nonnull %2, i32 noundef 1) #25
  %116 = and i64 %115, 255
  %117 = mul nuw i64 %116, 72340172838076673
  br label %118

118:                                              ; preds = %111, %114
  %119 = phi i64 [ %117, %114 ], [ 0, %111 ]
  %120 = tail call ptr @build_int_cst_type(ptr noundef nonnull %75, i64 noundef %119) #25
  %121 = tail call ptr @build_pointer_type(ptr noundef nonnull %75) #25
  %122 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %121, ptr noundef nonnull %1) #25
  %123 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef %0, ptr noundef %122) #25
  %124 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef nonnull %75, ptr noundef %123, ptr noundef %120) #25
  %125 = icmp eq i8 %5, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %118
  %127 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %4, ptr noundef nonnull %1, ptr noundef %124) #25
  br label %128

128:                                              ; preds = %29, %8, %27, %13, %6, %74, %118, %93, %100, %78, %59, %54, %47, %50, %39, %22, %126, %45
  %129 = phi ptr [ %46, %45 ], [ %127, %126 ], [ null, %22 ], [ null, %8 ], [ null, %39 ], [ null, %50 ], [ null, %47 ], [ null, %54 ], [ null, %59 ], [ null, %78 ], [ null, %100 ], [ null, %93 ], [ %124, %118 ], [ null, %74 ], [ null, %6 ], [ null, %13 ], [ null, %27 ], [ null, %29 ]
  ret ptr %129
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @var_decl_component_p(ptr nocapture noundef readonly %0) unnamed_addr #22 !prof !60 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ %0, %1 ], [ %8, %6 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %18 [
    i16 42, label %6
    i16 41, label %6
    i16 45, label %6
    i16 46, label %6
    i16 118, label %6
    i16 43, label %6
    i16 44, label %6
    i16 32, label %19
    i16 34, label %19
    i16 36, label %19
    i16 141, label %9
  ]

6:                                                ; preds = %2, %2, %2, %2, %2, %2, %2
  %7 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  br label %2, !llvm.loop !223

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %14 [
    i16 32, label %19
    i16 34, label %19
  ]

14:                                               ; preds = %9
  %15 = and i64 %12, 65535
  %16 = icmp eq i64 %15, 36
  %17 = zext i1 %16 to i8
  br label %19

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %2, %2, %2, %18, %9, %9, %14
  %20 = phi i8 [ %17, %14 ], [ 1, %9 ], [ 1, %9 ], [ 0, %18 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ]
  ret i8 %20
}

declare ptr @build_int_cst_type(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #10

declare zeroext i8 @optimize_insn_for_speed_p() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

declare ptr @omit_two_operands_loc(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #10

declare ptr @build_pointer_type_for_mode(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strpbrk(ptr noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @build_builtin_expect_predicate(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #14 !prof !60 {
  %4 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 446), align 16, !tbaa !61
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !72
  %7 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  %11 = getelementptr inbounds %struct.tree_list, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !72
  %13 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !72
  %15 = getelementptr inbounds %struct.tree_list, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !72
  %17 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %12, ptr noundef %1) #25
  %18 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %16, ptr noundef %2) #25
  %19 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef %4, i32 noundef 2, ptr noundef %17, ptr noundef %18)
  %20 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !72
  %22 = tail call ptr @build_int_cst(ptr noundef %10, i64 noundef 0) #25
  %23 = tail call ptr @build2_stat(i32 noundef 102, ptr noundef %21, ptr noundef %19, ptr noundef %22) #25
  ret ptr %23
}

declare i32 @real_onep(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @real_powi(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @real_copysign(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_strip_sign_ops(ptr noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_sgn(ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cstu(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @compute_builtin_object_size(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @fold_builtin_memory_op(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, i32 noundef %6) unnamed_addr #12 !prof !224 !PGOFuncName !225 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = icmp eq ptr %1, null
  br i1 %12, label %528, label %13, !prof !226

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i16
  switch i16 %17, label %528 [
    i16 12, label %18
    i16 10, label %18
  ], !prof !227

18:                                               ; preds = %13, %13
  %19 = icmp eq ptr %2, null
  br i1 %19, label %528, label %20, !prof !226

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !72
  %23 = load i64, ptr %22, align 8
  %24 = trunc i64 %23 to i16
  switch i16 %24, label %528 [
    i16 12, label %25
    i16 10, label %25
  ], !prof !227

25:                                               ; preds = %20, %20
  %26 = icmp eq ptr %3, null
  br i1 %26, label %528, label %27, !prof !226

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !72
  %30 = load i64, ptr %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = and i32 %31, 65534
  %33 = icmp eq i32 %32, 6
  %34 = and i32 %31, 65535
  %35 = icmp eq i32 %34, 8
  %36 = or i1 %33, %35
  br i1 %36, label %37, label %528, !prof !228

37:                                               ; preds = %27
  %38 = tail call i32 @integer_zerop(ptr noundef nonnull %3) #25
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40, !prof !228

40:                                               ; preds = %37
  %41 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %4, ptr noundef nonnull %1, ptr noundef nonnull %2) #25
  br label %528

42:                                               ; preds = %37
  %43 = tail call i32 @operand_equal_p(ptr noundef nonnull %2, ptr noundef nonnull %1, i32 noundef 0) #25
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %502, !prof !228

45:                                               ; preds = %42
  %46 = icmp eq i32 %6, 3
  br i1 %46, label %47, label %206, !prof !229

47:                                               ; preds = %45
  %48 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !76
  %49 = and i32 %48, 32
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, i32 128, i32 256, !prof !230
  %52 = tail call i32 @get_pointer_alignment(ptr noundef nonnull %2, i32 noundef %51)
  %53 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !76
  %54 = and i32 %53, 32
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 128, i32 256, !prof !230
  %57 = tail call i32 @get_pointer_alignment(ptr noundef nonnull %1, i32 noundef %56)
  %58 = icmp ne i32 %57, 0
  %59 = icmp ne i32 %52, 0
  %60 = select i1 %58, i1 %59, i1 false, !prof !230
  br i1 %60, label %61, label %497, !prof !230

61:                                               ; preds = %47
  %62 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %2) #25
  %63 = load i64, ptr %62, align 8
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 121
  br i1 %65, label %66, label %79, !prof !231

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.tree_exp, ptr %62, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !72
  %69 = tail call ptr @get_base_address(ptr noundef %68) #25
  %70 = icmp eq ptr %69, null
  br i1 %70, label %79, label %71

71:                                               ; preds = %66
  %72 = load i64, ptr %69, align 8
  %73 = trunc i64 %72 to i16
  switch i16 %73, label %79 [
    i16 28, label %77
    i16 51, label %77
    i16 32, label %74
  ]

74:                                               ; preds = %71
  %75 = and i64 %72, 67108864
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %74, %71, %71
  %78 = tail call zeroext i8 @decl_readonly_section(ptr noundef nonnull %69, i32 noundef 0) #25
  br label %79

79:                                               ; preds = %61, %66, %71, %74, %77
  %80 = phi i8 [ %78, %77 ], [ 0, %61 ], [ 0, %66 ], [ 0, %71 ], [ 0, %74 ]
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %91, !prof !230

82:                                               ; preds = %79
  %83 = tail call i32 @host_integerp(ptr noundef nonnull %3, i32 noundef 1) #25
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %96, label %85, !prof !230

85:                                               ; preds = %82
  %86 = tail call i32 @llvm.smin.i32(i32 %52, i32 %57)
  %87 = sdiv i32 %86, 8
  %88 = sext i32 %87 to i64
  %89 = tail call i64 @tree_low_cst(ptr noundef nonnull %3, i32 noundef 1) #25
  %90 = icmp sgt i64 %89, %88
  br i1 %90, label %96, label %91

91:                                               ; preds = %85, %79
  %92 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 330), align 16, !tbaa !61
  %93 = icmp eq ptr %92, null
  br i1 %93, label %497, label %94

94:                                               ; preds = %91
  %95 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %92, i32 noundef 3, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3)
  br label %497

96:                                               ; preds = %85, %82
  %97 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef %0, ptr noundef nonnull %2) #25
  %98 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef %0, ptr noundef nonnull %1) #25
  %99 = icmp eq ptr %97, null
  br i1 %99, label %497, label %100, !prof !231

100:                                              ; preds = %96
  %101 = load i64, ptr %97, align 8
  %102 = and i64 %101, 524288
  %103 = icmp eq i64 %102, 0
  %104 = icmp ne ptr %98, null
  %105 = select i1 %103, i1 %104, i1 false, !prof !230
  br i1 %105, label %106, label %497, !prof !230

106:                                              ; preds = %100
  %107 = load i64, ptr %98, align 8
  %108 = and i64 %107, 524288
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %497, !prof !230

110:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #25
  store i64 0, ptr %8, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #25
  store i64 0, ptr %9, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #25
  store i64 -1, ptr %10, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #25
  store i64 -1, ptr %11, align 8, !tbaa !82
  %111 = load i64, ptr %97, align 8
  %112 = trunc i64 %111 to i16
  switch i16 %112, label %115 [
    i16 42, label %113
    i16 41, label %113
    i16 45, label %113
    i16 46, label %113
    i16 118, label %113
    i16 43, label %113
    i16 44, label %113
  ], !prof !232

113:                                              ; preds = %110, %110, %110, %110, %110, %110, %110
  %114 = call ptr @get_ref_base_and_extent(ptr noundef nonnull %97, ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %11) #25
  br label %115

115:                                              ; preds = %110, %113
  %116 = phi ptr [ %114, %113 ], [ %97, %110 ]
  %117 = load i64, ptr %98, align 8
  %118 = trunc i64 %117 to i16
  switch i16 %118, label %121 [
    i16 42, label %119
    i16 41, label %119
    i16 45, label %119
    i16 46, label %119
    i16 118, label %119
    i16 43, label %119
    i16 44, label %119
  ], !prof !232

119:                                              ; preds = %115, %115, %115, %115, %115, %115, %115
  %120 = call ptr @get_ref_base_and_extent(ptr noundef nonnull %98, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #25
  br label %121

121:                                              ; preds = %115, %119
  %122 = phi ptr [ %120, %119 ], [ %98, %115 ]
  %123 = call i32 @host_integerp(ptr noundef nonnull %3, i32 noundef 1) #25
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %131, label %125, !prof !230

125:                                              ; preds = %121
  %126 = call i64 @tree_low_cst(ptr noundef nonnull %3, i32 noundef 1) #25
  store i64 %126, ptr %11, align 8, !tbaa !82
  %127 = icmp sgt i64 %126, 1152921504606846975
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i64 -1, ptr %11, align 8, !tbaa !82
  br label %132

129:                                              ; preds = %125
  %130 = shl nsw i64 %126, 3
  store i64 %130, ptr %11, align 8, !tbaa !82
  br label %132

131:                                              ; preds = %121
  store i64 -1, ptr %11, align 8, !tbaa !82
  br label %132

132:                                              ; preds = %128, %129, %131
  %133 = load i64, ptr %116, align 8
  %134 = trunc i64 %133 to i16
  switch i16 %134, label %168 [
    i16 32, label %140
    i16 34, label %140
    i16 36, label %140
    i16 141, label %135
  ], !prof !233

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.tree_ssa_name, ptr %116, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !72
  %138 = load i64, ptr %137, align 8
  %139 = trunc i64 %138 to i16
  switch i16 %139, label %168 [
    i16 32, label %140
    i16 34, label %140
    i16 36, label %140
  ]

140:                                              ; preds = %135, %135, %132, %132, %135, %132
  %141 = load i64, ptr %122, align 8
  %142 = trunc i64 %141 to i16
  switch i16 %142, label %168 [
    i16 32, label %148
    i16 34, label %148
    i16 36, label %148
    i16 141, label %143
  ]

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.tree_ssa_name, ptr %122, i64 0, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !72
  %146 = load i64, ptr %145, align 8
  %147 = trunc i64 %146 to i16
  switch i16 %147, label %168 [
    i16 32, label %148
    i16 34, label %148
    i16 36, label %148
  ]

148:                                              ; preds = %143, %143, %140, %140, %143, %140
  %149 = call i32 @operand_equal_p(ptr noundef nonnull %116, ptr noundef nonnull %122, i32 noundef 0) #25
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %199, label %151

151:                                              ; preds = %148
  %152 = load i64, ptr %8, align 8, !tbaa !82
  %153 = load i64, ptr %11, align 8, !tbaa !82
  %154 = load i64, ptr %9, align 8, !tbaa !82
  %155 = icmp ult i64 %152, %154
  br i1 %155, label %161, label %156

156:                                              ; preds = %151
  %157 = icmp eq i64 %153, -1
  %158 = add i64 %154, %153
  %159 = icmp ugt i64 %158, %152
  %160 = or i1 %157, %159
  br i1 %160, label %204, label %161

161:                                              ; preds = %156, %151
  %162 = icmp ult i64 %154, %152
  br i1 %162, label %199, label %163

163:                                              ; preds = %161
  %164 = icmp eq i64 %153, -1
  %165 = add i64 %153, %152
  %166 = icmp ugt i64 %165, %154
  %167 = or i1 %164, %166
  br i1 %167, label %204, label %199

168:                                              ; preds = %143, %140, %135, %132
  %169 = and i64 %133, 65535
  %170 = icmp eq i64 %169, 47
  br i1 %170, label %171, label %204, !prof !230

171:                                              ; preds = %168
  %172 = load i64, ptr %122, align 8
  %173 = and i64 %172, 65535
  %174 = icmp eq i64 %173, 47
  br i1 %174, label %175, label %204, !prof !230

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.tree_exp, ptr %116, i64 0, i32 3
  %177 = load ptr, ptr %176, align 8, !tbaa !72
  %178 = getelementptr inbounds %struct.tree_exp, ptr %122, i64 0, i32 3
  %179 = load ptr, ptr %178, align 8, !tbaa !72
  %180 = call i32 @operand_equal_p(ptr noundef %177, ptr noundef %179, i32 noundef 0) #25
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %204, label %182, !prof !230

182:                                              ; preds = %175
  %183 = load i64, ptr %8, align 8, !tbaa !82
  %184 = load i64, ptr %11, align 8, !tbaa !82
  %185 = load i64, ptr %9, align 8, !tbaa !82
  %186 = icmp ult i64 %183, %185
  br i1 %186, label %192, label %187

187:                                              ; preds = %182
  %188 = icmp eq i64 %184, -1
  %189 = add i64 %185, %184
  %190 = icmp ugt i64 %189, %183
  %191 = or i1 %188, %190
  br i1 %191, label %204, label %192

192:                                              ; preds = %187, %182
  %193 = icmp ult i64 %185, %183
  br i1 %193, label %199, label %194

194:                                              ; preds = %192
  %195 = icmp eq i64 %184, -1
  %196 = add i64 %184, %183
  %197 = icmp ugt i64 %196, %185
  %198 = or i1 %195, %197
  br i1 %198, label %204, label %199

199:                                              ; preds = %194, %163, %192, %161, %148
  %200 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 330), align 16, !tbaa !61
  %201 = icmp eq ptr %200, null
  br i1 %201, label %204, label %202

202:                                              ; preds = %199
  %203 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %200, i32 noundef 3, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3)
  br label %204

204:                                              ; preds = %199, %194, %187, %163, %156, %168, %171, %175, %202
  %205 = phi ptr [ %203, %202 ], [ null, %175 ], [ null, %171 ], [ null, %168 ], [ null, %156 ], [ null, %163 ], [ null, %187 ], [ null, %194 ], [ null, %199 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #25
  br label %497

206:                                              ; preds = %45
  %207 = tail call i32 @host_integerp(ptr noundef nonnull %3, i32 noundef 0) #25
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %497, label %209, !prof !234

209:                                              ; preds = %206
  %210 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %2) #25
  %211 = tail call ptr @tree_strip_nop_conversions(ptr noundef nonnull %1) #25
  %212 = load i64, ptr %210, align 8
  %213 = and i64 %212, 65535
  %214 = icmp eq i64 %213, 66
  br i1 %214, label %215, label %225

215:                                              ; preds = %209
  %216 = getelementptr inbounds %struct.tree_exp, ptr %210, i64 0, i32 3
  %217 = load ptr, ptr %216, align 8, !tbaa !72
  %218 = tail call ptr @tree_strip_nop_conversions(ptr noundef %217) #25
  %219 = load ptr, ptr %216, align 8, !tbaa !72
  %220 = icmp eq ptr %218, %219
  br i1 %220, label %225, label %221

221:                                              ; preds = %215
  %222 = getelementptr inbounds %struct.tree_common, ptr %218, i64 0, i32 2
  %223 = load ptr, ptr %222, align 8, !tbaa !72
  %224 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef %223, ptr noundef nonnull %210) #25
  br label %225

225:                                              ; preds = %215, %221, %209
  %226 = phi ptr [ %210, %209 ], [ %224, %221 ], [ %210, %215 ]
  %227 = load i64, ptr %211, align 8
  %228 = and i64 %227, 65535
  %229 = icmp eq i64 %228, 66
  br i1 %229, label %230, label %240

230:                                              ; preds = %225
  %231 = getelementptr inbounds %struct.tree_exp, ptr %211, i64 0, i32 3
  %232 = load ptr, ptr %231, align 8, !tbaa !72
  %233 = tail call ptr @tree_strip_nop_conversions(ptr noundef %232) #25
  %234 = load ptr, ptr %231, align 8, !tbaa !72
  %235 = icmp eq ptr %233, %234
  br i1 %235, label %240, label %236

236:                                              ; preds = %230
  %237 = getelementptr inbounds %struct.tree_common, ptr %233, i64 0, i32 2
  %238 = load ptr, ptr %237, align 8, !tbaa !72
  %239 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef %238, ptr noundef nonnull %211) #25
  br label %240

240:                                              ; preds = %230, %236, %225
  %241 = phi ptr [ %211, %225 ], [ %239, %236 ], [ %211, %230 ]
  %242 = getelementptr inbounds %struct.tree_common, ptr %226, i64 0, i32 2
  %243 = load ptr, ptr %242, align 8, !tbaa !72
  %244 = getelementptr inbounds %struct.tree_common, ptr %243, i64 0, i32 2
  %245 = load ptr, ptr %244, align 8, !tbaa !72
  %246 = icmp eq ptr %245, null
  br i1 %246, label %262, label %247

247:                                              ; preds = %240
  %248 = load i64, ptr %245, align 8
  %249 = and i64 %248, 65535
  %250 = icmp eq i64 %249, 15
  br i1 %250, label %251, label %262

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.tree_type, ptr %245, i64 0, i32 3
  %253 = load ptr, ptr %252, align 8, !tbaa !72
  %254 = tail call i32 @tree_int_cst_equal(ptr noundef %253, ptr noundef nonnull %3) #25
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %262

256:                                              ; preds = %251
  %257 = getelementptr inbounds %struct.tree_common, ptr %245, i64 0, i32 2
  %258 = load ptr, ptr %257, align 8, !tbaa !72
  %259 = tail call ptr @tree_strip_nop_conversions(ptr noundef %226) #25
  %260 = tail call ptr @build_pointer_type(ptr noundef %258) #25
  %261 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef %260, ptr noundef %259) #25
  br label %262

262:                                              ; preds = %256, %251, %247, %240
  %263 = phi ptr [ %245, %251 ], [ %258, %256 ], [ %245, %247 ], [ null, %240 ]
  %264 = phi ptr [ %226, %251 ], [ %261, %256 ], [ %226, %247 ], [ %226, %240 ]
  %265 = getelementptr inbounds %struct.tree_common, ptr %241, i64 0, i32 2
  %266 = load ptr, ptr %265, align 8, !tbaa !72
  %267 = getelementptr inbounds %struct.tree_common, ptr %266, i64 0, i32 2
  %268 = load ptr, ptr %267, align 8, !tbaa !72
  %269 = icmp eq ptr %268, null
  br i1 %269, label %285, label %270

270:                                              ; preds = %262
  %271 = load i64, ptr %268, align 8
  %272 = and i64 %271, 65535
  %273 = icmp eq i64 %272, 15
  br i1 %273, label %274, label %285

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.tree_type, ptr %268, i64 0, i32 3
  %276 = load ptr, ptr %275, align 8, !tbaa !72
  %277 = tail call i32 @tree_int_cst_equal(ptr noundef %276, ptr noundef nonnull %3) #25
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %285

279:                                              ; preds = %274
  %280 = getelementptr inbounds %struct.tree_common, ptr %268, i64 0, i32 2
  %281 = load ptr, ptr %280, align 8, !tbaa !72
  %282 = tail call ptr @tree_strip_nop_conversions(ptr noundef %241) #25
  %283 = tail call ptr @build_pointer_type(ptr noundef %281) #25
  %284 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef %283, ptr noundef %282) #25
  br label %285

285:                                              ; preds = %279, %274, %270, %262
  %286 = phi ptr [ %268, %274 ], [ %281, %279 ], [ %268, %270 ], [ null, %262 ]
  %287 = phi ptr [ %241, %274 ], [ %284, %279 ], [ %241, %270 ], [ %241, %262 ]
  %288 = icmp ne ptr %263, null
  %289 = icmp ne ptr %286, null
  %290 = select i1 %288, i1 %289, i1 false
  br i1 %290, label %291, label %497

291:                                              ; preds = %285
  %292 = getelementptr inbounds %struct.tree_type, ptr %263, i64 0, i32 3
  %293 = load ptr, ptr %292, align 8, !tbaa !72
  %294 = icmp eq ptr %293, null
  br i1 %294, label %497, label %295

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.tree_type, ptr %286, i64 0, i32 3
  %297 = load ptr, ptr %296, align 8, !tbaa !72
  %298 = icmp eq ptr %297, null
  br i1 %298, label %497, label %299

299:                                              ; preds = %295
  %300 = load i64, ptr %293, align 8
  %301 = and i64 %300, 65535
  %302 = icmp eq i64 %301, 23
  br i1 %302, label %303, label %497

303:                                              ; preds = %299
  %304 = load i64, ptr %297, align 8
  %305 = and i64 %304, 65535
  %306 = icmp eq i64 %305, 23
  br i1 %306, label %307, label %497

307:                                              ; preds = %303
  %308 = load i64, ptr %263, align 8
  %309 = and i64 %308, 524288
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %311, label %497

311:                                              ; preds = %307
  %312 = load i64, ptr %286, align 8
  %313 = and i64 %312, 524288
  %314 = icmp eq i64 %313, 0
  br i1 %314, label %315, label %497

315:                                              ; preds = %311
  %316 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !76
  %317 = and i32 %316, 32
  %318 = icmp eq i32 %317, 0
  %319 = select i1 %318, i32 128, i32 256
  %320 = tail call i32 @get_pointer_alignment(ptr noundef %264, i32 noundef %319)
  %321 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !76
  %322 = and i32 %321, 32
  %323 = icmp eq i32 %322, 0
  %324 = select i1 %323, i32 128, i32 256
  %325 = tail call i32 @get_pointer_alignment(ptr noundef %287, i32 noundef %324)
  %326 = getelementptr inbounds %struct.tree_type, ptr %286, i64 0, i32 7
  %327 = load i32, ptr %326, align 8, !tbaa !72
  %328 = icmp slt i32 %325, %327
  br i1 %328, label %497, label %329

329:                                              ; preds = %315
  %330 = getelementptr inbounds %struct.tree_type, ptr %263, i64 0, i32 7
  %331 = load i32, ptr %330, align 8, !tbaa !72
  %332 = icmp slt i32 %320, %331
  br i1 %332, label %497, label %333

333:                                              ; preds = %329
  %334 = icmp eq i8 %5, 0
  br i1 %334, label %335, label %346

335:                                              ; preds = %333
  %336 = load i64, ptr %287, align 8
  %337 = and i64 %336, 262144
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %339, label %344

339:                                              ; preds = %335
  %340 = trunc i64 %336 to i16
  switch i16 %340, label %344 [
    i16 34, label %346
    i16 32, label %341
  ]

341:                                              ; preds = %339
  %342 = and i64 %336, 67108864
  %343 = icmp eq i64 %342, 0
  br i1 %343, label %346, label %344

344:                                              ; preds = %341, %339, %335
  %345 = tail call ptr @save_expr(ptr noundef nonnull %287) #25
  br label %346

346:                                              ; preds = %344, %341, %339, %333
  %347 = phi ptr [ %287, %333 ], [ %345, %344 ], [ %287, %339 ], [ %287, %341 ]
  %348 = load ptr, ptr %292, align 8, !tbaa !72
  %349 = tail call i32 @tree_int_cst_equal(ptr noundef %348, ptr noundef nonnull %3) #25
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %364, label %351

351:                                              ; preds = %346
  %352 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef %0, ptr noundef %264) #25
  %353 = load i64, ptr %352, align 8
  %354 = and i64 %353, 524288
  %355 = icmp eq i64 %354, 0
  br i1 %355, label %356, label %497

356:                                              ; preds = %351
  %357 = tail call ptr @tree_expr_size(ptr noundef nonnull %352) #25
  %358 = tail call i32 @tree_int_cst_equal(ptr noundef %357, ptr noundef nonnull %3) #25
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %364, label %360

360:                                              ; preds = %356
  %361 = tail call fastcc zeroext i8 @var_decl_component_p(ptr noundef nonnull %352), !range !141
  %362 = icmp eq i8 %361, 0
  %363 = select i1 %362, ptr null, ptr %352
  br label %364

364:                                              ; preds = %360, %356, %346
  %365 = phi ptr [ null, %346 ], [ null, %356 ], [ %363, %360 ]
  %366 = load ptr, ptr %296, align 8, !tbaa !72
  %367 = tail call i32 @tree_int_cst_equal(ptr noundef %366, ptr noundef nonnull %3) #25
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %382, label %369

369:                                              ; preds = %364
  %370 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef %0, ptr noundef %347) #25
  %371 = load i64, ptr %370, align 8
  %372 = and i64 %371, 524288
  %373 = icmp eq i64 %372, 0
  br i1 %373, label %374, label %497

374:                                              ; preds = %369
  %375 = tail call ptr @tree_expr_size(ptr noundef nonnull %370) #25
  %376 = tail call i32 @tree_int_cst_equal(ptr noundef %375, ptr noundef nonnull %3) #25
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %382, label %378

378:                                              ; preds = %374
  %379 = tail call fastcc zeroext i8 @var_decl_component_p(ptr noundef nonnull %370), !range !141
  %380 = icmp eq i8 %379, 0
  %381 = select i1 %380, ptr null, ptr %370
  br label %382

382:                                              ; preds = %378, %374, %364
  %383 = phi ptr [ null, %364 ], [ null, %374 ], [ %381, %378 ]
  %384 = icmp eq ptr %365, null
  %385 = icmp eq ptr %383, null
  %386 = and i1 %384, %385
  br i1 %386, label %497, label %387

387:                                              ; preds = %382
  br i1 %384, label %388, label %420

388:                                              ; preds = %387
  %389 = getelementptr inbounds %struct.tree_common, ptr %383, i64 0, i32 2
  %390 = load ptr, ptr %389, align 8, !tbaa !72
  %391 = load i64, ptr %390, align 8
  %392 = and i64 %391, 262144
  %393 = icmp eq i64 %392, 0
  br i1 %393, label %394, label %416

394:                                              ; preds = %388
  %395 = tail call ptr @build_qualified_type(ptr noundef nonnull %286, i32 noundef 0) #25
  %396 = getelementptr inbounds %struct.tree_type, ptr %395, i64 0, i32 7
  %397 = load i32, ptr %396, align 8, !tbaa !72
  %398 = icmp slt i32 %320, %397
  br i1 %398, label %399, label %410

399:                                              ; preds = %394
  %400 = load i64, ptr %395, align 8
  %401 = trunc i64 %400 to i32
  %402 = and i32 %401, 65535
  %403 = add nsw i32 %402, -15
  %404 = icmp ult i32 %403, 4
  br i1 %404, label %416, label %405

405:                                              ; preds = %399
  %406 = tail call ptr @build_variant_type_copy(ptr noundef nonnull %395) #25
  %407 = getelementptr inbounds %struct.tree_type, ptr %406, i64 0, i32 7
  store i32 %320, ptr %407, align 8, !tbaa !72
  %408 = load i64, ptr %406, align 8
  %409 = or i64 %408, 6597069766656
  store i64 %409, ptr %406, align 8
  br label %410

410:                                              ; preds = %405, %394
  %411 = phi ptr [ %406, %405 ], [ %395, %394 ]
  %412 = load i32, ptr @ptr_mode, align 4, !tbaa !76
  %413 = tail call ptr @build_pointer_type_for_mode(ptr noundef %411, i32 noundef %412, i8 noundef zeroext 1) #25
  %414 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %413, ptr noundef %264) #25
  %415 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef %0, ptr noundef %414) #25
  br label %416

416:                                              ; preds = %399, %388, %410
  %417 = phi ptr [ %415, %410 ], [ null, %388 ], [ null, %399 ]
  %418 = phi i1 [ true, %410 ], [ false, %388 ], [ false, %399 ]
  %419 = phi ptr [ %411, %410 ], [ %263, %388 ], [ %395, %399 ]
  br i1 %418, label %454, label %497

420:                                              ; preds = %387
  br i1 %385, label %421, label %454

421:                                              ; preds = %420
  %422 = getelementptr inbounds %struct.tree_common, ptr %365, i64 0, i32 2
  %423 = load ptr, ptr %422, align 8, !tbaa !72
  %424 = load i64, ptr %423, align 8
  %425 = and i64 %424, 262144
  %426 = icmp eq i64 %425, 0
  br i1 %426, label %427, label %449

427:                                              ; preds = %421
  %428 = tail call ptr @build_qualified_type(ptr noundef nonnull %263, i32 noundef 0) #25
  %429 = getelementptr inbounds %struct.tree_type, ptr %428, i64 0, i32 7
  %430 = load i32, ptr %429, align 8, !tbaa !72
  %431 = icmp slt i32 %325, %430
  br i1 %431, label %432, label %443

432:                                              ; preds = %427
  %433 = load i64, ptr %428, align 8
  %434 = trunc i64 %433 to i32
  %435 = and i32 %434, 65535
  %436 = add nsw i32 %435, -15
  %437 = icmp ult i32 %436, 4
  br i1 %437, label %449, label %438

438:                                              ; preds = %432
  %439 = tail call ptr @build_variant_type_copy(ptr noundef nonnull %428) #25
  %440 = getelementptr inbounds %struct.tree_type, ptr %439, i64 0, i32 7
  store i32 %325, ptr %440, align 8, !tbaa !72
  %441 = load i64, ptr %439, align 8
  %442 = or i64 %441, 6597069766656
  store i64 %442, ptr %439, align 8
  br label %443

443:                                              ; preds = %438, %427
  %444 = phi ptr [ %439, %438 ], [ %428, %427 ]
  %445 = load i32, ptr @ptr_mode, align 4, !tbaa !76
  %446 = tail call ptr @build_pointer_type_for_mode(ptr noundef %444, i32 noundef %445, i8 noundef zeroext 1) #25
  %447 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %446, ptr noundef %347) #25
  %448 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef %0, ptr noundef %447) #25
  br label %449

449:                                              ; preds = %432, %421, %443
  %450 = phi ptr [ %448, %443 ], [ null, %421 ], [ null, %432 ]
  %451 = phi i1 [ true, %443 ], [ false, %421 ], [ false, %432 ]
  %452 = phi ptr [ %444, %443 ], [ %286, %421 ], [ %428, %432 ]
  %453 = phi ptr [ %447, %443 ], [ %347, %421 ], [ %347, %432 ]
  br i1 %451, label %454, label %497

454:                                              ; preds = %420, %449, %416
  %455 = phi ptr [ %383, %416 ], [ %450, %449 ], [ %383, %420 ]
  %456 = phi ptr [ %417, %416 ], [ %365, %449 ], [ %365, %420 ]
  %457 = phi ptr [ %419, %416 ], [ %263, %449 ], [ %263, %420 ]
  %458 = phi ptr [ %286, %416 ], [ %452, %449 ], [ %286, %420 ]
  %459 = phi ptr [ %347, %416 ], [ %453, %449 ], [ %347, %420 ]
  %460 = icmp eq ptr %457, %458
  br i1 %460, label %492, label %461

461:                                              ; preds = %454
  %462 = load ptr, ptr @cfun, align 8, !tbaa !61
  %463 = icmp eq ptr %462, null
  br i1 %463, label %476, label %464

464:                                              ; preds = %461
  %465 = getelementptr inbounds %struct.function, ptr %462, i64 0, i32 3
  %466 = load ptr, ptr %465, align 8, !tbaa !235
  %467 = icmp eq ptr %466, null
  br i1 %467, label %476, label %468

468:                                              ; preds = %464
  %469 = getelementptr inbounds %struct.gimple_df, ptr %466, i64 0, i32 10
  %470 = load i8, ptr %469, align 8
  %471 = and i8 %470, 1
  %472 = icmp eq i8 %471, 0
  br i1 %472, label %476, label %473

473:                                              ; preds = %468
  %474 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %458, ptr noundef %457) #25
  %475 = icmp eq i8 %474, 0
  br i1 %475, label %476, label %492

476:                                              ; preds = %464, %461, %473, %468
  %477 = getelementptr inbounds %struct.tree_common, ptr %456, i64 0, i32 2
  %478 = load ptr, ptr %477, align 8, !tbaa !72
  %479 = load i64, ptr %478, align 8
  %480 = trunc i64 %479 to i16
  switch i16 %480, label %488 [
    i16 6, label %481
    i16 7, label %481
    i16 8, label %481
    i16 10, label %481
    i16 12, label %481
  ]

481:                                              ; preds = %476, %476, %476, %476, %476
  %482 = getelementptr inbounds %struct.tree_common, ptr %455, i64 0, i32 2
  %483 = load ptr, ptr %482, align 8, !tbaa !72
  %484 = load i64, ptr %483, align 8
  %485 = trunc i64 %484 to i16
  switch i16 %485, label %488 [
    i16 6, label %486
    i16 7, label %486
    i16 8, label %486
    i16 10, label %486
    i16 12, label %486
  ]

486:                                              ; preds = %481, %481, %481, %481, %481
  %487 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef nonnull %483, ptr noundef %456) #25
  br label %492

488:                                              ; preds = %481, %476
  %489 = getelementptr inbounds %struct.tree_common, ptr %455, i64 0, i32 2
  %490 = load ptr, ptr %489, align 8, !tbaa !72
  %491 = tail call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 118, ptr noundef %490, ptr noundef %456) #25
  br label %492

492:                                              ; preds = %454, %473, %486, %488
  %493 = phi ptr [ %487, %486 ], [ %491, %488 ], [ %456, %473 ], [ %456, %454 ]
  %494 = getelementptr inbounds %struct.tree_common, ptr %455, i64 0, i32 2
  %495 = load ptr, ptr %494, align 8, !tbaa !72
  %496 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %495, ptr noundef %455, ptr noundef %493) #25
  br label %497

497:                                              ; preds = %449, %96, %382, %369, %351, %315, %329, %285, %291, %295, %299, %303, %307, %311, %206, %100, %106, %94, %91, %47, %416, %492, %204
  %498 = phi ptr [ undef, %204 ], [ %496, %492 ], [ undef, %416 ], [ undef, %47 ], [ undef, %91 ], [ undef, %94 ], [ undef, %106 ], [ undef, %100 ], [ undef, %206 ], [ undef, %311 ], [ undef, %307 ], [ undef, %303 ], [ undef, %299 ], [ undef, %295 ], [ undef, %291 ], [ undef, %285 ], [ undef, %329 ], [ undef, %315 ], [ undef, %351 ], [ undef, %369 ], [ undef, %382 ], [ undef, %96 ], [ undef, %449 ]
  %499 = phi i1 [ false, %204 ], [ true, %492 ], [ false, %416 ], [ false, %47 ], [ false, %91 ], [ false, %94 ], [ false, %106 ], [ false, %100 ], [ false, %206 ], [ false, %311 ], [ false, %307 ], [ false, %303 ], [ false, %299 ], [ false, %295 ], [ false, %291 ], [ false, %285 ], [ false, %329 ], [ false, %315 ], [ false, %351 ], [ false, %369 ], [ false, %382 ], [ false, %96 ], [ false, %449 ]
  %500 = phi ptr [ %1, %204 ], [ %459, %492 ], [ %347, %416 ], [ %1, %47 ], [ %1, %91 ], [ %1, %94 ], [ %1, %106 ], [ %1, %100 ], [ %1, %206 ], [ %287, %311 ], [ %287, %307 ], [ %287, %303 ], [ %287, %299 ], [ %287, %295 ], [ %287, %291 ], [ %287, %285 ], [ %287, %329 ], [ %287, %315 ], [ %347, %351 ], [ %347, %369 ], [ %347, %382 ], [ %1, %96 ], [ %453, %449 ]
  %501 = phi ptr [ %205, %204 ], [ null, %492 ], [ null, %416 ], [ null, %47 ], [ null, %91 ], [ %95, %94 ], [ null, %106 ], [ null, %100 ], [ null, %206 ], [ null, %311 ], [ null, %307 ], [ null, %303 ], [ null, %299 ], [ null, %295 ], [ null, %291 ], [ null, %285 ], [ null, %329 ], [ null, %315 ], [ null, %351 ], [ null, %369 ], [ null, %382 ], [ null, %96 ], [ null, %449 ]
  br i1 %499, label %502, label %528, !prof !226

502:                                              ; preds = %42, %497
  %503 = phi ptr [ %498, %497 ], [ %3, %42 ]
  %504 = phi ptr [ %500, %497 ], [ %1, %42 ]
  %505 = icmp eq i8 %5, 0
  br i1 %505, label %506, label %528

506:                                              ; preds = %502
  switch i32 %6, label %509 [
    i32 3, label %507
    i32 0, label %507
  ]

507:                                              ; preds = %506, %506
  %508 = call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %4, ptr noundef %504, ptr noundef %503) #25
  br label %528

509:                                              ; preds = %506
  %510 = icmp eq ptr %503, %3
  %511 = select i1 %510, ptr null, ptr %503
  %512 = icmp eq i32 %6, 2
  br i1 %512, label %513, label %517

513:                                              ; preds = %509
  %514 = load ptr, ptr %28, align 8, !tbaa !72
  %515 = call ptr @size_int_kind(i64 noundef 1, i32 noundef 1) #25
  %516 = call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 64, ptr noundef %514, ptr noundef nonnull %3, ptr noundef %515) #25
  br label %517

517:                                              ; preds = %513, %509
  %518 = phi ptr [ %516, %513 ], [ %3, %509 ]
  %519 = load ptr, ptr @sizetype_tab, align 16, !tbaa !61
  %520 = call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %519, ptr noundef %518) #25
  %521 = getelementptr inbounds %struct.tree_common, ptr %504, i64 0, i32 2
  %522 = load ptr, ptr %521, align 8, !tbaa !72
  %523 = call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 66, ptr noundef %522, ptr noundef %504, ptr noundef %520) #25
  %524 = call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %4, ptr noundef %523) #25
  %525 = icmp eq ptr %511, null
  br i1 %525, label %528, label %526

526:                                              ; preds = %517
  %527 = call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %4, ptr noundef %524, ptr noundef nonnull %511) #25
  br label %528

528:                                              ; preds = %497, %25, %18, %27, %20, %13, %7, %517, %526, %502, %507, %40
  %529 = phi ptr [ %41, %40 ], [ %508, %507 ], [ null, %20 ], [ null, %13 ], [ %503, %502 ], [ %527, %526 ], [ %524, %517 ], [ null, %7 ], [ null, %27 ], [ null, %18 ], [ null, %25 ], [ %501, %497 ]
  ret ptr %529
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_strncat(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #14 !prof !60 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %56, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %56 [
    i16 12, label %11
    i16 10, label %11
  ]

11:                                               ; preds = %6, %6
  %12 = icmp eq ptr %2, null
  br i1 %12, label %56, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i16
  switch i16 %17, label %56 [
    i16 12, label %18
    i16 10, label %18
  ]

18:                                               ; preds = %13, %13
  %19 = icmp eq ptr %3, null
  br i1 %19, label %56, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !72
  %23 = load i64, ptr %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = and i32 %24, 65534
  %26 = icmp ne i32 %25, 6
  %27 = and i32 %24, 65535
  %28 = icmp ne i32 %27, 8
  %29 = and i1 %26, %28
  br i1 %29, label %56, label %30

30:                                               ; preds = %20
  %31 = tail call fastcc ptr @c_getstr(ptr noundef nonnull %2)
  %32 = tail call i32 @integer_zerop(ptr noundef nonnull %3) #25
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = icmp ne ptr %31, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %34
  %37 = load i8, ptr %31, align 1, !tbaa !72
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36, %30
  %40 = load ptr, ptr %7, align 8, !tbaa !72
  %41 = tail call ptr @omit_two_operands_loc(i32 noundef %0, ptr noundef %40, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  br label %56

42:                                               ; preds = %36, %34
  %43 = load i64, ptr %3, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 23
  %46 = and i1 %35, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %31)
  %49 = tail call i32 @compare_tree_int(ptr noundef nonnull %3, i64 noundef %48) #25
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 338), align 16, !tbaa !61
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %52, i32 noundef 2, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %56

56:                                               ; preds = %18, %11, %20, %13, %6, %4, %39, %51, %54, %47, %42
  %57 = phi ptr [ null, %13 ], [ null, %6 ], [ %41, %39 ], [ %55, %54 ], [ null, %51 ], [ null, %47 ], [ null, %42 ], [ null, %4 ], [ null, %20 ], [ null, %11 ], [ null, %18 ]
  ret ptr %57
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_strncmp(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #14 !prof !60 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %124, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %124 [
    i16 12, label %11
    i16 10, label %11
  ]

11:                                               ; preds = %6, %6
  %12 = icmp eq ptr %2, null
  br i1 %12, label %124, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i16
  switch i16 %17, label %124 [
    i16 12, label %18
    i16 10, label %18
  ]

18:                                               ; preds = %13, %13
  %19 = icmp eq ptr %3, null
  br i1 %19, label %124, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !72
  %23 = load i64, ptr %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = and i32 %24, 65534
  %26 = icmp ne i32 %25, 6
  %27 = and i32 %24, 65535
  %28 = icmp ne i32 %27, 8
  %29 = and i1 %26, %28
  br i1 %29, label %124, label %30

30:                                               ; preds = %20
  %31 = tail call i32 @integer_zerop(ptr noundef nonnull %3) #25
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %35 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !61
  %36 = tail call ptr @omit_two_operands_loc(i32 noundef %0, ptr noundef %34, ptr noundef %35, ptr noundef nonnull %1, ptr noundef nonnull %2) #25
  br label %124

37:                                               ; preds = %30
  %38 = tail call i32 @operand_equal_p(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 0) #25
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %42 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !61
  %43 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %41, ptr noundef %42, ptr noundef nonnull %3) #25
  br label %124

44:                                               ; preds = %37
  %45 = tail call fastcc ptr @c_getstr(ptr noundef nonnull %1)
  %46 = tail call fastcc ptr @c_getstr(ptr noundef nonnull %2)
  %47 = tail call i32 @host_integerp(ptr noundef nonnull %3, i32 noundef 1) #25
  %48 = icmp ne i32 %47, 0
  %49 = icmp ne ptr %45, null
  %50 = select i1 %48, i1 %49, i1 false
  %51 = icmp ne ptr %46, null
  %52 = select i1 %50, i1 %51, i1 false
  br i1 %52, label %53, label %61

53:                                               ; preds = %44
  %54 = tail call i64 @tree_low_cst(ptr noundef nonnull %3, i32 noundef 1) #25
  %55 = tail call i32 @strncmp(ptr noundef nonnull %45, ptr noundef nonnull %46, i64 noundef %54)
  %56 = icmp sgt i32 %55, 0
  %57 = icmp slt i32 %55, 0
  %58 = select i1 %57, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 15), ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13)
  %59 = select i1 %56, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), ptr %58
  %60 = load ptr, ptr %59, align 8, !tbaa !61
  br label %124

61:                                               ; preds = %44
  br i1 %51, label %62, label %81

62:                                               ; preds = %61
  %63 = load i8, ptr %46, align 1, !tbaa !72
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %62
  %66 = load i64, ptr %3, align 8
  %67 = and i64 %66, 65535
  %68 = icmp eq i64 %67, 23
  br i1 %68, label %69, label %81

69:                                               ; preds = %65
  %70 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %3) #25
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 2), align 16, !tbaa !61
  %74 = tail call ptr @build_qualified_type(ptr noundef %73, i32 noundef 1) #25
  %75 = load i32, ptr @ptr_mode, align 4, !tbaa !76
  %76 = tail call ptr @build_pointer_type_for_mode(ptr noundef %74, i32 noundef %75, i8 noundef zeroext 1) #25
  %77 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %78 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %76, ptr noundef nonnull %1) #25
  %79 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %74, ptr noundef %78) #25
  %80 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %77, ptr noundef %79) #25
  br label %124

81:                                               ; preds = %69, %65, %62, %61
  br i1 %49, label %82, label %103

82:                                               ; preds = %81
  %83 = load i8, ptr %45, align 1, !tbaa !72
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %103

85:                                               ; preds = %82
  %86 = load i64, ptr %3, align 8
  %87 = and i64 %86, 65535
  %88 = icmp eq i64 %87, 23
  br i1 %88, label %89, label %103

89:                                               ; preds = %85
  %90 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %3) #25
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %103

92:                                               ; preds = %89
  %93 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 2), align 16, !tbaa !61
  %94 = tail call ptr @build_qualified_type(ptr noundef %93, i32 noundef 1) #25
  %95 = load i32, ptr @ptr_mode, align 4, !tbaa !76
  %96 = tail call ptr @build_pointer_type_for_mode(ptr noundef %94, i32 noundef %95, i8 noundef zeroext 1) #25
  %97 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %98 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %96, ptr noundef nonnull %2) #25
  %99 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %94, ptr noundef %98) #25
  %100 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %97, ptr noundef %99) #25
  %101 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %102 = tail call ptr @fold_build1_stat_loc(i32 noundef %0, i32 noundef 79, ptr noundef %101, ptr noundef %100) #25
  br label %124

103:                                              ; preds = %89, %85, %82, %81
  %104 = tail call i32 @host_integerp(ptr noundef nonnull %3, i32 noundef 1) #25
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %124, label %106

106:                                              ; preds = %103
  %107 = tail call i64 @tree_low_cst(ptr noundef nonnull %3, i32 noundef 1) #25
  %108 = icmp eq i64 %107, 1
  br i1 %108, label %109, label %124

109:                                              ; preds = %106
  %110 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 2), align 16, !tbaa !61
  %111 = tail call ptr @build_qualified_type(ptr noundef %110, i32 noundef 1) #25
  %112 = load i32, ptr @ptr_mode, align 4, !tbaa !76
  %113 = tail call ptr @build_pointer_type_for_mode(ptr noundef %111, i32 noundef %112, i8 noundef zeroext 1) #25
  %114 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %115 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %113, ptr noundef nonnull %1) #25
  %116 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %111, ptr noundef %115) #25
  %117 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %114, ptr noundef %116) #25
  %118 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %119 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %113, ptr noundef nonnull %2) #25
  %120 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %111, ptr noundef %119) #25
  %121 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %118, ptr noundef %120) #25
  %122 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %123 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 64, ptr noundef %122, ptr noundef %117, ptr noundef %121) #25
  br label %124

124:                                              ; preds = %20, %13, %6, %18, %11, %4, %103, %106, %109, %92, %72, %53, %40, %33
  %125 = phi ptr [ %36, %33 ], [ %43, %40 ], [ %60, %53 ], [ %80, %72 ], [ %102, %92 ], [ %123, %109 ], [ null, %13 ], [ null, %6 ], [ null, %106 ], [ null, %103 ], [ null, %4 ], [ null, %11 ], [ null, %18 ], [ null, %20 ]
  ret ptr %125
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_memchr(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #14 !prof !60 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %78, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %78 [
    i16 12, label %12
    i16 10, label %12
  ]

12:                                               ; preds = %7, %7
  %13 = icmp eq ptr %2, null
  br i1 %13, label %78, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !72
  %17 = load i64, ptr %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = and i32 %18, 65534
  %20 = icmp eq i32 %19, 6
  br i1 %20, label %26, label %21

21:                                               ; preds = %14
  %22 = and i32 %18, 65535
  %23 = icmp ne i32 %22, 8
  %24 = icmp eq ptr %3, null
  %25 = or i1 %24, %23
  br i1 %25, label %78, label %28

26:                                               ; preds = %14
  %27 = icmp eq ptr %3, null
  br i1 %27, label %78, label %28

28:                                               ; preds = %21, %26
  %29 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !72
  %31 = load i64, ptr %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = and i32 %32, 65534
  %34 = icmp ne i32 %33, 6
  %35 = and i32 %32, 65535
  %36 = icmp ne i32 %35, 8
  %37 = and i1 %34, %36
  br i1 %37, label %78, label %38

38:                                               ; preds = %28
  %39 = load i64, ptr %2, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 23
  br i1 %41, label %42, label %78

42:                                               ; preds = %38
  %43 = tail call i32 @host_integerp(ptr noundef %3, i32 noundef 1) #25
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %78, label %45

45:                                               ; preds = %42
  %46 = tail call fastcc ptr @c_getstr(ptr noundef nonnull %1)
  %47 = icmp eq ptr %46, null
  br i1 %47, label %78, label %48

48:                                               ; preds = %45
  %49 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %46)
  %50 = add i64 %49, 1
  %51 = tail call i32 @compare_tree_int(ptr noundef %3, i64 noundef %50) #25
  %52 = icmp slt i32 %51, 1
  br i1 %52, label %53, label %78

53:                                               ; preds = %48
  %54 = tail call i32 @host_integerp(ptr noundef nonnull %2, i32 noundef 1) #25
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = tail call i64 @tree_low_cst(ptr noundef nonnull %2, i32 noundef 1) #25
  %58 = trunc i64 %57 to i32
  %59 = shl i32 %58, 24
  %60 = ashr exact i32 %59, 24
  br label %61

61:                                               ; preds = %53, %56
  %62 = phi i32 [ 0, %53 ], [ %60, %56 ]
  br i1 %55, label %78, label %63

63:                                               ; preds = %61
  %64 = tail call i64 @tree_low_cst(ptr noundef %3, i32 noundef 1) #25
  %65 = tail call ptr @memchr(ptr noundef nonnull %46, i32 noundef %62, i64 noundef %64)
  %66 = icmp eq ptr %65, null
  %67 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !72
  br i1 %66, label %69, label %71

69:                                               ; preds = %63
  %70 = tail call ptr @build_int_cst(ptr noundef %68, i64 noundef 0) #25
  br label %78

71:                                               ; preds = %63
  %72 = ptrtoint ptr %65 to i64
  %73 = ptrtoint ptr %46 to i64
  %74 = sub i64 %72, %73
  %75 = tail call ptr @size_int_kind(i64 noundef %74, i32 noundef 0) #25
  %76 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 66, ptr noundef %68, ptr noundef nonnull %1, ptr noundef %75) #25
  %77 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %4, ptr noundef %76) #25
  br label %78

78:                                               ; preds = %28, %7, %26, %12, %5, %69, %71, %61, %42, %38, %48, %45, %21
  %79 = phi ptr [ null, %21 ], [ null, %7 ], [ null, %42 ], [ null, %38 ], [ null, %48 ], [ null, %45 ], [ %70, %69 ], [ %77, %71 ], [ null, %61 ], [ null, %5 ], [ null, %12 ], [ null, %26 ], [ null, %28 ]
  ret ptr %79
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_memcmp(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #14 !prof !60 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %92, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %92 [
    i16 12, label %11
    i16 10, label %11
  ]

11:                                               ; preds = %6, %6
  %12 = icmp eq ptr %2, null
  br i1 %12, label %92, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !72
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i16
  switch i16 %17, label %92 [
    i16 12, label %18
    i16 10, label %18
  ]

18:                                               ; preds = %13, %13
  %19 = icmp eq ptr %3, null
  br i1 %19, label %92, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !72
  %23 = load i64, ptr %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = and i32 %24, 65534
  %26 = icmp ne i32 %25, 6
  %27 = and i32 %24, 65535
  %28 = icmp ne i32 %27, 8
  %29 = and i1 %26, %28
  br i1 %29, label %92, label %30

30:                                               ; preds = %20
  %31 = tail call i32 @integer_zerop(ptr noundef nonnull %3) #25
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %35 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !61
  %36 = tail call ptr @omit_two_operands_loc(i32 noundef %0, ptr noundef %34, ptr noundef %35, ptr noundef nonnull %1, ptr noundef nonnull %2) #25
  br label %92

37:                                               ; preds = %30
  %38 = tail call i32 @operand_equal_p(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 0) #25
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %42 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !61
  %43 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %41, ptr noundef %42, ptr noundef nonnull %3) #25
  br label %92

44:                                               ; preds = %37
  %45 = tail call fastcc ptr @c_getstr(ptr noundef nonnull %1)
  %46 = tail call fastcc ptr @c_getstr(ptr noundef nonnull %2)
  %47 = tail call i32 @host_integerp(ptr noundef nonnull %3, i32 noundef 1) #25
  %48 = icmp ne i32 %47, 0
  %49 = icmp ne ptr %45, null
  %50 = select i1 %48, i1 %49, i1 false
  %51 = icmp ne ptr %46, null
  %52 = select i1 %50, i1 %51, i1 false
  br i1 %52, label %53, label %71

53:                                               ; preds = %44
  %54 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %45)
  %55 = add i64 %54, 1
  %56 = tail call i32 @compare_tree_int(ptr noundef nonnull %3, i64 noundef %55) #25
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %46)
  %60 = add i64 %59, 1
  %61 = tail call i32 @compare_tree_int(ptr noundef nonnull %3, i64 noundef %60) #25
  %62 = icmp slt i32 %61, 1
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = tail call i64 @tree_low_cst(ptr noundef nonnull %3, i32 noundef 1) #25
  %65 = tail call i32 @memcmp(ptr noundef nonnull %45, ptr noundef nonnull %46, i64 noundef %64)
  %66 = icmp sgt i32 %65, 0
  %67 = icmp slt i32 %65, 0
  %68 = select i1 %67, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 15), ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13)
  %69 = select i1 %66, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), ptr %68
  %70 = load ptr, ptr %69, align 8, !tbaa !61
  br label %92

71:                                               ; preds = %58, %53, %44
  %72 = tail call i32 @host_integerp(ptr noundef nonnull %3, i32 noundef 1) #25
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %92, label %74

74:                                               ; preds = %71
  %75 = tail call i64 @tree_low_cst(ptr noundef nonnull %3, i32 noundef 1) #25
  %76 = icmp eq i64 %75, 1
  br i1 %76, label %77, label %92

77:                                               ; preds = %74
  %78 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 2), align 16, !tbaa !61
  %79 = tail call ptr @build_qualified_type(ptr noundef %78, i32 noundef 1) #25
  %80 = load i32, ptr @ptr_mode, align 4, !tbaa !76
  %81 = tail call ptr @build_pointer_type_for_mode(ptr noundef %79, i32 noundef %80, i8 noundef zeroext 1) #25
  %82 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %83 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %81, ptr noundef nonnull %1) #25
  %84 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %79, ptr noundef %83) #25
  %85 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %82, ptr noundef %84) #25
  %86 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %87 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %81, ptr noundef nonnull %2) #25
  %88 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %79, ptr noundef %87) #25
  %89 = tail call ptr @fold_convert_loc(i32 noundef %0, ptr noundef %86, ptr noundef %88) #25
  %90 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !61
  %91 = tail call ptr @fold_build2_stat_loc(i32 noundef %0, i32 noundef 64, ptr noundef %90, ptr noundef %85, ptr noundef %89) #25
  br label %92

92:                                               ; preds = %20, %13, %6, %18, %11, %4, %71, %74, %77, %63, %40, %33
  %93 = phi ptr [ %36, %33 ], [ %43, %40 ], [ %70, %63 ], [ %91, %77 ], [ null, %13 ], [ null, %6 ], [ null, %74 ], [ null, %71 ], [ null, %4 ], [ null, %11 ], [ null, %18 ], [ null, %20 ]
  ret ptr %93
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_strcat_chk(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #14 !prof !60 {
  %6 = icmp eq ptr %2, null
  br i1 %6, label %54, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !72
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %54 [
    i16 12, label %12
    i16 10, label %12
  ]

12:                                               ; preds = %7, %7
  %13 = icmp eq ptr %3, null
  br i1 %13, label %54, label %14

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !72
  %17 = load i64, ptr %16, align 8
  %18 = trunc i64 %17 to i16
  switch i16 %18, label %54 [
    i16 12, label %19
    i16 10, label %19
  ]

19:                                               ; preds = %14, %14
  %20 = icmp eq ptr %4, null
  br i1 %20, label %54, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !72
  %24 = load i64, ptr %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = and i32 %25, 65534
  %27 = icmp ne i32 %26, 6
  %28 = and i32 %25, 65535
  %29 = icmp ne i32 %28, 8
  %30 = and i1 %27, %29
  br i1 %30, label %54, label %31

31:                                               ; preds = %21
  %32 = tail call fastcc ptr @c_getstr(ptr noundef nonnull %3)
  %33 = icmp eq ptr %32, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %31
  %35 = load i8, ptr %32, align 1, !tbaa !72
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !72
  %40 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !72
  %42 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %41, ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  br label %54

43:                                               ; preds = %34, %31
  %44 = tail call i32 @host_integerp(ptr noundef nonnull %4, i32 noundef 1) #25
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %43
  %47 = tail call i32 @integer_all_onesp(ptr noundef nonnull %4) #25
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 338), align 16, !tbaa !61
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %50, i32 noundef 2, ptr noundef nonnull %2, ptr noundef nonnull %3)
  br label %54

54:                                               ; preds = %19, %12, %21, %14, %7, %5, %49, %43, %46, %52, %37
  %55 = phi ptr [ %42, %37 ], [ %53, %52 ], [ null, %14 ], [ null, %7 ], [ null, %46 ], [ null, %43 ], [ null, %49 ], [ null, %5 ], [ null, %21 ], [ null, %12 ], [ null, %19 ]
  ret ptr %55
}

declare ptr @get_ref_base_and_extent(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @tree_expr_size(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_base_address(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @decl_readonly_section(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @fold_builtin_strncat_chk(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #14 !prof !60 {
  %7 = icmp eq ptr %2, null
  br i1 %7, label %81, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i16
  switch i16 %12, label %81 [
    i16 12, label %13
    i16 10, label %13
  ]

13:                                               ; preds = %8, %8
  %14 = icmp eq ptr %3, null
  br i1 %14, label %81, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !72
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %81 [
    i16 12, label %20
    i16 10, label %20
  ]

20:                                               ; preds = %15, %15
  %21 = icmp eq ptr %5, null
  br i1 %21, label %81, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !72
  %25 = load i64, ptr %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = and i32 %26, 65534
  %28 = icmp ne i32 %27, 6
  %29 = and i32 %26, 65535
  %30 = icmp ne i32 %29, 8
  %31 = and i1 %28, %30
  br i1 %31, label %81, label %32

32:                                               ; preds = %22
  %33 = tail call fastcc ptr @c_getstr(ptr noundef nonnull %3)
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  %36 = load i8, ptr %33, align 1, !tbaa !72
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !72
  %41 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !72
  %43 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %42, ptr noundef nonnull %2, ptr noundef %4) #25
  br label %81

44:                                               ; preds = %35, %32
  %45 = tail call i32 @integer_zerop(ptr noundef %4) #25
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !72
  %50 = getelementptr inbounds %struct.tree_common, ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !72
  %52 = tail call ptr @omit_one_operand_loc(i32 noundef %0, ptr noundef %51, ptr noundef nonnull %2, ptr noundef nonnull %3) #25
  br label %81

53:                                               ; preds = %44
  %54 = tail call i32 @host_integerp(ptr noundef nonnull %5, i32 noundef 1) #25
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %81, label %56

56:                                               ; preds = %53
  %57 = tail call i32 @integer_all_onesp(ptr noundef nonnull %5) #25
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %56
  %60 = tail call ptr @c_strlen(ptr noundef nonnull %3, i32 noundef 1)
  %61 = icmp eq ptr %60, null
  br i1 %61, label %81, label %62

62:                                               ; preds = %59
  %63 = tail call i32 @host_integerp(ptr noundef nonnull %60, i32 noundef 1) #25
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %81, label %65

65:                                               ; preds = %62
  %66 = tail call i32 @host_integerp(ptr noundef %4, i32 noundef 1) #25
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %65
  %69 = tail call i32 @tree_int_cst_lt(ptr noundef %4, ptr noundef nonnull %60) #25
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 534), align 16, !tbaa !61
  %73 = icmp eq ptr %72, null
  br i1 %73, label %81, label %74

74:                                               ; preds = %71
  %75 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %72, i32 noundef 3, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %5)
  br label %81

76:                                               ; preds = %56
  %77 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 347), align 8, !tbaa !61
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %0, ptr noundef nonnull %77, i32 noundef 3, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef %4)
  br label %81

81:                                               ; preds = %20, %13, %22, %15, %8, %6, %76, %74, %71, %68, %65, %62, %59, %53, %79, %47, %38
  %82 = phi ptr [ %43, %38 ], [ %52, %47 ], [ %80, %79 ], [ null, %15 ], [ null, %8 ], [ null, %53 ], [ %75, %74 ], [ null, %71 ], [ null, %68 ], [ null, %65 ], [ null, %62 ], [ null, %59 ], [ null, %76 ], [ null, %6 ], [ null, %22 ], [ null, %13 ], [ null, %20 ]
  ret ptr %82
}

declare ptr @fold(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #24

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #19 = { cold nofree norecurse nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #22 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #25 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!59}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!35 = !{ptr @get_object_alignment, ptr @get_inner_reference, i64 12609}
!36 = !{ptr @get_object_alignment, ptr @host_integerp, i64 12}
!37 = !{ptr @get_object_alignment, ptr @tree_low_cst, i64 6}
!38 = !{ptr @get_pointer_alignment, ptr @host_integerp, i64 39}
!39 = !{ptr @get_pointer_alignment, ptr @tree_low_cst, i64 82}
!40 = !{ptr @builtin_mathfn_code, ptr @get_callee_fndecl, i64 53737}
!41 = !{ptr @fold_call_expr, ptr @get_callee_fndecl, i64 338955}
!42 = !{ptr @fold_call_expr, ptr @fold_builtin_n, i64 106}
!43 = !{ptr @fold_call_expr, ptr @fold_builtin_varargs, i64 106}
!44 = !{ptr @fold_builtin_n, ptr @fold_builtin_bitop, i64 4}
!45 = !{ptr @fold_builtin_n, ptr @fold_builtin_memset, i64 19}
!46 = !{ptr @fold_builtin_n, ptr @fold_builtin_memory_op, i64 57}
!47 = !{ptr @fold_builtin_n, ptr @fold_builtin_fprintf, i64 1}
!48 = !{ptr @fold_builtin_call_array, ptr @avoid_folding_inline_builtin, i64 11}
!49 = !{ptr @fold_builtin_call_array, ptr @fold_builtin_n, i64 11}
!50 = !{ptr @fold_builtin_call_array, ptr @build_call_array_loc, i64 11}
!51 = !{ptr @fold_builtin_call_array, ptr @fold_builtin_varargs, i64 11}
!52 = !{ptr @fold_builtin_memset, ptr @host_integerp, i64 13}
!53 = !{ptr @fold_builtin_memory_op, ptr @integer_zerop, i64 57}
!54 = !{ptr @fold_builtin_memory_op, ptr @operand_equal_p, i64 96}
!55 = !{ptr @fold_builtin_memory_op, ptr @get_pointer_alignment, i64 78}
!56 = !{ptr @fold_builtin_memory_op, ptr @tree_strip_nop_conversions, i64 39}
!57 = !{ptr @fold_builtin_memory_op, ptr @host_integerp, i64 96}
!58 = !{ptr @fold_builtin_memory_op, ptr @build_fold_indirect_ref_loc, i64 78}
!59 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!60 = !{!"function_entry_count", i64 0}
!61 = !{!62, !62, i64 0}
!62 = !{!"any pointer", !63, i64 0}
!63 = !{!"omnipotent char", !64, i64 0}
!64 = !{!"Simple C/C++ TBAA"}
!65 = !{!66, !62, i64 8}
!66 = !{!"_IO_FILE", !67, i64 0, !62, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !62, i64 40, !62, i64 48, !62, i64 56, !62, i64 64, !62, i64 72, !62, i64 80, !62, i64 88, !62, i64 96, !62, i64 104, !67, i64 112, !67, i64 116, !68, i64 120, !69, i64 128, !63, i64 130, !63, i64 131, !62, i64 136, !68, i64 144, !62, i64 152, !62, i64 160, !62, i64 168, !62, i64 176, !68, i64 184, !67, i64 192, !63, i64 196}
!67 = !{!"int", !63, i64 0}
!68 = !{!"long", !63, i64 0}
!69 = !{!"short", !63, i64 0}
!70 = !{!66, !62, i64 16}
!71 = !{!"branch_weights", i32 2000, i32 1}
!72 = !{!63, !63, i64 0}
!73 = !{!66, !62, i64 40}
!74 = !{!66, !62, i64 48}
!75 = !{!66, !67, i64 0}
!76 = !{!67, !67, i64 0}
!77 = distinct !{!77, !78, !79}
!78 = !{!"llvm.loop.mustprogress"}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = !{!"function_entry_count", i64 12609}
!81 = !{!"branch_weights", i32 0, i32 0, i32 260, i32 12349, i32 0, i32 0, i32 0, i32 0}
!82 = !{!68, !68, i64 0}
!83 = !{!"branch_weights", i32 3538, i32 9071}
!84 = !{!"branch_weights", i32 12609, i32 6}
!85 = !{!"branch_weights", i32 0, i32 6}
!86 = !{!"branch_weights", i32 6, i32 0}
!87 = !{!"branch_weights", i32 0, i32 12609}
!88 = !{!"branch_weights", i32 267, i32 12342}
!89 = !{!"branch_weights", i32 0, i32 267}
!90 = !{!"branch_weights", i32 0, i32 0, i32 267}
!91 = !{!"function_entry_count", i64 78}
!92 = !{!"branch_weights", i32 0, i32 78}
!93 = !{!"branch_weights", i32 0, i32 78, i32 0}
!94 = !{!"branch_weights", i32 65, i32 65, i32 0, i32 39, i32 0}
!95 = !{!"branch_weights", i32 0, i32 65, i32 0}
!96 = distinct !{!96, !79}
!97 = !{!"branch_weights", i32 13, i32 26}
!98 = !{!"branch_weights", i32 26, i32 56}
!99 = distinct !{!99, !78, !79}
!100 = distinct !{!100, !78, !79}
!101 = !{!102, !62, i64 1392}
!102 = !{!"gcc_target", !103, i64 0, !105, i64 368, !106, i64 664, !67, i64 744, !62, i64 752, !62, i64 760, !62, i64 768, !62, i64 776, !62, i64 784, !62, i64 792, !62, i64 800, !62, i64 808, !62, i64 816, !62, i64 824, !62, i64 832, !62, i64 840, !62, i64 848, !62, i64 856, !62, i64 864, !62, i64 872, !62, i64 880, !62, i64 888, !62, i64 896, !62, i64 904, !62, i64 912, !62, i64 920, !62, i64 928, !62, i64 936, !62, i64 944, !62, i64 952, !62, i64 960, !62, i64 968, !62, i64 976, !62, i64 984, !62, i64 992, !62, i64 1000, !62, i64 1008, !62, i64 1016, !62, i64 1024, !62, i64 1032, !62, i64 1040, !62, i64 1048, !62, i64 1056, !68, i64 1064, !68, i64 1072, !62, i64 1080, !62, i64 1088, !62, i64 1096, !62, i64 1104, !62, i64 1112, !62, i64 1120, !62, i64 1128, !62, i64 1136, !62, i64 1144, !62, i64 1152, !62, i64 1160, !62, i64 1168, !107, i64 1176, !62, i64 1232, !62, i64 1240, !62, i64 1248, !62, i64 1256, !62, i64 1264, !62, i64 1272, !62, i64 1280, !62, i64 1288, !62, i64 1296, !62, i64 1304, !62, i64 1312, !62, i64 1320, !62, i64 1328, !62, i64 1336, !62, i64 1344, !62, i64 1352, !62, i64 1360, !62, i64 1368, !62, i64 1376, !62, i64 1384, !62, i64 1392, !62, i64 1400, !62, i64 1408, !62, i64 1416, !62, i64 1424, !62, i64 1432, !62, i64 1440, !62, i64 1448, !62, i64 1456, !68, i64 1464, !108, i64 1472, !62, i64 1664, !62, i64 1672, !62, i64 1680, !62, i64 1688, !62, i64 1696, !62, i64 1704, !62, i64 1712, !62, i64 1720, !62, i64 1728, !62, i64 1736, !62, i64 1744, !62, i64 1752, !62, i64 1760, !62, i64 1768, !62, i64 1776, !109, i64 1784, !110, i64 1792, !111, i64 1896, !112, i64 1968, !62, i64 2016, !63, i64 2024, !63, i64 2025, !63, i64 2026, !63, i64 2027, !63, i64 2028, !63, i64 2029, !63, i64 2030, !63, i64 2031, !63, i64 2032, !63, i64 2033, !63, i64 2034, !63, i64 2035}
!103 = !{!"asm_out", !62, i64 0, !62, i64 8, !62, i64 16, !104, i64 24, !104, i64 56, !62, i64 88, !62, i64 96, !62, i64 104, !62, i64 112, !62, i64 120, !62, i64 128, !62, i64 136, !62, i64 144, !62, i64 152, !62, i64 160, !62, i64 168, !62, i64 176, !62, i64 184, !62, i64 192, !62, i64 200, !62, i64 208, !62, i64 216, !62, i64 224, !62, i64 232, !62, i64 240, !62, i64 248, !62, i64 256, !62, i64 264, !62, i64 272, !62, i64 280, !62, i64 288, !62, i64 296, !62, i64 304, !62, i64 312, !62, i64 320, !62, i64 328, !62, i64 336, !62, i64 344, !62, i64 352, !62, i64 360}
!104 = !{!"asm_int_op", !62, i64 0, !62, i64 8, !62, i64 16, !62, i64 24}
!105 = !{!"sched", !62, i64 0, !62, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !62, i64 40, !62, i64 48, !62, i64 56, !62, i64 64, !62, i64 72, !62, i64 80, !62, i64 88, !62, i64 96, !62, i64 104, !62, i64 112, !62, i64 120, !62, i64 128, !62, i64 136, !62, i64 144, !62, i64 152, !62, i64 160, !62, i64 168, !62, i64 176, !62, i64 184, !62, i64 192, !62, i64 200, !62, i64 208, !62, i64 216, !62, i64 224, !62, i64 232, !62, i64 240, !62, i64 248, !62, i64 256, !62, i64 264, !62, i64 272, !62, i64 280, !62, i64 288}
!106 = !{!"vectorize", !62, i64 0, !62, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !62, i64 40, !62, i64 48, !62, i64 56, !62, i64 64, !62, i64 72}
!107 = !{!"addr_space", !62, i64 0, !62, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !62, i64 40, !62, i64 48}
!108 = !{!"calls", !62, i64 0, !62, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !62, i64 40, !62, i64 48, !62, i64 56, !62, i64 64, !62, i64 72, !62, i64 80, !62, i64 88, !62, i64 96, !62, i64 104, !62, i64 112, !62, i64 120, !62, i64 128, !62, i64 136, !62, i64 144, !62, i64 152, !62, i64 160, !62, i64 168, !62, i64 176, !62, i64 184}
!109 = !{!"c", !62, i64 0}
!110 = !{!"cxx", !62, i64 0, !62, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !62, i64 40, !62, i64 48, !62, i64 56, !62, i64 64, !62, i64 72, !62, i64 80, !62, i64 88, !62, i64 96}
!111 = !{!"emutls", !62, i64 0, !62, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !62, i64 40, !62, i64 48, !62, i64 56, !63, i64 64, !63, i64 65}
!112 = !{!"target_option_hooks", !62, i64 0, !62, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !62, i64 40}
!113 = !{!102, !62, i64 1640}
!114 = !{!115, !67, i64 0}
!115 = !{!"elims", !67, i64 0, !67, i64 4}
!116 = distinct !{!116, !78, !79}
!117 = !{!118, !62, i64 200}
!118 = !{!"rtl_data", !119, i64 0, !120, i64 40, !121, i64 96, !122, i64 112, !124, i64 208, !125, i64 248, !67, i64 312, !62, i64 320, !62, i64 328, !62, i64 336, !62, i64 344, !62, i64 352, !62, i64 360, !62, i64 368, !62, i64 376, !62, i64 384, !62, i64 392, !68, i64 400, !62, i64 408, !62, i64 416, !62, i64 424, !67, i64 432, !67, i64 436, !67, i64 440, !67, i64 444, !67, i64 448, !67, i64 452, !62, i64 456, !63, i64 464, !63, i64 465, !63, i64 466, !63, i64 467, !63, i64 468, !63, i64 469, !63, i64 470, !63, i64 471, !63, i64 472, !63, i64 473, !63, i64 474, !63, i64 475, !63, i64 476, !63, i64 477, !63, i64 478, !63, i64 479, !63, i64 480, !63, i64 481, !63, i64 482, !63, i64 483, !63, i64 484, !63, i64 485}
!119 = !{!"expr_status", !67, i64 0, !67, i64 4, !67, i64 8, !62, i64 16, !62, i64 24, !62, i64 32}
!120 = !{!"emit_status", !67, i64 0, !67, i64 4, !62, i64 8, !62, i64 16, !62, i64 24, !67, i64 32, !67, i64 36, !67, i64 40, !67, i64 44, !62, i64 48}
!121 = !{!"varasm_status", !62, i64 0, !67, i64 8}
!122 = !{!"incoming_args", !67, i64 0, !67, i64 4, !67, i64 8, !62, i64 16, !123, i64 24, !62, i64 88}
!123 = !{!"ix86_args", !67, i64 0, !67, i64 4, !67, i64 8, !67, i64 12, !67, i64 16, !67, i64 20, !67, i64 24, !67, i64 28, !67, i64 32, !67, i64 36, !67, i64 40, !67, i64 44, !67, i64 48, !67, i64 52, !67, i64 56, !67, i64 60}
!124 = !{!"function_subsections", !62, i64 0, !62, i64 8, !62, i64 16, !62, i64 24, !62, i64 32}
!125 = !{!"rtl_eh", !62, i64 0, !62, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !62, i64 40, !63, i64 48}
!126 = distinct !{!126, !78, !79}
!127 = !{!118, !62, i64 16}
!128 = !{!102, !62, i64 1520}
!129 = !{!102, !62, i64 1336}
!130 = !{!131, !62, i64 480}
!131 = !{!"lang_hooks", !62, i64 0, !68, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !62, i64 40, !62, i64 48, !62, i64 56, !62, i64 64, !62, i64 72, !62, i64 80, !62, i64 88, !62, i64 96, !62, i64 104, !62, i64 112, !62, i64 120, !62, i64 128, !62, i64 136, !62, i64 144, !62, i64 152, !62, i64 160, !62, i64 168, !62, i64 176, !62, i64 184, !62, i64 192, !62, i64 200, !62, i64 208, !62, i64 216, !62, i64 224, !62, i64 232, !132, i64 240, !133, i64 248, !134, i64 256, !135, i64 272, !136, i64 432, !137, i64 560, !62, i64 584, !62, i64 592, !62, i64 600, !62, i64 608, !62, i64 616, !62, i64 624, !62, i64 632, !62, i64 640, !62, i64 648, !62, i64 656, !62, i64 664, !63, i64 672}
!132 = !{!"lang_hooks_for_tree_inlining", !62, i64 0}
!133 = !{!"lang_hooks_for_callgraph", !62, i64 0}
!134 = !{!"lang_hooks_for_tree_dump", !62, i64 0, !62, i64 8}
!135 = !{!"lang_hooks_for_decls", !62, i64 0, !62, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !62, i64 40, !62, i64 48, !62, i64 56, !62, i64 64, !62, i64 72, !62, i64 80, !62, i64 88, !62, i64 96, !62, i64 104, !62, i64 112, !62, i64 120, !62, i64 128, !62, i64 136, !62, i64 144, !62, i64 152}
!136 = !{!"lang_hooks_for_types", !62, i64 0, !62, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !62, i64 40, !62, i64 48, !62, i64 56, !62, i64 64, !62, i64 72, !62, i64 80, !62, i64 88, !62, i64 96, !62, i64 104, !62, i64 112, !63, i64 120}
!137 = !{!"lang_hooks_for_lto", !62, i64 0, !62, i64 8, !62, i64 16}
!138 = !{!102, !62, i64 1352}
!139 = distinct !{!139, !78, !79}
!140 = !{!102, !62, i64 920}
!141 = !{i8 0, i8 2}
!142 = distinct !{!142, !78, !79}
!143 = distinct !{!143, !78, !79}
!144 = !{!"function_entry_count", i64 261387}
!145 = !{!"branch_weights", i32 53750, i32 207637}
!146 = !{!"branch_weights", i32 53737, i32 13}
!147 = !{!"branch_weights", i32 0, i32 53737}
!148 = !{!"branch_weights", i32 53737, i32 0}
!149 = !{!"branch_weights", i32 2, i32 53735, i32 0}
!150 = !{!"branch_weights", i32 0, i32 1}
!151 = !{!"branch_weights", i32 2, i32 2}
!152 = !{!"branch_weights", i32 0, i32 2}
!153 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4}
!154 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 2}
!155 = !{!"branch_weights", i32 2, i32 0}
!156 = !{!"branch_weights", i32 0, i32 4}
!157 = distinct !{!157, !78, !79}
!158 = !{!"function_entry_count", i64 338955}
!159 = !{!"branch_weights", i32 26, i32 338929}
!160 = !{!"branch_weights", i32 338929, i32 0}
!161 = !{!"branch_weights", i32 338823, i32 106}
!162 = !{!"branch_weights", i32 106, i32 0}
!163 = !{!"branch_weights", i32 0, i32 106}
!164 = !{!"branch_weights", i32 117, i32 0}
!165 = !{!102, !62, i64 936}
!166 = !{!"function_entry_count", i64 11}
!167 = !{!"builtins.c;avoid_folding_inline_builtin"}
!168 = !{!"function_entry_count", i64 117}
!169 = !{!"builtins.c;fold_builtin_n"}
!170 = !{!"branch_weights", i32 0, i32 0, i32 13, i32 27, i32 77, i32 0}
!171 = !{!"branch_weights", i32 9, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!172 = !{i64 0, i64 4, !76, i64 0, i64 4, !76, i64 0, i64 4, !76, i64 0, i64 4, !76, i64 0, i64 4, !76, i64 0, i64 4, !76, i64 8, i64 24, !72}
!173 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 27, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!174 = !{!"branch_weights", i32 27, i32 0}
!175 = !{!"branch_weights", i32 9, i32 18}
!176 = !{!"branch_weights", i32 0, i32 27}
!177 = distinct !{!177, !78, !79}
!178 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 19, i32 0, i32 18, i32 0, i32 39, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!179 = !{!"builtins.c;fold_builtin_varargs"}
!180 = !{!"branch_weights", i32 117, i32 0, i32 0, i32 0, i32 0, i32 0}
!181 = !{!182, !67, i64 28}
!182 = !{!"real_format", !62, i64 0, !62, i64 8, !67, i64 16, !67, i64 20, !67, i64 24, !67, i64 28, !67, i64 32, !67, i64 36, !67, i64 40, !63, i64 44, !63, i64 45, !63, i64 46, !63, i64 47, !63, i64 48, !63, i64 49, !63, i64 50, !63, i64 51}
!183 = !{!182, !63, i64 47}
!184 = !{!182, !63, i64 46}
!185 = distinct !{!185, !78, !79}
!186 = !{!"branch_weights", i32 11, i32 0}
!187 = !{!"branch_weights", i32 0, i32 11}
!188 = distinct !{!188, !78, !79}
!189 = distinct !{!189, !79}
!190 = distinct !{!190, !79}
!191 = distinct !{!191, !78, !79}
!192 = !{!131, !62, i64 208}
!193 = distinct !{!193, !78, !79}
!194 = distinct !{!194, !78, !79}
!195 = distinct !{!195, !78, !79}
!196 = !{!"function_entry_count", i64 65482}
!197 = !{!"branch_weights", i32 0, i32 65482}
!198 = !{!"branch_weights", i32 65482, i32 0}
!199 = distinct !{!199, !78, !79}
!200 = distinct !{!200, !78, !79}
!201 = !{i32 0, i32 2048}
!202 = distinct !{!202, !78, !79}
!203 = !{!"function_entry_count", i64 4}
!204 = !{!"builtins.c;fold_builtin_bitop"}
!205 = !{!"branch_weights", i32 16, i32 0}
!206 = distinct !{!206, !78, !79}
!207 = distinct !{!207, !78, !79}
!208 = distinct !{!208, !78, !79}
!209 = distinct !{!209, !78, !79}
!210 = !{!182, !63, i64 49}
!211 = !{!182, !67, i64 16}
!212 = !{!213, !67, i64 0}
!213 = !{!"optab_handlers", !67, i64 0}
!214 = !{!182, !67, i64 32}
!215 = !{!"function_entry_count", i64 1}
!216 = !{!"builtins.c;fold_builtin_fprintf"}
!217 = !{!"branch_weights", i32 1, i32 0}
!218 = !{!"function_entry_count", i64 19}
!219 = !{!"builtins.c;fold_builtin_memset"}
!220 = !{!"branch_weights", i32 0, i32 19}
!221 = !{!"branch_weights", i32 0, i32 361}
!222 = !{!"branch_weights", i32 19, i32 0}
!223 = distinct !{!223, !78, !79}
!224 = !{!"function_entry_count", i64 57}
!225 = !{!"builtins.c;fold_builtin_memory_op"}
!226 = !{!"branch_weights", i32 0, i32 57}
!227 = !{!"branch_weights", i32 0, i32 0, i32 57}
!228 = !{!"branch_weights", i32 57, i32 0}
!229 = !{!"branch_weights", i32 39, i32 18}
!230 = !{!"branch_weights", i32 39, i32 0}
!231 = !{!"branch_weights", i32 0, i32 39}
!232 = !{!"branch_weights", i32 39, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!233 = !{!"branch_weights", i32 39, i32 0, i32 0, i32 0, i32 0}
!234 = !{!"branch_weights", i32 18, i32 0}
!235 = !{!236, !62, i64 24}
!236 = !{!"function", !62, i64 0, !62, i64 8, !62, i64 16, !62, i64 24, !62, i64 32, !62, i64 40, !62, i64 48, !62, i64 56, !62, i64 64, !62, i64 72, !62, i64 80, !62, i64 88, !62, i64 96, !67, i64 104, !67, i64 108, !67, i64 112, !67, i64 116, !67, i64 120, !67, i64 124, !62, i64 128, !67, i64 136, !67, i64 137, !67, i64 138, !67, i64 138, !67, i64 138, !67, i64 138, !67, i64 138, !67, i64 138, !67, i64 138, !67, i64 139, !67, i64 139, !67, i64 139, !67, i64 139, !67, i64 139, !67, i64 139, !67, i64 139}
