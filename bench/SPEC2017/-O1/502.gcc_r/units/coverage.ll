; ModuleID = 'coverage.c'
source_filename = "coverage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gcov_var = type { ptr, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.gcov_summary = type { i32, [1 x %struct.gcov_ctr_summary] }
%struct.gcov_ctr_summary = type { i32, i32, i64, i64, i64 }
%struct.counts_entry = type { i32, i32, i32, ptr, %struct.gcov_ctr_summary, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.function_list = type { ptr, i32, i32, [8 x i32] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@gcov_var = dso_local local_unnamed_addr global %struct.gcov_var zeroinitializer, align 8
@.str = private unnamed_addr constant [12 x i8] c"./gcov-io.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"r+b\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"w+b\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@counts_hash = internal unnamed_addr global ptr null, align 8
@get_coverage_counts.warned = internal unnamed_addr global i32 0, align 4
@input_location = external local_unnamed_addr global i32, align 4
@flag_guess_branch_prob = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"file %s not found, execution counts estimated\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"file %s not found, execution counts assumed to be zero\00", align 1
@da_file_name = internal unnamed_addr global ptr null, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"no coverage for function %qE found\00", align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@get_coverage_counts.warned.8 = internal unnamed_addr global i32 0, align 4
@warn_coverage_mismatch = external local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [61 x i8] c"coverage mismatch for function %qE while reading counter %qs\00", align 1
@ctr_names = internal unnamed_addr constant [8 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], align 16
@inhibit_warnings = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"checksum is %x instead of %x\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"number of counters is %d instead of %d\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"coverage mismatch ignored due to -Wcoverage-mismatch\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"execution counts estimated\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"execution counts assumed to be zero\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"this can result in poorly optimized code\00", align 1
@no_coverage = internal unnamed_addr global i1 false, align 4
@tree_ctr_tables = internal global [8 x ptr] zeroinitializer, align 16
@.str.16 = private unnamed_addr constant [7 x i8] c"*.%s%u\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"LPBX\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.18 = private unnamed_addr constant [20 x i8] c"Using data file %s\0A\00", align 1
@fn_n_ctrs = internal unnamed_addr global [8 x i32] zeroinitializer, align 16
@fn_b_ctrs = internal unnamed_addr global [8 x i32] zeroinitializer, align 16
@fn_ctr_mask = internal unnamed_addr global i32 0, align 4
@.str.19 = private unnamed_addr constant [11 x i8] c"coverage.c\00", align 1
@prg_n_ctrs = internal unnamed_addr global [8 x i32] zeroinitializer, align 16
@flag_test_coverage = external local_unnamed_addr global i32, align 4
@flag_compare_debug = external local_unnamed_addr global i32, align 4
@bbg_function_announced = internal unnamed_addr global i1 false, align 4
@bbg_file_opened = internal unnamed_addr global i1 false, align 4
@bbg_file_name = internal unnamed_addr global ptr null, align 8
@.str.20 = private unnamed_addr constant [15 x i8] c"cannot open %s\00", align 1
@local_tick = external local_unnamed_addr global i32, align 4
@functions_tail = internal unnamed_addr global ptr @functions_head, align 8
@prg_ctr_mask = internal unnamed_addr global i32 0, align 4
@profile_data_prefix = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [6 x i8] c".gcda\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c".gcno\00", align 1
@flag_profile_use = external local_unnamed_addr global i32, align 4
@ctr_labels = internal global [8 x ptr] zeroinitializer, align 16
@gt_ggc_r_gt_coverage_h = dso_local local_unnamed_addr constant [3 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @ctr_labels, i64 8, i64 8, ptr @gt_ggc_mx_rtx_def, ptr @gt_pch_nx_rtx_def }, %struct.ggc_root_tab { ptr @tree_ctr_tables, i64 8, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab zeroinitializer], align 16
@.str.24 = private unnamed_addr constant [5 x i8] c"arcs\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"interval\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"pow2\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"single\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"delta\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"indirect_call\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"average\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"ior\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"_GLOBAL__N_\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"_GLOBAL__\00", align 1
@functions_head = internal global ptr null, align 8
@.str.34 = private unnamed_addr constant [28 x i8] c"%qs is not a gcov data file\00", align 1
@.str.35 = private unnamed_addr constant [45 x i8] c"%qs is version %q.*s, expected version %q.*s\00", align 1
@.str.36 = private unnamed_addr constant [67 x i8] c"coverage mismatch for function %u while reading execution counters\00", align 1
@.str.37 = private unnamed_addr constant [50 x i8] c"cannot merge separate %s counters for function %u\00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"%qs has overflowed\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"%qs is corrupted\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"./gcov-io.h\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.41 = private unnamed_addr constant [12 x i8] c"__gcov_init\00", align 1
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@.str.42 = private unnamed_addr constant [12 x i8] c"__gcov_info\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"__gcov_fn_info\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"__gcov_ctr_info\00", align 1
@reltable.coverage_finish = internal unnamed_addr constant [8 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.45 to i64), i64 ptrtoint (ptr @reltable.coverage_finish to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.45 to i64), i64 ptrtoint (ptr @reltable.coverage_finish to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.45 to i64), i64 ptrtoint (ptr @reltable.coverage_finish to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.46 to i64), i64 ptrtoint (ptr @reltable.coverage_finish to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.47 to i64), i64 ptrtoint (ptr @reltable.coverage_finish to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.46 to i64), i64 ptrtoint (ptr @reltable.coverage_finish to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.45 to i64), i64 ptrtoint (ptr @reltable.coverage_finish to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.48 to i64), i64 ptrtoint (ptr @reltable.coverage_finish to i64)) to i32)], align 4
@.str.45 = private unnamed_addr constant [17 x i8] c"__gcov_merge_add\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"__gcov_merge_single\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"__gcov_merge_delta\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"__gcov_merge_ior\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !41 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !42
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !41 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !42
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !41 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !52

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #21
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !46
  %11 = load i8, ptr %3, align 1, !tbaa !53
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !41 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !52

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #21
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !46
  %11 = load i8, ptr %3, align 1, !tbaa !53
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !41 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !42
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !52

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #21
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !46
  %11 = load i8, ptr %3, align 1, !tbaa !53
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !41 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !42
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !41 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !52

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #21
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !54
  store i8 %12, ptr %4, align 1, !tbaa !53
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !41 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !52

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #21
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !54
  store i8 %12, ptr %4, align 1, !tbaa !53
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !41 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !52

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #21
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !54
  store i8 %12, ptr %4, align 1, !tbaa !53
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !41 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #21
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !41 {
  %2 = load i32, ptr %0, align 8, !tbaa !56
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !41 {
  %2 = load i32, ptr %0, align 8, !tbaa !56
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !41 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #21
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !57
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !41 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #21
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !57
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !41 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !41 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !41 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !41 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #21
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
  br i1 %23, label %7, label %24, !llvm.loop !58

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !41 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @gcov_open(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !41 {
  %3 = load ptr, ptr @gcov_var, align 8, !tbaa !61
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 77, ptr noundef nonnull @.str.1) #21
  br label %6

6:                                                ; preds = %2, %5
  store i32 0, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 1), align 8, !tbaa !63
  store i32 0, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 3), align 8, !tbaa !64
  store i32 0, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !65
  store i32 -1, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 4), align 4, !tbaa !66
  store i32 0, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 5), align 8, !tbaa !67
  store i32 0, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 7), align 8, !tbaa !68
  %7 = icmp sgt i32 %1, -1
  br i1 %7, label %8, label %12

8:                                                ; preds = %6
  %9 = icmp eq i32 %1, 0
  %10 = select i1 %9, ptr @.str.3, ptr @.str.2
  %11 = tail call ptr @fopen_unlocked(ptr noundef %0, ptr noundef nonnull %10) #21
  store ptr %11, ptr @gcov_var, align 8, !tbaa !61
  br label %12

12:                                               ; preds = %8, %6
  %13 = load ptr, ptr @gcov_var, align 8, !tbaa !61
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = icmp slt i32 %1, 1
  br i1 %16, label %17, label %25

17:                                               ; preds = %15
  %18 = tail call ptr @fopen_unlocked(ptr noundef %0, ptr noundef nonnull @.str.4) #21
  store ptr %18, ptr @gcov_var, align 8, !tbaa !61
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = shl nsw i32 %1, 1
  %22 = or disjoint i32 %21, 1
  br label %23

23:                                               ; preds = %12, %20
  %24 = phi i32 [ %22, %20 ], [ 1, %12 ]
  store i32 %24, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 6), align 4, !tbaa !69
  br label %25

25:                                               ; preds = %23, %15, %17
  %26 = load ptr, ptr @gcov_var, align 8, !tbaa !61
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @setbuf(ptr noundef nonnull %26, ptr noundef null)
  br label %29

29:                                               ; preds = %25, %28
  %30 = phi i32 [ 1, %28 ], [ 0, %25 ]
  ret i32 %30
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fopen_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare void @setbuf(ptr nocapture noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local i32 @gcov_close() local_unnamed_addr #9 !prof !41 {
  %1 = load ptr, ptr @gcov_var, align 8, !tbaa !61
  %2 = icmp eq ptr %1, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !65
  %5 = icmp ne i32 %4, 0
  %6 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 6), align 4
  %7 = icmp slt i32 %6, 0
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call fastcc void @gcov_write_block(i32 noundef %4)
  br label %10

10:                                               ; preds = %9, %3
  %11 = load ptr, ptr @gcov_var, align 8, !tbaa !61
  %12 = tail call i32 @fclose(ptr noundef %11)
  store ptr null, ptr @gcov_var, align 8, !tbaa !61
  store i32 0, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 3), align 8, !tbaa !64
  br label %13

13:                                               ; preds = %10, %0
  %14 = load ptr, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 9), align 8, !tbaa !70
  tail call void @free(ptr noundef %14)
  store i32 0, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 6), align 4, !tbaa !69
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 8), i8 0, i64 16, i1 false)
  %15 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 5), align 8, !tbaa !67
  ret i32 %15
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @gcov_write_block(i32 noundef %0) unnamed_addr #10 !prof !41 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 9), align 8, !tbaa !70
  %3 = shl i32 %0, 2
  %4 = zext i32 %3 to i64
  %5 = load ptr, ptr @gcov_var, align 8, !tbaa !61
  %6 = tail call i64 @fwrite(ptr noundef %2, i64 noundef %4, i64 noundef 1, ptr noundef %5)
  %7 = icmp eq i64 %6, 1
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 5), align 8, !tbaa !67
  br label %9

9:                                                ; preds = %8, %1
  %10 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 1), align 8, !tbaa !63
  %11 = add i32 %10, %0
  store i32 %11, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 1), align 8, !tbaa !63
  %12 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !65
  %13 = sub i32 %12, %0
  store i32 %13, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !65
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @gcov_magic(i32 noundef %0, i32 noundef %1) local_unnamed_addr #12 !prof !41 {
  %3 = icmp eq i32 %0, %1
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @llvm.bswap.i32(i32 %0)
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  store i32 1, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 7), align 8, !tbaa !68
  br label %8

8:                                                ; preds = %4, %2, %7
  %9 = phi i32 [ -1, %7 ], [ 1, %2 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gcov_write_unsigned(i32 noundef %0) local_unnamed_addr #9 !prof !41 {
  %2 = tail call fastcc ptr @gcov_write_words(i32 noundef 1)
  store i32 %0, ptr %2, align 4, !tbaa !57
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @gcov_write_words(i32 noundef %0) unnamed_addr #9 !prof !41 {
  %2 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 6), align 4, !tbaa !69
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 234, ptr noundef nonnull @.str.1) #21
  br label %5

5:                                                ; preds = %1, %4
  %6 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !65
  %7 = add i32 %6, %0
  %8 = zext i32 %7 to i64
  %9 = load i64, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 8), align 8, !tbaa !71
  %10 = icmp ult i64 %9, %8
  br i1 %10, label %11, label %19

11:                                               ; preds = %5
  %12 = icmp eq i64 %9, 0
  %13 = select i1 %12, i64 1024, i64 %9
  %14 = add i64 %13, %8
  %15 = shl i64 %14, 1
  store i64 %15, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 8), align 8, !tbaa !71
  %16 = load ptr, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 9), align 8, !tbaa !70
  %17 = shl i64 %14, 3
  %18 = tail call ptr @xrealloc(ptr noundef %16, i64 noundef %17) #21
  store ptr %18, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 9), align 8, !tbaa !70
  br label %19

19:                                               ; preds = %11, %5
  %20 = load ptr, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 9), align 8, !tbaa !70
  %21 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !65
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, ptr %20, i64 %22
  %24 = add i32 %21, %0
  store i32 %24, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !65
  ret ptr %23
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gcov_write_string(ptr noundef readonly %0) local_unnamed_addr #9 !prof !41 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %5 = trunc i64 %4 to i32
  %6 = add i32 %5, 4
  %7 = lshr i32 %6, 2
  %8 = and i64 %4, 4294967295
  br label %9

9:                                                ; preds = %3, %1
  %10 = phi i32 [ %7, %3 ], [ 0, %1 ]
  %11 = phi i64 [ %8, %3 ], [ 0, %1 ]
  %12 = add nuw nsw i32 %10, 1
  %13 = tail call fastcc ptr @gcov_write_words(i32 noundef %12)
  store i32 %10, ptr %13, align 4, !tbaa !57
  %14 = zext nneg i32 %10 to i64
  %15 = getelementptr inbounds i32, ptr %13, i64 %14
  store i32 0, ptr %15, align 4, !tbaa !57
  %16 = getelementptr inbounds i32, ptr %13, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %16, ptr align 1 %0, i64 %11, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: cold nounwind uwtable
define dso_local i32 @gcov_write_tag(i32 noundef %0) local_unnamed_addr #9 !prof !41 {
  %2 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 1), align 8, !tbaa !63
  %3 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !65
  %4 = add i32 %3, %2
  %5 = tail call fastcc ptr @gcov_write_words(i32 noundef 2)
  store i32 %0, ptr %5, align 4, !tbaa !57
  %6 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 0, ptr %6, align 4, !tbaa !57
  ret i32 %4
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gcov_write_length(i32 noundef %0) local_unnamed_addr #9 !prof !41 {
  %2 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 6), align 4, !tbaa !69
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 336, ptr noundef nonnull @.str.1) #21
  br label %5

5:                                                ; preds = %1, %4
  %6 = add i32 %0, 2
  %7 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 1), align 8, !tbaa !63
  %8 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !65
  %9 = add i32 %8, %7
  %10 = icmp ugt i32 %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 337, ptr noundef nonnull @.str.1) #21
  br label %12

12:                                               ; preds = %5, %11
  %13 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 1), align 8, !tbaa !63
  %14 = icmp ugt i32 %13, %0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 338, ptr noundef nonnull @.str.1) #21
  br label %16

16:                                               ; preds = %12, %15
  %17 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 1), align 8, !tbaa !63
  %18 = sub i32 %0, %17
  %19 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !65
  %20 = sub i32 %19, %18
  %21 = add i32 %20, -2
  %22 = load ptr, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 9), align 8, !tbaa !70
  %23 = zext i32 %18 to i64
  %24 = getelementptr inbounds i32, ptr %22, i64 %23
  %25 = getelementptr inbounds i32, ptr %24, i64 1
  store i32 %21, ptr %25, align 4, !tbaa !57
  %26 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !65
  %27 = icmp ugt i32 %26, 1023
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  tail call fastcc void @gcov_write_block(i32 noundef %26)
  br label %29

29:                                               ; preds = %28, %16
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @gcov_read_unsigned() local_unnamed_addr #9 !prof !41 {
  %1 = tail call fastcc ptr @gcov_read_words(i32 noundef 1)
  %2 = icmp eq ptr %1, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr %1, align 4, !tbaa !57
  %5 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 7), align 8, !tbaa !68
  %6 = icmp eq i32 %5, 0
  %7 = tail call i32 @llvm.bswap.i32(i32 %4)
  %8 = select i1 %6, i32 %4, i32 %7
  br label %9

9:                                                ; preds = %0, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @gcov_read_words(i32 noundef %0) unnamed_addr #9 !prof !41 {
  %2 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 3), align 8, !tbaa !64
  %3 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !65
  %4 = sub i32 %2, %3
  %5 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 6), align 4, !tbaa !69
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 393, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %1, %7
  %9 = icmp ult i32 %4, %0
  br i1 %9, label %10, label %52

10:                                               ; preds = %8
  %11 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !65
  %12 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 1), align 8, !tbaa !63
  %13 = add i32 %12, %11
  store i32 %13, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 1), align 8, !tbaa !63
  %14 = load ptr, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 9), align 8, !tbaa !70
  %15 = zext i32 %11 to i64
  %16 = getelementptr inbounds i32, ptr %14, i64 %15
  %17 = shl i32 %4, 2
  %18 = zext i32 %17 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %14, ptr align 4 %16, i64 %18, i1 false)
  store i32 0, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !65
  store i32 %4, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 3), align 8, !tbaa !64
  %19 = add i32 %4, %0
  %20 = zext i32 %19 to i64
  %21 = load i64, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 8), align 8, !tbaa !71
  %22 = icmp ult i64 %21, %20
  br i1 %22, label %23, label %31

23:                                               ; preds = %10
  %24 = icmp eq i64 %21, 0
  %25 = select i1 %24, i64 1024, i64 %21
  %26 = add i64 %25, %20
  %27 = shl i64 %26, 1
  store i64 %27, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 8), align 8, !tbaa !71
  %28 = load ptr, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 9), align 8, !tbaa !70
  %29 = shl i64 %26, 3
  %30 = tail call ptr @xrealloc(ptr noundef %28, i64 noundef %29) #21
  store ptr %30, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 9), align 8, !tbaa !70
  br label %31

31:                                               ; preds = %23, %10
  %32 = load i64, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 8), align 8, !tbaa !71
  %33 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 3), align 8, !tbaa !64
  %34 = zext i32 %33 to i64
  %35 = trunc i64 %32 to i32
  %36 = sub i32 %35, %33
  %37 = load ptr, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 9), align 8, !tbaa !70
  %38 = getelementptr inbounds i32, ptr %37, i64 %34
  %39 = shl i32 %36, 2
  %40 = zext i32 %39 to i64
  %41 = load ptr, ptr @gcov_var, align 8, !tbaa !61
  %42 = tail call i64 @fread(ptr noundef %38, i64 noundef 1, i64 noundef %40, ptr noundef %41)
  %43 = lshr i64 %42, 2
  %44 = trunc i64 %43 to i32
  %45 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 3), align 8, !tbaa !64
  %46 = add i32 %45, %44
  store i32 %46, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 3), align 8, !tbaa !64
  %47 = icmp ult i32 %46, %0
  br i1 %47, label %48, label %52

48:                                               ; preds = %31
  %49 = sub i32 %0, %46
  %50 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 4), align 4, !tbaa !66
  %51 = add i32 %49, %50
  store i32 %51, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 4), align 4, !tbaa !66
  store i32 0, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 3), align 8, !tbaa !64
  br label %58

52:                                               ; preds = %31, %8
  %53 = load ptr, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 9), align 8, !tbaa !70
  %54 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !65
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, ptr %53, i64 %55
  %57 = add i32 %54, %0
  store i32 %57, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !65
  br label %58

58:                                               ; preds = %52, %48
  %59 = phi ptr [ null, %48 ], [ %56, %52 ]
  ret ptr %59
}

; Function Attrs: cold nounwind uwtable
define dso_local i64 @gcov_read_counter() local_unnamed_addr #9 !prof !41 {
  %1 = tail call fastcc ptr @gcov_read_words(i32 noundef 2)
  %2 = icmp eq ptr %1, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr %1, align 4, !tbaa !57
  %5 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 7), align 8, !tbaa !68
  %6 = icmp eq i32 %5, 0
  %7 = tail call i32 @llvm.bswap.i32(i32 %4)
  %8 = select i1 %6, i32 %4, i32 %7
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %1, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !57
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = select i1 %6, i32 %11, i32 %12
  %14 = zext i32 %13 to i64
  %15 = shl nuw i64 %14, 32
  %16 = or disjoint i64 %15, %9
  br label %17

17:                                               ; preds = %0, %3
  %18 = phi i64 [ %16, %3 ], [ 0, %0 ]
  ret i64 %18
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @gcov_read_string() local_unnamed_addr #9 !prof !41 {
  %1 = tail call fastcc ptr @gcov_read_words(i32 noundef 1)
  %2 = icmp eq ptr %1, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr %1, align 4, !tbaa !57
  %5 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 7), align 8, !tbaa !68
  %6 = icmp eq i32 %5, 0
  %7 = tail call i32 @llvm.bswap.i32(i32 %4)
  %8 = select i1 %6, i32 %4, i32 %7
  br label %9

9:                                                ; preds = %0, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %0 ]
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = tail call fastcc ptr @gcov_read_words(i32 noundef %10)
  br label %14

14:                                               ; preds = %9, %12
  %15 = phi ptr [ %13, %12 ], [ null, %9 ]
  ret ptr %15
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gcov_read_summary(ptr nocapture noundef writeonly %0) local_unnamed_addr #9 !prof !41 {
  %2 = tail call fastcc ptr @gcov_read_words(i32 noundef 1)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 4, !tbaa !57
  %6 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 7), align 8, !tbaa !68
  %7 = icmp eq i32 %6, 0
  %8 = tail call i32 @llvm.bswap.i32(i32 %5)
  %9 = select i1 %7, i32 %5, i32 %8
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ 0, %1 ]
  store i32 %11, ptr %0, align 8, !tbaa !72
  %12 = getelementptr inbounds %struct.gcov_summary, ptr %0, i64 0, i32 1
  %13 = tail call fastcc ptr @gcov_read_words(i32 noundef 1)
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = load i32, ptr %13, align 4, !tbaa !57
  %17 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 7), align 8, !tbaa !68
  %18 = icmp eq i32 %17, 0
  %19 = tail call i32 @llvm.bswap.i32(i32 %16)
  %20 = select i1 %18, i32 %16, i32 %19
  br label %21

21:                                               ; preds = %10, %15
  %22 = phi i32 [ %20, %15 ], [ 0, %10 ]
  store i32 %22, ptr %12, align 8, !tbaa !74
  %23 = tail call fastcc ptr @gcov_read_words(i32 noundef 1)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load i32, ptr %23, align 4, !tbaa !57
  %27 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 7), align 8, !tbaa !68
  %28 = icmp eq i32 %27, 0
  %29 = tail call i32 @llvm.bswap.i32(i32 %26)
  %30 = select i1 %28, i32 %26, i32 %29
  br label %31

31:                                               ; preds = %21, %25
  %32 = phi i32 [ %30, %25 ], [ 0, %21 ]
  %33 = getelementptr inbounds %struct.gcov_summary, ptr %0, i64 0, i32 1, i64 0, i32 1
  store i32 %32, ptr %33, align 4, !tbaa !76
  %34 = tail call fastcc ptr @gcov_read_words(i32 noundef 2)
  %35 = icmp eq ptr %34, null
  br i1 %35, label %50, label %36

36:                                               ; preds = %31
  %37 = load i32, ptr %34, align 4, !tbaa !57
  %38 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 7), align 8, !tbaa !68
  %39 = icmp eq i32 %38, 0
  %40 = tail call i32 @llvm.bswap.i32(i32 %37)
  %41 = select i1 %39, i32 %37, i32 %40
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, ptr %34, i64 1
  %44 = load i32, ptr %43, align 4, !tbaa !57
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %46 = select i1 %39, i32 %44, i32 %45
  %47 = zext i32 %46 to i64
  %48 = shl nuw i64 %47, 32
  %49 = or disjoint i64 %48, %42
  br label %50

50:                                               ; preds = %31, %36
  %51 = phi i64 [ %49, %36 ], [ 0, %31 ]
  %52 = getelementptr inbounds %struct.gcov_summary, ptr %0, i64 0, i32 1, i64 0, i32 2
  store i64 %51, ptr %52, align 8, !tbaa !77
  %53 = tail call fastcc ptr @gcov_read_words(i32 noundef 2)
  %54 = icmp eq ptr %53, null
  br i1 %54, label %69, label %55

55:                                               ; preds = %50
  %56 = load i32, ptr %53, align 4, !tbaa !57
  %57 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 7), align 8, !tbaa !68
  %58 = icmp eq i32 %57, 0
  %59 = tail call i32 @llvm.bswap.i32(i32 %56)
  %60 = select i1 %58, i32 %56, i32 %59
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, ptr %53, i64 1
  %63 = load i32, ptr %62, align 4, !tbaa !57
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  %65 = select i1 %58, i32 %63, i32 %64
  %66 = zext i32 %65 to i64
  %67 = shl nuw i64 %66, 32
  %68 = or disjoint i64 %67, %61
  br label %69

69:                                               ; preds = %50, %55
  %70 = phi i64 [ %68, %55 ], [ 0, %50 ]
  %71 = getelementptr inbounds %struct.gcov_summary, ptr %0, i64 0, i32 1, i64 0, i32 3
  store i64 %70, ptr %71, align 8, !tbaa !78
  %72 = tail call fastcc ptr @gcov_read_words(i32 noundef 2)
  %73 = icmp eq ptr %72, null
  br i1 %73, label %88, label %74

74:                                               ; preds = %69
  %75 = load i32, ptr %72, align 4, !tbaa !57
  %76 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 7), align 8, !tbaa !68
  %77 = icmp eq i32 %76, 0
  %78 = tail call i32 @llvm.bswap.i32(i32 %75)
  %79 = select i1 %77, i32 %75, i32 %78
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, ptr %72, i64 1
  %82 = load i32, ptr %81, align 4, !tbaa !57
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  %84 = select i1 %77, i32 %82, i32 %83
  %85 = zext i32 %84 to i64
  %86 = shl nuw i64 %85, 32
  %87 = or disjoint i64 %86, %80
  br label %88

88:                                               ; preds = %69, %74
  %89 = phi i64 [ %87, %74 ], [ 0, %69 ]
  %90 = getelementptr inbounds %struct.gcov_summary, ptr %0, i64 0, i32 1, i64 0, i32 4
  store i64 %89, ptr %90, align 8, !tbaa !79
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gcov_sync(i32 noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !41 {
  %3 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 6), align 4, !tbaa !69
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 507, ptr noundef nonnull @.str.1) #21
  br label %6

6:                                                ; preds = %2, %5
  %7 = add i32 %1, %0
  %8 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 1), align 8, !tbaa !63
  %9 = sub i32 %7, %8
  %10 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 3), align 8, !tbaa !64
  %11 = icmp ugt i32 %9, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  store i32 %9, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !65
  br label %22

13:                                               ; preds = %6
  store i32 0, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 3), align 8, !tbaa !64
  store i32 0, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !65
  %14 = load ptr, ptr @gcov_var, align 8, !tbaa !61
  %15 = shl i32 %7, 2
  %16 = zext i32 %15 to i64
  %17 = tail call i32 @fseek(ptr noundef %14, i64 noundef %16, i32 noundef 0)
  %18 = load ptr, ptr @gcov_var, align 8, !tbaa !61
  %19 = tail call i64 @ftell(ptr noundef %18)
  %20 = lshr i64 %19, 2
  %21 = trunc i64 %20 to i32
  store i32 %21, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 1), align 8, !tbaa !63
  br label %22

22:                                               ; preds = %13, %12
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @get_gcov_type() local_unnamed_addr #9 !prof !41 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !80
  %2 = tail call ptr %1(i32 noundef 64, i32 noundef 0) #21
  ret ptr %2
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @get_coverage_counts(i32 noundef %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #9 !prof !41 {
  %4 = alloca %struct.counts_entry, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #21
  %5 = load ptr, ptr @counts_hash, align 8, !tbaa !42
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = load i32, ptr @get_coverage_counts.warned, align 4, !tbaa !57
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr @get_coverage_counts.warned, align 4, !tbaa !57
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %11, label %86

11:                                               ; preds = %7
  %12 = load i32, ptr @input_location, align 4, !tbaa !57
  %13 = load i32, ptr @flag_guess_branch_prob, align 4, !tbaa !57
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, ptr @.str.6, ptr @.str.5
  %16 = load ptr, ptr @da_file_name, align 8, !tbaa !42
  tail call void (i32, ptr, ...) @inform(i32 noundef %12, ptr noundef nonnull %15, ptr noundef %16) #21
  br label %86

17:                                               ; preds = %3
  %18 = load ptr, ptr @cfun, align 8, !tbaa !42
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 14
  %20 = load i32, ptr %19, align 4, !tbaa !88
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %4, align 8, !tbaa !90
  %22 = getelementptr inbounds %struct.counts_entry, ptr %4, i64 0, i32 1
  store i32 %0, ptr %22, align 4, !tbaa !92
  %23 = call ptr @htab_find(ptr noundef nonnull %5, ptr noundef nonnull %4) #21
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load ptr, ptr @current_function_decl, align 8, !tbaa !42
  %27 = call ptr @decl_assembler_name(ptr noundef %26) #21
  %28 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef %27) #21
  br label %86

29:                                               ; preds = %17
  %30 = call fastcc i32 @compute_checksum()
  %31 = getelementptr inbounds %struct.counts_entry, ptr %23, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !93
  %33 = icmp eq i32 %32, %30
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.counts_entry, ptr %23, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !94
  %37 = icmp eq i32 %36, %1
  br i1 %37, label %80, label %38

38:                                               ; preds = %34, %29
  %39 = load ptr, ptr @current_function_decl, align 8, !tbaa !42
  %40 = call ptr @decl_assembler_name(ptr noundef %39) #21
  %41 = load i32, ptr @warn_coverage_mismatch, align 4, !tbaa !57
  %42 = icmp eq i32 %41, 0
  %43 = zext i32 %0 to i64
  %44 = getelementptr inbounds [8 x ptr], ptr @ctr_names, i64 0, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !42
  br i1 %42, label %48, label %46

46:                                               ; preds = %38
  %47 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 63, ptr noundef nonnull @.str.9, ptr noundef %40, ptr noundef %45) #21
  br label %49

48:                                               ; preds = %38
  call void (ptr, ...) @error(ptr noundef nonnull @.str.9, ptr noundef %40, ptr noundef %45) #21
  br label %49

49:                                               ; preds = %48, %46
  %50 = load i32, ptr @inhibit_warnings, align 4, !tbaa !57
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load i32, ptr %31, align 8, !tbaa !93
  %54 = icmp eq i32 %53, %30
  %55 = load i32, ptr @input_location, align 4, !tbaa !57
  br i1 %54, label %57, label %56

56:                                               ; preds = %52
  call void (i32, ptr, ...) @inform(i32 noundef %55, ptr noundef nonnull @.str.10, i32 noundef %53, i32 noundef %30) #21
  br label %60

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.counts_entry, ptr %23, i64 0, i32 4
  %59 = load i32, ptr %58, align 8, !tbaa !94
  call void (i32, ptr, ...) @inform(i32 noundef %55, ptr noundef nonnull @.str.11, i32 noundef %59, i32 noundef %1) #21
  br label %60

60:                                               ; preds = %56, %57, %49
  %61 = load i32, ptr @warn_coverage_mismatch, align 4, !tbaa !57
  %62 = icmp eq i32 %61, 0
  %63 = load i32, ptr @inhibit_warnings, align 4
  %64 = icmp ne i32 %63, 0
  %65 = select i1 %62, i1 true, i1 %64
  br i1 %65, label %86, label %66

66:                                               ; preds = %60
  %67 = load i32, ptr @get_coverage_counts.warned.8, align 4, !tbaa !57
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr @get_coverage_counts.warned.8, align 4, !tbaa !57
  %69 = icmp eq i32 %67, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %66
  %71 = load i32, ptr @input_location, align 4, !tbaa !57
  call void (i32, ptr, ...) @inform(i32 noundef %71, ptr noundef nonnull @.str.12) #21
  %72 = load i32, ptr @input_location, align 4, !tbaa !57
  %73 = load i32, ptr @flag_guess_branch_prob, align 4, !tbaa !57
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %74, ptr @.str.14, ptr @.str.13
  call void (i32, ptr, ...) @inform(i32 noundef %72, ptr noundef nonnull %75) #21
  %76 = load i32, ptr @flag_guess_branch_prob, align 4, !tbaa !57
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %70
  %79 = load i32, ptr @input_location, align 4, !tbaa !57
  call void (i32, ptr, ...) @inform(i32 noundef %79, ptr noundef nonnull @.str.15) #21
  br label %86

80:                                               ; preds = %34
  %81 = icmp eq ptr %2, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %80
  store ptr %35, ptr %2, align 8, !tbaa !42
  br label %83

83:                                               ; preds = %82, %80
  %84 = getelementptr inbounds %struct.counts_entry, ptr %23, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !95
  br label %86

86:                                               ; preds = %60, %66, %78, %70, %7, %11, %83, %25
  %87 = phi ptr [ %85, %83 ], [ null, %25 ], [ null, %11 ], [ null, %7 ], [ null, %70 ], [ null, %78 ], [ null, %66 ], [ null, %60 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #21
  ret ptr %87
}

declare void @inform(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @htab_find(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @compute_checksum() unnamed_addr #9 !prof !41 {
  %1 = alloca %struct.expanded_location, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #21
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !53
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %1, i32 noundef %4) #21
  %5 = getelementptr inbounds %struct.expanded_location, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !96
  %7 = load ptr, ptr %1, align 8, !tbaa !98
  %8 = call fastcc i32 @coverage_checksum_string(i32 noundef %6, ptr noundef %7)
  %9 = load ptr, ptr @current_function_decl, align 8, !tbaa !42
  %10 = call ptr @decl_assembler_name(ptr noundef %9) #21
  %11 = getelementptr inbounds %struct.tree_identifier, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !53
  %13 = call fastcc i32 @coverage_checksum_string(i32 noundef %8, ptr noundef %12)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #21
  ret i32 %13
}

declare void @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @coverage_counter_alloc(i32 noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !41 {
  %3 = alloca [20 x i8], align 16
  %4 = load i1, ptr @no_coverage, align 4
  br i1 %4, label %42, label %5

5:                                                ; preds = %2
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %42, label %7

7:                                                ; preds = %5
  %8 = zext i32 %0 to i64
  %9 = getelementptr inbounds [8 x ptr], ptr @tree_ctr_tables, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %34

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #21
  %13 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !80
  %14 = tail call ptr %13(i32 noundef 64, i32 noundef 0) #21
  %15 = tail call ptr @build_array_type(ptr noundef %14, ptr noundef null) #21
  %16 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 32, ptr noundef null, ptr noundef %15) #21
  store ptr %16, ptr %9, align 8, !tbaa !42
  %17 = load i64, ptr %16, align 8
  %18 = or i64 %17, 67108864
  store i64 %18, ptr %16, align 8
  %19 = add i32 %0, 1
  %20 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull @.str.17, i32 noundef %19)
  %21 = call ptr @get_identifier(ptr noundef nonnull %3) #21
  %22 = load ptr, ptr %9, align 8, !tbaa !42
  %23 = getelementptr inbounds %struct.tree_decl_minimal, ptr %22, i64 0, i32 3
  store ptr %21, ptr %23, align 8, !tbaa !53
  %24 = getelementptr inbounds %struct.tree_type, ptr %14, i64 0, i32 7
  %25 = load i32, ptr %24, align 8, !tbaa !53
  %26 = load ptr, ptr %9, align 8, !tbaa !42
  %27 = getelementptr inbounds %struct.tree_decl_common, ptr %26, i64 0, i32 3
  store i32 %25, ptr %27, align 8, !tbaa !53
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !42
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %12
  %31 = load ptr, ptr @da_file_name, align 8, !tbaa !42
  %32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %28, ptr noundef nonnull @.str.18, ptr noundef %31)
  br label %33

33:                                               ; preds = %30, %12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #21
  br label %34

34:                                               ; preds = %33, %7
  %35 = getelementptr inbounds [8 x i32], ptr @fn_n_ctrs, i64 0, i64 %8
  %36 = load i32, ptr %35, align 4, !tbaa !57
  %37 = getelementptr inbounds [8 x i32], ptr @fn_b_ctrs, i64 0, i64 %8
  store i32 %36, ptr %37, align 4, !tbaa !57
  %38 = add i32 %36, %1
  store i32 %38, ptr %35, align 4, !tbaa !57
  %39 = shl nuw i32 1, %0
  %40 = load i32, ptr @fn_ctr_mask, align 4, !tbaa !57
  %41 = or i32 %40, %39
  store i32 %41, ptr @fn_ctr_mask, align 4, !tbaa !57
  br label %42

42:                                               ; preds = %5, %2, %34
  %43 = phi i32 [ 1, %34 ], [ 0, %2 ], [ 1, %5 ]
  ret i32 %43
}

declare ptr @build_array_type(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @get_identifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local ptr @tree_coverage_counter_ref(i32 noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !41 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !80
  %4 = tail call ptr %3(i32 noundef 64, i32 noundef 0) #21
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds [8 x i32], ptr @fn_n_ctrs, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !57
  %8 = getelementptr inbounds [8 x i32], ptr @fn_b_ctrs, i64 0, i64 %5
  %9 = load i32, ptr %8, align 4, !tbaa !57
  %10 = sub i32 %7, %9
  %11 = icmp ugt i32 %10, %1
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 444, ptr noundef nonnull @.str.1) #21
  br label %13

13:                                               ; preds = %2, %12
  %14 = getelementptr inbounds [8 x i32], ptr @prg_n_ctrs, i64 0, i64 %5
  %15 = load i32, ptr %14, align 4, !tbaa !57
  %16 = load i32, ptr %8, align 4, !tbaa !57
  %17 = add i32 %15, %1
  %18 = add i32 %17, %16
  %19 = getelementptr inbounds [8 x ptr], ptr @tree_ctr_tables, i64 0, i64 %5
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = zext i32 %18 to i64
  %22 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %21) #21
  %23 = tail call ptr @build4_stat(i32 noundef 45, ptr noundef %4, ptr noundef %20, ptr noundef %22, ptr noundef null, ptr noundef null) #21
  ret ptr %23
}

declare ptr @build4_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @tree_coverage_counter_addr(i32 noundef %0, i32 noundef %1) local_unnamed_addr #9 !prof !41 {
  %3 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !80
  %4 = tail call ptr %3(i32 noundef 64, i32 noundef 0) #21
  %5 = zext i32 %0 to i64
  %6 = getelementptr inbounds [8 x i32], ptr @fn_n_ctrs, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !57
  %8 = getelementptr inbounds [8 x i32], ptr @fn_b_ctrs, i64 0, i64 %5
  %9 = load i32, ptr %8, align 4, !tbaa !57
  %10 = sub i32 %7, %9
  %11 = icmp ugt i32 %10, %1
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 459, ptr noundef nonnull @.str.1) #21
  br label %13

13:                                               ; preds = %2, %12
  %14 = getelementptr inbounds [8 x i32], ptr @prg_n_ctrs, i64 0, i64 %5
  %15 = load i32, ptr %14, align 4, !tbaa !57
  %16 = load i32, ptr %8, align 4, !tbaa !57
  %17 = add i32 %15, %1
  %18 = add i32 %17, %16
  %19 = getelementptr inbounds [8 x ptr], ptr @tree_ctr_tables, i64 0, i64 %5
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  %21 = load i64, ptr %20, align 8
  %22 = or i64 %21, 262144
  store i64 %22, ptr %20, align 8
  %23 = load ptr, ptr %19, align 8, !tbaa !42
  %24 = zext i32 %18 to i64
  %25 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %24) #21
  %26 = tail call ptr @build4_stat(i32 noundef 45, ptr noundef %4, ptr noundef %23, ptr noundef %25, ptr noundef null, ptr noundef null) #21
  %27 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %26) #21
  ret ptr %27
}

declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local i32 @coverage_begin_output() local_unnamed_addr #9 !prof !41 {
  %1 = alloca %struct.expanded_location, align 8
  %2 = load i1, ptr @no_coverage, align 4
  %3 = load i32, ptr @flag_test_coverage, align 4
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  %6 = load i32, ptr @flag_compare_debug, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %56, label %9

9:                                                ; preds = %0
  %10 = load i1, ptr @bbg_function_announced, align 4
  br i1 %10, label %49, label %11

11:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #21
  %12 = load ptr, ptr @current_function_decl, align 8, !tbaa !42
  %13 = getelementptr inbounds %struct.tree_decl_minimal, ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !53
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %1, i32 noundef %14) #21
  %15 = load i1, ptr @bbg_file_opened, align 4
  br i1 %15, label %28, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr @bbg_file_name, align 8, !tbaa !42
  %18 = call i32 @gcov_open(ptr noundef %17, i32 noundef -1), !range !99
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load ptr, ptr @bbg_file_name, align 8, !tbaa !42
  call void (ptr, ...) @error(ptr noundef nonnull @.str.20, ptr noundef %21) #21
  br label %27

22:                                               ; preds = %16
  %23 = call fastcc ptr @gcov_write_words(i32 noundef 1)
  store i32 1734569583, ptr %23, align 4, !tbaa !57
  %24 = call fastcc ptr @gcov_write_words(i32 noundef 1)
  store i32 875574570, ptr %24, align 4, !tbaa !57
  %25 = load i32, ptr @local_tick, align 4, !tbaa !57
  %26 = call fastcc ptr @gcov_write_words(i32 noundef 1)
  store i32 %25, ptr %26, align 4, !tbaa !57
  br label %27

27:                                               ; preds = %22, %20
  store i1 true, ptr @bbg_file_opened, align 4
  br label %28

28:                                               ; preds = %27, %11
  %29 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 1), align 8, !tbaa !63
  %30 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !65
  %31 = add i32 %30, %29
  %32 = call fastcc ptr @gcov_write_words(i32 noundef 2)
  store i32 16777216, ptr %32, align 4, !tbaa !57
  %33 = getelementptr inbounds i32, ptr %32, i64 1
  store i32 0, ptr %33, align 4, !tbaa !57
  %34 = load ptr, ptr @cfun, align 8, !tbaa !42
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 14
  %36 = load i32, ptr %35, align 4, !tbaa !88
  %37 = add nsw i32 %36, 1
  %38 = call fastcc ptr @gcov_write_words(i32 noundef 1)
  store i32 %37, ptr %38, align 4, !tbaa !57
  %39 = call fastcc i32 @compute_checksum()
  %40 = call fastcc ptr @gcov_write_words(i32 noundef 1)
  store i32 %39, ptr %40, align 4, !tbaa !57
  %41 = load ptr, ptr @current_function_decl, align 8, !tbaa !42
  %42 = call ptr @decl_assembler_name(ptr noundef %41) #21
  %43 = getelementptr inbounds %struct.tree_identifier, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !53
  call void @gcov_write_string(ptr noundef %44)
  %45 = load ptr, ptr %1, align 8, !tbaa !98
  call void @gcov_write_string(ptr noundef %45)
  %46 = getelementptr inbounds %struct.expanded_location, ptr %1, i64 0, i32 1
  %47 = load i32, ptr %46, align 8, !tbaa !96
  %48 = call fastcc ptr @gcov_write_words(i32 noundef 1)
  store i32 %47, ptr %48, align 4, !tbaa !57
  call void @gcov_write_length(i32 noundef %31)
  store i1 true, ptr @bbg_function_announced, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #21
  br label %49

49:                                               ; preds = %28, %9
  %50 = load ptr, ptr @gcov_var, align 8, !tbaa !61
  %51 = icmp ne ptr %50, null
  %52 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 5), align 8
  %53 = icmp eq i32 %52, 0
  %54 = select i1 %51, i1 %53, i1 false
  %55 = zext i1 %54 to i32
  br label %56

56:                                               ; preds = %0, %49
  %57 = phi i32 [ %55, %49 ], [ 0, %0 ]
  ret i32 %57
}

declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @coverage_end_function() local_unnamed_addr #9 !prof !41 {
  %1 = load i32, ptr @fn_ctr_mask, align 4, !tbaa !57
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %27, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @xmalloc(i64 noundef 48) #21
  %5 = load ptr, ptr @functions_tail, align 8, !tbaa !42
  store ptr %4, ptr %5, align 8, !tbaa !42
  store ptr %4, ptr @functions_tail, align 8, !tbaa !42
  store ptr null, ptr %4, align 8, !tbaa !100
  %6 = load ptr, ptr @cfun, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 14
  %8 = load i32, ptr %7, align 4, !tbaa !88
  %9 = add nsw i32 %8, 1
  %10 = getelementptr inbounds %struct.function_list, ptr %4, i64 0, i32 1
  store i32 %9, ptr %10, align 8, !tbaa !102
  %11 = tail call fastcc i32 @compute_checksum()
  %12 = getelementptr inbounds %struct.function_list, ptr %4, i64 0, i32 2
  store i32 %11, ptr %12, align 4, !tbaa !103
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @fn_b_ctrs, i8 0, i64 32, i1 false), !tbaa !57
  br label %13

13:                                               ; preds = %3, %13
  %14 = phi i64 [ 0, %3 ], [ %21, %13 ]
  %15 = getelementptr inbounds [8 x i32], ptr @fn_n_ctrs, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !57
  %17 = getelementptr inbounds %struct.function_list, ptr %4, i64 0, i32 3, i64 %14
  store i32 %16, ptr %17, align 4, !tbaa !57
  %18 = getelementptr inbounds [8 x i32], ptr @prg_n_ctrs, i64 0, i64 %14
  %19 = load i32, ptr %18, align 4, !tbaa !57
  %20 = add i32 %19, %16
  store i32 %20, ptr %18, align 4, !tbaa !57
  store i32 0, ptr %15, align 4, !tbaa !57
  %21 = add nuw nsw i64 %14, 1
  %22 = icmp eq i64 %21, 8
  br i1 %22, label %23, label %13, !llvm.loop !104

23:                                               ; preds = %13
  %24 = load i32, ptr @fn_ctr_mask, align 4, !tbaa !57
  %25 = load i32, ptr @prg_ctr_mask, align 4, !tbaa !57
  %26 = or i32 %25, %24
  store i32 %26, ptr @prg_ctr_mask, align 4, !tbaa !57
  store i32 0, ptr @fn_ctr_mask, align 4, !tbaa !57
  br label %27

27:                                               ; preds = %23, %0
  store i1 false, ptr @bbg_function_announced, align 4
  ret void
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @coverage_init(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !105 {
  %2 = alloca [4 x i8], align 1
  %3 = alloca [4 x i8], align 1
  %4 = alloca %struct.gcov_summary, align 8
  %5 = alloca %struct.counts_entry, align 8
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0)
  %7 = load ptr, ptr @profile_data_prefix, align 8, !tbaa !42
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %14, !prof !106

9:                                                ; preds = %1
  %10 = load i8, ptr %0, align 1, !tbaa !53
  %11 = icmp eq i8 %10, 47
  br i1 %11, label %14, label %12, !prof !107

12:                                               ; preds = %9
  %13 = tail call ptr @getpwd() #21
  store ptr %13, ptr @profile_data_prefix, align 8, !tbaa !42
  br label %14

14:                                               ; preds = %12, %9, %1
  %15 = load ptr, ptr @profile_data_prefix, align 8, !tbaa !42
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17, !prof !107

17:                                               ; preds = %14
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %15)
  %19 = shl i64 %18, 32
  %20 = add i64 %19, 4294967296
  %21 = ashr exact i64 %20, 32
  br label %22

22:                                               ; preds = %14, %17
  %23 = phi i64 [ %21, %17 ], [ 0, %14 ]
  %24 = shl i64 %6, 32
  %25 = ashr exact i64 %24, 32
  %26 = add nsw i64 %25, 6
  %27 = add nsw i64 %26, %23
  %28 = tail call ptr @xmalloc(i64 noundef %27) #21
  store ptr %28, ptr @da_file_name, align 8, !tbaa !42
  %29 = load ptr, ptr @profile_data_prefix, align 8, !tbaa !42
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31, !prof !107

31:                                               ; preds = %22
  %32 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(1) %29)
  %33 = getelementptr i8, ptr %28, i64 %23
  %34 = getelementptr i8, ptr %33, i64 -1
  store i8 47, ptr %34, align 1, !tbaa !53
  br label %35

35:                                               ; preds = %22, %31
  %36 = phi ptr [ %33, %31 ], [ %28, %22 ]
  store i8 0, ptr %36, align 1, !tbaa !53
  %37 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(1) %0)
  %38 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %28)
  %39 = getelementptr inbounds i8, ptr %28, i64 %38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %39, ptr noundef nonnull align 1 dereferenceable(6) @.str.22, i64 6, i1 false)
  %40 = add nsw i64 %25, 6
  %41 = tail call ptr @xmalloc(i64 noundef %40) #21
  store ptr %41, ptr @bbg_file_name, align 8, !tbaa !42
  %42 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %41, ptr noundef nonnull dereferenceable(1) %0)
  %43 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %41)
  %44 = getelementptr inbounds i8, ptr %41, i64 %43
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %44, ptr noundef nonnull align 1 dereferenceable(6) @.str.23, i64 6, i1 false)
  %45 = load i32, ptr @flag_profile_use, align 4, !tbaa !57
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %313, label %47, !prof !106

47:                                               ; preds = %35
  %48 = load ptr, ptr @da_file_name, align 8, !tbaa !42
  %49 = tail call i32 @gcov_open(ptr noundef %48, i32 noundef 1), !range !99
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %313, label %51

51:                                               ; preds = %47
  %52 = tail call fastcc ptr @gcov_read_words(i32 noundef 1)
  %53 = icmp eq ptr %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load i32, ptr %52, align 4, !tbaa !57
  %56 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 7), align 8, !tbaa !68
  %57 = icmp eq i32 %56, 0
  %58 = tail call i32 @llvm.bswap.i32(i32 %55)
  %59 = select i1 %57, i32 %55, i32 %58
  br label %60

60:                                               ; preds = %54, %51
  %61 = phi i32 [ %59, %54 ], [ 0, %51 ]
  switch i32 %61, label %63 [
    i32 1734567009, label %67
    i32 1633968999, label %62
  ]

62:                                               ; preds = %60
  store i32 1, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 7), align 8, !tbaa !68
  br label %67

63:                                               ; preds = %60
  %64 = load ptr, ptr @da_file_name, align 8, !tbaa !42
  %65 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.34, ptr noundef %64) #21
  %66 = tail call i32 @gcov_close()
  br label %313

67:                                               ; preds = %62, %60
  %68 = tail call fastcc ptr @gcov_read_words(i32 noundef 1)
  %69 = icmp eq ptr %68, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = load i32, ptr %68, align 4, !tbaa !57
  %72 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 7), align 8, !tbaa !68
  %73 = icmp eq i32 %72, 0
  %74 = tail call i32 @llvm.bswap.i32(i32 %71)
  %75 = select i1 %73, i32 %71, i32 %74
  br label %76

76:                                               ; preds = %70, %67
  %77 = phi i32 [ %75, %70 ], [ 0, %67 ]
  %78 = icmp eq i32 %77, 875574570
  br i1 %78, label %96, label %79

79:                                               ; preds = %76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  %80 = lshr i32 %77, 24
  %81 = trunc i32 %80 to i8
  store i8 %81, ptr %2, align 1, !tbaa !53
  %82 = lshr i32 %77, 16
  %83 = trunc i32 %82 to i8
  %84 = getelementptr inbounds [4 x i8], ptr %2, i64 0, i64 1
  store i8 %83, ptr %84, align 1, !tbaa !53
  %85 = lshr i32 %77, 8
  %86 = trunc i32 %85 to i8
  %87 = getelementptr inbounds [4 x i8], ptr %2, i64 0, i64 2
  store i8 %86, ptr %87, align 1, !tbaa !53
  %88 = trunc i32 %77 to i8
  %89 = getelementptr inbounds [4 x i8], ptr %2, i64 0, i64 3
  store i8 %88, ptr %89, align 1, !tbaa !53
  store i8 52, ptr %3, align 1, !tbaa !53
  %90 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 1
  store i8 48, ptr %90, align 1, !tbaa !53
  %91 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 2
  store i8 53, ptr %91, align 1, !tbaa !53
  %92 = getelementptr inbounds [4 x i8], ptr %3, i64 0, i64 3
  store i8 42, ptr %92, align 1, !tbaa !53
  %93 = load ptr, ptr @da_file_name, align 8, !tbaa !42
  %94 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.35, ptr noundef %93, i32 noundef 4, ptr noundef nonnull %2, i32 noundef 4, ptr noundef nonnull %3) #21
  %95 = call i32 @gcov_close()
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #21
  br label %313

96:                                               ; preds = %76
  %97 = tail call fastcc ptr @gcov_read_words(i32 noundef 1)
  %98 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @htab_counts_entry_hash, ptr noundef nonnull @htab_counts_entry_eq, ptr noundef nonnull @htab_counts_entry_del) #21
  store ptr %98, ptr @counts_hash, align 8, !tbaa !42
  %99 = getelementptr inbounds %struct.counts_entry, ptr %5, i64 0, i32 1
  br label %100

100:                                              ; preds = %304, %96
  %101 = phi i32 [ 0, %96 ], [ %306, %304 ]
  %102 = phi ptr [ null, %96 ], [ %307, %304 ]
  %103 = phi i32 [ -1, %96 ], [ %308, %304 ]
  %104 = phi i32 [ 0, %96 ], [ %309, %304 ]
  %105 = call fastcc ptr @gcov_read_words(i32 noundef 1)
  %106 = icmp eq ptr %105, null
  br i1 %106, label %113, label %107

107:                                              ; preds = %100
  %108 = load i32, ptr %105, align 4, !tbaa !57
  %109 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 7), align 8, !tbaa !68
  %110 = icmp eq i32 %109, 0
  %111 = call i32 @llvm.bswap.i32(i32 %108)
  %112 = select i1 %110, i32 %108, i32 %111
  br label %113

113:                                              ; preds = %107, %100
  %114 = phi i32 [ %112, %107 ], [ 0, %100 ]
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %311, label %116

116:                                              ; preds = %113
  %117 = call fastcc ptr @gcov_read_words(i32 noundef 1)
  %118 = icmp eq ptr %117, null
  br i1 %118, label %125, label %119

119:                                              ; preds = %116
  %120 = load i32, ptr %117, align 4, !tbaa !57
  %121 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 7), align 8, !tbaa !68
  %122 = icmp eq i32 %121, 0
  %123 = call i32 @llvm.bswap.i32(i32 %120)
  %124 = select i1 %122, i32 %120, i32 %123
  br label %125

125:                                              ; preds = %119, %116
  %126 = phi i32 [ %124, %119 ], [ 0, %116 ]
  %127 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 6), align 4, !tbaa !69
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %125
  call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 586, ptr noundef nonnull @.str.1) #21
  br label %130

130:                                              ; preds = %129, %125
  %131 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 1), align 8, !tbaa !63
  %132 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !65
  %133 = add i32 %132, %131
  switch i32 %114, label %196 [
    i32 16777216, label %134
    i32 -1560281088, label %163
  ]

134:                                              ; preds = %130
  %135 = call fastcc ptr @gcov_read_words(i32 noundef 1)
  %136 = icmp eq ptr %135, null
  br i1 %136, label %143, label %137

137:                                              ; preds = %134
  %138 = load i32, ptr %135, align 4, !tbaa !57
  %139 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 7), align 8, !tbaa !68
  %140 = icmp eq i32 %139, 0
  %141 = call i32 @llvm.bswap.i32(i32 %138)
  %142 = select i1 %140, i32 %138, i32 %141
  br label %143

143:                                              ; preds = %137, %134
  %144 = phi i32 [ %142, %137 ], [ 0, %134 ]
  %145 = call fastcc ptr @gcov_read_words(i32 noundef 1)
  %146 = icmp eq ptr %145, null
  br i1 %146, label %153, label %147

147:                                              ; preds = %143
  %148 = load i32, ptr %145, align 4, !tbaa !57
  %149 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 7), align 8, !tbaa !68
  %150 = icmp eq i32 %149, 0
  %151 = call i32 @llvm.bswap.i32(i32 %148)
  %152 = select i1 %150, i32 %148, i32 %151
  br label %153

153:                                              ; preds = %147, %143
  %154 = phi i32 [ %152, %147 ], [ 0, %143 ]
  %155 = icmp eq i32 %101, 0
  br i1 %155, label %289, label %156

156:                                              ; preds = %153
  %157 = icmp eq ptr %102, null
  br i1 %157, label %289, label %158

158:                                              ; preds = %156, %158
  %159 = phi ptr [ %161, %158 ], [ %102, %156 ]
  %160 = getelementptr inbounds %struct.counts_entry, ptr %159, i64 0, i32 5
  %161 = load ptr, ptr %160, align 8, !tbaa !108
  store ptr null, ptr %160, align 8, !tbaa !108
  %162 = icmp eq ptr %161, null
  br i1 %162, label %289, label %158, !llvm.loop !109

163:                                              ; preds = %130
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #21
  call void @gcov_read_summary(ptr noundef nonnull %4)
  %164 = icmp eq ptr %102, null
  br i1 %164, label %195, label %165

165:                                              ; preds = %163, %186
  %166 = phi ptr [ %193, %186 ], [ %102, %163 ]
  %167 = getelementptr inbounds %struct.counts_entry, ptr %166, i64 0, i32 1
  %168 = load i32, ptr %167, align 4, !tbaa !92
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.gcov_summary, ptr %4, i64 0, i32 1, i64 %169, i32 1
  %171 = load i32, ptr %170, align 4, !tbaa !76
  %172 = getelementptr inbounds %struct.counts_entry, ptr %166, i64 0, i32 4, i32 1
  %173 = load i32, ptr %172, align 4, !tbaa !110
  %174 = add i32 %173, %171
  store i32 %174, ptr %172, align 4, !tbaa !110
  %175 = getelementptr inbounds %struct.gcov_summary, ptr %4, i64 0, i32 1, i64 %169, i32 2
  %176 = load i64, ptr %175, align 8, !tbaa !77
  %177 = getelementptr inbounds %struct.counts_entry, ptr %166, i64 0, i32 4, i32 2
  %178 = load i64, ptr %177, align 8, !tbaa !111
  %179 = add nsw i64 %178, %176
  store i64 %179, ptr %177, align 8, !tbaa !111
  %180 = getelementptr inbounds %struct.counts_entry, ptr %166, i64 0, i32 4, i32 3
  %181 = load i64, ptr %180, align 8, !tbaa !112
  %182 = getelementptr inbounds %struct.gcov_summary, ptr %4, i64 0, i32 1, i64 %169, i32 3
  %183 = load i64, ptr %182, align 8, !tbaa !78
  %184 = icmp slt i64 %181, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %165
  store i64 %183, ptr %180, align 8, !tbaa !112
  br label %186

186:                                              ; preds = %185, %165
  %187 = getelementptr inbounds %struct.gcov_summary, ptr %4, i64 0, i32 1, i64 %169, i32 4
  %188 = load i64, ptr %187, align 8, !tbaa !79
  %189 = getelementptr inbounds %struct.counts_entry, ptr %166, i64 0, i32 4, i32 4
  %190 = load i64, ptr %189, align 8, !tbaa !113
  %191 = add nsw i64 %190, %188
  store i64 %191, ptr %189, align 8, !tbaa !113
  %192 = getelementptr inbounds %struct.counts_entry, ptr %166, i64 0, i32 5
  %193 = load ptr, ptr %192, align 8, !tbaa !108
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %165, !llvm.loop !114

195:                                              ; preds = %186, %163
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #21
  br label %289

196:                                              ; preds = %130
  %197 = and i32 %114, 65535
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %289

199:                                              ; preds = %196
  %200 = add i32 %114, -27328512
  %201 = icmp ult i32 %200, 1048576
  %202 = icmp ne i32 %104, 0
  %203 = select i1 %201, i1 %202, i1 false
  br i1 %203, label %204, label %289

204:                                              ; preds = %199
  %205 = lshr i32 %200, 17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #21
  %206 = lshr i32 %126, 1
  store i32 %104, ptr %5, align 8, !tbaa !90
  store i32 %205, ptr %99, align 4, !tbaa !92
  %207 = load ptr, ptr @counts_hash, align 8, !tbaa !42
  %208 = call ptr @htab_find_slot(ptr noundef %207, ptr noundef nonnull %5, i32 noundef 1) #21
  %209 = load ptr, ptr %208, align 8, !tbaa !42
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %221

211:                                              ; preds = %204
  %212 = call ptr @xcalloc(i64 noundef 1, i64 noundef 64) #21
  store ptr %212, ptr %208, align 8, !tbaa !42
  %213 = load i32, ptr %5, align 8, !tbaa !90
  store i32 %213, ptr %212, align 8, !tbaa !90
  %214 = load i32, ptr %99, align 4, !tbaa !92
  %215 = getelementptr inbounds %struct.counts_entry, ptr %212, i64 0, i32 1
  store i32 %214, ptr %215, align 4, !tbaa !92
  %216 = getelementptr inbounds %struct.counts_entry, ptr %212, i64 0, i32 2
  store i32 %103, ptr %216, align 8, !tbaa !93
  %217 = getelementptr inbounds %struct.counts_entry, ptr %212, i64 0, i32 4
  store i32 %206, ptr %217, align 8, !tbaa !94
  %218 = zext nneg i32 %206 to i64
  %219 = call ptr @xcalloc(i64 noundef %218, i64 noundef 8) #21
  %220 = getelementptr inbounds %struct.counts_entry, ptr %212, i64 0, i32 3
  store ptr %219, ptr %220, align 8, !tbaa !95
  br label %242

221:                                              ; preds = %204
  %222 = getelementptr inbounds %struct.counts_entry, ptr %209, i64 0, i32 2
  %223 = load i32, ptr %222, align 8, !tbaa !93
  %224 = icmp eq i32 %223, %103
  br i1 %224, label %228, label %225

225:                                              ; preds = %221
  call void (ptr, ...) @error(ptr noundef nonnull @.str.36, i32 noundef %104) #21
  %226 = load i32, ptr %222, align 8, !tbaa !93
  call void (ptr, ...) @error(ptr noundef nonnull @.str.10, i32 noundef %226, i32 noundef %103) #21
  %227 = load ptr, ptr @counts_hash, align 8, !tbaa !42
  call void @htab_delete(ptr noundef %227) #21
  br label %285

228:                                              ; preds = %221
  %229 = getelementptr inbounds %struct.counts_entry, ptr %209, i64 0, i32 4
  %230 = load i32, ptr %229, align 8, !tbaa !94
  %231 = icmp eq i32 %230, %206
  br i1 %231, label %235, label %232

232:                                              ; preds = %228
  call void (ptr, ...) @error(ptr noundef nonnull @.str.36, i32 noundef %104) #21
  %233 = load i32, ptr %229, align 8, !tbaa !94
  call void (ptr, ...) @error(ptr noundef nonnull @.str.11, i32 noundef %233, i32 noundef %206) #21
  %234 = load ptr, ptr @counts_hash, align 8, !tbaa !42
  call void @htab_delete(ptr noundef %234) #21
  br label %285

235:                                              ; preds = %228
  %236 = load i32, ptr %99, align 4, !tbaa !92
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %242, label %238

238:                                              ; preds = %235
  %239 = zext i32 %236 to i64
  %240 = getelementptr inbounds [8 x ptr], ptr @ctr_names, i64 0, i64 %239
  %241 = load ptr, ptr %240, align 8, !tbaa !42
  call void (ptr, ...) @error(ptr noundef nonnull @.str.37, ptr noundef %241, i32 noundef %104) #21
  br label %285

242:                                              ; preds = %235, %211
  %243 = phi ptr [ %209, %235 ], [ %212, %211 ]
  %244 = load i32, ptr %99, align 4, !tbaa !92
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %253

246:                                              ; preds = %242
  %247 = getelementptr inbounds %struct.counts_entry, ptr %243, i64 0, i32 5
  %248 = load ptr, ptr %247, align 8, !tbaa !108
  %249 = icmp ne ptr %248, null
  %250 = icmp eq ptr %102, %243
  %251 = select i1 %249, i1 %250, i1 false
  br i1 %251, label %253, label %252

252:                                              ; preds = %246
  store ptr %102, ptr %247, align 8, !tbaa !108
  br label %253

253:                                              ; preds = %252, %246, %242
  %254 = phi ptr [ %243, %252 ], [ %102, %242 ], [ %102, %246 ]
  %255 = icmp ult i32 %126, 2
  br i1 %255, label %285, label %256

256:                                              ; preds = %253
  %257 = getelementptr inbounds %struct.counts_entry, ptr %243, i64 0, i32 3
  %258 = zext nneg i32 %206 to i64
  br label %259

259:                                              ; preds = %256, %277
  %260 = phi i64 [ 0, %256 ], [ %283, %277 ]
  %261 = call fastcc ptr @gcov_read_words(i32 noundef 2)
  %262 = icmp eq ptr %261, null
  br i1 %262, label %277, label %263

263:                                              ; preds = %259
  %264 = load i32, ptr %261, align 4, !tbaa !57
  %265 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 7), align 8, !tbaa !68
  %266 = icmp eq i32 %265, 0
  %267 = call i32 @llvm.bswap.i32(i32 %264)
  %268 = select i1 %266, i32 %264, i32 %267
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds i32, ptr %261, i64 1
  %271 = load i32, ptr %270, align 4, !tbaa !57
  %272 = call i32 @llvm.bswap.i32(i32 %271)
  %273 = select i1 %266, i32 %271, i32 %272
  %274 = zext i32 %273 to i64
  %275 = shl nuw i64 %274, 32
  %276 = or disjoint i64 %275, %269
  br label %277

277:                                              ; preds = %263, %259
  %278 = phi i64 [ %276, %263 ], [ 0, %259 ]
  %279 = load ptr, ptr %257, align 8, !tbaa !95
  %280 = getelementptr inbounds i64, ptr %279, i64 %260
  %281 = load i64, ptr %280, align 8, !tbaa !115
  %282 = add nsw i64 %281, %278
  store i64 %282, ptr %280, align 8, !tbaa !115
  %283 = add nuw nsw i64 %260, 1
  %284 = icmp eq i64 %283, %258
  br i1 %284, label %285, label %259, !llvm.loop !116

285:                                              ; preds = %277, %253, %238, %232, %225
  %286 = phi i1 [ false, %225 ], [ false, %232 ], [ true, %238 ], [ true, %253 ], [ true, %277 ]
  %287 = phi i32 [ 3, %225 ], [ 3, %232 ], [ 0, %238 ], [ 0, %253 ], [ 0, %277 ]
  %288 = phi ptr [ %102, %225 ], [ %102, %232 ], [ %102, %238 ], [ %254, %253 ], [ %254, %277 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #21
  br i1 %286, label %289, label %304

289:                                              ; preds = %158, %156, %285, %199, %196, %195, %153
  %290 = phi i32 [ 0, %153 ], [ 1, %195 ], [ %101, %196 ], [ %101, %285 ], [ %101, %199 ], [ 0, %156 ], [ 0, %158 ]
  %291 = phi ptr [ %102, %153 ], [ %102, %195 ], [ %102, %196 ], [ %288, %285 ], [ %102, %199 ], [ null, %156 ], [ null, %158 ]
  %292 = phi i32 [ %154, %153 ], [ %103, %195 ], [ %103, %196 ], [ %103, %285 ], [ %103, %199 ], [ %154, %156 ], [ %154, %158 ]
  %293 = phi i32 [ %144, %153 ], [ %104, %195 ], [ %104, %196 ], [ %104, %285 ], [ %104, %199 ], [ %144, %156 ], [ %144, %158 ]
  call void @gcov_sync(i32 noundef %133, i32 noundef %126)
  %294 = load ptr, ptr @gcov_var, align 8, !tbaa !61
  %295 = icmp eq ptr %294, null
  %296 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 5), align 8
  %297 = select i1 %295, i32 1, i32 %296
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %304, label %299

299:                                              ; preds = %289
  %300 = icmp slt i32 %297, 0
  %301 = select i1 %300, ptr @.str.38, ptr @.str.39
  %302 = load ptr, ptr @da_file_name, align 8, !tbaa !42
  call void (ptr, ...) @error(ptr noundef nonnull %301, ptr noundef %302) #21
  %303 = load ptr, ptr @counts_hash, align 8, !tbaa !42
  call void @htab_delete(ptr noundef %303) #21
  br label %304

304:                                              ; preds = %285, %299, %289
  %305 = phi i32 [ 3, %299 ], [ 0, %289 ], [ %287, %285 ]
  %306 = phi i32 [ %290, %299 ], [ %290, %289 ], [ %101, %285 ]
  %307 = phi ptr [ %291, %299 ], [ %291, %289 ], [ %288, %285 ]
  %308 = phi i32 [ %292, %299 ], [ %292, %289 ], [ %103, %285 ]
  %309 = phi i32 [ %293, %299 ], [ %293, %289 ], [ %104, %285 ]
  %310 = icmp eq i32 %305, 0
  br i1 %310, label %100, label %311

311:                                              ; preds = %304, %113
  %312 = call i32 @gcov_close()
  br label %313

313:                                              ; preds = %311, %79, %63, %47, %35
  ret void
}

declare ptr @getpwd() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #15

; Function Attrs: cold nounwind uwtable
define dso_local void @coverage_finish() local_unnamed_addr #9 !prof !105 {
  %1 = alloca ptr, align 8
  %2 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #21
  store i1 true, ptr @no_coverage, align 4
  %3 = load i32, ptr @prg_ctr_mask, align 4, !tbaa !57
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %315, label %5, !prof !106

5:                                                ; preds = %0, %5
  %6 = phi i32 [ %10, %5 ], [ 0, %0 ]
  %7 = phi i32 [ %11, %5 ], [ 0, %0 ]
  %8 = lshr i32 %3, %7
  %9 = and i32 %8, 1
  %10 = add i32 %9, %6
  %11 = add nuw nsw i32 %7, 1
  %12 = icmp eq i32 %11, 8
  br i1 %12, label %13, label %5, !llvm.loop !117

13:                                               ; preds = %5
  %14 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34), align 8, !tbaa !118
  %15 = tail call ptr %14(i32 noundef 16) #21
  %16 = tail call ptr @build_qualified_type(ptr noundef %15, i32 noundef 1) #21
  %17 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !80
  %18 = tail call ptr %17(i32 noundef 32, i32 noundef 1) #21
  %19 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 31, ptr noundef null, ptr noundef %18) #21
  %20 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 1
  store ptr null, ptr %20, align 8, !tbaa !53
  %21 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  %23 = tail call ptr @build_int_cstu(ptr noundef %22, i64 noundef 875574570) #21
  %24 = tail call ptr @tree_cons_stat(ptr noundef %19, ptr noundef %23, ptr noundef null) #21
  %25 = tail call ptr @build_pointer_type(ptr noundef %16) #21
  %26 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 31, ptr noundef null, ptr noundef %25) #21
  %27 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 1
  store ptr %19, ptr %27, align 8, !tbaa !53
  %28 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !42
  %29 = tail call ptr @tree_cons_stat(ptr noundef %26, ptr noundef %28, ptr noundef %24) #21
  %30 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !80
  %31 = tail call ptr %30(i32 noundef 32, i32 noundef 1) #21
  %32 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 31, ptr noundef null, ptr noundef %31) #21
  %33 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 1
  store ptr %26, ptr %33, align 8, !tbaa !53
  %34 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !53
  %36 = load i32, ptr @local_tick, align 4, !tbaa !57
  %37 = zext i32 %36 to i64
  %38 = tail call ptr @build_int_cstu(ptr noundef %35, i64 noundef %37) #21
  %39 = tail call ptr @tree_cons_stat(ptr noundef %32, ptr noundef %38, ptr noundef %29) #21
  %40 = load ptr, ptr @integer_types, align 16, !tbaa !42
  %41 = tail call ptr @build_qualified_type(ptr noundef %40, i32 noundef 1) #21
  %42 = tail call ptr @build_pointer_type(ptr noundef %41) #21
  %43 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 31, ptr noundef null, ptr noundef %42) #21
  %44 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 1
  store ptr %32, ptr %44, align 8, !tbaa !53
  %45 = load ptr, ptr @da_file_name, align 8, !tbaa !42
  %46 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %45)
  %47 = trunc i64 %46 to i32
  %48 = add nsw i32 %47, 1
  %49 = tail call ptr @build_string(i32 noundef %48, ptr noundef %45) #21
  %50 = load ptr, ptr @integer_types, align 16, !tbaa !42
  %51 = shl i64 %46, 32
  %52 = ashr exact i64 %51, 32
  %53 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %52) #21
  %54 = tail call ptr @build_index_type(ptr noundef %53) #21
  %55 = tail call ptr @build_array_type(ptr noundef %50, ptr noundef %54) #21
  %56 = getelementptr inbounds %struct.tree_common, ptr %49, i64 0, i32 2
  store ptr %55, ptr %56, align 8, !tbaa !53
  %57 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %42, ptr noundef %49) #21
  %58 = tail call ptr @tree_cons_stat(ptr noundef %43, ptr noundef %57, ptr noundef %39) #21
  %59 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34), align 8, !tbaa !118
  %60 = tail call ptr %59(i32 noundef 16) #21
  %61 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !80
  %62 = tail call ptr %61(i32 noundef 32, i32 noundef 1) #21
  %63 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 31, ptr noundef null, ptr noundef %62) #21
  %64 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !80
  %65 = tail call ptr %64(i32 noundef 32, i32 noundef 1) #21
  %66 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 31, ptr noundef null, ptr noundef %65) #21
  %67 = getelementptr inbounds %struct.tree_common, ptr %66, i64 0, i32 1
  store ptr %63, ptr %67, align 8, !tbaa !53
  %68 = add i32 %10, -1
  %69 = zext i32 %68 to i64
  %70 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %69) #21
  %71 = tail call ptr @build_index_type(ptr noundef %70) #21
  %72 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !80
  %73 = tail call ptr %72(i32 noundef 32, i32 noundef 1) #21
  %74 = tail call ptr @build_array_type(ptr noundef %73, ptr noundef %71) #21
  %75 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 31, ptr noundef null, ptr noundef %74) #21
  %76 = getelementptr inbounds %struct.tree_common, ptr %75, i64 0, i32 1
  store ptr %66, ptr %76, align 8, !tbaa !53
  tail call void @finish_builtin_struct(ptr noundef %60, ptr noundef nonnull @.str.43, ptr noundef %75, ptr noundef null) #21
  %77 = tail call ptr @build_qualified_type(ptr noundef %60, i32 noundef 1) #21
  %78 = tail call ptr @build_pointer_type(ptr noundef %77) #21
  %79 = load ptr, ptr @functions_head, align 8, !tbaa !42
  %80 = icmp eq ptr %79, null
  br i1 %80, label %138, label %81

81:                                               ; preds = %13
  %82 = getelementptr inbounds %struct.tree_type, ptr %60, i64 0, i32 1
  br label %83

83:                                               ; preds = %81, %126
  %84 = phi ptr [ %79, %81 ], [ %136, %126 ]
  %85 = phi i32 [ 0, %81 ], [ %135, %126 ]
  %86 = phi ptr [ null, %81 ], [ %134, %126 ]
  %87 = load ptr, ptr %82, align 8, !tbaa !53
  %88 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !80
  %89 = tail call ptr %88(i32 noundef 32, i32 noundef 1) #21
  %90 = getelementptr inbounds %struct.function_list, ptr %84, i64 0, i32 1
  %91 = load i32, ptr %90, align 8, !tbaa !102
  %92 = zext i32 %91 to i64
  %93 = tail call ptr @build_int_cstu(ptr noundef %89, i64 noundef %92) #21
  %94 = tail call ptr @tree_cons_stat(ptr noundef %87, ptr noundef %93, ptr noundef null) #21
  %95 = getelementptr inbounds %struct.tree_common, ptr %87, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !53
  %97 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !80
  %98 = tail call ptr %97(i32 noundef 32, i32 noundef 1) #21
  %99 = getelementptr inbounds %struct.function_list, ptr %84, i64 0, i32 2
  %100 = load i32, ptr %99, align 4, !tbaa !103
  %101 = zext i32 %100 to i64
  %102 = tail call ptr @build_int_cstu(ptr noundef %98, i64 noundef %101) #21
  %103 = tail call ptr @tree_cons_stat(ptr noundef %96, ptr noundef %102, ptr noundef %94) #21
  %104 = getelementptr inbounds %struct.tree_common, ptr %96, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !53
  br label %106

106:                                              ; preds = %83, %122
  %107 = phi i64 [ 0, %83 ], [ %124, %122 ]
  %108 = phi ptr [ null, %83 ], [ %123, %122 ]
  %109 = load i32, ptr @prg_ctr_mask, align 4, !tbaa !57
  %110 = trunc i64 %107 to i32
  %111 = shl nuw i32 1, %110
  %112 = and i32 %109, %111
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %122, label %114

114:                                              ; preds = %106
  %115 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !80
  %116 = tail call ptr %115(i32 noundef 32, i32 noundef 1) #21
  %117 = getelementptr inbounds %struct.function_list, ptr %84, i64 0, i32 3, i64 %107
  %118 = load i32, ptr %117, align 4, !tbaa !57
  %119 = zext i32 %118 to i64
  %120 = tail call ptr @build_int_cstu(ptr noundef %116, i64 noundef %119) #21
  %121 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %120, ptr noundef %108) #21
  br label %122

122:                                              ; preds = %114, %106
  %123 = phi ptr [ %121, %114 ], [ %108, %106 ]
  %124 = add nuw nsw i64 %107, 1
  %125 = icmp eq i64 %124, 8
  br i1 %125, label %126, label %106, !llvm.loop !119

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.tree_common, ptr %105, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !53
  %129 = tail call ptr @nreverse(ptr noundef %123) #21
  %130 = tail call ptr @build_constructor_from_list(ptr noundef %128, ptr noundef %129) #21
  %131 = tail call ptr @tree_cons_stat(ptr noundef %105, ptr noundef %130, ptr noundef %103) #21
  %132 = tail call ptr @nreverse(ptr noundef %131) #21
  %133 = tail call ptr @build_constructor_from_list(ptr noundef %60, ptr noundef %132) #21
  %134 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %133, ptr noundef %86) #21
  %135 = add i32 %85, 1
  %136 = load ptr, ptr %84, align 8, !tbaa !42
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %83, !llvm.loop !120

138:                                              ; preds = %126, %13
  %139 = phi ptr [ null, %13 ], [ %134, %126 ]
  %140 = phi i32 [ 0, %13 ], [ %135, %126 ]
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %151, label %142

142:                                              ; preds = %138
  %143 = add i32 %140, -1
  %144 = zext i32 %143 to i64
  %145 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %144) #21
  %146 = tail call ptr @build_index_type(ptr noundef %145) #21
  %147 = tail call ptr @build_array_type(ptr noundef %60, ptr noundef %146) #21
  %148 = tail call ptr @nreverse(ptr noundef %139) #21
  %149 = tail call ptr @build_constructor_from_list(ptr noundef %147, ptr noundef %148) #21
  %150 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %78, ptr noundef %149) #21
  br label %153

151:                                              ; preds = %138
  %152 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !42
  br label %153

153:                                              ; preds = %151, %142
  %154 = phi ptr [ %150, %142 ], [ %152, %151 ]
  %155 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !80
  %156 = tail call ptr %155(i32 noundef 32, i32 noundef 1) #21
  %157 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 31, ptr noundef null, ptr noundef %156) #21
  %158 = getelementptr inbounds %struct.tree_common, ptr %157, i64 0, i32 1
  store ptr %43, ptr %158, align 8, !tbaa !53
  %159 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !80
  %160 = tail call ptr %159(i32 noundef 32, i32 noundef 1) #21
  %161 = zext i32 %140 to i64
  %162 = tail call ptr @build_int_cstu(ptr noundef %160, i64 noundef %161) #21
  %163 = tail call ptr @tree_cons_stat(ptr noundef %157, ptr noundef %162, ptr noundef %58) #21
  %164 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 31, ptr noundef null, ptr noundef %78) #21
  %165 = getelementptr inbounds %struct.tree_common, ptr %164, i64 0, i32 1
  store ptr %157, ptr %165, align 8, !tbaa !53
  %166 = tail call ptr @tree_cons_stat(ptr noundef %164, ptr noundef %154, ptr noundef %163) #21
  %167 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !80
  %168 = tail call ptr %167(i32 noundef 32, i32 noundef 1) #21
  %169 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 31, ptr noundef null, ptr noundef %168) #21
  %170 = getelementptr inbounds %struct.tree_common, ptr %169, i64 0, i32 1
  store ptr %164, ptr %170, align 8, !tbaa !53
  %171 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !80
  %172 = tail call ptr %171(i32 noundef 32, i32 noundef 1) #21
  %173 = load i32, ptr @prg_ctr_mask, align 4, !tbaa !57
  %174 = zext i32 %173 to i64
  %175 = tail call ptr @build_int_cstu(ptr noundef %172, i64 noundef %174) #21
  %176 = tail call ptr @tree_cons_stat(ptr noundef %169, ptr noundef %175, ptr noundef %166) #21
  %177 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34), align 8, !tbaa !118
  %178 = tail call ptr %177(i32 noundef 16) #21
  %179 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !80
  %180 = tail call ptr %179(i32 noundef 64, i32 noundef 0) #21
  %181 = tail call ptr @build_pointer_type(ptr noundef %180) #21
  %182 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !80
  %183 = tail call ptr %182(i32 noundef 32, i32 noundef 1) #21
  %184 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 31, ptr noundef null, ptr noundef %183) #21
  %185 = getelementptr inbounds %struct.tree_common, ptr %184, i64 0, i32 1
  store ptr null, ptr %185, align 8, !tbaa !53
  %186 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 31, ptr noundef null, ptr noundef %181) #21
  %187 = getelementptr inbounds %struct.tree_common, ptr %186, i64 0, i32 1
  store ptr %184, ptr %187, align 8, !tbaa !53
  %188 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !42
  %189 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !80
  %190 = tail call ptr %189(i32 noundef 32, i32 noundef 1) #21
  %191 = tail call ptr (ptr, ...) @build_function_type_list(ptr noundef %188, ptr noundef %181, ptr noundef %190, ptr noundef null) #21
  %192 = tail call ptr @build_pointer_type(ptr noundef %191) #21
  %193 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 31, ptr noundef null, ptr noundef %192) #21
  %194 = getelementptr inbounds %struct.tree_common, ptr %193, i64 0, i32 1
  store ptr %186, ptr %194, align 8, !tbaa !53
  tail call void @finish_builtin_struct(ptr noundef %178, ptr noundef nonnull @.str.44, ptr noundef %193, ptr noundef null) #21
  %195 = zext i32 %10 to i64
  %196 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %195) #21
  %197 = tail call ptr @build_index_type(ptr noundef %196) #21
  %198 = tail call ptr @build_array_type(ptr noundef %178, ptr noundef %197) #21
  %199 = getelementptr inbounds %struct.tree_type, ptr %178, i64 0, i32 1
  br label %200

200:                                              ; preds = %153, %278
  %201 = phi i64 [ 0, %153 ], [ %280, %278 ]
  %202 = phi ptr [ null, %153 ], [ %279, %278 ]
  %203 = load i32, ptr @prg_ctr_mask, align 4, !tbaa !57
  %204 = trunc i64 %201 to i32
  %205 = shl nuw i32 1, %204
  %206 = and i32 %203, %205
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %278, label %208

208:                                              ; preds = %200
  %209 = load ptr, ptr %199, align 8, !tbaa !53
  %210 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !80
  %211 = tail call ptr %210(i32 noundef 32, i32 noundef 1) #21
  %212 = getelementptr inbounds [8 x i32], ptr @prg_n_ctrs, i64 0, i64 %201
  %213 = load i32, ptr %212, align 4, !tbaa !57
  %214 = zext i32 %213 to i64
  %215 = tail call ptr @build_int_cstu(ptr noundef %211, i64 noundef %214) #21
  %216 = tail call ptr @tree_cons_stat(ptr noundef %209, ptr noundef %215, ptr noundef null) #21
  %217 = getelementptr inbounds %struct.tree_common, ptr %209, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !53
  %219 = load i32, ptr %212, align 4, !tbaa !57
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %249, label %221

221:                                              ; preds = %208
  %222 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !80
  %223 = tail call ptr %222(i32 noundef 32, i32 noundef 1) #21
  %224 = load i32, ptr %212, align 4, !tbaa !57
  %225 = add i32 %224, -1
  %226 = zext i32 %225 to i64
  %227 = tail call ptr @build_int_cstu(ptr noundef %223, i64 noundef %226) #21
  %228 = tail call ptr @build_index_type(ptr noundef %227) #21
  %229 = getelementptr inbounds %struct.tree_common, ptr %218, i64 0, i32 2
  %230 = load ptr, ptr %229, align 8, !tbaa !53
  %231 = getelementptr inbounds %struct.tree_common, ptr %230, i64 0, i32 2
  %232 = load ptr, ptr %231, align 8, !tbaa !53
  %233 = tail call ptr @build_array_type(ptr noundef %232, ptr noundef %228) #21
  %234 = getelementptr inbounds [8 x ptr], ptr @tree_ctr_tables, i64 0, i64 %201
  %235 = load ptr, ptr %234, align 8, !tbaa !42
  %236 = getelementptr inbounds %struct.tree_common, ptr %235, i64 0, i32 2
  store ptr %233, ptr %236, align 8, !tbaa !53
  %237 = getelementptr inbounds %struct.tree_type, ptr %233, i64 0, i32 2
  %238 = load ptr, ptr %237, align 8, !tbaa !53
  %239 = load ptr, ptr %234, align 8, !tbaa !42
  %240 = getelementptr inbounds %struct.tree_decl_common, ptr %239, i64 0, i32 1
  store ptr %238, ptr %240, align 8, !tbaa !53
  %241 = getelementptr inbounds %struct.tree_type, ptr %233, i64 0, i32 3
  %242 = load ptr, ptr %241, align 8, !tbaa !53
  %243 = load ptr, ptr %234, align 8, !tbaa !42
  %244 = getelementptr inbounds %struct.tree_decl_common, ptr %243, i64 0, i32 4
  store ptr %242, ptr %244, align 8, !tbaa !53
  %245 = load ptr, ptr %234, align 8, !tbaa !42
  tail call void @varpool_finalize_decl(ptr noundef %245) #21
  %246 = load ptr, ptr %229, align 8, !tbaa !53
  %247 = load ptr, ptr %234, align 8, !tbaa !42
  %248 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %246, ptr noundef %247) #21
  br label %251

249:                                              ; preds = %208
  %250 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !42
  br label %251

251:                                              ; preds = %249, %221
  %252 = phi ptr [ %250, %249 ], [ %248, %221 ]
  %253 = tail call ptr @tree_cons_stat(ptr noundef %218, ptr noundef %252, ptr noundef %216) #21
  %254 = getelementptr inbounds %struct.tree_common, ptr %218, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !53
  %256 = shl i64 %201, 2
  %257 = call ptr @llvm.load.relative.i64(ptr @reltable.coverage_finish, i64 %256)
  %258 = tail call ptr @get_identifier(ptr noundef %257) #21
  %259 = getelementptr inbounds %struct.tree_common, ptr %255, i64 0, i32 2
  %260 = load ptr, ptr %259, align 8, !tbaa !53
  %261 = getelementptr inbounds %struct.tree_common, ptr %260, i64 0, i32 2
  %262 = load ptr, ptr %261, align 8, !tbaa !53
  %263 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 29, ptr noundef %258, ptr noundef %262) #21
  %264 = getelementptr inbounds %struct.tree_decl_common, ptr %263, i64 0, i32 2
  %265 = load i64, ptr %264, align 8
  %266 = or i64 %265, 33554432
  store i64 %266, ptr %264, align 8
  %267 = load i64, ptr %263, align 8
  %268 = or i64 %267, 134217728
  store i64 %268, ptr %263, align 8
  %269 = or i64 %265, 33558528
  store i64 %269, ptr %264, align 8
  %270 = or i64 %267, 167772160
  store i64 %270, ptr %263, align 8
  %271 = tail call ptr @decl_assembler_name(ptr noundef nonnull %263) #21
  %272 = load ptr, ptr %259, align 8, !tbaa !53
  %273 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %272, ptr noundef nonnull %263) #21
  %274 = tail call ptr @tree_cons_stat(ptr noundef %255, ptr noundef %273, ptr noundef %253) #21
  %275 = tail call ptr @nreverse(ptr noundef %274) #21
  %276 = tail call ptr @build_constructor_from_list(ptr noundef %178, ptr noundef %275) #21
  %277 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %276, ptr noundef %202) #21
  br label %278

278:                                              ; preds = %251, %200
  %279 = phi ptr [ %277, %251 ], [ %202, %200 ]
  %280 = add nuw nsw i64 %201, 1
  %281 = icmp eq i64 %280, 8
  br i1 %281, label %282, label %200, !llvm.loop !121

282:                                              ; preds = %278
  %283 = tail call ptr @nreverse(ptr noundef %279) #21
  %284 = tail call ptr @build_constructor_from_list(ptr noundef %198, ptr noundef %283) #21
  %285 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 31, ptr noundef null, ptr noundef %198) #21
  %286 = getelementptr inbounds %struct.tree_common, ptr %285, i64 0, i32 1
  store ptr %169, ptr %286, align 8, !tbaa !53
  %287 = tail call ptr @tree_cons_stat(ptr noundef %285, ptr noundef %284, ptr noundef %176) #21
  tail call void @finish_builtin_struct(ptr noundef %15, ptr noundef nonnull @.str.42, ptr noundef %285, ptr noundef null) #21
  %288 = tail call ptr @nreverse(ptr noundef %287) #21
  %289 = tail call ptr @build_constructor_from_list(ptr noundef %15, ptr noundef %288) #21
  %290 = getelementptr inbounds %struct.tree_common, ptr %289, i64 0, i32 2
  %291 = load ptr, ptr %290, align 8, !tbaa !53
  %292 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 32, ptr noundef null, ptr noundef %291) #21
  %293 = load i64, ptr %292, align 8
  %294 = or i64 %293, 67108864
  store i64 %294, ptr %292, align 8
  %295 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull @.str.17, i32 noundef 0)
  %296 = call ptr @get_identifier(ptr noundef nonnull %2) #21
  %297 = getelementptr inbounds %struct.tree_decl_minimal, ptr %292, i64 0, i32 3
  store ptr %296, ptr %297, align 8, !tbaa !53
  %298 = getelementptr inbounds %struct.tree_decl_common, ptr %292, i64 0, i32 5
  store ptr %289, ptr %298, align 8, !tbaa !53
  call void @varpool_finalize_decl(ptr noundef nonnull %292) #21
  %299 = getelementptr inbounds %struct.tree_common, ptr %292, i64 0, i32 2
  %300 = load ptr, ptr %299, align 8, !tbaa !53
  %301 = call ptr @build_pointer_type(ptr noundef %300) #21
  %302 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !42
  %303 = call ptr (ptr, ...) @build_function_type_list(ptr noundef %302, ptr noundef %301, ptr noundef null) #21
  %304 = call ptr @get_identifier(ptr noundef nonnull @.str.41) #21
  %305 = call ptr @build_decl_stat(i32 noundef 1, i32 noundef 29, ptr noundef %304, ptr noundef %303) #21
  %306 = load i64, ptr %305, align 8
  %307 = or i64 %306, 134217728
  store i64 %307, ptr %305, align 8
  %308 = getelementptr inbounds %struct.tree_decl_common, ptr %305, i64 0, i32 2
  %309 = load i64, ptr %308, align 8
  %310 = or i64 %309, 33554432
  store i64 %310, ptr %308, align 8
  %311 = call ptr @decl_assembler_name(ptr noundef nonnull %305) #21
  store ptr null, ptr %1, align 8, !tbaa !42
  %312 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %292) #21
  %313 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef nonnull %305, i32 noundef 1, ptr noundef %312) #21
  call void @append_to_statement_list(ptr noundef %313, ptr noundef nonnull %1) #21
  %314 = load ptr, ptr %1, align 8, !tbaa !42
  call void @cgraph_build_static_cdtor(i8 noundef signext 73, ptr noundef %314, i32 noundef 65535) #21
  br label %315

315:                                              ; preds = %0, %282
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #21
  %316 = load i1, ptr @bbg_file_opened, align 4
  br i1 %316, label %317, label %329, !prof !107

317:                                              ; preds = %315
  %318 = call i32 @gcov_close()
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %323, label %320

320:                                              ; preds = %317
  %321 = load ptr, ptr @bbg_file_name, align 8, !tbaa !42
  %322 = call i32 @unlink(ptr noundef %321)
  br label %323

323:                                              ; preds = %320, %317
  %324 = load i32, ptr @local_tick, align 4, !tbaa !57
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %329

326:                                              ; preds = %323
  %327 = load ptr, ptr @da_file_name, align 8, !tbaa !42
  %328 = call i32 @unlink(ptr noundef %327)
  br label %329

329:                                              ; preds = %323, %326, %315
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #1

declare void @gt_ggc_mx_rtx_def(ptr noundef) #3

declare void @gt_pch_nx_rtx_def(ptr noundef) #3

declare void @gt_ggc_mx_lang_tree_node(ptr noundef) #3

declare void @gt_pch_nx_lang_tree_node(ptr noundef) #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #14

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @coverage_checksum_string(i32 noundef %0, ptr noundef %1) unnamed_addr #9 !prof !41 {
  %3 = load i8, ptr %1, align 1, !tbaa !53
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %97, label %11

5:                                                ; preds = %93
  %6 = add nsw i32 %95, 1
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %94, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !53
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %97, label %11, !llvm.loop !122

11:                                               ; preds = %2, %5
  %12 = phi ptr [ %8, %5 ], [ %1, %2 ]
  %13 = phi ptr [ %96, %5 ], [ null, %2 ]
  %14 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %15 = phi ptr [ %94, %5 ], [ %1, %2 ]
  %16 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(12) @.str.32, i64 noundef 11)
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 11, i32 0
  %19 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(10) @.str.33, i64 noundef 9)
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 9, i32 %18
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %93, label %23

23:                                               ; preds = %11
  %24 = add i32 %21, %14
  %25 = add nuw nsw i32 %21, 10
  %26 = add i32 %25, %14
  %27 = sext i32 %24 to i64
  br label %28

28:                                               ; preds = %86, %23
  %29 = phi i64 [ %89, %86 ], [ %27, %23 ]
  %30 = phi i32 [ %90, %86 ], [ 0, %23 ]
  %31 = phi ptr [ %87, %86 ], [ %15, %23 ]
  %32 = phi ptr [ %88, %86 ], [ %13, %23 ]
  %33 = add i32 %26, %30
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, ptr %31, i64 %29
  %36 = load i8, ptr %35, align 1, !tbaa !53
  switch i8 %36, label %86 [
    i8 0, label %91
    i8 95, label %37
  ]

37:                                               ; preds = %28, %47
  %38 = phi i64 [ %48, %47 ], [ 1, %28 ]
  %39 = add nsw i64 %38, %29
  %40 = getelementptr inbounds i8, ptr %31, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !53
  %42 = add i8 %41, -48
  %43 = icmp ult i8 %42, 10
  %44 = add i8 %41, -65
  %45 = icmp ult i8 %44, 6
  %46 = or i1 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %37
  %48 = add nuw nsw i64 %38, 1
  %49 = icmp eq i64 %48, 9
  br i1 %49, label %52, label %37, !llvm.loop !123

50:                                               ; preds = %37
  %51 = trunc i64 %38 to i32
  br label %52

52:                                               ; preds = %47, %50
  %53 = phi i32 [ %51, %50 ], [ 9, %47 ]
  %54 = icmp eq i32 %53, 9
  br i1 %54, label %55, label %86

55:                                               ; preds = %52
  %56 = add nsw i64 %29, 9
  %57 = getelementptr inbounds i8, ptr %31, i64 %56
  %58 = load i8, ptr %57, align 1, !tbaa !53
  %59 = icmp eq i8 %58, 95
  br i1 %59, label %60, label %86

60:                                               ; preds = %55, %70
  %61 = phi i64 [ %71, %70 ], [ 10, %55 ]
  %62 = add nsw i64 %61, %29
  %63 = getelementptr inbounds i8, ptr %31, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !53
  %65 = add i8 %64, -48
  %66 = icmp ult i8 %65, 10
  %67 = add i8 %64, -65
  %68 = icmp ult i8 %67, 6
  %69 = or i1 %66, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %60
  %71 = add nuw nsw i64 %61, 1
  %72 = icmp eq i64 %71, 18
  br i1 %72, label %75, label %60, !llvm.loop !124

73:                                               ; preds = %60
  %74 = trunc i64 %61 to i32
  br label %75

75:                                               ; preds = %70, %73
  %76 = phi i32 [ %74, %73 ], [ 18, %70 ]
  %77 = icmp eq i32 %76, 18
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = icmp eq ptr %32, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %78
  %81 = tail call ptr @xstrdup(ptr noundef %31) #21
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi ptr [ %31, %78 ], [ %81, %80 ]
  %84 = phi ptr [ %32, %78 ], [ %81, %80 ]
  %85 = getelementptr i8, ptr %84, i64 %34
  store i64 3472328296227680304, ptr %85, align 1
  br label %86

86:                                               ; preds = %82, %75, %52, %55, %28
  %87 = phi ptr [ %31, %28 ], [ %31, %55 ], [ %31, %52 ], [ %31, %75 ], [ %83, %82 ]
  %88 = phi ptr [ %32, %28 ], [ %32, %55 ], [ %32, %52 ], [ %32, %75 ], [ %84, %82 ]
  %89 = add i64 %29, 1
  %90 = add i32 %30, 1
  br label %28, !llvm.loop !125

91:                                               ; preds = %28
  %92 = trunc i64 %29 to i32
  br label %93

93:                                               ; preds = %91, %11
  %94 = phi ptr [ %15, %11 ], [ %31, %91 ]
  %95 = phi i32 [ %14, %11 ], [ %92, %91 ]
  %96 = phi ptr [ %13, %11 ], [ %32, %91 ]
  br i1 %22, label %5, label %97

97:                                               ; preds = %5, %93, %2
  %98 = phi ptr [ %1, %2 ], [ %94, %93 ], [ %94, %5 ]
  %99 = phi ptr [ null, %2 ], [ %96, %93 ], [ %96, %5 ]
  %100 = tail call i32 @crc32_string(i32 noundef %0, ptr noundef %98) #21
  %101 = icmp eq ptr %99, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  tail call void @free(ptr noundef %99)
  br label %103

103:                                              ; preds = %102, %97
  ret i32 %100
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #13

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #3

declare i32 @crc32_string(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @htab_counts_entry_hash(ptr nocapture noundef readonly %0) #16 !prof !41 {
  %2 = load i32, ptr %0, align 8, !tbaa !90
  %3 = shl i32 %2, 3
  %4 = getelementptr inbounds %struct.counts_entry, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !92
  %6 = add i32 %3, %5
  ret i32 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @htab_counts_entry_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #16 !prof !41 {
  %3 = load i32, ptr %0, align 8, !tbaa !90
  %4 = load i32, ptr %1, align 8, !tbaa !90
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.counts_entry, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !92
  %9 = getelementptr inbounds %struct.counts_entry, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !92
  %11 = icmp eq i32 %8, %10
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i32 [ 0, %2 ], [ %12, %6 ]
  ret i32 %14
}

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define internal void @htab_counts_entry_del(ptr nocapture noundef %0) #17 !prof !41 {
  %2 = getelementptr inbounds %struct.counts_entry, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  tail call void @free(ptr noundef %3)
  tail call void @free(ptr noundef %0)
  ret void
}

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

declare void @varpool_finalize_decl(ptr noundef) local_unnamed_addr #3

declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #3

declare ptr @build_function_type_list(ptr noundef, ...) local_unnamed_addr #3

declare ptr @build_call_expr_loc(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare void @append_to_statement_list(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cgraph_build_static_cdtor(i8 noundef signext, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build_qualified_type(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cstu(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @build_string(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_index_type(ptr noundef) local_unnamed_addr #3

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_constructor_from_list(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @nreverse(ptr noundef) local_unnamed_addr #3

declare void @finish_builtin_struct(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #18

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #20

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
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #21 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!40}

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
!34 = distinct !{!35, !36, !37, !38, !39}
!35 = !{ptr @coverage_init, ptr @strlen, i64 4}
!36 = !{ptr @coverage_init, ptr @getpwd, i64 1}
!37 = !{ptr @coverage_init, ptr @xmalloc, i64 2}
!38 = !{ptr @coverage_init, ptr @strcpy, i64 2}
!39 = !{ptr @coverage_init, ptr @strcat, i64 1}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 0}
!42 = !{!43, !43, i64 0}
!43 = !{!"any pointer", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !{!47, !43, i64 8}
!47 = !{!"_IO_FILE", !48, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !48, i64 112, !48, i64 116, !49, i64 120, !50, i64 128, !44, i64 130, !44, i64 131, !43, i64 136, !49, i64 144, !43, i64 152, !43, i64 160, !43, i64 168, !43, i64 176, !49, i64 184, !48, i64 192, !44, i64 196}
!48 = !{!"int", !44, i64 0}
!49 = !{!"long", !44, i64 0}
!50 = !{!"short", !44, i64 0}
!51 = !{!47, !43, i64 16}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{!44, !44, i64 0}
!54 = !{!47, !43, i64 40}
!55 = !{!47, !43, i64 48}
!56 = !{!47, !48, i64 0}
!57 = !{!48, !48, i64 0}
!58 = distinct !{!58, !59, !60}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!"llvm.loop.unroll.disable"}
!61 = !{!62, !43, i64 0}
!62 = !{!"gcov_var", !43, i64 0, !48, i64 8, !48, i64 12, !48, i64 16, !48, i64 20, !48, i64 24, !48, i64 28, !48, i64 32, !49, i64 40, !43, i64 48}
!63 = !{!62, !48, i64 8}
!64 = !{!62, !48, i64 16}
!65 = !{!62, !48, i64 12}
!66 = !{!62, !48, i64 20}
!67 = !{!62, !48, i64 24}
!68 = !{!62, !48, i64 32}
!69 = !{!62, !48, i64 28}
!70 = !{!62, !43, i64 48}
!71 = !{!62, !49, i64 40}
!72 = !{!73, !48, i64 0}
!73 = !{!"gcov_summary", !48, i64 0, !44, i64 8}
!74 = !{!75, !48, i64 0}
!75 = !{!"gcov_ctr_summary", !48, i64 0, !48, i64 4, !49, i64 8, !49, i64 16, !49, i64 24}
!76 = !{!75, !48, i64 4}
!77 = !{!75, !49, i64 8}
!78 = !{!75, !49, i64 16}
!79 = !{!75, !49, i64 24}
!80 = !{!81, !43, i64 456}
!81 = !{!"lang_hooks", !43, i64 0, !49, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112, !43, i64 120, !43, i64 128, !43, i64 136, !43, i64 144, !43, i64 152, !43, i64 160, !43, i64 168, !43, i64 176, !43, i64 184, !43, i64 192, !43, i64 200, !43, i64 208, !43, i64 216, !43, i64 224, !43, i64 232, !82, i64 240, !83, i64 248, !84, i64 256, !85, i64 272, !86, i64 432, !87, i64 560, !43, i64 584, !43, i64 592, !43, i64 600, !43, i64 608, !43, i64 616, !43, i64 624, !43, i64 632, !43, i64 640, !43, i64 648, !43, i64 656, !43, i64 664, !44, i64 672}
!82 = !{!"lang_hooks_for_tree_inlining", !43, i64 0}
!83 = !{!"lang_hooks_for_callgraph", !43, i64 0}
!84 = !{!"lang_hooks_for_tree_dump", !43, i64 0, !43, i64 8}
!85 = !{!"lang_hooks_for_decls", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112, !43, i64 120, !43, i64 128, !43, i64 136, !43, i64 144, !43, i64 152}
!86 = !{!"lang_hooks_for_types", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !43, i64 104, !43, i64 112, !44, i64 120}
!87 = !{!"lang_hooks_for_lto", !43, i64 0, !43, i64 8, !43, i64 16}
!88 = !{!89, !48, i64 108}
!89 = !{!"function", !43, i64 0, !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !43, i64 72, !43, i64 80, !43, i64 88, !43, i64 96, !48, i64 104, !48, i64 108, !48, i64 112, !48, i64 116, !48, i64 120, !48, i64 124, !43, i64 128, !48, i64 136, !48, i64 137, !48, i64 138, !48, i64 138, !48, i64 138, !48, i64 138, !48, i64 138, !48, i64 138, !48, i64 138, !48, i64 139, !48, i64 139, !48, i64 139, !48, i64 139, !48, i64 139, !48, i64 139, !48, i64 139}
!90 = !{!91, !48, i64 0}
!91 = !{!"counts_entry", !48, i64 0, !48, i64 4, !48, i64 8, !43, i64 16, !75, i64 24, !43, i64 56}
!92 = !{!91, !48, i64 4}
!93 = !{!91, !48, i64 8}
!94 = !{!91, !48, i64 24}
!95 = !{!91, !43, i64 16}
!96 = !{!97, !48, i64 8}
!97 = !{!"", !43, i64 0, !48, i64 8, !48, i64 12, !44, i64 16}
!98 = !{!97, !43, i64 0}
!99 = !{i32 0, i32 2}
!100 = !{!101, !43, i64 0}
!101 = !{!"function_list", !43, i64 0, !48, i64 8, !48, i64 12, !44, i64 16}
!102 = !{!101, !48, i64 8}
!103 = !{!101, !48, i64 12}
!104 = distinct !{!104, !59, !60}
!105 = !{!"function_entry_count", i64 1}
!106 = !{!"branch_weights", i32 1, i32 0}
!107 = !{!"branch_weights", i32 0, i32 1}
!108 = !{!91, !43, i64 56}
!109 = distinct !{!109, !59, !60}
!110 = !{!91, !48, i64 28}
!111 = !{!91, !49, i64 32}
!112 = !{!91, !49, i64 40}
!113 = !{!91, !49, i64 48}
!114 = distinct !{!114, !59, !60}
!115 = !{!49, !49, i64 0}
!116 = distinct !{!116, !59, !60}
!117 = distinct !{!117, !59, !60}
!118 = !{!81, !43, i64 432}
!119 = distinct !{!119, !59, !60}
!120 = distinct !{!120, !59, !60}
!121 = distinct !{!121, !59, !60}
!122 = distinct !{!122, !59, !60}
!123 = distinct !{!123, !59, !60}
!124 = distinct !{!124, !59, !60}
!125 = distinct !{!125, !59, !60}
