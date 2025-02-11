; ModuleID = 'print-tree.c'
source_filename = "print-tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.call_expr_arg_iterator_d = type { ptr, i32, i32 }
%struct.real_value = type { i32, [3 x i64] }
%struct.fixed_value = type { %struct.double_int, i32 }
%struct.double_int = type { i64, i64 }
%struct.tree_stmt_iterator = type { ptr, ptr }
%struct.bucket = type { ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_label_decl = type { %struct.tree_decl_with_rtl, i32, i32 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.tree_real_cst = type { %struct.tree_common, ptr }
%struct.tree_fixed_cst = type { %struct.tree_common, ptr }
%struct.tree_vector = type { %struct.tree_common, ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_complex = type { %struct.tree_common, ptr, ptr }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.tree_vec = type { %struct.tree_common, i32, [1 x ptr] }
%struct.tree_constructor = type { %struct.tree_common, ptr }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.tree_statement_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_omp_clause = type { %struct.tree_common, i32, i32, %union.omp_clause_subcode, ptr, ptr, [1 x ptr] }
%union.omp_clause_subcode = type { i32 }
%struct.tree_optimization_option = type { %struct.tree_common, %struct.cl_optimization }
%struct.cl_optimization = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.tree_target_option = type { %struct.tree_common, %struct.cl_target_option }
%struct.cl_target_option = type { i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.tree_statement_list_node = type { ptr, ptr, ptr }

@table = internal unnamed_addr global ptr null, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@flag_dump_noaddr = external local_unnamed_addr global i32, align 4
@flag_dump_unnumbered = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%s#\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%p\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s <%s\00", align 1
@tree_code_name = external local_unnamed_addr constant [0 x ptr], align 8
@.str.5 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c" L.xxxx\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c" L.%d\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c" %c.xxxx\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c" %c.%u\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c" address-space-%d\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c" overflow\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"-%lu\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"0x%lx%016lx\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c" -Inf\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c" Inf\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c" Nan\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c" side-effects\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c" readonly\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c" constant\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c" sizes-gimplified\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c" addressable\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c" volatile\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c" asm_written\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c" used\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c" align-ok\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c" nothrow\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c" public\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c" private\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c" protected\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c" static\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c" deprecated\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c" visited\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c" tree_0\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c" tree_1\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c" tree_2\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c" tree_3\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c" tree_4\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c" tree_5\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c" tree_6\00", align 1
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@.str.44 = private unnamed_addr constant [10 x i8] c" unsigned\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c" ignored\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c" abstract\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c" external\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c" nonlocal\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c" weak\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c" in_system_header\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c" regdecl\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c" suppress-debug\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c" function-specific-target\00", align 1
@.str.54 = private unnamed_addr constant [23 x i8] c" function-specific-opt\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c" autoinline\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c" built-in\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c" static-chain\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c" packed\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c" bit-field\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c" nonaddressable\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c" error-issued\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c" landing-pad:%d\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c" in-text-section\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c" common\00", align 1
@.str.65 = private unnamed_addr constant [20 x i8] c" tls-global-dynamic\00", align 1
@.str.66 = private unnamed_addr constant [19 x i8] c" tls-local-dynamic\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c" tls-initial-exec\00", align 1
@.str.68 = private unnamed_addr constant [16 x i8] c" tls-local-exec\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"print-tree.c\00", align 1
@.str.70 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c" virtual\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c" preserve\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c" decl_0\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c" decl_1\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c" decl_2\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c" decl_3\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c" decl_4\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c" decl_5\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c" decl_6\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c" decl_7\00", align 1
@mode_name = external local_unnamed_addr constant [87 x ptr], align 16
@.str.81 = private unnamed_addr constant [21 x i8] c" passed-by-reference\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c" defer-output\00", align 1
@.str.83 = private unnamed_addr constant [24 x i8] c" file %s line %d col %d\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"unit size\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c" user\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c" align %d\00", align 1
@.str.88 = private unnamed_addr constant [18 x i8] c" offset_align %lu\00", align 1
@.str.89 = private unnamed_addr constant [25 x i8] c" built-in BUILT_IN_MD %d\00", align 1
@.str.90 = private unnamed_addr constant [16 x i8] c" built-in %s:%s\00", align 1
@built_in_class_names = external local_unnamed_addr constant [4 x ptr], align 16
@built_in_names = external local_unnamed_addr global [721 x ptr], align 16
@.str.91 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"bit offset\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"bit_field_type\00", align 1
@.str.94 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.95 = private unnamed_addr constant [11 x i8] c"attributes\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"initial\00", align 1
@.str.97 = private unnamed_addr constant [16 x i8] c"abstract_origin\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"arguments\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c"result\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.100 = private unnamed_addr constant [9 x i8] c"arg-type\00", align 1
@.str.101 = private unnamed_addr constant [14 x i8] c"incoming-rtl \00", align 1
@.str.102 = private unnamed_addr constant [17 x i8] c"struct-function \00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"value-expr\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"chain\00", align 1
@.str.105 = private unnamed_addr constant [14 x i8] c" no-force-blk\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c" sizetype\00", align 1
@.str.107 = private unnamed_addr constant [13 x i8] c" string-flag\00", align 1
@.str.108 = private unnamed_addr constant [20 x i8] c" needs-constructing\00", align 1
@.str.109 = private unnamed_addr constant [18 x i8] c" transparent-aggr\00", align 1
@.str.110 = private unnamed_addr constant [22 x i8] c" nonaliased-component\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c" restrict\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c" type_0\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c" type_1\00", align 1
@.str.114 = private unnamed_addr constant [8 x i8] c" type_2\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c" type_3\00", align 1
@.str.116 = private unnamed_addr constant [8 x i8] c" type_4\00", align 1
@.str.117 = private unnamed_addr constant [8 x i8] c" type_5\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c" type_6\00", align 1
@.str.119 = private unnamed_addr constant [34 x i8] c" align %d symtab %d alias set %ld\00", align 1
@.str.120 = private unnamed_addr constant [21 x i8] c" structural equality\00", align 1
@.str.121 = private unnamed_addr constant [17 x i8] c" canonical type \00", align 1
@.str.122 = private unnamed_addr constant [14 x i8] c" precision %d\00", align 1
@.str.123 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.124 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.125 = private unnamed_addr constant [7 x i8] c"values\00", align 1
@.str.126 = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c" nunits %d\00", align 1
@.str.128 = private unnamed_addr constant [7 x i8] c"fields\00", align 1
@.str.129 = private unnamed_addr constant [16 x i8] c"method basetype\00", align 1
@.str.130 = private unnamed_addr constant [10 x i8] c"arg-types\00", align 1
@.str.131 = private unnamed_addr constant [9 x i8] c"basetype\00", align 1
@.str.132 = private unnamed_addr constant [16 x i8] c"pointer_to_this\00", align 1
@.str.133 = private unnamed_addr constant [18 x i8] c"reference_to_this\00", align 1
@.str.134 = private unnamed_addr constant [5 x i8] c"vars\00", align 1
@.str.135 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@.str.136 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.137 = private unnamed_addr constant [3 x i8] c"fn\00", align 1
@.str.138 = private unnamed_addr constant [13 x i8] c"static_chain\00", align 1
@.str.139 = private unnamed_addr constant [7 x i8] c"arg %d\00", align 1
@.str.140 = private unnamed_addr constant [8 x i8] c"elt%d: \00", align 1
@.str.141 = private unnamed_addr constant [5 x i8] c"real\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c"imag\00", align 1
@.str.143 = private unnamed_addr constant [3 x i8] c" \22\00", align 1
@.str.144 = private unnamed_addr constant [6 x i8] c"\\%03o\00", align 1
@.str.145 = private unnamed_addr constant [8 x i8] c"purpose\00", align 1
@.str.146 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.147 = private unnamed_addr constant [7 x i8] c"elt %d\00", align 1
@.str.148 = private unnamed_addr constant [9 x i8] c" lngt %d\00", align 1
@.str.149 = private unnamed_addr constant [4 x i8] c"idx\00", align 1
@.str.150 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.151 = private unnamed_addr constant [7 x i8] c" head \00", align 1
@.str.152 = private unnamed_addr constant [7 x i8] c" tail \00", align 1
@.str.153 = private unnamed_addr constant [7 x i8] c" stmts\00", align 1
@.str.154 = private unnamed_addr constant [5 x i8] c"stmt\00", align 1
@.str.155 = private unnamed_addr constant [13 x i8] c"supercontext\00", align 1
@.str.156 = private unnamed_addr constant [10 x i8] c"subblocks\00", align 1
@.str.157 = private unnamed_addr constant [4 x i8] c"var\00", align 1
@.str.158 = private unnamed_addr constant [10 x i8] c"def_stmt \00", align 1
@.str.159 = private unnamed_addr constant [11 x i8] c"version %u\00", align 1
@.str.160 = private unnamed_addr constant [17 x i8] c" in-abnormal-phi\00", align 1
@.str.161 = private unnamed_addr constant [14 x i8] c" in-free-list\00", align 1
@.str.162 = private unnamed_addr constant [11 x i8] c" ptr-info \00", align 1
@omp_clause_code_name = external local_unnamed_addr constant [0 x ptr], align 8
@omp_clause_num_ops = external local_unnamed_addr constant [0 x i8], align 1
@.str.163 = private unnamed_addr constant [7 x i8] c"op %d:\00", align 1
@.str.164 = private unnamed_addr constant [22 x i8] c" imported declaration\00", align 1
@.str.165 = private unnamed_addr constant [23 x i8] c"associated declaration\00", align 1
@.str.166 = private unnamed_addr constant [9 x i8] c"%s:%d:%d\00", align 1
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_tree(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @xcalloc(i64 noundef 37, i64 noundef 8) #12
  store ptr %2, ptr @table, align 8, !tbaa !5
  %3 = load ptr, ptr @stderr, align 8, !tbaa !5
  tail call void @print_node(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef %0, i32 noundef 0) #13
  %4 = load ptr, ptr @table, align 8, !tbaa !5
  tail call void @free(ptr noundef %4) #13
  store ptr null, ptr @table, align 8, !tbaa !5
  %5 = load ptr, ptr @stderr, align 8, !tbaa !5
  %6 = tail call i32 @putc(i32 noundef 10, ptr noundef %5) #13
  ret void
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_node(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.expanded_location, align 8
  %6 = alloca %struct.expanded_location, align 8
  %7 = alloca %struct.call_expr_arg_iterator_d, align 8
  %8 = alloca [10 x i8], align 1
  %9 = alloca [10 x i8], align 1
  %10 = alloca %struct.real_value, align 8
  %11 = alloca [64 x i8], align 16
  %12 = alloca %struct.fixed_value, align 8
  %13 = alloca [64 x i8], align 16
  %14 = alloca [10 x i8], align 1
  %15 = alloca [10 x i8], align 1
  %16 = alloca %struct.tree_stmt_iterator, align 8
  %17 = alloca %struct.expanded_location, align 8
  %18 = icmp eq ptr %2, null
  br i1 %18, label %1346, label %19

19:                                               ; preds = %4
  %20 = load i64, ptr %2, align 8
  %21 = trunc i64 %20 to i32
  %22 = and i32 %21, 65535
  %23 = and i64 %20, 65535
  %24 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !9
  %26 = icmp sgt i32 %3, 24
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  tail call void @print_node_brief(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3) #13
  br label %1346

28:                                               ; preds = %19
  %29 = icmp sgt i32 %3, 8
  %30 = and i32 %25, -2
  %31 = icmp eq i32 %30, 2
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  tail call void @print_node_brief(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3) #13
  br label %1346

34:                                               ; preds = %28
  %35 = icmp eq i32 %22, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  tail call void @print_node_brief(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3) #13
  br label %1346

37:                                               ; preds = %34
  %38 = load ptr, ptr @table, align 8, !tbaa !5
  %39 = icmp eq ptr %38, null
  br i1 %39, label %61, label %40

40:                                               ; preds = %37
  %41 = ptrtoint ptr %2 to i64
  %42 = urem i64 %41, 37
  %43 = getelementptr inbounds ptr, ptr %38, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !5
  %45 = icmp eq ptr %44, null
  br i1 %45, label %55, label %50

46:                                               ; preds = %50
  %47 = getelementptr inbounds %struct.bucket, ptr %51, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !5
  %49 = icmp eq ptr %48, null
  br i1 %49, label %55, label %50, !llvm.loop !11

50:                                               ; preds = %40, %46
  %51 = phi ptr [ %48, %46 ], [ %44, %40 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !13
  %53 = icmp eq ptr %52, %2
  br i1 %53, label %54, label %46

54:                                               ; preds = %50
  tail call void @print_node_brief(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3) #13
  br label %1346

55:                                               ; preds = %46, %40
  %56 = tail call ptr @xmalloc(i64 noundef 16) #12
  store ptr %2, ptr %56, align 8, !tbaa !13
  %57 = load ptr, ptr @table, align 8, !tbaa !5
  %58 = getelementptr inbounds ptr, ptr %57, i64 %42
  %59 = load ptr, ptr %58, align 8, !tbaa !5
  %60 = getelementptr inbounds %struct.bucket, ptr %56, i64 0, i32 1
  store ptr %59, ptr %60, align 8, !tbaa !15
  store ptr %56, ptr %58, align 8, !tbaa !5
  br label %61

61:                                               ; preds = %55, %37
  tail call void @indent_to(ptr noundef %0, i32 noundef %3) #13
  %62 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %23
  %63 = load ptr, ptr %62, align 8, !tbaa !5
  %64 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %1, ptr noundef %63) #13
  tail call void @dump_addr(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %2) #13
  switch i32 %25, label %118 [
    i32 3, label %65
    i32 2, label %99
  ]

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !16
  %68 = icmp eq ptr %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.tree_identifier, ptr %67, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !16
  %72 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %71) #13
  br label %118

73:                                               ; preds = %65
  %74 = icmp eq i32 %22, 30
  br i1 %74, label %75, label %87

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.tree_label_decl, ptr %2, i64 0, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !16
  %78 = icmp eq i32 %77, -1
  br i1 %78, label %87, label %79

79:                                               ; preds = %75
  %80 = load i32, ptr @dump_flags, align 4, !tbaa !9
  %81 = and i32 %80, 1048576
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %79
  %84 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 7, i64 1, ptr %0)
  br label %130

85:                                               ; preds = %79
  %86 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %77) #13
  br label %130

87:                                               ; preds = %75, %73
  %88 = load i32, ptr @dump_flags, align 4, !tbaa !9
  %89 = and i32 %88, 1048576
  %90 = icmp eq i32 %89, 0
  %91 = icmp eq i32 %22, 33
  %92 = select i1 %91, i32 67, i32 68
  br i1 %90, label %95, label %93

93:                                               ; preds = %87
  %94 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %92) #13
  br label %118

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 2
  %97 = load i32, ptr %96, align 4, !tbaa !16
  %98 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %92, i32 noundef %97) #13
  br label %118

99:                                               ; preds = %61
  %100 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 12
  %101 = load ptr, ptr %100, align 8, !tbaa !16
  %102 = icmp eq ptr %101, null
  br i1 %102, label %118, label %103

103:                                              ; preds = %99
  %104 = load i64, ptr %101, align 8
  %105 = trunc i64 %104 to i16
  switch i16 %105, label %118 [
    i16 1, label %106
    i16 35, label %110
  ]

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.tree_identifier, ptr %101, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !16
  %109 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %108) #13
  br label %118

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.tree_decl_minimal, ptr %101, i64 0, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !16
  %113 = icmp eq ptr %112, null
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.tree_identifier, ptr %112, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !16
  %117 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %116) #13
  br label %118

118:                                              ; preds = %103, %61, %106, %114, %110, %99, %69, %93, %95
  %119 = trunc i64 %20 to i16
  switch i16 %119, label %130 [
    i16 1, label %120
    i16 23, label %124
  ]

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.tree_identifier, ptr %2, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !16
  %123 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %122) #13
  br label %130

124:                                              ; preds = %118
  %125 = icmp slt i32 %3, 5
  br i1 %125, label %126, label %138

126:                                              ; preds = %124
  %127 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !16
  %129 = add nsw i32 %3, 4
  tail call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %128, i32 noundef %129) #13
  br label %138

130:                                              ; preds = %85, %83, %120, %118
  %131 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !16
  %133 = add nsw i32 %3, 4
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %132, i32 noundef %133) #13
  %134 = load ptr, ptr %131, align 8, !tbaa !16
  %135 = icmp eq ptr %134, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %130
  %137 = add nsw i32 %3, 3
  tail call void @indent_to(ptr noundef %0, i32 noundef %137) #13
  br label %138

138:                                              ; preds = %130, %136, %124, %126
  %139 = load i64, ptr %2, align 8
  %140 = and i64 %139, 65535
  %141 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %140
  %142 = load i32, ptr %141, align 4, !tbaa !9
  %143 = icmp eq i32 %142, 2
  %144 = and i64 %139, 65536
  %145 = icmp eq i64 %144, 0
  %146 = or i1 %143, %145
  br i1 %146, label %153, label %147

147:                                              ; preds = %138
  %148 = tail call i32 @fputs(ptr noundef nonnull @.str.21, ptr noundef %0) #13
  %149 = load i64, ptr %2, align 8
  %150 = and i64 %149, 65535
  %151 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa !9
  br label %153

153:                                              ; preds = %147, %138
  %154 = phi i32 [ %152, %147 ], [ %142, %138 ]
  %155 = phi i64 [ %149, %147 ], [ %139, %138 ]
  %156 = icmp eq i32 %154, 2
  %157 = and i64 %155, 1048576
  %158 = icmp eq i64 %157, 0
  br i1 %156, label %159, label %163

159:                                              ; preds = %153
  br i1 %158, label %160, label %164

160:                                              ; preds = %159
  %161 = and i64 %155, 131072
  %162 = icmp eq i64 %161, 0
  br label %177

163:                                              ; preds = %153
  br i1 %158, label %170, label %164

164:                                              ; preds = %163, %159
  %165 = tail call i32 @fputs(ptr noundef nonnull @.str.22, ptr noundef %0) #13
  %166 = load i64, ptr %2, align 8
  %167 = and i64 %166, 65535
  %168 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %167
  %169 = load i32, ptr %168, align 4, !tbaa !9
  br label %170

170:                                              ; preds = %164, %163
  %171 = phi i32 [ %169, %164 ], [ %154, %163 ]
  %172 = phi i64 [ %166, %164 ], [ %155, %163 ]
  %173 = icmp eq i32 %171, 2
  %174 = and i64 %172, 131072
  %175 = icmp eq i64 %174, 0
  %176 = or i1 %173, %175
  br i1 %176, label %177, label %182

177:                                              ; preds = %160, %170
  %178 = phi i1 [ %162, %160 ], [ %175, %170 ]
  %179 = phi i32 [ 2, %160 ], [ %171, %170 ]
  %180 = icmp ne i32 %179, 2
  %181 = or i1 %180, %178
  br i1 %181, label %185, label %182

182:                                              ; preds = %177, %170
  %183 = phi ptr [ @.str.23, %170 ], [ @.str.24, %177 ]
  %184 = tail call i32 @fputs(ptr noundef nonnull %183, ptr noundef %0) #13
  br label %185

185:                                              ; preds = %182, %177
  %186 = load i64, ptr %2, align 8
  %187 = and i64 %186, 65535
  %188 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %187
  %189 = load i32, ptr %188, align 4, !tbaa !9
  %190 = icmp eq i32 %189, 2
  br i1 %190, label %191, label %198

191:                                              ; preds = %185
  %192 = lshr i64 %186, 56
  %193 = trunc i64 %192 to i32
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %198, label %195

195:                                              ; preds = %191
  %196 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %193) #13
  %197 = load i64, ptr %2, align 8
  br label %198

198:                                              ; preds = %195, %191, %185
  %199 = phi i64 [ %197, %195 ], [ %186, %191 ], [ %186, %185 ]
  %200 = and i64 %199, 262144
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %198
  %203 = tail call i32 @fputs(ptr noundef nonnull @.str.25, ptr noundef %0) #13
  %204 = load i64, ptr %2, align 8
  br label %205

205:                                              ; preds = %202, %198
  %206 = phi i64 [ %204, %202 ], [ %199, %198 ]
  %207 = and i64 %206, 524288
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %212, label %209

209:                                              ; preds = %205
  %210 = tail call i32 @fputs(ptr noundef nonnull @.str.26, ptr noundef %0) #13
  %211 = load i64, ptr %2, align 8
  br label %212

212:                                              ; preds = %209, %205
  %213 = phi i64 [ %211, %209 ], [ %206, %205 ]
  %214 = and i64 %213, 4194304
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %219, label %216

216:                                              ; preds = %212
  %217 = tail call i32 @fputs(ptr noundef nonnull @.str.27, ptr noundef %0) #13
  %218 = load i64, ptr %2, align 8
  br label %219

219:                                              ; preds = %216, %212
  %220 = phi i64 [ %218, %216 ], [ %213, %212 ]
  %221 = and i64 %220, 16777216
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %219
  %224 = tail call i32 @fputs(ptr noundef nonnull @.str.28, ptr noundef %0) #13
  %225 = load i64, ptr %2, align 8
  br label %226

226:                                              ; preds = %223, %219
  %227 = phi i64 [ %225, %223 ], [ %220, %219 ]
  %228 = and i64 %227, 33554432
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %238, label %230

230:                                              ; preds = %226
  %231 = and i64 %227, 65535
  %232 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %231
  %233 = load i32, ptr %232, align 4, !tbaa !9
  %234 = icmp eq i32 %233, 2
  %235 = select i1 %234, ptr @.str.29, ptr @.str.30
  %236 = tail call i32 @fputs(ptr noundef nonnull %235, ptr noundef %0) #13
  %237 = load i64, ptr %2, align 8
  br label %238

238:                                              ; preds = %230, %226
  %239 = phi i64 [ %237, %230 ], [ %227, %226 ]
  %240 = and i64 %239, 134217728
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %245, label %242

242:                                              ; preds = %238
  %243 = tail call i32 @fputs(ptr noundef nonnull @.str.31, ptr noundef %0) #13
  %244 = load i64, ptr %2, align 8
  br label %245

245:                                              ; preds = %242, %238
  %246 = phi i64 [ %244, %242 ], [ %239, %238 ]
  %247 = and i64 %246, 268435456
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %252, label %249

249:                                              ; preds = %245
  %250 = tail call i32 @fputs(ptr noundef nonnull @.str.32, ptr noundef %0) #13
  %251 = load i64, ptr %2, align 8
  br label %252

252:                                              ; preds = %249, %245
  %253 = phi i64 [ %251, %249 ], [ %246, %245 ]
  %254 = and i64 %253, 536870912
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %259, label %256

256:                                              ; preds = %252
  %257 = tail call i32 @fputs(ptr noundef nonnull @.str.33, ptr noundef %0) #13
  %258 = load i64, ptr %2, align 8
  br label %259

259:                                              ; preds = %256, %252
  %260 = phi i64 [ %258, %256 ], [ %253, %252 ]
  %261 = and i64 %260, 67108864
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %266, label %263

263:                                              ; preds = %259
  %264 = tail call i32 @fputs(ptr noundef nonnull @.str.34, ptr noundef %0) #13
  %265 = load i64, ptr %2, align 8
  br label %266

266:                                              ; preds = %263, %259
  %267 = phi i64 [ %265, %263 ], [ %260, %259 ]
  %268 = and i64 %267, 1073741824
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %273, label %270

270:                                              ; preds = %266
  %271 = tail call i32 @fputs(ptr noundef nonnull @.str.35, ptr noundef %0) #13
  %272 = load i64, ptr %2, align 8
  br label %273

273:                                              ; preds = %270, %266
  %274 = phi i64 [ %272, %270 ], [ %267, %266 ]
  %275 = and i64 %274, 1099511627776
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %280, label %277

277:                                              ; preds = %273
  %278 = tail call i32 @fputs(ptr noundef nonnull @.str.36, ptr noundef %0) #13
  %279 = load i64, ptr %2, align 8
  br label %280

280:                                              ; preds = %277, %273
  %281 = phi i64 [ %279, %277 ], [ %274, %273 ]
  %282 = and i64 %281, 8589934592
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %287, label %284

284:                                              ; preds = %280
  %285 = tail call i32 @fputs(ptr noundef nonnull @.str.37, ptr noundef %0) #13
  %286 = load i64, ptr %2, align 8
  br label %287

287:                                              ; preds = %284, %280
  %288 = phi i64 [ %286, %284 ], [ %281, %280 ]
  %289 = and i64 %288, 17179869184
  %290 = icmp eq i64 %289, 0
  br i1 %290, label %294, label %291

291:                                              ; preds = %287
  %292 = tail call i32 @fputs(ptr noundef nonnull @.str.38, ptr noundef %0) #13
  %293 = load i64, ptr %2, align 8
  br label %294

294:                                              ; preds = %291, %287
  %295 = phi i64 [ %293, %291 ], [ %288, %287 ]
  %296 = and i64 %295, 34359738368
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %301, label %298

298:                                              ; preds = %294
  %299 = tail call i32 @fputs(ptr noundef nonnull @.str.39, ptr noundef %0) #13
  %300 = load i64, ptr %2, align 8
  br label %301

301:                                              ; preds = %298, %294
  %302 = phi i64 [ %300, %298 ], [ %295, %294 ]
  %303 = and i64 %302, 68719476736
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %308, label %305

305:                                              ; preds = %301
  %306 = tail call i32 @fputs(ptr noundef nonnull @.str.40, ptr noundef %0) #13
  %307 = load i64, ptr %2, align 8
  br label %308

308:                                              ; preds = %305, %301
  %309 = phi i64 [ %307, %305 ], [ %302, %301 ]
  %310 = and i64 %309, 137438953472
  %311 = icmp eq i64 %310, 0
  br i1 %311, label %315, label %312

312:                                              ; preds = %308
  %313 = tail call i32 @fputs(ptr noundef nonnull @.str.41, ptr noundef %0) #13
  %314 = load i64, ptr %2, align 8
  br label %315

315:                                              ; preds = %312, %308
  %316 = phi i64 [ %314, %312 ], [ %309, %308 ]
  %317 = and i64 %316, 274877906944
  %318 = icmp eq i64 %317, 0
  br i1 %318, label %322, label %319

319:                                              ; preds = %315
  %320 = tail call i32 @fputs(ptr noundef nonnull @.str.42, ptr noundef %0) #13
  %321 = load i64, ptr %2, align 8
  br label %322

322:                                              ; preds = %319, %315
  %323 = phi i64 [ %321, %319 ], [ %316, %315 ]
  %324 = and i64 %323, 549755813888
  %325 = icmp eq i64 %324, 0
  br i1 %325, label %328, label %326

326:                                              ; preds = %322
  %327 = tail call i32 @fputs(ptr noundef nonnull @.str.43, ptr noundef %0) #13
  br label %328

328:                                              ; preds = %326, %322
  switch i32 %25, label %1325 [
    i32 3, label %329
    i32 2, label %760
    i32 10, label %993
    i32 5, label %993
    i32 6, label %993
    i32 7, label %993
    i32 4, label %993
    i32 8, label %993
    i32 9, label %993
    i32 1, label %1037
    i32 0, label %1037
  ]

329:                                              ; preds = %328
  %330 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %23, i64 10
  %331 = load i8, ptr %330, align 2, !tbaa !16
  %332 = icmp eq i8 %331, 0
  br i1 %332, label %367, label %333

333:                                              ; preds = %329
  %334 = load i64, ptr %2, align 8
  %335 = and i64 %334, 2097152
  %336 = icmp eq i64 %335, 0
  br i1 %336, label %339, label %337

337:                                              ; preds = %333
  %338 = tail call i32 @fputs(ptr noundef nonnull @.str.44, ptr noundef %0) #13
  br label %339

339:                                              ; preds = %337, %333
  %340 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 2
  %341 = load i64, ptr %340, align 8
  %342 = and i64 %341, 1024
  %343 = icmp eq i64 %342, 0
  br i1 %343, label %347, label %344

344:                                              ; preds = %339
  %345 = tail call i32 @fputs(ptr noundef nonnull @.str.45, ptr noundef %0) #13
  %346 = load i64, ptr %340, align 8
  br label %347

347:                                              ; preds = %344, %339
  %348 = phi i64 [ %346, %344 ], [ %341, %339 ]
  %349 = and i64 %348, 2048
  %350 = icmp eq i64 %349, 0
  br i1 %350, label %354, label %351

351:                                              ; preds = %347
  %352 = tail call i32 @fputs(ptr noundef nonnull @.str.46, ptr noundef %0) #13
  %353 = load i64, ptr %340, align 8
  br label %354

354:                                              ; preds = %351, %347
  %355 = phi i64 [ %353, %351 ], [ %348, %347 ]
  %356 = and i64 %355, 33554432
  %357 = icmp eq i64 %356, 0
  br i1 %357, label %361, label %358

358:                                              ; preds = %354
  %359 = tail call i32 @fputs(ptr noundef nonnull @.str.47, ptr noundef %0) #13
  %360 = load i64, ptr %340, align 8
  br label %361

361:                                              ; preds = %358, %354
  %362 = phi i64 [ %360, %358 ], [ %355, %354 ]
  %363 = and i64 %362, 256
  %364 = icmp eq i64 %363, 0
  br i1 %364, label %367, label %365

365:                                              ; preds = %361
  %366 = tail call i32 @fputs(ptr noundef nonnull @.str.48, ptr noundef %0) #13
  br label %367

367:                                              ; preds = %361, %365, %329
  %368 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %23, i64 13
  %369 = load i8, ptr %368, align 1, !tbaa !16
  %370 = icmp eq i8 %369, 0
  br i1 %370, label %386, label %371

371:                                              ; preds = %367
  %372 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %2, i64 0, i32 4
  %373 = load i32, ptr %372, align 8
  %374 = and i32 %373, 128
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %378, label %376

376:                                              ; preds = %371
  %377 = tail call i32 @fputs(ptr noundef nonnull @.str.49, ptr noundef %0) #13
  br label %378

378:                                              ; preds = %376, %371
  %379 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 1
  %380 = load i32, ptr %379, align 8, !tbaa !16
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %5, i32 noundef %380) #12
  %381 = getelementptr inbounds %struct.expanded_location, ptr %5, i64 0, i32 3
  %382 = load i8, ptr %381, align 8, !tbaa !17
  %383 = icmp eq i8 %382, 0
  br i1 %383, label %386, label %384

384:                                              ; preds = %378
  %385 = call i32 @fputs(ptr noundef nonnull @.str.50, ptr noundef %0) #13
  br label %386

386:                                              ; preds = %378, %384, %367
  %387 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %23, i64 11
  %388 = load i8, ptr %387, align 1, !tbaa !16
  %389 = icmp ne i8 %388, 0
  %390 = icmp eq i32 %22, 29
  %391 = add nsw i32 %22, -31
  %392 = icmp ult i32 %391, -2
  %393 = and i1 %392, %389
  br i1 %393, label %394, label %401

394:                                              ; preds = %386
  %395 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 2
  %396 = load i64, ptr %395, align 8
  %397 = and i64 %396, 16777216
  %398 = icmp eq i64 %397, 0
  br i1 %398, label %401, label %399

399:                                              ; preds = %394
  %400 = call i32 @fputs(ptr noundef nonnull @.str.51, ptr noundef %0) #13
  br label %401

401:                                              ; preds = %399, %394, %386
  %402 = icmp eq i32 %22, 35
  br i1 %402, label %403, label %408

403:                                              ; preds = %401
  %404 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 2
  %405 = load i64, ptr %404, align 8
  %406 = and i64 %405, 33554432
  %407 = icmp eq i64 %406, 0
  br i1 %407, label %465, label %462

408:                                              ; preds = %401
  br i1 %390, label %409, label %440

409:                                              ; preds = %408
  %410 = getelementptr inbounds %struct.tree_function_decl, ptr %2, i64 0, i32 3
  %411 = load ptr, ptr %410, align 8, !tbaa !16
  %412 = icmp eq ptr %411, null
  br i1 %412, label %415, label %413

413:                                              ; preds = %409
  %414 = call i32 @fputs(ptr noundef nonnull @.str.53, ptr noundef %0) #13
  br label %415

415:                                              ; preds = %409, %413
  %416 = getelementptr inbounds %struct.tree_function_decl, ptr %2, i64 0, i32 4
  %417 = load ptr, ptr %416, align 8, !tbaa !16
  %418 = icmp eq ptr %417, null
  br i1 %418, label %421, label %419

419:                                              ; preds = %415
  %420 = call i32 @fputs(ptr noundef nonnull @.str.54, ptr noundef %0) #13
  br label %421

421:                                              ; preds = %415, %419
  %422 = getelementptr inbounds %struct.tree_function_decl, ptr %2, i64 0, i32 5
  %423 = load i32, ptr %422, align 8
  %424 = and i32 %423, 2097152
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %429, label %426

426:                                              ; preds = %421
  %427 = call i32 @fputs(ptr noundef nonnull @.str.55, ptr noundef %0) #13
  %428 = load i32, ptr %422, align 8
  br label %429

429:                                              ; preds = %421, %426
  %430 = phi i32 [ %423, %421 ], [ %428, %426 ]
  %431 = and i32 %430, 6144
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %436, label %433

433:                                              ; preds = %429
  %434 = call i32 @fputs(ptr noundef nonnull @.str.56, ptr noundef %0) #13
  %435 = load i32, ptr %422, align 8
  br label %436

436:                                              ; preds = %429, %433
  %437 = phi i32 [ %430, %429 ], [ %435, %433 ]
  %438 = and i32 %437, 4194304
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %465, label %462

440:                                              ; preds = %408
  %441 = trunc i64 %20 to i16
  switch i16 %441, label %510 [
    i16 31, label %442
    i16 30, label %467
    i16 32, label %480
  ]

442:                                              ; preds = %440
  %443 = load i64, ptr %2, align 8
  %444 = and i64 %443, 2199023255552
  %445 = icmp eq i64 %444, 0
  br i1 %445, label %448, label %446

446:                                              ; preds = %442
  %447 = call i32 @fputs(ptr noundef nonnull @.str.58, ptr noundef %0) #13
  br label %448

448:                                              ; preds = %442, %446
  %449 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 2
  %450 = load i64, ptr %449, align 8
  %451 = and i64 %450, 33554432
  %452 = icmp eq i64 %451, 0
  br i1 %452, label %456, label %453

453:                                              ; preds = %448
  %454 = call i32 @fputs(ptr noundef nonnull @.str.59, ptr noundef %0) #13
  %455 = load i64, ptr %449, align 8
  br label %456

456:                                              ; preds = %448, %453
  %457 = phi i64 [ %450, %448 ], [ %455, %453 ]
  %458 = and i64 %457, 67108864
  %459 = icmp eq i64 %458, 0
  br i1 %459, label %510, label %460

460:                                              ; preds = %456
  %461 = call i32 @fputs(ptr noundef nonnull @.str.60, ptr noundef %0) #13
  br label %510

462:                                              ; preds = %436, %403
  %463 = phi ptr [ @.str.52, %403 ], [ @.str.57, %436 ]
  %464 = call i32 @fputs(ptr noundef nonnull %463, ptr noundef %0) #13
  br label %465

465:                                              ; preds = %462, %403, %436
  %466 = trunc i64 %20 to i16
  switch i16 %466, label %510 [
    i16 30, label %467
    i16 32, label %480
  ]

467:                                              ; preds = %440, %465
  %468 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 2
  %469 = load i64, ptr %468, align 8
  %470 = and i64 %469, 16777216
  %471 = icmp eq i64 %470, 0
  br i1 %471, label %474, label %472

472:                                              ; preds = %467
  %473 = call i32 @fputs(ptr noundef nonnull @.str.61, ptr noundef %0) #13
  br label %474

474:                                              ; preds = %467, %472
  %475 = getelementptr inbounds %struct.tree_label_decl, ptr %2, i64 0, i32 2
  %476 = load i32, ptr %475, align 4, !tbaa !16
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %510, label %478

478:                                              ; preds = %474
  %479 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %476) #13
  br label %510

480:                                              ; preds = %440, %465
  %481 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %2, i64 0, i32 4
  %482 = load i32, ptr %481, align 8
  %483 = and i32 %482, 16
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %488, label %485

485:                                              ; preds = %480
  %486 = call i32 @fputs(ptr noundef nonnull @.str.63, ptr noundef %0) #13
  %487 = load i32, ptr %481, align 8
  br label %488

488:                                              ; preds = %480, %485
  %489 = phi i32 [ %482, %480 ], [ %487, %485 ]
  %490 = and i32 %489, 8
  %491 = icmp eq i32 %490, 0
  br i1 %491, label %495, label %492

492:                                              ; preds = %488
  %493 = call i32 @fputs(ptr noundef nonnull @.str.64, ptr noundef %0) #13
  %494 = load i32, ptr %481, align 8
  br label %495

495:                                              ; preds = %488, %492
  %496 = phi i32 [ %489, %488 ], [ %494, %492 ]
  %497 = lshr i32 %496, 13
  %498 = and i32 %497, 7
  %499 = icmp ugt i32 %498, 1
  br i1 %499, label %500, label %510

500:                                              ; preds = %495
  switch i32 %498, label %509 [
    i32 2, label %501
    i32 3, label %503
    i32 4, label %505
    i32 5, label %507
  ]

501:                                              ; preds = %500
  %502 = call i32 @fputs(ptr noundef nonnull @.str.65, ptr noundef %0) #13
  br label %510

503:                                              ; preds = %500
  %504 = call i32 @fputs(ptr noundef nonnull @.str.66, ptr noundef %0) #13
  br label %510

505:                                              ; preds = %500
  %506 = call i32 @fputs(ptr noundef nonnull @.str.67, ptr noundef %0) #13
  br label %510

507:                                              ; preds = %500
  %508 = call i32 @fputs(ptr noundef nonnull @.str.68, ptr noundef %0) #13
  br label %510

509:                                              ; preds = %500
  call void @fancy_abort(ptr noundef nonnull @.str.69, i32 noundef 449, ptr noundef nonnull @.str.70) #12
  br label %510

510:                                              ; preds = %440, %465, %456, %460, %474, %478, %501, %503, %505, %507, %509, %495
  %511 = phi i1 [ false, %501 ], [ false, %503 ], [ false, %505 ], [ false, %507 ], [ false, %509 ], [ false, %495 ], [ false, %474 ], [ false, %478 ], [ true, %460 ], [ true, %456 ], [ false, %465 ], [ false, %440 ]
  %512 = load i8, ptr %330, align 2, !tbaa !16
  %513 = icmp eq i8 %512, 0
  br i1 %513, label %591, label %514

514:                                              ; preds = %510
  %515 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 2
  %516 = load i64, ptr %515, align 8
  %517 = and i64 %516, 512
  %518 = icmp eq i64 %517, 0
  br i1 %518, label %522, label %519

519:                                              ; preds = %514
  %520 = call i32 @fputs(ptr noundef nonnull @.str.71, ptr noundef %0) #13
  %521 = load i64, ptr %515, align 8
  br label %522

522:                                              ; preds = %519, %514
  %523 = phi i64 [ %521, %519 ], [ %516, %514 ]
  %524 = and i64 %523, 8192
  %525 = icmp eq i64 %524, 0
  br i1 %525, label %529, label %526

526:                                              ; preds = %522
  %527 = call i32 @fputs(ptr noundef nonnull @.str.72, ptr noundef %0) #13
  %528 = load i64, ptr %515, align 8
  br label %529

529:                                              ; preds = %526, %522
  %530 = phi i64 [ %528, %526 ], [ %523, %522 ]
  %531 = and i64 %530, 32768
  %532 = icmp eq i64 %531, 0
  br i1 %532, label %536, label %533

533:                                              ; preds = %529
  %534 = call i32 @fputs(ptr noundef nonnull @.str.73, ptr noundef %0) #13
  %535 = load i64, ptr %515, align 8
  br label %536

536:                                              ; preds = %533, %529
  %537 = phi i64 [ %535, %533 ], [ %530, %529 ]
  %538 = and i64 %537, 65536
  %539 = icmp eq i64 %538, 0
  br i1 %539, label %543, label %540

540:                                              ; preds = %536
  %541 = call i32 @fputs(ptr noundef nonnull @.str.74, ptr noundef %0) #13
  %542 = load i64, ptr %515, align 8
  br label %543

543:                                              ; preds = %540, %536
  %544 = phi i64 [ %542, %540 ], [ %537, %536 ]
  %545 = and i64 %544, 131072
  %546 = icmp eq i64 %545, 0
  br i1 %546, label %550, label %547

547:                                              ; preds = %543
  %548 = call i32 @fputs(ptr noundef nonnull @.str.75, ptr noundef %0) #13
  %549 = load i64, ptr %515, align 8
  br label %550

550:                                              ; preds = %547, %543
  %551 = phi i64 [ %549, %547 ], [ %544, %543 ]
  %552 = and i64 %551, 262144
  %553 = icmp eq i64 %552, 0
  br i1 %553, label %557, label %554

554:                                              ; preds = %550
  %555 = call i32 @fputs(ptr noundef nonnull @.str.76, ptr noundef %0) #13
  %556 = load i64, ptr %515, align 8
  br label %557

557:                                              ; preds = %554, %550
  %558 = phi i64 [ %556, %554 ], [ %551, %550 ]
  %559 = and i64 %558, 524288
  %560 = icmp eq i64 %559, 0
  br i1 %560, label %564, label %561

561:                                              ; preds = %557
  %562 = call i32 @fputs(ptr noundef nonnull @.str.77, ptr noundef %0) #13
  %563 = load i64, ptr %515, align 8
  br label %564

564:                                              ; preds = %561, %557
  %565 = phi i64 [ %563, %561 ], [ %558, %557 ]
  %566 = and i64 %565, 1048576
  %567 = icmp eq i64 %566, 0
  br i1 %567, label %571, label %568

568:                                              ; preds = %564
  %569 = call i32 @fputs(ptr noundef nonnull @.str.78, ptr noundef %0) #13
  %570 = load i64, ptr %515, align 8
  br label %571

571:                                              ; preds = %568, %564
  %572 = phi i64 [ %570, %568 ], [ %565, %564 ]
  %573 = and i64 %572, 2097152
  %574 = icmp eq i64 %573, 0
  br i1 %574, label %578, label %575

575:                                              ; preds = %571
  %576 = call i32 @fputs(ptr noundef nonnull @.str.79, ptr noundef %0) #13
  %577 = load i64, ptr %515, align 8
  br label %578

578:                                              ; preds = %575, %571
  %579 = phi i64 [ %577, %575 ], [ %572, %571 ]
  %580 = and i64 %579, 4194304
  %581 = icmp eq i64 %580, 0
  br i1 %581, label %585, label %582

582:                                              ; preds = %578
  %583 = call i32 @fputs(ptr noundef nonnull @.str.80, ptr noundef %0) #13
  %584 = load i64, ptr %515, align 8
  br label %585

585:                                              ; preds = %582, %578
  %586 = phi i64 [ %584, %582 ], [ %579, %578 ]
  %587 = and i64 %586, 255
  %588 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %587
  %589 = load ptr, ptr %588, align 8, !tbaa !5
  %590 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %589) #13
  br label %591

591:                                              ; preds = %585, %510
  %592 = icmp eq i32 %22, 34
  %593 = trunc i64 %20 to i16
  switch i16 %593, label %601 [
    i16 36, label %594
    i16 34, label %594
    i16 32, label %594
  ]

594:                                              ; preds = %591, %591, %591
  %595 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 2
  %596 = load i64, ptr %595, align 8
  %597 = and i64 %596, 268435456
  %598 = icmp eq i64 %597, 0
  br i1 %598, label %601, label %599

599:                                              ; preds = %594
  %600 = call i32 @fputs(ptr noundef nonnull @.str.81, ptr noundef %0) #13
  br label %601

601:                                              ; preds = %591, %599, %594
  %602 = load i8, ptr %368, align 1, !tbaa !16
  %603 = icmp eq i8 %602, 0
  br i1 %603, label %611, label %604

604:                                              ; preds = %601
  %605 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %2, i64 0, i32 4
  %606 = load i32, ptr %605, align 8
  %607 = and i32 %606, 1
  %608 = icmp eq i32 %607, 0
  br i1 %608, label %611, label %609

609:                                              ; preds = %604
  %610 = call i32 @fputs(ptr noundef nonnull @.str.82, ptr noundef %0) #13
  br label %611

611:                                              ; preds = %609, %604, %601
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #14
  %612 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 1
  %613 = load i32, ptr %612, align 8, !tbaa !16
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %6, i32 noundef %613) #12
  %614 = load ptr, ptr %6, align 8, !tbaa.struct !19
  %615 = getelementptr inbounds i8, ptr %6, i64 8
  %616 = load i32, ptr %615, align 8, !tbaa.struct !20
  %617 = getelementptr inbounds i8, ptr %6, i64 12
  %618 = load i32, ptr %617, align 4, !tbaa.struct !21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #14
  %619 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.83, ptr noundef %614, i32 noundef %616, i32 noundef %618) #13
  %620 = load i8, ptr %330, align 2, !tbaa !16
  %621 = icmp eq i8 %620, 0
  br i1 %621, label %670, label %622

622:                                              ; preds = %611
  %623 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 1
  %624 = load ptr, ptr %623, align 8, !tbaa !16
  %625 = add nsw i32 %3, 4
  call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.84, ptr noundef %624, i32 noundef %625) #13
  %626 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 4
  %627 = load ptr, ptr %626, align 8, !tbaa !16
  call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.85, ptr noundef %627, i32 noundef %625) #13
  br i1 %390, label %628, label %633

628:                                              ; preds = %622
  %629 = getelementptr inbounds %struct.tree_function_decl, ptr %2, i64 0, i32 5
  %630 = load i32, ptr %629, align 8
  %631 = and i32 %630, 6144
  %632 = icmp eq i32 %631, 0
  br i1 %632, label %635, label %633

633:                                              ; preds = %628, %622
  %634 = add nsw i32 %3, 3
  call void @indent_to(ptr noundef %0, i32 noundef %634) #13
  br label %635

635:                                              ; preds = %633, %628
  %636 = load i64, ptr %2, align 8
  %637 = and i64 %636, 4398046511104
  %638 = icmp eq i64 %637, 0
  br i1 %638, label %641, label %639

639:                                              ; preds = %635
  %640 = call i64 @fwrite(ptr nonnull @.str.86, i64 5, i64 1, ptr %0)
  br label %641

641:                                              ; preds = %639, %635
  %642 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 3
  %643 = load i32, ptr %642, align 8, !tbaa !16
  %644 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.87, i32 noundef %643) #13
  br i1 %511, label %645, label %652

645:                                              ; preds = %641
  %646 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 2
  %647 = load i64, ptr %646, align 8
  %648 = lshr i64 %647, 32
  %649 = and i64 %648, 255
  %650 = shl nuw i64 1, %649
  %651 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.88, i64 noundef %650) #13
  br label %652

652:                                              ; preds = %645, %641
  br i1 %390, label %653, label %670

653:                                              ; preds = %652
  %654 = getelementptr inbounds %struct.tree_function_decl, ptr %2, i64 0, i32 5
  %655 = load i32, ptr %654, align 8
  %656 = lshr i32 %655, 11
  %657 = and i32 %656, 3
  switch i32 %657, label %661 [
    i32 0, label %670
    i32 2, label %658
  ]

658:                                              ; preds = %653
  %659 = and i32 %655, 2047
  %660 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.89, i32 noundef %659) #13
  br label %670

661:                                              ; preds = %653
  %662 = zext nneg i32 %657 to i64
  %663 = getelementptr inbounds [4 x ptr], ptr @built_in_class_names, i64 0, i64 %662
  %664 = load ptr, ptr %663, align 8, !tbaa !5
  %665 = and i32 %655, 2047
  %666 = zext nneg i32 %665 to i64
  %667 = getelementptr inbounds [721 x ptr], ptr @built_in_names, i64 0, i64 %666
  %668 = load ptr, ptr %667, align 8, !tbaa !5
  %669 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.90, ptr noundef %664, ptr noundef %668) #13
  br label %670

670:                                              ; preds = %653, %652, %661, %658, %611
  br i1 %511, label %673, label %671

671:                                              ; preds = %670
  %672 = add nsw i32 %3, 4
  br label %683

673:                                              ; preds = %670
  %674 = getelementptr inbounds %struct.tree_field_decl, ptr %2, i64 0, i32 1
  %675 = load ptr, ptr %674, align 8, !tbaa !16
  %676 = add nsw i32 %3, 4
  call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.91, ptr noundef %675, i32 noundef %676) #13
  %677 = getelementptr inbounds %struct.tree_field_decl, ptr %2, i64 0, i32 4
  %678 = load ptr, ptr %677, align 8, !tbaa !16
  call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.92, ptr noundef %678, i32 noundef %676) #13
  %679 = getelementptr inbounds %struct.tree_field_decl, ptr %2, i64 0, i32 2
  %680 = load ptr, ptr %679, align 8, !tbaa !16
  %681 = icmp eq ptr %680, null
  br i1 %681, label %683, label %682

682:                                              ; preds = %673
  call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.93, ptr noundef nonnull %680, i32 noundef %676) #13
  br label %683

683:                                              ; preds = %671, %673, %682
  %684 = phi i32 [ %672, %671 ], [ %676, %673 ], [ %676, %682 ]
  %685 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 4
  %686 = load ptr, ptr %685, align 8, !tbaa !16
  call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.94, ptr noundef %686, i32 noundef %684) #13
  %687 = load i8, ptr %330, align 2, !tbaa !16
  %688 = icmp eq i8 %687, 0
  br i1 %688, label %695, label %689

689:                                              ; preds = %683
  %690 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 6
  %691 = load ptr, ptr %690, align 8, !tbaa !16
  call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.95, ptr noundef %691, i32 noundef %684) #13
  br i1 %592, label %695, label %692

692:                                              ; preds = %689
  %693 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 5
  %694 = load ptr, ptr %693, align 8, !tbaa !16
  call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.96, ptr noundef %694, i32 noundef %684) #13
  br label %695

695:                                              ; preds = %689, %692, %683
  %696 = load i8, ptr %387, align 1, !tbaa !16
  %697 = icmp eq i8 %696, 0
  br i1 %697, label %701, label %698

698:                                              ; preds = %695
  %699 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 7
  %700 = load ptr, ptr %699, align 8, !tbaa !16
  call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.97, ptr noundef %700, i32 noundef %684) #13
  br label %701

701:                                              ; preds = %698, %695
  %702 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %23, i64 12
  %703 = load i8, ptr %702, align 4, !tbaa !16
  %704 = icmp eq i8 %703, 0
  br i1 %704, label %710, label %705

705:                                              ; preds = %701
  %706 = getelementptr inbounds %struct.tree_decl_non_common, ptr %2, i64 0, i32 2
  %707 = load ptr, ptr %706, align 8, !tbaa !16
  call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef %707, i32 noundef %684) #13
  %708 = getelementptr inbounds %struct.tree_decl_non_common, ptr %2, i64 0, i32 3
  %709 = load ptr, ptr %708, align 8, !tbaa !16
  call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.99, ptr noundef %709, i32 noundef %684) #13
  br label %710

710:                                              ; preds = %705, %701
  %711 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 19), align 8, !tbaa !22
  call void %711(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %3) #12
  %712 = load i64, ptr %2, align 8
  %713 = and i64 %712, 65535
  %714 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %713, i64 11
  %715 = load i8, ptr %714, align 1, !tbaa !16
  %716 = icmp eq i8 %715, 0
  br i1 %716, label %728, label %717

717:                                              ; preds = %710
  %718 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %2, i64 0, i32 1
  %719 = load ptr, ptr %718, align 8, !tbaa !16
  %720 = icmp eq ptr %719, null
  br i1 %720, label %728, label %721

721:                                              ; preds = %717
  call void @indent_to(ptr noundef %0, i32 noundef %684) #13
  %722 = load ptr, ptr %718, align 8, !tbaa !16
  %723 = icmp eq ptr %722, null
  br i1 %723, label %724, label %726

724:                                              ; preds = %721
  call void @make_decl_rtl(ptr noundef nonnull %2) #12
  %725 = load ptr, ptr %718, align 8, !tbaa !16
  br label %726

726:                                              ; preds = %721, %724
  %727 = phi ptr [ %725, %724 ], [ %722, %721 ]
  call void @print_rtl(ptr noundef %0, ptr noundef %727) #12
  br label %728

728:                                              ; preds = %726, %717, %710
  br i1 %592, label %729, label %738

729:                                              ; preds = %728
  %730 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 5
  %731 = load ptr, ptr %730, align 8, !tbaa !16
  call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.100, ptr noundef %731, i32 noundef %684) #13
  %732 = getelementptr inbounds %struct.tree_parm_decl, ptr %2, i64 0, i32 1
  %733 = load ptr, ptr %732, align 8, !tbaa !16
  %734 = icmp eq ptr %733, null
  br i1 %734, label %747, label %735

735:                                              ; preds = %729
  call void @indent_to(ptr noundef %0, i32 noundef %684) #13
  %736 = call i64 @fwrite(ptr nonnull @.str.101, i64 13, i64 1, ptr %0)
  %737 = load ptr, ptr %732, align 8, !tbaa !16
  call void @print_rtl(ptr noundef %0, ptr noundef %737) #12
  br label %747

738:                                              ; preds = %728
  br i1 %390, label %739, label %745

739:                                              ; preds = %738
  %740 = getelementptr inbounds %struct.tree_function_decl, ptr %2, i64 0, i32 1
  %741 = load ptr, ptr %740, align 8, !tbaa !16
  %742 = icmp eq ptr %741, null
  br i1 %742, label %754, label %743

743:                                              ; preds = %739
  call void @indent_to(ptr noundef %0, i32 noundef %684) #13
  %744 = load ptr, ptr %740, align 8, !tbaa !16
  call void @dump_addr(ptr noundef %0, ptr noundef nonnull @.str.102, ptr noundef %744) #13
  br label %754

745:                                              ; preds = %738
  %746 = icmp eq i32 %22, 32
  br i1 %746, label %747, label %754

747:                                              ; preds = %745, %735, %729
  %748 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 2
  %749 = load i64, ptr %748, align 8
  %750 = and i64 %749, 67108864
  %751 = icmp eq i64 %750, 0
  br i1 %751, label %754, label %752

752:                                              ; preds = %747
  %753 = call ptr @decl_value_expr_lookup(ptr noundef nonnull %2) #12
  call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.103, ptr noundef %753, i32 noundef %684) #13
  br label %754

754:                                              ; preds = %745, %743, %739, %752, %747
  %755 = icmp eq i32 %3, 4
  %756 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 1
  %757 = load ptr, ptr %756, align 8, !tbaa !16
  br i1 %755, label %758, label %759

758:                                              ; preds = %754
  call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.104, ptr noundef %757, i32 noundef %684) #13
  br label %1325

759:                                              ; preds = %754
  call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.104, ptr noundef %757, i32 noundef %684) #13
  br label %1325

760:                                              ; preds = %328
  %761 = load i64, ptr %2, align 8
  %762 = and i64 %761, 2097152
  %763 = icmp eq i64 %762, 0
  br i1 %763, label %766, label %764

764:                                              ; preds = %760
  %765 = tail call i32 @fputs(ptr noundef nonnull @.str.44, ptr noundef %0) #13
  br label %766

766:                                              ; preds = %764, %760
  %767 = and i32 %21, 65534
  %768 = icmp eq i32 %767, 16
  %769 = icmp eq i32 %22, 18
  %770 = or i1 %768, %769
  br i1 %770, label %771, label %776

771:                                              ; preds = %766
  %772 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %773 = load i32, ptr %772, align 4
  %774 = and i32 %773, 1024
  %775 = icmp eq i32 %774, 0
  br i1 %775, label %776, label %783

776:                                              ; preds = %766, %771
  %777 = icmp eq i32 %22, 8
  br i1 %777, label %778, label %786

778:                                              ; preds = %776
  %779 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %780 = load i32, ptr %779, align 4
  %781 = and i32 %780, 1024
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %786, label %783

783:                                              ; preds = %778, %771
  %784 = phi ptr [ @.str.105, %771 ], [ @.str.106, %778 ]
  %785 = tail call i32 @fputs(ptr noundef nonnull %784, ptr noundef %0) #13
  br label %786

786:                                              ; preds = %783, %776, %778
  %787 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %788 = load i32, ptr %787, align 4
  %789 = and i32 %788, 16777216
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %794, label %791

791:                                              ; preds = %786
  %792 = tail call i32 @fputs(ptr noundef nonnull @.str.107, ptr noundef %0) #13
  %793 = load i32, ptr %787, align 4
  br label %794

794:                                              ; preds = %791, %786
  %795 = phi i32 [ %793, %791 ], [ %788, %786 ]
  %796 = and i32 %795, 2048
  %797 = icmp eq i32 %796, 0
  br i1 %797, label %800, label %798

798:                                              ; preds = %794
  %799 = tail call i32 @fputs(ptr noundef nonnull @.str.108, ptr noundef %0) #13
  br label %800

800:                                              ; preds = %798, %794
  br i1 %768, label %801, label %805

801:                                              ; preds = %800
  %802 = load i32, ptr %787, align 4
  %803 = and i32 %802, 4096
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %805, label %811

805:                                              ; preds = %800, %801
  %806 = icmp eq i32 %22, 15
  br i1 %806, label %807, label %814

807:                                              ; preds = %805
  %808 = load i32, ptr %787, align 4
  %809 = and i32 %808, 4096
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %814, label %811

811:                                              ; preds = %807, %801
  %812 = phi ptr [ @.str.109, %801 ], [ @.str.110, %807 ]
  %813 = tail call i32 @fputs(ptr noundef nonnull %812, ptr noundef %0) #13
  br label %814

814:                                              ; preds = %811, %805, %807
  %815 = load i64, ptr %2, align 8
  %816 = and i64 %815, 2199023255552
  %817 = icmp eq i64 %816, 0
  br i1 %817, label %820, label %818

818:                                              ; preds = %814
  %819 = tail call i32 @fputs(ptr noundef nonnull @.str.58, ptr noundef %0) #13
  br label %820

820:                                              ; preds = %818, %814
  %821 = load i32, ptr %787, align 4
  %822 = and i32 %821, 8192
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %827, label %824

824:                                              ; preds = %820
  %825 = tail call i32 @fputs(ptr noundef nonnull @.str.111, ptr noundef %0) #13
  %826 = load i32, ptr %787, align 4
  br label %827

827:                                              ; preds = %824, %820
  %828 = phi i32 [ %826, %824 ], [ %821, %820 ]
  %829 = and i32 %828, 33554432
  %830 = icmp eq i32 %829, 0
  br i1 %830, label %834, label %831

831:                                              ; preds = %827
  %832 = tail call i32 @fputs(ptr noundef nonnull @.str.112, ptr noundef %0) #13
  %833 = load i32, ptr %787, align 4
  br label %834

834:                                              ; preds = %831, %827
  %835 = phi i32 [ %833, %831 ], [ %828, %827 ]
  %836 = and i32 %835, 67108864
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %841, label %838

838:                                              ; preds = %834
  %839 = tail call i32 @fputs(ptr noundef nonnull @.str.113, ptr noundef %0) #13
  %840 = load i32, ptr %787, align 4
  br label %841

841:                                              ; preds = %838, %834
  %842 = phi i32 [ %840, %838 ], [ %835, %834 ]
  %843 = and i32 %842, 134217728
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %848, label %845

845:                                              ; preds = %841
  %846 = tail call i32 @fputs(ptr noundef nonnull @.str.114, ptr noundef %0) #13
  %847 = load i32, ptr %787, align 4
  br label %848

848:                                              ; preds = %845, %841
  %849 = phi i32 [ %847, %845 ], [ %842, %841 ]
  %850 = and i32 %849, 268435456
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %855, label %852

852:                                              ; preds = %848
  %853 = tail call i32 @fputs(ptr noundef nonnull @.str.115, ptr noundef %0) #13
  %854 = load i32, ptr %787, align 4
  br label %855

855:                                              ; preds = %852, %848
  %856 = phi i32 [ %854, %852 ], [ %849, %848 ]
  %857 = and i32 %856, 536870912
  %858 = icmp eq i32 %857, 0
  br i1 %858, label %862, label %859

859:                                              ; preds = %855
  %860 = tail call i32 @fputs(ptr noundef nonnull @.str.116, ptr noundef %0) #13
  %861 = load i32, ptr %787, align 4
  br label %862

862:                                              ; preds = %859, %855
  %863 = phi i32 [ %861, %859 ], [ %856, %855 ]
  %864 = and i32 %863, 1073741824
  %865 = icmp eq i32 %864, 0
  br i1 %865, label %869, label %866

866:                                              ; preds = %862
  %867 = tail call i32 @fputs(ptr noundef nonnull @.str.117, ptr noundef %0) #13
  %868 = load i32, ptr %787, align 4
  br label %869

869:                                              ; preds = %866, %862
  %870 = phi i32 [ %868, %866 ], [ %863, %862 ]
  %871 = icmp sgt i32 %870, -1
  br i1 %871, label %874, label %872

872:                                              ; preds = %869
  %873 = tail call i32 @fputs(ptr noundef nonnull @.str.118, ptr noundef %0) #13
  br label %874

874:                                              ; preds = %872, %869
  %875 = load i64, ptr %2, align 8
  %876 = and i64 %875, 65535
  %877 = icmp eq i64 %876, 14
  br i1 %877, label %878, label %880

878:                                              ; preds = %874
  %879 = tail call i32 @vector_type_mode(ptr noundef nonnull %2) #12
  br label %884

880:                                              ; preds = %874
  %881 = load i32, ptr %787, align 4
  %882 = lshr i32 %881, 16
  %883 = and i32 %882, 255
  br label %884

884:                                              ; preds = %880, %878
  %885 = phi i32 [ %879, %878 ], [ %883, %880 ]
  %886 = zext i32 %885 to i64
  %887 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %886
  %888 = load ptr, ptr %887, align 8, !tbaa !5
  %889 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %888) #13
  %890 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 2
  %891 = load ptr, ptr %890, align 8, !tbaa !16
  %892 = add nsw i32 %3, 4
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.84, ptr noundef %891, i32 noundef %892) #13
  %893 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 3
  %894 = load ptr, ptr %893, align 8, !tbaa !16
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.85, ptr noundef %894, i32 noundef %892) #13
  %895 = add nsw i32 %3, 3
  tail call void @indent_to(ptr noundef %0, i32 noundef %895) #13
  %896 = load i64, ptr %2, align 8
  %897 = and i64 %896, 4398046511104
  %898 = icmp eq i64 %897, 0
  br i1 %898, label %901, label %899

899:                                              ; preds = %884
  %900 = tail call i64 @fwrite(ptr nonnull @.str.86, i64 5, i64 1, ptr %0)
  br label %901

901:                                              ; preds = %899, %884
  %902 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 7
  %903 = load i32, ptr %902, align 8, !tbaa !16
  %904 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 11
  %905 = load i32, ptr %904, align 8, !tbaa !16
  %906 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 8
  %907 = load i32, ptr %906, align 4, !tbaa !16
  %908 = sext i32 %907 to i64
  %909 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.119, i32 noundef %903, i32 noundef %905, i64 noundef %908) #13
  %910 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 19
  %911 = load ptr, ptr %910, align 8, !tbaa !16
  %912 = icmp eq ptr %911, null
  br i1 %912, label %913, label %915

913:                                              ; preds = %901
  %914 = tail call i64 @fwrite(ptr nonnull @.str.120, i64 20, i64 1, ptr %0)
  br label %916

915:                                              ; preds = %901
  tail call void @dump_addr(ptr noundef %0, ptr noundef nonnull @.str.121, ptr noundef nonnull %911) #13
  br label %916

916:                                              ; preds = %915, %913
  %917 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 4
  %918 = load ptr, ptr %917, align 8, !tbaa !16
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.95, ptr noundef %918, i32 noundef %892) #13
  %919 = load i64, ptr %2, align 8
  %920 = trunc i64 %919 to i32
  %921 = and i32 %920, 65534
  %922 = icmp eq i32 %921, 6
  br i1 %922, label %929, label %923

923:                                              ; preds = %916
  %924 = and i32 %920, 65535
  %925 = icmp eq i32 %924, 8
  %926 = and i32 %21, 65533
  %927 = icmp eq i32 %926, 9
  %928 = or i1 %927, %925
  br i1 %928, label %929, label %937

929:                                              ; preds = %916, %923
  %930 = load i32, ptr %787, align 4
  %931 = and i32 %930, 1023
  %932 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.122, i32 noundef %931) #13
  %933 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 13
  %934 = load ptr, ptr %933, align 8, !tbaa !16
  tail call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.123, ptr noundef %934, i32 noundef %892) #13
  %935 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 14
  %936 = load ptr, ptr %935, align 8, !tbaa !16
  tail call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.124, ptr noundef %936, i32 noundef %892) #13
  br label %937

937:                                              ; preds = %923, %929
  %938 = trunc i64 %20 to i16
  switch i16 %938, label %952 [
    i16 6, label %939
    i16 15, label %942
    i16 14, label %945
  ]

939:                                              ; preds = %937
  %940 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 1
  %941 = load ptr, ptr %940, align 8, !tbaa !16
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.125, ptr noundef %941, i32 noundef %892) #13
  br label %971

942:                                              ; preds = %937
  %943 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 1
  %944 = load ptr, ptr %943, align 8, !tbaa !16
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.126, ptr noundef %944, i32 noundef %892) #13
  br label %971

945:                                              ; preds = %937
  %946 = load i32, ptr %787, align 4
  %947 = and i32 %946, 1023
  %948 = zext nneg i32 %947 to i64
  %949 = shl nuw i64 1, %948
  %950 = trunc i64 %949 to i32
  %951 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.127, i32 noundef %950) #13
  br label %971

952:                                              ; preds = %937
  br i1 %770, label %953, label %956

953:                                              ; preds = %952
  %954 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 1
  %955 = load ptr, ptr %954, align 8, !tbaa !16
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.128, ptr noundef %955, i32 noundef %892) #13
  br label %971

956:                                              ; preds = %952
  %957 = icmp eq i32 %767, 20
  br i1 %957, label %958, label %966

958:                                              ; preds = %956
  %959 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 14
  %960 = load ptr, ptr %959, align 8, !tbaa !16
  %961 = icmp eq ptr %960, null
  br i1 %961, label %963, label %962

962:                                              ; preds = %958
  tail call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.129, ptr noundef nonnull %960, i32 noundef %892) #13
  br label %963

963:                                              ; preds = %962, %958
  %964 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 1
  %965 = load ptr, ptr %964, align 8, !tbaa !16
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.130, ptr noundef %965, i32 noundef %892) #13
  br label %971

966:                                              ; preds = %956
  %967 = icmp eq i32 %22, 5
  br i1 %967, label %968, label %971

968:                                              ; preds = %966
  %969 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 14
  %970 = load ptr, ptr %969, align 8, !tbaa !16
  tail call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.131, ptr noundef %970, i32 noundef %892) #13
  br label %971

971:                                              ; preds = %942, %953, %966, %968, %963, %945, %939
  %972 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 18
  %973 = load ptr, ptr %972, align 8, !tbaa !16
  %974 = icmp eq ptr %973, null
  br i1 %974, label %976, label %975

975:                                              ; preds = %971
  tail call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.94, ptr noundef nonnull %973, i32 noundef %892) #13
  br label %976

976:                                              ; preds = %975, %971
  %977 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 20), align 8, !tbaa !31
  tail call void %977(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %3) #12
  %978 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 9
  %979 = load ptr, ptr %978, align 8, !tbaa !16
  %980 = icmp eq ptr %979, null
  br i1 %980, label %981, label %985

981:                                              ; preds = %976
  %982 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 1
  %983 = load ptr, ptr %982, align 8, !tbaa !16
  %984 = icmp eq ptr %983, null
  br i1 %984, label %987, label %985

985:                                              ; preds = %981, %976
  tail call void @indent_to(ptr noundef %0, i32 noundef %895) #13
  %986 = load ptr, ptr %978, align 8, !tbaa !16
  br label %987

987:                                              ; preds = %985, %981
  %988 = phi ptr [ %986, %985 ], [ null, %981 ]
  tail call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.132, ptr noundef %988, i32 noundef %892) #13
  %989 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 10
  %990 = load ptr, ptr %989, align 8, !tbaa !16
  tail call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.133, ptr noundef %990, i32 noundef %892) #13
  %991 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 1
  %992 = load ptr, ptr %991, align 8, !tbaa !16
  tail call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.104, ptr noundef %992, i32 noundef %892) #13
  br label %1325

993:                                              ; preds = %328, %328, %328, %328, %328, %328, %328
  %994 = trunc i64 %20 to i16
  switch i16 %994, label %1019 [
    i16 58, label %995
    i16 59, label %1003
  ]

995:                                              ; preds = %993
  %996 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %997 = load ptr, ptr %996, align 8, !tbaa !16
  %998 = add nsw i32 %3, 4
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.134, ptr noundef %997, i32 noundef %998) #13
  %999 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %1000 = load ptr, ptr %999, align 8, !tbaa !16
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.135, ptr noundef %1000, i32 noundef %998) #13
  %1001 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %1002 = load ptr, ptr %1001, align 8, !tbaa !16
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.136, ptr noundef %1002, i32 noundef %998) #13
  br label %1325

1003:                                             ; preds = %993
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #14
  %1004 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %1005 = load ptr, ptr %1004, align 8, !tbaa !16
  %1006 = add nsw i32 %3, 4
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.137, ptr noundef %1005, i32 noundef %1006) #13
  %1007 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %1008 = load ptr, ptr %1007, align 8, !tbaa !16
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.138, ptr noundef %1008, i32 noundef %1006) #13
  %1009 = call fastcc ptr @first_call_expr_arg(ptr noundef nonnull %2, ptr noundef nonnull %7) #13
  %1010 = icmp eq ptr %1009, null
  br i1 %1010, label %1018, label %1011

1011:                                             ; preds = %1003, %1011
  %1012 = phi i32 [ %1015, %1011 ], [ 0, %1003 ]
  %1013 = phi ptr [ %1016, %1011 ], [ %1009, %1003 ]
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %8) #14
  %1014 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) @.str.139, i32 noundef %1012) #13
  call void @print_node(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %1013, i32 noundef %1006) #13
  %1015 = add nuw nsw i32 %1012, 1
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %8) #14
  %1016 = call fastcc ptr @next_call_expr_arg(ptr noundef nonnull %7) #13
  %1017 = icmp eq ptr %1016, null
  br i1 %1017, label %1018, label %1011, !llvm.loop !32

1018:                                             ; preds = %1011, %1003
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  br label %1033

1019:                                             ; preds = %993
  %1020 = tail call fastcc i32 @tree_operand_length(ptr noundef nonnull %2) #13
  %1021 = icmp sgt i32 %1020, 0
  %1022 = add nsw i32 %3, 4
  br i1 %1021, label %1023, label %1033

1023:                                             ; preds = %1019
  %1024 = zext nneg i32 %1020 to i64
  br label %1025

1025:                                             ; preds = %1023, %1025
  %1026 = phi i64 [ 0, %1023 ], [ %1031, %1025 ]
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %9) #14
  %1027 = trunc i64 %1026 to i32
  %1028 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) @.str.139, i32 noundef %1027) #13
  %1029 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3, i64 %1026
  %1030 = load ptr, ptr %1029, align 8, !tbaa !16
  call void @print_node(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %1030, i32 noundef %1022) #13
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %9) #14
  %1031 = add nuw nsw i64 %1026, 1
  %1032 = icmp eq i64 %1031, %1024
  br i1 %1032, label %1033, label %1025, !llvm.loop !33

1033:                                             ; preds = %1025, %1019, %1018
  %1034 = phi i32 [ %1006, %1018 ], [ %1022, %1019 ], [ %1022, %1025 ]
  %1035 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 1
  %1036 = load ptr, ptr %1035, align 8, !tbaa !16
  call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.104, ptr noundef %1036, i32 noundef %1034) #13
  br label %1325

1037:                                             ; preds = %328, %328
  %1038 = trunc i64 %20 to i16
  switch i16 %1038, label %1317 [
    i16 23, label %1039
    i16 24, label %1061
    i16 25, label %1085
    i16 27, label %1095
    i16 26, label %1112
    i16 28, label %1118
    i16 1, label %1149
    i16 2, label %1151
    i16 3, label %1159
    i16 51, label %1178
    i16 147, label %1201
    i16 4, label %1236
    i16 141, label %1248
    i16 163, label %1279
    i16 186, label %1306
    i16 187, label %1309
    i16 39, label %1312
  ]

1039:                                             ; preds = %1037
  %1040 = load i64, ptr %2, align 8
  %1041 = and i64 %1040, 134217728
  %1042 = icmp eq i64 %1041, 0
  br i1 %1042, label %1045, label %1043

1043:                                             ; preds = %1039
  %1044 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 9, i64 1, ptr %0)
  br label %1045

1045:                                             ; preds = %1043, %1039
  %1046 = tail call i32 @fputc(i32 32, ptr %0)
  %1047 = getelementptr inbounds %struct.tree_int_cst, ptr %2, i64 0, i32 1
  %1048 = getelementptr inbounds %struct.tree_int_cst, ptr %2, i64 0, i32 1, i32 1
  %1049 = load i64, ptr %1048, align 8, !tbaa !16
  %1050 = load i64, ptr %1047, align 8, !tbaa !16
  switch i64 %1049, label %1058 [
    i64 0, label %1051
    i64 -1, label %1053
  ]

1051:                                             ; preds = %1045
  %1052 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i64 noundef %1050) #13
  br label %1325

1053:                                             ; preds = %1045
  %1054 = icmp eq i64 %1050, 0
  br i1 %1054, label %1058, label %1055

1055:                                             ; preds = %1053
  %1056 = sub i64 0, %1050
  %1057 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %1056) #13
  br label %1325

1058:                                             ; preds = %1045, %1053
  %1059 = phi i64 [ 0, %1053 ], [ %1050, %1045 ]
  %1060 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, i64 noundef %1049, i64 noundef %1059) #13
  br label %1325

1061:                                             ; preds = %1037
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #14
  %1062 = load i64, ptr %2, align 8
  %1063 = and i64 %1062, 134217728
  %1064 = icmp eq i64 %1063, 0
  br i1 %1064, label %1067, label %1065

1065:                                             ; preds = %1061
  %1066 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 9, i64 1, ptr %0)
  br label %1067

1067:                                             ; preds = %1065, %1061
  %1068 = getelementptr inbounds %struct.tree_real_cst, ptr %2, i64 0, i32 1
  %1069 = load ptr, ptr %1068, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %1069, i64 32, i1 false), !tbaa.struct !34
  %1070 = call zeroext i8 @real_isinf(ptr noundef nonnull %10) #12
  %1071 = icmp eq i8 %1070, 0
  br i1 %1071, label %1077, label %1072

1072:                                             ; preds = %1067
  %1073 = call zeroext i8 @real_isneg(ptr noundef nonnull %10) #12
  %1074 = icmp eq i8 %1073, 0
  %1075 = select i1 %1074, ptr @.str.16, ptr @.str.15
  %1076 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %1075) #13
  br label %1084

1077:                                             ; preds = %1067
  %1078 = call zeroext i8 @real_isnan(ptr noundef nonnull %10) #12
  %1079 = icmp eq i8 %1078, 0
  br i1 %1079, label %1082, label %1080

1080:                                             ; preds = %1077
  %1081 = call i64 @fwrite(ptr nonnull @.str.17, i64 4, i64 1, ptr %0)
  br label %1084

1082:                                             ; preds = %1077
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %11) #14
  call void @real_to_decimal(ptr noundef nonnull %11, ptr noundef nonnull %10, i64 noundef 64, i64 noundef 0, i32 noundef 1) #12
  %1083 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %11) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %11) #14
  br label %1084

1084:                                             ; preds = %1080, %1082, %1072
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #14
  br label %1325

1085:                                             ; preds = %1037
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %13) #14
  %1086 = load i64, ptr %2, align 8
  %1087 = and i64 %1086, 134217728
  %1088 = icmp eq i64 %1087, 0
  br i1 %1088, label %1091, label %1089

1089:                                             ; preds = %1085
  %1090 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 9, i64 1, ptr %0)
  br label %1091

1091:                                             ; preds = %1089, %1085
  %1092 = getelementptr inbounds %struct.tree_fixed_cst, ptr %2, i64 0, i32 1
  %1093 = load ptr, ptr %1092, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %1093, i64 24, i1 false), !tbaa.struct !35
  call void @fixed_to_decimal(ptr noundef nonnull %13, ptr noundef nonnull %12, i64 noundef 64) #12
  %1094 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #14
  br label %1325

1095:                                             ; preds = %1037
  %1096 = getelementptr inbounds %struct.tree_vector, ptr %2, i64 0, i32 1
  %1097 = load ptr, ptr %1096, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %14) #14
  %1098 = icmp eq ptr %1097, null
  br i1 %1098, label %1111, label %1099

1099:                                             ; preds = %1095
  %1100 = add nsw i32 %3, 4
  br label %1101

1101:                                             ; preds = %1099, %1101
  %1102 = phi i32 [ 0, %1099 ], [ %1109, %1101 ]
  %1103 = phi ptr [ %1097, %1099 ], [ %1108, %1101 ]
  %1104 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) @.str.140, i32 noundef %1102) #13
  %1105 = getelementptr inbounds %struct.tree_list, ptr %1103, i64 0, i32 2
  %1106 = load ptr, ptr %1105, align 8, !tbaa !16
  call void @print_node(ptr noundef %0, ptr noundef nonnull %14, ptr noundef %1106, i32 noundef %1100) #13
  %1107 = getelementptr inbounds %struct.tree_common, ptr %1103, i64 0, i32 1
  %1108 = load ptr, ptr %1107, align 8, !tbaa !16
  %1109 = add nuw nsw i32 %1102, 1
  %1110 = icmp eq ptr %1108, null
  br i1 %1110, label %1111, label %1101, !llvm.loop !37

1111:                                             ; preds = %1101, %1095
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %14) #14
  br label %1325

1112:                                             ; preds = %1037
  %1113 = getelementptr inbounds %struct.tree_complex, ptr %2, i64 0, i32 1
  %1114 = load ptr, ptr %1113, align 8, !tbaa !16
  %1115 = add nsw i32 %3, 4
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.141, ptr noundef %1114, i32 noundef %1115) #13
  %1116 = getelementptr inbounds %struct.tree_complex, ptr %2, i64 0, i32 2
  %1117 = load ptr, ptr %1116, align 8, !tbaa !16
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.142, ptr noundef %1117, i32 noundef %1115) #13
  br label %1325

1118:                                             ; preds = %1037
  %1119 = getelementptr inbounds %struct.tree_string, ptr %2, i64 0, i32 1
  %1120 = load i32, ptr %1119, align 8, !tbaa !16
  %1121 = tail call i32 @fputs(ptr noundef nonnull @.str.143, ptr noundef %0) #13
  %1122 = icmp sgt i32 %1120, 0
  br i1 %1122, label %1123, label %1141

1123:                                             ; preds = %1118
  %1124 = getelementptr inbounds %struct.tree_string, ptr %2, i64 0, i32 2
  br label %1125

1125:                                             ; preds = %1123, %1139
  %1126 = phi i32 [ %1128, %1139 ], [ %1120, %1123 ]
  %1127 = phi ptr [ %1129, %1139 ], [ %1124, %1123 ]
  %1128 = add nsw i32 %1126, -1
  %1129 = getelementptr inbounds i8, ptr %1127, i64 1
  %1130 = load i8, ptr %1127, align 1, !tbaa !16
  %1131 = sext i8 %1130 to i32
  %1132 = add i8 %1130, -32
  %1133 = icmp ult i8 %1132, 95
  br i1 %1133, label %1134, label %1136

1134:                                             ; preds = %1125
  %1135 = tail call i32 @putc(i32 noundef %1131, ptr noundef %0) #13
  br label %1139

1136:                                             ; preds = %1125
  %1137 = and i32 %1131, 255
  %1138 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.144, i32 noundef %1137) #13
  br label %1139

1139:                                             ; preds = %1136, %1134
  %1140 = icmp ugt i32 %1126, 1
  br i1 %1140, label %1125, label %1141, !llvm.loop !38

1141:                                             ; preds = %1139, %1118
  %1142 = tail call i32 @fputc(i32 noundef 34, ptr noundef %0) #13
  %1143 = icmp eq i32 %3, 4
  %1144 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 1
  %1145 = load ptr, ptr %1144, align 8, !tbaa !16
  br i1 %1143, label %1146, label %1147

1146:                                             ; preds = %1141
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.104, ptr noundef %1145, i32 noundef 8) #13
  br label %1325

1147:                                             ; preds = %1141
  %1148 = add nsw i32 %3, 4
  tail call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.104, ptr noundef %1145, i32 noundef %1148) #13
  br label %1325

1149:                                             ; preds = %1037
  %1150 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 21), align 8, !tbaa !39
  tail call void %1150(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %3) #12
  br label %1325

1151:                                             ; preds = %1037
  %1152 = getelementptr inbounds %struct.tree_list, ptr %2, i64 0, i32 1
  %1153 = load ptr, ptr %1152, align 8, !tbaa !16
  %1154 = add nsw i32 %3, 4
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.145, ptr noundef %1153, i32 noundef %1154) #13
  %1155 = getelementptr inbounds %struct.tree_list, ptr %2, i64 0, i32 2
  %1156 = load ptr, ptr %1155, align 8, !tbaa !16
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.146, ptr noundef %1156, i32 noundef %1154) #13
  %1157 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 1
  %1158 = load ptr, ptr %1157, align 8, !tbaa !16
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.104, ptr noundef %1158, i32 noundef %1154) #13
  br label %1325

1159:                                             ; preds = %1037
  %1160 = getelementptr inbounds %struct.tree_vec, ptr %2, i64 0, i32 1
  %1161 = load i32, ptr %1160, align 8, !tbaa !16
  %1162 = icmp sgt i32 %1161, 0
  br i1 %1162, label %1163, label %1325

1163:                                             ; preds = %1159
  %1164 = add nsw i32 %3, 4
  %1165 = zext nneg i32 %1161 to i64
  br label %1166

1166:                                             ; preds = %1163, %1175
  %1167 = phi i64 [ 0, %1163 ], [ %1176, %1175 ]
  %1168 = getelementptr inbounds %struct.tree_vec, ptr %2, i64 0, i32 2, i64 %1167
  %1169 = load ptr, ptr %1168, align 8, !tbaa !16
  %1170 = icmp eq ptr %1169, null
  br i1 %1170, label %1175, label %1171

1171:                                             ; preds = %1166
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %15) #14
  %1172 = trunc i64 %1167 to i32
  %1173 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) @.str.147, i32 noundef %1172) #13
  call void @indent_to(ptr noundef %0, i32 noundef %1164) #13
  %1174 = load ptr, ptr %1168, align 8, !tbaa !16
  call void @print_node_brief(ptr noundef %0, ptr noundef nonnull %15, ptr noundef %1174, i32 noundef 0) #13
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %15) #14
  br label %1175

1175:                                             ; preds = %1166, %1171
  %1176 = add nuw nsw i64 %1167, 1
  %1177 = icmp eq i64 %1176, %1165
  br i1 %1177, label %1325, label %1166, !llvm.loop !40

1178:                                             ; preds = %1037
  %1179 = getelementptr inbounds %struct.tree_constructor, ptr %2, i64 0, i32 1
  %1180 = load ptr, ptr %1179, align 8, !tbaa !16
  %1181 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %1180) #13
  %1182 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.148, i32 noundef %1181) #13
  %1183 = load ptr, ptr %1179, align 8, !tbaa !16
  %1184 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %1183) #13
  %1185 = icmp eq i32 %1184, 0
  br i1 %1185, label %1325, label %1186

1186:                                             ; preds = %1178
  %1187 = add nsw i32 %3, 4
  br label %1188

1188:                                             ; preds = %1186, %1188
  %1189 = phi ptr [ %1183, %1186 ], [ %1197, %1188 ]
  %1190 = phi i64 [ 0, %1186 ], [ %1196, %1188 ]
  %1191 = trunc i64 %1190 to i32
  %1192 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %1189, i32 noundef %1191) #13
  %1193 = getelementptr inbounds %struct.constructor_elt_d, ptr %1192, i64 0, i32 1
  %1194 = load ptr, ptr %1193, align 8, !tbaa !41
  %1195 = load ptr, ptr %1192, align 8, !tbaa !43
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.149, ptr noundef %1195, i32 noundef %1187) #13
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.150, ptr noundef %1194, i32 noundef %1187) #13
  %1196 = add nuw nsw i64 %1190, 1
  %1197 = load ptr, ptr %1179, align 8, !tbaa !16
  %1198 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %1197) #13
  %1199 = zext i32 %1198 to i64
  %1200 = icmp ult i64 %1196, %1199
  br i1 %1200, label %1188, label %1325, !llvm.loop !44

1201:                                             ; preds = %1037
  %1202 = getelementptr inbounds %struct.tree_statement_list, ptr %2, i64 0, i32 1
  %1203 = load ptr, ptr %1202, align 8, !tbaa !16
  tail call void @dump_addr(ptr noundef %0, ptr noundef nonnull @.str.151, ptr noundef %1203) #13
  %1204 = getelementptr inbounds %struct.tree_statement_list, ptr %2, i64 0, i32 2
  %1205 = load ptr, ptr %1204, align 8, !tbaa !16
  tail call void @dump_addr(ptr noundef %0, ptr noundef nonnull @.str.152, ptr noundef %1205) #13
  %1206 = tail call i64 @fwrite(ptr nonnull @.str.153, i64 6, i64 1, ptr %0)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #14
  %1207 = tail call fastcc { ptr, ptr } @tsi_start(ptr noundef nonnull %2) #13
  %1208 = extractvalue { ptr, ptr } %1207, 0
  %1209 = extractvalue { ptr, ptr } %1207, 1
  store ptr %1208, ptr %16, align 8, !tbaa.struct !45
  %1210 = getelementptr inbounds i8, ptr %16, i64 8
  store ptr %1209, ptr %1210, align 8, !tbaa.struct !46
  %1211 = tail call fastcc zeroext i8 @tsi_end_p(ptr %1208) #13
  %1212 = icmp eq i8 %1211, 0
  br i1 %1212, label %1213, label %1219

1213:                                             ; preds = %1201, %1213
  %1214 = phi ptr [ %1216, %1213 ], [ %1208, %1201 ]
  %1215 = tail call fastcc ptr @tsi_stmt(ptr %1214) #13
  tail call void @dump_addr(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %1215) #13
  call fastcc void @tsi_next(ptr noundef nonnull %16) #13
  %1216 = load ptr, ptr %16, align 8
  %1217 = tail call fastcc zeroext i8 @tsi_end_p(ptr %1216) #13
  %1218 = icmp eq i8 %1217, 0
  br i1 %1218, label %1213, label %1219, !llvm.loop !47

1219:                                             ; preds = %1213, %1201
  %1220 = tail call i32 @fputc(i32 10, ptr %0)
  %1221 = tail call fastcc { ptr, ptr } @tsi_start(ptr noundef nonnull %2) #13
  %1222 = extractvalue { ptr, ptr } %1221, 0
  %1223 = extractvalue { ptr, ptr } %1221, 1
  store ptr %1222, ptr %16, align 8, !tbaa.struct !45
  store ptr %1223, ptr %1210, align 8, !tbaa.struct !46
  %1224 = tail call fastcc zeroext i8 @tsi_end_p(ptr %1222) #13
  %1225 = icmp eq i8 %1224, 0
  %1226 = add nsw i32 %3, 4
  br i1 %1225, label %1227, label %1233

1227:                                             ; preds = %1219, %1227
  %1228 = phi ptr [ %1230, %1227 ], [ %1222, %1219 ]
  %1229 = tail call fastcc ptr @tsi_stmt(ptr %1228) #13
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.154, ptr noundef %1229, i32 noundef %1226) #13
  call fastcc void @tsi_next(ptr noundef nonnull %16) #13
  %1230 = load ptr, ptr %16, align 8
  %1231 = tail call fastcc zeroext i8 @tsi_end_p(ptr %1230) #13
  %1232 = icmp eq i8 %1231, 0
  br i1 %1232, label %1227, label %1233, !llvm.loop !48

1233:                                             ; preds = %1227, %1219
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #14
  %1234 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 1
  %1235 = load ptr, ptr %1234, align 8, !tbaa !16
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.104, ptr noundef %1235, i32 noundef %1226) #13
  br label %1325

1236:                                             ; preds = %1037
  %1237 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 3
  %1238 = load ptr, ptr %1237, align 8, !tbaa !16
  %1239 = add nsw i32 %3, 4
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.134, ptr noundef %1238, i32 noundef %1239) #13
  %1240 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 6
  %1241 = load ptr, ptr %1240, align 8, !tbaa !16
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.155, ptr noundef %1241, i32 noundef %1239) #13
  %1242 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 5
  %1243 = load ptr, ptr %1242, align 8, !tbaa !16
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.156, ptr noundef %1243, i32 noundef %1239) #13
  %1244 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 1
  %1245 = load ptr, ptr %1244, align 8, !tbaa !16
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.104, ptr noundef %1245, i32 noundef %1239) #13
  %1246 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 7
  %1247 = load ptr, ptr %1246, align 8, !tbaa !16
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.97, ptr noundef %1247, i32 noundef %1239) #13
  br label %1325

1248:                                             ; preds = %1037
  %1249 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 1
  %1250 = load ptr, ptr %1249, align 8, !tbaa !16
  %1251 = add nsw i32 %3, 4
  tail call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.157, ptr noundef %1250, i32 noundef %1251) #13
  %1252 = tail call i64 @fwrite(ptr nonnull @.str.158, i64 9, i64 1, ptr %0)
  %1253 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 2
  %1254 = load ptr, ptr %1253, align 8, !tbaa !16
  tail call void @print_gimple_stmt(ptr noundef %0, ptr noundef %1254, i32 noundef %1251, i32 noundef 0) #12
  tail call void @indent_to(ptr noundef %0, i32 noundef %1251) #13
  %1255 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 3
  %1256 = load i32, ptr %1255, align 8, !tbaa !16
  %1257 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.159, i32 noundef %1256) #13
  %1258 = load i64, ptr %2, align 8
  %1259 = and i64 %1258, 4194304
  %1260 = icmp eq i64 %1259, 0
  br i1 %1260, label %1264, label %1261

1261:                                             ; preds = %1248
  %1262 = tail call i64 @fwrite(ptr nonnull @.str.160, i64 16, i64 1, ptr %0)
  %1263 = load i64, ptr %2, align 8
  br label %1264

1264:                                             ; preds = %1261, %1248
  %1265 = phi i64 [ %1263, %1261 ], [ %1258, %1248 ]
  %1266 = and i64 %1265, 33554432
  %1267 = icmp eq i64 %1266, 0
  br i1 %1267, label %1270, label %1268

1268:                                             ; preds = %1264
  %1269 = tail call i64 @fwrite(ptr nonnull @.str.161, i64 13, i64 1, ptr %0)
  br label %1270

1270:                                             ; preds = %1268, %1264
  %1271 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 4
  %1272 = load ptr, ptr %1271, align 8, !tbaa !16
  %1273 = icmp eq ptr %1272, null
  br i1 %1273, label %1325, label %1274

1274:                                             ; preds = %1270
  %1275 = add nsw i32 %3, 3
  tail call void @indent_to(ptr noundef %0, i32 noundef %1275) #13
  %1276 = load ptr, ptr %1271, align 8, !tbaa !16
  %1277 = icmp eq ptr %1276, null
  br i1 %1277, label %1325, label %1278

1278:                                             ; preds = %1274
  tail call void @dump_addr(ptr noundef %0, ptr noundef nonnull @.str.162, ptr noundef nonnull %1276) #13
  br label %1325

1279:                                             ; preds = %1037
  %1280 = getelementptr inbounds %struct.tree_omp_clause, ptr %2, i64 0, i32 2
  %1281 = load i32, ptr %1280, align 4, !tbaa !16
  %1282 = zext i32 %1281 to i64
  %1283 = getelementptr inbounds [0 x ptr], ptr @omp_clause_code_name, i64 0, i64 %1282
  %1284 = load ptr, ptr %1283, align 8, !tbaa !5
  %1285 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %1284) #13
  %1286 = load i32, ptr %1280, align 4, !tbaa !16
  %1287 = zext i32 %1286 to i64
  %1288 = getelementptr inbounds [0 x i8], ptr @omp_clause_num_ops, i64 0, i64 %1287
  %1289 = load i8, ptr %1288, align 1, !tbaa !16
  %1290 = icmp eq i8 %1289, 0
  br i1 %1290, label %1325, label %1291

1291:                                             ; preds = %1279
  %1292 = add nsw i32 %3, 4
  br label %1293

1293:                                             ; preds = %1291, %1293
  %1294 = phi i64 [ 0, %1291 ], [ %1299, %1293 ]
  tail call void @indent_to(ptr noundef %0, i32 noundef %1292) #13
  %1295 = trunc i64 %1294 to i32
  %1296 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.163, i32 noundef %1295) #13
  %1297 = getelementptr inbounds %struct.tree_omp_clause, ptr %2, i64 0, i32 6, i64 %1294
  %1298 = load ptr, ptr %1297, align 8, !tbaa !16
  tail call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %1298, i32 noundef 0) #13
  %1299 = add nuw nsw i64 %1294, 1
  %1300 = load i32, ptr %1280, align 4, !tbaa !16
  %1301 = zext i32 %1300 to i64
  %1302 = getelementptr inbounds [0 x i8], ptr @omp_clause_num_ops, i64 0, i64 %1301
  %1303 = load i8, ptr %1302, align 1, !tbaa !16
  %1304 = zext i8 %1303 to i64
  %1305 = icmp ult i64 %1299, %1304
  br i1 %1305, label %1293, label %1325, !llvm.loop !49

1306:                                             ; preds = %1037
  %1307 = add nsw i32 %3, 4
  %1308 = getelementptr inbounds %struct.tree_optimization_option, ptr %2, i64 0, i32 1
  tail call void @cl_optimization_print(ptr noundef %0, i32 noundef %1307, ptr noundef nonnull %1308) #12
  br label %1325

1309:                                             ; preds = %1037
  %1310 = add nsw i32 %3, 4
  %1311 = getelementptr inbounds %struct.tree_target_option, ptr %2, i64 0, i32 1
  tail call void @cl_target_option_print(ptr noundef %0, i32 noundef %1310, ptr noundef nonnull %1311) #12
  br label %1325

1312:                                             ; preds = %1037
  %1313 = tail call i64 @fwrite(ptr nonnull @.str.164, i64 21, i64 1, ptr %0)
  %1314 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 5
  %1315 = load ptr, ptr %1314, align 8, !tbaa !16
  %1316 = add nsw i32 %3, 4
  tail call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.165, ptr noundef %1315, i32 noundef %1316) #13
  br label %1325

1317:                                             ; preds = %1037
  %1318 = load i64, ptr %2, align 8
  %1319 = and i64 %1318, 65535
  %1320 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1319
  %1321 = load i32, ptr %1320, align 4, !tbaa !9
  %1322 = icmp eq i32 %1321, 0
  br i1 %1322, label %1323, label %1325

1323:                                             ; preds = %1317
  %1324 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 18), align 8, !tbaa !50
  tail call void %1324(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %3) #12
  br label %1325

1325:                                             ; preds = %1293, %1188, %1175, %1279, %1178, %1159, %1084, %1091, %1111, %1112, %1149, %1151, %1233, %1236, %1306, %1309, %1312, %1055, %1058, %1051, %1147, %1146, %1274, %1278, %1270, %1323, %1317, %758, %759, %328, %1033, %995, %987
  %1326 = load i64, ptr %2, align 8
  %1327 = and i64 %1326, 65535
  %1328 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1327
  %1329 = load i32, ptr %1328, align 4, !tbaa !9
  %1330 = add i32 %1329, -4
  %1331 = icmp ult i32 %1330, 7
  br i1 %1331, label %1332, label %1344

1332:                                             ; preds = %1325
  %1333 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 1
  %1334 = load i32, ptr %1333, align 8, !tbaa !16
  %1335 = icmp eq i32 %1334, 0
  br i1 %1335, label %1344, label %1336

1336:                                             ; preds = %1332
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #14
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %17, i32 noundef %1334) #12
  %1337 = add nsw i32 %3, 4
  call void @indent_to(ptr noundef %0, i32 noundef %1337) #13
  %1338 = load ptr, ptr %17, align 8, !tbaa !51
  %1339 = getelementptr inbounds %struct.expanded_location, ptr %17, i64 0, i32 1
  %1340 = load i32, ptr %1339, align 8, !tbaa !52
  %1341 = getelementptr inbounds %struct.expanded_location, ptr %17, i64 0, i32 2
  %1342 = load i32, ptr %1341, align 4, !tbaa !53
  %1343 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.166, ptr noundef %1338, i32 noundef %1340, i32 noundef %1342) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #14
  br label %1344

1344:                                             ; preds = %1325, %1336, %1332
  %1345 = call i32 @fputc(i32 62, ptr %0)
  br label %1346

1346:                                             ; preds = %4, %1344, %54, %36, %33, %27
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_addr(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = load i32, ptr @flag_dump_noaddr, align 4, !tbaa !9
  %5 = icmp ne i32 %4, 0
  %6 = load i32, ptr @flag_dump_unnumbered, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %1) #13
  br label %13

11:                                               ; preds = %3
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %1, ptr noundef %2) #13
  br label %13

13:                                               ; preds = %11, %9
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_node_brief(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.real_value, align 8
  %6 = alloca [60 x i8], align 16
  %7 = alloca %struct.fixed_value, align 8
  %8 = alloca [60 x i8], align 16
  %9 = icmp eq ptr %2, null
  br i1 %9, label %161, label %10

10:                                               ; preds = %4
  %11 = load i64, ptr %2, align 8
  %12 = and i64 %11, 65535
  %13 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !9
  %15 = icmp sgt i32 %3, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = tail call i32 @fputc(i32 32, ptr %0)
  %18 = load i64, ptr %2, align 8
  %19 = and i64 %18, 65535
  br label %20

20:                                               ; preds = %16, %10
  %21 = phi i64 [ %19, %16 ], [ %12, %10 ]
  %22 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !5
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %1, ptr noundef %23) #13
  tail call void @dump_addr(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %2) #13
  switch i32 %14, label %84 [
    i32 3, label %25
    i32 2, label %61
  ]

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !16
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.tree_identifier, ptr %27, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !16
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %31) #13
  br label %84

33:                                               ; preds = %25
  %34 = load i64, ptr %2, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 30
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.tree_label_decl, ptr %2, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !16
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = load i32, ptr @dump_flags, align 4, !tbaa !9
  %43 = and i32 %42, 1048576
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 7, i64 1, ptr %0)
  br label %84

47:                                               ; preds = %41
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %39) #13
  br label %84

49:                                               ; preds = %37, %33
  %50 = load i32, ptr @dump_flags, align 4, !tbaa !9
  %51 = and i32 %50, 1048576
  %52 = icmp eq i32 %51, 0
  %53 = icmp eq i64 %35, 33
  %54 = select i1 %53, i32 67, i32 68
  br i1 %52, label %57, label %55

55:                                               ; preds = %49
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %54) #13
  br label %84

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 2
  %59 = load i32, ptr %58, align 4, !tbaa !16
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %54, i32 noundef %59) #13
  br label %84

61:                                               ; preds = %20
  %62 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 12
  %63 = load ptr, ptr %62, align 8, !tbaa !16
  %64 = icmp eq ptr %63, null
  br i1 %64, label %77, label %65

65:                                               ; preds = %61
  %66 = load i64, ptr %63, align 8
  %67 = trunc i64 %66 to i16
  switch i16 %67, label %77 [
    i16 1, label %72
    i16 35, label %68
  ]

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.tree_decl_minimal, ptr %63, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !16
  %71 = icmp eq ptr %70, null
  br i1 %71, label %77, label %72

72:                                               ; preds = %68, %65
  %73 = phi ptr [ %63, %65 ], [ %70, %68 ]
  %74 = getelementptr inbounds %struct.tree_identifier, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !16
  %76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %75) #13
  br label %77

77:                                               ; preds = %72, %65, %68, %61
  %78 = load i64, ptr %2, align 8
  %79 = lshr i64 %78, 56
  %80 = trunc i64 %79 to i32
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %77
  %83 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %80) #13
  br label %84

84:                                               ; preds = %20, %82, %77, %29, %55, %57, %45, %47
  %85 = load i64, ptr %2, align 8
  %86 = and i64 %85, 65535
  %87 = icmp eq i64 %86, 1
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.tree_identifier, ptr %2, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !16
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %90) #13
  %92 = load i64, ptr %2, align 8
  br label %93

93:                                               ; preds = %88, %84
  %94 = phi i64 [ %92, %88 ], [ %85, %84 ]
  %95 = and i64 %94, 65535
  %96 = icmp eq i64 %95, 23
  br i1 %96, label %97, label %118

97:                                               ; preds = %93
  %98 = and i64 %94, 134217728
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 9, i64 1, ptr %0)
  br label %102

102:                                              ; preds = %100, %97
  %103 = tail call i32 @fputc(i32 32, ptr %0)
  %104 = getelementptr inbounds %struct.tree_int_cst, ptr %2, i64 0, i32 1
  %105 = getelementptr inbounds %struct.tree_int_cst, ptr %2, i64 0, i32 1, i32 1
  %106 = load i64, ptr %105, align 8, !tbaa !16
  %107 = load i64, ptr %104, align 8, !tbaa !16
  switch i64 %106, label %115 [
    i64 0, label %108
    i64 -1, label %110
  ]

108:                                              ; preds = %102
  %109 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i64 noundef %107) #13
  br label %118

110:                                              ; preds = %102
  %111 = icmp eq i64 %107, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %110
  %113 = sub i64 0, %107
  %114 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %113) #13
  br label %118

115:                                              ; preds = %102, %110
  %116 = phi i64 [ 0, %110 ], [ %107, %102 ]
  %117 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, i64 noundef %106, i64 noundef %116) #13
  br label %118

118:                                              ; preds = %108, %115, %112, %93
  %119 = load i64, ptr %2, align 8
  %120 = and i64 %119, 65535
  %121 = icmp eq i64 %120, 24
  br i1 %121, label %122, label %146

122:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #14
  %123 = and i64 %119, 134217728
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %122
  %126 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 9, i64 1, ptr %0)
  br label %127

127:                                              ; preds = %125, %122
  %128 = getelementptr inbounds %struct.tree_real_cst, ptr %2, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %129, i64 32, i1 false), !tbaa.struct !34
  %130 = call zeroext i8 @real_isinf(ptr noundef nonnull %5) #12
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %127
  %133 = call zeroext i8 @real_isneg(ptr noundef nonnull %5) #12
  %134 = icmp eq i8 %133, 0
  %135 = select i1 %134, ptr @.str.16, ptr @.str.15
  %136 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %135) #13
  br label %144

137:                                              ; preds = %127
  %138 = call zeroext i8 @real_isnan(ptr noundef nonnull %5) #12
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %137
  %141 = call i64 @fwrite(ptr nonnull @.str.17, i64 4, i64 1, ptr %0)
  br label %144

142:                                              ; preds = %137
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %6) #14
  call void @real_to_decimal(ptr noundef nonnull %6, ptr noundef nonnull %5, i64 noundef 60, i64 noundef 0, i32 noundef 1) #12
  %143 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %6) #14
  br label %144

144:                                              ; preds = %140, %142, %132
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #14
  %145 = load i64, ptr %2, align 8
  br label %146

146:                                              ; preds = %144, %118
  %147 = phi i64 [ %145, %144 ], [ %119, %118 ]
  %148 = and i64 %147, 65535
  %149 = icmp eq i64 %148, 25
  br i1 %149, label %150, label %159

150:                                              ; preds = %146
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %8) #14
  %151 = and i64 %147, 134217728
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %150
  %154 = call i64 @fwrite(ptr nonnull @.str.11, i64 9, i64 1, ptr %0)
  br label %155

155:                                              ; preds = %153, %150
  %156 = getelementptr inbounds %struct.tree_fixed_cst, ptr %2, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %157, i64 24, i1 false), !tbaa.struct !35
  call void @fixed_to_decimal(ptr noundef nonnull %8, ptr noundef nonnull %7, i64 noundef 60) #12
  %158 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #14
  br label %159

159:                                              ; preds = %155, %146
  %160 = call i32 @fputc(i32 62, ptr %0)
  br label %161

161:                                              ; preds = %4, %159
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare zeroext i8 @real_isinf(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @real_isneg(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @real_isnan(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @real_to_decimal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: optsize
declare void @fixed_to_decimal(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @indent_to(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = tail call i32 @fputc(i32 10, ptr %0)
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i32 [ %9, %6 ], [ 0, %4 ]
  %8 = tail call i32 @fputc(i32 32, ptr %0)
  %9 = add nuw nsw i32 %7, 1
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %11, label %6, !llvm.loop !54

11:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @print_rtl(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @make_decl_rtl(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @decl_value_expr_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @first_call_expr_arg(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #7 {
  tail call fastcc void @init_call_expr_arg_iterator(ptr noundef %0, ptr noundef %1) #13
  %3 = tail call fastcc ptr @next_call_expr_arg(ptr noundef %1) #13
  ret ptr %3
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_call_expr_arg(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !55
  %4 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !57
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !58
  %9 = add nsw i32 %3, 3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !16
  %13 = add nsw i32 %3, 1
  store i32 %13, ptr %2, align 4, !tbaa !55
  br label %14

14:                                               ; preds = %1, %7
  %15 = phi ptr [ %12, %7 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @tree_operand_length(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !9
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  %10 = getelementptr inbounds %struct.tree_int_cst, ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !16
  %12 = trunc i64 %11 to i32
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %3
  %15 = load i8, ptr %14, align 1, !tbaa !16
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i32 [ %12, %7 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_constructor_elt_base_length(ptr noundef readonly %0) unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !59
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_constructor_elt_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #10 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc { ptr, ptr } @tsi_start(ptr noundef %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.tree_statement_list, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = insertvalue { ptr, ptr } poison, ptr %3, 0
  %5 = insertvalue { ptr, ptr } %4, ptr %0, 1
  ret { ptr, ptr } %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @tsi_end_p(ptr readnone %0) unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @tsi_stmt(ptr nocapture readonly %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.tree_statement_list_node, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @tsi_next(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !63
  %3 = getelementptr inbounds %struct.tree_statement_list_node, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  store ptr %4, ptr %0, align 8, !tbaa !63
  ret void
}

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cl_optimization_print(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cl_target_option_print(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @init_call_expr_arg_iterator(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #7 {
  store ptr %0, ptr %1, align 8, !tbaa !58
  %3 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.tree_int_cst, ptr %4, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !16
  %7 = trunc i64 %6 to i32
  %8 = add nsw i32 %7, -3
  %9 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %1, i64 0, i32 1
  store i32 %8, ptr %9, align 8, !tbaa !57
  %10 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %1, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !55
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !6, i64 0}
!14 = !{!"bucket", !6, i64 0, !6, i64 8}
!15 = !{!14, !6, i64 8}
!16 = !{!7, !7, i64 0}
!17 = !{!18, !7, i64 16}
!18 = !{!"", !6, i64 0, !10, i64 8, !10, i64 12, !7, i64 16}
!19 = !{i64 0, i64 8, !5, i64 8, i64 4, !9, i64 12, i64 4, !9, i64 16, i64 1, !16}
!20 = !{i64 0, i64 4, !9, i64 4, i64 4, !9, i64 8, i64 1, !16}
!21 = !{i64 0, i64 4, !9, i64 4, i64 1, !16}
!22 = !{!23, !6, i64 152}
!23 = !{!"lang_hooks", !6, i64 0, !24, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !6, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !25, i64 240, !26, i64 248, !27, i64 256, !28, i64 272, !29, i64 432, !30, i64 560, !6, i64 584, !6, i64 592, !6, i64 600, !6, i64 608, !6, i64 616, !6, i64 624, !6, i64 632, !6, i64 640, !6, i64 648, !6, i64 656, !6, i64 664, !7, i64 672}
!24 = !{!"long", !7, i64 0}
!25 = !{!"lang_hooks_for_tree_inlining", !6, i64 0}
!26 = !{!"lang_hooks_for_callgraph", !6, i64 0}
!27 = !{!"lang_hooks_for_tree_dump", !6, i64 0, !6, i64 8}
!28 = !{!"lang_hooks_for_decls", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152}
!29 = !{!"lang_hooks_for_types", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !7, i64 120}
!30 = !{!"lang_hooks_for_lto", !6, i64 0, !6, i64 8, !6, i64 16}
!31 = !{!23, !6, i64 160}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12}
!34 = !{i64 0, i64 4, !9, i64 0, i64 4, !9, i64 0, i64 4, !9, i64 0, i64 4, !9, i64 0, i64 4, !9, i64 0, i64 4, !9, i64 8, i64 24, !16}
!35 = !{i64 0, i64 8, !36, i64 8, i64 8, !36, i64 16, i64 4, !9}
!36 = !{!24, !24, i64 0}
!37 = distinct !{!37, !12}
!38 = distinct !{!38, !12}
!39 = !{!23, !6, i64 168}
!40 = distinct !{!40, !12}
!41 = !{!42, !6, i64 8}
!42 = !{!"constructor_elt_d", !6, i64 0, !6, i64 8}
!43 = !{!42, !6, i64 0}
!44 = distinct !{!44, !12}
!45 = !{i64 0, i64 8, !5, i64 8, i64 8, !5}
!46 = !{i64 0, i64 8, !5}
!47 = distinct !{!47, !12}
!48 = distinct !{!48, !12}
!49 = distinct !{!49, !12}
!50 = !{!23, !6, i64 144}
!51 = !{!18, !6, i64 0}
!52 = !{!18, !10, i64 8}
!53 = !{!18, !10, i64 12}
!54 = distinct !{!54, !12}
!55 = !{!56, !10, i64 12}
!56 = !{!"call_expr_arg_iterator_d", !6, i64 0, !10, i64 8, !10, i64 12}
!57 = !{!56, !10, i64 8}
!58 = !{!56, !6, i64 0}
!59 = !{!60, !10, i64 0}
!60 = !{!"VEC_constructor_elt_base", !10, i64 0, !10, i64 4, !7, i64 8}
!61 = !{!62, !6, i64 16}
!62 = !{!"tree_statement_list_node", !6, i64 0, !6, i64 8, !6, i64 16}
!63 = !{!64, !6, i64 0}
!64 = !{!"", !6, i64 0, !6, i64 8}
!65 = !{!62, !6, i64 8}
