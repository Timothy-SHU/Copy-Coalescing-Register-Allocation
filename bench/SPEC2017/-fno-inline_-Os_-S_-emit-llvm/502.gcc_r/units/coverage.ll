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
@reltable.build_ctr_info_value = internal unnamed_addr constant [8 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.45 to i64), i64 ptrtoint (ptr @reltable.build_ctr_info_value to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.45 to i64), i64 ptrtoint (ptr @reltable.build_ctr_info_value to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.45 to i64), i64 ptrtoint (ptr @reltable.build_ctr_info_value to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.46 to i64), i64 ptrtoint (ptr @reltable.build_ctr_info_value to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.47 to i64), i64 ptrtoint (ptr @reltable.build_ctr_info_value to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.46 to i64), i64 ptrtoint (ptr @reltable.build_ctr_info_value to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.45 to i64), i64 ptrtoint (ptr @reltable.build_ctr_info_value to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.48 to i64), i64 ptrtoint (ptr @reltable.build_ctr_info_value to i64)) to i32)], align 4
@.str.45 = private unnamed_addr constant [17 x i8] c"__gcov_merge_add\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"__gcov_merge_single\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"__gcov_merge_delta\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"__gcov_merge_ior\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @gcov_open(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @gcov_var, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 77, ptr noundef nonnull @.str.1) #16
  br label %6

6:                                                ; preds = %2, %5
  store <4 x i32> <i32 0, i32 0, i32 0, i32 -1>, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 1), align 8, !tbaa !12
  store i32 0, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 5), align 8, !tbaa !13
  store i32 0, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 7), align 8, !tbaa !14
  %7 = icmp sgt i32 %1, -1
  br i1 %7, label %8, label %12

8:                                                ; preds = %6
  %9 = icmp eq i32 %1, 0
  %10 = select i1 %9, ptr @.str.3, ptr @.str.2
  %11 = tail call ptr @fopen_unlocked(ptr noundef %0, ptr noundef nonnull %10) #16
  store ptr %11, ptr @gcov_var, align 8, !tbaa !5
  br label %14

12:                                               ; preds = %6
  %13 = load ptr, ptr @gcov_var, align 8, !tbaa !5
  br label %14

14:                                               ; preds = %12, %8
  %15 = phi ptr [ %13, %12 ], [ %11, %8 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = icmp slt i32 %1, 1
  br i1 %18, label %19, label %28

19:                                               ; preds = %17
  %20 = tail call ptr @fopen_unlocked(ptr noundef %0, ptr noundef nonnull @.str.4) #16
  store ptr %20, ptr @gcov_var, align 8, !tbaa !5
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = shl nsw i32 %1, 1
  %24 = or disjoint i32 %23, 1
  br label %25

25:                                               ; preds = %14, %22
  %26 = phi i32 [ %24, %22 ], [ 1, %14 ]
  %27 = phi ptr [ %20, %22 ], [ %15, %14 ]
  store i32 %26, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 6), align 4, !tbaa !15
  tail call void @setbuf(ptr noundef nonnull %27, ptr noundef null) #17
  br label %28

28:                                               ; preds = %17, %19, %25
  %29 = phi i32 [ 1, %25 ], [ 0, %19 ], [ 0, %17 ]
  ret i32 %29
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @fopen_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare void @setbuf(ptr nocapture noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @gcov_close() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gcov_var, align 8, !tbaa !5
  %2 = icmp eq ptr %1, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !16
  %5 = icmp ne i32 %4, 0
  %6 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 6), align 4
  %7 = icmp slt i32 %6, 0
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  tail call fastcc void @gcov_write_block(i32 noundef %4) #17
  %10 = load ptr, ptr @gcov_var, align 8, !tbaa !5
  br label %11

11:                                               ; preds = %9, %3
  %12 = phi ptr [ %10, %9 ], [ %1, %3 ]
  %13 = tail call i32 @fclose(ptr noundef %12) #17
  store ptr null, ptr @gcov_var, align 8, !tbaa !5
  store i32 0, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 3), align 8, !tbaa !17
  br label %14

14:                                               ; preds = %11, %0
  %15 = load ptr, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 9), align 8, !tbaa !18
  tail call void @free(ptr noundef %15) #17
  store i32 0, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 6), align 4, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 8), i8 0, i64 16, i1 false)
  %16 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 5), align 8, !tbaa !13
  ret i32 %16
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @gcov_write_block(i32 noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 9), align 8, !tbaa !18
  %3 = shl i32 %0, 2
  %4 = zext i32 %3 to i64
  %5 = load ptr, ptr @gcov_var, align 8, !tbaa !5
  %6 = tail call i64 @fwrite(ptr noundef %2, i64 noundef %4, i64 noundef 1, ptr noundef %5) #17
  %7 = icmp eq i64 %6, 1
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 1, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 5), align 8, !tbaa !13
  br label %9

9:                                                ; preds = %8, %1
  %10 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 1), align 8, !tbaa !19
  %11 = add i32 %10, %0
  store i32 %11, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 1), align 8, !tbaa !19
  %12 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !16
  %13 = sub i32 %12, %0
  store i32 %13, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !16
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef i32 @gcov_magic(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = icmp eq i32 %0, %1
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @llvm.bswap.i32(i32 %0)
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  store i32 1, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 7), align 8, !tbaa !14
  br label %8

8:                                                ; preds = %4, %2, %7
  %9 = phi i32 [ -1, %7 ], [ 1, %2 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gcov_write_unsigned(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc ptr @gcov_write_words(i32 noundef 1) #17
  store i32 %0, ptr %2, align 4, !tbaa !12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gcov_write_words(i32 noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 6), align 4, !tbaa !15
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 234, ptr noundef nonnull @.str.1) #16
  br label %5

5:                                                ; preds = %1, %4
  %6 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !16
  %7 = add i32 %6, %0
  %8 = zext i32 %7 to i64
  %9 = load i64, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 8), align 8, !tbaa !20
  %10 = icmp ult i64 %9, %8
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  tail call fastcc void @gcov_allocate(i32 noundef %7) #17
  %12 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !16
  %13 = add i32 %12, %0
  br label %14

14:                                               ; preds = %11, %5
  %15 = phi i32 [ %13, %11 ], [ %7, %5 ]
  %16 = phi i32 [ %12, %11 ], [ %6, %5 ]
  %17 = load ptr, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 9), align 8, !tbaa !18
  %18 = zext i32 %16 to i64
  %19 = getelementptr inbounds i32, ptr %17, i64 %18
  store i32 %15, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !16
  ret ptr %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gcov_write_string(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %5 = trunc i64 %4 to i32
  %6 = add i32 %5, 4
  %7 = lshr i32 %6, 2
  %8 = and i64 %4, 4294967295
  br label %9

9:                                                ; preds = %3, %1
  %10 = phi i32 [ %7, %3 ], [ 0, %1 ]
  %11 = phi i64 [ %8, %3 ], [ 0, %1 ]
  %12 = add nuw nsw i32 %10, 1
  %13 = tail call fastcc ptr @gcov_write_words(i32 noundef %12) #17
  store i32 %10, ptr %13, align 4, !tbaa !12
  %14 = zext nneg i32 %10 to i64
  %15 = getelementptr inbounds i32, ptr %13, i64 %14
  store i32 0, ptr %15, align 4, !tbaa !12
  %16 = getelementptr inbounds i32, ptr %13, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %16, ptr align 1 %0, i64 %11, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @gcov_write_tag(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 1), align 8, !tbaa !19
  %3 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !16
  %4 = add i32 %3, %2
  %5 = tail call fastcc ptr @gcov_write_words(i32 noundef 2) #17
  store i32 %0, ptr %5, align 4, !tbaa !12
  %6 = getelementptr inbounds i32, ptr %5, i64 1
  store i32 0, ptr %6, align 4, !tbaa !12
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gcov_write_length(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 6), align 4, !tbaa !15
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 336, ptr noundef nonnull @.str.1) #16
  br label %5

5:                                                ; preds = %1, %4
  %6 = add i32 %0, 2
  %7 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 1), align 8, !tbaa !19
  %8 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !16
  %9 = add i32 %8, %7
  %10 = icmp ugt i32 %6, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 337, ptr noundef nonnull @.str.1) #16
  %12 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 1), align 8, !tbaa !19
  br label %13

13:                                               ; preds = %5, %11
  %14 = phi i32 [ %7, %5 ], [ %12, %11 ]
  %15 = icmp ugt i32 %14, %0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 338, ptr noundef nonnull @.str.1) #16
  %17 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 1), align 8, !tbaa !19
  br label %18

18:                                               ; preds = %13, %16
  %19 = phi i32 [ %14, %13 ], [ %17, %16 ]
  %20 = sub i32 %0, %19
  %21 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !16
  %22 = sub i32 %21, %20
  %23 = add i32 %22, -2
  %24 = load ptr, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 9), align 8, !tbaa !18
  %25 = zext i32 %20 to i64
  %26 = getelementptr inbounds i32, ptr %24, i64 %25
  %27 = getelementptr inbounds i32, ptr %26, i64 1
  store i32 %23, ptr %27, align 4, !tbaa !12
  %28 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !16
  %29 = icmp ugt i32 %28, 1023
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  tail call fastcc void @gcov_write_block(i32 noundef %28) #17
  br label %31

31:                                               ; preds = %30, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @gcov_read_unsigned() local_unnamed_addr #0 {
  %1 = tail call fastcc ptr @gcov_read_words(i32 noundef 1) #17
  %2 = icmp eq ptr %1, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr %1, align 4, !tbaa !12
  %5 = tail call fastcc i32 @from_file(i32 noundef %4) #17
  br label %6

6:                                                ; preds = %0, %3
  %7 = phi i32 [ %5, %3 ], [ 0, %0 ]
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gcov_read_words(i32 noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 3), align 8, !tbaa !17
  %3 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !16
  %4 = sub i32 %2, %3
  %5 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 6), align 4, !tbaa !15
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 393, ptr noundef nonnull @.str.1) #16
  %8 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !16
  br label %9

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %3, %1 ], [ %8, %7 ]
  %11 = icmp ult i32 %4, %0
  br i1 %11, label %12, label %50

12:                                               ; preds = %9
  %13 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 1), align 8, !tbaa !19
  %14 = add i32 %13, %10
  store i32 %14, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 1), align 8, !tbaa !19
  %15 = load ptr, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 9), align 8, !tbaa !18
  %16 = zext i32 %10 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  %18 = shl i32 %4, 2
  %19 = zext i32 %18 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %15, ptr align 4 %17, i64 %19, i1 false)
  store i32 0, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !16
  store i32 %4, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 3), align 8, !tbaa !17
  %20 = add i32 %4, %0
  %21 = zext i32 %20 to i64
  %22 = load i64, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 8), align 8, !tbaa !20
  %23 = icmp ult i64 %22, %21
  br i1 %23, label %24, label %27

24:                                               ; preds = %12
  tail call fastcc void @gcov_allocate(i32 noundef %20) #17
  %25 = load i64, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 8), align 8, !tbaa !20
  %26 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 3), align 8, !tbaa !17
  br label %27

27:                                               ; preds = %24, %12
  %28 = phi i32 [ %26, %24 ], [ %4, %12 ]
  %29 = phi i64 [ %25, %24 ], [ %22, %12 ]
  %30 = zext i32 %28 to i64
  %31 = trunc i64 %29 to i32
  %32 = sub i32 %31, %28
  %33 = load ptr, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 9), align 8, !tbaa !18
  %34 = getelementptr inbounds i32, ptr %33, i64 %30
  %35 = shl i32 %32, 2
  %36 = zext i32 %35 to i64
  %37 = load ptr, ptr @gcov_var, align 8, !tbaa !5
  %38 = tail call i64 @fread(ptr noundef %34, i64 noundef 1, i64 noundef %36, ptr noundef %37) #17
  %39 = lshr i64 %38, 2
  %40 = trunc i64 %39 to i32
  %41 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 3), align 8, !tbaa !17
  %42 = add i32 %41, %40
  store i32 %42, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 3), align 8, !tbaa !17
  %43 = icmp ult i32 %42, %0
  br i1 %43, label %46, label %44

44:                                               ; preds = %27
  %45 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !16
  br label %50

46:                                               ; preds = %27
  %47 = sub i32 %0, %42
  %48 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 4), align 4, !tbaa !21
  %49 = add i32 %47, %48
  store i32 %49, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 4), align 4, !tbaa !21
  store i32 0, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 3), align 8, !tbaa !17
  br label %56

50:                                               ; preds = %44, %9
  %51 = phi i32 [ %45, %44 ], [ %10, %9 ]
  %52 = load ptr, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 9), align 8, !tbaa !18
  %53 = zext i32 %51 to i64
  %54 = getelementptr inbounds i32, ptr %52, i64 %53
  %55 = add i32 %51, %0
  store i32 %55, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !16
  br label %56

56:                                               ; preds = %50, %46
  %57 = phi ptr [ null, %46 ], [ %54, %50 ]
  ret ptr %57
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @from_file(i32 noundef %0) unnamed_addr #9 {
  %2 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 7), align 8, !tbaa !14
  %3 = icmp eq i32 %2, 0
  %4 = tail call i32 @llvm.bswap.i32(i32 %0)
  %5 = select i1 %3, i32 %0, i32 %4
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @gcov_read_counter() local_unnamed_addr #0 {
  %1 = tail call fastcc ptr @gcov_read_words(i32 noundef 2) #17
  %2 = icmp eq ptr %1, null
  br i1 %2, label %13, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr %1, align 4, !tbaa !12
  %5 = tail call fastcc i32 @from_file(i32 noundef %4) #17
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds i32, ptr %1, i64 1
  %8 = load i32, ptr %7, align 4, !tbaa !12
  %9 = tail call fastcc i32 @from_file(i32 noundef %8) #17
  %10 = zext i32 %9 to i64
  %11 = shl nuw i64 %10, 32
  %12 = or disjoint i64 %11, %6
  br label %13

13:                                               ; preds = %0, %3
  %14 = phi i64 [ %12, %3 ], [ 0, %0 ]
  ret i64 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gcov_read_string() local_unnamed_addr #0 {
  %1 = tail call i32 @gcov_read_unsigned() #17
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %0
  %4 = tail call fastcc ptr @gcov_read_words(i32 noundef %1) #17
  br label %5

5:                                                ; preds = %0, %3
  %6 = phi ptr [ %4, %3 ], [ null, %0 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gcov_read_summary(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = tail call i32 @gcov_read_unsigned() #17
  store i32 %2, ptr %0, align 8, !tbaa !22
  %3 = getelementptr inbounds %struct.gcov_summary, ptr %0, i64 0, i32 1
  %4 = tail call i32 @gcov_read_unsigned() #17
  store i32 %4, ptr %3, align 8, !tbaa !24
  %5 = tail call i32 @gcov_read_unsigned() #17
  %6 = getelementptr inbounds %struct.gcov_summary, ptr %0, i64 0, i32 1, i64 0, i32 1
  store i32 %5, ptr %6, align 4, !tbaa !26
  %7 = tail call i64 @gcov_read_counter() #17
  %8 = getelementptr inbounds %struct.gcov_summary, ptr %0, i64 0, i32 1, i64 0, i32 2
  store i64 %7, ptr %8, align 8, !tbaa !27
  %9 = tail call i64 @gcov_read_counter() #17
  %10 = getelementptr inbounds %struct.gcov_summary, ptr %0, i64 0, i32 1, i64 0, i32 3
  store i64 %9, ptr %10, align 8, !tbaa !28
  %11 = tail call i64 @gcov_read_counter() #17
  %12 = getelementptr inbounds %struct.gcov_summary, ptr %0, i64 0, i32 1, i64 0, i32 4
  store i64 %11, ptr %12, align 8, !tbaa !29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gcov_sync(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 6), align 4, !tbaa !15
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 507, ptr noundef nonnull @.str.1) #16
  br label %6

6:                                                ; preds = %2, %5
  %7 = add i32 %1, %0
  %8 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 1), align 8, !tbaa !19
  %9 = sub i32 %7, %8
  %10 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 3), align 8, !tbaa !17
  %11 = icmp ugt i32 %9, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  store i32 %9, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !16
  br label %22

13:                                               ; preds = %6
  store i32 0, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 3), align 8, !tbaa !17
  store i32 0, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !16
  %14 = load ptr, ptr @gcov_var, align 8, !tbaa !5
  %15 = shl i32 %7, 2
  %16 = zext i32 %15 to i64
  %17 = tail call i32 @fseek(ptr noundef %14, i64 noundef %16, i32 noundef 0) #17
  %18 = load ptr, ptr @gcov_var, align 8, !tbaa !5
  %19 = tail call i64 @ftell(ptr noundef %18) #17
  %20 = lshr i64 %19, 2
  %21 = trunc i64 %20 to i32
  store i32 %21, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 1), align 8, !tbaa !19
  br label %22

22:                                               ; preds = %13, %12
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_gcov_type() local_unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !30
  %2 = tail call ptr %1(i32 noundef 64, i32 noundef 0) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_coverage_counts(i32 noundef %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.counts_entry, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #18
  %5 = load ptr, ptr @counts_hash, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = load i32, ptr @get_coverage_counts.warned, align 4, !tbaa !12
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr @get_coverage_counts.warned, align 4, !tbaa !12
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %11, label %86

11:                                               ; preds = %7
  %12 = load i32, ptr @input_location, align 4, !tbaa !12
  %13 = load i32, ptr @flag_guess_branch_prob, align 4, !tbaa !12
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, ptr @.str.6, ptr @.str.5
  %16 = load ptr, ptr @da_file_name, align 8, !tbaa !38
  tail call void (i32, ptr, ...) @inform(i32 noundef %12, ptr noundef nonnull %15, ptr noundef %16) #16
  br label %86

17:                                               ; preds = %3
  %18 = load ptr, ptr @cfun, align 8, !tbaa !38
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 14
  %20 = load i32, ptr %19, align 4, !tbaa !39
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %4, align 8, !tbaa !41
  %22 = getelementptr inbounds %struct.counts_entry, ptr %4, i64 0, i32 1
  store i32 %0, ptr %22, align 4, !tbaa !43
  %23 = call ptr @htab_find(ptr noundef nonnull %5, ptr noundef nonnull %4) #16
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load ptr, ptr @current_function_decl, align 8, !tbaa !38
  %27 = call ptr @decl_assembler_name(ptr noundef %26) #16
  %28 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.7, ptr noundef %27) #16
  br label %86

29:                                               ; preds = %17
  %30 = call fastcc i32 @compute_checksum() #17
  %31 = getelementptr inbounds %struct.counts_entry, ptr %23, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !44
  %33 = icmp eq i32 %32, %30
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.counts_entry, ptr %23, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !45
  %37 = icmp eq i32 %36, %1
  br i1 %37, label %80, label %38

38:                                               ; preds = %34, %29
  %39 = load ptr, ptr @current_function_decl, align 8, !tbaa !38
  %40 = call ptr @decl_assembler_name(ptr noundef %39) #16
  %41 = load i32, ptr @warn_coverage_mismatch, align 4, !tbaa !12
  %42 = icmp eq i32 %41, 0
  %43 = zext i32 %0 to i64
  %44 = getelementptr inbounds [8 x ptr], ptr @ctr_names, i64 0, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !38
  br i1 %42, label %48, label %46

46:                                               ; preds = %38
  %47 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 63, ptr noundef nonnull @.str.9, ptr noundef %40, ptr noundef %45) #16
  br label %49

48:                                               ; preds = %38
  call void (ptr, ...) @error(ptr noundef nonnull @.str.9, ptr noundef %40, ptr noundef %45) #16
  br label %49

49:                                               ; preds = %48, %46
  %50 = load i32, ptr @inhibit_warnings, align 4, !tbaa !12
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load i32, ptr %31, align 8, !tbaa !44
  %54 = icmp eq i32 %53, %30
  %55 = load i32, ptr @input_location, align 4, !tbaa !12
  br i1 %54, label %57, label %56

56:                                               ; preds = %52
  call void (i32, ptr, ...) @inform(i32 noundef %55, ptr noundef nonnull @.str.10, i32 noundef %53, i32 noundef %30) #16
  br label %60

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.counts_entry, ptr %23, i64 0, i32 4
  %59 = load i32, ptr %58, align 8, !tbaa !45
  call void (i32, ptr, ...) @inform(i32 noundef %55, ptr noundef nonnull @.str.11, i32 noundef %59, i32 noundef %1) #16
  br label %60

60:                                               ; preds = %56, %57, %49
  %61 = load i32, ptr @warn_coverage_mismatch, align 4, !tbaa !12
  %62 = icmp eq i32 %61, 0
  %63 = load i32, ptr @inhibit_warnings, align 4
  %64 = icmp ne i32 %63, 0
  %65 = select i1 %62, i1 true, i1 %64
  br i1 %65, label %86, label %66

66:                                               ; preds = %60
  %67 = load i32, ptr @get_coverage_counts.warned.8, align 4, !tbaa !12
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr @get_coverage_counts.warned.8, align 4, !tbaa !12
  %69 = icmp eq i32 %67, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %66
  %71 = load i32, ptr @input_location, align 4, !tbaa !12
  call void (i32, ptr, ...) @inform(i32 noundef %71, ptr noundef nonnull @.str.12) #16
  %72 = load i32, ptr @input_location, align 4, !tbaa !12
  %73 = load i32, ptr @flag_guess_branch_prob, align 4, !tbaa !12
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %74, ptr @.str.14, ptr @.str.13
  call void (i32, ptr, ...) @inform(i32 noundef %72, ptr noundef nonnull %75) #16
  %76 = load i32, ptr @flag_guess_branch_prob, align 4, !tbaa !12
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %70
  %79 = load i32, ptr @input_location, align 4, !tbaa !12
  call void (i32, ptr, ...) @inform(i32 noundef %79, ptr noundef nonnull @.str.15) #16
  br label %86

80:                                               ; preds = %34
  %81 = icmp eq ptr %2, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %80
  store ptr %35, ptr %2, align 8, !tbaa !38
  br label %83

83:                                               ; preds = %82, %80
  %84 = getelementptr inbounds %struct.counts_entry, ptr %23, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !46
  br label %86

86:                                               ; preds = %60, %66, %78, %70, %7, %11, %83, %25
  %87 = phi ptr [ %85, %83 ], [ null, %25 ], [ null, %11 ], [ null, %7 ], [ null, %70 ], [ null, %78 ], [ null, %66 ], [ null, %60 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  ret ptr %87
}

; Function Attrs: optsize
declare void @inform(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @htab_find(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @compute_checksum() unnamed_addr #0 {
  %1 = alloca %struct.expanded_location, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #18
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !38
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !47
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %1, i32 noundef %4) #16
  %5 = getelementptr inbounds %struct.expanded_location, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !48
  %7 = load ptr, ptr %1, align 8, !tbaa !50
  %8 = call fastcc i32 @coverage_checksum_string(i32 noundef %6, ptr noundef %7) #17
  %9 = load ptr, ptr @current_function_decl, align 8, !tbaa !38
  %10 = call ptr @decl_assembler_name(ptr noundef %9) #16
  %11 = getelementptr inbounds %struct.tree_identifier, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  %13 = call fastcc i32 @coverage_checksum_string(i32 noundef %8, ptr noundef %12) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #18
  ret i32 %13
}

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @coverage_counter_alloc(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [20 x i8], align 16
  %4 = load i1, ptr @no_coverage, align 4
  br i1 %4, label %41, label %5

5:                                                ; preds = %2
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %41, label %7

7:                                                ; preds = %5
  %8 = zext i32 %0 to i64
  %9 = getelementptr inbounds [8 x ptr], ptr @tree_ctr_tables, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %33

12:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #18
  %13 = tail call ptr @get_gcov_type() #17
  %14 = tail call ptr @build_array_type(ptr noundef %13, ptr noundef null) #16
  %15 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 32, ptr noundef null, ptr noundef %14) #16
  store ptr %15, ptr %9, align 8, !tbaa !38
  %16 = load i64, ptr %15, align 8
  %17 = or i64 %16, 67108864
  store i64 %17, ptr %15, align 8
  %18 = add i32 %0, 1
  %19 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull @.str.17, i32 noundef %18) #17
  %20 = call ptr @get_identifier(ptr noundef nonnull %3) #16
  %21 = load ptr, ptr %9, align 8, !tbaa !38
  %22 = getelementptr inbounds %struct.tree_decl_minimal, ptr %21, i64 0, i32 3
  store ptr %20, ptr %22, align 8, !tbaa !47
  %23 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !47
  %25 = load ptr, ptr %9, align 8, !tbaa !38
  %26 = getelementptr inbounds %struct.tree_decl_common, ptr %25, i64 0, i32 3
  store i32 %24, ptr %26, align 8, !tbaa !47
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !38
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %12
  %30 = load ptr, ptr @da_file_name, align 8, !tbaa !38
  %31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %27, ptr noundef nonnull @.str.18, ptr noundef %30) #17
  br label %32

32:                                               ; preds = %29, %12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #18
  br label %33

33:                                               ; preds = %32, %7
  %34 = getelementptr inbounds [8 x i32], ptr @fn_n_ctrs, i64 0, i64 %8
  %35 = load i32, ptr %34, align 4, !tbaa !12
  %36 = getelementptr inbounds [8 x i32], ptr @fn_b_ctrs, i64 0, i64 %8
  store i32 %35, ptr %36, align 4, !tbaa !12
  %37 = add i32 %35, %1
  store i32 %37, ptr %34, align 4, !tbaa !12
  %38 = shl nuw i32 1, %0
  %39 = load i32, ptr @fn_ctr_mask, align 4, !tbaa !12
  %40 = or i32 %39, %38
  store i32 %40, ptr @fn_ctr_mask, align 4, !tbaa !12
  br label %41

41:                                               ; preds = %5, %2, %33
  %42 = phi i32 [ 1, %33 ], [ 0, %2 ], [ 1, %5 ]
  ret i32 %42
}

; Function Attrs: optsize
declare ptr @build_array_type(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_identifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @tree_coverage_counter_ref(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @get_gcov_type() #17
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [8 x i32], ptr @fn_n_ctrs, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !12
  %7 = getelementptr inbounds [8 x i32], ptr @fn_b_ctrs, i64 0, i64 %4
  %8 = load i32, ptr %7, align 4, !tbaa !12
  %9 = sub i32 %6, %8
  %10 = icmp ugt i32 %9, %1
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 444, ptr noundef nonnull @.str.1) #16
  %12 = load i32, ptr %7, align 4, !tbaa !12
  br label %13

13:                                               ; preds = %2, %11
  %14 = phi i32 [ %8, %2 ], [ %12, %11 ]
  %15 = getelementptr inbounds [8 x i32], ptr @prg_n_ctrs, i64 0, i64 %4
  %16 = load i32, ptr %15, align 4, !tbaa !12
  %17 = add i32 %16, %1
  %18 = add i32 %17, %14
  %19 = getelementptr inbounds [8 x ptr], ptr @tree_ctr_tables, i64 0, i64 %4
  %20 = load ptr, ptr %19, align 8, !tbaa !38
  %21 = zext i32 %18 to i64
  %22 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %21) #16
  %23 = tail call ptr @build4_stat(i32 noundef 45, ptr noundef %3, ptr noundef %20, ptr noundef %22, ptr noundef null, ptr noundef null) #16
  ret ptr %23
}

; Function Attrs: optsize
declare ptr @build4_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @tree_coverage_counter_addr(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @get_gcov_type() #17
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [8 x i32], ptr @fn_n_ctrs, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !12
  %7 = getelementptr inbounds [8 x i32], ptr @fn_b_ctrs, i64 0, i64 %4
  %8 = load i32, ptr %7, align 4, !tbaa !12
  %9 = sub i32 %6, %8
  %10 = icmp ugt i32 %9, %1
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 459, ptr noundef nonnull @.str.1) #16
  %12 = load i32, ptr %7, align 4, !tbaa !12
  br label %13

13:                                               ; preds = %2, %11
  %14 = phi i32 [ %8, %2 ], [ %12, %11 ]
  %15 = getelementptr inbounds [8 x i32], ptr @prg_n_ctrs, i64 0, i64 %4
  %16 = load i32, ptr %15, align 4, !tbaa !12
  %17 = add i32 %16, %1
  %18 = add i32 %17, %14
  %19 = getelementptr inbounds [8 x ptr], ptr @tree_ctr_tables, i64 0, i64 %4
  %20 = load ptr, ptr %19, align 8, !tbaa !38
  %21 = load i64, ptr %20, align 8
  %22 = or i64 %21, 262144
  store i64 %22, ptr %20, align 8
  %23 = load ptr, ptr %19, align 8, !tbaa !38
  %24 = zext i32 %18 to i64
  %25 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %24) #16
  %26 = tail call ptr @build4_stat(i32 noundef 45, ptr noundef %3, ptr noundef %23, ptr noundef %25, ptr noundef null, ptr noundef null) #16
  %27 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %26) #16
  ret ptr %27
}

; Function Attrs: optsize
declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @coverage_begin_output() local_unnamed_addr #0 {
  %1 = alloca %struct.expanded_location, align 8
  %2 = load i1, ptr @no_coverage, align 4
  %3 = load i32, ptr @flag_test_coverage, align 4
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  %6 = load i32, ptr @flag_compare_debug, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %43, label %9

9:                                                ; preds = %0
  %10 = load i1, ptr @bbg_function_announced, align 4
  br i1 %10, label %39, label %11

11:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #18
  %12 = load ptr, ptr @current_function_decl, align 8, !tbaa !38
  %13 = getelementptr inbounds %struct.tree_decl_minimal, ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !47
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %1, i32 noundef %14) #16
  %15 = load i1, ptr @bbg_file_opened, align 4
  br i1 %15, label %25, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr @bbg_file_name, align 8, !tbaa !38
  %18 = call i32 @gcov_open(ptr noundef %17, i32 noundef -1) #17, !range !51
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load ptr, ptr @bbg_file_name, align 8, !tbaa !38
  call void (ptr, ...) @error(ptr noundef nonnull @.str.20, ptr noundef %21) #16
  br label %24

22:                                               ; preds = %16
  call void @gcov_write_unsigned(i32 noundef 1734569583) #17
  call void @gcov_write_unsigned(i32 noundef 875574570) #17
  %23 = load i32, ptr @local_tick, align 4, !tbaa !12
  call void @gcov_write_unsigned(i32 noundef %23) #17
  br label %24

24:                                               ; preds = %22, %20
  store i1 true, ptr @bbg_file_opened, align 4
  br label %25

25:                                               ; preds = %24, %11
  %26 = call i32 @gcov_write_tag(i32 noundef 16777216) #17
  %27 = load ptr, ptr @cfun, align 8, !tbaa !38
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 14
  %29 = load i32, ptr %28, align 4, !tbaa !39
  %30 = add nsw i32 %29, 1
  call void @gcov_write_unsigned(i32 noundef %30) #17
  %31 = call fastcc i32 @compute_checksum() #17
  call void @gcov_write_unsigned(i32 noundef %31) #17
  %32 = load ptr, ptr @current_function_decl, align 8, !tbaa !38
  %33 = call ptr @decl_assembler_name(ptr noundef %32) #16
  %34 = getelementptr inbounds %struct.tree_identifier, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !47
  call void @gcov_write_string(ptr noundef %35) #17
  %36 = load ptr, ptr %1, align 8, !tbaa !50
  call void @gcov_write_string(ptr noundef %36) #17
  %37 = getelementptr inbounds %struct.expanded_location, ptr %1, i64 0, i32 1
  %38 = load i32, ptr %37, align 8, !tbaa !48
  call void @gcov_write_unsigned(i32 noundef %38) #17
  call void @gcov_write_length(i32 noundef %26) #17
  store i1 true, ptr @bbg_function_announced, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #18
  br label %39

39:                                               ; preds = %25, %9
  %40 = call fastcc i32 @gcov_is_error() #17
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  br label %43

43:                                               ; preds = %0, %39
  %44 = phi i32 [ %42, %39 ], [ 0, %0 ]
  ret i32 %44
}

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @gcov_is_error() unnamed_addr #9 {
  %1 = load ptr, ptr @gcov_var, align 8, !tbaa !5
  %2 = icmp eq ptr %1, null
  %3 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 5), align 8
  %4 = select i1 %2, i32 1, i32 %3
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @coverage_end_function() local_unnamed_addr #0 {
  %1 = load i32, ptr @fn_ctr_mask, align 4, !tbaa !12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %27, label %3

3:                                                ; preds = %0
  %4 = tail call ptr @xmalloc(i64 noundef 48) #16
  %5 = load ptr, ptr @functions_tail, align 8, !tbaa !38
  store ptr %4, ptr %5, align 8, !tbaa !38
  store ptr %4, ptr @functions_tail, align 8, !tbaa !38
  store ptr null, ptr %4, align 8, !tbaa !52
  %6 = load ptr, ptr @cfun, align 8, !tbaa !38
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 14
  %8 = load i32, ptr %7, align 4, !tbaa !39
  %9 = add nsw i32 %8, 1
  %10 = getelementptr inbounds %struct.function_list, ptr %4, i64 0, i32 1
  store i32 %9, ptr %10, align 8, !tbaa !54
  %11 = tail call fastcc i32 @compute_checksum() #17
  %12 = getelementptr inbounds %struct.function_list, ptr %4, i64 0, i32 2
  store i32 %11, ptr %12, align 4, !tbaa !55
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @fn_b_ctrs, i8 0, i64 32, i1 false), !tbaa !12
  br label %13

13:                                               ; preds = %13, %3
  %14 = phi i64 [ 0, %3 ], [ %21, %13 ]
  %15 = getelementptr inbounds [8 x i32], ptr @fn_n_ctrs, i64 0, i64 %14
  %16 = load <4 x i32>, ptr %15, align 16, !tbaa !12
  %17 = getelementptr inbounds %struct.function_list, ptr %4, i64 0, i32 3, i64 %14
  store <4 x i32> %16, ptr %17, align 4, !tbaa !12
  %18 = getelementptr inbounds [8 x i32], ptr @prg_n_ctrs, i64 0, i64 %14
  %19 = load <4 x i32>, ptr %18, align 16, !tbaa !12
  %20 = add <4 x i32> %19, %16
  store <4 x i32> %20, ptr %18, align 16, !tbaa !12
  store <4 x i32> zeroinitializer, ptr %15, align 16, !tbaa !12
  %21 = add nuw i64 %14, 4
  %22 = icmp eq i64 %21, 8
  br i1 %22, label %23, label %13, !llvm.loop !56

23:                                               ; preds = %13
  %24 = load i32, ptr @fn_ctr_mask, align 4, !tbaa !12
  %25 = load i32, ptr @prg_ctr_mask, align 4, !tbaa !12
  %26 = or i32 %25, %24
  store i32 %26, ptr @prg_ctr_mask, align 4, !tbaa !12
  store i32 0, ptr @fn_ctr_mask, align 4, !tbaa !12
  br label %27

27:                                               ; preds = %23, %0
  store i1 false, ptr @bbg_function_announced, align 4
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @coverage_init(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #17
  %3 = load ptr, ptr @profile_data_prefix, align 8, !tbaa !38
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load i8, ptr %0, align 1, !tbaa !47
  %7 = icmp eq i8 %6, 47
  br i1 %7, label %17, label %8

8:                                                ; preds = %5
  %9 = tail call ptr @getpwd() #16
  store ptr %9, ptr @profile_data_prefix, align 8, !tbaa !38
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %1, %8
  %12 = phi ptr [ %9, %8 ], [ %3, %1 ]
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #17
  %14 = shl i64 %13, 32
  %15 = add i64 %14, 4294967296
  %16 = ashr exact i64 %15, 32
  br label %17

17:                                               ; preds = %5, %8, %11
  %18 = phi i64 [ %16, %11 ], [ 0, %8 ], [ 0, %5 ]
  %19 = shl i64 %2, 32
  %20 = ashr exact i64 %19, 32
  %21 = add nsw i64 %20, 6
  %22 = add nsw i64 %21, %18
  %23 = tail call ptr @xmalloc(i64 noundef %22) #16
  store ptr %23, ptr @da_file_name, align 8, !tbaa !38
  %24 = load ptr, ptr @profile_data_prefix, align 8, !tbaa !38
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) %24) #17
  %28 = getelementptr i8, ptr %23, i64 %18
  %29 = getelementptr i8, ptr %28, i64 -1
  store i8 47, ptr %29, align 1, !tbaa !47
  br label %30

30:                                               ; preds = %17, %26
  %31 = phi ptr [ %28, %26 ], [ %23, %17 ]
  store i8 0, ptr %31, align 1, !tbaa !47
  %32 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(1) %0) #17
  %33 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %23)
  %34 = getelementptr inbounds i8, ptr %23, i64 %33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %34, ptr noundef nonnull align 1 dereferenceable(6) @.str.22, i64 6, i1 false)
  %35 = tail call ptr @xmalloc(i64 noundef %21) #16
  store ptr %35, ptr @bbg_file_name, align 8, !tbaa !38
  %36 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(1) %0) #17
  %37 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %35)
  %38 = getelementptr inbounds i8, ptr %35, i64 %37
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %38, ptr noundef nonnull align 1 dereferenceable(6) @.str.23, i64 6, i1 false)
  %39 = load i32, ptr @flag_profile_use, align 4, !tbaa !12
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %30
  tail call fastcc void @read_counts_file() #17
  br label %42

42:                                               ; preds = %41, %30
  ret void
}

; Function Attrs: optsize
declare ptr @getpwd() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @read_counts_file() unnamed_addr #0 {
  %1 = alloca [4 x i8], align 1
  %2 = alloca [4 x i8], align 4
  %3 = alloca %struct.gcov_summary, align 8
  %4 = alloca %struct.counts_entry, align 8
  %5 = load ptr, ptr @da_file_name, align 8, !tbaa !38
  %6 = tail call i32 @gcov_open(ptr noundef %5, i32 noundef 1) #17, !range !51
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %179, label %8

8:                                                ; preds = %0
  %9 = tail call i32 @gcov_read_unsigned() #17
  %10 = tail call i32 @gcov_magic(i32 noundef %9, i32 noundef 1734567009) #17, !range !60
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load ptr, ptr @da_file_name, align 8, !tbaa !38
  %14 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.34, ptr noundef %13) #16
  %15 = tail call i32 @gcov_close() #17
  br label %179

16:                                               ; preds = %8
  %17 = tail call i32 @gcov_read_unsigned() #17
  %18 = icmp eq i32 %17, 875574570
  br i1 %18, label %33, label %19

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #18
  %20 = lshr i32 %17, 24
  %21 = trunc i32 %20 to i8
  store i8 %21, ptr %1, align 1, !tbaa !47
  %22 = lshr i32 %17, 16
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds [4 x i8], ptr %1, i64 0, i64 1
  store i8 %23, ptr %24, align 1, !tbaa !47
  %25 = lshr i32 %17, 8
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds [4 x i8], ptr %1, i64 0, i64 2
  store i8 %26, ptr %27, align 1, !tbaa !47
  %28 = trunc i32 %17 to i8
  %29 = getelementptr inbounds [4 x i8], ptr %1, i64 0, i64 3
  store i8 %28, ptr %29, align 1, !tbaa !47
  store <4 x i8> <i8 52, i8 48, i8 53, i8 42>, ptr %2, align 4, !tbaa !47
  %30 = load ptr, ptr @da_file_name, align 8, !tbaa !38
  %31 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 0, ptr noundef nonnull @.str.35, ptr noundef %30, i32 noundef 4, ptr noundef nonnull %1, i32 noundef 4, ptr noundef nonnull %2) #16
  %32 = call i32 @gcov_close() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #18
  br label %179

33:                                               ; preds = %16
  %34 = tail call i32 @gcov_read_unsigned() #17
  %35 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @htab_counts_entry_hash, ptr noundef nonnull @htab_counts_entry_eq, ptr noundef nonnull @htab_counts_entry_del) #16
  store ptr %35, ptr @counts_hash, align 8, !tbaa !38
  %36 = getelementptr inbounds %struct.counts_entry, ptr %4, i64 0, i32 1
  br label %37

37:                                               ; preds = %165, %33
  %38 = phi i32 [ 0, %33 ], [ %166, %165 ]
  %39 = phi ptr [ null, %33 ], [ %167, %165 ]
  %40 = phi i32 [ -1, %33 ], [ %168, %165 ]
  %41 = phi i32 [ 0, %33 ], [ %169, %165 ]
  %42 = call i32 @gcov_read_unsigned() #17
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %177, label %44

44:                                               ; preds = %37
  %45 = call i32 @gcov_read_unsigned() #17
  %46 = call fastcc i32 @gcov_position() #17
  switch i32 %42, label %91 [
    i32 16777216, label %47
    i32 -1560281088, label %58
  ]

47:                                               ; preds = %44
  %48 = call i32 @gcov_read_unsigned() #17
  %49 = call i32 @gcov_read_unsigned() #17
  %50 = icmp eq i32 %38, 0
  br i1 %50, label %165, label %51

51:                                               ; preds = %47
  %52 = icmp eq ptr %39, null
  br i1 %52, label %165, label %53

53:                                               ; preds = %51, %53
  %54 = phi ptr [ %56, %53 ], [ %39, %51 ]
  %55 = getelementptr inbounds %struct.counts_entry, ptr %54, i64 0, i32 5
  %56 = load ptr, ptr %55, align 8, !tbaa !61
  store ptr null, ptr %55, align 8, !tbaa !61
  %57 = icmp eq ptr %56, null
  br i1 %57, label %165, label %53, !llvm.loop !62

58:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #18
  call void @gcov_read_summary(ptr noundef nonnull %3) #17
  %59 = icmp eq ptr %39, null
  br i1 %59, label %90, label %60

60:                                               ; preds = %58, %81
  %61 = phi ptr [ %88, %81 ], [ %39, %58 ]
  %62 = getelementptr inbounds %struct.counts_entry, ptr %61, i64 0, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !43
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.gcov_summary, ptr %3, i64 0, i32 1, i64 %64, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !26
  %67 = getelementptr inbounds %struct.counts_entry, ptr %61, i64 0, i32 4, i32 1
  %68 = load i32, ptr %67, align 4, !tbaa !63
  %69 = add i32 %68, %66
  store i32 %69, ptr %67, align 4, !tbaa !63
  %70 = getelementptr inbounds %struct.gcov_summary, ptr %3, i64 0, i32 1, i64 %64, i32 2
  %71 = load i64, ptr %70, align 8, !tbaa !27
  %72 = getelementptr inbounds %struct.counts_entry, ptr %61, i64 0, i32 4, i32 2
  %73 = load i64, ptr %72, align 8, !tbaa !64
  %74 = add nsw i64 %73, %71
  store i64 %74, ptr %72, align 8, !tbaa !64
  %75 = getelementptr inbounds %struct.counts_entry, ptr %61, i64 0, i32 4, i32 3
  %76 = load i64, ptr %75, align 8, !tbaa !65
  %77 = getelementptr inbounds %struct.gcov_summary, ptr %3, i64 0, i32 1, i64 %64, i32 3
  %78 = load i64, ptr %77, align 8, !tbaa !28
  %79 = icmp slt i64 %76, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %60
  store i64 %78, ptr %75, align 8, !tbaa !65
  br label %81

81:                                               ; preds = %80, %60
  %82 = getelementptr inbounds %struct.gcov_summary, ptr %3, i64 0, i32 1, i64 %64, i32 4
  %83 = load i64, ptr %82, align 8, !tbaa !29
  %84 = getelementptr inbounds %struct.counts_entry, ptr %61, i64 0, i32 4, i32 4
  %85 = load i64, ptr %84, align 8, !tbaa !66
  %86 = add nsw i64 %85, %83
  store i64 %86, ptr %84, align 8, !tbaa !66
  %87 = getelementptr inbounds %struct.counts_entry, ptr %61, i64 0, i32 5
  %88 = load ptr, ptr %87, align 8, !tbaa !61
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %60, !llvm.loop !67

90:                                               ; preds = %81, %58
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #18
  br label %165

91:                                               ; preds = %44
  %92 = and i32 %42, 65535
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %165

94:                                               ; preds = %91
  %95 = add i32 %42, -27328512
  %96 = icmp ult i32 %95, 1048576
  %97 = icmp ne i32 %41, 0
  %98 = select i1 %96, i1 %97, i1 false
  br i1 %98, label %99, label %165

99:                                               ; preds = %94
  %100 = lshr i32 %95, 17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #18
  %101 = lshr i32 %45, 1
  store i32 %41, ptr %4, align 8, !tbaa !41
  store i32 %100, ptr %36, align 4, !tbaa !43
  %102 = load ptr, ptr @counts_hash, align 8, !tbaa !38
  %103 = call ptr @htab_find_slot(ptr noundef %102, ptr noundef nonnull %4, i32 noundef 1) #16
  %104 = load ptr, ptr %103, align 8, !tbaa !38
  %105 = icmp eq ptr %104, null
  br i1 %105, label %127, label %106

106:                                              ; preds = %99
  %107 = getelementptr inbounds %struct.counts_entry, ptr %104, i64 0, i32 2
  %108 = load i32, ptr %107, align 8, !tbaa !44
  %109 = icmp eq i32 %108, %40
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.counts_entry, ptr %104, i64 0, i32 2
  call void (ptr, ...) @error(ptr noundef nonnull @.str.36, i32 noundef %41) #16
  %112 = load i32, ptr %111, align 8, !tbaa !44
  call void (ptr, ...) @error(ptr noundef nonnull @.str.10, i32 noundef %112, i32 noundef %40) #16
  br label %163

113:                                              ; preds = %106
  %114 = getelementptr inbounds %struct.counts_entry, ptr %104, i64 0, i32 4
  %115 = load i32, ptr %114, align 8, !tbaa !45
  %116 = icmp eq i32 %115, %101
  br i1 %116, label %120, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.counts_entry, ptr %104, i64 0, i32 4
  call void (ptr, ...) @error(ptr noundef nonnull @.str.36, i32 noundef %41) #16
  %119 = load i32, ptr %118, align 8, !tbaa !45
  call void (ptr, ...) @error(ptr noundef nonnull @.str.11, i32 noundef %119, i32 noundef %101) #16
  br label %163

120:                                              ; preds = %113
  %121 = load i32, ptr %36, align 4, !tbaa !43
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %137, label %123

123:                                              ; preds = %120
  %124 = zext i32 %121 to i64
  %125 = getelementptr inbounds [8 x ptr], ptr @ctr_names, i64 0, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !38
  call void (ptr, ...) @error(ptr noundef nonnull @.str.37, ptr noundef %126, i32 noundef %41) #16
  br label %161

127:                                              ; preds = %99
  %128 = call ptr @xcalloc(i64 noundef 1, i64 noundef 64) #16
  store ptr %128, ptr %103, align 8, !tbaa !38
  %129 = load <2 x i32>, ptr %4, align 8, !tbaa !12
  store <2 x i32> %129, ptr %128, align 8, !tbaa !12
  %130 = getelementptr inbounds %struct.counts_entry, ptr %128, i64 0, i32 2
  store i32 %40, ptr %130, align 8, !tbaa !44
  %131 = getelementptr inbounds %struct.counts_entry, ptr %128, i64 0, i32 4
  store i32 %101, ptr %131, align 8, !tbaa !45
  %132 = zext nneg i32 %101 to i64
  %133 = call ptr @xcalloc(i64 noundef %132, i64 noundef 8) #16
  %134 = getelementptr inbounds %struct.counts_entry, ptr %128, i64 0, i32 3
  store ptr %133, ptr %134, align 8, !tbaa !46
  %135 = load i32, ptr %36, align 4, !tbaa !43
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %120, %127
  %138 = phi ptr [ %128, %127 ], [ %104, %120 ]
  %139 = getelementptr inbounds %struct.counts_entry, ptr %138, i64 0, i32 5
  %140 = load ptr, ptr %139, align 8, !tbaa !61
  %141 = icmp ne ptr %140, null
  %142 = icmp eq ptr %39, %138
  %143 = select i1 %141, i1 %142, i1 false
  br i1 %143, label %145, label %144

144:                                              ; preds = %137
  store ptr %39, ptr %139, align 8, !tbaa !61
  br label %145

145:                                              ; preds = %137, %144, %127
  %146 = phi ptr [ %138, %144 ], [ %128, %127 ], [ %39, %137 ]
  %147 = phi ptr [ %138, %144 ], [ %39, %127 ], [ %39, %137 ]
  %148 = icmp ult i32 %45, 2
  br i1 %148, label %161, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.counts_entry, ptr %146, i64 0, i32 3
  %151 = zext nneg i32 %101 to i64
  br label %152

152:                                              ; preds = %149, %152
  %153 = phi i64 [ 0, %149 ], [ %159, %152 ]
  %154 = call i64 @gcov_read_counter() #17
  %155 = load ptr, ptr %150, align 8, !tbaa !46
  %156 = getelementptr inbounds i64, ptr %155, i64 %153
  %157 = load i64, ptr %156, align 8, !tbaa !68
  %158 = add nsw i64 %157, %154
  store i64 %158, ptr %156, align 8, !tbaa !68
  %159 = add nuw nsw i64 %153, 1
  %160 = icmp eq i64 %159, %151
  br i1 %160, label %161, label %152, !llvm.loop !69

161:                                              ; preds = %152, %145, %123
  %162 = phi ptr [ %39, %123 ], [ %147, %145 ], [ %147, %152 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  br label %165

163:                                              ; preds = %117, %110
  %164 = load ptr, ptr @counts_hash, align 8, !tbaa !38
  call void @htab_delete(ptr noundef %164) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #18
  br label %177

165:                                              ; preds = %53, %51, %161, %90, %94, %91, %47
  %166 = phi i32 [ 0, %47 ], [ 1, %90 ], [ %38, %91 ], [ %38, %94 ], [ %38, %161 ], [ 0, %51 ], [ 0, %53 ]
  %167 = phi ptr [ %39, %47 ], [ %39, %90 ], [ %39, %91 ], [ %39, %94 ], [ %162, %161 ], [ null, %51 ], [ null, %53 ]
  %168 = phi i32 [ %49, %47 ], [ %40, %90 ], [ %40, %91 ], [ %40, %94 ], [ %40, %161 ], [ %49, %51 ], [ %49, %53 ]
  %169 = phi i32 [ %48, %47 ], [ %41, %90 ], [ %41, %91 ], [ %41, %94 ], [ %41, %161 ], [ %48, %51 ], [ %48, %53 ]
  call void @gcov_sync(i32 noundef %46, i32 noundef %45) #17
  %170 = call fastcc i32 @gcov_is_error() #17
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %37, label %172

172:                                              ; preds = %165
  %173 = icmp slt i32 %170, 0
  %174 = select i1 %173, ptr @.str.38, ptr @.str.39
  %175 = load ptr, ptr @da_file_name, align 8, !tbaa !38
  call void (ptr, ...) @error(ptr noundef nonnull %174, ptr noundef %175) #16
  %176 = load ptr, ptr @counts_hash, align 8, !tbaa !38
  call void @htab_delete(ptr noundef %176) #16
  br label %177

177:                                              ; preds = %37, %163, %172
  %178 = call i32 @gcov_close() #17
  br label %179

179:                                              ; preds = %0, %177, %19, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @coverage_finish() local_unnamed_addr #0 {
  tail call fastcc void @create_coverage() #17
  %1 = load i1, ptr @bbg_file_opened, align 4
  br i1 %1, label %2, label %14

2:                                                ; preds = %0
  %3 = tail call i32 @gcov_close() #17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr @bbg_file_name, align 8, !tbaa !38
  %7 = tail call i32 @unlink(ptr noundef %6) #17
  br label %8

8:                                                ; preds = %5, %2
  %9 = load i32, ptr @local_tick, align 4, !tbaa !12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load ptr, ptr @da_file_name, align 8, !tbaa !38
  %13 = tail call i32 @unlink(ptr noundef %12) #17
  br label %14

14:                                               ; preds = %8, %11, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_coverage() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [32 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #18
  store i1 true, ptr @no_coverage, align 4
  %3 = load i32, ptr @prg_ctr_mask, align 4, !tbaa !12
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %32, label %5

5:                                                ; preds = %0
  %6 = tail call fastcc ptr @build_gcov_info() #17
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 32, ptr noundef null, ptr noundef %8) #16
  %10 = load i64, ptr %9, align 8
  %11 = or i64 %10, 67108864
  store i64 %11, ptr %9, align 8
  %12 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull @.str.17, i32 noundef 0) #17
  %13 = call ptr @get_identifier(ptr noundef nonnull %2) #16
  %14 = getelementptr inbounds %struct.tree_decl_minimal, ptr %9, i64 0, i32 3
  store ptr %13, ptr %14, align 8, !tbaa !47
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 5
  store ptr %6, ptr %15, align 8, !tbaa !47
  call void @varpool_finalize_decl(ptr noundef nonnull %9) #16
  %16 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !47
  %18 = call ptr @build_pointer_type(ptr noundef %17) #16
  %19 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !38
  %20 = call ptr (ptr, ...) @build_function_type_list(ptr noundef %19, ptr noundef %18, ptr noundef null) #16
  %21 = call ptr @get_identifier(ptr noundef nonnull @.str.41) #16
  %22 = call ptr @build_decl_stat(i32 noundef 1, i32 noundef 29, ptr noundef %21, ptr noundef %20) #16
  %23 = load i64, ptr %22, align 8
  %24 = or i64 %23, 134217728
  store i64 %24, ptr %22, align 8
  %25 = getelementptr inbounds %struct.tree_decl_common, ptr %22, i64 0, i32 2
  %26 = load i64, ptr %25, align 8
  %27 = or i64 %26, 33554432
  store i64 %27, ptr %25, align 8
  %28 = call ptr @decl_assembler_name(ptr noundef nonnull %22) #16
  store ptr null, ptr %1, align 8, !tbaa !38
  %29 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %9) #16
  %30 = call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef nonnull %22, i32 noundef 1, ptr noundef %29) #16
  call void @append_to_statement_list(ptr noundef %30, ptr noundef nonnull %1) #16
  %31 = load ptr, ptr %1, align 8, !tbaa !38
  call void @cgraph_build_static_cdtor(i8 noundef signext 73, ptr noundef %31, i32 noundef 65535) #16
  br label %32

32:                                               ; preds = %0, %5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #18
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gt_ggc_mx_rtx_def(ptr noundef) #1

; Function Attrs: optsize
declare void @gt_pch_nx_rtx_def(ptr noundef) #1

; Function Attrs: optsize
declare void @gt_ggc_mx_lang_tree_node(ptr noundef) #1

; Function Attrs: optsize
declare void @gt_pch_nx_lang_tree_node(ptr noundef) #1

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gcov_allocate(i32 noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 8), align 8, !tbaa !20
  %3 = icmp eq i64 %2, 0
  %4 = select i1 %3, i64 1024, i64 %2
  %5 = zext i32 %0 to i64
  %6 = add i64 %4, %5
  %7 = shl i64 %6, 1
  store i64 %7, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 8), align 8, !tbaa !20
  %8 = load ptr, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 9), align 8, !tbaa !18
  %9 = shl i64 %6, 3
  %10 = tail call ptr @xrealloc(ptr noundef %8, i64 noundef %9) #16
  store ptr %10, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 9), align 8, !tbaa !18
  ret void
}

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @coverage_checksum_string(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load i8, ptr %1, align 1, !tbaa !47
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %78, %2
  %6 = tail call i32 @crc32_string(i32 noundef %0, ptr noundef nonnull %1) #16
  br label %88

7:                                                ; preds = %2, %78
  %8 = phi i32 [ %83, %78 ], [ 0, %2 ]
  %9 = phi i64 [ %79, %78 ], [ 0, %2 ]
  %10 = phi ptr [ %80, %78 ], [ %1, %2 ]
  %11 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(12) @.str.32, i64 noundef 11) #17
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, i32 11, i32 0
  %14 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(10) @.str.33, i64 noundef 9) #17
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 9, i32 %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %78, label %18

18:                                               ; preds = %7
  %19 = trunc i64 %9 to i32
  %20 = add i32 %19, 10
  %21 = add i32 %16, %20
  %22 = add i32 %16, %8
  %23 = zext i32 %22 to i64
  br label %24

24:                                               ; preds = %73, %18
  %25 = phi i64 [ %76, %73 ], [ %23, %18 ]
  %26 = phi i64 [ %77, %73 ], [ 0, %18 ]
  %27 = phi ptr [ %74, %73 ], [ %1, %18 ]
  %28 = phi ptr [ %75, %73 ], [ null, %18 ]
  %29 = trunc i64 %26 to i32
  %30 = add i32 %21, %29
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i8, ptr %27, i64 %25
  %33 = load i8, ptr %32, align 1, !tbaa !47
  switch i8 %33, label %73 [
    i8 0, label %84
    i8 95, label %34
  ]

34:                                               ; preds = %24, %44
  %35 = phi i64 [ %45, %44 ], [ 1, %24 ]
  %36 = add nuw nsw i64 %35, %25
  %37 = getelementptr inbounds i8, ptr %27, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !47
  %39 = add i8 %38, -48
  %40 = icmp ult i8 %39, 10
  %41 = add i8 %38, -65
  %42 = icmp ult i8 %41, 6
  %43 = or i1 %40, %42
  br i1 %43, label %44, label %73

44:                                               ; preds = %34
  %45 = add nuw nsw i64 %35, 1
  %46 = icmp eq i64 %45, 9
  br i1 %46, label %47, label %34, !llvm.loop !70

47:                                               ; preds = %44
  %48 = add nuw nsw i64 %25, 9
  %49 = getelementptr inbounds i8, ptr %27, i64 %48
  %50 = load i8, ptr %49, align 1, !tbaa !47
  %51 = icmp eq i8 %50, 95
  br i1 %51, label %52, label %73

52:                                               ; preds = %47, %62
  %53 = phi i64 [ %63, %62 ], [ 10, %47 ]
  %54 = add nuw nsw i64 %53, %25
  %55 = getelementptr inbounds i8, ptr %27, i64 %54
  %56 = load i8, ptr %55, align 1, !tbaa !47
  %57 = add i8 %56, -48
  %58 = icmp ult i8 %57, 10
  %59 = add i8 %56, -65
  %60 = icmp ult i8 %59, 6
  %61 = or i1 %58, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %52
  %63 = add nuw nsw i64 %53, 1
  %64 = icmp eq i64 %63, 18
  br i1 %64, label %65, label %52, !llvm.loop !71

65:                                               ; preds = %62
  %66 = icmp eq ptr %28, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %65
  %68 = tail call ptr @xstrdup(ptr noundef nonnull %27) #16
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi ptr [ %27, %65 ], [ %68, %67 ]
  %71 = phi ptr [ %28, %65 ], [ %68, %67 ]
  %72 = getelementptr i8, ptr %71, i64 %31
  store i64 3472328296227680304, ptr %72, align 1
  br label %73

73:                                               ; preds = %34, %52, %69, %47, %24
  %74 = phi ptr [ %27, %24 ], [ %27, %47 ], [ %70, %69 ], [ %27, %52 ], [ %27, %34 ]
  %75 = phi ptr [ %28, %24 ], [ %28, %47 ], [ %71, %69 ], [ %28, %52 ], [ %28, %34 ]
  %76 = add nuw i64 %25, 1
  %77 = add i64 %26, 1
  br label %24, !llvm.loop !72

78:                                               ; preds = %7
  %79 = add nuw i64 %9, 1
  %80 = getelementptr inbounds i8, ptr %1, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !47
  %82 = icmp eq i8 %81, 0
  %83 = add nuw i32 %8, 1
  br i1 %82, label %5, label %7, !llvm.loop !73

84:                                               ; preds = %24
  %85 = tail call i32 @crc32_string(i32 noundef %0, ptr noundef nonnull %27) #16
  %86 = icmp eq ptr %28, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %84
  tail call void @free(ptr noundef nonnull %28) #17
  br label %88

88:                                               ; preds = %5, %87, %84
  %89 = phi i32 [ %6, %5 ], [ %85, %87 ], [ %85, %84 ]
  ret i32 %89
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @xstrdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @crc32_string(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @htab_counts_entry_hash(ptr nocapture noundef readonly %0) #11 {
  %2 = load i32, ptr %0, align 8, !tbaa !41
  %3 = shl i32 %2, 3
  %4 = getelementptr inbounds %struct.counts_entry, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !43
  %6 = add i32 %3, %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @htab_counts_entry_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #11 {
  %3 = load i32, ptr %0, align 8, !tbaa !41
  %4 = load i32, ptr %1, align 8, !tbaa !41
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.counts_entry, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !43
  %9 = getelementptr inbounds %struct.counts_entry, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !43
  %11 = icmp eq i32 %8, %10
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i32 [ 0, %2 ], [ %12, %6 ]
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal void @htab_counts_entry_del(ptr nocapture noundef %0) #12 {
  %2 = getelementptr inbounds %struct.counts_entry, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  tail call void @free(ptr noundef %3) #17
  tail call void @free(ptr noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gcov_position() unnamed_addr #0 {
  %1 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 6), align 4, !tbaa !15
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.40, i32 noundef 586, ptr noundef nonnull @.str.1) #16
  br label %4

4:                                                ; preds = %0, %3
  %5 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 1), align 8, !tbaa !19
  %6 = load i32, ptr getelementptr inbounds (%struct.gcov_var, ptr @gcov_var, i64 0, i32 2), align 4, !tbaa !16
  %7 = add i32 %6, %5
  ret i32 %7
}

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @build_gcov_info() unnamed_addr #0 {
  %1 = load i32, ptr @prg_ctr_mask, align 4, !tbaa !12
  %2 = insertelement <4 x i32> poison, i32 %1, i64 0
  %3 = shufflevector <4 x i32> %2, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %4

4:                                                ; preds = %4, %0
  %5 = phi i32 [ 0, %0 ], [ %11, %4 ]
  %6 = phi <4 x i32> [ zeroinitializer, %0 ], [ %10, %4 ]
  %7 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %0 ], [ %12, %4 ]
  %8 = lshr <4 x i32> %3, %7
  %9 = and <4 x i32> %8, <i32 1, i32 1, i32 1, i32 1>
  %10 = add <4 x i32> %9, %6
  %11 = add nuw i32 %5, 4
  %12 = add <4 x i32> %7, <i32 4, i32 4, i32 4, i32 4>
  %13 = icmp eq i32 %11, 8
  br i1 %13, label %14, label %4, !llvm.loop !74

14:                                               ; preds = %4
  %15 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %10)
  %16 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34), align 8, !tbaa !75
  %17 = tail call ptr %16(i32 noundef 16) #16
  %18 = tail call ptr @build_qualified_type(ptr noundef %17, i32 noundef 1) #16
  %19 = tail call fastcc ptr @get_gcov_unsigned_t() #17
  %20 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 31, ptr noundef null, ptr noundef %19) #16
  %21 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 1
  store ptr null, ptr %21, align 8, !tbaa !47
  %22 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !47
  %24 = tail call ptr @build_int_cstu(ptr noundef %23, i64 noundef 875574570) #16
  %25 = tail call ptr @tree_cons_stat(ptr noundef %20, ptr noundef %24, ptr noundef null) #16
  %26 = tail call ptr @build_pointer_type(ptr noundef %18) #16
  %27 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 31, ptr noundef null, ptr noundef %26) #16
  %28 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 1
  store ptr %20, ptr %28, align 8, !tbaa !47
  %29 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !38
  %30 = tail call ptr @tree_cons_stat(ptr noundef %27, ptr noundef %29, ptr noundef %25) #16
  %31 = tail call fastcc ptr @get_gcov_unsigned_t() #17
  %32 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 31, ptr noundef null, ptr noundef %31) #16
  %33 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 1
  store ptr %27, ptr %33, align 8, !tbaa !47
  %34 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !47
  %36 = load i32, ptr @local_tick, align 4, !tbaa !12
  %37 = zext i32 %36 to i64
  %38 = tail call ptr @build_int_cstu(ptr noundef %35, i64 noundef %37) #16
  %39 = tail call ptr @tree_cons_stat(ptr noundef %32, ptr noundef %38, ptr noundef %30) #16
  %40 = load ptr, ptr @integer_types, align 16, !tbaa !38
  %41 = tail call ptr @build_qualified_type(ptr noundef %40, i32 noundef 1) #16
  %42 = tail call ptr @build_pointer_type(ptr noundef %41) #16
  %43 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 31, ptr noundef null, ptr noundef %42) #16
  %44 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 1
  store ptr %32, ptr %44, align 8, !tbaa !47
  %45 = load ptr, ptr @da_file_name, align 8, !tbaa !38
  %46 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %45) #17
  %47 = trunc i64 %46 to i32
  %48 = add nsw i32 %47, 1
  %49 = tail call ptr @build_string(i32 noundef %48, ptr noundef %45) #16
  %50 = load ptr, ptr @integer_types, align 16, !tbaa !38
  %51 = shl i64 %46, 32
  %52 = ashr exact i64 %51, 32
  %53 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %52) #16
  %54 = tail call ptr @build_index_type(ptr noundef %53) #16
  %55 = tail call ptr @build_array_type(ptr noundef %50, ptr noundef %54) #16
  %56 = getelementptr inbounds %struct.tree_common, ptr %49, i64 0, i32 2
  store ptr %55, ptr %56, align 8, !tbaa !47
  %57 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %42, ptr noundef %49) #16
  %58 = tail call ptr @tree_cons_stat(ptr noundef %43, ptr noundef %57, ptr noundef %39) #16
  %59 = tail call fastcc ptr @build_fn_info_type(i32 noundef %15) #17
  %60 = tail call ptr @build_qualified_type(ptr noundef %59, i32 noundef 1) #16
  %61 = tail call ptr @build_pointer_type(ptr noundef %60) #16
  %62 = load ptr, ptr @functions_head, align 8, !tbaa !38
  %63 = icmp eq ptr %62, null
  br i1 %63, label %84, label %64

64:                                               ; preds = %14, %64
  %65 = phi ptr [ %71, %64 ], [ %62, %14 ]
  %66 = phi i32 [ %70, %64 ], [ 0, %14 ]
  %67 = phi ptr [ %69, %64 ], [ null, %14 ]
  %68 = tail call fastcc ptr @build_fn_info_value(ptr noundef nonnull %65, ptr noundef %59) #17
  %69 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %68, ptr noundef %67) #16
  %70 = add i32 %66, 1
  %71 = load ptr, ptr %65, align 8, !tbaa !38
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %64, !llvm.loop !76

73:                                               ; preds = %64
  %74 = icmp eq i32 %70, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %73
  %76 = zext i32 %66 to i64
  %77 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %76) #16
  %78 = tail call ptr @build_index_type(ptr noundef %77) #16
  %79 = tail call ptr @build_array_type(ptr noundef %59, ptr noundef %78) #16
  %80 = tail call ptr @nreverse(ptr noundef %69) #16
  %81 = tail call ptr @build_constructor_from_list(ptr noundef %79, ptr noundef %80) #16
  %82 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %61, ptr noundef %81) #16
  %83 = zext i32 %70 to i64
  br label %86

84:                                               ; preds = %14, %73
  %85 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !38
  br label %86

86:                                               ; preds = %84, %75
  %87 = phi i64 [ %83, %75 ], [ 0, %84 ]
  %88 = phi ptr [ %82, %75 ], [ %85, %84 ]
  %89 = tail call fastcc ptr @get_gcov_unsigned_t() #17
  %90 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 31, ptr noundef null, ptr noundef %89) #16
  %91 = getelementptr inbounds %struct.tree_common, ptr %90, i64 0, i32 1
  store ptr %43, ptr %91, align 8, !tbaa !47
  %92 = tail call fastcc ptr @get_gcov_unsigned_t() #17
  %93 = tail call ptr @build_int_cstu(ptr noundef %92, i64 noundef %87) #16
  %94 = tail call ptr @tree_cons_stat(ptr noundef %90, ptr noundef %93, ptr noundef %58) #16
  %95 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 31, ptr noundef null, ptr noundef %61) #16
  %96 = getelementptr inbounds %struct.tree_common, ptr %95, i64 0, i32 1
  store ptr %90, ptr %96, align 8, !tbaa !47
  %97 = tail call ptr @tree_cons_stat(ptr noundef %95, ptr noundef %88, ptr noundef %94) #16
  %98 = tail call fastcc ptr @get_gcov_unsigned_t() #17
  %99 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 31, ptr noundef null, ptr noundef %98) #16
  %100 = getelementptr inbounds %struct.tree_common, ptr %99, i64 0, i32 1
  store ptr %95, ptr %100, align 8, !tbaa !47
  %101 = tail call fastcc ptr @get_gcov_unsigned_t() #17
  %102 = load i32, ptr @prg_ctr_mask, align 4, !tbaa !12
  %103 = zext i32 %102 to i64
  %104 = tail call ptr @build_int_cstu(ptr noundef %101, i64 noundef %103) #16
  %105 = tail call ptr @tree_cons_stat(ptr noundef %99, ptr noundef %104, ptr noundef %97) #16
  %106 = tail call fastcc ptr @build_ctr_info_type() #17
  %107 = zext i32 %15 to i64
  %108 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %107) #16
  %109 = tail call ptr @build_index_type(ptr noundef %108) #16
  %110 = tail call ptr @build_array_type(ptr noundef %106, ptr noundef %109) #16
  %111 = load i32, ptr @prg_ctr_mask, align 4, !tbaa !12
  br label %112

112:                                              ; preds = %86, %123
  %113 = phi i32 [ %111, %86 ], [ %124, %123 ]
  %114 = phi i32 [ 0, %86 ], [ %126, %123 ]
  %115 = phi ptr [ null, %86 ], [ %125, %123 ]
  %116 = shl nuw i32 1, %114
  %117 = and i32 %113, %116
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %112
  %120 = tail call fastcc ptr @build_ctr_info_value(i32 noundef %114, ptr noundef %106) #17
  %121 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %120, ptr noundef %115) #16
  %122 = load i32, ptr @prg_ctr_mask, align 4, !tbaa !12
  br label %123

123:                                              ; preds = %112, %119
  %124 = phi i32 [ %122, %119 ], [ %113, %112 ]
  %125 = phi ptr [ %121, %119 ], [ %115, %112 ]
  %126 = add nuw nsw i32 %114, 1
  %127 = icmp eq i32 %126, 8
  br i1 %127, label %128, label %112, !llvm.loop !77

128:                                              ; preds = %123
  %129 = tail call ptr @nreverse(ptr noundef %125) #16
  %130 = tail call ptr @build_constructor_from_list(ptr noundef %110, ptr noundef %129) #16
  %131 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 31, ptr noundef null, ptr noundef %110) #16
  %132 = getelementptr inbounds %struct.tree_common, ptr %131, i64 0, i32 1
  store ptr %99, ptr %132, align 8, !tbaa !47
  %133 = tail call ptr @tree_cons_stat(ptr noundef %131, ptr noundef %130, ptr noundef %105) #16
  tail call void @finish_builtin_struct(ptr noundef %17, ptr noundef nonnull @.str.42, ptr noundef %131, ptr noundef null) #16
  %134 = tail call ptr @nreverse(ptr noundef %133) #16
  %135 = tail call ptr @build_constructor_from_list(ptr noundef %17, ptr noundef %134) #16
  ret ptr %135
}

; Function Attrs: optsize
declare void @varpool_finalize_decl(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_function_type_list(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_call_expr_loc(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare void @append_to_statement_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @cgraph_build_static_cdtor(i8 noundef signext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_qualified_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_gcov_unsigned_t() unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !30
  %2 = tail call ptr %1(i32 noundef 32, i32 noundef 1) #16
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_int_cstu(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_string(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_index_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @build_fn_info_type(i32 noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34), align 8, !tbaa !75
  %3 = tail call ptr %2(i32 noundef 16) #16
  %4 = tail call fastcc ptr @get_gcov_unsigned_t() #17
  %5 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 31, ptr noundef null, ptr noundef %4) #16
  %6 = tail call fastcc ptr @get_gcov_unsigned_t() #17
  %7 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 31, ptr noundef null, ptr noundef %6) #16
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  store ptr %5, ptr %8, align 8, !tbaa !47
  %9 = add i32 %0, -1
  %10 = zext i32 %9 to i64
  %11 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %10) #16
  %12 = tail call ptr @build_index_type(ptr noundef %11) #16
  %13 = tail call fastcc ptr @get_gcov_unsigned_t() #17
  %14 = tail call ptr @build_array_type(ptr noundef %13, ptr noundef %12) #16
  %15 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 31, ptr noundef null, ptr noundef %14) #16
  %16 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 1
  store ptr %7, ptr %16, align 8, !tbaa !47
  tail call void @finish_builtin_struct(ptr noundef %3, ptr noundef nonnull @.str.43, ptr noundef %15, ptr noundef null) #16
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @build_fn_info_value(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = tail call fastcc ptr @get_gcov_unsigned_t() #17
  %6 = getelementptr inbounds %struct.function_list, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !54
  %8 = zext i32 %7 to i64
  %9 = tail call ptr @build_int_cstu(ptr noundef %5, i64 noundef %8) #16
  %10 = tail call ptr @tree_cons_stat(ptr noundef %4, ptr noundef %9, ptr noundef null) #16
  %11 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !47
  %13 = tail call fastcc ptr @get_gcov_unsigned_t() #17
  %14 = getelementptr inbounds %struct.function_list, ptr %0, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !55
  %16 = zext i32 %15 to i64
  %17 = tail call ptr @build_int_cstu(ptr noundef %13, i64 noundef %16) #16
  %18 = tail call ptr @tree_cons_stat(ptr noundef %12, ptr noundef %17, ptr noundef %10) #16
  %19 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !47
  %21 = load i32, ptr @prg_ctr_mask, align 4, !tbaa !12
  br label %22

22:                                               ; preds = %2, %38
  %23 = phi i32 [ %21, %2 ], [ %39, %38 ]
  %24 = phi i64 [ 0, %2 ], [ %41, %38 ]
  %25 = phi ptr [ null, %2 ], [ %40, %38 ]
  %26 = trunc i64 %24 to i32
  %27 = shl nuw i32 1, %26
  %28 = and i32 %23, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %22
  %31 = tail call fastcc ptr @get_gcov_unsigned_t() #17
  %32 = getelementptr inbounds %struct.function_list, ptr %0, i64 0, i32 3, i64 %24
  %33 = load i32, ptr %32, align 4, !tbaa !12
  %34 = zext i32 %33 to i64
  %35 = tail call ptr @build_int_cstu(ptr noundef %31, i64 noundef %34) #16
  %36 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %35, ptr noundef %25) #16
  %37 = load i32, ptr @prg_ctr_mask, align 4, !tbaa !12
  br label %38

38:                                               ; preds = %22, %30
  %39 = phi i32 [ %37, %30 ], [ %23, %22 ]
  %40 = phi ptr [ %36, %30 ], [ %25, %22 ]
  %41 = add nuw nsw i64 %24, 1
  %42 = icmp eq i64 %41, 8
  br i1 %42, label %43, label %22, !llvm.loop !78

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !47
  %46 = tail call ptr @nreverse(ptr noundef %40) #16
  %47 = tail call ptr @build_constructor_from_list(ptr noundef %45, ptr noundef %46) #16
  %48 = tail call ptr @tree_cons_stat(ptr noundef %20, ptr noundef %47, ptr noundef %18) #16
  %49 = tail call ptr @nreverse(ptr noundef %48) #16
  %50 = tail call ptr @build_constructor_from_list(ptr noundef %1, ptr noundef %49) #16
  ret ptr %50
}

; Function Attrs: optsize
declare ptr @build_constructor_from_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @nreverse(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @build_ctr_info_type() unnamed_addr #0 {
  %1 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34), align 8, !tbaa !75
  %2 = tail call ptr %1(i32 noundef 16) #16
  %3 = tail call ptr @get_gcov_type() #17
  %4 = tail call ptr @build_pointer_type(ptr noundef %3) #16
  %5 = tail call fastcc ptr @get_gcov_unsigned_t() #17
  %6 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 31, ptr noundef null, ptr noundef %5) #16
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  store ptr null, ptr %7, align 8, !tbaa !47
  %8 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 31, ptr noundef null, ptr noundef %4) #16
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  store ptr %6, ptr %9, align 8, !tbaa !47
  %10 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !38
  %11 = tail call fastcc ptr @get_gcov_unsigned_t() #17
  %12 = tail call ptr (ptr, ...) @build_function_type_list(ptr noundef %10, ptr noundef %4, ptr noundef %11, ptr noundef null) #16
  %13 = tail call ptr @build_pointer_type(ptr noundef %12) #16
  %14 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 31, ptr noundef null, ptr noundef %13) #16
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 1
  store ptr %8, ptr %15, align 8, !tbaa !47
  tail call void @finish_builtin_struct(ptr noundef %2, ptr noundef nonnull @.str.44, ptr noundef %14, ptr noundef null) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @build_ctr_info_value(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = tail call fastcc ptr @get_gcov_unsigned_t() #17
  %6 = zext i32 %0 to i64
  %7 = getelementptr inbounds [8 x i32], ptr @prg_n_ctrs, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !12
  %9 = zext i32 %8 to i64
  %10 = tail call ptr @build_int_cstu(ptr noundef %5, i64 noundef %9) #16
  %11 = tail call ptr @tree_cons_stat(ptr noundef %4, ptr noundef %10, ptr noundef null) #16
  %12 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !47
  %14 = load i32, ptr %7, align 4, !tbaa !12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %43, label %16

16:                                               ; preds = %2
  %17 = tail call fastcc ptr @get_gcov_unsigned_t() #17
  %18 = load i32, ptr %7, align 4, !tbaa !12
  %19 = add i32 %18, -1
  %20 = zext i32 %19 to i64
  %21 = tail call ptr @build_int_cstu(ptr noundef %17, i64 noundef %20) #16
  %22 = tail call ptr @build_index_type(ptr noundef %21) #16
  %23 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !47
  %25 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  %27 = tail call ptr @build_array_type(ptr noundef %26, ptr noundef %22) #16
  %28 = getelementptr inbounds [8 x ptr], ptr @tree_ctr_tables, i64 0, i64 %6
  %29 = load ptr, ptr %28, align 8, !tbaa !38
  %30 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  store ptr %27, ptr %30, align 8, !tbaa !47
  %31 = getelementptr inbounds %struct.tree_type, ptr %27, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !47
  %33 = load ptr, ptr %28, align 8, !tbaa !38
  %34 = getelementptr inbounds %struct.tree_decl_common, ptr %33, i64 0, i32 1
  store ptr %32, ptr %34, align 8, !tbaa !47
  %35 = getelementptr inbounds %struct.tree_type, ptr %27, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !47
  %37 = load ptr, ptr %28, align 8, !tbaa !38
  %38 = getelementptr inbounds %struct.tree_decl_common, ptr %37, i64 0, i32 4
  store ptr %36, ptr %38, align 8, !tbaa !47
  %39 = load ptr, ptr %28, align 8, !tbaa !38
  tail call void @varpool_finalize_decl(ptr noundef %39) #16
  %40 = load ptr, ptr %23, align 8, !tbaa !47
  %41 = load ptr, ptr %28, align 8, !tbaa !38
  %42 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %40, ptr noundef %41) #16
  br label %45

43:                                               ; preds = %2
  %44 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !38
  br label %45

45:                                               ; preds = %43, %16
  %46 = phi ptr [ %44, %43 ], [ %42, %16 ]
  %47 = tail call ptr @tree_cons_stat(ptr noundef %13, ptr noundef %46, ptr noundef %11) #16
  %48 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !47
  %50 = shl i64 %6, 2
  %51 = call ptr @llvm.load.relative.i64(ptr @reltable.build_ctr_info_value, i64 %50)
  %52 = tail call ptr @get_identifier(ptr noundef %51) #16
  %53 = getelementptr inbounds %struct.tree_common, ptr %49, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !47
  %55 = getelementptr inbounds %struct.tree_common, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !47
  %57 = tail call ptr @build_decl_stat(i32 noundef 1, i32 noundef 29, ptr noundef %52, ptr noundef %56) #16
  %58 = getelementptr inbounds %struct.tree_decl_common, ptr %57, i64 0, i32 2
  %59 = load i64, ptr %58, align 8
  %60 = load i64, ptr %57, align 8
  %61 = or i64 %59, 33558528
  store i64 %61, ptr %58, align 8
  %62 = or i64 %60, 167772160
  store i64 %62, ptr %57, align 8
  %63 = tail call ptr @decl_assembler_name(ptr noundef nonnull %57) #16
  %64 = load ptr, ptr %53, align 8, !tbaa !47
  %65 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %64, ptr noundef nonnull %57) #16
  %66 = tail call ptr @tree_cons_stat(ptr noundef %49, ptr noundef %65, ptr noundef %47) #16
  %67 = tail call ptr @nreverse(ptr noundef %66) #16
  %68 = tail call ptr @build_constructor_from_list(ptr noundef nonnull %1, ptr noundef %67) #16
  ret ptr %68
}

; Function Attrs: optsize
declare void @finish_builtin_struct(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"gcov_var", !7, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !11, i64 40, !7, i64 48}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = !{!10, !10, i64 0}
!13 = !{!6, !10, i64 24}
!14 = !{!6, !10, i64 32}
!15 = !{!6, !10, i64 28}
!16 = !{!6, !10, i64 12}
!17 = !{!6, !10, i64 16}
!18 = !{!6, !7, i64 48}
!19 = !{!6, !10, i64 8}
!20 = !{!6, !11, i64 40}
!21 = !{!6, !10, i64 20}
!22 = !{!23, !10, i64 0}
!23 = !{!"gcov_summary", !10, i64 0, !8, i64 8}
!24 = !{!25, !10, i64 0}
!25 = !{!"gcov_ctr_summary", !10, i64 0, !10, i64 4, !11, i64 8, !11, i64 16, !11, i64 24}
!26 = !{!25, !10, i64 4}
!27 = !{!25, !11, i64 8}
!28 = !{!25, !11, i64 16}
!29 = !{!25, !11, i64 24}
!30 = !{!31, !7, i64 456}
!31 = !{!"lang_hooks", !7, i64 0, !11, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !32, i64 240, !33, i64 248, !34, i64 256, !35, i64 272, !36, i64 432, !37, i64 560, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608, !7, i64 616, !7, i64 624, !7, i64 632, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !8, i64 672}
!32 = !{!"lang_hooks_for_tree_inlining", !7, i64 0}
!33 = !{!"lang_hooks_for_callgraph", !7, i64 0}
!34 = !{!"lang_hooks_for_tree_dump", !7, i64 0, !7, i64 8}
!35 = !{!"lang_hooks_for_decls", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!36 = !{!"lang_hooks_for_types", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !8, i64 120}
!37 = !{!"lang_hooks_for_lto", !7, i64 0, !7, i64 8, !7, i64 16}
!38 = !{!7, !7, i64 0}
!39 = !{!40, !10, i64 108}
!40 = !{!"function", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !10, i64 124, !7, i64 128, !10, i64 136, !10, i64 137, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 138, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139, !10, i64 139}
!41 = !{!42, !10, i64 0}
!42 = !{!"counts_entry", !10, i64 0, !10, i64 4, !10, i64 8, !7, i64 16, !25, i64 24, !7, i64 56}
!43 = !{!42, !10, i64 4}
!44 = !{!42, !10, i64 8}
!45 = !{!42, !10, i64 24}
!46 = !{!42, !7, i64 16}
!47 = !{!8, !8, i64 0}
!48 = !{!49, !10, i64 8}
!49 = !{!"", !7, i64 0, !10, i64 8, !10, i64 12, !8, i64 16}
!50 = !{!49, !7, i64 0}
!51 = !{i32 0, i32 2}
!52 = !{!53, !7, i64 0}
!53 = !{!"function_list", !7, i64 0, !10, i64 8, !10, i64 12, !8, i64 16}
!54 = !{!53, !10, i64 8}
!55 = !{!53, !10, i64 12}
!56 = distinct !{!56, !57, !58, !59}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.isvectorized", i32 1}
!59 = !{!"llvm.loop.unroll.runtime.disable"}
!60 = !{i32 -1, i32 2}
!61 = !{!42, !7, i64 56}
!62 = distinct !{!62, !57}
!63 = !{!42, !10, i64 28}
!64 = !{!42, !11, i64 32}
!65 = !{!42, !11, i64 40}
!66 = !{!42, !11, i64 48}
!67 = distinct !{!67, !57}
!68 = !{!11, !11, i64 0}
!69 = distinct !{!69, !57}
!70 = distinct !{!70, !57}
!71 = distinct !{!71, !57}
!72 = distinct !{!72, !57}
!73 = distinct !{!73, !57}
!74 = distinct !{!74, !57, !58, !59}
!75 = !{!31, !7, i64 432}
!76 = distinct !{!76, !57}
!77 = distinct !{!77, !57}
!78 = distinct !{!78, !57}
