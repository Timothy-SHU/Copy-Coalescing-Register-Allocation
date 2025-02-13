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
%struct.tree_statement_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.gimplify_omp_ctx = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.tree_constructor = type { %struct.tree_common, ptr }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.gimple_temp_hash_elt = type { ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_statement_bind = type { %struct.gimple_statement_base, ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.splay_tree_node_s = type { i64, i64, ptr, ptr }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.tree_statement_list_node = type { ptr, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
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
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimplify_init_ctor_preeval_data = type { ptr, i32 }
%struct.processor_costs = type { i32, i32, i32, i32, [5 x i32], i32, [5 x i32], i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, [3 x i32], [3 x i32], i32, [2 x i32], [2 x i32], i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x %struct.stringop_algs], [2 x %struct.stringop_algs], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.stringop_algs = type { i32, [4 x %struct.stringop_strategy] }
%struct.stringop_strategy = type { i32, i32 }
%struct.gimple_statement_wce = type { %struct.gimple_statement_base, ptr }
%struct.gimple_statement_omp_for = type { %struct.gimple_statement_omp, ptr, i64, ptr, ptr }
%struct.gimple_statement_omp = type { %struct.gimple_statement_base, ptr }
%struct.gimple_omp_for_iter = type { i32, ptr, ptr, ptr, ptr }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.gimple_statement_omp_atomic_load = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }

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
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@optimize = external local_unnamed_addr global i32, align 4
@current_function_decl = external local_unnamed_addr global ptr, align 8
@gimplify_omp_ctxp = internal unnamed_addr global ptr null, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"%qE not specified in enclosing parallel\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"enclosing parallel\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"retval\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"vol\00", align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str.8 = private unnamed_addr constant [6 x i8] c"iftmp\00", align 1
@tree_code_length = external local_unnamed_addr constant [0 x i8], align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"too few arguments to function %<va_start%>\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"using result of function returning %<void%>\00", align 1
@flag_merge_constants = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@ix86_cost = external local_unnamed_addr global ptr, align 8
@implicit_built_in_decls = external local_unnamed_addr global [721 x ptr], align 16
@.str.12 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@flag_stack_check = external local_unnamed_addr global i32, align 4
@built_in_decls = external local_unnamed_addr global [721 x ptr], align 16
@.str.13 = private unnamed_addr constant [12 x i8] c"saved_stack\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"invalid lvalue in asm output %d\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"impossible constraint in %<asm%>\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"non-memory input %d must stay in memory\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"memory input %d is not directly addressable\00", align 1
@global_dc = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [8 x i8] c"cleanup\00", align 1
@nonlocal_vlas = internal unnamed_addr global ptr null, align 8
@.str.20 = private unnamed_addr constant [13 x i8] c"firstprivate\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"lastprivate\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"reduction\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"%s variable %qE is private in outer context\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"iteration variable %qE should be private\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"iteration variable %qE should not be firstprivate\00", align 1
@.str.26 = private unnamed_addr constant [47 x i8] c"iteration variable %qE should not be reduction\00", align 1
@timevar_enable = external local_unnamed_addr global i8, align 1
@flag_instrument_function_entry_exit = external local_unnamed_addr global i32, align 4
@gt_ggc_r_gt_gimplify_h = dso_local local_unnamed_addr constant [1 x %struct.ggc_root_tab] zeroinitializer, align 16
@gt_pch_rs_gt_gimplify_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @tmp_var_id_num, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @mark_addressable(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !652 {
  %2 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %0) #20, !range !653
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %10, label %4, !prof !654

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !655
  %8 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %7) #20, !range !653
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %4, !prof !658, !llvm.loop !659

10:                                               ; preds = %4, %1
  %11 = phi ptr [ %0, %1 ], [ %7, %4 ]
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %16 [
    i16 32, label %14
    i16 34, label %14
    i16 36, label %14
  ], !prof !661

14:                                               ; preds = %10, %10, %10
  %15 = or i64 %12, 262144
  store i64 %15, ptr %11, align 8
  br label %16

16:                                               ; preds = %10, %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !662 !PGOFuncName !663 {
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
  ], !prof !664

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: write, inaccessiblemem: none) uwtable
define dso_local void @push_gimplify_context(ptr noundef %0) local_unnamed_addr #2 !prof !665 {
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %2, i8 0, i64 64, i1 false)
  %3 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  store ptr %3, ptr %0, align 8, !tbaa !668
  store ptr %0, ptr @gimplify_ctxp, align 8, !tbaa !666
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pop_gimplify_context(ptr noundef %0) local_unnamed_addr #4 !prof !665 {
  %2 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4, !prof !671

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimplify_ctx, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !672
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !673

8:                                                ; preds = %4
  %9 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef nonnull %6) #20
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !674

11:                                               ; preds = %8, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 220, ptr noundef nonnull @.str.1) #21
  br label %12

12:                                               ; preds = %4, %8, %11
  %13 = getelementptr inbounds %struct.gimplify_ctx, ptr %2, i64 0, i32 1
  tail call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull %13) #20
  %14 = load ptr, ptr %2, align 8, !tbaa !668
  store ptr %14, ptr @gimplify_ctxp, align 8, !tbaa !666
  %15 = icmp eq ptr %0, null
  %16 = getelementptr inbounds %struct.gimplify_ctx, ptr %2, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !675
  br i1 %15, label %19, label %18, !prof !673

18:                                               ; preds = %12
  tail call void @declare_vars(ptr noundef %17, ptr noundef nonnull %0, i8 noundef zeroext 0) #20
  br label %20

19:                                               ; preds = %12
  tail call void @record_vars(ptr noundef %17) #21
  br label %20

20:                                               ; preds = %19, %18
  %21 = getelementptr inbounds %struct.gimplify_ctx, ptr %2, i64 0, i32 7
  %22 = load ptr, ptr %21, align 8, !tbaa !676
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24, !prof !677

24:                                               ; preds = %20
  tail call void @htab_delete(ptr noundef nonnull %22) #21
  br label %25

25:                                               ; preds = %24, %20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_length(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !678 !PGOFuncName !679 {
  %2 = load i32, ptr %0, align 8, !tbaa !680
  ret i32 %2
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_gimple_heap_free(ptr nocapture noundef %0) unnamed_addr #7 !prof !665 !PGOFuncName !682 {
  %2 = load ptr, ptr %0, align 8, !tbaa !666
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !673

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #20
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !666
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @declare_vars(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) local_unnamed_addr #4 !prof !678 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %32, label %5, !prof !683

5:                                                ; preds = %3
  %6 = tail call fastcc i32 @gimple_code(ptr noundef %1) #20, !range !684
  %7 = icmp eq i32 %6, 10
  br i1 %7, label %9, label %8, !prof !685

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 671, ptr noundef nonnull @.str.1) #21
  br label %9

9:                                                ; preds = %5, %8
  %10 = tail call ptr @nreverse(ptr noundef nonnull %0) #21
  %11 = tail call fastcc ptr @gimple_bind_block(ptr noundef %1) #20
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13, !prof !686

13:                                               ; preds = %9
  %14 = load i64, ptr %11, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 4
  br i1 %16, label %18, label %17, !prof !685

17:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 676, ptr noundef nonnull @.str.1) #21
  br label %18

18:                                               ; preds = %13, %17
  %19 = icmp eq i8 %2, 0
  br i1 %19, label %20, label %23, !prof !687

20:                                               ; preds = %9, %18
  %21 = tail call fastcc ptr @gimple_bind_vars(ptr noundef %1) #20
  %22 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 1
  store ptr %21, ptr %22, align 8, !tbaa !655
  tail call fastcc void @gimple_bind_set_vars(ptr noundef %1, ptr noundef %10) #20
  br label %32

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tree_block, ptr %11, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !655
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call ptr @chainon(ptr noundef nonnull %25, ptr noundef %10) #21
  store ptr %28, ptr %24, align 8, !tbaa !655
  br label %32

29:                                               ; preds = %23
  %30 = tail call fastcc ptr @gimple_bind_vars(ptr noundef %1) #20
  %31 = tail call ptr @chainon(ptr noundef %30, ptr noundef %10) #21
  tail call fastcc void @gimple_bind_set_vars(ptr noundef %1, ptr noundef %31) #20
  store ptr %10, ptr %24, align 8, !tbaa !655
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

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @gimple_current_bind_expr() local_unnamed_addr #9 !prof !688 {
  %1 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %2 = getelementptr inbounds %struct.gimplify_ctx, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !672
  %4 = tail call fastcc ptr @VEC_gimple_base_last(ptr noundef %3) #20
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_gimple_base_last(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !688 !PGOFuncName !689 {
  %2 = load i32, ptr %0, align 8, !tbaa !680
  %3 = add i32 %2, -1
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !666
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @gimple_bind_expr_stack() local_unnamed_addr #9 !prof !688 {
  %1 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %2 = getelementptr inbounds %struct.gimplify_ctx, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !672
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @append_to_statement_list(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #4 !prof !690 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %9, label %4, !prof !691

4:                                                ; preds = %2
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65536
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %9, label %8, !prof !692

8:                                                ; preds = %4
  tail call fastcc void @append_to_statement_list_1(ptr noundef nonnull %0, ptr noundef %1) #20
  br label %9

9:                                                ; preds = %8, %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @append_to_statement_list_1(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #4 !prof !693 !PGOFuncName !694 {
  %3 = alloca %struct.tree_stmt_iterator, align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !666
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13, !prof !695

6:                                                ; preds = %2
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 147
  br i1 %9, label %10, label %11, !prof !696

10:                                               ; preds = %6
  store ptr %0, ptr %1, align 8, !tbaa !666
  br label %19

11:                                               ; preds = %6
  %12 = tail call ptr @alloc_stmt_list() #21
  store ptr %12, ptr %1, align 8, !tbaa !666
  br label %13

13:                                               ; preds = %11, %2
  %14 = phi ptr [ %4, %2 ], [ %12, %11 ]
  %15 = tail call fastcc { ptr, ptr } @tsi_last(ptr noundef %14) #20
  %16 = extractvalue { ptr, ptr } %15, 0
  %17 = extractvalue { ptr, ptr } %15, 1
  store ptr %16, ptr %3, align 8, !tbaa.struct !697
  %18 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %17, ptr %18, align 8, !tbaa.struct !698
  call void @tsi_link_after(ptr noundef nonnull %3, ptr noundef %0, i32 noundef 4) #21
  br label %19

19:                                               ; preds = %13, %10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  ret void
}

; Function Attrs: optsize
declare ptr @alloc_stmt_list() local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc { ptr, ptr } @tsi_last(ptr noundef %0) unnamed_addr #1 !prof !699 !PGOFuncName !700 {
  %2 = getelementptr inbounds %struct.tree_statement_list, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !655
  %4 = insertvalue { ptr, ptr } poison, ptr %3, 0
  %5 = insertvalue { ptr, ptr } %4, ptr %0, 1
  ret { ptr, ptr } %5
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: optsize
declare void @tsi_link_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @append_to_statement_list_force(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #4 !prof !701 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %5, label %4, !prof !702

4:                                                ; preds = %2
  tail call fastcc void @append_to_statement_list_1(ptr noundef nonnull %0, ptr noundef %1) #20
  br label %5

5:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimplify_and_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 !prof !703 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !666
  %4 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %3, ptr noundef %1) #20, !range !653
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @gimplify_stmt(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 !prof !704 {
  %3 = load ptr, ptr %1, align 8, !tbaa !666
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7, !prof !705

5:                                                ; preds = %2
  %6 = tail call ptr @gimple_seq_alloc() #21
  store ptr %6, ptr %1, align 8, !tbaa !666
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi ptr [ %6, %5 ], [ %3, %2 ]
  %9 = tail call fastcc ptr @gimple_seq_last(ptr noundef %8) #20
  %10 = tail call i32 @gimplify_expr(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull @is_gimple_stmt, i32 noundef 0) #20
  %11 = load ptr, ptr %1, align 8, !tbaa !666
  %12 = tail call fastcc ptr @gimple_seq_last(ptr noundef %11) #20
  %13 = icmp ne ptr %9, %12
  %14 = zext i1 %13 to i8
  ret i8 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @create_tmp_var_name(ptr noundef %0) local_unnamed_addr #4 !prof !706 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !707

3:                                                ; preds = %1
  store ptr %0, ptr @libiberty_optr, align 8, !tbaa !666
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #20
  %5 = add i64 %4, 1
  store i64 %5, ptr @libiberty_len, align 8, !tbaa !708
  %6 = alloca i8, i64 %5, align 16
  store ptr %6, ptr @libiberty_nptr, align 8, !tbaa !666
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %6, ptr nonnull align 1 %0, i64 %5, i1 false)
  %7 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #20
  %8 = trunc i64 %7 to i32
  call fastcc void @remove_suffix(ptr noundef nonnull %6, i32 noundef %8) #20
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi ptr [ %6, %3 ], [ null, %1 ]
  %11 = icmp eq ptr %10, null
  %12 = select i1 %11, ptr @.str.2, ptr %10, !prof !707
  %13 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #20
  %14 = add i64 %13, 32
  %15 = alloca i8, i64 %14, align 16
  %16 = load i32, ptr @tmp_var_id_num, align 4, !tbaa !710
  %17 = add i32 %16, 1
  store i32 %17, ptr @tmp_var_id_num, align 4, !tbaa !710
  %18 = zext i32 %16 to i64
  %19 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %12, i64 noundef %18) #20
  %20 = call ptr @get_identifier(ptr noundef nonnull %15) #21
  ret ptr %20
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @remove_suffix(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #12 !prof !706 !PGOFuncName !711 {
  %3 = icmp sgt i32 %1, 2
  br i1 %3, label %4, label %21, !prof !712

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
  br i1 %12, label %21, label %13, !prof !713, !llvm.loop !714

13:                                               ; preds = %4, %10
  %14 = phi i64 [ 2, %4 ], [ %11, %10 ]
  %15 = sub nsw i64 %5, %14
  %16 = getelementptr inbounds i8, ptr %0, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !655
  %18 = icmp eq i8 %17, 46
  br i1 %18, label %19, label %10, !prof !715

19:                                               ; preds = %13
  %20 = getelementptr inbounds i8, ptr %0, i64 %15
  store i8 0, ptr %20, align 1, !tbaa !655
  br label %21

21:                                               ; preds = %10, %2, %19
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: optsize
declare ptr @get_identifier(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @create_tmp_var_raw(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 !prof !716 {
  %3 = tail call ptr @build_qualified_type(ptr noundef %0, i32 noundef 0) #21
  %4 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !655
  %6 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 4
  store ptr %5, ptr %6, align 8, !tbaa !655
  %7 = load i32, ptr @input_location, align 4, !tbaa !710
  %8 = icmp eq ptr %1, null
  br i1 %8, label %11, label %9, !prof !717

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
define dso_local noundef ptr @create_tmp_var(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 !prof !718 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 262144
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %10, !prof !719

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !655
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !720

10:                                               ; preds = %6, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 504, ptr noundef nonnull @.str.1) #21
  br label %11

11:                                               ; preds = %6, %10
  %12 = tail call ptr @create_tmp_var_raw(ptr noundef nonnull %0, ptr noundef %1) #20
  tail call void @gimple_add_tmp_var(ptr noundef %12) #20
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimple_add_tmp_var(ptr noundef %0) local_unnamed_addr #4 !prof !721 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !655
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %10, !prof !722

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 256
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10, !prof !722

10:                                               ; preds = %5, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 727, ptr noundef nonnull @.str.1) #21
  br label %11

11:                                               ; preds = %5, %10
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !655
  %14 = tail call i32 @host_integerp(ptr noundef %13, i32 noundef 1) #21
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17, !prof !723

16:                                               ; preds = %11
  tail call fastcc void @force_constant_size(ptr noundef nonnull %0) #20
  br label %17

17:                                               ; preds = %16, %11
  %18 = load ptr, ptr @current_function_decl, align 8, !tbaa !666
  %19 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  store ptr %18, ptr %19, align 8, !tbaa !655
  %20 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %21 = load i32, ptr %20, align 8
  %22 = or i32 %21, 256
  store i32 %22, ptr %20, align 8
  %23 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %24 = icmp eq ptr %23, null
  br i1 %24, label %39, label %25, !prof !724

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.gimplify_ctx, ptr %23, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !675
  store ptr %27, ptr %2, align 8, !tbaa !655
  store ptr %0, ptr %26, align 8, !tbaa !675
  %28 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !666
  %29 = icmp eq ptr %28, null
  br i1 %29, label %46, label %30, !prof !725

30:                                               ; preds = %25, %35
  %31 = phi ptr [ %36, %35 ], [ %28, %25 ]
  %32 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %31, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !726
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load ptr, ptr %31, align 8, !tbaa !728
  %37 = icmp eq ptr %36, null
  br i1 %37, label %46, label %30, !llvm.loop !729

38:                                               ; preds = %30
  tail call fastcc void @omp_add_variable(ptr noundef nonnull %31, ptr noundef %0, i32 noundef 129) #20
  br label %46

39:                                               ; preds = %17
  %40 = load ptr, ptr @cfun, align 8, !tbaa !666
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42, !prof !730

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
define dso_local ptr @get_formal_tmp_var(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 !prof !731 {
  %3 = tail call fastcc ptr @internal_get_tmp_var(ptr noundef %0, ptr noundef %1, ptr noundef null, i8 noundef zeroext 1) #20
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @internal_get_tmp_var(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #4 !prof !732 !PGOFuncName !733 {
  %5 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8, !tbaa !666
  %6 = call i32 @gimplify_expr(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_reg_rhs_or_call, i32 noundef 1) #20
  %7 = load ptr, ptr %5, align 8, !tbaa !666
  %8 = call fastcc ptr @lookup_tmp_var(ptr noundef %7, i8 noundef zeroext %3) #20
  %9 = icmp eq i8 %3, 0
  %10 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !655
  br i1 %9, label %22, label %12, !prof !734

12:                                               ; preds = %4
  %13 = load i64, ptr %11, align 8
  %14 = trunc i64 %13 to i32
  %15 = and i32 %14, 65535
  %16 = add nsw i32 %15, -13
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %18, label %22, !prof !735

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.tree_decl_common, ptr %8, i64 0, i32 2
  %20 = load i64, ptr %19, align 8
  %21 = or i64 %20, 134217728
  store i64 %21, ptr %19, align 8
  br label %22

22:                                               ; preds = %4, %12, %18
  %23 = load ptr, ptr %5, align 8, !tbaa !666
  %24 = call ptr @unshare_expr(ptr noundef %23) #20
  %25 = call ptr @build2_stat(i32 noundef 54, ptr noundef %11, ptr noundef nonnull %8, ptr noundef %24) #21
  %26 = load ptr, ptr %5, align 8, !tbaa !666
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 65535
  %29 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !710
  %31 = add i32 %30, -4
  %32 = icmp ult i32 %31, 7
  br i1 %32, label %33, label %37, !prof !736

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.tree_exp, ptr %26, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !655
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %39, !prof !737

37:                                               ; preds = %22, %33
  %38 = load i32, ptr @input_location, align 4, !tbaa !710
  br label %39

39:                                               ; preds = %33, %37
  %40 = phi i32 [ %38, %37 ], [ %35, %33 ]
  %41 = getelementptr inbounds %struct.tree_exp, ptr %25, i64 0, i32 1
  store i32 %40, ptr %41, align 8, !tbaa !655
  call void @gimplify_and_add(ptr noundef nonnull %25, ptr noundef %1) #20
  call void @ggc_free(ptr noundef nonnull %25) #21
  %42 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %43 = getelementptr inbounds %struct.gimplify_ctx, ptr %42, i64 0, i32 10
  %44 = load i8, ptr %43, align 1, !tbaa !738
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46, !prof !739

46:                                               ; preds = %39
  %47 = load ptr, ptr %1, align 8, !tbaa !666
  %48 = call fastcc ptr @gimple_seq_last_stmt(ptr noundef %47) #20
  %49 = call ptr @gimple_get_lhs(ptr noundef %48) #21
  br label %50

50:                                               ; preds = %46, %39
  %51 = phi ptr [ %49, %46 ], [ %8, %39 ]
  ret ptr %51
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @gimplify_expr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #4 !prof !740 {
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
  store ptr null, ptr %7, align 8, !tbaa !666
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  store ptr null, ptr %8, align 8, !tbaa !666
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #22
  %18 = load ptr, ptr %0, align 8, !tbaa !666
  %19 = icmp eq ptr %18, null
  br i1 %19, label %737, label %20, !prof !741

20:                                               ; preds = %5
  %21 = icmp eq ptr %3, @is_gimple_stmt
  %22 = icmp eq ptr %1, null
  %23 = and i1 %22, %21
  br i1 %23, label %24, label %25, !prof !742

24:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6467, ptr noundef nonnull @.str.1) #21
  br label %30

25:                                               ; preds = %20
  %26 = icmp eq ptr %3, @is_gimple_reg
  br i1 %26, label %27, label %30, !prof !743

27:                                               ; preds = %25
  %28 = and i32 %4, 3
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %54, label %56, !prof !744

30:                                               ; preds = %24, %25
  %31 = insertelement <8 x ptr> poison, ptr %3, i64 0
  %32 = shufflevector <8 x ptr> %31, <8 x ptr> poison, <8 x i32> zeroinitializer
  %33 = icmp eq <8 x ptr> %32, <ptr @is_gimple_call_addr, ptr @is_gimple_val, ptr @is_gimple_condexpr, ptr @is_gimple_mem_rhs, ptr @is_gimple_mem_rhs_or_call, ptr @is_gimple_reg_rhs, ptr @is_gimple_reg_rhs_or_call, ptr @is_gimple_asm_val>
  %34 = bitcast <8 x i1> %33 to i8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %39, label %36, !prof !745

36:                                               ; preds = %30
  %37 = and i32 %4, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %54, label %56, !prof !746

39:                                               ; preds = %30
  %40 = icmp eq ptr %3, @is_gimple_min_lval
  %41 = icmp eq ptr %3, @is_gimple_lvalue
  %42 = or i1 %40, %41
  br i1 %42, label %43, label %46, !prof !747

43:                                               ; preds = %39
  %44 = and i32 %4, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %54, label %56, !prof !748

46:                                               ; preds = %39
  %47 = icmp eq ptr %3, @is_gimple_addressable
  br i1 %47, label %48, label %51, !prof !749

48:                                               ; preds = %46
  %49 = and i32 %4, 3
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %56, !prof !750

51:                                               ; preds = %46
  br i1 %21, label %52, label %54, !prof !751

52:                                               ; preds = %51
  %53 = icmp eq i32 %4, 0
  br i1 %53, label %56, label %54, !prof !751

54:                                               ; preds = %51, %52, %48, %43, %36, %27
  %55 = phi i32 [ 6471, %27 ], [ 6480, %36 ], [ 6483, %43 ], [ 6485, %48 ], [ 6487, %52 ], [ 6493, %51 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %55, ptr noundef nonnull @.str.1) #21
  br label %56

56:                                               ; preds = %54, %36, %48, %52, %43, %27
  br i1 %22, label %57, label %58, !prof !752

57:                                               ; preds = %56
  br label %58

58:                                               ; preds = %57, %56
  %59 = phi ptr [ %7, %57 ], [ %1, %56 ]
  %60 = icmp eq ptr %2, null
  %61 = select i1 %60, ptr %8, ptr %2, !prof !753
  %62 = load ptr, ptr %59, align 8, !tbaa !666
  call fastcc void @gsi_last(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef %62) #20
  %63 = load ptr, ptr %61, align 8, !tbaa !666
  call fastcc void @gsi_last(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef %63) #20
  %64 = load i32, ptr @input_location, align 4, !tbaa !710
  %65 = load ptr, ptr @global_trees, align 16, !tbaa !666
  %66 = icmp eq ptr %18, %65
  %67 = load ptr, ptr %0, align 8, !tbaa !666
  br i1 %66, label %80, label %68, !prof !752

68:                                               ; preds = %58
  %69 = load i64, ptr %67, align 8
  %70 = and i64 %69, 65535
  %71 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !710
  %73 = add i32 %72, -4
  %74 = icmp ult i32 %73, 7
  br i1 %74, label %75, label %80, !prof !754

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.tree_exp, ptr %67, i64 0, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !655
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %80, label %79, !prof !755

79:                                               ; preds = %75
  store i32 %77, ptr @input_location, align 4, !tbaa !710
  br label %80

80:                                               ; preds = %68, %79, %75, %58
  %81 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef %67) #21
  store ptr %81, ptr %0, align 8, !tbaa !666
  %82 = load ptr, ptr @global_trees, align 16, !tbaa !666
  %83 = icmp eq ptr %81, %82
  br i1 %83, label %569, label %84, !prof !756

84:                                               ; preds = %80
  %85 = and i32 %4, 2
  %86 = icmp eq i32 %4, 0
  br label %87

87:                                               ; preds = %84, %562
  %88 = phi ptr [ %82, %84 ], [ %565, %562 ]
  %89 = phi ptr [ %81, %84 ], [ %564, %562 ]
  %90 = getelementptr inbounds %struct.tree_common, ptr %89, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !655
  %92 = icmp ne ptr %91, null
  %93 = icmp eq ptr %91, %88
  %94 = and i1 %92, %93
  br i1 %94, label %569, label %95, !prof !757

95:                                               ; preds = %87
  %96 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 39), align 8, !tbaa !758
  %97 = call i32 %96(ptr noundef nonnull %0, ptr noundef nonnull %59, ptr noundef nonnull %61) #21
  switch i32 %97, label %567 [
    i32 0, label %100
    i32 -1, label %98
  ], !prof !766

98:                                               ; preds = %95
  %99 = load ptr, ptr %0, align 8, !tbaa !666
  br label %105

100:                                              ; preds = %95
  %101 = load ptr, ptr %0, align 8, !tbaa !666
  %102 = icmp eq ptr %101, null
  br i1 %102, label %572, label %103

103:                                              ; preds = %100
  %104 = icmp eq ptr %101, %89
  br i1 %104, label %105, label %562

105:                                              ; preds = %98, %103
  %106 = phi ptr [ %99, %98 ], [ %89, %103 ]
  %107 = load i64, ptr %106, align 8
  %108 = trunc i64 %107 to i16
  switch i16 %108, label %502 [
    i16 128, label %109
    i16 127, label %109
    i16 126, label %109
    i16 125, label %109
    i16 45, label %113
    i16 46, label %113
    i16 43, label %113
    i16 44, label %113
    i16 41, label %113
    i16 118, label %113
    i16 56, label %116
    i16 59, label %122
    i16 2, label %130
    i16 52, label %131
    i16 119, label %135
    i16 53, label %136
    i16 54, label %136
    i16 91, label %140
    i16 92, label %140
    i16 96, label %141
    i16 121, label %154
    i16 129, label %156
    i16 116, label %158
    i16 113, label %158
    i16 77, label %188
    i16 47, label %193
    i16 48, label %197
    i16 49, label %197
    i16 23, label %572
    i16 24, label %572
    i16 25, label %572
    i16 28, label %572
    i16 26, label %572
    i16 27, label %572
    i16 33, label %202
    i16 132, label %207
    i16 58, label %209
    i16 137, label %211
    i16 138, label %212
    i16 136, label %214
    i16 134, label %215
    i16 185, label %232
    i16 133, label %243
    i16 139, label %255
    i16 135, label %256
    i16 51, label %258
    i16 120, label %286
    i16 42, label %288
    i16 152, label %300
    i16 117, label %323
    i16 140, label %324
    i16 131, label %326
    i16 130, label %326
    i16 61, label %355
    i16 55, label %357
    i16 142, label %359
    i16 143, label %367
    i16 50, label %380
    i16 30, label %390
    i16 147, label %392
    i16 150, label %394
    i16 32, label %402
    i16 34, label %402
    i16 36, label %404
    i16 141, label %572
    i16 153, label %409
    i16 154, label %410
    i16 155, label %411
    i16 156, label %413
    i16 157, label %413
    i16 158, label %414
    i16 159, label %414
    i16 160, label %414
    i16 161, label %414
    i16 162, label %437
    i16 66, label %439
  ], !prof !767

109:                                              ; preds = %105, %105, %105, %105
  %110 = icmp ne i32 %4, 0
  %111 = zext i1 %110 to i8
  %112 = call fastcc i32 @gimplify_self_mod_expr(ptr noundef nonnull %0, ptr noundef nonnull %59, ptr noundef nonnull %61, i8 noundef zeroext %111) #20, !range !768
  br label %554

113:                                              ; preds = %105, %105, %105, %105, %105, %105
  %114 = call i32 @llvm.umax.i32(i32 %4, i32 1)
  %115 = call fastcc i32 @gimplify_compound_lval(ptr noundef nonnull %0, ptr noundef nonnull %59, ptr noundef nonnull %61, i32 noundef %114) #20
  br label %554

116:                                              ; preds = %105
  %117 = icmp eq i32 %4, 2
  %118 = call fastcc i32 @gimplify_cond_expr(ptr noundef nonnull %0, ptr noundef nonnull %59, i32 noundef %4) #20
  br i1 %117, label %119, label %554, !prof !769

119:                                              ; preds = %116
  %120 = load ptr, ptr %0, align 8, !tbaa !666
  %121 = call ptr @get_initialized_tmp_var(ptr noundef %120, ptr noundef nonnull %59, ptr noundef nonnull %61) #20
  store ptr %121, ptr %0, align 8, !tbaa !666
  call void @mark_addressable(ptr noundef %121) #20
  br label %554

122:                                              ; preds = %105
  %123 = icmp ne i32 %4, 0
  %124 = zext i1 %123 to i8
  %125 = icmp eq i32 %4, 2
  %126 = call fastcc i32 @gimplify_call_expr(ptr noundef nonnull %0, ptr noundef nonnull %59, i8 noundef zeroext %124) #20
  br i1 %125, label %127, label %554, !prof !770

127:                                              ; preds = %122
  %128 = load ptr, ptr %0, align 8, !tbaa !666
  %129 = call ptr @get_initialized_tmp_var(ptr noundef %128, ptr noundef nonnull %59, ptr noundef nonnull %61) #20
  store ptr %129, ptr %0, align 8, !tbaa !666
  call void @mark_addressable(ptr noundef %129) #20
  br label %554

130:                                              ; preds = %105
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6607, ptr noundef nonnull @.str.1) #21
  br label %131

131:                                              ; preds = %105, %130
  %132 = icmp ne i32 %4, 0
  %133 = zext i1 %132 to i8
  %134 = call fastcc i32 @gimplify_compound_expr(ptr noundef nonnull %0, ptr noundef nonnull %59, i8 noundef zeroext %133) #20, !range !771
  br label %554

135:                                              ; preds = %105
  call fastcc void @gimplify_compound_literal_expr(ptr noundef nonnull %0, ptr noundef nonnull %59) #20
  br label %557

136:                                              ; preds = %105, %105
  %137 = icmp ne i32 %4, 0
  %138 = zext i1 %137 to i8
  %139 = call fastcc i32 @gimplify_modify_expr(ptr noundef nonnull %0, ptr noundef nonnull %59, ptr noundef nonnull %61, i8 noundef zeroext %138) #20
  br label %554

140:                                              ; preds = %105, %105
  call fastcc void @gimplify_boolean_expr(ptr noundef nonnull %0, i32 noundef %64) #20
  br label %557

141:                                              ; preds = %105
  %142 = getelementptr inbounds %struct.tree_common, ptr %106, i64 0, i32 2
  %143 = load ptr, ptr %142, align 8, !tbaa !655
  %144 = load i64, ptr %143, align 8
  %145 = and i64 %144, 65535
  %146 = icmp eq i64 %145, 7
  br i1 %146, label %150, label %147, !prof !772

147:                                              ; preds = %141
  %148 = call ptr @gimple_boolify(ptr noundef nonnull %106) #20
  %149 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %143, ptr noundef %148) #21
  store ptr %149, ptr %0, align 8, !tbaa !666
  br label %557

150:                                              ; preds = %141
  %151 = getelementptr inbounds %struct.tree_exp, ptr %106, i64 0, i32 3
  %152 = call i32 @gimplify_expr(ptr noundef nonnull %151, ptr noundef nonnull %59, ptr noundef nonnull %61, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %153 = load ptr, ptr %0, align 8, !tbaa !666
  call void @recalculate_side_effects(ptr noundef %153) #21
  br label %554

154:                                              ; preds = %105
  %155 = call fastcc i32 @gimplify_addr_expr(ptr noundef nonnull %0, ptr noundef nonnull %59, ptr noundef nonnull %61) #20
  br label %554

156:                                              ; preds = %105
  %157 = call i32 @gimplify_va_arg_expr(ptr noundef nonnull %0, ptr noundef nonnull %59, ptr noundef nonnull %61) #21
  br label %554

158:                                              ; preds = %105, %105
  %159 = and i64 %107, 65535
  %160 = icmp eq i64 %159, 116
  br i1 %160, label %161, label %174, !prof !773

161:                                              ; preds = %158
  %162 = getelementptr inbounds %struct.tree_common, ptr %106, i64 0, i32 2
  %163 = load ptr, ptr %162, align 8, !tbaa !655
  %164 = load i64, ptr %163, align 8
  %165 = and i64 %164, 65535
  %166 = icmp eq i64 %165, 19
  br i1 %166, label %167, label %174, !prof !774

167:                                              ; preds = %161
  %168 = getelementptr inbounds %struct.tree_exp, ptr %106, i64 0, i32 3
  %169 = load ptr, ptr %168, align 8, !tbaa !655
  %170 = call i32 @integer_zerop(ptr noundef %169) #21
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %572, !prof !775

172:                                              ; preds = %167
  %173 = load ptr, ptr %0, align 8, !tbaa !666
  br label %174

174:                                              ; preds = %172, %161, %158
  %175 = phi ptr [ %173, %172 ], [ %106, %161 ], [ %106, %158 ]
  %176 = getelementptr inbounds %struct.tree_common, ptr %175, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !655
  %178 = load i64, ptr %177, align 8
  %179 = and i64 %178, 65535
  %180 = icmp eq i64 %179, 19
  %181 = or i1 %86, %180
  br i1 %181, label %182, label %185, !prof !776

182:                                              ; preds = %174
  %183 = getelementptr inbounds %struct.tree_exp, ptr %175, i64 0, i32 3
  %184 = load ptr, ptr %183, align 8, !tbaa !655
  store ptr %184, ptr %0, align 8, !tbaa !666
  br label %557

185:                                              ; preds = %174
  call fastcc void @gimplify_conversion(ptr noundef nonnull %0) #20
  %186 = load ptr, ptr %0, align 8, !tbaa !666
  %187 = icmp eq ptr %186, %89
  br i1 %187, label %188, label %557, !prof !777

188:                                              ; preds = %185, %105
  %189 = phi ptr [ %89, %185 ], [ %106, %105 ]
  %190 = getelementptr inbounds %struct.tree_exp, ptr %189, i64 0, i32 3
  %191 = call i32 @gimplify_expr(ptr noundef nonnull %190, ptr noundef nonnull %59, ptr noundef nonnull %61, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %192 = load ptr, ptr %0, align 8, !tbaa !666
  call void @recalculate_side_effects(ptr noundef %192) #21
  br label %554

193:                                              ; preds = %105
  %194 = load i32, ptr @input_location, align 4, !tbaa !710
  %195 = call ptr @fold_indirect_ref_loc(i32 noundef %194, ptr noundef nonnull %106) #21
  store ptr %195, ptr %0, align 8, !tbaa !666
  %196 = icmp eq ptr %195, %89
  br i1 %196, label %197, label %557, !prof !778

197:                                              ; preds = %193, %105, %105
  %198 = phi ptr [ %89, %193 ], [ %106, %105 ], [ %106, %105 ]
  %199 = getelementptr inbounds %struct.tree_exp, ptr %198, i64 0, i32 3
  %200 = call i32 @gimplify_expr(ptr noundef nonnull %199, ptr noundef nonnull %59, ptr noundef nonnull %61, ptr noundef nonnull @is_gimple_reg, i32 noundef 1) #20
  %201 = load ptr, ptr %0, align 8, !tbaa !666
  call void @recalculate_side_effects(ptr noundef %201) #21
  br label %554

202:                                              ; preds = %105
  %203 = icmp eq i32 %85, 0
  br i1 %203, label %204, label %629

204:                                              ; preds = %202
  %205 = getelementptr inbounds %struct.tree_decl_common, ptr %106, i64 0, i32 5
  %206 = load ptr, ptr %205, align 8, !tbaa !655
  store ptr %206, ptr %0, align 8, !tbaa !666
  br label %557

207:                                              ; preds = %105
  %208 = call fastcc i32 @gimplify_decl_expr(ptr noundef nonnull %0, ptr noundef nonnull %59) #20, !range !768
  br label %554

209:                                              ; preds = %105
  %210 = call fastcc i32 @gimplify_bind_expr(ptr noundef nonnull %0, ptr noundef nonnull %59) #20, !range !771
  br label %554

211:                                              ; preds = %105
  call fastcc void @gimplify_loop_expr(ptr noundef nonnull %0, ptr noundef nonnull %59) #20
  br label %572

212:                                              ; preds = %105
  %213 = call fastcc i32 @gimplify_switch_expr(ptr noundef nonnull %0, ptr noundef nonnull %59) #20
  br label %554

214:                                              ; preds = %105
  call fastcc void @gimplify_exit_expr(ptr noundef nonnull %0) #20
  br label %557

215:                                              ; preds = %105
  %216 = getelementptr inbounds %struct.tree_exp, ptr %106, i64 0, i32 3
  %217 = load ptr, ptr %216, align 8, !tbaa !655
  %218 = load i64, ptr %217, align 8
  %219 = and i64 %218, 65535
  %220 = icmp eq i64 %219, 30
  br i1 %220, label %228, label %221, !prof !779

221:                                              ; preds = %215
  %222 = call i32 @gimplify_expr(ptr noundef nonnull %216, ptr noundef nonnull %59, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %223 = icmp eq i32 %222, -2
  br i1 %223, label %569, label %224

224:                                              ; preds = %221
  %225 = load ptr, ptr %0, align 8, !tbaa !666
  %226 = getelementptr inbounds %struct.tree_exp, ptr %225, i64 0, i32 3
  %227 = load ptr, ptr %226, align 8, !tbaa !655
  br label %228

228:                                              ; preds = %224, %215
  %229 = phi ptr [ %227, %224 ], [ %217, %215 ]
  %230 = phi i32 [ %222, %224 ], [ 0, %215 ]
  %231 = call ptr @gimple_build_goto(ptr noundef %229) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %59, ptr noundef %231) #20
  br label %554

232:                                              ; preds = %105
  %233 = getelementptr inbounds %struct.tree_exp, ptr %106, i64 0, i32 3
  %234 = load ptr, ptr %233, align 8, !tbaa !655
  %235 = call i64 @tree_low_cst(ptr noundef %234, i32 noundef 0) #21
  %236 = trunc i64 %235 to i32
  %237 = load ptr, ptr %0, align 8, !tbaa !666
  %238 = load i64, ptr %237, align 8
  %239 = trunc i64 %238 to i32
  %240 = lshr i32 %239, 18
  %241 = and i32 %240, 1
  %242 = call ptr @gimple_build_predict(i32 noundef %236, i32 noundef %241) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %59, ptr noundef %242) #20
  br label %572

243:                                              ; preds = %105
  %244 = getelementptr inbounds %struct.tree_exp, ptr %106, i64 0, i32 3
  %245 = load ptr, ptr %244, align 8, !tbaa !655
  %246 = call ptr @decl_function_context(ptr noundef %245) #21
  %247 = load ptr, ptr @current_function_decl, align 8, !tbaa !666
  %248 = icmp eq ptr %246, %247
  br i1 %248, label %250, label %249, !prof !780

249:                                              ; preds = %243
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6758, ptr noundef nonnull @.str.1) #21
  br label %250

250:                                              ; preds = %243, %249
  %251 = load ptr, ptr %0, align 8, !tbaa !666
  %252 = getelementptr inbounds %struct.tree_exp, ptr %251, i64 0, i32 3
  %253 = load ptr, ptr %252, align 8, !tbaa !655
  %254 = call ptr @gimple_build_label(ptr noundef %253) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %59, ptr noundef %254) #20
  br label %572

255:                                              ; preds = %105
  call fastcc void @gimplify_case_label_expr(ptr noundef nonnull %0, ptr noundef nonnull %59) #20
  br label %572

256:                                              ; preds = %105
  %257 = call fastcc i32 @gimplify_return_expr(ptr noundef nonnull %106, ptr noundef nonnull %59) #20, !range !768
  br label %554

258:                                              ; preds = %105
  switch i32 %4, label %572 [
    i32 0, label %259
    i32 2, label %284
  ]

259:                                              ; preds = %258
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #22
  store ptr null, ptr %12, align 8, !tbaa !666
  %260 = getelementptr inbounds %struct.tree_constructor, ptr %106, i64 0, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !655
  %262 = call fastcc i32 @VEC_constructor_elt_base_iterate(ptr noundef %261, i32 noundef 0, ptr noundef nonnull %11) #20, !range !771
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %282, label %264

264:                                              ; preds = %259, %273
  %265 = phi i32 [ %274, %273 ], [ 0, %259 ]
  %266 = load ptr, ptr %11, align 8, !tbaa !666
  %267 = getelementptr inbounds %struct.constructor_elt_d, ptr %266, i64 0, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !781
  %269 = load i64, ptr %268, align 8
  %270 = and i64 %269, 65536
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %264
  call void @append_to_statement_list(ptr noundef nonnull %268, ptr noundef nonnull %12) #20
  br label %273

273:                                              ; preds = %264, %272
  %274 = add i32 %265, 1
  %275 = load ptr, ptr %0, align 8, !tbaa !666
  %276 = getelementptr inbounds %struct.tree_constructor, ptr %275, i64 0, i32 1
  %277 = load ptr, ptr %276, align 8, !tbaa !655
  %278 = call fastcc i32 @VEC_constructor_elt_base_iterate(ptr noundef %277, i32 noundef %274, ptr noundef nonnull %11) #20, !range !771
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %264, !llvm.loop !783

280:                                              ; preds = %273
  %281 = load ptr, ptr %12, align 8, !tbaa !666
  br label %282

282:                                              ; preds = %280, %259
  %283 = phi ptr [ %281, %280 ], [ null, %259 ]
  store ptr %283, ptr %0, align 8, !tbaa !666
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #22
  br label %557

284:                                              ; preds = %258
  %285 = call ptr @get_initialized_tmp_var(ptr noundef nonnull %106, ptr noundef nonnull %59, ptr noundef nonnull %61) #20
  store ptr %285, ptr %0, align 8, !tbaa !666
  call void @mark_addressable(ptr noundef %285) #20
  br label %557

286:                                              ; preds = %105
  %287 = call fastcc i32 @gimplify_save_expr(ptr noundef nonnull %0, ptr noundef nonnull %59, ptr noundef nonnull %61) #20
  br label %554

288:                                              ; preds = %105
  %289 = getelementptr inbounds %struct.tree_exp, ptr %106, i64 0, i32 3
  %290 = call i32 @gimplify_expr(ptr noundef nonnull %289, ptr noundef nonnull %59, ptr noundef nonnull %61, ptr noundef nonnull @is_gimple_lvalue, i32 noundef 3) #20
  %291 = load ptr, ptr %0, align 8, !tbaa !666
  %292 = getelementptr inbounds %struct.tree_exp, ptr %291, i64 1
  %293 = call i32 @gimplify_expr(ptr noundef nonnull %292, ptr noundef nonnull %59, ptr noundef nonnull %61, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %294 = load ptr, ptr %0, align 8, !tbaa !666
  %295 = getelementptr inbounds %struct.tree_exp, ptr %294, i64 1, i32 0, i32 1
  %296 = call i32 @gimplify_expr(ptr noundef nonnull %295, ptr noundef nonnull %59, ptr noundef nonnull %61, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %297 = load ptr, ptr %0, align 8, !tbaa !666
  call void @recalculate_side_effects(ptr noundef %297) #21
  %298 = call i32 @llvm.smin.i32(i32 %293, i32 %296)
  %299 = call i32 @llvm.smin.i32(i32 %290, i32 %298)
  br label %554

300:                                              ; preds = %105
  %301 = getelementptr inbounds %struct.tree_exp, ptr %106, i64 0, i32 3
  %302 = load ptr, ptr %301, align 8, !tbaa !655
  %303 = icmp eq ptr %302, null
  br i1 %303, label %306, label %304

304:                                              ; preds = %300
  %305 = call i32 @gimplify_expr(ptr noundef nonnull %301, ptr noundef nonnull %59, ptr noundef nonnull %61, ptr noundef nonnull @is_gimple_lvalue, i32 noundef 3) #20
  br label %312

306:                                              ; preds = %300
  %307 = getelementptr inbounds %struct.tree_exp, ptr %106, i64 1
  %308 = load ptr, ptr %307, align 8, !tbaa !655
  %309 = icmp eq ptr %308, null
  br i1 %309, label %312, label %310

310:                                              ; preds = %306
  %311 = call i32 @gimplify_expr(ptr noundef nonnull %307, ptr noundef nonnull %59, ptr noundef nonnull %61, ptr noundef nonnull @is_gimple_val, i32 noundef 3) #20
  br label %312

312:                                              ; preds = %306, %310, %304
  %313 = phi i32 [ %305, %304 ], [ %311, %310 ], [ 1, %306 ]
  %314 = load ptr, ptr %0, align 8, !tbaa !666
  %315 = getelementptr inbounds %struct.tree_exp, ptr %314, i64 1, i32 0, i32 1
  %316 = load ptr, ptr %315, align 8, !tbaa !655
  %317 = icmp eq ptr %316, null
  br i1 %317, label %320, label %318

318:                                              ; preds = %312
  %319 = call i32 @gimplify_expr(ptr noundef nonnull %315, ptr noundef nonnull %59, ptr noundef nonnull %61, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  br label %320

320:                                              ; preds = %318, %312
  %321 = phi i32 [ %319, %318 ], [ 1, %312 ]
  %322 = call i32 @llvm.smin.i32(i32 %313, i32 %321)
  br label %554

323:                                              ; preds = %105
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6848, ptr noundef nonnull @.str.1) #21
  br label %324

324:                                              ; preds = %105, %323
  %325 = call fastcc i32 @gimplify_asm_expr(ptr noundef nonnull %0, ptr noundef nonnull %59, ptr noundef nonnull %61) #20, !range !768
  br label %554

326:                                              ; preds = %105, %105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #22
  store ptr null, ptr %14, align 8, !tbaa !666
  store ptr null, ptr %13, align 8, !tbaa !666
  %327 = getelementptr inbounds %struct.tree_exp, ptr %106, i64 0, i32 3
  %328 = load ptr, ptr %327, align 8, !tbaa !655
  call void @gimplify_and_add(ptr noundef %328, ptr noundef nonnull %13) #20
  %329 = load ptr, ptr %0, align 8, !tbaa !666
  %330 = getelementptr inbounds %struct.tree_exp, ptr %329, i64 1
  %331 = load ptr, ptr %330, align 8, !tbaa !655
  call void @gimplify_and_add(ptr noundef %331, ptr noundef nonnull %14) #20
  %332 = load ptr, ptr %14, align 8, !tbaa !666
  %333 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %332) #20, !range !653
  %334 = icmp eq i8 %333, 0
  %335 = load ptr, ptr %13, align 8, !tbaa !666
  br i1 %334, label %337, label %336

336:                                              ; preds = %326
  call void @gimple_seq_add_seq(ptr noundef nonnull %59, ptr noundef %335) #21
  br label %354

337:                                              ; preds = %326
  %338 = load ptr, ptr %0, align 8, !tbaa !666
  %339 = load i64, ptr %338, align 8
  %340 = and i64 %339, 65535
  %341 = icmp eq i64 %340, 131
  %342 = select i1 %341, i32 2, i32 1
  %343 = call ptr @gimple_build_try(ptr noundef %335, ptr noundef %332, i32 noundef %342) #21
  %344 = load ptr, ptr %0, align 8, !tbaa !666
  %345 = load i64, ptr %344, align 8
  %346 = and i64 %345, 65535
  %347 = icmp eq i64 %346, 130
  br i1 %347, label %348, label %353

348:                                              ; preds = %337
  %349 = trunc i64 %345 to i32
  %350 = lshr i32 %349, 26
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  call fastcc void @gimple_try_set_catch_is_cleanup(ptr noundef %343, i8 noundef zeroext %352) #20
  br label %353

353:                                              ; preds = %348, %337
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %59, ptr noundef %343) #20
  br label %354

354:                                              ; preds = %353, %336
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #22
  br label %572

355:                                              ; preds = %105
  %356 = call fastcc i32 @gimplify_cleanup_point_expr(ptr noundef nonnull %0, ptr noundef nonnull %59) #20, !range !771
  br label %554

357:                                              ; preds = %105
  %358 = call fastcc i32 @gimplify_target_expr(ptr noundef nonnull %0, ptr noundef nonnull %59, ptr noundef nonnull %61) #20, !range !784
  br label %554

359:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #22
  store ptr null, ptr %15, align 8, !tbaa !666
  %360 = getelementptr inbounds %struct.tree_exp, ptr %106, i64 1
  %361 = load ptr, ptr %360, align 8, !tbaa !655
  call void @gimplify_and_add(ptr noundef %361, ptr noundef nonnull %15) #20
  %362 = load ptr, ptr %0, align 8, !tbaa !666
  %363 = getelementptr inbounds %struct.tree_exp, ptr %362, i64 0, i32 3
  %364 = load ptr, ptr %363, align 8, !tbaa !655
  %365 = load ptr, ptr %15, align 8, !tbaa !666
  %366 = call ptr @gimple_build_catch(ptr noundef %364, ptr noundef %365) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %59, ptr noundef %366) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #22
  br label %572

367:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #22
  store ptr null, ptr %16, align 8, !tbaa !666
  %368 = getelementptr inbounds %struct.tree_exp, ptr %106, i64 1
  %369 = load ptr, ptr %368, align 8, !tbaa !655
  call void @gimplify_and_add(ptr noundef %369, ptr noundef nonnull %16) #20
  %370 = load ptr, ptr %0, align 8, !tbaa !666
  %371 = getelementptr inbounds %struct.tree_exp, ptr %370, i64 0, i32 3
  %372 = load ptr, ptr %371, align 8, !tbaa !655
  %373 = load ptr, ptr %16, align 8, !tbaa !666
  %374 = call ptr @gimple_build_eh_filter(ptr noundef %372, ptr noundef %373) #21
  %375 = load ptr, ptr %0, align 8, !tbaa !666
  %376 = load i64, ptr %375, align 8
  %377 = lshr i64 %376, 23
  %378 = trunc i64 %377 to i8
  %379 = and i8 %378, 1
  call fastcc void @gimple_set_no_warning(ptr noundef %374, i8 noundef zeroext %379) #20
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %59, ptr noundef %374) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #22
  br label %572

380:                                              ; preds = %105
  %381 = getelementptr inbounds %struct.tree_exp, ptr %106, i64 1
  %382 = call i32 @gimplify_expr(ptr noundef nonnull %381, ptr noundef nonnull %59, ptr noundef nonnull %61, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %383 = load ptr, ptr %0, align 8, !tbaa !666
  %384 = getelementptr inbounds %struct.tree_exp, ptr %383, i64 0, i32 3
  %385 = call i32 @gimplify_expr(ptr noundef nonnull %384, ptr noundef nonnull %59, ptr noundef nonnull %61, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %386 = load ptr, ptr %0, align 8, !tbaa !666
  %387 = load i64, ptr %386, align 8
  %388 = and i64 %387, -65537
  store i64 %388, ptr %386, align 8
  %389 = call i32 @llvm.smin.i32(i32 %382, i32 %385)
  br label %554

390:                                              ; preds = %105
  %391 = or i64 %107, 65536
  store i64 %391, ptr %106, align 8
  br label %572

392:                                              ; preds = %105
  %393 = call fastcc i32 @gimplify_statement_list(ptr noundef nonnull %0, ptr noundef nonnull %59) #20, !range !771
  br label %554

394:                                              ; preds = %105
  %395 = icmp eq ptr %61, %8
  %396 = select i1 %395, ptr null, ptr %61
  %397 = getelementptr inbounds %struct.tree_exp, ptr %106, i64 0, i32 3
  %398 = call i32 @gimplify_expr(ptr noundef nonnull %397, ptr noundef nonnull %59, ptr noundef %396, ptr noundef %3, i32 noundef %4) #20
  %399 = load ptr, ptr %0, align 8, !tbaa !666
  %400 = getelementptr inbounds %struct.tree_exp, ptr %399, i64 1
  %401 = call i32 @gimplify_expr(ptr noundef nonnull %400, ptr noundef nonnull %59, ptr noundef nonnull %61, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  br label %557

402:                                              ; preds = %105, %105
  %403 = call fastcc i32 @gimplify_var_or_parm_decl(ptr noundef nonnull %0) #20, !range !768
  br label %554

404:                                              ; preds = %105
  %405 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !666
  %406 = icmp eq ptr %405, null
  br i1 %406, label %572, label %407, !prof !785

407:                                              ; preds = %404
  %408 = call fastcc zeroext i8 @omp_notice_variable(ptr noundef nonnull %405, ptr noundef nonnull %106) #20
  br label %572

409:                                              ; preds = %105
  call fastcc void @gimplify_omp_parallel(ptr noundef nonnull %0, ptr noundef nonnull %59) #20
  br label %572

410:                                              ; preds = %105
  call fastcc void @gimplify_omp_task(ptr noundef nonnull %0, ptr noundef nonnull %59) #20
  br label %572

411:                                              ; preds = %105
  %412 = call fastcc i32 @gimplify_omp_for(ptr noundef nonnull %0, ptr noundef nonnull %59) #20, !range !768
  br label %554

413:                                              ; preds = %105, %105
  call fastcc void @gimplify_omp_workshare(ptr noundef nonnull %0, ptr noundef nonnull %59) #20
  br label %572

414:                                              ; preds = %105, %105, %105, %105
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #22
  store ptr null, ptr %17, align 8, !tbaa !666
  %415 = getelementptr inbounds %struct.tree_exp, ptr %106, i64 0, i32 3
  %416 = load ptr, ptr %415, align 8, !tbaa !655
  call void @gimplify_and_add(ptr noundef %416, ptr noundef nonnull %17) #20
  %417 = load ptr, ptr %0, align 8, !tbaa !666
  %418 = load i64, ptr %417, align 8
  %419 = trunc i64 %418 to i16
  switch i16 %419, label %434 [
    i16 158, label %420
    i16 159, label %423
    i16 160, label %426
    i16 161, label %429
  ]

420:                                              ; preds = %414
  %421 = load ptr, ptr %17, align 8, !tbaa !666
  %422 = call ptr @gimple_build_omp_section(ptr noundef %421) #21
  br label %435

423:                                              ; preds = %414
  %424 = load ptr, ptr %17, align 8, !tbaa !666
  %425 = call ptr @gimple_build_omp_master(ptr noundef %424) #21
  br label %435

426:                                              ; preds = %414
  %427 = load ptr, ptr %17, align 8, !tbaa !666
  %428 = call ptr @gimple_build_omp_ordered(ptr noundef %427) #21
  br label %435

429:                                              ; preds = %414
  %430 = load ptr, ptr %17, align 8, !tbaa !666
  %431 = getelementptr inbounds %struct.tree_exp, ptr %417, i64 1
  %432 = load ptr, ptr %431, align 8, !tbaa !655
  %433 = call ptr @gimple_build_omp_critical(ptr noundef %430, ptr noundef %432) #21
  br label %435

434:                                              ; preds = %414
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7010, ptr noundef nonnull @.str.1) #21
  unreachable

435:                                              ; preds = %429, %426, %423, %420
  %436 = phi ptr [ %433, %429 ], [ %428, %426 ], [ %425, %423 ], [ %422, %420 ]
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %59, ptr noundef %436) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #22
  br label %572

437:                                              ; preds = %105
  %438 = call fastcc i32 @gimplify_omp_atomic(ptr noundef nonnull %0, ptr noundef nonnull %59) #20, !range !768
  br label %554

439:                                              ; preds = %105
  %440 = getelementptr inbounds %struct.tree_exp, ptr %106, i64 1
  %441 = load ptr, ptr %440, align 8, !tbaa !655
  %442 = load i64, ptr %441, align 8
  %443 = and i64 %442, 65535
  %444 = icmp eq i64 %443, 23
  br i1 %444, label %445, label %463, !prof !786

445:                                              ; preds = %439
  %446 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 66), align 4, !tbaa !710
  %447 = add i32 %446, -4
  %448 = icmp ult i32 %447, 7
  br i1 %448, label %449, label %452, !prof !787

449:                                              ; preds = %445
  %450 = getelementptr inbounds %struct.tree_exp, ptr %106, i64 0, i32 1
  %451 = load i32, ptr %450, align 8, !tbaa !655
  br label %452

452:                                              ; preds = %445, %449
  %453 = phi i32 [ %451, %449 ], [ 0, %445 ]
  %454 = getelementptr inbounds %struct.tree_exp, ptr %106, i64 0, i32 3
  %455 = load ptr, ptr %454, align 8, !tbaa !655
  %456 = getelementptr inbounds %struct.tree_common, ptr %106, i64 0, i32 2
  %457 = load ptr, ptr %456, align 8, !tbaa !655
  %458 = call ptr @maybe_fold_offset_to_address(i32 noundef %453, ptr noundef %455, ptr noundef nonnull %441, ptr noundef %457) #21
  store ptr %458, ptr %6, align 8, !tbaa !666
  %459 = icmp eq ptr %458, null
  br i1 %459, label %460, label %462, !prof !788

460:                                              ; preds = %452
  %461 = load ptr, ptr %0, align 8, !tbaa !666
  br label %463

462:                                              ; preds = %452
  store ptr %458, ptr %0, align 8, !tbaa !666
  br label %557

463:                                              ; preds = %460, %439
  %464 = phi ptr [ %461, %460 ], [ %106, %439 ]
  %465 = getelementptr inbounds %struct.tree_exp, ptr %464, i64 0, i32 3
  %466 = load ptr, ptr %465, align 8, !tbaa !655
  %467 = load i64, ptr %466, align 8
  %468 = and i64 %467, 65535
  %469 = icmp eq i64 %468, 116
  br i1 %469, label %470, label %502, !prof !789

470:                                              ; preds = %463
  %471 = getelementptr inbounds %struct.tree_exp, ptr %464, i64 1
  %472 = load ptr, ptr %471, align 8, !tbaa !655
  %473 = load i64, ptr %472, align 8
  %474 = and i64 %473, 65535
  %475 = icmp eq i64 %474, 23
  br i1 %475, label %476, label %502, !prof !790

476:                                              ; preds = %470
  %477 = getelementptr inbounds %struct.tree_exp, ptr %466, i64 0, i32 3
  %478 = load ptr, ptr %477, align 8, !tbaa !655
  %479 = getelementptr inbounds %struct.tree_common, ptr %478, i64 0, i32 2
  %480 = load ptr, ptr %479, align 8, !tbaa !655
  %481 = load i64, ptr %480, align 8
  %482 = trunc i64 %481 to i16
  switch i16 %482, label %502 [
    i16 10, label %483
    i16 12, label %483
  ], !prof !791

483:                                              ; preds = %476, %476
  %484 = load i64, ptr %464, align 8
  %485 = and i64 %484, 65535
  %486 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %485
  %487 = load i32, ptr %486, align 4, !tbaa !710
  %488 = add i32 %487, -4
  %489 = icmp ult i32 %488, 7
  br i1 %489, label %490, label %493, !prof !792

490:                                              ; preds = %483
  %491 = getelementptr inbounds %struct.tree_exp, ptr %464, i64 0, i32 1
  %492 = load i32, ptr %491, align 8, !tbaa !655
  br label %493

493:                                              ; preds = %483, %490
  %494 = phi i32 [ %492, %490 ], [ 0, %483 ]
  %495 = call ptr @maybe_fold_offset_to_address(i32 noundef %494, ptr noundef nonnull %478, ptr noundef nonnull %472, ptr noundef nonnull %480) #21
  store ptr %495, ptr %6, align 8, !tbaa !666
  %496 = icmp eq ptr %495, null
  %497 = load ptr, ptr %0, align 8, !tbaa !666
  br i1 %496, label %502, label %498, !prof !793

498:                                              ; preds = %493
  %499 = getelementptr inbounds %struct.tree_common, ptr %497, i64 0, i32 2
  %500 = load ptr, ptr %499, align 8, !tbaa !655
  %501 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %500, ptr noundef nonnull %495) #21
  store ptr %501, ptr %0, align 8, !tbaa !666
  br label %557

502:                                              ; preds = %476, %463, %470, %493, %105
  %503 = phi ptr [ %464, %476 ], [ %464, %463 ], [ %464, %470 ], [ %497, %493 ], [ %106, %105 ]
  %504 = load i64, ptr %503, align 8
  %505 = and i64 %504, 65535
  %506 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %505
  %507 = load i32, ptr %506, align 4, !tbaa !710
  switch i32 %507, label %544 [
    i32 5, label %508
    i32 6, label %533
    i32 7, label %536
    i32 3, label %572
    i32 1, label %572
  ], !prof !794

508:                                              ; preds = %502
  %509 = getelementptr inbounds %struct.tree_exp, ptr %503, i64 1
  %510 = load ptr, ptr %509, align 8, !tbaa !655
  %511 = getelementptr inbounds %struct.tree_common, ptr %510, i64 0, i32 2
  %512 = load ptr, ptr %511, align 8, !tbaa !655
  %513 = load i64, ptr %512, align 8
  %514 = trunc i64 %513 to i32
  %515 = and i32 %514, 65535
  %516 = add nsw i32 %515, -15
  %517 = icmp ult i32 %516, 4
  br i1 %517, label %518, label %536, !prof !795

518:                                              ; preds = %508
  %519 = and i64 %513, 65535
  %520 = icmp eq i64 %519, 14
  br i1 %520, label %521, label %523

521:                                              ; preds = %518
  %522 = call i32 @vector_type_mode(ptr noundef nonnull %512) #21
  br label %528

523:                                              ; preds = %518
  %524 = getelementptr inbounds %struct.tree_type, ptr %512, i64 0, i32 6
  %525 = load i32, ptr %524, align 4
  %526 = lshr i32 %525, 16
  %527 = and i32 %526, 255
  br label %528

528:                                              ; preds = %523, %521
  %529 = phi i32 [ %522, %521 ], [ %527, %523 ]
  %530 = icmp eq i32 %529, 1
  br i1 %530, label %532, label %531

531:                                              ; preds = %528
  call fastcc void @gimplify_scalar_mode_aggregate_compare(ptr noundef nonnull %0) #20
  br label %551

532:                                              ; preds = %528
  call fastcc void @gimplify_variable_sized_compare(ptr noundef nonnull %0) #20
  br label %551

533:                                              ; preds = %502
  %534 = getelementptr inbounds %struct.tree_exp, ptr %503, i64 0, i32 3
  %535 = call i32 @gimplify_expr(ptr noundef nonnull %534, ptr noundef nonnull %59, ptr noundef nonnull %61, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  br label %551

536:                                              ; preds = %508, %544, %549, %502
  %537 = phi ptr [ %503, %508 ], [ %503, %544 ], [ %550, %549 ], [ %503, %502 ]
  %538 = getelementptr inbounds %struct.tree_exp, ptr %537, i64 0, i32 3
  %539 = call i32 @gimplify_expr(ptr noundef nonnull %538, ptr noundef nonnull %59, ptr noundef nonnull %61, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %540 = load ptr, ptr %0, align 8, !tbaa !666
  %541 = getelementptr inbounds %struct.tree_exp, ptr %540, i64 1
  %542 = call i32 @gimplify_expr(ptr noundef nonnull %541, ptr noundef nonnull %59, ptr noundef nonnull %61, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %543 = call i32 @llvm.smin.i32(i32 %539, i32 %542)
  br label %551

544:                                              ; preds = %502
  %545 = trunc i64 %504 to i32
  %546 = and i32 %545, 65535
  %547 = add nsw i32 %546, -93
  %548 = icmp ult i32 %547, 3
  br i1 %548, label %536, label %549, !prof !796

549:                                              ; preds = %544
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7106, ptr noundef nonnull @.str.1) #21
  %550 = load ptr, ptr %0, align 8, !tbaa !666
  br label %536

551:                                              ; preds = %532, %531, %536, %533
  %552 = phi i32 [ %543, %536 ], [ %535, %533 ], [ 0, %531 ], [ 0, %532 ]
  %553 = load ptr, ptr %0, align 8, !tbaa !666
  call void @recalculate_side_effects(ptr noundef %553) #21
  br label %554

554:                                              ; preds = %551, %122, %127, %116, %119, %437, %411, %402, %392, %380, %357, %355, %324, %320, %288, %286, %256, %228, %212, %209, %207, %197, %188, %156, %154, %150, %136, %131, %113, %109
  %555 = phi i32 [ %552, %551 ], [ %438, %437 ], [ %412, %411 ], [ %403, %402 ], [ %393, %392 ], [ %389, %380 ], [ %358, %357 ], [ %356, %355 ], [ %325, %324 ], [ %322, %320 ], [ %299, %288 ], [ %287, %286 ], [ %257, %256 ], [ %230, %228 ], [ %213, %212 ], [ %210, %209 ], [ %208, %207 ], [ %200, %197 ], [ %191, %188 ], [ %157, %156 ], [ %155, %154 ], [ %152, %150 ], [ %139, %136 ], [ %134, %131 ], [ %126, %127 ], [ %126, %122 ], [ %118, %119 ], [ %118, %116 ], [ %115, %113 ], [ %112, %109 ]
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %557, label %567, !prof !797

557:                                              ; preds = %135, %140, %147, %185, %182, %193, %204, %214, %284, %282, %394, %498, %462, %554
  %558 = load ptr, ptr %0, align 8, !tbaa !666
  %559 = icmp eq ptr %558, null
  %560 = icmp eq ptr %558, %89
  %561 = or i1 %559, %560
  br i1 %561, label %572, label %562, !prof !798

562:                                              ; preds = %557, %103
  %563 = phi ptr [ %558, %557 ], [ %101, %103 ]
  %564 = call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef nonnull %563) #21
  store ptr %564, ptr %0, align 8, !tbaa !666
  %565 = load ptr, ptr @global_trees, align 16, !tbaa !666
  %566 = icmp eq ptr %564, %565
  br i1 %566, label %569, label %87, !prof !799, !llvm.loop !800

567:                                              ; preds = %554, %95
  %568 = phi i32 [ %97, %95 ], [ %555, %554 ]
  switch i32 %568, label %572 [
    i32 -2, label %569
    i32 -1, label %571
  ], !prof !801

569:                                              ; preds = %87, %562, %221, %80, %567
  br i1 %21, label %570, label %735

570:                                              ; preds = %569
  store ptr null, ptr %0, align 8, !tbaa !666
  br label %735

571:                                              ; preds = %567
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7133, ptr noundef nonnull @.str.1) #21
  br label %572

572:                                              ; preds = %557, %167, %258, %105, %105, %105, %105, %105, %105, %105, %502, %502, %100, %435, %413, %410, %409, %390, %367, %359, %354, %255, %250, %232, %211, %407, %404, %567, %571
  %573 = phi i32 [ %568, %567 ], [ -1, %571 ], [ 1, %404 ], [ 1, %407 ], [ 1, %211 ], [ 1, %232 ], [ 1, %250 ], [ 1, %255 ], [ 1, %354 ], [ 1, %359 ], [ 1, %367 ], [ 1, %390 ], [ 1, %409 ], [ 1, %410 ], [ 1, %413 ], [ 1, %435 ], [ 1, %557 ], [ 1, %167 ], [ 1, %258 ], [ 1, %105 ], [ 1, %105 ], [ 1, %105 ], [ 1, %105 ], [ 1, %105 ], [ 1, %105 ], [ 1, %105 ], [ 1, %502 ], [ 1, %502 ], [ 0, %100 ]
  br i1 %86, label %574, label %629, !prof !802

574:                                              ; preds = %572
  %575 = load ptr, ptr %0, align 8, !tbaa !666
  %576 = icmp eq ptr %575, null
  br i1 %576, label %631, label %577, !prof !803

577:                                              ; preds = %574
  %578 = call zeroext i8 @is_gimple_stmt(ptr noundef nonnull %575) #21
  %579 = icmp eq i8 %578, 0
  br i1 %579, label %580, label %631, !prof !804

580:                                              ; preds = %577
  %581 = load ptr, ptr %0, align 8, !tbaa !666
  %582 = load i64, ptr %581, align 8
  %583 = and i64 %582, 65536
  %584 = icmp eq i64 %583, 0
  br i1 %584, label %631, label %585, !prof !805

585:                                              ; preds = %580
  %586 = and i64 %582, 524288
  %587 = icmp eq i64 %586, 0
  br i1 %587, label %588, label %600

588:                                              ; preds = %585
  %589 = trunc i64 %582 to i16
  switch i16 %589, label %599 [
    i16 41, label %590
    i16 43, label %590
    i16 44, label %590
    i16 118, label %590
    i16 45, label %593
    i16 46, label %593
  ]

590:                                              ; preds = %588, %588, %588, %588
  %591 = getelementptr inbounds %struct.tree_exp, ptr %581, i64 0, i32 3
  %592 = call i32 @gimplify_expr(ptr noundef nonnull %591, ptr noundef nonnull %59, ptr noundef nonnull %61, ptr noundef %3, i32 noundef 0) #20
  br label %631

593:                                              ; preds = %588, %588
  %594 = getelementptr inbounds %struct.tree_exp, ptr %581, i64 0, i32 3
  %595 = call i32 @gimplify_expr(ptr noundef nonnull %594, ptr noundef nonnull %59, ptr noundef nonnull %61, ptr noundef %3, i32 noundef 0) #20
  %596 = load ptr, ptr %0, align 8, !tbaa !666
  %597 = getelementptr inbounds %struct.tree_exp, ptr %596, i64 1
  %598 = call i32 @gimplify_expr(ptr noundef nonnull %597, ptr noundef nonnull %59, ptr noundef nonnull %61, ptr noundef %3, i32 noundef 0) #20
  br label %631

599:                                              ; preds = %588
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7168, ptr noundef nonnull @.str.1) #21
  br label %631

600:                                              ; preds = %585
  %601 = getelementptr inbounds %struct.tree_common, ptr %581, i64 0, i32 2
  %602 = load ptr, ptr %601, align 8, !tbaa !655
  %603 = getelementptr inbounds %struct.tree_type, ptr %602, i64 0, i32 2
  %604 = load ptr, ptr %603, align 8, !tbaa !655
  %605 = icmp eq ptr %604, null
  br i1 %605, label %631, label %606

606:                                              ; preds = %600
  %607 = load i64, ptr %602, align 8
  %608 = and i64 %607, 65535
  %609 = icmp eq i64 %608, 14
  br i1 %609, label %610, label %612

610:                                              ; preds = %606
  %611 = call i32 @vector_type_mode(ptr noundef nonnull %602) #21
  br label %617

612:                                              ; preds = %606
  %613 = getelementptr inbounds %struct.tree_type, ptr %602, i64 0, i32 6
  %614 = load i32, ptr %613, align 4
  %615 = lshr i32 %614, 16
  %616 = and i32 %615, 255
  br label %617

617:                                              ; preds = %612, %610
  %618 = phi i32 [ %611, %610 ], [ %616, %612 ]
  %619 = icmp eq i32 %618, 1
  br i1 %619, label %631, label %620

620:                                              ; preds = %617
  %621 = load ptr, ptr %0, align 8, !tbaa !666
  %622 = getelementptr inbounds %struct.tree_common, ptr %621, i64 0, i32 2
  %623 = load ptr, ptr %622, align 8, !tbaa !655
  %624 = getelementptr inbounds %struct.tree_type, ptr %623, i64 0, i32 16
  %625 = load ptr, ptr %624, align 8, !tbaa !655
  %626 = call ptr @create_tmp_var_raw(ptr noundef %625, ptr noundef nonnull @.str.7) #20
  call void @gimple_add_tmp_var(ptr noundef %626) #20
  %627 = load ptr, ptr %0, align 8, !tbaa !666
  %628 = call ptr @gimplify_assign(ptr noundef %626, ptr noundef %627, ptr noundef nonnull %59) #21
  br label %631

629:                                              ; preds = %202, %572
  %630 = phi i32 [ %573, %572 ], [ 1, %202 ]
  br i1 %21, label %631, label %654, !prof !806

631:                                              ; preds = %600, %617, %590, %593, %599, %580, %574, %577, %620, %629
  %632 = phi i32 [ %573, %574 ], [ %573, %577 ], [ %573, %620 ], [ %630, %629 ], [ %573, %580 ], [ %573, %599 ], [ %573, %593 ], [ %573, %590 ], [ %573, %617 ], [ %573, %600 ]
  store ptr null, ptr %0, align 8, !tbaa !666
  %633 = load ptr, ptr %7, align 8, !tbaa !666
  %634 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %633) #20, !range !653
  %635 = icmp eq i8 %634, 0
  %636 = load ptr, ptr %8, align 8, !tbaa !666
  br i1 %635, label %640, label %637, !prof !807

637:                                              ; preds = %631
  %638 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %636) #20, !range !653
  %639 = icmp eq i8 %638, 0
  br i1 %639, label %640, label %642, !prof !808

640:                                              ; preds = %637, %631
  call fastcc void @gimplify_seq_add_seq(ptr noundef nonnull %7, ptr noundef %636) #20
  %641 = load ptr, ptr %7, align 8, !tbaa !666
  call fastcc void @gimplify_seq_add_seq(ptr noundef nonnull %59, ptr noundef %641) #20
  br label %642

642:                                              ; preds = %640, %637
  %643 = load ptr, ptr %59, align 8, !tbaa !666
  %644 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %643) #20, !range !653
  %645 = icmp eq i8 %644, 0
  br i1 %645, label %646, label %648, !prof !809

646:                                              ; preds = %642
  %647 = load i32, ptr @input_location, align 4, !tbaa !710
  call fastcc void @annotate_all_with_location_after(ptr noundef %643, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %9, i32 noundef %647) #20
  br label %648

648:                                              ; preds = %646, %642
  %649 = load ptr, ptr %61, align 8, !tbaa !666
  %650 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %649) #20, !range !653
  %651 = icmp eq i8 %650, 0
  br i1 %651, label %652, label %735, !prof !807

652:                                              ; preds = %648
  %653 = load i32, ptr @input_location, align 4, !tbaa !710
  call fastcc void @annotate_all_with_location_after(ptr noundef %649, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %10, i32 noundef %653) #20
  br label %735

654:                                              ; preds = %629
  %655 = load ptr, ptr %8, align 8, !tbaa !666
  %656 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %655) #20, !range !653
  %657 = icmp eq i8 %656, 0
  br i1 %657, label %662, label %658, !prof !810

658:                                              ; preds = %654
  %659 = load ptr, ptr %0, align 8, !tbaa !666
  %660 = call zeroext i8 %3(ptr noundef %659) #21
  %661 = icmp eq i8 %660, 0
  br i1 %661, label %662, label %735, !prof !811

662:                                              ; preds = %658, %654
  %663 = icmp ne i32 %85, 0
  br i1 %663, label %664, label %683, !prof !812

664:                                              ; preds = %662
  %665 = load ptr, ptr %8, align 8, !tbaa !666
  %666 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %665) #20, !range !653
  %667 = icmp eq i8 %666, 0
  br i1 %667, label %683, label %668, !prof !813

668:                                              ; preds = %664
  %669 = load ptr, ptr %0, align 8, !tbaa !666
  %670 = call zeroext i8 @is_gimple_addressable(ptr noundef %669) #21
  %671 = icmp eq i8 %670, 0
  br i1 %671, label %683, label %672, !prof !814

672:                                              ; preds = %668
  %673 = load i32, ptr @input_location, align 4, !tbaa !710
  %674 = load ptr, ptr %0, align 8, !tbaa !666
  %675 = call ptr @build_fold_addr_expr_loc(i32 noundef %673, ptr noundef %674) #21
  store ptr %675, ptr %6, align 8, !tbaa !666
  %676 = call i32 @gimplify_expr(ptr noundef nonnull %6, ptr noundef nonnull %59, ptr noundef nonnull %61, ptr noundef nonnull @is_gimple_reg, i32 noundef 1) #20
  %677 = load ptr, ptr %6, align 8, !tbaa !666
  %678 = getelementptr inbounds %struct.tree_common, ptr %677, i64 0, i32 2
  %679 = load ptr, ptr %678, align 8, !tbaa !655
  %680 = getelementptr inbounds %struct.tree_common, ptr %679, i64 0, i32 2
  %681 = load ptr, ptr %680, align 8, !tbaa !655
  %682 = call ptr @build1_stat(i32 noundef 47, ptr noundef %681, ptr noundef %677) #21
  store ptr %682, ptr %0, align 8, !tbaa !666
  br label %723

683:                                              ; preds = %668, %664, %662
  %684 = and i32 %4, 1
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %719, label %686, !prof !815

686:                                              ; preds = %683
  %687 = load ptr, ptr %0, align 8, !tbaa !666
  %688 = call zeroext i8 @is_gimple_reg_rhs_or_call(ptr noundef %687) #20, !range !653
  %689 = icmp eq i8 %688, 0
  br i1 %689, label %719, label %690, !prof !815

690:                                              ; preds = %686
  %691 = getelementptr inbounds %struct.tree_common, ptr %687, i64 0, i32 2
  %692 = load ptr, ptr %691, align 8, !tbaa !655
  %693 = load i64, ptr %692, align 8
  %694 = and i64 %693, 65535
  %695 = icmp eq i64 %694, 19
  br i1 %695, label %696, label %697, !prof !815

696:                                              ; preds = %690
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7289, ptr noundef nonnull @.str.1) #21
  br label %697

697:                                              ; preds = %690, %696
  %698 = load ptr, ptr %8, align 8, !tbaa !666
  %699 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %698) #20, !range !653
  %700 = icmp eq i8 %699, 0
  %701 = or i1 %663, %700
  %702 = load ptr, ptr %0, align 8, !tbaa !666
  br i1 %701, label %703, label %717, !prof !816

703:                                              ; preds = %697
  %704 = call ptr @get_initialized_tmp_var(ptr noundef %702, ptr noundef nonnull %59, ptr noundef nonnull %61) #20
  store ptr %704, ptr %0, align 8, !tbaa !666
  %705 = getelementptr inbounds %struct.tree_common, ptr %704, i64 0, i32 2
  %706 = load ptr, ptr %705, align 8, !tbaa !655
  %707 = load i64, ptr %706, align 8
  %708 = trunc i64 %707 to i32
  %709 = and i32 %708, 65535
  %710 = add nsw i32 %709, -13
  %711 = icmp ult i32 %710, 2
  br i1 %711, label %712, label %723, !prof !817

712:                                              ; preds = %703
  %713 = getelementptr inbounds %struct.tree_decl_common, ptr %704, i64 0, i32 2
  %714 = load i64, ptr %713, align 8
  %715 = or i64 %714, 134217728
  store i64 %715, ptr %713, align 8
  %716 = load ptr, ptr %0, align 8, !tbaa !666
  br label %723

717:                                              ; preds = %697
  %718 = call ptr @get_formal_tmp_var(ptr noundef %702, ptr noundef nonnull %59) #20
  store ptr %718, ptr %0, align 8, !tbaa !666
  br label %723

719:                                              ; preds = %686, %683
  %720 = and i32 %4, 4
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %722, label %735

722:                                              ; preds = %719
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7315, ptr noundef nonnull @.str.1) #21
  br label %735

723:                                              ; preds = %703, %712, %717, %672
  %724 = phi ptr [ %704, %703 ], [ %716, %712 ], [ %718, %717 ], [ %682, %672 ]
  %725 = call zeroext i8 %3(ptr noundef %724) #21
  %726 = icmp eq i8 %725, 0
  br i1 %726, label %727, label %728, !prof !815

727:                                              ; preds = %723
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7325, ptr noundef nonnull @.str.1) #21
  br label %728

728:                                              ; preds = %723, %727
  %729 = load ptr, ptr %8, align 8, !tbaa !666
  %730 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %729) #20, !range !653
  %731 = icmp eq i8 %730, 0
  br i1 %731, label %732, label %735, !prof !818

732:                                              ; preds = %728
  %733 = load i32, ptr @input_location, align 4, !tbaa !710
  call void @annotate_all_with_location(ptr noundef %729, i32 noundef %733) #20
  %734 = load ptr, ptr %8, align 8, !tbaa !666
  call fastcc void @gimplify_seq_add_seq(ptr noundef nonnull %59, ptr noundef %734) #20
  br label %735

735:                                              ; preds = %722, %719, %728, %732, %658, %648, %652, %569, %570
  %736 = phi i32 [ -2, %570 ], [ -2, %569 ], [ %632, %648 ], [ %632, %652 ], [ %630, %658 ], [ %630, %728 ], [ %630, %732 ], [ -2, %719 ], [ -2, %722 ]
  store i32 %64, ptr @input_location, align 4, !tbaa !710
  br label %737

737:                                              ; preds = %5, %735
  %738 = phi i32 [ %736, %735 ], [ 1, %5 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  ret i32 %738
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @is_gimple_reg_rhs_or_call(ptr nocapture noundef readonly %0) #1 !prof !819 !PGOFuncName !820 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = and i32 %3, 65535
  %5 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %4) #20, !range !684
  %6 = icmp ne i32 %5, 0
  %7 = and i64 %2, 65535
  %8 = icmp eq i64 %7, 59
  %9 = or i1 %6, %8
  %10 = zext i1 %9 to i8
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookup_tmp_var(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #4 !prof !732 !PGOFuncName !821 {
  %3 = alloca %struct.gimple_temp_hash_elt, align 8
  %4 = load i32, ptr @optimize, align 4, !tbaa !710
  %5 = icmp ne i32 %4, 0
  %6 = icmp ne i8 %1, 0
  %7 = and i1 %6, %5
  br i1 %7, label %8, label %12, !prof !822

8:                                                ; preds = %2
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65536
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %14, label %12, !prof !823

12:                                               ; preds = %8, %2
  %13 = tail call fastcc ptr @create_tmp_from_val(ptr noundef %0) #20
  br label %37

14:                                               ; preds = %8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  store ptr %0, ptr %3, align 8, !tbaa !824
  %15 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %16 = getelementptr inbounds %struct.gimplify_ctx, ptr %15, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !676
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23, !prof !826

19:                                               ; preds = %14
  %20 = tail call ptr @htab_create(i64 noundef 1000, ptr noundef nonnull @gimple_tree_hash, ptr noundef nonnull @gimple_tree_eq, ptr noundef nonnull @free) #21
  %21 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %22 = getelementptr inbounds %struct.gimplify_ctx, ptr %21, i64 0, i32 7
  store ptr %20, ptr %22, align 8, !tbaa !676
  br label %23

23:                                               ; preds = %19, %14
  %24 = phi ptr [ %20, %19 ], [ %17, %14 ]
  %25 = call ptr @htab_find_slot(ptr noundef %24, ptr noundef nonnull %3, i32 noundef 1) #21
  %26 = load ptr, ptr %25, align 8, !tbaa !666
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %32, !prof !827

28:                                               ; preds = %23
  %29 = call ptr @xmalloc(i64 noundef 16) #21
  store ptr %0, ptr %29, align 8, !tbaa !824
  %30 = call fastcc ptr @create_tmp_from_val(ptr noundef nonnull %0) #20
  %31 = getelementptr inbounds %struct.gimple_temp_hash_elt, ptr %29, i64 0, i32 1
  store ptr %30, ptr %31, align 8, !tbaa !828
  store ptr %29, ptr %25, align 8, !tbaa !666
  br label %35

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.gimple_temp_hash_elt, ptr %26, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !828
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
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @unshare_expr(ptr noundef %0) local_unnamed_addr #4 !prof !829 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !666
  %3 = call ptr @walk_tree_1(ptr noundef nonnull %2, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #21
  %4 = load ptr, ptr %2, align 8, !tbaa !666
  ret ptr %4
}

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_seq_last_stmt(ptr noundef readonly %0) unnamed_addr #9 !prof !830 !PGOFuncName !831 {
  %2 = tail call fastcc ptr @gimple_seq_last(ptr noundef %0) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !832

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !833
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #14 !prof !835 !PGOFuncName !836 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !655
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_tmp_from_val(ptr noundef %0) unnamed_addr #4 !prof !837 !PGOFuncName !838 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !655
  %4 = tail call ptr @get_name(ptr noundef %0) #21
  %5 = tail call ptr @create_tmp_var(ptr noundef %3, ptr noundef %4) #20
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @gimple_tree_hash(ptr nocapture noundef readonly %0) #4 !prof !839 !PGOFuncName !840 {
  %2 = load ptr, ptr %0, align 8, !tbaa !824
  %3 = tail call i32 @iterative_hash_expr(ptr noundef %2, i32 noundef 0) #21
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @gimple_tree_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 !prof !841 !PGOFuncName !842 {
  %3 = load ptr, ptr %0, align 8, !tbaa !824
  %4 = load ptr, ptr %1, align 8, !tbaa !824
  %5 = load i64, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %7 = xor i64 %6, %5
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %24, !prof !843

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !655
  %13 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !655
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %24, !prof !844

16:                                               ; preds = %10
  %17 = tail call i32 @operand_equal_p(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 0) #21
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19, !prof !845

19:                                               ; preds = %16
  %20 = tail call i32 @gimple_tree_hash(ptr noundef nonnull %0) #20
  %21 = tail call i32 @gimple_tree_hash(ptr noundef nonnull %1) #20
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %24, label %23, !prof !846

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #1 !prof !847 !PGOFuncName !848 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !849

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !850
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_initialized_tmp_var(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 !prof !852 {
  %4 = tail call fastcc ptr @internal_get_tmp_var(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0) #20
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !853 !PGOFuncName !854 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @nreverse(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bind_block(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !855 !PGOFuncName !856 {
  %2 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !655
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bind_vars(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !855 !PGOFuncName !857 {
  %2 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !655
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_bind_set_vars(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #15 !prof !855 !PGOFuncName !858 {
  %3 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !655
  ret void
}

; Function Attrs: optsize
declare ptr @chainon(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @force_constant_size(ptr nocapture noundef %0) unnamed_addr #4 !prof !688 !PGOFuncName !859 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 32
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 712, ptr noundef nonnull @.str.1) #21
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !655
  %9 = tail call i64 @max_int_size_in_bytes(ptr noundef %8) #21
  %10 = icmp sgt i64 %9, -1
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 716, ptr noundef nonnull @.str.1) #21
  br label %12

12:                                               ; preds = %6, %11
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !655
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !655
  %17 = tail call ptr @build_int_cst(ptr noundef %16, i64 noundef %9) #21
  store ptr %17, ptr %13, align 8, !tbaa !655
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !655
  %20 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !655
  %22 = shl nsw i64 %9, 3
  %23 = tail call ptr @build_int_cst(ptr noundef %21, i64 noundef %22) #21
  store ptr %23, ptr %18, align 8, !tbaa !655
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @omp_add_variable(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 !prof !688 !PGOFuncName !860 {
  %4 = load ptr, ptr @global_trees, align 16, !tbaa !666
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %122, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !655
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
  %24 = load ptr, ptr %23, align 8, !tbaa !861
  %25 = ptrtoint ptr %1 to i64
  %26 = tail call ptr @splay_tree_lookup(ptr noundef %24, i64 noundef %25) #21
  %27 = icmp eq ptr %26, null
  br i1 %27, label %46, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.splay_tree_node_s, ptr %26, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !862
  %31 = and i32 %22, 252
  %32 = zext nneg i32 %31 to i64
  %33 = and i64 %30, %32
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5383, ptr noundef nonnull @.str.1) #21
  %36 = load i64, ptr %29, align 8, !tbaa !862
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
  store i64 %45, ptr %29, align 8, !tbaa !862
  br label %122

46:                                               ; preds = %21
  %47 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !655
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
  %70 = load ptr, ptr %69, align 8, !tbaa !655
  %71 = load i64, ptr %70, align 8
  %72 = and i64 %71, 65535
  %73 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !710
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
  %80 = load ptr, ptr %79, align 8, !tbaa !655
  tail call void @omp_firstprivatize_variable(ptr noundef nonnull %0, ptr noundef %80) #20
  %81 = load ptr, ptr %47, align 8, !tbaa !655
  tail call void @omp_firstprivatize_variable(ptr noundef nonnull %0, ptr noundef %81) #20
  %82 = load ptr, ptr %7, align 8, !tbaa !655
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
  %90 = load ptr, ptr %7, align 8, !tbaa !655
  %91 = getelementptr inbounds %struct.tree_type, ptr %90, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !655
  %93 = tail call fastcc zeroext i8 @omp_notice_variable(ptr noundef nonnull %0, ptr noundef %92) #20
  br label %117

94:                                               ; preds = %50, %46
  %95 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 10), align 8, !tbaa !864
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
  %103 = load ptr, ptr %7, align 8, !tbaa !655
  tail call fastcc void @omp_firstprivatize_type_sizes(ptr noundef nonnull %0, ptr noundef %103) #20
  %104 = and i32 %22, 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %102
  %107 = load ptr, ptr %7, align 8, !tbaa !655
  %108 = getelementptr inbounds %struct.tree_common, ptr %107, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !655
  %110 = getelementptr inbounds %struct.tree_type, ptr %109, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !655
  %112 = load i64, ptr %111, align 8
  %113 = and i64 %112, 65535
  %114 = icmp eq i64 %113, 23
  br i1 %114, label %117, label %115

115:                                              ; preds = %106
  %116 = tail call fastcc zeroext i8 @omp_notice_variable(ptr noundef nonnull %0, ptr noundef nonnull %111) #20
  br label %117

117:                                              ; preds = %94, %106, %115, %102, %85, %89, %88
  %118 = phi i32 [ %87, %85 ], [ %22, %88 ], [ %22, %89 ], [ %22, %115 ], [ %22, %106 ], [ %22, %102 ], [ %22, %94 ]
  %119 = load ptr, ptr %23, align 8, !tbaa !861
  %120 = zext i32 %118 to i64
  %121 = tail call ptr @splay_tree_insert(ptr noundef %119, i64 noundef %25, i64 noundef %120) #21
  br label %122

122:                                              ; preds = %3, %6, %117, %44
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_body(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_seq_first_stmt(ptr noundef readonly %0) unnamed_addr #9 !prof !678 !PGOFuncName !865 {
  %2 = tail call fastcc ptr @gimple_seq_first(ptr noundef %0) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !866

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !833
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare i64 @max_int_size_in_bytes(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @splay_tree_lookup(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @decl_value_expr_lookup(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @omp_firstprivatize_variable(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 !prof !688 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %34, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !710
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %34

10:                                               ; preds = %4
  %11 = ptrtoint ptr %1 to i64
  br label %12

12:                                               ; preds = %10, %31
  %13 = phi ptr [ %32, %31 ], [ %0, %10 ]
  %14 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !861
  %16 = tail call ptr @splay_tree_lookup(ptr noundef %15, i64 noundef %11) #21
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.splay_tree_node_s, ptr %16, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !862
  %21 = and i64 %20, 4
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %18
  %24 = and i64 %20, 1
  %25 = or disjoint i64 %24, 16
  store i64 %25, ptr %19, align 8, !tbaa !862
  br label %31

26:                                               ; preds = %12
  %27 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %13, i64 0, i32 5
  %28 = load i32, ptr %27, align 8, !tbaa !726
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call fastcc void @omp_add_variable(ptr noundef nonnull %13, ptr noundef nonnull %1, i32 noundef 16) #20
  br label %31

31:                                               ; preds = %26, %30, %23
  %32 = load ptr, ptr %13, align 8, !tbaa !728
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %12, !llvm.loop !867

34:                                               ; preds = %31, %18, %2, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @omp_firstprivatize_type_sizes(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #4 !prof !688 !PGOFuncName !868 {
  %3 = icmp eq ptr %1, null
  %4 = load ptr, ptr @global_trees, align 16
  %5 = icmp eq ptr %4, %1
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %54, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 16
  %9 = load ptr, ptr %8, align 8, !tbaa !655
  %10 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !869
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
  %19 = load ptr, ptr %18, align 8, !tbaa !655
  tail call void @omp_firstprivatize_variable(ptr noundef nonnull %0, ptr noundef %19) #20
  %20 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 14
  %21 = load ptr, ptr %20, align 8, !tbaa !655
  tail call void @omp_firstprivatize_variable(ptr noundef nonnull %0, ptr noundef %21) #20
  br label %48

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !655
  tail call fastcc void @omp_firstprivatize_type_sizes(ptr noundef nonnull %0, ptr noundef %24) #20
  %25 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !655
  tail call fastcc void @omp_firstprivatize_type_sizes(ptr noundef nonnull %0, ptr noundef %26) #20
  br label %48

27:                                               ; preds = %14, %14, %14
  %28 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !655
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
  %38 = load ptr, ptr %37, align 8, !tbaa !655
  tail call void @omp_firstprivatize_variable(ptr noundef %0, ptr noundef %38) #20
  %39 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !655
  tail call fastcc void @omp_firstprivatize_type_sizes(ptr noundef %0, ptr noundef %40) #20
  br label %41

41:                                               ; preds = %31, %36
  %42 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !655
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %31, !llvm.loop !870

45:                                               ; preds = %14, %14
  %46 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !655
  tail call fastcc void @omp_firstprivatize_type_sizes(ptr noundef nonnull %0, ptr noundef %47) #20
  br label %48

48:                                               ; preds = %41, %27, %14, %45, %22, %17
  %49 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !655
  tail call void @omp_firstprivatize_variable(ptr noundef %0, ptr noundef %50) #20
  %51 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !655
  tail call void @omp_firstprivatize_variable(ptr noundef %0, ptr noundef %52) #20
  %53 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 10), align 8, !tbaa !871
  tail call void %53(ptr noundef %0, ptr noundef nonnull %9) #21
  br label %54

54:                                               ; preds = %7, %2, %48
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @omp_notice_variable(ptr noundef %0, ptr noundef %1) unnamed_addr #4 !prof !688 !PGOFuncName !872 {
  %3 = load ptr, ptr @global_trees, align 16, !tbaa !666
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %178, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !655
  %8 = icmp eq ptr %7, %3
  br i1 %8, label %178, label %9

9:                                                ; preds = %5
  %10 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %1) #20, !range !653
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
  %30 = load i32, ptr %29, align 4, !tbaa !710
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
  %39 = load ptr, ptr %38, align 8, !tbaa !861
  %40 = ptrtoint ptr %1 to i64
  %41 = tail call ptr @splay_tree_lookup(ptr noundef %39, i64 noundef %40) #21
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %115

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %0, i64 0, i32 5
  %45 = load i32, ptr %44, align 8, !tbaa !726
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %170, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %0, i64 0, i32 4
  %49 = load i32, ptr %48, align 4, !tbaa !873
  %50 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 11), align 8, !tbaa !874
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
  %56 = load ptr, ptr %55, align 8, !tbaa !655
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.4, ptr noundef %56) #21
  %57 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %0, i64 0, i32 3
  %58 = load i32, ptr %57, align 8, !tbaa !875
  tail call void (i32, ptr, ...) @error_at(i32 noundef %58, ptr noundef nonnull @.str.5) #21
  br label %108

59:                                               ; preds = %47
  br label %108

60:                                               ; preds = %47
  %61 = load i32, ptr %44, align 8, !tbaa !726
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5520, ptr noundef nonnull @.str.1) #21
  br label %64

64:                                               ; preds = %60, %63
  %65 = load ptr, ptr %0, align 8, !tbaa !728
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = tail call fastcc zeroext i8 @omp_notice_variable(ptr noundef nonnull %65, ptr noundef nonnull %1) #20
  br label %69

69:                                               ; preds = %67, %64
  br label %70

70:                                               ; preds = %69, %84
  %71 = phi ptr [ %72, %84 ], [ %0, %69 ]
  %72 = load ptr, ptr %71, align 8, !tbaa !728
  %73 = icmp eq ptr %72, null
  br i1 %73, label %89, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %72, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !861
  %77 = tail call ptr @splay_tree_lookup(ptr noundef %76, i64 noundef %40) #21
  %78 = icmp eq ptr %77, null
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.splay_tree_node_s, ptr %77, i64 0, i32 1
  %81 = load i64, ptr %80, align 8, !tbaa !862
  %82 = and i64 %81, 252
  %83 = icmp eq i64 %82, 4
  br i1 %83, label %84, label %108

84:                                               ; preds = %79, %74
  %85 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %72, i64 0, i32 5
  %86 = load i32, ptr %85, align 8, !tbaa !726
  %87 = and i32 %86, 2
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %70, label %101, !llvm.loop !876

89:                                               ; preds = %70
  %90 = load i64, ptr %1, align 8
  %91 = and i64 %90, 65535
  %92 = icmp eq i64 %91, 34
  br i1 %92, label %108, label %93

93:                                               ; preds = %89
  %94 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %1) #20, !range !653
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 4
  %98 = load ptr, ptr %97, align 8, !tbaa !655
  %99 = load ptr, ptr @current_function_decl, align 8, !tbaa !666
  %100 = icmp eq ptr %98, %99
  br i1 %100, label %108, label %101

101:                                              ; preds = %84, %96, %93
  br label %108

102:                                              ; preds = %47
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5549, ptr noundef nonnull @.str.1) #21
  br label %108

103:                                              ; preds = %47
  %104 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 14), align 8, !tbaa !877
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
  %113 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 12), align 8, !tbaa !878
  %114 = tail call zeroext i8 %113(ptr noundef %1, i8 noundef zeroext %112) #21
  br label %165

115:                                              ; preds = %37
  %116 = getelementptr inbounds %struct.splay_tree_node_s, ptr %41, i64 0, i32 1
  %117 = load i64, ptr %116, align 8, !tbaa !862
  %118 = and i64 %117, 129
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %151

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !655
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
  %136 = load ptr, ptr %135, align 8, !tbaa !655
  %137 = load i64, ptr %136, align 8
  %138 = and i64 %137, 65535
  %139 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !710
  %141 = icmp eq i32 %140, 3
  br i1 %141, label %143, label %142

142:                                              ; preds = %134
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5572, ptr noundef nonnull @.str.1) #21
  br label %143

143:                                              ; preds = %134, %142
  %144 = load ptr, ptr %38, align 8, !tbaa !861
  %145 = ptrtoint ptr %136 to i64
  %146 = tail call ptr @splay_tree_lookup(ptr noundef %144, i64 noundef %145) #21
  %147 = getelementptr inbounds %struct.splay_tree_node_s, ptr %146, i64 0, i32 1
  %148 = load i64, ptr %147, align 8, !tbaa !862
  %149 = or i64 %148, 1
  store i64 %149, ptr %147, align 8, !tbaa !862
  %150 = load i64, ptr %116, align 8, !tbaa !862
  br label %151

151:                                              ; preds = %143, %124, %120, %115
  %152 = phi i64 [ %150, %143 ], [ %117, %124 ], [ %117, %120 ], [ %117, %115 ]
  %153 = trunc i64 %152 to i8
  %154 = lshr i8 %153, 2
  %155 = and i8 %154, 1
  %156 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 12), align 8, !tbaa !878
  %157 = tail call zeroext i8 %156(ptr noundef nonnull %1, i8 noundef zeroext %155) #21
  %158 = load i64, ptr %116, align 8, !tbaa !862
  %159 = and i64 %158, 1
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %178

161:                                              ; preds = %151
  %162 = trunc i64 %158 to i32
  %163 = or disjoint i32 %162, 1
  %164 = zext i32 %163 to i64
  store i64 %164, ptr %116, align 8, !tbaa !862
  br label %165

165:                                              ; preds = %108, %161
  %166 = phi i8 [ %157, %161 ], [ %114, %108 ]
  %167 = phi i32 [ %163, %161 ], [ %109, %108 ]
  %168 = and i32 %167, 520
  %169 = icmp eq i32 %168, 8
  br i1 %169, label %178, label %170

170:                                              ; preds = %43, %165
  %171 = phi i8 [ %166, %165 ], [ 0, %43 ]
  %172 = load ptr, ptr %0, align 8, !tbaa !728
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

; Function Attrs: optsize
declare ptr @splay_tree_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @pointer_set_insert(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_global_var(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !688 !PGOFuncName !879 {
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

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare void @error_at(i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #1 !prof !880 !PGOFuncName !881 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !882

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !883
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @annotate_all_with_location(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !884 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %4 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %0) #20, !range !653
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %13, !prof !885

6:                                                ; preds = %2
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #20
  %7 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !653
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %13, !prof !886

9:                                                ; preds = %6, %9
  %10 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  tail call fastcc void @annotate_one_with_location(ptr noundef %10, i32 noundef %1) #20
  call fastcc void @gsi_next(ptr noundef nonnull %3) #20
  %11 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !653
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %9, label %13, !prof !887, !llvm.loop !888

13:                                               ; preds = %9, %6, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef readonly %0) unnamed_addr #1 !prof !889 !PGOFuncName !890 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !891

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !883
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #16 !prof !892 !PGOFuncName !893 {
  %3 = tail call fastcc ptr @gimple_seq_first(ptr noundef %1) #20
  store ptr %3, ptr %0, align 8, !tbaa !894
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !896
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6, !prof !897

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !833
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !897

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #20
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !898
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #1 !prof !899 !PGOFuncName !900 {
  %2 = load ptr, ptr %0, align 8, !tbaa !894
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #9 !prof !901 !PGOFuncName !902 {
  %2 = load ptr, ptr %0, align 8, !tbaa !894
  %3 = load ptr, ptr %2, align 8, !tbaa !833
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @annotate_one_with_location(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #17 !prof !903 !PGOFuncName !904 {
  %3 = tail call fastcc zeroext i8 @gimple_has_location(ptr noundef %0) #20, !range !653
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12, !prof !905

5:                                                ; preds = %2
  %6 = tail call fastcc zeroext i8 @gimple_do_not_emit_location_p(ptr noundef %0) #20, !range !653
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %12, !prof !906

8:                                                ; preds = %5
  %9 = tail call fastcc zeroext i8 @should_carry_location_p(ptr noundef %0) #20, !range !653
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11, !prof !907

11:                                               ; preds = %8
  tail call fastcc void @gimple_set_location(ptr noundef %0, i32 noundef %1) #20
  br label %12

12:                                               ; preds = %11, %8, %5, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #16 !prof !908 !PGOFuncName !909 {
  %2 = load ptr, ptr %0, align 8, !tbaa !894
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !910
  store ptr %4, ptr %0, align 8, !tbaa !894
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !911 !PGOFuncName !912 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !655
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_location(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !903 !PGOFuncName !913 {
  %2 = tail call fastcc i32 @gimple_location(ptr noundef %0) #20
  %3 = icmp ne i32 %2, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_do_not_emit_location_p(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !914 !PGOFuncName !915 {
  %2 = tail call fastcc i32 @gimple_plf(ptr noundef %0) #20
  %3 = trunc i32 %2 to i8
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @should_carry_location_p(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !916 !PGOFuncName !917 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !684
  %3 = icmp ne i32 %2, 4
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_location(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #15 !prof !918 !PGOFuncName !919 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 8, !tbaa !655
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !903 !PGOFuncName !920 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !655
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_plf(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !914 !PGOFuncName !921 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 11
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @mostly_copy_tree_r(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 !prof !922 !PGOFuncName !923 {
  %4 = load ptr, ptr %0, align 8, !tbaa !666
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !710
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
  ], !prof !924

14:                                               ; preds = %3, %12, %12, %12
  store i32 0, ptr %1, align 4, !tbaa !710
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

; Function Attrs: optsize
declare ptr @copy_tree_r(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @voidify_wrapper_expr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 !prof !925 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !666
  %4 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !655
  %6 = icmp eq ptr %5, null
  br i1 %6, label %99, label %7, !prof !926

7:                                                ; preds = %2
  %8 = load i64, ptr %5, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 19
  br i1 %10, label %99, label %11, !prof !927

11:                                               ; preds = %7
  %12 = load ptr, ptr %3, align 8, !tbaa !666
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
  %24 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !666
  %25 = load ptr, ptr %16, align 8, !tbaa !666
  %26 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  store ptr %24, ptr %26, align 8, !tbaa !655
  %27 = load ptr, ptr %16, align 8, !tbaa !666
  %28 = getelementptr inbounds %struct.tree_exp, ptr %27, i64 1
  br label %61

29:                                               ; preds = %14, %14, %14
  %30 = or i64 %17, 65536
  store i64 %30, ptr %15, align 8
  %31 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !666
  %32 = load ptr, ptr %16, align 8, !tbaa !666
  %33 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  store ptr %31, ptr %33, align 8, !tbaa !655
  %34 = load ptr, ptr %16, align 8, !tbaa !666
  %35 = getelementptr inbounds %struct.tree_exp, ptr %34, i64 0, i32 3
  br label %61

36:                                               ; preds = %14
  %37 = tail call fastcc { ptr, ptr } @tsi_last(ptr noundef nonnull %15) #20
  %38 = extractvalue { ptr, ptr } %37, 0
  %39 = or i64 %17, 65536
  store i64 %39, ptr %15, align 8
  %40 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !666
  %41 = load ptr, ptr %16, align 8, !tbaa !666
  %42 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  store ptr %40, ptr %42, align 8, !tbaa !655
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
  %52 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !666
  %53 = load ptr, ptr %50, align 8, !tbaa !666
  %54 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  store ptr %52, ptr %54, align 8, !tbaa !655
  %55 = load ptr, ptr %50, align 8, !tbaa !666
  %56 = getelementptr inbounds %struct.tree_exp, ptr %55, i64 1
  %57 = load ptr, ptr %56, align 8, !tbaa !666
  %58 = load i64, ptr %57, align 8
  %59 = and i64 %58, 65535
  %60 = icmp eq i64 %59, 52
  br i1 %60, label %47, label %61, !llvm.loop !928

61:                                               ; preds = %47, %19, %45, %29, %22
  %62 = phi ptr [ %35, %29 ], [ %28, %22 ], [ %46, %45 ], [ %16, %19 ], [ %56, %47 ]
  %63 = load ptr, ptr %62, align 8, !tbaa !666
  %64 = icmp eq ptr %63, null
  br i1 %64, label %79, label %14, !llvm.loop !929

65:                                               ; preds = %14
  %66 = and i64 %17, 65535
  %67 = icmp eq i64 %66, 116
  br i1 %67, label %68, label %79

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !655
  %71 = load i64, ptr %70, align 8
  %72 = and i64 %71, 65535
  %73 = icmp eq i64 %72, 19
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !655
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
  %90 = load ptr, ptr %80, align 8, !tbaa !666
  %91 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  store ptr %90, ptr %91, align 8, !tbaa !655
  br label %96

92:                                               ; preds = %79
  %93 = tail call ptr @create_tmp_var(ptr noundef nonnull %5, ptr noundef nonnull @.str.6) #20
  %94 = load ptr, ptr %80, align 8, !tbaa !666
  %95 = tail call ptr @build2_stat(i32 noundef 54, ptr noundef nonnull %5, ptr noundef %93, ptr noundef %94) #21
  br label %96

96:                                               ; preds = %89, %92
  %97 = phi ptr [ %95, %92 ], [ %1, %89 ]
  %98 = phi ptr [ %93, %92 ], [ %1, %89 ]
  store ptr %97, ptr %80, align 8, !tbaa !666
  br label %99

99:                                               ; preds = %36, %96, %2, %7, %74
  %100 = phi ptr [ null, %74 ], [ null, %7 ], [ null, %2 ], [ %98, %96 ], [ null, %36 ]
  ret ptr %100
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @tsi_end_p(ptr readnone %0) unnamed_addr #14 !prof !930 !PGOFuncName !931 {
  %2 = icmp eq ptr %0, null
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @tsi_stmt_ptr(ptr readnone %0) unnamed_addr #14 !prof !932 !PGOFuncName !933 {
  %2 = getelementptr inbounds %struct.tree_statement_list_node, ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @sort_case_labels(ptr noundef %0) local_unnamed_addr #4 !prof !934 {
  %2 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %0) #20
  %3 = zext i32 %2 to i64
  %4 = tail call fastcc ptr @VEC_tree_base_address(ptr noundef %0) #20
  tail call void @spec_qsort(ptr noundef %4, i64 noundef %3, i64 noundef 8, ptr noundef nonnull @compare_case_labels) #21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #1 !prof !935 !PGOFuncName !936 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !937

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !938
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_tree_base_address(ptr noundef readnone %0) unnamed_addr #14 !prof !934 !PGOFuncName !940 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !941
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @compare_case_labels(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 !prof !942 !PGOFuncName !943 {
  %3 = load ptr, ptr %0, align 8, !tbaa !666
  %4 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !655
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7, !prof !944

7:                                                ; preds = %2
  %8 = load ptr, ptr %1, align 8, !tbaa !666
  %9 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !655
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12, !prof !944

12:                                               ; preds = %7
  %13 = tail call i32 @tree_int_cst_compare(ptr noundef nonnull %5, ptr noundef nonnull %10) #21
  br label %14

14:                                               ; preds = %7, %2, %12
  %15 = phi i32 [ %13, %12 ], [ -1, %2 ], [ 1, %7 ]
  ret i32 %15
}

; Function Attrs: optsize
declare i32 @tree_int_cst_compare(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_and_jump(ptr noundef %0) local_unnamed_addr #4 !prof !945 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3, !prof !946

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !666
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8, !prof !947

6:                                                ; preds = %3
  %7 = tail call ptr @create_artificial_label(i32 noundef 0) #21
  store ptr %7, ptr %0, align 8, !tbaa !666
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi ptr [ %7, %6 ], [ %4, %3 ]
  %10 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !666
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
define dso_local noalias noundef ptr @force_labels_r(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2) #18 !prof !948 {
  %4 = load ptr, ptr %0, align 8, !tbaa !666
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !710
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %12, !prof !949

10:                                               ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !710
  %11 = load i64, ptr %4, align 8
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi i64 [ %11, %10 ], [ %5, %3 ]
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 30
  br i1 %15, label %16, label %18, !prof !949

16:                                               ; preds = %12
  %17 = or i64 %13, 65536
  store i64 %17, ptr %4, align 8
  br label %18

18:                                               ; preds = %16, %12
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gimple_boolify(ptr noundef %0) local_unnamed_addr #4 !prof !950 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !655
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !710
  %8 = add i32 %7, -4
  %9 = icmp ult i32 %8, 7
  br i1 %9, label %10, label %13, !prof !951

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !655
  br label %13

13:                                               ; preds = %1, %10
  %14 = phi i32 [ %12, %10 ], [ 0, %1 ]
  %15 = icmp eq i64 %5, 102
  br i1 %15, label %16, label %73, !prof !952

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !655
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 59
  br i1 %21, label %22, label %73, !prof !953

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !655
  %25 = tail call i32 @integer_zerop(ptr noundef %24) #21
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %73, label %27, !prof !954

27:                                               ; preds = %22
  %28 = load ptr, ptr %17, align 8, !tbaa !655
  %29 = tail call ptr @get_callee_fndecl(ptr noundef %28) #21
  %30 = icmp eq ptr %29, null
  br i1 %30, label %73, label %31, !prof !955

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.tree_function_decl, ptr %29, i64 0, i32 5
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 8191
  %35 = icmp eq i32 %34, 6590
  br i1 %35, label %36, label %73, !prof !956

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.tree_exp, ptr %28, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !655
  %39 = getelementptr inbounds %struct.tree_int_cst, ptr %38, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !655
  %41 = and i64 %40, 4294967295
  %42 = icmp eq i64 %41, 5
  br i1 %42, label %43, label %73, !prof !957

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.tree_exp, ptr %28, i64 1, i32 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !655
  %46 = icmp eq ptr %45, null
  br i1 %46, label %73, label %47, !prof !958

47:                                               ; preds = %43
  %48 = load i64, ptr %45, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 116
  br i1 %50, label %51, label %61, !prof !958

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !655
  %54 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !655
  %56 = icmp eq ptr %53, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.tree_exp, ptr %45, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !655
  %60 = load i64, ptr %59, align 8
  br label %61

61:                                               ; preds = %57, %51, %47
  %62 = phi i64 [ %60, %57 ], [ %48, %51 ], [ %48, %47 ]
  %63 = phi ptr [ %59, %57 ], [ %45, %51 ], [ %45, %47 ]
  %64 = trunc i64 %62 to i32
  %65 = and i32 %64, 65535
  %66 = tail call fastcc zeroext i8 @truth_value_p(i32 noundef %65) #20, !range !653
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %73, label %68, !prof !958

68:                                               ; preds = %61
  %69 = tail call ptr @gimple_boolify(ptr noundef nonnull %63) #20
  %70 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !655
  %72 = tail call ptr @fold_convert_loc(i32 noundef %14, ptr noundef %71, ptr noundef %69) #21
  store ptr %72, ptr %44, align 8, !tbaa !655
  br label %73

73:                                               ; preds = %27, %31, %36, %61, %68, %43, %22, %16, %13
  %74 = load i64, ptr %3, align 8
  %75 = and i64 %74, 65535
  %76 = icmp eq i64 %75, 7
  br i1 %76, label %93, label %77, !prof !959

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
  ], !prof !960

80:                                               ; preds = %77, %77, %77, %77, %77
  %81 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %82 = load ptr, ptr %81, align 8, !tbaa !655
  %83 = tail call ptr @gimple_boolify(ptr noundef %82) #20
  store ptr %83, ptr %81, align 8, !tbaa !655
  br label %84

84:                                               ; preds = %77, %80
  %85 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !655
  %87 = tail call ptr @gimple_boolify(ptr noundef %86) #20
  store ptr %87, ptr %85, align 8, !tbaa !655
  br label %88

88:                                               ; preds = %77, %77, %77, %77, %77, %77, %84
  %89 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !666
  store ptr %89, ptr %2, align 8, !tbaa !655
  br label %93

90:                                               ; preds = %77
  %91 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !666
  %92 = tail call ptr @fold_convert_loc(i32 noundef %14, ptr noundef %91, ptr noundef nonnull %0) #21
  br label %93

93:                                               ; preds = %73, %90, %88
  %94 = phi ptr [ %92, %90 ], [ %0, %88 ], [ %0, %73 ]
  ret ptr %94
}

; Function Attrs: optsize
declare ptr @get_callee_fndecl(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @truth_value_p(i32 noundef %0) unnamed_addr #14 !prof !961 !PGOFuncName !962 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !710
  %5 = freeze i32 %4
  %6 = icmp eq i32 %5, 5
  %7 = add i32 %0, -91
  %8 = icmp ult i32 %7, 6
  %9 = or i1 %6, %8
  %10 = zext i1 %9 to i8
  ret i8 %10
}

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local nonnull ptr @rhs_predicate_for(ptr noundef %0) local_unnamed_addr #4 !prof !963 {
  %2 = tail call zeroext i8 @is_gimple_reg(ptr noundef %0) #21
  %3 = icmp eq i8 %2, 0
  %4 = select i1 %3, ptr @is_gimple_mem_rhs_or_call, ptr @is_gimple_reg_rhs_or_call, !prof !964
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) #6

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @is_gimple_mem_rhs_or_call(ptr noundef %0) #4 !prof !965 !PGOFuncName !966 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !655
  %4 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %3) #21
  %5 = icmp eq i8 %4, 0
  %6 = tail call zeroext i8 @is_gimple_val(ptr noundef nonnull %0) #21
  br i1 %5, label %7, label %17, !prof !967

7:                                                ; preds = %1
  %8 = icmp eq i8 %6, 0
  br i1 %8, label %9, label %17, !prof !968

9:                                                ; preds = %7
  %10 = tail call zeroext i8 @is_gimple_lvalue(ptr noundef nonnull %0) #21
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %17, !prof !969

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

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @is_gimple_val(ptr noundef) #6

; Function Attrs: optsize
declare zeroext i8 @is_gimple_lvalue(ptr noundef) #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gimple_fold_indirect_ref(ptr noundef %0) local_unnamed_addr #4 !prof !970 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !655
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !655
  %6 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #21
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !655
  %9 = load i64, ptr %8, align 8
  %10 = trunc i64 %9 to i16
  switch i16 %10, label %215 [
    i16 10, label %11
    i16 12, label %11
  ], !prof !971

11:                                               ; preds = %1, %1
  %12 = load i64, ptr %6, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 121
  br i1 %14, label %15, label %83, !prof !972

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !655
  %18 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !655
  %20 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %5, ptr noundef %19) #21
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %215, !prof !973

22:                                               ; preds = %15
  %23 = load i64, ptr %19, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 15
  br i1 %25, label %26, label %54, !prof !974

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !655
  %29 = getelementptr inbounds %struct.tree_type, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !655
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 23
  br i1 %33, label %34, label %54, !prof !974

34:                                               ; preds = %26
  %35 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %5, ptr noundef nonnull %28) #21
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %39, !prof !974

37:                                               ; preds = %34
  %38 = load i64, ptr %19, align 8
  br label %54

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !655
  %42 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !666
  %43 = icmp eq ptr %41, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.tree_type, ptr %41, i64 0, i32 13
  %46 = load ptr, ptr %45, align 8, !tbaa !655
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
  br i1 %57, label %58, label %67, !prof !975

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !655
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
  br i1 %70, label %71, label %83, !prof !975

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !655
  %74 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %5, ptr noundef %73) #21
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !655
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
  br i1 %86, label %87, label %133, !prof !976

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !655
  %90 = load i64, ptr %89, align 8
  %91 = and i64 %90, 65535
  %92 = icmp eq i64 %91, 23
  br i1 %92, label %93, label %133, !prof !977

93:                                               ; preds = %87
  %94 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !655
  %96 = tail call ptr @tree_strip_nop_conversions(ptr noundef %95) #21
  %97 = load i64, ptr %96, align 8
  %98 = and i64 %97, 65535
  %99 = icmp eq i64 %98, 121
  br i1 %99, label %100, label %133, !prof !978

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.tree_common, ptr %96, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !655
  %103 = getelementptr inbounds %struct.tree_common, ptr %102, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !655
  %105 = load i64, ptr %104, align 8
  %106 = and i64 %105, 65535
  %107 = icmp eq i64 %106, 14
  br i1 %107, label %108, label %133, !prof !979

108:                                              ; preds = %100
  %109 = getelementptr inbounds %struct.tree_common, ptr %104, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !655
  %111 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %5, ptr noundef %110) #21
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %133, label %113

113:                                              ; preds = %108
  %114 = tail call i64 @tree_low_cst(ptr noundef nonnull %89, i32 noundef 0) #21
  %115 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !655
  %117 = tail call i64 @tree_low_cst(ptr noundef %116, i32 noundef 0) #21
  %118 = sdiv i64 %117, 8
  %119 = shl nsw i64 %114, 3
  %120 = tail call ptr @size_int_kind(i64 noundef %119, i32 noundef 2) #21
  %121 = udiv i64 %114, %118
  %122 = load ptr, ptr %103, align 8, !tbaa !655
  %123 = getelementptr inbounds %struct.tree_type, ptr %122, i64 0, i32 6
  %124 = load i32, ptr %123, align 4
  %125 = and i32 %124, 1023
  %126 = zext nneg i32 %125 to i64
  %127 = shl nuw i64 1, %126
  %128 = icmp ugt i64 %121, %127
  br i1 %128, label %133, label %129

129:                                              ; preds = %113
  %130 = getelementptr inbounds %struct.tree_exp, ptr %96, i64 0, i32 3
  %131 = load ptr, ptr %130, align 8, !tbaa !655
  %132 = tail call ptr @fold_build3_stat_loc(i32 noundef 0, i32 noundef 42, ptr noundef nonnull %5, ptr noundef %131, ptr noundef %116, ptr noundef %120) #21
  br label %215

133:                                              ; preds = %113, %93, %100, %108, %87, %83
  %134 = load i64, ptr %6, align 8
  %135 = and i64 %134, 65535
  %136 = icmp eq i64 %135, 66
  br i1 %136, label %137, label %172, !prof !976

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %139 = load ptr, ptr %138, align 8, !tbaa !655
  %140 = load i64, ptr %139, align 8
  %141 = and i64 %140, 65535
  %142 = icmp eq i64 %141, 23
  br i1 %142, label %143, label %172, !prof !977

143:                                              ; preds = %137
  %144 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !655
  %146 = tail call ptr @tree_strip_nop_conversions(ptr noundef %145) #21
  %147 = load i64, ptr %146, align 8
  %148 = and i64 %147, 65535
  %149 = icmp eq i64 %148, 121
  br i1 %149, label %150, label %172, !prof !978

150:                                              ; preds = %143
  %151 = getelementptr inbounds %struct.tree_common, ptr %146, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !655
  %153 = getelementptr inbounds %struct.tree_common, ptr %152, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !655
  %155 = load i64, ptr %154, align 8
  %156 = and i64 %155, 65535
  %157 = icmp eq i64 %156, 13
  br i1 %157, label %158, label %172, !prof !979

158:                                              ; preds = %150
  %159 = getelementptr inbounds %struct.tree_common, ptr %154, i64 0, i32 2
  %160 = load ptr, ptr %159, align 8, !tbaa !655
  %161 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %5, ptr noundef %160) #21
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %172, label %163

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 3
  %165 = load ptr, ptr %164, align 8, !tbaa !655
  %166 = tail call i32 @tree_int_cst_equal(ptr noundef %165, ptr noundef nonnull %139) #21
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct.tree_exp, ptr %146, i64 0, i32 3
  %170 = load ptr, ptr %169, align 8, !tbaa !655
  %171 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 44, ptr noundef nonnull %5, ptr noundef %170) #21
  br label %215

172:                                              ; preds = %163, %143, %150, %158, %137, %133
  %173 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %174 = load ptr, ptr %173, align 8, !tbaa !655
  %175 = load i64, ptr %174, align 8
  %176 = and i64 %175, 65535
  %177 = icmp eq i64 %176, 15
  br i1 %177, label %178, label %215, !prof !980

178:                                              ; preds = %172
  %179 = getelementptr inbounds %struct.tree_common, ptr %174, i64 0, i32 2
  %180 = load ptr, ptr %179, align 8, !tbaa !655
  %181 = getelementptr inbounds %struct.tree_type, ptr %180, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !655
  %183 = load i64, ptr %182, align 8
  %184 = and i64 %183, 65535
  %185 = icmp eq i64 %184, 23
  br i1 %185, label %186, label %215, !prof !981

186:                                              ; preds = %178
  %187 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %5, ptr noundef nonnull %180) #21
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %215, label %189, !prof !981

189:                                              ; preds = %186
  %190 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !666
  %191 = tail call ptr @gimple_fold_indirect_ref(ptr noundef nonnull %6) #20
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = load ptr, ptr %173, align 8, !tbaa !655
  %195 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %194, ptr noundef nonnull %6) #21
  br label %196

196:                                              ; preds = %193, %189
  %197 = phi ptr [ %191, %189 ], [ %195, %193 ]
  %198 = getelementptr inbounds %struct.tree_common, ptr %197, i64 0, i32 2
  %199 = load ptr, ptr %198, align 8, !tbaa !655
  %200 = getelementptr inbounds %struct.tree_type, ptr %199, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !655
  %202 = icmp eq ptr %201, null
  br i1 %202, label %208, label %203

203:                                              ; preds = %196
  %204 = getelementptr inbounds %struct.tree_type, ptr %201, i64 0, i32 13
  %205 = load ptr, ptr %204, align 8, !tbaa !655
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

; Function Attrs: optsize
declare zeroext i8 @is_gimple_stmt(ptr noundef) #6

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
declare zeroext i8 @is_gimple_addressable(ptr noundef) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #16 !prof !982 !PGOFuncName !983 {
  %3 = tail call fastcc ptr @gimple_seq_last(ptr noundef %1) #20
  store ptr %3, ptr %0, align 8, !tbaa !894
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !896
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6, !prof !984

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !833
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !985

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #20
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !898
  ret void
}

; Function Attrs: optsize
declare ptr @tree_ssa_strip_useless_type_conversions(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gimplify_self_mod_expr(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #4 !prof !986 !PGOFuncName !987 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  store ptr null, ptr %7, align 8, !tbaa !666
  %8 = load ptr, ptr %0, align 8, !tbaa !666
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !710
  %13 = add i32 %12, -4
  %14 = icmp ult i32 %13, 7
  br i1 %14, label %15, label %18, !prof !988

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !655
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
  br i1 %27, label %30, label %28, !prof !989

28:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2087, ptr noundef nonnull @.str.1) #21
  %29 = load ptr, ptr %0, align 8, !tbaa !666
  br label %30

30:                                               ; preds = %18, %28
  %31 = phi ptr [ %8, %18 ], [ %29, %28 ]
  %32 = icmp eq i8 %3, 0
  %33 = or i1 %32, %24
  %34 = select i1 %33, ptr %2, ptr %7, !prof !990
  %35 = and i1 %25, %22
  %36 = select i1 %35, i32 64, i32 63, !prof !991
  %37 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !655
  store ptr %38, ptr %6, align 8, !tbaa !666
  %39 = call i32 @gimplify_expr(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %34, ptr noundef nonnull @is_gimple_lvalue, i32 noundef 2) #20
  %40 = icmp eq i32 %39, -2
  br i1 %40, label %97, label %41, !prof !992

41:                                               ; preds = %30
  %42 = load ptr, ptr %6, align 8, !tbaa !666
  store ptr %42, ptr %5, align 8, !tbaa !666
  %43 = load ptr, ptr %0, align 8, !tbaa !666
  %44 = getelementptr inbounds %struct.tree_exp, ptr %43, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !655
  br i1 %33, label %63, label %46, !prof !990

46:                                               ; preds = %41
  %47 = call zeroext i8 @is_gimple_min_lval(ptr noundef %42) #21
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %58, !prof !993

49:                                               ; preds = %46
  %50 = load ptr, ptr %6, align 8, !tbaa !666
  call void @mark_addressable(ptr noundef %50) #20
  %51 = load i32, ptr @input_location, align 4, !tbaa !710
  %52 = load ptr, ptr %6, align 8, !tbaa !666
  %53 = call ptr @build_fold_addr_expr_loc(i32 noundef %51, ptr noundef %52) #21
  store ptr %53, ptr %6, align 8, !tbaa !666
  %54 = call i32 @gimplify_expr(ptr noundef nonnull %6, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %55 = load i32, ptr @input_location, align 4, !tbaa !710
  %56 = load ptr, ptr %6, align 8, !tbaa !666
  %57 = call ptr @build_fold_indirect_ref_loc(i32 noundef %55, ptr noundef %56) #21
  store ptr %57, ptr %6, align 8, !tbaa !666
  br label %58

58:                                               ; preds = %49, %46
  %59 = call i32 @gimplify_expr(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %60 = icmp eq i32 %59, -2
  br i1 %60, label %97, label %61, !prof !994

61:                                               ; preds = %58
  %62 = load ptr, ptr %5, align 8, !tbaa !666
  br label %63

63:                                               ; preds = %61, %41
  %64 = phi ptr [ %62, %61 ], [ %42, %41 ]
  %65 = getelementptr inbounds %struct.tree_common, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !655
  %67 = load i64, ptr %66, align 8
  %68 = trunc i64 %67 to i16
  switch i16 %68, label %77 [
    i16 10, label %69
    i16 12, label %69
  ], !prof !995

69:                                               ; preds = %63, %63
  %70 = load ptr, ptr @sizetype_tab, align 16, !tbaa !666
  %71 = call ptr @fold_convert_loc(i32 noundef %19, ptr noundef %70, ptr noundef %45) #21
  %72 = trunc i64 %9 to i16
  switch i16 %72, label %73 [
    i16 128, label %77
    i16 126, label %77
  ]

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.tree_common, ptr %71, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !655
  %76 = call ptr @fold_build1_stat_loc(i32 noundef %19, i32 noundef 79, ptr noundef %75, ptr noundef %71) #21
  br label %77

77:                                               ; preds = %73, %69, %69, %63
  %78 = phi ptr [ %45, %63 ], [ %76, %73 ], [ %71, %69 ], [ %71, %69 ]
  %79 = phi i32 [ %36, %63 ], [ 66, %73 ], [ 66, %69 ], [ 66, %69 ]
  %80 = load ptr, ptr %0, align 8, !tbaa !666
  %81 = getelementptr inbounds %struct.tree_common, ptr %80, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !655
  %83 = load ptr, ptr %5, align 8, !tbaa !666
  %84 = call ptr @build2_stat(i32 noundef %79, ptr noundef %82, ptr noundef %83, ptr noundef %78) #21
  %85 = load ptr, ptr %6, align 8, !tbaa !666
  br i1 %33, label %90, label %86, !prof !990

86:                                               ; preds = %77
  %87 = call ptr @gimplify_assign(ptr noundef %85, ptr noundef %84, ptr noundef %2) #21
  %88 = load ptr, ptr %7, align 8, !tbaa !666
  call fastcc void @gimplify_seq_add_seq(ptr noundef %2, ptr noundef %88) #20
  %89 = load ptr, ptr %5, align 8, !tbaa !666
  br label %94

90:                                               ; preds = %77
  %91 = getelementptr inbounds %struct.tree_common, ptr %85, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !655
  %93 = call ptr @build2_stat(i32 noundef 53, ptr noundef %92, ptr noundef %85, ptr noundef %84) #21
  br label %94

94:                                               ; preds = %86, %90
  %95 = phi ptr [ %93, %90 ], [ %89, %86 ]
  %96 = phi i32 [ 0, %90 ], [ 1, %86 ]
  store ptr %95, ptr %0, align 8, !tbaa !666
  br label %97

97:                                               ; preds = %94, %58, %30
  %98 = phi i32 [ -2, %30 ], [ -2, %58 ], [ %96, %94 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  ret i32 %98
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimplify_compound_lval(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #4 !prof !996 !PGOFuncName !997 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %6 = load ptr, ptr %0, align 8, !tbaa !666
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !710
  %11 = add i32 %10, -4
  %12 = icmp ult i32 %11, 7
  br i1 %12, label %13, label %16, !prof !998

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !655
  br label %16

16:                                               ; preds = %4, %13
  %17 = phi i32 [ %15, %13 ], [ 0, %4 ]
  %18 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef 10) #20
  store ptr %18, ptr %5, align 8, !tbaa !666
  br label %19

19:                                               ; preds = %38, %16
  %20 = phi ptr [ %0, %16 ], [ %40, %38 ]
  br label %21

21:                                               ; preds = %35, %19
  %22 = load ptr, ptr %20, align 8, !tbaa !666
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 47
  br i1 %25, label %26, label %28, !prof !999

26:                                               ; preds = %21
  %27 = tail call ptr @fold_indirect_ref_loc(i32 noundef %17, ptr noundef nonnull %22) #21
  store ptr %27, ptr %20, align 8, !tbaa !666
  br label %28

28:                                               ; preds = %26, %21
  %29 = phi ptr [ %27, %26 ], [ %22, %21 ]
  %30 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %29) #20, !range !653
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %38, !prof !1000

32:                                               ; preds = %28
  %33 = load i64, ptr %29, align 8
  %34 = trunc i64 %33 to i16
  switch i16 %34, label %41 [
    i16 32, label %35
    i16 34, label %35
  ], !prof !1001

35:                                               ; preds = %32, %32
  %36 = tail call fastcc i32 @gimplify_var_or_parm_decl(ptr noundef nonnull %20) #20, !range !768
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %21, label %41, !prof !1002

38:                                               ; preds = %28
  call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %5, ptr noundef %29) #20
  %39 = load ptr, ptr %20, align 8, !tbaa !666
  %40 = getelementptr inbounds %struct.tree_exp, ptr %39, i64 0, i32 3
  br label %19

41:                                               ; preds = %32, %35
  %42 = load ptr, ptr %5, align 8
  %43 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %42) #20
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46, !prof !1003

45:                                               ; preds = %41
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1925, ptr noundef nonnull @.str.1) #21
  br label %46

46:                                               ; preds = %41, %45
  %47 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %42) #20
  %48 = add i32 %47, -1
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %50, label %120, !prof !1004

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
  ], !prof !1005

56:                                               ; preds = %50, %50
  %57 = getelementptr inbounds %struct.tree_exp, ptr %53, i64 0, i32 3
  %58 = getelementptr inbounds %struct.tree_exp, ptr %53, i64 1, i32 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !655
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %69, !prof !1006

61:                                               ; preds = %56
  %62 = tail call ptr @array_ref_low_bound(ptr noundef nonnull %53) #21
  %63 = tail call ptr @unshare_expr(ptr noundef %62) #20
  %64 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %63) #21
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %69, !prof !1007

66:                                               ; preds = %61
  store ptr %63, ptr %58, align 8, !tbaa !655
  %67 = tail call i32 @gimplify_expr(ptr noundef nonnull %58, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_reg, i32 noundef 1) #20
  %68 = tail call i32 @llvm.smin.i32(i32 %52, i32 %67)
  br label %69

69:                                               ; preds = %61, %66, %56
  %70 = phi i32 [ %52, %56 ], [ %52, %61 ], [ %68, %66 ]
  %71 = getelementptr inbounds %struct.tree_exp, ptr %53, i64 1, i32 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !655
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %116, !prof !1006

74:                                               ; preds = %69
  %75 = load ptr, ptr %57, align 8, !tbaa !655
  %76 = getelementptr inbounds %struct.tree_common, ptr %75, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !655
  %78 = getelementptr inbounds %struct.tree_common, ptr %77, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !655
  %80 = tail call ptr @array_ref_element_size(ptr noundef nonnull %53) #21
  %81 = tail call ptr @unshare_expr(ptr noundef %80) #20
  %82 = getelementptr inbounds %struct.tree_type, ptr %79, i64 0, i32 7
  %83 = load i32, ptr %82, align 8, !tbaa !655
  %84 = lshr i32 %83, 3
  %85 = zext nneg i32 %84 to i64
  %86 = tail call ptr @size_int_kind(i64 noundef %85, i32 noundef 0) #21
  %87 = tail call ptr @size_binop_loc(i32 noundef %17, i32 noundef 76, ptr noundef %81, ptr noundef %86) #21
  %88 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %87) #21
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %116, !prof !1007

90:                                               ; preds = %74
  store ptr %87, ptr %71, align 8, !tbaa !655
  br label %111

91:                                               ; preds = %50
  %92 = getelementptr inbounds %struct.tree_exp, ptr %53, i64 1, i32 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !655
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %116, !prof !1008

95:                                               ; preds = %91
  %96 = tail call ptr @component_ref_field_offset(ptr noundef nonnull %53) #21
  %97 = tail call ptr @unshare_expr(ptr noundef %96) #20
  %98 = getelementptr inbounds %struct.tree_exp, ptr %53, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !655
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
  br i1 %109, label %110, label %116, !prof !1009

110:                                              ; preds = %95
  store ptr %107, ptr %92, align 8, !tbaa !655
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
  br i1 %119, label %50, label %120, !prof !1010, !llvm.loop !1011

120:                                              ; preds = %116, %46
  %121 = phi i32 [ 0, %46 ], [ %117, %116 ]
  %122 = or i32 %3, 2
  %123 = tail call i32 @gimplify_expr(ptr noundef nonnull %20, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_min_lval, i32 noundef %122) #20
  %124 = tail call i32 @llvm.smin.i32(i32 %121, i32 %123)
  %125 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %42) #20
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %154, label %127, !prof !1012

127:                                              ; preds = %120, %147
  %128 = phi i32 [ %148, %147 ], [ %124, %120 ]
  %129 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %42) #20
  %130 = load i64, ptr %129, align 8
  %131 = trunc i64 %130 to i16
  switch i16 %131, label %147 [
    i16 45, label %132
    i16 46, label %132
    i16 42, label %137
  ], !prof !1013

132:                                              ; preds = %127, %127
  %133 = getelementptr inbounds %struct.tree_exp, ptr %129, i64 1
  %134 = load ptr, ptr %133, align 8, !tbaa !655
  %135 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %134) #21
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %142, label %147, !prof !1014

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
  %150 = load ptr, ptr %149, align 8, !tbaa !655
  %151 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef %150) #21
  store ptr %151, ptr %149, align 8, !tbaa !655
  tail call void @recalculate_side_effects(ptr noundef nonnull %129) #21
  %152 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %42) #20
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %127, !prof !1015, !llvm.loop !1016

154:                                              ; preds = %147, %120
  %155 = phi i32 [ %124, %120 ], [ %148, %147 ]
  %156 = and i32 %3, 1
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %166, label %158, !prof !1017

158:                                              ; preds = %154
  %159 = load ptr, ptr %0, align 8, !tbaa !666
  %160 = load i64, ptr %159, align 8
  %161 = and i64 %160, 65535
  %162 = icmp eq i64 %161, 41
  br i1 %162, label %163, label %166, !prof !1018

163:                                              ; preds = %158
  tail call fastcc void @canonicalize_component_ref(ptr noundef nonnull %0) #20
  %164 = icmp slt i32 %155, 0
  br i1 %164, label %165, label %166, !prof !1019

165:                                              ; preds = %163
  br label %166

166:                                              ; preds = %165, %163, %158, %154
  %167 = phi i32 [ %155, %158 ], [ %155, %154 ], [ %155, %165 ], [ 0, %163 ]
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  ret i32 %167
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gimplify_cond_expr(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 !prof !1020 !PGOFuncName !1021 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %9 = load ptr, ptr %0, align 8, !tbaa !666
  store ptr %9, ptr %4, align 8, !tbaa !666
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  store ptr null, ptr %8, align 8, !tbaa !666
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !710
  %14 = add i32 %13, -4
  %15 = icmp ult i32 %14, 7
  br i1 %15, label %16, label %19, !prof !1022

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !655
  br label %19

19:                                               ; preds = %3, %16
  %20 = phi i32 [ %18, %16 ], [ 0, %3 ]
  %21 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !655
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 19
  br i1 %25, label %127, label %26, !prof !1023

26:                                               ; preds = %19
  %27 = and i32 %2, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35, !prof !1024

29:                                               ; preds = %26
  %30 = and i32 %2, 2
  %31 = icmp eq i32 %30, 0
  %32 = and i64 %23, 262144
  %33 = icmp eq i64 %32, 0
  %34 = and i1 %31, %33
  br i1 %34, label %38, label %67, !prof !1025

35:                                               ; preds = %26
  %36 = and i64 %23, 262144
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %67, !prof !1026

38:                                               ; preds = %29, %35
  %39 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %40 = getelementptr inbounds %struct.gimplify_ctx, ptr %39, i64 0, i32 11
  %41 = load i8, ptr %40, align 2, !tbaa !1027
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %64, label %43, !prof !1026

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !655
  %46 = load i64, ptr %45, align 8
  %47 = and i64 %46, 65536
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %43
  %50 = tail call fastcc zeroext i8 @generic_expr_could_trap_p(ptr noundef nonnull %45) #20, !range !653
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load ptr, ptr %0, align 8, !tbaa !666
  %54 = getelementptr inbounds %struct.tree_exp, ptr %53, i64 1, i32 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !655
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 65536
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = tail call fastcc zeroext i8 @generic_expr_could_trap_p(ptr noundef nonnull %55) #20, !range !653
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = tail call fastcc i32 @gimplify_pure_cond_expr(ptr noundef nonnull %0, ptr noundef %1) #20
  br label %305

64:                                               ; preds = %59, %52, %49, %43, %38
  %65 = load ptr, ptr %21, align 8, !tbaa !655
  %66 = tail call ptr @create_tmp_var(ptr noundef %65, ptr noundef nonnull @.str.8) #20
  br label %96

67:                                               ; preds = %35, %29
  %68 = tail call ptr @build_pointer_type(ptr noundef nonnull %22) #21
  %69 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !655
  %71 = getelementptr inbounds %struct.tree_common, ptr %70, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !655
  %73 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !666
  %74 = icmp eq ptr %72, %73
  br i1 %74, label %78, label %75

75:                                               ; preds = %67
  %76 = tail call ptr @build_fold_addr_expr_loc(i32 noundef %20, ptr noundef nonnull %70) #21
  store ptr %76, ptr %69, align 8, !tbaa !655
  %77 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !666
  br label %78

78:                                               ; preds = %75, %67
  %79 = phi ptr [ %77, %75 ], [ %72, %67 ]
  %80 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1, i32 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !655
  %82 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !655
  %84 = icmp eq ptr %83, %79
  br i1 %84, label %87, label %85

85:                                               ; preds = %78
  %86 = tail call ptr @build_fold_addr_expr_loc(i32 noundef %20, ptr noundef nonnull %81) #21
  store ptr %86, ptr %80, align 8, !tbaa !655
  br label %87

87:                                               ; preds = %85, %78
  %88 = tail call ptr @create_tmp_var(ptr noundef %68, ptr noundef nonnull @.str.8) #20
  %89 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !666
  %90 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !655
  %92 = load ptr, ptr %69, align 8, !tbaa !655
  %93 = load ptr, ptr %80, align 8, !tbaa !655
  %94 = tail call ptr @build3_stat(i32 noundef 56, ptr noundef %89, ptr noundef %91, ptr noundef %92, ptr noundef %93) #21
  store ptr %94, ptr %4, align 8, !tbaa !666
  %95 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef %20, ptr noundef %88) #21
  br label %96

96:                                               ; preds = %87, %64
  %97 = phi ptr [ %94, %87 ], [ %9, %64 ]
  %98 = phi ptr [ %95, %87 ], [ %66, %64 ]
  %99 = phi ptr [ %88, %87 ], [ %66, %64 ]
  %100 = getelementptr inbounds %struct.tree_exp, ptr %97, i64 1
  %101 = load ptr, ptr %100, align 8, !tbaa !655
  %102 = getelementptr inbounds %struct.tree_common, ptr %101, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !655
  %104 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !666
  %105 = icmp eq ptr %103, %104
  br i1 %105, label %111, label %106, !prof !1028

106:                                              ; preds = %96
  %107 = getelementptr inbounds %struct.tree_common, ptr %99, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !655
  %109 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %108, ptr noundef %99, ptr noundef nonnull %101) #21
  store ptr %109, ptr %100, align 8, !tbaa !655
  %110 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !666
  br label %111

111:                                              ; preds = %106, %96
  %112 = phi ptr [ %110, %106 ], [ %103, %96 ]
  %113 = getelementptr inbounds %struct.tree_exp, ptr %97, i64 1, i32 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !655
  %115 = getelementptr inbounds %struct.tree_common, ptr %114, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !655
  %117 = icmp eq ptr %116, %112
  br i1 %117, label %123, label %118, !prof !1028

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.tree_common, ptr %99, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !655
  %121 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %120, ptr noundef %99, ptr noundef nonnull %114) #21
  store ptr %121, ptr %113, align 8, !tbaa !655
  %122 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !666
  br label %123

123:                                              ; preds = %118, %111
  %124 = phi ptr [ %122, %118 ], [ %112, %111 ]
  %125 = getelementptr inbounds %struct.tree_common, ptr %97, i64 0, i32 2
  store ptr %124, ptr %125, align 8, !tbaa !655
  tail call void @recalculate_side_effects(ptr noundef nonnull %97) #21
  %126 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %4, ptr noundef %1) #20, !range !653
  store ptr %98, ptr %0, align 8, !tbaa !666
  br label %305

127:                                              ; preds = %19
  %128 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !655
  %130 = tail call ptr @gimple_boolify(ptr noundef %129) #20
  store ptr %130, ptr %128, align 8, !tbaa !655
  %131 = load i64, ptr %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = and i32 %132, 65535
  %134 = add nsw i32 %133, -91
  %135 = icmp ult i32 %134, 2
  br i1 %135, label %136, label %143, !prof !1029

136:                                              ; preds = %127
  %137 = tail call fastcc ptr @shortcut_cond_expr(ptr noundef nonnull %9) #20
  store ptr %137, ptr %4, align 8, !tbaa !666
  %138 = load ptr, ptr %0, align 8, !tbaa !666
  %139 = icmp eq ptr %137, %138
  br i1 %139, label %143, label %140, !prof !1030

140:                                              ; preds = %136
  store ptr %137, ptr %0, align 8, !tbaa !666
  tail call fastcc void @gimple_push_condition() #20
  %141 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %0, ptr noundef nonnull %8) #20, !range !653
  call fastcc void @gimple_pop_condition(ptr noundef %1) #20
  %142 = load ptr, ptr %8, align 8, !tbaa !666
  call void @gimple_seq_add_seq(ptr noundef %1, ptr noundef %142) #21
  br label %305

143:                                              ; preds = %127, %136
  %144 = phi ptr [ %9, %127 ], [ %137, %136 ]
  %145 = getelementptr inbounds %struct.tree_exp, ptr %144, i64 0, i32 3
  %146 = tail call i32 @gimplify_expr(ptr noundef nonnull %145, ptr noundef %1, ptr noundef null, ptr noundef nonnull @is_gimple_condexpr, i32 noundef 1) #20
  %147 = icmp eq i32 %146, -2
  br i1 %147, label %305, label %148, !prof !1031

148:                                              ; preds = %143
  %149 = load ptr, ptr %145, align 8, !tbaa !655
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %152, !prof !1031

151:                                              ; preds = %148
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2970, ptr noundef nonnull @.str.1) #21
  br label %152

152:                                              ; preds = %148, %151
  tail call fastcc void @gimple_push_condition() #20
  %153 = getelementptr inbounds %struct.tree_exp, ptr %144, i64 1
  %154 = load ptr, ptr %153, align 8, !tbaa !655
  %155 = icmp eq ptr %154, null
  br i1 %155, label %195, label %156, !prof !1032

156:                                              ; preds = %152
  %157 = load i64, ptr %154, align 8
  %158 = and i64 %157, 65535
  %159 = icmp eq i64 %158, 134
  br i1 %159, label %160, label %195, !prof !1033

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.tree_exp, ptr %154, i64 0, i32 3
  %162 = load ptr, ptr %161, align 8, !tbaa !655
  %163 = load i64, ptr %162, align 8
  %164 = and i64 %163, 65535
  %165 = icmp eq i64 %164, 30
  br i1 %165, label %166, label %195, !prof !1034

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct.tree_decl_minimal, ptr %162, i64 0, i32 4
  %168 = load ptr, ptr %167, align 8, !tbaa !655
  %169 = load ptr, ptr @current_function_decl, align 8, !tbaa !666
  %170 = icmp eq ptr %168, %169
  br i1 %170, label %171, label %195, !prof !1034

171:                                              ; preds = %166
  %172 = load i32, ptr @optimize, align 4, !tbaa !710
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %197, !prof !1035

174:                                              ; preds = %171
  %175 = load i64, ptr %144, align 8
  %176 = and i64 %175, 65535
  %177 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %176
  %178 = load i32, ptr %177, align 4, !tbaa !710
  %179 = add i32 %178, -4
  %180 = icmp ult i32 %179, 7
  br i1 %180, label %181, label %197

181:                                              ; preds = %174
  %182 = getelementptr inbounds %struct.tree_exp, ptr %144, i64 0, i32 1
  %183 = load i32, ptr %182, align 8, !tbaa !655
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %197, label %185

185:                                              ; preds = %181
  %186 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 134), align 4, !tbaa !710
  %187 = add i32 %186, -4
  %188 = icmp ult i32 %187, 7
  br i1 %188, label %189, label %197

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.tree_exp, ptr %154, i64 0, i32 1
  %191 = load i32, ptr %190, align 8, !tbaa !655
  %192 = icmp eq i32 %191, 0
  %193 = icmp eq i32 %183, %191
  %194 = or i1 %192, %193
  br i1 %194, label %197, label %195

195:                                              ; preds = %189, %166, %160, %156, %152
  %196 = tail call ptr @create_artificial_label(i32 noundef 0) #21
  br label %197

197:                                              ; preds = %185, %174, %171, %181, %189, %195
  %198 = phi i1 [ true, %195 ], [ false, %189 ], [ false, %181 ], [ false, %171 ], [ false, %174 ], [ false, %185 ]
  %199 = phi ptr [ %196, %195 ], [ %162, %189 ], [ %162, %181 ], [ %162, %171 ], [ %162, %174 ], [ %162, %185 ]
  %200 = getelementptr inbounds %struct.tree_exp, ptr %144, i64 1, i32 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !655
  %202 = icmp eq ptr %201, null
  br i1 %202, label %242, label %203, !prof !1036

203:                                              ; preds = %197
  %204 = load i64, ptr %201, align 8
  %205 = and i64 %204, 65535
  %206 = icmp eq i64 %205, 134
  br i1 %206, label %207, label %242, !prof !1037

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.tree_exp, ptr %201, i64 0, i32 3
  %209 = load ptr, ptr %208, align 8, !tbaa !655
  %210 = load i64, ptr %209, align 8
  %211 = and i64 %210, 65535
  %212 = icmp eq i64 %211, 30
  br i1 %212, label %213, label %242, !prof !1038

213:                                              ; preds = %207
  %214 = getelementptr inbounds %struct.tree_decl_minimal, ptr %209, i64 0, i32 4
  %215 = load ptr, ptr %214, align 8, !tbaa !655
  %216 = load ptr, ptr @current_function_decl, align 8, !tbaa !666
  %217 = icmp eq ptr %215, %216
  br i1 %217, label %218, label %242, !prof !1038

218:                                              ; preds = %213
  %219 = load i32, ptr @optimize, align 4, !tbaa !710
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %244, !prof !1039

221:                                              ; preds = %218
  %222 = load i64, ptr %144, align 8
  %223 = and i64 %222, 65535
  %224 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %223
  %225 = load i32, ptr %224, align 4, !tbaa !710
  %226 = add i32 %225, -4
  %227 = icmp ult i32 %226, 7
  br i1 %227, label %228, label %244

228:                                              ; preds = %221
  %229 = getelementptr inbounds %struct.tree_exp, ptr %144, i64 0, i32 1
  %230 = load i32, ptr %229, align 8, !tbaa !655
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %244, label %232

232:                                              ; preds = %228
  %233 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 134), align 4, !tbaa !710
  %234 = add i32 %233, -4
  %235 = icmp ult i32 %234, 7
  br i1 %235, label %236, label %244

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.tree_exp, ptr %201, i64 0, i32 1
  %238 = load i32, ptr %237, align 8, !tbaa !655
  %239 = icmp eq i32 %238, 0
  %240 = icmp eq i32 %230, %238
  %241 = or i1 %239, %240
  br i1 %241, label %244, label %242

242:                                              ; preds = %236, %213, %207, %203, %197
  %243 = tail call ptr @create_artificial_label(i32 noundef 0) #21
  br label %244

244:                                              ; preds = %221, %218, %228, %236, %232, %242
  %245 = phi ptr [ %243, %242 ], [ %209, %232 ], [ %209, %236 ], [ %209, %228 ], [ %209, %218 ], [ %209, %221 ]
  %246 = phi i1 [ false, %242 ], [ true, %232 ], [ true, %236 ], [ true, %228 ], [ true, %218 ], [ true, %221 ]
  %247 = phi i1 [ true, %242 ], [ false, %232 ], [ false, %236 ], [ false, %228 ], [ false, %218 ], [ false, %221 ]
  %248 = load ptr, ptr %145, align 8, !tbaa !655
  call void @gimple_cond_get_ops_from_tree(ptr noundef %248, ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %249 = load i32, ptr %7, align 4, !tbaa !710
  %250 = load ptr, ptr %5, align 8, !tbaa !666
  %251 = load ptr, ptr %6, align 8, !tbaa !666
  %252 = call ptr @gimple_build_cond(i32 noundef %249, ptr noundef %250, ptr noundef %251, ptr noundef %199, ptr noundef %245) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %8, ptr noundef %252) #20
  br i1 %198, label %253, label %280, !prof !1040

253:                                              ; preds = %244
  %254 = load ptr, ptr %4, align 8, !tbaa !666
  %255 = getelementptr inbounds %struct.tree_exp, ptr %254, i64 1
  %256 = load ptr, ptr %255, align 8, !tbaa !655
  %257 = icmp ne ptr %256, null
  %258 = or i1 %246, %257
  br i1 %258, label %263, label %259, !prof !1041

259:                                              ; preds = %253
  %260 = getelementptr inbounds %struct.tree_exp, ptr %254, i64 1, i32 0, i32 1
  %261 = load ptr, ptr %260, align 8, !tbaa !655
  %262 = icmp eq ptr %261, null
  br i1 %262, label %263, label %280, !prof !1042

263:                                              ; preds = %259, %253
  %264 = call ptr @gimple_build_label(ptr noundef %199) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %8, ptr noundef %264) #20
  %265 = load ptr, ptr %4, align 8, !tbaa !666
  %266 = getelementptr inbounds %struct.tree_exp, ptr %265, i64 1
  %267 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %266, ptr noundef nonnull %8) #20, !range !653
  br i1 %246, label %280, label %268, !prof !1043

268:                                              ; preds = %263
  %269 = load ptr, ptr %4, align 8, !tbaa !666
  %270 = getelementptr inbounds %struct.tree_exp, ptr %269, i64 1, i32 0, i32 1
  %271 = load ptr, ptr %270, align 8, !tbaa !655
  %272 = icmp eq ptr %271, null
  br i1 %272, label %280, label %273, !prof !1044

273:                                              ; preds = %268
  %274 = load ptr, ptr %8, align 8, !tbaa !666
  %275 = call zeroext i8 @gimple_seq_may_fallthru(ptr noundef %274) #21
  %276 = icmp eq i8 %275, 0
  br i1 %276, label %280, label %277, !prof !1045

277:                                              ; preds = %273
  %278 = call ptr @create_artificial_label(i32 noundef 0) #21
  %279 = call ptr @gimple_build_goto(ptr noundef %278) #21
  call fastcc void @gimple_set_do_not_emit_location(ptr noundef %279) #20
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %8, ptr noundef %279) #20
  br label %280

280:                                              ; preds = %259, %277, %273, %268, %263, %244
  %281 = phi ptr [ null, %244 ], [ null, %263 ], [ %278, %277 ], [ null, %273 ], [ null, %268 ], [ %199, %259 ]
  %282 = phi i8 [ 1, %244 ], [ %267, %263 ], [ %267, %277 ], [ %267, %273 ], [ %267, %268 ], [ 0, %259 ]
  br i1 %247, label %283, label %289, !prof !1046

283:                                              ; preds = %280
  %284 = call ptr @gimple_build_label(ptr noundef %245) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %8, ptr noundef %284) #20
  %285 = load ptr, ptr %4, align 8, !tbaa !666
  %286 = getelementptr inbounds %struct.tree_exp, ptr %285, i64 1, i32 0, i32 1
  %287 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %286, ptr noundef nonnull %8) #20, !range !653
  %288 = icmp ne i8 %287, 0
  br label %289

289:                                              ; preds = %283, %280
  %290 = phi i1 [ true, %280 ], [ %288, %283 ]
  %291 = icmp eq ptr %281, null
  br i1 %291, label %294, label %292, !prof !1047

292:                                              ; preds = %289
  %293 = call ptr @gimple_build_label(ptr noundef nonnull %281) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %8, ptr noundef %293) #20
  br label %294

294:                                              ; preds = %292, %289
  call fastcc void @gimple_pop_condition(ptr noundef %1) #20
  %295 = load ptr, ptr %8, align 8, !tbaa !666
  call void @gimple_seq_add_seq(ptr noundef %1, ptr noundef %295) #21
  %296 = icmp ne i8 %282, 0
  %297 = select i1 %296, i1 true, i1 %290
  br i1 %297, label %303, label %298, !prof !1048

298:                                              ; preds = %294
  %299 = load ptr, ptr %4, align 8, !tbaa !666
  %300 = getelementptr inbounds %struct.tree_exp, ptr %299, i64 0, i32 3
  %301 = load ptr, ptr %300, align 8, !tbaa !655
  store ptr %301, ptr %4, align 8, !tbaa !666
  %302 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %4, ptr noundef %1) #20, !range !653
  br label %303

303:                                              ; preds = %294, %298
  %304 = phi i32 [ %146, %298 ], [ 1, %294 ]
  store ptr null, ptr %0, align 8, !tbaa !666
  br label %305

305:                                              ; preds = %143, %62, %123, %303, %140
  %306 = phi i32 [ 1, %140 ], [ %304, %303 ], [ 1, %123 ], [ %63, %62 ], [ -2, %143 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  ret i32 %306
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimplify_call_expr(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #4 !prof !1049 !PGOFuncName !1050 {
  %4 = load ptr, ptr %0, align 8, !tbaa !666
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !710
  %9 = add i32 %8, -4
  %10 = icmp ult i32 %9, 7
  br i1 %10, label %11, label %14, !prof !1051

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !655
  br label %14

14:                                               ; preds = %3, %11
  %15 = phi i32 [ %13, %11 ], [ 0, %3 ]
  %16 = icmp eq i64 %6, 59
  br i1 %16, label %21, label %17, !prof !1052

17:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2237, ptr noundef nonnull @.str.1) #21
  %18 = load ptr, ptr %0, align 8, !tbaa !666
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  br label %21

21:                                               ; preds = %14, %17
  %22 = phi i64 [ 59, %14 ], [ %20, %17 ]
  %23 = phi ptr [ %4, %14 ], [ %18, %17 ]
  %24 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %22
  %25 = load i32, ptr %24, align 4, !tbaa !710
  %26 = add i32 %25, -4
  %27 = icmp ult i32 %26, 7
  br i1 %27, label %28, label %32, !prof !1051

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.tree_exp, ptr %23, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !655
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36, !prof !1053

32:                                               ; preds = %21, %28
  %33 = load i32, ptr @input_location, align 4, !tbaa !710
  %34 = getelementptr inbounds %struct.tree_exp, ptr %23, i64 0, i32 1
  store i32 %33, ptr %34, align 8, !tbaa !655
  %35 = load ptr, ptr %0, align 8, !tbaa !666
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi ptr [ %35, %32 ], [ %23, %28 ]
  %38 = tail call ptr @get_callee_fndecl(ptr noundef %37) #21
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42, !prof !1054

40:                                               ; preds = %36
  %41 = load ptr, ptr %0, align 8, !tbaa !666
  br label %99

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.tree_function_decl, ptr %38, i64 0, i32 5
  %44 = load i32, ptr %43, align 8
  %45 = and i32 %44, 6144
  %46 = icmp eq i32 %45, 0
  %47 = load ptr, ptr %0, align 8, !tbaa !666
  br i1 %46, label %99, label %48, !prof !1055

48:                                               ; preds = %42
  %49 = load i32, ptr @input_location, align 4, !tbaa !710
  %50 = icmp eq i8 %2, 0
  %51 = zext i1 %50 to i8
  %52 = tail call ptr @fold_call_expr(i32 noundef %49, ptr noundef %47, i8 noundef zeroext %51) #21
  %53 = icmp eq ptr %52, null
  %54 = load ptr, ptr %0, align 8, !tbaa !666
  %55 = icmp eq ptr %52, %54
  %56 = select i1 %53, i1 true, i1 %55
  br i1 %56, label %57, label %315, !prof !1056

57:                                               ; preds = %48
  %58 = load i32, ptr %43, align 8
  %59 = and i32 %58, 8191
  %60 = icmp eq i32 %59, 6659
  br i1 %60, label %61, label %99, !prof !1057

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.tree_exp, ptr %54, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !655
  %64 = getelementptr inbounds %struct.tree_int_cst, ptr %63, i64 0, i32 1
  %65 = load i64, ptr %64, align 8, !tbaa !655
  %66 = trunc i64 %65 to i32
  %67 = icmp slt i32 %66, 5
  br i1 %67, label %68, label %82, !prof !1058

68:                                               ; preds = %61
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.9) #21
  %69 = load ptr, ptr %0, align 8, !tbaa !666
  %70 = load i64, ptr %69, align 8
  %71 = and i64 %70, 65535
  %72 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !710
  %74 = add i32 %73, -4
  %75 = icmp ult i32 %74, 7
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.tree_exp, ptr %69, i64 0, i32 1
  %78 = load i32, ptr %77, align 8, !tbaa !655
  br label %79

79:                                               ; preds = %68, %76
  %80 = phi i32 [ %78, %76 ], [ 0, %68 ]
  %81 = tail call ptr @build_empty_stmt(i32 noundef %80) #21
  br label %315

82:                                               ; preds = %61
  %83 = tail call zeroext i8 @fold_builtin_next_arg(ptr noundef nonnull %54, i8 noundef zeroext 1) #21
  %84 = icmp eq i8 %83, 0
  %85 = load ptr, ptr %0, align 8, !tbaa !666
  br i1 %84, label %99, label %86, !prof !1059

86:                                               ; preds = %82
  %87 = load i64, ptr %85, align 8
  %88 = and i64 %87, 65535
  %89 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !710
  %91 = add i32 %90, -4
  %92 = icmp ult i32 %91, 7
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.tree_exp, ptr %85, i64 0, i32 1
  %95 = load i32, ptr %94, align 8, !tbaa !655
  br label %96

96:                                               ; preds = %86, %93
  %97 = phi i32 [ %95, %93 ], [ 0, %86 ]
  %98 = tail call ptr @build_empty_stmt(i32 noundef %97) #21
  br label %315

99:                                               ; preds = %40, %82, %57, %42
  %100 = phi ptr [ %47, %42 ], [ %41, %40 ], [ %85, %82 ], [ %54, %57 ]
  %101 = phi i1 [ false, %42 ], [ false, %40 ], [ true, %82 ], [ false, %57 ]
  %102 = getelementptr inbounds %struct.tree_exp, ptr %100, i64 1
  %103 = tail call i32 @gimplify_expr(ptr noundef nonnull %102, ptr noundef %1, ptr noundef null, ptr noundef nonnull @is_gimple_call_addr, i32 noundef 1) #20
  %104 = load ptr, ptr %0, align 8, !tbaa !666
  %105 = getelementptr inbounds %struct.tree_exp, ptr %104, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !655
  %107 = getelementptr inbounds %struct.tree_int_cst, ptr %106, i64 0, i32 1
  %108 = load i64, ptr %107, align 8, !tbaa !655
  %109 = trunc i64 %108 to i32
  %110 = add nsw i32 %109, -3
  %111 = tail call ptr @get_callee_fndecl(ptr noundef %104) #21
  %112 = icmp ne ptr %111, null
  br i1 %112, label %128, label %113, !prof !1060

113:                                              ; preds = %99
  %114 = load ptr, ptr %0, align 8, !tbaa !666
  %115 = getelementptr inbounds %struct.tree_exp, ptr %114, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !655
  %117 = getelementptr inbounds %struct.tree_common, ptr %116, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !655
  %119 = load i64, ptr %118, align 8
  %120 = trunc i64 %119 to i16
  switch i16 %120, label %121 [
    i16 10, label %123
    i16 12, label %123
  ], !prof !1061

121:                                              ; preds = %113
  %122 = icmp sgt i32 %109, 3
  br label %151

123:                                              ; preds = %113, %113
  %124 = getelementptr inbounds %struct.tree_common, ptr %118, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !655
  %126 = getelementptr inbounds %struct.tree_type, ptr %125, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !655
  br label %137

128:                                              ; preds = %99
  %129 = getelementptr inbounds %struct.tree_common, ptr %111, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !655
  %131 = getelementptr inbounds %struct.tree_type, ptr %130, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !655
  %133 = getelementptr inbounds %struct.tree_decl_non_common, ptr %111, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !655
  %135 = icmp eq ptr %134, null
  %136 = select i1 %135, ptr %132, ptr %134, !prof !1062
  br label %137

137:                                              ; preds = %128, %123
  %138 = phi ptr [ %127, %123 ], [ %136, %128 ]
  %139 = icmp sgt i32 %109, 3
  %140 = icmp ne ptr %138, null
  %141 = select i1 %139, i1 %140, i1 false, !prof !1063
  br i1 %141, label %142, label %151, !prof !1064

142:                                              ; preds = %137, %142
  %143 = phi ptr [ %147, %142 ], [ %138, %137 ]
  %144 = phi i32 [ %145, %142 ], [ 0, %137 ]
  %145 = add nuw nsw i32 %144, 1
  %146 = getelementptr inbounds %struct.tree_common, ptr %143, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !655
  %148 = icmp slt i32 %145, %110
  %149 = icmp ne ptr %147, null
  %150 = select i1 %148, i1 %149, i1 false, !prof !1063
  br i1 %150, label %142, label %151, !prof !1065, !llvm.loop !1066

151:                                              ; preds = %142, %121, %137
  %152 = phi i1 [ %139, %137 ], [ %122, %121 ], [ %148, %142 ]
  %153 = phi i1 [ %140, %137 ], [ false, %121 ], [ %149, %142 ]
  %154 = xor i1 %152, true
  %155 = or i1 %153, %154
  br i1 %155, label %237, label %156, !prof !1067

156:                                              ; preds = %151
  %157 = load ptr, ptr %0, align 8, !tbaa !666
  %158 = shl i64 %108, 32
  %159 = add i64 %158, -4294967296
  %160 = ashr exact i64 %159, 32
  %161 = getelementptr inbounds %struct.tree_exp, ptr %157, i64 0, i32 3, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !655
  %163 = load i64, ptr %162, align 8
  %164 = and i64 %163, 65535
  %165 = icmp eq i64 %164, 59
  br i1 %165, label %166, label %237, !prof !1068

166:                                              ; preds = %156
  %167 = tail call ptr @get_callee_fndecl(ptr noundef nonnull %162) #21
  %168 = icmp eq ptr %167, null
  br i1 %168, label %237, label %169, !prof !1069

169:                                              ; preds = %166
  %170 = load i64, ptr %167, align 8
  %171 = and i64 %170, 65535
  %172 = icmp eq i64 %171, 29
  br i1 %172, label %173, label %237, !prof !1070

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.tree_function_decl, ptr %167, i64 0, i32 5
  %175 = load i32, ptr %174, align 8
  %176 = and i32 %175, 6144
  %177 = icmp eq i32 %176, 6144
  br i1 %177, label %178, label %237, !prof !1071

178:                                              ; preds = %173
  %179 = and i32 %175, 2047
  %180 = icmp eq i32 %179, 516
  br i1 %180, label %181, label %237

181:                                              ; preds = %178
  %182 = load ptr, ptr %0, align 8, !tbaa !666
  %183 = add nsw i32 %109, -4
  %184 = getelementptr inbounds %struct.tree_common, ptr %182, i64 0, i32 2
  %185 = load ptr, ptr %184, align 8, !tbaa !655
  %186 = getelementptr inbounds %struct.tree_exp, ptr %182, i64 1
  %187 = load ptr, ptr %186, align 8, !tbaa !655
  %188 = getelementptr inbounds %struct.tree_exp, ptr %182, i64 1, i32 0, i32 2
  %189 = tail call ptr @build_call_array_loc(i32 noundef %15, ptr noundef %185, ptr noundef %187, i32 noundef %183, ptr noundef nonnull %188) #21
  store ptr %189, ptr %0, align 8, !tbaa !666
  %190 = getelementptr inbounds %struct.tree_exp, ptr %182, i64 1, i32 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !655
  %192 = getelementptr inbounds %struct.tree_exp, ptr %189, i64 1, i32 0, i32 1
  store ptr %191, ptr %192, align 8, !tbaa !655
  %193 = load i64, ptr %182, align 8
  %194 = and i64 %193, 262144
  %195 = load ptr, ptr %0, align 8, !tbaa !666
  %196 = load i64, ptr %195, align 8
  %197 = and i64 %196, -262145
  %198 = or disjoint i64 %197, %194
  store i64 %198, ptr %195, align 8
  %199 = load i64, ptr %182, align 8
  %200 = and i64 %199, 268435456
  %201 = load ptr, ptr %0, align 8, !tbaa !666
  %202 = load i64, ptr %201, align 8
  %203 = and i64 %202, -268435457
  %204 = or disjoint i64 %203, %200
  store i64 %204, ptr %201, align 8
  %205 = load i64, ptr %182, align 8
  %206 = and i64 %205, 536870912
  %207 = load ptr, ptr %0, align 8, !tbaa !666
  %208 = load i64, ptr %207, align 8
  %209 = and i64 %208, -536870913
  %210 = or disjoint i64 %209, %206
  store i64 %210, ptr %207, align 8
  %211 = load i64, ptr %182, align 8
  %212 = and i64 %211, 67108864
  %213 = load ptr, ptr %0, align 8, !tbaa !666
  %214 = load i64, ptr %213, align 8
  %215 = and i64 %214, -67108865
  %216 = or disjoint i64 %215, %212
  store i64 %216, ptr %213, align 8
  %217 = load i64, ptr %182, align 8
  %218 = and i64 %217, 65535
  %219 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %218
  %220 = load i32, ptr %219, align 4, !tbaa !710
  %221 = add i32 %220, -4
  %222 = icmp ult i32 %221, 7
  br i1 %222, label %223, label %226

223:                                              ; preds = %181
  %224 = getelementptr inbounds %struct.tree_exp, ptr %182, i64 0, i32 1
  %225 = load i32, ptr %224, align 8, !tbaa !655
  br label %226

226:                                              ; preds = %181, %223
  %227 = phi i32 [ %225, %223 ], [ 0, %181 ]
  %228 = load ptr, ptr %0, align 8, !tbaa !666
  %229 = getelementptr inbounds %struct.tree_exp, ptr %228, i64 0, i32 1
  store i32 %227, ptr %229, align 8, !tbaa !655
  %230 = tail call ptr @tree_block(ptr noundef nonnull %182) #21
  %231 = load ptr, ptr %230, align 8, !tbaa !666
  %232 = load ptr, ptr %0, align 8, !tbaa !666
  %233 = tail call ptr @tree_block(ptr noundef %232) #21
  store ptr %231, ptr %233, align 8, !tbaa !666
  %234 = load ptr, ptr %0, align 8, !tbaa !666
  %235 = load i64, ptr %234, align 8
  %236 = or i64 %235, 134217728
  store i64 %236, ptr %234, align 8
  br label %237

237:                                              ; preds = %166, %169, %173, %178, %226, %151, %156
  %238 = phi i32 [ %110, %151 ], [ %110, %156 ], [ %183, %226 ], [ %110, %178 ], [ %110, %173 ], [ %110, %169 ], [ %110, %166 ]
  %239 = icmp sgt i32 %238, 0
  br i1 %239, label %240, label %269, !prof !1072

240:                                              ; preds = %237
  %241 = zext nneg i32 %238 to i64
  br label %242

242:                                              ; preds = %240, %266
  %243 = phi i64 [ %241, %240 ], [ %245, %266 ]
  %244 = phi i32 [ %103, %240 ], [ %267, %266 ]
  %245 = add nsw i64 %243, -1
  %246 = icmp eq i64 %245, 1
  %247 = and i1 %101, %246
  br i1 %247, label %266, label %248, !prof !1073

248:                                              ; preds = %242
  %249 = load ptr, ptr %0, align 8, !tbaa !666
  %250 = add nuw nsw i64 %243, 2
  %251 = getelementptr inbounds %struct.tree_exp, ptr %249, i64 0, i32 3, i64 %250
  %252 = load i64, ptr %249, align 8
  %253 = and i64 %252, 65535
  %254 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %253
  %255 = load i32, ptr %254, align 4, !tbaa !710
  %256 = add i32 %255, -4
  %257 = icmp ult i32 %256, 7
  br i1 %257, label %258, label %261, !prof !1074

258:                                              ; preds = %248
  %259 = getelementptr inbounds %struct.tree_exp, ptr %249, i64 0, i32 1
  %260 = load i32, ptr %259, align 8, !tbaa !655
  br label %261

261:                                              ; preds = %248, %258
  %262 = phi i32 [ %260, %258 ], [ 0, %248 ]
  %263 = tail call fastcc i32 @gimplify_arg(ptr noundef nonnull %251, ptr noundef %1, i32 noundef %262) #20
  %264 = icmp eq i32 %263, -2
  br i1 %264, label %265, label %266, !prof !1075

265:                                              ; preds = %261
  br label %266

266:                                              ; preds = %261, %265, %242
  %267 = phi i32 [ %244, %242 ], [ -2, %265 ], [ %244, %261 ]
  %268 = icmp ugt i64 %243, 1
  br i1 %268, label %242, label %269, !prof !1076, !llvm.loop !1077

269:                                              ; preds = %266, %237
  %270 = phi i32 [ %103, %237 ], [ %267, %266 ]
  %271 = icmp ne i8 %2, 0
  %272 = and i1 %271, %112
  br i1 %272, label %273, label %282, !prof !1078

273:                                              ; preds = %269
  %274 = getelementptr inbounds %struct.tree_common, ptr %111, i64 0, i32 2
  %275 = load ptr, ptr %274, align 8, !tbaa !655
  %276 = getelementptr inbounds %struct.tree_common, ptr %275, i64 0, i32 2
  %277 = load ptr, ptr %276, align 8, !tbaa !655
  %278 = load i64, ptr %277, align 8
  %279 = and i64 %278, 65535
  %280 = icmp eq i64 %279, 19
  br i1 %280, label %281, label %282, !prof !1079

281:                                              ; preds = %273
  tail call void (i32, ptr, ...) @error_at(i32 noundef %15, ptr noundef nonnull @.str.10) #21
  br label %294

282:                                              ; preds = %273, %269
  %283 = icmp eq i32 %270, -2
  br i1 %283, label %294, label %284, !prof !755

284:                                              ; preds = %282
  %285 = load i32, ptr @input_location, align 4, !tbaa !710
  %286 = load ptr, ptr %0, align 8, !tbaa !666
  %287 = icmp eq i8 %2, 0
  %288 = zext i1 %287 to i8
  %289 = tail call ptr @fold_call_expr(i32 noundef %285, ptr noundef %286, i8 noundef zeroext %288) #21
  %290 = icmp eq ptr %289, null
  %291 = load ptr, ptr %0, align 8, !tbaa !666
  br i1 %290, label %296, label %292, !prof !1080

292:                                              ; preds = %284
  %293 = icmp eq ptr %289, %291
  br i1 %293, label %296, label %315

294:                                              ; preds = %281, %282
  %295 = load ptr, ptr @global_trees, align 16, !tbaa !666
  br label %315

296:                                              ; preds = %292, %284
  %297 = load i64, ptr %291, align 8
  %298 = and i64 %297, 65535
  %299 = icmp eq i64 %298, 59
  br i1 %299, label %300, label %311, !prof !1080

300:                                              ; preds = %296
  %301 = tail call i32 @call_expr_flags(ptr noundef nonnull %291) #21
  %302 = and i32 %301, 3
  %303 = icmp ne i32 %302, 0
  %304 = and i32 %301, 4
  %305 = icmp eq i32 %304, 0
  %306 = and i1 %303, %305
  br i1 %306, label %307, label %311, !prof !1081

307:                                              ; preds = %300
  %308 = load ptr, ptr %0, align 8, !tbaa !666
  %309 = load i64, ptr %308, align 8
  %310 = and i64 %309, -65537
  store i64 %310, ptr %308, align 8
  br label %311

311:                                              ; preds = %300, %307, %296
  br i1 %287, label %312, label %318, !prof !1082

312:                                              ; preds = %311
  %313 = load ptr, ptr %0, align 8, !tbaa !666
  %314 = tail call ptr @gimple_build_call_from_tree(ptr noundef %313) #21
  tail call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %314) #20
  br label %315

315:                                              ; preds = %292, %48, %294, %312, %79, %96
  %316 = phi ptr [ %98, %96 ], [ %81, %79 ], [ null, %312 ], [ %295, %294 ], [ %52, %48 ], [ %289, %292 ]
  %317 = phi i32 [ 0, %96 ], [ 0, %79 ], [ %270, %312 ], [ -2, %294 ], [ 0, %48 ], [ 0, %292 ]
  store ptr %316, ptr %0, align 8, !tbaa !666
  br label %318

318:                                              ; preds = %315, %311
  %319 = phi i32 [ %270, %311 ], [ %317, %315 ]
  ret i32 %319
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gimplify_compound_expr(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #4 !prof !1083 !PGOFuncName !1084 {
  %4 = load ptr, ptr %0, align 8, !tbaa !666
  br label %5

5:                                                ; preds = %16, %3
  %6 = phi ptr [ %4, %3 ], [ %18, %16 ]
  %7 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !666
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 52
  br i1 %11, label %12, label %14, !prof !1085

12:                                               ; preds = %5
  %13 = tail call fastcc i32 @gimplify_compound_expr(ptr noundef nonnull %7, ptr noundef %1, i8 noundef zeroext 0) #20, !range !771
  br label %16

14:                                               ; preds = %5
  %15 = tail call zeroext i8 @gimplify_stmt(ptr noundef nonnull %7, ptr noundef %1) #20, !range !653
  br label %16

16:                                               ; preds = %14, %12
  %17 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !655
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 52
  br i1 %21, label %5, label %22, !prof !1086, !llvm.loop !1087

22:                                               ; preds = %16
  store ptr %18, ptr %0, align 8, !tbaa !666
  %23 = icmp eq i8 %2, 0
  br i1 %23, label %24, label %26, !prof !1088

24:                                               ; preds = %22
  %25 = tail call zeroext i8 @gimplify_stmt(ptr noundef nonnull %0, ptr noundef %1) #20, !range !653
  br label %26

26:                                               ; preds = %22, %24
  %27 = phi i32 [ 1, %24 ], [ 0, %22 ]
  ret i32 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_compound_literal_expr(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #4 !prof !688 !PGOFuncName !1089 {
  %3 = load ptr, ptr %0, align 8, !tbaa !666
  %4 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !655
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !655
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
  %16 = load ptr, ptr %15, align 8, !tbaa !655
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
  %35 = load ptr, ptr %34, align 8, !tbaa !655
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
  store ptr %7, ptr %0, align 8, !tbaa !666
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimplify_modify_expr(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #4 !prof !1090 !PGOFuncName !1091 {
  %5 = load ptr, ptr %0, align 8, !tbaa !666
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  %8 = load i64, ptr %5, align 8
  %9 = and i64 %8, 65535
  %10 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !710
  %12 = add i32 %11, -4
  %13 = icmp ult i32 %12, 7
  br i1 %13, label %14, label %17, !prof !1092

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !655
  br label %17

17:                                               ; preds = %4, %14
  %18 = phi i32 [ %16, %14 ], [ 0, %4 ]
  %19 = trunc i64 %8 to i32
  %20 = and i32 %19, 65535
  %21 = add nsw i32 %20, -53
  %22 = icmp ult i32 %21, 2
  br i1 %22, label %24, label %23, !prof !1093

23:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4411, ptr noundef nonnull @.str.1) #21
  br label %24

24:                                               ; preds = %17, %23
  %25 = load ptr, ptr %6, align 8, !tbaa !666
  %26 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !655
  %28 = load i64, ptr %27, align 8
  %29 = trunc i64 %28 to i16
  switch i16 %29, label %46 [
    i16 10, label %30
    i16 12, label %30
  ], !prof !1094

30:                                               ; preds = %24, %24
  %31 = load ptr, ptr %7, align 8, !tbaa !666
  %32 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef %31) #21
  store ptr %32, ptr %7, align 8, !tbaa !666
  %33 = load ptr, ptr %6, align 8, !tbaa !666
  %34 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !655
  %36 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !655
  %38 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %35, ptr noundef %37) #21
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %46, !prof !1095

40:                                               ; preds = %30
  %41 = load ptr, ptr %6, align 8, !tbaa !666
  %42 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !655
  %44 = load ptr, ptr %7, align 8, !tbaa !666
  %45 = tail call ptr @fold_convert_loc(i32 noundef %18, ptr noundef %43, ptr noundef %44) #21
  store ptr %45, ptr %7, align 8, !tbaa !666
  br label %46

46:                                               ; preds = %24, %30, %40
  %47 = tail call fastcc i32 @gimplify_modify_expr_rhs(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) #20
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %208, !prof !1096

49:                                               ; preds = %46
  %50 = load ptr, ptr %7, align 8, !tbaa !666
  %51 = getelementptr inbounds %struct.tree_common, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !655
  %53 = tail call fastcc zeroext i8 @zero_sized_type(ptr noundef %52) #20, !range !653
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %60, label %55, !prof !1097

55:                                               ; preds = %49
  %56 = icmp eq i8 %3, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = tail call zeroext i8 @gimplify_stmt(ptr noundef nonnull %7, ptr noundef %1) #20, !range !653
  %59 = tail call zeroext i8 @gimplify_stmt(ptr noundef nonnull %6, ptr noundef %1) #20, !range !653
  store ptr null, ptr %0, align 8, !tbaa !666
  br label %208

60:                                               ; preds = %55, %49
  tail call fastcc void @maybe_with_size_expr(ptr noundef nonnull %7) #20
  %61 = tail call i32 @gimplify_expr(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_lvalue, i32 noundef 2) #20
  %62 = icmp eq i32 %61, -2
  br i1 %62, label %208, label %63, !prof !1098

63:                                               ; preds = %60
  %64 = load ptr, ptr %6, align 8, !tbaa !666
  %65 = tail call ptr @rhs_predicate_for(ptr noundef %64) #20
  %66 = tail call i32 @gimplify_expr(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %65, i32 noundef 1) #20
  %67 = icmp eq i32 %66, -2
  br i1 %67, label %208, label %68, !prof !1098

68:                                               ; preds = %63
  %69 = tail call fastcc i32 @gimplify_modify_expr_rhs(ptr noundef nonnull %0, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) #20
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %208, !prof !1099

71:                                               ; preds = %68
  %72 = load ptr, ptr %7, align 8, !tbaa !666
  %73 = load i64, ptr %72, align 8
  %74 = and i64 %73, 65535
  %75 = icmp eq i64 %74, 150
  br i1 %75, label %76, label %89, !prof !1100

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.tree_exp, ptr %72, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !655
  %79 = getelementptr inbounds %struct.tree_exp, ptr %72, i64 1
  %80 = load ptr, ptr %79, align 8, !tbaa !655
  %81 = load i64, ptr %78, align 8
  %82 = and i64 %81, 65535
  %83 = icmp eq i64 %82, 51
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  tail call fastcc void @gimplify_modify_expr_to_memset(ptr noundef nonnull %0, ptr noundef %80, i8 noundef zeroext %3, ptr noundef %1) #20
  br label %208

85:                                               ; preds = %76
  %86 = tail call zeroext i8 @is_gimple_addressable(ptr noundef nonnull %78) #21
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %85
  store ptr %78, ptr %7, align 8, !tbaa !666
  tail call fastcc void @gimplify_modify_expr_to_memcpy(ptr noundef nonnull %0, ptr noundef %80, i8 noundef zeroext %3, ptr noundef %1) #20
  br label %208

89:                                               ; preds = %85, %71
  %90 = load ptr, ptr %6, align 8, !tbaa !666
  %91 = load i64, ptr %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = and i32 %92, 65535
  %94 = add nsw i32 %93, -43
  %95 = icmp ult i32 %94, 2
  br i1 %95, label %96, label %102, !prof !1101

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.tree_exp, ptr %90, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !655
  %99 = tail call zeroext i8 @is_gimple_reg(ptr noundef %98) #21
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  tail call fastcc void @gimplify_modify_expr_complex_part(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext %3) #20
  br label %208

102:                                              ; preds = %89, %96
  %103 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %104 = getelementptr inbounds %struct.gimplify_ctx, ptr %103, i64 0, i32 10
  %105 = load i8, ptr %104, align 1, !tbaa !738
  %106 = icmp eq i8 %105, 0
  %107 = load ptr, ptr %7, align 8, !tbaa !666
  br i1 %106, label %108, label %156, !prof !1102

108:                                              ; preds = %102
  %109 = load i64, ptr %107, align 8
  %110 = and i64 %109, 65535
  %111 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !710
  %113 = icmp eq i32 %112, 3
  br i1 %113, label %114, label %156, !prof !1103

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.tree_decl_common, ptr %107, i64 0, i32 2
  %116 = load i64, ptr %115, align 8
  %117 = and i64 %116, 1024
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %156, label %119, !prof !1104

119:                                              ; preds = %114
  %120 = load ptr, ptr %6, align 8, !tbaa !666
  %121 = load i64, ptr %120, align 8
  %122 = and i64 %121, 65535
  %123 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !710
  %125 = icmp eq i32 %124, 3
  br i1 %125, label %126, label %156, !prof !1105

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.tree_decl_common, ptr %120, i64 0, i32 2
  %128 = load i64, ptr %127, align 8
  %129 = and i64 %128, 1024
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %156, !prof !1106

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.tree_decl_minimal, ptr %107, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !655
  %134 = icmp eq ptr %133, null
  br i1 %134, label %135, label %148, !prof !1107

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.tree_decl_minimal, ptr %120, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !655
  %138 = icmp eq ptr %137, null
  br i1 %138, label %148, label %139, !prof !1108

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.tree_identifier, ptr %137, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !655
  %142 = tail call ptr @create_tmp_var_name(ptr noundef %141) #20
  %143 = load ptr, ptr %7, align 8, !tbaa !666
  %144 = getelementptr inbounds %struct.tree_decl_minimal, ptr %143, i64 0, i32 3
  store ptr %142, ptr %144, align 8, !tbaa !655
  %145 = load ptr, ptr %7, align 8, !tbaa !666
  %146 = getelementptr inbounds %struct.tree_decl_common, ptr %145, i64 0, i32 2
  %147 = load i64, ptr %146, align 8
  br label %148

148:                                              ; preds = %139, %135, %131
  %149 = phi i64 [ %147, %139 ], [ %116, %135 ], [ %116, %131 ]
  %150 = phi ptr [ %145, %139 ], [ %107, %135 ], [ %107, %131 ]
  %151 = getelementptr inbounds %struct.tree_decl_common, ptr %150, i64 0, i32 2
  %152 = or i64 %149, 16384
  store i64 %152, ptr %151, align 8
  %153 = load ptr, ptr %7, align 8, !tbaa !666
  %154 = load ptr, ptr %6, align 8, !tbaa !666
  tail call void @decl_debug_expr_insert(ptr noundef %153, ptr noundef %154) #21
  %155 = load ptr, ptr %7, align 8, !tbaa !666
  br label %156

156:                                              ; preds = %148, %126, %119, %114, %108, %102
  %157 = phi ptr [ %155, %148 ], [ %107, %126 ], [ %107, %119 ], [ %107, %114 ], [ %107, %108 ], [ %107, %102 ]
  %158 = load i64, ptr %157, align 8
  %159 = and i64 %158, 65535
  %160 = icmp eq i64 %159, 59
  br i1 %160, label %161, label %167, !prof !1109

161:                                              ; preds = %156
  %162 = tail call ptr @gimple_build_call_from_tree(ptr noundef nonnull %157) #21
  %163 = tail call fastcc zeroext i8 @gimple_call_noreturn_p(ptr noundef %162) #20, !range !653
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %165, label %182, !prof !1110

165:                                              ; preds = %161
  %166 = load ptr, ptr %6, align 8, !tbaa !666
  tail call fastcc void @gimple_call_set_lhs(ptr noundef %162, ptr noundef %166) #20
  br label %182

167:                                              ; preds = %156
  %168 = load ptr, ptr %6, align 8, !tbaa !666
  %169 = tail call ptr @gimple_build_assign_stat(ptr noundef %168, ptr noundef nonnull %157) #21
  %170 = load ptr, ptr %0, align 8, !tbaa !666
  %171 = load i64, ptr %170, align 8
  %172 = and i64 %171, 65535
  %173 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !710
  %175 = add i32 %174, -4
  %176 = icmp ult i32 %175, 7
  br i1 %176, label %177, label %180, !prof !1111

177:                                              ; preds = %167
  %178 = getelementptr inbounds %struct.tree_exp, ptr %170, i64 0, i32 1
  %179 = load i32, ptr %178, align 8, !tbaa !655
  br label %180

180:                                              ; preds = %167, %177
  %181 = phi i32 [ %179, %177 ], [ 0, %167 ]
  tail call fastcc void @gimple_set_location(ptr noundef %169, i32 noundef %181) #20
  br label %182

182:                                              ; preds = %161, %165, %180
  %183 = phi ptr [ %162, %161 ], [ %162, %165 ], [ %169, %180 ]
  tail call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %183) #20
  %184 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %185 = getelementptr inbounds %struct.gimplify_ctx, ptr %184, i64 0, i32 10
  %186 = load i8, ptr %185, align 1, !tbaa !738
  %187 = icmp eq i8 %186, 0
  br i1 %187, label %202, label %188, !prof !1102

188:                                              ; preds = %182
  %189 = load ptr, ptr %6, align 8, !tbaa !666
  %190 = tail call zeroext i8 @is_gimple_reg(ptr noundef %189) #21
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %202, label %192, !prof !1112

192:                                              ; preds = %188
  %193 = load ptr, ptr %6, align 8, !tbaa !666
  %194 = load i64, ptr %193, align 8
  %195 = and i64 %194, 65535
  %196 = icmp eq i64 %195, 141
  br i1 %196, label %197, label %199, !prof !1112

197:                                              ; preds = %192
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4538, ptr noundef nonnull @.str.1) #21
  %198 = load ptr, ptr %6, align 8, !tbaa !666
  br label %199

199:                                              ; preds = %192, %197
  %200 = phi ptr [ %193, %192 ], [ %198, %197 ]
  %201 = tail call fastcc ptr @make_ssa_name(ptr noundef %200, ptr noundef %183) #20
  store ptr %201, ptr %6, align 8, !tbaa !666
  tail call void @gimple_set_lhs(ptr noundef %183, ptr noundef %201) #21
  br label %202

202:                                              ; preds = %199, %188, %182
  %203 = icmp eq i8 %3, 0
  br i1 %203, label %207, label %204, !prof !1113

204:                                              ; preds = %202
  %205 = load ptr, ptr %6, align 8, !tbaa !666
  %206 = tail call ptr @unshare_expr(ptr noundef %205) #20
  store ptr %206, ptr %0, align 8, !tbaa !666
  br label %208

207:                                              ; preds = %202
  store ptr null, ptr %0, align 8, !tbaa !666
  br label %208

208:                                              ; preds = %84, %88, %68, %63, %60, %46, %207, %204, %101, %57
  %209 = phi i32 [ 1, %101 ], [ 0, %204 ], [ 1, %207 ], [ 1, %57 ], [ %47, %46 ], [ -2, %60 ], [ -2, %63 ], [ %69, %68 ], [ 1, %88 ], [ 1, %84 ]
  ret i32 %209
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_boolean_expr(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #4 !prof !1114 !PGOFuncName !1115 {
  %3 = load ptr, ptr %0, align 8, !tbaa !666
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !655
  %6 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !666
  %7 = tail call ptr @fold_convert_loc(i32 noundef %1, ptr noundef %5, ptr noundef %6) #21
  %8 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !666
  %9 = tail call ptr @fold_convert_loc(i32 noundef %1, ptr noundef %5, ptr noundef %8) #21
  %10 = tail call ptr @build3_stat(i32 noundef 56, ptr noundef %5, ptr noundef %3, ptr noundef %7, ptr noundef %9) #21
  store ptr %10, ptr %0, align 8, !tbaa !666
  %11 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 1
  store i32 %1, ptr %11, align 8, !tbaa !655
  ret void
}

; Function Attrs: optsize
declare void @recalculate_side_effects(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gimplify_addr_expr(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 !prof !1116 !PGOFuncName !1117 {
  %4 = load ptr, ptr %0, align 8, !tbaa !666
  %5 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !655
  %7 = load i64, ptr %4, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !710
  %11 = add i32 %10, -4
  %12 = icmp ult i32 %11, 7
  br i1 %12, label %13, label %16, !prof !1118

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !655
  br label %16

16:                                               ; preds = %3, %13
  %17 = phi i32 [ %15, %13 ], [ 0, %3 ]
  %18 = load i64, ptr %6, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %48 [
    i16 47, label %20
    i16 49, label %20
    i16 118, label %33
  ], !prof !1119

20:                                               ; preds = %51, %16, %16
  %21 = phi ptr [ %52, %51 ], [ %6, %16 ], [ %6, %16 ]
  %22 = getelementptr inbounds %struct.tree_exp, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !655
  %24 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !655
  %26 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !655
  %28 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %25, ptr noundef %27) #21
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %81

30:                                               ; preds = %20
  %31 = load ptr, ptr %24, align 8, !tbaa !655
  %32 = tail call ptr @fold_convert_loc(i32 noundef %17, ptr noundef %31, ptr noundef nonnull %23) #21
  br label %81

33:                                               ; preds = %16
  %34 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !655
  %36 = tail call zeroext i8 @tree_ssa_useless_type_conversion(ptr noundef %35) #21
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %34, align 8, !tbaa !655
  br label %40

40:                                               ; preds = %38, %33
  %41 = phi ptr [ %39, %38 ], [ %6, %33 ]
  %42 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !655
  %44 = getelementptr inbounds %struct.tree_exp, ptr %41, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !655
  %46 = tail call ptr @build_fold_addr_expr_loc(i32 noundef %17, ptr noundef %45) #21
  %47 = tail call ptr @fold_convert_loc(i32 noundef %17, ptr noundef %43, ptr noundef %46) #21
  br label %81

48:                                               ; preds = %16
  %49 = tail call i32 @gimplify_expr(ptr noundef nonnull %5, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_addressable, i32 noundef 3) #20
  %50 = icmp eq i32 %49, -2
  br i1 %50, label %84, label %51, !prof !750

51:                                               ; preds = %48
  tail call fastcc void @prepare_gimple_addressable(ptr noundef nonnull %5, ptr noundef %1) #20
  %52 = load ptr, ptr %5, align 8, !tbaa !655
  %53 = load i64, ptr %52, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 47
  br i1 %55, label %20, label %56, !prof !750

56:                                               ; preds = %51
  tail call void @mark_addressable(ptr noundef nonnull %52) #20
  %57 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !655
  %59 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !655
  %61 = getelementptr inbounds %struct.tree_common, ptr %60, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !655
  %63 = tail call zeroext i8 @types_compatible_p(ptr noundef %58, ptr noundef %62) #21
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %67, label %65, !prof !750

65:                                               ; preds = %56
  %66 = load ptr, ptr %0, align 8, !tbaa !666
  br label %69

67:                                               ; preds = %56
  %68 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %52) #21
  store ptr %68, ptr %0, align 8, !tbaa !666
  br label %69

69:                                               ; preds = %65, %67
  %70 = phi ptr [ %66, %65 ], [ %68, %67 ]
  tail call void @recompute_tree_invariant_for_addr_expr(ptr noundef %70) #21
  %71 = load ptr, ptr %59, align 8, !tbaa !655
  %72 = load ptr, ptr %0, align 8, !tbaa !666
  %73 = getelementptr inbounds %struct.tree_common, ptr %72, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !655
  %75 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %71, ptr noundef %74) #21
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %84, !prof !750

77:                                               ; preds = %69
  %78 = load ptr, ptr %59, align 8, !tbaa !655
  %79 = load ptr, ptr %0, align 8, !tbaa !666
  %80 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %78, ptr noundef %79) #21
  br label %81

81:                                               ; preds = %20, %30, %40, %77
  %82 = phi ptr [ %80, %77 ], [ %47, %40 ], [ %23, %20 ], [ %32, %30 ]
  %83 = phi i32 [ %49, %77 ], [ 0, %40 ], [ 0, %20 ], [ 0, %30 ]
  store ptr %82, ptr %0, align 8, !tbaa !666
  br label %84

84:                                               ; preds = %81, %69, %48
  %85 = phi i32 [ -2, %48 ], [ %49, %69 ], [ %83, %81 ]
  ret i32 %85
}

; Function Attrs: optsize
declare i32 @gimplify_va_arg_expr(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_conversion(ptr nocapture noundef %0) unnamed_addr #4 !prof !1120 !PGOFuncName !1121 {
  %2 = load ptr, ptr %0, align 8, !tbaa !666
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !710
  %7 = add i32 %6, -4
  %8 = icmp ult i32 %7, 7
  br i1 %8, label %9, label %12, !prof !1122

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !655
  br label %12

12:                                               ; preds = %1, %9
  %13 = phi i32 [ %11, %9 ], [ 0, %1 ]
  %14 = trunc i64 %3 to i16
  switch i16 %14, label %15 [
    i16 116, label %17
    i16 113, label %17
  ], !prof !1123

15:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1751, ptr noundef nonnull @.str.1) #21
  %16 = load ptr, ptr %0, align 8, !tbaa !666
  br label %17

17:                                               ; preds = %12, %12, %15
  %18 = phi ptr [ %2, %12 ], [ %2, %12 ], [ %16, %15 ]
  %19 = getelementptr inbounds %struct.tree_exp, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !655
  %21 = tail call ptr @tree_strip_sign_nop_conversions(ptr noundef %20) #21
  %22 = load ptr, ptr %0, align 8, !tbaa !666
  %23 = getelementptr inbounds %struct.tree_exp, ptr %22, i64 0, i32 3
  store ptr %21, ptr %23, align 8, !tbaa !655
  %24 = load ptr, ptr %0, align 8, !tbaa !666
  %25 = tail call zeroext i8 @tree_ssa_useless_type_conversion(ptr noundef %24) #21
  %26 = icmp eq i8 %25, 0
  %27 = load ptr, ptr %0, align 8, !tbaa !666
  br i1 %26, label %31, label %28, !prof !1124

28:                                               ; preds = %17
  %29 = getelementptr inbounds %struct.tree_exp, ptr %27, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !655
  store ptr %30, ptr %0, align 8, !tbaa !666
  br label %31

31:                                               ; preds = %28, %17
  %32 = phi ptr [ %30, %28 ], [ %27, %17 ]
  %33 = load i64, ptr %32, align 8
  %34 = trunc i64 %33 to i16
  switch i16 %34, label %64 [
    i16 116, label %35
    i16 113, label %35
  ], !prof !1123

35:                                               ; preds = %31, %31
  %36 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !655
  %38 = load i64, ptr %37, align 8
  %39 = trunc i64 %38 to i16
  switch i16 %39, label %64 [
    i16 10, label %40
    i16 12, label %40
  ], !prof !1125

40:                                               ; preds = %35, %35
  %41 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !655
  %43 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !655
  %45 = load i64, ptr %44, align 8
  %46 = trunc i64 %45 to i16
  switch i16 %46, label %64 [
    i16 10, label %47
    i16 12, label %47
  ], !prof !1126

47:                                               ; preds = %40, %40
  %48 = and i64 %33, 65535
  %49 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !710
  %51 = add i32 %50, -4
  %52 = icmp ult i32 %51, 7
  br i1 %52, label %53, label %56, !prof !1127

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !655
  br label %56

56:                                               ; preds = %47, %53
  %57 = phi i32 [ %55, %53 ], [ 0, %47 ]
  %58 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !666
  %59 = tail call ptr @maybe_fold_offset_to_address(i32 noundef %57, ptr noundef nonnull %42, ptr noundef %58, ptr noundef nonnull %37) #21
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %63, !prof !1128

61:                                               ; preds = %56
  %62 = load ptr, ptr %0, align 8, !tbaa !666
  br label %64

63:                                               ; preds = %56
  store ptr %59, ptr %0, align 8, !tbaa !666
  br label %64

64:                                               ; preds = %61, %40, %35, %31, %63
  %65 = phi ptr [ %62, %61 ], [ %32, %40 ], [ %32, %35 ], [ %32, %31 ], [ %59, %63 ]
  %66 = load i64, ptr %65, align 8
  %67 = trunc i64 %66 to i16
  switch i16 %67, label %75 [
    i16 116, label %68
    i16 113, label %68
  ], !prof !1129

68:                                               ; preds = %64, %64
  %69 = getelementptr inbounds %struct.tree_exp, ptr %65, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !655
  %71 = load i64, ptr %70, align 8
  %72 = trunc i64 %71 to i16
  switch i16 %72, label %75 [
    i16 41, label %73
    i16 121, label %74
  ], !prof !1130

73:                                               ; preds = %68
  tail call fastcc void @canonicalize_component_ref(ptr noundef nonnull %69) #20
  br label %75

74:                                               ; preds = %68
  tail call fastcc void @canonicalize_addr_expr(ptr noundef nonnull %0) #20
  br label %75

75:                                               ; preds = %73, %74, %68, %64
  %76 = load ptr, ptr %0, align 8, !tbaa !666
  %77 = load i64, ptr %76, align 8
  %78 = trunc i64 %77 to i16
  switch i16 %78, label %91 [
    i16 116, label %79
    i16 113, label %79
  ], !prof !1131

79:                                               ; preds = %75, %75
  %80 = getelementptr inbounds %struct.tree_common, ptr %76, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !655
  %82 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %81) #21
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %91, !prof !1132

84:                                               ; preds = %79
  %85 = load ptr, ptr %0, align 8, !tbaa !666
  %86 = getelementptr inbounds %struct.tree_common, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !655
  %88 = getelementptr inbounds %struct.tree_exp, ptr %85, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !655
  %90 = tail call ptr @fold_build1_stat_loc(i32 noundef %13, i32 noundef 118, ptr noundef %87, ptr noundef %89) #21
  store ptr %90, ptr %0, align 8, !tbaa !666
  br label %91

91:                                               ; preds = %75, %84, %79
  ret void
}

; Function Attrs: optsize
declare ptr @fold_indirect_ref_loc(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gimplify_decl_expr(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #4 !prof !1133 !PGOFuncName !1134 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !666
  %5 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !655
  store ptr null, ptr %0, align 8, !tbaa !666
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !655
  %9 = load ptr, ptr @global_trees, align 16, !tbaa !666
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %76, label %11, !prof !1135

11:                                               ; preds = %2
  %12 = load i64, ptr %6, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %20 [
    i16 35, label %14
    i16 32, label %14
  ], !prof !1136

14:                                               ; preds = %11, %11
  %15 = load i64, ptr %8, align 8
  %16 = and i64 %15, 131072
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20, !prof !1137

18:                                               ; preds = %14
  tail call void @gimplify_type_sizes(ptr noundef nonnull %8, ptr noundef %1) #20
  %19 = load i64, ptr %6, align 8
  br label %20

20:                                               ; preds = %11, %18, %14
  %21 = phi i64 [ %12, %11 ], [ %19, %18 ], [ %12, %14 ]
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 32
  br i1 %23, label %24, label %76, !prof !1138

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 2
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 33554432
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %76, !prof !1138

29:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 5
  %31 = load ptr, ptr %30, align 8, !tbaa !655
  store ptr %31, ptr %3, align 8, !tbaa !666
  %32 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !655
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 23
  br i1 %36, label %37, label %46, !prof !1139

37:                                               ; preds = %29
  %38 = and i64 %21, 67108864
  %39 = icmp eq i64 %38, 0
  %40 = load i32, ptr @flag_stack_check, align 4
  %41 = icmp eq i32 %40, 1
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %47, !prof !1140

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
  br i1 %51, label %61, label %52, !prof !1141

52:                                               ; preds = %47
  %53 = load i64, ptr %6, align 8
  %54 = and i64 %53, 67108864
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %59, !prof !1142

56:                                               ; preds = %52
  store ptr null, ptr %30, align 8, !tbaa !655
  %57 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !666
  %58 = tail call ptr @build2_stat(i32 noundef 54, ptr noundef %57, ptr noundef nonnull %6, ptr noundef nonnull %31) #21
  store ptr %58, ptr %3, align 8, !tbaa !666
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
  br i1 %65, label %66, label %75, !prof !1135

66:                                               ; preds = %61
  %67 = load i64, ptr %25, align 8
  %68 = and i64 %67, 4096
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !655
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
define internal fastcc noundef i32 @gimplify_bind_expr(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #4 !prof !1143 !PGOFuncName !1144 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = load ptr, ptr %0, align 8, !tbaa !666
  %9 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %10 = getelementptr inbounds %struct.gimplify_ctx, ptr %9, i64 0, i32 9
  %11 = load i8, ptr %10, align 4, !tbaa !1145
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %12 = tail call ptr @voidify_wrapper_expr(ptr noundef %8, ptr noundef null) #20
  %13 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !655
  %15 = icmp eq ptr %14, null
  br i1 %15, label %91, label %16, !prof !1146

16:                                               ; preds = %2, %85
  %17 = phi ptr [ %87, %85 ], [ %14, %2 ]
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 32
  br i1 %20, label %21, label %58, !prof !1147

21:                                               ; preds = %16
  %22 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !666
  %23 = icmp eq ptr %22, null
  br i1 %23, label %42, label %24, !prof !1148

24:                                               ; preds = %21
  %25 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %17) #20, !range !653
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
  %34 = load ptr, ptr %33, align 8, !tbaa !861
  %35 = ptrtoint ptr %17 to i64
  %36 = tail call ptr @splay_tree_lookup(ptr noundef %34, i64 noundef %35) #21
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !666
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
  br i1 %47, label %58, label %48, !prof !1148

48:                                               ; preds = %42
  %49 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %17) #20, !range !653
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
  %59 = load i32, ptr @optimize, align 4, !tbaa !710
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %85, label %61, !prof !1149

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !655
  %64 = load i64, ptr %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = and i32 %65, 65535
  %67 = add nsw i32 %66, -13
  %68 = icmp ult i32 %67, 2
  br i1 %68, label %69, label %85, !prof !1150

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
  %87 = load ptr, ptr %86, align 8, !tbaa !655
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %16, !prof !1151, !llvm.loop !1152

89:                                               ; preds = %85
  %90 = load ptr, ptr %13, align 8, !tbaa !655
  br label %91

91:                                               ; preds = %89, %2
  %92 = phi ptr [ %90, %89 ], [ null, %2 ]
  %93 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1, i32 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !655
  %95 = tail call ptr @gimple_build_bind(ptr noundef %92, ptr noundef null, ptr noundef %94) #21
  tail call fastcc void @gimple_push_bind_expr(ptr noundef %95) #20
  %96 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %97 = getelementptr inbounds %struct.gimplify_ctx, ptr %96, i64 0, i32 9
  store i8 0, ptr %97, align 4, !tbaa !1145
  store ptr null, ptr %3, align 8, !tbaa !666
  %98 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  %99 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %98, ptr noundef nonnull %3) #20, !range !653
  %100 = load ptr, ptr %3, align 8, !tbaa !666
  call fastcc void @gimple_bind_set_body(ptr noundef %95, ptr noundef %100) #20
  %101 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %102 = getelementptr inbounds %struct.gimplify_ctx, ptr %101, i64 0, i32 9
  %103 = load i8, ptr %102, align 4, !tbaa !1145
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %113, label %105, !prof !1153

105:                                              ; preds = %91
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  call fastcc void @build_stack_save_restore(ptr noundef nonnull %4, ptr noundef nonnull %5) #20
  store ptr null, ptr %7, align 8, !tbaa !666
  store ptr null, ptr %6, align 8, !tbaa !666
  %106 = load ptr, ptr %5, align 8, !tbaa !666
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %6, ptr noundef %106) #20
  %107 = call fastcc ptr @gimple_bind_body(ptr noundef %95) #20
  %108 = load ptr, ptr %6, align 8, !tbaa !666
  %109 = call ptr @gimple_build_try(ptr noundef %107, ptr noundef %108, i32 noundef 2) #21
  %110 = load ptr, ptr %4, align 8, !tbaa !666
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %7, ptr noundef %110) #20
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %7, ptr noundef %109) #20
  %111 = load ptr, ptr %7, align 8, !tbaa !666
  call fastcc void @gimple_bind_set_body(ptr noundef %95, ptr noundef %111) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  %112 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  br label %113

113:                                              ; preds = %105, %91
  %114 = phi ptr [ %112, %105 ], [ %101, %91 ]
  %115 = getelementptr inbounds %struct.gimplify_ctx, ptr %114, i64 0, i32 9
  store i8 %11, ptr %115, align 4, !tbaa !1145
  call fastcc void @gimple_pop_bind_expr() #20
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %95) #20
  %116 = icmp eq ptr %12, null
  %117 = zext i1 %116 to i32
  store ptr %12, ptr %0, align 8, !tbaa !666
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret i32 %117
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_loop_expr(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #4 !prof !688 !PGOFuncName !1154 {
  %3 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %4 = getelementptr inbounds %struct.gimplify_ctx, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !1155
  %6 = tail call ptr @create_artificial_label(i32 noundef 0) #21
  %7 = tail call ptr @gimple_build_label(ptr noundef %6) #21
  tail call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %7) #20
  %8 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %9 = getelementptr inbounds %struct.gimplify_ctx, ptr %8, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !1155
  %10 = load ptr, ptr %0, align 8, !tbaa !666
  %11 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !655
  tail call void @gimplify_and_add(ptr noundef %12, ptr noundef %1) #20
  %13 = tail call ptr @gimple_build_goto(ptr noundef %6) #21
  tail call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %13) #20
  %14 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %15 = getelementptr inbounds %struct.gimplify_ctx, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !1155
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = tail call ptr @gimple_build_label(ptr noundef nonnull %16) #21
  tail call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %19) #20
  %20 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  br label %21

21:                                               ; preds = %18, %2
  %22 = phi ptr [ %20, %18 ], [ %14, %2 ]
  %23 = getelementptr inbounds %struct.gimplify_ctx, ptr %22, i64 0, i32 4
  store ptr %5, ptr %23, align 8, !tbaa !1155
  store ptr null, ptr %0, align 8, !tbaa !666
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gimplify_switch_expr(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #4 !prof !1156 !PGOFuncName !1157 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !666
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store ptr null, ptr %3, align 8, !tbaa !666
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = tail call i32 @gimplify_expr(ptr noundef nonnull %6, ptr noundef %1, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %8 = icmp ugt i32 %7, -3
  br i1 %8, label %175, label %9, !prof !1158

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !655
  %12 = icmp eq ptr %11, null
  br i1 %12, label %170, label %13, !prof !1159

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %14 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !655
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17, !prof !1160

17:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1456, ptr noundef nonnull @.str.1) #21
  br label %18

18:                                               ; preds = %13, %17
  %19 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %20 = getelementptr inbounds %struct.gimplify_ctx, ptr %19, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !1161
  %22 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef 8) #20
  %23 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %24 = getelementptr inbounds %struct.gimplify_ctx, ptr %23, i64 0, i32 6
  store ptr %22, ptr %24, align 8, !tbaa !1161
  %25 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %10, ptr noundef nonnull %3) #20, !range !653
  %26 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %27 = getelementptr inbounds %struct.gimplify_ctx, ptr %26, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !1161
  store ptr %28, ptr %4, align 8, !tbaa !666
  store ptr %21, ptr %27, align 8, !tbaa !1161
  %29 = call fastcc i32 @VEC_tree_base_length(ptr noundef %28) #20
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %64, label %31, !prof !1162

31:                                               ; preds = %18, %53
  %32 = phi ptr [ %54, %53 ], [ null, %18 ]
  %33 = phi i64 [ %55, %53 ], [ 0, %18 ]
  %34 = trunc i64 %33 to i32
  %35 = call fastcc ptr @VEC_tree_base_index(ptr noundef %28, i32 noundef %34) #20
  %36 = getelementptr inbounds %struct.tree_exp, ptr %35, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !655
  %38 = icmp eq ptr %37, null
  br i1 %38, label %46, label %39, !prof !1163

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.tree_exp, ptr %35, i64 1
  %41 = load ptr, ptr %40, align 8, !tbaa !655
  %42 = icmp eq ptr %41, null
  br i1 %42, label %51, label %43, !prof !1164

43:                                               ; preds = %39
  %44 = call i32 @tree_int_cst_lt(ptr noundef nonnull %41, ptr noundef nonnull %37) #21
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %51, label %49

46:                                               ; preds = %31
  %47 = icmp eq ptr %32, null
  br i1 %47, label %49, label %48, !prof !1165

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
  br i1 %58, label %31, label %59, !prof !1166, !llvm.loop !1167

59:                                               ; preds = %53
  %60 = icmp eq i32 %56, 0
  br i1 %60, label %62, label %61, !prof !1168

61:                                               ; preds = %59
  call void @sort_case_labels(ptr noundef %28) #20
  br label %62

62:                                               ; preds = %61, %59
  %63 = icmp eq ptr %54, null
  br i1 %63, label %64, label %165, !prof !1169

64:                                               ; preds = %18, %62
  %65 = phi i64 [ %55, %62 ], [ 0, %18 ]
  %66 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !655
  %68 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !666
  %69 = icmp eq ptr %67, %68
  br i1 %69, label %70, label %74, !prof !1170

70:                                               ; preds = %64
  %71 = load ptr, ptr %6, align 8, !tbaa !655
  %72 = getelementptr inbounds %struct.tree_common, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !655
  br label %74

74:                                               ; preds = %70, %64
  %75 = phi ptr [ %73, %70 ], [ %67, %64 ]
  %76 = icmp eq i64 %65, 0
  br i1 %76, label %158, label %77, !prof !1170

77:                                               ; preds = %74
  %78 = load i64, ptr %75, align 8
  %79 = trunc i64 %78 to i32
  %80 = and i32 %79, 65535
  %81 = add nsw i32 %80, -6
  %82 = icmp ult i32 %81, 3
  br i1 %82, label %83, label %158, !prof !1171

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 13
  %85 = load ptr, ptr %84, align 8, !tbaa !655
  %86 = icmp eq ptr %85, null
  br i1 %86, label %158, label %87, !prof !1170

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 14
  %89 = load ptr, ptr %88, align 8, !tbaa !655
  %90 = icmp eq ptr %89, null
  br i1 %90, label %158, label %91, !prof !1170

91:                                               ; preds = %87
  %92 = call fastcc ptr @VEC_tree_base_index(ptr noundef %28, i32 noundef 0) #20
  %93 = getelementptr inbounds %struct.tree_exp, ptr %92, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !655
  %95 = call i32 @tree_int_cst_equal(ptr noundef %94, ptr noundef nonnull %85) #21
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %158, label %97, !prof !1172

97:                                               ; preds = %91
  %98 = trunc i64 %65 to i32
  %99 = add i32 %98, -1
  %100 = call fastcc ptr @VEC_tree_base_index(ptr noundef %28, i32 noundef %99) #20
  %101 = getelementptr inbounds %struct.tree_exp, ptr %100, i64 1
  %102 = load ptr, ptr %101, align 8, !tbaa !655
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %107, !prof !1173

104:                                              ; preds = %97
  %105 = getelementptr inbounds %struct.tree_exp, ptr %100, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !655
  br label %107

107:                                              ; preds = %104, %97
  %108 = phi ptr [ %102, %97 ], [ %106, %104 ]
  %109 = load ptr, ptr %88, align 8, !tbaa !655
  %110 = call i32 @tree_int_cst_equal(ptr noundef %108, ptr noundef %109) #21
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %158, label %112, !prof !1173

112:                                              ; preds = %107
  %113 = icmp eq i64 %65, 1
  br i1 %113, label %148, label %114

114:                                              ; preds = %112, %145
  %115 = phi i64 [ %146, %145 ], [ 1, %112 ]
  %116 = trunc i64 %115 to i32
  %117 = call fastcc ptr @VEC_tree_base_index(ptr noundef %28, i32 noundef %116) #20
  %118 = getelementptr inbounds %struct.tree_exp, ptr %117, i64 0, i32 3
  %119 = load ptr, ptr %118, align 8, !tbaa !655
  %120 = add i32 %116, -1
  %121 = call fastcc ptr @VEC_tree_base_index(ptr noundef %28, i32 noundef %120) #20
  %122 = getelementptr inbounds %struct.tree_exp, ptr %121, i64 1
  %123 = load ptr, ptr %122, align 8, !tbaa !655
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %128

125:                                              ; preds = %114
  %126 = getelementptr inbounds %struct.tree_exp, ptr %121, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !655
  br label %128

128:                                              ; preds = %125, %114
  %129 = phi ptr [ %123, %114 ], [ %127, %125 ]
  %130 = getelementptr inbounds %struct.tree_int_cst, ptr %129, i64 0, i32 1
  %131 = load i64, ptr %130, align 8, !tbaa !655
  %132 = add i64 %131, 1
  %133 = getelementptr inbounds %struct.tree_int_cst, ptr %119, i64 0, i32 1
  %134 = load i64, ptr %133, align 8, !tbaa !655
  %135 = icmp eq i64 %132, %134
  br i1 %135, label %136, label %148

136:                                              ; preds = %128
  %137 = getelementptr inbounds %struct.tree_int_cst, ptr %129, i64 0, i32 1, i32 1
  %138 = load i64, ptr %137, align 8, !tbaa !655
  %139 = icmp eq i64 %132, 0
  %140 = zext i1 %139 to i64
  %141 = add nsw i64 %138, %140
  %142 = getelementptr inbounds %struct.tree_int_cst, ptr %119, i64 0, i32 1, i32 1
  %143 = load i64, ptr %142, align 8, !tbaa !655
  %144 = icmp eq i64 %141, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %136
  %146 = add nuw i64 %115, 1
  %147 = icmp eq i64 %146, %65
  br i1 %147, label %148, label %114, !llvm.loop !1174

148:                                              ; preds = %145, %136, %128, %112
  %149 = phi i64 [ 1, %112 ], [ %115, %128 ], [ %115, %136 ], [ %65, %145 ]
  %150 = icmp eq i64 %149, %65
  br i1 %150, label %151, label %158

151:                                              ; preds = %148
  %152 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !666
  %153 = call fastcc ptr @VEC_tree_base_index(ptr noundef %28, i32 noundef 0) #20
  %154 = getelementptr inbounds %struct.tree_exp, ptr %153, i64 1, i32 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !655
  %156 = call ptr @build3_stat(i32 noundef 139, ptr noundef %152, ptr noundef null, ptr noundef null, ptr noundef %155) #21
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %165, !prof !755

158:                                              ; preds = %107, %148, %77, %74, %83, %87, %91, %151
  %159 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !666
  %160 = call ptr @create_artificial_label(i32 noundef 0) #21
  %161 = call ptr @build3_stat(i32 noundef 139, ptr noundef %159, ptr noundef null, ptr noundef null, ptr noundef %160) #21
  %162 = getelementptr inbounds %struct.tree_exp, ptr %161, i64 1, i32 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !655
  %164 = call ptr @gimple_build_label(ptr noundef %163) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %3, ptr noundef %164) #20
  br label %165

165:                                              ; preds = %151, %158, %62
  %166 = phi ptr [ %54, %62 ], [ %156, %151 ], [ %161, %158 ]
  %167 = load ptr, ptr %6, align 8, !tbaa !655
  %168 = call ptr @gimple_build_switch_vec(ptr noundef %167, ptr noundef nonnull %166, ptr noundef %28) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %168) #20
  %169 = load ptr, ptr %3, align 8, !tbaa !666
  call fastcc void @gimplify_seq_add_seq(ptr noundef %1, ptr noundef %169) #20
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  br label %175

170:                                              ; preds = %9
  %171 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1, i32 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !655
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
define internal fastcc void @gimplify_exit_expr(ptr nocapture noundef %0) unnamed_addr #4 !prof !688 !PGOFuncName !1175 {
  %2 = load ptr, ptr %0, align 8, !tbaa !666
  %3 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !655
  %5 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %6 = getelementptr inbounds %struct.gimplify_ctx, ptr %5, i64 0, i32 4
  %7 = tail call ptr @build_and_jump(ptr noundef nonnull %6) #20
  %8 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !666
  %9 = tail call ptr @build3_stat(i32 noundef 56, ptr noundef %8, ptr noundef %4, ptr noundef %7, ptr noundef null) #21
  store ptr %9, ptr %0, align 8, !tbaa !666
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_seq_add_stmt(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #4 !prof !1176 !PGOFuncName !1177 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %4 = icmp eq ptr %1, null
  br i1 %4, label %12, label %5, !prof !1178

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !666
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !1179

8:                                                ; preds = %5
  %9 = tail call ptr @gimple_seq_alloc() #21
  store ptr %9, ptr %0, align 8, !tbaa !666
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
define internal fastcc void @gimplify_case_label_expr(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #4 !prof !1180 !PGOFuncName !1181 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ @gimplify_ctxp, %2 ], [ %5, %3 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !666
  %6 = getelementptr inbounds %struct.gimplify_ctx, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !1161
  %8 = icmp eq ptr %7, null
  br i1 %8, label %3, label %9, !prof !1182

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.gimplify_ctx, ptr %5, i64 0, i32 6
  %11 = load ptr, ptr %0, align 8, !tbaa !666
  %12 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !655
  %14 = tail call ptr @gimple_build_label(ptr noundef %13) #21
  %15 = load ptr, ptr %0, align 8, !tbaa !666
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %10, ptr noundef %15) #20
  tail call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %14) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gimplify_return_expr(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #4 !prof !1183 !PGOFuncName !1184 {
  %3 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !655
  %5 = load ptr, ptr @global_trees, align 16, !tbaa !666
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %89, label %7, !prof !1185

7:                                                ; preds = %2
  %8 = icmp eq ptr %4, null
  br i1 %8, label %82, label %9, !prof !1186

9:                                                ; preds = %7
  %10 = load i64, ptr %4, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 36
  br i1 %12, label %82, label %13, !prof !1187

13:                                               ; preds = %9
  %14 = load ptr, ptr @current_function_decl, align 8, !tbaa !666
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !655
  %17 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !655
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 19
  br i1 %21, label %79, label %22, !prof !1187

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !655
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 47
  br i1 %27, label %28, label %31, !prof !1187

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.tree_exp, ptr %24, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !655
  br label %31

31:                                               ; preds = %28, %22
  %32 = phi ptr [ %30, %28 ], [ %24, %22 ]
  %33 = trunc i64 %10 to i32
  %34 = and i32 %33, 65535
  %35 = add nsw i32 %34, -53
  %36 = icmp ult i32 %35, 2
  br i1 %36, label %37, label %42, !prof !1188

37:                                               ; preds = %31
  %38 = load i64, ptr %32, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 36
  br i1 %40, label %44, label %41, !prof !1189

41:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1204, ptr noundef nonnull @.str.1) #21
  br label %44

42:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1204, ptr noundef nonnull @.str.1) #21
  %43 = icmp eq ptr %32, null
  br i1 %43, label %79, label %44, !prof !755

44:                                               ; preds = %37, %41, %42
  %45 = load ptr, ptr @current_function_decl, align 8, !tbaa !666
  %46 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !655
  %48 = tail call i32 @aggregate_value_p(ptr noundef nonnull %32, ptr noundef %47) #21
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %79, !prof !1190

50:                                               ; preds = %44
  %51 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %52 = getelementptr inbounds %struct.gimplify_ctx, ptr %51, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !1191
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %75, !prof !1192

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !655
  %58 = tail call ptr @create_tmp_var(ptr noundef %57, ptr noundef null) #20
  %59 = getelementptr inbounds %struct.tree_common, ptr %58, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !655
  %61 = load i64, ptr %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = and i32 %62, 65535
  %64 = add nsw i32 %63, -13
  %65 = icmp ult i32 %64, 2
  br i1 %65, label %66, label %70, !prof !1193

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
  %73 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %74 = getelementptr inbounds %struct.gimplify_ctx, ptr %73, i64 0, i32 5
  store ptr %58, ptr %74, align 8, !tbaa !1191
  br label %75

75:                                               ; preds = %50, %70
  %76 = phi ptr [ %58, %70 ], [ %53, %50 ]
  %77 = icmp eq ptr %76, %32
  br i1 %77, label %79, label %78, !prof !755

78:                                               ; preds = %75
  store ptr %76, ptr %23, align 8, !tbaa !655
  br label %79

79:                                               ; preds = %13, %42, %44, %78, %75
  %80 = phi ptr [ %76, %78 ], [ %32, %75 ], [ null, %42 ], [ %32, %44 ], [ null, %13 ]
  %81 = load ptr, ptr %3, align 8, !tbaa !655
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
define internal fastcc noundef i32 @VEC_constructor_elt_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #17 !prof !688 !PGOFuncName !1194 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1195
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !666
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gimplify_save_expr(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 !prof !1197 !PGOFuncName !1198 {
  %4 = load ptr, ptr %0, align 8, !tbaa !666
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 120
  br i1 %7, label %11, label %8, !prof !1199

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 4676, ptr noundef nonnull @.str.1) #21
  %9 = load ptr, ptr %0, align 8, !tbaa !666
  %10 = load i64, ptr %9, align 8
  br label %11

11:                                               ; preds = %3, %8
  %12 = phi i64 [ %5, %3 ], [ %10, %8 ]
  %13 = phi ptr [ %4, %3 ], [ %9, %8 ]
  %14 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !655
  %16 = and i64 %12, 134217728
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %35, !prof !1200

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !655
  %21 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !666
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %23, label %25, !prof !1201

23:                                               ; preds = %18
  %24 = tail call i32 @gimplify_expr(ptr noundef nonnull %14, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_stmt, i32 noundef 0) #20
  br label %27

25:                                               ; preds = %18
  %26 = tail call ptr @get_initialized_tmp_var(ptr noundef nonnull %15, ptr noundef %1, ptr noundef %2) #20
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ 1, %25 ]
  %29 = phi ptr [ null, %23 ], [ %26, %25 ]
  %30 = load ptr, ptr %0, align 8, !tbaa !666
  %31 = getelementptr inbounds %struct.tree_exp, ptr %30, i64 0, i32 3
  store ptr %29, ptr %31, align 8, !tbaa !655
  %32 = load ptr, ptr %0, align 8, !tbaa !666
  %33 = load i64, ptr %32, align 8
  %34 = or i64 %33, 134217728
  store i64 %34, ptr %32, align 8
  br label %35

35:                                               ; preds = %27, %11
  %36 = phi i32 [ 1, %11 ], [ %28, %27 ]
  %37 = phi ptr [ %15, %11 ], [ %29, %27 ]
  store ptr %37, ptr %0, align 8, !tbaa !666
  ret i32 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimplify_asm_expr(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 !prof !688 !PGOFuncName !1202 {
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
  %17 = load ptr, ptr %0, align 8, !tbaa !666
  %18 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 0, i32 3
  %19 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !655
  %21 = tail call i32 @list_length(ptr noundef %20) #21
  %22 = sext i32 %21 to i64
  %23 = shl nsw i64 %22, 3
  %24 = alloca i8, i64 %23, align 16
  store ptr null, ptr %11, align 8, !tbaa !666
  store ptr null, ptr %10, align 8, !tbaa !666
  store ptr null, ptr %9, align 8, !tbaa !666
  store ptr null, ptr %8, align 8, !tbaa !666
  %25 = load ptr, ptr %19, align 8, !tbaa !655
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
  %34 = load ptr, ptr %33, align 8, !tbaa !655
  %35 = getelementptr inbounds %struct.tree_list, ptr %31, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !655
  %37 = getelementptr inbounds %struct.tree_list, ptr %36, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !655
  %39 = getelementptr inbounds %struct.tree_string, ptr %38, i64 0, i32 2
  store ptr %39, ptr %4, align 8, !tbaa !666
  %40 = getelementptr inbounds ptr, ptr %24, i64 %30
  store ptr %39, ptr %40, align 8, !tbaa !666
  %41 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %39) #20
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %159, label %43

43:                                               ; preds = %29
  %44 = trunc i64 %30 to i32
  %45 = call zeroext i8 @parse_output_constraint(ptr noundef nonnull %4, i32 noundef %44, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #21
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i8 0, ptr %7, align 1, !tbaa !655
  br label %48

48:                                               ; preds = %47, %43
  %49 = phi i32 [ %32, %43 ], [ -2, %47 ]
  %50 = load i8, ptr %6, align 1, !tbaa !655
  %51 = icmp eq i8 %50, 0
  %52 = load i8, ptr %5, align 1
  %53 = icmp ne i8 %52, 0
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %58

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.tree_list, ptr %31, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !655
  call void @mark_addressable(ptr noundef %57) #20
  br label %58

58:                                               ; preds = %55, %48
  %59 = getelementptr inbounds %struct.tree_list, ptr %31, i64 0, i32 2
  %60 = load i8, ptr %7, align 1, !tbaa !655
  %61 = icmp eq i8 %60, 0
  %62 = select i1 %61, ptr @is_gimple_lvalue, ptr @is_gimple_min_lval
  %63 = call i32 @gimplify_expr(ptr noundef nonnull %59, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %62, i32 noundef 6) #20
  %64 = icmp eq i32 %63, -2
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  call void (ptr, ...) @error(ptr noundef nonnull @.str.14, i32 noundef %44) #21
  br label %66

66:                                               ; preds = %65, %58
  %67 = phi i32 [ -2, %65 ], [ %49, %58 ]
  call fastcc void @VEC_tree_gc_safe_push(ptr noundef nonnull %9, ptr noundef nonnull %31) #20
  store ptr null, ptr %33, align 8, !tbaa !655
  %68 = load i8, ptr %7, align 1, !tbaa !655
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %159, label %70

70:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %12) #22
  %71 = load ptr, ptr %4, align 8, !tbaa !666
  %72 = call ptr @xstrdup(ptr noundef %71) #21
  store i8 61, ptr %72, align 1, !tbaa !655
  %73 = trunc i64 %41 to i32
  %74 = call ptr @build_string(i32 noundef %73, ptr noundef nonnull %72) #21
  %75 = load ptr, ptr %35, align 8, !tbaa !655
  %76 = getelementptr inbounds %struct.tree_list, ptr %75, i64 0, i32 2
  store ptr %74, ptr %76, align 8, !tbaa !655
  %77 = load i8, ptr %6, align 1, !tbaa !655
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %146, label %79

79:                                               ; preds = %70
  %80 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %44) #20
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
  %102 = load i8, ptr %95, align 1, !tbaa !655
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
  store i8 0, ptr %110, align 1, !tbaa !655
  br label %113

113:                                              ; preds = %112, %107
  %114 = getelementptr inbounds i8, ptr %108, i64 -1
  store i8 61, ptr %114, align 1, !tbaa !655
  store ptr %114, ptr %13, align 8, !tbaa !666
  %115 = call zeroext i8 @parse_output_constraint(ptr noundef nonnull %13, i32 noundef %44, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16) #21
  %116 = icmp eq ptr %109, %106
  br i1 %116, label %119, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds i8, ptr %109, i64 1
  store i8 44, ptr %109, align 1, !tbaa !655
  br label %119

119:                                              ; preds = %117, %113
  %120 = phi ptr [ %118, %117 ], [ %106, %113 ]
  %121 = load i8, ptr %15, align 1, !tbaa !655
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
  store i8 0, ptr %135, align 1, !tbaa !655
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
  %148 = load ptr, ptr %4, align 8, !tbaa !666
  %149 = getelementptr inbounds i8, ptr %148, i64 1
  %150 = call ptr @build_string(i32 noundef %147, ptr noundef nonnull %149) #21
  br label %151

151:                                              ; preds = %137, %143, %146
  %152 = phi ptr [ %142, %137 ], [ %145, %143 ], [ %150, %146 ]
  call void @free(ptr noundef %72) #20
  %153 = call ptr @build_tree_list_stat(ptr noundef null, ptr noundef %152) #21
  %154 = load ptr, ptr %59, align 8, !tbaa !655
  %155 = call ptr @unshare_expr(ptr noundef %154) #20
  %156 = call ptr @build_tree_list_stat(ptr noundef %153, ptr noundef %155) #21
  %157 = load ptr, ptr %28, align 8, !tbaa !655
  %158 = call ptr @chainon(ptr noundef %157, ptr noundef %156) #21
  store ptr %158, ptr %28, align 8, !tbaa !655
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %12) #22
  br label %159

159:                                              ; preds = %66, %151, %29
  %160 = phi i32 [ %32, %29 ], [ %67, %151 ], [ %67, %66 ]
  %161 = add nuw i64 %30, 1
  %162 = icmp eq ptr %34, null
  br i1 %162, label %163, label %29, !llvm.loop !1203

163:                                              ; preds = %159
  %164 = trunc i64 %161 to i32
  br label %165

165:                                              ; preds = %163, %3
  %166 = phi i32 [ 1, %3 ], [ %160, %163 ]
  %167 = phi i32 [ 0, %3 ], [ %164, %163 ]
  %168 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 1, i32 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !655
  %170 = icmp eq ptr %169, null
  br i1 %170, label %230, label %171

171:                                              ; preds = %165, %226
  %172 = phi i32 [ %228, %226 ], [ %167, %165 ]
  %173 = phi ptr [ %176, %226 ], [ %169, %165 ]
  %174 = phi i32 [ %227, %226 ], [ %166, %165 ]
  %175 = getelementptr inbounds %struct.tree_common, ptr %173, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !655
  %177 = getelementptr inbounds %struct.tree_list, ptr %173, i64 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !655
  %179 = getelementptr inbounds %struct.tree_list, ptr %178, i64 0, i32 2
  %180 = load ptr, ptr %179, align 8, !tbaa !655
  %181 = getelementptr inbounds %struct.tree_string, ptr %180, i64 0, i32 2
  store ptr %181, ptr %4, align 8, !tbaa !666
  %182 = call zeroext i8 @parse_input_constraint(ptr noundef nonnull %4, i32 noundef 0, i32 noundef 0, i32 noundef %21, i32 noundef 0, ptr noundef nonnull %24, ptr noundef nonnull %5, ptr noundef nonnull %6) #21
  %183 = getelementptr inbounds %struct.tree_list, ptr %173, i64 0, i32 2
  %184 = load ptr, ptr %183, align 8, !tbaa !655
  %185 = getelementptr inbounds %struct.tree_common, ptr %184, i64 0, i32 2
  %186 = load ptr, ptr %185, align 8, !tbaa !655
  %187 = load i64, ptr %186, align 8
  %188 = and i64 %187, 262144
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %171
  %191 = load i8, ptr %6, align 1, !tbaa !655
  %192 = load i8, ptr %5, align 1
  br label %198

193:                                              ; preds = %171
  %194 = load i8, ptr %5, align 1
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %193
  store i8 0, ptr %6, align 1, !tbaa !655
  br label %198

197:                                              ; preds = %193
  call void (ptr, ...) @error(ptr noundef nonnull @.str.16) #21
  call void (ptr, ...) @error(ptr noundef nonnull @.str.17, i32 noundef %172) #21
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
  %206 = load ptr, ptr %183, align 8, !tbaa !655
  call void @mark_addressable(ptr noundef %206) #20
  %207 = icmp eq i32 %205, -2
  br i1 %207, label %208, label %226

208:                                              ; preds = %204
  %209 = load ptr, ptr %183, align 8, !tbaa !655
  %210 = load i64, ptr %209, align 8
  %211 = and i64 %210, 65535
  %212 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %211
  %213 = load i32, ptr %212, align 4, !tbaa !710
  %214 = add i32 %213, -4
  %215 = icmp ult i32 %214, 7
  br i1 %215, label %216, label %221

216:                                              ; preds = %208
  %217 = getelementptr inbounds %struct.tree_exp, ptr %209, i64 0, i32 1
  %218 = load i32, ptr %217, align 8, !tbaa !655
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %216
  store i32 %218, ptr @input_location, align 4, !tbaa !710
  br label %221

221:                                              ; preds = %208, %220, %216
  call void (ptr, ...) @error(ptr noundef nonnull @.str.18, i32 noundef %172) #21
  br label %226

222:                                              ; preds = %198
  %223 = call i32 @gimplify_expr(ptr noundef nonnull %183, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_asm_val, i32 noundef 1) #20
  %224 = icmp eq i32 %223, -2
  %225 = select i1 %224, i32 -2, i32 %174
  br label %226

226:                                              ; preds = %222, %204, %221
  %227 = phi i32 [ -2, %221 ], [ %174, %204 ], [ %225, %222 ]
  store ptr null, ptr %175, align 8, !tbaa !655
  call fastcc void @VEC_tree_gc_safe_push(ptr noundef nonnull %8, ptr noundef nonnull %173) #20
  %228 = add nuw nsw i32 %172, 1
  %229 = icmp eq ptr %176, null
  br i1 %229, label %230, label %171, !llvm.loop !1204

230:                                              ; preds = %226, %165
  %231 = phi i32 [ %166, %165 ], [ %227, %226 ]
  %232 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 1, i32 0, i32 2
  %233 = load ptr, ptr %232, align 8, !tbaa !655
  %234 = icmp eq ptr %233, null
  br i1 %234, label %240, label %235

235:                                              ; preds = %230, %235
  %236 = phi ptr [ %238, %235 ], [ %233, %230 ]
  call fastcc void @VEC_tree_gc_safe_push(ptr noundef nonnull %10, ptr noundef nonnull %236) #20
  %237 = getelementptr inbounds %struct.tree_common, ptr %236, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !655
  %239 = icmp eq ptr %238, null
  br i1 %239, label %240, label %235, !llvm.loop !1205

240:                                              ; preds = %235, %230
  %241 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 1, i32 1
  %242 = load ptr, ptr %241, align 8, !tbaa !655
  %243 = icmp eq ptr %242, null
  br i1 %243, label %249, label %244

244:                                              ; preds = %240, %244
  %245 = phi ptr [ %247, %244 ], [ %242, %240 ]
  call fastcc void @VEC_tree_gc_safe_push(ptr noundef nonnull %11, ptr noundef nonnull %245) #20
  %246 = getelementptr inbounds %struct.tree_common, ptr %245, i64 0, i32 1
  %247 = load ptr, ptr %246, align 8, !tbaa !655
  %248 = icmp eq ptr %247, null
  br i1 %248, label %249, label %244, !llvm.loop !1206

249:                                              ; preds = %244, %240
  %250 = icmp eq i32 %231, -2
  br i1 %250, label %269, label %251

251:                                              ; preds = %249
  %252 = load ptr, ptr %18, align 8, !tbaa !655
  %253 = getelementptr inbounds %struct.tree_string, ptr %252, i64 0, i32 2
  %254 = load ptr, ptr %8, align 8, !tbaa !666
  %255 = load ptr, ptr %9, align 8, !tbaa !666
  %256 = load ptr, ptr %10, align 8, !tbaa !666
  %257 = load ptr, ptr %11, align 8, !tbaa !666
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
define internal fastcc void @gimple_try_set_catch_is_cleanup(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #4 !prof !688 !PGOFuncName !1207 {
  %3 = tail call fastcc i32 @gimple_try_kind(ptr noundef %0) #20, !range !1208
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 2976, ptr noundef nonnull @.str.1) #21
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
define internal fastcc noundef i32 @gimplify_cleanup_point_expr(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #4 !prof !688 !PGOFuncName !1209 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !666
  %6 = load ptr, ptr %0, align 8, !tbaa !666
  %7 = tail call ptr @voidify_wrapper_expr(ptr noundef %6, ptr noundef null) #20
  %8 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %9 = getelementptr inbounds %struct.gimplify_ctx, ptr %8, i64 0, i32 8
  %10 = load i32, ptr %9, align 8, !tbaa !1210
  %11 = getelementptr inbounds %struct.gimplify_ctx, ptr %8, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !1211
  store i32 0, ptr %9, align 8, !tbaa !1210
  store ptr null, ptr %11, align 8, !tbaa !1211
  %13 = load ptr, ptr %0, align 8, !tbaa !666
  %14 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %15 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %14, ptr noundef nonnull %4) #20, !range !653
  %16 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %17 = getelementptr inbounds %struct.gimplify_ctx, ptr %16, i64 0, i32 8
  store i32 %10, ptr %17, align 8, !tbaa !1210
  %18 = getelementptr inbounds %struct.gimplify_ctx, ptr %16, i64 0, i32 3
  store ptr %12, ptr %18, align 8, !tbaa !1211
  %19 = load ptr, ptr %4, align 8, !tbaa !666
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %19) #20
  %20 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !653
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %2, %40
  %23 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  %24 = call fastcc i32 @gimple_code(ptr noundef %23) #20, !range !684
  %25 = icmp eq i32 %24, 34
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = call fastcc zeroext i8 @gsi_one_before_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !653
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = call fastcc ptr @gimple_wce_cleanup(ptr noundef %23) #20
  call void @gsi_insert_seq_before_without_update(ptr noundef nonnull %3, ptr noundef %30, i32 noundef 1) #21
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #21
  br label %43

31:                                               ; preds = %26
  %32 = call fastcc zeroext i8 @gimple_wce_cleanup_eh_only(ptr noundef %23) #20, !range !653
  %33 = icmp eq i8 %32, 0
  %34 = select i1 %33, i32 2, i32 1
  %35 = call ptr @gsi_split_seq_after(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #21
  %36 = call fastcc ptr @gimple_wce_cleanup(ptr noundef %23) #20
  %37 = call ptr @gimple_build_try(ptr noundef %35, ptr noundef %36, i32 noundef %34) #21
  %38 = call fastcc ptr @gsi_stmt_ptr(ptr noundef nonnull %3) #20
  store ptr %37, ptr %38, align 8, !tbaa !666
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #22
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %35) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !1212
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #22
  br label %40

39:                                               ; preds = %22
  call fastcc void @gsi_next(ptr noundef nonnull %3) #20
  br label %40

40:                                               ; preds = %31, %39
  %41 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !653
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %22, label %43

43:                                               ; preds = %40, %2, %29
  %44 = load ptr, ptr %4, align 8, !tbaa !666
  call fastcc void @gimplify_seq_add_seq(ptr noundef %1, ptr noundef %44) #20
  %45 = icmp eq ptr %7, null
  %46 = zext i1 %45 to i32
  store ptr %7, ptr %0, align 8, !tbaa !666
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret i32 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gimplify_target_expr(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 !prof !1213 !PGOFuncName !1214 {
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !666
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !655
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %8 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !655
  store ptr %9, ptr %4, align 8, !tbaa !666
  %10 = icmp eq ptr %9, null
  br i1 %10, label %59, label %11, !prof !1215

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !655
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 23
  br i1 %16, label %25, label %17, !prof !1216

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !655
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
  %28 = load ptr, ptr %27, align 8, !tbaa !655
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 19
  br i1 %31, label %32, label %34, !prof !1216

32:                                               ; preds = %26
  %33 = call i32 @gimplify_expr(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_stmt, i32 noundef 0) #20
  br label %38

34:                                               ; preds = %26
  %35 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !666
  %36 = tail call ptr @build2_stat(i32 noundef 54, ptr noundef %35, ptr noundef nonnull %7, ptr noundef nonnull %9) #21
  store ptr %36, ptr %4, align 8, !tbaa !666
  %37 = call i32 @gimplify_expr(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_stmt, i32 noundef 0) #20
  store ptr null, ptr %4, align 8, !tbaa !666
  call void @ggc_free(ptr noundef %36) #21
  br label %38

38:                                               ; preds = %34, %32
  %39 = phi i32 [ %33, %32 ], [ %37, %34 ]
  %40 = icmp eq i32 %39, -2
  br i1 %40, label %41, label %42, !prof !1215

41:                                               ; preds = %38
  store ptr null, ptr %8, align 8, !tbaa !655
  br label %66

42:                                               ; preds = %38
  %43 = load ptr, ptr %4, align 8, !tbaa !666
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45, !prof !1216

45:                                               ; preds = %42
  call void @gimplify_and_add(ptr noundef nonnull %43, ptr noundef %1) #20
  br label %46

46:                                               ; preds = %45, %42
  %47 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !655
  %49 = icmp eq ptr %48, null
  br i1 %49, label %56, label %50, !prof !1216

50:                                               ; preds = %46
  %51 = load i64, ptr %5, align 8
  %52 = trunc i64 %51 to i32
  %53 = lshr i32 %52, 26
  %54 = trunc i32 %53 to i8
  %55 = and i8 %54, 1
  call fastcc void @gimple_push_cleanup(ptr noundef nonnull %7, ptr noundef nonnull %48, i8 noundef zeroext %55, ptr noundef %1) #20
  br label %56

56:                                               ; preds = %50, %46
  %57 = load ptr, ptr %4, align 8, !tbaa !666
  %58 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1, i32 0, i32 2
  store ptr %57, ptr %58, align 8, !tbaa !655
  store ptr null, ptr %8, align 8, !tbaa !655
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
  store ptr %7, ptr %0, align 8, !tbaa !666
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
define internal fastcc void @gimple_set_no_warning(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #17 !prof !1183 !PGOFuncName !1217 {
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
define internal fastcc noundef i32 @gimplify_statement_list(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #4 !prof !1218 !PGOFuncName !1219 {
  %3 = alloca %struct.tree_stmt_iterator, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !666
  %5 = tail call ptr @voidify_wrapper_expr(ptr noundef %4, ptr noundef null) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #22
  %6 = load ptr, ptr %0, align 8, !tbaa !666
  %7 = tail call fastcc { ptr, ptr } @tsi_start(ptr noundef %6) #20
  %8 = extractvalue { ptr, ptr } %7, 0
  store ptr %8, ptr %3, align 8
  %9 = getelementptr inbounds { ptr, ptr }, ptr %3, i64 0, i32 1
  %10 = extractvalue { ptr, ptr } %7, 1
  store ptr %10, ptr %9, align 8
  %11 = tail call fastcc zeroext i8 @tsi_end_p(ptr %8) #20
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %20, !prof !1220

13:                                               ; preds = %2, %13
  %14 = phi ptr [ %17, %13 ], [ %8, %2 ]
  %15 = call fastcc ptr @tsi_stmt_ptr(ptr %14) #20
  %16 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %15, ptr noundef %1) #20, !range !653
  call void @tsi_delink(ptr noundef nonnull %3) #21
  %17 = load ptr, ptr %3, align 8
  %18 = call fastcc zeroext i8 @tsi_end_p(ptr %17) #20
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %13, label %20, !prof !1221, !llvm.loop !1222

20:                                               ; preds = %13, %2
  %21 = icmp eq ptr %5, null
  br i1 %21, label %23, label %22, !prof !1223

22:                                               ; preds = %20
  store ptr %5, ptr %0, align 8, !tbaa !666
  br label %23

23:                                               ; preds = %20, %22
  %24 = phi i32 [ 0, %22 ], [ 1, %20 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #22
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gimplify_var_or_parm_decl(ptr nocapture noundef %0) unnamed_addr #4 !prof !1224 !PGOFuncName !1225 {
  %2 = load ptr, ptr %0, align 8, !tbaa !666
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 32
  br i1 %5, label %6, label %33, !prof !1226

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %2, i64 0, i32 4
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 256
  %10 = icmp eq i32 %9, 0
  %11 = and i64 %3, 67108864
  %12 = icmp eq i64 %11, 0
  %13 = and i1 %12, %10
  br i1 %13, label %14, label %33, !prof !1227

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 33554432
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %33, !prof !1228

19:                                               ; preds = %14
  %20 = tail call ptr @decl_function_context(ptr noundef nonnull %2) #21
  %21 = load ptr, ptr @current_function_decl, align 8, !tbaa !666
  %22 = icmp eq ptr %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load ptr, ptr @global_dc, align 8, !tbaa !666
  %25 = getelementptr inbounds %struct.diagnostic_context, ptr %24, i64 0, i32 1, i64 4
  %26 = load i32, ptr %25, align 8, !tbaa !710
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %101

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.diagnostic_context, ptr %24, i64 0, i32 1, i64 5
  %30 = load i32, ptr %29, align 4, !tbaa !710
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %101

32:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1820, ptr noundef nonnull @.str.1) #21
  br label %101

33:                                               ; preds = %19, %14, %6, %1
  %34 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !666
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36, !prof !1229

36:                                               ; preds = %33
  %37 = tail call fastcc zeroext i8 @omp_notice_variable(ptr noundef nonnull %34, ptr noundef nonnull %2) #20
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %101

39:                                               ; preds = %36, %33
  %40 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 2
  %41 = load i64, ptr %40, align 8
  %42 = and i64 %41, 67108864
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %101, label %44, !prof !1230

44:                                               ; preds = %39
  %45 = tail call ptr @decl_value_expr_lookup(ptr noundef nonnull %2) #21
  %46 = load i64, ptr %2, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 32
  br i1 %48, label %49, label %99, !prof !1231

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.tree_decl_common, ptr %2, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !655
  %52 = load i64, ptr %51, align 8
  %53 = and i64 %52, 65535
  %54 = icmp ne i64 %53, 23
  %55 = load ptr, ptr @nonlocal_vlas, align 8
  %56 = icmp ne ptr %55, null
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %99, !prof !1232

58:                                               ; preds = %49
  %59 = load i64, ptr %45, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 47
  br i1 %61, label %62, label %99

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.tree_exp, ptr %45, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !655
  %65 = load i64, ptr %64, align 8
  %66 = and i64 %65, 65535
  %67 = icmp eq i64 %66, 32
  br i1 %67, label %68, label %99

68:                                               ; preds = %62
  %69 = tail call ptr @decl_function_context(ptr noundef nonnull %2) #21
  %70 = load ptr, ptr @current_function_decl, align 8, !tbaa !666
  %71 = icmp eq ptr %69, %70
  br i1 %71, label %99, label %72

72:                                               ; preds = %68, %76
  %73 = phi ptr [ %74, %76 ], [ @gimplify_omp_ctxp, %68 ]
  %74 = load ptr, ptr %73, align 8, !tbaa !666
  %75 = icmp eq ptr %74, null
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %74, i64 0, i32 5
  %78 = load i32, ptr %77, align 8, !tbaa !726
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %72, label %99, !llvm.loop !1233

80:                                               ; preds = %72
  %81 = load ptr, ptr @nonlocal_vlas, align 8, !tbaa !666
  %82 = tail call i32 @pointer_set_insert(ptr noundef %81, ptr noundef nonnull %2) #21
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %80
  %85 = tail call ptr @copy_node_stat(ptr noundef nonnull %2) #21
  %86 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 15), align 8, !tbaa !1234
  tail call void %86(ptr noundef %85) #21
  tail call void @set_decl_rtl(ptr noundef %85, ptr noundef null) #21
  %87 = load i64, ptr %85, align 8
  %88 = or i64 %87, 16777216
  store i64 %88, ptr %85, align 8
  %89 = load ptr, ptr @current_function_decl, align 8, !tbaa !666
  %90 = getelementptr inbounds %struct.tree_decl_common, ptr %89, i64 0, i32 5
  %91 = load ptr, ptr %90, align 8, !tbaa !655
  %92 = getelementptr inbounds %struct.tree_block, ptr %91, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !655
  %94 = getelementptr inbounds %struct.tree_common, ptr %85, i64 0, i32 1
  store ptr %93, ptr %94, align 8, !tbaa !655
  store ptr %85, ptr %92, align 8, !tbaa !655
  %95 = tail call ptr @unshare_expr(ptr noundef nonnull %45) #20
  tail call void @decl_value_expr_insert(ptr noundef nonnull %85, ptr noundef %95) #21
  %96 = getelementptr inbounds %struct.tree_decl_common, ptr %85, i64 0, i32 2
  %97 = load i64, ptr %96, align 8
  %98 = or i64 %97, 67108864
  store i64 %98, ptr %96, align 8
  br label %99

99:                                               ; preds = %76, %80, %84, %68, %62, %58, %49, %44
  %100 = tail call ptr @unshare_expr(ptr noundef %45) #20
  store ptr %100, ptr %0, align 8, !tbaa !666
  br label %101

101:                                              ; preds = %39, %36, %32, %28, %23, %99
  %102 = phi i32 [ 0, %99 ], [ -2, %23 ], [ -2, %28 ], [ -2, %32 ], [ 1, %36 ], [ 1, %39 ]
  ret i32 %102
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_omp_parallel(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #4 !prof !688 !PGOFuncName !1235 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimplify_ctx, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !666
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store ptr null, ptr %3, align 8, !tbaa !666
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #22
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  %8 = load i64, ptr %5, align 8
  %9 = and i64 %8, 268435456
  %10 = icmp eq i64 %9, 0
  %11 = select i1 %10, i32 2, i32 3
  tail call fastcc void @gimplify_scan_omp_clauses(ptr noundef nonnull %7, ptr noundef %1, i32 noundef %11) #20
  call void @push_gimplify_context(ptr noundef nonnull %4) #20
  %12 = load ptr, ptr %6, align 8, !tbaa !655
  %13 = call fastcc ptr @gimplify_and_return_first(ptr noundef %12, ptr noundef nonnull %3) #20
  %14 = call fastcc i32 @gimple_code(ptr noundef %13) #20, !range !684
  %15 = icmp eq i32 %14, 10
  %16 = select i1 %15, ptr %13, ptr null
  call void @pop_gimplify_context(ptr noundef %16) #20
  call fastcc void @gimplify_adjust_omp_clauses(ptr noundef nonnull %7) #20
  %17 = load ptr, ptr %3, align 8, !tbaa !666
  %18 = load ptr, ptr %7, align 8, !tbaa !655
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
  store ptr null, ptr %0, align 8, !tbaa !666
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_omp_task(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #4 !prof !688 !PGOFuncName !1236 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimplify_ctx, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !666
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store ptr null, ptr %3, align 8, !tbaa !666
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #22
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  tail call fastcc void @gimplify_scan_omp_clauses(ptr noundef nonnull %7, ptr noundef %1, i32 noundef 1) #20
  call void @push_gimplify_context(ptr noundef nonnull %4) #20
  %8 = load ptr, ptr %6, align 8, !tbaa !655
  %9 = call fastcc ptr @gimplify_and_return_first(ptr noundef %8, ptr noundef nonnull %3) #20
  %10 = call fastcc i32 @gimple_code(ptr noundef %9) #20, !range !684
  %11 = icmp eq i32 %10, 10
  %12 = select i1 %11, ptr %9, ptr null
  call void @pop_gimplify_context(ptr noundef %12) #20
  call fastcc void @gimplify_adjust_omp_clauses(ptr noundef nonnull %7) #20
  %13 = load ptr, ptr %3, align 8, !tbaa !666
  %14 = load ptr, ptr %7, align 8, !tbaa !655
  %15 = call ptr @gimple_build_omp_task(ptr noundef %13, ptr noundef %14, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %15) #20
  store ptr null, ptr %0, align 8, !tbaa !666
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimplify_omp_for(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #4 !prof !688 !PGOFuncName !1237 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %5 = load ptr, ptr %0, align 8, !tbaa !666
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  tail call fastcc void @gimplify_scan_omp_clauses(ptr noundef nonnull %7, ptr noundef %1, i32 noundef 0) #20
  store ptr null, ptr %4, align 8, !tbaa !666
  %8 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !655
  call void @gimplify_and_add(ptr noundef %9, ptr noundef nonnull %4) #20
  store ptr null, ptr %8, align 8, !tbaa !655
  %10 = call ptr @gimple_seq_alloc() #21
  store ptr %10, ptr %3, align 8, !tbaa !666
  %11 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !655
  %13 = getelementptr inbounds %struct.tree_vec, ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !655
  %15 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1, i32 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !655
  %17 = getelementptr inbounds %struct.tree_vec, ptr %16, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !655
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6067, ptr noundef nonnull @.str.1) #21
  %21 = load ptr, ptr %11, align 8, !tbaa !655
  %22 = getelementptr inbounds %struct.tree_vec, ptr %21, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !655
  br label %24

24:                                               ; preds = %2, %20
  %25 = phi i32 [ %14, %2 ], [ %23, %20 ]
  %26 = phi ptr [ %12, %2 ], [ %21, %20 ]
  %27 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !655
  %29 = getelementptr inbounds %struct.tree_vec, ptr %28, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !655
  %31 = icmp eq i32 %25, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %24
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6069, ptr noundef nonnull @.str.1) #21
  %33 = load ptr, ptr %11, align 8, !tbaa !655
  %34 = getelementptr inbounds %struct.tree_vec, ptr %33, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !655
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
  %45 = load ptr, ptr %44, align 8, !tbaa !655
  %46 = load i64, ptr %45, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 53
  br i1 %48, label %50, label %49

49:                                               ; preds = %40
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6073, ptr noundef nonnull @.str.1) #21
  br label %50

50:                                               ; preds = %40, %49
  %51 = getelementptr inbounds %struct.tree_exp, ptr %45, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !655
  %53 = load i64, ptr %52, align 8
  %54 = and i64 %53, 65535
  %55 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !710
  %57 = icmp eq i32 %56, 3
  br i1 %57, label %59, label %58

58:                                               ; preds = %50
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6075, ptr noundef nonnull @.str.1) #21
  br label %59

59:                                               ; preds = %50, %58
  %60 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !655
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
  %66 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !666
  %67 = call fastcc zeroext i8 @omp_is_private(ptr noundef %66, ptr noundef nonnull %52) #20, !range !653
  %68 = icmp eq i8 %67, 0
  %69 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !666
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
  %77 = load ptr, ptr %60, align 8, !tbaa !655
  %78 = call ptr @get_name(ptr noundef nonnull %52) #21
  %79 = call ptr @create_tmp_var(ptr noundef %77, ptr noundef %78) #20
  store ptr %79, ptr %51, align 8, !tbaa !655
  %80 = call ptr @gimple_build_assign_stat(ptr noundef nonnull %52, ptr noundef %79) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %3, ptr noundef %80) #20
  %81 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !666
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
  %89 = load ptr, ptr %15, align 8, !tbaa !655
  %90 = getelementptr inbounds %struct.tree_vec, ptr %89, i64 0, i32 2, i64 %41
  %91 = load ptr, ptr %90, align 8, !tbaa !655
  %92 = load i64, ptr %91, align 8
  %93 = and i64 %92, 65535
  %94 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %93
  %95 = load i32, ptr %94, align 4, !tbaa !710
  %96 = icmp eq i32 %95, 5
  br i1 %96, label %98, label %97

97:                                               ; preds = %88
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6108, ptr noundef nonnull @.str.1) #21
  br label %98

98:                                               ; preds = %88, %97
  %99 = getelementptr inbounds %struct.tree_exp, ptr %91, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !655
  %101 = icmp eq ptr %100, %52
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6109, ptr noundef nonnull @.str.1) #21
  br label %103

103:                                              ; preds = %98, %102
  %104 = getelementptr inbounds %struct.tree_exp, ptr %91, i64 1
  %105 = call i32 @gimplify_expr(ptr noundef nonnull %104, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %106 = call i32 @llvm.smin.i32(i32 %86, i32 %105)
  %107 = load ptr, ptr %27, align 8, !tbaa !655
  %108 = getelementptr inbounds %struct.tree_vec, ptr %107, i64 0, i32 2, i64 %41
  %109 = load ptr, ptr %108, align 8, !tbaa !655
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
  %113 = load ptr, ptr %60, align 8, !tbaa !655
  %114 = call ptr @build_int_cst(ptr noundef %113, i64 noundef 1) #21
  %115 = load ptr, ptr %60, align 8, !tbaa !655
  %116 = call ptr @build2_stat(i32 noundef 63, ptr noundef %115, ptr noundef %83, ptr noundef %114) #21
  %117 = getelementptr inbounds %struct.tree_common, ptr %83, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !655
  %119 = call ptr @build2_stat(i32 noundef 53, ptr noundef %118, ptr noundef %83, ptr noundef %116) #21
  %120 = load ptr, ptr %27, align 8, !tbaa !655
  %121 = getelementptr inbounds %struct.tree_vec, ptr %120, i64 0, i32 2, i64 %41
  store ptr %119, ptr %121, align 8, !tbaa !655
  br label %161

122:                                              ; preds = %103, %103
  %123 = load ptr, ptr %60, align 8, !tbaa !655
  %124 = call ptr @build_int_cst(ptr noundef %123, i64 noundef -1) #21
  %125 = load ptr, ptr %60, align 8, !tbaa !655
  %126 = call ptr @build2_stat(i32 noundef 63, ptr noundef %125, ptr noundef %83, ptr noundef %124) #21
  %127 = getelementptr inbounds %struct.tree_common, ptr %83, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !655
  %129 = call ptr @build2_stat(i32 noundef 53, ptr noundef %128, ptr noundef %83, ptr noundef %126) #21
  %130 = load ptr, ptr %27, align 8, !tbaa !655
  %131 = getelementptr inbounds %struct.tree_vec, ptr %130, i64 0, i32 2, i64 %41
  store ptr %129, ptr %131, align 8, !tbaa !655
  br label %161

132:                                              ; preds = %103
  %133 = getelementptr inbounds %struct.tree_exp, ptr %109, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !655
  %135 = icmp eq ptr %134, %52
  br i1 %135, label %137, label %136

136:                                              ; preds = %132
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6136, ptr noundef nonnull @.str.1) #21
  br label %137

137:                                              ; preds = %132, %136
  store ptr %83, ptr %133, align 8, !tbaa !655
  %138 = getelementptr inbounds %struct.tree_exp, ptr %109, i64 1
  %139 = load ptr, ptr %138, align 8, !tbaa !655
  %140 = load i64, ptr %139, align 8
  %141 = trunc i64 %140 to i16
  switch i16 %141, label %155 [
    i16 63, label %142
    i16 64, label %149
    i16 66, label %149
  ]

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.tree_exp, ptr %139, i64 1
  %144 = load ptr, ptr %143, align 8, !tbaa !655
  %145 = icmp eq ptr %144, %52
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = getelementptr inbounds %struct.tree_exp, ptr %139, i64 0, i32 3
  %148 = load ptr, ptr %147, align 8, !tbaa !655
  store ptr %148, ptr %143, align 8, !tbaa !655
  store ptr %83, ptr %147, align 8, !tbaa !655
  br label %156

149:                                              ; preds = %142, %137, %137
  %150 = getelementptr inbounds %struct.tree_exp, ptr %139, i64 0, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !655
  %152 = icmp eq ptr %151, %52
  br i1 %152, label %154, label %153

153:                                              ; preds = %149
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6153, ptr noundef nonnull @.str.1) #21
  br label %154

154:                                              ; preds = %149, %153
  store ptr %83, ptr %150, align 8, !tbaa !655
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
  %165 = load ptr, ptr %11, align 8, !tbaa !655
  %166 = getelementptr inbounds %struct.tree_vec, ptr %165, i64 0, i32 1
  %167 = load i32, ptr %166, align 8, !tbaa !655
  %168 = icmp sgt i32 %167, 1
  br i1 %168, label %169, label %222

169:                                              ; preds = %164, %161
  %170 = load ptr, ptr %7, align 8, !tbaa !655
  %171 = icmp eq ptr %170, null
  br i1 %171, label %222, label %172

172:                                              ; preds = %169, %218
  %173 = phi ptr [ %220, %218 ], [ %170, %169 ]
  %174 = getelementptr inbounds %struct.tree_omp_clause, ptr %173, i64 0, i32 2
  %175 = load i32, ptr %174, align 4, !tbaa !655
  %176 = icmp eq i32 %175, 4
  br i1 %176, label %177, label %218

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.tree_omp_clause, ptr %173, i64 0, i32 6
  %179 = load ptr, ptr %178, align 8, !tbaa !655
  %180 = icmp eq ptr %179, %52
  br i1 %180, label %181, label %218

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.tree_omp_clause, ptr %173, i64 0, i32 4
  %183 = load ptr, ptr %182, align 8, !tbaa !655
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %218

185:                                              ; preds = %181
  %186 = load ptr, ptr %27, align 8, !tbaa !655
  %187 = getelementptr inbounds %struct.tree_vec, ptr %186, i64 0, i32 2, i64 %41
  %188 = load ptr, ptr %187, align 8, !tbaa !655
  %189 = load i64, ptr %188, align 8
  %190 = and i64 %189, 65535
  %191 = icmp eq i64 %190, 53
  br i1 %191, label %193, label %192

192:                                              ; preds = %185
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6178, ptr noundef nonnull @.str.1) #21
  br label %193

193:                                              ; preds = %185, %192
  %194 = getelementptr inbounds %struct.tree_exp, ptr %188, i64 0, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !655
  %196 = icmp eq ptr %195, %83
  br i1 %196, label %198, label %197

197:                                              ; preds = %193
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6179, ptr noundef nonnull @.str.1) #21
  br label %198

198:                                              ; preds = %193, %197
  %199 = getelementptr inbounds %struct.tree_exp, ptr %188, i64 1
  %200 = load ptr, ptr %199, align 8, !tbaa !655
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
  %206 = load ptr, ptr %205, align 8, !tbaa !655
  %207 = icmp eq ptr %206, %83
  br i1 %207, label %209, label %208

208:                                              ; preds = %204
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 6184, ptr noundef nonnull @.str.1) #21
  br label %209

209:                                              ; preds = %204, %208
  %210 = load i64, ptr %200, align 8
  %211 = trunc i64 %210 to i32
  %212 = and i32 %211, 65535
  %213 = load ptr, ptr %60, align 8, !tbaa !655
  %214 = getelementptr inbounds %struct.tree_exp, ptr %200, i64 1
  %215 = load ptr, ptr %214, align 8, !tbaa !655
  %216 = call ptr @build2_stat(i32 noundef %212, ptr noundef %213, ptr noundef nonnull %52, ptr noundef %215) #21
  %217 = call ptr @gimplify_assign(ptr noundef nonnull %52, ptr noundef %216, ptr noundef nonnull %182) #21
  br label %218

218:                                              ; preds = %172, %177, %181, %209
  %219 = getelementptr inbounds %struct.tree_common, ptr %173, i64 0, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !655
  %221 = icmp eq ptr %220, null
  br i1 %221, label %222, label %172, !llvm.loop !1238

222:                                              ; preds = %218, %169, %164
  %223 = add nuw nsw i64 %41, 1
  %224 = load ptr, ptr %11, align 8, !tbaa !655
  %225 = getelementptr inbounds %struct.tree_vec, ptr %224, i64 0, i32 1
  %226 = load i32, ptr %225, align 8, !tbaa !655
  %227 = sext i32 %226 to i64
  %228 = icmp slt i64 %223, %227
  br i1 %228, label %40, label %229, !llvm.loop !1239

229:                                              ; preds = %222
  %230 = icmp eq i32 %162, 1
  %231 = select i1 %230, i32 1, i32 -2
  br label %232

232:                                              ; preds = %229, %36
  %233 = phi i32 [ 1, %36 ], [ %231, %229 ]
  %234 = load ptr, ptr %6, align 8, !tbaa !655
  call void @gimplify_and_add(ptr noundef %234, ptr noundef nonnull %3) #20
  call fastcc void @gimplify_adjust_omp_clauses(ptr noundef nonnull %7) #20
  %235 = load ptr, ptr %3, align 8, !tbaa !666
  %236 = load ptr, ptr %7, align 8, !tbaa !655
  %237 = load ptr, ptr %11, align 8, !tbaa !655
  %238 = getelementptr inbounds %struct.tree_vec, ptr %237, i64 0, i32 1
  %239 = load i32, ptr %238, align 8, !tbaa !655
  %240 = sext i32 %239 to i64
  %241 = load ptr, ptr %4, align 8, !tbaa !666
  %242 = call ptr @gimple_build_omp_for(ptr noundef %235, ptr noundef %236, i64 noundef %240, ptr noundef %241) #21
  %243 = load ptr, ptr %11, align 8, !tbaa !655
  %244 = getelementptr inbounds %struct.tree_vec, ptr %243, i64 0, i32 1
  %245 = load i32, ptr %244, align 8, !tbaa !655
  %246 = icmp sgt i32 %245, 0
  br i1 %246, label %247, label %275

247:                                              ; preds = %232, %247
  %248 = phi i64 [ %269, %247 ], [ 0, %232 ]
  %249 = phi ptr [ %270, %247 ], [ %243, %232 ]
  %250 = getelementptr inbounds %struct.tree_vec, ptr %249, i64 0, i32 2, i64 %248
  %251 = load ptr, ptr %250, align 8, !tbaa !655
  %252 = getelementptr inbounds %struct.tree_exp, ptr %251, i64 0, i32 3
  %253 = load ptr, ptr %252, align 8, !tbaa !655
  call fastcc void @gimple_omp_for_set_index(ptr noundef %242, i64 noundef %248, ptr noundef %253) #20
  %254 = getelementptr inbounds %struct.tree_exp, ptr %251, i64 1
  %255 = load ptr, ptr %254, align 8, !tbaa !655
  call fastcc void @gimple_omp_for_set_initial(ptr noundef %242, i64 noundef %248, ptr noundef %255) #20
  %256 = load ptr, ptr %15, align 8, !tbaa !655
  %257 = getelementptr inbounds %struct.tree_vec, ptr %256, i64 0, i32 2, i64 %248
  %258 = load ptr, ptr %257, align 8, !tbaa !655
  %259 = load i64, ptr %258, align 8
  %260 = trunc i64 %259 to i32
  %261 = and i32 %260, 65535
  call fastcc void @gimple_omp_for_set_cond(ptr noundef %242, i64 noundef %248, i32 noundef %261) #20
  %262 = getelementptr inbounds %struct.tree_exp, ptr %258, i64 1
  %263 = load ptr, ptr %262, align 8, !tbaa !655
  call fastcc void @gimple_omp_for_set_final(ptr noundef %242, i64 noundef %248, ptr noundef %263) #20
  %264 = load ptr, ptr %27, align 8, !tbaa !655
  %265 = getelementptr inbounds %struct.tree_vec, ptr %264, i64 0, i32 2, i64 %248
  %266 = load ptr, ptr %265, align 8, !tbaa !655
  %267 = getelementptr inbounds %struct.tree_exp, ptr %266, i64 1
  %268 = load ptr, ptr %267, align 8, !tbaa !655
  call fastcc void @gimple_omp_for_set_incr(ptr noundef %242, i64 noundef %248, ptr noundef %268) #20
  %269 = add nuw nsw i64 %248, 1
  %270 = load ptr, ptr %11, align 8, !tbaa !655
  %271 = getelementptr inbounds %struct.tree_vec, ptr %270, i64 0, i32 1
  %272 = load i32, ptr %271, align 8, !tbaa !655
  %273 = sext i32 %272 to i64
  %274 = icmp slt i64 %269, %273
  br i1 %274, label %247, label %275, !llvm.loop !1240

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
define internal fastcc void @gimplify_omp_workshare(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #4 !prof !688 !PGOFuncName !1241 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !666
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store ptr null, ptr %3, align 8, !tbaa !666
  %5 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %6 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  tail call fastcc void @gimplify_scan_omp_clauses(ptr noundef nonnull %6, ptr noundef %1, i32 noundef 0) #20
  %7 = load ptr, ptr %5, align 8, !tbaa !655
  call void @gimplify_and_add(ptr noundef %7, ptr noundef nonnull %3) #20
  call fastcc void @gimplify_adjust_omp_clauses(ptr noundef nonnull %6) #20
  %8 = load i64, ptr %4, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %18 [
    i16 156, label %10
    i16 157, label %14
  ]

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !tbaa !666
  %12 = load ptr, ptr %6, align 8, !tbaa !655
  %13 = call ptr @gimple_build_omp_sections(ptr noundef %11, ptr noundef %12) #21
  br label %19

14:                                               ; preds = %2
  %15 = load ptr, ptr %3, align 8, !tbaa !666
  %16 = load ptr, ptr %6, align 8, !tbaa !655
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
define internal fastcc noundef i32 @gimplify_omp_atomic(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #4 !prof !688 !PGOFuncName !1242 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %5 = load ptr, ptr %0, align 8, !tbaa !666
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !655
  store ptr %7, ptr %3, align 8, !tbaa !666
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  %8 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !655
  store ptr %9, ptr %4, align 8, !tbaa !666
  %10 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !655
  %12 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !655
  %14 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 16
  %15 = load ptr, ptr %14, align 8, !tbaa !655
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
  %33 = load ptr, ptr %3, align 8, !tbaa !666
  %34 = call ptr @gimple_build_omp_atomic_load(ptr noundef %16, ptr noundef %33) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %34) #20
  %35 = call i32 @gimplify_expr(ptr noundef nonnull %4, ptr noundef %1, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load ptr, ptr %4, align 8, !tbaa !666
  %39 = call ptr @gimple_build_omp_atomic_store(ptr noundef %38) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %39) #20
  store ptr null, ptr %0, align 8, !tbaa !666
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
define internal fastcc void @gimplify_scalar_mode_aggregate_compare(ptr nocapture noundef %0) unnamed_addr #4 !prof !688 !PGOFuncName !1243 {
  %2 = load ptr, ptr %0, align 8, !tbaa !666
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !710
  %7 = add i32 %6, -4
  %8 = icmp ult i32 %7, 7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !655
  br label %12

12:                                               ; preds = %1, %9
  %13 = phi i32 [ %11, %9 ], [ 0, %1 ]
  %14 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !655
  %16 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !655
  %18 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !655
  %20 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !1244
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
  %36 = load ptr, ptr %0, align 8, !tbaa !666
  %37 = load i64, ptr %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = and i32 %38, 65535
  %40 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !655
  %42 = tail call ptr @fold_build2_stat_loc(i32 noundef %13, i32 noundef %39, ptr noundef %41, ptr noundef %34, ptr noundef %35) #21
  store ptr %42, ptr %0, align 8, !tbaa !666
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_variable_sized_compare(ptr nocapture noundef %0) unnamed_addr #4 !prof !688 !PGOFuncName !1245 {
  %2 = load ptr, ptr %0, align 8, !tbaa !666
  %3 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !655
  %5 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !655
  %7 = load i64, ptr %2, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !710
  %11 = add i32 %10, -4
  %12 = icmp ult i32 %11, 7
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !655
  br label %16

16:                                               ; preds = %1, %13
  %17 = phi i32 [ %15, %13 ], [ 0, %1 ]
  %18 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !655
  %20 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !655
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
  %34 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 329), align 8, !tbaa !666
  %35 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef %17, ptr noundef %34, i32 noundef 3, ptr noundef %33, ptr noundef %32, ptr noundef %31) #21
  %36 = load ptr, ptr %0, align 8, !tbaa !666
  %37 = load i64, ptr %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = and i32 %38, 65535
  %40 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !655
  %42 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !666
  %43 = tail call ptr @build2_stat(i32 noundef %39, ptr noundef %41, ptr noundef %35, ptr noundef %42) #21
  store ptr %43, ptr %0, align 8, !tbaa !666
  ret void
}

; Function Attrs: optsize
declare ptr @gimplify_assign(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_seq_add_seq(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #4 !prof !1246 !PGOFuncName !1247 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %4 = icmp eq ptr %1, null
  br i1 %4, label %12, label %5, !prof !1248

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !666
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !1249

8:                                                ; preds = %5
  %9 = tail call ptr @gimple_seq_alloc() #21
  store ptr %9, ptr %0, align 8, !tbaa !666
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
define internal fastcc void @annotate_all_with_location_after(ptr noundef %0, ptr nocapture noundef byval(%struct.gimple_stmt_iterator) align 8 %1, i32 noundef %2) unnamed_addr #0 !prof !1250 !PGOFuncName !1251 {
  %4 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !653
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6, !prof !1252

6:                                                ; preds = %3
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %0) #20
  br label %8

7:                                                ; preds = %3
  call fastcc void @gsi_next(ptr noundef nonnull %1) #20
  br label %8

8:                                                ; preds = %7, %6
  %9 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !653
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %15, !prof !1253

11:                                               ; preds = %8, %11
  %12 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20
  tail call fastcc void @annotate_one_with_location(ptr noundef %12, i32 noundef %2) #20
  call fastcc void @gsi_next(ptr noundef nonnull %1) #20
  %13 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #20, !range !653
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %11, label %15, !prof !1254, !llvm.loop !1255

15:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: optsize
declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @build_fold_indirect_ref_loc(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc(i32 noundef %0) unnamed_addr #4 !prof !1256 !PGOFuncName !1257 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #21
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #4 !prof !1258 !PGOFuncName !1259 {
  tail call fastcc void @VEC_tree_heap_reserve(ptr noundef %0) #20
  %3 = load ptr, ptr %0, align 8, !tbaa !666
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !1260 !PGOFuncName !1261 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !666
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
define internal fastcc ptr @VEC_tree_base_pop(ptr nocapture noundef %0) unnamed_addr #17 !prof !1262 !PGOFuncName !1263 {
  %2 = load i32, ptr %0, align 8, !tbaa !938
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !938
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !666
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @canonicalize_component_ref(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1264 !PGOFuncName !1265 {
  %2 = load ptr, ptr %0, align 8, !tbaa !666
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 41
  br i1 %5, label %7, label %6, !prof !1266

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1654, ptr noundef nonnull @.str.1) #21
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !655
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i32
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -6
  %14 = icmp ult i32 %13, 3
  br i1 %14, label %15, label %18, !prof !1267

15:                                               ; preds = %7
  %16 = tail call ptr @get_unwidened(ptr noundef nonnull %2, ptr noundef null) #21
  %17 = load ptr, ptr %8, align 8, !tbaa !655
  br label %21

18:                                               ; preds = %7
  %19 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !655
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi ptr [ %17, %15 ], [ %9, %18 ]
  %23 = phi ptr [ %16, %15 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !655
  %26 = icmp eq ptr %22, %25
  br i1 %26, label %72, label %27, !prof !1268

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
  %45 = load ptr, ptr %44, align 8, !tbaa !655
  %46 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !655
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
  br i1 %65, label %70, label %66, !prof !1269

66:                                               ; preds = %27
  %67 = getelementptr inbounds %struct.tree_type, ptr %25, i64 0, i32 16
  %68 = load ptr, ptr %67, align 8, !tbaa !655
  %69 = tail call ptr @build_qualified_type(ptr noundef %68, i32 noundef %64) #21
  br label %70

70:                                               ; preds = %66, %27
  %71 = phi ptr [ %69, %66 ], [ %25, %27 ]
  store ptr %71, ptr %8, align 8, !tbaa !655
  br label %72

72:                                               ; preds = %70, %21
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #7 !prof !1256 !PGOFuncName !1270 {
  %2 = load ptr, ptr %0, align 8, !tbaa !666
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1271

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #20
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !666
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve(ptr nocapture noundef %0) unnamed_addr #4 !prof !1258 !PGOFuncName !1272 {
  %2 = load ptr, ptr %0, align 8, !tbaa !666
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1273

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #21
  store ptr %6, ptr %0, align 8, !tbaa !666
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #17 !prof !1258 !PGOFuncName !1274 {
  %3 = load i32, ptr %0, align 8, !tbaa !938
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !938
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !666
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #1 !prof !1258 !PGOFuncName !1275 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !1276

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1277
  %6 = load i32, ptr %0, align 8, !tbaa !938
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
define internal fastcc noundef zeroext i8 @generic_expr_could_trap_p(ptr noundef %0) unnamed_addr #4 !prof !688 !PGOFuncName !1278 {
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
  %10 = load i32, ptr %9, align 4, !tbaa !710
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
  br i1 %23, label %30, label %24, !llvm.loop !1279

24:                                               ; preds = %19, %21
  %25 = phi i64 [ 0, %19 ], [ %22, %21 ]
  %26 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !655
  %28 = tail call fastcc zeroext i8 @generic_expr_could_trap_p(ptr noundef %27) #20, !range !653
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %21, label %30

30:                                               ; preds = %24, %21, %16, %6, %13, %1, %3
  %31 = phi i8 [ 0, %3 ], [ 0, %1 ], [ 1, %13 ], [ 1, %6 ], [ 0, %16 ], [ 1, %24 ], [ 0, %21 ]
  ret i8 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gimplify_pure_cond_expr(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #4 !prof !688 !PGOFuncName !1280 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !666
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  %5 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !655
  %7 = tail call ptr @gimple_boolify(ptr noundef %6) #20
  store ptr %7, ptr %3, align 8, !tbaa !666
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
  %17 = load ptr, ptr %3, align 8, !tbaa !666
  %18 = load ptr, ptr %0, align 8, !tbaa !666
  %19 = getelementptr inbounds %struct.tree_exp, ptr %18, i64 0, i32 3
  store ptr %17, ptr %19, align 8, !tbaa !655
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
define internal fastcc ptr @shortcut_cond_expr(ptr noundef %0) unnamed_addr #4 !prof !1281 !PGOFuncName !1282 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !666
  %6 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !655
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !655
  %10 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !655
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %12 = icmp eq ptr %9, null
  br i1 %12, label %17, label %13, !prof !1283

13:                                               ; preds = %1
  %14 = load i64, ptr %9, align 8
  %15 = and i64 %14, 65536
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %13, %1
  %18 = phi i1 [ false, %1 ], [ %16, %13 ]
  %19 = zext i1 %18 to i8
  %20 = icmp eq ptr %11, null
  br i1 %20, label %25, label %21, !prof !1284

21:                                               ; preds = %17
  %22 = load i64, ptr %11, align 8
  %23 = and i64 %22, 65536
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %85, !prof !1285

25:                                               ; preds = %21, %17
  %26 = load i64, ptr %7, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 91
  br i1 %28, label %29, label %80, !prof !1286

29:                                               ; preds = %25, %69
  %30 = phi ptr [ %71, %69 ], [ %7, %25 ]
  %31 = phi ptr [ %73, %69 ], [ %0, %25 ]
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 65535
  %34 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !710
  %36 = add i32 %35, -4
  %37 = icmp ult i32 %36, 7
  br i1 %37, label %38, label %43, !prof !1287

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !655
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, ptr @input_location, ptr %39, !prof !755
  br label %43

43:                                               ; preds = %38, %29
  %44 = phi ptr [ @input_location, %29 ], [ %42, %38 ]
  %45 = load i32, ptr %44, align 4, !tbaa !655
  %46 = getelementptr inbounds %struct.tree_exp, ptr %30, i64 0, i32 3
  %47 = getelementptr inbounds %struct.tree_exp, ptr %30, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !655
  %49 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 0, i32 3
  store ptr %48, ptr %49, align 8, !tbaa !655
  %50 = load i64, ptr %30, align 8
  %51 = and i64 %50, 65535
  %52 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !710
  %54 = add i32 %53, -4
  %55 = icmp ult i32 %54, 7
  br i1 %55, label %56, label %62, !prof !1287

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.tree_exp, ptr %30, i64 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !655
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60, !prof !1288

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 0, i32 1
  store i32 %58, ptr %61, align 8, !tbaa !655
  br label %62

62:                                               ; preds = %43, %60, %56
  %63 = tail call fastcc ptr @shortcut_cond_expr(ptr noundef nonnull %31) #20
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65, !prof !1289

65:                                               ; preds = %62
  %66 = load i64, ptr %63, align 8
  %67 = and i64 %66, 65536
  %68 = icmp ne i64 %67, 0
  br label %69

69:                                               ; preds = %65, %62
  %70 = phi i1 [ false, %62 ], [ %68, %65 ]
  %71 = load ptr, ptr %46, align 8, !tbaa !655
  %72 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !666
  %73 = tail call ptr @build3_stat(i32 noundef 56, ptr noundef %72, ptr noundef %71, ptr noundef %63, ptr noundef null) #21
  %74 = getelementptr inbounds %struct.tree_exp, ptr %73, i64 0, i32 1
  store i32 %45, ptr %74, align 8, !tbaa !655
  %75 = load i64, ptr %71, align 8
  %76 = and i64 %75, 65535
  %77 = icmp eq i64 %76, 91
  br i1 %77, label %29, label %78, !prof !1290, !llvm.loop !1291

78:                                               ; preds = %69
  %79 = zext i1 %70 to i8
  br label %80

80:                                               ; preds = %78, %25
  %81 = phi ptr [ %73, %78 ], [ %0, %25 ]
  %82 = phi i8 [ %79, %78 ], [ %19, %25 ]
  %83 = phi ptr [ %63, %78 ], [ %9, %25 ]
  %84 = phi ptr [ %71, %78 ], [ %7, %25 ]
  store ptr %81, ptr %2, align 8, !tbaa !666
  br label %85

85:                                               ; preds = %80, %21
  %86 = phi ptr [ %0, %21 ], [ %81, %80 ]
  %87 = phi i8 [ 1, %21 ], [ 0, %80 ]
  %88 = phi i8 [ %19, %21 ], [ %82, %80 ]
  %89 = phi ptr [ %9, %21 ], [ %83, %80 ]
  %90 = phi ptr [ %7, %21 ], [ %84, %80 ]
  %91 = icmp eq i8 %88, 0
  %92 = load i64, ptr %90, align 8
  br i1 %91, label %93, label %147, !prof !1292

93:                                               ; preds = %85
  %94 = and i64 %92, 65535
  %95 = icmp eq i64 %94, 92
  br i1 %95, label %96, label %147, !prof !1293

96:                                               ; preds = %93, %136
  %97 = phi ptr [ %138, %136 ], [ %90, %93 ]
  %98 = phi ptr [ %140, %136 ], [ %86, %93 ]
  %99 = load i64, ptr %98, align 8
  %100 = and i64 %99, 65535
  %101 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !710
  %103 = add i32 %102, -4
  %104 = icmp ult i32 %103, 7
  br i1 %104, label %105, label %110, !prof !1294

105:                                              ; preds = %96
  %106 = getelementptr inbounds %struct.tree_exp, ptr %98, i64 0, i32 1
  %107 = load i32, ptr %106, align 8, !tbaa !655
  %108 = icmp eq i32 %107, 0
  %109 = select i1 %108, ptr @input_location, ptr %106, !prof !755
  br label %110

110:                                              ; preds = %105, %96
  %111 = phi ptr [ @input_location, %96 ], [ %109, %105 ]
  %112 = load i32, ptr %111, align 4, !tbaa !655
  %113 = getelementptr inbounds %struct.tree_exp, ptr %97, i64 0, i32 3
  %114 = getelementptr inbounds %struct.tree_exp, ptr %97, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !655
  %116 = getelementptr inbounds %struct.tree_exp, ptr %98, i64 0, i32 3
  store ptr %115, ptr %116, align 8, !tbaa !655
  %117 = load i64, ptr %97, align 8
  %118 = and i64 %117, 65535
  %119 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !710
  %121 = add i32 %120, -4
  %122 = icmp ult i32 %121, 7
  br i1 %122, label %123, label %129, !prof !1294

123:                                              ; preds = %110
  %124 = getelementptr inbounds %struct.tree_exp, ptr %97, i64 0, i32 1
  %125 = load i32, ptr %124, align 8, !tbaa !655
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %129, label %127, !prof !755

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.tree_exp, ptr %98, i64 0, i32 1
  store i32 %125, ptr %128, align 8, !tbaa !655
  br label %129

129:                                              ; preds = %110, %127, %123
  %130 = tail call fastcc ptr @shortcut_cond_expr(ptr noundef nonnull %98) #20
  %131 = icmp eq ptr %130, null
  br i1 %131, label %136, label %132, !prof !1295

132:                                              ; preds = %129
  %133 = load i64, ptr %130, align 8
  %134 = and i64 %133, 65536
  %135 = icmp ne i64 %134, 0
  br label %136

136:                                              ; preds = %132, %129
  %137 = phi i1 [ false, %129 ], [ %135, %132 ]
  %138 = load ptr, ptr %113, align 8, !tbaa !655
  %139 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !666
  %140 = tail call ptr @build3_stat(i32 noundef 56, ptr noundef %139, ptr noundef %138, ptr noundef null, ptr noundef %130) #21
  store ptr %140, ptr %2, align 8, !tbaa !666
  %141 = getelementptr inbounds %struct.tree_exp, ptr %140, i64 0, i32 1
  store i32 %112, ptr %141, align 8, !tbaa !655
  %142 = load i64, ptr %138, align 8
  %143 = and i64 %142, 65535
  %144 = icmp eq i64 %143, 92
  br i1 %144, label %96, label %145, !prof !1296, !llvm.loop !1297

145:                                              ; preds = %136
  %146 = zext i1 %137 to i8
  br label %147

147:                                              ; preds = %85, %93, %145
  %148 = phi ptr [ %140, %145 ], [ %86, %93 ], [ %86, %85 ]
  %149 = phi i64 [ %142, %145 ], [ %92, %93 ], [ %92, %85 ]
  %150 = phi ptr [ %130, %145 ], [ %11, %93 ], [ %11, %85 ]
  %151 = phi i8 [ %146, %145 ], [ %87, %93 ], [ %87, %85 ]
  %152 = phi ptr [ %138, %145 ], [ %90, %93 ], [ %90, %85 ]
  %153 = trunc i64 %149 to i32
  %154 = and i32 %153, 65535
  %155 = add nsw i32 %154, -91
  %156 = icmp ult i32 %155, 2
  br i1 %156, label %157, label %282, !prof !1298

157:                                              ; preds = %147
  store ptr null, ptr %5, align 8, !tbaa !666
  store ptr null, ptr %4, align 8, !tbaa !666
  store ptr null, ptr %3, align 8, !tbaa !666
  %158 = icmp eq ptr %89, null
  br i1 %158, label %170, label %159, !prof !1299

159:                                              ; preds = %157
  %160 = load i64, ptr %89, align 8
  %161 = and i64 %160, 65535
  %162 = icmp eq i64 %161, 134
  br i1 %162, label %163, label %170, !prof !1300

163:                                              ; preds = %159
  %164 = getelementptr inbounds %struct.tree_exp, ptr %89, i64 0, i32 3
  %165 = load ptr, ptr %164, align 8, !tbaa !655
  %166 = load i64, ptr %165, align 8
  %167 = and i64 %166, 65535
  %168 = icmp eq i64 %167, 30
  br i1 %168, label %169, label %170, !prof !1301

169:                                              ; preds = %163
  store ptr %165, ptr %3, align 8, !tbaa !666
  br label %170

170:                                              ; preds = %169, %163, %159, %157
  %171 = phi i1 [ false, %169 ], [ true, %163 ], [ true, %159 ], [ true, %157 ]
  %172 = phi i8 [ 0, %169 ], [ %88, %163 ], [ %88, %159 ], [ %88, %157 ]
  %173 = phi ptr [ null, %169 ], [ %89, %163 ], [ %89, %159 ], [ null, %157 ]
  %174 = icmp eq ptr %150, null
  br i1 %174, label %186, label %175, !prof !1302

175:                                              ; preds = %170
  %176 = load i64, ptr %150, align 8
  %177 = and i64 %176, 65535
  %178 = icmp eq i64 %177, 134
  br i1 %178, label %179, label %186, !prof !1303

179:                                              ; preds = %175
  %180 = getelementptr inbounds %struct.tree_exp, ptr %150, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !655
  %182 = load i64, ptr %181, align 8
  %183 = and i64 %182, 65535
  %184 = icmp eq i64 %183, 30
  br i1 %184, label %185, label %186, !prof !1304

185:                                              ; preds = %179
  store ptr %181, ptr %4, align 8, !tbaa !666
  br label %186

186:                                              ; preds = %185, %179, %175, %170
  %187 = phi ptr [ %181, %185 ], [ null, %179 ], [ null, %175 ], [ null, %170 ]
  %188 = phi ptr [ null, %185 ], [ %150, %179 ], [ %150, %175 ], [ null, %170 ]
  %189 = phi i8 [ 0, %185 ], [ %151, %179 ], [ %151, %175 ], [ %151, %170 ]
  %190 = select i1 %171, ptr null, ptr %3, !prof !1305
  %191 = icmp ne ptr %187, null
  %192 = icmp ne i8 %189, 0
  %193 = select i1 %191, i1 true, i1 %192
  %194 = select i1 %193, ptr %4, ptr null, !prof !1306
  %195 = icmp ne i8 %172, 0
  %196 = select i1 %195, i1 true, i1 %192
  br i1 %196, label %213, label %197, !prof !1307

197:                                              ; preds = %186
  %198 = load i64, ptr %148, align 8
  %199 = and i64 %198, 65535
  %200 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %199
  %201 = load i32, ptr %200, align 4, !tbaa !710
  %202 = add i32 %201, -4
  %203 = icmp ult i32 %202, 7
  br i1 %203, label %204, label %208, !prof !1308

204:                                              ; preds = %197
  %205 = getelementptr inbounds %struct.tree_exp, ptr %148, i64 0, i32 1
  %206 = load i32, ptr %205, align 8, !tbaa !655
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %210, !prof !1309

208:                                              ; preds = %197, %204
  %209 = load i32, ptr @input_location, align 4, !tbaa !710
  br label %210

210:                                              ; preds = %204, %208
  %211 = phi i32 [ %209, %208 ], [ %206, %204 ]
  %212 = call fastcc ptr @shortcut_cond_r(ptr noundef nonnull %152, ptr noundef %190, ptr noundef %194, i32 noundef %211) #20
  br label %282

213:                                              ; preds = %186
  %214 = or i8 %189, %172
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %228, label %216, !prof !1310

216:                                              ; preds = %213
  %217 = select i1 %192, ptr %188, ptr %173, !prof !1311
  %218 = tail call ptr @expr_last(ptr noundef %217) #21
  %219 = icmp eq ptr %218, null
  br i1 %219, label %228, label %220, !prof !1312

220:                                              ; preds = %216
  %221 = load i64, ptr %218, align 8
  %222 = and i64 %221, 65535
  %223 = icmp eq i64 %222, 133
  br i1 %223, label %224, label %228, !prof !1313

224:                                              ; preds = %220
  %225 = getelementptr inbounds %struct.tree_exp, ptr %218, i64 0, i32 3
  %226 = load ptr, ptr %225, align 8, !tbaa !655
  store ptr %226, ptr %5, align 8, !tbaa !666
  %227 = icmp eq ptr %226, null
  br label %228

228:                                              ; preds = %213, %224, %220, %216
  %229 = phi i1 [ %227, %224 ], [ true, %220 ], [ true, %216 ], [ true, %213 ]
  %230 = select i1 %193, ptr %4, ptr %5, !prof !1314
  %231 = icmp eq ptr %187, null
  %232 = tail call zeroext i8 @block_may_fallthru(ptr noundef %173) #21
  %233 = load i64, ptr %148, align 8
  %234 = and i64 %233, 65535
  %235 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %234
  %236 = load i32, ptr %235, align 4, !tbaa !710
  %237 = add i32 %236, -4
  %238 = icmp ult i32 %237, 7
  br i1 %238, label %239, label %243, !prof !1315

239:                                              ; preds = %228
  %240 = getelementptr inbounds %struct.tree_exp, ptr %148, i64 0, i32 1
  %241 = load i32, ptr %240, align 8, !tbaa !655
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %245, !prof !1316

243:                                              ; preds = %228, %239
  %244 = load i32, ptr @input_location, align 4, !tbaa !710
  br label %245

245:                                              ; preds = %239, %243
  %246 = phi i32 [ %244, %243 ], [ %241, %239 ]
  %247 = call fastcc ptr @shortcut_cond_r(ptr noundef nonnull %152, ptr noundef %190, ptr noundef nonnull %230, i32 noundef %246) #20
  store ptr null, ptr %2, align 8, !tbaa !666
  call void @append_to_statement_list(ptr noundef %247, ptr noundef nonnull %2) #20
  call void @append_to_statement_list(ptr noundef %173, ptr noundef nonnull %2) #20
  br i1 %192, label %248, label %273, !prof !1317

248:                                              ; preds = %245
  %249 = icmp eq i8 %232, 0
  br i1 %249, label %267, label %250, !prof !1318

250:                                              ; preds = %248
  %251 = load ptr, ptr %2, align 8, !tbaa !666
  %252 = call ptr @expr_last(ptr noundef %251) #21
  %253 = call ptr @build_and_jump(ptr noundef nonnull %5) #20
  %254 = load i64, ptr %252, align 8
  %255 = and i64 %254, 65535
  %256 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %255
  %257 = load i32, ptr %256, align 4, !tbaa !710
  %258 = add i32 %257, -4
  %259 = icmp ult i32 %258, 7
  br i1 %259, label %260, label %266, !prof !1319

260:                                              ; preds = %250
  %261 = getelementptr inbounds %struct.tree_exp, ptr %252, i64 0, i32 1
  %262 = load i32, ptr %261, align 8, !tbaa !655
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %266, label %264, !prof !1320

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct.tree_exp, ptr %253, i64 0, i32 1
  store i32 %262, ptr %265, align 8, !tbaa !655
  br label %266

266:                                              ; preds = %250, %264, %260
  call void @append_to_statement_list(ptr noundef %253, ptr noundef nonnull %2) #20
  br label %267

267:                                              ; preds = %266, %248
  br i1 %231, label %268, label %272, !prof !1321

268:                                              ; preds = %267
  %269 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !666
  %270 = load ptr, ptr %4, align 8, !tbaa !666
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
  br i1 %276, label %277, label %280, !prof !1322

277:                                              ; preds = %273
  %278 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !666
  %279 = call ptr @build1_stat(i32 noundef 133, ptr noundef %278, ptr noundef nonnull %274) #21
  call void @append_to_statement_list(ptr noundef %279, ptr noundef nonnull %2) #20
  br label %280

280:                                              ; preds = %277, %273
  %281 = load ptr, ptr %2, align 8, !tbaa !666
  br label %282

282:                                              ; preds = %147, %280, %210
  %283 = phi ptr [ %281, %280 ], [ %212, %210 ], [ %148, %147 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  ret ptr %283
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gimple_push_condition() unnamed_addr #18 !prof !1323 !PGOFuncName !1324 {
  %1 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %2 = getelementptr inbounds %struct.gimplify_ctx, ptr %1, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !1210
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !1210
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_pop_condition(ptr nocapture noundef %0) unnamed_addr #4 !prof !1323 !PGOFuncName !1325 {
  %2 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %3 = getelementptr inbounds %struct.gimplify_ctx, ptr %2, i64 0, i32 8
  %4 = load i32, ptr %3, align 8, !tbaa !1210
  %5 = add nsw i32 %4, -1
  store i32 %5, ptr %3, align 8, !tbaa !1210
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %8, label %7, !prof !1326

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 290, ptr noundef nonnull @.str.1) #21
  br label %15

8:                                                ; preds = %1
  %9 = icmp eq i32 %5, 0
  br i1 %9, label %10, label %15, !prof !1327

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.gimplify_ctx, ptr %2, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !1211
  tail call fastcc void @gimplify_seq_add_seq(ptr noundef %0, ptr noundef %12) #20
  %13 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %14 = getelementptr inbounds %struct.gimplify_ctx, ptr %13, i64 0, i32 3
  store ptr null, ptr %14, align 8, !tbaa !1211
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
define internal fastcc void @gimple_set_do_not_emit_location(ptr nocapture noundef %0) unnamed_addr #17 !prof !1328 !PGOFuncName !1329 {
  tail call fastcc void @gimple_set_plf(ptr noundef %0) #20
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @tree_could_trap_p(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @tree_operand_length(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !688 !PGOFuncName !1330 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !710
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !655
  %10 = getelementptr inbounds %struct.tree_int_cst, ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !655
  %12 = trunc i64 %11 to i32
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %3
  %15 = load i8, ptr %14, align 1, !tbaa !655
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i32 [ %12, %7 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @shortcut_cond_r(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #4 !prof !1331 !PGOFuncName !1332 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  store ptr null, ptr %5, align 8, !tbaa !666
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  store ptr null, ptr %6, align 8, !tbaa !666
  %7 = load i64, ptr %0, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %80 [
    i16 91, label %9
    i16 92, label %31
    i16 56, label %53
  ], !prof !1333

9:                                                ; preds = %4
  %10 = icmp eq ptr %2, null
  %11 = select i1 %10, ptr %5, ptr %2, !prof !1334
  %12 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !655
  %14 = call fastcc ptr @shortcut_cond_r(ptr noundef %13, ptr noundef null, ptr noundef nonnull %11, i32 noundef %3) #20
  call void @append_to_statement_list(ptr noundef %14, ptr noundef nonnull %6) #20
  %15 = load i64, ptr %0, align 8
  %16 = and i64 %15, 65535
  %17 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !710
  %19 = add i32 %18, -4
  %20 = icmp ult i32 %19, 7
  br i1 %20, label %21, label %26, !prof !1335

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !655
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 %3, i32 %23, !prof !1336
  br label %26

26:                                               ; preds = %21, %9
  %27 = phi i32 [ %3, %9 ], [ %25, %21 ]
  %28 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !655
  %30 = call fastcc ptr @shortcut_cond_r(ptr noundef %29, ptr noundef %1, ptr noundef nonnull %11, i32 noundef %27) #20
  call void @append_to_statement_list(ptr noundef %30, ptr noundef nonnull %6) #20
  br label %86

31:                                               ; preds = %4
  %32 = icmp eq ptr %1, null
  %33 = select i1 %32, ptr %5, ptr %1, !prof !1337
  %34 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !655
  %36 = call fastcc ptr @shortcut_cond_r(ptr noundef %35, ptr noundef nonnull %33, ptr noundef null, i32 noundef %3) #20
  call void @append_to_statement_list(ptr noundef %36, ptr noundef nonnull %6) #20
  %37 = load i64, ptr %0, align 8
  %38 = and i64 %37, 65535
  %39 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !710
  %41 = add i32 %40, -4
  %42 = icmp ult i32 %41, 7
  br i1 %42, label %43, label %48, !prof !1338

43:                                               ; preds = %31
  %44 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !655
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 %3, i32 %45, !prof !1339
  br label %48

48:                                               ; preds = %43, %31
  %49 = phi i32 [ %3, %31 ], [ %47, %43 ]
  %50 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !655
  %52 = call fastcc ptr @shortcut_cond_r(ptr noundef %51, ptr noundef nonnull %33, ptr noundef %2, i32 noundef %49) #20
  call void @append_to_statement_list(ptr noundef %52, ptr noundef nonnull %6) #20
  br label %86

53:                                               ; preds = %4
  %54 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @tree_code_type, i64 0, i64 56), align 4, !tbaa !710
  %55 = add i32 %54, -4
  %56 = icmp ult i32 %55, 7
  br i1 %56, label %57, label %68, !prof !1340

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %59 = load i32, ptr %58, align 8, !tbaa !655
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %68, label %61, !prof !1341

61:                                               ; preds = %57
  %62 = and i64 %7, 65535
  %63 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !710
  %65 = add i32 %64, -4
  %66 = icmp ult i32 %65, 7
  %67 = select i1 %66, i32 %59, i32 0, !prof !1340
  br label %68

68:                                               ; preds = %61, %57, %53
  %69 = phi i32 [ %3, %53 ], [ %3, %57 ], [ %67, %61 ]
  %70 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !666
  %71 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !655
  %73 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !655
  %75 = tail call fastcc ptr @shortcut_cond_r(ptr noundef %74, ptr noundef %1, ptr noundef %2, i32 noundef %3) #20
  %76 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !655
  %78 = tail call fastcc ptr @shortcut_cond_r(ptr noundef %77, ptr noundef %1, ptr noundef %2, i32 noundef %69) #20
  %79 = tail call ptr @build3_stat(i32 noundef 56, ptr noundef %70, ptr noundef %72, ptr noundef %75, ptr noundef %78) #21
  store ptr %79, ptr %6, align 8, !tbaa !666
  br label %86

80:                                               ; preds = %4
  %81 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !666
  %82 = tail call ptr @build_and_jump(ptr noundef %1) #20
  %83 = tail call ptr @build_and_jump(ptr noundef %2) #20
  %84 = tail call ptr @build3_stat(i32 noundef 56, ptr noundef %81, ptr noundef nonnull %0, ptr noundef %82, ptr noundef %83) #21
  store ptr %84, ptr %6, align 8, !tbaa !666
  %85 = getelementptr inbounds %struct.tree_exp, ptr %84, i64 0, i32 1
  store i32 %3, ptr %85, align 8, !tbaa !655
  br label %86

86:                                               ; preds = %48, %80, %68, %26
  %87 = load ptr, ptr %5, align 8, !tbaa !666
  %88 = icmp eq ptr %87, null
  br i1 %88, label %92, label %89, !prof !1342

89:                                               ; preds = %86
  %90 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !666
  %91 = call ptr @build1_stat(i32 noundef 133, ptr noundef %90, ptr noundef nonnull %87) #21
  call void @append_to_statement_list(ptr noundef %91, ptr noundef nonnull %6) #20
  br label %92

92:                                               ; preds = %89, %86
  %93 = load ptr, ptr %6, align 8, !tbaa !666
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  ret ptr %93
}

; Function Attrs: optsize
declare ptr @expr_last(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @block_may_fallthru(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_set_plf(ptr nocapture noundef %0) unnamed_addr #17 !prof !1328 !PGOFuncName !1343 {
  %2 = load i32, ptr %0, align 8
  %3 = or i32 %2, 2048
  store i32 %3, ptr %0, align 8
  ret void
}

; Function Attrs: optsize
declare ptr @fold_call_expr(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @build_empty_stmt(i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @fold_builtin_next_arg(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @build_call_array_loc(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @tree_block(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gimplify_arg(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 !prof !1344 !PGOFuncName !1345 {
  %4 = load ptr, ptr %0, align 8, !tbaa !666
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !655
  %7 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %6) #21
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr @is_gimple_lvalue, ptr @is_gimple_val, !prof !1346
  %10 = select i1 %8, i32 3, i32 1, !prof !1346
  tail call fastcc void @maybe_with_size_expr(ptr noundef nonnull %0) #20
  %11 = load ptr, ptr %0, align 8, !tbaa !666
  tail call void @protected_set_expr_location(ptr noundef %11, i32 noundef %2) #21
  %12 = tail call i32 @gimplify_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %9, i32 noundef %10) #20
  ret i32 %12
}

; Function Attrs: optsize
declare i32 @call_expr_flags(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gimple_build_call_from_tree(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @maybe_with_size_expr(ptr nocapture noundef %0) unnamed_addr #4 !prof !1347 !PGOFuncName !1348 {
  %2 = load ptr, ptr %0, align 8, !tbaa !666
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !655
  %5 = load i64, ptr %2, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 150
  %8 = load ptr, ptr @global_trees, align 16
  %9 = icmp eq ptr %4, %8
  %10 = select i1 %7, i1 true, i1 %9
  br i1 %10, label %31, label %11, !prof !1349

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !655
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15, !prof !1350

15:                                               ; preds = %11
  %16 = load i64, ptr %13, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 23
  br i1 %18, label %31, label %19, !prof !1351

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
  store ptr %30, ptr %0, align 8, !tbaa !666
  br label %31

31:                                               ; preds = %11, %15, %1, %28
  ret void
}

; Function Attrs: optsize
declare void @protected_set_expr_location(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @substitute_placeholder_in_expr(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @needs_to_live_in_memory(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimplify_modify_expr_rhs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5) unnamed_addr #4 !prof !1352 !PGOFuncName !1353 {
  %7 = alloca ptr, align 8
  br label %8

8:                                                ; preds = %32, %6
  %9 = load ptr, ptr %1, align 8, !tbaa !666
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
  ], !prof !1354

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !655
  %15 = icmp ne ptr %14, null
  %16 = and i64 %10, 1572864
  %17 = icmp eq i64 %16, 1048576
  %18 = and i1 %17, %15
  br i1 %18, label %19, label %195, !prof !1355

19:                                               ; preds = %12
  %20 = load ptr, ptr %2, align 8, !tbaa !666
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 524288
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %195, !prof !1356

24:                                               ; preds = %19
  %25 = load i64, ptr %14, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 51
  br i1 %27, label %28, label %195, !prof !1357

28:                                               ; preds = %24
  %29 = tail call ptr @unshare_expr(ptr noundef nonnull %14) #20
  store ptr %29, ptr %1, align 8, !tbaa !666
  %30 = tail call fastcc i32 @gimplify_init_constructor(ptr noundef %0, ptr noundef null, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 1) #20
  %31 = icmp eq i32 %30, -2
  br i1 %31, label %33, label %32, !prof !1358

32:                                               ; preds = %28, %50, %39, %51
  br label %8, !llvm.loop !1359

33:                                               ; preds = %28
  store ptr %9, ptr %1, align 8, !tbaa !666
  br label %195

34:                                               ; preds = %8
  %35 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !655
  %37 = tail call fastcc ptr @gimple_fold_indirect_ref_rhs(ptr noundef %36) #20
  %38 = icmp eq ptr %37, null
  br i1 %38, label %195, label %39, !prof !1360

39:                                               ; preds = %34
  store ptr %37, ptr %1, align 8, !tbaa !666
  br label %32

40:                                               ; preds = %8
  %41 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !655
  %43 = icmp eq ptr %42, null
  br i1 %43, label %195, label %44, !prof !1361

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !655
  %47 = load i64, ptr %46, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 19
  br i1 %49, label %195, label %50, !prof !1362

50:                                               ; preds = %44
  store ptr %42, ptr %1, align 8, !tbaa !666
  br label %32

51:                                               ; preds = %8
  %52 = tail call fastcc i32 @gimplify_compound_expr(ptr noundef nonnull %1, ptr noundef %3, i8 noundef zeroext 1) #20, !range !771
  br label %32

53:                                               ; preds = %8
  %54 = tail call fastcc i32 @gimplify_init_constructor(ptr noundef %0, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, i8 noundef zeroext 0) #20
  br label %195

55:                                               ; preds = %8
  %56 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !655
  %58 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %57) #21
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %195, !prof !1363

60:                                               ; preds = %55
  %61 = load ptr, ptr %0, align 8, !tbaa !666
  %62 = load i64, ptr %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = and i32 %63, 65535
  %65 = load ptr, ptr %1, align 8, !tbaa !666
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  %66 = load ptr, ptr %2, align 8, !tbaa !666
  store ptr %66, ptr %7, align 8, !tbaa !666
  %67 = call i32 @gimplify_expr(ptr noundef nonnull %7, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @is_gimple_lvalue, i32 noundef 2) #20
  %68 = icmp eq i32 %67, -2
  %69 = select i1 %68, i32 -2, i32 0, !prof !1364
  %70 = getelementptr inbounds %struct.tree_exp, ptr %65, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !655
  %72 = getelementptr inbounds %struct.tree_common, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !655
  %74 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !666
  %75 = icmp eq ptr %73, %74
  br i1 %75, label %80, label %76, !prof !1364

76:                                               ; preds = %60
  %77 = load ptr, ptr %7, align 8, !tbaa !666
  %78 = call ptr @build2_stat(i32 noundef %64, ptr noundef %74, ptr noundef %77, ptr noundef nonnull %71) #21
  store ptr %78, ptr %70, align 8, !tbaa !655
  %79 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !666
  br label %80

80:                                               ; preds = %76, %60
  %81 = phi ptr [ %79, %76 ], [ %73, %60 ]
  %82 = getelementptr inbounds %struct.tree_exp, ptr %65, i64 1, i32 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !655
  %84 = getelementptr inbounds %struct.tree_common, ptr %83, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !655
  %86 = icmp eq ptr %85, %81
  br i1 %86, label %93, label %87, !prof !1364

87:                                               ; preds = %80
  %88 = load ptr, ptr %7, align 8, !tbaa !666
  %89 = call ptr @unshare_expr(ptr noundef %88) #20
  %90 = load ptr, ptr %82, align 8, !tbaa !655
  %91 = call ptr @build2_stat(i32 noundef %64, ptr noundef %81, ptr noundef %89, ptr noundef %90) #21
  store ptr %91, ptr %82, align 8, !tbaa !655
  %92 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !666
  br label %93

93:                                               ; preds = %87, %80
  %94 = phi ptr [ %92, %87 ], [ %81, %80 ]
  %95 = getelementptr inbounds %struct.tree_common, ptr %65, i64 0, i32 2
  store ptr %94, ptr %95, align 8, !tbaa !655
  call void @recalculate_side_effects(ptr noundef nonnull %65) #21
  %96 = icmp eq i8 %5, 0
  br i1 %96, label %100, label %97, !prof !1365

97:                                               ; preds = %93
  call void @gimplify_and_add(ptr noundef nonnull %65, ptr noundef %3) #20
  %98 = load ptr, ptr %7, align 8, !tbaa !666
  %99 = call ptr @unshare_expr(ptr noundef %98) #20
  br label %100

100:                                              ; preds = %93, %97
  %101 = phi ptr [ %99, %97 ], [ %65, %93 ]
  store ptr %101, ptr %0, align 8, !tbaa !666
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  br label %195

102:                                              ; preds = %8
  %103 = and i64 %10, 268435456
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %195, !prof !1366

105:                                              ; preds = %102
  %106 = tail call i32 @aggregate_value_p(ptr noundef nonnull %9, ptr noundef nonnull %9) #21
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %195, label %108, !prof !1367

108:                                              ; preds = %105
  %109 = load ptr, ptr %2, align 8, !tbaa !666
  %110 = tail call ptr @rhs_predicate_for(ptr noundef %109) #20
  %111 = load ptr, ptr %1, align 8, !tbaa !666
  %112 = tail call zeroext i8 %110(ptr noundef %111) #21, !callees !1368
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %195, label %114, !prof !1369

114:                                              ; preds = %108
  %115 = load ptr, ptr %2, align 8, !tbaa !666
  %116 = load i64, ptr %115, align 8
  %117 = and i64 %116, 65535
  %118 = icmp eq i64 %117, 36
  br i1 %118, label %119, label %128, !prof !1370

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.tree_decl_minimal, ptr %115, i64 0, i32 3
  %121 = load ptr, ptr %120, align 8, !tbaa !655
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %128, !prof !1231

123:                                              ; preds = %119
  %124 = tail call zeroext i8 @needs_to_live_in_memory(ptr noundef nonnull %115) #21
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %154, !prof !1371

126:                                              ; preds = %123
  %127 = load ptr, ptr %2, align 8, !tbaa !666
  br label %128

128:                                              ; preds = %126, %119, %114
  %129 = phi ptr [ %127, %126 ], [ %115, %119 ], [ %115, %114 ]
  %130 = getelementptr inbounds %struct.tree_common, ptr %129, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !655
  %132 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %131) #21
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %195, !prof !1372

134:                                              ; preds = %128
  %135 = load ptr, ptr %2, align 8, !tbaa !666
  %136 = load i64, ptr %135, align 8
  %137 = and i64 %136, 65535
  %138 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %137
  %139 = load i32, ptr %138, align 4, !tbaa !710
  %140 = icmp eq i32 %139, 3
  br i1 %140, label %141, label %146, !prof !1373

141:                                              ; preds = %134
  %142 = getelementptr inbounds %struct.tree_decl_common, ptr %135, i64 0, i32 2
  %143 = load i64, ptr %142, align 8
  %144 = and i64 %143, 16777216
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %195, !prof !1374

146:                                              ; preds = %141, %134
  %147 = load ptr, ptr %0, align 8, !tbaa !666
  %148 = load i64, ptr %147, align 8
  %149 = and i64 %148, 65535
  %150 = icmp eq i64 %149, 54
  br i1 %150, label %154, label %151, !prof !1375

151:                                              ; preds = %146
  %152 = tail call zeroext i8 @is_gimple_non_addressable(ptr noundef nonnull %135) #21
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %195, label %154, !prof !1376

154:                                              ; preds = %123, %146, %151
  %155 = load ptr, ptr %1, align 8, !tbaa !666
  %156 = load i64, ptr %155, align 8
  %157 = or i64 %156, 268435456
  store i64 %157, ptr %155, align 8
  %158 = load ptr, ptr %2, align 8, !tbaa !666
  tail call void @mark_addressable(ptr noundef %158) #20
  br label %195

159:                                              ; preds = %8, %8, %8
  %160 = tail call i32 @gimplify_expr(ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull @is_gimple_min_lval, i32 noundef 2) #20
  %161 = load ptr, ptr %0, align 8, !tbaa !666
  %162 = tail call ptr @voidify_wrapper_expr(ptr noundef nonnull %9, ptr noundef %161) #20
  %163 = load ptr, ptr %0, align 8, !tbaa !666
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
  %169 = load ptr, ptr %2, align 8, !tbaa !666
  %170 = tail call ptr @unshare_expr(ptr noundef %169) #20
  br label %171

171:                                              ; preds = %166, %168
  %172 = phi ptr [ %170, %168 ], [ %9, %166 ]
  store ptr %172, ptr %0, align 8, !tbaa !666
  br label %195

173:                                              ; preds = %8
  %174 = load ptr, ptr %0, align 8, !tbaa !666
  %175 = getelementptr inbounds %struct.tree_exp, ptr %174, i64 1
  %176 = load ptr, ptr %175, align 8, !tbaa !655
  %177 = load i64, ptr %176, align 8
  %178 = and i64 %177, 262144
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %195

180:                                              ; preds = %173
  %181 = getelementptr inbounds %struct.tree_exp, ptr %176, i64 0, i32 3
  %182 = load ptr, ptr %181, align 8, !tbaa !655
  %183 = getelementptr inbounds %struct.tree_exp, ptr %182, i64 0, i32 3
  %184 = load ptr, ptr %183, align 8, !tbaa !655
  %185 = getelementptr inbounds %struct.tree_decl_common, ptr %184, i64 0, i32 5
  %186 = load ptr, ptr %185, align 8, !tbaa !655
  %187 = load i64, ptr %184, align 8
  %188 = and i64 %187, 262144
  %189 = icmp eq i64 %188, 0
  %190 = icmp ne ptr %186, null
  %191 = select i1 %189, i1 %190, i1 false
  br i1 %191, label %192, label %195

192:                                              ; preds = %180
  %193 = tail call ptr @copy_node_stat(ptr noundef nonnull %174) #21
  store ptr %193, ptr %0, align 8, !tbaa !666
  %194 = getelementptr inbounds %struct.tree_exp, ptr %193, i64 1
  store ptr %186, ptr %194, align 8, !tbaa !655
  br label %195

195:                                              ; preds = %12, %19, %24, %8, %40, %44, %34, %33, %173, %180, %102, %105, %108, %141, %128, %154, %151, %55, %192, %171, %100, %53
  %196 = phi i32 [ 0, %171 ], [ %69, %100 ], [ %54, %53 ], [ 0, %192 ], [ -1, %55 ], [ -1, %151 ], [ -1, %154 ], [ -1, %128 ], [ -1, %141 ], [ -1, %108 ], [ -1, %105 ], [ -1, %102 ], [ -1, %180 ], [ -1, %173 ], [ -1, %33 ], [ -1, %34 ], [ -1, %44 ], [ -1, %40 ], [ -1, %8 ], [ -1, %24 ], [ -1, %19 ], [ -1, %12 ]
  ret i32 %196
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @zero_sized_type(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1377 !PGOFuncName !1378 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = and i32 %3, 65535
  %5 = add nsw i32 %4, -15
  %6 = icmp ult i32 %5, 4
  br i1 %6, label %7, label %14, !prof !1379

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !655
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11, !prof !1380

11:                                               ; preds = %7
  %12 = tail call i32 @integer_zerop(ptr noundef nonnull %9) #21
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15, !prof !1381

14:                                               ; preds = %1, %11, %7
  br label %15

15:                                               ; preds = %11, %14
  %16 = phi i8 [ 0, %14 ], [ 1, %11 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_modify_expr_to_memset(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 !prof !688 !PGOFuncName !1382 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  %6 = load ptr, ptr %0, align 8, !tbaa !666
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !710
  %11 = add i32 %10, -4
  %12 = icmp ult i32 %11, 7
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !655
  br label %16

16:                                               ; preds = %4, %13
  %17 = phi i32 [ %15, %13 ], [ 0, %4 ]
  %18 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !655
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 150
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.tree_exp, ptr %19, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !655
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
  %34 = load ptr, ptr %33, align 8, !tbaa !655
  %35 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %34) #20
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32, %27
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3168, ptr noundef nonnull @.str.1) #21
  %38 = load ptr, ptr %0, align 8, !tbaa !666
  br label %39

39:                                               ; preds = %32, %37
  %40 = phi ptr [ %6, %32 ], [ %38, %37 ]
  %41 = getelementptr inbounds %struct.tree_exp, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !655
  %43 = tail call ptr @build_fold_addr_expr_loc(i32 noundef %17, ptr noundef %42) #21
  store ptr %43, ptr %5, align 8, !tbaa !666
  %44 = call fastcc i32 @gimplify_arg(ptr noundef nonnull %5, ptr noundef %3, i32 noundef %17) #20
  %45 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 333), align 8, !tbaa !666
  %46 = load ptr, ptr %5, align 8, !tbaa !666
  %47 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !666
  %48 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %45, i32 noundef 3, ptr noundef %46, ptr noundef %47, ptr noundef %1) #21
  %49 = icmp eq i8 %2, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %39
  %51 = load ptr, ptr %5, align 8, !tbaa !666
  %52 = getelementptr inbounds %struct.tree_common, ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !655
  %54 = call ptr @create_tmp_var(ptr noundef %53, ptr noundef null) #20
  call fastcc void @gimple_call_set_lhs(ptr noundef %48, ptr noundef %54) #20
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %3, ptr noundef %48) #20
  %55 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !655
  %57 = call ptr @build1_stat(i32 noundef 47, ptr noundef %56, ptr noundef %54) #21
  br label %59

58:                                               ; preds = %39
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %3, ptr noundef %48) #20
  br label %59

59:                                               ; preds = %58, %50
  %60 = phi ptr [ null, %58 ], [ %57, %50 ]
  store ptr %60, ptr %0, align 8, !tbaa !666
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_modify_expr_to_memcpy(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) unnamed_addr #4 !prof !688 !PGOFuncName !1383 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  %8 = load ptr, ptr %0, align 8, !tbaa !666
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !710
  %13 = add i32 %12, -4
  %14 = icmp ult i32 %13, 7
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !655
  br label %18

18:                                               ; preds = %4, %15
  %19 = phi i32 [ %17, %15 ], [ 0, %4 ]
  %20 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !655
  %22 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !655
  store ptr %23, ptr %6, align 8, !tbaa !666
  call fastcc void @prepare_gimple_addressable(ptr noundef nonnull %6, ptr noundef %3) #20
  %24 = load ptr, ptr %6, align 8, !tbaa !666
  tail call void @mark_addressable(ptr noundef %24) #20
  %25 = tail call ptr @build_fold_addr_expr_loc(i32 noundef %19, ptr noundef %24) #21
  store ptr %25, ptr %7, align 8, !tbaa !666
  %26 = call fastcc i32 @gimplify_arg(ptr noundef nonnull %7, ptr noundef %3, i32 noundef %19) #20
  call void @mark_addressable(ptr noundef %21) #20
  %27 = call ptr @build_fold_addr_expr_loc(i32 noundef %19, ptr noundef %21) #21
  store ptr %27, ptr %5, align 8, !tbaa !666
  %28 = call fastcc i32 @gimplify_arg(ptr noundef nonnull %5, ptr noundef %3, i32 noundef %19) #20
  %29 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 330), align 16, !tbaa !666
  %30 = load ptr, ptr %5, align 8, !tbaa !666
  %31 = load ptr, ptr %7, align 8, !tbaa !666
  %32 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %29, i32 noundef 3, ptr noundef %30, ptr noundef %31, ptr noundef %1) #21
  %33 = icmp eq i8 %2, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %18
  %35 = load ptr, ptr %5, align 8, !tbaa !666
  %36 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !655
  %38 = call ptr @create_tmp_var(ptr noundef %37, ptr noundef null) #20
  call fastcc void @gimple_call_set_lhs(ptr noundef %32, ptr noundef %38) #20
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %3, ptr noundef %32) #20
  %39 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !655
  %41 = call ptr @build1_stat(i32 noundef 47, ptr noundef %40, ptr noundef %38) #21
  br label %43

42:                                               ; preds = %18
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %3, ptr noundef %32) #20
  br label %43

43:                                               ; preds = %42, %34
  %44 = phi ptr [ null, %42 ], [ %41, %34 ]
  store ptr %44, ptr %0, align 8, !tbaa !666
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_modify_expr_complex_part(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #4 !prof !688 !PGOFuncName !1384 {
  %4 = load ptr, ptr %0, align 8, !tbaa !666
  %5 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !655
  %7 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !655
  %9 = load i64, ptr %6, align 8
  %10 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !655
  %12 = and i64 %9, 65535
  %13 = icmp eq i64 %12, 43
  %14 = select i1 %13, i32 44, i32 43
  %15 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !655
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
  %30 = load ptr, ptr %29, align 8, !tbaa !655
  %31 = tail call ptr @build_complex(ptr noundef %30, ptr noundef nonnull %19, ptr noundef nonnull %20) #21
  br label %36

32:                                               ; preds = %24, %3
  %33 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !655
  %35 = tail call ptr @build2_stat(i32 noundef 123, ptr noundef %34, ptr noundef nonnull %19, ptr noundef %20) #21
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi ptr [ %31, %28 ], [ %35, %32 ]
  %38 = tail call ptr @gimple_build_assign_stat(ptr noundef nonnull %11, ptr noundef %37) #21
  tail call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %38) #20
  %39 = icmp eq i8 %2, 0
  %40 = select i1 %39, ptr null, ptr %8
  store ptr %40, ptr %0, align 8, !tbaa !666
  ret void
}

; Function Attrs: optsize
declare void @decl_debug_expr_insert(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_call_noreturn_p(ptr noundef %0) unnamed_addr #4 !prof !1385 !PGOFuncName !1386 {
  %2 = tail call i32 @gimple_call_flags(ptr noundef %0) #21
  %3 = trunc i32 %2 to i8
  %4 = lshr i8 %3, 3
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #4 !prof !1387 !PGOFuncName !1388 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #20
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4, !prof !1389

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10, !prof !1389

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !655
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #4 !prof !1390 !PGOFuncName !1391 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !666
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #21
  ret ptr %4
}

; Function Attrs: optsize
declare void @gimple_set_lhs(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @gimplify_init_constructor(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #4 !prof !1392 !PGOFuncName !1393 {
  %6 = alloca %struct.gimplify_init_ctor_preeval_data, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca ptr, align 8
  %11 = load ptr, ptr %0, align 8, !tbaa !666
  %12 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !655
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 51
  br i1 %16, label %19, label %17, !prof !1394

17:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3616, ptr noundef nonnull @.str.1) #21
  %18 = load ptr, ptr %0, align 8, !tbaa !666
  br label %19

19:                                               ; preds = %5, %17
  %20 = phi ptr [ %11, %5 ], [ %18, %17 ]
  %21 = icmp ne i8 %4, 0
  br i1 %21, label %28, label %22, !prof !1395

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.tree_exp, ptr %20, i64 0, i32 3
  %24 = tail call i32 @gimplify_expr(ptr noundef nonnull %23, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_lvalue, i32 noundef 2) #20
  %25 = icmp eq i32 %24, -2
  br i1 %25, label %349, label %26, !prof !1396

26:                                               ; preds = %22
  %27 = load ptr, ptr %0, align 8, !tbaa !666
  br label %28

28:                                               ; preds = %26, %19
  %29 = phi ptr [ %27, %26 ], [ %20, %19 ]
  %30 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !655
  %32 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !655
  %34 = tail call fastcc ptr @optimize_compound_literals_in_ctor(ptr noundef %33) #20
  %35 = load ptr, ptr %0, align 8, !tbaa !666
  %36 = getelementptr inbounds %struct.tree_exp, ptr %35, i64 1
  store ptr %34, ptr %36, align 8, !tbaa !655
  %37 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !655
  %39 = getelementptr inbounds %struct.tree_constructor, ptr %34, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !655
  %41 = load i64, ptr %38, align 8
  %42 = trunc i64 %41 to i16
  switch i16 %42, label %332 [
    i16 16, label %43
    i16 17, label %43
    i16 18, label %43
    i16 15, label %43
    i16 13, label %224
    i16 14, label %270
  ], !prof !1397

43:                                               ; preds = %28, %28, %28, %28
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #22
  %44 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %40) #20
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47, !prof !1398

46:                                               ; preds = %43
  br i1 %21, label %218, label %222

47:                                               ; preds = %43
  %48 = call zeroext i8 @categorize_ctor_elements(ptr noundef nonnull %34, ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %9) #21
  %49 = icmp ne i8 %48, 0
  %50 = load i64, ptr %8, align 8
  %51 = icmp sgt i64 %50, 1
  %52 = select i1 %49, i1 %51, i1 false
  br i1 %52, label %53, label %74, !prof !1399

53:                                               ; preds = %47
  %54 = load i64, ptr %31, align 8
  %55 = and i64 %54, 1114111
  %56 = icmp eq i64 %55, 1048608
  br i1 %56, label %57, label %74, !prof !1400

57:                                               ; preds = %53
  %58 = load i32, ptr @flag_merge_constants, align 4, !tbaa !710
  %59 = icmp sgt i32 %58, 1
  %60 = and i64 %54, 262144
  %61 = icmp eq i64 %60, 0
  %62 = or i1 %61, %59
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  br i1 %21, label %218, label %64

64:                                               ; preds = %63
  %65 = getelementptr inbounds %struct.tree_decl_common, ptr %31, i64 0, i32 5
  store ptr %34, ptr %65, align 8, !tbaa !655
  %66 = or i64 %54, 67108864
  store i64 %66, ptr %31, align 8
  %67 = getelementptr inbounds %struct.tree_decl_minimal, ptr %31, i64 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !655
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = call ptr @create_tmp_var_name(ptr noundef nonnull @.str.11) #20
  store ptr %71, ptr %67, align 8, !tbaa !655
  br label %72

72:                                               ; preds = %70, %64
  %73 = call ptr @walk_tree_1(ptr noundef nonnull %65, ptr noundef nonnull @force_labels_r, ptr noundef null, ptr noundef null, ptr noundef null) #21
  call void @lhd_set_decl_assembler_name(ptr noundef nonnull %31) #21
  br label %220

74:                                               ; preds = %57, %53, %47
  %75 = call i64 @count_type_elements(ptr noundef nonnull %38, i8 noundef zeroext 1) #21
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %81, !prof !1398

77:                                               ; preds = %74
  %78 = call i64 @int_size_in_bytes(ptr noundef nonnull %38) #21
  %79 = icmp sgt i64 %78, -1
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i8 1, ptr %9, align 1, !tbaa !655
  br label %162

81:                                               ; preds = %77, %74
  %82 = load i64, ptr %8, align 8, !tbaa !708
  %83 = sub nsw i64 %75, %82
  %84 = load ptr, ptr @cfun, align 8, !tbaa !666
  %85 = call zeroext i8 @optimize_function_for_speed_p(ptr noundef %84) #21
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %92, label %87, !prof !1398

87:                                               ; preds = %81
  %88 = load ptr, ptr @ix86_cost, align 8, !tbaa !666
  %89 = getelementptr inbounds %struct.processor_costs, ptr %88, i64 0, i32 10
  %90 = load i32, ptr %89, align 4, !tbaa !1401
  %91 = call i32 @llvm.smin.i32(i32 %90, i32 6)
  br label %92

92:                                               ; preds = %87, %81
  %93 = phi i32 [ 2, %81 ], [ %91, %87 ]
  %94 = sext i32 %93 to i64
  %95 = icmp sgt i64 %83, %94
  br i1 %95, label %96, label %101, !prof !1403

96:                                               ; preds = %92
  %97 = load i64, ptr %8, align 8, !tbaa !708
  %98 = sdiv i64 %75, 4
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %100, label %101, !prof !1404

100:                                              ; preds = %96
  store i8 1, ptr %9, align 1, !tbaa !655
  br label %162

101:                                              ; preds = %96, %92
  %102 = load i64, ptr %7, align 8, !tbaa !708
  %103 = icmp slt i64 %102, %75
  br i1 %103, label %104, label %105, !prof !1398

104:                                              ; preds = %101
  store i8 1, ptr %9, align 1, !tbaa !655
  br label %162

105:                                              ; preds = %101
  %106 = load i8, ptr %9, align 1
  %107 = icmp ne i8 %106, 0
  %108 = icmp eq i8 %48, 0
  %109 = select i1 %108, i1 true, i1 %107
  %110 = load i64, ptr %8, align 8
  %111 = icmp eq i64 %110, 0
  %112 = select i1 %109, i1 true, i1 %111
  br i1 %112, label %162, label %113, !prof !1405

113:                                              ; preds = %105
  %114 = load i64, ptr %38, align 8
  %115 = and i64 %114, 262144
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %162, !prof !1406

117:                                              ; preds = %113
  %118 = call i64 @int_size_in_bytes(ptr noundef nonnull %38) #21
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %127, !prof !1407

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !655
  %123 = call i64 @int_size_in_bytes(ptr noundef %122) #21
  %124 = icmp sgt i64 %123, -1
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load ptr, ptr %121, align 8, !tbaa !655
  store ptr %126, ptr %37, align 8, !tbaa !655
  br label %127

127:                                              ; preds = %120, %125, %117
  %128 = phi i64 [ %123, %125 ], [ %123, %120 ], [ %118, %117 ]
  %129 = phi ptr [ %126, %125 ], [ %38, %120 ], [ %38, %117 ]
  %130 = load i64, ptr %31, align 8
  %131 = and i64 %130, 65535
  %132 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %131
  %133 = load i32, ptr %132, align 4, !tbaa !710
  %134 = icmp eq i32 %133, 3
  %135 = getelementptr inbounds %struct.tree_decl_common, ptr %31, i64 0, i32 3
  %136 = getelementptr inbounds %struct.tree_type, ptr %129, i64 0, i32 7
  %137 = select i1 %134, ptr %135, ptr %136, !prof !1406
  %138 = load i32, ptr %137, align 8, !tbaa !655
  %139 = icmp sgt i64 %128, 0
  %140 = load i64, ptr %8, align 8
  %141 = icmp sgt i64 %140, 1
  %142 = select i1 %139, i1 %141, i1 false
  br i1 %142, label %143, label %162, !prof !1408

143:                                              ; preds = %127
  %144 = call i32 @can_move_by_pieces(i64 noundef %128, i32 noundef %138) #21
  %145 = icmp ne i32 %144, 0
  %146 = or i1 %21, %145
  br i1 %146, label %161, label %147, !prof !1409

147:                                              ; preds = %143
  %148 = call ptr @create_tmp_var_raw(ptr noundef %129, ptr noundef nonnull @.str.11) #20
  call void @gimple_add_tmp_var(ptr noundef %148) #20
  %149 = load i64, ptr %148, align 8
  %150 = or i64 %149, 68157440
  store i64 %150, ptr %148, align 8
  %151 = getelementptr inbounds %struct.tree_decl_common, ptr %148, i64 0, i32 5
  store ptr %34, ptr %151, align 8, !tbaa !655
  %152 = getelementptr inbounds %struct.tree_decl_common, ptr %148, i64 0, i32 3
  %153 = load i32, ptr %152, align 8, !tbaa !655
  %154 = icmp ugt i32 %138, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %147
  store i32 %138, ptr %152, align 8, !tbaa !655
  %156 = or i64 %149, 4398114668544
  store i64 %156, ptr %148, align 8
  br label %157

157:                                              ; preds = %147, %155
  %158 = call ptr @walk_tree_1(ptr noundef nonnull %151, ptr noundef nonnull @force_labels_r, ptr noundef null, ptr noundef null, ptr noundef null) #21
  %159 = load ptr, ptr %0, align 8, !tbaa !666
  %160 = getelementptr inbounds %struct.tree_exp, ptr %159, i64 1
  store ptr %148, ptr %160, align 8, !tbaa !655
  br label %218

161:                                              ; preds = %143
  br i1 %145, label %162, label %218

162:                                              ; preds = %80, %104, %100, %127, %161, %113, %105
  %163 = phi ptr [ %38, %105 ], [ %38, %113 ], [ %129, %161 ], [ %129, %127 ], [ %38, %100 ], [ %38, %104 ], [ %38, %80 ]
  %164 = load i64, ptr %31, align 8
  %165 = and i64 %164, 524288
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %186, label %167, !prof !1394

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
  %176 = load ptr, ptr %175, align 8, !tbaa !655
  %177 = call ptr @create_tmp_var(ptr noundef %176, ptr noundef null) #20
  %178 = load ptr, ptr %0, align 8, !tbaa !666
  %179 = getelementptr inbounds %struct.tree_exp, ptr %178, i64 0, i32 3
  store ptr %177, ptr %179, align 8, !tbaa !655
  %180 = load ptr, ptr %0, align 8, !tbaa !666
  %181 = getelementptr inbounds %struct.tree_common, ptr %180, i64 0, i32 2
  %182 = load ptr, ptr %181, align 8, !tbaa !655
  %183 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !666
  %184 = call ptr @build2_stat(i32 noundef 53, ptr noundef %183, ptr noundef nonnull %31, ptr noundef %177) #21
  %185 = call ptr @build2_stat(i32 noundef 52, ptr noundef %182, ptr noundef %180, ptr noundef %184) #21
  store ptr %185, ptr %0, align 8, !tbaa !666
  br label %218

186:                                              ; preds = %167, %162
  br i1 %21, label %218, label %187, !prof !1395

187:                                              ; preds = %186
  %188 = load i64, ptr %8, align 8, !tbaa !708
  %189 = icmp sgt i64 %188, 0
  br i1 %189, label %190, label %202, !prof !1410

190:                                              ; preds = %187
  %191 = call ptr @get_base_address(ptr noundef nonnull %31) #21
  %192 = load i64, ptr %191, align 8
  %193 = and i64 %192, 65535
  %194 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %193
  %195 = load i32, ptr %194, align 4, !tbaa !710
  %196 = icmp eq i32 %195, 3
  %197 = select i1 %196, ptr %191, ptr null, !prof !1411
  store ptr %197, ptr %6, align 8
  %198 = call i32 @get_alias_set(ptr noundef nonnull %31) #21
  %199 = getelementptr inbounds %struct.gimplify_init_ctor_preeval_data, ptr %6, i64 0, i32 1
  store i32 %198, ptr %199, align 8, !tbaa !1412
  %200 = load ptr, ptr %0, align 8, !tbaa !666
  %201 = getelementptr inbounds %struct.tree_exp, ptr %200, i64 1
  call fastcc void @gimplify_init_ctor_preeval(ptr noundef nonnull %201, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %6) #20
  br label %202

202:                                              ; preds = %190, %187
  %203 = load i8, ptr %9, align 1, !tbaa !655
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %215, label %205, !prof !1414

205:                                              ; preds = %202
  store ptr null, ptr %39, align 8, !tbaa !655
  %206 = load i64, ptr %34, align 8
  %207 = and i64 %206, -65537
  store i64 %207, ptr %34, align 8
  %208 = call ptr @unshare_expr(ptr noundef nonnull %31) #20
  %209 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %0, ptr noundef %1) #20, !range !653
  %210 = load i8, ptr %9, align 1, !tbaa !655
  %211 = icmp eq i8 %210, 0
  %212 = load i64, ptr %8, align 8
  %213 = icmp sgt i64 %212, 0
  %214 = select i1 %211, i1 true, i1 %213
  br i1 %214, label %215, label %220, !prof !1415

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
  store ptr null, ptr %0, align 8, !tbaa !666
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
  %232 = load ptr, ptr %231, align 8, !tbaa !781
  %233 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %40, i32 noundef 1) #20
  %234 = getelementptr inbounds %struct.constructor_elt_d, ptr %233, i64 0, i32 1
  %235 = load ptr, ptr %234, align 8, !tbaa !781
  %236 = icmp eq ptr %232, null
  %237 = icmp eq ptr %235, null
  %238 = select i1 %236, i1 true, i1 %237
  br i1 %238, label %239, label %246

239:                                              ; preds = %229
  %240 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %241 = load ptr, ptr %240, align 8, !tbaa !655
  %242 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !666
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
  %258 = load ptr, ptr %0, align 8, !tbaa !666
  %259 = getelementptr inbounds %struct.tree_exp, ptr %258, i64 1
  store ptr %257, ptr %259, align 8, !tbaa !655
  br label %336

260:                                              ; preds = %252, %246
  %261 = tail call ptr @build2_stat(i32 noundef 123, ptr noundef nonnull %38, ptr noundef nonnull %247, ptr noundef %248) #21
  %262 = load ptr, ptr %0, align 8, !tbaa !666
  %263 = getelementptr inbounds %struct.tree_exp, ptr %262, i64 1
  store ptr %261, ptr %263, align 8, !tbaa !655
  %264 = load ptr, ptr %0, align 8, !tbaa !666
  %265 = getelementptr inbounds %struct.tree_exp, ptr %264, i64 0, i32 3
  %266 = getelementptr inbounds %struct.tree_exp, ptr %264, i64 1
  %267 = load ptr, ptr %265, align 8, !tbaa !655
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
  br i1 %281, label %293, label %282, !llvm.loop !1416

282:                                              ; preds = %275, %279
  %283 = phi i64 [ %280, %279 ], [ 0, %275 ]
  %284 = trunc i64 %283 to i32
  %285 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %40, i32 noundef %284) #20
  %286 = getelementptr inbounds %struct.constructor_elt_d, ptr %285, i64 0, i32 1
  %287 = load ptr, ptr %286, align 8, !tbaa !781
  %288 = load i64, ptr %287, align 8
  %289 = and i64 %288, 65535
  %290 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %289
  %291 = load i32, ptr %290, align 4, !tbaa !710
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
  %302 = call fastcc i32 @VEC_constructor_elt_base_iterate(ptr noundef %40, i32 noundef 0, ptr noundef nonnull %10) #20, !range !771
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %315, label %304

304:                                              ; preds = %301, %304
  %305 = phi i32 [ %312, %304 ], [ 0, %301 ]
  %306 = phi i32 [ %311, %304 ], [ 1, %301 ]
  %307 = load ptr, ptr %10, align 8, !tbaa !666
  %308 = getelementptr inbounds %struct.constructor_elt_d, ptr %307, i64 0, i32 1
  %309 = tail call i32 @gimplify_expr(ptr noundef nonnull %308, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %310 = icmp eq i32 %309, -2
  %311 = select i1 %310, i32 -2, i32 %306
  %312 = add i32 %305, 1
  %313 = call fastcc i32 @VEC_constructor_elt_base_iterate(ptr noundef %40, i32 noundef %312, ptr noundef nonnull %10) #20, !range !771
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %315, label %304, !llvm.loop !1417

315:                                              ; preds = %304, %301
  %316 = phi i32 [ 1, %301 ], [ %311, %304 ]
  %317 = load ptr, ptr %0, align 8, !tbaa !666
  %318 = getelementptr inbounds %struct.tree_exp, ptr %317, i64 0, i32 3
  %319 = load ptr, ptr %318, align 8, !tbaa !655
  %320 = tail call zeroext i8 @is_gimple_reg(ptr noundef %319) #21
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %322, label %329

322:                                              ; preds = %315
  %323 = tail call ptr @get_formal_tmp_var(ptr noundef nonnull %34, ptr noundef %1) #20
  br label %324

324:                                              ; preds = %293, %322
  %325 = phi ptr [ %323, %322 ], [ %294, %293 ]
  %326 = phi i32 [ %316, %322 ], [ 1, %293 ]
  %327 = load ptr, ptr %0, align 8, !tbaa !666
  %328 = getelementptr inbounds %struct.tree_exp, ptr %327, i64 1
  store ptr %325, ptr %328, align 8, !tbaa !655
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
  br i1 %335, label %349, label %336, !prof !1418

336:                                              ; preds = %256, %222, %332, %333
  %337 = phi ptr [ %31, %333 ], [ %223, %222 ], [ %31, %332 ], [ %31, %256 ]
  %338 = icmp eq i8 %3, 0
  br i1 %338, label %340, label %339, !prof !1414

339:                                              ; preds = %336
  store ptr %337, ptr %0, align 8, !tbaa !666
  br label %349

340:                                              ; preds = %336
  %341 = load ptr, ptr %0, align 8, !tbaa !666
  %342 = icmp eq ptr %341, null
  br i1 %342, label %349, label %343, !prof !1414

343:                                              ; preds = %340
  %344 = getelementptr inbounds %struct.tree_exp, ptr %341, i64 0, i32 3
  %345 = load ptr, ptr %344, align 8, !tbaa !655
  %346 = getelementptr inbounds %struct.tree_exp, ptr %341, i64 1
  %347 = load ptr, ptr %346, align 8, !tbaa !655
  %348 = call ptr @gimple_build_assign_stat(ptr noundef %345, ptr noundef %347) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %1, ptr noundef %348) #20
  store ptr null, ptr %0, align 8, !tbaa !666
  br label %349

349:                                              ; preds = %331, %224, %218, %340, %343, %333, %22, %339
  %350 = phi i32 [ 0, %339 ], [ 0, %331 ], [ -2, %22 ], [ -2, %333 ], [ 1, %343 ], [ 1, %340 ], [ %219, %218 ], [ 0, %224 ]
  ret i32 %350
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_fold_indirect_ref_rhs(ptr noundef %0) unnamed_addr #4 !prof !1419 !PGOFuncName !1420 {
  %2 = tail call ptr @gimple_fold_indirect_ref(ptr noundef %0) #20
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @aggregate_value_p(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @is_gimple_non_addressable(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @optimize_compound_literals_in_ctor(ptr noundef %0) unnamed_addr #4 !prof !1392 !PGOFuncName !1421 {
  %2 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !655
  %4 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %3) #20
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %51, label %6, !prof !1422

6:                                                ; preds = %1, %46
  %7 = phi ptr [ %48, %46 ], [ %0, %1 ]
  %8 = phi ptr [ %47, %46 ], [ %3, %1 ]
  %9 = phi i32 [ %49, %46 ], [ 0, %1 ]
  %10 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %8, i32 noundef %9) #20
  %11 = getelementptr inbounds %struct.constructor_elt_d, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !781
  %13 = load i64, ptr %12, align 8
  %14 = trunc i64 %13 to i16
  switch i16 %14, label %46 [
    i16 51, label %30
    i16 119, label %15
  ], !prof !1423

15:                                               ; preds = %6
  %16 = and i64 %13, 262144
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !655
  %21 = getelementptr inbounds %struct.tree_exp, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !655
  %23 = getelementptr inbounds %struct.tree_decl_common, ptr %22, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !655
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
  br i1 %33, label %46, label %34, !prof !1424

34:                                               ; preds = %30
  %35 = icmp eq ptr %7, %0
  br i1 %35, label %36, label %41

36:                                               ; preds = %34
  %37 = tail call ptr @copy_node_stat(ptr noundef %0) #21
  %38 = tail call fastcc ptr @VEC_constructor_elt_gc_copy(ptr noundef %8) #20
  %39 = getelementptr inbounds %struct.tree_constructor, ptr %37, i64 0, i32 1
  store ptr %38, ptr %39, align 8, !tbaa !655
  %40 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %38, i32 noundef %9) #20
  br label %41

41:                                               ; preds = %36, %34
  %42 = phi ptr [ %40, %36 ], [ %10, %34 ]
  %43 = phi ptr [ %38, %36 ], [ %8, %34 ]
  %44 = phi ptr [ %37, %36 ], [ %7, %34 ]
  %45 = getelementptr inbounds %struct.constructor_elt_d, ptr %42, i64 0, i32 1
  store ptr %32, ptr %45, align 8, !tbaa !781
  br label %46

46:                                               ; preds = %18, %15, %6, %30, %41
  %47 = phi ptr [ %43, %41 ], [ %8, %30 ], [ %8, %6 ], [ %8, %15 ], [ %8, %18 ]
  %48 = phi ptr [ %44, %41 ], [ %7, %30 ], [ %7, %6 ], [ %7, %15 ], [ %7, %18 ]
  %49 = add nuw i32 %9, 1
  %50 = icmp eq i32 %49, %4
  br i1 %50, label %51, label %6, !prof !1425, !llvm.loop !1426

51:                                               ; preds = %46, %1
  %52 = phi ptr [ %0, %1 ], [ %48, %46 ]
  ret ptr %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_constructor_elt_base_length(ptr noundef readonly %0) unnamed_addr #1 !prof !1427 !PGOFuncName !1428 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1429

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1195
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
declare i32 @get_alias_set(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_init_ctor_preeval(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 !prof !1430 !PGOFuncName !1431 {
  %5 = alloca ptr, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !666
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 131072
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %14, label %10, !prof !1358

10:                                               ; preds = %4
  %11 = and i64 %7, 65536
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %61, label %13, !prof !1411

13:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3263, ptr noundef nonnull @.str.1) #21
  br label %61

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !655
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
  %25 = load ptr, ptr %24, align 8, !tbaa !655
  %26 = call fastcc i32 @VEC_constructor_elt_base_iterate(ptr noundef %25, i32 noundef 0, ptr noundef nonnull %5) #20, !range !771
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %23, %28
  %29 = phi i32 [ %32, %28 ], [ 0, %23 ]
  %30 = load ptr, ptr %5, align 8, !tbaa !666
  %31 = getelementptr inbounds %struct.constructor_elt_d, ptr %30, i64 0, i32 1
  tail call fastcc void @gimplify_init_ctor_preeval(ptr noundef nonnull %31, ptr noundef %1, ptr noundef %2, ptr noundef %3) #20
  %32 = add i32 %29, 1
  %33 = call fastcc i32 @VEC_constructor_elt_base_iterate(ptr noundef %25, i32 noundef %32, ptr noundef nonnull %5) #20, !range !771
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %28, !llvm.loop !1432

35:                                               ; preds = %28, %23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #22
  br label %61

36:                                               ; preds = %20
  tail call fastcc void @maybe_with_size_expr(ptr noundef nonnull %0) #20
  %37 = tail call i32 @gimplify_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @is_gimple_mem_rhs, i32 noundef 1) #20
  %38 = icmp eq i32 %37, -2
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store ptr null, ptr %0, align 8, !tbaa !666
  br label %61

40:                                               ; preds = %36
  %41 = load ptr, ptr %0, align 8, !tbaa !666
  %42 = load i64, ptr %41, align 8
  %43 = and i64 %42, 65535
  %44 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !710
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %61, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !655
  %50 = getelementptr inbounds %struct.tree_type, ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !655
  %52 = load i64, ptr %51, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 23
  br i1 %54, label %55, label %61

55:                                               ; preds = %47
  %56 = tail call ptr @walk_tree_1(ptr noundef nonnull %0, ptr noundef nonnull @gimplify_init_ctor_preeval_1, ptr noundef %3, ptr noundef null, ptr noundef null) #21
  %57 = icmp eq ptr %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %0, align 8, !tbaa !666
  %60 = tail call ptr @get_formal_tmp_var(ptr noundef %59, ptr noundef %1) #20
  store ptr %60, ptr %0, align 8, !tbaa !666
  br label %61

61:                                               ; preds = %55, %47, %40, %14, %13, %10, %58, %39, %35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_init_ctor_eval(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #4 !prof !1433 !PGOFuncName !1434 {
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !655
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 15
  br i1 %9, label %10, label %15, !prof !1435

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !655
  %13 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 16
  %14 = load ptr, ptr %13, align 8, !tbaa !655
  br label %15

15:                                               ; preds = %10, %4
  %16 = phi ptr [ %14, %10 ], [ null, %4 ]
  %17 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %1) #20
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %104, label %19, !prof !1436

19:                                               ; preds = %15
  %20 = icmp eq i8 %3, 0
  %21 = icmp eq ptr %16, null
  br label %22

22:                                               ; preds = %19, %99
  %23 = phi i64 [ 0, %19 ], [ %100, %99 ]
  %24 = trunc i64 %23 to i32
  %25 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %1, i32 noundef %24) #20
  %26 = getelementptr inbounds %struct.constructor_elt_d, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !781
  %28 = load ptr, ptr %25, align 8, !tbaa !1437
  %29 = icmp eq ptr %27, null
  br i1 %29, label %99, label %30, !prof !1438

30:                                               ; preds = %22
  br i1 %20, label %34, label %31, !prof !1439

31:                                               ; preds = %30
  %32 = tail call zeroext i8 @initializer_zerop(ptr noundef nonnull %27) #21
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %99

34:                                               ; preds = %31, %30
  %35 = icmp eq ptr %28, null
  br i1 %35, label %36, label %37, !prof !1438

36:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3447, ptr noundef nonnull @.str.1) #21
  br label %37

37:                                               ; preds = %34, %36
  %38 = load i64, ptr %27, align 8
  %39 = and i64 %38, 65536
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44, !prof !1439

41:                                               ; preds = %37
  %42 = tail call fastcc zeroext i8 @zero_sized_field_decl(ptr noundef %28) #20, !range !653
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %99, !prof !1439

44:                                               ; preds = %41, %37
  %45 = load i64, ptr %28, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 111
  br i1 %47, label %48, label %56, !prof !1438

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.tree_exp, ptr %28, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !655
  %51 = getelementptr inbounds %struct.tree_exp, ptr %28, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !655
  %53 = tail call i32 @simple_cst_equal(ptr noundef %50, ptr noundef %52) #21
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  tail call fastcc void @gimplify_init_ctor_eval_range(ptr noundef %0, ptr noundef %50, ptr noundef %52, ptr noundef nonnull %27, ptr noundef %16, ptr noundef %2, i8 noundef zeroext %3) #20
  br label %99

56:                                               ; preds = %48, %44
  %57 = phi ptr [ %28, %44 ], [ %52, %48 ]
  br i1 %21, label %71, label %58, !prof !1440

58:                                               ; preds = %56
  %59 = load ptr, ptr %5, align 8, !tbaa !655
  %60 = getelementptr inbounds %struct.tree_type, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !655
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63, !prof !1441

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.tree_common, ptr %61, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !655
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
  br i1 %74, label %76, label %75, !prof !1442

75:                                               ; preds = %71
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 3487, ptr noundef nonnull @.str.1) #21
  br label %76

76:                                               ; preds = %71, %75
  %77 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !655
  %79 = tail call ptr @unshare_expr(ptr noundef %0) #20
  %80 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %78, ptr noundef %79, ptr noundef nonnull %57, ptr noundef null) #21
  br label %81

81:                                               ; preds = %76, %67
  %82 = phi ptr [ %70, %67 ], [ %80, %76 ]
  %83 = load i64, ptr %27, align 8
  %84 = and i64 %83, 65535
  %85 = icmp eq i64 %84, 51
  br i1 %85, label %86, label %95, !prof !1438

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !655
  %89 = load i64, ptr %88, align 8
  %90 = and i64 %89, 65535
  %91 = icmp eq i64 %90, 14
  br i1 %91, label %95, label %92

92:                                               ; preds = %86
  %93 = getelementptr inbounds %struct.tree_constructor, ptr %27, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !655
  tail call fastcc void @gimplify_init_ctor_eval(ptr noundef %82, ptr noundef %94, ptr noundef %2, i8 noundef zeroext %3) #20
  br label %99

95:                                               ; preds = %86, %81
  %96 = getelementptr inbounds %struct.tree_common, ptr %82, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !655
  %98 = tail call ptr @build2_stat(i32 noundef 54, ptr noundef %97, ptr noundef %82, ptr noundef nonnull %27) #21
  tail call void @gimplify_and_add(ptr noundef %98, ptr noundef %2) #20
  tail call void @ggc_free(ptr noundef %98) #21
  br label %99

99:                                               ; preds = %55, %92, %95, %41, %31, %22
  %100 = add nuw nsw i64 %23, 1
  %101 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %1) #20
  %102 = zext i32 %101 to i64
  %103 = icmp ult i64 %100, %102
  br i1 %103, label %22, label %104, !prof !1443, !llvm.loop !1444

104:                                              ; preds = %99, %15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_constructor_elt_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #14 !prof !1445 !PGOFuncName !1446 {
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
define internal fastcc noundef ptr @VEC_constructor_elt_gc_copy(ptr noundef readonly %0) unnamed_addr #4 !prof !688 !PGOFuncName !1447 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1195
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = zext i32 %4 to i64
  %8 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef null, i32 noundef %4, i64 noundef 8, i64 noundef 16) #21
  store i32 %4, ptr %8, align 8, !tbaa !1448
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
define internal ptr @gimplify_init_ctor_preeval_1(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #4 !prof !688 !PGOFuncName !1450 {
  %4 = load ptr, ptr %0, align 8, !tbaa !666
  %5 = load ptr, ptr %2, align 8, !tbaa !1451
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
  %19 = load i32, ptr %18, align 8, !tbaa !1412
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
  %31 = load ptr, ptr %30, align 8, !tbaa !655
  %32 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !655
  %34 = getelementptr inbounds %struct.tree_common, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !655
  %36 = getelementptr inbounds %struct.tree_type, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !655
  %38 = icmp eq ptr %37, null
  br i1 %38, label %68, label %39

39:                                               ; preds = %29
  %40 = getelementptr inbounds %struct.gimplify_init_ctor_preeval_data, ptr %2, i64 0, i32 1
  br label %41

41:                                               ; preds = %39, %61
  %42 = phi ptr [ %37, %39 ], [ %63, %61 ]
  %43 = getelementptr inbounds %struct.tree_list, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !655
  %45 = load i64, ptr %44, align 8
  %46 = trunc i64 %45 to i16
  switch i16 %46, label %61 [
    i16 10, label %47
    i16 12, label %47
  ]

47:                                               ; preds = %41, %41
  %48 = load ptr, ptr %2, align 8, !tbaa !1451
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load i64, ptr %48, align 8
  %52 = and i64 %51, 262144
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %50, %47
  %55 = load i32, ptr %40, align 8, !tbaa !1412
  %56 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !655
  %58 = tail call i32 @get_alias_set(ptr noundef %57) #21
  %59 = tail call i32 @alias_sets_conflict_p(i32 noundef %55, i32 noundef %58) #21
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %41, %50, %54
  %62 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !655
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %41, !llvm.loop !1452

65:                                               ; preds = %61
  %66 = load i64, ptr %4, align 8
  %67 = and i64 %66, 65535
  br label %68

68:                                               ; preds = %65, %29, %25
  %69 = phi i64 [ %67, %65 ], [ 59, %29 ], [ %27, %25 ]
  %70 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !710
  %72 = and i32 %71, -2
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 0, ptr %1, align 4, !tbaa !710
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
define internal fastcc noundef zeroext i8 @zero_sized_field_decl(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1453 !PGOFuncName !1454 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 31
  br i1 %4, label %5, label %12, !prof !1440

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !655
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9, !prof !1455

9:                                                ; preds = %5
  %10 = tail call i32 @integer_zerop(ptr noundef nonnull %7) #21
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13, !prof !1442

12:                                               ; preds = %9, %5, %1
  br label %13

13:                                               ; preds = %9, %12
  %14 = phi i8 [ 0, %12 ], [ 1, %9 ]
  ret i8 %14
}

; Function Attrs: optsize
declare i32 @simple_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_init_ctor_eval_range(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6) unnamed_addr #4 !prof !688 !PGOFuncName !1456 {
  %8 = tail call ptr @create_artificial_label(i32 noundef 0) #21
  %9 = tail call ptr @create_artificial_label(i32 noundef 0) #21
  %10 = tail call ptr @create_artificial_label(i32 noundef 0) #21
  %11 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !655
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
  %23 = load ptr, ptr %22, align 8, !tbaa !655
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
  %29 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !666
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

; Function Attrs: optsize
declare ptr @gimple_build_call(ptr noundef, i32 noundef, ...) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prepare_gimple_addressable(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #4 !prof !1116 !PGOFuncName !1457 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi ptr [ %0, %2 ], [ %8, %3 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !666
  %6 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %5) #20, !range !653
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  br i1 %7, label %9, label %3, !prof !1458, !llvm.loop !1459

9:                                                ; preds = %3
  %10 = tail call zeroext i8 @is_gimple_reg(ptr noundef %5) #21
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12, !prof !1460

12:                                               ; preds = %9
  %13 = load ptr, ptr %4, align 8, !tbaa !666
  %14 = tail call ptr @get_initialized_tmp_var(ptr noundef %13, ptr noundef %1, ptr noundef null) #20
  store ptr %14, ptr %4, align 8, !tbaa !666
  br label %15

15:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #4 !prof !1461 !PGOFuncName !1462 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !653
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6, !prof !1463

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #20
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9, !prof !1464

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 1665, ptr noundef nonnull @.str.1) #21
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %12 = zext i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !666
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !1465 !PGOFuncName !1466 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !684
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !1467 !PGOFuncName !1468 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !655
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #4 !prof !1465 !PGOFuncName !1469 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #20
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !708
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !1470

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 1622, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !1465 !PGOFuncName !1471 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !684
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #20
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #14 !prof !1465 !PGOFuncName !1472 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !710
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @tree_ssa_useless_type_conversion(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @recompute_tree_invariant_for_addr_expr(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @tree_strip_sign_nop_conversions(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @canonicalize_addr_expr(ptr nocapture noundef %0) unnamed_addr #4 !prof !1473 !PGOFuncName !1474 {
  %2 = load ptr, ptr %0, align 8, !tbaa !666
  %3 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !655
  %5 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !655
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %64 [
    i16 10, label %9
    i16 12, label %9
  ], !prof !1475

9:                                                ; preds = %1, %1
  %10 = load i64, ptr %4, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 121
  br i1 %12, label %13, label %64, !prof !1476

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !655
  %16 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !655
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 15
  br i1 %20, label %21, label %64, !prof !1477

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !655
  %24 = tail call ptr @build_pointer_type(ptr noundef %23) #21
  %25 = load ptr, ptr %5, align 8, !tbaa !655
  %26 = getelementptr inbounds %struct.tree_type, ptr %25, i64 0, i32 16
  %27 = load ptr, ptr %26, align 8, !tbaa !655
  %28 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %27, ptr noundef %24) #21
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %64, label %30, !prof !1478

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !655
  %33 = icmp eq ptr %32, null
  br i1 %33, label %64, label %34, !prof !1479

34:                                               ; preds = %30
  %35 = load i64, ptr %32, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 23
  br i1 %37, label %38, label %64, !prof !1480

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.tree_type, ptr %17, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !655
  %41 = icmp eq ptr %40, null
  br i1 %41, label %64, label %42, !prof !1479

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.tree_type, ptr %40, i64 0, i32 13
  %44 = load ptr, ptr %43, align 8, !tbaa !655
  %45 = icmp eq ptr %44, null
  br i1 %45, label %64, label %46, !prof !1479

46:                                               ; preds = %42
  %47 = load i64, ptr %44, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 23
  br i1 %49, label %50, label %64, !prof !1480

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !655
  %53 = tail call ptr @build4_stat(i32 noundef 45, ptr noundef nonnull %23, ptr noundef %52, ptr noundef nonnull %44, ptr noundef null, ptr noundef null) #21
  store ptr %53, ptr %0, align 8, !tbaa !666
  %54 = tail call ptr @build1_stat(i32 noundef 121, ptr noundef %24, ptr noundef %53) #21
  store ptr %54, ptr %0, align 8, !tbaa !666
  %55 = load ptr, ptr %5, align 8, !tbaa !655
  %56 = getelementptr inbounds %struct.tree_common, ptr %54, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !655
  %58 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %55, ptr noundef %57) #21
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %64, !prof !1481

60:                                               ; preds = %50
  %61 = load ptr, ptr %5, align 8, !tbaa !655
  %62 = load ptr, ptr %0, align 8, !tbaa !666
  %63 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %61, ptr noundef %62) #21
  store ptr %63, ptr %0, align 8, !tbaa !666
  br label %64

64:                                               ; preds = %50, %60, %30, %34, %38, %42, %46, %21, %13, %9, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimplify_type_sizes(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #4 !prof !1482 {
  %3 = icmp eq ptr %0, null
  %4 = load ptr, ptr @global_trees, align 16
  %5 = icmp eq ptr %4, %0
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %112, label %7, !prof !1483

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %9 = load ptr, ptr %8, align 8, !tbaa !655
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 131072
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %112, !prof !1484

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
  ], !prof !1485

16:                                               ; preds = %13, %13, %13, %13, %13
  %17 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 13
  tail call void @gimplify_one_sizepos(ptr noundef nonnull %17, ptr noundef %1) #20
  %18 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 14
  tail call void @gimplify_one_sizepos(ptr noundef nonnull %18, ptr noundef %1) #20
  %19 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 15
  %20 = load ptr, ptr %19, align 8, !tbaa !655
  %21 = icmp eq ptr %20, null
  br i1 %21, label %95, label %22, !prof !1486

22:                                               ; preds = %16, %22
  %23 = phi ptr [ %29, %22 ], [ %20, %16 ]
  %24 = load ptr, ptr %17, align 8, !tbaa !655
  %25 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 13
  store ptr %24, ptr %25, align 8, !tbaa !655
  %26 = load ptr, ptr %18, align 8, !tbaa !655
  %27 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 14
  store ptr %26, ptr %27, align 8, !tbaa !655
  %28 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 15
  %29 = load ptr, ptr %28, align 8, !tbaa !655
  %30 = icmp eq ptr %29, null
  br i1 %30, label %95, label %22, !prof !1487, !llvm.loop !1488

31:                                               ; preds = %13
  %32 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !655
  tail call void @gimplify_type_sizes(ptr noundef %33, ptr noundef %1) #20
  %34 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !655
  tail call void @gimplify_type_sizes(ptr noundef %35, ptr noundef %1) #20
  %36 = load ptr, ptr %34, align 8, !tbaa !655
  %37 = icmp eq ptr %36, null
  br i1 %37, label %95, label %38, !prof !1489

38:                                               ; preds = %31
  %39 = load i64, ptr %36, align 8
  %40 = trunc i64 %39 to i32
  %41 = and i32 %40, 65535
  %42 = add nsw i32 %41, -6
  %43 = icmp ult i32 %42, 3
  br i1 %43, label %44, label %95, !prof !1490

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.tree_type, ptr %36, i64 0, i32 13
  %46 = load ptr, ptr %45, align 8, !tbaa !655
  %47 = icmp eq ptr %46, null
  br i1 %47, label %60, label %48, !prof !1489

48:                                               ; preds = %44
  %49 = load i64, ptr %46, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 32
  br i1 %51, label %52, label %60, !prof !1489

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.tree_decl_common, ptr %46, i64 0, i32 2
  %54 = load i64, ptr %53, align 8
  %55 = and i64 %54, 4096
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = and i64 %54, -1025
  store i64 %58, ptr %53, align 8
  %59 = load ptr, ptr %34, align 8, !tbaa !655
  br label %60

60:                                               ; preds = %57, %52, %48, %44
  %61 = phi ptr [ %59, %57 ], [ %36, %52 ], [ %36, %48 ], [ %36, %44 ]
  %62 = getelementptr inbounds %struct.tree_type, ptr %61, i64 0, i32 14
  %63 = load ptr, ptr %62, align 8, !tbaa !655
  %64 = icmp eq ptr %63, null
  br i1 %64, label %95, label %65, !prof !1489

65:                                               ; preds = %60
  %66 = load i64, ptr %63, align 8
  %67 = and i64 %66, 65535
  %68 = icmp eq i64 %67, 32
  br i1 %68, label %69, label %95, !prof !1491

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.tree_decl_common, ptr %63, i64 0, i32 2
  %71 = load i64, ptr %70, align 8
  %72 = and i64 %71, 4096
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %95, label %74, !prof !1371

74:                                               ; preds = %69
  %75 = and i64 %71, -1025
  store i64 %75, ptr %70, align 8
  br label %95

76:                                               ; preds = %13, %13, %13
  %77 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !655
  %79 = icmp eq ptr %78, null
  br i1 %79, label %95, label %80, !prof !1492

80:                                               ; preds = %76, %91
  %81 = phi ptr [ %93, %91 ], [ %78, %76 ]
  %82 = load i64, ptr %81, align 8
  %83 = and i64 %82, 65535
  %84 = icmp eq i64 %83, 31
  br i1 %84, label %85, label %91, !prof !1493

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.tree_field_decl, ptr %81, i64 0, i32 1
  tail call void @gimplify_one_sizepos(ptr noundef nonnull %86, ptr noundef %1) #20
  %87 = getelementptr inbounds %struct.tree_decl_common, ptr %81, i64 0, i32 1
  tail call void @gimplify_one_sizepos(ptr noundef nonnull %87, ptr noundef %1) #20
  %88 = getelementptr inbounds %struct.tree_decl_common, ptr %81, i64 0, i32 4
  tail call void @gimplify_one_sizepos(ptr noundef nonnull %88, ptr noundef %1) #20
  %89 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !655
  tail call void @gimplify_type_sizes(ptr noundef %90, ptr noundef %1) #20
  br label %91

91:                                               ; preds = %80, %85
  %92 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !655
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %80, !prof !1494, !llvm.loop !1495

95:                                               ; preds = %91, %22, %76, %16, %38, %13, %31, %74, %69, %65, %60
  %96 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 2
  tail call void @gimplify_one_sizepos(ptr noundef nonnull %96, ptr noundef %1) #20
  %97 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 3
  tail call void @gimplify_one_sizepos(ptr noundef nonnull %97, ptr noundef %1) #20
  %98 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 15
  %99 = load ptr, ptr %98, align 8, !tbaa !655
  %100 = icmp eq ptr %99, null
  br i1 %100, label %112, label %101, !prof !1496

101:                                              ; preds = %95, %101
  %102 = phi ptr [ %110, %101 ], [ %99, %95 ]
  %103 = load ptr, ptr %96, align 8, !tbaa !655
  %104 = getelementptr inbounds %struct.tree_type, ptr %102, i64 0, i32 2
  store ptr %103, ptr %104, align 8, !tbaa !655
  %105 = load ptr, ptr %97, align 8, !tbaa !655
  %106 = getelementptr inbounds %struct.tree_type, ptr %102, i64 0, i32 3
  store ptr %105, ptr %106, align 8, !tbaa !655
  %107 = load i64, ptr %102, align 8
  %108 = or i64 %107, 131072
  store i64 %108, ptr %102, align 8
  %109 = getelementptr inbounds %struct.tree_type, ptr %102, i64 0, i32 15
  %110 = load ptr, ptr %109, align 8, !tbaa !655
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %101, !prof !1497, !llvm.loop !1498

112:                                              ; preds = %101, %95, %7, %2
  ret void
}

; Function Attrs: optsize
declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_vla_decl(ptr noundef %0, ptr noundef %1) unnamed_addr #4 !prof !1499 !PGOFuncName !1500 {
  %3 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  tail call void @gimplify_one_sizepos(ptr noundef nonnull %3, ptr noundef %1) #20
  %4 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 4
  tail call void @gimplify_one_sizepos(ptr noundef nonnull %4, ptr noundef %1) #20
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !655
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
  %17 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 415), align 8, !tbaa !666
  %18 = load ptr, ptr %4, align 8, !tbaa !655
  %19 = tail call ptr (i32, ptr, i32, ...) @build_call_expr_loc(i32 noundef 0, ptr noundef %17, i32 noundef 1, ptr noundef %18) #21
  %20 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %7, ptr noundef %19) #21
  %21 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !655
  %23 = tail call ptr @build2_stat(i32 noundef 53, ptr noundef %22, ptr noundef %9, ptr noundef %20) #21
  tail call void @gimplify_and_add(ptr noundef %23, ptr noundef %1) #20
  %24 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %25 = getelementptr inbounds %struct.gimplify_ctx, ptr %24, i64 0, i32 9
  store i8 1, ptr %25, align 4, !tbaa !1145
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimplify_one_sizepos(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 !prof !1501 {
  %3 = load ptr, ptr %0, align 8, !tbaa !666
  %4 = icmp eq ptr %3, null
  br i1 %4, label %52, label %5, !prof !1502

5:                                                ; preds = %2
  %6 = load i64, ptr %3, align 8
  %7 = and i64 %6, 131072
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %52, !prof !1503

9:                                                ; preds = %5
  %10 = and i64 %6, 65535
  %11 = icmp eq i64 %10, 32
  br i1 %11, label %52, label %12, !prof !1504

12:                                               ; preds = %9
  %13 = tail call zeroext i8 @contains_placeholder_p(ptr noundef nonnull %3) #21
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %52, !prof !1505

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !655
  %18 = tail call ptr @unshare_expr(ptr noundef nonnull %3) #20
  store ptr %18, ptr %0, align 8, !tbaa !666
  %19 = tail call i32 @gimplify_expr(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %20 = load ptr, ptr %0, align 8, !tbaa !666
  %21 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !655
  %23 = icmp eq ptr %22, %17
  br i1 %23, label %52, label %24, !prof !1505

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
  store ptr %34, ptr %0, align 8, !tbaa !666
  %35 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef nonnull %17, ptr noundef nonnull %20) #21
  %36 = load ptr, ptr %0, align 8, !tbaa !666
  %37 = tail call ptr @gimplify_assign(ptr noundef %36, ptr noundef %35, ptr noundef %1) #21
  %38 = load i64, ptr %20, align 8
  %39 = and i64 %38, 65535
  %40 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !710
  %42 = add i32 %41, -4
  %43 = icmp ult i32 %42, 7
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.tree_exp, ptr %20, i64 0, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !655
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %33, %44
  %49 = load i32, ptr @input_location, align 4, !tbaa !710
  br label %50

50:                                               ; preds = %44, %48
  %51 = phi i32 [ %49, %48 ], [ %46, %44 ]
  tail call fastcc void @gimple_set_location(ptr noundef %37, i32 noundef %51) #20
  br label %52

52:                                               ; preds = %50, %15, %24, %28, %2, %5, %9, %12
  ret void
}

; Function Attrs: optsize
declare void @decl_value_expr_insert(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @build_call_expr_loc(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gimple_build_bind(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_push_bind_expr(ptr noundef %0) unnamed_addr #4 !prof !1143 !PGOFuncName !1506 {
  %2 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %3 = getelementptr inbounds %struct.gimplify_ctx, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !672
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10, !prof !1507

6:                                                ; preds = %1
  %7 = tail call fastcc ptr @VEC_gimple_heap_alloc() #20
  %8 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %9 = getelementptr inbounds %struct.gimplify_ctx, ptr %8, i64 0, i32 1
  store ptr %7, ptr %9, align 8, !tbaa !672
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi ptr [ %8, %6 ], [ %2, %1 ]
  %12 = getelementptr inbounds %struct.gimplify_ctx, ptr %11, i64 0, i32 1
  tail call fastcc void @VEC_gimple_heap_safe_push(ptr noundef nonnull %12, ptr noundef %0) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_bind_set_body(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #15 !prof !1508 !PGOFuncName !1509 {
  %3 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !655
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_stack_save_restore(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #4 !prof !1510 !PGOFuncName !1511 {
  %3 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 526), align 16, !tbaa !666
  %4 = tail call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %3, i32 noundef 0) #21
  store ptr %4, ptr %0, align 8, !tbaa !666
  %5 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !666
  %6 = tail call ptr @create_tmp_var(ptr noundef %5, ptr noundef nonnull @.str.13) #20
  %7 = load ptr, ptr %0, align 8, !tbaa !666
  tail call fastcc void @gimple_call_set_lhs(ptr noundef %7, ptr noundef %6) #20
  %8 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 527), align 8, !tbaa !666
  %9 = tail call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %8, i32 noundef 1, ptr noundef %6) #21
  store ptr %9, ptr %1, align 8, !tbaa !666
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bind_body(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !1510 !PGOFuncName !1512 {
  %2 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !655
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gimple_pop_bind_expr() unnamed_addr #18 !prof !1143 !PGOFuncName !1513 {
  %1 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %2 = getelementptr inbounds %struct.gimplify_ctx, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !672
  tail call fastcc void @VEC_gimple_base_pop(ptr noundef %3) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_gimple_heap_alloc() unnamed_addr #4 !prof !678 !PGOFuncName !1514 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 8) #21
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #4 !prof !1143 !PGOFuncName !1515 {
  tail call fastcc void @VEC_gimple_heap_reserve(ptr noundef %0) #20
  %3 = load ptr, ptr %0, align 8, !tbaa !666
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %3, ptr noundef %1) #20
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_reserve(ptr nocapture noundef %0) unnamed_addr #4 !prof !1143 !PGOFuncName !1516 {
  %2 = load ptr, ptr %0, align 8, !tbaa !666
  %3 = tail call fastcc i32 @VEC_gimple_base_space(ptr noundef %2) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1517

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #21
  store ptr %6, ptr %0, align 8, !tbaa !666
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #17 !prof !1143 !PGOFuncName !1518 {
  %3 = load i32, ptr %0, align 8, !tbaa !680
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !680
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !666
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_space(ptr noundef readonly %0) unnamed_addr #1 !prof !1143 !PGOFuncName !1519 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !1520

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1521
  %6 = load i32, ptr %0, align 8, !tbaa !680
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_base_pop(ptr nocapture noundef %0) unnamed_addr #17 !prof !1143 !PGOFuncName !1522 {
  %2 = load i32, ptr %0, align 8, !tbaa !680
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !680
  ret void
}

; Function Attrs: optsize
declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_ordered_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #17 !prof !1523 !PGOFuncName !1524 {
  %3 = load i32, ptr %0, align 8, !tbaa !938
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = add i32 %3, -1
  store i32 %7, ptr %0, align 8, !tbaa !938
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

; Function Attrs: optsize
declare zeroext i8 @parse_output_constraint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #4 !prof !688 !PGOFuncName !1525 {
  tail call fastcc void @VEC_tree_gc_reserve(ptr noundef %0) #20
  %3 = load ptr, ptr %0, align 8, !tbaa !666
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #20
  ret void
}

; Function Attrs: optsize
declare ptr @xstrdup(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @build_string(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: optsize
declare ptr @build_tree_list_stat(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @parse_input_constraint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gimple_build_asm_vec(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_asm_set_volatile(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #17 !prof !688 !PGOFuncName !1526 {
  %3 = icmp eq i8 %1, 0
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, -131073
  %6 = select i1 %3, i32 0, i32 131072
  %7 = or disjoint i32 %5, %6
  store i32 %7, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_asm_set_input(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #17 !prof !688 !PGOFuncName !1527 {
  %3 = icmp eq i8 %1, 0
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, -65537
  %6 = select i1 %3, i32 0, i32 65536
  %7 = or disjoint i32 %5, %6
  store i32 %7, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_reserve(ptr nocapture noundef %0) unnamed_addr #4 !prof !688 !PGOFuncName !1528 {
  %2 = load ptr, ptr %0, align 8, !tbaa !666
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve(ptr noundef %2, i32 noundef 1) #21
  store ptr %6, ptr %0, align 8, !tbaa !666
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_try_kind(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !688 !PGOFuncName !1529 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  %4 = and i32 %3, 3
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @gsi_one_before_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #9 !prof !688 !PGOFuncName !1530 {
  %2 = load ptr, ptr %0, align 8, !tbaa !894
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !910
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
define internal fastcc ptr @gimple_wce_cleanup(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !688 !PGOFuncName !1531 {
  %2 = getelementptr inbounds %struct.gimple_statement_wce, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !655
  ret ptr %3
}

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_wce_cleanup_eh_only(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !688 !PGOFuncName !1532 {
  %2 = load i32, ptr %0, align 8
  %3 = icmp ugt i32 %2, 65535
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @gsi_split_seq_after(ptr noundef byval(%struct.gimple_stmt_iterator) align 8) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gsi_stmt_ptr(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !688 !PGOFuncName !1533 {
  %2 = load ptr, ptr %0, align 8, !tbaa !894
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_push_cleanup(ptr nocapture noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr nocapture noundef %3) unnamed_addr #4 !prof !688 !PGOFuncName !1534 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %1, ptr %5, align 8, !tbaa !666
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #22
  store ptr null, ptr %6, align 8, !tbaa !666
  %7 = load ptr, ptr @global_dc, align 8, !tbaa !666
  %8 = getelementptr inbounds %struct.diagnostic_context, ptr %7, i64 0, i32 1, i64 4
  %9 = load i32, ptr %8, align 8, !tbaa !710
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %40

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.diagnostic_context, ptr %7, i64 0, i32 1, i64 5
  %13 = load i32, ptr %12, align 4, !tbaa !710
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %11
  %16 = tail call fastcc zeroext i8 @gimple_conditional_context() #20, !range !653
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !666
  %20 = tail call ptr @create_tmp_var(ptr noundef %19, ptr noundef nonnull @.str.19) #20
  %21 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !666
  %22 = tail call ptr @gimple_build_assign_stat(ptr noundef %20, ptr noundef %21) #21
  %23 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !666
  %24 = tail call ptr @gimple_build_assign_stat(ptr noundef %20, ptr noundef %23) #21
  %25 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !666
  %26 = tail call ptr @build3_stat(i32 noundef 56, ptr noundef %25, ptr noundef %20, ptr noundef %1, ptr noundef null) #21
  store ptr %26, ptr %5, align 8, !tbaa !666
  %27 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %5, ptr noundef nonnull %6) #20, !range !653
  %28 = load ptr, ptr %6, align 8, !tbaa !666
  %29 = call ptr @gimple_build_wce(ptr noundef %28) #21
  %30 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %31 = getelementptr inbounds %struct.gimplify_ctx, ptr %30, i64 0, i32 3
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %31, ptr noundef %22) #20
  %32 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %33 = getelementptr inbounds %struct.gimplify_ctx, ptr %32, i64 0, i32 3
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %33, ptr noundef %29) #20
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %3, ptr noundef %24) #20
  %34 = load i64, ptr %0, align 8
  %35 = or i64 %34, 8388608
  store i64 %35, ptr %0, align 8
  br label %40

36:                                               ; preds = %15
  %37 = call zeroext i8 @gimplify_stmt(ptr noundef nonnull %5, ptr noundef nonnull %6) #20, !range !653
  %38 = load ptr, ptr %6, align 8, !tbaa !666
  %39 = call ptr @gimple_build_wce(ptr noundef %38) #21
  call fastcc void @gimple_wce_set_cleanup_eh_only(ptr noundef %39, i8 noundef zeroext %2) #20
  call fastcc void @gimplify_seq_add_stmt(ptr noundef %3, ptr noundef %39) #20
  br label %40

40:                                               ; preds = %18, %36, %4, %11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @gimple_conditional_context() unnamed_addr #9 !prof !688 !PGOFuncName !1535 {
  %1 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %2 = getelementptr inbounds %struct.gimplify_ctx, ptr %1, i64 0, i32 8
  %3 = load i32, ptr %2, align 8, !tbaa !1210
  %4 = icmp sgt i32 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare ptr @gimple_build_wce(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_wce_set_cleanup_eh_only(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #17 !prof !688 !PGOFuncName !1536 {
  %3 = zext nneg i8 %1 to i32
  %4 = load i32, ptr %0, align 8
  %5 = shl nuw nsw i32 %3, 16
  %6 = and i32 %4, 65535
  %7 = or disjoint i32 %6, %5
  store i32 %7, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc { ptr, ptr } @tsi_start(ptr noundef %0) unnamed_addr #1 !prof !1218 !PGOFuncName !1537 {
  %2 = getelementptr inbounds %struct.tree_statement_list, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !655
  %4 = insertvalue { ptr, ptr } poison, ptr %3, 0
  %5 = insertvalue { ptr, ptr } %4, ptr %0, 1
  ret { ptr, ptr } %5
}

; Function Attrs: optsize
declare void @tsi_delink(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @set_decl_rtl(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_scan_omp_clauses(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #4 !prof !688 !PGOFuncName !1538 {
  %4 = alloca %struct.gimplify_ctx, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #22
  %5 = tail call fastcc ptr @new_omp_context(i32 noundef %2) #20
  %6 = load ptr, ptr %5, align 8, !tbaa !728
  %7 = load ptr, ptr %0, align 8, !tbaa !666
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
  %17 = load i32, ptr %16, align 4, !tbaa !655
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
  %19 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 14), align 8, !tbaa !877
  %20 = getelementptr inbounds %struct.tree_omp_clause, ptr %14, i64 0, i32 6
  %21 = load ptr, ptr %20, align 8, !tbaa !655
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
  %35 = load ptr, ptr %34, align 8, !tbaa !655
  %36 = load ptr, ptr @global_trees, align 16, !tbaa !666
  %37 = icmp eq ptr %35, %36
  br i1 %37, label %119, label %38

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !655
  %41 = icmp eq ptr %40, %36
  br i1 %41, label %119, label %42

42:                                               ; preds = %38
  call fastcc void @omp_add_variable(ptr noundef nonnull %5, ptr noundef nonnull %35, i32 noundef %33) #20
  %43 = load i32, ptr %16, align 4, !tbaa !655
  switch i32 %43, label %83 [
    i32 5, label %44
    i32 4, label %61
  ]

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.tree_omp_clause, ptr %14, i64 1, i32 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !655
  %47 = icmp eq ptr %46, null
  br i1 %47, label %83, label %48

48:                                               ; preds = %44
  call fastcc void @omp_add_variable(ptr noundef nonnull %5, ptr noundef nonnull %46, i32 noundef 129) #20
  store ptr %5, ptr @gimplify_omp_ctxp, align 8, !tbaa !666
  call void @push_gimplify_context(ptr noundef nonnull %4) #20
  %49 = call ptr @gimple_seq_alloc() #21
  %50 = getelementptr inbounds %struct.tree_omp_clause, ptr %14, i64 0, i32 4
  store ptr %49, ptr %50, align 8, !tbaa !655
  %51 = call ptr @gimple_seq_alloc() #21
  %52 = getelementptr inbounds %struct.tree_omp_clause, ptr %14, i64 0, i32 5
  store ptr %51, ptr %52, align 8, !tbaa !655
  %53 = getelementptr inbounds %struct.tree_omp_clause, ptr %14, i64 1
  %54 = load ptr, ptr %53, align 8, !tbaa !655
  call void @gimplify_and_add(ptr noundef %54, ptr noundef nonnull %50) #20
  %55 = load ptr, ptr %50, align 8, !tbaa !655
  %56 = call fastcc ptr @gimple_seq_first_stmt(ptr noundef %55) #20
  call void @pop_gimplify_context(ptr noundef %56) #20
  call void @push_gimplify_context(ptr noundef nonnull %4) #20
  %57 = getelementptr inbounds %struct.tree_omp_clause, ptr %14, i64 1, i32 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !655
  call void @gimplify_and_add(ptr noundef %58, ptr noundef nonnull %52) #20
  %59 = load ptr, ptr %52, align 8, !tbaa !655
  %60 = call fastcc ptr @gimple_seq_first_stmt(ptr noundef %59) #20
  call void @pop_gimplify_context(ptr noundef %60) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %53, i8 0, i64 16, i1 false)
  br label %82

61:                                               ; preds = %42
  %62 = getelementptr inbounds %struct.tree_omp_clause, ptr %14, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !655
  %64 = icmp eq ptr %63, null
  br i1 %64, label %83, label %65

65:                                               ; preds = %61
  store ptr %5, ptr @gimplify_omp_ctxp, align 8, !tbaa !666
  call void @push_gimplify_context(ptr noundef nonnull %4) #20
  %66 = load ptr, ptr %62, align 8, !tbaa !655
  %67 = load i64, ptr %66, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 58
  br i1 %69, label %77, label %70

70:                                               ; preds = %65
  %71 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !666
  %72 = call ptr @build3_stat(i32 noundef 58, ptr noundef %71, ptr noundef null, ptr noundef null, ptr noundef null) #21
  %73 = load i64, ptr %72, align 8
  %74 = or i64 %73, 65536
  store i64 %74, ptr %72, align 8
  %75 = load ptr, ptr %62, align 8, !tbaa !655
  %76 = getelementptr inbounds %struct.tree_exp, ptr %72, i64 1
  store ptr %75, ptr %76, align 8, !tbaa !655
  store ptr %72, ptr %62, align 8, !tbaa !655
  br label %77

77:                                               ; preds = %70, %65
  %78 = phi ptr [ %72, %70 ], [ %66, %65 ]
  %79 = getelementptr inbounds %struct.tree_omp_clause, ptr %14, i64 0, i32 4
  call void @gimplify_and_add(ptr noundef nonnull %78, ptr noundef nonnull %79) #20
  %80 = load ptr, ptr %79, align 8, !tbaa !655
  %81 = call fastcc ptr @gimple_seq_first_stmt(ptr noundef %80) #20
  call void @pop_gimplify_context(ptr noundef %81) #20
  store ptr null, ptr %62, align 8, !tbaa !655
  br label %82

82:                                               ; preds = %48, %77
  store ptr %6, ptr @gimplify_omp_ctxp, align 8, !tbaa !666
  br label %83

83:                                               ; preds = %82, %42, %44, %61
  br i1 %31, label %122, label %93

84:                                               ; preds = %13, %13
  %85 = getelementptr inbounds %struct.tree_omp_clause, ptr %14, i64 0, i32 6
  %86 = load ptr, ptr %85, align 8, !tbaa !655
  %87 = load ptr, ptr @global_trees, align 16, !tbaa !666
  %88 = icmp eq ptr %86, %87
  br i1 %88, label %119, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.tree_common, ptr %86, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !655
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
  %102 = call fastcc zeroext i8 @omp_check_private(ptr noundef nonnull %5, ptr noundef nonnull %95) #20, !range !653
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %122, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.tree_decl_minimal, ptr %95, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !655
  call void (ptr, ...) @error(ptr noundef nonnull @.str.23, ptr noundef nonnull %94, ptr noundef %106) #21
  br label %119

107:                                              ; preds = %13
  %108 = getelementptr inbounds %struct.tree_omp_clause, ptr %14, i64 0, i32 6
  %109 = load ptr, ptr %108, align 8, !tbaa !655
  %110 = call ptr @gimple_boolify(ptr noundef %109) #20
  store ptr %110, ptr %108, align 8, !tbaa !655
  br label %111

111:                                              ; preds = %13, %13, %107
  %112 = getelementptr inbounds %struct.tree_omp_clause, ptr %14, i64 0, i32 6
  %113 = call i32 @gimplify_expr(ptr noundef nonnull %112, ptr noundef %1, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  %114 = icmp eq i32 %113, -2
  br i1 %114, label %119, label %122

115:                                              ; preds = %13
  %116 = getelementptr inbounds %struct.tree_omp_clause, ptr %14, i64 0, i32 3
  %117 = load i32, ptr %116, align 8, !tbaa !655
  store i32 %117, ptr %10, align 4, !tbaa !873
  br label %122

118:                                              ; preds = %13
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 5821, ptr noundef nonnull @.str.1) #21
  br label %122

119:                                              ; preds = %104, %38, %30, %89, %84, %111
  %120 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !655
  store ptr %121, ptr %15, align 8, !tbaa !666
  br label %125

122:                                              ; preds = %118, %115, %13, %13, %13, %13, %101, %98, %83, %111
  %123 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !666
  br label %125

125:                                              ; preds = %122, %119
  %126 = phi ptr [ %121, %119 ], [ %124, %122 ]
  %127 = phi ptr [ %15, %119 ], [ %123, %122 ]
  %128 = icmp eq ptr %126, null
  br i1 %128, label %129, label %13, !llvm.loop !1539

129:                                              ; preds = %125, %3
  store ptr %5, ptr @gimplify_omp_ctxp, align 8, !tbaa !666
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimplify_and_return_first(ptr noundef %0, ptr noundef %1) unnamed_addr #4 !prof !688 !PGOFuncName !1540 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #22
  %4 = load ptr, ptr %1, align 8, !tbaa !666
  call fastcc void @gsi_last(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %4) #20
  tail call void @gimplify_and_add(ptr noundef %0, ptr noundef nonnull %1) #20
  %5 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20, !range !653
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  call fastcc void @gsi_next(ptr noundef nonnull %3) #20
  %8 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #20
  br label %12

9:                                                ; preds = %2
  %10 = load ptr, ptr %1, align 8, !tbaa !666
  %11 = tail call fastcc ptr @gimple_seq_first_stmt(ptr noundef %10) #20
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi ptr [ %11, %9 ], [ %8, %7 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #22
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimplify_adjust_omp_clauses(ptr noundef %0) unnamed_addr #4 !prof !688 !PGOFuncName !1541 {
  %2 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !666
  %3 = load ptr, ptr %0, align 8, !tbaa !666
  %4 = icmp eq ptr %3, null
  br i1 %4, label %70, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %2, i64 0, i32 1
  br label %7

7:                                                ; preds = %5, %66
  %8 = phi ptr [ %3, %5 ], [ %67, %66 ]
  %9 = phi ptr [ %0, %5 ], [ %68, %66 ]
  %10 = getelementptr inbounds %struct.tree_omp_clause, ptr %8, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !655
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
  %14 = load ptr, ptr %13, align 8, !tbaa !655
  %15 = load ptr, ptr %6, align 8, !tbaa !861
  %16 = ptrtoint ptr %14 to i64
  %17 = tail call ptr @splay_tree_lookup(ptr noundef %15, i64 noundef %16) #21
  %18 = getelementptr inbounds %struct.splay_tree_node_s, ptr %17, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !862
  %20 = and i64 %19, 1
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %60, label %22

22:                                               ; preds = %12
  %23 = and i64 %19, 256
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load i32, ptr %10, align 4, !tbaa !655
  %27 = icmp eq i32 %26, 2
  %28 = zext i1 %27 to i8
  %29 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 13), align 8, !tbaa !1542
  %30 = tail call zeroext i8 %29(ptr noundef %14, i8 noundef zeroext %28) #21
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %63, label %32

32:                                               ; preds = %25
  %33 = load i64, ptr %18, align 8, !tbaa !862
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
  store i32 1, ptr %10, align 4, !tbaa !655
  %44 = load i64, ptr %8, align 8
  %45 = or i64 %44, 134217728
  store i64 %45, ptr %8, align 8
  br label %63

46:                                               ; preds = %7
  %47 = getelementptr inbounds %struct.tree_omp_clause, ptr %8, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !655
  %49 = load ptr, ptr %6, align 8, !tbaa !861
  %50 = ptrtoint ptr %48 to i64
  %51 = tail call ptr @splay_tree_lookup(ptr noundef %49, i64 noundef %50) #21
  %52 = getelementptr inbounds %struct.splay_tree_node_s, ptr %51, i64 0, i32 1
  %53 = load i64, ptr %52, align 8, !tbaa !862
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
  %62 = load ptr, ptr %61, align 8, !tbaa !655
  store ptr %62, ptr %9, align 8, !tbaa !666
  br label %66

63:                                               ; preds = %59, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %7, %46, %43, %25
  %64 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !666
  br label %66

66:                                               ; preds = %63, %60
  %67 = phi ptr [ %62, %60 ], [ %65, %63 ]
  %68 = phi ptr [ %9, %60 ], [ %64, %63 ]
  %69 = icmp eq ptr %67, null
  br i1 %69, label %70, label %7, !llvm.loop !1543

70:                                               ; preds = %66, %1
  %71 = phi ptr [ %0, %1 ], [ %68, %66 ]
  %72 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %2, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !861
  %74 = tail call i32 @splay_tree_foreach(ptr noundef %73, ptr noundef nonnull @gimplify_adjust_omp_clauses_1, ptr noundef nonnull %71) #21
  %75 = load ptr, ptr %2, align 8, !tbaa !728
  store ptr %75, ptr @gimplify_omp_ctxp, align 8, !tbaa !666
  tail call fastcc void @delete_omp_context(ptr noundef nonnull %2) #20
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_build_omp_parallel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_omp_set_subcode(ptr nocapture noundef %0) unnamed_addr #17 !prof !688 !PGOFuncName !1544 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = or disjoint i32 %3, 65536
  store i32 %4, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @new_omp_context(i32 noundef %0) unnamed_addr #4 !prof !688 !PGOFuncName !1545 {
  %2 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #21
  %3 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !666
  store ptr %3, ptr %2, align 8, !tbaa !728
  %4 = tail call ptr @splay_tree_new(ptr noundef nonnull @splay_tree_compare_decl_uid, ptr noundef null, ptr noundef null) #21
  %5 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %2, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !861
  %6 = tail call ptr @pointer_set_create() #21
  %7 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %2, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !869
  %8 = load i32, ptr @input_location, align 4, !tbaa !710
  %9 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %2, i64 0, i32 3
  store i32 %8, ptr %9, align 8, !tbaa !875
  %10 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %2, i64 0, i32 5
  store i32 %0, ptr %10, align 8, !tbaa !726
  %11 = icmp ne i32 %0, 1
  %12 = zext i1 %11 to i32
  %13 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %2, i64 0, i32 4
  store i32 %12, ptr %13, align 4
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @omp_check_private(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #4 !prof !688 !PGOFuncName !1546 {
  %3 = ptrtoint ptr %1 to i64
  br label %4

4:                                                ; preds = %25, %2
  %5 = phi ptr [ %0, %2 ], [ %6, %25 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !728
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %4
  %9 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %1) #20, !range !653
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %8
  %12 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 10), align 8, !tbaa !864
  %13 = tail call zeroext i8 %12(ptr noundef %1) #21
  %14 = icmp eq i8 %13, 0
  br label %29

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %6, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !861
  %18 = tail call ptr @splay_tree_lookup(ptr noundef %17, i64 noundef %3) #21
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.splay_tree_node_s, ptr %18, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !862
  %23 = and i64 %22, 4
  %24 = icmp eq i64 %23, 0
  br label %29

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %6, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !726
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %4, label %29, !llvm.loop !1547

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
define internal i32 @splay_tree_compare_decl_uid(i64 noundef %0, i64 noundef %1) #9 !prof !688 !PGOFuncName !1548 {
  %3 = inttoptr i64 %0 to ptr
  %4 = inttoptr i64 %1 to ptr
  %5 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !655
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !655
  %9 = sub i32 %6, %8
  ret i32 %9
}

; Function Attrs: optsize
declare ptr @pointer_set_create() local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @splay_tree_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @gimplify_adjust_omp_clauses_1(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #4 !prof !688 !PGOFuncName !1549 {
  %3 = load i64, ptr %0, align 8, !tbaa !1550
  %4 = inttoptr i64 %3 to ptr
  %5 = getelementptr inbounds %struct.splay_tree_node_s, ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !862
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
  %18 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 13), align 8, !tbaa !1542
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
  %28 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %4) #20, !range !653
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %55, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !666
  %32 = load ptr, ptr %31, align 8, !tbaa !728
  %33 = icmp eq ptr %32, null
  br i1 %33, label %74, label %34

34:                                               ; preds = %30, %45
  %35 = phi ptr [ %46, %45 ], [ %32, %30 ]
  %36 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !861
  %38 = tail call ptr @splay_tree_lookup(ptr noundef %37, i64 noundef %3) #21
  %39 = icmp eq ptr %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.splay_tree_node_s, ptr %38, i64 0, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !862
  %43 = and i64 %42, 120
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %34, %40
  %46 = load ptr, ptr %35, align 8, !tbaa !728
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
  %59 = load i32, ptr @input_location, align 4, !tbaa !710
  %60 = tail call ptr @build_omp_clause(i32 noundef %59, i32 noundef %58) #21
  %61 = getelementptr inbounds %struct.tree_omp_clause, ptr %60, i64 0, i32 6
  store ptr %4, ptr %61, align 8, !tbaa !655
  %62 = load ptr, ptr %1, align 8, !tbaa !666
  %63 = getelementptr inbounds %struct.tree_common, ptr %60, i64 0, i32 1
  store ptr %62, ptr %63, align 8, !tbaa !655
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
  store ptr %60, ptr %1, align 8, !tbaa !666
  %73 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 33, i32 19), align 8, !tbaa !1551
  tail call void %73(ptr noundef nonnull %60) #21
  br label %74

74:                                               ; preds = %45, %30, %2, %72
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_omp_context(ptr nocapture noundef %0) unnamed_addr #4 !prof !688 !PGOFuncName !1552 {
  %2 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !861
  tail call void @splay_tree_delete(ptr noundef %3) #21
  %4 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !869
  tail call void @pointer_set_destroy(ptr noundef %5) #21
  tail call void @free(ptr noundef %0) #20
  ret void
}

; Function Attrs: optsize
declare ptr @build_omp_clause(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @splay_tree_delete(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gimple_build_omp_task(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @omp_is_private(ptr noundef readonly %0, ptr noundef %1) unnamed_addr #4 !prof !688 !PGOFuncName !1553 {
  %3 = ptrtoint ptr %1 to i64
  br label %4

4:                                                ; preds = %59, %2
  %5 = phi ptr [ %0, %2 ], [ %60, %59 ]
  %6 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !861
  %8 = tail call ptr @splay_tree_lookup(ptr noundef %7, i64 noundef %3) #21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %55, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.splay_tree_node_s, ptr %8, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !862
  %13 = and i64 %12, 4
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !666
  %17 = icmp eq ptr %16, %5
  br i1 %17, label %18, label %62

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !655
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.24, ptr noundef %20) #21
  store i64 8, ptr %11, align 8, !tbaa !862
  br label %62

21:                                               ; preds = %10
  %22 = and i64 %12, 2
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %44, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !666
  %26 = icmp eq ptr %25, %5
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %5, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !726
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load ptr, ptr %25, align 8, !tbaa !728
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
  %43 = load ptr, ptr %42, align 8, !tbaa !655
  tail call void (ptr, ...) @error(ptr noundef nonnull %41, ptr noundef %43) #21
  br label %44

44:                                               ; preds = %40, %21, %27, %31, %37
  %45 = load ptr, ptr @gimplify_omp_ctxp, align 8, !tbaa !666
  %46 = icmp eq ptr %45, %5
  br i1 %46, label %62, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %5, i64 0, i32 5
  %49 = load i32, ptr %48, align 8, !tbaa !726
  %50 = icmp eq i32 %49, 3
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load ptr, ptr %45, align 8, !tbaa !728
  %53 = icmp eq ptr %52, %5
  %54 = zext i1 %53 to i8
  br label %62

55:                                               ; preds = %4
  %56 = getelementptr inbounds %struct.gimplify_omp_ctx, ptr %5, i64 0, i32 5
  %57 = load i32, ptr %56, align 8, !tbaa !726
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load ptr, ptr %5, align 8, !tbaa !728
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %4

62:                                               ; preds = %59, %55, %44, %51, %47, %15, %18
  %63 = phi i8 [ 1, %18 ], [ 0, %15 ], [ 1, %44 ], [ 0, %47 ], [ %54, %51 ], [ 0, %55 ], [ 0, %59 ]
  ret i8 %63
}

; Function Attrs: optsize
declare ptr @gimple_build_omp_for(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_omp_for_set_index(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2) unnamed_addr #4 !prof !688 !PGOFuncName !1554 {
  %4 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !655
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 3475, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !655
  %11 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %10, i64 %1, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !1555
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_omp_for_set_initial(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2) unnamed_addr #4 !prof !688 !PGOFuncName !1557 {
  %4 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !655
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 3508, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !655
  %11 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %10, i64 %1, i32 2
  store ptr %2, ptr %11, align 8, !tbaa !1558
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_omp_for_set_cond(ptr nocapture noundef readonly %0, i64 noundef %1, i32 noundef %2) unnamed_addr #4 !prof !688 !PGOFuncName !1559 {
  %4 = zext nneg i32 %2 to i64
  %5 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !710
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 4076, ptr noundef nonnull @.str.1) #21
  br label %9

9:                                                ; preds = %3, %8
  %10 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !655
  %12 = icmp ugt i64 %11, %1
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 4077, ptr noundef nonnull @.str.1) #21
  br label %14

14:                                               ; preds = %9, %13
  %15 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !655
  %17 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %16, i64 %1
  store i32 %2, ptr %17, align 8, !tbaa !1560
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_omp_for_set_final(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2) unnamed_addr #4 !prof !688 !PGOFuncName !1561 {
  %4 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !655
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 3541, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !655
  %11 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %10, i64 %1, i32 3
  store ptr %2, ptr %11, align 8, !tbaa !1562
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_omp_for_set_incr(ptr nocapture noundef readonly %0, i64 noundef %1, ptr noundef %2) unnamed_addr #4 !prof !688 !PGOFuncName !1563 {
  %4 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !655
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 3574, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !655
  %11 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %10, i64 %1, i32 4
  store ptr %2, ptr %11, align 8, !tbaa !1564
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_build_omp_sections(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gimple_build_omp_single(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @goa_stabilize_expr(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 !prof !688 !PGOFuncName !1565 {
  %5 = load ptr, ptr %0, align 8, !tbaa !666
  %6 = tail call fastcc zeroext i8 @goa_lhs_expr_p(ptr noundef %5, ptr noundef %2) #20, !range !653
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  store ptr %3, ptr %0, align 8, !tbaa !666
  br label %34

9:                                                ; preds = %4
  %10 = tail call zeroext i8 @is_gimple_val(ptr noundef %5) #21
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %9
  %13 = load i64, ptr %5, align 8
  %14 = and i64 %13, 65535
  %15 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !710
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
define internal fastcc zeroext i8 @goa_lhs_expr_p(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #4 !prof !688 !PGOFuncName !1566 {
  %3 = tail call ptr @tree_ssa_strip_useless_type_conversions(ptr noundef %0) #21
  %4 = load i64, ptr %3, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 47
  br i1 %6, label %7, label %49

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !655
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
  %23 = load ptr, ptr %22, align 8, !tbaa !655
  %24 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !655
  %26 = tail call zeroext i8 @types_compatible_p(ptr noundef %23, ptr noundef %25) #21
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !655
  %31 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !655
  %33 = icmp eq ptr %32, %30
  br i1 %33, label %58, label %11, !llvm.loop !1567

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
  %44 = load ptr, ptr %43, align 8, !tbaa !655
  %45 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !655
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
  %55 = load ptr, ptr %54, align 8, !tbaa !655
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

; Function Attrs: optsize
declare zeroext i8 @contains_placeholder_p(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gimplify_body(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #4 !prof !678 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.gimplify_ctx, align 8
  %7 = load i32, ptr @input_location, align 4, !tbaa !710
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #22
  %8 = load i8, ptr @timevar_enable, align 1, !tbaa !655
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10, !prof !674

10:                                               ; preds = %3
  tail call void @timevar_push_1(i32 noundef 48) #21
  br label %11

11:                                               ; preds = %10, %3
  tail call void @default_rtl_profile() #21
  %12 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !674

14:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7506, ptr noundef nonnull @.str.1) #21
  br label %15

15:                                               ; preds = %11, %14
  call void @push_gimplify_context(ptr noundef nonnull %6) #20
  call fastcc void @unshare_body(ptr noundef %0, ptr noundef %1) #20
  call fastcc void @unvisit_body(ptr noundef %0, ptr noundef %1) #20
  %16 = call ptr @cgraph_node(ptr noundef %1) #21
  %17 = getelementptr inbounds %struct.cgraph_node, ptr %16, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !1568
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20, !prof !674

20:                                               ; preds = %15
  %21 = call ptr @pointer_set_create() #21
  store ptr %21, ptr @nonlocal_vlas, align 8, !tbaa !666
  br label %22

22:                                               ; preds = %20, %15
  %23 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !655
  store i32 %24, ptr @input_location, align 4, !tbaa !710
  %25 = icmp eq i8 %2, 0
  br i1 %25, label %28, label %26, !prof !866

26:                                               ; preds = %22
  %27 = call ptr @gimplify_parameters() #21
  br label %28

28:                                               ; preds = %22, %26
  %29 = phi ptr [ %27, %26 ], [ null, %22 ]
  store ptr %29, ptr %4, align 8, !tbaa !666
  store ptr null, ptr %5, align 8, !tbaa !666
  %30 = call zeroext i8 @gimplify_stmt(ptr noundef %0, ptr noundef nonnull %5) #20, !range !653
  %31 = load ptr, ptr %5, align 8, !tbaa !666
  %32 = call fastcc ptr @gimple_seq_first_stmt(ptr noundef %31) #20
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %37, !prof !866

34:                                               ; preds = %28
  %35 = call ptr @gimple_build_nop() #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %5, ptr noundef %35) #20
  %36 = load ptr, ptr %5, align 8, !tbaa !666
  br label %37

37:                                               ; preds = %34, %28
  %38 = phi ptr [ %31, %28 ], [ %36, %34 ]
  %39 = phi ptr [ %32, %28 ], [ %35, %34 ]
  %40 = call fastcc i32 @gimple_code(ptr noundef %39) #20, !range !684
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %42, label %46, !prof !674

42:                                               ; preds = %37
  %43 = call fastcc ptr @gimple_seq_first(ptr noundef %38) #20
  %44 = call fastcc ptr @gimple_seq_last(ptr noundef %38) #20
  %45 = icmp eq ptr %43, %44
  br i1 %45, label %48, label %46, !prof !674

46:                                               ; preds = %42, %37
  %47 = call ptr @gimple_build_bind(ptr noundef null, ptr noundef %38, ptr noundef null) #21
  br label %48

48:                                               ; preds = %42, %46
  %49 = phi ptr [ %39, %42 ], [ %47, %46 ]
  store ptr null, ptr %0, align 8, !tbaa !666
  %50 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %29) #20, !range !653
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %71, !prof !866

52:                                               ; preds = %48
  %53 = call fastcc ptr @gimple_bind_body(ptr noundef %49) #20
  call fastcc void @gimplify_seq_add_seq(ptr noundef nonnull %4, ptr noundef %53) #20
  %54 = load ptr, ptr %4, align 8, !tbaa !666
  call fastcc void @gimple_bind_set_body(ptr noundef %49, ptr noundef %54) #20
  %55 = load ptr, ptr @current_function_decl, align 8, !tbaa !666
  %56 = getelementptr inbounds %struct.tree_decl_non_common, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !655
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
  %69 = load ptr, ptr %68, align 8, !tbaa !655
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %59, !llvm.loop !1576

71:                                               ; preds = %67, %52, %48
  %72 = load ptr, ptr @nonlocal_vlas, align 8, !tbaa !666
  %73 = icmp eq ptr %72, null
  br i1 %73, label %75, label %74, !prof !674

74:                                               ; preds = %71
  call void @pointer_set_destroy(ptr noundef nonnull %72) #21
  store ptr null, ptr @nonlocal_vlas, align 8, !tbaa !666
  br label %75

75:                                               ; preds = %74, %71
  call void @pop_gimplify_context(ptr noundef %49) #20
  %76 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %77 = icmp eq ptr %76, null
  br i1 %77, label %79, label %78, !prof !674

78:                                               ; preds = %75
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7571, ptr noundef nonnull @.str.1) #21
  br label %79

79:                                               ; preds = %78, %75
  %80 = load i8, ptr @timevar_enable, align 1, !tbaa !655
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %83, label %82, !prof !674

82:                                               ; preds = %79
  call void @timevar_pop_1(i32 noundef 48) #21
  br label %83

83:                                               ; preds = %82, %79
  store i32 %7, ptr @input_location, align 4, !tbaa !710
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
define internal fastcc void @unshare_body(ptr noundef %0, ptr noundef %1) unnamed_addr #4 !prof !678 !PGOFuncName !1577 {
  %3 = tail call ptr @cgraph_node(ptr noundef %1) #21
  %4 = tail call ptr @walk_tree_1(ptr noundef %0, ptr noundef nonnull @copy_if_shared_r, ptr noundef null, ptr noundef null, ptr noundef null) #21
  %5 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 1
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %7, label %18, !prof !674

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %3, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !666
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11, !prof !1578

11:                                               ; preds = %7, %11
  %12 = phi ptr [ %16, %11 ], [ %9, %7 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !1579
  %14 = getelementptr inbounds %struct.tree_decl_non_common, ptr %13, i64 0, i32 1
  tail call fastcc void @unshare_body(ptr noundef nonnull %14, ptr noundef %13) #20
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %12, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !666
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %11, !prof !1580, !llvm.loop !1581

18:                                               ; preds = %11, %7, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unvisit_body(ptr noundef %0, ptr noundef %1) unnamed_addr #4 !prof !678 !PGOFuncName !1582 {
  %3 = tail call ptr @cgraph_node(ptr noundef %1) #21
  %4 = tail call ptr @walk_tree_1(ptr noundef %0, ptr noundef nonnull @unmark_visited_r, ptr noundef null, ptr noundef null, ptr noundef null) #21
  %5 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 1
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %7, label %18, !prof !674

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %3, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !666
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11, !prof !1578

11:                                               ; preds = %7, %11
  %12 = phi ptr [ %16, %11 ], [ %9, %7 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !1579
  %14 = getelementptr inbounds %struct.tree_decl_non_common, ptr %13, i64 0, i32 1
  tail call fastcc void @unvisit_body(ptr noundef nonnull %14, ptr noundef %13) #20
  %15 = getelementptr inbounds %struct.cgraph_node, ptr %12, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !666
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %11, !prof !1580, !llvm.loop !1583

18:                                               ; preds = %11, %7, %2
  ret void
}

; Function Attrs: optsize
declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gimplify_parameters() local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @gimple_build_nop() local_unnamed_addr #6

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @copy_if_shared_r(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2) #4 !prof !1584 !PGOFuncName !1585 {
  %4 = load ptr, ptr %0, align 8, !tbaa !666
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !710
  %9 = add i32 %8, -1
  %10 = icmp ult i32 %9, 3
  %11 = and i64 %5, 1099511627776
  %12 = icmp eq i64 %11, 0
  br i1 %10, label %13, label %17, !prof !1586

13:                                               ; preds = %3
  br i1 %12, label %15, label %14, !prof !1587

14:                                               ; preds = %13
  store i32 0, ptr %1, align 4, !tbaa !710
  br label %22

15:                                               ; preds = %13
  %16 = or disjoint i64 %5, 1099511627776
  store i64 %16, ptr %4, align 8
  br label %22

17:                                               ; preds = %3
  br i1 %12, label %20, label %18, !prof !1588

18:                                               ; preds = %17
  %19 = tail call ptr @walk_tree_1(ptr noundef nonnull %0, ptr noundef nonnull @mostly_copy_tree_r, ptr noundef null, ptr noundef null, ptr noundef null) #21
  store i32 0, ptr %1, align 4, !tbaa !710
  br label %22

20:                                               ; preds = %17
  %21 = or disjoint i64 %5, 1099511627776
  store i64 %21, ptr %4, align 8
  br label %22

22:                                               ; preds = %18, %20, %14, %15
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal noalias noundef ptr @unmark_visited_r(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2) #18 !prof !1584 !PGOFuncName !1589 {
  %4 = load ptr, ptr %0, align 8, !tbaa !666
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 1099511627776
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %10, label %8, !prof !1590

8:                                                ; preds = %3
  %9 = and i64 %5, -1099511627777
  store i64 %9, ptr %4, align 8
  br label %11

10:                                               ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !710
  br label %11

11:                                               ; preds = %10, %8
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimplify_function_tree(ptr noundef %0) local_unnamed_addr #4 !prof !678 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #22
  %5 = tail call ptr @gimple_body(ptr noundef %0) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !674

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7597, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %1, %7
  %9 = load ptr, ptr @current_function_decl, align 8, !tbaa !666
  store ptr %0, ptr @current_function_decl, align 8, !tbaa !666
  %10 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !655
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !866

13:                                               ; preds = %8
  tail call void @push_cfun(ptr noundef nonnull %11) #21
  br label %15

14:                                               ; preds = %8
  tail call void @push_struct_function(ptr noundef nonnull %0) #21
  br label %15

15:                                               ; preds = %14, %13
  %16 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !655
  %18 = icmp eq ptr %17, null
  br i1 %18, label %43, label %19, !prof !1591

19:                                               ; preds = %15, %39
  %20 = phi ptr [ %41, %39 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !655
  %23 = load i64, ptr %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = and i32 %24, 65535
  %26 = add nsw i32 %25, -13
  %27 = icmp ult i32 %26, 2
  br i1 %27, label %28, label %39, !prof !1592

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
  %41 = load ptr, ptr %40, align 8, !tbaa !655
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %19, !prof !1593, !llvm.loop !1594

43:                                               ; preds = %39, %15
  %44 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !655
  %46 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !655
  %48 = load i64, ptr %47, align 8
  %49 = trunc i64 %48 to i32
  %50 = and i32 %49, 65535
  %51 = add nsw i32 %50, -13
  %52 = icmp ult i32 %51, 2
  br i1 %52, label %53, label %60, !prof !1595

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
  store ptr %63, ptr %2, align 8, !tbaa !666
  call void @gimple_seq_add_stmt(ptr noundef nonnull %2, ptr noundef %62) #21
  %64 = load ptr, ptr %2, align 8, !tbaa !666
  call void @gimple_set_body(ptr noundef nonnull %0, ptr noundef %64) #21
  %65 = load i32, ptr @flag_instrument_function_entry_exit, align 4, !tbaa !710
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %88, label %67, !prof !674

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
  store ptr null, ptr %3, align 8, !tbaa !666
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !666
  %76 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 547), align 8, !tbaa !666
  %77 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %76, i32 noundef 0) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %3, ptr noundef %77) #20
  %78 = load ptr, ptr %2, align 8, !tbaa !666
  %79 = load ptr, ptr %3, align 8, !tbaa !666
  %80 = call ptr @gimple_build_try(ptr noundef %78, ptr noundef %79, i32 noundef 2) #21
  %81 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 546), align 16, !tbaa !666
  %82 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %81, i32 noundef 0) #21
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %4, ptr noundef %82) #20
  call fastcc void @gimplify_seq_add_stmt(ptr noundef nonnull %4, ptr noundef %80) #20
  %83 = load ptr, ptr %4, align 8, !tbaa !666
  %84 = call fastcc ptr @gimple_bind_block(ptr noundef %62) #20
  %85 = call ptr @gimple_build_bind(ptr noundef null, ptr noundef %83, ptr noundef %84) #21
  call fastcc void @gimple_bind_set_block(ptr noundef %62) #20
  %86 = call ptr @gimple_seq_alloc() #21
  store ptr %86, ptr %2, align 8, !tbaa !666
  call void @gimple_seq_add_stmt(ptr noundef nonnull %2, ptr noundef %85) #21
  %87 = load ptr, ptr %2, align 8, !tbaa !666
  call void @gimple_set_body(ptr noundef nonnull %0, ptr noundef %87) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #22
  br label %88

88:                                               ; preds = %75, %72, %67, %60
  store ptr null, ptr %61, align 8, !tbaa !655
  %89 = load ptr, ptr @cfun, align 8, !tbaa !666
  %90 = getelementptr inbounds %struct.function, ptr %89, i64 0, i32 17
  store i32 1, ptr %90, align 8, !tbaa !1596
  store ptr %9, ptr @current_function_decl, align 8, !tbaa !666
  call void @pop_cfun() #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #22
  ret void
}

; Function Attrs: optsize
declare void @push_cfun(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @push_struct_function(ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @gimple_seq_add_stmt(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @gimple_set_body(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare zeroext i8 @flag_instrument_functions_exclude_p(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_bind_set_block(ptr nocapture noundef writeonly %0) unnamed_addr #15 !prof !688 !PGOFuncName !1598 {
  %2 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 2
  store ptr null, ptr %2, align 8, !tbaa !655
  ret void
}

; Function Attrs: optsize
declare void @pop_cfun() local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimple_regimplify_operands(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 !prof !1599 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimplify_ctx, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca ptr, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #22
  store ptr null, ptr %3, align 8, !tbaa !666
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #22
  call void @push_gimplify_context(ptr noundef nonnull %4) #20
  %11 = load ptr, ptr @cfun, align 8, !tbaa !666
  %12 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %11) #20, !range !653
  %13 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %14 = getelementptr inbounds %struct.gimplify_ctx, ptr %13, i64 0, i32 10
  store i8 %12, ptr %14, align 1, !tbaa !738
  %15 = call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !684
  %16 = add nsw i32 %15, -1
  %17 = call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 31)
  switch i32 %17, label %93 [
    i32 0, label %18
    i32 2, label %23
    i32 9, label %26
    i32 3, label %29
  ], !prof !1600

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
  %30 = call fastcc i32 @gimple_asm_noutputs(ptr noundef %0) #20, !range !684
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
  %36 = call fastcc i32 @gimple_asm_ninputs(ptr noundef %0) #20, !range !684
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %92, label %56

38:                                               ; preds = %29, %38
  %39 = phi i64 [ %54, %38 ], [ 0, %29 ]
  %40 = trunc i64 %39 to i32
  %41 = call fastcc ptr @gimple_asm_output_op(ptr noundef %0, i32 noundef %40) #20
  %42 = getelementptr inbounds %struct.tree_list, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !655
  %44 = getelementptr inbounds %struct.tree_list, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !655
  %46 = getelementptr inbounds %struct.tree_string, ptr %45, i64 0, i32 2
  store ptr %46, ptr %5, align 8, !tbaa !666
  %47 = getelementptr inbounds ptr, ptr %33, i64 %39
  store ptr %46, ptr %47, align 8, !tbaa !666
  %48 = call zeroext i8 @parse_output_constraint(ptr noundef nonnull %5, i32 noundef %40, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8) #21
  %49 = getelementptr inbounds %struct.tree_list, ptr %41, i64 0, i32 2
  %50 = load i8, ptr %8, align 1, !tbaa !655
  %51 = icmp eq i8 %50, 0
  %52 = select i1 %51, ptr @is_gimple_lvalue, ptr @is_gimple_min_lval
  %53 = call i32 @gimplify_expr(ptr noundef nonnull %49, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %52, i32 noundef 6) #20
  %54 = add nuw nsw i64 %39, 1
  %55 = icmp eq i64 %54, %31
  br i1 %55, label %35, label %38, !llvm.loop !1601

56:                                               ; preds = %35, %87
  %57 = phi i64 [ %88, %87 ], [ 0, %35 ]
  %58 = trunc i64 %57 to i32
  %59 = call fastcc ptr @gimple_asm_input_op(ptr noundef %0, i32 noundef %58) #20
  %60 = getelementptr inbounds %struct.tree_list, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !655
  %62 = getelementptr inbounds %struct.tree_list, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !655
  %64 = getelementptr inbounds %struct.tree_string, ptr %63, i64 0, i32 2
  store ptr %64, ptr %5, align 8, !tbaa !666
  %65 = call zeroext i8 @parse_input_constraint(ptr noundef nonnull %5, i32 noundef 0, i32 noundef 0, i32 noundef %30, i32 noundef 0, ptr noundef nonnull %33, ptr noundef nonnull %6, ptr noundef nonnull %7) #21
  %66 = getelementptr inbounds %struct.tree_list, ptr %59, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !655
  %68 = getelementptr inbounds %struct.tree_common, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !655
  %70 = load i64, ptr %69, align 8
  %71 = and i64 %70, 262144
  %72 = icmp ne i64 %71, 0
  %73 = load i8, ptr %6, align 1
  %74 = icmp ne i8 %73, 0
  %75 = select i1 %72, i1 %74, i1 false
  br i1 %75, label %78, label %76

76:                                               ; preds = %56
  %77 = load i8, ptr %7, align 1, !tbaa !655
  br label %79

78:                                               ; preds = %56
  store i8 0, ptr %7, align 1, !tbaa !655
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
  %89 = call fastcc i32 @gimple_asm_ninputs(ptr noundef %0) #20, !range !684
  %90 = zext nneg i32 %89 to i64
  %91 = icmp ult i64 %88, %90
  br i1 %91, label %56, label %92, !llvm.loop !1602

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
  br i1 %96, label %144, label %97, !prof !1603

97:                                               ; preds = %93
  %98 = zext i32 %94 to i64
  br label %99

99:                                               ; preds = %97, %141
  %100 = phi i64 [ %98, %97 ], [ %142, %141 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #22
  %101 = trunc i64 %100 to i32
  %102 = add i32 %101, -1
  %103 = call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %102) #20
  store ptr %103, ptr %9, align 8, !tbaa !666
  %104 = icmp eq ptr %103, null
  br i1 %104, label %141, label %105, !prof !1604

105:                                              ; preds = %99
  switch i64 %100, label %137 [
    i64 1, label %106
    i64 2, label %114
  ], !prof !1605

106:                                              ; preds = %105
  %107 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #20, !range !653
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %112, !prof !1606

109:                                              ; preds = %106
  %110 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !653
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %137, label %112, !prof !1607

112:                                              ; preds = %109, %106
  %113 = call i32 @gimplify_expr(ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @is_gimple_lvalue, i32 noundef 2) #20
  br label %139

114:                                              ; preds = %105
  %115 = icmp eq i32 %94, 2
  %116 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !653
  %117 = icmp ne i8 %116, 0
  %118 = select i1 %117, i1 %115, i1 false
  br i1 %118, label %119, label %127, !prof !1608

119:                                              ; preds = %114
  %120 = call fastcc i32 @gimple_expr_code(ptr noundef %0) #20, !range !1609
  %121 = call fastcc i32 @get_gimple_rhs_class(i32 noundef %120) #20, !range !684
  %122 = icmp eq i32 %121, 3
  br i1 %122, label %123, label %127, !prof !1610

123:                                              ; preds = %119
  %124 = call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #20
  %125 = call ptr @rhs_predicate_for(ptr noundef %124) #20
  %126 = call i32 @gimplify_expr(ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull %125, i32 noundef 1) #20
  br label %139

127:                                              ; preds = %114, %119
  %128 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #20, !range !653
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %137, label %130, !prof !1611

130:                                              ; preds = %127
  %131 = load ptr, ptr %9, align 8, !tbaa !666
  %132 = load i64, ptr %131, align 8
  %133 = and i64 %132, 65535
  %134 = icmp eq i64 %133, 29
  br i1 %134, label %141, label %135

135:                                              ; preds = %130
  %136 = call i32 @gimplify_expr(ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @is_gimple_call_addr, i32 noundef 1) #20
  br label %139

137:                                              ; preds = %105, %109, %127
  %138 = call i32 @gimplify_expr(ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef null, ptr noundef nonnull @is_gimple_val, i32 noundef 1) #20
  br label %139

139:                                              ; preds = %123, %137, %135, %112
  %140 = load ptr, ptr %9, align 8, !tbaa !666
  call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %102, ptr noundef %140) #20
  br label %141

141:                                              ; preds = %130, %99, %139
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #22
  %142 = add nsw i64 %100, -1
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %99, !prof !1612, !llvm.loop !1613

144:                                              ; preds = %141, %93
  %145 = call ptr @gimple_get_lhs(ptr noundef %0) #21
  %146 = icmp eq ptr %145, null
  br i1 %146, label %252, label %147, !prof !1607

147:                                              ; preds = %144
  %148 = call zeroext i8 @is_gimple_reg(ptr noundef nonnull %145) #21
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %252, !prof !1610

150:                                              ; preds = %147
  %151 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #20, !range !653
  %152 = icmp ne i8 %151, 0
  %153 = icmp eq i32 %94, 2
  %154 = select i1 %152, i1 %153, i1 false
  br i1 %154, label %155, label %164, !prof !1614

155:                                              ; preds = %150
  %156 = call fastcc i32 @gimple_expr_code(ptr noundef %0) #20, !range !1609
  %157 = call fastcc i32 @get_gimple_rhs_class(i32 noundef %156) #20, !range !684
  %158 = icmp eq i32 %157, 3
  br i1 %158, label %159, label %164, !prof !1615

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
  %168 = load ptr, ptr %167, align 8, !tbaa !655
  %169 = call zeroext i8 @is_gimple_reg_type(ptr noundef %168) #21
  %170 = icmp eq i8 %169, 0
  br i1 %166, label %189, label %171

171:                                              ; preds = %164
  br i1 %170, label %252, label %172

172:                                              ; preds = %171
  %173 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #20, !range !653
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
  br i1 %185, label %252, label %224, !prof !1616

186:                                              ; preds = %172
  %187 = call zeroext i8 @stmt_can_throw_internal(ptr noundef %0) #21
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %252, label %224

189:                                              ; preds = %164
  br i1 %170, label %190, label %224

190:                                              ; preds = %189
  %191 = load ptr, ptr %167, align 8, !tbaa !655
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
  %206 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #20, !range !653
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %224, label %208

208:                                              ; preds = %205
  %209 = call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #20
  %210 = load ptr, ptr %167, align 8, !tbaa !655
  %211 = call i32 @aggregate_value_p(ptr noundef %210, ptr noundef %209) #21
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %252

213:                                              ; preds = %208
  %214 = icmp eq ptr %209, null
  br i1 %214, label %224, label %215

215:                                              ; preds = %213
  %216 = getelementptr inbounds %struct.tree_decl_non_common, ptr %209, i64 0, i32 3
  %217 = load ptr, ptr %216, align 8, !tbaa !655
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
  %226 = load ptr, ptr %225, align 8, !tbaa !655
  %227 = call ptr @create_tmp_var(ptr noundef %226, ptr noundef null) #20
  %228 = load ptr, ptr %225, align 8, !tbaa !655
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
  %239 = load ptr, ptr @cfun, align 8, !tbaa !666
  %240 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %239) #20, !range !653
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
  store ptr %246, ptr %251, align 8, !tbaa !655
  br label %252

252:                                              ; preds = %175, %219, %208, %202, %171, %159, %186, %250, %244, %144, %147, %92, %26, %23, %18
  %253 = phi ptr [ null, %147 ], [ null, %144 ], [ null, %92 ], [ null, %26 ], [ null, %23 ], [ null, %18 ], [ %246, %250 ], [ %246, %244 ], [ null, %186 ], [ null, %159 ], [ null, %171 ], [ null, %202 ], [ null, %208 ], [ null, %219 ], [ null, %175 ]
  %254 = load ptr, ptr @cfun, align 8, !tbaa !666
  %255 = call fastcc ptr @gimple_referenced_vars(ptr noundef %254) #20
  %256 = icmp eq ptr %255, null
  br i1 %256, label %268, label %257, !prof !1607

257:                                              ; preds = %252
  %258 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %259 = getelementptr inbounds %struct.gimplify_ctx, ptr %258, i64 0, i32 2
  %260 = load ptr, ptr %259, align 8, !tbaa !655
  %261 = icmp eq ptr %260, null
  br i1 %261, label %268, label %262, !prof !1617

262:                                              ; preds = %257, %262
  %263 = phi ptr [ %266, %262 ], [ %260, %257 ]
  %264 = call zeroext i8 @add_referenced_var(ptr noundef nonnull %263) #21
  %265 = getelementptr inbounds %struct.tree_common, ptr %263, i64 0, i32 1
  %266 = load ptr, ptr %265, align 8, !tbaa !655
  %267 = icmp eq ptr %266, null
  br i1 %267, label %268, label %262, !prof !1580, !llvm.loop !1618

268:                                              ; preds = %262, %257, %252
  %269 = load ptr, ptr %3, align 8, !tbaa !666
  %270 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %269) #20, !range !653
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %272, label %287, !prof !1607

272:                                              ; preds = %268
  %273 = load ptr, ptr @cfun, align 8, !tbaa !666
  %274 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %273) #20, !range !653
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %285, label %276

276:                                              ; preds = %272
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #22
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef %269) #20
  %277 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %10) #20, !range !653
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %276, %279
  %280 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %10) #20
  call void @mark_symbols_for_renaming(ptr noundef %280) #21
  call fastcc void @gsi_next(ptr noundef nonnull %10) #20
  %281 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %10) #20, !range !653
  %282 = icmp eq i8 %281, 0
  br i1 %282, label %279, label %283, !llvm.loop !1619

283:                                              ; preds = %279, %276
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #22
  %284 = load ptr, ptr %3, align 8, !tbaa !666
  br label %285

285:                                              ; preds = %283, %272
  %286 = phi ptr [ %284, %283 ], [ %269, %272 ]
  call void @gsi_insert_seq_before(ptr noundef %1, ptr noundef %286, i32 noundef 1) #21
  br label %287

287:                                              ; preds = %285, %268
  %288 = icmp eq ptr %253, null
  br i1 %288, label %290, label %289, !prof !1606

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
define internal fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef readonly %0) unnamed_addr #9 !prof !1620 !PGOFuncName !1621 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3, !prof !1622

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !1623
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7, !prof !1624

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
define internal fastcc ptr @gimple_cond_lhs_ptr(ptr noundef %0) unnamed_addr #4 !prof !688 !PGOFuncName !1625 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs_ptr(ptr noundef %0) unnamed_addr #4 !prof !688 !PGOFuncName !1626 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_index_ptr(ptr noundef %0) unnamed_addr #4 !prof !688 !PGOFuncName !1627 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_omp_atomic_load_rhs_ptr(ptr noundef readnone %0) unnamed_addr #14 !prof !688 !PGOFuncName !1628 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_noutputs(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !688 !PGOFuncName !1629 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !655
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_output_op(ptr noundef %0, i32 noundef %1) unnamed_addr #4 !prof !688 !PGOFuncName !1630 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !655
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 2655, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !655
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, %1
  %13 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %12) #20
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_ninputs(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !688 !PGOFuncName !1631 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !655
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_input_op(ptr noundef %0, i32 noundef %1) unnamed_addr #4 !prof !688 !PGOFuncName !1632 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !655
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 2622, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %2, %7
  %9 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %1) #20
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #4 !prof !1633 !PGOFuncName !1634 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !653
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !1635

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !666
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !1636 !PGOFuncName !1637 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !684
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !1638 !PGOFuncName !1639 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !684
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !1640 !PGOFuncName !1641 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !684
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !1642

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 1446, ptr noundef nonnull @.str.1) #21
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #4 !prof !1643 !PGOFuncName !1644 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef %0) unnamed_addr #4 !prof !1645 !PGOFuncName !1646 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @stmt_can_throw_internal(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #4 !prof !688 !PGOFuncName !1647 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #20
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !655
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_referenced_vars(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !1648 !PGOFuncName !1649 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1623
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1650

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !1651
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
define internal fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #4 !prof !1645 !PGOFuncName !1655 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !653
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5, !prof !1656

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi ptr [ %8, %5 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #4 !prof !688 !PGOFuncName !1657 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @force_gimple_operand(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #4 !prof !1658 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.gimplify_ctx, align 8
  store ptr %0, ptr %5, align 8, !tbaa !666
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %6) #22
  store ptr null, ptr %1, align 8, !tbaa !666
  %7 = tail call zeroext i8 @is_gimple_val(ptr noundef %0) #21
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %54, !prof !1659

9:                                                ; preds = %4
  %10 = icmp eq i8 %2, 0
  %11 = select i1 %10, ptr @is_gimple_reg_rhs, ptr @is_gimple_val
  call void @push_gimplify_context(ptr noundef nonnull %6) #20
  %12 = load ptr, ptr @cfun, align 8, !tbaa !666
  %13 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %12) #20, !range !653
  %14 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %15 = getelementptr inbounds %struct.gimplify_ctx, ptr %14, i64 0, i32 10
  store i8 %13, ptr %15, align 1, !tbaa !738
  %16 = getelementptr inbounds %struct.gimplify_ctx, ptr %14, i64 0, i32 11
  store i8 1, ptr %16, align 2, !tbaa !1027
  %17 = icmp eq ptr %3, null
  br i1 %17, label %22, label %18, !prof !1660

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !655
  %21 = call ptr @build2_stat(i32 noundef 53, ptr noundef %20, ptr noundef nonnull %3, ptr noundef %0) #21
  store ptr %21, ptr %5, align 8, !tbaa !666
  br label %22

22:                                               ; preds = %18, %9
  %23 = phi ptr [ %21, %18 ], [ %0, %9 ]
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 53
  br i1 %26, label %33, label %27, !prof !1661

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !655
  %30 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !666
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %32, label %33, !prof !1662

32:                                               ; preds = %27
  call void @gimplify_and_add(ptr noundef nonnull %23, ptr noundef nonnull %1) #20
  store ptr null, ptr %5, align 8, !tbaa !666
  br label %37

33:                                               ; preds = %27, %22
  %34 = call i32 @gimplify_expr(ptr noundef nonnull %5, ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %11, i32 noundef 1) #20
  %35 = icmp eq i32 %34, -2
  br i1 %35, label %36, label %37, !prof !1663

36:                                               ; preds = %33
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 7901, ptr noundef nonnull @.str.1) #21
  br label %37

37:                                               ; preds = %36, %33, %32
  %38 = load ptr, ptr @cfun, align 8, !tbaa !666
  %39 = call fastcc ptr @gimple_referenced_vars(ptr noundef %38) #20
  %40 = icmp eq ptr %39, null
  br i1 %40, label %52, label %41, !prof !1664

41:                                               ; preds = %37
  %42 = load ptr, ptr @gimplify_ctxp, align 8, !tbaa !666
  %43 = getelementptr inbounds %struct.gimplify_ctx, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !655
  %45 = icmp eq ptr %44, null
  br i1 %45, label %52, label %46, !prof !1665

46:                                               ; preds = %41, %46
  %47 = phi ptr [ %50, %46 ], [ %44, %41 ]
  %48 = call zeroext i8 @add_referenced_var(ptr noundef nonnull %47) #21
  %49 = getelementptr inbounds %struct.tree_common, ptr %47, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !655
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %46, !prof !1666, !llvm.loop !1667

52:                                               ; preds = %46, %41, %37
  call void @pop_gimplify_context(ptr noundef null) #20
  %53 = load ptr, ptr %5, align 8, !tbaa !666
  br label %54

54:                                               ; preds = %4, %52
  %55 = phi ptr [ %0, %4 ], [ %53, %52 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %6) #22
  ret ptr %55
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @force_gimple_operand_gsi(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3, i8 noundef zeroext %4, i32 noundef %5) local_unnamed_addr #4 !prof !1668 {
  %7 = alloca ptr, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #22
  %9 = call ptr @force_gimple_operand(ptr noundef %1, ptr noundef nonnull %7, i8 noundef zeroext %2, ptr noundef %3) #20
  %10 = load ptr, ptr %7, align 8, !tbaa !666
  %11 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %10) #20, !range !653
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %30, !prof !1669

13:                                               ; preds = %6
  %14 = load ptr, ptr @cfun, align 8, !tbaa !666
  %15 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %14) #20, !range !653
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %25, label %17, !prof !1670

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #22
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef %10) #20
  %18 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %8) #20, !range !653
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %24, !prof !1671

20:                                               ; preds = %17, %20
  %21 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %8) #20
  call void @mark_symbols_for_renaming(ptr noundef %21) #21
  call fastcc void @gsi_next(ptr noundef nonnull %8) #20
  %22 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %8) #20, !range !653
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %20, label %24, !prof !1672, !llvm.loop !1673

24:                                               ; preds = %20, %17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #22
  br label %25

25:                                               ; preds = %24, %13
  %26 = icmp eq i8 %4, 0
  %27 = load ptr, ptr %7, align 8, !tbaa !666
  br i1 %26, label %29, label %28, !prof !1674

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
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { optsize }
attributes #21 = { nounwind optsize }
attributes #22 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!651}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650}
!36 = !{ptr @mark_addressable, ptr @handled_component_p, i64 282735}
!37 = !{ptr @pop_gimplify_context, ptr @VEC_gimple_base_length, i64 8964}
!38 = !{ptr @pop_gimplify_context, ptr @fancy_abort, i64 2}
!39 = !{ptr @pop_gimplify_context, ptr @VEC_gimple_heap_free, i64 52962}
!40 = !{ptr @pop_gimplify_context, ptr @declare_vars, i64 8965}
!41 = !{ptr @pop_gimplify_context, ptr @record_vars, i64 43997}
!42 = !{ptr @pop_gimplify_context, ptr @htab_delete, i64 21236}
!43 = !{ptr @VEC_gimple_heap_free, ptr @free, i64 8965}
!44 = !{ptr @declare_vars, ptr @gimple_code, i64 8688}
!45 = !{ptr @declare_vars, ptr @fancy_abort, i64 2}
!46 = !{ptr @declare_vars, ptr @nreverse, i64 8688}
!47 = !{ptr @declare_vars, ptr @gimple_bind_block, i64 8688}
!48 = !{ptr @declare_vars, ptr @gimple_bind_vars, i64 8687}
!49 = !{ptr @declare_vars, ptr @gimple_bind_set_vars, i64 8687}
!50 = !{ptr @declare_vars, ptr @chainon, i64 1}
!51 = !{ptr @append_to_statement_list, ptr @append_to_statement_list_1, i64 108240}
!52 = !{ptr @append_to_statement_list_1, ptr @alloc_stmt_list, i64 21000}
!53 = !{ptr @append_to_statement_list_1, ptr @tsi_last, i64 536280}
!54 = !{ptr @append_to_statement_list_1, ptr @tsi_link_after, i64 536280}
!55 = !{ptr @append_to_statement_list_force, ptr @append_to_statement_list_1, i64 445059}
!56 = !{ptr @gimplify_and_add, ptr @gimplify_stmt, i64 343872}
!57 = !{ptr @gimplify_stmt, ptr @gimple_seq_alloc, i64 58946}
!58 = !{ptr @gimplify_stmt, ptr @gimple_seq_last, i64 1775966}
!59 = !{ptr @gimplify_stmt, ptr @gimplify_expr, i64 887983}
!60 = !{ptr @create_tmp_var_name, ptr @strlen, i64 782614}
!61 = !{ptr @create_tmp_var_name, ptr @remove_suffix, i64 260871}
!62 = !{ptr @create_tmp_var_name, ptr @sprintf, i64 260872}
!63 = !{ptr @create_tmp_var_name, ptr @get_identifier, i64 260872}
!64 = !{ptr @create_tmp_var_raw, ptr @build_qualified_type, i64 423381}
!65 = !{ptr @create_tmp_var_raw, ptr @create_tmp_var_name, i64 257862}
!66 = !{ptr @create_tmp_var_raw, ptr @build_decl_stat, i64 423381}
!67 = !{ptr @create_tmp_var, ptr @fancy_abort, i64 2}
!68 = !{ptr @create_tmp_var, ptr @create_tmp_var_raw, i64 366034}
!69 = !{ptr @create_tmp_var, ptr @gimple_add_tmp_var, i64 366034}
!70 = !{ptr @gimple_add_tmp_var, ptr @fancy_abort, i64 2}
!71 = !{ptr @gimple_add_tmp_var, ptr @host_integerp, i64 368247}
!72 = !{ptr @gimple_add_tmp_var, ptr @force_constant_size, i64 1}
!73 = !{ptr @gimple_add_tmp_var, ptr @omp_add_variable, i64 1}
!74 = !{ptr @gimple_add_tmp_var, ptr @record_vars, i64 185401}
!75 = !{ptr @gimple_add_tmp_var, ptr @gimple_body, i64 1}
!76 = !{ptr @gimple_add_tmp_var, ptr @gimple_seq_first_stmt, i64 1}
!77 = !{ptr @gimple_add_tmp_var, ptr @declare_vars, i64 1}
!78 = !{ptr @get_formal_tmp_var, ptr @internal_get_tmp_var, i64 302859}
!79 = !{ptr @internal_get_tmp_var, ptr @gimplify_expr, i64 305616}
!80 = !{ptr @internal_get_tmp_var, ptr @lookup_tmp_var, i64 305616}
!81 = !{ptr @internal_get_tmp_var, ptr @unshare_expr, i64 305616}
!82 = !{ptr @internal_get_tmp_var, ptr @build2_stat, i64 305616}
!83 = !{ptr @internal_get_tmp_var, ptr @gimplify_and_add, i64 305616}
!84 = !{ptr @internal_get_tmp_var, ptr @ggc_free, i64 305616}
!85 = !{ptr @internal_get_tmp_var, ptr @gimple_seq_last_stmt, i64 13078}
!86 = !{ptr @internal_get_tmp_var, ptr @gimple_get_lhs, i64 13078}
!87 = !{ptr @gimplify_expr, ptr @fancy_abort, i64 19}
!88 = !{ptr @gimplify_expr, ptr @gsi_last, i64 8833720}
!89 = !{ptr @gimplify_expr, ptr @tree_ssa_strip_useless_type_conversions, i64 4560343}
!90 = !{ptr @gimplify_expr, ptr @gimplify_self_mod_expr, i64 5722}
!91 = !{ptr @gimplify_expr, ptr @gimplify_compound_lval, i64 421719}
!92 = !{ptr @gimplify_expr, ptr @gimplify_cond_expr, i64 127714}
!93 = !{ptr @gimplify_expr, ptr @get_initialized_tmp_var, i64 440}
!94 = !{ptr @gimplify_expr, ptr @mark_addressable, i64 3}
!95 = !{ptr @gimplify_expr, ptr @gimplify_call_expr, i64 162422}
!96 = !{ptr @gimplify_expr, ptr @gimplify_compound_expr, i64 1039}
!97 = !{ptr @gimplify_expr, ptr @gimplify_compound_literal_expr, i64 1}
!98 = !{ptr @gimplify_expr, ptr @gimplify_modify_expr, i64 450096}
!99 = !{ptr @gimplify_expr, ptr @gimplify_boolean_expr, i64 678}
!100 = !{ptr @gimplify_expr, ptr @gimple_boolify, i64 1}
!101 = !{ptr @gimplify_expr, ptr @fold_convert_loc, i64 2}
!102 = !{ptr @gimplify_expr, ptr @gimplify_expr, i64 1150224}
!103 = !{ptr @gimplify_expr, ptr @recalculate_side_effects, i64 817995}
!104 = !{ptr @gimplify_expr, ptr @gimplify_addr_expr, i64 208941}
!105 = !{ptr @gimplify_expr, ptr @gimplify_va_arg_expr, i64 53}
!106 = !{ptr @gimplify_expr, ptr @integer_zerop, i64 121}
!107 = !{ptr @gimplify_expr, ptr @gimplify_conversion, i64 137580}
!108 = !{ptr @gimplify_expr, ptr @fold_indirect_ref_loc, i64 368977}
!109 = !{ptr @gimplify_expr, ptr @gimplify_decl_expr, i64 31132}
!110 = !{ptr @gimplify_expr, ptr @gimplify_bind_expr, i64 17051}
!111 = !{ptr @gimplify_expr, ptr @gimplify_loop_expr, i64 1}
!112 = !{ptr @gimplify_expr, ptr @gimplify_switch_expr, i64 1582}
!113 = !{ptr @gimplify_expr, ptr @gimplify_exit_expr, i64 1}
!114 = !{ptr @gimplify_expr, ptr @gimple_build_goto, i64 29265}
!115 = !{ptr @gimplify_expr, ptr @gimplify_seq_add_stmt, i64 84981}
!116 = !{ptr @gimplify_expr, ptr @tree_low_cst, i64 1057}
!117 = !{ptr @gimplify_expr, ptr @gimple_build_predict, i64 1057}
!118 = !{ptr @gimplify_expr, ptr @decl_function_context, i64 54652}
!119 = !{ptr @gimplify_expr, ptr @gimple_build_label, i64 54652}
!120 = !{ptr @gimplify_expr, ptr @gimplify_case_label_expr, i64 26694}
!121 = !{ptr @gimplify_expr, ptr @gimplify_return_expr, i64 25934}
!122 = !{ptr @gimplify_expr, ptr @VEC_constructor_elt_base_iterate, i64 11}
!123 = !{ptr @gimplify_expr, ptr @append_to_statement_list, i64 5}
!124 = !{ptr @gimplify_expr, ptr @gimplify_save_expr, i64 4616}
!125 = !{ptr @gimplify_expr, ptr @gimplify_asm_expr, i64 2}
!126 = !{ptr @gimplify_expr, ptr @gimplify_and_add, i64 10}
!127 = !{ptr @gimplify_expr, ptr @gimple_seq_empty_p, i64 7404114}
!128 = !{ptr @gimplify_expr, ptr @gimple_seq_add_seq, i64 1}
!129 = !{ptr @gimplify_expr, ptr @gimple_build_try, i64 1}
!130 = !{ptr @gimplify_expr, ptr @gimplify_cleanup_point_expr, i64 1}
!131 = !{ptr @gimplify_expr, ptr @gimplify_target_expr, i64 101}
!132 = !{ptr @gimplify_expr, ptr @gimple_build_catch, i64 1}
!133 = !{ptr @gimplify_expr, ptr @gimple_build_eh_filter, i64 1}
!134 = !{ptr @gimplify_expr, ptr @gimple_set_no_warning, i64 1}
!135 = !{ptr @gimplify_expr, ptr @gimplify_statement_list, i64 41487}
!136 = !{ptr @gimplify_expr, ptr @gimplify_var_or_parm_decl, i64 1452398}
!137 = !{ptr @gimplify_expr, ptr @omp_notice_variable, i64 1}
!138 = !{ptr @gimplify_expr, ptr @gimplify_omp_parallel, i64 1}
!139 = !{ptr @gimplify_expr, ptr @gimplify_omp_task, i64 1}
!140 = !{ptr @gimplify_expr, ptr @gimplify_omp_for, i64 1}
!141 = !{ptr @gimplify_expr, ptr @gimplify_omp_workshare, i64 2}
!142 = !{ptr @gimplify_expr, ptr @gimple_build_omp_section, i64 1}
!143 = !{ptr @gimplify_expr, ptr @gimple_build_omp_master, i64 1}
!144 = !{ptr @gimplify_expr, ptr @gimple_build_omp_ordered, i64 1}
!145 = !{ptr @gimplify_expr, ptr @gimple_build_omp_critical, i64 1}
!146 = !{ptr @gimplify_expr, ptr @gimplify_omp_atomic, i64 1}
!147 = !{ptr @gimplify_expr, ptr @maybe_fold_offset_to_address, i64 21073}
!148 = !{ptr @gimplify_expr, ptr @vector_type_mode, i64 2}
!149 = !{ptr @gimplify_expr, ptr @gimplify_scalar_mode_aggregate_compare, i64 2}
!150 = !{ptr @gimplify_expr, ptr @gimplify_variable_sized_compare, i64 2}
!151 = !{ptr @gimplify_expr, ptr @is_gimple_stmt, i64 176618}
!152 = !{ptr @gimplify_expr, ptr @gimplify_seq_add_seq, i64 1539}
!153 = !{ptr @gimplify_expr, ptr @annotate_all_with_location_after, i64 793236}
!154 = !{ptr @gimplify_expr, ptr @is_gimple_addressable, i64 283}
!155 = !{ptr @gimplify_expr, ptr @build_fold_addr_expr_loc, i64 1}
!156 = !{ptr @gimplify_expr, ptr @build1_stat, i64 1}
!157 = !{ptr @gimplify_expr, ptr @is_gimple_reg_rhs_or_call, i64 300927}
!158 = !{ptr @gimplify_expr, ptr @get_formal_tmp_var, i64 300489}
!159 = !{ptr @gimplify_expr, ptr @annotate_all_with_location, i64 153}
!160 = !{ptr @is_gimple_reg_rhs_or_call, ptr @get_gimple_rhs_class, i64 1020628}
!161 = !{ptr @lookup_tmp_var, ptr @create_tmp_from_val, i64 172228}
!162 = !{ptr @lookup_tmp_var, ptr @htab_create, i64 21237}
!163 = !{ptr @lookup_tmp_var, ptr @htab_find_slot, i64 266902}
!164 = !{ptr @lookup_tmp_var, ptr @xmalloc, i64 133514}
!165 = !{ptr @unshare_expr, ptr @walk_tree_1, i64 5101152}
!166 = !{ptr @gimple_seq_last_stmt, ptr @gimple_seq_last, i64 13077}
!167 = !{ptr @create_tmp_from_val, ptr @get_name, i64 172226}
!168 = !{ptr @create_tmp_from_val, ptr @create_tmp_var, i64 172226}
!169 = !{ptr @gimple_tree_hash, ptr @iterative_hash_expr, i64 538277}
!170 = !{ptr @gimple_tree_eq, ptr @operand_equal_p, i64 137565}
!171 = !{ptr @gimple_tree_eq, ptr @gimple_tree_hash, i64 266774}
!172 = !{ptr @gimple_tree_eq, ptr @fancy_abort, i64 1}
!173 = !{ptr @get_initialized_tmp_var, ptr @internal_get_tmp_var, i64 2757}
!174 = !{ptr @gimple_seq_first_stmt, ptr @gimple_seq_first, i64 8964}
!175 = !{ptr @annotate_all_with_location, ptr @gimple_seq_empty_p, i64 219}
!176 = !{ptr @annotate_all_with_location, ptr @gsi_start, i64 218}
!177 = !{ptr @annotate_all_with_location, ptr @gsi_end_p, i64 603}
!178 = !{ptr @annotate_all_with_location, ptr @gsi_stmt, i64 385}
!179 = !{ptr @annotate_all_with_location, ptr @annotate_one_with_location, i64 385}
!180 = !{ptr @annotate_all_with_location, ptr @gsi_next, i64 385}
!181 = !{ptr @gsi_start, ptr @gimple_seq_first, i64 129060}
!182 = !{ptr @gsi_start, ptr @gimple_bb, i64 129058}
!183 = !{ptr @annotate_one_with_location, ptr @gimple_has_location, i64 5861755}
!184 = !{ptr @annotate_one_with_location, ptr @gimple_do_not_emit_location_p, i64 1823387}
!185 = !{ptr @annotate_one_with_location, ptr @should_carry_location_p, i64 1777926}
!186 = !{ptr @annotate_one_with_location, ptr @gimple_set_location, i64 287071}
!187 = !{ptr @gimple_has_location, ptr @gimple_location, i64 5861755}
!188 = !{ptr @gimple_do_not_emit_location_p, ptr @gimple_plf, i64 1823387}
!189 = !{ptr @should_carry_location_p, ptr @gimple_code, i64 1777927}
!190 = !{ptr @mostly_copy_tree_r, ptr @copy_tree_r, i64 1058811}
!191 = !{ptr @voidify_wrapper_expr, ptr @tsi_last, i64 2}
!192 = !{ptr @voidify_wrapper_expr, ptr @tsi_end_p, i64 2}
!193 = !{ptr @voidify_wrapper_expr, ptr @tsi_stmt_ptr, i64 2}
!194 = !{ptr @sort_case_labels, ptr @VEC_tree_base_length, i64 1551}
!195 = !{ptr @sort_case_labels, ptr @VEC_tree_base_address, i64 1551}
!196 = !{ptr @sort_case_labels, ptr @spec_qsort, i64 1551}
!197 = !{ptr @compare_case_labels, ptr @tree_int_cst_compare, i64 148613}
!198 = !{ptr @build_and_jump, ptr @create_artificial_label, i64 43113}
!199 = !{ptr @build_and_jump, ptr @build1_stat, i64 71461}
!200 = !{ptr @gimple_boolify, ptr @integer_zerop, i64 13323}
!201 = !{ptr @gimple_boolify, ptr @get_callee_fndecl, i64 13126}
!202 = !{ptr @gimple_boolify, ptr @truth_value_p, i64 6}
!203 = !{ptr @gimple_boolify, ptr @gimple_boolify, i64 81139}
!204 = !{ptr @gimple_boolify, ptr @fold_convert_loc, i64 5273}
!205 = !{ptr @rhs_predicate_for, ptr @is_gimple_reg, i64 444164}
!206 = !{ptr @is_gimple_mem_rhs_or_call, ptr @is_gimple_reg_type, i64 45846}
!207 = !{ptr @is_gimple_mem_rhs_or_call, ptr @is_gimple_val, i64 45846}
!208 = !{ptr @is_gimple_mem_rhs_or_call, ptr @is_gimple_lvalue, i64 1506}
!209 = !{ptr @gimple_fold_indirect_ref, ptr @tree_strip_nop_conversions, i64 237637}
!210 = !{ptr @gimple_fold_indirect_ref, ptr @useless_type_conversion_p, i64 8759}
!211 = !{ptr @gimple_fold_indirect_ref, ptr @fold_build1_stat_loc, i64 1}
!212 = !{ptr @gimple_fold_indirect_ref, ptr @size_int_kind, i64 1}
!213 = !{ptr @gimple_fold_indirect_ref, ptr @fold_build3_stat_loc, i64 1}
!214 = !{ptr @gimple_fold_indirect_ref, ptr @gimple_fold_indirect_ref, i64 1}
!215 = !{ptr @gsi_last, ptr @gimple_seq_last, i64 9727018}
!216 = !{ptr @gsi_last, ptr @gimple_bb, i64 4563523}
!217 = !{ptr @gimplify_self_mod_expr, ptr @fancy_abort, i64 1}
!218 = !{ptr @gimplify_self_mod_expr, ptr @gimplify_expr, i64 6523}
!219 = !{ptr @gimplify_self_mod_expr, ptr @is_gimple_min_lval, i64 900}
!220 = !{ptr @gimplify_self_mod_expr, ptr @mark_addressable, i64 2}
!221 = !{ptr @gimplify_self_mod_expr, ptr @build_fold_addr_expr_loc, i64 2}
!222 = !{ptr @gimplify_self_mod_expr, ptr @build_fold_indirect_ref_loc, i64 2}
!223 = !{ptr @gimplify_self_mod_expr, ptr @fold_convert_loc, i64 927}
!224 = !{ptr @gimplify_self_mod_expr, ptr @fold_build1_stat_loc, i64 309}
!225 = !{ptr @gimplify_self_mod_expr, ptr @build2_stat, i64 10339}
!226 = !{ptr @gimplify_self_mod_expr, ptr @gimplify_assign, i64 899}
!227 = !{ptr @gimplify_self_mod_expr, ptr @gimplify_seq_add_seq, i64 899}
!228 = !{ptr @gimplify_compound_lval, ptr @VEC_tree_heap_alloc, i64 414584}
!229 = !{ptr @gimplify_compound_lval, ptr @fold_indirect_ref_loc, i64 307767}
!230 = !{ptr @gimplify_compound_lval, ptr @handled_component_p, i64 1193145}
!231 = !{ptr @gimplify_compound_lval, ptr @gimplify_var_or_parm_decl, i64 90777}
!232 = !{ptr @gimplify_compound_lval, ptr @VEC_tree_heap_safe_push, i64 778556}
!233 = !{ptr @gimplify_compound_lval, ptr @VEC_tree_base_length, i64 2022306}
!234 = !{ptr @gimplify_compound_lval, ptr @fancy_abort, i64 1}
!235 = !{ptr @gimplify_compound_lval, ptr @VEC_tree_base_index, i64 778554}
!236 = !{ptr @gimplify_compound_lval, ptr @array_ref_low_bound, i64 197340}
!237 = !{ptr @gimplify_compound_lval, ptr @unshare_expr, i64 974239}
!238 = !{ptr @gimplify_compound_lval, ptr @is_gimple_min_invariant, i64 1173214}
!239 = !{ptr @gimplify_compound_lval, ptr @gimplify_expr, i64 453538}
!240 = !{ptr @gimplify_compound_lval, ptr @array_ref_element_size, i64 197340}
!241 = !{ptr @gimplify_compound_lval, ptr @size_int_kind, i64 776899}
!242 = !{ptr @gimplify_compound_lval, ptr @size_binop_loc, i64 776899}
!243 = !{ptr @gimplify_compound_lval, ptr @component_ref_field_offset, i64 579559}
!244 = !{ptr @gimplify_compound_lval, ptr @VEC_tree_base_pop, i64 778554}
!245 = !{ptr @gimplify_compound_lval, ptr @tree_ssa_strip_useless_type_conversions, i64 778554}
!246 = !{ptr @gimplify_compound_lval, ptr @recalculate_side_effects, i64 778554}
!247 = !{ptr @gimplify_compound_lval, ptr @canonicalize_component_ref, i64 287006}
!248 = !{ptr @gimplify_compound_lval, ptr @VEC_tree_heap_free, i64 414584}
!249 = !{ptr @gimplify_cond_expr, ptr @create_tmp_var, i64 5390}
!250 = !{ptr @gimplify_cond_expr, ptr @build_pointer_type, i64 2}
!251 = !{ptr @gimplify_cond_expr, ptr @build_fold_addr_expr_loc, i64 2}
!252 = !{ptr @gimplify_cond_expr, ptr @build3_stat, i64 2}
!253 = !{ptr @gimplify_cond_expr, ptr @build_fold_indirect_ref_loc, i64 2}
!254 = !{ptr @gimplify_cond_expr, ptr @build2_stat, i64 10778}
!255 = !{ptr @gimplify_cond_expr, ptr @recalculate_side_effects, i64 5390}
!256 = !{ptr @gimplify_cond_expr, ptr @gimplify_stmt, i64 163738}
!257 = !{ptr @gimplify_cond_expr, ptr @gimple_boolify, i64 120164}
!258 = !{ptr @gimplify_cond_expr, ptr @shortcut_cond_expr, i64 17354}
!259 = !{ptr @gimplify_cond_expr, ptr @gimple_push_condition, i64 120164}
!260 = !{ptr @gimplify_cond_expr, ptr @gimple_pop_condition, i64 120164}
!261 = !{ptr @gimplify_cond_expr, ptr @gimple_seq_add_seq, i64 120164}
!262 = !{ptr @gimplify_cond_expr, ptr @gimplify_expr, i64 102812}
!263 = !{ptr @gimplify_cond_expr, ptr @fancy_abort, i64 1}
!264 = !{ptr @gimplify_cond_expr, ptr @create_artificial_label, i64 150967}
!265 = !{ptr @gimplify_cond_expr, ptr @gimple_cond_get_ops_from_tree, i64 102811}
!266 = !{ptr @gimplify_cond_expr, ptr @gimple_build_cond, i64 102811}
!267 = !{ptr @gimplify_cond_expr, ptr @gimplify_seq_add_stmt, i64 263795}
!268 = !{ptr @gimplify_cond_expr, ptr @gimple_build_label, i64 150964}
!269 = !{ptr @gimplify_cond_expr, ptr @gimple_seq_may_fallthru, i64 11893}
!270 = !{ptr @gimplify_cond_expr, ptr @gimple_build_goto, i64 10020}
!271 = !{ptr @gimplify_cond_expr, ptr @gimple_set_do_not_emit_location, i64 10020}
!272 = !{ptr @gimplify_call_expr, ptr @fancy_abort, i64 1}
!273 = !{ptr @gimplify_call_expr, ptr @get_callee_fndecl, i64 317821}
!274 = !{ptr @gimplify_call_expr, ptr @fold_call_expr, i64 168115}
!275 = !{ptr @gimplify_call_expr, ptr @error, i64 1}
!276 = !{ptr @gimplify_call_expr, ptr @build_empty_stmt, i64 2}
!277 = !{ptr @gimplify_call_expr, ptr @fold_builtin_next_arg, i64 48}
!278 = !{ptr @gimplify_call_expr, ptr @gimplify_expr, i64 157691}
!279 = !{ptr @gimplify_call_expr, ptr @gimplify_arg, i64 315333}
!280 = !{ptr @gimplify_call_expr, ptr @error_at, i64 1}
!281 = !{ptr @gimplify_call_expr, ptr @call_expr_flags, i64 157689}
!282 = !{ptr @gimplify_call_expr, ptr @gimple_build_call_from_tree, i64 30271}
!283 = !{ptr @gimplify_call_expr, ptr @gimplify_seq_add_stmt, i64 30271}
!284 = !{ptr @gimplify_compound_expr, ptr @gimplify_compound_expr, i64 395}
!285 = !{ptr @gimplify_compound_expr, ptr @gimplify_stmt, i64 2924}
!286 = !{ptr @gimplify_modify_expr, ptr @fancy_abort, i64 2}
!287 = !{ptr @gimplify_modify_expr, ptr @tree_ssa_strip_useless_type_conversions, i64 197215}
!288 = !{ptr @gimplify_modify_expr, ptr @useless_type_conversion_p, i64 197215}
!289 = !{ptr @gimplify_modify_expr, ptr @fold_convert_loc, i64 1}
!290 = !{ptr @gimplify_modify_expr, ptr @gimplify_modify_expr_rhs, i64 884947}
!291 = !{ptr @gimplify_modify_expr, ptr @zero_sized_type, i64 442463}
!292 = !{ptr @gimplify_modify_expr, ptr @maybe_with_size_expr, i64 442463}
!293 = !{ptr @gimplify_modify_expr, ptr @gimplify_expr, i64 884925}
!294 = !{ptr @gimplify_modify_expr, ptr @rhs_predicate_for, i64 442462}
!295 = !{ptr @gimplify_modify_expr, ptr @is_gimple_reg, i64 17530}
!296 = !{ptr @gimplify_modify_expr, ptr @gimplify_modify_expr_complex_part, i64 1}
!297 = !{ptr @gimplify_modify_expr, ptr @create_tmp_var_name, i64 2014}
!298 = !{ptr @gimplify_modify_expr, ptr @decl_debug_expr_insert, i64 3604}
!299 = !{ptr @gimplify_modify_expr, ptr @gimple_build_call_from_tree, i64 53533}
!300 = !{ptr @gimplify_modify_expr, ptr @gimple_call_noreturn_p, i64 53533}
!301 = !{ptr @gimplify_modify_expr, ptr @gimple_call_set_lhs, i64 53532}
!302 = !{ptr @gimplify_modify_expr, ptr @gimple_build_assign_stat, i64 388923}
!303 = !{ptr @gimplify_modify_expr, ptr @gimple_set_location, i64 388923}
!304 = !{ptr @gimplify_modify_expr, ptr @gimplify_seq_add_stmt, i64 442456}
!305 = !{ptr @gimplify_modify_expr, ptr @make_ssa_name, i64 17527}
!306 = !{ptr @gimplify_modify_expr, ptr @gimple_set_lhs, i64 17527}
!307 = !{ptr @gimplify_modify_expr, ptr @unshare_expr, i64 6345}
!308 = !{ptr @gimplify_boolean_expr, ptr @fold_convert_loc, i64 1330}
!309 = !{ptr @gimplify_boolean_expr, ptr @build3_stat, i64 665}
!310 = !{ptr @gimplify_addr_expr, ptr @useless_type_conversion_p, i64 205406}
!311 = !{ptr @gimplify_addr_expr, ptr @fold_convert_loc, i64 3}
!312 = !{ptr @gimplify_addr_expr, ptr @tree_ssa_useless_type_conversion, i64 1}
!313 = !{ptr @gimplify_addr_expr, ptr @build_fold_addr_expr_loc, i64 2}
!314 = !{ptr @gimplify_addr_expr, ptr @gimplify_expr, i64 205405}
!315 = !{ptr @gimplify_addr_expr, ptr @prepare_gimple_addressable, i64 205404}
!316 = !{ptr @gimplify_addr_expr, ptr @mark_addressable, i64 205403}
!317 = !{ptr @gimplify_addr_expr, ptr @types_compatible_p, i64 205403}
!318 = !{ptr @gimplify_addr_expr, ptr @recompute_tree_invariant_for_addr_expr, i64 205403}
!319 = !{ptr @gimplify_conversion, ptr @fancy_abort, i64 1}
!320 = !{ptr @gimplify_conversion, ptr @tree_strip_sign_nop_conversions, i64 135254}
!321 = !{ptr @gimplify_conversion, ptr @tree_ssa_useless_type_conversion, i64 135254}
!322 = !{ptr @gimplify_conversion, ptr @maybe_fold_offset_to_address, i64 26892}
!323 = !{ptr @gimplify_conversion, ptr @canonicalize_component_ref, i64 10354}
!324 = !{ptr @gimplify_conversion, ptr @canonicalize_addr_expr, i64 9456}
!325 = !{ptr @gimplify_conversion, ptr @is_gimple_reg_type, i64 124205}
!326 = !{ptr @gimplify_conversion, ptr @fold_build1_stat_loc, i64 1}
!327 = !{ptr @gimplify_decl_expr, ptr @gimplify_type_sizes, i64 881}
!328 = !{ptr @gimplify_decl_expr, ptr @compare_tree_int, i64 1}
!329 = !{ptr @gimplify_decl_expr, ptr @gimplify_vla_decl, i64 6}
!330 = !{ptr @gimplify_decl_expr, ptr @build2_stat, i64 13045}
!331 = !{ptr @gimplify_decl_expr, ptr @gimplify_and_add, i64 13045}
!332 = !{ptr @gimplify_decl_expr, ptr @ggc_free, i64 13045}
!333 = !{ptr @gimplify_decl_expr, ptr @walk_tree_1, i64 655}
!334 = !{ptr @gimplify_bind_expr, ptr @voidify_wrapper_expr, i64 16762}
!335 = !{ptr @gimplify_bind_expr, ptr @is_global_var, i64 2}
!336 = !{ptr @gimplify_bind_expr, ptr @gimple_build_bind, i64 16762}
!337 = !{ptr @gimplify_bind_expr, ptr @gimple_push_bind_expr, i64 16762}
!338 = !{ptr @gimplify_bind_expr, ptr @gimplify_stmt, i64 16762}
!339 = !{ptr @gimplify_bind_expr, ptr @gimple_bind_set_body, i64 16765}
!340 = !{ptr @gimplify_bind_expr, ptr @build_stack_save_restore, i64 3}
!341 = !{ptr @gimplify_bind_expr, ptr @gimplify_seq_add_stmt, i64 16771}
!342 = !{ptr @gimplify_bind_expr, ptr @gimple_bind_body, i64 3}
!343 = !{ptr @gimplify_bind_expr, ptr @gimple_build_try, i64 3}
!344 = !{ptr @gimplify_bind_expr, ptr @gimple_pop_bind_expr, i64 16762}
!345 = !{ptr @gimplify_switch_expr, ptr @gimplify_expr, i64 1554}
!346 = !{ptr @gimplify_switch_expr, ptr @fancy_abort, i64 2}
!347 = !{ptr @gimplify_switch_expr, ptr @VEC_tree_heap_alloc, i64 1551}
!348 = !{ptr @gimplify_switch_expr, ptr @gimplify_stmt, i64 1551}
!349 = !{ptr @gimplify_switch_expr, ptr @VEC_tree_base_length, i64 27727}
!350 = !{ptr @gimplify_switch_expr, ptr @VEC_tree_base_index, i64 26277}
!351 = !{ptr @gimplify_switch_expr, ptr @tree_int_cst_lt, i64 1}
!352 = !{ptr @gimplify_switch_expr, ptr @VEC_tree_base_ordered_remove, i64 1482}
!353 = !{ptr @gimplify_switch_expr, ptr @sort_case_labels, i64 1547}
!354 = !{ptr @gimplify_switch_expr, ptr @tree_int_cst_equal, i64 91}
!355 = !{ptr @gimplify_switch_expr, ptr @create_artificial_label, i64 70}
!356 = !{ptr @gimplify_switch_expr, ptr @build3_stat, i64 70}
!357 = !{ptr @gimplify_switch_expr, ptr @gimple_build_label, i64 70}
!358 = !{ptr @gimplify_switch_expr, ptr @gimplify_seq_add_stmt, i64 1621}
!359 = !{ptr @gimplify_switch_expr, ptr @gimple_build_switch_vec, i64 1551}
!360 = !{ptr @gimplify_switch_expr, ptr @gimplify_seq_add_seq, i64 1551}
!361 = !{ptr @gimplify_switch_expr, ptr @VEC_tree_heap_free, i64 1551}
!362 = !{ptr @gimplify_seq_add_stmt, ptr @gimple_seq_alloc, i64 105346}
!363 = !{ptr @gimplify_seq_add_stmt, ptr @gsi_last, i64 890196}
!364 = !{ptr @gimplify_seq_add_stmt, ptr @gsi_insert_after_without_update, i64 890196}
!365 = !{ptr @gimplify_case_label_expr, ptr @gimple_build_label, i64 26242}
!366 = !{ptr @gimplify_case_label_expr, ptr @VEC_tree_heap_safe_push, i64 26242}
!367 = !{ptr @gimplify_case_label_expr, ptr @gimplify_seq_add_stmt, i64 26242}
!368 = !{ptr @gimplify_return_expr, ptr @fancy_abort, i64 1}
!369 = !{ptr @gimplify_return_expr, ptr @aggregate_value_p, i64 24051}
!370 = !{ptr @gimplify_return_expr, ptr @create_tmp_var, i64 5126}
!371 = !{ptr @gimplify_return_expr, ptr @gimplify_and_add, i64 24052}
!372 = !{ptr @gimplify_return_expr, ptr @gimple_build_return, i64 25494}
!373 = !{ptr @gimplify_return_expr, ptr @gimple_set_no_warning, i64 25494}
!374 = !{ptr @gimplify_return_expr, ptr @gimplify_seq_add_stmt, i64 25494}
!375 = !{ptr @gimplify_save_expr, ptr @fancy_abort, i64 1}
!376 = !{ptr @gimplify_save_expr, ptr @gimplify_expr, i64 1}
!377 = !{ptr @gimplify_save_expr, ptr @get_initialized_tmp_var, i64 2265}
!378 = !{ptr @gimplify_target_expr, ptr @gimplify_vla_decl, i64 1}
!379 = !{ptr @gimplify_target_expr, ptr @gimple_add_tmp_var, i64 96}
!380 = !{ptr @gimplify_target_expr, ptr @gimplify_expr, i64 97}
!381 = !{ptr @gimplify_target_expr, ptr @build2_stat, i64 1}
!382 = !{ptr @gimplify_target_expr, ptr @ggc_free, i64 1}
!383 = !{ptr @gimplify_target_expr, ptr @gimplify_and_add, i64 1}
!384 = !{ptr @gimplify_target_expr, ptr @gimple_push_cleanup, i64 1}
!385 = !{ptr @gimplify_statement_list, ptr @voidify_wrapper_expr, i64 40785}
!386 = !{ptr @gimplify_statement_list, ptr @tsi_start, i64 40785}
!387 = !{ptr @gimplify_statement_list, ptr @tsi_end_p, i64 390945}
!388 = !{ptr @gimplify_statement_list, ptr @tsi_stmt_ptr, i64 350160}
!389 = !{ptr @gimplify_statement_list, ptr @gimplify_stmt, i64 350160}
!390 = !{ptr @gimplify_statement_list, ptr @tsi_delink, i64 350160}
!391 = !{ptr @gimplify_var_or_parm_decl, ptr @decl_function_context, i64 1}
!392 = !{ptr @gimplify_var_or_parm_decl, ptr @omp_notice_variable, i64 1}
!393 = !{ptr @gimplify_var_or_parm_decl, ptr @decl_value_expr_lookup, i64 5}
!394 = !{ptr @gimplify_var_or_parm_decl, ptr @unshare_expr, i64 5}
!395 = !{ptr @gimplify_seq_add_seq, ptr @gimple_seq_alloc, i64 697}
!396 = !{ptr @gimplify_seq_add_seq, ptr @gsi_last, i64 3100}
!397 = !{ptr @gimplify_seq_add_seq, ptr @gsi_insert_seq_after_without_update, i64 3100}
!398 = !{ptr @annotate_all_with_location_after, ptr @gsi_end_p, i64 7460323}
!399 = !{ptr @annotate_all_with_location_after, ptr @gsi_start, i64 118266}
!400 = !{ptr @annotate_all_with_location_after, ptr @gsi_next, i64 6542576}
!401 = !{ptr @annotate_all_with_location_after, ptr @gsi_stmt, i64 5861361}
!402 = !{ptr @annotate_all_with_location_after, ptr @annotate_one_with_location, i64 5861361}
!403 = !{ptr @VEC_tree_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 416138}
!404 = !{ptr @VEC_tree_heap_safe_push, ptr @VEC_tree_heap_reserve, i64 804797}
!405 = !{ptr @VEC_tree_heap_safe_push, ptr @VEC_tree_base_quick_push, i64 804797}
!406 = !{ptr @canonicalize_component_ref, ptr @fancy_abort, i64 1}
!407 = !{ptr @canonicalize_component_ref, ptr @get_unwidened, i64 129726}
!408 = !{ptr @canonicalize_component_ref, ptr @build_qualified_type, i64 3263}
!409 = !{ptr @VEC_tree_heap_free, ptr @free, i64 416137}
!410 = !{ptr @VEC_tree_heap_reserve, ptr @VEC_tree_base_space, i64 804797}
!411 = !{ptr @VEC_tree_heap_reserve, ptr @vec_heap_p_reserve, i64 1094}
!412 = !{ptr @shortcut_cond_expr, ptr @shortcut_cond_expr, i64 13850}
!413 = !{ptr @shortcut_cond_expr, ptr @build3_stat, i64 13850}
!414 = !{ptr @shortcut_cond_expr, ptr @shortcut_cond_r, i64 12281}
!415 = !{ptr @shortcut_cond_expr, ptr @expr_last, i64 14012}
!416 = !{ptr @shortcut_cond_expr, ptr @block_may_fallthru, i64 11560}
!417 = !{ptr @shortcut_cond_expr, ptr @append_to_statement_list, i64 47567}
!418 = !{ptr @shortcut_cond_expr, ptr @build_and_jump, i64 2453}
!419 = !{ptr @shortcut_cond_expr, ptr @build1_stat, i64 13747}
!420 = !{ptr @gimple_pop_condition, ptr @fancy_abort, i64 1}
!421 = !{ptr @gimple_pop_condition, ptr @gimplify_seq_add_seq, i64 36193}
!422 = !{ptr @gimple_set_do_not_emit_location, ptr @gimple_set_plf, i64 10021}
!423 = !{ptr @shortcut_cond_r, ptr @shortcut_cond_r, i64 51854}
!424 = !{ptr @shortcut_cond_r, ptr @append_to_statement_list, i64 60165}
!425 = !{ptr @shortcut_cond_r, ptr @build3_stat, i64 38251}
!426 = !{ptr @shortcut_cond_r, ptr @build_and_jump, i64 76406}
!427 = !{ptr @shortcut_cond_r, ptr @build1_stat, i64 8407}
!428 = !{ptr @gimplify_arg, ptr @is_gimple_reg_type, i64 315340}
!429 = !{ptr @gimplify_arg, ptr @maybe_with_size_expr, i64 315340}
!430 = !{ptr @gimplify_arg, ptr @protected_set_expr_location, i64 315340}
!431 = !{ptr @gimplify_arg, ptr @gimplify_expr, i64 315340}
!432 = !{ptr @maybe_with_size_expr, ptr @unshare_expr, i64 1}
!433 = !{ptr @maybe_with_size_expr, ptr @build2_stat, i64 1}
!434 = !{ptr @gimplify_modify_expr_rhs, ptr @unshare_expr, i64 21}
!435 = !{ptr @gimplify_modify_expr_rhs, ptr @gimplify_init_constructor, i64 21}
!436 = !{ptr @gimplify_modify_expr_rhs, ptr @gimple_fold_indirect_ref_rhs, i64 25709}
!437 = !{ptr @gimplify_modify_expr_rhs, ptr @gimplify_compound_expr, i64 564}
!438 = !{ptr @gimplify_modify_expr_rhs, ptr @is_gimple_reg_type, i64 3162}
!439 = !{ptr @gimplify_modify_expr_rhs, ptr @gimplify_expr, i64 15}
!440 = !{ptr @gimplify_modify_expr_rhs, ptr @build2_stat, i64 22}
!441 = !{ptr @gimplify_modify_expr_rhs, ptr @recalculate_side_effects, i64 12}
!442 = !{ptr @gimplify_modify_expr_rhs, ptr @gimplify_and_add, i64 3}
!443 = !{ptr @gimplify_modify_expr_rhs, ptr @aggregate_value_p, i64 109864}
!444 = !{ptr @gimplify_modify_expr_rhs, ptr @rhs_predicate_for, i64 681}
!445 = !{ptr @gimplify_modify_expr_rhs, ptr @needs_to_live_in_memory, i64 4}
!446 = !{ptr @gimplify_modify_expr_rhs, ptr @is_gimple_non_addressable, i64 354}
!447 = !{ptr @gimplify_modify_expr_rhs, ptr @mark_addressable, i64 511}
!448 = !{ptr @gimplify_modify_expr_rhs, ptr @voidify_wrapper_expr, i64 3}
!449 = !{ptr @gimplify_modify_expr_rhs, ptr @fancy_abort, i64 2}
!450 = !{ptr @zero_sized_type, ptr @integer_zerop, i64 951}
!451 = !{ptr @gimple_call_noreturn_p, ptr @gimple_call_flags, i64 53533}
!452 = !{ptr @gimple_call_set_lhs, ptr @gimple_set_op, i64 53535}
!453 = !{ptr @make_ssa_name, ptr @make_ssa_name_fn, i64 17527}
!454 = !{ptr @gimplify_init_constructor, ptr @fancy_abort, i64 2}
!455 = !{ptr @gimplify_init_constructor, ptr @gimplify_expr, i64 16}
!456 = !{ptr @gimplify_init_constructor, ptr @optimize_compound_literals_in_ctor, i64 18}
!457 = !{ptr @gimplify_init_constructor, ptr @VEC_constructor_elt_base_length, i64 16}
!458 = !{ptr @gimplify_init_constructor, ptr @categorize_ctor_elements, i64 15}
!459 = !{ptr @gimplify_init_constructor, ptr @count_type_elements, i64 15}
!460 = !{ptr @gimplify_init_constructor, ptr @int_size_in_bytes, i64 10}
!461 = !{ptr @gimplify_init_constructor, ptr @optimize_function_for_speed_p, i64 15}
!462 = !{ptr @gimplify_init_constructor, ptr @can_move_by_pieces, i64 7}
!463 = !{ptr @gimplify_init_constructor, ptr @get_base_address, i64 4}
!464 = !{ptr @gimplify_init_constructor, ptr @get_alias_set, i64 4}
!465 = !{ptr @gimplify_init_constructor, ptr @gimplify_init_ctor_preeval, i64 4}
!466 = !{ptr @gimplify_init_constructor, ptr @unshare_expr, i64 1}
!467 = !{ptr @gimplify_init_constructor, ptr @gimplify_stmt, i64 1}
!468 = !{ptr @gimplify_init_constructor, ptr @gimplify_init_ctor_eval, i64 8}
!469 = !{ptr @gimplify_init_constructor, ptr @VEC_constructor_elt_base_index, i64 1}
!470 = !{ptr @gimplify_init_constructor, ptr @VEC_constructor_elt_base_iterate, i64 3}
!471 = !{ptr @gimplify_init_constructor, ptr @gimple_build_assign_stat, i64 1}
!472 = !{ptr @gimplify_init_constructor, ptr @gimplify_seq_add_stmt, i64 1}
!473 = !{ptr @gimple_fold_indirect_ref_rhs, ptr @gimple_fold_indirect_ref, i64 25708}
!474 = !{ptr @optimize_compound_literals_in_ctor, ptr @VEC_constructor_elt_base_length, i64 19}
!475 = !{ptr @optimize_compound_literals_in_ctor, ptr @VEC_constructor_elt_base_index, i64 241}
!476 = !{ptr @optimize_compound_literals_in_ctor, ptr @optimize_compound_literals_in_ctor, i64 1}
!477 = !{ptr @gimplify_init_ctor_preeval, ptr @fancy_abort, i64 1}
!478 = !{ptr @gimplify_init_ctor_preeval, ptr @gimplify_init_ctor_preeval, i64 4}
!479 = !{ptr @gimplify_init_ctor_preeval, ptr @VEC_constructor_elt_base_iterate, i64 4}
!480 = !{ptr @gimplify_init_ctor_eval, ptr @VEC_constructor_elt_base_length, i64 139}
!481 = !{ptr @gimplify_init_ctor_eval, ptr @VEC_constructor_elt_base_index, i64 126}
!482 = !{ptr @gimplify_init_ctor_eval, ptr @initializer_zerop, i64 1}
!483 = !{ptr @gimplify_init_ctor_eval, ptr @fancy_abort, i64 2}
!484 = !{ptr @gimplify_init_ctor_eval, ptr @zero_sized_field_decl, i64 124}
!485 = !{ptr @gimplify_init_ctor_eval, ptr @simple_cst_equal, i64 1}
!486 = !{ptr @gimplify_init_ctor_eval, ptr @fold_convert_loc, i64 96}
!487 = !{ptr @gimplify_init_ctor_eval, ptr @unshare_expr, i64 123}
!488 = !{ptr @gimplify_init_ctor_eval, ptr @build4_stat, i64 96}
!489 = !{ptr @gimplify_init_ctor_eval, ptr @build3_stat, i64 27}
!490 = !{ptr @gimplify_init_ctor_eval, ptr @build2_stat, i64 123}
!491 = !{ptr @gimplify_init_ctor_eval, ptr @gimplify_and_add, i64 123}
!492 = !{ptr @gimplify_init_ctor_eval, ptr @ggc_free, i64 123}
!493 = !{ptr @zero_sized_field_decl, ptr @integer_zerop, i64 29}
!494 = !{ptr @prepare_gimple_addressable, ptr @handled_component_p, i64 282372}
!495 = !{ptr @prepare_gimple_addressable, ptr @is_gimple_reg, i64 205408}
!496 = !{ptr @prepare_gimple_addressable, ptr @get_initialized_tmp_var, i64 1}
!497 = !{ptr @gimple_set_op, ptr @gimple_has_ops, i64 54913}
!498 = !{ptr @gimple_set_op, ptr @gimple_num_ops, i64 54912}
!499 = !{ptr @gimple_set_op, ptr @fancy_abort, i64 2}
!500 = !{ptr @gimple_set_op, ptr @gimple_ops, i64 54913}
!501 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 57821}
!502 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 57821}
!503 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!504 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 57821}
!505 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 57821}
!506 = !{ptr @canonicalize_addr_expr, ptr @build_pointer_type, i64 2451}
!507 = !{ptr @canonicalize_addr_expr, ptr @useless_type_conversion_p, i64 4620}
!508 = !{ptr @canonicalize_addr_expr, ptr @build4_stat, i64 2169}
!509 = !{ptr @canonicalize_addr_expr, ptr @build1_stat, i64 2169}
!510 = !{ptr @canonicalize_addr_expr, ptr @fold_convert_loc, i64 1956}
!511 = !{ptr @gimplify_type_sizes, ptr @gimplify_one_sizepos, i64 5562}
!512 = !{ptr @gimplify_type_sizes, ptr @gimplify_type_sizes, i64 1354}
!513 = !{ptr @gimplify_vla_decl, ptr @gimplify_one_sizepos, i64 8}
!514 = !{ptr @gimplify_vla_decl, ptr @build_pointer_type, i64 4}
!515 = !{ptr @gimplify_vla_decl, ptr @get_name, i64 4}
!516 = !{ptr @gimplify_vla_decl, ptr @create_tmp_var, i64 4}
!517 = !{ptr @gimplify_vla_decl, ptr @build_fold_indirect_ref_loc, i64 4}
!518 = !{ptr @gimplify_vla_decl, ptr @decl_value_expr_insert, i64 4}
!519 = !{ptr @gimplify_vla_decl, ptr @build_call_expr_loc, i64 4}
!520 = !{ptr @gimplify_vla_decl, ptr @fold_convert_loc, i64 4}
!521 = !{ptr @gimplify_vla_decl, ptr @build2_stat, i64 4}
!522 = !{ptr @gimplify_vla_decl, ptr @gimplify_and_add, i64 4}
!523 = !{ptr @gimplify_one_sizepos, ptr @contains_placeholder_p, i64 20}
!524 = !{ptr @gimplify_one_sizepos, ptr @unshare_expr, i64 19}
!525 = !{ptr @gimplify_one_sizepos, ptr @gimplify_expr, i64 19}
!526 = !{ptr @gimple_push_bind_expr, ptr @VEC_gimple_heap_alloc, i64 8964}
!527 = !{ptr @gimple_push_bind_expr, ptr @VEC_gimple_heap_safe_push, i64 16762}
!528 = !{ptr @build_stack_save_restore, ptr @gimple_build_call, i64 4}
!529 = !{ptr @build_stack_save_restore, ptr @create_tmp_var, i64 2}
!530 = !{ptr @build_stack_save_restore, ptr @gimple_call_set_lhs, i64 2}
!531 = !{ptr @gimple_pop_bind_expr, ptr @VEC_gimple_base_pop, i64 16762}
!532 = !{ptr @VEC_gimple_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 8964}
!533 = !{ptr @VEC_gimple_heap_safe_push, ptr @VEC_gimple_heap_reserve, i64 16762}
!534 = !{ptr @VEC_gimple_heap_safe_push, ptr @VEC_gimple_base_quick_push, i64 16762}
!535 = !{ptr @VEC_gimple_heap_reserve, ptr @VEC_gimple_base_space, i64 16762}
!536 = !{ptr @VEC_gimple_heap_reserve, ptr @vec_heap_p_reserve, i64 2}
!537 = !{ptr @gimplify_body, ptr @timevar_push_1, i64 1}
!538 = !{ptr @gimplify_body, ptr @default_rtl_profile, i64 8964}
!539 = !{ptr @gimplify_body, ptr @fancy_abort, i64 2}
!540 = !{ptr @gimplify_body, ptr @push_gimplify_context, i64 8964}
!541 = !{ptr @gimplify_body, ptr @unshare_body, i64 8964}
!542 = !{ptr @gimplify_body, ptr @unvisit_body, i64 8964}
!543 = !{ptr @gimplify_body, ptr @cgraph_node, i64 8964}
!544 = !{ptr @gimplify_body, ptr @pointer_set_create, i64 1}
!545 = !{ptr @gimplify_body, ptr @gimplify_parameters, i64 8963}
!546 = !{ptr @gimplify_body, ptr @gimplify_stmt, i64 8964}
!547 = !{ptr @gimplify_body, ptr @gimple_seq_first_stmt, i64 8964}
!548 = !{ptr @gimplify_body, ptr @gimple_build_nop, i64 1}
!549 = !{ptr @gimplify_body, ptr @gimplify_seq_add_stmt, i64 1}
!550 = !{ptr @gimplify_body, ptr @gimple_code, i64 8964}
!551 = !{ptr @gimplify_body, ptr @gimple_seq_first, i64 8963}
!552 = !{ptr @gimplify_body, ptr @gimple_seq_last, i64 8963}
!553 = !{ptr @gimplify_body, ptr @gimple_build_bind, i64 2}
!554 = !{ptr @gimplify_body, ptr @gimple_seq_empty_p, i64 8964}
!555 = !{ptr @gimplify_body, ptr @gimple_bind_body, i64 1}
!556 = !{ptr @gimplify_body, ptr @gimplify_seq_add_seq, i64 1}
!557 = !{ptr @gimplify_body, ptr @gimple_bind_set_body, i64 1}
!558 = !{ptr @gimplify_body, ptr @pointer_set_destroy, i64 1}
!559 = !{ptr @gimplify_body, ptr @pop_gimplify_context, i64 8964}
!560 = !{ptr @gimplify_body, ptr @timevar_pop_1, i64 1}
!561 = !{ptr @unshare_body, ptr @cgraph_node, i64 8964}
!562 = !{ptr @unshare_body, ptr @walk_tree_1, i64 8964}
!563 = !{ptr @unshare_body, ptr @unshare_body, i64 1}
!564 = !{ptr @unvisit_body, ptr @cgraph_node, i64 8964}
!565 = !{ptr @unvisit_body, ptr @walk_tree_1, i64 8964}
!566 = !{ptr @unvisit_body, ptr @unvisit_body, i64 1}
!567 = !{ptr @copy_if_shared_r, ptr @walk_tree_1, i64 15925}
!568 = !{ptr @gimplify_function_tree, ptr @gimple_body, i64 8964}
!569 = !{ptr @gimplify_function_tree, ptr @fancy_abort, i64 1}
!570 = !{ptr @gimplify_function_tree, ptr @push_cfun, i64 8963}
!571 = !{ptr @gimplify_function_tree, ptr @push_struct_function, i64 1}
!572 = !{ptr @gimplify_function_tree, ptr @needs_to_live_in_memory, i64 3}
!573 = !{ptr @gimplify_function_tree, ptr @gimplify_body, i64 8964}
!574 = !{ptr @gimplify_function_tree, ptr @gimple_seq_alloc, i64 8964}
!575 = !{ptr @gimplify_function_tree, ptr @gimple_seq_add_stmt, i64 8964}
!576 = !{ptr @gimplify_function_tree, ptr @gimple_set_body, i64 8964}
!577 = !{ptr @gimplify_function_tree, ptr @pop_cfun, i64 8964}
!578 = !{ptr @gimple_regimplify_operands, ptr @push_gimplify_context, i64 689}
!579 = !{ptr @gimple_regimplify_operands, ptr @gimple_in_ssa_p, i64 691}
!580 = !{ptr @gimple_regimplify_operands, ptr @gimple_code, i64 689}
!581 = !{ptr @gimple_regimplify_operands, ptr @gimple_cond_lhs_ptr, i64 1}
!582 = !{ptr @gimple_regimplify_operands, ptr @gimplify_expr, i64 1914}
!583 = !{ptr @gimple_regimplify_operands, ptr @gimple_cond_rhs_ptr, i64 1}
!584 = !{ptr @gimple_regimplify_operands, ptr @gimple_switch_index_ptr, i64 1}
!585 = !{ptr @gimple_regimplify_operands, ptr @gimple_omp_atomic_load_rhs_ptr, i64 1}
!586 = !{ptr @gimple_regimplify_operands, ptr @gimple_asm_noutputs, i64 1}
!587 = !{ptr @gimple_regimplify_operands, ptr @gimple_asm_ninputs, i64 21}
!588 = !{ptr @gimple_regimplify_operands, ptr @gimple_asm_output_op, i64 20}
!589 = !{ptr @gimple_regimplify_operands, ptr @parse_output_constraint, i64 20}
!590 = !{ptr @gimple_regimplify_operands, ptr @gimple_asm_input_op, i64 20}
!591 = !{ptr @gimple_regimplify_operands, ptr @parse_input_constraint, i64 20}
!592 = !{ptr @gimple_regimplify_operands, ptr @gimple_num_ops, i64 685}
!593 = !{ptr @gimple_regimplify_operands, ptr @gimple_get_lhs, i64 1370}
!594 = !{ptr @gimple_regimplify_operands, ptr @gimple_op, i64 1369}
!595 = !{ptr @gimple_regimplify_operands, ptr @is_gimple_call, i64 865}
!596 = !{ptr @gimple_regimplify_operands, ptr @is_gimple_assign, i64 1873}
!597 = !{ptr @gimple_regimplify_operands, ptr @gimple_expr_code, i64 1186}
!598 = !{ptr @gimple_regimplify_operands, ptr @get_gimple_rhs_class, i64 1186}
!599 = !{ptr @gimple_regimplify_operands, ptr @gimple_assign_lhs, i64 1007}
!600 = !{ptr @gimple_regimplify_operands, ptr @rhs_predicate_for, i64 1007}
!601 = !{ptr @gimple_regimplify_operands, ptr @gimple_set_op, i64 1368}
!602 = !{ptr @gimple_regimplify_operands, ptr @is_gimple_reg, i64 687}
!603 = !{ptr @gimple_regimplify_operands, ptr @gimple_assign_rhs1_ptr, i64 503}
!604 = !{ptr @gimple_regimplify_operands, ptr @is_gimple_reg_type, i64 3}
!605 = !{ptr @gimple_regimplify_operands, ptr @gimple_call_flags, i64 1}
!606 = !{ptr @gimple_regimplify_operands, ptr @stmt_can_throw_internal, i64 1}
!607 = !{ptr @gimple_regimplify_operands, ptr @create_tmp_var, i64 1}
!608 = !{ptr @gimple_regimplify_operands, ptr @make_ssa_name, i64 1}
!609 = !{ptr @gimple_regimplify_operands, ptr @gimple_set_lhs, i64 1}
!610 = !{ptr @gimple_regimplify_operands, ptr @gimple_build_assign_stat, i64 1}
!611 = !{ptr @gimple_regimplify_operands, ptr @gimple_referenced_vars, i64 689}
!612 = !{ptr @gimple_regimplify_operands, ptr @add_referenced_var, i64 1}
!613 = !{ptr @gimple_regimplify_operands, ptr @gimple_seq_empty_p, i64 689}
!614 = !{ptr @gimple_regimplify_operands, ptr @gsi_start, i64 1}
!615 = !{ptr @gimple_regimplify_operands, ptr @gsi_end_p, i64 8}
!616 = !{ptr @gimple_regimplify_operands, ptr @gsi_stmt, i64 7}
!617 = !{ptr @gimple_regimplify_operands, ptr @mark_symbols_for_renaming, i64 7}
!618 = !{ptr @gimple_regimplify_operands, ptr @gsi_next, i64 7}
!619 = !{ptr @gimple_regimplify_operands, ptr @gsi_insert_seq_before, i64 1}
!620 = !{ptr @gimple_regimplify_operands, ptr @gsi_insert_after, i64 1}
!621 = !{ptr @gimple_regimplify_operands, ptr @pop_gimplify_context, i64 689}
!622 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 2398}
!623 = !{ptr @gimple_op, ptr @gimple_ops, i64 2397}
!624 = !{ptr @is_gimple_call, ptr @gimple_code, i64 868}
!625 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 1888}
!626 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 1199}
!627 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 1020}
!628 = !{ptr @gimple_assign_rhs1_ptr, ptr @gimple_op_ptr, i64 510}
!629 = !{ptr @gimple_op_ptr, ptr @gimple_has_ops, i64 510}
!630 = !{ptr @gimple_op_ptr, ptr @gimple_ops, i64 509}
!631 = !{ptr @force_gimple_operand, ptr @is_gimple_val, i64 50928}
!632 = !{ptr @force_gimple_operand, ptr @push_gimplify_context, i64 37754}
!633 = !{ptr @force_gimple_operand, ptr @gimple_in_ssa_p, i64 37754}
!634 = !{ptr @force_gimple_operand, ptr @build2_stat, i64 4451}
!635 = !{ptr @force_gimple_operand, ptr @gimplify_and_add, i64 1}
!636 = !{ptr @force_gimple_operand, ptr @gimplify_expr, i64 37753}
!637 = !{ptr @force_gimple_operand, ptr @fancy_abort, i64 1}
!638 = !{ptr @force_gimple_operand, ptr @gimple_referenced_vars, i64 37754}
!639 = !{ptr @force_gimple_operand, ptr @add_referenced_var, i64 13065}
!640 = !{ptr @force_gimple_operand, ptr @pop_gimplify_context, i64 37754}
!641 = !{ptr @force_gimple_operand_gsi, ptr @force_gimple_operand, i64 24183}
!642 = !{ptr @force_gimple_operand_gsi, ptr @gimple_seq_empty_p, i64 24183}
!643 = !{ptr @force_gimple_operand_gsi, ptr @gimple_in_ssa_p, i64 13555}
!644 = !{ptr @force_gimple_operand_gsi, ptr @gsi_start, i64 10575}
!645 = !{ptr @force_gimple_operand_gsi, ptr @gsi_end_p, i64 22394}
!646 = !{ptr @force_gimple_operand_gsi, ptr @gsi_stmt, i64 11819}
!647 = !{ptr @force_gimple_operand_gsi, ptr @mark_symbols_for_renaming, i64 11819}
!648 = !{ptr @force_gimple_operand_gsi, ptr @gsi_next, i64 11819}
!649 = !{ptr @force_gimple_operand_gsi, ptr @gsi_insert_seq_before, i64 13554}
!650 = !{ptr @force_gimple_operand_gsi, ptr @gsi_insert_seq_after, i64 1}
!651 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!652 = !{!"function_entry_count", i64 205769}
!653 = !{i8 0, i8 2}
!654 = !{!"branch_weights", i32 128804, i32 76966}
!655 = !{!656, !656, i64 0}
!656 = !{!"omnipotent char", !657, i64 0}
!657 = !{!"Simple C/C++ TBAA"}
!658 = !{!"branch_weights", i32 76966, i32 0}
!659 = distinct !{!659, !660}
!660 = !{!"llvm.loop.mustprogress"}
!661 = !{!"branch_weights", i32 -1218928800, i32 322468576, i32 2644661, i32 82645}
!662 = !{!"function_entry_count", i64 1758248}
!663 = !{!"gimplify.c:handled_component_p"}
!664 = !{!"branch_weights", i32 825766, i32 1, i32 659095, i32 273372, i32 1, i32 19, i32 1, i32 1}
!665 = !{!"function_entry_count", i64 52962}
!666 = !{!667, !667, i64 0}
!667 = !{!"any pointer", !656, i64 0}
!668 = !{!669, !667, i64 0}
!669 = !{!"gimplify_ctx", !667, i64 0, !667, i64 8, !667, i64 16, !667, i64 24, !667, i64 32, !667, i64 40, !667, i64 48, !667, i64 56, !670, i64 64, !656, i64 68, !656, i64 69, !656, i64 70}
!670 = !{!"int", !656, i64 0}
!671 = !{!"branch_weights", i32 1, i32 52963}
!672 = !{!669, !667, i64 8}
!673 = !{!"branch_weights", i32 43999, i32 8965}
!674 = !{!"branch_weights", i32 8965, i32 1}
!675 = !{!669, !667, i64 16}
!676 = !{!669, !667, i64 56}
!677 = !{!"branch_weights", i32 31727, i32 21237}
!678 = !{!"function_entry_count", i64 8964}
!679 = !{!"gimplify.c:VEC_gimple_base_length"}
!680 = !{!681, !670, i64 0}
!681 = !{!"VEC_gimple_base", !670, i64 0, !670, i64 4, !656, i64 8}
!682 = !{!"gimplify.c:VEC_gimple_heap_free"}
!683 = !{!"branch_weights", i32 276, i32 8690}
!684 = !{i32 0, i32 256}
!685 = !{!"branch_weights", i32 8690, i32 1}
!686 = !{!"branch_weights", i32 1, i32 8690}
!687 = !{!"branch_weights", i32 2147236555, i32 247093}
!688 = !{!"function_entry_count", i64 0}
!689 = !{!"gimplify.c:VEC_gimple_base_last"}
!690 = !{!"function_entry_count", i64 108313}
!691 = !{!"branch_weights", i32 5, i32 108310}
!692 = !{!"branch_weights", i32 68, i32 108243}
!693 = !{!"function_entry_count", i64 553302}
!694 = !{!"gimplify.c:append_to_statement_list_1"}
!695 = !{!"branch_weights", i32 38023, i32 515281}
!696 = !{!"branch_weights", i32 17023, i32 21001}
!697 = !{i64 0, i64 8, !666, i64 8, i64 8, !666}
!698 = !{i64 0, i64 8, !666}
!699 = !{!"function_entry_count", i64 536280}
!700 = !{!"gimplify.c:tsi_last"}
!701 = !{!"function_entry_count", i64 445060}
!702 = !{!"branch_weights", i32 1, i32 445061}
!703 = !{!"function_entry_count", i64 343872}
!704 = !{!"function_entry_count", i64 887983}
!705 = !{!"branch_weights", i32 58946, i32 829039}
!706 = !{!"function_entry_count", i64 260872}
!707 = !{!"branch_weights", i32 1, i32 260873}
!708 = !{!709, !709, i64 0}
!709 = !{!"long", !656, i64 0}
!710 = !{!670, !670, i64 0}
!711 = !{!"gimplify.c:remove_suffix"}
!712 = !{!"branch_weights", i32 260221, i32 1}
!713 = !{!"branch_weights", i32 260221, i32 749040}
!714 = distinct !{!714, !660}
!715 = !{!"branch_weights", i32 652, i32 1008610}
!716 = !{!"function_entry_count", i64 423381}
!717 = !{!"branch_weights", i32 165520, i32 257863}
!718 = !{!"function_entry_count", i64 366034}
!719 = !{!"branch_weights", i32 366035, i32 1}
!720 = !{!"branch_weights", i32 1, i32 366035}
!721 = !{!"function_entry_count", i64 368247}
!722 = !{!"branch_weights", i32 368248, i32 1}
!723 = !{!"branch_weights", i32 1, i32 368248}
!724 = !{!"branch_weights", i32 185403, i32 182846}
!725 = !{!"branch_weights", i32 182846, i32 1}
!726 = !{!727, !670, i64 32}
!727 = !{!"gimplify_omp_ctx", !667, i64 0, !667, i64 8, !667, i64 16, !670, i64 24, !670, i64 28, !670, i64 32}
!728 = !{!727, !667, i64 0}
!729 = distinct !{!729, !660}
!730 = !{!"branch_weights", i32 1, i32 185403}
!731 = !{!"function_entry_count", i64 302859}
!732 = !{!"function_entry_count", i64 305616}
!733 = !{!"gimplify.c:internal_get_tmp_var"}
!734 = !{!"branch_weights", i32 2758, i32 302860}
!735 = !{!"branch_weights", i32 37857, i32 -1428605613}
!736 = !{!"branch_weights", i32 -2034408926, i32 308141818}
!737 = !{!"branch_weights", i32 42835, i32 226123}
!738 = !{!669, !656, i64 69}
!739 = !{!"branch_weights", i32 292540, i32 13078}
!740 = !{!"function_entry_count", i64 4492052}
!741 = !{!"branch_weights", i32 75192, i32 4416862}
!742 = !{!"branch_weights", i32 793, i32 -788686257}
!743 = !{!"branch_weights", i32 175943576, i32 1971540072}
!744 = !{!"branch_weights", i32 1, i32 361874}
!745 = !{!"branch_weights", i32 2041450141, i32 -1969133118}
!746 = !{!"branch_weights", i32 1, i32 2159514}
!747 = !{!"branch_weights", i32 -1757930105, i32 -1349774114}
!748 = !{!"branch_weights", i32 1, i32 877178}
!749 = !{!"branch_weights", i32 205409, i32 812891}
!750 = !{!"branch_weights", i32 1, i32 205409}
!751 = !{!"branch_weights", i32 812891, i32 1}
!752 = !{!"branch_weights", i32 1, i32 4416862}
!753 = !{!"branch_weights", i32 1732767, i32 2684096}
!754 = !{!"branch_weights", i32 -1557628632, i32 -1925922769}
!755 = !{!"branch_weights", i32 0, i32 -2147483648}
!756 = !{!"branch_weights", i32 1, i32 127}
!757 = !{!"branch_weights", i32 543, i32 -1878480882}
!758 = !{!759, !667, i64 608}
!759 = !{!"lang_hooks", !667, i64 0, !709, i64 8, !667, i64 16, !667, i64 24, !667, i64 32, !667, i64 40, !667, i64 48, !667, i64 56, !667, i64 64, !667, i64 72, !667, i64 80, !667, i64 88, !667, i64 96, !667, i64 104, !667, i64 112, !667, i64 120, !667, i64 128, !667, i64 136, !667, i64 144, !667, i64 152, !667, i64 160, !667, i64 168, !667, i64 176, !667, i64 184, !667, i64 192, !667, i64 200, !667, i64 208, !667, i64 216, !667, i64 224, !667, i64 232, !760, i64 240, !761, i64 248, !762, i64 256, !763, i64 272, !764, i64 432, !765, i64 560, !667, i64 584, !667, i64 592, !667, i64 600, !667, i64 608, !667, i64 616, !667, i64 624, !667, i64 632, !667, i64 640, !667, i64 648, !667, i64 656, !667, i64 664, !656, i64 672}
!760 = !{!"lang_hooks_for_tree_inlining", !667, i64 0}
!761 = !{!"lang_hooks_for_callgraph", !667, i64 0}
!762 = !{!"lang_hooks_for_tree_dump", !667, i64 0, !667, i64 8}
!763 = !{!"lang_hooks_for_decls", !667, i64 0, !667, i64 8, !667, i64 16, !667, i64 24, !667, i64 32, !667, i64 40, !667, i64 48, !667, i64 56, !667, i64 64, !667, i64 72, !667, i64 80, !667, i64 88, !667, i64 96, !667, i64 104, !667, i64 112, !667, i64 120, !667, i64 128, !667, i64 136, !667, i64 144, !667, i64 152}
!764 = !{!"lang_hooks_for_types", !667, i64 0, !667, i64 8, !667, i64 16, !667, i64 24, !667, i64 32, !667, i64 40, !667, i64 48, !667, i64 56, !667, i64 64, !667, i64 72, !667, i64 80, !667, i64 88, !667, i64 96, !667, i64 104, !667, i64 112, !656, i64 120}
!765 = !{!"lang_hooks_for_lto", !667, i64 0, !667, i64 8, !667, i64 16}
!766 = !{!"branch_weights", i32 543, i32 543, i32 -1878481425}
!767 = !{!"branch_weights", i32 427198, i32 4369, i32 648, i32 393, i32 215, i32 113778, i32 1, i32 1, i32 1, i32 300790, i32 19, i32 125555, i32 159676, i32 1, i32 1020, i32 1, i32 123674, i32 318814, i32 378, i32 289, i32 34, i32 205409, i32 52, i32 127892, i32 7660, i32 64, i32 362740, i32 1, i32 1, i32 374977, i32 188, i32 1, i32 16198, i32 1, i32 1, i32 1, i32 30606, i32 16763, i32 1, i32 1555, i32 1, i32 28770, i32 1039, i32 53728, i32 26243, i32 25496, i32 1, i32 4538, i32 12005, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 99, i32 1, i32 1, i32 1, i32 1, i32 40786, i32 1, i32 1211400, i32 216447, i32 63, i32 66672, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 41054}
!768 = !{i32 -2, i32 2}
!769 = !{!"branch_weights", i32 1, i32 125555}
!770 = !{!"branch_weights", i32 1, i32 159676}
!771 = !{i32 0, i32 2}
!772 = !{!"branch_weights", i32 34, i32 1}
!773 = !{!"branch_weights", i32 127892, i32 7660}
!774 = !{!"branch_weights", i32 119, i32 127774}
!775 = !{!"branch_weights", i32 1, i32 119}
!776 = !{!"branch_weights", i32 3044154, i32 -2007551643}
!777 = !{!"branch_weights", i32 122244, i32 13012}
!778 = !{!"branch_weights", i32 361874, i32 867}
!779 = !{!"branch_weights", i32 28770, i32 1}
!780 = !{!"branch_weights", i32 53728, i32 1}
!781 = !{!782, !667, i64 8}
!782 = !{!"constructor_elt_d", !667, i64 0, !667, i64 8}
!783 = distinct !{!783, !660}
!784 = !{i32 -2, i32 1}
!785 = !{!"branch_weights", i32 63, i32 1}
!786 = !{!"branch_weights", i32 20415, i32 20640}
!787 = !{!"branch_weights", i32 416772225, i32 40831}
!788 = !{!"branch_weights", i32 16023, i32 4393}
!789 = !{!"branch_weights", i32 778, i32 35885}
!790 = !{!"branch_weights", i32 303, i32 476}
!791 = !{!"branch_weights", i32 1, i32 606, i32 1}
!792 = !{!"branch_weights", i32 91809, i32 607}
!793 = !{!"branch_weights", i32 303, i32 1}
!794 = !{!"branch_weights", i32 12796, i32 126116, i32 5345, i32 163696, i32 155910, i32 1}
!795 = !{!"branch_weights", i32 116758, i32 -613669868}
!796 = !{!"branch_weights", i32 -291229153, i32 308788}
!797 = !{!"branch_weights", i32 1180148882, i32 967334766}
!798 = !{!"branch_weights", i32 -999280977, i32 240786438}
!799 = !{!"branch_weights", i32 127, i32 569504257}
!800 = distinct !{!800, !660}
!801 = !{!"branch_weights", i32 2147477913, i32 0, i32 5735}
!802 = !{!"branch_weights", i32 395228542, i32 1752255106}
!803 = !{!"branch_weights", i32 634883, i32 178009}
!804 = !{!"branch_weights", i32 281, i32 177729}
!805 = !{!"branch_weights", i32 281, i32 1}
!806 = !{!"branch_weights", i32 595, i32 2147483053}
!807 = !{!"branch_weights", i32 1, i32 812891}
!808 = !{!"branch_weights", i32 697, i32 812195}
!809 = !{!"branch_weights", i32 799482, i32 13410}
!810 = !{!"branch_weights", i32 154, i32 3603819}
!811 = !{!"branch_weights", i32 303145, i32 3300675}
!812 = !{!"branch_weights", i32 286, i32 303013}
!813 = !{!"branch_weights", i32 1, i32 286}
!814 = !{!"branch_weights", i32 286, i32 1}
!815 = !{!"branch_weights", i32 1, i32 303298}
!816 = !{!"branch_weights", i32 4168248, i32 -1425889337}
!817 = !{!"branch_weights", i32 879, i32 192721}
!818 = !{!"branch_weights", i32 154, i32 303145}
!819 = !{!"function_entry_count", i64 1020628}
!820 = !{!"gimplify.c:is_gimple_reg_rhs_or_call"}
!821 = !{!"gimplify.c:lookup_tmp_var"}
!822 = !{!"branch_weights", i32 -1402493402, i32 26349915}
!823 = !{!"branch_weights", i32 266906, i32 35955}
!824 = !{!825, !667, i64 0}
!825 = !{!"gimple_temp_hash_elt", !667, i64 0, !667, i64 8}
!826 = !{!"branch_weights", i32 21237, i32 245670}
!827 = !{!"branch_weights", i32 133516, i32 133391}
!828 = !{!825, !667, i64 8}
!829 = !{!"function_entry_count", i64 5101152}
!830 = !{!"function_entry_count", i64 13077}
!831 = !{!"gimplify.c:gimple_seq_last_stmt"}
!832 = !{!"branch_weights", i32 1, i32 13078}
!833 = !{!834, !667, i64 0}
!834 = !{!"gimple_seq_node_d", !667, i64 0, !667, i64 8, !667, i64 16}
!835 = !{!"function_entry_count", i64 1021827}
!836 = !{!"gimplify.c:get_gimple_rhs_class"}
!837 = !{!"function_entry_count", i64 172226}
!838 = !{!"gimplify.c:create_tmp_from_val"}
!839 = !{!"function_entry_count", i64 538277}
!840 = !{!"gimplify.c:gimple_tree_hash"}
!841 = !{!"function_entry_count", i64 155822}
!842 = !{!"gimplify.c:gimple_tree_eq"}
!843 = !{!"branch_weights", i32 139412, i32 16412}
!844 = !{!"branch_weights", i32 137568, i32 1845}
!845 = !{!"branch_weights", i32 4178, i32 133391}
!846 = !{!"branch_weights", i32 133391, i32 1}
!847 = !{!"function_entry_count", i64 11525025}
!848 = !{!"gimplify.c:gimple_seq_last"}
!849 = !{!"branch_weights", i32 4556349, i32 6968678}
!850 = !{!851, !667, i64 8}
!851 = !{!"gimple_seq_d", !667, i64 0, !667, i64 8, !667, i64 16}
!852 = !{!"function_entry_count", i64 2757}
!853 = !{!"function_entry_count", i64 1973687}
!854 = !{!"gimplify.c:gimple_code"}
!855 = !{!"function_entry_count", i64 8689}
!856 = !{!"gimplify.c:gimple_bind_block"}
!857 = !{!"gimplify.c:gimple_bind_vars"}
!858 = !{!"gimplify.c:gimple_bind_set_vars"}
!859 = !{!"gimplify.c:force_constant_size"}
!860 = !{!"gimplify.c:omp_add_variable"}
!861 = !{!727, !667, i64 8}
!862 = !{!863, !709, i64 8}
!863 = !{!"splay_tree_node_s", !709, i64 0, !709, i64 8, !667, i64 16, !667, i64 24}
!864 = !{!759, !667, i64 352}
!865 = !{!"gimplify.c:gimple_seq_first_stmt"}
!866 = !{!"branch_weights", i32 1, i32 8965}
!867 = distinct !{!867, !660}
!868 = !{!"gimplify.c:omp_firstprivatize_type_sizes"}
!869 = !{!727, !667, i64 16}
!870 = distinct !{!870, !660}
!871 = !{!759, !667, i64 512}
!872 = !{!"gimplify.c:omp_notice_variable"}
!873 = !{!727, !670, i64 28}
!874 = !{!759, !667, i64 360}
!875 = !{!727, !670, i64 24}
!876 = distinct !{!876, !660}
!877 = !{!759, !667, i64 384}
!878 = !{!759, !667, i64 368}
!879 = !{!"gimplify.c:is_global_var"}
!880 = !{!"function_entry_count", i64 146988}
!881 = !{!"gimplify.c:gimple_seq_first"}
!882 = !{!"branch_weights", i32 1, i32 146989}
!883 = !{!851, !667, i64 0}
!884 = !{!"function_entry_count", i64 219}
!885 = !{!"branch_weights", i32 220, i32 1}
!886 = !{!"branch_weights", i32 219, i32 1}
!887 = !{!"branch_weights", i32 170, i32 219}
!888 = distinct !{!888, !660}
!889 = !{!"function_entry_count", i64 7496465}
!890 = !{!"gimplify.c:gimple_seq_empty_p"}
!891 = !{!"branch_weights", i32 6667951, i32 828516}
!892 = !{!"function_entry_count", i64 129060}
!893 = !{!"gimplify.c:gsi_start"}
!894 = !{!895, !667, i64 0}
!895 = !{!"", !667, i64 0, !667, i64 8, !667, i64 16}
!896 = !{!895, !667, i64 8}
!897 = !{!"branch_weights", i32 1, i32 129061}
!898 = !{!895, !667, i64 16}
!899 = !{!"function_entry_count", i64 7483332}
!900 = !{!"gimplify.c:gsi_end_p"}
!901 = !{!"function_entry_count", i64 5873575}
!902 = !{!"gimplify.c:gsi_stmt"}
!903 = !{!"function_entry_count", i64 5861755}
!904 = !{!"gimplify.c:annotate_one_with_location"}
!905 = !{!"branch_weights", i32 1823388, i32 4038369}
!906 = !{!"branch_weights", i32 1777928, i32 45461}
!907 = !{!"branch_weights", i32 1490858, i32 287071}
!908 = !{!"function_entry_count", i64 6554791}
!909 = !{!"gimplify.c:gsi_next"}
!910 = !{!834, !667, i64 16}
!911 = !{!"function_entry_count", i64 4692584}
!912 = !{!"gimplify.c:gimple_bb"}
!913 = !{!"gimplify.c:gimple_has_location"}
!914 = !{!"function_entry_count", i64 1823387}
!915 = !{!"gimplify.c:gimple_do_not_emit_location_p"}
!916 = !{!"function_entry_count", i64 1777927}
!917 = !{!"gimplify.c:should_carry_location_p"}
!918 = !{!"function_entry_count", i64 675999}
!919 = !{!"gimplify.c:gimple_set_location"}
!920 = !{!"gimplify.c:gimple_location"}
!921 = !{!"gimplify.c:gimple_plf"}
!922 = !{!"function_entry_count", i64 8470489}
!923 = !{!"gimplify.c:mostly_copy_tree_r"}
!924 = !{!"branch_weights", i32 4528141, i32 4528142, i32 4528142, i32 4528142, i32 1}
!925 = !{!"function_entry_count", i64 57547}
!926 = !{!"branch_weights", i32 1, i32 57548}
!927 = !{!"branch_weights", i32 57548, i32 1}
!928 = distinct !{!928, !660}
!929 = distinct !{!929, !660}
!930 = !{!"function_entry_count", i64 390953}
!931 = !{!"gimplify.c:tsi_end_p"}
!932 = !{!"function_entry_count", i64 350168}
!933 = !{!"gimplify.c:tsi_stmt_ptr"}
!934 = !{!"function_entry_count", i64 1551}
!935 = !{!"function_entry_count", i64 2053208}
!936 = !{!"gimplify.c:VEC_tree_base_length"}
!937 = !{!"branch_weights", i32 1, i32 2053209}
!938 = !{!939, !670, i64 0}
!939 = !{!"VEC_tree_base", !670, i64 0, !670, i64 4, !656, i64 8}
!940 = !{!"gimplify.c:VEC_tree_base_address"}
!941 = !{!"branch_weights", i32 1, i32 1552}
!942 = !{!"function_entry_count", i64 148615}
!943 = !{!"gimplify.c:compare_case_labels"}
!944 = !{!"branch_weights", i32 1, i32 148616}
!945 = !{!"function_entry_count", i64 100641}
!946 = !{!"branch_weights", i32 29181, i32 71462}
!947 = !{!"branch_weights", i32 43114, i32 28349}
!948 = !{!"function_entry_count", i64 3194}
!949 = !{!"branch_weights", i32 1, i32 3195}
!950 = !{!"function_entry_count", i64 201302}
!951 = !{!"branch_weights", i32 -1831855211, i32 34567294}
!952 = !{!"branch_weights", i32 54514, i32 146790}
!953 = !{!"branch_weights", i32 13323, i32 41192}
!954 = !{!"branch_weights", i32 197, i32 13127}
!955 = !{!"branch_weights", i32 215, i32 12913}
!956 = !{!"branch_weights", i32 2232, i32 3613688}
!957 = !{!"branch_weights", i32 8, i32 1}
!958 = !{!"branch_weights", i32 1, i32 8}
!959 = !{!"branch_weights", i32 53779, i32 147525}
!960 = !{!"branch_weights", i32 5267, i32 1541, i32 2647, i32 1, i32 26401, i32 9980, i32 1, i32 51424, i32 39119, i32 3540, i32 1323, i32 2485, i32 3808}
!961 = !{!"function_entry_count", i64 7}
!962 = !{!"gimplify.c:truth_value_p"}
!963 = !{!"function_entry_count", i64 444164}
!964 = !{!"branch_weights", i32 32450, i32 411716}
!965 = !{!"function_entry_count", i64 45846}
!966 = !{!"gimplify.c:is_gimple_mem_rhs_or_call"}
!967 = !{!"branch_weights", i32 2459, i32 43389}
!968 = !{!"branch_weights", i32 1507, i32 953}
!969 = !{!"branch_weights", i32 1201, i32 307}
!970 = !{!"function_entry_count", i64 236409}
!971 = !{!"branch_weights", i32 54289, i32 55265652, i32 233}
!972 = !{!"branch_weights", i32 8672, i32 227507}
!973 = !{!"branch_weights", i32 22, i32 8651}
!974 = !{!"branch_weights", i32 22, i32 1}
!975 = !{!"branch_weights", i32 1, i32 22}
!976 = !{!"branch_weights", i32 1576, i32 225953}
!977 = !{!"branch_weights", i32 614, i32 963}
!978 = !{!"branch_weights", i32 4, i32 611}
!979 = !{!"branch_weights", i32 1, i32 4}
!980 = !{!"branch_weights", i32 64, i32 227465}
!981 = !{!"branch_weights", i32 64, i32 1}
!982 = !{!"function_entry_count", i64 9727018}
!983 = !{!"gimplify.c:gsi_last"}
!984 = !{!"branch_weights", i32 5163495, i32 4563525}
!985 = !{!"branch_weights", i32 1, i32 4563525}
!986 = !{!"function_entry_count", i64 5621}
!987 = !{!"gimplify.c:gimplify_self_mod_expr"}
!988 = !{!"branch_weights", i32 31606884, i32 11245}
!989 = !{!"branch_weights", i32 -675434822, i32 639270}
!990 = !{!"branch_weights", i32 4723, i32 900}
!991 = !{!"branch_weights", i32 4508260, i32 24905653}
!992 = !{!"branch_weights", i32 1, i32 5622}
!993 = !{!"branch_weights", i32 2, i32 899}
!994 = !{!"branch_weights", i32 1, i32 900}
!995 = !{!"branch_weights", i32 22052416, i32 4354119, i32 4696}
!996 = !{!"function_entry_count", i64 414584}
!997 = !{!"gimplify.c:gimplify_compound_lval"}
!998 = !{!"branch_weights", i32 -1609331012, i32 12955}
!999 = !{!"branch_weights", i32 307767, i32 885378}
!1000 = !{!"branch_weights", i32 414589, i32 778556}
!1001 = !{!"branch_weights", i32 -1010521894, i32 913014814, i32 7739109}
!1002 = !{!"branch_weights", i32 5, i32 90772}
!1003 = !{!"branch_weights", i32 1, i32 414585}
!1004 = !{!"branch_weights", i32 414584, i32 1}
!1005 = !{!"branch_weights", i32 95105, i32 995978360, i32 5004, i32 -1393943493}
!1006 = !{!"branch_weights", i32 197341, i32 1635}
!1007 = !{!"branch_weights", i32 1, i32 197341}
!1008 = !{!"branch_weights", i32 579564, i32 1}
!1009 = !{!"branch_weights", i32 1, i32 579564}
!1010 = !{!"branch_weights", i32 363972, i32 414584}
!1011 = distinct !{!1011, !660}
!1012 = !{!"branch_weights", i32 1, i32 414584}
!1013 = !{!"branch_weights", i32 -1393853394, i32 995978360, i32 5004, i32 5005}
!1014 = !{!"branch_weights", i32 38949, i32 160027}
!1015 = !{!"branch_weights", i32 414584, i32 363972}
!1016 = distinct !{!1016, !660}
!1017 = !{!"branch_weights", i32 18477, i32 396109}
!1018 = !{!"branch_weights", i32 287008, i32 109102}
!1019 = !{!"branch_weights", i32 1, i32 287008}
!1020 = !{!"function_entry_count", i64 125554}
!1021 = !{!"gimplify.c:gimplify_cond_expr"}
!1022 = !{!"branch_weights", i32 -353952790, i32 62777}
!1023 = !{!"branch_weights", i32 120166, i32 5390}
!1024 = !{!"branch_weights", i32 13, i32 5378}
!1025 = !{!"branch_weights", i32 70070, i32 5404}
!1026 = !{!"branch_weights", i32 5390, i32 1}
!1027 = !{!669, !656, i64 70}
!1028 = !{!"branch_weights", i32 1, i32 5390}
!1029 = !{!"branch_weights", i32 459750056, i32 -1571193105}
!1030 = !{!"branch_weights", i32 1, i32 17353}
!1031 = !{!"branch_weights", i32 1, i32 102814}
!1032 = !{!"branch_weights", i32 20785, i32 82030}
!1033 = !{!"branch_weights", i32 28259, i32 53772}
!1034 = !{!"branch_weights", i32 28259, i32 1}
!1035 = !{!"branch_weights", i32 1, i32 28259}
!1036 = !{!"branch_weights", i32 54432, i32 48383}
!1037 = !{!"branch_weights", i32 36423, i32 11961}
!1038 = !{!"branch_weights", i32 36423, i32 1}
!1039 = !{!"branch_weights", i32 1, i32 36423}
!1040 = !{!"branch_weights", i32 74556, i32 28259}
!1041 = !{!"branch_weights", i32 1549222177, i32 519625}
!1042 = !{!"branch_weights", i32 1, i32 25}
!1043 = !{!"branch_weights", i32 20806, i32 53727}
!1044 = !{!"branch_weights", i32 41834, i32 11894}
!1045 = !{!"branch_weights", i32 1873, i32 10022}
!1046 = !{!"branch_weights", i32 66392, i32 36423}
!1047 = !{!"branch_weights", i32 92769, i32 10046}
!1048 = !{!"branch_weights", i32 -2138907551, i32 1615845}
!1049 = !{!"function_entry_count", i64 159675}
!1050 = !{!"gimplify.c:gimplify_call_expr"}
!1051 = !{!"branch_weights", i32 -1107914174, i32 39919}
!1052 = !{!"branch_weights", i32 159676, i32 1}
!1053 = !{!"branch_weights", i32 578311, i32 2146905337}
!1054 = !{!"branch_weights", i32 3292, i32 156385}
!1055 = !{!"branch_weights", i32 145961, i32 10425}
!1056 = !{!"branch_weights", i32 16752895, i32 3932289}
!1057 = !{!"branch_weights", i32 413707, i32 70887429}
!1058 = !{!"branch_weights", i32 1, i32 49}
!1059 = !{!"branch_weights", i32 49, i32 1}
!1060 = !{!"branch_weights", i32 154403, i32 3292}
!1061 = !{!"branch_weights", i32 1, i32 6584, i32 1}
!1062 = !{!"branch_weights", i32 15112, i32 139292}
!1063 = !{!"branch_weights", i32 310625, i32 152586}
!1064 = !{!"branch_weights", i32 2147476837, i32 6811}
!1065 = !{!"branch_weights", i32 147824, i32 157693}
!1066 = distinct !{!1066, !660}
!1067 = !{!"branch_weights", i32 -1606840023, i32 90005253}
!1068 = !{!"branch_weights", i32 455, i32 4655}
!1069 = !{!"branch_weights", i32 13, i32 443}
!1070 = !{!"branch_weights", i32 443, i32 1}
!1071 = !{!"branch_weights", i32 1, i32 443}
!1072 = !{!"branch_weights", i32 150322, i32 7373}
!1073 = !{!"branch_weights", i32 561993, i32 -678203108}
!1074 = !{!"branch_weights", i32 -1187468975, i32 19708}
!1075 = !{!"branch_weights", i32 1, i32 315341}
!1076 = !{!"branch_weights", i32 165067, i32 150322}
!1077 = distinct !{!1077, !660}
!1078 = !{!"branch_weights", i32 -301180063, i32 1029744686}
!1079 = !{!"branch_weights", i32 1, i32 125371}
!1080 = !{!"branch_weights", i32 157694, i32 1}
!1081 = !{!"branch_weights", i32 5085025, i32 350674895}
!1082 = !{!"branch_weights", i32 30272, i32 127423}
!1083 = !{!"function_entry_count", i64 1976}
!1084 = !{!"gimplify.c:gimplify_compound_expr"}
!1085 = !{!"branch_weights", i32 395, i32 1583}
!1086 = !{!"branch_weights", i32 1, i32 1977}
!1087 = distinct !{!1087, !660}
!1088 = !{!"branch_weights", i32 1343, i32 635}
!1089 = !{!"gimplify.c:gimplify_compound_literal_expr"}
!1090 = !{!"function_entry_count", i64 442486}
!1091 = !{!"gimplify.c:gimplify_modify_expr"}
!1092 = !{!"branch_weights", i32 -1235674403, i32 13827}
!1093 = !{!"branch_weights", i32 -2090725220, i32 4981}
!1094 = !{!"branch_weights", i32 -535039513, i32 -1271735302, i32 15329}
!1095 = !{!"branch_weights", i32 1, i32 197215}
!1096 = !{!"branch_weights", i32 442465, i32 23}
!1097 = !{!"branch_weights", i32 442465, i32 1}
!1098 = !{!"branch_weights", i32 1, i32 442465}
!1099 = !{!"branch_weights", i32 442463, i32 3}
!1100 = !{!"branch_weights", i32 1, i32 442463}
!1101 = !{!"branch_weights", i32 13826, i32 -1236006259}
!1102 = !{!"branch_weights", i32 424936, i32 17528}
!1103 = !{!"branch_weights", i32 69715, i32 355222}
!1104 = !{!"branch_weights", i32 53424, i32 16292}
!1105 = !{!"branch_weights", i32 5231, i32 11062}
!1106 = !{!"branch_weights", i32 3605, i32 1627}
!1107 = !{!"branch_weights", i32 2016, i32 1590}
!1108 = !{!"branch_weights", i32 1, i32 2016}
!1109 = !{!"branch_weights", i32 53534, i32 388930}
!1110 = !{!"branch_weights", i32 53534, i32 1}
!1111 = !{!"branch_weights", i32 -1931427532, i32 12154}
!1112 = !{!"branch_weights", i32 1, i32 17528}
!1113 = !{!"branch_weights", i32 436119, i32 6345}
!1114 = !{!"function_entry_count", i64 665}
!1115 = !{!"gimplify.c:gimplify_boolean_expr"}
!1116 = !{!"function_entry_count", i64 205408}
!1117 = !{!"gimplify.c:gimplify_addr_expr"}
!1118 = !{!"branch_weights", i32 -1657913716, i32 25676}
!1119 = !{!"branch_weights", i32 205409, i32 1, i32 1, i32 1}
!1120 = !{!"function_entry_count", i64 135254}
!1121 = !{!"gimplify.c:gimplify_conversion"}
!1122 = !{!"branch_weights", i32 -2008227918, i32 33813}
!1123 = !{!"branch_weights", i32 7522, i32 960942882, i32 56580484}
!1124 = !{!"branch_weights", i32 135255, i32 1}
!1125 = !{!"branch_weights", i32 -1875262006, i32 906959062, i32 24595}
!1126 = !{!"branch_weights", i32 99680256, i32 268516620, i32 9984}
!1127 = !{!"branch_weights", i32 723179664, i32 53785}
!1128 = !{!"branch_weights", i32 16056, i32 10837}
!1129 = !{!"branch_weights", i32 198945646, i32 2146130382, i32 138088876}
!1130 = !{!"branch_weights", i32 -1311827715, i32 295262429, i32 269652024}
!1131 = !{!"branch_weights", i32 205209550, i32 -2127893476, i32 139691062}
!1132 = !{!"branch_weights", i32 1, i32 124206}
!1133 = !{!"function_entry_count", i64 30605}
!1134 = !{!"gimplify.c:gimplify_decl_expr"}
!1135 = !{!"branch_weights", i32 1, i32 30606}
!1136 = !{!"branch_weights", i32 30606, i32 30607, i32 936727236}
!1137 = !{!"branch_weights", i32 881, i32 29726}
!1138 = !{!"branch_weights", i32 30606, i32 1}
!1139 = !{!"branch_weights", i32 30602, i32 5}
!1140 = !{!"branch_weights", i32 29894, i32 914846791}
!1141 = !{!"branch_weights", i32 231666119, i32 187772209}
!1142 = !{!"branch_weights", i32 13049, i32 655}
!1143 = !{!"function_entry_count", i64 16762}
!1144 = !{!"gimplify.c:gimplify_bind_expr"}
!1145 = !{!669, !656, i64 68}
!1146 = !{!"branch_weights", i32 1, i32 16762}
!1147 = !{!"branch_weights", i32 30607, i32 8265}
!1148 = !{!"branch_weights", i32 30607, i32 1}
!1149 = !{!"branch_weights", i32 1, i32 38871}
!1150 = !{!"branch_weights", i32 77743, i32 1510954641}
!1151 = !{!"branch_weights", i32 16762, i32 22109}
!1152 = distinct !{!1152, !660}
!1153 = !{!"branch_weights", i32 16761, i32 3}
!1154 = !{!"gimplify.c:gimplify_loop_expr"}
!1155 = !{!669, !667, i64 32}
!1156 = !{!"function_entry_count", i64 1554}
!1157 = !{!"gimplify.c:gimplify_switch_expr"}
!1158 = !{!"branch_weights", i32 3111, i32 2418025}
!1159 = !{!"branch_weights", i32 1, i32 1555}
!1160 = !{!"branch_weights", i32 1555, i32 1}
!1161 = !{!669, !667, i64 48}
!1162 = !{!"branch_weights", i32 1, i32 1554}
!1163 = !{!"branch_weights", i32 1485, i32 24759}
!1164 = !{!"branch_weights", i32 24759, i32 1}
!1165 = !{!"branch_weights", i32 1485, i32 1}
!1166 = !{!"branch_weights", i32 24689, i32 1554}
!1167 = distinct !{!1167, !660}
!1168 = !{!"branch_weights", i32 4142170, i32 2143341478}
!1169 = !{!"branch_weights", i32 96670441, i32 2050813207}
!1170 = !{!"branch_weights", i32 1, i32 71}
!1171 = !{!"branch_weights", i32 163679, i32 2209}
!1172 = !{!"branch_weights", i32 46, i32 26}
!1173 = !{!"branch_weights", i32 26, i32 1}
!1174 = distinct !{!1174, !660}
!1175 = !{!"gimplify.c:gimplify_exit_expr"}
!1176 = !{!"function_entry_count", i64 890197}
!1177 = !{!"gimplify.c:gimplify_seq_add_stmt"}
!1178 = !{!"branch_weights", i32 1, i32 890198}
!1179 = !{!"branch_weights", i32 105346, i32 784853}
!1180 = !{!"function_entry_count", i64 26242}
!1181 = !{!"gimplify.c:gimplify_case_label_expr"}
!1182 = !{!"branch_weights", i32 1, i32 26243}
!1183 = !{!"function_entry_count", i64 25495}
!1184 = !{!"gimplify.c:gimplify_return_expr"}
!1185 = !{!"branch_weights", i32 1, i32 25496}
!1186 = !{!"branch_weights", i32 1441, i32 24056}
!1187 = !{!"branch_weights", i32 1, i32 24056}
!1188 = !{!"branch_weights", i32 48113, i32 1}
!1189 = !{!"branch_weights", i32 24056, i32 1}
!1190 = !{!"branch_weights", i32 23994, i32 63}
!1191 = !{!669, !667, i64 40}
!1192 = !{!"branch_weights", i32 5127, i32 18868}
!1193 = !{!"branch_weights", i32 10255, i32 26286129}
!1194 = !{!"gimplify.c:VEC_constructor_elt_base_iterate"}
!1195 = !{!1196, !670, i64 0}
!1196 = !{!"VEC_constructor_elt_base", !670, i64 0, !670, i64 4, !656, i64 8}
!1197 = !{!"function_entry_count", i64 4537}
!1198 = !{!"gimplify.c:gimplify_save_expr"}
!1199 = !{!"branch_weights", i32 4538, i32 1}
!1200 = !{!"branch_weights", i32 2267, i32 2272}
!1201 = !{!"branch_weights", i32 1, i32 2267}
!1202 = !{!"gimplify.c:gimplify_asm_expr"}
!1203 = distinct !{!1203, !660}
!1204 = distinct !{!1204, !660}
!1205 = distinct !{!1205, !660}
!1206 = distinct !{!1206, !660}
!1207 = !{!"gimplify.c:gimple_try_set_catch_is_cleanup"}
!1208 = !{i32 0, i32 4}
!1209 = !{!"gimplify.c:gimplify_cleanup_point_expr"}
!1210 = !{!669, !670, i64 64}
!1211 = !{!669, !667, i64 24}
!1212 = !{i64 0, i64 8, !666, i64 8, i64 8, !666, i64 16, i64 8, !666}
!1213 = !{!"function_entry_count", i64 98}
!1214 = !{!"gimplify.c:gimplify_target_expr"}
!1215 = !{!"branch_weights", i32 1, i32 99}
!1216 = !{!"branch_weights", i32 99, i32 1}
!1217 = !{!"gimplify.c:gimple_set_no_warning"}
!1218 = !{!"function_entry_count", i64 40785}
!1219 = !{!"gimplify.c:gimplify_statement_list"}
!1220 = !{!"branch_weights", i32 40785, i32 1}
!1221 = !{!"branch_weights", i32 309384, i32 40785}
!1222 = distinct !{!1222, !660}
!1223 = !{!"branch_weights", i32 40786, i32 1}
!1224 = !{!"function_entry_count", i64 1518620}
!1225 = !{!"gimplify.c:gimplify_var_or_parm_decl"}
!1226 = !{!"branch_weights", i32 1301413, i32 217209}
!1227 = !{!"branch_weights", i32 1387216, i32 -1856691293}
!1228 = !{!"branch_weights", i32 1, i32 740}
!1229 = !{!"branch_weights", i32 1518621, i32 1}
!1230 = !{!"branch_weights", i32 1518617, i32 5}
!1231 = !{!"branch_weights", i32 5, i32 1}
!1232 = !{!"branch_weights", i32 5, i32 31}
!1233 = distinct !{!1233, !660}
!1234 = !{!759, !667, i64 120}
!1235 = !{!"gimplify.c:gimplify_omp_parallel"}
!1236 = !{!"gimplify.c:gimplify_omp_task"}
!1237 = !{!"gimplify.c:gimplify_omp_for"}
!1238 = distinct !{!1238, !660}
!1239 = distinct !{!1239, !660}
!1240 = distinct !{!1240, !660}
!1241 = !{!"gimplify.c:gimplify_omp_workshare"}
!1242 = !{!"gimplify.c:gimplify_omp_atomic"}
!1243 = !{!"gimplify.c:gimplify_scalar_mode_aggregate_compare"}
!1244 = !{!759, !667, i64 448}
!1245 = !{!"gimplify.c:gimplify_variable_sized_compare"}
!1246 = !{!"function_entry_count", i64 40191}
!1247 = !{!"gimplify.c:gimplify_seq_add_seq"}
!1248 = !{!"branch_weights", i32 37093, i32 3100}
!1249 = !{!"branch_weights", i32 697, i32 2404}
!1250 = !{!"function_entry_count", i64 799481}
!1251 = !{!"gimplify.c:annotate_all_with_location_after"}
!1252 = !{!"branch_weights", i32 681217, i32 118266}
!1253 = !{!"branch_weights", i32 799481, i32 1}
!1254 = !{!"branch_weights", i32 5061887, i32 799481}
!1255 = distinct !{!1255, !660}
!1256 = !{!"function_entry_count", i64 416138}
!1257 = !{!"gimplify.c:VEC_tree_heap_alloc"}
!1258 = !{!"function_entry_count", i64 804797}
!1259 = !{!"gimplify.c:VEC_tree_heap_safe_push"}
!1260 = !{!"function_entry_count", i64 804917}
!1261 = !{!"gimplify.c:VEC_tree_base_index"}
!1262 = !{!"function_entry_count", i64 778555}
!1263 = !{!"gimplify.c:VEC_tree_base_pop"}
!1264 = !{!"function_entry_count", i64 297360}
!1265 = !{!"gimplify.c:canonicalize_component_ref"}
!1266 = !{!"branch_weights", i32 297361, i32 1}
!1267 = !{!"branch_weights", i32 -1631967740, i32 -853809630}
!1268 = !{!"branch_weights", i32 294098, i32 3264}
!1269 = !{!"branch_weights", i32 1, i32 3264}
!1270 = !{!"gimplify.c:VEC_tree_heap_free"}
!1271 = !{!"branch_weights", i32 1, i32 416139}
!1272 = !{!"gimplify.c:VEC_tree_heap_reserve"}
!1273 = !{!"branch_weights", i32 1094, i32 803705}
!1274 = !{!"gimplify.c:VEC_tree_base_quick_push"}
!1275 = !{!"gimplify.c:VEC_tree_base_space"}
!1276 = !{!"branch_weights", i32 1, i32 804798}
!1277 = !{!939, !670, i64 4}
!1278 = !{!"gimplify.c:generic_expr_could_trap_p"}
!1279 = distinct !{!1279, !660}
!1280 = !{!"gimplify.c:gimplify_pure_cond_expr"}
!1281 = !{!"function_entry_count", i64 27853}
!1282 = !{!"gimplify.c:shortcut_cond_expr"}
!1283 = !{!"branch_weights", i32 2, i32 27853}
!1284 = !{!"branch_weights", i32 18949, i32 8906}
!1285 = !{!"branch_weights", i32 18951, i32 8904}
!1286 = !{!"branch_weights", i32 10474, i32 8477}
!1287 = !{!"branch_weights", i32 109704676, i32 20949}
!1288 = !{!"branch_weights", i32 20, i32 2147483628}
!1289 = !{!"branch_weights", i32 1, i32 10474}
!1290 = !{!"branch_weights", i32 0, i32 10474}
!1291 = distinct !{!1291, !660}
!1292 = !{!"branch_weights", i32 116, i32 27739}
!1293 = !{!"branch_weights", i32 29, i32 87}
!1294 = !{!"branch_weights", i32 841, i32 59}
!1295 = !{!"branch_weights", i32 1, i32 29}
!1296 = !{!"branch_weights", i32 0, i32 29}
!1297 = distinct !{!1297, !660}
!1298 = !{!"branch_weights", i32 248951444, i32 315669406}
!1299 = !{!"branch_weights", i32 1, i32 12281}
!1300 = !{!"branch_weights", i32 725, i32 11557}
!1301 = !{!"branch_weights", i32 725, i32 1}
!1302 = !{!"branch_weights", i32 3417, i32 8865}
!1303 = !{!"branch_weights", i32 618, i32 8248}
!1304 = !{!"branch_weights", i32 618, i32 1}
!1305 = !{!"branch_weights", i32 11557, i32 725}
!1306 = !{!"branch_weights", i32 103413642, i32 39855888}
!1307 = !{!"branch_weights", i32 9179362, i32 572546}
!1308 = !{!"branch_weights", i32 521284, i32 1445}
!1309 = !{!"branch_weights", i32 1, i32 722}
!1310 = !{!"branch_weights", i32 3313, i32 38309841}
!1311 = !{!"branch_weights", i32 27333872, i32 10975969}
!1312 = !{!"branch_weights", i32 55, i32 2147483593}
!1313 = !{!"branch_weights", i32 239, i32 11322}
!1314 = !{!"branch_weights", i32 8276, i32 3285}
!1315 = !{!"branch_weights", i32 133633600, i32 23121}
!1316 = !{!"branch_weights", i32 21, i32 11540}
!1317 = !{!"branch_weights", i32 8248, i32 3313}
!1318 = !{!"branch_weights", i32 5795, i32 2454}
!1319 = !{!"branch_weights", i32 6022116, i32 4909}
!1320 = !{!"branch_weights", i32 988, i32 1467}
!1321 = !{!"branch_weights", i32 8248, i32 1}
!1322 = !{!"branch_weights", i32 62293644, i32 68611559}
!1323 = !{!"function_entry_count", i64 120165}
!1324 = !{!"gimplify.c:gimple_push_condition"}
!1325 = !{!"gimplify.c:gimple_pop_condition"}
!1326 = !{!"branch_weights", i32 120166, i32 1}
!1327 = !{!"branch_weights", i32 646822089, i32 1500661559}
!1328 = !{!"function_entry_count", i64 10021}
!1329 = !{!"gimplify.c:gimple_set_do_not_emit_location"}
!1330 = !{!"gimplify.c:tree_operand_length"}
!1331 = !{!"function_entry_count", i64 64130}
!1332 = !{!"gimplify.c:shortcut_cond_r"}
!1333 = !{!"branch_weights", i32 -2145008115, i32 896355428, i32 560041698, i32 2701095}
!1334 = !{!"branch_weights", i32 1675, i32 14254}
!1335 = !{!"branch_weights", i32 253701184, i32 31857}
!1336 = !{!"branch_weights", i32 1, i32 15928}
!1337 = !{!"branch_weights", i32 6733, i32 3220}
!1338 = !{!"branch_weights", i32 99042304, i32 19905}
!1339 = !{!"branch_weights", i32 1, i32 9952}
!1340 = !{!"branch_weights", i32 2304, i32 97}
!1341 = !{!"branch_weights", i32 1, i32 48}
!1342 = !{!"branch_weights", i32 55725, i32 8407}
!1343 = !{!"gimplify.c:gimple_set_plf"}
!1344 = !{!"function_entry_count", i64 315340}
!1345 = !{!"gimplify.c:gimplify_arg"}
!1346 = !{!"branch_weights", i32 1741, i32 313601}
!1347 = !{!"function_entry_count", i64 757804}
!1348 = !{!"gimplify.c:maybe_with_size_expr"}
!1349 = !{!"branch_weights", i32 5920, i32 -2051731289}
!1350 = !{!"branch_weights", i32 1, i32 757805}
!1351 = !{!"branch_weights", i32 757805, i32 1}
!1352 = !{!"function_entry_count", i64 884950}
!1353 = !{!"gimplify.c:gimplify_modify_expr_rhs"}
!1354 = !{!"branch_weights", i32 632410, i32 114062, i32 25709, i32 57, i32 564, i32 14, i32 2485, i32 110226, i32 1, i32 1, i32 1, i32 1}
!1355 = !{!"branch_weights", i32 87834900, i32 -655303558}
!1356 = !{!"branch_weights", i32 2689, i32 1}
!1357 = !{!"branch_weights", i32 7, i32 2683}
!1358 = !{!"branch_weights", i32 1, i32 7}
!1359 = distinct !{!1359, !660}
!1360 = !{!"branch_weights", i32 25709, i32 1}
!1361 = !{!"branch_weights", i32 1, i32 57}
!1362 = !{!"branch_weights", i32 57, i32 1}
!1363 = !{!"branch_weights", i32 12, i32 2474}
!1364 = !{!"branch_weights", i32 1, i32 12}
!1365 = !{!"branch_weights", i32 12, i32 1}
!1366 = !{!"branch_weights", i32 109866, i32 361}
!1367 = !{!"branch_weights", i32 109186, i32 681}
!1368 = !{ptr @is_gimple_mem_rhs_or_call, ptr @is_gimple_reg_rhs_or_call}
!1369 = !{!"branch_weights", i32 1, i32 681}
!1370 = !{!"branch_weights", i32 5, i32 677}
!1371 = !{!"branch_weights", i32 1, i32 5}
!1372 = !{!"branch_weights", i32 677, i32 1}
!1373 = !{!"branch_weights", i32 633, i32 45}
!1374 = !{!"branch_weights", i32 633, i32 1}
!1375 = !{!"branch_weights", i32 322, i32 356}
!1376 = !{!"branch_weights", i32 321, i32 361}
!1377 = !{!"function_entry_count", i64 442464}
!1378 = !{!"gimplify.c:zero_sized_type"}
!1379 = !{!"branch_weights", i32 4667705, i32 -2130194906}
!1380 = !{!"branch_weights", i32 1, i32 949}
!1381 = !{!"branch_weights", i32 949, i32 1}
!1382 = !{!"gimplify.c:gimplify_modify_expr_to_memset"}
!1383 = !{!"gimplify.c:gimplify_modify_expr_to_memcpy"}
!1384 = !{!"gimplify.c:gimplify_modify_expr_complex_part"}
!1385 = !{!"function_entry_count", i64 53533}
!1386 = !{!"gimplify.c:gimple_call_noreturn_p"}
!1387 = !{!"function_entry_count", i64 53535}
!1388 = !{!"gimplify.c:gimple_call_set_lhs"}
!1389 = !{!"branch_weights", i32 1, i32 53536}
!1390 = !{!"function_entry_count", i64 17527}
!1391 = !{!"gimplify.c:make_ssa_name"}
!1392 = !{!"function_entry_count", i64 19}
!1393 = !{!"gimplify.c:gimplify_init_constructor"}
!1394 = !{!"branch_weights", i32 20, i32 1}
!1395 = !{!"branch_weights", i32 7, i32 14}
!1396 = !{!"branch_weights", i32 1, i32 14}
!1397 = !{!"branch_weights", i32 1, i32 16, i32 1, i32 1, i32 5, i32 1, i32 1}
!1398 = !{!"branch_weights", i32 1, i32 20}
!1399 = !{!"branch_weights", i32 260, i32 181}
!1400 = !{!"branch_weights", i32 1, i32 27}
!1401 = !{!1402, !670, i64 72}
!1402 = !{!"processor_costs", !670, i64 0, !670, i64 4, !670, i64 8, !670, i64 12, !656, i64 16, !670, i64 36, !656, i64 40, !670, i64 60, !670, i64 64, !670, i64 68, !670, i64 72, !670, i64 76, !656, i64 80, !656, i64 92, !670, i64 104, !656, i64 108, !656, i64 120, !670, i64 132, !656, i64 136, !656, i64 144, !670, i64 152, !656, i64 156, !656, i64 168, !670, i64 180, !670, i64 184, !670, i64 188, !670, i64 192, !670, i64 196, !670, i64 200, !670, i64 204, !670, i64 208, !670, i64 212, !670, i64 216, !670, i64 220, !670, i64 224, !656, i64 228, !656, i64 300, !670, i64 372, !670, i64 376, !670, i64 380, !670, i64 384, !670, i64 388, !670, i64 392, !670, i64 396, !670, i64 400, !670, i64 404, !670, i64 408, !670, i64 412}
!1403 = !{!"branch_weights", i32 3, i32 18}
!1404 = !{!"branch_weights", i32 1, i32 3}
!1405 = !{!"branch_weights", i32 794225756, i32 1353257892}
!1406 = !{!"branch_weights", i32 13, i32 1}
!1407 = !{!"branch_weights", i32 1, i32 13}
!1408 = !{!"branch_weights", i32 169, i32 27}
!1409 = !{!"branch_weights", i32 27, i32 1}
!1410 = !{!"branch_weights", i32 7, i32 8}
!1411 = !{!"branch_weights", i32 7, i32 1}
!1412 = !{!1413, !670, i64 8}
!1413 = !{!"gimplify_init_ctor_preeval_data", !667, i64 0, !670, i64 8}
!1414 = !{!"branch_weights", i32 14, i32 1}
!1415 = !{!"branch_weights", i32 1073741832, i32 1073741816}
!1416 = distinct !{!1416, !660}
!1417 = distinct !{!1417, !660}
!1418 = !{!"branch_weights", i32 -2147483648, i32 0}
!1419 = !{!"function_entry_count", i64 25708}
!1420 = !{!"gimplify.c:gimple_fold_indirect_ref_rhs"}
!1421 = !{!"gimplify.c:optimize_compound_literals_in_ctor"}
!1422 = !{!"branch_weights", i32 1, i32 159}
!1423 = !{!"branch_weights", i32 64516, i32 255, i32 254}
!1424 = !{!"branch_weights", i32 428148048, i32 1719335600}
!1425 = !{!"branch_weights", i32 159, i32 1873}
!1426 = distinct !{!1426, !660}
!1427 = !{!"function_entry_count", i64 186}
!1428 = !{!"gimplify.c:VEC_constructor_elt_base_length"}
!1429 = !{!"branch_weights", i32 1, i32 187}
!1430 = !{!"function_entry_count", i64 6}
!1431 = !{!"gimplify.c:gimplify_init_ctor_preeval"}
!1432 = distinct !{!1432, !660}
!1433 = !{!"function_entry_count", i64 13}
!1434 = !{!"gimplify.c:gimplify_init_ctor_eval"}
!1435 = !{!"branch_weights", i32 3, i32 12}
!1436 = !{!"branch_weights", i32 1, i32 223}
!1437 = !{!782, !667, i64 0}
!1438 = !{!"branch_weights", i32 1, i32 136}
!1439 = !{!"branch_weights", i32 136, i32 1}
!1440 = !{!"branch_weights", i32 30, i32 107}
!1441 = !{!"branch_weights", i32 1, i32 107}
!1442 = !{!"branch_weights", i32 30, i32 1}
!1443 = !{!"branch_weights", i32 1953, i32 223}
!1444 = distinct !{!1444, !660}
!1445 = !{!"function_entry_count", i64 523}
!1446 = !{!"gimplify.c:VEC_constructor_elt_base_index"}
!1447 = !{!"gimplify.c:VEC_constructor_elt_gc_copy"}
!1448 = !{!1449, !670, i64 0}
!1449 = !{!"VEC_constructor_elt_gc", !1196, i64 0}
!1450 = !{!"gimplify.c:gimplify_init_ctor_preeval_1"}
!1451 = !{!1413, !667, i64 0}
!1452 = distinct !{!1452, !660}
!1453 = !{!"function_entry_count", i64 135}
!1454 = !{!"gimplify.c:zero_sized_field_decl"}
!1455 = !{!"branch_weights", i32 1, i32 30}
!1456 = !{!"gimplify.c:gimplify_init_ctor_eval_range"}
!1457 = !{!"gimplify.c:prepare_gimple_addressable"}
!1458 = !{!"branch_weights", i32 205409, i32 76964}
!1459 = distinct !{!1459, !660}
!1460 = !{!"branch_weights", i32 205409, i32 1}
!1461 = !{!"function_entry_count", i64 54913}
!1462 = !{!"gimplify.c:gimple_set_op"}
!1463 = !{!"branch_weights", i32 1, i32 54914}
!1464 = !{!"branch_weights", i32 54914, i32 1}
!1465 = !{!"function_entry_count", i64 57821}
!1466 = !{!"gimplify.c:gimple_has_ops"}
!1467 = !{!"function_entry_count", i64 55602}
!1468 = !{!"gimplify.c:gimple_num_ops"}
!1469 = !{!"gimplify.c:gimple_ops"}
!1470 = !{!"branch_weights", i32 1, i32 57822}
!1471 = !{!"gimplify.c:gimple_statement_structure"}
!1472 = !{!"gimplify.c:gss_for_code"}
!1473 = !{!"function_entry_count", i64 9455}
!1474 = !{!"gimplify.c:canonicalize_addr_expr"}
!1475 = !{!"branch_weights", i32 1065024, i32 8703025, i32 1032}
!1476 = !{!"branch_weights", i32 8425, i32 1}
!1477 = !{!"branch_weights", i32 2452, i32 5974}
!1478 = !{!"branch_weights", i32 277, i32 2176}
!1479 = !{!"branch_weights", i32 1, i32 2176}
!1480 = !{!"branch_weights", i32 2176, i32 1}
!1481 = !{!"branch_weights", i32 1963, i32 214}
!1482 = !{!"function_entry_count", i64 2238}
!1483 = !{!"branch_weights", i32 4479, i32 5013121}
!1484 = !{!"branch_weights", i32 1114, i32 1126}
!1485 = !{!"branch_weights", i32 579, i32 81, i32 73, i32 1, i32 3, i32 1, i32 175, i32 191, i32 20, i32 1}
!1486 = !{!"branch_weights", i32 1, i32 154}
!1487 = !{!"branch_weights", i32 154, i32 66}
!1488 = distinct !{!1488, !660}
!1489 = !{!"branch_weights", i32 1, i32 175}
!1490 = !{!"branch_weights", i32 5421151, i32 30625}
!1491 = !{!"branch_weights", i32 5, i32 171}
!1492 = !{!"branch_weights", i32 1, i32 209}
!1493 = !{!"branch_weights", i32 1011, i32 1}
!1494 = !{!"branch_weights", i32 209, i32 802}
!1495 = distinct !{!1495, !660}
!1496 = !{!"branch_weights", i32 424, i32 690}
!1497 = !{!"branch_weights", i32 690, i32 0}
!1498 = distinct !{!1498, !660}
!1499 = !{!"function_entry_count", i64 4}
!1500 = !{!"gimplify.c:gimplify_vla_decl"}
!1501 = !{!"function_entry_count", i64 5572}
!1502 = !{!"branch_weights", i32 5, i32 5569}
!1503 = !{!"branch_weights", i32 21, i32 5549}
!1504 = !{!"branch_weights", i32 1, i32 21}
!1505 = !{!"branch_weights", i32 21, i32 1}
!1506 = !{!"gimplify.c:gimple_push_bind_expr"}
!1507 = !{!"branch_weights", i32 8965, i32 7799}
!1508 = !{!"function_entry_count", i64 16764}
!1509 = !{!"gimplify.c:gimple_bind_set_body"}
!1510 = !{!"function_entry_count", i64 2}
!1511 = !{!"gimplify.c:build_stack_save_restore"}
!1512 = !{!"gimplify.c:gimple_bind_body"}
!1513 = !{!"gimplify.c:gimple_pop_bind_expr"}
!1514 = !{!"gimplify.c:VEC_gimple_heap_alloc"}
!1515 = !{!"gimplify.c:VEC_gimple_heap_safe_push"}
!1516 = !{!"gimplify.c:VEC_gimple_heap_reserve"}
!1517 = !{!"branch_weights", i32 2, i32 16762}
!1518 = !{!"gimplify.c:VEC_gimple_base_quick_push"}
!1519 = !{!"gimplify.c:VEC_gimple_base_space"}
!1520 = !{!"branch_weights", i32 1, i32 16763}
!1521 = !{!681, !670, i64 4}
!1522 = !{!"gimplify.c:VEC_gimple_base_pop"}
!1523 = !{!"function_entry_count", i64 1484}
!1524 = !{!"gimplify.c:VEC_tree_base_ordered_remove"}
!1525 = !{!"gimplify.c:VEC_tree_gc_safe_push"}
!1526 = !{!"gimplify.c:gimple_asm_set_volatile"}
!1527 = !{!"gimplify.c:gimple_asm_set_input"}
!1528 = !{!"gimplify.c:VEC_tree_gc_reserve"}
!1529 = !{!"gimplify.c:gimple_try_kind"}
!1530 = !{!"gimplify.c:gsi_one_before_end_p"}
!1531 = !{!"gimplify.c:gimple_wce_cleanup"}
!1532 = !{!"gimplify.c:gimple_wce_cleanup_eh_only"}
!1533 = !{!"gimplify.c:gsi_stmt_ptr"}
!1534 = !{!"gimplify.c:gimple_push_cleanup"}
!1535 = !{!"gimplify.c:gimple_conditional_context"}
!1536 = !{!"gimplify.c:gimple_wce_set_cleanup_eh_only"}
!1537 = !{!"gimplify.c:tsi_start"}
!1538 = !{!"gimplify.c:gimplify_scan_omp_clauses"}
!1539 = distinct !{!1539, !660}
!1540 = !{!"gimplify.c:gimplify_and_return_first"}
!1541 = !{!"gimplify.c:gimplify_adjust_omp_clauses"}
!1542 = !{!759, !667, i64 376}
!1543 = distinct !{!1543, !660}
!1544 = !{!"gimplify.c:gimple_omp_set_subcode"}
!1545 = !{!"gimplify.c:new_omp_context"}
!1546 = !{!"gimplify.c:omp_check_private"}
!1547 = distinct !{!1547, !660}
!1548 = !{!"gimplify.c:splay_tree_compare_decl_uid"}
!1549 = !{!"gimplify.c:gimplify_adjust_omp_clauses_1"}
!1550 = !{!863, !709, i64 0}
!1551 = !{!759, !667, i64 424}
!1552 = !{!"gimplify.c:delete_omp_context"}
!1553 = !{!"gimplify.c:omp_is_private"}
!1554 = !{!"gimplify.c:gimple_omp_for_set_index"}
!1555 = !{!1556, !667, i64 8}
!1556 = !{!"gimple_omp_for_iter", !670, i64 0, !667, i64 8, !667, i64 16, !667, i64 24, !667, i64 32}
!1557 = !{!"gimplify.c:gimple_omp_for_set_initial"}
!1558 = !{!1556, !667, i64 16}
!1559 = !{!"gimplify.c:gimple_omp_for_set_cond"}
!1560 = !{!1556, !670, i64 0}
!1561 = !{!"gimplify.c:gimple_omp_for_set_final"}
!1562 = !{!1556, !667, i64 24}
!1563 = !{!"gimplify.c:gimple_omp_for_set_incr"}
!1564 = !{!1556, !667, i64 32}
!1565 = !{!"gimplify.c:goa_stabilize_expr"}
!1566 = !{!"gimplify.c:goa_lhs_expr_p"}
!1567 = distinct !{!1567, !660}
!1568 = !{!1569, !667, i64 40}
!1569 = !{!"cgraph_node", !667, i64 0, !667, i64 8, !667, i64 16, !667, i64 24, !667, i64 32, !667, i64 40, !667, i64 48, !667, i64 56, !667, i64 64, !667, i64 72, !667, i64 80, !667, i64 88, !667, i64 96, !667, i64 104, !667, i64 112, !667, i64 120, !667, i64 128, !667, i64 136, !1570, i64 144, !1572, i64 184, !1573, i64 224, !1574, i64 232, !1575, i64 256, !709, i64 288, !670, i64 296, !670, i64 300, !670, i64 304, !670, i64 308, !670, i64 308, !670, i64 308, !670, i64 308, !670, i64 308, !670, i64 308, !670, i64 308, !670, i64 308, !670, i64 309, !670, i64 309}
!1570 = !{!"cgraph_local_info", !667, i64 0, !1571, i64 8, !670, i64 32, !670, i64 32, !670, i64 32, !670, i64 32, !670, i64 32, !670, i64 32, !670, i64 32, !670, i64 32}
!1571 = !{!"inline_summary", !709, i64 0, !670, i64 8, !670, i64 12, !670, i64 16, !670, i64 20}
!1572 = !{!"cgraph_global_info", !709, i64 0, !709, i64 8, !667, i64 16, !670, i64 24, !670, i64 28, !670, i64 32, !656, i64 36}
!1573 = !{!"cgraph_rtl_info", !670, i64 0}
!1574 = !{!"cgraph_clone_info", !667, i64 0, !667, i64 8, !667, i64 16}
!1575 = !{!"cgraph_thunk_info", !709, i64 0, !709, i64 8, !667, i64 16, !656, i64 24, !656, i64 25, !656, i64 26}
!1576 = distinct !{!1576, !660}
!1577 = !{!"gimplify.c:unshare_body"}
!1578 = !{!"branch_weights", i32 8964, i32 1}
!1579 = !{!1569, !667, i64 0}
!1580 = !{!"branch_weights", i32 1, i32 0}
!1581 = distinct !{!1581, !660}
!1582 = !{!"gimplify.c:unvisit_body"}
!1583 = distinct !{!1583, !660}
!1584 = !{!"function_entry_count", i64 2619211}
!1585 = !{!"gimplify.c:copy_if_shared_r"}
!1586 = !{!"branch_weights", i32 -1476147006, i32 -1426736196}
!1587 = !{!"branch_weights", i32 355735, i32 942493}
!1588 = !{!"branch_weights", i32 1305062, i32 15925}
!1589 = !{!"gimplify.c:unmark_visited_r"}
!1590 = !{!"branch_weights", i32 958417, i32 1660796}
!1591 = !{!"branch_weights", i32 1, i32 8964}
!1592 = !{!"branch_weights", i32 36099, i32 325766401}
!1593 = !{!"branch_weights", i32 8964, i32 9085}
!1594 = distinct !{!1594, !660}
!1595 = !{!"branch_weights", i32 17931, i32 80371225}
!1596 = !{!1597, !670, i64 120}
!1597 = !{!"function", !667, i64 0, !667, i64 8, !667, i64 16, !667, i64 24, !667, i64 32, !667, i64 40, !667, i64 48, !667, i64 56, !667, i64 64, !667, i64 72, !667, i64 80, !667, i64 88, !667, i64 96, !670, i64 104, !670, i64 108, !670, i64 112, !670, i64 116, !670, i64 120, !670, i64 124, !667, i64 128, !670, i64 136, !670, i64 137, !670, i64 138, !670, i64 138, !670, i64 138, !670, i64 138, !670, i64 138, !670, i64 138, !670, i64 138, !670, i64 139, !670, i64 139, !670, i64 139, !670, i64 139, !670, i64 139, !670, i64 139, !670, i64 139}
!1598 = !{!"gimplify.c:gimple_bind_set_block"}
!1599 = !{!"function_entry_count", i64 689}
!1600 = !{!"branch_weights", i32 690, i32 1, i32 1, i32 1, i32 1}
!1601 = distinct !{!1601, !660}
!1602 = distinct !{!1602, !660}
!1603 = !{!"branch_weights", i32 1, i32 689}
!1604 = !{!"branch_weights", i32 1, i32 1379}
!1605 = !{!"branch_weights", i32 12112, i32 -1400897536, i32 -1400909649}
!1606 = !{!"branch_weights", i32 690, i32 1}
!1607 = !{!"branch_weights", i32 1, i32 690}
!1608 = !{!"branch_weights", i32 476100, i32 1381}
!1609 = !{i32 0, i32 65536}
!1610 = !{!"branch_weights", i32 511, i32 180}
!1611 = !{!"branch_weights", i32 180, i32 1}
!1612 = !{!"branch_weights", i32 689, i32 690}
!1613 = distinct !{!1613, !660}
!1614 = !{!"branch_weights", i32 261121, i32 1023}
!1615 = !{!"branch_weights", i32 511, i32 1}
!1616 = !{!"branch_weights", i32 -2147483648, i32 -2147483648}
!1617 = !{!"branch_weights", i32 689, i32 1}
!1618 = distinct !{!1618, !660}
!1619 = distinct !{!1619, !660}
!1620 = !{!"function_entry_count", i64 51998}
!1621 = !{!"gimplify.c:gimple_in_ssa_p"}
!1622 = !{!"branch_weights", i32 1, i32 51999}
!1623 = !{!1597, !667, i64 24}
!1624 = !{!"branch_weights", i32 5959, i32 46041}
!1625 = !{!"gimplify.c:gimple_cond_lhs_ptr"}
!1626 = !{!"gimplify.c:gimple_cond_rhs_ptr"}
!1627 = !{!"gimplify.c:gimple_switch_index_ptr"}
!1628 = !{!"gimplify.c:gimple_omp_atomic_load_rhs_ptr"}
!1629 = !{!"gimplify.c:gimple_asm_noutputs"}
!1630 = !{!"gimplify.c:gimple_asm_output_op"}
!1631 = !{!"gimplify.c:gimple_asm_ninputs"}
!1632 = !{!"gimplify.c:gimple_asm_input_op"}
!1633 = !{!"function_entry_count", i64 2398}
!1634 = !{!"gimplify.c:gimple_op"}
!1635 = !{!"branch_weights", i32 1, i32 2399}
!1636 = !{!"function_entry_count", i64 868}
!1637 = !{!"gimplify.c:is_gimple_call"}
!1638 = !{!"function_entry_count", i64 1888}
!1639 = !{!"gimplify.c:is_gimple_assign"}
!1640 = !{!"function_entry_count", i64 1199}
!1641 = !{!"gimplify.c:gimple_expr_code"}
!1642 = !{!"branch_weights", i32 1, i32 4800, i32 2, i32 1}
!1643 = !{!"function_entry_count", i64 1020}
!1644 = !{!"gimplify.c:gimple_assign_lhs"}
!1645 = !{!"function_entry_count", i64 510}
!1646 = !{!"gimplify.c:gimple_assign_rhs1_ptr"}
!1647 = !{!"gimplify.c:gimple_call_fndecl"}
!1648 = !{!"function_entry_count", i64 38443}
!1649 = !{!"gimplify.c:gimple_referenced_vars"}
!1650 = !{!"branch_weights", i32 2980, i32 35465}
!1651 = !{!1652, !667, i64 0}
!1652 = !{!"gimple_df", !667, i64 0, !667, i64 8, !667, i64 16, !667, i64 24, !1653, i64 32, !1653, i64 48, !667, i64 64, !667, i64 72, !667, i64 80, !667, i64 88, !670, i64 96, !1654, i64 104}
!1653 = !{!"pt_solution", !670, i64 0, !670, i64 0, !670, i64 0, !670, i64 0, !670, i64 0, !670, i64 0, !667, i64 8}
!1654 = !{!"ssa_operands", !667, i64 0, !670, i64 8, !670, i64 12, !656, i64 16, !667, i64 24, !667, i64 32}
!1655 = !{!"gimplify.c:gimple_op_ptr"}
!1656 = !{!"branch_weights", i32 1, i32 511}
!1657 = !{!"gimplify.c:gimple_call_fn"}
!1658 = !{!"function_entry_count", i64 50928}
!1659 = !{!"branch_weights", i32 37755, i32 13175}
!1660 = !{!"branch_weights", i32 33305, i32 4451}
!1661 = !{!"branch_weights", i32 4451, i32 33305}
!1662 = !{!"branch_weights", i32 1, i32 33305}
!1663 = !{!"branch_weights", i32 1, i32 37755}
!1664 = !{!"branch_weights", i32 2980, i32 34776}
!1665 = !{!"branch_weights", i32 21710, i32 13066}
!1666 = !{!"branch_weights", i32 13066, i32 0}
!1667 = distinct !{!1667, !660}
!1668 = !{!"function_entry_count", i64 24183}
!1669 = !{!"branch_weights", i32 13556, i32 10629}
!1670 = !{!"branch_weights", i32 2980, i32 10577}
!1671 = !{!"branch_weights", i32 10576, i32 1}
!1672 = !{!"branch_weights", i32 1245, i32 10576}
!1673 = distinct !{!1673, !660}
!1674 = !{!"branch_weights", i32 1, i32 13556}
