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
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.real_value = type { i32, [3 x i64] }
%struct.fixed_value = type { %struct.double_int, i32 }
%struct.double_int = type { i64, i64 }
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
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.tree_statement_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_statement_list_node = type { ptr, ptr, ptr }
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

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #15
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #15
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #15
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #15
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
  %5 = tail call ptr @__ctype_tolower_loc() #15
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
  %5 = tail call ptr @__ctype_toupper_loc() #15
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #15
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
define dso_local void @debug_tree(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = tail call ptr @xcalloc(i64 noundef 37, i64 noundef 8) #15
  store ptr %2, ptr @table, align 8, !tbaa !35
  %3 = load ptr, ptr @stderr, align 8, !tbaa !35
  tail call void @print_node(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef %0, i32 noundef 0)
  %4 = load ptr, ptr @table, align 8, !tbaa !35
  tail call void @free(ptr noundef %4)
  store ptr null, ptr @table, align 8, !tbaa !35
  %5 = load ptr, ptr @stderr, align 8, !tbaa !35
  %6 = tail call i32 @putc(i32 noundef 10, ptr noundef %5)
  ret void
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @print_node(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !34 {
  %5 = alloca %struct.expanded_location, align 8
  %6 = alloca %struct.expanded_location, align 8
  %7 = alloca [10 x i8], align 1
  %8 = alloca [10 x i8], align 1
  %9 = alloca %struct.real_value, align 8
  %10 = alloca [64 x i8], align 16
  %11 = alloca %struct.fixed_value, align 8
  %12 = alloca [64 x i8], align 16
  %13 = alloca [10 x i8], align 1
  %14 = alloca [10 x i8], align 1
  %15 = alloca %struct.expanded_location, align 8
  %16 = icmp eq ptr %2, null
  br i1 %16, label %1486, label %17

17:                                               ; preds = %4
  %18 = load i64, ptr %2, align 8
  %19 = trunc i64 %18 to i32
  %20 = and i32 %19, 65535
  %21 = and i64 %18, 65535
  %22 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !50
  %24 = icmp sgt i32 %3, 24
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  tail call void @print_node_brief(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3)
  br label %1486

26:                                               ; preds = %17
  %27 = icmp sgt i32 %3, 8
  %28 = and i32 %23, -2
  %29 = icmp eq i32 %28, 2
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  tail call void @print_node_brief(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3)
  br label %1486

32:                                               ; preds = %26
  %33 = icmp eq i32 %20, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %32
  tail call void @print_node_brief(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3)
  br label %1486

35:                                               ; preds = %32
  %36 = load ptr, ptr @table, align 8, !tbaa !35
  %37 = icmp eq ptr %36, null
  br i1 %37, label %59, label %38

38:                                               ; preds = %35
  %39 = ptrtoint ptr %2 to i64
  %40 = urem i64 %39, 37
  %41 = getelementptr inbounds ptr, ptr %36, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !35
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %48

44:                                               ; preds = %48
  %45 = getelementptr inbounds %struct.bucket, ptr %49, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !35
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48, !llvm.loop !54

48:                                               ; preds = %38, %44
  %49 = phi ptr [ %46, %44 ], [ %42, %38 ]
  %50 = load ptr, ptr %49, align 8, !tbaa !55
  %51 = icmp eq ptr %50, %2
  br i1 %51, label %52, label %44

52:                                               ; preds = %48
  tail call void @print_node_brief(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i32 noundef %3)
  br label %1486

53:                                               ; preds = %44, %38
  %54 = tail call ptr @xmalloc(i64 noundef 16) #15
  store ptr %2, ptr %54, align 8, !tbaa !55
  %55 = load ptr, ptr @table, align 8, !tbaa !35
  %56 = getelementptr inbounds ptr, ptr %55, i64 %40
  %57 = load ptr, ptr %56, align 8, !tbaa !35
  %58 = getelementptr inbounds %struct.bucket, ptr %54, i64 0, i32 1
  store ptr %57, ptr %58, align 8, !tbaa !57
  store ptr %54, ptr %56, align 8, !tbaa !35
  br label %59

59:                                               ; preds = %53, %35
  %60 = icmp sgt i32 %3, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %59
  %62 = tail call i32 @fputc(i32 10, ptr %0)
  br label %63

63:                                               ; preds = %61, %59
  %64 = icmp sgt i32 %3, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %63, %65
  %66 = phi i32 [ %68, %65 ], [ 0, %63 ]
  %67 = tail call i32 @fputc(i32 32, ptr %0)
  %68 = add nuw nsw i32 %66, 1
  %69 = icmp eq i32 %68, %3
  br i1 %69, label %70, label %65, !llvm.loop !58

70:                                               ; preds = %65, %63
  %71 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %21
  %72 = load ptr, ptr %71, align 8, !tbaa !35
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %1, ptr noundef %72)
  tail call void @dump_addr(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %2)
  switch i32 %23, label %127 [
    i32 3, label %74
    i32 2, label %108
  ]

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !46
  %77 = icmp eq ptr %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.tree_identifier, ptr %76, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !46
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %80)
  br label %127

82:                                               ; preds = %74
  %83 = icmp eq i32 %20, 30
  br i1 %83, label %84, label %96

84:                                               ; preds = %82
  %85 = getelementptr inbounds %struct.tree_label_decl, ptr %2, i64 0, i32 1
  %86 = load i32, ptr %85, align 8, !tbaa !46
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %96, label %88

88:                                               ; preds = %84
  %89 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %90 = and i32 %89, 1048576
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 7, i64 1, ptr %0)
  br label %127

94:                                               ; preds = %88
  %95 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %86)
  br label %127

96:                                               ; preds = %84, %82
  %97 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %98 = and i32 %97, 1048576
  %99 = icmp eq i32 %98, 0
  %100 = icmp eq i32 %20, 33
  %101 = select i1 %100, i32 67, i32 68
  br i1 %99, label %104, label %102

102:                                              ; preds = %96
  %103 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %101)
  br label %127

104:                                              ; preds = %96
  %105 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 2
  %106 = load i32, ptr %105, align 4, !tbaa !46
  %107 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %101, i32 noundef %106)
  br label %127

108:                                              ; preds = %70
  %109 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 12
  %110 = load ptr, ptr %109, align 8, !tbaa !46
  %111 = icmp eq ptr %110, null
  br i1 %111, label %127, label %112

112:                                              ; preds = %108
  %113 = load i64, ptr %110, align 8
  %114 = trunc i64 %113 to i16
  switch i16 %114, label %127 [
    i16 1, label %115
    i16 35, label %119
  ]

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.tree_identifier, ptr %110, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !46
  %118 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %117)
  br label %127

119:                                              ; preds = %112
  %120 = getelementptr inbounds %struct.tree_decl_minimal, ptr %110, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !46
  %122 = icmp eq ptr %121, null
  br i1 %122, label %127, label %123

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.tree_identifier, ptr %121, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !46
  %126 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %125)
  br label %127

127:                                              ; preds = %112, %70, %115, %123, %119, %108, %78, %102, %104, %92, %94
  %128 = trunc i64 %18 to i16
  switch i16 %128, label %139 [
    i16 1, label %129
    i16 23, label %133
  ]

129:                                              ; preds = %127
  %130 = getelementptr inbounds %struct.tree_identifier, ptr %2, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !46
  %132 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %131)
  br label %139

133:                                              ; preds = %127
  %134 = icmp slt i32 %3, 5
  br i1 %134, label %135, label %159

135:                                              ; preds = %133
  %136 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !46
  %138 = add nsw i32 %3, 4
  tail call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %137, i32 noundef %138)
  br label %159

139:                                              ; preds = %129, %127
  %140 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !46
  %142 = add nsw i32 %3, 4
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.20, ptr noundef %141, i32 noundef %142)
  %143 = load ptr, ptr %140, align 8, !tbaa !46
  %144 = icmp eq ptr %143, null
  br i1 %144, label %159, label %145

145:                                              ; preds = %139
  %146 = icmp sgt i32 %3, -3
  br i1 %146, label %147, label %149

147:                                              ; preds = %145
  %148 = tail call i32 @fputc(i32 10, ptr %0)
  br label %149

149:                                              ; preds = %147, %145
  %150 = icmp sgt i32 %3, -3
  br i1 %150, label %151, label %159

151:                                              ; preds = %149
  %152 = add i32 %3, 2
  %153 = tail call i32 @llvm.smax.i32(i32 %152, i32 0)
  br label %154

154:                                              ; preds = %151, %154
  %155 = phi i32 [ %157, %154 ], [ 0, %151 ]
  %156 = tail call i32 @fputc(i32 32, ptr %0)
  %157 = add nuw i32 %155, 1
  %158 = icmp eq i32 %155, %153
  br i1 %158, label %159, label %154, !llvm.loop !58

159:                                              ; preds = %154, %149, %139, %133, %135
  %160 = load i64, ptr %2, align 8
  %161 = and i64 %160, 65535
  %162 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %161
  %163 = load i32, ptr %162, align 4, !tbaa !50
  %164 = icmp eq i32 %163, 2
  %165 = and i64 %160, 65536
  %166 = icmp eq i64 %165, 0
  %167 = or i1 %164, %166
  br i1 %167, label %170, label %168

168:                                              ; preds = %159
  %169 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 13, i64 1, ptr %0)
  br label %170

170:                                              ; preds = %168, %159
  %171 = load i64, ptr %2, align 8
  %172 = and i64 %171, 1048576
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %170
  %175 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 9, i64 1, ptr %0)
  br label %176

176:                                              ; preds = %170, %174
  %177 = load i64, ptr %2, align 8
  %178 = and i64 %177, 65535
  %179 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %178
  %180 = load i32, ptr %179, align 4, !tbaa !50
  %181 = icmp eq i32 %180, 2
  %182 = and i64 %177, 131072
  %183 = icmp eq i64 %182, 0
  %184 = or i1 %181, %183
  br i1 %184, label %187, label %185

185:                                              ; preds = %176
  %186 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 9, i64 1, ptr %0)
  br label %192

187:                                              ; preds = %176
  %188 = icmp ne i32 %180, 2
  %189 = or i1 %188, %183
  br i1 %189, label %192, label %190

190:                                              ; preds = %187
  %191 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 17, i64 1, ptr %0)
  br label %192

192:                                              ; preds = %187, %190, %185
  %193 = load i64, ptr %2, align 8
  %194 = and i64 %193, 65535
  %195 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %194
  %196 = load i32, ptr %195, align 4, !tbaa !50
  %197 = icmp eq i32 %196, 2
  br i1 %197, label %198, label %204

198:                                              ; preds = %192
  %199 = lshr i64 %193, 56
  %200 = trunc i64 %199 to i32
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %204, label %202

202:                                              ; preds = %198
  %203 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %200)
  br label %204

204:                                              ; preds = %202, %198, %192
  %205 = load i64, ptr %2, align 8
  %206 = and i64 %205, 262144
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %204
  %209 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 12, i64 1, ptr %0)
  br label %210

210:                                              ; preds = %208, %204
  %211 = load i64, ptr %2, align 8
  %212 = and i64 %211, 524288
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %216, label %214

214:                                              ; preds = %210
  %215 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 9, i64 1, ptr %0)
  br label %216

216:                                              ; preds = %214, %210
  %217 = load i64, ptr %2, align 8
  %218 = and i64 %217, 4194304
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %216
  %221 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 12, i64 1, ptr %0)
  br label %222

222:                                              ; preds = %220, %216
  %223 = load i64, ptr %2, align 8
  %224 = and i64 %223, 16777216
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %228, label %226

226:                                              ; preds = %222
  %227 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 5, i64 1, ptr %0)
  br label %228

228:                                              ; preds = %226, %222
  %229 = load i64, ptr %2, align 8
  %230 = and i64 %229, 33554432
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %239, label %232

232:                                              ; preds = %228
  %233 = and i64 %229, 65535
  %234 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %233
  %235 = load i32, ptr %234, align 4, !tbaa !50
  %236 = icmp eq i32 %235, 2
  %237 = select i1 %236, ptr @.str.29, ptr @.str.30
  %238 = tail call i32 @fputs(ptr noundef nonnull %237, ptr noundef %0)
  br label %239

239:                                              ; preds = %232, %228
  %240 = load i64, ptr %2, align 8
  %241 = and i64 %240, 134217728
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %245, label %243

243:                                              ; preds = %239
  %244 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 7, i64 1, ptr %0)
  br label %245

245:                                              ; preds = %243, %239
  %246 = load i64, ptr %2, align 8
  %247 = and i64 %246, 268435456
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %251, label %249

249:                                              ; preds = %245
  %250 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 8, i64 1, ptr %0)
  br label %251

251:                                              ; preds = %249, %245
  %252 = load i64, ptr %2, align 8
  %253 = and i64 %252, 536870912
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %257, label %255

255:                                              ; preds = %251
  %256 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 10, i64 1, ptr %0)
  br label %257

257:                                              ; preds = %255, %251
  %258 = load i64, ptr %2, align 8
  %259 = and i64 %258, 67108864
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %263, label %261

261:                                              ; preds = %257
  %262 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 7, i64 1, ptr %0)
  br label %263

263:                                              ; preds = %261, %257
  %264 = load i64, ptr %2, align 8
  %265 = and i64 %264, 1073741824
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %269, label %267

267:                                              ; preds = %263
  %268 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 11, i64 1, ptr %0)
  br label %269

269:                                              ; preds = %267, %263
  %270 = load i64, ptr %2, align 8
  %271 = and i64 %270, 1099511627776
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %275, label %273

273:                                              ; preds = %269
  %274 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 8, i64 1, ptr %0)
  br label %275

275:                                              ; preds = %273, %269
  %276 = load i64, ptr %2, align 8
  %277 = and i64 %276, 8589934592
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %281, label %279

279:                                              ; preds = %275
  %280 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 7, i64 1, ptr %0)
  br label %281

281:                                              ; preds = %279, %275
  %282 = load i64, ptr %2, align 8
  %283 = and i64 %282, 17179869184
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %287, label %285

285:                                              ; preds = %281
  %286 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 7, i64 1, ptr %0)
  br label %287

287:                                              ; preds = %285, %281
  %288 = load i64, ptr %2, align 8
  %289 = and i64 %288, 34359738368
  %290 = icmp eq i64 %289, 0
  br i1 %290, label %293, label %291

291:                                              ; preds = %287
  %292 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 7, i64 1, ptr %0)
  br label %293

293:                                              ; preds = %291, %287
  %294 = load i64, ptr %2, align 8
  %295 = and i64 %294, 68719476736
  %296 = icmp eq i64 %295, 0
  br i1 %296, label %299, label %297

297:                                              ; preds = %293
  %298 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 7, i64 1, ptr %0)
  br label %299

299:                                              ; preds = %297, %293
  %300 = load i64, ptr %2, align 8
  %301 = and i64 %300, 137438953472
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %305, label %303

303:                                              ; preds = %299
  %304 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 7, i64 1, ptr %0)
  br label %305

305:                                              ; preds = %303, %299
  %306 = load i64, ptr %2, align 8
  %307 = and i64 %306, 274877906944
  %308 = icmp eq i64 %307, 0
  br i1 %308, label %311, label %309

309:                                              ; preds = %305
  %310 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 7, i64 1, ptr %0)
  br label %311

311:                                              ; preds = %309, %305
  %312 = load i64, ptr %2, align 8
  %313 = and i64 %312, 549755813888
  %314 = icmp eq i64 %313, 0
  br i1 %314, label %317, label %315

315:                                              ; preds = %311
  %316 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 7, i64 1, ptr %0)
  br label %317

317:                                              ; preds = %315, %311
  switch i32 %23, label %1452 [
    i32 3, label %318
    i32 2, label %779
    i32 10, label %1028
    i32 5, label %1028
    i32 6, label %1028
    i32 7, label %1028
    i32 4, label %1028
    i32 8, label %1028
    i32 9, label %1028
    i32 1, label %1108
    i32 0, label %1108
  ]

318:                                              ; preds = %317
  %319 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %21, i64 10
  %320 = load i8, ptr %319, align 2, !tbaa !46
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %353, label %322

322:                                              ; preds = %318
  %323 = load i64, ptr %2, align 8
  %324 = and i64 %323, 2097152
  %325 = icmp eq i64 %324, 0
  br i1 %325, label %328, label %326

326:                                              ; preds = %322
  %327 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 9, i64 1, ptr %0)
  br label %328

328:                                              ; preds = %326, %322
  %329 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 2
  %330 = load i64, ptr %329, align 8
  %331 = and i64 %330, 1024
  %332 = icmp eq i64 %331, 0
  br i1 %332, label %335, label %333

333:                                              ; preds = %328
  %334 = tail call i64 @fwrite(ptr nonnull @.str.45, i64 8, i64 1, ptr %0)
  br label %335

335:                                              ; preds = %333, %328
  %336 = load i64, ptr %329, align 8
  %337 = and i64 %336, 2048
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %341, label %339

339:                                              ; preds = %335
  %340 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 9, i64 1, ptr %0)
  br label %341

341:                                              ; preds = %339, %335
  %342 = load i64, ptr %329, align 8
  %343 = and i64 %342, 33554432
  %344 = icmp eq i64 %343, 0
  br i1 %344, label %347, label %345

345:                                              ; preds = %341
  %346 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 9, i64 1, ptr %0)
  br label %347

347:                                              ; preds = %345, %341
  %348 = load i64, ptr %329, align 8
  %349 = and i64 %348, 256
  %350 = icmp eq i64 %349, 0
  br i1 %350, label %353, label %351

351:                                              ; preds = %347
  %352 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 9, i64 1, ptr %0)
  br label %353

353:                                              ; preds = %347, %351, %318
  %354 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %21, i64 13
  %355 = load i8, ptr %354, align 1, !tbaa !46
  %356 = icmp eq i8 %355, 0
  br i1 %356, label %372, label %357

357:                                              ; preds = %353
  %358 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %2, i64 0, i32 4
  %359 = load i32, ptr %358, align 8
  %360 = and i32 %359, 128
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %364, label %362

362:                                              ; preds = %357
  %363 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 5, i64 1, ptr %0)
  br label %364

364:                                              ; preds = %362, %357
  %365 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 1
  %366 = load i32, ptr %365, align 8, !tbaa !46
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %5, i32 noundef %366) #15
  %367 = getelementptr inbounds %struct.expanded_location, ptr %5, i64 0, i32 3
  %368 = load i8, ptr %367, align 8, !tbaa !59
  %369 = icmp eq i8 %368, 0
  br i1 %369, label %372, label %370

370:                                              ; preds = %364
  %371 = call i64 @fwrite(ptr nonnull @.str.50, i64 17, i64 1, ptr %0)
  br label %372

372:                                              ; preds = %364, %370, %353
  %373 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %21, i64 11
  %374 = load i8, ptr %373, align 1, !tbaa !46
  %375 = icmp ne i8 %374, 0
  %376 = icmp eq i32 %20, 29
  %377 = add nsw i32 %20, -31
  %378 = icmp ult i32 %377, -2
  %379 = and i1 %378, %375
  br i1 %379, label %380, label %387

380:                                              ; preds = %372
  %381 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 2
  %382 = load i64, ptr %381, align 8
  %383 = and i64 %382, 16777216
  %384 = icmp eq i64 %383, 0
  br i1 %384, label %387, label %385

385:                                              ; preds = %380
  %386 = call i64 @fwrite(ptr nonnull @.str.51, i64 8, i64 1, ptr %0)
  br label %387

387:                                              ; preds = %385, %380, %372
  %388 = icmp eq i32 %20, 35
  br i1 %388, label %389, label %396

389:                                              ; preds = %387
  %390 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 2
  %391 = load i64, ptr %390, align 8
  %392 = and i64 %391, 33554432
  %393 = icmp eq i64 %392, 0
  br i1 %393, label %396, label %394

394:                                              ; preds = %389
  %395 = call i64 @fwrite(ptr nonnull @.str.52, i64 15, i64 1, ptr %0)
  br label %396

396:                                              ; preds = %394, %389, %387
  br i1 %376, label %397, label %428

397:                                              ; preds = %396
  %398 = getelementptr inbounds %struct.tree_function_decl, ptr %2, i64 0, i32 3
  %399 = load ptr, ptr %398, align 8, !tbaa !46
  %400 = icmp eq ptr %399, null
  br i1 %400, label %403, label %401

401:                                              ; preds = %397
  %402 = call i64 @fwrite(ptr nonnull @.str.53, i64 25, i64 1, ptr %0)
  br label %403

403:                                              ; preds = %397, %401
  %404 = getelementptr inbounds %struct.tree_function_decl, ptr %2, i64 0, i32 4
  %405 = load ptr, ptr %404, align 8, !tbaa !46
  %406 = icmp eq ptr %405, null
  br i1 %406, label %409, label %407

407:                                              ; preds = %403
  %408 = call i64 @fwrite(ptr nonnull @.str.54, i64 22, i64 1, ptr %0)
  br label %409

409:                                              ; preds = %403, %407
  %410 = getelementptr inbounds %struct.tree_function_decl, ptr %2, i64 0, i32 5
  %411 = load i32, ptr %410, align 8
  %412 = and i32 %411, 2097152
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %416, label %414

414:                                              ; preds = %409
  %415 = call i64 @fwrite(ptr nonnull @.str.55, i64 11, i64 1, ptr %0)
  br label %416

416:                                              ; preds = %409, %414
  %417 = load i32, ptr %410, align 8
  %418 = and i32 %417, 6144
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %422, label %420

420:                                              ; preds = %416
  %421 = call i64 @fwrite(ptr nonnull @.str.56, i64 9, i64 1, ptr %0)
  br label %422

422:                                              ; preds = %416, %420
  %423 = load i32, ptr %410, align 8
  %424 = and i32 %423, 4194304
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %428, label %426

426:                                              ; preds = %422
  %427 = call i64 @fwrite(ptr nonnull @.str.57, i64 13, i64 1, ptr %0)
  br label %428

428:                                              ; preds = %396, %426, %422
  %429 = icmp eq i32 %20, 31
  br i1 %429, label %430, label %449

430:                                              ; preds = %428
  %431 = load i64, ptr %2, align 8
  %432 = and i64 %431, 2199023255552
  %433 = icmp eq i64 %432, 0
  br i1 %433, label %436, label %434

434:                                              ; preds = %430
  %435 = call i64 @fwrite(ptr nonnull @.str.58, i64 7, i64 1, ptr %0)
  br label %436

436:                                              ; preds = %430, %434
  %437 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 2
  %438 = load i64, ptr %437, align 8
  %439 = and i64 %438, 33554432
  %440 = icmp eq i64 %439, 0
  br i1 %440, label %443, label %441

441:                                              ; preds = %436
  %442 = call i64 @fwrite(ptr nonnull @.str.59, i64 10, i64 1, ptr %0)
  br label %443

443:                                              ; preds = %436, %441
  %444 = load i64, ptr %437, align 8
  %445 = and i64 %444, 67108864
  %446 = icmp eq i64 %445, 0
  br i1 %446, label %449, label %447

447:                                              ; preds = %443
  %448 = call i64 @fwrite(ptr nonnull @.str.60, i64 15, i64 1, ptr %0)
  br label %449

449:                                              ; preds = %428, %447, %443
  switch i16 %128, label %493 [
    i16 30, label %450
    i16 32, label %465
  ]

450:                                              ; preds = %449
  %451 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 2
  %452 = load i64, ptr %451, align 8
  %453 = and i64 %452, 16777216
  %454 = icmp eq i64 %453, 0
  br i1 %454, label %457, label %455

455:                                              ; preds = %450
  %456 = call i64 @fwrite(ptr nonnull @.str.61, i64 13, i64 1, ptr %0)
  br label %457

457:                                              ; preds = %450, %455
  %458 = getelementptr inbounds %struct.tree_label_decl, ptr %2, i64 0, i32 2
  %459 = load i32, ptr %458, align 4, !tbaa !46
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %463, label %461

461:                                              ; preds = %457
  %462 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %459)
  br label %463

463:                                              ; preds = %461, %457
  %464 = icmp eq i32 %20, 32
  br i1 %464, label %465, label %493

465:                                              ; preds = %449, %463
  %466 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %2, i64 0, i32 4
  %467 = load i32, ptr %466, align 8
  %468 = and i32 %467, 16
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %472, label %470

470:                                              ; preds = %465
  %471 = call i64 @fwrite(ptr nonnull @.str.63, i64 16, i64 1, ptr %0)
  br label %472

472:                                              ; preds = %465, %470
  %473 = load i32, ptr %466, align 8
  %474 = and i32 %473, 8
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %478, label %476

476:                                              ; preds = %472
  %477 = call i64 @fwrite(ptr nonnull @.str.64, i64 7, i64 1, ptr %0)
  br label %478

478:                                              ; preds = %472, %476
  %479 = load i32, ptr %466, align 8
  %480 = lshr i32 %479, 13
  %481 = and i32 %480, 7
  %482 = icmp ugt i32 %481, 1
  br i1 %482, label %483, label %493

483:                                              ; preds = %478
  switch i32 %481, label %492 [
    i32 2, label %484
    i32 3, label %486
    i32 4, label %488
    i32 5, label %490
  ]

484:                                              ; preds = %483
  %485 = call i64 @fwrite(ptr nonnull @.str.65, i64 19, i64 1, ptr %0)
  br label %493

486:                                              ; preds = %483
  %487 = call i64 @fwrite(ptr nonnull @.str.66, i64 18, i64 1, ptr %0)
  br label %493

488:                                              ; preds = %483
  %489 = call i64 @fwrite(ptr nonnull @.str.67, i64 17, i64 1, ptr %0)
  br label %493

490:                                              ; preds = %483
  %491 = call i64 @fwrite(ptr nonnull @.str.68, i64 15, i64 1, ptr %0)
  br label %493

492:                                              ; preds = %483
  call void @fancy_abort(ptr noundef nonnull @.str.69, i32 noundef 449, ptr noundef nonnull @.str.70) #15
  br label %493

493:                                              ; preds = %478, %463, %449, %484, %486, %488, %490, %492
  %494 = load i8, ptr %319, align 2, !tbaa !46
  %495 = icmp eq i8 %494, 0
  br i1 %495, label %563, label %496

496:                                              ; preds = %493
  %497 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 2
  %498 = load i64, ptr %497, align 8
  %499 = and i64 %498, 512
  %500 = icmp eq i64 %499, 0
  br i1 %500, label %503, label %501

501:                                              ; preds = %496
  %502 = call i64 @fwrite(ptr nonnull @.str.71, i64 8, i64 1, ptr %0)
  br label %503

503:                                              ; preds = %501, %496
  %504 = load i64, ptr %497, align 8
  %505 = and i64 %504, 8192
  %506 = icmp eq i64 %505, 0
  br i1 %506, label %509, label %507

507:                                              ; preds = %503
  %508 = call i64 @fwrite(ptr nonnull @.str.72, i64 9, i64 1, ptr %0)
  br label %509

509:                                              ; preds = %507, %503
  %510 = load i64, ptr %497, align 8
  %511 = and i64 %510, 32768
  %512 = icmp eq i64 %511, 0
  br i1 %512, label %515, label %513

513:                                              ; preds = %509
  %514 = call i64 @fwrite(ptr nonnull @.str.73, i64 7, i64 1, ptr %0)
  br label %515

515:                                              ; preds = %513, %509
  %516 = load i64, ptr %497, align 8
  %517 = and i64 %516, 65536
  %518 = icmp eq i64 %517, 0
  br i1 %518, label %521, label %519

519:                                              ; preds = %515
  %520 = call i64 @fwrite(ptr nonnull @.str.74, i64 7, i64 1, ptr %0)
  br label %521

521:                                              ; preds = %519, %515
  %522 = load i64, ptr %497, align 8
  %523 = and i64 %522, 131072
  %524 = icmp eq i64 %523, 0
  br i1 %524, label %527, label %525

525:                                              ; preds = %521
  %526 = call i64 @fwrite(ptr nonnull @.str.75, i64 7, i64 1, ptr %0)
  br label %527

527:                                              ; preds = %525, %521
  %528 = load i64, ptr %497, align 8
  %529 = and i64 %528, 262144
  %530 = icmp eq i64 %529, 0
  br i1 %530, label %533, label %531

531:                                              ; preds = %527
  %532 = call i64 @fwrite(ptr nonnull @.str.76, i64 7, i64 1, ptr %0)
  br label %533

533:                                              ; preds = %531, %527
  %534 = load i64, ptr %497, align 8
  %535 = and i64 %534, 524288
  %536 = icmp eq i64 %535, 0
  br i1 %536, label %539, label %537

537:                                              ; preds = %533
  %538 = call i64 @fwrite(ptr nonnull @.str.77, i64 7, i64 1, ptr %0)
  br label %539

539:                                              ; preds = %537, %533
  %540 = load i64, ptr %497, align 8
  %541 = and i64 %540, 1048576
  %542 = icmp eq i64 %541, 0
  br i1 %542, label %545, label %543

543:                                              ; preds = %539
  %544 = call i64 @fwrite(ptr nonnull @.str.78, i64 7, i64 1, ptr %0)
  br label %545

545:                                              ; preds = %543, %539
  %546 = load i64, ptr %497, align 8
  %547 = and i64 %546, 2097152
  %548 = icmp eq i64 %547, 0
  br i1 %548, label %551, label %549

549:                                              ; preds = %545
  %550 = call i64 @fwrite(ptr nonnull @.str.79, i64 7, i64 1, ptr %0)
  br label %551

551:                                              ; preds = %549, %545
  %552 = load i64, ptr %497, align 8
  %553 = and i64 %552, 4194304
  %554 = icmp eq i64 %553, 0
  br i1 %554, label %557, label %555

555:                                              ; preds = %551
  %556 = call i64 @fwrite(ptr nonnull @.str.80, i64 7, i64 1, ptr %0)
  br label %557

557:                                              ; preds = %555, %551
  %558 = load i64, ptr %497, align 8
  %559 = and i64 %558, 255
  %560 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %559
  %561 = load ptr, ptr %560, align 8, !tbaa !35
  %562 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %561)
  br label %563

563:                                              ; preds = %557, %493
  %564 = icmp eq i32 %20, 34
  switch i16 %128, label %572 [
    i16 36, label %565
    i16 34, label %565
    i16 32, label %565
  ]

565:                                              ; preds = %563, %563, %563
  %566 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 2
  %567 = load i64, ptr %566, align 8
  %568 = and i64 %567, 268435456
  %569 = icmp eq i64 %568, 0
  br i1 %569, label %572, label %570

570:                                              ; preds = %565
  %571 = call i64 @fwrite(ptr nonnull @.str.81, i64 20, i64 1, ptr %0)
  br label %572

572:                                              ; preds = %563, %570, %565
  %573 = load i8, ptr %354, align 1, !tbaa !46
  %574 = icmp eq i8 %573, 0
  br i1 %574, label %582, label %575

575:                                              ; preds = %572
  %576 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %2, i64 0, i32 4
  %577 = load i32, ptr %576, align 8
  %578 = and i32 %577, 1
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %582, label %580

580:                                              ; preds = %575
  %581 = call i64 @fwrite(ptr nonnull @.str.82, i64 13, i64 1, ptr %0)
  br label %582

582:                                              ; preds = %580, %575, %572
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  %583 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 1
  %584 = load i32, ptr %583, align 8, !tbaa !46
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %6, i32 noundef %584) #15
  %585 = load ptr, ptr %6, align 8, !tbaa.struct !61
  %586 = getelementptr inbounds i8, ptr %6, i64 8
  %587 = load i32, ptr %586, align 8, !tbaa.struct !62
  %588 = getelementptr inbounds i8, ptr %6, i64 12
  %589 = load i32, ptr %588, align 4, !tbaa.struct !63
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  %590 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.83, ptr noundef %585, i32 noundef %587, i32 noundef %589)
  %591 = load i8, ptr %319, align 2, !tbaa !46
  %592 = icmp eq i8 %591, 0
  br i1 %592, label %653, label %593

593:                                              ; preds = %582
  %594 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 1
  %595 = load ptr, ptr %594, align 8, !tbaa !46
  %596 = add nsw i32 %3, 4
  call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.84, ptr noundef %595, i32 noundef %596)
  %597 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 4
  %598 = load ptr, ptr %597, align 8, !tbaa !46
  call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.85, ptr noundef %598, i32 noundef %596)
  br i1 %376, label %599, label %604

599:                                              ; preds = %593
  %600 = getelementptr inbounds %struct.tree_function_decl, ptr %2, i64 0, i32 5
  %601 = load i32, ptr %600, align 8
  %602 = and i32 %601, 6144
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %618, label %604

604:                                              ; preds = %599, %593
  %605 = icmp sgt i32 %3, -3
  br i1 %605, label %606, label %608

606:                                              ; preds = %604
  %607 = call i32 @fputc(i32 10, ptr %0)
  br label %608

608:                                              ; preds = %606, %604
  %609 = icmp sgt i32 %3, -3
  br i1 %609, label %610, label %618

610:                                              ; preds = %608
  %611 = add i32 %3, 2
  %612 = call i32 @llvm.smax.i32(i32 %611, i32 0)
  br label %613

613:                                              ; preds = %610, %613
  %614 = phi i32 [ %616, %613 ], [ 0, %610 ]
  %615 = call i32 @fputc(i32 32, ptr %0)
  %616 = add nuw i32 %614, 1
  %617 = icmp eq i32 %614, %612
  br i1 %617, label %618, label %613, !llvm.loop !58

618:                                              ; preds = %613, %608, %599
  %619 = load i64, ptr %2, align 8
  %620 = and i64 %619, 4398046511104
  %621 = icmp eq i64 %620, 0
  br i1 %621, label %624, label %622

622:                                              ; preds = %618
  %623 = call i64 @fwrite(ptr nonnull @.str.86, i64 5, i64 1, ptr %0)
  br label %624

624:                                              ; preds = %622, %618
  %625 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 3
  %626 = load i32, ptr %625, align 8, !tbaa !46
  %627 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.87, i32 noundef %626)
  br i1 %429, label %628, label %635

628:                                              ; preds = %624
  %629 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 2
  %630 = load i64, ptr %629, align 8
  %631 = lshr i64 %630, 32
  %632 = and i64 %631, 255
  %633 = shl nuw i64 1, %632
  %634 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.88, i64 noundef %633)
  br label %635

635:                                              ; preds = %628, %624
  br i1 %376, label %636, label %653

636:                                              ; preds = %635
  %637 = getelementptr inbounds %struct.tree_function_decl, ptr %2, i64 0, i32 5
  %638 = load i32, ptr %637, align 8
  %639 = lshr i32 %638, 11
  %640 = and i32 %639, 3
  switch i32 %640, label %644 [
    i32 0, label %653
    i32 2, label %641
  ]

641:                                              ; preds = %636
  %642 = and i32 %638, 2047
  %643 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.89, i32 noundef %642)
  br label %653

644:                                              ; preds = %636
  %645 = zext nneg i32 %640 to i64
  %646 = getelementptr inbounds [4 x ptr], ptr @built_in_class_names, i64 0, i64 %645
  %647 = load ptr, ptr %646, align 8, !tbaa !35
  %648 = and i32 %638, 2047
  %649 = zext nneg i32 %648 to i64
  %650 = getelementptr inbounds [721 x ptr], ptr @built_in_names, i64 0, i64 %649
  %651 = load ptr, ptr %650, align 8, !tbaa !35
  %652 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.90, ptr noundef %647, ptr noundef %651)
  br label %653

653:                                              ; preds = %636, %635, %644, %641, %582
  br i1 %429, label %654, label %664

654:                                              ; preds = %653
  %655 = getelementptr inbounds %struct.tree_field_decl, ptr %2, i64 0, i32 1
  %656 = load ptr, ptr %655, align 8, !tbaa !46
  %657 = add nsw i32 %3, 4
  call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.91, ptr noundef %656, i32 noundef %657)
  %658 = getelementptr inbounds %struct.tree_field_decl, ptr %2, i64 0, i32 4
  %659 = load ptr, ptr %658, align 8, !tbaa !46
  call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.92, ptr noundef %659, i32 noundef %657)
  %660 = getelementptr inbounds %struct.tree_field_decl, ptr %2, i64 0, i32 2
  %661 = load ptr, ptr %660, align 8, !tbaa !46
  %662 = icmp eq ptr %661, null
  br i1 %662, label %664, label %663

663:                                              ; preds = %654
  call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.93, ptr noundef nonnull %661, i32 noundef %657)
  br label %664

664:                                              ; preds = %654, %663, %653
  %665 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 4
  %666 = load ptr, ptr %665, align 8, !tbaa !46
  %667 = add nsw i32 %3, 4
  call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.94, ptr noundef %666, i32 noundef %667)
  %668 = load i8, ptr %319, align 2, !tbaa !46
  %669 = icmp eq i8 %668, 0
  br i1 %669, label %676, label %670

670:                                              ; preds = %664
  %671 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 6
  %672 = load ptr, ptr %671, align 8, !tbaa !46
  call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.95, ptr noundef %672, i32 noundef %667)
  br i1 %564, label %676, label %673

673:                                              ; preds = %670
  %674 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 5
  %675 = load ptr, ptr %674, align 8, !tbaa !46
  call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.96, ptr noundef %675, i32 noundef %667)
  br label %676

676:                                              ; preds = %670, %673, %664
  %677 = load i8, ptr %373, align 1, !tbaa !46
  %678 = icmp eq i8 %677, 0
  br i1 %678, label %682, label %679

679:                                              ; preds = %676
  %680 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 7
  %681 = load ptr, ptr %680, align 8, !tbaa !46
  call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.97, ptr noundef %681, i32 noundef %667)
  br label %682

682:                                              ; preds = %679, %676
  %683 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %21, i64 12
  %684 = load i8, ptr %683, align 4, !tbaa !46
  %685 = icmp eq i8 %684, 0
  br i1 %685, label %691, label %686

686:                                              ; preds = %682
  %687 = getelementptr inbounds %struct.tree_decl_non_common, ptr %2, i64 0, i32 2
  %688 = load ptr, ptr %687, align 8, !tbaa !46
  call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.98, ptr noundef %688, i32 noundef %667)
  %689 = getelementptr inbounds %struct.tree_decl_non_common, ptr %2, i64 0, i32 3
  %690 = load ptr, ptr %689, align 8, !tbaa !46
  call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.99, ptr noundef %690, i32 noundef %667)
  br label %691

691:                                              ; preds = %686, %682
  %692 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 19), align 8, !tbaa !64
  call void %692(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %3) #15
  %693 = load i64, ptr %2, align 8
  %694 = and i64 %693, 65535
  %695 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %694, i64 11
  %696 = load i8, ptr %695, align 1, !tbaa !46
  %697 = icmp eq i8 %696, 0
  br i1 %697, label %722, label %698

698:                                              ; preds = %691
  %699 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %2, i64 0, i32 1
  %700 = load ptr, ptr %699, align 8, !tbaa !46
  %701 = icmp eq ptr %700, null
  br i1 %701, label %722, label %702

702:                                              ; preds = %698
  %703 = icmp sgt i32 %3, -4
  br i1 %703, label %704, label %706

704:                                              ; preds = %702
  %705 = call i32 @fputc(i32 10, ptr %0)
  br label %706

706:                                              ; preds = %704, %702
  %707 = icmp sgt i32 %3, -4
  br i1 %707, label %708, label %715

708:                                              ; preds = %706
  %709 = call i32 @llvm.smax.i32(i32 %667, i32 1)
  br label %710

710:                                              ; preds = %708, %710
  %711 = phi i32 [ %713, %710 ], [ 0, %708 ]
  %712 = call i32 @fputc(i32 32, ptr %0)
  %713 = add nuw nsw i32 %711, 1
  %714 = icmp eq i32 %713, %709
  br i1 %714, label %715, label %710, !llvm.loop !58

715:                                              ; preds = %710, %706
  %716 = load ptr, ptr %699, align 8, !tbaa !46
  %717 = icmp eq ptr %716, null
  br i1 %717, label %718, label %720

718:                                              ; preds = %715
  call void @make_decl_rtl(ptr noundef nonnull %2) #15
  %719 = load ptr, ptr %699, align 8, !tbaa !46
  br label %720

720:                                              ; preds = %715, %718
  %721 = phi ptr [ %719, %718 ], [ %716, %715 ]
  call void @print_rtl(ptr noundef %0, ptr noundef %721) #15
  br label %722

722:                                              ; preds = %720, %698, %691
  br i1 %564, label %723, label %745

723:                                              ; preds = %722
  %724 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 5
  %725 = load ptr, ptr %724, align 8, !tbaa !46
  call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.100, ptr noundef %725, i32 noundef %667)
  %726 = getelementptr inbounds %struct.tree_parm_decl, ptr %2, i64 0, i32 1
  %727 = load ptr, ptr %726, align 8, !tbaa !46
  %728 = icmp eq ptr %727, null
  br i1 %728, label %765, label %729

729:                                              ; preds = %723
  %730 = icmp sgt i32 %3, -4
  br i1 %730, label %731, label %733

731:                                              ; preds = %729
  %732 = call i32 @fputc(i32 10, ptr %0)
  br label %733

733:                                              ; preds = %731, %729
  %734 = icmp sgt i32 %3, -4
  br i1 %734, label %735, label %742

735:                                              ; preds = %733
  %736 = call i32 @llvm.smax.i32(i32 %667, i32 1)
  br label %737

737:                                              ; preds = %735, %737
  %738 = phi i32 [ %740, %737 ], [ 0, %735 ]
  %739 = call i32 @fputc(i32 32, ptr %0)
  %740 = add nuw nsw i32 %738, 1
  %741 = icmp eq i32 %740, %736
  br i1 %741, label %742, label %737, !llvm.loop !58

742:                                              ; preds = %737, %733
  %743 = call i64 @fwrite(ptr nonnull @.str.101, i64 13, i64 1, ptr %0)
  %744 = load ptr, ptr %726, align 8, !tbaa !46
  call void @print_rtl(ptr noundef %0, ptr noundef %744) #15
  br label %765

745:                                              ; preds = %722
  br i1 %376, label %746, label %765

746:                                              ; preds = %745
  %747 = getelementptr inbounds %struct.tree_function_decl, ptr %2, i64 0, i32 1
  %748 = load ptr, ptr %747, align 8, !tbaa !46
  %749 = icmp eq ptr %748, null
  br i1 %749, label %765, label %750

750:                                              ; preds = %746
  %751 = icmp sgt i32 %3, -4
  br i1 %751, label %752, label %754

752:                                              ; preds = %750
  %753 = call i32 @fputc(i32 10, ptr %0)
  br label %754

754:                                              ; preds = %752, %750
  %755 = icmp sgt i32 %3, -4
  br i1 %755, label %756, label %763

756:                                              ; preds = %754
  %757 = call i32 @llvm.smax.i32(i32 %667, i32 1)
  br label %758

758:                                              ; preds = %756, %758
  %759 = phi i32 [ %761, %758 ], [ 0, %756 ]
  %760 = call i32 @fputc(i32 32, ptr %0)
  %761 = add nuw nsw i32 %759, 1
  %762 = icmp eq i32 %761, %757
  br i1 %762, label %763, label %758, !llvm.loop !58

763:                                              ; preds = %758, %754
  %764 = load ptr, ptr %747, align 8, !tbaa !46
  call void @dump_addr(ptr noundef %0, ptr noundef nonnull @.str.102, ptr noundef %764)
  br label %765

765:                                              ; preds = %745, %746, %763, %723, %742
  switch i16 %128, label %773 [
    i16 34, label %766
    i16 32, label %766
  ]

766:                                              ; preds = %765, %765
  %767 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 2
  %768 = load i64, ptr %767, align 8
  %769 = and i64 %768, 67108864
  %770 = icmp eq i64 %769, 0
  br i1 %770, label %773, label %771

771:                                              ; preds = %766
  %772 = call ptr @decl_value_expr_lookup(ptr noundef nonnull %2) #15
  call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.103, ptr noundef %772, i32 noundef %667)
  br label %773

773:                                              ; preds = %766, %765, %771
  %774 = icmp eq i32 %3, 4
  %775 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 1
  %776 = load ptr, ptr %775, align 8, !tbaa !46
  br i1 %774, label %777, label %778

777:                                              ; preds = %773
  call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.104, ptr noundef %776, i32 noundef %667)
  br label %1452

778:                                              ; preds = %773
  call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.104, ptr noundef %776, i32 noundef %667)
  br label %1452

779:                                              ; preds = %317
  %780 = load i64, ptr %2, align 8
  %781 = and i64 %780, 2097152
  %782 = icmp eq i64 %781, 0
  br i1 %782, label %785, label %783

783:                                              ; preds = %779
  %784 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 9, i64 1, ptr %0)
  br label %785

785:                                              ; preds = %783, %779
  %786 = and i32 %19, 65534
  %787 = icmp eq i32 %786, 16
  %788 = icmp eq i32 %20, 18
  %789 = or i1 %787, %788
  br i1 %789, label %790, label %797

790:                                              ; preds = %785
  %791 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %792 = load i32, ptr %791, align 4
  %793 = and i32 %792, 1024
  %794 = icmp eq i32 %793, 0
  br i1 %794, label %797, label %795

795:                                              ; preds = %790
  %796 = tail call i64 @fwrite(ptr nonnull @.str.105, i64 13, i64 1, ptr %0)
  br label %806

797:                                              ; preds = %785, %790
  %798 = icmp eq i32 %20, 8
  br i1 %798, label %799, label %806

799:                                              ; preds = %797
  %800 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %801 = load i32, ptr %800, align 4
  %802 = and i32 %801, 1024
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %806, label %804

804:                                              ; preds = %799
  %805 = tail call i64 @fwrite(ptr nonnull @.str.106, i64 9, i64 1, ptr %0)
  br label %806

806:                                              ; preds = %797, %799, %804, %795
  %807 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %808 = load i32, ptr %807, align 4
  %809 = and i32 %808, 16777216
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %813, label %811

811:                                              ; preds = %806
  %812 = tail call i64 @fwrite(ptr nonnull @.str.107, i64 12, i64 1, ptr %0)
  br label %813

813:                                              ; preds = %811, %806
  %814 = load i32, ptr %807, align 4
  %815 = and i32 %814, 2048
  %816 = icmp eq i32 %815, 0
  br i1 %816, label %819, label %817

817:                                              ; preds = %813
  %818 = tail call i64 @fwrite(ptr nonnull @.str.108, i64 19, i64 1, ptr %0)
  br label %819

819:                                              ; preds = %817, %813
  br i1 %787, label %820, label %826

820:                                              ; preds = %819
  %821 = load i32, ptr %807, align 4
  %822 = and i32 %821, 4096
  %823 = icmp eq i32 %822, 0
  br i1 %823, label %826, label %824

824:                                              ; preds = %820
  %825 = tail call i64 @fwrite(ptr nonnull @.str.109, i64 17, i64 1, ptr %0)
  br label %834

826:                                              ; preds = %819, %820
  %827 = icmp eq i32 %20, 15
  br i1 %827, label %828, label %834

828:                                              ; preds = %826
  %829 = load i32, ptr %807, align 4
  %830 = and i32 %829, 4096
  %831 = icmp eq i32 %830, 0
  br i1 %831, label %834, label %832

832:                                              ; preds = %828
  %833 = tail call i64 @fwrite(ptr nonnull @.str.110, i64 21, i64 1, ptr %0)
  br label %834

834:                                              ; preds = %826, %828, %832, %824
  %835 = load i64, ptr %2, align 8
  %836 = and i64 %835, 2199023255552
  %837 = icmp eq i64 %836, 0
  br i1 %837, label %840, label %838

838:                                              ; preds = %834
  %839 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 7, i64 1, ptr %0)
  br label %840

840:                                              ; preds = %838, %834
  %841 = load i32, ptr %807, align 4
  %842 = and i32 %841, 8192
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %846, label %844

844:                                              ; preds = %840
  %845 = tail call i64 @fwrite(ptr nonnull @.str.111, i64 9, i64 1, ptr %0)
  br label %846

846:                                              ; preds = %844, %840
  %847 = load i32, ptr %807, align 4
  %848 = and i32 %847, 33554432
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %852, label %850

850:                                              ; preds = %846
  %851 = tail call i64 @fwrite(ptr nonnull @.str.112, i64 7, i64 1, ptr %0)
  br label %852

852:                                              ; preds = %850, %846
  %853 = load i32, ptr %807, align 4
  %854 = and i32 %853, 67108864
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %858, label %856

856:                                              ; preds = %852
  %857 = tail call i64 @fwrite(ptr nonnull @.str.113, i64 7, i64 1, ptr %0)
  br label %858

858:                                              ; preds = %856, %852
  %859 = load i32, ptr %807, align 4
  %860 = and i32 %859, 134217728
  %861 = icmp eq i32 %860, 0
  br i1 %861, label %864, label %862

862:                                              ; preds = %858
  %863 = tail call i64 @fwrite(ptr nonnull @.str.114, i64 7, i64 1, ptr %0)
  br label %864

864:                                              ; preds = %862, %858
  %865 = load i32, ptr %807, align 4
  %866 = and i32 %865, 268435456
  %867 = icmp eq i32 %866, 0
  br i1 %867, label %870, label %868

868:                                              ; preds = %864
  %869 = tail call i64 @fwrite(ptr nonnull @.str.115, i64 7, i64 1, ptr %0)
  br label %870

870:                                              ; preds = %868, %864
  %871 = load i32, ptr %807, align 4
  %872 = and i32 %871, 536870912
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %876, label %874

874:                                              ; preds = %870
  %875 = tail call i64 @fwrite(ptr nonnull @.str.116, i64 7, i64 1, ptr %0)
  br label %876

876:                                              ; preds = %874, %870
  %877 = load i32, ptr %807, align 4
  %878 = and i32 %877, 1073741824
  %879 = icmp eq i32 %878, 0
  br i1 %879, label %882, label %880

880:                                              ; preds = %876
  %881 = tail call i64 @fwrite(ptr nonnull @.str.117, i64 7, i64 1, ptr %0)
  br label %882

882:                                              ; preds = %880, %876
  %883 = load i32, ptr %807, align 4
  %884 = icmp sgt i32 %883, -1
  br i1 %884, label %887, label %885

885:                                              ; preds = %882
  %886 = tail call i64 @fwrite(ptr nonnull @.str.118, i64 7, i64 1, ptr %0)
  br label %887

887:                                              ; preds = %885, %882
  %888 = load i64, ptr %2, align 8
  %889 = and i64 %888, 65535
  %890 = icmp eq i64 %889, 14
  br i1 %890, label %891, label %893

891:                                              ; preds = %887
  %892 = tail call i32 @vector_type_mode(ptr noundef nonnull %2) #15
  br label %897

893:                                              ; preds = %887
  %894 = load i32, ptr %807, align 4
  %895 = lshr i32 %894, 16
  %896 = and i32 %895, 255
  br label %897

897:                                              ; preds = %893, %891
  %898 = phi i32 [ %892, %891 ], [ %896, %893 ]
  %899 = zext i32 %898 to i64
  %900 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %899
  %901 = load ptr, ptr %900, align 8, !tbaa !35
  %902 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %901)
  %903 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 2
  %904 = load ptr, ptr %903, align 8, !tbaa !46
  %905 = add nsw i32 %3, 4
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.84, ptr noundef %904, i32 noundef %905)
  %906 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 3
  %907 = load ptr, ptr %906, align 8, !tbaa !46
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.85, ptr noundef %907, i32 noundef %905)
  %908 = add i32 %3, 3
  %909 = icmp sgt i32 %3, -3
  br i1 %909, label %910, label %912

910:                                              ; preds = %897
  %911 = tail call i32 @fputc(i32 10, ptr %0)
  br label %912

912:                                              ; preds = %910, %897
  %913 = icmp sgt i32 %3, -3
  br i1 %913, label %914, label %921

914:                                              ; preds = %912
  %915 = tail call i32 @llvm.smax.i32(i32 %908, i32 1)
  br label %916

916:                                              ; preds = %914, %916
  %917 = phi i32 [ %919, %916 ], [ 0, %914 ]
  %918 = tail call i32 @fputc(i32 32, ptr %0)
  %919 = add nuw nsw i32 %917, 1
  %920 = icmp eq i32 %919, %915
  br i1 %920, label %921, label %916, !llvm.loop !58

921:                                              ; preds = %916, %912
  %922 = load i64, ptr %2, align 8
  %923 = and i64 %922, 4398046511104
  %924 = icmp eq i64 %923, 0
  br i1 %924, label %927, label %925

925:                                              ; preds = %921
  %926 = tail call i64 @fwrite(ptr nonnull @.str.86, i64 5, i64 1, ptr %0)
  br label %927

927:                                              ; preds = %925, %921
  %928 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 7
  %929 = load i32, ptr %928, align 8, !tbaa !46
  %930 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 11
  %931 = load i32, ptr %930, align 8, !tbaa !46
  %932 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 8
  %933 = load i32, ptr %932, align 4, !tbaa !46
  %934 = sext i32 %933 to i64
  %935 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.119, i32 noundef %929, i32 noundef %931, i64 noundef %934)
  %936 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 19
  %937 = load ptr, ptr %936, align 8, !tbaa !46
  %938 = icmp eq ptr %937, null
  br i1 %938, label %939, label %941

939:                                              ; preds = %927
  %940 = tail call i64 @fwrite(ptr nonnull @.str.120, i64 20, i64 1, ptr %0)
  br label %942

941:                                              ; preds = %927
  tail call void @dump_addr(ptr noundef %0, ptr noundef nonnull @.str.121, ptr noundef nonnull %937)
  br label %942

942:                                              ; preds = %941, %939
  %943 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 4
  %944 = load ptr, ptr %943, align 8, !tbaa !46
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.95, ptr noundef %944, i32 noundef %905)
  %945 = load i64, ptr %2, align 8
  %946 = trunc i64 %945 to i32
  %947 = and i32 %946, 65534
  %948 = icmp eq i32 %947, 6
  br i1 %948, label %955, label %949

949:                                              ; preds = %942
  %950 = and i32 %946, 65535
  %951 = icmp eq i32 %950, 8
  %952 = and i32 %19, 65533
  %953 = icmp eq i32 %952, 9
  %954 = or i1 %953, %951
  br i1 %954, label %955, label %963

955:                                              ; preds = %942, %949
  %956 = load i32, ptr %807, align 4
  %957 = and i32 %956, 1023
  %958 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.122, i32 noundef %957)
  %959 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 13
  %960 = load ptr, ptr %959, align 8, !tbaa !46
  tail call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.123, ptr noundef %960, i32 noundef %905)
  %961 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 14
  %962 = load ptr, ptr %961, align 8, !tbaa !46
  tail call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.124, ptr noundef %962, i32 noundef %905)
  br label %963

963:                                              ; preds = %949, %955
  switch i16 %128, label %977 [
    i16 6, label %964
    i16 15, label %967
    i16 14, label %970
  ]

964:                                              ; preds = %963
  %965 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 1
  %966 = load ptr, ptr %965, align 8, !tbaa !46
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.125, ptr noundef %966, i32 noundef %905)
  br label %996

967:                                              ; preds = %963
  %968 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 1
  %969 = load ptr, ptr %968, align 8, !tbaa !46
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.126, ptr noundef %969, i32 noundef %905)
  br label %996

970:                                              ; preds = %963
  %971 = load i32, ptr %807, align 4
  %972 = and i32 %971, 1023
  %973 = zext nneg i32 %972 to i64
  %974 = shl nuw i64 1, %973
  %975 = trunc i64 %974 to i32
  %976 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.127, i32 noundef %975)
  br label %996

977:                                              ; preds = %963
  br i1 %789, label %978, label %981

978:                                              ; preds = %977
  %979 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 1
  %980 = load ptr, ptr %979, align 8, !tbaa !46
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.128, ptr noundef %980, i32 noundef %905)
  br label %996

981:                                              ; preds = %977
  %982 = icmp eq i32 %786, 20
  br i1 %982, label %983, label %991

983:                                              ; preds = %981
  %984 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 14
  %985 = load ptr, ptr %984, align 8, !tbaa !46
  %986 = icmp eq ptr %985, null
  br i1 %986, label %988, label %987

987:                                              ; preds = %983
  tail call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.129, ptr noundef nonnull %985, i32 noundef %905)
  br label %988

988:                                              ; preds = %987, %983
  %989 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 1
  %990 = load ptr, ptr %989, align 8, !tbaa !46
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.130, ptr noundef %990, i32 noundef %905)
  br label %996

991:                                              ; preds = %981
  %992 = icmp eq i32 %20, 5
  br i1 %992, label %993, label %996

993:                                              ; preds = %991
  %994 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 14
  %995 = load ptr, ptr %994, align 8, !tbaa !46
  tail call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.131, ptr noundef %995, i32 noundef %905)
  br label %996

996:                                              ; preds = %967, %978, %991, %993, %988, %970, %964
  %997 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 18
  %998 = load ptr, ptr %997, align 8, !tbaa !46
  %999 = icmp eq ptr %998, null
  br i1 %999, label %1001, label %1000

1000:                                             ; preds = %996
  tail call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.94, ptr noundef nonnull %998, i32 noundef %905)
  br label %1001

1001:                                             ; preds = %1000, %996
  %1002 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 20), align 8, !tbaa !72
  tail call void %1002(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %3) #15
  %1003 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 9
  %1004 = load ptr, ptr %1003, align 8, !tbaa !46
  %1005 = icmp eq ptr %1004, null
  br i1 %1005, label %1006, label %1010

1006:                                             ; preds = %1001
  %1007 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 1
  %1008 = load ptr, ptr %1007, align 8, !tbaa !46
  %1009 = icmp eq ptr %1008, null
  br i1 %1009, label %1022, label %1010

1010:                                             ; preds = %1006, %1001
  br i1 %909, label %1011, label %1013

1011:                                             ; preds = %1010
  %1012 = tail call i32 @fputc(i32 10, ptr %0)
  br label %1013

1013:                                             ; preds = %1011, %1010
  %1014 = icmp sgt i32 %3, -3
  br i1 %1014, label %1015, label %1022

1015:                                             ; preds = %1013
  %1016 = tail call i32 @llvm.smax.i32(i32 %908, i32 1)
  br label %1017

1017:                                             ; preds = %1015, %1017
  %1018 = phi i32 [ %1020, %1017 ], [ 0, %1015 ]
  %1019 = tail call i32 @fputc(i32 32, ptr %0)
  %1020 = add nuw nsw i32 %1018, 1
  %1021 = icmp eq i32 %1020, %1016
  br i1 %1021, label %1022, label %1017, !llvm.loop !58

1022:                                             ; preds = %1017, %1013, %1006
  %1023 = load ptr, ptr %1003, align 8, !tbaa !46
  tail call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.132, ptr noundef %1023, i32 noundef %905)
  %1024 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 10
  %1025 = load ptr, ptr %1024, align 8, !tbaa !46
  tail call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.133, ptr noundef %1025, i32 noundef %905)
  %1026 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 1
  %1027 = load ptr, ptr %1026, align 8, !tbaa !46
  tail call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.104, ptr noundef %1027, i32 noundef %905)
  br label %1452

1028:                                             ; preds = %317, %317, %317, %317, %317, %317, %317
  switch i16 %128, label %1074 [
    i16 58, label %1029
    i16 59, label %1037
  ]

1029:                                             ; preds = %1028
  %1030 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %1031 = load ptr, ptr %1030, align 8, !tbaa !46
  %1032 = add nsw i32 %3, 4
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.134, ptr noundef %1031, i32 noundef %1032)
  %1033 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %1034 = load ptr, ptr %1033, align 8, !tbaa !46
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.135, ptr noundef %1034, i32 noundef %1032)
  %1035 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %1036 = load ptr, ptr %1035, align 8, !tbaa !46
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.136, ptr noundef %1036, i32 noundef %1032)
  br label %1452

1037:                                             ; preds = %1028
  %1038 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %1039 = load ptr, ptr %1038, align 8, !tbaa !46
  %1040 = add nsw i32 %3, 4
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.137, ptr noundef %1039, i32 noundef %1040)
  %1041 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1, i32 0, i32 1
  %1042 = load ptr, ptr %1041, align 8, !tbaa !46
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.138, ptr noundef %1042, i32 noundef %1040)
  %1043 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %1044 = load ptr, ptr %1043, align 8, !tbaa !46
  %1045 = getelementptr inbounds %struct.tree_int_cst, ptr %1044, i64 0, i32 1
  %1046 = load i64, ptr %1045, align 8, !tbaa !46
  %1047 = trunc i64 %1046 to i32
  %1048 = add nsw i32 %1047, -3
  %1049 = icmp sgt i32 %1047, 3
  br i1 %1049, label %1050, label %1053

1050:                                             ; preds = %1037
  %1051 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3, i64 3
  %1052 = load ptr, ptr %1051, align 8, !tbaa !46
  br label %1053

1053:                                             ; preds = %1037, %1050
  %1054 = phi i32 [ 1, %1050 ], [ 0, %1037 ]
  %1055 = phi ptr [ %1052, %1050 ], [ null, %1037 ]
  %1056 = icmp eq ptr %1055, null
  br i1 %1056, label %1104, label %1057

1057:                                             ; preds = %1053, %1070
  %1058 = phi i32 [ %1062, %1070 ], [ 0, %1053 ]
  %1059 = phi ptr [ %1072, %1070 ], [ %1055, %1053 ]
  %1060 = phi i32 [ %1071, %1070 ], [ %1054, %1053 ]
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %7) #15
  %1061 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.139, i32 noundef %1058)
  call void @print_node(ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %1059, i32 noundef %1040)
  %1062 = add nuw nsw i32 %1058, 1
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %7) #15
  %1063 = icmp slt i32 %1060, %1048
  br i1 %1063, label %1064, label %1070

1064:                                             ; preds = %1057
  %1065 = add nsw i32 %1060, 3
  %1066 = sext i32 %1065 to i64
  %1067 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3, i64 %1066
  %1068 = load ptr, ptr %1067, align 8, !tbaa !46
  %1069 = add nsw i32 %1060, 1
  br label %1070

1070:                                             ; preds = %1057, %1064
  %1071 = phi i32 [ %1069, %1064 ], [ %1060, %1057 ]
  %1072 = phi ptr [ %1068, %1064 ], [ null, %1057 ]
  %1073 = icmp eq ptr %1072, null
  br i1 %1073, label %1104, label %1057, !llvm.loop !73

1074:                                             ; preds = %1028
  %1075 = load i64, ptr %2, align 8
  %1076 = and i64 %1075, 65535
  %1077 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1076
  %1078 = load i32, ptr %1077, align 4, !tbaa !50
  %1079 = icmp eq i32 %1078, 9
  br i1 %1079, label %1080, label %1086

1080:                                             ; preds = %1074
  %1081 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %1082 = load ptr, ptr %1081, align 8, !tbaa !46
  %1083 = getelementptr inbounds %struct.tree_int_cst, ptr %1082, i64 0, i32 1
  %1084 = load i64, ptr %1083, align 8, !tbaa !46
  %1085 = trunc i64 %1084 to i32
  br label %1090

1086:                                             ; preds = %1074
  %1087 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %1076
  %1088 = load i8, ptr %1087, align 1, !tbaa !46
  %1089 = zext i8 %1088 to i32
  br label %1090

1090:                                             ; preds = %1080, %1086
  %1091 = phi i32 [ %1085, %1080 ], [ %1089, %1086 ]
  %1092 = icmp sgt i32 %1091, 0
  br i1 %1092, label %1093, label %1104

1093:                                             ; preds = %1090
  %1094 = add nsw i32 %3, 4
  %1095 = zext nneg i32 %1091 to i64
  br label %1096

1096:                                             ; preds = %1093, %1096
  %1097 = phi i64 [ 0, %1093 ], [ %1102, %1096 ]
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %8) #15
  %1098 = trunc i64 %1097 to i32
  %1099 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) @.str.139, i32 noundef %1098)
  %1100 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3, i64 %1097
  %1101 = load ptr, ptr %1100, align 8, !tbaa !46
  call void @print_node(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %1101, i32 noundef %1094)
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %8) #15
  %1102 = add nuw nsw i64 %1097, 1
  %1103 = icmp eq i64 %1102, %1095
  br i1 %1103, label %1104, label %1096, !llvm.loop !74

1104:                                             ; preds = %1070, %1096, %1053, %1090
  %1105 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 1
  %1106 = load ptr, ptr %1105, align 8, !tbaa !46
  %1107 = add nsw i32 %3, 4
  call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.104, ptr noundef %1106, i32 noundef %1107)
  br label %1452

1108:                                             ; preds = %317, %317
  switch i16 %128, label %1444 [
    i16 23, label %1109
    i16 24, label %1132
    i16 25, label %1156
    i16 27, label %1166
    i16 26, label %1183
    i16 28, label %1189
    i16 1, label %1220
    i16 2, label %1222
    i16 3, label %1230
    i16 51, label %1262
    i16 147, label %1294
    i16 4, label %1326
    i16 141, label %1338
    i16 163, label %1394
    i16 186, label %1433
    i16 187, label %1436
    i16 39, label %1439
  ]

1109:                                             ; preds = %1108
  %1110 = load i64, ptr %2, align 8
  %1111 = and i64 %1110, 134217728
  %1112 = icmp eq i64 %1111, 0
  br i1 %1112, label %1115, label %1113

1113:                                             ; preds = %1109
  %1114 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 9, i64 1, ptr %0)
  br label %1115

1115:                                             ; preds = %1113, %1109
  %1116 = tail call i32 @fputc(i32 32, ptr %0)
  %1117 = getelementptr inbounds %struct.tree_int_cst, ptr %2, i64 0, i32 1
  %1118 = getelementptr inbounds %struct.tree_int_cst, ptr %2, i64 0, i32 1, i32 1
  %1119 = load i64, ptr %1118, align 8, !tbaa !46
  switch i64 %1119, label %1129 [
    i64 0, label %1120
    i64 -1, label %1123
  ]

1120:                                             ; preds = %1115
  %1121 = load i64, ptr %1117, align 8, !tbaa !46
  %1122 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i64 noundef %1121)
  br label %1452

1123:                                             ; preds = %1115
  %1124 = load i64, ptr %1117, align 8, !tbaa !46
  %1125 = icmp eq i64 %1124, 0
  br i1 %1125, label %1129, label %1126

1126:                                             ; preds = %1123
  %1127 = sub i64 0, %1124
  %1128 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %1127)
  br label %1452

1129:                                             ; preds = %1115, %1123
  %1130 = load i64, ptr %1117, align 8, !tbaa !46
  %1131 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, i64 noundef %1119, i64 noundef %1130)
  br label %1452

1132:                                             ; preds = %1108
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #15
  %1133 = load i64, ptr %2, align 8
  %1134 = and i64 %1133, 134217728
  %1135 = icmp eq i64 %1134, 0
  br i1 %1135, label %1138, label %1136

1136:                                             ; preds = %1132
  %1137 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 9, i64 1, ptr %0)
  br label %1138

1138:                                             ; preds = %1136, %1132
  %1139 = getelementptr inbounds %struct.tree_real_cst, ptr %2, i64 0, i32 1
  %1140 = load ptr, ptr %1139, align 8, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %1140, i64 32, i1 false), !tbaa.struct !75
  %1141 = call zeroext i8 @real_isinf(ptr noundef nonnull %9) #15
  %1142 = icmp eq i8 %1141, 0
  br i1 %1142, label %1148, label %1143

1143:                                             ; preds = %1138
  %1144 = call zeroext i8 @real_isneg(ptr noundef nonnull %9) #15
  %1145 = icmp eq i8 %1144, 0
  %1146 = select i1 %1145, ptr @.str.16, ptr @.str.15
  %1147 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %1146)
  br label %1155

1148:                                             ; preds = %1138
  %1149 = call zeroext i8 @real_isnan(ptr noundef nonnull %9) #15
  %1150 = icmp eq i8 %1149, 0
  br i1 %1150, label %1153, label %1151

1151:                                             ; preds = %1148
  %1152 = call i64 @fwrite(ptr nonnull @.str.17, i64 4, i64 1, ptr %0)
  br label %1155

1153:                                             ; preds = %1148
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #15
  call void @real_to_decimal(ptr noundef nonnull %10, ptr noundef nonnull %9, i64 noundef 64, i64 noundef 0, i32 noundef 1) #15
  %1154 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %10)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #15
  br label %1155

1155:                                             ; preds = %1151, %1153, %1143
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #15
  br label %1452

1156:                                             ; preds = %1108
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %12) #15
  %1157 = load i64, ptr %2, align 8
  %1158 = and i64 %1157, 134217728
  %1159 = icmp eq i64 %1158, 0
  br i1 %1159, label %1162, label %1160

1160:                                             ; preds = %1156
  %1161 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 9, i64 1, ptr %0)
  br label %1162

1162:                                             ; preds = %1160, %1156
  %1163 = getelementptr inbounds %struct.tree_fixed_cst, ptr %2, i64 0, i32 1
  %1164 = load ptr, ptr %1163, align 8, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %1164, i64 24, i1 false), !tbaa.struct !76
  call void @fixed_to_decimal(ptr noundef nonnull %12, ptr noundef nonnull %11, i64 noundef 64) #15
  %1165 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %12)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #15
  br label %1452

1166:                                             ; preds = %1108
  %1167 = getelementptr inbounds %struct.tree_vector, ptr %2, i64 0, i32 1
  %1168 = load ptr, ptr %1167, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %13) #15
  %1169 = icmp eq ptr %1168, null
  br i1 %1169, label %1182, label %1170

1170:                                             ; preds = %1166
  %1171 = add nsw i32 %3, 4
  br label %1172

1172:                                             ; preds = %1170, %1172
  %1173 = phi i32 [ 0, %1170 ], [ %1180, %1172 ]
  %1174 = phi ptr [ %1168, %1170 ], [ %1179, %1172 ]
  %1175 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) @.str.140, i32 noundef %1173)
  %1176 = getelementptr inbounds %struct.tree_list, ptr %1174, i64 0, i32 2
  %1177 = load ptr, ptr %1176, align 8, !tbaa !46
  call void @print_node(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %1177, i32 noundef %1171)
  %1178 = getelementptr inbounds %struct.tree_common, ptr %1174, i64 0, i32 1
  %1179 = load ptr, ptr %1178, align 8, !tbaa !46
  %1180 = add nuw nsw i32 %1173, 1
  %1181 = icmp eq ptr %1179, null
  br i1 %1181, label %1182, label %1172, !llvm.loop !78

1182:                                             ; preds = %1172, %1166
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %13) #15
  br label %1452

1183:                                             ; preds = %1108
  %1184 = getelementptr inbounds %struct.tree_complex, ptr %2, i64 0, i32 1
  %1185 = load ptr, ptr %1184, align 8, !tbaa !46
  %1186 = add nsw i32 %3, 4
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.141, ptr noundef %1185, i32 noundef %1186)
  %1187 = getelementptr inbounds %struct.tree_complex, ptr %2, i64 0, i32 2
  %1188 = load ptr, ptr %1187, align 8, !tbaa !46
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.142, ptr noundef %1188, i32 noundef %1186)
  br label %1452

1189:                                             ; preds = %1108
  %1190 = getelementptr inbounds %struct.tree_string, ptr %2, i64 0, i32 1
  %1191 = load i32, ptr %1190, align 8, !tbaa !46
  %1192 = tail call i64 @fwrite(ptr nonnull @.str.143, i64 2, i64 1, ptr %0)
  %1193 = icmp sgt i32 %1191, 0
  br i1 %1193, label %1194, label %1212

1194:                                             ; preds = %1189
  %1195 = getelementptr inbounds %struct.tree_string, ptr %2, i64 0, i32 2
  br label %1196

1196:                                             ; preds = %1194, %1210
  %1197 = phi i32 [ %1199, %1210 ], [ %1191, %1194 ]
  %1198 = phi ptr [ %1200, %1210 ], [ %1195, %1194 ]
  %1199 = add nsw i32 %1197, -1
  %1200 = getelementptr inbounds i8, ptr %1198, i64 1
  %1201 = load i8, ptr %1198, align 1, !tbaa !46
  %1202 = sext i8 %1201 to i32
  %1203 = add i8 %1201, -32
  %1204 = icmp ult i8 %1203, 95
  br i1 %1204, label %1205, label %1207

1205:                                             ; preds = %1196
  %1206 = tail call i32 @putc(i32 noundef %1202, ptr noundef %0)
  br label %1210

1207:                                             ; preds = %1196
  %1208 = and i32 %1202, 255
  %1209 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.144, i32 noundef %1208)
  br label %1210

1210:                                             ; preds = %1207, %1205
  %1211 = icmp sgt i32 %1197, 1
  br i1 %1211, label %1196, label %1212, !llvm.loop !79

1212:                                             ; preds = %1210, %1189
  %1213 = tail call i32 @fputc(i32 noundef 34, ptr noundef %0)
  %1214 = icmp eq i32 %3, 4
  %1215 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 1
  %1216 = load ptr, ptr %1215, align 8, !tbaa !46
  br i1 %1214, label %1217, label %1218

1217:                                             ; preds = %1212
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.104, ptr noundef %1216, i32 noundef 8)
  br label %1452

1218:                                             ; preds = %1212
  %1219 = add nsw i32 %3, 4
  tail call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.104, ptr noundef %1216, i32 noundef %1219)
  br label %1452

1220:                                             ; preds = %1108
  %1221 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 21), align 8, !tbaa !80
  tail call void %1221(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %3) #15
  br label %1452

1222:                                             ; preds = %1108
  %1223 = getelementptr inbounds %struct.tree_list, ptr %2, i64 0, i32 1
  %1224 = load ptr, ptr %1223, align 8, !tbaa !46
  %1225 = add nsw i32 %3, 4
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.145, ptr noundef %1224, i32 noundef %1225)
  %1226 = getelementptr inbounds %struct.tree_list, ptr %2, i64 0, i32 2
  %1227 = load ptr, ptr %1226, align 8, !tbaa !46
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.146, ptr noundef %1227, i32 noundef %1225)
  %1228 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 1
  %1229 = load ptr, ptr %1228, align 8, !tbaa !46
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.104, ptr noundef %1229, i32 noundef %1225)
  br label %1452

1230:                                             ; preds = %1108
  %1231 = getelementptr inbounds %struct.tree_vec, ptr %2, i64 0, i32 1
  %1232 = load i32, ptr %1231, align 8, !tbaa !46
  %1233 = icmp sgt i32 %1232, 0
  br i1 %1233, label %1234, label %1452

1234:                                             ; preds = %1230
  %1235 = icmp sgt i32 %3, -4
  %1236 = icmp sgt i32 %3, -4
  %1237 = zext nneg i32 %1232 to i64
  br label %1238

1238:                                             ; preds = %1234, %1259
  %1239 = phi i64 [ 0, %1234 ], [ %1260, %1259 ]
  %1240 = getelementptr inbounds %struct.tree_vec, ptr %2, i64 0, i32 2, i64 %1239
  %1241 = load ptr, ptr %1240, align 8, !tbaa !46
  %1242 = icmp eq ptr %1241, null
  br i1 %1242, label %1259, label %1243

1243:                                             ; preds = %1238
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %14) #15
  %1244 = trunc i64 %1239 to i32
  %1245 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) @.str.147, i32 noundef %1244)
  br i1 %1235, label %1246, label %1248

1246:                                             ; preds = %1243
  %1247 = call i32 @fputc(i32 10, ptr %0)
  br label %1248

1248:                                             ; preds = %1246, %1243
  br i1 %1236, label %1249, label %1257

1249:                                             ; preds = %1248
  %1250 = add i32 %3, 3
  %1251 = call i32 @llvm.smax.i32(i32 %1250, i32 0)
  br label %1252

1252:                                             ; preds = %1249, %1252
  %1253 = phi i32 [ %1255, %1252 ], [ 0, %1249 ]
  %1254 = call i32 @fputc(i32 32, ptr %0)
  %1255 = add nuw i32 %1253, 1
  %1256 = icmp eq i32 %1253, %1251
  br i1 %1256, label %1257, label %1252, !llvm.loop !58

1257:                                             ; preds = %1252, %1248
  %1258 = load ptr, ptr %1240, align 8, !tbaa !46
  call void @print_node_brief(ptr noundef %0, ptr noundef nonnull %14, ptr noundef %1258, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %14) #15
  br label %1259

1259:                                             ; preds = %1238, %1257
  %1260 = add nuw nsw i64 %1239, 1
  %1261 = icmp eq i64 %1260, %1237
  br i1 %1261, label %1452, label %1238, !llvm.loop !81

1262:                                             ; preds = %1108
  %1263 = getelementptr inbounds %struct.tree_constructor, ptr %2, i64 0, i32 1
  %1264 = load ptr, ptr %1263, align 8, !tbaa !46
  %1265 = icmp eq ptr %1264, null
  br i1 %1265, label %1268, label %1266

1266:                                             ; preds = %1262
  %1267 = load i32, ptr %1264, align 8, !tbaa !82
  br label %1268

1268:                                             ; preds = %1262, %1266
  %1269 = phi i32 [ %1267, %1266 ], [ 0, %1262 ]
  %1270 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.148, i32 noundef %1269)
  %1271 = add nsw i32 %3, 4
  br label %1272

1272:                                             ; preds = %1292, %1268
  %1273 = phi i64 [ 0, %1268 ], [ %1293, %1292 ]
  %1274 = phi ptr [ undef, %1268 ], [ %1290, %1292 ]
  %1275 = phi ptr [ undef, %1268 ], [ %1291, %1292 ]
  %1276 = load ptr, ptr %1263, align 8, !tbaa !46
  %1277 = icmp eq ptr %1276, null
  br i1 %1277, label %1280, label %1278

1278:                                             ; preds = %1272
  %1279 = load i32, ptr %1276, align 8, !tbaa !82
  br label %1280

1280:                                             ; preds = %1272, %1278
  %1281 = phi i32 [ %1279, %1278 ], [ 0, %1272 ]
  %1282 = zext i32 %1281 to i64
  %1283 = icmp ult i64 %1273, %1282
  br i1 %1283, label %1284, label %1289

1284:                                             ; preds = %1280
  %1285 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %1276, i64 0, i32 2, i64 %1273
  %1286 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %1276, i64 0, i32 2, i64 %1273, i32 1
  %1287 = load ptr, ptr %1286, align 8, !tbaa !84
  %1288 = load ptr, ptr %1285, align 8, !tbaa !86
  br label %1289

1289:                                             ; preds = %1280, %1284
  %1290 = phi ptr [ %1274, %1280 ], [ %1288, %1284 ]
  %1291 = phi ptr [ %1275, %1280 ], [ %1287, %1284 ]
  br i1 %1283, label %1292, label %1452

1292:                                             ; preds = %1289
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.149, ptr noundef %1290, i32 noundef %1271)
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.150, ptr noundef %1291, i32 noundef %1271)
  %1293 = add nuw nsw i64 %1273, 1
  br label %1272, !llvm.loop !87

1294:                                             ; preds = %1108
  %1295 = getelementptr inbounds %struct.tree_statement_list, ptr %2, i64 0, i32 1
  %1296 = load ptr, ptr %1295, align 8, !tbaa !46
  tail call void @dump_addr(ptr noundef %0, ptr noundef nonnull @.str.151, ptr noundef %1296)
  %1297 = getelementptr inbounds %struct.tree_statement_list, ptr %2, i64 0, i32 2
  %1298 = load ptr, ptr %1297, align 8, !tbaa !46
  tail call void @dump_addr(ptr noundef %0, ptr noundef nonnull @.str.152, ptr noundef %1298)
  %1299 = tail call i64 @fwrite(ptr nonnull @.str.153, i64 6, i64 1, ptr %0)
  %1300 = load ptr, ptr %1295, align 8, !tbaa !46
  %1301 = icmp eq ptr %1300, null
  br i1 %1301, label %1309, label %1302

1302:                                             ; preds = %1294, %1302
  %1303 = phi ptr [ %1307, %1302 ], [ %1300, %1294 ]
  %1304 = getelementptr inbounds %struct.tree_statement_list_node, ptr %1303, i64 0, i32 2
  %1305 = load ptr, ptr %1304, align 8, !tbaa !88
  tail call void @dump_addr(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %1305)
  %1306 = getelementptr inbounds %struct.tree_statement_list_node, ptr %1303, i64 0, i32 1
  %1307 = load ptr, ptr %1306, align 8, !tbaa !46
  %1308 = icmp eq ptr %1307, null
  br i1 %1308, label %1309, label %1302, !llvm.loop !90

1309:                                             ; preds = %1302, %1294
  %1310 = tail call i32 @fputc(i32 10, ptr %0)
  %1311 = load ptr, ptr %1295, align 8, !tbaa !46
  %1312 = icmp eq ptr %1311, null
  br i1 %1312, label %1322, label %1313

1313:                                             ; preds = %1309
  %1314 = add nsw i32 %3, 4
  br label %1315

1315:                                             ; preds = %1313, %1315
  %1316 = phi ptr [ %1311, %1313 ], [ %1320, %1315 ]
  %1317 = getelementptr inbounds %struct.tree_statement_list_node, ptr %1316, i64 0, i32 2
  %1318 = load ptr, ptr %1317, align 8, !tbaa !88
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.154, ptr noundef %1318, i32 noundef %1314)
  %1319 = getelementptr inbounds %struct.tree_statement_list_node, ptr %1316, i64 0, i32 1
  %1320 = load ptr, ptr %1319, align 8, !tbaa !46
  %1321 = icmp eq ptr %1320, null
  br i1 %1321, label %1322, label %1315, !llvm.loop !91

1322:                                             ; preds = %1315, %1309
  %1323 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 1
  %1324 = load ptr, ptr %1323, align 8, !tbaa !46
  %1325 = add nsw i32 %3, 4
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.104, ptr noundef %1324, i32 noundef %1325)
  br label %1452

1326:                                             ; preds = %1108
  %1327 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 3
  %1328 = load ptr, ptr %1327, align 8, !tbaa !46
  %1329 = add nsw i32 %3, 4
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.134, ptr noundef %1328, i32 noundef %1329)
  %1330 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 6
  %1331 = load ptr, ptr %1330, align 8, !tbaa !46
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.155, ptr noundef %1331, i32 noundef %1329)
  %1332 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 5
  %1333 = load ptr, ptr %1332, align 8, !tbaa !46
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.156, ptr noundef %1333, i32 noundef %1329)
  %1334 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 1
  %1335 = load ptr, ptr %1334, align 8, !tbaa !46
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.104, ptr noundef %1335, i32 noundef %1329)
  %1336 = getelementptr inbounds %struct.tree_block, ptr %2, i64 0, i32 7
  %1337 = load ptr, ptr %1336, align 8, !tbaa !46
  tail call void @print_node(ptr noundef %0, ptr noundef nonnull @.str.97, ptr noundef %1337, i32 noundef %1329)
  br label %1452

1338:                                             ; preds = %1108
  %1339 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 1
  %1340 = load ptr, ptr %1339, align 8, !tbaa !46
  %1341 = add nsw i32 %3, 4
  tail call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.157, ptr noundef %1340, i32 noundef %1341)
  %1342 = tail call i64 @fwrite(ptr nonnull @.str.158, i64 9, i64 1, ptr %0)
  %1343 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 2
  %1344 = load ptr, ptr %1343, align 8, !tbaa !46
  tail call void @print_gimple_stmt(ptr noundef %0, ptr noundef %1344, i32 noundef %1341, i32 noundef 0) #15
  %1345 = icmp sgt i32 %3, -4
  br i1 %1345, label %1346, label %1348

1346:                                             ; preds = %1338
  %1347 = tail call i32 @fputc(i32 10, ptr %0)
  br label %1348

1348:                                             ; preds = %1346, %1338
  %1349 = icmp sgt i32 %3, -4
  br i1 %1349, label %1350, label %1357

1350:                                             ; preds = %1348
  %1351 = tail call i32 @llvm.smax.i32(i32 %1341, i32 1)
  br label %1352

1352:                                             ; preds = %1350, %1352
  %1353 = phi i32 [ %1355, %1352 ], [ 0, %1350 ]
  %1354 = tail call i32 @fputc(i32 32, ptr %0)
  %1355 = add nuw nsw i32 %1353, 1
  %1356 = icmp eq i32 %1355, %1351
  br i1 %1356, label %1357, label %1352, !llvm.loop !58

1357:                                             ; preds = %1352, %1348
  %1358 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 3
  %1359 = load i32, ptr %1358, align 8, !tbaa !46
  %1360 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.159, i32 noundef %1359)
  %1361 = load i64, ptr %2, align 8
  %1362 = and i64 %1361, 4194304
  %1363 = icmp eq i64 %1362, 0
  br i1 %1363, label %1366, label %1364

1364:                                             ; preds = %1357
  %1365 = tail call i64 @fwrite(ptr nonnull @.str.160, i64 16, i64 1, ptr %0)
  br label %1366

1366:                                             ; preds = %1364, %1357
  %1367 = load i64, ptr %2, align 8
  %1368 = and i64 %1367, 33554432
  %1369 = icmp eq i64 %1368, 0
  br i1 %1369, label %1372, label %1370

1370:                                             ; preds = %1366
  %1371 = tail call i64 @fwrite(ptr nonnull @.str.161, i64 13, i64 1, ptr %0)
  br label %1372

1372:                                             ; preds = %1370, %1366
  %1373 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 4
  %1374 = load ptr, ptr %1373, align 8, !tbaa !46
  %1375 = icmp eq ptr %1374, null
  br i1 %1375, label %1452, label %1376

1376:                                             ; preds = %1372
  %1377 = icmp sgt i32 %3, -3
  br i1 %1377, label %1378, label %1380

1378:                                             ; preds = %1376
  %1379 = tail call i32 @fputc(i32 10, ptr %0)
  br label %1380

1380:                                             ; preds = %1378, %1376
  %1381 = icmp sgt i32 %3, -3
  br i1 %1381, label %1382, label %1390

1382:                                             ; preds = %1380
  %1383 = add i32 %3, 2
  %1384 = tail call i32 @llvm.smax.i32(i32 %1383, i32 0)
  br label %1385

1385:                                             ; preds = %1382, %1385
  %1386 = phi i32 [ %1388, %1385 ], [ 0, %1382 ]
  %1387 = tail call i32 @fputc(i32 32, ptr %0)
  %1388 = add nuw i32 %1386, 1
  %1389 = icmp eq i32 %1386, %1384
  br i1 %1389, label %1390, label %1385, !llvm.loop !58

1390:                                             ; preds = %1385, %1380
  %1391 = load ptr, ptr %1373, align 8, !tbaa !46
  %1392 = icmp eq ptr %1391, null
  br i1 %1392, label %1452, label %1393

1393:                                             ; preds = %1390
  tail call void @dump_addr(ptr noundef %0, ptr noundef nonnull @.str.162, ptr noundef nonnull %1391)
  br label %1452

1394:                                             ; preds = %1108
  %1395 = getelementptr inbounds %struct.tree_omp_clause, ptr %2, i64 0, i32 2
  %1396 = load i32, ptr %1395, align 4, !tbaa !46
  %1397 = zext i32 %1396 to i64
  %1398 = getelementptr inbounds [0 x ptr], ptr @omp_clause_code_name, i64 0, i64 %1397
  %1399 = load ptr, ptr %1398, align 8, !tbaa !35
  %1400 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %1399)
  %1401 = load i32, ptr %1395, align 4, !tbaa !46
  %1402 = zext i32 %1401 to i64
  %1403 = getelementptr inbounds [0 x i8], ptr @omp_clause_num_ops, i64 0, i64 %1402
  %1404 = load i8, ptr %1403, align 1, !tbaa !46
  %1405 = icmp eq i8 %1404, 0
  br i1 %1405, label %1452, label %1406

1406:                                             ; preds = %1394
  %1407 = icmp sgt i32 %3, -4
  %1408 = icmp sgt i32 %3, -4
  %1409 = add i32 %3, 3
  %1410 = tail call i32 @llvm.smax.i32(i32 %1409, i32 0)
  br label %1411

1411:                                             ; preds = %1406, %1421
  %1412 = phi i64 [ 0, %1406 ], [ %1426, %1421 ]
  br i1 %1407, label %1413, label %1415

1413:                                             ; preds = %1411
  %1414 = tail call i32 @fputc(i32 10, ptr %0)
  br label %1415

1415:                                             ; preds = %1413, %1411
  br i1 %1408, label %1416, label %1421

1416:                                             ; preds = %1415, %1416
  %1417 = phi i32 [ %1419, %1416 ], [ 0, %1415 ]
  %1418 = tail call i32 @fputc(i32 32, ptr %0)
  %1419 = add nuw i32 %1417, 1
  %1420 = icmp eq i32 %1417, %1410
  br i1 %1420, label %1421, label %1416, !llvm.loop !58

1421:                                             ; preds = %1416, %1415
  %1422 = trunc i64 %1412 to i32
  %1423 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.163, i32 noundef %1422)
  %1424 = getelementptr inbounds %struct.tree_omp_clause, ptr %2, i64 0, i32 6, i64 %1412
  %1425 = load ptr, ptr %1424, align 8, !tbaa !46
  tail call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %1425, i32 noundef 0)
  %1426 = add nuw nsw i64 %1412, 1
  %1427 = load i32, ptr %1395, align 4, !tbaa !46
  %1428 = zext i32 %1427 to i64
  %1429 = getelementptr inbounds [0 x i8], ptr @omp_clause_num_ops, i64 0, i64 %1428
  %1430 = load i8, ptr %1429, align 1, !tbaa !46
  %1431 = zext i8 %1430 to i64
  %1432 = icmp ult i64 %1426, %1431
  br i1 %1432, label %1411, label %1452, !llvm.loop !92

1433:                                             ; preds = %1108
  %1434 = add nsw i32 %3, 4
  %1435 = getelementptr inbounds %struct.tree_optimization_option, ptr %2, i64 0, i32 1
  tail call void @cl_optimization_print(ptr noundef %0, i32 noundef %1434, ptr noundef nonnull %1435) #15
  br label %1452

1436:                                             ; preds = %1108
  %1437 = add nsw i32 %3, 4
  %1438 = getelementptr inbounds %struct.tree_target_option, ptr %2, i64 0, i32 1
  tail call void @cl_target_option_print(ptr noundef %0, i32 noundef %1437, ptr noundef nonnull %1438) #15
  br label %1452

1439:                                             ; preds = %1108
  %1440 = tail call i64 @fwrite(ptr nonnull @.str.164, i64 21, i64 1, ptr %0)
  %1441 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 5
  %1442 = load ptr, ptr %1441, align 8, !tbaa !46
  %1443 = add nsw i32 %3, 4
  tail call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.165, ptr noundef %1442, i32 noundef %1443)
  br label %1452

1444:                                             ; preds = %1108
  %1445 = load i64, ptr %2, align 8
  %1446 = and i64 %1445, 65535
  %1447 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1446
  %1448 = load i32, ptr %1447, align 4, !tbaa !50
  %1449 = icmp eq i32 %1448, 0
  br i1 %1449, label %1450, label %1452

1450:                                             ; preds = %1444
  %1451 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 18), align 8, !tbaa !93
  tail call void %1451(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %3) #15
  br label %1452

1452:                                             ; preds = %1421, %1289, %1259, %1394, %1230, %1155, %1162, %1182, %1183, %1220, %1222, %1322, %1326, %1433, %1436, %1439, %1126, %1129, %1120, %1218, %1217, %1390, %1393, %1372, %1450, %1444, %777, %778, %317, %1104, %1029, %1022
  %1453 = load i64, ptr %2, align 8
  %1454 = and i64 %1453, 65535
  %1455 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1454
  %1456 = load i32, ptr %1455, align 4, !tbaa !50
  %1457 = add i32 %1456, -4
  %1458 = icmp ult i32 %1457, 7
  br i1 %1458, label %1459, label %1484

1459:                                             ; preds = %1452
  %1460 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 1
  %1461 = load i32, ptr %1460, align 8, !tbaa !46
  %1462 = icmp eq i32 %1461, 0
  br i1 %1462, label %1484, label %1463

1463:                                             ; preds = %1459
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #15
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %15, i32 noundef %1461) #15
  %1464 = icmp sgt i32 %3, -4
  br i1 %1464, label %1465, label %1467

1465:                                             ; preds = %1463
  %1466 = call i32 @fputc(i32 10, ptr %0)
  br label %1467

1467:                                             ; preds = %1465, %1463
  %1468 = icmp sgt i32 %3, -4
  br i1 %1468, label %1469, label %1477

1469:                                             ; preds = %1467
  %1470 = add i32 %3, 3
  %1471 = call i32 @llvm.smax.i32(i32 %1470, i32 0)
  br label %1472

1472:                                             ; preds = %1469, %1472
  %1473 = phi i32 [ %1475, %1472 ], [ 0, %1469 ]
  %1474 = call i32 @fputc(i32 32, ptr %0)
  %1475 = add nuw i32 %1473, 1
  %1476 = icmp eq i32 %1473, %1471
  br i1 %1476, label %1477, label %1472, !llvm.loop !58

1477:                                             ; preds = %1472, %1467
  %1478 = load ptr, ptr %15, align 8, !tbaa !94
  %1479 = getelementptr inbounds %struct.expanded_location, ptr %15, i64 0, i32 1
  %1480 = load i32, ptr %1479, align 8, !tbaa !95
  %1481 = getelementptr inbounds %struct.expanded_location, ptr %15, i64 0, i32 2
  %1482 = load i32, ptr %1481, align 4, !tbaa !96
  %1483 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.166, ptr noundef %1478, i32 noundef %1480, i32 noundef %1482)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #15
  br label %1484

1484:                                             ; preds = %1452, %1477, %1459
  %1485 = call i32 @fputc(i32 62, ptr %0)
  br label %1486

1486:                                             ; preds = %4, %1484, %52, %34, %31, %25
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dump_addr(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 !prof !34 {
  %4 = load i32, ptr @flag_dump_noaddr, align 4, !tbaa !50
  %5 = icmp ne i32 %4, 0
  %6 = load i32, ptr @flag_dump_unnumbered, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %1)
  br label %13

11:                                               ; preds = %3
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %1, ptr noundef %2)
  br label %13

13:                                               ; preds = %11, %9
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @print_node_brief(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !34 {
  %5 = alloca %struct.real_value, align 8
  %6 = alloca [60 x i8], align 16
  %7 = alloca %struct.fixed_value, align 8
  %8 = alloca [60 x i8], align 16
  %9 = icmp eq ptr %2, null
  br i1 %9, label %159, label %10

10:                                               ; preds = %4
  %11 = load i64, ptr %2, align 8
  %12 = and i64 %11, 65535
  %13 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !50
  %15 = icmp sgt i32 %3, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = tail call i32 @fputc(i32 32, ptr %0)
  br label %18

18:                                               ; preds = %16, %10
  %19 = load i64, ptr %2, align 8
  %20 = and i64 %19, 65535
  %21 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %1, ptr noundef %22)
  tail call void @dump_addr(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %2)
  switch i32 %14, label %83 [
    i32 3, label %24
    i32 2, label %60
  ]

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.tree_identifier, ptr %26, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %30)
  br label %83

32:                                               ; preds = %24
  %33 = load i64, ptr %2, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 30
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_label_decl, ptr %2, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !46
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %42 = and i32 %41, 1048576
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 7, i64 1, ptr %0)
  br label %83

46:                                               ; preds = %40
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %38)
  br label %83

48:                                               ; preds = %36, %32
  %49 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %50 = and i32 %49, 1048576
  %51 = icmp eq i32 %50, 0
  %52 = icmp eq i64 %34, 33
  %53 = select i1 %52, i32 67, i32 68
  br i1 %51, label %56, label %54

54:                                               ; preds = %48
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %53)
  br label %83

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !46
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %53, i32 noundef %58)
  br label %83

60:                                               ; preds = %18
  %61 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 12
  %62 = load ptr, ptr %61, align 8, !tbaa !46
  %63 = icmp eq ptr %62, null
  br i1 %63, label %76, label %64

64:                                               ; preds = %60
  %65 = load i64, ptr %62, align 8
  %66 = trunc i64 %65 to i16
  switch i16 %66, label %76 [
    i16 1, label %71
    i16 35, label %67
  ]

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.tree_decl_minimal, ptr %62, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !46
  %70 = icmp eq ptr %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %67, %64
  %72 = phi ptr [ %62, %64 ], [ %69, %67 ]
  %73 = getelementptr inbounds %struct.tree_identifier, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !46
  %75 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %74)
  br label %76

76:                                               ; preds = %71, %64, %67, %60
  %77 = load i64, ptr %2, align 8
  %78 = lshr i64 %77, 56
  %79 = trunc i64 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %76
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %79)
  br label %83

83:                                               ; preds = %18, %81, %76, %28, %54, %56, %44, %46
  %84 = load i64, ptr %2, align 8
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 1
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.tree_identifier, ptr %2, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !46
  %90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %89)
  br label %91

91:                                               ; preds = %87, %83
  %92 = load i64, ptr %2, align 8
  %93 = and i64 %92, 65535
  %94 = icmp eq i64 %93, 23
  br i1 %94, label %95, label %117

95:                                               ; preds = %91
  %96 = and i64 %92, 134217728
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 9, i64 1, ptr %0)
  br label %100

100:                                              ; preds = %98, %95
  %101 = tail call i32 @fputc(i32 32, ptr %0)
  %102 = getelementptr inbounds %struct.tree_int_cst, ptr %2, i64 0, i32 1
  %103 = getelementptr inbounds %struct.tree_int_cst, ptr %2, i64 0, i32 1, i32 1
  %104 = load i64, ptr %103, align 8, !tbaa !46
  switch i64 %104, label %114 [
    i64 0, label %105
    i64 -1, label %108
  ]

105:                                              ; preds = %100
  %106 = load i64, ptr %102, align 8, !tbaa !46
  %107 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i64 noundef %106)
  br label %117

108:                                              ; preds = %100
  %109 = load i64, ptr %102, align 8, !tbaa !46
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = sub i64 0, %109
  %113 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef %112)
  br label %117

114:                                              ; preds = %100, %108
  %115 = load i64, ptr %102, align 8, !tbaa !46
  %116 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, i64 noundef %104, i64 noundef %115)
  br label %117

117:                                              ; preds = %105, %114, %111, %91
  %118 = load i64, ptr %2, align 8
  %119 = and i64 %118, 65535
  %120 = icmp eq i64 %119, 24
  br i1 %120, label %121, label %144

121:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #15
  %122 = and i64 %118, 134217728
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %121
  %125 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 9, i64 1, ptr %0)
  br label %126

126:                                              ; preds = %124, %121
  %127 = getelementptr inbounds %struct.tree_real_cst, ptr %2, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %128, i64 32, i1 false), !tbaa.struct !75
  %129 = call zeroext i8 @real_isinf(ptr noundef nonnull %5) #15
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %126
  %132 = call zeroext i8 @real_isneg(ptr noundef nonnull %5) #15
  %133 = icmp eq i8 %132, 0
  %134 = select i1 %133, ptr @.str.16, ptr @.str.15
  %135 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %134)
  br label %143

136:                                              ; preds = %126
  %137 = call zeroext i8 @real_isnan(ptr noundef nonnull %5) #15
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %141, label %139

139:                                              ; preds = %136
  %140 = call i64 @fwrite(ptr nonnull @.str.17, i64 4, i64 1, ptr %0)
  br label %143

141:                                              ; preds = %136
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %6) #15
  call void @real_to_decimal(ptr noundef nonnull %6, ptr noundef nonnull %5, i64 noundef 60, i64 noundef 0, i32 noundef 1) #15
  %142 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %6) #15
  br label %143

143:                                              ; preds = %139, %141, %131
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #15
  br label %144

144:                                              ; preds = %143, %117
  %145 = load i64, ptr %2, align 8
  %146 = and i64 %145, 65535
  %147 = icmp eq i64 %146, 25
  br i1 %147, label %148, label %157

148:                                              ; preds = %144
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %8) #15
  %149 = and i64 %145, 134217728
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %148
  %152 = call i64 @fwrite(ptr nonnull @.str.11, i64 9, i64 1, ptr %0)
  br label %153

153:                                              ; preds = %151, %148
  %154 = getelementptr inbounds %struct.tree_fixed_cst, ptr %2, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %155, i64 24, i1 false), !tbaa.struct !76
  call void @fixed_to_decimal(ptr noundef nonnull %8, ptr noundef nonnull %7, i64 noundef 60) #15
  %156 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %8)
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #15
  br label %157

157:                                              ; preds = %153, %144
  %158 = call i32 @fputc(i32 62, ptr %0)
  br label %159

159:                                              ; preds = %4, %157
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

declare zeroext i8 @real_isinf(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @real_isneg(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @real_isnan(ptr noundef) local_unnamed_addr #3

declare void @real_to_decimal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @fixed_to_decimal(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @indent_to(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #11 !prof !34 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 @fputc(i32 10, ptr %0)
  br label %6

6:                                                ; preds = %4, %2
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %6, %8
  %9 = phi i32 [ %11, %8 ], [ 0, %6 ]
  %10 = tail call i32 @fputc(i32 32, ptr %0)
  %11 = add nuw nsw i32 %9, 1
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %8, !llvm.loop !58

13:                                               ; preds = %8, %6
  ret void
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #1

declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @print_rtl(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @make_decl_rtl(ptr noundef) local_unnamed_addr #3

declare ptr @decl_value_expr_lookup(ptr noundef) local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @cl_optimization_print(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @cl_target_option_print(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

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
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }

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
!54 = distinct !{!54, !52, !53}
!55 = !{!56, !36, i64 0}
!56 = !{!"bucket", !36, i64 0, !36, i64 8}
!57 = !{!56, !36, i64 8}
!58 = distinct !{!58, !52, !53}
!59 = !{!60, !37, i64 16}
!60 = !{!"", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16}
!61 = !{i64 0, i64 8, !35, i64 8, i64 4, !50, i64 12, i64 4, !50, i64 16, i64 1, !46}
!62 = !{i64 0, i64 4, !50, i64 4, i64 4, !50, i64 8, i64 1, !46}
!63 = !{i64 0, i64 4, !50, i64 4, i64 1, !46}
!64 = !{!65, !36, i64 152}
!65 = !{!"lang_hooks", !36, i64 0, !42, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !66, i64 240, !67, i64 248, !68, i64 256, !69, i64 272, !70, i64 432, !71, i64 560, !36, i64 584, !36, i64 592, !36, i64 600, !36, i64 608, !36, i64 616, !36, i64 624, !36, i64 632, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !37, i64 672}
!66 = !{!"lang_hooks_for_tree_inlining", !36, i64 0}
!67 = !{!"lang_hooks_for_callgraph", !36, i64 0}
!68 = !{!"lang_hooks_for_tree_dump", !36, i64 0, !36, i64 8}
!69 = !{!"lang_hooks_for_decls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152}
!70 = !{!"lang_hooks_for_types", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !37, i64 120}
!71 = !{!"lang_hooks_for_lto", !36, i64 0, !36, i64 8, !36, i64 16}
!72 = !{!65, !36, i64 160}
!73 = distinct !{!73, !52, !53}
!74 = distinct !{!74, !52, !53}
!75 = !{i64 0, i64 4, !50, i64 0, i64 4, !50, i64 0, i64 4, !50, i64 0, i64 4, !50, i64 0, i64 4, !50, i64 0, i64 4, !50, i64 8, i64 24, !46}
!76 = !{i64 0, i64 8, !77, i64 8, i64 8, !77, i64 16, i64 4, !50}
!77 = !{!42, !42, i64 0}
!78 = distinct !{!78, !52, !53}
!79 = distinct !{!79, !52, !53}
!80 = !{!65, !36, i64 168}
!81 = distinct !{!81, !52, !53}
!82 = !{!83, !41, i64 0}
!83 = !{!"VEC_constructor_elt_base", !41, i64 0, !41, i64 4, !37, i64 8}
!84 = !{!85, !36, i64 8}
!85 = !{!"constructor_elt_d", !36, i64 0, !36, i64 8}
!86 = !{!85, !36, i64 0}
!87 = distinct !{!87, !52, !53}
!88 = !{!89, !36, i64 16}
!89 = !{!"tree_statement_list_node", !36, i64 0, !36, i64 8, !36, i64 16}
!90 = distinct !{!90, !52, !53}
!91 = distinct !{!91, !52, !53}
!92 = distinct !{!92, !52, !53}
!93 = !{!65, !36, i64 144}
!94 = !{!60, !36, i64 0}
!95 = !{!60, !41, i64 8}
!96 = !{!60, !41, i64 12}
