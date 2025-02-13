; ModuleID = 'tree-dump.c'
source_filename = "tree-dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.dump_file_info = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.dump_option_value_info = type { ptr, i32 }
%struct.dump_info = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.splay_tree_node_s = type { i64, i64, ptr, ptr }
%struct.dump_queue = type { ptr, ptr }
%struct.dump_node_info = type { i32, i8 }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.tree_stmt_iterator = type { ptr, ptr }
%struct.call_expr_arg_iterator_d = type { ptr, i32, i32 }
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
%struct.tree_vec = type { %struct.tree_common, i32, [1 x ptr] }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.tree_real_cst = type { %struct.tree_common, ptr }
%struct.tree_fixed_cst = type { %struct.tree_common, ptr }
%struct.tree_constructor = type { %struct.tree_common, ptr }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.tree_omp_clause = type { %struct.tree_common, i32, i32, %union.omp_clause_subcode, ptr, ptr, [1 x ptr] }
%union.omp_clause_subcode = type { i32 }
%struct.tree_statement_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_statement_list_node = type { ptr, ptr, ptr }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }

@.str = private unnamed_addr constant [7 x i8] c"%-4s: \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\0A%*s\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"@%-6u \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"%-4s: %-8lx \00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"%-4s: %-7d \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"%-13s \00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"%-4s: %-7s \00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"binfo\00", align 1
@tree_code_name = external local_unnamed_addr constant [0 x ptr], align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"%-16s \00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"spec\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"virt\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"bases\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.15 = private unnamed_addr constant [4 x i8] c"pub\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"prot\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"priv\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"tree-dump.c\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"accs\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"binf\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"op 0\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"op 1\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@.str.25 = private unnamed_addr constant [5 x i8] c"mngl\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"orig\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"scpe\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"srcp: %s:%-6d \00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"note\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"artificial\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"chan\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.32 = private unnamed_addr constant [18 x i8] c"qual: %c%c%c     \00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"unql\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"algn\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"strg\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"lngt\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"purp\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"valu\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"prec\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"sign\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"unsigned\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"signed\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"csts\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"saturating\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"non-saturating\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"ptd\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"refd\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"clas\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"retn\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c"prms\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"elts\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"domn\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"flds\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"fncs\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"cnst\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"-uid\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"argt\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"bpos\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"used\00", align 1
@.str.68 = private unnamed_addr constant [9 x i8] c"register\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"undefined\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"extern\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"static\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@.str.76 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"strg: %-7s \00", align 1
@.str.78 = private unnamed_addr constant [5 x i8] c"op 2\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"op 3\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"fn\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"idx\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"val\00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"vars\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"cond\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"expr\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"decl\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"clnp\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"low \00", align 1
@.str.89 = private unnamed_addr constant [5 x i8] c"labl\00", align 1
@.str.90 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@omp_clause_code_name = external local_unnamed_addr constant [0 x ptr], align 8
@omp_clause_num_ops = external local_unnamed_addr constant [0 x i8], align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"op: \00", align 1
@.str.92 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"%-4s: %s \00", align 1
@dump_register.next_dump = internal unnamed_addr global i32 7, align 4
@extra_dump_files_in_use = internal unnamed_addr global i64 0, align 8
@extra_dump_files_alloced = internal unnamed_addr global i64 0, align 8
@extra_dump_files = internal unnamed_addr global ptr null, align 8
@dump_files = internal global [11 x %struct.dump_file_info] [%struct.dump_file_info zeroinitializer, %struct.dump_file_info { ptr @.str.95, ptr @.str.96, ptr null, i32 2048, i32 0, i32 0 }, %struct.dump_file_info { ptr @.str.97, ptr @.str.98, ptr null, i32 512, i32 0, i32 1 }, %struct.dump_file_info { ptr @.str.99, ptr @.str.100, ptr null, i32 512, i32 0, i32 2 }, %struct.dump_file_info { ptr @.str.101, ptr @.str.102, ptr null, i32 512, i32 0, i32 3 }, %struct.dump_file_info { ptr @.str.103, ptr @.str.104, ptr null, i32 512, i32 0, i32 4 }, %struct.dump_file_info { ptr @.str.105, ptr @.str.106, ptr null, i32 512, i32 0, i32 5 }, %struct.dump_file_info { ptr @.str.107, ptr @.str.108, ptr null, i32 512, i32 0, i32 6 }, %struct.dump_file_info { ptr null, ptr @.str.109, ptr null, i32 512, i32 0, i32 0 }, %struct.dump_file_info { ptr null, ptr @.str.110, ptr null, i32 1024, i32 0, i32 0 }, %struct.dump_file_info { ptr null, ptr @.str.111, ptr null, i32 2048, i32 0, i32 0 }], align 16
@.str.95 = private unnamed_addr constant [8 x i8] c".cgraph\00", align 1
@.str.96 = private unnamed_addr constant [11 x i8] c"ipa-cgraph\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c".tu\00", align 1
@.str.98 = private unnamed_addr constant [17 x i8] c"translation-unit\00", align 1
@.str.99 = private unnamed_addr constant [7 x i8] c".class\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"class-hierarchy\00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c".original\00", align 1
@.str.102 = private unnamed_addr constant [14 x i8] c"tree-original\00", align 1
@.str.103 = private unnamed_addr constant [8 x i8] c".gimple\00", align 1
@.str.104 = private unnamed_addr constant [12 x i8] c"tree-gimple\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c".nested\00", align 1
@.str.106 = private unnamed_addr constant [12 x i8] c"tree-nested\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c".vcg\00", align 1
@.str.108 = private unnamed_addr constant [9 x i8] c"tree-vcg\00", align 1
@.str.109 = private unnamed_addr constant [9 x i8] c"tree-all\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"rtl-all\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"ipa-all\00", align 1
@.str.112 = private unnamed_addr constant [8 x i8] c".%03d%c\00", align 1
@dump_base_name = external local_unnamed_addr global ptr, align 8
@.str.113 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.114 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.115 = private unnamed_addr constant [33 x i8] c"could not open dump file %qs: %s\00", align 1
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @queue_and_dump_index(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq ptr %2, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = ptrtoint ptr %2 to i64
  %10 = tail call ptr @splay_tree_lookup(ptr noundef %8, i64 noundef %9) #18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.splay_tree_node_s, ptr %10, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !12
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4, !tbaa !15
  br label %19

17:                                               ; preds = %6
  %18 = tail call fastcc i32 @queue(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef %3) #19
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi i32 [ %16, %12 ], [ %18, %17 ]
  tail call fastcc void @dump_maybe_newline(ptr noundef nonnull %0) #19
  %21 = load ptr, ptr %0, align 8, !tbaa !17
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str, ptr noundef %1) #19
  %23 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !18
  %25 = add i32 %24, 6
  store i32 %25, ptr %23, align 8, !tbaa !18
  tail call fastcc void @dump_index(ptr noundef nonnull %0, i32 noundef %20) #19
  br label %26

26:                                               ; preds = %4, %19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @splay_tree_lookup(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @queue(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !19
  %6 = add i32 %5, 1
  store i32 %6, ptr %4, align 4, !tbaa !19
  %7 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !20
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.dump_queue, ptr %8, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !21
  store ptr %12, ptr %7, align 8, !tbaa !20
  br label %15

13:                                               ; preds = %3
  %14 = tail call ptr @xmalloc(i64 noundef 16) #18
  br label %15

15:                                               ; preds = %13, %10
  %16 = phi ptr [ %8, %10 ], [ %14, %13 ]
  %17 = tail call ptr @xmalloc(i64 noundef 8) #18
  store i32 %6, ptr %17, align 4, !tbaa !15
  %18 = getelementptr inbounds %struct.dump_node_info, ptr %17, i64 0, i32 1
  %19 = trunc i32 %2 to i8
  %20 = and i8 %19, 1
  %21 = load i8, ptr %18, align 4
  %22 = and i8 %21, -2
  %23 = or disjoint i8 %22, %20
  store i8 %23, ptr %18, align 4
  %24 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = ptrtoint ptr %1 to i64
  %27 = ptrtoint ptr %17 to i64
  %28 = tail call ptr @splay_tree_insert(ptr noundef %25, i64 noundef %26, i64 noundef %27) #18
  store ptr %28, ptr %16, align 8, !tbaa !23
  %29 = getelementptr inbounds %struct.dump_queue, ptr %16, i64 0, i32 1
  store ptr null, ptr %29, align 8, !tbaa !21
  %30 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !24
  %32 = icmp eq ptr %31, null
  %33 = getelementptr inbounds %struct.dump_queue, ptr %31, i64 0, i32 1
  %34 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 5
  %35 = select i1 %32, ptr %34, ptr %33
  store ptr %16, ptr %35, align 8, !tbaa !25
  store ptr %16, ptr %30, align 8, !tbaa !24
  ret i32 %6
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @dump_maybe_newline(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !18
  %4 = icmp ugt i32 %3, 55
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call fastcc void @dump_new_line(ptr noundef nonnull %0) #19
  br label %16

6:                                                ; preds = %1
  %7 = add nsw i32 %3, -25
  %8 = urem i32 %7, 15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !17
  %12 = xor i32 %8, 15
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.1, i32 noundef %12, ptr noundef nonnull @.str.2) #19
  %14 = load i32, ptr %2, align 8, !tbaa !18
  %15 = add i32 %14, %12
  store i32 %15, ptr %2, align 8, !tbaa !18
  br label %16

16:                                               ; preds = %6, %10, %5
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @dump_index(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !17
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef %1) #19
  %5 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !18
  %7 = add i32 %6, 8
  store i32 %7, ptr %5, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @splay_tree_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @dump_new_line(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !17
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.3, i32 noundef 25, ptr noundef nonnull @.str.2) #19
  %4 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 4
  store i32 25, ptr %4, align 8, !tbaa !18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @queue_and_dump_type(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !26
  tail call void @queue_and_dump_index(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %4, i32 noundef 0) #19
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_pointer(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  tail call fastcc void @dump_maybe_newline(ptr noundef %0) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !17
  %5 = ptrtoint ptr %2 to i64
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.6, ptr noundef %1, i64 noundef %5) #19
  %7 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !18
  %9 = add i32 %8, 15
  store i32 %9, ptr %7, align 8, !tbaa !18
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_int(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  tail call fastcc void @dump_maybe_newline(ptr noundef %0) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !17
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.7, ptr noundef %1, i32 noundef %2) #19
  %6 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8, !tbaa !18
  %8 = add i32 %7, 14
  store i32 %8, ptr %6, align 8, !tbaa !18
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_string(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #3 {
  tail call fastcc void @dump_maybe_newline(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !17
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.8, ptr noundef %1) #19
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %6 = icmp ugt i64 %5, 13
  %7 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !18
  %9 = trunc i64 %5 to i32
  %10 = add i32 %9, 1
  %11 = select i1 %6, i32 %10, i32 14
  %12 = add i32 %11, %8
  store i32 %12, ptr %7, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_string_field(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
  tail call fastcc void @dump_maybe_newline(ptr noundef %0) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !17
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.9, ptr noundef %1, ptr noundef %2) #19
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #19
  %7 = icmp ugt i64 %6, 7
  %8 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !18
  %10 = trunc i64 %6 to i32
  %11 = add i32 %10, 7
  %12 = select i1 %7, i32 %11, i32 14
  %13 = add i32 %12, %9
  store i32 %13, ptr %8, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @dump_flag(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef readnone %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 8, !tbaa !27
  %6 = and i32 %5, %1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !28
  %11 = icmp ne ptr %10, %2
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ 0, %3 ], [ %12, %8 ]
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_node(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.dump_info, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #20
  store ptr %2, ptr %4, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.dump_info, ptr %4, i64 0, i32 3
  store i32 0, ptr %5, align 4, !tbaa !19
  %6 = getelementptr inbounds %struct.dump_info, ptr %4, i64 0, i32 4
  store i32 0, ptr %6, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.dump_info, ptr %4, i64 0, i32 5
  %8 = getelementptr inbounds %struct.dump_info, ptr %4, i64 0, i32 7
  %9 = getelementptr inbounds %struct.dump_info, ptr %4, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store i32 %1, ptr %9, align 8, !tbaa !27
  %10 = getelementptr inbounds %struct.dump_info, ptr %4, i64 0, i32 1
  store ptr %0, ptr %10, align 8, !tbaa !28
  %11 = tail call ptr @splay_tree_new(ptr noundef nonnull @splay_tree_compare_pointers, ptr noundef null, ptr noundef nonnull @free) #18
  %12 = getelementptr inbounds %struct.dump_info, ptr %4, i64 0, i32 8
  store ptr %11, ptr %12, align 8, !tbaa !6
  %13 = call fastcc i32 @queue(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 0) #19
  %14 = load ptr, ptr %7, align 8, !tbaa !29
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3, %16
  call fastcc void @dequeue_and_dump(ptr noundef nonnull %4) #19
  %17 = load ptr, ptr %7, align 8, !tbaa !29
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %16, !llvm.loop !30

19:                                               ; preds = %16, %3
  %20 = load ptr, ptr %8, align 8, !tbaa !20
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %19, %22
  %23 = phi ptr [ %25, %22 ], [ %20, %19 ]
  %24 = getelementptr inbounds %struct.dump_queue, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !21
  call void @free(ptr noundef nonnull %23) #19
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %22, !llvm.loop !32

27:                                               ; preds = %22, %19
  %28 = load ptr, ptr %12, align 8, !tbaa !6
  call void @splay_tree_delete(ptr noundef %28) #18
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #20
  ret void
}

; Function Attrs: optsize
declare ptr @splay_tree_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @splay_tree_compare_pointers(i64 noundef, i64 noundef) #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dequeue_and_dump(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.expanded_location, align 8
  %4 = alloca %struct.tree_stmt_iterator, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca [32 x i8], align 16
  %7 = alloca %struct.call_expr_arg_iterator_d, align 8
  %8 = alloca [32 x i8], align 16
  %9 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !29
  %11 = load ptr, ptr %10, align 8, !tbaa !23
  %12 = load i64, ptr %11, align 8, !tbaa !33
  %13 = inttoptr i64 %12 to ptr
  %14 = getelementptr inbounds %struct.splay_tree_node_s, ptr %11, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !12
  %16 = inttoptr i64 %15 to ptr
  %17 = load i32, ptr %16, align 4, !tbaa !15
  %18 = getelementptr inbounds %struct.dump_queue, ptr %10, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !21
  store ptr %19, ptr %9, align 8, !tbaa !29
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 6
  store ptr null, ptr %22, align 8, !tbaa !24
  br label %23

23:                                               ; preds = %21, %1
  %24 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !20
  store ptr %25, ptr %18, align 8, !tbaa !21
  store ptr %10, ptr %24, align 8, !tbaa !20
  tail call fastcc void @dump_index(ptr noundef nonnull %0, i32 noundef %17) #19
  %26 = getelementptr inbounds %struct.dump_node_info, ptr %16, i64 0, i32 1
  %27 = load i8, ptr %26, align 4
  %28 = and i8 %27, 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load i64, ptr %13, align 8
  %32 = and i64 %31, 65535
  %33 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !25
  br label %35

35:                                               ; preds = %23, %30
  %36 = phi ptr [ %34, %30 ], [ @.str.10, %23 ]
  %37 = load ptr, ptr %0, align 8, !tbaa !17
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.11, ptr noundef %36) #19
  %39 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 4
  store i32 25, ptr %39, align 8, !tbaa !18
  %40 = load i64, ptr %13, align 8
  %41 = and i64 %40, 65535
  %42 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !34
  %44 = load i8, ptr %26, align 4
  %45 = and i8 %44, 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %83, label %47

47:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  %48 = getelementptr inbounds %struct.tree_binfo, ptr %13, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !26
  %50 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !26
  tail call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, ptr noundef %51, i32 noundef 0) #19
  %52 = load i64, ptr %13, align 8
  %53 = and i64 %52, 67108864
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %47
  tail call void @dump_string_field(ptr noundef nonnull %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #19
  br label %56

56:                                               ; preds = %55, %47
  %57 = getelementptr inbounds %struct.tree_binfo, ptr %13, i64 0, i32 9
  %58 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef nonnull %57) #19
  tail call void @dump_int(ptr noundef nonnull %0, ptr noundef nonnull @.str.14, i32 noundef %58) #19
  %59 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef nonnull %57, i32 noundef 0, ptr noundef nonnull %2) #19, !range !35
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %82, label %61

61:                                               ; preds = %56
  %62 = icmp eq ptr %49, null
  br label %63

63:                                               ; preds = %61, %76
  %64 = phi i32 [ 0, %61 ], [ %79, %76 ]
  br i1 %62, label %76, label %65

65:                                               ; preds = %63
  %66 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef nonnull %49, i32 noundef %64) #19
  %67 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 22), align 16, !tbaa !25
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %76, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 23), align 8, !tbaa !25
  %71 = icmp eq ptr %66, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 24), align 16, !tbaa !25
  %74 = icmp eq ptr %66, %73
  br i1 %74, label %76, label %75

75:                                               ; preds = %72
  tail call void @fancy_abort(ptr noundef nonnull @.str.18, i32 noundef 302, ptr noundef nonnull @.str.19) #18
  br label %76

76:                                               ; preds = %63, %72, %69, %65, %75
  %77 = phi ptr [ null, %75 ], [ @.str.15, %65 ], [ @.str.16, %69 ], [ @.str.17, %72 ], [ @.str.15, %63 ]
  tail call void @dump_string_field(ptr noundef nonnull %0, ptr noundef nonnull @.str.20, ptr noundef %77) #19
  %78 = load ptr, ptr %2, align 8, !tbaa !25
  tail call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.21, ptr noundef %78, i32 noundef 1) #19
  %79 = add i32 %64, 1
  %80 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef nonnull %57, i32 noundef %79, ptr noundef nonnull %2) #19, !range !35
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %63, !llvm.loop !36

82:                                               ; preds = %76, %56
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  br label %527

83:                                               ; preds = %35
  %84 = add i32 %43, -4
  %85 = icmp ult i32 %84, 7
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  tail call void @queue_and_dump_type(ptr noundef nonnull %0, ptr noundef nonnull %13) #19
  switch i32 %43, label %95 [
    i32 6, label %87
    i32 7, label %90
    i32 5, label %90
    i32 10, label %196
    i32 4, label %196
    i32 8, label %196
    i32 9, label %196
  ]

87:                                               ; preds = %86
  %88 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !26
  tail call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.22, ptr noundef %89, i32 noundef 0) #19
  br label %196

90:                                               ; preds = %86, %86
  %91 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !26
  tail call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.22, ptr noundef %92, i32 noundef 0) #19
  %93 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !26
  tail call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.23, ptr noundef %94, i32 noundef 0) #19
  br label %196

95:                                               ; preds = %86
  unreachable

96:                                               ; preds = %83
  switch i32 %43, label %196 [
    i32 3, label %97
    i32 2, label %165
    i32 1, label %195
  ]

97:                                               ; preds = %96
  %98 = getelementptr inbounds %struct.tree_decl_minimal, ptr %13, i64 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !26
  %100 = icmp eq ptr %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  tail call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.24, ptr noundef nonnull %99, i32 noundef 0) #19
  %102 = load i64, ptr %13, align 8
  %103 = and i64 %102, 65535
  br label %104

104:                                              ; preds = %101, %97
  %105 = phi i64 [ %103, %101 ], [ %41, %97 ]
  %106 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %105, i64 13
  %107 = load i8, ptr %106, align 1, !tbaa !26
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %119, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %13, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !26
  %112 = icmp eq ptr %111, null
  br i1 %112, label %119, label %113

113:                                              ; preds = %109
  %114 = tail call ptr @decl_assembler_name(ptr noundef nonnull %13) #18
  %115 = load ptr, ptr %98, align 8, !tbaa !26
  %116 = icmp eq ptr %114, %115
  br i1 %116, label %119, label %117

117:                                              ; preds = %113
  %118 = tail call ptr @decl_assembler_name(ptr noundef nonnull %13) #18
  tail call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.25, ptr noundef %118, i32 noundef 0) #19
  br label %119

119:                                              ; preds = %117, %113, %109, %104
  %120 = getelementptr inbounds %struct.tree_decl_common, ptr %13, i64 0, i32 7
  %121 = load ptr, ptr %120, align 8, !tbaa !26
  %122 = icmp eq ptr %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %119
  tail call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.26, ptr noundef nonnull %121, i32 noundef 0) #19
  br label %124

124:                                              ; preds = %123, %119
  tail call void @queue_and_dump_type(ptr noundef nonnull %0, ptr noundef nonnull %13) #19
  %125 = getelementptr inbounds %struct.tree_decl_minimal, ptr %13, i64 0, i32 4
  %126 = load ptr, ptr %125, align 8, !tbaa !26
  tail call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.27, ptr noundef %126, i32 noundef 0) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20
  %127 = getelementptr inbounds %struct.tree_decl_minimal, ptr %13, i64 0, i32 1
  %128 = load i32, ptr %127, align 8, !tbaa !26
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %3, i32 noundef %128) #18
  %129 = load ptr, ptr %3, align 8, !tbaa.struct !37
  %130 = getelementptr inbounds i8, ptr %3, i64 8
  %131 = load i32, ptr %130, align 8, !tbaa.struct !38
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20
  %132 = icmp eq ptr %129, null
  br i1 %132, label %145, label %133

133:                                              ; preds = %124
  %134 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %129, i32 noundef 47) #19
  %135 = icmp eq ptr %134, null
  %136 = getelementptr inbounds i8, ptr %134, i64 1
  %137 = select i1 %135, ptr %129, ptr %136
  call fastcc void @dump_maybe_newline(ptr noundef nonnull %0) #19
  %138 = load ptr, ptr %0, align 8, !tbaa !17
  %139 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %138, ptr noundef nonnull @.str.28, ptr noundef nonnull %137, i32 noundef %131) #19
  %140 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %137) #19
  %141 = load i32, ptr %39, align 8, !tbaa !18
  %142 = trunc i64 %140 to i32
  %143 = add i32 %142, 14
  %144 = add i32 %143, %141
  store i32 %144, ptr %39, align 8, !tbaa !18
  br label %145

145:                                              ; preds = %133, %124
  %146 = load i64, ptr %13, align 8
  %147 = and i64 %146, 65535
  %148 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %147, i64 10
  %149 = load i8, ptr %148, align 2, !tbaa !26
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %157, label %151

151:                                              ; preds = %145
  %152 = getelementptr inbounds %struct.tree_decl_common, ptr %13, i64 0, i32 2
  %153 = load i64, ptr %152, align 8
  %154 = and i64 %153, 4096
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %151
  call void @dump_string_field(ptr noundef nonnull %0, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #19
  br label %157

157:                                              ; preds = %156, %151, %145
  %158 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !26
  %160 = icmp eq ptr %159, null
  br i1 %160, label %196, label %161

161:                                              ; preds = %157
  %162 = call i32 @dump_flag(ptr noundef nonnull %0, i32 noundef 2, ptr noundef null) #19, !range !35
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %196

164:                                              ; preds = %161
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.31, ptr noundef nonnull %159, i32 noundef 0) #19
  br label %196

165:                                              ; preds = %96
  %166 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 32, i32 1), align 8, !tbaa !39
  %167 = tail call i32 %166(ptr noundef nonnull %13) #18
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %183, label %169

169:                                              ; preds = %165
  %170 = load ptr, ptr %0, align 8, !tbaa !17
  %171 = and i32 %167, 1
  %172 = icmp eq i32 %171, 0
  %173 = select i1 %172, i32 32, i32 99
  %174 = and i32 %167, 2
  %175 = icmp eq i32 %174, 0
  %176 = select i1 %175, i32 32, i32 118
  %177 = and i32 %167, 4
  %178 = icmp eq i32 %177, 0
  %179 = select i1 %178, i32 32, i32 114
  %180 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %170, ptr noundef nonnull @.str.32, i32 noundef %173, i32 noundef %176, i32 noundef %179) #19
  %181 = load i32, ptr %39, align 8, !tbaa !18
  %182 = add i32 %181, 14
  store i32 %182, ptr %39, align 8, !tbaa !18
  br label %183

183:                                              ; preds = %169, %165
  %184 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 12
  %185 = load ptr, ptr %184, align 8, !tbaa !26
  tail call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.24, ptr noundef %185, i32 noundef 0) #19
  %186 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 16
  %187 = load ptr, ptr %186, align 8, !tbaa !26
  %188 = icmp eq ptr %187, %13
  br i1 %188, label %190, label %189

189:                                              ; preds = %183
  tail call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.33, ptr noundef %187, i32 noundef 0) #19
  br label %190

190:                                              ; preds = %189, %183
  %191 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !26
  tail call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.34, ptr noundef %192, i32 noundef 0) #19
  %193 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 7
  %194 = load i32, ptr %193, align 8, !tbaa !26
  tail call void @dump_int(ptr noundef nonnull %0, ptr noundef nonnull @.str.35, i32 noundef %194) #19
  br label %196

195:                                              ; preds = %96
  tail call void @queue_and_dump_type(ptr noundef nonnull %0, ptr noundef nonnull %13) #19
  br label %196

196:                                              ; preds = %96, %157, %161, %164, %195, %190, %87, %90, %86, %86, %86, %86
  %197 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 32), align 8, !tbaa !47
  %198 = call zeroext i8 %197(ptr noundef nonnull %0, ptr noundef nonnull %13) #18
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %200, label %527

200:                                              ; preds = %196
  %201 = trunc i64 %40 to i16
  switch i16 %201, label %527 [
    i16 1, label %202
    i16 2, label %207
    i16 147, label %214
    i16 3, label %231
    i16 8, label %246
    i16 6, label %246
    i16 9, label %262
    i16 11, label %266
    i16 10, label %278
    i16 12, label %281
    i16 21, label %284
    i16 20, label %287
    i16 15, label %292
    i16 16, label %297
    i16 17, label %297
    i16 33, label %308
    i16 37, label %311
    i16 32, label %315
    i16 34, label %315
    i16 31, label %315
    i16 36, label %315
    i16 29, label %343
    i16 23, label %363
    i16 28, label %373
    i16 24, label %379
    i16 25, label %382
    i16 96, label %385
    i16 121, label %385
    i16 47, label %385
    i16 48, label %385
    i16 49, label %385
    i16 61, label %385
    i16 120, label %385
    i16 43, label %385
    i16 44, label %385
    i16 91, label %388
    i16 92, label %388
    i16 54, label %388
    i16 53, label %388
    i16 52, label %388
    i16 125, label %388
    i16 126, label %388
    i16 127, label %388
    i16 128, label %388
    i16 41, label %393
    i16 45, label %400
    i16 46, label %400
    i16 56, label %409
    i16 131, label %416
    i16 59, label %421
    i16 51, label %434
    i16 58, label %454
    i16 137, label %459
    i16 136, label %462
    i16 135, label %465
    i16 55, label %468
    i16 139, label %477
    i16 133, label %488
    i16 134, label %491
    i16 138, label %494
    i16 163, label %503
  ]

202:                                              ; preds = %200
  %203 = getelementptr inbounds %struct.tree_identifier, ptr %13, i64 0, i32 1
  %204 = load ptr, ptr %203, align 8, !tbaa !26
  call void @dump_string_field(ptr noundef nonnull %0, ptr noundef nonnull @.str.36, ptr noundef %204) #19
  %205 = getelementptr inbounds %struct.tree_identifier, ptr %13, i64 0, i32 1, i32 1
  %206 = load i32, ptr %205, align 8, !tbaa !26
  call void @dump_int(ptr noundef nonnull %0, ptr noundef nonnull @.str.37, i32 noundef %206) #19
  br label %527

207:                                              ; preds = %200
  %208 = getelementptr inbounds %struct.tree_list, ptr %13, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.38, ptr noundef %209, i32 noundef 0) #19
  %210 = getelementptr inbounds %struct.tree_list, ptr %13, i64 0, i32 2
  %211 = load ptr, ptr %210, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.39, ptr noundef %211, i32 noundef 0) #19
  %212 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.31, ptr noundef %213, i32 noundef 0) #19
  br label %527

214:                                              ; preds = %200
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20
  %215 = call fastcc { ptr, ptr } @tsi_start(ptr noundef nonnull %13) #19
  %216 = extractvalue { ptr, ptr } %215, 0
  %217 = extractvalue { ptr, ptr } %215, 1
  store ptr %216, ptr %4, align 8, !tbaa.struct !48
  %218 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %217, ptr %218, align 8, !tbaa.struct !49
  %219 = call fastcc zeroext i8 @tsi_end_p(ptr %216) #19
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %221, label %230

221:                                              ; preds = %214, %221
  %222 = phi ptr [ %227, %221 ], [ %216, %214 ]
  %223 = phi i32 [ %226, %221 ], [ 0, %214 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #20
  %224 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.40, i32 noundef %223) #19
  %225 = call fastcc ptr @tsi_stmt(ptr %222) #19
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef %225, i32 noundef 0) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #20
  call fastcc void @tsi_next(ptr noundef nonnull %4) #19
  %226 = add nuw nsw i32 %223, 1
  %227 = load ptr, ptr %4, align 8
  %228 = call fastcc zeroext i8 @tsi_end_p(ptr %227) #19
  %229 = icmp eq i8 %228, 0
  br i1 %229, label %221, label %230, !llvm.loop !50

230:                                              ; preds = %221, %214
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20
  br label %527

231:                                              ; preds = %200
  %232 = getelementptr inbounds %struct.tree_vec, ptr %13, i64 0, i32 1
  %233 = load i32, ptr %232, align 8, !tbaa !26
  call void @dump_int(ptr noundef nonnull %0, ptr noundef nonnull @.str.37, i32 noundef %233) #19
  %234 = load i32, ptr %232, align 8, !tbaa !26
  %235 = icmp sgt i32 %234, 0
  br i1 %235, label %236, label %527

236:                                              ; preds = %231, %236
  %237 = phi i64 [ %242, %236 ], [ 0, %231 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #20
  %238 = trunc i64 %237 to i32
  %239 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.40, i32 noundef %238) #19
  %240 = getelementptr inbounds %struct.tree_vec, ptr %13, i64 0, i32 2, i64 %237
  %241 = load ptr, ptr %240, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef %241, i32 noundef 0) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #20
  %242 = add nuw nsw i64 %237, 1
  %243 = load i32, ptr %232, align 8, !tbaa !26
  %244 = sext i32 %243 to i64
  %245 = icmp slt i64 %242, %244
  br i1 %245, label %236, label %527, !llvm.loop !51

246:                                              ; preds = %200, %200
  %247 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %248 = load i32, ptr %247, align 4
  %249 = and i32 %248, 1023
  call void @dump_int(ptr noundef nonnull %0, ptr noundef nonnull @.str.41, i32 noundef %249) #19
  %250 = load i64, ptr %13, align 8
  %251 = and i64 %250, 2097152
  %252 = icmp eq i64 %251, 0
  %253 = select i1 %252, ptr @.str.44, ptr @.str.43
  call void @dump_string_field(ptr noundef nonnull %0, ptr noundef nonnull @.str.42, ptr noundef nonnull %253) #19
  %254 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 13
  %255 = load ptr, ptr %254, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.45, ptr noundef %255, i32 noundef 0) #19
  %256 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 14
  %257 = load ptr, ptr %256, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.46, ptr noundef %257, i32 noundef 0) #19
  %258 = icmp eq i64 %41, 6
  br i1 %258, label %259, label %527

259:                                              ; preds = %246
  %260 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.47, ptr noundef %261, i32 noundef 0) #19
  br label %527

262:                                              ; preds = %200
  %263 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %264 = load i32, ptr %263, align 4
  %265 = and i32 %264, 1023
  call void @dump_int(ptr noundef nonnull %0, ptr noundef nonnull @.str.41, i32 noundef %265) #19
  br label %527

266:                                              ; preds = %200
  %267 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %268 = load i32, ptr %267, align 4
  %269 = and i32 %268, 1023
  call void @dump_int(ptr noundef nonnull %0, ptr noundef nonnull @.str.41, i32 noundef %269) #19
  %270 = load i64, ptr %13, align 8
  %271 = and i64 %270, 2097152
  %272 = icmp eq i64 %271, 0
  %273 = select i1 %272, ptr @.str.44, ptr @.str.43
  call void @dump_string_field(ptr noundef nonnull %0, ptr noundef nonnull @.str.42, ptr noundef nonnull %273) #19
  %274 = load i64, ptr %13, align 8
  %275 = and i64 %274, 2147483648
  %276 = icmp eq i64 %275, 0
  %277 = select i1 %276, ptr @.str.49, ptr @.str.48
  call void @dump_string_field(ptr noundef nonnull %0, ptr noundef nonnull @.str.48, ptr noundef nonnull %277) #19
  br label %527

278:                                              ; preds = %200
  %279 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %280 = load ptr, ptr %279, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.50, ptr noundef %280, i32 noundef 0) #19
  br label %527

281:                                              ; preds = %200
  %282 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %283 = load ptr, ptr %282, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.51, ptr noundef %283, i32 noundef 0) #19
  br label %527

284:                                              ; preds = %200
  %285 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 14
  %286 = load ptr, ptr %285, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.52, ptr noundef %286, i32 noundef 0) #19
  br label %287

287:                                              ; preds = %200, %284
  %288 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %289 = load ptr, ptr %288, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.53, ptr noundef %289, i32 noundef 0) #19
  %290 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 1
  %291 = load ptr, ptr %290, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.54, ptr noundef %291, i32 noundef 0) #19
  br label %527

292:                                              ; preds = %200
  %293 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %294 = load ptr, ptr %293, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.55, ptr noundef %294, i32 noundef 0) #19
  %295 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 1
  %296 = load ptr, ptr %295, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.56, ptr noundef %296, i32 noundef 0) #19
  br label %527

297:                                              ; preds = %200, %200
  %298 = load i64, ptr %13, align 8
  %299 = and i64 %298, 65535
  %300 = icmp eq i64 %299, 16
  %301 = select i1 %300, ptr @.str.58, ptr @.str.59
  call void @dump_string_field(ptr noundef nonnull %0, ptr noundef nonnull @.str.57, ptr noundef nonnull %301) #19
  %302 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 1
  %303 = load ptr, ptr %302, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.60, ptr noundef %303, i32 noundef 0) #19
  %304 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 14
  %305 = load ptr, ptr %304, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.61, ptr noundef %305, i32 noundef 0) #19
  %306 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 17
  %307 = load ptr, ptr %306, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.21, ptr noundef %307, i32 noundef 1) #19
  br label %527

308:                                              ; preds = %200
  %309 = getelementptr inbounds %struct.tree_decl_common, ptr %13, i64 0, i32 5
  %310 = load ptr, ptr %309, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.62, ptr noundef %310, i32 noundef 0) #19
  br label %527

311:                                              ; preds = %200
  %312 = getelementptr inbounds %struct.tree_decl_minimal, ptr %13, i64 0, i32 2
  %313 = load i32, ptr %312, align 4, !tbaa !26
  %314 = sub i32 0, %313
  call void @dump_int(ptr noundef nonnull %0, ptr noundef nonnull @.str.63, i32 noundef %314) #19
  br label %315

315:                                              ; preds = %200, %200, %200, %200, %311
  %316 = load i64, ptr %13, align 8
  %317 = and i64 %316, 65535
  %318 = icmp eq i64 %317, 34
  %319 = getelementptr inbounds %struct.tree_decl_common, ptr %13, i64 0, i32 5
  %320 = load ptr, ptr %319, align 8, !tbaa !26
  %321 = select i1 %318, ptr @.str.64, ptr @.str.65
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull %321, ptr noundef %320, i32 noundef 0) #19
  %322 = getelementptr inbounds %struct.tree_decl_common, ptr %13, i64 0, i32 1
  %323 = load ptr, ptr %322, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.34, ptr noundef %323, i32 noundef 0) #19
  %324 = getelementptr inbounds %struct.tree_decl_common, ptr %13, i64 0, i32 3
  %325 = load i32, ptr %324, align 8, !tbaa !26
  call void @dump_int(ptr noundef nonnull %0, ptr noundef nonnull @.str.35, i32 noundef %325) #19
  %326 = load i64, ptr %13, align 8
  %327 = trunc i64 %326 to i16
  switch i16 %327, label %527 [
    i16 31, label %328
    i16 32, label %334
    i16 34, label %334
  ]

328:                                              ; preds = %315
  %329 = getelementptr inbounds %struct.tree_field_decl, ptr %13, i64 0, i32 1
  %330 = load ptr, ptr %329, align 8, !tbaa !26
  %331 = icmp eq ptr %330, null
  br i1 %331, label %527, label %332

332:                                              ; preds = %328
  %333 = call ptr @bit_position(ptr noundef nonnull %13) #18
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.66, ptr noundef %333, i32 noundef 0) #19
  br label %527

334:                                              ; preds = %315, %315
  %335 = trunc i64 %326 to i32
  %336 = lshr i32 %335, 24
  %337 = and i32 %336, 1
  call void @dump_int(ptr noundef nonnull %0, ptr noundef nonnull @.str.67, i32 noundef %337) #19
  %338 = getelementptr inbounds %struct.tree_decl_common, ptr %13, i64 0, i32 2
  %339 = load i64, ptr %338, align 8
  %340 = and i64 %339, 16777216
  %341 = icmp eq i64 %340, 0
  br i1 %341, label %527, label %342

342:                                              ; preds = %334
  call void @dump_string_field(ptr noundef nonnull %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.68) #19
  br label %527

343:                                              ; preds = %200
  %344 = getelementptr inbounds %struct.tree_decl_non_common, ptr %13, i64 0, i32 2
  %345 = load ptr, ptr %344, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.69, ptr noundef %345, i32 noundef 0) #19
  %346 = getelementptr inbounds %struct.tree_decl_common, ptr %13, i64 0, i32 2
  %347 = load i64, ptr %346, align 8
  %348 = and i64 %347, 33554432
  %349 = icmp eq i64 %348, 0
  br i1 %349, label %351, label %350

350:                                              ; preds = %343
  call void @dump_string_field(ptr noundef nonnull %0, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71) #19
  br label %351

351:                                              ; preds = %350, %343
  %352 = load i64, ptr %13, align 8
  %353 = and i64 %352, 134217728
  %354 = icmp eq i64 %353, 0
  %355 = select i1 %354, ptr @.str.74, ptr @.str.73
  call void @dump_string_field(ptr noundef nonnull %0, ptr noundef nonnull @.str.72, ptr noundef nonnull %355) #19
  %356 = getelementptr inbounds %struct.tree_decl_non_common, ptr %13, i64 0, i32 1
  %357 = load ptr, ptr %356, align 8, !tbaa !26
  %358 = icmp eq ptr %357, null
  br i1 %358, label %527, label %359

359:                                              ; preds = %351
  %360 = call i32 @dump_flag(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull %13) #19, !range !35
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %527

362:                                              ; preds = %359
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.70, ptr noundef nonnull %357, i32 noundef 0) #19
  br label %527

363:                                              ; preds = %200
  %364 = getelementptr inbounds %struct.tree_int_cst, ptr %13, i64 0, i32 1
  %365 = getelementptr inbounds %struct.tree_int_cst, ptr %13, i64 0, i32 1, i32 1
  %366 = load i64, ptr %365, align 8, !tbaa !26
  %367 = icmp eq i64 %366, 0
  br i1 %367, label %370, label %368

368:                                              ; preds = %363
  %369 = trunc i64 %366 to i32
  call void @dump_int(ptr noundef nonnull %0, ptr noundef nonnull @.str.75, i32 noundef %369) #19
  br label %370

370:                                              ; preds = %368, %363
  %371 = load i64, ptr %364, align 8, !tbaa !26
  %372 = trunc i64 %371 to i32
  call void @dump_int(ptr noundef nonnull %0, ptr noundef nonnull @.str.76, i32 noundef %372) #19
  br label %527

373:                                              ; preds = %200
  %374 = load ptr, ptr %0, align 8, !tbaa !17
  %375 = getelementptr inbounds %struct.tree_string, ptr %13, i64 0, i32 2
  %376 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %374, ptr noundef nonnull @.str.77, ptr noundef nonnull %375) #19
  %377 = getelementptr inbounds %struct.tree_string, ptr %13, i64 0, i32 1
  %378 = load i32, ptr %377, align 8, !tbaa !26
  call void @dump_int(ptr noundef nonnull %0, ptr noundef nonnull @.str.37, i32 noundef %378) #19
  br label %527

379:                                              ; preds = %200
  %380 = getelementptr inbounds %struct.tree_real_cst, ptr %13, i64 0, i32 1
  %381 = load ptr, ptr %380, align 8, !tbaa !26
  call fastcc void @dump_real(ptr noundef nonnull %0, ptr noundef %381) #19
  br label %527

382:                                              ; preds = %200
  %383 = getelementptr inbounds %struct.tree_fixed_cst, ptr %13, i64 0, i32 1
  %384 = load ptr, ptr %383, align 8, !tbaa !26
  call fastcc void @dump_fixed(ptr noundef nonnull %0, ptr noundef %384) #19
  br label %527

385:                                              ; preds = %200, %200, %200, %200, %200, %200, %200, %200, %200
  %386 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %387 = load ptr, ptr %386, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.22, ptr noundef %387, i32 noundef 0) #19
  br label %527

388:                                              ; preds = %200, %200, %200, %200, %200, %200, %200, %200, %200
  %389 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %390 = load ptr, ptr %389, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.22, ptr noundef %390, i32 noundef 0) #19
  %391 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 1
  %392 = load ptr, ptr %391, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.23, ptr noundef %392, i32 noundef 0) #19
  br label %527

393:                                              ; preds = %200
  %394 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %395 = load ptr, ptr %394, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.22, ptr noundef %395, i32 noundef 0) #19
  %396 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 1
  %397 = load ptr, ptr %396, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.23, ptr noundef %397, i32 noundef 0) #19
  %398 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 1, i32 0, i32 1
  %399 = load ptr, ptr %398, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.78, ptr noundef %399, i32 noundef 0) #19
  br label %527

400:                                              ; preds = %200, %200
  %401 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %402 = load ptr, ptr %401, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.22, ptr noundef %402, i32 noundef 0) #19
  %403 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 1
  %404 = load ptr, ptr %403, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.23, ptr noundef %404, i32 noundef 0) #19
  %405 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 1, i32 0, i32 1
  %406 = load ptr, ptr %405, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.78, ptr noundef %406, i32 noundef 0) #19
  %407 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 1, i32 0, i32 2
  %408 = load ptr, ptr %407, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.79, ptr noundef %408, i32 noundef 0) #19
  br label %527

409:                                              ; preds = %200
  %410 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %411 = load ptr, ptr %410, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.22, ptr noundef %411, i32 noundef 0) #19
  %412 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 1
  %413 = load ptr, ptr %412, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.23, ptr noundef %413, i32 noundef 0) #19
  %414 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 1, i32 0, i32 1
  %415 = load ptr, ptr %414, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.78, ptr noundef %415, i32 noundef 0) #19
  br label %527

416:                                              ; preds = %200
  %417 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %418 = load ptr, ptr %417, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.22, ptr noundef %418, i32 noundef 0) #19
  %419 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 1
  %420 = load ptr, ptr %419, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.23, ptr noundef %420, i32 noundef 0) #19
  br label %527

421:                                              ; preds = %200
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #20
  %422 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 1
  %423 = load ptr, ptr %422, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.80, ptr noundef %423, i32 noundef 0) #19
  %424 = call fastcc ptr @first_call_expr_arg(ptr noundef nonnull %13, ptr noundef nonnull %7) #19
  %425 = icmp eq ptr %424, null
  br i1 %425, label %433, label %426

426:                                              ; preds = %421, %426
  %427 = phi ptr [ %431, %426 ], [ %424, %421 ]
  %428 = phi i32 [ %430, %426 ], [ 0, %421 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #20
  %429 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) @.str.40, i32 noundef %428) #19
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull %8, ptr noundef nonnull %427, i32 noundef 0) #19
  %430 = add nuw nsw i32 %428, 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #20
  %431 = call fastcc ptr @next_call_expr_arg(ptr noundef nonnull %7) #19
  %432 = icmp eq ptr %431, null
  br i1 %432, label %433, label %426, !llvm.loop !52

433:                                              ; preds = %426, %421
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #20
  br label %527

434:                                              ; preds = %200
  %435 = getelementptr inbounds %struct.tree_constructor, ptr %13, i64 0, i32 1
  %436 = load ptr, ptr %435, align 8, !tbaa !26
  %437 = call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %436) #19
  call void @dump_int(ptr noundef nonnull %0, ptr noundef nonnull @.str.37, i32 noundef %437) #19
  %438 = load ptr, ptr %435, align 8, !tbaa !26
  %439 = call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %438) #19
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %527, label %441

441:                                              ; preds = %434, %441
  %442 = phi ptr [ %450, %441 ], [ %438, %434 ]
  %443 = phi i64 [ %449, %441 ], [ 0, %434 ]
  %444 = trunc i64 %443 to i32
  %445 = call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %442, i32 noundef %444) #19
  %446 = getelementptr inbounds %struct.constructor_elt_d, ptr %445, i64 0, i32 1
  %447 = load ptr, ptr %446, align 8, !tbaa !53
  %448 = load ptr, ptr %445, align 8, !tbaa !55
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.81, ptr noundef %448, i32 noundef 0) #19
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.82, ptr noundef %447, i32 noundef 0) #19
  %449 = add nuw nsw i64 %443, 1
  %450 = load ptr, ptr %435, align 8, !tbaa !26
  %451 = call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %450) #19
  %452 = zext i32 %451 to i64
  %453 = icmp ult i64 %449, %452
  br i1 %453, label %441, label %527, !llvm.loop !56

454:                                              ; preds = %200
  %455 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %456 = load ptr, ptr %455, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.83, ptr noundef %456, i32 noundef 0) #19
  %457 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 1
  %458 = load ptr, ptr %457, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.70, ptr noundef %458, i32 noundef 0) #19
  br label %527

459:                                              ; preds = %200
  %460 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %461 = load ptr, ptr %460, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.70, ptr noundef %461, i32 noundef 0) #19
  br label %527

462:                                              ; preds = %200
  %463 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %464 = load ptr, ptr %463, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.84, ptr noundef %464, i32 noundef 0) #19
  br label %527

465:                                              ; preds = %200
  %466 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %467 = load ptr, ptr %466, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.85, ptr noundef %467, i32 noundef 0) #19
  br label %527

468:                                              ; preds = %200
  %469 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %470 = load ptr, ptr %469, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.86, ptr noundef %470, i32 noundef 0) #19
  %471 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 1
  %472 = load ptr, ptr %471, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.65, ptr noundef %472, i32 noundef 0) #19
  %473 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 1, i32 0, i32 1
  %474 = load ptr, ptr %473, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.87, ptr noundef %474, i32 noundef 0) #19
  %475 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 1, i32 0, i32 2
  %476 = load ptr, ptr %475, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.65, ptr noundef %476, i32 noundef 0) #19
  br label %527

477:                                              ; preds = %200
  %478 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %479 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 1, i32 0, i32 1
  %480 = load ptr, ptr %479, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.24, ptr noundef %480, i32 noundef 0) #19
  %481 = load ptr, ptr %478, align 8, !tbaa !26
  %482 = icmp eq ptr %481, null
  br i1 %482, label %527, label %483

483:                                              ; preds = %477
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.88, ptr noundef nonnull %481, i32 noundef 0) #19
  %484 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 1
  %485 = load ptr, ptr %484, align 8, !tbaa !26
  %486 = icmp eq ptr %485, null
  br i1 %486, label %527, label %487

487:                                              ; preds = %483
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.75, ptr noundef nonnull %485, i32 noundef 0) #19
  br label %527

488:                                              ; preds = %200
  %489 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %490 = load ptr, ptr %489, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.24, ptr noundef %490, i32 noundef 0) #19
  br label %527

491:                                              ; preds = %200
  %492 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %493 = load ptr, ptr %492, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.89, ptr noundef %493, i32 noundef 0) #19
  br label %527

494:                                              ; preds = %200
  %495 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %496 = load ptr, ptr %495, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.84, ptr noundef %496, i32 noundef 0) #19
  %497 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 1
  %498 = load ptr, ptr %497, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.70, ptr noundef %498, i32 noundef 0) #19
  %499 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 1, i32 0, i32 1
  %500 = load ptr, ptr %499, align 8, !tbaa !26
  %501 = icmp eq ptr %500, null
  br i1 %501, label %527, label %502

502:                                              ; preds = %494
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.89, ptr noundef nonnull %500, i32 noundef 0) #19
  br label %527

503:                                              ; preds = %200
  %504 = load ptr, ptr %0, align 8, !tbaa !17
  %505 = getelementptr inbounds %struct.tree_omp_clause, ptr %13, i64 0, i32 2
  %506 = load i32, ptr %505, align 4, !tbaa !26
  %507 = zext i32 %506 to i64
  %508 = getelementptr inbounds [0 x ptr], ptr @omp_clause_code_name, i64 0, i64 %507
  %509 = load ptr, ptr %508, align 8, !tbaa !25
  %510 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %504, ptr noundef nonnull @.str.90, ptr noundef %509) #19
  %511 = load i32, ptr %505, align 4, !tbaa !26
  %512 = zext i32 %511 to i64
  %513 = getelementptr inbounds [0 x i8], ptr @omp_clause_num_ops, i64 0, i64 %512
  %514 = load i8, ptr %513, align 1, !tbaa !26
  %515 = icmp eq i8 %514, 0
  br i1 %515, label %527, label %516

516:                                              ; preds = %503, %516
  %517 = phi i64 [ %520, %516 ], [ 0, %503 ]
  %518 = getelementptr inbounds %struct.tree_omp_clause, ptr %13, i64 0, i32 6, i64 %517
  %519 = load ptr, ptr %518, align 8, !tbaa !26
  call void @queue_and_dump_index(ptr noundef nonnull %0, ptr noundef nonnull @.str.91, ptr noundef %519, i32 noundef 0) #19
  %520 = add nuw nsw i64 %517, 1
  %521 = load i32, ptr %505, align 4, !tbaa !26
  %522 = zext i32 %521 to i64
  %523 = getelementptr inbounds [0 x i8], ptr @omp_clause_num_ops, i64 0, i64 %522
  %524 = load i8, ptr %523, align 1, !tbaa !26
  %525 = zext i8 %524 to i64
  %526 = icmp ult i64 %520, %525
  br i1 %526, label %516, label %527, !llvm.loop !57

527:                                              ; preds = %516, %441, %236, %503, %434, %231, %315, %202, %207, %230, %262, %266, %278, %281, %287, %292, %297, %308, %370, %373, %379, %382, %385, %388, %393, %400, %409, %416, %433, %454, %459, %462, %465, %468, %488, %491, %259, %246, %342, %334, %328, %332, %362, %359, %351, %483, %487, %477, %502, %494, %200, %196, %82
  %528 = call i32 @dump_flag(ptr noundef nonnull %0, i32 noundef 1, ptr noundef null) #19, !range !35
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %531, label %530

530:                                              ; preds = %527
  call void @dump_pointer(ptr noundef nonnull %0, ptr noundef nonnull @.str.92, ptr noundef %13) #19
  br label %531

531:                                              ; preds = %530, %527
  %532 = load ptr, ptr %0, align 8, !tbaa !17
  %533 = call i32 @fputc(i32 10, ptr %532)
  ret void
}

; Function Attrs: optsize
declare void @splay_tree_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !58
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_tree_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !58
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !25
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !25
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  ret ptr %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc { ptr, ptr } @tsi_start(ptr noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.tree_statement_list, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !26
  %4 = insertvalue { ptr, ptr } poison, ptr %3, 0
  %5 = insertvalue { ptr, ptr } %4, ptr %0, 1
  ret { ptr, ptr } %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @tsi_end_p(ptr readnone %0) unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @tsi_stmt(ptr nocapture readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.tree_statement_list_node, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @tsi_next(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !62
  %3 = getelementptr inbounds %struct.tree_statement_list_node, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  store ptr %4, ptr %0, align 8, !tbaa !62
  ret void
}

; Function Attrs: optsize
declare ptr @bit_position(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_real(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  call void @real_to_decimal(ptr noundef nonnull %3, ptr noundef %1, i64 noundef 32, i64 noundef 0, i32 noundef 1) #18
  call fastcc void @dump_maybe_newline(ptr noundef %0) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !17
  %5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.39, ptr noundef nonnull %3) #19
  %6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #19
  %7 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !18
  %9 = trunc i64 %6 to i32
  %10 = add i32 %9, 7
  %11 = add i32 %10, %8
  store i32 %11, ptr %7, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_fixed(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #20
  call void @fixed_to_decimal(ptr noundef nonnull %3, ptr noundef %1, i64 noundef 32) #18
  call fastcc void @dump_maybe_newline(ptr noundef %0) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !17
  %5 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.39, ptr noundef nonnull %3) #19
  %6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #19
  %7 = getelementptr inbounds %struct.dump_info, ptr %0, i64 0, i32 4
  %8 = load i32, ptr %7, align 8, !tbaa !18
  %9 = trunc i64 %6 to i32
  %10 = add i32 %9, 7
  %11 = add i32 %10, %8
  store i32 %11, ptr %7, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @first_call_expr_arg(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #10 {
  tail call fastcc void @init_call_expr_arg_iterator(ptr noundef %0, ptr noundef %1) #19
  %3 = tail call fastcc ptr @next_call_expr_arg(ptr noundef %1) #19
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_call_expr_arg(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !65
  %4 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !67
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !68
  %9 = add nsw i32 %3, 3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !26
  %13 = add nsw i32 %3, 1
  store i32 %13, ptr %2, align 4, !tbaa !65
  br label %14

14:                                               ; preds = %1, %7
  %15 = phi ptr [ %12, %7 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_constructor_elt_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !69
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_constructor_elt_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #9 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare void @real_to_decimal(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fixed_to_decimal(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @init_call_expr_arg_iterator(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #10 {
  store ptr %0, ptr %1, align 8, !tbaa !68
  %3 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !26
  %5 = getelementptr inbounds %struct.tree_int_cst, ptr %4, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !26
  %7 = trunc i64 %6 to i32
  %8 = add nsw i32 %7, -3
  %9 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %1, i64 0, i32 1
  store i32 %8, ptr %9, align 8, !tbaa !67
  %10 = getelementptr inbounds %struct.call_expr_arg_iterator_d, ptr %1, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !65
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @dump_register(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = load i32, ptr @dump_register.next_dump, align 4, !tbaa !34
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr @dump_register.next_dump, align 4, !tbaa !34
  %7 = load i64, ptr @extra_dump_files_in_use, align 8, !tbaa !71
  %8 = add i64 %7, 1
  store i64 %8, ptr @extra_dump_files_in_use, align 8, !tbaa !71
  %9 = load i64, ptr @extra_dump_files_alloced, align 8, !tbaa !71
  %10 = icmp ult i64 %7, %9
  %11 = load ptr, ptr @extra_dump_files, align 8, !tbaa !25
  br i1 %10, label %18, label %12

12:                                               ; preds = %4
  %13 = icmp eq i64 %9, 0
  %14 = shl i64 %9, 1
  %15 = select i1 %13, i64 32, i64 %14
  store i64 %15, ptr @extra_dump_files_alloced, align 8, !tbaa !71
  %16 = mul i64 %15, 40
  %17 = tail call ptr @xrealloc(ptr noundef %11, i64 noundef %16) #18
  store ptr %17, ptr @extra_dump_files, align 8, !tbaa !25
  br label %18

18:                                               ; preds = %12, %4
  %19 = phi ptr [ %17, %12 ], [ %11, %4 ]
  %20 = getelementptr inbounds %struct.dump_file_info, ptr %19, i64 %7
  %21 = getelementptr inbounds i8, ptr %20, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %21, i8 0, i64 32, i1 false)
  store ptr %0, ptr %20, align 8, !tbaa !72
  %22 = getelementptr inbounds %struct.dump_file_info, ptr %19, i64 %7, i32 1
  store ptr %1, ptr %22, align 8, !tbaa !74
  %23 = getelementptr inbounds %struct.dump_file_info, ptr %19, i64 %7, i32 2
  store ptr %2, ptr %23, align 8, !tbaa !75
  %24 = getelementptr inbounds %struct.dump_file_info, ptr %19, i64 %7, i32 3
  store i32 %3, ptr %24, align 8, !tbaa !76
  %25 = getelementptr inbounds %struct.dump_file_info, ptr %19, i64 %7, i32 5
  store i32 %5, ptr %25, align 8, !tbaa !77
  %26 = trunc i64 %7 to i32
  %27 = add i32 %26, 11
  ret i32 %27
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @get_dump_file_info(i32 noundef %0) local_unnamed_addr #12 {
  %2 = icmp slt i32 %0, 11
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [11 x %struct.dump_file_info], ptr @dump_files, i64 0, i64 %4
  br label %14

6:                                                ; preds = %1
  %7 = add nsw i32 %0, -11
  %8 = zext nneg i32 %7 to i64
  %9 = load i64, ptr @extra_dump_files_in_use, align 8, !tbaa !71
  %10 = icmp ugt i64 %9, %8
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load ptr, ptr @extra_dump_files, align 8, !tbaa !25
  %13 = getelementptr inbounds %struct.dump_file_info, ptr %12, i64 %8
  br label %14

14:                                               ; preds = %6, %11, %3
  %15 = phi ptr [ %5, %3 ], [ %13, %11 ], [ null, %6 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_dump_file_name(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %2) #20
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @get_dump_file_info(i32 noundef %0) #19
  %6 = getelementptr inbounds %struct.dump_file_info, ptr %5, i64 0, i32 4
  %7 = load i32, ptr %6, align 4, !tbaa !78
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %30, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.dump_file_info, ptr %5, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !77
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i8 0, ptr %2, align 1, !tbaa !26
  br label %26

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.dump_file_info, ptr %5, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !76
  %17 = and i32 %16, 512
  %18 = icmp eq i32 %17, 0
  %19 = and i32 %16, 2048
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 114, i32 105
  %22 = select i1 %18, i32 %21, i32 116
  %23 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %2, i64 noundef 10, ptr noundef nonnull @.str.112, i32 noundef %11, i32 noundef %22) #19
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  store i8 0, ptr %2, align 1, !tbaa !26
  br label %26

26:                                               ; preds = %14, %25, %13
  %27 = load ptr, ptr @dump_base_name, align 8, !tbaa !25
  %28 = load ptr, ptr %5, align 8, !tbaa !72
  %29 = call ptr (ptr, ...) @concat(ptr noundef %27, ptr noundef nonnull %2, ptr noundef %28, ptr noundef null) #18
  br label %30

30:                                               ; preds = %4, %1, %26
  %31 = phi ptr [ %29, %26 ], [ null, %1 ], [ null, %4 ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %2) #20
  ret ptr %31
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @concat(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @dump_begin(i32 noundef %0, ptr noundef writeonly %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @dump_enabled_p(i32 noundef %0) #19
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @get_dump_file_name(i32 noundef %0) #19
  %9 = tail call ptr @get_dump_file_info(i32 noundef %0) #19
  %10 = getelementptr inbounds %struct.dump_file_info, ptr %9, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !78
  %12 = icmp slt i32 %11, 0
  %13 = select i1 %12, ptr @.str.113, ptr @.str.114
  %14 = tail call ptr @fopen_unlocked(ptr noundef %8, ptr noundef nonnull %13) #18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %7
  %17 = tail call ptr @__errno_location() #18
  %18 = load i32, ptr %17, align 4, !tbaa !34
  %19 = tail call ptr @strerror(i32 noundef %18) #18
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.115, ptr noundef %8, ptr noundef %19) #18
  br label %21

20:                                               ; preds = %7
  store i32 1, ptr %10, align 4, !tbaa !78
  br label %21

21:                                               ; preds = %20, %16
  tail call void @free(ptr noundef %8) #19
  %22 = icmp eq ptr %1, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.dump_file_info, ptr %9, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !76
  store i32 %25, ptr %1, align 4, !tbaa !34
  br label %26

26:                                               ; preds = %21, %23, %2, %4
  %27 = phi ptr [ null, %4 ], [ null, %2 ], [ %14, %23 ], [ %14, %21 ]
  ret ptr %27
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @dump_enabled_p(i32 noundef %0) local_unnamed_addr #13 {
  %2 = icmp eq i32 %0, 8
  br i1 %2, label %11, label %24

3:                                                ; preds = %11
  %4 = add nuw nsw i64 %12, 1
  %5 = icmp eq i64 %4, 11
  br i1 %5, label %6, label %11, !llvm.loop !79

6:                                                ; preds = %3
  %7 = load i64, ptr @extra_dump_files_in_use, align 8, !tbaa !71
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr @extra_dump_files, align 8, !tbaa !25
  br label %19

11:                                               ; preds = %1, %3
  %12 = phi i64 [ %4, %3 ], [ 1, %1 ]
  %13 = getelementptr inbounds [11 x %struct.dump_file_info], ptr @dump_files, i64 0, i64 %12, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !78
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %3, label %28

16:                                               ; preds = %19
  %17 = add nuw i64 %20, 1
  %18 = icmp eq i64 %17, %7
  br i1 %18, label %28, label %19, !llvm.loop !80

19:                                               ; preds = %9, %16
  %20 = phi i64 [ 0, %9 ], [ %17, %16 ]
  %21 = getelementptr inbounds %struct.dump_file_info, ptr %10, i64 %20, i32 4
  %22 = load i32, ptr %21, align 4, !tbaa !78
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %16, label %28

24:                                               ; preds = %1
  %25 = tail call ptr @get_dump_file_info(i32 noundef %0) #19
  %26 = getelementptr inbounds %struct.dump_file_info, ptr %25, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !78
  br label %28

28:                                               ; preds = %11, %16, %19, %6, %24
  %29 = phi i32 [ %27, %24 ], [ 0, %6 ], [ 0, %16 ], [ 1, %19 ], [ 1, %11 ]
  ret i32 %29
}

; Function Attrs: optsize
declare ptr @fopen_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @__errno_location() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @dump_initialized_p(i32 noundef %0) local_unnamed_addr #14 {
  %2 = tail call ptr @get_dump_file_info(i32 noundef %0) #19
  %3 = getelementptr inbounds %struct.dump_file_info, ptr %2, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !78
  %5 = icmp sgt i32 %4, 0
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @dump_flag_name(i32 noundef %0) local_unnamed_addr #14 {
  %2 = tail call ptr @get_dump_file_info(i32 noundef %0) #19
  %3 = getelementptr inbounds %struct.dump_file_info, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  ret ptr %4
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_end(i32 %0, ptr nocapture noundef %1) local_unnamed_addr #3 {
  %3 = tail call i32 @fclose(ptr noundef %1) #19
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @dump_switch_p(ptr noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %2
  %3 = phi i32 [ 0, %1 ], [ %7, %2 ]
  %4 = phi i64 [ 1, %1 ], [ %8, %2 ]
  %5 = getelementptr inbounds [11 x %struct.dump_file_info], ptr @dump_files, i64 0, i64 %4
  %6 = tail call fastcc i32 @dump_switch_p_1(ptr noundef %0, ptr noundef nonnull %5, i8 noundef zeroext 0) #19, !range !35
  %7 = or i32 %6, %3
  %8 = add nuw nsw i64 %4, 1
  %9 = icmp eq i64 %8, 11
  br i1 %9, label %10, label %2, !llvm.loop !81

10:                                               ; preds = %2
  %11 = icmp eq i32 %7, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %17, %12 ], [ 0, %10 ]
  %14 = phi i64 [ %18, %12 ], [ 1, %10 ]
  %15 = getelementptr inbounds [11 x %struct.dump_file_info], ptr @dump_files, i64 0, i64 %14
  %16 = tail call fastcc i32 @dump_switch_p_1(ptr noundef %0, ptr noundef nonnull %15, i8 noundef zeroext 1) #19, !range !35
  %17 = or i32 %16, %13
  %18 = add nuw nsw i64 %14, 1
  %19 = icmp eq i64 %18, 11
  br i1 %19, label %20, label %12, !llvm.loop !82

20:                                               ; preds = %12
  %21 = load i64, ptr @extra_dump_files_in_use, align 8, !tbaa !71
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %43, label %26

23:                                               ; preds = %10
  %24 = load i64, ptr @extra_dump_files_in_use, align 8, !tbaa !71
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %56, label %26

26:                                               ; preds = %23, %20
  %27 = phi i32 [ %17, %20 ], [ 1, %23 ]
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi i32 [ %34, %28 ], [ %27, %26 ]
  %30 = phi i64 [ %35, %28 ], [ 0, %26 ]
  %31 = load ptr, ptr @extra_dump_files, align 8, !tbaa !25
  %32 = getelementptr inbounds %struct.dump_file_info, ptr %31, i64 %30
  %33 = tail call fastcc i32 @dump_switch_p_1(ptr noundef %0, ptr noundef %32, i8 noundef zeroext 0) #19, !range !35
  %34 = or i32 %33, %29
  %35 = add nuw i64 %30, 1
  %36 = load i64, ptr @extra_dump_files_in_use, align 8, !tbaa !71
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %28, label %38, !llvm.loop !83

38:                                               ; preds = %28
  %39 = icmp eq i64 %36, 0
  %40 = icmp ne i32 %34, 0
  %41 = or i1 %40, %39
  %42 = zext i1 %40 to i32
  br i1 %41, label %56, label %46

43:                                               ; preds = %20
  %44 = icmp ne i32 %17, 0
  %45 = zext i1 %44 to i32
  br label %56

46:                                               ; preds = %38, %46
  %47 = phi i32 [ %52, %46 ], [ 0, %38 ]
  %48 = phi i64 [ %53, %46 ], [ 0, %38 ]
  %49 = load ptr, ptr @extra_dump_files, align 8, !tbaa !25
  %50 = getelementptr inbounds %struct.dump_file_info, ptr %49, i64 %48
  %51 = tail call fastcc i32 @dump_switch_p_1(ptr noundef %0, ptr noundef %50, i8 noundef zeroext 1) #19, !range !35
  %52 = or i32 %51, %47
  %53 = add nuw i64 %48, 1
  %54 = load i64, ptr @extra_dump_files_in_use, align 8, !tbaa !71
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %46, label %56, !llvm.loop !84

56:                                               ; preds = %46, %43, %38, %23
  %57 = phi i32 [ %42, %38 ], [ 1, %23 ], [ %45, %43 ], [ %52, %46 ]
  ret i32 %57
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @dump_switch_p_1(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = icmp eq i8 %2, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.dump_file_info, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !25
  %8 = icmp eq ptr %7, null
  br i1 %8, label %83, label %12

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.dump_file_info, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !25
  br label %12

12:                                               ; preds = %5, %9
  %13 = phi ptr [ %11, %9 ], [ %7, %5 ]
  %14 = getelementptr inbounds %struct.dump_file_info, ptr %1, i64 0, i32 2
  %15 = getelementptr inbounds %struct.dump_file_info, ptr %1, i64 0, i32 1
  %16 = select i1 %4, ptr %15, ptr %14
  %17 = load ptr, ptr %16, align 8, !tbaa !25
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #19
  %19 = tail call i32 @strncmp(ptr noundef %0, ptr noundef %13, i64 noundef %18) #19
  %20 = icmp ne i32 %19, 0
  %21 = icmp eq ptr %0, null
  %22 = or i1 %20, %21
  br i1 %22, label %83, label %23

23:                                               ; preds = %12
  %24 = getelementptr inbounds i8, ptr %0, i64 %18
  %25 = load i8, ptr %24, align 1, !tbaa !26
  switch i8 %25, label %83 [
    i8 0, label %73
    i8 45, label %26
  ]

26:                                               ; preds = %23, %69
  %27 = phi i8 [ %71, %69 ], [ %25, %23 ]
  %28 = phi i32 [ %70, %69 ], [ 0, %23 ]
  %29 = phi ptr [ %44, %69 ], [ %24, %23 ]
  %30 = icmp eq i8 %27, 45
  br i1 %30, label %31, label %36

31:                                               ; preds = %26, %31
  %32 = phi ptr [ %33, %31 ], [ %29, %26 ]
  %33 = getelementptr inbounds i8, ptr %32, i64 1
  %34 = load i8, ptr %33, align 1, !tbaa !26
  %35 = icmp eq i8 %34, 45
  br i1 %35, label %31, label %36, !llvm.loop !85

36:                                               ; preds = %31, %26
  %37 = phi ptr [ %29, %26 ], [ %33, %31 ]
  %38 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %37, i32 noundef 45) #19
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %37) #19
  %42 = getelementptr inbounds i8, ptr %37, i64 %41
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi ptr [ %38, %36 ], [ %42, %40 ]
  %45 = ptrtoint ptr %44 to i64
  %46 = ptrtoint ptr %37 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = and i64 %47, 4294967295
  br label %50

50:                                               ; preds = %43, %62
  %51 = phi ptr [ @.str.117, %43 ], [ %64, %62 ]
  %52 = phi ptr [ @dump_options, %43 ], [ %63, %62 ]
  %53 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %51) #19
  %54 = icmp eq i64 %53, %49
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = tail call i32 @bcmp(ptr nonnull %51, ptr nonnull %37, i64 %49)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.dump_option_value_info, ptr %52, i64 0, i32 1
  %60 = load i32, ptr %59, align 8, !tbaa !86
  %61 = or i32 %60, %28
  br label %69

62:                                               ; preds = %50, %55
  %63 = getelementptr inbounds %struct.dump_option_value_info, ptr %52, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !88
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %50, !llvm.loop !89

66:                                               ; preds = %62
  %67 = load ptr, ptr %15, align 8, !tbaa !74
  %68 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.116, i32 noundef %48, ptr noundef nonnull %37, ptr noundef %67) #18
  br label %69

69:                                               ; preds = %66, %58
  %70 = phi i32 [ %61, %58 ], [ %28, %66 ]
  %71 = load i8, ptr %44, align 1, !tbaa !26
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %26, !llvm.loop !90

73:                                               ; preds = %69, %23
  %74 = phi i32 [ 0, %23 ], [ %70, %69 ]
  %75 = getelementptr inbounds %struct.dump_file_info, ptr %1, i64 0, i32 4
  store i32 -1, ptr %75, align 4, !tbaa !78
  %76 = getelementptr inbounds %struct.dump_file_info, ptr %1, i64 0, i32 3
  %77 = load i32, ptr %76, align 8, !tbaa !76
  %78 = or i32 %77, %74
  store i32 %78, ptr %76, align 8, !tbaa !76
  %79 = load ptr, ptr %1, align 8, !tbaa !72
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = tail call fastcc i32 @dump_enable_all(i32 noundef %78) #19
  br label %83

83:                                               ; preds = %23, %12, %73, %81, %5
  %84 = phi i32 [ 0, %5 ], [ 0, %23 ], [ 1, %81 ], [ 1, %73 ], [ 0, %12 ]
  ret i32 %84
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @dump_enable_all(i32 noundef %0) unnamed_addr #15 {
  %2 = and i32 %0, 3584
  br label %8

3:                                                ; preds = %19
  %4 = load i64, ptr @extra_dump_files_in_use, align 8, !tbaa !71
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %38, label %6

6:                                                ; preds = %3
  %7 = load ptr, ptr @extra_dump_files, align 8, !tbaa !25
  br label %23

8:                                                ; preds = %1, %19
  %9 = phi i64 [ 1, %1 ], [ %21, %19 ]
  %10 = phi i32 [ 0, %1 ], [ %20, %19 ]
  %11 = getelementptr inbounds [11 x %struct.dump_file_info], ptr @dump_files, i64 0, i64 %9, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !76
  %13 = and i32 %12, %2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds [11 x %struct.dump_file_info], ptr @dump_files, i64 0, i64 %9, i32 4
  store i32 -1, ptr %16, align 4, !tbaa !78
  %17 = or i32 %12, %0
  store i32 %17, ptr %11, align 8, !tbaa !76
  %18 = add nsw i32 %10, 1
  br label %19

19:                                               ; preds = %8, %15
  %20 = phi i32 [ %18, %15 ], [ %10, %8 ]
  %21 = add nuw nsw i64 %9, 1
  %22 = icmp eq i64 %21, 11
  br i1 %22, label %3, label %8, !llvm.loop !91

23:                                               ; preds = %6, %34
  %24 = phi i64 [ 0, %6 ], [ %36, %34 ]
  %25 = phi i32 [ %20, %6 ], [ %35, %34 ]
  %26 = getelementptr inbounds %struct.dump_file_info, ptr %7, i64 %24, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !76
  %28 = and i32 %27, %2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.dump_file_info, ptr %7, i64 %24, i32 4
  store i32 -1, ptr %31, align 4, !tbaa !78
  %32 = or i32 %27, %0
  store i32 %32, ptr %26, align 8, !tbaa !76
  %33 = add nsw i32 %25, 1
  br label %34

34:                                               ; preds = %23, %30
  %35 = phi i32 [ %33, %30 ], [ %25, %23 ]
  %36 = add nuw i64 %24, 1
  %37 = icmp eq i64 %36, %4
  br i1 %37, label %38, label %23, !llvm.loop !92

38:                                               ; preds = %34, %3
  %39 = phi i32 [ %20, %3 ], [ %35, %34 ]
  ret i32 %39
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_function(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #20
  %4 = call ptr @dump_begin(i32 noundef %0, ptr noundef nonnull %3) #19
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %3, align 4, !tbaa !34
  call void @dump_function_to_file(ptr noundef %1, ptr noundef nonnull %4, i32 noundef %7) #18
  call void @dump_end(i32 poison, ptr noundef nonnull %4) #19
  br label %8

8:                                                ; preds = %6, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #20
  ret void
}

; Function Attrs: optsize
declare void @dump_function_to_file(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @enable_rtl_dump_file() local_unnamed_addr #15 {
  %1 = tail call fastcc i32 @dump_enable_all(i32 noundef 1064) #19
  %2 = icmp sgt i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nofree nounwind willreturn memory(argmem: read) }
attributes #18 = { nounwind optsize }
attributes #19 = { optsize }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 56}
!7 = !{!"dump_info", !8, i64 0, !8, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!13, !14, i64 8}
!13 = !{!"splay_tree_node_s", !14, i64 0, !14, i64 8, !8, i64 16, !8, i64 24}
!14 = !{!"long", !9, i64 0}
!15 = !{!16, !11, i64 0}
!16 = !{!"dump_node_info", !11, i64 0, !11, i64 4}
!17 = !{!7, !8, i64 0}
!18 = !{!7, !11, i64 24}
!19 = !{!7, !11, i64 20}
!20 = !{!7, !8, i64 48}
!21 = !{!22, !8, i64 8}
!22 = !{!"dump_queue", !8, i64 0, !8, i64 8}
!23 = !{!22, !8, i64 0}
!24 = !{!7, !8, i64 40}
!25 = !{!8, !8, i64 0}
!26 = !{!9, !9, i64 0}
!27 = !{!7, !11, i64 16}
!28 = !{!7, !8, i64 8}
!29 = !{!7, !8, i64 32}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.mustprogress"}
!32 = distinct !{!32, !31}
!33 = !{!13, !14, i64 0}
!34 = !{!11, !11, i64 0}
!35 = !{i32 0, i32 2}
!36 = distinct !{!36, !31}
!37 = !{i64 0, i64 8, !25, i64 8, i64 4, !34, i64 12, i64 4, !34, i64 16, i64 1, !26}
!38 = !{i64 0, i64 4, !34, i64 4, i64 4, !34, i64 8, i64 1, !26}
!39 = !{!40, !8, i64 264}
!40 = !{!"lang_hooks", !8, i64 0, !14, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !41, i64 240, !42, i64 248, !43, i64 256, !44, i64 272, !45, i64 432, !46, i64 560, !8, i64 584, !8, i64 592, !8, i64 600, !8, i64 608, !8, i64 616, !8, i64 624, !8, i64 632, !8, i64 640, !8, i64 648, !8, i64 656, !8, i64 664, !9, i64 672}
!41 = !{!"lang_hooks_for_tree_inlining", !8, i64 0}
!42 = !{!"lang_hooks_for_callgraph", !8, i64 0}
!43 = !{!"lang_hooks_for_tree_dump", !8, i64 0, !8, i64 8}
!44 = !{!"lang_hooks_for_decls", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152}
!45 = !{!"lang_hooks_for_types", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !9, i64 120}
!46 = !{!"lang_hooks_for_lto", !8, i64 0, !8, i64 8, !8, i64 16}
!47 = !{!40, !8, i64 256}
!48 = !{i64 0, i64 8, !25, i64 8, i64 8, !25}
!49 = !{i64 0, i64 8, !25}
!50 = distinct !{!50, !31}
!51 = distinct !{!51, !31}
!52 = distinct !{!52, !31}
!53 = !{!54, !8, i64 8}
!54 = !{!"constructor_elt_d", !8, i64 0, !8, i64 8}
!55 = !{!54, !8, i64 0}
!56 = distinct !{!56, !31}
!57 = distinct !{!57, !31}
!58 = !{!59, !11, i64 0}
!59 = !{!"VEC_tree_base", !11, i64 0, !11, i64 4, !9, i64 8}
!60 = !{!61, !8, i64 16}
!61 = !{!"tree_statement_list_node", !8, i64 0, !8, i64 8, !8, i64 16}
!62 = !{!63, !8, i64 0}
!63 = !{!"", !8, i64 0, !8, i64 8}
!64 = !{!61, !8, i64 8}
!65 = !{!66, !11, i64 12}
!66 = !{!"call_expr_arg_iterator_d", !8, i64 0, !11, i64 8, !11, i64 12}
!67 = !{!66, !11, i64 8}
!68 = !{!66, !8, i64 0}
!69 = !{!70, !11, i64 0}
!70 = !{!"VEC_constructor_elt_base", !11, i64 0, !11, i64 4, !9, i64 8}
!71 = !{!14, !14, i64 0}
!72 = !{!73, !8, i64 0}
!73 = !{!"dump_file_info", !8, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !11, i64 28, !11, i64 32}
!74 = !{!73, !8, i64 8}
!75 = !{!73, !8, i64 16}
!76 = !{!73, !11, i64 24}
!77 = !{!73, !11, i64 32}
!78 = !{!73, !11, i64 28}
!79 = distinct !{!79, !31}
!80 = distinct !{!80, !31}
!81 = distinct !{!81, !31}
!82 = distinct !{!82, !31}
!83 = distinct !{!83, !31}
!84 = distinct !{!84, !31}
!85 = distinct !{!85, !31}
!86 = !{!87, !11, i64 8}
!87 = !{!"dump_option_value_info", !8, i64 0, !11, i64 8}
!88 = !{!87, !8, i64 0}
!89 = distinct !{!89, !31}
!90 = distinct !{!90, !31}
!91 = distinct !{!91, !31}
!92 = distinct !{!92, !31}
