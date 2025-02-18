; ModuleID = 'gimple-pretty-print.c'
source_filename = "gimple-pretty-print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pretty_print_info = type { ptr, ptr, i32, i32, i32, %struct.pp_wrapping_mode_t, ptr, i8, i8, i8 }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.output_buffer = type { %struct.obstack, %struct.obstack, ptr, ptr, ptr, i32, [128 x i8] }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_omp = type { %struct.gimple_statement_base, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gimple_statement_bind = type { %struct.gimple_statement_base, ptr, ptr, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_label_decl = type { %struct.tree_decl_with_rtl, i32, i32 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_statement_try = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_statement_omp_parallel = type { %struct.gimple_statement_omp, ptr, ptr, ptr }
%struct.gimple_statement_omp_task = type { %struct.gimple_statement_omp_parallel, ptr, ptr, ptr }
%struct.gimple_statement_omp_atomic_load = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_omp_atomic_store = type { %struct.gimple_statement_base, ptr }
%struct.gimple_statement_omp_for = type { %struct.gimple_statement_omp, ptr, i64, ptr, ptr }
%struct.gimple_omp_for_iter = type { i32, ptr, ptr, ptr, ptr }
%struct.gimple_statement_omp_continue = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_omp_single = type { %struct.gimple_statement_omp, ptr }
%struct.gimple_statement_omp_sections = type { %struct.gimple_statement_omp, ptr, ptr }
%struct.gimple_statement_omp_critical = type { %struct.gimple_statement_omp, ptr }
%struct.gimple_statement_catch = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_eh_filter = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_eh_mnt = type { %struct.gimple_statement_base, ptr }
%struct.gimple_statement_eh_ctrl = type { %struct.gimple_statement_base, i32 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@buffer = internal global %struct.pretty_print_info zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"<&%p> \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"] \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"[LP %d] \00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"[MNT %d] \00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"GIMPLE_NOP\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"GIMPLE_SECTIONS_SWITCH\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"// predicted \00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"likely by \00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"unlikely by \00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c" predictor.\00", align 1
@initialized = internal unnamed_addr global i1 false, align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"# \00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c" = VDEF <\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"# VUSE <\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"%G <%+STRING <%n%s%n>\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"OUTPUT: \00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"INPUT: \00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"CLOBBER: \00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"LABEL: \00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"__asm__\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c" __volatile__\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c" goto\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"(\22\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"gimple-pretty-print.c\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c");\00", align 1
@gimple_code_name = external local_unnamed_addr constant [0 x ptr], align 8
@.str.31 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.33 = private unnamed_addr constant [20 x i8] c"%G <%s, %T, %T, %T>\00", align 1
@tree_code_name = external local_unnamed_addr constant [0 x ptr], align 8
@.str.34 = private unnamed_addr constant [5 x i8] c"{nt}\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"{v}\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.36 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"((\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"))\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"ABS_EXPR <\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@_sch_toupper = external local_unnamed_addr constant [256 x i8], align 16
@.str.40 = private unnamed_addr constant [3 x i8] c" <\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"%G <\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"%G <%T, %T\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c" =\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c" [static-chain: \00", align 1
@.str.46 = private unnamed_addr constant [28 x i8] c" [return slot optimization]\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c" [tail call]\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"__builtin_va_arg_pack ()\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"%G <%s, %T, %T, %T, %T>\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"if (\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c" goto \00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c" else goto \00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"%G <%T>\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c" [non-local]\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c" [LP %d]\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"goto %T;\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"%G <%T, \00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"switch (\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c") <\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"GIMPLE_TRY_CATCH\00", align 1
@.str.62 = private unnamed_addr constant [19 x i8] c"GIMPLE_TRY_FINALLY\00", align 1
@.str.63 = private unnamed_addr constant [19 x i8] c"UNKNOWN GIMPLE_TRY\00", align 1
@.str.64 = private unnamed_addr constant [36 x i8] c"%G <%s,%+EVAL <%S>%nCLEANUP <%S>%->\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"try\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"catch\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"finally\00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c" <UNKNOWN GIMPLE_TRY> {\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c" = PHI <\00", align 1
@.str.70 = private unnamed_addr constant [27 x i8] c"%G <%+BODY <%S>%nCLAUSES <\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c" >, %T, %T%n>\00", align 1
@.str.72 = private unnamed_addr constant [21 x i8] c"#pragma omp parallel\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c" [child fn: \00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c")]\00", align 1
@.str.76 = private unnamed_addr constant [26 x i8] c" >, %T, %T, %T, %T, %T%n>\00", align 1
@.str.77 = private unnamed_addr constant [17 x i8] c"#pragma omp task\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"%G <%T, %T>\00", align 1
@.str.79 = private unnamed_addr constant [24 x i8] c"#pragma omp atomic_load\00", align 1
@.str.80 = private unnamed_addr constant [27 x i8] c"#pragma omp atomic_store (\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c" >,\00", align 1
@.str.82 = private unnamed_addr constant [24 x i8] c"%+%T, %T, %T, %s, %T,%n\00", align 1
@.str.83 = private unnamed_addr constant [17 x i8] c"PRE_BODY <%S>%->\00", align 1
@.str.84 = private unnamed_addr constant [16 x i8] c"#pragma omp for\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"for (\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.90 = private unnamed_addr constant [23 x i8] c"#pragma omp continue (\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c" >\00", align 1
@.str.92 = private unnamed_addr constant [19 x i8] c"#pragma omp single\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"%G <nowait=%d>\00", align 1
@.str.94 = private unnamed_addr constant [19 x i8] c"#pragma omp return\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"(nowait)\00", align 1
@.str.96 = private unnamed_addr constant [21 x i8] c"#pragma omp sections\00", align 1
@.str.97 = private unnamed_addr constant [18 x i8] c"%G <%+BODY <%S> >\00", align 1
@.str.98 = private unnamed_addr constant [19 x i8] c"#pragma omp master\00", align 1
@.str.99 = private unnamed_addr constant [20 x i8] c"#pragma omp ordered\00", align 1
@.str.100 = private unnamed_addr constant [20 x i8] c"#pragma omp section\00", align 1
@.str.101 = private unnamed_addr constant [21 x i8] c"#pragma omp critical\00", align 1
@.str.102 = private unnamed_addr constant [24 x i8] c"%G <%T, %+CATCH <%S>%->\00", align 1
@.str.103 = private unnamed_addr constant [17 x i8] c"catch (%T)%+{%S}\00", align 1
@.str.104 = private unnamed_addr constant [26 x i8] c"%G <%T, %+FAILURE <%S>%->\00", align 1
@.str.105 = private unnamed_addr constant [31 x i8] c"<<<eh_filter (%T)>>>%+{%+%S%-}\00", align 1
@.str.106 = private unnamed_addr constant [29 x i8] c"<<<eh_must_not_throw (%T)>>>\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c"%G <%d>\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"resx %d\00", align 1
@.str.109 = private unnamed_addr constant [15 x i8] c"eh_dispatch %d\00", align 1
@.str.110 = private unnamed_addr constant [17 x i8] c"%G BIND <%T, %T>\00", align 1
@.str.111 = private unnamed_addr constant [17 x i8] c"# DEBUG %T => %T\00", align 1
@.str.112 = private unnamed_addr constant [38 x i8] c"<<< Unknown GIMPLE statement: %s >>>\0A\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.113 = private unnamed_addr constant [9 x i8] c"# BLOCK \00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c" freq:\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c" count:\00", align 1
@.str.116 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.117 = private unnamed_addr constant [20 x i8] c", starting at line \00", align 1
@.str.118 = private unnamed_addr constant [17 x i8] c", discriminator \00", align 1
@.str.119 = private unnamed_addr constant [8 x i8] c"# PRED:\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"ENTRY\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"<bb \00", align 1
@.str.122 = private unnamed_addr constant [3 x i8] c">:\00", align 1
@.str.123 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.124 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"goto <bb \00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"# SUCC:\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1

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
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
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
  %8 = tail call i32 @__uflow(ptr noundef %0) #14
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
  %8 = tail call i32 @__uflow(ptr noundef %1) #14
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
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
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #14
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
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #14
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
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #14
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
  %5 = tail call ptr @__ctype_tolower_loc() #14
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
  %5 = tail call ptr @__ctype_toupper_loc() #14
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
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #14
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
define dso_local void @debug_gimple_stmt(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !35
  tail call void @print_gimple_stmt(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef 16448)
  %3 = load ptr, ptr @stderr, align 8, !tbaa !35
  %4 = tail call i32 @fputc(i32 10, ptr %3)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @print_gimple_stmt(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !34 {
  %5 = load i1, ptr @initialized, align 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call void @pp_construct(ptr noundef nonnull @buffer, ptr noundef null, i32 noundef 0) #14
  store i8 1, ptr getelementptr inbounds (%struct.pretty_print_info, ptr @buffer, i64 0, i32 8), align 1, !tbaa !54
  store i1 true, ptr @initialized, align 1
  br label %7

7:                                                ; preds = %4, %6
  %8 = load ptr, ptr @buffer, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct.output_buffer, ptr %8, i64 0, i32 4
  store ptr %0, ptr %9, align 8, !tbaa !58
  tail call void @dump_gimple_stmt(ptr noundef nonnull @buffer, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  tail call void @pp_base_flush(ptr noundef nonnull @buffer) #14
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_gimple_stmt(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !34 {
  %5 = alloca %struct.expanded_location, align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %180, label %7

7:                                                ; preds = %4
  %8 = and i32 %3, 4096
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %1) #14
  br label %11

11:                                               ; preds = %10, %7
  %12 = and i32 %3, 128
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !46
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %37, label %18

18:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %5, i32 noundef %16) #14
  call void @pp_base_character(ptr noundef %0, i32 noundef 91) #14
  %19 = load ptr, ptr %5, align 8, !tbaa !61
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %19) #14
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.2) #14
  br label %22

22:                                               ; preds = %18, %21
  %23 = load ptr, ptr %0, align 8, !tbaa !57
  %24 = getelementptr inbounds %struct.output_buffer, ptr %23, i64 0, i32 6
  %25 = getelementptr inbounds %struct.expanded_location, ptr %5, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !63
  %27 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %26)
  %28 = load ptr, ptr %0, align 8, !tbaa !57
  %29 = getelementptr inbounds %struct.output_buffer, ptr %28, i64 0, i32 6
  call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %29) #14
  call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #14
  %30 = load ptr, ptr %0, align 8, !tbaa !57
  %31 = getelementptr inbounds %struct.output_buffer, ptr %30, i64 0, i32 6
  %32 = getelementptr inbounds %struct.expanded_location, ptr %5, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !64
  %34 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %33)
  %35 = load ptr, ptr %0, align 8, !tbaa !57
  %36 = getelementptr inbounds %struct.output_buffer, ptr %35, i64 0, i32 6
  call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %36) #14
  call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  br label %37

37:                                               ; preds = %22, %14, %11
  %38 = and i32 %3, 524288
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %37
  %41 = call i32 @lookup_stmt_eh_lp(ptr noundef %1) #14
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  call void (ptr, ptr, ...) @pp_printf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %41) #14
  br label %48

44:                                               ; preds = %40
  %45 = icmp slt i32 %41, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %44
  %47 = sub nsw i32 0, %41
  call void (ptr, ptr, ...) @pp_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %47) #14
  br label %48

48:                                               ; preds = %43, %46, %44, %37
  %49 = and i32 %3, 16448
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %93, label %51

51:                                               ; preds = %48
  %52 = load i32, ptr %1, align 8
  %53 = and i32 %52, 254
  %54 = add nsw i32 %53, -10
  %55 = icmp ult i32 %54, -4
  br i1 %55, label %93, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %1, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !46
  %59 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %1, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !46
  %61 = call zeroext i8 @ssa_operands_active() #14
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %93, label %63

63:                                               ; preds = %56
  %64 = load i32, ptr %1, align 8
  %65 = and i32 %64, 254
  %66 = add nsw i32 %65, -10
  %67 = icmp ult i32 %66, -4
  br i1 %67, label %93, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %1, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !46
  %71 = icmp eq ptr %70, null
  br i1 %71, label %93, label %72

72:                                               ; preds = %68
  %73 = icmp eq ptr %58, null
  br i1 %73, label %83, label %74

74:                                               ; preds = %72
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.14) #14
  %75 = add nsw i32 %2, 2
  %76 = call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %58, i32 noundef %75, i32 noundef %3, i8 noundef zeroext 0) #14
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.15) #14
  %77 = call i32 @dump_generic_node(ptr noundef %0, ptr noundef %60, i32 noundef %75, i32 noundef %3, i8 noundef zeroext 0) #14
  call void @pp_base_character(ptr noundef %0, i32 noundef 62) #14
  call void @pp_base_newline(ptr noundef %0) #14
  %78 = icmp sgt i32 %2, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %74, %79
  %80 = phi i32 [ %81, %79 ], [ 0, %74 ]
  call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %81 = add nuw nsw i32 %80, 1
  %82 = icmp eq i32 %81, %2
  br i1 %82, label %93, label %79, !llvm.loop !65

83:                                               ; preds = %72
  %84 = icmp eq ptr %60, null
  br i1 %84, label %93, label %85

85:                                               ; preds = %83
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.16) #14
  %86 = add nsw i32 %2, 2
  %87 = call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %60, i32 noundef %86, i32 noundef %3, i8 noundef zeroext 0) #14
  call void @pp_base_character(ptr noundef %0, i32 noundef 62) #14
  call void @pp_base_newline(ptr noundef %0) #14
  %88 = icmp sgt i32 %2, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %85, %89
  %90 = phi i32 [ %91, %89 ], [ 0, %85 ]
  call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %91 = add nuw nsw i32 %90, 1
  %92 = icmp eq i32 %91, %2
  br i1 %92, label %93, label %89, !llvm.loop !65

93:                                               ; preds = %79, %89, %74, %85, %83, %68, %56, %63, %51, %48
  %94 = load i32, ptr %1, align 8
  %95 = trunc i32 %94 to i8
  switch i8 %95, label %171 [
    i8 7, label %96
    i8 6, label %97
    i8 10, label %98
    i8 8, label %99
    i8 1, label %100
    i8 4, label %101
    i8 3, label %102
    i8 18, label %103
    i8 9, label %104
    i8 5, label %105
    i8 17, label %106
    i8 16, label %107
    i8 26, label %108
    i8 27, label %109
    i8 19, label %110
    i8 20, label %111
    i8 23, label %112
    i8 21, label %113
    i8 32, label %114
    i8 28, label %115
    i8 30, label %116
    i8 31, label %117
    i8 24, label %118
    i8 25, label %118
    i8 29, label %118
    i8 22, label %156
    i8 11, label %157
    i8 12, label %158
    i8 13, label %159
    i8 14, label %160
    i8 15, label %161
    i8 2, label %162
    i8 33, label %163
  ]

96:                                               ; preds = %93
  call fastcc void @dump_gimple_asm(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %176

97:                                               ; preds = %93
  call fastcc void @dump_gimple_assign(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %176

98:                                               ; preds = %93
  call fastcc void @dump_gimple_bind(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %176

99:                                               ; preds = %93
  call fastcc void @dump_gimple_call(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %176

100:                                              ; preds = %93
  call fastcc void @dump_gimple_cond(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %176

101:                                              ; preds = %93
  call fastcc void @dump_gimple_label(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %176

102:                                              ; preds = %93
  call fastcc void @dump_gimple_goto(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %176

103:                                              ; preds = %93
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.8) #14
  br label %176

104:                                              ; preds = %93
  call fastcc void @dump_gimple_return(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %176

105:                                              ; preds = %93
  call fastcc void @dump_gimple_switch(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %176

106:                                              ; preds = %93
  call fastcc void @dump_gimple_try(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %176

107:                                              ; preds = %93
  call fastcc void @dump_gimple_phi(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %176

108:                                              ; preds = %93
  call fastcc void @dump_gimple_omp_parallel(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %176

109:                                              ; preds = %93
  call fastcc void @dump_gimple_omp_task(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %176

110:                                              ; preds = %93
  call fastcc void @dump_gimple_omp_atomic_load(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %176

111:                                              ; preds = %93
  call fastcc void @dump_gimple_omp_atomic_store(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %176

112:                                              ; preds = %93
  call fastcc void @dump_gimple_omp_for(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %176

113:                                              ; preds = %93
  call fastcc void @dump_gimple_omp_continue(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %176

114:                                              ; preds = %93
  call fastcc void @dump_gimple_omp_single(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %176

115:                                              ; preds = %93
  call fastcc void @dump_gimple_omp_return(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %176

116:                                              ; preds = %93
  call fastcc void @dump_gimple_omp_sections(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %176

117:                                              ; preds = %93
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.9) #14
  br label %176

118:                                              ; preds = %93, %93, %93
  %119 = and i32 %3, 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !46
  call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.97, ptr noundef nonnull %1, ptr noundef %123)
  br label %176

124:                                              ; preds = %118
  switch i8 %95, label %128 [
    i8 24, label %125
    i8 25, label %126
    i8 29, label %127
  ]

125:                                              ; preds = %124
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.98) #14
  br label %129

126:                                              ; preds = %124
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.99) #14
  br label %129

127:                                              ; preds = %124
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.100) #14
  br label %129

128:                                              ; preds = %124
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1035, ptr noundef nonnull @.str.29) #14
  br label %129

129:                                              ; preds = %128, %127, %126, %125
  %130 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !46
  %132 = icmp eq ptr %131, null
  br i1 %132, label %176, label %133

133:                                              ; preds = %129
  %134 = load ptr, ptr %131, align 8, !tbaa !66
  %135 = icmp eq ptr %134, null
  br i1 %135, label %176, label %136

136:                                              ; preds = %133
  %137 = add i32 %2, 2
  call void @pp_base_newline(ptr noundef %0) #14
  %138 = icmp sgt i32 %2, -2
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = call i32 @llvm.smax.i32(i32 %137, i32 1)
  br label %141

141:                                              ; preds = %139, %141
  %142 = phi i32 [ %143, %141 ], [ 0, %139 ]
  call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %143 = add nuw nsw i32 %142, 1
  %144 = icmp eq i32 %143, %140
  br i1 %144, label %145, label %141, !llvm.loop !65

145:                                              ; preds = %141, %136
  call void @pp_base_character(ptr noundef %0, i32 noundef 123) #14
  call void @pp_base_newline(ptr noundef %0) #14
  %146 = load ptr, ptr %130, align 8, !tbaa !46
  %147 = add nsw i32 %2, 4
  call fastcc void @dump_gimple_seq(ptr noundef %0, ptr noundef %146, i32 noundef %147, i32 noundef %3)
  call void @pp_base_newline(ptr noundef %0) #14
  %148 = icmp sgt i32 %2, -2
  br i1 %148, label %149, label %155

149:                                              ; preds = %145
  %150 = call i32 @llvm.smax.i32(i32 %137, i32 1)
  br label %151

151:                                              ; preds = %149, %151
  %152 = phi i32 [ %153, %151 ], [ 0, %149 ]
  call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %153 = add nuw nsw i32 %152, 1
  %154 = icmp eq i32 %153, %150
  br i1 %154, label %155, label %151, !llvm.loop !65

155:                                              ; preds = %151, %145
  call void @pp_base_character(ptr noundef %0, i32 noundef 125) #14
  br label %176

156:                                              ; preds = %93
  call fastcc void @dump_gimple_omp_critical(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %176

157:                                              ; preds = %93
  call fastcc void @dump_gimple_catch(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %176

158:                                              ; preds = %93
  call fastcc void @dump_gimple_eh_filter(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %176

159:                                              ; preds = %93
  call fastcc void @dump_gimple_eh_must_not_throw(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %176

160:                                              ; preds = %93
  call fastcc void @dump_gimple_resx(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %176

161:                                              ; preds = %93
  call fastcc void @dump_gimple_eh_dispatch(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %176

162:                                              ; preds = %93
  call fastcc void @dump_gimple_debug(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %176

163:                                              ; preds = %93
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.10) #14
  %164 = load i32, ptr %1, align 8
  %165 = icmp sgt i32 %164, -1
  %166 = select i1 %165, ptr @.str.12, ptr @.str.11
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %166) #14
  %167 = load i32, ptr %1, align 8
  %168 = lshr i32 %167, 16
  %169 = and i32 %168, 32767
  %170 = call ptr @predictor_name(i32 noundef %169) #14
  call void @pp_base_string(ptr noundef %0, ptr noundef %170) #14
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.13) #14
  br label %176

171:                                              ; preds = %93
  %172 = and i32 %94, 255
  %173 = zext nneg i32 %172 to i64
  %174 = getelementptr inbounds [0 x ptr], ptr @gimple_code_name, i64 0, i64 %173
  %175 = load ptr, ptr %174, align 8, !tbaa !35
  call void (ptr, ptr, ...) @pp_printf(ptr noundef %0, ptr noundef nonnull @.str.112, ptr noundef %175) #14
  br label %176

176:                                              ; preds = %129, %155, %133, %121, %171, %163, %162, %161, %160, %159, %158, %157, %156, %117, %116, %115, %114, %113, %112, %111, %110, %109, %108, %107, %106, %105, %104, %103, %102, %101, %100, %99, %98, %97, %96
  %177 = and i32 %3, 32768
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  call void @pp_write_text_to_stream(ptr noundef %0) #14
  br label %180

180:                                              ; preds = %4, %179, %176
  ret void
}

declare void @pp_base_flush(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @print_gimple_expr(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !34 {
  %5 = load i1, ptr @initialized, align 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call void @pp_construct(ptr noundef nonnull @buffer, ptr noundef null, i32 noundef 0) #14
  store i8 1, ptr getelementptr inbounds (%struct.pretty_print_info, ptr @buffer, i64 0, i32 8), align 1, !tbaa !54
  store i1 true, ptr @initialized, align 1
  br label %7

7:                                                ; preds = %4, %6
  %8 = or i32 %3, 131072
  %9 = load ptr, ptr @buffer, align 8, !tbaa !57
  %10 = getelementptr inbounds %struct.output_buffer, ptr %9, i64 0, i32 4
  store ptr %0, ptr %10, align 8, !tbaa !58
  tail call void @dump_gimple_stmt(ptr noundef nonnull @buffer, ptr noundef %1, i32 noundef %2, i32 noundef %8)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @print_gimple_seq(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !34 {
  %5 = load i1, ptr @initialized, align 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %4
  tail call void @pp_construct(ptr noundef nonnull @buffer, ptr noundef null, i32 noundef 0) #14
  store i8 1, ptr getelementptr inbounds (%struct.pretty_print_info, ptr @buffer, i64 0, i32 8), align 1, !tbaa !54
  store i1 true, ptr @initialized, align 1
  br label %7

7:                                                ; preds = %4, %6
  %8 = load ptr, ptr @buffer, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct.output_buffer, ptr %8, i64 0, i32 4
  store ptr %0, ptr %9, align 8, !tbaa !58
  tail call fastcc void @dump_gimple_seq(ptr noundef nonnull @buffer, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  tail call void @pp_base_flush(ptr noundef nonnull @buffer) #14
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_gimple_seq(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %1, align 8, !tbaa !66, !noalias !68
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi ptr [ %7, %6 ], [ null, %4 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %8
  %12 = icmp sgt i32 %2, 0
  br label %13

13:                                               ; preds = %11, %25
  %14 = phi ptr [ %9, %11 ], [ %26, %25 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !71
  br i1 %12, label %16, label %20

16:                                               ; preds = %13, %16
  %17 = phi i32 [ %18, %16 ], [ 0, %13 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %18 = add nuw nsw i32 %17, 1
  %19 = icmp eq i32 %18, %2
  br i1 %19, label %20, label %16, !llvm.loop !73

20:                                               ; preds = %16, %13
  tail call void @dump_gimple_stmt(ptr noundef %0, ptr noundef %15, i32 noundef %2, i32 noundef %3)
  %21 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %14, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !74
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @pp_base_newline(ptr noundef %0) #14
  br label %25

25:                                               ; preds = %24, %20
  %26 = load ptr, ptr %21, align 8, !tbaa !74
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %13, !llvm.loop !75

28:                                               ; preds = %25, %8
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_gimple_seq(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !35
  tail call void @print_gimple_seq(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef 16448)
  ret void
}

declare void @pp_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

declare void @pp_base_character(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @pp_base_string(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare i32 @lookup_stmt_eh_lp(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_gimple_asm(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %229, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.gimple_statement_asm, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.17, ptr noundef %1, ptr noundef %9)
  %10 = getelementptr inbounds %struct.gimple_statement_asm, ptr %1, i64 0, i32 3
  %11 = load i8, ptr %10, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  %13 = icmp eq i8 %11, 0
  br i1 %13, label %62, label %14

14:                                               ; preds = %7
  tail call void @pp_base_newline(ptr noundef %0) #14
  %15 = icmp sgt i32 %2, -2
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = add i32 %2, 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi i32 [ %20, %18 ], [ 0, %16 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %20 = add nuw i32 %19, 1
  %21 = icmp eq i32 %19, %17
  br i1 %21, label %22, label %18, !llvm.loop !65

22:                                               ; preds = %18, %14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.18) #14
  %23 = getelementptr inbounds %struct.gimple_statement_asm, ptr %1, i64 0, i32 2
  %24 = add nsw i32 %12, -1
  %25 = tail call i32 @llvm.umax.i32(i32 %12, i32 1)
  br label %26

26:                                               ; preds = %22, %59
  %27 = phi i32 [ 0, %22 ], [ %60, %59 ]
  %28 = load i8, ptr %10, align 1, !tbaa !46
  %29 = zext i8 %28 to i32
  %30 = icmp ugt i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 2655, ptr noundef nonnull @.str.29) #14
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i8, ptr %23, align 8, !tbaa !46
  %34 = zext i8 %33 to i32
  %35 = add nuw i32 %27, %34
  %36 = load i32, ptr %1, align 8
  %37 = and i32 %36, 255
  %38 = add nsw i32 %37, -10
  %39 = icmp ult i32 %38, -9
  br i1 %39, label %54, label %40

40:                                               ; preds = %32
  %41 = zext nneg i32 %37 to i64
  %42 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !50
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %44
  %46 = load i64, ptr %45, align 8, !tbaa !76
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %49

49:                                               ; preds = %48, %40
  %50 = getelementptr inbounds i8, ptr %1, i64 %46
  %51 = zext i32 %35 to i64
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !35
  br label %54

54:                                               ; preds = %32, %49
  %55 = phi ptr [ %53, %49 ], [ null, %32 ]
  %56 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %55, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  %57 = icmp ult i32 %27, %24
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.19) #14
  br label %59

59:                                               ; preds = %54, %58
  %60 = add nuw nsw i32 %27, 1
  %61 = icmp eq i32 %60, %25
  br i1 %61, label %62, label %26, !llvm.loop !77

62:                                               ; preds = %59, %7
  %63 = getelementptr inbounds %struct.gimple_statement_asm, ptr %1, i64 0, i32 2
  %64 = load i8, ptr %63, align 8, !tbaa !46
  %65 = zext i8 %64 to i32
  %66 = icmp eq i8 %64, 0
  br i1 %66, label %112, label %67

67:                                               ; preds = %62
  tail call void @pp_base_newline(ptr noundef %0) #14
  %68 = icmp sgt i32 %2, -2
  br i1 %68, label %69, label %75

69:                                               ; preds = %67
  %70 = add i32 %2, 1
  br label %71

71:                                               ; preds = %69, %71
  %72 = phi i32 [ %73, %71 ], [ 0, %69 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %73 = add nuw i32 %72, 1
  %74 = icmp eq i32 %72, %70
  br i1 %74, label %75, label %71, !llvm.loop !65

75:                                               ; preds = %71, %67
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.20) #14
  %76 = add nsw i32 %65, -1
  %77 = zext i32 %76 to i64
  %78 = tail call i32 @llvm.umax.i32(i32 %65, i32 1)
  %79 = zext nneg i32 %78 to i64
  br label %80

80:                                               ; preds = %75, %109
  %81 = phi i64 [ 0, %75 ], [ %110, %109 ]
  %82 = load i8, ptr %63, align 8, !tbaa !46
  %83 = zext i8 %82 to i64
  %84 = icmp ugt i64 %81, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 2622, ptr noundef nonnull @.str.29) #14
  br label %86

86:                                               ; preds = %85, %80
  %87 = load i32, ptr %1, align 8
  %88 = and i32 %87, 255
  %89 = add nsw i32 %88, -10
  %90 = icmp ult i32 %89, -9
  br i1 %90, label %104, label %91

91:                                               ; preds = %86
  %92 = zext nneg i32 %88 to i64
  %93 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %92
  %94 = load i32, ptr %93, align 4, !tbaa !50
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %95
  %97 = load i64, ptr %96, align 8, !tbaa !76
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %100

100:                                              ; preds = %99, %91
  %101 = getelementptr inbounds i8, ptr %1, i64 %97
  %102 = getelementptr inbounds ptr, ptr %101, i64 %81
  %103 = load ptr, ptr %102, align 8, !tbaa !35
  br label %104

104:                                              ; preds = %86, %100
  %105 = phi ptr [ %103, %100 ], [ null, %86 ]
  %106 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %105, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  %107 = icmp ult i64 %81, %77
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.19) #14
  br label %109

109:                                              ; preds = %104, %108
  %110 = add nuw nsw i64 %81, 1
  %111 = icmp eq i64 %110, %79
  br i1 %111, label %112, label %80, !llvm.loop !78

112:                                              ; preds = %109, %62
  %113 = getelementptr inbounds %struct.gimple_statement_asm, ptr %1, i64 0, i32 4
  %114 = load i8, ptr %113, align 2, !tbaa !46
  %115 = zext i8 %114 to i32
  %116 = icmp eq i8 %114, 0
  br i1 %116, label %167, label %117

117:                                              ; preds = %112
  tail call void @pp_base_newline(ptr noundef %0) #14
  %118 = icmp sgt i32 %2, -2
  br i1 %118, label %119, label %125

119:                                              ; preds = %117
  %120 = add i32 %2, 1
  br label %121

121:                                              ; preds = %119, %121
  %122 = phi i32 [ %123, %121 ], [ 0, %119 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %123 = add nuw i32 %122, 1
  %124 = icmp eq i32 %122, %120
  br i1 %124, label %125, label %121, !llvm.loop !65

125:                                              ; preds = %121, %117
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.21) #14
  %126 = add nsw i32 %115, -1
  %127 = tail call i32 @llvm.umax.i32(i32 %115, i32 1)
  br label %128

128:                                              ; preds = %125, %164
  %129 = phi i32 [ 0, %125 ], [ %165, %164 ]
  %130 = load i8, ptr %113, align 2, !tbaa !46
  %131 = zext i8 %130 to i32
  %132 = icmp ugt i32 %129, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 2688, ptr noundef nonnull @.str.29) #14
  br label %134

134:                                              ; preds = %133, %128
  %135 = load i8, ptr %63, align 8, !tbaa !46
  %136 = zext i8 %135 to i32
  %137 = add nuw nsw i32 %129, %136
  %138 = load i8, ptr %10, align 1, !tbaa !46
  %139 = zext i8 %138 to i32
  %140 = add nuw nsw i32 %137, %139
  %141 = load i32, ptr %1, align 8
  %142 = and i32 %141, 255
  %143 = add nsw i32 %142, -10
  %144 = icmp ult i32 %143, -9
  br i1 %144, label %159, label %145

145:                                              ; preds = %134
  %146 = zext nneg i32 %142 to i64
  %147 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %146
  %148 = load i32, ptr %147, align 4, !tbaa !50
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %149
  %151 = load i64, ptr %150, align 8, !tbaa !76
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %145
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %154

154:                                              ; preds = %153, %145
  %155 = getelementptr inbounds i8, ptr %1, i64 %151
  %156 = zext nneg i32 %140 to i64
  %157 = getelementptr inbounds ptr, ptr %155, i64 %156
  %158 = load ptr, ptr %157, align 8, !tbaa !35
  br label %159

159:                                              ; preds = %134, %154
  %160 = phi ptr [ %158, %154 ], [ null, %134 ]
  %161 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %160, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  %162 = icmp ult i32 %129, %126
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.19) #14
  br label %164

164:                                              ; preds = %159, %163
  %165 = add nuw nsw i32 %129, 1
  %166 = icmp eq i32 %165, %127
  br i1 %166, label %167, label %128, !llvm.loop !79

167:                                              ; preds = %164, %112
  %168 = getelementptr inbounds %struct.gimple_statement_asm, ptr %1, i64 0, i32 5
  %169 = load i8, ptr %168, align 1, !tbaa !46
  %170 = zext i8 %169 to i32
  %171 = icmp eq i8 %169, 0
  br i1 %171, label %222, label %172

172:                                              ; preds = %167
  tail call void @pp_base_newline(ptr noundef %0) #14
  %173 = icmp sgt i32 %2, -2
  br i1 %173, label %174, label %180

174:                                              ; preds = %172
  %175 = add i32 %2, 1
  br label %176

176:                                              ; preds = %174, %176
  %177 = phi i32 [ %178, %176 ], [ 0, %174 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %178 = add nuw i32 %177, 1
  %179 = icmp eq i32 %177, %175
  br i1 %179, label %180, label %176, !llvm.loop !65

180:                                              ; preds = %176, %172
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.22) #14
  %181 = add nsw i32 %170, -1
  %182 = tail call i32 @llvm.umax.i32(i32 %170, i32 1)
  br label %183

183:                                              ; preds = %180, %219
  %184 = phi i32 [ 0, %180 ], [ %220, %219 ]
  %185 = load i8, ptr %168, align 1, !tbaa !46
  %186 = zext i8 %185 to i32
  %187 = icmp ugt i32 %184, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 2710, ptr noundef nonnull @.str.29) #14
  br label %189

189:                                              ; preds = %188, %183
  %190 = load i8, ptr %63, align 8, !tbaa !46
  %191 = zext i8 %190 to i32
  %192 = add nuw nsw i32 %184, %191
  %193 = load i8, ptr %113, align 2, !tbaa !46
  %194 = zext i8 %193 to i32
  %195 = add nuw nsw i32 %192, %194
  %196 = load i32, ptr %1, align 8
  %197 = and i32 %196, 255
  %198 = add nsw i32 %197, -10
  %199 = icmp ult i32 %198, -9
  br i1 %199, label %214, label %200

200:                                              ; preds = %189
  %201 = zext nneg i32 %197 to i64
  %202 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %201
  %203 = load i32, ptr %202, align 4, !tbaa !50
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %204
  %206 = load i64, ptr %205, align 8, !tbaa !76
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %200
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %209

209:                                              ; preds = %208, %200
  %210 = getelementptr inbounds i8, ptr %1, i64 %206
  %211 = zext nneg i32 %195 to i64
  %212 = getelementptr inbounds ptr, ptr %210, i64 %211
  %213 = load ptr, ptr %212, align 8, !tbaa !35
  br label %214

214:                                              ; preds = %189, %209
  %215 = phi ptr [ %213, %209 ], [ null, %189 ]
  %216 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %215, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  %217 = icmp ult i32 %184, %181
  br i1 %217, label %218, label %219

218:                                              ; preds = %214
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.19) #14
  br label %219

219:                                              ; preds = %214, %218
  %220 = add nuw nsw i32 %184, 1
  %221 = icmp eq i32 %220, %182
  br i1 %221, label %222, label %183, !llvm.loop !80

222:                                              ; preds = %219, %167
  tail call void @pp_base_newline(ptr noundef %0) #14
  %223 = icmp sgt i32 %2, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %222, %224
  %225 = phi i32 [ %226, %224 ], [ 0, %222 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %226 = add nuw nsw i32 %225, 1
  %227 = icmp eq i32 %226, %2
  br i1 %227, label %228, label %224, !llvm.loop !65

228:                                              ; preds = %224, %222
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 62) #14
  br label %448

229:                                              ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.23) #14
  %230 = load i32, ptr %1, align 8
  %231 = and i32 %230, 131072
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %234, label %233

233:                                              ; preds = %229
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.24) #14
  br label %234

234:                                              ; preds = %233, %229
  %235 = getelementptr inbounds %struct.gimple_statement_asm, ptr %1, i64 0, i32 5
  %236 = load i8, ptr %235, align 1, !tbaa !46
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %234
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.25) #14
  br label %239

239:                                              ; preds = %238, %234
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.26) #14
  %240 = getelementptr inbounds %struct.gimple_statement_asm, ptr %1, i64 0, i32 1
  %241 = load ptr, ptr %240, align 8, !tbaa !46
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %241) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.27) #14
  %242 = load i8, ptr %235, align 1, !tbaa !46
  %243 = icmp eq i8 %242, 0
  br i1 %243, label %244, label %257

244:                                              ; preds = %239
  %245 = getelementptr inbounds %struct.gimple_statement_asm, ptr %1, i64 0, i32 4
  %246 = load i8, ptr %245, align 2, !tbaa !46
  %247 = icmp eq i8 %246, 0
  br i1 %247, label %248, label %257

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.gimple_statement_asm, ptr %1, i64 0, i32 2
  %250 = load i8, ptr %249, align 8, !tbaa !46
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %248
  %253 = getelementptr inbounds %struct.gimple_statement_asm, ptr %1, i64 0, i32 3
  %254 = load i8, ptr %253, align 1, !tbaa !46
  %255 = icmp ne i8 %254, 0
  %256 = zext i1 %255 to i32
  br label %257

257:                                              ; preds = %252, %248, %244, %239
  %258 = phi i32 [ 4, %239 ], [ 3, %244 ], [ 2, %248 ], [ %256, %252 ]
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %447, label %260

260:                                              ; preds = %257
  %261 = getelementptr inbounds %struct.gimple_statement_asm, ptr %1, i64 0, i32 2
  %262 = getelementptr inbounds %struct.gimple_statement_asm, ptr %1, i64 0, i32 4
  %263 = getelementptr inbounds %struct.gimple_statement_asm, ptr %1, i64 0, i32 4
  %264 = getelementptr inbounds %struct.gimple_statement_asm, ptr %1, i64 0, i32 2
  %265 = getelementptr inbounds %struct.gimple_statement_asm, ptr %1, i64 0, i32 3
  %266 = getelementptr inbounds %struct.gimple_statement_asm, ptr %1, i64 0, i32 2
  %267 = getelementptr inbounds %struct.gimple_statement_asm, ptr %1, i64 0, i32 3
  %268 = getelementptr inbounds %struct.gimple_statement_asm, ptr %1, i64 0, i32 2
  br label %269

269:                                              ; preds = %260, %444
  %270 = phi i32 [ 0, %260 ], [ %445, %444 ]
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.2) #14
  switch i32 %270, label %443 [
    i32 0, label %271
    i32 1, label %313
    i32 2, label %353
    i32 3, label %398
  ]

271:                                              ; preds = %269
  %272 = load i8, ptr %267, align 1, !tbaa !46
  %273 = zext i8 %272 to i32
  %274 = icmp eq i8 %272, 0
  br i1 %274, label %444, label %275

275:                                              ; preds = %271
  %276 = add nsw i32 %273, -1
  br label %277

277:                                              ; preds = %275, %310
  %278 = phi i32 [ 0, %275 ], [ %311, %310 ]
  %279 = load i8, ptr %267, align 1, !tbaa !46
  %280 = zext i8 %279 to i32
  %281 = icmp ugt i32 %278, %280
  br i1 %281, label %282, label %283

282:                                              ; preds = %277
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 2655, ptr noundef nonnull @.str.29) #14
  br label %283

283:                                              ; preds = %282, %277
  %284 = load i8, ptr %268, align 8, !tbaa !46
  %285 = zext i8 %284 to i32
  %286 = add nuw i32 %278, %285
  %287 = load i32, ptr %1, align 8
  %288 = and i32 %287, 255
  %289 = add nsw i32 %288, -10
  %290 = icmp ult i32 %289, -9
  br i1 %290, label %305, label %291

291:                                              ; preds = %283
  %292 = zext nneg i32 %288 to i64
  %293 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %292
  %294 = load i32, ptr %293, align 4, !tbaa !50
  %295 = zext i32 %294 to i64
  %296 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %295
  %297 = load i64, ptr %296, align 8, !tbaa !76
  %298 = icmp eq i64 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %291
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %300

300:                                              ; preds = %299, %291
  %301 = getelementptr inbounds i8, ptr %1, i64 %297
  %302 = zext i32 %286 to i64
  %303 = getelementptr inbounds ptr, ptr %301, i64 %302
  %304 = load ptr, ptr %303, align 8, !tbaa !35
  br label %305

305:                                              ; preds = %283, %300
  %306 = phi ptr [ %304, %300 ], [ null, %283 ]
  %307 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %306, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  %308 = icmp ult i32 %278, %276
  br i1 %308, label %309, label %310

309:                                              ; preds = %305
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.19) #14
  br label %310

310:                                              ; preds = %305, %309
  %311 = add nuw nsw i32 %278, 1
  %312 = icmp eq i32 %311, %273
  br i1 %312, label %444, label %277, !llvm.loop !81

313:                                              ; preds = %269
  %314 = load i8, ptr %266, align 8, !tbaa !46
  %315 = icmp eq i8 %314, 0
  br i1 %315, label %444, label %316

316:                                              ; preds = %313
  %317 = zext i8 %314 to i64
  %318 = add nuw nsw i64 %317, 4294967295
  %319 = and i64 %318, 4294967295
  %320 = zext i8 %314 to i64
  br label %321

321:                                              ; preds = %316, %350
  %322 = phi i64 [ 0, %316 ], [ %351, %350 ]
  %323 = load i8, ptr %266, align 8, !tbaa !46
  %324 = zext i8 %323 to i64
  %325 = icmp ugt i64 %322, %324
  br i1 %325, label %326, label %327

326:                                              ; preds = %321
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 2622, ptr noundef nonnull @.str.29) #14
  br label %327

327:                                              ; preds = %326, %321
  %328 = load i32, ptr %1, align 8
  %329 = and i32 %328, 255
  %330 = add nsw i32 %329, -10
  %331 = icmp ult i32 %330, -9
  br i1 %331, label %345, label %332

332:                                              ; preds = %327
  %333 = zext nneg i32 %329 to i64
  %334 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %333
  %335 = load i32, ptr %334, align 4, !tbaa !50
  %336 = zext i32 %335 to i64
  %337 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %336
  %338 = load i64, ptr %337, align 8, !tbaa !76
  %339 = icmp eq i64 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %332
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %341

341:                                              ; preds = %340, %332
  %342 = getelementptr inbounds i8, ptr %1, i64 %338
  %343 = getelementptr inbounds ptr, ptr %342, i64 %322
  %344 = load ptr, ptr %343, align 8, !tbaa !35
  br label %345

345:                                              ; preds = %327, %341
  %346 = phi ptr [ %344, %341 ], [ null, %327 ]
  %347 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %346, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  %348 = icmp ult i64 %322, %319
  br i1 %348, label %349, label %350

349:                                              ; preds = %345
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.19) #14
  br label %350

350:                                              ; preds = %345, %349
  %351 = add nuw nsw i64 %322, 1
  %352 = icmp eq i64 %351, %320
  br i1 %352, label %444, label %321, !llvm.loop !82

353:                                              ; preds = %269
  %354 = load i8, ptr %263, align 2, !tbaa !46
  %355 = zext i8 %354 to i32
  %356 = icmp eq i8 %354, 0
  br i1 %356, label %444, label %357

357:                                              ; preds = %353
  %358 = add nsw i32 %355, -1
  br label %359

359:                                              ; preds = %357, %395
  %360 = phi i32 [ 0, %357 ], [ %396, %395 ]
  %361 = load i8, ptr %263, align 2, !tbaa !46
  %362 = zext i8 %361 to i32
  %363 = icmp ugt i32 %360, %362
  br i1 %363, label %364, label %365

364:                                              ; preds = %359
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 2688, ptr noundef nonnull @.str.29) #14
  br label %365

365:                                              ; preds = %364, %359
  %366 = load i8, ptr %264, align 8, !tbaa !46
  %367 = zext i8 %366 to i32
  %368 = add nuw nsw i32 %360, %367
  %369 = load i8, ptr %265, align 1, !tbaa !46
  %370 = zext i8 %369 to i32
  %371 = add nuw nsw i32 %368, %370
  %372 = load i32, ptr %1, align 8
  %373 = and i32 %372, 255
  %374 = add nsw i32 %373, -10
  %375 = icmp ult i32 %374, -9
  br i1 %375, label %390, label %376

376:                                              ; preds = %365
  %377 = zext nneg i32 %373 to i64
  %378 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %377
  %379 = load i32, ptr %378, align 4, !tbaa !50
  %380 = zext i32 %379 to i64
  %381 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %380
  %382 = load i64, ptr %381, align 8, !tbaa !76
  %383 = icmp eq i64 %382, 0
  br i1 %383, label %384, label %385

384:                                              ; preds = %376
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %385

385:                                              ; preds = %384, %376
  %386 = getelementptr inbounds i8, ptr %1, i64 %382
  %387 = zext nneg i32 %371 to i64
  %388 = getelementptr inbounds ptr, ptr %386, i64 %387
  %389 = load ptr, ptr %388, align 8, !tbaa !35
  br label %390

390:                                              ; preds = %365, %385
  %391 = phi ptr [ %389, %385 ], [ null, %365 ]
  %392 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %391, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  %393 = icmp ult i32 %360, %358
  br i1 %393, label %394, label %395

394:                                              ; preds = %390
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.19) #14
  br label %395

395:                                              ; preds = %390, %394
  %396 = add nuw nsw i32 %360, 1
  %397 = icmp eq i32 %396, %355
  br i1 %397, label %444, label %359, !llvm.loop !83

398:                                              ; preds = %269
  %399 = load i8, ptr %235, align 1, !tbaa !46
  %400 = zext i8 %399 to i32
  %401 = icmp eq i8 %399, 0
  br i1 %401, label %444, label %402

402:                                              ; preds = %398
  %403 = add nsw i32 %400, -1
  br label %404

404:                                              ; preds = %402, %440
  %405 = phi i32 [ 0, %402 ], [ %441, %440 ]
  %406 = load i8, ptr %235, align 1, !tbaa !46
  %407 = zext i8 %406 to i32
  %408 = icmp ugt i32 %405, %407
  br i1 %408, label %409, label %410

409:                                              ; preds = %404
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 2710, ptr noundef nonnull @.str.29) #14
  br label %410

410:                                              ; preds = %409, %404
  %411 = load i8, ptr %261, align 8, !tbaa !46
  %412 = zext i8 %411 to i32
  %413 = add nuw nsw i32 %405, %412
  %414 = load i8, ptr %262, align 2, !tbaa !46
  %415 = zext i8 %414 to i32
  %416 = add nuw nsw i32 %413, %415
  %417 = load i32, ptr %1, align 8
  %418 = and i32 %417, 255
  %419 = add nsw i32 %418, -10
  %420 = icmp ult i32 %419, -9
  br i1 %420, label %435, label %421

421:                                              ; preds = %410
  %422 = zext nneg i32 %418 to i64
  %423 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %422
  %424 = load i32, ptr %423, align 4, !tbaa !50
  %425 = zext i32 %424 to i64
  %426 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %425
  %427 = load i64, ptr %426, align 8, !tbaa !76
  %428 = icmp eq i64 %427, 0
  br i1 %428, label %429, label %430

429:                                              ; preds = %421
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %430

430:                                              ; preds = %429, %421
  %431 = getelementptr inbounds i8, ptr %1, i64 %427
  %432 = zext nneg i32 %416 to i64
  %433 = getelementptr inbounds ptr, ptr %431, i64 %432
  %434 = load ptr, ptr %433, align 8, !tbaa !35
  br label %435

435:                                              ; preds = %410, %430
  %436 = phi ptr [ %434, %430 ], [ null, %410 ]
  %437 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %436, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  %438 = icmp ult i32 %405, %403
  br i1 %438, label %439, label %440

439:                                              ; preds = %435
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.19) #14
  br label %440

440:                                              ; preds = %435, %439
  %441 = add nuw nsw i32 %405, 1
  %442 = icmp eq i32 %441, %400
  br i1 %442, label %444, label %404, !llvm.loop !84

443:                                              ; preds = %269
  unreachable

444:                                              ; preds = %440, %395, %350, %310, %398, %353, %313, %271
  %445 = add nuw nsw i32 %270, 1
  %446 = icmp eq i32 %445, %258
  br i1 %446, label %447, label %269, !llvm.loop !85

447:                                              ; preds = %444, %257
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.30) #14
  br label %448

448:                                              ; preds = %447, %228
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_gimple_assign(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %104, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !46
  switch i32 %9, label %28 [
    i32 2, label %29
    i32 3, label %10
  ]

10:                                               ; preds = %7
  %11 = load i32, ptr %1, align 8
  %12 = and i32 %11, 255
  %13 = add nsw i32 %12, -10
  %14 = icmp ult i32 %13, -9
  br i1 %14, label %29, label %15

15:                                               ; preds = %10
  %16 = zext nneg i32 %12 to i64
  %17 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !50
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !76
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %24

24:                                               ; preds = %23, %15
  %25 = getelementptr inbounds i8, ptr %1, i64 %21
  %26 = getelementptr inbounds ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  br label %29

28:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 394, ptr noundef nonnull @.str.29) #14
  br label %29

29:                                               ; preds = %24, %10, %7, %28
  %30 = phi ptr [ undef, %28 ], [ null, %7 ], [ %27, %24 ], [ null, %10 ]
  %31 = load i32, ptr %1, align 8
  %32 = trunc i32 %31 to i8
  switch i8 %32, label %35 [
    i8 6, label %33
    i8 1, label %33
    i8 8, label %36
  ]

33:                                               ; preds = %29, %29
  %34 = lshr i32 %31, 16
  br label %36

35:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1446, ptr noundef nonnull @.str.29) #14
  br label %36

36:                                               ; preds = %35, %33, %29
  %37 = phi i32 [ %34, %33 ], [ 0, %35 ], [ 59, %29 ]
  %38 = zext nneg i32 %37 to i64
  %39 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !46
  %41 = icmp eq i8 %40, 3
  br i1 %41, label %42, label %62

42:                                               ; preds = %36
  %43 = load i32, ptr %1, align 8
  %44 = and i32 %43, 255
  %45 = add nsw i32 %44, -1
  %46 = icmp ult i32 %45, 9
  tail call void @llvm.assume(i1 %46)
  %47 = zext nneg i32 %44 to i64
  %48 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %47
  %49 = load i32, ptr %48, align 4, !tbaa !50
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !76
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %55

55:                                               ; preds = %54, %42
  %56 = getelementptr inbounds i8, ptr %1, i64 %52
  %57 = getelementptr inbounds ptr, ptr %56, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !35
  %59 = load i64, ptr %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = and i32 %60, 65535
  br label %62

62:                                               ; preds = %36, %55
  %63 = phi i32 [ %61, %55 ], [ %37, %36 ]
  %64 = zext nneg i32 %63 to i64
  %65 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !35
  %67 = load i32, ptr %1, align 8
  %68 = and i32 %67, 255
  %69 = add nsw i32 %68, -10
  %70 = icmp ult i32 %69, -9
  br i1 %70, label %83, label %71

71:                                               ; preds = %62
  %72 = zext nneg i32 %68 to i64
  %73 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !50
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %75
  %77 = load i64, ptr %76, align 8, !tbaa !76
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %80

80:                                               ; preds = %79, %71
  %81 = getelementptr inbounds i8, ptr %1, i64 %77
  %82 = load ptr, ptr %81, align 8, !tbaa !35
  br label %83

83:                                               ; preds = %62, %80
  %84 = phi ptr [ %82, %80 ], [ null, %62 ]
  %85 = load i32, ptr %1, align 8
  %86 = and i32 %85, 255
  %87 = add nsw i32 %86, -10
  %88 = icmp ult i32 %87, -9
  br i1 %88, label %102, label %89

89:                                               ; preds = %83
  %90 = zext nneg i32 %86 to i64
  %91 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !50
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %93
  %95 = load i64, ptr %94, align 8, !tbaa !76
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %98

98:                                               ; preds = %97, %89
  %99 = getelementptr inbounds i8, ptr %1, i64 %95
  %100 = getelementptr inbounds ptr, ptr %99, i64 1
  %101 = load ptr, ptr %100, align 8, !tbaa !35
  br label %102

102:                                              ; preds = %83, %98
  %103 = phi ptr [ %101, %98 ], [ null, %83 ]
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.33, ptr noundef %1, ptr noundef %66, ptr noundef %84, ptr noundef %103, ptr noundef %30)
  br label %533

104:                                              ; preds = %4
  %105 = and i32 %3, 131072
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %141

107:                                              ; preds = %104
  %108 = load i32, ptr %1, align 8
  %109 = and i32 %108, 255
  %110 = add nsw i32 %109, -10
  %111 = icmp ult i32 %110, -9
  br i1 %111, label %124, label %112

112:                                              ; preds = %107
  %113 = zext nneg i32 %109 to i64
  %114 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !50
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %116
  %118 = load i64, ptr %117, align 8, !tbaa !76
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %112
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %121

121:                                              ; preds = %120, %112
  %122 = getelementptr inbounds i8, ptr %1, i64 %118
  %123 = load ptr, ptr %122, align 8, !tbaa !35
  br label %124

124:                                              ; preds = %107, %121
  %125 = phi ptr [ %123, %121 ], [ null, %107 ]
  %126 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %125, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 61) #14
  %127 = load i32, ptr %1, align 8
  %128 = and i32 %127, 1024
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %124
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.34) #14
  br label %131

131:                                              ; preds = %130, %124
  %132 = load i32, ptr %1, align 8
  %133 = and i32 %132, 254
  %134 = add nsw i32 %133, -10
  %135 = icmp ult i32 %134, -4
  %136 = and i32 %132, 16384
  %137 = icmp eq i32 %136, 0
  %138 = or i1 %137, %135
  br i1 %138, label %140, label %139

139:                                              ; preds = %131
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.35) #14
  br label %140

140:                                              ; preds = %139, %131
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  br label %141

141:                                              ; preds = %140, %104
  %142 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 3
  %143 = load i32, ptr %142, align 4, !tbaa !46
  switch i32 %143, label %530 [
    i32 2, label %144
    i32 3, label %262
  ]

144:                                              ; preds = %141
  %145 = load i32, ptr %1, align 8
  %146 = trunc i32 %145 to i8
  switch i8 %146, label %149 [
    i8 6, label %147
    i8 1, label %147
    i8 8, label %150
  ]

147:                                              ; preds = %144, %144
  %148 = lshr i32 %145, 16
  br label %150

149:                                              ; preds = %144
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1446, ptr noundef nonnull @.str.29) #14
  br label %150

150:                                              ; preds = %149, %147, %144
  %151 = phi i32 [ %148, %147 ], [ 0, %149 ], [ 59, %144 ]
  %152 = zext nneg i32 %151 to i64
  %153 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %152
  %154 = load i8, ptr %153, align 1, !tbaa !46
  %155 = icmp eq i8 %154, 3
  br i1 %155, label %156, label %176

156:                                              ; preds = %150
  %157 = load i32, ptr %1, align 8
  %158 = and i32 %157, 255
  %159 = add nsw i32 %158, -1
  %160 = icmp ult i32 %159, 9
  tail call void @llvm.assume(i1 %160)
  %161 = zext nneg i32 %158 to i64
  %162 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %161
  %163 = load i32, ptr %162, align 4, !tbaa !50
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %164
  %166 = load i64, ptr %165, align 8, !tbaa !76
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %156
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %169

169:                                              ; preds = %168, %156
  %170 = getelementptr inbounds i8, ptr %1, i64 %166
  %171 = getelementptr inbounds ptr, ptr %170, i64 1
  %172 = load ptr, ptr %171, align 8, !tbaa !35
  %173 = load i64, ptr %172, align 8
  %174 = trunc i64 %173 to i32
  %175 = and i32 %174, 65535
  br label %176

176:                                              ; preds = %169, %150
  %177 = phi i32 [ %175, %169 ], [ %151, %150 ]
  %178 = load i32, ptr %1, align 8
  %179 = and i32 %178, 255
  %180 = add nsw i32 %179, -10
  %181 = icmp ult i32 %180, -9
  br i1 %181, label %194, label %182

182:                                              ; preds = %176
  %183 = zext nneg i32 %179 to i64
  %184 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %183
  %185 = load i32, ptr %184, align 4, !tbaa !50
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %186
  %188 = load i64, ptr %187, align 8, !tbaa !76
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %182
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %191

191:                                              ; preds = %190, %182
  %192 = getelementptr inbounds i8, ptr %1, i64 %188
  %193 = load ptr, ptr %192, align 8, !tbaa !35
  br label %194

194:                                              ; preds = %191, %176
  %195 = phi ptr [ %193, %191 ], [ null, %176 ]
  %196 = load i32, ptr %1, align 8
  %197 = and i32 %196, 255
  %198 = add nsw i32 %197, -10
  %199 = icmp ult i32 %198, -9
  br i1 %199, label %213, label %200

200:                                              ; preds = %194
  %201 = zext nneg i32 %197 to i64
  %202 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %201
  %203 = load i32, ptr %202, align 4, !tbaa !50
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %204
  %206 = load i64, ptr %205, align 8, !tbaa !76
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %200
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %209

209:                                              ; preds = %208, %200
  %210 = getelementptr inbounds i8, ptr %1, i64 %206
  %211 = getelementptr inbounds ptr, ptr %210, i64 1
  %212 = load ptr, ptr %211, align 8, !tbaa !35
  br label %213

213:                                              ; preds = %209, %194
  %214 = phi ptr [ %212, %209 ], [ null, %194 ]
  %215 = trunc i32 %177 to i16
  switch i16 %215, label %233 [
    i16 118, label %216
    i16 148, label %216
    i16 115, label %218
    i16 114, label %218
    i16 77, label %218
    i16 78, label %218
    i16 116, label %218
    i16 113, label %218
    i16 112, label %229
    i16 82, label %231
  ]

216:                                              ; preds = %213, %213
  %217 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %214, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %531

218:                                              ; preds = %213, %213, %213, %213, %213, %213
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #14
  %219 = getelementptr inbounds %struct.tree_common, ptr %195, i64 0, i32 2
  %220 = load ptr, ptr %219, align 8, !tbaa !46
  %221 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %220, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.36) #14
  %222 = tail call i32 @op_prio(ptr noundef %214) #14
  %223 = tail call i32 @op_code_prio(i32 noundef %177) #14
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %227

225:                                              ; preds = %218
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #14
  %226 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %214, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #14
  br label %531

227:                                              ; preds = %218
  %228 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %214, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %531

229:                                              ; preds = %213
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.37) #14
  %230 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %214, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.38) #14
  br label %531

231:                                              ; preds = %213
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.39) #14
  %232 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %214, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 62) #14
  br label %531

233:                                              ; preds = %213
  %234 = zext nneg i32 %177 to i64
  %235 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %234
  %236 = load i32, ptr %235, align 4, !tbaa !50
  switch i32 %236, label %237 [
    i32 3, label %245
    i32 1, label %245
  ]

237:                                              ; preds = %233
  %238 = icmp eq i32 %236, 4
  %239 = icmp eq i32 %177, 141
  %240 = select i1 %238, i1 true, i1 %239
  %241 = icmp eq i32 %177, 121
  %242 = select i1 %240, i1 true, i1 %241
  %243 = icmp eq i32 %177, 51
  %244 = select i1 %242, i1 true, i1 %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %233, %237, %233
  %246 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %214, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %531

247:                                              ; preds = %237
  switch i32 %177, label %251 [
    i32 90, label %248
    i32 96, label %249
    i32 79, label %250
  ]

248:                                              ; preds = %247
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 126) #14
  br label %254

249:                                              ; preds = %247
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 33) #14
  br label %254

250:                                              ; preds = %247
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 45) #14
  br label %254

251:                                              ; preds = %247
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 91) #14
  %252 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %234
  %253 = load ptr, ptr %252, align 8, !tbaa !35
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %253) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.5) #14
  br label %254

254:                                              ; preds = %251, %250, %249, %248
  %255 = tail call i32 @op_prio(ptr noundef %214) #14
  %256 = tail call i32 @op_code_prio(i32 noundef %177) #14
  %257 = icmp slt i32 %255, %256
  br i1 %257, label %258, label %260

258:                                              ; preds = %254
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #14
  %259 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %214, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #14
  br label %531

260:                                              ; preds = %254
  %261 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %214, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %531

262:                                              ; preds = %141
  %263 = load i32, ptr %1, align 8
  %264 = trunc i32 %263 to i8
  switch i8 %264, label %267 [
    i8 6, label %265
    i8 1, label %265
    i8 8, label %268
  ]

265:                                              ; preds = %262, %262
  %266 = lshr i32 %263, 16
  br label %268

267:                                              ; preds = %262
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1446, ptr noundef nonnull @.str.29) #14
  br label %268

268:                                              ; preds = %267, %265, %262
  %269 = phi i32 [ %266, %265 ], [ 0, %267 ], [ 59, %262 ]
  %270 = zext nneg i32 %269 to i64
  %271 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %270
  %272 = load i8, ptr %271, align 1, !tbaa !46
  %273 = icmp eq i8 %272, 3
  br i1 %273, label %274, label %294

274:                                              ; preds = %268
  %275 = load i32, ptr %1, align 8
  %276 = and i32 %275, 255
  %277 = add nsw i32 %276, -1
  %278 = icmp ult i32 %277, 9
  tail call void @llvm.assume(i1 %278)
  %279 = zext nneg i32 %276 to i64
  %280 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %279
  %281 = load i32, ptr %280, align 4, !tbaa !50
  %282 = zext i32 %281 to i64
  %283 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %282
  %284 = load i64, ptr %283, align 8, !tbaa !76
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %274
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %287

287:                                              ; preds = %286, %274
  %288 = getelementptr inbounds i8, ptr %1, i64 %284
  %289 = getelementptr inbounds ptr, ptr %288, i64 1
  %290 = load ptr, ptr %289, align 8, !tbaa !35
  %291 = load i64, ptr %290, align 8
  %292 = trunc i64 %291 to i32
  %293 = and i32 %292, 65535
  br label %294

294:                                              ; preds = %287, %268
  %295 = phi i32 [ %293, %287 ], [ %269, %268 ]
  %296 = trunc i32 %295 to i16
  switch i16 %296, label %357 [
    i16 123, label %297
    i16 80, label %297
    i16 81, label %297
    i16 172, label %297
    i16 173, label %297
    i16 178, label %297
    i16 179, label %297
    i16 180, label %297
    i16 181, label %297
    i16 182, label %297
    i16 183, label %297
    i16 184, label %297
  ]

297:                                              ; preds = %294, %294, %294, %294, %294, %294, %294, %294, %294, %294, %294, %294
  %298 = zext nneg i32 %295 to i64
  %299 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %298
  %300 = load ptr, ptr %299, align 8, !tbaa !35
  %301 = load i8, ptr %300, align 1, !tbaa !46
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %313, label %303

303:                                              ; preds = %297, %303
  %304 = phi i8 [ %311, %303 ], [ %301, %297 ]
  %305 = phi ptr [ %310, %303 ], [ %300, %297 ]
  %306 = zext i8 %304 to i64
  %307 = getelementptr inbounds [256 x i8], ptr @_sch_toupper, i64 0, i64 %306
  %308 = load i8, ptr %307, align 1, !tbaa !46
  %309 = zext i8 %308 to i32
  tail call void @pp_base_character(ptr noundef %0, i32 noundef %309) #14
  %310 = getelementptr inbounds i8, ptr %305, i64 1
  %311 = load i8, ptr %310, align 1, !tbaa !46
  %312 = icmp eq i8 %311, 0
  br i1 %312, label %313, label %303, !llvm.loop !86

313:                                              ; preds = %303, %297
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.40) #14
  %314 = load i32, ptr %1, align 8
  %315 = and i32 %314, 255
  %316 = add nsw i32 %315, -10
  %317 = icmp ult i32 %316, -9
  br i1 %317, label %331, label %318

318:                                              ; preds = %313
  %319 = zext nneg i32 %315 to i64
  %320 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %319
  %321 = load i32, ptr %320, align 4, !tbaa !50
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %322
  %324 = load i64, ptr %323, align 8, !tbaa !76
  %325 = icmp eq i64 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %318
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %327

327:                                              ; preds = %326, %318
  %328 = getelementptr inbounds i8, ptr %1, i64 %324
  %329 = getelementptr inbounds ptr, ptr %328, i64 1
  %330 = load ptr, ptr %329, align 8, !tbaa !35
  br label %331

331:                                              ; preds = %327, %313
  %332 = phi ptr [ %330, %327 ], [ null, %313 ]
  %333 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %332, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.19) #14
  %334 = load i32, ptr %142, align 4, !tbaa !46
  %335 = icmp ugt i32 %334, 2
  br i1 %335, label %336, label %354

336:                                              ; preds = %331
  %337 = load i32, ptr %1, align 8
  %338 = and i32 %337, 255
  %339 = add nsw i32 %338, -10
  %340 = icmp ult i32 %339, -9
  br i1 %340, label %354, label %341

341:                                              ; preds = %336
  %342 = zext nneg i32 %338 to i64
  %343 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %342
  %344 = load i32, ptr %343, align 4, !tbaa !50
  %345 = zext i32 %344 to i64
  %346 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %345
  %347 = load i64, ptr %346, align 8, !tbaa !76
  %348 = icmp eq i64 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %341
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %350

350:                                              ; preds = %349, %341
  %351 = getelementptr inbounds i8, ptr %1, i64 %347
  %352 = getelementptr inbounds ptr, ptr %351, i64 2
  %353 = load ptr, ptr %352, align 8, !tbaa !35
  br label %354

354:                                              ; preds = %350, %336, %331
  %355 = phi ptr [ null, %331 ], [ %353, %350 ], [ null, %336 ]
  %356 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %355, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 62) #14
  br label %531

357:                                              ; preds = %294
  %358 = load i32, ptr %1, align 8
  %359 = and i32 %358, 255
  %360 = add nsw i32 %359, -10
  %361 = icmp ult i32 %360, -9
  br i1 %361, label %375, label %362

362:                                              ; preds = %357
  %363 = zext nneg i32 %359 to i64
  %364 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %363
  %365 = load i32, ptr %364, align 4, !tbaa !50
  %366 = zext i32 %365 to i64
  %367 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %366
  %368 = load i64, ptr %367, align 8, !tbaa !76
  %369 = icmp eq i64 %368, 0
  br i1 %369, label %370, label %371

370:                                              ; preds = %362
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %371

371:                                              ; preds = %370, %362
  %372 = getelementptr inbounds i8, ptr %1, i64 %368
  %373 = getelementptr inbounds ptr, ptr %372, i64 1
  %374 = load ptr, ptr %373, align 8, !tbaa !35
  br label %375

375:                                              ; preds = %371, %357
  %376 = phi ptr [ %374, %371 ], [ null, %357 ]
  %377 = tail call i32 @op_prio(ptr noundef %376) #14
  %378 = tail call i32 @op_code_prio(i32 noundef %295) #14
  %379 = icmp sgt i32 %377, %378
  br i1 %379, label %401, label %380

380:                                              ; preds = %375
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #14
  %381 = load i32, ptr %1, align 8
  %382 = and i32 %381, 255
  %383 = add nsw i32 %382, -10
  %384 = icmp ult i32 %383, -9
  br i1 %384, label %398, label %385

385:                                              ; preds = %380
  %386 = zext nneg i32 %382 to i64
  %387 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %386
  %388 = load i32, ptr %387, align 4, !tbaa !50
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %389
  %391 = load i64, ptr %390, align 8, !tbaa !76
  %392 = icmp eq i64 %391, 0
  br i1 %392, label %393, label %394

393:                                              ; preds = %385
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %394

394:                                              ; preds = %393, %385
  %395 = getelementptr inbounds i8, ptr %1, i64 %391
  %396 = getelementptr inbounds ptr, ptr %395, i64 1
  %397 = load ptr, ptr %396, align 8, !tbaa !35
  br label %398

398:                                              ; preds = %394, %380
  %399 = phi ptr [ %397, %394 ], [ null, %380 ]
  %400 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %399, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #14
  br label %422

401:                                              ; preds = %375
  %402 = load i32, ptr %1, align 8
  %403 = and i32 %402, 255
  %404 = add nsw i32 %403, -10
  %405 = icmp ult i32 %404, -9
  br i1 %405, label %419, label %406

406:                                              ; preds = %401
  %407 = zext nneg i32 %403 to i64
  %408 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %407
  %409 = load i32, ptr %408, align 4, !tbaa !50
  %410 = zext i32 %409 to i64
  %411 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %410
  %412 = load i64, ptr %411, align 8, !tbaa !76
  %413 = icmp eq i64 %412, 0
  br i1 %413, label %414, label %415

414:                                              ; preds = %406
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %415

415:                                              ; preds = %414, %406
  %416 = getelementptr inbounds i8, ptr %1, i64 %412
  %417 = getelementptr inbounds ptr, ptr %416, i64 1
  %418 = load ptr, ptr %417, align 8, !tbaa !35
  br label %419

419:                                              ; preds = %415, %401
  %420 = phi ptr [ %418, %415 ], [ null, %401 ]
  %421 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %420, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %422

422:                                              ; preds = %419, %398
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %423 = load i32, ptr %1, align 8
  %424 = trunc i32 %423 to i8
  switch i8 %424, label %427 [
    i8 6, label %425
    i8 1, label %425
    i8 8, label %428
  ]

425:                                              ; preds = %422, %422
  %426 = lshr i32 %423, 16
  br label %428

427:                                              ; preds = %422
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1446, ptr noundef nonnull @.str.29) #14
  br label %428

428:                                              ; preds = %427, %425, %422
  %429 = phi i32 [ %426, %425 ], [ 0, %427 ], [ 59, %422 ]
  %430 = zext nneg i32 %429 to i64
  %431 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %430
  %432 = load i8, ptr %431, align 1, !tbaa !46
  %433 = icmp eq i8 %432, 3
  br i1 %433, label %434, label %454

434:                                              ; preds = %428
  %435 = load i32, ptr %1, align 8
  %436 = and i32 %435, 255
  %437 = add nsw i32 %436, -1
  %438 = icmp ult i32 %437, 9
  tail call void @llvm.assume(i1 %438)
  %439 = zext nneg i32 %436 to i64
  %440 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %439
  %441 = load i32, ptr %440, align 4, !tbaa !50
  %442 = zext i32 %441 to i64
  %443 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %442
  %444 = load i64, ptr %443, align 8, !tbaa !76
  %445 = icmp eq i64 %444, 0
  br i1 %445, label %446, label %447

446:                                              ; preds = %434
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %447

447:                                              ; preds = %446, %434
  %448 = getelementptr inbounds i8, ptr %1, i64 %444
  %449 = getelementptr inbounds ptr, ptr %448, i64 1
  %450 = load ptr, ptr %449, align 8, !tbaa !35
  %451 = load i64, ptr %450, align 8
  %452 = trunc i64 %451 to i32
  %453 = and i32 %452, 65535
  br label %454

454:                                              ; preds = %447, %428
  %455 = phi i32 [ %453, %447 ], [ %429, %428 ]
  %456 = tail call ptr @op_symbol_code(i32 noundef %455) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %456) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %457 = load i32, ptr %142, align 4, !tbaa !46
  %458 = icmp ugt i32 %457, 2
  br i1 %458, label %459, label %477

459:                                              ; preds = %454
  %460 = load i32, ptr %1, align 8
  %461 = and i32 %460, 255
  %462 = add nsw i32 %461, -10
  %463 = icmp ult i32 %462, -9
  br i1 %463, label %477, label %464

464:                                              ; preds = %459
  %465 = zext nneg i32 %461 to i64
  %466 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %465
  %467 = load i32, ptr %466, align 4, !tbaa !50
  %468 = zext i32 %467 to i64
  %469 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %468
  %470 = load i64, ptr %469, align 8, !tbaa !76
  %471 = icmp eq i64 %470, 0
  br i1 %471, label %472, label %473

472:                                              ; preds = %464
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %473

473:                                              ; preds = %472, %464
  %474 = getelementptr inbounds i8, ptr %1, i64 %470
  %475 = getelementptr inbounds ptr, ptr %474, i64 2
  %476 = load ptr, ptr %475, align 8, !tbaa !35
  br label %477

477:                                              ; preds = %473, %459, %454
  %478 = phi ptr [ null, %454 ], [ %476, %473 ], [ null, %459 ]
  %479 = tail call i32 @op_prio(ptr noundef %478) #14
  %480 = tail call i32 @op_code_prio(i32 noundef %295) #14
  %481 = icmp sgt i32 %479, %480
  br i1 %481, label %506, label %482

482:                                              ; preds = %477
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #14
  %483 = load i32, ptr %142, align 4, !tbaa !46
  %484 = icmp ugt i32 %483, 2
  br i1 %484, label %485, label %503

485:                                              ; preds = %482
  %486 = load i32, ptr %1, align 8
  %487 = and i32 %486, 255
  %488 = add nsw i32 %487, -10
  %489 = icmp ult i32 %488, -9
  br i1 %489, label %503, label %490

490:                                              ; preds = %485
  %491 = zext nneg i32 %487 to i64
  %492 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %491
  %493 = load i32, ptr %492, align 4, !tbaa !50
  %494 = zext i32 %493 to i64
  %495 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %494
  %496 = load i64, ptr %495, align 8, !tbaa !76
  %497 = icmp eq i64 %496, 0
  br i1 %497, label %498, label %499

498:                                              ; preds = %490
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %499

499:                                              ; preds = %498, %490
  %500 = getelementptr inbounds i8, ptr %1, i64 %496
  %501 = getelementptr inbounds ptr, ptr %500, i64 2
  %502 = load ptr, ptr %501, align 8, !tbaa !35
  br label %503

503:                                              ; preds = %499, %485, %482
  %504 = phi ptr [ null, %482 ], [ %502, %499 ], [ null, %485 ]
  %505 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %504, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #14
  br label %531

506:                                              ; preds = %477
  %507 = load i32, ptr %142, align 4, !tbaa !46
  %508 = icmp ugt i32 %507, 2
  br i1 %508, label %509, label %527

509:                                              ; preds = %506
  %510 = load i32, ptr %1, align 8
  %511 = and i32 %510, 255
  %512 = add nsw i32 %511, -10
  %513 = icmp ult i32 %512, -9
  br i1 %513, label %527, label %514

514:                                              ; preds = %509
  %515 = zext nneg i32 %511 to i64
  %516 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %515
  %517 = load i32, ptr %516, align 4, !tbaa !50
  %518 = zext i32 %517 to i64
  %519 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %518
  %520 = load i64, ptr %519, align 8, !tbaa !76
  %521 = icmp eq i64 %520, 0
  br i1 %521, label %522, label %523

522:                                              ; preds = %514
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %523

523:                                              ; preds = %522, %514
  %524 = getelementptr inbounds i8, ptr %1, i64 %520
  %525 = getelementptr inbounds ptr, ptr %524, i64 2
  %526 = load ptr, ptr %525, align 8, !tbaa !35
  br label %527

527:                                              ; preds = %523, %509, %506
  %528 = phi ptr [ null, %506 ], [ %526, %523 ], [ null, %509 ]
  %529 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %528, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %531

530:                                              ; preds = %141
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 422, ptr noundef nonnull @.str.29) #14
  br label %531

531:                                              ; preds = %527, %503, %354, %260, %258, %245, %231, %229, %227, %225, %216, %530
  br i1 %106, label %532, label %533

532:                                              ; preds = %531
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 59) #14
  br label %533

533:                                              ; preds = %531, %532, %102
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_gimple_bind(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.41, ptr noundef %1)
  br label %9

8:                                                ; preds = %4
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #14
  br label %9

9:                                                ; preds = %8, %7
  %10 = and i32 %3, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.gimple_statement_bind, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %12, %22
  %17 = phi ptr [ %24, %22 ], [ %14, %12 ]
  tail call void @pp_base_newline(ptr noundef %0) #14
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi i32 [ 0, %16 ], [ %20, %18 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %20 = add nuw nsw i32 %19, 1
  %21 = icmp eq i32 %19, 0
  br i1 %21, label %18, label %22, !llvm.loop !65

22:                                               ; preds = %18
  tail call void @print_declaration(ptr noundef %0, ptr noundef nonnull %17, i32 noundef %2, i32 noundef %3) #14
  %23 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %16, !llvm.loop !87

26:                                               ; preds = %22, %12
  %27 = load ptr, ptr %13, align 8, !tbaa !46
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @pp_base_newline(ptr noundef %0) #14
  br label %30

30:                                               ; preds = %26, %29, %9
  tail call void @pp_base_newline(ptr noundef %0) #14
  %31 = getelementptr inbounds %struct.gimple_statement_bind, ptr %1, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = add nsw i32 %2, 2
  tail call fastcc void @dump_gimple_seq(ptr noundef %0, ptr noundef %32, i32 noundef %33, i32 noundef %3)
  tail call void @pp_base_newline(ptr noundef %0) #14
  %34 = icmp sgt i32 %2, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30, %35
  %36 = phi i32 [ %37, %35 ], [ 0, %30 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %37 = add nuw nsw i32 %36, 1
  %38 = icmp eq i32 %37, %2
  br i1 %38, label %39, label %35, !llvm.loop !65

39:                                               ; preds = %35, %30
  %40 = select i1 %6, i32 125, i32 62
  tail call void @pp_base_character(ptr noundef %0, i32 noundef %40) #14
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_gimple_call(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 255
  %7 = add nsw i32 %6, -10
  %8 = icmp ult i32 %7, -9
  br i1 %8, label %21, label %9

9:                                                ; preds = %4
  %10 = zext nneg i32 %6 to i64
  %11 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !50
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !76
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %18

18:                                               ; preds = %17, %9
  %19 = getelementptr inbounds i8, ptr %1, i64 %15
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  br label %21

21:                                               ; preds = %4, %18
  %22 = phi ptr [ %20, %18 ], [ null, %4 ]
  %23 = and i32 %3, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %49, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %1, align 8
  %27 = and i32 %26, 255
  %28 = add nsw i32 %27, -10
  %29 = icmp ult i32 %28, -9
  br i1 %29, label %43, label %30

30:                                               ; preds = %25
  %31 = zext nneg i32 %27 to i64
  %32 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !50
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %34
  %36 = load i64, ptr %35, align 8, !tbaa !76
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %39

39:                                               ; preds = %38, %30
  %40 = getelementptr inbounds i8, ptr %1, i64 %36
  %41 = getelementptr inbounds ptr, ptr %40, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !35
  br label %43

43:                                               ; preds = %25, %39
  %44 = phi ptr [ %42, %39 ], [ null, %25 ]
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.42, ptr noundef nonnull %1, ptr noundef %44, ptr noundef %22)
  %45 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 3
  %46 = load i32, ptr %45, align 4, !tbaa !46
  %47 = icmp eq i32 %46, 3
  br i1 %47, label %85, label %48

48:                                               ; preds = %43
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.19) #14
  tail call fastcc void @dump_gimple_call_args(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %3)
  br label %85

49:                                               ; preds = %21
  %50 = icmp ne ptr %22, null
  %51 = and i32 %3, 131072
  %52 = icmp eq i32 %51, 0
  %53 = and i1 %52, %50
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %22, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.43) #14
  %56 = load i32, ptr %1, align 8
  %57 = and i32 %56, 254
  %58 = add nsw i32 %57, -10
  %59 = icmp ult i32 %58, -4
  %60 = and i32 %56, 16384
  %61 = icmp eq i32 %60, 0
  %62 = or i1 %61, %59
  br i1 %62, label %64, label %63

63:                                               ; preds = %54
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.35) #14
  br label %64

64:                                               ; preds = %63, %54
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  br label %65

65:                                               ; preds = %64, %49
  %66 = load i32, ptr %1, align 8
  %67 = and i32 %66, 255
  %68 = add nsw i32 %67, -10
  %69 = icmp ult i32 %68, -9
  br i1 %69, label %83, label %70

70:                                               ; preds = %65
  %71 = zext nneg i32 %67 to i64
  %72 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !50
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %74
  %76 = load i64, ptr %75, align 8, !tbaa !76
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %79

79:                                               ; preds = %78, %70
  %80 = getelementptr inbounds i8, ptr %1, i64 %76
  %81 = getelementptr inbounds ptr, ptr %80, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !35
  br label %83

83:                                               ; preds = %65, %79
  %84 = phi ptr [ %82, %79 ], [ null, %65 ]
  tail call void @print_call_name(ptr noundef %0, ptr noundef %84, i32 noundef %3) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.44) #14
  tail call fastcc void @dump_gimple_call_args(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %3)
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #14
  br i1 %52, label %85, label %87

85:                                               ; preds = %83, %43, %48
  %86 = phi i32 [ 62, %48 ], [ 62, %43 ], [ 59, %83 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef %86) #14
  br label %87

87:                                               ; preds = %85, %83
  %88 = load i32, ptr %1, align 8
  %89 = and i32 %88, 255
  %90 = add nsw i32 %89, -10
  %91 = icmp ult i32 %90, -9
  br i1 %91, label %127, label %92

92:                                               ; preds = %87
  %93 = zext nneg i32 %89 to i64
  %94 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !50
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %96
  %98 = load i64, ptr %97, align 8, !tbaa !76
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %101

101:                                              ; preds = %100, %92
  %102 = getelementptr inbounds i8, ptr %1, i64 %98
  %103 = getelementptr inbounds ptr, ptr %102, i64 2
  %104 = load ptr, ptr %103, align 8, !tbaa !35
  %105 = icmp eq ptr %104, null
  br i1 %105, label %127, label %106

106:                                              ; preds = %101
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.45) #14
  %107 = load i32, ptr %1, align 8
  %108 = and i32 %107, 255
  %109 = add nsw i32 %108, -10
  %110 = icmp ult i32 %109, -9
  br i1 %110, label %124, label %111

111:                                              ; preds = %106
  %112 = zext nneg i32 %108 to i64
  %113 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !50
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %115
  %117 = load i64, ptr %116, align 8, !tbaa !76
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %120

120:                                              ; preds = %119, %111
  %121 = getelementptr inbounds i8, ptr %1, i64 %117
  %122 = getelementptr inbounds ptr, ptr %121, i64 2
  %123 = load ptr, ptr %122, align 8, !tbaa !35
  br label %124

124:                                              ; preds = %106, %120
  %125 = phi ptr [ %123, %120 ], [ null, %106 ]
  %126 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %125, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 93) #14
  br label %127

127:                                              ; preds = %87, %124, %101
  %128 = load i32, ptr %1, align 8
  %129 = and i32 %128, 262144
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %127
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.46) #14
  br label %132

132:                                              ; preds = %131, %127
  %133 = load i32, ptr %1, align 8
  %134 = and i32 %133, 524288
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %132
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.47) #14
  br label %137

137:                                              ; preds = %136, %132
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_gimple_cond(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %87, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr %1, align 8
  %9 = lshr i32 %8, 16
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = and i32 %8, 255
  %14 = add nsw i32 %13, -10
  %15 = icmp ult i32 %14, -9
  br i1 %15, label %28, label %16

16:                                               ; preds = %7
  %17 = zext nneg i32 %13 to i64
  %18 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !50
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %20
  %22 = load i64, ptr %21, align 8, !tbaa !76
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %25

25:                                               ; preds = %24, %16
  %26 = getelementptr inbounds i8, ptr %1, i64 %22
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  br label %28

28:                                               ; preds = %7, %25
  %29 = phi ptr [ %27, %25 ], [ null, %7 ]
  %30 = load i32, ptr %1, align 8
  %31 = and i32 %30, 255
  %32 = add nsw i32 %31, -10
  %33 = icmp ult i32 %32, -9
  br i1 %33, label %47, label %34

34:                                               ; preds = %28
  %35 = zext nneg i32 %31 to i64
  %36 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !50
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %38
  %40 = load i64, ptr %39, align 8, !tbaa !76
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %43

43:                                               ; preds = %42, %34
  %44 = getelementptr inbounds i8, ptr %1, i64 %40
  %45 = getelementptr inbounds ptr, ptr %44, i64 1
  %46 = load ptr, ptr %45, align 8, !tbaa !35
  br label %47

47:                                               ; preds = %28, %43
  %48 = phi ptr [ %46, %43 ], [ null, %28 ]
  %49 = load i32, ptr %1, align 8
  %50 = and i32 %49, 255
  %51 = add nsw i32 %50, -10
  %52 = icmp ult i32 %51, -9
  br i1 %52, label %66, label %53

53:                                               ; preds = %47
  %54 = zext nneg i32 %50 to i64
  %55 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !50
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %57
  %59 = load i64, ptr %58, align 8, !tbaa !76
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %62

62:                                               ; preds = %61, %53
  %63 = getelementptr inbounds i8, ptr %1, i64 %59
  %64 = getelementptr inbounds ptr, ptr %63, i64 2
  %65 = load ptr, ptr %64, align 8, !tbaa !35
  br label %66

66:                                               ; preds = %47, %62
  %67 = phi ptr [ %65, %62 ], [ null, %47 ]
  %68 = load i32, ptr %1, align 8
  %69 = and i32 %68, 255
  %70 = add nsw i32 %69, -10
  %71 = icmp ult i32 %70, -9
  br i1 %71, label %85, label %72

72:                                               ; preds = %66
  %73 = zext nneg i32 %69 to i64
  %74 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !50
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %76
  %78 = load i64, ptr %77, align 8, !tbaa !76
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %81

81:                                               ; preds = %80, %72
  %82 = getelementptr inbounds i8, ptr %1, i64 %78
  %83 = getelementptr inbounds ptr, ptr %82, i64 3
  %84 = load ptr, ptr %83, align 8, !tbaa !35
  br label %85

85:                                               ; preds = %66, %81
  %86 = phi ptr [ %84, %81 ], [ null, %66 ]
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.49, ptr noundef nonnull %1, ptr noundef %12, ptr noundef %29, ptr noundef %48, ptr noundef %67, ptr noundef %86)
  br label %255

87:                                               ; preds = %4
  %88 = and i32 %3, 131072
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %212

90:                                               ; preds = %87
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.50) #14
  %91 = load i32, ptr %1, align 8
  %92 = and i32 %91, 255
  %93 = add nsw i32 %92, -10
  %94 = icmp ult i32 %93, -9
  br i1 %94, label %107, label %95

95:                                               ; preds = %90
  %96 = zext nneg i32 %92 to i64
  %97 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !50
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %99
  %101 = load i64, ptr %100, align 8, !tbaa !76
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %104

104:                                              ; preds = %103, %95
  %105 = getelementptr inbounds i8, ptr %1, i64 %101
  %106 = load ptr, ptr %105, align 8, !tbaa !35
  br label %107

107:                                              ; preds = %90, %104
  %108 = phi ptr [ %106, %104 ], [ null, %90 ]
  %109 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %108, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %110 = load i32, ptr %1, align 8
  %111 = lshr i32 %110, 16
  %112 = tail call ptr @op_symbol_code(i32 noundef %111) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %112) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %113 = load i32, ptr %1, align 8
  %114 = and i32 %113, 255
  %115 = add nsw i32 %114, -10
  %116 = icmp ult i32 %115, -9
  br i1 %116, label %130, label %117

117:                                              ; preds = %107
  %118 = zext nneg i32 %114 to i64
  %119 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !50
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %121
  %123 = load i64, ptr %122, align 8, !tbaa !76
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %117
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %126

126:                                              ; preds = %125, %117
  %127 = getelementptr inbounds i8, ptr %1, i64 %123
  %128 = getelementptr inbounds ptr, ptr %127, i64 1
  %129 = load ptr, ptr %128, align 8, !tbaa !35
  br label %130

130:                                              ; preds = %107, %126
  %131 = phi ptr [ %129, %126 ], [ null, %107 ]
  %132 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %131, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #14
  %133 = load i32, ptr %1, align 8
  %134 = and i32 %133, 255
  %135 = add nsw i32 %134, -10
  %136 = icmp ult i32 %135, -9
  br i1 %136, label %172, label %137

137:                                              ; preds = %130
  %138 = zext nneg i32 %134 to i64
  %139 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !50
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %141
  %143 = load i64, ptr %142, align 8, !tbaa !76
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %146

146:                                              ; preds = %145, %137
  %147 = getelementptr inbounds i8, ptr %1, i64 %143
  %148 = getelementptr inbounds ptr, ptr %147, i64 2
  %149 = load ptr, ptr %148, align 8, !tbaa !35
  %150 = icmp eq ptr %149, null
  br i1 %150, label %172, label %151

151:                                              ; preds = %146
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.51) #14
  %152 = load i32, ptr %1, align 8
  %153 = and i32 %152, 255
  %154 = add nsw i32 %153, -10
  %155 = icmp ult i32 %154, -9
  br i1 %155, label %169, label %156

156:                                              ; preds = %151
  %157 = zext nneg i32 %153 to i64
  %158 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %157
  %159 = load i32, ptr %158, align 4, !tbaa !50
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %160
  %162 = load i64, ptr %161, align 8, !tbaa !76
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %156
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %165

165:                                              ; preds = %164, %156
  %166 = getelementptr inbounds i8, ptr %1, i64 %162
  %167 = getelementptr inbounds ptr, ptr %166, i64 2
  %168 = load ptr, ptr %167, align 8, !tbaa !35
  br label %169

169:                                              ; preds = %151, %165
  %170 = phi ptr [ %168, %165 ], [ null, %151 ]
  %171 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %170, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 59) #14
  br label %172

172:                                              ; preds = %130, %169, %146
  %173 = load i32, ptr %1, align 8
  %174 = and i32 %173, 255
  %175 = add nsw i32 %174, -10
  %176 = icmp ult i32 %175, -9
  br i1 %176, label %255, label %177

177:                                              ; preds = %172
  %178 = zext nneg i32 %174 to i64
  %179 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %178
  %180 = load i32, ptr %179, align 4, !tbaa !50
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %181
  %183 = load i64, ptr %182, align 8, !tbaa !76
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %177
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %186

186:                                              ; preds = %185, %177
  %187 = getelementptr inbounds i8, ptr %1, i64 %183
  %188 = getelementptr inbounds ptr, ptr %187, i64 3
  %189 = load ptr, ptr %188, align 8, !tbaa !35
  %190 = icmp eq ptr %189, null
  br i1 %190, label %255, label %191

191:                                              ; preds = %186
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.52) #14
  %192 = load i32, ptr %1, align 8
  %193 = and i32 %192, 255
  %194 = add nsw i32 %193, -10
  %195 = icmp ult i32 %194, -9
  br i1 %195, label %209, label %196

196:                                              ; preds = %191
  %197 = zext nneg i32 %193 to i64
  %198 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %197
  %199 = load i32, ptr %198, align 4, !tbaa !50
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %200
  %202 = load i64, ptr %201, align 8, !tbaa !76
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %196
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %205

205:                                              ; preds = %204, %196
  %206 = getelementptr inbounds i8, ptr %1, i64 %202
  %207 = getelementptr inbounds ptr, ptr %206, i64 3
  %208 = load ptr, ptr %207, align 8, !tbaa !35
  br label %209

209:                                              ; preds = %191, %205
  %210 = phi ptr [ %208, %205 ], [ null, %191 ]
  %211 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %210, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 59) #14
  br label %255

212:                                              ; preds = %87
  %213 = load i32, ptr %1, align 8
  %214 = and i32 %213, 255
  %215 = add nsw i32 %214, -10
  %216 = icmp ult i32 %215, -9
  br i1 %216, label %229, label %217

217:                                              ; preds = %212
  %218 = zext nneg i32 %214 to i64
  %219 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %218
  %220 = load i32, ptr %219, align 4, !tbaa !50
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %221
  %223 = load i64, ptr %222, align 8, !tbaa !76
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %217
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %226

226:                                              ; preds = %225, %217
  %227 = getelementptr inbounds i8, ptr %1, i64 %223
  %228 = load ptr, ptr %227, align 8, !tbaa !35
  br label %229

229:                                              ; preds = %212, %226
  %230 = phi ptr [ %228, %226 ], [ null, %212 ]
  %231 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %230, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %232 = load i32, ptr %1, align 8
  %233 = lshr i32 %232, 16
  %234 = tail call ptr @op_symbol_code(i32 noundef %233) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %234) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %235 = load i32, ptr %1, align 8
  %236 = and i32 %235, 255
  %237 = add nsw i32 %236, -10
  %238 = icmp ult i32 %237, -9
  br i1 %238, label %252, label %239

239:                                              ; preds = %229
  %240 = zext nneg i32 %236 to i64
  %241 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %240
  %242 = load i32, ptr %241, align 4, !tbaa !50
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %243
  %245 = load i64, ptr %244, align 8, !tbaa !76
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %239
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %248

248:                                              ; preds = %247, %239
  %249 = getelementptr inbounds i8, ptr %1, i64 %245
  %250 = getelementptr inbounds ptr, ptr %249, i64 1
  %251 = load ptr, ptr %250, align 8, !tbaa !35
  br label %252

252:                                              ; preds = %229, %248
  %253 = phi ptr [ %251, %248 ], [ null, %229 ]
  %254 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %253, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %255

255:                                              ; preds = %172, %252, %209, %186, %85
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_gimple_label(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 255
  %7 = add nsw i32 %6, -10
  %8 = icmp ult i32 %7, -9
  br i1 %8, label %21, label %9

9:                                                ; preds = %4
  %10 = zext nneg i32 %6 to i64
  %11 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !50
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !76
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %18

18:                                               ; preds = %17, %9
  %19 = getelementptr inbounds i8, ptr %1, i64 %15
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  br label %21

21:                                               ; preds = %4, %18
  %22 = phi ptr [ %20, %18 ], [ null, %4 ]
  %23 = and i32 %3, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.53, ptr noundef nonnull %1, ptr noundef %22)
  br label %28

26:                                               ; preds = %21
  %27 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %22, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 58) #14
  br label %28

28:                                               ; preds = %26, %25
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %22, i64 0, i32 2
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 256
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.54) #14
  br label %34

34:                                               ; preds = %33, %28
  %35 = and i32 %3, 524288
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.tree_label_decl, ptr %22, i64 0, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !46
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %0, ptr noundef nonnull @.str.55, i32 noundef %39) #14
  br label %42

42:                                               ; preds = %41, %37, %34
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_gimple_goto(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 255
  %7 = add nsw i32 %6, -10
  %8 = icmp ult i32 %7, -9
  br i1 %8, label %21, label %9

9:                                                ; preds = %4
  %10 = zext nneg i32 %6 to i64
  %11 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !50
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !76
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %18

18:                                               ; preds = %17, %9
  %19 = getelementptr inbounds i8, ptr %1, i64 %15
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  br label %21

21:                                               ; preds = %4, %18
  %22 = phi ptr [ %20, %18 ], [ null, %4 ]
  %23 = and i32 %3, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.53, ptr noundef nonnull %1, ptr noundef %22)
  br label %27

26:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.56, ptr noundef %22)
  br label %27

27:                                               ; preds = %26, %25
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_gimple_return(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = load i32, ptr %1, align 8
  %6 = and i32 %5, 255
  %7 = add nsw i32 %6, -10
  %8 = icmp ult i32 %7, -9
  br i1 %8, label %21, label %9

9:                                                ; preds = %4
  %10 = zext nneg i32 %6 to i64
  %11 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !50
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !76
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %18

18:                                               ; preds = %17, %9
  %19 = getelementptr inbounds i8, ptr %1, i64 %15
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  br label %21

21:                                               ; preds = %4, %18
  %22 = phi ptr [ %20, %18 ], [ null, %4 ]
  %23 = and i32 %3, 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.53, ptr noundef nonnull %1, ptr noundef %22)
  br label %31

26:                                               ; preds = %21
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.57) #14
  %27 = icmp eq ptr %22, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %26
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %29 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %22, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %30

30:                                               ; preds = %28, %26
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 59) #14
  br label %31

31:                                               ; preds = %30, %25
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_gimple_switch(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr %1, align 8
  %9 = and i32 %8, 255
  %10 = add nsw i32 %9, -10
  %11 = icmp ult i32 %10, -9
  br i1 %11, label %24, label %12

12:                                               ; preds = %7
  %13 = zext nneg i32 %9 to i64
  %14 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !50
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %16
  %18 = load i64, ptr %17, align 8, !tbaa !76
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %21

21:                                               ; preds = %20, %12
  %22 = getelementptr inbounds i8, ptr %1, i64 %18
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  br label %24

24:                                               ; preds = %7, %21
  %25 = phi ptr [ %23, %21 ], [ null, %7 ]
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.58, ptr noundef nonnull %1, ptr noundef %25)
  br label %46

26:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.59) #14
  %27 = load i32, ptr %1, align 8
  %28 = and i32 %27, 255
  %29 = add nsw i32 %28, -10
  %30 = icmp ult i32 %29, -9
  br i1 %30, label %43, label %31

31:                                               ; preds = %26
  %32 = zext nneg i32 %28 to i64
  %33 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !50
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %35
  %37 = load i64, ptr %36, align 8, !tbaa !76
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %40

40:                                               ; preds = %39, %31
  %41 = getelementptr inbounds i8, ptr %1, i64 %37
  %42 = load ptr, ptr %41, align 8, !tbaa !35
  br label %43

43:                                               ; preds = %26, %40
  %44 = phi ptr [ %42, %40 ], [ null, %26 ]
  %45 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %44, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 1) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.60) #14
  br label %46

46:                                               ; preds = %43, %24
  %47 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 3
  br label %48

48:                                               ; preds = %96, %46
  %49 = phi i64 [ 0, %46 ], [ %59, %96 ]
  %50 = load i32, ptr %47, align 4, !tbaa !46
  %51 = icmp ugt i32 %50, 1
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 3162, ptr noundef nonnull @.str.29) #14
  br label %53

53:                                               ; preds = %48, %52
  %54 = add i32 %50, -1
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %49, %55
  br i1 %56, label %57, label %98

57:                                               ; preds = %53
  %58 = load i32, ptr %47, align 4, !tbaa !46
  %59 = add nuw nsw i64 %49, 1
  %60 = zext i32 %58 to i64
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %63, label %62

62:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 3215, ptr noundef nonnull @.str.29) #14
  br label %63

63:                                               ; preds = %62, %57
  %64 = load i32, ptr %1, align 8
  %65 = and i32 %64, 255
  %66 = add nsw i32 %65, -10
  %67 = icmp ult i32 %66, -9
  br i1 %67, label %81, label %68

68:                                               ; preds = %63
  %69 = zext nneg i32 %65 to i64
  %70 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !50
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %72
  %74 = load i64, ptr %73, align 8, !tbaa !76
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %77

77:                                               ; preds = %76, %68
  %78 = getelementptr inbounds i8, ptr %1, i64 %74
  %79 = getelementptr inbounds ptr, ptr %78, i64 %59
  %80 = load ptr, ptr %79, align 8, !tbaa !35
  br label %81

81:                                               ; preds = %63, %77
  %82 = phi ptr [ %80, %77 ], [ null, %63 ]
  %83 = icmp eq ptr %82, null
  br i1 %83, label %96, label %84

84:                                               ; preds = %81
  %85 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %82, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %86 = getelementptr inbounds %struct.tree_exp, ptr %82, i64 1, i32 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !46
  %88 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %87, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  %89 = load i32, ptr %47, align 4, !tbaa !46
  %90 = icmp ugt i32 %89, 1
  br i1 %90, label %92, label %91

91:                                               ; preds = %84
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 3162, ptr noundef nonnull @.str.29) #14
  br label %92

92:                                               ; preds = %84, %91
  %93 = add i32 %89, -2
  %94 = zext i32 %93 to i64
  %95 = icmp ult i64 %49, %94
  br i1 %95, label %97, label %96

96:                                               ; preds = %92, %97, %81
  br label %48, !llvm.loop !88

97:                                               ; preds = %92
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.19) #14
  br label %96

98:                                               ; preds = %53
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 62) #14
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_gimple_try(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %19, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr %1, align 8
  %9 = lshr i32 %8, 16
  %10 = and i32 %9, 3
  %11 = icmp eq i32 %10, 1
  %12 = icmp eq i32 %10, 2
  %13 = select i1 %12, ptr @.str.62, ptr @.str.63
  %14 = select i1 %11, ptr @.str.61, ptr %13
  %15 = getelementptr inbounds %struct.gimple_statement_try, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.gimple_statement_try, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.64, ptr noundef nonnull %1, ptr noundef nonnull %14, ptr noundef %16, ptr noundef %18)
  br label %85

19:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.65) #14
  %20 = add i32 %2, 2
  tail call void @pp_base_newline(ptr noundef %0) #14
  %21 = icmp sgt i32 %2, -2
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = tail call i32 @llvm.smax.i32(i32 %20, i32 1)
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi i32 [ %26, %24 ], [ 0, %22 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %26 = add nuw nsw i32 %25, 1
  %27 = icmp eq i32 %26, %23
  br i1 %27, label %28, label %24, !llvm.loop !65

28:                                               ; preds = %24, %19
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #14
  tail call void @pp_base_newline(ptr noundef %0) #14
  %29 = getelementptr inbounds %struct.gimple_statement_try, ptr %1, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = add nsw i32 %2, 4
  tail call fastcc void @dump_gimple_seq(ptr noundef %0, ptr noundef %30, i32 noundef %31, i32 noundef %3)
  tail call void @pp_base_newline(ptr noundef %0) #14
  %32 = icmp sgt i32 %2, -2
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = tail call i32 @llvm.smax.i32(i32 %20, i32 1)
  br label %35

35:                                               ; preds = %33, %35
  %36 = phi i32 [ %37, %35 ], [ 0, %33 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %37 = add nuw nsw i32 %36, 1
  %38 = icmp eq i32 %37, %34
  br i1 %38, label %39, label %35, !llvm.loop !65

39:                                               ; preds = %35, %28
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #14
  %40 = load i32, ptr %1, align 8
  %41 = lshr i32 %40, 16
  %42 = and i32 %41, 3
  switch i32 %42, label %73 [
    i32 1, label %43
    i32 2, label %58
  ]

43:                                               ; preds = %39
  tail call void @pp_base_newline(ptr noundef %0) #14
  %44 = icmp sgt i32 %2, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %43, %45
  %46 = phi i32 [ %47, %45 ], [ 0, %43 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %47 = add nuw nsw i32 %46, 1
  %48 = icmp eq i32 %47, %2
  br i1 %48, label %49, label %45, !llvm.loop !65

49:                                               ; preds = %45, %43
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.66) #14
  tail call void @pp_base_newline(ptr noundef %0) #14
  %50 = icmp sgt i32 %2, -2
  br i1 %50, label %51, label %57

51:                                               ; preds = %49
  %52 = tail call i32 @llvm.smax.i32(i32 %20, i32 1)
  br label %53

53:                                               ; preds = %51, %53
  %54 = phi i32 [ %55, %53 ], [ 0, %51 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %55 = add nuw nsw i32 %54, 1
  %56 = icmp eq i32 %55, %52
  br i1 %56, label %57, label %53, !llvm.loop !65

57:                                               ; preds = %53, %49
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #14
  br label %74

58:                                               ; preds = %39
  tail call void @pp_base_newline(ptr noundef %0) #14
  %59 = icmp sgt i32 %2, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %58, %60
  %61 = phi i32 [ %62, %60 ], [ 0, %58 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %62 = add nuw nsw i32 %61, 1
  %63 = icmp eq i32 %62, %2
  br i1 %63, label %64, label %60, !llvm.loop !65

64:                                               ; preds = %60, %58
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.67) #14
  tail call void @pp_base_newline(ptr noundef %0) #14
  %65 = icmp sgt i32 %2, -2
  br i1 %65, label %66, label %72

66:                                               ; preds = %64
  %67 = tail call i32 @llvm.smax.i32(i32 %20, i32 1)
  br label %68

68:                                               ; preds = %66, %68
  %69 = phi i32 [ %70, %68 ], [ 0, %66 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %70 = add nuw nsw i32 %69, 1
  %71 = icmp eq i32 %70, %67
  br i1 %71, label %72, label %68, !llvm.loop !65

72:                                               ; preds = %68, %64
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #14
  br label %74

73:                                               ; preds = %39
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.68) #14
  br label %74

74:                                               ; preds = %72, %73, %57
  tail call void @pp_base_newline(ptr noundef %0) #14
  %75 = getelementptr inbounds %struct.gimple_statement_try, ptr %1, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !46
  tail call fastcc void @dump_gimple_seq(ptr noundef %0, ptr noundef %76, i32 noundef %31, i32 noundef %3)
  tail call void @pp_base_newline(ptr noundef %0) #14
  %77 = icmp sgt i32 %2, -2
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = tail call i32 @llvm.smax.i32(i32 %20, i32 1)
  br label %80

80:                                               ; preds = %78, %80
  %81 = phi i32 [ %82, %80 ], [ 0, %78 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %82 = add nuw nsw i32 %81, 1
  %83 = icmp eq i32 %82, %79
  br i1 %83, label %84, label %80, !llvm.loop !65

84:                                               ; preds = %80, %74
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #14
  br label %85

85:                                               ; preds = %84, %7
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_gimple_phi(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = alloca %struct.expanded_location, align 8
  %6 = and i32 %3, 4
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  br i1 %7, label %11, label %10

10:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.58, ptr noundef %1, ptr noundef %9)
  br label %13

11:                                               ; preds = %4
  %12 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %9, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.69) #14
  br label %13

13:                                               ; preds = %11, %10
  %14 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !46
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %90, label %17

17:                                               ; preds = %13
  %18 = and i32 %3, 128
  %19 = icmp eq i32 %18, 0
  %20 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 1
  %21 = getelementptr inbounds i8, ptr %5, i64 8
  %22 = getelementptr inbounds i8, ptr %5, i64 12
  %23 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 1
  %24 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 4
  br label %25

25:                                               ; preds = %17, %85
  %26 = phi i64 [ 0, %17 ], [ %86, %85 ]
  br i1 %19, label %58, label %27

27:                                               ; preds = %25
  %28 = trunc i64 %26 to i32
  %29 = load i32, ptr %20, align 8, !tbaa !46
  %30 = icmp ult i32 %29, %28
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 3103, ptr noundef nonnull @.str.29) #14
  br label %32

32:                                               ; preds = %27, %31
  %33 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 4, i64 %26, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !89
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %58, label %36

36:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  %37 = load i32, ptr %20, align 8, !tbaa !46
  %38 = icmp ult i32 %37, %28
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 3103, ptr noundef nonnull @.str.29) #14
  br label %40

40:                                               ; preds = %36, %39
  %41 = load i32, ptr %33, align 8, !tbaa !89
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %5, i32 noundef %41) #14
  %42 = load ptr, ptr %5, align 8, !tbaa.struct !92
  %43 = load i32, ptr %21, align 8, !tbaa.struct !93
  %44 = load i32, ptr %22, align 4, !tbaa.struct !94
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  call void @pp_base_character(ptr noundef %0, i32 noundef 91) #14
  %45 = icmp eq ptr %42, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %42) #14
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.2) #14
  br label %47

47:                                               ; preds = %40, %46
  %48 = load ptr, ptr %0, align 8, !tbaa !57
  %49 = getelementptr inbounds %struct.output_buffer, ptr %48, i64 0, i32 6
  %50 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %49, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %43)
  %51 = load ptr, ptr %0, align 8, !tbaa !57
  %52 = getelementptr inbounds %struct.output_buffer, ptr %51, i64 0, i32 6
  call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %52) #14
  call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #14
  %53 = load ptr, ptr %0, align 8, !tbaa !57
  %54 = getelementptr inbounds %struct.output_buffer, ptr %53, i64 0, i32 6
  %55 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %44)
  %56 = load ptr, ptr %0, align 8, !tbaa !57
  %57 = getelementptr inbounds %struct.output_buffer, ptr %56, i64 0, i32 6
  call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %57) #14
  call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #14
  br label %58

58:                                               ; preds = %47, %32, %25
  %59 = trunc i64 %26 to i32
  %60 = load i32, ptr %23, align 8, !tbaa !46
  %61 = icmp ult i32 %60, %59
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 3103, ptr noundef nonnull @.str.29) #14
  br label %63

63:                                               ; preds = %58, %62
  %64 = getelementptr inbounds %struct.gimple_statement_phi, ptr %1, i64 0, i32 4, i64 %26, i32 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !95
  %66 = load ptr, ptr %65, align 8, !tbaa !35
  %67 = call i32 @dump_generic_node(ptr noundef %0, ptr noundef %66, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  call void @pp_base_character(ptr noundef %0, i32 noundef 40) #14
  %68 = load ptr, ptr %0, align 8, !tbaa !57
  %69 = getelementptr inbounds %struct.output_buffer, ptr %68, i64 0, i32 6
  %70 = load ptr, ptr %24, align 8, !tbaa !46
  %71 = load ptr, ptr %70, align 8, !tbaa !96, !nonnull !98, !noundef !98
  %72 = getelementptr inbounds %struct.VEC_edge_base, ptr %71, i64 0, i32 2, i64 %26
  %73 = load ptr, ptr %72, align 8, !tbaa !35
  %74 = load ptr, ptr %73, align 8, !tbaa !99
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %74, i64 0, i32 9
  %76 = load i32, ptr %75, align 8, !tbaa !101
  %77 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %76)
  %78 = load ptr, ptr %0, align 8, !tbaa !57
  %79 = getelementptr inbounds %struct.output_buffer, ptr %78, i64 0, i32 6
  call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %79) #14
  call void @pp_base_character(ptr noundef nonnull %0, i32 noundef 41) #14
  %80 = load i32, ptr %14, align 4, !tbaa !46
  %81 = add i32 %80, -1
  %82 = zext i32 %81 to i64
  %83 = icmp ult i64 %26, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %63
  call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.19) #14
  br label %85

85:                                               ; preds = %63, %84
  %86 = add nuw nsw i64 %26, 1
  %87 = load i32, ptr %14, align 4, !tbaa !46
  %88 = zext i32 %87 to i64
  %89 = icmp ult i64 %86, %88
  br i1 %89, label %25, label %90, !llvm.loop !102

90:                                               ; preds = %85, %13
  call void @pp_base_character(ptr noundef %0, i32 noundef 62) #14
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_gimple_omp_parallel(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.70, ptr noundef %1, ptr noundef %9)
  %10 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  tail call void @dump_omp_clauses(ptr noundef %0, ptr noundef %11, i32 noundef %2, i32 noundef %3) #14
  %12 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.71, ptr noundef %13, ptr noundef %15)
  br label %63

16:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.72) #14
  %17 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  tail call void @dump_omp_clauses(ptr noundef %0, ptr noundef %18, i32 noundef %2, i32 noundef %3) #14
  %19 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = icmp eq ptr %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %16
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.73) #14
  %23 = load ptr, ptr %19, align 8, !tbaa !46
  %24 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %23, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.44) #14
  %25 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %1, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %22
  %29 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %26, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %31

30:                                               ; preds = %22
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.74) #14
  br label %31

31:                                               ; preds = %30, %28
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.75) #14
  br label %32

32:                                               ; preds = %31, %16
  %33 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = icmp eq ptr %34, null
  br i1 %35, label %63, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %34, align 8, !tbaa !66, !nonnull !98, !noundef !98
  %38 = load ptr, ptr %37, align 8, !tbaa !71
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 255
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %61, label %42

42:                                               ; preds = %36
  %43 = add i32 %2, 2
  tail call void @pp_base_newline(ptr noundef %0) #14
  %44 = icmp sgt i32 %2, -2
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = tail call i32 @llvm.smax.i32(i32 %43, i32 1)
  br label %47

47:                                               ; preds = %45, %47
  %48 = phi i32 [ %49, %47 ], [ 0, %45 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %49 = add nuw nsw i32 %48, 1
  %50 = icmp eq i32 %49, %46
  br i1 %50, label %51, label %47, !llvm.loop !65

51:                                               ; preds = %47, %42
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #14
  tail call void @pp_base_newline(ptr noundef %0) #14
  %52 = add nsw i32 %2, 4
  tail call fastcc void @dump_gimple_seq(ptr noundef %0, ptr noundef nonnull %34, i32 noundef %52, i32 noundef %3)
  tail call void @pp_base_newline(ptr noundef %0) #14
  %53 = icmp sgt i32 %2, -2
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = tail call i32 @llvm.smax.i32(i32 %43, i32 1)
  br label %56

56:                                               ; preds = %54, %56
  %57 = phi i32 [ %58, %56 ], [ 0, %54 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %58 = add nuw nsw i32 %57, 1
  %59 = icmp eq i32 %58, %55
  br i1 %59, label %60, label %56, !llvm.loop !65

60:                                               ; preds = %56, %51
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #14
  br label %63

61:                                               ; preds = %36
  tail call void @pp_base_newline(ptr noundef %0) #14
  %62 = add nsw i32 %2, 2
  tail call fastcc void @dump_gimple_seq(ptr noundef %0, ptr noundef nonnull %34, i32 noundef %62, i32 noundef %3)
  br label %63

63:                                               ; preds = %60, %61, %32, %7
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_gimple_omp_task(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.70, ptr noundef %1, ptr noundef %9)
  %10 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  tail call void @dump_omp_clauses(ptr noundef %0, ptr noundef %11, i32 noundef %2, i32 noundef %3) #14
  %12 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %1, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %1, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.76, ptr noundef %13, ptr noundef %15, ptr noundef %17, ptr noundef %19, ptr noundef %19)
  br label %67

20:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.77) #14
  %21 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %1, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  tail call void @dump_omp_clauses(ptr noundef %0, ptr noundef %22, i32 noundef %2, i32 noundef %3) #14
  %23 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = icmp eq ptr %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %20
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.73) #14
  %27 = load ptr, ptr %23, align 8, !tbaa !46
  %28 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %27, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.44) #14
  %29 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %1, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %30, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %35

34:                                               ; preds = %26
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.74) #14
  br label %35

35:                                               ; preds = %34, %32
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.75) #14
  br label %36

36:                                               ; preds = %35, %20
  %37 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !46
  %39 = icmp eq ptr %38, null
  br i1 %39, label %67, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %38, align 8, !tbaa !66, !nonnull !98, !noundef !98
  %42 = load ptr, ptr %41, align 8, !tbaa !71
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 255
  %45 = icmp eq i32 %44, 10
  br i1 %45, label %65, label %46

46:                                               ; preds = %40
  %47 = add i32 %2, 2
  tail call void @pp_base_newline(ptr noundef %0) #14
  %48 = icmp sgt i32 %2, -2
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = tail call i32 @llvm.smax.i32(i32 %47, i32 1)
  br label %51

51:                                               ; preds = %49, %51
  %52 = phi i32 [ %53, %51 ], [ 0, %49 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %53 = add nuw nsw i32 %52, 1
  %54 = icmp eq i32 %53, %50
  br i1 %54, label %55, label %51, !llvm.loop !65

55:                                               ; preds = %51, %46
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #14
  tail call void @pp_base_newline(ptr noundef %0) #14
  %56 = add nsw i32 %2, 4
  tail call fastcc void @dump_gimple_seq(ptr noundef %0, ptr noundef nonnull %38, i32 noundef %56, i32 noundef %3)
  tail call void @pp_base_newline(ptr noundef %0) #14
  %57 = icmp sgt i32 %2, -2
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = tail call i32 @llvm.smax.i32(i32 %47, i32 1)
  br label %60

60:                                               ; preds = %58, %60
  %61 = phi i32 [ %62, %60 ], [ 0, %58 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %62 = add nuw nsw i32 %61, 1
  %63 = icmp eq i32 %62, %59
  br i1 %63, label %64, label %60, !llvm.loop !65

64:                                               ; preds = %60, %55
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #14
  br label %67

65:                                               ; preds = %40
  tail call void @pp_base_newline(ptr noundef %0) #14
  %66 = add nsw i32 %2, 2
  tail call fastcc void @dump_gimple_seq(ptr noundef %0, ptr noundef nonnull %38, i32 noundef %66, i32 noundef %3)
  br label %67

67:                                               ; preds = %64, %65, %36, %7
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_gimple_omp_atomic_load(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.78, ptr noundef %1, ptr noundef %9, ptr noundef %11)
  br label %27

12:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.79) #14
  tail call void @pp_base_newline(ptr noundef %0) #14
  %13 = icmp sgt i32 %2, -2
  br i1 %13, label %14, label %20

14:                                               ; preds = %12
  %15 = add i32 %2, 1
  br label %16

16:                                               ; preds = %14, %16
  %17 = phi i32 [ %18, %16 ], [ 0, %14 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %18 = add nuw i32 %17, 1
  %19 = icmp eq i32 %17, %15
  br i1 %19, label %20, label %16, !llvm.loop !65

20:                                               ; preds = %16, %12
  %21 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %22, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 61) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 42) #14
  %24 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %1, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %25, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  br label %27

27:                                               ; preds = %20, %7
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_gimple_omp_atomic_store(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.gimple_statement_omp_atomic_store, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.53, ptr noundef %1, ptr noundef %9)
  br label %14

10:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.80) #14
  %11 = getelementptr inbounds %struct.gimple_statement_omp_atomic_store, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %12, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #14
  br label %14

14:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_gimple_omp_for(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %49, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.70, ptr noundef %1, ptr noundef %9)
  %10 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  tail call void @dump_omp_clauses(ptr noundef %0, ptr noundef %11, i32 noundef %2, i32 noundef %3) #14
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.81)
  %12 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %1, i64 0, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !46
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %46, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %1, i64 0, i32 3
  br label %17

17:                                               ; preds = %15, %39
  %18 = phi i64 [ 0, %15 ], [ %43, %39 ]
  %19 = load ptr, ptr %16, align 8, !tbaa !46
  %20 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %19, i64 %18, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !103
  %22 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %19, i64 %18, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !105
  %24 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %19, i64 %18, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !106
  %26 = load i64, ptr %12, align 8, !tbaa !46
  %27 = icmp ugt i64 %26, %18
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 4088, ptr noundef nonnull @.str.29) #14
  br label %29

29:                                               ; preds = %17, %28
  %30 = load ptr, ptr %16, align 8, !tbaa !46
  %31 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %30, i64 %18
  %32 = load i32, ptr %31, align 8, !tbaa !107
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !35
  %36 = load i64, ptr %12, align 8, !tbaa !46
  %37 = icmp ugt i64 %36, %18
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 3552, ptr noundef nonnull @.str.29) #14
  br label %39

39:                                               ; preds = %29, %38
  %40 = load ptr, ptr %16, align 8, !tbaa !46
  %41 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %40, i64 %18, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !108
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.82, ptr noundef %21, ptr noundef %23, ptr noundef %25, ptr noundef %35, ptr noundef %42)
  %43 = add nuw i64 %18, 1
  %44 = load i64, ptr %12, align 8, !tbaa !46
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %17, label %46, !llvm.loop !109

46:                                               ; preds = %39, %7
  %47 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %1, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !46
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.83, ptr noundef %48)
  br label %161

49:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.84) #14
  %50 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %1, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !46
  tail call void @dump_omp_clauses(ptr noundef %0, ptr noundef %51, i32 noundef %2, i32 noundef %3) #14
  %52 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %1, i64 0, i32 2
  %53 = load i64, ptr %52, align 8, !tbaa !46
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %133, label %55

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %1, i64 0, i32 3
  br label %57

57:                                               ; preds = %55, %125
  %58 = phi i64 [ 0, %55 ], [ %130, %125 ]
  %59 = phi i32 [ %2, %55 ], [ %62, %125 ]
  %60 = icmp eq i64 %58, 0
  %61 = add nsw i32 %59, 2
  %62 = select i1 %60, i32 %59, i32 %61
  tail call void @pp_base_newline(ptr noundef %0) #14
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57, %64
  %65 = phi i32 [ %66, %64 ], [ 0, %57 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %66 = add nuw nsw i32 %65, 1
  %67 = icmp eq i32 %66, %62
  br i1 %67, label %68, label %64, !llvm.loop !65

68:                                               ; preds = %64, %57
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.85) #14
  %69 = load i64, ptr %52, align 8, !tbaa !46
  %70 = icmp ugt i64 %69, %58
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 3453, ptr noundef nonnull @.str.29) #14
  br label %72

72:                                               ; preds = %68, %71
  %73 = load ptr, ptr %56, align 8, !tbaa !46
  %74 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %73, i64 %58, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !103
  %76 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %75, i32 noundef %62, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.86) #14
  %77 = load i64, ptr %52, align 8, !tbaa !46
  %78 = icmp ugt i64 %77, %58
  br i1 %78, label %80, label %79

79:                                               ; preds = %72
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 3486, ptr noundef nonnull @.str.29) #14
  br label %80

80:                                               ; preds = %72, %79
  %81 = load ptr, ptr %56, align 8, !tbaa !46
  %82 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %81, i64 %58, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !105
  %84 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %83, i32 noundef %62, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.87) #14
  %85 = load i64, ptr %52, align 8, !tbaa !46
  %86 = icmp ugt i64 %85, %58
  br i1 %86, label %88, label %87

87:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 3453, ptr noundef nonnull @.str.29) #14
  br label %88

88:                                               ; preds = %80, %87
  %89 = load ptr, ptr %56, align 8, !tbaa !46
  %90 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %89, i64 %58, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !103
  %92 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %91, i32 noundef %62, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %93 = load i64, ptr %52, align 8, !tbaa !46
  %94 = icmp ugt i64 %93, %58
  br i1 %94, label %96, label %95

95:                                               ; preds = %88
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 4088, ptr noundef nonnull @.str.29) #14
  br label %96

96:                                               ; preds = %88, %95
  %97 = load ptr, ptr %56, align 8, !tbaa !46
  %98 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %97, i64 %58
  %99 = load i32, ptr %98, align 8, !tbaa !107
  switch i32 %99, label %104 [
    i32 97, label %100
    i32 99, label %101
    i32 98, label %102
    i32 100, label %103
  ]

100:                                              ; preds = %96
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 60) #14
  br label %105

101:                                              ; preds = %96
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 62) #14
  br label %105

102:                                              ; preds = %96
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.88) #14
  br label %105

103:                                              ; preds = %96
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.89) #14
  br label %105

104:                                              ; preds = %96
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 897, ptr noundef nonnull @.str.29) #14
  br label %105

105:                                              ; preds = %104, %103, %102, %101, %100
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %106 = load i64, ptr %52, align 8, !tbaa !46
  %107 = icmp ugt i64 %106, %58
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 3519, ptr noundef nonnull @.str.29) #14
  br label %109

109:                                              ; preds = %105, %108
  %110 = load ptr, ptr %56, align 8, !tbaa !46
  %111 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %110, i64 %58, i32 3
  %112 = load ptr, ptr %111, align 8, !tbaa !106
  %113 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %112, i32 noundef %62, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.87) #14
  %114 = load i64, ptr %52, align 8, !tbaa !46
  %115 = icmp ugt i64 %114, %58
  br i1 %115, label %117, label %116

116:                                              ; preds = %109
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 3453, ptr noundef nonnull @.str.29) #14
  br label %117

117:                                              ; preds = %109, %116
  %118 = load ptr, ptr %56, align 8, !tbaa !46
  %119 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %118, i64 %58, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !103
  %121 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %120, i32 noundef %62, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.86) #14
  %122 = load i64, ptr %52, align 8, !tbaa !46
  %123 = icmp ugt i64 %122, %58
  br i1 %123, label %125, label %124

124:                                              ; preds = %117
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 3552, ptr noundef nonnull @.str.29) #14
  br label %125

125:                                              ; preds = %117, %124
  %126 = load ptr, ptr %56, align 8, !tbaa !46
  %127 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %126, i64 %58, i32 4
  %128 = load ptr, ptr %127, align 8, !tbaa !108
  %129 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %128, i32 noundef %62, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #14
  %130 = add nuw i64 %58, 1
  %131 = load i64, ptr %52, align 8, !tbaa !46
  %132 = icmp ult i64 %130, %131
  br i1 %132, label %57, label %133, !llvm.loop !110

133:                                              ; preds = %125, %49
  %134 = phi i32 [ %2, %49 ], [ %62, %125 ]
  %135 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !46
  %137 = icmp eq ptr %136, null
  br i1 %137, label %161, label %138

138:                                              ; preds = %133
  %139 = load ptr, ptr %136, align 8, !tbaa !66
  %140 = icmp eq ptr %139, null
  br i1 %140, label %161, label %141

141:                                              ; preds = %138
  %142 = add i32 %134, 2
  tail call void @pp_base_newline(ptr noundef %0) #14
  %143 = icmp sgt i32 %134, -2
  br i1 %143, label %144, label %150

144:                                              ; preds = %141
  %145 = tail call i32 @llvm.smax.i32(i32 %142, i32 1)
  br label %146

146:                                              ; preds = %144, %146
  %147 = phi i32 [ %148, %146 ], [ 0, %144 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %148 = add nuw nsw i32 %147, 1
  %149 = icmp eq i32 %148, %145
  br i1 %149, label %150, label %146, !llvm.loop !65

150:                                              ; preds = %146, %141
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #14
  tail call void @pp_base_newline(ptr noundef %0) #14
  %151 = load ptr, ptr %135, align 8, !tbaa !46
  %152 = add nsw i32 %134, 4
  tail call fastcc void @dump_gimple_seq(ptr noundef %0, ptr noundef %151, i32 noundef %152, i32 noundef %3)
  tail call void @pp_base_newline(ptr noundef %0) #14
  %153 = icmp sgt i32 %134, -2
  br i1 %153, label %154, label %160

154:                                              ; preds = %150
  %155 = tail call i32 @llvm.smax.i32(i32 %142, i32 1)
  br label %156

156:                                              ; preds = %154, %156
  %157 = phi i32 [ %158, %156 ], [ 0, %154 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %158 = add nuw nsw i32 %157, 1
  %159 = icmp eq i32 %158, %155
  br i1 %159, label %160, label %156, !llvm.loop !65

160:                                              ; preds = %156, %150
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #14
  br label %161

161:                                              ; preds = %133, %138, %160, %46
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_gimple_omp_continue(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.78, ptr noundef %1, ptr noundef %9, ptr noundef %11)
  br label %19

12:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.90) #14
  %13 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %14, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %16 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !46
  %18 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %17, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #14
  br label %19

19:                                               ; preds = %12, %7
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_gimple_omp_single(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.70, ptr noundef %1, ptr noundef %9)
  %10 = getelementptr inbounds %struct.gimple_statement_omp_single, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  tail call void @dump_omp_clauses(ptr noundef %0, ptr noundef %11, i32 noundef %2, i32 noundef %3) #14
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.91)
  br label %41

12:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.92) #14
  %13 = getelementptr inbounds %struct.gimple_statement_omp_single, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  tail call void @dump_omp_clauses(ptr noundef %0, ptr noundef %14, i32 noundef %2, i32 noundef %3) #14
  %15 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = icmp eq ptr %16, null
  br i1 %17, label %41, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr %16, align 8, !tbaa !66
  %20 = icmp eq ptr %19, null
  br i1 %20, label %41, label %21

21:                                               ; preds = %18
  %22 = add i32 %2, 2
  tail call void @pp_base_newline(ptr noundef %0) #14
  %23 = icmp sgt i32 %2, -2
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = tail call i32 @llvm.smax.i32(i32 %22, i32 1)
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i32 [ %28, %26 ], [ 0, %24 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %28 = add nuw nsw i32 %27, 1
  %29 = icmp eq i32 %28, %25
  br i1 %29, label %30, label %26, !llvm.loop !65

30:                                               ; preds = %26, %21
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #14
  tail call void @pp_base_newline(ptr noundef %0) #14
  %31 = load ptr, ptr %15, align 8, !tbaa !46
  %32 = add nsw i32 %2, 4
  tail call fastcc void @dump_gimple_seq(ptr noundef %0, ptr noundef %31, i32 noundef %32, i32 noundef %3)
  tail call void @pp_base_newline(ptr noundef %0) #14
  %33 = icmp sgt i32 %2, -2
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = tail call i32 @llvm.smax.i32(i32 %22, i32 1)
  br label %36

36:                                               ; preds = %34, %36
  %37 = phi i32 [ %38, %36 ], [ 0, %34 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %38 = add nuw nsw i32 %37, 1
  %39 = icmp eq i32 %38, %35
  br i1 %39, label %40, label %36, !llvm.loop !65

40:                                               ; preds = %36, %30
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #14
  br label %41

41:                                               ; preds = %12, %18, %40, %7
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_gimple_omp_return(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr %1, align 8
  %9 = and i32 %8, 255
  %10 = add nsw i32 %9, -19
  %11 = icmp ult i32 %10, 14
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1511, ptr noundef nonnull @.str.29) #14
  br label %13

13:                                               ; preds = %7, %12
  %14 = load i32, ptr %1, align 8
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 1
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.93, ptr noundef nonnull %1, i32 noundef %16)
  br label %28

17:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.94) #14
  %18 = load i32, ptr %1, align 8
  %19 = and i32 %18, 255
  %20 = add nsw i32 %19, -19
  %21 = icmp ult i32 %20, 14
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1511, ptr noundef nonnull @.str.29) #14
  br label %23

23:                                               ; preds = %17, %22
  %24 = load i32, ptr %1, align 8
  %25 = and i32 %24, 65536
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.95) #14
  br label %28

28:                                               ; preds = %23, %27, %13
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_gimple_omp_sections(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.70, ptr noundef %1, ptr noundef %9)
  %10 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  tail call void @dump_omp_clauses(ptr noundef %0, ptr noundef %11, i32 noundef %2, i32 noundef %3) #14
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.91)
  br label %48

12:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.96) #14
  %13 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %1, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.40) #14
  %17 = load ptr, ptr %13, align 8, !tbaa !46
  %18 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %17, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 62) #14
  br label %19

19:                                               ; preds = %16, %12
  %20 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  tail call void @dump_omp_clauses(ptr noundef %0, ptr noundef %21, i32 noundef %2, i32 noundef %3) #14
  %22 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = icmp eq ptr %23, null
  br i1 %24, label %48, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %23, align 8, !tbaa !66
  %27 = icmp eq ptr %26, null
  br i1 %27, label %48, label %28

28:                                               ; preds = %25
  %29 = add i32 %2, 2
  tail call void @pp_base_newline(ptr noundef %0) #14
  %30 = icmp sgt i32 %2, -2
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = tail call i32 @llvm.smax.i32(i32 %29, i32 1)
  br label %33

33:                                               ; preds = %31, %33
  %34 = phi i32 [ %35, %33 ], [ 0, %31 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %35 = add nuw nsw i32 %34, 1
  %36 = icmp eq i32 %35, %32
  br i1 %36, label %37, label %33, !llvm.loop !65

37:                                               ; preds = %33, %28
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #14
  tail call void @pp_base_newline(ptr noundef %0) #14
  %38 = load ptr, ptr %22, align 8, !tbaa !46
  %39 = add nsw i32 %2, 4
  tail call fastcc void @dump_gimple_seq(ptr noundef %0, ptr noundef %38, i32 noundef %39, i32 noundef %3)
  tail call void @pp_base_newline(ptr noundef %0) #14
  %40 = icmp sgt i32 %2, -2
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = tail call i32 @llvm.smax.i32(i32 %29, i32 1)
  br label %43

43:                                               ; preds = %41, %43
  %44 = phi i32 [ %45, %43 ], [ 0, %41 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %45 = add nuw nsw i32 %44, 1
  %46 = icmp eq i32 %45, %42
  br i1 %46, label %47, label %43, !llvm.loop !65

47:                                               ; preds = %43, %37
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #14
  br label %48

48:                                               ; preds = %19, %25, %47, %7
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_gimple_omp_critical(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.97, ptr noundef %1, ptr noundef %9)
  br label %44

10:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.101) #14
  %11 = getelementptr inbounds %struct.gimple_statement_omp_critical, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.44) #14
  %15 = load ptr, ptr %11, align 8, !tbaa !46
  %16 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %15, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #14
  br label %17

17:                                               ; preds = %14, %10
  %18 = getelementptr inbounds %struct.gimple_statement_omp, ptr %1, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = icmp eq ptr %19, null
  br i1 %20, label %44, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !66
  %23 = icmp eq ptr %22, null
  br i1 %23, label %44, label %24

24:                                               ; preds = %21
  %25 = add i32 %2, 2
  tail call void @pp_base_newline(ptr noundef %0) #14
  %26 = icmp sgt i32 %2, -2
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = tail call i32 @llvm.smax.i32(i32 %25, i32 1)
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi i32 [ %31, %29 ], [ 0, %27 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %31 = add nuw nsw i32 %30, 1
  %32 = icmp eq i32 %31, %28
  br i1 %32, label %33, label %29, !llvm.loop !65

33:                                               ; preds = %29, %24
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #14
  tail call void @pp_base_newline(ptr noundef %0) #14
  %34 = load ptr, ptr %18, align 8, !tbaa !46
  %35 = add nsw i32 %2, 4
  tail call fastcc void @dump_gimple_seq(ptr noundef %0, ptr noundef %34, i32 noundef %35, i32 noundef %3)
  tail call void @pp_base_newline(ptr noundef %0) #14
  %36 = icmp sgt i32 %2, -2
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = tail call i32 @llvm.smax.i32(i32 %25, i32 1)
  br label %39

39:                                               ; preds = %37, %39
  %40 = phi i32 [ %41, %39 ], [ 0, %37 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %41 = add nuw nsw i32 %40, 1
  %42 = icmp eq i32 %41, %38
  br i1 %42, label %43, label %39, !llvm.loop !65

43:                                               ; preds = %39, %33
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #14
  br label %44

44:                                               ; preds = %17, %21, %43, %7
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_gimple_catch(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.gimple_statement_catch, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.gimple_statement_catch, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  br i1 %6, label %12, label %11

11:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.102, ptr noundef %1, ptr noundef %8, ptr noundef %10)
  br label %13

12:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.103, ptr noundef %8, ptr noundef %10)
  br label %13

13:                                               ; preds = %12, %11
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_gimple_eh_filter(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  br i1 %6, label %12, label %11

11:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.104, ptr noundef %1, ptr noundef %8, ptr noundef %10)
  br label %13

12:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.105, ptr noundef %8, ptr noundef %10)
  br label %13

13:                                               ; preds = %12, %11
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_gimple_eh_must_not_throw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.gimple_statement_eh_mnt, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  br i1 %6, label %10, label %9

9:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.53, ptr noundef %1, ptr noundef %8)
  br label %11

10:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.106, ptr noundef %8)
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_gimple_resx(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !46
  br i1 %6, label %10, label %9

9:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.107, ptr noundef %1, i32 noundef %8)
  br label %11

10:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.108, i32 noundef %8)
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_gimple_eh_dispatch(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !46
  br i1 %6, label %10, label %9

9:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.107, ptr noundef %1, i32 noundef %8)
  br label %11

10:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.109, i32 noundef %8)
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_gimple_debug(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = load i32, ptr %1, align 8
  %6 = icmp ult i32 %5, 65536
  br i1 %6, label %7, label %81

7:                                                ; preds = %4
  %8 = and i32 %3, 4
  %9 = icmp eq i32 %8, 0
  %10 = and i32 %5, 255
  %11 = add nsw i32 %10, -10
  %12 = icmp ult i32 %11, -9
  br i1 %9, label %47, label %13

13:                                               ; preds = %7
  br i1 %12, label %26, label %14

14:                                               ; preds = %13
  %15 = zext nneg i32 %10 to i64
  %16 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !50
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !76
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %23

23:                                               ; preds = %22, %14
  %24 = getelementptr inbounds i8, ptr %1, i64 %20
  %25 = load ptr, ptr %24, align 8, !tbaa !35
  br label %26

26:                                               ; preds = %13, %23
  %27 = phi ptr [ %25, %23 ], [ null, %13 ]
  %28 = load i32, ptr %1, align 8
  %29 = and i32 %28, 255
  %30 = add nsw i32 %29, -10
  %31 = icmp ult i32 %30, -9
  br i1 %31, label %45, label %32

32:                                               ; preds = %26
  %33 = zext nneg i32 %29 to i64
  %34 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !50
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !76
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %41

41:                                               ; preds = %40, %32
  %42 = getelementptr inbounds i8, ptr %1, i64 %38
  %43 = getelementptr inbounds ptr, ptr %42, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !35
  br label %45

45:                                               ; preds = %26, %41
  %46 = phi ptr [ %44, %41 ], [ null, %26 ]
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.110, ptr noundef nonnull %1, ptr noundef %27, ptr noundef %46)
  br label %82

47:                                               ; preds = %7
  br i1 %12, label %60, label %48

48:                                               ; preds = %47
  %49 = zext nneg i32 %10 to i64
  %50 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !50
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %52
  %54 = load i64, ptr %53, align 8, !tbaa !76
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %57

57:                                               ; preds = %56, %48
  %58 = getelementptr inbounds i8, ptr %1, i64 %54
  %59 = load ptr, ptr %58, align 8, !tbaa !35
  br label %60

60:                                               ; preds = %47, %57
  %61 = phi ptr [ %59, %57 ], [ null, %47 ]
  %62 = load i32, ptr %1, align 8
  %63 = and i32 %62, 255
  %64 = add nsw i32 %63, -10
  %65 = icmp ult i32 %64, -9
  br i1 %65, label %79, label %66

66:                                               ; preds = %60
  %67 = zext nneg i32 %63 to i64
  %68 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !50
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !76
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %75

75:                                               ; preds = %74, %66
  %76 = getelementptr inbounds i8, ptr %1, i64 %72
  %77 = getelementptr inbounds ptr, ptr %76, i64 1
  %78 = load ptr, ptr %77, align 8, !tbaa !35
  br label %79

79:                                               ; preds = %60, %75
  %80 = phi ptr [ %78, %75 ], [ null, %60 ]
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.111, ptr noundef %61, ptr noundef %80)
  br label %82

81:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 835, ptr noundef nonnull @.str.29) #14
  br label %82

82:                                               ; preds = %45, %79, %81
  ret void
}

declare ptr @predictor_name(i32 noundef) local_unnamed_addr #3

declare void @pp_write_text_to_stream(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gimple_dump_bb(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 !prof !34 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.expanded_location, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca %struct.expanded_location, align 8
  %10 = alloca %struct.expanded_location, align 8
  %11 = load i1, ptr @initialized, align 1
  br i1 %11, label %13, label %12

12:                                               ; preds = %4
  tail call void @pp_construct(ptr noundef nonnull @buffer, ptr noundef null, i32 noundef 0) #14
  store i8 1, ptr getelementptr inbounds (%struct.pretty_print_info, ptr @buffer, i64 0, i32 8), align 1, !tbaa !54
  store i1 true, ptr @initialized, align 1
  br label %13

13:                                               ; preds = %4, %12
  %14 = load ptr, ptr @buffer, align 8, !tbaa !57
  %15 = getelementptr inbounds %struct.output_buffer, ptr %14, i64 0, i32 4
  store ptr %1, ptr %15, align 8, !tbaa !58
  %16 = tail call i32 @llvm.smax.i32(i32 %2, i32 2)
  %17 = add nsw i32 %16, -2
  %18 = and i32 %3, 32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %185, label %20

20:                                               ; preds = %13
  %21 = icmp sgt i32 %2, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %20, %22
  %23 = phi i32 [ %24, %22 ], [ 0, %20 ]
  tail call void @pp_base_character(ptr noundef nonnull @buffer, i32 noundef 32) #14
  %24 = add nuw nsw i32 %23, 1
  %25 = icmp eq i32 %24, %2
  br i1 %25, label %26, label %22, !llvm.loop !111

26:                                               ; preds = %22, %20
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.113) #14
  %27 = load ptr, ptr @buffer, align 8, !tbaa !57
  %28 = getelementptr inbounds %struct.output_buffer, ptr %27, i64 0, i32 6
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %30 = load i32, ptr %29, align 8, !tbaa !101
  %31 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %30)
  %32 = load ptr, ptr @buffer, align 8, !tbaa !57
  %33 = getelementptr inbounds %struct.output_buffer, ptr %32, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull %33) #14
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %35 = load i32, ptr %34, align 8, !tbaa !112
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %26
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.114) #14
  %38 = load ptr, ptr @buffer, align 8, !tbaa !57
  %39 = getelementptr inbounds %struct.output_buffer, ptr %38, i64 0, i32 6
  %40 = load i32, ptr %34, align 8, !tbaa !112
  %41 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %40)
  %42 = load ptr, ptr @buffer, align 8, !tbaa !57
  %43 = getelementptr inbounds %struct.output_buffer, ptr %42, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull %43) #14
  br label %44

44:                                               ; preds = %37, %26
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %46 = load i64, ptr %45, align 8, !tbaa !113
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %44
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.115) #14
  %49 = load ptr, ptr @buffer, align 8, !tbaa !57
  %50 = getelementptr inbounds %struct.output_buffer, ptr %49, i64 0, i32 6
  %51 = load i64, ptr %45, align 8, !tbaa !113
  %52 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %50, ptr noundef nonnull dereferenceable(1) @.str.116, i64 noundef %51)
  %53 = load ptr, ptr @buffer, align 8, !tbaa !57
  %54 = getelementptr inbounds %struct.output_buffer, ptr %53, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull %54) #14
  br label %55

55:                                               ; preds = %48, %44
  %56 = and i32 %3, 128
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %126, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %60 = load i32, ptr %59, align 8, !tbaa !114, !noalias !115
  %61 = and i32 %60, 512
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %65 = load ptr, ptr %64, align 8, !tbaa !46, !noalias !115
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = load ptr, ptr %65, align 8, !tbaa !118, !noalias !115
  br label %69

69:                                               ; preds = %67, %63, %58
  %70 = phi ptr [ %68, %67 ], [ null, %63 ], [ null, %58 ]
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = load ptr, ptr %70, align 8, !tbaa !66, !noalias !115
  br label %74

74:                                               ; preds = %72, %69
  %75 = phi ptr [ %73, %72 ], [ null, %69 ]
  %76 = icmp eq ptr %75, null
  br i1 %76, label %115, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.expanded_location, ptr %10, i64 0, i32 1
  br label %79

79:                                               ; preds = %77, %111
  %80 = phi ptr [ %75, %77 ], [ %113, %111 ]
  %81 = load ptr, ptr %80, align 8, !tbaa !71
  %82 = load i32, ptr %81, align 8
  %83 = and i32 %82, 255
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %111, label %85

85:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10)
  %86 = getelementptr inbounds %struct.gimple_statement_base, ptr %81, i64 0, i32 2
  %87 = load i32, ptr %86, align 8, !tbaa !46
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %85
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %10, i32 noundef %87) #14
  %90 = load i32, ptr %78, align 8, !tbaa !63
  br label %91

91:                                               ; preds = %89, %85
  %92 = phi i32 [ %90, %89 ], [ -1, %85 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %111, label %94

94:                                               ; preds = %91
  call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.117) #14
  %95 = load ptr, ptr @buffer, align 8, !tbaa !57
  %96 = getelementptr inbounds %struct.output_buffer, ptr %95, i64 0, i32 6
  %97 = load ptr, ptr %80, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9)
  %98 = icmp eq ptr %97, null
  br i1 %98, label %106, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.gimple_statement_base, ptr %97, i64 0, i32 2
  %101 = load i32, ptr %100, align 8, !tbaa !46
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %9, i32 noundef %101) #14
  %104 = getelementptr inbounds %struct.expanded_location, ptr %9, i64 0, i32 1
  %105 = load i32, ptr %104, align 8, !tbaa !63
  br label %106

106:                                              ; preds = %103, %99, %94
  %107 = phi i32 [ %105, %103 ], [ -1, %94 ], [ -1, %99 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9)
  %108 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %96, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %107)
  %109 = load ptr, ptr @buffer, align 8, !tbaa !57
  %110 = getelementptr inbounds %struct.output_buffer, ptr %109, i64 0, i32 6
  call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull %110) #14
  br label %115

111:                                              ; preds = %91, %79
  %112 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %80, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !74
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %79, !llvm.loop !120

115:                                              ; preds = %111, %74, %106
  %116 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 12
  %117 = load i32, ptr %116, align 4, !tbaa !121
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %115
  call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.118) #14
  %120 = load ptr, ptr @buffer, align 8, !tbaa !57
  %121 = getelementptr inbounds %struct.output_buffer, ptr %120, i64 0, i32 6
  %122 = load i32, ptr %116, align 4, !tbaa !121
  %123 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %121, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %122)
  %124 = load ptr, ptr @buffer, align 8, !tbaa !57
  %125 = getelementptr inbounds %struct.output_buffer, ptr %124, i64 0, i32 6
  call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull %125) #14
  br label %126

126:                                              ; preds = %119, %115, %55
  call void @pp_base_newline(ptr noundef nonnull @buffer) #14
  %127 = icmp sgt i32 %2, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %126, %128
  %129 = phi i32 [ %130, %128 ], [ 0, %126 ]
  call void @pp_base_character(ptr noundef nonnull @buffer, i32 noundef 32) #14
  %130 = add nuw nsw i32 %129, 1
  %131 = icmp eq i32 %130, %2
  br i1 %131, label %132, label %128, !llvm.loop !65

132:                                              ; preds = %128, %126
  call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.119) #14
  call void @pp_write_text_to_stream(ptr noundef nonnull @buffer) #14
  %133 = icmp eq ptr %0, null
  %134 = and i32 %3, 2
  %135 = icmp eq i32 %134, 0
  br label %136

136:                                              ; preds = %183, %132
  %137 = phi i32 [ 0, %132 ], [ %184, %183 ]
  br i1 %133, label %138, label %139

138:                                              ; preds = %136
  call void @fancy_abort(ptr noundef nonnull @.str.123, i32 noundef 687, ptr noundef nonnull @.str.29) #14
  br label %139

139:                                              ; preds = %138, %136
  %140 = load ptr, ptr %0, align 8, !tbaa !35
  %141 = icmp eq ptr %140, null
  br i1 %141, label %144, label %142

142:                                              ; preds = %139
  %143 = load i32, ptr %140, align 8, !tbaa !122
  br label %144

144:                                              ; preds = %142, %139
  %145 = phi i32 [ %143, %142 ], [ 0, %139 ]
  %146 = icmp eq i32 %145, %137
  br i1 %146, label %151, label %147

147:                                              ; preds = %144
  %148 = zext i32 %137 to i64
  %149 = getelementptr inbounds %struct.VEC_edge_base, ptr %140, i64 0, i32 2, i64 %148
  %150 = load ptr, ptr %149, align 8, !tbaa !35
  br label %151

151:                                              ; preds = %147, %144
  %152 = phi ptr [ %150, %147 ], [ null, %144 ]
  br i1 %146, label %208, label %153

153:                                              ; preds = %151
  br i1 %135, label %170, label %154

154:                                              ; preds = %153
  call void @pp_base_character(ptr noundef nonnull @buffer, i32 noundef 32) #14
  %155 = load ptr, ptr %152, align 8, !tbaa !99
  %156 = load ptr, ptr @cfun, align 8, !tbaa !35
  %157 = getelementptr inbounds %struct.function, ptr %156, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !124
  %159 = load ptr, ptr %158, align 8, !tbaa !126
  %160 = icmp eq ptr %155, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %154
  call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.120) #14
  br label %174

162:                                              ; preds = %154
  %163 = load ptr, ptr @buffer, align 8, !tbaa !57
  %164 = getelementptr inbounds %struct.output_buffer, ptr %163, i64 0, i32 6
  %165 = getelementptr inbounds %struct.basic_block_def, ptr %155, i64 0, i32 9
  %166 = load i32, ptr %165, align 8, !tbaa !101
  %167 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %164, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %166)
  %168 = load ptr, ptr @buffer, align 8, !tbaa !57
  %169 = getelementptr inbounds %struct.output_buffer, ptr %168, i64 0, i32 6
  call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull %169) #14
  br label %174

170:                                              ; preds = %153
  %171 = load ptr, ptr @buffer, align 8, !tbaa !57
  %172 = getelementptr inbounds %struct.output_buffer, ptr %171, i64 0, i32 4
  %173 = load ptr, ptr %172, align 8, !tbaa !58
  call void @dump_edge_info(ptr noundef %173, ptr noundef %152, i32 noundef 0) #14
  br label %174

174:                                              ; preds = %170, %162, %161
  %175 = load ptr, ptr %0, align 8, !tbaa !35
  %176 = icmp eq ptr %175, null
  br i1 %176, label %179, label %177

177:                                              ; preds = %174
  %178 = load i32, ptr %175, align 8, !tbaa !122
  br label %179

179:                                              ; preds = %177, %174
  %180 = phi i32 [ %178, %177 ], [ 0, %174 ]
  %181 = icmp ult i32 %137, %180
  br i1 %181, label %183, label %182

182:                                              ; preds = %179
  call void @fancy_abort(ptr noundef nonnull @.str.123, i32 noundef 738, ptr noundef nonnull @.str.29) #14
  br label %183

183:                                              ; preds = %182, %179
  %184 = add i32 %137, 1
  br label %136, !llvm.loop !128

185:                                              ; preds = %13
  %186 = tail call ptr @first_stmt(ptr noundef %0) #14
  %187 = icmp eq ptr %186, null
  br i1 %187, label %192, label %188

188:                                              ; preds = %185
  %189 = load i32, ptr %186, align 8
  %190 = and i32 %189, 255
  %191 = icmp eq i32 %190, 4
  br i1 %191, label %209, label %192

192:                                              ; preds = %188, %185
  %193 = icmp sgt i32 %2, 2
  br i1 %193, label %194, label %200

194:                                              ; preds = %192
  %195 = add nsw i32 %2, -3
  br label %196

196:                                              ; preds = %194, %196
  %197 = phi i32 [ %198, %196 ], [ 0, %194 ]
  tail call void @pp_base_character(ptr noundef nonnull @buffer, i32 noundef 32) #14
  %198 = add nuw nsw i32 %197, 1
  %199 = icmp eq i32 %197, %195
  br i1 %199, label %200, label %196, !llvm.loop !129

200:                                              ; preds = %196, %192
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.121) #14
  %201 = load ptr, ptr @buffer, align 8, !tbaa !57
  %202 = getelementptr inbounds %struct.output_buffer, ptr %201, i64 0, i32 6
  %203 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %204 = load i32, ptr %203, align 8, !tbaa !101
  %205 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %202, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %204)
  %206 = load ptr, ptr @buffer, align 8, !tbaa !57
  %207 = getelementptr inbounds %struct.output_buffer, ptr %206, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull %207) #14
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.122) #14
  br label %208

208:                                              ; preds = %151, %200
  call void @pp_base_newline(ptr noundef nonnull @buffer) #14
  br label %209

209:                                              ; preds = %208, %188
  call void @pp_write_text_to_stream(ptr noundef nonnull @buffer) #14
  %210 = load ptr, ptr @buffer, align 8, !tbaa !57
  %211 = getelementptr inbounds %struct.output_buffer, ptr %210, i64 0, i32 4
  %212 = load ptr, ptr %211, align 8, !tbaa !58
  call void @check_bb_profile(ptr noundef %0, ptr noundef %212) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #14
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %0) #14
  %213 = load ptr, ptr %8, align 8, !tbaa.struct !130
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #14
  %214 = icmp eq ptr %213, null
  br i1 %214, label %237, label %215

215:                                              ; preds = %209
  %216 = and i32 %3, 64
  %217 = icmp eq i32 %216, 0
  %218 = icmp sgt i32 %2, 0
  br label %219

219:                                              ; preds = %215, %233
  %220 = phi ptr [ %213, %215 ], [ %235, %233 ]
  %221 = load ptr, ptr %220, align 8, !tbaa !71
  %222 = getelementptr inbounds %struct.gimple_statement_phi, ptr %221, i64 0, i32 3
  %223 = load ptr, ptr %222, align 8, !tbaa !46
  %224 = call zeroext i8 @is_gimple_reg(ptr noundef %223) #14
  %225 = icmp eq i8 %224, 0
  %226 = and i1 %217, %225
  br i1 %226, label %233, label %227

227:                                              ; preds = %219
  br i1 %218, label %228, label %232

228:                                              ; preds = %227, %228
  %229 = phi i32 [ %230, %228 ], [ 0, %227 ]
  call void @pp_base_character(ptr noundef nonnull @buffer, i32 noundef 32) #14
  %230 = add nuw nsw i32 %229, 1
  %231 = icmp eq i32 %230, %2
  br i1 %231, label %232, label %228, !llvm.loop !131

232:                                              ; preds = %228, %227
  call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.14) #14
  call fastcc void @dump_gimple_phi(ptr noundef nonnull @buffer, ptr noundef %221, i32 noundef %2, i32 noundef %3)
  call void @pp_base_newline(ptr noundef nonnull @buffer) #14
  br label %233

233:                                              ; preds = %232, %219
  %234 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %220, i64 0, i32 2
  %235 = load ptr, ptr %234, align 8, !tbaa !74
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %219, !llvm.loop !132

237:                                              ; preds = %233, %209
  %238 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %239 = load i32, ptr %238, align 8, !tbaa !114, !noalias !133
  %240 = and i32 %239, 512
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %237
  %243 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %244 = load ptr, ptr %243, align 8, !tbaa !46, !noalias !133
  %245 = icmp eq ptr %244, null
  br i1 %245, label %248, label %246

246:                                              ; preds = %242
  %247 = load ptr, ptr %244, align 8, !tbaa !118, !noalias !133
  br label %248

248:                                              ; preds = %246, %242, %237
  %249 = phi ptr [ %247, %246 ], [ null, %242 ], [ null, %237 ]
  %250 = icmp eq ptr %249, null
  br i1 %250, label %253, label %251

251:                                              ; preds = %248
  %252 = load ptr, ptr %249, align 8, !tbaa !66, !noalias !133
  br label %253

253:                                              ; preds = %251, %248
  %254 = phi ptr [ %252, %251 ], [ null, %248 ]
  %255 = icmp eq ptr %254, null
  br i1 %255, label %276, label %256

256:                                              ; preds = %253, %268
  %257 = phi ptr [ %274, %268 ], [ %254, %253 ]
  %258 = load ptr, ptr %257, align 8, !tbaa !71
  %259 = load i32, ptr %258, align 8
  %260 = and i32 %259, 255
  %261 = icmp eq i32 %260, 4
  %262 = select i1 %261, i32 %17, i32 %2
  %263 = icmp sgt i32 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %256, %264
  %265 = phi i32 [ %266, %264 ], [ 0, %256 ]
  call void @pp_base_character(ptr noundef nonnull @buffer, i32 noundef 32) #14
  %266 = add nuw nsw i32 %265, 1
  %267 = icmp eq i32 %266, %262
  br i1 %267, label %268, label %264, !llvm.loop !136

268:                                              ; preds = %264, %256
  call void @dump_gimple_stmt(ptr noundef nonnull @buffer, ptr noundef nonnull %258, i32 noundef %262, i32 noundef %3)
  call void @pp_base_newline(ptr noundef nonnull @buffer) #14
  %269 = load ptr, ptr @cfun, align 8, !tbaa !35
  %270 = load ptr, ptr @buffer, align 8, !tbaa !57
  %271 = getelementptr inbounds %struct.output_buffer, ptr %270, i64 0, i32 4
  %272 = load ptr, ptr %271, align 8, !tbaa !58
  call void @dump_histograms_for_stmt(ptr noundef %269, ptr noundef %272, ptr noundef nonnull %258) #14
  %273 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %257, i64 0, i32 2
  %274 = load ptr, ptr %273, align 8, !tbaa !74
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %256, !llvm.loop !137

276:                                              ; preds = %268, %253
  %277 = call ptr @last_stmt(ptr noundef %0) #14
  %278 = icmp eq ptr %277, null
  br i1 %278, label %321, label %279

279:                                              ; preds = %276
  %280 = load i32, ptr %277, align 8
  %281 = and i32 %280, 255
  %282 = icmp eq i32 %281, 1
  br i1 %282, label %283, label %321

283:                                              ; preds = %279
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  %284 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !138
  %286 = icmp eq ptr %285, null
  br i1 %286, label %320, label %287

287:                                              ; preds = %283
  %288 = load i32, ptr %285, align 8, !tbaa !122
  %289 = icmp eq i32 %288, 2
  br i1 %289, label %290, label %320

290:                                              ; preds = %287
  call void @extract_true_false_edges_from_block(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %6) #14
  %291 = add i32 %2, 2
  %292 = icmp sgt i32 %2, -2
  br i1 %292, label %293, label %299

293:                                              ; preds = %290
  %294 = call i32 @llvm.smax.i32(i32 %291, i32 1)
  br label %295

295:                                              ; preds = %293, %295
  %296 = phi i32 [ %297, %295 ], [ 0, %293 ]
  call void @pp_base_character(ptr noundef nonnull @buffer, i32 noundef 32) #14
  %297 = add nuw nsw i32 %296, 1
  %298 = icmp eq i32 %297, %294
  br i1 %298, label %299, label %295, !llvm.loop !139

299:                                              ; preds = %295, %290
  %300 = load ptr, ptr %5, align 8, !tbaa !35
  %301 = getelementptr inbounds %struct.edge_def, ptr %300, i64 0, i32 1
  %302 = load ptr, ptr %301, align 8, !tbaa !140
  call fastcc void @pp_cfg_jump(ptr noundef %302)
  call void @pp_base_newline(ptr noundef nonnull @buffer) #14
  %303 = icmp sgt i32 %2, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %299, %304
  %305 = phi i32 [ %306, %304 ], [ 0, %299 ]
  call void @pp_base_character(ptr noundef nonnull @buffer, i32 noundef 32) #14
  %306 = add nuw nsw i32 %305, 1
  %307 = icmp eq i32 %306, %2
  br i1 %307, label %308, label %304, !llvm.loop !65

308:                                              ; preds = %304, %299
  call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.124) #14
  call void @pp_base_newline(ptr noundef nonnull @buffer) #14
  %309 = icmp sgt i32 %2, -2
  br i1 %309, label %310, label %316

310:                                              ; preds = %308
  %311 = call i32 @llvm.smax.i32(i32 %291, i32 1)
  br label %312

312:                                              ; preds = %310, %312
  %313 = phi i32 [ %314, %312 ], [ 0, %310 ]
  call void @pp_base_character(ptr noundef nonnull @buffer, i32 noundef 32) #14
  %314 = add nuw nsw i32 %313, 1
  %315 = icmp eq i32 %314, %311
  br i1 %315, label %316, label %312, !llvm.loop !65

316:                                              ; preds = %312, %308
  %317 = load ptr, ptr %6, align 8, !tbaa !35
  %318 = getelementptr inbounds %struct.edge_def, ptr %317, i64 0, i32 1
  %319 = load ptr, ptr %318, align 8, !tbaa !140
  call fastcc void @pp_cfg_jump(ptr noundef %319)
  call void @pp_base_newline(ptr noundef nonnull @buffer) #14
  br label %320

320:                                              ; preds = %316, %287, %283
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  br label %394

321:                                              ; preds = %279, %276
  %322 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  br label %323

323:                                              ; preds = %350, %321
  %324 = phi i32 [ 0, %321 ], [ %351, %350 ]
  %325 = load ptr, ptr %322, align 8, !tbaa !35
  %326 = icmp eq ptr %325, null
  br i1 %326, label %329, label %327

327:                                              ; preds = %323
  %328 = load i32, ptr %325, align 8, !tbaa !122
  br label %329

329:                                              ; preds = %327, %323
  %330 = phi i32 [ %328, %327 ], [ 0, %323 ]
  %331 = icmp eq i32 %330, %324
  br i1 %331, label %336, label %332

332:                                              ; preds = %329
  %333 = zext i32 %324 to i64
  %334 = getelementptr inbounds %struct.VEC_edge_base, ptr %325, i64 0, i32 2, i64 %333
  %335 = load ptr, ptr %334, align 8, !tbaa !35
  br label %336

336:                                              ; preds = %332, %329
  %337 = phi ptr [ %335, %332 ], [ null, %329 ]
  br i1 %331, label %352, label %338

338:                                              ; preds = %336
  %339 = getelementptr inbounds %struct.edge_def, ptr %337, i64 0, i32 7
  %340 = load i32, ptr %339, align 8, !tbaa !141
  %341 = and i32 %340, 1
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %352

343:                                              ; preds = %338
  br i1 %326, label %346, label %344

344:                                              ; preds = %343
  %345 = load i32, ptr %325, align 8, !tbaa !122
  br label %346

346:                                              ; preds = %344, %343
  %347 = phi i32 [ %345, %344 ], [ 0, %343 ]
  %348 = icmp ult i32 %324, %347
  br i1 %348, label %350, label %349

349:                                              ; preds = %346
  call void @fancy_abort(ptr noundef nonnull @.str.123, i32 noundef 738, ptr noundef nonnull @.str.29) #14
  br label %350

350:                                              ; preds = %349, %346
  %351 = add i32 %324, 1
  br label %323, !llvm.loop !142

352:                                              ; preds = %338, %336
  %353 = icmp eq ptr %337, null
  br i1 %353, label %394, label %354

354:                                              ; preds = %352
  %355 = getelementptr inbounds %struct.edge_def, ptr %337, i64 0, i32 1
  %356 = load ptr, ptr %355, align 8, !tbaa !140
  %357 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %358 = load ptr, ptr %357, align 8, !tbaa !143
  %359 = icmp eq ptr %356, %358
  br i1 %359, label %394, label %360

360:                                              ; preds = %354
  %361 = icmp sgt i32 %2, 0
  br i1 %361, label %362, label %366

362:                                              ; preds = %360, %362
  %363 = phi i32 [ %364, %362 ], [ 0, %360 ]
  call void @pp_base_character(ptr noundef nonnull @buffer, i32 noundef 32) #14
  %364 = add nuw nsw i32 %363, 1
  %365 = icmp eq i32 %364, %2
  br i1 %365, label %366, label %362, !llvm.loop !144

366:                                              ; preds = %362, %360
  %367 = and i32 %3, 128
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %392, label %369

369:                                              ; preds = %366
  %370 = getelementptr inbounds %struct.edge_def, ptr %337, i64 0, i32 5
  %371 = load i32, ptr %370, align 8, !tbaa !145
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %392, label %373

373:                                              ; preds = %369
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #14
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %7, i32 noundef %371) #14
  %374 = load ptr, ptr %7, align 8, !tbaa.struct !92
  %375 = getelementptr inbounds i8, ptr %7, i64 8
  %376 = load i32, ptr %375, align 8, !tbaa.struct !93
  %377 = getelementptr inbounds i8, ptr %7, i64 12
  %378 = load i32, ptr %377, align 4, !tbaa.struct !94
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #14
  call void @pp_base_character(ptr noundef nonnull @buffer, i32 noundef 91) #14
  %379 = icmp eq ptr %374, null
  br i1 %379, label %381, label %380

380:                                              ; preds = %373
  call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull %374) #14
  call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.2) #14
  br label %381

381:                                              ; preds = %380, %373
  %382 = load ptr, ptr @buffer, align 8, !tbaa !57
  %383 = getelementptr inbounds %struct.output_buffer, ptr %382, i64 0, i32 6
  %384 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %383, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %376)
  %385 = load ptr, ptr @buffer, align 8, !tbaa !57
  %386 = getelementptr inbounds %struct.output_buffer, ptr %385, i64 0, i32 6
  call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull %386) #14
  call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.2) #14
  %387 = load ptr, ptr @buffer, align 8, !tbaa !57
  %388 = getelementptr inbounds %struct.output_buffer, ptr %387, i64 0, i32 6
  %389 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %388, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %378)
  %390 = load ptr, ptr @buffer, align 8, !tbaa !57
  %391 = getelementptr inbounds %struct.output_buffer, ptr %390, i64 0, i32 6
  call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull %391) #14
  call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.5) #14
  br label %392

392:                                              ; preds = %381, %369, %366
  %393 = load ptr, ptr %355, align 8, !tbaa !140
  call fastcc void @pp_cfg_jump(ptr noundef %393)
  call void @pp_base_newline(ptr noundef nonnull @buffer) #14
  br label %394

394:                                              ; preds = %392, %354, %352, %320
  br i1 %19, label %455, label %395

395:                                              ; preds = %394
  %396 = icmp sgt i32 %2, 0
  br i1 %396, label %397, label %401

397:                                              ; preds = %395, %397
  %398 = phi i32 [ %399, %397 ], [ 0, %395 ]
  call void @pp_base_character(ptr noundef nonnull @buffer, i32 noundef 32) #14
  %399 = add nuw nsw i32 %398, 1
  %400 = icmp eq i32 %399, %2
  br i1 %400, label %401, label %397, !llvm.loop !146

401:                                              ; preds = %397, %395
  call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.126) #14
  call void @pp_write_text_to_stream(ptr noundef nonnull @buffer) #14
  %402 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %403 = and i32 %3, 2
  %404 = icmp eq i32 %403, 0
  br label %405

405:                                              ; preds = %452, %401
  %406 = phi i32 [ 0, %401 ], [ %453, %452 ]
  %407 = load ptr, ptr %402, align 8, !tbaa !35
  %408 = icmp eq ptr %407, null
  br i1 %408, label %411, label %409

409:                                              ; preds = %405
  %410 = load i32, ptr %407, align 8, !tbaa !122
  br label %411

411:                                              ; preds = %409, %405
  %412 = phi i32 [ %410, %409 ], [ 0, %405 ]
  %413 = icmp eq i32 %412, %406
  br i1 %413, label %418, label %414

414:                                              ; preds = %411
  %415 = zext i32 %406 to i64
  %416 = getelementptr inbounds %struct.VEC_edge_base, ptr %407, i64 0, i32 2, i64 %415
  %417 = load ptr, ptr %416, align 8, !tbaa !35
  br label %418

418:                                              ; preds = %414, %411
  %419 = phi ptr [ %417, %414 ], [ null, %411 ]
  br i1 %413, label %454, label %420

420:                                              ; preds = %418
  br i1 %404, label %439, label %421

421:                                              ; preds = %420
  call void @pp_base_character(ptr noundef nonnull @buffer, i32 noundef 32) #14
  %422 = getelementptr inbounds %struct.edge_def, ptr %419, i64 0, i32 1
  %423 = load ptr, ptr %422, align 8, !tbaa !140
  %424 = load ptr, ptr @cfun, align 8, !tbaa !35
  %425 = getelementptr inbounds %struct.function, ptr %424, i64 0, i32 1
  %426 = load ptr, ptr %425, align 8, !tbaa !124
  %427 = getelementptr inbounds %struct.control_flow_graph, ptr %426, i64 0, i32 1
  %428 = load ptr, ptr %427, align 8, !tbaa !147
  %429 = icmp eq ptr %423, %428
  br i1 %429, label %430, label %431

430:                                              ; preds = %421
  call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.127) #14
  br label %443

431:                                              ; preds = %421
  %432 = load ptr, ptr @buffer, align 8, !tbaa !57
  %433 = getelementptr inbounds %struct.output_buffer, ptr %432, i64 0, i32 6
  %434 = getelementptr inbounds %struct.basic_block_def, ptr %423, i64 0, i32 9
  %435 = load i32, ptr %434, align 8, !tbaa !101
  %436 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %433, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %435)
  %437 = load ptr, ptr @buffer, align 8, !tbaa !57
  %438 = getelementptr inbounds %struct.output_buffer, ptr %437, i64 0, i32 6
  call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull %438) #14
  br label %443

439:                                              ; preds = %420
  %440 = load ptr, ptr @buffer, align 8, !tbaa !57
  %441 = getelementptr inbounds %struct.output_buffer, ptr %440, i64 0, i32 4
  %442 = load ptr, ptr %441, align 8, !tbaa !58
  call void @dump_edge_info(ptr noundef %442, ptr noundef %419, i32 noundef 1) #14
  br label %443

443:                                              ; preds = %439, %431, %430
  %444 = load ptr, ptr %402, align 8, !tbaa !35
  %445 = icmp eq ptr %444, null
  br i1 %445, label %448, label %446

446:                                              ; preds = %443
  %447 = load i32, ptr %444, align 8, !tbaa !122
  br label %448

448:                                              ; preds = %446, %443
  %449 = phi i32 [ %447, %446 ], [ 0, %443 ]
  %450 = icmp ult i32 %406, %449
  br i1 %450, label %452, label %451

451:                                              ; preds = %448
  call void @fancy_abort(ptr noundef nonnull @.str.123, i32 noundef 738, ptr noundef nonnull @.str.29) #14
  br label %452

452:                                              ; preds = %451, %448
  %453 = add i32 %406, 1
  br label %405, !llvm.loop !148

454:                                              ; preds = %418
  call void @pp_base_newline(ptr noundef nonnull @buffer) #14
  br label %455

455:                                              ; preds = %394, %454
  call void @pp_base_flush(ptr noundef nonnull @buffer) #14
  ret void
}

declare void @pp_construct(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @pp_base_newline(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @ssa_operands_active() local_unnamed_addr #3

declare i32 @dump_generic_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @dump_gimple_fmt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ...) unnamed_addr #9 !prof !34 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #14
  call void @llvm.va_start(ptr nonnull %5)
  %6 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 2
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 2
  %9 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 2
  %11 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 3
  %12 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 2
  %13 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 3
  br label %14

14:                                               ; preds = %138, %4
  %15 = phi ptr [ %3, %4 ], [ %141, %138 ]
  %16 = phi i32 [ %1, %4 ], [ %140, %138 ]
  %17 = load i8, ptr %15, align 1, !tbaa !46
  switch i8 %17, label %136 [
    i8 0, label %142
    i8 37, label %18
  ]

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, ptr %15, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !46
  switch i8 %20, label %135 [
    i8 71, label %21
    i8 83, label %40
    i8 84, label %62
    i8 100, label %80
    i8 115, label %99
    i8 110, label %113
    i8 43, label %119
    i8 45, label %128
  ]

21:                                               ; preds = %18
  %22 = load i32, ptr %5, align 16
  %23 = icmp ult i32 %22, 41
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load ptr, ptr %13, align 16
  %26 = zext nneg i32 %22 to i64
  %27 = getelementptr i8, ptr %25, i64 %26
  %28 = add nuw nsw i32 %22, 8
  store i32 %28, ptr %5, align 16
  br label %32

29:                                               ; preds = %21
  %30 = load ptr, ptr %12, align 8
  %31 = getelementptr i8, ptr %30, i64 8
  store ptr %31, ptr %12, align 8
  br label %32

32:                                               ; preds = %29, %24
  %33 = phi ptr [ %27, %24 ], [ %30, %29 ]
  %34 = load ptr, ptr %33, align 8
  %35 = load i32, ptr %34, align 8
  %36 = and i32 %35, 255
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds [0 x ptr], ptr @gimple_code_name, i64 0, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !35
  call void @pp_base_string(ptr noundef %0, ptr noundef %39) #14
  br label %138

40:                                               ; preds = %18
  %41 = load i32, ptr %5, align 16
  %42 = icmp ult i32 %41, 41
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 3
  %45 = load ptr, ptr %44, align 16
  %46 = zext nneg i32 %41 to i64
  %47 = getelementptr i8, ptr %45, i64 %46
  %48 = add nuw nsw i32 %41, 8
  store i32 %48, ptr %5, align 16
  br label %53

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr i8, ptr %51, i64 8
  store ptr %52, ptr %50, align 8
  br label %53

53:                                               ; preds = %49, %43
  %54 = phi ptr [ %47, %43 ], [ %51, %49 ]
  %55 = load ptr, ptr %54, align 8
  call void @pp_base_newline(ptr noundef %0) #14
  %56 = add nsw i32 %16, 2
  call fastcc void @dump_gimple_seq(ptr noundef %0, ptr noundef %55, i32 noundef %56, i32 noundef %2)
  call void @pp_base_newline(ptr noundef %0) #14
  %57 = icmp sgt i32 %16, 0
  br i1 %57, label %58, label %138

58:                                               ; preds = %53, %58
  %59 = phi i32 [ %60, %58 ], [ 0, %53 ]
  call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %60 = add nuw nsw i32 %59, 1
  %61 = icmp eq i32 %60, %16
  br i1 %61, label %138, label %58, !llvm.loop !65

62:                                               ; preds = %18
  %63 = load i32, ptr %5, align 16
  %64 = icmp ult i32 %63, 41
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load ptr, ptr %11, align 16
  %67 = zext nneg i32 %63 to i64
  %68 = getelementptr i8, ptr %66, i64 %67
  %69 = add nuw nsw i32 %63, 8
  store i32 %69, ptr %5, align 16
  br label %73

70:                                               ; preds = %62
  %71 = load ptr, ptr %10, align 8
  %72 = getelementptr i8, ptr %71, i64 8
  store ptr %72, ptr %10, align 8
  br label %73

73:                                               ; preds = %70, %65
  %74 = phi ptr [ %68, %65 ], [ %71, %70 ]
  %75 = load ptr, ptr %74, align 8
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.31) #14
  br label %138

78:                                               ; preds = %73
  %79 = call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %75, i32 noundef %16, i32 noundef %2, i8 noundef zeroext 0) #14
  br label %138

80:                                               ; preds = %18
  %81 = load ptr, ptr %0, align 8, !tbaa !57
  %82 = getelementptr inbounds %struct.output_buffer, ptr %81, i64 0, i32 6
  %83 = load i32, ptr %5, align 16
  %84 = icmp ult i32 %83, 41
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load ptr, ptr %9, align 16
  %87 = zext nneg i32 %83 to i64
  %88 = getelementptr i8, ptr %86, i64 %87
  %89 = add nuw nsw i32 %83, 8
  store i32 %89, ptr %5, align 16
  br label %93

90:                                               ; preds = %80
  %91 = load ptr, ptr %8, align 8
  %92 = getelementptr i8, ptr %91, i64 8
  store ptr %92, ptr %8, align 8
  br label %93

93:                                               ; preds = %90, %85
  %94 = phi ptr [ %88, %85 ], [ %91, %90 ]
  %95 = load i32, ptr %94, align 4
  %96 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %82, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %95)
  %97 = load ptr, ptr %0, align 8, !tbaa !57
  %98 = getelementptr inbounds %struct.output_buffer, ptr %97, i64 0, i32 6
  call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %98) #14
  br label %138

99:                                               ; preds = %18
  %100 = load i32, ptr %5, align 16
  %101 = icmp ult i32 %100, 41
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load ptr, ptr %7, align 16
  %104 = zext nneg i32 %100 to i64
  %105 = getelementptr i8, ptr %103, i64 %104
  %106 = add nuw nsw i32 %100, 8
  store i32 %106, ptr %5, align 16
  br label %110

107:                                              ; preds = %99
  %108 = load ptr, ptr %6, align 8
  %109 = getelementptr i8, ptr %108, i64 8
  store ptr %109, ptr %6, align 8
  br label %110

110:                                              ; preds = %107, %102
  %111 = phi ptr [ %105, %102 ], [ %108, %107 ]
  %112 = load ptr, ptr %111, align 8
  call void @pp_base_string(ptr noundef %0, ptr noundef %112) #14
  br label %138

113:                                              ; preds = %18
  call void @pp_base_newline(ptr noundef %0) #14
  %114 = icmp sgt i32 %16, 0
  br i1 %114, label %115, label %138

115:                                              ; preds = %113, %115
  %116 = phi i32 [ %117, %115 ], [ 0, %113 ]
  call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %117 = add nuw nsw i32 %116, 1
  %118 = icmp eq i32 %117, %16
  br i1 %118, label %138, label %115, !llvm.loop !65

119:                                              ; preds = %18
  %120 = add i32 %16, 2
  call void @pp_base_newline(ptr noundef %0) #14
  %121 = icmp sgt i32 %16, -2
  br i1 %121, label %122, label %138

122:                                              ; preds = %119
  %123 = call i32 @llvm.smax.i32(i32 %120, i32 1)
  br label %124

124:                                              ; preds = %122, %124
  %125 = phi i32 [ %126, %124 ], [ 0, %122 ]
  call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %126 = add nuw nsw i32 %125, 1
  %127 = icmp eq i32 %126, %123
  br i1 %127, label %138, label %124, !llvm.loop !65

128:                                              ; preds = %18
  %129 = add i32 %16, -2
  call void @pp_base_newline(ptr noundef %0) #14
  %130 = icmp sgt i32 %16, 2
  br i1 %130, label %131, label %138

131:                                              ; preds = %128, %131
  %132 = phi i32 [ %133, %131 ], [ 0, %128 ]
  call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  %133 = add nuw nsw i32 %132, 1
  %134 = icmp eq i32 %133, %129
  br i1 %134, label %138, label %131, !llvm.loop !65

135:                                              ; preds = %18
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 229, ptr noundef nonnull @.str.29) #14
  br label %138

136:                                              ; preds = %14
  %137 = sext i8 %17 to i32
  call void @pp_base_character(ptr noundef %0, i32 noundef %137) #14
  br label %138

138:                                              ; preds = %131, %124, %115, %58, %128, %119, %113, %53, %32, %93, %110, %135, %78, %77, %136
  %139 = phi ptr [ %15, %136 ], [ %19, %77 ], [ %19, %78 ], [ %19, %135 ], [ %19, %110 ], [ %19, %93 ], [ %19, %32 ], [ %19, %53 ], [ %19, %113 ], [ %19, %119 ], [ %19, %128 ], [ %19, %58 ], [ %19, %115 ], [ %19, %124 ], [ %19, %131 ]
  %140 = phi i32 [ %16, %136 ], [ %16, %77 ], [ %16, %78 ], [ %16, %135 ], [ %16, %110 ], [ %16, %93 ], [ %16, %32 ], [ %16, %53 ], [ %16, %113 ], [ %120, %119 ], [ %129, %128 ], [ %16, %58 ], [ %16, %115 ], [ %120, %124 ], [ %129, %131 ]
  %141 = getelementptr inbounds i8, ptr %139, i64 1
  br label %14, !llvm.loop !149

142:                                              ; preds = %14
  call void @llvm.va_end(ptr %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #14
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #10

declare i32 @op_prio(ptr noundef) local_unnamed_addr #3

declare i32 @op_code_prio(i32 noundef) local_unnamed_addr #3

declare ptr @op_symbol_code(i32 noundef) local_unnamed_addr #3

declare void @print_declaration(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_gimple_call_args(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #9 !prof !34 {
  %4 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %44, label %7

7:                                                ; preds = %3, %36
  %8 = phi i64 [ %37, %36 ], [ 0, %3 ]
  %9 = add nuw nsw i64 %8, 3
  %10 = load i32, ptr %1, align 8
  %11 = and i32 %10, 255
  %12 = add nsw i32 %11, -10
  %13 = icmp ult i32 %12, -9
  br i1 %13, label %28, label %14

14:                                               ; preds = %7
  %15 = zext nneg i32 %11 to i64
  %16 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !50
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !76
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %23

23:                                               ; preds = %22, %14
  %24 = getelementptr inbounds i8, ptr %1, i64 %20
  %25 = and i64 %9, 4294967295
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !35
  br label %28

28:                                               ; preds = %7, %23
  %29 = phi ptr [ %27, %23 ], [ null, %7 ]
  %30 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %29, i32 noundef 0, i32 noundef %2, i8 noundef zeroext 0) #14
  %31 = load i32, ptr %4, align 4, !tbaa !46
  %32 = add i32 %31, -4
  %33 = zext i32 %32 to i64
  %34 = icmp ult i64 %8, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.19) #14
  br label %36

36:                                               ; preds = %28, %35
  %37 = add nuw nsw i64 %8, 1
  %38 = load i32, ptr %4, align 4, !tbaa !46
  %39 = add i32 %38, -3
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %7, label %42, !llvm.loop !150

42:                                               ; preds = %36
  %43 = icmp eq i32 %39, 0
  br label %44

44:                                               ; preds = %42, %3
  %45 = phi i1 [ true, %3 ], [ %43, %42 ]
  %46 = load i32, ptr %1, align 8
  %47 = and i32 %46, 1048576
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  br i1 %45, label %51, label %50

50:                                               ; preds = %49
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #14
  br label %51

51:                                               ; preds = %50, %49
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.48) #14
  br label %52

52:                                               ; preds = %51, %44
  ret void
}

declare void @print_call_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dump_omp_clauses(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @dump_histograms_for_stmt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dump_edge_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @first_stmt(ptr noundef) local_unnamed_addr #3

declare void @check_bb_profile(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

declare void @extract_true_false_edges_from_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @pp_cfg_jump(ptr noundef %0) unnamed_addr #9 !prof !34 {
  %2 = tail call ptr @first_stmt(ptr noundef %0) #14
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.125) #14
  %3 = load ptr, ptr @buffer, align 8, !tbaa !57
  %4 = getelementptr inbounds %struct.output_buffer, ptr %3, i64 0, i32 6
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !101
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %6)
  %8 = load ptr, ptr @buffer, align 8, !tbaa !57
  %9 = getelementptr inbounds %struct.output_buffer, ptr %8, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull %9) #14
  tail call void @pp_base_character(ptr noundef nonnull @buffer, i32 noundef 62) #14
  %10 = icmp eq ptr %2, null
  br i1 %10, label %35, label %11

11:                                               ; preds = %1
  %12 = load i32, ptr %2, align 8
  %13 = and i32 %12, 255
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %15, label %35

15:                                               ; preds = %11
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.44) #14
  %16 = load i32, ptr %2, align 8
  %17 = and i32 %16, 255
  %18 = add nsw i32 %17, -10
  %19 = icmp ult i32 %18, -9
  br i1 %19, label %32, label %20

20:                                               ; preds = %15
  %21 = zext nneg i32 %17 to i64
  %22 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !50
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %24
  %26 = load i64, ptr %25, align 8, !tbaa !76
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #14
  br label %29

29:                                               ; preds = %28, %20
  %30 = getelementptr inbounds i8, ptr %2, i64 %26
  %31 = load ptr, ptr %30, align 8, !tbaa !35
  br label %32

32:                                               ; preds = %15, %29
  %33 = phi ptr [ %31, %29 ], [ null, %15 ]
  %34 = tail call i32 @dump_generic_node(ptr noundef nonnull @buffer, ptr noundef %33, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0) #14
  tail call void @pp_base_character(ptr noundef nonnull @buffer, i32 noundef 41) #14
  br label %35

35:                                               ; preds = %1, %11, %32
  tail call void @pp_base_character(ptr noundef nonnull @buffer, i32 noundef 59) #14
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

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
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #11 = { nofree nounwind }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }

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
!57 = !{!55, !36, i64 0}
!58 = !{!59, !36, i64 192}
!59 = !{!"", !60, i64 0, !60, i64 88, !36, i64 176, !36, i64 184, !36, i64 192, !41, i64 200, !37, i64 204}
!60 = !{!"obstack", !42, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !42, i64 40, !41, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !41, i64 80, !41, i64 80, !41, i64 80}
!61 = !{!62, !36, i64 0}
!62 = !{!"", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16}
!63 = !{!62, !41, i64 8}
!64 = !{!62, !41, i64 12}
!65 = distinct !{!65, !52, !53}
!66 = !{!67, !36, i64 0}
!67 = !{!"gimple_seq_d", !36, i64 0, !36, i64 8, !36, i64 16}
!68 = !{!69}
!69 = distinct !{!69, !70, !"gsi_start: argument 0"}
!70 = distinct !{!70, !"gsi_start"}
!71 = !{!72, !36, i64 0}
!72 = !{!"gimple_seq_node_d", !36, i64 0, !36, i64 8, !36, i64 16}
!73 = distinct !{!73, !52, !53}
!74 = !{!72, !36, i64 16}
!75 = distinct !{!75, !52, !53}
!76 = !{!42, !42, i64 0}
!77 = distinct !{!77, !52, !53}
!78 = distinct !{!78, !52, !53}
!79 = distinct !{!79, !52, !53}
!80 = distinct !{!80, !52, !53}
!81 = distinct !{!81, !52, !53}
!82 = distinct !{!82, !52, !53}
!83 = distinct !{!83, !52, !53}
!84 = distinct !{!84, !52, !53}
!85 = distinct !{!85, !52, !53}
!86 = distinct !{!86, !52, !53}
!87 = distinct !{!87, !52, !53}
!88 = distinct !{!88, !52, !53}
!89 = !{!90, !41, i64 40}
!90 = !{!"phi_arg_d", !91, i64 0, !36, i64 32, !41, i64 40}
!91 = !{!"ssa_use_operand_d", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24}
!92 = !{i64 0, i64 8, !35, i64 8, i64 4, !50, i64 12, i64 4, !50, i64 16, i64 1, !46}
!93 = !{i64 0, i64 4, !50, i64 4, i64 4, !50, i64 8, i64 1, !46}
!94 = !{i64 0, i64 4, !50, i64 4, i64 1, !46}
!95 = !{!91, !36, i64 24}
!96 = !{!97, !36, i64 0}
!97 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!98 = !{}
!99 = !{!100, !36, i64 0}
!100 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!101 = !{!97, !41, i64 80}
!102 = distinct !{!102, !52, !53}
!103 = !{!104, !36, i64 8}
!104 = !{!"gimple_omp_for_iter", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!105 = !{!104, !36, i64 16}
!106 = !{!104, !36, i64 24}
!107 = !{!104, !41, i64 0}
!108 = !{!104, !36, i64 32}
!109 = distinct !{!109, !52, !53}
!110 = distinct !{!110, !52, !53}
!111 = distinct !{!111, !52, !53}
!112 = !{!97, !41, i64 88}
!113 = !{!97, !42, i64 72}
!114 = !{!97, !41, i64 96}
!115 = !{!116}
!116 = distinct !{!116, !117, !"gsi_start_bb: argument 0"}
!117 = distinct !{!117, !"gsi_start_bb"}
!118 = !{!119, !36, i64 0}
!119 = !{!"gimple_bb_info", !36, i64 0, !36, i64 8}
!120 = distinct !{!120, !52, !53}
!121 = !{!97, !41, i64 92}
!122 = !{!123, !41, i64 0}
!123 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!124 = !{!125, !36, i64 8}
!125 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!126 = !{!127, !36, i64 0}
!127 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!128 = distinct !{!128, !52, !53}
!129 = distinct !{!129, !52, !53}
!130 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35}
!131 = distinct !{!131, !52, !53}
!132 = distinct !{!132, !52, !53}
!133 = !{!134}
!134 = distinct !{!134, !135, !"gsi_start_bb: argument 0"}
!135 = distinct !{!135, !"gsi_start_bb"}
!136 = distinct !{!136, !52, !53}
!137 = distinct !{!137, !52, !53}
!138 = !{!97, !36, i64 8}
!139 = distinct !{!139, !52, !53}
!140 = !{!100, !36, i64 8}
!141 = !{!100, !41, i64 48}
!142 = distinct !{!142, !52, !53}
!143 = !{!97, !36, i64 56}
!144 = distinct !{!144, !52, !53}
!145 = !{!100, !41, i64 40}
!146 = distinct !{!146, !52, !53}
!147 = !{!127, !36, i64 8}
!148 = distinct !{!148, !52, !53}
!149 = distinct !{!149, !52, !53}
!150 = distinct !{!150, !52, !53}
