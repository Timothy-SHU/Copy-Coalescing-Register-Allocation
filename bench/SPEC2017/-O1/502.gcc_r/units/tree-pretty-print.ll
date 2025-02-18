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
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.output_buffer = type { %struct.obstack, %struct.obstack, ptr, ptr, ptr, i32, [128 x i8] }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.real_value = type { i32, [3 x i64] }
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
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.tree_statement_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_statement_list_node = type { ptr, ptr, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_omp_clause = type { %struct.tree_common, i32, i32, %union.omp_clause_subcode, ptr, ptr, [1 x ptr] }
%union.omp_clause_subcode = type { i32 }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"... [cycled back to \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@buffer = internal global %struct.pretty_print_info zeroinitializer, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"<&%p> \00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"<<< error >>>\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.6 = private unnamed_addr constant [7 x i8] c"const \00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"volatile \00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"restrict \00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"<address-space-\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"<unnamed type decl>\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"<unnamed type>\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"vector \00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"<unnamed-unsigned:\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"<unnamed-signed:\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"__complex__ \00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"<float:\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"<fixed-point-\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"sat:\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"nonsat:\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"<null type>\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"<T%x>\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c" const\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c" volatile\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c" restrict\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c" <address-space-\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c" {ref-all}\00", align 1
@.str.32 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"MEM[\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"symbol: \00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"base: \00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"index: \00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"step: \00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"offset: \00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"struct \00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"union \00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"0x%lx%016lx\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c" overflow\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c" -Inf\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c" Inf\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c" Nan\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"__complex__ (\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"{ \00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c" }\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"<null method basetype>\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"<L%d>\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"<D.xxxx>\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"<D.%u>\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"class \00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"<retval>\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.65 = private unnamed_addr constant [3 x i8] c"->\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"{off: \00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"BIT_FIELD_REF <\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c" ...\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"{lb: \00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c" sz: \00", align 1
@.str.71 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.72 = private unnamed_addr constant [16 x i8] c"<COMPOUND_EXPR>\00", align 1
@.str.73 = private unnamed_addr constant [17 x i8] c"<STATEMENT_LIST>\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"{nt}\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"TARGET_EXPR <\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"if (\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c" else \00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.79 = private unnamed_addr constant [25 x i8] c"__builtin_va_arg_pack ()\00", align 1
@.str.80 = private unnamed_addr constant [17 x i8] c" [static-chain: \00", align 1
@.str.81 = private unnamed_addr constant [28 x i8] c" [return slot optimization]\00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c" [tail call]\00", align 1
@.str.83 = private unnamed_addr constant [17 x i8] c"<<cleanup_point \00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c">>\00", align 1
@.str.85 = private unnamed_addr constant [19 x i8] c"<PLACEHOLDER_EXPR \00", align 1
@.str.86 = private unnamed_addr constant [16 x i8] c"{misalignment: \00", align 1
@.str.87 = private unnamed_addr constant [11 x i8] c"MIN_EXPR <\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"MAX_EXPR <\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"ABS_EXPR <\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.91 = private unnamed_addr constant [19 x i8] c"VIEW_CONVERT_EXPR<\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c">(\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"((\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"))\00", align 1
@.str.95 = private unnamed_addr constant [18 x i8] c"NON_LVALUE_EXPR <\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"SAVE_EXPR <\00", align 1
@.str.97 = private unnamed_addr constant [15 x i8] c"COMPLEX_EXPR <\00", align 1
@.str.98 = private unnamed_addr constant [12 x i8] c"CONJ_EXPR <\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"REALPART_EXPR <\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"IMAGPART_EXPR <\00", align 1
@.str.101 = private unnamed_addr constant [14 x i8] c"VA_ARG_EXPR <\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"try\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"catch\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c"finally\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"catch (\00", align 1
@.str.106 = private unnamed_addr constant [15 x i8] c"<<<eh_filter (\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c")>>>\00", align 1
@.str.108 = private unnamed_addr constant [6 x i8] c"break\00", align 1
@.str.109 = private unnamed_addr constant [9 x i8] c"continue\00", align 1
@.str.110 = private unnamed_addr constant [13 x i8] c" [non-local]\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"while (1)\00", align 1
@.str.112 = private unnamed_addr constant [14 x i8] c"// predicted \00", align 1
@.str.113 = private unnamed_addr constant [11 x i8] c"likely by \00", align 1
@.str.114 = private unnamed_addr constant [13 x i8] c"unlikely by \00", align 1
@.str.115 = private unnamed_addr constant [12 x i8] c" predictor.\00", align 1
@.str.116 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.117 = private unnamed_addr constant [8 x i8] c") break\00", align 1
@.str.118 = private unnamed_addr constant [9 x i8] c"switch (\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c" goto \00", align 1
@.str.120 = private unnamed_addr constant [20 x i8] c"case ???: goto ???;\00", align 1
@.str.121 = private unnamed_addr constant [6 x i8] c"goto \00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"__asm__\00", align 1
@.str.123 = private unnamed_addr constant [14 x i8] c" __volatile__\00", align 1
@.str.124 = private unnamed_addr constant [6 x i8] c"case \00", align 1
@.str.125 = private unnamed_addr constant [6 x i8] c" ... \00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.127 = private unnamed_addr constant [14 x i8] c"OBJ_TYPE_REF(\00", align 1
@.str.128 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@.str.129 = private unnamed_addr constant [5 x i8] c"(ab)\00", align 1
@.str.130 = private unnamed_addr constant [4 x i8] c"(D)\00", align 1
@.str.131 = private unnamed_addr constant [17 x i8] c"WITH_SIZE_EXPR <\00", align 1
@.str.132 = private unnamed_addr constant [14 x i8] c"ASSERT_EXPR <\00", align 1
@.str.133 = private unnamed_addr constant [11 x i8] c"scev_known\00", align 1
@.str.134 = private unnamed_addr constant [15 x i8] c"scev_not_known\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c", +, \00", align 1
@.str.136 = private unnamed_addr constant [3 x i8] c"}_\00", align 1
@.str.137 = private unnamed_addr constant [15 x i8] c"REALIGN_LOAD <\00", align 1
@.str.138 = private unnamed_addr constant [18 x i8] c" VEC_COND_EXPR < \00", align 1
@.str.139 = private unnamed_addr constant [4 x i8] c" , \00", align 1
@.str.140 = private unnamed_addr constant [4 x i8] c" > \00", align 1
@.str.141 = private unnamed_addr constant [18 x i8] c" DOT_PROD_EXPR < \00", align 1
@.str.142 = private unnamed_addr constant [21 x i8] c"#pragma omp parallel\00", align 1
@.str.143 = private unnamed_addr constant [17 x i8] c"#pragma omp task\00", align 1
@.str.144 = private unnamed_addr constant [16 x i8] c"#pragma omp for\00", align 1
@.str.145 = private unnamed_addr constant [6 x i8] c"for (\00", align 1
@.str.146 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.147 = private unnamed_addr constant [21 x i8] c"#pragma omp sections\00", align 1
@.str.148 = private unnamed_addr constant [20 x i8] c"#pragma omp section\00", align 1
@.str.149 = private unnamed_addr constant [19 x i8] c"#pragma omp master\00", align 1
@.str.150 = private unnamed_addr constant [20 x i8] c"#pragma omp ordered\00", align 1
@.str.151 = private unnamed_addr constant [21 x i8] c"#pragma omp critical\00", align 1
@.str.152 = private unnamed_addr constant [19 x i8] c"#pragma omp atomic\00", align 1
@.str.153 = private unnamed_addr constant [19 x i8] c"#pragma omp single\00", align 1
@.str.154 = private unnamed_addr constant [19 x i8] c" REDUC_MAX_EXPR < \00", align 1
@.str.155 = private unnamed_addr constant [19 x i8] c" REDUC_MIN_EXPR < \00", align 1
@.str.156 = private unnamed_addr constant [20 x i8] c" REDUC_PLUS_EXPR < \00", align 1
@.str.157 = private unnamed_addr constant [27 x i8] c" VEC_WIDEN_MULT_HI_EXPR < \00", align 1
@.str.158 = private unnamed_addr constant [27 x i8] c" VEC_WIDEN_MULT_LO_EXPR < \00", align 1
@.str.159 = private unnamed_addr constant [23 x i8] c" VEC_UNPACK_HI_EXPR < \00", align 1
@.str.160 = private unnamed_addr constant [23 x i8] c" VEC_UNPACK_LO_EXPR < \00", align 1
@.str.161 = private unnamed_addr constant [29 x i8] c" VEC_UNPACK_FLOAT_HI_EXPR < \00", align 1
@.str.162 = private unnamed_addr constant [29 x i8] c" VEC_UNPACK_FLOAT_LO_EXPR < \00", align 1
@.str.163 = private unnamed_addr constant [24 x i8] c" VEC_PACK_TRUNC_EXPR < \00", align 1
@.str.164 = private unnamed_addr constant [22 x i8] c" VEC_PACK_SAT_EXPR < \00", align 1
@.str.165 = private unnamed_addr constant [28 x i8] c" VEC_PACK_FIX_TRUNC_EXPR < \00", align 1
@.str.166 = private unnamed_addr constant [26 x i8] c" VEC_EXTRACT_EVEN_EXPR < \00", align 1
@.str.167 = private unnamed_addr constant [25 x i8] c" VEC_EXTRACT_ODD_EXPR < \00", align 1
@.str.168 = private unnamed_addr constant [29 x i8] c" VEC_INTERLEAVE_HIGH_EXPR < \00", align 1
@.str.169 = private unnamed_addr constant [28 x i8] c" VEC_INTERLEAVE_LOW_EXPR < \00", align 1
@.str.170 = private unnamed_addr constant [9 x i8] c"typedef \00", align 1
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@.str.171 = private unnamed_addr constant [10 x i8] c"register \00", align 1
@.str.172 = private unnamed_addr constant [8 x i8] c"extern \00", align 1
@.str.173 = private unnamed_addr constant [8 x i8] c"static \00", align 1
@.str.174 = private unnamed_addr constant [10 x i8] c" __asm__ \00", align 1
@.str.175 = private unnamed_addr constant [15 x i8] c" [value-expr: \00", align 1
@.str.176 = private unnamed_addr constant [3 x i8] c"||\00", align 1
@.str.177 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.178 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.179 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.180 = private unnamed_addr constant [4 x i8] c"ord\00", align 1
@.str.181 = private unnamed_addr constant [6 x i8] c"unord\00", align 1
@.str.182 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.183 = private unnamed_addr constant [4 x i8] c"u==\00", align 1
@.str.184 = private unnamed_addr constant [3 x i8] c"!=\00", align 1
@.str.185 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.186 = private unnamed_addr constant [3 x i8] c"u<\00", align 1
@.str.187 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.188 = private unnamed_addr constant [4 x i8] c"u<=\00", align 1
@.str.189 = private unnamed_addr constant [3 x i8] c"u>\00", align 1
@.str.190 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.191 = private unnamed_addr constant [4 x i8] c"u>=\00", align 1
@.str.192 = private unnamed_addr constant [3 x i8] c"<>\00", align 1
@.str.193 = private unnamed_addr constant [3 x i8] c"<<\00", align 1
@.str.194 = private unnamed_addr constant [4 x i8] c"r<<\00", align 1
@.str.195 = private unnamed_addr constant [4 x i8] c"r>>\00", align 1
@.str.196 = private unnamed_addr constant [4 x i8] c"v<<\00", align 1
@.str.197 = private unnamed_addr constant [4 x i8] c"v>>\00", align 1
@.str.198 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.199 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.200 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.201 = private unnamed_addr constant [3 x i8] c"w*\00", align 1
@.str.202 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.203 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.204 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.205 = private unnamed_addr constant [3 x i8] c"A*\00", align 1
@.str.206 = private unnamed_addr constant [3 x i8] c"M*\00", align 1
@.str.207 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.208 = private unnamed_addr constant [6 x i8] c"/[cl]\00", align 1
@.str.209 = private unnamed_addr constant [6 x i8] c"/[fl]\00", align 1
@.str.210 = private unnamed_addr constant [6 x i8] c"/[rd]\00", align 1
@.str.211 = private unnamed_addr constant [6 x i8] c"/[ex]\00", align 1
@.str.212 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.213 = private unnamed_addr constant [6 x i8] c"%[cl]\00", align 1
@.str.214 = private unnamed_addr constant [6 x i8] c"%[fl]\00", align 1
@.str.215 = private unnamed_addr constant [6 x i8] c"%[rd]\00", align 1
@.str.216 = private unnamed_addr constant [4 x i8] c" --\00", align 1
@.str.217 = private unnamed_addr constant [4 x i8] c" ++\00", align 1
@.str.218 = private unnamed_addr constant [4 x i8] c"-- \00", align 1
@.str.219 = private unnamed_addr constant [4 x i8] c"++ \00", align 1
@.str.220 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.221 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.222 = private unnamed_addr constant [12 x i8] c"<<< ??? >>>\00", align 1
@.str.223 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.224 = private unnamed_addr constant [5 x i8] c") ? \00", align 1
@.str.225 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.226 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.227 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str.228 = private unnamed_addr constant [13 x i8] c"firstprivate\00", align 1
@.str.229 = private unnamed_addr constant [12 x i8] c"lastprivate\00", align 1
@.str.230 = private unnamed_addr constant [7 x i8] c"copyin\00", align 1
@.str.231 = private unnamed_addr constant [12 x i8] c"copyprivate\00", align 1
@.str.232 = private unnamed_addr constant [11 x i8] c"reduction(\00", align 1
@.str.233 = private unnamed_addr constant [4 x i8] c"if(\00", align 1
@.str.234 = private unnamed_addr constant [13 x i8] c"num_threads(\00", align 1
@.str.235 = private unnamed_addr constant [7 x i8] c"nowait\00", align 1
@.str.236 = private unnamed_addr constant [8 x i8] c"ordered\00", align 1
@.str.237 = private unnamed_addr constant [9 x i8] c"default(\00", align 1
@.str.238 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.239 = private unnamed_addr constant [20 x i8] c"tree-pretty-print.c\00", align 1
@.str.240 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.241 = private unnamed_addr constant [10 x i8] c"schedule(\00", align 1
@.str.242 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.243 = private unnamed_addr constant [8 x i8] c"dynamic\00", align 1
@.str.244 = private unnamed_addr constant [7 x i8] c"guided\00", align 1
@.str.245 = private unnamed_addr constant [8 x i8] c"runtime\00", align 1
@.str.246 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.247 = private unnamed_addr constant [7 x i8] c"untied\00", align 1
@.str.248 = private unnamed_addr constant [10 x i8] c"collapse(\00", align 1
@.str.249 = private unnamed_addr constant [3 x i8] c"] \00", align 1
@.str.250 = private unnamed_addr constant [5 x i8] c"L.%d\00", align 1
@.str.251 = private unnamed_addr constant [7 x i8] c"D#xxxx\00", align 1
@.str.252 = private unnamed_addr constant [5 x i8] c"D#%i\00", align 1
@.str.253 = private unnamed_addr constant [8 x i8] c"%c.xxxx\00", align 1
@.str.254 = private unnamed_addr constant [6 x i8] c"%c.%u\00", align 1
@.str.255 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.256 = private unnamed_addr constant [19 x i8] c"<<< Unknown tree: \00", align 1
@tree_code_name = external local_unnamed_addr constant [0 x ptr], align 8
@.str.257 = private unnamed_addr constant [6 x i8] c" >>>\0A\00", align 1
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@.str.258 = private unnamed_addr constant [10 x i8] c"<unknown>\00", align 1
@.str.259 = private unnamed_addr constant [11 x i8] c"BLOCK #%d \00", align 1
@.str.260 = private unnamed_addr constant [6 x i8] c"[%p] \00", align 1
@.str.261 = private unnamed_addr constant [12 x i8] c"[abstract] \00", align 1
@.str.262 = private unnamed_addr constant [11 x i8] c"[written] \00", align 1
@.str.263 = private unnamed_addr constant [15 x i8] c"SUPERCONTEXT: \00", align 1
@.str.264 = private unnamed_addr constant [12 x i8] c"SUBBLOCKS: \00", align 1
@.str.265 = private unnamed_addr constant [11 x i8] c"SIBLINGS: \00", align 1
@.str.266 = private unnamed_addr constant [7 x i8] c"VARS: \00", align 1
@.str.267 = private unnamed_addr constant [20 x i8] c"NONLOCALIZED_VARS: \00", align 1
@.str.268 = private unnamed_addr constant [18 x i8] c"ABSTRACT_ORIGIN: \00", align 1
@.str.269 = private unnamed_addr constant [18 x i8] c"FRAGMENT_ORIGIN: \00", align 1
@.str.270 = private unnamed_addr constant [17 x i8] c"FRAGMENT_CHAIN: \00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.271 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.272 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.273 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.274 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.275 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.276 = private unnamed_addr constant [3 x i8] c"\\v\00", align 1
@.str.277 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.278 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.279 = private unnamed_addr constant [3 x i8] c"\\'\00", align 1
@.str.280 = private unnamed_addr constant [3 x i8] c"\\1\00", align 1
@.str.281 = private unnamed_addr constant [3 x i8] c"\\2\00", align 1
@.str.282 = private unnamed_addr constant [3 x i8] c"\\3\00", align 1
@.str.283 = private unnamed_addr constant [3 x i8] c"\\4\00", align 1
@.str.284 = private unnamed_addr constant [3 x i8] c"\\5\00", align 1
@.str.285 = private unnamed_addr constant [3 x i8] c"\\6\00", align 1
@.str.286 = private unnamed_addr constant [3 x i8] c"\\7\00", align 1
@initialized = internal unnamed_addr global i1 false, align 4
@reltable.print_struct_decl = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.42 to i64), i64 ptrtoint (ptr @reltable.print_struct_decl to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.43 to i64), i64 ptrtoint (ptr @reltable.print_struct_decl to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.43 to i64), i64 ptrtoint (ptr @reltable.print_struct_decl to i64)) to i32)], align 4
@switch.table.op_code_prio = private unnamed_addr constant [178 x i32] [i32 1, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 15, i32 9999, i32 16, i32 16, i32 15, i32 15, i32 14, i32 14, i32 14, i32 9999, i32 9999, i32 1, i32 2, i32 2, i32 14, i32 3, i32 9999, i32 1, i32 15, i32 9999, i32 9999, i32 9999, i32 12, i32 12, i32 13, i32 12, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 14, i32 14, i32 14, i32 16, i32 16, i32 16, i32 11, i32 11, i32 11, i32 11, i32 6, i32 7, i32 8, i32 14, i32 5, i32 4, i32 5, i32 4, i32 7, i32 14, i32 10, i32 10, i32 10, i32 10, i32 9, i32 9, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 9999, i32 9999, i32 14, i32 9999, i32 9999, i32 14, i32 9999, i32 9999, i32 9999, i32 9999, i32 14, i32 9999, i32 9999, i32 9999, i32 14, i32 14, i32 14, i32 14, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 9999, i32 16, i32 16, i32 16, i32 13, i32 12, i32 13, i32 16, i32 16, i32 13, i32 13, i32 16, i32 16, i32 16, i32 16, i32 16, i32 16], align 4
@reltable.op_symbol_code = private unnamed_addr constant [125 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.23 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.205 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.206 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.71 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.198 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.202 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.23 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.198 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.207 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.208 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.209 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.210 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.212 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.213 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.214 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.215 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.207 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.211 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.202 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.221 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.220 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.193 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.84 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.194 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.195 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.178 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.179 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.24 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.203 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.177 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.176 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.177 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.176 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.179 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.204 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.185 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.187 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.17 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.190 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.182 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.184 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.181 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.180 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.186 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.188 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.189 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.191 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.183 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.192 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.24 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.216 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.217 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.218 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.219 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.199 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.222 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.200 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.201 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.196 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.197 to i64), i64 ptrtoint (ptr @reltable.op_symbol_code to i64)) to i32)], align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !35
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !34 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #17
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
  br i1 %23, label %7, label %24, !llvm.loop !51

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_generic_expr(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !35
  tail call void @print_generic_expr(ptr noundef %2, ptr noundef %0, i32 noundef 16448)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !35
  %4 = tail call i32 @fputc(i32 10, ptr %3)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @print_generic_expr(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = load i1, ptr @initialized, align 4
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @pp_construct(ptr noundef nonnull @buffer, ptr noundef null, i32 noundef 0) #17
  store i8 1, ptr getelementptr inbounds (%struct.pretty_print_info, ptr @buffer, i64 0, i32 8), align 1, !tbaa !54
  store i8 0, ptr getelementptr inbounds (%struct.pretty_print_info, ptr @buffer, i64 0, i32 9), align 2, !tbaa !57
  store i1 true, ptr @initialized, align 4
  br label %6

6:                                                ; preds = %3, %5
  %7 = load ptr, ptr @buffer, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 4
  store ptr %0, ptr %8, align 8, !tbaa !59
  %9 = tail call i32 @dump_generic_node(ptr noundef nonnull @buffer, ptr noundef %1, i32 noundef 0, i32 noundef %2, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_generic_stmt(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !35
  tail call void @print_generic_stmt(ptr noundef %2, ptr noundef %0, i32 noundef 16448)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !35
  %4 = tail call i32 @fputc(i32 10, ptr %3)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @print_generic_stmt(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = load i1, ptr @initialized, align 4
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @pp_construct(ptr noundef nonnull @buffer, ptr noundef null, i32 noundef 0) #17
  store i8 1, ptr getelementptr inbounds (%struct.pretty_print_info, ptr @buffer, i64 0, i32 8), align 1, !tbaa !54
  store i8 0, ptr getelementptr inbounds (%struct.pretty_print_info, ptr @buffer, i64 0, i32 9), align 2, !tbaa !57
  store i1 true, ptr @initialized, align 4
  br label %6

6:                                                ; preds = %3, %5
  %7 = load ptr, ptr @buffer, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 4
  store ptr %0, ptr %8, align 8, !tbaa !59
  %9 = tail call i32 @dump_generic_node(ptr noundef nonnull @buffer, ptr noundef %1, i32 noundef 0, i32 noundef %2, i8 noundef zeroext 1)
  tail call void @pp_base_flush(ptr noundef nonnull @buffer) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_tree_chain(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call ptr @pointer_set_create() #17
  br label %3

3:                                                ; preds = %6, %1
  %4 = phi ptr [ %0, %1 ], [ %11, %6 ]
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @stderr, align 8, !tbaa !35
  tail call void @print_generic_expr(ptr noundef %7, ptr noundef nonnull %4, i32 noundef 16704)
  %8 = load ptr, ptr @stderr, align 8, !tbaa !35
  %9 = tail call i32 @fputc(i32 32, ptr %8)
  %10 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = tail call i32 @pointer_set_insert(ptr noundef %2, ptr noundef %11) #17
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %3, label %14, !llvm.loop !62

14:                                               ; preds = %6
  %15 = load ptr, ptr @stderr, align 8, !tbaa !35
  %16 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 20, i64 1, ptr %15) #18
  %17 = load ptr, ptr @stderr, align 8, !tbaa !35
  tail call void @print_generic_expr(ptr noundef %17, ptr noundef %11, i32 noundef 16704)
  %18 = load ptr, ptr @stderr, align 8, !tbaa !35
  %19 = tail call i32 @fputc(i32 93, ptr %18)
  br label %20

20:                                               ; preds = %3, %14
  %21 = load ptr, ptr @stderr, align 8, !tbaa !35
  %22 = tail call i32 @fputc(i32 10, ptr %21)
  tail call void @pointer_set_destroy(ptr noundef %2) #17
  ret void
}

declare ptr @pointer_set_create() local_unnamed_addr #3

declare i32 @pointer_set_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @print_generic_decl(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = load i1, ptr @initialized, align 4
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @pp_construct(ptr noundef nonnull @buffer, ptr noundef null, i32 noundef 0) #17
  store i8 1, ptr getelementptr inbounds (%struct.pretty_print_info, ptr @buffer, i64 0, i32 8), align 1, !tbaa !54
  store i8 0, ptr getelementptr inbounds (%struct.pretty_print_info, ptr @buffer, i64 0, i32 9), align 2, !tbaa !57
  store i1 true, ptr @initialized, align 4
  br label %6

6:                                                ; preds = %3, %5
  %7 = load ptr, ptr @buffer, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.output_buffer, ptr %7, i64 0, i32 4
  store ptr %0, ptr %8, align 8, !tbaa !59
  tail call void @print_declaration(ptr noundef nonnull @buffer, ptr noundef %1, i32 noundef 2, i32 noundef %2)
  tail call void @pp_write_text_to_stream(ptr noundef nonnull @buffer) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @print_declaration(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !34 {
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %4, %6
  %7 = phi i32 [ %8, %6 ], [ 0, %4 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %8 = add nuw nsw i32 %7, 1
  %9 = icmp eq i32 %8, %2
  br i1 %9, label %10, label %6, !llvm.loop !63

10:                                               ; preds = %6, %4
  %11 = load i64, ptr %1, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 35
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.170) #17
  br label %15

15:                                               ; preds = %14, %10
  %16 = load i64, ptr %1, align 8
  %17 = and i64 %16, 65535
  %18 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %17, i64 11
  %19 = load i8, ptr %18, align 1, !tbaa !46
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 16777216
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.171) #17
  br label %27

27:                                               ; preds = %26, %21, %15
  %28 = load i64, ptr %1, align 8
  %29 = and i64 %28, 134217728
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, 33554432
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %27
  %37 = and i64 %28, 67108864
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36, %31
  %40 = phi ptr [ @.str.172, %31 ], [ @.str.173, %36 ]
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %40) #17
  br label %41

41:                                               ; preds = %39, %36
  %42 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 65535
  %46 = icmp eq i64 %45, 15
  br i1 %46, label %47, label %70

47:                                               ; preds = %41, %47
  %48 = phi ptr [ %50, %47 ], [ %43, %41 ]
  %49 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !46
  %51 = load i64, ptr %50, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 15
  br i1 %53, label %47, label %54, !llvm.loop !64

54:                                               ; preds = %47
  %55 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %50, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %56 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  %57 = load ptr, ptr %42, align 8, !tbaa !46
  %58 = load i64, ptr %57, align 8
  %59 = and i64 %58, 65535
  %60 = icmp eq i64 %59, 15
  br i1 %60, label %61, label %82

61:                                               ; preds = %54, %61
  %62 = phi ptr [ %66, %61 ], [ %57, %54 ]
  %63 = getelementptr inbounds %struct.tree_type, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !46
  tail call fastcc void @dump_array_domain(ptr noundef %0, ptr noundef %64, i32 noundef %2, i32 noundef %3)
  %65 = getelementptr inbounds %struct.tree_common, ptr %62, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !46
  %67 = load i64, ptr %66, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 15
  br i1 %69, label %61, label %82, !llvm.loop !65

70:                                               ; preds = %41
  %71 = load i64, ptr %1, align 8
  %72 = and i64 %71, 65535
  %73 = icmp eq i64 %72, 29
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !46
  %77 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %76, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  tail call fastcc void @dump_decl_name(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %3)
  %78 = load ptr, ptr %42, align 8, !tbaa !46
  tail call fastcc void @dump_function_declaration(ptr noundef %0, ptr noundef %78, i32 noundef %2, i32 noundef %3)
  br label %82

79:                                               ; preds = %70
  %80 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %43, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %81 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %82

82:                                               ; preds = %61, %54, %74, %79
  %83 = load i64, ptr %1, align 8
  %84 = and i64 %83, 65535
  %85 = icmp eq i64 %84, 32
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 4
  %88 = load i32, ptr %87, align 8
  %89 = and i32 %88, 2
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.174) #17
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #17
  %92 = tail call ptr @decl_assembler_name(ptr noundef nonnull %1) #17
  %93 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %92, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #17
  br label %94

94:                                               ; preds = %91, %86, %82
  %95 = load i64, ptr %1, align 8
  %96 = and i64 %95, 65535
  %97 = icmp eq i64 %96, 29
  br i1 %97, label %105, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 5
  %100 = load ptr, ptr %99, align 8, !tbaa !46
  %101 = icmp eq ptr %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 61) #17
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %103 = load ptr, ptr %99, align 8, !tbaa !46
  %104 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %103, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %105

105:                                              ; preds = %98, %102, %94
  %106 = load i64, ptr %1, align 8
  %107 = and i64 %106, 65535
  %108 = icmp eq i64 %107, 32
  br i1 %108, label %109, label %117

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %111 = load i64, ptr %110, align 8
  %112 = and i64 %111, 67108864
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %109
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.175) #17
  %115 = tail call ptr @decl_value_expr_lookup(ptr noundef nonnull %1) #17
  %116 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %115, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 93) #17
  br label %117

117:                                              ; preds = %114, %109, %105
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 59) #17
  ret void
}

declare void @pp_write_text_to_stream(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @dump_generic_node(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext %4) local_unnamed_addr #9 !prof !34 {
  %6 = alloca %struct.real_value, align 8
  %7 = alloca [100 x i8], align 16
  %8 = alloca [100 x i8], align 16
  %9 = icmp eq ptr %1, null
  br i1 %9, label %1913, label %10

10:                                               ; preds = %5
  %11 = load i64, ptr %1, align 8
  %12 = and i64 %11, 65535
  %13 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !50
  %15 = add i32 %14, -4
  %16 = icmp ult i32 %15, 7
  %17 = icmp eq i8 %4, 0
  %18 = and i32 %3, 4096
  %19 = icmp eq i32 %18, 0
  %20 = or i1 %17, %19
  br i1 %20, label %22, label %21

21:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %1) #17
  br label %22

22:                                               ; preds = %21, %10
  %23 = and i32 %3, 128
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %44, label %25

25:                                               ; preds = %22
  %26 = load i64, ptr %1, align 8
  %27 = and i64 %26, 65535
  %28 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !50
  %30 = add i32 %29, -4
  %31 = icmp ult i32 %30, 7
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !46
  br label %35

35:                                               ; preds = %25, %32
  %36 = phi i32 [ %34, %32 ], [ 0, %25 ]
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  br i1 %31, label %39, label %42

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !46
  br label %42

42:                                               ; preds = %38, %39
  %43 = phi i32 [ %41, %39 ], [ 0, %38 ]
  tail call fastcc void @dump_location(ptr noundef %0, i32 noundef %43)
  br label %44

44:                                               ; preds = %42, %35, %22
  %45 = load i64, ptr %1, align 8
  %46 = trunc i64 %45 to i16
  switch i16 %46, label %1901 [
    i16 0, label %52
    i16 1, label %53
    i16 2, label %47
    i16 149, label %78
    i16 3, label %82
    i16 19, label %101
    i16 8, label %101
    i16 9, label %101
    i16 11, label %101
    i16 13, label %101
    i16 14, label %101
    i16 6, label %101
    i16 7, label %101
    i16 10, label %193
    i16 12, label %193
    i16 5, label %253
    i16 152, label %254
    i16 15, label %295
    i16 16, label %316
    i16 17, label %316
    i16 18, label %316
    i16 22, label %340
    i16 23, label %341
    i16 24, label %387
    i16 25, label %406
    i16 26, label %409
    i16 28, label %416
    i16 27, label %418
    i16 20, label %435
    i16 21, label %435
    i16 29, label %464
    i16 33, label %464
    i16 30, label %465
    i16 35, label %482
    i16 32, label %510
    i16 34, label %510
    i16 31, label %510
    i16 37, label %510
    i16 38, label %510
    i16 36, label %511
    i16 41, label %512
    i16 42, label %548
    i16 45, label %558
    i16 46, label %558
    i16 51, label %595
    i16 52, label %664
    i16 147, label %692
    i16 53, label %717
    i16 54, label %717
    i16 55, label %729
    i16 132, label %736
    i16 56, label %739
    i16 58, label %917
    i16 59, label %953
    i16 60, label %1013
    i16 61, label %1014
    i16 62, label %1018
    i16 168, label %1022
    i16 169, label %1022
    i16 65, label %1022
    i16 63, label %1022
    i16 66, label %1022
    i16 64, label %1022
    i16 67, label %1022
    i16 68, label %1022
    i16 69, label %1022
    i16 70, label %1022
    i16 71, label %1022
    i16 72, label %1022
    i16 73, label %1022
    i16 74, label %1022
    i16 75, label %1022
    i16 76, label %1022
    i16 83, label %1022
    i16 84, label %1022
    i16 85, label %1022
    i16 86, label %1022
    i16 170, label %1022
    i16 171, label %1022
    i16 87, label %1022
    i16 88, label %1022
    i16 89, label %1022
    i16 91, label %1022
    i16 92, label %1022
    i16 93, label %1022
    i16 94, label %1022
    i16 95, label %1022
    i16 97, label %1022
    i16 98, label %1022
    i16 99, label %1022
    i16 100, label %1022
    i16 101, label %1022
    i16 102, label %1022
    i16 105, label %1022
    i16 106, label %1022
    i16 107, label %1022
    i16 108, label %1022
    i16 109, label %1022
    i16 110, label %1022
    i16 104, label %1022
    i16 103, label %1022
    i16 79, label %1045
    i16 90, label %1045
    i16 96, label %1045
    i16 121, label %1045
    i16 125, label %1045
    i16 126, label %1045
    i16 48, label %1045
    i16 49, label %1045
    i16 47, label %1045
    i16 127, label %1077
    i16 128, label %1077
    i16 80, label %1093
    i16 81, label %1100
    i16 82, label %1107
    i16 111, label %1111
    i16 114, label %1112
    i16 115, label %1112
    i16 77, label %1112
    i16 78, label %1112
    i16 116, label %1112
    i16 113, label %1112
    i16 118, label %1133
    i16 112, label %1140
    i16 117, label %1144
    i16 120, label %1148
    i16 123, label %1152
    i16 124, label %1159
    i16 43, label %1163
    i16 44, label %1167
    i16 129, label %1171
    i16 131, label %1175
    i16 130, label %1175
    i16 142, label %1242
    i16 143, label %1275
    i16 133, label %1308
    i16 137, label %1329
    i16 185, label %1362
    i16 135, label %1372
    i16 136, label %1386
    i16 138, label %1390
    i16 134, label %1460
    i16 140, label %1485
    i16 139, label %1507
    i16 50, label %1526
    i16 141, label %1536
    i16 150, label %1555
    i16 148, label %1562
    i16 144, label %1569
    i16 145, label %1570
    i16 146, label %1571
    i16 151, label %1581
    i16 57, label %1591
    i16 167, label %1601
    i16 153, label %1611
    i16 154, label %1650
    i16 155, label %1653
    i16 156, label %1777
    i16 158, label %1780
    i16 159, label %1781
    i16 160, label %1782
    i16 161, label %1783
    i16 162, label %1790
    i16 157, label %1805
    i16 163, label %1808
    i16 164, label %1809
    i16 165, label %1813
    i16 166, label %1817
    i16 172, label %1821
    i16 173, label %1828
    i16 174, label %1835
    i16 175, label %1839
    i16 176, label %1843
    i16 177, label %1847
    i16 178, label %1851
    i16 179, label %1858
    i16 180, label %1865
    i16 4, label %1872
    i16 181, label %1873
    i16 182, label %1880
    i16 183, label %1887
    i16 184, label %1894
  ]

47:                                               ; preds = %44
  %48 = icmp ne ptr %1, null
  %49 = load ptr, ptr @global_trees, align 16
  %50 = icmp ne ptr %49, %1
  %51 = select i1 %48, i1 %50, i1 false
  br i1 %51, label %54, label %1902

52:                                               ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.5) #17
  br label %1902

53:                                               ; preds = %44
  tail call void @pp_base_tree_identifier(ptr noundef %0, ptr noundef %1) #17
  br label %1902

54:                                               ; preds = %47, %73
  %55 = phi ptr [ %66, %73 ], [ %1, %47 ]
  %56 = getelementptr inbounds %struct.tree_list, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !46
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %57, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  br label %61

61:                                               ; preds = %59, %54
  %62 = getelementptr inbounds %struct.tree_list, ptr %55, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !46
  %64 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %63, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  %65 = getelementptr inbounds %struct.tree_common, ptr %55, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !46
  %67 = icmp eq ptr %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %61
  %69 = load i64, ptr %66, align 8
  %70 = and i64 %69, 65535
  %71 = icmp eq i64 %70, 2
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #17
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  br label %73

73:                                               ; preds = %72, %68, %61
  %74 = icmp ne ptr %66, null
  %75 = load ptr, ptr @global_trees, align 16
  %76 = icmp ne ptr %66, %75
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %54, label %1902, !llvm.loop !66

78:                                               ; preds = %44
  %79 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !46
  %81 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %80, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %1902

82:                                               ; preds = %44
  %83 = getelementptr inbounds %struct.tree_vec, ptr %1, i64 0, i32 1
  %84 = load i32, ptr %83, align 8, !tbaa !46
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %1902

86:                                               ; preds = %82
  %87 = zext nneg i32 %84 to i64
  %88 = add nsw i64 %87, -1
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %86, %90
  %91 = phi i64 [ %95, %90 ], [ 0, %86 ]
  %92 = getelementptr inbounds %struct.tree_vec, ptr %1, i64 0, i32 2, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !46
  %94 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %93, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #17
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %95 = add nuw i64 %91, 1
  %96 = icmp eq i64 %95, %88
  br i1 %96, label %97, label %90, !llvm.loop !67

97:                                               ; preds = %90, %86
  %98 = getelementptr inbounds %struct.tree_vec, ptr %1, i64 0, i32 2, i64 %88
  %99 = load ptr, ptr %98, align 8, !tbaa !46
  %100 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %99, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %1902

101:                                              ; preds = %44, %44, %44, %44, %44, %44, %44, %44
  %102 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %103 = load i32, ptr %102, align 4
  %104 = and i64 %45, 1048576
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = and i64 %45, 524288
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = and i32 %103, 8192
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %109, %106, %101
  %113 = phi ptr [ @.str.6, %101 ], [ @.str.7, %106 ], [ @.str.8, %109 ]
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %113) #17
  br label %114

114:                                              ; preds = %112, %109
  %115 = load i64, ptr %1, align 8
  %116 = icmp ult i64 %115, 72057594037927936
  br i1 %116, label %126, label %117

117:                                              ; preds = %114
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.9) #17
  %118 = load ptr, ptr %0, align 8, !tbaa !58
  %119 = getelementptr inbounds %struct.output_buffer, ptr %118, i64 0, i32 6
  %120 = load i64, ptr %1, align 8
  %121 = lshr i64 %120, 56
  %122 = trunc i64 %121 to i32
  %123 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %119, ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %122)
  %124 = load ptr, ptr %0, align 8, !tbaa !58
  %125 = getelementptr inbounds %struct.output_buffer, ptr %124, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %125) #17
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.11) #17
  br label %126

126:                                              ; preds = %117, %114
  %127 = load i64, ptr %1, align 8
  %128 = trunc i64 %127 to i16
  %129 = and i64 %127, 65535
  %130 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %129
  %131 = load i32, ptr %130, align 4, !tbaa !50
  switch i32 %131, label %1902 [
    i32 3, label %132
    i32 2, label %138
  ]

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !46
  %135 = icmp eq ptr %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %132
  tail call fastcc void @dump_decl_name(ptr noundef %0, ptr noundef %1, i32 noundef %3)
  br label %1902

137:                                              ; preds = %132
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.12) #17
  br label %1902

138:                                              ; preds = %126
  %139 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 12
  %140 = load ptr, ptr %139, align 8, !tbaa !46
  %141 = icmp eq ptr %140, null
  br i1 %141, label %152, label %142

142:                                              ; preds = %138
  %143 = load i64, ptr %140, align 8
  %144 = trunc i64 %143 to i16
  switch i16 %144, label %151 [
    i16 1, label %145
    i16 35, label %146
  ]

145:                                              ; preds = %142
  tail call void @pp_base_tree_identifier(ptr noundef %0, ptr noundef nonnull %140) #17
  br label %1902

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.tree_decl_minimal, ptr %140, i64 0, i32 3
  %148 = load ptr, ptr %147, align 8, !tbaa !46
  %149 = icmp eq ptr %148, null
  br i1 %149, label %151, label %150

150:                                              ; preds = %146
  tail call fastcc void @dump_decl_name(ptr noundef %0, ptr noundef nonnull %140, i32 noundef %3)
  br label %1902

151:                                              ; preds = %142, %146
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.13) #17
  br label %1902

152:                                              ; preds = %138
  switch i16 %128, label %192 [
    i16 14, label %153
    i16 8, label %157
    i16 13, label %168
    i16 9, label %172
    i16 11, label %180
  ]

153:                                              ; preds = %152
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.14) #17
  %154 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !46
  %156 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %155, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %1902

157:                                              ; preds = %152
  %158 = and i64 %127, 2097152
  %159 = icmp eq i64 %158, 0
  %160 = select i1 %159, ptr @.str.16, ptr @.str.15
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %160) #17
  %161 = load ptr, ptr %0, align 8, !tbaa !58
  %162 = getelementptr inbounds %struct.output_buffer, ptr %161, i64 0, i32 6
  %163 = load i32, ptr %102, align 4
  %164 = and i32 %163, 1023
  %165 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %162, ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %164)
  %166 = load ptr, ptr %0, align 8, !tbaa !58
  %167 = getelementptr inbounds %struct.output_buffer, ptr %166, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %167) #17
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.17) #17
  br label %1902

168:                                              ; preds = %152
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.18) #17
  %169 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %170 = load ptr, ptr %169, align 8, !tbaa !46
  %171 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %170, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %1902

172:                                              ; preds = %152
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.19) #17
  %173 = load ptr, ptr %0, align 8, !tbaa !58
  %174 = getelementptr inbounds %struct.output_buffer, ptr %173, i64 0, i32 6
  %175 = load i32, ptr %102, align 4
  %176 = and i32 %175, 1023
  %177 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %174, ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %176)
  %178 = load ptr, ptr %0, align 8, !tbaa !58
  %179 = getelementptr inbounds %struct.output_buffer, ptr %178, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %179) #17
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.17) #17
  br label %1902

180:                                              ; preds = %152
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.20) #17
  %181 = load i64, ptr %1, align 8
  %182 = and i64 %181, 2147483648
  %183 = icmp eq i64 %182, 0
  %184 = select i1 %183, ptr @.str.22, ptr @.str.21
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %184) #17
  %185 = load ptr, ptr %0, align 8, !tbaa !58
  %186 = getelementptr inbounds %struct.output_buffer, ptr %185, i64 0, i32 6
  %187 = load i32, ptr %102, align 4
  %188 = and i32 %187, 1023
  %189 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %186, ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %188)
  %190 = load ptr, ptr %0, align 8, !tbaa !58
  %191 = getelementptr inbounds %struct.output_buffer, ptr %190, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %191) #17
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.17) #17
  br label %1902

192:                                              ; preds = %152
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.13) #17
  br label %1902

193:                                              ; preds = %44, %44
  %194 = and i64 %45, 65535
  %195 = icmp eq i64 %194, 10
  %196 = select i1 %195, ptr @.str.23, ptr @.str.24
  %197 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %198 = load ptr, ptr %197, align 8, !tbaa !46
  %199 = icmp eq ptr %198, null
  br i1 %199, label %200, label %201

200:                                              ; preds = %193
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %196) #17
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.25) #17
  br label %1902

201:                                              ; preds = %193
  %202 = load i64, ptr %198, align 8
  %203 = and i64 %202, 65535
  %204 = icmp eq i64 %203, 20
  br i1 %204, label %205, label %221

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.tree_common, ptr %198, i64 0, i32 2
  %207 = load ptr, ptr %206, align 8, !tbaa !46
  %208 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %207, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #17
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %196) #17
  %209 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 12
  %210 = load ptr, ptr %209, align 8, !tbaa !46
  %211 = icmp eq ptr %210, null
  br i1 %211, label %217, label %212

212:                                              ; preds = %205
  %213 = getelementptr inbounds %struct.tree_decl_minimal, ptr %210, i64 0, i32 3
  %214 = load ptr, ptr %213, align 8, !tbaa !46
  %215 = icmp eq ptr %214, null
  br i1 %215, label %217, label %216

216:                                              ; preds = %212
  tail call fastcc void @dump_decl_name(ptr noundef %0, ptr noundef nonnull %210, i32 noundef %3)
  br label %220

217:                                              ; preds = %212, %205
  %218 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 5
  %219 = load i32, ptr %218, align 8, !tbaa !46
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %219) #17
  br label %220

220:                                              ; preds = %217, %216
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #17
  tail call fastcc void @dump_function_declaration(ptr noundef %0, ptr noundef nonnull %198, i32 noundef %2, i32 noundef %3)
  br label %1902

221:                                              ; preds = %201
  %222 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %223 = load i32, ptr %222, align 4
  %224 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %198, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %196) #17
  %225 = and i64 %45, 1048576
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %221
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.27) #17
  br label %228

228:                                              ; preds = %227, %221
  %229 = and i64 %45, 524288
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %232, label %231

231:                                              ; preds = %228
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.28) #17
  br label %232

232:                                              ; preds = %231, %228
  %233 = and i32 %223, 8192
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %236, label %235

235:                                              ; preds = %232
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.29) #17
  br label %236

236:                                              ; preds = %235, %232
  %237 = load i64, ptr %1, align 8
  %238 = icmp ult i64 %237, 72057594037927936
  br i1 %238, label %248, label %239

239:                                              ; preds = %236
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.30) #17
  %240 = load ptr, ptr %0, align 8, !tbaa !58
  %241 = getelementptr inbounds %struct.output_buffer, ptr %240, i64 0, i32 6
  %242 = load i64, ptr %1, align 8
  %243 = lshr i64 %242, 56
  %244 = trunc i64 %243 to i32
  %245 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %241, ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %244)
  %246 = load ptr, ptr %0, align 8, !tbaa !58
  %247 = getelementptr inbounds %struct.output_buffer, ptr %246, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %247) #17
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.17) #17
  br label %248

248:                                              ; preds = %239, %236
  %249 = load i64, ptr %1, align 8
  %250 = and i64 %249, 67108864
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %1902, label %252

252:                                              ; preds = %248
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.31) #17
  br label %1902

253:                                              ; preds = %44
  tail call fastcc void @do_niy(ptr noundef %0, ptr noundef %1)
  br label %1902

254:                                              ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.33) #17
  %255 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %256 = load ptr, ptr %255, align 8, !tbaa !46
  %257 = icmp eq ptr %256, null
  br i1 %257, label %260, label %258

258:                                              ; preds = %254
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.32) #17
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.35) #17
  %259 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %256, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %260

260:                                              ; preds = %258, %254
  %261 = phi ptr [ @.str.34, %258 ], [ @.str.32, %254 ]
  %262 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %263 = load ptr, ptr %262, align 8, !tbaa !46
  %264 = icmp eq ptr %263, null
  br i1 %264, label %267, label %265

265:                                              ; preds = %260
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %261) #17
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.36) #17
  %266 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %263, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %267

267:                                              ; preds = %265, %260
  %268 = phi ptr [ @.str.34, %265 ], [ %261, %260 ]
  %269 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %270 = load ptr, ptr %269, align 8, !tbaa !46
  %271 = icmp eq ptr %270, null
  br i1 %271, label %274, label %272

272:                                              ; preds = %267
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %268) #17
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.37) #17
  %273 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %270, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %274

274:                                              ; preds = %272, %267
  %275 = phi ptr [ @.str.34, %272 ], [ %268, %267 ]
  %276 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 2
  %277 = load ptr, ptr %276, align 8, !tbaa !46
  %278 = icmp eq ptr %277, null
  br i1 %278, label %281, label %279

279:                                              ; preds = %274
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %275) #17
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.38) #17
  %280 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %277, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %281

281:                                              ; preds = %279, %274
  %282 = phi ptr [ @.str.34, %279 ], [ %275, %274 ]
  %283 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 1
  %284 = load ptr, ptr %283, align 8, !tbaa !46
  %285 = icmp eq ptr %284, null
  br i1 %285, label %288, label %286

286:                                              ; preds = %281
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %282) #17
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.39) #17
  %287 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %284, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %288

288:                                              ; preds = %286, %281
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.3) #17
  %289 = and i32 %3, 8
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %1902, label %291

291:                                              ; preds = %288
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.40) #17
  %292 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 2
  %293 = load ptr, ptr %292, align 8, !tbaa !46
  %294 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %293, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.41) #17
  br label %1902

295:                                              ; preds = %44, %295
  %296 = phi ptr [ %298, %295 ], [ %1, %44 ]
  %297 = getelementptr inbounds %struct.tree_common, ptr %296, i64 0, i32 2
  %298 = load ptr, ptr %297, align 8, !tbaa !46
  %299 = load i64, ptr %298, align 8
  %300 = and i64 %299, 65535
  %301 = icmp eq i64 %300, 15
  br i1 %301, label %295, label %302, !llvm.loop !68

302:                                              ; preds = %295
  %303 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %298, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  %304 = load i64, ptr %1, align 8
  %305 = and i64 %304, 65535
  %306 = icmp eq i64 %305, 15
  br i1 %306, label %307, label %1902

307:                                              ; preds = %302, %307
  %308 = phi ptr [ %312, %307 ], [ %1, %302 ]
  %309 = getelementptr inbounds %struct.tree_type, ptr %308, i64 0, i32 1
  %310 = load ptr, ptr %309, align 8, !tbaa !46
  tail call fastcc void @dump_array_domain(ptr noundef %0, ptr noundef %310, i32 noundef %2, i32 noundef %3)
  %311 = getelementptr inbounds %struct.tree_common, ptr %308, i64 0, i32 2
  %312 = load ptr, ptr %311, align 8, !tbaa !46
  %313 = load i64, ptr %312, align 8
  %314 = and i64 %313, 65535
  %315 = icmp eq i64 %314, 15
  br i1 %315, label %307, label %1902, !llvm.loop !69

316:                                              ; preds = %44, %44, %44
  %317 = and i64 %45, 1048576
  %318 = icmp eq i64 %317, 0
  br i1 %318, label %320, label %319

319:                                              ; preds = %316
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.6) #17
  br label %320

320:                                              ; preds = %319, %316
  %321 = and i64 %45, 524288
  %322 = icmp eq i64 %321, 0
  br i1 %322, label %324, label %323

323:                                              ; preds = %320
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.7) #17
  br label %324

324:                                              ; preds = %323, %320
  %325 = load i64, ptr %1, align 8
  %326 = trunc i64 %325 to i16
  switch i16 %326, label %330 [
    i16 16, label %328
    i16 17, label %327
  ]

327:                                              ; preds = %324
  br label %328

328:                                              ; preds = %324, %327
  %329 = phi ptr [ @.str.43, %327 ], [ @.str.42, %324 ]
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %329) #17
  br label %330

330:                                              ; preds = %328, %324
  %331 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 12
  %332 = load ptr, ptr %331, align 8, !tbaa !46
  %333 = icmp eq ptr %332, null
  br i1 %333, label %336, label %334

334:                                              ; preds = %330
  %335 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %332, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %1902

336:                                              ; preds = %330
  %337 = and i32 %3, 2
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %1902

339:                                              ; preds = %336
  tail call fastcc void @print_struct_decl(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %1902

340:                                              ; preds = %44
  tail call fastcc void @do_niy(ptr noundef %0, ptr noundef %1)
  br label %1902

341:                                              ; preds = %44
  %342 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %343 = load ptr, ptr %342, align 8, !tbaa !46
  %344 = load i64, ptr %343, align 8
  %345 = and i64 %344, 65535
  %346 = icmp eq i64 %345, 10
  br i1 %346, label %347, label %355

347:                                              ; preds = %341
  %348 = load ptr, ptr %0, align 8, !tbaa !58
  %349 = getelementptr inbounds %struct.output_buffer, ptr %348, i64 0, i32 6
  %350 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1
  %351 = load i64, ptr %350, align 8, !tbaa !46
  %352 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %349, ptr noundef nonnull dereferenceable(1) @.str.44, i64 noundef %351)
  %353 = load ptr, ptr %0, align 8, !tbaa !58
  %354 = getelementptr inbounds %struct.output_buffer, ptr %353, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %354) #17
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.45) #17
  br label %1902

355:                                              ; preds = %341
  %356 = tail call i32 @host_integerp(ptr noundef %1, i32 noundef 0) #17
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %379

358:                                              ; preds = %355
  %359 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1
  %360 = load i64, ptr %359, align 8, !tbaa !46
  %361 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1, i32 1
  %362 = load i64, ptr %361, align 8, !tbaa !46
  %363 = tail call i32 @tree_int_cst_sgn(ptr noundef %1) #17
  %364 = icmp slt i32 %363, 0
  br i1 %364, label %365, label %371

365:                                              ; preds = %358
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 45) #17
  %366 = xor i64 %362, -1
  %367 = icmp eq i64 %360, 0
  %368 = zext i1 %367 to i64
  %369 = add nsw i64 %368, %366
  %370 = sub i64 0, %360
  br label %371

371:                                              ; preds = %365, %358
  %372 = phi i64 [ %370, %365 ], [ %360, %358 ]
  %373 = phi i64 [ %369, %365 ], [ %362, %358 ]
  %374 = load ptr, ptr %0, align 8, !tbaa !58
  %375 = getelementptr inbounds %struct.output_buffer, ptr %374, i64 0, i32 6
  %376 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %375, ptr noundef nonnull dereferenceable(1) @.str.46, i64 noundef %373, i64 noundef %372)
  %377 = load ptr, ptr %0, align 8, !tbaa !58
  %378 = getelementptr inbounds %struct.output_buffer, ptr %377, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %378) #17
  br label %1902

379:                                              ; preds = %355
  %380 = load ptr, ptr %0, align 8, !tbaa !58
  %381 = getelementptr inbounds %struct.output_buffer, ptr %380, i64 0, i32 6
  %382 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1
  %383 = load i64, ptr %382, align 8, !tbaa !46
  %384 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %381, ptr noundef nonnull dereferenceable(1) @.str.44, i64 noundef %383)
  %385 = load ptr, ptr %0, align 8, !tbaa !58
  %386 = getelementptr inbounds %struct.output_buffer, ptr %385, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %386) #17
  br label %1902

387:                                              ; preds = %44
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #17
  %388 = and i64 %45, 134217728
  %389 = icmp eq i64 %388, 0
  br i1 %389, label %391, label %390

390:                                              ; preds = %387
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.47) #17
  br label %391

391:                                              ; preds = %390, %387
  %392 = getelementptr inbounds %struct.tree_real_cst, ptr %1, i64 0, i32 1
  %393 = load ptr, ptr %392, align 8, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %393, i64 32, i1 false), !tbaa.struct !70
  %394 = call zeroext i8 @real_isinf(ptr noundef nonnull %6) #17
  %395 = icmp eq i8 %394, 0
  br i1 %395, label %400, label %396

396:                                              ; preds = %391
  %397 = call zeroext i8 @real_isneg(ptr noundef nonnull %6) #17
  %398 = icmp eq i8 %397, 0
  %399 = select i1 %398, ptr @.str.49, ptr @.str.48
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %399) #17
  br label %405

400:                                              ; preds = %391
  %401 = call zeroext i8 @real_isnan(ptr noundef nonnull %6) #17
  %402 = icmp eq i8 %401, 0
  br i1 %402, label %404, label %403

403:                                              ; preds = %400
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.50) #17
  br label %405

404:                                              ; preds = %400
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %7) #17
  call void @real_to_decimal(ptr noundef nonnull %7, ptr noundef nonnull %6, i64 noundef 100, i64 noundef 0, i32 noundef 1) #17
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %7) #17
  br label %405

405:                                              ; preds = %403, %404, %396
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #17
  br label %1902

406:                                              ; preds = %44
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %8) #17
  %407 = getelementptr inbounds %struct.tree_fixed_cst, ptr %1, i64 0, i32 1
  %408 = load ptr, ptr %407, align 8, !tbaa !46
  call void @fixed_to_decimal(ptr noundef nonnull %8, ptr noundef %408, i64 noundef 100) #17
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %8) #17
  br label %1902

409:                                              ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.51) #17
  %410 = getelementptr inbounds %struct.tree_complex, ptr %1, i64 0, i32 1
  %411 = load ptr, ptr %410, align 8, !tbaa !46
  %412 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %411, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.34) #17
  %413 = getelementptr inbounds %struct.tree_complex, ptr %1, i64 0, i32 2
  %414 = load ptr, ptr %413, align 8, !tbaa !46
  %415 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %414, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.52) #17
  br label %1902

416:                                              ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.53) #17
  %417 = getelementptr inbounds %struct.tree_string, ptr %1, i64 0, i32 2
  tail call fastcc void @pretty_print_string(ptr noundef %0, ptr noundef nonnull %417)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.53) #17
  br label %1902

418:                                              ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.54) #17
  %419 = getelementptr inbounds %struct.tree_vector, ptr %1, i64 0, i32 1
  %420 = load ptr, ptr %419, align 8, !tbaa !46
  %421 = icmp eq ptr %420, null
  br i1 %421, label %434, label %422

422:                                              ; preds = %418, %431
  %423 = phi ptr [ %432, %431 ], [ %420, %418 ]
  %424 = getelementptr inbounds %struct.tree_list, ptr %423, i64 0, i32 2
  %425 = load ptr, ptr %424, align 8, !tbaa !46
  %426 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %425, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  %427 = getelementptr inbounds %struct.tree_common, ptr %423, i64 0, i32 1
  %428 = load ptr, ptr %427, align 8, !tbaa !46
  %429 = icmp eq ptr %428, null
  br i1 %429, label %431, label %430

430:                                              ; preds = %422
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.34) #17
  br label %431

431:                                              ; preds = %422, %430
  %432 = load ptr, ptr %427, align 8, !tbaa !46
  %433 = icmp eq ptr %432, null
  br i1 %433, label %434, label %422, !llvm.loop !71

434:                                              ; preds = %431, %418
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.55) #17
  br label %1902

435:                                              ; preds = %44, %44
  %436 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %437 = load ptr, ptr %436, align 8, !tbaa !46
  %438 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %437, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %439 = load i64, ptr %1, align 8
  %440 = and i64 %439, 65535
  %441 = icmp eq i64 %440, 21
  br i1 %441, label %442, label %451

442:                                              ; preds = %435
  %443 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 14
  %444 = load ptr, ptr %443, align 8, !tbaa !46
  %445 = icmp eq ptr %444, null
  br i1 %445, label %449, label %446

446:                                              ; preds = %442
  %447 = getelementptr inbounds %struct.tree_type, ptr %444, i64 0, i32 12
  %448 = load ptr, ptr %447, align 8, !tbaa !46
  tail call fastcc void @dump_decl_name(ptr noundef %0, ptr noundef %448, i32 noundef %3)
  br label %450

449:                                              ; preds = %442
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.56) #17
  br label %450

450:                                              ; preds = %449, %446
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.57) #17
  br label %451

451:                                              ; preds = %450, %435
  %452 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 12
  %453 = load ptr, ptr %452, align 8, !tbaa !46
  %454 = icmp eq ptr %453, null
  br i1 %454, label %460, label %455

455:                                              ; preds = %451
  %456 = getelementptr inbounds %struct.tree_decl_minimal, ptr %453, i64 0, i32 3
  %457 = load ptr, ptr %456, align 8, !tbaa !46
  %458 = icmp eq ptr %457, null
  br i1 %458, label %460, label %459

459:                                              ; preds = %455
  tail call fastcc void @dump_decl_name(ptr noundef %0, ptr noundef nonnull %453, i32 noundef %3)
  br label %463

460:                                              ; preds = %455, %451
  %461 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 5
  %462 = load i32, ptr %461, align 8, !tbaa !46
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %462) #17
  br label %463

463:                                              ; preds = %460, %459
  tail call fastcc void @dump_function_declaration(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  br label %1902

464:                                              ; preds = %44, %44
  tail call fastcc void @dump_decl_name(ptr noundef %0, ptr noundef %1, i32 noundef %3)
  br label %1902

465:                                              ; preds = %44
  %466 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %467 = load ptr, ptr %466, align 8, !tbaa !46
  %468 = icmp eq ptr %467, null
  br i1 %468, label %470, label %469

469:                                              ; preds = %465
  tail call fastcc void @dump_decl_name(ptr noundef %0, ptr noundef %1, i32 noundef %3)
  br label %1902

470:                                              ; preds = %465
  %471 = getelementptr inbounds %struct.tree_label_decl, ptr %1, i64 0, i32 1
  %472 = load i32, ptr %471, align 8, !tbaa !46
  %473 = icmp eq i32 %472, -1
  br i1 %473, label %475, label %474

474:                                              ; preds = %470
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %0, ptr noundef nonnull @.str.58, i32 noundef %472) #17
  br label %1902

475:                                              ; preds = %470
  %476 = and i32 %3, 1048576
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %479, label %478

478:                                              ; preds = %475
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.59) #17
  br label %1902

479:                                              ; preds = %475
  %480 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %481 = load i32, ptr %480, align 4, !tbaa !46
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %0, ptr noundef nonnull @.str.60, i32 noundef %481) #17
  br label %1902

482:                                              ; preds = %44
  %483 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 1
  %484 = load i32, ptr %483, align 8, !tbaa !46
  %485 = icmp ult i32 %484, 2
  br i1 %485, label %1902, label %486

486:                                              ; preds = %482
  %487 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %488 = load ptr, ptr %487, align 8, !tbaa !46
  %489 = icmp eq ptr %488, null
  br i1 %489, label %491, label %490

490:                                              ; preds = %486
  tail call fastcc void @dump_decl_name(ptr noundef %0, ptr noundef %1, i32 noundef %3)
  br label %1902

491:                                              ; preds = %486
  %492 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %493 = load ptr, ptr %492, align 8, !tbaa !46
  %494 = load i64, ptr %493, align 8
  %495 = and i64 %494, 65534
  %496 = icmp eq i64 %495, 16
  br i1 %496, label %497, label %504

497:                                              ; preds = %491
  %498 = getelementptr inbounds %struct.tree_type, ptr %493, i64 0, i32 14
  %499 = load ptr, ptr %498, align 8, !tbaa !46
  %500 = icmp eq ptr %499, null
  br i1 %500, label %504, label %501

501:                                              ; preds = %497
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.61) #17
  %502 = load ptr, ptr %492, align 8, !tbaa !46
  %503 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %502, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %1902

504:                                              ; preds = %491, %497
  %505 = and i64 %494, 65535
  %506 = icmp eq i64 %505, 17
  %507 = select i1 %506, ptr @.str.62, ptr @.str.42
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %507) #17
  %508 = load ptr, ptr %492, align 8, !tbaa !46
  %509 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %508, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %1902

510:                                              ; preds = %44, %44, %44, %44, %44
  tail call fastcc void @dump_decl_name(ptr noundef %0, ptr noundef %1, i32 noundef %3)
  br label %1902

511:                                              ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.63) #17
  br label %1902

512:                                              ; preds = %44
  %513 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %514 = load ptr, ptr %513, align 8, !tbaa !46
  %515 = icmp eq ptr %514, null
  br i1 %515, label %523, label %516

516:                                              ; preds = %512
  %517 = load i64, ptr %514, align 8
  %518 = and i64 %517, 65535
  %519 = icmp eq i64 %518, 47
  br i1 %519, label %520, label %523

520:                                              ; preds = %516
  %521 = getelementptr inbounds %struct.tree_exp, ptr %514, i64 0, i32 3
  %522 = load ptr, ptr %521, align 8, !tbaa !46
  br label %523

523:                                              ; preds = %520, %516, %512
  %524 = phi ptr [ @.str.65, %520 ], [ @.str.64, %516 ], [ @.str.64, %512 ]
  %525 = phi ptr [ %522, %520 ], [ %514, %516 ], [ null, %512 ]
  %526 = tail call i32 @op_prio(ptr noundef %525), !range !72
  %527 = tail call i32 @op_prio(ptr noundef %1), !range !72
  %528 = icmp ult i32 %526, %527
  br i1 %528, label %529, label %530

529:                                              ; preds = %523
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #17
  br label %530

530:                                              ; preds = %529, %523
  %531 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %525, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  %532 = tail call i32 @op_prio(ptr noundef %525), !range !72
  %533 = tail call i32 @op_prio(ptr noundef %1), !range !72
  %534 = icmp ult i32 %532, %533
  br i1 %534, label %535, label %536

535:                                              ; preds = %530
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #17
  br label %536

536:                                              ; preds = %535, %530
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %524) #17
  %537 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %538 = load ptr, ptr %537, align 8, !tbaa !46
  %539 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %538, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  %540 = tail call ptr @component_ref_field_offset(ptr noundef %1) #17
  %541 = icmp eq ptr %540, null
  br i1 %541, label %1902, label %542

542:                                              ; preds = %536
  %543 = load i64, ptr %540, align 8
  %544 = and i64 %543, 65535
  %545 = icmp eq i64 %544, 23
  br i1 %545, label %1902, label %546

546:                                              ; preds = %542
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.66) #17
  %547 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %540, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #17
  br label %1902

548:                                              ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.67) #17
  %549 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %550 = load ptr, ptr %549, align 8, !tbaa !46
  %551 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %550, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.34) #17
  %552 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %553 = load ptr, ptr %552, align 8, !tbaa !46
  %554 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %553, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.34) #17
  %555 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %556 = load ptr, ptr %555, align 8, !tbaa !46
  %557 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %556, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.17) #17
  br label %1902

558:                                              ; preds = %44, %44
  %559 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %560 = load ptr, ptr %559, align 8, !tbaa !46
  %561 = tail call i32 @op_prio(ptr noundef %560), !range !72
  %562 = tail call i32 @op_prio(ptr noundef %1), !range !72
  %563 = icmp ult i32 %561, %562
  br i1 %563, label %564, label %565

564:                                              ; preds = %558
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #17
  br label %565

565:                                              ; preds = %564, %558
  %566 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %560, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  %567 = tail call i32 @op_prio(ptr noundef %560), !range !72
  %568 = tail call i32 @op_prio(ptr noundef %1), !range !72
  %569 = icmp ult i32 %567, %568
  br i1 %569, label %570, label %571

570:                                              ; preds = %565
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #17
  br label %571

571:                                              ; preds = %570, %565
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 91) #17
  %572 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %573 = load ptr, ptr %572, align 8, !tbaa !46
  %574 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %573, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  %575 = load i64, ptr %1, align 8
  %576 = and i64 %575, 65535
  %577 = icmp eq i64 %576, 46
  br i1 %577, label %578, label %579

578:                                              ; preds = %571
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.68) #17
  br label %579

579:                                              ; preds = %578, %571
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 93) #17
  %580 = tail call ptr @array_ref_low_bound(ptr noundef %1) #17
  %581 = tail call ptr @array_ref_element_size(ptr noundef %1) #17
  %582 = tail call i32 @integer_zerop(ptr noundef %580) #17
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %592, label %584

584:                                              ; preds = %579
  %585 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %586 = load ptr, ptr %585, align 8, !tbaa !46
  %587 = icmp eq ptr %586, null
  br i1 %587, label %588, label %592

588:                                              ; preds = %584
  %589 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 2
  %590 = load ptr, ptr %589, align 8, !tbaa !46
  %591 = icmp eq ptr %590, null
  br i1 %591, label %1902, label %592

592:                                              ; preds = %588, %584, %579
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.69) #17
  %593 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %580, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.70) #17
  %594 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %581, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #17
  br label %1902

595:                                              ; preds = %44
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #17
  %596 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %597 = load ptr, ptr %596, align 8, !tbaa !46
  %598 = load i64, ptr %597, align 8
  %599 = and i64 %598, 65534
  %600 = icmp eq i64 %599, 16
  %601 = getelementptr inbounds %struct.tree_constructor, ptr %1, i64 0, i32 1
  br label %602

602:                                              ; preds = %661, %595
  %603 = phi i64 [ 0, %595 ], [ %662, %661 ]
  %604 = phi ptr [ undef, %595 ], [ %620, %661 ]
  %605 = phi ptr [ undef, %595 ], [ %641, %661 ]
  %606 = load ptr, ptr %601, align 8, !tbaa !46
  %607 = icmp eq ptr %606, null
  br i1 %607, label %610, label %608

608:                                              ; preds = %602
  %609 = load i32, ptr %606, align 8, !tbaa !73
  br label %610

610:                                              ; preds = %602, %608
  %611 = phi i32 [ %609, %608 ], [ 0, %602 ]
  %612 = zext i32 %611 to i64
  %613 = icmp ult i64 %603, %612
  br i1 %613, label %614, label %619

614:                                              ; preds = %610
  %615 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %606, i64 0, i32 2, i64 %603
  %616 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %606, i64 0, i32 2, i64 %603, i32 1
  %617 = load ptr, ptr %616, align 8, !tbaa !75
  %618 = load ptr, ptr %615, align 8, !tbaa !77
  br label %619

619:                                              ; preds = %610, %614
  %620 = phi ptr [ %604, %610 ], [ %618, %614 ]
  %621 = phi ptr [ %605, %610 ], [ %617, %614 ]
  br i1 %613, label %622, label %663

622:                                              ; preds = %619
  %623 = icmp ne ptr %620, null
  %624 = and i1 %600, %623
  br i1 %624, label %625, label %627

625:                                              ; preds = %622
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 46) #17
  %626 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %620, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.71) #17
  br label %627

627:                                              ; preds = %625, %622
  %628 = icmp eq ptr %621, null
  br i1 %628, label %640, label %629

629:                                              ; preds = %627
  %630 = load i64, ptr %621, align 8
  %631 = and i64 %630, 65535
  %632 = icmp eq i64 %631, 121
  br i1 %632, label %633, label %640

633:                                              ; preds = %629
  %634 = getelementptr inbounds %struct.tree_exp, ptr %621, i64 0, i32 3
  %635 = load ptr, ptr %634, align 8, !tbaa !46
  %636 = load i64, ptr %635, align 8
  %637 = and i64 %636, 65535
  %638 = icmp eq i64 %637, 29
  %639 = select i1 %638, ptr %635, ptr %621
  br label %640

640:                                              ; preds = %633, %629, %627
  %641 = phi ptr [ %621, %629 ], [ null, %627 ], [ %639, %633 ]
  %642 = icmp eq ptr %641, null
  br i1 %642, label %648, label %643

643:                                              ; preds = %640
  %644 = load i64, ptr %641, align 8
  %645 = and i64 %644, 65535
  %646 = icmp eq i64 %645, 29
  br i1 %646, label %647, label %648

647:                                              ; preds = %643
  tail call fastcc void @dump_decl_name(ptr noundef %0, ptr noundef nonnull %641, i32 noundef %3)
  br label %650

648:                                              ; preds = %643, %640
  %649 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %641, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %650

650:                                              ; preds = %648, %647
  %651 = load ptr, ptr %601, align 8, !tbaa !46
  %652 = icmp eq ptr %651, null
  br i1 %652, label %655, label %653

653:                                              ; preds = %650
  %654 = load i32, ptr %651, align 8, !tbaa !73
  br label %655

655:                                              ; preds = %650, %653
  %656 = phi i32 [ %654, %653 ], [ 0, %650 ]
  %657 = add i32 %656, -1
  %658 = zext i32 %657 to i64
  %659 = icmp eq i64 %603, %658
  br i1 %659, label %661, label %660

660:                                              ; preds = %655
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #17
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  br label %661

661:                                              ; preds = %655, %660
  %662 = add nuw nsw i64 %603, 1
  br label %602, !llvm.loop !78

663:                                              ; preds = %619
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #17
  br label %1902

664:                                              ; preds = %44
  %665 = and i32 %3, 2
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %668, label %667

667:                                              ; preds = %664
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.72) #17
  br label %1902

668:                                              ; preds = %664
  %669 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %670 = load ptr, ptr %669, align 8, !tbaa !46
  %671 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %670, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 1)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #17
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %672 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %673 = load ptr, ptr %672, align 8, !tbaa !35
  %674 = load i64, ptr %673, align 8
  %675 = and i64 %674, 65535
  %676 = icmp eq i64 %675, 52
  br i1 %676, label %677, label %689

677:                                              ; preds = %668, %677
  %678 = phi ptr [ %685, %677 ], [ %673, %668 ]
  %679 = phi ptr [ %684, %677 ], [ %672, %668 ]
  %680 = getelementptr inbounds %struct.tree_exp, ptr %678, i64 0, i32 3
  %681 = load ptr, ptr %680, align 8, !tbaa !46
  %682 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %681, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 1)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #17
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %683 = load ptr, ptr %679, align 8, !tbaa !35
  %684 = getelementptr inbounds %struct.tree_exp, ptr %683, i64 1
  %685 = load ptr, ptr %684, align 8, !tbaa !35
  %686 = load i64, ptr %685, align 8
  %687 = and i64 %686, 65535
  %688 = icmp eq i64 %687, 52
  br i1 %688, label %677, label %689, !llvm.loop !79

689:                                              ; preds = %677, %668
  %690 = phi ptr [ %673, %668 ], [ %685, %677 ]
  %691 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %690, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 1)
  br label %1902

692:                                              ; preds = %44
  %693 = and i32 %3, 2
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %696, label %695

695:                                              ; preds = %692
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.73) #17
  br label %1902

696:                                              ; preds = %692
  %697 = getelementptr inbounds %struct.tree_statement_list, ptr %1, i64 0, i32 1
  %698 = load ptr, ptr %697, align 8, !tbaa !46
  %699 = icmp eq ptr %698, null
  br i1 %699, label %1902, label %700

700:                                              ; preds = %696
  %701 = icmp sgt i32 %2, 0
  br label %702

702:                                              ; preds = %700, %710
  %703 = phi ptr [ %698, %700 ], [ %715, %710 ]
  %704 = phi i1 [ false, %700 ], [ true, %710 ]
  br i1 %704, label %705, label %710

705:                                              ; preds = %702
  tail call void @pp_base_newline(ptr noundef %0) #17
  br i1 %701, label %706, label %710

706:                                              ; preds = %705, %706
  %707 = phi i32 [ %708, %706 ], [ 0, %705 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %708 = add nuw nsw i32 %707, 1
  %709 = icmp eq i32 %708, %2
  br i1 %709, label %710, label %706, !llvm.loop !80

710:                                              ; preds = %706, %705, %702
  %711 = getelementptr inbounds %struct.tree_statement_list_node, ptr %703, i64 0, i32 2
  %712 = load ptr, ptr %711, align 8, !tbaa !81
  %713 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %712, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 1)
  %714 = getelementptr inbounds %struct.tree_statement_list_node, ptr %703, i64 0, i32 1
  %715 = load ptr, ptr %714, align 8, !tbaa !46
  %716 = icmp eq ptr %715, null
  br i1 %716, label %1902, label %702, !llvm.loop !83

717:                                              ; preds = %44, %44
  %718 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %719 = load ptr, ptr %718, align 8, !tbaa !46
  %720 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %719, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 61) #17
  %721 = load i64, ptr %1, align 8
  %722 = and i64 %721, 67174399
  %723 = icmp eq i64 %722, 67108917
  br i1 %723, label %724, label %725

724:                                              ; preds = %717
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.74) #17
  br label %725

725:                                              ; preds = %724, %717
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %726 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %727 = load ptr, ptr %726, align 8, !tbaa !46
  %728 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %727, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %1902

729:                                              ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.75) #17
  %730 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %731 = load ptr, ptr %730, align 8, !tbaa !46
  %732 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %731, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #17
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %733 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %734 = load ptr, ptr %733, align 8, !tbaa !46
  %735 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %734, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 62) #17
  br label %1902

736:                                              ; preds = %44
  %737 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %738 = load ptr, ptr %737, align 8, !tbaa !46
  tail call void @print_declaration(ptr noundef %0, ptr noundef %738, i32 noundef %2, i32 noundef %3)
  br label %1902

739:                                              ; preds = %44
  %740 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %741 = load ptr, ptr %740, align 8, !tbaa !46
  %742 = icmp eq ptr %741, null
  %743 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16
  %744 = icmp eq ptr %741, %743
  %745 = select i1 %742, i1 true, i1 %744
  br i1 %745, label %746, label %907

746:                                              ; preds = %739
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.76) #17
  %747 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %748 = load ptr, ptr %747, align 8, !tbaa !46
  %749 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %748, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #17
  %750 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %751 = load ptr, ptr %750, align 8, !tbaa !46
  %752 = icmp eq ptr %751, null
  br i1 %752, label %818, label %753

753:                                              ; preds = %746
  %754 = load i64, ptr %751, align 8
  %755 = and i64 %754, 65535
  %756 = icmp eq i64 %755, 116
  br i1 %756, label %757, label %768

757:                                              ; preds = %753
  %758 = getelementptr inbounds %struct.tree_common, ptr %751, i64 0, i32 2
  %759 = load ptr, ptr %758, align 8, !tbaa !46
  %760 = load i64, ptr %759, align 8
  %761 = and i64 %760, 65535
  %762 = icmp eq i64 %761, 19
  br i1 %762, label %763, label %768

763:                                              ; preds = %757
  %764 = getelementptr inbounds %struct.tree_exp, ptr %751, i64 0, i32 3
  %765 = load ptr, ptr %764, align 8, !tbaa !46
  %766 = tail call i32 @integer_zerop(ptr noundef %765) #17
  %767 = icmp eq i32 %766, 0
  br i1 %767, label %768, label %773

768:                                              ; preds = %763, %757, %753
  %769 = load ptr, ptr %750, align 8, !tbaa !46
  %770 = load i64, ptr %769, align 8
  %771 = and i64 %770, 65535
  %772 = icmp eq i64 %771, 134
  br i1 %772, label %773, label %818

773:                                              ; preds = %768, %763
  %774 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %775 = load ptr, ptr %774, align 8, !tbaa !46
  %776 = icmp eq ptr %775, null
  br i1 %776, label %818, label %777

777:                                              ; preds = %773
  %778 = load i64, ptr %775, align 8
  %779 = and i64 %778, 65535
  %780 = icmp eq i64 %779, 116
  br i1 %780, label %781, label %792

781:                                              ; preds = %777
  %782 = getelementptr inbounds %struct.tree_common, ptr %775, i64 0, i32 2
  %783 = load ptr, ptr %782, align 8, !tbaa !46
  %784 = load i64, ptr %783, align 8
  %785 = and i64 %784, 65535
  %786 = icmp eq i64 %785, 19
  br i1 %786, label %787, label %792

787:                                              ; preds = %781
  %788 = getelementptr inbounds %struct.tree_exp, ptr %775, i64 0, i32 3
  %789 = load ptr, ptr %788, align 8, !tbaa !46
  %790 = tail call i32 @integer_zerop(ptr noundef %789) #17
  %791 = icmp eq i32 %790, 0
  br i1 %791, label %792, label %797

792:                                              ; preds = %787, %781, %777
  %793 = load ptr, ptr %774, align 8, !tbaa !46
  %794 = load i64, ptr %793, align 8
  %795 = and i64 %794, 65535
  %796 = icmp eq i64 %795, 134
  br i1 %796, label %797, label %818

797:                                              ; preds = %792, %787
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %798 = load ptr, ptr %750, align 8, !tbaa !46
  %799 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %798, i32 noundef 0, i32 noundef %3, i8 noundef zeroext 1)
  %800 = load ptr, ptr %774, align 8, !tbaa !46
  %801 = load i64, ptr %800, align 8
  %802 = and i64 %801, 65535
  %803 = icmp eq i64 %802, 116
  br i1 %803, label %804, label %815

804:                                              ; preds = %797
  %805 = getelementptr inbounds %struct.tree_common, ptr %800, i64 0, i32 2
  %806 = load ptr, ptr %805, align 8, !tbaa !46
  %807 = load i64, ptr %806, align 8
  %808 = and i64 %807, 65535
  %809 = icmp eq i64 %808, 19
  br i1 %809, label %810, label %815

810:                                              ; preds = %804
  %811 = getelementptr inbounds %struct.tree_exp, ptr %800, i64 0, i32 3
  %812 = load ptr, ptr %811, align 8, !tbaa !46
  %813 = tail call i32 @integer_zerop(ptr noundef %812) #17
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %815, label %1902

815:                                              ; preds = %810, %804, %797
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.77) #17
  %816 = load ptr, ptr %774, align 8, !tbaa !46
  %817 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %816, i32 noundef 0, i32 noundef %3, i8 noundef zeroext 1)
  br label %1902

818:                                              ; preds = %773, %792, %768, %746
  %819 = and i32 %3, 2
  %820 = icmp eq i32 %819, 0
  br i1 %820, label %821, label %1902

821:                                              ; preds = %818
  %822 = load ptr, ptr %750, align 8, !tbaa !46
  %823 = icmp eq ptr %822, null
  br i1 %823, label %853, label %824

824:                                              ; preds = %821
  %825 = add i32 %2, 2
  tail call void @pp_base_newline(ptr noundef %0) #17
  %826 = icmp sgt i32 %2, -2
  br i1 %826, label %827, label %833

827:                                              ; preds = %824
  %828 = tail call i32 @llvm.smax.i32(i32 %825, i32 1)
  br label %829

829:                                              ; preds = %827, %829
  %830 = phi i32 [ %831, %829 ], [ 0, %827 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %831 = add nuw nsw i32 %830, 1
  %832 = icmp eq i32 %831, %828
  br i1 %832, label %833, label %829, !llvm.loop !80

833:                                              ; preds = %829, %824
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #17
  %834 = add i32 %2, 4
  tail call void @pp_base_newline(ptr noundef %0) #17
  %835 = icmp sgt i32 %2, -4
  br i1 %835, label %836, label %842

836:                                              ; preds = %833
  %837 = tail call i32 @llvm.smax.i32(i32 %834, i32 1)
  br label %838

838:                                              ; preds = %836, %838
  %839 = phi i32 [ %840, %838 ], [ 0, %836 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %840 = add nuw nsw i32 %839, 1
  %841 = icmp eq i32 %840, %837
  br i1 %841, label %842, label %838, !llvm.loop !80

842:                                              ; preds = %838, %833
  %843 = load ptr, ptr %750, align 8, !tbaa !46
  %844 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %843, i32 noundef %834, i32 noundef %3, i8 noundef zeroext 1)
  tail call void @pp_base_newline(ptr noundef %0) #17
  %845 = icmp sgt i32 %2, -2
  br i1 %845, label %846, label %852

846:                                              ; preds = %842
  %847 = tail call i32 @llvm.smax.i32(i32 %825, i32 1)
  br label %848

848:                                              ; preds = %846, %848
  %849 = phi i32 [ %850, %848 ], [ 0, %846 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %850 = add nuw nsw i32 %849, 1
  %851 = icmp eq i32 %850, %847
  br i1 %851, label %852, label %848, !llvm.loop !80

852:                                              ; preds = %848, %842
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #17
  br label %853

853:                                              ; preds = %852, %821
  %854 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %855 = load ptr, ptr %854, align 8, !tbaa !46
  %856 = icmp eq ptr %855, null
  br i1 %856, label %1902, label %857

857:                                              ; preds = %853
  %858 = load i64, ptr %855, align 8
  %859 = and i64 %858, 65535
  %860 = icmp eq i64 %859, 116
  br i1 %860, label %861, label %872

861:                                              ; preds = %857
  %862 = getelementptr inbounds %struct.tree_common, ptr %855, i64 0, i32 2
  %863 = load ptr, ptr %862, align 8, !tbaa !46
  %864 = load i64, ptr %863, align 8
  %865 = and i64 %864, 65535
  %866 = icmp eq i64 %865, 19
  br i1 %866, label %867, label %872

867:                                              ; preds = %861
  %868 = getelementptr inbounds %struct.tree_exp, ptr %855, i64 0, i32 3
  %869 = load ptr, ptr %868, align 8, !tbaa !46
  %870 = tail call i32 @integer_zerop(ptr noundef %869) #17
  %871 = icmp eq i32 %870, 0
  br i1 %871, label %872, label %1902

872:                                              ; preds = %867, %861, %857
  tail call void @pp_base_newline(ptr noundef %0) #17
  %873 = icmp sgt i32 %2, 0
  br i1 %873, label %874, label %878

874:                                              ; preds = %872, %874
  %875 = phi i32 [ %876, %874 ], [ 0, %872 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %876 = add nuw nsw i32 %875, 1
  %877 = icmp eq i32 %876, %2
  br i1 %877, label %878, label %874, !llvm.loop !80

878:                                              ; preds = %874, %872
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.78) #17
  %879 = add i32 %2, 2
  tail call void @pp_base_newline(ptr noundef %0) #17
  %880 = icmp sgt i32 %2, -2
  br i1 %880, label %881, label %887

881:                                              ; preds = %878
  %882 = tail call i32 @llvm.smax.i32(i32 %879, i32 1)
  br label %883

883:                                              ; preds = %881, %883
  %884 = phi i32 [ %885, %883 ], [ 0, %881 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %885 = add nuw nsw i32 %884, 1
  %886 = icmp eq i32 %885, %882
  br i1 %886, label %887, label %883, !llvm.loop !80

887:                                              ; preds = %883, %878
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #17
  %888 = add i32 %2, 4
  tail call void @pp_base_newline(ptr noundef %0) #17
  %889 = icmp sgt i32 %2, -4
  br i1 %889, label %890, label %896

890:                                              ; preds = %887
  %891 = tail call i32 @llvm.smax.i32(i32 %888, i32 1)
  br label %892

892:                                              ; preds = %890, %892
  %893 = phi i32 [ %894, %892 ], [ 0, %890 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %894 = add nuw nsw i32 %893, 1
  %895 = icmp eq i32 %894, %891
  br i1 %895, label %896, label %892, !llvm.loop !80

896:                                              ; preds = %892, %887
  %897 = load ptr, ptr %854, align 8, !tbaa !46
  %898 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %897, i32 noundef %888, i32 noundef %3, i8 noundef zeroext 1)
  tail call void @pp_base_newline(ptr noundef %0) #17
  %899 = icmp sgt i32 %2, -2
  br i1 %899, label %900, label %906

900:                                              ; preds = %896
  %901 = tail call i32 @llvm.smax.i32(i32 %879, i32 1)
  br label %902

902:                                              ; preds = %900, %902
  %903 = phi i32 [ %904, %902 ], [ 0, %900 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %904 = add nuw nsw i32 %903, 1
  %905 = icmp eq i32 %904, %901
  br i1 %905, label %906, label %902, !llvm.loop !80

906:                                              ; preds = %902, %896
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #17
  br label %1902

907:                                              ; preds = %739
  %908 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %909 = load ptr, ptr %908, align 8, !tbaa !46
  %910 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %909, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 63) #17
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %911 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %912 = load ptr, ptr %911, align 8, !tbaa !46
  %913 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %912, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 58) #17
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %914 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %915 = load ptr, ptr %914, align 8, !tbaa !46
  %916 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %915, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %1902

917:                                              ; preds = %44
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #17
  %918 = and i32 %3, 2
  %919 = icmp eq i32 %918, 0
  br i1 %919, label %920, label %1902

920:                                              ; preds = %917
  %921 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %922 = load ptr, ptr %921, align 8, !tbaa !46
  %923 = icmp eq ptr %922, null
  br i1 %923, label %934, label %924

924:                                              ; preds = %920
  tail call void @pp_base_newline(ptr noundef %0) #17
  %925 = load ptr, ptr %921, align 8, !tbaa !46
  %926 = icmp eq ptr %925, null
  br i1 %926, label %934, label %927

927:                                              ; preds = %924
  %928 = add nsw i32 %2, 2
  br label %929

929:                                              ; preds = %927, %929
  %930 = phi ptr [ %925, %927 ], [ %932, %929 ]
  tail call void @print_declaration(ptr noundef %0, ptr noundef nonnull %930, i32 noundef %928, i32 noundef %3)
  tail call void @pp_base_newline(ptr noundef %0) #17
  %931 = getelementptr inbounds %struct.tree_common, ptr %930, i64 0, i32 1
  %932 = load ptr, ptr %931, align 8, !tbaa !46
  %933 = icmp eq ptr %932, null
  br i1 %933, label %934, label %929, !llvm.loop !84

934:                                              ; preds = %929, %924, %920
  %935 = add i32 %2, 2
  tail call void @pp_base_newline(ptr noundef %0) #17
  %936 = icmp sgt i32 %2, -2
  br i1 %936, label %937, label %943

937:                                              ; preds = %934
  %938 = tail call i32 @llvm.smax.i32(i32 %935, i32 1)
  br label %939

939:                                              ; preds = %937, %939
  %940 = phi i32 [ %941, %939 ], [ 0, %937 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %941 = add nuw nsw i32 %940, 1
  %942 = icmp eq i32 %941, %938
  br i1 %942, label %943, label %939, !llvm.loop !80

943:                                              ; preds = %939, %934
  %944 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %945 = load ptr, ptr %944, align 8, !tbaa !46
  %946 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %945, i32 noundef %935, i32 noundef %3, i8 noundef zeroext 1)
  tail call void @pp_base_newline(ptr noundef %0) #17
  %947 = icmp sgt i32 %2, 0
  br i1 %947, label %948, label %952

948:                                              ; preds = %943, %948
  %949 = phi i32 [ %950, %948 ], [ 0, %943 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %950 = add nuw nsw i32 %949, 1
  %951 = icmp eq i32 %950, %2
  br i1 %951, label %952, label %948, !llvm.loop !80

952:                                              ; preds = %948, %943
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #17
  br label %1902

953:                                              ; preds = %44
  %954 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %955 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %956 = load ptr, ptr %955, align 8, !tbaa !46
  tail call void @print_call_name(ptr noundef %0, ptr noundef %956, i32 noundef %3)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #17
  %957 = load ptr, ptr %954, align 8, !tbaa !46
  %958 = getelementptr inbounds %struct.tree_int_cst, ptr %957, i64 0, i32 1
  %959 = load i64, ptr %958, align 8, !tbaa !46
  %960 = trunc i64 %959 to i32
  %961 = add nsw i32 %960, -3
  %962 = icmp sgt i32 %960, 3
  br i1 %962, label %963, label %966

963:                                              ; preds = %953
  %964 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3, i64 3
  %965 = load ptr, ptr %964, align 8, !tbaa !46
  br label %966

966:                                              ; preds = %953, %963
  %967 = phi i32 [ 1, %963 ], [ 0, %953 ]
  %968 = phi ptr [ %965, %963 ], [ null, %953 ]
  %969 = icmp eq ptr %968, null
  br i1 %969, label %985, label %970

970:                                              ; preds = %966, %981
  %971 = phi ptr [ %983, %981 ], [ %968, %966 ]
  %972 = phi i32 [ %982, %981 ], [ %967, %966 ]
  %973 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %971, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  %974 = icmp slt i32 %972, %961
  br i1 %974, label %975, label %981

975:                                              ; preds = %970
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #17
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %976 = add nsw i32 %972, 3
  %977 = sext i32 %976 to i64
  %978 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3, i64 %977
  %979 = load ptr, ptr %978, align 8, !tbaa !46
  %980 = add nsw i32 %972, 1
  br label %981

981:                                              ; preds = %970, %975
  %982 = phi i32 [ %980, %975 ], [ %972, %970 ]
  %983 = phi ptr [ %979, %975 ], [ null, %970 ]
  %984 = icmp eq ptr %983, null
  br i1 %984, label %985, label %970, !llvm.loop !85

985:                                              ; preds = %981, %966
  %986 = load i64, ptr %1, align 8
  %987 = and i64 %986, 134217728
  %988 = icmp eq i64 %987, 0
  br i1 %988, label %997, label %989

989:                                              ; preds = %985
  %990 = load ptr, ptr %954, align 8, !tbaa !46
  %991 = getelementptr inbounds %struct.tree_int_cst, ptr %990, i64 0, i32 1
  %992 = load i64, ptr %991, align 8, !tbaa !46
  %993 = trunc i64 %992 to i32
  %994 = icmp sgt i32 %993, 3
  br i1 %994, label %995, label %996

995:                                              ; preds = %989
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #17
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  br label %996

996:                                              ; preds = %995, %989
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.79) #17
  br label %997

997:                                              ; preds = %996, %985
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #17
  %998 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %999 = load ptr, ptr %998, align 8, !tbaa !46
  %1000 = icmp eq ptr %999, null
  br i1 %1000, label %1003, label %1001

1001:                                             ; preds = %997
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.80) #17
  %1002 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %999, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 93) #17
  br label %1003

1003:                                             ; preds = %1001, %997
  %1004 = load i64, ptr %1, align 8
  %1005 = and i64 %1004, 268435456
  %1006 = icmp eq i64 %1005, 0
  br i1 %1006, label %1008, label %1007

1007:                                             ; preds = %1003
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.81) #17
  br label %1008

1008:                                             ; preds = %1007, %1003
  %1009 = load i64, ptr %1, align 8
  %1010 = and i64 %1009, 262144
  %1011 = icmp eq i64 %1010, 0
  br i1 %1011, label %1902, label %1012

1012:                                             ; preds = %1008
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.82) #17
  br label %1902

1013:                                             ; preds = %44
  tail call fastcc void @do_niy(ptr noundef %0, ptr noundef %1)
  br label %1902

1014:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.83) #17
  %1015 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1016 = load ptr, ptr %1015, align 8, !tbaa !46
  %1017 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1016, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.84) #17
  br label %1902

1018:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.85) #17
  %1019 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %1020 = load ptr, ptr %1019, align 8, !tbaa !46
  %1021 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1020, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 62) #17
  br label %1902

1022:                                             ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  %1023 = trunc i64 %45 to i32
  %1024 = and i32 %1023, 65535
  %1025 = tail call ptr @op_symbol_code(i32 noundef %1024)
  %1026 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1027 = load ptr, ptr %1026, align 8, !tbaa !46
  %1028 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1029 = load ptr, ptr %1028, align 8, !tbaa !46
  %1030 = tail call i32 @op_prio(ptr noundef %1027), !range !72
  %1031 = tail call i32 @op_prio(ptr noundef nonnull %1), !range !72
  %1032 = icmp ugt i32 %1030, %1031
  br i1 %1032, label %1035, label %1033

1033:                                             ; preds = %1022
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #17
  %1034 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1027, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #17
  br label %1037

1035:                                             ; preds = %1022
  %1036 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1027, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %1037

1037:                                             ; preds = %1035, %1033
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %1025) #17
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1038 = tail call i32 @op_prio(ptr noundef %1029), !range !72
  %1039 = tail call i32 @op_prio(ptr noundef nonnull %1), !range !72
  %1040 = icmp ugt i32 %1038, %1039
  br i1 %1040, label %1043, label %1041

1041:                                             ; preds = %1037
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #17
  %1042 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1029, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #17
  br label %1902

1043:                                             ; preds = %1037
  %1044 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1029, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %1902

1045:                                             ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44
  %1046 = and i64 %45, 65535
  %1047 = icmp eq i64 %1046, 121
  br i1 %1047, label %1048, label %1054

1048:                                             ; preds = %1045
  %1049 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1050 = load ptr, ptr %1049, align 8, !tbaa !46
  %1051 = load i64, ptr %1050, align 8
  %1052 = and i64 %1051, 65534
  %1053 = icmp eq i64 %1052, 28
  br i1 %1053, label %1058, label %1054

1054:                                             ; preds = %1048, %1045
  %1055 = trunc i64 %45 to i32
  %1056 = and i32 %1055, 65535
  %1057 = tail call ptr @op_symbol_code(i32 noundef %1056)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %1057) #17
  br label %1058

1058:                                             ; preds = %1048, %1054
  %1059 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1060 = load ptr, ptr %1059, align 8, !tbaa !46
  %1061 = tail call i32 @op_prio(ptr noundef %1060), !range !72
  %1062 = tail call i32 @op_prio(ptr noundef %1), !range !72
  %1063 = icmp ult i32 %1061, %1062
  br i1 %1063, label %1064, label %1067

1064:                                             ; preds = %1058
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #17
  %1065 = load ptr, ptr %1059, align 8, !tbaa !46
  %1066 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1065, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #17
  br label %1069

1067:                                             ; preds = %1058
  %1068 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1060, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %1069

1069:                                             ; preds = %1067, %1064
  %1070 = load i64, ptr %1, align 8
  %1071 = and i64 %1070, 65535
  %1072 = icmp eq i64 %1071, 49
  br i1 %1072, label %1073, label %1902

1073:                                             ; preds = %1069
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.86) #17
  %1074 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1075 = load ptr, ptr %1074, align 8, !tbaa !46
  %1076 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1075, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #17
  br label %1902

1077:                                             ; preds = %44, %44
  %1078 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1079 = load ptr, ptr %1078, align 8, !tbaa !46
  %1080 = tail call i32 @op_prio(ptr noundef %1079), !range !72
  %1081 = tail call i32 @op_prio(ptr noundef %1), !range !72
  %1082 = icmp ult i32 %1080, %1081
  br i1 %1082, label %1083, label %1086

1083:                                             ; preds = %1077
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #17
  %1084 = load ptr, ptr %1078, align 8, !tbaa !46
  %1085 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1084, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #17
  br label %1088

1086:                                             ; preds = %1077
  %1087 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1079, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %1088

1088:                                             ; preds = %1086, %1083
  %1089 = load i64, ptr %1, align 8
  %1090 = trunc i64 %1089 to i32
  %1091 = and i32 %1090, 65535
  %1092 = tail call ptr @op_symbol_code(i32 noundef %1091)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %1092) #17
  br label %1902

1093:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.87) #17
  %1094 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1095 = load ptr, ptr %1094, align 8, !tbaa !46
  %1096 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1095, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.34) #17
  %1097 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1098 = load ptr, ptr %1097, align 8, !tbaa !46
  %1099 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1098, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 62) #17
  br label %1902

1100:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.88) #17
  %1101 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1102 = load ptr, ptr %1101, align 8, !tbaa !46
  %1103 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1102, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.34) #17
  %1104 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1105 = load ptr, ptr %1104, align 8, !tbaa !46
  %1106 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1105, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 62) #17
  br label %1902

1107:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.89) #17
  %1108 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1109 = load ptr, ptr %1108, align 8, !tbaa !46
  %1110 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1109, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 62) #17
  br label %1902

1111:                                             ; preds = %44
  tail call fastcc void @do_niy(ptr noundef %0, ptr noundef %1)
  br label %1902

1112:                                             ; preds = %44, %44, %44, %44, %44, %44
  %1113 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %1114 = load ptr, ptr %1113, align 8, !tbaa !46
  %1115 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1116 = load ptr, ptr %1115, align 8, !tbaa !46
  %1117 = getelementptr inbounds %struct.tree_common, ptr %1116, i64 0, i32 2
  %1118 = load ptr, ptr %1117, align 8, !tbaa !46
  %1119 = icmp eq ptr %1114, %1118
  br i1 %1119, label %1122, label %1120

1120:                                             ; preds = %1112
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #17
  %1121 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1114, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.90) #17
  br label %1122

1122:                                             ; preds = %1120, %1112
  %1123 = tail call i32 @op_prio(ptr noundef %1116), !range !72
  %1124 = tail call i32 @op_prio(ptr noundef %1), !range !72
  %1125 = icmp ult i32 %1123, %1124
  br i1 %1125, label %1126, label %1127

1126:                                             ; preds = %1122
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #17
  br label %1127

1127:                                             ; preds = %1126, %1122
  %1128 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1116, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  %1129 = tail call i32 @op_prio(ptr noundef %1116), !range !72
  %1130 = tail call i32 @op_prio(ptr noundef %1), !range !72
  %1131 = icmp ult i32 %1129, %1130
  br i1 %1131, label %1132, label %1902

1132:                                             ; preds = %1127
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #17
  br label %1902

1133:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.91) #17
  %1134 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %1135 = load ptr, ptr %1134, align 8, !tbaa !46
  %1136 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1135, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.92) #17
  %1137 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1138 = load ptr, ptr %1137, align 8, !tbaa !46
  %1139 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1138, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #17
  br label %1902

1140:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.93) #17
  %1141 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1142 = load ptr, ptr %1141, align 8, !tbaa !46
  %1143 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1142, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.94) #17
  br label %1902

1144:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.95) #17
  %1145 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1146 = load ptr, ptr %1145, align 8, !tbaa !46
  %1147 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1146, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 62) #17
  br label %1902

1148:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.96) #17
  %1149 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1150 = load ptr, ptr %1149, align 8, !tbaa !46
  %1151 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1150, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 62) #17
  br label %1902

1152:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.97) #17
  %1153 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1154 = load ptr, ptr %1153, align 8, !tbaa !46
  %1155 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1154, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.34) #17
  %1156 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1157 = load ptr, ptr %1156, align 8, !tbaa !46
  %1158 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1157, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.17) #17
  br label %1902

1159:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.98) #17
  %1160 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1161 = load ptr, ptr %1160, align 8, !tbaa !46
  %1162 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1161, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.17) #17
  br label %1902

1163:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.99) #17
  %1164 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1165 = load ptr, ptr %1164, align 8, !tbaa !46
  %1166 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1165, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.17) #17
  br label %1902

1167:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.100) #17
  %1168 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1169 = load ptr, ptr %1168, align 8, !tbaa !46
  %1170 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1169, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.17) #17
  br label %1902

1171:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.101) #17
  %1172 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1173 = load ptr, ptr %1172, align 8, !tbaa !46
  %1174 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1173, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.17) #17
  br label %1902

1175:                                             ; preds = %44, %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.102) #17
  %1176 = add i32 %2, 2
  tail call void @pp_base_newline(ptr noundef %0) #17
  %1177 = icmp sgt i32 %2, -2
  br i1 %1177, label %1178, label %1184

1178:                                             ; preds = %1175
  %1179 = tail call i32 @llvm.smax.i32(i32 %1176, i32 1)
  br label %1180

1180:                                             ; preds = %1178, %1180
  %1181 = phi i32 [ %1182, %1180 ], [ 0, %1178 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1182 = add nuw nsw i32 %1181, 1
  %1183 = icmp eq i32 %1182, %1179
  br i1 %1183, label %1184, label %1180, !llvm.loop !80

1184:                                             ; preds = %1180, %1175
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.40) #17
  %1185 = add i32 %2, 4
  tail call void @pp_base_newline(ptr noundef %0) #17
  %1186 = icmp sgt i32 %2, -4
  br i1 %1186, label %1187, label %1193

1187:                                             ; preds = %1184
  %1188 = tail call i32 @llvm.smax.i32(i32 %1185, i32 1)
  br label %1189

1189:                                             ; preds = %1187, %1189
  %1190 = phi i32 [ %1191, %1189 ], [ 0, %1187 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1191 = add nuw nsw i32 %1190, 1
  %1192 = icmp eq i32 %1191, %1188
  br i1 %1192, label %1193, label %1189, !llvm.loop !80

1193:                                             ; preds = %1189, %1184
  %1194 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1195 = load ptr, ptr %1194, align 8, !tbaa !46
  %1196 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1195, i32 noundef %1185, i32 noundef %3, i8 noundef zeroext 1)
  tail call void @pp_base_newline(ptr noundef %0) #17
  %1197 = icmp sgt i32 %2, -2
  br i1 %1197, label %1198, label %1204

1198:                                             ; preds = %1193
  %1199 = tail call i32 @llvm.smax.i32(i32 %1176, i32 1)
  br label %1200

1200:                                             ; preds = %1198, %1200
  %1201 = phi i32 [ %1202, %1200 ], [ 0, %1198 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1202 = add nuw nsw i32 %1201, 1
  %1203 = icmp eq i32 %1202, %1199
  br i1 %1203, label %1204, label %1200, !llvm.loop !80

1204:                                             ; preds = %1200, %1193
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.41) #17
  tail call void @pp_base_newline(ptr noundef %0) #17
  %1205 = icmp sgt i32 %2, 0
  br i1 %1205, label %1206, label %1210

1206:                                             ; preds = %1204, %1206
  %1207 = phi i32 [ %1208, %1206 ], [ 0, %1204 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1208 = add nuw nsw i32 %1207, 1
  %1209 = icmp eq i32 %1208, %2
  br i1 %1209, label %1210, label %1206, !llvm.loop !80

1210:                                             ; preds = %1206, %1204
  %1211 = load i64, ptr %1, align 8
  %1212 = and i64 %1211, 65535
  %1213 = icmp eq i64 %1212, 130
  %1214 = select i1 %1213, ptr @.str.103, ptr @.str.104
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %1214) #17
  tail call void @pp_base_newline(ptr noundef %0) #17
  %1215 = icmp sgt i32 %2, -2
  br i1 %1215, label %1216, label %1222

1216:                                             ; preds = %1210
  %1217 = tail call i32 @llvm.smax.i32(i32 %1176, i32 1)
  br label %1218

1218:                                             ; preds = %1216, %1218
  %1219 = phi i32 [ %1220, %1218 ], [ 0, %1216 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1220 = add nuw nsw i32 %1219, 1
  %1221 = icmp eq i32 %1220, %1217
  br i1 %1221, label %1222, label %1218, !llvm.loop !80

1222:                                             ; preds = %1218, %1210
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.40) #17
  tail call void @pp_base_newline(ptr noundef %0) #17
  %1223 = icmp sgt i32 %2, -4
  br i1 %1223, label %1224, label %1230

1224:                                             ; preds = %1222
  %1225 = tail call i32 @llvm.smax.i32(i32 %1185, i32 1)
  br label %1226

1226:                                             ; preds = %1224, %1226
  %1227 = phi i32 [ %1228, %1226 ], [ 0, %1224 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1228 = add nuw nsw i32 %1227, 1
  %1229 = icmp eq i32 %1228, %1225
  br i1 %1229, label %1230, label %1226, !llvm.loop !80

1230:                                             ; preds = %1226, %1222
  %1231 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1232 = load ptr, ptr %1231, align 8, !tbaa !46
  %1233 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1232, i32 noundef %1185, i32 noundef %3, i8 noundef zeroext 1)
  tail call void @pp_base_newline(ptr noundef %0) #17
  %1234 = icmp sgt i32 %2, -2
  br i1 %1234, label %1235, label %1241

1235:                                             ; preds = %1230
  %1236 = tail call i32 @llvm.smax.i32(i32 %1176, i32 1)
  br label %1237

1237:                                             ; preds = %1235, %1237
  %1238 = phi i32 [ %1239, %1237 ], [ 0, %1235 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1239 = add nuw nsw i32 %1238, 1
  %1240 = icmp eq i32 %1239, %1236
  br i1 %1240, label %1241, label %1237, !llvm.loop !80

1241:                                             ; preds = %1237, %1230
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.41) #17
  br label %1902

1242:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.105) #17
  %1243 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1244 = load ptr, ptr %1243, align 8, !tbaa !46
  %1245 = add nsw i32 %2, 2
  %1246 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1244, i32 noundef %1245, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.52) #17
  tail call void @pp_base_newline(ptr noundef %0) #17
  %1247 = icmp sgt i32 %2, -2
  br i1 %1247, label %1248, label %1254

1248:                                             ; preds = %1242
  %1249 = tail call i32 @llvm.smax.i32(i32 %1245, i32 1)
  br label %1250

1250:                                             ; preds = %1248, %1250
  %1251 = phi i32 [ %1252, %1250 ], [ 0, %1248 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1252 = add nuw nsw i32 %1251, 1
  %1253 = icmp eq i32 %1252, %1249
  br i1 %1253, label %1254, label %1250, !llvm.loop !80

1254:                                             ; preds = %1250, %1242
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.40) #17
  %1255 = add i32 %2, 4
  tail call void @pp_base_newline(ptr noundef %0) #17
  %1256 = icmp sgt i32 %2, -4
  br i1 %1256, label %1257, label %1263

1257:                                             ; preds = %1254
  %1258 = tail call i32 @llvm.smax.i32(i32 %1255, i32 1)
  br label %1259

1259:                                             ; preds = %1257, %1259
  %1260 = phi i32 [ %1261, %1259 ], [ 0, %1257 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1261 = add nuw nsw i32 %1260, 1
  %1262 = icmp eq i32 %1261, %1258
  br i1 %1262, label %1263, label %1259, !llvm.loop !80

1263:                                             ; preds = %1259, %1254
  %1264 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1265 = load ptr, ptr %1264, align 8, !tbaa !46
  %1266 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1265, i32 noundef %1255, i32 noundef %3, i8 noundef zeroext 1)
  tail call void @pp_base_newline(ptr noundef %0) #17
  %1267 = icmp sgt i32 %2, -2
  br i1 %1267, label %1268, label %1274

1268:                                             ; preds = %1263
  %1269 = tail call i32 @llvm.smax.i32(i32 %1245, i32 1)
  br label %1270

1270:                                             ; preds = %1268, %1270
  %1271 = phi i32 [ %1272, %1270 ], [ 0, %1268 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1272 = add nuw nsw i32 %1271, 1
  %1273 = icmp eq i32 %1272, %1269
  br i1 %1273, label %1274, label %1270, !llvm.loop !80

1274:                                             ; preds = %1270, %1263
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.41) #17
  br label %1902

1275:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.106) #17
  %1276 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1277 = load ptr, ptr %1276, align 8, !tbaa !46
  %1278 = add nsw i32 %2, 2
  %1279 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1277, i32 noundef %1278, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.107) #17
  tail call void @pp_base_newline(ptr noundef %0) #17
  %1280 = icmp sgt i32 %2, -2
  br i1 %1280, label %1281, label %1287

1281:                                             ; preds = %1275
  %1282 = tail call i32 @llvm.smax.i32(i32 %1278, i32 1)
  br label %1283

1283:                                             ; preds = %1281, %1283
  %1284 = phi i32 [ %1285, %1283 ], [ 0, %1281 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1285 = add nuw nsw i32 %1284, 1
  %1286 = icmp eq i32 %1285, %1282
  br i1 %1286, label %1287, label %1283, !llvm.loop !80

1287:                                             ; preds = %1283, %1275
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.40) #17
  %1288 = add i32 %2, 4
  tail call void @pp_base_newline(ptr noundef %0) #17
  %1289 = icmp sgt i32 %2, -4
  br i1 %1289, label %1290, label %1296

1290:                                             ; preds = %1287
  %1291 = tail call i32 @llvm.smax.i32(i32 %1288, i32 1)
  br label %1292

1292:                                             ; preds = %1290, %1292
  %1293 = phi i32 [ %1294, %1292 ], [ 0, %1290 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1294 = add nuw nsw i32 %1293, 1
  %1295 = icmp eq i32 %1294, %1291
  br i1 %1295, label %1296, label %1292, !llvm.loop !80

1296:                                             ; preds = %1292, %1287
  %1297 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1298 = load ptr, ptr %1297, align 8, !tbaa !46
  %1299 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1298, i32 noundef %1288, i32 noundef %3, i8 noundef zeroext 1)
  tail call void @pp_base_newline(ptr noundef %0) #17
  %1300 = icmp sgt i32 %2, -2
  br i1 %1300, label %1301, label %1307

1301:                                             ; preds = %1296
  %1302 = tail call i32 @llvm.smax.i32(i32 %1278, i32 1)
  br label %1303

1303:                                             ; preds = %1301, %1303
  %1304 = phi i32 [ %1305, %1303 ], [ 0, %1301 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1305 = add nuw nsw i32 %1304, 1
  %1306 = icmp eq i32 %1305, %1302
  br i1 %1306, label %1307, label %1303, !llvm.loop !80

1307:                                             ; preds = %1303, %1296
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.41) #17
  br label %1902

1308:                                             ; preds = %44
  %1309 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1310 = load ptr, ptr %1309, align 8, !tbaa !46
  %1311 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1310, i64 0, i32 3
  %1312 = load ptr, ptr %1311, align 8, !tbaa !46
  %1313 = icmp eq ptr %1312, null
  br i1 %1313, label %1322, label %1314

1314:                                             ; preds = %1308
  %1315 = getelementptr inbounds %struct.tree_identifier, ptr %1312, i64 0, i32 1
  %1316 = load ptr, ptr %1315, align 8, !tbaa !46
  %1317 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1316, ptr noundef nonnull dereferenceable(6) @.str.108)
  %1318 = icmp eq i32 %1317, 0
  br i1 %1318, label %1902, label %1319

1319:                                             ; preds = %1314
  %1320 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1316, ptr noundef nonnull dereferenceable(9) @.str.109)
  %1321 = icmp eq i32 %1320, 0
  br i1 %1321, label %1902, label %1322

1322:                                             ; preds = %1319, %1308
  %1323 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1310, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 58) #17
  %1324 = getelementptr inbounds %struct.tree_decl_common, ptr %1310, i64 0, i32 2
  %1325 = load i64, ptr %1324, align 8
  %1326 = and i64 %1325, 256
  %1327 = icmp eq i64 %1326, 0
  br i1 %1327, label %1902, label %1328

1328:                                             ; preds = %1322
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.110) #17
  br label %1902

1329:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.111) #17
  %1330 = and i32 %3, 2
  %1331 = icmp eq i32 %1330, 0
  br i1 %1331, label %1332, label %1902

1332:                                             ; preds = %1329
  %1333 = add i32 %2, 2
  tail call void @pp_base_newline(ptr noundef %0) #17
  %1334 = icmp sgt i32 %2, -2
  br i1 %1334, label %1335, label %1341

1335:                                             ; preds = %1332
  %1336 = tail call i32 @llvm.smax.i32(i32 %1333, i32 1)
  br label %1337

1337:                                             ; preds = %1335, %1337
  %1338 = phi i32 [ %1339, %1337 ], [ 0, %1335 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1339 = add nuw nsw i32 %1338, 1
  %1340 = icmp eq i32 %1339, %1336
  br i1 %1340, label %1341, label %1337, !llvm.loop !80

1341:                                             ; preds = %1337, %1332
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #17
  %1342 = add i32 %2, 4
  tail call void @pp_base_newline(ptr noundef %0) #17
  %1343 = icmp sgt i32 %2, -4
  br i1 %1343, label %1344, label %1350

1344:                                             ; preds = %1341
  %1345 = tail call i32 @llvm.smax.i32(i32 %1342, i32 1)
  br label %1346

1346:                                             ; preds = %1344, %1346
  %1347 = phi i32 [ %1348, %1346 ], [ 0, %1344 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1348 = add nuw nsw i32 %1347, 1
  %1349 = icmp eq i32 %1348, %1345
  br i1 %1349, label %1350, label %1346, !llvm.loop !80

1350:                                             ; preds = %1346, %1341
  %1351 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1352 = load ptr, ptr %1351, align 8, !tbaa !46
  %1353 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1352, i32 noundef %1342, i32 noundef %3, i8 noundef zeroext 1)
  tail call void @pp_base_newline(ptr noundef %0) #17
  %1354 = icmp sgt i32 %2, -2
  br i1 %1354, label %1355, label %1361

1355:                                             ; preds = %1350
  %1356 = tail call i32 @llvm.smax.i32(i32 %1333, i32 1)
  br label %1357

1357:                                             ; preds = %1355, %1357
  %1358 = phi i32 [ %1359, %1357 ], [ 0, %1355 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1359 = add nuw nsw i32 %1358, 1
  %1360 = icmp eq i32 %1359, %1356
  br i1 %1360, label %1361, label %1357, !llvm.loop !80

1361:                                             ; preds = %1357, %1350
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #17
  br label %1902

1362:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.112) #17
  %1363 = load i64, ptr %1, align 8
  %1364 = and i64 %1363, 262144
  %1365 = icmp eq i64 %1364, 0
  %1366 = select i1 %1365, ptr @.str.114, ptr @.str.113
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %1366) #17
  %1367 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1368 = load ptr, ptr %1367, align 8, !tbaa !46
  %1369 = tail call i64 @tree_low_cst(ptr noundef %1368, i32 noundef 0) #17
  %1370 = trunc i64 %1369 to i32
  %1371 = tail call ptr @predictor_name(i32 noundef %1370) #17
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %1371) #17
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.115) #17
  br label %1902

1372:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.116) #17
  %1373 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1374 = load ptr, ptr %1373, align 8, !tbaa !46
  %1375 = icmp eq ptr %1374, null
  br i1 %1375, label %1902, label %1376

1376:                                             ; preds = %1372
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1377 = load i64, ptr %1374, align 8
  %1378 = and i64 %1377, 65535
  %1379 = icmp eq i64 %1378, 53
  br i1 %1379, label %1380, label %1384

1380:                                             ; preds = %1376
  %1381 = getelementptr inbounds %struct.tree_exp, ptr %1374, i64 1
  %1382 = load ptr, ptr %1381, align 8, !tbaa !46
  %1383 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1382, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %1902

1384:                                             ; preds = %1376
  %1385 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %1374, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %1902

1386:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.76) #17
  %1387 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1388 = load ptr, ptr %1387, align 8, !tbaa !46
  %1389 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1388, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.117) #17
  br label %1902

1390:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.118) #17
  %1391 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1392 = load ptr, ptr %1391, align 8, !tbaa !46
  %1393 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1392, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #17
  %1394 = and i32 %3, 2
  %1395 = icmp eq i32 %1394, 0
  br i1 %1395, label %1396, label %1902

1396:                                             ; preds = %1390
  %1397 = add i32 %2, 2
  tail call void @pp_base_newline(ptr noundef %0) #17
  %1398 = icmp sgt i32 %2, -2
  br i1 %1398, label %1399, label %1405

1399:                                             ; preds = %1396
  %1400 = tail call i32 @llvm.smax.i32(i32 %1397, i32 1)
  br label %1401

1401:                                             ; preds = %1399, %1401
  %1402 = phi i32 [ %1403, %1401 ], [ 0, %1399 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1403 = add nuw nsw i32 %1402, 1
  %1404 = icmp eq i32 %1403, %1400
  br i1 %1404, label %1405, label %1401, !llvm.loop !80

1405:                                             ; preds = %1401, %1396
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #17
  %1406 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1407 = load ptr, ptr %1406, align 8, !tbaa !46
  %1408 = icmp eq ptr %1407, null
  br i1 %1408, label %1421, label %1409

1409:                                             ; preds = %1405
  %1410 = add i32 %2, 4
  tail call void @pp_base_newline(ptr noundef %0) #17
  %1411 = icmp sgt i32 %2, -4
  br i1 %1411, label %1412, label %1418

1412:                                             ; preds = %1409
  %1413 = tail call i32 @llvm.smax.i32(i32 %1410, i32 1)
  br label %1414

1414:                                             ; preds = %1412, %1414
  %1415 = phi i32 [ %1416, %1414 ], [ 0, %1412 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1416 = add nuw nsw i32 %1415, 1
  %1417 = icmp eq i32 %1416, %1413
  br i1 %1417, label %1418, label %1414, !llvm.loop !80

1418:                                             ; preds = %1414, %1409
  %1419 = load ptr, ptr %1406, align 8, !tbaa !46
  %1420 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1419, i32 noundef %1410, i32 noundef %3, i8 noundef zeroext 1)
  br label %1451

1421:                                             ; preds = %1405
  %1422 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %1423 = load ptr, ptr %1422, align 8, !tbaa !46
  %1424 = getelementptr inbounds %struct.tree_vec, ptr %1423, i64 0, i32 1
  %1425 = load i32, ptr %1424, align 8, !tbaa !46
  %1426 = sext i32 %1425 to i64
  %1427 = icmp eq i32 %1425, 0
  br i1 %1427, label %1451, label %1428

1428:                                             ; preds = %1421
  %1429 = add i32 %2, 4
  %1430 = icmp sgt i32 %2, -4
  %1431 = tail call i32 @llvm.smax.i32(i32 %1429, i32 1)
  br label %1432

1432:                                             ; preds = %1428, %1448
  %1433 = phi i64 [ 0, %1428 ], [ %1449, %1448 ]
  %1434 = getelementptr inbounds %struct.tree_vec, ptr %1423, i64 0, i32 2, i64 %1433
  %1435 = load ptr, ptr %1434, align 8, !tbaa !46
  tail call void @pp_base_newline(ptr noundef %0) #17
  br i1 %1430, label %1436, label %1440

1436:                                             ; preds = %1432, %1436
  %1437 = phi i32 [ %1438, %1436 ], [ 0, %1432 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1438 = add nuw nsw i32 %1437, 1
  %1439 = icmp eq i32 %1438, %1431
  br i1 %1439, label %1440, label %1436, !llvm.loop !80

1440:                                             ; preds = %1436, %1432
  %1441 = icmp eq ptr %1435, null
  br i1 %1441, label %1447, label %1442

1442:                                             ; preds = %1440
  %1443 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %1435, i32 noundef %1429, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.119) #17
  %1444 = getelementptr inbounds %struct.tree_exp, ptr %1435, i64 1, i32 0, i32 1
  %1445 = load ptr, ptr %1444, align 8, !tbaa !46
  %1446 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1445, i32 noundef %1429, i32 noundef %3, i8 noundef zeroext 1)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 59) #17
  br label %1448

1447:                                             ; preds = %1440
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.120) #17
  br label %1448

1448:                                             ; preds = %1447, %1442
  %1449 = add nuw i64 %1433, 1
  %1450 = icmp eq i64 %1449, %1426
  br i1 %1450, label %1451, label %1432, !llvm.loop !86

1451:                                             ; preds = %1448, %1421, %1418
  tail call void @pp_base_newline(ptr noundef %0) #17
  %1452 = icmp sgt i32 %2, -2
  br i1 %1452, label %1453, label %1459

1453:                                             ; preds = %1451
  %1454 = tail call i32 @llvm.smax.i32(i32 %1397, i32 1)
  br label %1455

1455:                                             ; preds = %1453, %1455
  %1456 = phi i32 [ %1457, %1455 ], [ 0, %1453 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1457 = add nuw nsw i32 %1456, 1
  %1458 = icmp eq i32 %1457, %1454
  br i1 %1458, label %1459, label %1455, !llvm.loop !80

1459:                                             ; preds = %1455, %1451
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #17
  br label %1902

1460:                                             ; preds = %44
  %1461 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1462 = load ptr, ptr %1461, align 8, !tbaa !46
  %1463 = load i64, ptr %1462, align 8
  %1464 = and i64 %1463, 65535
  %1465 = icmp eq i64 %1464, 141
  br i1 %1465, label %1483, label %1466

1466:                                             ; preds = %1460
  %1467 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1464
  %1468 = load i32, ptr %1467, align 4, !tbaa !50
  %1469 = icmp eq i32 %1468, 3
  br i1 %1469, label %1470, label %1483

1470:                                             ; preds = %1466
  %1471 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1462, i64 0, i32 3
  %1472 = load ptr, ptr %1471, align 8, !tbaa !46
  %1473 = icmp eq ptr %1472, null
  br i1 %1473, label %1483, label %1474

1474:                                             ; preds = %1470
  %1475 = getelementptr inbounds %struct.tree_identifier, ptr %1472, i64 0, i32 1
  %1476 = load ptr, ptr %1475, align 8, !tbaa !46
  %1477 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1476, ptr noundef nonnull dereferenceable(6) @.str.108)
  %1478 = icmp eq i32 %1477, 0
  br i1 %1478, label %1482, label %1479

1479:                                             ; preds = %1474
  %1480 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1476, ptr noundef nonnull dereferenceable(9) @.str.109)
  %1481 = icmp eq i32 %1480, 0
  br i1 %1481, label %1482, label %1483

1482:                                             ; preds = %1479, %1474
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %1476) #17
  br label %1902

1483:                                             ; preds = %1479, %1470, %1466, %1460
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.121) #17
  %1484 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %1462, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %1902

1485:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.122) #17
  %1486 = load i64, ptr %1, align 8
  %1487 = and i64 %1486, 134217728
  %1488 = icmp eq i64 %1487, 0
  br i1 %1488, label %1490, label %1489

1489:                                             ; preds = %1485
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.123) #17
  br label %1490

1490:                                             ; preds = %1489, %1485
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #17
  %1491 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1492 = load ptr, ptr %1491, align 8, !tbaa !46
  %1493 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1492, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 58) #17
  %1494 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1495 = load ptr, ptr %1494, align 8, !tbaa !46
  %1496 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1495, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 58) #17
  %1497 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %1498 = load ptr, ptr %1497, align 8, !tbaa !46
  %1499 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1498, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  %1500 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 2
  %1501 = load ptr, ptr %1500, align 8, !tbaa !46
  %1502 = icmp eq ptr %1501, null
  br i1 %1502, label %1506, label %1503

1503:                                             ; preds = %1490
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 58) #17
  %1504 = load ptr, ptr %1500, align 8, !tbaa !46
  %1505 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1504, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %1506

1506:                                             ; preds = %1503, %1490
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.52) #17
  br label %1902

1507:                                             ; preds = %44
  %1508 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1509 = load ptr, ptr %1508, align 8, !tbaa !46
  %1510 = icmp eq ptr %1509, null
  br i1 %1510, label %1524, label %1511

1511:                                             ; preds = %1507
  %1512 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1513 = load ptr, ptr %1512, align 8, !tbaa !46
  %1514 = icmp eq ptr %1513, null
  br i1 %1514, label %1520, label %1515

1515:                                             ; preds = %1511
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.124) #17
  %1516 = load ptr, ptr %1508, align 8, !tbaa !46
  %1517 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1516, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.125) #17
  %1518 = load ptr, ptr %1512, align 8, !tbaa !46
  %1519 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1518, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %1525

1520:                                             ; preds = %1511
  br i1 %1510, label %1524, label %1521

1521:                                             ; preds = %1520
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.124) #17
  %1522 = load ptr, ptr %1508, align 8, !tbaa !46
  %1523 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1522, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %1525

1524:                                             ; preds = %1507, %1520
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.126) #17
  br label %1525

1525:                                             ; preds = %1521, %1524, %1515
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 58) #17
  br label %1902

1526:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.127) #17
  %1527 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1528 = load ptr, ptr %1527, align 8, !tbaa !46
  %1529 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1528, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 59) #17
  %1530 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1531 = load ptr, ptr %1530, align 8, !tbaa !46
  %1532 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1531, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 45) #17
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 62) #17
  %1533 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %1534 = load ptr, ptr %1533, align 8, !tbaa !46
  %1535 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1534, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #17
  br label %1902

1536:                                             ; preds = %44
  %1537 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %1538 = load ptr, ptr %1537, align 8, !tbaa !46
  %1539 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1538, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.128) #17
  %1540 = load ptr, ptr %0, align 8, !tbaa !58
  %1541 = getelementptr inbounds %struct.output_buffer, ptr %1540, i64 0, i32 6
  %1542 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 3
  %1543 = load i32, ptr %1542, align 8, !tbaa !46
  %1544 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1541, ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %1543)
  %1545 = load ptr, ptr %0, align 8, !tbaa !58
  %1546 = getelementptr inbounds %struct.output_buffer, ptr %1545, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %1546) #17
  %1547 = load i64, ptr %1, align 8
  %1548 = and i64 %1547, 4194304
  %1549 = icmp eq i64 %1548, 0
  br i1 %1549, label %1551, label %1550

1550:                                             ; preds = %1536
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.129) #17
  br label %1902

1551:                                             ; preds = %1536
  %1552 = and i64 %1547, 4294967296
  %1553 = icmp eq i64 %1552, 0
  br i1 %1553, label %1902, label %1554

1554:                                             ; preds = %1551
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.130) #17
  br label %1902

1555:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.131) #17
  %1556 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1557 = load ptr, ptr %1556, align 8, !tbaa !46
  %1558 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1557, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.34) #17
  %1559 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1560 = load ptr, ptr %1559, align 8, !tbaa !46
  %1561 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1560, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.17) #17
  br label %1902

1562:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.132) #17
  %1563 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1564 = load ptr, ptr %1563, align 8, !tbaa !46
  %1565 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1564, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.34) #17
  %1566 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1567 = load ptr, ptr %1566, align 8, !tbaa !46
  %1568 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1567, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.17) #17
  br label %1902

1569:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.133) #17
  br label %1902

1570:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.134) #17
  br label %1902

1571:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.40) #17
  %1572 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1573 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1574 = load ptr, ptr %1573, align 8, !tbaa !46
  %1575 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1574, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.135) #17
  %1576 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %1577 = load ptr, ptr %1576, align 8, !tbaa !46
  %1578 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1577, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.136) #17
  %1579 = load ptr, ptr %1572, align 8, !tbaa !46
  %1580 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1579, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %1902

1581:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.137) #17
  %1582 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1583 = load ptr, ptr %1582, align 8, !tbaa !46
  %1584 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1583, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.34) #17
  %1585 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1586 = load ptr, ptr %1585, align 8, !tbaa !46
  %1587 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1586, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.34) #17
  %1588 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %1589 = load ptr, ptr %1588, align 8, !tbaa !46
  %1590 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1589, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.17) #17
  br label %1902

1591:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.138) #17
  %1592 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1593 = load ptr, ptr %1592, align 8, !tbaa !46
  %1594 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1593, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.139) #17
  %1595 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1596 = load ptr, ptr %1595, align 8, !tbaa !46
  %1597 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1596, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.139) #17
  %1598 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %1599 = load ptr, ptr %1598, align 8, !tbaa !46
  %1600 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1599, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.140) #17
  br label %1902

1601:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.141) #17
  %1602 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1603 = load ptr, ptr %1602, align 8, !tbaa !46
  %1604 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1603, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.34) #17
  %1605 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1606 = load ptr, ptr %1605, align 8, !tbaa !46
  %1607 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1606, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.34) #17
  %1608 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %1609 = load ptr, ptr %1608, align 8, !tbaa !46
  %1610 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1609, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.140) #17
  br label %1902

1611:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.142) #17
  %1612 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1613 = load ptr, ptr %1612, align 8, !tbaa !46
  tail call void @dump_omp_clauses(ptr noundef %0, ptr noundef %1613, i32 noundef %2, i32 noundef %3)
  br label %1614

1614:                                             ; preds = %1783, %1787, %1805, %1782, %1781, %1780, %1777, %1650, %1611
  %1615 = and i32 %3, 2
  %1616 = icmp eq i32 %1615, 0
  br i1 %1616, label %1617, label %1902

1617:                                             ; preds = %1614
  %1618 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1619 = load ptr, ptr %1618, align 8, !tbaa !46
  %1620 = icmp eq ptr %1619, null
  br i1 %1620, label %1902, label %1621

1621:                                             ; preds = %1617
  %1622 = add i32 %2, 2
  tail call void @pp_base_newline(ptr noundef %0) #17
  %1623 = icmp sgt i32 %2, -2
  br i1 %1623, label %1624, label %1630

1624:                                             ; preds = %1621
  %1625 = tail call i32 @llvm.smax.i32(i32 %1622, i32 1)
  br label %1626

1626:                                             ; preds = %1624, %1626
  %1627 = phi i32 [ %1628, %1626 ], [ 0, %1624 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1628 = add nuw nsw i32 %1627, 1
  %1629 = icmp eq i32 %1628, %1625
  br i1 %1629, label %1630, label %1626, !llvm.loop !80

1630:                                             ; preds = %1626, %1621
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #17
  %1631 = add i32 %2, 4
  tail call void @pp_base_newline(ptr noundef %0) #17
  %1632 = icmp sgt i32 %2, -4
  br i1 %1632, label %1633, label %1639

1633:                                             ; preds = %1630
  %1634 = tail call i32 @llvm.smax.i32(i32 %1631, i32 1)
  br label %1635

1635:                                             ; preds = %1633, %1635
  %1636 = phi i32 [ %1637, %1635 ], [ 0, %1633 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1637 = add nuw nsw i32 %1636, 1
  %1638 = icmp eq i32 %1637, %1634
  br i1 %1638, label %1639, label %1635, !llvm.loop !80

1639:                                             ; preds = %1635, %1630
  %1640 = load ptr, ptr %1618, align 8, !tbaa !46
  %1641 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1640, i32 noundef %1631, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_newline(ptr noundef %0) #17
  %1642 = icmp sgt i32 %2, -2
  br i1 %1642, label %1643, label %1649

1643:                                             ; preds = %1639
  %1644 = tail call i32 @llvm.smax.i32(i32 %1622, i32 1)
  br label %1645

1645:                                             ; preds = %1643, %1645
  %1646 = phi i32 [ %1647, %1645 ], [ 0, %1643 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1647 = add nuw nsw i32 %1646, 1
  %1648 = icmp eq i32 %1647, %1644
  br i1 %1648, label %1649, label %1645, !llvm.loop !80

1649:                                             ; preds = %1645, %1639
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #17
  br label %1902

1650:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.143) #17
  %1651 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1652 = load ptr, ptr %1651, align 8, !tbaa !46
  tail call void @dump_omp_clauses(ptr noundef %0, ptr noundef %1652, i32 noundef %2, i32 noundef %3)
  br label %1614

1653:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.144) #17
  %1654 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1655 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1656 = load ptr, ptr %1655, align 8, !tbaa !46
  tail call void @dump_omp_clauses(ptr noundef %0, ptr noundef %1656, i32 noundef %2, i32 noundef %3)
  %1657 = and i32 %3, 2
  %1658 = icmp eq i32 %1657, 0
  br i1 %1658, label %1659, label %1902

1659:                                             ; preds = %1653
  %1660 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 2
  %1661 = load ptr, ptr %1660, align 8, !tbaa !46
  %1662 = icmp eq ptr %1661, null
  br i1 %1662, label %1683, label %1663

1663:                                             ; preds = %1659
  tail call void @pp_base_newline(ptr noundef %0) #17
  %1664 = icmp sgt i32 %2, -2
  br i1 %1664, label %1665, label %1671

1665:                                             ; preds = %1663
  %1666 = add i32 %2, 1
  br label %1667

1667:                                             ; preds = %1665, %1667
  %1668 = phi i32 [ %1669, %1667 ], [ 0, %1665 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1669 = add nuw i32 %1668, 1
  %1670 = icmp eq i32 %1668, %1666
  br i1 %1670, label %1671, label %1667, !llvm.loop !80

1671:                                             ; preds = %1667, %1663
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #17
  %1672 = add i32 %2, 4
  tail call void @pp_base_newline(ptr noundef %0) #17
  %1673 = icmp sgt i32 %2, -4
  br i1 %1673, label %1674, label %1680

1674:                                             ; preds = %1671
  %1675 = tail call i32 @llvm.smax.i32(i32 %1672, i32 1)
  br label %1676

1676:                                             ; preds = %1674, %1676
  %1677 = phi i32 [ %1678, %1676 ], [ 0, %1674 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1678 = add nuw nsw i32 %1677, 1
  %1679 = icmp eq i32 %1678, %1675
  br i1 %1679, label %1680, label %1676, !llvm.loop !80

1680:                                             ; preds = %1676, %1671
  %1681 = load ptr, ptr %1660, align 8, !tbaa !46
  %1682 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1681, i32 noundef %1672, i32 noundef %3, i8 noundef zeroext 0)
  br label %1683

1683:                                             ; preds = %1680, %1659
  %1684 = phi i32 [ %1672, %1680 ], [ %2, %1659 ]
  %1685 = add nsw i32 %1684, -2
  %1686 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %1687 = load ptr, ptr %1686, align 8, !tbaa !46
  %1688 = getelementptr inbounds %struct.tree_vec, ptr %1687, i64 0, i32 1
  %1689 = load i32, ptr %1688, align 8, !tbaa !46
  %1690 = icmp sgt i32 %1689, 0
  br i1 %1690, label %1691, label %1725

1691:                                             ; preds = %1683
  %1692 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 2
  %1693 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 1
  br label %1694

1694:                                             ; preds = %1691, %1705
  %1695 = phi i64 [ 0, %1691 ], [ %1718, %1705 ]
  %1696 = phi i32 [ %1684, %1691 ], [ %1724, %1705 ]
  %1697 = phi i32 [ %1685, %1691 ], [ %1699, %1705 ]
  %1698 = tail call i32 @llvm.smax.i32(i32 %1696, i32 1)
  %1699 = add nsw i32 %1697, 2
  tail call void @pp_base_newline(ptr noundef %0) #17
  %1700 = icmp sgt i32 %1697, -2
  br i1 %1700, label %1701, label %1705

1701:                                             ; preds = %1694, %1701
  %1702 = phi i32 [ %1703, %1701 ], [ 0, %1694 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1703 = add nuw nsw i32 %1702, 1
  %1704 = icmp eq i32 %1703, %1698
  br i1 %1704, label %1705, label %1701, !llvm.loop !80

1705:                                             ; preds = %1701, %1694
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.145) #17
  %1706 = load ptr, ptr %1686, align 8, !tbaa !46
  %1707 = getelementptr inbounds %struct.tree_vec, ptr %1706, i64 0, i32 2, i64 %1695
  %1708 = load ptr, ptr %1707, align 8, !tbaa !46
  %1709 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1708, i32 noundef %1699, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.146) #17
  %1710 = load ptr, ptr %1692, align 8, !tbaa !46
  %1711 = getelementptr inbounds %struct.tree_vec, ptr %1710, i64 0, i32 2, i64 %1695
  %1712 = load ptr, ptr %1711, align 8, !tbaa !46
  %1713 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1712, i32 noundef %1699, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.146) #17
  %1714 = load ptr, ptr %1693, align 8, !tbaa !46
  %1715 = getelementptr inbounds %struct.tree_vec, ptr %1714, i64 0, i32 2, i64 %1695
  %1716 = load ptr, ptr %1715, align 8, !tbaa !46
  %1717 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1716, i32 noundef %1699, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.52) #17
  %1718 = add nuw nsw i64 %1695, 1
  %1719 = load ptr, ptr %1686, align 8, !tbaa !46
  %1720 = getelementptr inbounds %struct.tree_vec, ptr %1719, i64 0, i32 1
  %1721 = load i32, ptr %1720, align 8, !tbaa !46
  %1722 = sext i32 %1721 to i64
  %1723 = icmp slt i64 %1718, %1722
  %1724 = add i32 %1696, 2
  br i1 %1723, label %1694, label %1725, !llvm.loop !87

1725:                                             ; preds = %1705, %1683
  %1726 = phi i32 [ %1685, %1683 ], [ %1699, %1705 ]
  %1727 = load ptr, ptr %1654, align 8, !tbaa !46
  %1728 = icmp eq ptr %1727, null
  br i1 %1728, label %1758, label %1729

1729:                                             ; preds = %1725
  %1730 = add i32 %1726, 2
  tail call void @pp_base_newline(ptr noundef %0) #17
  %1731 = icmp sgt i32 %1726, -2
  br i1 %1731, label %1732, label %1738

1732:                                             ; preds = %1729
  %1733 = tail call i32 @llvm.smax.i32(i32 %1730, i32 1)
  br label %1734

1734:                                             ; preds = %1732, %1734
  %1735 = phi i32 [ %1736, %1734 ], [ 0, %1732 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1736 = add nuw nsw i32 %1735, 1
  %1737 = icmp eq i32 %1736, %1733
  br i1 %1737, label %1738, label %1734, !llvm.loop !80

1738:                                             ; preds = %1734, %1729
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #17
  %1739 = add i32 %1726, 4
  tail call void @pp_base_newline(ptr noundef %0) #17
  %1740 = icmp sgt i32 %1726, -4
  br i1 %1740, label %1741, label %1747

1741:                                             ; preds = %1738
  %1742 = tail call i32 @llvm.smax.i32(i32 %1739, i32 1)
  br label %1743

1743:                                             ; preds = %1741, %1743
  %1744 = phi i32 [ %1745, %1743 ], [ 0, %1741 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1745 = add nuw nsw i32 %1744, 1
  %1746 = icmp eq i32 %1745, %1742
  br i1 %1746, label %1747, label %1743, !llvm.loop !80

1747:                                             ; preds = %1743, %1738
  %1748 = load ptr, ptr %1654, align 8, !tbaa !46
  %1749 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1748, i32 noundef %1739, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_newline(ptr noundef %0) #17
  %1750 = icmp sgt i32 %1726, -2
  br i1 %1750, label %1751, label %1757

1751:                                             ; preds = %1747
  %1752 = tail call i32 @llvm.smax.i32(i32 %1730, i32 1)
  br label %1753

1753:                                             ; preds = %1751, %1753
  %1754 = phi i32 [ %1755, %1753 ], [ 0, %1751 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1755 = add nuw nsw i32 %1754, 1
  %1756 = icmp eq i32 %1755, %1752
  br i1 %1756, label %1757, label %1753, !llvm.loop !80

1757:                                             ; preds = %1753, %1747
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #17
  br label %1758

1758:                                             ; preds = %1757, %1725
  %1759 = load ptr, ptr %1686, align 8, !tbaa !46
  %1760 = getelementptr inbounds %struct.tree_vec, ptr %1759, i64 0, i32 1
  %1761 = load i32, ptr %1760, align 8, !tbaa !46
  %1762 = add i32 %1726, 2
  %1763 = shl i32 %1761, 1
  %1764 = sub i32 %1762, %1763
  %1765 = load ptr, ptr %1660, align 8, !tbaa !46
  %1766 = icmp eq ptr %1765, null
  br i1 %1766, label %1902, label %1767

1767:                                             ; preds = %1758
  %1768 = add nsw i32 %1764, -4
  tail call void @pp_base_newline(ptr noundef %0) #17
  %1769 = icmp sgt i32 %1764, 2
  br i1 %1769, label %1770, label %1776

1770:                                             ; preds = %1767
  %1771 = add nsw i32 %1764, -3
  br label %1772

1772:                                             ; preds = %1770, %1772
  %1773 = phi i32 [ %1774, %1772 ], [ 0, %1770 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1774 = add nuw nsw i32 %1773, 1
  %1775 = icmp eq i32 %1773, %1771
  br i1 %1775, label %1776, label %1772, !llvm.loop !80

1776:                                             ; preds = %1772, %1767
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #17
  br label %1902

1777:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.147) #17
  %1778 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1779 = load ptr, ptr %1778, align 8, !tbaa !46
  tail call void @dump_omp_clauses(ptr noundef %0, ptr noundef %1779, i32 noundef %2, i32 noundef %3)
  br label %1614

1780:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.148) #17
  br label %1614

1781:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.149) #17
  br label %1614

1782:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.150) #17
  br label %1614

1783:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.151) #17
  %1784 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1785 = load ptr, ptr %1784, align 8, !tbaa !46
  %1786 = icmp eq ptr %1785, null
  br i1 %1786, label %1614, label %1787

1787:                                             ; preds = %1783
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #17
  %1788 = load ptr, ptr %1784, align 8, !tbaa !46
  %1789 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1788, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #17
  br label %1614

1790:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.152) #17
  tail call void @pp_base_newline(ptr noundef %0) #17
  %1791 = icmp sgt i32 %2, -2
  br i1 %1791, label %1792, label %1798

1792:                                             ; preds = %1790
  %1793 = add i32 %2, 1
  br label %1794

1794:                                             ; preds = %1792, %1794
  %1795 = phi i32 [ %1796, %1794 ], [ 0, %1792 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1796 = add nuw i32 %1795, 1
  %1797 = icmp eq i32 %1795, %1793
  br i1 %1797, label %1798, label %1794, !llvm.loop !80

1798:                                             ; preds = %1794, %1790
  %1799 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1800 = load ptr, ptr %1799, align 8, !tbaa !46
  %1801 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1800, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 61) #17
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %1802 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1803 = load ptr, ptr %1802, align 8, !tbaa !46
  %1804 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1803, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %1902

1805:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.153) #17
  %1806 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1807 = load ptr, ptr %1806, align 8, !tbaa !46
  tail call void @dump_omp_clauses(ptr noundef %0, ptr noundef %1807, i32 noundef %2, i32 noundef %3)
  br label %1614

1808:                                             ; preds = %44
  tail call fastcc void @dump_omp_clause(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %1902

1809:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.154) #17
  %1810 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1811 = load ptr, ptr %1810, align 8, !tbaa !46
  %1812 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1811, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.140) #17
  br label %1902

1813:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.155) #17
  %1814 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1815 = load ptr, ptr %1814, align 8, !tbaa !46
  %1816 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1815, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.140) #17
  br label %1902

1817:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.156) #17
  %1818 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1819 = load ptr, ptr %1818, align 8, !tbaa !46
  %1820 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1819, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.140) #17
  br label %1902

1821:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.157) #17
  %1822 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1823 = load ptr, ptr %1822, align 8, !tbaa !46
  %1824 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1823, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.34) #17
  %1825 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1826 = load ptr, ptr %1825, align 8, !tbaa !46
  %1827 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1826, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.140) #17
  br label %1902

1828:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.158) #17
  %1829 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1830 = load ptr, ptr %1829, align 8, !tbaa !46
  %1831 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1830, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.34) #17
  %1832 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1833 = load ptr, ptr %1832, align 8, !tbaa !46
  %1834 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1833, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.140) #17
  br label %1902

1835:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.159) #17
  %1836 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1837 = load ptr, ptr %1836, align 8, !tbaa !46
  %1838 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1837, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.140) #17
  br label %1902

1839:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.160) #17
  %1840 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1841 = load ptr, ptr %1840, align 8, !tbaa !46
  %1842 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1841, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.140) #17
  br label %1902

1843:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.161) #17
  %1844 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1845 = load ptr, ptr %1844, align 8, !tbaa !46
  %1846 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1845, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.140) #17
  br label %1902

1847:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.162) #17
  %1848 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1849 = load ptr, ptr %1848, align 8, !tbaa !46
  %1850 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1849, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.140) #17
  br label %1902

1851:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.163) #17
  %1852 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1853 = load ptr, ptr %1852, align 8, !tbaa !46
  %1854 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1853, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.34) #17
  %1855 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1856 = load ptr, ptr %1855, align 8, !tbaa !46
  %1857 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1856, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.140) #17
  br label %1902

1858:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.164) #17
  %1859 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1860 = load ptr, ptr %1859, align 8, !tbaa !46
  %1861 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1860, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.34) #17
  %1862 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1863 = load ptr, ptr %1862, align 8, !tbaa !46
  %1864 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1863, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.140) #17
  br label %1902

1865:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.165) #17
  %1866 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1867 = load ptr, ptr %1866, align 8, !tbaa !46
  %1868 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1867, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.34) #17
  %1869 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1870 = load ptr, ptr %1869, align 8, !tbaa !46
  %1871 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1870, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.140) #17
  br label %1902

1872:                                             ; preds = %44
  tail call fastcc void @dump_block_node(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %1902

1873:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.166) #17
  %1874 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1875 = load ptr, ptr %1874, align 8, !tbaa !46
  %1876 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1875, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.34) #17
  %1877 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1878 = load ptr, ptr %1877, align 8, !tbaa !46
  %1879 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1878, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.140) #17
  br label %1902

1880:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.167) #17
  %1881 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1882 = load ptr, ptr %1881, align 8, !tbaa !46
  %1883 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1882, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.34) #17
  %1884 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1885 = load ptr, ptr %1884, align 8, !tbaa !46
  %1886 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1885, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.140) #17
  br label %1902

1887:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.168) #17
  %1888 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1889 = load ptr, ptr %1888, align 8, !tbaa !46
  %1890 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1889, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.34) #17
  %1891 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1892 = load ptr, ptr %1891, align 8, !tbaa !46
  %1893 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1892, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.140) #17
  br label %1902

1894:                                             ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.169) #17
  %1895 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %1896 = load ptr, ptr %1895, align 8, !tbaa !46
  %1897 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1896, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.34) #17
  %1898 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %1899 = load ptr, ptr %1898, align 8, !tbaa !46
  %1900 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1899, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.140) #17
  br label %1902

1901:                                             ; preds = %44
  tail call fastcc void @do_niy(ptr noundef %0, ptr noundef %1)
  br label %1902

1902:                                             ; preds = %710, %307, %73, %696, %302, %47, %1314, %1482, %1319, %588, %695, %1653, %1776, %1758, %1614, %1617, %1649, %1390, %1459, %1329, %1361, %1041, %1043, %917, %952, %815, %810, %853, %867, %906, %818, %667, %689, %334, %339, %336, %288, %291, %248, %252, %137, %136, %150, %151, %145, %157, %172, %192, %180, %168, %153, %126, %82, %97, %1550, %1554, %1551, %1372, %1384, %1380, %1322, %1328, %1127, %1132, %1069, %1073, %1008, %1012, %907, %592, %536, %542, %546, %490, %504, %501, %482, %469, %478, %479, %474, %347, %379, %371, %200, %220, %1901, %1894, %1887, %1880, %1873, %1872, %1865, %1858, %1851, %1847, %1843, %1839, %1835, %1828, %1821, %1817, %1813, %1809, %1808, %1798, %1601, %1591, %1581, %1571, %1570, %1569, %1562, %1555, %1526, %1525, %1506, %1483, %1386, %1362, %1307, %1274, %1241, %1171, %1167, %1163, %1159, %1152, %1148, %1144, %1140, %1133, %1111, %1107, %1100, %1093, %1088, %1018, %1014, %1013, %736, %729, %725, %663, %548, %511, %510, %464, %463, %434, %416, %409, %406, %405, %340, %253, %78, %53, %52
  %1903 = phi i1 [ %16, %1901 ], [ %16, %1894 ], [ %16, %1887 ], [ %16, %1880 ], [ %16, %1873 ], [ %16, %1872 ], [ %16, %1865 ], [ %16, %1858 ], [ %16, %1851 ], [ %16, %1847 ], [ %16, %1843 ], [ %16, %1839 ], [ %16, %1835 ], [ %16, %1828 ], [ %16, %1821 ], [ %16, %1817 ], [ %16, %1813 ], [ %16, %1809 ], [ false, %1808 ], [ %16, %1798 ], [ %16, %1601 ], [ %16, %1591 ], [ %16, %1581 ], [ %16, %1571 ], [ %16, %1570 ], [ %16, %1569 ], [ %16, %1562 ], [ %16, %1555 ], [ %16, %1550 ], [ %16, %1554 ], [ %16, %1551 ], [ %16, %1526 ], [ %16, %1525 ], [ %16, %1506 ], [ %16, %1483 ], [ %16, %1386 ], [ %16, %1380 ], [ %16, %1384 ], [ %16, %1372 ], [ %16, %1362 ], [ %16, %1328 ], [ %16, %1322 ], [ false, %1307 ], [ false, %1274 ], [ false, %1241 ], [ %16, %1171 ], [ %16, %1167 ], [ %16, %1163 ], [ %16, %1159 ], [ %16, %1152 ], [ %16, %1148 ], [ %16, %1144 ], [ %16, %1140 ], [ %16, %1133 ], [ %16, %1132 ], [ %16, %1127 ], [ %16, %1111 ], [ %16, %1107 ], [ %16, %1100 ], [ %16, %1093 ], [ %16, %1088 ], [ %16, %1073 ], [ %16, %1069 ], [ %16, %1018 ], [ %16, %1014 ], [ %16, %1013 ], [ %16, %1012 ], [ %16, %1008 ], [ %16, %907 ], [ %16, %736 ], [ %16, %729 ], [ %16, %725 ], [ %16, %663 ], [ %16, %592 ], [ %16, %548 ], [ %16, %546 ], [ %16, %542 ], [ %16, %536 ], [ %16, %511 ], [ %16, %510 ], [ %16, %482 ], [ %16, %490 ], [ %16, %501 ], [ %16, %504 ], [ %16, %469 ], [ %16, %474 ], [ %16, %478 ], [ %16, %479 ], [ %16, %464 ], [ %16, %463 ], [ %16, %434 ], [ %16, %416 ], [ %16, %409 ], [ %16, %406 ], [ %16, %405 ], [ %16, %347 ], [ %16, %379 ], [ %16, %371 ], [ %16, %340 ], [ %16, %253 ], [ %16, %200 ], [ %16, %220 ], [ %16, %78 ], [ %16, %53 ], [ %16, %52 ], [ %16, %97 ], [ %16, %82 ], [ %16, %126 ], [ %16, %153 ], [ %16, %168 ], [ %16, %180 ], [ %16, %192 ], [ %16, %172 ], [ %16, %157 ], [ %16, %145 ], [ %16, %151 ], [ %16, %150 ], [ %16, %136 ], [ %16, %137 ], [ %16, %252 ], [ %16, %248 ], [ %16, %291 ], [ %16, %288 ], [ %16, %336 ], [ %16, %339 ], [ %16, %334 ], [ %16, %689 ], [ %16, %667 ], [ false, %818 ], [ false, %906 ], [ false, %867 ], [ false, %853 ], [ false, %810 ], [ false, %815 ], [ false, %952 ], [ false, %917 ], [ %16, %1043 ], [ %16, %1041 ], [ false, %1361 ], [ false, %1329 ], [ false, %1459 ], [ false, %1390 ], [ false, %1649 ], [ false, %1617 ], [ false, %1614 ], [ false, %1758 ], [ false, %1776 ], [ false, %1653 ], [ %16, %695 ], [ %16, %588 ], [ %16, %1319 ], [ %16, %1482 ], [ %16, %1314 ], [ %16, %47 ], [ %16, %302 ], [ %16, %696 ], [ %16, %73 ], [ %16, %307 ], [ %16, %710 ]
  %1904 = phi i8 [ %4, %1901 ], [ %4, %1894 ], [ %4, %1887 ], [ %4, %1880 ], [ %4, %1873 ], [ %4, %1872 ], [ %4, %1865 ], [ %4, %1858 ], [ %4, %1851 ], [ %4, %1847 ], [ %4, %1843 ], [ %4, %1839 ], [ %4, %1835 ], [ %4, %1828 ], [ %4, %1821 ], [ %4, %1817 ], [ %4, %1813 ], [ %4, %1809 ], [ %4, %1808 ], [ %4, %1798 ], [ %4, %1601 ], [ %4, %1591 ], [ %4, %1581 ], [ 0, %1571 ], [ %4, %1570 ], [ %4, %1569 ], [ %4, %1562 ], [ %4, %1555 ], [ %4, %1550 ], [ %4, %1554 ], [ %4, %1551 ], [ %4, %1526 ], [ %4, %1525 ], [ %4, %1506 ], [ %4, %1483 ], [ %4, %1386 ], [ %4, %1380 ], [ %4, %1384 ], [ %4, %1372 ], [ %4, %1362 ], [ %4, %1328 ], [ %4, %1322 ], [ %4, %1307 ], [ %4, %1274 ], [ %4, %1241 ], [ %4, %1171 ], [ %4, %1167 ], [ %4, %1163 ], [ %4, %1159 ], [ %4, %1152 ], [ %4, %1148 ], [ %4, %1144 ], [ %4, %1140 ], [ %4, %1133 ], [ %4, %1132 ], [ %4, %1127 ], [ %4, %1111 ], [ %4, %1107 ], [ %4, %1100 ], [ %4, %1093 ], [ %4, %1088 ], [ %4, %1073 ], [ %4, %1069 ], [ %4, %1018 ], [ %4, %1014 ], [ %4, %1013 ], [ %4, %1012 ], [ %4, %1008 ], [ %4, %907 ], [ 0, %736 ], [ %4, %729 ], [ %4, %725 ], [ %4, %663 ], [ %4, %592 ], [ %4, %548 ], [ %4, %546 ], [ %4, %542 ], [ %4, %536 ], [ %4, %511 ], [ %4, %510 ], [ %4, %482 ], [ %4, %490 ], [ %4, %501 ], [ %4, %504 ], [ %4, %469 ], [ %4, %474 ], [ %4, %478 ], [ %4, %479 ], [ %4, %464 ], [ %4, %463 ], [ %4, %434 ], [ %4, %416 ], [ %4, %409 ], [ %4, %406 ], [ %4, %405 ], [ %4, %347 ], [ %4, %379 ], [ %4, %371 ], [ %4, %340 ], [ %4, %253 ], [ %4, %200 ], [ %4, %220 ], [ %4, %78 ], [ %4, %53 ], [ %4, %52 ], [ %4, %97 ], [ %4, %82 ], [ %4, %126 ], [ %4, %153 ], [ %4, %168 ], [ %4, %180 ], [ %4, %192 ], [ %4, %172 ], [ %4, %157 ], [ %4, %145 ], [ %4, %151 ], [ %4, %150 ], [ %4, %136 ], [ %4, %137 ], [ %4, %252 ], [ %4, %248 ], [ %4, %291 ], [ %4, %288 ], [ %4, %336 ], [ %4, %339 ], [ %4, %334 ], [ %4, %689 ], [ %4, %667 ], [ %4, %818 ], [ %4, %906 ], [ %4, %867 ], [ %4, %853 ], [ %4, %810 ], [ %4, %815 ], [ %4, %952 ], [ %4, %917 ], [ %4, %1043 ], [ %4, %1041 ], [ %4, %1361 ], [ %4, %1329 ], [ %4, %1459 ], [ %4, %1390 ], [ %4, %1649 ], [ %4, %1617 ], [ %4, %1614 ], [ %4, %1758 ], [ %4, %1776 ], [ %4, %1653 ], [ %4, %695 ], [ %4, %588 ], [ %4, %1319 ], [ %4, %1482 ], [ %4, %1314 ], [ %4, %47 ], [ %4, %302 ], [ %4, %696 ], [ %4, %73 ], [ %4, %307 ], [ %4, %710 ]
  %1905 = phi i32 [ %2, %1901 ], [ %2, %1894 ], [ %2, %1887 ], [ %2, %1880 ], [ %2, %1873 ], [ %2, %1872 ], [ %2, %1865 ], [ %2, %1858 ], [ %2, %1851 ], [ %2, %1847 ], [ %2, %1843 ], [ %2, %1839 ], [ %2, %1835 ], [ %2, %1828 ], [ %2, %1821 ], [ %2, %1817 ], [ %2, %1813 ], [ %2, %1809 ], [ %2, %1808 ], [ %2, %1798 ], [ %2, %1601 ], [ %2, %1591 ], [ %2, %1581 ], [ %2, %1571 ], [ %2, %1570 ], [ %2, %1569 ], [ %2, %1562 ], [ %2, %1555 ], [ %2, %1550 ], [ %2, %1554 ], [ %2, %1551 ], [ %2, %1526 ], [ %2, %1525 ], [ %2, %1506 ], [ %2, %1483 ], [ %2, %1386 ], [ %2, %1380 ], [ %2, %1384 ], [ %2, %1372 ], [ %2, %1362 ], [ %2, %1328 ], [ %2, %1322 ], [ %2, %1307 ], [ %2, %1274 ], [ %2, %1241 ], [ %2, %1171 ], [ %2, %1167 ], [ %2, %1163 ], [ %2, %1159 ], [ %2, %1152 ], [ %2, %1148 ], [ %2, %1144 ], [ %2, %1140 ], [ %2, %1133 ], [ %2, %1132 ], [ %2, %1127 ], [ %2, %1111 ], [ %2, %1107 ], [ %2, %1100 ], [ %2, %1093 ], [ %2, %1088 ], [ %2, %1073 ], [ %2, %1069 ], [ %2, %1018 ], [ %2, %1014 ], [ %2, %1013 ], [ %2, %1012 ], [ %2, %1008 ], [ %2, %907 ], [ %2, %736 ], [ %2, %729 ], [ %2, %725 ], [ %2, %663 ], [ %2, %592 ], [ %2, %548 ], [ %2, %546 ], [ %2, %542 ], [ %2, %536 ], [ %2, %511 ], [ %2, %510 ], [ %2, %482 ], [ %2, %490 ], [ %2, %501 ], [ %2, %504 ], [ %2, %469 ], [ %2, %474 ], [ %2, %478 ], [ %2, %479 ], [ %2, %464 ], [ %2, %463 ], [ %2, %434 ], [ %2, %416 ], [ %2, %409 ], [ %2, %406 ], [ %2, %405 ], [ %2, %347 ], [ %2, %379 ], [ %2, %371 ], [ %2, %340 ], [ %2, %253 ], [ %2, %200 ], [ %2, %220 ], [ %2, %78 ], [ %2, %53 ], [ %2, %52 ], [ %2, %97 ], [ %2, %82 ], [ %2, %126 ], [ %2, %153 ], [ %2, %168 ], [ %2, %180 ], [ %2, %192 ], [ %2, %172 ], [ %2, %157 ], [ %2, %145 ], [ %2, %151 ], [ %2, %150 ], [ %2, %136 ], [ %2, %137 ], [ %2, %252 ], [ %2, %248 ], [ %2, %291 ], [ %2, %288 ], [ %2, %336 ], [ %2, %339 ], [ %2, %334 ], [ %2, %689 ], [ %2, %667 ], [ %2, %818 ], [ %2, %906 ], [ %2, %867 ], [ %2, %853 ], [ %2, %810 ], [ %2, %815 ], [ %2, %952 ], [ %2, %917 ], [ %2, %1043 ], [ %2, %1041 ], [ %2, %1361 ], [ %2, %1329 ], [ %2, %1459 ], [ %2, %1390 ], [ %2, %1649 ], [ %2, %1617 ], [ %2, %1614 ], [ %1764, %1758 ], [ %1768, %1776 ], [ %2, %1653 ], [ %2, %695 ], [ %2, %588 ], [ %2, %1319 ], [ %2, %1482 ], [ %2, %1314 ], [ %2, %47 ], [ %2, %302 ], [ %2, %696 ], [ %2, %73 ], [ %2, %307 ], [ %2, %710 ]
  %1906 = icmp ne i8 %1904, 0
  %1907 = and i1 %1903, %1906
  br i1 %1907, label %1908, label %1909

1908:                                             ; preds = %1902
  call void @pp_base_character(ptr noundef %0, i32 noundef 59) #17
  br label %1909

1909:                                             ; preds = %1908, %1902
  %1910 = and i32 %3, 32768
  %1911 = icmp eq i32 %1910, 0
  br i1 %1911, label %1912, label %1913

1912:                                             ; preds = %1909
  call void @pp_write_text_to_stream(ptr noundef %0) #17
  br label %1913

1913:                                             ; preds = %1909, %1912, %5
  %1914 = phi i32 [ %2, %5 ], [ %1905, %1912 ], [ %1905, %1909 ]
  ret i32 %1914
}

declare void @pp_base_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @print_generic_stmt_indented(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !34 {
  %5 = load i1, ptr @initialized, align 4
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call void @pp_construct(ptr noundef nonnull @buffer, ptr noundef null, i32 noundef 0) #17
  store i8 1, ptr getelementptr inbounds (%struct.pretty_print_info, ptr @buffer, i64 0, i32 8), align 1, !tbaa !54
  store i8 0, ptr getelementptr inbounds (%struct.pretty_print_info, ptr @buffer, i64 0, i32 9), align 2, !tbaa !57
  store i1 true, ptr @initialized, align 4
  br label %7

7:                                                ; preds = %4, %6
  %8 = load ptr, ptr @buffer, align 8, !tbaa !58
  %9 = getelementptr inbounds %struct.output_buffer, ptr %8, i64 0, i32 4
  store ptr %0, ptr %9, align 8, !tbaa !59
  %10 = icmp sgt i32 %3, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %7, %11
  %12 = phi i32 [ %13, %11 ], [ 0, %7 ]
  tail call void @pp_base_character(ptr noundef nonnull @buffer, i32 noundef 32) #17
  %13 = add nuw nsw i32 %12, 1
  %14 = icmp eq i32 %13, %3
  br i1 %14, label %15, label %11, !llvm.loop !88

15:                                               ; preds = %11, %7
  %16 = tail call i32 @dump_generic_node(ptr noundef nonnull @buffer, ptr noundef %1, i32 noundef %3, i32 noundef %2, i8 noundef zeroext 1)
  tail call void @pp_base_flush(ptr noundef nonnull @buffer) #17
  ret void
}

declare void @pp_base_character(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_omp_clauses(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !34 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %4
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  tail call fastcc void @dump_omp_clause(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  %7 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %6, %10
  %11 = phi ptr [ %13, %10 ], [ %8, %6 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  tail call fastcc void @dump_omp_clause(ptr noundef %0, ptr noundef nonnull %11, i32 noundef %2, i32 noundef %3)
  %12 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %10, !llvm.loop !89

15:                                               ; preds = %10, %6, %4
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_omp_clause(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = getelementptr inbounds %struct.tree_omp_clause, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !46
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
  %13 = phi ptr [ @.str.231, %11 ], [ @.str.230, %10 ], [ @.str.229, %9 ], [ @.str.228, %8 ], [ @.str.227, %7 ], [ @.str.226, %4 ]
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %13) #17
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #17
  %14 = getelementptr inbounds %struct.tree_omp_clause, ptr %1, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %15, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #17
  br label %67

17:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.232) #17
  %18 = getelementptr inbounds %struct.tree_omp_clause, ptr %1, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !46
  %20 = tail call ptr @op_symbol_code(i32 noundef %19)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %20) #17
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 58) #17
  %21 = getelementptr inbounds %struct.tree_omp_clause, ptr %1, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %22, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #17
  br label %67

24:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.233) #17
  %25 = getelementptr inbounds %struct.tree_omp_clause, ptr %1, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %26, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #17
  br label %67

28:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.234) #17
  %29 = getelementptr inbounds %struct.tree_omp_clause, ptr %1, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %30, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #17
  br label %67

32:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.235) #17
  br label %67

33:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.236) #17
  br label %67

34:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.237) #17
  %35 = getelementptr inbounds %struct.tree_omp_clause, ptr %1, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !46
  switch i32 %36, label %41 [
    i32 0, label %42
    i32 1, label %37
    i32 2, label %38
    i32 3, label %39
    i32 4, label %40
  ]

37:                                               ; preds = %34
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.227) #17
  br label %42

38:                                               ; preds = %34
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.238) #17
  br label %42

39:                                               ; preds = %34
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.226) #17
  br label %42

40:                                               ; preds = %34
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.228) #17
  br label %42

41:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.239, i32 noundef 366, ptr noundef nonnull @.str.240) #17
  br label %42

42:                                               ; preds = %41, %40, %39, %38, %37, %34
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #17
  br label %67

43:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.241) #17
  %44 = getelementptr inbounds %struct.tree_omp_clause, ptr %1, i64 0, i32 3
  %45 = load i32, ptr %44, align 8, !tbaa !46
  switch i32 %45, label %51 [
    i32 0, label %46
    i32 1, label %47
    i32 2, label %48
    i32 4, label %49
    i32 3, label %50
  ]

46:                                               ; preds = %43
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.242) #17
  br label %52

47:                                               ; preds = %43
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.243) #17
  br label %52

48:                                               ; preds = %43
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.244) #17
  br label %52

49:                                               ; preds = %43
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.245) #17
  br label %52

50:                                               ; preds = %43
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.246) #17
  br label %52

51:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.239, i32 noundef 391, ptr noundef nonnull @.str.240) #17
  br label %52

52:                                               ; preds = %51, %50, %49, %48, %47, %46
  %53 = getelementptr inbounds %struct.tree_omp_clause, ptr %1, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !46
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #17
  %57 = load ptr, ptr %53, align 8, !tbaa !46
  %58 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %57, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %59

59:                                               ; preds = %56, %52
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #17
  br label %67

60:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.247) #17
  br label %67

61:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.248) #17
  %62 = getelementptr inbounds %struct.tree_omp_clause, ptr %1, i64 0, i32 6
  %63 = load ptr, ptr %62, align 8, !tbaa !46
  %64 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %63, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #17
  br label %67

65:                                               ; preds = %4
  %66 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %67

67:                                               ; preds = %65, %61, %60, %59, %42, %33, %32, %28, %24, %17, %12
  ret void
}

declare void @pp_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_location(ptr noundef %0, i32 noundef %1) unnamed_addr #9 !prof !34 {
  %3 = alloca %struct.expanded_location, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %3, i32 noundef %1) #17
  call void @pp_base_character(ptr noundef %0, i32 noundef 91) #17
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %4) #17
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.225) #17
  br label %7

7:                                                ; preds = %2, %6
  %8 = load ptr, ptr %0, align 8, !tbaa !58
  %9 = getelementptr inbounds %struct.output_buffer, ptr %8, i64 0, i32 6
  %10 = getelementptr inbounds %struct.expanded_location, ptr %3, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !92
  %12 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %11)
  %13 = load ptr, ptr %0, align 8, !tbaa !58
  %14 = getelementptr inbounds %struct.output_buffer, ptr %13, i64 0, i32 6
  call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %14) #17
  call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.249) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret void
}

declare void @pp_base_string(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pp_base_tree_identifier(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_decl_name(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #9 !prof !34 {
  %4 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !46
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
  %14 = load i8, ptr %13, align 1, !tbaa !46
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @decl_assembler_name(ptr noundef nonnull %1) #17
  tail call void @pp_base_tree_identifier(ptr noundef %0, ptr noundef %21) #17
  br label %23

22:                                               ; preds = %16, %10, %7
  tail call void @pp_base_tree_identifier(ptr noundef %0, ptr noundef nonnull %5) #17
  br label %23

23:                                               ; preds = %20, %22, %3
  %24 = and i32 %2, 256
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load ptr, ptr %4, align 8, !tbaa !46
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %59

29:                                               ; preds = %26, %23
  %30 = load i64, ptr %1, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 30
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.tree_label_decl, ptr %1, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !46
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %0, ptr noundef nonnull @.str.250, i32 noundef %35) #17
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
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.251) #17
  br label %59

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %48 = load i32, ptr %47, align 4, !tbaa !46
  %49 = sub i32 0, %48
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %0, ptr noundef nonnull @.str.252, i32 noundef %49) #17
  br label %59

50:                                               ; preds = %38
  %51 = icmp eq i32 %40, 33
  %52 = and i32 %2, 1048576
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %51, i32 67, i32 68
  br i1 %53, label %56, label %55

55:                                               ; preds = %50
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %0, ptr noundef nonnull @.str.253, i32 noundef %54) #17
  br label %59

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !46
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %0, ptr noundef nonnull @.str.254, i32 noundef %54, i32 noundef %58) #17
  br label %59

59:                                               ; preds = %55, %56, %37, %45, %46, %26
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_function_declaration(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #17
  %5 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %40, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  %12 = load ptr, ptr @global_trees, align 16
  %13 = icmp eq ptr %6, %12
  %14 = select i1 %11, i1 true, i1 %13
  br i1 %14, label %40, label %22

15:                                               ; preds = %37
  %16 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = icmp eq ptr %17, null
  %19 = load ptr, ptr @global_trees, align 16
  %20 = icmp eq ptr %28, %19
  %21 = select i1 %18, i1 true, i1 %20
  br i1 %21, label %39, label %22, !llvm.loop !93

22:                                               ; preds = %8, %15
  %23 = phi ptr [ %16, %15 ], [ %9, %8 ]
  %24 = phi ptr [ %28, %15 ], [ %6, %8 ]
  %25 = getelementptr inbounds %struct.tree_list, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %26, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  %28 = load ptr, ptr %23, align 8, !tbaa !46
  %29 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %22
  %33 = load i64, ptr %30, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 2
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #17
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  br label %37

37:                                               ; preds = %36, %32, %22
  %38 = icmp eq ptr %28, null
  br i1 %38, label %41, label %15, !llvm.loop !93

39:                                               ; preds = %15
  br i1 %14, label %40, label %41

40:                                               ; preds = %8, %4, %39
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.255) #17
  br label %41

41:                                               ; preds = %37, %40, %39
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @do_niy(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !34 {
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.256) #17
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %6) #17
  %7 = load i64, ptr %1, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !50
  %11 = add i32 %10, -4
  %12 = icmp ult i32 %11, 7
  br i1 %12, label %13, label %42

13:                                               ; preds = %2
  %14 = icmp eq i32 %10, 9
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.tree_int_cst, ptr %17, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !46
  %20 = trunc i64 %19 to i32
  br label %25

21:                                               ; preds = %13
  %22 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %8
  %23 = load i8, ptr %22, align 1, !tbaa !46
  %24 = zext i8 %23 to i32
  br label %25

25:                                               ; preds = %15, %21
  %26 = phi i32 [ %20, %15 ], [ %24, %21 ]
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  %29 = zext nneg i32 %26 to i64
  br label %30

30:                                               ; preds = %28, %36
  %31 = phi i64 [ 0, %28 ], [ %40, %36 ]
  tail call void @pp_base_newline(ptr noundef %0) #17
  br label %32

32:                                               ; preds = %30, %32
  %33 = phi i32 [ 0, %30 ], [ %34, %32 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %34 = add nuw nsw i32 %33, 1
  %35 = icmp eq i32 %33, 0
  br i1 %35, label %32, label %36, !llvm.loop !80

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3, i64 %31
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %38, i32 noundef 2, i32 noundef 0, i8 noundef zeroext 0)
  %40 = add nuw nsw i64 %31, 1
  %41 = icmp eq i64 %40, %29
  br i1 %41, label %42, label %30, !llvm.loop !94

42:                                               ; preds = %36, %25, %2
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.257) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_array_domain(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 91) #17
  %5 = icmp eq ptr %1, null
  br i1 %5, label %35, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 13
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 14
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp ne ptr %8, null
  %12 = icmp ne ptr %10, null
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %29

14:                                               ; preds = %6
  %15 = tail call i32 @integer_zerop(ptr noundef nonnull %8) #17
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @host_integerp(ptr noundef nonnull %10, i32 noundef 0) #17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr %0, align 8, !tbaa !58
  %22 = getelementptr inbounds %struct.output_buffer, ptr %21, i64 0, i32 6
  %23 = getelementptr inbounds %struct.tree_int_cst, ptr %10, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !46
  %25 = add nsw i64 %24, 1
  %26 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) @.str.44, i64 noundef %25)
  %27 = load ptr, ptr %0, align 8, !tbaa !58
  %28 = getelementptr inbounds %struct.output_buffer, ptr %27, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %28) #17
  br label %36

29:                                               ; preds = %17, %14, %6
  br i1 %11, label %30, label %32

30:                                               ; preds = %29
  %31 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %8, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %32

32:                                               ; preds = %30, %29
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 58) #17
  br i1 %12, label %33, label %36

33:                                               ; preds = %32
  %34 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %10, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0)
  br label %36

35:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.258) #17
  br label %36

36:                                               ; preds = %20, %33, %32, %35
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 93) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @print_struct_decl(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = icmp sgt i32 %2, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %8, %10
  %11 = phi i32 [ %12, %10 ], [ 0, %8 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %12 = add nuw nsw i32 %11, 1
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %14, label %10, !llvm.loop !95

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
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %22) #17
  br label %23

23:                                               ; preds = %14, %19
  %24 = load ptr, ptr %5, align 8, !tbaa !46
  %25 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %24, i32 noundef %2, i32 noundef 0, i8 noundef zeroext 0)
  br label %26

26:                                               ; preds = %23, %4
  tail call void @pp_base_newline(ptr noundef %0) #17
  %27 = icmp sgt i32 %2, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %26, %28
  %29 = phi i32 [ %30, %28 ], [ 0, %26 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %30 = add nuw nsw i32 %29, 1
  %31 = icmp eq i32 %30, %2
  br i1 %31, label %32, label %28, !llvm.loop !96

32:                                               ; preds = %28, %26
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #17
  tail call void @pp_base_newline(ptr noundef %0) #17
  %33 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = add nsw i32 %2, 2
  br label %40

38:                                               ; preds = %54, %32
  %39 = icmp sgt i32 %2, 0
  br i1 %39, label %58, label %62

40:                                               ; preds = %36, %54
  %41 = phi ptr [ %34, %36 ], [ %56, %54 ]
  %42 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  %44 = icmp eq ptr %43, %1
  br i1 %44, label %54, label %45

45:                                               ; preds = %40
  %46 = load i64, ptr %43, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 10
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !46
  %52 = icmp eq ptr %51, %1
  br i1 %52, label %54, label %53

53:                                               ; preds = %49, %45
  tail call void @print_declaration(ptr noundef %0, ptr noundef nonnull %41, i32 noundef %37, i32 noundef %3)
  tail call void @pp_base_newline(ptr noundef %0) #17
  br label %54

54:                                               ; preds = %53, %49, %40
  %55 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !46
  %57 = icmp eq ptr %56, null
  br i1 %57, label %38, label %40, !llvm.loop !97

58:                                               ; preds = %38, %58
  %59 = phi i32 [ %60, %58 ], [ 0, %38 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %60 = add nuw nsw i32 %59, 1
  %61 = icmp eq i32 %60, %2
  br i1 %61, label %62, label %58, !llvm.loop !98

62:                                               ; preds = %58, %38
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #17
  ret void
}

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_sgn(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

declare zeroext i8 @real_isinf(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @real_isneg(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @real_isnan(ptr noundef) local_unnamed_addr #3

declare void @real_to_decimal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @fixed_to_decimal(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @pretty_print_string(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #9 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2, %25
  %5 = phi ptr [ %26, %25 ], [ %1, %2 ]
  %6 = load i8, ptr %5, align 1, !tbaa !46
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
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.271) #17
  br label %25

8:                                                ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.272) #17
  br label %25

9:                                                ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.273) #17
  br label %25

10:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.274) #17
  br label %25

11:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.275) #17
  br label %25

12:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.276) #17
  br label %25

13:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.277) #17
  br label %25

14:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.278) #17
  br label %25

15:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.279) #17
  br label %25

16:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.280) #17
  br label %25

17:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.281) #17
  br label %25

18:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.282) #17
  br label %25

19:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.283) #17
  br label %25

20:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.284) #17
  br label %25

21:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.285) #17
  br label %25

22:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.286) #17
  br label %25

23:                                               ; preds = %4
  %24 = sext i8 %6 to i32
  tail call void @pp_base_character(ptr noundef %0, i32 noundef %24) #17
  br label %25

25:                                               ; preds = %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7
  %26 = getelementptr inbounds i8, ptr %5, i64 1
  br label %4, !llvm.loop !99

27:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @op_prio(ptr noundef readonly %0) local_unnamed_addr #11 !prof !34 {
  br label %2

2:                                                ; preds = %8, %1
  %3 = phi ptr [ %0, %1 ], [ %10, %8 ]
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = load i64, ptr %3, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %11 [
    i16 120, label %8
    i16 117, label %8
  ]

8:                                                ; preds = %5, %5
  %9 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  br label %2

11:                                               ; preds = %5
  %12 = trunc i64 %6 to i32
  %13 = and i32 %12, 65535
  %14 = tail call i32 @op_code_prio(i32 noundef %13), !range !72
  br label %15

15:                                               ; preds = %2, %11
  %16 = phi i32 [ %14, %11 ], [ 9999, %2 ]
  ret i32 %16
}

declare ptr @component_ref_field_offset(ptr noundef) local_unnamed_addr #3

declare ptr @array_ref_low_bound(ptr noundef) local_unnamed_addr #3

declare ptr @array_ref_element_size(ptr noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare void @pp_base_newline(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @print_call_name(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #9 !prof !34 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 117
  br i1 %6, label %7, label %11

7:                                                ; preds = %3, %11, %11, %11
  %8 = phi ptr [ %12, %11 ], [ %12, %11 ], [ %12, %11 ], [ %1, %3 ]
  %9 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !46
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
  tail call fastcc void @dump_function_name(ptr noundef %0, ptr noundef nonnull %12, i32 noundef %2)
  br label %38

16:                                               ; preds = %11
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.223) #17
  %17 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %18, i32 noundef 0, i32 noundef %2, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.224) #17
  %20 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %21, i32 noundef 0, i32 noundef %2, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.225) #17
  %23 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 1, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %24, i32 noundef 0, i32 noundef %2, i8 noundef zeroext 0)
  br label %38

26:                                               ; preds = %11
  %27 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 32
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  tail call fastcc void @dump_function_name(ptr noundef %0, ptr noundef nonnull %28, i32 noundef %2)
  br label %38

33:                                               ; preds = %26
  %34 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %12, i32 noundef 0, i32 noundef %2, i8 noundef zeroext 0)
  br label %38

35:                                               ; preds = %11, %11, %11
  %36 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %12, i32 noundef 0, i32 noundef %2, i8 noundef zeroext 0)
  br label %38

37:                                               ; preds = %11
  tail call fastcc void @do_niy(ptr noundef %0, ptr noundef nonnull %1)
  br label %38

38:                                               ; preds = %32, %33, %37, %35, %16, %15
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #12

declare ptr @predictor_name(i32 noundef) local_unnamed_addr #3

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_block_node(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = lshr i32 %6, 1
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %0, ptr noundef nonnull @.str.259, i32 noundef %7) #17
  %8 = and i32 %3, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %0, ptr noundef nonnull @.str.260, ptr noundef %1) #17
  br label %11

11:                                               ; preds = %10, %4
  %12 = load i32, ptr %5, align 8
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.261) #17
  br label %16

16:                                               ; preds = %15, %11
  %17 = load i64, ptr %1, align 8
  %18 = and i64 %17, 4194304
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.262) #17
  br label %21

21:                                               ; preds = %20, %16
  %22 = and i32 %3, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %204

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !46
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  tail call fastcc void @dump_location(ptr noundef %0, i32 noundef %26)
  br label %29

29:                                               ; preds = %28, %24
  %30 = add i32 %2, 2
  tail call void @pp_base_newline(ptr noundef %0) #17
  %31 = icmp sgt i32 %2, -2
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = tail call i32 @llvm.smax.i32(i32 %30, i32 1)
  br label %34

34:                                               ; preds = %32, %34
  %35 = phi i32 [ %36, %34 ], [ 0, %32 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %36 = add nuw nsw i32 %35, 1
  %37 = icmp eq i32 %36, %33
  br i1 %37, label %38, label %34, !llvm.loop !80

38:                                               ; preds = %34, %29
  %39 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !46
  %41 = icmp eq ptr %40, null
  br i1 %41, label %53, label %42

42:                                               ; preds = %38
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.263) #17
  %43 = load ptr, ptr %39, align 8, !tbaa !46
  %44 = or disjoint i32 %3, 2
  %45 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %43, i32 noundef 0, i32 noundef %44, i8 noundef zeroext 0)
  tail call void @pp_base_newline(ptr noundef %0) #17
  %46 = icmp sgt i32 %2, -2
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = tail call i32 @llvm.smax.i32(i32 %30, i32 1)
  br label %49

49:                                               ; preds = %47, %49
  %50 = phi i32 [ %51, %49 ], [ 0, %47 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %51 = add nuw nsw i32 %50, 1
  %52 = icmp eq i32 %51, %48
  br i1 %52, label %53, label %49, !llvm.loop !80

53:                                               ; preds = %49, %42, %38
  %54 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !46
  %56 = icmp eq ptr %55, null
  br i1 %56, label %76, label %57

57:                                               ; preds = %53
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.264) #17
  %58 = load ptr, ptr %54, align 8, !tbaa !46
  %59 = icmp eq ptr %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %57
  %61 = or disjoint i32 %3, 2
  br label %62

62:                                               ; preds = %60, %62
  %63 = phi ptr [ %58, %60 ], [ %66, %62 ]
  %64 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %63, i32 noundef 0, i32 noundef %61, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.1) #17
  %65 = getelementptr inbounds %struct.tree_common, ptr %63, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !46
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %62, !llvm.loop !100

68:                                               ; preds = %62, %57
  tail call void @pp_base_newline(ptr noundef %0) #17
  %69 = icmp sgt i32 %2, -2
  br i1 %69, label %70, label %76

70:                                               ; preds = %68
  %71 = tail call i32 @llvm.smax.i32(i32 %30, i32 1)
  br label %72

72:                                               ; preds = %70, %72
  %73 = phi i32 [ %74, %72 ], [ 0, %70 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %74 = add nuw nsw i32 %73, 1
  %75 = icmp eq i32 %74, %71
  br i1 %75, label %76, label %72, !llvm.loop !80

76:                                               ; preds = %72, %68, %53
  %77 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !46
  %79 = icmp eq ptr %78, null
  br i1 %79, label %99, label %80

80:                                               ; preds = %76
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.265) #17
  %81 = load ptr, ptr %77, align 8, !tbaa !46
  %82 = icmp eq ptr %81, null
  br i1 %82, label %91, label %83

83:                                               ; preds = %80
  %84 = or disjoint i32 %3, 2
  br label %85

85:                                               ; preds = %83, %85
  %86 = phi ptr [ %81, %83 ], [ %89, %85 ]
  %87 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %86, i32 noundef 0, i32 noundef %84, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.1) #17
  %88 = getelementptr inbounds %struct.tree_common, ptr %86, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !46
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %85, !llvm.loop !101

91:                                               ; preds = %85, %80
  tail call void @pp_base_newline(ptr noundef %0) #17
  %92 = icmp sgt i32 %2, -2
  br i1 %92, label %93, label %99

93:                                               ; preds = %91
  %94 = tail call i32 @llvm.smax.i32(i32 %30, i32 1)
  br label %95

95:                                               ; preds = %93, %95
  %96 = phi i32 [ %97, %95 ], [ 0, %93 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %97 = add nuw nsw i32 %96, 1
  %98 = icmp eq i32 %97, %94
  br i1 %98, label %99, label %95, !llvm.loop !80

99:                                               ; preds = %95, %91, %76
  %100 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !46
  %102 = icmp eq ptr %101, null
  br i1 %102, label %120, label %103

103:                                              ; preds = %99
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.266) #17
  %104 = load ptr, ptr %100, align 8, !tbaa !46
  %105 = icmp eq ptr %104, null
  br i1 %105, label %112, label %106

106:                                              ; preds = %103, %106
  %107 = phi ptr [ %110, %106 ], [ %104, %103 ]
  %108 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %107, i32 noundef 0, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.1) #17
  %109 = getelementptr inbounds %struct.tree_common, ptr %107, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !46
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %106, !llvm.loop !102

112:                                              ; preds = %106, %103
  tail call void @pp_base_newline(ptr noundef %0) #17
  %113 = icmp sgt i32 %2, -2
  br i1 %113, label %114, label %120

114:                                              ; preds = %112
  %115 = tail call i32 @llvm.smax.i32(i32 %30, i32 1)
  br label %116

116:                                              ; preds = %114, %116
  %117 = phi i32 [ %118, %116 ], [ 0, %114 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %118 = add nuw nsw i32 %117, 1
  %119 = icmp eq i32 %118, %115
  br i1 %119, label %120, label %116, !llvm.loop !80

120:                                              ; preds = %116, %112, %99
  %121 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 4
  %122 = load ptr, ptr %121, align 8, !tbaa !46
  %123 = icmp eq ptr %122, null
  br i1 %123, label %151, label %124

124:                                              ; preds = %120
  %125 = load i32, ptr %122, align 8, !tbaa !103
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %151, label %127

127:                                              ; preds = %124
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.267) #17
  br label %128

128:                                              ; preds = %140, %127
  %129 = phi i32 [ 0, %127 ], [ %142, %140 ]
  br i1 %123, label %137, label %130

130:                                              ; preds = %128
  %131 = load i32, ptr %122, align 8, !tbaa !103
  %132 = icmp ugt i32 %131, %129
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = zext i32 %129 to i64
  %135 = getelementptr inbounds %struct.VEC_tree_base, ptr %122, i64 0, i32 2, i64 %134
  %136 = load ptr, ptr %135, align 8, !tbaa !35
  br label %137

137:                                              ; preds = %128, %130, %133
  %138 = phi ptr [ %136, %133 ], [ null, %130 ], [ null, %128 ]
  %139 = phi i1 [ false, %133 ], [ true, %130 ], [ true, %128 ]
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %138, i32 noundef 0, i32 noundef %3, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.1) #17
  %142 = add i32 %129, 1
  br label %128, !llvm.loop !105

143:                                              ; preds = %137
  tail call void @pp_base_newline(ptr noundef %0) #17
  %144 = icmp sgt i32 %2, -2
  br i1 %144, label %145, label %151

145:                                              ; preds = %143
  %146 = tail call i32 @llvm.smax.i32(i32 %30, i32 1)
  br label %147

147:                                              ; preds = %145, %147
  %148 = phi i32 [ %149, %147 ], [ 0, %145 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %149 = add nuw nsw i32 %148, 1
  %150 = icmp eq i32 %149, %146
  br i1 %150, label %151, label %147, !llvm.loop !80

151:                                              ; preds = %147, %143, %120, %124
  %152 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 7
  %153 = load ptr, ptr %152, align 8, !tbaa !46
  %154 = icmp eq ptr %153, null
  br i1 %154, label %166, label %155

155:                                              ; preds = %151
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.268) #17
  %156 = load ptr, ptr %152, align 8, !tbaa !46
  %157 = or disjoint i32 %3, 2
  %158 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %156, i32 noundef 0, i32 noundef %157, i8 noundef zeroext 0)
  tail call void @pp_base_newline(ptr noundef %0) #17
  %159 = icmp sgt i32 %2, -2
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = tail call i32 @llvm.smax.i32(i32 %30, i32 1)
  br label %162

162:                                              ; preds = %160, %162
  %163 = phi i32 [ %164, %162 ], [ 0, %160 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %164 = add nuw nsw i32 %163, 1
  %165 = icmp eq i32 %164, %161
  br i1 %165, label %166, label %162, !llvm.loop !80

166:                                              ; preds = %162, %155, %151
  %167 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 8
  %168 = load ptr, ptr %167, align 8, !tbaa !46
  %169 = icmp eq ptr %168, null
  br i1 %169, label %181, label %170

170:                                              ; preds = %166
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.269) #17
  %171 = load ptr, ptr %167, align 8, !tbaa !46
  %172 = or disjoint i32 %3, 2
  %173 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %171, i32 noundef 0, i32 noundef %172, i8 noundef zeroext 0)
  tail call void @pp_base_newline(ptr noundef %0) #17
  %174 = icmp sgt i32 %2, -2
  br i1 %174, label %175, label %181

175:                                              ; preds = %170
  %176 = tail call i32 @llvm.smax.i32(i32 %30, i32 1)
  br label %177

177:                                              ; preds = %175, %177
  %178 = phi i32 [ %179, %177 ], [ 0, %175 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %179 = add nuw nsw i32 %178, 1
  %180 = icmp eq i32 %179, %176
  br i1 %180, label %181, label %177, !llvm.loop !80

181:                                              ; preds = %177, %170, %166
  %182 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 9
  %183 = load ptr, ptr %182, align 8, !tbaa !46
  %184 = icmp eq ptr %183, null
  br i1 %184, label %204, label %185

185:                                              ; preds = %181
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.270) #17
  %186 = load ptr, ptr %182, align 8, !tbaa !46
  %187 = icmp eq ptr %186, null
  br i1 %187, label %196, label %188

188:                                              ; preds = %185
  %189 = or disjoint i32 %3, 2
  br label %190

190:                                              ; preds = %188, %190
  %191 = phi ptr [ %186, %188 ], [ %194, %190 ]
  %192 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %191, i32 noundef 0, i32 noundef %189, i8 noundef zeroext 0)
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.1) #17
  %193 = getelementptr inbounds %struct.tree_block, ptr %191, i64 0, i32 9
  %194 = load ptr, ptr %193, align 8, !tbaa !46
  %195 = icmp eq ptr %194, null
  br i1 %195, label %196, label %190, !llvm.loop !106

196:                                              ; preds = %190, %185
  tail call void @pp_base_newline(ptr noundef %0) #17
  %197 = icmp sgt i32 %2, -2
  br i1 %197, label %198, label %204

198:                                              ; preds = %196
  %199 = tail call i32 @llvm.smax.i32(i32 %30, i32 1)
  br label %200

200:                                              ; preds = %198, %200
  %201 = phi i32 [ %202, %200 ], [ 0, %198 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #17
  %202 = add nuw nsw i32 %201, 1
  %203 = icmp eq i32 %202, %199
  br i1 %203, label %204, label %200, !llvm.loop !80

204:                                              ; preds = %200, %196, %181, %21
  ret void
}

declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #3

declare ptr @decl_value_expr_lookup(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @op_code_prio(i32 noundef %0) local_unnamed_addr #13 !prof !34 {
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

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @op_symbol_code(i32 noundef %0) local_unnamed_addr #13 !prof !34 {
  %2 = add i32 %0, -47
  %3 = icmp ult i32 %2, 125
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = zext nneg i32 %2 to i64
  %6 = shl i64 %5, 2
  %7 = call ptr @llvm.load.relative.i64(ptr @reltable.op_symbol_code, i64 %6)
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ @.str.222, %1 ]
  ret ptr %9
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_function_name(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #9 !prof !34 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 116
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  br label %10

10:                                               ; preds = %7, %3
  %11 = phi ptr [ %9, %7 ], [ %1, %3 ]
  %12 = getelementptr inbounds %struct.tree_decl_minimal, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = icmp ne ptr %13, null
  %15 = and i32 %2, 262144
  %16 = icmp eq i32 %15, 0
  %17 = and i1 %16, %14
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !107
  %20 = tail call ptr %19(ptr noundef %11, i32 noundef 1) #17
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %20) #17
  br label %22

21:                                               ; preds = %10
  tail call fastcc void @dump_decl_name(ptr noundef %0, ptr noundef %11, i32 noundef %2)
  br label %22

22:                                               ; preds = %21, %18
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

declare void @pp_construct(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #16

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
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { nounwind }
attributes #18 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 8}
!40 = !{!"_IO_FILE", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !41, i64 116, !42, i64 120, !43, i64 128, !37, i64 130, !37, i64 131, !36, i64 136, !42, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !42, i64 184, !41, i64 192, !37, i64 196}
!41 = !{!"int", !37, i64 0}
!42 = !{!"long", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!40, !36, i64 16}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{!37, !37, i64 0}
!47 = !{!40, !36, i64 40}
!48 = !{!40, !36, i64 48}
!49 = !{!40, !41, i64 0}
!50 = !{!41, !41, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!55, !37, i64 49}
!55 = !{!"pretty_print_info", !36, i64 0, !36, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !56, i64 28, !36, i64 40, !37, i64 48, !37, i64 49, !37, i64 50}
!56 = !{!"", !41, i64 0, !41, i64 4}
!57 = !{!55, !37, i64 50}
!58 = !{!55, !36, i64 0}
!59 = !{!60, !36, i64 192}
!60 = !{!"", !61, i64 0, !61, i64 88, !36, i64 176, !36, i64 184, !36, i64 192, !41, i64 200, !37, i64 204}
!61 = !{!"obstack", !42, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !42, i64 40, !41, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !41, i64 80, !41, i64 80, !41, i64 80}
!62 = distinct !{!62, !52, !53}
!63 = distinct !{!63, !52, !53}
!64 = distinct !{!64, !52, !53}
!65 = distinct !{!65, !52, !53}
!66 = distinct !{!66, !52, !53}
!67 = distinct !{!67, !52, !53}
!68 = distinct !{!68, !52, !53}
!69 = distinct !{!69, !52, !53}
!70 = !{i64 0, i64 4, !50, i64 0, i64 4, !50, i64 0, i64 4, !50, i64 0, i64 4, !50, i64 0, i64 4, !50, i64 0, i64 4, !50, i64 8, i64 24, !46}
!71 = distinct !{!71, !52, !53}
!72 = !{i32 1, i32 10000}
!73 = !{!74, !41, i64 0}
!74 = !{!"VEC_constructor_elt_base", !41, i64 0, !41, i64 4, !37, i64 8}
!75 = !{!76, !36, i64 8}
!76 = !{!"constructor_elt_d", !36, i64 0, !36, i64 8}
!77 = !{!76, !36, i64 0}
!78 = distinct !{!78, !52, !53}
!79 = distinct !{!79, !52, !53}
!80 = distinct !{!80, !52, !53}
!81 = !{!82, !36, i64 16}
!82 = !{!"tree_statement_list_node", !36, i64 0, !36, i64 8, !36, i64 16}
!83 = distinct !{!83, !52, !53}
!84 = distinct !{!84, !52, !53}
!85 = distinct !{!85, !52, !53}
!86 = distinct !{!86, !52, !53}
!87 = distinct !{!87, !52, !53}
!88 = distinct !{!88, !52, !53}
!89 = distinct !{!89, !53}
!90 = !{!91, !36, i64 0}
!91 = !{!"", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16}
!92 = !{!91, !41, i64 8}
!93 = distinct !{!93, !52, !53}
!94 = distinct !{!94, !52, !53}
!95 = distinct !{!95, !52, !53}
!96 = distinct !{!96, !52, !53}
!97 = distinct !{!97, !52, !53}
!98 = distinct !{!98, !52, !53}
!99 = distinct !{!99, !52, !53}
!100 = distinct !{!100, !52, !53}
!101 = distinct !{!101, !52, !53}
!102 = distinct !{!102, !52, !53}
!103 = !{!104, !41, i64 0}
!104 = !{!"VEC_tree_base", !41, i64 0, !41, i64 4, !37, i64 8}
!105 = distinct !{!105, !52, !53}
!106 = distinct !{!106, !52, !53}
!107 = !{!108, !36, i64 176}
!108 = !{!"lang_hooks", !36, i64 0, !42, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !109, i64 240, !110, i64 248, !111, i64 256, !112, i64 272, !113, i64 432, !114, i64 560, !36, i64 584, !36, i64 592, !36, i64 600, !36, i64 608, !36, i64 616, !36, i64 624, !36, i64 632, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !37, i64 672}
!109 = !{!"lang_hooks_for_tree_inlining", !36, i64 0}
!110 = !{!"lang_hooks_for_callgraph", !36, i64 0}
!111 = !{!"lang_hooks_for_tree_dump", !36, i64 0, !36, i64 8}
!112 = !{!"lang_hooks_for_decls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152}
!113 = !{!"lang_hooks_for_types", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !37, i64 120}
!114 = !{!"lang_hooks_for_lto", !36, i64 0, !36, i64 8, !36, i64 16}
