; ModuleID = 'tree-ssa-loop-prefetch.c'
source_filename = "tree-ssa-loop-prefetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.eni_weights_d = type { i32, i32, i32, i32, i8 }
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct.optab_handlers = type { i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.tree_niter_desc = type { ptr, ptr, ptr, %struct.double_int, %struct.affine_iv, ptr, i32 }
%struct.double_int = type { i64, i64 }
%struct.affine_iv = type { ptr, ptr, i8 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.mem_ref_group = type { ptr, i64, ptr, ptr }
%struct.mem_ref = type { ptr, ptr, i64, ptr, i64, i64, i32, ptr, i8 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.data_reference = type { ptr, ptr, ptr, i8, %struct.innermost_loop_behavior, %struct.indices, %struct.dr_alias, ptr }
%struct.innermost_loop_behavior = type { ptr, ptr, ptr, ptr, ptr }
%struct.indices = type { ptr, ptr }
%struct.dr_alias = type { ptr, ptr }
%struct.VEC_data_reference_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.VEC_ddr_p_base = type { i32, i32, [1 x ptr] }
%struct.data_dependence_relation = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.VEC_lambda_vector_base = type { i32, i32, [1 x ptr] }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.ar_data = type { ptr, ptr, ptr, ptr }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@x86_prefetch_sse = external local_unnamed_addr global i32, align 4
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@compiler_params = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [25 x i8] c"Prefetching parameters:\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"    simultaneous prefetches: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"    prefetch latency: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"    prefetch block size: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"    L1 cache size: %d lines, %d kB\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"    L1 cache line size: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"    L2 cache size: %d kB\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"    min insn-to-prefetch ratio: %d \0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"    min insn-to-mem ratio: %d \0A\00", align 1
@built_in_decls = external local_unnamed_addr global [721 x ptr], align 16
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.10 = private unnamed_addr constant [19 x i8] c"__builtin_prefetch\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"tree-ssa-loop-prefetch.c\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Processing loop %d:\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [23 x i8] c"  ignored (cold area)\0A\00", align 1
@eni_time_weights = external global %struct.eni_weights_d, align 4
@eni_size_weights = external global %struct.eni_weights_d, align 4
@.str.16 = private unnamed_addr constant [95 x i8] c"Ahead %d, unroll factor %d, trip count %ld\0Ainsn count %d, mem ref count %d, prefetch count %d\0A\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.17 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.18 = private unnamed_addr constant [15 x i8] c"Reference %p:\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"  group %p (base \00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c", step \00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"  delta \00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"Reference %p:\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c" no restrictions\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c" do not prefetch\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c" prefetch once\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c" prefetch before \00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c" prefetch mod \00", align 1
@chrec_known = external local_unnamed_addr global ptr, align 8
@chrec_dont_know = external local_unnamed_addr global ptr, align 8
@.str.33 = private unnamed_addr constant [18 x i8] c"Reuse distances:\0A\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c" ref %p distance %u\0A\00", align 1
@.str.35 = private unnamed_addr constant [57 x i8] c"Not prefetching -- loop estimated to roll only %d times\0A\00", align 1
@x86_mfence = external local_unnamed_addr global ptr, align 8
@.str.36 = private unnamed_addr constant [45 x i8] c"Marked reference %p as a nontemporal store.\0A\00", align 1
@optab_table = external local_unnamed_addr global [159 x %struct.optab_d], align 16
@.str.37 = private unnamed_addr constant [52 x i8] c"Each prefetch instruction takes %u prefetch slots.\0A\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"Issued%s prefetch for %p.\0A\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c" nontemporal\00", align 1
@.str.40 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@integer_types = external local_unnamed_addr global [11 x ptr], align 16

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
define dso_local noundef i32 @tree_ssa_prefetch_arrays() local_unnamed_addr #9 !prof !34 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.tree_niter_desc, align 8
  %8 = load i32, ptr @x86_prefetch_sse, align 4, !tbaa !50
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %0
  %11 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !50
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %1763, label %14

14:                                               ; preds = %10, %0
  %15 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %16 = getelementptr inbounds %struct.param_info, ptr %15, i64 100, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !54
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %1763, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %21 = icmp eq ptr %20, null
  br i1 %21, label %74, label %22

22:                                               ; preds = %19
  %23 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %24 = and i32 %23, 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %74, label %26

26:                                               ; preds = %22
  %27 = tail call i64 @fwrite(ptr nonnull @.str, i64 24, i64 1, ptr nonnull %20)
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %29 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %30 = getelementptr inbounds %struct.param_info, ptr %29, i64 98, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !54
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.1, i32 noundef %31)
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %34 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %35 = getelementptr inbounds %struct.param_info, ptr %34, i64 97, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !54
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.2, i32 noundef %36)
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %39 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %40 = getelementptr inbounds %struct.param_info, ptr %39, i64 100, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !54
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.3, i32 noundef %41)
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %44 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %45 = getelementptr inbounds %struct.param_info, ptr %44, i64 99, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !54
  %47 = shl nsw i32 %46, 10
  %48 = getelementptr inbounds %struct.param_info, ptr %44, i64 100, i32 1
  %49 = load i32, ptr %48, align 8, !tbaa !54
  %50 = udiv i32 %47, %49
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef nonnull @.str.4, i32 noundef %50, i32 noundef %46)
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %53 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %54 = getelementptr inbounds %struct.param_info, ptr %53, i64 100, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !54
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef nonnull @.str.5, i32 noundef %55)
  %57 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %58 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %59 = getelementptr inbounds %struct.param_info, ptr %58, i64 101, i32 1
  %60 = load i32, ptr %59, align 8, !tbaa !54
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef nonnull @.str.6, i32 noundef %60)
  %62 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %63 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %64 = getelementptr inbounds %struct.param_info, ptr %63, i64 114, i32 1
  %65 = load i32, ptr %64, align 8, !tbaa !54
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef nonnull @.str.7, i32 noundef %65)
  %67 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %68 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %69 = getelementptr inbounds %struct.param_info, ptr %68, i64 115, i32 1
  %70 = load i32, ptr %69, align 8, !tbaa !54
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef nonnull @.str.8, i32 noundef %70)
  %72 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %73 = tail call i32 @fputc(i32 10, ptr %72)
  br label %74

74:                                               ; preds = %26, %22, %19
  tail call void @initialize_original_copy_tables() #14
  %75 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 501), align 8, !tbaa !35
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !35
  %79 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 40), align 16, !tbaa !35
  %80 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %79, ptr noundef null) #14
  %81 = tail call ptr @build_function_type(ptr noundef %78, ptr noundef %80) #14
  %82 = tail call ptr @add_builtin_function(ptr noundef nonnull @.str.10, ptr noundef %81, i32 noundef 501, i32 noundef 3, ptr noundef null, ptr noundef null) #14
  %83 = getelementptr inbounds %struct.tree_function_decl, ptr %82, i64 0, i32 5
  %84 = load i32, ptr %83, align 8
  %85 = or i32 %84, 131072
  store i32 %85, ptr %83, align 8
  store ptr %82, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 501), align 8, !tbaa !35
  br label %86

86:                                               ; preds = %77, %74
  %87 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %88 = getelementptr inbounds %struct.param_info, ptr %87, i64 100, i32 1
  %89 = load i32, ptr %88, align 8, !tbaa !54
  %90 = tail call i32 @llvm.ctpop.i32(i32 %89), !range !56
  %91 = icmp ult i32 %90, 2
  br i1 %91, label %93, label %92

92:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1721, ptr noundef nonnull @.str.12) #14
  br label %93

93:                                               ; preds = %86, %92
  %94 = load ptr, ptr @cfun, align 8, !tbaa !35
  %95 = getelementptr inbounds %struct.function, ptr %94, i64 0, i32 4
  %96 = load ptr, ptr %95, align 8, !tbaa !57
  %97 = icmp eq ptr %96, null
  br i1 %97, label %189, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.loops, ptr %96, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !59
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  %103 = load i32, ptr %100, align 8, !tbaa !61
  br label %104

104:                                              ; preds = %102, %98
  %105 = phi i32 [ %103, %102 ], [ 0, %98 ]
  %106 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %105, i64 noundef 8, i64 noundef 4) #14
  %107 = load ptr, ptr @cfun, align 8, !tbaa !35
  %108 = getelementptr inbounds %struct.function, ptr %107, i64 0, i32 4
  %109 = load ptr, ptr %108, align 8, !tbaa !57
  %110 = getelementptr inbounds %struct.loops, ptr %109, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !63
  br label %112

112:                                              ; preds = %112, %104
  %113 = phi ptr [ %111, %104 ], [ %115, %112 ]
  %114 = getelementptr inbounds %struct.loop, ptr %113, i64 0, i32 8
  %115 = load ptr, ptr %114, align 8, !tbaa !64
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %112, !llvm.loop !68

117:                                              ; preds = %112, %166
  %118 = phi ptr [ %167, %166 ], [ %113, %112 ]
  %119 = load i32, ptr %118, align 8, !tbaa !69
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i32, ptr %106, align 4, !tbaa !70
  %123 = add i32 %122, 1
  store i32 %123, ptr %106, align 4, !tbaa !70
  %124 = zext i32 %122 to i64
  %125 = getelementptr inbounds %struct.VEC_int_base, ptr %106, i64 0, i32 2, i64 %124
  store i32 %119, ptr %125, align 4, !tbaa !50
  br label %126

126:                                              ; preds = %121, %117
  %127 = getelementptr inbounds %struct.loop, ptr %118, i64 0, i32 9
  %128 = load ptr, ptr %127, align 8, !tbaa !72
  %129 = icmp eq ptr %128, null
  br i1 %129, label %135, label %130

130:                                              ; preds = %126, %130
  %131 = phi ptr [ %133, %130 ], [ %128, %126 ]
  %132 = getelementptr inbounds %struct.loop, ptr %131, i64 0, i32 8
  %133 = load ptr, ptr %132, align 8, !tbaa !64
  %134 = icmp eq ptr %133, null
  br i1 %134, label %166, label %130, !llvm.loop !73

135:                                              ; preds = %126
  %136 = getelementptr inbounds %struct.loop, ptr %118, i64 0, i32 7
  %137 = load ptr, ptr %136, align 8, !tbaa !74
  %138 = icmp eq ptr %137, null
  br i1 %138, label %141, label %139

139:                                              ; preds = %135
  %140 = load i32, ptr %137, align 8, !tbaa !61
  br label %141

141:                                              ; preds = %139, %135
  %142 = phi i32 [ %140, %139 ], [ 0, %135 ]
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %141
  %145 = add i32 %142, -1
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %137, i64 0, i32 2, i64 %146
  %148 = load ptr, ptr %147, align 8, !tbaa !35
  br label %149

149:                                              ; preds = %144, %141
  %150 = phi ptr [ %148, %144 ], [ null, %141 ]
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = icmp eq ptr %106, null
  %154 = getelementptr inbounds %struct.loops, ptr %109, i64 0, i32 1
  br label %168

155:                                              ; preds = %149
  br i1 %138, label %158, label %156

156:                                              ; preds = %155
  %157 = load i32, ptr %137, align 8, !tbaa !61
  br label %158

158:                                              ; preds = %156, %155
  %159 = phi i32 [ %157, %156 ], [ 0, %155 ]
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %158
  %162 = add i32 %159, -1
  %163 = zext i32 %162 to i64
  %164 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %137, i64 0, i32 2, i64 %163
  %165 = load ptr, ptr %164, align 8, !tbaa !35
  br label %166

166:                                              ; preds = %130, %161, %158
  %167 = phi ptr [ %165, %161 ], [ null, %158 ], [ %131, %130 ]
  br label %117, !llvm.loop !75

168:                                              ; preds = %152, %180
  %169 = phi i32 [ %181, %180 ], [ 0, %152 ]
  br i1 %153, label %177, label %170

170:                                              ; preds = %168
  %171 = load i32, ptr %106, align 4, !tbaa !70
  %172 = icmp ugt i32 %171, %169
  br i1 %172, label %173, label %177

173:                                              ; preds = %170
  %174 = zext i32 %169 to i64
  %175 = getelementptr inbounds %struct.VEC_int_base, ptr %106, i64 0, i32 2, i64 %174
  %176 = load i32, ptr %175, align 4, !tbaa !50
  br label %177

177:                                              ; preds = %173, %170, %168
  %178 = phi i32 [ %176, %173 ], [ 0, %170 ], [ 0, %168 ]
  %179 = phi i1 [ false, %173 ], [ true, %170 ], [ true, %168 ]
  br i1 %179, label %187, label %180

180:                                              ; preds = %177
  %181 = add i32 %169, 1
  %182 = load ptr, ptr %154, align 8, !tbaa !59
  %183 = zext i32 %178 to i64
  %184 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %182, i64 0, i32 2, i64 %183
  %185 = load ptr, ptr %184, align 8, !tbaa !35
  %186 = icmp eq ptr %185, null
  br i1 %186, label %168, label %189, !llvm.loop !76

187:                                              ; preds = %177
  br i1 %153, label %189, label %188

188:                                              ; preds = %187
  tail call void @free(ptr noundef %106)
  br label %189

189:                                              ; preds = %180, %187, %188, %93
  %190 = phi i32 [ 0, %93 ], [ %169, %188 ], [ %169, %187 ], [ %181, %180 ]
  %191 = phi ptr [ null, %93 ], [ null, %188 ], [ null, %187 ], [ %106, %180 ]
  %192 = phi ptr [ null, %93 ], [ null, %188 ], [ null, %187 ], [ %185, %180 ]
  %193 = icmp eq ptr %192, null
  br i1 %193, label %1761, label %194

194:                                              ; preds = %189
  %195 = getelementptr inbounds i8, ptr %3, i64 8
  %196 = getelementptr inbounds i8, ptr %3, i64 16
  br label %197

197:                                              ; preds = %194, %1753
  %198 = phi i8 [ 0, %194 ], [ %1717, %1753 ]
  %199 = phi ptr [ %192, %194 ], [ %1756, %1753 ]
  %200 = phi ptr [ %191, %194 ], [ %1755, %1753 ]
  %201 = phi i32 [ %190, %194 ], [ %1754, %1753 ]
  %202 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %203 = icmp eq ptr %202, null
  br i1 %203, label %211, label %204

204:                                              ; preds = %197
  %205 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %206 = and i32 %205, 8
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %204
  %209 = load i32, ptr %199, align 8, !tbaa !69
  %210 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %202, ptr noundef nonnull @.str.13, i32 noundef %209)
  br label %211

211:                                              ; preds = %208, %204, %197
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %7) #14
  %212 = call zeroext i8 @optimize_loop_nest_for_size_p(ptr noundef nonnull %199) #14
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %223, label %214

214:                                              ; preds = %211
  %215 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %216 = icmp eq ptr %215, null
  br i1 %216, label %1715, label %217

217:                                              ; preds = %214
  %218 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %219 = and i32 %218, 8
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %1715, label %221

221:                                              ; preds = %217
  %222 = call i64 @fwrite(ptr nonnull @.str.15, i64 22, i64 1, ptr nonnull %215)
  br label %1715

223:                                              ; preds = %211
  %224 = call ptr @get_loop_body_in_dom_order(ptr noundef nonnull %199) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #14
  store ptr null, ptr %6, align 8, !tbaa !35
  %225 = getelementptr inbounds %struct.loop, ptr %199, i64 0, i32 6
  %226 = load i32, ptr %225, align 4, !tbaa !77
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %346, label %228

228:                                              ; preds = %223, %339
  %229 = phi i64 [ %342, %339 ], [ 0, %223 ]
  %230 = phi i32 [ %341, %339 ], [ 0, %223 ]
  %231 = phi i8 [ %340, %339 ], [ 1, %223 ]
  %232 = getelementptr inbounds ptr, ptr %224, i64 %229
  %233 = load ptr, ptr %232, align 8, !tbaa !35
  %234 = getelementptr inbounds %struct.basic_block_def, ptr %233, i64 0, i32 3
  %235 = load ptr, ptr %234, align 8, !tbaa !78
  %236 = icmp eq ptr %235, %199
  br i1 %236, label %237, label %339

237:                                              ; preds = %228
  %238 = getelementptr inbounds %struct.basic_block_def, ptr %233, i64 0, i32 13
  %239 = load i32, ptr %238, align 8, !tbaa !80, !noalias !81
  %240 = and i32 %239, 512
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %237
  %243 = getelementptr inbounds %struct.basic_block_def, ptr %233, i64 0, i32 7
  %244 = load ptr, ptr %243, align 8, !tbaa !46, !noalias !81
  %245 = icmp eq ptr %244, null
  br i1 %245, label %248, label %246

246:                                              ; preds = %242
  %247 = load ptr, ptr %244, align 8, !tbaa !84, !noalias !81
  br label %248

248:                                              ; preds = %246, %242, %237
  %249 = phi ptr [ %247, %246 ], [ null, %242 ], [ null, %237 ]
  %250 = icmp eq ptr %249, null
  br i1 %250, label %253, label %251

251:                                              ; preds = %248
  %252 = load ptr, ptr %249, align 8, !tbaa !86, !noalias !81
  br label %253

253:                                              ; preds = %251, %248
  %254 = phi ptr [ %252, %251 ], [ null, %248 ]
  %255 = icmp eq ptr %254, null
  br i1 %255, label %339, label %256

256:                                              ; preds = %253, %333
  %257 = phi ptr [ %337, %333 ], [ %254, %253 ]
  %258 = phi i32 [ %335, %333 ], [ %230, %253 ]
  %259 = phi i8 [ %334, %333 ], [ %231, %253 ]
  %260 = load ptr, ptr %257, align 8, !tbaa !88
  %261 = load i32, ptr %260, align 8
  %262 = and i32 %261, 255
  %263 = icmp eq i32 %262, 6
  br i1 %263, label %281, label %264

264:                                              ; preds = %256
  %265 = and i32 %261, 254
  %266 = add nsw i32 %265, -10
  %267 = icmp ult i32 %266, -4
  br i1 %267, label %271, label %268

268:                                              ; preds = %264
  %269 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %260, i64 0, i32 2
  %270 = load ptr, ptr %269, align 8, !tbaa !46
  br label %271

271:                                              ; preds = %268, %264
  %272 = phi ptr [ %270, %268 ], [ null, %264 ]
  %273 = icmp eq ptr %272, null
  br i1 %273, label %274, label %280

274:                                              ; preds = %271
  %275 = icmp eq i32 %262, 8
  br i1 %275, label %276, label %333

276:                                              ; preds = %274
  %277 = call i32 @gimple_call_flags(ptr noundef nonnull %260) #14
  %278 = and i32 %277, 1
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %333

280:                                              ; preds = %276, %271
  br label %333

281:                                              ; preds = %256
  %282 = zext nneg i32 %262 to i64
  %283 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %282
  %284 = load i32, ptr %283, align 4, !tbaa !50
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %285
  %287 = load i64, ptr %286, align 8, !tbaa !90
  %288 = icmp eq i64 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %281
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1622, ptr noundef nonnull @.str.12) #14
  br label %290

290:                                              ; preds = %289, %281
  %291 = getelementptr inbounds i8, ptr %260, i64 %287
  %292 = load ptr, ptr %291, align 8, !tbaa !35
  %293 = load i32, ptr %260, align 8
  %294 = and i32 %293, 255
  %295 = add nsw i32 %294, -10
  %296 = icmp ult i32 %295, -9
  br i1 %296, label %310, label %297

297:                                              ; preds = %290
  %298 = zext nneg i32 %294 to i64
  %299 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %298
  %300 = load i32, ptr %299, align 4, !tbaa !50
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %301
  %303 = load i64, ptr %302, align 8, !tbaa !90
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %297
  call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1622, ptr noundef nonnull @.str.12) #14
  br label %306

306:                                              ; preds = %305, %297
  %307 = getelementptr inbounds i8, ptr %260, i64 %303
  %308 = getelementptr inbounds ptr, ptr %307, i64 1
  %309 = load ptr, ptr %308, align 8, !tbaa !35
  br label %310

310:                                              ; preds = %306, %290
  %311 = phi ptr [ %309, %306 ], [ null, %290 ]
  %312 = load i64, ptr %311, align 8
  %313 = and i64 %312, 65535
  %314 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %313
  %315 = load i32, ptr %314, align 4, !tbaa !50
  %316 = icmp eq i32 %315, 4
  br i1 %316, label %317, label %321

317:                                              ; preds = %310
  %318 = call fastcc zeroext i8 @gather_memory_references_ref(ptr noundef nonnull %199, ptr noundef nonnull %6, ptr noundef nonnull %311, i8 noundef zeroext 0, ptr noundef nonnull %260), !range !91
  %319 = and i8 %318, %259
  %320 = add i32 %258, 1
  br label %321

321:                                              ; preds = %317, %310
  %322 = phi i8 [ %319, %317 ], [ %259, %310 ]
  %323 = phi i32 [ %320, %317 ], [ %258, %310 ]
  %324 = load i64, ptr %292, align 8
  %325 = and i64 %324, 65535
  %326 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %325
  %327 = load i32, ptr %326, align 4, !tbaa !50
  %328 = icmp eq i32 %327, 4
  br i1 %328, label %329, label %333

329:                                              ; preds = %321
  %330 = call fastcc zeroext i8 @gather_memory_references_ref(ptr noundef nonnull %199, ptr noundef nonnull %6, ptr noundef nonnull %292, i8 noundef zeroext 1, ptr noundef nonnull %260), !range !91
  %331 = and i8 %330, %322
  %332 = add i32 %323, 1
  br label %333

333:                                              ; preds = %329, %321, %280, %276, %274
  %334 = phi i8 [ %331, %329 ], [ %322, %321 ], [ 0, %280 ], [ %259, %276 ], [ %259, %274 ]
  %335 = phi i32 [ %332, %329 ], [ %323, %321 ], [ %258, %280 ], [ %258, %276 ], [ %258, %274 ]
  %336 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %257, i64 0, i32 2
  %337 = load ptr, ptr %336, align 8, !tbaa !92
  %338 = icmp eq ptr %337, null
  br i1 %338, label %339, label %256, !llvm.loop !93

339:                                              ; preds = %333, %253, %228
  %340 = phi i8 [ %231, %228 ], [ %231, %253 ], [ %334, %333 ]
  %341 = phi i32 [ %230, %228 ], [ %230, %253 ], [ %335, %333 ]
  %342 = add nuw nsw i64 %229, 1
  %343 = load i32, ptr %225, align 4, !tbaa !77
  %344 = zext i32 %343 to i64
  %345 = icmp ult i64 %342, %344
  br i1 %345, label %228, label %346, !llvm.loop !94

346:                                              ; preds = %339, %223
  %347 = phi i8 [ 1, %223 ], [ %340, %339 ]
  %348 = phi i32 [ 0, %223 ], [ %341, %339 ]
  %349 = getelementptr inbounds %struct.loop, ptr %199, i64 0, i32 6
  call void @free(ptr noundef %224)
  %350 = load ptr, ptr %6, align 8, !tbaa !35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #14
  %351 = icmp eq ptr %350, null
  br i1 %351, label %703, label %352

352:                                              ; preds = %346, %668
  %353 = phi ptr [ %670, %668 ], [ %350, %346 ]
  %354 = getelementptr inbounds %struct.mem_ref_group, ptr %353, i64 0, i32 2
  %355 = load ptr, ptr %354, align 8, !tbaa !35
  %356 = icmp eq ptr %355, null
  br i1 %356, label %668, label %357

357:                                              ; preds = %352, %664
  %358 = phi ptr [ %666, %664 ], [ %355, %352 ]
  %359 = load ptr, ptr %354, align 8, !tbaa !95
  %360 = getelementptr inbounds %struct.mem_ref, ptr %358, i64 0, i32 3
  %361 = load ptr, ptr %360, align 8, !tbaa !97
  %362 = getelementptr inbounds %struct.mem_ref_group, ptr %361, i64 0, i32 1
  %363 = load i64, ptr %362, align 8, !tbaa !99
  %364 = icmp eq i64 %363, 0
  br i1 %364, label %365, label %367

365:                                              ; preds = %357
  %366 = getelementptr inbounds %struct.mem_ref, ptr %358, i64 0, i32 5
  store i64 1, ptr %366, align 8, !tbaa !100
  br label %377

367:                                              ; preds = %357
  %368 = call i64 @llvm.abs.i64(i64 %363, i1 true)
  %369 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %370 = getelementptr inbounds %struct.param_info, ptr %369, i64 100, i32 1
  %371 = load i32, ptr %370, align 8, !tbaa !54
  %372 = sext i32 %371 to i64
  %373 = icmp sgt i64 %368, %372
  br i1 %373, label %377, label %374

374:                                              ; preds = %367
  %375 = sdiv i64 %372, %368
  %376 = getelementptr inbounds %struct.mem_ref, ptr %358, i64 0, i32 4
  store i64 %375, ptr %376, align 8, !tbaa !101
  br label %377

377:                                              ; preds = %374, %367, %365
  %378 = icmp eq ptr %359, null
  br i1 %378, label %614, label %379

379:                                              ; preds = %377
  %380 = getelementptr inbounds %struct.mem_ref, ptr %358, i64 0, i32 8
  %381 = getelementptr inbounds %struct.mem_ref, ptr %358, i64 0, i32 2
  %382 = getelementptr inbounds %struct.mem_ref, ptr %358, i64 0, i32 5
  %383 = getelementptr inbounds %struct.mem_ref, ptr %358, i64 0, i32 1
  %384 = getelementptr inbounds %struct.mem_ref, ptr %358, i64 0, i32 5
  %385 = getelementptr inbounds %struct.mem_ref, ptr %358, i64 0, i32 5
  br label %386

386:                                              ; preds = %379, %609
  %387 = phi i8 [ 1, %379 ], [ %610, %609 ]
  %388 = phi ptr [ %359, %379 ], [ %612, %609 ]
  %389 = icmp eq ptr %388, %358
  br i1 %389, label %609, label %390

390:                                              ; preds = %386
  %391 = load i8, ptr %380, align 8
  %392 = and i8 %391, 1
  %393 = icmp eq i8 %392, 0
  br i1 %393, label %394, label %399

394:                                              ; preds = %390
  %395 = getelementptr inbounds %struct.mem_ref, ptr %388, i64 0, i32 8
  %396 = load i8, ptr %395, align 8
  %397 = and i8 %396, 1
  %398 = icmp eq i8 %397, 0
  br i1 %398, label %399, label %609

399:                                              ; preds = %394, %390
  %400 = load ptr, ptr %360, align 8, !tbaa !97
  %401 = getelementptr inbounds %struct.mem_ref_group, ptr %400, i64 0, i32 1
  %402 = load i64, ptr %401, align 8, !tbaa !99
  %403 = load i64, ptr %381, align 8, !tbaa !102
  %404 = getelementptr inbounds %struct.mem_ref, ptr %388, i64 0, i32 2
  %405 = load i64, ptr %404, align 8, !tbaa !102
  %406 = sub nsw i64 %405, %403
  %407 = icmp eq i64 %406, 0
  br i1 %407, label %408, label %411

408:                                              ; preds = %399
  %409 = icmp eq i8 %387, 0
  br i1 %409, label %609, label %410

410:                                              ; preds = %408
  store i64 0, ptr %385, align 8, !tbaa !100
  br label %609

411:                                              ; preds = %399
  %412 = icmp eq i64 %402, 0
  br i1 %412, label %413, label %443

413:                                              ; preds = %411
  %414 = icmp eq i8 %387, 0
  br i1 %414, label %609, label %415

415:                                              ; preds = %413
  %416 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %417 = getelementptr inbounds %struct.param_info, ptr %416, i64 100, i32 1
  %418 = load i32, ptr %417, align 8, !tbaa !54
  %419 = sext i32 %418 to i64
  %420 = icmp eq i32 %418, 0
  br i1 %420, label %421, label %422

421:                                              ; preds = %415
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 588, ptr noundef nonnull @.str.12) #14
  br label %422

422:                                              ; preds = %421, %415
  %423 = add i64 %403, -1
  %424 = add i64 %423, %419
  %425 = icmp slt i64 %403, 0
  %426 = select i1 %425, i64 %424, i64 %403
  %427 = udiv i64 %426, %419
  %428 = load i64, ptr %404, align 8, !tbaa !102
  %429 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %430 = getelementptr inbounds %struct.param_info, ptr %429, i64 100, i32 1
  %431 = load i32, ptr %430, align 8, !tbaa !54
  %432 = sext i32 %431 to i64
  %433 = icmp eq i32 %431, 0
  br i1 %433, label %434, label %435

434:                                              ; preds = %422
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 588, ptr noundef nonnull @.str.12) #14
  br label %435

435:                                              ; preds = %434, %422
  %436 = add i64 %428, -1
  %437 = add i64 %436, %432
  %438 = icmp slt i64 %428, 0
  %439 = select i1 %438, i64 %437, i64 %428
  %440 = udiv i64 %439, %432
  %441 = icmp eq i64 %427, %440
  br i1 %441, label %442, label %609

442:                                              ; preds = %435
  store i64 0, ptr %384, align 8, !tbaa !100
  br label %609

443:                                              ; preds = %411
  %444 = icmp sgt i64 %402, -1
  br i1 %444, label %457, label %445

445:                                              ; preds = %443
  %446 = icmp sgt i64 %406, 0
  br i1 %446, label %609, label %447

447:                                              ; preds = %445
  %448 = sub nsw i64 0, %406
  %449 = sub nsw i64 0, %402
  %450 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %451 = getelementptr inbounds %struct.param_info, ptr %450, i64 100, i32 1
  %452 = load i32, ptr %451, align 8, !tbaa !54
  %453 = add nsw i32 %452, -1
  %454 = sext i32 %453 to i64
  %455 = sub nsw i64 %454, %403
  %456 = sub nsw i64 %454, %405
  br label %459

457:                                              ; preds = %443
  %458 = icmp slt i64 %406, 0
  br i1 %458, label %609, label %459

459:                                              ; preds = %457, %447
  %460 = phi i64 [ %448, %447 ], [ %406, %457 ]
  %461 = phi i64 [ %456, %447 ], [ %405, %457 ]
  %462 = phi i64 [ %455, %447 ], [ %403, %457 ]
  %463 = phi i64 [ %449, %447 ], [ %402, %457 ]
  %464 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %465 = getelementptr inbounds %struct.param_info, ptr %464, i64 100, i32 1
  %466 = load i32, ptr %465, align 8, !tbaa !54
  %467 = sext i32 %466 to i64
  %468 = icmp sgt i64 %463, %467
  br i1 %468, label %469, label %474

469:                                              ; preds = %459
  %470 = and i64 %463, 1
  %471 = icmp eq i64 %470, 0
  %472 = icmp ugt i32 %466, 1
  %473 = and i1 %471, %472
  br i1 %473, label %495, label %504

474:                                              ; preds = %459
  %475 = icmp eq i32 %466, 0
  br i1 %475, label %476, label %477

476:                                              ; preds = %474
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 588, ptr noundef nonnull @.str.12) #14
  br label %477

477:                                              ; preds = %476, %474
  %478 = add i64 %461, -1
  %479 = add i64 %478, %467
  %480 = icmp slt i64 %461, 0
  %481 = select i1 %480, i64 %479, i64 %461
  %482 = udiv i64 %481, %467
  %483 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %484 = getelementptr inbounds %struct.param_info, ptr %483, i64 100, i32 1
  %485 = load i32, ptr %484, align 8, !tbaa !54
  %486 = sext i32 %485 to i64
  %487 = mul nsw i64 %482, %486
  %488 = xor i64 %462, -1
  %489 = add i64 %463, %488
  %490 = add i64 %489, %487
  %491 = sdiv i64 %490, %463
  %492 = load i64, ptr %382, align 8, !tbaa !100
  %493 = icmp ult i64 %491, %492
  br i1 %493, label %494, label %609

494:                                              ; preds = %477
  store i64 %491, ptr %382, align 8, !tbaa !100
  br label %609

495:                                              ; preds = %469, %495
  %496 = phi i64 [ %499, %495 ], [ %467, %469 ]
  %497 = phi i64 [ %498, %495 ], [ %463, %469 ]
  %498 = ashr i64 %497, 1
  %499 = lshr i64 %496, 1
  %500 = and i64 %497, 2
  %501 = icmp eq i64 %500, 0
  %502 = icmp ugt i64 %496, 3
  %503 = select i1 %501, i1 %502, i1 false
  br i1 %503, label %495, label %504, !llvm.loop !103

504:                                              ; preds = %495, %469
  %505 = phi i64 [ %467, %469 ], [ %499, %495 ]
  %506 = sdiv i64 %460, %463
  %507 = srem i64 %460, %463
  %508 = load ptr, ptr %383, align 8, !tbaa !104
  %509 = getelementptr inbounds %struct.tree_common, ptr %508, i64 0, i32 2
  %510 = load ptr, ptr %509, align 8, !tbaa !46
  %511 = getelementptr inbounds %struct.tree_type, ptr %510, i64 0, i32 7
  %512 = load i32, ptr %511, align 8, !tbaa !46
  %513 = lshr i32 %512, 3
  %514 = icmp eq i32 %466, 0
  br i1 %514, label %549, label %515

515:                                              ; preds = %504
  %516 = icmp eq i64 %505, 0
  %517 = trunc i64 %463 to i32
  %518 = trunc i64 %507 to i32
  br label %519

519:                                              ; preds = %515, %543
  %520 = phi i32 [ 0, %515 ], [ %546, %543 ]
  %521 = phi i32 [ 0, %515 ], [ %545, %543 ]
  %522 = phi i32 [ 0, %515 ], [ %544, %543 ]
  br i1 %516, label %543, label %523

523:                                              ; preds = %519, %523
  %524 = phi i32 [ %540, %523 ], [ 0, %519 ]
  %525 = phi i32 [ %536, %523 ], [ %521, %519 ]
  %526 = phi i32 [ %539, %523 ], [ %522, %519 ]
  %527 = mul i32 %524, %517
  %528 = add i32 %527, %520
  %529 = sext i32 %528 to i64
  %530 = add i32 %528, %518
  %531 = udiv i64 %529, %467
  %532 = trunc i64 %531 to i32
  %533 = sext i32 %530 to i64
  %534 = udiv i64 %533, %467
  %535 = trunc i64 %534 to i32
  %536 = add nsw i32 %525, 1
  %537 = icmp ne i32 %532, %535
  %538 = zext i1 %537 to i32
  %539 = add nsw i32 %526, %538
  %540 = add i32 %524, 1
  %541 = zext i32 %540 to i64
  %542 = icmp ugt i64 %505, %541
  br i1 %542, label %523, label %543, !llvm.loop !105

543:                                              ; preds = %523, %519
  %544 = phi i32 [ %522, %519 ], [ %539, %523 ]
  %545 = phi i32 [ %521, %519 ], [ %536, %523 ]
  %546 = add i32 %520, %513
  %547 = zext i32 %546 to i64
  %548 = icmp ult i64 %547, %467
  br i1 %548, label %519, label %549, !llvm.loop !106

549:                                              ; preds = %543, %504
  %550 = phi i32 [ 0, %504 ], [ %544, %543 ]
  %551 = phi i32 [ 0, %504 ], [ %545, %543 ]
  %552 = mul nsw i32 %550, 1000
  %553 = sdiv i32 %552, %551
  %554 = icmp slt i32 %553, 51
  br i1 %554, label %555, label %560

555:                                              ; preds = %549
  %556 = getelementptr inbounds %struct.mem_ref, ptr %358, i64 0, i32 5
  %557 = load i64, ptr %556, align 8, !tbaa !100
  %558 = icmp ult i64 %506, %557
  br i1 %558, label %559, label %609

559:                                              ; preds = %555
  store i64 %506, ptr %556, align 8, !tbaa !100
  br label %609

560:                                              ; preds = %549
  %561 = add i64 %506, 1
  %562 = icmp eq i32 %466, 0
  br i1 %562, label %598, label %563

563:                                              ; preds = %560
  %564 = sub nsw i64 %463, %507
  %565 = icmp eq i64 %505, 0
  %566 = trunc i64 %463 to i32
  %567 = trunc i64 %564 to i32
  br label %568

568:                                              ; preds = %563, %592
  %569 = phi i32 [ 0, %563 ], [ %595, %592 ]
  %570 = phi i32 [ 0, %563 ], [ %594, %592 ]
  %571 = phi i32 [ 0, %563 ], [ %593, %592 ]
  br i1 %565, label %592, label %572

572:                                              ; preds = %568, %572
  %573 = phi i32 [ %589, %572 ], [ 0, %568 ]
  %574 = phi i32 [ %585, %572 ], [ %570, %568 ]
  %575 = phi i32 [ %588, %572 ], [ %571, %568 ]
  %576 = mul i32 %573, %566
  %577 = add i32 %576, %569
  %578 = sext i32 %577 to i64
  %579 = add i32 %577, %567
  %580 = udiv i64 %578, %467
  %581 = trunc i64 %580 to i32
  %582 = sext i32 %579 to i64
  %583 = udiv i64 %582, %467
  %584 = trunc i64 %583 to i32
  %585 = add nsw i32 %574, 1
  %586 = icmp ne i32 %581, %584
  %587 = zext i1 %586 to i32
  %588 = add nsw i32 %575, %587
  %589 = add i32 %573, 1
  %590 = zext i32 %589 to i64
  %591 = icmp ugt i64 %505, %590
  br i1 %591, label %572, label %592, !llvm.loop !105

592:                                              ; preds = %572, %568
  %593 = phi i32 [ %571, %568 ], [ %588, %572 ]
  %594 = phi i32 [ %570, %568 ], [ %585, %572 ]
  %595 = add i32 %569, %513
  %596 = zext i32 %595 to i64
  %597 = icmp ult i64 %596, %467
  br i1 %597, label %568, label %598, !llvm.loop !106

598:                                              ; preds = %592, %560
  %599 = phi i32 [ 0, %560 ], [ %593, %592 ]
  %600 = phi i32 [ 0, %560 ], [ %594, %592 ]
  %601 = mul nsw i32 %599, 1000
  %602 = sdiv i32 %601, %600
  %603 = icmp slt i32 %602, 51
  br i1 %603, label %604, label %609

604:                                              ; preds = %598
  %605 = getelementptr inbounds %struct.mem_ref, ptr %358, i64 0, i32 5
  %606 = load i64, ptr %605, align 8, !tbaa !100
  %607 = icmp ult i64 %561, %606
  br i1 %607, label %608, label %609

608:                                              ; preds = %604
  store i64 %561, ptr %605, align 8, !tbaa !100
  br label %609

609:                                              ; preds = %608, %604, %598, %559, %555, %494, %477, %457, %445, %442, %435, %413, %410, %408, %394, %386
  %610 = phi i8 [ %387, %394 ], [ 0, %386 ], [ %387, %408 ], [ %387, %410 ], [ %387, %413 ], [ %387, %435 ], [ %387, %442 ], [ %387, %445 ], [ %387, %457 ], [ %387, %477 ], [ %387, %494 ], [ %387, %555 ], [ %387, %559 ], [ %387, %598 ], [ %387, %604 ], [ %387, %608 ]
  %611 = getelementptr inbounds %struct.mem_ref, ptr %388, i64 0, i32 7
  %612 = load ptr, ptr %611, align 8, !tbaa !107
  %613 = icmp eq ptr %612, null
  br i1 %613, label %614, label %386, !llvm.loop !108

614:                                              ; preds = %609, %377
  %615 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %616 = icmp eq ptr %615, null
  br i1 %616, label %664, label %617

617:                                              ; preds = %614
  %618 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %619 = and i32 %618, 8
  %620 = icmp eq i32 %619, 0
  br i1 %620, label %664, label %621

621:                                              ; preds = %617
  %622 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %615, ptr noundef nonnull @.str.27, ptr noundef nonnull %358)
  %623 = getelementptr inbounds %struct.mem_ref, ptr %358, i64 0, i32 5
  %624 = load i64, ptr %623, align 8, !tbaa !100
  %625 = icmp eq i64 %624, -1
  br i1 %625, label %626, label %633

626:                                              ; preds = %621
  %627 = getelementptr inbounds %struct.mem_ref, ptr %358, i64 0, i32 4
  %628 = load i64, ptr %627, align 8, !tbaa !101
  %629 = icmp eq i64 %628, 1
  br i1 %629, label %630, label %633

630:                                              ; preds = %626
  %631 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %632 = call i64 @fwrite(ptr nonnull @.str.28, i64 16, i64 1, ptr %631)
  br label %661

633:                                              ; preds = %626, %621
  %634 = icmp eq i64 %624, 0
  br i1 %634, label %635, label %638

635:                                              ; preds = %633
  %636 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %637 = call i64 @fwrite(ptr nonnull @.str.29, i64 16, i64 1, ptr %636)
  br label %661

638:                                              ; preds = %633
  %639 = getelementptr inbounds %struct.mem_ref, ptr %358, i64 0, i32 4
  %640 = load i64, ptr %639, align 8, !tbaa !101
  %641 = icmp ugt i64 %624, %640
  br i1 %641, label %645, label %642

642:                                              ; preds = %638
  %643 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %644 = call i64 @fwrite(ptr nonnull @.str.30, i64 14, i64 1, ptr %643)
  br label %661

645:                                              ; preds = %638
  br i1 %625, label %652, label %646

646:                                              ; preds = %645
  %647 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %648 = call i64 @fwrite(ptr nonnull @.str.31, i64 17, i64 1, ptr %647)
  %649 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %650 = load i64, ptr %623, align 8, !tbaa !100
  %651 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %649, ptr noundef nonnull @.str.21, i64 noundef %650)
  br label %652

652:                                              ; preds = %646, %645
  %653 = load i64, ptr %639, align 8, !tbaa !101
  %654 = icmp eq i64 %653, 1
  br i1 %654, label %661, label %655

655:                                              ; preds = %652
  %656 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %657 = call i64 @fwrite(ptr nonnull @.str.32, i64 14, i64 1, ptr %656)
  %658 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %659 = load i64, ptr %639, align 8, !tbaa !101
  %660 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %658, ptr noundef nonnull @.str.21, i64 noundef %659)
  br label %661

661:                                              ; preds = %655, %652, %642, %635, %630
  %662 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %663 = call i32 @fputc(i32 10, ptr %662)
  br label %664

664:                                              ; preds = %661, %617, %614
  %665 = getelementptr inbounds %struct.mem_ref, ptr %358, i64 0, i32 7
  %666 = load ptr, ptr %665, align 8, !tbaa !35
  %667 = icmp eq ptr %666, null
  br i1 %667, label %668, label %357, !llvm.loop !109

668:                                              ; preds = %664, %352
  %669 = getelementptr inbounds %struct.mem_ref_group, ptr %353, i64 0, i32 3
  %670 = load ptr, ptr %669, align 8, !tbaa !110
  %671 = icmp eq ptr %670, null
  br i1 %671, label %672, label %352, !llvm.loop !111

672:                                              ; preds = %668, %698
  %673 = phi i32 [ %699, %698 ], [ 0, %668 ]
  %674 = phi ptr [ %701, %698 ], [ %350, %668 ]
  %675 = getelementptr inbounds %struct.mem_ref_group, ptr %674, i64 0, i32 2
  %676 = load ptr, ptr %675, align 8, !tbaa !35
  %677 = icmp eq ptr %676, null
  br i1 %677, label %698, label %678

678:                                              ; preds = %672, %690
  %679 = phi ptr [ %696, %690 ], [ %676, %672 ]
  %680 = phi i32 [ %694, %690 ], [ %673, %672 ]
  %681 = getelementptr inbounds %struct.mem_ref, ptr %679, i64 0, i32 5
  %682 = load i64, ptr %681, align 8, !tbaa !100
  %683 = icmp eq i64 %682, -1
  br i1 %683, label %684, label %690

684:                                              ; preds = %678
  %685 = getelementptr inbounds %struct.mem_ref, ptr %679, i64 0, i32 8
  %686 = load i8, ptr %685, align 8
  %687 = lshr i8 %686, 3
  %688 = and i8 %687, 1
  %689 = xor i8 %688, 1
  br label %690

690:                                              ; preds = %684, %678
  %691 = phi i8 [ 0, %678 ], [ %689, %684 ]
  %692 = icmp ne i8 %691, 0
  %693 = zext i1 %692 to i32
  %694 = add nsw i32 %680, %693
  %695 = getelementptr inbounds %struct.mem_ref, ptr %679, i64 0, i32 7
  %696 = load ptr, ptr %695, align 8, !tbaa !35
  %697 = icmp eq ptr %696, null
  br i1 %697, label %698, label %678, !llvm.loop !112

698:                                              ; preds = %690, %672
  %699 = phi i32 [ %673, %672 ], [ %694, %690 ]
  %700 = getelementptr inbounds %struct.mem_ref_group, ptr %674, i64 0, i32 3
  %701 = load ptr, ptr %700, align 8, !tbaa !110
  %702 = icmp eq ptr %701, null
  br i1 %702, label %703, label %672, !llvm.loop !113

703:                                              ; preds = %698, %346
  %704 = phi i32 [ 0, %346 ], [ %699, %698 ]
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %1698, label %706

706:                                              ; preds = %703
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  store ptr null, ptr %4, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #14
  store ptr null, ptr %5, align 8, !tbaa !35
  %707 = getelementptr inbounds %struct.loop, ptr %199, i64 0, i32 8
  %708 = load ptr, ptr %707, align 8, !tbaa !64
  %709 = icmp eq ptr %708, null
  br i1 %709, label %710, label %1227

710:                                              ; preds = %706
  %711 = load ptr, ptr @cfun, align 8, !tbaa !35
  %712 = getelementptr inbounds %struct.function, ptr %711, i64 0, i32 4
  %713 = load ptr, ptr %712, align 8, !tbaa !57
  %714 = getelementptr inbounds %struct.loops, ptr %713, i64 0, i32 3
  %715 = load ptr, ptr %714, align 8, !tbaa !63
  br label %716

716:                                              ; preds = %710, %734
  %717 = phi ptr [ %732, %734 ], [ %199, %710 ]
  %718 = getelementptr inbounds %struct.loop, ptr %717, i64 0, i32 7
  %719 = load ptr, ptr %718, align 8, !tbaa !74
  %720 = icmp eq ptr %719, null
  br i1 %720, label %723, label %721

721:                                              ; preds = %716
  %722 = load i32, ptr %719, align 8, !tbaa !61
  br label %723

723:                                              ; preds = %721, %716
  %724 = phi i32 [ %722, %721 ], [ 0, %716 ]
  %725 = icmp eq i32 %724, 0
  br i1 %725, label %731, label %726

726:                                              ; preds = %723
  %727 = add i32 %724, -1
  %728 = zext i32 %727 to i64
  %729 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %719, i64 0, i32 2, i64 %728
  %730 = load ptr, ptr %729, align 8, !tbaa !35
  br label %731

731:                                              ; preds = %726, %723
  %732 = phi ptr [ %730, %726 ], [ null, %723 ]
  %733 = icmp eq ptr %732, %715
  br i1 %733, label %740, label %734

734:                                              ; preds = %731
  %735 = getelementptr inbounds %struct.loop, ptr %732, i64 0, i32 8
  %736 = load ptr, ptr %735, align 8, !tbaa !64
  %737 = getelementptr inbounds %struct.loop, ptr %736, i64 0, i32 9
  %738 = load ptr, ptr %737, align 8, !tbaa !72
  %739 = icmp eq ptr %738, null
  br i1 %739, label %716, label %740, !llvm.loop !114

740:                                              ; preds = %734, %731
  %741 = call zeroext i8 @find_loop_nest(ptr noundef %717, ptr noundef nonnull %5) #14
  %742 = load ptr, ptr %5, align 8
  %743 = icmp eq ptr %742, null
  br i1 %743, label %746, label %744

744:                                              ; preds = %740
  %745 = load i32, ptr %742, align 8, !tbaa !61
  br label %746

746:                                              ; preds = %744, %740
  %747 = phi i32 [ %745, %744 ], [ 0, %740 ]
  %748 = zext i32 %747 to i64
  %749 = shl nuw nsw i64 %748, 2
  %750 = call ptr @xmalloc(i64 noundef %749) #14
  %751 = icmp eq ptr %350, null
  br i1 %751, label %785, label %752

752:                                              ; preds = %746
  %753 = load ptr, ptr @compiler_params, align 8
  %754 = getelementptr inbounds %struct.param_info, ptr %753, i64 100, i32 1
  br label %755

755:                                              ; preds = %752, %780
  %756 = phi ptr [ %350, %752 ], [ %783, %780 ]
  %757 = phi i32 [ 0, %752 ], [ %781, %780 ]
  %758 = getelementptr inbounds %struct.mem_ref_group, ptr %756, i64 0, i32 2
  %759 = load ptr, ptr %758, align 8, !tbaa !35
  %760 = icmp eq ptr %759, null
  br i1 %760, label %780, label %761

761:                                              ; preds = %755, %775
  %762 = phi ptr [ %778, %775 ], [ %759, %755 ]
  %763 = phi i32 [ %776, %775 ], [ %757, %755 ]
  %764 = getelementptr inbounds %struct.mem_ref, ptr %762, i64 0, i32 5
  %765 = load i64, ptr %764, align 8, !tbaa !100
  %766 = icmp eq i64 %765, -1
  br i1 %766, label %767, label %775

767:                                              ; preds = %761
  %768 = load i32, ptr %754, align 8, !tbaa !54
  %769 = sext i32 %768 to i64
  %770 = getelementptr inbounds %struct.mem_ref, ptr %762, i64 0, i32 4
  %771 = load i64, ptr %770, align 8, !tbaa !101
  %772 = udiv i64 %769, %771
  %773 = trunc i64 %772 to i32
  %774 = add i32 %763, %773
  br label %775

775:                                              ; preds = %767, %761
  %776 = phi i32 [ %763, %761 ], [ %774, %767 ]
  %777 = getelementptr inbounds %struct.mem_ref, ptr %762, i64 0, i32 7
  %778 = load ptr, ptr %777, align 8, !tbaa !35
  %779 = icmp eq ptr %778, null
  br i1 %779, label %780, label %761, !llvm.loop !115

780:                                              ; preds = %775, %755
  %781 = phi i32 [ %757, %755 ], [ %776, %775 ]
  %782 = getelementptr inbounds %struct.mem_ref_group, ptr %756, i64 0, i32 3
  %783 = load ptr, ptr %782, align 8, !tbaa !110
  %784 = icmp eq ptr %783, null
  br i1 %784, label %785, label %755, !llvm.loop !116

785:                                              ; preds = %780, %746
  %786 = phi i32 [ 0, %746 ], [ %781, %780 ]
  br label %813

787:                                              ; preds = %813, %792
  %788 = phi i64 [ %818, %813 ], [ %794, %792 ]
  %789 = icmp eq i64 %788, 0
  br i1 %789, label %790, label %792

790:                                              ; preds = %787
  %791 = icmp eq ptr %350, null
  br i1 %791, label %819, label %826

792:                                              ; preds = %787
  %793 = add nsw i64 %788, -1
  %794 = add nsw i64 %788, -1
  %795 = getelementptr inbounds i32, ptr %750, i64 %793
  store i32 %815, ptr %795, align 4, !tbaa !50
  %796 = load i32, ptr %817, align 8, !tbaa !54
  %797 = shl nsw i32 %796, 10
  %798 = icmp ugt i32 %815, %797
  br i1 %798, label %787, label %799, !llvm.loop !117

799:                                              ; preds = %792
  %800 = trunc i64 %793 to i32
  %801 = load ptr, ptr %5, align 8
  %802 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %801, i64 0, i32 2, i64 %793
  %803 = load ptr, ptr %802, align 8, !tbaa !35
  %804 = call i64 @estimated_loop_iterations_int(ptr noundef %803, i8 noundef zeroext 0) #14
  %805 = icmp slt i64 %804, 0
  br i1 %805, label %806, label %809

806:                                              ; preds = %799
  %807 = call i32 @expected_loop_iterations(ptr noundef %803) #14
  %808 = zext i32 %807 to i64
  br label %809

809:                                              ; preds = %806, %799
  %810 = phi i64 [ %808, %806 ], [ %804, %799 ]
  %811 = trunc i64 %810 to i32
  %812 = mul i32 %815, %811
  br label %813, !llvm.loop !117

813:                                              ; preds = %785, %809
  %814 = phi i32 [ %800, %809 ], [ %747, %785 ]
  %815 = phi i32 [ %812, %809 ], [ %786, %785 ]
  %816 = load ptr, ptr @compiler_params, align 8
  %817 = getelementptr inbounds %struct.param_info, ptr %816, i64 101, i32 1
  %818 = zext i32 %814 to i64
  br label %787

819:                                              ; preds = %869, %790
  %820 = phi ptr [ null, %790 ], [ %870, %869 ]
  %821 = phi i8 [ %347, %790 ], [ %871, %869 ]
  %822 = icmp eq ptr %820, null
  %823 = getelementptr inbounds %struct.loop, ptr %199, i64 0, i32 7
  %824 = icmp eq i8 %821, 0
  %825 = zext i32 %747 to i64
  br label %875

826:                                              ; preds = %790, %869
  %827 = phi i8 [ %871, %869 ], [ %347, %790 ]
  %828 = phi ptr [ %873, %869 ], [ %350, %790 ]
  %829 = phi ptr [ %870, %869 ], [ null, %790 ]
  %830 = getelementptr inbounds %struct.mem_ref_group, ptr %828, i64 0, i32 2
  %831 = load ptr, ptr %830, align 8, !tbaa !35
  %832 = icmp eq ptr %831, null
  br i1 %832, label %869, label %833

833:                                              ; preds = %826, %863
  %834 = phi ptr [ %867, %863 ], [ %831, %826 ]
  %835 = phi i8 [ %865, %863 ], [ %827, %826 ]
  %836 = phi ptr [ %864, %863 ], [ %829, %826 ]
  %837 = getelementptr inbounds %struct.mem_ref, ptr %834, i64 0, i32 1
  %838 = load ptr, ptr %837, align 8, !tbaa !104
  %839 = load ptr, ptr %834, align 8, !tbaa !118
  %840 = getelementptr inbounds %struct.mem_ref, ptr %834, i64 0, i32 8
  %841 = load i8, ptr %840, align 8
  %842 = and i8 %841, 1
  %843 = xor i8 %842, 1
  %844 = call ptr @create_data_ref(ptr noundef %717, ptr noundef %838, ptr noundef %839, i8 noundef zeroext %843) #14
  %845 = icmp eq ptr %844, null
  br i1 %845, label %863, label %846

846:                                              ; preds = %833
  %847 = getelementptr inbounds %struct.mem_ref, ptr %834, i64 0, i32 6
  store i32 %815, ptr %847, align 8, !tbaa !119
  %848 = getelementptr inbounds %struct.data_reference, ptr %844, i64 0, i32 2
  store ptr %834, ptr %848, align 8, !tbaa !120
  %849 = icmp eq ptr %836, null
  br i1 %849, label %855, label %850

850:                                              ; preds = %846
  %851 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %836, i64 0, i32 1
  %852 = load i32, ptr %851, align 4, !tbaa !125
  %853 = load i32, ptr %836, align 8, !tbaa !127
  %854 = icmp eq i32 %852, %853
  br i1 %854, label %855, label %857

855:                                              ; preds = %850, %846
  %856 = call ptr @vec_heap_p_reserve(ptr noundef %836, i32 noundef 1) #14
  br label %857

857:                                              ; preds = %855, %850
  %858 = phi ptr [ %856, %855 ], [ %836, %850 ]
  %859 = load i32, ptr %858, align 8, !tbaa !127
  %860 = add i32 %859, 1
  store i32 %860, ptr %858, align 8, !tbaa !127
  %861 = zext i32 %859 to i64
  %862 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %858, i64 0, i32 2, i64 %861
  store ptr %844, ptr %862, align 8, !tbaa !35
  br label %863

863:                                              ; preds = %857, %833
  %864 = phi ptr [ %836, %833 ], [ %858, %857 ]
  %865 = phi i8 [ 0, %833 ], [ %835, %857 ]
  %866 = getelementptr inbounds %struct.mem_ref, ptr %834, i64 0, i32 7
  %867 = load ptr, ptr %866, align 8, !tbaa !35
  %868 = icmp eq ptr %867, null
  br i1 %868, label %869, label %833, !llvm.loop !128

869:                                              ; preds = %863, %826
  %870 = phi ptr [ %829, %826 ], [ %864, %863 ]
  %871 = phi i8 [ %827, %826 ], [ %865, %863 ]
  %872 = getelementptr inbounds %struct.mem_ref_group, ptr %828, i64 0, i32 3
  %873 = load ptr, ptr %872, align 8, !tbaa !110
  %874 = icmp eq ptr %873, null
  br i1 %874, label %819, label %826, !llvm.loop !129

875:                                              ; preds = %819, %1058
  %876 = phi i32 [ %1059, %1058 ], [ 0, %819 ]
  br i1 %822, label %884, label %877

877:                                              ; preds = %875
  %878 = load i32, ptr %820, align 8, !tbaa !127
  %879 = icmp ugt i32 %878, %876
  br i1 %879, label %880, label %884

880:                                              ; preds = %877
  %881 = zext i32 %876 to i64
  %882 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %820, i64 0, i32 2, i64 %881
  %883 = load ptr, ptr %882, align 8, !tbaa !35
  br label %884

884:                                              ; preds = %880, %877, %875
  %885 = phi ptr [ %883, %880 ], [ null, %877 ], [ null, %875 ]
  %886 = phi i1 [ false, %880 ], [ true, %877 ], [ true, %875 ]
  br i1 %886, label %1060, label %887

887:                                              ; preds = %884
  %888 = getelementptr inbounds %struct.data_reference, ptr %885, i64 0, i32 1
  %889 = load ptr, ptr %888, align 8, !tbaa !130
  %890 = call ptr @xcalloc(i64 noundef %748, i64 noundef 8) #14
  %891 = getelementptr inbounds %struct.data_reference, ptr %885, i64 0, i32 5, i32 1
  %892 = load ptr, ptr %891, align 8, !tbaa !131
  %893 = icmp eq ptr %892, null
  br label %894

894:                                              ; preds = %1019, %887
  %895 = phi ptr [ %889, %887 ], [ %943, %1019 ]
  %896 = phi i32 [ 0, %887 ], [ %1020, %1019 ]
  br i1 %893, label %904, label %897

897:                                              ; preds = %894
  %898 = load i32, ptr %892, align 8, !tbaa !132
  %899 = icmp ugt i32 %898, %896
  br i1 %899, label %900, label %904

900:                                              ; preds = %897
  %901 = zext i32 %896 to i64
  %902 = getelementptr inbounds %struct.VEC_tree_base, ptr %892, i64 0, i32 2, i64 %901
  %903 = load ptr, ptr %902, align 8, !tbaa !35
  br label %904

904:                                              ; preds = %900, %897, %894
  %905 = phi ptr [ %903, %900 ], [ null, %897 ], [ null, %894 ]
  %906 = phi i1 [ false, %900 ], [ true, %897 ], [ true, %894 ]
  br i1 %906, label %907, label %911

907:                                              ; preds = %904
  %908 = load ptr, ptr @compiler_params, align 8
  %909 = getelementptr inbounds %struct.param_info, ptr %908, i64 100, i32 1
  %910 = getelementptr inbounds %struct.param_info, ptr %908, i64 99, i32 1
  br label %1021

911:                                              ; preds = %904, %918
  %912 = phi ptr [ %920, %918 ], [ %895, %904 ]
  %913 = load i64, ptr %912, align 8
  %914 = trunc i64 %913 to i16
  switch i16 %914, label %921 [
    i16 42, label %915
    i16 41, label %915
    i16 45, label %915
    i16 46, label %915
    i16 118, label %915
    i16 43, label %915
    i16 44, label %915
  ]

915:                                              ; preds = %911, %911, %911, %911, %911, %911, %911
  %916 = and i64 %913, 65535
  %917 = icmp eq i64 %916, 45
  br i1 %917, label %921, label %918

918:                                              ; preds = %915
  %919 = getelementptr inbounds %struct.tree_exp, ptr %912, i64 0, i32 3
  %920 = load ptr, ptr %919, align 8, !tbaa !46
  br label %911, !llvm.loop !134

921:                                              ; preds = %911, %915
  %922 = and i64 %913, 65535
  %923 = icmp eq i64 %922, 45
  br i1 %923, label %924, label %942

924:                                              ; preds = %921
  %925 = getelementptr inbounds %struct.tree_common, ptr %912, i64 0, i32 2
  %926 = load ptr, ptr %925, align 8, !tbaa !46
  %927 = getelementptr inbounds %struct.tree_type, ptr %926, i64 0, i32 3
  %928 = load ptr, ptr %927, align 8, !tbaa !46
  %929 = call i32 @host_integerp(ptr noundef %928, i32 noundef 1) #14
  %930 = icmp eq i32 %929, 0
  br i1 %930, label %933, label %931

931:                                              ; preds = %924
  %932 = call i64 @tree_low_cst(ptr noundef %928, i32 noundef 1) #14
  br label %938

933:                                              ; preds = %924
  %934 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %935 = getelementptr inbounds %struct.param_info, ptr %934, i64 100, i32 1
  %936 = load i32, ptr %935, align 8, !tbaa !54
  %937 = zext i32 %936 to i64
  br label %938

938:                                              ; preds = %933, %931
  %939 = phi i64 [ %932, %931 ], [ %937, %933 ]
  %940 = getelementptr inbounds %struct.tree_exp, ptr %912, i64 0, i32 3
  %941 = load ptr, ptr %940, align 8, !tbaa !46
  br label %942

942:                                              ; preds = %938, %921
  %943 = phi ptr [ %941, %938 ], [ %912, %921 ]
  %944 = phi i64 [ %939, %938 ], [ 1, %921 ]
  %945 = load ptr, ptr %823, align 8, !tbaa !74
  %946 = icmp eq ptr %945, null
  br i1 %946, label %949, label %947

947:                                              ; preds = %942
  %948 = load i32, ptr %945, align 8, !tbaa !61
  br label %949

949:                                              ; preds = %947, %942
  %950 = phi i32 [ %948, %947 ], [ 0, %942 ]
  %951 = sub i32 %950, %747
  %952 = load i64, ptr %905, align 8
  %953 = and i64 %952, 65535
  %954 = icmp eq i64 %953, 146
  br i1 %954, label %955, label %1019

955:                                              ; preds = %949
  %956 = and i64 %944, 4294967295
  br label %957

957:                                              ; preds = %955, %983
  %958 = phi ptr [ %905, %955 ], [ %974, %983 ]
  %959 = getelementptr inbounds %struct.tree_exp, ptr %958, i64 0, i32 3
  %960 = load ptr, ptr %959, align 8, !tbaa !46
  %961 = getelementptr inbounds %struct.tree_int_cst, ptr %960, i64 0, i32 1
  %962 = load i64, ptr %961, align 8, !tbaa !46
  %963 = load ptr, ptr @cfun, align 8, !tbaa !35
  %964 = getelementptr inbounds %struct.function, ptr %963, i64 0, i32 4
  %965 = load ptr, ptr %964, align 8, !tbaa !57
  %966 = getelementptr inbounds %struct.loops, ptr %965, i64 0, i32 1
  %967 = load ptr, ptr %966, align 8, !tbaa !59
  %968 = and i64 %962, 4294967295
  %969 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %967, i64 0, i32 2, i64 %968
  %970 = load ptr, ptr %969, align 8, !tbaa !35
  %971 = getelementptr inbounds %struct.tree_exp, ptr %958, i64 1, i32 0, i32 1
  %972 = load ptr, ptr %971, align 8, !tbaa !46
  %973 = getelementptr inbounds %struct.tree_exp, ptr %958, i64 1
  %974 = load ptr, ptr %973, align 8, !tbaa !46
  %975 = getelementptr inbounds %struct.loop, ptr %970, i64 0, i32 7
  %976 = load ptr, ptr %975, align 8, !tbaa !74
  %977 = icmp eq ptr %976, null
  br i1 %977, label %980, label %978

978:                                              ; preds = %957
  %979 = load i32, ptr %976, align 8, !tbaa !61
  br label %980

980:                                              ; preds = %978, %957
  %981 = phi i32 [ %979, %978 ], [ 0, %957 ]
  %982 = icmp ugt i32 %981, %951
  br i1 %982, label %987, label %983

983:                                              ; preds = %980, %1012
  %984 = load i64, ptr %974, align 8
  %985 = and i64 %984, 65535
  %986 = icmp eq i64 %985, 146
  br i1 %986, label %957, label %1019, !llvm.loop !135

987:                                              ; preds = %980
  %988 = call i32 @host_integerp(ptr noundef %972, i32 noundef 0) #14
  %989 = icmp eq i32 %988, 0
  br i1 %989, label %992, label %990

990:                                              ; preds = %987
  %991 = call i64 @tree_low_cst(ptr noundef %972, i32 noundef 0) #14
  br label %997

992:                                              ; preds = %987
  %993 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %994 = getelementptr inbounds %struct.param_info, ptr %993, i64 100, i32 1
  %995 = load i32, ptr %994, align 8, !tbaa !54
  %996 = sext i32 %995 to i64
  br label %997

997:                                              ; preds = %992, %990
  %998 = phi i64 [ %991, %990 ], [ %996, %992 ]
  %999 = mul nsw i64 %998, %956
  %1000 = load ptr, ptr %823, align 8, !tbaa !74
  %1001 = icmp eq ptr %1000, null
  br i1 %1001, label %1004, label %1002

1002:                                             ; preds = %997
  %1003 = load i32, ptr %1000, align 8, !tbaa !61
  br label %1004

1004:                                             ; preds = %1002, %997
  %1005 = phi i32 [ %1003, %1002 ], [ 0, %997 ]
  %1006 = xor i32 %1005, -1
  %1007 = add i32 %747, %1006
  %1008 = load ptr, ptr %975, align 8, !tbaa !74
  %1009 = icmp eq ptr %1008, null
  br i1 %1009, label %1012, label %1010

1010:                                             ; preds = %1004
  %1011 = load i32, ptr %1008, align 8, !tbaa !61
  br label %1012

1012:                                             ; preds = %1010, %1004
  %1013 = phi i32 [ %1011, %1010 ], [ 0, %1004 ]
  %1014 = add i32 %1007, %1013
  %1015 = zext i32 %1014 to i64
  %1016 = getelementptr inbounds i64, ptr %890, i64 %1015
  %1017 = load i64, ptr %1016, align 8, !tbaa !90
  %1018 = add nsw i64 %1017, %999
  store i64 %1018, ptr %1016, align 8, !tbaa !90
  br label %983

1019:                                             ; preds = %983, %949
  %1020 = add i32 %896, 1
  br label %894, !llvm.loop !136

1021:                                             ; preds = %907, %1042
  %1022 = phi i64 [ %825, %907 ], [ %1025, %1042 ]
  %1023 = phi i32 [ -1, %907 ], [ %1043, %1042 ]
  %1024 = add nsw i64 %1022, -1
  %1025 = add nsw i64 %1022, -1
  %1026 = icmp eq i64 %1022, 0
  br i1 %1026, label %1045, label %1027

1027:                                             ; preds = %1021
  %1028 = getelementptr inbounds i64, ptr %890, i64 %1024
  %1029 = load i64, ptr %1028, align 8, !tbaa !90
  %1030 = call i64 @llvm.abs.i64(i64 %1029, i1 true)
  %1031 = load i32, ptr %909, align 8, !tbaa !54
  %1032 = zext i32 %1031 to i64
  %1033 = icmp ult i64 %1030, %1032
  br i1 %1033, label %1034, label %1041

1034:                                             ; preds = %1027
  %1035 = getelementptr inbounds i32, ptr %750, i64 %1024
  %1036 = load i32, ptr %1035, align 4, !tbaa !50
  %1037 = load i32, ptr %910, align 8, !tbaa !54
  %1038 = shl i32 %1037, 6
  %1039 = and i32 %1038, 268435392
  %1040 = icmp ugt i32 %1036, %1039
  br i1 %1040, label %1042, label %1041

1041:                                             ; preds = %1034, %1027
  br label %1042

1042:                                             ; preds = %1041, %1034
  %1043 = phi i32 [ %1023, %1041 ], [ %1036, %1034 ]
  %1044 = phi i1 [ true, %1041 ], [ false, %1034 ]
  br i1 %1044, label %1021, label %1045

1045:                                             ; preds = %1042, %1021
  %1046 = phi i32 [ %1023, %1021 ], [ %1043, %1042 ]
  call void @free(ptr noundef %890)
  %1047 = getelementptr inbounds %struct.data_reference, ptr %885, i64 0, i32 2
  %1048 = load ptr, ptr %1047, align 8, !tbaa !120
  %1049 = getelementptr inbounds %struct.mem_ref, ptr %1048, i64 0, i32 6
  %1050 = load i32, ptr %1049, align 8, !tbaa !119
  %1051 = icmp ugt i32 %1050, %1046
  br i1 %1051, label %1052, label %1053

1052:                                             ; preds = %1045
  store i32 %1046, ptr %1049, align 8, !tbaa !119
  br label %1053

1053:                                             ; preds = %1052, %1045
  br i1 %824, label %1058, label %1054

1054:                                             ; preds = %1053
  %1055 = getelementptr inbounds %struct.mem_ref, ptr %1048, i64 0, i32 8
  %1056 = load i8, ptr %1055, align 8
  %1057 = or i8 %1056, 2
  store i8 %1057, ptr %1055, align 8
  br label %1058

1058:                                             ; preds = %1054, %1053
  %1059 = add i32 %876, 1
  br label %875, !llvm.loop !137

1060:                                             ; preds = %884
  %1061 = load ptr, ptr %5, align 8, !tbaa !35
  call void @compute_all_dependences(ptr noundef %820, ptr noundef nonnull %4, ptr noundef %1061, i8 noundef zeroext 1) #14
  %1062 = icmp eq i32 %747, 0
  %1063 = add i32 %747, -1
  %1064 = icmp sgt i32 %1063, 0
  %1065 = zext i32 %1063 to i64
  %1066 = zext nneg i32 %1063 to i64
  br label %1067

1067:                                             ; preds = %1197, %1060
  %1068 = phi i32 [ 0, %1060 ], [ %1198, %1197 ]
  %1069 = load ptr, ptr %4, align 8
  %1070 = icmp eq ptr %1069, null
  br i1 %1070, label %1078, label %1071

1071:                                             ; preds = %1067
  %1072 = load i32, ptr %1069, align 8, !tbaa !138
  %1073 = icmp ugt i32 %1072, %1068
  br i1 %1073, label %1074, label %1078

1074:                                             ; preds = %1071
  %1075 = zext i32 %1068 to i64
  %1076 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %1069, i64 0, i32 2, i64 %1075
  %1077 = load ptr, ptr %1076, align 8, !tbaa !35
  br label %1078

1078:                                             ; preds = %1074, %1071, %1067
  %1079 = phi ptr [ %1077, %1074 ], [ null, %1071 ], [ null, %1067 ]
  %1080 = phi i1 [ false, %1074 ], [ true, %1071 ], [ true, %1067 ]
  br i1 %1080, label %1199, label %1081

1081:                                             ; preds = %1078
  %1082 = getelementptr inbounds %struct.data_dependence_relation, ptr %1079, i64 0, i32 2
  %1083 = load ptr, ptr %1082, align 8, !tbaa !140
  %1084 = load ptr, ptr @chrec_known, align 8, !tbaa !35
  %1085 = icmp eq ptr %1083, %1084
  br i1 %1085, label %1197, label %1086

1086:                                             ; preds = %1081
  %1087 = load ptr, ptr %1079, align 8, !tbaa !142
  %1088 = getelementptr inbounds %struct.data_reference, ptr %1087, i64 0, i32 2
  %1089 = load ptr, ptr %1088, align 8, !tbaa !120
  %1090 = getelementptr inbounds %struct.data_dependence_relation, ptr %1079, i64 0, i32 1
  %1091 = load ptr, ptr %1090, align 8, !tbaa !143
  %1092 = getelementptr inbounds %struct.data_reference, ptr %1091, i64 0, i32 2
  %1093 = load ptr, ptr %1092, align 8, !tbaa !120
  %1094 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !35
  %1095 = icmp eq ptr %1083, %1094
  br i1 %1095, label %1109, label %1096

1096:                                             ; preds = %1086
  %1097 = getelementptr inbounds %struct.data_dependence_relation, ptr %1079, i64 0, i32 6
  %1098 = load ptr, ptr %1097, align 8, !tbaa !144
  %1099 = icmp eq ptr %1098, null
  br i1 %1099, label %1102, label %1100

1100:                                             ; preds = %1096
  %1101 = load i32, ptr %1098, align 8, !tbaa !145
  br label %1102

1102:                                             ; preds = %1100, %1096
  %1103 = phi i32 [ %1101, %1100 ], [ 0, %1096 ]
  %1104 = icmp eq i32 %1103, 0
  br i1 %1104, label %1109, label %1105

1105:                                             ; preds = %1102
  %1106 = icmp eq ptr %1089, %1093
  %1107 = getelementptr inbounds %struct.mem_ref, ptr %1089, i64 0, i32 8
  %1108 = getelementptr inbounds %struct.mem_ref, ptr %1093, i64 0, i32 8
  br label %1116

1109:                                             ; preds = %1102, %1086
  %1110 = getelementptr inbounds %struct.mem_ref, ptr %1089, i64 0, i32 8
  %1111 = load i8, ptr %1110, align 8
  %1112 = and i8 %1111, -3
  store i8 %1112, ptr %1110, align 8
  %1113 = getelementptr inbounds %struct.mem_ref, ptr %1093, i64 0, i32 8
  %1114 = load i8, ptr %1113, align 8
  %1115 = and i8 %1114, -3
  store i8 %1115, ptr %1113, align 8
  br label %1186

1116:                                             ; preds = %1105, %1176
  %1117 = phi i64 [ 0, %1105 ], [ %1185, %1176 ]
  %1118 = phi i32 [ %815, %1105 ], [ %1184, %1176 ]
  %1119 = load ptr, ptr %1097, align 8, !tbaa !144
  %1120 = icmp eq ptr %1119, null
  br i1 %1120, label %1123, label %1121

1121:                                             ; preds = %1116
  %1122 = load i32, ptr %1119, align 8, !tbaa !145
  br label %1123

1123:                                             ; preds = %1121, %1116
  %1124 = phi i32 [ %1122, %1121 ], [ 0, %1116 ]
  %1125 = zext i32 %1124 to i64
  %1126 = icmp ult i64 %1117, %1125
  br i1 %1126, label %1127, label %1186

1127:                                             ; preds = %1123
  %1128 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %1119, i64 0, i32 2, i64 %1117
  %1129 = load ptr, ptr %1128, align 8, !tbaa !35
  br i1 %1062, label %1139, label %1130

1130:                                             ; preds = %1127, %1136
  %1131 = phi i32 [ %1137, %1136 ], [ 0, %1127 ]
  %1132 = zext i32 %1131 to i64
  %1133 = getelementptr inbounds i32, ptr %1129, i64 %1132
  %1134 = load i32, ptr %1133, align 4, !tbaa !50
  %1135 = icmp eq i32 %1134, 0
  br i1 %1135, label %1136, label %1139

1136:                                             ; preds = %1130
  %1137 = add nuw i32 %1131, 1
  %1138 = icmp eq i32 %1137, %747
  br i1 %1138, label %1139, label %1130, !llvm.loop !147

1139:                                             ; preds = %1136, %1130, %1127
  %1140 = phi i32 [ 0, %1127 ], [ %747, %1136 ], [ %1131, %1130 ]
  %1141 = icmp eq i32 %1140, %747
  br i1 %1141, label %1153, label %1142

1142:                                             ; preds = %1139
  %1143 = zext i32 %1140 to i64
  %1144 = getelementptr inbounds i32, ptr %1129, i64 %1143
  %1145 = load i32, ptr %1144, align 4, !tbaa !50
  %1146 = icmp sgt i32 %1145, 0
  br i1 %1146, label %1148, label %1147

1147:                                             ; preds = %1142
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1242, ptr noundef nonnull @.str.12) #14
  br label %1148

1148:                                             ; preds = %1147, %1142
  %1149 = getelementptr inbounds i32, ptr %750, i64 %1143
  %1150 = load i32, ptr %1149, align 4, !tbaa !50
  %1151 = load i32, ptr %1144, align 4, !tbaa !50
  %1152 = mul i32 %1151, %1150
  br label %1153

1153:                                             ; preds = %1148, %1139
  %1154 = phi i32 [ %1152, %1148 ], [ 0, %1139 ]
  %1155 = load ptr, ptr %1097, align 8, !tbaa !144
  %1156 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %1155, i64 0, i32 2, i64 %1117
  %1157 = load ptr, ptr %1156, align 8, !tbaa !35
  br i1 %1064, label %1161, label %1166

1158:                                             ; preds = %1161
  %1159 = add nuw nsw i64 %1162, 1
  %1160 = icmp eq i64 %1159, %1066
  br i1 %1160, label %1166, label %1161, !llvm.loop !148

1161:                                             ; preds = %1153, %1158
  %1162 = phi i64 [ %1159, %1158 ], [ 0, %1153 ]
  %1163 = getelementptr inbounds i32, ptr %1157, i64 %1162
  %1164 = load i32, ptr %1163, align 4, !tbaa !50
  %1165 = icmp eq i32 %1164, 0
  br i1 %1165, label %1158, label %1176

1166:                                             ; preds = %1158, %1153
  br i1 %1106, label %1167, label %1171

1167:                                             ; preds = %1166
  %1168 = getelementptr inbounds i32, ptr %1157, i64 %1065
  %1169 = load i32, ptr %1168, align 4, !tbaa !50
  %1170 = icmp eq i32 %1169, 0
  br i1 %1170, label %1176, label %1171

1171:                                             ; preds = %1167, %1166
  %1172 = load i8, ptr %1107, align 8
  %1173 = and i8 %1172, -3
  store i8 %1173, ptr %1107, align 8
  %1174 = load i8, ptr %1108, align 8
  %1175 = and i8 %1174, -3
  store i8 %1175, ptr %1108, align 8
  br label %1176

1176:                                             ; preds = %1161, %1171, %1167
  %1177 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %1178 = getelementptr inbounds %struct.param_info, ptr %1177, i64 99, i32 1
  %1179 = load i32, ptr %1178, align 8, !tbaa !54
  %1180 = shl i32 %1179, 6
  %1181 = and i32 %1180, 268435392
  %1182 = icmp ult i32 %1154, %1181
  %1183 = call i32 @llvm.umin.i32(i32 %1154, i32 %1118)
  %1184 = select i1 %1182, i32 %1118, i32 %1183
  %1185 = add nuw nsw i64 %1117, 1
  br label %1116, !llvm.loop !149

1186:                                             ; preds = %1123, %1109
  %1187 = phi i32 [ 0, %1109 ], [ %1118, %1123 ]
  %1188 = getelementptr inbounds %struct.mem_ref, ptr %1089, i64 0, i32 6
  %1189 = load i32, ptr %1188, align 8, !tbaa !119
  %1190 = icmp ugt i32 %1189, %1187
  br i1 %1190, label %1191, label %1192

1191:                                             ; preds = %1186
  store i32 %1187, ptr %1188, align 8, !tbaa !119
  br label %1192

1192:                                             ; preds = %1191, %1186
  %1193 = getelementptr inbounds %struct.mem_ref, ptr %1093, i64 0, i32 6
  %1194 = load i32, ptr %1193, align 8, !tbaa !119
  %1195 = icmp ugt i32 %1194, %1187
  br i1 %1195, label %1196, label %1197

1196:                                             ; preds = %1192
  store i32 %1187, ptr %1193, align 8, !tbaa !119
  br label %1197

1197:                                             ; preds = %1196, %1192, %1081
  %1198 = add i32 %1068, 1
  br label %1067, !llvm.loop !150

1199:                                             ; preds = %1078
  call void @free_dependence_relations(ptr noundef %1069) #14
  call void @free_data_refs(ptr noundef %820) #14
  call void @free(ptr noundef %750)
  %1200 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1201 = icmp eq ptr %1200, null
  br i1 %1201, label %1227, label %1202

1202:                                             ; preds = %1199
  %1203 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %1204 = and i32 %1203, 8
  %1205 = icmp eq i32 %1204, 0
  br i1 %1205, label %1227, label %1206

1206:                                             ; preds = %1202
  %1207 = call i64 @fwrite(ptr nonnull @.str.33, i64 17, i64 1, ptr nonnull %1200)
  %1208 = icmp eq ptr %350, null
  br i1 %1208, label %1227, label %1209

1209:                                             ; preds = %1206, %1223
  %1210 = phi ptr [ %1225, %1223 ], [ %350, %1206 ]
  %1211 = getelementptr inbounds %struct.mem_ref_group, ptr %1210, i64 0, i32 2
  %1212 = load ptr, ptr %1211, align 8, !tbaa !35
  %1213 = icmp eq ptr %1212, null
  br i1 %1213, label %1223, label %1214

1214:                                             ; preds = %1209, %1214
  %1215 = phi ptr [ %1221, %1214 ], [ %1212, %1209 ]
  %1216 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1217 = getelementptr inbounds %struct.mem_ref, ptr %1215, i64 0, i32 6
  %1218 = load i32, ptr %1217, align 8, !tbaa !119
  %1219 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1216, ptr noundef nonnull @.str.34, ptr noundef nonnull %1215, i32 noundef %1218)
  %1220 = getelementptr inbounds %struct.mem_ref, ptr %1215, i64 0, i32 7
  %1221 = load ptr, ptr %1220, align 8, !tbaa !35
  %1222 = icmp eq ptr %1221, null
  br i1 %1222, label %1223, label %1214, !llvm.loop !151

1223:                                             ; preds = %1214, %1209
  %1224 = getelementptr inbounds %struct.mem_ref_group, ptr %1210, i64 0, i32 3
  %1225 = load ptr, ptr %1224, align 8, !tbaa !110
  %1226 = icmp eq ptr %1225, null
  br i1 %1226, label %1227, label %1209, !llvm.loop !152

1227:                                             ; preds = %1223, %1206, %1202, %1199, %706
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  %1228 = call i32 @tree_num_loop_insns(ptr noundef nonnull %199, ptr noundef nonnull @eni_time_weights) #14
  %1229 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %1230 = getelementptr inbounds %struct.param_info, ptr %1229, i64 97, i32 1
  %1231 = load i32, ptr %1230, align 8, !tbaa !54
  %1232 = add i32 %1228, -1
  %1233 = add i32 %1232, %1231
  %1234 = udiv i32 %1233, %1228
  %1235 = call i64 @estimated_loop_iterations_int(ptr noundef nonnull %199, i8 noundef zeroext 0) #14
  %1236 = call i32 @tree_num_loop_insns(ptr noundef nonnull %199, ptr noundef nonnull @eni_size_weights) #14
  %1237 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %1238 = getelementptr inbounds %struct.param_info, ptr %1237, i64 26, i32 1
  %1239 = load i32, ptr %1238, align 8, !tbaa !54
  %1240 = udiv i32 %1239, %1236
  %1241 = icmp sgt i64 %1235, -1
  %1242 = zext i32 %1240 to i64
  %1243 = icmp slt i64 %1235, %1242
  %1244 = select i1 %1241, i1 %1243, i1 false
  %1245 = trunc i64 %1235 to i32
  %1246 = select i1 %1244, i32 %1245, i32 %1240
  %1247 = icmp ult i32 %1246, 2
  br i1 %1247, label %1296, label %1248

1248:                                             ; preds = %1227
  %1249 = icmp eq ptr %350, null
  br i1 %1249, label %1288, label %1250

1250:                                             ; preds = %1248, %1283
  %1251 = phi ptr [ %1286, %1283 ], [ %350, %1248 ]
  %1252 = phi i32 [ %1284, %1283 ], [ 1, %1248 ]
  %1253 = getelementptr inbounds %struct.mem_ref_group, ptr %1251, i64 0, i32 2
  %1254 = load ptr, ptr %1253, align 8, !tbaa !35
  %1255 = icmp eq ptr %1254, null
  br i1 %1255, label %1283, label %1256

1256:                                             ; preds = %1250, %1278
  %1257 = phi ptr [ %1281, %1278 ], [ %1254, %1250 ]
  %1258 = phi i32 [ %1279, %1278 ], [ %1252, %1250 ]
  %1259 = getelementptr inbounds %struct.mem_ref, ptr %1257, i64 0, i32 5
  %1260 = load i64, ptr %1259, align 8, !tbaa !100
  %1261 = icmp eq i64 %1260, -1
  br i1 %1261, label %1262, label %1268

1262:                                             ; preds = %1256
  %1263 = getelementptr inbounds %struct.mem_ref, ptr %1257, i64 0, i32 8
  %1264 = load i8, ptr %1263, align 8
  %1265 = lshr i8 %1264, 3
  %1266 = and i8 %1265, 1
  %1267 = xor i8 %1266, 1
  br label %1268

1268:                                             ; preds = %1262, %1256
  %1269 = phi i8 [ 0, %1256 ], [ %1267, %1262 ]
  %1270 = icmp eq i8 %1269, 0
  br i1 %1270, label %1278, label %1271

1271:                                             ; preds = %1268
  %1272 = getelementptr inbounds %struct.mem_ref, ptr %1257, i64 0, i32 4
  %1273 = load i64, ptr %1272, align 8, !tbaa !101
  %1274 = trunc i64 %1273 to i32
  %1275 = call i32 @least_common_multiple(i32 noundef %1274, i32 noundef %1258) #14
  %1276 = icmp ugt i32 %1275, %1246
  %1277 = select i1 %1276, i32 %1258, i32 %1275
  br label %1278

1278:                                             ; preds = %1271, %1268
  %1279 = phi i32 [ %1258, %1268 ], [ %1277, %1271 ]
  %1280 = getelementptr inbounds %struct.mem_ref, ptr %1257, i64 0, i32 7
  %1281 = load ptr, ptr %1280, align 8, !tbaa !35
  %1282 = icmp eq ptr %1281, null
  br i1 %1282, label %1283, label %1256, !llvm.loop !153

1283:                                             ; preds = %1278, %1250
  %1284 = phi i32 [ %1252, %1250 ], [ %1279, %1278 ]
  %1285 = getelementptr inbounds %struct.mem_ref_group, ptr %1251, i64 0, i32 3
  %1286 = load ptr, ptr %1285, align 8, !tbaa !110
  %1287 = icmp eq ptr %1286, null
  br i1 %1287, label %1288, label %1250, !llvm.loop !154

1288:                                             ; preds = %1283, %1248
  %1289 = phi i32 [ 1, %1248 ], [ %1284, %1283 ]
  %1290 = call zeroext i8 @can_unroll_loop_p(ptr noundef nonnull %199, i32 noundef %1289, ptr noundef nonnull %7) #14
  %1291 = icmp eq i8 %1290, 0
  br i1 %1291, label %1296, label %1292

1292:                                             ; preds = %1288
  %1293 = load i32, ptr %349, align 4, !tbaa !77
  %1294 = icmp ugt i32 %1293, 2
  %1295 = select i1 %1294, i32 1, i32 %1289
  br label %1296

1296:                                             ; preds = %1292, %1288, %1227
  %1297 = phi i32 [ 1, %1227 ], [ 1, %1288 ], [ %1295, %1292 ]
  %1298 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1299 = icmp eq ptr %1298, null
  br i1 %1299, label %1306, label %1300

1300:                                             ; preds = %1296
  %1301 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %1302 = and i32 %1301, 8
  %1303 = icmp eq i32 %1302, 0
  br i1 %1303, label %1306, label %1304

1304:                                             ; preds = %1300
  %1305 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1298, ptr noundef nonnull @.str.16, i32 noundef %1234, i32 noundef %1297, i64 noundef %1235, i32 noundef %1236, i32 noundef %348, i32 noundef %704)
  br label %1306

1306:                                             ; preds = %1304, %1300, %1296
  %1307 = icmp eq i32 %348, 0
  br i1 %1307, label %1334, label %1308

1308:                                             ; preds = %1306
  %1309 = udiv i32 %1236, %348
  %1310 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %1311 = getelementptr inbounds %struct.param_info, ptr %1310, i64 115, i32 1
  %1312 = load i32, ptr %1311, align 8, !tbaa !54
  %1313 = icmp slt i32 %1309, %1312
  br i1 %1313, label %1334, label %1314

1314:                                             ; preds = %1308
  %1315 = icmp slt i64 %1235, 0
  br i1 %1315, label %1316, label %1322

1316:                                             ; preds = %1314
  %1317 = udiv i32 %1236, %704
  %1318 = getelementptr inbounds %struct.param_info, ptr %1310, i64 114, i32 1
  %1319 = load i32, ptr %1318, align 8, !tbaa !54
  %1320 = icmp sge i32 %1317, %1319
  %1321 = zext i1 %1320 to i8
  br label %1334

1322:                                             ; preds = %1314
  %1323 = zext i32 %1234 to i64
  %1324 = icmp sgt i64 %1235, %1323
  br i1 %1324, label %1334, label %1325

1325:                                             ; preds = %1322
  %1326 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1327 = icmp eq ptr %1326, null
  br i1 %1327, label %1334, label %1328

1328:                                             ; preds = %1325
  %1329 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %1330 = and i32 %1329, 8
  %1331 = icmp eq i32 %1330, 0
  br i1 %1331, label %1334, label %1332

1332:                                             ; preds = %1328
  %1333 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1326, ptr noundef nonnull @.str.35, i32 noundef %1245)
  br label %1334

1334:                                             ; preds = %1332, %1328, %1325, %1322, %1316, %1308, %1306
  %1335 = phi i8 [ %1321, %1316 ], [ 0, %1306 ], [ 0, %1308 ], [ 0, %1332 ], [ 0, %1328 ], [ 0, %1325 ], [ 1, %1322 ]
  %1336 = icmp eq i8 %1335, 0
  br i1 %1336, label %1698, label %1337

1337:                                             ; preds = %1334
  %1338 = load ptr, ptr %707, align 8, !tbaa !64
  %1339 = icmp eq ptr %1338, null
  br i1 %1339, label %1340, label %1379

1340:                                             ; preds = %1337
  %1341 = load ptr, ptr @x86_mfence, align 8, !tbaa !35
  %1342 = icmp eq ptr %1341, null
  br i1 %1342, label %1379, label %1343

1343:                                             ; preds = %1340
  %1344 = call ptr @get_loop_exit_edges(ptr noundef nonnull %199) #14
  %1345 = icmp eq ptr %1344, null
  %1346 = load ptr, ptr @cfun, align 8
  %1347 = getelementptr inbounds %struct.function, ptr %1346, i64 0, i32 1
  br label %1348

1348:                                             ; preds = %1374, %1343
  %1349 = phi i8 [ 1, %1343 ], [ %1375, %1374 ]
  %1350 = phi i32 [ 0, %1343 ], [ %1376, %1374 ]
  br i1 %1345, label %1358, label %1351

1351:                                             ; preds = %1348
  %1352 = load i32, ptr %1344, align 8, !tbaa !155
  %1353 = icmp ugt i32 %1352, %1350
  br i1 %1353, label %1354, label %1358

1354:                                             ; preds = %1351
  %1355 = zext i32 %1350 to i64
  %1356 = getelementptr inbounds %struct.VEC_edge_base, ptr %1344, i64 0, i32 2, i64 %1355
  %1357 = load ptr, ptr %1356, align 8, !tbaa !35
  br label %1358

1358:                                             ; preds = %1354, %1351, %1348
  %1359 = phi ptr [ %1357, %1354 ], [ null, %1351 ], [ null, %1348 ]
  %1360 = phi i1 [ false, %1354 ], [ true, %1351 ], [ true, %1348 ]
  br i1 %1360, label %1377, label %1361

1361:                                             ; preds = %1358
  %1362 = getelementptr inbounds %struct.edge_def, ptr %1359, i64 0, i32 7
  %1363 = load i32, ptr %1362, align 8, !tbaa !157
  %1364 = and i32 %1363, 2
  %1365 = icmp eq i32 %1364, 0
  br i1 %1365, label %1374, label %1366

1366:                                             ; preds = %1361
  %1367 = getelementptr inbounds %struct.edge_def, ptr %1359, i64 0, i32 1
  %1368 = load ptr, ptr %1367, align 8, !tbaa !159
  %1369 = load ptr, ptr %1347, align 8, !tbaa !160
  %1370 = getelementptr inbounds %struct.control_flow_graph, ptr %1369, i64 0, i32 1
  %1371 = load ptr, ptr %1370, align 8, !tbaa !161
  %1372 = icmp eq ptr %1368, %1371
  %1373 = select i1 %1372, i8 0, i8 %1349
  br label %1374

1374:                                             ; preds = %1366, %1361
  %1375 = phi i8 [ %1349, %1361 ], [ %1373, %1366 ]
  %1376 = add i32 %1350, 1
  br label %1348, !llvm.loop !163

1377:                                             ; preds = %1358
  br i1 %1345, label %1379, label %1378

1378:                                             ; preds = %1377
  call void @free(ptr noundef %1344)
  br label %1379

1379:                                             ; preds = %1378, %1377, %1340, %1337
  %1380 = phi i8 [ 0, %1337 ], [ 1, %1340 ], [ %1349, %1377 ], [ %1349, %1378 ]
  %1381 = icmp eq i8 %1380, 0
  br i1 %1381, label %1532, label %1382

1382:                                             ; preds = %1379
  %1383 = icmp eq ptr %350, null
  br i1 %1383, label %1454, label %1384

1384:                                             ; preds = %1382, %1449
  %1385 = phi i8 [ %1450, %1449 ], [ 0, %1382 ]
  %1386 = phi ptr [ %1452, %1449 ], [ %350, %1382 ]
  %1387 = getelementptr inbounds %struct.mem_ref_group, ptr %1386, i64 0, i32 2
  %1388 = load ptr, ptr %1387, align 8, !tbaa !35
  %1389 = icmp eq ptr %1388, null
  br i1 %1389, label %1449, label %1390

1390:                                             ; preds = %1384, %1443
  %1391 = phi ptr [ %1447, %1443 ], [ %1388, %1384 ]
  %1392 = phi i8 [ %1445, %1443 ], [ %1385, %1384 ]
  %1393 = getelementptr inbounds %struct.mem_ref, ptr %1391, i64 0, i32 8
  %1394 = load i8, ptr %1393, align 8
  %1395 = and i8 %1394, 3
  %1396 = icmp eq i8 %1395, 3
  br i1 %1396, label %1397, label %1443

1397:                                             ; preds = %1390
  %1398 = getelementptr inbounds %struct.mem_ref, ptr %1391, i64 0, i32 6
  %1399 = load i32, ptr %1398, align 8, !tbaa !119
  %1400 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %1401 = getelementptr inbounds %struct.param_info, ptr %1400, i64 101, i32 1
  %1402 = load i32, ptr %1401, align 8, !tbaa !54
  %1403 = shl nsw i32 %1402, 10
  %1404 = icmp ult i32 %1399, %1403
  br i1 %1404, label %1443, label %1405

1405:                                             ; preds = %1397
  %1406 = getelementptr inbounds %struct.mem_ref, ptr %1391, i64 0, i32 1
  %1407 = load ptr, ptr %1406, align 8, !tbaa !104
  %1408 = getelementptr inbounds %struct.tree_common, ptr %1407, i64 0, i32 2
  %1409 = load ptr, ptr %1408, align 8, !tbaa !46
  %1410 = load i64, ptr %1409, align 8
  %1411 = and i64 %1410, 65535
  %1412 = icmp eq i64 %1411, 14
  br i1 %1412, label %1413, label %1415

1413:                                             ; preds = %1405
  %1414 = call i32 @vector_type_mode(ptr noundef nonnull %1409) #14
  br label %1420

1415:                                             ; preds = %1405
  %1416 = getelementptr inbounds %struct.tree_type, ptr %1409, i64 0, i32 6
  %1417 = load i32, ptr %1416, align 4
  %1418 = lshr i32 %1417, 16
  %1419 = and i32 %1418, 255
  br label %1420

1420:                                             ; preds = %1415, %1413
  %1421 = phi i32 [ %1414, %1413 ], [ %1419, %1415 ]
  %1422 = icmp eq i32 %1421, 1
  br i1 %1422, label %1443, label %1423

1423:                                             ; preds = %1420
  %1424 = sext i32 %1421 to i64
  %1425 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 63, i32 4, i64 %1424
  %1426 = load i32, ptr %1425, align 4, !tbaa !164
  %1427 = icmp eq i32 %1426, 2956
  br i1 %1427, label %1443, label %1428

1428:                                             ; preds = %1423
  %1429 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1430 = icmp eq ptr %1429, null
  br i1 %1430, label %1437, label %1431

1431:                                             ; preds = %1428
  %1432 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %1433 = and i32 %1432, 8
  %1434 = icmp eq i32 %1433, 0
  br i1 %1434, label %1437, label %1435

1435:                                             ; preds = %1431
  %1436 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1429, ptr noundef nonnull @.str.36, ptr noundef nonnull %1391)
  br label %1437

1437:                                             ; preds = %1435, %1431, %1428
  %1438 = load ptr, ptr %1391, align 8, !tbaa !118
  %1439 = load i32, ptr %1438, align 8
  %1440 = or i32 %1439, 1024
  store i32 %1440, ptr %1438, align 8
  %1441 = load i8, ptr %1393, align 8
  %1442 = or i8 %1441, 8
  store i8 %1442, ptr %1393, align 8
  br label %1443

1443:                                             ; preds = %1437, %1423, %1420, %1397, %1390
  %1444 = phi i8 [ 1, %1437 ], [ 0, %1423 ], [ 0, %1420 ], [ 0, %1390 ], [ 0, %1397 ]
  %1445 = or i8 %1444, %1392
  %1446 = getelementptr inbounds %struct.mem_ref, ptr %1391, i64 0, i32 7
  %1447 = load ptr, ptr %1446, align 8, !tbaa !35
  %1448 = icmp eq ptr %1447, null
  br i1 %1448, label %1449, label %1390, !llvm.loop !166

1449:                                             ; preds = %1443, %1384
  %1450 = phi i8 [ %1385, %1384 ], [ %1445, %1443 ]
  %1451 = getelementptr inbounds %struct.mem_ref_group, ptr %1386, i64 0, i32 3
  %1452 = load ptr, ptr %1451, align 8, !tbaa !110
  %1453 = icmp eq ptr %1452, null
  br i1 %1453, label %1454, label %1384, !llvm.loop !167

1454:                                             ; preds = %1449, %1382
  %1455 = phi i8 [ 0, %1382 ], [ %1450, %1449 ]
  %1456 = icmp ne i8 %1455, 0
  %1457 = load ptr, ptr @x86_mfence, align 8
  %1458 = icmp ne ptr %1457, null
  %1459 = select i1 %1456, i1 %1458, i1 false
  br i1 %1459, label %1460, label %1532

1460:                                             ; preds = %1454
  %1461 = call ptr @get_loop_exit_edges(ptr noundef nonnull %199) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #14
  %1462 = icmp eq ptr %1461, null
  br label %1463

1463:                                             ; preds = %1526, %1460
  %1464 = phi i32 [ 0, %1460 ], [ %1528, %1526 ]
  br i1 %1462, label %1472, label %1465

1465:                                             ; preds = %1463
  %1466 = load i32, ptr %1461, align 8, !tbaa !155
  %1467 = icmp ugt i32 %1466, %1464
  br i1 %1467, label %1468, label %1472

1468:                                             ; preds = %1465
  %1469 = zext i32 %1464 to i64
  %1470 = getelementptr inbounds %struct.VEC_edge_base, ptr %1461, i64 0, i32 2, i64 %1469
  %1471 = load ptr, ptr %1470, align 8, !tbaa !35
  br label %1472

1472:                                             ; preds = %1468, %1465, %1463
  %1473 = phi ptr [ %1471, %1468 ], [ null, %1465 ], [ null, %1463 ]
  %1474 = phi i1 [ false, %1468 ], [ true, %1465 ], [ true, %1463 ]
  br i1 %1474, label %1529, label %1475

1475:                                             ; preds = %1472
  %1476 = load ptr, ptr @x86_mfence, align 8, !tbaa !35
  %1477 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %1476, i32 noundef 0) #14
  %1478 = getelementptr inbounds %struct.edge_def, ptr %1473, i64 0, i32 1
  %1479 = load ptr, ptr %1478, align 8, !tbaa !159
  %1480 = load ptr, ptr %1479, align 8, !tbaa !168
  %1481 = icmp eq ptr %1480, null
  br i1 %1481, label %1486, label %1482

1482:                                             ; preds = %1475
  %1483 = load i32, ptr %1480, align 8, !tbaa !155
  %1484 = icmp eq i32 %1483, 1
  %1485 = zext i1 %1484 to i8
  br label %1486

1486:                                             ; preds = %1482, %1475
  %1487 = phi i8 [ %1485, %1482 ], [ 0, %1475 ]
  %1488 = icmp eq i8 %1487, 0
  br i1 %1488, label %1489, label %1496

1489:                                             ; preds = %1486
  %1490 = getelementptr inbounds %struct.edge_def, ptr %1473, i64 0, i32 7
  %1491 = load i32, ptr %1490, align 8, !tbaa !157
  %1492 = and i32 %1491, 2
  %1493 = icmp eq i32 %1492, 0
  br i1 %1493, label %1494, label %1496

1494:                                             ; preds = %1489
  %1495 = call ptr @split_loop_exit_edge(ptr noundef %1473) #14
  br label %1496

1496:                                             ; preds = %1494, %1489, %1486
  %1497 = load ptr, ptr %1478, align 8, !tbaa !159
  %1498 = getelementptr inbounds %struct.basic_block_def, ptr %1497, i64 0, i32 13
  %1499 = load i32, ptr %1498, align 8, !tbaa !80, !noalias !169
  %1500 = and i32 %1499, 512
  %1501 = icmp eq i32 %1500, 0
  br i1 %1501, label %1502, label %1508

1502:                                             ; preds = %1496
  %1503 = getelementptr inbounds %struct.basic_block_def, ptr %1497, i64 0, i32 7
  %1504 = load ptr, ptr %1503, align 8, !tbaa !46, !noalias !169
  %1505 = icmp eq ptr %1504, null
  br i1 %1505, label %1508, label %1506

1506:                                             ; preds = %1502
  %1507 = load ptr, ptr %1504, align 8, !tbaa !84, !noalias !169
  br label %1508

1508:                                             ; preds = %1506, %1502, %1496
  %1509 = phi ptr [ %1507, %1506 ], [ null, %1502 ], [ null, %1496 ]
  %1510 = icmp eq ptr %1509, null
  br i1 %1510, label %1513, label %1511

1511:                                             ; preds = %1508
  %1512 = load ptr, ptr %1509, align 8, !tbaa !86, !noalias !169
  br label %1513

1513:                                             ; preds = %1511, %1508
  %1514 = phi ptr [ %1512, %1511 ], [ null, %1508 ]
  %1515 = icmp eq ptr %1514, null
  br i1 %1515, label %1526, label %1516

1516:                                             ; preds = %1513, %1522
  %1517 = phi ptr [ %1524, %1522 ], [ %1514, %1513 ]
  %1518 = load ptr, ptr %1517, align 8, !tbaa !88, !noalias !174
  %1519 = load i32, ptr %1518, align 8, !noalias !174
  %1520 = and i32 %1519, 255
  %1521 = icmp eq i32 %1520, 4
  br i1 %1521, label %1522, label %1526

1522:                                             ; preds = %1516
  %1523 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %1517, i64 0, i32 2
  %1524 = load ptr, ptr %1523, align 8, !tbaa !92, !noalias !174
  %1525 = icmp eq ptr %1524, null
  br i1 %1525, label %1526, label %1516, !llvm.loop !175

1526:                                             ; preds = %1522, %1516, %1513
  %1527 = phi ptr [ %1514, %1513 ], [ %1524, %1522 ], [ %1517, %1516 ]
  store ptr %1527, ptr %3, align 8, !tbaa.struct !176
  store ptr %1509, ptr %195, align 8, !tbaa.struct !177
  store ptr %1497, ptr %196, align 8, !tbaa.struct !178
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %1477, i32 noundef 0) #14
  call void @mark_virtual_ops_for_renaming(ptr noundef %1477) #14
  %1528 = add i32 %1464, 1
  br label %1463, !llvm.loop !179

1529:                                             ; preds = %1472
  br i1 %1462, label %1531, label %1530

1530:                                             ; preds = %1529
  call void @free(ptr noundef %1461)
  br label %1531

1531:                                             ; preds = %1530, %1529
  call void @update_ssa(i32 noundef 16384) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #14
  br label %1532

1532:                                             ; preds = %1531, %1454, %1379
  %1533 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %1534 = getelementptr inbounds %struct.param_info, ptr %1533, i64 98, i32 1
  %1535 = load i32, ptr %1534, align 8, !tbaa !54
  %1536 = lshr i32 %1297, 1
  %1537 = add i32 %1536, %1234
  %1538 = udiv i32 %1537, %1297
  %1539 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1540 = icmp eq ptr %1539, null
  br i1 %1540, label %1547, label %1541

1541:                                             ; preds = %1532
  %1542 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %1543 = and i32 %1542, 8
  %1544 = icmp eq i32 %1543, 0
  br i1 %1544, label %1547, label %1545

1545:                                             ; preds = %1541
  %1546 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1539, ptr noundef nonnull @.str.37, i32 noundef %1538)
  br label %1547

1547:                                             ; preds = %1545, %1541, %1532
  %1548 = icmp eq ptr %350, null
  br i1 %1548, label %1603, label %1549

1549:                                             ; preds = %1547
  %1550 = zext i32 %1297 to i64
  %1551 = add nsw i64 %1550, -1
  br label %1552

1552:                                             ; preds = %1549, %1597
  %1553 = phi i8 [ 0, %1549 ], [ %1599, %1597 ]
  %1554 = phi ptr [ %350, %1549 ], [ %1601, %1597 ]
  %1555 = phi i32 [ %1535, %1549 ], [ %1598, %1597 ]
  %1556 = getelementptr inbounds %struct.mem_ref_group, ptr %1554, i64 0, i32 2
  %1557 = load ptr, ptr %1556, align 8, !tbaa !35
  %1558 = icmp eq ptr %1557, null
  br i1 %1558, label %1597, label %1559

1559:                                             ; preds = %1552, %1591
  %1560 = phi ptr [ %1595, %1591 ], [ %1557, %1552 ]
  %1561 = phi i8 [ %1593, %1591 ], [ %1553, %1552 ]
  %1562 = phi i32 [ %1592, %1591 ], [ %1555, %1552 ]
  %1563 = getelementptr inbounds %struct.mem_ref, ptr %1560, i64 0, i32 5
  %1564 = load i64, ptr %1563, align 8, !tbaa !100
  %1565 = icmp eq i64 %1564, -1
  br i1 %1565, label %1566, label %1572

1566:                                             ; preds = %1559
  %1567 = getelementptr inbounds %struct.mem_ref, ptr %1560, i64 0, i32 8
  %1568 = load i8, ptr %1567, align 8
  %1569 = lshr i8 %1568, 3
  %1570 = and i8 %1569, 1
  %1571 = xor i8 %1570, 1
  br label %1572

1572:                                             ; preds = %1566, %1559
  %1573 = phi i8 [ 0, %1559 ], [ %1571, %1566 ]
  %1574 = icmp eq i8 %1573, 0
  br i1 %1574, label %1591, label %1575

1575:                                             ; preds = %1572
  %1576 = getelementptr inbounds %struct.mem_ref, ptr %1560, i64 0, i32 4
  %1577 = load i64, ptr %1576, align 8, !tbaa !101
  %1578 = add i64 %1551, %1577
  %1579 = udiv i64 %1578, %1577
  %1580 = trunc i64 %1579 to i32
  %1581 = mul i32 %1538, %1580
  %1582 = shl i32 %1562, 1
  %1583 = icmp ult i32 %1582, %1581
  br i1 %1583, label %1591, label %1584

1584:                                             ; preds = %1575
  %1585 = getelementptr inbounds %struct.mem_ref, ptr %1560, i64 0, i32 8
  %1586 = load i8, ptr %1585, align 8
  %1587 = or i8 %1586, 4
  store i8 %1587, ptr %1585, align 8
  %1588 = icmp ugt i32 %1562, %1581
  br i1 %1588, label %1589, label %1603

1589:                                             ; preds = %1584
  %1590 = sub i32 %1562, %1581
  br label %1591

1591:                                             ; preds = %1589, %1575, %1572
  %1592 = phi i32 [ %1562, %1575 ], [ %1590, %1589 ], [ %1562, %1572 ]
  %1593 = phi i8 [ %1561, %1575 ], [ 1, %1589 ], [ %1561, %1572 ]
  %1594 = getelementptr inbounds %struct.mem_ref, ptr %1560, i64 0, i32 7
  %1595 = load ptr, ptr %1594, align 8, !tbaa !35
  %1596 = icmp eq ptr %1595, null
  br i1 %1596, label %1597, label %1559, !llvm.loop !180

1597:                                             ; preds = %1591, %1552
  %1598 = phi i32 [ %1555, %1552 ], [ %1592, %1591 ]
  %1599 = phi i8 [ %1553, %1552 ], [ %1593, %1591 ]
  %1600 = getelementptr inbounds %struct.mem_ref_group, ptr %1554, i64 0, i32 3
  %1601 = load ptr, ptr %1600, align 8, !tbaa !110
  %1602 = icmp eq ptr %1601, null
  br i1 %1602, label %1603, label %1552, !llvm.loop !181

1603:                                             ; preds = %1597, %1584, %1547
  %1604 = phi i8 [ 0, %1547 ], [ 1, %1584 ], [ %1599, %1597 ]
  %1605 = icmp eq i8 %1604, 0
  br i1 %1605, label %1698, label %1606

1606:                                             ; preds = %1603
  %1607 = icmp eq i32 %1297, 1
  br i1 %1607, label %1610, label %1608

1608:                                             ; preds = %1606
  %1609 = call ptr @single_dom_exit(ptr noundef nonnull %199) #14
  call void @tree_unroll_loop(ptr noundef nonnull %199, i32 noundef %1297, ptr noundef %1609, ptr noundef nonnull %7) #14
  br label %1610

1610:                                             ; preds = %1608, %1606
  %1611 = phi i8 [ 1, %1608 ], [ 0, %1606 ]
  %1612 = icmp eq ptr %350, null
  br i1 %1612, label %1698, label %1613

1613:                                             ; preds = %1610
  %1614 = zext i32 %1297 to i64
  %1615 = add nsw i64 %1614, -1
  %1616 = zext i32 %1234 to i64
  br label %1617

1617:                                             ; preds = %1613, %1694
  %1618 = phi ptr [ %350, %1613 ], [ %1696, %1694 ]
  %1619 = getelementptr inbounds %struct.mem_ref_group, ptr %1618, i64 0, i32 2
  %1620 = load ptr, ptr %1619, align 8, !tbaa !35
  %1621 = icmp eq ptr %1620, null
  br i1 %1621, label %1694, label %1622

1622:                                             ; preds = %1617, %1690
  %1623 = phi ptr [ %1692, %1690 ], [ %1620, %1617 ]
  %1624 = getelementptr inbounds %struct.mem_ref, ptr %1623, i64 0, i32 8
  %1625 = load i8, ptr %1624, align 8
  %1626 = and i8 %1625, 4
  %1627 = icmp eq i8 %1626, 0
  br i1 %1627, label %1690, label %1628

1628:                                             ; preds = %1622
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #14
  %1629 = getelementptr inbounds %struct.mem_ref, ptr %1623, i64 0, i32 6
  %1630 = load i32, ptr %1629, align 8, !tbaa !119
  %1631 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %1632 = getelementptr inbounds %struct.param_info, ptr %1631, i64 101, i32 1
  %1633 = load i32, ptr %1632, align 8, !tbaa !54
  %1634 = shl nsw i32 %1633, 10
  %1635 = icmp ult i32 %1630, %1634
  %1636 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1637 = icmp eq ptr %1636, null
  br i1 %1637, label %1645, label %1638

1638:                                             ; preds = %1628
  %1639 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %1640 = and i32 %1639, 8
  %1641 = icmp eq i32 %1640, 0
  br i1 %1641, label %1645, label %1642

1642:                                             ; preds = %1638
  %1643 = select i1 %1635, ptr @.str.40, ptr @.str.39
  %1644 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1636, ptr noundef nonnull @.str.38, ptr noundef nonnull %1643, ptr noundef nonnull %1623)
  br label %1645

1645:                                             ; preds = %1642, %1638, %1628
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #14
  %1646 = load ptr, ptr %1623, align 8, !tbaa !118
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %1646) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !176
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #14
  %1647 = getelementptr inbounds %struct.mem_ref, ptr %1623, i64 0, i32 4
  %1648 = load i64, ptr %1647, align 8, !tbaa !101
  %1649 = add i64 %1615, %1648
  %1650 = udiv i64 %1649, %1648
  %1651 = getelementptr inbounds %struct.mem_ref, ptr %1623, i64 0, i32 1
  %1652 = load ptr, ptr %1651, align 8, !tbaa !104
  %1653 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !35
  %1654 = call ptr @build_fold_addr_expr_with_type_loc(i32 noundef 0, ptr noundef %1652, ptr noundef %1653) #14
  %1655 = call ptr @unshare_expr(ptr noundef %1654) #14
  %1656 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %1, ptr noundef %1655, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #14
  %1657 = load i8, ptr %1624, align 8
  %1658 = and i8 %1657, 1
  %1659 = icmp eq i8 %1658, 0
  %1660 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16
  %1661 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8
  %1662 = select i1 %1659, ptr %1661, ptr %1660
  %1663 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !35
  %1664 = select i1 %1635, i64 3, i64 0
  %1665 = call ptr @build_int_cst(ptr noundef %1663, i64 noundef %1664) #14
  %1666 = and i64 %1650, 4294967295
  %1667 = icmp eq i64 %1666, 0
  br i1 %1667, label %1689, label %1668

1668:                                             ; preds = %1645
  %1669 = getelementptr inbounds %struct.mem_ref, ptr %1623, i64 0, i32 3
  %1670 = and i64 %1650, 4294967295
  br label %1671

1671:                                             ; preds = %1668, %1671
  %1672 = phi i64 [ 0, %1668 ], [ %1687, %1671 ]
  %1673 = load i64, ptr %1647, align 8, !tbaa !101
  %1674 = mul i64 %1673, %1672
  %1675 = add i64 %1674, %1616
  %1676 = load ptr, ptr %1669, align 8, !tbaa !97
  %1677 = getelementptr inbounds %struct.mem_ref_group, ptr %1676, i64 0, i32 1
  %1678 = load i64, ptr %1677, align 8, !tbaa !99
  %1679 = mul i64 %1675, %1678
  %1680 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !35
  %1681 = call ptr @size_int_kind(i64 noundef %1679, i32 noundef 0) #14
  %1682 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef %1680, ptr noundef %1656, ptr noundef %1681) #14
  %1683 = call ptr @unshare_expr(ptr noundef %1682) #14
  %1684 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %1, ptr noundef %1683, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #14
  %1685 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 501), align 8, !tbaa !35
  %1686 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %1685, i32 noundef 3, ptr noundef %1684, ptr noundef %1662, ptr noundef %1665) #14
  call void @gsi_insert_before(ptr noundef nonnull %1, ptr noundef %1686, i32 noundef 1) #14
  %1687 = add nuw nsw i64 %1672, 1
  %1688 = icmp ult i64 %1687, %1670
  br i1 %1688, label %1671, label %1689, !llvm.loop !182

1689:                                             ; preds = %1671, %1645
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #14
  br label %1690

1690:                                             ; preds = %1689, %1622
  %1691 = getelementptr inbounds %struct.mem_ref, ptr %1623, i64 0, i32 7
  %1692 = load ptr, ptr %1691, align 8, !tbaa !35
  %1693 = icmp eq ptr %1692, null
  br i1 %1693, label %1694, label %1622, !llvm.loop !183

1694:                                             ; preds = %1690, %1617
  %1695 = getelementptr inbounds %struct.mem_ref_group, ptr %1618, i64 0, i32 3
  %1696 = load ptr, ptr %1695, align 8, !tbaa !110
  %1697 = icmp eq ptr %1696, null
  br i1 %1697, label %1698, label %1617, !llvm.loop !184

1698:                                             ; preds = %1694, %1610, %1603, %1334, %703
  %1699 = phi i8 [ 0, %703 ], [ 0, %1603 ], [ 0, %1334 ], [ %1611, %1610 ], [ %1611, %1694 ]
  %1700 = icmp eq ptr %350, null
  br i1 %1700, label %1715, label %1701

1701:                                             ; preds = %1698, %1713
  %1702 = phi ptr [ %1704, %1713 ], [ %350, %1698 ]
  %1703 = getelementptr inbounds %struct.mem_ref_group, ptr %1702, i64 0, i32 3
  %1704 = load ptr, ptr %1703, align 8, !tbaa !110
  %1705 = getelementptr inbounds %struct.mem_ref_group, ptr %1702, i64 0, i32 2
  %1706 = load ptr, ptr %1705, align 8, !tbaa !95
  %1707 = icmp eq ptr %1706, null
  br i1 %1707, label %1713, label %1708

1708:                                             ; preds = %1701, %1708
  %1709 = phi ptr [ %1711, %1708 ], [ %1706, %1701 ]
  %1710 = getelementptr inbounds %struct.mem_ref, ptr %1709, i64 0, i32 7
  %1711 = load ptr, ptr %1710, align 8, !tbaa !107
  call void @free(ptr noundef %1709)
  %1712 = icmp eq ptr %1711, null
  br i1 %1712, label %1713, label %1708, !llvm.loop !185

1713:                                             ; preds = %1708, %1701
  call void @free(ptr noundef %1702)
  %1714 = icmp eq ptr %1704, null
  br i1 %1714, label %1715, label %1701, !llvm.loop !186

1715:                                             ; preds = %1713, %1698, %214, %217, %221
  %1716 = phi i8 [ 0, %221 ], [ 0, %217 ], [ 0, %214 ], [ %1699, %1698 ], [ %1699, %1713 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %7) #14
  %1717 = or i8 %1716, %198
  %1718 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1719 = icmp eq ptr %1718, null
  br i1 %1719, label %1726, label %1720

1720:                                             ; preds = %1715
  %1721 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %1722 = and i32 %1721, 8
  %1723 = icmp eq i32 %1722, 0
  br i1 %1723, label %1726, label %1724

1724:                                             ; preds = %1720
  %1725 = call i64 @fwrite(ptr nonnull @.str.14, i64 2, i64 1, ptr nonnull %1718)
  br label %1726

1726:                                             ; preds = %1715, %1720, %1724
  %1727 = icmp eq ptr %200, null
  %1728 = load ptr, ptr @cfun, align 8
  %1729 = getelementptr inbounds %struct.function, ptr %1728, i64 0, i32 4
  br label %1730

1730:                                             ; preds = %1742, %1726
  %1731 = phi i32 [ %201, %1726 ], [ %1743, %1742 ]
  br i1 %1727, label %1739, label %1732

1732:                                             ; preds = %1730
  %1733 = load i32, ptr %200, align 4, !tbaa !70
  %1734 = icmp ugt i32 %1733, %1731
  br i1 %1734, label %1735, label %1739

1735:                                             ; preds = %1732
  %1736 = zext i32 %1731 to i64
  %1737 = getelementptr inbounds %struct.VEC_int_base, ptr %200, i64 0, i32 2, i64 %1736
  %1738 = load i32, ptr %1737, align 4, !tbaa !50
  br label %1739

1739:                                             ; preds = %1735, %1732, %1730
  %1740 = phi i32 [ %1738, %1735 ], [ 0, %1732 ], [ 0, %1730 ]
  %1741 = phi i1 [ false, %1735 ], [ true, %1732 ], [ true, %1730 ]
  br i1 %1741, label %1751, label %1742

1742:                                             ; preds = %1739
  %1743 = add i32 %1731, 1
  %1744 = load ptr, ptr %1729, align 8, !tbaa !57
  %1745 = getelementptr inbounds %struct.loops, ptr %1744, i64 0, i32 1
  %1746 = load ptr, ptr %1745, align 8, !tbaa !59
  %1747 = zext i32 %1740 to i64
  %1748 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %1746, i64 0, i32 2, i64 %1747
  %1749 = load ptr, ptr %1748, align 8, !tbaa !35
  %1750 = icmp eq ptr %1749, null
  br i1 %1750, label %1730, label %1753, !llvm.loop !76

1751:                                             ; preds = %1739
  br i1 %1727, label %1753, label %1752

1752:                                             ; preds = %1751
  call void @free(ptr noundef %200)
  br label %1753

1753:                                             ; preds = %1742, %1751, %1752
  %1754 = phi i32 [ %1731, %1752 ], [ %1731, %1751 ], [ %1743, %1742 ]
  %1755 = phi ptr [ null, %1752 ], [ null, %1751 ], [ %200, %1742 ]
  %1756 = phi ptr [ null, %1752 ], [ null, %1751 ], [ %1749, %1742 ]
  %1757 = icmp eq ptr %1756, null
  br i1 %1757, label %1758, label %197, !llvm.loop !187

1758:                                             ; preds = %1753
  %1759 = icmp eq i8 %1717, 0
  br i1 %1759, label %1761, label %1760

1760:                                             ; preds = %1758
  call void @scev_reset() #14
  br label %1761

1761:                                             ; preds = %189, %1760, %1758
  %1762 = phi i32 [ 32, %1760 ], [ 0, %1758 ], [ 0, %189 ]
  call void @free_original_copy_tables() #14
  br label %1763

1763:                                             ; preds = %10, %14, %1761
  %1764 = phi i32 [ %1762, %1761 ], [ 0, %14 ], [ 0, %10 ]
  ret i32 %1764
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @initialize_original_copy_tables() local_unnamed_addr #3

declare ptr @build_function_type(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @add_builtin_function(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @scev_reset() local_unnamed_addr #3

declare void @free_original_copy_tables() local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_loop_nest_for_size_p(ptr noundef) local_unnamed_addr #3

declare i32 @tree_num_loop_insns(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @estimated_loop_iterations_int(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @tree_unroll_loop(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @single_dom_exit(ptr noundef) local_unnamed_addr #3

declare ptr @get_loop_body_in_dom_order(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @gather_memory_references_ref(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4) unnamed_addr #9 !prof !34 {
  %6 = alloca %struct.ar_data, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #14
  %10 = tail call ptr @get_base_address(ptr noundef %2) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %180, label %12

12:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #14
  store i64 0, ptr %8, align 8, !tbaa !90
  store i64 0, ptr %9, align 8, !tbaa !90
  %13 = load i64, ptr %2, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 41
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = getelementptr inbounds %struct.tree_decl_common, ptr %18, i64 0, i32 2
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 67108864
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  br label %26

26:                                               ; preds = %23, %16, %12
  %27 = phi ptr [ %25, %23 ], [ %2, %16 ], [ %2, %12 ]
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 41
  br i1 %30, label %31, label %51

31:                                               ; preds = %26, %43
  %32 = phi ptr [ %47, %43 ], [ %27, %26 ]
  %33 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 0, i32 3
  %34 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !46
  %36 = getelementptr inbounds %struct.tree_field_decl, ptr %35, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = getelementptr inbounds %struct.tree_int_cst, ptr %37, i64 0, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !46
  %40 = and i64 %39, 7
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 453, ptr noundef nonnull @.str.12) #14
  br label %43

43:                                               ; preds = %42, %31
  %44 = sdiv i64 %39, 8
  %45 = load i64, ptr %9, align 8, !tbaa !90
  %46 = add nsw i64 %45, %44
  store i64 %46, ptr %9, align 8, !tbaa !90
  %47 = load ptr, ptr %33, align 8, !tbaa !46
  %48 = load i64, ptr %47, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 41
  br i1 %50, label %31, label %51, !llvm.loop !188

51:                                               ; preds = %43, %26
  %52 = phi ptr [ %27, %26 ], [ %47, %43 ]
  %53 = tail call ptr @unshare_expr(ptr noundef nonnull %52) #14
  store ptr %53, ptr %7, align 8, !tbaa !35
  store ptr %0, ptr %6, align 8, !tbaa !189
  %54 = getelementptr inbounds %struct.ar_data, ptr %6, i64 0, i32 1
  store ptr %4, ptr %54, align 8, !tbaa !191
  %55 = getelementptr inbounds %struct.ar_data, ptr %6, i64 0, i32 2
  store ptr %8, ptr %55, align 8, !tbaa !192
  %56 = getelementptr inbounds %struct.ar_data, ptr %6, i64 0, i32 3
  store ptr %9, ptr %56, align 8, !tbaa !193
  %57 = call zeroext i8 @for_each_index(ptr noundef nonnull %7, ptr noundef nonnull @idx_analyze_ref, ptr noundef nonnull %6) #14
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #14
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %180, label %59

59:                                               ; preds = %51
  %60 = load ptr, ptr %7, align 8, !tbaa !35
  %61 = load i64, ptr %8, align 8, !tbaa !90
  %62 = load ptr, ptr %1, align 8, !tbaa !35
  %63 = icmp eq ptr %62, null
  br i1 %63, label %85, label %68

64:                                               ; preds = %80
  %65 = getelementptr inbounds %struct.mem_ref_group, ptr %81, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !35
  %67 = icmp eq ptr %66, null
  br i1 %67, label %85, label %68, !llvm.loop !194

68:                                               ; preds = %59, %64
  %69 = phi ptr [ %66, %64 ], [ %62, %59 ]
  %70 = phi ptr [ %65, %64 ], [ %1, %59 ]
  %71 = getelementptr inbounds %struct.mem_ref_group, ptr %69, i64 0, i32 1
  %72 = load i64, ptr %71, align 8, !tbaa !99
  %73 = icmp eq i64 %72, %61
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load ptr, ptr %69, align 8, !tbaa !195
  %76 = call i32 @operand_equal_p(ptr noundef %75, ptr noundef %60, i32 noundef 0) #14
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %70, align 8, !tbaa !35
  br label %92

80:                                               ; preds = %74, %68
  %81 = load ptr, ptr %70, align 8, !tbaa !35
  %82 = getelementptr inbounds %struct.mem_ref_group, ptr %81, i64 0, i32 1
  %83 = load i64, ptr %82, align 8, !tbaa !99
  %84 = icmp slt i64 %83, %61
  br i1 %84, label %85, label %64

85:                                               ; preds = %64, %80, %59
  %86 = phi ptr [ %1, %59 ], [ %65, %64 ], [ %70, %80 ]
  %87 = call ptr @xmalloc(i64 noundef 32) #14
  store ptr %60, ptr %87, align 8, !tbaa !195
  %88 = getelementptr inbounds %struct.mem_ref_group, ptr %87, i64 0, i32 1
  store i64 %61, ptr %88, align 8, !tbaa !99
  %89 = getelementptr inbounds %struct.mem_ref_group, ptr %87, i64 0, i32 2
  store ptr null, ptr %89, align 8, !tbaa !95
  %90 = load ptr, ptr %86, align 8, !tbaa !35
  %91 = getelementptr inbounds %struct.mem_ref_group, ptr %87, i64 0, i32 3
  store ptr %90, ptr %91, align 8, !tbaa !110
  store ptr %87, ptr %86, align 8, !tbaa !35
  br label %92

92:                                               ; preds = %78, %85
  %93 = phi ptr [ %79, %78 ], [ %87, %85 ]
  %94 = load i64, ptr %9, align 8, !tbaa !90
  %95 = getelementptr inbounds %struct.mem_ref_group, ptr %93, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !35
  %97 = icmp eq ptr %96, null
  br i1 %97, label %117, label %98

98:                                               ; preds = %92
  %99 = icmp eq i8 %3, 0
  br label %100

100:                                              ; preds = %98, %111
  %101 = phi ptr [ %96, %98 ], [ %113, %111 ]
  br i1 %99, label %102, label %107

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.mem_ref, ptr %101, i64 0, i32 8
  %104 = load i8, ptr %103, align 8
  %105 = and i8 %104, 1
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102, %100
  %108 = getelementptr inbounds %struct.mem_ref, ptr %101, i64 0, i32 2
  %109 = load i64, ptr %108, align 8, !tbaa !102
  %110 = icmp eq i64 %109, %94
  br i1 %110, label %180, label %111

111:                                              ; preds = %102, %107
  %112 = getelementptr inbounds %struct.mem_ref, ptr %101, i64 0, i32 7
  %113 = load ptr, ptr %112, align 8, !tbaa !35
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %100, !llvm.loop !196

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.mem_ref, ptr %101, i64 0, i32 7
  br label %117

117:                                              ; preds = %115, %92
  %118 = phi ptr [ %116, %115 ], [ %95, %92 ]
  %119 = call ptr @xmalloc(i64 noundef 72) #14
  store ptr %119, ptr %118, align 8, !tbaa !35
  store ptr %4, ptr %119, align 8, !tbaa !118
  %120 = load ptr, ptr %118, align 8, !tbaa !35
  %121 = getelementptr inbounds %struct.mem_ref, ptr %120, i64 0, i32 1
  store ptr %27, ptr %121, align 8, !tbaa !104
  %122 = load ptr, ptr %118, align 8, !tbaa !35
  %123 = getelementptr inbounds %struct.mem_ref, ptr %122, i64 0, i32 2
  store i64 %94, ptr %123, align 8, !tbaa !102
  %124 = getelementptr inbounds %struct.mem_ref, ptr %122, i64 0, i32 8
  %125 = load i8, ptr %124, align 8
  %126 = and i8 %3, 1
  %127 = and i8 %125, -2
  %128 = or disjoint i8 %127, %126
  store i8 %128, ptr %124, align 8
  %129 = load ptr, ptr %118, align 8, !tbaa !35
  %130 = getelementptr inbounds %struct.mem_ref, ptr %129, i64 0, i32 5
  store i64 -1, ptr %130, align 8, !tbaa !100
  %131 = getelementptr inbounds %struct.mem_ref, ptr %129, i64 0, i32 4
  store i64 1, ptr %131, align 8, !tbaa !101
  %132 = getelementptr inbounds %struct.mem_ref, ptr %129, i64 0, i32 6
  store i32 0, ptr %132, align 8, !tbaa !119
  %133 = getelementptr inbounds %struct.mem_ref, ptr %129, i64 0, i32 8
  %134 = load i8, ptr %133, align 8
  %135 = and i8 %134, -5
  store i8 %135, ptr %133, align 8
  %136 = load ptr, ptr %118, align 8, !tbaa !35
  %137 = getelementptr inbounds %struct.mem_ref, ptr %136, i64 0, i32 3
  store ptr %93, ptr %137, align 8, !tbaa !97
  %138 = load ptr, ptr %118, align 8, !tbaa !35
  %139 = getelementptr inbounds %struct.mem_ref, ptr %138, i64 0, i32 7
  store ptr null, ptr %139, align 8, !tbaa !107
  %140 = load ptr, ptr %118, align 8, !tbaa !35
  %141 = getelementptr inbounds %struct.mem_ref, ptr %140, i64 0, i32 8
  %142 = load i8, ptr %141, align 8
  %143 = and i8 %142, -3
  store i8 %143, ptr %141, align 8
  %144 = load ptr, ptr %118, align 8, !tbaa !35
  %145 = getelementptr inbounds %struct.mem_ref, ptr %144, i64 0, i32 8
  %146 = load i8, ptr %145, align 8
  %147 = and i8 %146, -9
  store i8 %147, ptr %145, align 8
  %148 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %149 = icmp eq ptr %148, null
  br i1 %149, label %180, label %150

150:                                              ; preds = %117
  %151 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %152 = and i32 %151, 8
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %180, label %154

154:                                              ; preds = %150
  %155 = load ptr, ptr %118, align 8, !tbaa !35
  %156 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %148, ptr noundef nonnull @.str.18, ptr noundef %155)
  %157 = getelementptr inbounds %struct.mem_ref, ptr %155, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !97
  %159 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %148, ptr noundef nonnull @.str.19, ptr noundef %158)
  %160 = load ptr, ptr %157, align 8, !tbaa !97
  %161 = load ptr, ptr %160, align 8, !tbaa !195
  call void @print_generic_expr(ptr noundef nonnull %148, ptr noundef %161, i32 noundef 2) #14
  %162 = call i64 @fwrite(ptr nonnull @.str.20, i64 7, i64 1, ptr nonnull %148)
  %163 = load ptr, ptr %157, align 8, !tbaa !97
  %164 = getelementptr inbounds %struct.mem_ref_group, ptr %163, i64 0, i32 1
  %165 = load i64, ptr %164, align 8, !tbaa !99
  %166 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %148, ptr noundef nonnull @.str.21, i64 noundef %165)
  %167 = call i64 @fwrite(ptr nonnull @.str.22, i64 2, i64 1, ptr nonnull %148)
  %168 = call i64 @fwrite(ptr nonnull @.str.23, i64 8, i64 1, ptr nonnull %148)
  %169 = getelementptr inbounds %struct.mem_ref, ptr %155, i64 0, i32 2
  %170 = load i64, ptr %169, align 8, !tbaa !102
  %171 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %148, ptr noundef nonnull @.str.21, i64 noundef %170)
  %172 = call i32 @fputc(i32 10, ptr nonnull %148)
  %173 = getelementptr inbounds %struct.mem_ref, ptr %155, i64 0, i32 8
  %174 = load i8, ptr %173, align 8
  %175 = and i8 %174, 1
  %176 = icmp eq i8 %175, 0
  %177 = select i1 %176, ptr @.str.26, ptr @.str.25
  %178 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %148, ptr noundef nonnull @.str.24, ptr noundef nonnull %177)
  %179 = call i32 @fputc(i32 10, ptr nonnull %148)
  br label %180

180:                                              ; preds = %107, %154, %150, %117, %51, %5
  %181 = phi i8 [ 0, %5 ], [ 0, %51 ], [ 1, %117 ], [ 1, %150 ], [ 1, %154 ], [ 1, %107 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #14
  ret i8 %181
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

declare ptr @get_base_address(ptr noundef) local_unnamed_addr #3

declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @for_each_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef zeroext i8 @idx_analyze_ref(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #9 !prof !34 {
  %4 = alloca %struct.affine_iv, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65534
  %7 = icmp eq i64 %6, 48
  br i1 %7, label %80, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %2, align 8, !tbaa !189
  %10 = getelementptr inbounds %struct.ar_data, ptr %2, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !191
  %12 = getelementptr inbounds %struct.gimple_statement_base, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !78
  br label %18

18:                                               ; preds = %8, %15
  %19 = phi ptr [ %17, %15 ], [ null, %8 ]
  %20 = load ptr, ptr %1, align 8, !tbaa !35
  %21 = call zeroext i8 @simple_iv(ptr noundef %9, ptr noundef %19, ptr noundef %20, ptr noundef nonnull %4, i8 noundef zeroext 0) #14
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %80, label %23

23:                                               ; preds = %18
  %24 = load ptr, ptr %4, align 8, !tbaa !197
  %25 = getelementptr inbounds %struct.affine_iv, ptr %4, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !199
  %27 = call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %26) #14
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %80, label %29

29:                                               ; preds = %23
  %30 = call i64 @int_cst_value(ptr noundef %26) #14
  %31 = load i64, ptr %24, align 8
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 66
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.tree_exp, ptr %24, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %36) #14
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.tree_exp, ptr %24, i64 0, i32 3
  %41 = load ptr, ptr %35, align 8, !tbaa !46
  %42 = call i64 @int_cst_value(ptr noundef %41) #14
  %43 = load ptr, ptr %40, align 8, !tbaa !46
  br label %44

44:                                               ; preds = %39, %34, %29
  %45 = phi ptr [ %43, %39 ], [ %24, %34 ], [ %24, %29 ]
  %46 = phi i64 [ %42, %39 ], [ 0, %34 ], [ 0, %29 ]
  %47 = call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %45) #14
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = call i64 @int_cst_value(ptr noundef %45) #14
  %51 = add nsw i64 %50, %46
  %52 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  %54 = call ptr @build_int_cst(ptr noundef %53, i64 noundef 0) #14
  br label %55

55:                                               ; preds = %49, %44
  %56 = phi ptr [ %54, %49 ], [ %45, %44 ]
  %57 = phi i64 [ %51, %49 ], [ %46, %44 ]
  %58 = load i64, ptr %0, align 8
  %59 = and i64 %58, 65535
  %60 = icmp eq i64 %59, 45
  br i1 %60, label %61, label %69

61:                                               ; preds = %55
  %62 = call ptr @array_ref_element_size(ptr noundef nonnull %0) #14
  %63 = call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %62) #14
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %80, label %65

65:                                               ; preds = %61
  %66 = call i64 @int_cst_value(ptr noundef %62) #14
  %67 = mul nsw i64 %66, %30
  %68 = mul nsw i64 %66, %57
  br label %69

69:                                               ; preds = %65, %55
  %70 = phi i64 [ %67, %65 ], [ %30, %55 ]
  %71 = phi i64 [ %68, %65 ], [ %57, %55 ]
  %72 = getelementptr inbounds %struct.ar_data, ptr %2, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !192
  %74 = load i64, ptr %73, align 8, !tbaa !90
  %75 = add nsw i64 %74, %70
  store i64 %75, ptr %73, align 8, !tbaa !90
  %76 = getelementptr inbounds %struct.ar_data, ptr %2, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !193
  %78 = load i64, ptr %77, align 8, !tbaa !90
  %79 = add nsw i64 %78, %71
  store i64 %79, ptr %77, align 8, !tbaa !90
  store ptr %56, ptr %1, align 8, !tbaa !35
  br label %80

80:                                               ; preds = %3, %61, %23, %18, %69
  %81 = phi i8 [ 1, %69 ], [ 0, %3 ], [ 0, %18 ], [ 0, %23 ], [ 0, %61 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  ret i8 %81
}

declare zeroext i8 @simple_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare zeroext i8 @cst_and_fits_in_hwi(ptr noundef) local_unnamed_addr #3

declare i64 @int_cst_value(ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @array_ref_element_size(ptr noundef) local_unnamed_addr #3

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @find_loop_nest(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @expected_loop_iterations(ptr noundef) local_unnamed_addr #3

declare ptr @create_data_ref(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @compute_all_dependences(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @free_dependence_relations(ptr noundef) local_unnamed_addr #3

declare void @free_data_refs(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @least_common_multiple(i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @can_unroll_loop_p(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_loop_exit_edges(ptr noundef) local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_call(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare ptr @split_loop_exit_edge(ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @mark_virtual_ops_for_renaming(ptr noundef) local_unnamed_addr #3

declare void @update_ssa(i32 noundef) local_unnamed_addr #3

declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare ptr @build_fold_addr_expr_with_type_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

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
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!54 = !{!55, !41, i64 8}
!55 = !{!"param_info", !36, i64 0, !41, i64 8, !37, i64 12, !41, i64 16, !41, i64 20, !36, i64 24}
!56 = !{i32 0, i32 33}
!57 = !{!58, !36, i64 32}
!58 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!59 = !{!60, !36, i64 8}
!60 = !{!"loops", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!61 = !{!62, !41, i64 0}
!62 = !{!"VEC_loop_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!63 = !{!60, !36, i64 24}
!64 = !{!65, !36, i64 48}
!65 = !{!"loop", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !66, i64 24, !41, i64 32, !41, i64 36, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !67, i64 80, !67, i64 96, !37, i64 112, !37, i64 113, !41, i64 116, !36, i64 120, !36, i64 128, !37, i64 136, !36, i64 144}
!66 = !{!"lpt_decision", !41, i64 0, !41, i64 4}
!67 = !{!"", !42, i64 0, !42, i64 8}
!68 = distinct !{!68, !52, !53}
!69 = !{!65, !41, i64 0}
!70 = !{!71, !41, i64 0}
!71 = !{!"VEC_int_base", !41, i64 0, !41, i64 4, !37, i64 8}
!72 = !{!65, !36, i64 56}
!73 = distinct !{!73, !52, !53}
!74 = !{!65, !36, i64 40}
!75 = distinct !{!75, !53}
!76 = distinct !{!76, !52, !53}
!77 = !{!65, !41, i64 36}
!78 = !{!79, !36, i64 24}
!79 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!80 = !{!79, !41, i64 96}
!81 = !{!82}
!82 = distinct !{!82, !83, !"gsi_start_bb: argument 0"}
!83 = distinct !{!83, !"gsi_start_bb"}
!84 = !{!85, !36, i64 0}
!85 = !{!"gimple_bb_info", !36, i64 0, !36, i64 8}
!86 = !{!87, !36, i64 0}
!87 = !{!"gimple_seq_d", !36, i64 0, !36, i64 8, !36, i64 16}
!88 = !{!89, !36, i64 0}
!89 = !{!"gimple_seq_node_d", !36, i64 0, !36, i64 8, !36, i64 16}
!90 = !{!42, !42, i64 0}
!91 = !{i8 0, i8 2}
!92 = !{!89, !36, i64 16}
!93 = distinct !{!93, !52, !53}
!94 = distinct !{!94, !52, !53}
!95 = !{!96, !36, i64 16}
!96 = !{!"mem_ref_group", !36, i64 0, !42, i64 8, !36, i64 16, !36, i64 24}
!97 = !{!98, !36, i64 24}
!98 = !{!"mem_ref", !36, i64 0, !36, i64 8, !42, i64 16, !36, i64 24, !42, i64 32, !42, i64 40, !41, i64 48, !36, i64 56, !41, i64 64, !41, i64 64, !41, i64 64, !41, i64 64}
!99 = !{!96, !42, i64 8}
!100 = !{!98, !42, i64 40}
!101 = !{!98, !42, i64 32}
!102 = !{!98, !42, i64 16}
!103 = distinct !{!103, !52, !53}
!104 = !{!98, !36, i64 8}
!105 = distinct !{!105, !52, !53}
!106 = distinct !{!106, !52, !53}
!107 = !{!98, !36, i64 56}
!108 = distinct !{!108, !52, !53}
!109 = distinct !{!109, !52, !53}
!110 = !{!96, !36, i64 24}
!111 = distinct !{!111, !52, !53}
!112 = distinct !{!112, !52, !53}
!113 = distinct !{!113, !52, !53}
!114 = distinct !{!114, !53}
!115 = distinct !{!115, !52, !53}
!116 = distinct !{!116, !52, !53}
!117 = distinct !{!117, !52, !53}
!118 = !{!98, !36, i64 0}
!119 = !{!98, !41, i64 48}
!120 = !{!121, !36, i64 16}
!121 = !{!"data_reference", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !122, i64 32, !123, i64 72, !124, i64 88, !36, i64 104}
!122 = !{!"innermost_loop_behavior", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!123 = !{!"indices", !36, i64 0, !36, i64 8}
!124 = !{!"dr_alias", !36, i64 0, !36, i64 8}
!125 = !{!126, !41, i64 4}
!126 = !{!"VEC_data_reference_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!127 = !{!126, !41, i64 0}
!128 = distinct !{!128, !52, !53}
!129 = distinct !{!129, !52, !53}
!130 = !{!121, !36, i64 8}
!131 = !{!121, !36, i64 80}
!132 = !{!133, !41, i64 0}
!133 = !{!"VEC_tree_base", !41, i64 0, !41, i64 4, !37, i64 8}
!134 = distinct !{!134, !52, !53}
!135 = distinct !{!135, !52, !53}
!136 = distinct !{!136, !52, !53}
!137 = distinct !{!137, !52, !53}
!138 = !{!139, !41, i64 0}
!139 = !{!"VEC_ddr_p_base", !41, i64 0, !41, i64 4, !37, i64 8}
!140 = !{!141, !36, i64 16}
!141 = !{!"data_dependence_relation", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !41, i64 56, !37, i64 60, !37, i64 61, !37, i64 62}
!142 = !{!141, !36, i64 0}
!143 = !{!141, !36, i64 8}
!144 = !{!141, !36, i64 48}
!145 = !{!146, !41, i64 0}
!146 = !{!"VEC_lambda_vector_base", !41, i64 0, !41, i64 4, !37, i64 8}
!147 = distinct !{!147, !52, !53}
!148 = distinct !{!148, !52, !53}
!149 = distinct !{!149, !52, !53}
!150 = distinct !{!150, !52, !53}
!151 = distinct !{!151, !52, !53}
!152 = distinct !{!152, !52, !53}
!153 = distinct !{!153, !52, !53}
!154 = distinct !{!154, !52, !53}
!155 = !{!156, !41, i64 0}
!156 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!157 = !{!158, !41, i64 48}
!158 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!159 = !{!158, !36, i64 8}
!160 = !{!58, !36, i64 8}
!161 = !{!162, !36, i64 8}
!162 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!163 = distinct !{!163, !52, !53}
!164 = !{!165, !41, i64 0}
!165 = !{!"optab_handlers", !41, i64 0}
!166 = distinct !{!166, !52, !53}
!167 = distinct !{!167, !52, !53}
!168 = !{!79, !36, i64 0}
!169 = !{!170, !172}
!170 = distinct !{!170, !171, !"gsi_start_bb: argument 0"}
!171 = distinct !{!171, !"gsi_start_bb"}
!172 = distinct !{!172, !173, !"gsi_after_labels: argument 0"}
!173 = distinct !{!173, !"gsi_after_labels"}
!174 = !{!172}
!175 = distinct !{!175, !52, !53}
!176 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !35}
!177 = !{i64 0, i64 8, !35, i64 8, i64 8, !35}
!178 = !{i64 0, i64 8, !35}
!179 = distinct !{!179, !52, !53}
!180 = distinct !{!180, !52, !53}
!181 = distinct !{!181, !52, !53}
!182 = distinct !{!182, !52, !53}
!183 = distinct !{!183, !52, !53}
!184 = distinct !{!184, !52, !53}
!185 = distinct !{!185, !52, !53}
!186 = distinct !{!186, !52, !53}
!187 = distinct !{!187, !52, !53}
!188 = distinct !{!188, !52, !53}
!189 = !{!190, !36, i64 0}
!190 = !{!"ar_data", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!191 = !{!190, !36, i64 8}
!192 = !{!190, !36, i64 16}
!193 = !{!190, !36, i64 24}
!194 = distinct !{!194, !52, !53}
!195 = !{!96, !36, i64 0}
!196 = distinct !{!196, !52, !53}
!197 = !{!198, !36, i64 0}
!198 = !{!"", !36, i64 0, !36, i64 8, !37, i64 16}
!199 = !{!198, !36, i64 8}
