; ModuleID = 'tree-nested.c'
source_filename = "tree-nested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.nesting_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, ptr, ptr, i8, i8, i8, i8, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.tree_omp_clause = type { %struct.tree_common, i32, i32, %union.omp_clause_subcode, ptr, ptr, [1 x ptr] }
%union.omp_clause_subcode = type { i32 }
%struct.gimple_statement_omp_parallel = type { %struct.gimple_statement_omp, ptr, ptr, ptr }
%struct.gimple_statement_omp = type { %struct.gimple_statement_base, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_omp_for = type { %struct.gimple_statement_omp, ptr, i64, ptr, ptr }
%struct.gimple_statement_omp_sections = type { %struct.gimple_statement_omp, ptr, ptr }
%struct.gimple_statement_omp_single = type { %struct.gimple_statement_omp, ptr }
%struct.gimple_statement_bind = type { %struct.gimple_statement_base, ptr, ptr, ptr }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.gimple_omp_for_iter = type { i32, ptr, ptr, ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.nesting_copy_body_data = type { %struct.copy_body_data, ptr }
%struct.copy_body_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }

@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@current_function_decl = external local_unnamed_addr global ptr, align 8
@dump_flags = external global i32, align 4
@dump_file = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"\0A;; Function %s\0A\0A\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@nesting_info_bitmap_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8
@optimize = external local_unnamed_addr global i32, align 4
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"tree-nested.c\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"FRAME.\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"FRAME\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"__chain\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Setting static-chain for %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"CHAIN\00", align 1
@implicit_built_in_decls = external local_unnamed_addr global [721 x ptr], align 16
@ptr_mode = external local_unnamed_addr global i32, align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.9 = private unnamed_addr constant [14 x i8] c"__nl_goto_buf\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Guessing no static-chain for %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"convert_all_function_calls iterations: %d\0A\0A\00", align 1
@trampoline_type = internal global ptr null, align 8
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@.str.12 = private unnamed_addr constant [7 x i8] c"__data\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"__builtin_trampoline\00", align 1
@warn_padded = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@gt_ggc_r_gt_tree_nested_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @trampoline_type, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_addr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !40 {
  %3 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %0) #14, !range !41
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %11, label %5, !prof !42

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %8, %5 ], [ %0, %2 ]
  %7 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  %9 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %8) #14, !range !41
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %5, !prof !46, !llvm.loop !47

11:                                               ; preds = %5, %2
  %12 = phi ptr [ %0, %2 ], [ %8, %5 ]
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !49
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %20, !prof !51

18:                                               ; preds = %11
  %19 = or i64 %13, 262144
  store i64 %19, ptr %12, align 8
  br label %20

20:                                               ; preds = %18, %11
  %21 = load ptr, ptr @current_function_decl, align 8, !tbaa !52
  store ptr %1, ptr @current_function_decl, align 8, !tbaa !52
  %22 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !43
  %24 = tail call ptr @build_pointer_type(ptr noundef %23) #15
  %25 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %24, ptr noundef %0) #15
  store ptr %21, ptr @current_function_decl, align 8, !tbaa !52
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !40 !PGOFuncName !54 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %4 [
    i16 42, label %5
    i16 41, label %5
    i16 45, label %5
    i16 46, label %5
    i16 118, label %5
    i16 43, label %5
    i16 44, label %5
  ], !prof !55

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @insert_field_into_struct(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 !prof !56 {
  %3 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 4
  store ptr %0, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = icmp eq ptr %5, null
  br i1 %6, label %25, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !43
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !43
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %17, label %25

13:                                               ; preds = %17
  %14 = getelementptr inbounds %struct.tree_decl_common, ptr %20, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !43
  %16 = icmp ult i32 %9, %15
  br i1 %16, label %17, label %22, !llvm.loop !57

17:                                               ; preds = %7, %13
  %18 = phi ptr [ %20, %13 ], [ %5, %7 ]
  %19 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !52
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %13, !llvm.loop !57

22:                                               ; preds = %17, %13
  %23 = phi ptr [ null, %17 ], [ %20, %13 ]
  %24 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 1
  br label %25

25:                                               ; preds = %22, %7, %2
  %26 = phi ptr [ %4, %2 ], [ %4, %7 ], [ %24, %22 ]
  %27 = phi ptr [ null, %2 ], [ %5, %7 ], [ %23, %22 ]
  %28 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 1
  store ptr %27, ptr %28, align 8, !tbaa !43
  store ptr %1, ptr %26, align 8, !tbaa !52
  %29 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 7
  %30 = load i32, ptr %29, align 8, !tbaa !43
  %31 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 3
  %32 = load i32, ptr %31, align 8, !tbaa !43
  %33 = icmp ult i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 %32, ptr %29, align 8, !tbaa !43
  br label %35

35:                                               ; preds = %34, %25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @lower_nested_functions(ptr noundef %0) local_unnamed_addr #0 !prof !56 {
  %2 = tail call ptr @cgraph_node(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %2, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !58
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %1
  tail call fastcc void @gimplify_all_functions(ptr noundef nonnull %2) #14
  %7 = tail call ptr @dump_begin(i32 noundef 6, ptr noundef nonnull @dump_flags) #15
  store ptr %7, ptr @dump_file, align 8, !tbaa !52
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !67
  %11 = tail call ptr %10(ptr noundef %0, i32 noundef 2) #15
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str, ptr noundef %11) #14
  br label %13

13:                                               ; preds = %9, %6
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @nesting_info_bitmap_obstack) #15
  %14 = tail call fastcc ptr @create_nesting_tree(ptr noundef nonnull %2) #14
  tail call fastcc void @walk_all_functions(ptr noundef nonnull @convert_nonlocal_reference_stmt, ptr noundef nonnull @convert_nonlocal_reference_op, ptr noundef %14) #14
  tail call fastcc void @walk_all_functions(ptr noundef nonnull @convert_local_reference_stmt, ptr noundef nonnull @convert_local_reference_op, ptr noundef %14) #14
  tail call fastcc void @walk_all_functions(ptr noundef nonnull @convert_nl_goto_reference, ptr noundef null, ptr noundef %14) #14
  tail call fastcc void @walk_all_functions(ptr noundef nonnull @convert_nl_goto_receiver, ptr noundef null, ptr noundef %14) #14
  tail call fastcc void @convert_all_function_calls(ptr noundef %14) #14
  tail call fastcc void @finalize_nesting_tree(ptr noundef %14) #14
  tail call fastcc void @unnest_nesting_tree(ptr noundef %14) #14
  tail call fastcc void @free_nesting_tree(ptr noundef %14) #14
  tail call void @bitmap_obstack_release(ptr noundef nonnull @nesting_info_bitmap_obstack) #15
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !52
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @dump_end(i32 noundef 6, ptr noundef nonnull %15) #15
  store ptr null, ptr @dump_file, align 8, !tbaa !52
  br label %18

18:                                               ; preds = %13, %17, %1
  ret void
}

; Function Attrs: optsize
declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_all_functions(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !56 !PGOFuncName !75 {
  %2 = load ptr, ptr %0, align 8, !tbaa !76
  %3 = tail call ptr @gimple_body(ptr noundef %2) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !76
  tail call void @gimplify_function_tree(ptr noundef %6) #15
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %7, %11
  %12 = phi ptr [ %14, %11 ], [ %9, %7 ]
  tail call fastcc void @gimplify_all_functions(ptr noundef nonnull %12) #14
  %13 = getelementptr inbounds %struct.cgraph_node, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %11, !llvm.loop !77

16:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: optsize
declare ptr @dump_begin(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_nesting_tree(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !56 !PGOFuncName !78 {
  %2 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 120) #15
  %3 = tail call ptr @pointer_map_create() #15
  %4 = getelementptr inbounds %struct.nesting_info, ptr %2, i64 0, i32 3
  store ptr %3, ptr %4, align 8, !tbaa !79
  %5 = tail call ptr @pointer_map_create() #15
  %6 = getelementptr inbounds %struct.nesting_info, ptr %2, i64 0, i32 4
  store ptr %5, ptr %6, align 8, !tbaa !81
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @nesting_info_bitmap_obstack) #15
  %8 = getelementptr inbounds %struct.nesting_info, ptr %2, i64 0, i32 5
  store ptr %7, ptr %8, align 8, !tbaa !82
  %9 = load ptr, ptr %0, align 8, !tbaa !76
  %10 = getelementptr inbounds %struct.nesting_info, ptr %2, i64 0, i32 6
  store ptr %9, ptr %10, align 8, !tbaa !83
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = icmp eq ptr %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.nesting_info, ptr %2, i64 0, i32 1
  br label %16

16:                                               ; preds = %14, %16
  %17 = phi ptr [ %12, %14 ], [ %22, %16 ]
  %18 = tail call fastcc ptr @create_nesting_tree(ptr noundef nonnull %17) #14
  store ptr %2, ptr %18, align 8, !tbaa !84
  %19 = load ptr, ptr %15, align 8, !tbaa !85
  %20 = getelementptr inbounds %struct.nesting_info, ptr %18, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !86
  store ptr %18, ptr %15, align 8, !tbaa !85
  %21 = getelementptr inbounds %struct.cgraph_node, ptr %17, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %16, !llvm.loop !87

24:                                               ; preds = %16
  %25 = load ptr, ptr %10, align 8, !tbaa !83
  br label %26

26:                                               ; preds = %24, %1
  %27 = phi ptr [ %25, %24 ], [ %9, %1 ]
  %28 = tail call fastcc zeroext i8 @check_for_nested_with_variably_modified(ptr noundef %27, ptr noundef %27) #14, !range !41
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %10, align 8, !tbaa !83
  %32 = getelementptr inbounds %struct.tree_function_decl, ptr %31, i64 0, i32 5
  %33 = load i32, ptr %32, align 8
  %34 = or i32 %33, 32768
  store i32 %34, ptr %32, align 8
  br label %35

35:                                               ; preds = %30, %26
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @walk_all_functions(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !56 !PGOFuncName !88 {
  %4 = tail call fastcc ptr @iter_nestinfo_start(ptr noundef %2) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %4, %3 ]
  tail call fastcc void @walk_function(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7) #14
  %8 = tail call fastcc ptr @iter_nestinfo_next(ptr noundef nonnull %7) #14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %6, !llvm.loop !89

10:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @convert_nonlocal_reference_stmt(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #0 !prof !56 !PGOFuncName !90 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #14
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #14, !range !94
  %8 = trunc i32 %7 to i8
  switch i8 %8, label %70 [
    i8 3, label %9
    i8 26, label %17
    i8 27, label %17
    i8 23, label %40
    i8 30, label %46
    i8 32, label %52
    i8 29, label %58
    i8 24, label %58
    i8 25, label %58
    i8 10, label %60
    i8 1, label %67
  ]

9:                                                ; preds = %3
  %10 = tail call fastcc ptr @gimple_goto_dest(ptr noundef %6) #14
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 30
  br i1 %13, label %70, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  store i8 1, ptr %15, align 8, !tbaa !95
  %16 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  store i8 0, ptr %16, align 1, !tbaa !96
  br label %70

17:                                               ; preds = %3, %3
  %18 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !82
  %20 = tail call fastcc ptr @gimple_omp_taskreg_clauses_ptr(ptr noundef %6) #14
  %21 = tail call fastcc zeroext i8 @convert_nonlocal_omp_clauses(ptr noundef nonnull %20, ptr noundef nonnull %2) #14, !range !41
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %17
  %24 = tail call fastcc ptr @get_chain_decl(ptr noundef nonnull %5) #14
  %25 = tail call fastcc i32 @gimple_location(ptr noundef %6) #14
  %26 = tail call ptr @build_omp_clause(i32 noundef %25, i32 noundef 3) #15
  %27 = getelementptr inbounds %struct.tree_omp_clause, ptr %26, i64 0, i32 6
  store ptr %24, ptr %27, align 8, !tbaa !43
  %28 = tail call fastcc ptr @gimple_omp_taskreg_clauses(ptr noundef %6) #14
  %29 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 1
  store ptr %28, ptr %29, align 8, !tbaa !43
  tail call fastcc void @gimple_omp_taskreg_set_clauses(ptr noundef %6, ptr noundef %26) #14
  br label %30

30:                                               ; preds = %23, %17
  %31 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 7
  %32 = load ptr, ptr %31, align 8, !tbaa !97
  store ptr null, ptr %31, align 8, !tbaa !97
  %33 = tail call fastcc ptr @gimple_omp_body(ptr noundef %6) #14
  tail call fastcc void @walk_body(ptr noundef nonnull @convert_nonlocal_reference_stmt, ptr noundef nonnull @convert_nonlocal_reference_op, ptr noundef nonnull %5, ptr noundef %33) #14
  %34 = load ptr, ptr %31, align 8, !tbaa !97
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = tail call fastcc ptr @gimple_omp_body(ptr noundef %6) #14
  %38 = tail call fastcc ptr @gimple_seq_first_stmt(ptr noundef %37) #14
  tail call void @declare_vars(ptr noundef nonnull %34, ptr noundef %38, i8 noundef zeroext 0) #15
  br label %39

39:                                               ; preds = %36, %30
  store ptr %32, ptr %31, align 8, !tbaa !97
  store ptr %19, ptr %18, align 8, !tbaa !82
  br label %70

40:                                               ; preds = %3
  %41 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 5
  %42 = load ptr, ptr %41, align 8, !tbaa !82
  %43 = tail call fastcc ptr @gimple_omp_for_clauses_ptr(ptr noundef %6) #14
  %44 = tail call fastcc zeroext i8 @convert_nonlocal_omp_clauses(ptr noundef nonnull %43, ptr noundef nonnull %2) #14, !range !41
  tail call fastcc void @walk_gimple_omp_for(ptr noundef %6, ptr noundef nonnull @convert_nonlocal_reference_stmt, ptr noundef nonnull @convert_nonlocal_reference_op, ptr noundef %5) #14
  %45 = tail call fastcc ptr @gimple_omp_body(ptr noundef %6) #14
  tail call fastcc void @walk_body(ptr noundef nonnull @convert_nonlocal_reference_stmt, ptr noundef nonnull @convert_nonlocal_reference_op, ptr noundef %5, ptr noundef %45) #14
  store ptr %42, ptr %41, align 8, !tbaa !82
  br label %70

46:                                               ; preds = %3
  %47 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !82
  %49 = tail call fastcc ptr @gimple_omp_sections_clauses_ptr(ptr noundef %6) #14
  %50 = tail call fastcc zeroext i8 @convert_nonlocal_omp_clauses(ptr noundef nonnull %49, ptr noundef nonnull %2) #14, !range !41
  %51 = tail call fastcc ptr @gimple_omp_body(ptr noundef %6) #14
  tail call fastcc void @walk_body(ptr noundef nonnull @convert_nonlocal_reference_stmt, ptr noundef nonnull @convert_nonlocal_reference_op, ptr noundef %5, ptr noundef %51) #14
  store ptr %48, ptr %47, align 8, !tbaa !82
  br label %70

52:                                               ; preds = %3
  %53 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 5
  %54 = load ptr, ptr %53, align 8, !tbaa !82
  %55 = tail call fastcc ptr @gimple_omp_single_clauses_ptr(ptr noundef %6) #14
  %56 = tail call fastcc zeroext i8 @convert_nonlocal_omp_clauses(ptr noundef nonnull %55, ptr noundef nonnull %2) #14, !range !41
  %57 = tail call fastcc ptr @gimple_omp_body(ptr noundef %6) #14
  tail call fastcc void @walk_body(ptr noundef nonnull @convert_nonlocal_reference_stmt, ptr noundef nonnull @convert_nonlocal_reference_op, ptr noundef %5, ptr noundef %57) #14
  store ptr %54, ptr %53, align 8, !tbaa !82
  br label %70

58:                                               ; preds = %3, %3, %3
  %59 = tail call fastcc ptr @gimple_omp_body(ptr noundef %6) #14
  tail call fastcc void @walk_body(ptr noundef nonnull @convert_nonlocal_reference_stmt, ptr noundef nonnull @convert_nonlocal_reference_op, ptr noundef %5, ptr noundef %59) #14
  br label %70

60:                                               ; preds = %3
  %61 = load i32, ptr @optimize, align 4, !tbaa !49
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = tail call fastcc ptr @gimple_bind_block(ptr noundef %6) #14
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  tail call fastcc void @note_nonlocal_block_vlas(ptr noundef %5, ptr noundef nonnull %64) #14
  br label %70

67:                                               ; preds = %3
  %68 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  store i8 1, ptr %68, align 8, !tbaa !95
  %69 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  store i8 0, ptr %69, align 1, !tbaa !96
  br label %70

70:                                               ; preds = %39, %40, %46, %52, %58, %9, %3, %60, %63, %66, %67, %14
  %71 = phi i8 [ 0, %67 ], [ 1, %14 ], [ 0, %66 ], [ 0, %63 ], [ 0, %60 ], [ 0, %3 ], [ 1, %9 ], [ 1, %58 ], [ 1, %52 ], [ 1, %46 ], [ 1, %40 ], [ 1, %39 ]
  store i8 %71, ptr %1, align 1, !tbaa !43
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @convert_nonlocal_reference_op(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #0 !prof !56 !PGOFuncName !98 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = load ptr, ptr %0, align 8, !tbaa !52
  store i32 0, ptr %1, align 4, !tbaa !49
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %126 [
    i16 32, label %9
    i16 34, label %17
    i16 30, label %66
    i16 121, label %74
    i16 43, label %91
    i16 44, label %91
    i16 41, label %91
    i16 45, label %91
    i16 46, label %91
    i16 42, label %91
    i16 118, label %125
  ]

9:                                                ; preds = %3
  %10 = and i64 %7, 67108864
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %135

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 33554432
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %135

17:                                               ; preds = %12, %3
  %18 = tail call ptr @decl_function_context(ptr noundef nonnull %6) #15
  %19 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !83
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %135, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 5
  store i8 1, ptr %23, align 2, !tbaa !99
  %24 = tail call fastcc ptr @get_nonlocal_debug_decl(ptr noundef nonnull %5, ptr noundef nonnull %6) #14
  %25 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !82
  %27 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !43
  %29 = tail call i32 @bitmap_bit_p(ptr noundef %26, i32 noundef %28) #15
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %22
  %32 = tail call ptr @decl_function_context(ptr noundef nonnull %6) #15
  br label %33

33:                                               ; preds = %33, %31
  %34 = phi ptr [ %5, %31 ], [ %35, %33 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !84
  %36 = getelementptr inbounds %struct.nesting_info, ptr %35, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !83
  %38 = icmp eq ptr %37, %32
  br i1 %38, label %39, label %33, !llvm.loop !100

39:                                               ; preds = %33
  %40 = tail call fastcc ptr @lookup_field_for_decl(ptr noundef nonnull %35, ptr noundef nonnull %6, i32 noundef 1) #14
  %41 = tail call fastcc ptr @get_frame_field(ptr noundef %5, ptr noundef %32, ptr noundef %40, ptr noundef %2) #14
  %42 = tail call fastcc zeroext i8 @use_pointer_in_frame(ptr noundef nonnull %6) #14, !range !41
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %39
  %45 = tail call fastcc ptr @init_tmp_var(ptr noundef %5, ptr noundef %41, ptr noundef %2) #14
  %46 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !43
  %48 = getelementptr inbounds %struct.tree_common, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !43
  %50 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %49, ptr noundef %45) #15
  br label %51

51:                                               ; preds = %39, %44, %22
  %52 = phi ptr [ %24, %22 ], [ %50, %44 ], [ %41, %39 ]
  %53 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  %54 = load i8, ptr %53, align 8, !tbaa !95
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  %58 = load i8, ptr %57, align 1, !tbaa !96
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = tail call fastcc ptr @save_tmp_var(ptr noundef %5, ptr noundef %52, ptr noundef nonnull %2) #14
  br label %64

62:                                               ; preds = %56
  %63 = tail call fastcc ptr @init_tmp_var(ptr noundef %5, ptr noundef %52, ptr noundef nonnull %2) #14
  br label %64

64:                                               ; preds = %60, %62, %51
  %65 = phi ptr [ %61, %60 ], [ %63, %62 ], [ %52, %51 ]
  store ptr %65, ptr %0, align 8, !tbaa !52
  br label %135

66:                                               ; preds = %3
  %67 = tail call ptr @decl_function_context(ptr noundef nonnull %6) #15
  %68 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !83
  %70 = icmp eq ptr %67, %69
  br i1 %70, label %135, label %71

71:                                               ; preds = %66
  %72 = load i64, ptr %6, align 8
  %73 = or i64 %72, 65536
  store i64 %73, ptr %6, align 8
  br label %135

74:                                               ; preds = %3
  %75 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  %76 = load i8, ptr %75, align 8, !tbaa !95
  store i8 0, ptr %75, align 8, !tbaa !95
  %77 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  store i8 0, ptr %77, align 1, !tbaa !96
  %78 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 5
  store i8 0, ptr %78, align 2, !tbaa !99
  %79 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %80 = tail call ptr @walk_tree_1(ptr noundef nonnull %79, ptr noundef nonnull @convert_nonlocal_reference_op, ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #15
  store i8 1, ptr %75, align 8, !tbaa !95
  %81 = load i8, ptr %78, align 2, !tbaa !99
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %135, label %83

83:                                               ; preds = %74
  %84 = load ptr, ptr @current_function_decl, align 8, !tbaa !52
  %85 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 6
  %86 = load ptr, ptr %85, align 8, !tbaa !83
  store ptr %86, ptr @current_function_decl, align 8, !tbaa !52
  tail call void @recompute_tree_invariant_for_addr_expr(ptr noundef nonnull %6) #15
  store ptr %84, ptr @current_function_decl, align 8, !tbaa !52
  %87 = icmp eq i8 %76, 0
  br i1 %87, label %135, label %88

88:                                               ; preds = %83
  %89 = load ptr, ptr %4, align 8, !tbaa !91
  %90 = tail call fastcc ptr @gsi_gimplify_val(ptr noundef %89, ptr noundef nonnull %6, ptr noundef nonnull %2) #14
  store ptr %90, ptr %0, align 8, !tbaa !52
  br label %135

91:                                               ; preds = %3, %3, %3, %3, %3, %3
  %92 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  store i8 1, ptr %92, align 8, !tbaa !95
  %93 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  store i8 0, ptr %93, align 1, !tbaa !96
  %94 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %6) #14, !range !41
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %122, label %96

96:                                               ; preds = %91, %115
  %97 = phi ptr [ %117, %115 ], [ %6, %91 ]
  %98 = load i64, ptr %97, align 8
  %99 = trunc i64 %98 to i16
  switch i16 %99, label %115 [
    i16 41, label %100
    i16 45, label %102
    i16 46, label %102
    i16 42, label %108
  ]

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.tree_exp, ptr %97, i64 1, i32 0, i32 1
  br label %112

102:                                              ; preds = %96, %96
  %103 = getelementptr inbounds %struct.tree_exp, ptr %97, i64 1
  %104 = tail call ptr @walk_tree_1(ptr noundef nonnull %103, ptr noundef nonnull @convert_nonlocal_reference_op, ptr noundef %2, ptr noundef null, ptr noundef null) #15
  %105 = getelementptr inbounds %struct.tree_exp, ptr %97, i64 1, i32 0, i32 1
  %106 = tail call ptr @walk_tree_1(ptr noundef nonnull %105, ptr noundef nonnull @convert_nonlocal_reference_op, ptr noundef %2, ptr noundef null, ptr noundef null) #15
  %107 = getelementptr inbounds %struct.tree_exp, ptr %97, i64 1, i32 0, i32 2
  br label %112

108:                                              ; preds = %96
  %109 = getelementptr inbounds %struct.tree_exp, ptr %97, i64 1
  %110 = tail call ptr @walk_tree_1(ptr noundef nonnull %109, ptr noundef nonnull @convert_nonlocal_reference_op, ptr noundef %2, ptr noundef null, ptr noundef null) #15
  %111 = getelementptr inbounds %struct.tree_exp, ptr %97, i64 1, i32 0, i32 1
  br label %112

112:                                              ; preds = %102, %108, %100
  %113 = phi ptr [ %101, %100 ], [ %111, %108 ], [ %107, %102 ]
  %114 = tail call ptr @walk_tree_1(ptr noundef nonnull %113, ptr noundef nonnull @convert_nonlocal_reference_op, ptr noundef %2, ptr noundef null, ptr noundef null) #15
  br label %115

115:                                              ; preds = %112, %96
  %116 = getelementptr inbounds %struct.tree_exp, ptr %97, i64 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !52
  %118 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %117) #14, !range !41
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %96, !llvm.loop !101

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.tree_exp, ptr %97, i64 0, i32 3
  br label %122

122:                                              ; preds = %120, %91
  %123 = phi ptr [ %0, %91 ], [ %121, %120 ]
  store i8 0, ptr %92, align 8, !tbaa !95
  %124 = tail call ptr @walk_tree_1(ptr noundef nonnull %123, ptr noundef nonnull @convert_nonlocal_reference_op, ptr noundef %2, ptr noundef null, ptr noundef null) #15
  br label %135

125:                                              ; preds = %3
  store i32 1, ptr %1, align 4, !tbaa !49
  br label %135

126:                                              ; preds = %3
  %127 = and i64 %7, 65535
  %128 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %127
  %129 = load i32, ptr %128, align 4, !tbaa !49
  %130 = and i32 %129, -2
  %131 = icmp eq i32 %130, 2
  br i1 %131, label %135, label %132

132:                                              ; preds = %126
  store i32 1, ptr %1, align 4, !tbaa !49
  %133 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  store i8 1, ptr %133, align 8, !tbaa !95
  %134 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  store i8 0, ptr %134, align 1, !tbaa !96
  br label %135

135:                                              ; preds = %126, %74, %88, %83, %132, %66, %71, %17, %64, %9, %12, %125, %122
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @convert_local_reference_stmt(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #0 !prof !56 !PGOFuncName !102 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #14
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #14, !range !94
  %8 = trunc i32 %7 to i8
  switch i8 %8, label %57 [
    i8 26, label %9
    i8 27, label %9
    i8 23, label %34
    i8 30, label %40
    i8 32, label %46
    i8 29, label %52
    i8 24, label %52
    i8 25, label %52
    i8 1, label %54
  ]

9:                                                ; preds = %3, %3
  %10 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !82
  %12 = tail call fastcc ptr @gimple_omp_taskreg_clauses_ptr(ptr noundef %6) #14
  %13 = tail call fastcc zeroext i8 @convert_local_omp_clauses(ptr noundef nonnull %12, ptr noundef nonnull %2) #14, !range !41
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %9
  %16 = tail call fastcc ptr @get_frame_type(ptr noundef nonnull %5) #14
  %17 = tail call fastcc i32 @gimple_location(ptr noundef %6) #14
  %18 = tail call ptr @build_omp_clause(i32 noundef %17, i32 noundef 2) #15
  %19 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !103
  %21 = getelementptr inbounds %struct.tree_omp_clause, ptr %18, i64 0, i32 6
  store ptr %20, ptr %21, align 8, !tbaa !43
  %22 = tail call fastcc ptr @gimple_omp_taskreg_clauses(ptr noundef %6) #14
  %23 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 1
  store ptr %22, ptr %23, align 8, !tbaa !43
  tail call fastcc void @gimple_omp_taskreg_set_clauses(ptr noundef %6, ptr noundef %18) #14
  br label %24

24:                                               ; preds = %15, %9
  %25 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !97
  store ptr null, ptr %25, align 8, !tbaa !97
  %27 = tail call fastcc ptr @gimple_omp_body(ptr noundef %6) #14
  tail call fastcc void @walk_body(ptr noundef nonnull @convert_local_reference_stmt, ptr noundef nonnull @convert_local_reference_op, ptr noundef nonnull %5, ptr noundef %27) #14
  %28 = load ptr, ptr %25, align 8, !tbaa !97
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = tail call fastcc ptr @gimple_omp_body(ptr noundef %6) #14
  %32 = tail call fastcc ptr @gimple_seq_first_stmt(ptr noundef %31) #14
  tail call void @declare_vars(ptr noundef nonnull %28, ptr noundef %32, i8 noundef zeroext 0) #15
  br label %33

33:                                               ; preds = %30, %24
  store ptr %26, ptr %25, align 8, !tbaa !97
  store ptr %11, ptr %10, align 8, !tbaa !82
  br label %57

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !82
  %37 = tail call fastcc ptr @gimple_omp_for_clauses_ptr(ptr noundef %6) #14
  %38 = tail call fastcc zeroext i8 @convert_local_omp_clauses(ptr noundef nonnull %37, ptr noundef nonnull %2) #14, !range !41
  tail call fastcc void @walk_gimple_omp_for(ptr noundef %6, ptr noundef nonnull @convert_local_reference_stmt, ptr noundef nonnull @convert_local_reference_op, ptr noundef %5) #14
  %39 = tail call fastcc ptr @gimple_omp_body(ptr noundef %6) #14
  tail call fastcc void @walk_body(ptr noundef nonnull @convert_local_reference_stmt, ptr noundef nonnull @convert_local_reference_op, ptr noundef %5, ptr noundef %39) #14
  store ptr %36, ptr %35, align 8, !tbaa !82
  br label %57

40:                                               ; preds = %3
  %41 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 5
  %42 = load ptr, ptr %41, align 8, !tbaa !82
  %43 = tail call fastcc ptr @gimple_omp_sections_clauses_ptr(ptr noundef %6) #14
  %44 = tail call fastcc zeroext i8 @convert_local_omp_clauses(ptr noundef nonnull %43, ptr noundef nonnull %2) #14, !range !41
  %45 = tail call fastcc ptr @gimple_omp_body(ptr noundef %6) #14
  tail call fastcc void @walk_body(ptr noundef nonnull @convert_local_reference_stmt, ptr noundef nonnull @convert_local_reference_op, ptr noundef %5, ptr noundef %45) #14
  store ptr %42, ptr %41, align 8, !tbaa !82
  br label %57

46:                                               ; preds = %3
  %47 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !82
  %49 = tail call fastcc ptr @gimple_omp_single_clauses_ptr(ptr noundef %6) #14
  %50 = tail call fastcc zeroext i8 @convert_local_omp_clauses(ptr noundef nonnull %49, ptr noundef nonnull %2) #14, !range !41
  %51 = tail call fastcc ptr @gimple_omp_body(ptr noundef %6) #14
  tail call fastcc void @walk_body(ptr noundef nonnull @convert_local_reference_stmt, ptr noundef nonnull @convert_local_reference_op, ptr noundef %5, ptr noundef %51) #14
  store ptr %48, ptr %47, align 8, !tbaa !82
  br label %57

52:                                               ; preds = %3, %3, %3
  %53 = tail call fastcc ptr @gimple_omp_body(ptr noundef %6) #14
  tail call fastcc void @walk_body(ptr noundef nonnull @convert_local_reference_stmt, ptr noundef nonnull @convert_local_reference_op, ptr noundef %5, ptr noundef %53) #14
  br label %57

54:                                               ; preds = %3
  %55 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  store i8 1, ptr %55, align 8, !tbaa !95
  %56 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  store i8 0, ptr %56, align 1, !tbaa !96
  br label %57

57:                                               ; preds = %33, %34, %40, %46, %52, %3, %54
  %58 = phi i8 [ 0, %54 ], [ 0, %3 ], [ 1, %52 ], [ 1, %46 ], [ 1, %40 ], [ 1, %34 ], [ 1, %33 ]
  store i8 %58, ptr %1, align 1, !tbaa !43
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @convert_local_reference_op(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #0 !prof !56 !PGOFuncName !104 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = load ptr, ptr %0, align 8, !tbaa !52
  store i32 0, ptr %1, align 4, !tbaa !49
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %112 [
    i16 32, label %9
    i16 34, label %17
    i16 121, label %55
    i16 43, label %76
    i16 44, label %76
    i16 41, label %76
    i16 45, label %76
    i16 46, label %76
    i16 42, label %76
    i16 118, label %111
  ]

9:                                                ; preds = %3
  %10 = and i64 %7, 67108864
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %121

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 33554432
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %121

17:                                               ; preds = %12, %3
  %18 = tail call ptr @decl_function_context(ptr noundef nonnull %6) #15
  %19 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !83
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %22, label %121

22:                                               ; preds = %17
  %23 = tail call fastcc zeroext i8 @use_pointer_in_frame(ptr noundef nonnull %6) #14, !range !41
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %121

25:                                               ; preds = %22
  %26 = tail call fastcc ptr @lookup_field_for_decl(ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef 0) #14
  %27 = icmp eq ptr %26, null
  br i1 %27, label %121, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 5
  store i8 1, ptr %29, align 2, !tbaa !99
  %30 = tail call fastcc ptr @get_local_debug_decl(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %26) #14
  %31 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !82
  %33 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !43
  %35 = tail call i32 @bitmap_bit_p(ptr noundef %32, i32 noundef %34) #15
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load ptr, ptr %19, align 8, !tbaa !83
  %39 = tail call fastcc ptr @get_frame_field(ptr noundef nonnull %5, ptr noundef %38, ptr noundef nonnull %26, ptr noundef nonnull %2) #14
  br label %40

40:                                               ; preds = %37, %28
  %41 = phi ptr [ %30, %28 ], [ %39, %37 ]
  %42 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  %43 = load i8, ptr %42, align 8, !tbaa !95
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  %47 = load i8, ptr %46, align 1, !tbaa !96
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = tail call fastcc ptr @save_tmp_var(ptr noundef nonnull %5, ptr noundef %41, ptr noundef nonnull %2) #14
  br label %53

51:                                               ; preds = %45
  %52 = tail call fastcc ptr @init_tmp_var(ptr noundef nonnull %5, ptr noundef %41, ptr noundef nonnull %2) #14
  br label %53

53:                                               ; preds = %49, %51, %40
  %54 = phi ptr [ %50, %49 ], [ %52, %51 ], [ %41, %40 ]
  store ptr %54, ptr %0, align 8, !tbaa !52
  br label %121

55:                                               ; preds = %3
  %56 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  %57 = load i8, ptr %56, align 8, !tbaa !95
  store i8 0, ptr %56, align 8, !tbaa !95
  %58 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  store i8 0, ptr %58, align 1, !tbaa !96
  %59 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 5
  store i8 0, ptr %59, align 2, !tbaa !99
  %60 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %61 = tail call ptr @walk_tree_1(ptr noundef nonnull %60, ptr noundef nonnull @convert_local_reference_op, ptr noundef nonnull %2, ptr noundef null, ptr noundef null) #15
  store i8 %57, ptr %56, align 8, !tbaa !95
  %62 = load i8, ptr %59, align 2, !tbaa !99
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %121, label %64

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 10
  %66 = load ptr, ptr %65, align 8, !tbaa !103
  %67 = load i64, ptr %66, align 8
  %68 = or i64 %67, 262144
  store i64 %68, ptr %66, align 8
  %69 = load ptr, ptr @current_function_decl, align 8, !tbaa !52
  %70 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !83
  store ptr %71, ptr @current_function_decl, align 8, !tbaa !52
  tail call void @recompute_tree_invariant_for_addr_expr(ptr noundef nonnull %6) #15
  store ptr %69, ptr @current_function_decl, align 8, !tbaa !52
  %72 = icmp eq i8 %57, 0
  br i1 %72, label %121, label %73

73:                                               ; preds = %64
  %74 = load ptr, ptr %4, align 8, !tbaa !91
  %75 = tail call fastcc ptr @gsi_gimplify_val(ptr noundef %74, ptr noundef nonnull %6, ptr noundef nonnull %2) #14
  store ptr %75, ptr %0, align 8, !tbaa !52
  br label %121

76:                                               ; preds = %3, %3, %3, %3, %3, %3
  %77 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  %78 = load i8, ptr %77, align 8, !tbaa !95
  store i8 1, ptr %77, align 8, !tbaa !95
  %79 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  store i8 0, ptr %79, align 1, !tbaa !96
  %80 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %6) #14, !range !41
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %108, label %82

82:                                               ; preds = %76, %101
  %83 = phi ptr [ %103, %101 ], [ %6, %76 ]
  %84 = load i64, ptr %83, align 8
  %85 = trunc i64 %84 to i16
  switch i16 %85, label %101 [
    i16 41, label %86
    i16 45, label %88
    i16 46, label %88
    i16 42, label %94
  ]

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.tree_exp, ptr %83, i64 1, i32 0, i32 1
  br label %98

88:                                               ; preds = %82, %82
  %89 = getelementptr inbounds %struct.tree_exp, ptr %83, i64 1
  %90 = tail call ptr @walk_tree_1(ptr noundef nonnull %89, ptr noundef nonnull @convert_local_reference_op, ptr noundef %2, ptr noundef null, ptr noundef null) #15
  %91 = getelementptr inbounds %struct.tree_exp, ptr %83, i64 1, i32 0, i32 1
  %92 = tail call ptr @walk_tree_1(ptr noundef nonnull %91, ptr noundef nonnull @convert_local_reference_op, ptr noundef %2, ptr noundef null, ptr noundef null) #15
  %93 = getelementptr inbounds %struct.tree_exp, ptr %83, i64 1, i32 0, i32 2
  br label %98

94:                                               ; preds = %82
  %95 = getelementptr inbounds %struct.tree_exp, ptr %83, i64 1
  %96 = tail call ptr @walk_tree_1(ptr noundef nonnull %95, ptr noundef nonnull @convert_local_reference_op, ptr noundef %2, ptr noundef null, ptr noundef null) #15
  %97 = getelementptr inbounds %struct.tree_exp, ptr %83, i64 1, i32 0, i32 1
  br label %98

98:                                               ; preds = %88, %94, %86
  %99 = phi ptr [ %87, %86 ], [ %97, %94 ], [ %93, %88 ]
  %100 = tail call ptr @walk_tree_1(ptr noundef nonnull %99, ptr noundef nonnull @convert_local_reference_op, ptr noundef %2, ptr noundef null, ptr noundef null) #15
  br label %101

101:                                              ; preds = %98, %82
  %102 = getelementptr inbounds %struct.tree_exp, ptr %83, i64 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !52
  %104 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %103) #14, !range !41
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %106, label %82, !llvm.loop !105

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.tree_exp, ptr %83, i64 0, i32 3
  br label %108

108:                                              ; preds = %106, %76
  %109 = phi ptr [ %0, %76 ], [ %107, %106 ]
  store i8 0, ptr %77, align 8, !tbaa !95
  %110 = tail call ptr @walk_tree_1(ptr noundef nonnull %109, ptr noundef nonnull @convert_local_reference_op, ptr noundef %2, ptr noundef null, ptr noundef null) #15
  store i8 %78, ptr %77, align 8, !tbaa !95
  br label %121

111:                                              ; preds = %3
  store i32 1, ptr %1, align 4, !tbaa !49
  br label %121

112:                                              ; preds = %3
  %113 = and i64 %7, 65535
  %114 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !49
  %116 = and i32 %115, -2
  %117 = icmp eq i32 %116, 2
  br i1 %117, label %121, label %118

118:                                              ; preds = %112
  store i32 1, ptr %1, align 4, !tbaa !49
  %119 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 3
  store i8 1, ptr %119, align 8, !tbaa !95
  %120 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 4
  store i8 0, ptr %120, align 1, !tbaa !96
  br label %121

121:                                              ; preds = %112, %64, %73, %118, %55, %17, %53, %25, %22, %9, %12, %111, %108
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @convert_nl_goto_reference(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #0 !prof !56 !PGOFuncName !106 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #14
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #14, !range !94
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %45

9:                                                ; preds = %3
  %10 = tail call fastcc ptr @gimple_goto_dest(ptr noundef %6) #14
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 30
  br i1 %13, label %14, label %45

14:                                               ; preds = %9
  %15 = tail call ptr @decl_function_context(ptr noundef nonnull %10) #15
  %16 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !83
  %18 = icmp eq ptr %15, %17
  br i1 %18, label %45, label %19

19:                                               ; preds = %14, %19
  %20 = phi ptr [ %21, %19 ], [ %5, %14 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !84
  %22 = getelementptr inbounds %struct.nesting_info, ptr %21, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !83
  %24 = icmp eq ptr %15, %23
  br i1 %24, label %25, label %19, !llvm.loop !107

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.nesting_info, ptr %21, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !81
  %28 = tail call ptr @pointer_map_insert(ptr noundef %27, ptr noundef nonnull %10) #15
  %29 = load ptr, ptr %28, align 8, !tbaa !52
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = tail call ptr @create_artificial_label(i32 noundef 0) #15
  %33 = getelementptr inbounds %struct.tree_decl_common, ptr %32, i64 0, i32 2
  %34 = load i64, ptr %33, align 8
  %35 = or i64 %34, 256
  store i64 %35, ptr %33, align 8
  store ptr %32, ptr %28, align 8, !tbaa !52
  br label %36

36:                                               ; preds = %25, %31
  %37 = phi ptr [ %32, %31 ], [ %29, %25 ]
  %38 = tail call fastcc ptr @get_nl_goto_field(ptr noundef nonnull %21) #14
  %39 = tail call fastcc ptr @get_frame_field(ptr noundef %5, ptr noundef %15, ptr noundef %38, ptr noundef %2) #14
  %40 = tail call ptr @build_addr(ptr noundef %39, ptr noundef %15) #14
  %41 = tail call fastcc ptr @gsi_gimplify_val(ptr noundef %5, ptr noundef %40, ptr noundef %2) #14
  %42 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 522), align 16, !tbaa !52
  %43 = tail call ptr @build_addr(ptr noundef nonnull %37, ptr noundef %15) #14
  %44 = tail call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %42, i32 noundef 2, ptr noundef %43, ptr noundef %41) #15
  tail call void @gsi_replace(ptr noundef %2, ptr noundef %44, i8 noundef zeroext 0) #15
  br label %45

45:                                               ; preds = %14, %9, %3, %36
  %46 = phi i8 [ 1, %36 ], [ 0, %3 ], [ 0, %9 ], [ 0, %14 ]
  store i8 %46, ptr %1, align 1, !tbaa !43
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @convert_nl_goto_receiver(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #0 !prof !56 !PGOFuncName !108 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  %7 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #14
  %8 = tail call fastcc i32 @gimple_code(ptr noundef %7) #14, !range !94
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %10, label %28

10:                                               ; preds = %3
  %11 = tail call fastcc ptr @gimple_label_label(ptr noundef %7) #14
  %12 = getelementptr inbounds %struct.nesting_info, ptr %6, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !81
  %14 = tail call ptr @pointer_map_contains(ptr noundef %13, ptr noundef %11) #15
  %15 = icmp eq ptr %14, null
  br i1 %15, label %28, label %16

16:                                               ; preds = %10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !109
  call fastcc void @gsi_prev(ptr noundef nonnull %4) #14
  %17 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #14, !range !41
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #14
  %21 = tail call zeroext i8 @gimple_stmt_may_fallthru(ptr noundef %20) #15
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19, %16
  %24 = tail call ptr @gimple_build_goto(ptr noundef %11) #15
  tail call void @gsi_insert_before(ptr noundef %0, ptr noundef %24, i32 noundef 1) #15
  br label %25

25:                                               ; preds = %23, %19
  %26 = load ptr, ptr %14, align 8, !tbaa !52
  %27 = tail call ptr @gimple_build_label(ptr noundef %26) #15
  tail call void @gsi_insert_before(ptr noundef %0, ptr noundef %27, i32 noundef 1) #15
  br label %28

28:                                               ; preds = %10, %3, %25
  %29 = phi i8 [ 1, %25 ], [ 0, %3 ], [ 0, %10 ]
  store i8 %29, ptr %1, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @convert_all_function_calls(ptr noundef %0) unnamed_addr #0 !prof !56 !PGOFuncName !110 {
  %2 = tail call fastcc ptr @iter_nestinfo_start(ptr noundef %0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %39, label %4

4:                                                ; preds = %1, %36
  %5 = phi ptr [ %37, %36 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !83
  %8 = load ptr, ptr %5, align 8, !tbaa !84
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 12
  %12 = load ptr, ptr %11, align 8, !tbaa !111
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %32

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 11
  %16 = load ptr, ptr %15, align 8, !tbaa !112
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %14, %4
  %19 = getelementptr inbounds %struct.tree_function_decl, ptr %7, i64 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, -4194305
  store i32 %21, ptr %19, align 8
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !52
  %23 = icmp eq ptr %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %18
  %25 = load i32, ptr @dump_flags, align 4, !tbaa !49
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !67
  %30 = tail call ptr %29(ptr noundef nonnull %7, i32 noundef 2) #15
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %22, ptr noundef nonnull @.str.10, ptr noundef %30) #14
  br label %36

32:                                               ; preds = %14, %10
  %33 = getelementptr inbounds %struct.tree_function_decl, ptr %7, i64 0, i32 5
  %34 = load i32, ptr %33, align 8
  %35 = or i32 %34, 4194304
  store i32 %35, ptr %33, align 8
  br label %36

36:                                               ; preds = %18, %24, %28, %32
  %37 = tail call fastcc ptr @iter_nestinfo_next(ptr noundef nonnull %5) #14
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %4, !llvm.loop !113

39:                                               ; preds = %36, %1
  br label %40

40:                                               ; preds = %39, %72
  %41 = phi i32 [ %42, %72 ], [ 0, %39 ]
  %42 = add nuw nsw i32 %41, 1
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !52
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load i32, ptr @dump_flags, align 4, !tbaa !49
  %47 = and i32 %46, 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = tail call i32 @fputc(i32 noundef 10, ptr noundef nonnull %43) #14
  br label %51

51:                                               ; preds = %49, %45, %40
  %52 = tail call fastcc ptr @iter_nestinfo_start(ptr noundef %0) #14
  %53 = icmp eq ptr %52, null
  br i1 %53, label %74, label %54

54:                                               ; preds = %51, %68
  %55 = phi ptr [ %70, %68 ], [ %52, %51 ]
  %56 = phi i8 [ %69, %68 ], [ 0, %51 ]
  %57 = getelementptr inbounds %struct.nesting_info, ptr %55, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !83
  %59 = getelementptr inbounds %struct.tree_function_decl, ptr %58, i64 0, i32 5
  %60 = load i32, ptr %59, align 8
  tail call fastcc void @walk_function(ptr noundef nonnull @convert_tramp_reference_stmt, ptr noundef nonnull @convert_tramp_reference_op, ptr noundef nonnull %55) #14
  tail call fastcc void @walk_function(ptr noundef nonnull @convert_gimple_call, ptr noundef null, ptr noundef nonnull %55) #14
  %61 = and i32 %60, 4194304
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %54
  %64 = load i32, ptr %59, align 8
  %65 = and i32 %64, 4194304
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %66, i8 %56, i8 1
  br label %68

68:                                               ; preds = %63, %54
  %69 = phi i8 [ %56, %54 ], [ %67, %63 ]
  %70 = tail call fastcc ptr @iter_nestinfo_next(ptr noundef nonnull %55) #14
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %54, !llvm.loop !114

72:                                               ; preds = %68
  %73 = icmp eq i8 %69, 0
  br i1 %73, label %74, label %40, !llvm.loop !115

74:                                               ; preds = %51, %72
  %75 = load ptr, ptr @dump_file, align 8, !tbaa !52
  %76 = icmp eq ptr %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %74
  %78 = load i32, ptr @dump_flags, align 4, !tbaa !49
  %79 = and i32 %78, 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %75, ptr noundef nonnull @.str.11, i32 noundef %42) #14
  br label %83

83:                                               ; preds = %81, %77, %74
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finalize_nesting_tree(ptr noundef %0) unnamed_addr #0 !prof !56 !PGOFuncName !116 {
  %2 = tail call fastcc ptr @iter_nestinfo_start(ptr noundef %0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  tail call fastcc void @finalize_nesting_tree_1(ptr noundef nonnull %5) #14
  %6 = tail call fastcc ptr @iter_nestinfo_next(ptr noundef nonnull %5) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !117

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unnest_nesting_tree(ptr noundef readonly %0) unnamed_addr #0 !prof !56 !PGOFuncName !118 {
  %2 = tail call fastcc ptr @iter_nestinfo_start(ptr noundef %0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %6, %4 ], [ %2, %1 ]
  tail call fastcc void @unnest_nesting_tree_1(ptr noundef nonnull %5) #14
  %6 = tail call fastcc ptr @iter_nestinfo_next(ptr noundef nonnull %5) #14
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %4, !llvm.loop !119

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_nesting_tree(ptr noundef %0) unnamed_addr #0 !prof !56 !PGOFuncName !120 {
  %2 = tail call fastcc ptr @iter_nestinfo_start(ptr noundef %0) #14
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi ptr [ %2, %1 ], [ %5, %3 ]
  %5 = tail call fastcc ptr @iter_nestinfo_next(ptr noundef %4) #14
  %6 = getelementptr inbounds %struct.nesting_info, ptr %4, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !81
  tail call void @pointer_map_destroy(ptr noundef %7) #15
  %8 = getelementptr inbounds %struct.nesting_info, ptr %4, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !79
  tail call void @pointer_map_destroy(ptr noundef %9) #15
  tail call void @free(ptr noundef %4) #14
  %10 = icmp eq ptr %5, null
  br i1 %10, label %11, label %3, !llvm.loop !121

11:                                               ; preds = %3
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @dump_end(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_body(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gimplify_function_tree(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @pointer_map_create() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @check_for_nested_with_variably_modified(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !56 !PGOFuncName !122 {
  %3 = tail call ptr @cgraph_node(ptr noundef %0) #15
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %11

7:                                                ; preds = %29
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %12, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %11, !llvm.loop !123

11:                                               ; preds = %2, %7
  %12 = phi ptr [ %9, %7 ], [ %5, %2 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !76
  %14 = getelementptr inbounds %struct.tree_decl_non_common, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = icmp eq ptr %15, null
  br i1 %16, label %29, label %21

17:                                               ; preds = %21
  %18 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21, !llvm.loop !124

21:                                               ; preds = %11, %17
  %22 = phi ptr [ %19, %17 ], [ %15, %11 ]
  %23 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  %25 = tail call zeroext i8 @variably_modified_type_p(ptr noundef %24, ptr noundef %1) #15
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %17, label %33

27:                                               ; preds = %17
  %28 = load ptr, ptr %12, align 8, !tbaa !76
  br label %29

29:                                               ; preds = %27, %11
  %30 = phi ptr [ %28, %27 ], [ %13, %11 ]
  %31 = tail call fastcc zeroext i8 @check_for_nested_with_variably_modified(ptr noundef %30, ptr noundef %1) #14, !range !41
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %7, label %33

33:                                               ; preds = %29, %7, %21, %2
  %34 = phi i8 [ 0, %2 ], [ 1, %21 ], [ 1, %29 ], [ 0, %7 ]
  ret i8 %34
}

; Function Attrs: optsize
declare zeroext i8 @variably_modified_type_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @iter_nestinfo_start(ptr noundef readonly %0) unnamed_addr #6 !prof !56 !PGOFuncName !125 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %2 ]
  %4 = getelementptr inbounds %struct.nesting_info, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %2, !llvm.loop !126

7:                                                ; preds = %2
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @walk_function(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !56 !PGOFuncName !127 {
  %4 = getelementptr inbounds %struct.nesting_info, ptr %2, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !83
  %6 = tail call ptr @gimple_body(ptr noundef %5) #15
  tail call fastcc void @walk_body(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %6) #14
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @iter_nestinfo_next(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !56 !PGOFuncName !128 {
  %2 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !86
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @iter_nestinfo_start(ptr noundef nonnull %3) #14
  br label %9

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !84
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %6, %5 ], [ %8, %7 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @walk_body(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !56 !PGOFuncName !129 {
  %5 = alloca %struct.walk_stmt_info, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %6 = getelementptr inbounds %struct.walk_stmt_info, ptr %5, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !91
  %7 = getelementptr inbounds %struct.walk_stmt_info, ptr %5, i64 0, i32 3
  store i8 1, ptr %7, align 8, !tbaa !95
  %8 = call ptr @walk_gimple_seq(ptr noundef %3, ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #16
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: optsize
declare ptr @walk_gimple_seq(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #8 !prof !56 !PGOFuncName !130 {
  %2 = load ptr, ptr %0, align 8, !tbaa !131
  %3 = load ptr, ptr %2, align 8, !tbaa !132
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !56 !PGOFuncName !134 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_goto_dest(ptr noundef %0) unnamed_addr #0 !prof !56 !PGOFuncName !135 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #14
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @convert_nonlocal_omp_clauses(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !56 !PGOFuncName !136 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %6 = tail call ptr @bitmap_gc_alloc_stat() #15
  %7 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !82
  tail call void @bitmap_copy(ptr noundef %6, ptr noundef %8) #15
  %9 = load ptr, ptr %0, align 8, !tbaa !43
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store ptr %6, ptr %7, align 8, !tbaa !82
  br label %101

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.walk_stmt_info, ptr %1, i64 0, i32 3
  %14 = getelementptr inbounds %struct.walk_stmt_info, ptr %1, i64 0, i32 4
  %15 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 6
  br label %16

16:                                               ; preds = %12, %63
  %17 = phi ptr [ %9, %12 ], [ %67, %63 ]
  %18 = phi i8 [ 0, %12 ], [ %65, %63 ]
  %19 = phi i8 [ 0, %12 ], [ %64, %63 ]
  %20 = getelementptr inbounds %struct.tree_omp_clause, ptr %17, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !43
  switch i32 %21, label %62 [
    i32 5, label %22
    i32 4, label %24
    i32 1, label %31
    i32 3, label %31
    i32 7, label %31
    i32 2, label %31
    i32 10, label %55
    i32 8, label %59
    i32 9, label %59
    i32 11, label %63
    i32 12, label %63
    i32 13, label %63
    i32 6, label %63
    i32 14, label %63
    i32 15, label %63
  ]

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.tree_omp_clause, ptr %17, i64 1, i32 0, i32 2
  br label %26

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.tree_omp_clause, ptr %17, i64 0, i32 4
  br label %26

26:                                               ; preds = %22, %24
  %27 = phi ptr [ %25, %24 ], [ %23, %22 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  %29 = icmp eq ptr %28, null
  %30 = select i1 %29, i8 %19, i8 1
  br label %31

31:                                               ; preds = %26, %16, %16, %16, %16
  %32 = phi i8 [ %19, %16 ], [ %19, %16 ], [ %19, %16 ], [ %19, %16 ], [ %30, %26 ]
  %33 = getelementptr inbounds %struct.tree_omp_clause, ptr %17, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !43
  %35 = load i64, ptr %34, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 32
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = and i64 %35, 67108864
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.tree_decl_common, ptr %34, i64 0, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, 33554432
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %41, %31
  %47 = tail call ptr @decl_function_context(ptr noundef nonnull %34) #15
  %48 = load ptr, ptr %15, align 8, !tbaa !83
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %63, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.tree_decl_minimal, ptr %34, i64 0, i32 2
  %52 = load i32, ptr %51, align 4, !tbaa !43
  %53 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %6, i32 noundef %52) #15
  %54 = tail call fastcc ptr @get_nonlocal_debug_decl(ptr noundef nonnull %5, ptr noundef nonnull %34) #14
  store ptr %54, ptr %33, align 8, !tbaa !43
  br label %63

55:                                               ; preds = %16
  %56 = getelementptr inbounds %struct.tree_omp_clause, ptr %17, i64 0, i32 6
  %57 = load ptr, ptr %56, align 8, !tbaa !43
  %58 = icmp eq ptr %57, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %55, %16, %16
  store i8 1, ptr %13, align 8, !tbaa !95
  store i8 0, ptr %14, align 1, !tbaa !96
  %60 = getelementptr inbounds %struct.tree_omp_clause, ptr %17, i64 0, i32 6
  %61 = call ptr @convert_nonlocal_reference_op(ptr noundef nonnull %60, ptr noundef nonnull %3, ptr noundef %1) #14
  br label %63

62:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1116, ptr noundef nonnull @.str.2) #15
  br label %63

63:                                               ; preds = %59, %62, %41, %38, %50, %46, %55, %16, %16, %16, %16, %16, %16
  %64 = phi i8 [ %19, %62 ], [ %19, %16 ], [ %19, %16 ], [ %19, %16 ], [ %19, %16 ], [ %19, %16 ], [ %19, %16 ], [ %19, %59 ], [ %19, %55 ], [ %32, %38 ], [ %32, %41 ], [ %32, %50 ], [ %32, %46 ]
  %65 = phi i8 [ %18, %62 ], [ %18, %16 ], [ %18, %16 ], [ %18, %16 ], [ %18, %16 ], [ %18, %16 ], [ %18, %16 ], [ %18, %59 ], [ %18, %55 ], [ %18, %38 ], [ %18, %41 ], [ 1, %50 ], [ %18, %46 ]
  %66 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !43
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %16, !llvm.loop !137

69:                                               ; preds = %63
  %70 = icmp eq i8 %64, 0
  store ptr %6, ptr %7, align 8, !tbaa !82
  br i1 %70, label %101, label %71

71:                                               ; preds = %69
  %72 = load ptr, ptr %0, align 8, !tbaa !43
  %73 = icmp eq ptr %72, null
  br i1 %73, label %101, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 6
  br label %76

76:                                               ; preds = %74, %97
  %77 = phi ptr [ %72, %74 ], [ %99, %97 ]
  %78 = getelementptr inbounds %struct.tree_omp_clause, ptr %77, i64 0, i32 2
  %79 = load i32, ptr %78, align 4, !tbaa !43
  switch i32 %79, label %97 [
    i32 5, label %80
    i32 4, label %94
  ]

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.tree_omp_clause, ptr %77, i64 1, i32 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !43
  %83 = icmp eq ptr %82, null
  br i1 %83, label %97, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.tree_decl_minimal, ptr %82, i64 0, i32 4
  %86 = load ptr, ptr %85, align 8, !tbaa !43
  %87 = load ptr, ptr %75, align 8, !tbaa !83
  store ptr %87, ptr %85, align 8, !tbaa !43
  %88 = getelementptr inbounds %struct.tree_omp_clause, ptr %77, i64 0, i32 4
  %89 = load ptr, ptr %88, align 8, !tbaa !43
  tail call fastcc void @walk_body(ptr noundef nonnull @convert_nonlocal_reference_stmt, ptr noundef nonnull @convert_nonlocal_reference_op, ptr noundef %5, ptr noundef %89) #14
  %90 = getelementptr inbounds %struct.tree_omp_clause, ptr %77, i64 0, i32 5
  %91 = load ptr, ptr %90, align 8, !tbaa !43
  tail call fastcc void @walk_body(ptr noundef nonnull @convert_nonlocal_reference_stmt, ptr noundef nonnull @convert_nonlocal_reference_op, ptr noundef %5, ptr noundef %91) #14
  %92 = load ptr, ptr %81, align 8, !tbaa !43
  %93 = getelementptr inbounds %struct.tree_decl_minimal, ptr %92, i64 0, i32 4
  store ptr %86, ptr %93, align 8, !tbaa !43
  br label %97

94:                                               ; preds = %76
  %95 = getelementptr inbounds %struct.tree_omp_clause, ptr %77, i64 0, i32 4
  %96 = load ptr, ptr %95, align 8, !tbaa !43
  tail call fastcc void @walk_body(ptr noundef nonnull @convert_nonlocal_reference_stmt, ptr noundef nonnull @convert_nonlocal_reference_op, ptr noundef %5, ptr noundef %96) #14
  br label %97

97:                                               ; preds = %94, %84, %80, %76
  %98 = getelementptr inbounds %struct.tree_common, ptr %77, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !43
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %76, !llvm.loop !138

101:                                              ; preds = %97, %11, %71, %69
  %102 = phi i8 [ 0, %11 ], [ %65, %71 ], [ %65, %69 ], [ %65, %97 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i8 %102
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_omp_taskreg_clauses_ptr(ptr noundef readonly %0) unnamed_addr #9 !prof !56 !PGOFuncName !139 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_chain_decl(ptr nocapture noundef %0) unnamed_addr #0 !prof !56 !PGOFuncName !140 {
  %2 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %45

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !84
  %7 = tail call fastcc ptr @get_frame_type(ptr noundef %6) #14
  %8 = tail call ptr @build_pointer_type(ptr noundef %7) #15
  %9 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !83
  %11 = getelementptr inbounds %struct.tree_decl_minimal, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !43
  %13 = tail call ptr @create_tmp_var_name(ptr noundef nonnull @.str.8) #15
  %14 = tail call ptr @build_decl_stat(i32 noundef %12, i32 noundef 34, ptr noundef %13, ptr noundef %8) #15
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %14, i64 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = or i64 %16, 5120
  store i64 %17, ptr %15, align 8
  %18 = load i64, ptr %14, align 8
  %19 = or i64 %18, 16777216
  store i64 %19, ptr %14, align 8
  %20 = load ptr, ptr %9, align 8, !tbaa !83
  %21 = getelementptr inbounds %struct.tree_decl_minimal, ptr %14, i64 0, i32 4
  store ptr %20, ptr %21, align 8, !tbaa !43
  %22 = getelementptr inbounds %struct.tree_decl_common, ptr %14, i64 0, i32 5
  store ptr %8, ptr %22, align 8, !tbaa !43
  %23 = or i64 %18, 17825792
  store i64 %23, ptr %14, align 8
  store ptr %14, ptr %2, align 8, !tbaa !111
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !52
  %25 = icmp eq ptr %24, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %5
  %27 = load i32, ptr @dump_flags, align 4, !tbaa !49
  %28 = and i32 %27, 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %9, align 8, !tbaa !83
  %32 = getelementptr inbounds %struct.tree_function_decl, ptr %31, i64 0, i32 5
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 4194304
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !67
  %38 = tail call ptr %37(ptr noundef nonnull %31, i32 noundef 2) #15
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %24, ptr noundef nonnull @.str.7, ptr noundef %38) #14
  br label %40

40:                                               ; preds = %36, %30, %26, %5
  %41 = load ptr, ptr %9, align 8, !tbaa !83
  %42 = getelementptr inbounds %struct.tree_function_decl, ptr %41, i64 0, i32 5
  %43 = load i32, ptr %42, align 8
  %44 = or i32 %43, 4194304
  store i32 %44, ptr %42, align 8
  br label %45

45:                                               ; preds = %40, %1
  %46 = phi ptr [ %3, %1 ], [ %14, %40 ]
  ret ptr %46
}

; Function Attrs: optsize
declare ptr @build_omp_clause(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !56 !PGOFuncName !141 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !43
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_taskreg_clauses(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !56 !PGOFuncName !142 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_taskreg_set_clauses(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #10 !prof !56 !PGOFuncName !143 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_body(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !56 !PGOFuncName !144 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  ret ptr %3
}

; Function Attrs: optsize
declare void @declare_vars(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_seq_first_stmt(ptr noundef readonly %0) unnamed_addr #8 !prof !56 !PGOFuncName !145 {
  %2 = tail call fastcc ptr @gimple_seq_first(ptr noundef %0) #14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !132
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_omp_for_clauses_ptr(ptr noundef readnone %0) unnamed_addr #9 !prof !56 !PGOFuncName !146 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @walk_gimple_omp_for(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !56 !PGOFuncName !147 {
  %5 = alloca %struct.walk_stmt_info, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #16
  %7 = tail call fastcc ptr @gimple_omp_for_pre_body(ptr noundef %0) #14
  tail call fastcc void @walk_body(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %7) #14
  %8 = tail call ptr @gimple_seq_alloc() #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %9 = getelementptr inbounds %struct.walk_stmt_info, ptr %5, i64 0, i32 1
  store ptr %3, ptr %9, align 8, !tbaa !91
  call fastcc void @gsi_last(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %8) #14
  %10 = tail call fastcc i64 @gimple_omp_for_collapse(ptr noundef %0) #14
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %38, label %12

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.walk_stmt_info, ptr %5, i64 0, i32 3
  %14 = getelementptr inbounds %struct.walk_stmt_info, ptr %5, i64 0, i32 4
  br label %15

15:                                               ; preds = %12, %30
  %16 = phi i64 [ 0, %12 ], [ %35, %30 ]
  store i8 0, ptr %13, align 8, !tbaa !95
  %17 = call fastcc ptr @gimple_omp_for_index_ptr(ptr noundef %0, i64 noundef %16) #14
  %18 = call ptr @walk_tree_1(ptr noundef nonnull %17, ptr noundef %2, ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #15
  store i8 1, ptr %13, align 8, !tbaa !95
  store i8 0, ptr %14, align 1, !tbaa !96
  %19 = call fastcc ptr @gimple_omp_for_initial_ptr(ptr noundef %0, i64 noundef %16) #14
  %20 = call ptr @walk_tree_1(ptr noundef nonnull %19, ptr noundef %2, ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #15
  store i8 1, ptr %13, align 8, !tbaa !95
  store i8 0, ptr %14, align 1, !tbaa !96
  %21 = call fastcc ptr @gimple_omp_for_final_ptr(ptr noundef %0, i64 noundef %16) #14
  %22 = call ptr @walk_tree_1(ptr noundef nonnull %21, ptr noundef %2, ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #15
  %23 = call fastcc ptr @gimple_omp_for_incr(ptr noundef %0, i64 noundef %16) #14
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !49
  %28 = icmp eq i32 %27, 7
  br i1 %28, label %30, label %29

29:                                               ; preds = %15
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 640, ptr noundef nonnull @.str.2) #15
  br label %30

30:                                               ; preds = %15, %29
  store i8 0, ptr %13, align 8, !tbaa !95
  %31 = getelementptr inbounds %struct.tree_exp, ptr %23, i64 0, i32 3
  %32 = call ptr @walk_tree_1(ptr noundef nonnull %31, ptr noundef %2, ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #15
  store i8 1, ptr %13, align 8, !tbaa !95
  store i8 0, ptr %14, align 1, !tbaa !96
  %33 = getelementptr inbounds %struct.tree_exp, ptr %23, i64 1
  %34 = call ptr @walk_tree_1(ptr noundef nonnull %33, ptr noundef %2, ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #15
  %35 = add nuw i64 %16, 1
  %36 = call fastcc i64 @gimple_omp_for_collapse(ptr noundef %0) #14
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %15, label %38, !llvm.loop !148

38:                                               ; preds = %30, %4
  %39 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %8) #14, !range !41
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  call void @gimple_seq_free(ptr noundef %8) #15
  br label %46

42:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %43 = call fastcc ptr @gimple_omp_for_pre_body(ptr noundef %0) #14
  store ptr %43, ptr %6, align 8, !tbaa !52
  %44 = call fastcc i32 @gimple_location(ptr noundef %0) #14
  call void @annotate_all_with_location(ptr noundef %8, i32 noundef %44) #15
  call void @gimple_seq_add_seq(ptr noundef nonnull %6, ptr noundef %8) #15
  %45 = load ptr, ptr %6, align 8, !tbaa !52
  call fastcc void @gimple_omp_for_set_pre_body(ptr noundef %0, ptr noundef %45) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %46

46:                                               ; preds = %42, %41
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_omp_sections_clauses_ptr(ptr noundef readnone %0) unnamed_addr #9 !prof !56 !PGOFuncName !149 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_omp_single_clauses_ptr(ptr noundef readnone %0) unnamed_addr #9 !prof !56 !PGOFuncName !150 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_single, ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bind_block(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !56 !PGOFuncName !151 {
  %2 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @note_nonlocal_block_vlas(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !56 !PGOFuncName !152 {
  %3 = getelementptr inbounds %struct.tree_block, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 6
  br label %8

8:                                                ; preds = %6, %29
  %9 = phi ptr [ %4, %6 ], [ %31, %29 ]
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 32
  br i1 %12, label %13, label %29

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = tail call zeroext i8 @variably_modified_type_p(ptr noundef %15, ptr noundef null) #15
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 2
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 67108864
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = tail call ptr @decl_function_context(ptr noundef nonnull %9) #15
  %25 = load ptr, ptr %7, align 8, !tbaa !83
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %14, align 8, !tbaa !43
  tail call fastcc void @note_nonlocal_vla_type(ptr noundef nonnull %0, ptr noundef %28) #14
  br label %29

29:                                               ; preds = %8, %13, %18, %23, %27
  %30 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !43
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %8, !llvm.loop !153

33:                                               ; preds = %29, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !56 !PGOFuncName !154 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #14, !range !41
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #14
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !56 !PGOFuncName !155 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !94
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !56 !PGOFuncName !156 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #14
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !157
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1622, ptr noundef nonnull @.str.2) #15
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !56 !PGOFuncName !158 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #14, !range !94
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #14
  ret i32 %3
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #9 !prof !56 !PGOFuncName !159 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !49
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @bitmap_gc_alloc_stat() local_unnamed_addr #3

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @decl_function_context(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_nonlocal_debug_decl(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !56 !PGOFuncName !160 {
  %3 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !81
  %5 = tail call ptr @pointer_map_insert(ptr noundef %4, ptr noundef %1) #15
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %129

8:                                                ; preds = %2
  %9 = tail call ptr @decl_function_context(ptr noundef %1) #15
  %10 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  %12 = icmp eq ptr %11, %9
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = tail call fastcc ptr @get_frame_type(ptr noundef nonnull %0) #14
  %15 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !103
  br label %47

17:                                               ; preds = %8
  %18 = tail call fastcc ptr @get_chain_decl(ptr noundef nonnull %0) #14
  %19 = load ptr, ptr %0, align 8, !tbaa !84
  %20 = getelementptr inbounds %struct.nesting_info, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !83
  %22 = icmp eq ptr %21, %9
  br i1 %22, label %39, label %23

23:                                               ; preds = %17, %23
  %24 = phi ptr [ %35, %23 ], [ %19, %17 ]
  %25 = phi ptr [ %34, %23 ], [ %18, %17 ]
  %26 = tail call fastcc ptr @get_chain_field(ptr noundef nonnull %24) #14
  %27 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  %29 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !43
  %31 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %30, ptr noundef %25) #15
  %32 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !43
  %34 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %33, ptr noundef %31, ptr noundef %26, ptr noundef null) #15
  %35 = load ptr, ptr %24, align 8, !tbaa !84
  %36 = getelementptr inbounds %struct.nesting_info, ptr %35, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !83
  %38 = icmp eq ptr %37, %9
  br i1 %38, label %39, label %23, !llvm.loop !161

39:                                               ; preds = %23, %17
  %40 = phi ptr [ %18, %17 ], [ %34, %23 ]
  %41 = phi ptr [ %19, %17 ], [ %35, %23 ]
  %42 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !43
  %44 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !43
  %46 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %45, ptr noundef %40) #15
  br label %47

47:                                               ; preds = %39, %13
  %48 = phi ptr [ %16, %13 ], [ %46, %39 ]
  %49 = phi ptr [ %0, %13 ], [ %41, %39 ]
  %50 = tail call fastcc ptr @lookup_field_for_decl(ptr noundef nonnull %49, ptr noundef %1, i32 noundef 1) #14
  %51 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !43
  %53 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %52, ptr noundef %48, ptr noundef %50, ptr noundef null) #15
  %54 = tail call fastcc zeroext i8 @use_pointer_in_frame(ptr noundef %1) #14, !range !41
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !43
  %59 = getelementptr inbounds %struct.tree_common, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !43
  %61 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %60, ptr noundef %53) #15
  br label %62

62:                                               ; preds = %56, %47
  %63 = phi ptr [ %61, %56 ], [ %53, %47 ]
  %64 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 1
  %65 = load i32, ptr %64, align 8, !tbaa !43
  %66 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !43
  %68 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !43
  %70 = tail call ptr @build_decl_stat(i32 noundef %65, i32 noundef 32, ptr noundef %67, ptr noundef %69) #15
  %71 = load ptr, ptr %10, align 8, !tbaa !83
  %72 = getelementptr inbounds %struct.tree_decl_minimal, ptr %70, i64 0, i32 4
  store ptr %71, ptr %72, align 8, !tbaa !43
  %73 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %74 = load i64, ptr %73, align 8
  %75 = and i64 %74, 4096
  %76 = getelementptr inbounds %struct.tree_decl_common, ptr %70, i64 0, i32 2
  %77 = load i64, ptr %76, align 8
  %78 = and i64 %77, -4097
  %79 = or disjoint i64 %78, %75
  store i64 %79, ptr %76, align 8
  %80 = load i64, ptr %73, align 8
  %81 = and i64 %80, 1024
  %82 = and i64 %79, -1025
  %83 = or disjoint i64 %82, %81
  store i64 %83, ptr %76, align 8
  %84 = load i64, ptr %1, align 8
  %85 = and i64 %84, 524288
  %86 = load i64, ptr %70, align 8
  %87 = and i64 %86, -524289
  %88 = or disjoint i64 %87, %85
  store i64 %88, ptr %70, align 8
  %89 = load i64, ptr %1, align 8
  %90 = and i64 %89, 65536
  %91 = and i64 %88, -65537
  %92 = or disjoint i64 %91, %90
  store i64 %92, ptr %70, align 8
  %93 = load i64, ptr %1, align 8
  %94 = and i64 %93, 1048576
  %95 = and i64 %92, -1048577
  %96 = or disjoint i64 %95, %94
  store i64 %96, ptr %70, align 8
  %97 = load i64, ptr %1, align 8
  %98 = and i64 %97, 262144
  %99 = and i64 %96, -262145
  %100 = or disjoint i64 %99, %98
  store i64 %100, ptr %70, align 8
  %101 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %70, i64 0, i32 4
  %102 = load i32, ptr %101, align 8
  %103 = or i32 %102, 256
  store i32 %103, ptr %101, align 8
  %104 = load i64, ptr %1, align 8
  %105 = trunc i64 %104 to i16
  switch i16 %105, label %112 [
    i16 34, label %106
    i16 36, label %106
    i16 32, label %106
  ]

106:                                              ; preds = %62, %62, %62
  %107 = load i64, ptr %73, align 8
  %108 = and i64 %107, 268435456
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %106
  %111 = or i64 %83, 268435456
  store i64 %111, ptr %76, align 8
  br label %112

112:                                              ; preds = %62, %110, %106
  tail call void @decl_value_expr_insert(ptr noundef nonnull %70, ptr noundef %63) #15
  %113 = load i64, ptr %76, align 8
  %114 = or i64 %113, 67108864
  store i64 %114, ptr %76, align 8
  store ptr %70, ptr %5, align 8, !tbaa !52
  %115 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 8
  %116 = load ptr, ptr %115, align 8, !tbaa !162
  %117 = getelementptr inbounds %struct.tree_common, ptr %70, i64 0, i32 1
  store ptr %116, ptr %117, align 8, !tbaa !43
  store ptr %70, ptr %115, align 8, !tbaa !162
  %118 = load i32, ptr @optimize, align 4, !tbaa !49
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %112
  %121 = load ptr, ptr %10, align 8, !tbaa !83
  %122 = icmp eq ptr %121, %9
  br i1 %122, label %129, label %123

123:                                              ; preds = %120
  %124 = load ptr, ptr %68, align 8, !tbaa !43
  %125 = tail call zeroext i8 @variably_modified_type_p(ptr noundef %124, ptr noundef null) #15
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %123
  %128 = load ptr, ptr %68, align 8, !tbaa !43
  tail call fastcc void @note_nonlocal_vla_type(ptr noundef nonnull %0, ptr noundef %128) #14
  br label %129

129:                                              ; preds = %112, %120, %123, %127, %2
  %130 = phi ptr [ %6, %2 ], [ %70, %127 ], [ %70, %123 ], [ %70, %120 ], [ %70, %112 ]
  ret ptr %130
}

; Function Attrs: optsize
declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_frame_type(ptr nocapture noundef %0) unnamed_addr #0 !prof !56 !PGOFuncName !163 {
  %2 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !164
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %20

5:                                                ; preds = %1
  %6 = tail call ptr @make_node_stat(i32 noundef 16) #15
  %7 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !83
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = getelementptr inbounds %struct.tree_identifier, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = tail call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.4, ptr noundef %12, ptr noundef null) #15
  %14 = tail call ptr @get_identifier(ptr noundef %13) #15
  %15 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 12
  store ptr %14, ptr %15, align 8, !tbaa !43
  tail call void @free(ptr noundef %13) #14
  store ptr %6, ptr %2, align 8, !tbaa !164
  %16 = tail call fastcc ptr @create_tmp_var_for(ptr noundef nonnull %0, ptr noundef %6, ptr noundef nonnull @.str.5) #14
  %17 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 10
  store ptr %16, ptr %17, align 8, !tbaa !103
  %18 = load i64, ptr %16, align 8
  %19 = or i64 %18, 262144
  store i64 %19, ptr %16, align 8
  br label %20

20:                                               ; preds = %5, %1
  %21 = phi ptr [ %3, %1 ], [ %6, %5 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_chain_field(ptr nocapture noundef %0) unnamed_addr #0 !prof !56 !PGOFuncName !165 {
  %2 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !112
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %43

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !84
  %7 = tail call fastcc ptr @get_frame_type(ptr noundef %6) #14
  %8 = tail call ptr @build_pointer_type(ptr noundef %7) #15
  %9 = tail call ptr @make_node_stat(i32 noundef 31) #15
  %10 = tail call ptr @get_identifier(ptr noundef nonnull @.str.6) #15
  %11 = getelementptr inbounds %struct.tree_decl_minimal, ptr %9, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !43
  %12 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  store ptr %8, ptr %12, align 8, !tbaa !43
  %13 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 7
  %14 = load i32, ptr %13, align 8, !tbaa !43
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 3
  store i32 %14, ptr %15, align 8, !tbaa !43
  %16 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = or i64 %17, 67108864
  store i64 %18, ptr %16, align 8
  %19 = tail call fastcc ptr @get_frame_type(ptr noundef nonnull %0) #14
  tail call void @insert_field_into_struct(ptr noundef %19, ptr noundef %9) #14
  store ptr %9, ptr %2, align 8, !tbaa !112
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !52
  %21 = icmp eq ptr %20, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %5
  %23 = load i32, ptr @dump_flags, align 4, !tbaa !49
  %24 = and i32 %23, 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !83
  %29 = getelementptr inbounds %struct.tree_function_decl, ptr %28, i64 0, i32 5
  %30 = load i32, ptr %29, align 8
  %31 = and i32 %30, 4194304
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !67
  %35 = tail call ptr %34(ptr noundef nonnull %28, i32 noundef 2) #15
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %20, ptr noundef nonnull @.str.7, ptr noundef %35) #14
  br label %37

37:                                               ; preds = %33, %26, %22, %5
  %38 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !83
  %40 = getelementptr inbounds %struct.tree_function_decl, ptr %39, i64 0, i32 5
  %41 = load i32, ptr %40, align 8
  %42 = or i32 %41, 4194304
  store i32 %42, ptr %40, align 8
  br label %43

43:                                               ; preds = %37, %1
  %44 = phi ptr [ %3, %1 ], [ %9, %37 ]
  ret ptr %44
}

; Function Attrs: optsize
declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookup_field_for_decl(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !56 !PGOFuncName !166 {
  %4 = icmp eq i32 %2, 0
  %5 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !79
  br i1 %4, label %7, label %12

7:                                                ; preds = %3
  %8 = tail call ptr @pointer_map_contains(ptr noundef %6, ptr noundef %1) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %70, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %8, align 8, !tbaa !52
  br label %70

12:                                               ; preds = %3
  %13 = tail call ptr @pointer_map_insert(ptr noundef %6, ptr noundef %1) #15
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %70

16:                                               ; preds = %12
  %17 = tail call ptr @make_node_stat(i32 noundef 31) #15
  %18 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  %20 = getelementptr inbounds %struct.tree_decl_minimal, ptr %17, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !43
  %21 = tail call fastcc zeroext i8 @use_pointer_in_frame(ptr noundef %1) #14, !range !41
  %22 = icmp eq i8 %21, 0
  %23 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  br i1 %22, label %34, label %25

25:                                               ; preds = %16
  %26 = tail call ptr @build_pointer_type(ptr noundef %24) #15
  %27 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !43
  %28 = getelementptr inbounds %struct.tree_type, ptr %26, i64 0, i32 7
  %29 = load i32, ptr %28, align 8, !tbaa !43
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %17, i64 0, i32 3
  store i32 %29, ptr %30, align 8, !tbaa !43
  %31 = getelementptr inbounds %struct.tree_decl_common, ptr %17, i64 0, i32 2
  %32 = load i64, ptr %31, align 8
  %33 = or i64 %32, 67108864
  store i64 %33, ptr %31, align 8
  br label %63

34:                                               ; preds = %16
  %35 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  store ptr %24, ptr %35, align 8, !tbaa !43
  %36 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !43
  %38 = getelementptr inbounds %struct.tree_decl_minimal, ptr %17, i64 0, i32 1
  store i32 %37, ptr %38, align 8, !tbaa !43
  %39 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 3
  %40 = load i32, ptr %39, align 8, !tbaa !43
  %41 = getelementptr inbounds %struct.tree_decl_common, ptr %17, i64 0, i32 3
  store i32 %40, ptr %41, align 8, !tbaa !43
  %42 = load i64, ptr %1, align 8
  %43 = and i64 %42, 4398046511104
  %44 = load i64, ptr %17, align 8
  %45 = and i64 %44, -4398046511105
  %46 = or disjoint i64 %45, %43
  store i64 %46, ptr %17, align 8
  %47 = load i64, ptr %1, align 8
  %48 = and i64 %47, 262144
  %49 = and i64 %46, -262145
  %50 = or disjoint i64 %49, %48
  store i64 %50, ptr %17, align 8
  %51 = load i64, ptr %1, align 8
  %52 = getelementptr inbounds %struct.tree_decl_common, ptr %17, i64 0, i32 2
  %53 = load i64, ptr %52, align 8
  %54 = shl i64 %51, 8
  %55 = and i64 %54, 67108864
  %56 = and i64 %53, -67108865
  %57 = or disjoint i64 %55, %56
  %58 = xor i64 %57, 67108864
  store i64 %58, ptr %52, align 8
  %59 = load i64, ptr %1, align 8
  %60 = and i64 %59, 524288
  %61 = and i64 %50, -524289
  %62 = or disjoint i64 %60, %61
  store i64 %62, ptr %17, align 8
  br label %63

63:                                               ; preds = %34, %25
  %64 = tail call fastcc ptr @get_frame_type(ptr noundef nonnull %0) #14
  tail call void @insert_field_into_struct(ptr noundef %64, ptr noundef nonnull %17) #14
  store ptr %17, ptr %13, align 8, !tbaa !52
  %65 = load i64, ptr %1, align 8
  %66 = and i64 %65, 65535
  %67 = icmp eq i64 %66, 34
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 14
  store i8 1, ptr %69, align 8, !tbaa !167
  br label %70

70:                                               ; preds = %12, %68, %63, %10, %7
  %71 = phi ptr [ %11, %10 ], [ null, %7 ], [ %17, %63 ], [ %17, %68 ], [ %14, %12 ]
  ret ptr %71
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @use_pointer_in_frame(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !56 !PGOFuncName !168 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 34
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = and i32 %9, 65535
  %11 = add nsw i32 %10, -15
  %12 = icmp ult i32 %11, 4
  br label %21

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i64, ptr %15, align 8
  %19 = and i64 %18, 131072
  %20 = icmp eq i64 %19, 0
  br label %21

21:                                               ; preds = %5, %13, %17
  %22 = phi i1 [ true, %13 ], [ %20, %17 ], [ %12, %5 ]
  %23 = zext i1 %22 to i8
  ret i8 %23
}

; Function Attrs: optsize
declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @decl_value_expr_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @note_nonlocal_vla_type(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !56 !PGOFuncName !169 {
  br label %3

3:                                                ; preds = %11, %2
  %4 = phi ptr [ %1, %2 ], [ %13, %11 ]
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %14 [
    i16 10, label %7
    i16 12, label %7
  ]

7:                                                ; preds = %3, %3
  %8 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 12
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !43
  br label %3, !llvm.loop !170

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 12
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = icmp eq ptr %16, null
  br i1 %17, label %28, label %18

18:                                               ; preds = %7, %14
  %19 = phi ptr [ %16, %14 ], [ %9, %7 ]
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 35
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tree_decl_non_common, ptr %19, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = icmp eq ptr %25, null
  %27 = select i1 %26, ptr %4, ptr %25
  br label %28

28:                                               ; preds = %23, %18, %14
  %29 = phi ptr [ %27, %23 ], [ %4, %14 ], [ %4, %18 ]
  br label %30

30:                                               ; preds = %28, %34
  %31 = phi ptr [ %36, %34 ], [ %29, %28 ]
  %32 = load i64, ptr %31, align 8
  %33 = trunc i64 %32 to i16
  switch i16 %33, label %71 [
    i16 10, label %34
    i16 12, label %34
    i16 14, label %34
    i16 20, label %34
    i16 21, label %34
    i16 15, label %37
  ]

34:                                               ; preds = %30, %30, %30, %30, %30
  %35 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !43
  br label %30, !llvm.loop !171

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !43
  tail call fastcc void @note_nonlocal_vla_type(ptr noundef %0, ptr noundef %39) #14
  %40 = getelementptr inbounds %struct.tree_type, ptr %31, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !43
  %42 = icmp eq ptr %41, null
  br i1 %42, label %71, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.tree_type, ptr %41, i64 0, i32 13
  %45 = load ptr, ptr %44, align 8, !tbaa !43
  %46 = icmp eq ptr %45, null
  br i1 %46, label %57, label %47

47:                                               ; preds = %43
  %48 = load i64, ptr %45, align 8
  %49 = trunc i64 %48 to i16
  switch i16 %49, label %57 [
    i16 32, label %50
    i16 34, label %50
  ]

50:                                               ; preds = %47, %47
  %51 = tail call ptr @decl_function_context(ptr noundef nonnull %45) #15
  %52 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !83
  %54 = icmp eq ptr %51, %53
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = tail call fastcc ptr @get_nonlocal_debug_decl(ptr noundef nonnull %0, ptr noundef nonnull %45) #14
  br label %57

57:                                               ; preds = %47, %55, %50, %43
  %58 = getelementptr inbounds %struct.tree_type, ptr %41, i64 0, i32 14
  %59 = load ptr, ptr %58, align 8, !tbaa !43
  %60 = icmp eq ptr %59, null
  br i1 %60, label %71, label %61

61:                                               ; preds = %57
  %62 = load i64, ptr %59, align 8
  %63 = trunc i64 %62 to i16
  switch i16 %63, label %71 [
    i16 32, label %64
    i16 34, label %64
  ]

64:                                               ; preds = %61, %61
  %65 = tail call ptr @decl_function_context(ptr noundef nonnull %59) #15
  %66 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !83
  %68 = icmp eq ptr %65, %67
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = tail call fastcc ptr @get_nonlocal_debug_decl(ptr noundef nonnull %0, ptr noundef nonnull %59) #14
  br label %71

71:                                               ; preds = %30, %37, %69, %64, %57, %61
  ret void
}

; Function Attrs: optsize
declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @concat(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @get_identifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_tmp_var_for(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !56 !PGOFuncName !172 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 262144
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 146, ptr noundef nonnull @.str.2) #15
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !43
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = load i64, ptr %10, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 23
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 148, ptr noundef nonnull @.str.2) #15
  br label %17

17:                                               ; preds = %8, %12, %16
  %18 = tail call ptr @create_tmp_var_raw(ptr noundef nonnull %1, ptr noundef %2) #15
  %19 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !83
  %21 = getelementptr inbounds %struct.tree_decl_minimal, ptr %18, i64 0, i32 4
  store ptr %20, ptr %21, align 8, !tbaa !43
  %22 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !97
  %24 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 1
  store ptr %23, ptr %24, align 8, !tbaa !43
  %25 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %18, i64 0, i32 4
  %26 = load i32, ptr %25, align 8
  %27 = or i32 %26, 256
  store i32 %27, ptr %25, align 8
  %28 = load i64, ptr %1, align 8
  %29 = trunc i64 %28 to i32
  %30 = and i32 %29, 65535
  %31 = add nsw i32 %30, -13
  %32 = icmp ult i32 %31, 2
  br i1 %32, label %33, label %37

33:                                               ; preds = %17
  %34 = getelementptr inbounds %struct.tree_decl_common, ptr %18, i64 0, i32 2
  %35 = load i64, ptr %34, align 8
  %36 = or i64 %35, 134217728
  store i64 %36, ptr %34, align 8
  br label %37

37:                                               ; preds = %17, %33
  store ptr %18, ptr %22, align 8, !tbaa !97
  ret ptr %18
}

; Function Attrs: optsize
declare ptr @create_tmp_var_raw(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @create_tmp_var_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #2 !prof !56 !PGOFuncName !173 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !174
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_for_pre_body(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !56 !PGOFuncName !176 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @gimple_seq_alloc() local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #12 !prof !56 !PGOFuncName !177 {
  %3 = tail call fastcc ptr @gimple_seq_last(ptr noundef %1) #14
  store ptr %3, ptr %0, align 8, !tbaa !131
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !178
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !132
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #14
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !179
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i64 @gimple_omp_for_collapse(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !56 !PGOFuncName !180 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !43
  ret i64 %3
}

; Function Attrs: optsize
declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_omp_for_index_ptr(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 !prof !56 !PGOFuncName !181 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !43
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3464, ptr noundef nonnull @.str.2) #15
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1, i32 1
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_omp_for_initial_ptr(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 !prof !56 !PGOFuncName !182 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !43
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3497, ptr noundef nonnull @.str.2) #15
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1, i32 2
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_omp_for_final_ptr(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 !prof !56 !PGOFuncName !183 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !43
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3530, ptr noundef nonnull @.str.2) #15
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1, i32 3
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_omp_for_incr(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 !prof !56 !PGOFuncName !184 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !43
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3552, ptr noundef nonnull @.str.2) #15
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !43
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !185
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef readonly %0) unnamed_addr #2 !prof !56 !PGOFuncName !187 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !174
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: optsize
declare void @gimple_seq_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @annotate_all_with_location(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gimple_seq_add_seq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_omp_for_set_pre_body(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #10 !prof !56 !PGOFuncName !188 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 4
  store ptr %1, ptr %3, align 8, !tbaa !43
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #2 !prof !56 !PGOFuncName !189 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !190
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !56 !PGOFuncName !191 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  ret ptr %3
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_frame_field(ptr nocapture noundef %0, ptr noundef readnone %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !56 !PGOFuncName !192 {
  %5 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !83
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @get_frame_type(ptr noundef nonnull %0) #14
  %10 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !103
  br label %42

12:                                               ; preds = %4
  %13 = tail call fastcc ptr @get_chain_decl(ptr noundef nonnull %0) #14
  %14 = load ptr, ptr %0, align 8, !tbaa !84
  %15 = getelementptr inbounds %struct.nesting_info, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !83
  %17 = icmp eq ptr %16, %1
  br i1 %17, label %35, label %18

18:                                               ; preds = %12, %18
  %19 = phi ptr [ %31, %18 ], [ %14, %12 ]
  %20 = phi ptr [ %30, %18 ], [ %13, %12 ]
  %21 = tail call fastcc ptr @get_chain_field(ptr noundef nonnull %19) #14
  %22 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !43
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %25, ptr noundef %20) #15
  %27 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  %29 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %28, ptr noundef %26, ptr noundef %21, ptr noundef null) #15
  %30 = tail call fastcc ptr @init_tmp_var(ptr noundef nonnull %0, ptr noundef %29, ptr noundef %3) #14
  %31 = load ptr, ptr %19, align 8, !tbaa !84
  %32 = getelementptr inbounds %struct.nesting_info, ptr %31, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !83
  %34 = icmp eq ptr %33, %1
  br i1 %34, label %35, label %18, !llvm.loop !193

35:                                               ; preds = %18, %12
  %36 = phi ptr [ %13, %12 ], [ %30, %18 ]
  %37 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !43
  %39 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !43
  %41 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %40, ptr noundef %36) #15
  br label %42

42:                                               ; preds = %35, %8
  %43 = phi ptr [ %11, %8 ], [ %41, %35 ]
  %44 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !43
  %46 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %45, ptr noundef %43, ptr noundef %2, ptr noundef null) #15
  ret ptr %46
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @init_tmp_var(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !56 !PGOFuncName !194 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = tail call fastcc ptr @create_tmp_var_for(ptr noundef %0, ptr noundef %5, ptr noundef null) #14
  %7 = tail call ptr @gimple_build_assign_stat(ptr noundef %6, ptr noundef %1) #15
  %8 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !41
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %2) #14
  %12 = tail call fastcc i32 @gimple_location(ptr noundef %11) #14
  tail call fastcc void @gimple_set_location(ptr noundef %7, i32 noundef %12) #14
  br label %13

13:                                               ; preds = %10, %3
  tail call void @gsi_insert_before_without_update(ptr noundef %2, ptr noundef %7, i32 noundef 1) #15
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @save_tmp_var(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !56 !PGOFuncName !195 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = tail call fastcc ptr @create_tmp_var_for(ptr noundef %0, ptr noundef %5, ptr noundef null) #14
  %7 = tail call ptr @gimple_build_assign_stat(ptr noundef %1, ptr noundef %6) #15
  %8 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %2) #14, !range !41
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %2) #14
  %12 = tail call fastcc i32 @gimple_location(ptr noundef %11) #14
  tail call fastcc void @gimple_set_location(ptr noundef %7, i32 noundef %12) #14
  br label %13

13:                                               ; preds = %10, %3
  tail call void @gsi_insert_after_without_update(ptr noundef %2, ptr noundef %7, i32 noundef 1) #15
  ret ptr %6
}

; Function Attrs: optsize
declare void @recompute_tree_invariant_for_addr_expr(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @gsi_gimplify_val(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !56 !PGOFuncName !196 {
  %4 = tail call zeroext i8 @is_gimple_val(ptr noundef %1) #15
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @init_tmp_var(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ %1, %3 ]
  ret ptr %9
}

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #2 !prof !56 !PGOFuncName !197 {
  %2 = load ptr, ptr %0, align 8, !tbaa !131
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_location(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #10 !prof !56 !PGOFuncName !198 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 8, !tbaa !43
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_before_without_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_insert_after_without_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @is_gimple_val(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @convert_local_omp_clauses(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !56 !PGOFuncName !199 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %6 = tail call ptr @bitmap_gc_alloc_stat() #15
  %7 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !82
  tail call void @bitmap_copy(ptr noundef %6, ptr noundef %8) #15
  %9 = load ptr, ptr %0, align 8, !tbaa !43
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store ptr %6, ptr %7, align 8, !tbaa !82
  br label %107

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.walk_stmt_info, ptr %1, i64 0, i32 3
  %14 = getelementptr inbounds %struct.walk_stmt_info, ptr %1, i64 0, i32 4
  %15 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 6
  br label %16

16:                                               ; preds = %12, %69
  %17 = phi ptr [ %9, %12 ], [ %73, %69 ]
  %18 = phi i8 [ 0, %12 ], [ %71, %69 ]
  %19 = phi i8 [ 0, %12 ], [ %70, %69 ]
  %20 = getelementptr inbounds %struct.tree_omp_clause, ptr %17, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !43
  switch i32 %21, label %68 [
    i32 5, label %22
    i32 4, label %24
    i32 1, label %31
    i32 3, label %31
    i32 7, label %31
    i32 2, label %31
    i32 10, label %61
    i32 8, label %65
    i32 9, label %65
    i32 11, label %69
    i32 12, label %69
    i32 13, label %69
    i32 6, label %69
    i32 14, label %69
    i32 15, label %69
  ]

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.tree_omp_clause, ptr %17, i64 1, i32 0, i32 2
  br label %26

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.tree_omp_clause, ptr %17, i64 0, i32 4
  br label %26

26:                                               ; preds = %22, %24
  %27 = phi ptr [ %25, %24 ], [ %23, %22 ]
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  %29 = icmp eq ptr %28, null
  %30 = select i1 %29, i8 %19, i8 1
  br label %31

31:                                               ; preds = %26, %16, %16, %16, %16
  %32 = phi i8 [ %19, %16 ], [ %19, %16 ], [ %19, %16 ], [ %19, %16 ], [ %30, %26 ]
  %33 = getelementptr inbounds %struct.tree_omp_clause, ptr %17, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !43
  %35 = load i64, ptr %34, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 32
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = and i64 %35, 67108864
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %69

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.tree_decl_common, ptr %34, i64 0, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, 33554432
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %41, %31
  %47 = tail call ptr @decl_function_context(ptr noundef nonnull %34) #15
  %48 = load ptr, ptr %15, align 8, !tbaa !83
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %46
  %51 = tail call fastcc zeroext i8 @use_pointer_in_frame(ptr noundef nonnull %34) #14, !range !41
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %50
  %54 = tail call fastcc ptr @lookup_field_for_decl(ptr noundef nonnull %5, ptr noundef nonnull %34, i32 noundef 0) #14
  %55 = icmp eq ptr %54, null
  br i1 %55, label %69, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.tree_decl_minimal, ptr %34, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !43
  %59 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %6, i32 noundef %58) #15
  %60 = tail call fastcc ptr @get_local_debug_decl(ptr noundef nonnull %5, ptr noundef nonnull %34, ptr noundef nonnull %54) #14
  store ptr %60, ptr %33, align 8, !tbaa !43
  br label %69

61:                                               ; preds = %16
  %62 = getelementptr inbounds %struct.tree_omp_clause, ptr %17, i64 0, i32 6
  %63 = load ptr, ptr %62, align 8, !tbaa !43
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %61, %16, %16
  store i8 1, ptr %13, align 8, !tbaa !95
  store i8 0, ptr %14, align 1, !tbaa !96
  %66 = getelementptr inbounds %struct.tree_omp_clause, ptr %17, i64 0, i32 6
  %67 = call ptr @convert_local_reference_op(ptr noundef nonnull %66, ptr noundef nonnull %3, ptr noundef %1) #14
  br label %69

68:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1598, ptr noundef nonnull @.str.2) #15
  br label %69

69:                                               ; preds = %53, %56, %65, %68, %41, %38, %50, %46, %61, %16, %16, %16, %16, %16, %16
  %70 = phi i8 [ %19, %68 ], [ %19, %16 ], [ %19, %16 ], [ %19, %16 ], [ %19, %16 ], [ %19, %16 ], [ %19, %16 ], [ %19, %65 ], [ %19, %61 ], [ %32, %38 ], [ %32, %41 ], [ %32, %50 ], [ %32, %46 ], [ %32, %56 ], [ %32, %53 ]
  %71 = phi i8 [ %18, %68 ], [ %18, %16 ], [ %18, %16 ], [ %18, %16 ], [ %18, %16 ], [ %18, %16 ], [ %18, %16 ], [ %18, %65 ], [ %18, %61 ], [ %18, %38 ], [ %18, %41 ], [ %18, %50 ], [ %18, %46 ], [ 1, %56 ], [ %18, %53 ]
  %72 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !43
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %16, !llvm.loop !200

75:                                               ; preds = %69
  %76 = icmp eq i8 %70, 0
  store ptr %6, ptr %7, align 8, !tbaa !82
  br i1 %76, label %107, label %77

77:                                               ; preds = %75
  %78 = load ptr, ptr %0, align 8, !tbaa !43
  %79 = icmp eq ptr %78, null
  br i1 %79, label %107, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 6
  br label %82

82:                                               ; preds = %80, %103
  %83 = phi ptr [ %78, %80 ], [ %105, %103 ]
  %84 = getelementptr inbounds %struct.tree_omp_clause, ptr %83, i64 0, i32 2
  %85 = load i32, ptr %84, align 4, !tbaa !43
  switch i32 %85, label %103 [
    i32 5, label %86
    i32 4, label %100
  ]

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.tree_omp_clause, ptr %83, i64 1, i32 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !43
  %89 = icmp eq ptr %88, null
  br i1 %89, label %103, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.tree_decl_minimal, ptr %88, i64 0, i32 4
  %92 = load ptr, ptr %91, align 8, !tbaa !43
  %93 = load ptr, ptr %81, align 8, !tbaa !83
  store ptr %93, ptr %91, align 8, !tbaa !43
  %94 = getelementptr inbounds %struct.tree_omp_clause, ptr %83, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !43
  tail call fastcc void @walk_body(ptr noundef nonnull @convert_local_reference_stmt, ptr noundef nonnull @convert_local_reference_op, ptr noundef %5, ptr noundef %95) #14
  %96 = getelementptr inbounds %struct.tree_omp_clause, ptr %83, i64 0, i32 5
  %97 = load ptr, ptr %96, align 8, !tbaa !43
  tail call fastcc void @walk_body(ptr noundef nonnull @convert_local_reference_stmt, ptr noundef nonnull @convert_local_reference_op, ptr noundef %5, ptr noundef %97) #14
  %98 = load ptr, ptr %87, align 8, !tbaa !43
  %99 = getelementptr inbounds %struct.tree_decl_minimal, ptr %98, i64 0, i32 4
  store ptr %92, ptr %99, align 8, !tbaa !43
  br label %103

100:                                              ; preds = %82
  %101 = getelementptr inbounds %struct.tree_omp_clause, ptr %83, i64 0, i32 4
  %102 = load ptr, ptr %101, align 8, !tbaa !43
  tail call fastcc void @walk_body(ptr noundef nonnull @convert_local_reference_stmt, ptr noundef nonnull @convert_local_reference_op, ptr noundef %5, ptr noundef %102) #14
  br label %103

103:                                              ; preds = %100, %90, %86, %82
  %104 = getelementptr inbounds %struct.tree_common, ptr %83, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !43
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %82, !llvm.loop !201

107:                                              ; preds = %103, %11, %77, %75
  %108 = phi i8 [ 0, %11 ], [ %71, %77 ], [ %71, %75 ], [ %71, %103 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i8 %108
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_local_debug_decl(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !56 !PGOFuncName !202 {
  %4 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !81
  %6 = tail call ptr @pointer_map_insert(ptr noundef %5, ptr noundef %1) #15
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %73

9:                                                ; preds = %3
  %10 = tail call fastcc ptr @get_frame_type(ptr noundef nonnull %0) #14
  %11 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !103
  %13 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !43
  %15 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %14, ptr noundef %12, ptr noundef %2, ptr noundef null) #15
  %16 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !43
  %18 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  %20 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = tail call ptr @build_decl_stat(i32 noundef %17, i32 noundef 32, ptr noundef %19, ptr noundef %21) #15
  %23 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !83
  %25 = getelementptr inbounds %struct.tree_decl_minimal, ptr %22, i64 0, i32 4
  store ptr %24, ptr %25, align 8, !tbaa !43
  %26 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 4096
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %22, i64 0, i32 2
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, -4097
  %32 = or disjoint i64 %31, %28
  store i64 %32, ptr %29, align 8
  %33 = load i64, ptr %26, align 8
  %34 = and i64 %33, 1024
  %35 = and i64 %32, -1025
  %36 = or disjoint i64 %35, %34
  store i64 %36, ptr %29, align 8
  %37 = load i64, ptr %1, align 8
  %38 = and i64 %37, 524288
  %39 = load i64, ptr %22, align 8
  %40 = and i64 %39, -524289
  %41 = or disjoint i64 %40, %38
  store i64 %41, ptr %22, align 8
  %42 = load i64, ptr %1, align 8
  %43 = and i64 %42, 65536
  %44 = and i64 %41, -65537
  %45 = or disjoint i64 %44, %43
  store i64 %45, ptr %22, align 8
  %46 = load i64, ptr %1, align 8
  %47 = and i64 %46, 1048576
  %48 = and i64 %45, -1048577
  %49 = or disjoint i64 %48, %47
  store i64 %49, ptr %22, align 8
  %50 = load i64, ptr %1, align 8
  %51 = and i64 %50, 262144
  %52 = and i64 %49, -262145
  %53 = or disjoint i64 %52, %51
  store i64 %53, ptr %22, align 8
  %54 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %22, i64 0, i32 4
  %55 = load i32, ptr %54, align 8
  %56 = or i32 %55, 256
  store i32 %56, ptr %54, align 8
  %57 = load i64, ptr %1, align 8
  %58 = trunc i64 %57 to i16
  switch i16 %58, label %65 [
    i16 34, label %59
    i16 36, label %59
    i16 32, label %59
  ]

59:                                               ; preds = %9, %9, %9
  %60 = load i64, ptr %26, align 8
  %61 = and i64 %60, 268435456
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = or i64 %36, 268435456
  store i64 %64, ptr %29, align 8
  br label %65

65:                                               ; preds = %9, %63, %59
  tail call void @decl_value_expr_insert(ptr noundef nonnull %22, ptr noundef %15) #15
  %66 = load i64, ptr %29, align 8
  %67 = or i64 %66, 67108864
  store i64 %67, ptr %29, align 8
  store ptr %22, ptr %6, align 8, !tbaa !52
  %68 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 8
  %69 = load ptr, ptr %68, align 8, !tbaa !162
  %70 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 1
  store ptr %69, ptr %70, align 8, !tbaa !43
  store ptr %22, ptr %68, align 8, !tbaa !162
  %71 = load i64, ptr %26, align 8
  %72 = or i64 %71, 1024
  store i64 %72, ptr %26, align 8
  br label %73

73:                                               ; preds = %3, %65
  %74 = phi ptr [ %22, %65 ], [ %7, %3 ]
  ret ptr %74
}

; Function Attrs: optsize
declare ptr @create_artificial_label(i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_nl_goto_field(ptr nocapture noundef %0) unnamed_addr #0 !prof !56 !PGOFuncName !203 {
  %2 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 13
  %3 = load ptr, ptr %2, align 8, !tbaa !204
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %28

5:                                                ; preds = %1
  %6 = load i32, ptr @ptr_mode, align 4, !tbaa !49
  %7 = icmp eq i32 %6, 16
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !52
  br label %13

10:                                               ; preds = %5
  %11 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !205
  %12 = tail call ptr %11(i32 noundef 16, i32 noundef 1) #15
  br label %13

13:                                               ; preds = %10, %8
  %14 = phi ptr [ %9, %8 ], [ %12, %10 ]
  %15 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef 2) #15
  %16 = tail call ptr @build_index_type(ptr noundef %15) #15
  %17 = tail call ptr @build_array_type(ptr noundef %14, ptr noundef %16) #15
  %18 = tail call ptr @make_node_stat(i32 noundef 31) #15
  %19 = tail call ptr @get_identifier(ptr noundef nonnull @.str.9) #15
  %20 = getelementptr inbounds %struct.tree_decl_minimal, ptr %18, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !43
  %21 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  store ptr %17, ptr %21, align 8, !tbaa !43
  %22 = getelementptr inbounds %struct.tree_type, ptr %17, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !43
  %24 = getelementptr inbounds %struct.tree_decl_common, ptr %18, i64 0, i32 3
  store i32 %23, ptr %24, align 8, !tbaa !43
  %25 = load i64, ptr %18, align 8
  %26 = or i64 %25, 262144
  store i64 %26, ptr %18, align 8
  %27 = tail call fastcc ptr @get_frame_type(ptr noundef nonnull %0) #14
  tail call void @insert_field_into_struct(ptr noundef %27, ptr noundef nonnull %18) #14
  store ptr %18, ptr %2, align 8, !tbaa !204
  br label %28

28:                                               ; preds = %13, %1
  %29 = phi ptr [ %3, %1 ], [ %18, %13 ]
  ret ptr %29
}

; Function Attrs: optsize
declare ptr @gimple_build_call(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_replace(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_array_type(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_index_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_label_label(ptr noundef %0) unnamed_addr #0 !prof !56 !PGOFuncName !206 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #14
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_prev(ptr nocapture noundef %0) unnamed_addr #12 !prof !56 !PGOFuncName !207 {
  %2 = load ptr, ptr %0, align 8, !tbaa !131
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !208
  store ptr %4, ptr %0, align 8, !tbaa !131
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @gimple_stmt_may_fallthru(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_build_goto(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_build_label(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @convert_tramp_reference_stmt(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #0 !prof !56 !PGOFuncName !209 {
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #14
  %5 = tail call fastcc i32 @gimple_code(ptr noundef %4) #14, !range !94
  %6 = icmp eq i32 %5, 8
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %4) #14
  %9 = zext i32 %8 to i64
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %7, %11
  %12 = phi i64 [ %16, %11 ], [ 0, %7 ]
  %13 = trunc i64 %12 to i32
  %14 = tail call fastcc ptr @gimple_call_arg_ptr(ptr noundef %4, i32 noundef %13) #14
  %15 = tail call ptr @walk_tree_1(ptr noundef %14, ptr noundef nonnull @convert_tramp_reference_op, ptr noundef %2, ptr noundef null, ptr noundef null) #15
  %16 = add nuw nsw i64 %12, 1
  %17 = icmp eq i64 %16, %9
  br i1 %17, label %18, label %11, !llvm.loop !210

18:                                               ; preds = %11, %7, %3
  %19 = phi i8 [ 0, %3 ], [ 1, %7 ], [ 1, %11 ]
  store i8 %19, ptr %1, align 1, !tbaa !43
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @convert_tramp_reference_op(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #0 !prof !56 !PGOFuncName !211 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = load ptr, ptr %0, align 8, !tbaa !52
  store i32 0, ptr %1, align 4, !tbaa !49
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 121
  br i1 %9, label %10, label %51

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 29
  br i1 %15, label %16, label %57

16:                                               ; preds = %10
  %17 = tail call ptr @decl_function_context(ptr noundef nonnull %12) #15
  %18 = icmp eq ptr %17, null
  br i1 %18, label %57, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.tree_function_decl, ptr %12, i64 0, i32 5
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 4194304
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %57, label %24

24:                                               ; preds = %19
  %25 = load i64, ptr %6, align 8
  %26 = and i64 %25, 67108864
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !83
  %31 = icmp eq ptr %30, %17
  br i1 %31, label %38, label %32

32:                                               ; preds = %28, %32
  %33 = phi ptr [ %34, %32 ], [ %5, %28 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !84
  %35 = getelementptr inbounds %struct.nesting_info, ptr %34, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !83
  %37 = icmp eq ptr %36, %17
  br i1 %37, label %38, label %32, !llvm.loop !212

38:                                               ; preds = %32, %28
  %39 = phi ptr [ %5, %28 ], [ %34, %32 ]
  %40 = tail call fastcc ptr @lookup_tramp_for_decl(ptr noundef nonnull %39, ptr noundef nonnull %12, i32 noundef 1) #14
  %41 = tail call fastcc ptr @get_frame_field(ptr noundef %5, ptr noundef nonnull %17, ptr noundef %40, ptr noundef %2) #14
  %42 = tail call ptr @build_addr(ptr noundef %41, ptr noundef nonnull %17) #14
  %43 = tail call fastcc ptr @gsi_gimplify_val(ptr noundef %5, ptr noundef %42, ptr noundef %2) #14
  %44 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 521), align 8, !tbaa !52
  %45 = tail call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %44, i32 noundef 1, ptr noundef %43) #15
  %46 = tail call fastcc ptr @init_tmp_var_with_call(ptr noundef %5, ptr noundef %2, ptr noundef %45) #14
  %47 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !43
  %49 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef %48, ptr noundef %46) #15
  %50 = tail call fastcc ptr @init_tmp_var(ptr noundef %5, ptr noundef %49, ptr noundef %2) #14
  store ptr %50, ptr %0, align 8, !tbaa !52
  br label %57

51:                                               ; preds = %3
  %52 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %53 = load i32, ptr %52, align 4, !tbaa !49
  %54 = and i32 %53, -2
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  store i32 1, ptr %1, align 4, !tbaa !49
  br label %57

57:                                               ; preds = %51, %56, %24, %19, %16, %10, %38
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @convert_gimple_call(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #0 !prof !56 !PGOFuncName !213 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !91
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #14
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #14, !range !94
  %8 = trunc i32 %7 to i8
  switch i8 %8, label %84 [
    i8 8, label %9
    i8 26, label %33
    i8 27, label %33
    i8 23, label %80
    i8 30, label %82
    i8 29, label %82
    i8 32, label %82
    i8 24, label %82
    i8 25, label %82
    i8 22, label %82
  ]

9:                                                ; preds = %3
  %10 = tail call fastcc ptr @gimple_call_chain(ptr noundef %6) #14
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %84

12:                                               ; preds = %9
  %13 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %6) #14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %84, label %15

15:                                               ; preds = %12
  %16 = tail call ptr @decl_function_context(ptr noundef nonnull %13) #15
  %17 = icmp eq ptr %16, null
  br i1 %17, label %84, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_function_decl, ptr %13, i64 0, i32 5
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 4194304
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %84, label %23

23:                                               ; preds = %18
  %24 = tail call fastcc ptr @get_static_chain(ptr noundef %5, ptr noundef nonnull %16, ptr noundef nonnull %2) #14
  tail call fastcc void @gimple_call_set_chain(ptr noundef %6, ptr noundef %24) #14
  %25 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !83
  %27 = icmp ne ptr %26, %16
  %28 = zext i1 %27 to i8
  %29 = shl nuw nsw i8 1, %28
  %30 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 16
  %31 = load i8, ptr %30, align 2, !tbaa !214
  %32 = or i8 %29, %31
  store i8 %32, ptr %30, align 2, !tbaa !214
  br label %84

33:                                               ; preds = %3, %3
  %34 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 16
  %35 = load i8, ptr %34, align 2, !tbaa !214
  store i8 0, ptr %34, align 2, !tbaa !214
  %36 = tail call fastcc ptr @gimple_omp_body(ptr noundef %6) #14
  tail call fastcc void @walk_body(ptr noundef nonnull @convert_gimple_call, ptr noundef null, ptr noundef %5, ptr noundef %36) #14
  %37 = getelementptr inbounds %struct.nesting_info, ptr %5, i64 0, i32 10
  br label %38

38:                                               ; preds = %33, %76
  %39 = phi i1 [ true, %33 ], [ false, %76 ]
  %40 = phi i32 [ 0, %33 ], [ 1, %76 ]
  %41 = load i8, ptr %34, align 2, !tbaa !214
  %42 = sext i8 %41 to i32
  %43 = shl nuw nsw i32 1, %40
  %44 = and i32 %43, %42
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %76, label %46

46:                                               ; preds = %38
  br i1 %39, label %49, label %47

47:                                               ; preds = %46
  %48 = tail call fastcc ptr @get_chain_decl(ptr noundef nonnull %5) #14
  br label %51

49:                                               ; preds = %46
  %50 = load ptr, ptr %37, align 8, !tbaa !103
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi ptr [ %48, %47 ], [ %50, %49 ]
  %53 = tail call fastcc ptr @gimple_omp_taskreg_clauses(ptr noundef %6) #14
  %54 = icmp eq ptr %53, null
  br i1 %54, label %69, label %55

55:                                               ; preds = %51, %65
  %56 = phi ptr [ %67, %65 ], [ %53, %51 ]
  %57 = getelementptr inbounds %struct.tree_omp_clause, ptr %56, i64 0, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !43
  %59 = and i32 %58, -2
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.tree_omp_clause, ptr %56, i64 0, i32 6
  %63 = load ptr, ptr %62, align 8, !tbaa !43
  %64 = icmp eq ptr %63, %52
  br i1 %64, label %76, label %65

65:                                               ; preds = %55, %61
  %66 = getelementptr inbounds %struct.tree_common, ptr %56, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !43
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %55, !llvm.loop !215

69:                                               ; preds = %65, %51
  %70 = tail call fastcc i32 @gimple_location(ptr noundef %6) #14
  %71 = select i1 %39, i32 2, i32 3
  %72 = tail call ptr @build_omp_clause(i32 noundef %70, i32 noundef %71) #15
  %73 = getelementptr inbounds %struct.tree_omp_clause, ptr %72, i64 0, i32 6
  store ptr %52, ptr %73, align 8, !tbaa !43
  %74 = tail call fastcc ptr @gimple_omp_taskreg_clauses(ptr noundef %6) #14
  %75 = getelementptr inbounds %struct.tree_common, ptr %72, i64 0, i32 1
  store ptr %74, ptr %75, align 8, !tbaa !43
  tail call fastcc void @gimple_omp_taskreg_set_clauses(ptr noundef %6, ptr noundef %72) #14
  br label %76

76:                                               ; preds = %61, %69, %38
  br i1 %39, label %38, label %77, !llvm.loop !216

77:                                               ; preds = %76
  %78 = load i8, ptr %34, align 2, !tbaa !214
  %79 = or i8 %78, %35
  store i8 %79, ptr %34, align 2, !tbaa !214
  br label %84

80:                                               ; preds = %3
  %81 = tail call fastcc ptr @gimple_omp_for_pre_body(ptr noundef %6) #14
  tail call fastcc void @walk_body(ptr noundef nonnull @convert_gimple_call, ptr noundef null, ptr noundef %5, ptr noundef %81) #14
  br label %82

82:                                               ; preds = %3, %3, %3, %3, %3, %3, %80
  %83 = tail call fastcc ptr @gimple_omp_body(ptr noundef %6) #14
  tail call fastcc void @walk_body(ptr noundef nonnull @convert_gimple_call, ptr noundef null, ptr noundef %5, ptr noundef %83) #14
  br label %84

84:                                               ; preds = %77, %82, %9, %12, %23, %18, %15, %3
  %85 = phi i8 [ 0, %3 ], [ 1, %15 ], [ 1, %18 ], [ 1, %23 ], [ 1, %12 ], [ 1, %9 ], [ 1, %82 ], [ 1, %77 ]
  store i8 %85, ptr %1, align 1, !tbaa !43
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !56 !PGOFuncName !217 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #14
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !56 !PGOFuncName !218 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %3) #14
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !56 !PGOFuncName !219 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !43
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !56 !PGOFuncName !220 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #14, !range !41
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #14
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi ptr [ %8, %5 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookup_tramp_for_decl(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !56 !PGOFuncName !221 {
  %4 = icmp eq i32 %2, 0
  %5 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  br i1 %4, label %7, label %12

7:                                                ; preds = %3
  %8 = tail call ptr @pointer_map_contains(ptr noundef %6, ptr noundef %1) #15
  %9 = icmp eq ptr %8, null
  br i1 %9, label %27, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %8, align 8, !tbaa !52
  br label %27

12:                                               ; preds = %3
  %13 = tail call ptr @pointer_map_insert(ptr noundef %6, ptr noundef %1) #15
  %14 = load ptr, ptr %13, align 8, !tbaa !52
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = tail call ptr @make_node_stat(i32 noundef 31) #15
  %18 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !43
  %20 = getelementptr inbounds %struct.tree_decl_minimal, ptr %17, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !43
  %21 = tail call fastcc ptr @get_trampoline_type(ptr noundef nonnull %0) #14
  %22 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !43
  %23 = load i64, ptr %17, align 8
  %24 = or i64 %23, 262144
  store i64 %24, ptr %17, align 8
  %25 = tail call fastcc ptr @get_frame_type(ptr noundef nonnull %0) #14
  tail call void @insert_field_into_struct(ptr noundef %25, ptr noundef nonnull %17) #14
  store ptr %17, ptr %13, align 8, !tbaa !52
  %26 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 15
  store i8 1, ptr %26, align 1, !tbaa !222
  br label %27

27:                                               ; preds = %12, %16, %10, %7
  %28 = phi ptr [ %11, %10 ], [ null, %7 ], [ %17, %16 ], [ %14, %12 ]
  ret ptr %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @init_tmp_var_with_call(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !56 !PGOFuncName !223 {
  %4 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %2) #14
  %5 = tail call fastcc ptr @create_tmp_var_for(ptr noundef %0, ptr noundef %4, ptr noundef null) #14
  tail call fastcc void @gimple_call_set_lhs(ptr noundef %2, ptr noundef %5) #14
  %6 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %1) #14, !range !41
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %1) #14
  %10 = tail call fastcc i32 @gimple_location(ptr noundef %9) #14
  tail call fastcc void @gimple_set_location(ptr noundef %2, i32 noundef %10) #14
  br label %11

11:                                               ; preds = %8, %3
  tail call void @gsi_insert_before(ptr noundef %1, ptr noundef %2, i32 noundef 1) #15
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_trampoline_type(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !56 !PGOFuncName !224 {
  %2 = load ptr, ptr @trampoline_type, align 8, !tbaa !52
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %25

4:                                                ; preds = %1
  %5 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef 9) #15
  %6 = tail call ptr @build_index_type(ptr noundef %5) #15
  %7 = load ptr, ptr @integer_types, align 16, !tbaa !52
  %8 = tail call ptr @build_array_type(ptr noundef %7, ptr noundef %6) #15
  %9 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !83
  %11 = getelementptr inbounds %struct.tree_decl_minimal, ptr %10, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !43
  %13 = tail call ptr @get_identifier(ptr noundef nonnull @.str.12) #15
  %14 = tail call ptr @build_decl_stat(i32 noundef %12, i32 noundef 31, ptr noundef %13, ptr noundef %8) #15
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %14, i64 0, i32 3
  store i32 8, ptr %15, align 8, !tbaa !43
  %16 = load i64, ptr %14, align 8
  %17 = or i64 %16, 4398046511104
  store i64 %17, ptr %14, align 8
  %18 = tail call ptr @make_node_stat(i32 noundef 16) #15
  store ptr %18, ptr @trampoline_type, align 8, !tbaa !52
  %19 = tail call ptr @get_identifier(ptr noundef nonnull @.str.13) #15
  %20 = load ptr, ptr @trampoline_type, align 8, !tbaa !52
  %21 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 12
  store ptr %19, ptr %21, align 8, !tbaa !43
  %22 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 1
  store ptr %14, ptr %22, align 8, !tbaa !43
  tail call void @layout_type(ptr noundef %20) #15
  %23 = load ptr, ptr @trampoline_type, align 8, !tbaa !52
  %24 = getelementptr inbounds %struct.tree_decl_minimal, ptr %14, i64 0, i32 4
  store ptr %23, ptr %24, align 8, !tbaa !43
  br label %25

25:                                               ; preds = %1, %4
  %26 = phi ptr [ %23, %4 ], [ %2, %1 ]
  ret ptr %26
}

; Function Attrs: optsize
declare void @layout_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #0 !prof !56 !PGOFuncName !225 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #14
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !56 !PGOFuncName !226 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #14
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !43
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !56 !PGOFuncName !227 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #14
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !56 !PGOFuncName !228 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #14, !range !41
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #14
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1665, ptr noundef nonnull @.str.2) #15
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #14
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !52
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_chain(ptr noundef %0) unnamed_addr #0 !prof !56 !PGOFuncName !229 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #14
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 !prof !56 !PGOFuncName !230 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #14
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_chain(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !56 !PGOFuncName !231 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 2, ptr noundef %1) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_static_chain(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !56 !PGOFuncName !232 {
  %4 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !83
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !103
  %10 = tail call ptr @build_addr(ptr noundef %9, ptr noundef %1) #14
  br label %34

11:                                               ; preds = %3
  %12 = tail call fastcc ptr @get_chain_decl(ptr noundef nonnull %0) #14
  %13 = load ptr, ptr %0, align 8, !tbaa !84
  %14 = getelementptr inbounds %struct.nesting_info, ptr %13, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !83
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %34, label %17

17:                                               ; preds = %11, %17
  %18 = phi ptr [ %30, %17 ], [ %13, %11 ]
  %19 = phi ptr [ %29, %17 ], [ %12, %11 ]
  %20 = tail call fastcc ptr @get_chain_field(ptr noundef nonnull %18) #14
  %21 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !43
  %23 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !43
  %25 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %24, ptr noundef %19) #15
  %26 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !43
  %28 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %27, ptr noundef %25, ptr noundef %20, ptr noundef null) #15
  %29 = tail call fastcc ptr @init_tmp_var(ptr noundef nonnull %0, ptr noundef %28, ptr noundef %2) #14
  %30 = load ptr, ptr %18, align 8, !tbaa !84
  %31 = getelementptr inbounds %struct.nesting_info, ptr %30, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !83
  %33 = icmp eq ptr %32, %1
  br i1 %33, label %34, label %17, !llvm.loop !233

34:                                               ; preds = %17, %11, %7
  %35 = phi ptr [ %10, %7 ], [ %12, %11 ], [ %29, %17 ]
  ret ptr %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finalize_nesting_tree_1(ptr noundef %0) unnamed_addr #0 !prof !56 !PGOFuncName !234 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.nesting_copy_body_data, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %5 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !83
  store ptr null, ptr %2, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 9
  %8 = load ptr, ptr %7, align 8, !tbaa !164
  %9 = icmp eq ptr %8, null
  br i1 %9, label %46, label %10

10:                                               ; preds = %1
  %11 = load i32, ptr @warn_padded, align 4, !tbaa !49
  store i32 0, ptr @warn_padded, align 4, !tbaa !49
  tail call void @layout_type(ptr noundef nonnull %8) #15
  store i32 %11, ptr @warn_padded, align 4, !tbaa !49
  %12 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !103
  tail call void @layout_decl(ptr noundef %13, i32 noundef 0) #15
  %14 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  %16 = load ptr, ptr %12, align 8, !tbaa !103
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %36, label %18

18:                                               ; preds = %10, %30
  %19 = phi ptr [ %31, %30 ], [ %16, %10 ]
  %20 = phi ptr [ %32, %30 ], [ %15, %10 ]
  %21 = phi ptr [ %34, %30 ], [ %14, %10 ]
  %22 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !43
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2287, ptr noundef nonnull @.str.2) #15
  %26 = load ptr, ptr %21, align 8, !tbaa !52
  %27 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !52
  %29 = load ptr, ptr %12, align 8, !tbaa !103
  br label %30

30:                                               ; preds = %18, %25
  %31 = phi ptr [ %19, %18 ], [ %29, %25 ]
  %32 = phi ptr [ %23, %18 ], [ %28, %25 ]
  %33 = phi ptr [ %20, %18 ], [ %26, %25 ]
  %34 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 1
  %35 = icmp eq ptr %32, %31
  br i1 %35, label %36, label %18, !llvm.loop !235

36:                                               ; preds = %30, %10
  %37 = phi ptr [ %14, %10 ], [ %34, %30 ]
  %38 = phi ptr [ %15, %10 ], [ %31, %30 ]
  %39 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !43
  store ptr %40, ptr %37, align 8, !tbaa !52
  %41 = load ptr, ptr %12, align 8, !tbaa !103
  %42 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 1
  store ptr null, ptr %42, align 8, !tbaa !43
  %43 = load ptr, ptr %12, align 8, !tbaa !103
  %44 = tail call ptr @gimple_body(ptr noundef %6) #15
  %45 = tail call fastcc ptr @gimple_seq_first_stmt(ptr noundef %44) #14
  tail call void @declare_vars(ptr noundef %43, ptr noundef %45, i8 noundef zeroext 1) #15
  br label %46

46:                                               ; preds = %36, %1
  %47 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 14
  %48 = load i8, ptr %47, align 8, !tbaa !167
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %86, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.tree_decl_non_common, ptr %6, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !43
  %53 = icmp eq ptr %52, null
  br i1 %53, label %86, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 10
  br label %56

56:                                               ; preds = %54, %82
  %57 = phi ptr [ %52, %54 ], [ %84, %82 ]
  %58 = call fastcc ptr @lookup_field_for_decl(ptr noundef %0, ptr noundef nonnull %57, i32 noundef 0) #14
  %59 = icmp eq ptr %58, null
  br i1 %59, label %82, label %60

60:                                               ; preds = %56
  %61 = call fastcc zeroext i8 @use_pointer_in_frame(ptr noundef nonnull %57) #14, !range !41
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %60
  %64 = call ptr @build_addr(ptr noundef nonnull %57, ptr noundef %6) #14
  br label %65

65:                                               ; preds = %60, %63
  %66 = phi ptr [ %64, %63 ], [ %57, %60 ]
  %67 = getelementptr inbounds %struct.tree_common, ptr %58, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !43
  %69 = load ptr, ptr %55, align 8, !tbaa !103
  %70 = call ptr @build3_stat(i32 noundef 41, ptr noundef %68, ptr noundef %69, ptr noundef nonnull %58, ptr noundef null) #15
  %71 = call ptr @gimple_build_assign_stat(ptr noundef %70, ptr noundef %66) #15
  call void @gimple_seq_add_stmt(ptr noundef nonnull %2, ptr noundef %71) #15
  %72 = call zeroext i8 @is_gimple_reg(ptr noundef %66) #15
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.tree_common, ptr %66, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !43
  %77 = call zeroext i8 @is_gimple_reg_type(ptr noundef %76) #15
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  %80 = load ptr, ptr %2, align 8, !tbaa !52
  call fastcc void @gsi_last(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %80) #14
  %81 = call fastcc ptr @init_tmp_var(ptr noundef nonnull %0, ptr noundef nonnull %66, ptr noundef nonnull %3) #14
  call fastcc void @gimple_assign_set_rhs1(ptr noundef %71, ptr noundef %81) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  br label %82

82:                                               ; preds = %65, %74, %79, %56
  %83 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !43
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %56, !llvm.loop !236

86:                                               ; preds = %82, %50, %46
  %87 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 11
  %88 = load ptr, ptr %87, align 8, !tbaa !112
  %89 = icmp eq ptr %88, null
  br i1 %89, label %98, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.tree_common, ptr %88, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !43
  %93 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 10
  %94 = load ptr, ptr %93, align 8, !tbaa !103
  %95 = call ptr @build3_stat(i32 noundef 41, ptr noundef %92, ptr noundef %94, ptr noundef nonnull %88, ptr noundef null) #15
  %96 = call fastcc ptr @get_chain_decl(ptr noundef nonnull %0) #14
  %97 = call ptr @gimple_build_assign_stat(ptr noundef %95, ptr noundef %96) #15
  call void @gimple_seq_add_stmt(ptr noundef nonnull %2, ptr noundef %97) #15
  br label %98

98:                                               ; preds = %90, %86
  %99 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 15
  %100 = load i8, ptr %99, align 1, !tbaa !222
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %137, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !52
  %105 = icmp eq ptr %104, null
  br i1 %105, label %137, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 10
  br label %108

108:                                              ; preds = %106, %133
  %109 = phi ptr [ %104, %106 ], [ %135, %133 ]
  %110 = getelementptr inbounds %struct.nesting_info, ptr %109, i64 0, i32 6
  %111 = load ptr, ptr %110, align 8, !tbaa !83
  %112 = call fastcc ptr @lookup_tramp_for_decl(ptr noundef %0, ptr noundef %111, i32 noundef 0) #14
  %113 = icmp eq ptr %112, null
  br i1 %113, label %133, label %114

114:                                              ; preds = %108
  %115 = load ptr, ptr %110, align 8, !tbaa !83
  %116 = getelementptr inbounds %struct.tree_function_decl, ptr %115, i64 0, i32 5
  %117 = load i32, ptr %116, align 8
  %118 = and i32 %117, 4194304
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2352, ptr noundef nonnull @.str.2) #15
  br label %121

121:                                              ; preds = %114, %120
  %122 = load ptr, ptr %107, align 8, !tbaa !103
  %123 = call ptr @build_addr(ptr noundef %122, ptr noundef %6) #14
  %124 = load ptr, ptr %110, align 8, !tbaa !83
  %125 = call ptr @build_addr(ptr noundef %124, ptr noundef %6) #14
  %126 = getelementptr inbounds %struct.tree_common, ptr %112, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !43
  %128 = load ptr, ptr %107, align 8, !tbaa !103
  %129 = call ptr @build3_stat(i32 noundef 41, ptr noundef %127, ptr noundef %128, ptr noundef nonnull %112, ptr noundef null) #15
  %130 = call ptr @build_addr(ptr noundef %129, ptr noundef %6) #14
  %131 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 520), align 16, !tbaa !52
  %132 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %131, i32 noundef 3, ptr noundef %130, ptr noundef %125, ptr noundef %123) #15
  call void @gimple_seq_add_stmt(ptr noundef nonnull %2, ptr noundef %132) #15
  br label %133

133:                                              ; preds = %108, %121
  %134 = getelementptr inbounds %struct.nesting_info, ptr %109, i64 0, i32 2
  %135 = load ptr, ptr %134, align 8, !tbaa !52
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %108, !llvm.loop !237

137:                                              ; preds = %133, %102, %98
  %138 = load ptr, ptr %2, align 8, !tbaa !52
  %139 = icmp eq ptr %138, null
  br i1 %139, label %147, label %140

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 1
  %142 = load i32, ptr %141, align 8, !tbaa !43
  call void @annotate_all_with_location(ptr noundef nonnull %138, i32 noundef %142) #15
  %143 = call ptr @gimple_body(ptr noundef %6) #15
  %144 = call fastcc ptr @gimple_seq_first_stmt(ptr noundef %143) #14
  %145 = call fastcc ptr @gimple_bind_body(ptr noundef %144) #14
  call void @gimple_seq_add_seq(ptr noundef nonnull %2, ptr noundef %145) #15
  %146 = load ptr, ptr %2, align 8, !tbaa !52
  call fastcc void @gimple_bind_set_body(ptr noundef %144, ptr noundef %146) #14
  br label %147

147:                                              ; preds = %140, %137
  %148 = load ptr, ptr %5, align 8, !tbaa !83
  %149 = getelementptr inbounds %struct.tree_function_decl, ptr %148, i64 0, i32 1
  %150 = load ptr, ptr %149, align 8, !tbaa !43
  %151 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 12
  %152 = load ptr, ptr %151, align 8, !tbaa !111
  %153 = getelementptr inbounds %struct.function, ptr %150, i64 0, i32 7
  store ptr %152, ptr %153, align 8, !tbaa !238
  %154 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 13
  %155 = load ptr, ptr %154, align 8, !tbaa !204
  %156 = icmp eq ptr %155, null
  br i1 %156, label %163, label %157

157:                                              ; preds = %147
  %158 = call fastcc ptr @get_frame_field(ptr noundef nonnull %0, ptr noundef %6, ptr noundef nonnull %155, ptr noundef null) #14
  %159 = getelementptr inbounds %struct.function, ptr %150, i64 0, i32 8
  store ptr %158, ptr %159, align 8, !tbaa !240
  %160 = getelementptr inbounds %struct.function, ptr %150, i64 0, i32 20
  %161 = load i32, ptr %160, align 8
  %162 = or i32 %161, 1048576
  store i32 %162, ptr %160, align 8
  br label %163

163:                                              ; preds = %157, %147
  %164 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 7
  %165 = load ptr, ptr %164, align 8, !tbaa !97
  %166 = icmp eq ptr %165, null
  br i1 %166, label %171, label %167

167:                                              ; preds = %163
  %168 = load ptr, ptr %5, align 8, !tbaa !83
  %169 = call ptr @gimple_body(ptr noundef %168) #15
  %170 = call fastcc ptr @gimple_seq_first_stmt(ptr noundef %169) #14
  call void @declare_vars(ptr noundef nonnull %165, ptr noundef %170, i8 noundef zeroext 0) #15
  br label %171

171:                                              ; preds = %167, %163
  %172 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 8
  %173 = load ptr, ptr %172, align 8, !tbaa !162
  %174 = icmp eq ptr %173, null
  br i1 %174, label %285, label %175

175:                                              ; preds = %171
  %176 = load ptr, ptr %5, align 8, !tbaa !83
  %177 = getelementptr inbounds %struct.tree_decl_common, ptr %176, i64 0, i32 5
  %178 = load ptr, ptr %177, align 8, !tbaa !43
  call fastcc void @remap_vla_decls(ptr noundef %178, ptr noundef nonnull %0) #14
  %179 = load ptr, ptr %172, align 8, !tbaa !43
  %180 = icmp eq ptr %179, null
  br i1 %180, label %265, label %181

181:                                              ; preds = %175, %187
  %182 = phi ptr [ %189, %187 ], [ %179, %175 ]
  %183 = getelementptr inbounds %struct.tree_common, ptr %182, i64 0, i32 2
  %184 = load ptr, ptr %183, align 8, !tbaa !43
  %185 = call zeroext i8 @variably_modified_type_p(ptr noundef %184, ptr noundef null) #15
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %181
  %188 = getelementptr inbounds %struct.tree_common, ptr %182, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !43
  %190 = icmp eq ptr %189, null
  br i1 %190, label %265, label %181, !llvm.loop !241

191:                                              ; preds = %181
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %4, i8 0, i64 152, i1 false)
  %192 = getelementptr inbounds %struct.copy_body_data, ptr %4, i64 0, i32 7
  store ptr @nesting_copy_decl, ptr %192, align 8, !tbaa !242
  %193 = call ptr @pointer_map_create() #15
  %194 = getelementptr inbounds %struct.copy_body_data, ptr %4, i64 0, i32 6
  store ptr %193, ptr %194, align 8, !tbaa !245
  %195 = getelementptr inbounds %struct.nesting_copy_body_data, ptr %4, i64 0, i32 1
  store ptr %0, ptr %195, align 8, !tbaa !246
  %196 = icmp eq ptr %0, null
  %197 = getelementptr inbounds %struct.copy_body_data, ptr %4, i64 0, i32 1
  %198 = getelementptr inbounds %struct.copy_body_data, ptr %4, i64 0, i32 4
  br label %199

199:                                              ; preds = %191, %259
  %200 = phi ptr [ %182, %191 ], [ %261, %259 ]
  %201 = getelementptr inbounds %struct.tree_common, ptr %200, i64 0, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !43
  %203 = call zeroext i8 @variably_modified_type_p(ptr noundef %202, ptr noundef null) #15
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %259, label %205

205:                                              ; preds = %199
  %206 = load ptr, ptr %201, align 8, !tbaa !43
  br i1 %196, label %259, label %207

207:                                              ; preds = %205, %213
  %208 = phi ptr [ %214, %213 ], [ %0, %205 ]
  %209 = getelementptr inbounds %struct.nesting_info, ptr %208, i64 0, i32 6
  %210 = load ptr, ptr %209, align 8, !tbaa !83
  %211 = call zeroext i8 @variably_modified_type_p(ptr noundef %206, ptr noundef %210) #15
  %212 = icmp eq i8 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %207
  %214 = load ptr, ptr %208, align 8, !tbaa !84
  %215 = icmp eq ptr %214, null
  br i1 %215, label %259, label %207, !llvm.loop !247

216:                                              ; preds = %207
  %217 = getelementptr inbounds %struct.nesting_info, ptr %208, i64 0, i32 6
  %218 = load ptr, ptr %217, align 8, !tbaa !83
  store ptr %218, ptr %4, align 8, !tbaa !248
  store ptr %218, ptr %197, align 8, !tbaa !249
  %219 = load ptr, ptr %5, align 8, !tbaa !83
  %220 = getelementptr inbounds %struct.tree_function_decl, ptr %219, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !43
  store ptr %221, ptr %198, align 8, !tbaa !250
  %222 = call ptr @remap_type(ptr noundef %206, ptr noundef nonnull %4) #15
  store ptr %222, ptr %201, align 8, !tbaa !43
  br label %223

223:                                              ; preds = %232, %216
  %224 = phi ptr [ %222, %216 ], [ %234, %232 ]
  %225 = phi ptr [ %206, %216 ], [ %236, %232 ]
  %226 = load i64, ptr %224, align 8
  %227 = trunc i64 %226 to i16
  switch i16 %227, label %237 [
    i16 10, label %228
    i16 12, label %228
  ]

228:                                              ; preds = %223, %223
  %229 = getelementptr inbounds %struct.tree_type, ptr %224, i64 0, i32 12
  %230 = load ptr, ptr %229, align 8, !tbaa !43
  %231 = icmp eq ptr %230, null
  br i1 %231, label %232, label %241

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.tree_common, ptr %224, i64 0, i32 2
  %234 = load ptr, ptr %233, align 8, !tbaa !43
  %235 = getelementptr inbounds %struct.tree_common, ptr %225, i64 0, i32 2
  %236 = load ptr, ptr %235, align 8, !tbaa !43
  br label %223, !llvm.loop !251

237:                                              ; preds = %223
  %238 = getelementptr inbounds %struct.tree_type, ptr %224, i64 0, i32 12
  %239 = load ptr, ptr %238, align 8, !tbaa !43
  %240 = icmp eq ptr %239, null
  br i1 %240, label %259, label %241

241:                                              ; preds = %228, %237
  %242 = phi ptr [ %239, %237 ], [ %230, %228 ]
  %243 = getelementptr inbounds %struct.tree_type, ptr %224, i64 0, i32 12
  %244 = load i64, ptr %242, align 8
  %245 = and i64 %244, 65535
  %246 = icmp eq i64 %245, 35
  br i1 %246, label %247, label %259

247:                                              ; preds = %241
  %248 = getelementptr inbounds %struct.tree_decl_non_common, ptr %242, i64 0, i32 3
  %249 = load ptr, ptr %248, align 8, !tbaa !43
  %250 = icmp eq ptr %249, null
  %251 = icmp eq ptr %224, %225
  %252 = select i1 %250, i1 true, i1 %251
  br i1 %252, label %259, label %253

253:                                              ; preds = %247
  %254 = getelementptr inbounds %struct.tree_type, ptr %225, i64 0, i32 12
  %255 = load ptr, ptr %254, align 8, !tbaa !43
  %256 = icmp eq ptr %242, %255
  br i1 %256, label %257, label %259

257:                                              ; preds = %253
  %258 = call ptr @remap_decl(ptr noundef nonnull %242, ptr noundef nonnull %4) #15
  store ptr %258, ptr %243, align 8, !tbaa !43
  br label %259

259:                                              ; preds = %213, %205, %257, %253, %247, %241, %237, %199
  %260 = getelementptr inbounds %struct.tree_common, ptr %200, i64 0, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !43
  %262 = icmp eq ptr %261, null
  br i1 %262, label %263, label %199, !llvm.loop !252

263:                                              ; preds = %259
  %264 = load ptr, ptr %194, align 8, !tbaa !245
  call void @pointer_map_destroy(ptr noundef %264) #15
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %4) #16
  br label %265

265:                                              ; preds = %187, %175, %263
  %266 = load ptr, ptr %5, align 8, !tbaa !83
  %267 = call ptr @gimple_body(ptr noundef %266) #15
  %268 = call fastcc ptr @gimple_seq_first_stmt(ptr noundef %267) #14
  %269 = call fastcc ptr @gimple_bind_block(ptr noundef %268) #14
  %270 = icmp eq ptr %269, null
  br i1 %270, label %273, label %271

271:                                              ; preds = %265
  %272 = load ptr, ptr %172, align 8, !tbaa !162
  call void @declare_vars(ptr noundef %272, ptr noundef %268, i8 noundef zeroext 1) #15
  br label %285

273:                                              ; preds = %265
  %274 = load ptr, ptr %5, align 8, !tbaa !83
  %275 = getelementptr inbounds %struct.tree_decl_common, ptr %274, i64 0, i32 5
  %276 = load ptr, ptr %275, align 8, !tbaa !43
  %277 = getelementptr inbounds %struct.tree_block, ptr %276, i64 0, i32 3
  %278 = load ptr, ptr %277, align 8, !tbaa !43
  %279 = load ptr, ptr %172, align 8, !tbaa !162
  %280 = call ptr @chainon(ptr noundef %278, ptr noundef %279) #15
  %281 = load ptr, ptr %5, align 8, !tbaa !83
  %282 = getelementptr inbounds %struct.tree_decl_common, ptr %281, i64 0, i32 5
  %283 = load ptr, ptr %282, align 8, !tbaa !43
  %284 = getelementptr inbounds %struct.tree_block, ptr %283, i64 0, i32 3
  store ptr %280, ptr %284, align 8, !tbaa !43
  br label %285

285:                                              ; preds = %271, %273, %171
  %286 = load ptr, ptr @dump_file, align 8, !tbaa !52
  %287 = icmp eq ptr %286, null
  br i1 %287, label %293, label %288

288:                                              ; preds = %285
  %289 = call i32 @fputs(ptr noundef nonnull @.str.14, ptr noundef nonnull %286) #14
  %290 = load ptr, ptr %5, align 8, !tbaa !83
  %291 = load ptr, ptr @dump_file, align 8, !tbaa !52
  %292 = load i32, ptr @dump_flags, align 4, !tbaa !49
  call void @dump_function_to_file(ptr noundef %290, ptr noundef %291, i32 noundef %292) #15
  br label %293

293:                                              ; preds = %288, %285
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret void
}

; Function Attrs: optsize
declare void @layout_decl(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gimple_seq_add_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_rhs1(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !56 !PGOFuncName !253 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bind_body(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !56 !PGOFuncName !254 {
  %2 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_bind_set_body(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #10 !prof !56 !PGOFuncName !255 {
  %3 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !43
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remap_vla_decls(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !56 !PGOFuncName !256 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.nesting_copy_body_data, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %5) #16
  %6 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !43
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %12, %9 ], [ %7, %2 ]
  tail call fastcc void @remap_vla_decls(ptr noundef nonnull %10, ptr noundef %1) #14
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !43
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %9, !llvm.loop !257

14:                                               ; preds = %9, %2
  %15 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !43
  %17 = icmp eq ptr %16, null
  br i1 %17, label %142, label %18

18:                                               ; preds = %14, %41
  %19 = phi ptr [ %43, %41 ], [ %16, %14 ]
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 32
  br i1 %22, label %23, label %41

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = call zeroext i8 @variably_modified_type_p(ptr noundef %25, ptr noundef null) #15
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %19, i64 0, i32 2
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 67108864
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = load ptr, ptr %24, align 8, !tbaa !43
  store ptr %34, ptr %4, align 8, !tbaa !52
  %35 = call ptr @decl_value_expr_lookup(ptr noundef nonnull %19) #15
  store ptr %35, ptr %3, align 8, !tbaa !52
  %36 = call ptr @walk_tree_1(ptr noundef nonnull %4, ptr noundef nonnull @contains_remapped_vars, ptr noundef %1, ptr noundef null, ptr noundef null) #15
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = call ptr @walk_tree_1(ptr noundef nonnull %3, ptr noundef nonnull @contains_remapped_vars, ptr noundef %1, ptr noundef null, ptr noundef null) #15
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %18, %23, %28, %38
  %42 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !43
  %44 = icmp eq ptr %43, null
  br i1 %44, label %142, label %18, !llvm.loop !258

45:                                               ; preds = %38, %33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %5, i8 0, i64 152, i1 false)
  %46 = getelementptr inbounds %struct.copy_body_data, ptr %5, i64 0, i32 7
  store ptr @nesting_copy_decl, ptr %46, align 8, !tbaa !242
  %47 = call ptr @pointer_map_create() #15
  %48 = getelementptr inbounds %struct.copy_body_data, ptr %5, i64 0, i32 6
  store ptr %47, ptr %48, align 8, !tbaa !245
  %49 = getelementptr inbounds %struct.nesting_copy_body_data, ptr %5, i64 0, i32 1
  store ptr %1, ptr %49, align 8, !tbaa !246
  %50 = icmp eq ptr %1, null
  %51 = getelementptr inbounds %struct.copy_body_data, ptr %5, i64 0, i32 1
  %52 = getelementptr inbounds %struct.nesting_info, ptr %1, i64 0, i32 6
  %53 = getelementptr inbounds %struct.copy_body_data, ptr %5, i64 0, i32 4
  br label %54

54:                                               ; preds = %45, %136
  %55 = phi ptr [ %19, %45 ], [ %138, %136 ]
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 32
  br i1 %58, label %59, label %136

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.tree_common, ptr %55, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !43
  %62 = call zeroext i8 @variably_modified_type_p(ptr noundef %61, ptr noundef null) #15
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %136, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.tree_decl_common, ptr %55, i64 0, i32 2
  %66 = load i64, ptr %65, align 8
  %67 = and i64 %66, 67108864
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %136, label %69

69:                                               ; preds = %64
  %70 = load ptr, ptr %60, align 8, !tbaa !43
  store ptr %70, ptr %4, align 8, !tbaa !52
  %71 = call ptr @decl_value_expr_lookup(ptr noundef nonnull %55) #15
  store ptr %71, ptr %3, align 8, !tbaa !52
  %72 = call ptr @walk_tree_1(ptr noundef nonnull %4, ptr noundef nonnull @contains_remapped_vars, ptr noundef %1, ptr noundef null, ptr noundef null) #15
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = call ptr @walk_tree_1(ptr noundef nonnull %3, ptr noundef nonnull @contains_remapped_vars, ptr noundef %1, ptr noundef null, ptr noundef null) #15
  %76 = icmp eq ptr %75, null
  br i1 %76, label %136, label %77

77:                                               ; preds = %74, %69
  %78 = call ptr @decl_function_context(ptr noundef nonnull %55) #15
  br i1 %50, label %136, label %79

79:                                               ; preds = %77, %84
  %80 = phi ptr [ %85, %84 ], [ %1, %77 ]
  %81 = getelementptr inbounds %struct.nesting_info, ptr %80, i64 0, i32 6
  %82 = load ptr, ptr %81, align 8, !tbaa !83
  %83 = icmp eq ptr %82, %78
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = load ptr, ptr %80, align 8, !tbaa !84
  %86 = icmp eq ptr %85, null
  br i1 %86, label %136, label %79, !llvm.loop !259

87:                                               ; preds = %79
  store ptr %78, ptr %5, align 8, !tbaa !248
  store ptr %78, ptr %51, align 8, !tbaa !249
  %88 = load ptr, ptr %52, align 8, !tbaa !83
  %89 = getelementptr inbounds %struct.tree_function_decl, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !43
  store ptr %90, ptr %53, align 8, !tbaa !250
  %91 = load ptr, ptr %4, align 8, !tbaa !52
  %92 = call ptr @remap_type(ptr noundef %91, ptr noundef nonnull %5) #15
  store ptr %92, ptr %60, align 8, !tbaa !43
  br label %93

93:                                               ; preds = %102, %87
  %94 = phi ptr [ %92, %87 ], [ %104, %102 ]
  %95 = phi ptr [ %70, %87 ], [ %106, %102 ]
  %96 = load i64, ptr %94, align 8
  %97 = trunc i64 %96 to i16
  switch i16 %97, label %107 [
    i16 10, label %98
    i16 12, label %98
  ]

98:                                               ; preds = %93, %93
  %99 = getelementptr inbounds %struct.tree_type, ptr %94, i64 0, i32 12
  %100 = load ptr, ptr %99, align 8, !tbaa !43
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %111

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.tree_common, ptr %94, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !43
  %105 = getelementptr inbounds %struct.tree_common, ptr %95, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !43
  br label %93, !llvm.loop !260

107:                                              ; preds = %93
  %108 = getelementptr inbounds %struct.tree_type, ptr %94, i64 0, i32 12
  %109 = load ptr, ptr %108, align 8, !tbaa !43
  %110 = icmp eq ptr %109, null
  br i1 %110, label %129, label %111

111:                                              ; preds = %98, %107
  %112 = phi ptr [ %109, %107 ], [ %100, %98 ]
  %113 = getelementptr inbounds %struct.tree_type, ptr %94, i64 0, i32 12
  %114 = load i64, ptr %112, align 8
  %115 = and i64 %114, 65535
  %116 = icmp eq i64 %115, 35
  br i1 %116, label %117, label %129

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.tree_decl_non_common, ptr %112, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !43
  %120 = icmp eq ptr %119, null
  %121 = icmp eq ptr %94, %95
  %122 = select i1 %120, i1 true, i1 %121
  br i1 %122, label %129, label %123

123:                                              ; preds = %117
  %124 = getelementptr inbounds %struct.tree_type, ptr %95, i64 0, i32 12
  %125 = load ptr, ptr %124, align 8, !tbaa !43
  %126 = icmp eq ptr %112, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = call ptr @remap_decl(ptr noundef nonnull %112, ptr noundef nonnull %5) #15
  store ptr %128, ptr %113, align 8, !tbaa !43
  br label %129

129:                                              ; preds = %127, %123, %117, %111, %107
  %130 = call ptr @walk_tree_1(ptr noundef nonnull %3, ptr noundef nonnull @copy_tree_body_r, ptr noundef nonnull %5, ptr noundef null, ptr noundef null) #15
  %131 = load ptr, ptr %3, align 8, !tbaa !52
  %132 = call ptr @decl_value_expr_lookup(ptr noundef nonnull %55) #15
  %133 = icmp eq ptr %131, %132
  br i1 %133, label %136, label %134

134:                                              ; preds = %129
  %135 = load ptr, ptr %3, align 8, !tbaa !52
  call void @decl_value_expr_insert(ptr noundef nonnull %55, ptr noundef %135) #15
  br label %136

136:                                              ; preds = %84, %77, %74, %134, %129, %54, %59, %64
  %137 = getelementptr inbounds %struct.tree_common, ptr %55, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !43
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %54, !llvm.loop !261

140:                                              ; preds = %136
  %141 = load ptr, ptr %48, align 8, !tbaa !245
  call void @pointer_map_destroy(ptr noundef %141) #15
  br label %142

142:                                              ; preds = %41, %14, %140
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @nesting_copy_decl(ptr noundef %0, ptr noundef %1) #0 !prof !56 !PGOFuncName !262 {
  %3 = getelementptr inbounds %struct.nesting_copy_body_data, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !246
  %5 = getelementptr inbounds %struct.nesting_info, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = tail call ptr @pointer_map_contains(ptr noundef %6, ptr noundef %0) #15
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %7, align 8, !tbaa !52
  br label %28

11:                                               ; preds = %2
  %12 = load i64, ptr %0, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 35
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !43
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = tail call ptr @copy_decl_no_change(ptr noundef nonnull %0, ptr noundef nonnull %1) #15
  %21 = load ptr, ptr %16, align 8, !tbaa !43
  %22 = tail call ptr @remap_type(ptr noundef %21, ptr noundef nonnull %1) #15
  %23 = getelementptr inbounds %struct.tree_decl_non_common, ptr %20, i64 0, i32 3
  store ptr %22, ptr %23, align 8, !tbaa !43
  br label %28

24:                                               ; preds = %15, %11
  %25 = trunc i64 %12 to i16
  switch i16 %25, label %26 [
    i16 32, label %28
    i16 34, label %28
    i16 36, label %28
  ]

26:                                               ; preds = %24
  %27 = tail call ptr @copy_decl_no_change(ptr noundef nonnull %0, ptr noundef nonnull %1) #15
  br label %28

28:                                               ; preds = %24, %24, %24, %26, %19, %9
  %29 = phi ptr [ %10, %9 ], [ %20, %19 ], [ %27, %26 ], [ %0, %24 ], [ %0, %24 ], [ %0, %24 ]
  ret ptr %29
}

; Function Attrs: optsize
declare ptr @remap_type(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @remap_decl(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @chainon(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @dump_function_to_file(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @decl_value_expr_lookup(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @contains_remapped_vars(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #0 !prof !56 !PGOFuncName !263 {
  %4 = load ptr, ptr %0, align 8, !tbaa !52
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !49
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !49
  %11 = getelementptr inbounds %struct.nesting_info, ptr %2, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !81
  %13 = tail call ptr @pointer_map_contains(ptr noundef %12, ptr noundef nonnull %4) #15
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr %13, align 8, !tbaa !52
  br label %17

17:                                               ; preds = %3, %10, %15
  %18 = phi ptr [ %16, %15 ], [ null, %10 ], [ null, %3 ]
  ret ptr %18
}

; Function Attrs: optsize
declare ptr @copy_tree_body_r(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: optsize
declare ptr @copy_decl_no_change(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unnest_nesting_tree_1(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !56 !PGOFuncName !264 {
  %2 = getelementptr inbounds %struct.nesting_info, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  %4 = tail call ptr @cgraph_node(ptr noundef %3) #15
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !265
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8, !tbaa !83
  %10 = tail call ptr @cgraph_node(ptr noundef %9) #15
  tail call void @cgraph_unnest_node(ptr noundef %10) #15
  %11 = load ptr, ptr %2, align 8, !tbaa !83
  tail call void @cgraph_finalize_function(ptr noundef %11, i8 noundef zeroext 1) #15
  br label %12

12:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: optsize
declare void @cgraph_unnest_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @cgraph_finalize_function(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gt_ggc_mx_lang_tree_node(ptr noundef) #3

; Function Attrs: optsize
declare void @gt_pch_nx_lang_tree_node(ptr noundef) #3

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { optsize }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!39}

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
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38}
!36 = !{ptr @build_addr, ptr @handled_component_p, i64 929}
!37 = !{ptr @build_addr, ptr @build_pointer_type, i64 928}
!38 = !{ptr @build_addr, ptr @build1_stat, i64 928}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 928}
!41 = !{i8 0, i8 2}
!42 = !{!"branch_weights", i32 928, i32 1}
!43 = !{!44, !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !{!"branch_weights", i32 1, i32 0}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!50, !50, i64 0}
!50 = !{!"int", !44, i64 0}
!51 = !{!"branch_weights", i32 929, i32 1}
!52 = !{!53, !53, i64 0}
!53 = !{!"any pointer", !44, i64 0}
!54 = !{!"tree-nested.c:handled_component_p"}
!55 = !{!"branch_weights", i32 929, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!56 = !{!"function_entry_count", i64 0}
!57 = distinct !{!57, !48}
!58 = !{!59, !53, i64 48}
!59 = !{!"cgraph_node", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !53, i64 80, !53, i64 88, !53, i64 96, !53, i64 104, !53, i64 112, !53, i64 120, !53, i64 128, !53, i64 136, !60, i64 144, !63, i64 184, !64, i64 224, !65, i64 232, !66, i64 256, !62, i64 288, !50, i64 296, !50, i64 300, !50, i64 304, !50, i64 308, !50, i64 308, !50, i64 308, !50, i64 308, !50, i64 308, !50, i64 308, !50, i64 308, !50, i64 308, !50, i64 309, !50, i64 309}
!60 = !{!"cgraph_local_info", !53, i64 0, !61, i64 8, !50, i64 32, !50, i64 32, !50, i64 32, !50, i64 32, !50, i64 32, !50, i64 32, !50, i64 32, !50, i64 32}
!61 = !{!"inline_summary", !62, i64 0, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20}
!62 = !{!"long", !44, i64 0}
!63 = !{!"cgraph_global_info", !62, i64 0, !62, i64 8, !53, i64 16, !50, i64 24, !50, i64 28, !50, i64 32, !44, i64 36}
!64 = !{!"cgraph_rtl_info", !50, i64 0}
!65 = !{!"cgraph_clone_info", !53, i64 0, !53, i64 8, !53, i64 16}
!66 = !{!"cgraph_thunk_info", !62, i64 0, !62, i64 8, !53, i64 16, !44, i64 24, !44, i64 25, !44, i64 26}
!67 = !{!68, !53, i64 176}
!68 = !{!"lang_hooks", !53, i64 0, !62, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !53, i64 80, !53, i64 88, !53, i64 96, !53, i64 104, !53, i64 112, !53, i64 120, !53, i64 128, !53, i64 136, !53, i64 144, !53, i64 152, !53, i64 160, !53, i64 168, !53, i64 176, !53, i64 184, !53, i64 192, !53, i64 200, !53, i64 208, !53, i64 216, !53, i64 224, !53, i64 232, !69, i64 240, !70, i64 248, !71, i64 256, !72, i64 272, !73, i64 432, !74, i64 560, !53, i64 584, !53, i64 592, !53, i64 600, !53, i64 608, !53, i64 616, !53, i64 624, !53, i64 632, !53, i64 640, !53, i64 648, !53, i64 656, !53, i64 664, !44, i64 672}
!69 = !{!"lang_hooks_for_tree_inlining", !53, i64 0}
!70 = !{!"lang_hooks_for_callgraph", !53, i64 0}
!71 = !{!"lang_hooks_for_tree_dump", !53, i64 0, !53, i64 8}
!72 = !{!"lang_hooks_for_decls", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !53, i64 80, !53, i64 88, !53, i64 96, !53, i64 104, !53, i64 112, !53, i64 120, !53, i64 128, !53, i64 136, !53, i64 144, !53, i64 152}
!73 = !{!"lang_hooks_for_types", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !53, i64 80, !53, i64 88, !53, i64 96, !53, i64 104, !53, i64 112, !44, i64 120}
!74 = !{!"lang_hooks_for_lto", !53, i64 0, !53, i64 8, !53, i64 16}
!75 = !{!"tree-nested.c:gimplify_all_functions"}
!76 = !{!59, !53, i64 0}
!77 = distinct !{!77, !48}
!78 = !{!"tree-nested.c:create_nesting_tree"}
!79 = !{!80, !53, i64 24}
!80 = !{!"nesting_info", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !53, i64 80, !53, i64 88, !53, i64 96, !53, i64 104, !44, i64 112, !44, i64 113, !44, i64 114}
!81 = !{!80, !53, i64 32}
!82 = !{!80, !53, i64 40}
!83 = !{!80, !53, i64 48}
!84 = !{!80, !53, i64 0}
!85 = !{!80, !53, i64 8}
!86 = !{!80, !53, i64 16}
!87 = distinct !{!87, !48}
!88 = !{!"tree-nested.c:walk_all_functions"}
!89 = distinct !{!89, !48}
!90 = !{!"tree-nested.c:convert_nonlocal_reference_stmt"}
!91 = !{!92, !53, i64 24}
!92 = !{!"walk_stmt_info", !93, i64 0, !53, i64 24, !53, i64 32, !44, i64 40, !44, i64 41, !44, i64 42, !44, i64 43, !53, i64 48}
!93 = !{!"", !53, i64 0, !53, i64 8, !53, i64 16}
!94 = !{i32 0, i32 256}
!95 = !{!92, !44, i64 40}
!96 = !{!92, !44, i64 41}
!97 = !{!80, !53, i64 56}
!98 = !{!"tree-nested.c:convert_nonlocal_reference_op"}
!99 = !{!92, !44, i64 42}
!100 = distinct !{!100, !48}
!101 = distinct !{!101, !48}
!102 = !{!"tree-nested.c:convert_local_reference_stmt"}
!103 = !{!80, !53, i64 80}
!104 = !{!"tree-nested.c:convert_local_reference_op"}
!105 = distinct !{!105, !48}
!106 = !{!"tree-nested.c:convert_nl_goto_reference"}
!107 = distinct !{!107, !48}
!108 = !{!"tree-nested.c:convert_nl_goto_receiver"}
!109 = !{i64 0, i64 8, !52, i64 8, i64 8, !52, i64 16, i64 8, !52}
!110 = !{!"tree-nested.c:convert_all_function_calls"}
!111 = !{!80, !53, i64 96}
!112 = !{!80, !53, i64 88}
!113 = distinct !{!113, !48}
!114 = distinct !{!114, !48}
!115 = distinct !{!115, !48}
!116 = !{!"tree-nested.c:finalize_nesting_tree"}
!117 = distinct !{!117, !48}
!118 = !{!"tree-nested.c:unnest_nesting_tree"}
!119 = distinct !{!119, !48}
!120 = !{!"tree-nested.c:free_nesting_tree"}
!121 = distinct !{!121, !48}
!122 = !{!"tree-nested.c:check_for_nested_with_variably_modified"}
!123 = distinct !{!123, !48}
!124 = distinct !{!124, !48}
!125 = !{!"tree-nested.c:iter_nestinfo_start"}
!126 = distinct !{!126, !48}
!127 = !{!"tree-nested.c:walk_function"}
!128 = !{!"tree-nested.c:iter_nestinfo_next"}
!129 = !{!"tree-nested.c:walk_body"}
!130 = !{!"tree-nested.c:gsi_stmt"}
!131 = !{!93, !53, i64 0}
!132 = !{!133, !53, i64 0}
!133 = !{!"gimple_seq_node_d", !53, i64 0, !53, i64 8, !53, i64 16}
!134 = !{!"tree-nested.c:gimple_code"}
!135 = !{!"tree-nested.c:gimple_goto_dest"}
!136 = !{!"tree-nested.c:convert_nonlocal_omp_clauses"}
!137 = distinct !{!137, !48}
!138 = distinct !{!138, !48}
!139 = !{!"tree-nested.c:gimple_omp_taskreg_clauses_ptr"}
!140 = !{!"tree-nested.c:get_chain_decl"}
!141 = !{!"tree-nested.c:gimple_location"}
!142 = !{!"tree-nested.c:gimple_omp_taskreg_clauses"}
!143 = !{!"tree-nested.c:gimple_omp_taskreg_set_clauses"}
!144 = !{!"tree-nested.c:gimple_omp_body"}
!145 = !{!"tree-nested.c:gimple_seq_first_stmt"}
!146 = !{!"tree-nested.c:gimple_omp_for_clauses_ptr"}
!147 = !{!"tree-nested.c:walk_gimple_omp_for"}
!148 = distinct !{!148, !48}
!149 = !{!"tree-nested.c:gimple_omp_sections_clauses_ptr"}
!150 = !{!"tree-nested.c:gimple_omp_single_clauses_ptr"}
!151 = !{!"tree-nested.c:gimple_bind_block"}
!152 = !{!"tree-nested.c:note_nonlocal_block_vlas"}
!153 = distinct !{!153, !48}
!154 = !{!"tree-nested.c:gimple_op"}
!155 = !{!"tree-nested.c:gimple_has_ops"}
!156 = !{!"tree-nested.c:gimple_ops"}
!157 = !{!62, !62, i64 0}
!158 = !{!"tree-nested.c:gimple_statement_structure"}
!159 = !{!"tree-nested.c:gss_for_code"}
!160 = !{!"tree-nested.c:get_nonlocal_debug_decl"}
!161 = distinct !{!161, !48}
!162 = !{!80, !53, i64 64}
!163 = !{!"tree-nested.c:get_frame_type"}
!164 = !{!80, !53, i64 72}
!165 = !{!"tree-nested.c:get_chain_field"}
!166 = !{!"tree-nested.c:lookup_field_for_decl"}
!167 = !{!80, !44, i64 112}
!168 = !{!"tree-nested.c:use_pointer_in_frame"}
!169 = !{!"tree-nested.c:note_nonlocal_vla_type"}
!170 = distinct !{!170, !48}
!171 = distinct !{!171, !48}
!172 = !{!"tree-nested.c:create_tmp_var_for"}
!173 = !{!"tree-nested.c:gimple_seq_first"}
!174 = !{!175, !53, i64 0}
!175 = !{!"gimple_seq_d", !53, i64 0, !53, i64 8, !53, i64 16}
!176 = !{!"tree-nested.c:gimple_omp_for_pre_body"}
!177 = !{!"tree-nested.c:gsi_last"}
!178 = !{!93, !53, i64 8}
!179 = !{!93, !53, i64 16}
!180 = !{!"tree-nested.c:gimple_omp_for_collapse"}
!181 = !{!"tree-nested.c:gimple_omp_for_index_ptr"}
!182 = !{!"tree-nested.c:gimple_omp_for_initial_ptr"}
!183 = !{!"tree-nested.c:gimple_omp_for_final_ptr"}
!184 = !{!"tree-nested.c:gimple_omp_for_incr"}
!185 = !{!186, !53, i64 32}
!186 = !{!"gimple_omp_for_iter", !50, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32}
!187 = !{!"tree-nested.c:gimple_seq_empty_p"}
!188 = !{!"tree-nested.c:gimple_omp_for_set_pre_body"}
!189 = !{!"tree-nested.c:gimple_seq_last"}
!190 = !{!175, !53, i64 8}
!191 = !{!"tree-nested.c:gimple_bb"}
!192 = !{!"tree-nested.c:get_frame_field"}
!193 = distinct !{!193, !48}
!194 = !{!"tree-nested.c:init_tmp_var"}
!195 = !{!"tree-nested.c:save_tmp_var"}
!196 = !{!"tree-nested.c:gsi_gimplify_val"}
!197 = !{!"tree-nested.c:gsi_end_p"}
!198 = !{!"tree-nested.c:gimple_set_location"}
!199 = !{!"tree-nested.c:convert_local_omp_clauses"}
!200 = distinct !{!200, !48}
!201 = distinct !{!201, !48}
!202 = !{!"tree-nested.c:get_local_debug_decl"}
!203 = !{!"tree-nested.c:get_nl_goto_field"}
!204 = !{!80, !53, i64 104}
!205 = !{!68, !53, i64 448}
!206 = !{!"tree-nested.c:gimple_label_label"}
!207 = !{!"tree-nested.c:gsi_prev"}
!208 = !{!133, !53, i64 8}
!209 = !{!"tree-nested.c:convert_tramp_reference_stmt"}
!210 = distinct !{!210, !48}
!211 = !{!"tree-nested.c:convert_tramp_reference_op"}
!212 = distinct !{!212, !48}
!213 = !{!"tree-nested.c:convert_gimple_call"}
!214 = !{!80, !44, i64 114}
!215 = distinct !{!215, !48}
!216 = distinct !{!216, !48}
!217 = !{!"tree-nested.c:gimple_call_num_args"}
!218 = !{!"tree-nested.c:gimple_call_arg_ptr"}
!219 = !{!"tree-nested.c:gimple_num_ops"}
!220 = !{!"tree-nested.c:gimple_op_ptr"}
!221 = !{!"tree-nested.c:lookup_tramp_for_decl"}
!222 = !{!80, !44, i64 113}
!223 = !{!"tree-nested.c:init_tmp_var_with_call"}
!224 = !{!"tree-nested.c:get_trampoline_type"}
!225 = !{!"tree-nested.c:gimple_call_return_type"}
!226 = !{!"tree-nested.c:gimple_call_set_lhs"}
!227 = !{!"tree-nested.c:gimple_call_fn"}
!228 = !{!"tree-nested.c:gimple_set_op"}
!229 = !{!"tree-nested.c:gimple_call_chain"}
!230 = !{!"tree-nested.c:gimple_call_fndecl"}
!231 = !{!"tree-nested.c:gimple_call_set_chain"}
!232 = !{!"tree-nested.c:get_static_chain"}
!233 = distinct !{!233, !48}
!234 = !{!"tree-nested.c:finalize_nesting_tree_1"}
!235 = distinct !{!235, !48}
!236 = distinct !{!236, !48}
!237 = distinct !{!237, !48}
!238 = !{!239, !53, i64 56}
!239 = !{!"function", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !53, i64 80, !53, i64 88, !53, i64 96, !50, i64 104, !50, i64 108, !50, i64 112, !50, i64 116, !50, i64 120, !50, i64 124, !53, i64 128, !50, i64 136, !50, i64 137, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 138, !50, i64 139, !50, i64 139, !50, i64 139, !50, i64 139, !50, i64 139, !50, i64 139, !50, i64 139}
!240 = !{!239, !53, i64 64}
!241 = distinct !{!241, !48}
!242 = !{!243, !53, i64 56}
!243 = !{!"nesting_copy_body_data", !244, i64 0, !53, i64 152}
!244 = !{!"copy_body_data", !53, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40, !53, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !50, i64 80, !53, i64 88, !50, i64 96, !44, i64 100, !44, i64 101, !44, i64 102, !44, i64 103, !50, i64 104, !53, i64 112, !53, i64 120, !53, i64 128, !53, i64 136, !53, i64 144}
!245 = !{!243, !53, i64 48}
!246 = !{!243, !53, i64 152}
!247 = distinct !{!247, !48}
!248 = !{!243, !53, i64 0}
!249 = !{!243, !53, i64 8}
!250 = !{!243, !53, i64 32}
!251 = distinct !{!251, !48}
!252 = distinct !{!252, !48}
!253 = !{!"tree-nested.c:gimple_assign_set_rhs1"}
!254 = !{!"tree-nested.c:gimple_bind_body"}
!255 = !{!"tree-nested.c:gimple_bind_set_body"}
!256 = !{!"tree-nested.c:remap_vla_decls"}
!257 = distinct !{!257, !48}
!258 = distinct !{!258, !48}
!259 = distinct !{!259, !48}
!260 = distinct !{!260, !48}
!261 = distinct !{!261, !48}
!262 = !{!"tree-nested.c:nesting_copy_decl"}
!263 = !{!"tree-nested.c:contains_remapped_vars"}
!264 = !{!"tree-nested.c:unnest_nesting_tree_1"}
!265 = !{!59, !53, i64 40}
