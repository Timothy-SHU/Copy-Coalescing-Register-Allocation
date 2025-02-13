; ModuleID = 'tree-pretty-print.c'
source_filename = "tree-pretty-print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pretty_print_info = type { ptr, ptr, i32, i32, i32, %struct.pp_wrapping_mode_t, ptr, i8, i8, i8 }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.output_buffer = type { %struct.obstack, %struct.obstack, ptr, ptr, ptr, i32, [128 x i8] }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.real_value = type { i32, [3 x i64] }
%struct.tree_stmt_iterator = type { ptr, ptr }
%struct.call_expr_arg_iterator_d = type { ptr, i32, i32 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_vec = type { %struct.tree_common, i32, [1 x ptr] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.tree_real_cst = type { %struct.tree_common, ptr }
%struct.tree_fixed_cst = type { %struct.tree_common, ptr }
%struct.tree_complex = type { %struct.tree_common, ptr, ptr }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.tree_vector = type { %struct.tree_common, ptr }
%struct.tree_label_decl = type { %struct.tree_decl_with_rtl, i32, i32 }
%struct.tree_constructor = type { %struct.tree_common, ptr }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_omp_clause = type { %struct.tree_common, i32, i32, %union.omp_clause_subcode, ptr, ptr, [1 x ptr] }
%union.omp_clause_subcode = type { i32 }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.tree_statement_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_statement_list_node = type { ptr, ptr, ptr }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }

@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"... [cycled back to \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@buffer = internal global %struct.pretty_print_info zeroinitializer, align 8
@initialized = internal unnamed_addr global i1 false, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"firstprivate\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"lastprivate\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"copyin\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"copyprivate\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"reduction(\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"if(\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"num_threads(\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"nowait\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"ordered\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"default(\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"tree-pretty-print.c\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"schedule(\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"dynamic\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"guided\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"runtime\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"untied\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"collapse(\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.27 = private unnamed_addr constant [7 x i8] c"<&%p> \00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"<<< error >>>\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.29 = private unnamed_addr constant [7 x i8] c"const \00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"volatile \00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"restrict \00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"<address-space-\00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"<unnamed type decl>\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"<unnamed type>\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"vector \00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"<unnamed-unsigned:\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"<unnamed-signed:\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"__complex__ \00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"<float:\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"<fixed-point-\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"sat:\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"nonsat:\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"<null type>\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"<T%x>\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c" const\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c" volatile\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c" restrict\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c" <address-space-\00", align 1
@.str.54 = private unnamed_addr constant [11 x i8] c" {ref-all}\00", align 1
@.str.55 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"MEM[\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"symbol: \00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"base: \00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"index: \00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"step: \00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"offset: \00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"struct \00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"union \00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.68 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.69 = private unnamed_addr constant [12 x i8] c"0x%lx%016lx\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c" overflow\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c" -Inf\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c" Inf\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c" Nan\00", align 1
@.str.74 = private unnamed_addr constant [14 x i8] c"__complex__ (\00", align 1
@.str.75 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c" }\00", align 1
@.str.79 = private unnamed_addr constant [23 x i8] c"<null method basetype>\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.81 = private unnamed_addr constant [6 x i8] c"<L%d>\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"<D.xxxx>\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"<D.%u>\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"class \00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"<retval>\00", align 1
@.str.87 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"{off: \00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c"BIT_FIELD_REF <\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c" ...\00", align 1
@.str.92 = private unnamed_addr constant [6 x i8] c"{lb: \00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c" sz: \00", align 1
@.str.94 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.95 = private unnamed_addr constant [16 x i8] c"<COMPOUND_EXPR>\00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c"<STATEMENT_LIST>\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"{nt}\00", align 1
@.str.98 = private unnamed_addr constant [14 x i8] c"TARGET_EXPR <\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"if (\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c" else \00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.102 = private unnamed_addr constant [25 x i8] c"__builtin_va_arg_pack ()\00", align 1
@.str.103 = private unnamed_addr constant [17 x i8] c" [static-chain: \00", align 1
@.str.104 = private unnamed_addr constant [28 x i8] c" [return slot optimization]\00", align 1
@.str.105 = private unnamed_addr constant [13 x i8] c" [tail call]\00", align 1
@.str.106 = private unnamed_addr constant [17 x i8] c"<<cleanup_point \00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.108 = private unnamed_addr constant [19 x i8] c"<PLACEHOLDER_EXPR \00", align 1
@.str.109 = private unnamed_addr constant [16 x i8] c"{misalignment: \00", align 1
@.str.110 = private unnamed_addr constant [11 x i8] c"MIN_EXPR <\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"MAX_EXPR <\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"ABS_EXPR <\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.114 = private unnamed_addr constant [19 x i8] c"VIEW_CONVERT_EXPR<\00", align 1
@.str.115 = private unnamed_addr constant [3 x i8] c">(\00", align 1
@.str.116 = private unnamed_addr constant [3 x i8] c"((\00", align 1
@.str.117 = private unnamed_addr constant [3 x i8] c"))\00", align 1
@.str.118 = private unnamed_addr constant [18 x i8] c"NON_LVALUE_EXPR <\00", align 1
@.str.119 = private unnamed_addr constant [12 x i8] c"SAVE_EXPR <\00", align 1
@.str.120 = private unnamed_addr constant [15 x i8] c"COMPLEX_EXPR <\00", align 1
@.str.121 = private unnamed_addr constant [12 x i8] c"CONJ_EXPR <\00", align 1
@.str.122 = private unnamed_addr constant [16 x i8] c"REALPART_EXPR <\00", align 1
@.str.123 = private unnamed_addr constant [16 x i8] c"IMAGPART_EXPR <\00", align 1
@.str.124 = private unnamed_addr constant [14 x i8] c"VA_ARG_EXPR <\00", align 1
@.str.125 = private unnamed_addr constant [4 x i8] c"try\00", align 1
@.str.126 = private unnamed_addr constant [6 x i8] c"catch\00", align 1
@.str.127 = private unnamed_addr constant [8 x i8] c"finally\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"catch (\00", align 1
@.str.129 = private unnamed_addr constant [15 x i8] c"<<<eh_filter (\00", align 1
@.str.130 = private unnamed_addr constant [5 x i8] c")>>>\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.132 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.133 = private unnamed_addr constant [13 x i8] c" [non-local]\00", align 1
@.str.134 = private unnamed_addr constant [10 x i8] c"while (1)\00", align 1
@.str.135 = private unnamed_addr constant [14 x i8] c"// predicted \00", align 1
@.str.136 = private unnamed_addr constant [11 x i8] c"likely by \00", align 1
@.str.137 = private unnamed_addr constant [13 x i8] c"unlikely by \00", align 1
@.str.138 = private unnamed_addr constant [12 x i8] c" predictor.\00", align 1
@.str.139 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.140 = private unnamed_addr constant [8 x i8] c") break\00", align 1
@.str.141 = private unnamed_addr constant [9 x i8] c"switch (\00", align 1
@.str.142 = private unnamed_addr constant [7 x i8] c" goto \00", align 1
@.str.143 = private unnamed_addr constant [20 x i8] c"case ???: goto ???;\00", align 1
@.str.144 = private unnamed_addr constant [6 x i8] c"goto \00", align 1
@.str.145 = private unnamed_addr constant [8 x i8] c"__asm__\00", align 1
@.str.146 = private unnamed_addr constant [14 x i8] c" __volatile__\00", align 1
@.str.147 = private unnamed_addr constant [6 x i8] c"case \00", align 1
@.str.148 = private unnamed_addr constant [6 x i8] c" ... \00", align 1
@.str.149 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.150 = private unnamed_addr constant [14 x i8] c"OBJ_TYPE_REF(\00", align 1
@.str.151 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"(ab)\00", align 1
@.str.153 = private unnamed_addr constant [4 x i8] c"(D)\00", align 1
@.str.154 = private unnamed_addr constant [17 x i8] c"WITH_SIZE_EXPR <\00", align 1
@.str.155 = private unnamed_addr constant [14 x i8] c"ASSERT_EXPR <\00", align 1
@.str.156 = private unnamed_addr constant [11 x i8] c"scev_known\00", align 1
@.str.157 = private unnamed_addr constant [15 x i8] c"scev_not_known\00", align 1
@.str.158 = private unnamed_addr constant [6 x i8] c", +, \00", align 1
@.str.159 = private unnamed_addr constant [3 x i8] c"}_\00", align 1
@.str.160 = private unnamed_addr constant [15 x i8] c"REALIGN_LOAD <\00", align 1
@.str.161 = private unnamed_addr constant [18 x i8] c" VEC_COND_EXPR < \00", align 1
@.str.162 = private unnamed_addr constant [4 x i8] c" , \00", align 1
@.str.163 = private unnamed_addr constant [4 x i8] c" > \00", align 1
@.str.164 = private unnamed_addr constant [18 x i8] c" DOT_PROD_EXPR < \00", align 1
@.str.165 = private unnamed_addr constant [21 x i8] c"#pragma omp parallel\00", align 1
@.str.166 = private unnamed_addr constant [17 x i8] c"#pragma omp task\00", align 1
@.str.167 = private unnamed_addr constant [16 x i8] c"#pragma omp for\00", align 1
@.str.168 = private unnamed_addr constant [6 x i8] c"for (\00", align 1
@.str.169 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.170 = private unnamed_addr constant [21 x i8] c"#pragma omp sections\00", align 1
@.str.171 = private unnamed_addr constant [20 x i8] c"#pragma omp section\00", align 1
@.str.172 = private unnamed_addr constant [19 x i8] c"#pragma omp master\00", align 1
@.str.173 = private unnamed_addr constant [20 x i8] c"#pragma omp ordered\00", align 1
@.str.174 = private unnamed_addr constant [21 x i8] c"#pragma omp critical\00", align 1
@.str.175 = private unnamed_addr constant [19 x i8] c"#pragma omp atomic\00", align 1
@.str.176 = private unnamed_addr constant [19 x i8] c"#pragma omp single\00", align 1
@.str.177 = private unnamed_addr constant [19 x i8] c" REDUC_MAX_EXPR < \00", align 1
@.str.178 = private unnamed_addr constant [19 x i8] c" REDUC_MIN_EXPR < \00", align 1
@.str.179 = private unnamed_addr constant [20 x i8] c" REDUC_PLUS_EXPR < \00", align 1
@.str.180 = private unnamed_addr constant [27 x i8] c" VEC_WIDEN_MULT_HI_EXPR < \00", align 1
@.str.181 = private unnamed_addr constant [27 x i8] c" VEC_WIDEN_MULT_LO_EXPR < \00", align 1
@.str.182 = private unnamed_addr constant [23 x i8] c" VEC_UNPACK_HI_EXPR < \00", align 1
@.str.183 = private unnamed_addr constant [23 x i8] c" VEC_UNPACK_LO_EXPR < \00", align 1
@.str.184 = private unnamed_addr constant [29 x i8] c" VEC_UNPACK_FLOAT_HI_EXPR < \00", align 1
@.str.185 = private unnamed_addr constant [29 x i8] c" VEC_UNPACK_FLOAT_LO_EXPR < \00", align 1
@.str.186 = private unnamed_addr constant [24 x i8] c" VEC_PACK_TRUNC_EXPR < \00", align 1
@.str.187 = private unnamed_addr constant [22 x i8] c" VEC_PACK_SAT_EXPR < \00", align 1
@.str.188 = private unnamed_addr constant [28 x i8] c" VEC_PACK_FIX_TRUNC_EXPR < \00", align 1
@.str.189 = private unnamed_addr constant [26 x i8] c" VEC_EXTRACT_EVEN_EXPR < \00", align 1
@.str.190 = private unnamed_addr constant [25 x i8] c" VEC_EXTRACT_ODD_EXPR < \00", align 1
@.str.191 = private unnamed_addr constant [29 x i8] c" VEC_INTERLEAVE_HIGH_EXPR < \00", align 1
@.str.192 = private unnamed_addr constant [28 x i8] c" VEC_INTERLEAVE_LOW_EXPR < \00", align 1
@.str.193 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.194 = private unnamed_addr constant [3 x i8] c"] \00", align 1
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@.str.195 = private unnamed_addr constant [5 x i8] c"L.%d\00", align 1
@.str.196 = private unnamed_addr constant [7 x i8] c"D#xxxx\00", align 1
@.str.197 = private unnamed_addr constant [5 x i8] c"D#%i\00", align 1
@.str.198 = private unnamed_addr constant [8 x i8] c"%c.xxxx\00", align 1
@.str.199 = private unnamed_addr constant [6 x i8] c"%c.%u\00", align 1
@.str.200 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.201 = private unnamed_addr constant [19 x i8] c"<<< Unknown tree: \00", align 1
@tree_code_name = external local_unnamed_addr constant [0 x ptr], align 8
@.str.202 = private unnamed_addr constant [6 x i8] c" >>>\0A\00", align 1
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@.str.203 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str.204 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.205 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.206 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.207 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.208 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.209 = private unnamed_addr constant [3 x i8] c"\\v\00", align 1
@.str.210 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.211 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.212 = private unnamed_addr constant [3 x i8] c"\\'\00", align 1
@.str.213 = private unnamed_addr constant [3 x i8] c"\\1\00", align 1
@.str.214 = private unnamed_addr constant [3 x i8] c"\\2\00", align 1
@.str.215 = private unnamed_addr constant [3 x i8] c"\\3\00", align 1
@.str.216 = private unnamed_addr constant [3 x i8] c"\\4\00", align 1
@.str.217 = private unnamed_addr constant [3 x i8] c"\\5\00", align 1
@.str.218 = private unnamed_addr constant [3 x i8] c"\\6\00", align 1
@.str.219 = private unnamed_addr constant [3 x i8] c"\\7\00", align 1
@.str.220 = private unnamed_addr constant [11 x i8] c"BLOCK #%d \00", align 1
@.str.221 = private unnamed_addr constant [6 x i8] c"[%p] \00", align 1
@.str.222 = private unnamed_addr constant [12 x i8] c"[abstract] \00", align 1
@.str.223 = private unnamed_addr constant [11 x i8] c"[written] \00", align 1
@.str.224 = private unnamed_addr constant [15 x i8] c"SUPERCONTEXT: \00", align 1
@.str.225 = private unnamed_addr constant [12 x i8] c"SUBBLOCKS: \00", align 1
@.str.226 = private unnamed_addr constant [11 x i8] c"SIBLINGS: \00", align 1
@.str.227 = private unnamed_addr constant [7 x i8] c"VARS: \00", align 1
@.str.228 = private unnamed_addr constant [20 x i8] c"NONLOCALIZED_VARS: \00", align 1
@.str.229 = private unnamed_addr constant [18 x i8] c"ABSTRACT_ORIGIN: \00", align 1
@.str.230 = private unnamed_addr constant [18 x i8] c"FRAGMENT_ORIGIN: \00", align 1
@.str.231 = private unnamed_addr constant [17 x i8] c"FRAGMENT_CHAIN: \00", align 1
@.str.232 = private unnamed_addr constant [9 x i8] c"typedef \00", align 1
@.str.233 = private unnamed_addr constant [10 x i8] c"register \00", align 1
@.str.234 = private unnamed_addr constant [8 x i8] c"extern \00", align 1
@.str.235 = private unnamed_addr constant [8 x i8] c"static \00", align 1
@.str.236 = private unnamed_addr constant [10 x i8] c" __asm__ \00", align 1
@.str.237 = private unnamed_addr constant [15 x i8] c" [value-expr: \00", align 1
@.str.238 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.239 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.240 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.241 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.242 = private unnamed_addr constant [4 x i8] c"ord\00", align 1
@.str.243 = private unnamed_addr constant [6 x i8] c"unord\00", align 1
@.str.244 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.245 = private unnamed_addr constant [4 x i8] c"u==\00", align 1
@.str.246 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.247 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.248 = private unnamed_addr constant [3 x i8] c"u<\00", align 1
@.str.249 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.250 = private unnamed_addr constant [4 x i8] c"u<=\00", align 1
@.str.251 = private unnamed_addr constant [3 x i8] c"u>\00", align 1
@.str.252 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.253 = private unnamed_addr constant [4 x i8] c"u>=\00", align 1
@.str.254 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@.str.255 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.256 = private unnamed_addr constant [4 x i8] c"r<<\00", align 1
@.str.257 = private unnamed_addr constant [4 x i8] c"r>>\00", align 1
@.str.258 = private unnamed_addr constant [4 x i8] c"v<<\00", align 1
@.str.259 = private unnamed_addr constant [4 x i8] c"v>>\00", align 1
@.str.260 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.261 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.262 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.263 = private unnamed_addr constant [3 x i8] c"w*\00", align 1
@.str.264 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.265 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.266 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.267 = private unnamed_addr constant [3 x i8] c"A*\00", align 1
@.str.268 = private unnamed_addr constant [3 x i8] c"M*\00", align 1
@.str.269 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.270 = private unnamed_addr constant [6 x i8] c"/[cl]\00", align 1
@.str.271 = private unnamed_addr constant [6 x i8] c"/[fl]\00", align 1
@.str.272 = private unnamed_addr constant [6 x i8] c"/[rd]\00", align 1
@.str.273 = private unnamed_addr constant [6 x i8] c"/[ex]\00", align 1
@.str.274 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.275 = private unnamed_addr constant [6 x i8] c"%[cl]\00", align 1
@.str.276 = private unnamed_addr constant [6 x i8] c"%[fl]\00", align 1
@.str.277 = private unnamed_addr constant [6 x i8] c"%[rd]\00", align 1
@.str.278 = private unnamed_addr constant [4 x i8] c" --\00", align 1
@.str.279 = private unnamed_addr constant [4 x i8] c" ++\00", align 1
@.str.280 = private unnamed_addr constant [4 x i8] c"-- \00", align 1
@.str.281 = private unnamed_addr constant [4 x i8] c"++ \00", align 1
@.str.282 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.283 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.284 = private unnamed_addr constant [12 x i8] c"<<< ??? >>>\00", align 1
@.str.285 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.286 = private unnamed_addr constant [5 x i8] c") ? \00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@reltable.op_symbol_code = private unnamed_addr constant [125 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.46 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.267 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.268 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.94 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.260 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.264 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.46 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.260 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.269 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.270 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.271 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.272 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.274 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.275 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.276 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.277 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.269 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.273 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.264 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.283 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.282 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.255 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.107 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.256 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.257 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.240 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.241 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.47 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.265 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.239 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.238 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.239 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.238 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.241 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.266 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.247 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.249 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.40 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.252 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.244 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.246 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.243 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.242 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.248 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.250 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.251 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.253 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.245 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.254 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.47 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.278 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.279 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.280 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.281 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.261 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.284 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.262 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.263 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.258 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.259 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32)], align 4
@reltable.print_struct_decl = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.65 to i64), i64 ptrtoint (ptr @reltable.print_struct_decl to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.66 to i64), i64 ptrtoint (ptr @reltable.print_struct_decl to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.66 to i64), i64 ptrtoint (ptr @reltable.print_struct_decl to i64)) to i32)], align 4
@switch.table.op_code_prio = private unnamed_addr constant [178 x i32] [i32 1, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 15, i32 9999, i32 16, i32 16, i32 15, i32 15, i32 14, i32 14, i32 14, i32 9999, i32 9999, i32 1, i32 2, i32 2, i32 14, i32 3, i32 9999, i32 1, i32 15, i32 9999, i32 9999, i32 9999, i32 12, i32 12, i32 13, i32 12, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 14, i32 14, i32 14, i32 16, i32 16, i32 16, i32 11, i32 11, i32 11, i32 11, i32 6, i32 7, i32 8, i32 14, i32 5, i32 4, i32 5, i32 4, i32 7, i32 14, i32 10, i32 10, i32 10, i32 10, i32 9, i32 9, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 9999, i32 9999, i32 14, i32 9999, i32 9999, i32 14, i32 9999, i32 9999, i32 9999, i32 9999, i32 14, i32 9999, i32 9999, i32 9999, i32 14, i32 14, i32 14, i32 14, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 16, i32 16, i32 16, i32 13, i32 12, i32 13, i32 16, i32 16, i32 13, i32 13, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_generic_expr(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !36
  tail call void @print_generic_expr(ptr noundef %2, ptr noundef %0, i32 noundef 16448) #14
  %3 = load ptr, ptr @stderr, align 8, !tbaa !36
  %4 = tail call i32 @fputc(i32 10, ptr %3)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_generic_expr(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !35 {
  tail call fastcc void @maybe_init_pretty_print(ptr noundef %0) #14
  %4 = tail call i32 @dump_generic_node(ptr noundef nonnull @buffer, ptr noundef %1, i32 noundef 0, i32 noundef %2, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_generic_stmt(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !36
  tail call void @print_generic_stmt(ptr noundef %2, ptr noundef %0, i32 noundef 16448) #14
  %3 = load ptr, ptr @stderr, align 8, !tbaa !36
  %4 = tail call i32 @fputc(i32 10, ptr %3)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_generic_stmt(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !35 {
  tail call fastcc void @maybe_init_pretty_print(ptr noundef %0) #14
  %4 = tail call i32 @dump_generic_node(ptr noundef nonnull @buffer, ptr noundef %1, i32 noundef 0, i32 noundef %2, i8 noundef zeroext 1) #14
  tail call void @pp_base_flush(ptr noundef nonnull @buffer) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_tree_chain(ptr noundef %0) local_unnamed_addr #0 !prof !35 {
  %2 = tail call ptr @pointer_set_create() #15
  br label %3

3:                                                ; preds = %6, %1
  %4 = phi ptr [ %0, %1 ], [ %11, %6 ]
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @stderr, align 8, !tbaa !36
  tail call void @print_generic_expr(ptr noundef %7, ptr noundef nonnull %4, i32 noundef 16704) #14
  %8 = load ptr, ptr @stderr, align 8, !tbaa !36
  %9 = tail call i32 @fputc(i32 32, ptr %8)
  %10 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !40
  %12 = tail call i32 @pointer_set_insert(ptr noundef %2, ptr noundef %11) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %3, label %14, !llvm.loop !41

14:                                               ; preds = %6
  %15 = load ptr, ptr @stderr, align 8, !tbaa !36
  %16 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 20, i64 1, ptr %15) #16
  %17 = load ptr, ptr @stderr, align 8, !tbaa !36
  tail call void @print_generic_expr(ptr noundef %17, ptr noundef %11, i32 noundef 16704) #14
  %18 = load ptr, ptr @stderr, align 8, !tbaa !36
  %19 = tail call i32 @fputc(i32 93, ptr %18)
  br label %20

20:                                               ; preds = %3, %14
  %21 = load ptr, ptr @stderr, align 8, !tbaa !36
  %22 = tail call i32 @fputc(i32 10, ptr %21)
  tail call void @pointer_set_destroy(ptr noundef %2) #15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @pointer_set_create() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @pointer_set_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_generic_decl(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !35 {
  tail call fastcc void @maybe_init_pretty_print(ptr noundef %0) #14
  tail call void @print_declaration(ptr noundef nonnull @buffer, ptr noundef %1, i32 noundef 2, i32 noundef %2) #14
  tail call void @pp_write_text_to_stream(ptr noundef nonnull @buffer) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @maybe_init_pretty_print(ptr noundef %0) unnamed_addr #0 !prof !35 !PGOFuncName !43 {
  %2 = load i1, ptr @initialized, align 4
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @pp_construct(ptr noundef nonnull @buffer, ptr noundef null, i32 noundef 0) #15
  store i8 1, ptr getelementptr inbounds (%struct.pretty_print_info, ptr @buffer, i64 0, i32 8), align 1, !tbaa !44
  store i8 0, ptr getelementptr inbounds (%struct.pretty_print_info, ptr @buffer, i64 0, i32 9), align 2, !tbaa !48
  store i1 true, ptr @initialized, align 4
  br label %4

4:                                                ; preds = %3, %1
  %5 = load ptr, ptr @buffer, align 8, !tbaa !49
  %6 = getelementptr inbounds %struct.output_buffer, ptr %5, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !50
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_declaration(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !35 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4, %6
  %7 = phi i32 [ %8, %6 ], [ 0, %4 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  %8 = add nuw nsw i32 %7, 1
  %9 = icmp eq i32 %8, %2
  br i1 %9, label %10, label %6, !llvm.loop !54

10:                                               ; preds = %6, %4
  %11 = load i64, ptr %1, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 35
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.232) #15
  %15 = load i64, ptr %1, align 8
  %16 = and i64 %15, 65535
  br label %17

17:                                               ; preds = %14, %10
  %18 = phi i64 [ %16, %14 ], [ %12, %10 ]
  %19 = phi i64 [ %15, %14 ], [ %11, %10 ]
  %20 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %18, i64 11
  %21 = load i8, ptr %20, align 1, !tbaa !40
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 16777216
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.233) #15
  %29 = load i64, ptr %1, align 8
  br label %30

30:                                               ; preds = %28, %23, %17
  %31 = phi i64 [ %29, %28 ], [ %19, %23 ], [ %19, %17 ]
  %32 = and i64 %31, 134217728
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 33554432
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34, %30
  %40 = and i64 %31, 67108864
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39, %34
  %43 = phi ptr [ @.str.234, %34 ], [ @.str.235, %39 ]
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %43) #15
  br label %44

44:                                               ; preds = %42, %39
  %45 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !40
  %47 = load i64, ptr %46, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 15
  br i1 %49, label %50, label %73

50:                                               ; preds = %44, %50
  %51 = phi ptr [ %53, %50 ], [ %46, %44 ]
  %52 = getelementptr inbounds %struct.tree_common, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !40
  %54 = load i64, ptr %53, align 8
  %55 = and i64 %54, 65535
  %56 = icmp eq i64 %55, 15
  br i1 %56, label %50, label %57, !llvm.loop !55

57:                                               ; preds = %50
  %58 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %53, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  %59 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  %60 = load ptr, ptr %45, align 8, !tbaa !40
  %61 = load i64, ptr %60, align 8
  %62 = and i64 %61, 65535
  %63 = icmp eq i64 %62, 15
  br i1 %63, label %64, label %85

64:                                               ; preds = %57, %64
  %65 = phi ptr [ %69, %64 ], [ %60, %57 ]
  %66 = getelementptr inbounds %struct.tree_type, ptr %65, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !40
  tail call fastcc void @dump_array_domain(ptr noundef %0, ptr noundef %67, i32 noundef %2, i32 noundef %3) #14
  %68 = getelementptr inbounds %struct.tree_common, ptr %65, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !40
  %70 = load i64, ptr %69, align 8
  %71 = and i64 %70, 65535
  %72 = icmp eq i64 %71, 15
  br i1 %72, label %64, label %85, !llvm.loop !56

73:                                               ; preds = %44
  %74 = load i64, ptr %1, align 8
  %75 = and i64 %74, 65535
  %76 = icmp eq i64 %75, 29
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !40
  %80 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %79, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  tail call fastcc void @dump_decl_name(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %3) #14
  %81 = load ptr, ptr %45, align 8, !tbaa !40
  tail call fastcc void @dump_function_declaration(ptr noundef %0, ptr noundef %81, i32 noundef %2, i32 noundef %3) #14
  br label %85

82:                                               ; preds = %73
  %83 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %46, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  %84 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %85

85:                                               ; preds = %64, %57, %77, %82
  %86 = load i64, ptr %1, align 8
  %87 = and i64 %86, 65535
  %88 = icmp eq i64 %87, 32
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 4
  %91 = load i32, ptr %90, align 8
  %92 = and i32 %91, 2
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %89
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.236) #15
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #15
  %95 = tail call ptr @decl_assembler_name(ptr noundef nonnull %1) #15
  %96 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %95, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #15
  %97 = load i64, ptr %1, align 8
  %98 = and i64 %97, 65535
  br label %99

99:                                               ; preds = %94, %85
  %100 = phi i64 [ %98, %94 ], [ %87, %85 ]
  %101 = phi i64 [ %97, %94 ], [ %86, %85 ]
  %102 = icmp eq i64 %100, 29
  br i1 %102, label %112, label %103

103:                                              ; preds = %89, %99
  %104 = phi i64 [ %101, %99 ], [ %86, %89 ]
  %105 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 5
  %106 = load ptr, ptr %105, align 8, !tbaa !40
  %107 = icmp eq ptr %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %103
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 61) #15
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  %109 = load ptr, ptr %105, align 8, !tbaa !40
  %110 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %109, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  %111 = load i64, ptr %1, align 8
  br label %112

112:                                              ; preds = %103, %108, %99
  %113 = phi i64 [ %104, %103 ], [ %111, %108 ], [ %101, %99 ]
  %114 = and i64 %113, 65535
  %115 = icmp eq i64 %114, 32
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %118 = load i64, ptr %117, align 8
  %119 = and i64 %118, 67108864
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %116
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.237) #15
  %122 = tail call ptr @decl_value_expr_lookup(ptr noundef nonnull %1) #15
  %123 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %122, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 93) #15
  br label %124

124:                                              ; preds = %121, %116, %112
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 59) #15
  ret void
}

; Function Attrs: optsize
declare void @pp_write_text_to_stream(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @pp_construct(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @dump_generic_node(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) local_unnamed_addr #0 !prof !35 {
  %6 = alloca %struct.real_value, align 8
  %7 = alloca [100 x i8], align 16
  %8 = alloca [100 x i8], align 16
  %9 = alloca %struct.tree_stmt_iterator, align 8
  %10 = alloca %struct.call_expr_arg_iterator_d, align 8
  %11 = icmp eq ptr %1, null
  br i1 %11, label %1562, label %12

12:                                               ; preds = %5
  %13 = load i64, ptr %1, align 8
  %14 = and i64 %13, 65535
  %15 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !57
  %17 = add i32 %16, -4
  %18 = icmp ult i32 %17, 7
  %19 = icmp eq i8 %4, 0
  %20 = and i32 %3, 4096
  %21 = icmp eq i32 %20, 0
  %22 = or i1 %19, %21
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull %1) #15
  %24 = load i64, ptr %1, align 8
  br label %25

25:                                               ; preds = %23, %12
  %26 = phi i64 [ %24, %23 ], [ %13, %12 ]
  %27 = and i32 %3, 128
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %25
  %30 = and i64 %26, 65535
  %31 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !57
  %33 = add i32 %32, -4
  %34 = icmp ult i32 %33, 7
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !40
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  tail call fastcc void @dump_location(ptr noundef %0, i32 noundef %37) #14
  %40 = load i64, ptr %1, align 8
  br label %41

41:                                               ; preds = %29, %39, %35, %25
  %42 = phi i64 [ %26, %29 ], [ %40, %39 ], [ %26, %35 ], [ %26, %25 ]
  %43 = trunc i64 %42 to i16
  switch i16 %43, label %1552 [
    i16 0, label %47
    i16 1, label %48
    i16 2, label %44
    i16 149, label %71
    i16 3, label %75
    i16 19, label %94
    i16 8, label %94
    i16 9, label %94
    i16 11, label %94
    i16 13, label %94
    i16 14, label %94
    i16 6, label %94
    i16 7, label %94
    i16 10, label %187
    i16 12, label %187
    i16 5, label %248
    i16 152, label %249
    i16 15, label %290
    i16 16, label %311
    i16 17, label %311
    i16 18, label %311
    i16 22, label %335
    i16 23, label %336
    i16 24, label %382
    i16 25, label %401
    i16 26, label %404
    i16 28, label %411
    i16 27, label %413
    i16 20, label %429
    i16 21, label %429
    i16 29, label %458
    i16 33, label %458
    i16 30, label %459
    i16 35, label %476
    i16 32, label %504
    i16 34, label %504
    i16 31, label %504
    i16 37, label %504
    i16 38, label %504
    i16 36, label %505
    i16 41, label %506
    i16 42, label %542
    i16 45, label %552
    i16 46, label %552
    i16 51, label %589
    i16 52, label %649
    i16 147, label %677
    i16 53, label %699
    i16 54, label %699
    i16 55, label %711
    i16 132, label %718
    i16 56, label %721
    i16 58, label %849
    i16 59, label %871
    i16 60, label %915
    i16 61, label %916
    i16 62, label %920
    i16 168, label %924
    i16 169, label %924
    i16 65, label %924
    i16 63, label %924
    i16 66, label %924
    i16 64, label %924
    i16 67, label %924
    i16 68, label %924
    i16 69, label %924
    i16 70, label %924
    i16 71, label %924
    i16 72, label %924
    i16 73, label %924
    i16 74, label %924
    i16 75, label %924
    i16 76, label %924
    i16 83, label %924
    i16 84, label %924
    i16 85, label %924
    i16 86, label %924
    i16 170, label %924
    i16 171, label %924
    i16 87, label %924
    i16 88, label %924
    i16 89, label %924
    i16 91, label %924
    i16 92, label %924
    i16 93, label %924
    i16 94, label %924
    i16 95, label %924
    i16 97, label %924
    i16 98, label %924
    i16 99, label %924
    i16 100, label %924
    i16 101, label %924
    i16 102, label %924
    i16 105, label %924
    i16 106, label %924
    i16 107, label %924
    i16 108, label %924
    i16 109, label %924
    i16 110, label %924
    i16 104, label %924
    i16 103, label %924
    i16 79, label %945
    i16 90, label %945
    i16 96, label %945
    i16 121, label %945
    i16 125, label %945
    i16 126, label %945
    i16 48, label %945
    i16 49, label %945
    i16 47, label %945
    i16 127, label %977
    i16 128, label %977
    i16 80, label %990
    i16 81, label %997
    i16 82, label %1004
    i16 111, label %1008
    i16 114, label %1009
    i16 115, label %1009
    i16 77, label %1009
    i16 78, label %1009
    i16 116, label %1009
    i16 113, label %1009
    i16 118, label %1030
    i16 112, label %1037
    i16 117, label %1041
    i16 120, label %1045
    i16 123, label %1049
    i16 124, label %1056
    i16 43, label %1060
    i16 44, label %1064
    i16 129, label %1068
    i16 131, label %1072
    i16 130, label %1072
    i16 142, label %1085
    i16 143, label %1094
    i16 133, label %1103
    i16 137, label %1124
    i16 185, label %1133
    i16 135, label %1143
    i16 136, label %1157
    i16 138, label %1161
    i16 134, label %1200
    i16 140, label %1225
    i16 139, label %1247
    i16 50, label %1262
    i16 141, label %1272
    i16 150, label %1291
    i16 148, label %1298
    i16 144, label %1305
    i16 145, label %1306
    i16 146, label %1307
    i16 151, label %1317
    i16 57, label %1327
    i16 167, label %1337
    i16 153, label %1347
    i16 154, label %1362
    i16 155, label %1365
    i16 156, label %1435
    i16 158, label %1438
    i16 159, label %1439
    i16 160, label %1440
    i16 161, label %1441
    i16 162, label %1448
    i16 157, label %1456
    i16 163, label %1459
    i16 164, label %1460
    i16 165, label %1464
    i16 166, label %1468
    i16 172, label %1472
    i16 173, label %1479
    i16 174, label %1486
    i16 175, label %1490
    i16 176, label %1494
    i16 177, label %1498
    i16 178, label %1502
    i16 179, label %1509
    i16 180, label %1516
    i16 4, label %1523
    i16 181, label %1524
    i16 182, label %1531
    i16 183, label %1538
    i16 184, label %1545
  ]

44:                                               ; preds = %41
  %45 = load ptr, ptr @global_trees, align 16
  %46 = icmp eq ptr %45, %1
  br i1 %46, label %1553, label %49

47:                                               ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.28) #15
  br label %1553

48:                                               ; preds = %41
  tail call void @pp_base_tree_identifier(ptr noundef %0, ptr noundef nonnull %1) #15
  br label %1553

49:                                               ; preds = %44, %68
  %50 = phi ptr [ %61, %68 ], [ %1, %44 ]
  %51 = getelementptr inbounds %struct.tree_list, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !40
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %55 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %52, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  br label %56

56:                                               ; preds = %54, %49
  %57 = getelementptr inbounds %struct.tree_list, ptr %50, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !40
  %59 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %58, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  %60 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !40
  %62 = icmp eq ptr %61, null
  br i1 %62, label %1553, label %63

63:                                               ; preds = %56
  %64 = load i64, ptr %61, align 8
  %65 = and i64 %64, 65535
  %66 = icmp eq i64 %65, 2
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #15
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  br label %68

68:                                               ; preds = %67, %63
  %69 = load ptr, ptr @global_trees, align 16
  %70 = icmp eq ptr %61, %69
  br i1 %70, label %1553, label %49, !llvm.loop !58

71:                                               ; preds = %41
  %72 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !40
  %74 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %73, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %1553

75:                                               ; preds = %41
  %76 = getelementptr inbounds %struct.tree_vec, ptr %1, i64 0, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !40
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %1553

79:                                               ; preds = %75
  %80 = zext nneg i32 %77 to i64
  %81 = add nsw i64 %80, -1
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %79, %83
  %84 = phi i64 [ %88, %83 ], [ 0, %79 ]
  %85 = getelementptr inbounds %struct.tree_vec, ptr %1, i64 0, i32 2, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !40
  %87 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %86, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #15
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  %88 = add nuw i64 %84, 1
  %89 = icmp eq i64 %88, %81
  br i1 %89, label %90, label %83, !llvm.loop !59

90:                                               ; preds = %83, %79
  %91 = getelementptr inbounds %struct.tree_vec, ptr %1, i64 0, i32 2, i64 %81
  %92 = load ptr, ptr %91, align 8, !tbaa !40
  %93 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %92, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %1553

94:                                               ; preds = %41, %41, %41, %41, %41, %41, %41, %41
  %95 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %96 = load i32, ptr %95, align 4
  %97 = and i64 %42, 1048576
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = and i64 %42, 524288
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = and i32 %96, 8192
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %102, %99, %94
  %106 = phi ptr [ @.str.29, %94 ], [ @.str.30, %99 ], [ @.str.31, %102 ]
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %106) #15
  br label %107

107:                                              ; preds = %105, %102
  %108 = load i64, ptr %1, align 8
  %109 = icmp ult i64 %108, 72057594037927936
  br i1 %109, label %120, label %110

110:                                              ; preds = %107
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.32) #15
  %111 = load ptr, ptr %0, align 8, !tbaa !49
  %112 = getelementptr inbounds %struct.output_buffer, ptr %111, i64 0, i32 6
  %113 = load i64, ptr %1, align 8
  %114 = lshr i64 %113, 56
  %115 = trunc i64 %114 to i32
  %116 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %112, ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %115) #14
  %117 = load ptr, ptr %0, align 8, !tbaa !49
  %118 = getelementptr inbounds %struct.output_buffer, ptr %117, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %118) #15
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.34) #15
  %119 = load i64, ptr %1, align 8
  br label %120

120:                                              ; preds = %110, %107
  %121 = phi i64 [ %119, %110 ], [ %108, %107 ]
  %122 = trunc i64 %121 to i16
  %123 = and i64 %121, 65535
  %124 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !57
  switch i32 %125, label %1553 [
    i32 3, label %126
    i32 2, label %132
  ]

126:                                              ; preds = %120
  %127 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !40
  %129 = icmp eq ptr %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %126
  tail call fastcc void @dump_decl_name(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %3) #14
  br label %1553

131:                                              ; preds = %126
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.35) #15
  br label %1553

132:                                              ; preds = %120
  %133 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 12
  %134 = load ptr, ptr %133, align 8, !tbaa !40
  %135 = icmp eq ptr %134, null
  br i1 %135, label %146, label %136

136:                                              ; preds = %132
  %137 = load i64, ptr %134, align 8
  %138 = trunc i64 %137 to i16
  switch i16 %138, label %145 [
    i16 1, label %139
    i16 35, label %140
  ]

139:                                              ; preds = %136
  tail call void @pp_base_tree_identifier(ptr noundef %0, ptr noundef nonnull %134) #15
  br label %1553

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.tree_decl_minimal, ptr %134, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !40
  %143 = icmp eq ptr %142, null
  br i1 %143, label %145, label %144

144:                                              ; preds = %140
  tail call fastcc void @dump_decl_name(ptr noundef %0, ptr noundef nonnull %134, i32 noundef %3) #14
  br label %1553

145:                                              ; preds = %136, %140
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.36) #15
  br label %1553

146:                                              ; preds = %132
  switch i16 %122, label %186 [
    i16 14, label %147
    i16 8, label %151
    i16 13, label %162
    i16 9, label %166
    i16 11, label %174
  ]

147:                                              ; preds = %146
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.37) #15
  %148 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !40
  %150 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %149, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %1553

151:                                              ; preds = %146
  %152 = and i64 %121, 2097152
  %153 = icmp eq i64 %152, 0
  %154 = select i1 %153, ptr @.str.39, ptr @.str.38
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %154) #15
  %155 = load ptr, ptr %0, align 8, !tbaa !49
  %156 = getelementptr inbounds %struct.output_buffer, ptr %155, i64 0, i32 6
  %157 = load i32, ptr %95, align 4
  %158 = and i32 %157, 1023
  %159 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %156, ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %158) #14
  %160 = load ptr, ptr %0, align 8, !tbaa !49
  %161 = getelementptr inbounds %struct.output_buffer, ptr %160, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %161) #15
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.40) #15
  br label %1553

162:                                              ; preds = %146
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.41) #15
  %163 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !40
  %165 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %164, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %1553

166:                                              ; preds = %146
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.42) #15
  %167 = load ptr, ptr %0, align 8, !tbaa !49
  %168 = getelementptr inbounds %struct.output_buffer, ptr %167, i64 0, i32 6
  %169 = load i32, ptr %95, align 4
  %170 = and i32 %169, 1023
  %171 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %168, ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %170) #14
  %172 = load ptr, ptr %0, align 8, !tbaa !49
  %173 = getelementptr inbounds %struct.output_buffer, ptr %172, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %173) #15
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.40) #15
  br label %1553

174:                                              ; preds = %146
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.43) #15
  %175 = load i64, ptr %1, align 8
  %176 = and i64 %175, 2147483648
  %177 = icmp eq i64 %176, 0
  %178 = select i1 %177, ptr @.str.45, ptr @.str.44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %178) #15
  %179 = load ptr, ptr %0, align 8, !tbaa !49
  %180 = getelementptr inbounds %struct.output_buffer, ptr %179, i64 0, i32 6
  %181 = load i32, ptr %95, align 4
  %182 = and i32 %181, 1023
  %183 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %180, ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %182) #14
  %184 = load ptr, ptr %0, align 8, !tbaa !49
  %185 = getelementptr inbounds %struct.output_buffer, ptr %184, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %185) #15
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.40) #15
  br label %1553

186:                                              ; preds = %146
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.36) #15
  br label %1553

187:                                              ; preds = %41, %41
  %188 = and i64 %42, 65535
  %189 = icmp eq i64 %188, 10
  %190 = select i1 %189, ptr @.str.46, ptr @.str.47
  %191 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !40
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %195

194:                                              ; preds = %187
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %190) #15
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.48) #15
  br label %1553

195:                                              ; preds = %187
  %196 = load i64, ptr %192, align 8
  %197 = and i64 %196, 65535
  %198 = icmp eq i64 %197, 20
  br i1 %198, label %199, label %215

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.tree_common, ptr %192, i64 0, i32 2
  %201 = load ptr, ptr %200, align 8, !tbaa !40
  %202 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %201, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #15
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %190) #15
  %203 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 12
  %204 = load ptr, ptr %203, align 8, !tbaa !40
  %205 = icmp eq ptr %204, null
  br i1 %205, label %211, label %206

206:                                              ; preds = %199
  %207 = getelementptr inbounds %struct.tree_decl_minimal, ptr %204, i64 0, i32 3
  %208 = load ptr, ptr %207, align 8, !tbaa !40
  %209 = icmp eq ptr %208, null
  br i1 %209, label %211, label %210

210:                                              ; preds = %206
  tail call fastcc void @dump_decl_name(ptr noundef %0, ptr noundef nonnull %204, i32 noundef %3) #14
  br label %214

211:                                              ; preds = %206, %199
  %212 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 5
  %213 = load i32, ptr %212, align 8, !tbaa !40
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %0, ptr noundef nonnull @.str.49, i32 noundef %213) #15
  br label %214

214:                                              ; preds = %211, %210
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #15
  tail call fastcc void @dump_function_declaration(ptr noundef %0, ptr noundef nonnull %192, i32 noundef %2, i32 noundef %3) #14
  br label %1553

215:                                              ; preds = %195
  %216 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %217 = load i32, ptr %216, align 4
  %218 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %192, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %190) #15
  %219 = and i64 %42, 1048576
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %215
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.50) #15
  br label %222

222:                                              ; preds = %221, %215
  %223 = and i64 %42, 524288
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %222
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.51) #15
  br label %226

226:                                              ; preds = %225, %222
  %227 = and i32 %217, 8192
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %226
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.52) #15
  br label %230

230:                                              ; preds = %229, %226
  %231 = load i64, ptr %1, align 8
  %232 = icmp ult i64 %231, 72057594037927936
  br i1 %232, label %243, label %233

233:                                              ; preds = %230
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.53) #15
  %234 = load ptr, ptr %0, align 8, !tbaa !49
  %235 = getelementptr inbounds %struct.output_buffer, ptr %234, i64 0, i32 6
  %236 = load i64, ptr %1, align 8
  %237 = lshr i64 %236, 56
  %238 = trunc i64 %237 to i32
  %239 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %235, ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %238) #14
  %240 = load ptr, ptr %0, align 8, !tbaa !49
  %241 = getelementptr inbounds %struct.output_buffer, ptr %240, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %241) #15
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.40) #15
  %242 = load i64, ptr %1, align 8
  br label %243

243:                                              ; preds = %233, %230
  %244 = phi i64 [ %242, %233 ], [ %231, %230 ]
  %245 = and i64 %244, 67108864
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %1553, label %247

247:                                              ; preds = %243
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.54) #15
  br label %1553

248:                                              ; preds = %41
  tail call fastcc void @do_niy(ptr noundef %0, ptr noundef nonnull %1) #14
  br label %1553

249:                                              ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.56) #15
  %250 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %251 = load ptr, ptr %250, align 8, !tbaa !40
  %252 = icmp eq ptr %251, null
  br i1 %252, label %255, label %253

253:                                              ; preds = %249
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.55) #15
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.58) #15
  %254 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %251, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %255

255:                                              ; preds = %253, %249
  %256 = phi ptr [ @.str.57, %253 ], [ @.str.55, %249 ]
  %257 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %258 = load ptr, ptr %257, align 8, !tbaa !40
  %259 = icmp eq ptr %258, null
  br i1 %259, label %262, label %260

260:                                              ; preds = %255
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %256) #15
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.59) #15
  %261 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %258, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %262

262:                                              ; preds = %260, %255
  %263 = phi ptr [ @.str.57, %260 ], [ %256, %255 ]
  %264 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %265 = load ptr, ptr %264, align 8, !tbaa !40
  %266 = icmp eq ptr %265, null
  br i1 %266, label %269, label %267

267:                                              ; preds = %262
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %263) #15
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.60) #15
  %268 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %265, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %269

269:                                              ; preds = %267, %262
  %270 = phi ptr [ @.str.57, %267 ], [ %263, %262 ]
  %271 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 2
  %272 = load ptr, ptr %271, align 8, !tbaa !40
  %273 = icmp eq ptr %272, null
  br i1 %273, label %276, label %274

274:                                              ; preds = %269
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %270) #15
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.61) #15
  %275 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %272, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %276

276:                                              ; preds = %274, %269
  %277 = phi ptr [ @.str.57, %274 ], [ %270, %269 ]
  %278 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 1
  %279 = load ptr, ptr %278, align 8, !tbaa !40
  %280 = icmp eq ptr %279, null
  br i1 %280, label %283, label %281

281:                                              ; preds = %276
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %277) #15
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.62) #15
  %282 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %279, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %283

283:                                              ; preds = %281, %276
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.3) #15
  %284 = and i32 %3, 8
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %1553, label %286

286:                                              ; preds = %283
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.63) #15
  %287 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 2
  %288 = load ptr, ptr %287, align 8, !tbaa !40
  %289 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %288, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.64) #15
  br label %1553

290:                                              ; preds = %41, %290
  %291 = phi ptr [ %293, %290 ], [ %1, %41 ]
  %292 = getelementptr inbounds %struct.tree_common, ptr %291, i64 0, i32 2
  %293 = load ptr, ptr %292, align 8, !tbaa !40
  %294 = load i64, ptr %293, align 8
  %295 = and i64 %294, 65535
  %296 = icmp eq i64 %295, 15
  br i1 %296, label %290, label %297, !llvm.loop !60

297:                                              ; preds = %290
  %298 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %293, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  %299 = load i64, ptr %1, align 8
  %300 = and i64 %299, 65535
  %301 = icmp eq i64 %300, 15
  br i1 %301, label %302, label %1553

302:                                              ; preds = %297, %302
  %303 = phi ptr [ %307, %302 ], [ %1, %297 ]
  %304 = getelementptr inbounds %struct.tree_type, ptr %303, i64 0, i32 1
  %305 = load ptr, ptr %304, align 8, !tbaa !40
  tail call fastcc void @dump_array_domain(ptr noundef %0, ptr noundef %305, i32 noundef %2, i32 noundef %3) #14
  %306 = getelementptr inbounds %struct.tree_common, ptr %303, i64 0, i32 2
  %307 = load ptr, ptr %306, align 8, !tbaa !40
  %308 = load i64, ptr %307, align 8
  %309 = and i64 %308, 65535
  %310 = icmp eq i64 %309, 15
  br i1 %310, label %302, label %1553, !llvm.loop !61

311:                                              ; preds = %41, %41, %41
  %312 = and i64 %42, 1048576
  %313 = icmp eq i64 %312, 0
  br i1 %313, label %315, label %314

314:                                              ; preds = %311
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.29) #15
  br label %315

315:                                              ; preds = %314, %311
  %316 = and i64 %42, 524288
  %317 = icmp eq i64 %316, 0
  br i1 %317, label %319, label %318

318:                                              ; preds = %315
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.30) #15
  br label %319

319:                                              ; preds = %318, %315
  %320 = load i64, ptr %1, align 8
  %321 = trunc i64 %320 to i16
  switch i16 %321, label %325 [
    i16 16, label %323
    i16 17, label %322
  ]

322:                                              ; preds = %319
  br label %323

323:                                              ; preds = %319, %322
  %324 = phi ptr [ @.str.66, %322 ], [ @.str.65, %319 ]
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %324) #15
  br label %325

325:                                              ; preds = %323, %319
  %326 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 12
  %327 = load ptr, ptr %326, align 8, !tbaa !40
  %328 = icmp eq ptr %327, null
  br i1 %328, label %331, label %329

329:                                              ; preds = %325
  %330 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %327, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %1553

331:                                              ; preds = %325
  %332 = and i32 %3, 2
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %1553

334:                                              ; preds = %331
  tail call fastcc void @print_struct_decl(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #14
  br label %1553

335:                                              ; preds = %41
  tail call fastcc void @do_niy(ptr noundef %0, ptr noundef nonnull %1) #14
  br label %1553

336:                                              ; preds = %41
  %337 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %338 = load ptr, ptr %337, align 8, !tbaa !40
  %339 = load i64, ptr %338, align 8
  %340 = and i64 %339, 65535
  %341 = icmp eq i64 %340, 10
  br i1 %341, label %342, label %350

342:                                              ; preds = %336
  %343 = load ptr, ptr %0, align 8, !tbaa !49
  %344 = getelementptr inbounds %struct.output_buffer, ptr %343, i64 0, i32 6
  %345 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1
  %346 = load i64, ptr %345, align 8, !tbaa !40
  %347 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %344, ptr noundef nonnull dereferenceable(1) @.str.67, i64 noundef %346) #14
  %348 = load ptr, ptr %0, align 8, !tbaa !49
  %349 = getelementptr inbounds %struct.output_buffer, ptr %348, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %349) #15
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.68) #15
  br label %1553

350:                                              ; preds = %336
  %351 = tail call i32 @host_integerp(ptr noundef nonnull %1, i32 noundef 0) #15
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %374

353:                                              ; preds = %350
  %354 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1
  %355 = load i64, ptr %354, align 8, !tbaa !40
  %356 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1, i32 1
  %357 = load i64, ptr %356, align 8, !tbaa !40
  %358 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %1) #15
  %359 = icmp slt i32 %358, 0
  br i1 %359, label %360, label %366

360:                                              ; preds = %353
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 45) #15
  %361 = xor i64 %357, -1
  %362 = icmp eq i64 %355, 0
  %363 = zext i1 %362 to i64
  %364 = add nsw i64 %363, %361
  %365 = sub i64 0, %355
  br label %366

366:                                              ; preds = %360, %353
  %367 = phi i64 [ %365, %360 ], [ %355, %353 ]
  %368 = phi i64 [ %364, %360 ], [ %357, %353 ]
  %369 = load ptr, ptr %0, align 8, !tbaa !49
  %370 = getelementptr inbounds %struct.output_buffer, ptr %369, i64 0, i32 6
  %371 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %370, ptr noundef nonnull dereferenceable(1) @.str.69, i64 noundef %368, i64 noundef %367) #14
  %372 = load ptr, ptr %0, align 8, !tbaa !49
  %373 = getelementptr inbounds %struct.output_buffer, ptr %372, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %373) #15
  br label %1553

374:                                              ; preds = %350
  %375 = load ptr, ptr %0, align 8, !tbaa !49
  %376 = getelementptr inbounds %struct.output_buffer, ptr %375, i64 0, i32 6
  %377 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1
  %378 = load i64, ptr %377, align 8, !tbaa !40
  %379 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %376, ptr noundef nonnull dereferenceable(1) @.str.67, i64 noundef %378) #14
  %380 = load ptr, ptr %0, align 8, !tbaa !49
  %381 = getelementptr inbounds %struct.output_buffer, ptr %380, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %381) #15
  br label %1553

382:                                              ; preds = %41
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #17
  %383 = and i64 %42, 134217728
  %384 = icmp eq i64 %383, 0
  br i1 %384, label %386, label %385

385:                                              ; preds = %382
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.70) #15
  br label %386

386:                                              ; preds = %385, %382
  %387 = getelementptr inbounds %struct.tree_real_cst, ptr %1, i64 0, i32 1
  %388 = load ptr, ptr %387, align 8, !tbaa !40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %388, i64 32, i1 false), !tbaa.struct !62
  %389 = call zeroext i8 @real_isinf(ptr noundef nonnull %6) #15
  %390 = icmp eq i8 %389, 0
  br i1 %390, label %395, label %391

391:                                              ; preds = %386
  %392 = call zeroext i8 @real_isneg(ptr noundef nonnull %6) #15
  %393 = icmp eq i8 %392, 0
  %394 = select i1 %393, ptr @.str.72, ptr @.str.71
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %394) #15
  br label %400

395:                                              ; preds = %386
  %396 = call zeroext i8 @real_isnan(ptr noundef nonnull %6) #15
  %397 = icmp eq i8 %396, 0
  br i1 %397, label %399, label %398

398:                                              ; preds = %395
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.73) #15
  br label %400

399:                                              ; preds = %395
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %7) #17
  call void @real_to_decimal(ptr noundef nonnull %7, ptr noundef nonnull %6, i64 noundef 100, i64 noundef 0, i32 noundef 1) #15
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %7) #15
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %7) #17
  br label %400

400:                                              ; preds = %398, %399, %391
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #17
  br label %1553

401:                                              ; preds = %41
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %8) #17
  %402 = getelementptr inbounds %struct.tree_fixed_cst, ptr %1, i64 0, i32 1
  %403 = load ptr, ptr %402, align 8, !tbaa !40
  call void @fixed_to_decimal(ptr noundef nonnull %8, ptr noundef %403, i64 noundef 100) #15
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %8) #17
  br label %1553

404:                                              ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.74) #15
  %405 = getelementptr inbounds %struct.tree_complex, ptr %1, i64 0, i32 1
  %406 = load ptr, ptr %405, align 8, !tbaa !40
  %407 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %406, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.57) #15
  %408 = getelementptr inbounds %struct.tree_complex, ptr %1, i64 0, i32 2
  %409 = load ptr, ptr %408, align 8, !tbaa !40
  %410 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %409, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.75) #15
  br label %1553

411:                                              ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.76) #15
  %412 = getelementptr inbounds %struct.tree_string, ptr %1, i64 0, i32 2
  tail call fastcc void @pretty_print_string(ptr noundef %0, ptr noundef nonnull %412) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.76) #15
  br label %1553

413:                                              ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.77) #15
  %414 = getelementptr inbounds %struct.tree_vector, ptr %1, i64 0, i32 1
  %415 = load ptr, ptr %414, align 8, !tbaa !40
  %416 = icmp eq ptr %415, null
  br i1 %416, label %428, label %417

417:                                              ; preds = %413, %425
  %418 = phi ptr [ %426, %425 ], [ %415, %413 ]
  %419 = getelementptr inbounds %struct.tree_list, ptr %418, i64 0, i32 2
  %420 = load ptr, ptr %419, align 8, !tbaa !40
  %421 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %420, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  %422 = getelementptr inbounds %struct.tree_common, ptr %418, i64 0, i32 1
  %423 = load ptr, ptr %422, align 8, !tbaa !40
  %424 = icmp eq ptr %423, null
  br i1 %424, label %428, label %425

425:                                              ; preds = %417
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.57) #15
  %426 = load ptr, ptr %422, align 8, !tbaa !40
  %427 = icmp eq ptr %426, null
  br i1 %427, label %428, label %417, !llvm.loop !63

428:                                              ; preds = %417, %425, %413
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.78) #15
  br label %1553

429:                                              ; preds = %41, %41
  %430 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %431 = load ptr, ptr %430, align 8, !tbaa !40
  %432 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %431, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  %433 = load i64, ptr %1, align 8
  %434 = and i64 %433, 65535
  %435 = icmp eq i64 %434, 21
  br i1 %435, label %436, label %445

436:                                              ; preds = %429
  %437 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 14
  %438 = load ptr, ptr %437, align 8, !tbaa !40
  %439 = icmp eq ptr %438, null
  br i1 %439, label %443, label %440

440:                                              ; preds = %436
  %441 = getelementptr inbounds %struct.tree_type, ptr %438, i64 0, i32 12
  %442 = load ptr, ptr %441, align 8, !tbaa !40
  tail call fastcc void @dump_decl_name(ptr noundef %0, ptr noundef %442, i32 noundef %3) #14
  br label %444

443:                                              ; preds = %436
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.79) #15
  br label %444

444:                                              ; preds = %443, %440
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.80) #15
  br label %445

445:                                              ; preds = %444, %429
  %446 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 12
  %447 = load ptr, ptr %446, align 8, !tbaa !40
  %448 = icmp eq ptr %447, null
  br i1 %448, label %454, label %449

449:                                              ; preds = %445
  %450 = getelementptr inbounds %struct.tree_decl_minimal, ptr %447, i64 0, i32 3
  %451 = load ptr, ptr %450, align 8, !tbaa !40
  %452 = icmp eq ptr %451, null
  br i1 %452, label %454, label %453

453:                                              ; preds = %449
  tail call fastcc void @dump_decl_name(ptr noundef %0, ptr noundef nonnull %447, i32 noundef %3) #14
  br label %457

454:                                              ; preds = %449, %445
  %455 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 5
  %456 = load i32, ptr %455, align 8, !tbaa !40
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %0, ptr noundef nonnull @.str.49, i32 noundef %456) #15
  br label %457

457:                                              ; preds = %454, %453
  tail call fastcc void @dump_function_declaration(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #14
  br label %1553

458:                                              ; preds = %41, %41
  tail call fastcc void @dump_decl_name(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %3) #14
  br label %1553

459:                                              ; preds = %41
  %460 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %461 = load ptr, ptr %460, align 8, !tbaa !40
  %462 = icmp eq ptr %461, null
  br i1 %462, label %464, label %463

463:                                              ; preds = %459
  tail call fastcc void @dump_decl_name(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %3) #14
  br label %1553

464:                                              ; preds = %459
  %465 = getelementptr inbounds %struct.tree_label_decl, ptr %1, i64 0, i32 1
  %466 = load i32, ptr %465, align 8, !tbaa !40
  %467 = icmp eq i32 %466, -1
  br i1 %467, label %469, label %468

468:                                              ; preds = %464
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %0, ptr noundef nonnull @.str.81, i32 noundef %466) #15
  br label %1553

469:                                              ; preds = %464
  %470 = and i32 %3, 1048576
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %473, label %472

472:                                              ; preds = %469
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.82) #15
  br label %1553

473:                                              ; preds = %469
  %474 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %475 = load i32, ptr %474, align 4, !tbaa !40
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %0, ptr noundef nonnull @.str.83, i32 noundef %475) #15
  br label %1553

476:                                              ; preds = %41
  %477 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 1
  %478 = load i32, ptr %477, align 8, !tbaa !40
  %479 = icmp ult i32 %478, 2
  br i1 %479, label %1553, label %480

480:                                              ; preds = %476
  %481 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %482 = load ptr, ptr %481, align 8, !tbaa !40
  %483 = icmp eq ptr %482, null
  br i1 %483, label %485, label %484

484:                                              ; preds = %480
  tail call fastcc void @dump_decl_name(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %3) #14
  br label %1553

485:                                              ; preds = %480
  %486 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %487 = load ptr, ptr %486, align 8, !tbaa !40
  %488 = load i64, ptr %487, align 8
  %489 = and i64 %488, 65534
  %490 = icmp eq i64 %489, 16
  br i1 %490, label %491, label %498

491:                                              ; preds = %485
  %492 = getelementptr inbounds %struct.tree_type, ptr %487, i64 0, i32 14
  %493 = load ptr, ptr %492, align 8, !tbaa !40
  %494 = icmp eq ptr %493, null
  br i1 %494, label %498, label %495

495:                                              ; preds = %491
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.84) #15
  %496 = load ptr, ptr %486, align 8, !tbaa !40
  %497 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %496, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %1553

498:                                              ; preds = %485, %491
  %499 = and i64 %488, 65535
  %500 = icmp eq i64 %499, 17
  %501 = select i1 %500, ptr @.str.85, ptr @.str.65
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %501) #15
  %502 = load ptr, ptr %486, align 8, !tbaa !40
  %503 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %502, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %1553

504:                                              ; preds = %41, %41, %41, %41, %41
  tail call fastcc void @dump_decl_name(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %3) #14
  br label %1553

505:                                              ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.86) #15
  br label %1553

506:                                              ; preds = %41
  %507 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %508 = load ptr, ptr %507, align 8, !tbaa !40
  %509 = icmp eq ptr %508, null
  br i1 %509, label %517, label %510

510:                                              ; preds = %506
  %511 = load i64, ptr %508, align 8
  %512 = and i64 %511, 65535
  %513 = icmp eq i64 %512, 47
  br i1 %513, label %514, label %517

514:                                              ; preds = %510
  %515 = getelementptr inbounds %struct.tree_exp, ptr %508, i64 0, i32 3
  %516 = load ptr, ptr %515, align 8, !tbaa !40
  br label %517

517:                                              ; preds = %514, %510, %506
  %518 = phi ptr [ @.str.88, %514 ], [ @.str.87, %510 ], [ @.str.87, %506 ]
  %519 = phi ptr [ %516, %514 ], [ %508, %510 ], [ null, %506 ]
  %520 = tail call i32 @op_prio(ptr noundef %519) #14, !range !64
  %521 = tail call i32 @op_prio(ptr noundef nonnull %1) #14, !range !64
  %522 = icmp ult i32 %520, %521
  br i1 %522, label %523, label %524

523:                                              ; preds = %517
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #15
  br label %524

524:                                              ; preds = %523, %517
  %525 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %519, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  %526 = tail call i32 @op_prio(ptr noundef %519) #14, !range !64
  %527 = tail call i32 @op_prio(ptr noundef nonnull %1) #14, !range !64
  %528 = icmp ult i32 %526, %527
  br i1 %528, label %529, label %530

529:                                              ; preds = %524
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #15
  br label %530

530:                                              ; preds = %529, %524
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %518) #15
  %531 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %532 = load ptr, ptr %531, align 8, !tbaa !40
  %533 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %532, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  %534 = tail call ptr @component_ref_field_offset(ptr noundef nonnull %1) #15
  %535 = icmp eq ptr %534, null
  br i1 %535, label %1553, label %536

536:                                              ; preds = %530
  %537 = load i64, ptr %534, align 8
  %538 = and i64 %537, 65535
  %539 = icmp eq i64 %538, 23
  br i1 %539, label %1553, label %540

540:                                              ; preds = %536
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.89) #15
  %541 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %534, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #15
  br label %1553

542:                                              ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.90) #15
  %543 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %544 = load ptr, ptr %543, align 8, !tbaa !40
  %545 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %544, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.57) #15
  %546 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %547 = load ptr, ptr %546, align 8, !tbaa !40
  %548 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %547, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.57) #15
  %549 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %550 = load ptr, ptr %549, align 8, !tbaa !40
  %551 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %550, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.40) #15
  br label %1553

552:                                              ; preds = %41, %41
  %553 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %554 = load ptr, ptr %553, align 8, !tbaa !40
  %555 = tail call i32 @op_prio(ptr noundef %554) #14, !range !64
  %556 = tail call i32 @op_prio(ptr noundef nonnull %1) #14, !range !64
  %557 = icmp ult i32 %555, %556
  br i1 %557, label %558, label %559

558:                                              ; preds = %552
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #15
  br label %559

559:                                              ; preds = %558, %552
  %560 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %554, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  %561 = tail call i32 @op_prio(ptr noundef %554) #14, !range !64
  %562 = tail call i32 @op_prio(ptr noundef nonnull %1) #14, !range !64
  %563 = icmp ult i32 %561, %562
  br i1 %563, label %564, label %565

564:                                              ; preds = %559
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #15
  br label %565

565:                                              ; preds = %564, %559
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 91) #15
  %566 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %567 = load ptr, ptr %566, align 8, !tbaa !40
  %568 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %567, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  %569 = load i64, ptr %1, align 8
  %570 = and i64 %569, 65535
  %571 = icmp eq i64 %570, 46
  br i1 %571, label %572, label %573

572:                                              ; preds = %565
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.91) #15
  br label %573

573:                                              ; preds = %572, %565
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 93) #15
  %574 = tail call ptr @array_ref_low_bound(ptr noundef nonnull %1) #15
  %575 = tail call ptr @array_ref_element_size(ptr noundef nonnull %1) #15
  %576 = tail call i32 @integer_zerop(ptr noundef %574) #15
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %586, label %578

578:                                              ; preds = %573
  %579 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %580 = load ptr, ptr %579, align 8, !tbaa !40
  %581 = icmp eq ptr %580, null
  br i1 %581, label %582, label %586

582:                                              ; preds = %578
  %583 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 2
  %584 = load ptr, ptr %583, align 8, !tbaa !40
  %585 = icmp eq ptr %584, null
  br i1 %585, label %1553, label %586

586:                                              ; preds = %582, %578, %573
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.92) #15
  %587 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %574, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.93) #15
  %588 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %575, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #15
  br label %1553

589:                                              ; preds = %41
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #15
  %590 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %591 = load ptr, ptr %590, align 8, !tbaa !40
  %592 = load i64, ptr %591, align 8
  %593 = and i64 %592, 65534
  %594 = icmp eq i64 %593, 16
  %595 = getelementptr inbounds %struct.tree_constructor, ptr %1, i64 0, i32 1
  %596 = load ptr, ptr %595, align 8, !tbaa !40
  %597 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %596) #14
  %598 = icmp eq i32 %597, 0
  br i1 %598, label %648, label %599

599:                                              ; preds = %589, %642
  %600 = phi ptr [ %643, %642 ], [ %596, %589 ]
  %601 = phi i64 [ %644, %642 ], [ 0, %589 ]
  %602 = trunc i64 %601 to i32
  %603 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %600, i32 noundef %602) #14
  %604 = getelementptr inbounds %struct.constructor_elt_d, ptr %603, i64 0, i32 1
  %605 = load ptr, ptr %604, align 8, !tbaa !65
  %606 = load ptr, ptr %603, align 8, !tbaa !67
  %607 = icmp ne ptr %606, null
  %608 = and i1 %594, %607
  br i1 %608, label %609, label %611

609:                                              ; preds = %599
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 46) #15
  %610 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %606, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.94) #15
  br label %611

611:                                              ; preds = %609, %599
  %612 = icmp eq ptr %605, null
  br i1 %612, label %631, label %613

613:                                              ; preds = %611
  %614 = load i64, ptr %605, align 8
  %615 = and i64 %614, 65535
  %616 = icmp eq i64 %615, 121
  br i1 %616, label %617, label %625

617:                                              ; preds = %613
  %618 = getelementptr inbounds %struct.tree_exp, ptr %605, i64 0, i32 3
  %619 = load ptr, ptr %618, align 8, !tbaa !40
  %620 = load i64, ptr %619, align 8
  %621 = and i64 %620, 65535
  %622 = icmp eq i64 %621, 29
  %623 = select i1 %622, i64 %620, i64 %614
  %624 = select i1 %622, ptr %619, ptr %605
  br label %625

625:                                              ; preds = %617, %613
  %626 = phi i64 [ %623, %617 ], [ %614, %613 ]
  %627 = phi ptr [ %624, %617 ], [ %605, %613 ]
  %628 = and i64 %626, 65535
  %629 = icmp eq i64 %628, 29
  br i1 %629, label %630, label %631

630:                                              ; preds = %625
  tail call fastcc void @dump_decl_name(ptr noundef %0, ptr noundef nonnull %627, i32 noundef %3) #14
  br label %634

631:                                              ; preds = %611, %625
  %632 = phi ptr [ %627, %625 ], [ null, %611 ]
  %633 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %632, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %634

634:                                              ; preds = %631, %630
  %635 = load ptr, ptr %595, align 8, !tbaa !40
  %636 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %635) #14
  %637 = add i32 %636, -1
  %638 = zext i32 %637 to i64
  %639 = icmp eq i64 %601, %638
  br i1 %639, label %642, label %640

640:                                              ; preds = %634
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #15
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  %641 = load ptr, ptr %595, align 8, !tbaa !40
  br label %642

642:                                              ; preds = %634, %640
  %643 = phi ptr [ %635, %634 ], [ %641, %640 ]
  %644 = add nuw nsw i64 %601, 1
  %645 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %643) #14
  %646 = zext i32 %645 to i64
  %647 = icmp ult i64 %644, %646
  br i1 %647, label %599, label %648, !llvm.loop !68

648:                                              ; preds = %642, %589
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #15
  br label %1553

649:                                              ; preds = %41
  %650 = and i32 %3, 2
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %653, label %652

652:                                              ; preds = %649
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.95) #15
  br label %1553

653:                                              ; preds = %649
  %654 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %655 = load ptr, ptr %654, align 8, !tbaa !40
  %656 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %655, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 1) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #15
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  %657 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %658 = load ptr, ptr %657, align 8, !tbaa !36
  %659 = load i64, ptr %658, align 8
  %660 = and i64 %659, 65535
  %661 = icmp eq i64 %660, 52
  br i1 %661, label %662, label %674

662:                                              ; preds = %653, %662
  %663 = phi ptr [ %670, %662 ], [ %658, %653 ]
  %664 = phi ptr [ %669, %662 ], [ %657, %653 ]
  %665 = getelementptr inbounds %struct.tree_exp, ptr %663, i64 0, i32 3
  %666 = load ptr, ptr %665, align 8, !tbaa !40
  %667 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %666, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 1) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #15
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  %668 = load ptr, ptr %664, align 8, !tbaa !36
  %669 = getelementptr inbounds %struct.tree_exp, ptr %668, i64 1
  %670 = load ptr, ptr %669, align 8, !tbaa !36
  %671 = load i64, ptr %670, align 8
  %672 = and i64 %671, 65535
  %673 = icmp eq i64 %672, 52
  br i1 %673, label %662, label %674, !llvm.loop !69

674:                                              ; preds = %662, %653
  %675 = phi ptr [ %658, %653 ], [ %670, %662 ]
  %676 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %675, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 1) #14
  br label %1553

677:                                              ; preds = %41
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #17
  %678 = and i32 %3, 2
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %681, label %680

680:                                              ; preds = %677
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.96) #15
  br label %698

681:                                              ; preds = %677
  %682 = tail call fastcc { ptr, ptr } @tsi_start(ptr noundef nonnull %1) #14
  %683 = extractvalue { ptr, ptr } %682, 0
  %684 = extractvalue { ptr, ptr } %682, 1
  store ptr %683, ptr %9, align 8, !tbaa.struct !70
  %685 = getelementptr inbounds i8, ptr %9, i64 8
  store ptr %684, ptr %685, align 8, !tbaa.struct !71
  %686 = tail call fastcc zeroext i8 @tsi_end_p(ptr %683) #14
  %687 = icmp eq i8 %686, 0
  br i1 %687, label %688, label %698

688:                                              ; preds = %681, %692
  %689 = phi ptr [ %695, %692 ], [ %683, %681 ]
  %690 = phi i1 [ true, %692 ], [ false, %681 ]
  br i1 %690, label %691, label %692

691:                                              ; preds = %688
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %2) #14
  br label %692

692:                                              ; preds = %688, %691
  %693 = tail call fastcc ptr @tsi_stmt(ptr %689) #14
  %694 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %693, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 1) #14
  call fastcc void @tsi_next(ptr noundef nonnull %9) #14
  %695 = load ptr, ptr %9, align 8
  %696 = tail call fastcc zeroext i8 @tsi_end_p(ptr %695) #14
  %697 = icmp eq i8 %696, 0
  br i1 %697, label %688, label %698, !llvm.loop !72

698:                                              ; preds = %692, %681, %680
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #17
  br label %1553

699:                                              ; preds = %41, %41
  %700 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %701 = load ptr, ptr %700, align 8, !tbaa !40
  %702 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %701, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 61) #15
  %703 = load i64, ptr %1, align 8
  %704 = and i64 %703, 67174399
  %705 = icmp eq i64 %704, 67108917
  br i1 %705, label %706, label %707

706:                                              ; preds = %699
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.97) #15
  br label %707

707:                                              ; preds = %706, %699
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  %708 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %709 = load ptr, ptr %708, align 8, !tbaa !40
  %710 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %709, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %1553

711:                                              ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.98) #15
  %712 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %713 = load ptr, ptr %712, align 8, !tbaa !40
  %714 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %713, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #15
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  %715 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %716 = load ptr, ptr %715, align 8, !tbaa !40
  %717 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %716, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 62) #15
  br label %1553

718:                                              ; preds = %41
  %719 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %720 = load ptr, ptr %719, align 8, !tbaa !40
  tail call void @print_declaration(ptr noundef %0, ptr noundef %720, i32 noundef %2, i32 noundef %3) #14
  br label %1557

721:                                              ; preds = %41
  %722 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %723 = load ptr, ptr %722, align 8, !tbaa !40
  %724 = icmp eq ptr %723, null
  %725 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16
  %726 = icmp eq ptr %723, %725
  %727 = select i1 %724, i1 true, i1 %726
  br i1 %727, label %728, label %839

728:                                              ; preds = %721
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.99) #15
  %729 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %730 = load ptr, ptr %729, align 8, !tbaa !40
  %731 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %730, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #15
  %732 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %733 = load ptr, ptr %732, align 8, !tbaa !40
  %734 = icmp eq ptr %733, null
  br i1 %734, label %804, label %735

735:                                              ; preds = %728
  %736 = load i64, ptr %733, align 8
  %737 = and i64 %736, 65535
  %738 = icmp eq i64 %737, 116
  br i1 %738, label %739, label %754

739:                                              ; preds = %735
  %740 = getelementptr inbounds %struct.tree_common, ptr %733, i64 0, i32 2
  %741 = load ptr, ptr %740, align 8, !tbaa !40
  %742 = load i64, ptr %741, align 8
  %743 = and i64 %742, 65535
  %744 = icmp eq i64 %743, 19
  br i1 %744, label %745, label %804

745:                                              ; preds = %739
  %746 = getelementptr inbounds %struct.tree_exp, ptr %733, i64 0, i32 3
  %747 = load ptr, ptr %746, align 8, !tbaa !40
  %748 = tail call i32 @integer_zerop(ptr noundef %747) #15
  %749 = icmp eq i32 %748, 0
  br i1 %749, label %750, label %757

750:                                              ; preds = %745
  %751 = load ptr, ptr %732, align 8, !tbaa !40
  %752 = load i64, ptr %751, align 8
  %753 = and i64 %752, 65535
  br label %754

754:                                              ; preds = %750, %735
  %755 = phi i64 [ %753, %750 ], [ %737, %735 ]
  %756 = icmp eq i64 %755, 134
  br i1 %756, label %757, label %804

757:                                              ; preds = %754, %745
  %758 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %759 = load ptr, ptr %758, align 8, !tbaa !40
  %760 = icmp eq ptr %759, null
  br i1 %760, label %804, label %761

761:                                              ; preds = %757
  %762 = load i64, ptr %759, align 8
  %763 = and i64 %762, 65535
  %764 = icmp eq i64 %763, 116
  br i1 %764, label %765, label %780

765:                                              ; preds = %761
  %766 = getelementptr inbounds %struct.tree_common, ptr %759, i64 0, i32 2
  %767 = load ptr, ptr %766, align 8, !tbaa !40
  %768 = load i64, ptr %767, align 8
  %769 = and i64 %768, 65535
  %770 = icmp eq i64 %769, 19
  br i1 %770, label %771, label %804

771:                                              ; preds = %765
  %772 = getelementptr inbounds %struct.tree_exp, ptr %759, i64 0, i32 3
  %773 = load ptr, ptr %772, align 8, !tbaa !40
  %774 = tail call i32 @integer_zerop(ptr noundef %773) #15
  %775 = icmp eq i32 %774, 0
  br i1 %775, label %776, label %783

776:                                              ; preds = %771
  %777 = load ptr, ptr %758, align 8, !tbaa !40
  %778 = load i64, ptr %777, align 8
  %779 = and i64 %778, 65535
  br label %780

780:                                              ; preds = %776, %761
  %781 = phi i64 [ %779, %776 ], [ %763, %761 ]
  %782 = icmp eq i64 %781, 134
  br i1 %782, label %783, label %804

783:                                              ; preds = %780, %771
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  %784 = load ptr, ptr %732, align 8, !tbaa !40
  %785 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %784, i32 noundef 0, i32 noundef %3, i8 noundef zeroext 1) #14
  %786 = load ptr, ptr %758, align 8, !tbaa !40
  %787 = load i64, ptr %786, align 8
  %788 = and i64 %787, 65535
  %789 = icmp eq i64 %788, 116
  br i1 %789, label %790, label %801

790:                                              ; preds = %783
  %791 = getelementptr inbounds %struct.tree_common, ptr %786, i64 0, i32 2
  %792 = load ptr, ptr %791, align 8, !tbaa !40
  %793 = load i64, ptr %792, align 8
  %794 = and i64 %793, 65535
  %795 = icmp eq i64 %794, 19
  br i1 %795, label %796, label %801

796:                                              ; preds = %790
  %797 = getelementptr inbounds %struct.tree_exp, ptr %786, i64 0, i32 3
  %798 = load ptr, ptr %797, align 8, !tbaa !40
  %799 = tail call i32 @integer_zerop(ptr noundef %798) #15
  %800 = icmp eq i32 %799, 0
  br i1 %800, label %801, label %1557

801:                                              ; preds = %796, %790, %783
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.100) #15
  %802 = load ptr, ptr %758, align 8, !tbaa !40
  %803 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %802, i32 noundef 0, i32 noundef %3, i8 noundef zeroext 1) #14
  br label %1557

804:                                              ; preds = %765, %739, %780, %757, %754, %728
  %805 = and i32 %3, 2
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %807, label %1557

807:                                              ; preds = %804
  %808 = load ptr, ptr %732, align 8, !tbaa !40
  %809 = icmp eq ptr %808, null
  br i1 %809, label %815, label %810

810:                                              ; preds = %807
  %811 = add nsw i32 %2, 2
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %811) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #15
  %812 = add nsw i32 %2, 4
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %812) #14
  %813 = load ptr, ptr %732, align 8, !tbaa !40
  %814 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %813, i32 noundef %812, i32 noundef %3, i8 noundef zeroext 1) #14
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %811) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #15
  br label %815

815:                                              ; preds = %810, %807
  %816 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %817 = load ptr, ptr %816, align 8, !tbaa !40
  %818 = icmp eq ptr %817, null
  br i1 %818, label %1557, label %819

819:                                              ; preds = %815
  %820 = load i64, ptr %817, align 8
  %821 = and i64 %820, 65535
  %822 = icmp eq i64 %821, 116
  br i1 %822, label %823, label %834

823:                                              ; preds = %819
  %824 = getelementptr inbounds %struct.tree_common, ptr %817, i64 0, i32 2
  %825 = load ptr, ptr %824, align 8, !tbaa !40
  %826 = load i64, ptr %825, align 8
  %827 = and i64 %826, 65535
  %828 = icmp eq i64 %827, 19
  br i1 %828, label %829, label %834

829:                                              ; preds = %823
  %830 = getelementptr inbounds %struct.tree_exp, ptr %817, i64 0, i32 3
  %831 = load ptr, ptr %830, align 8, !tbaa !40
  %832 = tail call i32 @integer_zerop(ptr noundef %831) #15
  %833 = icmp eq i32 %832, 0
  br i1 %833, label %834, label %1557

834:                                              ; preds = %829, %823, %819
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %2) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.101) #15
  %835 = add nsw i32 %2, 2
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %835) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #15
  %836 = add nsw i32 %2, 4
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %836) #14
  %837 = load ptr, ptr %816, align 8, !tbaa !40
  %838 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %837, i32 noundef %836, i32 noundef %3, i8 noundef zeroext 1) #14
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %835) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #15
  br label %1557

839:                                              ; preds = %721
  %840 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %841 = load ptr, ptr %840, align 8, !tbaa !40
  %842 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %841, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 63) #15
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  %843 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %844 = load ptr, ptr %843, align 8, !tbaa !40
  %845 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %844, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 58) #15
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  %846 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %847 = load ptr, ptr %846, align 8, !tbaa !40
  %848 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %847, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %1553

849:                                              ; preds = %41
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #15
  %850 = and i32 %3, 2
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %852, label %1557

852:                                              ; preds = %849
  %853 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %854 = load ptr, ptr %853, align 8, !tbaa !40
  %855 = icmp eq ptr %854, null
  br i1 %855, label %866, label %856

856:                                              ; preds = %852
  tail call void @pp_base_newline(ptr noundef %0) #15
  %857 = load ptr, ptr %853, align 8, !tbaa !40
  %858 = icmp eq ptr %857, null
  br i1 %858, label %866, label %859

859:                                              ; preds = %856
  %860 = add nsw i32 %2, 2
  br label %861

861:                                              ; preds = %859, %861
  %862 = phi ptr [ %857, %859 ], [ %864, %861 ]
  tail call void @print_declaration(ptr noundef %0, ptr noundef nonnull %862, i32 noundef %860, i32 noundef %3) #14
  tail call void @pp_base_newline(ptr noundef %0) #15
  %863 = getelementptr inbounds %struct.tree_common, ptr %862, i64 0, i32 1
  %864 = load ptr, ptr %863, align 8, !tbaa !40
  %865 = icmp eq ptr %864, null
  br i1 %865, label %866, label %861, !llvm.loop !73

866:                                              ; preds = %861, %856, %852
  %867 = add nsw i32 %2, 2
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %867) #14
  %868 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %869 = load ptr, ptr %868, align 8, !tbaa !40
  %870 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %869, i32 noundef %867, i32 noundef %3, i8 noundef zeroext 1) #14
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %2) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #15
  br label %1557

871:                                              ; preds = %41
  %872 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %873 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %874 = load ptr, ptr %873, align 8, !tbaa !40
  tail call void @print_call_name(ptr noundef %0, ptr noundef %874, i32 noundef %3) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #17
  %875 = call fastcc ptr @first_call_expr_arg(ptr noundef nonnull %1, ptr noundef nonnull %10) #14
  %876 = icmp eq ptr %875, null
  br i1 %876, label %886, label %877

877:                                              ; preds = %871, %883
  %878 = phi ptr [ %884, %883 ], [ %875, %871 ]
  %879 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %878, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  %880 = call fastcc zeroext i8 @more_call_expr_args_p(ptr noundef nonnull %10) #14, !range !74
  %881 = icmp eq i8 %880, 0
  br i1 %881, label %883, label %882

882:                                              ; preds = %877
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #15
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  br label %883

883:                                              ; preds = %877, %882
  %884 = call fastcc ptr @next_call_expr_arg(ptr noundef nonnull %10) #14
  %885 = icmp eq ptr %884, null
  br i1 %885, label %886, label %877, !llvm.loop !75

886:                                              ; preds = %883, %871
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #17
  %887 = load i64, ptr %1, align 8
  %888 = and i64 %887, 134217728
  %889 = icmp eq i64 %888, 0
  br i1 %889, label %898, label %890

890:                                              ; preds = %886
  %891 = load ptr, ptr %872, align 8, !tbaa !40
  %892 = getelementptr inbounds %struct.tree_int_cst, ptr %891, i64 0, i32 1
  %893 = load i64, ptr %892, align 8, !tbaa !40
  %894 = trunc i64 %893 to i32
  %895 = icmp sgt i32 %894, 3
  br i1 %895, label %896, label %897

896:                                              ; preds = %890
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #15
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  br label %897

897:                                              ; preds = %896, %890
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.102) #15
  br label %898

898:                                              ; preds = %897, %886
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #15
  %899 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %900 = load ptr, ptr %899, align 8, !tbaa !40
  %901 = icmp eq ptr %900, null
  br i1 %901, label %904, label %902

902:                                              ; preds = %898
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.103) #15
  %903 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %900, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 93) #15
  br label %904

904:                                              ; preds = %902, %898
  %905 = load i64, ptr %1, align 8
  %906 = and i64 %905, 268435456
  %907 = icmp eq i64 %906, 0
  br i1 %907, label %910, label %908

908:                                              ; preds = %904
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.104) #15
  %909 = load i64, ptr %1, align 8
  br label %910

910:                                              ; preds = %908, %904
  %911 = phi i64 [ %909, %908 ], [ %905, %904 ]
  %912 = and i64 %911, 262144
  %913 = icmp eq i64 %912, 0
  br i1 %913, label %1553, label %914

914:                                              ; preds = %910
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.105) #15
  br label %1553

915:                                              ; preds = %41
  tail call fastcc void @do_niy(ptr noundef %0, ptr noundef nonnull %1) #14
  br label %1553

916:                                              ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.106) #15
  %917 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %918 = load ptr, ptr %917, align 8, !tbaa !40
  %919 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %918, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.107) #15
  br label %1553

920:                                              ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.108) #15
  %921 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %922 = load ptr, ptr %921, align 8, !tbaa !40
  %923 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %922, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 62) #15
  br label %1553

924:                                              ; preds = %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41, %41
  %925 = tail call fastcc ptr @op_symbol(ptr noundef nonnull %1) #14
  %926 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %927 = load ptr, ptr %926, align 8, !tbaa !40
  %928 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %929 = load ptr, ptr %928, align 8, !tbaa !40
  %930 = tail call i32 @op_prio(ptr noundef %927) #14, !range !64
  %931 = tail call i32 @op_prio(ptr noundef nonnull %1) #14, !range !64
  %932 = icmp ugt i32 %930, %931
  br i1 %932, label %935, label %933

933:                                              ; preds = %924
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #15
  %934 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %927, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #15
  br label %937

935:                                              ; preds = %924
  %936 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %927, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %937

937:                                              ; preds = %935, %933
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %925) #15
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  %938 = tail call i32 @op_prio(ptr noundef %929) #14, !range !64
  %939 = tail call i32 @op_prio(ptr noundef nonnull %1) #14, !range !64
  %940 = icmp ugt i32 %938, %939
  br i1 %940, label %943, label %941

941:                                              ; preds = %937
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #15
  %942 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %929, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #15
  br label %1553

943:                                              ; preds = %937
  %944 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %929, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %1553

945:                                              ; preds = %41, %41, %41, %41, %41, %41, %41, %41, %41
  %946 = and i64 %42, 65535
  %947 = icmp eq i64 %946, 121
  br i1 %947, label %948, label %954

948:                                              ; preds = %945
  %949 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %950 = load ptr, ptr %949, align 8, !tbaa !40
  %951 = load i64, ptr %950, align 8
  %952 = and i64 %951, 65534
  %953 = icmp eq i64 %952, 28
  br i1 %953, label %958, label %954

954:                                              ; preds = %948, %945
  %955 = tail call fastcc ptr @op_symbol(ptr noundef nonnull %1) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %955) #15
  %956 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %957 = load ptr, ptr %956, align 8, !tbaa !40
  br label %958

958:                                              ; preds = %948, %954
  %959 = phi ptr [ %950, %948 ], [ %957, %954 ]
  %960 = tail call i32 @op_prio(ptr noundef %959) #14, !range !64
  %961 = tail call i32 @op_prio(ptr noundef nonnull %1) #14, !range !64
  %962 = icmp ult i32 %960, %961
  br i1 %962, label %963, label %967

963:                                              ; preds = %958
  %964 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #15
  %965 = load ptr, ptr %964, align 8, !tbaa !40
  %966 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %965, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #15
  br label %969

967:                                              ; preds = %958
  %968 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %959, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %969

969:                                              ; preds = %967, %963
  %970 = load i64, ptr %1, align 8
  %971 = and i64 %970, 65535
  %972 = icmp eq i64 %971, 49
  br i1 %972, label %973, label %1553

973:                                              ; preds = %969
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.109) #15
  %974 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %975 = load ptr, ptr %974, align 8, !tbaa !40
  %976 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %975, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #15
  br label %1553

977:                                              ; preds = %41, %41
  %978 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %979 = load ptr, ptr %978, align 8, !tbaa !40
  %980 = tail call i32 @op_prio(ptr noundef %979) #14, !range !64
  %981 = tail call i32 @op_prio(ptr noundef nonnull %1) #14, !range !64
  %982 = icmp ult i32 %980, %981
  br i1 %982, label %983, label %986

983:                                              ; preds = %977
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #15
  %984 = load ptr, ptr %978, align 8, !tbaa !40
  %985 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %984, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #15
  br label %988

986:                                              ; preds = %977
  %987 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %979, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %988

988:                                              ; preds = %986, %983
  %989 = tail call fastcc ptr @op_symbol(ptr noundef nonnull %1) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %989) #15
  br label %1553

990:                                              ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.110) #15
  %991 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %992 = load ptr, ptr %991, align 8, !tbaa !40
  %993 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %992, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.57) #15
  %994 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %995 = load ptr, ptr %994, align 8, !tbaa !40
  %996 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %995, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 62) #15
  br label %1553

997:                                              ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.111) #15
  %998 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %999 = load ptr, ptr %998, align 8, !tbaa !40
  %1000 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %999, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.57) #15
  %1001 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1002 = load ptr, ptr %1001, align 8, !tbaa !40
  %1003 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1002, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 62) #15
  br label %1553

1004:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.112) #15
  %1005 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1006 = load ptr, ptr %1005, align 8, !tbaa !40
  %1007 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1006, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 62) #15
  br label %1553

1008:                                             ; preds = %41
  tail call fastcc void @do_niy(ptr noundef %0, ptr noundef nonnull %1) #14
  br label %1553

1009:                                             ; preds = %41, %41, %41, %41, %41, %41
  %1010 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %1011 = load ptr, ptr %1010, align 8, !tbaa !40
  %1012 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1013 = load ptr, ptr %1012, align 8, !tbaa !40
  %1014 = getelementptr inbounds %struct.tree_common, ptr %1013, i64 0, i32 2
  %1015 = load ptr, ptr %1014, align 8, !tbaa !40
  %1016 = icmp eq ptr %1011, %1015
  br i1 %1016, label %1019, label %1017

1017:                                             ; preds = %1009
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #15
  %1018 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1011, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.113) #15
  br label %1019

1019:                                             ; preds = %1017, %1009
  %1020 = tail call i32 @op_prio(ptr noundef nonnull %1013) #14, !range !64
  %1021 = tail call i32 @op_prio(ptr noundef nonnull %1) #14, !range !64
  %1022 = icmp ult i32 %1020, %1021
  br i1 %1022, label %1023, label %1024

1023:                                             ; preds = %1019
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #15
  br label %1024

1024:                                             ; preds = %1023, %1019
  %1025 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %1013, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  %1026 = tail call i32 @op_prio(ptr noundef nonnull %1013) #14, !range !64
  %1027 = tail call i32 @op_prio(ptr noundef nonnull %1) #14, !range !64
  %1028 = icmp ult i32 %1026, %1027
  br i1 %1028, label %1029, label %1553

1029:                                             ; preds = %1024
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #15
  br label %1553

1030:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.114) #15
  %1031 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %1032 = load ptr, ptr %1031, align 8, !tbaa !40
  %1033 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1032, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.115) #15
  %1034 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1035 = load ptr, ptr %1034, align 8, !tbaa !40
  %1036 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1035, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #15
  br label %1553

1037:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.116) #15
  %1038 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1039 = load ptr, ptr %1038, align 8, !tbaa !40
  %1040 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1039, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.117) #15
  br label %1553

1041:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.118) #15
  %1042 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1043 = load ptr, ptr %1042, align 8, !tbaa !40
  %1044 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1043, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 62) #15
  br label %1553

1045:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.119) #15
  %1046 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1047 = load ptr, ptr %1046, align 8, !tbaa !40
  %1048 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1047, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 62) #15
  br label %1553

1049:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.120) #15
  %1050 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1051 = load ptr, ptr %1050, align 8, !tbaa !40
  %1052 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1051, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.57) #15
  %1053 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1054 = load ptr, ptr %1053, align 8, !tbaa !40
  %1055 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1054, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.40) #15
  br label %1553

1056:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.121) #15
  %1057 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1058 = load ptr, ptr %1057, align 8, !tbaa !40
  %1059 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1058, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.40) #15
  br label %1553

1060:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.122) #15
  %1061 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1062 = load ptr, ptr %1061, align 8, !tbaa !40
  %1063 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1062, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.40) #15
  br label %1553

1064:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.123) #15
  %1065 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1066 = load ptr, ptr %1065, align 8, !tbaa !40
  %1067 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1066, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.40) #15
  br label %1553

1068:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.124) #15
  %1069 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1070 = load ptr, ptr %1069, align 8, !tbaa !40
  %1071 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1070, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.40) #15
  br label %1553

1072:                                             ; preds = %41, %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.125) #15
  %1073 = add nsw i32 %2, 2
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %1073) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.63) #15
  %1074 = add nsw i32 %2, 4
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %1074) #14
  %1075 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1076 = load ptr, ptr %1075, align 8, !tbaa !40
  %1077 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1076, i32 noundef %1074, i32 noundef %3, i8 noundef zeroext 1) #14
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %1073) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.64) #15
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %2) #14
  %1078 = load i64, ptr %1, align 8
  %1079 = and i64 %1078, 65535
  %1080 = icmp eq i64 %1079, 130
  %1081 = select i1 %1080, ptr @.str.126, ptr @.str.127
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %1081) #15
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %1073) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.63) #15
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %1074) #14
  %1082 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1083 = load ptr, ptr %1082, align 8, !tbaa !40
  %1084 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1083, i32 noundef %1074, i32 noundef %3, i8 noundef zeroext 1) #14
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %1073) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.64) #15
  br label %1557

1085:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.128) #15
  %1086 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1087 = load ptr, ptr %1086, align 8, !tbaa !40
  %1088 = add nsw i32 %2, 2
  %1089 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1087, i32 noundef %1088, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.75) #15
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %1088) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.63) #15
  %1090 = add nsw i32 %2, 4
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %1090) #14
  %1091 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1092 = load ptr, ptr %1091, align 8, !tbaa !40
  %1093 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1092, i32 noundef %1090, i32 noundef %3, i8 noundef zeroext 1) #14
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %1088) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.64) #15
  br label %1557

1094:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.129) #15
  %1095 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1096 = load ptr, ptr %1095, align 8, !tbaa !40
  %1097 = add nsw i32 %2, 2
  %1098 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1096, i32 noundef %1097, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.130) #15
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %1097) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.63) #15
  %1099 = add nsw i32 %2, 4
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %1099) #14
  %1100 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1101 = load ptr, ptr %1100, align 8, !tbaa !40
  %1102 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1101, i32 noundef %1099, i32 noundef %3, i8 noundef zeroext 1) #14
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %1097) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.64) #15
  br label %1557

1103:                                             ; preds = %41
  %1104 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1105 = load ptr, ptr %1104, align 8, !tbaa !40
  %1106 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1105, i64 0, i32 3
  %1107 = load ptr, ptr %1106, align 8, !tbaa !40
  %1108 = icmp eq ptr %1107, null
  br i1 %1108, label %1117, label %1109

1109:                                             ; preds = %1103
  %1110 = getelementptr inbounds %struct.tree_identifier, ptr %1107, i64 0, i32 1
  %1111 = load ptr, ptr %1110, align 8, !tbaa !40
  %1112 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1111, ptr noundef nonnull dereferenceable(6) @.str.131) #14
  %1113 = icmp eq i32 %1112, 0
  br i1 %1113, label %1553, label %1114

1114:                                             ; preds = %1109
  %1115 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1111, ptr noundef nonnull dereferenceable(9) @.str.132) #14
  %1116 = icmp eq i32 %1115, 0
  br i1 %1116, label %1553, label %1117

1117:                                             ; preds = %1114, %1103
  %1118 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %1105, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 58) #15
  %1119 = getelementptr inbounds %struct.tree_decl_common, ptr %1105, i64 0, i32 2
  %1120 = load i64, ptr %1119, align 8
  %1121 = and i64 %1120, 256
  %1122 = icmp eq i64 %1121, 0
  br i1 %1122, label %1553, label %1123

1123:                                             ; preds = %1117
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.133) #15
  br label %1553

1124:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.134) #15
  %1125 = and i32 %3, 2
  %1126 = icmp eq i32 %1125, 0
  br i1 %1126, label %1127, label %1557

1127:                                             ; preds = %1124
  %1128 = add nsw i32 %2, 2
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %1128) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #15
  %1129 = add nsw i32 %2, 4
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %1129) #14
  %1130 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1131 = load ptr, ptr %1130, align 8, !tbaa !40
  %1132 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1131, i32 noundef %1129, i32 noundef %3, i8 noundef zeroext 1) #14
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %1128) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #15
  br label %1557

1133:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.135) #15
  %1134 = load i64, ptr %1, align 8
  %1135 = and i64 %1134, 262144
  %1136 = icmp eq i64 %1135, 0
  %1137 = select i1 %1136, ptr @.str.137, ptr @.str.136
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %1137) #15
  %1138 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1139 = load ptr, ptr %1138, align 8, !tbaa !40
  %1140 = tail call i64 @tree_low_cst(ptr noundef %1139, i32 noundef 0) #15
  %1141 = trunc i64 %1140 to i32
  %1142 = tail call ptr @predictor_name(i32 noundef %1141) #15
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %1142) #15
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.138) #15
  br label %1553

1143:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.139) #15
  %1144 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1145 = load ptr, ptr %1144, align 8, !tbaa !40
  %1146 = icmp eq ptr %1145, null
  br i1 %1146, label %1553, label %1147

1147:                                             ; preds = %1143
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  %1148 = load i64, ptr %1145, align 8
  %1149 = and i64 %1148, 65535
  %1150 = icmp eq i64 %1149, 53
  br i1 %1150, label %1151, label %1155

1151:                                             ; preds = %1147
  %1152 = getelementptr inbounds %struct.tree_exp, ptr %1145, i64 1
  %1153 = load ptr, ptr %1152, align 8, !tbaa !40
  %1154 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1153, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %1553

1155:                                             ; preds = %1147
  %1156 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %1145, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %1553

1157:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.99) #15
  %1158 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1159 = load ptr, ptr %1158, align 8, !tbaa !40
  %1160 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1159, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.140) #15
  br label %1553

1161:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.141) #15
  %1162 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1163 = load ptr, ptr %1162, align 8, !tbaa !40
  %1164 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1163, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #15
  %1165 = and i32 %3, 2
  %1166 = icmp eq i32 %1165, 0
  br i1 %1166, label %1167, label %1557

1167:                                             ; preds = %1161
  %1168 = add nsw i32 %2, 2
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %1168) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #15
  %1169 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1170 = load ptr, ptr %1169, align 8, !tbaa !40
  %1171 = icmp eq ptr %1170, null
  br i1 %1171, label %1176, label %1172

1172:                                             ; preds = %1167
  %1173 = add nsw i32 %2, 4
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %1173) #14
  %1174 = load ptr, ptr %1169, align 8, !tbaa !40
  %1175 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1174, i32 noundef %1173, i32 noundef %3, i8 noundef zeroext 1) #14
  br label %1199

1176:                                             ; preds = %1167
  %1177 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %1178 = load ptr, ptr %1177, align 8, !tbaa !40
  %1179 = getelementptr inbounds %struct.tree_vec, ptr %1178, i64 0, i32 1
  %1180 = load i32, ptr %1179, align 8, !tbaa !40
  %1181 = sext i32 %1180 to i64
  %1182 = icmp eq i32 %1180, 0
  br i1 %1182, label %1199, label %1183

1183:                                             ; preds = %1176
  %1184 = add nsw i32 %2, 4
  br label %1185

1185:                                             ; preds = %1183, %1196
  %1186 = phi i64 [ 0, %1183 ], [ %1197, %1196 ]
  %1187 = getelementptr inbounds %struct.tree_vec, ptr %1178, i64 0, i32 2, i64 %1186
  %1188 = load ptr, ptr %1187, align 8, !tbaa !40
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %1184) #14
  %1189 = icmp eq ptr %1188, null
  br i1 %1189, label %1195, label %1190

1190:                                             ; preds = %1185
  %1191 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %1188, i32 noundef %1184, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.142) #15
  %1192 = getelementptr inbounds %struct.tree_exp, ptr %1188, i64 1, i32 0, i32 1
  %1193 = load ptr, ptr %1192, align 8, !tbaa !40
  %1194 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1193, i32 noundef %1184, i32 noundef %3, i8 noundef zeroext 1) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 59) #15
  br label %1196

1195:                                             ; preds = %1185
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.143) #15
  br label %1196

1196:                                             ; preds = %1195, %1190
  %1197 = add nuw i64 %1186, 1
  %1198 = icmp eq i64 %1197, %1181
  br i1 %1198, label %1199, label %1185, !llvm.loop !76

1199:                                             ; preds = %1196, %1176, %1172
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %1168) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #15
  br label %1557

1200:                                             ; preds = %41
  %1201 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1202 = load ptr, ptr %1201, align 8, !tbaa !40
  %1203 = load i64, ptr %1202, align 8
  %1204 = and i64 %1203, 65535
  %1205 = icmp eq i64 %1204, 141
  br i1 %1205, label %1223, label %1206

1206:                                             ; preds = %1200
  %1207 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1204
  %1208 = load i32, ptr %1207, align 4, !tbaa !57
  %1209 = icmp eq i32 %1208, 3
  br i1 %1209, label %1210, label %1223

1210:                                             ; preds = %1206
  %1211 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1202, i64 0, i32 3
  %1212 = load ptr, ptr %1211, align 8, !tbaa !40
  %1213 = icmp eq ptr %1212, null
  br i1 %1213, label %1223, label %1214

1214:                                             ; preds = %1210
  %1215 = getelementptr inbounds %struct.tree_identifier, ptr %1212, i64 0, i32 1
  %1216 = load ptr, ptr %1215, align 8, !tbaa !40
  %1217 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1216, ptr noundef nonnull dereferenceable(6) @.str.131) #14
  %1218 = icmp eq i32 %1217, 0
  br i1 %1218, label %1222, label %1219

1219:                                             ; preds = %1214
  %1220 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1216, ptr noundef nonnull dereferenceable(9) @.str.132) #14
  %1221 = icmp eq i32 %1220, 0
  br i1 %1221, label %1222, label %1223

1222:                                             ; preds = %1214, %1219
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %1216) #15
  br label %1553

1223:                                             ; preds = %1219, %1210, %1206, %1200
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.144) #15
  %1224 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %1202, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %1553

1225:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.145) #15
  %1226 = load i64, ptr %1, align 8
  %1227 = and i64 %1226, 134217728
  %1228 = icmp eq i64 %1227, 0
  br i1 %1228, label %1230, label %1229

1229:                                             ; preds = %1225
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.146) #15
  br label %1230

1230:                                             ; preds = %1229, %1225
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #15
  %1231 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1232 = load ptr, ptr %1231, align 8, !tbaa !40
  %1233 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1232, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 58) #15
  %1234 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1235 = load ptr, ptr %1234, align 8, !tbaa !40
  %1236 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1235, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 58) #15
  %1237 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %1238 = load ptr, ptr %1237, align 8, !tbaa !40
  %1239 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1238, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  %1240 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 2
  %1241 = load ptr, ptr %1240, align 8, !tbaa !40
  %1242 = icmp eq ptr %1241, null
  br i1 %1242, label %1246, label %1243

1243:                                             ; preds = %1230
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 58) #15
  %1244 = load ptr, ptr %1240, align 8, !tbaa !40
  %1245 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1244, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %1246

1246:                                             ; preds = %1243, %1230
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.75) #15
  br label %1553

1247:                                             ; preds = %41
  %1248 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1249 = load ptr, ptr %1248, align 8, !tbaa !40
  %1250 = icmp eq ptr %1249, null
  br i1 %1250, label %1260, label %1251

1251:                                             ; preds = %1247
  %1252 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1253 = load ptr, ptr %1252, align 8, !tbaa !40
  %1254 = icmp eq ptr %1253, null
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.147) #15
  %1255 = load ptr, ptr %1248, align 8, !tbaa !40
  %1256 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1255, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br i1 %1254, label %1261, label %1257

1257:                                             ; preds = %1251
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.148) #15
  %1258 = load ptr, ptr %1252, align 8, !tbaa !40
  %1259 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1258, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %1261

1260:                                             ; preds = %1247
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.149) #15
  br label %1261

1261:                                             ; preds = %1251, %1260, %1257
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 58) #15
  br label %1553

1262:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.150) #15
  %1263 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1264 = load ptr, ptr %1263, align 8, !tbaa !40
  %1265 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1264, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 59) #15
  %1266 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1267 = load ptr, ptr %1266, align 8, !tbaa !40
  %1268 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1267, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 45) #15
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 62) #15
  %1269 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %1270 = load ptr, ptr %1269, align 8, !tbaa !40
  %1271 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1270, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #15
  br label %1553

1272:                                             ; preds = %41
  %1273 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %1274 = load ptr, ptr %1273, align 8, !tbaa !40
  %1275 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1274, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.151) #15
  %1276 = load ptr, ptr %0, align 8, !tbaa !49
  %1277 = getelementptr inbounds %struct.output_buffer, ptr %1276, i64 0, i32 6
  %1278 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %1279 = load i32, ptr %1278, align 8, !tbaa !40
  %1280 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1277, ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %1279) #14
  %1281 = load ptr, ptr %0, align 8, !tbaa !49
  %1282 = getelementptr inbounds %struct.output_buffer, ptr %1281, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %1282) #15
  %1283 = load i64, ptr %1, align 8
  %1284 = and i64 %1283, 4194304
  %1285 = icmp eq i64 %1284, 0
  br i1 %1285, label %1287, label %1286

1286:                                             ; preds = %1272
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.152) #15
  br label %1553

1287:                                             ; preds = %1272
  %1288 = and i64 %1283, 4294967296
  %1289 = icmp eq i64 %1288, 0
  br i1 %1289, label %1553, label %1290

1290:                                             ; preds = %1287
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.153) #15
  br label %1553

1291:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.154) #15
  %1292 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1293 = load ptr, ptr %1292, align 8, !tbaa !40
  %1294 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1293, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.57) #15
  %1295 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1296 = load ptr, ptr %1295, align 8, !tbaa !40
  %1297 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1296, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.40) #15
  br label %1553

1298:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.155) #15
  %1299 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1300 = load ptr, ptr %1299, align 8, !tbaa !40
  %1301 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1300, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.57) #15
  %1302 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1303 = load ptr, ptr %1302, align 8, !tbaa !40
  %1304 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1303, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.40) #15
  br label %1553

1305:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.156) #15
  br label %1553

1306:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.157) #15
  br label %1553

1307:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.63) #15
  %1308 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1309 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1310 = load ptr, ptr %1309, align 8, !tbaa !40
  %1311 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1310, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.158) #15
  %1312 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %1313 = load ptr, ptr %1312, align 8, !tbaa !40
  %1314 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1313, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.159) #15
  %1315 = load ptr, ptr %1308, align 8, !tbaa !40
  %1316 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1315, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %1557

1317:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.160) #15
  %1318 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1319 = load ptr, ptr %1318, align 8, !tbaa !40
  %1320 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1319, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.57) #15
  %1321 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1322 = load ptr, ptr %1321, align 8, !tbaa !40
  %1323 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1322, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.57) #15
  %1324 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %1325 = load ptr, ptr %1324, align 8, !tbaa !40
  %1326 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1325, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.40) #15
  br label %1553

1327:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.161) #15
  %1328 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1329 = load ptr, ptr %1328, align 8, !tbaa !40
  %1330 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1329, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.162) #15
  %1331 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1332 = load ptr, ptr %1331, align 8, !tbaa !40
  %1333 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1332, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.162) #15
  %1334 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %1335 = load ptr, ptr %1334, align 8, !tbaa !40
  %1336 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1335, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.163) #15
  br label %1553

1337:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.164) #15
  %1338 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1339 = load ptr, ptr %1338, align 8, !tbaa !40
  %1340 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1339, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.57) #15
  %1341 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1342 = load ptr, ptr %1341, align 8, !tbaa !40
  %1343 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1342, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.57) #15
  %1344 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %1345 = load ptr, ptr %1344, align 8, !tbaa !40
  %1346 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1345, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.163) #15
  br label %1553

1347:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.165) #15
  %1348 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1349 = load ptr, ptr %1348, align 8, !tbaa !40
  tail call void @dump_omp_clauses(ptr noundef %0, ptr noundef %1349, i32 noundef %2, i32 noundef %3) #14
  br label %1350

1350:                                             ; preds = %1441, %1445, %1456, %1440, %1439, %1438, %1435, %1362, %1347
  %1351 = and i32 %3, 2
  %1352 = icmp eq i32 %1351, 0
  br i1 %1352, label %1353, label %1557

1353:                                             ; preds = %1350
  %1354 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1355 = load ptr, ptr %1354, align 8, !tbaa !40
  %1356 = icmp eq ptr %1355, null
  br i1 %1356, label %1557, label %1357

1357:                                             ; preds = %1353
  %1358 = add nsw i32 %2, 2
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %1358) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #15
  %1359 = add nsw i32 %2, 4
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %1359) #14
  %1360 = load ptr, ptr %1354, align 8, !tbaa !40
  %1361 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1360, i32 noundef %1359, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %1358) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #15
  br label %1557

1362:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.166) #15
  %1363 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1364 = load ptr, ptr %1363, align 8, !tbaa !40
  tail call void @dump_omp_clauses(ptr noundef %0, ptr noundef %1364, i32 noundef %2, i32 noundef %3) #14
  br label %1350

1365:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.167) #15
  %1366 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1367 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1368 = load ptr, ptr %1367, align 8, !tbaa !40
  tail call void @dump_omp_clauses(ptr noundef %0, ptr noundef %1368, i32 noundef %2, i32 noundef %3) #14
  %1369 = and i32 %3, 2
  %1370 = icmp eq i32 %1369, 0
  br i1 %1370, label %1371, label %1557

1371:                                             ; preds = %1365
  %1372 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 2
  %1373 = load ptr, ptr %1372, align 8, !tbaa !40
  %1374 = icmp eq ptr %1373, null
  br i1 %1374, label %1380, label %1375

1375:                                             ; preds = %1371
  %1376 = add nsw i32 %2, 2
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %1376) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #15
  %1377 = add nsw i32 %2, 4
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %1377) #14
  %1378 = load ptr, ptr %1372, align 8, !tbaa !40
  %1379 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1378, i32 noundef %1377, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %1380

1380:                                             ; preds = %1375, %1371
  %1381 = phi i32 [ %1377, %1375 ], [ %2, %1371 ]
  %1382 = add nsw i32 %1381, -2
  %1383 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %1384 = load ptr, ptr %1383, align 8, !tbaa !40
  %1385 = getelementptr inbounds %struct.tree_vec, ptr %1384, i64 0, i32 1
  %1386 = load i32, ptr %1385, align 8, !tbaa !40
  %1387 = icmp sgt i32 %1386, 0
  br i1 %1387, label %1388, label %1413

1388:                                             ; preds = %1380
  %1389 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 2
  %1390 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 1
  br label %1391

1391:                                             ; preds = %1388, %1391
  %1392 = phi i64 [ 0, %1388 ], [ %1407, %1391 ]
  %1393 = phi i32 [ %1382, %1388 ], [ %1394, %1391 ]
  %1394 = add nsw i32 %1393, 2
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %1394) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.168) #15
  %1395 = load ptr, ptr %1383, align 8, !tbaa !40
  %1396 = getelementptr inbounds %struct.tree_vec, ptr %1395, i64 0, i32 2, i64 %1392
  %1397 = load ptr, ptr %1396, align 8, !tbaa !40
  %1398 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1397, i32 noundef %1394, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.169) #15
  %1399 = load ptr, ptr %1389, align 8, !tbaa !40
  %1400 = getelementptr inbounds %struct.tree_vec, ptr %1399, i64 0, i32 2, i64 %1392
  %1401 = load ptr, ptr %1400, align 8, !tbaa !40
  %1402 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1401, i32 noundef %1394, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.169) #15
  %1403 = load ptr, ptr %1390, align 8, !tbaa !40
  %1404 = getelementptr inbounds %struct.tree_vec, ptr %1403, i64 0, i32 2, i64 %1392
  %1405 = load ptr, ptr %1404, align 8, !tbaa !40
  %1406 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1405, i32 noundef %1394, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.75) #15
  %1407 = add nuw nsw i64 %1392, 1
  %1408 = load ptr, ptr %1383, align 8, !tbaa !40
  %1409 = getelementptr inbounds %struct.tree_vec, ptr %1408, i64 0, i32 1
  %1410 = load i32, ptr %1409, align 8, !tbaa !40
  %1411 = sext i32 %1410 to i64
  %1412 = icmp slt i64 %1407, %1411
  br i1 %1412, label %1391, label %1413, !llvm.loop !77

1413:                                             ; preds = %1391, %1380
  %1414 = phi ptr [ %1384, %1380 ], [ %1408, %1391 ]
  %1415 = phi i32 [ %1382, %1380 ], [ %1394, %1391 ]
  %1416 = load ptr, ptr %1366, align 8, !tbaa !40
  %1417 = icmp eq ptr %1416, null
  %1418 = add i32 %1415, 2
  br i1 %1417, label %1424, label %1419

1419:                                             ; preds = %1413
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %1418) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #15
  %1420 = add nsw i32 %1415, 4
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %1420) #14
  %1421 = load ptr, ptr %1366, align 8, !tbaa !40
  %1422 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1421, i32 noundef %1420, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %1418) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #15
  %1423 = load ptr, ptr %1383, align 8, !tbaa !40
  br label %1424

1424:                                             ; preds = %1413, %1419
  %1425 = phi ptr [ %1423, %1419 ], [ %1414, %1413 ]
  %1426 = getelementptr inbounds %struct.tree_vec, ptr %1425, i64 0, i32 1
  %1427 = load i32, ptr %1426, align 8, !tbaa !40
  %1428 = shl i32 %1427, 1
  %1429 = sub i32 %1418, %1428
  %1430 = load ptr, ptr %1372, align 8, !tbaa !40
  %1431 = icmp eq ptr %1430, null
  br i1 %1431, label %1557, label %1432

1432:                                             ; preds = %1424
  %1433 = add nsw i32 %1429, -4
  %1434 = add nsw i32 %1429, -2
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %1434) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #15
  br label %1557

1435:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.170) #15
  %1436 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1437 = load ptr, ptr %1436, align 8, !tbaa !40
  tail call void @dump_omp_clauses(ptr noundef %0, ptr noundef %1437, i32 noundef %2, i32 noundef %3) #14
  br label %1350

1438:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.171) #15
  br label %1350

1439:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.172) #15
  br label %1350

1440:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.173) #15
  br label %1350

1441:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.174) #15
  %1442 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1443 = load ptr, ptr %1442, align 8, !tbaa !40
  %1444 = icmp eq ptr %1443, null
  br i1 %1444, label %1350, label %1445

1445:                                             ; preds = %1441
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #15
  %1446 = load ptr, ptr %1442, align 8, !tbaa !40
  %1447 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1446, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #15
  br label %1350

1448:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.175) #15
  %1449 = add nsw i32 %2, 2
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %1449) #14
  %1450 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1451 = load ptr, ptr %1450, align 8, !tbaa !40
  %1452 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1451, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 61) #15
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  %1453 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1454 = load ptr, ptr %1453, align 8, !tbaa !40
  %1455 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1454, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %1553

1456:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.176) #15
  %1457 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1458 = load ptr, ptr %1457, align 8, !tbaa !40
  tail call void @dump_omp_clauses(ptr noundef %0, ptr noundef %1458, i32 noundef %2, i32 noundef %3) #14
  br label %1350

1459:                                             ; preds = %41
  tail call fastcc void @dump_omp_clause(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #14
  br label %1557

1460:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.177) #15
  %1461 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1462 = load ptr, ptr %1461, align 8, !tbaa !40
  %1463 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1462, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.163) #15
  br label %1553

1464:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.178) #15
  %1465 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1466 = load ptr, ptr %1465, align 8, !tbaa !40
  %1467 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1466, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.163) #15
  br label %1553

1468:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.179) #15
  %1469 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1470 = load ptr, ptr %1469, align 8, !tbaa !40
  %1471 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1470, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.163) #15
  br label %1553

1472:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.180) #15
  %1473 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1474 = load ptr, ptr %1473, align 8, !tbaa !40
  %1475 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1474, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.57) #15
  %1476 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1477 = load ptr, ptr %1476, align 8, !tbaa !40
  %1478 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1477, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.163) #15
  br label %1553

1479:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.181) #15
  %1480 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1481 = load ptr, ptr %1480, align 8, !tbaa !40
  %1482 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1481, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.57) #15
  %1483 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1484 = load ptr, ptr %1483, align 8, !tbaa !40
  %1485 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1484, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.163) #15
  br label %1553

1486:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.182) #15
  %1487 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1488 = load ptr, ptr %1487, align 8, !tbaa !40
  %1489 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1488, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.163) #15
  br label %1553

1490:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.183) #15
  %1491 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1492 = load ptr, ptr %1491, align 8, !tbaa !40
  %1493 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1492, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.163) #15
  br label %1553

1494:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.184) #15
  %1495 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1496 = load ptr, ptr %1495, align 8, !tbaa !40
  %1497 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1496, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.163) #15
  br label %1553

1498:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.185) #15
  %1499 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1500 = load ptr, ptr %1499, align 8, !tbaa !40
  %1501 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1500, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.163) #15
  br label %1553

1502:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.186) #15
  %1503 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1504 = load ptr, ptr %1503, align 8, !tbaa !40
  %1505 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1504, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.57) #15
  %1506 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1507 = load ptr, ptr %1506, align 8, !tbaa !40
  %1508 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1507, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.163) #15
  br label %1553

1509:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.187) #15
  %1510 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1511 = load ptr, ptr %1510, align 8, !tbaa !40
  %1512 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1511, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.57) #15
  %1513 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1514 = load ptr, ptr %1513, align 8, !tbaa !40
  %1515 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1514, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.163) #15
  br label %1553

1516:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.188) #15
  %1517 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1518 = load ptr, ptr %1517, align 8, !tbaa !40
  %1519 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1518, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.57) #15
  %1520 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1521 = load ptr, ptr %1520, align 8, !tbaa !40
  %1522 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1521, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.163) #15
  br label %1553

1523:                                             ; preds = %41
  tail call fastcc void @dump_block_node(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #14
  br label %1553

1524:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.189) #15
  %1525 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1526 = load ptr, ptr %1525, align 8, !tbaa !40
  %1527 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1526, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.57) #15
  %1528 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1529 = load ptr, ptr %1528, align 8, !tbaa !40
  %1530 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1529, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.163) #15
  br label %1553

1531:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.190) #15
  %1532 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1533 = load ptr, ptr %1532, align 8, !tbaa !40
  %1534 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1533, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.57) #15
  %1535 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1536 = load ptr, ptr %1535, align 8, !tbaa !40
  %1537 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1536, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.163) #15
  br label %1553

1538:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.191) #15
  %1539 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1540 = load ptr, ptr %1539, align 8, !tbaa !40
  %1541 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1540, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.57) #15
  %1542 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1543 = load ptr, ptr %1542, align 8, !tbaa !40
  %1544 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1543, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.163) #15
  br label %1553

1545:                                             ; preds = %41
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.192) #15
  %1546 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1547 = load ptr, ptr %1546, align 8, !tbaa !40
  %1548 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1547, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.57) #15
  %1549 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1550 = load ptr, ptr %1549, align 8, !tbaa !40
  %1551 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1550, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.163) #15
  br label %1553

1552:                                             ; preds = %41
  tail call fastcc void @do_niy(ptr noundef %0, ptr noundef nonnull %1) #14
  br label %1553

1553:                                             ; preds = %302, %56, %68, %297, %44, %1114, %1109, %1222, %941, %943, %652, %674, %329, %334, %331, %283, %286, %243, %247, %131, %130, %144, %145, %139, %151, %166, %186, %174, %162, %147, %120, %75, %90, %698, %1286, %1290, %1287, %1143, %1155, %1151, %1117, %1123, %1024, %1029, %969, %973, %910, %914, %839, %582, %586, %530, %536, %540, %484, %498, %495, %476, %463, %472, %473, %468, %342, %374, %366, %194, %214, %1552, %1545, %1538, %1531, %1524, %1523, %1516, %1509, %1502, %1498, %1494, %1490, %1486, %1479, %1472, %1468, %1464, %1460, %1448, %1337, %1327, %1317, %1306, %1305, %1298, %1291, %1262, %1261, %1246, %1223, %1157, %1133, %1068, %1064, %1060, %1056, %1049, %1045, %1041, %1037, %1030, %1008, %1004, %997, %990, %988, %920, %916, %915, %711, %707, %648, %542, %505, %504, %458, %457, %428, %411, %404, %401, %400, %335, %248, %71, %48, %47
  %1554 = icmp ne i8 %4, 0
  %1555 = and i1 %1554, %18
  br i1 %1555, label %1556, label %1557

1556:                                             ; preds = %1553
  call void @pp_base_character(ptr noundef %0, i32 noundef 59) #15
  br label %1557

1557:                                             ; preds = %1365, %1432, %1424, %1350, %1353, %1357, %1161, %1199, %1124, %1127, %849, %866, %801, %796, %815, %829, %834, %804, %1072, %1085, %1094, %1459, %718, %1307, %1556, %1553
  %1558 = phi i32 [ %2, %1556 ], [ %2, %1553 ], [ %1429, %1424 ], [ %1433, %1432 ], [ %2, %1365 ], [ %2, %1350 ], [ %2, %1353 ], [ %2, %1357 ], [ %2, %1161 ], [ %2, %1199 ], [ %2, %1124 ], [ %2, %1127 ], [ %2, %849 ], [ %2, %866 ], [ %2, %801 ], [ %2, %796 ], [ %2, %815 ], [ %2, %829 ], [ %2, %834 ], [ %2, %804 ], [ %2, %718 ], [ %2, %1072 ], [ %2, %1085 ], [ %2, %1094 ], [ %2, %1307 ], [ %2, %1459 ]
  %1559 = and i32 %3, 32768
  %1560 = icmp eq i32 %1559, 0
  br i1 %1560, label %1561, label %1562

1561:                                             ; preds = %1557
  call void @pp_write_text_to_stream(ptr noundef %0) #15
  br label %1562

1562:                                             ; preds = %1557, %1561, %5
  %1563 = phi i32 [ %2, %5 ], [ %1558, %1561 ], [ %1558, %1557 ]
  ret i32 %1563
}

; Function Attrs: optsize
declare void @pp_base_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_generic_stmt_indented(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !35 {
  tail call fastcc void @maybe_init_pretty_print(ptr noundef %0) #14
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4, %6
  %7 = phi i32 [ %8, %6 ], [ 0, %4 ]
  tail call void @pp_base_character(ptr noundef nonnull @buffer, i32 noundef 32) #15
  %8 = add nuw nsw i32 %7, 1
  %9 = icmp eq i32 %8, %3
  br i1 %9, label %10, label %6, !llvm.loop !78

10:                                               ; preds = %6, %4
  %11 = tail call i32 @dump_generic_node(ptr noundef nonnull @buffer, ptr noundef %1, i32 noundef %3, i32 noundef %2, i8 noundef zeroext 1) #14
  tail call void @pp_base_flush(ptr noundef nonnull @buffer) #15
  ret void
}

; Function Attrs: optsize
declare void @pp_base_character(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_omp_clauses(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !35 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %4
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  tail call fastcc void @dump_omp_clause(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #14
  %7 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6, %10
  %11 = phi ptr [ %13, %10 ], [ %8, %6 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  tail call fastcc void @dump_omp_clause(ptr noundef %0, ptr noundef nonnull %11, i32 noundef %2, i32 noundef %3) #14
  %12 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !40
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %10

15:                                               ; preds = %10, %6, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_omp_clause(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !35 !PGOFuncName !79 {
  %5 = getelementptr inbounds %struct.tree_omp_clause, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !40
  switch i32 %6, label %65 [
    i32 1, label %12
    i32 2, label %7
    i32 3, label %8
    i32 4, label %9
    i32 6, label %10
    i32 7, label %11
    i32 5, label %17
    i32 8, label %24
    i32 9, label %28
    i32 11, label %32
    i32 12, label %33
    i32 13, label %34
    i32 10, label %43
    i32 15, label %60
    i32 14, label %61
  ]

7:                                                ; preds = %4
  br label %12

8:                                                ; preds = %4
  br label %12

9:                                                ; preds = %4
  br label %12

10:                                               ; preds = %4
  br label %12

11:                                               ; preds = %4
  br label %12

12:                                               ; preds = %4, %11, %10, %9, %8, %7
  %13 = phi ptr [ @.str.9, %11 ], [ @.str.8, %10 ], [ @.str.7, %9 ], [ @.str.6, %8 ], [ @.str.5, %7 ], [ @.str.4, %4 ]
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %13) #15
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #15
  %14 = getelementptr inbounds %struct.tree_omp_clause, ptr %1, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !40
  %16 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %15, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #15
  br label %67

17:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.10) #15
  %18 = getelementptr inbounds %struct.tree_omp_clause, ptr %1, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !40
  %20 = tail call ptr @op_symbol_code(i32 noundef %19) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %20) #15
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 58) #15
  %21 = getelementptr inbounds %struct.tree_omp_clause, ptr %1, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !40
  %23 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %22, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #15
  br label %67

24:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.11) #15
  %25 = getelementptr inbounds %struct.tree_omp_clause, ptr %1, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !40
  %27 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %26, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #15
  br label %67

28:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.12) #15
  %29 = getelementptr inbounds %struct.tree_omp_clause, ptr %1, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !40
  %31 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %30, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #15
  br label %67

32:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.13) #15
  br label %67

33:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.14) #15
  br label %67

34:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.15) #15
  %35 = getelementptr inbounds %struct.tree_omp_clause, ptr %1, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !40
  switch i32 %36, label %41 [
    i32 0, label %42
    i32 1, label %37
    i32 2, label %38
    i32 3, label %39
    i32 4, label %40
  ]

37:                                               ; preds = %34
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.5) #15
  br label %42

38:                                               ; preds = %34
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.16) #15
  br label %42

39:                                               ; preds = %34
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.4) #15
  br label %42

40:                                               ; preds = %34
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.6) #15
  br label %42

41:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 366, ptr noundef nonnull @.str.18) #15
  br label %42

42:                                               ; preds = %41, %40, %39, %38, %37, %34
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #15
  br label %67

43:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.19) #15
  %44 = getelementptr inbounds %struct.tree_omp_clause, ptr %1, i64 0, i32 3
  %45 = load i32, ptr %44, align 8, !tbaa !40
  switch i32 %45, label %51 [
    i32 0, label %46
    i32 1, label %47
    i32 2, label %48
    i32 4, label %49
    i32 3, label %50
  ]

46:                                               ; preds = %43
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.20) #15
  br label %52

47:                                               ; preds = %43
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.21) #15
  br label %52

48:                                               ; preds = %43
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.22) #15
  br label %52

49:                                               ; preds = %43
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.23) #15
  br label %52

50:                                               ; preds = %43
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.24) #15
  br label %52

51:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 391, ptr noundef nonnull @.str.18) #15
  br label %52

52:                                               ; preds = %51, %50, %49, %48, %47, %46
  %53 = getelementptr inbounds %struct.tree_omp_clause, ptr %1, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !40
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #15
  %57 = load ptr, ptr %53, align 8, !tbaa !40
  %58 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %57, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %59

59:                                               ; preds = %56, %52
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #15
  br label %67

60:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.25) #15
  br label %67

61:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.26) #15
  %62 = getelementptr inbounds %struct.tree_omp_clause, ptr %1, i64 0, i32 6
  %63 = load ptr, ptr %62, align 8, !tbaa !40
  %64 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %63, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #15
  br label %67

65:                                               ; preds = %4
  %66 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %67

67:                                               ; preds = %65, %61, %60, %59, %42, %33, %32, %28, %24, %17, %12
  ret void
}

; Function Attrs: optsize
declare void @pp_base_string(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @op_symbol_code(i32 noundef %0) local_unnamed_addr #3 !prof !35 {
  %2 = add i32 %0, -47
  %3 = icmp ult i32 %2, 125
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = zext nneg i32 %2 to i64
  %6 = shl i64 %5, 2
  %7 = call ptr @llvm.load.relative.i64(ptr @reltable.op_symbol_code, i64 %6)
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ @.str.284, %1 ]
  ret ptr %9
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @pp_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_location(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !80 {
  %3 = alloca %struct.expanded_location, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %3, i32 noundef %1) #15
  call void @pp_base_character(ptr noundef %0, i32 noundef 91) #15
  %4 = load ptr, ptr %3, align 8, !tbaa !81
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %4) #15
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.193) #15
  br label %7

7:                                                ; preds = %2, %6
  %8 = load ptr, ptr %0, align 8, !tbaa !49
  %9 = getelementptr inbounds %struct.output_buffer, ptr %8, i64 0, i32 6
  %10 = getelementptr inbounds %struct.expanded_location, ptr %3, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !83
  %12 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) @.str.33, i32 noundef %11) #14
  %13 = load ptr, ptr %0, align 8, !tbaa !49
  %14 = getelementptr inbounds %struct.output_buffer, ptr %13, i64 0, i32 6
  call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %14) #15
  call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.194) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret void
}

; Function Attrs: optsize
declare void @pp_base_tree_identifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_decl_name(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !35 !PGOFuncName !84 {
  %4 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = icmp eq ptr %5, null
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = and i32 %2, 262144
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %7
  %11 = load i64, ptr %1, align 8
  %12 = and i64 %11, 65535
  %13 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %12, i64 13
  %14 = load i8, ptr %13, align 1, !tbaa !40
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !40
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @decl_assembler_name(ptr noundef nonnull %1) #15
  tail call void @pp_base_tree_identifier(ptr noundef %0, ptr noundef %21) #15
  br label %23

22:                                               ; preds = %16, %10, %7
  tail call void @pp_base_tree_identifier(ptr noundef %0, ptr noundef nonnull %5) #15
  br label %23

23:                                               ; preds = %20, %22, %3
  %24 = and i32 %2, 256
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load ptr, ptr %4, align 8, !tbaa !40
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %59

29:                                               ; preds = %26, %23
  %30 = load i64, ptr %1, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 30
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.tree_label_decl, ptr %1, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !40
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %0, ptr noundef nonnull @.str.195, i32 noundef %35) #15
  br label %59

38:                                               ; preds = %33, %29
  %39 = trunc i64 %30 to i32
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 37
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = and i32 %2, 1048576
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.196) #15
  br label %59

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !40
  %49 = sub i32 0, %48
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %0, ptr noundef nonnull @.str.197, i32 noundef %49) #15
  br label %59

50:                                               ; preds = %38
  %51 = icmp eq i32 %40, 33
  %52 = and i32 %2, 1048576
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %51, i32 67, i32 68
  br i1 %53, label %56, label %55

55:                                               ; preds = %50
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %0, ptr noundef nonnull @.str.198, i32 noundef %54) #15
  br label %59

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !40
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %0, ptr noundef nonnull @.str.199, i32 noundef %54, i32 noundef %58) #15
  br label %59

59:                                               ; preds = %55, %56, %37, %45, %46, %26
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_function_declaration(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !35 !PGOFuncName !85 {
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #15
  %5 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = icmp eq ptr %6, null
  br i1 %7, label %38, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  %11 = icmp eq ptr %10, null
  %12 = load ptr, ptr @global_trees, align 16
  %13 = icmp eq ptr %6, %12
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %38, label %15

15:                                               ; preds = %8, %30
  %16 = phi ptr [ %31, %30 ], [ %9, %8 ]
  %17 = phi ptr [ %21, %30 ], [ %6, %8 ]
  %18 = getelementptr inbounds %struct.tree_list, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !40
  %20 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %19, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  %21 = load ptr, ptr %16, align 8, !tbaa !40
  %22 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !40
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %15
  %26 = load i64, ptr %23, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #15
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  br label %30

30:                                               ; preds = %29, %25, %15
  %31 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !40
  %33 = icmp eq ptr %32, null
  %34 = load ptr, ptr @global_trees, align 16
  %35 = icmp eq ptr %21, %34
  %36 = select i1 %33, i1 true, i1 %35
  br i1 %36, label %37, label %15, !llvm.loop !86

37:                                               ; preds = %30
  br i1 %14, label %38, label %39

38:                                               ; preds = %8, %4, %37
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.200) #15
  br label %39

39:                                               ; preds = %38, %37
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_niy(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !35 !PGOFuncName !87 {
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.201) #15
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %6) #15
  %7 = load i64, ptr %1, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !57
  %11 = add i32 %10, -4
  %12 = icmp ult i32 %11, 7
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = tail call fastcc i32 @tree_operand_length(ptr noundef nonnull %1) #14
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = zext nneg i32 %14 to i64
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi i64 [ 0, %16 ], [ %23, %18 ]
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef 2) #14
  %20 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !40
  %22 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %21, i32 noundef 2, i32 noundef 0, i8 noundef zeroext 0) #14
  %23 = add nuw nsw i64 %19, 1
  %24 = icmp eq i64 %23, %17
  br i1 %24, label %25, label %18, !llvm.loop !88

25:                                               ; preds = %18, %13, %2
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.202) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_array_domain(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !35 !PGOFuncName !89 {
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 91) #15
  %5 = icmp eq ptr %1, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 13
  %8 = load ptr, ptr %7, align 8, !tbaa !40
  %9 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 14
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  %11 = icmp ne ptr %8, null
  %12 = icmp ne ptr %10, null
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %29

14:                                               ; preds = %6
  %15 = tail call i32 @integer_zerop(ptr noundef nonnull %8) #15
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @host_integerp(ptr noundef nonnull %10, i32 noundef 0) #15
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %0, align 8, !tbaa !49
  %22 = getelementptr inbounds %struct.output_buffer, ptr %21, i64 0, i32 6
  %23 = getelementptr inbounds %struct.tree_int_cst, ptr %10, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !40
  %25 = add nsw i64 %24, 1
  %26 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) @.str.67, i64 noundef %25) #14
  %27 = load ptr, ptr %0, align 8, !tbaa !49
  %28 = getelementptr inbounds %struct.output_buffer, ptr %27, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %28) #15
  br label %36

29:                                               ; preds = %6
  br i1 %11, label %30, label %32

30:                                               ; preds = %14, %17, %29
  %31 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %32

32:                                               ; preds = %30, %29
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 58) #15
  br i1 %12, label %33, label %36

33:                                               ; preds = %32
  %34 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %36

35:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.203) #15
  br label %36

36:                                               ; preds = %20, %33, %32, %35
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 93) #15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_struct_decl(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !35 !PGOFuncName !90 {
  %5 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !40
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = icmp sgt i32 %2, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %8, %10
  %11 = phi i32 [ %12, %10 ], [ 0, %8 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  %12 = add nuw nsw i32 %11, 1
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %14, label %10, !llvm.loop !91

14:                                               ; preds = %10, %8
  %15 = load i64, ptr %1, align 8
  %16 = trunc i64 %15 to i16
  %17 = add i16 %16, -16
  %18 = icmp ult i16 %17, 3
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = zext nneg i16 %17 to i64
  %21 = shl i64 %20, 2
  %22 = call ptr @llvm.load.relative.i64(ptr @reltable.print_struct_decl, i64 %21)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %22) #15
  br label %23

23:                                               ; preds = %14, %19
  %24 = load ptr, ptr %5, align 8, !tbaa !40
  %25 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %24, i32 noundef %2, i32 noundef 0, i8 noundef zeroext 0) #14
  br label %26

26:                                               ; preds = %23, %4
  tail call void @pp_base_newline(ptr noundef %0) #15
  %27 = icmp sgt i32 %2, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %26, %28
  %29 = phi i32 [ %30, %28 ], [ 0, %26 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  %30 = add nuw nsw i32 %29, 1
  %31 = icmp eq i32 %30, %2
  br i1 %31, label %32, label %28, !llvm.loop !92

32:                                               ; preds = %28, %26
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #15
  tail call void @pp_base_newline(ptr noundef %0) #15
  %33 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !40
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = add nsw i32 %2, 2
  br label %39

38:                                               ; preds = %53, %32
  br i1 %27, label %57, label %61

39:                                               ; preds = %36, %53
  %40 = phi ptr [ %34, %36 ], [ %55, %53 ]
  %41 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !40
  %43 = icmp eq ptr %42, %1
  br i1 %43, label %53, label %44

44:                                               ; preds = %39
  %45 = load i64, ptr %42, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 10
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !40
  %51 = icmp eq ptr %50, %1
  br i1 %51, label %53, label %52

52:                                               ; preds = %48, %44
  tail call void @print_declaration(ptr noundef %0, ptr noundef nonnull %40, i32 noundef %37, i32 noundef %3) #14
  tail call void @pp_base_newline(ptr noundef %0) #15
  br label %53

53:                                               ; preds = %52, %48, %39
  %54 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !40
  %56 = icmp eq ptr %55, null
  br i1 %56, label %38, label %39, !llvm.loop !93

57:                                               ; preds = %38, %57
  %58 = phi i32 [ %59, %57 ], [ 0, %38 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  %59 = add nuw nsw i32 %58, 1
  %60 = icmp eq i32 %59, %2
  br i1 %60, label %61, label %57, !llvm.loop !94

61:                                               ; preds = %57, %38
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #15
  ret void
}

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @tree_int_cst_sgn(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare zeroext i8 @real_isinf(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @real_isneg(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @real_isnan(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @real_to_decimal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fixed_to_decimal(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pretty_print_string(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 !prof !35 !PGOFuncName !95 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2, %25
  %5 = phi ptr [ %26, %25 ], [ %1, %2 ]
  %6 = load i8, ptr %5, align 1, !tbaa !40
  switch i8 %6, label %23 [
    i8 0, label %27
    i8 8, label %7
    i8 12, label %8
    i8 10, label %9
    i8 13, label %10
    i8 9, label %11
    i8 11, label %12
    i8 92, label %13
    i8 34, label %14
    i8 39, label %15
    i8 1, label %16
    i8 2, label %17
    i8 3, label %18
    i8 4, label %19
    i8 5, label %20
    i8 6, label %21
    i8 7, label %22
  ]

7:                                                ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.204) #15
  br label %25

8:                                                ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.205) #15
  br label %25

9:                                                ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.206) #15
  br label %25

10:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.207) #15
  br label %25

11:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.208) #15
  br label %25

12:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.209) #15
  br label %25

13:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.210) #15
  br label %25

14:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.211) #15
  br label %25

15:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.212) #15
  br label %25

16:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.213) #15
  br label %25

17:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.214) #15
  br label %25

18:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.215) #15
  br label %25

19:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.216) #15
  br label %25

20:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.217) #15
  br label %25

21:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.218) #15
  br label %25

22:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.219) #15
  br label %25

23:                                               ; preds = %4
  %24 = sext i8 %6 to i32
  tail call void @pp_base_character(ptr noundef %0, i32 noundef %24) #15
  br label %25

25:                                               ; preds = %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7
  %26 = getelementptr inbounds i8, ptr %5, i64 1
  br label %4, !llvm.loop !96

27:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @op_prio(ptr noundef readonly %0) local_unnamed_addr #6 !prof !35 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %15, label %3

3:                                                ; preds = %1, %7
  %4 = phi ptr [ %9, %7 ], [ %0, %1 ]
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %11 [
    i16 120, label %7
    i16 117, label %7
  ]

7:                                                ; preds = %3, %3
  %8 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %3

11:                                               ; preds = %3
  %12 = trunc i64 %5 to i32
  %13 = and i32 %12, 65535
  %14 = tail call i32 @op_code_prio(i32 noundef %13) #14, !range !64
  br label %15

15:                                               ; preds = %7, %1, %11
  %16 = phi i32 [ %14, %11 ], [ 9999, %1 ], [ 9999, %7 ]
  ret i32 %16
}

; Function Attrs: optsize
declare ptr @component_ref_field_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @array_ref_low_bound(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @array_ref_element_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_constructor_elt_base_length(ptr noundef readonly %0) unnamed_addr #7 !prof !35 !PGOFuncName !97 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !98
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_constructor_elt_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #3 !prof !35 !PGOFuncName !100 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !35 !PGOFuncName !101 {
  tail call void @pp_base_newline(ptr noundef %0) #15
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %2, %4
  %5 = phi i32 [ %6, %4 ], [ 0, %2 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #15
  %6 = add nuw nsw i32 %5, 1
  %7 = icmp eq i32 %6, %1
  br i1 %7, label %8, label %4, !llvm.loop !102

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc { ptr, ptr } @tsi_start(ptr noundef %0) unnamed_addr #7 !prof !35 !PGOFuncName !103 {
  %2 = getelementptr inbounds %struct.tree_statement_list, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !40
  %4 = insertvalue { ptr, ptr } poison, ptr %3, 0
  %5 = insertvalue { ptr, ptr } %4, ptr %0, 1
  ret { ptr, ptr } %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @tsi_end_p(ptr readnone %0) unnamed_addr #3 !prof !35 !PGOFuncName !104 {
  %2 = icmp eq ptr %0, null
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @tsi_stmt(ptr nocapture readonly %0) unnamed_addr #7 !prof !35 !PGOFuncName !105 {
  %2 = getelementptr inbounds %struct.tree_statement_list_node, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @tsi_next(ptr nocapture noundef %0) unnamed_addr #8 !prof !35 !PGOFuncName !108 {
  %2 = load ptr, ptr %0, align 8, !tbaa !109
  %3 = getelementptr inbounds %struct.tree_statement_list_node, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !111
  store ptr %4, ptr %0, align 8, !tbaa !109
  ret void
}

; Function Attrs: optsize
declare void @pp_base_newline(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_call_name(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !35 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 117
  br i1 %6, label %7, label %11

7:                                                ; preds = %3, %11, %11, %11
  %8 = phi ptr [ %12, %11 ], [ %12, %11 ], [ %12, %11 ], [ %1, %3 ]
  %9 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi ptr [ %1, %3 ], [ %10, %7 ]
  %13 = load i64, ptr %12, align 8
  %14 = trunc i64 %13 to i16
  switch i16 %14, label %37 [
    i16 32, label %15
    i16 34, label %15
    i16 29, label %15
    i16 121, label %7
    i16 47, label %7
    i16 116, label %7
    i16 56, label %16
    i16 45, label %26
    i16 41, label %35
    i16 141, label %35
    i16 50, label %35
  ]

15:                                               ; preds = %11, %11, %11
  tail call fastcc void @dump_function_name(ptr noundef %0, ptr noundef nonnull %12, i32 noundef %2) #14
  br label %38

16:                                               ; preds = %11
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.285) #15
  %17 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !40
  %19 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %18, i32 noundef 0, i32 noundef %2, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.286) #15
  %20 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !40
  %22 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %21, i32 noundef 0, i32 noundef %2, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.193) #15
  %23 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 1, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !40
  %25 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %24, i32 noundef 0, i32 noundef %2, i8 noundef zeroext 0) #14
  br label %38

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !40
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 32
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  tail call fastcc void @dump_function_name(ptr noundef %0, ptr noundef nonnull %28, i32 noundef %2) #14
  br label %38

33:                                               ; preds = %26
  %34 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %12, i32 noundef 0, i32 noundef %2, i8 noundef zeroext 0) #14
  br label %38

35:                                               ; preds = %11, %11, %11
  %36 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %12, i32 noundef 0, i32 noundef %2, i8 noundef zeroext 0) #14
  br label %38

37:                                               ; preds = %11
  tail call fastcc void @do_niy(ptr noundef %0, ptr noundef nonnull %1) #14
  br label %38

38:                                               ; preds = %32, %33, %37, %35, %16, %15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @first_call_expr_arg(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #8 !prof !35 !PGOFuncName !112 {
  tail call fastcc void @init_call_expr_arg_iterator(ptr noundef %0, ptr noundef %1) #14
  %3 = tail call fastcc ptr @next_call_expr_arg(ptr noundef %1) #14
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @more_call_expr_args_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !35 !PGOFuncName !113 {
  %2 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !114
  %4 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !116
  %6 = icmp slt i32 %3, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_call_expr_arg(ptr nocapture noundef %0) unnamed_addr #8 !prof !35 !PGOFuncName !117 {
  %2 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !114
  %4 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !116
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !118
  %9 = add nsw i32 %3, 3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !40
  %13 = add nsw i32 %3, 1
  store i32 %13, ptr %2, align 4, !tbaa !114
  br label %14

14:                                               ; preds = %1, %7
  %15 = phi ptr [ %12, %7 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef nonnull ptr @op_symbol(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !35 !PGOFuncName !119 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = and i32 %3, 65535
  %5 = tail call ptr @op_symbol_code(i32 noundef %4) #14
  ret ptr %5
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @predictor_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_block_node(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !35 !PGOFuncName !120 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %6 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 1
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %0, ptr noundef nonnull @.str.220, i32 noundef %8) #15
  %9 = and i32 %3, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %0, ptr noundef nonnull @.str.221, ptr noundef nonnull %1) #15
  br label %12

12:                                               ; preds = %11, %4
  %13 = load i32, ptr %6, align 8
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.222) #15
  br label %17

17:                                               ; preds = %16, %12
  %18 = load i64, ptr %1, align 8
  %19 = and i64 %18, 4194304
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.223) #15
  br label %22

22:                                               ; preds = %21, %17
  %23 = and i32 %3, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %133

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !40
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call fastcc void @dump_location(ptr noundef %0, i32 noundef %27) #14
  br label %30

30:                                               ; preds = %29, %25
  %31 = add nsw i32 %2, 2
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %31) #14
  %32 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !40
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.224) #15
  %36 = load ptr, ptr %32, align 8, !tbaa !40
  %37 = or disjoint i32 %3, 2
  %38 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %36, i32 noundef 0, i32 noundef %37, i8 noundef zeroext 0) #14
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %31) #14
  br label %39

39:                                               ; preds = %35, %30
  %40 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !40
  %42 = icmp eq ptr %41, null
  br i1 %42, label %55, label %43

43:                                               ; preds = %39
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.225) #15
  %44 = load ptr, ptr %40, align 8, !tbaa !40
  %45 = icmp eq ptr %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %43
  %47 = or disjoint i32 %3, 2
  br label %48

48:                                               ; preds = %46, %48
  %49 = phi ptr [ %44, %46 ], [ %52, %48 ]
  %50 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %49, i32 noundef 0, i32 noundef %47, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.1) #15
  %51 = getelementptr inbounds %struct.tree_common, ptr %49, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !40
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %48, !llvm.loop !121

54:                                               ; preds = %48, %43
  store ptr null, ptr %5, align 8, !tbaa !36
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %31) #14
  br label %55

55:                                               ; preds = %54, %39
  %56 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !40
  %58 = icmp eq ptr %57, null
  br i1 %58, label %71, label %59

59:                                               ; preds = %55
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.226) #15
  %60 = load ptr, ptr %56, align 8, !tbaa !40
  %61 = icmp eq ptr %60, null
  br i1 %61, label %70, label %62

62:                                               ; preds = %59
  %63 = or disjoint i32 %3, 2
  br label %64

64:                                               ; preds = %62, %64
  %65 = phi ptr [ %60, %62 ], [ %68, %64 ]
  %66 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %65, i32 noundef 0, i32 noundef %63, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.1) #15
  %67 = getelementptr inbounds %struct.tree_common, ptr %65, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !40
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %64, !llvm.loop !122

70:                                               ; preds = %64, %59
  store ptr null, ptr %5, align 8, !tbaa !36
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %31) #14
  br label %71

71:                                               ; preds = %70, %55
  %72 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !40
  %74 = icmp eq ptr %73, null
  br i1 %74, label %85, label %75

75:                                               ; preds = %71
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.227) #15
  %76 = load ptr, ptr %72, align 8, !tbaa !40
  %77 = icmp eq ptr %76, null
  br i1 %77, label %84, label %78

78:                                               ; preds = %75, %78
  %79 = phi ptr [ %82, %78 ], [ %76, %75 ]
  %80 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %79, i32 noundef 0, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.1) #15
  %81 = getelementptr inbounds %struct.tree_common, ptr %79, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !40
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %78, !llvm.loop !123

84:                                               ; preds = %78, %75
  store ptr null, ptr %5, align 8, !tbaa !36
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %31) #14
  br label %85

85:                                               ; preds = %84, %71
  %86 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 4
  %87 = load ptr, ptr %86, align 8, !tbaa !40
  %88 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %87) #14
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %85
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.228) #15
  %91 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %87, i32 noundef 0, ptr noundef nonnull %5) #14, !range !124
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %90, %93
  %94 = phi i32 [ %97, %93 ], [ 0, %90 ]
  %95 = load ptr, ptr %5, align 8, !tbaa !36
  %96 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %95, i32 noundef 0, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.1) #15
  %97 = add i32 %94, 1
  %98 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %87, i32 noundef %97, ptr noundef nonnull %5) #14, !range !124
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %93, !llvm.loop !125

100:                                              ; preds = %93, %90
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %31) #14
  br label %101

101:                                              ; preds = %100, %85
  %102 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 7
  %103 = load ptr, ptr %102, align 8, !tbaa !40
  %104 = icmp eq ptr %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.229) #15
  %106 = load ptr, ptr %102, align 8, !tbaa !40
  %107 = or disjoint i32 %3, 2
  %108 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %106, i32 noundef 0, i32 noundef %107, i8 noundef zeroext 0) #14
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %31) #14
  br label %109

109:                                              ; preds = %105, %101
  %110 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 8
  %111 = load ptr, ptr %110, align 8, !tbaa !40
  %112 = icmp eq ptr %111, null
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.230) #15
  %114 = load ptr, ptr %110, align 8, !tbaa !40
  %115 = or disjoint i32 %3, 2
  %116 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %114, i32 noundef 0, i32 noundef %115, i8 noundef zeroext 0) #14
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %31) #14
  br label %117

117:                                              ; preds = %113, %109
  %118 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 9
  %119 = load ptr, ptr %118, align 8, !tbaa !40
  %120 = icmp eq ptr %119, null
  br i1 %120, label %133, label %121

121:                                              ; preds = %117
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.231) #15
  %122 = load ptr, ptr %118, align 8, !tbaa !40
  %123 = icmp eq ptr %122, null
  br i1 %123, label %132, label %124

124:                                              ; preds = %121
  %125 = or disjoint i32 %3, 2
  br label %126

126:                                              ; preds = %124, %126
  %127 = phi ptr [ %122, %124 ], [ %130, %126 ]
  %128 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %127, i32 noundef 0, i32 noundef %125, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.1) #15
  %129 = getelementptr inbounds %struct.tree_block, ptr %127, i64 0, i32 9
  %130 = load ptr, ptr %129, align 8, !tbaa !40
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %126, !llvm.loop !126

132:                                              ; preds = %126, %121
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %31) #14
  br label %133

133:                                              ; preds = %117, %132, %22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  ret void
}

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @tree_operand_length(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !35 !PGOFuncName !127 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !57
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  %10 = getelementptr inbounds %struct.tree_int_cst, ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !40
  %12 = trunc i64 %11 to i32
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %3
  %15 = load i8, ptr %14, align 1, !tbaa !40
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i32 [ %12, %7 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @init_call_expr_arg_iterator(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #8 !prof !35 !PGOFuncName !128 {
  store ptr %0, ptr %1, align 8, !tbaa !118
  %3 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  %5 = getelementptr inbounds %struct.tree_int_cst, ptr %4, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !40
  %7 = trunc i64 %6 to i32
  %8 = add nsw i32 %7, -3
  %9 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %1, i64 0, i32 1
  store i32 %8, ptr %9, align 8, !tbaa !116
  %10 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %1, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !114
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #7 !prof !35 !PGOFuncName !129 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !130
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_tree_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 !prof !35 !PGOFuncName !132 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !130
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !36
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !36
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @decl_value_expr_lookup(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @op_code_prio(i32 noundef %0) local_unnamed_addr #3 !prof !35 {
  %2 = add i32 %0, -2
  %3 = icmp ult i32 %2, 178
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = zext nneg i32 %2 to i64
  %6 = getelementptr inbounds [178 x i32], ptr @switch.table.op_code_prio, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i32 [ %7, %4 ], [ 9999, %1 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_function_name(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !35 !PGOFuncName !133 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 116
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ %9, %7 ], [ %1, %3 ]
  %12 = getelementptr inbounds %struct.tree_decl_minimal, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !40
  %14 = icmp ne ptr %13, null
  %15 = and i32 %2, 262144
  %16 = icmp eq i32 %15, 0
  %17 = and i1 %16, %14
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !134
  %20 = tail call ptr %19(ptr noundef nonnull %11, i32 noundef 1) #15
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %20) #15
  br label %22

21:                                               ; preds = %10
  tail call fastcc void @dump_decl_name(ptr noundef %0, ptr noundef nonnull %11, i32 noundef %2) #14
  br label %22

22:                                               ; preds = %21, %18
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize }
attributes #16 = { cold }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

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
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!38, !38, i64 0}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"tree-pretty-print.c:maybe_init_pretty_print"}
!44 = !{!45, !38, i64 49}
!45 = !{!"pretty_print_info", !37, i64 0, !37, i64 8, !46, i64 16, !46, i64 20, !46, i64 24, !47, i64 28, !37, i64 40, !38, i64 48, !38, i64 49, !38, i64 50}
!46 = !{!"int", !38, i64 0}
!47 = !{!"", !46, i64 0, !46, i64 4}
!48 = !{!45, !38, i64 50}
!49 = !{!45, !37, i64 0}
!50 = !{!51, !37, i64 192}
!51 = !{!"", !52, i64 0, !52, i64 88, !37, i64 176, !37, i64 184, !37, i64 192, !46, i64 200, !38, i64 204}
!52 = !{!"obstack", !53, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !53, i64 40, !46, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !46, i64 80, !46, i64 80, !46, i64 80}
!53 = !{!"long", !38, i64 0}
!54 = distinct !{!54, !42}
!55 = distinct !{!55, !42}
!56 = distinct !{!56, !42}
!57 = !{!46, !46, i64 0}
!58 = distinct !{!58, !42}
!59 = distinct !{!59, !42}
!60 = distinct !{!60, !42}
!61 = distinct !{!61, !42}
!62 = !{i64 0, i64 4, !57, i64 0, i64 4, !57, i64 0, i64 4, !57, i64 0, i64 4, !57, i64 0, i64 4, !57, i64 0, i64 4, !57, i64 8, i64 24, !40}
!63 = distinct !{!63, !42}
!64 = !{i32 1, i32 10000}
!65 = !{!66, !37, i64 8}
!66 = !{!"constructor_elt_d", !37, i64 0, !37, i64 8}
!67 = !{!66, !37, i64 0}
!68 = distinct !{!68, !42}
!69 = distinct !{!69, !42}
!70 = !{i64 0, i64 8, !36, i64 8, i64 8, !36}
!71 = !{i64 0, i64 8, !36}
!72 = distinct !{!72, !42}
!73 = distinct !{!73, !42}
!74 = !{i8 0, i8 2}
!75 = distinct !{!75, !42}
!76 = distinct !{!76, !42}
!77 = distinct !{!77, !42}
!78 = distinct !{!78, !42}
!79 = !{!"tree-pretty-print.c:dump_omp_clause"}
!80 = !{!"tree-pretty-print.c:dump_location"}
!81 = !{!82, !37, i64 0}
!82 = !{!"", !37, i64 0, !46, i64 8, !46, i64 12, !38, i64 16}
!83 = !{!82, !46, i64 8}
!84 = !{!"tree-pretty-print.c:dump_decl_name"}
!85 = !{!"tree-pretty-print.c:dump_function_declaration"}
!86 = distinct !{!86, !42}
!87 = !{!"tree-pretty-print.c:do_niy"}
!88 = distinct !{!88, !42}
!89 = !{!"tree-pretty-print.c:dump_array_domain"}
!90 = !{!"tree-pretty-print.c:print_struct_decl"}
!91 = distinct !{!91, !42}
!92 = distinct !{!92, !42}
!93 = distinct !{!93, !42}
!94 = distinct !{!94, !42}
!95 = !{!"tree-pretty-print.c:pretty_print_string"}
!96 = distinct !{!96, !42}
!97 = !{!"tree-pretty-print.c:VEC_constructor_elt_base_length"}
!98 = !{!99, !46, i64 0}
!99 = !{!"VEC_constructor_elt_base", !46, i64 0, !46, i64 4, !38, i64 8}
!100 = !{!"tree-pretty-print.c:VEC_constructor_elt_base_index"}
!101 = !{!"tree-pretty-print.c:newline_and_indent"}
!102 = distinct !{!102, !42}
!103 = !{!"tree-pretty-print.c:tsi_start"}
!104 = !{!"tree-pretty-print.c:tsi_end_p"}
!105 = !{!"tree-pretty-print.c:tsi_stmt"}
!106 = !{!107, !37, i64 16}
!107 = !{!"tree_statement_list_node", !37, i64 0, !37, i64 8, !37, i64 16}
!108 = !{!"tree-pretty-print.c:tsi_next"}
!109 = !{!110, !37, i64 0}
!110 = !{!"", !37, i64 0, !37, i64 8}
!111 = !{!107, !37, i64 8}
!112 = !{!"tree-pretty-print.c:first_call_expr_arg"}
!113 = !{!"tree-pretty-print.c:more_call_expr_args_p"}
!114 = !{!115, !46, i64 12}
!115 = !{!"call_expr_arg_iterator_d", !37, i64 0, !46, i64 8, !46, i64 12}
!116 = !{!115, !46, i64 8}
!117 = !{!"tree-pretty-print.c:next_call_expr_arg"}
!118 = !{!115, !37, i64 0}
!119 = !{!"tree-pretty-print.c:op_symbol"}
!120 = !{!"tree-pretty-print.c:dump_block_node"}
!121 = distinct !{!121, !42}
!122 = distinct !{!122, !42}
!123 = distinct !{!123, !42}
!124 = !{i32 0, i32 2}
!125 = distinct !{!125, !42}
!126 = distinct !{!126, !42}
!127 = !{!"tree-pretty-print.c:tree_operand_length"}
!128 = !{!"tree-pretty-print.c:init_call_expr_arg_iterator"}
!129 = !{!"tree-pretty-print.c:VEC_tree_base_length"}
!130 = !{!131, !46, i64 0}
!131 = !{!"VEC_tree_base", !46, i64 0, !46, i64 4, !38, i64 8}
!132 = !{!"tree-pretty-print.c:VEC_tree_base_iterate"}
!133 = !{!"tree-pretty-print.c:dump_function_name"}
!134 = !{!135, !37, i64 176}
!135 = !{!"lang_hooks", !37, i64 0, !53, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !136, i64 240, !137, i64 248, !138, i64 256, !139, i64 272, !140, i64 432, !141, i64 560, !37, i64 584, !37, i64 592, !37, i64 600, !37, i64 608, !37, i64 616, !37, i64 624, !37, i64 632, !37, i64 640, !37, i64 648, !37, i64 656, !37, i64 664, !38, i64 672}
!136 = !{!"lang_hooks_for_tree_inlining", !37, i64 0}
!137 = !{!"lang_hooks_for_callgraph", !37, i64 0}
!138 = !{!"lang_hooks_for_tree_dump", !37, i64 0, !37, i64 8}
!139 = !{!"lang_hooks_for_decls", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152}
!140 = !{!"lang_hooks_for_types", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !38, i64 120}
!141 = !{!"lang_hooks_for_lto", !37, i64 0, !37, i64 8, !37, i64 16}
