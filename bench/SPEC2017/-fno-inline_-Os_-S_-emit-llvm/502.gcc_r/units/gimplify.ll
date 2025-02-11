; ModuleID = 'gimplify.c'
source_filename = "gimplify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gimplify_ctx = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.tree_stmt_iterator = type { ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.gimplify_omp_ctx = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.gimple_statement_bind = type { %struct.gimple_statement_base, ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.splay_tree_node_s = type { i64, i64, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.tree_statement_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_statement_list_node = type { ptr, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.tree_constructor = type { %struct.tree_common, ptr }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.tree_vec = type { %struct.tree_common, i32, [1 x ptr] }
%struct.tree_omp_clause = type { %struct.tree_common, i32, i32, %union.omp_clause_subcode, ptr, ptr, [1 x ptr] }
%union.omp_clause_subcode = type { i32 }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.gimple_statement_omp_atomic_load = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_temp_hash_elt = type { ptr, ptr }
%struct.gimplify_init_ctor_preeval_data = type { ptr, i32 }
%struct.processor_costs = type { i32, i32, i32, i32, [5 x i32], i32, [5 x i32], i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, [3 x i32], [3 x i32], i32, [2 x i32], [2 x i32], i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x %struct.stringop_algs], [2 x %struct.stringop_algs], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stringop_algs = type { i32, [4 x %struct.stringop_strategy] }
%struct.stringop_strategy = type { i32, i32 }
%struct.gimple_statement_wce = type { %struct.gimple_statement_base, ptr }
%struct.gimple_statement_omp_for = type { %struct.gimple_statement_omp, ptr, i64, ptr, ptr }
%struct.gimple_statement_omp = type { %struct.gimple_statement_base, ptr }
%struct.gimple_omp_for_iter = type { i32, ptr, ptr, ptr, ptr }

@gimplify_ctxp = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [11 x i8] c"gimplify.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@libiberty_optr = external local_unnamed_addr global ptr, align 8
@libiberty_len = external local_unnamed_addr global i64, align 8
@libiberty_nptr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%s.%lu\00", align 1
@tmp_var_id_num = internal global i32 0, align 4
@input_location = external local_unnamed_addr global i32, align 4
@current_function_decl = external local_unnamed_addr global ptr, align 8
@gimplify_omp_ctxp = internal unnamed_addr global ptr null, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.4 = private unnamed_addr constant [7 x i8] c"retval\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"vol\00", align 1
@timevar_enable = external local_unnamed_addr global i8, align 1
@nonlocal_vlas = internal unnamed_addr global ptr null, align 8
@flag_instrument_function_entry_exit = external local_unnamed_addr global i32, align 4
@implicit_built_in_decls = external local_unnamed_addr global [721 x ptr], align 16
@gt_ggc_r_gt_gimplify_h = dso_local local_unnamed_addr constant [1 x %struct.ggc_root_tab] zeroinitializer, align 16
@gt_pch_rs_gt_gimplify_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @tmp_var_id_num, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16
@optimize = external local_unnamed_addr global i32, align 4
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str.6 = private unnamed_addr constant [6 x i8] c"iftmp\00", align 1
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"too few arguments to function %<va_start%>\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"using result of function returning %<void%>\00", align 1
@flag_merge_constants = external local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@ix86_cost = external local_unnamed_addr global ptr, align 8
@flag_stack_check = external local_unnamed_addr global i32, align 4
@built_in_decls = external local_unnamed_addr global [721 x ptr], align 16
@.str.10 = private unnamed_addr constant [12 x i8] c"saved_stack\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"invalid lvalue in asm output %d\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"impossible constraint in %<asm%>\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"non-memory input %d must stay in memory\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"memory input %d is not directly addressable\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@global_dc = external local_unnamed_addr global ptr, align 8
@.str.17 = private unnamed_addr constant [8 x i8] c"cleanup\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"%qE not specified in enclosing parallel\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"enclosing parallel\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"firstprivate\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"lastprivate\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"reduction\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"%s variable %qE is private in outer context\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"iteration variable %qE should be private\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"iteration variable %qE should not be firstprivate\00", align 1
@.str.26 = private unnamed_addr constant [47 x i8] c"iteration variable %qE should not be reduction\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @mark_addressable(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %0) #20, !range !5
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %7) #20, !range !5
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %4, !llvm.loop !9

10:                                               ; preds = %4, %1
  %11 = phi ptr [ %0, %1 ], [ %7, %4 ]
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %16 [
    i16 32, label %14
    i16 34, label %14
    i16 36, label %14
  ]

14:                                               ; preds = %10, %10, %10
  %15 = or i64 %12, 262144
  store i64 %15, ptr %11, align 8
  br label %16

16:                                               ; preds = %10, %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #1 {
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
  ]

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @push_gimplify_context(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %2, i8 0, i64 64, i1 false)
  %3 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  store ptr %3, ptr %0, align 8, !tbaa !13
  store ptr %0, ptr @gimplify_ctxp, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pop_gimplify_context(ptr noundef %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimplify_ctx, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef nonnull %6) #20
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 220, ptr noundef nonnull @.str.1) #21
  br label %12

12:                                               ; preds = %4, %8, %11
  %13 = getelementptr inbounds %struct.gimplify_ctx, ptr %2, i64 0, i32 1
  tail call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull %13) #20
  %14 = load ptr, ptr %2, align 8, !tbaa !13
  store ptr %14, ptr @gimplify_ctxp, align 8, !tbaa !11
  %15 = icmp eq ptr %0, null
  %16 = getelementptr inbounds %struct.gimplify_ctx, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !17
  br i1 %15, label %19, label %18

18:                                               ; preds = %12
  tail call void @declare_vars(ptr noundef %17, ptr noundef nonnull %0, i8 noundef zeroext 0) #20
  br label %20

19:                                               ; preds = %12
  tail call void @record_vars(ptr noundef %17) #21
  br label %20

20:                                               ; preds = %19, %18
  %21 = getelementptr inbounds %struct.gimplify_ctx, ptr %2, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !18
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @htab_delete(ptr noundef nonnull %22) #21
  br label %25

25:                                               ; preds = %24, %20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_length(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load i32, ptr %0, align 8, !tbaa !19
  ret i32 %2
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_gimple_heap_free(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #20
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @declare_vars(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) local_unnamed_addr #4 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %32, label %5

5:                                                ; preds = %3
  %6 = tail call fastcc i32 @gimple_code(ptr noundef %1) #20, !range !21
  %7 = icmp eq i32 %6, 10
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 671, ptr noundef nonnull @.str.1) #21
  br label %9

9:                                                ; preds = %5, %8
  %10 = tail call ptr @nreverse(ptr noundef nonnull %0) #21
  %11 = tail call fastcc ptr @gimple_bind_block(ptr noundef %1) #20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = load i64, ptr %11, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 4
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 676, ptr noundef nonnull @.str.1) #21
  br label %18

18:                                               ; preds = %13, %17
  %19 = icmp eq i8 %2, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %9, %18
  %21 = tail call fastcc ptr @gimple_bind_vars(ptr noundef %1) #20
  %22 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 1
  store ptr %21, ptr %22, align 8, !tbaa !6
  tail call fastcc void @gimple_bind_set_vars(ptr noundef %1, ptr noundef %10) #20
  br label %32

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tree_block, ptr %11, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call ptr @chainon(ptr noundef nonnull %25, ptr noundef %10) #21
  store ptr %28, ptr %24, align 8, !tbaa !6
  br label %32

29:                                               ; preds = %23
  %30 = tail call fastcc ptr @gimple_bind_vars(ptr noundef %1) #20
  %31 = tail call ptr @chainon(ptr noundef %30, ptr noundef %10) #21
  tail call fastcc void @gimple_bind_set_vars(ptr noundef %1, ptr noundef %31) #20
  store ptr %10, ptr %24, align 8, !tbaa !6
  br label %32

32:                                               ; preds = %20, %29, %27, %3
  ret void
}

; Function Attrs: optsize
declare void @record_vars(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @gimple_current_bind_expr() local_unnamed_addr #8 {
  %1 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %2 = getelementptr inbounds %struct.gimplify_ctx, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = tail call fastcc ptr @VEC_gimple_base_last(ptr noundef %3) #20
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_gimple_base_last(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load i32, ptr %0, align 8, !tbaa !19
  %3 = add i32 %2, -1
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @gimple_bind_expr_stack() local_unnamed_addr #8 {
  %1 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %2 = getelementptr inbounds %struct.gimplify_ctx, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @append_to_statement_list(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65536
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call fastcc void @append_to_statement_list_1(ptr noundef nonnull %0, ptr noundef %1) #20
  br label %9

9:                                                ; preds = %8, %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @append_to_statement_list_1(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #4 {
  %3 = alloca %struct.tree_stmt_iterator, align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 147
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store ptr %0, ptr %1, align 8, !tbaa !11
  br label %19

11:                                               ; preds = %6
  %12 = tail call ptr @alloc_stmt_list() #21
  store ptr %12, ptr %1, align 8, !tbaa !11
  br label %13

13:                                               ; preds = %11, %2
  %14 = phi ptr [ %4, %2 ], [ %12, %11 ]
  %15 = tail call fastcc { ptr, ptr } @tsi_last(ptr noundef %14) #20
  %16 = extractvalue { ptr, ptr } %15, 0
  %17 = extractvalue { ptr, ptr } %15, 1
  store ptr %16, ptr %3, align 8, !tbaa.struct !22
  %18 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %17, ptr %18, align 8, !tbaa.struct !23
  call void @tsi_link_after(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 4) #21
  br label %19

19:                                               ; preds = %13, %10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @append_to_statement_list_force(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call fastcc void @append_to_statement_list_1(ptr noundef nonnull %0, ptr noundef %1) #20
  br label %5

5:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimplify_and_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !11
  %4 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %3, ptr noundef %1) #20, !range !5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @gimplify_stmt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = load ptr, ptr %1, align 8, !tbaa !11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call ptr @gimple_seq_alloc() #21
  store ptr %6, ptr %1, align 8, !tbaa !11
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %6, %5 ], [ %3, %2 ]
  %9 = tail call fastcc ptr @gimple_seq_last(ptr noundef %8) #20
  %10 = tail call i32 @gimplify_expr(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull @is_gimple_stmt, i32 noundef 0) #20
  %11 = load ptr, ptr %1, align 8, !tbaa !11
  %12 = tail call fastcc ptr @gimple_seq_last(ptr noundef %11) #20
  %13 = icmp ne ptr %9, %12
  %14 = zext i1 %13 to i8
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @create_tmp_var_name(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  store ptr %0, ptr @libiberty_optr, align 8, !tbaa !11
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #20
  %5 = add i64 %4, 1
  store i64 %5, ptr @libiberty_len, align 8, !tbaa !24
  %6 = alloca i8, i64 %5, align 16
  store ptr %6, ptr @libiberty_nptr, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %6, ptr nonnull align 1 %0, i64 %5, i1 false)
  %7 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #20
  %8 = trunc i64 %7 to i32
  call fastcc void @remove_suffix(ptr noundef nonnull %6, i32 noundef %8) #20
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi ptr [ %6, %3 ], [ null, %1 ]
  %11 = icmp eq ptr %10, null
  %12 = select i1 %11, ptr @.str.2, ptr %10
  %13 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #20
  %14 = add i64 %13, 32
  %15 = alloca i8, i64 %14, align 16
  %16 = load i32, ptr @tmp_var_id_num, align 4, !tbaa !26
  %17 = add i32 %16, 1
  store i32 %17, ptr @tmp_var_id_num, align 4, !tbaa !26
  %18 = zext i32 %16 to i64
  %19 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %12, i64 noundef %18) #20
  %20 = call ptr @get_identifier(ptr noundef nonnull %15) #21
  ret ptr %20
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @remove_suffix(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #11 {
  %3 = icmp sgt i32 %1, 2
  br i1 %3, label %4, label %21

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = add nsw i32 %1, -3
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 5)
  %8 = add nuw nsw i32 %7, 3
  %9 = zext nneg i32 %8 to i64
  br label %13

10:                                               ; preds = %13
  %11 = add nuw nsw i64 %14, 1
  %12 = icmp eq i64 %11, %9
  br i1 %12, label %21, label %13, !llvm.loop !27

13:                                               ; preds = %4, %10
  %14 = phi i64 [ 2, %4 ], [ %11, %10 ]
  %15 = sub nsw i64 %5, %14
  %16 = getelementptr inbounds i8, ptr %0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !6
  %18 = icmp eq i8 %17, 46
  br i1 %18, label %19, label %10

19:                                               ; preds = %13
  %20 = getelementptr inbounds i8, ptr %0, i64 %15
  store i8 0, ptr %20, align 1, !tbaa !6
  br label %21

21:                                               ; preds = %10, %2, %19
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: optsize
declare ptr @get_identifier(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @create_tmp_var_raw(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = tail call ptr @build_qualified_type(ptr noundef %0, i32 noundef 0) #21
  %4 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 4
  store ptr %5, ptr %6, align 8, !tbaa !6
  %7 = load i32, ptr @input_location, align 4, !tbaa !26
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call ptr @create_tmp_var_name(ptr noundef nonnull %1) #20
  br label %11

11:                                               ; preds = %2, %9
  %12 = phi ptr [ %10, %9 ], [ null, %2 ]
  %13 = tail call ptr @build_decl_stat(i32 noundef %7, i32 noundef 32, ptr noundef %12, ptr noundef nonnull %0) #21
  %14 = getelementptr inbounds %struct.tree_decl_common, ptr %13, i64 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = load i64, ptr %13, align 8
  %17 = and i64 %15, -33559553
  %18 = or disjoint i64 %17, 5120
  store i64 %18, ptr %14, align 8
  %19 = and i64 %16, -84934657
  %20 = or disjoint i64 %19, 16777216
  store i64 %20, ptr %13, align 8
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @build_qualified_type(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @create_tmp_var(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 262144
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %6, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 504, ptr noundef nonnull @.str.1) #21
  br label %11

11:                                               ; preds = %6, %10
  %12 = tail call ptr @create_tmp_var_raw(ptr noundef nonnull %0, ptr noundef %1) #20
  tail call void @gimple_add_tmp_var(ptr noundef %12) #20
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimple_add_tmp_var(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 256
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 727, ptr noundef nonnull @.str.1) #21
  br label %11

11:                                               ; preds = %5, %10
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = tail call i32 @host_integerp(ptr noundef %13, i32 noundef 1) #21
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call fastcc void @force_constant_size(ptr noundef nonnull %0) #20
  br label %17

17:                                               ; preds = %16, %11
  %18 = load ptr, ptr @current_function_decl, align 8, !tbaa !11
  %19 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  store ptr %18, ptr %19, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %21 = load i32, ptr %20, align 8
  %22 = or i32 %21, 256
  store i32 %22, ptr %20, align 8
  %23 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %39, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.gimplify_ctx, ptr %23, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !17
  store ptr %27, ptr %2, align 8, !tbaa !6
  store ptr %0, ptr %26, align 8, !tbaa !17
  %28 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %46, label %30

30:                                               ; preds = %25, %35
  %31 = phi ptr [ %36, %35 ], [ %28, %25 ]
  %32 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %31, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !28
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load ptr, ptr %31, align 8, !tbaa !30
  %37 = icmp eq ptr %36, null
  br i1 %37, label %46, label %30, !llvm.loop !31

38:                                               ; preds = %30
  tail call fastcc void @omp_add_variable(ptr noundef nonnull %31, ptr noundef %0, i32 noundef 129) #20
  br label %46

39:                                               ; preds = %17
  %40 = load ptr, ptr @cfun, align 8, !tbaa !11
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  tail call void @record_vars(ptr noundef nonnull %0) #21
  br label %46

43:                                               ; preds = %39
  %44 = tail call ptr @gimple_body(ptr noundef %18) #21
  %45 = tail call fastcc ptr @gimple_seq_first_stmt(ptr noundef %44) #20
  tail call void @declare_vars(ptr noundef nonnull %0, ptr noundef %45, i8 noundef zeroext 0) #20
  br label %46

46:                                               ; preds = %35, %38, %42, %43, %25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_formal_tmp_var(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = tail call fastcc ptr @internal_get_tmp_var(ptr noundef %0, ptr noundef %1, ptr noundef null, i8 noundef zeroext 1) #20
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @internal_get_tmp_var(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #4 {
  %5 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8, !tbaa !11
  %6 = call i32 @gimplify_expr(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_reg_rhs_or_call, i32 noundef 1) #20
  %7 = load ptr, ptr %5, align 8, !tbaa !11
  %8 = call fastcc ptr @lookup_tmp_var(ptr noundef %7, i8 noundef zeroext %3) #20
  %9 = icmp eq i8 %3, 0
  %10 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  br i1 %9, label %22, label %12

12:                                               ; preds = %4
  %13 = load i64, ptr %11, align 8
  %14 = trunc i64 %13 to i32
  %15 = and i32 %14, 65535
  %16 = add nsw i32 %15, -13
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.tree_decl_common, ptr %8, i64 0, i32 2
  %20 = load i64, ptr %19, align 8
  %21 = or i64 %20, 134217728
  store i64 %21, ptr %19, align 8
  br label %22

22:                                               ; preds = %4, %12, %18
  %23 = load ptr, ptr %5, align 8, !tbaa !11
  %24 = call ptr @unshare_expr(ptr noundef %23) #20
  %25 = call ptr @build2_stat(i32 noundef 54, ptr noundef %11, ptr noundef nonnull %8, ptr noundef %24) #21
  %26 = load ptr, ptr %5, align 8, !tbaa !11
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 65535
  %29 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !26
  %31 = add i32 %30, -4
  %32 = icmp ult i32 %31, 7
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.tree_exp, ptr %26, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !6
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %22, %33
  %38 = load i32, ptr @input_location, align 4, !tbaa !26
  br label %39

39:                                               ; preds = %33, %37
  %40 = phi i32 [ %38, %37 ], [ %35, %33 ]
  %41 = getelementptr inbounds %struct.tree_exp, ptr %25, i64 0, i32 1
  store i32 %40, ptr %41, align 8, !tbaa !6
  call void @gimplify_and_add(ptr noundef nonnull %25, ptr noundef %1) #20
  call void @ggc_free(ptr noundef nonnull %25) #21
  %42 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %43 = getelementptr inbounds %struct.gimplify_ctx, ptr %42, i64 0, i32 10
  %44 = load i8, ptr %43, align 1, !tbaa !32
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %39
  %47 = load ptr, ptr %1, align 8, !tbaa !11
  %48 = call fastcc ptr @gimple_seq_last_stmt(ptr noundef %47) #20
  %49 = call ptr @gimple_get_lhs(ptr noundef %48) #21
  br label %50

50:                                               ; preds = %46, %39
  %51 = phi ptr [ %49, %46 ], [ %8, %39 ]
  ret ptr %51
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_initialized_tmp_var(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 {
  %4 = tail call fastcc ptr @internal_get_tmp_var(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0) #20
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @nreverse(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bind_block(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bind_vars(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_bind_set_vars(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare ptr @chainon(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @force_constant_size(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 32
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 712, ptr noundef nonnull @.str.1) #21
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = tail call i64 @max_int_size_in_bytes(ptr noundef %8) #21
  %10 = icmp sgt i64 %9, -1
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 716, ptr noundef nonnull @.str.1) #21
  br label %12

12:                                               ; preds = %6, %11
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = tail call ptr @build_int_cst(ptr noundef %16, i64 noundef %9) #21
  store ptr %17, ptr %13, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = shl nsw i64 %9, 3
  %23 = tail call ptr @build_int_cst(ptr noundef %21, i64 noundef %22) #21
  store ptr %23, ptr %18, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @omp_add_variable(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = load ptr, ptr @global_trees, align 16, !tbaa !11
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %122, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = icmp eq ptr %8, %4
  br i1 %9, label %122, label %10

10:                                               ; preds = %6
  %11 = load i64, ptr %8, align 8
  %12 = and i64 %11, 262144
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 2048
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14, %10
  %20 = or i32 %2, 1
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi i32 [ %20, %19 ], [ %2, %14 ]
  %23 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !33
  %25 = ptrtoint ptr %1 to i64
  %26 = tail call ptr @splay_tree_lookup(ptr noundef %24, i64 noundef %25) #21
  %27 = icmp eq ptr %26, null
  br i1 %27, label %46, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.splay_tree_node_s, ptr %26, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !34
  %31 = and i32 %22, 252
  %32 = zext nneg i32 %31 to i64
  %33 = and i64 %30, %32
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5383, ptr noundef nonnull @.str.1) #21
  %36 = load i64, ptr %29, align 8, !tbaa !34
  br label %37

37:                                               ; preds = %28, %35
  %38 = phi i64 [ %30, %28 ], [ %36, %35 ]
  %39 = trunc i64 %38 to i32
  %40 = or i32 %22, %39
  %41 = and i32 %40, 252
  %42 = icmp eq i32 %41, 48
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5388, ptr noundef nonnull @.str.1) #21
  br label %44

44:                                               ; preds = %37, %43
  %45 = zext i32 %40 to i64
  store i64 %45, ptr %29, align 8, !tbaa !34
  br label %122

46:                                               ; preds = %21
  %47 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !6
  %49 = icmp eq ptr %48, null
  br i1 %49, label %94, label %50

50:                                               ; preds = %46
  %51 = load i64, ptr %48, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 23
  br i1 %53, label %94, label %54

54:                                               ; preds = %50
  %55 = and i32 %22, 128
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %54
  %58 = and i32 %22, 8
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %59, i32 16, i32 8
  %61 = and i32 %22, 1
  %62 = or disjoint i32 %60, %61
  %63 = tail call ptr @decl_value_expr_lookup(ptr noundef nonnull %1) #21
  %64 = load i64, ptr %63, align 8
  %65 = and i64 %64, 65535
  %66 = icmp eq i64 %65, 47
  br i1 %66, label %68, label %67

67:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5407, ptr noundef nonnull @.str.1) #21
  br label %68

68:                                               ; preds = %57, %67
  %69 = getelementptr inbounds %struct.tree_exp, ptr %63, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !6
  %71 = load i64, ptr %70, align 8
  %72 = and i64 %71, 65535
  %73 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !26
  %75 = icmp eq i32 %74, 3
  br i1 %75, label %77, label %76

76:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5409, ptr noundef nonnull @.str.1) #21
  br label %77

77:                                               ; preds = %68, %76
  tail call fastcc void @omp_add_variable(ptr noundef nonnull %0, ptr noundef nonnull %70, i32 noundef %62) #20
  br label %78

78:                                               ; preds = %77, %54
  %79 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 4
  %80 = load ptr, ptr %79, align 8, !tbaa !6
  tail call void @omp_firstprivatize_variable(ptr noundef nonnull %0, ptr noundef %80) #20
  %81 = load ptr, ptr %47, align 8, !tbaa !6
  tail call void @omp_firstprivatize_variable(ptr noundef nonnull %0, ptr noundef %81) #20
  %82 = load ptr, ptr %7, align 8, !tbaa !6
  tail call fastcc void @omp_firstprivatize_type_sizes(ptr noundef nonnull %0, ptr noundef %82) #20
  %83 = and i32 %22, 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %78
  %86 = and i32 %22, 3
  %87 = or disjoint i32 %86, 264
  br label %117

88:                                               ; preds = %78
  br i1 %56, label %89, label %117

89:                                               ; preds = %88
  %90 = load ptr, ptr %7, align 8, !tbaa !6
  %91 = getelementptr inbounds %struct.tree_type, ptr %90, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !6
  %93 = tail call fastcc zeroext i8 @omp_notice_variable(ptr noundef nonnull %0, ptr noundef %92) #20
  br label %117

94:                                               ; preds = %50, %46
  %95 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 10), align 8, !tbaa !36
  %96 = tail call zeroext i8 %95(ptr noundef nonnull %1) #21
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %117, label %98

98:                                               ; preds = %94
  %99 = and i32 %22, 128
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5438, ptr noundef nonnull @.str.1) #21
  br label %102

102:                                              ; preds = %98, %101
  %103 = load ptr, ptr %7, align 8, !tbaa !6
  tail call fastcc void @omp_firstprivatize_type_sizes(ptr noundef nonnull %0, ptr noundef %103) #20
  %104 = and i32 %22, 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %102
  %107 = load ptr, ptr %7, align 8, !tbaa !6
  %108 = getelementptr inbounds %struct.tree_common, ptr %107, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !6
  %110 = getelementptr inbounds %struct.tree_type, ptr %109, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !6
  %112 = load i64, ptr %111, align 8
  %113 = and i64 %112, 65535
  %114 = icmp eq i64 %113, 23
  br i1 %114, label %117, label %115

115:                                              ; preds = %106
  %116 = tail call fastcc zeroext i8 @omp_notice_variable(ptr noundef nonnull %0, ptr noundef nonnull %111) #20
  br label %117

117:                                              ; preds = %94, %106, %115, %102, %85, %89, %88
  %118 = phi i32 [ %87, %85 ], [ %22, %88 ], [ %22, %89 ], [ %22, %115 ], [ %22, %106 ], [ %22, %102 ], [ %22, %94 ]
  %119 = load ptr, ptr %23, align 8, !tbaa !33
  %120 = zext i32 %118 to i64
  %121 = tail call ptr @splay_tree_insert(ptr noundef %119, i64 noundef %25, i64 noundef %120) #21
  br label %122

122:                                              ; preds = %3, %6, %117, %44
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_body(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_seq_first_stmt(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = tail call fastcc ptr @gimple_seq_first(ptr noundef %0) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !44
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @annotate_all_with_location(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %4 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %0) #20, !range !5
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #20
  %7 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !5
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6, %9
  %10 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  tail call fastcc void @annotate_one_with_location(ptr noundef %10, i32 noundef %1) #20
  call fastcc void @gsi_next(ptr noundef nonnull %3) #20
  %11 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !5
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %9, label %13, !llvm.loop !46

13:                                               ; preds = %9, %6, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !47
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #14 {
  %3 = tail call fastcc ptr @gimple_seq_first(ptr noundef %1) #20
  store ptr %3, ptr %0, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !51
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !44
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #20
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @annotate_one_with_location(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #15 {
  %3 = tail call fastcc zeroext i8 @gimple_has_location(ptr noundef %0) #20, !range !5
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = tail call fastcc zeroext i8 @gimple_do_not_emit_location_p(ptr noundef %0) #20, !range !5
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = tail call fastcc zeroext i8 @should_carry_location_p(ptr noundef %0) #20, !range !5
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call fastcc void @gimple_set_location(ptr noundef %0, i32 noundef %1) #20
  br label %12

12:                                               ; preds = %11, %8, %5, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #14 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  store ptr %4, ptr %0, align 8, !tbaa !49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @unshare_expr(ptr noundef %0) local_unnamed_addr #4 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !11
  %3 = call ptr @walk_tree_1(ptr noundef nonnull %2, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #21
  %4 = load ptr, ptr %2, align 8, !tbaa !11
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @mostly_copy_tree_r(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !26
  %9 = freeze i32 %8
  %10 = add i32 %9, -1
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = trunc i64 %5 to i16
  switch i16 %13, label %16 [
    i16 120, label %14
    i16 55, label %14
    i16 4, label %14
    i16 58, label %15
  ]

14:                                               ; preds = %3, %12, %12, %12
  store i32 0, ptr %1, align 4, !tbaa !26
  br label %18

15:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 870, ptr noundef nonnull @.str.1) #21
  br label %16

16:                                               ; preds = %12, %15
  %17 = tail call ptr @copy_tree_r(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #21
  br label %18

18:                                               ; preds = %16, %14
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @voidify_wrapper_expr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !11
  %4 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %99, label %7

7:                                                ; preds = %2
  %8 = load i64, ptr %5, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 19
  br i1 %10, label %99, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %3, align 8, !tbaa !11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %79, label %14

14:                                               ; preds = %11, %61
  %15 = phi ptr [ %63, %61 ], [ %12, %11 ]
  %16 = phi ptr [ %62, %61 ], [ %3, %11 ]
  %17 = load i64, ptr %15, align 8
  %18 = trunc i64 %17 to i16
  switch i16 %18, label %65 [
    i16 58, label %22
    i16 61, label %29
    i16 131, label %29
    i16 130, label %29
    i16 147, label %36
    i16 52, label %19
  ]

19:                                               ; preds = %14
  %20 = and i64 %17, 65535
  %21 = icmp eq i64 %20, 52
  br i1 %21, label %47, label %61

22:                                               ; preds = %14
  %23 = or i64 %17, 65536
  store i64 %23, ptr %15, align 8
  %24 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  %25 = load ptr, ptr %16, align 8, !tbaa !11
  %26 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  store ptr %24, ptr %26, align 8, !tbaa !6
  %27 = load ptr, ptr %16, align 8, !tbaa !11
  %28 = getelementptr inbounds %struct.tree_exp, ptr %27, i64 1
  br label %61

29:                                               ; preds = %14, %14, %14
  %30 = or i64 %17, 65536
  store i64 %30, ptr %15, align 8
  %31 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  %32 = load ptr, ptr %16, align 8, !tbaa !11
  %33 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  store ptr %31, ptr %33, align 8, !tbaa !6
  %34 = load ptr, ptr %16, align 8, !tbaa !11
  %35 = getelementptr inbounds %struct.tree_exp, ptr %34, i64 0, i32 3
  br label %61

36:                                               ; preds = %14
  %37 = tail call fastcc { ptr, ptr } @tsi_last(ptr noundef nonnull %15) #20
  %38 = extractvalue { ptr, ptr } %37, 0
  %39 = or i64 %17, 65536
  store i64 %39, ptr %15, align 8
  %40 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  %41 = load ptr, ptr %16, align 8, !tbaa !11
  %42 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  store ptr %40, ptr %42, align 8, !tbaa !6
  %43 = tail call fastcc zeroext i8 @tsi_end_p(ptr %38) #20
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %99

45:                                               ; preds = %36
  %46 = tail call fastcc ptr @tsi_stmt_ptr(ptr %38) #20
  br label %61

47:                                               ; preds = %19, %47
  %48 = phi i64 [ %58, %47 ], [ %17, %19 ]
  %49 = phi ptr [ %57, %47 ], [ %15, %19 ]
  %50 = phi ptr [ %56, %47 ], [ %16, %19 ]
  %51 = or i64 %48, 65536
  store i64 %51, ptr %49, align 8
  %52 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  %53 = load ptr, ptr %50, align 8, !tbaa !11
  %54 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  store ptr %52, ptr %54, align 8, !tbaa !6
  %55 = load ptr, ptr %50, align 8, !tbaa !11
  %56 = getelementptr inbounds %struct.tree_exp, ptr %55, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !11
  %58 = load i64, ptr %57, align 8
  %59 = and i64 %58, 65535
  %60 = icmp eq i64 %59, 52
  br i1 %60, label %47, label %61, !llvm.loop !54

61:                                               ; preds = %47, %19, %45, %29, %22
  %62 = phi ptr [ %35, %29 ], [ %28, %22 ], [ %46, %45 ], [ %16, %19 ], [ %56, %47 ]
  %63 = load ptr, ptr %62, align 8, !tbaa !11
  %64 = icmp eq ptr %63, null
  br i1 %64, label %79, label %14, !llvm.loop !55

65:                                               ; preds = %14
  %66 = and i64 %17, 65535
  %67 = icmp eq i64 %66, 116
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !6
  %71 = load i64, ptr %70, align 8
  %72 = and i64 %71, 65535
  %73 = icmp eq i64 %72, 19
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !6
  %77 = tail call i32 @integer_zerop(ptr noundef %76) #21
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %61, %11, %74, %68, %65
  %80 = phi ptr [ %16, %74 ], [ %16, %68 ], [ %16, %65 ], [ %3, %11 ], [ %62, %61 ]
  %81 = icmp eq ptr %1, null
  br i1 %81, label %92, label %82

82:                                               ; preds = %79
  %83 = load i64, ptr %1, align 8
  %84 = trunc i64 %83 to i32
  %85 = and i32 %84, 65535
  %86 = add nsw i32 %85, -53
  %87 = icmp ult i32 %86, 2
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1038, ptr noundef nonnull @.str.1) #21
  br label %89

89:                                               ; preds = %82, %88
  %90 = load ptr, ptr %80, align 8, !tbaa !11
  %91 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  store ptr %90, ptr %91, align 8, !tbaa !6
  br label %96

92:                                               ; preds = %79
  %93 = tail call ptr @create_tmp_var(ptr noundef nonnull %5, ptr noundef nonnull @.str.4) #20
  %94 = load ptr, ptr %80, align 8, !tbaa !11
  %95 = tail call ptr @build2_stat(i32 noundef 54, ptr noundef nonnull %5, ptr noundef %93, ptr noundef %94) #21
  br label %96

96:                                               ; preds = %89, %92
  %97 = phi ptr [ %95, %92 ], [ %1, %89 ]
  %98 = phi ptr [ %93, %92 ], [ %1, %89 ]
  store ptr %97, ptr %80, align 8, !tbaa !11
  br label %99

99:                                               ; preds = %36, %96, %2, %7, %74
  %100 = phi ptr [ null, %74 ], [ null, %7 ], [ null, %2 ], [ %98, %96 ], [ null, %36 ]
  ret ptr %100
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc { ptr, ptr } @tsi_last(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.tree_statement_list, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = insertvalue { ptr, ptr } poison, ptr %3, 0
  %5 = insertvalue { ptr, ptr } %4, ptr %0, 1
  ret { ptr, ptr } %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @tsi_end_p(ptr readnone %0) unnamed_addr #16 {
  %2 = icmp eq ptr %0, null
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @tsi_stmt_ptr(ptr readnone %0) unnamed_addr #16 {
  %2 = getelementptr inbounds %struct.tree_statement_list_node, ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sort_case_labels(ptr noundef %0) local_unnamed_addr #4 {
  %2 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %0) #20
  %3 = zext i32 %2 to i64
  %4 = tail call fastcc ptr @VEC_tree_base_address(ptr noundef %0) #20
  tail call void @spec_qsort(ptr noundef %4, i64 noundef %3, i64 noundef 8, ptr noundef nonnull @compare_case_labels) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !56
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_tree_base_address(ptr noundef readnone %0) unnamed_addr #16 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @compare_case_labels(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !11
  %4 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = tail call i32 @tree_int_cst_compare(ptr noundef nonnull %5, ptr noundef nonnull %10) #21
  br label %14

14:                                               ; preds = %7, %2, %12
  %15 = phi i32 [ %13, %12 ], [ -1, %2 ], [ 1, %7 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_and_jump(ptr noundef %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call ptr @create_artificial_label(i32 noundef 0) #21
  store ptr %7, ptr %0, align 8, !tbaa !11
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi ptr [ %7, %6 ], [ %4, %3 ]
  %10 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  %11 = tail call ptr @build1_stat(i32 noundef 134, ptr noundef %10, ptr noundef %9) #21
  br label %12

12:                                               ; preds = %1, %8
  %13 = phi ptr [ %11, %8 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @create_artificial_label(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noalias noundef ptr @force_labels_r(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2) #17 {
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !26
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !26
  %11 = load i64, ptr %4, align 8
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi i64 [ %11, %10 ], [ %5, %3 ]
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 30
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = or i64 %13, 65536
  store i64 %17, ptr %4, align 8
  br label %18

18:                                               ; preds = %16, %12
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gimple_boolify(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !26
  %8 = add i32 %7, -4
  %9 = icmp ult i32 %8, 7
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !6
  br label %13

13:                                               ; preds = %1, %10
  %14 = phi i32 [ %12, %10 ], [ 0, %1 ]
  %15 = icmp eq i64 %5, 102
  br i1 %15, label %16, label %73

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 59
  br i1 %21, label %22, label %73

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = tail call i32 @integer_zerop(ptr noundef %24) #21
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %73, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr %17, align 8, !tbaa !6
  %29 = tail call ptr @get_callee_fndecl(ptr noundef %28) #21
  %30 = icmp eq ptr %29, null
  br i1 %30, label %73, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.tree_function_decl, ptr %29, i64 0, i32 5
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 8191
  %35 = icmp eq i32 %34, 6590
  br i1 %35, label %36, label %73

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.tree_exp, ptr %28, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  %39 = getelementptr inbounds %struct.tree_int_cst, ptr %38, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !6
  %41 = and i64 %40, 4294967295
  %42 = icmp eq i64 %41, 5
  br i1 %42, label %43, label %73

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.tree_exp, ptr %28, i64 1, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = icmp eq ptr %45, null
  br i1 %46, label %73, label %47

47:                                               ; preds = %43
  %48 = load i64, ptr %45, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 116
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !6
  %54 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  %56 = icmp eq ptr %53, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.tree_exp, ptr %45, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !6
  %60 = load i64, ptr %59, align 8
  br label %61

61:                                               ; preds = %57, %51, %47
  %62 = phi i64 [ %60, %57 ], [ %48, %51 ], [ %48, %47 ]
  %63 = phi ptr [ %59, %57 ], [ %45, %51 ], [ %45, %47 ]
  %64 = trunc i64 %62 to i32
  %65 = and i32 %64, 65535
  %66 = tail call fastcc zeroext i8 @truth_value_p(i32 noundef %65) #20, !range !5
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %61
  %69 = tail call ptr @gimple_boolify(ptr noundef nonnull %63) #20
  %70 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !6
  %72 = tail call ptr @fold_convert_loc(i32 noundef %14, ptr noundef %71, ptr noundef %69) #21
  store ptr %72, ptr %44, align 8, !tbaa !6
  br label %73

73:                                               ; preds = %27, %31, %36, %61, %68, %43, %22, %16, %13
  %74 = load i64, ptr %3, align 8
  %75 = and i64 %74, 65535
  %76 = icmp eq i64 %75, 7
  br i1 %76, label %93, label %77

77:                                               ; preds = %73
  %78 = load i64, ptr %0, align 8
  %79 = trunc i64 %78 to i16
  switch i16 %79, label %90 [
    i16 93, label %80
    i16 94, label %80
    i16 95, label %80
    i16 91, label %80
    i16 92, label %80
    i16 96, label %84
    i16 101, label %88
    i16 102, label %88
    i16 98, label %88
    i16 100, label %88
    i16 97, label %88
    i16 99, label %88
  ]

80:                                               ; preds = %77, %77, %77, %77, %77
  %81 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !6
  %83 = tail call ptr @gimple_boolify(ptr noundef %82) #20
  store ptr %83, ptr %81, align 8, !tbaa !6
  br label %84

84:                                               ; preds = %77, %80
  %85 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !6
  %87 = tail call ptr @gimple_boolify(ptr noundef %86) #20
  store ptr %87, ptr %85, align 8, !tbaa !6
  br label %88

88:                                               ; preds = %77, %77, %77, %77, %77, %77, %84
  %89 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !11
  store ptr %89, ptr %2, align 8, !tbaa !6
  br label %93

90:                                               ; preds = %77
  %91 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !11
  %92 = tail call ptr @fold_convert_loc(i32 noundef %14, ptr noundef %91, ptr noundef nonnull %0) #21
  br label %93

93:                                               ; preds = %73, %90, %88
  %94 = phi ptr [ %92, %90 ], [ %0, %88 ], [ %0, %73 ]
  ret ptr %94
}

; Function Attrs: optsize
declare ptr @get_callee_fndecl(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @truth_value_p(i32 noundef %0) unnamed_addr #16 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !26
  %5 = icmp eq i32 %4, 5
  %6 = icmp eq i32 %0, 93
  %7 = or i1 %6, %5
  %8 = icmp eq i32 %0, 91
  %9 = or i1 %8, %7
  %10 = and i32 %0, -3
  %11 = icmp eq i32 %10, 92
  %12 = or i1 %11, %9
  %13 = add i32 %0, -95
  %14 = icmp ult i32 %13, 2
  %15 = or i1 %14, %12
  %16 = zext i1 %15 to i8
  ret i8 %16
}

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @rhs_predicate_for(ptr noundef %0) local_unnamed_addr #4 {
  %2 = tail call zeroext i8 @is_gimple_reg(ptr noundef %0) #21
  %3 = icmp eq i8 %2, 0
  %4 = select i1 %3, ptr @is_gimple_mem_rhs_or_call, ptr @is_gimple_reg_rhs_or_call
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @is_gimple_reg_rhs_or_call(ptr nocapture noundef readonly %0) #1 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = and i32 %3, 65535
  %5 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %4) #20, !range !21
  %6 = icmp ne i32 %5, 0
  %7 = and i64 %2, 65535
  %8 = icmp eq i64 %7, 59
  %9 = or i1 %6, %8
  %10 = zext i1 %9 to i8
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @is_gimple_mem_rhs_or_call(ptr noundef %0) #4 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %3) #21
  %5 = icmp eq i8 %4, 0
  %6 = tail call zeroext i8 @is_gimple_val(ptr noundef nonnull %0) #21
  br i1 %5, label %7, label %17

7:                                                ; preds = %1
  %8 = icmp eq i8 %6, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %7
  %10 = tail call zeroext i8 @is_gimple_lvalue(ptr noundef nonnull %0) #21
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load i64, ptr %0, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 59
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %1, %7, %9, %12
  %18 = phi i8 [ 1, %9 ], [ 1, %7 ], [ %16, %12 ], [ %6, %1 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gimple_fold_indirect_ref(ptr noundef %0) local_unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #21
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %215 [
    i16 10, label %11
    i16 12, label %11
  ]

11:                                               ; preds = %1, %1
  %12 = load i64, ptr %6, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 121
  br i1 %14, label %15, label %83

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %5, ptr noundef %19) #21
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %215

22:                                               ; preds = %15
  %23 = load i64, ptr %19, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 15
  br i1 %25, label %26, label %54

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = getelementptr inbounds %struct.tree_type, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 23
  br i1 %33, label %34, label %54

34:                                               ; preds = %26
  %35 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %5, ptr noundef nonnull %28) #21
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i64, ptr %19, align 8
  br label %54

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !6
  %42 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !11
  %43 = icmp eq ptr %41, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.tree_type, ptr %41, i64 0, i32 13
  %46 = load ptr, ptr %45, align 8, !tbaa !6
  %47 = icmp eq ptr %46, null
  %48 = select i1 %47, ptr %42, ptr %46
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi ptr [ %42, %39 ], [ %48, %44 ]
  %51 = load i64, ptr %50, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 23
  br i1 %53, label %81, label %83

54:                                               ; preds = %37, %26, %22
  %55 = phi i64 [ %38, %37 ], [ %23, %26 ], [ %23, %22 ]
  %56 = and i64 %55, 65535
  %57 = icmp eq i64 %56, 13
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !6
  %61 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %5, ptr noundef %60) #21
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i64, ptr %19, align 8
  br label %67

65:                                               ; preds = %58
  %66 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 43, ptr noundef %5, ptr noundef nonnull %17) #21
  br label %215

67:                                               ; preds = %63, %54
  %68 = phi i64 [ %64, %63 ], [ %55, %54 ]
  %69 = and i64 %68, 65535
  %70 = icmp eq i64 %69, 14
  br i1 %70, label %71, label %83

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !6
  %74 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %5, ptr noundef %73) #21
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !6
  %79 = tail call ptr @size_int_kind(i64 noundef 0, i32 noundef 2) #21
  %80 = tail call ptr @fold_build3_stat_loc(i32 noundef 0, i32 noundef 42, ptr noundef %5, ptr noundef nonnull %17, ptr noundef %78, ptr noundef %79) #21
  br label %215

81:                                               ; preds = %49
  %82 = tail call ptr @build4_stat(i32 noundef 45, ptr noundef %5, ptr noundef nonnull %17, ptr noundef nonnull %50, ptr noundef null, ptr noundef null) #21
  br label %215

83:                                               ; preds = %67, %71, %49, %11
  %84 = load i64, ptr %6, align 8
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 66
  br i1 %86, label %87, label %133

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !6
  %90 = load i64, ptr %89, align 8
  %91 = and i64 %90, 65535
  %92 = icmp eq i64 %91, 23
  br i1 %92, label %93, label %133

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !6
  %96 = tail call ptr @tree_strip_nop_conversions(ptr noundef %95) #21
  %97 = load i64, ptr %96, align 8
  %98 = and i64 %97, 65535
  %99 = icmp eq i64 %98, 121
  br i1 %99, label %100, label %133

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.tree_common, ptr %96, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !6
  %103 = getelementptr inbounds %struct.tree_common, ptr %102, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !6
  %105 = load i64, ptr %104, align 8
  %106 = and i64 %105, 65535
  %107 = icmp eq i64 %106, 14
  br i1 %107, label %108, label %133

108:                                              ; preds = %100
  %109 = getelementptr inbounds %struct.tree_common, ptr %104, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !6
  %111 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %5, ptr noundef %110) #21
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %133, label %113

113:                                              ; preds = %108
  %114 = tail call i64 @tree_low_cst(ptr noundef nonnull %89, i32 noundef 0) #21
  %115 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !6
  %117 = tail call i64 @tree_low_cst(ptr noundef %116, i32 noundef 0) #21
  %118 = sdiv i64 %117, 8
  %119 = shl nsw i64 %114, 3
  %120 = tail call ptr @size_int_kind(i64 noundef %119, i32 noundef 2) #21
  %121 = udiv i64 %114, %118
  %122 = load ptr, ptr %103, align 8, !tbaa !6
  %123 = getelementptr inbounds %struct.tree_type, ptr %122, i64 0, i32 6
  %124 = load i32, ptr %123, align 4
  %125 = and i32 %124, 1023
  %126 = zext nneg i32 %125 to i64
  %127 = shl nuw i64 1, %126
  %128 = icmp ugt i64 %121, %127
  br i1 %128, label %133, label %129

129:                                              ; preds = %113
  %130 = getelementptr inbounds %struct.tree_exp, ptr %96, i64 0, i32 3
  %131 = load ptr, ptr %130, align 8, !tbaa !6
  %132 = tail call ptr @fold_build3_stat_loc(i32 noundef 0, i32 noundef 42, ptr noundef nonnull %5, ptr noundef %131, ptr noundef %116, ptr noundef %120) #21
  br label %215

133:                                              ; preds = %113, %93, %100, %108, %87, %83
  %134 = load i64, ptr %6, align 8
  %135 = and i64 %134, 65535
  %136 = icmp eq i64 %135, 66
  br i1 %136, label %137, label %172

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %139 = load ptr, ptr %138, align 8, !tbaa !6
  %140 = load i64, ptr %139, align 8
  %141 = and i64 %140, 65535
  %142 = icmp eq i64 %141, 23
  br i1 %142, label %143, label %172

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !6
  %146 = tail call ptr @tree_strip_nop_conversions(ptr noundef %145) #21
  %147 = load i64, ptr %146, align 8
  %148 = and i64 %147, 65535
  %149 = icmp eq i64 %148, 121
  br i1 %149, label %150, label %172

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.tree_common, ptr %146, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !6
  %153 = getelementptr inbounds %struct.tree_common, ptr %152, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !6
  %155 = load i64, ptr %154, align 8
  %156 = and i64 %155, 65535
  %157 = icmp eq i64 %156, 13
  br i1 %157, label %158, label %172

158:                                              ; preds = %150
  %159 = getelementptr inbounds %struct.tree_common, ptr %154, i64 0, i32 2
  %160 = load ptr, ptr %159, align 8, !tbaa !6
  %161 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %5, ptr noundef %160) #21
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %172, label %163

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 3
  %165 = load ptr, ptr %164, align 8, !tbaa !6
  %166 = tail call i32 @tree_int_cst_equal(ptr noundef %165, ptr noundef nonnull %139) #21
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct.tree_exp, ptr %146, i64 0, i32 3
  %170 = load ptr, ptr %169, align 8, !tbaa !6
  %171 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 44, ptr noundef nonnull %5, ptr noundef %170) #21
  br label %215

172:                                              ; preds = %163, %143, %150, %158, %137, %133
  %173 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %174 = load ptr, ptr %173, align 8, !tbaa !6
  %175 = load i64, ptr %174, align 8
  %176 = and i64 %175, 65535
  %177 = icmp eq i64 %176, 15
  br i1 %177, label %178, label %215

178:                                              ; preds = %172
  %179 = getelementptr inbounds %struct.tree_common, ptr %174, i64 0, i32 2
  %180 = load ptr, ptr %179, align 8, !tbaa !6
  %181 = getelementptr inbounds %struct.tree_type, ptr %180, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !6
  %183 = load i64, ptr %182, align 8
  %184 = and i64 %183, 65535
  %185 = icmp eq i64 %184, 23
  br i1 %185, label %186, label %215

186:                                              ; preds = %178
  %187 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %5, ptr noundef nonnull %180) #21
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %215, label %189

189:                                              ; preds = %186
  %190 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !11
  %191 = tail call ptr @gimple_fold_indirect_ref(ptr noundef nonnull %6) #20
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = load ptr, ptr %173, align 8, !tbaa !6
  %195 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %194, ptr noundef nonnull %6) #21
  br label %196

196:                                              ; preds = %193, %189
  %197 = phi ptr [ %191, %189 ], [ %195, %193 ]
  %198 = getelementptr inbounds %struct.tree_common, ptr %197, i64 0, i32 2
  %199 = load ptr, ptr %198, align 8, !tbaa !6
  %200 = getelementptr inbounds %struct.tree_type, ptr %199, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !6
  %202 = icmp eq ptr %201, null
  br i1 %202, label %208, label %203

203:                                              ; preds = %196
  %204 = getelementptr inbounds %struct.tree_type, ptr %201, i64 0, i32 13
  %205 = load ptr, ptr %204, align 8, !tbaa !6
  %206 = icmp eq ptr %205, null
  %207 = select i1 %206, ptr %190, ptr %205
  br label %208

208:                                              ; preds = %203, %196
  %209 = phi ptr [ %190, %196 ], [ %207, %203 ]
  %210 = load i64, ptr %209, align 8
  %211 = and i64 %210, 65535
  %212 = icmp eq i64 %211, 23
  br i1 %212, label %213, label %215

213:                                              ; preds = %208
  %214 = tail call ptr @build4_stat(i32 noundef 45, ptr noundef %5, ptr noundef nonnull %197, ptr noundef nonnull %209, ptr noundef null, ptr noundef null) #21
  br label %215

215:                                              ; preds = %15, %76, %65, %172, %178, %186, %208, %213, %168, %129, %81, %1
  %216 = phi ptr [ %171, %168 ], [ %132, %129 ], [ %82, %81 ], [ null, %1 ], [ %214, %213 ], [ null, %208 ], [ null, %186 ], [ null, %178 ], [ null, %172 ], [ %17, %15 ], [ %80, %76 ], [ %66, %65 ]
  ret ptr %216
}

; Function Attrs: optsize
declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @build4_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @fold_build3_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gimple_seq_alloc() local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @gimplify_expr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #4 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  store ptr null, ptr %7, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  store ptr null, ptr %8, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #22
  %18 = load ptr, ptr %0, align 8, !tbaa !11
  %19 = icmp eq ptr %18, null
  br i1 %19, label %728, label %20

20:                                               ; preds = %5
  %21 = icmp eq ptr %3, @is_gimple_stmt
  %22 = icmp eq ptr %1, null
  %23 = and i1 %22, %21
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6467, ptr noundef nonnull @.str.1) #21
  br label %30

25:                                               ; preds = %20
  %26 = icmp eq ptr %3, @is_gimple_reg
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = and i32 %4, 3
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %54, label %56

30:                                               ; preds = %24, %25
  %31 = insertelement <8 x ptr> poison, ptr %3, i64 0
  %32 = shufflevector <8 x ptr> %31, <8 x ptr> poison, <8 x i32> zeroinitializer
  %33 = icmp eq <8 x ptr> %32, <ptr @is_gimple_call_addr, ptr @is_gimple_val, ptr @is_gimple_condexpr, ptr @is_gimple_mem_rhs, ptr @is_gimple_mem_rhs_or_call, ptr @is_gimple_reg_rhs, ptr @is_gimple_reg_rhs_or_call, ptr @is_gimple_asm_val>
  %34 = bitcast <8 x i1> %33 to i8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = and i32 %4, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %54, label %56

39:                                               ; preds = %30
  %40 = icmp eq ptr %3, @is_gimple_min_lval
  %41 = icmp eq ptr %3, @is_gimple_lvalue
  %42 = or i1 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = and i32 %4, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %54, label %56

46:                                               ; preds = %39
  %47 = icmp eq ptr %3, @is_gimple_addressable
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = and i32 %4, 3
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %56

51:                                               ; preds = %46
  br i1 %21, label %52, label %54

52:                                               ; preds = %51
  %53 = icmp eq i32 %4, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %51, %52, %48, %43, %36, %27
  %55 = phi i32 [ 6471, %27 ], [ 6480, %36 ], [ 6483, %43 ], [ 6485, %48 ], [ 6487, %52 ], [ 6493, %51 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %55, ptr noundef nonnull @.str.1) #21
  br label %56

56:                                               ; preds = %54, %52, %48, %43, %36, %27
  %57 = select i1 %22, ptr %7, ptr %1
  %58 = icmp eq ptr %2, null
  %59 = select i1 %58, ptr %8, ptr %2
  %60 = load ptr, ptr %57, align 8, !tbaa !11
  call fastcc void @gsi_last(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef %60) #20
  %61 = load ptr, ptr %59, align 8, !tbaa !11
  call fastcc void @gsi_last(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef %61) #20
  %62 = load i32, ptr @input_location, align 4, !tbaa !26
  %63 = load ptr, ptr @global_trees, align 16, !tbaa !11
  %64 = icmp eq ptr %18, %63
  %65 = load ptr, ptr %0, align 8, !tbaa !11
  br i1 %64, label %78, label %66

66:                                               ; preds = %56
  %67 = load i64, ptr %65, align 8
  %68 = and i64 %67, 65535
  %69 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %68
  %70 = load i32, ptr %69, align 4, !tbaa !26
  %71 = add i32 %70, -4
  %72 = icmp ult i32 %71, 7
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.tree_exp, ptr %65, i64 0, i32 1
  %75 = load i32, ptr %74, align 8, !tbaa !6
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  store i32 %75, ptr @input_location, align 4, !tbaa !26
  br label %78

78:                                               ; preds = %66, %77, %73, %56
  %79 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef %65) #21
  store ptr %79, ptr %0, align 8, !tbaa !11
  %80 = load ptr, ptr @global_trees, align 16, !tbaa !11
  %81 = icmp eq ptr %79, %80
  br i1 %81, label %560, label %82

82:                                               ; preds = %78
  %83 = icmp eq ptr %59, %8
  %84 = select i1 %83, ptr null, ptr %59
  %85 = and i32 %4, 2
  %86 = icmp eq i32 %85, 0
  %87 = icmp eq i32 %4, 0
  %88 = icmp ne i32 %4, 0
  %89 = zext i1 %88 to i8
  %90 = icmp eq i32 %4, 2
  %91 = call i32 @llvm.umax.i32(i32 %4, i32 1)
  br label %92

92:                                               ; preds = %82, %553
  %93 = phi ptr [ %80, %82 ], [ %556, %553 ]
  %94 = phi ptr [ %79, %82 ], [ %555, %553 ]
  %95 = getelementptr inbounds %struct.tree_common, ptr %94, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !6
  %97 = icmp ne ptr %96, null
  %98 = icmp eq ptr %96, %93
  %99 = and i1 %97, %98
  br i1 %99, label %560, label %100

100:                                              ; preds = %92
  %101 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 39), align 8, !tbaa !59
  %102 = call i32 %101(ptr noundef nonnull %0, ptr noundef nonnull %57, ptr noundef nonnull %59) #21
  switch i32 %102, label %558 [
    i32 0, label %105
    i32 -1, label %103
  ]

103:                                              ; preds = %100
  %104 = load ptr, ptr %0, align 8, !tbaa !11
  br label %110

105:                                              ; preds = %100
  %106 = load ptr, ptr %0, align 8, !tbaa !11
  %107 = icmp eq ptr %106, null
  br i1 %107, label %563, label %108

108:                                              ; preds = %105
  %109 = icmp eq ptr %106, %94
  br i1 %109, label %110, label %553

110:                                              ; preds = %103, %108
  %111 = phi ptr [ %104, %103 ], [ %94, %108 ]
  %112 = load i64, ptr %111, align 8
  %113 = trunc i64 %112 to i16
  switch i16 %113, label %493 [
    i16 128, label %114
    i16 127, label %114
    i16 126, label %114
    i16 125, label %114
    i16 45, label %116
    i16 46, label %116
    i16 43, label %116
    i16 44, label %116
    i16 41, label %116
    i16 118, label %116
    i16 56, label %118
    i16 59, label %123
    i16 2, label %128
    i16 52, label %129
    i16 119, label %131
    i16 53, label %132
    i16 54, label %132
    i16 91, label %134
    i16 92, label %134
    i16 96, label %135
    i16 121, label %148
    i16 129, label %150
    i16 116, label %152
    i16 113, label %152
    i16 77, label %182
    i16 47, label %187
    i16 48, label %191
    i16 49, label %191
    i16 23, label %563
    i16 24, label %563
    i16 25, label %563
    i16 28, label %563
    i16 26, label %563
    i16 27, label %563
    i16 33, label %196
    i16 132, label %200
    i16 58, label %202
    i16 137, label %204
    i16 138, label %205
    i16 136, label %207
    i16 134, label %208
    i16 185, label %225
    i16 133, label %236
    i16 139, label %248
    i16 135, label %249
    i16 51, label %251
    i16 120, label %279
    i16 42, label %281
    i16 152, label %293
    i16 117, label %316
    i16 140, label %317
    i16 131, label %319
    i16 130, label %319
    i16 61, label %348
    i16 55, label %350
    i16 142, label %352
    i16 143, label %360
    i16 50, label %373
    i16 30, label %383
    i16 147, label %385
    i16 150, label %387
    i16 32, label %393
    i16 34, label %393
    i16 36, label %395
    i16 141, label %563
    i16 153, label %400
    i16 154, label %401
    i16 155, label %402
    i16 156, label %404
    i16 157, label %404
    i16 158, label %405
    i16 159, label %405
    i16 160, label %405
    i16 161, label %405
    i16 162, label %428
    i16 66, label %430
  ]

114:                                              ; preds = %110, %110, %110, %110
  %115 = call fastcc i32 @gimplify_self_mod_expr(ptr noundef nonnull %0, ptr noundef nonnull %57, ptr noundef nonnull %59, i8 noundef zeroext %89) #20, !range !60
  br label %545

116:                                              ; preds = %110, %110, %110, %110, %110, %110
  %117 = call fastcc i32 @gimplify_compound_lval(ptr noundef nonnull %0, ptr noundef nonnull %57, ptr noundef nonnull %59, i32 noundef %91) #20
  br label %545

118:                                              ; preds = %110
  %119 = call fastcc i32 @gimplify_cond_expr(ptr noundef nonnull %0, ptr noundef nonnull %57, i32 noundef %4) #20
  br i1 %90, label %120, label %545

120:                                              ; preds = %118
  %121 = load ptr, ptr %0, align 8, !tbaa !11
  %122 = call ptr @get_initialized_tmp_var(ptr noundef %121, ptr noundef nonnull %57, ptr noundef nonnull %59) #20
  store ptr %122, ptr %0, align 8, !tbaa !11
  call void @mark_addressable(ptr noundef %122) #20
  br label %545

123:                                              ; preds = %110
  %124 = call fastcc i32 @gimplify_call_expr(ptr noundef nonnull %0, ptr noundef nonnull %57, i8 noundef zeroext %89) #20
  br i1 %90, label %125, label %545

125:                                              ; preds = %123
  %126 = load ptr, ptr %0, align 8, !tbaa !11
  %127 = call ptr @get_initialized_tmp_var(ptr noundef %126, ptr noundef nonnull %57, ptr noundef nonnull %59) #20
  store ptr %127, ptr %0, align 8, !tbaa !11
  call void @mark_addressable(ptr noundef %127) #20
  br label %545

128:                                              ; preds = %110
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6607, ptr noundef nonnull @.str.1) #21
  br label %129

129:                                              ; preds = %110, %128
  %130 = call fastcc i32 @gimplify_compound_expr(ptr noundef nonnull %0, ptr noundef nonnull %57, i8 noundef zeroext %89) #20, !range !61
  br label %545

131:                                              ; preds = %110
  call fastcc void @gimplify_compound_literal_expr(ptr noundef nonnull %0, ptr noundef nonnull %57) #20
  br label %548

132:                                              ; preds = %110, %110
  %133 = call fastcc i32 @gimplify_modify_expr(ptr noundef nonnull %0, ptr noundef nonnull %57, ptr noundef nonnull %59, i8 noundef zeroext %89) #20
  br label %545

134:                                              ; preds = %110, %110
  call fastcc void @gimplify_boolean_expr(ptr noundef nonnull %0, i32 noundef %62) #20
  br label %548

135:                                              ; preds = %110
  %136 = getelementptr inbounds %struct.tree_common, ptr %111, i64 0, i32 2
  %137 = load ptr, ptr %136, align 8, !tbaa !6
  %138 = load i64, ptr %137, align 8
  %139 = and i64 %138, 65535
  %140 = icmp eq i64 %139, 7
  br i1 %140, label %144, label %141

141:                                              ; preds = %135
  %142 = call ptr @gimple_boolify(ptr noundef nonnull %111) #20
  %143 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %137, ptr noundef %142) #21
  store ptr %143, ptr %0, align 8, !tbaa !11
  br label %548

144:                                              ; preds = %135
  %145 = getelementptr inbounds %struct.tree_exp, ptr %111, i64 0, i32 3
  %146 = call i32 @gimplify_expr(ptr noundef nonnull %145, ptr noundef nonnull %57, ptr noundef nonnull %59, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %147 = load ptr, ptr %0, align 8, !tbaa !11
  call void @recalculate_side_effects(ptr noundef %147) #21
  br label %545

148:                                              ; preds = %110
  %149 = call fastcc i32 @gimplify_addr_expr(ptr noundef nonnull %0, ptr noundef nonnull %57, ptr noundef nonnull %59) #20
  br label %545

150:                                              ; preds = %110
  %151 = call i32 @gimplify_va_arg_expr(ptr noundef nonnull %0, ptr noundef nonnull %57, ptr noundef nonnull %59) #21
  br label %545

152:                                              ; preds = %110, %110
  %153 = and i64 %112, 65535
  %154 = icmp eq i64 %153, 116
  br i1 %154, label %155, label %168

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.tree_common, ptr %111, i64 0, i32 2
  %157 = load ptr, ptr %156, align 8, !tbaa !6
  %158 = load i64, ptr %157, align 8
  %159 = and i64 %158, 65535
  %160 = icmp eq i64 %159, 19
  br i1 %160, label %161, label %168

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.tree_exp, ptr %111, i64 0, i32 3
  %163 = load ptr, ptr %162, align 8, !tbaa !6
  %164 = call i32 @integer_zerop(ptr noundef %163) #21
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %563

166:                                              ; preds = %161
  %167 = load ptr, ptr %0, align 8, !tbaa !11
  br label %168

168:                                              ; preds = %166, %155, %152
  %169 = phi ptr [ %167, %166 ], [ %111, %155 ], [ %111, %152 ]
  %170 = getelementptr inbounds %struct.tree_common, ptr %169, i64 0, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !6
  %172 = load i64, ptr %171, align 8
  %173 = and i64 %172, 65535
  %174 = icmp eq i64 %173, 19
  %175 = or i1 %87, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %168
  %177 = getelementptr inbounds %struct.tree_exp, ptr %169, i64 0, i32 3
  %178 = load ptr, ptr %177, align 8, !tbaa !6
  store ptr %178, ptr %0, align 8, !tbaa !11
  br label %548

179:                                              ; preds = %168
  call fastcc void @gimplify_conversion(ptr noundef nonnull %0) #20
  %180 = load ptr, ptr %0, align 8, !tbaa !11
  %181 = icmp eq ptr %180, %94
  br i1 %181, label %182, label %548

182:                                              ; preds = %179, %110
  %183 = phi ptr [ %94, %179 ], [ %111, %110 ]
  %184 = getelementptr inbounds %struct.tree_exp, ptr %183, i64 0, i32 3
  %185 = call i32 @gimplify_expr(ptr noundef nonnull %184, ptr noundef nonnull %57, ptr noundef nonnull %59, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %186 = load ptr, ptr %0, align 8, !tbaa !11
  call void @recalculate_side_effects(ptr noundef %186) #21
  br label %545

187:                                              ; preds = %110
  %188 = load i32, ptr @input_location, align 4, !tbaa !26
  %189 = call ptr @fold_indirect_ref_loc(i32 noundef %188, ptr noundef nonnull %111) #21
  store ptr %189, ptr %0, align 8, !tbaa !11
  %190 = icmp eq ptr %189, %94
  br i1 %190, label %191, label %548

191:                                              ; preds = %187, %110, %110
  %192 = phi ptr [ %94, %187 ], [ %111, %110 ], [ %111, %110 ]
  %193 = getelementptr inbounds %struct.tree_exp, ptr %192, i64 0, i32 3
  %194 = call i32 @gimplify_expr(ptr noundef nonnull %193, ptr noundef nonnull %57, ptr noundef nonnull %59, ptr noundef nonnull @is_gimple_reg, i32 noundef 1) #20
  %195 = load ptr, ptr %0, align 8, !tbaa !11
  call void @recalculate_side_effects(ptr noundef %195) #21
  br label %545

196:                                              ; preds = %110
  br i1 %86, label %197, label %620

197:                                              ; preds = %196
  %198 = getelementptr inbounds %struct.tree_decl_common, ptr %111, i64 0, i32 5
  %199 = load ptr, ptr %198, align 8, !tbaa !6
  store ptr %199, ptr %0, align 8, !tbaa !11
  br label %548

200:                                              ; preds = %110
  %201 = call fastcc i32 @gimplify_decl_expr(ptr noundef nonnull %0, ptr noundef nonnull %57) #20, !range !60
  br label %545

202:                                              ; preds = %110
  %203 = call fastcc i32 @gimplify_bind_expr(ptr noundef nonnull %0, ptr noundef nonnull %57) #20, !range !61
  br label %545

204:                                              ; preds = %110
  call fastcc void @gimplify_loop_expr(ptr noundef nonnull %0, ptr noundef nonnull %57) #20
  br label %563

205:                                              ; preds = %110
  %206 = call fastcc i32 @gimplify_switch_expr(ptr noundef nonnull %0, ptr noundef nonnull %57) #20
  br label %545

207:                                              ; preds = %110
  call fastcc void @gimplify_exit_expr(ptr noundef nonnull %0) #20
  br label %548

208:                                              ; preds = %110
  %209 = getelementptr inbounds %struct.tree_exp, ptr %111, i64 0, i32 3
  %210 = load ptr, ptr %209, align 8, !tbaa !6
  %211 = load i64, ptr %210, align 8
  %212 = and i64 %211, 65535
  %213 = icmp eq i64 %212, 30
  br i1 %213, label %221, label %214

214:                                              ; preds = %208
  %215 = call i32 @gimplify_expr(ptr noundef nonnull %209, ptr noundef nonnull %57, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %216 = icmp eq i32 %215, -2
  br i1 %216, label %560, label %217

217:                                              ; preds = %214
  %218 = load ptr, ptr %0, align 8, !tbaa !11
  %219 = getelementptr inbounds %struct.tree_exp, ptr %218, i64 0, i32 3
  %220 = load ptr, ptr %219, align 8, !tbaa !6
  br label %221

221:                                              ; preds = %217, %208
  %222 = phi ptr [ %220, %217 ], [ %210, %208 ]
  %223 = phi i32 [ %215, %217 ], [ 0, %208 ]
  %224 = call ptr @gimple_build_goto(ptr noundef %222) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %57, ptr noundef %224) #20
  br label %545

225:                                              ; preds = %110
  %226 = getelementptr inbounds %struct.tree_exp, ptr %111, i64 0, i32 3
  %227 = load ptr, ptr %226, align 8, !tbaa !6
  %228 = call i64 @tree_low_cst(ptr noundef %227, i32 noundef 0) #21
  %229 = trunc i64 %228 to i32
  %230 = load ptr, ptr %0, align 8, !tbaa !11
  %231 = load i64, ptr %230, align 8
  %232 = trunc i64 %231 to i32
  %233 = lshr i32 %232, 18
  %234 = and i32 %233, 1
  %235 = call ptr @gimple_build_predict(i32 noundef %229, i32 noundef %234) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %57, ptr noundef %235) #20
  br label %563

236:                                              ; preds = %110
  %237 = getelementptr inbounds %struct.tree_exp, ptr %111, i64 0, i32 3
  %238 = load ptr, ptr %237, align 8, !tbaa !6
  %239 = call ptr @decl_function_context(ptr noundef %238) #21
  %240 = load ptr, ptr @current_function_decl, align 8, !tbaa !11
  %241 = icmp eq ptr %239, %240
  br i1 %241, label %243, label %242

242:                                              ; preds = %236
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6758, ptr noundef nonnull @.str.1) #21
  br label %243

243:                                              ; preds = %236, %242
  %244 = load ptr, ptr %0, align 8, !tbaa !11
  %245 = getelementptr inbounds %struct.tree_exp, ptr %244, i64 0, i32 3
  %246 = load ptr, ptr %245, align 8, !tbaa !6
  %247 = call ptr @gimple_build_label(ptr noundef %246) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %57, ptr noundef %247) #20
  br label %563

248:                                              ; preds = %110
  call fastcc void @gimplify_case_label_expr(ptr noundef nonnull %0, ptr noundef nonnull %57) #20
  br label %563

249:                                              ; preds = %110
  %250 = call fastcc i32 @gimplify_return_expr(ptr noundef nonnull %111, ptr noundef nonnull %57) #20, !range !60
  br label %545

251:                                              ; preds = %110
  switch i32 %4, label %563 [
    i32 0, label %252
    i32 2, label %277
  ]

252:                                              ; preds = %251
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #22
  store ptr null, ptr %12, align 8, !tbaa !11
  %253 = getelementptr inbounds %struct.tree_constructor, ptr %111, i64 0, i32 1
  %254 = load ptr, ptr %253, align 8, !tbaa !6
  %255 = call fastcc i32 @VEC_constructor_elt_base_iterate(ptr noundef %254, i32 noundef 0, ptr noundef nonnull %11) #20, !range !61
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %275, label %257

257:                                              ; preds = %252, %266
  %258 = phi i32 [ %267, %266 ], [ 0, %252 ]
  %259 = load ptr, ptr %11, align 8, !tbaa !11
  %260 = getelementptr inbounds %struct.constructor_elt_d, ptr %259, i64 0, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !62
  %262 = load i64, ptr %261, align 8
  %263 = and i64 %262, 65536
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %266, label %265

265:                                              ; preds = %257
  call void @append_to_statement_list(ptr noundef nonnull %261, ptr noundef nonnull %12) #20
  br label %266

266:                                              ; preds = %257, %265
  %267 = add i32 %258, 1
  %268 = load ptr, ptr %0, align 8, !tbaa !11
  %269 = getelementptr inbounds %struct.tree_constructor, ptr %268, i64 0, i32 1
  %270 = load ptr, ptr %269, align 8, !tbaa !6
  %271 = call fastcc i32 @VEC_constructor_elt_base_iterate(ptr noundef %270, i32 noundef %267, ptr noundef nonnull %11) #20, !range !61
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %257, !llvm.loop !64

273:                                              ; preds = %266
  %274 = load ptr, ptr %12, align 8, !tbaa !11
  br label %275

275:                                              ; preds = %273, %252
  %276 = phi ptr [ %274, %273 ], [ null, %252 ]
  store ptr %276, ptr %0, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #22
  br label %548

277:                                              ; preds = %251
  %278 = call ptr @get_initialized_tmp_var(ptr noundef nonnull %111, ptr noundef nonnull %57, ptr noundef nonnull %59) #20
  store ptr %278, ptr %0, align 8, !tbaa !11
  call void @mark_addressable(ptr noundef %278) #20
  br label %548

279:                                              ; preds = %110
  %280 = call fastcc i32 @gimplify_save_expr(ptr noundef nonnull %0, ptr noundef nonnull %57, ptr noundef nonnull %59) #20
  br label %545

281:                                              ; preds = %110
  %282 = getelementptr inbounds %struct.tree_exp, ptr %111, i64 0, i32 3
  %283 = call i32 @gimplify_expr(ptr noundef nonnull %282, ptr noundef nonnull %57, ptr noundef nonnull %59, ptr noundef nonnull @is_gimple_lvalue, i32 noundef 3) #20
  %284 = load ptr, ptr %0, align 8, !tbaa !11
  %285 = getelementptr inbounds %struct.tree_exp, ptr %284, i64 1
  %286 = call i32 @gimplify_expr(ptr noundef nonnull %285, ptr noundef nonnull %57, ptr noundef nonnull %59, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %287 = load ptr, ptr %0, align 8, !tbaa !11
  %288 = getelementptr inbounds %struct.tree_exp, ptr %287, i64 1, i32 0, i32 1
  %289 = call i32 @gimplify_expr(ptr noundef nonnull %288, ptr noundef nonnull %57, ptr noundef nonnull %59, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %290 = load ptr, ptr %0, align 8, !tbaa !11
  call void @recalculate_side_effects(ptr noundef %290) #21
  %291 = call i32 @llvm.smin.i32(i32 %286, i32 %289)
  %292 = call i32 @llvm.smin.i32(i32 %283, i32 %291)
  br label %545

293:                                              ; preds = %110
  %294 = getelementptr inbounds %struct.tree_exp, ptr %111, i64 0, i32 3
  %295 = load ptr, ptr %294, align 8, !tbaa !6
  %296 = icmp eq ptr %295, null
  br i1 %296, label %299, label %297

297:                                              ; preds = %293
  %298 = call i32 @gimplify_expr(ptr noundef nonnull %294, ptr noundef nonnull %57, ptr noundef nonnull %59, ptr noundef nonnull @is_gimple_lvalue, i32 noundef 3) #20
  br label %305

299:                                              ; preds = %293
  %300 = getelementptr inbounds %struct.tree_exp, ptr %111, i64 1
  %301 = load ptr, ptr %300, align 8, !tbaa !6
  %302 = icmp eq ptr %301, null
  br i1 %302, label %305, label %303

303:                                              ; preds = %299
  %304 = call i32 @gimplify_expr(ptr noundef nonnull %300, ptr noundef nonnull %57, ptr noundef nonnull %59, ptr noundef nonnull @is_gimple_val, i32 noundef 3) #20
  br label %305

305:                                              ; preds = %299, %303, %297
  %306 = phi i32 [ %298, %297 ], [ %304, %303 ], [ 1, %299 ]
  %307 = load ptr, ptr %0, align 8, !tbaa !11
  %308 = getelementptr inbounds %struct.tree_exp, ptr %307, i64 1, i32 0, i32 1
  %309 = load ptr, ptr %308, align 8, !tbaa !6
  %310 = icmp eq ptr %309, null
  br i1 %310, label %313, label %311

311:                                              ; preds = %305
  %312 = call i32 @gimplify_expr(ptr noundef nonnull %308, ptr noundef nonnull %57, ptr noundef nonnull %59, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  br label %313

313:                                              ; preds = %311, %305
  %314 = phi i32 [ %312, %311 ], [ 1, %305 ]
  %315 = call i32 @llvm.smin.i32(i32 %306, i32 %314)
  br label %545

316:                                              ; preds = %110
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6848, ptr noundef nonnull @.str.1) #21
  br label %317

317:                                              ; preds = %110, %316
  %318 = call fastcc i32 @gimplify_asm_expr(ptr noundef nonnull %0, ptr noundef nonnull %57, ptr noundef nonnull %59) #20, !range !60
  br label %545

319:                                              ; preds = %110, %110
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #22
  store ptr null, ptr %14, align 8, !tbaa !11
  store ptr null, ptr %13, align 8, !tbaa !11
  %320 = getelementptr inbounds %struct.tree_exp, ptr %111, i64 0, i32 3
  %321 = load ptr, ptr %320, align 8, !tbaa !6
  call void @gimplify_and_add(ptr noundef %321, ptr noundef nonnull %13) #20
  %322 = load ptr, ptr %0, align 8, !tbaa !11
  %323 = getelementptr inbounds %struct.tree_exp, ptr %322, i64 1
  %324 = load ptr, ptr %323, align 8, !tbaa !6
  call void @gimplify_and_add(ptr noundef %324, ptr noundef nonnull %14) #20
  %325 = load ptr, ptr %14, align 8, !tbaa !11
  %326 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %325) #20, !range !5
  %327 = icmp eq i8 %326, 0
  %328 = load ptr, ptr %13, align 8, !tbaa !11
  br i1 %327, label %330, label %329

329:                                              ; preds = %319
  call void @gimple_seq_add_seq(ptr noundef nonnull %57, ptr noundef %328) #21
  br label %347

330:                                              ; preds = %319
  %331 = load ptr, ptr %0, align 8, !tbaa !11
  %332 = load i64, ptr %331, align 8
  %333 = and i64 %332, 65535
  %334 = icmp eq i64 %333, 131
  %335 = select i1 %334, i32 2, i32 1
  %336 = call ptr @gimple_build_try(ptr noundef %328, ptr noundef %325, i32 noundef %335) #21
  %337 = load ptr, ptr %0, align 8, !tbaa !11
  %338 = load i64, ptr %337, align 8
  %339 = and i64 %338, 65535
  %340 = icmp eq i64 %339, 130
  br i1 %340, label %341, label %346

341:                                              ; preds = %330
  %342 = trunc i64 %338 to i32
  %343 = lshr i32 %342, 26
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  call fastcc void @gimple_try_set_catch_is_cleanup(ptr noundef %336, i8 noundef zeroext %345) #20
  br label %346

346:                                              ; preds = %341, %330
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %57, ptr noundef %336) #20
  br label %347

347:                                              ; preds = %346, %329
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #22
  br label %563

348:                                              ; preds = %110
  %349 = call fastcc i32 @gimplify_cleanup_point_expr(ptr noundef nonnull %0, ptr noundef nonnull %57) #20, !range !61
  br label %545

350:                                              ; preds = %110
  %351 = call fastcc i32 @gimplify_target_expr(ptr noundef nonnull %0, ptr noundef nonnull %57, ptr noundef nonnull %59) #20, !range !65
  br label %545

352:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #22
  store ptr null, ptr %15, align 8, !tbaa !11
  %353 = getelementptr inbounds %struct.tree_exp, ptr %111, i64 1
  %354 = load ptr, ptr %353, align 8, !tbaa !6
  call void @gimplify_and_add(ptr noundef %354, ptr noundef nonnull %15) #20
  %355 = load ptr, ptr %0, align 8, !tbaa !11
  %356 = getelementptr inbounds %struct.tree_exp, ptr %355, i64 0, i32 3
  %357 = load ptr, ptr %356, align 8, !tbaa !6
  %358 = load ptr, ptr %15, align 8, !tbaa !11
  %359 = call ptr @gimple_build_catch(ptr noundef %357, ptr noundef %358) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %57, ptr noundef %359) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #22
  br label %563

360:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #22
  store ptr null, ptr %16, align 8, !tbaa !11
  %361 = getelementptr inbounds %struct.tree_exp, ptr %111, i64 1
  %362 = load ptr, ptr %361, align 8, !tbaa !6
  call void @gimplify_and_add(ptr noundef %362, ptr noundef nonnull %16) #20
  %363 = load ptr, ptr %0, align 8, !tbaa !11
  %364 = getelementptr inbounds %struct.tree_exp, ptr %363, i64 0, i32 3
  %365 = load ptr, ptr %364, align 8, !tbaa !6
  %366 = load ptr, ptr %16, align 8, !tbaa !11
  %367 = call ptr @gimple_build_eh_filter(ptr noundef %365, ptr noundef %366) #21
  %368 = load ptr, ptr %0, align 8, !tbaa !11
  %369 = load i64, ptr %368, align 8
  %370 = lshr i64 %369, 23
  %371 = trunc i64 %370 to i8
  %372 = and i8 %371, 1
  call fastcc void @gimple_set_no_warning(ptr noundef %367, i8 noundef zeroext %372) #20
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %57, ptr noundef %367) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #22
  br label %563

373:                                              ; preds = %110
  %374 = getelementptr inbounds %struct.tree_exp, ptr %111, i64 1
  %375 = call i32 @gimplify_expr(ptr noundef nonnull %374, ptr noundef nonnull %57, ptr noundef nonnull %59, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %376 = load ptr, ptr %0, align 8, !tbaa !11
  %377 = getelementptr inbounds %struct.tree_exp, ptr %376, i64 0, i32 3
  %378 = call i32 @gimplify_expr(ptr noundef nonnull %377, ptr noundef nonnull %57, ptr noundef nonnull %59, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %379 = load ptr, ptr %0, align 8, !tbaa !11
  %380 = load i64, ptr %379, align 8
  %381 = and i64 %380, -65537
  store i64 %381, ptr %379, align 8
  %382 = call i32 @llvm.smin.i32(i32 %375, i32 %378)
  br label %545

383:                                              ; preds = %110
  %384 = or i64 %112, 65536
  store i64 %384, ptr %111, align 8
  br label %563

385:                                              ; preds = %110
  %386 = call fastcc i32 @gimplify_statement_list(ptr noundef nonnull %0, ptr noundef nonnull %57) #20, !range !61
  br label %545

387:                                              ; preds = %110
  %388 = getelementptr inbounds %struct.tree_exp, ptr %111, i64 0, i32 3
  %389 = call i32 @gimplify_expr(ptr noundef nonnull %388, ptr noundef nonnull %57, ptr noundef %84, ptr noundef %3, i32 noundef %4) #20
  %390 = load ptr, ptr %0, align 8, !tbaa !11
  %391 = getelementptr inbounds %struct.tree_exp, ptr %390, i64 1
  %392 = call i32 @gimplify_expr(ptr noundef nonnull %391, ptr noundef nonnull %57, ptr noundef nonnull %59, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  br label %548

393:                                              ; preds = %110, %110
  %394 = call fastcc i32 @gimplify_var_or_parm_decl(ptr noundef nonnull %0) #20, !range !60
  br label %545

395:                                              ; preds = %110
  %396 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !11
  %397 = icmp eq ptr %396, null
  br i1 %397, label %563, label %398

398:                                              ; preds = %395
  %399 = call fastcc zeroext i8 @omp_notice_variable(ptr noundef nonnull %396, ptr noundef nonnull %111) #20
  br label %563

400:                                              ; preds = %110
  call fastcc void @gimplify_omp_parallel(ptr noundef nonnull %0, ptr noundef nonnull %57) #20
  br label %563

401:                                              ; preds = %110
  call fastcc void @gimplify_omp_task(ptr noundef nonnull %0, ptr noundef nonnull %57) #20
  br label %563

402:                                              ; preds = %110
  %403 = call fastcc i32 @gimplify_omp_for(ptr noundef nonnull %0, ptr noundef nonnull %57) #20, !range !60
  br label %545

404:                                              ; preds = %110, %110
  call fastcc void @gimplify_omp_workshare(ptr noundef nonnull %0, ptr noundef nonnull %57) #20
  br label %563

405:                                              ; preds = %110, %110, %110, %110
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #22
  store ptr null, ptr %17, align 8, !tbaa !11
  %406 = getelementptr inbounds %struct.tree_exp, ptr %111, i64 0, i32 3
  %407 = load ptr, ptr %406, align 8, !tbaa !6
  call void @gimplify_and_add(ptr noundef %407, ptr noundef nonnull %17) #20
  %408 = load ptr, ptr %0, align 8, !tbaa !11
  %409 = load i64, ptr %408, align 8
  %410 = trunc i64 %409 to i16
  switch i16 %410, label %425 [
    i16 158, label %411
    i16 159, label %414
    i16 160, label %417
    i16 161, label %420
  ]

411:                                              ; preds = %405
  %412 = load ptr, ptr %17, align 8, !tbaa !11
  %413 = call ptr @gimple_build_omp_section(ptr noundef %412) #21
  br label %426

414:                                              ; preds = %405
  %415 = load ptr, ptr %17, align 8, !tbaa !11
  %416 = call ptr @gimple_build_omp_master(ptr noundef %415) #21
  br label %426

417:                                              ; preds = %405
  %418 = load ptr, ptr %17, align 8, !tbaa !11
  %419 = call ptr @gimple_build_omp_ordered(ptr noundef %418) #21
  br label %426

420:                                              ; preds = %405
  %421 = load ptr, ptr %17, align 8, !tbaa !11
  %422 = getelementptr inbounds %struct.tree_exp, ptr %408, i64 1
  %423 = load ptr, ptr %422, align 8, !tbaa !6
  %424 = call ptr @gimple_build_omp_critical(ptr noundef %421, ptr noundef %423) #21
  br label %426

425:                                              ; preds = %405
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7010, ptr noundef nonnull @.str.1) #21
  unreachable

426:                                              ; preds = %420, %417, %414, %411
  %427 = phi ptr [ %424, %420 ], [ %419, %417 ], [ %416, %414 ], [ %413, %411 ]
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %57, ptr noundef %427) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #22
  br label %563

428:                                              ; preds = %110
  %429 = call fastcc i32 @gimplify_omp_atomic(ptr noundef nonnull %0, ptr noundef nonnull %57) #20, !range !60
  br label %545

430:                                              ; preds = %110
  %431 = getelementptr inbounds %struct.tree_exp, ptr %111, i64 1
  %432 = load ptr, ptr %431, align 8, !tbaa !6
  %433 = load i64, ptr %432, align 8
  %434 = and i64 %433, 65535
  %435 = icmp eq i64 %434, 23
  br i1 %435, label %436, label %454

436:                                              ; preds = %430
  %437 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 66), align 4, !tbaa !26
  %438 = add i32 %437, -4
  %439 = icmp ult i32 %438, 7
  br i1 %439, label %440, label %443

440:                                              ; preds = %436
  %441 = getelementptr inbounds %struct.tree_exp, ptr %111, i64 0, i32 1
  %442 = load i32, ptr %441, align 8, !tbaa !6
  br label %443

443:                                              ; preds = %436, %440
  %444 = phi i32 [ %442, %440 ], [ 0, %436 ]
  %445 = getelementptr inbounds %struct.tree_exp, ptr %111, i64 0, i32 3
  %446 = load ptr, ptr %445, align 8, !tbaa !6
  %447 = getelementptr inbounds %struct.tree_common, ptr %111, i64 0, i32 2
  %448 = load ptr, ptr %447, align 8, !tbaa !6
  %449 = call ptr @maybe_fold_offset_to_address(i32 noundef %444, ptr noundef %446, ptr noundef nonnull %432, ptr noundef %448) #21
  store ptr %449, ptr %6, align 8, !tbaa !11
  %450 = icmp eq ptr %449, null
  br i1 %450, label %451, label %453

451:                                              ; preds = %443
  %452 = load ptr, ptr %0, align 8, !tbaa !11
  br label %454

453:                                              ; preds = %443
  store ptr %449, ptr %0, align 8, !tbaa !11
  br label %548

454:                                              ; preds = %451, %430
  %455 = phi ptr [ %452, %451 ], [ %111, %430 ]
  %456 = getelementptr inbounds %struct.tree_exp, ptr %455, i64 0, i32 3
  %457 = load ptr, ptr %456, align 8, !tbaa !6
  %458 = load i64, ptr %457, align 8
  %459 = and i64 %458, 65535
  %460 = icmp eq i64 %459, 116
  br i1 %460, label %461, label %493

461:                                              ; preds = %454
  %462 = getelementptr inbounds %struct.tree_exp, ptr %455, i64 1
  %463 = load ptr, ptr %462, align 8, !tbaa !6
  %464 = load i64, ptr %463, align 8
  %465 = and i64 %464, 65535
  %466 = icmp eq i64 %465, 23
  br i1 %466, label %467, label %493

467:                                              ; preds = %461
  %468 = getelementptr inbounds %struct.tree_exp, ptr %457, i64 0, i32 3
  %469 = load ptr, ptr %468, align 8, !tbaa !6
  %470 = getelementptr inbounds %struct.tree_common, ptr %469, i64 0, i32 2
  %471 = load ptr, ptr %470, align 8, !tbaa !6
  %472 = load i64, ptr %471, align 8
  %473 = trunc i64 %472 to i16
  switch i16 %473, label %493 [
    i16 10, label %474
    i16 12, label %474
  ]

474:                                              ; preds = %467, %467
  %475 = load i64, ptr %455, align 8
  %476 = and i64 %475, 65535
  %477 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %476
  %478 = load i32, ptr %477, align 4, !tbaa !26
  %479 = add i32 %478, -4
  %480 = icmp ult i32 %479, 7
  br i1 %480, label %481, label %484

481:                                              ; preds = %474
  %482 = getelementptr inbounds %struct.tree_exp, ptr %455, i64 0, i32 1
  %483 = load i32, ptr %482, align 8, !tbaa !6
  br label %484

484:                                              ; preds = %474, %481
  %485 = phi i32 [ %483, %481 ], [ 0, %474 ]
  %486 = call ptr @maybe_fold_offset_to_address(i32 noundef %485, ptr noundef nonnull %469, ptr noundef nonnull %463, ptr noundef nonnull %471) #21
  store ptr %486, ptr %6, align 8, !tbaa !11
  %487 = icmp eq ptr %486, null
  %488 = load ptr, ptr %0, align 8, !tbaa !11
  br i1 %487, label %493, label %489

489:                                              ; preds = %484
  %490 = getelementptr inbounds %struct.tree_common, ptr %488, i64 0, i32 2
  %491 = load ptr, ptr %490, align 8, !tbaa !6
  %492 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %491, ptr noundef nonnull %486) #21
  store ptr %492, ptr %0, align 8, !tbaa !11
  br label %548

493:                                              ; preds = %467, %454, %461, %484, %110
  %494 = phi ptr [ %455, %467 ], [ %455, %454 ], [ %455, %461 ], [ %488, %484 ], [ %111, %110 ]
  %495 = load i64, ptr %494, align 8
  %496 = and i64 %495, 65535
  %497 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %496
  %498 = load i32, ptr %497, align 4, !tbaa !26
  switch i32 %498, label %535 [
    i32 5, label %499
    i32 6, label %524
    i32 7, label %527
    i32 3, label %563
    i32 1, label %563
  ]

499:                                              ; preds = %493
  %500 = getelementptr inbounds %struct.tree_exp, ptr %494, i64 1
  %501 = load ptr, ptr %500, align 8, !tbaa !6
  %502 = getelementptr inbounds %struct.tree_common, ptr %501, i64 0, i32 2
  %503 = load ptr, ptr %502, align 8, !tbaa !6
  %504 = load i64, ptr %503, align 8
  %505 = trunc i64 %504 to i32
  %506 = and i32 %505, 65535
  %507 = add nsw i32 %506, -15
  %508 = icmp ult i32 %507, 4
  br i1 %508, label %509, label %527

509:                                              ; preds = %499
  %510 = and i64 %504, 65535
  %511 = icmp eq i64 %510, 14
  br i1 %511, label %512, label %514

512:                                              ; preds = %509
  %513 = call i32 @vector_type_mode(ptr noundef nonnull %503) #21
  br label %519

514:                                              ; preds = %509
  %515 = getelementptr inbounds %struct.tree_type, ptr %503, i64 0, i32 6
  %516 = load i32, ptr %515, align 4
  %517 = lshr i32 %516, 16
  %518 = and i32 %517, 255
  br label %519

519:                                              ; preds = %514, %512
  %520 = phi i32 [ %513, %512 ], [ %518, %514 ]
  %521 = icmp eq i32 %520, 1
  br i1 %521, label %523, label %522

522:                                              ; preds = %519
  call fastcc void @gimplify_scalar_mode_aggregate_compare(ptr noundef nonnull %0) #20
  br label %542

523:                                              ; preds = %519
  call fastcc void @gimplify_variable_sized_compare(ptr noundef nonnull %0) #20
  br label %542

524:                                              ; preds = %493
  %525 = getelementptr inbounds %struct.tree_exp, ptr %494, i64 0, i32 3
  %526 = call i32 @gimplify_expr(ptr noundef nonnull %525, ptr noundef nonnull %57, ptr noundef nonnull %59, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  br label %542

527:                                              ; preds = %499, %535, %540, %493
  %528 = phi ptr [ %494, %499 ], [ %494, %535 ], [ %541, %540 ], [ %494, %493 ]
  %529 = getelementptr inbounds %struct.tree_exp, ptr %528, i64 0, i32 3
  %530 = call i32 @gimplify_expr(ptr noundef nonnull %529, ptr noundef nonnull %57, ptr noundef nonnull %59, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %531 = load ptr, ptr %0, align 8, !tbaa !11
  %532 = getelementptr inbounds %struct.tree_exp, ptr %531, i64 1
  %533 = call i32 @gimplify_expr(ptr noundef nonnull %532, ptr noundef nonnull %57, ptr noundef nonnull %59, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %534 = call i32 @llvm.smin.i32(i32 %530, i32 %533)
  br label %542

535:                                              ; preds = %493
  %536 = trunc i64 %495 to i32
  %537 = and i32 %536, 65535
  %538 = add nsw i32 %537, -93
  %539 = icmp ult i32 %538, 3
  br i1 %539, label %527, label %540

540:                                              ; preds = %535
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7106, ptr noundef nonnull @.str.1) #21
  %541 = load ptr, ptr %0, align 8, !tbaa !11
  br label %527

542:                                              ; preds = %523, %522, %527, %524
  %543 = phi i32 [ %534, %527 ], [ %526, %524 ], [ 0, %522 ], [ 0, %523 ]
  %544 = load ptr, ptr %0, align 8, !tbaa !11
  call void @recalculate_side_effects(ptr noundef %544) #21
  br label %545

545:                                              ; preds = %542, %123, %125, %118, %120, %428, %402, %393, %385, %373, %350, %348, %317, %313, %281, %279, %249, %221, %205, %202, %200, %191, %182, %150, %148, %144, %132, %129, %116, %114
  %546 = phi i32 [ %543, %542 ], [ %429, %428 ], [ %403, %402 ], [ %394, %393 ], [ %386, %385 ], [ %382, %373 ], [ %351, %350 ], [ %349, %348 ], [ %318, %317 ], [ %315, %313 ], [ %292, %281 ], [ %280, %279 ], [ %250, %249 ], [ %223, %221 ], [ %206, %205 ], [ %203, %202 ], [ %201, %200 ], [ %194, %191 ], [ %185, %182 ], [ %151, %150 ], [ %149, %148 ], [ %146, %144 ], [ %133, %132 ], [ %130, %129 ], [ %124, %125 ], [ %124, %123 ], [ %119, %120 ], [ %119, %118 ], [ %117, %116 ], [ %115, %114 ]
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %548, label %558

548:                                              ; preds = %131, %134, %141, %179, %176, %187, %197, %207, %277, %275, %387, %489, %453, %545
  %549 = load ptr, ptr %0, align 8, !tbaa !11
  %550 = icmp eq ptr %549, null
  %551 = icmp eq ptr %549, %94
  %552 = or i1 %550, %551
  br i1 %552, label %563, label %553

553:                                              ; preds = %548, %108
  %554 = phi ptr [ %549, %548 ], [ %106, %108 ]
  %555 = call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef nonnull %554) #21
  store ptr %555, ptr %0, align 8, !tbaa !11
  %556 = load ptr, ptr @global_trees, align 16, !tbaa !11
  %557 = icmp eq ptr %555, %556
  br i1 %557, label %560, label %92, !llvm.loop !66

558:                                              ; preds = %545, %100
  %559 = phi i32 [ %102, %100 ], [ %546, %545 ]
  switch i32 %559, label %563 [
    i32 -2, label %560
    i32 -1, label %562
  ]

560:                                              ; preds = %92, %553, %214, %78, %558
  br i1 %21, label %561, label %726

561:                                              ; preds = %560
  store ptr null, ptr %0, align 8, !tbaa !11
  br label %726

562:                                              ; preds = %558
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7133, ptr noundef nonnull @.str.1) #21
  br label %563

563:                                              ; preds = %548, %161, %251, %110, %110, %110, %110, %110, %110, %110, %493, %493, %105, %426, %404, %401, %400, %383, %360, %352, %347, %248, %243, %225, %204, %398, %395, %558, %562
  %564 = phi i32 [ %559, %558 ], [ -1, %562 ], [ 1, %395 ], [ 1, %398 ], [ 1, %204 ], [ 1, %225 ], [ 1, %243 ], [ 1, %248 ], [ 1, %347 ], [ 1, %352 ], [ 1, %360 ], [ 1, %383 ], [ 1, %400 ], [ 1, %401 ], [ 1, %404 ], [ 1, %426 ], [ 1, %548 ], [ 1, %161 ], [ 1, %251 ], [ 1, %110 ], [ 1, %110 ], [ 1, %110 ], [ 1, %110 ], [ 1, %110 ], [ 1, %110 ], [ 1, %110 ], [ 1, %493 ], [ 1, %493 ], [ 0, %105 ]
  br i1 %87, label %565, label %620

565:                                              ; preds = %563
  %566 = load ptr, ptr %0, align 8, !tbaa !11
  %567 = icmp eq ptr %566, null
  br i1 %567, label %622, label %568

568:                                              ; preds = %565
  %569 = call zeroext i8 @is_gimple_stmt(ptr noundef nonnull %566) #21
  %570 = icmp eq i8 %569, 0
  br i1 %570, label %571, label %622

571:                                              ; preds = %568
  %572 = load ptr, ptr %0, align 8, !tbaa !11
  %573 = load i64, ptr %572, align 8
  %574 = and i64 %573, 65536
  %575 = icmp eq i64 %574, 0
  br i1 %575, label %622, label %576

576:                                              ; preds = %571
  %577 = and i64 %573, 524288
  %578 = icmp eq i64 %577, 0
  br i1 %578, label %579, label %591

579:                                              ; preds = %576
  %580 = trunc i64 %573 to i16
  switch i16 %580, label %590 [
    i16 41, label %581
    i16 43, label %581
    i16 44, label %581
    i16 118, label %581
    i16 45, label %584
    i16 46, label %584
  ]

581:                                              ; preds = %579, %579, %579, %579
  %582 = getelementptr inbounds %struct.tree_exp, ptr %572, i64 0, i32 3
  %583 = call i32 @gimplify_expr(ptr noundef nonnull %582, ptr noundef nonnull %57, ptr noundef nonnull %59, ptr noundef %3, i32 noundef 0) #20
  br label %622

584:                                              ; preds = %579, %579
  %585 = getelementptr inbounds %struct.tree_exp, ptr %572, i64 0, i32 3
  %586 = call i32 @gimplify_expr(ptr noundef nonnull %585, ptr noundef nonnull %57, ptr noundef nonnull %59, ptr noundef %3, i32 noundef 0) #20
  %587 = load ptr, ptr %0, align 8, !tbaa !11
  %588 = getelementptr inbounds %struct.tree_exp, ptr %587, i64 1
  %589 = call i32 @gimplify_expr(ptr noundef nonnull %588, ptr noundef nonnull %57, ptr noundef nonnull %59, ptr noundef %3, i32 noundef 0) #20
  br label %622

590:                                              ; preds = %579
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7168, ptr noundef nonnull @.str.1) #21
  br label %622

591:                                              ; preds = %576
  %592 = getelementptr inbounds %struct.tree_common, ptr %572, i64 0, i32 2
  %593 = load ptr, ptr %592, align 8, !tbaa !6
  %594 = getelementptr inbounds %struct.tree_type, ptr %593, i64 0, i32 2
  %595 = load ptr, ptr %594, align 8, !tbaa !6
  %596 = icmp eq ptr %595, null
  br i1 %596, label %622, label %597

597:                                              ; preds = %591
  %598 = load i64, ptr %593, align 8
  %599 = and i64 %598, 65535
  %600 = icmp eq i64 %599, 14
  br i1 %600, label %601, label %603

601:                                              ; preds = %597
  %602 = call i32 @vector_type_mode(ptr noundef nonnull %593) #21
  br label %608

603:                                              ; preds = %597
  %604 = getelementptr inbounds %struct.tree_type, ptr %593, i64 0, i32 6
  %605 = load i32, ptr %604, align 4
  %606 = lshr i32 %605, 16
  %607 = and i32 %606, 255
  br label %608

608:                                              ; preds = %603, %601
  %609 = phi i32 [ %602, %601 ], [ %607, %603 ]
  %610 = icmp eq i32 %609, 1
  br i1 %610, label %622, label %611

611:                                              ; preds = %608
  %612 = load ptr, ptr %0, align 8, !tbaa !11
  %613 = getelementptr inbounds %struct.tree_common, ptr %612, i64 0, i32 2
  %614 = load ptr, ptr %613, align 8, !tbaa !6
  %615 = getelementptr inbounds %struct.tree_type, ptr %614, i64 0, i32 16
  %616 = load ptr, ptr %615, align 8, !tbaa !6
  %617 = call ptr @create_tmp_var_raw(ptr noundef %616, ptr noundef nonnull @.str.5) #20
  call void @gimple_add_tmp_var(ptr noundef %617) #20
  %618 = load ptr, ptr %0, align 8, !tbaa !11
  %619 = call ptr @gimplify_assign(ptr noundef %617, ptr noundef %618, ptr noundef nonnull %57) #21
  br label %622

620:                                              ; preds = %196, %563
  %621 = phi i32 [ %564, %563 ], [ 1, %196 ]
  br i1 %21, label %622, label %645

622:                                              ; preds = %591, %608, %581, %584, %590, %571, %565, %568, %611, %620
  %623 = phi i32 [ %564, %565 ], [ %564, %568 ], [ %564, %611 ], [ %621, %620 ], [ %564, %571 ], [ %564, %590 ], [ %564, %584 ], [ %564, %581 ], [ %564, %608 ], [ %564, %591 ]
  store ptr null, ptr %0, align 8, !tbaa !11
  %624 = load ptr, ptr %7, align 8, !tbaa !11
  %625 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %624) #20, !range !5
  %626 = icmp eq i8 %625, 0
  %627 = load ptr, ptr %8, align 8, !tbaa !11
  br i1 %626, label %631, label %628

628:                                              ; preds = %622
  %629 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %627) #20, !range !5
  %630 = icmp eq i8 %629, 0
  br i1 %630, label %631, label %633

631:                                              ; preds = %628, %622
  call fastcc void @gimplify_seq_add_seq(ptr noundef nonnull %7, ptr noundef %627) #20
  %632 = load ptr, ptr %7, align 8, !tbaa !11
  call fastcc void @gimplify_seq_add_seq(ptr noundef nonnull %57, ptr noundef %632) #20
  br label %633

633:                                              ; preds = %631, %628
  %634 = load ptr, ptr %57, align 8, !tbaa !11
  %635 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %634) #20, !range !5
  %636 = icmp eq i8 %635, 0
  br i1 %636, label %637, label %639

637:                                              ; preds = %633
  %638 = load i32, ptr @input_location, align 4, !tbaa !26
  call fastcc void @annotate_all_with_location_after(ptr noundef %634, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %9, i32 noundef %638) #20
  br label %639

639:                                              ; preds = %637, %633
  %640 = load ptr, ptr %59, align 8, !tbaa !11
  %641 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %640) #20, !range !5
  %642 = icmp eq i8 %641, 0
  br i1 %642, label %643, label %726

643:                                              ; preds = %639
  %644 = load i32, ptr @input_location, align 4, !tbaa !26
  call fastcc void @annotate_all_with_location_after(ptr noundef %640, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %10, i32 noundef %644) #20
  br label %726

645:                                              ; preds = %620
  %646 = load ptr, ptr %8, align 8, !tbaa !11
  %647 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %646) #20, !range !5
  %648 = icmp eq i8 %647, 0
  br i1 %648, label %653, label %649

649:                                              ; preds = %645
  %650 = load ptr, ptr %0, align 8, !tbaa !11
  %651 = call zeroext i8 %3(ptr noundef %650) #21
  %652 = icmp eq i8 %651, 0
  br i1 %652, label %653, label %726

653:                                              ; preds = %649, %645
  %654 = icmp ne i32 %85, 0
  br i1 %654, label %655, label %674

655:                                              ; preds = %653
  %656 = load ptr, ptr %8, align 8, !tbaa !11
  %657 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %656) #20, !range !5
  %658 = icmp eq i8 %657, 0
  br i1 %658, label %674, label %659

659:                                              ; preds = %655
  %660 = load ptr, ptr %0, align 8, !tbaa !11
  %661 = call zeroext i8 @is_gimple_addressable(ptr noundef %660) #21
  %662 = icmp eq i8 %661, 0
  br i1 %662, label %674, label %663

663:                                              ; preds = %659
  %664 = load i32, ptr @input_location, align 4, !tbaa !26
  %665 = load ptr, ptr %0, align 8, !tbaa !11
  %666 = call ptr @build_fold_addr_expr_loc(i32 noundef %664, ptr noundef %665) #21
  store ptr %666, ptr %6, align 8, !tbaa !11
  %667 = call i32 @gimplify_expr(ptr noundef nonnull %6, ptr noundef nonnull %57, ptr noundef nonnull %59, ptr noundef nonnull @is_gimple_reg, i32 noundef 1) #20
  %668 = load ptr, ptr %6, align 8, !tbaa !11
  %669 = getelementptr inbounds %struct.tree_common, ptr %668, i64 0, i32 2
  %670 = load ptr, ptr %669, align 8, !tbaa !6
  %671 = getelementptr inbounds %struct.tree_common, ptr %670, i64 0, i32 2
  %672 = load ptr, ptr %671, align 8, !tbaa !6
  %673 = call ptr @build1_stat(i32 noundef 47, ptr noundef %672, ptr noundef %668) #21
  store ptr %673, ptr %0, align 8, !tbaa !11
  br label %714

674:                                              ; preds = %659, %655, %653
  %675 = and i32 %4, 1
  %676 = icmp eq i32 %675, 0
  br i1 %676, label %710, label %677

677:                                              ; preds = %674
  %678 = load ptr, ptr %0, align 8, !tbaa !11
  %679 = call zeroext i8 @is_gimple_reg_rhs_or_call(ptr noundef %678) #20, !range !5
  %680 = icmp eq i8 %679, 0
  br i1 %680, label %710, label %681

681:                                              ; preds = %677
  %682 = getelementptr inbounds %struct.tree_common, ptr %678, i64 0, i32 2
  %683 = load ptr, ptr %682, align 8, !tbaa !6
  %684 = load i64, ptr %683, align 8
  %685 = and i64 %684, 65535
  %686 = icmp eq i64 %685, 19
  br i1 %686, label %687, label %688

687:                                              ; preds = %681
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7289, ptr noundef nonnull @.str.1) #21
  br label %688

688:                                              ; preds = %681, %687
  %689 = load ptr, ptr %8, align 8, !tbaa !11
  %690 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %689) #20, !range !5
  %691 = icmp eq i8 %690, 0
  %692 = or i1 %654, %691
  %693 = load ptr, ptr %0, align 8, !tbaa !11
  br i1 %692, label %694, label %708

694:                                              ; preds = %688
  %695 = call ptr @get_initialized_tmp_var(ptr noundef %693, ptr noundef nonnull %57, ptr noundef nonnull %59) #20
  store ptr %695, ptr %0, align 8, !tbaa !11
  %696 = getelementptr inbounds %struct.tree_common, ptr %695, i64 0, i32 2
  %697 = load ptr, ptr %696, align 8, !tbaa !6
  %698 = load i64, ptr %697, align 8
  %699 = trunc i64 %698 to i32
  %700 = and i32 %699, 65535
  %701 = add nsw i32 %700, -13
  %702 = icmp ult i32 %701, 2
  br i1 %702, label %703, label %714

703:                                              ; preds = %694
  %704 = getelementptr inbounds %struct.tree_decl_common, ptr %695, i64 0, i32 2
  %705 = load i64, ptr %704, align 8
  %706 = or i64 %705, 134217728
  store i64 %706, ptr %704, align 8
  %707 = load ptr, ptr %0, align 8, !tbaa !11
  br label %714

708:                                              ; preds = %688
  %709 = call ptr @get_formal_tmp_var(ptr noundef %693, ptr noundef nonnull %57) #20
  store ptr %709, ptr %0, align 8, !tbaa !11
  br label %714

710:                                              ; preds = %677, %674
  %711 = and i32 %4, 4
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %713, label %726

713:                                              ; preds = %710
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7315, ptr noundef nonnull @.str.1) #21
  br label %726

714:                                              ; preds = %694, %703, %708, %663
  %715 = phi ptr [ %695, %694 ], [ %707, %703 ], [ %709, %708 ], [ %673, %663 ]
  %716 = call zeroext i8 %3(ptr noundef %715) #21
  %717 = icmp eq i8 %716, 0
  br i1 %717, label %718, label %719

718:                                              ; preds = %714
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7325, ptr noundef nonnull @.str.1) #21
  br label %719

719:                                              ; preds = %714, %718
  %720 = load ptr, ptr %8, align 8, !tbaa !11
  %721 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %720) #20, !range !5
  %722 = icmp eq i8 %721, 0
  br i1 %722, label %723, label %726

723:                                              ; preds = %719
  %724 = load i32, ptr @input_location, align 4, !tbaa !26
  call void @annotate_all_with_location(ptr noundef %720, i32 noundef %724) #20
  %725 = load ptr, ptr %8, align 8, !tbaa !11
  call fastcc void @gimplify_seq_add_seq(ptr noundef nonnull %57, ptr noundef %725) #20
  br label %726

726:                                              ; preds = %713, %710, %719, %723, %649, %639, %643, %560, %561
  %727 = phi i32 [ -2, %561 ], [ -2, %560 ], [ %623, %639 ], [ %623, %643 ], [ %621, %649 ], [ %621, %719 ], [ %621, %723 ], [ -2, %710 ], [ -2, %713 ]
  store i32 %62, ptr @input_location, align 4, !tbaa !26
  br label %728

728:                                              ; preds = %5, %726
  %729 = phi i32 [ %727, %726 ], [ 1, %5 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  ret i32 %729
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_stmt(ptr noundef) #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @omp_firstprivatize_variable(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %34, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !26
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %34

10:                                               ; preds = %4
  %11 = ptrtoint ptr %1 to i64
  br label %12

12:                                               ; preds = %10, %31
  %13 = phi ptr [ %32, %31 ], [ %0, %10 ]
  %14 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !33
  %16 = tail call ptr @splay_tree_lookup(ptr noundef %15, i64 noundef %11) #21
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.splay_tree_node_s, ptr %16, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !34
  %21 = and i64 %20, 4
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %18
  %24 = and i64 %20, 1
  %25 = or disjoint i64 %24, 16
  store i64 %25, ptr %19, align 8, !tbaa !34
  br label %31

26:                                               ; preds = %12
  %27 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %13, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !28
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call fastcc void @omp_add_variable(ptr noundef nonnull %13, ptr noundef nonnull %1, i32 noundef 16) #20
  br label %31

31:                                               ; preds = %26, %30, %23
  %32 = load ptr, ptr %13, align 8, !tbaa !30
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %12, !llvm.loop !67

34:                                               ; preds = %31, %18, %2, %4
  ret void
}

; Function Attrs: optsize
declare ptr @splay_tree_lookup(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @is_gimple_val(ptr noundef) #6

; Function Attrs: optsize
declare zeroext i8 @is_gimple_call_addr(ptr noundef) #6

; Function Attrs: optsize
declare zeroext i8 @is_gimple_condexpr(ptr noundef) #6

; Function Attrs: optsize
declare zeroext i8 @is_gimple_mem_rhs(ptr noundef) #6

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg_rhs(ptr noundef) #6

; Function Attrs: optsize
declare zeroext i8 @is_gimple_asm_val(ptr noundef) #6

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_lval(ptr noundef) #6

; Function Attrs: optsize
declare zeroext i8 @is_gimple_lvalue(ptr noundef) #6

; Function Attrs: optsize
declare zeroext i8 @is_gimple_addressable(ptr noundef) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #14 {
  %3 = tail call fastcc ptr @gimple_seq_last(ptr noundef %1) #20
  store ptr %3, ptr %0, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !51
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !44
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #20
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !52
  ret void
}

; Function Attrs: optsize
declare ptr @tree_ssa_strip_useless_type_conversions(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gimplify_self_mod_expr(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #4 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  store ptr null, ptr %7, align 8, !tbaa !11
  %8 = load ptr, ptr %0, align 8, !tbaa !11
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !26
  %13 = add i32 %12, -4
  %14 = icmp ult i32 %13, 7
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !6
  br label %18

18:                                               ; preds = %4, %15
  %19 = phi i32 [ %17, %15 ], [ 0, %4 ]
  %20 = trunc i64 %9 to i32
  %21 = and i32 %20, 65535
  %22 = icmp ne i32 %21, 128
  %23 = add nsw i32 %21, -129
  %24 = icmp ult i32 %23, -2
  %25 = icmp ne i32 %21, 126
  %26 = add nsw i32 %21, -125
  %27 = icmp ult i32 %26, 4
  br i1 %27, label %30, label %28

28:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2087, ptr noundef nonnull @.str.1) #21
  %29 = load ptr, ptr %0, align 8, !tbaa !11
  br label %30

30:                                               ; preds = %18, %28
  %31 = phi ptr [ %8, %18 ], [ %29, %28 ]
  %32 = icmp eq i8 %3, 0
  %33 = or i1 %32, %24
  %34 = select i1 %33, ptr %2, ptr %7
  %35 = and i1 %25, %22
  %36 = select i1 %35, i32 64, i32 63
  %37 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  store ptr %38, ptr %6, align 8, !tbaa !11
  %39 = call i32 @gimplify_expr(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %34, ptr noundef nonnull @is_gimple_lvalue, i32 noundef 2) #20
  %40 = icmp eq i32 %39, -2
  br i1 %40, label %97, label %41

41:                                               ; preds = %30
  %42 = load ptr, ptr %6, align 8, !tbaa !11
  store ptr %42, ptr %5, align 8, !tbaa !11
  %43 = load ptr, ptr %0, align 8, !tbaa !11
  %44 = getelementptr inbounds %struct.tree_exp, ptr %43, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  br i1 %33, label %63, label %46

46:                                               ; preds = %41
  %47 = call zeroext i8 @is_gimple_min_lval(ptr noundef %42) #21
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load ptr, ptr %6, align 8, !tbaa !11
  call void @mark_addressable(ptr noundef %50) #20
  %51 = load i32, ptr @input_location, align 4, !tbaa !26
  %52 = load ptr, ptr %6, align 8, !tbaa !11
  %53 = call ptr @build_fold_addr_expr_loc(i32 noundef %51, ptr noundef %52) #21
  store ptr %53, ptr %6, align 8, !tbaa !11
  %54 = call i32 @gimplify_expr(ptr noundef nonnull %6, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %55 = load i32, ptr @input_location, align 4, !tbaa !26
  %56 = load ptr, ptr %6, align 8, !tbaa !11
  %57 = call ptr @build_fold_indirect_ref_loc(i32 noundef %55, ptr noundef %56) #21
  store ptr %57, ptr %6, align 8, !tbaa !11
  br label %58

58:                                               ; preds = %49, %46
  %59 = call i32 @gimplify_expr(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %60 = icmp eq i32 %59, -2
  br i1 %60, label %97, label %61

61:                                               ; preds = %58
  %62 = load ptr, ptr %5, align 8, !tbaa !11
  br label %63

63:                                               ; preds = %61, %41
  %64 = phi ptr [ %62, %61 ], [ %42, %41 ]
  %65 = getelementptr inbounds %struct.tree_common, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !6
  %67 = load i64, ptr %66, align 8
  %68 = trunc i64 %67 to i16
  switch i16 %68, label %77 [
    i16 10, label %69
    i16 12, label %69
  ]

69:                                               ; preds = %63, %63
  %70 = load ptr, ptr @sizetype_tab, align 16, !tbaa !11
  %71 = call ptr @fold_convert_loc(i32 noundef %19, ptr noundef %70, ptr noundef %45) #21
  %72 = trunc i64 %9 to i16
  switch i16 %72, label %73 [
    i16 128, label %77
    i16 126, label %77
  ]

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.tree_common, ptr %71, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !6
  %76 = call ptr @fold_build1_stat_loc(i32 noundef %19, i32 noundef 79, ptr noundef %75, ptr noundef %71) #21
  br label %77

77:                                               ; preds = %73, %69, %69, %63
  %78 = phi ptr [ %45, %63 ], [ %76, %73 ], [ %71, %69 ], [ %71, %69 ]
  %79 = phi i32 [ %36, %63 ], [ 66, %73 ], [ 66, %69 ], [ 66, %69 ]
  %80 = load ptr, ptr %0, align 8, !tbaa !11
  %81 = getelementptr inbounds %struct.tree_common, ptr %80, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !6
  %83 = load ptr, ptr %5, align 8, !tbaa !11
  %84 = call ptr @build2_stat(i32 noundef %79, ptr noundef %82, ptr noundef %83, ptr noundef %78) #21
  %85 = load ptr, ptr %6, align 8, !tbaa !11
  br i1 %33, label %90, label %86

86:                                               ; preds = %77
  %87 = call ptr @gimplify_assign(ptr noundef %85, ptr noundef %84, ptr noundef %2) #21
  %88 = load ptr, ptr %7, align 8, !tbaa !11
  call fastcc void @gimplify_seq_add_seq(ptr noundef %2, ptr noundef %88) #20
  %89 = load ptr, ptr %5, align 8, !tbaa !11
  br label %94

90:                                               ; preds = %77
  %91 = getelementptr inbounds %struct.tree_common, ptr %85, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !6
  %93 = call ptr @build2_stat(i32 noundef 53, ptr noundef %92, ptr noundef %85, ptr noundef %84) #21
  br label %94

94:                                               ; preds = %86, %90
  %95 = phi ptr [ %93, %90 ], [ %89, %86 ]
  %96 = phi i32 [ 0, %90 ], [ 1, %86 ]
  store ptr %95, ptr %0, align 8, !tbaa !11
  br label %97

97:                                               ; preds = %94, %58, %30
  %98 = phi i32 [ -2, %30 ], [ -2, %58 ], [ %96, %94 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  ret i32 %98
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimplify_compound_lval(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #4 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %6 = load ptr, ptr %0, align 8, !tbaa !11
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !26
  %11 = add i32 %10, -4
  %12 = icmp ult i32 %11, 7
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !6
  br label %16

16:                                               ; preds = %4, %13
  %17 = phi i32 [ %15, %13 ], [ 0, %4 ]
  %18 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef 10) #20
  store ptr %18, ptr %5, align 8, !tbaa !11
  br label %19

19:                                               ; preds = %38, %16
  %20 = phi ptr [ %0, %16 ], [ %40, %38 ]
  br label %21

21:                                               ; preds = %35, %19
  %22 = load ptr, ptr %20, align 8, !tbaa !11
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 47
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = tail call ptr @fold_indirect_ref_loc(i32 noundef %17, ptr noundef nonnull %22) #21
  store ptr %27, ptr %20, align 8, !tbaa !11
  br label %28

28:                                               ; preds = %26, %21
  %29 = phi ptr [ %27, %26 ], [ %22, %21 ]
  %30 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %29) #20, !range !5
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i64, ptr %29, align 8
  %34 = trunc i64 %33 to i16
  switch i16 %34, label %41 [
    i16 32, label %35
    i16 34, label %35
  ]

35:                                               ; preds = %32, %32
  %36 = tail call fastcc i32 @gimplify_var_or_parm_decl(ptr noundef nonnull %20) #20, !range !60
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %21, label %41

38:                                               ; preds = %28
  call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %5, ptr noundef %29) #20
  %39 = load ptr, ptr %20, align 8, !tbaa !11
  %40 = getelementptr inbounds %struct.tree_exp, ptr %39, i64 0, i32 3
  br label %19

41:                                               ; preds = %32, %35
  %42 = load ptr, ptr %5, align 8
  %43 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %42) #20
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1925, ptr noundef nonnull @.str.1) #21
  br label %46

46:                                               ; preds = %41, %45
  %47 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %42) #20
  %48 = add i32 %47, -1
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %50, label %120

50:                                               ; preds = %46, %116
  %51 = phi i32 [ %118, %116 ], [ %48, %46 ]
  %52 = phi i32 [ %117, %116 ], [ 0, %46 ]
  %53 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %42, i32 noundef %51) #20
  %54 = load i64, ptr %53, align 8
  %55 = trunc i64 %54 to i16
  switch i16 %55, label %116 [
    i16 45, label %56
    i16 46, label %56
    i16 41, label %91
  ]

56:                                               ; preds = %50, %50
  %57 = getelementptr inbounds %struct.tree_exp, ptr %53, i64 0, i32 3
  %58 = getelementptr inbounds %struct.tree_exp, ptr %53, i64 1, i32 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !6
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = tail call ptr @array_ref_low_bound(ptr noundef nonnull %53) #21
  %63 = tail call ptr @unshare_expr(ptr noundef %62) #20
  %64 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %63) #21
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  store ptr %63, ptr %58, align 8, !tbaa !6
  %67 = tail call i32 @gimplify_expr(ptr noundef nonnull %58, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_reg, i32 noundef 1) #20
  %68 = tail call i32 @llvm.smin.i32(i32 %52, i32 %67)
  br label %69

69:                                               ; preds = %61, %66, %56
  %70 = phi i32 [ %52, %56 ], [ %52, %61 ], [ %68, %66 ]
  %71 = getelementptr inbounds %struct.tree_exp, ptr %53, i64 1, i32 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !6
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %116

74:                                               ; preds = %69
  %75 = load ptr, ptr %57, align 8, !tbaa !6
  %76 = getelementptr inbounds %struct.tree_common, ptr %75, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !6
  %78 = getelementptr inbounds %struct.tree_common, ptr %77, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !6
  %80 = tail call ptr @array_ref_element_size(ptr noundef nonnull %53) #21
  %81 = tail call ptr @unshare_expr(ptr noundef %80) #20
  %82 = getelementptr inbounds %struct.tree_type, ptr %79, i64 0, i32 7
  %83 = load i32, ptr %82, align 8, !tbaa !6
  %84 = lshr i32 %83, 3
  %85 = zext nneg i32 %84 to i64
  %86 = tail call ptr @size_int_kind(i64 noundef %85, i32 noundef 0) #21
  %87 = tail call ptr @size_binop_loc(i32 noundef %17, i32 noundef 76, ptr noundef %81, ptr noundef %86) #21
  %88 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %87) #21
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %116

90:                                               ; preds = %74
  store ptr %87, ptr %71, align 8, !tbaa !6
  br label %111

91:                                               ; preds = %50
  %92 = getelementptr inbounds %struct.tree_exp, ptr %53, i64 1, i32 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !6
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %116

95:                                               ; preds = %91
  %96 = tail call ptr @component_ref_field_offset(ptr noundef nonnull %53) #21
  %97 = tail call ptr @unshare_expr(ptr noundef %96) #20
  %98 = getelementptr inbounds %struct.tree_exp, ptr %53, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !6
  %100 = getelementptr inbounds %struct.tree_decl_common, ptr %99, i64 0, i32 2
  %101 = load i64, ptr %100, align 8
  %102 = lshr i64 %101, 32
  %103 = and i64 %102, 255
  %104 = shl nuw i64 1, %103
  %105 = lshr i64 %104, 3
  %106 = tail call ptr @size_int_kind(i64 noundef %105, i32 noundef 0) #21
  %107 = tail call ptr @size_binop_loc(i32 noundef %17, i32 noundef 76, ptr noundef %97, ptr noundef %106) #21
  %108 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %107) #21
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %95
  store ptr %107, ptr %92, align 8, !tbaa !6
  br label %111

111:                                              ; preds = %90, %110
  %112 = phi ptr [ %92, %110 ], [ %71, %90 ]
  %113 = phi i32 [ %52, %110 ], [ %70, %90 ]
  %114 = tail call i32 @gimplify_expr(ptr noundef nonnull %112, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_reg, i32 noundef 1) #20
  %115 = tail call i32 @llvm.smin.i32(i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %111, %95, %50, %74, %91, %69
  %117 = phi i32 [ %70, %69 ], [ %52, %91 ], [ %70, %74 ], [ %52, %50 ], [ %52, %95 ], [ %115, %111 ]
  %118 = add nsw i32 %51, -1
  %119 = icmp sgt i32 %51, 0
  br i1 %119, label %50, label %120, !llvm.loop !68

120:                                              ; preds = %116, %46
  %121 = phi i32 [ 0, %46 ], [ %117, %116 ]
  %122 = or i32 %3, 2
  %123 = tail call i32 @gimplify_expr(ptr noundef nonnull %20, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_min_lval, i32 noundef %122) #20
  %124 = tail call i32 @llvm.smin.i32(i32 %121, i32 %123)
  %125 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %42) #20
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %154, label %127

127:                                              ; preds = %120, %147
  %128 = phi i32 [ %148, %147 ], [ %124, %120 ]
  %129 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %42) #20
  %130 = load i64, ptr %129, align 8
  %131 = trunc i64 %130 to i16
  switch i16 %131, label %147 [
    i16 45, label %132
    i16 46, label %132
    i16 42, label %137
  ]

132:                                              ; preds = %127, %127
  %133 = getelementptr inbounds %struct.tree_exp, ptr %129, i64 1
  %134 = load ptr, ptr %133, align 8, !tbaa !6
  %135 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %134) #21
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %142, label %147

137:                                              ; preds = %127
  %138 = getelementptr inbounds %struct.tree_exp, ptr %129, i64 1
  %139 = tail call i32 @gimplify_expr(ptr noundef nonnull %138, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %140 = tail call i32 @llvm.smin.i32(i32 %128, i32 %139)
  %141 = getelementptr inbounds %struct.tree_exp, ptr %129, i64 1, i32 0, i32 1
  br label %142

142:                                              ; preds = %132, %137
  %143 = phi ptr [ %141, %137 ], [ %133, %132 ]
  %144 = phi i32 [ %140, %137 ], [ %128, %132 ]
  %145 = tail call i32 @gimplify_expr(ptr noundef nonnull %143, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %146 = tail call i32 @llvm.smin.i32(i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %142, %127, %132
  %148 = phi i32 [ %128, %132 ], [ %128, %127 ], [ %146, %142 ]
  %149 = getelementptr inbounds %struct.tree_exp, ptr %129, i64 0, i32 3
  %150 = load ptr, ptr %149, align 8, !tbaa !6
  %151 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef %150) #21
  store ptr %151, ptr %149, align 8, !tbaa !6
  tail call void @recalculate_side_effects(ptr noundef nonnull %129) #21
  %152 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %42) #20
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %127, !llvm.loop !69

154:                                              ; preds = %147, %120
  %155 = phi i32 [ %124, %120 ], [ %148, %147 ]
  %156 = and i32 %3, 1
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %165, label %158

158:                                              ; preds = %154
  %159 = load ptr, ptr %0, align 8, !tbaa !11
  %160 = load i64, ptr %159, align 8
  %161 = and i64 %160, 65535
  %162 = icmp eq i64 %161, 41
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  tail call fastcc void @canonicalize_component_ref(ptr noundef nonnull %0) #20
  %164 = tail call i32 @llvm.smin.i32(i32 %155, i32 0)
  br label %165

165:                                              ; preds = %163, %158, %154
  %166 = phi i32 [ %164, %163 ], [ %155, %158 ], [ %155, %154 ]
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  ret i32 %166
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gimplify_cond_expr(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %9 = load ptr, ptr %0, align 8, !tbaa !11
  store ptr %9, ptr %4, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  store ptr null, ptr %8, align 8, !tbaa !11
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !26
  %14 = add i32 %13, -4
  %15 = icmp ult i32 %14, 7
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !6
  br label %19

19:                                               ; preds = %3, %16
  %20 = phi i32 [ %18, %16 ], [ 0, %3 ]
  %21 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 19
  br i1 %25, label %121, label %26

26:                                               ; preds = %19
  %27 = and i32 %2, 3
  %28 = icmp ne i32 %27, 2
  %29 = and i64 %23, 262144
  %30 = icmp eq i64 %29, 0
  %31 = and i1 %28, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %26
  %33 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %34 = getelementptr inbounds %struct.gimplify_ctx, ptr %33, i64 0, i32 11
  %35 = load i8, ptr %34, align 2, !tbaa !70
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %58, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !6
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 65536
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %58

43:                                               ; preds = %37
  %44 = tail call fastcc zeroext i8 @generic_expr_could_trap_p(ptr noundef nonnull %39) #20, !range !5
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load ptr, ptr %0, align 8, !tbaa !11
  %48 = getelementptr inbounds %struct.tree_exp, ptr %47, i64 1, i32 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !6
  %50 = load i64, ptr %49, align 8
  %51 = and i64 %50, 65536
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = tail call fastcc zeroext i8 @generic_expr_could_trap_p(ptr noundef nonnull %49) #20, !range !5
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = tail call fastcc i32 @gimplify_pure_cond_expr(ptr noundef nonnull %0, ptr noundef %1) #20
  br label %299

58:                                               ; preds = %53, %46, %43, %37, %32
  %59 = load ptr, ptr %21, align 8, !tbaa !6
  %60 = tail call ptr @create_tmp_var(ptr noundef %59, ptr noundef nonnull @.str.6) #20
  br label %90

61:                                               ; preds = %26
  %62 = tail call ptr @build_pointer_type(ptr noundef nonnull %22) #21
  %63 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !6
  %65 = getelementptr inbounds %struct.tree_common, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !6
  %67 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %72, label %69

69:                                               ; preds = %61
  %70 = tail call ptr @build_fold_addr_expr_loc(i32 noundef %20, ptr noundef nonnull %64) #21
  store ptr %70, ptr %63, align 8, !tbaa !6
  %71 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  br label %72

72:                                               ; preds = %69, %61
  %73 = phi ptr [ %71, %69 ], [ %66, %61 ]
  %74 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1, i32 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !6
  %76 = getelementptr inbounds %struct.tree_common, ptr %75, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !6
  %78 = icmp eq ptr %77, %73
  br i1 %78, label %81, label %79

79:                                               ; preds = %72
  %80 = tail call ptr @build_fold_addr_expr_loc(i32 noundef %20, ptr noundef nonnull %75) #21
  store ptr %80, ptr %74, align 8, !tbaa !6
  br label %81

81:                                               ; preds = %79, %72
  %82 = tail call ptr @create_tmp_var(ptr noundef %62, ptr noundef nonnull @.str.6) #20
  %83 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  %84 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !6
  %86 = load ptr, ptr %63, align 8, !tbaa !6
  %87 = load ptr, ptr %74, align 8, !tbaa !6
  %88 = tail call ptr @build3_stat(i32 noundef 56, ptr noundef %83, ptr noundef %85, ptr noundef %86, ptr noundef %87) #21
  store ptr %88, ptr %4, align 8, !tbaa !11
  %89 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef %20, ptr noundef %82) #21
  br label %90

90:                                               ; preds = %81, %58
  %91 = phi ptr [ %88, %81 ], [ %9, %58 ]
  %92 = phi ptr [ %89, %81 ], [ %60, %58 ]
  %93 = phi ptr [ %82, %81 ], [ %60, %58 ]
  %94 = getelementptr inbounds %struct.tree_exp, ptr %91, i64 1
  %95 = load ptr, ptr %94, align 8, !tbaa !6
  %96 = getelementptr inbounds %struct.tree_common, ptr %95, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !6
  %98 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  %99 = icmp eq ptr %97, %98
  br i1 %99, label %105, label %100

100:                                              ; preds = %90
  %101 = getelementptr inbounds %struct.tree_common, ptr %93, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !6
  %103 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %102, ptr noundef %93, ptr noundef nonnull %95) #21
  store ptr %103, ptr %94, align 8, !tbaa !6
  %104 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  br label %105

105:                                              ; preds = %100, %90
  %106 = phi ptr [ %104, %100 ], [ %97, %90 ]
  %107 = getelementptr inbounds %struct.tree_exp, ptr %91, i64 1, i32 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !6
  %109 = getelementptr inbounds %struct.tree_common, ptr %108, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !6
  %111 = icmp eq ptr %110, %106
  br i1 %111, label %117, label %112

112:                                              ; preds = %105
  %113 = getelementptr inbounds %struct.tree_common, ptr %93, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !6
  %115 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %114, ptr noundef %93, ptr noundef nonnull %108) #21
  store ptr %115, ptr %107, align 8, !tbaa !6
  %116 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  br label %117

117:                                              ; preds = %112, %105
  %118 = phi ptr [ %116, %112 ], [ %106, %105 ]
  %119 = getelementptr inbounds %struct.tree_common, ptr %91, i64 0, i32 2
  store ptr %118, ptr %119, align 8, !tbaa !6
  tail call void @recalculate_side_effects(ptr noundef nonnull %91) #21
  %120 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %4, ptr noundef %1) #20, !range !5
  store ptr %92, ptr %0, align 8, !tbaa !11
  br label %299

121:                                              ; preds = %19
  %122 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !6
  %124 = tail call ptr @gimple_boolify(ptr noundef %123) #20
  store ptr %124, ptr %122, align 8, !tbaa !6
  %125 = load i64, ptr %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = and i32 %126, 65535
  %128 = add nsw i32 %127, -91
  %129 = icmp ult i32 %128, 2
  br i1 %129, label %130, label %137

130:                                              ; preds = %121
  %131 = tail call fastcc ptr @shortcut_cond_expr(ptr noundef nonnull %9) #20
  store ptr %131, ptr %4, align 8, !tbaa !11
  %132 = load ptr, ptr %0, align 8, !tbaa !11
  %133 = icmp eq ptr %131, %132
  br i1 %133, label %137, label %134

134:                                              ; preds = %130
  store ptr %131, ptr %0, align 8, !tbaa !11
  tail call fastcc void @gimple_push_condition() #20
  %135 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %0, ptr noundef nonnull %8) #20, !range !5
  call fastcc void @gimple_pop_condition(ptr noundef %1) #20
  %136 = load ptr, ptr %8, align 8, !tbaa !11
  call void @gimple_seq_add_seq(ptr noundef %1, ptr noundef %136) #21
  br label %299

137:                                              ; preds = %121, %130
  %138 = phi ptr [ %9, %121 ], [ %131, %130 ]
  %139 = getelementptr inbounds %struct.tree_exp, ptr %138, i64 0, i32 3
  %140 = tail call i32 @gimplify_expr(ptr noundef nonnull %139, ptr noundef %1, ptr noundef null, ptr noundef nonnull @is_gimple_condexpr, i32 noundef 1) #20
  %141 = icmp eq i32 %140, -2
  br i1 %141, label %299, label %142

142:                                              ; preds = %137
  %143 = load ptr, ptr %139, align 8, !tbaa !6
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2970, ptr noundef nonnull @.str.1) #21
  br label %146

146:                                              ; preds = %142, %145
  tail call fastcc void @gimple_push_condition() #20
  %147 = getelementptr inbounds %struct.tree_exp, ptr %138, i64 1
  %148 = load ptr, ptr %147, align 8, !tbaa !6
  %149 = icmp eq ptr %148, null
  br i1 %149, label %189, label %150

150:                                              ; preds = %146
  %151 = load i64, ptr %148, align 8
  %152 = and i64 %151, 65535
  %153 = icmp eq i64 %152, 134
  br i1 %153, label %154, label %189

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.tree_exp, ptr %148, i64 0, i32 3
  %156 = load ptr, ptr %155, align 8, !tbaa !6
  %157 = load i64, ptr %156, align 8
  %158 = and i64 %157, 65535
  %159 = icmp eq i64 %158, 30
  br i1 %159, label %160, label %189

160:                                              ; preds = %154
  %161 = getelementptr inbounds %struct.tree_decl_minimal, ptr %156, i64 0, i32 4
  %162 = load ptr, ptr %161, align 8, !tbaa !6
  %163 = load ptr, ptr @current_function_decl, align 8, !tbaa !11
  %164 = icmp eq ptr %162, %163
  br i1 %164, label %165, label %189

165:                                              ; preds = %160
  %166 = load i32, ptr @optimize, align 4, !tbaa !26
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %191

168:                                              ; preds = %165
  %169 = load i64, ptr %138, align 8
  %170 = and i64 %169, 65535
  %171 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %170
  %172 = load i32, ptr %171, align 4, !tbaa !26
  %173 = add i32 %172, -4
  %174 = icmp ult i32 %173, 7
  br i1 %174, label %175, label %191

175:                                              ; preds = %168
  %176 = getelementptr inbounds %struct.tree_exp, ptr %138, i64 0, i32 1
  %177 = load i32, ptr %176, align 8, !tbaa !6
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %191, label %179

179:                                              ; preds = %175
  %180 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 134), align 4, !tbaa !26
  %181 = add i32 %180, -4
  %182 = icmp ult i32 %181, 7
  br i1 %182, label %183, label %191

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.tree_exp, ptr %148, i64 0, i32 1
  %185 = load i32, ptr %184, align 8, !tbaa !6
  %186 = icmp eq i32 %185, 0
  %187 = icmp eq i32 %177, %185
  %188 = or i1 %186, %187
  br i1 %188, label %191, label %189

189:                                              ; preds = %183, %160, %154, %150, %146
  %190 = tail call ptr @create_artificial_label(i32 noundef 0) #21
  br label %191

191:                                              ; preds = %179, %168, %165, %175, %183, %189
  %192 = phi i1 [ true, %189 ], [ false, %183 ], [ false, %175 ], [ false, %165 ], [ false, %168 ], [ false, %179 ]
  %193 = phi ptr [ %190, %189 ], [ %156, %183 ], [ %156, %175 ], [ %156, %165 ], [ %156, %168 ], [ %156, %179 ]
  %194 = getelementptr inbounds %struct.tree_exp, ptr %138, i64 1, i32 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !6
  %196 = icmp eq ptr %195, null
  br i1 %196, label %236, label %197

197:                                              ; preds = %191
  %198 = load i64, ptr %195, align 8
  %199 = and i64 %198, 65535
  %200 = icmp eq i64 %199, 134
  br i1 %200, label %201, label %236

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.tree_exp, ptr %195, i64 0, i32 3
  %203 = load ptr, ptr %202, align 8, !tbaa !6
  %204 = load i64, ptr %203, align 8
  %205 = and i64 %204, 65535
  %206 = icmp eq i64 %205, 30
  br i1 %206, label %207, label %236

207:                                              ; preds = %201
  %208 = getelementptr inbounds %struct.tree_decl_minimal, ptr %203, i64 0, i32 4
  %209 = load ptr, ptr %208, align 8, !tbaa !6
  %210 = load ptr, ptr @current_function_decl, align 8, !tbaa !11
  %211 = icmp eq ptr %209, %210
  br i1 %211, label %212, label %236

212:                                              ; preds = %207
  %213 = load i32, ptr @optimize, align 4, !tbaa !26
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %238

215:                                              ; preds = %212
  %216 = load i64, ptr %138, align 8
  %217 = and i64 %216, 65535
  %218 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %217
  %219 = load i32, ptr %218, align 4, !tbaa !26
  %220 = add i32 %219, -4
  %221 = icmp ult i32 %220, 7
  br i1 %221, label %222, label %238

222:                                              ; preds = %215
  %223 = getelementptr inbounds %struct.tree_exp, ptr %138, i64 0, i32 1
  %224 = load i32, ptr %223, align 8, !tbaa !6
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %238, label %226

226:                                              ; preds = %222
  %227 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 134), align 4, !tbaa !26
  %228 = add i32 %227, -4
  %229 = icmp ult i32 %228, 7
  br i1 %229, label %230, label %238

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.tree_exp, ptr %195, i64 0, i32 1
  %232 = load i32, ptr %231, align 8, !tbaa !6
  %233 = icmp eq i32 %232, 0
  %234 = icmp eq i32 %224, %232
  %235 = or i1 %233, %234
  br i1 %235, label %238, label %236

236:                                              ; preds = %230, %207, %201, %197, %191
  %237 = tail call ptr @create_artificial_label(i32 noundef 0) #21
  br label %238

238:                                              ; preds = %215, %212, %222, %230, %226, %236
  %239 = phi ptr [ %237, %236 ], [ %203, %226 ], [ %203, %230 ], [ %203, %222 ], [ %203, %212 ], [ %203, %215 ]
  %240 = phi i1 [ false, %236 ], [ true, %226 ], [ true, %230 ], [ true, %222 ], [ true, %212 ], [ true, %215 ]
  %241 = phi i1 [ true, %236 ], [ false, %226 ], [ false, %230 ], [ false, %222 ], [ false, %212 ], [ false, %215 ]
  %242 = load ptr, ptr %139, align 8, !tbaa !6
  call void @gimple_cond_get_ops_from_tree(ptr noundef %242, ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %243 = load i32, ptr %7, align 4, !tbaa !26
  %244 = load ptr, ptr %5, align 8, !tbaa !11
  %245 = load ptr, ptr %6, align 8, !tbaa !11
  %246 = call ptr @gimple_build_cond(i32 noundef %243, ptr noundef %244, ptr noundef %245, ptr noundef %193, ptr noundef %239) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %8, ptr noundef %246) #20
  br i1 %192, label %247, label %274

247:                                              ; preds = %238
  %248 = load ptr, ptr %4, align 8, !tbaa !11
  %249 = getelementptr inbounds %struct.tree_exp, ptr %248, i64 1
  %250 = load ptr, ptr %249, align 8, !tbaa !6
  %251 = icmp ne ptr %250, null
  %252 = or i1 %240, %251
  br i1 %252, label %257, label %253

253:                                              ; preds = %247
  %254 = getelementptr inbounds %struct.tree_exp, ptr %248, i64 1, i32 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !6
  %256 = icmp eq ptr %255, null
  br i1 %256, label %257, label %274

257:                                              ; preds = %253, %247
  %258 = call ptr @gimple_build_label(ptr noundef %193) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %8, ptr noundef %258) #20
  %259 = load ptr, ptr %4, align 8, !tbaa !11
  %260 = getelementptr inbounds %struct.tree_exp, ptr %259, i64 1
  %261 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %260, ptr noundef nonnull %8) #20, !range !5
  br i1 %240, label %274, label %262

262:                                              ; preds = %257
  %263 = load ptr, ptr %4, align 8, !tbaa !11
  %264 = getelementptr inbounds %struct.tree_exp, ptr %263, i64 1, i32 0, i32 1
  %265 = load ptr, ptr %264, align 8, !tbaa !6
  %266 = icmp eq ptr %265, null
  br i1 %266, label %274, label %267

267:                                              ; preds = %262
  %268 = load ptr, ptr %8, align 8, !tbaa !11
  %269 = call zeroext i8 @gimple_seq_may_fallthru(ptr noundef %268) #21
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %274, label %271

271:                                              ; preds = %267
  %272 = call ptr @create_artificial_label(i32 noundef 0) #21
  %273 = call ptr @gimple_build_goto(ptr noundef %272) #21
  call fastcc void @gimple_set_do_not_emit_location(ptr noundef %273) #20
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %8, ptr noundef %273) #20
  br label %274

274:                                              ; preds = %253, %271, %267, %262, %257, %238
  %275 = phi ptr [ null, %238 ], [ null, %257 ], [ %272, %271 ], [ null, %267 ], [ null, %262 ], [ %193, %253 ]
  %276 = phi i8 [ 1, %238 ], [ %261, %257 ], [ %261, %271 ], [ %261, %267 ], [ %261, %262 ], [ 0, %253 ]
  br i1 %241, label %277, label %283

277:                                              ; preds = %274
  %278 = call ptr @gimple_build_label(ptr noundef %239) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %8, ptr noundef %278) #20
  %279 = load ptr, ptr %4, align 8, !tbaa !11
  %280 = getelementptr inbounds %struct.tree_exp, ptr %279, i64 1, i32 0, i32 1
  %281 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %280, ptr noundef nonnull %8) #20, !range !5
  %282 = icmp ne i8 %281, 0
  br label %283

283:                                              ; preds = %277, %274
  %284 = phi i1 [ true, %274 ], [ %282, %277 ]
  %285 = icmp eq ptr %275, null
  br i1 %285, label %288, label %286

286:                                              ; preds = %283
  %287 = call ptr @gimple_build_label(ptr noundef nonnull %275) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %8, ptr noundef %287) #20
  br label %288

288:                                              ; preds = %286, %283
  call fastcc void @gimple_pop_condition(ptr noundef %1) #20
  %289 = load ptr, ptr %8, align 8, !tbaa !11
  call void @gimple_seq_add_seq(ptr noundef %1, ptr noundef %289) #21
  %290 = icmp ne i8 %276, 0
  %291 = select i1 %290, i1 true, i1 %284
  br i1 %291, label %297, label %292

292:                                              ; preds = %288
  %293 = load ptr, ptr %4, align 8, !tbaa !11
  %294 = getelementptr inbounds %struct.tree_exp, ptr %293, i64 0, i32 3
  %295 = load ptr, ptr %294, align 8, !tbaa !6
  store ptr %295, ptr %4, align 8, !tbaa !11
  %296 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %4, ptr noundef %1) #20, !range !5
  br label %297

297:                                              ; preds = %288, %292
  %298 = phi i32 [ %140, %292 ], [ 1, %288 ]
  store ptr null, ptr %0, align 8, !tbaa !11
  br label %299

299:                                              ; preds = %137, %56, %117, %297, %134
  %300 = phi i32 [ 1, %134 ], [ %298, %297 ], [ 1, %117 ], [ %57, %56 ], [ -2, %137 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret i32 %300
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimplify_call_expr(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #4 {
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !26
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %9, 7
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !6
  br label %14

14:                                               ; preds = %3, %11
  %15 = phi i32 [ %13, %11 ], [ 0, %3 ]
  %16 = icmp eq i64 %6, 59
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2237, ptr noundef nonnull @.str.1) #21
  %18 = load ptr, ptr %0, align 8, !tbaa !11
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  br label %21

21:                                               ; preds = %14, %17
  %22 = phi i64 [ 59, %14 ], [ %20, %17 ]
  %23 = phi ptr [ %4, %14 ], [ %18, %17 ]
  %24 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %22
  %25 = load i32, ptr %24, align 4, !tbaa !26
  %26 = add i32 %25, -4
  %27 = icmp ult i32 %26, 7
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.tree_exp, ptr %23, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !6
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %21, %28
  %33 = load i32, ptr @input_location, align 4, !tbaa !26
  %34 = getelementptr inbounds %struct.tree_exp, ptr %23, i64 0, i32 1
  store i32 %33, ptr %34, align 8, !tbaa !6
  %35 = load ptr, ptr %0, align 8, !tbaa !11
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi ptr [ %35, %32 ], [ %23, %28 ]
  %38 = tail call ptr @get_callee_fndecl(ptr noundef %37) #21
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load ptr, ptr %0, align 8, !tbaa !11
  br label %99

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.tree_function_decl, ptr %38, i64 0, i32 5
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 6144
  %46 = icmp eq i32 %45, 0
  %47 = load ptr, ptr %0, align 8, !tbaa !11
  br i1 %46, label %99, label %48

48:                                               ; preds = %42
  %49 = load i32, ptr @input_location, align 4, !tbaa !26
  %50 = icmp eq i8 %2, 0
  %51 = zext i1 %50 to i8
  %52 = tail call ptr @fold_call_expr(i32 noundef %49, ptr noundef %47, i8 noundef zeroext %51) #21
  %53 = icmp eq ptr %52, null
  %54 = load ptr, ptr %0, align 8, !tbaa !11
  %55 = icmp eq ptr %52, %54
  %56 = select i1 %53, i1 true, i1 %55
  br i1 %56, label %57, label %312

57:                                               ; preds = %48
  %58 = load i32, ptr %43, align 8
  %59 = and i32 %58, 8191
  %60 = icmp eq i32 %59, 6659
  br i1 %60, label %61, label %99

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.tree_exp, ptr %54, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !6
  %64 = getelementptr inbounds %struct.tree_int_cst, ptr %63, i64 0, i32 1
  %65 = load i64, ptr %64, align 8, !tbaa !6
  %66 = trunc i64 %65 to i32
  %67 = icmp slt i32 %66, 5
  br i1 %67, label %68, label %82

68:                                               ; preds = %61
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.7) #21
  %69 = load ptr, ptr %0, align 8, !tbaa !11
  %70 = load i64, ptr %69, align 8
  %71 = and i64 %70, 65535
  %72 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !26
  %74 = add i32 %73, -4
  %75 = icmp ult i32 %74, 7
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.tree_exp, ptr %69, i64 0, i32 1
  %78 = load i32, ptr %77, align 8, !tbaa !6
  br label %79

79:                                               ; preds = %68, %76
  %80 = phi i32 [ %78, %76 ], [ 0, %68 ]
  %81 = tail call ptr @build_empty_stmt(i32 noundef %80) #21
  br label %312

82:                                               ; preds = %61
  %83 = tail call zeroext i8 @fold_builtin_next_arg(ptr noundef nonnull %54, i8 noundef zeroext 1) #21
  %84 = icmp eq i8 %83, 0
  %85 = load ptr, ptr %0, align 8, !tbaa !11
  br i1 %84, label %99, label %86

86:                                               ; preds = %82
  %87 = load i64, ptr %85, align 8
  %88 = and i64 %87, 65535
  %89 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !26
  %91 = add i32 %90, -4
  %92 = icmp ult i32 %91, 7
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.tree_exp, ptr %85, i64 0, i32 1
  %95 = load i32, ptr %94, align 8, !tbaa !6
  br label %96

96:                                               ; preds = %86, %93
  %97 = phi i32 [ %95, %93 ], [ 0, %86 ]
  %98 = tail call ptr @build_empty_stmt(i32 noundef %97) #21
  br label %312

99:                                               ; preds = %40, %82, %57, %42
  %100 = phi ptr [ %47, %42 ], [ %41, %40 ], [ %85, %82 ], [ %54, %57 ]
  %101 = phi i1 [ false, %42 ], [ false, %40 ], [ true, %82 ], [ false, %57 ]
  %102 = getelementptr inbounds %struct.tree_exp, ptr %100, i64 1
  %103 = tail call i32 @gimplify_expr(ptr noundef nonnull %102, ptr noundef %1, ptr noundef null, ptr noundef nonnull @is_gimple_call_addr, i32 noundef 1) #20
  %104 = load ptr, ptr %0, align 8, !tbaa !11
  %105 = getelementptr inbounds %struct.tree_exp, ptr %104, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !6
  %107 = getelementptr inbounds %struct.tree_int_cst, ptr %106, i64 0, i32 1
  %108 = load i64, ptr %107, align 8, !tbaa !6
  %109 = trunc i64 %108 to i32
  %110 = add nsw i32 %109, -3
  %111 = tail call ptr @get_callee_fndecl(ptr noundef %104) #21
  %112 = icmp ne ptr %111, null
  br i1 %112, label %128, label %113

113:                                              ; preds = %99
  %114 = load ptr, ptr %0, align 8, !tbaa !11
  %115 = getelementptr inbounds %struct.tree_exp, ptr %114, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !6
  %117 = getelementptr inbounds %struct.tree_common, ptr %116, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !6
  %119 = load i64, ptr %118, align 8
  %120 = trunc i64 %119 to i16
  switch i16 %120, label %121 [
    i16 10, label %123
    i16 12, label %123
  ]

121:                                              ; preds = %113
  %122 = icmp sgt i32 %109, 3
  br label %151

123:                                              ; preds = %113, %113
  %124 = getelementptr inbounds %struct.tree_common, ptr %118, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !6
  %126 = getelementptr inbounds %struct.tree_type, ptr %125, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !6
  br label %137

128:                                              ; preds = %99
  %129 = getelementptr inbounds %struct.tree_common, ptr %111, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !6
  %131 = getelementptr inbounds %struct.tree_type, ptr %130, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !6
  %133 = getelementptr inbounds %struct.tree_decl_non_common, ptr %111, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !6
  %135 = icmp eq ptr %134, null
  %136 = select i1 %135, ptr %132, ptr %134
  br label %137

137:                                              ; preds = %128, %123
  %138 = phi ptr [ %127, %123 ], [ %136, %128 ]
  %139 = icmp sgt i32 %109, 3
  %140 = icmp ne ptr %138, null
  %141 = select i1 %139, i1 %140, i1 false
  br i1 %141, label %142, label %151

142:                                              ; preds = %137, %142
  %143 = phi ptr [ %147, %142 ], [ %138, %137 ]
  %144 = phi i32 [ %145, %142 ], [ 0, %137 ]
  %145 = add nuw nsw i32 %144, 1
  %146 = getelementptr inbounds %struct.tree_common, ptr %143, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !6
  %148 = icmp slt i32 %145, %110
  %149 = icmp ne ptr %147, null
  %150 = select i1 %148, i1 %149, i1 false
  br i1 %150, label %142, label %151, !llvm.loop !71

151:                                              ; preds = %142, %121, %137
  %152 = phi i1 [ %139, %137 ], [ %122, %121 ], [ %148, %142 ]
  %153 = phi i1 [ %140, %137 ], [ false, %121 ], [ %149, %142 ]
  %154 = xor i1 %152, true
  %155 = or i1 %153, %154
  br i1 %155, label %234, label %156

156:                                              ; preds = %151
  %157 = load ptr, ptr %0, align 8, !tbaa !11
  %158 = shl i64 %108, 32
  %159 = add i64 %158, -4294967296
  %160 = ashr exact i64 %159, 32
  %161 = getelementptr inbounds %struct.tree_exp, ptr %157, i64 0, i32 3, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !6
  %163 = load i64, ptr %162, align 8
  %164 = and i64 %163, 65535
  %165 = icmp eq i64 %164, 59
  br i1 %165, label %166, label %234

166:                                              ; preds = %156
  %167 = tail call ptr @get_callee_fndecl(ptr noundef nonnull %162) #21
  %168 = icmp eq ptr %167, null
  br i1 %168, label %234, label %169

169:                                              ; preds = %166
  %170 = load i64, ptr %167, align 8
  %171 = and i64 %170, 65535
  %172 = icmp eq i64 %171, 29
  br i1 %172, label %173, label %234

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.tree_function_decl, ptr %167, i64 0, i32 5
  %175 = load i32, ptr %174, align 8
  %176 = and i32 %175, 8191
  %177 = icmp eq i32 %176, 6660
  br i1 %177, label %178, label %234

178:                                              ; preds = %173
  %179 = load ptr, ptr %0, align 8, !tbaa !11
  %180 = add nsw i32 %109, -4
  %181 = getelementptr inbounds %struct.tree_common, ptr %179, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !6
  %183 = getelementptr inbounds %struct.tree_exp, ptr %179, i64 1
  %184 = load ptr, ptr %183, align 8, !tbaa !6
  %185 = getelementptr inbounds %struct.tree_exp, ptr %179, i64 1, i32 0, i32 2
  %186 = tail call ptr @build_call_array_loc(i32 noundef %15, ptr noundef %182, ptr noundef %184, i32 noundef %180, ptr noundef nonnull %185) #21
  store ptr %186, ptr %0, align 8, !tbaa !11
  %187 = getelementptr inbounds %struct.tree_exp, ptr %179, i64 1, i32 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !6
  %189 = getelementptr inbounds %struct.tree_exp, ptr %186, i64 1, i32 0, i32 1
  store ptr %188, ptr %189, align 8, !tbaa !6
  %190 = load i64, ptr %179, align 8
  %191 = and i64 %190, 262144
  %192 = load ptr, ptr %0, align 8, !tbaa !11
  %193 = load i64, ptr %192, align 8
  %194 = and i64 %193, -262145
  %195 = or disjoint i64 %194, %191
  store i64 %195, ptr %192, align 8
  %196 = load i64, ptr %179, align 8
  %197 = and i64 %196, 268435456
  %198 = load ptr, ptr %0, align 8, !tbaa !11
  %199 = load i64, ptr %198, align 8
  %200 = and i64 %199, -268435457
  %201 = or disjoint i64 %200, %197
  store i64 %201, ptr %198, align 8
  %202 = load i64, ptr %179, align 8
  %203 = and i64 %202, 536870912
  %204 = load ptr, ptr %0, align 8, !tbaa !11
  %205 = load i64, ptr %204, align 8
  %206 = and i64 %205, -536870913
  %207 = or disjoint i64 %206, %203
  store i64 %207, ptr %204, align 8
  %208 = load i64, ptr %179, align 8
  %209 = and i64 %208, 67108864
  %210 = load ptr, ptr %0, align 8, !tbaa !11
  %211 = load i64, ptr %210, align 8
  %212 = and i64 %211, -67108865
  %213 = or disjoint i64 %212, %209
  store i64 %213, ptr %210, align 8
  %214 = load i64, ptr %179, align 8
  %215 = and i64 %214, 65535
  %216 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %215
  %217 = load i32, ptr %216, align 4, !tbaa !26
  %218 = add i32 %217, -4
  %219 = icmp ult i32 %218, 7
  br i1 %219, label %220, label %223

220:                                              ; preds = %178
  %221 = getelementptr inbounds %struct.tree_exp, ptr %179, i64 0, i32 1
  %222 = load i32, ptr %221, align 8, !tbaa !6
  br label %223

223:                                              ; preds = %178, %220
  %224 = phi i32 [ %222, %220 ], [ 0, %178 ]
  %225 = load ptr, ptr %0, align 8, !tbaa !11
  %226 = getelementptr inbounds %struct.tree_exp, ptr %225, i64 0, i32 1
  store i32 %224, ptr %226, align 8, !tbaa !6
  %227 = tail call ptr @tree_block(ptr noundef nonnull %179) #21
  %228 = load ptr, ptr %227, align 8, !tbaa !11
  %229 = load ptr, ptr %0, align 8, !tbaa !11
  %230 = tail call ptr @tree_block(ptr noundef %229) #21
  store ptr %228, ptr %230, align 8, !tbaa !11
  %231 = load ptr, ptr %0, align 8, !tbaa !11
  %232 = load i64, ptr %231, align 8
  %233 = or i64 %232, 134217728
  store i64 %233, ptr %231, align 8
  br label %234

234:                                              ; preds = %166, %169, %173, %223, %151, %156
  %235 = phi i32 [ %110, %151 ], [ %110, %156 ], [ %180, %223 ], [ %110, %173 ], [ %110, %169 ], [ %110, %166 ]
  %236 = icmp sgt i32 %235, 0
  br i1 %236, label %237, label %266

237:                                              ; preds = %234
  %238 = zext nneg i32 %235 to i64
  br label %239

239:                                              ; preds = %237, %263
  %240 = phi i64 [ %238, %237 ], [ %242, %263 ]
  %241 = phi i32 [ %103, %237 ], [ %264, %263 ]
  %242 = add nsw i64 %240, -1
  %243 = icmp eq i64 %242, 1
  %244 = and i1 %101, %243
  br i1 %244, label %263, label %245

245:                                              ; preds = %239
  %246 = load ptr, ptr %0, align 8, !tbaa !11
  %247 = add nuw nsw i64 %240, 2
  %248 = getelementptr inbounds %struct.tree_exp, ptr %246, i64 0, i32 3, i64 %247
  %249 = load i64, ptr %246, align 8
  %250 = and i64 %249, 65535
  %251 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %250
  %252 = load i32, ptr %251, align 4, !tbaa !26
  %253 = add i32 %252, -4
  %254 = icmp ult i32 %253, 7
  br i1 %254, label %255, label %258

255:                                              ; preds = %245
  %256 = getelementptr inbounds %struct.tree_exp, ptr %246, i64 0, i32 1
  %257 = load i32, ptr %256, align 8, !tbaa !6
  br label %258

258:                                              ; preds = %245, %255
  %259 = phi i32 [ %257, %255 ], [ 0, %245 ]
  %260 = tail call fastcc i32 @gimplify_arg(ptr noundef nonnull %248, ptr noundef %1, i32 noundef %259) #20
  %261 = icmp eq i32 %260, -2
  %262 = select i1 %261, i32 -2, i32 %241
  br label %263

263:                                              ; preds = %258, %239
  %264 = phi i32 [ %241, %239 ], [ %262, %258 ]
  %265 = icmp ugt i64 %240, 1
  br i1 %265, label %239, label %266, !llvm.loop !72

266:                                              ; preds = %263, %234
  %267 = phi i32 [ %103, %234 ], [ %264, %263 ]
  %268 = icmp ne i8 %2, 0
  %269 = and i1 %268, %112
  br i1 %269, label %270, label %279

270:                                              ; preds = %266
  %271 = getelementptr inbounds %struct.tree_common, ptr %111, i64 0, i32 2
  %272 = load ptr, ptr %271, align 8, !tbaa !6
  %273 = getelementptr inbounds %struct.tree_common, ptr %272, i64 0, i32 2
  %274 = load ptr, ptr %273, align 8, !tbaa !6
  %275 = load i64, ptr %274, align 8
  %276 = and i64 %275, 65535
  %277 = icmp eq i64 %276, 19
  br i1 %277, label %278, label %279

278:                                              ; preds = %270
  tail call void (i32, ptr, ...) @error_at(i32 noundef %15, ptr noundef nonnull @.str.8) #21
  br label %291

279:                                              ; preds = %270, %266
  %280 = icmp eq i32 %267, -2
  br i1 %280, label %291, label %281

281:                                              ; preds = %279
  %282 = load i32, ptr @input_location, align 4, !tbaa !26
  %283 = load ptr, ptr %0, align 8, !tbaa !11
  %284 = icmp eq i8 %2, 0
  %285 = zext i1 %284 to i8
  %286 = tail call ptr @fold_call_expr(i32 noundef %282, ptr noundef %283, i8 noundef zeroext %285) #21
  %287 = icmp eq ptr %286, null
  %288 = load ptr, ptr %0, align 8, !tbaa !11
  %289 = icmp eq ptr %286, %288
  %290 = select i1 %287, i1 true, i1 %289
  br i1 %290, label %293, label %312

291:                                              ; preds = %278, %279
  %292 = load ptr, ptr @global_trees, align 16, !tbaa !11
  br label %312

293:                                              ; preds = %281
  %294 = load i64, ptr %288, align 8
  %295 = and i64 %294, 65535
  %296 = icmp eq i64 %295, 59
  br i1 %296, label %297, label %308

297:                                              ; preds = %293
  %298 = tail call i32 @call_expr_flags(ptr noundef nonnull %288) #21
  %299 = and i32 %298, 3
  %300 = icmp ne i32 %299, 0
  %301 = and i32 %298, 4
  %302 = icmp eq i32 %301, 0
  %303 = and i1 %300, %302
  br i1 %303, label %304, label %308

304:                                              ; preds = %297
  %305 = load ptr, ptr %0, align 8, !tbaa !11
  %306 = load i64, ptr %305, align 8
  %307 = and i64 %306, -65537
  store i64 %307, ptr %305, align 8
  br label %308

308:                                              ; preds = %297, %304, %293
  br i1 %284, label %309, label %315

309:                                              ; preds = %308
  %310 = load ptr, ptr %0, align 8, !tbaa !11
  %311 = tail call ptr @gimple_build_call_from_tree(ptr noundef %310) #21
  tail call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %311) #20
  br label %312

312:                                              ; preds = %281, %48, %291, %309, %79, %96
  %313 = phi ptr [ %98, %96 ], [ %81, %79 ], [ null, %309 ], [ %292, %291 ], [ %52, %48 ], [ %286, %281 ]
  %314 = phi i32 [ 0, %96 ], [ 0, %79 ], [ %267, %309 ], [ -2, %291 ], [ 0, %48 ], [ 0, %281 ]
  store ptr %313, ptr %0, align 8, !tbaa !11
  br label %315

315:                                              ; preds = %312, %308
  %316 = phi i32 [ %267, %308 ], [ %314, %312 ]
  ret i32 %316
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gimplify_compound_expr(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #4 {
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  br label %5

5:                                                ; preds = %16, %3
  %6 = phi ptr [ %4, %3 ], [ %18, %16 ]
  %7 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 52
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = tail call fastcc i32 @gimplify_compound_expr(ptr noundef nonnull %7, ptr noundef %1, i8 noundef zeroext 0) #20, !range !61
  br label %16

14:                                               ; preds = %5
  %15 = tail call zeroext i8 @gimplify_stmt(ptr noundef nonnull %7, ptr noundef %1) #20, !range !5
  br label %16

16:                                               ; preds = %14, %12
  %17 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 52
  br i1 %21, label %5, label %22, !llvm.loop !73

22:                                               ; preds = %16
  store ptr %18, ptr %0, align 8, !tbaa !11
  %23 = icmp eq i8 %2, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %22
  %25 = tail call zeroext i8 @gimplify_stmt(ptr noundef nonnull %0, ptr noundef %1) #20, !range !5
  br label %26

26:                                               ; preds = %22, %24
  %27 = phi i32 [ 1, %24 ], [ 0, %22 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_compound_literal_expr(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !11
  %4 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = load i64, ptr %3, align 8
  %9 = and i64 %8, 262144
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i64, ptr %7, align 8
  %13 = or i64 %12, 262144
  store i64 %13, ptr %7, align 8
  br label %14

14:                                               ; preds = %11, %2
  %15 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = load i64, ptr %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = and i32 %18, 65535
  %20 = add nsw i32 %19, -13
  %21 = icmp ult i32 %20, 2
  br i1 %21, label %22, label %33

22:                                               ; preds = %14
  %23 = load i64, ptr %7, align 8
  %24 = and i64 %23, 524288
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = tail call zeroext i8 @needs_to_live_in_memory(ptr noundef nonnull %7) #21
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %7, i64 0, i32 2
  %31 = load i64, ptr %30, align 8
  %32 = or i64 %31, 134217728
  store i64 %32, ptr %30, align 8
  br label %33

33:                                               ; preds = %14, %29, %26, %22
  %34 = getelementptr inbounds %struct.tree_decl_minimal, ptr %7, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %7, i64 0, i32 4
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 256
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  tail call void @gimple_add_tmp_var(ptr noundef nonnull %7) #20
  br label %43

43:                                               ; preds = %42, %37, %33
  tail call void @gimplify_and_add(ptr noundef nonnull %5, ptr noundef %1) #20
  store ptr %7, ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimplify_modify_expr(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #4 {
  %5 = load ptr, ptr %0, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  %8 = load i64, ptr %5, align 8
  %9 = and i64 %8, 65535
  %10 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !26
  %12 = add i32 %11, -4
  %13 = icmp ult i32 %12, 7
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !6
  br label %17

17:                                               ; preds = %4, %14
  %18 = phi i32 [ %16, %14 ], [ 0, %4 ]
  %19 = trunc i64 %8 to i32
  %20 = and i32 %19, 65535
  %21 = add nsw i32 %20, -53
  %22 = icmp ult i32 %21, 2
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4411, ptr noundef nonnull @.str.1) #21
  br label %24

24:                                               ; preds = %17, %23
  %25 = load ptr, ptr %6, align 8, !tbaa !11
  %26 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = load i64, ptr %27, align 8
  %29 = trunc i64 %28 to i16
  switch i16 %29, label %46 [
    i16 10, label %30
    i16 12, label %30
  ]

30:                                               ; preds = %24, %24
  %31 = load ptr, ptr %7, align 8, !tbaa !11
  %32 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef %31) #21
  store ptr %32, ptr %7, align 8, !tbaa !11
  %33 = load ptr, ptr %6, align 8, !tbaa !11
  %34 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  %36 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !6
  %38 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %35, ptr noundef %37) #21
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %30
  %41 = load ptr, ptr %6, align 8, !tbaa !11
  %42 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  %44 = load ptr, ptr %7, align 8, !tbaa !11
  %45 = tail call ptr @fold_convert_loc(i32 noundef %18, ptr noundef %43, ptr noundef %44) #21
  store ptr %45, ptr %7, align 8, !tbaa !11
  br label %46

46:                                               ; preds = %24, %30, %40
  %47 = tail call fastcc i32 @gimplify_modify_expr_rhs(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) #20
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %207

49:                                               ; preds = %46
  %50 = load ptr, ptr %7, align 8, !tbaa !11
  %51 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  %53 = tail call fastcc zeroext i8 @zero_sized_type(ptr noundef %52) #20, !range !5
  %54 = icmp eq i8 %53, 0
  %55 = icmp ne i8 %3, 0
  %56 = or i1 %55, %54
  br i1 %56, label %60, label %57

57:                                               ; preds = %49
  %58 = tail call zeroext i8 @gimplify_stmt(ptr noundef nonnull %7, ptr noundef %1) #20, !range !5
  %59 = tail call zeroext i8 @gimplify_stmt(ptr noundef nonnull %6, ptr noundef %1) #20, !range !5
  store ptr null, ptr %0, align 8, !tbaa !11
  br label %207

60:                                               ; preds = %49
  tail call fastcc void @maybe_with_size_expr(ptr noundef nonnull %7) #20
  %61 = tail call i32 @gimplify_expr(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_lvalue, i32 noundef 2) #20
  %62 = icmp eq i32 %61, -2
  br i1 %62, label %207, label %63

63:                                               ; preds = %60
  %64 = load ptr, ptr %6, align 8, !tbaa !11
  %65 = tail call ptr @rhs_predicate_for(ptr noundef %64) #20
  %66 = tail call i32 @gimplify_expr(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %65, i32 noundef 1) #20
  %67 = icmp eq i32 %66, -2
  br i1 %67, label %207, label %68

68:                                               ; preds = %63
  %69 = tail call fastcc i32 @gimplify_modify_expr_rhs(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) #20
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %207

71:                                               ; preds = %68
  %72 = load ptr, ptr %7, align 8, !tbaa !11
  %73 = load i64, ptr %72, align 8
  %74 = and i64 %73, 65535
  %75 = icmp eq i64 %74, 150
  br i1 %75, label %76, label %89

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.tree_exp, ptr %72, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !6
  %79 = getelementptr inbounds %struct.tree_exp, ptr %72, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !6
  %81 = load i64, ptr %78, align 8
  %82 = and i64 %81, 65535
  %83 = icmp eq i64 %82, 51
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  tail call fastcc void @gimplify_modify_expr_to_memset(ptr noundef nonnull %0, ptr noundef %80, i8 noundef zeroext %3, ptr noundef %1) #20
  br label %207

85:                                               ; preds = %76
  %86 = tail call zeroext i8 @is_gimple_addressable(ptr noundef nonnull %78) #21
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %85
  store ptr %78, ptr %7, align 8, !tbaa !11
  tail call fastcc void @gimplify_modify_expr_to_memcpy(ptr noundef nonnull %0, ptr noundef %80, i8 noundef zeroext %3, ptr noundef %1) #20
  br label %207

89:                                               ; preds = %85, %71
  %90 = load ptr, ptr %6, align 8, !tbaa !11
  %91 = load i64, ptr %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = and i32 %92, 65535
  %94 = add nsw i32 %93, -43
  %95 = icmp ult i32 %94, 2
  br i1 %95, label %96, label %102

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.tree_exp, ptr %90, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !6
  %99 = tail call zeroext i8 @is_gimple_reg(ptr noundef %98) #21
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  tail call fastcc void @gimplify_modify_expr_complex_part(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext %3) #20
  br label %207

102:                                              ; preds = %89, %96
  %103 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %104 = getelementptr inbounds %struct.gimplify_ctx, ptr %103, i64 0, i32 10
  %105 = load i8, ptr %104, align 1, !tbaa !32
  %106 = icmp eq i8 %105, 0
  %107 = load ptr, ptr %7, align 8, !tbaa !11
  br i1 %106, label %108, label %156

108:                                              ; preds = %102
  %109 = load i64, ptr %107, align 8
  %110 = and i64 %109, 65535
  %111 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !26
  %113 = icmp eq i32 %112, 3
  br i1 %113, label %114, label %156

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.tree_decl_common, ptr %107, i64 0, i32 2
  %116 = load i64, ptr %115, align 8
  %117 = and i64 %116, 1024
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %156, label %119

119:                                              ; preds = %114
  %120 = load ptr, ptr %6, align 8, !tbaa !11
  %121 = load i64, ptr %120, align 8
  %122 = and i64 %121, 65535
  %123 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !26
  %125 = icmp eq i32 %124, 3
  br i1 %125, label %126, label %156

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.tree_decl_common, ptr %120, i64 0, i32 2
  %128 = load i64, ptr %127, align 8
  %129 = and i64 %128, 1024
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %156

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.tree_decl_minimal, ptr %107, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !6
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %148

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.tree_decl_minimal, ptr %120, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !6
  %138 = icmp eq ptr %137, null
  br i1 %138, label %148, label %139

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.tree_identifier, ptr %137, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !6
  %142 = tail call ptr @create_tmp_var_name(ptr noundef %141) #20
  %143 = load ptr, ptr %7, align 8, !tbaa !11
  %144 = getelementptr inbounds %struct.tree_decl_minimal, ptr %143, i64 0, i32 3
  store ptr %142, ptr %144, align 8, !tbaa !6
  %145 = load ptr, ptr %7, align 8, !tbaa !11
  %146 = getelementptr inbounds %struct.tree_decl_common, ptr %145, i64 0, i32 2
  %147 = load i64, ptr %146, align 8
  br label %148

148:                                              ; preds = %139, %135, %131
  %149 = phi i64 [ %147, %139 ], [ %116, %135 ], [ %116, %131 ]
  %150 = phi ptr [ %145, %139 ], [ %107, %135 ], [ %107, %131 ]
  %151 = getelementptr inbounds %struct.tree_decl_common, ptr %150, i64 0, i32 2
  %152 = or i64 %149, 16384
  store i64 %152, ptr %151, align 8
  %153 = load ptr, ptr %7, align 8, !tbaa !11
  %154 = load ptr, ptr %6, align 8, !tbaa !11
  tail call void @decl_debug_expr_insert(ptr noundef %153, ptr noundef %154) #21
  %155 = load ptr, ptr %7, align 8, !tbaa !11
  br label %156

156:                                              ; preds = %148, %126, %119, %114, %108, %102
  %157 = phi ptr [ %155, %148 ], [ %107, %126 ], [ %107, %119 ], [ %107, %114 ], [ %107, %108 ], [ %107, %102 ]
  %158 = load i64, ptr %157, align 8
  %159 = and i64 %158, 65535
  %160 = icmp eq i64 %159, 59
  br i1 %160, label %161, label %167

161:                                              ; preds = %156
  %162 = tail call ptr @gimple_build_call_from_tree(ptr noundef nonnull %157) #21
  %163 = tail call fastcc zeroext i8 @gimple_call_noreturn_p(ptr noundef %162) #20, !range !5
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %165, label %182

165:                                              ; preds = %161
  %166 = load ptr, ptr %6, align 8, !tbaa !11
  tail call fastcc void @gimple_call_set_lhs(ptr noundef %162, ptr noundef %166) #20
  br label %182

167:                                              ; preds = %156
  %168 = load ptr, ptr %6, align 8, !tbaa !11
  %169 = tail call ptr @gimple_build_assign_stat(ptr noundef %168, ptr noundef nonnull %157) #21
  %170 = load ptr, ptr %0, align 8, !tbaa !11
  %171 = load i64, ptr %170, align 8
  %172 = and i64 %171, 65535
  %173 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !26
  %175 = add i32 %174, -4
  %176 = icmp ult i32 %175, 7
  br i1 %176, label %177, label %180

177:                                              ; preds = %167
  %178 = getelementptr inbounds %struct.tree_exp, ptr %170, i64 0, i32 1
  %179 = load i32, ptr %178, align 8, !tbaa !6
  br label %180

180:                                              ; preds = %167, %177
  %181 = phi i32 [ %179, %177 ], [ 0, %167 ]
  tail call fastcc void @gimple_set_location(ptr noundef %169, i32 noundef %181) #20
  br label %182

182:                                              ; preds = %161, %165, %180
  %183 = phi ptr [ %162, %161 ], [ %162, %165 ], [ %169, %180 ]
  tail call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %183) #20
  %184 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %185 = getelementptr inbounds %struct.gimplify_ctx, ptr %184, i64 0, i32 10
  %186 = load i8, ptr %185, align 1, !tbaa !32
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %202, label %188

188:                                              ; preds = %182
  %189 = load ptr, ptr %6, align 8, !tbaa !11
  %190 = tail call zeroext i8 @is_gimple_reg(ptr noundef %189) #21
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %202, label %192

192:                                              ; preds = %188
  %193 = load ptr, ptr %6, align 8, !tbaa !11
  %194 = load i64, ptr %193, align 8
  %195 = and i64 %194, 65535
  %196 = icmp eq i64 %195, 141
  br i1 %196, label %197, label %199

197:                                              ; preds = %192
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4538, ptr noundef nonnull @.str.1) #21
  %198 = load ptr, ptr %6, align 8, !tbaa !11
  br label %199

199:                                              ; preds = %192, %197
  %200 = phi ptr [ %193, %192 ], [ %198, %197 ]
  %201 = tail call fastcc ptr @make_ssa_name(ptr noundef %200, ptr noundef %183) #20
  store ptr %201, ptr %6, align 8, !tbaa !11
  tail call void @gimple_set_lhs(ptr noundef %183, ptr noundef %201) #21
  br label %202

202:                                              ; preds = %199, %188, %182
  br i1 %55, label %203, label %206

203:                                              ; preds = %202
  %204 = load ptr, ptr %6, align 8, !tbaa !11
  %205 = tail call ptr @unshare_expr(ptr noundef %204) #20
  store ptr %205, ptr %0, align 8, !tbaa !11
  br label %207

206:                                              ; preds = %202
  store ptr null, ptr %0, align 8, !tbaa !11
  br label %207

207:                                              ; preds = %84, %88, %68, %63, %60, %46, %206, %203, %101, %57
  %208 = phi i32 [ 1, %101 ], [ 0, %203 ], [ 1, %206 ], [ 1, %57 ], [ %47, %46 ], [ -2, %60 ], [ -2, %63 ], [ %69, %68 ], [ 1, %88 ], [ 1, %84 ]
  ret i32 %208
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_boolean_expr(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !11
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !11
  %7 = tail call ptr @fold_convert_loc(i32 noundef %1, ptr noundef %5, ptr noundef %6) #21
  %8 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !11
  %9 = tail call ptr @fold_convert_loc(i32 noundef %1, ptr noundef %5, ptr noundef %8) #21
  %10 = tail call ptr @build3_stat(i32 noundef 56, ptr noundef %5, ptr noundef %3, ptr noundef %7, ptr noundef %9) #21
  store ptr %10, ptr %0, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 1
  store i32 %1, ptr %11, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare void @recalculate_side_effects(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gimplify_addr_expr(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 {
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = load i64, ptr %4, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !26
  %11 = add i32 %10, -4
  %12 = icmp ult i32 %11, 7
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !6
  br label %16

16:                                               ; preds = %3, %13
  %17 = phi i32 [ %15, %13 ], [ 0, %3 ]
  %18 = load i64, ptr %6, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %48 [
    i16 47, label %20
    i16 49, label %20
    i16 118, label %33
  ]

20:                                               ; preds = %51, %16, %16
  %21 = phi ptr [ %52, %51 ], [ %6, %16 ], [ %6, %16 ]
  %22 = getelementptr inbounds %struct.tree_exp, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %25, ptr noundef %27) #21
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %81

30:                                               ; preds = %20
  %31 = load ptr, ptr %24, align 8, !tbaa !6
  %32 = tail call ptr @fold_convert_loc(i32 noundef %17, ptr noundef %31, ptr noundef nonnull %23) #21
  br label %81

33:                                               ; preds = %16
  %34 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  %36 = tail call zeroext i8 @tree_ssa_useless_type_conversion(ptr noundef %35) #21
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %34, align 8, !tbaa !6
  br label %40

40:                                               ; preds = %38, %33
  %41 = phi ptr [ %39, %38 ], [ %6, %33 ]
  %42 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  %44 = getelementptr inbounds %struct.tree_exp, ptr %41, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = tail call ptr @build_fold_addr_expr_loc(i32 noundef %17, ptr noundef %45) #21
  %47 = tail call ptr @fold_convert_loc(i32 noundef %17, ptr noundef %43, ptr noundef %46) #21
  br label %81

48:                                               ; preds = %16
  %49 = tail call i32 @gimplify_expr(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_addressable, i32 noundef 3) #20
  %50 = icmp eq i32 %49, -2
  br i1 %50, label %84, label %51

51:                                               ; preds = %48
  tail call fastcc void @prepare_gimple_addressable(ptr noundef nonnull %5, ptr noundef %1) #20
  %52 = load ptr, ptr %5, align 8, !tbaa !6
  %53 = load i64, ptr %52, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 47
  br i1 %55, label %20, label %56

56:                                               ; preds = %51
  tail call void @mark_addressable(ptr noundef nonnull %52) #20
  %57 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  %59 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !6
  %61 = getelementptr inbounds %struct.tree_common, ptr %60, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !6
  %63 = tail call zeroext i8 @types_compatible_p(ptr noundef %58, ptr noundef %62) #21
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %56
  %66 = load ptr, ptr %0, align 8, !tbaa !11
  br label %69

67:                                               ; preds = %56
  %68 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %52) #21
  store ptr %68, ptr %0, align 8, !tbaa !11
  br label %69

69:                                               ; preds = %65, %67
  %70 = phi ptr [ %66, %65 ], [ %68, %67 ]
  tail call void @recompute_tree_invariant_for_addr_expr(ptr noundef %70) #21
  %71 = load ptr, ptr %59, align 8, !tbaa !6
  %72 = load ptr, ptr %0, align 8, !tbaa !11
  %73 = getelementptr inbounds %struct.tree_common, ptr %72, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !6
  %75 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %71, ptr noundef %74) #21
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %69
  %78 = load ptr, ptr %59, align 8, !tbaa !6
  %79 = load ptr, ptr %0, align 8, !tbaa !11
  %80 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %78, ptr noundef %79) #21
  br label %81

81:                                               ; preds = %20, %30, %40, %77
  %82 = phi ptr [ %80, %77 ], [ %47, %40 ], [ %23, %20 ], [ %32, %30 ]
  %83 = phi i32 [ %49, %77 ], [ 0, %40 ], [ 0, %20 ], [ 0, %30 ]
  store ptr %82, ptr %0, align 8, !tbaa !11
  br label %84

84:                                               ; preds = %81, %69, %48
  %85 = phi i32 [ -2, %48 ], [ %49, %69 ], [ %83, %81 ]
  ret i32 %85
}

; Function Attrs: optsize
declare i32 @gimplify_va_arg_expr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_conversion(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !26
  %7 = add i32 %6, -4
  %8 = icmp ult i32 %7, 7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !6
  br label %12

12:                                               ; preds = %1, %9
  %13 = phi i32 [ %11, %9 ], [ 0, %1 ]
  %14 = trunc i64 %3 to i16
  switch i16 %14, label %15 [
    i16 116, label %17
    i16 113, label %17
  ]

15:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1751, ptr noundef nonnull @.str.1) #21
  %16 = load ptr, ptr %0, align 8, !tbaa !11
  br label %17

17:                                               ; preds = %12, %12, %15
  %18 = phi ptr [ %2, %12 ], [ %2, %12 ], [ %16, %15 ]
  %19 = getelementptr inbounds %struct.tree_exp, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = tail call ptr @tree_strip_sign_nop_conversions(ptr noundef %20) #21
  %22 = load ptr, ptr %0, align 8, !tbaa !11
  %23 = getelementptr inbounds %struct.tree_exp, ptr %22, i64 0, i32 3
  store ptr %21, ptr %23, align 8, !tbaa !6
  %24 = load ptr, ptr %0, align 8, !tbaa !11
  %25 = tail call zeroext i8 @tree_ssa_useless_type_conversion(ptr noundef %24) #21
  %26 = icmp eq i8 %25, 0
  %27 = load ptr, ptr %0, align 8, !tbaa !11
  br i1 %26, label %31, label %28

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.tree_exp, ptr %27, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  store ptr %30, ptr %0, align 8, !tbaa !11
  br label %31

31:                                               ; preds = %28, %17
  %32 = phi ptr [ %30, %28 ], [ %27, %17 ]
  %33 = load i64, ptr %32, align 8
  %34 = trunc i64 %33 to i16
  switch i16 %34, label %64 [
    i16 116, label %35
    i16 113, label %35
  ]

35:                                               ; preds = %31, %31
  %36 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !6
  %38 = load i64, ptr %37, align 8
  %39 = trunc i64 %38 to i16
  switch i16 %39, label %64 [
    i16 10, label %40
    i16 12, label %40
  ]

40:                                               ; preds = %35, %35
  %41 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !6
  %43 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !6
  %45 = load i64, ptr %44, align 8
  %46 = trunc i64 %45 to i16
  switch i16 %46, label %64 [
    i16 10, label %47
    i16 12, label %47
  ]

47:                                               ; preds = %40, %40
  %48 = and i64 %33, 65535
  %49 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !26
  %51 = add i32 %50, -4
  %52 = icmp ult i32 %51, 7
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !6
  br label %56

56:                                               ; preds = %47, %53
  %57 = phi i32 [ %55, %53 ], [ 0, %47 ]
  %58 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !11
  %59 = tail call ptr @maybe_fold_offset_to_address(i32 noundef %57, ptr noundef nonnull %42, ptr noundef %58, ptr noundef nonnull %37) #21
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load ptr, ptr %0, align 8, !tbaa !11
  br label %64

63:                                               ; preds = %56
  store ptr %59, ptr %0, align 8, !tbaa !11
  br label %64

64:                                               ; preds = %61, %40, %35, %31, %63
  %65 = phi ptr [ %62, %61 ], [ %32, %40 ], [ %32, %35 ], [ %32, %31 ], [ %59, %63 ]
  %66 = load i64, ptr %65, align 8
  %67 = trunc i64 %66 to i16
  switch i16 %67, label %75 [
    i16 116, label %68
    i16 113, label %68
  ]

68:                                               ; preds = %64, %64
  %69 = getelementptr inbounds %struct.tree_exp, ptr %65, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !6
  %71 = load i64, ptr %70, align 8
  %72 = trunc i64 %71 to i16
  switch i16 %72, label %75 [
    i16 41, label %73
    i16 121, label %74
  ]

73:                                               ; preds = %68
  tail call fastcc void @canonicalize_component_ref(ptr noundef nonnull %69) #20
  br label %75

74:                                               ; preds = %68
  tail call fastcc void @canonicalize_addr_expr(ptr noundef nonnull %0) #20
  br label %75

75:                                               ; preds = %73, %74, %68, %64
  %76 = load ptr, ptr %0, align 8, !tbaa !11
  %77 = load i64, ptr %76, align 8
  %78 = trunc i64 %77 to i16
  switch i16 %78, label %91 [
    i16 116, label %79
    i16 113, label %79
  ]

79:                                               ; preds = %75, %75
  %80 = getelementptr inbounds %struct.tree_common, ptr %76, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !6
  %82 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %81) #21
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load ptr, ptr %0, align 8, !tbaa !11
  %86 = getelementptr inbounds %struct.tree_common, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !6
  %88 = getelementptr inbounds %struct.tree_exp, ptr %85, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !6
  %90 = tail call ptr @fold_build1_stat_loc(i32 noundef %13, i32 noundef 118, ptr noundef %87, ptr noundef %89) #21
  store ptr %90, ptr %0, align 8, !tbaa !11
  br label %91

91:                                               ; preds = %75, %84, %79
  ret void
}

; Function Attrs: optsize
declare ptr @fold_indirect_ref_loc(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gimplify_decl_expr(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  store ptr null, ptr %0, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = load ptr, ptr @global_trees, align 16, !tbaa !11
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %76, label %11

11:                                               ; preds = %2
  %12 = load i64, ptr %6, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %20 [
    i16 35, label %14
    i16 32, label %14
  ]

14:                                               ; preds = %11, %11
  %15 = load i64, ptr %8, align 8
  %16 = and i64 %15, 131072
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  tail call void @gimplify_type_sizes(ptr noundef nonnull %8, ptr noundef %1) #20
  %19 = load i64, ptr %6, align 8
  br label %20

20:                                               ; preds = %11, %18, %14
  %21 = phi i64 [ %12, %11 ], [ %19, %18 ], [ %12, %14 ]
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 32
  br i1 %23, label %24, label %76

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 2
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 33554432
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %76

29:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !6
  store ptr %31, ptr %3, align 8, !tbaa !11
  %32 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 23
  br i1 %36, label %37, label %46

37:                                               ; preds = %29
  %38 = and i64 %21, 67108864
  %39 = icmp eq i64 %38, 0
  %40 = load i32, ptr @flag_stack_check, align 4
  %41 = icmp eq i32 %40, 1
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = tail call i32 @compare_tree_int(ptr noundef nonnull %33, i64 noundef 40) #21
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %29
  tail call fastcc void @gimplify_vla_decl(ptr noundef nonnull %6, ptr noundef %1) #20
  br label %47

47:                                               ; preds = %46, %43, %37
  %48 = icmp eq ptr %31, null
  %49 = load ptr, ptr @global_trees, align 16
  %50 = icmp eq ptr %31, %49
  %51 = select i1 %48, i1 true, i1 %50
  br i1 %51, label %61, label %52

52:                                               ; preds = %47
  %53 = load i64, ptr %6, align 8
  %54 = and i64 %53, 67108864
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  store ptr null, ptr %30, align 8, !tbaa !6
  %57 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  %58 = tail call ptr @build2_stat(i32 noundef 54, ptr noundef %57, ptr noundef nonnull %6, ptr noundef nonnull %31) #21
  store ptr %58, ptr %3, align 8, !tbaa !11
  tail call void @gimplify_and_add(ptr noundef %58, ptr noundef %1) #20
  tail call void @ggc_free(ptr noundef %58) #21
  br label %61

59:                                               ; preds = %52
  %60 = call ptr @walk_tree_1(ptr noundef nonnull %3, ptr noundef nonnull @force_labels_r, ptr noundef null, ptr noundef null, ptr noundef null) #21
  br label %61

61:                                               ; preds = %56, %59, %47
  %62 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %6, i64 0, i32 4
  %63 = load i32, ptr %62, align 8
  %64 = and i32 %63, 256
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %61
  %67 = load i64, ptr %25, align 8
  %68 = and i64 %67, 4096
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !6
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  call void @gimple_add_tmp_var(ptr noundef nonnull %6) #20
  br label %75

75:                                               ; preds = %74, %70, %66, %61
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  br label %76

76:                                               ; preds = %20, %24, %75, %2
  %77 = phi i32 [ -2, %2 ], [ 1, %75 ], [ 1, %24 ], [ 1, %20 ]
  ret i32 %77
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gimplify_bind_expr(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #4 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = load ptr, ptr %0, align 8, !tbaa !11
  %9 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.gimplify_ctx, ptr %9, i64 0, i32 9
  %11 = load i8, ptr %10, align 4, !tbaa !74
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %12 = tail call ptr @voidify_wrapper_expr(ptr noundef %8, ptr noundef null) #20
  %13 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %91, label %16

16:                                               ; preds = %2, %85
  %17 = phi ptr [ %87, %85 ], [ %14, %2 ]
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 32
  br i1 %20, label %21, label %58

21:                                               ; preds = %16
  %22 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %42, label %24

24:                                               ; preds = %21
  %25 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %17) #20, !range !5
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %17, i64 0, i32 4
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 256
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %40, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %22, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !33
  %35 = ptrtoint ptr %17 to i64
  %36 = tail call ptr @splay_tree_lookup(ptr noundef %34, i64 noundef %35) #21
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !11
  br label %40

40:                                               ; preds = %38, %27
  %41 = phi ptr [ %39, %38 ], [ %22, %27 ]
  tail call fastcc void @omp_add_variable(ptr noundef %41, ptr noundef nonnull %17, i32 noundef 129) #20
  br label %42

42:                                               ; preds = %40, %32, %24, %21
  %43 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %17, i64 0, i32 4
  %44 = load i32, ptr %43, align 8
  %45 = or i32 %44, 256
  store i32 %45, ptr %43, align 8
  %46 = and i32 %44, 2
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %42
  %49 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %17) #20, !range !5
  %50 = icmp eq i8 %49, 0
  %51 = load ptr, ptr @cfun, align 8
  %52 = icmp ne ptr %51, null
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.function, ptr %51, i64 0, i32 20
  %56 = load i32, ptr %55, align 8
  %57 = or i32 %56, 536870912
  store i32 %57, ptr %55, align 8
  br label %58

58:                                               ; preds = %42, %48, %54, %16
  %59 = load i32, ptr @optimize, align 4, !tbaa !26
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %85, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !6
  %64 = load i64, ptr %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = and i32 %65, 65535
  %67 = add nsw i32 %66, -13
  %68 = icmp ult i32 %67, 2
  br i1 %68, label %69, label %85

69:                                               ; preds = %61
  %70 = load i64, ptr %17, align 8
  %71 = and i64 %70, 589823
  %72 = icmp eq i64 %71, 32
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %17, i64 0, i32 4
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 2
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = tail call zeroext i8 @needs_to_live_in_memory(ptr noundef nonnull %17) #21
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.tree_decl_common, ptr %17, i64 0, i32 2
  %83 = load i64, ptr %82, align 8
  %84 = or i64 %83, 134217728
  store i64 %84, ptr %82, align 8
  br label %85

85:                                               ; preds = %61, %58, %69, %73, %78, %81
  %86 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !6
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %16, !llvm.loop !75

89:                                               ; preds = %85
  %90 = load ptr, ptr %13, align 8, !tbaa !6
  br label %91

91:                                               ; preds = %89, %2
  %92 = phi ptr [ %90, %89 ], [ null, %2 ]
  %93 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1, i32 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !6
  %95 = tail call ptr @gimple_build_bind(ptr noundef %92, ptr noundef null, ptr noundef %94) #21
  tail call fastcc void @gimple_push_bind_expr(ptr noundef %95) #20
  %96 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %97 = getelementptr inbounds %struct.gimplify_ctx, ptr %96, i64 0, i32 9
  store i8 0, ptr %97, align 4, !tbaa !74
  store ptr null, ptr %3, align 8, !tbaa !11
  %98 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  %99 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %98, ptr noundef nonnull %3) #20, !range !5
  %100 = load ptr, ptr %3, align 8, !tbaa !11
  call fastcc void @gimple_bind_set_body(ptr noundef %95, ptr noundef %100) #20
  %101 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %102 = getelementptr inbounds %struct.gimplify_ctx, ptr %101, i64 0, i32 9
  %103 = load i8, ptr %102, align 4, !tbaa !74
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %91
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  call fastcc void @build_stack_save_restore(ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  store ptr null, ptr %7, align 8, !tbaa !11
  store ptr null, ptr %6, align 8, !tbaa !11
  %106 = load ptr, ptr %5, align 8, !tbaa !11
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %6, ptr noundef %106) #20
  %107 = call fastcc ptr @gimple_bind_body(ptr noundef %95) #20
  %108 = load ptr, ptr %6, align 8, !tbaa !11
  %109 = call ptr @gimple_build_try(ptr noundef %107, ptr noundef %108, i32 noundef 2) #21
  %110 = load ptr, ptr %4, align 8, !tbaa !11
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %7, ptr noundef %110) #20
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %7, ptr noundef %109) #20
  %111 = load ptr, ptr %7, align 8, !tbaa !11
  call fastcc void @gimple_bind_set_body(ptr noundef %95, ptr noundef %111) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  %112 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  br label %113

113:                                              ; preds = %105, %91
  %114 = phi ptr [ %112, %105 ], [ %101, %91 ]
  %115 = getelementptr inbounds %struct.gimplify_ctx, ptr %114, i64 0, i32 9
  store i8 %11, ptr %115, align 4, !tbaa !74
  call fastcc void @gimple_pop_bind_expr() #20
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %95) #20
  %116 = icmp eq ptr %12, null
  %117 = zext i1 %116 to i32
  store ptr %12, ptr %0, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret i32 %117
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_loop_expr(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %4 = getelementptr inbounds %struct.gimplify_ctx, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  %6 = tail call ptr @create_artificial_label(i32 noundef 0) #21
  %7 = tail call ptr @gimple_build_label(ptr noundef %6) #21
  tail call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %7) #20
  %8 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct.gimplify_ctx, ptr %8, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !76
  %10 = load ptr, ptr %0, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  tail call void @gimplify_and_add(ptr noundef %12, ptr noundef %1) #20
  %13 = tail call ptr @gimple_build_goto(ptr noundef %6) #21
  tail call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %13) #20
  %14 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %15 = getelementptr inbounds %struct.gimplify_ctx, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !76
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = tail call ptr @gimple_build_label(ptr noundef nonnull %16) #21
  tail call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %19) #20
  %20 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  br label %21

21:                                               ; preds = %18, %2
  %22 = phi ptr [ %20, %18 ], [ %14, %2 ]
  %23 = getelementptr inbounds %struct.gimplify_ctx, ptr %22, i64 0, i32 4
  store ptr %5, ptr %23, align 8, !tbaa !76
  store ptr null, ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gimplify_switch_expr(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #4 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store ptr null, ptr %3, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = tail call i32 @gimplify_expr(ptr noundef nonnull %6, ptr noundef %1, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %8 = icmp ugt i32 %7, -3
  br i1 %8, label %175, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %170, label %13

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %14 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1456, ptr noundef nonnull @.str.1) #21
  br label %18

18:                                               ; preds = %13, %17
  %19 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %20 = getelementptr inbounds %struct.gimplify_ctx, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !77
  %22 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef 8) #20
  %23 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %24 = getelementptr inbounds %struct.gimplify_ctx, ptr %23, i64 0, i32 6
  store ptr %22, ptr %24, align 8, !tbaa !77
  %25 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %10, ptr noundef nonnull %3) #20, !range !5
  %26 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %27 = getelementptr inbounds %struct.gimplify_ctx, ptr %26, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !77
  store ptr %28, ptr %4, align 8, !tbaa !11
  store ptr %21, ptr %27, align 8, !tbaa !77
  %29 = call fastcc i32 @VEC_tree_base_length(ptr noundef %28) #20
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %64, label %31

31:                                               ; preds = %18, %53
  %32 = phi ptr [ %54, %53 ], [ null, %18 ]
  %33 = phi i64 [ %55, %53 ], [ 0, %18 ]
  %34 = trunc i64 %33 to i32
  %35 = call fastcc ptr @VEC_tree_base_index(ptr noundef %28, i32 noundef %34) #20
  %36 = getelementptr inbounds %struct.tree_exp, ptr %35, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !6
  %38 = icmp eq ptr %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.tree_exp, ptr %35, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !6
  %42 = icmp eq ptr %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %39
  %44 = call i32 @tree_int_cst_lt(ptr noundef nonnull %41, ptr noundef nonnull %37) #21
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %49

46:                                               ; preds = %31
  %47 = icmp eq ptr %32, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %46
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1484, ptr noundef nonnull @.str.1) #21
  br label %49

49:                                               ; preds = %43, %46, %48
  %50 = phi ptr [ %35, %48 ], [ %35, %46 ], [ %32, %43 ]
  call fastcc void @VEC_tree_base_ordered_remove(ptr noundef %28, i32 noundef %34) #20
  br label %53

51:                                               ; preds = %43, %39
  %52 = add nuw nsw i64 %33, 1
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi ptr [ %50, %49 ], [ %32, %51 ]
  %55 = phi i64 [ %33, %49 ], [ %52, %51 ]
  %56 = call fastcc i32 @VEC_tree_base_length(ptr noundef %28) #20
  %57 = zext i32 %56 to i64
  %58 = icmp ult i64 %55, %57
  br i1 %58, label %31, label %59, !llvm.loop !78

59:                                               ; preds = %53
  %60 = icmp eq i32 %56, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %59
  call void @sort_case_labels(ptr noundef %28) #20
  br label %62

62:                                               ; preds = %61, %59
  %63 = icmp eq ptr %54, null
  br i1 %63, label %64, label %165

64:                                               ; preds = %18, %62
  %65 = phi i64 [ %55, %62 ], [ 0, %18 ]
  %66 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !6
  %68 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  %69 = icmp eq ptr %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load ptr, ptr %6, align 8, !tbaa !6
  %72 = getelementptr inbounds %struct.tree_common, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !6
  br label %74

74:                                               ; preds = %70, %64
  %75 = phi ptr [ %73, %70 ], [ %67, %64 ]
  %76 = icmp eq i64 %65, 0
  br i1 %76, label %158, label %77

77:                                               ; preds = %74
  %78 = load i64, ptr %75, align 8
  %79 = trunc i64 %78 to i32
  %80 = and i32 %79, 65535
  %81 = add nsw i32 %80, -6
  %82 = icmp ult i32 %81, 3
  br i1 %82, label %83, label %158

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 13
  %85 = load ptr, ptr %84, align 8, !tbaa !6
  %86 = icmp eq ptr %85, null
  br i1 %86, label %158, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 14
  %89 = load ptr, ptr %88, align 8, !tbaa !6
  %90 = icmp eq ptr %89, null
  br i1 %90, label %158, label %91

91:                                               ; preds = %87
  %92 = call fastcc ptr @VEC_tree_base_index(ptr noundef %28, i32 noundef 0) #20
  %93 = getelementptr inbounds %struct.tree_exp, ptr %92, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !6
  %95 = call i32 @tree_int_cst_equal(ptr noundef %94, ptr noundef nonnull %85) #21
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %158, label %97

97:                                               ; preds = %91
  %98 = trunc i64 %65 to i32
  %99 = add i32 %98, -1
  %100 = call fastcc ptr @VEC_tree_base_index(ptr noundef %28, i32 noundef %99) #20
  %101 = getelementptr inbounds %struct.tree_exp, ptr %100, i64 1
  %102 = load ptr, ptr %101, align 8, !tbaa !6
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.tree_exp, ptr %100, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !6
  br label %107

107:                                              ; preds = %104, %97
  %108 = phi ptr [ %102, %97 ], [ %106, %104 ]
  %109 = load ptr, ptr %88, align 8, !tbaa !6
  %110 = call i32 @tree_int_cst_equal(ptr noundef %108, ptr noundef %109) #21
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %158, label %112

112:                                              ; preds = %107
  %113 = icmp eq i64 %65, 1
  br i1 %113, label %148, label %114

114:                                              ; preds = %112, %145
  %115 = phi i64 [ %146, %145 ], [ 1, %112 ]
  %116 = trunc i64 %115 to i32
  %117 = call fastcc ptr @VEC_tree_base_index(ptr noundef %28, i32 noundef %116) #20
  %118 = getelementptr inbounds %struct.tree_exp, ptr %117, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !6
  %120 = add i32 %116, -1
  %121 = call fastcc ptr @VEC_tree_base_index(ptr noundef %28, i32 noundef %120) #20
  %122 = getelementptr inbounds %struct.tree_exp, ptr %121, i64 1
  %123 = load ptr, ptr %122, align 8, !tbaa !6
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %114
  %126 = getelementptr inbounds %struct.tree_exp, ptr %121, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !6
  br label %128

128:                                              ; preds = %125, %114
  %129 = phi ptr [ %123, %114 ], [ %127, %125 ]
  %130 = getelementptr inbounds %struct.tree_int_cst, ptr %129, i64 0, i32 1
  %131 = load i64, ptr %130, align 8, !tbaa !6
  %132 = add i64 %131, 1
  %133 = getelementptr inbounds %struct.tree_int_cst, ptr %119, i64 0, i32 1
  %134 = load i64, ptr %133, align 8, !tbaa !6
  %135 = icmp eq i64 %132, %134
  br i1 %135, label %136, label %148

136:                                              ; preds = %128
  %137 = getelementptr inbounds %struct.tree_int_cst, ptr %129, i64 0, i32 1, i32 1
  %138 = load i64, ptr %137, align 8, !tbaa !6
  %139 = icmp eq i64 %132, 0
  %140 = zext i1 %139 to i64
  %141 = add nsw i64 %138, %140
  %142 = getelementptr inbounds %struct.tree_int_cst, ptr %119, i64 0, i32 1, i32 1
  %143 = load i64, ptr %142, align 8, !tbaa !6
  %144 = icmp eq i64 %141, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %136
  %146 = add nuw i64 %115, 1
  %147 = icmp eq i64 %146, %65
  br i1 %147, label %148, label %114, !llvm.loop !79

148:                                              ; preds = %145, %136, %128, %112
  %149 = phi i64 [ 1, %112 ], [ %115, %128 ], [ %115, %136 ], [ %65, %145 ]
  %150 = icmp eq i64 %149, %65
  br i1 %150, label %151, label %158

151:                                              ; preds = %148
  %152 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  %153 = call fastcc ptr @VEC_tree_base_index(ptr noundef %28, i32 noundef 0) #20
  %154 = getelementptr inbounds %struct.tree_exp, ptr %153, i64 1, i32 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !6
  %156 = call ptr @build3_stat(i32 noundef 139, ptr noundef %152, ptr noundef null, ptr noundef null, ptr noundef %155) #21
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %165

158:                                              ; preds = %107, %148, %77, %74, %83, %87, %91, %151
  %159 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  %160 = call ptr @create_artificial_label(i32 noundef 0) #21
  %161 = call ptr @build3_stat(i32 noundef 139, ptr noundef %159, ptr noundef null, ptr noundef null, ptr noundef %160) #21
  %162 = getelementptr inbounds %struct.tree_exp, ptr %161, i64 1, i32 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !6
  %164 = call ptr @gimple_build_label(ptr noundef %163) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %3, ptr noundef %164) #20
  br label %165

165:                                              ; preds = %151, %158, %62
  %166 = phi ptr [ %54, %62 ], [ %156, %151 ], [ %161, %158 ]
  %167 = load ptr, ptr %6, align 8, !tbaa !6
  %168 = call ptr @gimple_build_switch_vec(ptr noundef %167, ptr noundef nonnull %166, ptr noundef %28) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %168) #20
  %169 = load ptr, ptr %3, align 8, !tbaa !11
  call fastcc void @gimplify_seq_add_seq(ptr noundef %1, ptr noundef %169) #20
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  br label %175

170:                                              ; preds = %9
  %171 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1, i32 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !6
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %175

174:                                              ; preds = %170
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1562, ptr noundef nonnull @.str.1) #21
  br label %175

175:                                              ; preds = %165, %170, %174, %2
  %176 = phi i32 [ %7, %2 ], [ 1, %174 ], [ 1, %170 ], [ 1, %165 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret i32 %176
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_exit_expr(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.gimplify_ctx, ptr %5, i64 0, i32 4
  %7 = tail call ptr @build_and_jump(ptr noundef nonnull %6) #20
  %8 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  %9 = tail call ptr @build3_stat(i32 noundef 56, ptr noundef %8, ptr noundef %4, ptr noundef %7, ptr noundef null) #21
  store ptr %9, ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_seq_add_stmt(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %4 = icmp eq ptr %1, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call ptr @gimple_seq_alloc() #21
  store ptr %9, ptr %0, align 8, !tbaa !11
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi ptr [ %9, %8 ], [ %6, %5 ]
  call fastcc void @gsi_last(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %11) #20
  call void @gsi_insert_after_without_update(ptr noundef nonnull %3, ptr noundef nonnull %1, i32 noundef 0) #21
  br label %12

12:                                               ; preds = %2, %10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_build_goto(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gimple_build_predict(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @decl_function_context(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gimple_build_label(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_case_label_expr(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #4 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ @gimplify_ctxp, %2 ], [ %5, %3 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.gimplify_ctx, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !77
  %8 = icmp eq ptr %7, null
  br i1 %8, label %3, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gimplify_ctx, ptr %5, i64 0, i32 6
  %11 = load ptr, ptr %0, align 8, !tbaa !11
  %12 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = tail call ptr @gimple_build_label(ptr noundef %13) #21
  %15 = load ptr, ptr %0, align 8, !tbaa !11
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %10, ptr noundef %15) #20
  tail call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %14) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gimplify_return_expr(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = load ptr, ptr @global_trees, align 16, !tbaa !11
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %89, label %7

7:                                                ; preds = %2
  %8 = icmp eq ptr %4, null
  br i1 %8, label %82, label %9

9:                                                ; preds = %7
  %10 = load i64, ptr %4, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 36
  br i1 %12, label %82, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr @current_function_decl, align 8, !tbaa !11
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 19
  br i1 %21, label %79, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 47
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.tree_exp, ptr %24, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  br label %31

31:                                               ; preds = %28, %22
  %32 = phi ptr [ %30, %28 ], [ %24, %22 ]
  %33 = trunc i64 %10 to i32
  %34 = and i32 %33, 65535
  %35 = add nsw i32 %34, -53
  %36 = icmp ult i32 %35, 2
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load i64, ptr %32, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 36
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1204, ptr noundef nonnull @.str.1) #21
  br label %44

42:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1204, ptr noundef nonnull @.str.1) #21
  %43 = icmp eq ptr %32, null
  br i1 %43, label %79, label %44

44:                                               ; preds = %37, %41, %42
  %45 = load ptr, ptr @current_function_decl, align 8, !tbaa !11
  %46 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !6
  %48 = tail call i32 @aggregate_value_p(ptr noundef nonnull %32, ptr noundef %47) #21
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %79

50:                                               ; preds = %44
  %51 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %52 = getelementptr inbounds %struct.gimplify_ctx, ptr %51, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !80
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %75

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !6
  %58 = tail call ptr @create_tmp_var(ptr noundef %57, ptr noundef null) #20
  %59 = getelementptr inbounds %struct.tree_common, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !6
  %61 = load i64, ptr %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = and i32 %62, 65535
  %64 = add nsw i32 %63, -13
  %65 = icmp ult i32 %64, 2
  br i1 %65, label %66, label %70

66:                                               ; preds = %55
  %67 = getelementptr inbounds %struct.tree_decl_common, ptr %58, i64 0, i32 2
  %68 = load i64, ptr %67, align 8
  %69 = or i64 %68, 134217728
  store i64 %69, ptr %67, align 8
  br label %70

70:                                               ; preds = %55, %66
  %71 = load i64, ptr %58, align 8
  %72 = or i64 %71, 8388608
  store i64 %72, ptr %58, align 8
  %73 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %74 = getelementptr inbounds %struct.gimplify_ctx, ptr %73, i64 0, i32 5
  store ptr %58, ptr %74, align 8, !tbaa !80
  br label %75

75:                                               ; preds = %50, %70
  %76 = phi ptr [ %58, %70 ], [ %53, %50 ]
  %77 = icmp eq ptr %76, %32
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  store ptr %76, ptr %23, align 8, !tbaa !6
  br label %79

79:                                               ; preds = %13, %42, %44, %78, %75
  %80 = phi ptr [ %76, %78 ], [ %32, %75 ], [ null, %42 ], [ %32, %44 ], [ null, %13 ]
  %81 = load ptr, ptr %3, align 8, !tbaa !6
  tail call void @gimplify_and_add(ptr noundef %81, ptr noundef %1) #20
  br label %82

82:                                               ; preds = %7, %9, %79
  %83 = phi ptr [ %80, %79 ], [ %4, %9 ], [ %4, %7 ]
  %84 = tail call ptr @gimple_build_return(ptr noundef %83) #21
  %85 = load i64, ptr %0, align 8
  %86 = lshr i64 %85, 23
  %87 = trunc i64 %86 to i8
  %88 = and i8 %87, 1
  tail call fastcc void @gimple_set_no_warning(ptr noundef %84, i8 noundef zeroext %88) #20
  tail call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %84) #20
  br label %89

89:                                               ; preds = %82, %2
  %90 = phi i32 [ -2, %2 ], [ 1, %82 ]
  ret i32 %90
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_constructor_elt_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #15 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !81
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !11
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gimplify_save_expr(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 {
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 120
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4676, ptr noundef nonnull @.str.1) #21
  %9 = load ptr, ptr %0, align 8, !tbaa !11
  %10 = load i64, ptr %9, align 8
  br label %11

11:                                               ; preds = %3, %8
  %12 = phi i64 [ %5, %3 ], [ %10, %8 ]
  %13 = phi ptr [ %4, %3 ], [ %9, %8 ]
  %14 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = and i64 %12, 134217728
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = tail call i32 @gimplify_expr(ptr noundef nonnull %14, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_stmt, i32 noundef 0) #20
  br label %27

25:                                               ; preds = %18
  %26 = tail call ptr @get_initialized_tmp_var(ptr noundef nonnull %15, ptr noundef %1, ptr noundef %2) #20
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ 1, %25 ]
  %29 = phi ptr [ null, %23 ], [ %26, %25 ]
  %30 = load ptr, ptr %0, align 8, !tbaa !11
  %31 = getelementptr inbounds %struct.tree_exp, ptr %30, i64 0, i32 3
  store ptr %29, ptr %31, align 8, !tbaa !6
  %32 = load ptr, ptr %0, align 8, !tbaa !11
  %33 = load i64, ptr %32, align 8
  %34 = or i64 %33, 134217728
  store i64 %34, ptr %32, align 8
  br label %35

35:                                               ; preds = %27, %11
  %36 = phi i32 [ 1, %11 ], [ %28, %27 ]
  %37 = phi ptr [ %15, %11 ], [ %29, %27 ]
  store ptr %37, ptr %0, align 8, !tbaa !11
  ret i32 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimplify_asm_expr(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 {
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca [10 x i8], align 1
  %13 = alloca ptr, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #22
  %17 = load ptr, ptr %0, align 8, !tbaa !11
  %18 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 0, i32 3
  %19 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = tail call i32 @list_length(ptr noundef %20) #21
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 3
  %24 = alloca i8, i64 %23, align 16
  store ptr null, ptr %11, align 8, !tbaa !11
  store ptr null, ptr %10, align 8, !tbaa !11
  store ptr null, ptr %9, align 8, !tbaa !11
  store ptr null, ptr %8, align 8, !tbaa !11
  %25 = load ptr, ptr %19, align 8, !tbaa !6
  %26 = icmp eq ptr %25, null
  br i1 %26, label %165, label %27

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 1, i32 0, i32 1
  br label %29

29:                                               ; preds = %27, %159
  %30 = phi i64 [ 0, %27 ], [ %161, %159 ]
  %31 = phi ptr [ %25, %27 ], [ %34, %159 ]
  %32 = phi i32 [ 1, %27 ], [ %160, %159 ]
  %33 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  %35 = getelementptr inbounds %struct.tree_list, ptr %31, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !6
  %37 = getelementptr inbounds %struct.tree_list, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  %39 = getelementptr inbounds %struct.tree_string, ptr %38, i64 0, i32 2
  store ptr %39, ptr %4, align 8, !tbaa !11
  %40 = getelementptr inbounds ptr, ptr %24, i64 %30
  store ptr %39, ptr %40, align 8, !tbaa !11
  %41 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %39) #20
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %159, label %43

43:                                               ; preds = %29
  %44 = trunc i64 %30 to i32
  %45 = call zeroext i8 @parse_output_constraint(ptr noundef nonnull %4, i32 noundef %44, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #21
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i8 0, ptr %7, align 1, !tbaa !6
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi i32 [ %32, %43 ], [ -2, %47 ]
  %50 = load i8, ptr %6, align 1, !tbaa !6
  %51 = icmp eq i8 %50, 0
  %52 = load i8, ptr %5, align 1
  %53 = icmp ne i8 %52, 0
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.tree_list, ptr %31, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !6
  call void @mark_addressable(ptr noundef %57) #20
  br label %58

58:                                               ; preds = %55, %48
  %59 = getelementptr inbounds %struct.tree_list, ptr %31, i64 0, i32 2
  %60 = load i8, ptr %7, align 1, !tbaa !6
  %61 = icmp eq i8 %60, 0
  %62 = select i1 %61, ptr @is_gimple_lvalue, ptr @is_gimple_min_lval
  %63 = call i32 @gimplify_expr(ptr noundef nonnull %59, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %62, i32 noundef 6) #20
  %64 = icmp eq i32 %63, -2
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  call void (ptr, ...) @error(ptr noundef nonnull @.str.11, i32 noundef %44) #21
  br label %66

66:                                               ; preds = %65, %58
  %67 = phi i32 [ -2, %65 ], [ %49, %58 ]
  call fastcc void @VEC_tree_gc_safe_push(ptr noundef nonnull %9, ptr noundef nonnull %31) #20
  store ptr null, ptr %33, align 8, !tbaa !6
  %68 = load i8, ptr %7, align 1, !tbaa !6
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %159, label %70

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %12) #22
  %71 = load ptr, ptr %4, align 8, !tbaa !11
  %72 = call ptr @xstrdup(ptr noundef %71) #21
  store i8 61, ptr %72, align 1, !tbaa !6
  %73 = trunc i64 %41 to i32
  %74 = call ptr @build_string(i32 noundef %73, ptr noundef nonnull %72) #21
  %75 = load ptr, ptr %35, align 8, !tbaa !6
  %76 = getelementptr inbounds %struct.tree_list, ptr %75, i64 0, i32 2
  store ptr %74, ptr %76, align 8, !tbaa !6
  %77 = load i8, ptr %6, align 1, !tbaa !6
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %146, label %79

79:                                               ; preds = %70
  %80 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %44) #20
  %81 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %72, i32 noundef 44) #20
  %82 = icmp eq ptr %81, null
  %83 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #20
  br i1 %82, label %143, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds i8, ptr %72, i64 1
  br label %86

86:                                               ; preds = %94, %84
  %87 = phi i64 [ 0, %84 ], [ %101, %94 ]
  %88 = phi ptr [ %85, %84 ], [ %104, %94 ]
  %89 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %88, i32 noundef 44) #20
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = call i64 @strlen(ptr nonnull dereferenceable(1) %88)
  %93 = getelementptr inbounds i8, ptr %88, i64 %92
  br label %94

94:                                               ; preds = %91, %86
  %95 = phi ptr [ %93, %91 ], [ %89, %86 ]
  %96 = ptrtoint ptr %95 to i64
  %97 = ptrtoint ptr %88 to i64
  %98 = sub i64 %96, %97
  %99 = call i64 @llvm.umax.i64(i64 %98, i64 %83)
  %100 = add i64 %87, 1
  %101 = add i64 %100, %99
  %102 = load i8, ptr %95, align 1, !tbaa !6
  %103 = icmp eq i8 %102, 0
  %104 = getelementptr inbounds i8, ptr %95, i64 1
  br i1 %103, label %105, label %86

105:                                              ; preds = %94
  %106 = alloca i8, i64 %101, align 16
  br label %107

107:                                              ; preds = %133, %105
  %108 = phi ptr [ %85, %105 ], [ %136, %133 ]
  %109 = phi ptr [ %106, %105 ], [ %135, %133 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #22
  %110 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %108, i32 noundef 44) #20
  %111 = icmp eq ptr %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %107
  store i8 0, ptr %110, align 1, !tbaa !6
  br label %113

113:                                              ; preds = %112, %107
  %114 = getelementptr inbounds i8, ptr %108, i64 -1
  store i8 61, ptr %114, align 1, !tbaa !6
  store ptr %114, ptr %13, align 8, !tbaa !11
  %115 = call zeroext i8 @parse_output_constraint(ptr noundef nonnull %13, i32 noundef %44, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16) #21
  %116 = icmp eq ptr %109, %106
  br i1 %116, label %119, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds i8, ptr %109, i64 1
  store i8 44, ptr %109, align 1, !tbaa !6
  br label %119

119:                                              ; preds = %117, %113
  %120 = phi ptr [ %118, %117 ], [ %106, %113 ]
  %121 = load i8, ptr %15, align 1, !tbaa !6
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %119
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %120, ptr nonnull align 1 %12, i64 %83, i1 false)
  br label %133

124:                                              ; preds = %119
  br i1 %111, label %129, label %125

125:                                              ; preds = %124
  %126 = ptrtoint ptr %110 to i64
  %127 = ptrtoint ptr %108 to i64
  %128 = sub i64 %126, %127
  br label %131

129:                                              ; preds = %124
  %130 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %108) #20
  br label %131

131:                                              ; preds = %129, %125
  %132 = phi i64 [ %128, %125 ], [ %130, %129 ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %120, ptr nonnull align 1 %108, i64 %132, i1 false)
  br label %133

133:                                              ; preds = %131, %123
  %134 = phi i64 [ %83, %123 ], [ %132, %131 ]
  %135 = getelementptr inbounds i8, ptr %120, i64 %134
  %136 = getelementptr inbounds i8, ptr %110, i64 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #22
  br i1 %111, label %137, label %107

137:                                              ; preds = %133
  store i8 0, ptr %135, align 1, !tbaa !6
  %138 = ptrtoint ptr %135 to i64
  %139 = ptrtoint ptr %106 to i64
  %140 = sub i64 %138, %139
  %141 = trunc i64 %140 to i32
  %142 = call ptr @build_string(i32 noundef %141, ptr noundef nonnull %106) #21
  br label %151

143:                                              ; preds = %79
  %144 = trunc i64 %83 to i32
  %145 = call ptr @build_string(i32 noundef %144, ptr noundef nonnull %12) #21
  br label %151

146:                                              ; preds = %70
  %147 = add i32 %73, -1
  %148 = load ptr, ptr %4, align 8, !tbaa !11
  %149 = getelementptr inbounds i8, ptr %148, i64 1
  %150 = call ptr @build_string(i32 noundef %147, ptr noundef nonnull %149) #21
  br label %151

151:                                              ; preds = %137, %143, %146
  %152 = phi ptr [ %142, %137 ], [ %145, %143 ], [ %150, %146 ]
  call void @free(ptr noundef %72) #20
  %153 = call ptr @build_tree_list_stat(ptr noundef null, ptr noundef %152) #21
  %154 = load ptr, ptr %59, align 8, !tbaa !6
  %155 = call ptr @unshare_expr(ptr noundef %154) #20
  %156 = call ptr @build_tree_list_stat(ptr noundef %153, ptr noundef %155) #21
  %157 = load ptr, ptr %28, align 8, !tbaa !6
  %158 = call ptr @chainon(ptr noundef %157, ptr noundef %156) #21
  store ptr %158, ptr %28, align 8, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %12) #22
  br label %159

159:                                              ; preds = %66, %151, %29
  %160 = phi i32 [ %32, %29 ], [ %67, %151 ], [ %67, %66 ]
  %161 = add nuw i64 %30, 1
  %162 = icmp eq ptr %34, null
  br i1 %162, label %163, label %29, !llvm.loop !83

163:                                              ; preds = %159
  %164 = trunc i64 %161 to i32
  br label %165

165:                                              ; preds = %163, %3
  %166 = phi i32 [ 1, %3 ], [ %160, %163 ]
  %167 = phi i32 [ 0, %3 ], [ %164, %163 ]
  %168 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 1, i32 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !6
  %170 = icmp eq ptr %169, null
  br i1 %170, label %230, label %171

171:                                              ; preds = %165, %226
  %172 = phi i32 [ %228, %226 ], [ %167, %165 ]
  %173 = phi ptr [ %176, %226 ], [ %169, %165 ]
  %174 = phi i32 [ %227, %226 ], [ %166, %165 ]
  %175 = getelementptr inbounds %struct.tree_common, ptr %173, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !6
  %177 = getelementptr inbounds %struct.tree_list, ptr %173, i64 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !6
  %179 = getelementptr inbounds %struct.tree_list, ptr %178, i64 0, i32 2
  %180 = load ptr, ptr %179, align 8, !tbaa !6
  %181 = getelementptr inbounds %struct.tree_string, ptr %180, i64 0, i32 2
  store ptr %181, ptr %4, align 8, !tbaa !11
  %182 = call zeroext i8 @parse_input_constraint(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, i32 noundef %21, i32 noundef 0, ptr noundef nonnull %24, ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %183 = getelementptr inbounds %struct.tree_list, ptr %173, i64 0, i32 2
  %184 = load ptr, ptr %183, align 8, !tbaa !6
  %185 = getelementptr inbounds %struct.tree_common, ptr %184, i64 0, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !6
  %187 = load i64, ptr %186, align 8
  %188 = and i64 %187, 262144
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %171
  %191 = load i8, ptr %6, align 1, !tbaa !6
  %192 = load i8, ptr %5, align 1
  br label %198

193:                                              ; preds = %171
  %194 = load i8, ptr %5, align 1
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %193
  store i8 0, ptr %6, align 1, !tbaa !6
  br label %198

197:                                              ; preds = %193
  call void (ptr, ...) @error(ptr noundef nonnull @.str.13) #21
  call void (ptr, ...) @error(ptr noundef nonnull @.str.14, i32 noundef %172) #21
  br label %269

198:                                              ; preds = %190, %196
  %199 = phi i8 [ %192, %190 ], [ 1, %196 ]
  %200 = phi i8 [ %191, %190 ], [ 0, %196 ]
  %201 = icmp eq i8 %200, 0
  %202 = icmp ne i8 %199, 0
  %203 = select i1 %201, i1 %202, i1 false
  br i1 %203, label %204, label %222

204:                                              ; preds = %198
  %205 = call i32 @gimplify_expr(ptr noundef nonnull %183, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_lvalue, i32 noundef 6) #20
  %206 = load ptr, ptr %183, align 8, !tbaa !6
  call void @mark_addressable(ptr noundef %206) #20
  %207 = icmp eq i32 %205, -2
  br i1 %207, label %208, label %226

208:                                              ; preds = %204
  %209 = load ptr, ptr %183, align 8, !tbaa !6
  %210 = load i64, ptr %209, align 8
  %211 = and i64 %210, 65535
  %212 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %211
  %213 = load i32, ptr %212, align 4, !tbaa !26
  %214 = add i32 %213, -4
  %215 = icmp ult i32 %214, 7
  br i1 %215, label %216, label %221

216:                                              ; preds = %208
  %217 = getelementptr inbounds %struct.tree_exp, ptr %209, i64 0, i32 1
  %218 = load i32, ptr %217, align 8, !tbaa !6
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %216
  store i32 %218, ptr @input_location, align 4, !tbaa !26
  br label %221

221:                                              ; preds = %208, %220, %216
  call void (ptr, ...) @error(ptr noundef nonnull @.str.15, i32 noundef %172) #21
  br label %226

222:                                              ; preds = %198
  %223 = call i32 @gimplify_expr(ptr noundef nonnull %183, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_asm_val, i32 noundef 1) #20
  %224 = icmp eq i32 %223, -2
  %225 = select i1 %224, i32 -2, i32 %174
  br label %226

226:                                              ; preds = %222, %204, %221
  %227 = phi i32 [ -2, %221 ], [ %174, %204 ], [ %225, %222 ]
  store ptr null, ptr %175, align 8, !tbaa !6
  call fastcc void @VEC_tree_gc_safe_push(ptr noundef nonnull %8, ptr noundef nonnull %173) #20
  %228 = add nuw nsw i32 %172, 1
  %229 = icmp eq ptr %176, null
  br i1 %229, label %230, label %171, !llvm.loop !84

230:                                              ; preds = %226, %165
  %231 = phi i32 [ %166, %165 ], [ %227, %226 ]
  %232 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 1, i32 0, i32 2
  %233 = load ptr, ptr %232, align 8, !tbaa !6
  %234 = icmp eq ptr %233, null
  br i1 %234, label %240, label %235

235:                                              ; preds = %230, %235
  %236 = phi ptr [ %238, %235 ], [ %233, %230 ]
  call fastcc void @VEC_tree_gc_safe_push(ptr noundef nonnull %10, ptr noundef nonnull %236) #20
  %237 = getelementptr inbounds %struct.tree_common, ptr %236, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !6
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %235, !llvm.loop !85

240:                                              ; preds = %235, %230
  %241 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 1, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !6
  %243 = icmp eq ptr %242, null
  br i1 %243, label %249, label %244

244:                                              ; preds = %240, %244
  %245 = phi ptr [ %247, %244 ], [ %242, %240 ]
  call fastcc void @VEC_tree_gc_safe_push(ptr noundef nonnull %11, ptr noundef nonnull %245) #20
  %246 = getelementptr inbounds %struct.tree_common, ptr %245, i64 0, i32 1
  %247 = load ptr, ptr %246, align 8, !tbaa !6
  %248 = icmp eq ptr %247, null
  br i1 %248, label %249, label %244, !llvm.loop !86

249:                                              ; preds = %244, %240
  %250 = icmp eq i32 %231, -2
  br i1 %250, label %269, label %251

251:                                              ; preds = %249
  %252 = load ptr, ptr %18, align 8, !tbaa !6
  %253 = getelementptr inbounds %struct.tree_string, ptr %252, i64 0, i32 2
  %254 = load ptr, ptr %8, align 8, !tbaa !11
  %255 = load ptr, ptr %9, align 8, !tbaa !11
  %256 = load ptr, ptr %10, align 8, !tbaa !11
  %257 = load ptr, ptr %11, align 8, !tbaa !11
  %258 = call ptr @gimple_build_asm_vec(ptr noundef nonnull %253, ptr noundef %254, ptr noundef %255, ptr noundef %256, ptr noundef %257) #21
  %259 = load i64, ptr %17, align 8
  %260 = trunc i64 %259 to i32
  %261 = lshr i32 %260, 27
  %262 = trunc i32 %261 to i8
  %263 = and i8 %262, 1
  call fastcc void @gimple_asm_set_volatile(ptr noundef %258, i8 noundef zeroext %263) #20
  %264 = load i64, ptr %17, align 8
  %265 = trunc i64 %264 to i32
  %266 = lshr i32 %265, 26
  %267 = trunc i32 %266 to i8
  %268 = and i8 %267, 1
  call fastcc void @gimple_asm_set_input(ptr noundef %258, i8 noundef zeroext %268) #20
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %258) #20
  br label %269

269:                                              ; preds = %249, %251, %197
  %270 = phi i32 [ -2, %197 ], [ %231, %251 ], [ -2, %249 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret i32 %270
}

; Function Attrs: optsize
declare void @gimple_seq_add_seq(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gimple_build_try(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_try_set_catch_is_cleanup(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #4 {
  %3 = tail call fastcc i32 @gimple_try_kind(ptr noundef %0) #20, !range !87
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 2976, ptr noundef nonnull @.str.1) #21
  br label %6

6:                                                ; preds = %2, %5
  %7 = icmp eq i8 %1, 0
  %8 = load i32, ptr %0, align 8
  %9 = and i32 %8, -262145
  %10 = select i1 %7, i32 0, i32 262144
  %11 = or disjoint i32 %9, %10
  store i32 %11, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gimplify_cleanup_point_expr(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #4 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !11
  %6 = load ptr, ptr %0, align 8, !tbaa !11
  %7 = tail call ptr @voidify_wrapper_expr(ptr noundef %6, ptr noundef null) #20
  %8 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct.gimplify_ctx, ptr %8, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !88
  %11 = getelementptr inbounds %struct.gimplify_ctx, ptr %8, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !89
  store i32 0, ptr %9, align 8, !tbaa !88
  store ptr null, ptr %11, align 8, !tbaa !89
  %13 = load ptr, ptr %0, align 8, !tbaa !11
  %14 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %15 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %14, ptr noundef nonnull %4) #20, !range !5
  %16 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %17 = getelementptr inbounds %struct.gimplify_ctx, ptr %16, i64 0, i32 8
  store i32 %10, ptr %17, align 8, !tbaa !88
  %18 = getelementptr inbounds %struct.gimplify_ctx, ptr %16, i64 0, i32 3
  store ptr %12, ptr %18, align 8, !tbaa !89
  %19 = load ptr, ptr %4, align 8, !tbaa !11
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %19) #20
  %20 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !5
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %2, %40
  %23 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  %24 = call fastcc i32 @gimple_code(ptr noundef %23) #20, !range !21
  %25 = icmp eq i32 %24, 34
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = call fastcc zeroext i8 @gsi_one_before_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !5
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = call fastcc ptr @gimple_wce_cleanup(ptr noundef %23) #20
  call void @gsi_insert_seq_before_without_update(ptr noundef nonnull %3, ptr noundef %30, i32 noundef 1) #21
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #21
  br label %43

31:                                               ; preds = %26
  %32 = call fastcc zeroext i8 @gimple_wce_cleanup_eh_only(ptr noundef %23) #20, !range !5
  %33 = icmp eq i8 %32, 0
  %34 = select i1 %33, i32 2, i32 1
  %35 = call ptr @gsi_split_seq_after(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  %36 = call fastcc ptr @gimple_wce_cleanup(ptr noundef %23) #20
  %37 = call ptr @gimple_build_try(ptr noundef %35, ptr noundef %36, i32 noundef %34) #21
  %38 = call fastcc ptr @gsi_stmt_ptr(ptr noundef nonnull %3) #20
  store ptr %37, ptr %38, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %35) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !90
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  br label %40

39:                                               ; preds = %22
  call fastcc void @gsi_next(ptr noundef nonnull %3) #20
  br label %40

40:                                               ; preds = %31, %39
  %41 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !5
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %22, label %43

43:                                               ; preds = %40, %2, %29
  %44 = load ptr, ptr %4, align 8, !tbaa !11
  call fastcc void @gimplify_seq_add_seq(ptr noundef %1, ptr noundef %44) #20
  %45 = icmp eq ptr %7, null
  %46 = zext i1 %45 to i32
  store ptr %7, ptr %0, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret i32 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gimplify_target_expr(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 {
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %8 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  store ptr %9, ptr %4, align 8, !tbaa !11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %59, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 23
  br i1 %16, label %25, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 131072
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  tail call void @gimplify_type_sizes(ptr noundef nonnull %19, ptr noundef %1) #20
  br label %24

24:                                               ; preds = %23, %17
  tail call fastcc void @gimplify_vla_decl(ptr noundef nonnull %7, ptr noundef %1) #20
  br label %26

25:                                               ; preds = %11
  tail call void @gimple_add_tmp_var(ptr noundef nonnull %7) #20
  br label %26

26:                                               ; preds = %25, %24
  %27 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 19
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 @gimplify_expr(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_stmt, i32 noundef 0) #20
  br label %38

34:                                               ; preds = %26
  %35 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  %36 = tail call ptr @build2_stat(i32 noundef 54, ptr noundef %35, ptr noundef nonnull %7, ptr noundef nonnull %9) #21
  store ptr %36, ptr %4, align 8, !tbaa !11
  %37 = call i32 @gimplify_expr(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_stmt, i32 noundef 0) #20
  store ptr null, ptr %4, align 8, !tbaa !11
  call void @ggc_free(ptr noundef %36) #21
  br label %38

38:                                               ; preds = %34, %32
  %39 = phi i32 [ %33, %32 ], [ %37, %34 ]
  %40 = icmp eq i32 %39, -2
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store ptr null, ptr %8, align 8, !tbaa !6
  br label %66

42:                                               ; preds = %38
  %43 = load ptr, ptr %4, align 8, !tbaa !11
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  call void @gimplify_and_add(ptr noundef nonnull %43, ptr noundef %1) #20
  br label %46

46:                                               ; preds = %45, %42
  %47 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !6
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = load i64, ptr %5, align 8
  %52 = trunc i64 %51 to i32
  %53 = lshr i32 %52, 26
  %54 = trunc i32 %53 to i8
  %55 = and i8 %54, 1
  call fastcc void @gimple_push_cleanup(ptr noundef nonnull %7, ptr noundef nonnull %48, i8 noundef zeroext %55, ptr noundef %1) #20
  br label %56

56:                                               ; preds = %50, %46
  %57 = load ptr, ptr %4, align 8, !tbaa !11
  %58 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1, i32 0, i32 2
  store ptr %57, ptr %58, align 8, !tbaa !6
  store ptr null, ptr %8, align 8, !tbaa !6
  br label %65

59:                                               ; preds = %3
  %60 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %7, i64 0, i32 4
  %61 = load i32, ptr %60, align 8
  %62 = and i32 %61, 256
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5246, ptr noundef nonnull @.str.1) #21
  br label %65

65:                                               ; preds = %64, %59, %56
  store ptr %7, ptr %0, align 8, !tbaa !11
  br label %66

66:                                               ; preds = %65, %41
  %67 = phi i32 [ -2, %41 ], [ 0, %65 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret i32 %67
}

; Function Attrs: optsize
declare ptr @gimple_build_catch(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gimple_build_eh_filter(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_set_no_warning(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #15 {
  %3 = load i32, ptr %0, align 8
  %4 = and i8 %1, 1
  %5 = zext nneg i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 8
  %7 = and i32 %3, -257
  %8 = or disjoint i32 %7, %6
  store i32 %8, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gimplify_statement_list(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = alloca %struct.tree_stmt_iterator, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = tail call ptr @voidify_wrapper_expr(ptr noundef %4, ptr noundef null) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %6 = load ptr, ptr %0, align 8, !tbaa !11
  %7 = tail call fastcc { ptr, ptr } @tsi_start(ptr noundef %6) #20
  %8 = extractvalue { ptr, ptr } %7, 0
  store ptr %8, ptr %3, align 8
  %9 = getelementptr inbounds { ptr, ptr }, ptr %3, i64 0, i32 1
  %10 = extractvalue { ptr, ptr } %7, 1
  store ptr %10, ptr %9, align 8
  %11 = tail call fastcc zeroext i8 @tsi_end_p(ptr %8) #20
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2, %13
  %14 = phi ptr [ %17, %13 ], [ %8, %2 ]
  %15 = call fastcc ptr @tsi_stmt_ptr(ptr %14) #20
  %16 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %15, ptr noundef %1) #20, !range !5
  call void @tsi_delink(ptr noundef nonnull %3) #21
  %17 = load ptr, ptr %3, align 8
  %18 = call fastcc zeroext i8 @tsi_end_p(ptr %17) #20
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %13, label %20, !llvm.loop !91

20:                                               ; preds = %13, %2
  %21 = icmp eq ptr %5, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  store ptr %5, ptr %0, align 8, !tbaa !11
  br label %23

23:                                               ; preds = %20, %22
  %24 = phi i32 [ 0, %22 ], [ 1, %20 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gimplify_var_or_parm_decl(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 32
  br i1 %5, label %6, label %33

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %2, i64 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 256
  %10 = icmp eq i32 %9, 0
  %11 = and i64 %3, 67108864
  %12 = icmp eq i64 %11, 0
  %13 = and i1 %12, %10
  br i1 %13, label %14, label %33

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 33554432
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = tail call ptr @decl_function_context(ptr noundef nonnull %2) #21
  %21 = load ptr, ptr @current_function_decl, align 8, !tbaa !11
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load ptr, ptr @global_dc, align 8, !tbaa !11
  %25 = getelementptr inbounds %struct.diagnostic_context, ptr %24, i64 0, i32 1, i64 4
  %26 = load i32, ptr %25, align 8, !tbaa !26
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %101

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.diagnostic_context, ptr %24, i64 0, i32 1, i64 5
  %30 = load i32, ptr %29, align 4, !tbaa !26
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %101

32:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1820, ptr noundef nonnull @.str.1) #21
  br label %101

33:                                               ; preds = %19, %14, %6, %1
  %34 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !11
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = tail call fastcc zeroext i8 @omp_notice_variable(ptr noundef nonnull %34, ptr noundef nonnull %2) #20
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %101

39:                                               ; preds = %36, %33
  %40 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 2
  %41 = load i64, ptr %40, align 8
  %42 = and i64 %41, 67108864
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %101, label %44

44:                                               ; preds = %39
  %45 = tail call ptr @decl_value_expr_lookup(ptr noundef nonnull %2) #21
  %46 = load i64, ptr %2, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 32
  br i1 %48, label %49, label %99

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !6
  %52 = load i64, ptr %51, align 8
  %53 = and i64 %52, 65535
  %54 = icmp ne i64 %53, 23
  %55 = load ptr, ptr @nonlocal_vlas, align 8
  %56 = icmp ne ptr %55, null
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %99

58:                                               ; preds = %49
  %59 = load i64, ptr %45, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 47
  br i1 %61, label %62, label %99

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.tree_exp, ptr %45, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !6
  %65 = load i64, ptr %64, align 8
  %66 = and i64 %65, 65535
  %67 = icmp eq i64 %66, 32
  br i1 %67, label %68, label %99

68:                                               ; preds = %62
  %69 = tail call ptr @decl_function_context(ptr noundef nonnull %2) #21
  %70 = load ptr, ptr @current_function_decl, align 8, !tbaa !11
  %71 = icmp eq ptr %69, %70
  br i1 %71, label %99, label %72

72:                                               ; preds = %68, %76
  %73 = phi ptr [ %74, %76 ], [ @gimplify_omp_ctxp, %68 ]
  %74 = load ptr, ptr %73, align 8, !tbaa !11
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %74, i64 0, i32 5
  %78 = load i32, ptr %77, align 8, !tbaa !28
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %72, label %99, !llvm.loop !92

80:                                               ; preds = %72
  %81 = load ptr, ptr @nonlocal_vlas, align 8, !tbaa !11
  %82 = tail call i32 @pointer_set_insert(ptr noundef %81, ptr noundef nonnull %2) #21
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %80
  %85 = tail call ptr @copy_node_stat(ptr noundef nonnull %2) #21
  %86 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 15), align 8, !tbaa !93
  tail call void %86(ptr noundef %85) #21
  tail call void @set_decl_rtl(ptr noundef %85, ptr noundef null) #21
  %87 = load i64, ptr %85, align 8
  %88 = or i64 %87, 16777216
  store i64 %88, ptr %85, align 8
  %89 = load ptr, ptr @current_function_decl, align 8, !tbaa !11
  %90 = getelementptr inbounds %struct.tree_decl_common, ptr %89, i64 0, i32 5
  %91 = load ptr, ptr %90, align 8, !tbaa !6
  %92 = getelementptr inbounds %struct.tree_block, ptr %91, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !6
  %94 = getelementptr inbounds %struct.tree_common, ptr %85, i64 0, i32 1
  store ptr %93, ptr %94, align 8, !tbaa !6
  store ptr %85, ptr %92, align 8, !tbaa !6
  %95 = tail call ptr @unshare_expr(ptr noundef nonnull %45) #20
  tail call void @decl_value_expr_insert(ptr noundef nonnull %85, ptr noundef %95) #21
  %96 = getelementptr inbounds %struct.tree_decl_common, ptr %85, i64 0, i32 2
  %97 = load i64, ptr %96, align 8
  %98 = or i64 %97, 67108864
  store i64 %98, ptr %96, align 8
  br label %99

99:                                               ; preds = %76, %80, %84, %68, %62, %58, %49, %44
  %100 = tail call ptr @unshare_expr(ptr noundef %45) #20
  store ptr %100, ptr %0, align 8, !tbaa !11
  br label %101

101:                                              ; preds = %39, %36, %32, %28, %23, %99
  %102 = phi i32 [ 0, %99 ], [ -2, %23 ], [ -2, %28 ], [ -2, %32 ], [ 1, %36 ], [ 1, %39 ]
  ret i32 %102
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @omp_notice_variable(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = load ptr, ptr @global_trees, align 16, !tbaa !11
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %178, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %178, label %9

9:                                                ; preds = %5
  %10 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %1) #20, !range !5
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %1, i64 0, i32 4
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 49152
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %178

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 67108864
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %17
  %23 = tail call ptr @decl_value_expr_lookup(ptr noundef nonnull %1) #21
  %24 = tail call ptr @get_base_address(ptr noundef %23) #21
  %25 = icmp eq ptr %24, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %22
  %27 = load i64, ptr %24, align 8
  %28 = and i64 %27, 65535
  %29 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !26
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %24, i64 0, i32 4
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 49152
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %178

37:                                               ; preds = %22, %26, %32, %17, %9
  %38 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !33
  %40 = ptrtoint ptr %1 to i64
  %41 = tail call ptr @splay_tree_lookup(ptr noundef %39, i64 noundef %40) #21
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %115

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %0, i64 0, i32 5
  %45 = load i32, ptr %44, align 8, !tbaa !28
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %170, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %0, i64 0, i32 4
  %49 = load i32, ptr %48, align 4, !tbaa !94
  %50 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 11), align 8, !tbaa !95
  %51 = tail call i32 %50(ptr noundef nonnull %1) #21
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i32 %49, i32 %51
  switch i32 %53, label %102 [
    i32 2, label %54
    i32 1, label %108
    i32 3, label %103
    i32 4, label %59
    i32 0, label %60
  ]

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !6
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.18, ptr noundef %56) #21
  %57 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %0, i64 0, i32 3
  %58 = load i32, ptr %57, align 8, !tbaa !96
  tail call void (i32, ptr, ...) @error_at(i32 noundef %58, ptr noundef nonnull @.str.19) #21
  br label %108

59:                                               ; preds = %47
  br label %108

60:                                               ; preds = %47
  %61 = load i32, ptr %44, align 8, !tbaa !28
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5520, ptr noundef nonnull @.str.1) #21
  br label %64

64:                                               ; preds = %60, %63
  %65 = load ptr, ptr %0, align 8, !tbaa !30
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = tail call fastcc zeroext i8 @omp_notice_variable(ptr noundef nonnull %65, ptr noundef nonnull %1) #20
  br label %69

69:                                               ; preds = %67, %64
  br label %70

70:                                               ; preds = %69, %84
  %71 = phi ptr [ %72, %84 ], [ %0, %69 ]
  %72 = load ptr, ptr %71, align 8, !tbaa !30
  %73 = icmp eq ptr %72, null
  br i1 %73, label %89, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %72, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !33
  %77 = tail call ptr @splay_tree_lookup(ptr noundef %76, i64 noundef %40) #21
  %78 = icmp eq ptr %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.splay_tree_node_s, ptr %77, i64 0, i32 1
  %81 = load i64, ptr %80, align 8, !tbaa !34
  %82 = and i64 %81, 252
  %83 = icmp eq i64 %82, 4
  br i1 %83, label %84, label %108

84:                                               ; preds = %79, %74
  %85 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %72, i64 0, i32 5
  %86 = load i32, ptr %85, align 8, !tbaa !28
  %87 = and i32 %86, 2
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %70, label %101, !llvm.loop !97

89:                                               ; preds = %70
  %90 = load i64, ptr %1, align 8
  %91 = and i64 %90, 65535
  %92 = icmp eq i64 %91, 34
  br i1 %92, label %108, label %93

93:                                               ; preds = %89
  %94 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %1) #20, !range !5
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 4
  %98 = load ptr, ptr %97, align 8, !tbaa !6
  %99 = load ptr, ptr @current_function_decl, align 8, !tbaa !11
  %100 = icmp eq ptr %98, %99
  br i1 %100, label %108, label %101

101:                                              ; preds = %84, %96, %93
  br label %108

102:                                              ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5549, ptr noundef nonnull @.str.1) #21
  br label %108

103:                                              ; preds = %47
  %104 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 14), align 8, !tbaa !98
  %105 = tail call zeroext i8 %104(ptr noundef nonnull %1) #21
  %106 = icmp eq i8 %105, 0
  %107 = select i1 %106, i32 9, i32 521
  br label %108

108:                                              ; preds = %79, %101, %96, %89, %54, %47, %59, %102, %103
  %109 = phi i32 [ %107, %103 ], [ 5, %54 ], [ 5, %47 ], [ 17, %59 ], [ 1, %102 ], [ 5, %101 ], [ 17, %96 ], [ 17, %89 ], [ 17, %79 ]
  tail call fastcc void @omp_add_variable(ptr noundef %0, ptr noundef %1, i32 noundef %109) #20
  %110 = trunc i32 %109 to i8
  %111 = lshr i8 %110, 2
  %112 = and i8 %111, 1
  %113 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 12), align 8, !tbaa !99
  %114 = tail call zeroext i8 %113(ptr noundef %1, i8 noundef zeroext %112) #21
  br label %165

115:                                              ; preds = %37
  %116 = getelementptr inbounds %struct.splay_tree_node_s, ptr %41, i64 0, i32 1
  %117 = load i64, ptr %116, align 8, !tbaa !34
  %118 = and i64 %117, 129
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %151

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !6
  %123 = icmp eq ptr %122, null
  br i1 %123, label %151, label %124

124:                                              ; preds = %120
  %125 = load i64, ptr %122, align 8
  %126 = and i64 %125, 65535
  %127 = icmp eq i64 %126, 23
  br i1 %127, label %151, label %128

128:                                              ; preds = %124
  %129 = tail call ptr @decl_value_expr_lookup(ptr noundef nonnull %1) #21
  %130 = load i64, ptr %129, align 8
  %131 = and i64 %130, 65535
  %132 = icmp eq i64 %131, 47
  br i1 %132, label %134, label %133

133:                                              ; preds = %128
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5570, ptr noundef nonnull @.str.1) #21
  br label %134

134:                                              ; preds = %128, %133
  %135 = getelementptr inbounds %struct.tree_exp, ptr %129, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !6
  %137 = load i64, ptr %136, align 8
  %138 = and i64 %137, 65535
  %139 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !26
  %141 = icmp eq i32 %140, 3
  br i1 %141, label %143, label %142

142:                                              ; preds = %134
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5572, ptr noundef nonnull @.str.1) #21
  br label %143

143:                                              ; preds = %134, %142
  %144 = load ptr, ptr %38, align 8, !tbaa !33
  %145 = ptrtoint ptr %136 to i64
  %146 = tail call ptr @splay_tree_lookup(ptr noundef %144, i64 noundef %145) #21
  %147 = getelementptr inbounds %struct.splay_tree_node_s, ptr %146, i64 0, i32 1
  %148 = load i64, ptr %147, align 8, !tbaa !34
  %149 = or i64 %148, 1
  store i64 %149, ptr %147, align 8, !tbaa !34
  %150 = load i64, ptr %116, align 8, !tbaa !34
  br label %151

151:                                              ; preds = %143, %124, %120, %115
  %152 = phi i64 [ %150, %143 ], [ %117, %124 ], [ %117, %120 ], [ %117, %115 ]
  %153 = trunc i64 %152 to i8
  %154 = lshr i8 %153, 2
  %155 = and i8 %154, 1
  %156 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 12), align 8, !tbaa !99
  %157 = tail call zeroext i8 %156(ptr noundef nonnull %1, i8 noundef zeroext %155) #21
  %158 = load i64, ptr %116, align 8, !tbaa !34
  %159 = and i64 %158, 1
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %178

161:                                              ; preds = %151
  %162 = trunc i64 %158 to i32
  %163 = or disjoint i32 %162, 1
  %164 = zext i32 %163 to i64
  store i64 %164, ptr %116, align 8, !tbaa !34
  br label %165

165:                                              ; preds = %108, %161
  %166 = phi i8 [ %157, %161 ], [ %114, %108 ]
  %167 = phi i32 [ %163, %161 ], [ %109, %108 ]
  %168 = and i32 %167, 520
  %169 = icmp eq i32 %168, 8
  br i1 %169, label %178, label %170

170:                                              ; preds = %43, %165
  %171 = phi i8 [ %166, %165 ], [ 0, %43 ]
  %172 = load ptr, ptr %0, align 8, !tbaa !30
  %173 = icmp eq ptr %172, null
  br i1 %173, label %177, label %174

174:                                              ; preds = %170
  %175 = tail call fastcc zeroext i8 @omp_notice_variable(ptr noundef nonnull %172, ptr noundef %1) #20
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %174, %170
  br label %178

178:                                              ; preds = %174, %165, %151, %32, %12, %2, %5, %177
  %179 = phi i8 [ %171, %177 ], [ 0, %5 ], [ 0, %2 ], [ 0, %12 ], [ 0, %32 ], [ %157, %151 ], [ %166, %165 ], [ 1, %174 ]
  ret i8 %179
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_omp_parallel(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimplify_ctx, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store ptr null, ptr %3, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #22
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  %8 = load i64, ptr %5, align 8
  %9 = and i64 %8, 268435456
  %10 = icmp eq i64 %9, 0
  %11 = select i1 %10, i32 2, i32 3
  tail call fastcc void @gimplify_scan_omp_clauses(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %11) #20
  call void @push_gimplify_context(ptr noundef nonnull %4) #20
  %12 = load ptr, ptr %6, align 8, !tbaa !6
  %13 = call fastcc ptr @gimplify_and_return_first(ptr noundef %12, ptr noundef nonnull %3) #20
  %14 = call fastcc i32 @gimple_code(ptr noundef %13) #20, !range !21
  %15 = icmp eq i32 %14, 10
  %16 = select i1 %15, ptr %13, ptr null
  call void @pop_gimplify_context(ptr noundef %16) #20
  call fastcc void @gimplify_adjust_omp_clauses(ptr noundef nonnull %7) #20
  %17 = load ptr, ptr %3, align 8, !tbaa !11
  %18 = load ptr, ptr %7, align 8, !tbaa !6
  %19 = call ptr @gimple_build_omp_parallel(ptr noundef %17, ptr noundef %18, ptr noundef null, ptr noundef null) #21
  %20 = load i64, ptr %5, align 8
  %21 = and i64 %20, 268435456
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  call fastcc void @gimple_omp_set_subcode(ptr noundef %19) #20
  br label %24

24:                                               ; preds = %23, %2
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %19) #20
  store ptr null, ptr %0, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_omp_task(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimplify_ctx, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store ptr null, ptr %3, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #22
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  tail call fastcc void @gimplify_scan_omp_clauses(ptr noundef nonnull %7, ptr noundef %1, i32 noundef 1) #20
  call void @push_gimplify_context(ptr noundef nonnull %4) #20
  %8 = load ptr, ptr %6, align 8, !tbaa !6
  %9 = call fastcc ptr @gimplify_and_return_first(ptr noundef %8, ptr noundef nonnull %3) #20
  %10 = call fastcc i32 @gimple_code(ptr noundef %9) #20, !range !21
  %11 = icmp eq i32 %10, 10
  %12 = select i1 %11, ptr %9, ptr null
  call void @pop_gimplify_context(ptr noundef %12) #20
  call fastcc void @gimplify_adjust_omp_clauses(ptr noundef nonnull %7) #20
  %13 = load ptr, ptr %3, align 8, !tbaa !11
  %14 = load ptr, ptr %7, align 8, !tbaa !6
  %15 = call ptr @gimple_build_omp_task(ptr noundef %13, ptr noundef %14, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %15) #20
  store ptr null, ptr %0, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimplify_omp_for(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #4 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = load ptr, ptr %0, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  tail call fastcc void @gimplify_scan_omp_clauses(ptr noundef nonnull %7, ptr noundef %1, i32 noundef 0) #20
  store ptr null, ptr %4, align 8, !tbaa !11
  %8 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  call void @gimplify_and_add(ptr noundef %9, ptr noundef nonnull %4) #20
  store ptr null, ptr %8, align 8, !tbaa !6
  %10 = call ptr @gimple_seq_alloc() #21
  store ptr %10, ptr %3, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.tree_vec, ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.tree_vec, ptr %16, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !6
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6067, ptr noundef nonnull @.str.1) #21
  %21 = load ptr, ptr %11, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct.tree_vec, ptr %21, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !6
  br label %24

24:                                               ; preds = %2, %20
  %25 = phi i32 [ %14, %2 ], [ %23, %20 ]
  %26 = phi ptr [ %12, %2 ], [ %21, %20 ]
  %27 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !6
  %29 = getelementptr inbounds %struct.tree_vec, ptr %28, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !6
  %31 = icmp eq i32 %25, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %24
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6069, ptr noundef nonnull @.str.1) #21
  %33 = load ptr, ptr %11, align 8, !tbaa !6
  %34 = getelementptr inbounds %struct.tree_vec, ptr %33, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !6
  br label %36

36:                                               ; preds = %24, %32
  %37 = phi i32 [ %25, %24 ], [ %35, %32 ]
  %38 = phi ptr [ %26, %24 ], [ %33, %32 ]
  %39 = icmp sgt i32 %37, 0
  br i1 %39, label %40, label %232

40:                                               ; preds = %36, %222
  %41 = phi i64 [ %223, %222 ], [ 0, %36 ]
  %42 = phi ptr [ %224, %222 ], [ %38, %36 ]
  %43 = phi i32 [ %162, %222 ], [ 1, %36 ]
  %44 = getelementptr inbounds %struct.tree_vec, ptr %42, i64 0, i32 2, i64 %41
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = load i64, ptr %45, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 53
  br i1 %48, label %50, label %49

49:                                               ; preds = %40
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6073, ptr noundef nonnull @.str.1) #21
  br label %50

50:                                               ; preds = %40, %49
  %51 = getelementptr inbounds %struct.tree_exp, ptr %45, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  %53 = load i64, ptr %52, align 8
  %54 = and i64 %53, 65535
  %55 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !26
  %57 = icmp eq i32 %56, 3
  br i1 %57, label %59, label %58

58:                                               ; preds = %50
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6075, ptr noundef nonnull @.str.1) #21
  br label %59

59:                                               ; preds = %50, %58
  %60 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !6
  %62 = load i64, ptr %61, align 8
  %63 = trunc i64 %62 to i16
  switch i16 %63, label %64 [
    i16 6, label %65
    i16 7, label %65
    i16 8, label %65
    i16 10, label %65
    i16 12, label %65
  ]

64:                                               ; preds = %59
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6077, ptr noundef nonnull @.str.1) #21
  br label %65

65:                                               ; preds = %59, %59, %59, %59, %59, %64
  %66 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !11
  %67 = call fastcc zeroext i8 @omp_is_private(ptr noundef %66, ptr noundef nonnull %52) #20, !range !5
  %68 = icmp eq i8 %67, 0
  %69 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !11
  br i1 %68, label %72, label %70

70:                                               ; preds = %65
  %71 = call fastcc zeroext i8 @omp_notice_variable(ptr noundef %69, ptr noundef nonnull %52) #20
  br label %73

72:                                               ; preds = %65
  call fastcc void @omp_add_variable(ptr noundef %69, ptr noundef nonnull %52, i32 noundef 9) #20
  br label %73

73:                                               ; preds = %72, %70
  %74 = call zeroext i8 @is_gimple_reg(ptr noundef nonnull %52) #21
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load ptr, ptr %60, align 8, !tbaa !6
  %78 = call ptr @get_name(ptr noundef nonnull %52) #21
  %79 = call ptr @create_tmp_var(ptr noundef %77, ptr noundef %78) #20
  store ptr %79, ptr %51, align 8, !tbaa !6
  %80 = call ptr @gimple_build_assign_stat(ptr noundef nonnull %52, ptr noundef %79) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %3, ptr noundef %80) #20
  %81 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !11
  call fastcc void @omp_add_variable(ptr noundef %81, ptr noundef %79, i32 noundef 9) #20
  br label %82

82:                                               ; preds = %73, %76
  %83 = phi ptr [ %79, %76 ], [ %52, %73 ]
  %84 = getelementptr inbounds %struct.tree_exp, ptr %45, i64 1
  %85 = call i32 @gimplify_expr(ptr noundef nonnull %84, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %86 = call i32 @llvm.smin.i32(i32 %43, i32 %85)
  %87 = icmp eq i32 %86, -2
  br i1 %87, label %276, label %88

88:                                               ; preds = %82
  %89 = load ptr, ptr %15, align 8, !tbaa !6
  %90 = getelementptr inbounds %struct.tree_vec, ptr %89, i64 0, i32 2, i64 %41
  %91 = load ptr, ptr %90, align 8, !tbaa !6
  %92 = load i64, ptr %91, align 8
  %93 = and i64 %92, 65535
  %94 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !26
  %96 = icmp eq i32 %95, 5
  br i1 %96, label %98, label %97

97:                                               ; preds = %88
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6108, ptr noundef nonnull @.str.1) #21
  br label %98

98:                                               ; preds = %88, %97
  %99 = getelementptr inbounds %struct.tree_exp, ptr %91, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !6
  %101 = icmp eq ptr %100, %52
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6109, ptr noundef nonnull @.str.1) #21
  br label %103

103:                                              ; preds = %98, %102
  %104 = getelementptr inbounds %struct.tree_exp, ptr %91, i64 1
  %105 = call i32 @gimplify_expr(ptr noundef nonnull %104, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %106 = call i32 @llvm.smin.i32(i32 %86, i32 %105)
  %107 = load ptr, ptr %27, align 8, !tbaa !6
  %108 = getelementptr inbounds %struct.tree_vec, ptr %107, i64 0, i32 2, i64 %41
  %109 = load ptr, ptr %108, align 8, !tbaa !6
  %110 = load i64, ptr %109, align 8
  %111 = trunc i64 %110 to i16
  switch i16 %111, label %160 [
    i16 126, label %112
    i16 128, label %112
    i16 125, label %122
    i16 127, label %122
    i16 53, label %132
  ]

112:                                              ; preds = %103, %103
  %113 = load ptr, ptr %60, align 8, !tbaa !6
  %114 = call ptr @build_int_cst(ptr noundef %113, i64 noundef 1) #21
  %115 = load ptr, ptr %60, align 8, !tbaa !6
  %116 = call ptr @build2_stat(i32 noundef 63, ptr noundef %115, ptr noundef %83, ptr noundef %114) #21
  %117 = getelementptr inbounds %struct.tree_common, ptr %83, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !6
  %119 = call ptr @build2_stat(i32 noundef 53, ptr noundef %118, ptr noundef %83, ptr noundef %116) #21
  %120 = load ptr, ptr %27, align 8, !tbaa !6
  %121 = getelementptr inbounds %struct.tree_vec, ptr %120, i64 0, i32 2, i64 %41
  store ptr %119, ptr %121, align 8, !tbaa !6
  br label %161

122:                                              ; preds = %103, %103
  %123 = load ptr, ptr %60, align 8, !tbaa !6
  %124 = call ptr @build_int_cst(ptr noundef %123, i64 noundef -1) #21
  %125 = load ptr, ptr %60, align 8, !tbaa !6
  %126 = call ptr @build2_stat(i32 noundef 63, ptr noundef %125, ptr noundef %83, ptr noundef %124) #21
  %127 = getelementptr inbounds %struct.tree_common, ptr %83, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !6
  %129 = call ptr @build2_stat(i32 noundef 53, ptr noundef %128, ptr noundef %83, ptr noundef %126) #21
  %130 = load ptr, ptr %27, align 8, !tbaa !6
  %131 = getelementptr inbounds %struct.tree_vec, ptr %130, i64 0, i32 2, i64 %41
  store ptr %129, ptr %131, align 8, !tbaa !6
  br label %161

132:                                              ; preds = %103
  %133 = getelementptr inbounds %struct.tree_exp, ptr %109, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !6
  %135 = icmp eq ptr %134, %52
  br i1 %135, label %137, label %136

136:                                              ; preds = %132
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6136, ptr noundef nonnull @.str.1) #21
  br label %137

137:                                              ; preds = %132, %136
  store ptr %83, ptr %133, align 8, !tbaa !6
  %138 = getelementptr inbounds %struct.tree_exp, ptr %109, i64 1
  %139 = load ptr, ptr %138, align 8, !tbaa !6
  %140 = load i64, ptr %139, align 8
  %141 = trunc i64 %140 to i16
  switch i16 %141, label %155 [
    i16 63, label %142
    i16 64, label %149
    i16 66, label %149
  ]

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.tree_exp, ptr %139, i64 1
  %144 = load ptr, ptr %143, align 8, !tbaa !6
  %145 = icmp eq ptr %144, %52
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.tree_exp, ptr %139, i64 0, i32 3
  %148 = load ptr, ptr %147, align 8, !tbaa !6
  store ptr %148, ptr %143, align 8, !tbaa !6
  store ptr %83, ptr %147, align 8, !tbaa !6
  br label %156

149:                                              ; preds = %142, %137, %137
  %150 = getelementptr inbounds %struct.tree_exp, ptr %139, i64 0, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !6
  %152 = icmp eq ptr %151, %52
  br i1 %152, label %154, label %153

153:                                              ; preds = %149
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6153, ptr noundef nonnull @.str.1) #21
  br label %154

154:                                              ; preds = %149, %153
  store ptr %83, ptr %150, align 8, !tbaa !6
  br label %156

155:                                              ; preds = %137
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6157, ptr noundef nonnull @.str.1) #21
  br label %156

156:                                              ; preds = %155, %154, %146
  %157 = getelementptr inbounds %struct.tree_exp, ptr %139, i64 1
  %158 = call i32 @gimplify_expr(ptr noundef nonnull %157, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %159 = call i32 @llvm.smin.i32(i32 %106, i32 %158)
  br label %161

160:                                              ; preds = %103
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6166, ptr noundef nonnull @.str.1) #21
  br label %161

161:                                              ; preds = %160, %156, %122, %112
  %162 = phi i32 [ %106, %160 ], [ %159, %156 ], [ %106, %122 ], [ %106, %112 ]
  %163 = icmp eq ptr %83, %52
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load ptr, ptr %11, align 8, !tbaa !6
  %166 = getelementptr inbounds %struct.tree_vec, ptr %165, i64 0, i32 1
  %167 = load i32, ptr %166, align 8, !tbaa !6
  %168 = icmp sgt i32 %167, 1
  br i1 %168, label %169, label %222

169:                                              ; preds = %164, %161
  %170 = load ptr, ptr %7, align 8, !tbaa !6
  %171 = icmp eq ptr %170, null
  br i1 %171, label %222, label %172

172:                                              ; preds = %169, %218
  %173 = phi ptr [ %220, %218 ], [ %170, %169 ]
  %174 = getelementptr inbounds %struct.tree_omp_clause, ptr %173, i64 0, i32 2
  %175 = load i32, ptr %174, align 4, !tbaa !6
  %176 = icmp eq i32 %175, 4
  br i1 %176, label %177, label %218

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.tree_omp_clause, ptr %173, i64 0, i32 6
  %179 = load ptr, ptr %178, align 8, !tbaa !6
  %180 = icmp eq ptr %179, %52
  br i1 %180, label %181, label %218

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.tree_omp_clause, ptr %173, i64 0, i32 4
  %183 = load ptr, ptr %182, align 8, !tbaa !6
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %218

185:                                              ; preds = %181
  %186 = load ptr, ptr %27, align 8, !tbaa !6
  %187 = getelementptr inbounds %struct.tree_vec, ptr %186, i64 0, i32 2, i64 %41
  %188 = load ptr, ptr %187, align 8, !tbaa !6
  %189 = load i64, ptr %188, align 8
  %190 = and i64 %189, 65535
  %191 = icmp eq i64 %190, 53
  br i1 %191, label %193, label %192

192:                                              ; preds = %185
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6178, ptr noundef nonnull @.str.1) #21
  br label %193

193:                                              ; preds = %185, %192
  %194 = getelementptr inbounds %struct.tree_exp, ptr %188, i64 0, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !6
  %196 = icmp eq ptr %195, %83
  br i1 %196, label %198, label %197

197:                                              ; preds = %193
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6179, ptr noundef nonnull @.str.1) #21
  br label %198

198:                                              ; preds = %193, %197
  %199 = getelementptr inbounds %struct.tree_exp, ptr %188, i64 1
  %200 = load ptr, ptr %199, align 8, !tbaa !6
  %201 = load i64, ptr %200, align 8
  %202 = trunc i64 %201 to i16
  switch i16 %202, label %203 [
    i16 63, label %204
    i16 64, label %204
    i16 66, label %204
  ]

203:                                              ; preds = %198
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6183, ptr noundef nonnull @.str.1) #21
  br label %204

204:                                              ; preds = %198, %198, %198, %203
  %205 = getelementptr inbounds %struct.tree_exp, ptr %200, i64 0, i32 3
  %206 = load ptr, ptr %205, align 8, !tbaa !6
  %207 = icmp eq ptr %206, %83
  br i1 %207, label %209, label %208

208:                                              ; preds = %204
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6184, ptr noundef nonnull @.str.1) #21
  br label %209

209:                                              ; preds = %204, %208
  %210 = load i64, ptr %200, align 8
  %211 = trunc i64 %210 to i32
  %212 = and i32 %211, 65535
  %213 = load ptr, ptr %60, align 8, !tbaa !6
  %214 = getelementptr inbounds %struct.tree_exp, ptr %200, i64 1
  %215 = load ptr, ptr %214, align 8, !tbaa !6
  %216 = call ptr @build2_stat(i32 noundef %212, ptr noundef %213, ptr noundef nonnull %52, ptr noundef %215) #21
  %217 = call ptr @gimplify_assign(ptr noundef nonnull %52, ptr noundef %216, ptr noundef nonnull %182) #21
  br label %218

218:                                              ; preds = %172, %177, %181, %209
  %219 = getelementptr inbounds %struct.tree_common, ptr %173, i64 0, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !6
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %172, !llvm.loop !100

222:                                              ; preds = %218, %169, %164
  %223 = add nuw nsw i64 %41, 1
  %224 = load ptr, ptr %11, align 8, !tbaa !6
  %225 = getelementptr inbounds %struct.tree_vec, ptr %224, i64 0, i32 1
  %226 = load i32, ptr %225, align 8, !tbaa !6
  %227 = sext i32 %226 to i64
  %228 = icmp slt i64 %223, %227
  br i1 %228, label %40, label %229, !llvm.loop !101

229:                                              ; preds = %222
  %230 = icmp eq i32 %162, 1
  %231 = select i1 %230, i32 1, i32 -2
  br label %232

232:                                              ; preds = %229, %36
  %233 = phi i32 [ 1, %36 ], [ %231, %229 ]
  %234 = load ptr, ptr %6, align 8, !tbaa !6
  call void @gimplify_and_add(ptr noundef %234, ptr noundef nonnull %3) #20
  call fastcc void @gimplify_adjust_omp_clauses(ptr noundef nonnull %7) #20
  %235 = load ptr, ptr %3, align 8, !tbaa !11
  %236 = load ptr, ptr %7, align 8, !tbaa !6
  %237 = load ptr, ptr %11, align 8, !tbaa !6
  %238 = getelementptr inbounds %struct.tree_vec, ptr %237, i64 0, i32 1
  %239 = load i32, ptr %238, align 8, !tbaa !6
  %240 = sext i32 %239 to i64
  %241 = load ptr, ptr %4, align 8, !tbaa !11
  %242 = call ptr @gimple_build_omp_for(ptr noundef %235, ptr noundef %236, i64 noundef %240, ptr noundef %241) #21
  %243 = load ptr, ptr %11, align 8, !tbaa !6
  %244 = getelementptr inbounds %struct.tree_vec, ptr %243, i64 0, i32 1
  %245 = load i32, ptr %244, align 8, !tbaa !6
  %246 = icmp sgt i32 %245, 0
  br i1 %246, label %247, label %275

247:                                              ; preds = %232, %247
  %248 = phi i64 [ %269, %247 ], [ 0, %232 ]
  %249 = phi ptr [ %270, %247 ], [ %243, %232 ]
  %250 = getelementptr inbounds %struct.tree_vec, ptr %249, i64 0, i32 2, i64 %248
  %251 = load ptr, ptr %250, align 8, !tbaa !6
  %252 = getelementptr inbounds %struct.tree_exp, ptr %251, i64 0, i32 3
  %253 = load ptr, ptr %252, align 8, !tbaa !6
  call fastcc void @gimple_omp_for_set_index(ptr noundef %242, i64 noundef %248, ptr noundef %253) #20
  %254 = getelementptr inbounds %struct.tree_exp, ptr %251, i64 1
  %255 = load ptr, ptr %254, align 8, !tbaa !6
  call fastcc void @gimple_omp_for_set_initial(ptr noundef %242, i64 noundef %248, ptr noundef %255) #20
  %256 = load ptr, ptr %15, align 8, !tbaa !6
  %257 = getelementptr inbounds %struct.tree_vec, ptr %256, i64 0, i32 2, i64 %248
  %258 = load ptr, ptr %257, align 8, !tbaa !6
  %259 = load i64, ptr %258, align 8
  %260 = trunc i64 %259 to i32
  %261 = and i32 %260, 65535
  call fastcc void @gimple_omp_for_set_cond(ptr noundef %242, i64 noundef %248, i32 noundef %261) #20
  %262 = getelementptr inbounds %struct.tree_exp, ptr %258, i64 1
  %263 = load ptr, ptr %262, align 8, !tbaa !6
  call fastcc void @gimple_omp_for_set_final(ptr noundef %242, i64 noundef %248, ptr noundef %263) #20
  %264 = load ptr, ptr %27, align 8, !tbaa !6
  %265 = getelementptr inbounds %struct.tree_vec, ptr %264, i64 0, i32 2, i64 %248
  %266 = load ptr, ptr %265, align 8, !tbaa !6
  %267 = getelementptr inbounds %struct.tree_exp, ptr %266, i64 1
  %268 = load ptr, ptr %267, align 8, !tbaa !6
  call fastcc void @gimple_omp_for_set_incr(ptr noundef %242, i64 noundef %248, ptr noundef %268) #20
  %269 = add nuw nsw i64 %248, 1
  %270 = load ptr, ptr %11, align 8, !tbaa !6
  %271 = getelementptr inbounds %struct.tree_vec, ptr %270, i64 0, i32 1
  %272 = load i32, ptr %271, align 8, !tbaa !6
  %273 = sext i32 %272 to i64
  %274 = icmp slt i64 %269, %273
  br i1 %274, label %247, label %275, !llvm.loop !102

275:                                              ; preds = %247, %232
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %242) #20
  br label %276

276:                                              ; preds = %82, %275
  %277 = phi i32 [ %233, %275 ], [ -2, %82 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret i32 %277
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_omp_workshare(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #4 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store ptr null, ptr %3, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %6 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  tail call fastcc void @gimplify_scan_omp_clauses(ptr noundef nonnull %6, ptr noundef %1, i32 noundef 0) #20
  %7 = load ptr, ptr %5, align 8, !tbaa !6
  call void @gimplify_and_add(ptr noundef %7, ptr noundef nonnull %3) #20
  call fastcc void @gimplify_adjust_omp_clauses(ptr noundef nonnull %6) #20
  %8 = load i64, ptr %4, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %18 [
    i16 156, label %10
    i16 157, label %14
  ]

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !tbaa !11
  %12 = load ptr, ptr %6, align 8, !tbaa !6
  %13 = call ptr @gimple_build_omp_sections(ptr noundef %11, ptr noundef %12) #21
  br label %19

14:                                               ; preds = %2
  %15 = load ptr, ptr %3, align 8, !tbaa !11
  %16 = load ptr, ptr %6, align 8, !tbaa !6
  %17 = call ptr @gimple_build_omp_single(ptr noundef %15, ptr noundef %16) #21
  br label %19

18:                                               ; preds = %2
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6236, ptr noundef nonnull @.str.1) #21
  unreachable

19:                                               ; preds = %14, %10
  %20 = phi ptr [ %13, %10 ], [ %17, %14 ]
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %20) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_build_omp_section(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gimple_build_omp_master(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gimple_build_omp_ordered(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gimple_build_omp_critical(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gimplify_omp_atomic(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %5 = load ptr, ptr %0, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  store ptr %7, ptr %3, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %8 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  store ptr %9, ptr %4, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 16
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = tail call ptr @create_tmp_var(ptr noundef %15, ptr noundef null) #20
  %17 = load i64, ptr %15, align 8
  %18 = trunc i64 %17 to i32
  %19 = and i32 %18, 65535
  %20 = add nsw i32 %19, -13
  %21 = icmp ult i32 %20, 2
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.tree_decl_common, ptr %16, i64 0, i32 2
  %24 = load i64, ptr %23, align 8
  %25 = or i64 %24, 134217728
  store i64 %25, ptr %23, align 8
  br label %26

26:                                               ; preds = %2, %22
  %27 = call fastcc i32 @goa_stabilize_expr(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %7, ptr noundef %16) #20
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %26
  %30 = call i32 @gimplify_expr(ptr noundef nonnull %3, ptr noundef %1, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load ptr, ptr %3, align 8, !tbaa !11
  %34 = call ptr @gimple_build_omp_atomic_load(ptr noundef %16, ptr noundef %33) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %34) #20
  %35 = call i32 @gimplify_expr(ptr noundef nonnull %4, ptr noundef %1, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load ptr, ptr %4, align 8, !tbaa !11
  %39 = call ptr @gimple_build_omp_atomic_store(ptr noundef %38) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %39) #20
  store ptr null, ptr %0, align 8, !tbaa !11
  br label %40

40:                                               ; preds = %32, %29, %26, %37
  %41 = phi i32 [ 1, %37 ], [ -2, %26 ], [ -2, %29 ], [ -2, %32 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret i32 %41
}

; Function Attrs: optsize
declare ptr @maybe_fold_offset_to_address(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_scalar_mode_aggregate_compare(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !26
  %7 = add i32 %6, -4
  %8 = icmp ult i32 %7, 7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !6
  br label %12

12:                                               ; preds = %1, %9
  %13 = phi i32 [ %11, %9 ], [ 0, %1 ]
  %14 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !103
  %21 = load i64, ptr %19, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 14
  br i1 %23, label %24, label %26

24:                                               ; preds = %12
  %25 = tail call i32 @vector_type_mode(ptr noundef nonnull %19) #21
  br label %31

26:                                               ; preds = %12
  %27 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = lshr i32 %28, 16
  %30 = and i32 %29, 255
  br label %31

31:                                               ; preds = %26, %24
  %32 = phi i32 [ %25, %24 ], [ %30, %26 ]
  %33 = tail call ptr %20(i32 noundef %32, i32 noundef 1) #21
  %34 = tail call ptr @fold_build1_stat_loc(i32 noundef %13, i32 noundef 118, ptr noundef %33, ptr noundef nonnull %15) #21
  %35 = tail call ptr @fold_build1_stat_loc(i32 noundef %13, i32 noundef 118, ptr noundef %33, ptr noundef %17) #21
  %36 = load ptr, ptr %0, align 8, !tbaa !11
  %37 = load i64, ptr %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = and i32 %38, 65535
  %40 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !6
  %42 = tail call ptr @fold_build2_stat_loc(i32 noundef %13, i32 noundef %39, ptr noundef %41, ptr noundef %34, ptr noundef %35) #21
  store ptr %42, ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_variable_sized_compare(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = load i64, ptr %2, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !26
  %11 = add i32 %10, -4
  %12 = icmp ult i32 %11, 7
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !6
  br label %16

16:                                               ; preds = %1, %13
  %17 = phi i32 [ %15, %13 ], [ 0, %1 ]
  %18 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = tail call ptr @unshare_expr(ptr noundef %21) #20
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %16
  %25 = load i64, ptr %22, align 8
  %26 = and i64 %25, 131072
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = tail call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %22, ptr noundef nonnull %4) #21
  br label %30

30:                                               ; preds = %16, %24, %28
  %31 = phi ptr [ %29, %28 ], [ %22, %24 ], [ null, %16 ]
  %32 = tail call ptr @build_fold_addr_expr_loc(i32 noundef %17, ptr noundef %6) #21
  %33 = tail call ptr @build_fold_addr_expr_loc(i32 noundef %17, ptr noundef nonnull %4) #21
  %34 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 329), align 8, !tbaa !11
  %35 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %17, ptr noundef %34, i32 noundef 3, ptr noundef %33, ptr noundef %32, ptr noundef %31) #21
  %36 = load ptr, ptr %0, align 8, !tbaa !11
  %37 = load i64, ptr %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = and i32 %38, 65535
  %40 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !6
  %42 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !11
  %43 = tail call ptr @build2_stat(i32 noundef %39, ptr noundef %41, ptr noundef %35, ptr noundef %42) #21
  store ptr %43, ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: optsize
declare ptr @gimplify_assign(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_seq_add_seq(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %4 = icmp eq ptr %1, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !11
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = tail call ptr @gimple_seq_alloc() #21
  store ptr %9, ptr %0, align 8, !tbaa !11
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi ptr [ %9, %8 ], [ %6, %5 ]
  call fastcc void @gsi_last(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %11) #20
  call void @gsi_insert_seq_after_without_update(ptr noundef nonnull %3, ptr noundef nonnull %1, i32 noundef 0) #21
  br label %12

12:                                               ; preds = %2, %10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @annotate_all_with_location_after(ptr noundef %0, ptr nocapture noundef byval(%struct.gimple_stmt_iterator) align 8 %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !5
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %0) #20
  br label %8

7:                                                ; preds = %3
  call fastcc void @gsi_next(ptr noundef nonnull %1) #20
  br label %8

8:                                                ; preds = %7, %6
  %9 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !5
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8, %11
  %12 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20
  tail call fastcc void @annotate_one_with_location(ptr noundef %12, i32 noundef %2) #20
  call fastcc void @gsi_next(ptr noundef nonnull %1) #20
  %13 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !5
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %11, label %15, !llvm.loop !104

15:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: optsize
declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimplify_type_sizes(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = icmp eq ptr %0, null
  %4 = load ptr, ptr @global_trees, align 16
  %5 = icmp eq ptr %4, %0
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %112, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 131072
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %112

13:                                               ; preds = %7
  %14 = or disjoint i64 %10, 131072
  store i64 %14, ptr %9, align 8
  %15 = trunc i64 %10 to i16
  switch i16 %15, label %95 [
    i16 8, label %16
    i16 6, label %16
    i16 7, label %16
    i16 9, label %16
    i16 11, label %16
    i16 15, label %31
    i16 16, label %76
    i16 17, label %76
    i16 18, label %76
  ]

16:                                               ; preds = %13, %13, %13, %13, %13
  %17 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 13
  tail call void @gimplify_one_sizepos(ptr noundef nonnull %17, ptr noundef %1) #20
  %18 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 14
  tail call void @gimplify_one_sizepos(ptr noundef nonnull %18, ptr noundef %1) #20
  %19 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 15
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = icmp eq ptr %20, null
  br i1 %21, label %95, label %22

22:                                               ; preds = %16, %22
  %23 = phi ptr [ %29, %22 ], [ %20, %16 ]
  %24 = load ptr, ptr %17, align 8, !tbaa !6
  %25 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 13
  store ptr %24, ptr %25, align 8, !tbaa !6
  %26 = load ptr, ptr %18, align 8, !tbaa !6
  %27 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 14
  store ptr %26, ptr %27, align 8, !tbaa !6
  %28 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 15
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = icmp eq ptr %29, null
  br i1 %30, label %95, label %22, !llvm.loop !105

31:                                               ; preds = %13
  %32 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  tail call void @gimplify_type_sizes(ptr noundef %33, ptr noundef %1) #20
  %34 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  tail call void @gimplify_type_sizes(ptr noundef %35, ptr noundef %1) #20
  %36 = load ptr, ptr %34, align 8, !tbaa !6
  %37 = icmp eq ptr %36, null
  br i1 %37, label %95, label %38

38:                                               ; preds = %31
  %39 = load i64, ptr %36, align 8
  %40 = trunc i64 %39 to i32
  %41 = and i32 %40, 65535
  %42 = add nsw i32 %41, -6
  %43 = icmp ult i32 %42, 3
  br i1 %43, label %44, label %95

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.tree_type, ptr %36, i64 0, i32 13
  %46 = load ptr, ptr %45, align 8, !tbaa !6
  %47 = icmp eq ptr %46, null
  br i1 %47, label %60, label %48

48:                                               ; preds = %44
  %49 = load i64, ptr %46, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 32
  br i1 %51, label %52, label %60

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.tree_decl_common, ptr %46, i64 0, i32 2
  %54 = load i64, ptr %53, align 8
  %55 = and i64 %54, 4096
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = and i64 %54, -1025
  store i64 %58, ptr %53, align 8
  %59 = load ptr, ptr %34, align 8, !tbaa !6
  br label %60

60:                                               ; preds = %57, %52, %48, %44
  %61 = phi ptr [ %59, %57 ], [ %36, %52 ], [ %36, %48 ], [ %36, %44 ]
  %62 = getelementptr inbounds %struct.tree_type, ptr %61, i64 0, i32 14
  %63 = load ptr, ptr %62, align 8, !tbaa !6
  %64 = icmp eq ptr %63, null
  br i1 %64, label %95, label %65

65:                                               ; preds = %60
  %66 = load i64, ptr %63, align 8
  %67 = and i64 %66, 65535
  %68 = icmp eq i64 %67, 32
  br i1 %68, label %69, label %95

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.tree_decl_common, ptr %63, i64 0, i32 2
  %71 = load i64, ptr %70, align 8
  %72 = and i64 %71, 4096
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %95, label %74

74:                                               ; preds = %69
  %75 = and i64 %71, -1025
  store i64 %75, ptr %70, align 8
  br label %95

76:                                               ; preds = %13, %13, %13
  %77 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !6
  %79 = icmp eq ptr %78, null
  br i1 %79, label %95, label %80

80:                                               ; preds = %76, %91
  %81 = phi ptr [ %93, %91 ], [ %78, %76 ]
  %82 = load i64, ptr %81, align 8
  %83 = and i64 %82, 65535
  %84 = icmp eq i64 %83, 31
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.tree_field_decl, ptr %81, i64 0, i32 1
  tail call void @gimplify_one_sizepos(ptr noundef nonnull %86, ptr noundef %1) #20
  %87 = getelementptr inbounds %struct.tree_decl_common, ptr %81, i64 0, i32 1
  tail call void @gimplify_one_sizepos(ptr noundef nonnull %87, ptr noundef %1) #20
  %88 = getelementptr inbounds %struct.tree_decl_common, ptr %81, i64 0, i32 4
  tail call void @gimplify_one_sizepos(ptr noundef nonnull %88, ptr noundef %1) #20
  %89 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !6
  tail call void @gimplify_type_sizes(ptr noundef %90, ptr noundef %1) #20
  br label %91

91:                                               ; preds = %80, %85
  %92 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !6
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %80, !llvm.loop !106

95:                                               ; preds = %91, %22, %76, %16, %38, %13, %31, %74, %69, %65, %60
  %96 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 2
  tail call void @gimplify_one_sizepos(ptr noundef nonnull %96, ptr noundef %1) #20
  %97 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 3
  tail call void @gimplify_one_sizepos(ptr noundef nonnull %97, ptr noundef %1) #20
  %98 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 15
  %99 = load ptr, ptr %98, align 8, !tbaa !6
  %100 = icmp eq ptr %99, null
  br i1 %100, label %112, label %101

101:                                              ; preds = %95, %101
  %102 = phi ptr [ %110, %101 ], [ %99, %95 ]
  %103 = load ptr, ptr %96, align 8, !tbaa !6
  %104 = getelementptr inbounds %struct.tree_type, ptr %102, i64 0, i32 2
  store ptr %103, ptr %104, align 8, !tbaa !6
  %105 = load ptr, ptr %97, align 8, !tbaa !6
  %106 = getelementptr inbounds %struct.tree_type, ptr %102, i64 0, i32 3
  store ptr %105, ptr %106, align 8, !tbaa !6
  %107 = load i64, ptr %102, align 8
  %108 = or i64 %107, 131072
  store i64 %108, ptr %102, align 8
  %109 = getelementptr inbounds %struct.tree_type, ptr %102, i64 0, i32 15
  %110 = load ptr, ptr %109, align 8, !tbaa !6
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %101, !llvm.loop !107

112:                                              ; preds = %101, %95, %7, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimplify_one_sizepos(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %52, label %5

5:                                                ; preds = %2
  %6 = load i64, ptr %3, align 8
  %7 = and i64 %6, 131072
  %8 = icmp ne i64 %7, 0
  %9 = and i64 %6, 65535
  %10 = icmp eq i64 %9, 32
  %11 = or i1 %8, %10
  br i1 %11, label %52, label %12

12:                                               ; preds = %5
  %13 = tail call zeroext i8 @contains_placeholder_p(ptr noundef nonnull %3) #21
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %52

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  %18 = tail call ptr @unshare_expr(ptr noundef nonnull %3) #20
  store ptr %18, ptr %0, align 8, !tbaa !11
  %19 = tail call i32 @gimplify_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %20 = load ptr, ptr %0, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  %23 = icmp eq ptr %22, %17
  br i1 %23, label %52, label %24

24:                                               ; preds = %15
  %25 = load i64, ptr %17, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 8
  br i1 %27, label %28, label %52

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.tree_type, ptr %17, i64 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, 1024
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %52, label %33

33:                                               ; preds = %28
  %34 = tail call ptr @create_tmp_var(ptr noundef nonnull %17, ptr noundef null) #20
  store ptr %34, ptr %0, align 8, !tbaa !11
  %35 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef nonnull %17, ptr noundef nonnull %20) #21
  %36 = load ptr, ptr %0, align 8, !tbaa !11
  %37 = tail call ptr @gimplify_assign(ptr noundef %36, ptr noundef %35, ptr noundef %1) #21
  %38 = load i64, ptr %20, align 8
  %39 = and i64 %38, 65535
  %40 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !26
  %42 = add i32 %41, -4
  %43 = icmp ult i32 %42, 7
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.tree_exp, ptr %20, i64 0, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !6
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %33, %44
  %49 = load i32, ptr @input_location, align 4, !tbaa !26
  br label %50

50:                                               ; preds = %44, %48
  %51 = phi i32 [ %49, %48 ], [ %46, %44 ]
  tail call fastcc void @gimple_set_location(ptr noundef %37, i32 noundef %51) #20
  br label %52

52:                                               ; preds = %50, %15, %24, %28, %2, %5, %12
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @contains_placeholder_p(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_location(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gimplify_body(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #4 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.gimplify_ctx, align 8
  %7 = load i32, ptr @input_location, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #22
  %8 = load i8, ptr @timevar_enable, align 1, !tbaa !6
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @timevar_push_1(i32 noundef 48) #21
  br label %11

11:                                               ; preds = %10, %3
  tail call void @default_rtl_profile() #21
  %12 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7506, ptr noundef nonnull @.str.1) #21
  br label %15

15:                                               ; preds = %11, %14
  call void @push_gimplify_context(ptr noundef nonnull %6) #20
  call fastcc void @unshare_body(ptr noundef %0, ptr noundef %1) #20
  call fastcc void @unvisit_body(ptr noundef %0, ptr noundef %1) #20
  %16 = call ptr @cgraph_node(ptr noundef %1) #21
  %17 = getelementptr inbounds %struct.cgraph_node, ptr %16, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !108
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = call ptr @pointer_set_create() #21
  store ptr %21, ptr @nonlocal_vlas, align 8, !tbaa !11
  br label %22

22:                                               ; preds = %20, %15
  %23 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !6
  store i32 %24, ptr @input_location, align 4, !tbaa !26
  %25 = icmp eq i8 %2, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = call ptr @gimplify_parameters() #21
  br label %28

28:                                               ; preds = %22, %26
  %29 = phi ptr [ %27, %26 ], [ null, %22 ]
  store ptr %29, ptr %4, align 8, !tbaa !11
  store ptr null, ptr %5, align 8, !tbaa !11
  %30 = call zeroext i8 @gimplify_stmt(ptr noundef %0, ptr noundef nonnull %5) #20, !range !5
  %31 = load ptr, ptr %5, align 8, !tbaa !11
  %32 = call fastcc ptr @gimple_seq_first_stmt(ptr noundef %31) #20
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = call ptr @gimple_build_nop() #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %5, ptr noundef %35) #20
  %36 = load ptr, ptr %5, align 8, !tbaa !11
  br label %37

37:                                               ; preds = %34, %28
  %38 = phi ptr [ %31, %28 ], [ %36, %34 ]
  %39 = phi ptr [ %32, %28 ], [ %35, %34 ]
  %40 = call fastcc i32 @gimple_code(ptr noundef %39) #20, !range !21
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = call fastcc ptr @gimple_seq_first(ptr noundef %38) #20
  %44 = call fastcc ptr @gimple_seq_last(ptr noundef %38) #20
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %48, label %46

46:                                               ; preds = %42, %37
  %47 = call ptr @gimple_build_bind(ptr noundef null, ptr noundef %38, ptr noundef null) #21
  br label %48

48:                                               ; preds = %42, %46
  %49 = phi ptr [ %39, %42 ], [ %47, %46 ]
  store ptr null, ptr %0, align 8, !tbaa !11
  %50 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %29) #20, !range !5
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %48
  %53 = call fastcc ptr @gimple_bind_body(ptr noundef %49) #20
  call fastcc void @gimplify_seq_add_seq(ptr noundef nonnull %4, ptr noundef %53) #20
  %54 = load ptr, ptr %4, align 8, !tbaa !11
  call fastcc void @gimple_bind_set_body(ptr noundef %49, ptr noundef %54) #20
  %55 = load ptr, ptr @current_function_decl, align 8, !tbaa !11
  %56 = getelementptr inbounds %struct.tree_decl_non_common, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !6
  %58 = icmp eq ptr %57, null
  br i1 %58, label %71, label %59

59:                                               ; preds = %52, %67
  %60 = phi ptr [ %69, %67 ], [ %57, %52 ]
  %61 = getelementptr inbounds %struct.tree_decl_common, ptr %60, i64 0, i32 2
  %62 = load i64, ptr %61, align 8
  %63 = and i64 %62, 67108864
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %59
  %66 = and i64 %62, -67109889
  store i64 %66, ptr %61, align 8
  br label %67

67:                                               ; preds = %59, %65
  %68 = getelementptr inbounds %struct.tree_common, ptr %60, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !6
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %59, !llvm.loop !116

71:                                               ; preds = %67, %52, %48
  %72 = load ptr, ptr @nonlocal_vlas, align 8, !tbaa !11
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %71
  call void @pointer_set_destroy(ptr noundef nonnull %72) #21
  store ptr null, ptr @nonlocal_vlas, align 8, !tbaa !11
  br label %75

75:                                               ; preds = %74, %71
  call void @pop_gimplify_context(ptr noundef %49) #20
  %76 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7571, ptr noundef nonnull @.str.1) #21
  br label %79

79:                                               ; preds = %75, %78
  %80 = load i8, ptr @timevar_enable, align 1, !tbaa !6
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  call void @timevar_pop_1(i32 noundef 48) #21
  br label %83

83:                                               ; preds = %82, %79
  store i32 %7, ptr @input_location, align 4, !tbaa !26
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret ptr %49
}

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @default_rtl_profile() local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unshare_body(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = tail call ptr @cgraph_node(ptr noundef %1) #21
  %4 = tail call ptr @walk_tree_1(ptr noundef %0, ptr noundef nonnull @copy_if_shared_r, ptr noundef null, ptr noundef null, ptr noundef null) #21
  %5 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 1
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %3, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7, %11
  %12 = phi ptr [ %16, %11 ], [ %9, %7 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !117
  %14 = getelementptr inbounds %struct.tree_decl_non_common, ptr %13, i64 0, i32 1
  tail call fastcc void @unshare_body(ptr noundef nonnull %14, ptr noundef %13) #20
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %12, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %11, !llvm.loop !118

18:                                               ; preds = %11, %7, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unvisit_body(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = tail call ptr @cgraph_node(ptr noundef %1) #21
  %4 = tail call ptr @walk_tree_1(ptr noundef %0, ptr noundef nonnull @unmark_visited_r, ptr noundef null, ptr noundef null, ptr noundef null) #21
  %5 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 1
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %3, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7, %11
  %12 = phi ptr [ %16, %11 ], [ %9, %7 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !117
  %14 = getelementptr inbounds %struct.tree_decl_non_common, ptr %13, i64 0, i32 1
  tail call fastcc void @unvisit_body(ptr noundef nonnull %14, ptr noundef %13) #20
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %12, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %11, !llvm.loop !119

18:                                               ; preds = %11, %7, %2
  ret void
}

; Function Attrs: optsize
declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @pointer_set_create() local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gimplify_parameters() local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gimple_build_nop() local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !47
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @gimple_build_bind(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bind_body(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_bind_set_body(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #13 {
  %3 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimplify_function_tree(ptr noundef %0) local_unnamed_addr #4 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %5 = tail call ptr @gimple_body(ptr noundef %0) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7597, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %1, %7
  %9 = load ptr, ptr @current_function_decl, align 8, !tbaa !11
  store ptr %0, ptr @current_function_decl, align 8, !tbaa !11
  %10 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call void @push_cfun(ptr noundef nonnull %11) #21
  br label %15

14:                                               ; preds = %8
  tail call void @push_struct_function(ptr noundef nonnull %0) #21
  br label %15

15:                                               ; preds = %14, %13
  %16 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %43, label %19

19:                                               ; preds = %15, %39
  %20 = phi ptr [ %41, %39 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  %23 = load i64, ptr %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = and i32 %24, 65535
  %26 = add nsw i32 %25, -13
  %27 = icmp ult i32 %26, 2
  br i1 %27, label %28, label %39

28:                                               ; preds = %19
  %29 = load i64, ptr %20, align 8
  %30 = and i64 %29, 524288
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = tail call zeroext i8 @needs_to_live_in_memory(ptr noundef nonnull %20) #21
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %20, i64 0, i32 2
  %37 = load i64, ptr %36, align 8
  %38 = or i64 %37, 134217728
  store i64 %38, ptr %36, align 8
  br label %39

39:                                               ; preds = %19, %28, %32, %35
  %40 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !6
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %19, !llvm.loop !120

43:                                               ; preds = %39, %15
  %44 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !6
  %48 = load i64, ptr %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = and i32 %49, 65535
  %51 = add nsw i32 %50, -13
  %52 = icmp ult i32 %51, 2
  br i1 %52, label %53, label %60

53:                                               ; preds = %43
  %54 = tail call zeroext i8 @needs_to_live_in_memory(ptr noundef nonnull %45) #21
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.tree_decl_common, ptr %45, i64 0, i32 2
  %58 = load i64, ptr %57, align 8
  %59 = or i64 %58, 134217728
  store i64 %59, ptr %57, align 8
  br label %60

60:                                               ; preds = %43, %56, %53
  %61 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 1
  %62 = tail call ptr @gimplify_body(ptr noundef nonnull %61, ptr noundef nonnull %0, i8 noundef zeroext 1) #20
  %63 = tail call ptr @gimple_seq_alloc() #21
  store ptr %63, ptr %2, align 8, !tbaa !11
  call void @gimple_seq_add_stmt(ptr noundef nonnull %2, ptr noundef %62) #21
  %64 = load ptr, ptr %2, align 8, !tbaa !11
  call void @gimple_set_body(ptr noundef nonnull %0, ptr noundef %64) #21
  %65 = load i32, ptr @flag_instrument_function_entry_exit, align 4, !tbaa !26
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %88, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 16777216
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %67
  %73 = call zeroext i8 @flag_instrument_functions_exclude_p(ptr noundef nonnull %0) #21
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store ptr null, ptr %3, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !11
  %76 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 547), align 8, !tbaa !11
  %77 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %76, i32 noundef 0) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %3, ptr noundef %77) #20
  %78 = load ptr, ptr %2, align 8, !tbaa !11
  %79 = load ptr, ptr %3, align 8, !tbaa !11
  %80 = call ptr @gimple_build_try(ptr noundef %78, ptr noundef %79, i32 noundef 2) #21
  %81 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 546), align 16, !tbaa !11
  %82 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %81, i32 noundef 0) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %4, ptr noundef %82) #20
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %4, ptr noundef %80) #20
  %83 = load ptr, ptr %4, align 8, !tbaa !11
  %84 = call fastcc ptr @gimple_bind_block(ptr noundef %62) #20
  %85 = call ptr @gimple_build_bind(ptr noundef null, ptr noundef %83, ptr noundef %84) #21
  call fastcc void @gimple_bind_set_block(ptr noundef %62) #20
  %86 = call ptr @gimple_seq_alloc() #21
  store ptr %86, ptr %2, align 8, !tbaa !11
  call void @gimple_seq_add_stmt(ptr noundef nonnull %2, ptr noundef %85) #21
  %87 = load ptr, ptr %2, align 8, !tbaa !11
  call void @gimple_set_body(ptr noundef nonnull %0, ptr noundef %87) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  br label %88

88:                                               ; preds = %75, %72, %67, %60
  store ptr null, ptr %61, align 8, !tbaa !6
  %89 = load ptr, ptr @cfun, align 8, !tbaa !11
  %90 = getelementptr inbounds %struct.function, ptr %89, i64 0, i32 17
  store i32 1, ptr %90, align 8, !tbaa !121
  store ptr %9, ptr @current_function_decl, align 8, !tbaa !11
  call void @pop_cfun() #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret void
}

; Function Attrs: optsize
declare void @push_cfun(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @push_struct_function(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @needs_to_live_in_memory(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @gimple_seq_add_stmt(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @gimple_set_body(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @flag_instrument_functions_exclude_p(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gimple_build_call(ptr noundef, i32 noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_bind_set_block(ptr nocapture noundef writeonly %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 2
  store ptr null, ptr %2, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare void @pop_cfun() local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimple_regimplify_operands(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimplify_ctx, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca ptr, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store ptr null, ptr %3, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #22
  call void @push_gimplify_context(ptr noundef nonnull %4) #20
  %11 = load ptr, ptr @cfun, align 8, !tbaa !11
  %12 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %11) #20, !range !5
  %13 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %14 = getelementptr inbounds %struct.gimplify_ctx, ptr %13, i64 0, i32 10
  store i8 %12, ptr %14, align 1, !tbaa !32
  %15 = call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !21
  %16 = add nsw i32 %15, -1
  %17 = call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 31)
  switch i32 %17, label %93 [
    i32 0, label %18
    i32 2, label %23
    i32 9, label %26
    i32 3, label %29
  ]

18:                                               ; preds = %2
  %19 = call fastcc ptr @gimple_cond_lhs_ptr(ptr noundef %0) #20
  %20 = call i32 @gimplify_expr(ptr noundef %19, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %21 = call fastcc ptr @gimple_cond_rhs_ptr(ptr noundef %0) #20
  %22 = call i32 @gimplify_expr(ptr noundef %21, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  br label %252

23:                                               ; preds = %2
  %24 = call fastcc ptr @gimple_switch_index_ptr(ptr noundef %0) #20
  %25 = call i32 @gimplify_expr(ptr noundef %24, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  br label %252

26:                                               ; preds = %2
  %27 = call fastcc ptr @gimple_omp_atomic_load_rhs_ptr(ptr noundef %0) #20
  %28 = call i32 @gimplify_expr(ptr noundef nonnull %27, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  br label %252

29:                                               ; preds = %2
  %30 = call fastcc i32 @gimple_asm_noutputs(ptr noundef %0) #20, !range !21
  %31 = zext nneg i32 %30 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #22
  %32 = shl nuw nsw i64 %31, 3
  %33 = alloca i8, i64 %32, align 16
  %34 = icmp eq i32 %30, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %38, %29
  %36 = call fastcc i32 @gimple_asm_ninputs(ptr noundef %0) #20, !range !21
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %92, label %56

38:                                               ; preds = %29, %38
  %39 = phi i64 [ %54, %38 ], [ 0, %29 ]
  %40 = trunc i64 %39 to i32
  %41 = call fastcc ptr @gimple_asm_output_op(ptr noundef %0, i32 noundef %40) #20
  %42 = getelementptr inbounds %struct.tree_list, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  %44 = getelementptr inbounds %struct.tree_list, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = getelementptr inbounds %struct.tree_string, ptr %45, i64 0, i32 2
  store ptr %46, ptr %5, align 8, !tbaa !11
  %47 = getelementptr inbounds ptr, ptr %33, i64 %39
  store ptr %46, ptr %47, align 8, !tbaa !11
  %48 = call zeroext i8 @parse_output_constraint(ptr noundef nonnull %5, i32 noundef %40, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #21
  %49 = getelementptr inbounds %struct.tree_list, ptr %41, i64 0, i32 2
  %50 = load i8, ptr %8, align 1, !tbaa !6
  %51 = icmp eq i8 %50, 0
  %52 = select i1 %51, ptr @is_gimple_lvalue, ptr @is_gimple_min_lval
  %53 = call i32 @gimplify_expr(ptr noundef nonnull %49, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %52, i32 noundef 6) #20
  %54 = add nuw nsw i64 %39, 1
  %55 = icmp eq i64 %54, %31
  br i1 %55, label %35, label %38, !llvm.loop !123

56:                                               ; preds = %35, %87
  %57 = phi i64 [ %88, %87 ], [ 0, %35 ]
  %58 = trunc i64 %57 to i32
  %59 = call fastcc ptr @gimple_asm_input_op(ptr noundef %0, i32 noundef %58) #20
  %60 = getelementptr inbounds %struct.tree_list, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !6
  %62 = getelementptr inbounds %struct.tree_list, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !6
  %64 = getelementptr inbounds %struct.tree_string, ptr %63, i64 0, i32 2
  store ptr %64, ptr %5, align 8, !tbaa !11
  %65 = call zeroext i8 @parse_input_constraint(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, i32 noundef %30, i32 noundef 0, ptr noundef nonnull %33, ptr noundef nonnull %6, ptr noundef nonnull %7) #21
  %66 = getelementptr inbounds %struct.tree_list, ptr %59, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !6
  %68 = getelementptr inbounds %struct.tree_common, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !6
  %70 = load i64, ptr %69, align 8
  %71 = and i64 %70, 262144
  %72 = icmp ne i64 %71, 0
  %73 = load i8, ptr %6, align 1
  %74 = icmp ne i8 %73, 0
  %75 = select i1 %72, i1 %74, i1 false
  br i1 %75, label %78, label %76

76:                                               ; preds = %56
  %77 = load i8, ptr %7, align 1, !tbaa !6
  br label %79

78:                                               ; preds = %56
  store i8 0, ptr %7, align 1, !tbaa !6
  br label %79

79:                                               ; preds = %76, %78
  %80 = phi i8 [ %77, %76 ], [ 0, %78 ]
  %81 = icmp eq i8 %80, 0
  %82 = select i1 %81, i1 %74, i1 false
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = call i32 @gimplify_expr(ptr noundef nonnull %66, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @is_gimple_lvalue, i32 noundef 6) #20
  br label %87

85:                                               ; preds = %79
  %86 = call i32 @gimplify_expr(ptr noundef nonnull %66, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @is_gimple_asm_val, i32 noundef 1) #20
  br label %87

87:                                               ; preds = %85, %83
  %88 = add nuw nsw i64 %57, 1
  %89 = call fastcc i32 @gimple_asm_ninputs(ptr noundef %0) #20, !range !21
  %90 = zext nneg i32 %89 to i64
  %91 = icmp ult i64 %88, %90
  br i1 %91, label %56, label %92, !llvm.loop !124

92:                                               ; preds = %87, %35
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  br label %252

93:                                               ; preds = %2
  %94 = call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %95 = call ptr @gimple_get_lhs(ptr noundef %0) #21
  %96 = icmp eq i32 %94, 0
  br i1 %96, label %144, label %97

97:                                               ; preds = %93
  %98 = zext i32 %94 to i64
  %99 = icmp eq i32 %94, 2
  br label %100

100:                                              ; preds = %97, %141
  %101 = phi i64 [ %98, %97 ], [ %142, %141 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #22
  %102 = trunc i64 %101 to i32
  %103 = add i32 %102, -1
  %104 = call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %103) #20
  store ptr %104, ptr %9, align 8, !tbaa !11
  %105 = icmp eq ptr %104, null
  br i1 %105, label %141, label %106

106:                                              ; preds = %100
  switch i64 %101, label %137 [
    i64 1, label %107
    i64 2, label %115
  ]

107:                                              ; preds = %106
  %108 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #20, !range !5
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !5
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %137, label %113

113:                                              ; preds = %110, %107
  %114 = call i32 @gimplify_expr(ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @is_gimple_lvalue, i32 noundef 2) #20
  br label %139

115:                                              ; preds = %106
  %116 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !5
  %117 = icmp ne i8 %116, 0
  %118 = select i1 %117, i1 %99, i1 false
  br i1 %118, label %119, label %127

119:                                              ; preds = %115
  %120 = call fastcc i32 @gimple_expr_code(ptr noundef %0) #20, !range !125
  %121 = call fastcc i32 @get_gimple_rhs_class(i32 noundef %120) #20, !range !21
  %122 = icmp eq i32 %121, 3
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  %124 = call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %125 = call ptr @rhs_predicate_for(ptr noundef %124) #20
  %126 = call i32 @gimplify_expr(ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %125, i32 noundef 1) #20
  br label %139

127:                                              ; preds = %115, %119
  %128 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #20, !range !5
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %127
  %131 = load ptr, ptr %9, align 8, !tbaa !11
  %132 = load i64, ptr %131, align 8
  %133 = and i64 %132, 65535
  %134 = icmp eq i64 %133, 29
  br i1 %134, label %141, label %135

135:                                              ; preds = %130
  %136 = call i32 @gimplify_expr(ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @is_gimple_call_addr, i32 noundef 1) #20
  br label %139

137:                                              ; preds = %106, %110, %127
  %138 = call i32 @gimplify_expr(ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  br label %139

139:                                              ; preds = %123, %137, %135, %113
  %140 = load ptr, ptr %9, align 8, !tbaa !11
  call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %103, ptr noundef %140) #20
  br label %141

141:                                              ; preds = %130, %100, %139
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #22
  %142 = add nsw i64 %101, -1
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %100, !llvm.loop !126

144:                                              ; preds = %141, %93
  %145 = call ptr @gimple_get_lhs(ptr noundef %0) #21
  %146 = icmp eq ptr %145, null
  br i1 %146, label %252, label %147

147:                                              ; preds = %144
  %148 = call zeroext i8 @is_gimple_reg(ptr noundef nonnull %145) #21
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %252

150:                                              ; preds = %147
  %151 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !5
  %152 = icmp ne i8 %151, 0
  %153 = icmp eq i32 %94, 2
  %154 = select i1 %152, i1 %153, i1 false
  br i1 %154, label %155, label %164

155:                                              ; preds = %150
  %156 = call fastcc i32 @gimple_expr_code(ptr noundef %0) #20, !range !125
  %157 = call fastcc i32 @get_gimple_rhs_class(i32 noundef %156) #20, !range !21
  %158 = icmp eq i32 %157, 3
  br i1 %158, label %159, label %164

159:                                              ; preds = %155
  %160 = call fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef %0) #20
  %161 = call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %162 = call ptr @rhs_predicate_for(ptr noundef %161) #20
  %163 = call i32 @gimplify_expr(ptr noundef %160, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %162, i32 noundef 1) #20
  br label %252

164:                                              ; preds = %155, %150
  %165 = call zeroext i8 @is_gimple_reg(ptr noundef nonnull %145) #21
  %166 = icmp eq i8 %165, 0
  %167 = getelementptr inbounds %struct.tree_common, ptr %145, i64 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !6
  %169 = call zeroext i8 @is_gimple_reg_type(ptr noundef %168) #21
  %170 = icmp eq i8 %169, 0
  br i1 %166, label %189, label %171

171:                                              ; preds = %164
  br i1 %170, label %252, label %172

172:                                              ; preds = %171
  %173 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #20, !range !5
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %186, label %175

175:                                              ; preds = %172
  %176 = call i32 @gimple_call_flags(ptr noundef %0) #21
  %177 = zext i32 %176 to i64
  %178 = and i64 %177, 4
  %179 = icmp eq i64 %178, 0
  %180 = and i64 %177, 3
  %181 = icmp ne i64 %180, 0
  %182 = and i1 %179, %181
  %183 = call zeroext i8 @stmt_can_throw_internal(ptr noundef %0) #21
  %184 = icmp eq i8 %183, 0
  %185 = select i1 %184, i1 %182, i1 false
  br i1 %185, label %252, label %224

186:                                              ; preds = %172
  %187 = call zeroext i8 @stmt_can_throw_internal(ptr noundef %0) #21
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %252, label %224

189:                                              ; preds = %164
  br i1 %170, label %190, label %224

190:                                              ; preds = %189
  %191 = load ptr, ptr %167, align 8, !tbaa !6
  %192 = load i64, ptr %191, align 8
  %193 = and i64 %192, 65535
  %194 = icmp eq i64 %193, 14
  br i1 %194, label %195, label %197

195:                                              ; preds = %190
  %196 = call i32 @vector_type_mode(ptr noundef nonnull %191) #21
  br label %202

197:                                              ; preds = %190
  %198 = getelementptr inbounds %struct.tree_type, ptr %191, i64 0, i32 6
  %199 = load i32, ptr %198, align 4
  %200 = lshr i32 %199, 16
  %201 = and i32 %200, 255
  br label %202

202:                                              ; preds = %197, %195
  %203 = phi i32 [ %196, %195 ], [ %201, %197 ]
  %204 = icmp eq i32 %203, 1
  br i1 %204, label %252, label %205

205:                                              ; preds = %202
  %206 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #20, !range !5
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %224, label %208

208:                                              ; preds = %205
  %209 = call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #20
  %210 = load ptr, ptr %167, align 8, !tbaa !6
  %211 = call i32 @aggregate_value_p(ptr noundef %210, ptr noundef %209) #21
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %252

213:                                              ; preds = %208
  %214 = icmp eq ptr %209, null
  br i1 %214, label %224, label %215

215:                                              ; preds = %213
  %216 = getelementptr inbounds %struct.tree_decl_non_common, ptr %209, i64 0, i32 3
  %217 = load ptr, ptr %216, align 8, !tbaa !6
  %218 = icmp eq ptr %217, null
  br i1 %218, label %224, label %219

219:                                              ; preds = %215
  %220 = getelementptr inbounds %struct.tree_decl_common, ptr %217, i64 0, i32 2
  %221 = load i64, ptr %220, align 8
  %222 = and i64 %221, 268435456
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %252

224:                                              ; preds = %213, %215, %219, %186, %205, %189, %175
  %225 = getelementptr inbounds %struct.tree_common, ptr %145, i64 0, i32 2
  %226 = load ptr, ptr %225, align 8, !tbaa !6
  %227 = call ptr @create_tmp_var(ptr noundef %226, ptr noundef null) #20
  %228 = load ptr, ptr %225, align 8, !tbaa !6
  %229 = load i64, ptr %228, align 8
  %230 = trunc i64 %229 to i32
  %231 = and i32 %230, 65535
  %232 = add nsw i32 %231, -13
  %233 = icmp ult i32 %232, 2
  br i1 %233, label %234, label %238

234:                                              ; preds = %224
  %235 = getelementptr inbounds %struct.tree_decl_common, ptr %227, i64 0, i32 2
  %236 = load i64, ptr %235, align 8
  %237 = or i64 %236, 134217728
  store i64 %237, ptr %235, align 8
  br label %238

238:                                              ; preds = %224, %234
  %239 = load ptr, ptr @cfun, align 8, !tbaa !11
  %240 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %239) #20, !range !5
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %244, label %242

242:                                              ; preds = %238
  %243 = call fastcc ptr @make_ssa_name(ptr noundef %227, ptr noundef null) #20
  br label %244

244:                                              ; preds = %242, %238
  %245 = phi ptr [ %243, %242 ], [ %227, %238 ]
  call void @gimple_set_lhs(ptr noundef %0, ptr noundef %245) #21
  %246 = call ptr @gimple_build_assign_stat(ptr noundef nonnull %145, ptr noundef %245) #21
  %247 = load i64, ptr %145, align 8
  %248 = and i64 %247, 65535
  %249 = icmp eq i64 %248, 141
  br i1 %249, label %250, label %252

250:                                              ; preds = %244
  %251 = getelementptr inbounds %struct.tree_ssa_name, ptr %145, i64 0, i32 2
  store ptr %246, ptr %251, align 8, !tbaa !6
  br label %252

252:                                              ; preds = %175, %219, %208, %202, %171, %159, %186, %250, %244, %144, %147, %92, %26, %23, %18
  %253 = phi ptr [ null, %147 ], [ null, %144 ], [ null, %92 ], [ null, %26 ], [ null, %23 ], [ null, %18 ], [ %246, %250 ], [ %246, %244 ], [ null, %186 ], [ null, %159 ], [ null, %171 ], [ null, %202 ], [ null, %208 ], [ null, %219 ], [ null, %175 ]
  %254 = load ptr, ptr @cfun, align 8, !tbaa !11
  %255 = call fastcc ptr @gimple_referenced_vars(ptr noundef %254) #20
  %256 = icmp eq ptr %255, null
  br i1 %256, label %268, label %257

257:                                              ; preds = %252
  %258 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %259 = getelementptr inbounds %struct.gimplify_ctx, ptr %258, i64 0, i32 2
  %260 = load ptr, ptr %259, align 8, !tbaa !6
  %261 = icmp eq ptr %260, null
  br i1 %261, label %268, label %262

262:                                              ; preds = %257, %262
  %263 = phi ptr [ %266, %262 ], [ %260, %257 ]
  %264 = call zeroext i8 @add_referenced_var(ptr noundef nonnull %263) #21
  %265 = getelementptr inbounds %struct.tree_common, ptr %263, i64 0, i32 1
  %266 = load ptr, ptr %265, align 8, !tbaa !6
  %267 = icmp eq ptr %266, null
  br i1 %267, label %268, label %262, !llvm.loop !127

268:                                              ; preds = %262, %257, %252
  %269 = load ptr, ptr %3, align 8, !tbaa !11
  %270 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %269) #20, !range !5
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %272, label %287

272:                                              ; preds = %268
  %273 = load ptr, ptr @cfun, align 8, !tbaa !11
  %274 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %273) #20, !range !5
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %285, label %276

276:                                              ; preds = %272
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #22
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef %269) #20
  %277 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %10) #20, !range !5
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %276, %279
  %280 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %10) #20
  call void @mark_symbols_for_renaming(ptr noundef %280) #21
  call fastcc void @gsi_next(ptr noundef nonnull %10) #20
  %281 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %10) #20, !range !5
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %279, label %283, !llvm.loop !128

283:                                              ; preds = %279, %276
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #22
  %284 = load ptr, ptr %3, align 8, !tbaa !11
  br label %285

285:                                              ; preds = %283, %272
  %286 = phi ptr [ %284, %283 ], [ %269, %272 ]
  call void @gsi_insert_seq_before(ptr noundef %1, ptr noundef %286, i32 noundef 1) #21
  br label %287

287:                                              ; preds = %285, %268
  %288 = icmp eq ptr %253, null
  br i1 %288, label %290, label %289

289:                                              ; preds = %287
  call void @gsi_insert_after(ptr noundef %1, ptr noundef nonnull %253, i32 noundef 0) #21
  br label %290

290:                                              ; preds = %289, %287
  call void @pop_gimplify_context(ptr noundef null) #20
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !129
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gimple_df, ptr %5, i64 0, i32 10
  %9 = load i8, ptr %8, align 8
  %10 = and i8 %9, 1
  br label %11

11:                                               ; preds = %7, %3, %1
  %12 = phi i8 [ 0, %3 ], [ 0, %1 ], [ %10, %7 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs_ptr(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs_ptr(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_index_ptr(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_omp_atomic_load_rhs_ptr(ptr noundef readnone %0) unnamed_addr #16 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_noutputs(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !6
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_output_op(ptr noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !6
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 2655, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !6
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, %1
  %13 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %12) #20
  ret ptr %13
}

; Function Attrs: optsize
declare zeroext i8 @parse_output_constraint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_ninputs(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !6
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_input_op(ptr noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !6
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 2622, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %2, %7
  %9 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %1) #20
  ret ptr %9
}

; Function Attrs: optsize
declare zeroext i8 @parse_input_constraint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !6
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !5
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !21
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !21
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #16 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !6
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !21
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ]

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1446, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #4 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !5
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1665, ptr noundef nonnull @.str.1) #21
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %12 = zext i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @stmt_can_throw_internal(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #20
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare i32 @aggregate_value_p(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !11
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #21
  ret ptr %4
}

; Function Attrs: optsize
declare void @gimple_set_lhs(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_referenced_vars(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !129
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !130
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @mark_symbols_for_renaming(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @gsi_insert_seq_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @force_gimple_operand(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #4 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.gimplify_ctx, align 8
  store ptr %0, ptr %5, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #22
  store ptr null, ptr %1, align 8, !tbaa !11
  %7 = tail call zeroext i8 @is_gimple_val(ptr noundef %0) #21
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %54

9:                                                ; preds = %4
  %10 = icmp eq i8 %2, 0
  %11 = select i1 %10, ptr @is_gimple_reg_rhs, ptr @is_gimple_val
  call void @push_gimplify_context(ptr noundef nonnull %6) #20
  %12 = load ptr, ptr @cfun, align 8, !tbaa !11
  %13 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %12) #20, !range !5
  %14 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %15 = getelementptr inbounds %struct.gimplify_ctx, ptr %14, i64 0, i32 10
  store i8 %13, ptr %15, align 1, !tbaa !32
  %16 = getelementptr inbounds %struct.gimplify_ctx, ptr %14, i64 0, i32 11
  store i8 1, ptr %16, align 2, !tbaa !70
  %17 = icmp eq ptr %3, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = call ptr @build2_stat(i32 noundef 53, ptr noundef %20, ptr noundef nonnull %3, ptr noundef %0) #21
  store ptr %21, ptr %5, align 8, !tbaa !11
  br label %22

22:                                               ; preds = %18, %9
  %23 = phi ptr [ %21, %18 ], [ %0, %9 ]
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 53
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  call void @gimplify_and_add(ptr noundef nonnull %23, ptr noundef nonnull %1) #20
  store ptr null, ptr %5, align 8, !tbaa !11
  br label %37

33:                                               ; preds = %27, %22
  %34 = call i32 @gimplify_expr(ptr noundef nonnull %5, ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %11, i32 noundef 1) #20
  %35 = icmp eq i32 %34, -2
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7901, ptr noundef nonnull @.str.1) #21
  br label %37

37:                                               ; preds = %36, %33, %32
  %38 = load ptr, ptr @cfun, align 8, !tbaa !11
  %39 = call fastcc ptr @gimple_referenced_vars(ptr noundef %38) #20
  %40 = icmp eq ptr %39, null
  br i1 %40, label %52, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %43 = getelementptr inbounds %struct.gimplify_ctx, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !6
  %45 = icmp eq ptr %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %41, %46
  %47 = phi ptr [ %50, %46 ], [ %44, %41 ]
  %48 = call zeroext i8 @add_referenced_var(ptr noundef nonnull %47) #21
  %49 = getelementptr inbounds %struct.tree_common, ptr %47, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !6
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %46, !llvm.loop !134

52:                                               ; preds = %46, %41, %37
  call void @pop_gimplify_context(ptr noundef null) #20
  %53 = load ptr, ptr %5, align 8, !tbaa !11
  br label %54

54:                                               ; preds = %4, %52
  %55 = phi ptr [ %0, %4 ], [ %53, %52 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #22
  ret ptr %55
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @force_gimple_operand_gsi(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, i8 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #4 {
  %7 = alloca ptr, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  %9 = call ptr @force_gimple_operand(ptr noundef %1, ptr noundef nonnull %7, i8 noundef zeroext %2, ptr noundef %3) #20
  %10 = load ptr, ptr %7, align 8, !tbaa !11
  %11 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %10) #20, !range !5
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %6
  %14 = load ptr, ptr @cfun, align 8, !tbaa !11
  %15 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %14) #20, !range !5
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #22
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %10) #20
  %18 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %8) #20, !range !5
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17, %20
  %21 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %8) #20
  call void @mark_symbols_for_renaming(ptr noundef %21) #21
  call fastcc void @gsi_next(ptr noundef nonnull %8) #20
  %22 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %8) #20, !range !5
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %20, label %24, !llvm.loop !135

24:                                               ; preds = %20, %17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #22
  br label %25

25:                                               ; preds = %24, %13
  %26 = icmp eq i8 %4, 0
  %27 = load ptr, ptr %7, align 8, !tbaa !11
  br i1 %26, label %29, label %28

28:                                               ; preds = %25
  call void @gsi_insert_seq_before(ptr noundef %0, ptr noundef %27, i32 noundef %5) #21
  br label %30

29:                                               ; preds = %25
  call void @gsi_insert_seq_after(ptr noundef %0, ptr noundef %27, i32 noundef %5) #21
  br label %30

30:                                               ; preds = %28, %29, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  ret ptr %9
}

; Function Attrs: optsize
declare void @gsi_insert_seq_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #18

; Function Attrs: optsize
declare ptr @alloc_stmt_list() local_unnamed_addr #6

; Function Attrs: optsize
declare void @tsi_link_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookup_tmp_var(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #4 {
  %3 = alloca %struct.gimple_temp_hash_elt, align 8
  %4 = load i32, ptr @optimize, align 4, !tbaa !26
  %5 = icmp ne i32 %4, 0
  %6 = icmp ne i8 %1, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65536
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %8, %2
  %13 = tail call fastcc ptr @create_tmp_from_val(ptr noundef %0) #20
  br label %37

14:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  store ptr %0, ptr %3, align 8, !tbaa !136
  %15 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %16 = getelementptr inbounds %struct.gimplify_ctx, ptr %15, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !18
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = tail call ptr @htab_create(i64 noundef 1000, ptr noundef nonnull @gimple_tree_hash, ptr noundef nonnull @gimple_tree_eq, ptr noundef nonnull @free) #21
  %21 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %22 = getelementptr inbounds %struct.gimplify_ctx, ptr %21, i64 0, i32 7
  store ptr %20, ptr %22, align 8, !tbaa !18
  br label %23

23:                                               ; preds = %19, %14
  %24 = phi ptr [ %20, %19 ], [ %17, %14 ]
  %25 = call ptr @htab_find_slot(ptr noundef %24, ptr noundef nonnull %3, i32 noundef 1) #21
  %26 = load ptr, ptr %25, align 8, !tbaa !11
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = call ptr @xmalloc(i64 noundef 16) #21
  store ptr %0, ptr %29, align 8, !tbaa !136
  %30 = call fastcc ptr @create_tmp_from_val(ptr noundef nonnull %0) #20
  %31 = getelementptr inbounds %struct.gimple_temp_hash_elt, ptr %29, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !138
  store ptr %29, ptr %25, align 8, !tbaa !11
  br label %35

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.gimple_temp_hash_elt, ptr %26, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !138
  br label %35

35:                                               ; preds = %32, %28
  %36 = phi ptr [ %30, %28 ], [ %34, %32 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  br label %37

37:                                               ; preds = %35, %12
  %38 = phi ptr [ %13, %12 ], [ %36, %35 ]
  ret ptr %38
}

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_seq_last_stmt(ptr noundef readonly %0) unnamed_addr #8 {
  %2 = tail call fastcc ptr @gimple_seq_last(ptr noundef %0) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !44
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_tmp_from_val(ptr noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = tail call ptr @get_name(ptr noundef %0) #21
  %5 = tail call ptr @create_tmp_var(ptr noundef %3, ptr noundef %4) #20
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @gimple_tree_hash(ptr nocapture noundef readonly %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !136
  %3 = tail call i32 @iterative_hash_expr(ptr noundef %2, i32 noundef 0) #21
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @gimple_tree_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !136
  %4 = load ptr, ptr %1, align 8, !tbaa !136
  %5 = load i64, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = xor i64 %6, %5
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = tail call i32 @operand_equal_p(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 0) #21
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @gimple_tree_hash(ptr noundef nonnull %0) #20
  %21 = tail call i32 @gimple_tree_hash(ptr noundef nonnull %1) #20
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 150, ptr noundef nonnull @.str.1) #21
  br label %24

24:                                               ; preds = %23, %19, %16, %2, %10
  %25 = phi i32 [ 0, %10 ], [ 0, %2 ], [ 0, %16 ], [ 1, %19 ], [ 1, %23 ]
  ret i32 %25
}

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @get_name(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @iterative_hash_expr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i64 @max_int_size_in_bytes(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_location(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_location(ptr noundef %0) #20
  %3 = icmp ne i32 %2, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_do_not_emit_location_p(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_plf(ptr noundef %0) #20
  %3 = trunc i32 %2 to i8
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @should_carry_location_p(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !21
  %3 = icmp ne i32 %2, 4
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !6
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_plf(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 11
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @copy_tree_r(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @tree_int_cst_compare(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @decl_value_expr_lookup(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @omp_firstprivatize_type_sizes(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #4 {
  %3 = icmp eq ptr %1, null
  %4 = load ptr, ptr @global_trees, align 16
  %5 = icmp eq ptr %4, %1
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %54, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 16
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !139
  %12 = tail call i32 @pointer_set_insert(ptr noundef %11, ptr noundef %9) #21
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %54

14:                                               ; preds = %7
  %15 = load i64, ptr %9, align 8
  %16 = trunc i64 %15 to i16
  switch i16 %16, label %48 [
    i16 8, label %17
    i16 6, label %17
    i16 7, label %17
    i16 9, label %17
    i16 11, label %17
    i16 15, label %22
    i16 16, label %27
    i16 17, label %27
    i16 18, label %27
    i16 10, label %45
    i16 12, label %45
  ]

17:                                               ; preds = %14, %14, %14, %14, %14
  %18 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 13
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  tail call void @omp_firstprivatize_variable(ptr noundef nonnull %0, ptr noundef %19) #20
  %20 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 14
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  tail call void @omp_firstprivatize_variable(ptr noundef nonnull %0, ptr noundef %21) #20
  br label %48

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  tail call fastcc void @omp_firstprivatize_type_sizes(ptr noundef nonnull %0, ptr noundef %24) #20
  %25 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  tail call fastcc void @omp_firstprivatize_type_sizes(ptr noundef nonnull %0, ptr noundef %26) #20
  br label %48

27:                                               ; preds = %14, %14, %14
  %28 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = icmp eq ptr %29, null
  br i1 %30, label %48, label %31

31:                                               ; preds = %27, %41
  %32 = phi ptr [ %43, %41 ], [ %29, %27 ]
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 31
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.tree_field_decl, ptr %32, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  tail call void @omp_firstprivatize_variable(ptr noundef %0, ptr noundef %38) #20
  %39 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  tail call fastcc void @omp_firstprivatize_type_sizes(ptr noundef %0, ptr noundef %40) #20
  br label %41

41:                                               ; preds = %31, %36
  %42 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %31, !llvm.loop !140

45:                                               ; preds = %14, %14
  %46 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !6
  tail call fastcc void @omp_firstprivatize_type_sizes(ptr noundef nonnull %0, ptr noundef %47) #20
  br label %48

48:                                               ; preds = %41, %27, %14, %45, %22, %17
  %49 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !6
  tail call void @omp_firstprivatize_variable(ptr noundef %0, ptr noundef %50) #20
  %51 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  tail call void @omp_firstprivatize_variable(ptr noundef %0, ptr noundef %52) #20
  %53 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 10), align 8, !tbaa !141
  tail call void %53(ptr noundef %0, ptr noundef nonnull %9) #21
  br label %54

54:                                               ; preds = %7, %2, %48
  ret void
}

; Function Attrs: optsize
declare ptr @splay_tree_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @pointer_set_insert(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @build_fold_indirect_ref_loc(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc(i32 noundef %0) unnamed_addr #4 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #4 {
  tail call fastcc void @VEC_tree_heap_reserve(ptr noundef %0) #20
  %3 = load ptr, ptr %0, align 8, !tbaa !11
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @array_ref_low_bound(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @array_ref_element_size(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @size_binop_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @component_ref_field_offset(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_tree_base_pop(ptr nocapture noundef %0) unnamed_addr #15 {
  %2 = load i32, ptr %0, align 8, !tbaa !56
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !56
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @canonicalize_component_ref(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 41
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1654, ptr noundef nonnull @.str.1) #21
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i32
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -6
  %14 = icmp ult i32 %13, 3
  br i1 %14, label %15, label %18

15:                                               ; preds = %7
  %16 = tail call ptr @get_unwidened(ptr noundef nonnull %2, ptr noundef null) #21
  %17 = load ptr, ptr %8, align 8, !tbaa !6
  br label %21

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi ptr [ %17, %15 ], [ %9, %18 ]
  %23 = phi ptr [ %16, %15 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = icmp eq ptr %22, %25
  br i1 %26, label %72, label %27

27:                                               ; preds = %21
  %28 = load i64, ptr %25, align 8
  %29 = trunc i64 %28 to i32
  %30 = lshr i32 %29, 20
  %31 = and i32 %30, 1
  %32 = lshr i32 %29, 18
  %33 = and i32 %32, 2
  %34 = or disjoint i32 %31, %33
  %35 = getelementptr inbounds %struct.tree_type, ptr %25, i64 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = lshr i32 %36, 11
  %38 = and i32 %37, 4
  %39 = or disjoint i32 %34, %38
  %40 = lshr i64 %28, 48
  %41 = trunc i64 %40 to i32
  %42 = and i32 %41, 65280
  %43 = or disjoint i32 %39, %42
  %44 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !6
  %46 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !6
  %48 = load i64, ptr %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = lshr i32 %49, 20
  %51 = and i32 %50, 1
  %52 = lshr i32 %49, 18
  %53 = and i32 %52, 2
  %54 = getelementptr inbounds %struct.tree_type, ptr %47, i64 0, i32 6
  %55 = load i32, ptr %54, align 4
  %56 = lshr i32 %55, 11
  %57 = and i32 %56, 4
  %58 = lshr i64 %48, 48
  %59 = trunc i64 %58 to i32
  %60 = and i32 %59, 65280
  %61 = or disjoint i32 %53, %51
  %62 = or disjoint i32 %61, %57
  %63 = or disjoint i32 %62, %60
  %64 = or i32 %63, %43
  %65 = icmp eq i32 %43, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %27
  %67 = getelementptr inbounds %struct.tree_type, ptr %25, i64 0, i32 16
  %68 = load ptr, ptr %67, align 8, !tbaa !6
  %69 = tail call ptr @build_qualified_type(ptr noundef %68, i32 noundef %64) #21
  br label %70

70:                                               ; preds = %66, %27
  %71 = phi ptr [ %69, %66 ], [ %25, %27 ]
  store ptr %71, ptr %8, align 8, !tbaa !6
  br label %72

72:                                               ; preds = %70, %21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #20
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #21
  store ptr %6, ptr %0, align 8, !tbaa !11
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #15 {
  %3 = load i32, ptr %0, align 8, !tbaa !56
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !56
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !142
  %6 = load i32, ptr %0, align 8, !tbaa !56
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @get_unwidened(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @generic_expr_could_trap_p(ptr noundef %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = tail call zeroext i8 @is_gimple_val(ptr noundef nonnull %0) #21
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !26
  %11 = add i32 %10, -4
  %12 = icmp ult i32 %11, 7
  br i1 %12, label %13, label %30

13:                                               ; preds = %6
  %14 = tail call zeroext i8 @tree_could_trap_p(ptr noundef nonnull %0) #21
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = tail call fastcc i32 @tree_operand_length(ptr noundef nonnull %0) #20
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %16
  %20 = zext i32 %17 to i64
  br label %24

21:                                               ; preds = %24
  %22 = add nuw nsw i64 %25, 1
  %23 = icmp eq i64 %22, %20
  br i1 %23, label %30, label %24, !llvm.loop !143

24:                                               ; preds = %19, %21
  %25 = phi i64 [ 0, %19 ], [ %22, %21 ]
  %26 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = tail call fastcc zeroext i8 @generic_expr_could_trap_p(ptr noundef %27) #20, !range !5
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %21, label %30

30:                                               ; preds = %24, %21, %16, %6, %13, %1, %3
  %31 = phi i8 [ 0, %3 ], [ 0, %1 ], [ 1, %13 ], [ 1, %6 ], [ 0, %16 ], [ 1, %24 ], [ 0, %21 ]
  ret i8 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gimplify_pure_cond_expr(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #4 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %5 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = tail call ptr @gimple_boolify(ptr noundef %6) #20
  store ptr %7, ptr %3, align 8, !tbaa !11
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %15 [
    i16 91, label %11
    i16 92, label %10
  ]

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %2, %10
  %12 = phi i64 [ 94, %10 ], [ 93, %2 ]
  %13 = and i64 %8, -65536
  %14 = or disjoint i64 %13, %12
  store i64 %14, ptr %7, align 8
  br label %15

15:                                               ; preds = %11, %2
  %16 = call i32 @gimplify_expr(ptr noundef nonnull %3, ptr noundef %1, ptr noundef null, ptr noundef nonnull @is_gimple_condexpr, i32 noundef 1) #20
  %17 = load ptr, ptr %3, align 8, !tbaa !11
  %18 = load ptr, ptr %0, align 8, !tbaa !11
  %19 = getelementptr inbounds %struct.tree_exp, ptr %18, i64 0, i32 3
  store ptr %17, ptr %19, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %21 = call i32 @gimplify_expr(ptr noundef nonnull %20, ptr noundef %1, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %22 = call i32 @llvm.smin.i32(i32 %16, i32 %21)
  %23 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1, i32 0, i32 1
  %24 = call i32 @gimplify_expr(ptr noundef nonnull %23, ptr noundef %1, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %25 = call i32 @llvm.smin.i32(i32 %22, i32 %24)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret i32 %25
}

; Function Attrs: optsize
declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @shortcut_cond_expr(ptr noundef %0) unnamed_addr #4 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !11
  %6 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %12 = icmp eq ptr %9, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i64, ptr %9, align 8
  %15 = and i64 %14, 65536
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %13, %1
  %18 = phi i1 [ false, %1 ], [ %16, %13 ]
  %19 = zext i1 %18 to i8
  %20 = icmp eq ptr %11, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i64, ptr %11, align 8
  %23 = and i64 %22, 65536
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %85

25:                                               ; preds = %21, %17
  %26 = load i64, ptr %7, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 91
  br i1 %28, label %29, label %80

29:                                               ; preds = %25, %69
  %30 = phi ptr [ %71, %69 ], [ %7, %25 ]
  %31 = phi ptr [ %73, %69 ], [ %0, %25 ]
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 65535
  %34 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !26
  %36 = add i32 %35, -4
  %37 = icmp ult i32 %36, 7
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !6
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, ptr @input_location, ptr %39
  br label %43

43:                                               ; preds = %38, %29
  %44 = phi ptr [ @input_location, %29 ], [ %42, %38 ]
  %45 = load i32, ptr %44, align 4, !tbaa !6
  %46 = getelementptr inbounds %struct.tree_exp, ptr %30, i64 0, i32 3
  %47 = getelementptr inbounds %struct.tree_exp, ptr %30, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !6
  %49 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 0, i32 3
  store ptr %48, ptr %49, align 8, !tbaa !6
  %50 = load i64, ptr %30, align 8
  %51 = and i64 %50, 65535
  %52 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !26
  %54 = add i32 %53, -4
  %55 = icmp ult i32 %54, 7
  br i1 %55, label %56, label %62

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.tree_exp, ptr %30, i64 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !6
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 0, i32 1
  store i32 %58, ptr %61, align 8, !tbaa !6
  br label %62

62:                                               ; preds = %43, %60, %56
  %63 = tail call fastcc ptr @shortcut_cond_expr(ptr noundef nonnull %31) #20
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %62
  %66 = load i64, ptr %63, align 8
  %67 = and i64 %66, 65536
  %68 = icmp ne i64 %67, 0
  br label %69

69:                                               ; preds = %65, %62
  %70 = phi i1 [ false, %62 ], [ %68, %65 ]
  %71 = load ptr, ptr %46, align 8, !tbaa !6
  %72 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  %73 = tail call ptr @build3_stat(i32 noundef 56, ptr noundef %72, ptr noundef %71, ptr noundef %63, ptr noundef null) #21
  %74 = getelementptr inbounds %struct.tree_exp, ptr %73, i64 0, i32 1
  store i32 %45, ptr %74, align 8, !tbaa !6
  %75 = load i64, ptr %71, align 8
  %76 = and i64 %75, 65535
  %77 = icmp eq i64 %76, 91
  br i1 %77, label %29, label %78, !llvm.loop !144

78:                                               ; preds = %69
  %79 = zext i1 %70 to i8
  br label %80

80:                                               ; preds = %78, %25
  %81 = phi ptr [ %73, %78 ], [ %0, %25 ]
  %82 = phi i8 [ %79, %78 ], [ %19, %25 ]
  %83 = phi ptr [ %63, %78 ], [ %9, %25 ]
  %84 = phi ptr [ %71, %78 ], [ %7, %25 ]
  store ptr %81, ptr %2, align 8, !tbaa !11
  br label %85

85:                                               ; preds = %80, %21
  %86 = phi ptr [ %0, %21 ], [ %81, %80 ]
  %87 = phi i8 [ 1, %21 ], [ 0, %80 ]
  %88 = phi i8 [ %19, %21 ], [ %82, %80 ]
  %89 = phi ptr [ %9, %21 ], [ %83, %80 ]
  %90 = phi ptr [ %7, %21 ], [ %84, %80 ]
  %91 = icmp eq i8 %88, 0
  %92 = load i64, ptr %90, align 8
  %93 = and i64 %92, 65535
  %94 = icmp eq i64 %93, 92
  %95 = select i1 %91, i1 %94, i1 false
  br i1 %95, label %96, label %147

96:                                               ; preds = %85, %136
  %97 = phi ptr [ %138, %136 ], [ %90, %85 ]
  %98 = phi ptr [ %140, %136 ], [ %86, %85 ]
  %99 = load i64, ptr %98, align 8
  %100 = and i64 %99, 65535
  %101 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !26
  %103 = add i32 %102, -4
  %104 = icmp ult i32 %103, 7
  br i1 %104, label %105, label %110

105:                                              ; preds = %96
  %106 = getelementptr inbounds %struct.tree_exp, ptr %98, i64 0, i32 1
  %107 = load i32, ptr %106, align 8, !tbaa !6
  %108 = icmp eq i32 %107, 0
  %109 = select i1 %108, ptr @input_location, ptr %106
  br label %110

110:                                              ; preds = %105, %96
  %111 = phi ptr [ @input_location, %96 ], [ %109, %105 ]
  %112 = load i32, ptr %111, align 4, !tbaa !6
  %113 = getelementptr inbounds %struct.tree_exp, ptr %97, i64 0, i32 3
  %114 = getelementptr inbounds %struct.tree_exp, ptr %97, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !6
  %116 = getelementptr inbounds %struct.tree_exp, ptr %98, i64 0, i32 3
  store ptr %115, ptr %116, align 8, !tbaa !6
  %117 = load i64, ptr %97, align 8
  %118 = and i64 %117, 65535
  %119 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !26
  %121 = add i32 %120, -4
  %122 = icmp ult i32 %121, 7
  br i1 %122, label %123, label %129

123:                                              ; preds = %110
  %124 = getelementptr inbounds %struct.tree_exp, ptr %97, i64 0, i32 1
  %125 = load i32, ptr %124, align 8, !tbaa !6
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.tree_exp, ptr %98, i64 0, i32 1
  store i32 %125, ptr %128, align 8, !tbaa !6
  br label %129

129:                                              ; preds = %110, %127, %123
  %130 = tail call fastcc ptr @shortcut_cond_expr(ptr noundef nonnull %98) #20
  %131 = icmp eq ptr %130, null
  br i1 %131, label %136, label %132

132:                                              ; preds = %129
  %133 = load i64, ptr %130, align 8
  %134 = and i64 %133, 65536
  %135 = icmp ne i64 %134, 0
  br label %136

136:                                              ; preds = %132, %129
  %137 = phi i1 [ false, %129 ], [ %135, %132 ]
  %138 = load ptr, ptr %113, align 8, !tbaa !6
  %139 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  %140 = tail call ptr @build3_stat(i32 noundef 56, ptr noundef %139, ptr noundef %138, ptr noundef null, ptr noundef %130) #21
  store ptr %140, ptr %2, align 8, !tbaa !11
  %141 = getelementptr inbounds %struct.tree_exp, ptr %140, i64 0, i32 1
  store i32 %112, ptr %141, align 8, !tbaa !6
  %142 = load i64, ptr %138, align 8
  %143 = and i64 %142, 65535
  %144 = icmp eq i64 %143, 92
  br i1 %144, label %96, label %145, !llvm.loop !145

145:                                              ; preds = %136
  %146 = zext i1 %137 to i8
  br label %147

147:                                              ; preds = %85, %145
  %148 = phi ptr [ %140, %145 ], [ %86, %85 ]
  %149 = phi i64 [ %142, %145 ], [ %92, %85 ]
  %150 = phi ptr [ %130, %145 ], [ %11, %85 ]
  %151 = phi i8 [ %146, %145 ], [ %87, %85 ]
  %152 = phi ptr [ %138, %145 ], [ %90, %85 ]
  %153 = trunc i64 %149 to i32
  %154 = and i32 %153, 65535
  %155 = add nsw i32 %154, -91
  %156 = icmp ult i32 %155, 2
  br i1 %156, label %157, label %282

157:                                              ; preds = %147
  store ptr null, ptr %5, align 8, !tbaa !11
  store ptr null, ptr %4, align 8, !tbaa !11
  store ptr null, ptr %3, align 8, !tbaa !11
  %158 = icmp eq ptr %89, null
  br i1 %158, label %170, label %159

159:                                              ; preds = %157
  %160 = load i64, ptr %89, align 8
  %161 = and i64 %160, 65535
  %162 = icmp eq i64 %161, 134
  br i1 %162, label %163, label %170

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.tree_exp, ptr %89, i64 0, i32 3
  %165 = load ptr, ptr %164, align 8, !tbaa !6
  %166 = load i64, ptr %165, align 8
  %167 = and i64 %166, 65535
  %168 = icmp eq i64 %167, 30
  br i1 %168, label %169, label %170

169:                                              ; preds = %163
  store ptr %165, ptr %3, align 8, !tbaa !11
  br label %170

170:                                              ; preds = %169, %163, %159, %157
  %171 = phi i1 [ false, %169 ], [ true, %163 ], [ true, %159 ], [ true, %157 ]
  %172 = phi i8 [ 0, %169 ], [ %88, %163 ], [ %88, %159 ], [ %88, %157 ]
  %173 = phi ptr [ null, %169 ], [ %89, %163 ], [ %89, %159 ], [ null, %157 ]
  %174 = icmp eq ptr %150, null
  br i1 %174, label %186, label %175

175:                                              ; preds = %170
  %176 = load i64, ptr %150, align 8
  %177 = and i64 %176, 65535
  %178 = icmp eq i64 %177, 134
  br i1 %178, label %179, label %186

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.tree_exp, ptr %150, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !6
  %182 = load i64, ptr %181, align 8
  %183 = and i64 %182, 65535
  %184 = icmp eq i64 %183, 30
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  store ptr %181, ptr %4, align 8, !tbaa !11
  br label %186

186:                                              ; preds = %185, %179, %175, %170
  %187 = phi ptr [ %181, %185 ], [ null, %179 ], [ null, %175 ], [ null, %170 ]
  %188 = phi ptr [ null, %185 ], [ %150, %179 ], [ %150, %175 ], [ null, %170 ]
  %189 = phi i8 [ 0, %185 ], [ %151, %179 ], [ %151, %175 ], [ %151, %170 ]
  %190 = select i1 %171, ptr null, ptr %3
  %191 = icmp ne ptr %187, null
  %192 = icmp ne i8 %189, 0
  %193 = select i1 %191, i1 true, i1 %192
  %194 = select i1 %193, ptr %4, ptr null
  %195 = icmp ne i8 %172, 0
  %196 = select i1 %195, i1 true, i1 %192
  br i1 %196, label %213, label %197

197:                                              ; preds = %186
  %198 = load i64, ptr %148, align 8
  %199 = and i64 %198, 65535
  %200 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %199
  %201 = load i32, ptr %200, align 4, !tbaa !26
  %202 = add i32 %201, -4
  %203 = icmp ult i32 %202, 7
  br i1 %203, label %204, label %208

204:                                              ; preds = %197
  %205 = getelementptr inbounds %struct.tree_exp, ptr %148, i64 0, i32 1
  %206 = load i32, ptr %205, align 8, !tbaa !6
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %197, %204
  %209 = load i32, ptr @input_location, align 4, !tbaa !26
  br label %210

210:                                              ; preds = %204, %208
  %211 = phi i32 [ %209, %208 ], [ %206, %204 ]
  %212 = call fastcc ptr @shortcut_cond_r(ptr noundef nonnull %152, ptr noundef %190, ptr noundef %194, i32 noundef %211) #20
  br label %282

213:                                              ; preds = %186
  %214 = or i8 %189, %172
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %228, label %216

216:                                              ; preds = %213
  %217 = select i1 %192, ptr %188, ptr %173
  %218 = tail call ptr @expr_last(ptr noundef %217) #21
  %219 = icmp eq ptr %218, null
  br i1 %219, label %228, label %220

220:                                              ; preds = %216
  %221 = load i64, ptr %218, align 8
  %222 = and i64 %221, 65535
  %223 = icmp eq i64 %222, 133
  br i1 %223, label %224, label %228

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.tree_exp, ptr %218, i64 0, i32 3
  %226 = load ptr, ptr %225, align 8, !tbaa !6
  store ptr %226, ptr %5, align 8, !tbaa !11
  %227 = icmp eq ptr %226, null
  br label %228

228:                                              ; preds = %213, %224, %220, %216
  %229 = phi i1 [ %227, %224 ], [ true, %220 ], [ true, %216 ], [ true, %213 ]
  %230 = select i1 %193, ptr %4, ptr %5
  %231 = icmp eq ptr %187, null
  %232 = tail call zeroext i8 @block_may_fallthru(ptr noundef %173) #21
  %233 = load i64, ptr %148, align 8
  %234 = and i64 %233, 65535
  %235 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %234
  %236 = load i32, ptr %235, align 4, !tbaa !26
  %237 = add i32 %236, -4
  %238 = icmp ult i32 %237, 7
  br i1 %238, label %239, label %243

239:                                              ; preds = %228
  %240 = getelementptr inbounds %struct.tree_exp, ptr %148, i64 0, i32 1
  %241 = load i32, ptr %240, align 8, !tbaa !6
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %228, %239
  %244 = load i32, ptr @input_location, align 4, !tbaa !26
  br label %245

245:                                              ; preds = %239, %243
  %246 = phi i32 [ %244, %243 ], [ %241, %239 ]
  %247 = call fastcc ptr @shortcut_cond_r(ptr noundef nonnull %152, ptr noundef %190, ptr noundef nonnull %230, i32 noundef %246) #20
  store ptr null, ptr %2, align 8, !tbaa !11
  call void @append_to_statement_list(ptr noundef %247, ptr noundef nonnull %2) #20
  call void @append_to_statement_list(ptr noundef %173, ptr noundef nonnull %2) #20
  br i1 %192, label %248, label %273

248:                                              ; preds = %245
  %249 = icmp eq i8 %232, 0
  br i1 %249, label %267, label %250

250:                                              ; preds = %248
  %251 = load ptr, ptr %2, align 8, !tbaa !11
  %252 = call ptr @expr_last(ptr noundef %251) #21
  %253 = call ptr @build_and_jump(ptr noundef nonnull %5) #20
  %254 = load i64, ptr %252, align 8
  %255 = and i64 %254, 65535
  %256 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %255
  %257 = load i32, ptr %256, align 4, !tbaa !26
  %258 = add i32 %257, -4
  %259 = icmp ult i32 %258, 7
  br i1 %259, label %260, label %266

260:                                              ; preds = %250
  %261 = getelementptr inbounds %struct.tree_exp, ptr %252, i64 0, i32 1
  %262 = load i32, ptr %261, align 8, !tbaa !6
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %266, label %264

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct.tree_exp, ptr %253, i64 0, i32 1
  store i32 %262, ptr %265, align 8, !tbaa !6
  br label %266

266:                                              ; preds = %250, %264, %260
  call void @append_to_statement_list(ptr noundef %253, ptr noundef nonnull %2) #20
  br label %267

267:                                              ; preds = %266, %248
  br i1 %231, label %268, label %272

268:                                              ; preds = %267
  %269 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  %270 = load ptr, ptr %4, align 8, !tbaa !11
  %271 = call ptr @build1_stat(i32 noundef 133, ptr noundef %269, ptr noundef %270) #21
  call void @append_to_statement_list(ptr noundef %271, ptr noundef nonnull %2) #20
  br label %272

272:                                              ; preds = %268, %267
  call void @append_to_statement_list(ptr noundef %188, ptr noundef nonnull %2) #20
  br label %273

273:                                              ; preds = %272, %245
  %274 = load ptr, ptr %5, align 8
  %275 = icmp ne ptr %274, null
  %276 = select i1 %229, i1 %275, i1 false
  br i1 %276, label %277, label %280

277:                                              ; preds = %273
  %278 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  %279 = call ptr @build1_stat(i32 noundef 133, ptr noundef %278, ptr noundef nonnull %274) #21
  call void @append_to_statement_list(ptr noundef %279, ptr noundef nonnull %2) #20
  br label %280

280:                                              ; preds = %277, %273
  %281 = load ptr, ptr %2, align 8, !tbaa !11
  br label %282

282:                                              ; preds = %147, %280, %210
  %283 = phi ptr [ %281, %280 ], [ %212, %210 ], [ %148, %147 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret ptr %283
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gimple_push_condition() unnamed_addr #17 {
  %1 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %2 = getelementptr inbounds %struct.gimplify_ctx, ptr %1, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !88
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !88
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_pop_condition(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.gimplify_ctx, ptr %2, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !88
  %5 = add nsw i32 %4, -1
  store i32 %5, ptr %3, align 8, !tbaa !88
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 290, ptr noundef nonnull @.str.1) #21
  br label %15

8:                                                ; preds = %1
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.gimplify_ctx, ptr %2, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !89
  tail call fastcc void @gimplify_seq_add_seq(ptr noundef %0, ptr noundef %12) #20
  %13 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %14 = getelementptr inbounds %struct.gimplify_ctx, ptr %13, i64 0, i32 3
  store ptr null, ptr %14, align 8, !tbaa !89
  br label %15

15:                                               ; preds = %7, %10, %8
  ret void
}

; Function Attrs: optsize
declare void @gimple_cond_get_ops_from_tree(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @gimple_seq_may_fallthru(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_set_do_not_emit_location(ptr nocapture noundef %0) unnamed_addr #15 {
  tail call fastcc void @gimple_set_plf(ptr noundef %0) #20
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @tree_could_trap_p(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @tree_operand_length(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !26
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.tree_int_cst, ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !6
  %12 = trunc i64 %11 to i32
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %3
  %15 = load i8, ptr %14, align 1, !tbaa !6
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i32 [ %12, %7 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @shortcut_cond_r(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #4 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  store ptr null, ptr %5, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  store ptr null, ptr %6, align 8, !tbaa !11
  %7 = load i64, ptr %0, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %80 [
    i16 91, label %9
    i16 92, label %31
    i16 56, label %53
  ]

9:                                                ; preds = %4
  %10 = icmp eq ptr %2, null
  %11 = select i1 %10, ptr %5, ptr %2
  %12 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = call fastcc ptr @shortcut_cond_r(ptr noundef %13, ptr noundef null, ptr noundef nonnull %11, i32 noundef %3) #20
  call void @append_to_statement_list(ptr noundef %14, ptr noundef nonnull %6) #20
  %15 = load i64, ptr %0, align 8
  %16 = and i64 %15, 65535
  %17 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !26
  %19 = add i32 %18, -4
  %20 = icmp ult i32 %19, 7
  br i1 %20, label %21, label %26

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !6
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 %3, i32 %23
  br label %26

26:                                               ; preds = %21, %9
  %27 = phi i32 [ %3, %9 ], [ %25, %21 ]
  %28 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !6
  %30 = call fastcc ptr @shortcut_cond_r(ptr noundef %29, ptr noundef %1, ptr noundef nonnull %11, i32 noundef %27) #20
  call void @append_to_statement_list(ptr noundef %30, ptr noundef nonnull %6) #20
  br label %86

31:                                               ; preds = %4
  %32 = icmp eq ptr %1, null
  %33 = select i1 %32, ptr %5, ptr %1
  %34 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  %36 = call fastcc ptr @shortcut_cond_r(ptr noundef %35, ptr noundef nonnull %33, ptr noundef null, i32 noundef %3) #20
  call void @append_to_statement_list(ptr noundef %36, ptr noundef nonnull %6) #20
  %37 = load i64, ptr %0, align 8
  %38 = and i64 %37, 65535
  %39 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !26
  %41 = add i32 %40, -4
  %42 = icmp ult i32 %41, 7
  br i1 %42, label %43, label %48

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !6
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 %3, i32 %45
  br label %48

48:                                               ; preds = %43, %31
  %49 = phi i32 [ %3, %31 ], [ %47, %43 ]
  %50 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !6
  %52 = call fastcc ptr @shortcut_cond_r(ptr noundef %51, ptr noundef nonnull %33, ptr noundef %2, i32 noundef %49) #20
  call void @append_to_statement_list(ptr noundef %52, ptr noundef nonnull %6) #20
  br label %86

53:                                               ; preds = %4
  %54 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 56), align 4, !tbaa !26
  %55 = add i32 %54, -4
  %56 = icmp ult i32 %55, 7
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %59 = load i32, ptr %58, align 8, !tbaa !6
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %57
  %62 = and i64 %7, 65535
  %63 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !26
  %65 = add i32 %64, -4
  %66 = icmp ult i32 %65, 7
  %67 = select i1 %66, i32 %59, i32 0
  br label %68

68:                                               ; preds = %61, %57, %53
  %69 = phi i32 [ %3, %53 ], [ %3, %57 ], [ %67, %61 ]
  %70 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  %71 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !6
  %73 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !6
  %75 = tail call fastcc ptr @shortcut_cond_r(ptr noundef %74, ptr noundef %1, ptr noundef %2, i32 noundef %3) #20
  %76 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !6
  %78 = tail call fastcc ptr @shortcut_cond_r(ptr noundef %77, ptr noundef %1, ptr noundef %2, i32 noundef %69) #20
  %79 = tail call ptr @build3_stat(i32 noundef 56, ptr noundef %70, ptr noundef %72, ptr noundef %75, ptr noundef %78) #21
  store ptr %79, ptr %6, align 8, !tbaa !11
  br label %86

80:                                               ; preds = %4
  %81 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  %82 = tail call ptr @build_and_jump(ptr noundef %1) #20
  %83 = tail call ptr @build_and_jump(ptr noundef %2) #20
  %84 = tail call ptr @build3_stat(i32 noundef 56, ptr noundef %81, ptr noundef nonnull %0, ptr noundef %82, ptr noundef %83) #21
  store ptr %84, ptr %6, align 8, !tbaa !11
  %85 = getelementptr inbounds %struct.tree_exp, ptr %84, i64 0, i32 1
  store i32 %3, ptr %85, align 8, !tbaa !6
  br label %86

86:                                               ; preds = %48, %80, %68, %26
  %87 = load ptr, ptr %5, align 8, !tbaa !11
  %88 = icmp eq ptr %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  %91 = call ptr @build1_stat(i32 noundef 133, ptr noundef %90, ptr noundef nonnull %87) #21
  call void @append_to_statement_list(ptr noundef %91, ptr noundef nonnull %6) #20
  br label %92

92:                                               ; preds = %89, %86
  %93 = load ptr, ptr %6, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  ret ptr %93
}

; Function Attrs: optsize
declare ptr @expr_last(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @block_may_fallthru(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_set_plf(ptr nocapture noundef %0) unnamed_addr #15 {
  %2 = load i32, ptr %0, align 8
  %3 = or i32 %2, 2048
  store i32 %3, ptr %0, align 8
  ret void
}

; Function Attrs: optsize
declare ptr @fold_call_expr(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @build_empty_stmt(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @fold_builtin_next_arg(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @build_call_array_loc(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @tree_block(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gimplify_arg(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %6) #21
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr @is_gimple_lvalue, ptr @is_gimple_val
  %10 = select i1 %8, i32 3, i32 1
  tail call fastcc void @maybe_with_size_expr(ptr noundef nonnull %0) #20
  %11 = load ptr, ptr %0, align 8, !tbaa !11
  tail call void @protected_set_expr_location(ptr noundef %11, i32 noundef %2) #21
  %12 = tail call i32 @gimplify_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %9, i32 noundef %10) #20
  ret i32 %12
}

; Function Attrs: optsize
declare void @error_at(i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @call_expr_flags(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gimple_build_call_from_tree(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @maybe_with_size_expr(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = load i64, ptr %2, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 150
  %8 = load ptr, ptr @global_trees, align 16
  %9 = icmp eq ptr %4, %8
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %31, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  %16 = load i64, ptr %13, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 23
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  %20 = tail call ptr @unshare_expr(ptr noundef nonnull %13) #20
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i64, ptr %20, align 8
  %24 = and i64 %23, 131072
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = tail call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %20, ptr noundef nonnull %2) #21
  br label %28

28:                                               ; preds = %19, %22, %26
  %29 = phi ptr [ %27, %26 ], [ %20, %22 ], [ null, %19 ]
  %30 = tail call ptr @build2_stat(i32 noundef 150, ptr noundef nonnull %4, ptr noundef nonnull %2, ptr noundef %29) #21
  store ptr %30, ptr %0, align 8, !tbaa !11
  br label %31

31:                                               ; preds = %11, %15, %1, %28
  ret void
}

; Function Attrs: optsize
declare void @protected_set_expr_location(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @substitute_placeholder_in_expr(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimplify_modify_expr_rhs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) unnamed_addr #4 {
  %7 = alloca ptr, align 8
  br label %8

8:                                                ; preds = %32, %6
  %9 = load ptr, ptr %1, align 8, !tbaa !11
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %195 [
    i16 32, label %12
    i16 47, label %34
    i16 55, label %40
    i16 52, label %51
    i16 51, label %53
    i16 56, label %55
    i16 59, label %102
    i16 61, label %159
    i16 58, label %159
    i16 147, label %159
    i16 119, label %173
  ]

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = icmp ne ptr %14, null
  %16 = and i64 %10, 1572864
  %17 = icmp eq i64 %16, 1048576
  %18 = and i1 %17, %15
  br i1 %18, label %19, label %195

19:                                               ; preds = %12
  %20 = load ptr, ptr %2, align 8, !tbaa !11
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 524288
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %195

24:                                               ; preds = %19
  %25 = load i64, ptr %14, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 51
  br i1 %27, label %28, label %195

28:                                               ; preds = %24
  %29 = tail call ptr @unshare_expr(ptr noundef nonnull %14) #20
  store ptr %29, ptr %1, align 8, !tbaa !11
  %30 = tail call fastcc i32 @gimplify_init_constructor(ptr noundef %0, ptr noundef null, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 1) #20
  %31 = icmp eq i32 %30, -2
  br i1 %31, label %33, label %32

32:                                               ; preds = %28, %50, %39, %51
  br label %8, !llvm.loop !146

33:                                               ; preds = %28
  store ptr %9, ptr %1, align 8, !tbaa !11
  br label %195

34:                                               ; preds = %8
  %35 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !6
  %37 = tail call fastcc ptr @gimple_fold_indirect_ref_rhs(ptr noundef %36) #20
  %38 = icmp eq ptr %37, null
  br i1 %38, label %195, label %39

39:                                               ; preds = %34
  store ptr %37, ptr %1, align 8, !tbaa !11
  br label %32

40:                                               ; preds = %8
  %41 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !6
  %43 = icmp eq ptr %42, null
  br i1 %43, label %195, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !6
  %47 = load i64, ptr %46, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 19
  br i1 %49, label %195, label %50

50:                                               ; preds = %44
  store ptr %42, ptr %1, align 8, !tbaa !11
  br label %32

51:                                               ; preds = %8
  %52 = tail call fastcc i32 @gimplify_compound_expr(ptr noundef nonnull %1, ptr noundef %3, i8 noundef zeroext 1) #20, !range !61
  br label %32

53:                                               ; preds = %8
  %54 = tail call fastcc i32 @gimplify_init_constructor(ptr noundef %0, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext 0) #20
  br label %195

55:                                               ; preds = %8
  %56 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !6
  %58 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %57) #21
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %195

60:                                               ; preds = %55
  %61 = load ptr, ptr %0, align 8, !tbaa !11
  %62 = load i64, ptr %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = and i32 %63, 65535
  %65 = load ptr, ptr %1, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  %66 = load ptr, ptr %2, align 8, !tbaa !11
  store ptr %66, ptr %7, align 8, !tbaa !11
  %67 = call i32 @gimplify_expr(ptr noundef nonnull %7, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @is_gimple_lvalue, i32 noundef 2) #20
  %68 = icmp eq i32 %67, -2
  %69 = select i1 %68, i32 -2, i32 0
  %70 = getelementptr inbounds %struct.tree_exp, ptr %65, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !6
  %72 = getelementptr inbounds %struct.tree_common, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !6
  %74 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  %75 = icmp eq ptr %73, %74
  br i1 %75, label %80, label %76

76:                                               ; preds = %60
  %77 = load ptr, ptr %7, align 8, !tbaa !11
  %78 = call ptr @build2_stat(i32 noundef %64, ptr noundef %74, ptr noundef %77, ptr noundef nonnull %71) #21
  store ptr %78, ptr %70, align 8, !tbaa !6
  %79 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  br label %80

80:                                               ; preds = %76, %60
  %81 = phi ptr [ %79, %76 ], [ %73, %60 ]
  %82 = getelementptr inbounds %struct.tree_exp, ptr %65, i64 1, i32 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !6
  %84 = getelementptr inbounds %struct.tree_common, ptr %83, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !6
  %86 = icmp eq ptr %85, %81
  br i1 %86, label %93, label %87

87:                                               ; preds = %80
  %88 = load ptr, ptr %7, align 8, !tbaa !11
  %89 = call ptr @unshare_expr(ptr noundef %88) #20
  %90 = load ptr, ptr %82, align 8, !tbaa !6
  %91 = call ptr @build2_stat(i32 noundef %64, ptr noundef %81, ptr noundef %89, ptr noundef %90) #21
  store ptr %91, ptr %82, align 8, !tbaa !6
  %92 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  br label %93

93:                                               ; preds = %87, %80
  %94 = phi ptr [ %92, %87 ], [ %81, %80 ]
  %95 = getelementptr inbounds %struct.tree_common, ptr %65, i64 0, i32 2
  store ptr %94, ptr %95, align 8, !tbaa !6
  call void @recalculate_side_effects(ptr noundef nonnull %65) #21
  %96 = icmp eq i8 %5, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %93
  call void @gimplify_and_add(ptr noundef nonnull %65, ptr noundef %3) #20
  %98 = load ptr, ptr %7, align 8, !tbaa !11
  %99 = call ptr @unshare_expr(ptr noundef %98) #20
  br label %100

100:                                              ; preds = %93, %97
  %101 = phi ptr [ %99, %97 ], [ %65, %93 ]
  store ptr %101, ptr %0, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  br label %195

102:                                              ; preds = %8
  %103 = and i64 %10, 268435456
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %195

105:                                              ; preds = %102
  %106 = tail call i32 @aggregate_value_p(ptr noundef nonnull %9, ptr noundef nonnull %9) #21
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %195, label %108

108:                                              ; preds = %105
  %109 = load ptr, ptr %2, align 8, !tbaa !11
  %110 = tail call ptr @rhs_predicate_for(ptr noundef %109) #20
  %111 = load ptr, ptr %1, align 8, !tbaa !11
  %112 = tail call zeroext i8 %110(ptr noundef %111) #21, !callees !147
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %195, label %114

114:                                              ; preds = %108
  %115 = load ptr, ptr %2, align 8, !tbaa !11
  %116 = load i64, ptr %115, align 8
  %117 = and i64 %116, 65535
  %118 = icmp eq i64 %117, 36
  br i1 %118, label %119, label %128

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.tree_decl_minimal, ptr %115, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !6
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = tail call zeroext i8 @needs_to_live_in_memory(ptr noundef nonnull %115) #21
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %154

126:                                              ; preds = %123
  %127 = load ptr, ptr %2, align 8, !tbaa !11
  br label %128

128:                                              ; preds = %126, %119, %114
  %129 = phi ptr [ %127, %126 ], [ %115, %119 ], [ %115, %114 ]
  %130 = getelementptr inbounds %struct.tree_common, ptr %129, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !6
  %132 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %131) #21
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %195

134:                                              ; preds = %128
  %135 = load ptr, ptr %2, align 8, !tbaa !11
  %136 = load i64, ptr %135, align 8
  %137 = and i64 %136, 65535
  %138 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !26
  %140 = icmp eq i32 %139, 3
  br i1 %140, label %141, label %146

141:                                              ; preds = %134
  %142 = getelementptr inbounds %struct.tree_decl_common, ptr %135, i64 0, i32 2
  %143 = load i64, ptr %142, align 8
  %144 = and i64 %143, 16777216
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %195

146:                                              ; preds = %141, %134
  %147 = load ptr, ptr %0, align 8, !tbaa !11
  %148 = load i64, ptr %147, align 8
  %149 = and i64 %148, 65535
  %150 = icmp eq i64 %149, 54
  br i1 %150, label %154, label %151

151:                                              ; preds = %146
  %152 = tail call zeroext i8 @is_gimple_non_addressable(ptr noundef nonnull %135) #21
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %195, label %154

154:                                              ; preds = %123, %146, %151
  %155 = load ptr, ptr %1, align 8, !tbaa !11
  %156 = load i64, ptr %155, align 8
  %157 = or i64 %156, 268435456
  store i64 %157, ptr %155, align 8
  %158 = load ptr, ptr %2, align 8, !tbaa !11
  tail call void @mark_addressable(ptr noundef %158) #20
  br label %195

159:                                              ; preds = %8, %8, %8
  %160 = tail call i32 @gimplify_expr(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @is_gimple_min_lval, i32 noundef 2) #20
  %161 = load ptr, ptr %0, align 8, !tbaa !11
  %162 = tail call ptr @voidify_wrapper_expr(ptr noundef nonnull %9, ptr noundef %161) #20
  %163 = load ptr, ptr %0, align 8, !tbaa !11
  %164 = icmp eq ptr %162, %163
  br i1 %164, label %166, label %165

165:                                              ; preds = %159
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4301, ptr noundef nonnull @.str.1) #21
  br label %166

166:                                              ; preds = %159, %165
  %167 = icmp eq i8 %5, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %166
  tail call void @gimplify_and_add(ptr noundef nonnull %9, ptr noundef %3) #20
  %169 = load ptr, ptr %2, align 8, !tbaa !11
  %170 = tail call ptr @unshare_expr(ptr noundef %169) #20
  br label %171

171:                                              ; preds = %166, %168
  %172 = phi ptr [ %170, %168 ], [ %9, %166 ]
  store ptr %172, ptr %0, align 8, !tbaa !11
  br label %195

173:                                              ; preds = %8
  %174 = load ptr, ptr %0, align 8, !tbaa !11
  %175 = getelementptr inbounds %struct.tree_exp, ptr %174, i64 1
  %176 = load ptr, ptr %175, align 8, !tbaa !6
  %177 = load i64, ptr %176, align 8
  %178 = and i64 %177, 262144
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %195

180:                                              ; preds = %173
  %181 = getelementptr inbounds %struct.tree_exp, ptr %176, i64 0, i32 3
  %182 = load ptr, ptr %181, align 8, !tbaa !6
  %183 = getelementptr inbounds %struct.tree_exp, ptr %182, i64 0, i32 3
  %184 = load ptr, ptr %183, align 8, !tbaa !6
  %185 = getelementptr inbounds %struct.tree_decl_common, ptr %184, i64 0, i32 5
  %186 = load ptr, ptr %185, align 8, !tbaa !6
  %187 = load i64, ptr %184, align 8
  %188 = and i64 %187, 262144
  %189 = icmp eq i64 %188, 0
  %190 = icmp ne ptr %186, null
  %191 = select i1 %189, i1 %190, i1 false
  br i1 %191, label %192, label %195

192:                                              ; preds = %180
  %193 = tail call ptr @copy_node_stat(ptr noundef nonnull %174) #21
  store ptr %193, ptr %0, align 8, !tbaa !11
  %194 = getelementptr inbounds %struct.tree_exp, ptr %193, i64 1
  store ptr %186, ptr %194, align 8, !tbaa !6
  br label %195

195:                                              ; preds = %12, %19, %24, %8, %40, %44, %34, %33, %173, %180, %102, %105, %108, %141, %128, %154, %151, %55, %192, %171, %100, %53
  %196 = phi i32 [ 0, %171 ], [ %69, %100 ], [ %54, %53 ], [ 0, %192 ], [ -1, %55 ], [ -1, %151 ], [ -1, %154 ], [ -1, %128 ], [ -1, %141 ], [ -1, %108 ], [ -1, %105 ], [ -1, %102 ], [ -1, %180 ], [ -1, %173 ], [ -1, %33 ], [ -1, %34 ], [ -1, %44 ], [ -1, %40 ], [ -1, %8 ], [ -1, %24 ], [ -1, %19 ], [ -1, %12 ]
  ret i32 %196
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @zero_sized_type(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -15
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = tail call i32 @integer_zerop(ptr noundef nonnull %9) #21
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1, %11, %7
  br label %15

15:                                               ; preds = %11, %14
  %16 = phi i8 [ 0, %14 ], [ 1, %11 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_modify_expr_to_memset(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %6 = load ptr, ptr %0, align 8, !tbaa !11
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !26
  %11 = add i32 %10, -4
  %12 = icmp ult i32 %11, 7
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !6
  br label %16

16:                                               ; preds = %4, %13
  %17 = phi i32 [ %15, %13 ], [ 0, %4 ]
  %18 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 150
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.tree_exp, ptr %19, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = load i64, ptr %25, align 8
  br label %27

27:                                               ; preds = %23, %16
  %28 = phi i64 [ %26, %23 ], [ %20, %16 ]
  %29 = phi ptr [ %25, %23 ], [ %19, %16 ]
  %30 = and i64 %28, 65535
  %31 = icmp eq i64 %30, 51
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.tree_constructor, ptr %29, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  %35 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %34) #20
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32, %27
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3168, ptr noundef nonnull @.str.1) #21
  %38 = load ptr, ptr %0, align 8, !tbaa !11
  br label %39

39:                                               ; preds = %32, %37
  %40 = phi ptr [ %6, %32 ], [ %38, %37 ]
  %41 = getelementptr inbounds %struct.tree_exp, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !6
  %43 = tail call ptr @build_fold_addr_expr_loc(i32 noundef %17, ptr noundef %42) #21
  store ptr %43, ptr %5, align 8, !tbaa !11
  %44 = call fastcc i32 @gimplify_arg(ptr noundef nonnull %5, ptr noundef %3, i32 noundef %17) #20
  %45 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 333), align 8, !tbaa !11
  %46 = load ptr, ptr %5, align 8, !tbaa !11
  %47 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !11
  %48 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %45, i32 noundef 3, ptr noundef %46, ptr noundef %47, ptr noundef %1) #21
  %49 = icmp eq i8 %2, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %39
  %51 = load ptr, ptr %5, align 8, !tbaa !11
  %52 = getelementptr inbounds %struct.tree_common, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !6
  %54 = call ptr @create_tmp_var(ptr noundef %53, ptr noundef null) #20
  call fastcc void @gimple_call_set_lhs(ptr noundef %48, ptr noundef %54) #20
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %3, ptr noundef %48) #20
  %55 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !6
  %57 = call ptr @build1_stat(i32 noundef 47, ptr noundef %56, ptr noundef %54) #21
  br label %59

58:                                               ; preds = %39
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %3, ptr noundef %48) #20
  br label %59

59:                                               ; preds = %58, %50
  %60 = phi ptr [ null, %58 ], [ %57, %50 ]
  store ptr %60, ptr %0, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_modify_expr_to_memcpy(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  %8 = load ptr, ptr %0, align 8, !tbaa !11
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !26
  %13 = add i32 %12, -4
  %14 = icmp ult i32 %13, 7
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !6
  br label %18

18:                                               ; preds = %4, %15
  %19 = phi i32 [ %17, %15 ], [ 0, %4 ]
  %20 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  store ptr %23, ptr %6, align 8, !tbaa !11
  call fastcc void @prepare_gimple_addressable(ptr noundef nonnull %6, ptr noundef %3) #20
  %24 = load ptr, ptr %6, align 8, !tbaa !11
  tail call void @mark_addressable(ptr noundef %24) #20
  %25 = tail call ptr @build_fold_addr_expr_loc(i32 noundef %19, ptr noundef %24) #21
  store ptr %25, ptr %7, align 8, !tbaa !11
  %26 = call fastcc i32 @gimplify_arg(ptr noundef nonnull %7, ptr noundef %3, i32 noundef %19) #20
  call void @mark_addressable(ptr noundef %21) #20
  %27 = call ptr @build_fold_addr_expr_loc(i32 noundef %19, ptr noundef %21) #21
  store ptr %27, ptr %5, align 8, !tbaa !11
  %28 = call fastcc i32 @gimplify_arg(ptr noundef nonnull %5, ptr noundef %3, i32 noundef %19) #20
  %29 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 330), align 16, !tbaa !11
  %30 = load ptr, ptr %5, align 8, !tbaa !11
  %31 = load ptr, ptr %7, align 8, !tbaa !11
  %32 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %29, i32 noundef 3, ptr noundef %30, ptr noundef %31, ptr noundef %1) #21
  %33 = icmp eq i8 %2, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %18
  %35 = load ptr, ptr %5, align 8, !tbaa !11
  %36 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !6
  %38 = call ptr @create_tmp_var(ptr noundef %37, ptr noundef null) #20
  call fastcc void @gimple_call_set_lhs(ptr noundef %32, ptr noundef %38) #20
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %3, ptr noundef %32) #20
  %39 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  %41 = call ptr @build1_stat(i32 noundef 47, ptr noundef %40, ptr noundef %38) #21
  br label %43

42:                                               ; preds = %18
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %3, ptr noundef %32) #20
  br label %43

43:                                               ; preds = %42, %34
  %44 = phi ptr [ null, %42 ], [ %41, %34 ]
  store ptr %44, ptr %0, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_modify_expr_complex_part(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #4 {
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = load i64, ptr %6, align 8
  %10 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = and i64 %9, 65535
  %13 = icmp eq i64 %12, 43
  %14 = select i1 %13, i32 44, i32 43
  %15 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = tail call ptr @build1_stat(i32 noundef %14, ptr noundef %16, ptr noundef %11) #21
  %18 = tail call ptr @get_formal_tmp_var(ptr noundef %17, ptr noundef %1) #20
  %19 = select i1 %13, ptr %8, ptr %18
  %20 = select i1 %13, ptr %18, ptr %8
  %21 = load i64, ptr %19, align 8
  %22 = and i64 %21, 131072
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %3
  %25 = load i64, ptr %20, align 8
  %26 = and i64 %25, 131072
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = tail call ptr @build_complex(ptr noundef %30, ptr noundef nonnull %19, ptr noundef nonnull %20) #21
  br label %36

32:                                               ; preds = %24, %3
  %33 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  %35 = tail call ptr @build2_stat(i32 noundef 123, ptr noundef %34, ptr noundef nonnull %19, ptr noundef %20) #21
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi ptr [ %31, %28 ], [ %35, %32 ]
  %38 = tail call ptr @gimple_build_assign_stat(ptr noundef nonnull %11, ptr noundef %37) #21
  tail call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %38) #20
  %39 = icmp eq i8 %2, 0
  %40 = select i1 %39, ptr null, ptr %8
  store ptr %40, ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: optsize
declare void @decl_debug_expr_insert(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_call_noreturn_p(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call i32 @gimple_call_flags(ptr noundef %0) #21
  %3 = trunc i32 %2 to i8
  %4 = lshr i8 %3, 3
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #20
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gimplify_init_constructor(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #4 {
  %6 = alloca %struct.gimplify_init_ctor_preeval_data, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca ptr, align 8
  %11 = load ptr, ptr %0, align 8, !tbaa !11
  %12 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 51
  br i1 %16, label %19, label %17

17:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3616, ptr noundef nonnull @.str.1) #21
  %18 = load ptr, ptr %0, align 8, !tbaa !11
  br label %19

19:                                               ; preds = %5, %17
  %20 = phi ptr [ %11, %5 ], [ %18, %17 ]
  %21 = icmp ne i8 %4, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.tree_exp, ptr %20, i64 0, i32 3
  %24 = tail call i32 @gimplify_expr(ptr noundef nonnull %23, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_lvalue, i32 noundef 2) #20
  %25 = icmp eq i32 %24, -2
  br i1 %25, label %349, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %0, align 8, !tbaa !11
  br label %28

28:                                               ; preds = %26, %19
  %29 = phi ptr [ %27, %26 ], [ %20, %19 ]
  %30 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !6
  %32 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = tail call fastcc ptr @optimize_compound_literals_in_ctor(ptr noundef %33) #20
  %35 = load ptr, ptr %0, align 8, !tbaa !11
  %36 = getelementptr inbounds %struct.tree_exp, ptr %35, i64 1
  store ptr %34, ptr %36, align 8, !tbaa !6
  %37 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !6
  %39 = getelementptr inbounds %struct.tree_constructor, ptr %34, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  %41 = load i64, ptr %38, align 8
  %42 = trunc i64 %41 to i16
  switch i16 %42, label %332 [
    i16 16, label %43
    i16 17, label %43
    i16 18, label %43
    i16 15, label %43
    i16 13, label %224
    i16 14, label %270
  ]

43:                                               ; preds = %28, %28, %28, %28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #22
  %44 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %40) #20
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br i1 %21, label %218, label %222

47:                                               ; preds = %43
  %48 = call zeroext i8 @categorize_ctor_elements(ptr noundef nonnull %34, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %9) #21
  %49 = icmp ne i8 %48, 0
  %50 = load i64, ptr %8, align 8
  %51 = icmp sgt i64 %50, 1
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %53, label %74

53:                                               ; preds = %47
  %54 = load i64, ptr %31, align 8
  %55 = and i64 %54, 1114111
  %56 = icmp eq i64 %55, 1048608
  br i1 %56, label %57, label %74

57:                                               ; preds = %53
  %58 = load i32, ptr @flag_merge_constants, align 4, !tbaa !26
  %59 = icmp sgt i32 %58, 1
  %60 = and i64 %54, 262144
  %61 = icmp eq i64 %60, 0
  %62 = or i1 %61, %59
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  br i1 %21, label %218, label %64

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.tree_decl_common, ptr %31, i64 0, i32 5
  store ptr %34, ptr %65, align 8, !tbaa !6
  %66 = or i64 %54, 67108864
  store i64 %66, ptr %31, align 8
  %67 = getelementptr inbounds %struct.tree_decl_minimal, ptr %31, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !6
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = call ptr @create_tmp_var_name(ptr noundef nonnull @.str.9) #20
  store ptr %71, ptr %67, align 8, !tbaa !6
  br label %72

72:                                               ; preds = %70, %64
  %73 = call ptr @walk_tree_1(ptr noundef nonnull %65, ptr noundef nonnull @force_labels_r, ptr noundef null, ptr noundef null, ptr noundef null) #21
  call void @lhd_set_decl_assembler_name(ptr noundef nonnull %31) #21
  br label %220

74:                                               ; preds = %57, %53, %47
  %75 = call i64 @count_type_elements(ptr noundef nonnull %38, i8 noundef zeroext 1) #21
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74
  %78 = call i64 @int_size_in_bytes(ptr noundef nonnull %38) #21
  %79 = icmp sgt i64 %78, -1
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i8 1, ptr %9, align 1, !tbaa !6
  br label %162

81:                                               ; preds = %77, %74
  %82 = load i64, ptr %8, align 8, !tbaa !24
  %83 = sub nsw i64 %75, %82
  %84 = load ptr, ptr @cfun, align 8, !tbaa !11
  %85 = call zeroext i8 @optimize_function_for_speed_p(ptr noundef %84) #21
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %81
  %88 = load ptr, ptr @ix86_cost, align 8, !tbaa !11
  %89 = getelementptr inbounds %struct.processor_costs, ptr %88, i64 0, i32 10
  %90 = load i32, ptr %89, align 4, !tbaa !148
  %91 = call i32 @llvm.smin.i32(i32 %90, i32 6)
  br label %92

92:                                               ; preds = %87, %81
  %93 = phi i32 [ 2, %81 ], [ %91, %87 ]
  %94 = sext i32 %93 to i64
  %95 = icmp sgt i64 %83, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load i64, ptr %8, align 8, !tbaa !24
  %98 = sdiv i64 %75, 4
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  store i8 1, ptr %9, align 1, !tbaa !6
  br label %162

101:                                              ; preds = %96, %92
  %102 = load i64, ptr %7, align 8, !tbaa !24
  %103 = icmp slt i64 %102, %75
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store i8 1, ptr %9, align 1, !tbaa !6
  br label %162

105:                                              ; preds = %101
  %106 = load i8, ptr %9, align 1
  %107 = icmp ne i8 %106, 0
  %108 = icmp eq i8 %48, 0
  %109 = select i1 %108, i1 true, i1 %107
  %110 = load i64, ptr %8, align 8
  %111 = icmp eq i64 %110, 0
  %112 = select i1 %109, i1 true, i1 %111
  br i1 %112, label %162, label %113

113:                                              ; preds = %105
  %114 = load i64, ptr %38, align 8
  %115 = and i64 %114, 262144
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %162

117:                                              ; preds = %113
  %118 = call i64 @int_size_in_bytes(ptr noundef nonnull %38) #21
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !6
  %123 = call i64 @int_size_in_bytes(ptr noundef %122) #21
  %124 = icmp sgt i64 %123, -1
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load ptr, ptr %121, align 8, !tbaa !6
  store ptr %126, ptr %37, align 8, !tbaa !6
  br label %127

127:                                              ; preds = %120, %125, %117
  %128 = phi i64 [ %123, %125 ], [ %123, %120 ], [ %118, %117 ]
  %129 = phi ptr [ %126, %125 ], [ %38, %120 ], [ %38, %117 ]
  %130 = load i64, ptr %31, align 8
  %131 = and i64 %130, 65535
  %132 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %131
  %133 = load i32, ptr %132, align 4, !tbaa !26
  %134 = icmp eq i32 %133, 3
  %135 = getelementptr inbounds %struct.tree_decl_common, ptr %31, i64 0, i32 3
  %136 = getelementptr inbounds %struct.tree_type, ptr %129, i64 0, i32 7
  %137 = select i1 %134, ptr %135, ptr %136
  %138 = load i32, ptr %137, align 8, !tbaa !6
  %139 = icmp sgt i64 %128, 0
  %140 = load i64, ptr %8, align 8
  %141 = icmp sgt i64 %140, 1
  %142 = select i1 %139, i1 %141, i1 false
  br i1 %142, label %143, label %162

143:                                              ; preds = %127
  %144 = call i32 @can_move_by_pieces(i64 noundef %128, i32 noundef %138) #21
  %145 = icmp ne i32 %144, 0
  %146 = or i1 %21, %145
  br i1 %146, label %161, label %147

147:                                              ; preds = %143
  %148 = call ptr @create_tmp_var_raw(ptr noundef %129, ptr noundef nonnull @.str.9) #20
  call void @gimple_add_tmp_var(ptr noundef %148) #20
  %149 = load i64, ptr %148, align 8
  %150 = or i64 %149, 68157440
  store i64 %150, ptr %148, align 8
  %151 = getelementptr inbounds %struct.tree_decl_common, ptr %148, i64 0, i32 5
  store ptr %34, ptr %151, align 8, !tbaa !6
  %152 = getelementptr inbounds %struct.tree_decl_common, ptr %148, i64 0, i32 3
  %153 = load i32, ptr %152, align 8, !tbaa !6
  %154 = icmp ugt i32 %138, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %147
  store i32 %138, ptr %152, align 8, !tbaa !6
  %156 = or i64 %149, 4398114668544
  store i64 %156, ptr %148, align 8
  br label %157

157:                                              ; preds = %147, %155
  %158 = call ptr @walk_tree_1(ptr noundef nonnull %151, ptr noundef nonnull @force_labels_r, ptr noundef null, ptr noundef null, ptr noundef null) #21
  %159 = load ptr, ptr %0, align 8, !tbaa !11
  %160 = getelementptr inbounds %struct.tree_exp, ptr %159, i64 1
  store ptr %148, ptr %160, align 8, !tbaa !6
  br label %218

161:                                              ; preds = %143
  br i1 %145, label %162, label %218

162:                                              ; preds = %80, %104, %100, %127, %161, %113, %105
  %163 = phi ptr [ %38, %105 ], [ %38, %113 ], [ %129, %161 ], [ %129, %127 ], [ %38, %100 ], [ %38, %104 ], [ %38, %80 ]
  %164 = load i64, ptr %31, align 8
  %165 = and i64 %164, 524288
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %186, label %167

167:                                              ; preds = %162
  %168 = load i64, ptr %163, align 8
  %169 = and i64 %168, 262144
  %170 = icmp eq i64 %169, 0
  %171 = load i64, ptr %8, align 8
  %172 = icmp sgt i64 %171, 0
  %173 = select i1 %170, i1 %172, i1 false
  br i1 %173, label %174, label %186

174:                                              ; preds = %167
  %175 = getelementptr inbounds %struct.tree_type, ptr %163, i64 0, i32 16
  %176 = load ptr, ptr %175, align 8, !tbaa !6
  %177 = call ptr @create_tmp_var(ptr noundef %176, ptr noundef null) #20
  %178 = load ptr, ptr %0, align 8, !tbaa !11
  %179 = getelementptr inbounds %struct.tree_exp, ptr %178, i64 0, i32 3
  store ptr %177, ptr %179, align 8, !tbaa !6
  %180 = load ptr, ptr %0, align 8, !tbaa !11
  %181 = getelementptr inbounds %struct.tree_common, ptr %180, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !6
  %183 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  %184 = call ptr @build2_stat(i32 noundef 53, ptr noundef %183, ptr noundef nonnull %31, ptr noundef %177) #21
  %185 = call ptr @build2_stat(i32 noundef 52, ptr noundef %182, ptr noundef %180, ptr noundef %184) #21
  store ptr %185, ptr %0, align 8, !tbaa !11
  br label %218

186:                                              ; preds = %167, %162
  br i1 %21, label %218, label %187

187:                                              ; preds = %186
  %188 = load i64, ptr %8, align 8, !tbaa !24
  %189 = icmp sgt i64 %188, 0
  br i1 %189, label %190, label %202

190:                                              ; preds = %187
  %191 = call ptr @get_base_address(ptr noundef nonnull %31) #21
  %192 = load i64, ptr %191, align 8
  %193 = and i64 %192, 65535
  %194 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %193
  %195 = load i32, ptr %194, align 4, !tbaa !26
  %196 = icmp eq i32 %195, 3
  %197 = select i1 %196, ptr %191, ptr null
  store ptr %197, ptr %6, align 8
  %198 = call i32 @get_alias_set(ptr noundef nonnull %31) #21
  %199 = getelementptr inbounds %struct.gimplify_init_ctor_preeval_data, ptr %6, i64 0, i32 1
  store i32 %198, ptr %199, align 8, !tbaa !150
  %200 = load ptr, ptr %0, align 8, !tbaa !11
  %201 = getelementptr inbounds %struct.tree_exp, ptr %200, i64 1
  call fastcc void @gimplify_init_ctor_preeval(ptr noundef nonnull %201, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6) #20
  br label %202

202:                                              ; preds = %190, %187
  %203 = load i8, ptr %9, align 1, !tbaa !6
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %215, label %205

205:                                              ; preds = %202
  store ptr null, ptr %39, align 8, !tbaa !6
  %206 = load i64, ptr %34, align 8
  %207 = and i64 %206, -65537
  store i64 %207, ptr %34, align 8
  %208 = call ptr @unshare_expr(ptr noundef nonnull %31) #20
  %209 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %0, ptr noundef %1) #20, !range !5
  %210 = load i8, ptr %9, align 1, !tbaa !6
  %211 = icmp eq i8 %210, 0
  %212 = load i64, ptr %8, align 8
  %213 = icmp sgt i64 %212, 0
  %214 = select i1 %211, i1 true, i1 %213
  br i1 %214, label %215, label %220

215:                                              ; preds = %202, %205
  %216 = phi ptr [ %208, %205 ], [ %31, %202 ]
  %217 = phi i8 [ %210, %205 ], [ 0, %202 ]
  call fastcc void @gimplify_init_ctor_eval(ptr noundef %216, ptr noundef %40, ptr noundef %1, i8 noundef zeroext %217) #20
  br label %220

218:                                              ; preds = %174, %161, %46, %63, %186, %157
  %219 = phi i32 [ -1, %157 ], [ 0, %186 ], [ -2, %63 ], [ 0, %46 ], [ -2, %161 ], [ 0, %174 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #22
  br label %349

220:                                              ; preds = %215, %205, %72
  %221 = phi ptr [ %31, %72 ], [ %208, %205 ], [ %216, %215 ]
  store ptr null, ptr %0, align 8, !tbaa !11
  br label %222

222:                                              ; preds = %220, %46
  %223 = phi ptr [ %31, %46 ], [ %221, %220 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #22
  br label %336

224:                                              ; preds = %28
  br i1 %21, label %349, label %225

225:                                              ; preds = %224
  %226 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %40) #20
  %227 = icmp eq i32 %226, 2
  br i1 %227, label %229, label %228

228:                                              ; preds = %225
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3844, ptr noundef nonnull @.str.1) #21
  br label %229

229:                                              ; preds = %225, %228
  %230 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %40, i32 noundef 0) #20
  %231 = getelementptr inbounds %struct.constructor_elt_d, ptr %230, i64 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !62
  %233 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %40, i32 noundef 1) #20
  %234 = getelementptr inbounds %struct.constructor_elt_d, ptr %233, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !62
  %236 = icmp eq ptr %232, null
  %237 = icmp eq ptr %235, null
  %238 = select i1 %236, i1 true, i1 %237
  br i1 %238, label %239, label %246

239:                                              ; preds = %229
  %240 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %241 = load ptr, ptr %240, align 8, !tbaa !6
  %242 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !11
  %243 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %241, ptr noundef %242) #21
  %244 = select i1 %236, ptr %243, ptr %232
  %245 = select i1 %237, ptr %243, ptr %235
  br label %246

246:                                              ; preds = %229, %239
  %247 = phi ptr [ %244, %239 ], [ %232, %229 ]
  %248 = phi ptr [ %245, %239 ], [ %235, %229 ]
  %249 = load i64, ptr %247, align 8
  %250 = and i64 %249, 131072
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %260, label %252

252:                                              ; preds = %246
  %253 = load i64, ptr %248, align 8
  %254 = and i64 %253, 131072
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %260, label %256

256:                                              ; preds = %252
  %257 = tail call ptr @build_complex(ptr noundef nonnull %38, ptr noundef nonnull %247, ptr noundef nonnull %248) #21
  %258 = load ptr, ptr %0, align 8, !tbaa !11
  %259 = getelementptr inbounds %struct.tree_exp, ptr %258, i64 1
  store ptr %257, ptr %259, align 8, !tbaa !6
  br label %336

260:                                              ; preds = %252, %246
  %261 = tail call ptr @build2_stat(i32 noundef 123, ptr noundef nonnull %38, ptr noundef nonnull %247, ptr noundef %248) #21
  %262 = load ptr, ptr %0, align 8, !tbaa !11
  %263 = getelementptr inbounds %struct.tree_exp, ptr %262, i64 1
  store ptr %261, ptr %263, align 8, !tbaa !6
  %264 = load ptr, ptr %0, align 8, !tbaa !11
  %265 = getelementptr inbounds %struct.tree_exp, ptr %264, i64 0, i32 3
  %266 = getelementptr inbounds %struct.tree_exp, ptr %264, i64 1
  %267 = load ptr, ptr %265, align 8, !tbaa !6
  %268 = tail call ptr @rhs_predicate_for(ptr noundef %267) #20
  %269 = tail call i32 @gimplify_expr(ptr noundef nonnull %266, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %268, i32 noundef 1) #20
  br label %333

270:                                              ; preds = %28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #22
  br i1 %21, label %331, label %271

271:                                              ; preds = %270
  %272 = load i64, ptr %34, align 8
  %273 = and i64 %272, 131072
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %301, label %275

275:                                              ; preds = %271
  %276 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %40) #20
  %277 = zext i32 %276 to i64
  %278 = icmp eq i32 %276, 0
  br i1 %278, label %293, label %282

279:                                              ; preds = %282
  %280 = add nuw nsw i64 %283, 1
  %281 = icmp eq i64 %280, %277
  br i1 %281, label %293, label %282, !llvm.loop !152

282:                                              ; preds = %275, %279
  %283 = phi i64 [ %280, %279 ], [ 0, %275 ]
  %284 = trunc i64 %283 to i32
  %285 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %40, i32 noundef %284) #20
  %286 = getelementptr inbounds %struct.constructor_elt_d, ptr %285, i64 0, i32 1
  %287 = load ptr, ptr %286, align 8, !tbaa !62
  %288 = load i64, ptr %287, align 8
  %289 = and i64 %288, 65535
  %290 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %289
  %291 = load i32, ptr %290, align 4, !tbaa !26
  %292 = icmp eq i32 %291, 1
  br i1 %292, label %279, label %295

293:                                              ; preds = %279, %275
  %294 = tail call ptr @build_vector_from_ctor(ptr noundef nonnull %38, ptr noundef %40) #21
  br label %324

295:                                              ; preds = %282
  %296 = tail call ptr @initializer_constant_valid_p(ptr noundef nonnull %34, ptr noundef nonnull %38) #21
  %297 = icmp eq ptr %296, null
  br i1 %297, label %298, label %329

298:                                              ; preds = %295
  %299 = load i64, ptr %34, align 8
  %300 = and i64 %299, -131073
  store i64 %300, ptr %34, align 8
  br label %301

301:                                              ; preds = %298, %271
  %302 = call fastcc i32 @VEC_constructor_elt_base_iterate(ptr noundef %40, i32 noundef 0, ptr noundef nonnull %10) #20, !range !61
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %315, label %304

304:                                              ; preds = %301, %304
  %305 = phi i32 [ %312, %304 ], [ 0, %301 ]
  %306 = phi i32 [ %311, %304 ], [ 1, %301 ]
  %307 = load ptr, ptr %10, align 8, !tbaa !11
  %308 = getelementptr inbounds %struct.constructor_elt_d, ptr %307, i64 0, i32 1
  %309 = tail call i32 @gimplify_expr(ptr noundef nonnull %308, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %310 = icmp eq i32 %309, -2
  %311 = select i1 %310, i32 -2, i32 %306
  %312 = add i32 %305, 1
  %313 = call fastcc i32 @VEC_constructor_elt_base_iterate(ptr noundef %40, i32 noundef %312, ptr noundef nonnull %10) #20, !range !61
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %304, !llvm.loop !153

315:                                              ; preds = %304, %301
  %316 = phi i32 [ 1, %301 ], [ %311, %304 ]
  %317 = load ptr, ptr %0, align 8, !tbaa !11
  %318 = getelementptr inbounds %struct.tree_exp, ptr %317, i64 0, i32 3
  %319 = load ptr, ptr %318, align 8, !tbaa !6
  %320 = tail call zeroext i8 @is_gimple_reg(ptr noundef %319) #21
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %322, label %329

322:                                              ; preds = %315
  %323 = tail call ptr @get_formal_tmp_var(ptr noundef nonnull %34, ptr noundef %1) #20
  br label %324

324:                                              ; preds = %293, %322
  %325 = phi ptr [ %323, %322 ], [ %294, %293 ]
  %326 = phi i32 [ %316, %322 ], [ 1, %293 ]
  %327 = load ptr, ptr %0, align 8, !tbaa !11
  %328 = getelementptr inbounds %struct.tree_exp, ptr %327, i64 1
  store ptr %325, ptr %328, align 8, !tbaa !6
  br label %329

329:                                              ; preds = %324, %315, %295
  %330 = phi i32 [ %316, %315 ], [ 1, %295 ], [ %326, %324 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #22
  br label %333

331:                                              ; preds = %270
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #22
  br label %349

332:                                              ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3933, ptr noundef nonnull @.str.1) #21
  br label %336

333:                                              ; preds = %260, %329
  %334 = phi i32 [ %330, %329 ], [ %269, %260 ]
  %335 = icmp eq i32 %334, -2
  br i1 %335, label %349, label %336

336:                                              ; preds = %256, %222, %332, %333
  %337 = phi ptr [ %31, %333 ], [ %223, %222 ], [ %31, %332 ], [ %31, %256 ]
  %338 = icmp eq i8 %3, 0
  br i1 %338, label %340, label %339

339:                                              ; preds = %336
  store ptr %337, ptr %0, align 8, !tbaa !11
  br label %349

340:                                              ; preds = %336
  %341 = load ptr, ptr %0, align 8, !tbaa !11
  %342 = icmp eq ptr %341, null
  br i1 %342, label %349, label %343

343:                                              ; preds = %340
  %344 = getelementptr inbounds %struct.tree_exp, ptr %341, i64 0, i32 3
  %345 = load ptr, ptr %344, align 8, !tbaa !6
  %346 = getelementptr inbounds %struct.tree_exp, ptr %341, i64 1
  %347 = load ptr, ptr %346, align 8, !tbaa !6
  %348 = call ptr @gimple_build_assign_stat(ptr noundef %345, ptr noundef %347) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %348) #20
  store ptr null, ptr %0, align 8, !tbaa !11
  br label %349

349:                                              ; preds = %331, %224, %218, %340, %343, %333, %22, %339
  %350 = phi i32 [ 0, %339 ], [ 0, %331 ], [ -2, %22 ], [ -2, %333 ], [ 1, %343 ], [ 1, %340 ], [ %219, %218 ], [ 0, %224 ]
  ret i32 %350
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_fold_indirect_ref_rhs(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call ptr @gimple_fold_indirect_ref(ptr noundef %0) #20
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_non_addressable(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @optimize_compound_literals_in_ctor(ptr noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %3) #20
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %51, label %6

6:                                                ; preds = %1, %46
  %7 = phi ptr [ %48, %46 ], [ %0, %1 ]
  %8 = phi ptr [ %47, %46 ], [ %3, %1 ]
  %9 = phi i32 [ %49, %46 ], [ 0, %1 ]
  %10 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %8, i32 noundef %9) #20
  %11 = getelementptr inbounds %struct.constructor_elt_d, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  %13 = load i64, ptr %12, align 8
  %14 = trunc i64 %13 to i16
  switch i16 %14, label %46 [
    i16 51, label %30
    i16 119, label %15
  ]

15:                                               ; preds = %6
  %16 = and i64 %13, 262144
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = getelementptr inbounds %struct.tree_exp, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  %23 = getelementptr inbounds %struct.tree_decl_common, ptr %22, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = load i64, ptr %22, align 8
  %26 = and i64 %25, 262144
  %27 = icmp eq i64 %26, 0
  %28 = icmp ne ptr %24, null
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %46

30:                                               ; preds = %18, %6
  %31 = phi ptr [ %12, %6 ], [ %24, %18 ]
  %32 = tail call fastcc ptr @optimize_compound_literals_in_ctor(ptr noundef nonnull %31) #20
  %33 = icmp eq ptr %32, %12
  br i1 %33, label %46, label %34

34:                                               ; preds = %30
  %35 = icmp eq ptr %7, %0
  br i1 %35, label %36, label %41

36:                                               ; preds = %34
  %37 = tail call ptr @copy_node_stat(ptr noundef %0) #21
  %38 = tail call fastcc ptr @VEC_constructor_elt_gc_copy(ptr noundef %8) #20
  %39 = getelementptr inbounds %struct.tree_constructor, ptr %37, i64 0, i32 1
  store ptr %38, ptr %39, align 8, !tbaa !6
  %40 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %38, i32 noundef %9) #20
  br label %41

41:                                               ; preds = %36, %34
  %42 = phi ptr [ %40, %36 ], [ %10, %34 ]
  %43 = phi ptr [ %38, %36 ], [ %8, %34 ]
  %44 = phi ptr [ %37, %36 ], [ %7, %34 ]
  %45 = getelementptr inbounds %struct.constructor_elt_d, ptr %42, i64 0, i32 1
  store ptr %32, ptr %45, align 8, !tbaa !62
  br label %46

46:                                               ; preds = %18, %15, %6, %30, %41
  %47 = phi ptr [ %43, %41 ], [ %8, %30 ], [ %8, %6 ], [ %8, %15 ], [ %8, %18 ]
  %48 = phi ptr [ %44, %41 ], [ %7, %30 ], [ %7, %6 ], [ %7, %15 ], [ %7, %18 ]
  %49 = add nuw i32 %9, 1
  %50 = icmp eq i32 %49, %4
  br i1 %50, label %51, label %6, !llvm.loop !154

51:                                               ; preds = %46, %1
  %52 = phi ptr [ %0, %1 ], [ %48, %46 ]
  ret ptr %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_constructor_elt_base_length(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !81
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare zeroext i8 @categorize_ctor_elements(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @lhd_set_decl_assembler_name(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i64 @count_type_elements(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare i64 @int_size_in_bytes(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @can_move_by_pieces(i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @get_alias_set(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_init_ctor_preeval(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 {
  %5 = alloca ptr, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !11
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 131072
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = and i64 %7, 65536
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %61, label %13

13:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3263, ptr noundef nonnull @.str.1) #21
  br label %61

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 262144
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %61

20:                                               ; preds = %14
  %21 = and i64 %7, 65535
  %22 = icmp eq i64 %21, 51
  br i1 %22, label %23, label %36

23:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %24 = getelementptr inbounds %struct.tree_constructor, ptr %6, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = call fastcc i32 @VEC_constructor_elt_base_iterate(ptr noundef %25, i32 noundef 0, ptr noundef nonnull %5) #20, !range !61
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %23, %28
  %29 = phi i32 [ %32, %28 ], [ 0, %23 ]
  %30 = load ptr, ptr %5, align 8, !tbaa !11
  %31 = getelementptr inbounds %struct.constructor_elt_d, ptr %30, i64 0, i32 1
  tail call fastcc void @gimplify_init_ctor_preeval(ptr noundef nonnull %31, ptr noundef %1, ptr noundef %2, ptr noundef %3) #20
  %32 = add i32 %29, 1
  %33 = call fastcc i32 @VEC_constructor_elt_base_iterate(ptr noundef %25, i32 noundef %32, ptr noundef nonnull %5) #20, !range !61
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %28, !llvm.loop !155

35:                                               ; preds = %28, %23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  br label %61

36:                                               ; preds = %20
  tail call fastcc void @maybe_with_size_expr(ptr noundef nonnull %0) #20
  %37 = tail call i32 @gimplify_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_mem_rhs, i32 noundef 1) #20
  %38 = icmp eq i32 %37, -2
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store ptr null, ptr %0, align 8, !tbaa !11
  br label %61

40:                                               ; preds = %36
  %41 = load ptr, ptr %0, align 8, !tbaa !11
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, 65535
  %44 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !26
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %61, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !6
  %50 = getelementptr inbounds %struct.tree_type, ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !6
  %52 = load i64, ptr %51, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 23
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = tail call ptr @walk_tree_1(ptr noundef nonnull %0, ptr noundef nonnull @gimplify_init_ctor_preeval_1, ptr noundef %3, ptr noundef null, ptr noundef null) #21
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %0, align 8, !tbaa !11
  %60 = tail call ptr @get_formal_tmp_var(ptr noundef %59, ptr noundef %1) #20
  store ptr %60, ptr %0, align 8, !tbaa !11
  br label %61

61:                                               ; preds = %55, %47, %40, %14, %13, %10, %58, %39, %35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_init_ctor_eval(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #4 {
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 15
  br i1 %9, label %10, label %15

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 16
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  br label %15

15:                                               ; preds = %10, %4
  %16 = phi ptr [ %14, %10 ], [ null, %4 ]
  %17 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %1) #20
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %104, label %19

19:                                               ; preds = %15
  %20 = icmp eq i8 %3, 0
  %21 = icmp eq ptr %16, null
  br label %22

22:                                               ; preds = %19, %99
  %23 = phi i64 [ 0, %19 ], [ %100, %99 ]
  %24 = trunc i64 %23 to i32
  %25 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %1, i32 noundef %24) #20
  %26 = getelementptr inbounds %struct.constructor_elt_d, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !62
  %28 = load ptr, ptr %25, align 8, !tbaa !156
  %29 = icmp eq ptr %27, null
  br i1 %29, label %99, label %30

30:                                               ; preds = %22
  br i1 %20, label %34, label %31

31:                                               ; preds = %30
  %32 = tail call zeroext i8 @initializer_zerop(ptr noundef nonnull %27) #21
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %99

34:                                               ; preds = %31, %30
  %35 = icmp eq ptr %28, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3447, ptr noundef nonnull @.str.1) #21
  br label %37

37:                                               ; preds = %34, %36
  %38 = load i64, ptr %27, align 8
  %39 = and i64 %38, 65536
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = tail call fastcc zeroext i8 @zero_sized_field_decl(ptr noundef %28) #20, !range !5
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %99

44:                                               ; preds = %41, %37
  %45 = load i64, ptr %28, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 111
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.tree_exp, ptr %28, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !6
  %51 = getelementptr inbounds %struct.tree_exp, ptr %28, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  %53 = tail call i32 @simple_cst_equal(ptr noundef %50, ptr noundef %52) #21
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  tail call fastcc void @gimplify_init_ctor_eval_range(ptr noundef %0, ptr noundef %50, ptr noundef %52, ptr noundef nonnull %27, ptr noundef %16, ptr noundef %2, i8 noundef zeroext %3) #20
  br label %99

56:                                               ; preds = %48, %44
  %57 = phi ptr [ %28, %44 ], [ %52, %48 ]
  br i1 %21, label %71, label %58

58:                                               ; preds = %56
  %59 = load ptr, ptr %5, align 8, !tbaa !6
  %60 = getelementptr inbounds %struct.tree_type, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !6
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.tree_common, ptr %61, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !6
  %66 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %65, ptr noundef %57) #21
  br label %67

67:                                               ; preds = %63, %58
  %68 = phi ptr [ %66, %63 ], [ %57, %58 ]
  %69 = tail call ptr @unshare_expr(ptr noundef nonnull %0) #20
  %70 = tail call ptr @build4_stat(i32 noundef 45, ptr noundef nonnull %16, ptr noundef %69, ptr noundef %68, ptr noundef null, ptr noundef null) #21
  br label %81

71:                                               ; preds = %56
  %72 = load i64, ptr %57, align 8
  %73 = and i64 %72, 65535
  %74 = icmp eq i64 %73, 31
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3487, ptr noundef nonnull @.str.1) #21
  br label %76

76:                                               ; preds = %71, %75
  %77 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !6
  %79 = tail call ptr @unshare_expr(ptr noundef %0) #20
  %80 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %78, ptr noundef %79, ptr noundef nonnull %57, ptr noundef null) #21
  br label %81

81:                                               ; preds = %76, %67
  %82 = phi ptr [ %70, %67 ], [ %80, %76 ]
  %83 = load i64, ptr %27, align 8
  %84 = and i64 %83, 65535
  %85 = icmp eq i64 %84, 51
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !6
  %89 = load i64, ptr %88, align 8
  %90 = and i64 %89, 65535
  %91 = icmp eq i64 %90, 14
  br i1 %91, label %95, label %92

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.tree_constructor, ptr %27, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !6
  tail call fastcc void @gimplify_init_ctor_eval(ptr noundef %82, ptr noundef %94, ptr noundef %2, i8 noundef zeroext %3) #20
  br label %99

95:                                               ; preds = %86, %81
  %96 = getelementptr inbounds %struct.tree_common, ptr %82, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !6
  %98 = tail call ptr @build2_stat(i32 noundef 54, ptr noundef %97, ptr noundef %82, ptr noundef nonnull %27) #21
  tail call void @gimplify_and_add(ptr noundef %98, ptr noundef %2) #20
  tail call void @ggc_free(ptr noundef %98) #21
  br label %99

99:                                               ; preds = %55, %92, %95, %41, %31, %22
  %100 = add nuw nsw i64 %23, 1
  %101 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %1) #20
  %102 = zext i32 %101 to i64
  %103 = icmp ult i64 %100, %102
  br i1 %103, label %22, label %104, !llvm.loop !157

104:                                              ; preds = %99, %15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_constructor_elt_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #16 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @build_complex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @build_vector_from_ctor(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @initializer_constant_valid_p(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @VEC_constructor_elt_gc_copy(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !81
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = zext i32 %4 to i64
  %8 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef null, i32 noundef %4, i64 noundef 8, i64 noundef 16) #21
  store i32 %4, ptr %8, align 8, !tbaa !158
  %9 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %8, i64 0, i32 2
  %10 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2
  %11 = shl nuw nsw i64 %7, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %9, ptr nonnull align 8 %10, i64 %11, i1 false)
  br label %12

12:                                               ; preds = %1, %6, %3
  %13 = phi ptr [ %8, %6 ], [ null, %3 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @vec_gc_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @gimplify_init_ctor_preeval_1(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #4 {
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = load ptr, ptr %2, align 8, !tbaa !160
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %75, label %7

7:                                                ; preds = %3
  %8 = load i64, ptr %4, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 47
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = icmp eq ptr %5, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = load i64, ptr %5, align 8
  %15 = and i64 %14, 262144
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13, %11
  %18 = getelementptr inbounds %struct.gimplify_init_ctor_preeval_data, ptr %2, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !150
  %20 = tail call i32 @get_alias_set(ptr noundef nonnull %4) #21
  %21 = tail call i32 @alias_sets_conflict_p(i32 noundef %19, i32 noundef %20) #21
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %75

23:                                               ; preds = %17
  %24 = load i64, ptr %4, align 8
  br label %25

25:                                               ; preds = %23, %13, %7
  %26 = phi i64 [ %24, %23 ], [ %8, %13 ], [ %8, %7 ]
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 59
  br i1 %28, label %29, label %68

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !6
  %32 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !6
  %34 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  %36 = getelementptr inbounds %struct.tree_type, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !6
  %38 = icmp eq ptr %37, null
  br i1 %38, label %68, label %39

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.gimplify_init_ctor_preeval_data, ptr %2, i64 0, i32 1
  br label %41

41:                                               ; preds = %39, %61
  %42 = phi ptr [ %37, %39 ], [ %63, %61 ]
  %43 = getelementptr inbounds %struct.tree_list, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !6
  %45 = load i64, ptr %44, align 8
  %46 = trunc i64 %45 to i16
  switch i16 %46, label %61 [
    i16 10, label %47
    i16 12, label %47
  ]

47:                                               ; preds = %41, %41
  %48 = load ptr, ptr %2, align 8, !tbaa !160
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load i64, ptr %48, align 8
  %52 = and i64 %51, 262144
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %50, %47
  %55 = load i32, ptr %40, align 8, !tbaa !150
  %56 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !6
  %58 = tail call i32 @get_alias_set(ptr noundef %57) #21
  %59 = tail call i32 @alias_sets_conflict_p(i32 noundef %55, i32 noundef %58) #21
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %41, %50, %54
  %62 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !6
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %41, !llvm.loop !161

65:                                               ; preds = %61
  %66 = load i64, ptr %4, align 8
  %67 = and i64 %66, 65535
  br label %68

68:                                               ; preds = %65, %29, %25
  %69 = phi i64 [ %67, %65 ], [ 59, %29 ], [ %27, %25 ]
  %70 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !26
  %72 = and i32 %71, -2
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 0, ptr %1, align 4, !tbaa !26
  br label %75

75:                                               ; preds = %54, %68, %74, %17, %3
  %76 = phi ptr [ %4, %3 ], [ %4, %17 ], [ null, %68 ], [ null, %74 ], [ %4, %54 ]
  ret ptr %76
}

; Function Attrs: optsize
declare i32 @alias_sets_conflict_p(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @initializer_zerop(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @zero_sized_field_decl(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 31
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !6
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @integer_zerop(ptr noundef nonnull %7) #21
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %5, %1
  br label %13

13:                                               ; preds = %9, %12
  %14 = phi i8 [ 0, %12 ], [ 1, %9 ]
  ret i8 %14
}

; Function Attrs: optsize
declare i32 @simple_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_init_ctor_eval_range(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6) unnamed_addr #4 {
  %8 = tail call ptr @create_artificial_label(i32 noundef 0) #21
  %9 = tail call ptr @create_artificial_label(i32 noundef 0) #21
  %10 = tail call ptr @create_artificial_label(i32 noundef 0) #21
  %11 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = tail call ptr @create_tmp_var(ptr noundef %12, ptr noundef null) #20
  %14 = tail call ptr @gimple_build_assign_stat(ptr noundef %13, ptr noundef %1) #21
  tail call fastcc void @gimplify_seq_add_stmt(ptr noundef %5, ptr noundef %14) #20
  %15 = tail call ptr @gimple_build_label(ptr noundef %8) #21
  tail call fastcc void @gimplify_seq_add_stmt(ptr noundef %5, ptr noundef %15) #20
  %16 = tail call ptr @unshare_expr(ptr noundef %0) #20
  %17 = tail call ptr @build4_stat(i32 noundef 45, ptr noundef %4, ptr noundef %16, ptr noundef %13, ptr noundef null, ptr noundef null) #21
  %18 = load i64, ptr %3, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 51
  br i1 %20, label %21, label %24

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct.tree_constructor, ptr %3, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  tail call fastcc void @gimplify_init_ctor_eval(ptr noundef %17, ptr noundef %23, ptr noundef %5, i8 noundef zeroext %6) #20
  br label %26

24:                                               ; preds = %7
  %25 = tail call ptr @gimple_build_assign_stat(ptr noundef %17, ptr noundef nonnull %3) #21
  tail call fastcc void @gimplify_seq_add_stmt(ptr noundef %5, ptr noundef %25) #20
  br label %26

26:                                               ; preds = %24, %21
  %27 = tail call ptr @gimple_build_cond(i32 noundef 101, ptr noundef %13, ptr noundef nonnull %2, ptr noundef %9, ptr noundef %10) #21
  tail call fastcc void @gimplify_seq_add_stmt(ptr noundef %5, ptr noundef %27) #20
  %28 = tail call ptr @gimple_build_label(ptr noundef %10) #21
  tail call fastcc void @gimplify_seq_add_stmt(ptr noundef %5, ptr noundef %28) #20
  %29 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !11
  %30 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %12, ptr noundef %29) #21
  %31 = tail call ptr @build2_stat(i32 noundef 63, ptr noundef %12, ptr noundef %13, ptr noundef %30) #21
  %32 = tail call ptr @gimple_build_assign_stat(ptr noundef %13, ptr noundef %31) #21
  tail call fastcc void @gimplify_seq_add_stmt(ptr noundef %5, ptr noundef %32) #20
  %33 = tail call ptr @gimple_build_goto(ptr noundef %8) #21
  tail call fastcc void @gimplify_seq_add_stmt(ptr noundef %5, ptr noundef %33) #20
  %34 = tail call ptr @gimple_build_label(ptr noundef %9) #21
  tail call fastcc void @gimplify_seq_add_stmt(ptr noundef %5, ptr noundef %34) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prepare_gimple_addressable(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #4 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %8, %3 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !11
  %6 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %5) #20, !range !5
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  br i1 %7, label %9, label %3, !llvm.loop !162

9:                                                ; preds = %3
  %10 = tail call zeroext i8 @is_gimple_reg(ptr noundef %5) #21
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %4, align 8, !tbaa !11
  %14 = tail call ptr @get_initialized_tmp_var(ptr noundef %13, ptr noundef %1, ptr noundef null) #20
  store ptr %14, ptr %4, align 8, !tbaa !11
  br label %15

15:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @tree_ssa_useless_type_conversion(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @recompute_tree_invariant_for_addr_expr(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @tree_strip_sign_nop_conversions(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @canonicalize_addr_expr(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %64 [
    i16 10, label %9
    i16 12, label %9
  ]

9:                                                ; preds = %1, %1
  %10 = load i64, ptr %4, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 121
  br i1 %12, label %13, label %64

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 15
  br i1 %20, label %21, label %64

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = tail call ptr @build_pointer_type(ptr noundef %23) #21
  %25 = load ptr, ptr %5, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct.tree_type, ptr %25, i64 0, i32 16
  %27 = load ptr, ptr %26, align 8, !tbaa !6
  %28 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %27, ptr noundef %24) #21
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %64, label %30

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = icmp eq ptr %32, null
  br i1 %33, label %64, label %34

34:                                               ; preds = %30
  %35 = load i64, ptr %32, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 23
  br i1 %37, label %38, label %64

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.tree_type, ptr %17, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  %41 = icmp eq ptr %40, null
  br i1 %41, label %64, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.tree_type, ptr %40, i64 0, i32 13
  %44 = load ptr, ptr %43, align 8, !tbaa !6
  %45 = icmp eq ptr %44, null
  br i1 %45, label %64, label %46

46:                                               ; preds = %42
  %47 = load i64, ptr %44, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 23
  br i1 %49, label %50, label %64

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !6
  %53 = tail call ptr @build4_stat(i32 noundef 45, ptr noundef nonnull %23, ptr noundef %52, ptr noundef nonnull %44, ptr noundef null, ptr noundef null) #21
  store ptr %53, ptr %0, align 8, !tbaa !11
  %54 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %24, ptr noundef %53) #21
  store ptr %54, ptr %0, align 8, !tbaa !11
  %55 = load ptr, ptr %5, align 8, !tbaa !6
  %56 = getelementptr inbounds %struct.tree_common, ptr %54, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !6
  %58 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %55, ptr noundef %57) #21
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %50
  %61 = load ptr, ptr %5, align 8, !tbaa !6
  %62 = load ptr, ptr %0, align 8, !tbaa !11
  %63 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %61, ptr noundef %62) #21
  store ptr %63, ptr %0, align 8, !tbaa !11
  br label %64

64:                                               ; preds = %50, %60, %30, %34, %38, %42, %46, %21, %13, %9, %1
  ret void
}

; Function Attrs: optsize
declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_vla_decl(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  tail call void @gimplify_one_sizepos(ptr noundef nonnull %3, ptr noundef %1) #20
  %4 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 4
  tail call void @gimplify_one_sizepos(ptr noundef nonnull %4, ptr noundef %1) #20
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = tail call ptr @build_pointer_type(ptr noundef %6) #21
  %8 = tail call ptr @get_name(ptr noundef %0) #21
  %9 = tail call ptr @create_tmp_var(ptr noundef %7, ptr noundef %8) #20
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, -1025
  store i64 %12, ptr %10, align 8
  %13 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef 0, ptr noundef %9) #21
  tail call void @decl_value_expr_insert(ptr noundef %0, ptr noundef %13) #21
  %14 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = or i64 %15, 67108864
  store i64 %16, ptr %14, align 8
  %17 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 415), align 8, !tbaa !11
  %18 = load ptr, ptr %4, align 8, !tbaa !6
  %19 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %17, i32 noundef 1, ptr noundef %18) #21
  %20 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %7, ptr noundef %19) #21
  %21 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !6
  %23 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %22, ptr noundef %9, ptr noundef %20) #21
  tail call void @gimplify_and_add(ptr noundef %23, ptr noundef %1) #20
  %24 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %25 = getelementptr inbounds %struct.gimplify_ctx, ptr %24, i64 0, i32 9
  store i8 1, ptr %25, align 4, !tbaa !74
  ret void
}

; Function Attrs: optsize
declare void @decl_value_expr_insert(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @build_call_expr_loc(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_global_var(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 67108864
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = lshr i64 %7, 25
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i8 [ 1, %1 ], [ %10, %5 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_push_bind_expr(ptr noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.gimplify_ctx, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !16
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = tail call fastcc ptr @VEC_gimple_heap_alloc() #20
  %8 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %9 = getelementptr inbounds %struct.gimplify_ctx, ptr %8, i64 0, i32 1
  store ptr %7, ptr %9, align 8, !tbaa !16
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi ptr [ %8, %6 ], [ %2, %1 ]
  %12 = getelementptr inbounds %struct.gimplify_ctx, ptr %11, i64 0, i32 1
  tail call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull %12, ptr noundef %0) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_stack_save_restore(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #4 {
  %3 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 526), align 16, !tbaa !11
  %4 = tail call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %3, i32 noundef 0) #21
  store ptr %4, ptr %0, align 8, !tbaa !11
  %5 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !11
  %6 = tail call ptr @create_tmp_var(ptr noundef %5, ptr noundef nonnull @.str.10) #20
  %7 = load ptr, ptr %0, align 8, !tbaa !11
  tail call fastcc void @gimple_call_set_lhs(ptr noundef %7, ptr noundef %6) #20
  %8 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 527), align 8, !tbaa !11
  %9 = tail call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %8, i32 noundef 1, ptr noundef %6) #21
  store ptr %9, ptr %1, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gimple_pop_bind_expr() unnamed_addr #17 {
  %1 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %2 = getelementptr inbounds %struct.gimplify_ctx, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  tail call fastcc void @VEC_gimple_base_pop(ptr noundef %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_gimple_heap_alloc() unnamed_addr #4 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 8) #21
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #4 {
  tail call fastcc void @VEC_gimple_heap_reserve(ptr noundef %0) #20
  %3 = load ptr, ptr %0, align 8, !tbaa !11
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %3, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_reserve(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = tail call fastcc i32 @VEC_gimple_base_space(ptr noundef %2) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #21
  store ptr %6, ptr %0, align 8, !tbaa !11
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #15 {
  %3 = load i32, ptr %0, align 8, !tbaa !19
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !19
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_space(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !163
  %6 = load i32, ptr %0, align 8, !tbaa !19
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_base_pop(ptr nocapture noundef %0) unnamed_addr #15 {
  %2 = load i32, ptr %0, align 8, !tbaa !19
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !19
  ret void
}

; Function Attrs: optsize
declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_ordered_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #15 {
  %3 = load i32, ptr %0, align 8, !tbaa !56
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = add i32 %3, -1
  store i32 %7, ptr %0, align 8, !tbaa !56
  %8 = sub i32 %7, %1
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %5, ptr nonnull align 8 %6, i64 %10, i1 false)
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_build_switch_vec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: optsize
declare void @gsi_insert_after_without_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gimple_build_return(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @list_length(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #4 {
  tail call fastcc void @VEC_tree_gc_reserve(ptr noundef %0) #20
  %3 = load ptr, ptr %0, align 8, !tbaa !11
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #20
  ret void
}

; Function Attrs: optsize
declare ptr @xstrdup(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @build_string(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @build_tree_list_stat(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gimple_build_asm_vec(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_asm_set_volatile(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #15 {
  %3 = icmp eq i8 %1, 0
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, -131073
  %6 = select i1 %3, i32 0, i32 131072
  %7 = or disjoint i32 %5, %6
  store i32 %7, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_asm_set_input(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #15 {
  %3 = icmp eq i8 %1, 0
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, -65537
  %6 = select i1 %3, i32 0, i32 65536
  %7 = or disjoint i32 %5, %6
  store i32 %7, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_reserve(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve(ptr noundef %2, i32 noundef 1) #21
  store ptr %6, ptr %0, align 8, !tbaa !11
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_try_kind(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  %4 = and i32 %3, 3
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @gsi_one_before_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = icmp eq ptr %6, null
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %4 ]
  ret i8 %10
}

; Function Attrs: optsize
declare void @gsi_insert_seq_before_without_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_wce_cleanup(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.gimple_statement_wce, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  ret ptr %3
}

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_wce_cleanup_eh_only(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load i32, ptr %0, align 8
  %3 = icmp ugt i32 %2, 65535
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @gsi_split_seq_after(ptr noundef byval(%struct.gimple_stmt_iterator) align 8) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gsi_stmt_ptr(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_push_cleanup(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr nocapture noundef %3) unnamed_addr #4 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %1, ptr %5, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  store ptr null, ptr %6, align 8, !tbaa !11
  %7 = load ptr, ptr @global_dc, align 8, !tbaa !11
  %8 = getelementptr inbounds %struct.diagnostic_context, ptr %7, i64 0, i32 1, i64 4
  %9 = load i32, ptr %8, align 8, !tbaa !26
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.diagnostic_context, ptr %7, i64 0, i32 1, i64 5
  %13 = load i32, ptr %12, align 4, !tbaa !26
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %11
  %16 = tail call fastcc zeroext i8 @gimple_conditional_context() #20, !range !5
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !11
  %20 = tail call ptr @create_tmp_var(ptr noundef %19, ptr noundef nonnull @.str.17) #20
  %21 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !11
  %22 = tail call ptr @gimple_build_assign_stat(ptr noundef %20, ptr noundef %21) #21
  %23 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !11
  %24 = tail call ptr @gimple_build_assign_stat(ptr noundef %20, ptr noundef %23) #21
  %25 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  %26 = tail call ptr @build3_stat(i32 noundef 56, ptr noundef %25, ptr noundef %20, ptr noundef %1, ptr noundef null) #21
  store ptr %26, ptr %5, align 8, !tbaa !11
  %27 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %5, ptr noundef nonnull %6) #20, !range !5
  %28 = load ptr, ptr %6, align 8, !tbaa !11
  %29 = call ptr @gimple_build_wce(ptr noundef %28) #21
  %30 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %31 = getelementptr inbounds %struct.gimplify_ctx, ptr %30, i64 0, i32 3
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %31, ptr noundef %22) #20
  %32 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %33 = getelementptr inbounds %struct.gimplify_ctx, ptr %32, i64 0, i32 3
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %33, ptr noundef %29) #20
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %3, ptr noundef %24) #20
  %34 = load i64, ptr %0, align 8
  %35 = or i64 %34, 8388608
  store i64 %35, ptr %0, align 8
  br label %40

36:                                               ; preds = %15
  %37 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %5, ptr noundef nonnull %6) #20, !range !5
  %38 = load ptr, ptr %6, align 8, !tbaa !11
  %39 = call ptr @gimple_build_wce(ptr noundef %38) #21
  call fastcc void @gimple_wce_set_cleanup_eh_only(ptr noundef %39, i8 noundef zeroext %2) #20
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %3, ptr noundef %39) #20
  br label %40

40:                                               ; preds = %18, %36, %4, %11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @gimple_conditional_context() unnamed_addr #8 {
  %1 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !11
  %2 = getelementptr inbounds %struct.gimplify_ctx, ptr %1, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !88
  %4 = icmp sgt i32 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare ptr @gimple_build_wce(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_wce_set_cleanup_eh_only(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #15 {
  %3 = zext nneg i8 %1 to i32
  %4 = load i32, ptr %0, align 8
  %5 = shl nuw nsw i32 %3, 16
  %6 = and i32 %4, 65535
  %7 = or disjoint i32 %6, %5
  store i32 %7, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc { ptr, ptr } @tsi_start(ptr noundef %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.tree_statement_list, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = insertvalue { ptr, ptr } poison, ptr %3, 0
  %5 = insertvalue { ptr, ptr } %4, ptr %0, 1
  ret { ptr, ptr } %5
}

; Function Attrs: optsize
declare void @tsi_delink(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @set_decl_rtl(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_scan_omp_clauses(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = alloca %struct.gimplify_ctx, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #22
  %5 = tail call fastcc ptr @new_omp_context(i32 noundef %2) #20
  %6 = load ptr, ptr %5, align 8, !tbaa !30
  %7 = load ptr, ptr %0, align 8, !tbaa !11
  %8 = icmp eq ptr %7, null
  br i1 %8, label %129, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %5, i64 0, i32 4
  %11 = icmp eq ptr %6, null
  %12 = icmp eq i32 %2, 0
  br label %13

13:                                               ; preds = %9, %125
  %14 = phi ptr [ %7, %9 ], [ %126, %125 ]
  %15 = phi ptr [ %0, %9 ], [ %127, %125 ]
  %16 = getelementptr inbounds %struct.tree_omp_clause, ptr %14, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !6
  switch i32 %17, label %118 [
    i32 1, label %18
    i32 2, label %30
    i32 3, label %27
    i32 4, label %28
    i32 5, label %29
    i32 6, label %84
    i32 7, label %84
    i32 8, label %107
    i32 10, label %111
    i32 9, label %111
    i32 11, label %122
    i32 12, label %122
    i32 15, label %122
    i32 14, label %122
    i32 13, label %115
  ]

18:                                               ; preds = %13
  %19 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 14), align 8, !tbaa !98
  %20 = getelementptr inbounds %struct.tree_omp_clause, ptr %14, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = call zeroext i8 %19(ptr noundef %21) #21
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load i64, ptr %14, align 8
  %26 = or i64 %25, 268435456
  store i64 %26, ptr %14, align 8
  br label %30

27:                                               ; preds = %13
  br label %30

28:                                               ; preds = %13
  br label %30

29:                                               ; preds = %13
  br label %30

30:                                               ; preds = %13, %18, %24, %29, %28, %27
  %31 = phi i1 [ false, %29 ], [ false, %28 ], [ false, %27 ], [ false, %24 ], [ true, %18 ], [ false, %13 ]
  %32 = phi ptr [ @.str.22, %29 ], [ @.str.21, %28 ], [ @.str.20, %27 ], [ null, %24 ], [ null, %18 ], [ null, %13 ]
  %33 = phi i32 [ 67, %29 ], [ 35, %28 ], [ 18, %27 ], [ 522, %24 ], [ 10, %18 ], [ 6, %13 ]
  %34 = getelementptr inbounds %struct.tree_omp_clause, ptr %14, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  %36 = load ptr, ptr @global_trees, align 16, !tbaa !11
  %37 = icmp eq ptr %35, %36
  br i1 %37, label %119, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !6
  %41 = icmp eq ptr %40, %36
  br i1 %41, label %119, label %42

42:                                               ; preds = %38
  call fastcc void @omp_add_variable(ptr noundef nonnull %5, ptr noundef nonnull %35, i32 noundef %33) #20
  %43 = load i32, ptr %16, align 4, !tbaa !6
  switch i32 %43, label %83 [
    i32 5, label %44
    i32 4, label %61
  ]

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.tree_omp_clause, ptr %14, i64 1, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !6
  %47 = icmp eq ptr %46, null
  br i1 %47, label %83, label %48

48:                                               ; preds = %44
  call fastcc void @omp_add_variable(ptr noundef nonnull %5, ptr noundef nonnull %46, i32 noundef 129) #20
  store ptr %5, ptr @gimplify_omp_ctxp, align 8, !tbaa !11
  call void @push_gimplify_context(ptr noundef nonnull %4) #20
  %49 = call ptr @gimple_seq_alloc() #21
  %50 = getelementptr inbounds %struct.tree_omp_clause, ptr %14, i64 0, i32 4
  store ptr %49, ptr %50, align 8, !tbaa !6
  %51 = call ptr @gimple_seq_alloc() #21
  %52 = getelementptr inbounds %struct.tree_omp_clause, ptr %14, i64 0, i32 5
  store ptr %51, ptr %52, align 8, !tbaa !6
  %53 = getelementptr inbounds %struct.tree_omp_clause, ptr %14, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !6
  call void @gimplify_and_add(ptr noundef %54, ptr noundef nonnull %50) #20
  %55 = load ptr, ptr %50, align 8, !tbaa !6
  %56 = call fastcc ptr @gimple_seq_first_stmt(ptr noundef %55) #20
  call void @pop_gimplify_context(ptr noundef %56) #20
  call void @push_gimplify_context(ptr noundef nonnull %4) #20
  %57 = getelementptr inbounds %struct.tree_omp_clause, ptr %14, i64 1, i32 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  call void @gimplify_and_add(ptr noundef %58, ptr noundef nonnull %52) #20
  %59 = load ptr, ptr %52, align 8, !tbaa !6
  %60 = call fastcc ptr @gimple_seq_first_stmt(ptr noundef %59) #20
  call void @pop_gimplify_context(ptr noundef %60) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %53, i8 0, i64 16, i1 false)
  br label %82

61:                                               ; preds = %42
  %62 = getelementptr inbounds %struct.tree_omp_clause, ptr %14, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !6
  %64 = icmp eq ptr %63, null
  br i1 %64, label %83, label %65

65:                                               ; preds = %61
  store ptr %5, ptr @gimplify_omp_ctxp, align 8, !tbaa !11
  call void @push_gimplify_context(ptr noundef nonnull %4) #20
  %66 = load ptr, ptr %62, align 8, !tbaa !6
  %67 = load i64, ptr %66, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 58
  br i1 %69, label %77, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !11
  %72 = call ptr @build3_stat(i32 noundef 58, ptr noundef %71, ptr noundef null, ptr noundef null, ptr noundef null) #21
  %73 = load i64, ptr %72, align 8
  %74 = or i64 %73, 65536
  store i64 %74, ptr %72, align 8
  %75 = load ptr, ptr %62, align 8, !tbaa !6
  %76 = getelementptr inbounds %struct.tree_exp, ptr %72, i64 1
  store ptr %75, ptr %76, align 8, !tbaa !6
  store ptr %72, ptr %62, align 8, !tbaa !6
  br label %77

77:                                               ; preds = %70, %65
  %78 = phi ptr [ %72, %70 ], [ %66, %65 ]
  %79 = getelementptr inbounds %struct.tree_omp_clause, ptr %14, i64 0, i32 4
  call void @gimplify_and_add(ptr noundef nonnull %78, ptr noundef nonnull %79) #20
  %80 = load ptr, ptr %79, align 8, !tbaa !6
  %81 = call fastcc ptr @gimple_seq_first_stmt(ptr noundef %80) #20
  call void @pop_gimplify_context(ptr noundef %81) #20
  store ptr null, ptr %62, align 8, !tbaa !6
  br label %82

82:                                               ; preds = %48, %77
  store ptr %6, ptr @gimplify_omp_ctxp, align 8, !tbaa !11
  br label %83

83:                                               ; preds = %82, %42, %44, %61
  br i1 %31, label %122, label %93

84:                                               ; preds = %13, %13
  %85 = getelementptr inbounds %struct.tree_omp_clause, ptr %14, i64 0, i32 6
  %86 = load ptr, ptr %85, align 8, !tbaa !6
  %87 = load ptr, ptr @global_trees, align 16, !tbaa !11
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %119, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.tree_common, ptr %86, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !6
  %92 = icmp eq ptr %91, %87
  br i1 %92, label %119, label %93

93:                                               ; preds = %89, %83
  %94 = phi ptr [ null, %89 ], [ %32, %83 ]
  %95 = phi ptr [ %86, %89 ], [ %35, %83 ]
  br i1 %11, label %98, label %96

96:                                               ; preds = %93
  %97 = call fastcc zeroext i8 @omp_notice_variable(ptr noundef nonnull %6, ptr noundef nonnull %95) #20
  br label %98

98:                                               ; preds = %96, %93
  %99 = icmp ne ptr %94, null
  %100 = and i1 %12, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %98
  %102 = call fastcc zeroext i8 @omp_check_private(ptr noundef nonnull %5, ptr noundef nonnull %95) #20, !range !5
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %122, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.tree_decl_minimal, ptr %95, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !6
  call void (ptr, ...) @error(ptr noundef nonnull @.str.23, ptr noundef nonnull %94, ptr noundef %106) #21
  br label %119

107:                                              ; preds = %13
  %108 = getelementptr inbounds %struct.tree_omp_clause, ptr %14, i64 0, i32 6
  %109 = load ptr, ptr %108, align 8, !tbaa !6
  %110 = call ptr @gimple_boolify(ptr noundef %109) #20
  store ptr %110, ptr %108, align 8, !tbaa !6
  br label %111

111:                                              ; preds = %13, %13, %107
  %112 = getelementptr inbounds %struct.tree_omp_clause, ptr %14, i64 0, i32 6
  %113 = call i32 @gimplify_expr(ptr noundef nonnull %112, ptr noundef %1, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %114 = icmp eq i32 %113, -2
  br i1 %114, label %119, label %122

115:                                              ; preds = %13
  %116 = getelementptr inbounds %struct.tree_omp_clause, ptr %14, i64 0, i32 3
  %117 = load i32, ptr %116, align 8, !tbaa !6
  store i32 %117, ptr %10, align 4, !tbaa !94
  br label %122

118:                                              ; preds = %13
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5821, ptr noundef nonnull @.str.1) #21
  br label %122

119:                                              ; preds = %104, %38, %30, %89, %84, %111
  %120 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !6
  store ptr %121, ptr %15, align 8, !tbaa !11
  br label %125

122:                                              ; preds = %118, %115, %13, %13, %13, %13, %101, %98, %83, %111
  %123 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !11
  br label %125

125:                                              ; preds = %122, %119
  %126 = phi ptr [ %121, %119 ], [ %124, %122 ]
  %127 = phi ptr [ %15, %119 ], [ %123, %122 ]
  %128 = icmp eq ptr %126, null
  br i1 %128, label %129, label %13, !llvm.loop !164

129:                                              ; preds = %125, %3
  store ptr %5, ptr @gimplify_omp_ctxp, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimplify_and_return_first(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %4 = load ptr, ptr %1, align 8, !tbaa !11
  call fastcc void @gsi_last(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %4) #20
  tail call void @gimplify_and_add(ptr noundef %0, ptr noundef nonnull %1) #20
  %5 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !5
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  call fastcc void @gsi_next(ptr noundef nonnull %3) #20
  %8 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  br label %12

9:                                                ; preds = %2
  %10 = load ptr, ptr %1, align 8, !tbaa !11
  %11 = tail call fastcc ptr @gimple_seq_first_stmt(ptr noundef %10) #20
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %11, %9 ], [ %8, %7 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_adjust_omp_clauses(ptr noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !11
  %3 = load ptr, ptr %0, align 8, !tbaa !11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %70, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %2, i64 0, i32 1
  br label %7

7:                                                ; preds = %5, %66
  %8 = phi ptr [ %3, %5 ], [ %67, %66 ]
  %9 = phi ptr [ %0, %5 ], [ %68, %66 ]
  %10 = getelementptr inbounds %struct.tree_omp_clause, ptr %8, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !6
  switch i32 %11, label %59 [
    i32 1, label %12
    i32 2, label %12
    i32 3, label %12
    i32 4, label %46
    i32 5, label %63
    i32 6, label %63
    i32 7, label %63
    i32 8, label %63
    i32 9, label %63
    i32 10, label %63
    i32 11, label %63
    i32 12, label %63
    i32 13, label %63
    i32 15, label %63
    i32 14, label %63
  ]

12:                                               ; preds = %7, %7, %7
  %13 = getelementptr inbounds %struct.tree_omp_clause, ptr %8, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !6
  %15 = load ptr, ptr %6, align 8, !tbaa !33
  %16 = ptrtoint ptr %14 to i64
  %17 = tail call ptr @splay_tree_lookup(ptr noundef %15, i64 noundef %16) #21
  %18 = getelementptr inbounds %struct.splay_tree_node_s, ptr %17, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !34
  %20 = and i64 %19, 1
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %60, label %22

22:                                               ; preds = %12
  %23 = and i64 %19, 256
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load i32, ptr %10, align 4, !tbaa !6
  %27 = icmp eq i32 %26, 2
  %28 = zext i1 %27 to i8
  %29 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 13), align 8, !tbaa !165
  %30 = tail call zeroext i8 %29(ptr noundef %14, i8 noundef zeroext %28) #21
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %63, label %32

32:                                               ; preds = %25
  %33 = load i64, ptr %18, align 8, !tbaa !34
  %34 = and i64 %33, 256
  br label %35

35:                                               ; preds = %32, %22
  %36 = phi i64 [ %34, %32 ], [ %23, %22 ]
  %37 = phi i64 [ %33, %32 ], [ %19, %22 ]
  %38 = icmp eq i64 %36, 0
  %39 = and i64 %37, 252
  %40 = icmp eq i64 %39, 8
  %41 = or i1 %38, %40
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5927, ptr noundef nonnull @.str.1) #21
  br label %43

43:                                               ; preds = %35, %42
  store i32 1, ptr %10, align 4, !tbaa !6
  %44 = load i64, ptr %8, align 8
  %45 = or i64 %44, 134217728
  store i64 %45, ptr %8, align 8
  br label %63

46:                                               ; preds = %7
  %47 = getelementptr inbounds %struct.tree_omp_clause, ptr %8, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !6
  %49 = load ptr, ptr %6, align 8, !tbaa !33
  %50 = ptrtoint ptr %48 to i64
  %51 = tail call ptr @splay_tree_lookup(ptr noundef %49, i64 noundef %50) #21
  %52 = getelementptr inbounds %struct.splay_tree_node_s, ptr %51, i64 0, i32 1
  %53 = load i64, ptr %52, align 8, !tbaa !34
  %54 = load i64, ptr %8, align 8
  %55 = shl i64 %53, 23
  %56 = and i64 %55, 134217728
  %57 = and i64 %54, -134217729
  %58 = or disjoint i64 %57, %56
  store i64 %58, ptr %8, align 8
  br label %63

59:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5957, ptr noundef nonnull @.str.1) #21
  br label %63

60:                                               ; preds = %12
  %61 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !6
  store ptr %62, ptr %9, align 8, !tbaa !11
  br label %66

63:                                               ; preds = %59, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %46, %43, %25
  %64 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !11
  br label %66

66:                                               ; preds = %63, %60
  %67 = phi ptr [ %62, %60 ], [ %65, %63 ]
  %68 = phi ptr [ %9, %60 ], [ %64, %63 ]
  %69 = icmp eq ptr %67, null
  br i1 %69, label %70, label %7, !llvm.loop !166

70:                                               ; preds = %66, %1
  %71 = phi ptr [ %0, %1 ], [ %68, %66 ]
  %72 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %2, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !33
  %74 = tail call i32 @splay_tree_foreach(ptr noundef %73, ptr noundef nonnull @gimplify_adjust_omp_clauses_1, ptr noundef nonnull %71) #21
  %75 = load ptr, ptr %2, align 8, !tbaa !30
  store ptr %75, ptr @gimplify_omp_ctxp, align 8, !tbaa !11
  tail call fastcc void @delete_omp_context(ptr noundef nonnull %2) #20
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_build_omp_parallel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_omp_set_subcode(ptr nocapture noundef %0) unnamed_addr #15 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = or disjoint i32 %3, 65536
  store i32 %4, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @new_omp_context(i32 noundef %0) unnamed_addr #4 {
  %2 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #21
  %3 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !11
  store ptr %3, ptr %2, align 8, !tbaa !30
  %4 = tail call ptr @splay_tree_new(ptr noundef nonnull @splay_tree_compare_decl_uid, ptr noundef null, ptr noundef null) #21
  %5 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %2, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !33
  %6 = tail call ptr @pointer_set_create() #21
  %7 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %2, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !139
  %8 = load i32, ptr @input_location, align 4, !tbaa !26
  %9 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %2, i64 0, i32 3
  store i32 %8, ptr %9, align 8, !tbaa !96
  %10 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %2, i64 0, i32 5
  store i32 %0, ptr %10, align 8, !tbaa !28
  %11 = icmp ne i32 %0, 1
  %12 = zext i1 %11 to i32
  %13 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %2, i64 0, i32 4
  store i32 %12, ptr %13, align 4
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @omp_check_private(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #4 {
  %3 = ptrtoint ptr %1 to i64
  br label %4

4:                                                ; preds = %25, %2
  %5 = phi ptr [ %0, %2 ], [ %6, %25 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !30
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %1) #20, !range !5
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %8
  %12 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 10), align 8, !tbaa !36
  %13 = tail call zeroext i8 %12(ptr noundef %1) #21
  %14 = icmp eq i8 %13, 0
  br label %29

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %6, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !33
  %18 = tail call ptr @splay_tree_lookup(ptr noundef %17, i64 noundef %3) #21
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.splay_tree_node_s, ptr %18, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !34
  %23 = and i64 %22, 4
  %24 = icmp eq i64 %23, 0
  br label %29

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %6, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !28
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %4, label %29, !llvm.loop !167

29:                                               ; preds = %25, %8, %11, %20
  %30 = phi i1 [ %24, %20 ], [ false, %8 ], [ %14, %11 ], [ false, %25 ]
  %31 = zext i1 %30 to i8
  ret i8 %31
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @splay_tree_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @splay_tree_compare_decl_uid(i64 noundef %0, i64 noundef %1) #8 {
  %3 = inttoptr i64 %0 to ptr
  %4 = inttoptr i64 %1 to ptr
  %5 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !6
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !6
  %9 = sub i32 %6, %8
  ret i32 %9
}

; Function Attrs: optsize
declare i32 @splay_tree_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @gimplify_adjust_omp_clauses_1(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #4 {
  %3 = load i64, ptr %0, align 8, !tbaa !168
  %4 = inttoptr i64 %3 to ptr
  %5 = getelementptr inbounds %struct.splay_tree_node_s, ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !34
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 131
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %74

10:                                               ; preds = %2
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = and i32 %7, 124
  %15 = icmp eq i32 %14, 8
  br i1 %15, label %55, label %16

16:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5852, ptr noundef nonnull @.str.1) #21
  br label %55

17:                                               ; preds = %10
  %18 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 13), align 8, !tbaa !165
  %19 = trunc i64 %6 to i8
  %20 = lshr i8 %19, 2
  %21 = and i8 %20, 1
  %22 = tail call zeroext i8 %18(ptr noundef %4, i8 noundef zeroext %21) #21
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %17
  %25 = and i32 %7, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %48, label %27

27:                                               ; preds = %24
  %28 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %4) #20, !range !5
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %55, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !11
  %32 = load ptr, ptr %31, align 8, !tbaa !30
  %33 = icmp eq ptr %32, null
  br i1 %33, label %74, label %34

34:                                               ; preds = %30, %45
  %35 = phi ptr [ %46, %45 ], [ %32, %30 ]
  %36 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !33
  %38 = tail call ptr @splay_tree_lookup(ptr noundef %37, i64 noundef %3) #21
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.splay_tree_node_s, ptr %38, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !34
  %43 = and i64 %42, 120
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %34, %40
  %46 = load ptr, ptr %35, align 8, !tbaa !30
  %47 = icmp eq ptr %46, null
  br i1 %47, label %74, label %34

48:                                               ; preds = %24
  %49 = and i32 %7, 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = and i32 %7, 16
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5885, ptr noundef nonnull @.str.1) #21
  unreachable

55:                                               ; preds = %40, %16, %13, %51, %48, %27, %17
  %56 = phi i1 [ false, %17 ], [ true, %27 ], [ true, %48 ], [ true, %51 ], [ false, %13 ], [ false, %16 ], [ true, %40 ]
  %57 = phi i1 [ false, %17 ], [ true, %27 ], [ false, %48 ], [ true, %51 ], [ false, %13 ], [ false, %16 ], [ true, %40 ]
  %58 = phi i32 [ 1, %17 ], [ 2, %27 ], [ 1, %48 ], [ 3, %51 ], [ 1, %13 ], [ 1, %16 ], [ 2, %40 ]
  %59 = load i32, ptr @input_location, align 4, !tbaa !26
  %60 = tail call ptr @build_omp_clause(i32 noundef %59, i32 noundef %58) #21
  %61 = getelementptr inbounds %struct.tree_omp_clause, ptr %60, i64 0, i32 6
  store ptr %4, ptr %61, align 8, !tbaa !6
  %62 = load ptr, ptr %1, align 8, !tbaa !11
  %63 = getelementptr inbounds %struct.tree_common, ptr %60, i64 0, i32 1
  store ptr %62, ptr %63, align 8, !tbaa !6
  br i1 %56, label %64, label %68

64:                                               ; preds = %55
  %65 = and i32 %7, 512
  %66 = icmp eq i32 %65, 0
  %67 = or i1 %66, %57
  br i1 %67, label %72, label %68

68:                                               ; preds = %64, %55
  %69 = phi i64 [ 134217728, %55 ], [ 268435456, %64 ]
  %70 = load i64, ptr %60, align 8
  %71 = or i64 %70, %69
  store i64 %71, ptr %60, align 8
  br label %72

72:                                               ; preds = %68, %64
  store ptr %60, ptr %1, align 8, !tbaa !11
  %73 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 19), align 8, !tbaa !169
  tail call void %73(ptr noundef nonnull %60) #21
  br label %74

74:                                               ; preds = %45, %30, %2, %72
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_omp_context(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !33
  tail call void @splay_tree_delete(ptr noundef %3) #21
  %4 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !139
  tail call void @pointer_set_destroy(ptr noundef %5) #21
  tail call void @free(ptr noundef %0) #20
  ret void
}

; Function Attrs: optsize
declare ptr @build_omp_clause(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @splay_tree_delete(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gimple_build_omp_task(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @omp_is_private(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #4 {
  %3 = ptrtoint ptr %1 to i64
  br label %4

4:                                                ; preds = %59, %2
  %5 = phi ptr [ %0, %2 ], [ %60, %59 ]
  %6 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !33
  %8 = tail call ptr @splay_tree_lookup(ptr noundef %7, i64 noundef %3) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %55, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.splay_tree_node_s, ptr %8, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !34
  %13 = and i64 %12, 4
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !11
  %17 = icmp eq ptr %16, %5
  br i1 %17, label %18, label %62

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.24, ptr noundef %20) #21
  store i64 8, ptr %11, align 8, !tbaa !34
  br label %62

21:                                               ; preds = %10
  %22 = and i64 %12, 2
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !11
  %26 = icmp eq ptr %25, %5
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %5, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !28
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load ptr, ptr %25, align 8, !tbaa !30
  %33 = icmp eq ptr %32, %5
  br i1 %33, label %34, label %44

34:                                               ; preds = %31, %24
  %35 = and i64 %12, 16
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = and i64 %12, 64
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37, %34
  %41 = phi ptr [ @.str.25, %34 ], [ @.str.26, %37 ]
  %42 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !6
  tail call void (ptr, ...) @error(ptr noundef nonnull %41, ptr noundef %43) #21
  br label %44

44:                                               ; preds = %40, %21, %27, %31, %37
  %45 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !11
  %46 = icmp eq ptr %45, %5
  br i1 %46, label %62, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %5, i64 0, i32 5
  %49 = load i32, ptr %48, align 8, !tbaa !28
  %50 = icmp eq i32 %49, 3
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load ptr, ptr %45, align 8, !tbaa !30
  %53 = icmp eq ptr %52, %5
  %54 = zext i1 %53 to i8
  br label %62

55:                                               ; preds = %4
  %56 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %5, i64 0, i32 5
  %57 = load i32, ptr %56, align 8, !tbaa !28
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load ptr, ptr %5, align 8, !tbaa !30
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %4

62:                                               ; preds = %59, %55, %44, %51, %47, %15, %18
  %63 = phi i8 [ 1, %18 ], [ 0, %15 ], [ 1, %44 ], [ 0, %47 ], [ %54, %51 ], [ 0, %55 ], [ 0, %59 ]
  ret i8 %63
}

; Function Attrs: optsize
declare ptr @gimple_build_omp_for(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_omp_for_set_index(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !6
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 3475, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %10, i64 %1, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !170
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_omp_for_set_initial(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !6
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 3508, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %10, i64 %1, i32 2
  store ptr %2, ptr %11, align 8, !tbaa !172
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_omp_for_set_cond(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = zext nneg i32 %2 to i64
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !26
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 4076, ptr noundef nonnull @.str.1) #21
  br label %9

9:                                                ; preds = %3, %8
  %10 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !6
  %12 = icmp ugt i64 %11, %1
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 4077, ptr noundef nonnull @.str.1) #21
  br label %14

14:                                               ; preds = %9, %13
  %15 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !6
  %17 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %16, i64 %1
  store i32 %2, ptr %17, align 8, !tbaa !173
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_omp_for_set_final(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !6
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 3541, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %10, i64 %1, i32 3
  store ptr %2, ptr %11, align 8, !tbaa !174
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_omp_for_set_incr(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !6
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 3574, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %10, i64 %1, i32 4
  store ptr %2, ptr %11, align 8, !tbaa !175
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_build_omp_sections(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gimple_build_omp_single(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @goa_stabilize_expr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 {
  %5 = load ptr, ptr %0, align 8, !tbaa !11
  %6 = tail call fastcc zeroext i8 @goa_lhs_expr_p(ptr noundef %5, ptr noundef %2) #20, !range !5
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  store ptr %3, ptr %0, align 8, !tbaa !11
  br label %34

9:                                                ; preds = %4
  %10 = tail call zeroext i8 @is_gimple_val(ptr noundef %5) #21
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %9
  %13 = load i64, ptr %5, align 8
  %14 = and i64 %13, 65535
  %15 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !26
  switch i32 %16, label %30 [
    i32 7, label %21
    i32 5, label %21
    i32 6, label %24
    i32 10, label %17
  ]

17:                                               ; preds = %12
  %18 = trunc i64 %13 to i16
  %19 = add i16 %18, -91
  %20 = icmp ult i16 %19, 2
  br i1 %20, label %21, label %30

21:                                               ; preds = %17, %12, %12
  %22 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  %23 = tail call fastcc i32 @goa_stabilize_expr(ptr noundef nonnull %22, ptr noundef %1, ptr noundef %2, ptr noundef %3) #20
  br label %24

24:                                               ; preds = %21, %12
  %25 = phi i32 [ 0, %12 ], [ %23, %21 ]
  %26 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %27 = tail call fastcc i32 @goa_stabilize_expr(ptr noundef nonnull %26, ptr noundef %1, ptr noundef %2, ptr noundef %3) #20
  %28 = or i32 %27, %25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %17, %12, %24
  %31 = tail call i32 @gimplify_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %32 = icmp ne i32 %31, 1
  %33 = sext i1 %32 to i32
  br label %34

34:                                               ; preds = %24, %30, %9, %8
  %35 = phi i32 [ 1, %8 ], [ 0, %9 ], [ %33, %30 ], [ %28, %24 ]
  ret i32 %35
}

; Function Attrs: optsize
declare ptr @gimple_build_omp_atomic_load(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gimple_build_omp_atomic_store(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @goa_lhs_expr_p(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #4 {
  %3 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef %0) #21
  %4 = load i64, ptr %3, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 47
  br i1 %6, label %7, label %49

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %58, label %11

11:                                               ; preds = %7, %28
  %12 = phi ptr [ %32, %28 ], [ %9, %7 ]
  %13 = phi ptr [ %30, %28 ], [ %1, %7 ]
  %14 = load i64, ptr %12, align 8
  %15 = trunc i64 %14 to i16
  switch i16 %15, label %34 [
    i16 116, label %16
    i16 113, label %16
    i16 117, label %16
  ]

16:                                               ; preds = %11, %11, %11
  %17 = load i64, ptr %13, align 8
  %18 = xor i64 %17, %14
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !6
  %26 = tail call zeroext i8 @types_compatible_p(ptr noundef %23, ptr noundef %25) #21
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  %33 = icmp eq ptr %32, %30
  br i1 %33, label %58, label %11, !llvm.loop !176

34:                                               ; preds = %11, %16, %21
  %35 = load i64, ptr %13, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 121
  br i1 %37, label %38, label %58

38:                                               ; preds = %34
  %39 = load i64, ptr %12, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 121
  br i1 %41, label %42, label %58

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !6
  %45 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !6
  %47 = icmp eq ptr %44, %46
  %48 = zext i1 %47 to i8
  br label %58

49:                                               ; preds = %2
  %50 = load i64, ptr %1, align 8
  %51 = and i64 %50, 65535
  %52 = icmp eq i64 %51, 121
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !6
  %56 = icmp eq ptr %3, %55
  br i1 %56, label %58, label %57

57:                                               ; preds = %53, %49
  br label %58

58:                                               ; preds = %28, %7, %53, %34, %38, %42, %57
  %59 = phi i8 [ 0, %57 ], [ 0, %38 ], [ 0, %34 ], [ %48, %42 ], [ 1, %53 ], [ 1, %7 ], [ 1, %28 ]
  ret i8 %59
}

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @gsi_insert_seq_after_without_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @copy_if_shared_r(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2) #4 {
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !26
  %9 = add i32 %8, -1
  %10 = icmp ult i32 %9, 3
  %11 = and i64 %5, 1099511627776
  %12 = icmp eq i64 %11, 0
  br i1 %10, label %13, label %17

13:                                               ; preds = %3
  br i1 %12, label %15, label %14

14:                                               ; preds = %13
  store i32 0, ptr %1, align 4, !tbaa !26
  br label %22

15:                                               ; preds = %13
  %16 = or disjoint i64 %5, 1099511627776
  store i64 %16, ptr %4, align 8
  br label %22

17:                                               ; preds = %3
  br i1 %12, label %20, label %18

18:                                               ; preds = %17
  %19 = tail call ptr @walk_tree_1(ptr noundef nonnull %0, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #21
  store i32 0, ptr %1, align 4, !tbaa !26
  br label %22

20:                                               ; preds = %17
  %21 = or disjoint i64 %5, 1099511627776
  store i64 %21, ptr %4, align 8
  br label %22

22:                                               ; preds = %18, %20, %14, %15
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noalias noundef ptr @unmark_visited_r(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2) #17 {
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 1099511627776
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = and i64 %5, -1099511627777
  store i64 %9, ptr %4, align 8
  br label %11

10:                                               ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !26
  br label %11

11:                                               ; preds = %10, %8
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !5
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi ptr [ %8, %5 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !21
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #20
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !24
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.16, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !21
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #20
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #16 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !26
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { optsize }
attributes #21 = { nounwind optsize }
attributes #22 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{i8 0, i8 2}
!6 = !{!7, !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!14, !12, i64 0}
!14 = !{!"gimplify_ctx", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !15, i64 64, !7, i64 68, !7, i64 69, !7, i64 70}
!15 = !{!"int", !7, i64 0}
!16 = !{!14, !12, i64 8}
!17 = !{!14, !12, i64 16}
!18 = !{!14, !12, i64 56}
!19 = !{!20, !15, i64 0}
!20 = !{!"VEC_gimple_base", !15, i64 0, !15, i64 4, !7, i64 8}
!21 = !{i32 0, i32 256}
!22 = !{i64 0, i64 8, !11, i64 8, i64 8, !11}
!23 = !{i64 0, i64 8, !11}
!24 = !{!25, !25, i64 0}
!25 = !{!"long", !7, i64 0}
!26 = !{!15, !15, i64 0}
!27 = distinct !{!27, !10}
!28 = !{!29, !15, i64 32}
!29 = !{!"gimplify_omp_ctx", !12, i64 0, !12, i64 8, !12, i64 16, !15, i64 24, !15, i64 28, !15, i64 32}
!30 = !{!29, !12, i64 0}
!31 = distinct !{!31, !10}
!32 = !{!14, !7, i64 69}
!33 = !{!29, !12, i64 8}
!34 = !{!35, !25, i64 8}
!35 = !{!"splay_tree_node_s", !25, i64 0, !25, i64 8, !12, i64 16, !12, i64 24}
!36 = !{!37, !12, i64 352}
!37 = !{!"lang_hooks", !12, i64 0, !25, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !38, i64 240, !39, i64 248, !40, i64 256, !41, i64 272, !42, i64 432, !43, i64 560, !12, i64 584, !12, i64 592, !12, i64 600, !12, i64 608, !12, i64 616, !12, i64 624, !12, i64 632, !12, i64 640, !12, i64 648, !12, i64 656, !12, i64 664, !7, i64 672}
!38 = !{!"lang_hooks_for_tree_inlining", !12, i64 0}
!39 = !{!"lang_hooks_for_callgraph", !12, i64 0}
!40 = !{!"lang_hooks_for_tree_dump", !12, i64 0, !12, i64 8}
!41 = !{!"lang_hooks_for_decls", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152}
!42 = !{!"lang_hooks_for_types", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !7, i64 120}
!43 = !{!"lang_hooks_for_lto", !12, i64 0, !12, i64 8, !12, i64 16}
!44 = !{!45, !12, i64 0}
!45 = !{!"gimple_seq_node_d", !12, i64 0, !12, i64 8, !12, i64 16}
!46 = distinct !{!46, !10}
!47 = !{!48, !12, i64 0}
!48 = !{!"gimple_seq_d", !12, i64 0, !12, i64 8, !12, i64 16}
!49 = !{!50, !12, i64 0}
!50 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16}
!51 = !{!50, !12, i64 8}
!52 = !{!50, !12, i64 16}
!53 = !{!45, !12, i64 16}
!54 = distinct !{!54, !10}
!55 = distinct !{!55, !10}
!56 = !{!57, !15, i64 0}
!57 = !{!"VEC_tree_base", !15, i64 0, !15, i64 4, !7, i64 8}
!58 = !{!48, !12, i64 8}
!59 = !{!37, !12, i64 608}
!60 = !{i32 -2, i32 2}
!61 = !{i32 0, i32 2}
!62 = !{!63, !12, i64 8}
!63 = !{!"constructor_elt_d", !12, i64 0, !12, i64 8}
!64 = distinct !{!64, !10}
!65 = !{i32 -2, i32 1}
!66 = distinct !{!66, !10}
!67 = distinct !{!67, !10}
!68 = distinct !{!68, !10}
!69 = distinct !{!69, !10}
!70 = !{!14, !7, i64 70}
!71 = distinct !{!71, !10}
!72 = distinct !{!72, !10}
!73 = distinct !{!73, !10}
!74 = !{!14, !7, i64 68}
!75 = distinct !{!75, !10}
!76 = !{!14, !12, i64 32}
!77 = !{!14, !12, i64 48}
!78 = distinct !{!78, !10}
!79 = distinct !{!79, !10}
!80 = !{!14, !12, i64 40}
!81 = !{!82, !15, i64 0}
!82 = !{!"VEC_constructor_elt_base", !15, i64 0, !15, i64 4, !7, i64 8}
!83 = distinct !{!83, !10}
!84 = distinct !{!84, !10}
!85 = distinct !{!85, !10}
!86 = distinct !{!86, !10}
!87 = !{i32 0, i32 4}
!88 = !{!14, !15, i64 64}
!89 = !{!14, !12, i64 24}
!90 = !{i64 0, i64 8, !11, i64 8, i64 8, !11, i64 16, i64 8, !11}
!91 = distinct !{!91, !10}
!92 = distinct !{!92, !10}
!93 = !{!37, !12, i64 120}
!94 = !{!29, !15, i64 28}
!95 = !{!37, !12, i64 360}
!96 = !{!29, !15, i64 24}
!97 = distinct !{!97, !10}
!98 = !{!37, !12, i64 384}
!99 = !{!37, !12, i64 368}
!100 = distinct !{!100, !10}
!101 = distinct !{!101, !10}
!102 = distinct !{!102, !10}
!103 = !{!37, !12, i64 448}
!104 = distinct !{!104, !10}
!105 = distinct !{!105, !10}
!106 = distinct !{!106, !10}
!107 = distinct !{!107, !10}
!108 = !{!109, !12, i64 40}
!109 = !{!"cgraph_node", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !110, i64 144, !112, i64 184, !113, i64 224, !114, i64 232, !115, i64 256, !25, i64 288, !15, i64 296, !15, i64 300, !15, i64 304, !15, i64 308, !15, i64 308, !15, i64 308, !15, i64 308, !15, i64 308, !15, i64 308, !15, i64 308, !15, i64 308, !15, i64 309, !15, i64 309}
!110 = !{!"cgraph_local_info", !12, i64 0, !111, i64 8, !15, i64 32, !15, i64 32, !15, i64 32, !15, i64 32, !15, i64 32, !15, i64 32, !15, i64 32, !15, i64 32}
!111 = !{!"inline_summary", !25, i64 0, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20}
!112 = !{!"cgraph_global_info", !25, i64 0, !25, i64 8, !12, i64 16, !15, i64 24, !15, i64 28, !15, i64 32, !7, i64 36}
!113 = !{!"cgraph_rtl_info", !15, i64 0}
!114 = !{!"cgraph_clone_info", !12, i64 0, !12, i64 8, !12, i64 16}
!115 = !{!"cgraph_thunk_info", !25, i64 0, !25, i64 8, !12, i64 16, !7, i64 24, !7, i64 25, !7, i64 26}
!116 = distinct !{!116, !10}
!117 = !{!109, !12, i64 0}
!118 = distinct !{!118, !10}
!119 = distinct !{!119, !10}
!120 = distinct !{!120, !10}
!121 = !{!122, !15, i64 120}
!122 = !{!"function", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !15, i64 104, !15, i64 108, !15, i64 112, !15, i64 116, !15, i64 120, !15, i64 124, !12, i64 128, !15, i64 136, !15, i64 137, !15, i64 138, !15, i64 138, !15, i64 138, !15, i64 138, !15, i64 138, !15, i64 138, !15, i64 138, !15, i64 139, !15, i64 139, !15, i64 139, !15, i64 139, !15, i64 139, !15, i64 139, !15, i64 139}
!123 = distinct !{!123, !10}
!124 = distinct !{!124, !10}
!125 = !{i32 0, i32 65536}
!126 = distinct !{!126, !10}
!127 = distinct !{!127, !10}
!128 = distinct !{!128, !10}
!129 = !{!122, !12, i64 24}
!130 = !{!131, !12, i64 0}
!131 = !{!"gimple_df", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !132, i64 32, !132, i64 48, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !15, i64 96, !133, i64 104}
!132 = !{!"pt_solution", !15, i64 0, !15, i64 0, !15, i64 0, !15, i64 0, !15, i64 0, !15, i64 0, !12, i64 8}
!133 = !{!"ssa_operands", !12, i64 0, !15, i64 8, !15, i64 12, !7, i64 16, !12, i64 24, !12, i64 32}
!134 = distinct !{!134, !10}
!135 = distinct !{!135, !10}
!136 = !{!137, !12, i64 0}
!137 = !{!"gimple_temp_hash_elt", !12, i64 0, !12, i64 8}
!138 = !{!137, !12, i64 8}
!139 = !{!29, !12, i64 16}
!140 = distinct !{!140, !10}
!141 = !{!37, !12, i64 512}
!142 = !{!57, !15, i64 4}
!143 = distinct !{!143, !10}
!144 = distinct !{!144, !10}
!145 = distinct !{!145, !10}
!146 = distinct !{!146, !10}
!147 = !{ptr @is_gimple_mem_rhs_or_call, ptr @is_gimple_reg_rhs_or_call}
!148 = !{!149, !15, i64 72}
!149 = !{!"processor_costs", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !7, i64 16, !15, i64 36, !7, i64 40, !15, i64 60, !15, i64 64, !15, i64 68, !15, i64 72, !15, i64 76, !7, i64 80, !7, i64 92, !15, i64 104, !7, i64 108, !7, i64 120, !15, i64 132, !7, i64 136, !7, i64 144, !15, i64 152, !7, i64 156, !7, i64 168, !15, i64 180, !15, i64 184, !15, i64 188, !15, i64 192, !15, i64 196, !15, i64 200, !15, i64 204, !15, i64 208, !15, i64 212, !15, i64 216, !15, i64 220, !15, i64 224, !7, i64 228, !7, i64 300, !15, i64 372, !15, i64 376, !15, i64 380, !15, i64 384, !15, i64 388, !15, i64 392, !15, i64 396, !15, i64 400, !15, i64 404, !15, i64 408, !15, i64 412}
!150 = !{!151, !15, i64 8}
!151 = !{!"gimplify_init_ctor_preeval_data", !12, i64 0, !15, i64 8}
!152 = distinct !{!152, !10}
!153 = distinct !{!153, !10}
!154 = distinct !{!154, !10}
!155 = distinct !{!155, !10}
!156 = !{!63, !12, i64 0}
!157 = distinct !{!157, !10}
!158 = !{!159, !15, i64 0}
!159 = !{!"VEC_constructor_elt_gc", !82, i64 0}
!160 = !{!151, !12, i64 0}
!161 = distinct !{!161, !10}
!162 = distinct !{!162, !10}
!163 = !{!20, !15, i64 4}
!164 = distinct !{!164, !10}
!165 = !{!37, !12, i64 376}
!166 = distinct !{!166, !10}
!167 = distinct !{!167, !10}
!168 = !{!35, !25, i64 0}
!169 = !{!37, !12, i64 424}
!170 = !{!171, !12, i64 8}
!171 = !{!"gimple_omp_for_iter", !15, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32}
!172 = !{!171, !12, i64 16}
!173 = !{!171, !15, i64 0}
!174 = !{!171, !12, i64 24}
!175 = !{!171, !12, i64 32}
!176 = distinct !{!176, !10}
