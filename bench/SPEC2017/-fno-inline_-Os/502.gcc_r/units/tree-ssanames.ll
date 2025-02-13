; ModuleID = 'tree-ssanames.c'
source_filename = "tree-ssanames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.def_optype_d = type { ptr, ptr }
%struct.referenced_var_iterator = type { %struct.htab_iterator }
%struct.htab_iterator = type { ptr, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }

@cfun = external local_unnamed_addr global ptr, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str = private unnamed_addr constant [16 x i8] c"tree-ssanames.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"release_ssa\00", align 1
@pass_release_ssa_names = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.2, ptr null, ptr @release_dead_ssa_names, ptr null, ptr null, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 1 } }, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"Released %i names, %.2f%%\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_ssanames(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !89 {
  %3 = tail call i32 @llvm.smax.i32(i32 %1, i32 50)
  %4 = tail call fastcc ptr @VEC_tree_gc_alloc(i32 noundef %3) #13
  %5 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !90
  %7 = getelementptr inbounds %struct.gimple_df, ptr %6, i64 0, i32 2
  store ptr %4, ptr %7, align 8, !tbaa !96
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %4, ptr noundef null) #13
  %8 = load ptr, ptr %5, align 8, !tbaa !90
  %9 = getelementptr inbounds %struct.gimple_df, ptr %8, i64 0, i32 7
  store ptr null, ptr %9, align 8, !tbaa !100
  %10 = tail call ptr @bitmap_gc_alloc_stat() #14
  %11 = load ptr, ptr %5, align 8, !tbaa !90
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 9
  store ptr %10, ptr %12, align 8, !tbaa !101
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_gc_alloc(i32 noundef %0) unnamed_addr #0 !prof !89 !PGOFuncName !102 {
  %2 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef null, i32 noundef %0) #14
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !103 !PGOFuncName !104 {
  %3 = load i32, ptr %0, align 8, !tbaa !105
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !105
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !107
  ret void
}

; Function Attrs: optsize
declare ptr @bitmap_gc_alloc_stat() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fini_ssanames() local_unnamed_addr #0 !prof !89 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !107
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = getelementptr inbounds %struct.gimple_df, ptr %3, i64 0, i32 2
  tail call fastcc void @VEC_tree_gc_free(ptr noundef nonnull %4) #13
  %5 = load ptr, ptr @cfun, align 8, !tbaa !107
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !90
  %8 = getelementptr inbounds %struct.gimple_df, ptr %7, i64 0, i32 7
  store ptr null, ptr %8, align 8, !tbaa !100
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_free(ptr nocapture noundef %0) unnamed_addr #0 !prof !89 !PGOFuncName !108 {
  %2 = load ptr, ptr %0, align 8, !tbaa !107
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !109

4:                                                ; preds = %1
  tail call void @ggc_free(ptr noundef nonnull %2) #14
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !107
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @make_ssa_name_fn(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !110 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !111
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %10, label %9, !prof !112

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 126, ptr noundef nonnull @.str.1) #14
  br label %10

10:                                               ; preds = %3, %9
  %11 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !90
  %13 = getelementptr inbounds %struct.gimple_df, ptr %12, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !100
  %15 = icmp eq ptr %14, null
  br i1 %15, label %36, label %16, !prof !113

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !114
  store ptr %18, ptr %13, align 8, !tbaa !100
  %19 = load ptr, ptr @cfun, align 8, !tbaa !107
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !90
  %22 = getelementptr inbounds %struct.gimple_df, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !96
  %24 = getelementptr inbounds %struct.tree_ssa_name, ptr %14, i64 0, i32 3
  %25 = load i32, ptr %24, align 8, !tbaa !114
  %26 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %23, i32 noundef %25) #13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28, !prof !115

28:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 139, ptr noundef nonnull @.str.1) #14
  %29 = load ptr, ptr %11, align 8, !tbaa !90
  %30 = load i32, ptr %24, align 8, !tbaa !114
  br label %31

31:                                               ; preds = %16, %28
  %32 = phi i32 [ %25, %16 ], [ %30, %28 ]
  %33 = phi ptr [ %12, %16 ], [ %29, %28 ]
  %34 = getelementptr inbounds %struct.gimple_df, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !96
  tail call fastcc void @VEC_tree_base_replace(ptr noundef %35, i32 noundef %32, ptr noundef nonnull %14) #13
  br label %45

36:                                               ; preds = %10
  %37 = tail call ptr @make_node_stat(i32 noundef 141) #14
  %38 = load ptr, ptr %11, align 8, !tbaa !90
  %39 = getelementptr inbounds %struct.gimple_df, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !96
  %41 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %40) #13
  %42 = getelementptr inbounds %struct.tree_ssa_name, ptr %37, i64 0, i32 3
  store i32 %41, ptr %42, align 8, !tbaa !114
  %43 = load ptr, ptr %11, align 8, !tbaa !90
  %44 = getelementptr inbounds %struct.gimple_df, ptr %43, i64 0, i32 2
  tail call fastcc void @VEC_tree_gc_safe_push(ptr noundef nonnull %44, ptr noundef %37) #13
  br label %45

45:                                               ; preds = %36, %31
  %46 = phi ptr [ %14, %31 ], [ %37, %36 ]
  %47 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !114
  %49 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  store ptr %48, ptr %49, align 8, !tbaa !114
  %50 = getelementptr inbounds %struct.tree_ssa_name, ptr %46, i64 0, i32 1
  store ptr %1, ptr %50, align 8, !tbaa !114
  %51 = getelementptr inbounds %struct.tree_ssa_name, ptr %46, i64 0, i32 2
  store ptr %2, ptr %51, align 8, !tbaa !114
  %52 = getelementptr inbounds %struct.tree_ssa_name, ptr %46, i64 0, i32 4
  store ptr null, ptr %52, align 8, !tbaa !114
  %53 = load i64, ptr %46, align 8
  %54 = and i64 %53, -4328521729
  store i64 %54, ptr %46, align 8
  %55 = getelementptr inbounds %struct.tree_ssa_name, ptr %46, i64 0, i32 5
  %56 = getelementptr inbounds %struct.tree_ssa_name, ptr %46, i64 0, i32 5, i32 3
  store ptr null, ptr %56, align 8, !tbaa !116
  store ptr %55, ptr %55, align 8, !tbaa !118
  %57 = getelementptr inbounds %struct.tree_ssa_name, ptr %46, i64 0, i32 5, i32 1
  store ptr %55, ptr %57, align 8, !tbaa !119
  %58 = getelementptr inbounds %struct.tree_ssa_name, ptr %46, i64 0, i32 5, i32 2
  store ptr %46, ptr %58, align 8, !tbaa !114
  ret ptr %46
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 !prof !120 !PGOFuncName !121 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !107
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 !prof !122 !PGOFuncName !123 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !107
  ret void
}

; Function Attrs: optsize
declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #4 !prof !124 !PGOFuncName !125 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !126

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !105
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !124 !PGOFuncName !127 {
  tail call fastcc void @VEC_tree_gc_reserve(ptr noundef %0) #13
  %3 = load ptr, ptr %0, align 8, !tbaa !107
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @release_ssa_name(ptr noundef %0) local_unnamed_addr #0 !prof !128 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %52, label %3, !prof !129

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 4294967296
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %52, !prof !130

7:                                                ; preds = %3
  %8 = tail call zeroext i8 @name_registered_for_update_p(ptr noundef nonnull %0) #14
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %11, label %10, !prof !131

10:                                               ; preds = %7
  tail call void @release_ssa_name_after_update_ssa(ptr noundef nonnull %0) #14
  br label %52

11:                                               ; preds = %7
  %12 = load i64, ptr %0, align 8
  %13 = and i64 %12, 33554432
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %52, !prof !132

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !114
  %18 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !114
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %21 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !111
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23, !prof !132

23:                                               ; preds = %15
  tail call void @insert_debug_temp_for_var_def(ptr noundef null, ptr noundef nonnull %0) #14
  br label %24

24:                                               ; preds = %23, %15
  %25 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !119
  %27 = icmp eq ptr %26, %20
  br i1 %27, label %32, label %28, !prof !133

28:                                               ; preds = %24, %28
  %29 = phi ptr [ %30, %28 ], [ %26, %24 ]
  tail call fastcc void @delink_imm_use(ptr noundef %29) #13
  %30 = load ptr, ptr %25, align 8, !tbaa !119
  %31 = icmp eq ptr %30, %20
  br i1 %31, label %32, label %28, !prof !134, !llvm.loop !135

32:                                               ; preds = %28, %24
  %33 = load ptr, ptr @cfun, align 8, !tbaa !107
  %34 = getelementptr inbounds %struct.function, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !90
  %36 = getelementptr inbounds %struct.gimple_df, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !96
  %38 = load i32, ptr %18, align 8, !tbaa !114
  tail call fastcc void @VEC_tree_base_replace(ptr noundef %37, i32 noundef %38, ptr noundef null) #13
  %39 = tail call i64 @tree_size(ptr noundef nonnull %0) #14
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %0, i8 0, i64 %39, i1 false)
  store ptr %20, ptr %20, align 8, !tbaa !118
  store ptr %20, ptr %25, align 8, !tbaa !119
  %40 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 2
  store ptr %0, ptr %40, align 8, !tbaa !114
  %41 = load i64, ptr %0, align 8
  %42 = and i64 %41, -33619968
  store i32 %19, ptr %18, align 8, !tbaa !114
  store ptr %17, ptr %16, align 8, !tbaa !114
  %43 = or disjoint i64 %42, 33554573
  store i64 %43, ptr %0, align 8
  %44 = load ptr, ptr @cfun, align 8, !tbaa !107
  %45 = getelementptr inbounds %struct.function, ptr %44, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !90
  %47 = getelementptr inbounds %struct.gimple_df, ptr %46, i64 0, i32 7
  %48 = load ptr, ptr %47, align 8, !tbaa !100
  %49 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 1
  store ptr %48, ptr %49, align 8, !tbaa !114
  %50 = load ptr, ptr %45, align 8, !tbaa !90
  %51 = getelementptr inbounds %struct.gimple_df, ptr %50, i64 0, i32 7
  store ptr %0, ptr %51, align 8, !tbaa !100
  br label %52

52:                                               ; preds = %3, %1, %10, %32, %11
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @name_registered_for_update_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @release_ssa_name_after_update_ssa(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @insert_debug_temp_for_var_def(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #5 !prof !137 !PGOFuncName !138 {
  %2 = load ptr, ptr %0, align 8, !tbaa !118
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !139

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !119
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !119
  store ptr %2, ptr %6, align 8, !tbaa !118
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: optsize
declare i64 @tree_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @duplicate_ssa_name(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !140 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !114
  %5 = tail call fastcc ptr @make_ssa_name(ptr noundef %4, ptr noundef %1) #13
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !114
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !141

9:                                                ; preds = %2
  tail call void @duplicate_ssa_name_ptr_info(ptr noundef %5, ptr noundef nonnull %7) #13
  br label %10

10:                                               ; preds = %9, %2
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !140 !PGOFuncName !142 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !107
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #13
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @duplicate_ssa_name_ptr_info(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !143 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !114
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %7 [
    i16 10, label %8
    i16 12, label %8
  ], !prof !144

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 268, ptr noundef nonnull @.str.1) #14
  br label %8

8:                                                ; preds = %2, %2, %7
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !114
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12, !prof !145

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 269, ptr noundef nonnull @.str.1) #14
  br label %13

13:                                               ; preds = %8, %12
  %14 = icmp eq ptr %1, null
  br i1 %14, label %17, label %15, !prof !146

15:                                               ; preds = %13
  %16 = tail call ptr @ggc_alloc_stat(i64 noundef 16) #14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !147
  store ptr %16, ptr %9, align 8, !tbaa !114
  br label %17

17:                                               ; preds = %13, %15
  ret void
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @release_defs(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !148 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #15
  %3 = load ptr, ptr @cfun, align 8, !tbaa !107
  %4 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %3) #13, !range !149
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7, !prof !150

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 291, ptr noundef nonnull @.str.1) #14
  br label %7

7:                                                ; preds = %1, %6
  %8 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %0) #13
  %9 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #13
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %21, !prof !151

11:                                               ; preds = %7, %17
  %12 = phi ptr [ %18, %17 ], [ %8, %7 ]
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 141
  br i1 %15, label %16, label %17, !prof !152

16:                                               ; preds = %11
  tail call void @release_ssa_name(ptr noundef nonnull %12) #13
  br label %17

17:                                               ; preds = %11, %16
  %18 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %2) #13
  %19 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #13
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %11, label %21, !prof !153, !llvm.loop !154

21:                                               ; preds = %17, %7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #15
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef readonly %0) unnamed_addr #8 !prof !148 !PGOFuncName !155 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3, !prof !150

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7, !prof !150

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gimple_df, ptr %5, i64 0, i32 10
  %9 = load i8, ptr %8, align 8
  %10 = and i8 %9, 1
  br label %11

11:                                               ; preds = %7, %3, %1
  %12 = phi i8 [ 0, %3 ], [ 0, %1 ], [ %10, %7 ]
  ret i8 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !148 !PGOFuncName !156 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1) #13
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !157
  %4 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #13
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !159 !PGOFuncName !160 {
  %2 = load i8, ptr %0, align 8, !tbaa !161
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #9 !prof !159 !PGOFuncName !162 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !163
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !164

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #13
  %8 = load ptr, ptr %3, align 8, !tbaa !165
  store ptr %8, ptr %2, align 8, !tbaa !163
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !167
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !168

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !169
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #13
  %17 = load ptr, ptr %11, align 8, !tbaa !171
  store ptr %17, ptr %10, align 8, !tbaa !167
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !161
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @replace_ssa_name_symbol(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #1 !prof !172 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !114
  %4 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !114
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !114
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @release_dead_ssa_names() #0 !prof !173 !PGOFuncName !174 {
  %1 = alloca %struct.referenced_var_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #15
  %2 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %1) #13
  %3 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #13, !range !149
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %10, !prof !175

5:                                                ; preds = %0, %5
  %6 = phi ptr [ %7, %5 ], [ %2, %0 ]
  tail call void @set_current_def(ptr noundef %6, ptr noundef null) #14
  %7 = call fastcc ptr @next_referenced_var(ptr noundef nonnull %1) #13
  %8 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #13, !range !149
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %5, label %10, !prof !176, !llvm.loop !177

10:                                               ; preds = %5, %0
  %11 = load ptr, ptr @cfun, align 8, !tbaa !107
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !90
  %14 = getelementptr inbounds %struct.gimple_df, ptr %13, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !100
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17, !prof !178

17:                                               ; preds = %10, %17
  %18 = phi i32 [ %22, %17 ], [ 0, %10 ]
  %19 = phi ptr [ %21, %17 ], [ %15, %10 ]
  %20 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !114
  store ptr null, ptr %20, align 8, !tbaa !114
  %22 = add nuw nsw i32 %18, 1
  %23 = icmp eq ptr %21, null
  br i1 %23, label %24, label %17, !prof !179, !llvm.loop !180

24:                                               ; preds = %17
  %25 = load ptr, ptr %12, align 8, !tbaa !90
  br label %26

26:                                               ; preds = %24, %10
  %27 = phi ptr [ %13, %10 ], [ %25, %24 ]
  %28 = phi i32 [ 0, %10 ], [ %22, %24 ]
  %29 = getelementptr inbounds %struct.gimple_df, ptr %27, i64 0, i32 7
  store ptr null, ptr %29, align 8, !tbaa !100
  %30 = load ptr, ptr @current_function_decl, align 8, !tbaa !107
  %31 = tail call ptr @cgraph_node(ptr noundef %30) #14
  tail call void @cgraph_node_remove_callees(ptr noundef %31) #14
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !107
  %33 = icmp eq ptr %32, null
  br i1 %33, label %46, label %34, !prof !181

34:                                               ; preds = %26
  %35 = sitofp i32 %28 to double
  %36 = fmul double %35, 1.000000e+02
  %37 = load ptr, ptr @cfun, align 8, !tbaa !107
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !90
  %40 = getelementptr inbounds %struct.gimple_df, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !96
  %42 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %41) #13
  %43 = uitofp i32 %42 to double
  %44 = fdiv double %36, %43
  %45 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %32, ptr noundef nonnull @.str.4, i32 noundef %28, double noundef %44) #13
  br label %46

46:                                               ; preds = %34, %26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #15
  ret i32 0
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_gc_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !124 !PGOFuncName !182 {
  %2 = load ptr, ptr %0, align 8, !tbaa !107
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2) #13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !183

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve(ptr noundef %2, i32 noundef 1) #14
  store ptr %6, ptr %0, align 8, !tbaa !107
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #4 !prof !124 !PGOFuncName !184 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !126

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !185
  %6 = load i32, ptr %0, align 8, !tbaa !105
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !148 !PGOFuncName !186 {
  %3 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #13
  %4 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %3, ptr %4, align 8, !tbaa !167
  %5 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store i8 0, ptr %0, align 8, !tbaa !161
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !148 !PGOFuncName !187 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #13, !range !149
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !150

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !114
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !148 !PGOFuncName !188 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !189
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !190 !PGOFuncName !191 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !192 !PGOFuncName !193 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !116
  %4 = load ptr, ptr %3, align 8, !tbaa !107
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !194 !PGOFuncName !195 {
  %2 = load ptr, ptr %0, align 8, !tbaa !107
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_referenced_var(ptr nocapture noundef %0) unnamed_addr #0 !prof !173 !PGOFuncName !196 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !107
  %3 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %2) #13
  %4 = tail call fastcc ptr @first_htab_element(ptr noundef %0, ptr noundef %3) #13
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_referenced_vars_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !197 !PGOFuncName !198 {
  %2 = tail call fastcc zeroext i8 @end_htab_p(ptr noundef %0) #13, !range !149
  ret i8 %2
}

; Function Attrs: optsize
declare void @set_current_def(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_referenced_var(ptr nocapture noundef %0) unnamed_addr #10 !prof !199 !PGOFuncName !200 {
  %2 = tail call fastcc ptr @next_htab_element(ptr noundef %0) #13
  ret ptr %2
}

; Function Attrs: optsize
declare void @cgraph_node_remove_callees(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_htab_element(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !173 !PGOFuncName !201 {
  store ptr %1, ptr %0, align 8, !tbaa !202
  %3 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !204
  %5 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !207
  %6 = tail call i64 @htab_size(ptr noundef %1) #14
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !208
  %9 = load ptr, ptr %5, align 8, !tbaa !207
  br label %10

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %15, %14 ], [ %9, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !107
  %13 = icmp ult ptr %12, inttoptr (i64 2 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %15, ptr %5, align 8, !tbaa !207
  %16 = icmp ult ptr %15, %7
  br i1 %16, label %10, label %17, !prof !209, !llvm.loop !210

17:                                               ; preds = %10, %14
  %18 = phi ptr [ %11, %10 ], [ %15, %14 ]
  %19 = icmp ult ptr %18, %7
  br i1 %19, label %20, label %22, !prof !181

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 8, !tbaa !107
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi ptr [ %21, %20 ], [ null, %17 ]
  ret ptr %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_referenced_vars(ptr nocapture noundef readonly %0) unnamed_addr #8 !prof !173 !PGOFuncName !211 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !212

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !213
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare i64 @htab_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_htab_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !197 !PGOFuncName !214 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !207
  %4 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !208
  %6 = icmp uge ptr %3, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_htab_element(ptr nocapture noundef %0) unnamed_addr #10 !prof !199 !PGOFuncName !215 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !208
  %5 = load ptr, ptr %2, align 8, !tbaa !207
  br label %6

6:                                                ; preds = %10, %1
  %7 = phi ptr [ %5, %1 ], [ %8, %10 ]
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  store ptr %8, ptr %2, align 8, !tbaa !207
  %9 = icmp ult ptr %8, %4
  br i1 %9, label %10, label %13, !prof !216

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !107
  %12 = icmp ult ptr %11, inttoptr (i64 2 to ptr)
  br i1 %12, label %6, label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %11, %10 ], [ null, %6 ]
  ret ptr %14
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!88}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87}
!35 = !{ptr @init_ssanames, ptr @VEC_tree_gc_alloc, i64 41}
!36 = !{ptr @init_ssanames, ptr @VEC_tree_base_quick_push, i64 41}
!37 = !{ptr @init_ssanames, ptr @bitmap_gc_alloc_stat, i64 41}
!38 = !{ptr @VEC_tree_gc_alloc, ptr @vec_gc_p_reserve_exact, i64 41}
!39 = !{ptr @fini_ssanames, ptr @VEC_tree_gc_free, i64 41}
!40 = !{ptr @VEC_tree_gc_free, ptr @ggc_free, i64 40}
!41 = !{ptr @make_ssa_name_fn, ptr @fancy_abort, i64 2}
!42 = !{ptr @make_ssa_name_fn, ptr @VEC_tree_base_index, i64 81637}
!43 = !{ptr @make_ssa_name_fn, ptr @VEC_tree_base_replace, i64 81637}
!44 = !{ptr @make_ssa_name_fn, ptr @make_node_stat, i64 426461}
!45 = !{ptr @make_ssa_name_fn, ptr @VEC_tree_base_length, i64 426461}
!46 = !{ptr @make_ssa_name_fn, ptr @VEC_tree_gc_safe_push, i64 426461}
!47 = !{ptr @VEC_tree_gc_safe_push, ptr @VEC_tree_gc_reserve, i64 426462}
!48 = !{ptr @VEC_tree_gc_safe_push, ptr @VEC_tree_base_quick_push, i64 426462}
!49 = !{ptr @release_ssa_name, ptr @name_registered_for_update_p, i64 244112}
!50 = !{ptr @release_ssa_name, ptr @release_ssa_name_after_update_ssa, i64 73}
!51 = !{ptr @release_ssa_name, ptr @insert_debug_temp_for_var_def, i64 1}
!52 = !{ptr @release_ssa_name, ptr @delink_imm_use, i64 129214}
!53 = !{ptr @release_ssa_name, ptr @VEC_tree_base_replace, i64 244038}
!54 = !{ptr @release_ssa_name, ptr @tree_size, i64 244038}
!55 = !{ptr @duplicate_ssa_name, ptr @make_ssa_name, i64 140695}
!56 = !{ptr @duplicate_ssa_name, ptr @duplicate_ssa_name_ptr_info, i64 269}
!57 = !{ptr @make_ssa_name, ptr @make_ssa_name_fn, i64 140695}
!58 = !{ptr @duplicate_ssa_name_ptr_info, ptr @fancy_abort, i64 1}
!59 = !{ptr @duplicate_ssa_name_ptr_info, ptr @ggc_alloc_stat, i64 267}
!60 = !{ptr @release_defs, ptr @gimple_in_ssa_p, i64 152374}
!61 = !{ptr @release_defs, ptr @fancy_abort, i64 1}
!62 = !{ptr @release_defs, ptr @op_iter_init_tree, i64 152374}
!63 = !{ptr @release_defs, ptr @op_iter_done, i64 304636}
!64 = !{ptr @release_defs, ptr @release_ssa_name, i64 152261}
!65 = !{ptr @release_defs, ptr @op_iter_next_tree, i64 152262}
!66 = !{ptr @op_iter_init_tree, ptr @op_iter_init, i64 152374}
!67 = !{ptr @op_iter_init_tree, ptr @op_iter_next_tree, i64 152374}
!68 = !{ptr @op_iter_next_tree, ptr @get_use_from_ptr, i64 1}
!69 = !{ptr @op_iter_next_tree, ptr @get_def_from_ptr, i64 152262}
!70 = !{ptr @release_dead_ssa_names, ptr @first_referenced_var, i64 40}
!71 = !{ptr @release_dead_ssa_names, ptr @end_referenced_vars_p, i64 108125}
!72 = !{ptr @release_dead_ssa_names, ptr @set_current_def, i64 108085}
!73 = !{ptr @release_dead_ssa_names, ptr @next_referenced_var, i64 108085}
!74 = !{ptr @release_dead_ssa_names, ptr @cgraph_node, i64 40}
!75 = !{ptr @release_dead_ssa_names, ptr @cgraph_node_remove_callees, i64 40}
!76 = !{ptr @release_dead_ssa_names, ptr @VEC_tree_base_length, i64 1}
!77 = !{ptr @release_dead_ssa_names, ptr @fprintf, i64 1}
!78 = !{ptr @VEC_tree_gc_reserve, ptr @VEC_tree_base_space, i64 426462}
!79 = !{ptr @VEC_tree_gc_reserve, ptr @vec_gc_p_reserve, i64 255}
!80 = !{ptr @op_iter_init, ptr @gimple_def_ops, i64 152374}
!81 = !{ptr @gimple_def_ops, ptr @gimple_has_ops, i64 152374}
!82 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 152374}
!83 = !{ptr @first_referenced_var, ptr @gimple_referenced_vars, i64 40}
!84 = !{ptr @first_referenced_var, ptr @first_htab_element, i64 40}
!85 = !{ptr @end_referenced_vars_p, ptr @end_htab_p, i64 110826}
!86 = !{ptr @next_referenced_var, ptr @next_htab_element, i64 110786}
!87 = !{ptr @first_htab_element, ptr @htab_size, i64 40}
!88 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!89 = !{!"function_entry_count", i64 41}
!90 = !{!91, !92, i64 24}
!91 = !{!"function", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !92, i64 32, !92, i64 40, !92, i64 48, !92, i64 56, !92, i64 64, !92, i64 72, !92, i64 80, !92, i64 88, !92, i64 96, !95, i64 104, !95, i64 108, !95, i64 112, !95, i64 116, !95, i64 120, !95, i64 124, !92, i64 128, !95, i64 136, !95, i64 137, !95, i64 138, !95, i64 138, !95, i64 138, !95, i64 138, !95, i64 138, !95, i64 138, !95, i64 138, !95, i64 139, !95, i64 139, !95, i64 139, !95, i64 139, !95, i64 139, !95, i64 139, !95, i64 139}
!92 = !{!"any pointer", !93, i64 0}
!93 = !{!"omnipotent char", !94, i64 0}
!94 = !{!"Simple C/C++ TBAA"}
!95 = !{!"int", !93, i64 0}
!96 = !{!97, !92, i64 16}
!97 = !{!"gimple_df", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !98, i64 32, !98, i64 48, !92, i64 64, !92, i64 72, !92, i64 80, !92, i64 88, !95, i64 96, !99, i64 104}
!98 = !{!"pt_solution", !95, i64 0, !95, i64 0, !95, i64 0, !95, i64 0, !95, i64 0, !95, i64 0, !92, i64 8}
!99 = !{!"ssa_operands", !92, i64 0, !95, i64 8, !95, i64 12, !93, i64 16, !92, i64 24, !92, i64 32}
!100 = !{!97, !92, i64 72}
!101 = !{!97, !92, i64 88}
!102 = !{!"tree-ssanames.c:VEC_tree_gc_alloc"}
!103 = !{!"function_entry_count", i64 426503}
!104 = !{!"tree-ssanames.c:VEC_tree_base_quick_push"}
!105 = !{!106, !95, i64 0}
!106 = !{!"VEC_tree_base", !95, i64 0, !95, i64 4, !93, i64 8}
!107 = !{!92, !92, i64 0}
!108 = !{!"tree-ssanames.c:VEC_tree_gc_free"}
!109 = !{!"branch_weights", i32 1, i32 42}
!110 = !{!"function_entry_count", i64 508098}
!111 = !{!95, !95, i64 0}
!112 = !{!"branch_weights", i32 508099, i32 1}
!113 = !{!"branch_weights", i32 426463, i32 81637}
!114 = !{!93, !93, i64 0}
!115 = !{!"branch_weights", i32 81637, i32 1}
!116 = !{!117, !92, i64 24}
!117 = !{!"ssa_use_operand_d", !92, i64 0, !92, i64 8, !93, i64 16, !92, i64 24}
!118 = !{!117, !92, i64 0}
!119 = !{!117, !92, i64 8}
!120 = !{!"function_entry_count", i64 81636}
!121 = !{!"tree-ssanames.c:VEC_tree_base_index"}
!122 = !{!"function_entry_count", i64 325678}
!123 = !{!"tree-ssanames.c:VEC_tree_base_replace"}
!124 = !{!"function_entry_count", i64 426462}
!125 = !{!"tree-ssanames.c:VEC_tree_base_length"}
!126 = !{!"branch_weights", i32 1, i32 426463}
!127 = !{!"tree-ssanames.c:VEC_tree_gc_safe_push"}
!128 = !{!"function_entry_count", i64 244114}
!129 = !{!"branch_weights", i32 1, i32 244115}
!130 = !{!"branch_weights", i32 244115, i32 1}
!131 = !{!"branch_weights", i32 244043, i32 73}
!132 = !{!"branch_weights", i32 244043, i32 1}
!133 = !{!"branch_weights", i32 114826, i32 129217}
!134 = !{!"branch_weights", i32 129217, i32 0}
!135 = distinct !{!135, !136}
!136 = !{!"llvm.loop.mustprogress"}
!137 = !{!"function_entry_count", i64 129216}
!138 = !{!"tree-ssanames.c:delink_imm_use"}
!139 = !{!"branch_weights", i32 1, i32 129217}
!140 = !{!"function_entry_count", i64 140695}
!141 = !{!"branch_weights", i32 140428, i32 269}
!142 = !{!"tree-ssanames.c:make_ssa_name"}
!143 = !{!"function_entry_count", i64 268}
!144 = !{!"branch_weights", i32 1, i32 538, i32 1}
!145 = !{!"branch_weights", i32 269, i32 1}
!146 = !{!"branch_weights", i32 1, i32 269}
!147 = !{i64 0, i64 4, !111, i64 0, i64 4, !111, i64 0, i64 4, !111, i64 0, i64 4, !111, i64 0, i64 4, !111, i64 0, i64 4, !111, i64 8, i64 8, !107}
!148 = !{!"function_entry_count", i64 152374}
!149 = !{i8 0, i8 2}
!150 = !{!"branch_weights", i32 1, i32 152375}
!151 = !{!"branch_weights", i32 152263, i32 112}
!152 = !{!"branch_weights", i32 152263, i32 1}
!153 = !{!"branch_weights", i32 0, i32 152263}
!154 = distinct !{!154, !136}
!155 = !{!"tree-ssanames.c:gimple_in_ssa_p"}
!156 = !{!"tree-ssanames.c:op_iter_init_tree"}
!157 = !{!158, !95, i64 4}
!158 = !{!"ssa_operand_iterator_d", !93, i64 0, !95, i64 4, !92, i64 8, !92, i64 16, !95, i64 24, !95, i64 28, !92, i64 32}
!159 = !{!"function_entry_count", i64 304636}
!160 = !{!"tree-ssanames.c:op_iter_done"}
!161 = !{!158, !93, i64 0}
!162 = !{!"tree-ssanames.c:op_iter_next_tree"}
!163 = !{!158, !92, i64 16}
!164 = !{!"branch_weights", i32 304637, i32 1}
!165 = !{!166, !92, i64 0}
!166 = !{!"use_optype_d", !92, i64 0, !117, i64 8}
!167 = !{!158, !92, i64 8}
!168 = !{!"branch_weights", i32 152375, i32 152263}
!169 = !{!170, !92, i64 8}
!170 = !{!"def_optype_d", !92, i64 0, !92, i64 8}
!171 = !{!170, !92, i64 0}
!172 = !{!"function_entry_count", i64 1294673}
!173 = !{!"function_entry_count", i64 40}
!174 = !{!"tree-ssanames.c:release_dead_ssa_names"}
!175 = !{!"branch_weights", i32 163, i32 1}
!176 = !{!"branch_weights", i32 442985, i32 163}
!177 = distinct !{!177, !136}
!178 = !{!"branch_weights", i32 1, i32 163}
!179 = !{!"branch_weights", i32 163, i32 194221}
!180 = distinct !{!180, !136}
!181 = !{!"branch_weights", i32 41, i32 1}
!182 = !{!"tree-ssanames.c:VEC_tree_gc_reserve"}
!183 = !{!"branch_weights", i32 255, i32 426209}
!184 = !{!"tree-ssanames.c:VEC_tree_base_space"}
!185 = !{!106, !95, i64 4}
!186 = !{!"tree-ssanames.c:op_iter_init"}
!187 = !{!"tree-ssanames.c:gimple_def_ops"}
!188 = !{!"tree-ssanames.c:gimple_has_ops"}
!189 = !{i32 0, i32 256}
!190 = !{!"function_entry_count", i64 304748}
!191 = !{!"tree-ssanames.c:gimple_code"}
!192 = !{!"function_entry_count", i64 0}
!193 = !{!"tree-ssanames.c:get_use_from_ptr"}
!194 = !{!"function_entry_count", i64 152262}
!195 = !{!"tree-ssanames.c:get_def_from_ptr"}
!196 = !{!"tree-ssanames.c:first_referenced_var"}
!197 = !{!"function_entry_count", i64 110826}
!198 = !{!"tree-ssanames.c:end_referenced_vars_p"}
!199 = !{!"function_entry_count", i64 110786}
!200 = !{!"tree-ssanames.c:next_referenced_var"}
!201 = !{!"tree-ssanames.c:first_htab_element"}
!202 = !{!203, !92, i64 0}
!203 = !{!"", !92, i64 0, !92, i64 8, !92, i64 16}
!204 = !{!205, !92, i64 24}
!205 = !{!"htab", !92, i64 0, !92, i64 8, !92, i64 16, !92, i64 24, !206, i64 32, !206, i64 40, !206, i64 48, !95, i64 56, !95, i64 60, !92, i64 64, !92, i64 72, !92, i64 80, !92, i64 88, !92, i64 96, !95, i64 104}
!206 = !{!"long", !93, i64 0}
!207 = !{!203, !92, i64 8}
!208 = !{!203, !92, i64 16}
!209 = !{!"branch_weights", i32 56, i32 1}
!210 = distinct !{!210, !136}
!211 = !{!"tree-ssanames.c:gimple_referenced_vars"}
!212 = !{!"branch_weights", i32 1, i32 41}
!213 = !{!97, !92, i64 0}
!214 = !{!"tree-ssanames.c:end_htab_p"}
!215 = !{!"tree-ssanames.c:next_htab_element"}
!216 = !{!"branch_weights", i32 235956, i32 41}
