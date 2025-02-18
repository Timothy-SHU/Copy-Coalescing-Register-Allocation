; ModuleID = 'tree-dump.c'
source_filename = "tree-dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dump_file_info = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.dump_option_value_info = type { ptr, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.dump_info = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.splay_tree_node_s = type { i64, i64, ptr, ptr }
%struct.dump_queue = type { ptr, ptr }
%struct.dump_node_info = type { i32, i8 }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.tree_binfo = type { %struct.tree_common, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.VEC_tree_none }
%struct.VEC_tree_none = type { %struct.VEC_tree_base }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_statement_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_statement_list_node = type { ptr, ptr, ptr }
%struct.tree_vec = type { %struct.tree_common, i32, [1 x ptr] }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.tree_real_cst = type { %struct.tree_common, ptr }
%struct.tree_fixed_cst = type { %struct.tree_common, ptr }
%struct.tree_constructor = type { %struct.tree_common, ptr }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.tree_omp_clause = type { %struct.tree_common, i32, i32, %union.omp_clause_subcode, ptr, ptr, [1 x ptr] }
%union.omp_clause_subcode = type { i32 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [7 x i8] c"%-4s: \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%-4s: %-8lx \00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%-4s: %-7d \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%-13s \00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"%-4s: %-7s \00", align 1
@dump_register.next_dump = internal unnamed_addr global i32 7, align 4
@extra_dump_files_in_use = internal unnamed_addr global i64 0, align 8
@extra_dump_files_alloced = internal unnamed_addr global i64 0, align 8
@extra_dump_files = internal unnamed_addr global ptr null, align 8
@dump_files = internal global [11 x %struct.dump_file_info] [%struct.dump_file_info zeroinitializer, %struct.dump_file_info { ptr @.str.99, ptr @.str.100, ptr null, i32 2048, i32 0, i32 0 }, %struct.dump_file_info { ptr @.str.101, ptr @.str.102, ptr null, i32 512, i32 0, i32 1 }, %struct.dump_file_info { ptr @.str.103, ptr @.str.104, ptr null, i32 512, i32 0, i32 2 }, %struct.dump_file_info { ptr @.str.105, ptr @.str.106, ptr null, i32 512, i32 0, i32 3 }, %struct.dump_file_info { ptr @.str.107, ptr @.str.108, ptr null, i32 512, i32 0, i32 4 }, %struct.dump_file_info { ptr @.str.109, ptr @.str.110, ptr null, i32 512, i32 0, i32 5 }, %struct.dump_file_info { ptr @.str.111, ptr @.str.112, ptr null, i32 512, i32 0, i32 6 }, %struct.dump_file_info { ptr null, ptr @.str.113, ptr null, i32 512, i32 0, i32 0 }, %struct.dump_file_info { ptr null, ptr @.str.114, ptr null, i32 1024, i32 0, i32 0 }, %struct.dump_file_info { ptr null, ptr @.str.115, ptr null, i32 2048, i32 0, i32 0 }], align 16
@.str.6 = private unnamed_addr constant [8 x i8] c".%03d%c\00", align 1
@dump_base_name = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"could not open dump file %qs: %s\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"@%-6u \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"\0A%*s\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"binfo\00", align 1
@tree_code_name = external local_unnamed_addr constant [0 x ptr], align 8
@.str.15 = private unnamed_addr constant [7 x i8] c"%-16s \00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"spec\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"virt\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"bases\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.19 = private unnamed_addr constant [4 x i8] c"pub\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"prot\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"priv\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"tree-dump.c\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"accs\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"binf\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"op 0\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"op 1\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@.str.29 = private unnamed_addr constant [5 x i8] c"mngl\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"orig\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"scpe\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"srcp: %s:%-6d \00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"note\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"artificial\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"chan\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.36 = private unnamed_addr constant [18 x i8] c"qual: %c%c%c     \00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"unql\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"algn\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"strg\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"lngt\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"purp\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"valu\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"prec\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"sign\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@.str.49 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"csts\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"saturating\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"non-saturating\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"ptd\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"refd\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"clas\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"retn\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"prms\00", align 1
@.str.59 = private unnamed_addr constant [5 x i8] c"elts\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"domn\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"flds\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"fncs\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"cnst\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"-uid\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"argt\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"bpos\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"used\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"register\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"extern\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.80 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"strg: %-7s \00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"op 2\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"op 3\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"fn\00", align 1
@.str.85 = private unnamed_addr constant [4 x i8] c"idx\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"vars\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"cond\00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"expr\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"decl\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"clnp\00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"low \00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"labl\00", align 1
@.str.94 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@omp_clause_code_name = external local_unnamed_addr constant [0 x ptr], align 8
@omp_clause_num_ops = external local_unnamed_addr constant [0 x i8], align 1
@.str.95 = private unnamed_addr constant [5 x i8] c"op: \00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"%-4s: %s \00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c".cgraph\00", align 1
@.str.100 = private unnamed_addr constant [11 x i8] c"ipa-cgraph\00", align 1
@.str.101 = private unnamed_addr constant [4 x i8] c".tu\00", align 1
@.str.102 = private unnamed_addr constant [17 x i8] c"translation-unit\00", align 1
@.str.103 = private unnamed_addr constant [7 x i8] c".class\00", align 1
@.str.104 = private unnamed_addr constant [16 x i8] c"class-hierarchy\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c".original\00", align 1
@.str.106 = private unnamed_addr constant [14 x i8] c"tree-original\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c".gimple\00", align 1
@.str.108 = private unnamed_addr constant [12 x i8] c"tree-gimple\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c".nested\00", align 1
@.str.110 = private unnamed_addr constant [12 x i8] c"tree-nested\00", align 1
@.str.111 = private unnamed_addr constant [5 x i8] c".vcg\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c"tree-vcg\00", align 1
@.str.113 = private unnamed_addr constant [9 x i8] c"tree-all\00", align 1
@.str.114 = private unnamed_addr constant [8 x i8] c"rtl-all\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c"ipa-all\00", align 1
@dump_options = internal unnamed_addr constant [18 x %struct.dump_option_value_info] [%struct.dump_option_value_info { ptr @.str.117, i32 1 }, %struct.dump_option_value_info { ptr @.str.118, i32 262144 }, %struct.dump_option_value_info { ptr @.str.119, i32 2 }, %struct.dump_option_value_info { ptr @.str.120, i32 4 }, %struct.dump_option_value_info { ptr @.str.121, i32 8192 }, %struct.dump_option_value_info { ptr @.str.122, i32 8 }, %struct.dump_option_value_info { ptr @.str.123, i32 16 }, %struct.dump_option_value_info { ptr @.str.124, i32 32 }, %struct.dump_option_value_info { ptr @.str.125, i32 64 }, %struct.dump_option_value_info { ptr @.str.126, i32 128 }, %struct.dump_option_value_info { ptr @.str.127, i32 256 }, %struct.dump_option_value_info { ptr @.str.128, i32 4096 }, %struct.dump_option_value_info { ptr @.str.129, i32 16384 }, %struct.dump_option_value_info { ptr @.str.130, i32 65536 }, %struct.dump_option_value_info { ptr @.str.131, i32 524288 }, %struct.dump_option_value_info { ptr @.str.132, i32 1048576 }, %struct.dump_option_value_info { ptr @.str.133, i32 -1293959 }, %struct.dump_option_value_info zeroinitializer], align 16
@.str.116 = private unnamed_addr constant [47 x i8] c"ignoring unknown option %q.*s in %<-fdump-%s%>\00", align 1
@.str.117 = private unnamed_addr constant [8 x i8] c"address\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"asmname\00", align 1
@.str.119 = private unnamed_addr constant [5 x i8] c"slim\00", align 1
@.str.120 = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.121 = private unnamed_addr constant [6 x i8] c"graph\00", align 1
@.str.122 = private unnamed_addr constant [8 x i8] c"details\00", align 1
@.str.123 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"blocks\00", align 1
@.str.125 = private unnamed_addr constant [5 x i8] c"vops\00", align 1
@.str.126 = private unnamed_addr constant [7 x i8] c"lineno\00", align 1
@.str.127 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.128 = private unnamed_addr constant [9 x i8] c"stmtaddr\00", align 1
@.str.129 = private unnamed_addr constant [8 x i8] c"memsyms\00", align 1
@.str.130 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.131 = private unnamed_addr constant [3 x i8] c"eh\00", align 1
@.str.132 = private unnamed_addr constant [6 x i8] c"nouid\00", align 1
@.str.133 = private unnamed_addr constant [4 x i8] c"all\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !38 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !39
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !38 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !39
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !38 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !49

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #24
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !43
  %11 = load i8, ptr %3, align 1, !tbaa !50
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !38 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !49

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #24
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !43
  %11 = load i8, ptr %3, align 1, !tbaa !50
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !38 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !39
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !49

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #24
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !43
  %11 = load i8, ptr %3, align 1, !tbaa !50
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !38 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !39
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !38 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !49

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #24
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !51
  store i8 %12, ptr %4, align 1, !tbaa !50
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !38 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !49

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #24
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !51
  store i8 %12, ptr %4, align 1, !tbaa !50
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !38 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !39
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !49

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #24
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !51
  store i8 %12, ptr %4, align 1, !tbaa !50
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !38 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #24
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !38 {
  %2 = load i32, ptr %0, align 8, !tbaa !53
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !38 {
  %2 = load i32, ptr %0, align 8, !tbaa !53
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !38 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #24
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !54
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !38 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #24
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !54
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !38 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !38 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !38 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !38 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #24
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
  br i1 %23, label %7, label %24, !llvm.loop !55

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !38 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @queue_and_dump_index(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !38 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !58
  %9 = ptrtoint ptr %2 to i64
  %10 = tail call ptr @splay_tree_lookup(ptr noundef %8, i64 noundef %9) #24
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.splay_tree_node_s, ptr %10, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !60
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4, !tbaa !62
  br label %19

17:                                               ; preds = %6
  %18 = tail call fastcc i32 @queue(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %3)
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi i32 [ %16, %12 ], [ %18, %17 ]
  tail call fastcc void @dump_maybe_newline(ptr noundef %0)
  %21 = load ptr, ptr %0, align 8, !tbaa !64
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str, ptr noundef %1)
  %23 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !65
  %25 = add i32 %24, 6
  store i32 %25, ptr %23, align 8, !tbaa !65
  %26 = load ptr, ptr %0, align 8, !tbaa !64
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.10, i32 noundef %20)
  %28 = load i32, ptr %23, align 8, !tbaa !65
  %29 = add i32 %28, 8
  store i32 %29, ptr %23, align 8, !tbaa !65
  br label %30

30:                                               ; preds = %4, %19
  ret void
}

declare ptr @splay_tree_lookup(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @queue(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #9 !prof !38 {
  %4 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !66
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 4, !tbaa !66
  %7 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.dump_queue, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !68
  store ptr %12, ptr %7, align 8, !tbaa !67
  br label %15

13:                                               ; preds = %3
  %14 = tail call ptr @xmalloc(i64 noundef 16) #24
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi ptr [ %8, %10 ], [ %14, %13 ]
  %17 = tail call ptr @xmalloc(i64 noundef 8) #24
  store i32 %6, ptr %17, align 4, !tbaa !62
  %18 = getelementptr inbounds %struct.dump_node_info, ptr %17, i64 0, i32 1
  %19 = trunc i32 %2 to i8
  %20 = and i8 %19, 1
  %21 = load i8, ptr %18, align 4
  %22 = and i8 %21, -2
  %23 = or disjoint i8 %22, %20
  store i8 %23, ptr %18, align 4
  %24 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !58
  %26 = ptrtoint ptr %1 to i64
  %27 = ptrtoint ptr %17 to i64
  %28 = tail call ptr @splay_tree_insert(ptr noundef %25, i64 noundef %26, i64 noundef %27) #24
  store ptr %28, ptr %16, align 8, !tbaa !70
  %29 = getelementptr inbounds %struct.dump_queue, ptr %16, i64 0, i32 1
  store ptr null, ptr %29, align 8, !tbaa !68
  %30 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !71
  %32 = icmp eq ptr %31, null
  %33 = getelementptr inbounds %struct.dump_queue, ptr %31, i64 0, i32 1
  %34 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 5
  %35 = select i1 %32, ptr %34, ptr %33
  store ptr %16, ptr %35, align 8, !tbaa !39
  store ptr %16, ptr %30, align 8, !tbaa !71
  ret i32 %6
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @dump_maybe_newline(ptr nocapture noundef %0) unnamed_addr #10 !prof !38 {
  %2 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !65
  %4 = icmp ugt i32 %3, 55
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !64
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.13, i32 noundef 25, ptr noundef nonnull @.str.12)
  br label %18

8:                                                ; preds = %1
  %9 = add nsw i32 %3, -25
  %10 = urem i32 %9, 15
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !64
  %14 = xor i32 %10, 15
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.11, i32 noundef %14, ptr noundef nonnull @.str.12)
  %16 = load i32, ptr %2, align 8, !tbaa !65
  %17 = add i32 %16, %14
  br label %18

18:                                               ; preds = %5, %12
  %19 = phi i32 [ %17, %12 ], [ 25, %5 ]
  store i32 %19, ptr %2, align 8, !tbaa !65
  br label %20

20:                                               ; preds = %18, %8
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local void @queue_and_dump_type(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !38 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !50
  tail call void @queue_and_dump_index(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %4, i32 noundef 0)
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dump_pointer(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !prof !38 {
  tail call fastcc void @dump_maybe_newline(ptr noundef %0)
  %4 = load ptr, ptr %0, align 8, !tbaa !64
  %5 = ptrtoint ptr %2 to i64
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.2, ptr noundef %1, i64 noundef %5)
  %7 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !65
  %9 = add i32 %8, 15
  store i32 %9, ptr %7, align 8, !tbaa !65
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dump_int(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #10 !prof !38 {
  tail call fastcc void @dump_maybe_newline(ptr noundef %0)
  %4 = load ptr, ptr %0, align 8, !tbaa !64
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.3, ptr noundef %1, i32 noundef %2)
  %6 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !65
  %8 = add i32 %7, 14
  store i32 %8, ptr %6, align 8, !tbaa !65
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dump_string(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !38 {
  tail call fastcc void @dump_maybe_newline(ptr noundef %0)
  %3 = load ptr, ptr %0, align 8, !tbaa !64
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef %1)
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1)
  %6 = icmp ugt i64 %5, 13
  %7 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !65
  %9 = trunc i64 %5 to i32
  %10 = add i32 %9, 1
  %11 = select i1 %6, i32 %10, i32 14
  %12 = add i32 %11, %8
  store i32 %12, ptr %7, align 8, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dump_string_field(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !prof !38 {
  tail call fastcc void @dump_maybe_newline(ptr noundef %0)
  %4 = load ptr, ptr %0, align 8, !tbaa !64
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.5, ptr noundef %1, ptr noundef %2)
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2)
  %7 = icmp ugt i64 %6, 7
  %8 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !65
  %10 = trunc i64 %6 to i32
  %11 = add i32 %10, 7
  %12 = select i1 %7, i32 %11, i32 14
  %13 = add i32 %12, %9
  store i32 %13, ptr %8, align 8, !tbaa !65
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @dump_flag(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef readnone %2) local_unnamed_addr #12 !prof !38 {
  %4 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !72
  %6 = and i32 %5, %1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = icmp ne ptr %10, %2
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ 0, %3 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_node(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !38 {
  %4 = alloca [32 x i8], align 16
  %5 = alloca [32 x i8], align 16
  %6 = alloca %struct.expanded_location, align 8
  %7 = alloca [32 x i8], align 16
  %8 = alloca [32 x i8], align 16
  %9 = alloca [32 x i8], align 16
  %10 = alloca %struct.dump_info, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #24
  store ptr %2, ptr %10, align 8, !tbaa !64
  %11 = getelementptr inbounds %struct.dump_info, ptr %10, i64 0, i32 3
  store i32 0, ptr %11, align 4, !tbaa !66
  %12 = getelementptr inbounds %struct.dump_info, ptr %10, i64 0, i32 4
  store i32 0, ptr %12, align 8, !tbaa !65
  %13 = getelementptr inbounds %struct.dump_info, ptr %10, i64 0, i32 5
  %14 = getelementptr inbounds %struct.dump_info, ptr %10, i64 0, i32 6
  %15 = getelementptr inbounds %struct.dump_info, ptr %10, i64 0, i32 7
  %16 = getelementptr inbounds %struct.dump_info, ptr %10, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  store i32 %1, ptr %16, align 8, !tbaa !72
  %17 = getelementptr inbounds %struct.dump_info, ptr %10, i64 0, i32 1
  store ptr %0, ptr %17, align 8, !tbaa !73
  %18 = tail call ptr @splay_tree_new(ptr noundef nonnull @splay_tree_compare_pointers, ptr noundef null, ptr noundef nonnull @free) #24
  %19 = getelementptr inbounds %struct.dump_info, ptr %10, i64 0, i32 8
  store ptr %18, ptr %19, align 8, !tbaa !58
  %20 = call fastcc i32 @queue(ptr noundef nonnull %10, ptr noundef %0, i32 noundef 0)
  %21 = load ptr, ptr %13, align 8, !tbaa !74
  %22 = icmp eq ptr %21, null
  br i1 %22, label %675, label %23

23:                                               ; preds = %3
  %24 = getelementptr inbounds i8, ptr %6, i64 8
  br label %25

25:                                               ; preds = %23, %670
  %26 = phi ptr [ %21, %23 ], [ %673, %670 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !70
  %28 = load i64, ptr %27, align 8, !tbaa !75
  %29 = inttoptr i64 %28 to ptr
  %30 = getelementptr inbounds %struct.splay_tree_node_s, ptr %27, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !60
  %32 = inttoptr i64 %31 to ptr
  %33 = load i32, ptr %32, align 4, !tbaa !62
  %34 = getelementptr inbounds %struct.dump_queue, ptr %26, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !68
  store ptr %35, ptr %13, align 8, !tbaa !74
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  store ptr null, ptr %14, align 8, !tbaa !71
  br label %38

38:                                               ; preds = %37, %25
  %39 = load ptr, ptr %15, align 8, !tbaa !67
  store ptr %39, ptr %34, align 8, !tbaa !68
  store ptr %26, ptr %15, align 8, !tbaa !67
  %40 = load ptr, ptr %10, align 8, !tbaa !64
  %41 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %40, ptr noundef nonnull @.str.10, i32 noundef %33)
  %42 = load i32, ptr %12, align 8, !tbaa !65
  %43 = add i32 %42, 8
  store i32 %43, ptr %12, align 8, !tbaa !65
  %44 = getelementptr inbounds %struct.dump_node_info, ptr %32, i64 0, i32 1
  %45 = load i8, ptr %44, align 4
  %46 = and i8 %45, 1
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load i64, ptr %29, align 8
  %50 = and i64 %49, 65535
  %51 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !39
  br label %53

53:                                               ; preds = %48, %38
  %54 = phi ptr [ %52, %48 ], [ @.str.14, %38 ]
  %55 = load ptr, ptr %10, align 8, !tbaa !64
  %56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef nonnull @.str.15, ptr noundef %54)
  store i32 25, ptr %12, align 8, !tbaa !65
  %57 = load i64, ptr %29, align 8
  %58 = and i64 %57, 65535
  %59 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !54
  %61 = load i8, ptr %44, align 4
  %62 = and i8 %61, 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %108, label %64

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.tree_binfo, ptr %29, i64 0, i32 5
  %66 = load ptr, ptr %65, align 8, !tbaa !50
  %67 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.1, ptr noundef %68, i32 noundef 0)
  %69 = load i64, ptr %29, align 8
  %70 = and i64 %69, 67108864
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %64
  call void @dump_string_field(ptr noundef nonnull %10, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17)
  br label %73

73:                                               ; preds = %72, %64
  %74 = getelementptr inbounds %struct.tree_binfo, ptr %29, i64 0, i32 9
  %75 = load i32, ptr %74, align 8, !tbaa !76
  call fastcc void @dump_maybe_newline(ptr noundef nonnull %10)
  %76 = load ptr, ptr %10, align 8, !tbaa !64
  %77 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18, i32 noundef %75)
  %78 = load i32, ptr %12, align 8, !tbaa !65
  %79 = add i32 %78, 14
  store i32 %79, ptr %12, align 8, !tbaa !65
  %80 = icmp eq ptr %66, null
  br label %81

81:                                               ; preds = %105, %73
  %82 = phi i32 [ 0, %73 ], [ %107, %105 ]
  %83 = load i32, ptr %74, align 8, !tbaa !76
  %84 = icmp ugt i32 %83, %82
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = zext i32 %82 to i64
  %87 = getelementptr inbounds %struct.VEC_tree_base, ptr %74, i64 0, i32 2, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !39
  br label %89

89:                                               ; preds = %85, %81
  %90 = phi ptr [ %88, %85 ], [ null, %81 ]
  br i1 %84, label %91, label %658

91:                                               ; preds = %89
  %92 = zext i32 %82 to i64
  %93 = getelementptr inbounds %struct.VEC_tree_base, ptr %66, i64 0, i32 2, i64 %92
  %94 = select i1 %80, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 22), ptr %93
  %95 = load ptr, ptr %94, align 8, !tbaa !39
  %96 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 22), align 16, !tbaa !39
  %97 = icmp eq ptr %95, %96
  br i1 %97, label %105, label %98

98:                                               ; preds = %91
  %99 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 23), align 8, !tbaa !39
  %100 = icmp eq ptr %95, %99
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 24), align 16, !tbaa !39
  %103 = icmp eq ptr %95, %102
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 302, ptr noundef nonnull @.str.23) #24
  br label %105

105:                                              ; preds = %104, %101, %98, %91
  %106 = phi ptr [ null, %104 ], [ @.str.19, %91 ], [ @.str.20, %98 ], [ @.str.21, %101 ]
  call void @dump_string_field(ptr noundef nonnull %10, ptr noundef nonnull @.str.24, ptr noundef %106)
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.25, ptr noundef %90, i32 noundef 1)
  %107 = add i32 %82, 1
  br label %81, !llvm.loop !78

108:                                              ; preds = %53
  %109 = add i32 %60, -4
  %110 = icmp ult i32 %109, 7
  br i1 %110, label %111, label %123

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.1, ptr noundef %113, i32 noundef 0)
  switch i32 %60, label %122 [
    i32 6, label %114
    i32 7, label %117
    i32 5, label %117
    i32 10, label %233
    i32 4, label %233
    i32 8, label %233
    i32 9, label %233
  ]

114:                                              ; preds = %111
  %115 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.26, ptr noundef %116, i32 noundef 0)
  br label %233

117:                                              ; preds = %111, %111
  %118 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.26, ptr noundef %119, i32 noundef 0)
  %120 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 1
  %121 = load ptr, ptr %120, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.27, ptr noundef %121, i32 noundef 0)
  br label %233

122:                                              ; preds = %111
  unreachable

123:                                              ; preds = %108
  switch i32 %60, label %233 [
    i32 3, label %124
    i32 2, label %196
    i32 1, label %230
  ]

124:                                              ; preds = %123
  %125 = getelementptr inbounds %struct.tree_decl_minimal, ptr %29, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !50
  %127 = icmp eq ptr %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %124
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.28, ptr noundef nonnull %126, i32 noundef 0)
  br label %129

129:                                              ; preds = %128, %124
  %130 = load i64, ptr %29, align 8
  %131 = and i64 %130, 65535
  %132 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %131, i64 13
  %133 = load i8, ptr %132, align 1, !tbaa !50
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %145, label %135

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %29, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !50
  %138 = icmp eq ptr %137, null
  br i1 %138, label %145, label %139

139:                                              ; preds = %135
  %140 = call ptr @decl_assembler_name(ptr noundef nonnull %29) #24
  %141 = load ptr, ptr %125, align 8, !tbaa !50
  %142 = icmp eq ptr %140, %141
  br i1 %142, label %145, label %143

143:                                              ; preds = %139
  %144 = call ptr @decl_assembler_name(ptr noundef nonnull %29) #24
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.29, ptr noundef %144, i32 noundef 0)
  br label %145

145:                                              ; preds = %143, %139, %135, %129
  %146 = getelementptr inbounds %struct.tree_decl_common, ptr %29, i64 0, i32 7
  %147 = load ptr, ptr %146, align 8, !tbaa !50
  %148 = icmp eq ptr %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %145
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.30, ptr noundef nonnull %147, i32 noundef 0)
  br label %150

150:                                              ; preds = %149, %145
  %151 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.1, ptr noundef %152, i32 noundef 0)
  %153 = getelementptr inbounds %struct.tree_decl_minimal, ptr %29, i64 0, i32 4
  %154 = load ptr, ptr %153, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.31, ptr noundef %154, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #24
  %155 = getelementptr inbounds %struct.tree_decl_minimal, ptr %29, i64 0, i32 1
  %156 = load i32, ptr %155, align 8, !tbaa !50
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %6, i32 noundef %156) #24
  %157 = load ptr, ptr %6, align 8, !tbaa.struct !79
  %158 = load i32, ptr %24, align 8, !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #24
  %159 = icmp eq ptr %157, null
  br i1 %159, label %172, label %160

160:                                              ; preds = %150
  %161 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %157, i32 noundef 47)
  %162 = icmp eq ptr %161, null
  %163 = getelementptr inbounds i8, ptr %161, i64 1
  %164 = select i1 %162, ptr %157, ptr %163
  call fastcc void @dump_maybe_newline(ptr noundef nonnull %10)
  %165 = load ptr, ptr %10, align 8, !tbaa !64
  %166 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %165, ptr noundef nonnull @.str.32, ptr noundef nonnull %164, i32 noundef %158)
  %167 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %164)
  %168 = load i32, ptr %12, align 8, !tbaa !65
  %169 = trunc i64 %167 to i32
  %170 = add i32 %169, 14
  %171 = add i32 %170, %168
  store i32 %171, ptr %12, align 8, !tbaa !65
  br label %172

172:                                              ; preds = %160, %150
  %173 = load i64, ptr %29, align 8
  %174 = and i64 %173, 65535
  %175 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %174, i64 10
  %176 = load i8, ptr %175, align 2, !tbaa !50
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %184, label %178

178:                                              ; preds = %172
  %179 = getelementptr inbounds %struct.tree_decl_common, ptr %29, i64 0, i32 2
  %180 = load i64, ptr %179, align 8
  %181 = and i64 %180, 4096
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %178
  call void @dump_string_field(ptr noundef nonnull %10, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34)
  br label %184

184:                                              ; preds = %183, %178, %172
  %185 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !50
  %187 = icmp eq ptr %186, null
  br i1 %187, label %233, label %188

188:                                              ; preds = %184
  %189 = load i32, ptr %16, align 8, !tbaa !72
  %190 = and i32 %189, 2
  %191 = icmp eq i32 %190, 0
  %192 = load ptr, ptr %17, align 8
  %193 = icmp eq ptr %192, null
  %194 = select i1 %191, i1 true, i1 %193
  br i1 %194, label %195, label %233

195:                                              ; preds = %188
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.35, ptr noundef nonnull %186, i32 noundef 0)
  br label %233

196:                                              ; preds = %123
  %197 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 32, i32 1), align 8, !tbaa !81
  %198 = call i32 %197(ptr noundef nonnull %29) #24
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %214, label %200

200:                                              ; preds = %196
  %201 = load ptr, ptr %10, align 8, !tbaa !64
  %202 = and i32 %198, 1
  %203 = icmp eq i32 %202, 0
  %204 = select i1 %203, i32 32, i32 99
  %205 = and i32 %198, 2
  %206 = icmp eq i32 %205, 0
  %207 = select i1 %206, i32 32, i32 118
  %208 = and i32 %198, 4
  %209 = icmp eq i32 %208, 0
  %210 = select i1 %209, i32 32, i32 114
  %211 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %201, ptr noundef nonnull @.str.36, i32 noundef %204, i32 noundef %207, i32 noundef %210)
  %212 = load i32, ptr %12, align 8, !tbaa !65
  %213 = add i32 %212, 14
  store i32 %213, ptr %12, align 8, !tbaa !65
  br label %214

214:                                              ; preds = %200, %196
  %215 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 12
  %216 = load ptr, ptr %215, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.28, ptr noundef %216, i32 noundef 0)
  %217 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 16
  %218 = load ptr, ptr %217, align 8, !tbaa !50
  %219 = icmp eq ptr %218, %29
  br i1 %219, label %221, label %220

220:                                              ; preds = %214
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.37, ptr noundef %218, i32 noundef 0)
  br label %221

221:                                              ; preds = %220, %214
  %222 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 2
  %223 = load ptr, ptr %222, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.38, ptr noundef %223, i32 noundef 0)
  %224 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 7
  %225 = load i32, ptr %224, align 8, !tbaa !50
  call fastcc void @dump_maybe_newline(ptr noundef nonnull %10)
  %226 = load ptr, ptr %10, align 8, !tbaa !64
  %227 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %226, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.39, i32 noundef %225)
  %228 = load i32, ptr %12, align 8, !tbaa !65
  %229 = add i32 %228, 14
  store i32 %229, ptr %12, align 8, !tbaa !65
  br label %233

230:                                              ; preds = %123
  %231 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %232 = load ptr, ptr %231, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.1, ptr noundef %232, i32 noundef 0)
  br label %233

233:                                              ; preds = %111, %111, %111, %230, %221, %195, %188, %184, %123, %117, %114, %111
  %234 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 32), align 8, !tbaa !89
  %235 = call zeroext i8 %234(ptr noundef nonnull %10, ptr noundef nonnull %29) #24
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %237, label %658

237:                                              ; preds = %233
  %238 = trunc i64 %57 to i16
  switch i16 %238, label %658 [
    i16 1, label %239
    i16 2, label %248
    i16 147, label %255
    i16 3, label %269
    i16 8, label %288
    i16 6, label %288
    i16 9, label %308
    i16 11, label %316
    i16 10, label %332
    i16 12, label %335
    i16 21, label %338
    i16 20, label %341
    i16 15, label %346
    i16 16, label %351
    i16 17, label %351
    i16 33, label %362
    i16 37, label %365
    i16 32, label %373
    i16 34, label %373
    i16 31, label %373
    i16 36, label %373
    i16 29, label %409
    i16 23, label %433
    i16 28, label %451
    i16 24, label %461
    i16 25, label %471
    i16 96, label %481
    i16 121, label %481
    i16 47, label %481
    i16 48, label %481
    i16 49, label %481
    i16 61, label %481
    i16 120, label %481
    i16 43, label %481
    i16 44, label %481
    i16 91, label %484
    i16 92, label %484
    i16 54, label %484
    i16 53, label %484
    i16 52, label %484
    i16 125, label %484
    i16 126, label %484
    i16 127, label %484
    i16 128, label %484
    i16 41, label %489
    i16 45, label %496
    i16 46, label %496
    i16 56, label %505
    i16 131, label %512
    i16 59, label %517
    i16 51, label %551
    i16 58, label %585
    i16 137, label %590
    i16 136, label %593
    i16 135, label %596
    i16 55, label %599
    i16 139, label %608
    i16 133, label %619
    i16 134, label %622
    i16 138, label %625
    i16 163, label %634
  ]

239:                                              ; preds = %237
  %240 = getelementptr inbounds %struct.tree_identifier, ptr %29, i64 0, i32 1
  %241 = load ptr, ptr %240, align 8, !tbaa !50
  call void @dump_string_field(ptr noundef nonnull %10, ptr noundef nonnull @.str.40, ptr noundef %241)
  %242 = getelementptr inbounds %struct.tree_identifier, ptr %29, i64 0, i32 1, i32 1
  %243 = load i32, ptr %242, align 8, !tbaa !50
  call fastcc void @dump_maybe_newline(ptr noundef nonnull %10)
  %244 = load ptr, ptr %10, align 8, !tbaa !64
  %245 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %244, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.41, i32 noundef %243)
  %246 = load i32, ptr %12, align 8, !tbaa !65
  %247 = add i32 %246, 14
  store i32 %247, ptr %12, align 8, !tbaa !65
  br label %658

248:                                              ; preds = %237
  %249 = getelementptr inbounds %struct.tree_list, ptr %29, i64 0, i32 1
  %250 = load ptr, ptr %249, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.42, ptr noundef %250, i32 noundef 0)
  %251 = getelementptr inbounds %struct.tree_list, ptr %29, i64 0, i32 2
  %252 = load ptr, ptr %251, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.43, ptr noundef %252, i32 noundef 0)
  %253 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.35, ptr noundef %254, i32 noundef 0)
  br label %658

255:                                              ; preds = %237
  %256 = getelementptr inbounds %struct.tree_statement_list, ptr %29, i64 0, i32 1
  %257 = load ptr, ptr %256, align 8, !tbaa !50
  %258 = icmp eq ptr %257, null
  br i1 %258, label %658, label %259

259:                                              ; preds = %255, %259
  %260 = phi ptr [ %267, %259 ], [ %257, %255 ]
  %261 = phi i32 [ %266, %259 ], [ 0, %255 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #24
  %262 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.44, i32 noundef %261)
  %263 = getelementptr inbounds %struct.tree_statement_list_node, ptr %260, i64 0, i32 2
  %264 = load ptr, ptr %263, align 8, !tbaa !90
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull %7, ptr noundef %264, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #24
  %265 = getelementptr inbounds %struct.tree_statement_list_node, ptr %260, i64 0, i32 1
  %266 = add nuw nsw i32 %261, 1
  %267 = load ptr, ptr %265, align 8, !tbaa !50
  %268 = icmp eq ptr %267, null
  br i1 %268, label %658, label %259, !llvm.loop !92

269:                                              ; preds = %237
  %270 = getelementptr inbounds %struct.tree_vec, ptr %29, i64 0, i32 1
  %271 = load i32, ptr %270, align 8, !tbaa !50
  call fastcc void @dump_maybe_newline(ptr noundef nonnull %10)
  %272 = load ptr, ptr %10, align 8, !tbaa !64
  %273 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %272, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.41, i32 noundef %271)
  %274 = load i32, ptr %12, align 8, !tbaa !65
  %275 = add i32 %274, 14
  store i32 %275, ptr %12, align 8, !tbaa !65
  %276 = load i32, ptr %270, align 8, !tbaa !50
  %277 = icmp sgt i32 %276, 0
  br i1 %277, label %278, label %658

278:                                              ; preds = %269, %278
  %279 = phi i64 [ %284, %278 ], [ 0, %269 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #24
  %280 = trunc i64 %279 to i32
  %281 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) @.str.44, i32 noundef %280)
  %282 = getelementptr inbounds %struct.tree_vec, ptr %29, i64 0, i32 2, i64 %279
  %283 = load ptr, ptr %282, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull %8, ptr noundef %283, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #24
  %284 = add nuw nsw i64 %279, 1
  %285 = load i32, ptr %270, align 8, !tbaa !50
  %286 = sext i32 %285 to i64
  %287 = icmp slt i64 %284, %286
  br i1 %287, label %278, label %658, !llvm.loop !93

288:                                              ; preds = %237, %237
  %289 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 6
  %290 = load i32, ptr %289, align 4
  %291 = and i32 %290, 1023
  call fastcc void @dump_maybe_newline(ptr noundef nonnull %10)
  %292 = load ptr, ptr %10, align 8, !tbaa !64
  %293 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %292, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.45, i32 noundef %291)
  %294 = load i32, ptr %12, align 8, !tbaa !65
  %295 = add i32 %294, 14
  store i32 %295, ptr %12, align 8, !tbaa !65
  %296 = load i64, ptr %29, align 8
  %297 = and i64 %296, 2097152
  %298 = icmp eq i64 %297, 0
  %299 = select i1 %298, ptr @.str.48, ptr @.str.47
  call void @dump_string_field(ptr noundef nonnull %10, ptr noundef nonnull @.str.46, ptr noundef nonnull %299)
  %300 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 13
  %301 = load ptr, ptr %300, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.49, ptr noundef %301, i32 noundef 0)
  %302 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 14
  %303 = load ptr, ptr %302, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.50, ptr noundef %303, i32 noundef 0)
  %304 = icmp eq i64 %58, 6
  br i1 %304, label %305, label %658

305:                                              ; preds = %288
  %306 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 1
  %307 = load ptr, ptr %306, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.51, ptr noundef %307, i32 noundef 0)
  br label %658

308:                                              ; preds = %237
  %309 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 6
  %310 = load i32, ptr %309, align 4
  %311 = and i32 %310, 1023
  call fastcc void @dump_maybe_newline(ptr noundef nonnull %10)
  %312 = load ptr, ptr %10, align 8, !tbaa !64
  %313 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %312, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.45, i32 noundef %311)
  %314 = load i32, ptr %12, align 8, !tbaa !65
  %315 = add i32 %314, 14
  store i32 %315, ptr %12, align 8, !tbaa !65
  br label %658

316:                                              ; preds = %237
  %317 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 6
  %318 = load i32, ptr %317, align 4
  %319 = and i32 %318, 1023
  call fastcc void @dump_maybe_newline(ptr noundef nonnull %10)
  %320 = load ptr, ptr %10, align 8, !tbaa !64
  %321 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %320, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.45, i32 noundef %319)
  %322 = load i32, ptr %12, align 8, !tbaa !65
  %323 = add i32 %322, 14
  store i32 %323, ptr %12, align 8, !tbaa !65
  %324 = load i64, ptr %29, align 8
  %325 = and i64 %324, 2097152
  %326 = icmp eq i64 %325, 0
  %327 = select i1 %326, ptr @.str.48, ptr @.str.47
  call void @dump_string_field(ptr noundef nonnull %10, ptr noundef nonnull @.str.46, ptr noundef nonnull %327)
  %328 = load i64, ptr %29, align 8
  %329 = and i64 %328, 2147483648
  %330 = icmp eq i64 %329, 0
  %331 = select i1 %330, ptr @.str.53, ptr @.str.52
  call void @dump_string_field(ptr noundef nonnull %10, ptr noundef nonnull @.str.52, ptr noundef nonnull %331)
  br label %658

332:                                              ; preds = %237
  %333 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %334 = load ptr, ptr %333, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.54, ptr noundef %334, i32 noundef 0)
  br label %658

335:                                              ; preds = %237
  %336 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %337 = load ptr, ptr %336, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.55, ptr noundef %337, i32 noundef 0)
  br label %658

338:                                              ; preds = %237
  %339 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 14
  %340 = load ptr, ptr %339, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.56, ptr noundef %340, i32 noundef 0)
  br label %341

341:                                              ; preds = %338, %237
  %342 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %343 = load ptr, ptr %342, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.57, ptr noundef %343, i32 noundef 0)
  %344 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 1
  %345 = load ptr, ptr %344, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.58, ptr noundef %345, i32 noundef 0)
  br label %658

346:                                              ; preds = %237
  %347 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %348 = load ptr, ptr %347, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.59, ptr noundef %348, i32 noundef 0)
  %349 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 1
  %350 = load ptr, ptr %349, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.60, ptr noundef %350, i32 noundef 0)
  br label %658

351:                                              ; preds = %237, %237
  %352 = load i64, ptr %29, align 8
  %353 = and i64 %352, 65535
  %354 = icmp eq i64 %353, 16
  %355 = select i1 %354, ptr @.str.62, ptr @.str.63
  call void @dump_string_field(ptr noundef nonnull %10, ptr noundef nonnull @.str.61, ptr noundef nonnull %355)
  %356 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 1
  %357 = load ptr, ptr %356, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.64, ptr noundef %357, i32 noundef 0)
  %358 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 14
  %359 = load ptr, ptr %358, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.65, ptr noundef %359, i32 noundef 0)
  %360 = getelementptr inbounds %struct.tree_type, ptr %29, i64 0, i32 17
  %361 = load ptr, ptr %360, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.25, ptr noundef %361, i32 noundef 1)
  br label %658

362:                                              ; preds = %237
  %363 = getelementptr inbounds %struct.tree_decl_common, ptr %29, i64 0, i32 5
  %364 = load ptr, ptr %363, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.66, ptr noundef %364, i32 noundef 0)
  br label %658

365:                                              ; preds = %237
  %366 = getelementptr inbounds %struct.tree_decl_minimal, ptr %29, i64 0, i32 2
  %367 = load i32, ptr %366, align 4, !tbaa !50
  %368 = sub i32 0, %367
  call fastcc void @dump_maybe_newline(ptr noundef nonnull %10)
  %369 = load ptr, ptr %10, align 8, !tbaa !64
  %370 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %369, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.67, i32 noundef %368)
  %371 = load i32, ptr %12, align 8, !tbaa !65
  %372 = add i32 %371, 14
  store i32 %372, ptr %12, align 8, !tbaa !65
  br label %373

373:                                              ; preds = %237, %237, %237, %365, %237
  %374 = load i64, ptr %29, align 8
  %375 = and i64 %374, 65535
  %376 = icmp eq i64 %375, 34
  %377 = getelementptr inbounds %struct.tree_decl_common, ptr %29, i64 0, i32 5
  %378 = load ptr, ptr %377, align 8, !tbaa !50
  %379 = select i1 %376, ptr @.str.68, ptr @.str.69
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull %379, ptr noundef %378, i32 noundef 0)
  %380 = getelementptr inbounds %struct.tree_decl_common, ptr %29, i64 0, i32 1
  %381 = load ptr, ptr %380, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.38, ptr noundef %381, i32 noundef 0)
  %382 = getelementptr inbounds %struct.tree_decl_common, ptr %29, i64 0, i32 3
  %383 = load i32, ptr %382, align 8, !tbaa !50
  call fastcc void @dump_maybe_newline(ptr noundef nonnull %10)
  %384 = load ptr, ptr %10, align 8, !tbaa !64
  %385 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %384, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.39, i32 noundef %383)
  %386 = load i32, ptr %12, align 8, !tbaa !65
  %387 = add i32 %386, 14
  store i32 %387, ptr %12, align 8, !tbaa !65
  %388 = load i64, ptr %29, align 8
  %389 = trunc i64 %388 to i16
  switch i16 %389, label %658 [
    i16 31, label %390
    i16 32, label %396
    i16 34, label %396
  ]

390:                                              ; preds = %373
  %391 = getelementptr inbounds %struct.tree_field_decl, ptr %29, i64 0, i32 1
  %392 = load ptr, ptr %391, align 8, !tbaa !50
  %393 = icmp eq ptr %392, null
  br i1 %393, label %658, label %394

394:                                              ; preds = %390
  %395 = call ptr @bit_position(ptr noundef %29) #24
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.70, ptr noundef %395, i32 noundef 0)
  br label %658

396:                                              ; preds = %373, %373
  %397 = trunc i64 %388 to i32
  %398 = lshr i32 %397, 24
  %399 = and i32 %398, 1
  call fastcc void @dump_maybe_newline(ptr noundef nonnull %10)
  %400 = load ptr, ptr %10, align 8, !tbaa !64
  %401 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %400, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.71, i32 noundef %399)
  %402 = load i32, ptr %12, align 8, !tbaa !65
  %403 = add i32 %402, 14
  store i32 %403, ptr %12, align 8, !tbaa !65
  %404 = getelementptr inbounds %struct.tree_decl_common, ptr %29, i64 0, i32 2
  %405 = load i64, ptr %404, align 8
  %406 = and i64 %405, 16777216
  %407 = icmp eq i64 %406, 0
  br i1 %407, label %658, label %408

408:                                              ; preds = %396
  call void @dump_string_field(ptr noundef nonnull %10, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.72)
  br label %658

409:                                              ; preds = %237
  %410 = getelementptr inbounds %struct.tree_decl_non_common, ptr %29, i64 0, i32 2
  %411 = load ptr, ptr %410, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.73, ptr noundef %411, i32 noundef 0)
  %412 = getelementptr inbounds %struct.tree_decl_common, ptr %29, i64 0, i32 2
  %413 = load i64, ptr %412, align 8
  %414 = and i64 %413, 33554432
  %415 = icmp eq i64 %414, 0
  br i1 %415, label %417, label %416

416:                                              ; preds = %409
  call void @dump_string_field(ptr noundef nonnull %10, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75)
  br label %417

417:                                              ; preds = %416, %409
  %418 = load i64, ptr %29, align 8
  %419 = and i64 %418, 134217728
  %420 = icmp eq i64 %419, 0
  %421 = select i1 %420, ptr @.str.78, ptr @.str.77
  call void @dump_string_field(ptr noundef nonnull %10, ptr noundef nonnull @.str.76, ptr noundef nonnull %421)
  %422 = getelementptr inbounds %struct.tree_decl_non_common, ptr %29, i64 0, i32 1
  %423 = load ptr, ptr %422, align 8, !tbaa !50
  %424 = icmp eq ptr %423, null
  br i1 %424, label %658, label %425

425:                                              ; preds = %417
  %426 = load i32, ptr %16, align 8, !tbaa !72
  %427 = and i32 %426, 2
  %428 = icmp eq i32 %427, 0
  %429 = load ptr, ptr %17, align 8
  %430 = icmp eq ptr %429, %29
  %431 = select i1 %428, i1 true, i1 %430
  br i1 %431, label %432, label %658

432:                                              ; preds = %425
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.74, ptr noundef nonnull %423, i32 noundef 0)
  br label %658

433:                                              ; preds = %237
  %434 = getelementptr inbounds %struct.tree_int_cst, ptr %29, i64 0, i32 1
  %435 = getelementptr inbounds %struct.tree_int_cst, ptr %29, i64 0, i32 1, i32 1
  %436 = load i64, ptr %435, align 8, !tbaa !50
  %437 = icmp eq i64 %436, 0
  br i1 %437, label %444, label %438

438:                                              ; preds = %433
  %439 = trunc i64 %436 to i32
  call fastcc void @dump_maybe_newline(ptr noundef nonnull %10)
  %440 = load ptr, ptr %10, align 8, !tbaa !64
  %441 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %440, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.79, i32 noundef %439)
  %442 = load i32, ptr %12, align 8, !tbaa !65
  %443 = add i32 %442, 14
  store i32 %443, ptr %12, align 8, !tbaa !65
  br label %444

444:                                              ; preds = %438, %433
  %445 = load i64, ptr %434, align 8, !tbaa !50
  %446 = trunc i64 %445 to i32
  call fastcc void @dump_maybe_newline(ptr noundef nonnull %10)
  %447 = load ptr, ptr %10, align 8, !tbaa !64
  %448 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %447, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.80, i32 noundef %446)
  %449 = load i32, ptr %12, align 8, !tbaa !65
  %450 = add i32 %449, 14
  store i32 %450, ptr %12, align 8, !tbaa !65
  br label %658

451:                                              ; preds = %237
  %452 = load ptr, ptr %10, align 8, !tbaa !64
  %453 = getelementptr inbounds %struct.tree_string, ptr %29, i64 0, i32 2
  %454 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %452, ptr noundef nonnull @.str.81, ptr noundef nonnull %453)
  %455 = getelementptr inbounds %struct.tree_string, ptr %29, i64 0, i32 1
  %456 = load i32, ptr %455, align 8, !tbaa !50
  call fastcc void @dump_maybe_newline(ptr noundef nonnull %10)
  %457 = load ptr, ptr %10, align 8, !tbaa !64
  %458 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %457, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.41, i32 noundef %456)
  %459 = load i32, ptr %12, align 8, !tbaa !65
  %460 = add i32 %459, 14
  store i32 %460, ptr %12, align 8, !tbaa !65
  br label %658

461:                                              ; preds = %237
  %462 = getelementptr inbounds %struct.tree_real_cst, ptr %29, i64 0, i32 1
  %463 = load ptr, ptr %462, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  call void @real_to_decimal(ptr noundef nonnull %4, ptr noundef %463, i64 noundef 32, i64 noundef 0, i32 noundef 1) #24
  call fastcc void @dump_maybe_newline(ptr noundef nonnull %10)
  %464 = load ptr, ptr %10, align 8, !tbaa !64
  %465 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %464, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.43, ptr noundef nonnull %4)
  %466 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4)
  %467 = load i32, ptr %12, align 8, !tbaa !65
  %468 = trunc i64 %466 to i32
  %469 = add i32 %468, 7
  %470 = add i32 %469, %467
  store i32 %470, ptr %12, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  br label %658

471:                                              ; preds = %237
  %472 = getelementptr inbounds %struct.tree_fixed_cst, ptr %29, i64 0, i32 1
  %473 = load ptr, ptr %472, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  call void @fixed_to_decimal(ptr noundef nonnull %5, ptr noundef %473, i64 noundef 32) #24
  call fastcc void @dump_maybe_newline(ptr noundef nonnull %10)
  %474 = load ptr, ptr %10, align 8, !tbaa !64
  %475 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %474, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.43, ptr noundef nonnull %5)
  %476 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5)
  %477 = load i32, ptr %12, align 8, !tbaa !65
  %478 = trunc i64 %476 to i32
  %479 = add i32 %478, 7
  %480 = add i32 %479, %477
  store i32 %480, ptr %12, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  br label %658

481:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  %482 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  %483 = load ptr, ptr %482, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.26, ptr noundef %483, i32 noundef 0)
  br label %658

484:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  %485 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  %486 = load ptr, ptr %485, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.26, ptr noundef %486, i32 noundef 0)
  %487 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 1
  %488 = load ptr, ptr %487, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.27, ptr noundef %488, i32 noundef 0)
  br label %658

489:                                              ; preds = %237
  %490 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  %491 = load ptr, ptr %490, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.26, ptr noundef %491, i32 noundef 0)
  %492 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 1
  %493 = load ptr, ptr %492, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.27, ptr noundef %493, i32 noundef 0)
  %494 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 1, i32 0, i32 1
  %495 = load ptr, ptr %494, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.82, ptr noundef %495, i32 noundef 0)
  br label %658

496:                                              ; preds = %237, %237
  %497 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  %498 = load ptr, ptr %497, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.26, ptr noundef %498, i32 noundef 0)
  %499 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 1
  %500 = load ptr, ptr %499, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.27, ptr noundef %500, i32 noundef 0)
  %501 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 1, i32 0, i32 1
  %502 = load ptr, ptr %501, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.82, ptr noundef %502, i32 noundef 0)
  %503 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 1, i32 0, i32 2
  %504 = load ptr, ptr %503, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.83, ptr noundef %504, i32 noundef 0)
  br label %658

505:                                              ; preds = %237
  %506 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  %507 = load ptr, ptr %506, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.26, ptr noundef %507, i32 noundef 0)
  %508 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 1
  %509 = load ptr, ptr %508, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.27, ptr noundef %509, i32 noundef 0)
  %510 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 1, i32 0, i32 1
  %511 = load ptr, ptr %510, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.82, ptr noundef %511, i32 noundef 0)
  br label %658

512:                                              ; preds = %237
  %513 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  %514 = load ptr, ptr %513, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.26, ptr noundef %514, i32 noundef 0)
  %515 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 1
  %516 = load ptr, ptr %515, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.27, ptr noundef %516, i32 noundef 0)
  br label %658

517:                                              ; preds = %237
  %518 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 1
  %519 = load ptr, ptr %518, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.84, ptr noundef %519, i32 noundef 0)
  %520 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  %521 = load ptr, ptr %520, align 8, !tbaa !50
  %522 = getelementptr inbounds %struct.tree_int_cst, ptr %521, i64 0, i32 1
  %523 = load i64, ptr %522, align 8, !tbaa !50
  %524 = trunc i64 %523 to i32
  %525 = add nsw i32 %524, -3
  %526 = icmp sgt i32 %524, 3
  br i1 %526, label %527, label %530

527:                                              ; preds = %517
  %528 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3, i64 3
  %529 = load ptr, ptr %528, align 8, !tbaa !50
  br label %530

530:                                              ; preds = %527, %517
  %531 = phi i32 [ 1, %527 ], [ 0, %517 ]
  %532 = phi ptr [ %529, %527 ], [ null, %517 ]
  %533 = icmp eq ptr %532, null
  br i1 %533, label %658, label %534

534:                                              ; preds = %530, %547
  %535 = phi ptr [ %549, %547 ], [ %532, %530 ]
  %536 = phi i32 [ %539, %547 ], [ 0, %530 ]
  %537 = phi i32 [ %548, %547 ], [ %531, %530 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #24
  %538 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) @.str.44, i32 noundef %536)
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %535, i32 noundef 0)
  %539 = add nuw nsw i32 %536, 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #24
  %540 = icmp slt i32 %537, %525
  br i1 %540, label %541, label %547

541:                                              ; preds = %534
  %542 = add nsw i32 %537, 3
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3, i64 %543
  %545 = load ptr, ptr %544, align 8, !tbaa !50
  %546 = add nsw i32 %537, 1
  br label %547

547:                                              ; preds = %541, %534
  %548 = phi i32 [ %546, %541 ], [ %537, %534 ]
  %549 = phi ptr [ %545, %541 ], [ null, %534 ]
  %550 = icmp eq ptr %549, null
  br i1 %550, label %658, label %534, !llvm.loop !94

551:                                              ; preds = %237
  %552 = getelementptr inbounds %struct.tree_constructor, ptr %29, i64 0, i32 1
  %553 = load ptr, ptr %552, align 8, !tbaa !50
  %554 = icmp eq ptr %553, null
  br i1 %554, label %557, label %555

555:                                              ; preds = %551
  %556 = load i32, ptr %553, align 8, !tbaa !95
  br label %557

557:                                              ; preds = %555, %551
  %558 = phi i32 [ %556, %555 ], [ 0, %551 ]
  call fastcc void @dump_maybe_newline(ptr noundef nonnull %10)
  %559 = load ptr, ptr %10, align 8, !tbaa !64
  %560 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %559, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.41, i32 noundef %558)
  %561 = load i32, ptr %12, align 8, !tbaa !65
  %562 = add i32 %561, 14
  store i32 %562, ptr %12, align 8, !tbaa !65
  br label %563

563:                                              ; preds = %583, %557
  %564 = phi i64 [ 0, %557 ], [ %584, %583 ]
  %565 = phi ptr [ undef, %557 ], [ %581, %583 ]
  %566 = phi ptr [ undef, %557 ], [ %582, %583 ]
  %567 = load ptr, ptr %552, align 8, !tbaa !50
  %568 = icmp eq ptr %567, null
  br i1 %568, label %571, label %569

569:                                              ; preds = %563
  %570 = load i32, ptr %567, align 8, !tbaa !95
  br label %571

571:                                              ; preds = %569, %563
  %572 = phi i32 [ %570, %569 ], [ 0, %563 ]
  %573 = zext i32 %572 to i64
  %574 = icmp ult i64 %564, %573
  br i1 %574, label %575, label %580

575:                                              ; preds = %571
  %576 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %567, i64 0, i32 2, i64 %564
  %577 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %567, i64 0, i32 2, i64 %564, i32 1
  %578 = load ptr, ptr %577, align 8, !tbaa !97
  %579 = load ptr, ptr %576, align 8, !tbaa !99
  br label %580

580:                                              ; preds = %575, %571
  %581 = phi ptr [ %565, %571 ], [ %579, %575 ]
  %582 = phi ptr [ %566, %571 ], [ %578, %575 ]
  br i1 %574, label %583, label %658

583:                                              ; preds = %580
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.85, ptr noundef %581, i32 noundef 0)
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.86, ptr noundef %582, i32 noundef 0)
  %584 = add nuw nsw i64 %564, 1
  br label %563, !llvm.loop !100

585:                                              ; preds = %237
  %586 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  %587 = load ptr, ptr %586, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.87, ptr noundef %587, i32 noundef 0)
  %588 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 1
  %589 = load ptr, ptr %588, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.74, ptr noundef %589, i32 noundef 0)
  br label %658

590:                                              ; preds = %237
  %591 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  %592 = load ptr, ptr %591, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.74, ptr noundef %592, i32 noundef 0)
  br label %658

593:                                              ; preds = %237
  %594 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  %595 = load ptr, ptr %594, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.88, ptr noundef %595, i32 noundef 0)
  br label %658

596:                                              ; preds = %237
  %597 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  %598 = load ptr, ptr %597, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.89, ptr noundef %598, i32 noundef 0)
  br label %658

599:                                              ; preds = %237
  %600 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  %601 = load ptr, ptr %600, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.90, ptr noundef %601, i32 noundef 0)
  %602 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 1
  %603 = load ptr, ptr %602, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.69, ptr noundef %603, i32 noundef 0)
  %604 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 1, i32 0, i32 1
  %605 = load ptr, ptr %604, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.91, ptr noundef %605, i32 noundef 0)
  %606 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 1, i32 0, i32 2
  %607 = load ptr, ptr %606, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.69, ptr noundef %607, i32 noundef 0)
  br label %658

608:                                              ; preds = %237
  %609 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  %610 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 1, i32 0, i32 1
  %611 = load ptr, ptr %610, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.28, ptr noundef %611, i32 noundef 0)
  %612 = load ptr, ptr %609, align 8, !tbaa !50
  %613 = icmp eq ptr %612, null
  br i1 %613, label %658, label %614

614:                                              ; preds = %608
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.92, ptr noundef nonnull %612, i32 noundef 0)
  %615 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 1
  %616 = load ptr, ptr %615, align 8, !tbaa !50
  %617 = icmp eq ptr %616, null
  br i1 %617, label %658, label %618

618:                                              ; preds = %614
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.79, ptr noundef nonnull %616, i32 noundef 0)
  br label %658

619:                                              ; preds = %237
  %620 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  %621 = load ptr, ptr %620, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.28, ptr noundef %621, i32 noundef 0)
  br label %658

622:                                              ; preds = %237
  %623 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  %624 = load ptr, ptr %623, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.93, ptr noundef %624, i32 noundef 0)
  br label %658

625:                                              ; preds = %237
  %626 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  %627 = load ptr, ptr %626, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.88, ptr noundef %627, i32 noundef 0)
  %628 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 1
  %629 = load ptr, ptr %628, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.74, ptr noundef %629, i32 noundef 0)
  %630 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 1, i32 0, i32 1
  %631 = load ptr, ptr %630, align 8, !tbaa !50
  %632 = icmp eq ptr %631, null
  br i1 %632, label %658, label %633

633:                                              ; preds = %625
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.93, ptr noundef nonnull %631, i32 noundef 0)
  br label %658

634:                                              ; preds = %237
  %635 = load ptr, ptr %10, align 8, !tbaa !64
  %636 = getelementptr inbounds %struct.tree_omp_clause, ptr %29, i64 0, i32 2
  %637 = load i32, ptr %636, align 4, !tbaa !50
  %638 = zext i32 %637 to i64
  %639 = getelementptr inbounds [0 x ptr], ptr @omp_clause_code_name, i64 0, i64 %638
  %640 = load ptr, ptr %639, align 8, !tbaa !39
  %641 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %635, ptr noundef nonnull @.str.94, ptr noundef %640)
  %642 = load i32, ptr %636, align 4, !tbaa !50
  %643 = zext i32 %642 to i64
  %644 = getelementptr inbounds [0 x i8], ptr @omp_clause_num_ops, i64 0, i64 %643
  %645 = load i8, ptr %644, align 1, !tbaa !50
  %646 = icmp eq i8 %645, 0
  br i1 %646, label %658, label %647

647:                                              ; preds = %634, %647
  %648 = phi i64 [ %651, %647 ], [ 0, %634 ]
  %649 = getelementptr inbounds %struct.tree_omp_clause, ptr %29, i64 0, i32 6, i64 %648
  %650 = load ptr, ptr %649, align 8, !tbaa !50
  call void @queue_and_dump_index(ptr noundef nonnull %10, ptr noundef nonnull @.str.95, ptr noundef %650, i32 noundef 0)
  %651 = add nuw nsw i64 %648, 1
  %652 = load i32, ptr %636, align 4, !tbaa !50
  %653 = zext i32 %652 to i64
  %654 = getelementptr inbounds [0 x i8], ptr @omp_clause_num_ops, i64 0, i64 %653
  %655 = load i8, ptr %654, align 1, !tbaa !50
  %656 = zext i8 %655 to i64
  %657 = icmp ult i64 %651, %656
  br i1 %657, label %647, label %658, !llvm.loop !101

658:                                              ; preds = %89, %647, %580, %547, %278, %259, %634, %530, %269, %255, %396, %237, %633, %625, %622, %619, %618, %614, %608, %599, %596, %593, %590, %585, %512, %505, %496, %489, %484, %481, %471, %461, %451, %444, %432, %425, %417, %408, %394, %390, %373, %362, %351, %346, %341, %335, %332, %316, %308, %305, %288, %248, %239, %233
  %659 = load i32, ptr %16, align 8, !tbaa !72
  %660 = and i32 %659, 1
  %661 = icmp eq i32 %660, 0
  %662 = load ptr, ptr %17, align 8
  %663 = icmp eq ptr %662, null
  %664 = select i1 %661, i1 true, i1 %663
  br i1 %664, label %670, label %665

665:                                              ; preds = %658
  call fastcc void @dump_maybe_newline(ptr noundef nonnull %10)
  %666 = load ptr, ptr %10, align 8, !tbaa !64
  %667 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %666, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.96, i64 noundef %28)
  %668 = load i32, ptr %12, align 8, !tbaa !65
  %669 = add i32 %668, 15
  store i32 %669, ptr %12, align 8, !tbaa !65
  br label %670

670:                                              ; preds = %658, %665
  %671 = load ptr, ptr %10, align 8, !tbaa !64
  %672 = call i32 @fputc(i32 10, ptr %671)
  %673 = load ptr, ptr %13, align 8, !tbaa !74
  %674 = icmp eq ptr %673, null
  br i1 %674, label %675, label %25, !llvm.loop !102

675:                                              ; preds = %670, %3
  %676 = load ptr, ptr %15, align 8, !tbaa !67
  %677 = icmp eq ptr %676, null
  br i1 %677, label %683, label %678

678:                                              ; preds = %675, %678
  %679 = phi ptr [ %681, %678 ], [ %676, %675 ]
  %680 = getelementptr inbounds %struct.dump_queue, ptr %679, i64 0, i32 1
  %681 = load ptr, ptr %680, align 8, !tbaa !68
  call void @free(ptr noundef %679)
  %682 = icmp eq ptr %681, null
  br i1 %682, label %683, label %678, !llvm.loop !103

683:                                              ; preds = %678, %675
  %684 = load ptr, ptr %19, align 8, !tbaa !58
  call void @splay_tree_delete(ptr noundef %684) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #24
  ret void
}

declare ptr @splay_tree_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @splay_tree_compare_pointers(i64 noundef, i64 noundef) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #13

declare void @splay_tree_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @dump_register(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #14 !prof !104 {
  %5 = load i32, ptr @dump_register.next_dump, align 4, !tbaa !54
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @dump_register.next_dump, align 4, !tbaa !54
  %7 = load i64, ptr @extra_dump_files_in_use, align 8, !tbaa !105
  %8 = add i64 %7, 1
  store i64 %8, ptr @extra_dump_files_in_use, align 8, !tbaa !105
  %9 = load i64, ptr @extra_dump_files_alloced, align 8, !tbaa !105
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %18, label %11, !prof !106

11:                                               ; preds = %4
  %12 = icmp eq i64 %9, 0
  %13 = shl i64 %9, 1
  %14 = select i1 %12, i64 32, i64 %13, !prof !107
  store i64 %14, ptr @extra_dump_files_alloced, align 8, !tbaa !105
  %15 = load ptr, ptr @extra_dump_files, align 8, !tbaa !39
  %16 = mul i64 %14, 40
  %17 = tail call ptr @xrealloc(ptr noundef %15, i64 noundef %16) #24
  store ptr %17, ptr @extra_dump_files, align 8, !tbaa !39
  br label %18

18:                                               ; preds = %11, %4
  %19 = load ptr, ptr @extra_dump_files, align 8, !tbaa !39
  %20 = getelementptr inbounds %struct.dump_file_info, ptr %19, i64 %7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %20, i8 0, i64 40, i1 false)
  store ptr %0, ptr %20, align 8, !tbaa !108
  %21 = getelementptr inbounds %struct.dump_file_info, ptr %19, i64 %7, i32 1
  store ptr %1, ptr %21, align 8, !tbaa !110
  %22 = getelementptr inbounds %struct.dump_file_info, ptr %19, i64 %7, i32 2
  store ptr %2, ptr %22, align 8, !tbaa !111
  %23 = getelementptr inbounds %struct.dump_file_info, ptr %19, i64 %7, i32 3
  store i32 %3, ptr %23, align 8, !tbaa !112
  %24 = getelementptr inbounds %struct.dump_file_info, ptr %19, i64 %7, i32 5
  store i32 %5, ptr %24, align 8, !tbaa !113
  %25 = trunc i64 %7 to i32
  %26 = add i32 %25, 11
  ret i32 %26
}

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @get_dump_file_info(i32 noundef %0) local_unnamed_addr #16 !prof !114 {
  %2 = icmp slt i32 %0, 11
  br i1 %2, label %3, label %6, !prof !115

3:                                                ; preds = %1
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [11 x %struct.dump_file_info], ptr @dump_files, i64 0, i64 %4
  br label %14

6:                                                ; preds = %1
  %7 = add nsw i32 %0, -11
  %8 = zext nneg i32 %7 to i64
  %9 = load i64, ptr @extra_dump_files_in_use, align 8, !tbaa !105
  %10 = icmp ugt i64 %9, %8
  br i1 %10, label %11, label %14, !prof !116

11:                                               ; preds = %6
  %12 = load ptr, ptr @extra_dump_files, align 8, !tbaa !39
  %13 = getelementptr inbounds %struct.dump_file_info, ptr %12, i64 %8
  br label %14

14:                                               ; preds = %6, %11, %3
  %15 = phi ptr [ %5, %3 ], [ %13, %11 ], [ null, %6 ]
  ret ptr %15
}

; Function Attrs: nounwind uwtable
define dso_local ptr @get_dump_file_name(i32 noundef %0) local_unnamed_addr #14 !prof !117 {
  %2 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %2) #24
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %43, label %4, !prof !118

4:                                                ; preds = %1
  %5 = icmp slt i32 %0, 11
  br i1 %5, label %6, label %9, !prof !118

6:                                                ; preds = %4
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds [11 x %struct.dump_file_info], ptr @dump_files, i64 0, i64 %7
  br label %17

9:                                                ; preds = %4
  %10 = add nsw i32 %0, -11
  %11 = zext nneg i32 %10 to i64
  %12 = load i64, ptr @extra_dump_files_in_use, align 8, !tbaa !105
  %13 = icmp ugt i64 %12, %11
  br i1 %13, label %14, label %17, !prof !119

14:                                               ; preds = %9
  %15 = load ptr, ptr @extra_dump_files, align 8, !tbaa !39
  %16 = getelementptr inbounds %struct.dump_file_info, ptr %15, i64 %11
  br label %17

17:                                               ; preds = %6, %9, %14
  %18 = phi ptr [ %8, %6 ], [ %16, %14 ], [ null, %9 ]
  %19 = getelementptr inbounds %struct.dump_file_info, ptr %18, i64 0, i32 4
  %20 = load i32, ptr %19, align 4, !tbaa !120
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %43, label %22, !prof !119

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.dump_file_info, ptr %18, i64 0, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !113
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i8 0, ptr %2, align 1, !tbaa !50
  br label %39

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.dump_file_info, ptr %18, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !112
  %30 = and i32 %29, 512
  %31 = icmp eq i32 %30, 0
  %32 = and i32 %29, 2048
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 114, i32 105
  %35 = select i1 %31, i32 %34, i32 116
  %36 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %2, i64 noundef 10, ptr noundef nonnull @.str.6, i32 noundef %24, i32 noundef %35)
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  store i8 0, ptr %2, align 1, !tbaa !50
  br label %39

39:                                               ; preds = %27, %38, %26
  %40 = load ptr, ptr @dump_base_name, align 8, !tbaa !39
  %41 = load ptr, ptr %18, align 8, !tbaa !108
  %42 = call ptr (ptr, ...) @concat(ptr noundef %40, ptr noundef nonnull %2, ptr noundef %41, ptr noundef null) #24
  br label %43

43:                                               ; preds = %17, %1, %39
  %44 = phi ptr [ %42, %39 ], [ null, %1 ], [ null, %17 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %2) #24
  ret ptr %44
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @concat(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @dump_begin(i32 noundef %0, ptr noundef writeonly %1) local_unnamed_addr #14 !prof !121 {
  switch i32 %0, label %24 [
    i32 0, label %73
    i32 8, label %11
  ], !prof !122

3:                                                ; preds = %11
  %4 = add nuw nsw i64 %12, 1
  %5 = icmp eq i64 %4, 11
  br i1 %5, label %6, label %11, !llvm.loop !123

6:                                                ; preds = %3
  %7 = load i64, ptr @extra_dump_files_in_use, align 8, !tbaa !105
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %73, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr @extra_dump_files, align 8, !tbaa !39
  br label %19

11:                                               ; preds = %2, %3
  %12 = phi i64 [ %4, %3 ], [ 1, %2 ]
  %13 = getelementptr inbounds [11 x %struct.dump_file_info], ptr @dump_files, i64 0, i64 %12, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !120
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %3, label %41

16:                                               ; preds = %19
  %17 = add nuw i64 %20, 1
  %18 = icmp eq i64 %17, %7
  br i1 %18, label %73, label %19, !llvm.loop !124

19:                                               ; preds = %16, %9
  %20 = phi i64 [ 0, %9 ], [ %17, %16 ]
  %21 = getelementptr inbounds %struct.dump_file_info, ptr %10, i64 %20, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !120
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %16, label %41

24:                                               ; preds = %2
  %25 = icmp slt i32 %0, 11
  br i1 %25, label %26, label %29, !prof !125

26:                                               ; preds = %24
  %27 = sext i32 %0 to i64
  %28 = getelementptr inbounds [11 x %struct.dump_file_info], ptr @dump_files, i64 0, i64 %27
  br label %36

29:                                               ; preds = %24
  %30 = add nsw i32 %0, -11
  %31 = zext nneg i32 %30 to i64
  %32 = load i64, ptr @extra_dump_files_in_use, align 8, !tbaa !105
  %33 = icmp ugt i64 %32, %31
  tail call void @llvm.assume(i1 %33)
  %34 = load ptr, ptr @extra_dump_files, align 8, !tbaa !39
  %35 = getelementptr inbounds %struct.dump_file_info, ptr %34, i64 %31
  br label %36

36:                                               ; preds = %29, %26
  %37 = phi ptr [ %28, %26 ], [ %35, %29 ]
  %38 = getelementptr inbounds %struct.dump_file_info, ptr %37, i64 0, i32 4
  %39 = load i32, ptr %38, align 4, !tbaa !120
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %73, label %41, !prof !126

41:                                               ; preds = %11, %19, %36
  %42 = tail call ptr @get_dump_file_name(i32 noundef %0)
  %43 = icmp slt i32 %0, 11
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = sext i32 %0 to i64
  %46 = getelementptr inbounds [11 x %struct.dump_file_info], ptr @dump_files, i64 0, i64 %45
  br label %55

47:                                               ; preds = %41
  %48 = add nsw i32 %0, -11
  %49 = zext nneg i32 %48 to i64
  %50 = load i64, ptr @extra_dump_files_in_use, align 8, !tbaa !105
  %51 = icmp ugt i64 %50, %49
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load ptr, ptr @extra_dump_files, align 8, !tbaa !39
  %54 = getelementptr inbounds %struct.dump_file_info, ptr %53, i64 %49
  br label %55

55:                                               ; preds = %44, %47, %52
  %56 = phi ptr [ %46, %44 ], [ %54, %52 ], [ null, %47 ]
  %57 = getelementptr inbounds %struct.dump_file_info, ptr %56, i64 0, i32 4
  %58 = load i32, ptr %57, align 4, !tbaa !120
  %59 = icmp slt i32 %58, 0
  %60 = select i1 %59, ptr @.str.7, ptr @.str.8
  %61 = tail call ptr @fopen_unlocked(ptr noundef %42, ptr noundef nonnull %60) #24
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = tail call ptr @__errno_location() #24
  %65 = load i32, ptr %64, align 4, !tbaa !54
  %66 = tail call ptr @strerror(i32 noundef %65) #24
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.9, ptr noundef %42, ptr noundef %66) #24
  br label %68

67:                                               ; preds = %55
  store i32 1, ptr %57, align 4, !tbaa !120
  br label %68

68:                                               ; preds = %67, %63
  tail call void @free(ptr noundef %42)
  %69 = icmp eq ptr %1, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.dump_file_info, ptr %56, i64 0, i32 3
  %72 = load i32, ptr %71, align 8, !tbaa !112
  store i32 %72, ptr %1, align 4, !tbaa !54
  br label %73

73:                                               ; preds = %16, %6, %2, %68, %70, %36
  %74 = phi ptr [ null, %36 ], [ null, %2 ], [ %61, %70 ], [ %61, %68 ], [ null, %6 ], [ null, %16 ]
  ret ptr %74
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: write) uwtable
define dso_local i32 @dump_enabled_p(i32 noundef %0) local_unnamed_addr #17 !prof !38 {
  %2 = icmp eq i32 %0, 8
  br i1 %2, label %11, label %24, !prof !127

3:                                                ; preds = %11
  %4 = add nuw nsw i64 %12, 1
  %5 = icmp eq i64 %4, 11
  br i1 %5, label %6, label %11, !llvm.loop !123

6:                                                ; preds = %3
  %7 = load i64, ptr @extra_dump_files_in_use, align 8, !tbaa !105
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %40, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr @extra_dump_files, align 8, !tbaa !39
  br label %19

11:                                               ; preds = %1, %3
  %12 = phi i64 [ %4, %3 ], [ 1, %1 ]
  %13 = getelementptr inbounds [11 x %struct.dump_file_info], ptr @dump_files, i64 0, i64 %12, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !120
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %3, label %40

16:                                               ; preds = %19
  %17 = add nuw i64 %20, 1
  %18 = icmp eq i64 %17, %7
  br i1 %18, label %40, label %19, !llvm.loop !124

19:                                               ; preds = %9, %16
  %20 = phi i64 [ 0, %9 ], [ %17, %16 ]
  %21 = getelementptr inbounds %struct.dump_file_info, ptr %10, i64 %20, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !120
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %16, label %40

24:                                               ; preds = %1
  %25 = icmp slt i32 %0, 11
  br i1 %25, label %26, label %29, !prof !125

26:                                               ; preds = %24
  %27 = sext i32 %0 to i64
  %28 = getelementptr inbounds [11 x %struct.dump_file_info], ptr @dump_files, i64 0, i64 %27
  br label %36

29:                                               ; preds = %24
  %30 = add nsw i32 %0, -11
  %31 = zext nneg i32 %30 to i64
  %32 = load i64, ptr @extra_dump_files_in_use, align 8, !tbaa !105
  %33 = icmp ugt i64 %32, %31
  tail call void @llvm.assume(i1 %33)
  %34 = load ptr, ptr @extra_dump_files, align 8, !tbaa !39
  %35 = getelementptr inbounds %struct.dump_file_info, ptr %34, i64 %31
  br label %36

36:                                               ; preds = %26, %29
  %37 = phi ptr [ %28, %26 ], [ %35, %29 ]
  %38 = getelementptr inbounds %struct.dump_file_info, ptr %37, i64 0, i32 4
  %39 = load i32, ptr %38, align 4, !tbaa !120
  br label %40

40:                                               ; preds = %11, %16, %19, %6, %36
  %41 = phi i32 [ %39, %36 ], [ 0, %6 ], [ 1, %19 ], [ 0, %16 ], [ 1, %11 ]
  ret i32 %41
}

declare ptr @fopen_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @error(ptr noundef, ...) local_unnamed_addr #3

declare ptr @strerror(i32 noundef) local_unnamed_addr #3

declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write) uwtable
define dso_local i32 @dump_initialized_p(i32 noundef %0) local_unnamed_addr #18 !prof !117 {
  %2 = icmp slt i32 %0, 11
  br i1 %2, label %3, label %6, !prof !118

3:                                                ; preds = %1
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [11 x %struct.dump_file_info], ptr @dump_files, i64 0, i64 %4
  br label %13

6:                                                ; preds = %1
  %7 = add nsw i32 %0, -11
  %8 = zext nneg i32 %7 to i64
  %9 = load i64, ptr @extra_dump_files_in_use, align 8, !tbaa !105
  %10 = icmp ugt i64 %9, %8
  tail call void @llvm.assume(i1 %10)
  %11 = load ptr, ptr @extra_dump_files, align 8, !tbaa !39
  %12 = getelementptr inbounds %struct.dump_file_info, ptr %11, i64 %8
  br label %13

13:                                               ; preds = %3, %6
  %14 = phi ptr [ %5, %3 ], [ %12, %6 ]
  %15 = getelementptr inbounds %struct.dump_file_info, ptr %14, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !120
  %17 = icmp sgt i32 %16, 0
  %18 = zext i1 %17 to i32
  ret i32 %18
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write) uwtable
define dso_local ptr @dump_flag_name(i32 noundef %0) local_unnamed_addr #19 !prof !38 {
  %2 = icmp slt i32 %0, 11
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [11 x %struct.dump_file_info], ptr @dump_files, i64 0, i64 %4
  br label %13

6:                                                ; preds = %1
  %7 = add nsw i32 %0, -11
  %8 = zext nneg i32 %7 to i64
  %9 = load i64, ptr @extra_dump_files_in_use, align 8, !tbaa !105
  %10 = icmp ugt i64 %9, %8
  tail call void @llvm.assume(i1 %10)
  %11 = load ptr, ptr @extra_dump_files, align 8, !tbaa !39
  %12 = getelementptr inbounds %struct.dump_file_info, ptr %11, i64 %8
  br label %13

13:                                               ; preds = %3, %6
  %14 = phi ptr [ %5, %3 ], [ %12, %6 ]
  %15 = getelementptr inbounds %struct.dump_file_info, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !110
  ret ptr %16
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dump_end(i32 noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !prof !38 {
  %3 = tail call i32 @fclose(ptr noundef %1)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local i32 @dump_switch_p(ptr noundef %0) local_unnamed_addr #9 !prof !38 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i32 [ 0, %1 ], [ %7, %2 ]
  %4 = phi i64 [ 1, %1 ], [ %8, %2 ]
  %5 = getelementptr inbounds [11 x %struct.dump_file_info], ptr @dump_files, i64 0, i64 %4
  %6 = tail call fastcc i32 @dump_switch_p_1(ptr noundef %0, ptr noundef nonnull %5, i8 noundef zeroext 0), !range !128
  %7 = or i32 %6, %3
  %8 = add nuw nsw i64 %4, 1
  %9 = icmp eq i64 %8, 11
  br i1 %9, label %10, label %2, !llvm.loop !129

10:                                               ; preds = %2
  %11 = icmp eq i32 %7, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %17, %12 ], [ 0, %10 ]
  %14 = phi i64 [ %18, %12 ], [ 1, %10 ]
  %15 = getelementptr inbounds [11 x %struct.dump_file_info], ptr @dump_files, i64 0, i64 %14
  %16 = tail call fastcc i32 @dump_switch_p_1(ptr noundef %0, ptr noundef nonnull %15, i8 noundef zeroext 1), !range !128
  %17 = or i32 %16, %13
  %18 = add nuw nsw i64 %14, 1
  %19 = icmp eq i64 %18, 11
  br i1 %19, label %20, label %12, !llvm.loop !130

20:                                               ; preds = %12, %10
  %21 = phi i32 [ 1, %10 ], [ %17, %12 ]
  %22 = load i64, ptr @extra_dump_files_in_use, align 8, !tbaa !105
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %20, %24
  %25 = phi i32 [ %30, %24 ], [ %21, %20 ]
  %26 = phi i64 [ %31, %24 ], [ 0, %20 ]
  %27 = load ptr, ptr @extra_dump_files, align 8, !tbaa !39
  %28 = getelementptr inbounds %struct.dump_file_info, ptr %27, i64 %26
  %29 = tail call fastcc i32 @dump_switch_p_1(ptr noundef %0, ptr noundef %28, i8 noundef zeroext 0), !range !128
  %30 = or i32 %29, %25
  %31 = add nuw i64 %26, 1
  %32 = load i64, ptr @extra_dump_files_in_use, align 8, !tbaa !105
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %24, label %34, !llvm.loop !131

34:                                               ; preds = %24, %20
  %35 = phi i32 [ %21, %20 ], [ %30, %24 ]
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %34
  %38 = load i64, ptr @extra_dump_files_in_use, align 8, !tbaa !105
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %37, %40
  %41 = phi i32 [ %46, %40 ], [ 0, %37 ]
  %42 = phi i64 [ %47, %40 ], [ 0, %37 ]
  %43 = load ptr, ptr @extra_dump_files, align 8, !tbaa !39
  %44 = getelementptr inbounds %struct.dump_file_info, ptr %43, i64 %42
  %45 = tail call fastcc i32 @dump_switch_p_1(ptr noundef %0, ptr noundef %44, i8 noundef zeroext 1), !range !128
  %46 = or i32 %45, %41
  %47 = add nuw i64 %42, 1
  %48 = load i64, ptr @extra_dump_files_in_use, align 8, !tbaa !105
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %40, label %50, !llvm.loop !132

50:                                               ; preds = %40, %37, %34
  %51 = phi i32 [ 1, %34 ], [ 0, %37 ], [ %46, %40 ]
  ret i32 %51
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef i32 @dump_switch_p_1(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) unnamed_addr #9 !prof !38 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.dump_file_info, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !111
  %8 = icmp eq ptr %7, null
  br i1 %8, label %83, label %11

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.dump_file_info, ptr %1, i64 0, i32 1
  br label %11

11:                                               ; preds = %5, %9
  %12 = phi ptr [ %10, %9 ], [ %6, %5 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !39
  %14 = getelementptr inbounds %struct.dump_file_info, ptr %1, i64 0, i32 2
  %15 = getelementptr inbounds %struct.dump_file_info, ptr %1, i64 0, i32 1
  %16 = select i1 %4, ptr %15, ptr %14
  %17 = load ptr, ptr %16, align 8, !tbaa !39
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17)
  %19 = tail call i32 @strncmp(ptr noundef %0, ptr noundef %13, i64 noundef %18)
  %20 = icmp ne i32 %19, 0
  %21 = getelementptr inbounds i8, ptr %0, i64 %18
  %22 = icmp eq ptr %0, null
  %23 = or i1 %22, %20
  br i1 %23, label %83, label %24

24:                                               ; preds = %11
  %25 = load i8, ptr %21, align 1, !tbaa !50
  switch i8 %25, label %83 [
    i8 0, label %26
    i8 45, label %26
  ]

26:                                               ; preds = %24, %24
  %27 = load i8, ptr %21, align 1, !tbaa !50
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %73, label %29

29:                                               ; preds = %26, %69
  %30 = phi i32 [ %70, %69 ], [ 0, %26 ]
  %31 = phi ptr [ %44, %69 ], [ %21, %26 ]
  br label %32

32:                                               ; preds = %32, %29
  %33 = phi ptr [ %36, %32 ], [ %31, %29 ]
  %34 = load i8, ptr %33, align 1, !tbaa !50
  %35 = icmp eq i8 %34, 45
  %36 = getelementptr inbounds i8, ptr %33, i64 1
  br i1 %35, label %32, label %37, !llvm.loop !133

37:                                               ; preds = %32
  %38 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %33, i32 noundef 45)
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %33)
  %42 = getelementptr inbounds i8, ptr %33, i64 %41
  br label %43

43:                                               ; preds = %40, %37
  %44 = phi ptr [ %38, %37 ], [ %42, %40 ]
  %45 = ptrtoint ptr %44 to i64
  %46 = ptrtoint ptr %33 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = and i64 %47, 4294967295
  br label %50

50:                                               ; preds = %43, %62
  %51 = phi ptr [ @.str.117, %43 ], [ %64, %62 ]
  %52 = phi ptr [ @dump_options, %43 ], [ %63, %62 ]
  %53 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %51)
  %54 = icmp eq i64 %53, %49
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = tail call i32 @bcmp(ptr nonnull %51, ptr nonnull %33, i64 %49)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.dump_option_value_info, ptr %52, i64 0, i32 1
  %60 = load i32, ptr %59, align 8, !tbaa !134
  %61 = or i32 %60, %30
  br label %69

62:                                               ; preds = %50, %55
  %63 = getelementptr inbounds %struct.dump_option_value_info, ptr %52, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !136
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %50, !llvm.loop !137

66:                                               ; preds = %62
  %67 = load ptr, ptr %15, align 8, !tbaa !110
  %68 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.116, i32 noundef %48, ptr noundef nonnull %33, ptr noundef %67) #24
  br label %69

69:                                               ; preds = %66, %58
  %70 = phi i32 [ %61, %58 ], [ %30, %66 ]
  %71 = load i8, ptr %44, align 1, !tbaa !50
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %29, !llvm.loop !138

73:                                               ; preds = %69, %26
  %74 = phi i32 [ 0, %26 ], [ %70, %69 ]
  %75 = getelementptr inbounds %struct.dump_file_info, ptr %1, i64 0, i32 4
  store i32 -1, ptr %75, align 4, !tbaa !120
  %76 = getelementptr inbounds %struct.dump_file_info, ptr %1, i64 0, i32 3
  %77 = load i32, ptr %76, align 8, !tbaa !112
  %78 = or i32 %77, %74
  store i32 %78, ptr %76, align 8, !tbaa !112
  %79 = load ptr, ptr %1, align 8, !tbaa !108
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = tail call fastcc i32 @dump_enable_all(i32 noundef %78)
  br label %83

83:                                               ; preds = %5, %73, %81, %24, %11
  %84 = phi i32 [ 0, %11 ], [ 0, %24 ], [ 1, %81 ], [ 1, %73 ], [ 0, %5 ]
  ret i32 %84
}

; Function Attrs: nounwind uwtable
define dso_local void @dump_function(i32 noundef %0, ptr noundef %1) local_unnamed_addr #14 !prof !139 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  %4 = call ptr @dump_begin(i32 noundef %0, ptr noundef nonnull %3)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6, !prof !140

6:                                                ; preds = %2
  %7 = load i32, ptr %3, align 4, !tbaa !54
  call void @dump_function_to_file(ptr noundef %1, ptr noundef nonnull %4, i32 noundef %7) #24
  %8 = call i32 @fclose(ptr noundef nonnull %4)
  br label %9

9:                                                ; preds = %6, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret void
}

declare void @dump_function_to_file(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @enable_rtl_dump_file() local_unnamed_addr #20 !prof !38 {
  %1 = tail call fastcc i32 @dump_enable_all(i32 noundef 1064)
  %2 = icmp sgt i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @dump_enable_all(i32 noundef %0) unnamed_addr #20 !prof !38 {
  %2 = and i32 %0, 3584
  br label %8

3:                                                ; preds = %19
  %4 = load i64, ptr @extra_dump_files_in_use, align 8, !tbaa !105
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %38, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @extra_dump_files, align 8, !tbaa !39
  br label %23

8:                                                ; preds = %1, %19
  %9 = phi i64 [ 1, %1 ], [ %21, %19 ]
  %10 = phi i32 [ 0, %1 ], [ %20, %19 ]
  %11 = getelementptr inbounds [11 x %struct.dump_file_info], ptr @dump_files, i64 0, i64 %9, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !112
  %13 = and i32 %12, %2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds [11 x %struct.dump_file_info], ptr @dump_files, i64 0, i64 %9, i32 4
  store i32 -1, ptr %16, align 4, !tbaa !120
  %17 = or i32 %12, %0
  store i32 %17, ptr %11, align 8, !tbaa !112
  %18 = add nsw i32 %10, 1
  br label %19

19:                                               ; preds = %8, %15
  %20 = phi i32 [ %18, %15 ], [ %10, %8 ]
  %21 = add nuw nsw i64 %9, 1
  %22 = icmp eq i64 %21, 11
  br i1 %22, label %3, label %8, !llvm.loop !141

23:                                               ; preds = %6, %34
  %24 = phi i64 [ 0, %6 ], [ %36, %34 ]
  %25 = phi i32 [ %20, %6 ], [ %35, %34 ]
  %26 = getelementptr inbounds %struct.dump_file_info, ptr %7, i64 %24, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !112
  %28 = and i32 %27, %2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.dump_file_info, ptr %7, i64 %24, i32 4
  store i32 -1, ptr %31, align 4, !tbaa !120
  %32 = or i32 %27, %0
  store i32 %32, ptr %26, align 8, !tbaa !112
  %33 = add nsw i32 %25, 1
  br label %34

34:                                               ; preds = %23, %30
  %35 = phi i32 [ %33, %30 ], [ %25, %23 ]
  %36 = add nuw i64 %24, 1
  %37 = icmp eq i64 %36, %4
  br i1 %37, label %38, label %23, !llvm.loop !142

38:                                               ; preds = %34, %3
  %39 = phi i32 [ %20, %3 ], [ %35, %34 ]
  ret i32 %39
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @splay_tree_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #3

declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @bit_position(ptr noundef) local_unnamed_addr #3

declare void @real_to_decimal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @fixed_to_decimal(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #11

declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

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
attributes #10 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind }
attributes #22 = { nofree nounwind willreturn memory(argmem: read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @dump_register, ptr @xrealloc, i64 4}
!36 = !{ptr @dump_function, ptr @dump_begin, i64 40}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"any pointer", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!44, !40, i64 8}
!44 = !{!"_IO_FILE", !45, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !40, i64 104, !45, i64 112, !45, i64 116, !46, i64 120, !47, i64 128, !41, i64 130, !41, i64 131, !40, i64 136, !46, i64 144, !40, i64 152, !40, i64 160, !40, i64 168, !40, i64 176, !46, i64 184, !45, i64 192, !41, i64 196}
!45 = !{!"int", !41, i64 0}
!46 = !{!"long", !41, i64 0}
!47 = !{!"short", !41, i64 0}
!48 = !{!44, !40, i64 16}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{!41, !41, i64 0}
!51 = !{!44, !40, i64 40}
!52 = !{!44, !40, i64 48}
!53 = !{!44, !45, i64 0}
!54 = !{!45, !45, i64 0}
!55 = distinct !{!55, !56, !57}
!56 = !{!"llvm.loop.mustprogress"}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = !{!59, !40, i64 56}
!59 = !{!"dump_info", !40, i64 0, !40, i64 8, !45, i64 16, !45, i64 20, !45, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56}
!60 = !{!61, !46, i64 8}
!61 = !{!"splay_tree_node_s", !46, i64 0, !46, i64 8, !40, i64 16, !40, i64 24}
!62 = !{!63, !45, i64 0}
!63 = !{!"dump_node_info", !45, i64 0, !45, i64 4}
!64 = !{!59, !40, i64 0}
!65 = !{!59, !45, i64 24}
!66 = !{!59, !45, i64 20}
!67 = !{!59, !40, i64 48}
!68 = !{!69, !40, i64 8}
!69 = !{!"dump_queue", !40, i64 0, !40, i64 8}
!70 = !{!69, !40, i64 0}
!71 = !{!59, !40, i64 40}
!72 = !{!59, !45, i64 16}
!73 = !{!59, !40, i64 8}
!74 = !{!59, !40, i64 32}
!75 = !{!61, !46, i64 0}
!76 = !{!77, !45, i64 0}
!77 = !{!"VEC_tree_base", !45, i64 0, !45, i64 4, !41, i64 8}
!78 = distinct !{!78, !56, !57}
!79 = !{i64 0, i64 8, !39, i64 8, i64 4, !54, i64 12, i64 4, !54, i64 16, i64 1, !50}
!80 = !{i64 0, i64 4, !54, i64 4, i64 4, !54, i64 8, i64 1, !50}
!81 = !{!82, !40, i64 264}
!82 = !{!"lang_hooks", !40, i64 0, !46, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !40, i64 128, !40, i64 136, !40, i64 144, !40, i64 152, !40, i64 160, !40, i64 168, !40, i64 176, !40, i64 184, !40, i64 192, !40, i64 200, !40, i64 208, !40, i64 216, !40, i64 224, !40, i64 232, !83, i64 240, !84, i64 248, !85, i64 256, !86, i64 272, !87, i64 432, !88, i64 560, !40, i64 584, !40, i64 592, !40, i64 600, !40, i64 608, !40, i64 616, !40, i64 624, !40, i64 632, !40, i64 640, !40, i64 648, !40, i64 656, !40, i64 664, !41, i64 672}
!83 = !{!"lang_hooks_for_tree_inlining", !40, i64 0}
!84 = !{!"lang_hooks_for_callgraph", !40, i64 0}
!85 = !{!"lang_hooks_for_tree_dump", !40, i64 0, !40, i64 8}
!86 = !{!"lang_hooks_for_decls", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !40, i64 128, !40, i64 136, !40, i64 144, !40, i64 152}
!87 = !{!"lang_hooks_for_types", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !40, i64 104, !40, i64 112, !41, i64 120}
!88 = !{!"lang_hooks_for_lto", !40, i64 0, !40, i64 8, !40, i64 16}
!89 = !{!82, !40, i64 256}
!90 = !{!91, !40, i64 16}
!91 = !{!"tree_statement_list_node", !40, i64 0, !40, i64 8, !40, i64 16}
!92 = distinct !{!92, !56, !57}
!93 = distinct !{!93, !56, !57}
!94 = distinct !{!94, !56, !57}
!95 = !{!96, !45, i64 0}
!96 = !{!"VEC_constructor_elt_base", !45, i64 0, !45, i64 4, !41, i64 8}
!97 = !{!98, !40, i64 8}
!98 = !{!"constructor_elt_d", !40, i64 0, !40, i64 8}
!99 = !{!98, !40, i64 0}
!100 = distinct !{!100, !56, !57}
!101 = distinct !{!101, !56, !57}
!102 = distinct !{!102, !56, !57}
!103 = distinct !{!103, !56, !57}
!104 = !{!"function_entry_count", i64 213}
!105 = !{!46, !46, i64 0}
!106 = !{!"branch_weights", i32 209, i32 4}
!107 = !{!"branch_weights", i32 1, i32 3}
!108 = !{!109, !40, i64 0}
!109 = !{!"dump_file_info", !40, i64 0, !40, i64 8, !40, i64 16, !45, i64 24, !45, i64 28, !45, i64 32}
!110 = !{!109, !40, i64 8}
!111 = !{!109, !40, i64 16}
!112 = !{!109, !45, i64 24}
!113 = !{!109, !45, i64 32}
!114 = !{!"function_entry_count", i64 1}
!115 = !{!"branch_weights", i32 0, i32 1}
!116 = !{!"branch_weights", i32 1, i32 0}
!117 = !{!"function_entry_count", i64 5877}
!118 = !{!"branch_weights", i32 0, i32 5877}
!119 = !{!"branch_weights", i32 5877, i32 0}
!120 = !{!109, !45, i64 28}
!121 = !{!"function_entry_count", i64 6616}
!122 = !{!"branch_weights", i32 43771456, i32 0, i32 0}
!123 = distinct !{!123, !56, !57}
!124 = distinct !{!124, !56, !57}
!125 = !{!"branch_weights", i32 737, i32 5879}
!126 = !{!"branch_weights", i32 6616, i32 0}
!127 = !{!"branch_weights", i32 0, i32 6616}
!128 = !{i32 0, i32 2}
!129 = distinct !{!129, !56, !57}
!130 = distinct !{!130, !56, !57}
!131 = distinct !{!131, !56, !57}
!132 = distinct !{!132, !56, !57}
!133 = distinct !{!133, !56, !57}
!134 = !{!135, !45, i64 8}
!135 = !{!"dump_option_value_info", !40, i64 0, !45, i64 8}
!136 = !{!135, !40, i64 0}
!137 = distinct !{!137, !56, !57}
!138 = distinct !{!138, !56, !57}
!139 = !{!"function_entry_count", i64 40}
!140 = !{!"branch_weights", i32 40, i32 0}
!141 = distinct !{!141, !56, !57}
!142 = distinct !{!142, !56, !57}
